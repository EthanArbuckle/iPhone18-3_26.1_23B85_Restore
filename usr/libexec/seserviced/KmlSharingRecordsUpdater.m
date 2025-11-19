@interface KmlSharingRecordsUpdater
- (KmlSharingRecordsUpdater)initWithEndpoint:(id)a3;
@end

@implementation KmlSharingRecordsUpdater

- (KmlSharingRecordsUpdater)initWithEndpoint:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = KmlSharingRecordsUpdater;
  v6 = [(KmlSharingRecordsUpdater *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpoint, a3);
    v9 = [v5 subjectIdentifier];
    endpointIdentifier = v7->_endpointIdentifier;
    v7->_endpointIdentifier = v9;

    v11 = +[NSMutableDictionary dictionary];
    invitationIdToConfigMap = v7->_invitationIdToConfigMap;
    v7->_invitationIdToConfigMap = v11;

    v13 = sub_100394A94();
    updaterQueue = v7->_updaterQueue;
    v7->_updaterQueue = v13;

    sub_1003DAE2C(v7);
  }

  return v7;
}

@end