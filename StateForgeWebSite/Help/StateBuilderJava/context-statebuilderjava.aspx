<%@ Page Language="C#" MasterPageFile="HelpJava.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="TitleContent">
    The java state machine context
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="context, constructor, state machine code generator, state machine compiler, state machine java, java, state machine, StateBuilderJava" />
    <meta name="description" content="The java state machine context: name, constructor, members functions etc ..." />
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
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        The java state machine context</h2>
    <p>
        The context class is the fundamental class generated and directly used by your code.
        The following documentation explains how the context class is named, what are the
        constructor parameters, how to perform the second phase initialization with <span
            class="code">enterInitialState()</span>, and finally, how to find out that the
        context has ended.
    </p>
    <h3>
        Context name</h3>
    <p>
        By default the context class name is based on the filename without extension, then
        it is suffixed by "Context":
    </p>
    <p>
        <span style="font-style: italic">MyStateMachine</span>.fsmjava => <span style="font-style: italic">
            MyStateMachine</span>Context
    </p>
    <p>
        It is also possible to set the context class name with the <span class="code">context</span>
        element:
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;highlight : 3">
<![CDATA[
<settings asynchronous="true" namespace="com.mycompany.myproduct.mycomponent">
    <object instance="myClass" class="MyClass"/>
    <context class="MyStateMachineContext"/>
</settings>
]]></script>
    </p>
    <h3>
        Context contructor</h3>
    <p>
        The constructor parameters are defined by the <span class="code">object</span> tag
        in the <span class="code">settings</span> element:
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;highlight : [2,3]">
<![CDATA[
<settings asynchronous="true" namespace="com.mycompany.myproduct.mycomponent">
    <object instance="foo" class="Foo"/>
    <object instance="bar" class="Bar"/>
    <context class="MyStateMachineContext"/>
</settings>
]]></script>
    </p>
    <p>
        Here is the java code that shows how to create an instance of the context:</p>
    <p>
        <script type="syntaxhighlighter" class="brush: java;gutter: false;toolbar: true;highlight : 4">
<![CDATA[
public MyClass() {
    Foo foo = new Foo();
    Bar bar = new Bar();
    this.context = new MyStateMachineContext(foo, bar);
}
]]></script>
    </p>
    <h3>
        enterInitialState</h3>
    <p>
        After the creation of an instance of the context, one may invoke the method <span
            class="code">enterInitialState()</span> to call the <span class="code">onEntry()</span>
        methods the from root state to the initial state.
    </p>
    <p>
        Consider the Led state machine example:
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;highlight :3">
<![CDATA[
<state name="Root">
  <state name="SwitchedOff">
    <onEntry action="led.doOff()"/>
    <transition event="On" nextState="SwitchedOn"/>
  </state>
  <state name="SwitchedOn">
    <onEntry action="led.doOn()"/>
    <transition event="Off" nextState="SwitchedOff"/>
  </state>
</state>
]]></script>
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: java;gutter: false;toolbar: true;highlight : 3">
<![CDATA[
public Led(){
        this.context = new LedContext(this);
        this.context.enterInitialState();
}
]]></script>
    </p>
    <p>
        In this case, <span class="code">enterInitialState()</span> will call <span class="code">
            led.doOff()</span> to make sure the led is switched off.
    </p>
    <h3>
        Context ending and final state</h3>
    <p>
        Final states are states which have the attribute <span class="code">kind</span> set
        to <span class="code">final</span>:
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;highlight :3">
<![CDATA[
<state name="End" kind="final"/>
]]></script>
    </p>
    <p>
        To find out when the context ends, call the context member function <span class="code">
            setEndHandler</span> and create an anonymous class that implements the interface
        <span class="code">IContextEnd</span>
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: java;gutter: false;toolbar: true;highlight : [5,6,7,8,9,10]">
<![CDATA[
public Ping(final IPingListener listener) {
    this.listener = listener;
    this.context = new PingContext(this);
    this.context.setObserver(ObserverConsole.getInstance());
    this.context.setEndHandler(new IContextEnd() {
        public void end() {
            printStatistics();
            listener.end(); 
        }
    });
}
]]></script>
    </p>
</asp:Content>
