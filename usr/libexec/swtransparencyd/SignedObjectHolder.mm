@interface SignedObjectHolder
+ (id)parseFromData:(id)data error:(id *)error;
+ (id)signedTypeWithObject:(id)object;
+ (id)signedTypeWithObject:(id)object verifier:(id)verifier dataStore:(id)store;
- (BOOL)hasSignature;
- (NSData)object;
- (Signature)signature;
- (SignedObjectHolder)init;
- (id)data;
- (id)diagnosticsJsonDictionary;
- (id)signatureDiagnosticsJsonDictionary;
- (unint64_t)verifyWithError:(id *)error;
- (void)setObject:(id)object;
- (void)setSignature:(id)signature;
@end

@implementation SignedObjectHolder

- (NSData)object
{
  signedObject = [(SignedObjectHolder *)self signedObject];
  object = [signedObject object];

  return object;
}

- (void)setObject:(id)object
{
  objectCopy = object;
  signedObject = [(SignedObjectHolder *)self signedObject];
  [signedObject setObject:objectCopy];
}

- (Signature)signature
{
  signedObject = [(SignedObjectHolder *)self signedObject];
  signature = [signedObject signature];

  return signature;
}

- (void)setSignature:(id)signature
{
  signatureCopy = signature;
  signedObject = [(SignedObjectHolder *)self signedObject];
  [signedObject setSignature:signatureCopy];
}

- (BOOL)hasSignature
{
  signedObject = [(SignedObjectHolder *)self signedObject];
  hasSignature = [signedObject hasSignature];

  return hasSignature;
}

- (id)data
{
  signedObject = [(SignedObjectHolder *)self signedObject];
  data = [signedObject data];

  return data;
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

+ (id)parseFromData:(id)data error:(id *)error
{
  v5 = [(TransparencyGPBMessage *)SignedObject parseFromData:data error:error];
  if (v5)
  {
    v6 = [self signedTypeWithObject:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)signedTypeWithObject:(id)object verifier:(id)verifier dataStore:(id)store
{
  objectCopy = object;
  verifierCopy = verifier;
  storeCopy = store;
  v10 = objc_opt_class();
  if (v10 == objc_opt_class())
  {
    v13 = [NSException exceptionWithName:@"AbstractClassException" reason:@"This is an abstract class. To use it userInfo:please subclass.", 0];
    objc_exception_throw(v13);
  }

  v11 = objc_alloc_init(SignedObjectHolder);

  return v11;
}

+ (id)signedTypeWithObject:(id)object
{
  objectCopy = object;
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
  signature = [(SignedObjectHolder *)self signature];
  v3Signature = [signature signature];
  kt_hexString = [v3Signature kt_hexString];
  v15[0] = kt_hexString;
  v14[1] = @"signingKeySpkiHash";
  signature2 = [(SignedObjectHolder *)self signature];
  signingKeySpkihash = [signature2 signingKeySpkihash];
  kt_hexString2 = [signingKeySpkihash kt_hexString];
  v15[1] = kt_hexString2;
  v14[2] = @"algorithm";
  v9 = Signature_SignatureAlgorithm_EnumDescriptor();
  signature3 = [(SignedObjectHolder *)self signature];
  v11 = [v9 textFormatNameForValue:{objc_msgSend(signature3, "algorithm")}];
  v15[2] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];

  return v12;
}

- (id)diagnosticsJsonDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  object = [(SignedObjectHolder *)self object];
  kt_hexString = [object kt_hexString];
  [v3 setObject:kt_hexString forKeyedSubscript:@"object"];

  signatureDiagnosticsJsonDictionary = [(SignedObjectHolder *)self signatureDiagnosticsJsonDictionary];
  [v3 setObject:signatureDiagnosticsJsonDictionary forKeyedSubscript:@"signature"];

  return v3;
}

- (unint64_t)verifyWithError:(id *)error
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