<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    StateBuilderDotNet has just been installed.
</asp:Content>
<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        <strong>StateBuilderDotNet</strong> has just been installed.</h2>
        <h3>What's next ?</h3>
        <p>
        To get started, we suggest to build and modify the examples with <em>Visual Studio</em>. 
        </p>
    <p>
        Explore the <a href="/Help/state-machine-tools.aspx">documentation</a> and the <a href="/Home/Faq">F.A.Q</a></p>
    <p>
        Questions ? Suggestions ? <a href="/Home/About">Let us know</a>.
    </p>
</asp:Content>
