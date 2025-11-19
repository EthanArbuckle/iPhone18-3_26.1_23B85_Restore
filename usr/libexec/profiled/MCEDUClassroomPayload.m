@interface MCEDUClassroomPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCEDUClassroomPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCEDUClassroomPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end