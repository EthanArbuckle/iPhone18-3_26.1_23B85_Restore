@interface MockAKSRefKeyObject
- (MockAKSRefKeyObject)initWithKeyData:(id)data parameters:(id)parameters error:(id *)error;
@end

@implementation MockAKSRefKeyObject

- (MockAKSRefKeyObject)initWithKeyData:(id)data parameters:(id)parameters error:(id *)error
{
  dataCopy = data;
  parametersCopy = parameters;
  v35.receiver = self;
  v35.super_class = MockAKSRefKeyObject;
  v10 = [(MockAKSRefKeyObject *)&v35 init];
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = [dataCopy copy];
  [(MockAKSRefKeyObject *)v10 setKeyData:v11];

  v12 = [[_SFAESKeySpecifier alloc] initWithBitSize:2];
  v13 = [_SFAESKey alloc];
  keyData = [(MockAKSRefKeyObject *)v10 keyData];
  v15 = [v13 initWithData:keyData specifier:v12 error:error];
  [(MockAKSRefKeyObject *)v10 setKey:v15];

  v16 = [(MockAKSRefKeyObject *)v10 key];

  if (!v16)
  {
    goto LABEL_11;
  }

  v17 = [[MockAKSOptionalParameters alloc] initWithData:parametersCopy];
  externalData = [(MockAKSOptionalParameters *)v17 externalData];

  if (externalData)
  {
    cf = 0;
    externalData2 = [(MockAKSOptionalParameters *)v17 externalData];
    bytes = [externalData2 bytes];

    externalData3 = [(MockAKSOptionalParameters *)v17 externalData];
    v22 = [externalData3 length];
    der_decode_plist(0, &cf, &v33, bytes, v22 + bytes, v23, v24, v25);

    if (cf)
    {
      CFRelease(cf);
      goto LABEL_6;
    }

    if (error)
    {
      *error = [NSError errorWithDomain:@"foo" code:-536870206 userInfo:0];
    }

LABEL_11:
    v31 = 0;
    goto LABEL_12;
  }

LABEL_6:
  externalData4 = [(MockAKSOptionalParameters *)v17 externalData];
  [(MockAKSRefKeyObject *)v10 setExternalData:externalData4];

  acmHandle = [(MockAKSOptionalParameters *)v17 acmHandle];
  [(MockAKSRefKeyObject *)v10 setAcmHandle:acmHandle];

  v28 = objc_alloc_init(MockAKSRefKey);
  keyData2 = [(MockAKSRefKeyObject *)v10 keyData];
  [(MockAKSRefKey *)v28 setKey:keyData2];

  [(MockAKSRefKey *)v28 setOptionalParams:parametersCopy];
  data = [(MockAKSRefKey *)v28 data];
  [(MockAKSRefKeyObject *)v10 setBlob:data];

LABEL_7:
  v31 = v10;
LABEL_12:

  return v31;
}

@end