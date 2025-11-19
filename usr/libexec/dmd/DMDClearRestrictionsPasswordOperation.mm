@interface DMDClearRestrictionsPasswordOperation
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDClearRestrictionsPasswordOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDClearRestrictionsPasswordOperation;
  [(DMDClearRestrictionsPasswordOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

- (void)runWithRequest:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v5 = qword_1000FEFE0;
  v16 = qword_1000FEFE0;
  if (!qword_1000FEFE0)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100024618;
    v12[3] = &unk_1000CDFE0;
    v12[4] = &v13;
    sub_100024618(v12);
    v5 = v14[3];
  }

  v6 = v5;
  _Block_object_dispose(&v13, 8);
  v7 = objc_opt_new();
  v8 = v7;
  if (!v7)
  {
    v10 = 0;
    goto LABEL_7;
  }

  v11 = 0;
  v9 = [v7 clearRestrictionsPasscodeWithError:&v11];
  v10 = v11;
  if (v9)
  {
LABEL_7:
    [(DMDClearRestrictionsPasswordOperation *)self endOperationWithResultObject:0];
    goto LABEL_8;
  }

  [(DMDClearRestrictionsPasswordOperation *)self endOperationWithError:v10];
LABEL_8:
}

@end