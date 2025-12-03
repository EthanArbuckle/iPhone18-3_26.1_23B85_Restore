@interface DMDAssetInstallOperation
- (DMDRemoteAssetResolver)assetResolver;
- (void)installOperationDidFinish:(id)finish asset:(id)asset;
- (void)main;
@end

@implementation DMDAssetInstallOperation

- (void)main
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100022F64;
  v2[3] = &unk_1000CE618;
  v2[4] = self;
  [(DMDPayloadActionOperation *)self performBackgroundContextBlock:v2];
}

- (void)installOperationDidFinish:(id)finish asset:(id)asset
{
  finishCopy = finish;
  [finishCopy error];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002340C;
  v8[3] = &unk_1000CE640;
  v9 = v8[4] = self;
  v10 = finishCopy;
  v6 = finishCopy;
  v7 = v9;
  [(DMDPayloadActionOperation *)self performBackgroundContextBlock:v8];
}

- (DMDRemoteAssetResolver)assetResolver
{
  WeakRetained = objc_loadWeakRetained(&self->_assetResolver);

  return WeakRetained;
}

@end