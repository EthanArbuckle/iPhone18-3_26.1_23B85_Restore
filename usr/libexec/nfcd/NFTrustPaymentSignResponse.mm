@interface NFTrustPaymentSignResponse
+ (id)paymentSignResponseWithSignResponse:(id)response paymentResponse:(id)paymentResponse;
- (NFTrustPaymentSignResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFTrustPaymentSignResponse

- (NFTrustPaymentSignResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = NFTrustPaymentSignResponse;
  v5 = [(NFTrustObject *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signResponse"];
    [(NFTrustPaymentSignResponse *)v5 setValue:v6 forKey:@"signResponse"];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentResponse"];
    [(NFTrustPaymentSignResponse *)v5 setValue:v7 forKey:@"paymentResponse"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  signResponse = [(NFTrustPaymentSignResponse *)self signResponse];
  [coderCopy encodeObject:signResponse forKey:@"signResponse"];

  paymentResponse = [(NFTrustPaymentSignResponse *)self paymentResponse];
  [coderCopy encodeObject:paymentResponse forKey:@"paymentResponse"];
}

+ (id)paymentSignResponseWithSignResponse:(id)response paymentResponse:(id)paymentResponse
{
  responseCopy = response;
  paymentResponseCopy = paymentResponse;
  if (responseCopy)
  {
    v9 = [NFTrustPaymentSignResponse alloc];
    v10 = v9;
    if (v9)
    {
      [(NFTrustPaymentSignResponse *)v9 setSignResponse:responseCopy];
      [(NFTrustPaymentSignResponse *)v10 setPaymentResponse:paymentResponseCopy];
    }
  }

  else
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

      v12(3, "%c[%{public}s %{public}s]:%i Could not create NFTrustPaymentSignResponse with nil NFTrustSignResponse", v16, ClassName, Name, 458);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
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
      v23 = v19;
      v24 = 2082;
      v25 = object_getClassName(self);
      v26 = 2082;
      v27 = sel_getName(a2);
      v28 = 1024;
      v29 = 458;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not create NFTrustPaymentSignResponse with nil NFTrustSignResponse", buf, 0x22u);
    }

    v10 = 0;
  }

  return v10;
}

@end