<%@ Page Language="C#" MasterPageFile="HelpCpp.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="TitleContent">
    StateBuilderCpp - state machine code generator for C++
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="state machine code generator, state machine compiler, state machine c++, state machine, c++, StateBuilderCpp, state pattern, state machine pattern, state patterns" />
    <meta name="description" content="StateBuilderCpp - state machine code generator for C++" />
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to StateBuilderCpp
    </h2>
    <h3>
        The state machine code generator for C++</h3>
    <p>
        <span class="application">StateBuilderCpp</span> is a state machine code generator
        for C++, it transforms a <em>state machine description</em> into an extended version
        of the <em>state pattern</em>.
    </p>
    <p>
        The state machine description, also known as state machine model, is written in
        a simple XML format, that is both human readable and writable.
    </p>
    <p>
        <img alt="StateBuilderCpp-Principles" src="/Content/Images/StateBuilderCppPrinciplesLandscape.png" /></p>
    <h3>
        StateBuilderCpp software content</h3>
    <ul>
        <li>The state machine code generator executable: <span class="file">StateBuilderCpp.exe</span> or <span class="file">StateBuilderCpp.sh</span></li>
        <li>The desktop version of the finite state machine diagram editor (Windows only for now)</li>
        <li>The state machine library needed by the generated code</li>
        <li>Numerous <a title="online documentation for the state machine examples in C++" href="state-machine-examples-cplusplus.aspx">state machine examples in C++</a>.</li>
        <li>Files to ease integration with existing build system such as Visual Sudio, CMake, Makefile, XCode etc ...</li>
    </ul>
</asp:Content>
