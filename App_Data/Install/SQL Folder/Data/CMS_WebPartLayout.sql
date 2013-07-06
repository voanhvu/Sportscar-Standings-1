SET IDENTITY_INSERT [CMS_WebPartLayout] ON
INSERT INTO [CMS_WebPartLayout] ([WebPartLayoutID], [WebPartLayoutCodeName], [WebPartLayoutDisplayName], [WebPartLayoutDescription], [WebPartLayoutCode], [WebPartLayoutVersionGUID], [WebPartLayoutWebPartID], [WebPartLayoutGUID], [WebPartLayoutLastModified], [WebPartLayoutCSS]) VALUES (121, N'filter', N'filter', N'', N'<%@ Control Language="C#" AutoEventWireup="true"  Inherits="CMSWebParts_Search_cmscompletesearchdialog"    CodeFile="~/CMSWebParts/Search/cmscompletesearchdialog.ascx.cs" %>
<div class="SearchDialog">
    <cms:CMSSearchDialog ID="srchDialog" runat="server" />
</div>
<div class="SearchResults">
    <cms:CMSSearchResults ID="srchResults" runat="server" FilterName="SearchDialog" />
</div>', N'57cc6f3f-8b2f-4bc3-b992-d93eff99c357', 173, '3239ff22-011a-4bc9-b35d-7d967dcc7b47', '20120828 14:38:37', NULL)
INSERT INTO [CMS_WebPartLayout] ([WebPartLayoutID], [WebPartLayoutCodeName], [WebPartLayoutDisplayName], [WebPartLayoutDescription], [WebPartLayoutCode], [WebPartLayoutVersionGUID], [WebPartLayoutWebPartID], [WebPartLayoutGUID], [WebPartLayoutLastModified], [WebPartLayoutCSS]) VALUES (379, N'EcommerceLogon', N'E-commerce - Logon', N'', N'<%@ Control Language="C#" AutoEventWireup="true" Inherits="CMSWebParts_Membership_Logon_LogonForm"
        CodeFile="~/CMSWebParts/Membership/Logon/logonform.ascx.cs" %>
<asp:Panel ID="pnlBody" runat="server" CssClass="LogonPageBackground">
  <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Default.aspx">
    <LayoutTemplate>
      <asp:Panel runat="server" ID="pnlLogin" DefaultButton="LoginButton">
        <table class="logon">
          <tr>
            <td class="label"><cms:LocalizedLabel ID="lblUserName" runat="server" AssociatedControlID="UserName" EnableViewState="false" /></td>
            <td class="input"><cms:CMSTextBox ID="UserName" runat="server" MaxLength="100" CssClass="LogonTextBox" /><cms:CMSRequiredFieldValidator ID="rfvUserNameRequired" runat="server" ControlToValidate="UserName" EnableViewState="false">*</cms:CMSRequiredFieldValidator></td>
          </tr>
          <tr>
            <td class="label"><cms:LocalizedLabel ID="lblPassword" runat="server" AssociatedControlID="Password" EnableViewState="false" /></td>
            <td class="input"><cms:CMSTextBox ID="Password" runat="server" TextMode="Password" MaxLength="110" CssClass="LogonTextBox" /></td>
          </tr>
          <tr>
            <td></td>
            <td class="remember"><cms:LocalizedCheckBox ID="chkRememberMe" runat="server" /></td>
          </tr>
          <tr>
            <td colspan="2"><cms:LocalizedLabel ID="FailureText" runat="server" EnableViewState="False" CssClass="ErrorLabel" /></td>
          </tr>
          <tr>
            <td></td>
            <td><cms:LocalizedButton ID="LoginButton" runat="server" CommandName="Login" EnableViewState="false" /></td>
          </tr>
        </table>
       </asp:Panel>
    </LayoutTemplate>
  </asp:Login>
  <div class="forgottenPwd">
  <asp:LinkButton ID="lnkPasswdRetrieval" runat="server" EnableViewState="false" />
  <asp:Panel ID="pnlPasswdRetrieval" runat="server" CssClass="LoginPanelPasswordRetrieval" DefaultButton="btnPasswdRetrieval">
    <asp:Label ID="lblPasswdRetrieval" runat="server" EnableViewState="false" AssociatedControlID="txtPasswordRetrieval" />
    <cms:CMSTextBox ID="txtPasswordRetrieval" runat="server" /><br /><br />
    <cms:CMSButton ID="btnPasswdRetrieval" runat="server" EnableViewState="false" /><br />
    <cms:CMSRequiredFieldValidator ID="rqValue" runat="server" ControlToValidate="txtPasswordRetrieval" EnableViewState="false" /><br />
    <span class="ErrorLabel"><asp:Label ID="lblResult" runat="server" Visible="false" EnableViewState="false" /></span>
  </asp:Panel>
   </div>
</asp:Panel>
<asp:Literal ID="ltlScript" runat="server" EnableViewState="false" />
<asp:HiddenField runat="server" ID="hdnPasswDisplayed" />', N'36ac291d-beeb-48d6-bdd8-52c4f4fe94b3', 178, '36b6e10a-937a-4c2c-a7d1-38193360b7c3', '20120828 14:38:37', N'')
INSERT INTO [CMS_WebPartLayout] ([WebPartLayoutID], [WebPartLayoutCodeName], [WebPartLayoutDisplayName], [WebPartLayoutDescription], [WebPartLayoutCode], [WebPartLayoutVersionGUID], [WebPartLayoutWebPartID], [WebPartLayoutGUID], [WebPartLayoutLastModified], [WebPartLayoutCSS]) VALUES (384, N'EcommerceSiteRegister', N'E-commerce Site - Register', N'', N'<%@ Control Language="C#" AutoEventWireup="true" Inherits="CMSWebParts_Membership_Registration_RegistrationForm"
        CodeFile="~/CMSWebParts/Membership/Registration/registrationform.ascx.cs" %>
<%@ Register Src="~/CMSFormControls/Captcha/SecurityCode.ascx" TagName="SecurityCode"
    TagPrefix="cms" %>
<%@ Register Src="~/CMSModules/Membership/FormControls/Passwords/PasswordStrength.ascx" TagName="PasswordStrength"
    TagPrefix="cms" %>
<span class="font12 mLeft20" style="display:block;"><asp:Label ID="lblError" runat="server" ForeColor="red" EnableViewState="false" /></span>
<asp:Label ID="lblText" runat="server" Visible="false" EnableViewState="false" />
<asp:Panel ID="pnlForm" runat="server" DefaultButton="btnOK">
    <table class="logon">
        <tr>
            <td class="label">
                <asp:Label ID="lblFirstName" runat="server" AssociatedControlID="txtFirstName" EnableViewState="false" />
            </td>
            <td class="input">
                <cms:ExtendedTextBox ID="txtFirstName" EnableEncoding="true" runat="server" CssClass="LogonTextBox"
                    MaxLength="100" /><br />
                <cms:CMSRequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName"
                    Display="Dynamic" EnableViewState="false" />
            </td>
        </tr>
        <tr>
            <td class="label">
                <asp:Label ID="lblLastName" runat="server" AssociatedControlID="txtLastName" />
            </td>
            <td class="input">
                <cms:ExtendedTextBox ID="txtLastName" EnableEncoding="true" runat="server" CssClass="LogonTextBox"
                    MaxLength="100" /><br />
                <cms:CMSRequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName"
                    Display="Dynamic" EnableViewState="false" />
            </td>
        </tr>
        <tr>
            <td class="label">
                <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail" EnableViewState="false" />
            </td>
            <td class="input">
                <cms:ExtendedTextBox ID="txtEmail" runat="server" CssClass="LogonTextBox" MaxLength="100" /><br />
                <cms:CMSRequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                    Display="Dynamic" EnableViewState="false" />
            </td>
        </tr>
        <tr>
            <td class="label" style="vertical-align:top;">
               <cms:LocalizedLabel ID="lblPassword" runat="server" EnableViewState="false" />
            </td>
            <td class="input">               
                <cms:PasswordStrength runat="server" ID="passStrength" ShowValidationOnNewLine="true" TextBoxClass="LogonTextBox" />               
            </td>
        </tr>
        <tr>
            <td class="label">
                <asp:Label ID="lblConfirmPassword" runat="server" AssociatedControlID="txtConfirmPassword"
                    EnableViewState="false" />
            </td>
            <td class="input">
                <cms:CMSTextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="LogonTextBox"
                    MaxLength="100" /><br />
                <cms:CMSRequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword"
                    Display="Dynamic" EnableViewState="false" />
            </td>
        </tr>
        <asp:PlaceHolder runat="server" ID="plcCaptcha">
            <tr>
                <td class="label">
                    <asp:Label ID="lblCaptcha" runat="server" AssociatedControlID="scCaptcha" EnableViewState="false" />
                </td>
                <td class="input">
                    <cms:SecurityCode ID="scCaptcha" GenerateNumberEveryTime="false" runat="server" />
                </td>
            </tr>
        </asp:PlaceHolder>
        <tr>
            <td style="height: 26px">
            </td>
            <td style="height: 26px">
                <cms:CMSButton ID="btnOk" runat="server" OnClick="btnOK_Click" CssClass="ContentButton"
                    EnableViewState="false" />
            </td>
        </tr>
    </table>
</asp:Panel>', N'31828354-783f-4375-bf4d-00b7ec725e2e', 179, 'bdbb26c6-6d5d-414e-b78a-ded5ee2bb16b', '20120905 13:24:43', N'')
INSERT INTO [CMS_WebPartLayout] ([WebPartLayoutID], [WebPartLayoutCodeName], [WebPartLayoutDisplayName], [WebPartLayoutDescription], [WebPartLayoutCode], [WebPartLayoutVersionGUID], [WebPartLayoutWebPartID], [WebPartLayoutGUID], [WebPartLayoutLastModified], [WebPartLayoutCSS]) VALUES (223, N'Simple', N'Simple', N'', N'<%@ Control Language="C#" AutoEventWireup="true" Inherits="CMSWebParts_Ecommerce_Wishlist"    CodeFile="~/CMSWebParts/Ecommerce/Wishlist.ascx.cs" %>
<div class="WishlistTable">                          
  <div class="CartStepBody">
    <asp:Label ID="lblTitle" runat="server" Visible="false" EnableViewState="false" />
    <asp:Panel ID="pnlWishlist" runat="server" CssClass="CartStepPanel">
    <asp:Panel ID="pnlWishlistInner" runat="server" CssClass="CartStepInnerPanel" >
      <asp:Label ID="lblInfo" runat="server" CssClass="WishlistInfo" EnableViewState="false" Visible="false" />
        <cms:queryrepeater id="repeater" runat="server" />
      </asp:Panel>
    </asp:Panel>
  </div>
  <div class="btnContinue">
    <cms:CMSButton ID="btnContinue" runat="server" OnClick="btnContinue_Click" CssClass="LongButton" />
  </div>
</div>
<asp:Literal ID="ltlScript" runat="server" EnableViewState="false" />', N'dd795023-b59d-4cef-9518-a9519c2254ac', 239, '6c1a98c7-ed73-4c0b-b0a2-df0efdc877c1', '20120828 14:38:38', N'')
INSERT INTO [CMS_WebPartLayout] ([WebPartLayoutID], [WebPartLayoutCodeName], [WebPartLayoutDisplayName], [WebPartLayoutDescription], [WebPartLayoutCode], [WebPartLayoutVersionGUID], [WebPartLayoutWebPartID], [WebPartLayoutGUID], [WebPartLayoutLastModified], [WebPartLayoutCSS]) VALUES (124, N'Block', N'Block', N'', N'<%@ Control Language="C#" AutoEventWireup="true" 
    Inherits="CMSWebParts_Membership_Logon_LogonMiniForm"    CodeFile="~/CMSWebParts/Membership/Logon/logonminiform.ascx.cs" %>
<asp:Login ID="loginElem" runat="server" DestinationPageUrl="~/Default.aspx" EnableViewState="false">
    <LayoutTemplate>
        <asp:Panel ID="pnlLogonMiniForm" runat="server" DefaultButton="btnLogon" EnableViewState="false">
            <cms:LocalizedLabel ID="lblUserName" runat="server" AssociatedControlID="UserName" EnableViewState="false" />
            <cms:CMSTextBox ID="UserName" runat="server" CssClass="LogonField" EnableViewState="false" />
            <asp:RequiredFieldValidator ID="rfvUserNameRequired" runat="server" ControlToValidate="UserName"
                ValidationGroup="Login1" Display="Dynamic" EnableViewState="false">*</asp:RequiredFieldValidator>
            <cms:LocalizedLabel ID="lblPassword" runat="server" AssociatedControlID="Password" EnableViewState="false" />
            <cms:CMSTextBox ID="Password" runat="server" TextMode="Password" CssClass="LogonField" EnableViewState="false" />
            <cms:LocalizedButton ID="btnLogon" ResourceString="LogonForm.LogOnButton" runat="server" CommandName="Login" ValidationGroup="Login1" EnableViewState="false" />
            <asp:ImageButton ID="btnImageLogon" runat="server" Visible="false" CommandName="Login"
                ValidationGroup="Login1" EnableViewState="false" /><br />
            <asp:Label ID="FailureText" CssClass="ErrorLabel" runat="server" EnableViewState="false" />
        </asp:Panel>
    </LayoutTemplate>
</asp:Login>', N'32c0b6af-19a3-427c-ae9d-a1d5e9511d2a', 525, '100f8305-87b9-4d28-bd8f-08bd1d9497a5', '20120828 14:38:38', NULL)
INSERT INTO [CMS_WebPartLayout] ([WebPartLayoutID], [WebPartLayoutCodeName], [WebPartLayoutDisplayName], [WebPartLayoutDescription], [WebPartLayoutCode], [WebPartLayoutVersionGUID], [WebPartLayoutWebPartID], [WebPartLayoutGUID], [WebPartLayoutLastModified], [WebPartLayoutCSS]) VALUES (483, N'StyleLayout', N'StyleLayout', N'', N'<%@ Control Language="C#" AutoEventWireup="true" Inherits="CMSWebParts_SmartSearch_SearchAccelerator"    CodeFile="~/CMSWebParts/SmartSearch/SearchAccelerator.ascx.cs" %>
<cms:CMSButton runat="server" ID="btnAcc" EnableViewState="false" />', N'982a1e11-10a8-49fa-9e0d-f77af09e0d3d', 691, '144e57e9-9414-4713-96da-48c4e7f8a4f8', '20120828 14:38:39', N'.AcceleratorContent input[type=submit]
{
  width:220px;
}')
SET IDENTITY_INSERT [CMS_WebPartLayout] OFF
