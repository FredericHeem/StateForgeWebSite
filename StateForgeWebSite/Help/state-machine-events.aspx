<%@ Page Language="C#" MasterPageFile="HelpMain.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="TitleContent">
    State machine events
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="event, transition, internal transition, self transition, state machine,state machine features,state machine code generator, state machine compiler, state machine c++, state machine, c++, StateBuilderCpp, state pattern, state machine pattern, state patterns" />
    <meta name="description" content="State machine events" />
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
        State machine events
    </h2>
    <p>
        Events are sent to state machine through methods of the context generated class.</p>
    <p>
        The events methods can have any kind and any number of parameters.
    </p>
    <p>
        Each parameter have a name and a type.
    </p>
    <p>
        Every existing class can be an event parameter, parameters do NOT need to inherit
        from an "EventBase" class.
    </p>
    <p>
        Events can be declared either inside or outside the state machine description.</p>
    <h3>
        Internally declared events</h3>
    <p>
        Here is the example of internally declared events with external class as event parameter
    </p>
    <p>
        The <span class="code">AcsConnection</span> class present in <span class="code">AcsConnection.h</span>
        is included with the <span class="code">include</span> element.
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true">
                    <![CDATA[
<!-- general settings -->
<settings asynchronous="true">
    <object instance="request" class="AcsRequestRebootPrivate" include="AcsRequestRebootPrivate.h"/>
    <include>AcsConnection.h</include>
</settings>

<!-- events -->
<events>
    <!-- Management Events -->
    <eventSource name="ManagementEvent">
        <event id="evStart">
            <parameter type="AcsConnection" name="connection" passedBy="reference"/>
        </event>
        <event id="evClose"/>
    </eventSource>
    <!-- Sockets Events -->
    <eventSource name="SocketEvent">
        <event id="evSocketError"/>
    </eventSource>
    <!-- Acs client Events -->
    <eventSource name="AcsClientEvent">
        <event id="evInformRequest"/>
        <event id="evRebootResponse"/>
        <event id="evHttpPost"/>
        <event id="evSent"/>
        <event id="evUnknownRequest"/>
    </eventSource>
</events>
]]></script>
    </p>
    <h3>
        Externally declared events</h3>
    <p>
        When the event list is shared among many state machines, including the same set
        of events in each state machine would be a maintenance nightmare. The list of events
        can be imported from an external file thanks the XInclude technology
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;highlight:2">
                    <![CDATA[
<events>
    <include xmlns="http://www.w3.org/2001/XInclude" href="eventProvider.xml"/>
    <eventSource name="Timer">
        <timer id="EvTimerMaxDuration" name="TimerMaxDuration"/>
    </eventSource>
</events>
]]></script>
    </p>
</asp:Content>
