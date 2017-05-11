<%@ Page Language="C#" MasterPageFile="HelpCpp.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="TitleContent">
    Download, install and run StateBuilderCpp for Mac OSX
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="state machine code generator, state machine compiler, state machine c++, state machine, c++, install, download, StateBuilderCpp" />
    <meta name="description" content="Install and download StateBuilderCpp for Mac OSX, the state machine code generator for C++" />
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="MainContent">
    <h2 class="header-osx">
        Download, install and run StateBuilderCpp on Mac OSX
    </h2>
    <h3>
        Download</h3>
    <ul>
        <li>Download and run the setup file <a title="StateBuilderCpp - State machine code generator for C++ - Mac OSX"
            href="/Files/StateBuilderCpp-MacSetup.jar" onclick="_gaq.push(['_trackPageview', '/downloads/StateBuilderCpp-MacSetup-jar'])">
            StateBuilderCpp-MacSetup.jar</a> </li>
        <li>To generate the XCode project file, <a href="http://www.cmake.org/cmake/resources/software.html">
            download and install CMake</a></li>
    </ul>
    <p>
        By default, <span class="application">StateBuilderCpp</span> is installed in the
        user directory, e.g <span class="file">/Users/frederic/StateBuilderCpp</span></p>
    <h3>
        Setup environment variables</h3>
    <p>
        Setting the environment variable <span class="envvar">$STATEBUILDERCPP_HOME</span>
        is not necessary when building with <span class="application">cmake</span></p>
    <ul>
        <li>Start a terminal and open the file <span class="file">$HOME/.bash_login</span>
            <pre class="command"># open .bash_login</pre>
        </li>
        <li>Add these 2 commands:
            <pre class="command">
export STATEBUILDERCPP_HOME=$HOME/StateBuilderCpp
export PATH=$STATEBUILDERCPP_HOME/bin:$PATH</pre>
        </li>
        <li>Open a new terminal and run the shell script <span class="file">StateBuilderCpp.sh</span>
            with the help option
            <pre class="command">
$ StateBuilderCpp.sh --help
usage: StateBuilderCpp [option] myStateMachine.fsmcpp 
 -d,--directory arg        Output directory
 -h,--help                 Show help
 -L,--lock                 Add code for multithreaded state machine
 -o,--no-observer          No observer code will be generated
 -p,--prepend-file arg     Prepend file, e.g Copyright
 -v,--version              Show version
</pre>
        </li>
    </ul>
    <h3>
        What's next ?</h3>
    <p>
        Have a look at <a href="build-examples-statebuildercpp-macosx.aspx">how to build the
            state machine examples on Mac OSX</a>
    </p>
</asp:Content>
