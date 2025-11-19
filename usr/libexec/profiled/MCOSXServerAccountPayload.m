@interface MCOSXServerAccountPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCOSXServerAccountPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCOSXServerAccountPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end