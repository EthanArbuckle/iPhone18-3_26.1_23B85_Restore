@interface MCSingleSignOnPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCSingleSignOnPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCSingleSignOnPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end