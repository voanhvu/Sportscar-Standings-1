<%@ Control Language="C#" AutoEventWireup="true" Inherits="CMSWebParts_Carz_SearchCarsBox" CodeFile="SearchCarsBox.ascx.cs" %>

 <div id="popupContact">
    <div style="position: absolute; left: 32%; top: 9%;" >  
                   <img width="64px" height="64px" src="~/App_Themes/carz/images/loading.gif" alt="Loading ... "/>
     </div>
    <div id="backgroundPopup" ></div> 
 </div>  

     <asp:Literal ID="Literalparam1223" runat="server"></asp:Literal>
     <dl>
				<dt>Create Your Own Lineup</dt>
				<dd>Compare 0-60 times for a group of cars side-by-side within the selected year, make or model.</dd>
	  </dl>
     <fieldset class="sideSearch">
						<div class="wrapper-field clearfix">
							<label >Year</label>
                            <select id="ddlYear" onchange="get_make();" name="year">
                                <asp:Literal ID="DefaultYear" runat="server"></asp:Literal>
	                            
	                         </select>
						</div>
                      <div class="wrapper-field clearfix">
							<label >Make</label>
                             <select id="ddlMake" onchange="get_model();" name="make"><option value="All" >All</option></select>
						</div>
						<div class="wrapper-field clearfix">
							<label >Model</label>
                            <select id="ddlModel"  name="model" onchange="check_url();"><option value="All">All</option></select>
						</div>
						<div class="grid_2 container-buttons">
                            <a title="Search" href='/Top-10-Fastest-Cars/' class="btn green" id="Search_Link">GO</a>
						</div>
					</fieldset>
<script type="text/javascript">
    <asp:Literal ID="lVaribleDefault" runat="server"></asp:Literal>
    jQuery(document).ready(function () {
        get_make();
    })
    
    jQuery.extend({
        URLEncode: function (s) {
            s = encodeURIComponent(s);
            s = s.replace(/\~/g, '%7E').replace(/\!/g, '%21').replace(/\(/g, '%28').replace(/\)/g, '%29').replace(/\'/g, '%27');
            s = s.replace(/%20/g, '%20');
            return s;
        },
        URLDecode: function (s) {
            s = s.replace(/\+/g, '%20');
            s = decodeURIComponent(s);
            return s;
        }
    });
  
    function check_url() {
        var param = "";
        var make = jQuery('#ddlMake').val();
        var model=jQuery('#ddlModel').val();
        var id='';
        var arr=model.split('|');
        if(arr.length>1) 
        {
            model=arr[1];
            id='-'+arr[0];
        }
       
        model=model.split('  ').join(' ');
        model=model.split(' ').join('-');
        if (jQuery('#ddlYear').val() != 'All') {
            param = jQuery('#ddlYear').val();
           
            if (make != null) {
                if (make != 'All') {
                    param = param + "-" + jQuery.URLEncode(make);
                    if (model != null) {
                        if (model != 'All') param = param + "-" + jQuery.URLEncode(model.split('.').join('-')) + id;
                    }
                } else {
                    if (model != null) {
                        if (model != 'All') param = param + "-" + jQuery.URLEncode(model.split('.').join('-'))+ id;
                    }
                }
            }


        } else {
            if (make != null) {
                if (make != 'All') {
                    param = jQuery.URLEncode(make);
                    if (model != null) {
                        if (model != 'All') param = param + "-" + jQuery.URLEncode(model.split('.').join('-'))+ id;
                    }
                } else {
                    if (model != null) {
                        if (model != 'All') param =  jQuery.URLEncode(model.split('.').join('-'))+ id;
                    }
                }
            }
        }
       
        if(param=="") param="All";
        jQuery('#Search_Link').attr("href", "/Top-10-Fastest-Cars/" + param);
    }
    function get_make() {
        jQuery('#popupContact').show();
        jQuery.ajax({
            url: '/CMSPages/getmakemodel.aspx?Year=' + jQuery('#ddlYear').val(),
            type: "GET",

            success: function (data) {
                text =  data;
                if(text!=" ")
                {
                    var json = jQuery.parseJSON(text);
                    jQuery('#ddlMake').html('');
                    jQuery('#ddlModel').html('');
                    jQuery('#ddlMake').append(jQuery('<option value="All">All</option>'));
                    var page_name='';
                    var page_make='';
                    jQuery.each(json, function (i, page) {
                        try {
                            if (page.length > 0)
                            {
                                page_make=page;
                                URLslug=page;
                                if(page.split('|').length>1) {
                                    page_make=page.split('|')[0];
                                    URLslug=page.split('|')[1];
                                }
                                var option=jQuery('<option value="'+URLslug+'">'+page_make+'</option>');
                                jQuery('#ddlMake').append(option);
							}
                        }
                        catch (err) {
                        }

                    });
					//---added by holly 7-6-13
					/*
					function sortMakes(a, b) {    
					    if (a.innerHTML == 'All') {
						
					        return -1;   
					    }       
					    return (a.innerHTML > b.innerHTML) ? 1 : -1;
					};
					jQuery('#ddlMake option').sort(sortMakes).appendTo('#ddlMake'); //sort alphabetically
					jQuery('#ddlMake').val('1'); //default value
					*/
					//---end added by holly
                     get_model();
                }else
                {
                    jQuery('#ddlMake').html('');
                    jQuery('#ddlModel').html('');
                  
                }
                check_url();
                jQuery('#popupContact').hide();
                },
                error: function (request, status, error) {
                    setTimeout("VerifyStatus(" + pollingInterval + ")");
                }
            
        });
    }
    function get_model() {
        jQuery('#ddlModel').html('');
        if( jQuery('#ddlMake').val()=='All') 
        {
            jQuery('#ddlModel').html('');
            jQuery('#ddlModel').append(jQuery('<option value="All">All</option>'));
        }else
        {
            
            jQuery('#popupContact').show();
            jQuery.ajax({
                url: '/CMSPages/getmakemodel.aspx?Year=' + jQuery('#ddlYear').val() + '&Make=' +jQuery('#ddlMake').val(),
                type: "GET",

                success: function (data) {
                    
                    text = data;
                    var json = jQuery.parseJSON(text);
                    jQuery('#ddlModel').html('');
                    jQuery('#ddlModel').append(jQuery('<option value="All">All</option>'));
                    var page_name='';
                    jQuery.each(json, function (i, page) {
                        try
                        {
                        
                            if (page.length > 0)
                            {
                                page_name=page;
                                if(page.split('|').length>1) page_name=page.split('|')[1];
                                var option=jQuery('<option value="'+page+'">'+page_name+'</option>');
                                jQuery('#ddlModel').append(option);
							}
                        }
                        catch (err) {
                        }

                    });
                    jQuery('#popupContact').hide();
                    check_url();
                },
                error: function (request, status, error) {
                    setTimeout("VerifyStatus(" + pollingInterval + ")");
                }

            });
        }
    }
</script>

 
     



 
