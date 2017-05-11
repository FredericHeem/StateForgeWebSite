<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    StateForge - About
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="StateForge, state machine, state diagram, state pattern, StatBuilderCpp, StateBuilderDotNet, StateBuilderCpp" />
    <meta name="description" content="Information about StateForge." />
</asp:Content>
<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        About StateForge</h2>
    <p>
        StateForge software are developed and published by :</p>
    <p>
        Frederic Heem<br />
        via L.B Alberti, 1<br />
        31100 Treviso<br />
        Italy<br />
        <a href="mailto:frederic.heem@stateforge.com">frederic.heem@stateforge.com</a>
    </p>
    <p>
        You can also contact the author via Skype:
        <!--
Skype 'My status' button
http://www.skype.com/go/skypebuttons
-->
        <script type="text/javascript" src="http://download.skype.com/share/skypebuttons/js/skypeCheck.js"></script>
        <a href="skype:stateforge?chat">
            <img src="http://mystatus.skype.com/smallclassic/stateforge" style="border: none;"
                alt="My status" /></a>
    </p>
</asp:Content>
