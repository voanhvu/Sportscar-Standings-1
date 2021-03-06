using System;
using System.Data;
using System.Collections;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

using CMS.CMSHelper;
using CMS.Ecommerce;
using CMS.FormControls;
using CMS.GlobalHelper;
using CMS.SettingsProvider;
using CMS.SiteProvider;
using CMS.UIControls;

public partial class CMSModules_Ecommerce_FormControls_ShippingSelector : FormEngineUserControl
{
    #region "Variables"

    private bool mUseShippingNameForSelection = false;
    private bool mAddAllItemsRecord = false;
    private bool mAddNoneRecord = false;
    private bool mAutoPostBack = false;
    private ShoppingCartInfo mCart = null;
    private int mSiteId = -1;
    private bool mDisplayOnlyEnabled = true;
    private bool mIncludeSelected = true;
    private bool? mAllowGlobalObjects = null;
    private bool? mDisplaySiteItems = null;
    private bool? mDisplayGlobalItems = null;
    private string mAdditionalItems = "";

    #endregion


    #region "Events"

    /// <summary>
    /// Event raised on dropdownlist selected item changed event.
    /// </summary>
    public event EventHandler ShippingChange;

    #endregion


    #region "Public properties"

    /// <summary>
    /// Indicates the site the shipping options should be loaded from. If shopping cart is given use its shite id.
    /// Default value is current site id.
    /// </summary>
    public int SiteID
    {
        get
        {
            // No site id given
            if (mSiteId == -1)
            {
                mSiteId = CMSContext.CurrentSiteID;
                // If shopping cart given use its site id
                if (ShoppingCart != null)
                {
                    mSiteId = ShoppingCart.ShoppingCartSiteID;
                }
            }

            return mSiteId;
        }
        set
        {
            mSiteId = value;

            mDisplayGlobalItems = null;
            mDisplaySiteItems = null;
            mAllowGlobalObjects = null;
        }
    }


    /// <summary>
    /// Indicates if selector has data.
    /// </summary>
    public bool HasData
    {
        get
        {
            return uniSelector.HasData;
        }
    }


    /// <summary>
    /// Indicates if site items will be displayed. By default, value is based on SiteID property and global objects setting.
    /// </summary>
    public bool DisplaySiteItems
    {
        get
        {
            // Unknown yet
            if (!mDisplaySiteItems.HasValue)
            {
                // Display site item when working with site records
                mDisplaySiteItems = (SiteID != 0);
            }

            return mDisplaySiteItems.Value;
        }
        set
        {
            mDisplaySiteItems = value;
        }
    }


    /// <summary>
    /// Indicates if global items will be displayed. By default, value is based on SiteID property and global objects setting.
    /// </summary>
    public bool DisplayGlobalItems
    {
        get
        {
            // Unknown yet
            if (!mDisplayGlobalItems.HasValue)
            {
                mDisplayGlobalItems = false;
                if ((SiteID == 0) || AllowGlobalObjects)
                {
                    mDisplayGlobalItems = true;
                }
            }

            return mDisplayGlobalItems.Value;
        }
        set
        {
            mDisplayGlobalItems = value;
        }
    }


    /// <summary>
    /// Gets or sets the enabled state of the control.
    /// </summary>
    public override bool Enabled
    {
        get
        {
            return base.Enabled;
        }
        set
        {
            base.Enabled = value;
            if (uniSelector != null)
            {
                uniSelector.Enabled = value;
            }
        }
    }


    /// <summary>
    /// Gets or sets the value which determines, whether to add (all) item record to the dropdownlist.
    /// </summary>
    public bool AddAllItemsRecord
    {
        get
        {
            return ValidationHelper.GetBoolean(GetValue("AddAllItemsRecord"), mAddAllItemsRecord);
        }
        set
        {
            mAddAllItemsRecord = value;
            SetValue("AddAllItemsRecord", value);
        }
    }


    /// <summary>
    /// Add none record to the dropdownlist.
    /// </summary>
    public bool AddNoneRecord
    {
        get
        {
            return mAddNoneRecord;
        }
        set
        {
            mAddNoneRecord = value;
        }
    }


    /// <summary>
    /// Determines whether the AutoPostBack property of dropdownlist should be enabled.
    /// </summary>
    public bool AutoPostBack
    {
        get
        {
            return mAutoPostBack;
        }
        set
        {
            mAutoPostBack = value;
        }
    }


    /// <summary>
    /// Indicates if selected value will be included in the list despite of other conditions.
    /// </summary>
    public bool IncludeSelected
    {
        get
        {
            return mIncludeSelected;
        }
        set
        {
            mIncludeSelected = value;
        }
    }


    /// <summary>
    /// Shipping ID.
    /// </summary>
    public int ShippingID
    {
        get
        {
            return ValidationHelper.GetInteger(uniSelector.Value, 0);
        }
        set
        {
            uniSelector.Value = value;
        }
    }


    /// <summary>
    /// Shopping cart.
    /// </summary>
    public ShoppingCartInfo ShoppingCart
    {
        get
        {
            return mCart;
        }
        set
        {
            mCart = value;
        }
    }


    /// <summary>
    /// Gets or sets field value.
    /// </summary>
    public override object Value
    {
        get
        {
            if (UseShippingNameForSelection)
            {
                ShippingOptionInfo shipping = ShippingOptionInfoProvider.GetShippingOptionInfo(ShippingID);
                return shipping != null ? shipping.ShippingOptionName : "";
            }

            return ShippingID;
        }
        set
        {
            if (UseShippingNameForSelection)
            {
                ShippingOptionInfo shipping = ShippingOptionInfoProvider.GetShippingOptionInfo(ValidationHelper.GetString(value, ""), SiteInfoProvider.GetSiteName(SiteID));
                ShippingID = shipping != null ? shipping.ShippingOptionID : 0;
            }
            else
            {
                ShippingID = ValidationHelper.GetInteger(value, 0);
            }
        }
    }


    /// <summary>
    ///  If true, selected value is ShippingOptionName, if false, selected value is ShippingOptionID.
    /// </summary>
    public bool UseShippingNameForSelection
    {
        get
        {
            return ValidationHelper.GetBoolean(GetValue("UseShippingNameForSelection"), mUseShippingNameForSelection);
        }
        set
        {
            SetValue("UseShippingNameForSelection", value);
            mUseShippingNameForSelection = value;
        }
    }


    /// <summary>
    /// Returns ClientID of the dropdownlist.
    /// </summary>
    public override string ValueElementID
    {
        get
        {
            return uniSelector.DropDownSingleSelect.ClientID;
        }
    }

    /// <summary>
    /// Allows to display only enabled items. Default value is true.
    /// </summary>
    public bool DisplayOnlyEnabled
    {
        get
        {
            return ValidationHelper.GetBoolean(GetValue("DisplayOnlyEnabled"), mDisplayOnlyEnabled);
        }
        set
        {
            mDisplayOnlyEnabled = value;
            SetValue("DisplayOnlyEnabled", value);
        }
    }


    /// <summary>
    /// Id of items which have to be displayed. Use ',' or ';' as separator if more ids required.
    /// </summary>
    public string AdditionalItems
    {
        get
        {
            return mAdditionalItems;
        }
        set
        {
            // Prevent from setting null value
            if (value != null)
            {
                mAdditionalItems = value.Replace(';', ',');
            }
            else
            {
                mAdditionalItems = "";
            }
        }
    }

    #endregion


    #region "Protected properties"

    /// <summary>
    /// Returns true if site given by SiteID uses global shipping options beside site-specific ones.
    /// </summary>
    protected bool AllowGlobalObjects
    {
        get
        {
            // Unknown yet
            if (!mAllowGlobalObjects.HasValue)
            {
                mAllowGlobalObjects = false;
                // Try to figure out from settings
                SiteInfo si = SiteInfoProvider.GetSiteInfo(SiteID);
                if (si != null)
                {
                    mAllowGlobalObjects = ECommerceSettings.AllowGlobalShippingOptions(si.SiteName);
                }
            }

            return mAllowGlobalObjects.Value;
        }
    }

    #endregion


    protected void Page_Load(object sender, EventArgs e)
    {
        if (StopProcessing)
        {
            uniSelector.StopProcessing = true;
        }
        else
        {
            uniSelector.OnListItemCreated += new UniSelector.ListItemCreated(uniSelector_OnListItemCreated);
            uniSelector.OnSelectionChanged += new EventHandler(uniSelector_OnSelectionChanged);
            InitSelector();
        }
    }


    /// <summary>
    /// Reloads selector's data.
    /// </summary>
    /// <param name="force">Indicates if data should be loaded from database</param>
    public void Reload(bool force)
    {
        InitSelector();
        uniSelector.Reload(force);
    }


    /// <summary>
    /// Initializes the selector.
    /// </summary>
    public void InitSelector()
    {
        uniSelector.DropDownSingleSelect.AutoPostBack = AutoPostBack;
        uniSelector.IsLiveSite = IsLiveSite;
        uniSelector.AllowEmpty = AddNoneRecord;
        uniSelector.AllowAll = AddAllItemsRecord;

        string where = "";
        // Add global items
        if (DisplayGlobalItems)
        {
            where = SqlHelperClass.AddWhereCondition(where, "ShippingOptionSiteID IS NULL ", "OR");
        }
        // Add site specific items
        if (DisplaySiteItems)
        {
            where = SqlHelperClass.AddWhereCondition(where, "ShippingOptionSiteID = " + SiteID, "OR");
        }

        // Filter out only enabled items
        if (DisplayOnlyEnabled)
        {
            where = SqlHelperClass.AddWhereCondition(where, "ShippingOptionEnabled = 1");
        }

        // Add items which have to be on the list
        string additionalList = SqlHelperClass.GetSafeQueryString(AdditionalItems, false);
        if (!string.IsNullOrEmpty(additionalList))
        {
            where = SqlHelperClass.AddWhereCondition(where, "ShippingOptionID IN (" + additionalList + ")", "OR");
        }

        // Ensure selected value to be on the list when requested
        if (!string.IsNullOrEmpty(where) && (ShippingID > 0) && IncludeSelected)
        {
            where = SqlHelperClass.AddWhereCondition(where, "ShippingOptionID = " + ShippingID, "OR");
        }

        uniSelector.WhereCondition = where;
    }


    protected void uniSelector_OnListItemCreated(ListItem item)
    {
        if ((item != null) && (ShoppingCart != null))
        {
            // Store original shipping option ID 
            int origShippingOptionId = ShoppingCart.ShoppingCartShippingOptionID;

            // Calculate hypothetical shipping cost for shipping option from supplied list item
            ShoppingCart.ShoppingCartShippingOptionID = ValidationHelper.GetInteger(item.Value, 0);

            // Get site name
            SiteInfo si = SiteInfoProvider.GetSiteInfo(ShoppingCart.ShoppingCartSiteID);
            if (si != null)
            {
                // Get shipping cost for currently processed shipping option
                double shipping = ShoppingCart.TotalShipping;

                string detailInfo = "";
                if (shipping > 0)
                {
                    detailInfo = "(" + CurrencyInfoProvider.GetFormattedPrice(shipping, ShoppingCart.Currency) + ")";
                }

                // Check if displaying in RTL culture
                bool rtl = IsLiveSite ? CultureHelper.IsPreferredCultureRTL() : CultureHelper.IsUICultureRTL();
                if (rtl)
                {
                    item.Text = ((detailInfo == "") ? "" : detailInfo + " ") + item.Text;
                }
                else
                {
                    item.Text += ((detailInfo == "") ? "" : " " + detailInfo);
                }
            }

            // Restore original shipping option ID
            ShoppingCart.ShoppingCartShippingOptionID = origShippingOptionId;
        }
    }


    protected void uniSelector_OnSelectionChanged(object sender, EventArgs e)
    {
        RaiseShippingChange(sender, e);
    }


    /// <summary>
    /// Raises OnShippingChange event.
    /// </summary>
    protected void RaiseShippingChange(object sender, EventArgs e)
    {
        if (ShippingChange != null)
        {
            ShippingChange(sender, e);
        }
    }
}