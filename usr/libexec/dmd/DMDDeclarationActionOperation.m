@interface DMDDeclarationActionOperation
- (void)endOperationMarkingPayloadMetadata:(id)a3 failedWithError:(id)a4;
@end

@implementation DMDDeclarationActionOperation

- (void)endOperationMarkingPayloadMetadata:(id)a3 failedWithError:(id)a4
{
  v10[0] = DMFDeclarationStatusFailed;
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