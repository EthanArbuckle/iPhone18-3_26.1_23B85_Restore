@interface MCExtensibleSingleSignOnPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCExtensibleSingleSignOnPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCExtensibleSingleSignOnPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end