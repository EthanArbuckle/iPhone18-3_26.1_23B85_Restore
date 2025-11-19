@interface DMDAssetRemoveOperation
- (void)main;
- (void)removeOperationDidFinish:(id)a3 asset:(id)a4;
@end

@implementation DMDAssetRemoveOperation

- (void)main
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000236C4;
  v2[3] = &unk_1000CE618;
  v2[4] = self;
  [(DMDPayloadActionOperation *)self performBackgroundContextBlock:v2];
}

- (void)removeOperationDidFinish:(id)a3 asset:(id)a4
{
  [a3 error];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100023B40;
  v6[3] = &unk_1000CE668;
  v7 = v6[4] = self;
  v5 = v7;
  [(DMDPayloadActionOperation *)self performBackgroundContextBlock:v6];
}

@end