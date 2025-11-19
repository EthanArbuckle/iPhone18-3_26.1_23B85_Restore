@interface CRTestContext
- (CRTestContext)init;
@end

@implementation CRTestContext

- (CRTestContext)init
{
  v7.receiver = self;
  v7.super_class = CRTestContext;
  v2 = [(CRTestContext *)&v7 init];
  if (v2)
  {
    v3 = MGCopyAnswer();
    [(CRTestContext *)v2 setSerialNumber:v3];

    [(CRTestContext *)v2 setPartSPC:0];
    v4 = objc_opt_new();
    [(CRTestContext *)v2 setRemovedPartSPC:v4];

    [(CRTestContext *)v2 setRik:0];
    v5 = objc_opt_new();
    [(CRTestContext *)v2 setPatchItems:v5];

    [(CRTestContext *)v2 setPrCL:0];
    [(CRTestContext *)v2 setLastRunTestId:0];
    [(CRTestContext *)v2 setLastRunTestIndex:0];
    [(CRTestContext *)v2 setLastTestStatusCode:0];
    [(CRTestContext *)v2 setDoRetry:0];
  }

  return v2;
}

@end