<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    StateBuilderDotNet has just been uninstalled.
</asp:Content>
<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        StateBuilderDotNet has just been uninstalled.</h2>
    <p>
        Questions ? Suggestions ? <a href="/Home/About">Let us know</a>.
    </p>
</asp:Content>
