<%@ Page Language="C#" MasterPageFile="HelpDotNet.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="TitleContent">
    The C# state machine context
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="context, constructor, state machine code generator, state machine compiler, state machine c#, dotnet, state machine, StateBuilderDotNet" />
    <meta name="description" content="The C# state machine context: name, constructor, members functions etc ..." />
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
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        The C# state machine context</h2>
    <p>
        The context class is the fundamental class generated and directly used by your code.
        The following documentation explains how the context class is named, what are the
        constructor parameters, how to perform the second phase initialization with <span
            class="code">EnterInitialState()</span>, and finally, how to find out that the
        context has ended.
    </p>
    <h3>
        Context name</h3>
    <p>
        By default the context class name is based on the filename without extension, then
        it is suffixed by "Context":
    </p>
    <p>
        <span style="font-style: italic">MyStateMachine</span>.fsmcs => <span style="font-style: italic">
            MyStateMachine</span>Context
    </p>
    <p>
        It is also possible to set the context class name with the <span class="code">context</span>
        element:
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;highlight : 3">
<![CDATA[
<settings asynchronous="true" namespace="MyCompany.MyProduct.MyComponent">
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
<settings asynchronous="true" namespace="MyCompany.MyProduct.MyComponent">
    <object instance="foo" class="Foo"/>
    <object instance="bar" class="Bar"/>
    <context class="MyStateMachineContext"/>
</settings>
]]></script>
    </p>
    <p>
        Here is the C# code that shows how to create an instance of the context:</p>
    <p>
        <script type="syntaxhighlighter" class="brush: c#;gutter: false;toolbar: true;highlight : 5">
<![CDATA[
public MyClass()
{
    Foo foo = new Foo();
    Bar bar = new Bar();
    this.context = new MyStateMachineContext(foo, bar);
}
]]></script>
    </p>
    <h3>
        EnterInitialState</h3>
    <p>
        After the creation of an instance of the context, one may invoke the method <span
            class="code">EnterInitialState()</span> to call the <span class="code">OnEntry()</span>
        methods from the root state to the initial state.
    </p>
    <p>
        Consider the Led state machine example:
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;highlight :3">
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
    <p>
        <script type="syntaxhighlighter" class="brush: c#;gutter: false;toolbar: true;highlight : 5">
<![CDATA[
public Led()
{
    this.context = new LedContext(this);
    this.context.Observer = ObserverConsole.Instance;
    this.context.EnterInitialState();
}
]]></script>
    </p>
    <p>
        In this case, <span class="code">EnterInitialState()</span> will call <span class="code">
            led.DoOff()</span> to make sure the led is switched off.
    </p>
    <h3>
        Context ending and final state</h3>
    <p>
        Final states are state which have the attribute <span class="code">kind</span> set
        to <span class="code">final</span>:
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;highlight :3">
<![CDATA[
<state name="End" kind="final"/>
]]></script>
    </p>
    <p>
        When the machine enters a final state, the context fires the event <span class="code">
            EndHandler</span>
    </p>
    <p>
        Consider the example below, a private function called <span
            class="code">StateMachineEnd</span> is registered to the event handler and will
        be called when the context reaches a final state.</p>
    <p>
        A <span class="code">AutoResetEvent</span> class is used to synchronize the main
        thread.</p>
    <p>
        <script type="syntaxhighlighter" class="brush: c#;gutter: false;toolbar: true;highlight : [14,18]">
<![CDATA[
public partial class TrafficLight
{
    private Light light;
    private TrafficLightContext context;
    private static readonly string traceName = "TrafficLight";
    private static TraceSource ts = new TraceSource(traceName);
    private static AutoResetEvent autoResetEvent = new AutoResetEvent(false);

    public TrafficLight()
    {
        this.light = new Light();
        this.context = new TrafficLightContext(light);
        this.context.Observer = ObserverTrace.Instance(traceName);
        this.context.EndHandler += new EventHandler<EventArgs>(StateMachineEnd);
        this.context.EnterInitialState();
    }

    private void StateMachineEnd(object sender, EventArgs e)
    {
        ts.TraceInformation("state machine has ended");
        autoResetEvent.Set();
    }

    static void Main(string[] args)
    {
        TrafficLight myTrafficLight = new TrafficLight();
        myTrafficLight.Start("Ciao");
        autoResetEvent.WaitOne();
        ts.TraceInformation("TrafficLight has ended");
        Environment.Exit(0);
    }
}

]]></script>
    </p>
</asp:Content>
