@interface MCChaperonePayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCChaperonePayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCNewChaperonePayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end