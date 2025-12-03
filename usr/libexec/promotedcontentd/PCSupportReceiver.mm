@interface PCSupportReceiver
- (PCSupportReceiver)initWithConnection:(id)connection;
- (void)addClientToSegments:(id)segments replaceExisting:(BOOL)existing privateSegment:(BOOL)segment;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)extendCollectionClassesForExportedInterface:(id)interface;
- (void)fetchConfigurationForClass:(id)class completion:(id)completion;
- (void)fetchGenderAndAgeGroupData:(id)data;
- (void)invokeTestingRigHandlerForMessage:(id)message payload:(id)payload completionHandler:(id)handler;
- (void)policiesForContainerType:(id)type adType:(id)adType adFormatType:(id)formatType completion:(id)completion;
- (void)policiesToEnforce:(id)enforce;
@end

@implementation PCSupportReceiver

- (void)connectionInvalidated
{
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Connection to client for PromotedContentSupport was invalidated.", v4, 2u);
  }

  [(PCSupportReceiver *)self finishedWithRequests];
}

- (PCSupportReceiver)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = PCSupportReceiver;
  v6 = [(PCSupportReceiver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (void)addClientToSegments:(id)segments replaceExisting:(BOOL)existing privateSegment:(BOOL)segment
{
  segmentCopy = segment;
  existingCopy = existing;
  segmentsCopy = segments;
  v9 = objc_alloc_init(ADTrackingTransparency);
  personalizedAds = [v9 personalizedAds];

  if (personalizedAds)
  {
    v11 = [segmentsCopy componentsJoinedByString:{@", "}];
    v12 = +[NSUUID UUID];
    v13 = objc_alloc_init(APThirdPartySegmentUpdateLegacyInterface);
    connection = [(PCSupportReceiver *)self connection];
    bundleID = [connection bundleID];
    [(APThirdPartySegmentUpdateLegacyInterface *)v13 addClientToSegments:segmentsCopy token:v12 bundleID:bundleID replaceExisting:existingCopy privateSegment:segmentCopy];

    v16 = APLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      uUIDString = [v12 UUIDString];
      v18 = 138543619;
      v19 = uUIDString;
      v20 = 2113;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%{public}@ Add client to segments: %{private}@.", &v18, 0x16u);
    }
  }

  else
  {
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Unable to update third-party segment data due to disabled Personalized Ads.", &v18, 2u);
    }
  }

  [(PCSupportReceiver *)self finishedWithRequests];
}

- (void)policiesForContainerType:(id)type adType:(id)adType adFormatType:(id)formatType completion:(id)completion
{
  completionCopy = completion;
  v10 = [APPCPolicyEngine policiesForContainerType:type adType:adType adFormatType:formatType];
  completionCopy[2](completionCopy, v10);
}

- (void)policiesToEnforce:(id)enforce
{
  enforceCopy = enforce;
  v4 = +[APPCPolicyEngine policiesToEnforce];
  enforceCopy[2](enforceCopy, v4);
}

- (void)fetchGenderAndAgeGroupData:(id)data
{
  [APIDAccountProvider fetchGenderAndAgeData:0 completionHandler:data];

  [(PCSupportReceiver *)self finishedWithRequests];
}

- (void)fetchConfigurationForClass:(id)class completion:(id)completion
{
  completionCopy = completion;
  v7 = [APConfigurationMediator configurationForClass:NSClassFromString(class) usingCache:0];
  configDictionary = [v7 configDictionary];
  completionCopy[2](completionCopy, configDictionary);
}

- (void)invokeTestingRigHandlerForMessage:(id)message payload:(id)payload completionHandler:(id)handler
{
  handlerCopy = handler;
  payloadCopy = payload;
  messageCopy = message;
  v10 = +[APTestingRig sharedInstance];
  [v10 invokeHandlerForMessage:messageCopy payload:payloadCopy completionHandler:handlerCopy];
}

- (void)connectionInterrupted
{
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Connection to client for PromotedContentSupport was interrupted.", v4, 2u);
  }

  [(PCSupportReceiver *)self finishedWithRequests];
}

- (void)extendCollectionClassesForExportedInterface:(id)interface
{
  interfaceCopy = interface;
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v4, v5, objc_opt_class(), 0];
  [interfaceCopy setClasses:v6 forSelector:"addClientToSegments:replaceExisting:privateSegment:" argumentIndex:0 ofReply:0];
}

@end