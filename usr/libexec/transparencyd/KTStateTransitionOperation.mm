@interface KTStateTransitionOperation
+ (id)named:(id)named entering:(id)entering;
+ (id)named:(id)named intending:(id)intending errorState:(id)state withBlockTakingSelf:(id)self;
- (id)description;
- (id)initIntending:(id)intending errorState:(id)state;
@end

@implementation KTStateTransitionOperation

- (id)initIntending:(id)intending errorState:(id)state
{
  intendingCopy = intending;
  stateCopy = state;
  v12.receiver = self;
  v12.super_class = KTStateTransitionOperation;
  v9 = [(KTResultOperation *)&v12 init];
  p_isa = &v9->super.super.super.super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_nextState, state);
    objc_storeStrong(p_isa + 10, intending);
  }

  return p_isa;
}

- (id)description
{
  name = [(KTStateTransitionOperation *)self name];
  intendedState = [(KTStateTransitionOperation *)self intendedState];
  nextState = [(KTStateTransitionOperation *)self nextState];
  v6 = [NSString stringWithFormat:@"<KTStateTransitionOperation(%@): intended:%@ actual:%@>", name, intendedState, nextState];

  return v6;
}

+ (id)named:(id)named intending:(id)intending errorState:(id)state withBlockTakingSelf:(id)self
{
  namedCopy = named;
  intendingCopy = intending;
  stateCopy = state;
  selfCopy = self;
  v14 = [[self alloc] initIntending:intendingCopy errorState:stateCopy];
  objc_initWeak(&location, v14);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001A83F8;
  v17[3] = &unk_10031BD50;
  objc_copyWeak(&v19, &location);
  v15 = selfCopy;
  v18 = v15;
  [v14 addExecutionBlock:v17];
  [v14 setName:namedCopy];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v14;
}

+ (id)named:(id)named entering:(id)entering
{
  enteringCopy = entering;
  namedCopy = named;
  v8 = [[self alloc] initIntending:enteringCopy errorState:enteringCopy];

  [v8 setName:namedCopy];

  return v8;
}

@end