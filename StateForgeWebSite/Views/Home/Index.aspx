<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    State machine generator &amp; state diagram editor - StateForge
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="state machine, finite state machine, state diagram, fsm, state pattern, code generator, finite automaton, c#, c++, java, hierarchical state machine, state machine pattern, state machine diagram, concurrent state machine, parallel state machine, state chart, statechart, asynchronous, domain specific language, modeling language" />
    <meta name="description" content="StateForge develops state machine code generators for C#, C++ and Java as well as a state diagram editor." />
</asp:Content>
<asp:Content ID="HeaderEpilogue" runat="server" ContentPlaceHolderID="HeaderEpilogue">
    <link href="/Content/Main.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="/Content/js/jcarousel/skins/tango/skin.css" />
    <script type="text/javascript" src="/Content/js/jquery-ui/js/jquery-1.6.2.min.js"></script>
    <script type="text/javascript" src="/Content/js/jcarousel/lib/jquery.jcarousel.min.js"></script>
    <script type="text/javascript" src="../../StateMachineDiagram/StateMachineExamples.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="MainContent">
        <div id="Products">
            <div id="StateMachineTools">
                <img alt="StateMachineTools" src="/Content/Images/StateMachineTools.png" />
            </div>
            <div id="CodeGenerator">
                <strong>State machine code generators: </strong>
                <ul>
                    <li>Tranform a <strong>state machine</strong> description into <strong>C#</strong>,
                        <strong>Java</strong> or <strong>C++</strong> source code.</li>
                    <li><strong>UML</strong> semantics: hierarchical, concurrent, asynchronous, entry/exit
                        and history state.</li>
                    <li>An extended version of <strong>state pattern</strong> is generated.</li>
                    <li><a href="/Home/Download">Download the state machine code generators</a></li>
                    <li><a href="/Home/Features">Learn more </a>and have a look at the <a href="/StateMachineDiagram/StateMachineDiagram.html">
                        state machine examples</a></li>
                </ul>
            </div>
            <div id="StateMachineDiagram">
                <strong>State machine diagram editor:</strong>
                <ul>
                    <li>Edit <strong>state machine diagram</strong> graphically.</li>
                    <li>Automatic layout - no time wasted to make the state diagram "pretty".</li>
                    <li>Web based and desktop application.</li>
                    <li>Free to use.</li>
                    <li><a href="/StateMachineDiagram/StateMachineDiagram.html">Design state machine diagram
                        online here</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div id="examplesCarousel" class="jcarousel-skin-tango">
        <div class="jcarousel-container">
            <div class="jcarousel-clip">
                <ul class="jcarousel-list">
                </ul>
            </div>
            
        </div>
    </div>
    <div id="examples">
        <p>
            <strong>Examples:</strong> Click on a finite state machine to show its state diagram
            and its xml model:</p>
        <table id="examplesTable">
           <%-- <thead>
                <tr>
                    <th>
                        C#
                    </th>
                    <th>
                        C++
                    </th>
                    <th>
                        Java
                    </th>
                </tr>
            </thead>--%>
            <tbody>
                <tr>
                    <td>
                        <ul id="examplesDotNetUL">
                            <li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/dotnet/Light.fsmcs">
                                Light</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/dotnet/Led.fsmcs">
                                    Led</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/dotnet/Turnstile.fsmcs">
                                        Turnstile</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/dotnet/TrafficLight.fsmcs">
                                            TrafficLight</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/dotnet/Ping.fsmcs">
                                                Ping</a></li></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/dotnet/BookingProcess.fsmcs">
                                                BookingProcess</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/dotnet/Microwave.fsmcs">
                                                    Microwave</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/dotnet/WashingMachine.fsmcs">
                                                        WashingMachine</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/dotnet/Seminar.fsmcs">
                                                            Seminar</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/dotnet/Door.fsmcs">
                                                                Door</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/dotnet/DoorTest01.fsmcs">
                                                                    DoorTest01</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/dotnet/DoorTest02.fsmcs">
                                                                        DoorTest02</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/dotnet/TestChat01.fsmcs">
                                                                            TestChat01</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/dotnet/TestLogin02.fsmcs">
                                                                                TestLogin02</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/dotnet/TestRegisterNewAccount.fsmcs">
                                                                                    TestRegisterNewAccount</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/dotnet/TestOpenClose01.fsmcs">
                                                                                        TestOpenClose01</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/dotnet/TestOpenClose02.fsmcs">
                                                                                            TestOpenClose02</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/dotnet/TestRosterAdd.fsmcs">
                                                                                                TestRosterAdd</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/dotnet/TestRosterAddRemove.fsmcs">
                                                                                                    TestRosterAddRemove</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/dotnet/TestSubscription01.fsmcs">
                                                                                                        TestSubscription01</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/dotnet/TestUnSubscribe.fsmcs">
                                                                                                            TestUnSubscribe</a></li></ul>
                    </td>
                    <td>
                        <ul id="examplesCppUL">
                            <li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/cpp/HelloWorld.fsmcpp">
                                HelloWorld</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/cpp/Led.fsmcpp">
                                    Led</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/cpp/Light.fsmcpp">
                                        Light</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/cpp/Ping.fsmcpp">
                                            Ping</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/cpp/Door.fsmcpp">
                                                Door</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/cpp/DoorTester.fsmcpp">
                                                    DoorTester</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/cpp/TrafficLight.fsmcpp">
                                                        TrafficLight</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/cpp/WashingMachine.fsmcpp">
                                                            WashingMachine</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/cpp/Microwave.fsmcpp">
                                                                Microwave</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/cpp/Microwave02.fsmcpp">
                                                                    Microwave02</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/cpp/LoginMvc.fsmcpp">
                                                                        LoginMvc</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/cpp/Robot.fsmcpp">
                                                                            Robot</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/cpp/UrlGet.fsmcpp">
                                                                                UrlGet</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/cpp/Samek.fsmcpp">
                                                                                    Samek</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/cpp/Tr69Connection.fsmcpp">
                                                                                        Tr69Connection</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/cpp/Tr69ConnectionRequestResponder.fsmcpp">
                                                                                            Tr69ConnectionRequestResponder</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/cpp/Tr69ConnectionRequestServer.fsmcpp">
                                                                                                Tr69ConnectionRequestServer</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/cpp/AcsClient.fsmcpp">
                                                                                                    AcsClient</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/cpp/AcsConnection.fsmcpp">
                                                                                                        AcsConnection</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/cpp/AcsRequestDownload.fsmcpp">
                                                                                                            AcsRequestDownload</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/cpp/AcsRequestReboot.fsmcpp">
                                                                                                                AcsRequestReboot</a></li></ul>
                    </td>
                    <td>
                        <ul id="examplesJavaUL">
                        <li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/java/RippleWsClient.fsmjava">
                                RippleWsClient</a></li>
                                <li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/java/FeedFetcher.fsmjava">
                                FeedFetcher</a></li>

                            <li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/java/HelloWorld.fsmjava">
                                HelloWorld</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/java/Led.fsmjava">
                                    Led</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/java/Microwave.fsmjava">
                                        Microwave</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/java/Ping.fsmjava">
                                            Ping</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/java/TrafficLight.fsmjava">
                                                TrafficLight</a></li><li><a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/java/PelicanCrossing.fsmjava">
                                                    PelicanCrossing</a></li></ul>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>
