@interface MCEDUClassroomPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCEDUClassroomPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCEDUClassroomPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end