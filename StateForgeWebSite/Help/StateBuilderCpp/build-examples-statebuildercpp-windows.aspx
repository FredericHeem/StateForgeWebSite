<%@ Page Language="C#" MasterPageFile="HelpCpp.master" AutoEventWireup="true" %>

<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="TitleContent">
    Build state machine examples for StateBuilderCpp on Windows
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="state machine examples,state machine example, state machine code generator, state machine compiler, state machine c++, state machine, c++, StateBuilderCpp, visual studio, Mingw, CMake" />
    <meta name="description" content="How to build state machine examples for StateBuilderCpp on Windows" />
</asp:Content>
<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Building state machine examples for StateBuilderCpp on Windows
    </h2>
    <h3>
        Requirements</h3>
    <p>
        First of all, <a href="http://www.cmake.org/cmake/resources/software.html">download
            and install CMake</a> in order to generate the Visual Studio 2008/2010 or Makefile.
    </p>
    <p>
        The <span class="file">build</span> directory contains all the supported IDE: <span
            class="file">vs2008</span>, <span class="file">vs2010</span> or <span class="file">mingw</span>.
    </p>
    <h3>
        <img alt="vs2008" src="/Content/Images/vs2008icon.png" height="32" width="32" />
        Visual Studio 2008
    </h3>
    <ul>
        <li>On the desktop, click on the <span class="file">StateBuilderCpp</span> shortcut
            to open its directory.</li>
        <li>Change to the <span class="file">build\vs2008</span> directory.</li>
        <li>Double click on the batch file <span class="file">gen-vs2008.bat</span>.</li>
        <li>Double click on the newly created Visual Studio 2008 solution file <span class="file">
            StateBuilderCpp.sln</span></li>
    </ul>
    <pre class="command">
C:\Users\frederic\> cd %STATEBUILDERCPP_HOME%\build\vs2008
C:\Users\frederic\AppData\Local\StateForge\StateBuilderCpp\build\vs2008> gen-vs2008.bat
C:\Users\frederic\AppData\Local\StateForge\StateBuilderCpp\build\vs2008> StateBuilderCpp.sln</pre>
    <h3>
        <img alt="vs2010" src="/Content/Images/vs2010icon.png" height="32" width="32" />
        Visual Studio 2010
    </h3>
    <ul>
        <li>On the desktop, click on the <span class="file">StateBuilderCpp</span> shortcut
            to open its directory.</li>
        <li>Change to the <span class="file">build\vs2010</span> directory.</li>
        <li>Double click on the batch file <span class="file">gen-vs2010.bat</span>.</li>
        <li>Double click on the newly created Visual Studio 2010 solution file <span class="file">
            StateBuilderCpp.sln</span></li>
    </ul>
    <pre class="command">
C:\Users\frederic\> cd %STATEBUILDERCPP_HOME%\build\vs2010
C:\Users\frederic\AppData\Local\StateForge\StateBuilderCpp\build\vs2010> gen-vs2010.bat
C:\Users\frederic\AppData\Local\StateForge\StateBuilderCpp\build\vs2010> StateBuilderCpp.sln</pre>
    <h3>
        <img alt="GnuLogo" src="/Content/Images/GnuLogo.png" height="32" width="32" />
        MinGW
    </h3>
    <pre class="command">
C:\Users\frederic\> cd %STATEBUILDERCPP_HOME%\build\mingw
C:\Users\frederic\AppData\Local\StateForge\StateBuilderCpp\build\mingw> gen-makefile.bat
C:\Users\frederic\AppData\Local\StateForge\StateBuilderCpp\build\mingw> make</pre>
    <p>
        The <span class="file">Makefile</span> is created, to discover all the available
        targets, invoke the <em>help</em> target
    </p>
    <pre class="command">C:\Users\frederic\AppData\Local\StateForge\StateBuilderCpp\build\mingw> make help</pre>
</asp:Content>
