
 jQuery.extend({
        URLEncode: function (s) {
            s = encodeURIComponent(s);
            s = s.replace(/\~/g, '%7E').replace(/\!/g, '%21').replace(/\(/g, '%28').replace(/\)/g, '%29').replace(/\'/g, '%27');
            s = s.replace(/%20/g, '%20');
			s=s.split('>').join('');
			s=s.split('<').join('');
			s=s.split('*').join('');
			s=s.split('&').join('');
            return s;
        },
        URLDecode: function (s) {
            s = s.replace(/\+/g, '%20');
            s = decodeURIComponent(s);
            return s;
        }
    });
  function  search_fill()
    {
        if (jQuery("#txtWord").val().replace(/\s+/g, '') != '') {
            var s = jQuery("#txtWord").val().replace('.', '').trim(); ;
		    s=s.split('>').join('');
		    s=s.split('<').join('');
		    s=s.split('*').join('');
		    s=s.split('&').join('');
            window.location.href ='/Search/Custom-Search/searchtext='+ jQuery.URLEncode(s);
		}
    }
		   
	function next(url, id) {
		if (id != "") {
			createCookie("Neascasdgghjukljkt", id, "1");
			window.location.href = url;
		}
	}	 
 var optionall="<option value='All'>All</option>";
    jQuery(document).ready(function () {
        get_make();
    })
    
   
  
    function check_url() {
        var param = "";
        var make = jQuery('#ddlMake').val();
        var model=jQuery('#ddlModel').val();
        if (jQuery('#ddlYear').val() != 'All') {
            param = jQuery('#ddlYear').val();
           
            if (make != null) {
                if (make != 'All') {
                    param = param + "-" + jQuery.URLEncode(make.split('-').join('_'));
                    if (model != null) {
                        if (model != 'All') param = param + "-" + jQuery.URLEncode(model.split('-').join('_').split('.').join(','));
                    }
                } else {
                    if (model != null) {
                        if (model != 'All') param = param + "-" + jQuery.URLEncode(model.split('-').join('_').split('.').join(','));
                    }
                }
            }


        } else {
            if (make != null) {
                if (make != 'All') {
                    param = jQuery.URLEncode(make.split('-').join('_'));
                    if (model != null) {
                        if (model != 'All') param = param + "-" + jQuery.URLEncode(model.split('-').join('_')).split('.').join(',');
                    }
                } else {
                    if (model != null) {
                        if (model != 'All') param =  jQuery.URLEncode(model.split('-').join('_')).split('.')[0];
                    }
                }
            }
        }
       
        if(param=="") param="all";
        jQuery('#Search_Link').attr("href", "/Search/" + param);
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
                    jQuery('#ddlMake').append(jQuery(optionall));
                    jQuery.each(json, function (i, page) {
                        try {
                            if (page.length > 0)
							{
								var option=jQuery("<option value='"+page+"'>"+page+"</option>");
                                jQuery('#ddlMake').append(option);
							}
                        }
                        catch (err) {
                        }

                    });
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
            jQuery('#ddlModel').append(jQuery(optionall));
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
                    jQuery('#ddlModel').append(jQuery(optionall));
                    jQuery.each(json, function (i, page) {
                        try
                        {
                        
                            if (page.length > 0)
							{
                                var option=jQuery("<option value='"+page+"'>"+page+"</option>");
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
    jQuery(document).ready(function () {

        
        jQuery("#txtWord").live("keypress", function (e) {
            var keypressed = e.keyCode || e.which;
            if (keypressed == 13) {
              if( jQuery("#txtWord").val()!='')
                jQuery('#btnSearch').trigger("click");
                return false;
            }
        });
		
		jQuery(".inputbox").live("keypress", function (e) {
			var keypressed = e.keyCode || e.which;
			if (keypressed == 13) {
				
				jQuery('.ImageButton').trigger("click");
				return false;
			}
		});
         
       
    });