<%@ Page Language="C#" MasterPageFile="HelpMain.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="TitleContent">
    Concurrent state machine
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="concurrent state machine, parallel state machine, state machine features,state machine code generator, state machine compiler, state machine c++, state machine, c++, StateBuilderCpp, composite state pattern, state machine pattern, state patterns" />
    <meta name="description" content="Concurrent state machine" />
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
        Concurrent state machine
    </h2>
    <p>
        State machine can hold parallel states also known as regions. This feature allows
        multiple sub state machine to react to the same set of events. Each sub state machine
        evolves on its own.</p>
    <p>
        Upon entering a parallel state, the sub state machines enter in their initial state.
    </p>
    <p>
        When all states have reached their final state, the parallel state is left. Another
        way to leave a parallel state is when a transition goes to a state outside the parallel
        state.
    </p>
    <p>
        Here is the UrlGet example where a web page is fetched through HTTP and a file is
        downloaded through FTP.
    </p>
    <p>
            <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;highlight: [2,4,17]">
                    <![CDATA[
<state name="Running">
    <parallel name="Protocols" nextState="End">
        <!-- State Http -->
        <state name="Http">
            <!-- State HttpGet -->
            <state name="HttpGet" description="fetch a web page">
                <onEntry action="urlGet.httpStart()"/>
                <transition event="evHttpDone" nextState="HttpEnd" description="http done"/>
                <transition event="evHttpDoneError" nextState="End" description="http error"/>
            </state>
            <!-- State HttpEnd -->
            <state name="HttpEnd" kind="final"/>
        </state>
        <!-- State Http -->

        <!-- State Ftp -->
        <state name="Ftp">
            <!-- State FtpGet -->
            <state name="FtpGet" description="get a file from Ftp">
                <onEntry action="urlGet.ftpStart()"/>
                <transition event="evFtpDone" nextState="FtpEnd" description="ftp done"/>
                <transition event="evFtpDoneError" nextState="End" description="ftp error"/>
            </state>
            <!-- State FtpEnd -->
            <state name="FtpEnd" kind="final"/>
        </state>
        <!-- State Ftp -->
    </parallel>
</state>
<state name="End" kind="final"/>

]]></script>
    </p>
</asp:Content>
