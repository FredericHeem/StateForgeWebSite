<%@ Page Language="C#" MasterPageFile="HelpCpp.master" AutoEventWireup="true" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="TitleContent">
    StateBuilderCpp tutorial, the state machine code generator for C++
</asp:Content>
<asp:Content ID="MetaInfo" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="tutorial, state machine, c++, cpp, cplusplus, example, getting started, tutorial, generator, state machine code generator, state machine compiler, state machine c++, StateBuilderCpp, state pattern, fsm, finite state machine" />
    <meta name="description" content="Tutorial for StateBuilderCpp, the state machine code generator for C++" />
</asp:Content>
<asp:Content ID="HeaderEpilogue" runat="server" ContentPlaceHolderID="HeaderEpilogue">
    <script type="text/javascript" src="/Content/js/syntaxhighlighter/scripts/shCore.js"></script>
    <script type="text/javascript" src="/Content/js/syntaxhighlighter/scripts/shBrushXml.js"></script>
    <script type="text/javascript" src="/Content/js/syntaxhighlighter/scripts/shBrushCpp.js"></script>
    <link href="/Content/js/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />
    <link href="/Content/js/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet"
        type="text/css" />
    <script type="text/javascript">
        SyntaxHighlighter.all()
    </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Getting started with StateBuilderCpp.
    </h2>
    <p>
        In this tutorial, a LED system will be described and implemented with a finite state
        machine (FSM)
    </p>
    <ul>
        <li>Problem description</li>
        <li>The state machine XML description: <span class="file">Led.fsmcpp</span></li>
        <li>The state diagram which is automatically drawn</li>
        <li>The generated state pattern class diagram</li>
        <li>Meaning of the <span class="code">settings</span>, <span class="code">events</span>
            and <span class="code">state</span> XML tags</li>
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
        The following file <span class="file">Led.fsmcpp</span> represents the state machine
        description in XML.
    </p>
    <p>
        Actually, <span class="application">StateBuilderCpp</span> reads XML state machines
        that validate against the schema file <a href="/xsd/StateMachineCpp-v1.xsd">StateMachineCpp-v1.xsd</a>.
        A schema file contains the vocabulary and the grammar to describe state machines.
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;">
                    <![CDATA[
<?xml version="1.0" encoding="UTF-8"?>
<sm:StateMachine xmlns:sm="http://www.stateforge.com/StateMachineCpp-v1"
                 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                 xsi:schemaLocation="http://www.stateforge.com/StateMachineCpp-v1
                                     http://www.stateforge.com/xsd/StateMachineCpp-v1.xsd" >

    <!-- general settings -->
    <settings asynchronous="false" library="std">
        <object instance="ledPrivate" class="LedPrivate" include="LedPrivate.h"/>
    </settings>

    <!-- events -->
    <events>
        <eventSource name="SwitchEvent">
            <event id="On"/>
            <event id="Off"/>
        </eventSource>
    </events>

    <!-- states -->
    <state name="Root">
        <state name="SwitchedOff">
            <onEntry action="ledPrivate.DoOff()"/>
            <transition event="On" nextState="SwitchedOn"/>
        </state>
        <state name="SwitchedOn">
            <onEntry action="ledPrivate.DoOn()"/>
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
        above. This state diagram is automatically generated from <span class="file">Led.fsmcpp</span>.
    </p>
    <img id="LedStateMachine" alt="Led State Diagram" src="/Content/Images/led-state-diagram-cpp.png"
        title="Led state machine diagram" />
    <h3>
        Generated code class diagram</h3>
    <p>
        From the description of the LED state machine in <span class="file">Led.fsmcpp</span>
        listed above, <span class="application">StateBuilderCpp</span> generates a set of
        classes: a context class and various state classes. Only the context class is used
        by the application class <span class="code">Led</span>
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
<settings asynchronous="false" library="std">
    <object instance="ledPrivate" class="LedPrivate" include="LedPrivate.h"/>
</settings>
]]></script>
    </p>
    <p>
        The context class generated has its name inferred from the filename: <span class="file">
            Led.fsmcpp</span> => <span class="code">LedContext</span>
    </p>
    <p>
        This state machine controls one instance of <span class="code">ledPrivate</span>
        of type <span class="code">LedPrivate</span> which can be find in <span class="code">
            LedPrivate.h</span>
    </p>
    <p>
        The oject instance name <span class="code">ledPrivate</span> is referenced in the
        actions to get access to this object.
    </p>
    <p>
        From the object class name <span class="code">LedPrivate</span>, the context class
        constructor is :<br />
        <span class="code">LedContext::LedContext(LedPrivate &ledPrivate)</span>
    </p>
    <p>
        The <span class="code">asynchronous</span> attribute tells the state machine is
        synchronous.
    </p>
    <p>
        The <span class="code">library</span> attribute set to <span class="code">std</span>
        tells the code generator to use only the standard C++ library. Other values for
        this attribute are <span class="code">qt</span> and <span class="code">boost</span>.
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
        <onEntry action="ledPrivate.DoOff()"/>
        <transition event="On" nextState="SwitchedOn"/>
    </state>
    <state name="SwitchedOn">
        <onEntry action="ledPrivate.DoOn()"/>
        <transition event="Off" nextState="SwitchedOff"/>
    </state>
</state>
]]></script>
    </p>
    <ul>
        <li>State <span class="code">SwitchedOff</span>
            <ul>
                <li><span class="code">ledPrivate.DoOff()</span> is executed when the state <span
                    class="code">SwitchedOff</span> is entered.</li>
                <li>When the event <span class="code">On()</span> is received, go to the <span class="code">
                    SwitchedOn</span> state.</li>
            </ul>
        </li>
        <li>State <span class="code">SwitchedOn</span>
            <ul>
                <li><span class="code">ledPrivate.DoOn()</span> is executed when the state <span
                    class="code">SwitchedOn</span> is entered.</li>
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
        <img alt="LED state pattern class diagram" src="/Content/Images/led-class-diagram-cpp.png" />
    </p>
    <p>
        Here is a brief description of the relationships between the classes <span class="code">
            Led</span>, <span class="code">LedContext</span> and <span class="code">LedPrivate</span>.
    </p>
    <ul>
        <li><span class="code">LedContext</span>
            <ul>
                <li>is generated by <span class="application">StateBuilderCpp</span>.</li>
                <li>holds the current state.</li>
                <li>has an reference to <span class="code">LedPrivate</span> which is given through
                    its constructor.</li>
                <li>invokes the methods <span class="code">ledPrivate.DoOn()</span> and <span class="code">
                    ledPrivate.DoOff()</span> depending on the current state. </li>
                <li>is created, destroyed and hold by <span class="code">Led</span>.</li>
            </ul>
        </li>
        <li><span class="code">LedPrivate</span>
            <ul>
                <li>is used by <span class="code">LedContext</span> to execute the actions <span
                    class="code">DoOn()</span> and <span class="code">DoOff()</span>.</li>
                <li>is created, destroyed and hold by <span class="code">Led</span>.</li>
            </ul>
        </li>
        <li><span class="code">Led</span>
            <ul>
                <li>is exposed to the outside world through the public method <span class="code">On()</span>
                    and <span class="code">Off()</span>. </li>
                <li>holds and creates <span class="code">LedContext</span> and <span class="code">LedPrivate</span>.</li>
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
        <script type="syntaxhighlighter" class="brush: cpp;gutter: false;toolbar: true;">
                    <![CDATA[
#ifndef LED_H_
#define LED_H_

class LedContext;
class LedPrivate;

class Led
{
public:
    Led();
    virtual ~Led();

    void On();
    void Off();

private:
    LedPrivate *m_pPrivate;// Actions implementation class
    LedContext *m_pContext;// Generated class
};
#endif
]]></script>
    </p>
    <h4>
        LedPrivate.h</h4>
    <p>
        <script type="syntaxhighlighter" class="brush: cpp;gutter: false;toolbar: true;">
                    <![CDATA[
#ifndef LEDPRIVATE_H_
#define LEDPRIVATE_H_

class LedPrivate 
{
public:
    void DoOn();
    void DoOff();
};
#endif
]]></script>
    </p>
    <h4>
        Led.cpp</h4>
    <p>
        <script type="syntaxhighlighter" class="brush: cpp;gutter: false;toolbar: true;">
                    <![CDATA[
#include <iostream>
#include <ObserverStd.h>
#include "Led.h"
#include "LedPrivate.h"
#include "LedFsm.h" // Generated file

using namespace std;

// Led implementation
Led::Led()
{
    m_pPrivate = new LedPrivate();
    m_pContext = new LedContext(*m_pPrivate);
    m_pContext->SetObserver(fsm::ObserverStd::GetInstance());
    m_pContext->EnterInitialState();
}

Led::~Led()
{
    delete m_pContext;
    delete m_pPrivate;
}

void Led::On()
{
    m_pContext->On();
}

void Led::Off()
{
    m_pContext->Off();
}

// LedPrivate implementation
void LedPrivate::DoOn()
{
    cout << "DoOn" << endl;
}

void LedPrivate::DoOff()
{
    cout << "DoOff" << endl;
}
]]></script>
    </p>
    <h4>
        main.cpp</h4>
    <p>
        <script type="syntaxhighlighter" class="brush: cpp;gutter: false;toolbar: true;">
                    <![CDATA[
#include <iostream>
#include <cstdlib>
#include "Led.h"

using namespace std;

int main(int /*argc*/, char ** /*argv[]*/)
{
    int iReturnValue = 0;
    cout << "Led" << endl; 
    try {
        Led led;
        led.On();
        led.Off();
    }
    catch (std::exception& e){
        cerr << "Exception: " << e.what() << endl;
        iReturnValue = -1;
    }
    return iReturnValue;
}
]]></script>
    </p>
    <h3>
        Runtime Output</h3>
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
        This guide illustrates how <span class="application">StateBuilderCpp</span> can
        be used to implement and integrate a finite state machine into an application.
    </p>
    <p>
        For more complex state machines, please have a look at the <a title="online documentation for the state machine examples in C++"
            href="state-machine-examples-cplusplus.aspx">state machine examples</a>. Discover
        the <a title="state machine generator features" href="../state-machine-features.aspx">
            features</a> such as asynchrounous, hierarchical and concurrent state machines
        than can be used to solve complex real world problems.
    </p>
</asp:Content>
