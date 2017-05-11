<%@ Page Language="C#" MasterPageFile="HelpCpp.master" AutoEventWireup="true" %>

<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="TitleContent">
    Build state machine examples for StateBuilderCpp on Max OSX
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="XCode, osx, CMake, state machine examples,state machine example, state machine code generator, state machine compiler, state machine c++, state machine, c++, StateBuilderCpp" />
    <meta name="description" content="How to build state machine examples for StateBuilderCpp on Mac OSX" />
</asp:Content>
<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Building state machine examples for StateBuilderCpp on MacOSX
    </h2>
    <h3>
        Requirements</h3>
    <p>
        First of all, <a href="http://www.cmake.org/cmake/resources/software.html">download
            and install CMake</a> in order to generate the XCode project or the Makefiles.
    </p>
    <p>
        The <span class="file">build</span> directory contains all the supported IDE: <span
            class="file">xcode</span> or <span class="file">makefile</span>.
    </p>
    <h3>
        <img alt="xcode" src="/Content/Images/XCodeIcon.png" height="32" width="32" />
        XCode
    </h3>
    <ul>
        <li>Change to the directory where the libraries and examples will be build:
            <pre class="command"># cd $HOME/StateBuilderCpp/build/xcode</pre>
        </li>
        <li>Invoke <span class="file">gen-xcode.sh</span> which calls <span class="application">
            cmake</span> to generate the <span class="application">Xcode</span> project file:
            <pre class="command"># ./gen-xcode.sh</pre>
        </li>
        <li>Start <span class="application">Finder</span> and locate the directory <span
            class="file">$HOME/StateBuilderCpp/build/xcode</span> </li>
        <li>Double click on <span class="file">StateBuilderCpp.xcodeproj</span> to start <span
            class="application">Xcode</span> </li>
    </ul>
    <h3>
        <img alt="GnuLogo" src="/Content/Images/GnuLogo.png" height="32" width="32" />
        Makefile
    </h3>
    <ul>
        <li>Change to the directory where the libraries and examples will be build:
            <pre class="command"># cd $HOME/StateBuilderCpp/build/makefile</pre>
        </li>
        <li>Invoke <span class="file">gen-makefile.sh</span> which calls <span class="application">cmake</span> to generate the
            Makefiles
            <pre class="command"># ./gen-makefile.sh</pre>
        </li>
        <li>Invoke the <em>help</em> target to find out all available targets:  <pre class="command"># make help</pre></li>
       
    </ul>
</asp:Content>
