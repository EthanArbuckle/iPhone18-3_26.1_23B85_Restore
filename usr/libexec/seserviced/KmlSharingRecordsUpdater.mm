@interface KmlSharingRecordsUpdater
- (KmlSharingRecordsUpdater)initWithEndpoint:(id)endpoint;
@end

@implementation KmlSharingRecordsUpdater

- (KmlSharingRecordsUpdater)initWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v15.receiver = self;
  v15.super_class = KmlSharingRecordsUpdater;
  v6 = [(KmlSharingRecordsUpdater *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpoint, endpoint);
    subjectIdentifier = [endpointCopy subjectIdentifier];
    endpointIdentifier = v7->_endpointIdentifier;
    v7->_endpointIdentifier = subjectIdentifier;

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