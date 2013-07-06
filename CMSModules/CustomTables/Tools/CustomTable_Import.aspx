<%@ Page Language="C#" AutoEventWireup="true" Inherits="CMSModules_CustomTables_Tools_CustomTable_Import"
    Theme="Default" MasterPageFile="~/CMSMasterPages/UI/SimplePage.master" Title="Custom Tables List"
    CodeFile="CustomTable_Import.aspx.cs" %>
<%@ Register Src="~/CMSAdminControls/UI/UniGrid/UniGrid.ascx" TagName="UniGrid" TagPrefix="cms" %>


<asp:Content ID="cntBody" runat="server" ContentPlaceHolderID="plcContent">
    <cms:UniGrid runat="server" ID="uniGrid" GridName="CustomTable_List.xml" OrderBy="ClassDisplayName"
        IsLiveSite="false" ShowObjectMenu="false" Visible="False" />
    <p>
     <asp:Label ID="Label1" runat="server" Text="Table name" Width="65"></asp:Label> :
    <asp:DropDownList ID="DropDownListTable" runat="server" Width="150"></asp:DropDownList>
    </p>
   <cms:CMSUpdateProgress ID="loading" runat="server" HandlePostback="true" EnableViewState="false" />
    <cms:CMSUpdatePanel ID="pnlUpdate" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:Label ID="Label2" runat="server" Text="Excel file" Width="65"></asp:Label>
            :
        <cms:CMSTextBox ID="txtPath" runat="server" MaxLength="200" CssClass="SelectorTextBox" />
            <cms:CMSButton        ID="btnSelectPath" runat="server" CssClass="ContentButton" EnableViewState="false" />
            <p>
                <asp:Button ID="ButtonGet" runat="server" Text="Preview Data" OnClick="ButtonGet_Click" />
            </p>
            <p>

                <asp:Button ID="ButtonExport" runat="server" Text="Import New Cars" OnClick="ButtonGetColumn_Click" />

                
            </p>
            <p> 
			<asp:RadioButton ID="RadioButtonKeep" runat="server" Text="Keep existing cars and add new cars from selected excel file" GroupName="importrule" Checked="True"></asp:RadioButton><br>
                <asp:RadioButton ID="RadioButtonAll" runat="server" Text="Replace all current cars" GroupName="importrule" ></asp:RadioButton>
                
            </p>
            <p>
               <div class="import_Loading" style="display: none;" ><img src='/CMSPages/GetResource.ashx?image=%5bImages.zip%5d%2fDesign%2fPreloaders%2fpreload16.gif' alt='Cars are being imported. It might take few minutes....'><span style='padding-left:5px;'>Cars are being imported. It might take few minutes....</span></div>
             </p>
            <asp:MultiView runat="server" ID="MultiView1">
                <asp:View runat="server" ID="view_column">

                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                </asp:View>
            </asp:MultiView>

        </ContentTemplate>
    </cms:CMSUpdatePanel>
   
</asp:Content>
