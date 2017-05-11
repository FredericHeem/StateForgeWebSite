<%@ Page Language="C#" MasterPageFile="HelpJava.master" AutoEventWireup="true" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="TitleContent">
    StateBuilderJava tutorial, the state machine code generator for java
</asp:Content>
<asp:Content ID="MetaInfo" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="tutorial, state machine, java, generator, state machine code generator, state machine compiler, state machine java, unitest, StateBuilderJava, state pattern, fsm, finite state machine" />
    <meta name="description" content="Tutorial for StateBuilderJava, the state machine code generator for java" />
</asp:Content>
<asp:Content ID="HeaderEpilogue" runat="server" ContentPlaceHolderID="HeaderEpilogue">
    <script type="text/javascript" src="/Content/js/syntaxhighlighter/scripts/shCore.js"></script>
    <script type="text/javascript" src="/Content/js/syntaxhighlighter/scripts/shBrushXml.js"></script>
    <script type="text/javascript" src="/Content/js/syntaxhighlighter/scripts/shBrushJava.js"></script>
    <link href="/Content/js/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />
    <link href="/Content/js/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet"
        type="text/css" />
    <script type="text/javascript">
        SyntaxHighlighter.all()
    </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Getting started with StateBuilderJava.
    </h2>
    <p>
        In this tutorial, a LED system will be described and implemented with a finite state
        machine.
    </p>
    <ul>
        <li>Problem description</li>
        <li>The state machine XML description: <span class="file">Led.fsmjava</span></li>
        <li>The state diagram which is automatically drawn</li>
        <li>The generated state pattern class diagram</li>
        <li>Meaning of the <span class="code">settings</span>, <span class="code">events</span>
            and <span class="code">state</span> XML tag</li>
        <li>Class diagram</li>
        <li>Aplication and test source code</li>
    </ul>
    <h3>
        LED problem description
    </h3>
    <p>
        The LED example has a very simple state machine: 2 leaf states <span class="code">SwitchedOff</span>
        and <span class="code">SwitchedOn</span>, 2 events <span class="code">on()</span>
        and <span class="code">off()</span>, 2 actions <span class="code">doOff()</span>
        and <span class="code">doOn()</span> and 2 transitions.
    </p>
    <h3>
        LED state machine xml description
    </h3>
    <p>
        The following file <span class="file">Led.fsmjava</span> represents the state machine
        description in XML.
    </p>
    <p>
        Actually, <span class="application">StateBuildeJava</span> reads XML state machines
        that validate against the schema file <a href="/xsd/StateMachineJava-v1.xsd">StateMachineJava-v1.xsd</a>.
        A schema file contains the vocabulary and the grammar to describe state machines.
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;">
                    <![CDATA[
<?xml version="1.0" encoding="UTF-8"?>
<sm:StateMachine xmlns:sm="http://www.stateforge.com/StateMachineJava-v1"
                 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                 xsi:schemaLocation="http://www.stateforge.com/StateMachineJava-v1
                                     http://www.stateforge.com/xsd/StateMachineJava-v1.xsd" >
    <!-- General settings -->
    <settings asynchronous="false" namespace="com.stateforge.statemachine.examples.Led">
        <object instance="led" class="Led"/>
    </settings>

    <!-- Events -->
    <events>
        <eventSource name="SwitchEvent">
            <event id="on"/>
            <event id="off"/>
        </eventSource>
    </events>

    <!-- States -->
    <state name="Root">
        <state name="SwitchedOff">
            <onEntry action="led.doOff()"/>
            <transition event="on" nextState="SwitchedOn"/>
        </state>
        <state name="SwitchedOn">
            <onEntry action="led.doOn()"/>
            <transition event="off" nextState="SwitchedOff"/>
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
        above. This state diagram is automatically generated from <span class="file">Led.fsmjava</span>.
    </p>
    <img id="LedStateMachine" alt="Led State Diagram" src="/Content/Images/led-state-diagram-java.png"
        title="Led state machine diagram" />
    <h3>
        Generated code class diagram</h3>
    <p>
        From the description of the LED state machine in <span class="file">Examples/Led/src/main/statemachine/Led.fsmjava</span>
        listed above, <span class="application">StateBuilderJava</span> generates a set
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
<settings asynchronous="false" namespace="com.stateforge.statemachine.examples.Led">
    <object instance="led" class="Led"/>
</settings>
]]></script>
    </p>
    <p>
        The context class generated has its name inferred from the filename: <span class="file">
            Led.fsmjava</span> => <span class="code">LedContext</span>
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
        From the object class name Led, the context class constructor is : <span class="code">
            LedContext(Led led)</span>
    </p>
    <p>
        The <span class="code">asynchronous</span> attribute tells the state machine is
        synchronous.
    </p>
    <h4>
        The <span class="code">events</span> tag</h4>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;">
                    <![CDATA[
<events>
  <eventSource name="LedControl">
    <event id="on"/>
    <event id="off"/>
  </eventSource>
</events>
]]></script>
    </p>
    <p>
        The <span class="code">events</span> tag has a list of event source, each <span class="code">
            eventSource</span> has a list of events.
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
        <onEntry action="led.doOff()"/>
        <transition event="on" nextState="SwitchedOn"/>
    </state>
    <state name="SwitchedOn">
        <onEntry action="led.doOn()"/>
        <transition event="off" nextState="SwitchedOff"/>
    </state>
</state>
]]></script>
    </p>
    <ul>
        <li>State <span class="code">SwitchedOff</span>
            <ul>
                <li><span class="code">led.doOff()</span> is executed when the state <span class="code">
                    SwitchedOff</span> is entered.</li>
                <li>When the event <span class="code">on()</span> is received, go to the <span class="code">
                    SwitchedOn</span> state.</li>
            </ul>
        </li>
        <li>State <span class="code">SwitchedOn</span>
            <ul>
                <li><span class="code">led.doOn()</span> is executed when the state <span class="code">
                    SwitchedOn</span> is entered.</li>
                <li>When the event <span class="code">off()</span> is received, go to the <span class="code">
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
        <img alt="LED state pattern class diagram" src="/Content/Images/led-class-diagram-java.png" />
    </p>
    <p>
        Here is a brief description of the relationships between the classes <span class="code">
            Led</span> and <span class="code">LedContext</span>.
    </p>
    <ul>
        <li><span class="code">LedContext</span>
            <ul>
                <li>is generated by <span class="application">StateBuilderJava</span>.</li>
                <li>holds the current state.</li>
                <li>has a reference to <span class="code">Led</span> which is given through its constructor.</li>
                <li>invokes the protected methods <span class="code">led.doOn()</span> and <span
                    class="code">led.doOff()</span> depending on the current state. </li>
            </ul>
        </li>
        <li><span class="code">Led</span>
            <ul>
                <li>is exposed to the outside world through the public method <span class="code">on()</span>
                    and <span class="code">Off()</span>. </li>
                <li>holds and creates <span class="code">LedContext</span>.</li>
                <li>forwards <span class="code">on()</span> and <span class="code">off()</span> to <span
                    class="code">LedContext</span>.</li>
            </ul>
        </li>
    </ul>
    <h3>
        Source code</h3>
    <h4>
        src/main/java/com/stateforge/statemachine/examples/Led/Led.java</h4>
    <p>
        <script type="syntaxhighlighter" class="brush: java;gutter: false;toolbar: true;">
                    <![CDATA[
package com.stateforge.statemachine.examples.Led;

/**
 * Led
 */
public class Led
{
    private LedContext context;

    public Led(){
        this.context = new LedContext(this);
    }

    public void on(){
        this.context.on();
    }

    public void off(){
        this.context.off();
    }

    void doOn(){
        System.out.println("Led.doOn");
    }

    void doOff(){
        System.out.println("Led.doOff");
    }
}
]]></script>
    </p>
    <h4>
        src/test/java/com/stateforge/statebuilder/Led/LedTest.java</h4>
    <p>
        <script type="syntaxhighlighter" class="brush: java;gutter: false;toolbar: true;">
<![CDATA[
package com.stateforge.statebuilder.Led;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.stateforge.statemachine.examples.Led.Led;

/**
 * Unit test for HelloWorld.
 */
public class LedTest   
{
    private Led helloWorld;

    @Before
    public void setUp() throws Exception {
        this.helloWorld = new Led();
    }

    @After
    public void tearDown() throws Exception {

    } 

    @Test
    public void testOn()
    {
        this.helloWorld.on();
    }

    @Test
    public void testOff()
    {
        this.helloWorld.off();
    }

    @Test
    public void testOnOff()
    {
        this.helloWorld.on();
        this.helloWorld.off();
    }
}
]]></script>
    </p>
    <h3>
        What's next ?</h3>
    <p>
        This guide illustrates how <span class="application">StateBuilderJava</span> can
        be used to implement and integrate a finite state machine into an application.
    </p>
    <p>
        For more complex state machines, please have a look at the <a title="online documentation for the state machine examples in java"
            href="state-machine-examples-java.aspx">state machine examples</a>. Discover
        the <a title="state machine generator features" href="../state-machine-features.aspx">
            features</a> such as asynchrounous, hierarchical and concurrent state machines
        that can be used to solve complex real world problems.
    </p>
</asp:Content>
