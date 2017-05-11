<%@ Page Language="C#" MasterPageFile="HelpJava.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="TitleContent">
    Build state machine examples in Java with Maven
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="state machine code generator, state machine compiler, state machine java, state machine java, java, state machine, state machine library, StateBuilderJava, build,  maven, pom.xml, fsm, finite state machine" />
    <meta name="description" content="Build state machine examples in Java with Maven" />
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
        Build state machine examples in Java with Maven
    </h2>
    <p>
        <span class="application">Maven</span> is a great software to build, test,
        package and install java programs.</p>
    <h3>
        Maven useful commands</h3>
    <p>
        Please find here a set of useful maven commands:</p>
    <p>
        First of all make sure <a target="_blank" href="http://maven.apache.org/">Maven</a>
        2 or 3 is installed correctly:
    </p>
    <pre class="command"># mvn --version</pre>
    <p>
        Change to the examples directory, e.g</p>
    <pre class="command"># cd C:\Users\frederic\AppData\Local\StateForge\StateBuilderJava\Examples</pre>
    <p>
        Compile the examples:</p>
    <pre class="command"># mvn compile</pre>
    <p>
        Create the jar:</p>
    <pre class="command"># mvn package</pre>
    <p>
        Test the examples:</p>
    <pre class="command"># mvn test</pre>
    <p>
        Clean all generated files:</p>
    <pre class="command"># mvn clean</pre>
    <p>
        Create an eclipse project:</p>
    <pre class="command"># mvn eclipse:eclipse</pre>
    <h3>
        pom.xml</h3>
    <p>
        They are 4 things to add to <span class="file">pom.xml</span> to integrate <span
            class="application">StateBuilderJava</span>:
    </p>
    <ul>
        <li>Add dependency to state machine library, line 11-15</li>
        <li>Add the state machine code generator maven plugin, line 33-44</li>
        <li>Where to download the code generator, line 48-51</li>
        <li>Where to download the library, line 54-57 </li>
    </ul>
    <p>
        <script type="syntaxhighlighter" class="brush: xml;gutter: true;toolbar: true;highlight: [11,12,13,14,15,33,34,35,36,37,38,39,40,41,42,43,44,48,49,50,51,54,55,56,57]">
                    <![CDATA[
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <groupId>com.stateforge.statemachine.examples</groupId>
    <artifactId>Led</artifactId>
    <version>1.1</version>
    <packaging>jar</packaging>
    <name>Led</name>
    <dependencies>
        <dependency>
            <groupId>com.stateforge</groupId>
            <artifactId>statemachine</artifactId>
            <version>1.1</version>
        </dependency>
        <dependency>
            <groupId>junit</groupId>
            <artifactId>junit</artifactId>
            <version>4.8.1</version>
            <scope>test</scope>
        </dependency>
    </dependencies>
    <build>
        <plugins>
            <plugin>
                <artifactId>maven-compiler-plugin</artifactId>
                <version>2.3.2</version>
                <configuration>
                    <source>1.6</source>
                    <target>1.6</target>
                </configuration>
            </plugin>
            <plugin>
                <groupId>com.stateforge.statebuilder.maven</groupId>
                <artifactId>maven-statebuilder-plugin</artifactId>
                <version>1.1</version>
                <executions>
                    <execution>
                        <goals>
                            <goal>generate</goal>
                        </goals>
                    </execution>
                </executions>
            </plugin>
        </plugins>
    </build>
    <pluginRepositories>
        <pluginRepository>
            <id>stateforge.com</id>
            <url>http://stateforge.com/repository</url>
        </pluginRepository>
    </pluginRepositories>
    <repositories>
        <repository>
            <id>stateforge.com</id>
            <url>http://stateforge.com/repository</url>
        </repository>
    </repositories>    
</project>
]]></script>
    </p>
</asp:Content>
