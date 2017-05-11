<%@ Page Language="C#" MasterPageFile="HelpCpp.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="TitleContent">
    Setup StateBuilderCpp build system to use Qt on Windows
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="download, qt, windows, visual studio, StateBuilderCpp" />
    <meta name="description" content=" Setup StateBuilderCpp build system to use Qt on Windows" />
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Setup the StateBuilderCpp build system to use Qt 4.7.3 on Windows
    </h2>
    <p>
        Here are the steps to prepare the <span class="application">StateBuilderCpp</span>
        build system to use Qt.
    </p>
    <h3>
        Qt for Visual Studio 2008
    </h3>
    <ul>
        <li>Download and install the <a href="http://qt.nokia.com/downloads/windows-cpp-vs2008">
            Qt libraries compiled with Visual Studio</a></li>
        <li>Edit <span class="file">%STATEBUILDERCPP_HOME%\build\vs2008\qt-env.bat</span> and set
            the correct path and version:
            <pre class="command">
set QTDIR=C:\Qt\4.7.3
set PATH=%QTDIR%\bin;%PATH%
</pre>
        </li>
    </ul>
    <h3>
        Qt for MinGw</h3>
    <ul>
        <li>Download and install the <a href="http://qt.nokia.com/downloads/sdk-windows-cpp">
            Qt libraries compiled with MinGW</a></li>
        <li>Edit <span class="file">%STATEBUILDERCPP_HOME%\build\mingw\qt-env.bat</span> and
            set the correct path and version:
            <pre class="command">
set QTDIR=C:\QtSDK\Desktop\Qt\4.7.3
set PATH=%QTDIR%\mingw\bin;%PATH%
</pre>
        </li>
    </ul>
</asp:Content>
