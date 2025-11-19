@interface MockAKSRefKeyObject
- (MockAKSRefKeyObject)initWithKeyData:(id)a3 parameters:(id)a4 error:(id *)a5;
@end

@implementation MockAKSRefKeyObject

- (MockAKSRefKeyObject)initWithKeyData:(id)a3 parameters:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v35.receiver = self;
  v35.super_class = MockAKSRefKeyObject;
  v10 = [(MockAKSRefKeyObject *)&v35 init];
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = [v8 copy];
  [(MockAKSRefKeyObject *)v10 setKeyData:v11];

  v12 = [[_SFAESKeySpecifier alloc] initWithBitSize:2];
  v13 = [_SFAESKey alloc];
  v14 = [(MockAKSRefKeyObject *)v10 keyData];
  v15 = [v13 initWithData:v14 specifier:v12 error:a5];
  [(MockAKSRefKeyObject *)v10 setKey:v15];

  v16 = [(MockAKSRefKeyObject *)v10 key];

  if (!v16)
  {
    goto LABEL_11;
  }

  v17 = [[MockAKSOptionalParameters alloc] initWithData:v9];
  v18 = [(MockAKSOptionalParameters *)v17 externalData];

  if (v18)
  {
    cf = 0;
    v19 = [(MockAKSOptionalParameters *)v17 externalData];
    v20 = [v19 bytes];

    v21 = [(MockAKSOptionalParameters *)v17 externalData];
    v22 = [v21 length];
    der_decode_plist(0, &cf, &v33, v20, v22 + v20, v23, v24, v25);

    if (cf)
    {
      CFRelease(cf);
      goto LABEL_6;
    }

    if (a5)
    {
      *a5 = [NSError errorWithDomain:@"foo" code:-536870206 userInfo:0];
    }

LABEL_11:
    v31 = 0;
    goto LABEL_12;
  }

LABEL_6:
  v26 = [(MockAKSOptionalParameters *)v17 externalData];
  [(MockAKSRefKeyObject *)v10 setExternalData:v26];

  v27 = [(MockAKSOptionalParameters *)v17 acmHandle];
  [(MockAKSRefKeyObject *)v10 setAcmHandle:v27];

  v28 = objc_alloc_init(MockAKSRefKey);
  v29 = [(MockAKSRefKeyObject *)v10 keyData];
  [(MockAKSRefKey *)v28 setKey:v29];

  [(MockAKSRefKey *)v28 setOptionalParams:v9];
  v30 = [(MockAKSRefKey *)v28 data];
  [(MockAKSRefKeyObject *)v10 setBlob:v30];

LABEL_7:
  v31 = v10;
LABEL_12:

  return v31;
}

@end