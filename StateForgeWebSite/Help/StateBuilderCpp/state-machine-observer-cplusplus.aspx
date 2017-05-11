<%@ Page Language="C#" MasterPageFile="HelpCpp.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="TitleContent">
    state machine observer in C++
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="MetaInfo">
    <meta name="keywords" content="state machine observer, observer pattern, state machine features,state machine code generator, state machine compiler, state machine c++, state machine, c++, StateBuilderCpp, state pattern, state machine pattern, state patterns" />
    <meta name="description" content="State machine observer in C++" />
</asp:Content>
<asp:Content ID="HeaderEpilogue" runat="server" ContentPlaceHolderID="HeaderEpilogue">
    <script type="text/javascript" src="/Content/js/syntaxhighlighter/scripts/shCore.js"></script>
    <script type="text/javascript" src="/Content/js/syntaxhighlighter/scripts/shBrushXml.js"></script>
    <script type="text/javascript" src="/Content/js/syntaxhighlighter/scripts/shBrushCpp.js"></script>
    <link href="/Content/js/syntaxhighlighter/styles/shCore.css" rel="stylesheet" type="text/css" />
    <link href="/Content/js/syntaxhighlighter/styles/shThemeDefault.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        SyntaxHighlighter.all()
    </script>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        State machine observer in C++
    </h2>
    <h3>
        Standard C++ Observer</h3>
    <p>
        The most basic observer is the console observer <span class="code">ObserverStd</span>
        which logs all messages to the standard output.
    </p>
    <p>
        Here is how to use the <span class="code">ObserverStd</span> singleton class:
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: cpp;gutter: false;toolbar: true;highlight : 7">
                    <![CDATA[
#include <ObserverStd.h>

Light::Light()
{
    m_pPrivate = new LightPrivate();
    m_pContext = new LightContext(*m_pPrivate);
    m_pContext->SetObserver(fsm::ObserverStd::GetInstance());
}
]]></script>
    </p>
    <h3>
        Qt Observer
    </h3>
    <p>
        A powerful observer is <span class="code">SmQtObserver</span> which can be found
        in <span class="file">examples/qt/SmQtUtils</span> it logs messages according to
        its configuratinon file. Messages can be sent to according to their level and towards
        the console and/or files.
    </p>
    <p>
        Here is how to use the <span class="code">SmQtObserver</span> singleton class:
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: cpp;gutter: false;toolbar: true;highlight : 20">
                    <![CDATA[
#include <QtCore/QCoreApplication>
#include <QtCore/QTimer>
#include <QtCore/QDebug>
#include <QtCore/QDir>

#include <QsLog.h>
#include <QsLogDest.h>

#include <SmQtObserver.h>

#include "TrafficLight.h"
#include "Light.h"
#include <TrafficLightFsm.h> // Generated header

TrafficLight::TrafficLight()
{
    logInit();
    m_pLight = new Light();
    m_pTrafficLightContext = new TrafficLightContext(*m_pLight);
    m_pTrafficLightContext->SetObserver(SmQtObserver::GetInstance());
}  

void TrafficLight::logInit()
{
   QCoreApplication *pApp = QCoreApplication::instance();
   QsLogging::Logger& logger = QsLogging::Logger::instance();
   logger.setLoggingLevel(QsLogging::TraceLevel);
   //Log to file
   const QString logPath(QDir(pApp->applicationDirPath()).filePath("Log.txt"));
   QsLogging::DestinationPtr fileDestination(
      QsLogging::DestinationFactory::MakeFileDestination(logPath) );
   logger.addDestination(fileDestination);
   //Log to standard output
   QsLogging::DestinationPtr debugDestination = QsLogging::DestinationFactory::MakeDebugOutputDestination();
   logger.addDestination(debugDestination);
}
]]></script>
    </p>
    <h3>
        Boost Observer
    </h3>
    <p>
        In case Boost is used as the underlying library, one may be interested in the <span
            class="code">SmBoostObserver</span> class which can be found in <span class="file">examples/boost/Utils</span>
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: cpp;gutter: false;toolbar: true;highlight : 12">
                    <![CDATA[
#include <SmBoostObserver.h>
#include "Door.h"
#include "DoorPrivate.h"
#include "DoorFsm.h"

using namespace std;

Door::Door(boost::asio::io_service &io_service)
{
    m_pPrivate = new DoorPrivate(); 
    m_pContext = new DoorContext(*m_pPrivate, io_service);
    m_pContext->SetObserver(SmBoostObserver::GetInstance());
}
]]></script>
    </p>
    <p>
        The following code shows how to configure the boost log library to deliver messages
        to standard output and a file:
    </p>
    <p>
        <script type="syntaxhighlighter" class="brush: cpp;gutter: false;toolbar: true">
                    <![CDATA[
#include <logging.hpp>
namespace bl = boost::logging;

void App::logInit()
{
  BOOST_LOG_INIT(("" >> (*new bl::time_element("%H:%M:%S.%f")) >> ","
                     >> bl::mask >> ","
                     >> (*new bl::pretty_function_name_element()) >> ":"
                     >> bl::line >> ":"
                     >> bl::trace
                     >> bl::eol)); // log format

  //Standard output
  bl::sink sinkStdOutput(&std::cout, BOOST_LOG_MASK_LEVEL_3);
  sinkStdOutput.attach_qualifier(bl::log);
  BOOST_LOG_ADD_OUTPUT_STREAM(sinkStdOutput);

  //File
  bl::sink sinkFile(new std::ofstream("./log.txt"), BOOST_LOG_MASK_LEVEL_4);
  sinkFile.attach_qualifier(bl::log);
  BOOST_LOG_ADD_OUTPUT_STREAM(sinkFile);
}

]]></script>
    </p>


</asp:Content>
