// SimpleFsm.cpp has been generated automatically by StateBuilderCpp 3.0
// Executable: 
// file:/C:/Users/frederic/AppData/Local/StateForge/StateBuilderCpp/bin/StateBuilderCpp.exe
// Command line options: 
//  C:/Users/frederic/Documents/projects/StateForge/dev/StateForgeWebSite/StateForgeWebSite/examples/cpp/Simple.fsmcpp
// Date: 16-ott-2015 19.17.30

// Includes
#include "SimpleFsm.h"

#include <fsm/Fsm.hpp>
#include <Action.h>

// Disable some MS compiler warnings
#ifdef _MSC_VER
#pragma warning(push)
#pragma warning(disable:4355) // 'this' : used in base member initialiser list
#pragma warning(disable:4189) // local variable is initialised but not referenced
#pragma warning(disable:4100) // unreferenced formal parameter
#endif

// Disable some GCC compiler warnings
#if ((__GNUC__ * 100) + __GNUC_MINOR__) >= 402
#pragma GCC diagnostic ignored "-Wunused-variable"
#endif

// State names and ids
const fsm::StateNameToId kStateNameToIdSimpleContext[] = 
{
  {"Root", 0},
  {"Idle", 1},
  {"Start", 2},
  {"ChangeSpeed", 3},
  {"Stop", 4},
  {NULL, 0}
};

// Transition names and ids
const fsm::TransitionNameToId kTransitionNameToIdSimpleContext[] = 
{
  {"evStart", 0},
  {"evHalt", 3},
  {"evSetSpeed", 3},
  {NULL, 0}
};

// State Instantiation
static const SimpleRootState kSimpleRootState(kStateNameToIdSimpleContext[0].pcName, 0);
static const SimpleIdleState kSimpleIdleState(kStateNameToIdSimpleContext[1].pcName, 1);
static const SimpleStartState kSimpleStartState(kStateNameToIdSimpleContext[2].pcName, 2);
static const SimpleChangeSpeedState kSimpleChangeSpeedState(kStateNameToIdSimpleContext[3].pcName, 3);
static const SimpleStopState kSimpleStopState(kStateNameToIdSimpleContext[4].pcName, 4);

/**************************************************************
  * Contexts implementations  
  *************************************************************/
/**************************************************************
  * Context SimpleContext
  *************************************************************/
SimpleContext::SimpleContext(Action& action) : 
  fsm::Context<SimpleRootState, SimpleContext>()
  , m_action(action)
{
  SetName("SimpleContext");
  SetInitialState(SimpleIdleState::GetInstance());
}

SimpleContext::~SimpleContext(){}


const fsm::StateNameToId* SimpleContext::GetStateNameToId()
{
  return kStateNameToIdSimpleContext;
}

void SimpleContext::EnterInitialState()
{
  fsm::WalkChainEntry<SimpleContext, SimpleRootState>(*this, &SimpleRootState::GetInstance() , &GetState());
}

void SimpleContext::LeaveCurrentState()
{
  fsm::WalkChainExit<SimpleContext, SimpleRootState>(*this, &GetState(), &SimpleRootState::GetInstance());
}

// MainEvent synchronous events 
void SimpleContext::evStart()
{
  GetState().evStart(*this);
}

void SimpleContext::evSetSpeed()
{
  GetState().evSetSpeed(*this);
}

void SimpleContext::evHalt()
{
  GetState().evHalt(*this);
}

// Timer start implementation

/**************************************************************
  * States implementations  
 **************************************************************/
/**************************************************************
 * State implementation for SimpleRootState
 **************************************************************/

// State Constructor
SimpleRootState::SimpleRootState(const char* pName, int id) : fsm::State<SimpleContext, SimpleRootState>(pName, id)
{
}

// State Destructor
SimpleRootState::~SimpleRootState()
{
}

// State GetInstance
const SimpleRootState& SimpleRootState::GetInstance()
{
  return kSimpleRootState;
}

// OnEntry
void SimpleRootState::OnEntry(SimpleContext &context) const
{
  // OnEntry for state SimpleRootState
  fsm::IObserver *pObserver = context.GetObserver();
  if(pObserver){
    pObserver->OnEntry(context.GetName(), SimpleRootState::GetInstance().GetName());
  }
}

// OnExit
void SimpleRootState::OnExit(SimpleContext &context) const
{
  // OnExit for state SimpleRootState
  fsm::IObserver *pObserver = context.GetObserver();
  if(pObserver){
    pObserver->OnExit(context.GetName(), SimpleRootState::GetInstance().GetName());
  }
}

// Events implementation for state  SimpleRootState
void SimpleRootState::evStart(SimpleContext &context) const
{
  // 0 transition(s)
}

void SimpleRootState::evSetSpeed(SimpleContext &context) const
{
  // 0 transition(s)
}

void SimpleRootState::evHalt(SimpleContext &context) const
{
  // 0 transition(s)
}


/**************************************************************
 * State implementation for SimpleIdleState
 **************************************************************/

// State Constructor
SimpleIdleState::SimpleIdleState(const char* pName, int id) : SimpleRootState(pName, id)
{
  m_pStateParent = &SimpleRootState::GetInstance();
}

// State Destructor
SimpleIdleState::~SimpleIdleState()
{
}

// State GetInstance
const SimpleIdleState& SimpleIdleState::GetInstance()
{
  return kSimpleIdleState;
}

// OnEntry
void SimpleIdleState::OnEntry(SimpleContext &context) const
{
  // OnEntry for state SimpleIdleState
  fsm::IObserver *pObserver = context.GetObserver();
  if(pObserver){
    pObserver->OnEntry(context.GetName(), SimpleIdleState::GetInstance().GetName());
  }
}

// OnExit
void SimpleIdleState::OnExit(SimpleContext &context) const
{
  // OnExit for state SimpleIdleState
  fsm::IObserver *pObserver = context.GetObserver();
  if(pObserver){
    pObserver->OnExit(context.GetName(), SimpleIdleState::GetInstance().GetName());
  }
}

// Events implementation for state  SimpleIdleState
void SimpleIdleState::evStart(SimpleContext &context) const
{
  // 1 transition(s)
  Action& action = context.getAction();
  context.SetTransitionName("evStart");
  fsm::ProcessTransitionPre<SimpleContext, SimpleRootState>(context, &SimpleStartState::GetInstance());
  // No action to do
  fsm::ProcessTransitionPost<SimpleContext, SimpleRootState>(context, &SimpleStartState::GetInstance());
  return;
}



/**************************************************************
 * State implementation for SimpleStartState
 **************************************************************/

// State Constructor
SimpleStartState::SimpleStartState(const char* pName, int id) : SimpleRootState(pName, id)
{
  m_pStateParent = &SimpleRootState::GetInstance();
}

// State Destructor
SimpleStartState::~SimpleStartState()
{
}

// State GetInstance
const SimpleStartState& SimpleStartState::GetInstance()
{
  return kSimpleStartState;
}

// OnEntry
void SimpleStartState::OnEntry(SimpleContext &context) const
{
  // OnEntry for state SimpleStartState
  fsm::IObserver *pObserver = context.GetObserver();
  if(pObserver){
    pObserver->OnEntry(context.GetName(), SimpleStartState::GetInstance().GetName());
  }
}

// OnExit
void SimpleStartState::OnExit(SimpleContext &context) const
{
  // OnExit for state SimpleStartState
  fsm::IObserver *pObserver = context.GetObserver();
  if(pObserver){
    pObserver->OnExit(context.GetName(), SimpleStartState::GetInstance().GetName());
  }
}

// Events implementation for state  SimpleStartState
void SimpleStartState::evHalt(SimpleContext &context) const
{
  // 1 transition(s)
  Action& action = context.getAction();
  context.SetTransitionName("evHalt");
  fsm::ProcessTransitionPre<SimpleContext, SimpleRootState>(context, &SimpleStopState::GetInstance());
  // No action to do
  fsm::ProcessTransitionPost<SimpleContext, SimpleRootState>(context, &SimpleStopState::GetInstance());
  context.OnEnd();
  return;
}

void SimpleStartState::evSetSpeed(SimpleContext &context) const
{
  // 1 transition(s)
  Action& action = context.getAction();
  context.SetTransitionName("evSetSpeed");
  fsm::ProcessTransitionPre<SimpleContext, SimpleRootState>(context, &SimpleChangeSpeedState::GetInstance());
  // No action to do
  fsm::ProcessTransitionPost<SimpleContext, SimpleRootState>(context, &SimpleChangeSpeedState::GetInstance());
  return;
}



/**************************************************************
 * State implementation for SimpleChangeSpeedState
 **************************************************************/

// State Constructor
SimpleChangeSpeedState::SimpleChangeSpeedState(const char* pName, int id) : SimpleRootState(pName, id)
{
  m_pStateParent = &SimpleRootState::GetInstance();
}

// State Destructor
SimpleChangeSpeedState::~SimpleChangeSpeedState()
{
}

// State GetInstance
const SimpleChangeSpeedState& SimpleChangeSpeedState::GetInstance()
{
  return kSimpleChangeSpeedState;
}

// OnEntry
void SimpleChangeSpeedState::OnEntry(SimpleContext &context) const
{
  // OnEntry for state SimpleChangeSpeedState
  fsm::IObserver *pObserver = context.GetObserver();
  if(pObserver){
    pObserver->OnEntry(context.GetName(), SimpleChangeSpeedState::GetInstance().GetName());
  }
}

// OnExit
void SimpleChangeSpeedState::OnExit(SimpleContext &context) const
{
  // OnExit for state SimpleChangeSpeedState
  fsm::IObserver *pObserver = context.GetObserver();
  if(pObserver){
    pObserver->OnExit(context.GetName(), SimpleChangeSpeedState::GetInstance().GetName());
  }
}

// Events implementation for state  SimpleChangeSpeedState
void SimpleChangeSpeedState::evSetSpeed(SimpleContext &context) const
{
  // 1 transition(s)
  Action& action = context.getAction();
  context.SetTransitionName("evSetSpeed");
  fsm::ProcessTransitionPre<SimpleContext, SimpleRootState>(context, &SimpleChangeSpeedState::GetInstance());
  // No action to do
  fsm::ProcessTransitionPost<SimpleContext, SimpleRootState>(context, &SimpleChangeSpeedState::GetInstance());
  return;
}

void SimpleChangeSpeedState::evHalt(SimpleContext &context) const
{
  // 1 transition(s)
  Action& action = context.getAction();
  context.SetTransitionName("evHalt");
  fsm::ProcessTransitionPre<SimpleContext, SimpleRootState>(context, &SimpleStopState::GetInstance());
  // No action to do
  fsm::ProcessTransitionPost<SimpleContext, SimpleRootState>(context, &SimpleStopState::GetInstance());
  context.OnEnd();
  return;
}



/**************************************************************
 * State implementation for SimpleStopState
 **************************************************************/

// State Constructor
SimpleStopState::SimpleStopState(const char* pName, int id) : SimpleRootState(pName, id)
{
  m_eStateKind = fsm::STATE_FINAL;
  m_pStateParent = &SimpleRootState::GetInstance();
}

// State Destructor
SimpleStopState::~SimpleStopState()
{
}

// State GetInstance
const SimpleStopState& SimpleStopState::GetInstance()
{
  return kSimpleStopState;
}

// OnEntry
void SimpleStopState::OnEntry(SimpleContext &context) const
{
  // OnEntry for state SimpleStopState
  fsm::IObserver *pObserver = context.GetObserver();
  if(pObserver){
    pObserver->OnEntry(context.GetName(), SimpleStopState::GetInstance().GetName());
  }
}

// OnExit
void SimpleStopState::OnExit(SimpleContext &context) const
{
  // OnExit for state SimpleStopState
  fsm::IObserver *pObserver = context.GetObserver();
  if(pObserver){
    pObserver->OnExit(context.GetName(), SimpleStopState::GetInstance().GetName());
  }
}

// Events implementation for state  SimpleStopState
void SimpleStopState::evStart(SimpleContext &context) const
{
  // 0 transition(s)
}

void SimpleStopState::evSetSpeed(SimpleContext &context) const
{
  // 0 transition(s)
}

void SimpleStopState::evHalt(SimpleContext &context) const
{
  // 0 transition(s)
}




// Reenable some compiler warnings
#ifdef _MSC_VER
#pragma warning(pop)
#endif

