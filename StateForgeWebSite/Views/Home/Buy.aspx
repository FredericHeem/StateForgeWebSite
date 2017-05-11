<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Buy the state machine code generators - StateForge
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="license, buy, state machine, finite state machine, state diagram, fsm, state pattern, code generator, state machine diagram, state chart, statechart" />
    <meta name="description" content="Buy the state machine code generators for C#, Java and C++: StateBuilderDotNet, StateBuilderJava and StateBuilderCpp" />
</asp:Content>
<asp:Content ID="HeaderEpilogue" runat="server" ContentPlaceHolderID="HeaderEpilogue">
    <link href="/Content/Buy.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <div id="BuyMainContent">
        <h2>
            Acquire a license</h2>
        <div id="BuyColumnLeft">
            <p>
                You can use StateForge products for free during a 30-days trial period. If you value
                our software and you would like to use it after the trial period, you need to acquire
                a registration key to unlock the software.</p>
            <table border="1" id="BuyTable">
                <thead>
                    <tr>
                        <th>
                            Product
                        </th>
                        <th>
                            Price
                        </th>
                        <th>
                            Link
                        </th>
                    </tr>
                </thead>
                <tr>
                    <td>
                        <strong>StateBuilder for C# and VB.net</strong>
                    </td>
                    <td>
                        99€
                    </td>
                    <td>
                        <a class="BuyLink" href="https://secure.avangate.com/order/checkout.php?PRODS=4543412&QTY=1&CART=1&CARD=1"
                            onclick="pageTracker._link(this.href); return false;">Buy Now </a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>StateBuilder for Java</strong>
                    </td>
                    <td>
                        99€
                    </td>
                    <td>
                        <a class="BuyLink" href="https://secure.avangate.com/order/checkout.php?PRODS=4596421&QTY=1&CART=1&CARD=1"
                            onclick="pageTracker._link(this.href); return false;">Buy Now </a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>StateBuilder for C++</strong>
                    </td>
                    <td>
                        99€
                    </td>
                    <td>
                        <a class="BuyLink" href="https://secure.avangate.com/order/checkout.php?PRODS=4596422&QTY=1&CART=1&CARD=1"
                            onclick="pageTracker._link(this.href); return false;">Buy Now </a>
                    </td>
                </tr>
            </table>

            <p>
                The Payment process is handled by <a target="_blank" href="http://www.avangate.com">
                    Avangate</a>, a major e-commerce platform provider.
            </p>
            <p>
                When the checkout is finished, an email will be sent to you contaning the registration
                key needed to unlock the trial version.
            </p>
            
            <p>Send an email to <a href="mailto:frederic.heem@stateforge.com">frederic.heem@stateforge.com</a> for any information. </p>
            <h4>
                Benefits of acquiring a license:
            </h4>
            <ul>
                <li>1 year technical support. </li>
                <li>1 year free minor and major upgrades.</li>
            </ul>
            <h4>
                Details about the license:
            </h4>
            <ul>
                <li>A license is per user, so that one user can use it on multiple computers.</li>
                <li>A license gives you the right to use the software in your continious integration
                    workflow.</li>
            </ul>
        </div>
        <div id="BuyColumnRight">
            <div>
                <%--<img alt="Avangate" src="../../Content/Images/avangate_sm.gif" />--%>
            </div>
        </div>
    </div>

</asp:Content>
