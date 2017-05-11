<%@ Page Language="C#" MasterPageFile="HelpCpp.master" AutoEventWireup="true" %>

<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="TitleContent">
    Build state machine examples for StateBuilderCpp on Linux
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="Makefile, linux, CMake, state machine examples,state machine example, state machine code generator, state machine compiler, state machine c++, state machine, c++, StateBuilderCpp" />
    <meta name="description" content="How to build state machine examples for StateBuilderCpp on Linux" />
</asp:Content>
<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Building state machine examples for StateBuilderCpp on Linux
    </h2>
    <h3>
        Requirements</h3>
    <p>
        First of all, make sure all the <a href="install-statebuildercpp-linux.aspx">
            required software are installed.</a>
    </p>
    <h3>
        <img alt="GnuLogo" src="/Content/Images/GnuLogo.png" height="32" width="32" />
        Makefile
    </h3>
    <ul>
        <li>Change to the directory where the libraries and examples will be build:
            <pre class="command"># cd $HOME/StateBuilderCpp/build/makefile</pre>
        </li>
        <li>Invoke <span class="file">gen-makefile.sh</span> which calls <span class="application">
            cmake</span> to generate the Makefiles
            <pre class="command"># ./gen-makefile.sh</pre>
        </li>
        <li>Invoke the <em>help</em> target to find out all available targets:
            <pre class="command"># make help</pre>
        </li>
    </ul>
</asp:Content>
