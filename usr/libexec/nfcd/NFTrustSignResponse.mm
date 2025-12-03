@interface NFTrustSignResponse
+ (id)signResponseWithRawData:(id)data counterValueData:(id)valueData;
- (NFTrustSignResponse)initWithCoder:(id)coder;
- (NSString)rawData;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFTrustSignResponse

- (NSString)rawData
{
  trustObjectInternalRawNSData = [(NFTrustSignResponse *)self trustObjectInternalRawNSData];
  nF_asHexString = [trustObjectInternalRawNSData NF_asHexString];

  return nF_asHexString;
}

- (NFTrustSignResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = NFTrustSignResponse;
  v5 = [(NFTrustObject *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trustObjectInternalRawNSData"];
    [(NFTrustSignResponse *)v5 setValue:v6 forKey:@"trustObjectInternalRawNSData"];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
    [(NFTrustSignResponse *)v5 setValue:v7 forKey:@"key"];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"counterValue"];
    [(NFTrustSignResponse *)v5 setValue:v8 forKey:@"counterValue"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  trustObjectInternalRawNSData = [(NFTrustSignResponse *)self trustObjectInternalRawNSData];
  [coderCopy encodeObject:trustObjectInternalRawNSData forKey:@"trustObjectInternalRawNSData"];

  v6 = [(NFTrustSignResponse *)self key];
  [coderCopy encodeObject:v6 forKey:@"key"];

  counterValue = [(NFTrustSignResponse *)self counterValue];
  [coderCopy encodeObject:counterValue forKey:@"counterValue"];
}

+ (id)signResponseWithRawData:(id)data counterValueData:(id)valueData
{
  dataCopy = data;
  valueDataCopy = valueData;
  if (dataCopy)
  {
    v9 = [self alloc];
    v10 = v9;
    if (v9)
    {
      [v9 setTrustObjectInternalRawNSData:dataCopy];
      if (valueDataCopy)
      {
        v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", bswap32(*[valueDataCopy bytes]));
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
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
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
      v19 = object_getClass(self);
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
      v26 = object_getClassName(self);
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