// SimpleStateMachineFsm.cpp has been generated automatically by StateBuilderCpp 3.0
// Executable: 
// file:/C:/Users/frederic/AppData/Local/StateForge/StateBuilderCpp/bin/StateBuilderCpp.exe
// Command line options: 
//  C:/Users/frederic/Documents/projects/StateForge/dev/StateForgeWebSite/StateForgeWebSite/examples/cpp/SimpleStateMachine.fsmcpp
// Date: 16-ott-2015 16.13.31

// Includes
#include "SimpleStateMachineFsm.h"

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
const fsm::StateNameToId kStateNameToIdSimpleStateMachineContext[] = 
{
  {"Simple", 0},
  {"Idle", 1},
  {"Start", 2},
  {"ChangeSpeed", 3},
  {"Stop", 4},
  {NULL, 0}
};

// Transition names and ids
const fsm::TransitionNameToId kTransitionNameToIdSimpleStateMachineContext[] = 
{
  {"evStart", 0},
  {"evHalt", 3},
  {"evSetSpeed", 3},
  {NULL, 0}
};

// State Instantiation
static const SimpleStateMachineSimpleState kSimpleStateMachineSimpleState(kStateNameToIdSimpleStateMachineContext[0].pcName, 0);
static const SimpleStateMachineIdleState kSimpleStateMachineIdleState(kStateNameToIdSimpleStateMachineContext[1].pcName, 1);
static const SimpleStateMachineStartState kSimpleStateMachineStartState(kStateNameToIdSimpleStateMachineContext[2].pcName, 2);
static const SimpleStateMachineChangeSpeedState kSimpleStateMachineChangeSpeedState(kStateNameToIdSimpleStateMachineContext[3].pcName, 3);
static const SimpleStateMachineStopState kSimpleStateMachineStopState(kStateNameToIdSimpleStateMachineContext[4].pcName, 4);

/**************************************************************
  * Contexts implementations  
  *************************************************************/
/**************************************************************
  * Context SimpleStateMachineContext
  *************************************************************/
SimpleStateMachineContext::SimpleStateMachineContext(Action& action) : 
  fsm::Context<SimpleStateMachineSimpleState, SimpleStateMachineContext>()
  , m_action(action)
{
  SetName("SimpleStateMachineContext");
  SetInitialState(SimpleStateMachineIdleState::GetInstance());
}

SimpleStateMachineContext::~SimpleStateMachineContext(){}


const fsm::StateNameToId* SimpleStateMachineContext::GetStateNameToId()
{
  return kStateNameToIdSimpleStateMachineContext;
}

void SimpleStateMachineContext::EnterInitialState()
{
  fsm::WalkChainEntry<SimpleStateMachineContext, SimpleStateMachineSimpleState>(*this, &SimpleStateMachineSimpleState::GetInstance() , &GetState());
}

void SimpleStateMachineContext::LeaveCurrentState()
{
  fsm::WalkChainExit<SimpleStateMachineContext, SimpleStateMachineSimpleState>(*this, &GetState(), &SimpleStateMachineSimpleState::GetInstance());
}

// MainEvent synchronous events 
void SimpleStateMachineContext::evStart()
{
  GetState().evStart(*this);
}

void SimpleStateMachineContext::evSetSpeed()
{
  GetState().evSetSpeed(*this);
}

void SimpleStateMachineContext::evHalt()
{
  GetState().evHalt(*this);
}

// Timer start implementation

/**************************************************************
  * States implementations  
 **************************************************************/
/**************************************************************
 * State implementation for SimpleStateMachineSimpleState
 **************************************************************/

// State Constructor
SimpleStateMachineSimpleState::SimpleStateMachineSimpleState(const char* pName, int id) : fsm::State<SimpleStateMachineContext, SimpleStateMachineSimpleState>(pName, id)
{
}

// State Destructor
SimpleStateMachineSimpleState::~SimpleStateMachineSimpleState()
{
}

// State GetInstance
const SimpleStateMachineSimpleState& SimpleStateMachineSimpleState::GetInstance()
{
  return kSimpleStateMachineSimpleState;
}

// OnEntry
void SimpleStateMachineSimpleState::OnEntry(SimpleStateMachineContext &context) const
{
  // OnEntry for state SimpleStateMachineSimpleState
  fsm::IObserver *pObserver = context.GetObserver();
  if(pObserver){
    pObserver->OnEntry(context.GetName(), SimpleStateMachineSimpleState::GetInstance().GetName());
  }
}

// OnExit
void SimpleStateMachineSimpleState::OnExit(SimpleStateMachineContext &context) const
{
  // OnExit for state SimpleStateMachineSimpleState
  fsm::IObserver *pObserver = context.GetObserver();
  if(pObserver){
    pObserver->OnExit(context.GetName(), SimpleStateMachineSimpleState::GetInstance().GetName());
  }
}

// Events implementation for state  SimpleStateMachineSimpleState
void SimpleStateMachineSimpleState::evStart(SimpleStateMachineContext &context) const
{
  // 0 transition(s)
}

void SimpleStateMachineSimpleState::evSetSpeed(SimpleStateMachineContext &context) const
{
  // 0 transition(s)
}

void SimpleStateMachineSimpleState::evHalt(SimpleStateMachineContext &context) const
{
  // 0 transition(s)
}


/**************************************************************
 * State implementation for SimpleStateMachineIdleState
 **************************************************************/

// State Constructor
SimpleStateMachineIdleState::SimpleStateMachineIdleState(const char* pName, int id) : SimpleStateMachineSimpleState(pName, id)
{
  m_pStateParent = &SimpleStateMachineSimpleState::GetInstance();
}

// State Destructor
SimpleStateMachineIdleState::~SimpleStateMachineIdleState()
{
}

// State GetInstance
const SimpleStateMachineIdleState& SimpleStateMachineIdleState::GetInstance()
{
  return kSimpleStateMachineIdleState;
}

// OnEntry
void SimpleStateMachineIdleState::OnEntry(SimpleStateMachineContext &context) const
{
  // OnEntry for state SimpleStateMachineIdleState
  fsm::IObserver *pObserver = context.GetObserver();
  if(pObserver){
    pObserver->OnEntry(context.GetName(), SimpleStateMachineIdleState::GetInstance().GetName());
  }
}

// OnExit
void SimpleStateMachineIdleState::OnExit(SimpleStateMachineContext &context) const
{
  // OnExit for state SimpleStateMachineIdleState
  fsm::IObserver *pObserver = context.GetObserver();
  if(pObserver){
    pObserver->OnExit(context.GetName(), SimpleStateMachineIdleState::GetInstance().GetName());
  }
}

// Events implementation for state  SimpleStateMachineIdleState
void SimpleStateMachineIdleState::evStart(SimpleStateMachineContext &context) const
{
  // 1 transition(s)
  Action& action = context.getAction();
  context.SetTransitionName("evStart");
  fsm::ProcessTransitionPre<SimpleStateMachineContext, SimpleStateMachineSimpleState>(context, &SimpleStateMachineStartState::GetInstance());
  // No action to do
  fsm::ProcessTransitionPost<SimpleStateMachineContext, SimpleStateMachineSimpleState>(context, &SimpleStateMachineStartState::GetInstance());
  return;
}



/**************************************************************
 * State implementation for SimpleStateMachineStartState
 **************************************************************/

// State Constructor
SimpleStateMachineStartState::SimpleStateMachineStartState(const char* pName, int id) : SimpleStateMachineSimpleState(pName, id)
{
  m_pStateParent = &SimpleStateMachineSimpleState::GetInstance();
}

// State Destructor
SimpleStateMachineStartState::~SimpleStateMachineStartState()
{
}

// State GetInstance
const SimpleStateMachineStartState& SimpleStateMachineStartState::GetInstance()
{
  return kSimpleStateMachineStartState;
}

// OnEntry
void SimpleStateMachineStartState::OnEntry(SimpleStateMachineContext &context) const
{
  // OnEntry for state SimpleStateMachineStartState
  fsm::IObserver *pObserver = context.GetObserver();
  if(pObserver){
    pObserver->OnEntry(context.GetName(), SimpleStateMachineStartState::GetInstance().GetName());
  }
}

// OnExit
void SimpleStateMachineStartState::OnExit(SimpleStateMachineContext &context) const
{
  // OnExit for state SimpleStateMachineStartState
  fsm::IObserver *pObserver = context.GetObserver();
  if(pObserver){
    pObserver->OnExit(context.GetName(), SimpleStateMachineStartState::GetInstance().GetName());
  }
}

// Events implementation for state  SimpleStateMachineStartState
void SimpleStateMachineStartState::evHalt(SimpleStateMachineContext &context) const
{
  // 1 transition(s)
  Action& action = context.getAction();
  context.SetTransitionName("evHalt");
  fsm::ProcessTransitionPre<SimpleStateMachineContext, SimpleStateMachineSimpleState>(context, &SimpleStateMachineStopState::GetInstance());
  // No action to do
  fsm::ProcessTransitionPost<SimpleStateMachineContext, SimpleStateMachineSimpleState>(context, &SimpleStateMachineStopState::GetInstance());
  context.OnEnd();
  return;
}

void SimpleStateMachineStartState::evSetSpeed(SimpleStateMachineContext &context) const
{
  // 1 transition(s)
  Action& action = context.getAction();
  context.SetTransitionName("evSetSpeed");
  fsm::ProcessTransitionPre<SimpleStateMachineContext, SimpleStateMachineSimpleState>(context, &SimpleStateMachineChangeSpeedState::GetInstance());
  // No action to do
  fsm::ProcessTransitionPost<SimpleStateMachineContext, SimpleStateMachineSimpleState>(context, &SimpleStateMachineChangeSpeedState::GetInstance());
  return;
}



/**************************************************************
 * State implementation for SimpleStateMachineChangeSpeedState
 **************************************************************/

// State Constructor
SimpleStateMachineChangeSpeedState::SimpleStateMachineChangeSpeedState(const char* pName, int id) : SimpleStateMachineSimpleState(pName, id)
{
  m_pStateParent = &SimpleStateMachineSimpleState::GetInstance();
}

// State Destructor
SimpleStateMachineChangeSpeedState::~SimpleStateMachineChangeSpeedState()
{
}

// State GetInstance
const SimpleStateMachineChangeSpeedState& SimpleStateMachineChangeSpeedState::GetInstance()
{
  return kSimpleStateMachineChangeSpeedState;
}

// OnEntry
void SimpleStateMachineChangeSpeedState::OnEntry(SimpleStateMachineContext &context) const
{
  // OnEntry for state SimpleStateMachineChangeSpeedState
  fsm::IObserver *pObserver = context.GetObserver();
  if(pObserver){
    pObserver->OnEntry(context.GetName(), SimpleStateMachineChangeSpeedState::GetInstance().GetName());
  }
}

// OnExit
void SimpleStateMachineChangeSpeedState::OnExit(SimpleStateMachineContext &context) const
{
  // OnExit for state SimpleStateMachineChangeSpeedState
  fsm::IObserver *pObserver = context.GetObserver();
  if(pObserver){
    pObserver->OnExit(context.GetName(), SimpleStateMachineChangeSpeedState::GetInstance().GetName());
  }
}

// Events implementation for state  SimpleStateMachineChangeSpeedState
void SimpleStateMachineChangeSpeedState::evSetSpeed(SimpleStateMachineContext &context) const
{
  // 1 transition(s)
  Action& action = context.getAction();
  context.SetTransitionName("evSetSpeed");
  fsm::ProcessTransitionPre<SimpleStateMachineContext, SimpleStateMachineSimpleState>(context, &SimpleStateMachineChangeSpeedState::GetInstance());
  // No action to do
  fsm::ProcessTransitionPost<SimpleStateMachineContext, SimpleStateMachineSimpleState>(context, &SimpleStateMachineChangeSpeedState::GetInstance());
  return;
}

void SimpleStateMachineChangeSpeedState::evHalt(SimpleStateMachineContext &context) const
{
  // 1 transition(s)
  Action& action = context.getAction();
  context.SetTransitionName("evHalt");
  fsm::ProcessTransitionPre<SimpleStateMachineContext, SimpleStateMachineSimpleState>(context, &SimpleStateMachineStopState::GetInstance());
  // No action to do
  fsm::ProcessTransitionPost<SimpleStateMachineContext, SimpleStateMachineSimpleState>(context, &SimpleStateMachineStopState::GetInstance());
  context.OnEnd();
  return;
}



/**************************************************************
 * State implementation for SimpleStateMachineStopState
 **************************************************************/

// State Constructor
SimpleStateMachineStopState::SimpleStateMachineStopState(const char* pName, int id) : SimpleStateMachineSimpleState(pName, id)
{
  m_eStateKind = fsm::STATE_FINAL;
  m_pStateParent = &SimpleStateMachineSimpleState::GetInstance();
}

// State Destructor
SimpleStateMachineStopState::~SimpleStateMachineStopState()
{
}

// State GetInstance
const SimpleStateMachineStopState& SimpleStateMachineStopState::GetInstance()
{
  return kSimpleStateMachineStopState;
}

// OnEntry
void SimpleStateMachineStopState::OnEntry(SimpleStateMachineContext &context) const
{
  // OnEntry for state SimpleStateMachineStopState
  fsm::IObserver *pObserver = context.GetObserver();
  if(pObserver){
    pObserver->OnEntry(context.GetName(), SimpleStateMachineStopState::GetInstance().GetName());
  }
}

// OnExit
void SimpleStateMachineStopState::OnExit(SimpleStateMachineContext &context) const
{
  // OnExit for state SimpleStateMachineStopState
  fsm::IObserver *pObserver = context.GetObserver();
  if(pObserver){
    pObserver->OnExit(context.GetName(), SimpleStateMachineStopState::GetInstance().GetName());
  }
}

// Events implementation for state  SimpleStateMachineStopState
void SimpleStateMachineStopState::evStart(SimpleStateMachineContext &context) const
{
  // 0 transition(s)
}

void SimpleStateMachineStopState::evSetSpeed(SimpleStateMachineContext &context) const
{
  // 0 transition(s)
}

void SimpleStateMachineStopState::evHalt(SimpleStateMachineContext &context) const
{
  // 0 transition(s)
}




// Reenable some compiler warnings
#ifdef _MSC_VER
#pragma warning(pop)
#endif

