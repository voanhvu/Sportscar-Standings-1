using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CMS.CMSHelper;
using System.Text;
using CMS.MediaLibrary;
using CMS.GlobalHelper;
using CMS.SettingsProvider;
using CMS.TreeEngine;
using CMS.DocumentEngine;


/// <summary>
/// Summary description for CarzHelpers
/// </summary>
public static class CarzHelpers
{
	
    public static string URLReplace(string link)
    {
        link = link.Trim();
        link = link.Replace(".", "-");
        link = HttpContext.Current.Server.UrlPathEncode(link);
        return link;
    }
    public static string URLEncode(string link, Boolean b = false)
    {
        link = link.Trim();
        //link = link.Replace("-", "_");
        if (b) link = link.Replace(".", "-").Trim().Replace(" ","-");
        link = HttpContext.Current.Server.UrlPathEncode(link);
        return link;
    }
    public static string URLDecode(string link,Boolean b=false)
    {
        link = link.Trim();
        //link = link.Replace("_", "-");
        if (b) 
            link = link.Replace(",", ".");
        else link = link.Replace("/", "");
        link = HttpContext.Current.Server.UrlDecode(link);
        return link;
    }
    public static string getMediaURL(string Imagepath)
    {
        string link_media = "";
        string[] arr = null;
        if (Imagepath.Trim() != "")
        {


            if (Imagepath.LastIndexOf("media") > 2 || Imagepath.LastIndexOf("images") == -1)
            {
                link_media = Imagepath.Trim().Split('?')[0];
                arr = link_media.Split('/');
                link_media = arr[arr.Length - 1];
                MediaFileInfo mfi = MediaFileInfoProvider.GetMediaFileInfo(CMSContext.CurrentSiteName, link_media);
                if (mfi != null)
                {

                    return link_media = "/getmedia/" + mfi.FileGUID.ToString() + "/" + mfi.FileName + ".aspx";
                }
                else Imagepath = "";
            }
            
           

        }
        return Imagepath;
    }
    
}