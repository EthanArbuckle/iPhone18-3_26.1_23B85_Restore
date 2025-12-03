@interface MCSharedDeviceConfigurationPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCSharedDeviceConfigurationPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCSharedDeviceConfigurationPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end