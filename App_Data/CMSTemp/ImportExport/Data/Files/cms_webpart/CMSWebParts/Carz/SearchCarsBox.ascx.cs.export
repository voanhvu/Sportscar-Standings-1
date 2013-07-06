using System;
using System.Data;
using System.Web;
using System.Web.UI;

using CMS.PortalControls;
using CMS.GlobalHelper;
using CMS.Controls;
using CMS.PortalEngine;
using CMS.CMSHelper;
using CMS.DataEngine;
using CMS.EmailEngine;
using CMS.SettingsProvider;
using System.Net.Mail;
using System.Configuration;
using CMS.SiteProvider;
using System.Web.UI.WebControls;




public partial class CMSWebParts_Carz_SearchCarsBox : CMSAbstractWebPart
{
 
    CustomTableItemProvider tp = null;
    DataSet ds_ = null;
    string year = "";
    string make = "";
    string model = "";
    string other = "";
    string param = "" ;

    public string SetYear
    {
        get
        {
            return ValidationHelper.GetString(GetValue("SetYear"), "").Replace(Environment.NewLine, "|");
        }
        set
        {
            SetValue("SetYear", value);
        }
    }

   
    
   
   
    
    private void init_value()
    {
        string[] SetYear_ = SetYear.Split('|');

        try
        {
            Session["step"] = 0;

            clsSearch clsC = new clsSearch();
            clsC.init_value(Request.Params["year"], Request.Params["make"], Request.Params["model"], Request.Params["other"], Request.Params["class"], Request.Params["searchtext"]);
            year = (Session["year"] != null ? Session["year"].ToString() : "");
            make = (Session["make"] != null ? Session["make"].ToString() : "");
            model = (Session["model"] != null ? Session["model"].ToString() : "");
        }
        catch
        {
        }


        //lVaribleDefault.Text = "alert('" + SetYear_ .Length.ToString()+ "')";
        string obtion = "<option value='All'>All</option>";
        for (int i = 0; i < SetYear_.Length; i++)
        {
            obtion+=string.Format("<option value='{0}'>{0}</option>", SetYear_[i]);
        }
        DefaultYear.Text = obtion;
    }

    public override void ReloadData()
    {
        base.ReloadData();

        init_value();
    }

    public override void OnContentLoaded()
    {
        base.OnContentLoaded();

        init_value();
    }


    #region "Stop processing"

    /// <summary>
    /// Returns true if the control processing should be stopped.
    /// </summary>
    public override bool StopProcessing
    {
        get
        {
            return base.StopProcessing;
        }
        set
        {
            base.StopProcessing = value;
            

        }
    }

    #endregion


    protected override void OnPreRender(EventArgs e)
    {


        base.OnPreRender(e);

       

      


    }
    public override void ClearCache()
    {
        
    }
    
}

