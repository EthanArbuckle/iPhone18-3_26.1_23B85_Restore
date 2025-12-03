@interface SSEHelper
+ (id)performOperationApprovalV3:(id)v3 seid:(id)seid acl:(id)acl operation:(id)operation nonce:(id)nonce error:(id *)error;
@end

@implementation SSEHelper

+ (id)performOperationApprovalV3:(id)v3 seid:(id)seid acl:(id)acl operation:(id)operation nonce:(id)nonce error:(id *)error
{
  nonceCopy = nonce;
  operationCopy = operation;
  seidCopy = seid;
  v3Copy = v3;
  v25[1] = [acl DERItem];
  v25[2] = v17;
  v25[3] = 0;
  v25[4] = 0;
  v18 = encodeSequenceSpec();
  v24 = 0;
  v25[0] = 0;
  v19 = +[NSData data];
  LODWORD(acl) = SSEEvaluateSecureElementACL(v3Copy, seidCopy, v18, v19, operationCopy, nonceCopy, 3u, v25, &v24);

  v21 = v24;
  v20 = v25[0];
  if (!acl && v25[0] && v24)
  {
    [(__CFData *)v25[0] DERItem];
    [(__CFData *)v21 DERItem];
    error = encodeSequenceSpec();
  }

  else if (error)
  {
    v22 = SESDefaultLogObject();
    *error = SESCreateAndLogError();

    error = 0;
  }

  return error;
}

@end