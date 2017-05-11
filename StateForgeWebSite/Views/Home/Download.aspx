<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Download the state machine code generators for C#, Java and C++
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="download, state machine, finite state machine, state diagram, fsm, state pattern, code generator, finite automaton, c#, c++, java, state machine diagram, state chart, statechart" />
    <meta name="description" content="Download the state machine code generators for C#, Java and C++: StateBuilderDotNet, StateBuilderJava and StateBuilderCpp" />
</asp:Content>
<asp:Content ID="HeaderEpilogue" runat="server" ContentPlaceHolderID="HeaderEpilogue">
    <script type="text/javascript" src="/Content/js/yui/build/yahoo-dom-event/yahoo-dom-event.js"></script>
    <script type="text/javascript" src="/Content/js/yui/build/element/element-min.js"></script>
    <script type="text/javascript" src="/Content/js/yui/build/tabview/tabview-min.js"></script>
    <link href="/Content/Download.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="/Content/js/yui/build/tabview/assets/skins/sam/tabview.css" />
    <script type="text/javascript">
        var myTabs = new YAHOO.widget.TabView("downloadTabView", { orientation: "top" });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Download the state machine source code generators for C#, Java and C++</h2>
    <div class="yui-skin-sam">
        <div id="downloadTabView" class="yui-navset">
            <ul class="yui-nav">
                <li class="selected"><a href="#tabCS"><em>C#</em></a></li>
                <li><a href="#tabCpp"><em>C++ </em></a></li>
                <li><a href="#tabCpp"><em>Java </em></a></li>
            </ul>
            <div class="yui-content">
                <div id="tabCS">
                    <p>
                        <strong>StateBuilderDotNet</strong>: State machine code generator for C# and VB.NET</p>
                    <a title="StateBuilderDotNet - State machine code generator for C# and VB.NET" href="/Files/StateBuilderDotNet-Setup.msi"
                        class="download-win" onclick="_gaq.push(['_trackPageview', '/downloads/StateBuilderDotNet-Setup-Exe'])">
                        Download Binaries</a>
                     <br />
                    <a title="StateBuilderDotNet - source code" href="https://github.com/stateforge/StateBuilderDotNet"
                        class="download-github">
                        Source code</a>
                         <br />
                    <%--
                    <br />
                     <a href="/Files/StateBuilderDotNet-Setup.msi" onclick="_gaq.push(['_trackPageview', '/downloads/StateBuilderDotNet-Setup-Msi'])">
                        StateBuilderDotNet-Setup.msi </a>--%>
                    <p>
                        <span class="Version">Version: </span>3.0.0
                    </p>
                    <p>
                        <span class="Date">Release date: </span>2015/04/02</p>
                    <p>
                        <span class="SystemRequirements">System Requirements: </span>Visual Studio 2005/2008/2010/2012.
                        Framework .Net 4
                    </p>
                    <p>
                        <span class="OS">OS: </span>XP, Vista, Windows 7, Windows 8
                    </p>
                </div>
                <div id="tabCpp">
                    <p>
                        <strong>StateBuilderCpp</strong>: State machine code generator for C++</p>
                    <a title="StateBuilderCpp - State machine code generator for C++ - Windows XP/Vista/7"
                        href="/Files/StateBuilderCpp-WinSetup.exe" class="download-win" onclick="_gaq.push(['_trackPageview', '/downloads/StateBuilderCpp-WinSetup-Exe'])">
                        Download </a>
                    <br />
                    <a title="StateBuilderCpp - State machine code generator for C++ - Mac OSX" href="/Files/StateBuilderCpp-MacSetup.jar"
                        class="download-osx" onclick="_gaq.push(['_trackPageview', '/downloads/StateBuilderCpp-MacSetup-jar'])">
                        Download </a>
                    <br />
                    <a title="StateBuilderCpp - State machine code generator for C++ - Linux" href="/Files/StateBuilderCpp-LinuxSetup.jar"
                        class="download-linux" onclick="_gaq.push(['_trackPageview', '/downloads/StateBuilderCpp-LinuxSetup-jar'])">
                        Download </a>
                     <br />
                     <a title="StateBuilder - source code" href="https://github.com/stateforge/StateBuilder"
                        class="download-github">
                        Source code</a>
                         <br />
                    <p>
                        <span class="Version">Version: </span>3.0.0
                    </p>
                    <p>
                        <span class="Date">Release date: </span>2015/04/02</p>
                    <p>
                        <span class="SystemRequirements">System Requirements: </span>Java Runtime Environment
                        (JRE) 1.6+
                    </p>
                    <p>
                        <span class="Compilers">Supported compilers: </span>Visual Studio 2005/2008/2010
                        , GCC (Windows/OSX/Linux/Android), Clang
                    </p>
                    <p>
                        <span class="Suggests">Suggests: </span><a target="_blank" href="http://www.cmake.org">
                            CMake</a>, <a target="_blank" href="http://qt.nokia.com/products">Qt</a>, <a target="_blank"
                                href="http://www.boost.org/">Boost</a>
                    </p>
                </div>
                <div id="tabJava">
                    <p>
                        <strong>StateBuilderJava</strong>: State machine code generator for Java</p>
                    <a title="StateBuilderJava - State machine code generator for Java - Windows XP/Vista/7"
                        href="/Files/StateBuilderJava-WinSetup.jar" class="download-win" onclick="_gaq.push(['_trackPageview', '/downloads/StateBuilderJava-WinSetup-jar'])">
                        Download </a>
                    <br />
                    <a title="StateBuilderJava - State machine code generator for Java - Mac OSX" href="/Files/StateBuilderJava-MacSetup.jar"
                        class="download-osx" onclick="_gaq.push(['_trackPageview', '/downloads/StateBuilderJava-MacSetup-jar'])">
                        Download </a>
                    <br />
                    <a title="StateBuilderJava - State machine code generator for Java - Linux" href="/Files/StateBuilderJava-LinuxSetup.jar"
                        class="download-linux" onclick="_gaq.push(['_trackPageview', '/downloads/StateBuilderJava-LinuxSetup-jar'])">
                        Download </a>
                    <br />
                    <a title="StateBuilder - java source code" href="https://github.com/stateforge/StateBuilder"
                        class="download-github">
                        Source code</a>
                         <br />
                    <p>
                        <span class="Version">Version: </span>3.6.0
                    </p>
                    <p>
                        <span class="Date">Date: </span>2015/04/02</p>
                    <p>
                        <span class="SystemRequirements">System Requirements: </span>Java Development Kit
                        1.6+
                    </p>
                    <p>
                        <span class="Suggests">Suggests: </span><a target="_blank" href="http://maven.apache.org/">
                            Maven</a> or <a target="_blank" href="http://ant.apache.org/">Ant</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
    
    <p>
        Each development kit contains the state machine code generator for the given target
        language, a state machine library needed by the generated code, examples, documentation
        and all the build system integration files.</p>
    <p>
        The desktop version of the <strong>State Diagram Editor</strong> is included is
        all Windows installers.</p>
</asp:Content>
