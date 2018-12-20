<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="SiteWebSoloBEAN.WebForm5"  MasterPageFile="~/Site2.Master"%>

<asp:Content ContentPlaceHolderID="Visuel" runat="server">
    <asp:ImageButton ID="LienVersYoutube" ImageUrl="~/Cool-dude.png" Width="600px" runat="server" OnClick="LienVersYoutube_Click"/>
    <br />
    <asp:HyperLink
        ID="lienveryoutube"
        runat="server"
        NavigateUrl="https://www.youtube.com/watch?v=mqzBv3FYpr0"
        Text="MEILLEUR CHANSON DE TOUT LES TEMPS !">
    </asp:HyperLink>
    <br />

</asp:Content>
