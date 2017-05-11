<%@ Page Language="C#" MasterPageFile="HelpMain.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="TitleContent">
    Hierarchical state machine
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="hierarchical state machine, flat state machine, state machine, state explosion, state machine code generator" />
    <meta name="description" content="Hierarchical state machine versus flat state machine, how to avoid the state explosion and implement large state machine" />
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
        Hierarchical state machine
    </h2>
    <p>
        Hierarchical state machines allows to group states together inside another state,
        each state can have any number of child states. This implies that states can be
        represented as a tree.
    </p>
    <p>
        The fundamental benefit is that transitions can then be shared among states, transition
        duplication can then be eliminated. The "state explosion" problem can be avoided
        by using hierarchical state machines.
    </p>
    <p>
        Let's have a look at the difference between a flat and a hierarchical state machine:
    </p>
    <h4>
        Flat state machine</h4>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;highlight: [6,10,14]">
                    <![CDATA[
<state name="Top">
    <state name="Idle">
        <transition event="Start" nextState="Running"/>
    </state>
    <state name="Washing">
        <transition event="Stop" nextState="End"/>
        <transition event="WashingDone" nextState="Rinsing"/>
    </state>
    <state name="Rinsing">
        <transition event="Stop" nextState="End"/>
        <transition event="RinsingDone" nextState="Spinning"/>
    </state>
    <state name="Spinning">
        <transition event="Stop" nextState="End"/>
        <transition event="SpinningDone" nextState="End"/>
    </state>
    <state name="End" kind="final"/>
</state>
]]></script>
    </p>
    <p>
        Notice the the transition with the <span class="code">Stop()</span> event in scattered
        around three state <span class="code">Washing</span>, <span class="code">Rinsing</span>
        and <span class="code">Spinning</span>.
    </p>
    <p>
        With a flat state machine, transitions must be added for each state, this leads
        to transition duplication and results in an error prone design.
    </p>
    <h4>
        Hierarchical state machine</h4>
    <p>
        To solve the problem related to flat state machine, let's create a new state called
        <span class="code">Running</span> which will holds the three state <span class="code">
            Washing</span>, <span class="code">Rinsing</span> and <span class="code">Spinning</span>.
        The state <span class="code">Running</span> is called a composite state.
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;;highlight: 6">
                    <![CDATA[
<state name="Top">
    <state name="Idle">
        <transition event="Start" nextState="Running"/>
    </state>
    <state name="Running">
        <transition event="Stop" nextState="End"/>
        <state name="Washing">
            <transition event="WashingDone" nextState="Rinsing"/>
        </state>
        <state name="Rinsing">
            <transition event="RinsingDone" nextState="Spinning"/>
        </state>
        <state name="Spinning">
            <transition event="SpinningDone" nextState="End"/>
        </state>
    </state>
    <state name="End" kind="final"/>
</state>
]]></script>
    </p>
    <p>
        When the event <span class="code">Stop()</span> is received, the machine goes to
        the state <span class="code">End</span> if the current state is either <span class="code">
            Washing</span>, <span class="code">Rinsing</span> or <span class="code">Spinning</span>.
    </p>

    <p> Hierarchical state machine is part of the solution to implement large and maintainable state machines.</p>
</asp:Content>
