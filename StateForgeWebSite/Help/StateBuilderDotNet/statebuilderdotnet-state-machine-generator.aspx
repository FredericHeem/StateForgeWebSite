<%@ Page Language="C#" MasterPageFile="HelpDotNet.master" AutoEventWireup="true" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="TitleContent">
    StateBuilderDotNet - state machine code generator for C# and VB.NET
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="state machine code generator, state machine compiler, state machine dotnet, state machine dotnet, state machine .net,dotnet,state machine, c#, StateBuilderDotNet, state pattern, state machine pattern, state patterns, fsm, finite state machine" />
    <meta name="description" content="StateBuilderDotNet - state machine code generator for C# and VB.NET" />
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to StateBuilderDotNet
    </h2>
    <h3>
        The state machine code generator for C# and VB.NET</h3>
    <p>
        <span class="application">StateBuilderDotNet</span> is a state machine code generator
        for C# and VB.NET, it transforms a <em>state machine description</em> into an extended version
        of the <em>state pattern</em>.
    </p>
    <p>
        The state machine description, also known as state machine model, is written in
        a simple XML format, that is both human readable and writable.
    </p>
    <p>
        <img alt="StateBuilderDotNet-Principles" src="/Content/Images/StateBuilderDotNetPrinciplesLandscape.png" /></p>
    <h3>
        StateBuilderDotNet software content</h3>
    <ul>
        <li>The state machine code generator executable: <span class="file">Bin\StateBuilderDotNet.exe</span></li>
        <li>The desktop version of the finite state machine diagram editor</li>
        <li>The state machine library needed by the generated code: <span class="file">Lib\StateForge.StateMachine.dll</span></li>
        <li>Numerous <a title="online documentation for the state machine examples in C#" href="state-machine-examples-dotnet.aspx">state machine examples in C#</a> and VB.NET: <span class="file">Examples\CS</span> and <span class="file">Examples\VB</span></li>
        <li>Target files to ease integration with Visual Sudio and MSBuild: <span class="file">MSBuild\StateBuilderDotNet.targets</span></li>
    </ul>
</asp:Content>
