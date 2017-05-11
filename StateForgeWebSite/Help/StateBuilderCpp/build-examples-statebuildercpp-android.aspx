<%@ Page Language="C#" MasterPageFile="HelpCpp.master" AutoEventWireup="true" %>

<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="TitleContent">
    Build state machine examples for StateBuilderCpp on Linux
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="Makefile, android, libev, state machine examples,state machine example, state machine code generator, state machine compiler, state machine c++, state machine, c++, StateBuilderCpp" />
    <meta name="description" content="How to build state machine examples with StateBuilderCpp targeted to Android" />
</asp:Content>
<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Building the C++ state machine example with the Android NDK
    </h2>
    <p>
        Android applications, especially games, can be written in native C/C++ thanks to
        the NDK, the native development kit.</p>
    <p>
        For this asynchronous state machine example, the generated code depends on <a href="http://software.schmorp.de/pkg/libev.html">
            libev</a>, an asynchronous library which can be easily cross-compiled as a static
        library. A copy of libev is provided in the example.</p>
    <p>
        Indeed, it is not always possible or desirable to depends on Qt or Boost, for codesize
        or cross-compilation issue.
    </p>
    <h3>
        Requirements:</h3>
    <p>
        Here are the requirements to build C++ Android applications:
    </p>
    <ul>
        <li><a href="http://developer.android.com/sdk/index.html">Android SDK</a> </li>
        <li><a href="http://developer.android.com/sdk/ndk/index.html">Android NDK</a> </li>
        <li><a href="http://www.eclipse.org/">Eclipse</a> </li>
        <li><a href="http://developer.android.com/sdk/eclipse-adt.html">ADT plugin for Eclipse</a>
        </li>
    </ul>
    <h3>
        Instructions:
    </h3>
    <ul>
        <li>Download the desired android platform with the <span style="font-style: italic">
            Android SDK Manager</span>.</li>
        <li>Make sure a virtual device has been created with the <span style="font-style: italic">
            Android Virtual Device Manager</span></li>
        <li>Change to the directory where the android example is located:
            <pre class="command"># cd $HOME/StateBuilderCpp/examples/libev/android/native-activity</pre>
        </li>
        <li>Edit the file <span class="file">default.properties</span> and set the android target
            that matche the platform</li>
        <li>Invoke <span class="file">ndk-build</span> to build the shared library
            <pre class="command"># ndk-build</pre>
        </li>
        <li>Create a new Android Application project within eclipse and import the android example
            directory</li>
        <li>The application is now ready to be executed on the virtual device: <span style="font-style: italic">
            Runs As: Android application</span></li>
        <li>Open the DDMS perspective and open the LogCat windows which shows the messages coming
            from the application</li>
    </ul>
</asp:Content>
