<%@ Page Language="C#" MasterPageFile="HelpMain.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="TitleContent">
    state machine observer
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="state machine observer, observer pattern, state machine features,state machine code generator, state machine compiler, state machine c#, state machine, c#, StateBuilderDotNet, state pattern, state machine pattern, state patterns" />
    <meta name="description" content="State machine observer" />
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        State machine observer
    </h2>
    <p>
        An observer can be attached to the state machine to report what is happening. Debugging
        becomes much easier when the state machine is observable.
    </p>
    <p>
        For each target language, some observers are already written and ready to use. However
        it is also possible to write your own observer by implementing the <span class="code">
            IObserver</span> interface.
    </p>
    <p>
        <img alt="IObserver" src="/Content/Images/IObserver.png" />
    </p>
    <p>
        Discover how to use the observers depending on the target language:
    </p>
    <ul>
        <li><a href="StateBuilderCpp/state-machine-observer-cplusplus.aspx">Observers in C++</a></li>
        <li><a href="StateBuilderDotNet/state-machine-observer-dotnet.aspx">Observers in C#</a></li>
        <li><a href="StateBuilderJava/state-machine-observer-java.aspx">Observers in Java</a></li>
    </ul>
</asp:Content>
