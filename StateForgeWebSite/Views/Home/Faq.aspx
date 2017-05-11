<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    FAQ - State machine generator & state diagram editor.
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="state machine, finite state machine, state diagram, fsm, state pattern, code generator, finite automaton, c#, c++, java, state machine diagram, state chart, statechart, asynchronous, domain specific language, modeling language" />
    <meta name="description" content="F.A.Q about the state machine generator and state diagram editor" />
</asp:Content>
<asp:Content ID="HeaderEpilogue" runat="server" ContentPlaceHolderID="HeaderEpilogue">
    <link rel="stylesheet" type="text/css" href="/Content/Site.css" />
    <script type="text/javascript" src="/Content/js/jquery-ui/js/jquery-1.6.2.min.js"></script>
    <script type="text/javascript" src="/Content/js/jquery-ui/js/jquery-ui-1.8.16.custom.min.js"></script>
    <link type="text/css" href="/Content/js/jquery-ui/css/cupertino/jquery-ui-1.8.16.custom.css"
        rel="stylesheet" />
    <script type="text/javascript">
        $(function () {
            // Accordion
            $("#accordionGeneralQuestions").accordion({ header: "h3", 'fillSpace': true, 'clearStyle': true, active: false, collapsible: true });
            $("#accordionStateMachineModel").accordion({ header: "h3", 'fillSpace': true, 'clearStyle': true, active: false, collapsible: true });
            $("#accordionCodeGenerators").accordion({ header: "h3", 'fillSpace': true, 'clearStyle': true, active: false, collapsible: true });
            $("#accordionStateBuilderDotNet").accordion({ header: "h3", 'fillSpace': true, 'clearStyle': true, active: false, collapsible: true });
            $("#accordionStateBuilderCpp").accordion({ header: "h3", 'fillSpace': true, 'clearStyle': true, active: false, collapsible: true });
            $("#accordionStateBuilderJava").accordion({ header: "h3", 'fillSpace': true, 'clearStyle': true, active: false, collapsible: true });
            $("#accordionDiagramGenerator").accordion({ header: "h3", 'fillSpace': true, 'clearStyle': true, active: false, collapsible: true });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Frequently asked questions for the state machine tools.</h2>
    <ul>
        <li><a href="#GeneralQuestions">General F.A.Q.</a></li>
        <li><a href="#FsmML">Finite State Machine Modeling Language</a></li>
        <li><a href="#CodeGenerators">State machine code generators</a>
            <ul>
                <li><a href="#StateBuilderDotNet">StateBuilderDotNet</a></li>
                <li><a href="#StateBuilderDotNet">StateBuilderCpp</a></li>
                <li><a href="#StateBuilderDotNet">StateBuilderJava</a></li>
            </ul>
        </li>
        <li><a href="#DiagramGenerator">State diagram editor</a></li>
    </ul>
    <h3>
        <a name="GeneralQuestions">General questions:</a>
    </h3>
    <div id="accordionGeneralQuestions" name="GeneralQuestions">
        <div>
            <h3>
                <a href="#">What kind of state machine tools to you provide ? </a>
            </h3>
            <div>
                <ul>
                    <li>state machine code generators for C#, C++ and Java, they transform a state machine xml
                        description into source code, whhich is an extended version of the state pattern.</li>
                    <li>state diagram editor: an online and a desktop application to visualize and edit
                        state diagrams.</li>
                </ul>
            </div>
        </div>
        <div>
            <h3>
                <a href="#">Who is it for ? </a>
            </h3>
            <div>
                Software developers/engineers/designers, programmers, coders, students in science
                and technology, etc ...
            </div>
        </div>
        <div>
            <h3>
                <a href="#">Who kind of problems these software are trying to solved ? </a>
            </h3>
            <div>
                Implementing, maintaining and visualizing large state machines is time consuming
                and error prone. These state machines tools aims at building quality software quicker.
            </div>
        </div>
    </div>
    <h3>
        <a name="FsmML">Finite State Machine Modeling Language (FsmML) </a>
    </h3>
    <div id="accordionStateMachineModel">
        <div>
            <h3>
                <a href="#">What is FsmML ? </a>
            </h3>
            <div>
                FsmML stands for Finite State Machine Modeling Language. It is a language to describe
                state machines in a simple XML format.
            </div>
        </div>
        <div>
            <h3>
                <a href="#">What FsmML is used for ?</a>
            </h3>
            <div>
                State machines described in FsmML are the input of the state machine code & diagram
                generators. A unique description is used to generate the diagram and the source
                code.
            </div>
        </div>
        <div>
            <h3>
                <a href="#">Where are the examples ?</a>
            </h3>
            <div>
                Visit the <a href="/StateMachineDiagram/StateMachineDiagram.html">state machine examples</a>
                page to find out.
            </div>
        </div>
        <div>
            <h3>
                <a href="#">What kind of state machines can be described ?</a>
            </h3>
            <div>
                Real world state machine can described, FsmML supports hierarchical, concurrent,
                asynchronous state machines. <a href="/Home/Features">More FsmML features here ...</a>
            </div>
        </div>
        <div>
            <h3>
                <a href="#">What is the difference between FsmML and XMI (the UML file format) ?</a>
            </h3>
            <div>
                FsmML is human readable and writable, XMI not.
            </div>
        </div>
        <%-- <div>
            <h3>
                <a href="#">What is the difference between FsmML and SXCML</a>
            </h3>
            <div>
                FsmML and scxml are similar, but scxml uses only JavaScript as the language to execute
                content. FsmML is tailored for each target programming language.
            </div>
        </div>--%>
    </div>
    <h3>
        <a name="CodeGenerators">State machine code generators </a>
    </h3>
    <div id="accordionCodeGenerators">
        <div>
            <h3>
                <a href="#">How is the generated code implemented ?</a></h3>
            <div>
                The generated code is implemented according to an extended version of the state
                pattern.
            </div>
        </div>
        <div>
            <h3>
                <a href="#">In which programming language the code can be generated </a>
            </h3>
            <div>
                C#, C++, Java
            </div>
        </div>
    </div>
    <h3>
        <a name="StateBuilderDotNet">StateBuilderDotNet - State machine code generator for C#
            and VB.NET </a>
    </h3>
    <div id="accordionStateBuilderDotNet">
        <div>
            <h3>
                <a href="#">Which Visual Studio version is supported ?</a></h3>
            <div>
                Visual Studio 2005, 2008 and 2010
            </div>
        </div>
        <div>
            <h3>
                <a href="#">Which .Net framework is needed to run the code generator ? </a>
            </h3>
            <div>
                The .Net framework version 4.0 is required to run the code generated
            </div>
        </div>
        <div>
            <h3>
                <a href="#">Which .Net framework the generated code can be targeted ? </a>
            </h3>
            <div>
                The generated can be targeted to the .Net framework version 2.0, 3.5 and 4.0
            </div>
        </div>
         <div>
            <h3>
                <a href="#">Does the generated code run on Windows Phone 7  ? </a>
            </h3>
            <div>
                Yes, the generated code runs on Windows Phone 7.
            </div>
        </div>
    </div>
    <h3>
        <a name="StateBuilderCpp">StateBuilderCpp - State machine code generator for C++
        </a>
    </h3>
    <div id="accordionStateBuilderCpp">
        <div>
            <h3>
                <a href="#">On which platform does StateBuilderCpp run ?</a></h3>
            <div>
                <strong>StateBuilderCpp</strong> runs on Windows XP/Vista/7, MacOSX and Linux.
            </div>
        </div>
        <div>
            <h3>
                <a href="#">Which C++ compiler can compile the generated code ?</a></h3>
            <div>
                The C++ generated code has been tested with all majors C++ compilers: Visual Studio
                2005/2008/2010, GCC on Windows, MacOSX, Linux and Android.
            </div>
        </div>
        <div>
            <h3>
                <a href="#">Is the state machine library source code available ?</a>
            </h3>
            <div>
                Yes, the source code of state machine library used by the generated code is provided.
            </div>
        </div>
        <div>
            <h3>
                <a href="#">Does the generated code depends on a third party library ?</a>
            </h3>
            <div>
                It depends, for synchronous state machine, only the standard c++ library is required.
                For asynchronous state machine, either <strong>Qt</strong>, <strong>Boost</strong>
                or <strong>libev</strong> is required.
            </div>
        </div>
        <div>
            <h3>
                <a href="#">Can the C++ generated code be cross-compiled, i.e embedded system ?</a></h3>
            <div>
                Yes, the C++ generated code be cross compiled.
            </div>
        </div>
    </div>
    <h3>
        <a name="StateBuilderJava">StateBuilderJava - State machine code generator for Java
        </a>
    </h3>
    <div id="accordionStateBuilderJava">
        <div>
            <h3>
                <a href="#">On which platform does StateBuilderJava run ?</a></h3>
            <div>
                <strong>StateBuilderJava</strong> runs on Windows XP/Vista/7, MacOSX and Linux.
            </div>
        </div>
        <div>
            <h3>
                <a href="#">How to generate state machines in Java ? </a>
            </h3>
            <div>
                <strong>StateBuilderJava</strong> can be invoked from the <strong>command line</strong>
                , from an <strong>ant task</strong> or from a <strong>maven plugin</strong>.
            </div>
        </div>
        <div>
            <h3>
                <a href="#">I double click on StateBuilderJava, what do I do now ?</a></h3>
            <div>
                The <strong>StateBuilderJava</strong> GUI is only used to install a licence.
            </div>
        </div>
    </div>
    <h3>
        <a name="DiagramGenerator">State diagram editor</a>
    </h3>
    <div id="accordionDiagramGenerator">
        <div>
            <h3>
                <a href="#">Why another state diagram editor ?</a></h3>
            <div>
                The state diagram layout is completely automatic, no time is wasted to organize
                and place states on the diagram.
            </div>
        </div>
        <div>
            <h3>
                <a href="#">Is there a desktop version of the state diagram editor ?</a></h3>
            <div>
                Yes, a Windows version of the state diagram editor is available. This desktop application
                allows to open and save state machines from the disk. 
            </div>
        </div>
        <div>
            <h3>
                <a href="#">Transitions are not represented by arrows ?</a></h3>
            <div>
                Unlike traditional state machine graphical notation, transitions are not represented
                by arrows but by a table, this optimizes the space on the diagram, allowing to fit
                more information on the screen.
            </div>
        </div>
    </div>
</asp:Content>
