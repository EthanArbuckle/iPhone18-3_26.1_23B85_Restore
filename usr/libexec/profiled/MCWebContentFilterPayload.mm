@interface MCWebContentFilterPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCWebContentFilterPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCWebContentFilterPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end