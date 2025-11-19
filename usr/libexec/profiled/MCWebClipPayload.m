@interface MCWebClipPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCWebClipPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCNewWebClipPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end