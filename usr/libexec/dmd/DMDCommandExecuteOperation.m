@interface DMDCommandExecuteOperation
- (void)main;
- (void)operationDidFinish:(id)a3 userInfo:(id)a4;
@end

@implementation DMDCommandExecuteOperation

- (void)main
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100024910;
  v2[3] = &unk_1000CE618;
  v2[4] = self;
  [(DMDPayloadActionOperation *)self performBackgroundContextBlock:v2];
}

- (void)operationDidFinish:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 error];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100024F94;
  v11[3] = &unk_1000CE6E8;
  v12 = v11[4] = self;
  v13 = v7;
  v14 = v6;
  v8 = v6;
  v9 = v7;
  v10 = v12;
  [(DMDPayloadActionOperation *)self performBackgroundContextBlock:v11];
}

@end