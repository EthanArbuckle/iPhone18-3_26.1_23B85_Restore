@interface MCConferenceRoomDisplayPayloadHandler
- (void)remove;
@end

@implementation MCConferenceRoomDisplayPayloadHandler

- (void)remove
{
  v3 = [(MCNewPayloadHandler *)self profileHandler];
  v4 = [v3 isSetAside];

  if ((v4 & 1) == 0)
  {

    [(MCConferenceRoomDisplayPayloadHandler *)self _removeConferenceRoomDisplayConfiguration];
  }
}

@end