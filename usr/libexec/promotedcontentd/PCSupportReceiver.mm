@interface PCSupportReceiver
- (PCSupportReceiver)initWithConnection:(id)a3;
- (void)addClientToSegments:(id)a3 replaceExisting:(BOOL)a4 privateSegment:(BOOL)a5;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)extendCollectionClassesForExportedInterface:(id)a3;
- (void)fetchConfigurationForClass:(id)a3 completion:(id)a4;
- (void)fetchGenderAndAgeGroupData:(id)a3;
- (void)invokeTestingRigHandlerForMessage:(id)a3 payload:(id)a4 completionHandler:(id)a5;
- (void)policiesForContainerType:(id)a3 adType:(id)a4 adFormatType:(id)a5 completion:(id)a6;
- (void)policiesToEnforce:(id)a3;
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

- (PCSupportReceiver)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PCSupportReceiver;
  v6 = [(PCSupportReceiver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

- (void)addClientToSegments:(id)a3 replaceExisting:(BOOL)a4 privateSegment:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = objc_alloc_init(ADTrackingTransparency);
  v10 = [v9 personalizedAds];

  if (v10)
  {
    v11 = [v8 componentsJoinedByString:{@", "}];
    v12 = +[NSUUID UUID];
    v13 = objc_alloc_init(APThirdPartySegmentUpdateLegacyInterface);
    v14 = [(PCSupportReceiver *)self connection];
    v15 = [v14 bundleID];
    [(APThirdPartySegmentUpdateLegacyInterface *)v13 addClientToSegments:v8 token:v12 bundleID:v15 replaceExisting:v6 privateSegment:v5];

    v16 = APLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v12 UUIDString];
      v18 = 138543619;
      v19 = v17;
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

- (void)policiesForContainerType:(id)a3 adType:(id)a4 adFormatType:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = [APPCPolicyEngine policiesForContainerType:a3 adType:a4 adFormatType:a5];
  v9[2](v9, v10);
}

- (void)policiesToEnforce:(id)a3
{
  v3 = a3;
  v4 = +[APPCPolicyEngine policiesToEnforce];
  v3[2](v3, v4);
}

- (void)fetchGenderAndAgeGroupData:(id)a3
{
  [APIDAccountProvider fetchGenderAndAgeData:0 completionHandler:a3];

  [(PCSupportReceiver *)self finishedWithRequests];
}

- (void)fetchConfigurationForClass:(id)a3 completion:(id)a4
{
  v5 = a4;
  v7 = [APConfigurationMediator configurationForClass:NSClassFromString(a3) usingCache:0];
  v6 = [v7 configDictionary];
  v5[2](v5, v6);
}

- (void)invokeTestingRigHandlerForMessage:(id)a3 payload:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[APTestingRig sharedInstance];
  [v10 invokeHandlerForMessage:v9 payload:v8 completionHandler:v7];
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

- (void)extendCollectionClassesForExportedInterface:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v4, v5, objc_opt_class(), 0];
  [v3 setClasses:v6 forSelector:"addClientToSegments:replaceExisting:privateSegment:" argumentIndex:0 ofReply:0];
}

@end