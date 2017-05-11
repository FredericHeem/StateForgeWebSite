<%@ Page Language="C#" MasterPageFile="HelpCpp.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="TitleContent">
    Download, install and run StateBuilderCpp on Linux
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="state machine code generator, state machine compiler, state machine c++, state machine, c++, install, download, StateBuilderCpp" />
    <meta name="description" content="Install, download and run StateBuilderCpp on Linux, the state machine code generator for C++" />
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="MainContent">
    <h2 class="header-linux">
        Download, install and run StateBuilderCpp on Linux
    </h2>
    <p>
    </p>
    <h3>
        Requirements</h3>
    <p>
        Please find below a one line command to install all the dependencies: <span class="application">
            g++</span>, <span class="application">Java</span>, <span class="application">CMake</span>,
        <span class="application">Boost</span> and <span class="application">Qt</span></p>
    <p>
        Actually, either <span class="application">Qt</span> or <span class="application">Boost</span>
        is required in case of asynchronous or multithreaded state machine.</p>
    <p>
    </p>
    <ul>
        <li>
            <img alt="Ubuntu" src="/Content/Images/Ubuntu-icon.png" />Ubuntu 12-04
            <pre class="command"># sudo apt-get install build-essential libqt4-dev cmake openjdk-7-jre-headless</pre>
            <pre class="command"># sudo apt-get install libboost-dev libboost-thread-dev libboost-filesystem-dev libboost-date-time-dev</pre>
       
        </li>
        <li>
            <img alt="Ubuntu" src="/Content/Images/Ubuntu-icon.png" />Ubuntu 10.04
            <pre class="command"># sudo apt-get install openjdk-6-jre build-essential libqt4-dev libboost-dev cmake</pre>
        </li>
        <li>
            <img alt="Redhat" src="/Content/Images/Redhat-icon.png" /><img alt="Fedora" src="/Content/Images/Fedora-icon.png" />
            RedHat/Fedora
            <pre class="command">
# su -
# yum install java gcc-c++ qt-devel boost-devel cmake</pre>
        </li>
    </ul>
    <h3>
        Download &amp; Install</h3>
    <ul>
        <li>Download the setup file <a title="StateBuilderCpp - State machine code generator for C++ - Linux"
            href="/Files/StateBuilderCpp-LinuxSetup.jar" onclick="_gaq.push(['_trackPageview', '/downloads/StateBuilderCpp-LinuxSetup-jar'])">
            StateBuilderCpp-LinuxSetup.jar</a></li>
        <li>Open a terminal and change to the directory where <span class="file">StateBuilderCpp-LinuxSetup.jar</span>
            was downloaded</li>
        <li>Run the setup with the following command:
            <pre class="command"># java -jar StateBuilderCpp-LinuxSetup.jar</pre>
        </li>
    </ul>
    <p>
        By default, <span class="application">StateBuilderCpp</span> is installed in the
        user directory, e.g <span class="file">/home/frederic/StateBuilderCpp</span>
    </p>
    <h3>
        Setup environment variables</h3>
    <p>
        Eventually set the environment variable <span class="envvar">$STATEBUILDERCPP_HOME</span>
        and add <span class="file">$STATEBUILDERCPP_HOME/bin</span> to your <span class="envvar">
            $PATH</span></p>
    <ul>
        <li>Start a terminal and open the file <span class="file">$HOME/.bashrc</span>
            <pre class="command"># gedit $HOME/.bashrc</pre>
        </li>
        <li>Add these 2 commands:
            <pre class="command">
export STATEBUILDERCPP_HOME=$HOME/StateBuilderCpp
export PATH=$STATEBUILDERCPP_HOME/bin:$PATH</pre>
        </li>
    </ul>
    <h3>
        What's next ?</h3>
    <p>
        Have a look at <a href="build-examples-statebuildercpp-linux.aspx">how to build the
            state machine examples on Linux</a>
    </p>
</asp:Content>
