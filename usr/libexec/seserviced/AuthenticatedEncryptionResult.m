@interface AuthenticatedEncryptionResult
+ (id)withCipherText:(id)a3 authenticationTag:(id)a4;
@end

@implementation AuthenticatedEncryptionResult

+ (id)withCipherText:(id)a3 authenticationTag:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = v7[1];
  v7[1] = v5;
  v9 = v5;

  v10 = v7[2];
  v7[2] = v6;

  return v7;
}

@end