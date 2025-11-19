@interface MCMDMPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCMDMPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCNewMDMPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end