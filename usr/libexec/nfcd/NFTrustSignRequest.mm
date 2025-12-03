@interface NFTrustSignRequest
+ (id)signRequestWithChallenge:(id)challenge data:(id)data;
- (NFTrustSignRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFTrustSignRequest

- (NFTrustSignRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = NFTrustSignRequest;
  v5 = [(NFTrustObject *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"challenge"];
    [(NFTrustSignRequest *)v5 setValue:v6 forKey:@"challenge"];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    [(NFTrustSignRequest *)v5 setValue:v7 forKey:@"data"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  challenge = [(NFTrustSignRequest *)self challenge];
  [coderCopy encodeObject:challenge forKey:@"challenge"];

  data = [(NFTrustSignRequest *)self data];
  [coderCopy encodeObject:data forKey:@"data"];
}

+ (id)signRequestWithChallenge:(id)challenge data:(id)data
{
  challengeCopy = challenge;
  dataCopy = data;
  if (!challengeCopy)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v12 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v16 = 45;
      if (isMetaClass)
      {
        v16 = 43;
      }

      v12(3, "%c[%{public}s %{public}s]:%i Could not create SignRequest with nil challenge", v16, ClassName, Name, 344);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v18 = object_getClass(self);
    if (class_isMetaClass(v18))
    {
      v19 = 43;
    }

    else
    {
      v19 = 45;
    }

    *buf = 67109890;
    v33 = v19;
    v34 = 2082;
    v35 = object_getClassName(self);
    v36 = 2082;
    v37 = sel_getName(a2);
    v38 = 1024;
    v39 = 344;
    v20 = "%c[%{public}s %{public}s]:%i Could not create SignRequest with nil challenge";
    goto LABEL_25;
  }

  if ([challengeCopy length] != 8)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v22 = v21;
      v23 = object_getClass(self);
      v24 = class_isMetaClass(v23);
      v25 = object_getClassName(self);
      v31 = sel_getName(a2);
      v26 = 45;
      if (v24)
      {
        v26 = 43;
      }

      v22(3, "%c[%{public}s %{public}s]:%i Could not create SignRequest with challenge length != 0x08", v26, v25, v31, 349);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v27 = object_getClass(self);
    if (class_isMetaClass(v27))
    {
      v28 = 43;
    }

    else
    {
      v28 = 45;
    }

    *buf = 67109890;
    v33 = v28;
    v34 = 2082;
    v35 = object_getClassName(self);
    v36 = 2082;
    v37 = sel_getName(a2);
    v38 = 1024;
    v39 = 349;
    v20 = "%c[%{public}s %{public}s]:%i Could not create SignRequest with challenge length != 0x08";
LABEL_25:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v20, buf, 0x22u);
LABEL_26:

    v10 = 0;
    goto LABEL_27;
  }

  if (![dataCopy length])
  {

    dataCopy = 0;
  }

  v9 = [self alloc];
  v10 = v9;
  if (v9)
  {
    [v9 setChallenge:challengeCopy];
    [v10 setData:dataCopy];
  }

LABEL_27:

  return v10;
}

@end