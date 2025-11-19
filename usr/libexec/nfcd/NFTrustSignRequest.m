@interface NFTrustSignRequest
+ (id)signRequestWithChallenge:(id)a3 data:(id)a4;
- (NFTrustSignRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFTrustSignRequest

- (NFTrustSignRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NFTrustSignRequest;
  v5 = [(NFTrustObject *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"challenge"];
    [(NFTrustSignRequest *)v5 setValue:v6 forKey:@"challenge"];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    [(NFTrustSignRequest *)v5 setValue:v7 forKey:@"data"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NFTrustSignRequest *)self challenge];
  [v4 encodeObject:v5 forKey:@"challenge"];

  v6 = [(NFTrustSignRequest *)self data];
  [v4 encodeObject:v6 forKey:@"data"];
}

+ (id)signRequestWithChallenge:(id)a3 data:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v12 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
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

    v18 = object_getClass(a1);
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
    v35 = object_getClassName(a1);
    v36 = 2082;
    v37 = sel_getName(a2);
    v38 = 1024;
    v39 = 344;
    v20 = "%c[%{public}s %{public}s]:%i Could not create SignRequest with nil challenge";
    goto LABEL_25;
  }

  if ([v7 length] != 8)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v22 = v21;
      v23 = object_getClass(a1);
      v24 = class_isMetaClass(v23);
      v25 = object_getClassName(a1);
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

    v27 = object_getClass(a1);
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
    v35 = object_getClassName(a1);
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

  if (![v8 length])
  {

    v8 = 0;
  }

  v9 = [a1 alloc];
  v10 = v9;
  if (v9)
  {
    [v9 setChallenge:v7];
    [v10 setData:v8];
  }

LABEL_27:

  return v10;
}

@end