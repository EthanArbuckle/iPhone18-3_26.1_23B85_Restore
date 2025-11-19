@interface CKKSProvideKeySetOperation
- (CKKSProvideKeySetOperation)initWithIntendedZoneIDs:(id)a3;
- (void)provideKeySets:(id)a3;
@end

@implementation CKKSProvideKeySetOperation

- (void)provideKeySets:(id)a3
{
  v4 = a3;
  v5 = [(CKKSProvideKeySetOperation *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100111BF8;
  v7[3] = &unk_100343E38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (CKKSProvideKeySetOperation)initWithIntendedZoneIDs:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = CKKSProvideKeySetOperation;
  v6 = [(CKKSGroupOperation *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_intendedZoneIDs, a3);
    keysets = v7->_keysets;
    v7->_keysets = 0;

    v9 = [NSBlockOperation blockOperationWithBlock:&stru_1003373A8];
    startDependency = v7->_startDependency;
    v7->_startDependency = v9;

    [(NSOperation *)v7->_startDependency setName:@"key-set-provided"];
    v11 = dispatch_queue_create("key-set-queue", 0);
    queue = v7->_queue;
    v7->_queue = v11;

    [(CKKSGroupOperation *)v7 addDependency:v7->_startDependency];
  }

  return v7;
}

@end