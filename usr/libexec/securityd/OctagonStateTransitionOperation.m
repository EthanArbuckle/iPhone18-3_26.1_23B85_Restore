@interface OctagonStateTransitionOperation
+ (id)named:(id)a3 entering:(id)a4;
+ (id)named:(id)a3 intending:(id)a4 errorState:(id)a5 withBlockTakingSelf:(id)a6;
- (id)description;
- (id)initIntending:(id)a3 errorState:(id)a4;
@end

@implementation OctagonStateTransitionOperation

- (id)description
{
  v3 = [(OctagonStateTransitionOperation *)self name];
  v4 = [(OctagonStateTransitionOperation *)self intendedState];
  v5 = [(OctagonStateTransitionOperation *)self nextState];
  v6 = [NSString stringWithFormat:@"<OctagonStateTransitionOperation(%@): intended:%@ actual:%@>", v3, v4, v5];

  return v6;
}

- (id)initIntending:(id)a3 errorState:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = OctagonStateTransitionOperation;
  v9 = [(CKKSResultOperation *)&v12 init];
  p_isa = &v9->super.super.super.super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_nextState, a4);
    objc_storeStrong(p_isa + 11, a3);
  }

  return p_isa;
}

+ (id)named:(id)a3 entering:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initIntending:v6 errorState:v6];

  [v8 setName:v7];

  return v8;
}

+ (id)named:(id)a3 intending:(id)a4 errorState:(id)a5 withBlockTakingSelf:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [[a1 alloc] initIntending:v11 errorState:v12];
  objc_initWeak(&location, v14);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001DACCC;
  v17[3] = &unk_1003445C0;
  objc_copyWeak(&v19, &location);
  v15 = v13;
  v18 = v15;
  [v14 addExecutionBlock:v17];
  [v14 setName:v10];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v14;
}

@end