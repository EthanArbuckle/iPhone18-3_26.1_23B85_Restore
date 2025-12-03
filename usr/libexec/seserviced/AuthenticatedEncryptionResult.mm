@interface AuthenticatedEncryptionResult
+ (id)withCipherText:(id)text authenticationTag:(id)tag;
@end

@implementation AuthenticatedEncryptionResult

+ (id)withCipherText:(id)text authenticationTag:(id)tag
{
  textCopy = text;
  tagCopy = tag;
  v7 = objc_opt_new();
  v8 = v7[1];
  v7[1] = textCopy;
  v9 = textCopy;

  v10 = v7[2];
  v7[2] = tagCopy;

  return v7;
}

@end