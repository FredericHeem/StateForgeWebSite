<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Licence - StateForge
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="open source, free, license, buy, state machine, finite state machine, state diagram, fsm, state pattern, code generator, state machine diagram, state chart, statechart" />
    <meta name="description" content="Buy the state machine code generators for C#, Java and C++: StateBuilderDotNet, StateBuilderJava and StateBuilderCpp" />
</asp:Content>
<asp:Content ID="HeaderEpilogue" runat="server" ContentPlaceHolderID="HeaderEpilogue">
    <link href="/Content/Buy.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="BuyMainContent">
        <h1 id="stateforge-licensing">
            <em>StateForge</em> Licensing</h1>
        <p>
            <em>StateForge</em> is released under a dual license model. Designed to meet the
            requirements of different users and their needs for distribution and usage we offer
            <em>StateForge</em> under two flexible licenses. Whichever license model you choose,
            we are here to support you in your projects.</p>
        <h1 id="stateforge-for-open-source-projects">
            <em>StateForge</em> for open source projects</h1>
        <p>
            If you are developing and distributing Open Source applications under the <a href="http://www.gnu.org/licenses/agpl-3.0.en.html">
                GNU Affero General Public License (AGPL)</a>, or the <a href="http://www.gnu.org/licenses/gpl-3.0.en.html">
                    GNU General Public License (GPL)</a> then you are free to use <em>StateForge</em>
            under the GNU AGPL License, version 3. The formal terms of the AGPL can be found
            on the GNU website. Any software that uses code under a AGPL is itself subject to
            the same AGPL licensing terms.</p>
        <p>
            AGPL is just like GPL, but more onerous. The GPL obligates you to distribute your
            own precious source code if you distribute binaries that use <em>StateForge</em>.
            The AGPL goes further, obligating you to make available to everyone your source
            code if you are using it on a network server for Software-as-a-Service (SaaS) or
            as an Application Service Provider (ASP). For example, if you are running <em>StateForge</em>
            on your server, to provide a SaaS services, you would have to give away all of your
            source code.</p>
        <p>
            <strong>Under the AGPL, you must release the complete source code for the application
                that is built with <em>StateForge</em>, even if that application is running on a
                network server for SaaS purposes.</strong></p>
        <p>
            For licensing <em>StateForge</em> under alternate terms, so that you can use it
            without your own product becoming infected with the obligations of the AGPL, you
            should contact us to purchase a commercial license. We are also able to provide
            <em>StateForge</em> under the AGPLv3 license with a FLOSS exception.</p>
        <p>
            When in doubt, keep this principle in mind: Unless you want to have all of the software
            you write be freely available to everyone, you should consider a commercial license.
            Further, if our software makes money for you, we would like to be paid too. Hence,
            our commercial license.</p>
        <h1 id="stateforge-for-commercial-projects">
            <em>StateForge</em> for commercial projects</h1>
        <p>
            If you do not license the source code under the AGPL or GPL-compatible, but still
            like to include <em>StateForge</em> in your projects then we are able to provide
            you with a flexible commercial license.</p>
        <p>
            The Commercial License is an agreement with <em>StateForge</em> for organizations
            that do not want to release their application source code. Commercially licensed
            customers get a commercially supported product with assurances from <em>StateForge</em>.
            Commercially licensed users are also free from the requirement of making their own
            application Open Source.</p>
        <p>
            Here are some typical examples for a commercial distribution:</p>
        <ul>
            <li>Selling software that includes <em>StateForge</em> to customers who install the
                software on their own machines</li>
            <li>Selling software that requires customers to install <em>StateForge</em> on their
                own machines</li>
            <li>Building a hardware system that includes <em>StateForge</em> and selling that hardware
                system to customers for installation at their own locations.</li>
        </ul>
        <p>
            Specifically:</p>
        <ul>
            <li>
                <p>
                    If you include <em>StateForge</em> with an application that is not licensed under
                    the AGPL or GPL-compatible license, you need a commercial license for using <em>StateForge</em>.</p>
            </li>
            <li>
                <p>
                    If you develop and distribute a commercial application and as part of utilizing
                    your application, the end-user must download a copy of <em>StateForge</em>; for
                    each derivative work, you (or, in some cases, your end-user) need a commercial license
                    for <em>StateForge</em>.</p>
            </li>
        </ul>
        <p>
            AGPL users have no direct legal relationship with <em>StateForge</em>. The commercial
            license, on the other hand, is private license by <em>StateForge</em>, and provides
            a direct legal relationship with <em>StateForge</em>.</p>

        <p><a class="BuyLink" href="https://secure.avangate.com/order/checkout.php?PRODS=4602786&QTY=1&CART=1"
                            onclick="pageTracker._link(this.href); return false;">Buy Now for 499€</a></p>
        <h1 id="recommendations">
            Recommendations</h1>
        <ul>
            <li>To all commercial and government organizations, we recommend the commercial license.
                This frees you from the broad and strict requirements of the AGPL license.</li>
            <li>To all free software enthusiasts we recommend the AGPL license.</li>
            <li>To anyone in doubt, we recommend the commercial license.</li>
        </ul>
    </div>
</asp:Content>
