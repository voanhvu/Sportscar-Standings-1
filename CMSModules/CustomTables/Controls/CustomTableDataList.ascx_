<%@ Control Language="C#" AutoEventWireup="true" Inherits="CMSModules_CustomTables_Controls_CustomTableDataList"
    CodeFile="CustomTableDataList.ascx.cs" %>
<%@ Register Src="~/CMSAdminControls/UI/UniGrid/UniGrid.ascx" TagName="UniGrid" TagPrefix="cms" %>
<cms:MessagesPlaceHolder ID="plcMess" runat="server" />
<p>
<asp:TextBox ID="TextBoxSearch" runat="server"></asp:TextBox> <asp:Button ID="ButtonSearch" runat="server" Text="Search" OnClick="ButtonSearch_Click" />
</p>
<cms:UniGrid runat="server" ID="gridData" GridName="~/CMSModules/CustomTables/Controls/CustomTableDataList.xml"
    IsLiveSite="false" />
<asp:Literal ID="ltlScript" runat="server" />