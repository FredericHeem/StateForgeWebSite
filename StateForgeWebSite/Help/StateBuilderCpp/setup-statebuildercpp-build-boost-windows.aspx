<%@ Page Language="C#" MasterPageFile="HelpCpp.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="TitleContent">
    Setup StateBuilderCpp build system to use Boost on Windows
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="download, boost, windows, visual studio, StateBuilderCpp" />
    <meta name="description" content="Setup StateBuilderCpp build system to use Boost on Windows" />
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Setup the StateBuilderCpp build system to use Boost on Windows
    </h2>
    <p>
        Here are the steps to prepare the <span class="application">StateBuilderCpp</span>
        build system to use Boost.
    </p>
    <h3>
        Download and install precompiled Boost libraries</h3>
    <ul>
        <li>Download the <a target="_blank" href="http://www.boostpro.com/download/">Boost precompiled
            libraries from boostpro</a> </li>
        <li>Choose the following libraries:
            <ul>
                <li>DateTime</li>
                <li>FileSystem</li>
                <li>Regex</li>
                <li>System </li>
                <li>Thread</li>
            </ul>
        </li>
    </ul>
    <h3>
        Setup the build system to locate Boost
    </h3>
    <ul>
        <li>Edit <span class="file">%STATEBUILDERCPP_HOME%\build\boost-env.bat</span> and set
            <span class="envvar">%BOOST_ROOT%</span> accordingly
            <pre class="command">
set BOOST_ROOT=C:\Program Files (x86)\boost\boost_1_47
set PATH=%BOOST_ROOT%\lib;%PATH%
</pre>
        </li>
    </ul>
</asp:Content>
