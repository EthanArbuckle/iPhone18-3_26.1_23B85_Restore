@interface OctagonStateTransitionGroupOperation
+ (id)named:(id)named intending:(id)intending errorState:(id)state withBlockTakingSelf:(id)self;
- (id)description;
- (id)initIntending:(id)intending errorState:(id)state;
@end

@implementation OctagonStateTransitionGroupOperation

- (id)description
{
  name = [(OctagonStateTransitionGroupOperation *)self name];
  intendedState = [(OctagonStateTransitionGroupOperation *)self intendedState];
  nextState = [(OctagonStateTransitionGroupOperation *)self nextState];
  v6 = [NSString stringWithFormat:@"<OctagonStateTransitionGroupOperation(%@): intended:%@ actual:%@>", name, intendedState, nextState];

  return v6;
}

- (id)initIntending:(id)intending errorState:(id)state
{
  intendingCopy = intending;
  stateCopy = state;
  v12.receiver = self;
  v12.super_class = OctagonStateTransitionGroupOperation;
  v9 = [(CKKSGroupOperation *)&v12 init];
  p_isa = &v9->super.super.super.super.super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_nextState, state);
    objc_storeStrong(p_isa + 17, intending);
  }

  return p_isa;
}

+ (id)named:(id)named intending:(id)intending errorState:(id)state withBlockTakingSelf:(id)self
{
  namedCopy = named;
  intendingCopy = intending;
  stateCopy = state;
  selfCopy = self;
  v14 = [[self alloc] initIntending:intendingCopy errorState:stateCopy];
  objc_initWeak(&location, v14);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001DB074;
  v18[3] = &unk_1003445C0;
  objc_copyWeak(&v20, &location);
  v15 = selfCopy;
  v19 = v15;
  v16 = [NSBlockOperation blockOperationWithBlock:v18];
  [v14 runBeforeGroupFinished:v16];

  [v14 setName:namedCopy];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v14;
}

@end