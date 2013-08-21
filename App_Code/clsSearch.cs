using CMS.CMSHelper;
using CMS.GlobalHelper;
using CMS.SiteProvider;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using CMS.DataEngine;
using CMS.SettingsProvider;

/// <summary>
/// Summary description for clsSearch
/// </summary>
public class clsSearch : System.Web.UI.Page
{
    //CustomTableItemProvider tp = null;
    DataSet ds_ = null;
	public clsSearch()
	{
		//
		// TODO: Add constructor logic here
		//
        
	}
    public void init_value(object rY, object rM, object rMd, object rOther, object rClass, object rS)
    {

        
        

        int step = 0;
        int nparam = 0;
        if (Session["step"] != null)
        {
            try
            {
                step = int.Parse(Session["step"].ToString());
                nparam++;
            }
            catch
            { }
        }

        if (step == 0)
        {
            string make = "";
            string make2 = "";
            string year = "";
            string model = "";
            string searchtext = "";
            string other = "";
            string class_ = "";
            DataSet ds = null;
            DataRow[] dRows = null;
           // tp = new CustomTableItemProvider(CMSContext.CurrentUser);
            GeneralConnection cn = null;
            if (Session["GeneralConnection"] != null)
            {
                cn = (GeneralConnection)Session["GeneralConnection"];
                ds = (DataSet)Session["customtable_carz"];
            }
            else
            {
                cn = ConnectionHelper.GetConnection();
                ds = cn.ExecuteQuery("select ItemID,Make,URLslug,Model,Year from  dbo.customtable_carz ", null, QueryTypeEnum.SQLQuery, false);
            }
            Session["customtable_carz"] = ds;
            Session["GeneralConnection"] = cn;
            if (rY != null)
            {
                year = rY.ToString().Trim().Replace("?", "");
                Session["year"] = year;
                nparam++;
            }
           
            if (rM != null)
            {
                make = rM.ToString();
                make = make.Split('.')[0];
                make = CarzHelpers.URLDecode(make);
                make = make.Trim();
                nparam++;
                dRows = ds.Tables[0].Select("Make = '" + other + "' or URLslug = '" + other + "'");
              
                if (dRows.Length <= 0)
                {

                    model = make;
                    make = "";
                }
                else make2 = dRows[0]["URLslug"].ToString();
                Session["make"] = make;
                Session["model"] = model;
            }

            if (rMd != null && model == "")
            {
                model = rMd.ToString();
                model = CarzHelpers.URLDecode(model, true);
                model = model.Trim();
                nparam++;
                Session["model"] = model;
            }

            if (rS != null)
            {
                searchtext = rS.ToString();
                   searchtext = HttpContext.Current.Server.UrlDecode(searchtext);
                Session["searchtext"] = searchtext;

            }

            if (rOther != null)
            {
                other = rOther.ToString();
                other = CarzHelpers.URLDecode(other.Replace("/", ""));
                other = other.Trim();
                dRows = ds.Tables[0].Select("Make = '" + other + "' or URLslug = '" + other + "'");
               
                        if (dRows.Length<=0)
                        {
								string[] arr = other.Split('-');
								if (arr.Length == 2)
								{
									try
									{
										year = int.Parse(arr[0]).ToString();
										make = arr[1];
                                    
                                        if (dRows.Length <= 0)
										{

											model = make;
											make = "";
											nparam++;
										}
									}
									catch
									{
										make = arr[0];
										model = arr[1];
										nparam+=2;
									}
								}
								else
								{
                                    dRows = ds.Tables[0].Select("Make = '" + other + "' or URLslug = '" + other + "'");
                                  
									{
										//is make
										make = other;
										nparam++;
									}
                                    dRows = ds.Tables[0].Select("Model = '" + other + "'");
                               
                                    if (dRows.Length > 0)
									{
										//is make
										model = other;
										nparam++;
									}
								}
						}else
						{
							make = other;
							nparam++;
						}
            }
            class_ = (rClass != null ? rClass.ToString() : "");
            Session["searchtext"] = searchtext;



            Session["classname"] = class_.Replace(".aspx", "");
            Session["year"] = year.Replace(".aspx", ""); ;
            Session["make"] = make.Replace(".aspx", ""); ;
            Session["model"] = model.Replace(".aspx", ""); ;
            nparam = 0;
            if (year != "") nparam++;
            if (make != "") nparam++;
            if (model != "") nparam++; 
            Session["nparam"] = nparam;
            cn.Dispose();
        }
        else
        {
            Session["step"] = step++;
        }
       
    }
	
    public void init_value2(object rY, object rOther, object rClass, object rS, string type)
    {

        Session["make_URLslug"] = null;
        Session["make_main"] = null;
        Session["detailid"] = null;
        int step = 0;
        int nparam = 0;
        if (Session["step"] != null)
        {
            try
            {
                step = int.Parse(Session["step"].ToString());
                nparam++;
            }
            catch
            { }
        }

        if (step == 0)
        {

            string[] ob = null;



            string make = "";
            string URLslug = "";
            string year = "";
            string model = "";
            string searchtext = "";
            string other = "";
            string class_ = "";
            DataSet ds = null;
            DataRow[] dRows = null;
            // tp = new CustomTableItemProvider(CMSContext.CurrentUser);
            GeneralConnection cn = null;
            if (Session["GeneralConnection"] != null)
            {
                cn = (GeneralConnection)Session["GeneralConnection"];
                //ds = (DataSet)Session["customtable_carz"];
            }
            else
            {
                cn = ConnectionHelper.GetConnection();

            }

            ds = cn.ExecuteQuery("select ItemID,Make,URLslug,Model,Year from  dbo.customtable_carz ", null, QueryTypeEnum.SQLQuery, false);
            Session["customtable_carz"] = ds;
            Session["GeneralConnection"] = cn;
            if (rY != null)
            {
                year = rY.ToString().Trim().Replace("?", "");
                Session["year"] = year;
                nparam++;
            }

            if (rOther != null)
            {
                ob = rOther.ToString().Trim().Split('-');
                if (type == "search")
                {
                    if (ob.Length == 1)
                    {
                        //is make year or model
                        if (!isItemID(ob[0]))
                        {
                            FindMakeModel(ob[0], ds, out year, out make, out URLslug, out model, out nparam, year);

                        }


                    }
                    else
                    {
                        if (isItemID(ob[ob.Length - 1]))
                        {
							
                            FindItemID(ob[ob.Length - 1], ds, out year, out make, out URLslug, out model, out nparam);

                        }
                        else
                        {

                            FindMakeModel(rOther.ToString(), ds, out year, out make, out URLslug, out model, out nparam, year);
                        }
                    }
                }
                else
                {

                    if (isItemID(ob[ob.Length - 1]))
                    {
                        FindItemID(ob[ob.Length - 1], ds, out year, out make, out URLslug, out model, out nparam);

                    }
                    else
                    {

                        FindMakeModel(rOther.ToString(), ds, out year, out make, out URLslug, out model, out nparam, year);
                    }
                }
            }

            if (rS != null)
            {
                searchtext = rS.ToString();
                searchtext = HttpContext.Current.Server.UrlDecode(searchtext);
                Session["searchtext"] = searchtext;

            }

            class_ = (rClass != null ? rClass.ToString().Replace("/", ""): "");
            Session["searchtext"] = searchtext;



            Session["classname"] = class_.Replace(".aspx", "");
            Session["year"] = year.Replace(".aspx", ""); ;
            Session["make"] = make.Replace(".aspx", ""); ;
            Session["model"] = model.Replace(".aspx", "");
            nparam = 0;
            if (year != "") nparam++;
            if (make != "") nparam++;
            if (model != "") nparam++;
            Session["nparam"] = nparam;
            cn.Dispose();
        }
        else
        {
            Session["step"] = step++;
        }

    }
    private void FindItemID(string id, DataSet ds, out string year, out string make, out string URLslug, out string model, out  int np)
    {
        year = "";
        model = "";
        make = "";
        URLslug = "";
        np = 1;
        DataRow[] dRows = ds.Tables[0].Select("ItemID = '" + id + "'");
        if (dRows.Length >= 0)
        {
            //is make
            year = dRows[0]["Year"].ToString();
            model = dRows[0]["Model"].ToString();
            make = dRows[0]["Make"].ToString();
            URLslug = dRows[0]["URLslug"].ToString();
            Session["title"]= year + " " + model + " " + make;
            np++;
            Session["detailid"] = id;
        }
		
		
    }
    private void FindMakeModel(string rOther, DataSet ds, out string year, out string make, out string URLslug, out string model, out int nparam, string y)
    {
        string other = rOther.ToString();
        other = CarzHelpers.URLDecode(other.Replace("/", ""));
        other = other.Trim();
        DataRow[] dRows = ds.Tables[0].Select("Make = '" + other + "' or URLslug = '" + other + "'");
        year = y;
        model = "";
        make = "";
        URLslug = "";
        nparam = 2;

        if (dRows.Length <= 0)
        {
            string[] arr = other.Split('-');
            if (arr.Length == 2)
            {
                try
                {
                    year = int.Parse(arr[0]).ToString();
                    make = arr[1];

                    if (dRows.Length <= 0)
                    {

                        model = make;
                        make = "";
                        nparam++;
                    }
                }
                catch
                {
                    make = arr[0];
                    model = arr[1];
                    nparam += 2;
                }
            }
            else
            {
                dRows = ds.Tables[0].Select("Make = '" + other + "' or URLslug = '" + other + "'");
                if (dRows.Length > 0)
                {
                    //is make
                    make = other;
                    nparam++;
                }
                else
                {
                    dRows = ds.Tables[0].Select("Model = '" + other + "'");

                    if (dRows.Length > 0)
                    {
                        //is make
                        model = other;
                        nparam++;
                    }
                }
            }
        }
        else
        {
            Session["make_URLslug"] = dRows[0]["URLslug"].ToString();
            Session["make_main"] = dRows[0]["Make"].ToString();
            make = other;
            nparam++;
        }
        // make = dRows.Length.ToString();
    }
    private Boolean isItemID(string value)
    {
        try
        {
            long l = long.Parse(value);
        }
        catch (Exception e)
        {
            return false;
        }
        return true;
    }

    public void get_sql(string year, string make, string model, string other, string searchtext)
    {
	    if (Session["detailid"]!=null) 
		{
		   Session["sql"] = "ItemID = '" + Session["detailid"].ToString() + "'";
		   return;
		}
        string title = "";
        string sql = "";
        if (year == "" && model == "" && make == "")
        {
            if (other == "all") sql = "";
        }
        else
        {
            if (year != "")
            {
                sql = " Year ='" + year + "'";
                title = year;
            }
            if (sql != "")
            {
                if (make != "")
                {

                    sql += " and (Make = '" + make + "' or URLslug = '" + make + "')";
                    title += " " + make;
                }

            }
            else
                if (make != "")
                {
                    sql = " Make = '" + make + "' or URLslug = '" + make + "'";
                    title = make;
                }




              if (sql != "")
            {
                if (model != "")
                {
                    sql += " and  ( Model ='" + model + "' or Model='"+model.Replace(".",",")+"')";
                    title += " " + model;
                }

            }
            else
                if (model != "")
                {
                    sql += "( Model ='" + model + "' or Model='" + model.Replace(".", ",") + "')";
                    title = model;
                }


        }
        if (searchtext != "")
        {
            string[] arr = searchtext.Trim().Replace("1=1", "").Split(' ');
            for (int i = 0; i < arr.Length; i++)
            {
                if (i != arr.Length - 1)
                    sql += string.Format(" Year like '%{0}%' or Make like '%{0}%' or URLslug like '%{0}%' or Model like '%{0}%' or BodyText like '%{0}%' or ", arr[i]);
                else sql += string.Format(" Year like '%{0}%' or Make like '%{0}%' or URLslug like '%{0}%' or Model like '%{0}%' or BodyText like '%{0}%' ", arr[i]);
            }

        }
        if (sql == "") sql = "1=1";
        Session["sql"] = sql.Replace(".aspx", "");
        Session["title"] = title;
    }
}