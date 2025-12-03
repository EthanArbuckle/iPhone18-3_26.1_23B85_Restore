@interface DMDCommandActionOperation
- (void)endOperationMarkingPayloadMetadata:(id)metadata failedWithError:(id)error;
@end

@implementation DMDCommandActionOperation

- (void)endOperationMarkingPayloadMetadata:(id)metadata failedWithError:(id)error
{
  v10[0] = DMFCommandStatusFailed;
  v9[0] = DMFDeclarationStateStatusKey;
  v9[1] = DMFDeclarationStateErrorChainKey;
  metadataCopy = metadata;
  v7 = DMDErrorChainFromError(error);
  v10[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  [(DMDPayloadActionOperation *)self addStatusEntriesFromDictionary:v8];

  [(DMDPayloadActionOperation *)self endOperationWithPayloadMetadata:metadataCopy];
}

@end