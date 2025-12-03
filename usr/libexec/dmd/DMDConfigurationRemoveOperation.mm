@interface DMDConfigurationRemoveOperation
- (void)endOperationMarkingPayloadMetadata:(id)metadata failedWithError:(id)error;
- (void)main;
- (void)removalOperationDidFinish:(id)finish userInfo:(id)info;
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

- (void)removalOperationDidFinish:(id)finish userInfo:(id)info
{
  finishCopy = finish;
  infoCopy = info;
  [finishCopy error];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002ED54;
  v11[3] = &unk_1000CE6E8;
  v12 = v11[4] = self;
  v13 = infoCopy;
  v14 = finishCopy;
  v8 = finishCopy;
  v9 = infoCopy;
  v10 = v12;
  [(DMDPayloadActionOperation *)self performBackgroundContextBlock:v11];
}

- (void)endOperationMarkingPayloadMetadata:(id)metadata failedWithError:(id)error
{
  v10[0] = DMFDeclarationStatusFailedRemove;
  v9[0] = DMFDeclarationStateStatusKey;
  v9[1] = DMFDeclarationStateErrorChainKey;
  metadataCopy = metadata;
  v7 = DMDErrorChainFromError(error);
  v10[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  [(DMDPayloadActionOperation *)self addStatusEntriesFromDictionary:v8];

  [metadataCopy setFailed:1];
  [(DMDPayloadActionOperation *)self endOperationWithPayloadMetadata:metadataCopy];
}

@end