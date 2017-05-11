<%@ Page Language="C#" MasterPageFile="HelpMain.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="TitleContent">
    State machine tools: code generator &amp; state diagram editor
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="state machine code generator, state machine compiler, state machine java, state machine c++, state machine dotnet, state machine c#, state machine, c++, c#, dotnet, java, state pattern, state machine pattern, state patterns, StateBuilderCpp, StateBuilderDotNet, StateBuilderJava" />
    <meta name="description" content="State machine tools: state machine code generator for C#, C++ and Java - state diagram editor" />
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="MainContent">
    <script type="text/javascript" src="/Content/js/jquery.fancybox-1.3.4/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
    <link rel="stylesheet" type="text/css" href="/Content/js/jquery.fancybox-1.3.4/fancybox/jquery.fancybox-1.3.4.css"
        media="screen" />
    <script type="text/javascript">
        $(document).ready(function () {
            $("a#StateDiagramEditorPng").fancybox();
        });
    </script>
    <h2>
        State machine code generator &amp; state diagram editor
    </h2>
    <h3>
        State machine code generator</h3>
    <p>
        <a href="StateBuilderCpp/statebuildercpp-state-machine-generator.aspx">StateBuilderCpp</a>,
        <a href="StateBuilderDotNet/statebuilderdotnet-state-machine-generator.aspx">StateBuilderDotNet</a>
        and <a href="StateBuilderJava/statebuilderjava-state-machine-generator.aspx">StateBuilderJava</a>
        are state machine code generators, they transforms a <em>state machine description</em>
        into an extended version of the <em>state pattern</em> respectively in C++, C# and
        Java.
    </p>
    <p>
        The state machine description, also known as state machine model, is written in
        a simple XML format, that is both human readable and writable.</p>
    <h3>
        State diagram editor</h3>
    <p>
        The state diagram editor helps to visualize and edit a state machine description,
        the same used by the state machine code generators.
    </p>
    <p>
        Unlike traditional UML state diagram tools, the layout is done automatically, there
        is no need to place and move states.
    </p>
    <p>
        Transitions are not represented by an array, but by a table, this allows to optimize
        the space on the diagram. Complex state machine can be easily displayed.</p>
    <p>
        Try the <a href="/StateMachineDiagram/StateMachineDiagram.html">state diagram editor
            online edition</a> or <a href="/Home/Download">download</a> the desktop application
        bundled with the state machine code generators</p>
    <a id="StateDiagramEditorPng" href="/Content/Images/StateDiagramEditor.PNG">
        <img style="display: block; margin-left: auto; margin-right: auto" src="/Content/Images/StateDiagramEditor.PNG"
            alt="State Diagram Editor screenshoot" height="400" width="640" /></a>
</asp:Content>
