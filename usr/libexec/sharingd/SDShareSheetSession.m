@interface SDShareSheetSession
+ (id)labelColorWithHostConfiguration:(id)a3;
+ (id)secondaryLabelColorWithHostConfiguration:(id)a3;
- (BOOL)addImage:(id)a3 withAttachmentName:(id)a4 description:(id)a5 previewImage:(id)a6 itemIndex:(int)a7;
- (BOOL)addURL:(id)a3 withAttachmentName:(id)a4 description:(id)a5 previewImage:(id)a6 itemIndex:(int)a7;
- (BOOL)createURLPayloadForData:(id)a3 ofType:(id)a4 withAttachmentName:(id)a5 description:(id)a6 previewImage:(id)a7 itemIndex:(int)a8 completion:(id)a9;
- (BOOL)isValidPayload:(id)a3 toPerson:(id)a4 invalidMessage:(id *)a5;
- (BOOL)skipSlotsRendering;
- (NSString)description;
- (NSString)hostAppBundleID;
- (NSString)hostAppProcessName;
- (SDShareSheetSession)initWithSessionID:(id)a3 xpcConnection:(id)a4 instantShareSheet:(BOOL)a5 remoteShareSheet:(BOOL)a6 xrRenderingMode:(unint64_t)a7;
- (SDShareSheetSessionDelegate)delegate;
- (id)_orderedActivitiesIncludingUserDisabledExtensionsForAuditToken:(id *)a3;
- (id)_orderedAvailableActivitiesForAuditToken:(id *)a3 WithMatchingContextCustomizationBlock:(id)a4;
- (id)_proxySectionForType:(int64_t)a3;
- (id)airdropNodeForIdentifier:(id)a3;
- (id)connection;
- (id)minimumVisibleShareActivities;
- (id)uiServiceConnection;
- (unint64_t)airDropNearbyCount;
- (void)_activateSecurityContext:(id)a3;
- (void)_deactivateSecurityContext:(id)a3;
- (void)_loadPresentableActivitiesForAuditToken:(id *)a3;
- (void)_loadProxySectionWithType:(int64_t)a3;
- (void)_removeFailedIndexes:(id)a3 forProxySection:(id)a4;
- (void)_updateProxiesWithChangeDetails:(id)a3;
- (void)activate;
- (void)addStatusMonitorObservers;
- (void)cancelAirDropForNode:(id)a3;
- (void)checkPolicyForAirDropPeople;
- (void)checkPolicyForSuggestedPeople;
- (void)didConnectNearbySharingInteractionWithEndpointUUID:(id)a3;
- (void)generateSpecialPreviewPhotoForRequestID:(int64_t)a3;
- (void)invalidate;
- (void)nodesPotentiallyUpdated;
- (void)proxyLoaderManager:(id)a3 didLoadProxiesWithChangeDetails:(id)a4;
- (void)proxyLoaderManagerDidFinishLoadingProxySection:(id)a3 cancelled:(BOOL)a4;
- (void)removeStatusMonitorObservers;
- (void)reportCurrentInvocationForDuration:(int64_t)a3;
- (void)resetAfterAirDropTransferWithItemData:(id)a3;
- (void)sendItems:(id)a3 itemData:(id)a4 toEndpointUUID:(id)a5 withNode:(id)a6;
- (void)setAirDropAllowed:(BOOL)a3;
- (void)setAirDropNodes:(id)a3;
- (void)setHostActionActivityProxies:(id)a3;
- (void)setHostConfiguration:(id)a3;
- (void)setHostShareActivityProxies:(id)a3;
- (void)setPeopleNodes:(id)a3;
- (void)setSuggestedPeople:(id)a3;
- (void)setUiServiceConnection:(id)a3;
- (void)systemRestrictionsChanged:(id)a3;
- (void)updateRestrictedActivityTypes:(id)a3;
@end

@implementation SDShareSheetSession

- (SDShareSheetSession)initWithSessionID:(id)a3 xpcConnection:(id)a4 instantShareSheet:(BOOL)a5 remoteShareSheet:(BOOL)a6 xrRenderingMode:(unint64_t)a7
{
  v9 = a5;
  v13 = a3;
  v14 = a4;
  v61.receiver = self;
  v61.super_class = SDShareSheetSession;
  v15 = [(SDShareSheetSession *)&v61 init];
  if (v15)
  {
    v16 = +[SDShareSheetSlotManager sharedManager];
    objc_sync_enter(v16);
    objc_storeStrong(&v15->_sessionID, a3);
    objc_storeStrong(&v15->__connection, a4);
    if (v9)
    {
      v17 = [v14 valueForEntitlement:@"com.apple.sharesheet.allow-custom-view"];
      if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v17 BOOLValue] & 1) != 0)
      {
        v18 = 1;
      }

      else
      {
        v19 = share_sheet_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          sub_1001B1B74(buf, [v14 processIdentifier], v19);
        }

        v18 = 0;
      }

      v15->_instantShareSheet = v18;
    }

    v15->_remoteShareSheet = a6;
    v20 = objc_opt_new();
    airDropNodes = v15->_airDropNodes;
    v15->_airDropNodes = v20;

    v22 = objc_opt_new();
    peopleNodes = v15->_peopleNodes;
    v15->_peopleNodes = v22;

    v24 = objc_opt_new();
    realNameToNodeID = v15->_realNameToNodeID;
    v15->_realNameToNodeID = v24;

    v26 = objc_opt_new();
    shareActivityToID = v15->_shareActivityToID;
    v15->_shareActivityToID = v26;

    v28 = objc_opt_new();
    actionActivityToID = v15->_actionActivityToID;
    v15->_actionActivityToID = v28;

    v15->_attachmentCount = 0;
    v15->_sharedItemsCount = 0;
    v30 = +[NSMutableDictionary dictionary];
    sharedItemsMap = v15->_sharedItemsMap;
    v15->_sharedItemsMap = v30;

    v32 = +[NSMutableDictionary dictionary];
    sharedItemsRequestIDToPreviewPhoto = v15->_sharedItemsRequestIDToPreviewPhoto;
    v15->_sharedItemsRequestIDToPreviewPhoto = v32;

    v34 = objc_alloc_init(NSMutableOrderedSet);
    cachedSharedItems = v15->_cachedSharedItems;
    v15->_cachedSharedItems = v34;

    v36 = objc_alloc_init(NSOperationQueue);
    operationQueue = v15->_operationQueue;
    v15->_operationQueue = v36;

    [(NSOperationQueue *)v15->_operationQueue setMaxConcurrentOperationCount:1];
    v38 = +[NSMutableDictionary dictionary];
    transferNodes = v15->_transferNodes;
    v15->_transferNodes = v38;

    v40 = +[NSMutableArray array];
    activeSecurityContexts = v15->_activeSecurityContexts;
    v15->_activeSecurityContexts = v40;

    v15->_xrRenderingMode = a7;
    v42 = objc_alloc_init(SDPeopleBrowser);
    peopleBrowser = v15->_peopleBrowser;
    v15->_peopleBrowser = v42;

    v44 = [v14 sd_connectionBundleID];
    [(SDPeopleBrowser *)v15->_peopleBrowser setBundleID:v44];

    [(SDPeopleBrowser *)v15->_peopleBrowser setSessionID:v13];
    if (SFDeviceSupportsRapportOnlyAirDropDiscovery())
    {
      v62 = kSFBrowserOptionsDelayBonjourUntilTransferKey;
      v63 = &__kCFBooleanTrue;
      v45 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      [(SDPeopleBrowser *)v15->_peopleBrowser setOptions:v45];
    }

    if (+[SFAirDropUserDefaults_objc privateContactDiscoveryEnabled])
    {
      v46 = [SDShareSheetAirDropController alloc];
      v47 = [v14 _queue];
      v48 = [(SDShareSheetAirDropController *)v46 initWithSessionID:v13 queue:v47];
      airDropController = v15->_airDropController;
      v15->_airDropController = v48;

      [(SDShareSheetAirDropController *)v15->_airDropController setDelegate:v15];
    }

    v50 = [SDShareSheetProxyLoaderManager alloc];
    v51 = [(SDShareSheetSession *)v15 sessionID];
    v52 = [(SDShareSheetProxyLoaderManager *)v50 initWithSessionIdentifier:v51];

    [(SDShareSheetProxyLoaderManager *)v52 setDelegate:v15];
    [(SDShareSheetSession *)v15 setProxyLoaderManager:v52];
    objc_initWeak(&location, v15);
    v53 = [SDScreenTimeMonitor alloc];
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_100194FD0;
    v57[3] = &unk_1008D29A8;
    objc_copyWeak(&v59, &location);
    v58 = v14;
    v54 = [(SDScreenTimeMonitor *)v53 initWithPoliciesChangedHandler:v57];
    screenTimeMonitor = v15->_screenTimeMonitor;
    v15->_screenTimeMonitor = v54;

    objc_destroyWeak(&v59);
    objc_destroyWeak(&location);

    objc_sync_exit(v16);
  }

  return v15;
}

- (unint64_t)airDropNearbyCount
{
  if (+[SFAirDropUserDefaults_objc privateContactDiscoveryEnabled])
  {
    v3 = [(SDShareSheetSession *)self airDropController];
    [v3 availableNodes];
  }

  else
  {
    v3 = [(SDShareSheetSession *)self peopleBrowser];
    [v3 people];
  }
  v4 = ;
  v5 = [v4 count];

  return v5;
}

- (void)activate
{
  v3 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v3);
  if (!self->_activateCalled)
  {
    self->_activateCalled = 1;
    [(SDShareSheetSession *)self addStatusMonitorObservers];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100195284;
    block[3] = &unk_1008CDEA0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  objc_sync_exit(v3);
}

- (void)invalidate
{
  v3 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v3);
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    [(SDShareSheetSession *)self removeStatusMonitorObservers];
    v4 = [(SDShareSheetSession *)self peopleBrowser];
    [v4 setDiffableDelegate:0];

    v5 = [(SDShareSheetSession *)self peopleBrowser];
    [(SDShareSheetSession *)self setPeopleBrowser:0];
    v6 = [(SDShareSheetSession *)self airDropController];
    [v6 invalidate];

    [(SDShareSheetSession *)self setAirDropController:0];
    v7 = [(SDShareSheetSession *)self screenTimeMonitor];
    [v7 invalidate];

    [(SDShareSheetSession *)self setScreenTimeMonitor:0];
    [(SDShareSheetSession *)self setDisabledNodesUpdatedHandler:0];
    [(SDShareSheetSession *)self setProxyLoaderManager:0];
    v8 = [(SDShareSheetSession *)self xpcHelperCnx];
    [v8 invalidate];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100195514;
    block[3] = &unk_1008CDEA0;
    v11 = v5;
    v9 = v5;
    dispatch_async(&_dispatch_main_q, block);
  }

  objc_sync_exit(v3);
}

- (void)setAirDropAllowed:(BOOL)a3
{
  v3 = a3;
  obj = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(obj);
  if (self->_airDropAllowed != v3)
  {
    self->_airDropAllowed = v3;
    if (v3 && +[SFAirDropUserDefaults_objc privateContactDiscoveryEnabled])
    {
      v5 = [(SDShareSheetSession *)self airDropController];

      if (!v5)
      {
        v6 = [SDShareSheetAirDropController alloc];
        v7 = [(SDShareSheetSession *)self sessionID];
        v8 = [(SDShareSheetSession *)self connection];
        v9 = [v8 _queue];
        v10 = [(SDShareSheetAirDropController *)v6 initWithSessionID:v7 queue:v9];
        [(SDShareSheetSession *)self setAirDropController:v10];

        v11 = [(SDShareSheetSession *)self airDropController];
        [v11 setDelegate:self];

        v12 = [(SDShareSheetSession *)self xpcHelperCnx];
        v13 = [(SDShareSheetSession *)self airDropController];
        [v13 setHelperConnection:v12];

        if (self->_activateCalled)
        {
          v14 = [(SDShareSheetSession *)self airDropController];
          v15 = [(SDShareSheetSession *)self hostAppBundleID];
          [v14 activateWithBundleID:v15];
        }
      }
    }

    else
    {
      v16 = [(SDShareSheetSession *)self airDropController];
      [v16 invalidate];

      [(SDShareSheetSession *)self setAirDropController:0];
    }
  }

  objc_sync_exit(obj);
}

- (BOOL)skipSlotsRendering
{
  if ([(SDShareSheetSession *)self instantShareSheet])
  {
    return 1;
  }

  return [(SDShareSheetSession *)self remoteShareSheet];
}

- (NSString)description
{
  v3 = [(SDShareSheetSession *)self sessionID];
  v4 = [(SDShareSheetSession *)self hostAppBundleID];
  v5 = [NSString stringWithFormat:@"<SDShareSheetSession: %p, sessionID: %@, hostAppBundleID: %@, airdropAllowed: %i>", self, v3, v4, [(SDShareSheetSession *)self airDropAllowed]];

  return v5;
}

- (id)connection
{
  v3 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v3);
  v4 = self->__connection;
  objc_sync_exit(v3);

  return v4;
}

- (id)uiServiceConnection
{
  v3 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v3);
  v4 = self->__uiServiceConnection;
  objc_sync_exit(v3);

  return v4;
}

- (void)setUiServiceConnection:(id)a3
{
  v4 = a3;
  obj = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(obj);
  uiServiceConnection = self->__uiServiceConnection;
  self->__uiServiceConnection = v4;

  objc_sync_exit(obj);
}

- (void)_activateSecurityContext:(id)a3
{
  v5 = a3;
  v4 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v4);
  if (([(NSMutableArray *)self->_activeSecurityContexts containsObject:v5]& 1) == 0)
  {
    [v5 activate];
    [(NSMutableArray *)self->_activeSecurityContexts addObject:v5];
  }

  objc_sync_exit(v4);
}

- (void)_deactivateSecurityContext:(id)a3
{
  v5 = a3;
  v4 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v4);
  if ([(NSMutableArray *)self->_activeSecurityContexts containsObject:v5])
  {
    [v5 deactivate];
    [(NSMutableArray *)self->_activeSecurityContexts removeObject:v5];
  }

  objc_sync_exit(v4);
}

- (id)airdropNodeForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SDShareSheetSession *)self airDropPeople];
  v6 = [(SDShareSheetSession *)self suggestedPeople];
  v7 = v6;
  if (v5)
  {
    v8 = [v5 arrayByAddingObjectsFromArray:v6];
  }

  else
  {
    v8 = v6;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 nodeIdentifier];
        v15 = [v14 isEqual:v4];

        if (v15)
        {
          v10 = v13;
          goto LABEL_14;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v10;
}

- (void)addStatusMonitorObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"systemRestrictionsChanged:" name:@"com.apple.sharingd.AirDropAllowedChanged" object:0];
  [v3 addObserver:self selector:"systemRestrictionsChanged:" name:@"com.apple.sharingd.BlacklistedAppsChanged" object:0];
}

- (void)removeStatusMonitorObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)systemRestrictionsChanged:(id)a3
{
  v5 = a3;
  v4 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v4);
  if (![(SDShareSheetSession *)self invalidateCalled])
  {
    [(SDShareSheetSession *)self updateRestrictedActivityTypes:&__NSArray0__struct];
    [(SDShareSheetSession *)self nodesPotentiallyUpdated];
  }

  objc_sync_exit(v4);
}

- (void)setHostShareActivityProxies:(id)a3
{
  v5 = a3;
  v6 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v6);
  v7 = self->_hostShareActivityProxies;
  v8 = v5;
  v14 = v8;
  if (v7 == v8)
  {

    goto LABEL_10;
  }

  if ((v8 == 0) != (v7 != 0))
  {
    v9 = [(NSArray *)v7 isEqual:v8];

    if (v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  objc_storeStrong(&self->_hostShareActivityProxies, a3);
  if (![(SDShareSheetSession *)self sentInitialConfiguration])
  {
    v10 = [(SDShareSheetSession *)self screenTimeMonitor];
    v11 = [(SDShareSheetSession *)self minimumVisibleShareActivities];
    [v10 requestPoliciesForActivities:v11];
  }

  v12 = [(SDShareSheetSession *)self screenTimeMonitor];
  v13 = [(SDShareSheetSession *)self shareActivitiesInUserOrder];
  [v12 updateWithActivities:v13];

  [(SDShareSheetSession *)self _loadProxySectionWithType:1];
  [(SDShareSheetSession *)self updateRestrictedActivityTypes:&__NSArray0__struct];
LABEL_10:
  objc_sync_exit(v6);
}

- (void)setHostActionActivityProxies:(id)a3
{
  v5 = a3;
  v6 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v6);
  v7 = self->_hostActionActivityProxies;
  v8 = v5;
  v10 = v8;
  if (v7 == v8)
  {

    goto LABEL_8;
  }

  if ((v8 == 0) == (v7 != 0))
  {

    goto LABEL_7;
  }

  v9 = [(NSArray *)v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_hostActionActivityProxies, a3);
    [(SDShareSheetSession *)self _loadProxySectionWithType:2];
  }

LABEL_8:
  objc_sync_exit(v6);
}

- (void)setSuggestedPeople:(id)a3
{
  v5 = a3;
  v6 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v6);
  v7 = self->_suggestedPeople;
  v8 = v5;
  v10 = v8;
  if (v7 == v8)
  {

    goto LABEL_8;
  }

  if ((v8 == 0) == (v7 != 0))
  {

    goto LABEL_7;
  }

  v9 = [(NSArray *)v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_suggestedPeople, a3);
    [(SDShareSheetSession *)self checkPolicyForSuggestedPeople];
  }

LABEL_8:
  objc_sync_exit(v6);
}

- (void)setPeopleNodes:(id)a3
{
  v5 = a3;
  v6 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v6);
  v7 = self->_peopleNodes;
  v8 = v5;
  v10 = v8;
  if (v7 == v8)
  {

    goto LABEL_8;
  }

  if ((v8 == 0) == (v7 != 0))
  {

    goto LABEL_7;
  }

  v9 = [(NSArray *)v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_peopleNodes, a3);
    [(SDShareSheetSession *)self checkPolicyForSuggestedPeople];
    [(SDShareSheetSession *)self _loadProxySectionWithType:0];
  }

LABEL_8:
  objc_sync_exit(v6);
}

- (void)setAirDropNodes:(id)a3
{
  v5 = a3;
  v6 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v6);
  v7 = self->_airDropNodes;
  v8 = v5;
  v10 = v8;
  if (v7 == v8)
  {

    goto LABEL_8;
  }

  if ((v8 == 0) == (v7 != 0))
  {

    goto LABEL_7;
  }

  v9 = [(NSArray *)v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_airDropNodes, a3);
    [(SDShareSheetSession *)self checkPolicyForAirDropPeople];
  }

LABEL_8:
  objc_sync_exit(v6);
}

- (void)nodesPotentiallyUpdated
{
  obj = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(obj);
  v3 = [(SDShareSheetSession *)self disabledNodesUpdatedHandler];

  if (v3)
  {
    v4 = [(SDShareSheetSession *)self disabledNodesUpdatedHandler];
    v4[2]();
  }

  objc_sync_exit(obj);
}

- (void)updateRestrictedActivityTypes:(id)a3
{
  v25 = a3;
  obj = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(obj);
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v25;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "update restricted activity types:%@", buf, 0xCu);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [(SDShareSheetSession *)self hostShareActivityProxies];
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v6)
  {
    v28 = *v30;
    v27 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v30 != v28)
        {
          objc_enumerationMutation(v27);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        v9 = [v8 activity];
        if (!v9)
        {
          v23 = +[NSAssertionHandler currentHandler];
          [v23 handleFailureInMethod:a2 object:self file:@"SDShareSheetSlotManager.m" lineNumber:646 description:{@"activity is nil for proxy:%@", v8}];
        }

        v10 = [(SDShareSheetSession *)self screenTimeMonitor];
        v11 = [v10 bundleIDForActivity:v9];

        v12 = [(SDShareSheetSession *)self screenTimeMonitor];
        [v8 setIsDisabled:{objc_msgSend(v12, "cachedPolicyForBundleID:", v11) != 0}];

        v13 = [v9 activityType];
        v14 = UIActivityTypeAirDrop;
        v15 = v13;
        v16 = v15;
        if (v14 == v15)
        {

LABEL_15:
          [v8 setIsRestricted:{-[SDShareSheetSession airDropAllowed](self, "airDropAllowed") ^ 1}];
          goto LABEL_18;
        }

        if ((UIActivityTypeAirDrop != 0) != (v15 == 0))
        {
          v17 = [(NSString *)v14 isEqual:v15];

          if (v17)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }

        v18 = +[SDStatusMonitor sharedMonitor];
        v19 = [v18 effectiveBlockedAppBundleIDs];
        [v8 setIsRestricted:{objc_msgSend(v19, "containsObject:", v11)}];

LABEL_18:
        v20 = share_sheet_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v9 activityType];
          v22 = [v9 activityUUID];
          *buf = 138412802;
          v34 = v21;
          v35 = 2112;
          v36 = v22;
          v37 = 2112;
          v38 = v8;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Updating policy for %@/%@, proxy:%@", buf, 0x20u);
        }
      }

      v5 = v27;
      v6 = [v27 countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v6);
  }

  [(SDShareSheetSession *)self checkPolicyForSuggestedPeople];
  [(SDShareSheetSession *)self checkPolicyForAirDropPeople];
  objc_sync_exit(obj);
}

- (void)checkPolicyForSuggestedPeople
{
  v3 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v3);
  v4 = [(SDShareSheetSession *)self suggestedPeople];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100196988;
  v10[3] = &unk_1008D29D0;
  v10[4] = self;
  [v4 enumerateObjectsUsingBlock:v10];

  v5 = [(SDShareSheetSession *)self hostConfiguration];
  v6 = [v5 requestPeopleSuggestionsData];

  if (v6)
  {
    v7 = [(SDShareSheetSession *)self suggestionBrowser];
    v8 = [v7 peopleSuggestions];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100196C8C;
    v9[3] = &unk_1008D29F8;
    v9[4] = self;
    [v8 enumerateObjectsUsingBlock:v9];
  }

  objc_sync_exit(v3);
}

- (void)checkPolicyForAirDropPeople
{
  obj = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(obj);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v2 = [(SDShareSheetSession *)self airDropPeople];
  v3 = [v2 countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v3)
  {
    v22 = *v32;
    v21 = v2;
    do
    {
      v23 = v3;
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v31 + 1) + 8 * i);
        v24 = [(SDShareSheetSession *)self airDropAllowed];
        v5 = [(SDShareSheetSession *)self realNameToNodeID];
        v6 = [v26 realName];
        v7 = [v5 objectForKeyedSubscript:v6];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v8 = [(SDShareSheetSession *)self airDropNodes];
        v9 = [v8 countByEnumeratingWithState:&v27 objects:v41 count:16];
        if (v9)
        {
          v10 = *v28;
          while (2)
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v28 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v27 + 1) + 8 * j);
              v13 = [v12 identifier];
              v14 = v7;
              v15 = v13;
              v16 = v15;
              if (v14 == v15)
              {

LABEL_20:
                [v12 setIsRestricted:v24 ^ 1];
                goto LABEL_21;
              }

              if ((v7 != 0) != (v15 == 0))
              {
                v17 = [v14 isEqual:v15];

                if (v17)
                {
                  goto LABEL_20;
                }
              }

              else
              {
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v27 objects:v41 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

LABEL_21:

        v18 = share_sheet_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v19 = "yes";
          if (v24)
          {
            v19 = "no";
          }

          v36 = v26;
          v37 = 2112;
          v38 = v7;
          v39 = 2080;
          v40 = v19;
          _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Updating policy for %@/%@, isDisabled: %s", buf, 0x20u);
        }
      }

      v2 = v21;
      v3 = [v21 countByEnumeratingWithState:&v31 objects:v42 count:16];
    }

    while (v3);
  }

  objc_sync_exit(obj);
}

- (void)setHostConfiguration:(id)a3
{
  objc_storeStrong(&self->_hostConfiguration, a3);
  v4 = a3;
  v6 = +[UIDevice currentDevice];
  v5 = [v4 hostIdiom];

  [v6 setSh_hostUserInterfaceIdiom:v5];
}

- (id)_orderedAvailableActivitiesForAuditToken:(id *)a3 WithMatchingContextCustomizationBlock:(id)a4
{
  v6 = a4;
  v7 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v7);
  v8 = [(SDShareSheetSession *)self hostConfiguration];
  v9 = [v8 contextForMatchingByActivityItemValueClasses];
  v10 = [v9 copy];

  v11 = [v8 activityTypesToCreateInShareService];
  [v10 setAllowMatchingExtensionActivities:{objc_msgSend(v11, "containsObject:", @"com.apple.UIKit.activity.RemoteExtension"}];

  [v10 setAllowMatchingBuiltInActivities:0];
  v12 = [v8 hostActivityConfigurations];
  v13 = [SUIHostActivityProxy activitiesForConfigurations:v12];
  [v10 setExternalMatchBuiltinOrderedActivities:v13];

  [v10 setHostAuditToken:a3];
  [v10 setIsCollaborative:{objc_msgSend(v8, "isCollaborative")}];
  v14 = [v8 collaborationType];
  [v10 setCollaborationType:v14];

  v15 = [v8 collaborationIsPostShare];
  [v10 setCollaborationIsPostShare:v15];

  v16 = [v8 activityTypesToCreateInShareService];
  v17 = [v16 mutableCopy];

  [v17 removeObject:@"com.apple.UIKit.activity.RemoteExtension"];
  [v10 setActivityTypesGeneratedByDelegate:v17];
  if (v6)
  {
    v6[2](v6, v10);
  }

  if (_os_feature_enabled_impl())
  {
    v18 = [(SDShareSheetSession *)self testingReferenceSnapshot];
    [v10 setTestingReferenceSnapshot:v18];
  }

  v19 = [(SDShareSheetSession *)self activityHelper];
  v20 = [v19 orderedAvailableActivitiesForMatchingContext:v10];

  v21 = [v20 hiddenActivities];
  v22 = [v21 count];

  if (v22)
  {
    v23 = [(SDShareSheetSession *)self hiddenActivities];
    v24 = [v23 count];

    if (v24)
    {
      v25 = [(SDShareSheetSession *)self hiddenActivities];
      v26 = [v20 hiddenActivities];
      v27 = [v25 arrayByAddingObjectsFromArray:v26];
      [(SDShareSheetSession *)self setHiddenActivities:v27];
    }

    else
    {
      v25 = [v20 hiddenActivities];
      v26 = [v25 copy];
      [(SDShareSheetSession *)self setHiddenActivities:v26];
    }
  }

  v28 = [v20 orderedActivities];

  objc_sync_exit(v7);

  return v28;
}

- (void)_loadPresentableActivitiesForAuditToken:(id *)a3
{
  v5 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v5);
  v6 = *&a3->var0[4];
  v8[0] = *a3->var0;
  v8[1] = v6;
  v7 = [(SDShareSheetSession *)self _orderedAvailableActivitiesForAuditToken:v8 WithMatchingContextCustomizationBlock:&stru_1008D2A38];
  [(SDShareSheetSession *)self setOrderedPresentableActivities:v7];

  objc_sync_exit(v5);
}

- (id)_orderedActivitiesIncludingUserDisabledExtensionsForAuditToken:(id *)a3
{
  v3 = *&a3->var0[4];
  v6[0] = *a3->var0;
  v6[1] = v3;
  v4 = [(SDShareSheetSession *)self _orderedAvailableActivitiesForAuditToken:v6 WithMatchingContextCustomizationBlock:&stru_1008D2A58];

  return v4;
}

- (NSString)hostAppBundleID
{
  v2 = [(SDShareSheetSession *)self connection];
  v3 = [v2 sd_connectionBundleID];

  return v3;
}

- (NSString)hostAppProcessName
{
  v2 = [(SDShareSheetSession *)self connection];
  v3 = [v2 sd_connectionProcessName];

  return v3;
}

- (void)sendItems:(id)a3 itemData:(id)a4 toEndpointUUID:(id)a5 withNode:(id)a6
{
  v65 = a2;
  v10 = a3;
  v11 = a4;
  v68 = a5;
  v67 = a6;
  obj = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(obj);
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v12 = [v11 securityContexts];
  v13 = [v12 countByEnumeratingWithState:&v84 objects:v90 count:16];
  if (v13)
  {
    v14 = *v85;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v85 != v14)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v84 + 1) + 8 * i) activate];
      }

      v13 = [v12 countByEnumeratingWithState:&v84 objects:v90 count:16];
    }

    while (v13);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v69 = v10;
  v16 = [v69 countByEnumeratingWithState:&v80 objects:v89 count:16];
  v17 = 0;
  if (v16)
  {
    v18 = 0;
    v72 = *v81;
    do
    {
      v74 = v16;
      for (j = 0; j != v74; j = j + 1)
      {
        if (*v81 != v72)
        {
          objc_enumerationMutation(v69);
        }

        v20 = *(*(&v80 + 1) + 8 * j);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v22 = v20;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_23;
          }

          v70 = [v20 string];
          v22 = v70;
        }

        v23 = [NSURL URLWithString:v22, v65];
        if ((isKindOfClass & 1) == 0)
        {
        }

        if (v23)
        {
          v24 = [v23 scheme];
          v25 = v24 == 0;

          if (!v25)
          {
            v26 = v23;

            v20 = v26;
          }
        }

LABEL_23:
        v27 = [v11 attachmentNameForItem:{v20, v65}];
        v28 = [v11 subjectForItem:v20];
        v29 = [v11 dataTypeForItem:v20];
        if (v18 <= 2)
        {
          v30 = [v11 previewImageForItem:v20];

          if (!v30)
          {
            v31 = [v11 previewImageDataForItem:v20];
            if (v31)
            {
              v30 = [UIImage imageWithData:v31];
            }

            else
            {
              v30 = 0;
            }
          }

          if (v30)
          {
            ++v18;
          }

          v17 = v30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          ++self->_sharedItemsCount;
          [(SDShareSheetSession *)self addString:v20 withAttachmentName:v27 description:v28 previewImage:v17 itemIndex:?];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            ++self->_sharedItemsCount;
            [(SDShareSheetSession *)self addAttributedString:v20 withAttachmentName:v27 description:v28 previewImage:v17 itemIndex:?];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v32 = v20;
              if (![v32 isFileURL] || objc_msgSend(v11, "canAccessFileURL:", v32))
              {
                ++self->_sharedItemsCount;
                [(SDShareSheetSession *)self addURL:v32 withAttachmentName:v27 description:v28 previewImage:v17 itemIndex:?];
              }
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                ++self->_sharedItemsCount;
                [(SDShareSheetSession *)self addImage:v20 withAttachmentName:v27 description:v28 previewImage:v17 itemIndex:?];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  ++self->_sharedItemsCount;
                  [(SDShareSheetSession *)self addData:v20 ofType:v29 withAttachmentName:v27 description:v28 previewImage:v17 itemIndex:?];
                }
              }
            }
          }
        }
      }

      v16 = [v69 countByEnumeratingWithState:&v80 objects:v89 count:16];
    }

    while (v16);
  }

  [(NSOperationQueue *)self->_operationQueue waitUntilAllOperationsAreFinished];
  if (self->_sharedItemsCount >= 1)
  {
    v33 = 0;
    do
    {
      cachedSharedItems = self->_cachedSharedItems;
      sharedItemsMap = self->_sharedItemsMap;
      v36 = [NSNumber numberWithInt:v33, v65];
      v37 = [(NSMutableDictionary *)sharedItemsMap objectForKeyedSubscript:v36];
      [(NSMutableOrderedSet *)cachedSharedItems addObject:v37];

      v33 = (v33 + 1);
    }

    while (v33 < self->_sharedItemsCount);
  }

  [(SDShareSheetSession *)self generateSpecialPreviewPhotoForRequestID:self->_sharedItemsRequestID, v65];
  v71 = +[NSMutableArray array];
  sharedItemsRequestIDToPreviewPhoto = self->_sharedItemsRequestIDToPreviewPhoto;
  v39 = [NSNumber numberWithInteger:self->_sharedItemsRequestID];
  v75 = [(NSMutableDictionary *)sharedItemsRequestIDToPreviewPhoto objectForKeyedSubscript:v39];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v40 = self->_cachedSharedItems;
  v41 = [(NSMutableOrderedSet *)v40 countByEnumeratingWithState:&v76 objects:v88 count:16];
  if (v41)
  {
    v73 = 0;
    v42 = 0;
    v43 = 0;
    v44 = *v77;
    do
    {
      for (k = 0; k != v41; k = k + 1)
      {
        if (*v77 != v44)
        {
          objc_enumerationMutation(v40);
        }

        v46 = *(*(&v76 + 1) + 8 * k);
        if ([v46 identifer] == self->_sharedItemsRequestID)
        {
          v47 = [v46 URL];
          v48 = v47 == 0;

          if (!v48)
          {
            if (!v75)
            {
              v75 = [v46 previewImage];
            }

            if (!v73)
            {
              v73 = [v46 payloadDescription];
            }

            v49 = [v46 wasString];
            [v71 addObject:v46];
            v42 |= v49;
            v43 |= v49 ^ 1;
          }
        }
      }

      v41 = [(NSMutableOrderedSet *)v40 countByEnumeratingWithState:&v76 objects:v88 count:16];
    }

    while (v41);
    v50 = v42 & v43;
  }

  else
  {
    v73 = 0;
    v50 = 0;
  }

  v51 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v71 count]);
  for (m = 0; m < [v71 count]; ++m)
  {
    v53 = [v71 objectAtIndexedSubscript:m];
    v54 = v53;
    if ((v50 & 1) == 0 || ([v53 wasString] & 1) == 0)
    {
      v55 = [v54 URL];
      [v51 addObject:v55];
    }
  }

  objc_sync_exit(obj);
  if ((+[SFAirDropUserDefaults_objc privateContactDiscoveryEnabled]& 1) != 0)
  {
    if (!v68)
    {
      v68 = [v67 endpointUUID];
      if (!v68)
      {
        sub_1001B1C28();
        v68 = 0;
      }
    }

    v56 = SFScaleAndRotateImage();
    v57 = v56;
    v58 = [v56 CGImage];

    if (v58)
    {
      v59 = SFDataFromCGImage();
    }

    else
    {
      v59 = 0;
    }

    v61 = [(SDShareSheetSession *)self airDropController];
    v62 = [(SDShareSheetSession *)self connection];
    v63 = [v62 sd_connectionBundleID];
    [v61 send:v51 to:v68 itemPreviewData:v59 requestSource:v63];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_1001B1BBC();
    }

    v60 = v67;
    v59 = [(SDShareSheetSession *)self connection];
    v61 = [v59 sd_connectionBundleID];
    v62 = [(SDPeopleBrowser *)self->_peopleBrowser sessionID];
    v63 = SFScaleAndRotateImage();
    v64 = v63;
    [v60 startSendForBundleID:v61 sessionID:v62 items:v51 description:0 previewImage:objc_msgSend(v63 fromShareSheet:{"CGImage"), 1}];
  }

  [(SDShareSheetSession *)self resetAfterAirDropTransferWithItemData:v11];
}

- (void)cancelAirDropForNode:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 cancelSend];
  }

  else
  {
    v4 = [(SDShareSheetSession *)self airDropController];
    [v4 cancelCurrentSend];
  }
}

- (void)resetAfterAirDropTransferWithItemData:(id)a3
{
  v4 = a3;
  v5 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v5);
  self->_attachmentCount = 0;
  self->_sharedItemsCount = 0;
  v6 = +[NSMutableDictionary dictionary];
  sharedItemsMap = self->_sharedItemsMap;
  self->_sharedItemsMap = v6;

  v8 = +[NSMutableDictionary dictionary];
  sharedItemsRequestIDToPreviewPhoto = self->_sharedItemsRequestIDToPreviewPhoto;
  self->_sharedItemsRequestIDToPreviewPhoto = v8;

  v10 = objc_alloc_init(NSMutableOrderedSet);
  cachedSharedItems = self->_cachedSharedItems;
  self->_cachedSharedItems = v10;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v12 = [v4 securityContexts];
  v13 = [v12 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v13)
  {
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v16 + 1) + 8 * v15) deactivate];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }

  objc_sync_exit(v5);
}

- (BOOL)isValidPayload:(id)a3 toPerson:(id)a4 invalidMessage:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v72 = 0;
  v73 = 0;
  SFFakeFilesAndItemsArrayForURLs();
  v8 = 0;
  v9 = 0;
  v71 = 0;
  v70 = 0;
  v58 = SFContentTypes();
  v56 = 0;
  v57 = v9;
  if (([v7 supportsPasses] & 1) == 0)
  {
    v59 = v7;
    v54 = v6;
    v55 = v8;
    v20 = [v8 firstObject];
    v21 = [v20 objectForKeyedSubscript:kSFOperationFileNameKey];
    v12 = [v21 pathExtension];

    [v58 allKeys];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = v69 = 0u;
    v22 = [obj countByEnumeratingWithState:&v66 objects:v77 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v67;
      v25 = 1;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v67 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v66 + 1) + 8 * i);
          if (SFIsPass())
          {
            v28 = [v59 isUnknown];
            v29 = @"TRANSFER_TO_PERSON_NO_WALLET_TEXT";
            if (v28)
            {
              v29 = @"TRANSFER_TO_DEVICE_NO_WALLET_TEXT";
            }

            v30 = v29;
            v31 = SFLocalizedStringForKey();
            SFLocalizedStringForKey();
            v33 = v32 = v12;

            v34 = [v59 displayName];
            v35 = [NSString stringWithFormat:v33, v34];
            *a5 = [NSString stringWithFormat:v31, v35];

            v12 = v32;
            v25 = 0;
          }
        }

        v23 = [obj countByEnumeratingWithState:&v66 objects:v77 count:16];
      }

      while (v23);
    }

    else
    {
      v25 = 1;
    }

    v6 = v54;
    goto LABEL_27;
  }

  if ([v7 supportsFMF])
  {
    if (![v7 supportsCredentials] || objc_msgSend(v7, "isUnknown"))
    {
      v10 = [v9 firstObject];
      v11 = [v10 scheme];
      v12 = [v11 lowercaseString];

      MyFriendsLink = SFIsCredential();
      if (MyFriendsLink)
      {
        v14 = [v57 firstObject];
        SFIsPasskeyCredentialLink();

        v15 = SFLocalizedStringForKey();
        v16 = SFLocalizedStringForKeyInStringsFileNamed();
        *a5 = [NSString stringWithFormat:v15, v16];

        v75[0] = @"supportsCredentials";
        v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 supportsCredentials]);
        v75[1] = @"unknownPeer";
        v76[0] = v17;
        v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 isUnknown]);
        v76[1] = v18;
        v19 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:2];

        SFMetricsLog();
LABEL_23:

        goto LABEL_24;
      }

      goto LABEL_24;
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v12 = v6;
    v46 = [v12 countByEnumeratingWithState:&v62 objects:v74 count:16];
    if (!v46)
    {
      v25 = 1;
      goto LABEL_28;
    }

    v47 = v46;
    v55 = v8;
    v59 = v7;
    v48 = *v63;
    while (2)
    {
      for (j = 0; j != v47; j = j + 1)
      {
        if (*v63 != v48)
        {
          objc_enumerationMutation(v12);
        }

        v50 = *(*(&v62 + 1) + 8 * j);
        v51 = +[LSApplicationWorkspace defaultWorkspace];
        if ([v51 isApplicationAvailableToOpenURL:v50 error:0])
        {
        }

        else
        {
          v52 = +[LSApplicationWorkspace defaultWorkspace];
          v53 = [v52 isApplicationAvailableToOpenURL:v50 includePrivateURLSchemes:1 error:0];

          if (v53)
          {
            [v12 count];
            SFLocalizedStringForKey();
            *a5 = v25 = 0;
            goto LABEL_27;
          }
        }
      }

      v47 = [v12 countByEnumeratingWithState:&v62 objects:v74 count:16];
      v25 = 1;
      if (v47)
      {
        continue;
      }

      break;
    }

LABEL_27:
    v7 = v59;
    v8 = v55;
    goto LABEL_28;
  }

  v36 = [v9 firstObject];
  v37 = [v36 scheme];
  v12 = [v37 lowercaseString];

  MyFriendsLink = SFIsFindMyFriendsLink();
  if (MyFriendsLink)
  {
    v38 = [v7 isUnknown];
    v39 = @"TRANSFER_TO_PERSON_NO_FMF_TEXT";
    if (v38)
    {
      v39 = @"TRANSFER_TO_DEVICE_NO_FMF_TEXT";
    }

    v40 = v12;
    v41 = v39;
    v19 = SFLocalizedStringForKey();
    v42 = SFLocalizedStringForKey();

    v43 = [v7 displayName];
    v44 = [NSString stringWithFormat:v42, v43];
    *a5 = [NSString stringWithFormat:v19, v44];

    v12 = v40;
    goto LABEL_23;
  }

LABEL_24:
  v25 = MyFriendsLink ^ 1;
LABEL_28:

  return v25 & 1;
}

- (BOOL)addURL:(id)a3 withAttachmentName:(id)a4 description:(id)a5 previewImage:(id)a6 itemIndex:(int)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v16);
  v17 = airdrop_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [v15 size];
    v25 = NSStringFromCGSize(v47);
    *buf = 138413314;
    v38 = v12;
    v39 = 2112;
    v40 = v13;
    v41 = 2112;
    v42 = v14;
    v43 = 2112;
    v44 = v15;
    v45 = 2112;
    v46 = v25;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "addURL:[%@] withAttachmentName:[%@] description:[%@] previewImage:[%@]-size:[%@]", buf, 0x34u);
  }

  v18 = [v12 scheme];
  v19 = v18 == 0;

  if (v19)
  {
    v22 = airdrop_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1001B1C94();
    }
  }

  else
  {
    self->_itemsReady = 0;
    if (v15 || (generatedPreviews = self->_generatedPreviews, generatedPreviews > 2))
    {
      operationQueue = self->_operationQueue;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100198DEC;
      v26[3] = &unk_1008D2AA8;
      v27 = v12;
      v28 = v14;
      v29 = v15;
      v30 = self;
      v31 = a7;
      [(NSOperationQueue *)operationQueue addOperationWithBlock:v26];

      v22 = v27;
    }

    else
    {
      self->_generatedPreviews = generatedPreviews + 1;
      v21 = self->_operationQueue;
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100198C88;
      v32[3] = &unk_1008D2A80;
      v33 = v12;
      v34 = v14;
      v35 = self;
      v36 = a7;
      [(NSOperationQueue *)v21 addOperationWithBlock:v32];

      v22 = v33;
    }
  }

  objc_sync_exit(v16);
  return 1;
}

- (BOOL)addImage:(id)a3 withAttachmentName:(id)a4 description:(id)a5 previewImage:(id)a6 itemIndex:(int)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  obj = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(obj);
  v15 = airdrop_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [v11 size];
    v29 = NSStringFromCGSize(v52);
    [v14 size];
    v30 = NSStringFromCGSize(v53);
    *buf = 138413570;
    v41 = v11;
    v42 = 2112;
    v43 = v29;
    v44 = 2112;
    v45 = v12;
    v46 = 2112;
    v47 = v13;
    v48 = 2112;
    v49 = v14;
    v50 = 2112;
    v51 = v30;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "addImage:[%@]-size:[%@] withAttachmentName:[%@] description:[%@] previewImage:[%@]-size:[%@]", buf, 0x3Eu);
  }

  self->_itemsReady = 0;
  if (!v14)
  {
    v14 = v11;
  }

  sessionID = self->_sessionID;
  v17 = self->_attachmentCount + 1;
  self->_attachmentCount = v17;
  v18 = [NSString stringWithFormat:@"IMG_%@-%ld", sessionID, v17];
  SuggestedFilename = _UTTypeCreateSuggestedFilename();
  v20 = NSTemporaryDirectory();
  v21 = v12;
  v22 = [v20 stringByAppendingPathComponent:SuggestedFilename];
  operationQueue = self->_operationQueue;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100199174;
  v33[3] = &unk_1008D2AD0;
  v24 = v11;
  v34 = v24;
  v25 = v22;
  v35 = v25;
  v26 = v13;
  v36 = v26;
  v27 = v14;
  v37 = v27;
  v38 = self;
  v39 = a7;
  [(NSOperationQueue *)operationQueue addOperationWithBlock:v33];

  objc_sync_exit(obj);
  return 1;
}

- (BOOL)createURLPayloadForData:(id)a3 ofType:(id)a4 withAttachmentName:(id)a5 description:(id)a6 previewImage:(id)a7 itemIndex:(int)a8 completion:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v40 = a7;
  v41 = a9;
  v18 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v18);
  v43 = v16;
  if (![v16 length])
  {
    v25 = UTTypeCopyPreferredTagWithClass(v15, kUTTagClassFilenameExtension);
    if (v25)
    {
      v20 = v25;
    }

    else
    {
      v20 = @"data";
    }

    v21 = UTTypeCopyDescription(v15);
    sessionID = self->_sessionID;
    v27 = self->_attachmentCount + 1;
    self->_attachmentCount = v27;
    v28 = [NSString stringWithFormat:@"%@-%@-%ld.%@", v21, sessionID, v27, v20, v40];
    goto LABEL_11;
  }

  SuggestedFilename = _UTTypeCreateSuggestedFilename();
  v20 = [SuggestedFilename mutableCopy];

  [(__CFString *)v20 replaceOccurrencesOfString:@"/" withString:@"-" options:0 range:0, [(__CFString *)v20 length]];
  [(__CFString *)v20 replaceOccurrencesOfString:@":" withString:@"-" options:0 range:0, [(__CFString *)v20 length]];
  if (self->_attachmentCount)
  {
    v21 = [(__CFString *)v20 pathExtension];
    if ([v21 length])
    {
      v22 = [(__CFString *)v20 stringByDeletingPathExtension];
      v23 = self->_attachmentCount + 1;
      self->_attachmentCount = v23;
      v24 = [NSString stringWithFormat:@"%@-%ld.%@", v22, v23, v21];

LABEL_12:
      goto LABEL_13;
    }

    v29 = self->_attachmentCount + 1;
    self->_attachmentCount = v29;
    v28 = [NSString stringWithFormat:@"%@-%ld.%@", v20, v29, v21];
LABEL_11:
    v24 = v28;
    goto LABEL_12;
  }

  v24 = v20;
  ++self->_attachmentCount;
LABEL_13:

  v30 = NSTemporaryDirectory();
  v31 = v15;
  v32 = [v30 stringByAppendingPathComponent:v24];
  operationQueue = self->_operationQueue;
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100199828;
  v44[3] = &unk_1008D2AF8;
  v34 = v14;
  v45 = v34;
  v35 = v32;
  v46 = v35;
  v36 = v17;
  v47 = v36;
  v37 = v40;
  v48 = v37;
  v49 = self;
  v51 = a8;
  v38 = v41;
  v50 = v38;
  [(NSOperationQueue *)operationQueue addOperationWithBlock:v44];

  objc_sync_exit(v18);
  return 1;
}

- (void)generateSpecialPreviewPhotoForRequestID:(int64_t)a3
{
  obj = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(obj);
  v4 = +[NSMutableArray array];
  v5 = +[NSMutableArray array];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = self->_cachedSharedItems;
  v7 = [(NSMutableOrderedSet *)v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v7)
  {
    v8 = *v34;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        if ([v10 identifer] == a3)
        {
          v11 = [v10 URL];
          if (v11)
          {
            v12 = [v10 previewImage];
            v13 = v12 == 0;

            if (!v13)
            {
              v14 = [v10 previewImage];
              [v4 addObject:v14];

              v15 = [v10 URL];
              [v5 addObject:v15];
            }
          }
        }
      }

      v7 = [(NSMutableOrderedSet *)v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v7);
  }

  if ([v4 count] >= 2)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = v5;
    v17 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v17)
    {
      v18 = *v30;
      while (2)
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = [*(*(&v29 + 1) + 8 * j) pathExtension];
          PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, v20, 0);
          if ((SFIsImage() & 1) == 0 && (SFIsVideo() & 1) == 0 && (SFIsLivePhotos() & 1) == 0)
          {

            goto LABEL_25;
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v22 = +[UIScreen mainScreen];
    [v22 scale];
    v24 = v23 == 2.0;

    v25 = qword_1007F51F0[v24];
    v16 = SFImageStackFromImages();
    sharedItemsRequestIDToPreviewPhoto = self->_sharedItemsRequestIDToPreviewPhoto;
    v20 = [NSNumber numberWithInteger:a3];
    [(NSMutableDictionary *)sharedItemsRequestIDToPreviewPhoto setObject:v16 forKeyedSubscript:v20];
LABEL_25:
  }

  objc_sync_exit(obj);
}

+ (id)labelColorWithHostConfiguration:(id)a3
{
  v3 = a3;
  if ([v3 linkedBeforeYukon])
  {
    v4 = +[UIColor blackColor];
  }

  else
  {
    v5 = [v3 hostTraitCollection];
    if (!v5)
    {
      v6 = share_sheet_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(Label color) Creating dummy trait collection because host's is nil on config: %@", &v9, 0xCu);
      }

      v5 = [UITraitCollection traitCollectionWithUserInterfaceStyle:0];
    }

    v7 = +[UIColor labelColor];
    v4 = [v7 resolvedColorWithTraitCollection:v5];
  }

  return v4;
}

+ (id)secondaryLabelColorWithHostConfiguration:(id)a3
{
  v3 = a3;
  if ([v3 linkedBeforeYukon])
  {
    v4 = [UIColor colorWithRed:0.235294118 green:0.235294118 blue:0.262745098 alpha:0.6];
  }

  else
  {
    v5 = [v3 hostTraitCollection];
    if (!v5)
    {
      v6 = share_sheet_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(Secondary label color) Creating dummy trait collection because host's is nil on config: %@", &v9, 0xCu);
      }

      v5 = [UITraitCollection traitCollectionWithUserInterfaceStyle:0];
    }

    v7 = +[UIColor secondaryLabelColor];
    v4 = [v7 resolvedColorWithTraitCollection:v5];
  }

  return v4;
}

- (id)minimumVisibleShareActivities
{
  v2 = self;
  v3 = [(SDShareSheetSession *)self hostConfiguration];
  v4 = [v3 numberOfVisibleSharingActivities];

  v5 = +[NSMutableSet set];
  v6 = [(SDShareSheetSession *)v2 hostShareActivityProxies];
  v7 = v4;
  if ([v6 count] < v4)
  {
    v8 = [(SDShareSheetSession *)v2 hostShareActivityProxies];
    v7 = [v8 count];
  }

  v9 = [NSIndexSet indexSetWithIndexesInRange:0, v7];
  v10 = [(SDShareSheetSession *)v2 hostShareActivityProxies];
  v11 = [v10 objectsAtIndexes:v9];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v42;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v42 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = [*(*(&v41 + 1) + 8 * i) activity];
        if (v16)
        {
          [v5 addObject:v16];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v13);
  }

  v17 = [(SDShareSheetSession *)v2 peopleNodes];
  if ([v17 count] < v4)
  {
    v18 = [(SDShareSheetSession *)v2 peopleNodes];
    v4 = [v18 count];
  }

  v19 = [NSIndexSet indexSetWithIndexesInRange:0, v4];

  v20 = [(SDShareSheetSession *)v2 peopleNodes];
  v35 = v19;
  v21 = [v20 objectsAtIndexes:v19];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v22 = v21;
  v23 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v38;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v37 + 1) + 8 * j) suggestionNode];
        v28 = v27;
        if (v27)
        {
          v29 = [v27 bundleID];
          v30 = [(SDShareSheetSession *)v2 bundleIDToActivities];
          [v30 objectForKeyedSubscript:v29];
          v32 = v31 = v2;

          [v5 addObjectsFromArray:v32];
          v2 = v31;
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v24);
  }

  v33 = [v5 allObjects];

  return v33;
}

- (id)_proxySectionForType:(int64_t)a3
{
  switch(a3)
  {
    case 2:
      v6 = [(SDShareSheetSession *)self hostActionActivityProxies];
      v7 = [(SDShareSheetSession *)self hostConfiguration];
      v8 = [v7 numberOfVisibleActionActivities];
      goto LABEL_8;
    case 1:
      v5 = [(SDShareSheetSession *)self hostShareActivityProxies];
      goto LABEL_6;
    case 0:
      v5 = [(SDShareSheetSession *)self peopleNodes];
LABEL_6:
      v6 = v5;
      v7 = [(SDShareSheetSession *)self hostConfiguration];
      v8 = [v7 numberOfVisibleSharingActivities];
LABEL_8:
      v9 = v8;

      goto LABEL_10;
  }

  v6 = 0;
  v9 = 0;
LABEL_10:
  if ([v6 count])
  {
    v10 = [[SDShareSheetProxySection alloc] initWithType:a3 proxies:v6];
    [(SDShareSheetProxySection *)v10 setInitialBatchSize:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_loadProxySectionWithType:(int64_t)a3
{
  obj = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(obj);
  v5 = [(SDShareSheetSession *)self _proxySectionForType:a3];
  if (v5)
  {
    v6 = [(SDShareSheetSession *)self proxyLoaderManager];
    [v6 loadProxySection:v5];
  }

  objc_sync_exit(obj);
}

- (void)reportCurrentInvocationForDuration:(int64_t)a3
{
  v4 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v4);
  v5 = [(SDShareSheetSession *)self activityHelper];
  v22 = [v5 reportExtensionsCacheResult];

  v6 = [(SDShareSheetSession *)self hostAppBundleID];
  if (!v6)
  {
    v6 = [(SDShareSheetSession *)self hostAppProcessName];
  }

  v7 = [(SDShareSheetSession *)self hostConfiguration];
  v8 = [v7 hostTraitCollection];
  v20 = [v8 userInterfaceStyle];

  v9 = [(SDShareSheetSession *)self hostConfiguration];
  v10 = [v9 isCollaborative];

  v11 = +[NSMutableArray array];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [(SDShareSheetSession *)self suggestedPeople];
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = *v24;
    do
    {
      v15 = 0;
      do
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [*(*(&v23 + 1) + 8 * v15) displayName];
        if (v16)
        {
          [v11 addObject:v16];
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  v17 = [(SDShareSheetSession *)self xpcHelperCnx];
  v18 = [(SDShareSheetSession *)self suggestedPeople];
  LOBYTE(v19) = v10;
  [v17 sendShareSheetInvocationMetricsWithAppBundleID:v6 numSuggestions:objc_msgSend(v18 suggestionDisplayNames:"count") extensionsCacheResult:v11 isDarkMode:v22 duration:v20 == 2 isCollaborative:{a3, v19}];

  objc_sync_exit(v4);
}

- (void)_removeFailedIndexes:(id)a3 forProxySection:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v7);
  v8 = [v6 type];
  if (!v8)
  {
    v9 = [(SDShareSheetSession *)self peopleNodes];
    v10 = [v9 mutableCopy];
    goto LABEL_7;
  }

  if (v8 == 1)
  {
    v9 = [(SDShareSheetSession *)self hostShareActivityProxies];
    v10 = [v9 mutableCopy];
    goto LABEL_7;
  }

  if (v8 == 2)
  {
    v9 = [(SDShareSheetSession *)self hostActionActivityProxies];
    v10 = [v9 mutableCopy];
LABEL_7:
    v11 = v10;

    goto LABEL_9;
  }

  v11 = 0;
LABEL_9:
  v12 = [v6 proxies];
  v13 = [v12 objectsAtIndexes:v18];

  [v11 removeObjectsInArray:v13];
  v14 = [v6 type];
  if (v14)
  {
    if (v14 == 1)
    {
      v15 = [v11 copy];
      v16 = 392;
    }

    else
    {
      if (v14 != 2)
      {
        goto LABEL_16;
      }

      v15 = [v11 copy];
      v16 = 400;
    }
  }

  else
  {
    v15 = [v11 copy];
    v16 = 384;
  }

  v17 = *(&self->super.isa + v16);
  *(&self->super.isa + v16) = v15;

LABEL_16:
  objc_sync_exit(v7);
}

- (void)_updateProxiesWithChangeDetails:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 changedProxySections];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [v4 failedIndexesForProxySection:v10];
        if ([v11 count])
        {
          [(SDShareSheetSession *)self _removeFailedIndexes:v11 forProxySection:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)proxyLoaderManager:(id)a3 didLoadProxiesWithChangeDetails:(id)a4
{
  [(SDShareSheetSession *)self _updateProxiesWithChangeDetails:a4];
  v5 = [(SDShareSheetSession *)self delegate];
  [v5 sessionDidChange:self];
}

- (void)proxyLoaderManagerDidFinishLoadingProxySection:(id)a3 cancelled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = share_sheet_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    v9 = 138412802;
    v10 = self;
    v11 = 2112;
    if (v4)
    {
      v8 = @"YES";
    }

    v12 = v6;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ did finish loading proxySection:%@ cancelled:%@", &v9, 0x20u);
  }
}

- (void)didConnectNearbySharingInteractionWithEndpointUUID:(id)a3
{
  v4 = a3;
  v5 = [(SDShareSheetSession *)self delegate];
  [v5 session:self didConnectNearbySharingInteractionWithEndpointUUID:v4];
}

- (SDShareSheetSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end