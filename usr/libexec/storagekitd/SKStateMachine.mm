@interface SKStateMachine
+ (id)machineWithStateTransitionTable:(id)a3 startState:(id)a4 startEvent:(id)a5;
- (BOOL)finished;
- (BOOL)nextWithError:(id *)a3;
- (BOOL)runWithError:(id *)a3;
@end

@implementation SKStateMachine

+ (id)machineWithStateTransitionTable:(id)a3 startState:(id)a4 startEvent:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(objc_opt_class());
  [v10 setState:v8];

  [v10 setEvent:v7];
  [v10 setTable:v9];

  return v10;
}

- (BOOL)nextWithError:(id *)a3
{
  v5 = [(SKStateMachine *)self table];
  v6 = [(SKStateMachine *)self state];
  v7 = [(SKStateMachine *)self event];
  v8 = [v5 entryForState:v6 event:v7];

  if (v8)
  {
    v9 = sub_10000BFD0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [(SKStateMachine *)self state];
      v11 = [(SKStateMachine *)self event];
      v12 = [v8 nextState];
      v26 = 136315906;
      v27 = "[SKStateMachine nextWithError:]";
      v28 = 2112;
      v29 = v10;
      v30 = 2112;
      v31 = v11;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s: State transition (%@,%@)->%@", &v26, 0x2Au);
    }

    v13 = [v8 action];
    if (v13)
    {
      v14 = v13;
      v15 = [v8 selector];

      if (v15)
      {
        goto LABEL_6;
      }
    }

    v17 = [v8 action];

    if (v17)
    {
      v18 = [v8 action];
      v16 = (v18)[2](v18, a3);
    }

    else
    {
      if (![v8 selector])
      {
LABEL_6:
        v16 = 0;
LABEL_13:
        [(SKStateMachine *)self setEvent:v16];
        v24 = [v8 nextState];
        [(SKStateMachine *)self setState:v24];

        v19 = 1;
        goto LABEL_14;
      }

      v20 = [(SKStateMachine *)self table];
      v21 = [v20 selectorTarget];
      v22 = [v21 methodForSelector:{objc_msgSend(v8, "selector")}];

      v18 = [(SKStateMachine *)self table];
      v23 = [v18 selectorTarget];
      v16 = v22(v23, [v8 selector], a3);
    }

    if (!v16)
    {
      v19 = 0;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v19 = [SKError failWithSKErrorCode:102 error:a3];
LABEL_14:

  return v19;
}

- (BOOL)finished
{
  v2 = [(SKStateMachine *)self state];
  v3 = v2 == 0;

  return v3;
}

- (BOOL)runWithError:(id *)a3
{
  do
  {
    v5 = [(SKStateMachine *)self finished];
  }

  while (!v5 && [(SKStateMachine *)self nextWithError:a3]);
  return v5;
}

@end