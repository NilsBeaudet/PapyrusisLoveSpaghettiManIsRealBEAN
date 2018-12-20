﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="SiteWebSoloBEAN.WebForm4"  MasterPageFile="~/Site2.Master"%>

<asp:content ContentPlaceHolderID="Donnée" runat="server">
    Voici les films préféré a papyrus, vous pouvez l'aider a arranger sa liste !
    <div>
    <asp:GridView pagesize="3" allowpaging="True" onpageindexchanging="grdMovies_PageIndexChanging" 
        id="grdMovies"
        DataSourceID="SqlDataSource"
        AutoGenerateEditButton="True"
        AutoGenerateDeleteButton="True"
        Runat="server" AutoGenerateColumns="False" DataKeyNames="Id" >
        <Columns>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Director" HeaderText="Director" SortExpression="Director" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Title], [Director], [Id] FROM [Movies]" DeleteCommand="DELETE FROM [Movies] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Movies] ([Title], [Director]) VALUES (@Title, @Director)" UpdateCommand="UPDATE [Movies] SET [Title] = @Title, [Director] = @Director WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Director" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Director" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:Label ID="lb1" Text="film: " runat="server" />
        <asp:TextBox ID="tb1" runat="server" />
        <br />
        <asp:Label ID="lb2" Text="directeur: " runat="server" />
        <asp:TextBox ID="tb2" runat="server" />

        <asp:button runat="server" ID="AAAAAAAAAAAA" OnClick="AAAAAAAAAAAA_Click" text="Ajouter"/>
    
    
    </div>


</asp:content>