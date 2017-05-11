<%@ Page Language="C#" MasterPageFile="HelpMain.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="TitleContent">
    State machine transitions
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="transition,event,action, internal transition, self transition,state machine,state machine features,state machine code generator, state machine compiler, state machine c++, state machine, c++, StateBuilderCpp, state pattern, state machine pattern, state patterns" />
    <meta name="description" content="State machine transition" />
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
        State machine transition
    </h2>
    <p>
        A transition represents a change in the state of the machine, it is defined by an
        event id, an eventual condition, an eventual set of actions to perform, and usually
        a next state.
    </p>
    <p>
        Each state can have any number of transitions.
    </p>
    <h3>
        Normal transition</h3>
    <p>
        A normal transition is when the next exists and it is not the current state.</p>
    <p>
        Let's have a look at the traffic light state machine:</p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;highlight : 17">
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
<state name="Yellow">
    <onEntry action="light.TurnOnYellow()">
        <timerStart timer="TimerYellow" duration="light.getYellowDuration()"/>
    </onEntry>
    <onExit  action="light.TurnOffYellow()"/>
    <transition event="EvTimerYellow" nextState="Red"/>
</state>
]]></script>
    </p>
    <p>
        Suppose the current state is <span class="code">Yellow</span> and the event <span
            class="code">EvTimerYellow</span> is triggered. A transition begins from the
        state <span class="code">Yellow</span> to <span class="code">Red</span>:
    </p>
    <ol>
        <li>Set the current state from <span class="code">Yellow</span> to null</li>
        <li>Execute the <span class="code">onExit</span> content of the state <span class="code">
            Yellow</span>, it turns the yellow light off and stop the yellow timer. </li>
        <li>Execute the eventual action content of the transition, in this case, nothing.
        </li>
        <li>Execute the <span class="code">onEntry</span> content of the state <span class="code">
            Red</span>, it turns the red light on and start the red timer. </li>
        <li>Set the current state to the <span class="code">Red</span>. </li>
    </ol>
    <h3>
        Self transition</h3>
    <p>
        An self transition is when the next state is itself, in this case, <span class="code">
            onExit</span> and <span class="code">onEntry</span> are executed.
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;highlight : 12">
                    <![CDATA[
<state name="SendPingAndWaitForReply">
    <onEntry>
        <action>ping.send()</action>
        <timerStart timer="Timer" duration="ping.getTimeout()"/>
    </onEntry>
    <onExit>
        <timerStop timer="Timer"/>
    </onExit>
    <transition event="EvCancel" nextState="End"/>
    <transition event="EvPingReply" condition="ping.getTx() == ping.getCount()" nextState="End"/>
    <transition event="EvTimer" condition="ping.getTx() == ping.getCount()" nextState="End"/>
    <transition event="EvTimer" nextState="SendPingAndWaitForReply" />
</state>
]]></script>
    </p>
    <h3>
        Internal transition</h3>
    <p>
        An internal transition is when the next state is not present, in this case, <span
            class="code">onExit</span> and <span class="code">onEntry</span> are not executed.
    </p>
    <h3>
        Actions</h3>
    <p>
        When present, actions in a transition are executed upon receiving an event. To be
        precise, actions are executed after the <span class="code">onExit</span> but before
        the <span class="code">onEntry</span>
    </p>
    <p>
        Actions can be defined in the <span class="code">action</span> attribute:
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true">
 <![CDATA[
<transition event="EvTimerOpen" action="endpoint.Opened()" nextState="Running"/>
]]></script>
    </p>
    <p>
        Actions can be also defined with an <span class="code">action</span> element:</p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;highlight : 2">
 <![CDATA[
<transition event="EvTimerMaxDuration" nextState="End">
    <action>chatScenario.SetError("Maximum duration expired")</action>
</transition>
]]></script>
    </p>
    <p>
        Furthermore, actions can be defined as a sequence of action elements:
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;highlight : [2,3]">
 <![CDATA[
<transition event="Pippo" nextState="Plutto">
    <action>foo.DoThis()</action>
    <action>foo.DoThat()</action>
</transition>
]]></script>
    </p>
    <h3>
        Condition</h3>
    <p>
        A condition can be added so that the transition is triggered only when the event
        is received and the condition is true.
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;highlight : 3">
                    <![CDATA[
<state name="Alice_Closing" description="Alice is closing">
    <onEntry action="alice.Close()"/>
    <transition event="Closed" condition="jid.User() == alice.Jid().User()" nextState="Alice_End"/>
</state>
]]></script>
    </p>
    <p>
        The condition can also be as an element, this is useful when the condition contains
        character such as the double quote, which cannot be present in an attribute:</p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;highlight : 4">
                    <![CDATA[
<state name="Alice_RegisterNewAccount" description="Alice registers a new account">
    <onEntry action="alice.RegisterNewAccount()"/>
    <transition event="LoggedIn" nextState="Alice_Idle">
        <condition>jid.User() == "Alice"</condition>
    </transition>
</state>

]]></script>
    </p>
    <p>
        In some cases where some symbols such as &amp;, &lt; and &gt; are used, the condition
        must be placed inside CDATA element:
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;highlight : 4">
 <![CDATA[
<state name="Alice_RosterAdd" description="Alice adds bob in roster">
    <onEntry action="alice.RosterAddItem(bob.Jid())"/>
    <transition event="RosterItem" nextState="Alice_Closing">
        <condition>&lt;![CDATA[(jid == alice.Jid()) && (item.Jid() == bob.Jid()))]]&gt;</condition>
    </transition>
</state>
]]></script>
    </p>
    <h3>
        Transition order
    </h3>
    <p>
        Multiple transitions can have the same event, but beware that the transition order
        depends of the condition strength. The transition without guard, if any, must be
        the last one.
    </p>
</asp:Content>
