<%@ Page Language="C#" MasterPageFile="HelpMain.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="TitleContent">
    Asynchronous state machine
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="asynchronous state machine,synchronous state machine,state machine features,state machine code generator, state machine compiler, state machine c++, state machine, c++, StateBuilderCpp, state pattern, state machine pattern, state patterns" />
    <meta name="description" content="Synchronous and asynchronous state machine" />
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
        Asynchronous state machine
    </h2>
    <p>
        State machine can be either synchronous or asynchronous.
    </p>
    <p>
        Asynchronous state machine have a queue where events are stored, so that feeding
        the state machine never blocks the calling thread. Events are processed later, by
        the same or another thread, depending on the implementation. At any given time,
        there is only one thread processing the event queue. A clear separation exists between
        feeding the events and processing the events.
    </p>
    <h4>
        When to use an asynchronous state machine ?</h4>
    <p>
        A program is usually made of several state machines interconnected, the action of
        a state machine becomes an event for the other state machine and vice-versa. In
        this situation, state machines must be asynchronous.
    </p>
    <h4>
        How to specify an asynchronous state machine ?</h4>
    <p>
        The attribute <span class="code">asynchronous</span> controls whether the state
        machine is asynchronous or synchronous
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;;highlight: 6">
                    <![CDATA[
    <settings asynchronous="false" namespace="StateForge.Examples.Light">
        <object instance="light" class="ILightActuator"/>
    </settings>
]]></script>
    </p>
    <p>
        Asynchronous c++ state machine depends on third party library which provides an event
        loop and timer classes, the attribute <span class="code">library</span> can be either
        <span class="code">qt</span>, <span class="code">boost</span> or <span class="code">
            libev</span>
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;;highlight: 6">
                    <![CDATA[
  <settings asynchronous="true" library="qt">
    <description>Login Model View Controller</description>
    <object instance="loginMvc" class="LoginMvc" include="LoginMvc.h"/>
    <object instance="view" class="MyView" include="LoginMvc.h"/>
  </settings>
]]></script>
    </p>
    <h4>
        Synchronous versus asynchronous context</h4>
    <p>
        Synchronous context has public synchronous methods which correspond to the events
        that can be received.
    </p>
    <p>
        Asynchronous context has public asynchronous methods and private synchronous methods
        with the suffix "Sync" for each event.
    </p>
    <p>
        From the outside, synchronous and asynchronous context have the same API.</p>
    <img src="/Content/Images/SynchronousAsynchronousContext.png" alt="synchronous and asynchronous context" />
</asp:Content>
