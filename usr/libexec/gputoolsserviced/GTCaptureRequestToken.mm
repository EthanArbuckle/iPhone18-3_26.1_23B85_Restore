@interface GTCaptureRequestToken
- (GTCaptureRequestToken)initWithCaptureService:(id)service andTokenId:(unint64_t)id;
- (id)description;
@end

@implementation GTCaptureRequestToken

- (GTCaptureRequestToken)initWithCaptureService:(id)service andTokenId:(unint64_t)id
{
  serviceCopy = service;
  v13.receiver = self;
  v13.super_class = GTCaptureRequestToken;
  v8 = [(GTCaptureRequestToken *)&v13 init];
  if (v8)
  {
    v9 = dispatch_semaphore_create(0);
    finished = v8->_finished;
    v8->_finished = v9;

    v8->_tokenId = id;
    objc_storeStrong(&v8->_service, service);
    v11 = v8;
  }

  return v8;
}

- (id)description
{
  v5.receiver = self;
  v5.super_class = GTCaptureRequestToken;
  v2 = [(GTCaptureRequestToken *)&v5 self];
  v3 = [NSString stringWithFormat:@"%@", v2];

  return v3;
}

@end