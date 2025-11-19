@interface DMDConfigurationRemoveOperation
- (void)endOperationMarkingPayloadMetadata:(id)a3 failedWithError:(id)a4;
- (void)main;
- (void)removalOperationDidFinish:(id)a3 userInfo:(id)a4;
@end

@implementation DMDConfigurationRemoveOperation

- (void)main
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10002E5F8;
  v2[3] = &unk_1000CE618;
  v2[4] = self;
  [(DMDPayloadActionOperation *)self performBackgroundContextBlock:v2];
}

- (void)removalOperationDidFinish:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 error];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002ED54;
  v11[3] = &unk_1000CE6E8;
  v12 = v11[4] = self;
  v13 = v7;
  v14 = v6;
  v8 = v6;
  v9 = v7;
  v10 = v12;
  [(DMDPayloadActionOperation *)self performBackgroundContextBlock:v11];
}

- (void)endOperationMarkingPayloadMetadata:(id)a3 failedWithError:(id)a4
{
  v10[0] = DMFDeclarationStatusFailedRemove;
  v9[0] = DMFDeclarationStateStatusKey;
  v9[1] = DMFDeclarationStateErrorChainKey;
  v6 = a3;
  v7 = DMDErrorChainFromError(a4);
  v10[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  [(DMDPayloadActionOperation *)self addStatusEntriesFromDictionary:v8];

  [v6 setFailed:1];
  [(DMDPayloadActionOperation *)self endOperationWithPayloadMetadata:v6];
}

@end