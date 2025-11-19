@interface MCAppleServicesPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCAppleServicesPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCAppleServicesPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end