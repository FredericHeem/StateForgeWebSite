<%@ Page Language="C#" MasterPageFile="HelpMain.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="TitleContent">
    State machine timers
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="timers, asynchronous state machine, state machine, state machine features,state machine code generator, state machine compiler, state machine c++, state machine, c++, StateBuilderCpp, state pattern, state machine pattern, state patterns" />
    <meta name="description" content="state machine timers" />
</asp:Content>
<asp:Content ID="HeaderEpilogue" runat="server" ContentPlaceHolderID="HeaderEpilogue">
    <script type="text/javascript" src="/Content/js/syntaxhighlighter/scripts/shCore.js"></script>
    <script type="text/javascript" src="/Content/js/syntaxhighlighter/scripts/shBrushXml.js"></script>
    <link href="/Content/js/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />
    <link href="/Content/js/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        SyntaxHighlighter.all()
    </script>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        State machine timers
    </h2>
    <p>
        Timers can be only used when the state machine is asynchrounous.
    </p>
    <p>
        A timer is a type of event, it is defined by the attribute <span class="code">id</span>
        and <span class="code">name</span>.
    </p>
    <p>
        The <span class="code">id</span> is the id of the event being triggered when the
        timer expired, <span class="code">id</span> is referenced in the attribute <span
            class="code">transition@event</span> .
    </p>
    <p>
        The name is the name of the timer and is being used to start and stop the timer
        with the <span class="code">timerStart</span> and <span class="code">timerStop</span>
        element.
    </p>
    <p>Here is how to define timers:</p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;highlight: 6">
                    <![CDATA[
<eventSource name="Timers">
    <timer id="evTimerOpen" name="TimerOpen" description="opening duration"/>
    <timer id="evTimerClose" name="TimerClose" description="closing duration"/>
</eventSource>
]]></script>
    </p>
    <p>
        This code shows how to start and stop a timer, as well as handle a transition when
        the timer expires:
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;highlight: [4,7,9]">
                    <![CDATA[
<state name="OpenAndWaitForOpened">
    <onEntry>
        <action>doorTester.GetDoor().EvOpen()</action>
        <timerStart timer="TimerOpen" duration="doorTester.GetOpenDuration()"/>
    </onEntry>
    <onExit>
        <timerStop timer="TimerOpen"/>
    </onExit>
    <transition event="evTimerOpen" action="doorTester.GetDoor().EvSensorOpened()"
                nextState="CloseAndWaitForClosed"/>
</state>

]]></script>
    </p>
    <p>
        The duration in milliseconds can be obtained through one of the method of the object
        instance, in this case doorTester.GetOpenDuration(). There is no need to insert
        numerical value inside the state machine description.
    </p>
    <p>
        <span class="code">timerStart</span> and <span class="code">timerStop</span> can
        alo be placed inside a <span class="code">transition</span> element:
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true">
                    <![CDATA[
<transition event="evStart" nextState="Running">
    <timerStart timer="TimerMaxDuration" duration="urlGet.GetMaxDuration()"/>
</transition>
]]></script>
    </p>
</asp:Content>
