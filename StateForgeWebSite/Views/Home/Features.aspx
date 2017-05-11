<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    State machine tools features
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="feature, benefit, state machine, finite state machine, state diagram, fsm, state pattern, code generator, finite automaton, c#, c++, java, state machine diagram, state chart, statechart, asynchronous, domain specific language, modeling language" />
    <meta name="description" content="Features of the state machine generator and state diagram editor" />
</asp:Content>
<asp:Content ID="HeaderEpilogue" runat="server" ContentPlaceHolderID="HeaderEpilogue">
    <script type="text/javascript" src="/Content/js/yui/build/yahoo-dom-event/yahoo-dom-event.js"></script>
    <script type="text/javascript" src="/Content/js/yui/build/element/element-min.js"></script>
    <script type="text/javascript" src="/Content/js/yui/build/tabview/tabview-min.js"></script>
    <link rel="stylesheet" type="text/css" href="/Content/js/yui/build/tabview/assets/skins/sam/tabview.css" />
    <link rel="stylesheet" type="text/css" href="/Content/Features.css" />
    <script type="text/javascript" src="/Content/js/syntaxhighlighter/scripts/shCore.js"></script>
    <script type="text/javascript" src="/Content/js/syntaxhighlighter/scripts/shBrushXml.js"></script>
    <link href="/Content/js/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />
    <link href="/Content/js/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet"
        type="text/css" />
    <script type="text/javascript">
        var myTabs = new YAHOO.widget.TabView("featuresTabView", { orientation: "left" });
    </script>
    <script type="text/javascript">
        SyntaxHighlighter.all()
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        State machine model and code generators features:</h2>
    <div class="yui-skin-sam">
        <div id="featuresTabView" class="yui-navset">
            <ul class="yui-nav">
                <li class="selected"><a href="#tabFsmML"><em>
                    <img alt="FsmML" src="/Content/Images/FsmML_32x32.png" />FSM model</em></a></li>
                <li><a href="#tabHierarchical"><em>
                    <img alt="Hierarchical" src="/Content/Images/Hierarchical_32x32.png" />Hierarchical
                </em></a></li>
                <li><a href="#tabParallel"><em>
                    <img alt="Parallel" src="/Content/Images/Parallel_32x32.png" />Parallel </em></a>
                </li>
                <li><a href="#tabAsynchronous"><em>
                    <img alt="Asynchronous" src="/Content/Images/Asynchronous_32x32.png" />Asynchronous
                </em></a></li>
                <li><a href="#tabTimer"><em>
                    <img class="feature-logo" alt="Timer" src="/Content/Images/Clock_32x32.png" />Timer
                </em></a></li>
                <li><a href="#tabEvent"><em>
                    <img alt="Event" src="/Content/Images/Event_32x32.png" />Event </em></a></li>
                <li><a href="#tabObservable"><em>
                    <img alt="Observable" src="/Content/Images/Eye_32x32.png" />Observable </em></a>
                </li>
                <li><a href="#tabOnEntryExit"><em>
                    <img alt="OnEntryExit" src="/Content/Images/OnEntryExit_32x32.png" />Entry Exit
                </em></a></li>
                <li><a href="#tabHistory"><em>
                    <img alt="History" src="/Content/Images/History_32x32.png" />History </em></a>
                </li>
                <li><a href="#tabBuildToolIntegration"><em>
                    <img alt="History" src="/Content/Images/Build_32x32.png" />Build </em></a></li>
            </ul>
            <div class="yui-content">
                <div id="tabFsmML">
                    <ul>
                        <li>State machines are described in a human readable/writable XML format.</li>
                        <li>The state machine description must follow the W3C schema file <a href="/xsd/StateMachineDotNet-v1.xsd">
                            StateMachineDotNet-v1.xsd</a>, <a href="/xsd/StateMachineCpp-v1.xsd">StateMachineCpp-v1.xsd</a>
                            or <a href="/xsd/StateMachineJava-v1.xsd">StateMachineJava-v1.xsd</a></li>
                        <%--<li>The generated code is an extension of the state pattern.</li>--%>
                        <%--<li>FsmML stands for Finite State Machine Modeling Language.</li>
                        -<li>FsmML can be authored with any text or XML editor.</li>
                        <li>Syntax highlighting provided by XML editors.</li>
                        <li>Code completion also known as Intellisense for maximum productivity.</li>
                        <li>Validation on the fly while writing.</li>--%>
                    </ul>
                    <p>
                        Here is an example of state machine model:</p>
                    <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;">
                    <![CDATA[
<?xml version="1.0" encoding="UTF-8"?>
<sm:StateMachine xmlns:sm="http://www.stateforge.com/StateMachineDotNet-v1"
                 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                 xsi:schemaLocation="http://www.stateforge.com/StateMachineDotNet-v1
                                     http://www.stateforge.com/xsd/StateMachineDotNet-v1.xsd" >

    <!-- general settings -->
    <settings asynchronous="false" namespace="StateForge.Examples.Light">
        <object instance="light" class="ILightActuator"/>
    </settings>
    <!-- events -->
    <events>
        <eventSource name="SwitchEvent" feeder="Light">
            <event id="EvOn"/>
            <event id="EvOff"/>
        </eventSource>
    </events>

    <!-- States -->
    <state name="Root">
        <state name="Off">
            <onEntry action="light.DoOff()"/>
            <transition event="EvOn" nextState="On"/>
        </state>
        <state name="On">
            <onEntry action="light.DoOn()"/>
            <transition event="EvOff" nextState="Off"/>
        </state>
    </state>
</sm:StateMachine>
]]></script>
                </div>
                <div id="tabHierarchical">
                    <ul>
                        <li>Hierarchical state machine allows to group states together</li>
                        <li>States can be represented as a tree.</li>
                        <li>Each state can have any number of child states.</li>
                        <li>Transitions can then be shared among states.</li>
                        <li>Transition duplication can be eliminated.</li>
                        <li>Avoid the "state explosion" problem.</li>
                    </ul>
                    <p>
                        Below is a simplified version of the <a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/java/PelicanCrossing.fsmjava">
                            pelican crossing hierarchical state machine</a></p>
                    <img id="HierarchicalStateMachine" alt="HierarchicalStateMachine" src="/Content/Images/HierarchicalStateMachine.png"
                        title="Pelican crossing hierarchical state machine " />
                </div>
                <div id="tabParallel">
                    <ul>
                        <li>State machine can hold parallel states also known as regions.</li>
                        <li>Multiple sub state machine react to the same set of events.</li>
                        <li>Each sub state machine evolves on its own.</li>
                        <li>Upon entering a parallel state, the sub state machines enter in their initial state.</li>
                        <li>When every states have reached their final state, the parallel state is left.</li>
                        <li>The parallel state is also left when a transition goes to a state outside the parallel
                            state.</li>
                    </ul>
                    <p>
                        Below is a simplified version of the <a href="/StateMachineDiagram/StateMachineDiagram.html?fsmUrl=/examples/dotnet/TestOpenClose01.fsmcs">
                            XMPP login scenario</a></p>
                    <img id="ConcurrentStateMachine" alt="ConcurrentStateMachine" src="/Content/Images/ConcurrentStateMachine.png"
                        title="Simplified concurrent state machine" />
                </div>
                <div id="tabAsynchronous">
                    <ul>
                        <li>State machines can be either synchronous or asynchronous.</li>
                        <li>Asynchrounous state machine have a queue where events are stored, so that feeding
                            the state machine never blocks the calling thread. </li>
                        <li>Events are processed later, by the calling thread or another thread.</li>
                        <li>A clear separation exists between feeding the events and processing the events.</li>
                        <li>Allow interconnected state machines, the action of a state machine becomes an event
                            for the other state machine and vice-versa.</li>
                    </ul>
                </div>
                <div id="tabTimer">
                    <ul>
                        <li>Timers are used for asynchrounous state machine.</li>
                        <li>Each timer have an identifier in order to start and stop it.</li>
                        <li>An event is fired when the timer has expired.</li>
                    </ul>
                </div>
                <div id="tabEvent">
                    <ul>
                        <li>Events are sent to state machines through methods of the <strong>context</strong>
                            generated class.</li>
                        <li>The events method can have any kind and any number of parameters.</li>
                        <li>Every existing class can be an event parameter.</li>
                        <li>Parameters does NOT need to inherit from an "EventBase" class.</li>
                    </ul>
                </div>
                <div id="tabObservable">
                    <ul>
                        <li>Observers can be attached to the state machine to report what is happening.</li>
                        <li>Find out when a state is entered and left.</li>
                        <li>Find out when a transition begins and ends.</li>
                        <li>Debugging becomes much easier through logging.</li>
                        <li>Use the provided observers such as <strong>ObserverConsole</strong> or <strong>ObserverTrace</strong>.</li>
                        <li>User defined observers can be implemented to accomodate existing logging facility.</li>
                    </ul>
                </div>
                <div id="tabOnEntryExit">
                    <ul>
                        <li>States eventually have an <strong>OnEntry</strong> and <strong>OnExit</strong> method.</li>
                        <li><strong>OnEntry</strong> is executed when entering the state.</li>
                        <li><strong>OnExit</strong> is executed when leaving the state.</li>
                        <li>Special handling is done during a transition between states in different postion
                            in the state hierarchy.</li>
                    </ul>
                </div>
                <div id="tabHistory">
                    <ul>
                        <li>History states allows to remember the current child state.</li>
                        <li>Upon entering back to its parent state, the previously saved state is entered.</li>
                    </ul>
                </div>
           <%--     <div id="tabPersistence">
                    <ul>
                        <li>State machines can be serialized to disk and be unserialized from the disk.</li>
                        <li>Serialization and deserialization is also known as peristence</li>
                    </ul>
                </div>--%>
                <div id="tabBuildToolIntegration">
                    <ul>
                        <li><strong>Visual Studio</strong> and <strong>Msbuild</strong> integration for <strong>
                            StateBuilderDotNet</strong>.</li>
                        <li><strong>Maven plugin</strong> and <strong>Ant task</strong> integration for <strong>
                            StateBuilderJava</strong>.</li>
                        <li><strong>Visual Studio</strong>, <strong>Xcode</strong>, <strong>CMake</strong> and
                            <strong>Makefile</strong> integration for <strong>StateBuilderCpp</strong>.</li>
                        <li>Incremental compilation, do not waste time by rebuilding state machine if not necessary.</li>
                        <li>Create new state machine from templates inside <strong>Visual Studio</strong></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
