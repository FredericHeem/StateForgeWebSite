// SimpleFsm.h has been generated automatically by StateBuilderCpp 3.0
// Executable: 
// file:/C:/Users/frederic/AppData/Local/StateForge/StateBuilderCpp/bin/StateBuilderCpp.exe
// Command line options: 
//  C:/Users/frederic/Documents/projects/StateForge/dev/StateForgeWebSite/StateForgeWebSite/examples/cpp/Simple.fsmcpp
// Date: 16-ott-2015 19.17.30

#ifndef SIMPLEFSM_H
#define SIMPLEFSM_H


// Includes
#include <cstring>
#include <fsm/Fsm.h>

// Object classes forward declaration

// Context classes forward declaration
class SimpleContext;
// Parallel classes forward declaration
// State classes forward declaration
class SimpleRootState;
class SimpleStartState;
class SimpleStopState;
class SimpleIdleState;
class SimpleChangeSpeedState;

// Object classes forward declaration within the custom namepace
class Action;


// Context declaration for state Root
class SimpleContext : public fsm::Context<SimpleRootState, SimpleContext> {
public:
  // Constructor
  SimpleContext(Action& action);

  // Destructor
  virtual ~SimpleContext();


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


// State SimpleRootState
class SimpleRootState : public fsm::State<SimpleContext, SimpleRootState> {
public:
  // Constructor
  SimpleRootState(const char* pName, int id);

  // Singleton pattern
  static const SimpleRootState& GetInstance();

  // Destructor
  virtual ~SimpleRootState();

  // OnEntry and OnExit
  virtual void OnEntry(SimpleContext& context) const;
  virtual void OnExit(SimpleContext& context) const;

  // Events
  virtual void evStart(SimpleContext &context) const ;
  virtual void evSetSpeed(SimpleContext &context) const ;
  virtual void evHalt(SimpleContext &context) const ;

};


// State SimpleIdleState
class SimpleIdleState : public SimpleRootState {
public:
  // Constructor
  SimpleIdleState(const char* pName, int id);

  // Singleton pattern
  static const SimpleIdleState& GetInstance();

  // Destructor
  virtual ~SimpleIdleState();

  // OnEntry and OnExit
  virtual void OnEntry(SimpleContext& context) const;
  virtual void OnExit(SimpleContext& context) const;

  // Events
  virtual void evStart(SimpleContext &context) const ;

};


// State SimpleStartState
class SimpleStartState : public SimpleRootState {
public:
  // Constructor
  SimpleStartState(const char* pName, int id);

  // Singleton pattern
  static const SimpleStartState& GetInstance();

  // Destructor
  virtual ~SimpleStartState();

  // OnEntry and OnExit
  virtual void OnEntry(SimpleContext& context) const;
  virtual void OnExit(SimpleContext& context) const;

  // Events
  virtual void evHalt(SimpleContext &context) const ;
  virtual void evSetSpeed(SimpleContext &context) const ;

};


// State SimpleChangeSpeedState
class SimpleChangeSpeedState : public SimpleRootState {
public:
  // Constructor
  SimpleChangeSpeedState(const char* pName, int id);

  // Singleton pattern
  static const SimpleChangeSpeedState& GetInstance();

  // Destructor
  virtual ~SimpleChangeSpeedState();

  // OnEntry and OnExit
  virtual void OnEntry(SimpleContext& context) const;
  virtual void OnExit(SimpleContext& context) const;

  // Events
  virtual void evSetSpeed(SimpleContext &context) const ;
  virtual void evHalt(SimpleContext &context) const ;

};


// State SimpleStopState
class SimpleStopState : public SimpleRootState {
public:
  // Constructor
  SimpleStopState(const char* pName, int id);

  // Singleton pattern
  static const SimpleStopState& GetInstance();

  // Destructor
  virtual ~SimpleStopState();

  // OnEntry and OnExit
  virtual void OnEntry(SimpleContext& context) const;
  virtual void OnExit(SimpleContext& context) const;

  // Events
  virtual void evStart(SimpleContext &context) const ;
  virtual void evSetSpeed(SimpleContext &context) const ;
  virtual void evHalt(SimpleContext &context) const ;

};

#endif //SIMPLEFSM_H
