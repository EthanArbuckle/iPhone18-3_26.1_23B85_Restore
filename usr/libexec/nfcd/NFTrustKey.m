@interface NFTrustKey
+ (id)keyWithIdentifier:(id)a3;
- (NFTrustKey)initWithCoder:(id)a3;
- (NSData)publicKey;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFTrustKey

- (NFTrustKey)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NFTrustKey;
  v5 = [(NFTrustObject *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(NFTrustKey *)v5 setValue:v6 forKey:@"identifier"];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"counterLimit"];
    [(NFTrustKey *)v5 setValue:v7 forKey:@"counterLimit"];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"counterValue"];
    [(NFTrustKey *)v5 setValue:v8 forKey:@"counterValue"];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyAttestationAuthority"];
    [(NFTrustKey *)v5 setValue:v9 forKey:@"keyAttestationAuthority"];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyAttestation"];
    [(NFTrustKey *)v5 setValue:v10 forKey:@"keyAttestation"];

    v11 = [NFNSCheckedDecoder coder:v4 decodeArrayOfArrayOfClass:objc_opt_class() forKey:@"localValidations"];
    [(NFTrustKey *)v5 setValue:v11 forKey:@"localValidations"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NFTrustKey *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(NFTrustKey *)self counterLimit];
  [v4 encodeObject:v6 forKey:@"counterLimit"];

  v7 = [(NFTrustKey *)self counterValue];
  [v4 encodeObject:v7 forKey:@"counterValue"];

  v8 = [(NFTrustKey *)self keyAttestationAuthority];
  [v4 encodeObject:v8 forKey:@"keyAttestationAuthority"];

  v9 = [(NFTrustKey *)self keyAttestation];
  [v4 encodeObject:v9 forKey:@"keyAttestation"];

  v10 = [(NFTrustKey *)self localValidations];
  [v4 encodeObject:v10 forKey:@"localValidations"];
}

- (NSData)publicKey
{
  publicKey = self->_publicKey;
  if (!publicKey)
  {
    v4 = [(NFTrustKey *)self keyAttestation];
    v5 = [NSData NF_dataWithHexString:v4];
    v6 = [NFTLV TLVWithData:v5];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = v6;
    v7 = [v6 children];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          if ([v12 tag] == 32585)
          {
            v13 = [v12 value];
            v14 = [NFTLV TLVWithData:v13];

            v15 = [v14 value];
            [(NFTrustKey *)self setPublicKey:v15];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    publicKey = self->_publicKey;
  }

  return publicKey;
}

+ (id)keyWithIdentifier:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [NFTrustKey alloc];
    v7 = v6;
    if (v6)
    {
      [(NFTrustKey *)v6 setIdentifier:v5];
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName(a2);
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v9(3, "%c[%{public}s %{public}s]:%i Could not create NFTrustKey with null identifier", v13, ClassName, Name, 220);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = object_getClass(a1);
      if (class_isMetaClass(v15))
      {
        v16 = 43;
      }

      else
      {
        v16 = 45;
      }

      *buf = 67109890;
      v20 = v16;
      v21 = 2082;
      v22 = object_getClassName(a1);
      v23 = 2082;
      v24 = sel_getName(a2);
      v25 = 1024;
      v26 = 220;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not create NFTrustKey with null identifier", buf, 0x22u);
    }

    v7 = 0;
  }

  return v7;
}

@end