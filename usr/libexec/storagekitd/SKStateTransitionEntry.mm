@interface SKStateTransitionEntry
+ (id)entryWithState:(id)a3 event:(id)a4;
+ (id)entryWithState:(id)a3 event:(id)a4 action:(id)a5;
+ (id)entryWithState:(id)a3 event:(id)a4 action:(id)a5 nextState:(id)a6;
+ (id)entryWithState:(id)a3 event:(id)a4 selector:(SEL)a5;
+ (id)entryWithState:(id)a3 event:(id)a4 selector:(SEL)a5 nextState:(id)a6;
- (SEL)selector;
- (void)setSelector:(SEL)a3;
@end

@implementation SKStateTransitionEntry

+ (id)entryWithState:(id)a3 event:(id)a4 action:(id)a5 nextState:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(objc_opt_class());
  [v13 setState:v12];

  [v13 setEvent:v11];
  [v13 setAction:v10];

  [v13 setNextState:v9];
  [v13 setSelector:0];

  return v13;
}

+ (id)entryWithState:(id)a3 event:(id)a4 action:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() entryWithState:v9 event:v8 action:v7 nextState:0];

  return v10;
}

+ (id)entryWithState:(id)a3 event:(id)a4 selector:(SEL)a5 nextState:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(objc_opt_class());
  [v12 setState:v11];

  [v12 setEvent:v10];
  [v12 setAction:0];
  [v12 setNextState:v9];

  [v12 setSelector:a5];

  return v12;
}

+ (id)entryWithState:(id)a3 event:(id)a4 selector:(SEL)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [objc_opt_class() entryWithState:v8 event:v7 selector:a5 nextState:0];

  return v9;
}

+ (id)entryWithState:(id)a3 event:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() entryWithState:v6 event:v5 action:0];

  return v7;
}

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

- (void)setSelector:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_selector = v3;
}

@end