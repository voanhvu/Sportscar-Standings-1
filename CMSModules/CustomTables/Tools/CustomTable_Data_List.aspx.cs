using System;

using CMS.CMSHelper;
using CMS.GlobalHelper;
using CMS.SettingsProvider;
using CMS.SiteProvider;
using CMS.UIControls;
using CMS.ExtendedControls;

public partial class CMSModules_CustomTables_Tools_CustomTable_Data_List : CMSCustomTablesToolsPage
{
    protected int customTableId = 0;
    protected string formName = String.Empty;
    protected string searchvalue = "";

    protected void Page_Init(object sender, EventArgs e)
    {
        RequireSite = false;
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        string newItemPage = "~/CMSModules/CustomTables/Tools/CustomTable_Data_EditItem.aspx";

        // Get form ID from url
        customTableId = QueryHelper.GetInteger("customtableid", 0);
        //get search value
         searchvalue = QueryHelper.GetString("search","");
        // Running in site manager?
        bool siteManager = QueryHelper.GetInteger("sm", 0) == 1;

        DataClassInfo dci = null;

        // Read data only if user is site manager global admin or table is bound to current site
        if (CurrentUser.UserSiteManagerAdmin || (ClassSiteInfoProvider.GetClassSiteInfo(customTableId, CMSContext.CurrentSiteID) != null))
        {
            // Get CustomTable class
            dci = DataClassInfoProvider.GetDataClass(customTableId);
        }

        // Set edited object
        EditedObject = dci;

        if (dci != null)
        {
            
            customTableDataList.CustomTableClassInfo = dci;
            customTableDataList.EditItemPageAdditionalParams = (siteManager ? "sm=1" : String.Empty);
            customTableDataList.ViewItemPageAdditionalParams = (siteManager ? "sm=1" : String.Empty);
            // Set alternative form and data container
            customTableDataList.UniGrid.FilterFormName = dci.ClassName + "." + "filter";
            customTableDataList.UniGrid.FilterFormData = CustomTableItem.New(dci.ClassName, new CustomTableItemProvider(CMSContext.CurrentUser));
            string sql = "";
            if (searchvalue != "")
            {
                string[] arr = searchvalue.Trim().Replace("1=1", "").Split(' ');
                for (int i = 0; i < arr.Length; i++)
                {
                    if (i != arr.Length - 1)
                        sql += string.Format(" Year like '%{0}%' or Make like '%{0}%' or Model like '%{0}%' or BodyText like '%{0}%' or ", arr[i]);
                    else sql += string.Format(" Year like '%{0}%' or Make like '%{0}%' or Model like '%{0}%' or BodyText like '%{0}%' ", arr[i]);
                }

            }
            customTableDataList.UniGrid.WhereCondition = sql;
            
            // Set custom pages
            if (dci.ClassEditingPageURL != String.Empty)
            {
                customTableDataList.EditItemPage = dci.ClassEditingPageURL;
            }
            if (dci.ClassNewPageURL != String.Empty)
            {
                newItemPage = dci.ClassNewPageURL;
            }
            if (dci.ClassViewPageUrl != String.Empty)
            {
                customTableDataList.ViewItemPage = dci.ClassViewPageUrl;
            }


            ScriptHelper.RegisterDialogScript(this);
            ScriptHelper.RegisterClientScriptBlock(this, typeof(string), "SelectFields", ScriptHelper.GetScript("function SelectFields() { modalDialog('" +
                                                                                                                ResolveUrl("~/CMSModules/CustomTables/Tools/CustomTable_Data_SelectFields.aspx") + "?customtableid=" + customTableId + "'  ,'CustomTableFields', 500, 500); }"));
            ScriptHelper.RegisterDialogScript(this);
            ScriptHelper.RegisterClientScriptBlock(this, typeof(string), "SelectSearch", ScriptHelper.GetScript("function SelectSearch() { modalDialog('" +
                                                                                                                ResolveUrl("~/CMSModules/CustomTables/Tools/CustomTable_Data_SelectSearch.aspx") + "?customtableid=" + customTableId + "'  ,'CustomTableSearch', 500, 500); }"));

            if (!siteManager)
            {
                CurrentMaster.Title.TitleText = GetString("customtable.edit.header");
                CurrentMaster.Title.TitleImage = GetImageUrl("Objects/CMS_CustomTable/object.png");
                CurrentMaster.Title.HelpTopicName = "custom_tables_data";
                CurrentMaster.Title.HelpName = "helpTopic";
            }

            // Check 'Read' permission
            if (!CMSContext.CurrentUser.IsAuthorizedPerResource("cms.customtables", "Read") &&
                !CMSContext.CurrentUser.IsAuthorizedPerClassName(dci.ClassName, "Read"))
            {
                ShowError(String.Format(GetString("customtable.permissiondenied.read"), dci.ClassName));
                plcContent.Visible = false;
                return;
            }

            string[,] actions = new string[3,6];
            // New item link
            actions[0, 0] = HeaderActions.TYPE_HYPERLINK;
            actions[0, 1] = GetString("customtable.data.newitem");
            actions[0, 2] = null;
            actions[0, 3] = ResolveUrl(newItemPage + "?new=1&customtableid=" + customTableId + (siteManager ? "&sm=1" : ""));
            actions[0, 4] = null;
            actions[0, 5] = GetImageUrl("CMSModules/CMS_CustomTables/newitem.png");
            // Select fields link
            actions[1, 0] = HeaderActions.TYPE_HYPERLINK;
            actions[1, 1] = GetString("customtable.data.selectdisplayedfields");
            actions[1, 2] = null;
            actions[1, 3] = "javascript:SelectFields();";
            actions[1, 4] = null;
            actions[1, 5] = GetImageUrl("CMSModules/CMS_CustomTables/selectfields16.png");
            // Select search fields 
            actions[2, 0] = HeaderActions.TYPE_LINKBUTTON;
            actions[2, 1] = "Search";
            actions[2, 2] = null;
            actions[2, 3] = "javascript:CloseAndRefresh();";
            actions[2, 4] = null;
            actions[2, 5] = GetImageUrl("CMSModules/CMS_CustomTables/selectfields16.png");
            CurrentMaster.HeaderActions.Actions = actions;
            // 
            if (!siteManager)
            {
                // Initializes page title
                string[,] breadcrumbs = new string[2,3];
                breadcrumbs[0, 0] = GetString("customtable.list.title");
                breadcrumbs[0, 1] = "~/CMSModules/Customtables/Tools/CustomTable_List.aspx";
                breadcrumbs[0, 2] = "";
                breadcrumbs[1, 0] = dci.ClassDisplayName;
                breadcrumbs[1, 1] = "";
                breadcrumbs[1, 2] = "";

                CurrentMaster.Title.Breadcrumbs = breadcrumbs;
            }
        }
    }
}