@interface KTStateTransitionGroupOperation
+ (id)named:(id)a3 intending:(id)a4 errorState:(id)a5 withBlockTakingSelf:(id)a6;
- (id)description;
- (id)initIntending:(id)a3 errorState:(id)a4;
@end

@implementation KTStateTransitionGroupOperation

- (id)initIntending:(id)a3 errorState:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = KTStateTransitionGroupOperation;
  v9 = [(KTGroupOperation *)&v12 init];
  p_isa = &v9->super.super.super.super.super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_nextState, a4);
    objc_storeStrong(p_isa + 16, a3);
  }

  return p_isa;
}

- (id)description
{
  v3 = [(KTStateTransitionGroupOperation *)self name];
  v4 = [(KTStateTransitionGroupOperation *)self intendedState];
  v5 = [(KTStateTransitionGroupOperation *)self nextState];
  v6 = [NSString stringWithFormat:@"<KTStateTransitionGroupOperation(%@): intended:%@ actual:%@>", v3, v4, v5];

  return v6;
}

+ (id)named:(id)a3 intending:(id)a4 errorState:(id)a5 withBlockTakingSelf:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [[a1 alloc] initIntending:v11 errorState:v12];
  objc_initWeak(&location, v14);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100001F88;
  v18[3] = &unk_100094B80;
  objc_copyWeak(&v20, &location);
  v15 = v13;
  v19 = v15;
  v16 = [NSBlockOperation blockOperationWithBlock:v18];
  [v14 runBeforeGroupFinished:v16];

  [v14 setName:v10];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v14;
}

@end