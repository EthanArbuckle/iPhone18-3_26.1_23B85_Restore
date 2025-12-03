@interface SDShareSheetSession
+ (id)labelColorWithHostConfiguration:(id)configuration;
+ (id)secondaryLabelColorWithHostConfiguration:(id)configuration;
- (BOOL)addImage:(id)image withAttachmentName:(id)name description:(id)description previewImage:(id)previewImage itemIndex:(int)index;
- (BOOL)addURL:(id)l withAttachmentName:(id)name description:(id)description previewImage:(id)image itemIndex:(int)index;
- (BOOL)createURLPayloadForData:(id)data ofType:(id)type withAttachmentName:(id)name description:(id)description previewImage:(id)image itemIndex:(int)index completion:(id)completion;
- (BOOL)isValidPayload:(id)payload toPerson:(id)person invalidMessage:(id *)message;
- (BOOL)skipSlotsRendering;
- (NSString)description;
- (NSString)hostAppBundleID;
- (NSString)hostAppProcessName;
- (SDShareSheetSession)initWithSessionID:(id)d xpcConnection:(id)connection instantShareSheet:(BOOL)sheet remoteShareSheet:(BOOL)shareSheet xrRenderingMode:(unint64_t)mode;
- (SDShareSheetSessionDelegate)delegate;
- (id)_orderedActivitiesIncludingUserDisabledExtensionsForAuditToken:(id *)token;
- (id)_orderedAvailableActivitiesForAuditToken:(id *)token WithMatchingContextCustomizationBlock:(id)block;
- (id)_proxySectionForType:(int64_t)type;
- (id)airdropNodeForIdentifier:(id)identifier;
- (id)connection;
- (id)minimumVisibleShareActivities;
- (id)uiServiceConnection;
- (unint64_t)airDropNearbyCount;
- (void)_activateSecurityContext:(id)context;
- (void)_deactivateSecurityContext:(id)context;
- (void)_loadPresentableActivitiesForAuditToken:(id *)token;
- (void)_loadProxySectionWithType:(int64_t)type;
- (void)_removeFailedIndexes:(id)indexes forProxySection:(id)section;
- (void)_updateProxiesWithChangeDetails:(id)details;
- (void)activate;
- (void)addStatusMonitorObservers;
- (void)cancelAirDropForNode:(id)node;
- (void)checkPolicyForAirDropPeople;
- (void)checkPolicyForSuggestedPeople;
- (void)didConnectNearbySharingInteractionWithEndpointUUID:(id)d;
- (void)generateSpecialPreviewPhotoForRequestID:(int64_t)d;
- (void)invalidate;
- (void)nodesPotentiallyUpdated;
- (void)proxyLoaderManager:(id)manager didLoadProxiesWithChangeDetails:(id)details;
- (void)proxyLoaderManagerDidFinishLoadingProxySection:(id)section cancelled:(BOOL)cancelled;
- (void)removeStatusMonitorObservers;
- (void)reportCurrentInvocationForDuration:(int64_t)duration;
- (void)resetAfterAirDropTransferWithItemData:(id)data;
- (void)sendItems:(id)items itemData:(id)data toEndpointUUID:(id)d withNode:(id)node;
- (void)setAirDropAllowed:(BOOL)allowed;
- (void)setAirDropNodes:(id)nodes;
- (void)setHostActionActivityProxies:(id)proxies;
- (void)setHostConfiguration:(id)configuration;
- (void)setHostShareActivityProxies:(id)proxies;
- (void)setPeopleNodes:(id)nodes;
- (void)setSuggestedPeople:(id)people;
- (void)setUiServiceConnection:(id)connection;
- (void)systemRestrictionsChanged:(id)changed;
- (void)updateRestrictedActivityTypes:(id)types;
@end

@implementation SDShareSheetSession

- (SDShareSheetSession)initWithSessionID:(id)d xpcConnection:(id)connection instantShareSheet:(BOOL)sheet remoteShareSheet:(BOOL)shareSheet xrRenderingMode:(unint64_t)mode
{
  sheetCopy = sheet;
  dCopy = d;
  connectionCopy = connection;
  v61.receiver = self;
  v61.super_class = SDShareSheetSession;
  v15 = [(SDShareSheetSession *)&v61 init];
  if (v15)
  {
    v16 = +[SDShareSheetSlotManager sharedManager];
    objc_sync_enter(v16);
    objc_storeStrong(&v15->_sessionID, d);
    objc_storeStrong(&v15->__connection, connection);
    if (sheetCopy)
    {
      v17 = [connectionCopy valueForEntitlement:@"com.apple.sharesheet.allow-custom-view"];
      if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v17 BOOLValue] & 1) != 0)
      {
        v18 = 1;
      }

      else
      {
        v19 = share_sheet_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          sub_1001B1B74(buf, [connectionCopy processIdentifier], v19);
        }

        v18 = 0;
      }

      v15->_instantShareSheet = v18;
    }

    v15->_remoteShareSheet = shareSheet;
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

    v15->_xrRenderingMode = mode;
    v42 = objc_alloc_init(SDPeopleBrowser);
    peopleBrowser = v15->_peopleBrowser;
    v15->_peopleBrowser = v42;

    sd_connectionBundleID = [connectionCopy sd_connectionBundleID];
    [(SDPeopleBrowser *)v15->_peopleBrowser setBundleID:sd_connectionBundleID];

    [(SDPeopleBrowser *)v15->_peopleBrowser setSessionID:dCopy];
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
      _queue = [connectionCopy _queue];
      v48 = [(SDShareSheetAirDropController *)v46 initWithSessionID:dCopy queue:_queue];
      airDropController = v15->_airDropController;
      v15->_airDropController = v48;

      [(SDShareSheetAirDropController *)v15->_airDropController setDelegate:v15];
    }

    v50 = [SDShareSheetProxyLoaderManager alloc];
    sessionID = [(SDShareSheetSession *)v15 sessionID];
    v52 = [(SDShareSheetProxyLoaderManager *)v50 initWithSessionIdentifier:sessionID];

    [(SDShareSheetProxyLoaderManager *)v52 setDelegate:v15];
    [(SDShareSheetSession *)v15 setProxyLoaderManager:v52];
    objc_initWeak(&location, v15);
    v53 = [SDScreenTimeMonitor alloc];
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_100194FD0;
    v57[3] = &unk_1008D29A8;
    objc_copyWeak(&v59, &location);
    v58 = connectionCopy;
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
    airDropController = [(SDShareSheetSession *)self airDropController];
    [airDropController availableNodes];
  }

  else
  {
    airDropController = [(SDShareSheetSession *)self peopleBrowser];
    [airDropController people];
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
    peopleBrowser = [(SDShareSheetSession *)self peopleBrowser];
    [peopleBrowser setDiffableDelegate:0];

    peopleBrowser2 = [(SDShareSheetSession *)self peopleBrowser];
    [(SDShareSheetSession *)self setPeopleBrowser:0];
    airDropController = [(SDShareSheetSession *)self airDropController];
    [airDropController invalidate];

    [(SDShareSheetSession *)self setAirDropController:0];
    screenTimeMonitor = [(SDShareSheetSession *)self screenTimeMonitor];
    [screenTimeMonitor invalidate];

    [(SDShareSheetSession *)self setScreenTimeMonitor:0];
    [(SDShareSheetSession *)self setDisabledNodesUpdatedHandler:0];
    [(SDShareSheetSession *)self setProxyLoaderManager:0];
    xpcHelperCnx = [(SDShareSheetSession *)self xpcHelperCnx];
    [xpcHelperCnx invalidate];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100195514;
    block[3] = &unk_1008CDEA0;
    v11 = peopleBrowser2;
    v9 = peopleBrowser2;
    dispatch_async(&_dispatch_main_q, block);
  }

  objc_sync_exit(v3);
}

- (void)setAirDropAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  obj = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(obj);
  if (self->_airDropAllowed != allowedCopy)
  {
    self->_airDropAllowed = allowedCopy;
    if (allowedCopy && +[SFAirDropUserDefaults_objc privateContactDiscoveryEnabled])
    {
      airDropController = [(SDShareSheetSession *)self airDropController];

      if (!airDropController)
      {
        v6 = [SDShareSheetAirDropController alloc];
        sessionID = [(SDShareSheetSession *)self sessionID];
        connection = [(SDShareSheetSession *)self connection];
        _queue = [connection _queue];
        v10 = [(SDShareSheetAirDropController *)v6 initWithSessionID:sessionID queue:_queue];
        [(SDShareSheetSession *)self setAirDropController:v10];

        airDropController2 = [(SDShareSheetSession *)self airDropController];
        [airDropController2 setDelegate:self];

        xpcHelperCnx = [(SDShareSheetSession *)self xpcHelperCnx];
        airDropController3 = [(SDShareSheetSession *)self airDropController];
        [airDropController3 setHelperConnection:xpcHelperCnx];

        if (self->_activateCalled)
        {
          airDropController4 = [(SDShareSheetSession *)self airDropController];
          hostAppBundleID = [(SDShareSheetSession *)self hostAppBundleID];
          [airDropController4 activateWithBundleID:hostAppBundleID];
        }
      }
    }

    else
    {
      airDropController5 = [(SDShareSheetSession *)self airDropController];
      [airDropController5 invalidate];

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
  sessionID = [(SDShareSheetSession *)self sessionID];
  hostAppBundleID = [(SDShareSheetSession *)self hostAppBundleID];
  v5 = [NSString stringWithFormat:@"<SDShareSheetSession: %p, sessionID: %@, hostAppBundleID: %@, airdropAllowed: %i>", self, sessionID, hostAppBundleID, [(SDShareSheetSession *)self airDropAllowed]];

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

- (void)setUiServiceConnection:(id)connection
{
  connectionCopy = connection;
  obj = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(obj);
  uiServiceConnection = self->__uiServiceConnection;
  self->__uiServiceConnection = connectionCopy;

  objc_sync_exit(obj);
}

- (void)_activateSecurityContext:(id)context
{
  contextCopy = context;
  v4 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v4);
  if (([(NSMutableArray *)self->_activeSecurityContexts containsObject:contextCopy]& 1) == 0)
  {
    [contextCopy activate];
    [(NSMutableArray *)self->_activeSecurityContexts addObject:contextCopy];
  }

  objc_sync_exit(v4);
}

- (void)_deactivateSecurityContext:(id)context
{
  contextCopy = context;
  v4 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v4);
  if ([(NSMutableArray *)self->_activeSecurityContexts containsObject:contextCopy])
  {
    [contextCopy deactivate];
    [(NSMutableArray *)self->_activeSecurityContexts removeObject:contextCopy];
  }

  objc_sync_exit(v4);
}

- (id)airdropNodeForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  airDropPeople = [(SDShareSheetSession *)self airDropPeople];
  suggestedPeople = [(SDShareSheetSession *)self suggestedPeople];
  v7 = suggestedPeople;
  if (airDropPeople)
  {
    v8 = [airDropPeople arrayByAddingObjectsFromArray:suggestedPeople];
  }

  else
  {
    v8 = suggestedPeople;
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
        nodeIdentifier = [v13 nodeIdentifier];
        v15 = [nodeIdentifier isEqual:identifierCopy];

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

- (void)systemRestrictionsChanged:(id)changed
{
  changedCopy = changed;
  v4 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v4);
  if (![(SDShareSheetSession *)self invalidateCalled])
  {
    [(SDShareSheetSession *)self updateRestrictedActivityTypes:&__NSArray0__struct];
    [(SDShareSheetSession *)self nodesPotentiallyUpdated];
  }

  objc_sync_exit(v4);
}

- (void)setHostShareActivityProxies:(id)proxies
{
  proxiesCopy = proxies;
  v6 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v6);
  v7 = self->_hostShareActivityProxies;
  v8 = proxiesCopy;
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

  objc_storeStrong(&self->_hostShareActivityProxies, proxies);
  if (![(SDShareSheetSession *)self sentInitialConfiguration])
  {
    screenTimeMonitor = [(SDShareSheetSession *)self screenTimeMonitor];
    minimumVisibleShareActivities = [(SDShareSheetSession *)self minimumVisibleShareActivities];
    [screenTimeMonitor requestPoliciesForActivities:minimumVisibleShareActivities];
  }

  screenTimeMonitor2 = [(SDShareSheetSession *)self screenTimeMonitor];
  shareActivitiesInUserOrder = [(SDShareSheetSession *)self shareActivitiesInUserOrder];
  [screenTimeMonitor2 updateWithActivities:shareActivitiesInUserOrder];

  [(SDShareSheetSession *)self _loadProxySectionWithType:1];
  [(SDShareSheetSession *)self updateRestrictedActivityTypes:&__NSArray0__struct];
LABEL_10:
  objc_sync_exit(v6);
}

- (void)setHostActionActivityProxies:(id)proxies
{
  proxiesCopy = proxies;
  v6 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v6);
  v7 = self->_hostActionActivityProxies;
  v8 = proxiesCopy;
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
    objc_storeStrong(&self->_hostActionActivityProxies, proxies);
    [(SDShareSheetSession *)self _loadProxySectionWithType:2];
  }

LABEL_8:
  objc_sync_exit(v6);
}

- (void)setSuggestedPeople:(id)people
{
  peopleCopy = people;
  v6 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v6);
  v7 = self->_suggestedPeople;
  v8 = peopleCopy;
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
    objc_storeStrong(&self->_suggestedPeople, people);
    [(SDShareSheetSession *)self checkPolicyForSuggestedPeople];
  }

LABEL_8:
  objc_sync_exit(v6);
}

- (void)setPeopleNodes:(id)nodes
{
  nodesCopy = nodes;
  v6 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v6);
  v7 = self->_peopleNodes;
  v8 = nodesCopy;
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
    objc_storeStrong(&self->_peopleNodes, nodes);
    [(SDShareSheetSession *)self checkPolicyForSuggestedPeople];
    [(SDShareSheetSession *)self _loadProxySectionWithType:0];
  }

LABEL_8:
  objc_sync_exit(v6);
}

- (void)setAirDropNodes:(id)nodes
{
  nodesCopy = nodes;
  v6 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v6);
  v7 = self->_airDropNodes;
  v8 = nodesCopy;
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
    objc_storeStrong(&self->_airDropNodes, nodes);
    [(SDShareSheetSession *)self checkPolicyForAirDropPeople];
  }

LABEL_8:
  objc_sync_exit(v6);
}

- (void)nodesPotentiallyUpdated
{
  obj = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(obj);
  disabledNodesUpdatedHandler = [(SDShareSheetSession *)self disabledNodesUpdatedHandler];

  if (disabledNodesUpdatedHandler)
  {
    disabledNodesUpdatedHandler2 = [(SDShareSheetSession *)self disabledNodesUpdatedHandler];
    disabledNodesUpdatedHandler2[2]();
  }

  objc_sync_exit(obj);
}

- (void)updateRestrictedActivityTypes:(id)types
{
  typesCopy = types;
  obj = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(obj);
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = typesCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "update restricted activity types:%@", buf, 0xCu);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  hostShareActivityProxies = [(SDShareSheetSession *)self hostShareActivityProxies];
  v6 = [hostShareActivityProxies countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v6)
  {
    v28 = *v30;
    v27 = hostShareActivityProxies;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v30 != v28)
        {
          objc_enumerationMutation(v27);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        activity = [v8 activity];
        if (!activity)
        {
          v23 = +[NSAssertionHandler currentHandler];
          [v23 handleFailureInMethod:a2 object:self file:@"SDShareSheetSlotManager.m" lineNumber:646 description:{@"activity is nil for proxy:%@", v8}];
        }

        screenTimeMonitor = [(SDShareSheetSession *)self screenTimeMonitor];
        v11 = [screenTimeMonitor bundleIDForActivity:activity];

        screenTimeMonitor2 = [(SDShareSheetSession *)self screenTimeMonitor];
        [v8 setIsDisabled:{objc_msgSend(screenTimeMonitor2, "cachedPolicyForBundleID:", v11) != 0}];

        activityType = [activity activityType];
        v14 = UIActivityTypeAirDrop;
        v15 = activityType;
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
        effectiveBlockedAppBundleIDs = [v18 effectiveBlockedAppBundleIDs];
        [v8 setIsRestricted:{objc_msgSend(effectiveBlockedAppBundleIDs, "containsObject:", v11)}];

LABEL_18:
        v20 = share_sheet_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          activityType2 = [activity activityType];
          activityUUID = [activity activityUUID];
          *buf = 138412802;
          v34 = activityType2;
          v35 = 2112;
          v36 = activityUUID;
          v37 = 2112;
          v38 = v8;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Updating policy for %@/%@, proxy:%@", buf, 0x20u);
        }
      }

      hostShareActivityProxies = v27;
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
  suggestedPeople = [(SDShareSheetSession *)self suggestedPeople];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100196988;
  v10[3] = &unk_1008D29D0;
  v10[4] = self;
  [suggestedPeople enumerateObjectsUsingBlock:v10];

  hostConfiguration = [(SDShareSheetSession *)self hostConfiguration];
  requestPeopleSuggestionsData = [hostConfiguration requestPeopleSuggestionsData];

  if (requestPeopleSuggestionsData)
  {
    suggestionBrowser = [(SDShareSheetSession *)self suggestionBrowser];
    peopleSuggestions = [suggestionBrowser peopleSuggestions];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100196C8C;
    v9[3] = &unk_1008D29F8;
    v9[4] = self;
    [peopleSuggestions enumerateObjectsUsingBlock:v9];
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
  airDropPeople = [(SDShareSheetSession *)self airDropPeople];
  v3 = [airDropPeople countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v3)
  {
    v22 = *v32;
    v21 = airDropPeople;
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
        airDropAllowed = [(SDShareSheetSession *)self airDropAllowed];
        realNameToNodeID = [(SDShareSheetSession *)self realNameToNodeID];
        realName = [v26 realName];
        v7 = [realNameToNodeID objectForKeyedSubscript:realName];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        airDropNodes = [(SDShareSheetSession *)self airDropNodes];
        v9 = [airDropNodes countByEnumeratingWithState:&v27 objects:v41 count:16];
        if (v9)
        {
          v10 = *v28;
          while (2)
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v28 != v10)
              {
                objc_enumerationMutation(airDropNodes);
              }

              v12 = *(*(&v27 + 1) + 8 * j);
              identifier = [v12 identifier];
              v14 = v7;
              v15 = identifier;
              v16 = v15;
              if (v14 == v15)
              {

LABEL_20:
                [v12 setIsRestricted:airDropAllowed ^ 1];
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

            v9 = [airDropNodes countByEnumeratingWithState:&v27 objects:v41 count:16];
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
          if (airDropAllowed)
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

      airDropPeople = v21;
      v3 = [v21 countByEnumeratingWithState:&v31 objects:v42 count:16];
    }

    while (v3);
  }

  objc_sync_exit(obj);
}

- (void)setHostConfiguration:(id)configuration
{
  objc_storeStrong(&self->_hostConfiguration, configuration);
  configurationCopy = configuration;
  v6 = +[UIDevice currentDevice];
  hostIdiom = [configurationCopy hostIdiom];

  [v6 setSh_hostUserInterfaceIdiom:hostIdiom];
}

- (id)_orderedAvailableActivitiesForAuditToken:(id *)token WithMatchingContextCustomizationBlock:(id)block
{
  blockCopy = block;
  v7 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v7);
  hostConfiguration = [(SDShareSheetSession *)self hostConfiguration];
  contextForMatchingByActivityItemValueClasses = [hostConfiguration contextForMatchingByActivityItemValueClasses];
  v10 = [contextForMatchingByActivityItemValueClasses copy];

  activityTypesToCreateInShareService = [hostConfiguration activityTypesToCreateInShareService];
  [v10 setAllowMatchingExtensionActivities:{objc_msgSend(activityTypesToCreateInShareService, "containsObject:", @"com.apple.UIKit.activity.RemoteExtension"}];

  [v10 setAllowMatchingBuiltInActivities:0];
  hostActivityConfigurations = [hostConfiguration hostActivityConfigurations];
  v13 = [SUIHostActivityProxy activitiesForConfigurations:hostActivityConfigurations];
  [v10 setExternalMatchBuiltinOrderedActivities:v13];

  [v10 setHostAuditToken:token];
  [v10 setIsCollaborative:{objc_msgSend(hostConfiguration, "isCollaborative")}];
  collaborationType = [hostConfiguration collaborationType];
  [v10 setCollaborationType:collaborationType];

  collaborationIsPostShare = [hostConfiguration collaborationIsPostShare];
  [v10 setCollaborationIsPostShare:collaborationIsPostShare];

  activityTypesToCreateInShareService2 = [hostConfiguration activityTypesToCreateInShareService];
  v17 = [activityTypesToCreateInShareService2 mutableCopy];

  [v17 removeObject:@"com.apple.UIKit.activity.RemoteExtension"];
  [v10 setActivityTypesGeneratedByDelegate:v17];
  if (blockCopy)
  {
    blockCopy[2](blockCopy, v10);
  }

  if (_os_feature_enabled_impl())
  {
    testingReferenceSnapshot = [(SDShareSheetSession *)self testingReferenceSnapshot];
    [v10 setTestingReferenceSnapshot:testingReferenceSnapshot];
  }

  activityHelper = [(SDShareSheetSession *)self activityHelper];
  v20 = [activityHelper orderedAvailableActivitiesForMatchingContext:v10];

  hiddenActivities = [v20 hiddenActivities];
  v22 = [hiddenActivities count];

  if (v22)
  {
    hiddenActivities2 = [(SDShareSheetSession *)self hiddenActivities];
    v24 = [hiddenActivities2 count];

    if (v24)
    {
      hiddenActivities3 = [(SDShareSheetSession *)self hiddenActivities];
      hiddenActivities4 = [v20 hiddenActivities];
      v27 = [hiddenActivities3 arrayByAddingObjectsFromArray:hiddenActivities4];
      [(SDShareSheetSession *)self setHiddenActivities:v27];
    }

    else
    {
      hiddenActivities3 = [v20 hiddenActivities];
      hiddenActivities4 = [hiddenActivities3 copy];
      [(SDShareSheetSession *)self setHiddenActivities:hiddenActivities4];
    }
  }

  orderedActivities = [v20 orderedActivities];

  objc_sync_exit(v7);

  return orderedActivities;
}

- (void)_loadPresentableActivitiesForAuditToken:(id *)token
{
  v5 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v5);
  v6 = *&token->var0[4];
  v8[0] = *token->var0;
  v8[1] = v6;
  v7 = [(SDShareSheetSession *)self _orderedAvailableActivitiesForAuditToken:v8 WithMatchingContextCustomizationBlock:&stru_1008D2A38];
  [(SDShareSheetSession *)self setOrderedPresentableActivities:v7];

  objc_sync_exit(v5);
}

- (id)_orderedActivitiesIncludingUserDisabledExtensionsForAuditToken:(id *)token
{
  v3 = *&token->var0[4];
  v6[0] = *token->var0;
  v6[1] = v3;
  v4 = [(SDShareSheetSession *)self _orderedAvailableActivitiesForAuditToken:v6 WithMatchingContextCustomizationBlock:&stru_1008D2A58];

  return v4;
}

- (NSString)hostAppBundleID
{
  connection = [(SDShareSheetSession *)self connection];
  sd_connectionBundleID = [connection sd_connectionBundleID];

  return sd_connectionBundleID;
}

- (NSString)hostAppProcessName
{
  connection = [(SDShareSheetSession *)self connection];
  sd_connectionProcessName = [connection sd_connectionProcessName];

  return sd_connectionProcessName;
}

- (void)sendItems:(id)items itemData:(id)data toEndpointUUID:(id)d withNode:(id)node
{
  v65 = a2;
  itemsCopy = items;
  dataCopy = data;
  dCopy = d;
  nodeCopy = node;
  obj = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(obj);
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  securityContexts = [dataCopy securityContexts];
  v13 = [securityContexts countByEnumeratingWithState:&v84 objects:v90 count:16];
  if (v13)
  {
    v14 = *v85;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v85 != v14)
        {
          objc_enumerationMutation(securityContexts);
        }

        [*(*(&v84 + 1) + 8 * i) activate];
      }

      v13 = [securityContexts countByEnumeratingWithState:&v84 objects:v90 count:16];
    }

    while (v13);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v69 = itemsCopy;
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

          string = [v20 string];
          v22 = string;
        }

        v23 = [NSURL URLWithString:v22, v65];
        if ((isKindOfClass & 1) == 0)
        {
        }

        if (v23)
        {
          scheme = [v23 scheme];
          v25 = scheme == 0;

          if (!v25)
          {
            v26 = v23;

            v20 = v26;
          }
        }

LABEL_23:
        v27 = [dataCopy attachmentNameForItem:{v20, v65}];
        v28 = [dataCopy subjectForItem:v20];
        v29 = [dataCopy dataTypeForItem:v20];
        if (v18 <= 2)
        {
          v30 = [dataCopy previewImageForItem:v20];

          if (!v30)
          {
            v31 = [dataCopy previewImageDataForItem:v20];
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
              if (![v32 isFileURL] || objc_msgSend(dataCopy, "canAccessFileURL:", v32))
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
  previewImage = [(NSMutableDictionary *)sharedItemsRequestIDToPreviewPhoto objectForKeyedSubscript:v39];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v40 = self->_cachedSharedItems;
  v41 = [(NSMutableOrderedSet *)v40 countByEnumeratingWithState:&v76 objects:v88 count:16];
  if (v41)
  {
    payloadDescription = 0;
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
            if (!previewImage)
            {
              previewImage = [v46 previewImage];
            }

            if (!payloadDescription)
            {
              payloadDescription = [v46 payloadDescription];
            }

            wasString = [v46 wasString];
            [v71 addObject:v46];
            v42 |= wasString;
            v43 |= wasString ^ 1;
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
    payloadDescription = 0;
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
    if (!dCopy)
    {
      dCopy = [nodeCopy endpointUUID];
      if (!dCopy)
      {
        sub_1001B1C28();
        dCopy = 0;
      }
    }

    v56 = SFScaleAndRotateImage();
    v57 = v56;
    cGImage = [v56 CGImage];

    if (cGImage)
    {
      connection2 = SFDataFromCGImage();
    }

    else
    {
      connection2 = 0;
    }

    airDropController = [(SDShareSheetSession *)self airDropController];
    connection = [(SDShareSheetSession *)self connection];
    sd_connectionBundleID = [connection sd_connectionBundleID];
    [airDropController send:v51 to:dCopy itemPreviewData:connection2 requestSource:sd_connectionBundleID];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_1001B1BBC();
    }

    v60 = nodeCopy;
    connection2 = [(SDShareSheetSession *)self connection];
    airDropController = [connection2 sd_connectionBundleID];
    connection = [(SDPeopleBrowser *)self->_peopleBrowser sessionID];
    sd_connectionBundleID = SFScaleAndRotateImage();
    v64 = sd_connectionBundleID;
    [v60 startSendForBundleID:airDropController sessionID:connection items:v51 description:0 previewImage:objc_msgSend(sd_connectionBundleID fromShareSheet:{"CGImage"), 1}];
  }

  [(SDShareSheetSession *)self resetAfterAirDropTransferWithItemData:dataCopy];
}

- (void)cancelAirDropForNode:(id)node
{
  nodeCopy = node;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [nodeCopy cancelSend];
  }

  else
  {
    airDropController = [(SDShareSheetSession *)self airDropController];
    [airDropController cancelCurrentSend];
  }
}

- (void)resetAfterAirDropTransferWithItemData:(id)data
{
  dataCopy = data;
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
  securityContexts = [dataCopy securityContexts];
  v13 = [securityContexts countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(securityContexts);
        }

        [*(*(&v16 + 1) + 8 * v15) deactivate];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [securityContexts countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }

  objc_sync_exit(v5);
}

- (BOOL)isValidPayload:(id)payload toPerson:(id)person invalidMessage:(id *)message
{
  payloadCopy = payload;
  personCopy = person;
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
  if (([personCopy supportsPasses] & 1) == 0)
  {
    v59 = personCopy;
    v54 = payloadCopy;
    v55 = v8;
    firstObject = [v8 firstObject];
    v21 = [firstObject objectForKeyedSubscript:kSFOperationFileNameKey];
    pathExtension = [v21 pathExtension];

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
            isUnknown = [v59 isUnknown];
            v29 = @"TRANSFER_TO_PERSON_NO_WALLET_TEXT";
            if (isUnknown)
            {
              v29 = @"TRANSFER_TO_DEVICE_NO_WALLET_TEXT";
            }

            v30 = v29;
            v31 = SFLocalizedStringForKey();
            SFLocalizedStringForKey();
            v33 = v32 = pathExtension;

            displayName = [v59 displayName];
            v35 = [NSString stringWithFormat:v33, displayName];
            *message = [NSString stringWithFormat:v31, v35];

            pathExtension = v32;
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

    payloadCopy = v54;
    goto LABEL_27;
  }

  if ([personCopy supportsFMF])
  {
    if (![personCopy supportsCredentials] || objc_msgSend(personCopy, "isUnknown"))
    {
      firstObject2 = [v9 firstObject];
      scheme = [firstObject2 scheme];
      pathExtension = [scheme lowercaseString];

      MyFriendsLink = SFIsCredential();
      if (MyFriendsLink)
      {
        firstObject3 = [v57 firstObject];
        SFIsPasskeyCredentialLink();

        v15 = SFLocalizedStringForKey();
        v16 = SFLocalizedStringForKeyInStringsFileNamed();
        *message = [NSString stringWithFormat:v15, v16];

        v75[0] = @"supportsCredentials";
        v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [personCopy supportsCredentials]);
        v75[1] = @"unknownPeer";
        v76[0] = v17;
        v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [personCopy isUnknown]);
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
    pathExtension = payloadCopy;
    v46 = [pathExtension countByEnumeratingWithState:&v62 objects:v74 count:16];
    if (!v46)
    {
      v25 = 1;
      goto LABEL_28;
    }

    v47 = v46;
    v55 = v8;
    v59 = personCopy;
    v48 = *v63;
    while (2)
    {
      for (j = 0; j != v47; j = j + 1)
      {
        if (*v63 != v48)
        {
          objc_enumerationMutation(pathExtension);
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
            [pathExtension count];
            SFLocalizedStringForKey();
            *message = v25 = 0;
            goto LABEL_27;
          }
        }
      }

      v47 = [pathExtension countByEnumeratingWithState:&v62 objects:v74 count:16];
      v25 = 1;
      if (v47)
      {
        continue;
      }

      break;
    }

LABEL_27:
    personCopy = v59;
    v8 = v55;
    goto LABEL_28;
  }

  firstObject4 = [v9 firstObject];
  scheme2 = [firstObject4 scheme];
  pathExtension = [scheme2 lowercaseString];

  MyFriendsLink = SFIsFindMyFriendsLink();
  if (MyFriendsLink)
  {
    isUnknown2 = [personCopy isUnknown];
    v39 = @"TRANSFER_TO_PERSON_NO_FMF_TEXT";
    if (isUnknown2)
    {
      v39 = @"TRANSFER_TO_DEVICE_NO_FMF_TEXT";
    }

    v40 = pathExtension;
    v41 = v39;
    v19 = SFLocalizedStringForKey();
    v42 = SFLocalizedStringForKey();

    displayName2 = [personCopy displayName];
    v44 = [NSString stringWithFormat:v42, displayName2];
    *message = [NSString stringWithFormat:v19, v44];

    pathExtension = v40;
    goto LABEL_23;
  }

LABEL_24:
  v25 = MyFriendsLink ^ 1;
LABEL_28:

  return v25 & 1;
}

- (BOOL)addURL:(id)l withAttachmentName:(id)name description:(id)description previewImage:(id)image itemIndex:(int)index
{
  lCopy = l;
  nameCopy = name;
  descriptionCopy = description;
  imageCopy = image;
  v16 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v16);
  v17 = airdrop_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [imageCopy size];
    v25 = NSStringFromCGSize(v47);
    *buf = 138413314;
    v38 = lCopy;
    v39 = 2112;
    v40 = nameCopy;
    v41 = 2112;
    v42 = descriptionCopy;
    v43 = 2112;
    v44 = imageCopy;
    v45 = 2112;
    v46 = v25;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "addURL:[%@] withAttachmentName:[%@] description:[%@] previewImage:[%@]-size:[%@]", buf, 0x34u);
  }

  scheme = [lCopy scheme];
  v19 = scheme == 0;

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
    if (imageCopy || (generatedPreviews = self->_generatedPreviews, generatedPreviews > 2))
    {
      operationQueue = self->_operationQueue;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100198DEC;
      v26[3] = &unk_1008D2AA8;
      v27 = lCopy;
      v28 = descriptionCopy;
      v29 = imageCopy;
      selfCopy = self;
      indexCopy = index;
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
      v33 = lCopy;
      v34 = descriptionCopy;
      selfCopy2 = self;
      indexCopy2 = index;
      [(NSOperationQueue *)v21 addOperationWithBlock:v32];

      v22 = v33;
    }
  }

  objc_sync_exit(v16);
  return 1;
}

- (BOOL)addImage:(id)image withAttachmentName:(id)name description:(id)description previewImage:(id)previewImage itemIndex:(int)index
{
  imageCopy = image;
  nameCopy = name;
  descriptionCopy = description;
  previewImageCopy = previewImage;
  obj = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(obj);
  v15 = airdrop_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [imageCopy size];
    v29 = NSStringFromCGSize(v52);
    [previewImageCopy size];
    v30 = NSStringFromCGSize(v53);
    *buf = 138413570;
    v41 = imageCopy;
    v42 = 2112;
    v43 = v29;
    v44 = 2112;
    v45 = nameCopy;
    v46 = 2112;
    v47 = descriptionCopy;
    v48 = 2112;
    v49 = previewImageCopy;
    v50 = 2112;
    v51 = v30;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "addImage:[%@]-size:[%@] withAttachmentName:[%@] description:[%@] previewImage:[%@]-size:[%@]", buf, 0x3Eu);
  }

  self->_itemsReady = 0;
  if (!previewImageCopy)
  {
    previewImageCopy = imageCopy;
  }

  sessionID = self->_sessionID;
  v17 = self->_attachmentCount + 1;
  self->_attachmentCount = v17;
  v18 = [NSString stringWithFormat:@"IMG_%@-%ld", sessionID, v17];
  SuggestedFilename = _UTTypeCreateSuggestedFilename();
  v20 = NSTemporaryDirectory();
  v21 = nameCopy;
  v22 = [v20 stringByAppendingPathComponent:SuggestedFilename];
  operationQueue = self->_operationQueue;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100199174;
  v33[3] = &unk_1008D2AD0;
  v24 = imageCopy;
  v34 = v24;
  v25 = v22;
  v35 = v25;
  v26 = descriptionCopy;
  v36 = v26;
  v27 = previewImageCopy;
  v37 = v27;
  selfCopy = self;
  indexCopy = index;
  [(NSOperationQueue *)operationQueue addOperationWithBlock:v33];

  objc_sync_exit(obj);
  return 1;
}

- (BOOL)createURLPayloadForData:(id)data ofType:(id)type withAttachmentName:(id)name description:(id)description previewImage:(id)image itemIndex:(int)index completion:(id)completion
{
  dataCopy = data;
  typeCopy = type;
  nameCopy = name;
  descriptionCopy = description;
  imageCopy = image;
  completionCopy = completion;
  v18 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v18);
  v43 = nameCopy;
  if (![nameCopy length])
  {
    v25 = UTTypeCopyPreferredTagWithClass(typeCopy, kUTTagClassFilenameExtension);
    if (v25)
    {
      v20 = v25;
    }

    else
    {
      v20 = @"data";
    }

    pathExtension = UTTypeCopyDescription(typeCopy);
    sessionID = self->_sessionID;
    v27 = self->_attachmentCount + 1;
    self->_attachmentCount = v27;
    imageCopy = [NSString stringWithFormat:@"%@-%@-%ld.%@", pathExtension, sessionID, v27, v20, imageCopy];
    goto LABEL_11;
  }

  SuggestedFilename = _UTTypeCreateSuggestedFilename();
  v20 = [SuggestedFilename mutableCopy];

  [(__CFString *)v20 replaceOccurrencesOfString:@"/" withString:@"-" options:0 range:0, [(__CFString *)v20 length]];
  [(__CFString *)v20 replaceOccurrencesOfString:@":" withString:@"-" options:0 range:0, [(__CFString *)v20 length]];
  if (self->_attachmentCount)
  {
    pathExtension = [(__CFString *)v20 pathExtension];
    if ([pathExtension length])
    {
      stringByDeletingPathExtension = [(__CFString *)v20 stringByDeletingPathExtension];
      v23 = self->_attachmentCount + 1;
      self->_attachmentCount = v23;
      v24 = [NSString stringWithFormat:@"%@-%ld.%@", stringByDeletingPathExtension, v23, pathExtension];

LABEL_12:
      goto LABEL_13;
    }

    v29 = self->_attachmentCount + 1;
    self->_attachmentCount = v29;
    imageCopy = [NSString stringWithFormat:@"%@-%ld.%@", v20, v29, pathExtension];
LABEL_11:
    v24 = imageCopy;
    goto LABEL_12;
  }

  v24 = v20;
  ++self->_attachmentCount;
LABEL_13:

  v30 = NSTemporaryDirectory();
  v31 = typeCopy;
  v32 = [v30 stringByAppendingPathComponent:v24];
  operationQueue = self->_operationQueue;
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100199828;
  v44[3] = &unk_1008D2AF8;
  v34 = dataCopy;
  v45 = v34;
  v35 = v32;
  v46 = v35;
  v36 = descriptionCopy;
  v47 = v36;
  v37 = imageCopy;
  v48 = v37;
  selfCopy = self;
  indexCopy = index;
  v38 = completionCopy;
  v50 = v38;
  [(NSOperationQueue *)operationQueue addOperationWithBlock:v44];

  objc_sync_exit(v18);
  return 1;
}

- (void)generateSpecialPreviewPhotoForRequestID:(int64_t)d
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
        if ([v10 identifer] == d)
        {
          v11 = [v10 URL];
          if (v11)
          {
            previewImage = [v10 previewImage];
            v13 = previewImage == 0;

            if (!v13)
            {
              previewImage2 = [v10 previewImage];
              [v4 addObject:previewImage2];

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

          pathExtension = [*(*(&v29 + 1) + 8 * j) pathExtension];
          PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, pathExtension, 0);
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
    pathExtension = [NSNumber numberWithInteger:d];
    [(NSMutableDictionary *)sharedItemsRequestIDToPreviewPhoto setObject:v16 forKeyedSubscript:pathExtension];
LABEL_25:
  }

  objc_sync_exit(obj);
}

+ (id)labelColorWithHostConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ([configurationCopy linkedBeforeYukon])
  {
    v4 = +[UIColor blackColor];
  }

  else
  {
    hostTraitCollection = [configurationCopy hostTraitCollection];
    if (!hostTraitCollection)
    {
      v6 = share_sheet_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = configurationCopy;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(Label color) Creating dummy trait collection because host's is nil on config: %@", &v9, 0xCu);
      }

      hostTraitCollection = [UITraitCollection traitCollectionWithUserInterfaceStyle:0];
    }

    v7 = +[UIColor labelColor];
    v4 = [v7 resolvedColorWithTraitCollection:hostTraitCollection];
  }

  return v4;
}

+ (id)secondaryLabelColorWithHostConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ([configurationCopy linkedBeforeYukon])
  {
    v4 = [UIColor colorWithRed:0.235294118 green:0.235294118 blue:0.262745098 alpha:0.6];
  }

  else
  {
    hostTraitCollection = [configurationCopy hostTraitCollection];
    if (!hostTraitCollection)
    {
      v6 = share_sheet_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = configurationCopy;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(Secondary label color) Creating dummy trait collection because host's is nil on config: %@", &v9, 0xCu);
      }

      hostTraitCollection = [UITraitCollection traitCollectionWithUserInterfaceStyle:0];
    }

    v7 = +[UIColor secondaryLabelColor];
    v4 = [v7 resolvedColorWithTraitCollection:hostTraitCollection];
  }

  return v4;
}

- (id)minimumVisibleShareActivities
{
  selfCopy = self;
  hostConfiguration = [(SDShareSheetSession *)self hostConfiguration];
  numberOfVisibleSharingActivities = [hostConfiguration numberOfVisibleSharingActivities];

  v5 = +[NSMutableSet set];
  hostShareActivityProxies = [(SDShareSheetSession *)selfCopy hostShareActivityProxies];
  v7 = numberOfVisibleSharingActivities;
  if ([hostShareActivityProxies count] < numberOfVisibleSharingActivities)
  {
    hostShareActivityProxies2 = [(SDShareSheetSession *)selfCopy hostShareActivityProxies];
    v7 = [hostShareActivityProxies2 count];
  }

  v9 = [NSIndexSet indexSetWithIndexesInRange:0, v7];
  hostShareActivityProxies3 = [(SDShareSheetSession *)selfCopy hostShareActivityProxies];
  v11 = [hostShareActivityProxies3 objectsAtIndexes:v9];

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

        activity = [*(*(&v41 + 1) + 8 * i) activity];
        if (activity)
        {
          [v5 addObject:activity];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v13);
  }

  peopleNodes = [(SDShareSheetSession *)selfCopy peopleNodes];
  if ([peopleNodes count] < numberOfVisibleSharingActivities)
  {
    peopleNodes2 = [(SDShareSheetSession *)selfCopy peopleNodes];
    numberOfVisibleSharingActivities = [peopleNodes2 count];
  }

  v19 = [NSIndexSet indexSetWithIndexesInRange:0, numberOfVisibleSharingActivities];

  peopleNodes3 = [(SDShareSheetSession *)selfCopy peopleNodes];
  v35 = v19;
  v21 = [peopleNodes3 objectsAtIndexes:v19];

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

        suggestionNode = [*(*(&v37 + 1) + 8 * j) suggestionNode];
        v28 = suggestionNode;
        if (suggestionNode)
        {
          bundleID = [suggestionNode bundleID];
          bundleIDToActivities = [(SDShareSheetSession *)selfCopy bundleIDToActivities];
          [bundleIDToActivities objectForKeyedSubscript:bundleID];
          v32 = v31 = selfCopy;

          [v5 addObjectsFromArray:v32];
          selfCopy = v31;
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v24);
  }

  allObjects = [v5 allObjects];

  return allObjects;
}

- (id)_proxySectionForType:(int64_t)type
{
  switch(type)
  {
    case 2:
      hostActionActivityProxies = [(SDShareSheetSession *)self hostActionActivityProxies];
      hostConfiguration = [(SDShareSheetSession *)self hostConfiguration];
      numberOfVisibleActionActivities = [hostConfiguration numberOfVisibleActionActivities];
      goto LABEL_8;
    case 1:
      hostShareActivityProxies = [(SDShareSheetSession *)self hostShareActivityProxies];
      goto LABEL_6;
    case 0:
      hostShareActivityProxies = [(SDShareSheetSession *)self peopleNodes];
LABEL_6:
      hostActionActivityProxies = hostShareActivityProxies;
      hostConfiguration = [(SDShareSheetSession *)self hostConfiguration];
      numberOfVisibleActionActivities = [hostConfiguration numberOfVisibleSharingActivities];
LABEL_8:
      v9 = numberOfVisibleActionActivities;

      goto LABEL_10;
  }

  hostActionActivityProxies = 0;
  v9 = 0;
LABEL_10:
  if ([hostActionActivityProxies count])
  {
    v10 = [[SDShareSheetProxySection alloc] initWithType:type proxies:hostActionActivityProxies];
    [(SDShareSheetProxySection *)v10 setInitialBatchSize:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_loadProxySectionWithType:(int64_t)type
{
  obj = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(obj);
  v5 = [(SDShareSheetSession *)self _proxySectionForType:type];
  if (v5)
  {
    proxyLoaderManager = [(SDShareSheetSession *)self proxyLoaderManager];
    [proxyLoaderManager loadProxySection:v5];
  }

  objc_sync_exit(obj);
}

- (void)reportCurrentInvocationForDuration:(int64_t)duration
{
  v4 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v4);
  activityHelper = [(SDShareSheetSession *)self activityHelper];
  reportExtensionsCacheResult = [activityHelper reportExtensionsCacheResult];

  hostAppBundleID = [(SDShareSheetSession *)self hostAppBundleID];
  if (!hostAppBundleID)
  {
    hostAppBundleID = [(SDShareSheetSession *)self hostAppProcessName];
  }

  hostConfiguration = [(SDShareSheetSession *)self hostConfiguration];
  hostTraitCollection = [hostConfiguration hostTraitCollection];
  userInterfaceStyle = [hostTraitCollection userInterfaceStyle];

  hostConfiguration2 = [(SDShareSheetSession *)self hostConfiguration];
  isCollaborative = [hostConfiguration2 isCollaborative];

  v11 = +[NSMutableArray array];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  suggestedPeople = [(SDShareSheetSession *)self suggestedPeople];
  v13 = [suggestedPeople countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(suggestedPeople);
        }

        displayName = [*(*(&v23 + 1) + 8 * v15) displayName];
        if (displayName)
        {
          [v11 addObject:displayName];
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [suggestedPeople countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  xpcHelperCnx = [(SDShareSheetSession *)self xpcHelperCnx];
  suggestedPeople2 = [(SDShareSheetSession *)self suggestedPeople];
  LOBYTE(v19) = isCollaborative;
  [xpcHelperCnx sendShareSheetInvocationMetricsWithAppBundleID:hostAppBundleID numSuggestions:objc_msgSend(suggestedPeople2 suggestionDisplayNames:"count") extensionsCacheResult:v11 isDarkMode:reportExtensionsCacheResult duration:userInterfaceStyle == 2 isCollaborative:{duration, v19}];

  objc_sync_exit(v4);
}

- (void)_removeFailedIndexes:(id)indexes forProxySection:(id)section
{
  indexesCopy = indexes;
  sectionCopy = section;
  v7 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v7);
  type = [sectionCopy type];
  if (!type)
  {
    peopleNodes = [(SDShareSheetSession *)self peopleNodes];
    v10 = [peopleNodes mutableCopy];
    goto LABEL_7;
  }

  if (type == 1)
  {
    peopleNodes = [(SDShareSheetSession *)self hostShareActivityProxies];
    v10 = [peopleNodes mutableCopy];
    goto LABEL_7;
  }

  if (type == 2)
  {
    peopleNodes = [(SDShareSheetSession *)self hostActionActivityProxies];
    v10 = [peopleNodes mutableCopy];
LABEL_7:
    v11 = v10;

    goto LABEL_9;
  }

  v11 = 0;
LABEL_9:
  proxies = [sectionCopy proxies];
  v13 = [proxies objectsAtIndexes:indexesCopy];

  [v11 removeObjectsInArray:v13];
  type2 = [sectionCopy type];
  if (type2)
  {
    if (type2 == 1)
    {
      v15 = [v11 copy];
      v16 = 392;
    }

    else
    {
      if (type2 != 2)
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

- (void)_updateProxiesWithChangeDetails:(id)details
{
  detailsCopy = details;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  changedProxySections = [detailsCopy changedProxySections];
  v6 = [changedProxySections countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(changedProxySections);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [detailsCopy failedIndexesForProxySection:v10];
        if ([v11 count])
        {
          [(SDShareSheetSession *)self _removeFailedIndexes:v11 forProxySection:v10];
        }
      }

      v7 = [changedProxySections countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)proxyLoaderManager:(id)manager didLoadProxiesWithChangeDetails:(id)details
{
  [(SDShareSheetSession *)self _updateProxiesWithChangeDetails:details];
  delegate = [(SDShareSheetSession *)self delegate];
  [delegate sessionDidChange:self];
}

- (void)proxyLoaderManagerDidFinishLoadingProxySection:(id)section cancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  sectionCopy = section;
  v7 = share_sheet_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    v9 = 138412802;
    selfCopy = self;
    v11 = 2112;
    if (cancelledCopy)
    {
      v8 = @"YES";
    }

    v12 = sectionCopy;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ did finish loading proxySection:%@ cancelled:%@", &v9, 0x20u);
  }
}

- (void)didConnectNearbySharingInteractionWithEndpointUUID:(id)d
{
  dCopy = d;
  delegate = [(SDShareSheetSession *)self delegate];
  [delegate session:self didConnectNearbySharingInteractionWithEndpointUUID:dCopy];
}

- (SDShareSheetSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end