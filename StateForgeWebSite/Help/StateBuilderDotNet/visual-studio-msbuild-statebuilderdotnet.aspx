<%@ Page Language="C#" MasterPageFile="HelpDotNet.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="TitleContent">
    StateBuilderDotNet- Visual studio/MsBuild integration
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="state machine code generator, state machine compiler, state machine c#, dotnet, state machine, c#, install, msbuild, visual studio, StateBuilderDotNet" />
    <meta name="description" content="Integrate StateBuilderDotNet into Visual Studio and MSBuild" />
</asp:Content>
<asp:Content ID="HeaderEpilogue" runat="server" ContentPlaceHolderID="HeaderEpilogue">
    <script type="text/javascript" src="/Content/js/syntaxhighlighter/scripts/shCore.js"></script>
    <script type="text/javascript" src="/Content/js/syntaxhighlighter/scripts/shBrushXml.js"></script>
    <link href="/Content/js/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />
    <link href="/Content/js/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet"
        type="text/css" />
    <script type="text/javascript">
        SyntaxHighlighter.all()
    </script>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Integrate StateBuilderDotNet into Visual Studio and MSBuild
    </h2>
    <p>
        Here are the steps to integrate <span class="application">StateBuilderDotNet</span>
        into the Visual Studio/MsBuild build system:
    </p>
    <ul>
        <li>Close the current Visual studio Solution: File -> Close solution.</li>
        <li>Open the project file (i.e Light.csproj): File -> Open File.</li>
        <li>Add the following lines as child of the
            &lt;project&gt; tag: 
     <script type="syntaxhighlighter" class="brush: xml;gutter: false;toolbar: true;">
                    <![CDATA[
<PropertyGroup>
  <StateBuilderDotNetTargets>$(Registry:HKEY_CURRENT_USER\Software\StateForge\StateBuilderDotNet@InstallDir)/MsBuild/StateBuilderDotNet.targets</StateBuilderDotNetTargets>
</PropertyGroup>
<Import Project="$(StateBuilderDotNetTargets)" />
]]></script>
        </li>
        <li>Reopen the previously closed solution: File -> Recents projects and solutions.
        </li>
    </ul>
    <p>
    The target file <span class="file">StateBuilderDotNet.targets</span> is responsible of finding the code generator and the state machine library. 


    </p>
</asp:Content>
