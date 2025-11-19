@interface SignedObjectHolder
+ (id)parseFromData:(id)a3 error:(id *)a4;
+ (id)signedTypeWithObject:(id)a3;
+ (id)signedTypeWithObject:(id)a3 verifier:(id)a4 dataStore:(id)a5;
- (BOOL)hasSignature;
- (NSData)object;
- (Signature)signature;
- (SignedObjectHolder)init;
- (id)data;
- (id)diagnosticsJsonDictionary;
- (id)signatureDiagnosticsJsonDictionary;
- (unint64_t)verifyWithError:(id *)a3;
- (void)setObject:(id)a3;
- (void)setSignature:(id)a3;
@end

@implementation SignedObjectHolder

- (NSData)object
{
  v2 = [(SignedObjectHolder *)self signedObject];
  v3 = [v2 object];

  return v3;
}

- (void)setObject:(id)a3
{
  v4 = a3;
  v5 = [(SignedObjectHolder *)self signedObject];
  [v5 setObject:v4];
}

- (Signature)signature
{
  v2 = [(SignedObjectHolder *)self signedObject];
  v3 = [v2 signature];

  return v3;
}

- (void)setSignature:(id)a3
{
  v4 = a3;
  v5 = [(SignedObjectHolder *)self signedObject];
  [v5 setSignature:v4];
}

- (BOOL)hasSignature
{
  v2 = [(SignedObjectHolder *)self signedObject];
  v3 = [v2 hasSignature];

  return v3;
}

- (id)data
{
  v2 = [(SignedObjectHolder *)self signedObject];
  v3 = [v2 data];

  return v3;
}

- (SignedObjectHolder)init
{
  v5.receiver = self;
  v5.super_class = SignedObjectHolder;
  v2 = [(SignedObjectHolder *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(SignedObject);
    [(SignedObjectHolder *)v2 setSignedObject:v3];
  }

  return v2;
}

+ (id)parseFromData:(id)a3 error:(id *)a4
{
  v5 = [(TransparencyGPBMessage *)SignedObject parseFromData:a3 error:a4];
  if (v5)
  {
    v6 = [a1 signedTypeWithObject:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)signedTypeWithObject:(id)a3 verifier:(id)a4 dataStore:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_class();
  if (v10 == objc_opt_class())
  {
    v13 = [NSException exceptionWithName:@"AbstractClassException" reason:@"This is an abstract class. To use it userInfo:please subclass.", 0];
    objc_exception_throw(v13);
  }

  v11 = objc_alloc_init(SignedObjectHolder);

  return v11;
}

+ (id)signedTypeWithObject:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    v7 = [NSException exceptionWithName:@"AbstractClassException" reason:@"This is an abstract class. To use it userInfo:please subclass.", 0];
    objc_exception_throw(v7);
  }

  v5 = objc_alloc_init(SignedObjectHolder);

  return v5;
}

- (id)signatureDiagnosticsJsonDictionary
{
  v14[0] = @"signature";
  v3 = [(SignedObjectHolder *)self signature];
  v4 = [v3 signature];
  v5 = [v4 kt_hexString];
  v15[0] = v5;
  v14[1] = @"signingKeySpkiHash";
  v6 = [(SignedObjectHolder *)self signature];
  v7 = [v6 signingKeySpkihash];
  v8 = [v7 kt_hexString];
  v15[1] = v8;
  v14[2] = @"algorithm";
  v9 = Signature_SignatureAlgorithm_EnumDescriptor();
  v10 = [(SignedObjectHolder *)self signature];
  v11 = [v9 textFormatNameForValue:{objc_msgSend(v10, "algorithm")}];
  v15[2] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];

  return v12;
}

- (id)diagnosticsJsonDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(SignedObjectHolder *)self object];
  v5 = [v4 kt_hexString];
  [v3 setObject:v5 forKeyedSubscript:@"object"];

  v6 = [(SignedObjectHolder *)self signatureDiagnosticsJsonDictionary];
  [v3 setObject:v6 forKeyedSubscript:@"signature"];

  return v3;
}

- (unint64_t)verifyWithError:(id *)a3
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    v5 = [NSException exceptionWithName:@"AbstractClassException" reason:@"This is an abstract class. To use it userInfo:please subclass.", 0];
    objc_exception_throw(v5);
  }

  return 0;
}

@end