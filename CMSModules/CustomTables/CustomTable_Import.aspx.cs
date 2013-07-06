using System;
using System.Data;
using System.Collections;

using CMS.CMSHelper;
using CMS.GlobalHelper;
using CMS.SettingsProvider;
using CMS.UIControls;
using CMS.ExtendedControls;
using CMS.SiteProvider;
using CMS.MediaLibrary;

using CMS.FormEngine;
using System.Web.UI.WebControls;
using Excel;
using System.IO;
using CMS.DataEngine;
using CMS.EventLog;
using CMS.Scheduler;
using System.Data.OleDb;





public partial class CMSModules_CustomTables_Tools_CustomTable_Import : CMSCustomTablesToolsPage
{
    private CustomTableItemProvider _customTableProvider = new CustomTableItemProvider(CMSContext.CurrentUser);
    #region "Page events"
    DataSet ds_excel = null;
    DataSet _customTable = null;
    DataTable ds_excel_column = null;
    int max_num_column = 0;
    string[] column_import_db;
    bool bl = false;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
            //script url selector
            ScriptHelper.RegisterDialogScript(Page);
            SetFormSiteName();

            btnSelectPath.Text = GetString("general.select");
            btnSelectPath.OnClientClick = GetDialogScript();
            // Initialize master page
            CurrentMaster.Title.TitleText = GetString("customtable.list.Title");
            CurrentMaster.Title.TitleImage = GetImageUrl("Objects/CMS_CustomTable/object.png");
            CurrentMaster.Title.HelpTopicName = "custom_tables_tools_list";
            CurrentMaster.Title.HelpName = "helpTopic";

            // Initialize unigrid
            uniGrid.OnAction += uniGrid_OnAction;
            uniGrid.ZeroRowsText = GetString("customtable.notable");
            uniGrid.OnAfterRetrieveData += uniGrid_OnAfterRetrieveData;
            uniGrid.WhereCondition = "ClassID IN (SELECT ClassID FROM CMS_ClassSite WHERE SiteID = " + CMSContext.CurrentSite.SiteID + ")";
        }
    }

    #endregion

    private void SetupControls()
    {
        // Configuration of media dialog
        DialogConfiguration config = new DialogConfiguration();
        config = new DialogConfiguration();
        config.SelectableContent = SelectableContentEnum.AllFiles;
        config.OutputFormat = OutputFormatEnum.URL;
        config.HideWeb = true;
        config.HideContent = true;
        config.HideAttachments = true;

        config.ContentSites = AvailableSitesEnum.All;
        config.DialogWidth = 90;
        config.DialogHeight = 80;
        config.UseRelativeDimensions = true;
        config.LibSites = AvailableSitesEnum.All;


        //this.mediaSelector.UseCustomDialogConfig = true;
        //this.mediaSelector.DialogConfig = config;
        //this.mediaSelector.ShowPreview = false;
        //this.mediaSelector.ShowTextBox = true;
        //this.mediaSelector.IsLiveSite = true;
        // <cms:MediaSelector ID="mediaSelector" runat="server" Visible="true" />
    }


    #region "Unigrid events"

    private DataSet uniGrid_OnAfterRetrieveData(DataSet ds)
    {
       
            DropDownListTable.DataSource = ds;
            DropDownListTable.DataValueField = "ClassID";
            DropDownListTable.DataTextField = "ClassDisplayName";
            DropDownListTable.DataBind();
      
       
      
        return ds;
    }


    /// <summary>
    /// Handles the UniGrid's OnAction event.
    /// </summary>
    /// <param name="actionName">Name of item (button) that throws event</param>
    /// <param name="actionArgument">ID (value of Primary key) of corresponding data row</param>
    protected void uniGrid_OnAction(string actionName, object actionArgument)
    {
        if (actionName == "edit")
        {
            int classId = ValidationHelper.GetInteger(actionArgument, 0);
            DataClassInfo dci = DataClassInfoProvider.GetDataClass(classId);
            if (dci != null)
            {
                // Check if custom table class hasn't set specific listing page
                if (dci.ClassListPageURL != String.Empty)
                {
                    URLHelper.Redirect(dci.ClassListPageURL + "?customtableid=" + classId);
                }
                else
                {
                    URLHelper.Redirect("CustomTable_Data_List.aspx?customtableid=" + classId);
                }
            }
        }
    }

    #endregion


    #region "Other methods"

    /// <summary>
    /// Redirects to access denied page with appropriate message.
    /// </summary>
    private void MissingPermissionsRedirect()
    {
        RedirectToAccessDenied(GetString("customtable.anytablepermiss"));
    }

    #endregion

   ////////////////////////////////////////////////////////////////////////////////////
     #region "Variables"

    private bool mEnableSiteSelection = false;
    private DialogConfiguration mConfig = null;
    private string selectedSiteName = null;
    private bool siteNameIsAll = false;

    #endregion


    #region "Private properties"

    /// <summary>
    /// Gets the configuration dialog.
    /// </summary>
    private DialogConfiguration Config
    {
        get
        {
            if (mConfig == null)
            {
                mConfig = new DialogConfiguration();
                mConfig.SelectableContent = SelectableContentEnum.AllFiles;
                mConfig.OutputFormat = OutputFormatEnum.URL;
                mConfig.HideWeb = true;
                mConfig.HideContent = true;
                mConfig.HideAttachments = true;
               
                mConfig.ContentSites = AvailableSitesEnum.All;
                mConfig.DialogWidth = 90;
                mConfig.DialogHeight = 80;
                mConfig.UseRelativeDimensions = true;
                mConfig.LibSites = AvailableSitesEnum.All;
               
              
                mConfig.EditorClientID = txtPath.ClientID;

                if (ControlsHelper.CheckControlContext(this, ControlContext.WIDGET_PROPERTIES) && (!siteNameIsAll))
                {
                    // If used in a widget, site selection is provided by a site selector form control (using HasDependingField/DependsOnAnotherField principle)
                    // therefore the site selector drop-down list in the SelectPath dialog contains only a single site - preselected by the site selector form control
                    mConfig.ContentSites = (String.IsNullOrEmpty(selectedSiteName)) ? AvailableSitesEnum.OnlyCurrentSite : AvailableSitesEnum.OnlySingleSite;
                }

                if (string.IsNullOrEmpty(mConfig.ContentSelectedSite))
                {
                    mConfig.ContentSelectedSite = (String.IsNullOrEmpty(selectedSiteName)) ? CMSContext.CurrentSiteName : selectedSiteName;
                }

                mConfig.OutputFormat = OutputFormatEnum.URL;
            }

            return mConfig;
        }
    }

    #endregion


    #region "Public properties"

    



    /// <summary>
    /// Gets ClientID of the textbox with path.
    /// </summary>
    public string ValueElementID
    {
        get
        {
            return txtPath.ClientID;
        }
    }


    /// <summary>
    /// Determines whether to enable site selection or not.
    /// </summary>
    public bool EnableSiteSelection
    {
        get
        {
            return mEnableSiteSelection;
        }
        set
        {
            mEnableSiteSelection = value;
            Config.ContentSites = (value ? AvailableSitesEnum.All : AvailableSitesEnum.OnlyCurrentSite);
        }
    }

    #endregion


    #region "Methods"

   


    protected void Page_PreRender(object sender, EventArgs e)
    {
        if (URLHelper.IsPostback() && true)
        {
            if (siteNameIsAll)
            {
                // Refresh the dialog script if the site name was changed to "ALL" (this enables the site selection in the dialog window)
                btnSelectPath.OnClientClick = GetDialogScript();
            }

            pnlUpdate.Update();
        }
    }


    /// <summary>
    /// Gets the javascript which opens the dialog window.
    /// </summary>
    private string GetDialogScript()
    {
        return "modalDialog('" + GetDialogUrl() + "', 'URLSelection', '90%', '85%'); return false;";
    }


    /// <summary>
    /// Returns Correct URL dialog.
    /// </summary>
    private string GetDialogUrl()
    {
        string url = CMSDialogHelper.GetDialogUrl(Config, true, false, null, false);
        return url;
    }


    /// <summary>
    /// Sets the site name if the SiteName field is available in the form.
    /// The outcome of this method is used for the configuration of the "Config" property.
    /// </summary>
    private void SetFormSiteName()
    {
        
            string siteName = CMSContext.CurrentSiteName;

            if (siteName.EqualsCSafe(string.Empty, true) || siteName.EqualsCSafe("##all##", true))
            {
                selectedSiteName = string.Empty;
                siteNameIsAll = true;
                return;
            }

            if (!String.IsNullOrEmpty(siteName))
            {
                selectedSiteName = siteName;
                return;
            }
        

        selectedSiteName = null;
    }

    #endregion
    public  string ReturnCaptionValue(string fieldname)
    {

       

        if (Session["FormInfo"] != null)
        {
            // Create form info from class form definition
            FormInfo info = (FormInfo)Session["FormInfo"];
            FormFieldInfo field = info.GetFormField(fieldname);

            if (field != null)
            {
                return field.Caption;
            }
            else
            {
                return "";
            }
        }
        else
        {
            return "";
        }
    }

    private void get_column_table()
    {
        try
        {
            if (txtPath.Text != "") get_excell();
            // Get custom table data definition
            int customtableid = ValidationHelper.GetInteger(DropDownListTable.SelectedValue, 0);
            DataClassInfo dci = DataClassInfoProvider.GetDataClass(customtableid);
            if (Session["FormInfo"]==null)
                Session["FormInfo"] = new FormInfo(dci.ClassFormDefinition);
           

            Session["DataClassInfo"] = dci;
            int item = 0;
            Literal lt1 = null;
            Literal lt2 = null;
            if (dci != null)
            {
                _customTable = _customTableProvider.GetItems(dci.ClassName, string.Empty, string.Empty);
                //Literal1.Text = "dfdsf";
                if (_customTable!=null)
                {
                    //GridView1.DataSource = _customTable;
                    //GridView1.DataBind();
                    Session["_customTable"] = _customTable;
                    max_num_column = 0;
                    foreach (DataColumn column in _customTable.Tables[0].Columns)
                    {
                        if (column.ColumnName.LastIndexOf("Item") == -1)
                        {


                            //lb.ID = "c" + item.ToString();
                            if (item == 0)
                            {
                                lt1 = new Literal();
                                lt1.Text = "<Div style='float: left;width: 33%;'>";

                                view_column.Controls.Add(lt1);
                            }
                            lt1 = new Literal();
                            lt1.Text = "<p>";
                            view_column.Controls.Add(lt1);
                            //--------------------------------
                            Label lb = new Label();
                            lb.Text = column.ColumnName + " : ";
                            lb.Width = 122;
                            view_column.Controls.Add(lb);
                            //DropDownList ddl = new DropDownList();
                            // ddl.ID = column.ColumnName;
                            //ddl.Width = 150;
                            //ddl.DataSource = ds_excel_column;
                            //ddl.DataValueField = "column_names";
                            //ddl.DataTextField = "column_names";
                            //ddl.DataBind();

                            Label lb_n = new Label();

                            string aaa = null;
                            default_value(column.ColumnName, out aaa);
                            lb_n.Text = aaa != null ? aaa : "null";
                            view_column.Controls.Add(lb_n);
                            //---------------------------
                            lt2 = new Literal();
                            lt2.Text = "</p>";
                            view_column.Controls.Add(lt2);
                            if (item == 16)
                            {
                                lt2 = new Literal();
                                lt2.Text = "</Div>";
                                view_column.Controls.Add(lt2);
                                item = -1;
                            }
                            item++;
                            max_num_column++;
                        }
                    }
                    bl = true;

                }



            }
           
        }
        catch (Exception msg)
        {
            Literal1.Text = msg.Message ;
        }
        
    }
    protected void ButtonGet_Click(object sender, EventArgs e)
    {
        get_column_table();
        if (bl)
        {
            ButtonExport.Visible = true;
            RadioButtonKeep.Visible = true;
            RadioButtonAll.Visible = true;
        }

    }
    public void get_excell()
    {

        

       

        string path = txtPath.Text.Trim();

        byte[] bytes = null;
        bool bRetValue = false;
        string[] arr = path.Split('?');
        string filePath = Server.MapPath(arr[0]);
        
        if (File.Exists(filePath))
        {

            //if (!Read(filePath))
                ReadExcelContents(filePath);
        }

        
    }
    public void ReadExcelContents(string fileName)
    {
        try
        {
            OleDbConnection connection = new OleDbConnection();
            if (System.IO.Path.GetExtension(fileName) == ".xlsx")
            {

               
                connection = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Extended Properties=\"Excel 8.0;HDR=No;IMEX=1\";Data Source=" + fileName); 
            }
            else
            {
                connection = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Extended Properties=\"Excel 8.0;HDR=No;IMEX=1\";Data Source=" + fileName); 
            }
           // connection = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Extended Properties=\"Excel 8.0;HDR=No;IMEX=1\";Data Source=" + fileName); //Excel 97-2003, .xls //string excelQuery = @"Select [Day],[Outlook],[temp],[Humidity],[Wind], [PlaySport] // FROM [Sheet1$]";

           
            connection.Open();
            //get list sheet
            DataTable dt_sheet = connection.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
            String[] excelSheets = new String[dt_sheet.Rows.Count];
            int i = 0;

            // Add the sheet name to the string array.
            foreach (DataRow row in dt_sheet.Rows)
            {
                excelSheets[i] = row["TABLE_NAME"].ToString();
                i++;
            }
            //-------------
            string excelQuery = @"Select * FROM [" + excelSheets[0] + "]";
            OleDbCommand cmd = new OleDbCommand(excelQuery, connection);
            OleDbDataAdapter adapter = new OleDbDataAdapter();
            adapter.SelectCommand = cmd;
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            ds_excel = ds;
            Session["ds_excel"] = ds_excel;
            
            if (!DataHelper.DataSourceIsEmpty(ds_excel))
            {
                Literal1.Text = (ds_excel.Tables[0].Rows.Count-1).ToString() + " rows <br>";
                /*
                ds_excel_column = new DataTable();

                DataColumn colShowName = new DataColumn("column_names");
                colShowName.DataType = System.Type.GetType("System.String");//System.Int32 
                ds_excel_column.Columns.Add(colShowName);


                DataRow r = null;
                r = ds_excel_column.NewRow();
                r["column_names"] = "Null";
                ds_excel_column.Rows.Add(r);
                foreach (DataColumn column in ds_excel.Tables[0].Columns)
                {
                    //Literal1.Text += column.ColumnName;
                    r = ds_excel_column.NewRow();
                    r["column_names"] = column.ColumnName;
                    ds_excel_column.Rows.Add(r);
                }
                Session["ds_excel_column"] = ds_excel_column;
                 *  */
            }
          
           
            connection.Close();
            
        }
        catch (Exception ex)
        {

            Literal1.Text = ex.Message ;
        }
    }
    public Boolean Read(string filePath)
    {
        try
        {
            System.IO.FileStream stream = File.Open(filePath, FileMode.Open, FileAccess.Read);


            //1. Reading from a binary Excel file ('97-2003 format; *.xls)
            IExcelDataReader excelReader = ExcelReaderFactory.CreateBinaryReader(stream);
            //...
            //2. Reading from a OpenXml Excel file (2007 format; *.xlsx)
            //IExcelDataReader excelReader = ExcelReaderFactory.CreateOpenXmlReader(stream);
            //...
            //3. DataSet - The result of each spreadsheet will be created in the result.Tables
            //DataSet result = excelReader.AsDataSet();
            //...
            //4. DataSet - Create column names from first row
            excelReader.IsFirstRowAsColumnNames = true;
            ds_excel = excelReader.AsDataSet();
            Session["ds_excel"] = ds_excel;
            if (!DataHelper.DataSourceIsEmpty(ds_excel))
            {

                ds_excel_column = new DataTable();

                DataColumn colShowName = new DataColumn("column_names");
                colShowName.DataType = System.Type.GetType("System.String");//System.Int32 
                ds_excel_column.Columns.Add(colShowName);


                DataRow r = null;
                r = ds_excel_column.NewRow();
                r["column_names"] = "Null";
                ds_excel_column.Rows.Add(r);
                foreach (DataColumn column in ds_excel.Tables[0].Columns)
                {
                    //Literal1.Text += column.ColumnName;
                    r = ds_excel_column.NewRow();
                    r["column_names"] = column.ColumnName;
                    ds_excel_column.Rows.Add(r);
                }
                Session["ds_excel_column"] = ds_excel_column;
            }
            //5. Data Reader methods
            while (excelReader.Read())
            {
                //excelReader.GetInt32(0);
            }

            //6. Free resources (IExcelDataReader is IDisposable)
            excelReader.Close();
            return true;
        }
        catch
        {
            return false;
        }
    }
    private void get_column_import_db()
    {
        
        try
        {
            if (_customTable == null) _customTable = (Session["_customTable"] != null ? (DataSet)Session["_customTable"] : null);
            int i = 0;
            if (!DataHelper.DataSourceIsEmpty(_customTable))
            {
                DropDownList dr = null;
                column_import_db = new string[max_num_column];
                foreach (DataColumn column in _customTable.Tables[0].Columns)
                {
                    if (column.ColumnName.LastIndexOf("Item") == -1)
                    {
                        dr = (DropDownList)view_column.FindControl(column.ColumnName);
                        //column_import_db[i] = column.ColumnName + "=" + dr.SelectedValue;
                        if(dr!=null)
                           Literal1.Text += "Table column name : " + column.ColumnName + "Excel column name : " + dr.SelectedValue + "<br>";
                        else Literal1.Text += "Table column name : " + column.ColumnName + " " +view_column.Controls.Count.ToString()+"<br>";
                        i++;
                    }
                }
            }

        }catch(Exception e)
        {
            Literal1.Text = e.Message;
        }
    }
    private Boolean CreateCustomTableItem(DataClassInfo customTable,DataRow dr)
    {

      

        if (customTable != null)
        {

            // Creates new custom table item

            CustomTableItem newCustomTableItem = CustomTableItem.New(customTable.ClassName, _customTableProvider);

            

            // Sets the ItemText field value
            try
            {
                if (_customTable == null) _customTable = (Session["_customTable"] != null ? (DataSet)Session["_customTable"] : null);
                int i = 0;
                if (_customTable!=null)
                {
                   
                   
                    foreach (DataColumn column in _customTable.Tables[0].Columns)
                    {
                        if (column.ColumnName.LastIndexOf("Item") == -1)
                        {
                            string temp="";
                             object aaa=default_value(column.ColumnName,out temp);
                             aaa = (aaa != null ? aaa : null);
                             if (aaa != null)
                             {
                                  object vl=null;
                                 /*
                                  if (default_value_int(column.ColumnName))
                                  {

                                      vl = double_parse(dr[aaa.ToString()].ToString().Trim().Replace("$", "").Replace(",", ""));
                                  }
                                  else
                                  {
                                      if (column.ColumnName == "Views") vl = int_parse(dr[aaa.ToString()].ToString().Trim());
                                      else
                                          if (column.ColumnName == "Featured") vl = bool_parse(dr[aaa.ToString()].ToString().Trim());
                                      else
                                              if (column.ColumnName == "Model") vl = dr[aaa.ToString()].ToString().Trim().Split('"')[0];
                                              else
                                          vl = dr[aaa.ToString()].ToString().Trim();

                                      

                                  }
                                  */
                                  try
                                  {
                                      vl = type_field(dr[aaa.ToString()].ToString());
                                      if(vl!=null)
                                      newCustomTableItem.SetValue(column.ColumnName, vl);
                                  }
                                  catch (Exception exx)
                                  {
                                      Literal1.Text += "<p>- Column " + temp + " error:" + exx.Message + "</p>";
                                  }
                                 
                             }
                        }
                    }
                  
                    newCustomTableItem.Insert();
                    return true;
                } 

               
            }
            catch (Exception e)
            {
                Literal1.Text += e.Message + "<br>";
                return false;
            }
            



           


           

        }


        return false;
       

    }
    private bool DeleteCustomTableItem(DataClassInfo customTable)
    {

        try
        {

            if (customTable != null)
            {

                // Prepares the parameters

                string where = "";



                // Gets the data

                DataSet customTableItems = _customTableProvider.GetItems(customTable.ClassName, where, null);

                if (!DataHelper.DataSourceIsEmpty(customTableItems))
                {

                    // Loops through the individual items

                    foreach (DataRow customTableItemDr in customTableItems.Tables[0].Rows)
                    {

                        // Creates object from DataRow

                        CustomTableItem deleteCustomTableItem = CustomTableItem.New(customTableItemDr, customTable.ClassName);



                        // Deletes custom table item from database
                        if (RadioButtonAll.Checked)
                            deleteCustomTableItem.Delete();

                    }


                    EventLogProvider.LogInformation("CustomTable", "Import delete", "Delete sucess");
                    return true;

                }

            }
        }
        catch (Exception e)
        {
            EventLogProvider.LogInformation("CustomTable", "Import delete error", e.Message);
        }


        return false;

    }
    protected void ButtonGetColumn_Click(object sender, EventArgs e)
    {
        LiteralWaitting.Text = " Loading ... ";
        get_column_table();
        if (bl)
        {
            ButtonExport.Visible = true;
            RadioButtonKeep.Visible = true;
            RadioButtonAll.Visible = true;
        }

        DataClassInfo clsi = null;
        clsi = (Session["DataClassInfo"] != null ? (DataClassInfo)Session["DataClassInfo"] : null);
        DeleteCustomTableItem(clsi);
        int i = 1;
        if (ds_excel == null) ds_excel = (Session["ds_excel"] != null ? (DataSet)Session["ds_excel"] : null);
        if (!DataHelper.DataSourceIsEmpty(ds_excel))
            {
                Literal1.Text = "";
                
                foreach (DataRow row in ds_excel.Tables[0].Rows)
                {
                    if (i != 1)
                    {
                       
                        if (CreateCustomTableItem(clsi, row))
                        {
                            Literal1.Text += "<br> insert row " + i.ToString() + " sucess";
                        }
                        else
                            Literal1.Text += "<br> <span style='color:red;'>insert row " + i.ToString() + " error</span>";
                         
                    }
                    
                    i++;
                }
                
                    Literal1.Text += "<br> Import sucess";
                    EventLogProvider.LogInformation("CustomTable", "Import sucess", "");
                    string taskName = "SportingCarzTask";

                    string siteName = CMSContext.CurrentSiteName;



                    // Get task object

                    TaskInfo ti = TaskInfoProvider.GetTaskInfo(taskName, siteName);



                    // If task exists

                    if (ti != null)
                    {

                        // Run task

                        SchedulingExecutor.ExecuteTask(ti);

                        Literal1.Text += "<br> Run task sucess";

                    }
                    
            }
             

        
         
    }
    protected string default_value(string name,out string fieldname_excel)
    {
        fieldname_excel = "";
        if (ds_excel == null) ds_excel = (Session["ds_excel"] != null ? (DataSet)Session["ds_excel"] : null);

        if (!DataHelper.DataSourceIsEmpty(ds_excel))
        {
            for ( int i =0;i<ds_excel.Tables[0].Columns.Count;i++ )
            {
                if (ReturnCaptionValue(name) == ds_excel.Tables[0].Rows[0][i].ToString() || name == ds_excel.Tables[0].Rows[0][i].ToString()) 
                {
                    fieldname_excel = ds_excel.Tables[0].Rows[0][i].ToString();
                    return ds_excel.Tables[0].Columns[i].ColumnName;
                }
               
            }
            
            /*

            switch (name)
            {
                case "Year":
                    return ds_excel.Tables[0].Columns[2].ColumnName;
                case "Make":
                    return ds_excel.Tables[0].Columns[0].ColumnName;
                case "Model":
                    return ds_excel.Tables[0].Columns[1].ColumnName;
                case "Fuel":
                    return ds_excel.Tables[0].Columns[31].ColumnName;
                case "MPG":
                    return ds_excel.Tables[0].Columns[20].ColumnName;
                case "Engine":
                    return ds_excel.Tables[0].Columns[5].ColumnName;
                case "Transmission":
                    return ds_excel.Tables[0].Columns[6].ColumnName;
                case "Drivetrain":
                    return ds_excel.Tables[0].Columns[22].ColumnName;
                case "CurbWeight":
                    return ds_excel.Tables[0].Columns[9].ColumnName;
                case "MSRP":
                    return ds_excel.Tables[0].Columns[4].ColumnName;
                case "Image":
                    return ds_excel.Tables[0].Columns[21].ColumnName;
                case "RT060Time":
                    return ds_excel.Tables[0].Columns[10].ColumnName;
                case "RT1of4MileTime":
                    return ds_excel.Tables[0].Columns[12].ColumnName;
                case "RT1of4MileSpeed":
                    return ds_excel.Tables[0].Columns[14].ColumnName;
                case "RTTopSpeed":
                    return ds_excel.Tables[0].Columns[15].ColumnName;
                case "RTSource":
                    return ds_excel.Tables[0].Columns[26].ColumnName;
                case "Horsepower":
                    return ds_excel.Tables[0].Columns[7].ColumnName;
                case "Views":
                    return ds_excel.Tables[0].Columns[28].ColumnName;
                case "Featured":
                    return ds_excel.Tables[0].Columns[29].ColumnName;
                case "Tags":
                    return ds_excel.Tables[0].Columns[30].ColumnName;
               
              



            }
          */ 
        }
        return null;
    }
    protected Boolean default_value_int(string name)
    {
       
            switch (name)
            {
                
                  
                case "RT060Time":
                case "RT1of4MileTime":
                case "RT1of4MileSpeed":
                case "RTTopSpeed":
                case "Horsepower":
                case "Price":
				case "MSRP":
                    return true;
               




            }
            return false;
    }

    private object type_field(string value)
    {
        if (value.Trim() == "") return null;
        Boolean true_type = false;
        object o_value=null;
        o_value=try_double_parse(out true_type,value);
        if (true_type) return o_value;
        else
        {
            o_value = try_int_parse(out true_type, value);
            if (true_type) return o_value;
            else return value.Trim();
        }
        return "";
    }
    private object try_double_parse(out Boolean true_type, string value)
    {
        true_type = false;
        try
        {
            true_type = true;
            return double.Parse(value.Trim().Replace("$", "").Replace(",", ""));
            

        }
        catch
        {
            true_type = false;
            return 0;
           
        }

    }
    private object try_int_parse(out Boolean true_type, string value)
    {
        true_type = false;
        try
        {
            true_type = true;
            return int.Parse(value.Trim());


        }
        catch
        {
            true_type = false;
            return 0;

        }

    }
    private double double_parse(string value)
    {
        try
        {
            return double.Parse(value);
            
            
        }
        catch 
        {
            return 0;
        }
       
    }
    private int int_parse(string value)
    {
        try
        {
            return int.Parse(value);


        }
        catch
        {
            return 0;
        }

    }
    private Boolean bool_parse(string value)
    {
        try
        {
            return Boolean.Parse(value);


        }
        catch
        {
            return false;
        }

    }
   
}