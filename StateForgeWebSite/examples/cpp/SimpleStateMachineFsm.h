// SimpleStateMachineFsm.h has been generated automatically by StateBuilderCpp 3.0
// Executable: 
// file:/C:/Users/frederic/AppData/Local/StateForge/StateBuilderCpp/bin/StateBuilderCpp.exe
// Command line options: 
//  C:/Users/frederic/Documents/projects/StateForge/dev/StateForgeWebSite/StateForgeWebSite/examples/cpp/SimpleStateMachine.fsmcpp
// Date: 16-ott-2015 16.13.31

#ifndef SIMPLESTATEMACHINEFSM_H
#define SIMPLESTATEMACHINEFSM_H


// Includes
#include <cstring>
#include <fsm/Fsm.h>

// Object classes forward declaration

// Context classes forward declaration
class SimpleStateMachineContext;
// Parallel classes forward declaration
// State classes forward declaration
class SimpleStateMachineStartState;
class SimpleStateMachineStopState;
class SimpleStateMachineIdleState;
class SimpleStateMachineChangeSpeedState;
class SimpleStateMachineSimpleState;

// Object classes forward declaration within the custom namepace
class Action;


// Context declaration for state Simple
class SimpleStateMachineContext : public fsm::Context<SimpleStateMachineSimpleState, SimpleStateMachineContext> {
public:
  // Constructor
  SimpleStateMachineContext(Action& action);

  // Destructor
  virtual ~SimpleStateMachineContext();


  static const fsm::StateNameToId* GetStateNameToId();
  // MainEvent's events 
  void evStart();
  void evSetSpeed();
  void evHalt();


  // Enter the initial state: walk the onEntry chain from the top state to the initial state.
  void EnterInitialState();

  // Leave the current state: walk the onExit chain from the current state to the top state.
  void LeaveCurrentState();

  Action& getAction(){return m_action;}

private:
  Action& m_action;


};


// State SimpleStateMachineSimpleState
class SimpleStateMachineSimpleState : public fsm::State<SimpleStateMachineContext, SimpleStateMachineSimpleState> {
public:
  // Constructor
  SimpleStateMachineSimpleState(const char* pName, int id);

  // Singleton pattern
  static const SimpleStateMachineSimpleState& GetInstance();

  // Destructor
  virtual ~SimpleStateMachineSimpleState();

  // OnEntry and OnExit
  virtual void OnEntry(SimpleStateMachineContext& context) const;
  virtual void OnExit(SimpleStateMachineContext& context) const;

  // Events
  virtual void evStart(SimpleStateMachineContext &context) const ;
  virtual void evSetSpeed(SimpleStateMachineContext &context) const ;
  virtual void evHalt(SimpleStateMachineContext &context) const ;

};


// State SimpleStateMachineIdleState
class SimpleStateMachineIdleState : public SimpleStateMachineSimpleState {
public:
  // Constructor
  SimpleStateMachineIdleState(const char* pName, int id);

  // Singleton pattern
  static const SimpleStateMachineIdleState& GetInstance();

  // Destructor
  virtual ~SimpleStateMachineIdleState();

  // OnEntry and OnExit
  virtual void OnEntry(SimpleStateMachineContext& context) const;
  virtual void OnExit(SimpleStateMachineContext& context) const;

  // Events
  virtual void evStart(SimpleStateMachineContext &context) const ;

};


// State SimpleStateMachineStartState
class SimpleStateMachineStartState : public SimpleStateMachineSimpleState {
public:
  // Constructor
  SimpleStateMachineStartState(const char* pName, int id);

  // Singleton pattern
  static const SimpleStateMachineStartState& GetInstance();

  // Destructor
  virtual ~SimpleStateMachineStartState();

  // OnEntry and OnExit
  virtual void OnEntry(SimpleStateMachineContext& context) const;
  virtual void OnExit(SimpleStateMachineContext& context) const;

  // Events
  virtual void evHalt(SimpleStateMachineContext &context) const ;
  virtual void evSetSpeed(SimpleStateMachineContext &context) const ;

};


// State SimpleStateMachineChangeSpeedState
class SimpleStateMachineChangeSpeedState : public SimpleStateMachineSimpleState {
public:
  // Constructor
  SimpleStateMachineChangeSpeedState(const char* pName, int id);

  // Singleton pattern
  static const SimpleStateMachineChangeSpeedState& GetInstance();

  // Destructor
  virtual ~SimpleStateMachineChangeSpeedState();

  // OnEntry and OnExit
  virtual void OnEntry(SimpleStateMachineContext& context) const;
  virtual void OnExit(SimpleStateMachineContext& context) const;

  // Events
  virtual void evSetSpeed(SimpleStateMachineContext &context) const ;
  virtual void evHalt(SimpleStateMachineContext &context) const ;

};


// State SimpleStateMachineStopState
class SimpleStateMachineStopState : public SimpleStateMachineSimpleState {
public:
  // Constructor
  SimpleStateMachineStopState(const char* pName, int id);

  // Singleton pattern
  static const SimpleStateMachineStopState& GetInstance();

  // Destructor
  virtual ~SimpleStateMachineStopState();

  // OnEntry and OnExit
  virtual void OnEntry(SimpleStateMachineContext& context) const;
  virtual void OnExit(SimpleStateMachineContext& context) const;

  // Events
  virtual void evStart(SimpleStateMachineContext &context) const ;
  virtual void evSetSpeed(SimpleStateMachineContext &context) const ;
  virtual void evHalt(SimpleStateMachineContext &context) const ;

};

#endif //SIMPLESTATEMACHINEFSM_H
