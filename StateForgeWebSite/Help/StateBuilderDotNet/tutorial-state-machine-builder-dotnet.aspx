<%@ Page Language="C#" MasterPageFile="HelpDotNet.master" AutoEventWireup="true" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="TitleContent">
    StateBuilderDotNet tutorial, the state machine code generator for C# and VB.NET
</asp:Content>
<asp:Content ID="MetaInfo" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="tutorial, state machine, dotnet, c#, example, getting started, tutorial, generator, state machine code generator, state machine compiler, state machine c++, StateBuilderCpp, state pattern, fsm, finite state machine" />
    <meta name="description" content="Tutorial for StateBuilderDotNet, the state machine code generator for C# and VB.NET" />
</asp:Content>
<asp:Content ID="HeaderEpilogue" runat="server" ContentPlaceHolderID="HeaderEpilogue">
    <script type="text/javascript" src="/Content/js/syntaxhighlighter/scripts/shCore.js"></script>
    <script type="text/javascript" src="/Content/js/syntaxhighlighter/scripts/shBrushXml.js"></script>
    <script type="text/javascript" src="/Content/js/syntaxhighlighter/scripts/shBrushCSharp.js"></script>
    <link href="/Content/js/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />
    <link href="/Content/js/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet"
        type="text/css" />
    <script type="text/javascript">
        SyntaxHighlighter.all()
    </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Getting started with StateBuilderDotNet.
    </h2>
    <p>
        In this tutorial, a LED system will be described and implemented using a finite
        state machine.
    </p>
    <ul>
        <li>Problem description</li>
        <li>The state machine XML description: <span class="file">Led.fsmcs</span></li>
        <li>The state diagram which is automatically drawn</li>
        <li>The generated state pattern class diagram</li>
        <li>Meaning of the <span class="code">settings</span>, <span class="code">events</span>
            and <span class="code">state</span> XML tag</li>
        <li>Class diagram</li>
        <li>Source code</li>
        <li>Program console output</li>
    </ul>
    <h3>
        LED problem description
    </h3>
    <p>
        The LED example has a very simple state machine: 2 leaf states <span class="code">SwitchedOff</span>
        and <span class="code">SwitchedOn</span>, 2 events <span class="code">On()</span>
        and<span class="code">Off()</span>, 2 actions <span class="code">DoOff()</span>
        and <span class="code">DoOn()</span> and 2 transitions.
    </p>
    <h3>
        LED state machine xml description
    </h3>
    <p>
        The following file <span class="file">Led.fsmcs</span> represents the state machine
        description in XML.
    </p>
    <p>
        Actually, <span class="application">StateBuilderDotNet</span> reads XML state machines
        that validate against the schema file <a href="/xsd/StateMachineDotNet-v1.xsd">StateMachineDotNet-v1.xsd</a>.
        A schema file contains the vocabulary and the grammar to describe state machines.
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;">
                    <![CDATA[
<?xml version="1.0" encoding="UTF-8"?>
<sm:StateMachine xmlns:sm="http://www.stateforge.com/StateMachineDotNet-v1"
                 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                 xsi:schemaLocation="http://www.stateforge.com/StateMachineDotNet-v1
                                     http://www.stateforge.com/xsd/StateMachineDotNet-v1.xsd" >

    <!-- general settings -->
    <settings asynchronous="false" namespace="StateForge.Examples.Led">
        <object instance="led" class="Led"/>
    </settings>
    <!-- events -->
    <events>
        <eventSource name="LedControl">
            <event id="On"/>
            <event id="Off"/>
        </eventSource>
    </events>

    <!-- States -->
    <state name="Root">
        <state name="SwitchedOff">
            <onEntry action="led.DoOff()"/>
            <transition event="On" nextState="SwitchedOn"/>
        </state>
        <state name="SwitchedOn">
            <onEntry action="led.DoOn()"/>
            <transition event="Off" nextState="SwitchedOff"/>
        </state>
    </state>
</sm:StateMachine>
]]></script>
    </p>
    <p>
    </p>
    <h3>
        Led state machine diagram
    </h3>
    <p>
        The state diagram is a graphical representation of the LED state machine described
        above. This state diagram is automatically generated from <span class="file">Led.fsmcs</span>.
    </p>
    <img id="LedStateMachine" alt="Led State Diagram" src="/Content/Images/led-state-diagram-dotnet.png"
        title="Led state machine diagram" />
    <h3>
        Generated code class diagram</h3>
    <p>
        From the description of the LED state machine in <span class="file">Led.fsmcs</span>
        listed above, <span class="application">StateBuilderDotNet</span> generates a set
        of classes: a context class and various state classes. Only the context class is
        used by the application class Led
    </p>
    <p>
        The state machine design pattern found in the book "Design Patterns: Elements of
        Reusable Object-Oriented Software" written by the "Gang of Four" is used as the
        basic foundation for the generated code.
    </p>
    <p>
        The class diagram of the LED state pattern is illustrated below:
    </p>
    <p>
        <img alt="LED state pattern class diagram" src="/Content/Images/led-state-pattern-class-diagram.png" />
    </p>
    <p>
        The state pattern is a way to implement hierarchical state machine. Each state is
        a class, events are members funtions of these class.</p>
    <h3>
        Meaning of the <span class="code">settings</span>, <span class="code">events</span>
        and <span class="code">state</span> XML tag
    </h3>
    <h4>
        The <span class="code">settings</span> tag</h4>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;">
                    <![CDATA[
<settings asynchronous="false" namespace="StateForge.Examples.Led">
    <object instance="led" class="Led"/>
</settings>
]]></script>
    </p>
    <p>
        The context class generated has its name inferred from the filename: <span class="file">
            Led.fsmcs</span> => <span class="code">LedContext</span>
    </p>
    <p>
        The namespace for the generated class is given through the <span class="code">namespace</span>
        tag.
    </p>
    <p>
        This state machine controls the instance <span class="code">led</span> of type <span
            class="code">Led</span>
    </p>
    <p>
        The oject instance name <span class="code">led</span> is referenced in the actions
        to get access to this object.
    </p>
    <p>
        From the object class name <span class="code">Led</span>, the context class constructor
        is : <span class="code">LedContext(Led led)</span>
    </p>
    <p>
        The <span class="code">asynchronous</span> attribute tells the state machine is
        synchronous.
    </p>
    <p>
    </p>
    <h4>
        The <span class="code">events</span> tag</h4>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;">
                    <![CDATA[
<events>
  <eventSource name="LedControl">
    <event id="On"/>
    <event id="Off"/>
  </eventSource>
</events>
]]></script>
    </p>
    <p>
        The <span class="code">events</span> tag has a list of event source, each <span class="code">
            eventSource</span> have a list of events.
    </p>
    <p>
        The context class has a method for each event:
    </p>
    <ul>
        <li><span class="code">void LedContext.On()</span> </li>
        <li><span class="code">void LedContext.Off()</span></li>
    </ul>
    <p>
        From now on, we know how the create an instance of the context class and send events
        to this context.
    </p>
    <h4>
        The <span class="code">state</span> tag</h4>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;">
                    <![CDATA[
<state name="Root">
    <state name="SwitchedOff">
        <onEntry action="led.DoOff()"/>
        <transition event="On" nextState="SwitchedOn"/>
    </state>
    <state name="SwitchedOn">
        <onEntry action="led.DoOn()"/>
        <transition event="Off" nextState="SwitchedOff"/>
    </state>
</state>
]]></script>
    </p>
    <ul>
        <li>State <span class="code">SwitchedOff</span>
            <ul>
                <li><span class="code">led.DoOff()</span> is executed when the state <span class="code">
                    SwitchedOff</span> is entered.</li>
                <li>When the event <span class="code">On()</span> is received, go to the <span class="code">
                    SwitchedOn</span> state.</li>
            </ul>
        </li>
        <li>State <span class="code">SwitchedOn</span>
            <ul>
                <li><span class="code">led.DoOn()</span> is executed when the state <span class="code">
                    SwitchedOn</span> is entered.</li>
                <li>When the event <span class="code">Off()</span> is received, go to the <span class="code">
                    SwitchedOff</span> state.</li>
            </ul>
        </li>
    </ul>
    <h3>
        Class Diagram</h3>
    <p>
        The following picture is a UML class diagram of the Led system:
    </p>
    <p>
        <img alt="LED state pattern class diagram" src="/Content/Images/led-class-diagram-dotnet.png" />
    </p>
    <p>
        Here is a brief description of the relationships between the classes <span class="code">
            Led</span> and <span class="code">LedContext</span>.
    </p>
    <ul>
        <li><span class="code">LedContext</span>
            <ul>
                <li>is generated by <span class="application">StateBuilderDotNet</span>.</li>
                <li>holds the current state.</li>
                <li>has an reference to <span class="code">led</span> which is given through its constructor.</li>
                <li>invokes the internal protected methods <span class="code">led.DoOn()</span> and
                    <span class="code">led.DoOff()</span> depending on the current state. </li>
            </ul>
        </li>
        <li><span class="code">Led</span>
            <ul>
                <li>is exposed to the outside world through the public method <span class="code">On()</span>
                    and <span class="code">Off()</span>. </li>
                <li>holds and creates <span class="code">LedContext</span>.</li>
                <li>forwards <span class="code">On()</span> and <span class="code">Off()</span> to <span
                    class="code">LedContext</span>.</li>
            </ul>
        </li>
    </ul>
    <h3>
        Source code</h3>
    <h4>
        Led.h</h4>
    <p>
        <script type="syntaxhighlighter" class="brush: c#;gutter: false;toolbar: true;">
                    <![CDATA[
namespace StateForge.Examples.Led
{
    using System;
    using StateForge.StateMachine;

    public class Led
    {
        private LedContext context;

        public Led()
        {
            this.context = new LedContext(this);
            this.context.Observer = ObserverConsole.Instance;
            this.context.EnterInitialState();
        }

        #region Public Methods
        // On
        public void On()
        {
            context.On();
        }

        // Off
        public void Off()
        {
            context.Off();
        }

        #endregion

        #region Methods invoked by the context class
        // DoOn
        protected internal void DoOn()
        {
            Console.WriteLine("DoOn");
        }

        // DoOff
        protected internal void DoOff()
        {
            Console.WriteLine("DoOff");
        }

        #endregion
    }

    public class LedApp
    {
        static void Main(string[] args)
        {
            Led led = new Led();
            led.On();
            led.Off();

            Environment.Exit(0);
        }
    }
}
]]></script>
    </p>
    <h3>
        Runtime Output</h3>
    <p>
        Here is the output when calling <span class="code">context.EnterInitialState()</span>,
        <span class="code">context.On()</span> and <span class="code">context.Off()</span></p>
    <pre class="code">
LedContext: entering in state Root
LedContext: entering in state SwitchedOff
DoOff
LedContext: transition begins from state SwitchedOff to SwitchedOn, event On
LedContext: leaving from state SwitchedOff
LedContext: entering in state SwitchedOn
DoOn
LedContext: transition has ended from state SwitchedOff to SwitchedOn, event On
LedContext: transition begins from state SwitchedOn to SwitchedOff, event Off
LedContext: leaving from state SwitchedOn
LedContext: entering in state SwitchedOff
DoOff
LedContext: transition has ended from state SwitchedOn to SwitchedOff, event Off
    </pre>
    <h3>
        What's next ?</h3>
    <p>
        This guide illustrates how <span class="application">StateBuilderDotNet</span> can
        be used to implement and integrate a finite state machine into an application.
    </p>
    <p>
        For more complex state machines, please have a look at the <a title="online documentation for the state machine examples in C#"
            href="state-machine-examples-dotnet.aspx">state machine examples</a>. Discover
        the <a title="state machine generator features" href="../state-machine-features.aspx">
            features</a> such as asynchrounous, hierarchical and concurrent state machines
        that can be used to solve complex real world problems.
    </p>
</asp:Content>
