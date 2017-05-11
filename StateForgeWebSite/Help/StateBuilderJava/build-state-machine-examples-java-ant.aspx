<%@ Page Language="C#" MasterPageFile="HelpJava.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="TitleContent">
    Build state machine examples in Java with Ant
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="ant, build.xml, state machine code generator, state machine compiler, state machine java, state machine java, java, state machine, state machine library, StateBuilderJava, build, fsm, finite state machine" />
    <meta name="description" content="Build state machine examples in Java with Ant" />
</asp:Content>
<asp:Content ID="HeaderEpilogue" runat="server" ContentPlaceHolderID="HeaderEpilogue">
    <script type="text/javascript" src="/Content/js/syntaxhighlighter/scripts/shCore.js"></script>
    <script type="text/javascript" src="/Content/js/syntaxhighlighter/scripts/shBrushXml.js"></script>
    <link href="/Content/js/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />
    <link href="/Content/js/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        SyntaxHighlighter.all()
    </script>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Build state machine examples in Java with Ant
    </h2>
    <p>An example of a <span class="file">build.xml</span> file for <span class="application">Ant</span> can be found in the HelloWord example</p>
        <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: true;toolbar: true;highlight: [8,11,12,23,24,25,26,27,28,29,30,31,36]">
                    <![CDATA[
<?xml version="1.0" encoding="UTF-8"?>
<project name="HelloWorld" default="package" basedir=".">
    <property name="build.srcDir" value="${basedir}/src/main/java"/>
    <property name="build.target" value="${basedir}/target"/>
    <property name="build.outputDir" value="${build.target}/classes"/>
    <property name="build.finalName" value="HelloWorld-1.0.0"/>

    <property name="statebuilder.dir" value="${user.home}/AppData/Local/StateForge/StateBuilderJava"/>
    <!-- TODO: for linux and mac, adjust the following path: -->
    <!--<property name="statebuilder.dir" value="${user.home}/StateBuilderJava"/>-->
    <property name="statebuilder-ant-task.jar" value="${statebuilder.dir}/lib/statebuilder-ant-task-1.1.jar"/>
    <property name="statemachine.jar" value="${statebuilder.dir}/lib/statemachine-1.1.jar"/>
    
    <property name="statemachine.input.dir" value="${basedir}/src/main/statemachine"/>
    <property name="statemachine.output.dir" value="${build.target}/generated-sources/statebuilder"/>
   
    <path id="build.classpath">
        <pathelement location="${statemachine.jar}"/>
    </path>
    
    <!-- ====================================================================== -->
    <!-- StateBuilder target                                                    -->
    <!-- ====================================================================== -->
    <target name="StateBuilder" description="Generate the state machine Java source code from Xml description">
        <mkdir dir="${build.target}"/>
        <taskdef name="StateBuilder"
	             classpath="${statebuilder-ant-task.jar}"
				 classname="com.stateforge.statebuilder.ant.StateBuilderAntTask"/>

        <StateBuilder input="${statemachine.input.dir}"
                      output="${statemachine.output.dir}"/>
    </target>
    
    <!-- ====================================================================== -->
    <!-- Compile target                                                         -->
    <!-- ====================================================================== -->
    <target name="compile" depends="StateBuilder" description="Compiles the java source code">
        <mkdir dir="${build.outputDir}"/>

        <javac destdir="${build.outputDir}">
            <src path="${build.srcDir}"/>
            <src path="${statemachine.output.dir}"/>
            <classpath refid="build.classpath"/>
        </javac>
    </target>

    <!-- ====================================================================== -->
    <!-- Package target                                                         -->
    <!-- ====================================================================== -->
    <target name="package" depends="compile" description="Package the application">
        <jar jarfile="${build.target}/${build.finalName}.jar"
             compress="true"
             index="false"
             basedir="${build.outputDir}"
             excludes="**/package.html"/>
    </target>
    
    <!-- ====================================================================== -->
    <!-- Cleaning up target                                                     -->
    <!-- ====================================================================== -->
    <target name="clean" description="Clean the output directory">
        <delete dir="${build.target}"/>
    </target>    
</project>
]]></script>
    </p>
</asp:Content>
