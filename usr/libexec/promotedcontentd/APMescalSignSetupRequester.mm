@interface APMescalSignSetupRequester
- (id)headers;
- (id)protoBuffer;
@end

@implementation APMescalSignSetupRequester

- (id)protoBuffer
{
  v3 = objc_alloc_init(APPBMescalSignSAPSetupRequest);
  data = [(APMescalSignSetupRequester *)self data];
  [(APPBMescalSignSAPSetupRequest *)v3 setBuffer:data];

  return v3;
}

- (id)headers
{
  v6.receiver = self;
  v6.super_class = APMescalSignSetupRequester;
  headers = [(APServerRequester *)&v6 headers];
  v3 = [headers mutableCopy];

  [v3 setObject:@"application/octet-stream" forKey:@"Content-Type"];
  v4 = [v3 copy];

  return v4;
}

@end