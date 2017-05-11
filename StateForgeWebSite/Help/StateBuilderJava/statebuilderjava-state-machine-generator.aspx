<%@ Page Language="C#" MasterPageFile="HelpJava.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="TitleContent">
    StateBuilderJava - state machine code generator for Java
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="state machine code generator, state machine compiler, state machine java, state machine java, java, state machine, state machine library, StateBuilderJava, ant, maven, state pattern, state machine pattern, state patterns, fsm, finite state machine" />
    <meta name="description" content="StateBuilderJava - state machine code generator for Java" />
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to StateBuilderJava
    </h2>
    <h3>
        The state machine code generator for Java</h3>
    <p>
        <span class="application">StateBuilderJava</span> is a state machine code generator
        for Java, it transforms a <em>state machine description</em> into an extended version
        of the <em>state pattern</em>.
    </p>
    <p>
        The state machine description, also known as state machine model, is written in
        a simple XML format, that is both human readable and writable.
    </p>
    <p>
        <img alt="StateBuilderJava-Principles" src="/Content/Images/StateBuilderJavaPrinciplesLandscape.png" /></p>
    <h3>
        StateBuilderJava software content</h3>
    <ul>
        <li>The state machine code generator executable: <span class="file">lib\statebuilder-java-x.y.z.jar</span></li>
        <li>The desktop version of the finite state machine diagram editor (Windows only for now)</li>
        <li>The state machine library needed by the generated code: <span class="file">lib\statemachine-x.y.z.jar</span></li>
        <li>Numerous <a title="online documentation for the state machine examples in java" href="state-machine-examples-java.aspx">state machine examples in java</a> </li>
        <li><span class="application">Ant</span> task: <span class="file">lib\statebuilder-ant-task-x.y.z.jar</span></li>
        <li><span class="application">Maven</span> plugin.</li>
    </ul>
</asp:Content>
