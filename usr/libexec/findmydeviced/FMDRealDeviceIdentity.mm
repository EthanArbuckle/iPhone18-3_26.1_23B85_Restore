@interface FMDRealDeviceIdentity
+ (id)sharedInstance;
- (FMDRealDeviceIdentity)init;
- (void)attestSigningRequest:(id)request completion:(id)completion;
@end

@implementation FMDRealDeviceIdentity

+ (id)sharedInstance
{
  if (qword_1003149A8 != -1)
  {
    sub_10022D704();
  }

  v3 = qword_1003149A0;

  return v3;
}

- (FMDRealDeviceIdentity)init
{
  v6.receiver = self;
  v6.super_class = FMDRealDeviceIdentity;
  v2 = [(FMDRealDeviceIdentity *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("FMDReissueUCRTQueue", 0);
    reissueUCRTQueue = v2->_reissueUCRTQueue;
    v2->_reissueUCRTQueue = v3;
  }

  return v2;
}

- (void)attestSigningRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v7 = objc_alloc_init(FMDDeviceIdentityFactory);
  [v7 baaIdentityAttestationForSigningRequest:requestCopy completion:completionCopy];
}

@end