<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="SiteWebSoloBEAN.WebForm3" MasterPageFile="~/Site2.Master" %>

<asp:Content ContentPlaceHolderID="ConRencontre" runat="server">
<div class="login">
    <div>Vous voulez rencontrer papyrus ???? Choisisez une date !</div>
    <br />
    <asp:Calendar
        id="Calendar1"
        SelectionMode="Day"
        runat="server" />

    <br />
    <br />

    <asp:Button
        ID="choisirdate"
        Text="J'ai Choisi!"
        OnClick="choisirdate_Click"
        runat="server" />

    <asp:bulletedList 
        ID="Results" 
        DataTextFormatString="{0:d}" 
        runat="server"/>
</div>
</asp:Content>
