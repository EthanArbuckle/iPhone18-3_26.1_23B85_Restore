@interface NFTrustSignResponse
+ (id)signResponseWithRawData:(id)a3 counterValueData:(id)a4;
- (NFTrustSignResponse)initWithCoder:(id)a3;
- (NSString)rawData;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFTrustSignResponse

- (NSString)rawData
{
  v2 = [(NFTrustSignResponse *)self trustObjectInternalRawNSData];
  v3 = [v2 NF_asHexString];

  return v3;
}

- (NFTrustSignResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NFTrustSignResponse;
  v5 = [(NFTrustObject *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trustObjectInternalRawNSData"];
    [(NFTrustSignResponse *)v5 setValue:v6 forKey:@"trustObjectInternalRawNSData"];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
    [(NFTrustSignResponse *)v5 setValue:v7 forKey:@"key"];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"counterValue"];
    [(NFTrustSignResponse *)v5 setValue:v8 forKey:@"counterValue"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NFTrustSignResponse *)self trustObjectInternalRawNSData];
  [v4 encodeObject:v5 forKey:@"trustObjectInternalRawNSData"];

  v6 = [(NFTrustSignResponse *)self key];
  [v4 encodeObject:v6 forKey:@"key"];

  v7 = [(NFTrustSignResponse *)self counterValue];
  [v4 encodeObject:v7 forKey:@"counterValue"];
}

+ (id)signResponseWithRawData:(id)a3 counterValueData:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = [a1 alloc];
    v10 = v9;
    if (v9)
    {
      [v9 setTrustObjectInternalRawNSData:v7];
      if (v8)
      {
        v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", bswap32(*[v8 bytes]));
        [v10 setCounterValue:v11];
      }
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v13 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName(a2);
      v17 = 45;
      if (isMetaClass)
      {
        v17 = 43;
      }

      v13(3, "%c[%{public}s %{public}s]:%i Could not create SignResponse with nil data", v17, ClassName, Name, 407);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = object_getClass(a1);
      if (class_isMetaClass(v19))
      {
        v20 = 43;
      }

      else
      {
        v20 = 45;
      }

      *buf = 67109890;
      v24 = v20;
      v25 = 2082;
      v26 = object_getClassName(a1);
      v27 = 2082;
      v28 = sel_getName(a2);
      v29 = 1024;
      v30 = 407;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not create SignResponse with nil data", buf, 0x22u);
    }

    v10 = 0;
  }

  return v10;
}

@end