@interface SSEHelper
+ (id)performOperationApprovalV3:(id)a3 seid:(id)a4 acl:(id)a5 operation:(id)a6 nonce:(id)a7 error:(id *)a8;
@end

@implementation SSEHelper

+ (id)performOperationApprovalV3:(id)a3 seid:(id)a4 acl:(id)a5 operation:(id)a6 nonce:(id)a7 error:(id *)a8
{
  v13 = a7;
  v14 = a6;
  v15 = a4;
  v16 = a3;
  v25[1] = [a5 DERItem];
  v25[2] = v17;
  v25[3] = 0;
  v25[4] = 0;
  v18 = encodeSequenceSpec();
  v24 = 0;
  v25[0] = 0;
  v19 = +[NSData data];
  LODWORD(a5) = SSEEvaluateSecureElementACL(v16, v15, v18, v19, v14, v13, 3u, v25, &v24);

  v21 = v24;
  v20 = v25[0];
  if (!a5 && v25[0] && v24)
  {
    [(__CFData *)v25[0] DERItem];
    [(__CFData *)v21 DERItem];
    a8 = encodeSequenceSpec();
  }

  else if (a8)
  {
    v22 = SESDefaultLogObject();
    *a8 = SESCreateAndLogError();

    a8 = 0;
  }

  return a8;
}

@end