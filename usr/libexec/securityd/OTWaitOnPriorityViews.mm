@interface OTWaitOnPriorityViews
- (OTWaitOnPriorityViews)initWithDependencies:(id)dependencies;
- (void)groupStart;
@end

@implementation OTWaitOnPriorityViews

- (void)groupStart
{
  objc_initWeak(&location, self);
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_1001F3B18;
  v7 = &unk_1003452E8;
  objc_copyWeak(&v8, &location);
  v3 = [CKKSResultOperation named:@"proceed-after-fetch" withBlock:&v4];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:v3, v4, v5, v6, v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (OTWaitOnPriorityViews)initWithDependencies:(id)dependencies
{
  dependenciesCopy = dependencies;
  v9.receiver = self;
  v9.super_class = OTWaitOnPriorityViews;
  v6 = [(CKKSGroupOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_operationDependencies, dependencies);
  }

  return v7;
}

@end