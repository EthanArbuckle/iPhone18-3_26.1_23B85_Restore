@interface KmlSharingInvitationRecordsUpdater
- (KmlSharingInvitationRecordsUpdater)init;
@end

@implementation KmlSharingInvitationRecordsUpdater

- (KmlSharingInvitationRecordsUpdater)init
{
  v8.receiver = self;
  v8.super_class = KmlSharingInvitationRecordsUpdater;
  v2 = [(KmlSharingInvitationRecordsUpdater *)&v8 init];
  if (v2)
  {
    v4 = +[NSMutableDictionary dictionary];
    invitationIdToRecordMap = v2->_invitationIdToRecordMap;
    v2->_invitationIdToRecordMap = v4;

    v6 = sub_100378D4C();
    updaterQueue = v2->_updaterQueue;
    v2->_updaterQueue = v6;

    sub_1003C7E1C(v2);
  }

  return v2;
}

@end