<%@ Page Language="C#" MasterPageFile="HelpCpp.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="TitleContent">
    The C++ state machine context
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="context, constructor, state machine code generator, state machine compiler, state machine c++, c++, state machine, StateBuilderCpp" />
    <meta name="description" content="The C++ state machine context: name, constructor, members functions etc ..." />
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
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        The C++ state machine context</h2>
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
        <span style="font-style: italic">MyStateMachine</span>.fsmcpp => <span style="font-style: italic">
            MyStateMachine</span>Context
    </p>
    <p>
        It is also possible to set the context class name with the <span class="code">context</span>
        element:
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;highlight : 4">
<![CDATA[
<settings asynchronous="false">
    <description>Microwave</description>
    <object instance="microwave" class="Microwave" include="Microwave.h"/>
    <context class="MicrowaveContext"/>
</settings>
]]></script>
    </p>
    <h3>
        Context contructor</h3>
    <p>
        The constructor parameters are defined by the <span class="code">object</span> tags
        in the <span class="code">settings</span> element. When the state machine is asynchronous,
        a parameter holding the event loop is added to the constructor. The type of parameter
        depends on the underlying library: Qt, Boost or libev
    </p>
    <h4>
        Synchronous context constructor</h4>
    <h5>
        WashingMachine.fsmcpp</h5>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;highlight : [2]">
<![CDATA[
<settings asynchronous="false" library="std">
    <object instance="washingMachine" class="WashingMachine" include="WashingMachine.h"/>
</settings>
]]></script>
    </p>
    <h5>
        Synchronous constructor declaration</h5>
    <p>
        <script type="syntaxhighlighter" class="brush: cpp;gutter: false;toolbar: true">
<![CDATA[
WashingMachineContext(WashingMachine& washingMachine);
]]></script>
    </p>
    <h5>
        Synchronous context instantiation</h5>
    <p>
        <script type="syntaxhighlighter" class="brush: cpp;gutter: false;toolbar: true;highlight : 3">
<![CDATA[
WashingMachine::WashingMachine()
{
    m_pContext = new WashingMachineContext(*this);
    m_pContext->SetObserver(fsm::ObserverStd::GetInstance());
    m_pContext->EnterInitialState();
}
]]></script>
    </p>
    <h4>
        Asynchronous context constructor with Qt</h4>
    <h5>
        Tr69ConnectionRequestResponder.fsmcpp</h5>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;highlight : [3,4,5,6]">
<![CDATA[
<settings asynchronous="true" library="qt">
    <description>Respond to incoming connection request from Acs server</description>
    <object instance="responder" class="Tr69ConnectionRequestResponder" include="Tr69ConnectionRequestResponder.h"/>
    <object instance="responderPrivate" class="Tr69ConnectionRequestResponderPrivate" include="Tr69ConnectionRequestResponderPrivate.h"/>
    <object instance="request" class="QHttpRequest" include="qhttprequest.h"/>
    <object instance="response" class="QHttpResponse" include="qhttpresponse.h"/>
</settings>
]]></script>
    </p>
    <h5>
        Qt asynchronous constructor declaration</h5>
    <p>
        <script type="syntaxhighlighter" class="brush: cpp;gutter: false;toolbar: true">
<![CDATA[
Tr69ConnectionRequestResponderContext(Tr69ConnectionRequestResponder& responder,
                                      Tr69ConnectionRequestResponderPrivate& responderPrivate, 
                                      QHttpRequest& request,
                                      QHttpResponse& response,
                                      QObject *pParent = NULL);
]]></script>
    </p>
    <h5>
        Qt asynchronous context instantiation</h5>
    <p>
        <script type="syntaxhighlighter" class="brush: cpp;gutter: false;toolbar: true;highlight : 3">
<![CDATA[
void Tr69ConnectionRequestResponderPrivate::contextInit()
{
    m_pContext = new Tr69ConnectionRequestResponderContext(*m_pParent, *this, *m_pRequest, *m_pResponse, this);
    m_pContext->SetObserver(SmQtObserver::GetInstance());

    QObject::connect(m_pContext,
        SIGNAL(end()),
        this,
        SLOT(contextEnd()));
}
]]></script>
    </p>
    <h4>
        Asynchronous context constructor with Boost</h4>
    <h5>
        Door.fsmcpp</h5>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;highlight : [2]">
<![CDATA[
  <settings asynchronous="true" library="boost">
    <description>Door</description>
    <object instance="door" class="DoorPrivate" include="DoorPrivate.h"/>
  </settings>
]]></script>
    </p>
    <h5>
        Boost asynchronous constructor declaration</h5>
    <p>
        <script type="syntaxhighlighter" class="brush: cpp;gutter: false;toolbar: true">
<![CDATA[
DoorContext(DoorPrivate& door, boost::asio::io_service &io_service);
]]></script>
    </p>
    <h5>
        Boost asynchronous context instantiation</h5>
    <p>
        <script type="syntaxhighlighter" class="brush: cpp;gutter: false;toolbar: true;highlight : [4]">
<![CDATA[
Door::Door(boost::asio::io_service &io_service)
{
    m_pPrivate = new DoorPrivate(); 
    m_pContext = new DoorContext(*m_pPrivate, io_service);
    m_pContext->SetObserver(SmBoostObserver::GetInstance());
    m_pContext->EnterInitialState();
}
]]></script>
    </p>
    <h4>
        Asynchronous context constructor with libev</h4>
    <h5>
        Blink.fsmcpp</h5>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;highlight : [2]">
<![CDATA[
    <settings asynchronous="true" library="libev">
        <object instance="blink" class="Blink" include="Blink.h"/>
    </settings> 
]]></script>
    </p>
    <h5>
        Libev asynchronous constructor declaration</h5>
    <p>
        <script type="syntaxhighlighter" class="brush: cpp;gutter: false;toolbar: true">
<![CDATA[
BlinkContext(Blink& blink, ev::default_loop &loop);
]]></script>
    </p>
    <h5>
        Libev context instantiation</h5>
    <p>
        <script type="syntaxhighlighter" class="brush: cpp;gutter: false;toolbar: true;highlight : [3]">
<![CDATA[
Blink::Blink(ev::default_loop &loop)
{
     m_pContext = new BlinkContext(*this, loop);
     m_pContext->SetObserver(SmAndroidObserver::GetInstance());
     m_pContext->EnterInitialState();
}
]]></script>
    </p>
    <h3>
        EnterInitialState</h3>
    <p>
        After the creation of an instance of the context, one may invoke the method <span
            class="code">EnterInitialState()</span> to call the <span class="code">OnEntry()</span>
        method from the root state to the initial state.
    </p>
    <p>
        Consider the Led state machine example:
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;highlight :3">
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
    <p>
        <script type="syntaxhighlighter" class="brush: cpp;gutter: false;toolbar: true;highlight : 6">
<![CDATA[
Led::Led()
{
    m_pPrivate = new LedPrivate();
    m_pContext = new LedContext(*m_pPrivate);
    m_pContext->SetObserver(fsm::ObserverStd::GetInstance());
    m_pContext->EnterInitialState();
}
]]></script>
    </p>
    <p>
        In this case, <span class="code">EnterInitialState()</span> will call <span class="code">
            ledPrivate.DoOff()</span> to make sure the led is switched off.
    </p>
    <h3>
        Context ending and final state</h3>
    <p>
        Final states are states which have the attribute <span class="code">kind</span>
        set to <span class="code">final</span>:
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;highlight :3">
<![CDATA[
<state name="End" kind="final"/>
]]></script>
    </p>
    <p>
        When the machine enters this final state, the context fires a callback to the application.
        How it is implemented depends if Qt, Boost or standard C++ is used.
    </p>
    <h4>
        Final state with Qt</h4>
    <p>
        In case Qt is used, the generated context has a signal <span class="code">end()</span>
        that is emitted when a final state is reached.
    </p>
    <p>
        Add a private slot in your application named for instance <span class="code">contextEnd()</span>
    </p>
    <p>
        Declaration:
        <script type="syntaxhighlighter" class="brush: cpp;gutter: false;toolbar: true">
<![CDATA[
private slots:
   void contextEnd();
]]></script>
    </p>
    <p>
        Implementation:
        <script type="syntaxhighlighter" class="brush: cpp;gutter: false;toolbar: true">
<![CDATA[
void Ping::contextEnd()
{
    printStatistics();
    QCoreApplication::exit(0);
}
]]></script>
    </p>
    <p>
        Connect this slot to context signal <span class="code">end()</span> in the constructor:
        <script type="syntaxhighlighter" class="brush: cpp;gutter: false;toolbar: true;highlight :4">
<![CDATA[
Ping::Ping() 
{
    m_pPingContext = new PingContext(*this);
    QObject::connect(m_pPingContext,
                     SIGNAL(end()),
                     this,
                     SLOT(contextEnd()));
}
]]></script>
    </p>
    <h4>
        Final state with Boost or STL</h4>
    <p>
        Make your application class inherits from the interface <span class="code">fsm::IManagement</span>
        which has one funtion <span class="code">OnEnd()</span> to implement:
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: cpp;gutter: false;toolbar: true;highlight :[1,9]">
<![CDATA[
class HelloWorld : public fsm::IManagement
{
public:
    HelloWorld();
    virtual ~HelloWorld();

  private
    /** Override fsm::IManagement::OnEnd()  */
    void OnEnd();

    void print(const string &message);
    HelloWorldContext *m_pContext;// Generated class
};
]]></script>
    </p>
    <p>
        After the context creation, set the management interface with the <span class="code">
            SetManagement</span> funtion and implement <span class="code">OnEnd()</span>
        <script type="syntaxhighlighter" class="brush: cpp;gutter: false;toolbar: true;highlight :[4,7]">
<![CDATA[
HelloWorld::HelloWorld()
{
    m_pContext = new HelloWorldContext(*this);
    m_pContext->SetManagement(this);
}

void HelloWorld::OnEnd()
{
    cout << "Hello world context has ended" << endl;
}
]]></script>
    </p>
</asp:Content>
