<%@ Page Language="C#" MasterPageFile="HelpDotNet.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="TitleContent">
    state machine observer in C#
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="state machine observer, observer pattern, state machine features,state machine code generator, state machine compiler, state machine c#, state machine, c#, StateBuilderDotNet, state pattern, state machine pattern, state patterns" />
    <meta name="description" content="State machine observer in C#" />
</asp:Content>
<asp:Content ID="HeaderEpilogue" runat="server" ContentPlaceHolderID="HeaderEpilogue">
    <script type="text/javascript" src="/Content/js/syntaxhighlighter/scripts/shCore.js"></script>
    <script type="text/javascript" src="/Content/js/syntaxhighlighter/scripts/shBrushXml.js"></script>
    <script type="text/javascript" src="/Content/js/syntaxhighlighter/scripts/shBrushCSharp.js"></script>
    <link href="/Content/js/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />
    <link href="/Content/js/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        SyntaxHighlighter.all()
    </script>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        State machine observer in C#
    </h2>
    <p>
        Some observers are already written and are part of the <span class="code">StateForge.StateMachine</span>
        library.
    </p>
    <h3>
        ObserverConsole</h3>
    <p>
        The most basic observer is the console observer <span class="code">ObserverConsole</span>
        which logs all messages to the standard output.
    </p>
    <p>
        Here is how to use the <span class="code">ObserverConsole</span> singleton class:
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: c#;gutter: false;toolbar: true;highlight : 4">
                    <![CDATA[
public HelloWorld()
{
    this.context = new HelloWorldContext(this);
    this.context.Observer = ObserverConsole.Instance;
}
]]></script>
    </p>
    <h3>
        ObserverTrace</h3>
    <p>
        A powerful observer is <span class="code">ObserverTrace</span> which uses the <span
            class="code">System.Diagnostics.Trace</span> class. it logs messages according
        to its configuratinon file. Messages can be sent to according to their level and
        towards many kind of destination: console, file, database etc ...
    </p>
        <p>
        <script type="syntaxhighlighter" class="brush: c#;gutter: false;toolbar: true;highlight : 5">
                    <![CDATA[
public TrafficLight()
{
    this.light = new Light();
    this.context = new TrafficLightContext(light);
    this.context.Observer = ObserverTrace.Instance("TrafficLight");
    this.context.EndHandler += new EndEventHandler(StateMachineEnd);
    this.context.EnterInitialState();
}
]]></script>
    </p>
</asp:Content>
