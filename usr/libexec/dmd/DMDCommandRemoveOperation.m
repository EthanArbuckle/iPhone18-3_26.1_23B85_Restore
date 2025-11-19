@interface DMDCommandRemoveOperation
- (void)main;
@end

@implementation DMDCommandRemoveOperation

- (void)main
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000259F4;
  v2[3] = &unk_1000CE618;
  v2[4] = self;
  [(DMDPayloadActionOperation *)self performBackgroundContextBlock:v2];
}

@end