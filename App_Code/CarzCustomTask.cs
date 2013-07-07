using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CMS.EventLog;
using CMS.Scheduler;
using CMS.DataEngine;
using System.Data;
using CMS.SettingsProvider;
using CMS.DocumentEngine;
using CMS.GlobalHelper;
using CMS.CMSHelper;

/// <summary>
/// Summary description for Custom
/// </summary>
/// 
namespace Custom
{
    /// <summary>
    /// Custom task class.
    /// </summary>
        
    public class CarzCustomTask: ITask
    {
       
        /// <summary>
        /// Executes the task.
        /// </summary>
        /// <param name="ti">Info object representing the scheduled task</param>
        public string Execute(TaskInfo task)
        {
            try
            {


                get_query_task(task);

                return null;

            }

            catch (Exception ex)
            {

                return (ex.Message);

            }
            
        }
        public void get_query_task(TaskInfo ti)
        {


//--------*** this populates the calculated fields --------

//--------*** this calculates the Average 0-60 time, for all 5 source fields combined --------

            string avg="Declare @TempTableVariable5 TABLE(  \n" +
                               " ItemID int,  \n" +
                               " Average060Time float); \n" +
                           " INSERT INTO @TempTableVariable5 (ItemID,Average060Time) \n" +
                            "    SELECT ItemID, \n" +
                                " (iif(RT060Time is null,0,RT060Time) + iif(MT060Time is null,0,MT060Time)  + iif(CD060Time is null,0,CD060Time) + iif(ED060Time is null,0,ED060Time) + iif(Other060Time is null,0,Other060Time))/(iif(RT060Time is null,0,1) + iif(MT060Time is null,0,1)  + iif(CD060Time is null,0,1) + iif(ED060Time is null,0,1) + iif(Other060Time is null,0,1)) as Average060Time \n" +
                                 "   FROM [dbo].[customtable_carz]  \n" +
                                " Update [dbo].[customtable_carz] SET  \n" +
								"  Average060Time=[@TempTableVariable5].Average060Time \n" +
                          "  FROM [dbo].[customtable_carz] \n" +
                           " RIGHT OUTER JOIN @TempTableVariable5 ON [dbo].[customtable_carz].[ItemID] = [@TempTableVariable5].[ItemID];";

//--------*** this calculates the Best 0-60, 1/4 time, 1/4 speed, top speed and skid pad, for all 5 source fields combined --------

			//--------*** this is the Road & Track (RT) section --------
            
            string speed= "Declare @TempTableVariable TABLE(  \n" +
                                "ItemID int,  \n" +
                               " Best060Time float, \n" +
								"Best1of4MileTime float, \n" +
								"Best1of4MileSpeed float, \n" +
								"BestTopSpeed float, \n" +
								"BestSkidPad float); \n" +
                           " INSERT INTO @TempTableVariable (ItemID,Best060Time,Best1of4MileTime,Best1of4MileSpeed,BestTopSpeed,BestSkidPad) \n" +
                               " SELECT ItemID, \n" +
								" iif(RT060Time is null,1000,RT060Time) as Best060Time, \n" +
								" iif(RT1of4MileTime is null,1000,RT1of4MileTime) as Best1of4MileTime, \n" +
								" iif(RT1of4MileSpeed is null,1000,RT1of4MileSpeed) as Best1of4MileSpeed, \n" +
								" iif(RTTopSpeed is null,1000,RTTopSpeed) as BestTopSpeed, \n" +
								" iif(RTSkidPad is null,1000,RTSkidPad) as BestSkidPad \n" +
								"   FROM [dbo].[customtable_carz]  \n" +
                                " Update [dbo].[customtable_carz] SET  \n" +
								"  Best060Time=[@TempTableVariable].Best060Time, \n" +
								"  Best1of4MileTime=[@TempTableVariable].Best1of4MileTime, \n" +
								"  Best1of4MileSpeed=[@TempTableVariable].Best1of4MileSpeed, \n" +
								"  BestTopSpeed=[@TempTableVariable].BestTopSpeed, \n" +
								"  BestSkidPad=[@TempTableVariable].BestSkidPad \n" +
                           " FROM [dbo].[customtable_carz] \n" +
                          "  RIGHT OUTER JOIN @TempTableVariable ON [dbo].[customtable_carz].[ItemID] = [@TempTableVariable].[ItemID]; \n" +

			//--------*** this is the MotorTrend (MT) section --------

			"Declare @TempTableVariable1 TABLE(  \n" +
                           "     ItemID int,  \n" +
                            "   Best060Time float, \n" +
							" 	Best1of4MileTime float, \n" +
							" 	Best1of4MileSpeed float, \n" +
							" 	BestTopSpeed float, \n" +
							"	BestSkidPad float); \n" +
                          "   INSERT INTO @TempTableVariable1 (ItemID,Best060Time,Best1of4MileTime,Best1of4MileSpeed,BestTopSpeed,BestSkidPad) \n" +
                           "      SELECT ItemID, \n" +
							" 	 iif(MT060Time is null,Best060Time,iif(MT060Time<Best060Time,MT060Time,Best060Time)) as Best060Time, \n" +
							" 	 iif(MT1of4MileTime is null,Best1of4MileTime,iif(MT1of4MileTime<Best1of4MileTime,MT1of4MileTime,Best1of4MileTime)) as Best1of4MileTime, \n" +
							//--------*** edit by holly 7-6-13 use best 1/4 mi speed from the source with best 1/4 time --------
							" 	 iif(MT1of4MileSpeed is null,Best1of4MileSpeed,iif(MT1of4MileTime<Best1of4MileTime,MT1of4MileSpeed,Best1of4MileSpeed)) as Best1of4MileSpeed, \n" + 
							" 	 iif(MTTopSpeed is null,BestTopSpeed,iif(MTTopSpeed<BestTopSpeed,MTTopSpeed,BestTopSpeed)) as BestTopSpeed, \n" +
							" 	 iif(MTSkidPad is null,BestSkidPad,iif(MTSkidPad>BestSkidPad,MTSkidPad,BestSkidPad)) as BestSkidPad \n" +
                             "        FROM [dbo].[customtable_carz]  \n" +
                             "     Update [dbo].[customtable_carz] SET  \n" +
								"   Best060Time=[@TempTableVariable1].Best060Time, \n" +
								"   Best1of4MileTime=[@TempTableVariable1].Best1of4MileTime, \n" +
								"   Best1of4MileSpeed=[@TempTableVariable1].Best1of4MileSpeed, \n" +
								"   BestTopSpeed=[@TempTableVariable1].BestTopSpeed, \n" +
								"   BestSkidPad=[@TempTableVariable1].BestSkidPad \n" +
                           "  FROM [dbo].[customtable_carz] \n" +
                          "   RIGHT OUTER JOIN @TempTableVariable1 ON [dbo].[customtable_carz].[ItemID] = [@TempTableVariable1].[ItemID]; \n" +

			//--------*** this is the Car & Driver (CD) section --------

			" Declare @TempTableVariable2 TABLE(  \n" +
                             "    ItemID int,  \n" +
                             "    Best060Time float, \n" +
							" 	Best1of4MileTime float, \n" +
							" 	Best1of4MileSpeed float, \n" +
							" 	BestTopSpeed float, \n" +
							"	BestSkidPad float); \n" +
                           "  INSERT INTO @TempTableVariable2 (ItemID,Best060Time,Best1of4MileTime,Best1of4MileSpeed,BestTopSpeed,BestSkidPad) \n" +
                            "     SELECT ItemID, \n" +
								"  iif(CD060Time is null,Best060Time,iif(CD060Time<Best060Time,CD060Time,Best060Time)) as Best060Time, \n" +
								"  iif(CD1of4MileTime is null,Best1of4MileTime,iif(CD1of4MileTime<Best1of4MileTime,CD1of4MileTime,Best1of4MileTime)) as Best1of4MileTime, \n" +
							//--------*** edit by holly 7-6-13 use best 1/4 mi speed from the source with best 1/4 time --------
							" 	 iif(CD1of4MileSpeed is null,Best1of4MileSpeed,iif(CD1of4MileTime<Best1of4MileTime,CD1of4MileSpeed,Best1of4MileSpeed)) as Best1of4MileSpeed, \n" + 								"  iif(CDTopSpeed is null,BestTopSpeed,iif(CDTopSpeed<BestTopSpeed,CDTopSpeed,BestTopSpeed)) as BestTopSpeed, \n" +
								"  iif(CDSkidPad is null,BestSkidPad,iif(CDSkidPad>BestSkidPad,CDSkidPad,BestSkidPad)) as BestSkidPad \n" +
                               "      FROM [dbo].[customtable_carz]  \n" +
                               "   Update [dbo].[customtable_carz] SET  \n" +
								"   Best060Time=[@TempTableVariable2].Best060Time, \n" +
								"   Best1of4MileTime=[@TempTableVariable2].Best1of4MileTime, \n" +
								"   Best1of4MileSpeed=[@TempTableVariable2].Best1of4MileSpeed, \n" +
								"   BestTopSpeed=[@TempTableVariable2].BestTopSpeed, \n" +
								"   BestSkidPad=[@TempTableVariable2].BestSkidPad \n" +
                            " FROM [dbo].[customtable_carz] \n" +
                          "   RIGHT OUTER JOIN @TempTableVariable2 ON [dbo].[customtable_carz].[ItemID] = [@TempTableVariable2].[ItemID]; \n" +

			//--------*** this is the Edmunds (ED) source section --------

			" Declare @TempTableVariable3 TABLE(  \n" +
                            "     ItemID int,  \n" +
                               "  Best060Time float, \n" +
							" 	Best1of4MileTime float, \n" +
							" 	Best1of4MileSpeed float, \n" +
							" 	BestTopSpeed float, \n" +
							"	BestSkidPad float); \n" +
                          "   INSERT INTO @TempTableVariable3 (ItemID,Best060Time,Best1of4MileTime,Best1of4MileSpeed,BestTopSpeed,BestSkidPad) \n" +
                            "     SELECT ItemID, \n" +
								"  iif(ED060Time is null,Best060Time,iif(ED060Time<Best060Time,ED060Time,Best060Time)) as Best060Time, \n" +
								"  iif(ED1of4MileTime is null,Best1of4MileTime,iif(ED1of4MileTime<Best1of4MileTime,ED1of4MileTime,Best1of4MileTime)) as Best1of4MileTime, \n" +
							//--------*** edit by holly 7-6-13 use best 1/4 mi speed from the source with best 1/4 time --------
							" 	 iif(ED1of4MileSpeed is null,Best1of4MileSpeed,iif(ED1of4MileTime<Best1of4MileTime,ED1of4MileSpeed,Best1of4MileSpeed)) as Best1of4MileSpeed, \n" + 								"  iif(EDTopSpeed is null,BestTopSpeed,iif(EDTopSpeed<BestTopSpeed,EDTopSpeed,BestTopSpeed)) as BestTopSpeed, \n" +
								"  iif(EDSkidPad is null,BestSkidPad,iif(EDSkidPad>BestSkidPad,EDSkidPad,BestSkidPad)) as BestSkidPad \n" +
                                "     FROM [dbo].[customtable_carz]  \n" +
                               "   Update [dbo].[customtable_carz] SET  \n" +
								"   Best060Time=[@TempTableVariable3].Best060Time, \n" +
								"   Best1of4MileTime=[@TempTableVariable3].Best1of4MileTime, \n" +
								"   Best1of4MileSpeed=[@TempTableVariable3].Best1of4MileSpeed, \n" +
								"   BestTopSpeed=[@TempTableVariable3].BestTopSpeed, \n" +
								"   BestSkidPad=[@TempTableVariable3].BestSkidPad \n" +
                           "  FROM [dbo].[customtable_carz] \n" +
                          "   RIGHT OUTER JOIN @TempTableVariable3 ON [dbo].[customtable_carz].[ItemID] = [@TempTableVariable3].[ItemID]; \n" +

			//--------*** this is the Other source section --------

			" Declare @TempTableVariable4 TABLE(  \n" +
                            "     ItemID int,  \n" +
                               "  Best060Time float, \n" +
							" 	Best1of4MileTime float, \n" +
							" 	Best1of4MileSpeed float, \n" +
							" 	BestTopSpeed float, \n" +
							"	BestSkidPad float); \n" +
                          "   INSERT INTO @TempTableVariable4 (ItemID,Best060Time,Best1of4MileTime,Best1of4MileSpeed,BestTopSpeed,BestSkidPad) \n" +
                            "     SELECT ItemID, \n" +
							" 	 iif(Other060Time is null,iif(Best060Time = 1000,0,Best060Time),iif(Other060Time<Best060Time,Other060Time,Best060Time)) as Best060Time, \n" +
							" 	 iif(Other1of4MileTime is null,iif(Best1of4MileTime = 1000,0,Best1of4MileTime),iif(Other1of4MileTime<Best1of4MileTime,Other1of4MileTime,Best1of4MileTime)) as Best1of4MileTime, \n" +
							//--------*** edit by holly 7-6-13 use best 1/4 mi speed from the source with best 1/4 time --------
							" 	 iif(Other1of4MileSpeed is null,Best1of4MileSpeed,iif(Other1of4MileTime<Best1of4MileTime,Other1of4MileSpeed,Best1of4MileSpeed)) as Best1of4MileSpeed, \n" + 							" 	 iif(OtherTopSpeed is null,iif(BestTopSpeed = 1000,0,BestTopSpeed),iif(OtherTopSpeed<BestTopSpeed,OtherTopSpeed,BestTopSpeed)) as BestTopSpeed, \n" +
							" 	 iif(OtherSkidPad is null,iif(BestSkidPad = 1000,0,BestSkidPad),iif(OtherSkidPad>BestSkidPad,OtherSkidPad,BestSkidPad)) as BestSkidPad \n" +
                                "     FROM [dbo].[customtable_carz]  \n" +
                               "   Update [dbo].[customtable_carz] SET  \n" +
								"   Best060Time=[@TempTableVariable4].Best060Time, \n" +
								"   Best1of4MileTime=[@TempTableVariable4].Best1of4MileTime, \n" +
								"   Best1of4MileSpeed=[@TempTableVariable4].Best1of4MileSpeed, \n" +
								"   BestTopSpeed=[@TempTableVariable4].BestTopSpeed, \n" +
								"   BestSkidPad=[@TempTableVariable4].BestSkidPad \n" +
                           "  FROM [dbo].[customtable_carz] \n" +
                          "   RIGHT OUTER JOIN @TempTableVariable4 ON [dbo].[customtable_carz].[ItemID] = [@TempTableVariable4].[ItemID];";

//--------*** this calculates the final Rankings for each car within its default time class (super fast, fast, spirited, mellow, tame) --------

            GeneralConnection cn = ConnectionHelper.GetConnection();
            string qryname = "";
            string clsname = "";
            string qryRank = "Declare @TempTableVariable TABLE( \n" +
                                "ItemID int, \n" +
                                "STT int);\n" +
                            "INSERT INTO @TempTableVariable (ItemID, STT)\n" +
                                //--------*** edit by holly 7-6-13 also use best 1/4 mi time and top speed as tie-breakers for rankings --------
                                "SELECT ItemID, ROW_NUMBER() OVER (Order by Best060Time,Average060Time,Best1of4MileTime,BestTopSpeed) as STT \n" +
                                    "FROM [dbo].[customtable_carz] \n" +
                                    "Where ({0});	\n" +
                            "Update [dbo].[customtable_carz] SET TimeClassRank=[@TempTableVariable].STT \n" +
                            "FROM [dbo].[customtable_carz] \n" +
                            "RIGHT OUTER JOIN @TempTableVariable ON [dbo].[customtable_carz].[ItemID] = [@TempTableVariable].[ItemID];";
            string qrytimeclass = "Update customtable_carz SET TimeClass='{0}' Where {1} ";
            //TreeProvider tree = new TreeProvider();
            //DataSet ds = tree.SelectNodes(CMSContext.CurrentSiteName, "/Classes/%", CMSContext.CurrentDocumentCulture.CultureCode, true, "CMS.MenuItem", "DocumentMenuItemHideInNavigation='False' and ExpressClasses='False' ", "NodeOrder ASC", -1, true);
            DataSet ds = cn.ExecuteQuery("select QueryName,NodeAlias  FROM [dbo].[View_CONTENT_MenuItem_Joined] where NodeAliasPath like '/Classes/%' and DocumentMenuItemHideInNavigation='False' and ExpressClasses='False'", null, QueryTypeEnum.SQLQuery, false);
            DataSet ds_ = null;

            try
            {
                int k = cn.ExecuteNonQuery(speed, null, QueryTypeEnum.SQLQuery, false);
                EventLogProvider.LogInformation("CustomTask", "Execute Sucess Speed", ti.TaskData);

            }
            catch (Exception ex3)
            {
                // Logs the execution of the task in the event log.
                EventLogProvider.LogInformation("CustomTask", "Execute Rank Speed Error", ex3.ToString());

            }

            try
            {
                int k = cn.ExecuteNonQuery(avg, null, QueryTypeEnum.SQLQuery, false);
                EventLogProvider.LogInformation("CustomTask", "Execute Average 0-60  Speed", ti.TaskData);

            }
            catch (Exception ex4)
            {
                // Logs the execution of the task in the event log.
                EventLogProvider.LogInformation("CustomTask", "Execute Rank Average 0-60  Error", ex4.ToString());

            }


            if (!DataHelper.DataSourceIsEmpty(ds))
            {

                foreach (DataRow ItemRow in ds.Tables[0].Rows)
                {
                    if (ItemRow["QueryName"].ToString() != "")
                    {

                        qryname = ItemRow["QueryName"].ToString();
                        clsname = ItemRow["NodeAlias"].ToString();
                        string[] aqn = qryname.Split('.');
                        string sql2 = "select QueryName,QueryText from  dbo.CMS_Query where QueryName='{0}'";
                        ds_ = cn.ExecuteQuery(string.Format(sql2, aqn[2]), null, QueryTypeEnum.SQLQuery, false);
                        if (ds_ != null)
                        {
                            foreach (DataRow ItemD in ds_.Tables[0].Rows)
                            {
                                string[] stringSeparators = new string[] { "where" };
                                string[] QueryText = ItemD["QueryText"].ToString().ToLower().Replace("and ##", "").Split(stringSeparators, StringSplitOptions.None);
                                //LiteralTitle.Text += "<br>" + string.Format(qrytimeclass, clsname, QueryText[1]);// "<br>" + QueryText[1] + "   " + clsname;
                                // LiteralTitle.Text += "<br>" + string.Format(qryRank, QueryText[1]);// "<br>" + QueryText[1] + "   " + clsname;
                                QueryDataParameters parameters = new QueryDataParameters();
                                try
                                {
                                    int k = cn.ExecuteNonQuery(string.Format(qrytimeclass, clsname, QueryText[1]), null, QueryTypeEnum.SQLQuery, false);
                                    EventLogProvider.LogInformation("CustomTask", "Execute Sucess classtime:" + clsname, ti.TaskData);
                                    //LiteralTitle.Text += "<br> class:" + clsname + " ok" ;
                                }
                                catch (Exception ex1)
                                {
                                    // Logs the execution of the task in the event log.
                                    EventLogProvider.LogInformation("CustomTask", "Execute " + clsname + " Error", ex1.ToString());
                                    //LiteralTitle.Text += "<br>" + ex1.ToString();
                                }

                                try
                                {
                                    int k = cn.ExecuteNonQuery(string.Format(string.Format(qryRank, QueryText[1]), clsname, QueryText[1]), null, QueryTypeEnum.SQLQuery, false);
                                    EventLogProvider.LogInformation("CustomTask", "Execute Sucess Rank class:" + clsname, ti.TaskData);

                                }
                                catch (Exception ex2)
                                {
                                    // Logs the execution of the task in the event log.
                                    EventLogProvider.LogInformation("CustomTask", "Execute Rank class:" + clsname + " Error", ex2.ToString());

                                }

                                

                            }
                        }
                    }
                }
            }
            
        }
    }
}