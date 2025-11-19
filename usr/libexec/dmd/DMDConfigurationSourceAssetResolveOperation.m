@interface DMDConfigurationSourceAssetResolveOperation
- (void)main;
@end

@implementation DMDConfigurationSourceAssetResolveOperation

- (void)main
{
  [(DMDConfigurationSourceAssetResolveOperation *)self context];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002FD30;
  v4[3] = &unk_1000CEBE0;
  v5 = v4[4] = self;
  v3 = v5;
  [(DMDConfigurationSourceTaskOperation *)self fetchRemoteProxy:v4];
}

@end