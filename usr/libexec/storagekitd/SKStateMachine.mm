@interface SKStateMachine
+ (id)machineWithStateTransitionTable:(id)table startState:(id)state startEvent:(id)event;
- (BOOL)finished;
- (BOOL)nextWithError:(id *)error;
- (BOOL)runWithError:(id *)error;
@end

@implementation SKStateMachine

+ (id)machineWithStateTransitionTable:(id)table startState:(id)state startEvent:(id)event
{
  eventCopy = event;
  stateCopy = state;
  tableCopy = table;
  v10 = objc_alloc_init(objc_opt_class());
  [v10 setState:stateCopy];

  [v10 setEvent:eventCopy];
  [v10 setTable:tableCopy];

  return v10;
}

- (BOOL)nextWithError:(id *)error
{
  table = [(SKStateMachine *)self table];
  state = [(SKStateMachine *)self state];
  event = [(SKStateMachine *)self event];
  v8 = [table entryForState:state event:event];

  if (v8)
  {
    v9 = sub_10000BFD0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      state2 = [(SKStateMachine *)self state];
      event2 = [(SKStateMachine *)self event];
      nextState = [v8 nextState];
      v26 = 136315906;
      v27 = "[SKStateMachine nextWithError:]";
      v28 = 2112;
      v29 = state2;
      v30 = 2112;
      v31 = event2;
      v32 = 2112;
      v33 = nextState;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s: State transition (%@,%@)->%@", &v26, 0x2Au);
    }

    action = [v8 action];
    if (action)
    {
      v14 = action;
      selector = [v8 selector];

      if (selector)
      {
        goto LABEL_6;
      }
    }

    action2 = [v8 action];

    if (action2)
    {
      action3 = [v8 action];
      v16 = (action3)[2](action3, error);
    }

    else
    {
      if (![v8 selector])
      {
LABEL_6:
        v16 = 0;
LABEL_13:
        [(SKStateMachine *)self setEvent:v16];
        nextState2 = [v8 nextState];
        [(SKStateMachine *)self setState:nextState2];

        v19 = 1;
        goto LABEL_14;
      }

      table2 = [(SKStateMachine *)self table];
      selectorTarget = [table2 selectorTarget];
      v22 = [selectorTarget methodForSelector:{objc_msgSend(v8, "selector")}];

      action3 = [(SKStateMachine *)self table];
      selectorTarget2 = [action3 selectorTarget];
      v16 = v22(selectorTarget2, [v8 selector], error);
    }

    if (!v16)
    {
      v19 = 0;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v19 = [SKError failWithSKErrorCode:102 error:error];
LABEL_14:

  return v19;
}

- (BOOL)finished
{
  state = [(SKStateMachine *)self state];
  v3 = state == 0;

  return v3;
}

- (BOOL)runWithError:(id *)error
{
  do
  {
    finished = [(SKStateMachine *)self finished];
  }

  while (!finished && [(SKStateMachine *)self nextWithError:error]);
  return finished;
}

@end