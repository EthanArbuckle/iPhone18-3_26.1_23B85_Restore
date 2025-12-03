@interface MCConferenceRoomDisplayPayloadHandler
- (void)remove;
@end

@implementation MCConferenceRoomDisplayPayloadHandler

- (void)remove
{
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  isSetAside = [profileHandler isSetAside];

  if ((isSetAside & 1) == 0)
  {

    [(MCConferenceRoomDisplayPayloadHandler *)self _removeConferenceRoomDisplayConfiguration];
  }
}

@end