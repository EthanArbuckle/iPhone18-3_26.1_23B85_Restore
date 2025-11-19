@interface MCSCEPPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCSCEPPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCNewSCEPPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end