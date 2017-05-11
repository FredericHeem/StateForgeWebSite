<%@ Page Language="C#" MasterPageFile="HelpMain.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="TitleContent">
    State entry exit
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="entry, exit, state machine,state machine features,state machine code generator, state machine compiler, state pattern, state machine pattern, state patterns" />
    <meta name="description" content="state machine entry and exit" />
</asp:Content>
<asp:Content ID="HeaderEpilogue" runat="server" ContentPlaceHolderID="HeaderEpilogue">
    <script type="text/javascript" src="/Content/js/syntaxhighlighter/scripts/shCore.js"></script>
    <script type="text/javascript" src="/Content/js/syntaxhighlighter/scripts/shBrushXml.js"></script>
    <link href="/Content/js/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />
    <link href="/Content/js/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet"
        type="text/css" />
    <script type="text/javascript">
        SyntaxHighlighter.all()
    </script>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        State entry exit
    </h2>
    <p>
        Some actions may have to be executed when a state is entered and left. The element
        <span class="code">onEntry</span> and <span class="code">onExit</span> holds the
        actions to performs. Usually, actions done upon entering and actions done when leaving
        are opposite: start and stop a timer, open and close a database etc ...
    </p>
    <p>
        In the UrlGet example, <span class="code">urlGet.httpStart()</span> is called when
        entering the state <span class="code">HttpGet</span>.
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;highlight : 2">
                    <![CDATA[
<state name="HttpGet" description="fetch a web page">
    <onEntry action="urlGet.httpStart()"/>
    <transition event="evHttpDone" nextState="HttpEnd" description="http done"/>
    <transition event="evHttpDoneError" nextState="End" description="http error"/>
</state>
]]></script>
    </p>
    <p>
        In the TrafficLight example, <span class="code">light.TurnOnRed()</span> is called
        and the timer <span class="code">TimerRed</span> is started when entering the state
        <span class="code">Red</span>. <span class="code">light.TurnOffRed()</span> is called
        and the timer <span class="code">TimerRed</span> is stopped when leaving this state.
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;">
                    <![CDATA[
<state name="Red">
    <onEntry>
        <action>light.TurnOnRed()</action>
        <timerStart timer="TimerRed" duration="light.getRedDuration()"/>
    </onEntry>
    <onExit>
        <action>light.TurnOffRed()</action>
        <timerStop timer="TimerRed"/>
    </onExit>
    <transition event="EvTimerRed" nextState="Green"/>
</state>

]]></script>
    </p>
    
</asp:Content>
