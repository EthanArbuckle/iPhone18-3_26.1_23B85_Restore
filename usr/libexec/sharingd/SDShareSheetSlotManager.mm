@interface SDShareSheetSlotManager
+ (id)_bundleIdentifierForActivity:(id)activity;
+ (id)_groupActivitiesByBundleID:(id)d;
+ (id)nonBreakingActivityTitle:(id)title;
+ (id)sharedManager;
- ($EC76EA2E339756B4D2C49A1061DE0928)_createNameLabelSlotWithString:(SEL)string textColor:(id)color maximumNumberOfLines:(id)lines isAirDrop:(unint64_t)drop ignoreNameWrapping:(BOOL)wrapping sessionConnection:(BOOL)connection hostConfig:(id)config;
- ($EC76EA2E339756B4D2C49A1061DE0928)_uploadSlotWithVectorData:(SEL)data cgImage:(id)image performCATransaction:(id)transaction hostConfiguration:(BOOL)configuration;
- (BOOL)_hasCollaborationEntitlementForConnection:(id)connection;
- (BOOL)_loadActionProxy:(id)proxy configuration:(id)configuration;
- (BOOL)_loadAirDropProxy:(id)proxy forAirDropNode:(id)node configuration:(id)configuration;
- (BOOL)_loadSharingProxy:(id)proxy configuration:(id)configuration;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CAContext)shareSheetContext;
- (CGImage)_createActivityTitleImageForActivity:(id)activity foregroundColor:(id)color sessionConnection:(id)connection;
- (SDShareSheetSlotManager)init;
- (id)_activityTitleImagesMapForActivities:(id)activities session:(id)session;
- (id)_activityWithActivityType:(id)type session:(id)session;
- (id)_createActionProxiesFromActivities:(id)activities withTintColor:(id)color session:(id)session;
- (id)_createActivityTitlePerspectiveDataForActivity:(id)activity foregroundColor:(id)color sessionConnection:(id)connection;
- (id)_createShareProxiesFromActivities:(id)activities session:(id)session;
- (id)_createShareSheetContext;
- (id)_fetchShortcutWorkflowsForMatchingDictionaries:(id)dictionaries resolvedActivityItems:(id)items hostBundleID:(id)d iconSize:(CGSize)size iconScale:(double)scale error:(id *)error;
- (id)_getMainActivityPerBundleID:(id)d;
- (id)_moveDefaultApplicationToFrontForURL:(id)l activities:(id)activities;
- (id)_remoteObjectProxyForConnection:(id)connection;
- (id)_removeSecondaryActivities:(id)activities bundleIDToActivities:(id)toActivities;
- (id)_shortcutActivitiesForMatchingDictionaries:(id)dictionaries resolvedActivityItems:(id)items hostBundleID:(id)d configuration:(id)configuration;
- (id)activeConnections;
- (id)activityHelper:(id)helper activitiesForActivityType:(id)type matchingContext:(id)context sessionID:(id)d;
- (id)activityHelper:(id)helper predictionContextForSessionID:(id)d;
- (id)configurationForDataSourceUpdateWithSession:(id)session;
- (id)currentConnection;
- (id)exportedInterface;
- (id)getShareSheetSessionForSessionID:(id)d;
- (id)recipientHandlesForSessionID:(id)d;
- (id)remoteObjectInterface;
- (unsigned)createSlotForContext:(id)context;
- (void)_clearSlotsForAirDropProxies:(id)proxies;
- (void)_configureActionsSectionForSession:(id)session;
- (void)_configurePeopleSuggestionsSectionForSession:(id)session;
- (void)_configureSharingSectionsForSession:(id)session;
- (void)_handleSelectedNode:(id)node session:(id)session;
- (void)_instructHostToPerformExtensionActivity:(id)activity session:(id)session;
- (void)_instructHostToPerformHostActivity:(id)activity session:(id)session;
- (void)_instructHostToPerformShortcutActivity:(id)activity singleUseToken:(id)token session:(id)session;
- (void)_instructHostToPerformUserDefaultsActivityForCategory:(int64_t)category session:(id)session updatingView:(BOOL)view;
- (void)_loadPresentableActivitiesForSession:(id)session;
- (void)_performSelectedActivity:(id)activity inSession:(id)session;
- (void)_performServiceInitiatedActivityInServiceWithActivity:(id)activity session:(id)session;
- (void)_saveSnapshotToFile:(id)file withReferenceSnapshot:(id)snapshot sessionID:(id)d completionHandler:(id)handler;
- (void)actionActivityUserDefaultsDidChangeWithSession:(id)session;
- (void)activate;
- (void)activateSuggestionBrowserForSession:(id)session withExtensionMatchingDictionaries:(id)dictionaries assetIdentifiers:(id)identifiers urlsBeingShared:(id)shared sandboxExtensionsByfileURLPath:(id)path;
- (void)activityViewControllerDidAppearWithSessionID:(id)d;
- (void)activityViewControllerDidDisappearWithSessionID:(id)d;
- (void)activityViewControllerDidEnterBackgroundWithSessionID:(id)d;
- (void)activityViewControllerPerformEditActionsWithSessionID:(id)d;
- (void)activityViewControllerSessionDidEndWithSessionID:(id)d testingSnapshot:(id)snapshot completionHandler:(id)handler;
- (void)activityViewControllerWillEnterForegroundWithSessionID:(id)d;
- (void)activityViewControllerWithSessionID:(id)d didLongPressShareActivityWithIdentifier:(id)identifier;
- (void)activityViewControllerWithSessionID:(id)d favoritedActivity:(BOOL)activity withIdentifier:(id)identifier activityCategory:(int64_t)category;
- (void)activityViewControllerWithSessionID:(id)d findSupportedActivitiesWithCompletionHandler:(id)handler;
- (void)activityViewControllerWithSessionID:(id)d performActivityWithType:(id)type completionHandler:(id)handler;
- (void)activityViewControllerWithSessionID:(id)d provideFeedbackForPeopleSuggestionWithIdentifier:(id)identifier;
- (void)activityViewControllerWithSessionID:(id)d removedPersonWithIdentifier:(id)identifier;
- (void)activityViewControllerWithSessionID:(id)d selectedActionWithIdentifier:(id)identifier;
- (void)activityViewControllerWithSessionID:(id)d selectedActivityWithIdentifier:(id)identifier;
- (void)activityViewControllerWithSessionID:(id)d selectedDefaultActivityWithIdentifier:(id)identifier activityCategory:(int64_t)category;
- (void)activityViewControllerWithSessionID:(id)d selectedPersonWithIdentifier:(id)identifier;
- (void)activityViewControllerWithSessionID:(id)d toggledActivityWithIdentifier:(id)identifier activityCategory:(int64_t)category;
- (void)activityViewControllerWithSessionID:(id)d updatedFavoritesProxies:(id)proxies activityCategory:(int64_t)category;
- (void)browser:(id)browser didUpdatePeople:(id)people deletedContactIdentifiers:(id)identifiers;
- (void)canShareFileURL:(id)l completionHandler:(id)handler;
- (void)configureAirDropNodesFromSuggestionNodes:(id)nodes shareUserDefaults:(id)defaults forSession:(id)session;
- (void)connectToDaemonWithContext:(id)context completionHandler:(id)handler;
- (void)connectUIServiceToDaemonWithSessionID:(id)d;
- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply;
- (void)connectionEstablished:(id)established;
- (void)connectionInvalidated:(id)invalidated;
- (void)createAirDropProxyForNode:(id)node session:(id)session;
- (void)createSharingURLForCollaborationRequest:(id)request completionHandler:(id)handler;
- (void)establishConnectionWithCompletionHandler:(id)handler;
- (void)handleAirDropNodesChanged:(id)changed sessionID:(id)d;
- (void)handleAirDropTransferUpdated:(id)updated;
- (void)invalidate;
- (void)invalidateShareSheetContext;
- (void)notifySession:(id)session activitySelected:(id)selected;
- (void)notifySession:(id)session favoritesProxies:(id)proxies suggestionProxies:(id)suggestionProxies activityCategory:(int64_t)category updatingView:(BOOL)view;
- (void)notifySession:(id)session personSelectedWithActivityType:(id)type;
- (void)notifySession:(id)session shortcutSelectedWithBundleID:(id)d singleUseToken:(id)token;
- (void)notifySession:(id)session withAirDropTransferChange:(id)change;
- (void)requestAirDropItemsForNode:(id)node endpointUUID:(id)d session:(id)session;
- (void)requestCollaborativeModeForContentIdentifier:(id)identifier completionHandler:(id)handler;
- (void)requestConfigurationWithSessionID:(id)d completion:(id)completion;
- (void)requestDefaultShareModeCollaborationForURL:(id)l completionHandler:(id)handler;
- (void)requestMessagesRecipientInfoForSessionID:(id)d completionHandler:(id)handler;
- (void)saveCollaborativeMode:(id)mode forContentIdentifier:(id)identifier;
- (void)sendAirDropUpdateForSessionWithID:(id)d realName:(id)name status:(int64_t)status progress:(double)progress;
- (void)sendConfiguration:(id)configuration completion:(id)completion;
- (void)session:(id)session didConnectNearbySharingInteractionWithEndpointUUID:(id)d;
- (void)sessionDidChange:(id)change;
- (void)setActiveConnections:(id)connections;
- (void)setCurrentConnection:(id)connection;
- (void)shareActivityUserDefaultsDidChangeWithSession:(id)session;
- (void)suggestionBrowserDidUpdateSuggestions:(id)suggestions;
- (void)transferUpdated:(id)updated;
- (void)updateNearbyCountSlotIDForSession:(id)session;
- (void)userDefaultsViewControllerDidDisappearWithSessionID:(id)d;
@end

@implementation SDShareSheetSlotManager

+ (id)sharedManager
{
  if (qword_10098A030 != -1)
  {
    sub_1001B1DE0();
  }

  v3 = qword_10098A028;

  return v3;
}

- (SDShareSheetSlotManager)init
{
  v9.receiver = self;
  v9.super_class = SDShareSheetSlotManager;
  v2 = [(SDShareSheetSlotManager *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    sessionIDToShareSheetSession = v2->_sessionIDToShareSheetSession;
    v2->_sessionIDToShareSheetSession = v3;

    v5 = objc_alloc_init(SDShareSheetAccessibilityCache);
    accessibilityCache = v2->_accessibilityCache;
    v2->_accessibilityCache = v5;

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"transferUpdated:" name:@"TransferUpdated" object:0];

    v2->_contextLock._os_unfair_lock_opaque = 0;
    +[SDSuggestionBrowser initializeCache];
  }

  return v2;
}

- (id)_createShareSheetContext
{
  v2 = share_sheet_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "creating new share sheet context", v7, 2u);
  }

  v8[0] = kCAContextIgnoresHitTest;
  v8[1] = kCAContextEnablePixelDoubling;
  v8[2] = kCAContextEnablePixelQuadrupling;
  v8[3] = kCAContextDisplayable;
  v9[2] = kCFBooleanTrue;
  v9[3] = kCFBooleanFalse;
  v9[0] = kCFBooleanTrue;
  v9[1] = kCFBooleanTrue;
  v8[4] = kCAContextDisableGroupOpacity;
  v9[4] = kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:5];
  v4 = [CAContext remoteContextWithOptions:v3];
  if (([v4 valid] & 1) == 0)
  {
    v5 = share_sheet_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1001B1DF4();
    }
  }

  return v4;
}

- (id)getShareSheetSessionForSessionID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession objectForKeyedSubscript:dCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)currentConnection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->__currentConnection;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setCurrentConnection:(id)connection
{
  connectionCopy = connection;
  obj = self;
  objc_sync_enter(obj);
  currentConnection = obj->__currentConnection;
  obj->__currentConnection = connectionCopy;

  objc_sync_exit(obj);
}

- (id)activeConnections
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSSet *)selfCopy->__activeConnections copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setActiveConnections:(id)connections
{
  connectionsCopy = connections;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [connectionsCopy copy];
  activeConnections = selfCopy->__activeConnections;
  selfCopy->__activeConnections = v5;

  objc_sync_exit(selfCopy);
}

- (void)transferUpdated:(id)updated
{
  updatedCopy = updated;
  userInfo = [updatedCopy userInfo];
  v6 = userInfo;
  if (userInfo)
  {
    v7 = [userInfo objectForKeyedSubscript:@"SessionID"];
    if (v7)
    {
      v8 = [v6 objectForKeyedSubscript:@"RealName"];
      if (v8)
      {
        userInfo2 = [updatedCopy userInfo];
        v10 = [userInfo2 objectForKeyedSubscript:@"TransferText"];
        integerValue = [v10 integerValue];

        v12 = [v6 objectForKeyedSubscript:@"TransferProgress"];
        v13 = v12;
        if (v12)
        {
          [v12 floatValue];
          v15 = v14;
        }

        else
        {
          v15 = 0.0;
        }

        [(SDShareSheetSlotManager *)self sendAirDropUpdateForSessionWithID:v7 realName:v8 status:integerValue progress:v15];
      }

      else
      {
        v16 = share_sheet_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          sub_1001B1E30();
        }
      }
    }

    else
    {
      v8 = share_sheet_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_1001B1E98();
      }
    }
  }

  else
  {
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1001B1F00();
    }
  }
}

- (void)handleAirDropTransferUpdated:(id)updated
{
  updatedCopy = updated;
  sessionID = [updatedCopy sessionID];
  realName = [updatedCopy realName];
  state = [updatedCopy state];
  [updatedCopy progress];
  v8 = v7;

  [(SDShareSheetSlotManager *)self sendAirDropUpdateForSessionWithID:sessionID realName:realName status:state progress:v8];
}

- (void)sendAirDropUpdateForSessionWithID:(id)d realName:(id)name status:(int64_t)status progress:(double)progress
{
  dCopy = d;
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = [(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession objectForKeyedSubscript:dCopy];
  v14 = v13;
  if (v13)
  {
    airDropController = [v13 airDropController];
    hasActiveNearbySharingInteraction = [airDropController hasActiveNearbySharingInteraction];

    transferNodes = [v14 transferNodes];
    v18 = [transferNodes objectForKeyedSubscript:nameCopy];

    if (v18)
    {
      v19 = 1;
    }

    else
    {
      v19 = hasActiveNearbySharingInteraction;
    }

    if ((v19 & 1) == 0)
    {
      v25 = share_sheet_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        sub_1001B1F68();
      }

      goto LABEL_40;
    }

    hostConfiguration = [v14 hostConfiguration];
    v58 = [SDShareSheetSession labelColorWithHostConfiguration:hostConfiguration];

    hostConfiguration2 = [v14 hostConfiguration];
    v56 = [SDShareSheetSession secondaryLabelColorWithHostConfiguration:hostConfiguration2];

    hostConfiguration3 = [v14 hostConfiguration];
    hostLocale = [hostConfiguration3 hostLocale];
    v57 = [v18 displayNameForLocale:hostLocale];

    v24 = [v14 lastTransferEvent] != 3 && objc_msgSend(v14, "lastTransferEvent") != 11;
    [v14 setLastTransferEvent:status];
    if ((status & 0xFFFFFFFFFFFFFFF7) == 3 && !v24)
    {
      v25 = &stru_1008EFBD0;
LABEL_39:

LABEL_40:
      goto LABEL_41;
    }

    if (status == 15)
    {
      v25 = SFLocalizedStringForKey();
      v26 = v56;

      v54 = @"Converting";
      v27 = 1;
LABEL_25:
      v55 = v27;
      v58 = v26;
      goto LABEL_26;
    }

    if ((status & 0xFFFFFFFFFFFFFFF7) == 3)
    {
      v25 = SFLocalizedStringForKey();
      v26 = v56;

      v54 = @"Waiting";
      v27 = 2;
      goto LABEL_25;
    }

    v25 = &stru_1008EFBD0;
    if (status > 8)
    {
      if (status == 9)
      {
        notificationHaptic = [v14 notificationHaptic];
        v61[0] = _NSConcreteStackBlock;
        v61[1] = 3221225472;
        v61[2] = sub_10019C9E8;
        v61[3] = &unk_1008CDEA0;
        v61[4] = notificationHaptic;
        dispatch_async(&_dispatch_main_q, v61);
        v25 = SFLocalizedStringForKey();
        v44 = +[UIColor systemBlueColor];

        transferNodes2 = [v14 transferNodes];
        [transferNodes2 removeObjectForKey:nameCopy];

        [v14 setFiredImpactHaptic:0];
        [v14 setTransferActive:0];

        v54 = @"Sent";
        v46 = 4;
      }

      else
      {
        if (status != 10)
        {
LABEL_47:
          v54 = &stru_1008EFBD0;
          v55 = 0;
          goto LABEL_26;
        }

        notificationHaptic2 = [v14 notificationHaptic];
        v59[0] = _NSConcreteStackBlock;
        v59[1] = 3221225472;
        v59[2] = sub_10019CA00;
        v59[3] = &unk_1008CDEA0;
        v59[4] = notificationHaptic2;
        dispatch_async(&_dispatch_main_q, v59);
        v25 = SFLocalizedStringForKey();
        v44 = +[UIColor systemRedColor];

        transferNodes3 = [v14 transferNodes];
        [transferNodes3 removeObjectForKey:nameCopy];

        [v14 setFiredImpactHaptic:0];
        [v14 setTransferActive:0];

        v54 = @"Failed";
        v46 = 6;
      }
    }

    else
    {
      if (status != 4)
      {
        if (status == 7)
        {
          if (([v14 firedImpactHaptic] & 1) == 0)
          {
            impactHaptic = [v14 impactHaptic];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10019C9E0;
            block[3] = &unk_1008CDEA0;
            block[4] = impactHaptic;
            dispatch_async(&_dispatch_main_q, block);
            [v14 setFiredImpactHaptic:1];
          }

          v25 = SFLocalizedStringForKey();
          v26 = v56;

          v54 = @"Sending";
          v27 = 3;
          goto LABEL_25;
        }

        goto LABEL_47;
      }

      notificationHaptic3 = [v14 notificationHaptic];
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_10019C9F4;
      v60[3] = &unk_1008CDEA0;
      v60[4] = notificationHaptic3;
      dispatch_async(&_dispatch_main_q, v60);
      v25 = SFLocalizedStringForKey();
      v44 = +[UIColor systemRedColor];

      transferNodes4 = [v14 transferNodes];
      [transferNodes4 removeObjectForKey:nameCopy];

      [v14 setFiredImpactHaptic:0];
      [v14 setTransferActive:0];

      v54 = @"Declined";
      v46 = 5;
    }

    v55 = v46;
    v58 = v44;
LABEL_26:
    if (hasActiveNearbySharingInteraction)
    {
      v29 = 0;
      v30 = 0;
    }

    else if ([v14 skipSlotsRendering])
    {
      v30 = [[SFProxyText alloc] initWithText:v57];
      v29 = [[SFProxyText alloc] initWithText:v25];
    }

    else
    {
      xpcHelperCnx = [v14 xpcHelperCnx];
      if (!xpcHelperCnx)
      {
        v30 = share_sheet_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          sub_1001B1FD0();
        }

        goto LABEL_38;
      }

      v52 = xpcHelperCnx;
      hostConfiguration4 = [v14 hostConfiguration];
      v51 = [SDShareSheetSession labelColorWithHostConfiguration:hostConfiguration4];

      +[CATransaction begin];
      memset(buf, 0, sizeof(buf));
      hostConfiguration5 = [v14 hostConfiguration];
      [(SDShareSheetSlotManager *)selfCopy _createNameLabelSlotWithString:v57 textColor:v51 maximumNumberOfLines:1 isAirDrop:1 ignoreNameWrapping:0 sessionConnection:v52 hostConfig:hostConfiguration5];

      hostConfiguration6 = [v14 hostConfiguration];
      [(SDShareSheetSlotManager *)selfCopy _createNameLabelSlotWithString:v25 textColor:v58 maximumNumberOfLines:1 isAirDrop:1 ignoreNameWrapping:1 sessionConnection:v52 hostConfig:hostConfiguration6];

      v53 = +[NSMutableDictionary dictionary];
      v35 = [NSNumber numberWithUnsignedInt:*buf];
      [v53 setObject:v57 forKeyedSubscript:v35];

      v36 = [NSNumber numberWithUnsignedInt:0];
      [v53 setObject:v25 forKeyedSubscript:v36];

      accessibilityCache = [(SDShareSheetSlotManager *)selfCopy accessibilityCache];
      [accessibilityCache addEntriesFromDictionary:v53];

      +[CATransaction commit];
      +[CATransaction flush];
      v38 = [SFProxyText alloc];
      v30 = [v38 initWithSlotIdentifier:*buf];
      v29 = [[SFProxyText alloc] initWithSlotIdentifier:0];
    }

    v39 = share_sheet_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v57;
      *&buf[12] = 2112;
      *&buf[14] = v54;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Set status for %@ to %@", buf, 0x16u);
    }

    if (hasActiveNearbySharingInteraction)
    {
      v40 = 0;
    }

    else
    {
      realNameToNodeID = [v14 realNameToNodeID];
      v40 = [realNameToNodeID objectForKeyedSubscript:nameCopy];
    }

    v42 = [[SFAirDropTransferChange alloc] initWithState:v55 progress:v40 proxyIdentifier:v30 displayName:v29 status:progress];
    [(SDShareSheetSlotManager *)selfCopy notifySession:v14 withAirDropTransferChange:v42];

LABEL_38:
    goto LABEL_39;
  }

  v18 = share_sheet_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_1001B2038();
  }

LABEL_41:

  objc_sync_exit(selfCopy);
}

- (void)activate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_activateCalled)
  {
    v3 = daemon_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1001B20AC();
    }
  }

  else
  {
    v4 = daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      machServiceName = [(SDShareSheetSlotManager *)selfCopy machServiceName];
      v10 = 138412290;
      v11 = machServiceName;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Activating %@", &v10, 0xCu);
    }

    selfCopy->_activateCalled = 1;
    v6 = [NSXPCListener alloc];
    machServiceName2 = [(SDShareSheetSlotManager *)selfCopy machServiceName];
    v8 = [v6 initWithMachServiceName:machServiceName2];
    xpcListener = selfCopy->_xpcListener;
    selfCopy->_xpcListener = v8;

    [(NSXPCListener *)selfCopy->_xpcListener setDelegate:selfCopy];
    [(NSXPCListener *)selfCopy->_xpcListener resume];
    +[_UIActivityHelper registerContinuousExtensionsDiscoveryOnLaunch];
  }

  objc_sync_exit(selfCopy);
}

- (void)invalidate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_invalidateCalled)
  {
    selfCopy->_invalidateCalled = 1;
    [(NSXPCListener *)selfCopy->_xpcListener invalidate];
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    activeConnections = [(SDShareSheetSlotManager *)selfCopy activeConnections];
    v4 = [activeConnections countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v4)
    {
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(activeConnections);
          }

          [*(*(&v7 + 1) + 8 * v6) invalidate];
          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [activeConnections countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }

    selfCopy->_invalidateDone = 1;
  }

  objc_sync_exit(selfCopy);
}

- (id)_remoteObjectProxyForConnection:(id)connection
{
  connectionCopy = connection;
  objc_initWeak(&location, connectionCopy);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10019CDD8;
  v6[3] = &unk_1008D2B80;
  objc_copyWeak(&v7, &location);
  v4 = [connectionCopy synchronousRemoteObjectProxyWithErrorHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

- (id)configurationForDataSourceUpdateWithSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([sessionCopy sharingExpanded])
  {
    peopleNodes = [sessionCopy peopleNodes];
    v7 = [peopleNodes count];

    if (v7)
    {
      v8 = objc_opt_new();
      hostConfiguration = [sessionCopy hostConfiguration];
      isCollaborative = [hostConfiguration isCollaborative];

      if ((isCollaborative & 1) == 0)
      {
        airDropNodes = [sessionCopy airDropNodes];
        [v8 addObjectsFromArray:airDropNodes];
      }

      peopleNodes2 = [sessionCopy peopleNodes];
      [v8 addObjectsFromArray:peopleNodes2];

      v13 = [NSPredicate predicateWithFormat:@"isRestricted == NO"];
      v14 = [v8 filteredArrayUsingPredicate:v13];
    }

    else
    {
      v14 = 0;
    }

    hostShareActivityProxies = [sessionCopy hostShareActivityProxies];
    v17 = [NSPredicate predicateWithFormat:@"isRestricted == NO"];
    v15 = [hostShareActivityProxies filteredArrayUsingPredicate:v17];
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v18 = objc_alloc_init(UISDShareSheetSessionConfiguration);
  [(UISDShareSheetSessionConfiguration *)v18 setPeopleProxies:v14];
  [(UISDShareSheetSessionConfiguration *)v18 setShareProxies:v15];
  hostActionActivityProxies = [sessionCopy hostActionActivityProxies];
  [(UISDShareSheetSessionConfiguration *)v18 setActionProxies:hostActionActivityProxies];

  nearbyCountSlotID = [sessionCopy nearbyCountSlotID];
  [(UISDShareSheetSessionConfiguration *)v18 setNearbyCountSlotID:nearbyCountSlotID];

  v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [sessionCopy nearbyCountBadge]);
  [(UISDShareSheetSessionConfiguration *)v18 setNearbyCountBadge:v21];

  hostConfiguration2 = [sessionCopy hostConfiguration];
  if ([hostConfiguration2 requestPeopleSuggestionsData])
  {
    hideSuggestions = [sessionCopy hideSuggestions];

    if ((hideSuggestions & 1) == 0)
    {
      connection = [sessionCopy connection];
      v25 = [connection valueForEntitlement:@"com.apple.sharesheet.allow-suggestions"];

      if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v25 BOOLValue])
      {
        suggestionBrowser = [sessionCopy suggestionBrowser];
        peopleSuggestions = [suggestionBrowser peopleSuggestions];
        [(UISDShareSheetSessionConfiguration *)v18 setPeopleSuggestions:peopleSuggestions];
      }

      else
      {
        v28 = share_sheet_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          connection2 = [sessionCopy connection];
          v36[0] = 67109120;
          v36[1] = [connection2 processIdentifier];
          _os_log_fault_impl(&_mh_execute_header, v28, OS_LOG_TYPE_FAULT, "process %d tried to request people suggestions data, but it was not entitled!", v36, 8u);
        }
      }
    }
  }

  else
  {
  }

  screenTimeMonitor = [sessionCopy screenTimeMonitor];
  restrictedActivityTypes = [screenTimeMonitor restrictedActivityTypes];

  connection3 = [sessionCopy connection];
  v32 = [(SDShareSheetSlotManager *)selfCopy _hasCollaborationEntitlementForConnection:connection3];

  if ((v32 & 1) == 0)
  {
    v33 = [restrictedActivityTypes arrayByAddingObject:@"com.apple.Collaboration.Internal"];

    restrictedActivityTypes = v33;
  }

  [(UISDShareSheetSessionConfiguration *)v18 setRestrictedActivityTypes:restrictedActivityTypes];
  [(UISDShareSheetSessionConfiguration *)v18 setShouldBlockPresentation:[(SDShareSheetSlotManager *)selfCopy wantsToBlockPresentation]];

  objc_sync_exit(selfCopy);

  return v18;
}

- (BOOL)_hasCollaborationEntitlementForConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [connectionCopy valueForEntitlement:@"com.apple.developer.shared-with-you.collaboration"];
  v5 = [connectionCopy valueForEntitlement:@"com.apple.developer.shared-with-you"];
  v6 = [connectionCopy valueForEntitlement:@"com.apple.private.sociallayer.highlights"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v4 BOOLValue] ^ 1;
  }

  else
  {
    v7 = 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    bOOLValue2 = 0;
    if (!v7)
    {
      goto LABEL_9;
    }

LABEL_11:
    v10 = bOOLValue | bOOLValue2;
    goto LABEL_12;
  }

  bOOLValue2 = [v6 BOOLValue];
  if (v7)
  {
    goto LABEL_11;
  }

LABEL_9:
  v10 = 1;
LABEL_12:

  return v10 & 1;
}

- (void)notifySession:(id)session favoritesProxies:(id)proxies suggestionProxies:(id)suggestionProxies activityCategory:(int64_t)category updatingView:(BOOL)view
{
  viewCopy = view;
  sessionCopy = session;
  proxiesCopy = proxies;
  suggestionProxiesCopy = suggestionProxies;
  if ([sessionCopy remoteShareSheet])
  {
    [sessionCopy uiServiceConnection];
  }

  else
  {
    [sessionCopy connection];
  }
  v14 = ;
  v15 = [(SDShareSheetSlotManager *)self _remoteObjectProxyForConnection:v14];
  if (viewCopy)
  {
    if (category == 1)
    {
      [sessionCopy shareActivities];
    }

    else
    {
      [sessionCopy actionActivities];
    }
    shareActivities = ;
    v18 = [shareActivities valueForKey:@"activityUUID"];
    [v15 updateUserDefaultsWithFavoritesProxies:proxiesCopy suggestionProxies:suggestionProxiesCopy orderedUUIDs:v18];
  }

  else
  {
    v16 = [NSNumber numberWithInteger:category];
    [sessionCopy setUserDefaultsActivityCategory:v16];

    if (category == 1)
    {
      shareActivities = [sessionCopy shareActivities];
      v18 = [shareActivities valueForKey:@"activityUUID"];
      v19 = v15;
      v20 = proxiesCopy;
      v21 = suggestionProxiesCopy;
      v22 = v18;
      categoryCopy = 1;
    }

    else
    {
      shareActivities = [sessionCopy actionActivities];
      v18 = [shareActivities valueForKey:@"activityUUID"];
      v19 = v15;
      v20 = proxiesCopy;
      v21 = suggestionProxiesCopy;
      v22 = v18;
      categoryCopy = category;
    }

    [v19 performUserDefaultsWithFavoritesProxies:v20 suggestionProxies:v21 orderedUUIDs:v22 activityCategory:categoryCopy];
  }
}

- (void)notifySession:(id)session activitySelected:(id)selected
{
  sessionCopy = session;
  selectedCopy = selected;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connection = [sessionCopy connection];
  v9 = [(SDShareSheetSlotManager *)selfCopy _remoteObjectProxyForConnection:connection];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    activityUUID = [selectedCopy activityUUID];
    [v9 performActivityInHostWithUUID:activityUUID];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    activityUUID = selectedCopy;
    v11 = +[MCProfileConnection sharedConnection];
    hostAppBundleID = [sessionCopy hostAppBundleID];
    v13 = [v11 isAppManaged:hostAppBundleID];

    hostConfiguration = [sessionCopy hostConfiguration];
    LOBYTE(hostAppBundleID) = [hostConfiguration isContentManaged];

    mayOpenFromManagedToUnmanaged = [v11 mayOpenFromManagedToUnmanaged];
    activityType = [activityUUID activityType];
    v17 = [UISUIActivityExtensionItemDataRequest requestForActivity:activityUUID activityType:activityType sourceAppIsManaged:(v13 | hostAppBundleID) & ~mayOpenFromManagedToUnmanaged & 1];

    applicationExtension = [activityUUID applicationExtension];
    identifier = [applicationExtension identifier];
    [v9 performExtensionActivityInHostWithBundleID:identifier request:v17];
  }

LABEL_6:
  objc_sync_exit(selfCopy);
}

- (void)notifySession:(id)session shortcutSelectedWithBundleID:(id)d singleUseToken:(id)token
{
  sessionCopy = session;
  dCopy = d;
  tokenCopy = token;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connection = [sessionCopy connection];
  v12 = [(SDShareSheetSlotManager *)selfCopy _remoteObjectProxyForConnection:connection];

  [v12 performShortcutActivityInHostWithBundleID:dCopy singleUseToken:tokenCopy];
  objc_sync_exit(selfCopy);
}

- (void)notifySession:(id)session personSelectedWithActivityType:(id)type
{
  sessionCopy = session;
  typeCopy = type;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connection = [sessionCopy connection];
  v10 = [(SDShareSheetSlotManager *)selfCopy _remoteObjectProxyForConnection:connection];

  v11 = [(SDShareSheetSlotManager *)selfCopy _activityWithActivityType:typeCopy session:sessionCopy];
  v12 = v11;
  if (v11)
  {
    activityUUID = [v11 activityUUID];
    [v10 performActivityInHostWithUUID:activityUUID];
  }

  else
  {
    activityUUID = share_sheet_log();
    if (os_log_type_enabled(activityUUID, OS_LOG_TYPE_ERROR))
    {
      sub_1001B220C();
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)notifySession:(id)session withAirDropTransferChange:(id)change
{
  sessionCopy = session;
  changeCopy = change;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connection = [sessionCopy connection];
  v9 = [(SDShareSheetSlotManager *)selfCopy _remoteObjectProxyForConnection:connection];

  [v9 didUpdateAirDropTransferWithChange:changeCopy];
  objc_sync_exit(selfCopy);
}

- (void)requestAirDropItemsForNode:(id)node endpointUUID:(id)d session:(id)session
{
  nodeCopy = node;
  dCopy = d;
  sessionCopy = session;
  if (nodeCopy)
  {
    endpointUUID = [nodeCopy endpointUUID];
    v13 = dCopy;
    v14 = endpointUUID;
    v15 = v14;
    if (v14 == v13)
    {

LABEL_7:
      goto LABEL_8;
    }

    if ((v13 != 0) == (v14 == 0))
    {

LABEL_10:
      v15 = +[NSAssertionHandler currentHandler];
      endpointUUID2 = [nodeCopy endpointUUID];
      [v15 handleFailureInMethod:a2 object:self file:@"SDShareSheetSlotManager.m" lineNumber:1948 description:{@"endpointUUID:%@ mismatching node.endpointUUID:%@", v13, endpointUUID2}];
      v13 = endpointUUID2;
      goto LABEL_7;
    }

    v16 = [v13 isEqual:v14];

    if ((v16 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

LABEL_8:
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v18 = objc_alloc_init(SDAirDropActivity);
  hostAppBundleID = [sessionCopy hostAppBundleID];
  [(SDAirDropActivity *)v18 setSendingAppBundleID:hostAppBundleID];

  [(SDAirDropActivity *)v18 setMaxPreviews:3];
  [sessionCopy setActiveAirDropActivity:v18];
  v20 = [UISUIActivityExtensionItemDataRequest requestForActivity:v18 activityType:UIActivityTypeAirDrop activitySpecificMetadata:0];
  objc_sync_exit(selfCopy);

  connection = [sessionCopy connection];
  v22 = [(SDShareSheetSlotManager *)selfCopy _remoteObjectProxyForConnection:connection];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10019E10C;
  v28[3] = &unk_1008D2BD0;
  v29 = v18;
  v30 = sessionCopy;
  v31 = dCopy;
  v32 = nodeCopy;
  v23 = nodeCopy;
  v24 = dCopy;
  v25 = sessionCopy;
  v26 = v18;
  [v22 willPerformInServiceActivityWithRequest:v20 completion:v28];
}

- (void)connectToDaemonWithContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v7 = [[SHSheetRemoteConnectionContext alloc] initWithDictionary:contextCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sessionIdentifier = [(SHSheetRemoteConnectionContext *)v7 sessionIdentifier];
  v10 = [SDShareSheetSession alloc];
  currentConnection = [(SDShareSheetSlotManager *)selfCopy currentConnection];
  instantShareSheet = [(SHSheetRemoteConnectionContext *)v7 instantShareSheet];
  v13 = [(SDShareSheetSession *)v10 initWithSessionID:sessionIdentifier xpcConnection:currentConnection instantShareSheet:instantShareSheet remoteShareSheet:[(SHSheetRemoteConnectionContext *)v7 remoteShareSheet] xrRenderingMode:[(SHSheetRemoteConnectionContext *)v7 xrRenderingMode]];

  [(SDShareSheetSession *)v13 setDelegate:selfCopy];
  [(SHSheetRemoteConnectionContext *)v7 peopleSuggestionsTimeout];
  [(SDShareSheetSession *)v13 setPeopleSuggestionsTimeout:?];
  [(SDShareSheetSession *)v13 setShouldSuggestFamilyMembers:[(SHSheetRemoteConnectionContext *)v7 shouldSuggestFamilyMembers]];
  [(SDShareSheetSession *)v13 setHideSuggestions:[(SHSheetRemoteConnectionContext *)v7 hideSuggestions]];
  [(SDShareSheetSession *)v13 setIsSharePlayAvailable:[(SHSheetRemoteConnectionContext *)v7 isSharePlayAvailable]];
  supportsCollaboration = [(SHSheetRemoteConnectionContext *)v7 supportsCollaboration];
  if (supportsCollaboration)
  {
    instantShareSheet = [(SDShareSheetSession *)v13 connection];
    v15 = [(SDShareSheetSlotManager *)selfCopy _hasCollaborationEntitlementForConnection:instantShareSheet];
  }

  else
  {
    v15 = 0;
  }

  [(SDShareSheetSession *)v13 setSupportsCollaboration:v15];
  if (supportsCollaboration)
  {
  }

  peopleSuggestionBundleIds = [(SHSheetRemoteConnectionContext *)v7 peopleSuggestionBundleIds];
  v17 = [peopleSuggestionBundleIds copy];
  [(SDShareSheetSession *)v13 setPeopleSuggestionBundleIds:v17];

  processedImageResultsData = [(SHSheetRemoteConnectionContext *)v7 processedImageResultsData];
  [(SDShareSheetSession *)v13 setProcessedImageResultsData:processedImageResultsData];

  urlsBeingShared = [(SHSheetRemoteConnectionContext *)v7 urlsBeingShared];
  v20 = [urlsBeingShared count];

  if (v20)
  {
    urlsBeingShared2 = [(SHSheetRemoteConnectionContext *)v7 urlsBeingShared];
    firstObject = [urlsBeingShared2 firstObject];
    [(SDShareSheetSession *)v13 setUrlBeingShared:firstObject];
  }

  if ([(SDShareSheetSession *)v13 skipSlotsRendering])
  {
    v23 = share_sheet_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "skipping slots image rendering.", buf, 2u);
    }
  }

  else
  {
    v24 = share_sheet_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "setting-up SharingXPCHelper connection for slots image rendering.", buf, 2u);
    }

    v23 = [(SDShareSheetSession *)v13 description];
    v25 = [[SDXPCHelperConnection alloc] initWithQueue:0 xrRenderingMode:[(SDShareSheetSession *)v13 xrRenderingMode]];
    [(SDShareSheetSession *)v13 setXpcHelperCnx:v25];

    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_10019EA00;
    v58[3] = &unk_1008CDEA0;
    v58[4] = v23;
    xpcHelperCnx = [(SDShareSheetSession *)v13 xpcHelperCnx];
    [xpcHelperCnx setInvalidationHandler:v58];

    xpcHelperCnx2 = [(SDShareSheetSession *)v13 xpcHelperCnx];
    [xpcHelperCnx2 activate];

    if (+[_TtC16DaemoniOSLibrary21SDXPCHelperImageCache cacheIsEmpty])
    {
      v28 = [(SDShareSheetSession *)v13 description];
      v29 = [NSString stringWithFormat:@"%@, cacheEmpty: %s", v28, "yes"];

      xpcHelperCnx3 = [(SDShareSheetSession *)v13 xpcHelperCnx];
      [xpcHelperCnx3 setSessionKeepAliveTransactionIdentifier:v29];
    }

    xpcHelperCnx4 = [(SDShareSheetSession *)v13 xpcHelperCnx];
    airDropController = [(SDShareSheetSession *)v13 airDropController];
    [airDropController setHelperConnection:xpcHelperCnx4];
  }

  objc_initWeak(buf, selfCopy);
  objc_initWeak(&location, v13);
  v33 = [_UIActivityHelper alloc];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_10019EA4C;
  v52[3] = &unk_1008D2BF8;
  v52[4] = selfCopy;
  objc_copyWeak(&v54, buf);
  v34 = v7;
  v53 = v34;
  objc_copyWeak(&v55, &location);
  v35 = [v33 initWithDelegate:selfCopy sessionID:sessionIdentifier fetchShortcutsBlock:v52];
  [(SDShareSheetSession *)v13 setActivityHelper:v35];

  [(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession setObject:v13 forKeyedSubscript:sessionIdentifier];
  discoveryContext = [(SHSheetRemoteConnectionContext *)v34 discoveryContext];
  if (discoveryContext)
  {
    activityHelper = [(SDShareSheetSession *)v13 activityHelper];
    [activityHelper primeWithDiscoveryContext:discoveryContext];

    activityItemValueExtensionMatchingDictionaries = [discoveryContext activityItemValueExtensionMatchingDictionaries];
    assetIdentifiers = [(SHSheetRemoteConnectionContext *)v34 assetIdentifiers];
    urlsBeingShared3 = [(SHSheetRemoteConnectionContext *)v34 urlsBeingShared];
    sandboxExtensionsByfileURLPath = [(SHSheetRemoteConnectionContext *)v34 sandboxExtensionsByfileURLPath];
    [(SDShareSheetSlotManager *)selfCopy activateSuggestionBrowserForSession:v13 withExtensionMatchingDictionaries:activityItemValueExtensionMatchingDictionaries assetIdentifiers:assetIdentifiers urlsBeingShared:urlsBeingShared3 sandboxExtensionsByfileURLPath:sandboxExtensionsByfileURLPath];
  }

  peopleBrowser = [(SDShareSheetSession *)v13 peopleBrowser];
  [peopleBrowser setDiffableDelegate:selfCopy];

  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_10019EC10;
  v50[3] = &unk_1008D2C20;
  objc_copyWeak(&v51, buf);
  airDropController2 = [(SDShareSheetSession *)v13 airDropController];
  [airDropController2 setTransferUpdateChangedHandler:v50];

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10019EC6C;
  v47[3] = &unk_1008D29A8;
  objc_copyWeak(&v49, buf);
  v44 = sessionIdentifier;
  v48 = v44;
  airDropController3 = [(SDShareSheetSession *)v13 airDropController];
  [airDropController3 setAvailableNodesChangedHandler:v47];

  [(SDShareSheetSession *)v13 activate];
  objc_destroyWeak(&v49);
  objc_destroyWeak(&v51);

  objc_destroyWeak(&v55);
  objc_destroyWeak(&v54);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  objc_sync_exit(selfCopy);
  handlerCopy[2](handlerCopy);
}

- (void)connectUIServiceToDaemonWithSessionID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession objectForKeyedSubscript:dCopy];
  if (v6)
  {
    currentConnection = [(SDShareSheetSlotManager *)selfCopy currentConnection];
    [v6 setUiServiceConnection:currentConnection];

    if ([v6 sentInitialConfiguration])
    {
      [(SDShareSheetSlotManager *)selfCopy dataSourceDidUpdateForSession:v6 animated:0];
    }
  }

  else
  {
    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1001B2364();
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)_fetchShortcutWorkflowsForMatchingDictionaries:(id)dictionaries resolvedActivityItems:(id)items hostBundleID:(id)d iconSize:(CGSize)size iconScale:(double)scale error:(id *)error
{
  height = size.height;
  width = size.width;
  dCopy = d;
  itemsCopy = items;
  dictionariesCopy = dictionaries;
  v18 = share_sheet_log();
  v19 = share_sheet_log();
  v20 = os_signpost_id_make_with_pointer(v19, self);

  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, v20, "FetchShortcuts", " enableTelemetry=YES ", buf, 2u);
  }

  v21 = +[VCVoiceShortcutClient standardClient];
  v22 = [v21 shareSheetWorkflowsForExtensionMatchingDictionaries:dictionariesCopy resolvedActivityItems:itemsCopy hostBundleIdentifier:dCopy iconSize:error iconScale:width error:{height, scale}];

  v23 = share_sheet_log();
  v24 = share_sheet_log();
  v25 = os_signpost_id_make_with_pointer(v24, self);

  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *v27 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_END, v25, "FetchShortcuts", " enableTelemetry=YES ", v27, 2u);
  }

  return v22;
}

- (id)_shortcutActivitiesForMatchingDictionaries:(id)dictionaries resolvedActivityItems:(id)items hostBundleID:(id)d configuration:(id)configuration
{
  configurationCopy = configuration;
  dCopy = d;
  itemsCopy = items;
  dictionariesCopy = dictionaries;
  [configurationCopy iconSize];
  v15 = v14;
  v17 = v16;
  [configurationCopy iconScale];
  v19 = v18;

  v35 = 0;
  v20 = [(SDShareSheetSlotManager *)self _fetchShortcutWorkflowsForMatchingDictionaries:dictionariesCopy resolvedActivityItems:itemsCopy hostBundleID:dCopy iconSize:&v35 iconScale:v15 error:v17, v19];

  v21 = v35;
  v22 = share_sheet_log();
  v23 = share_sheet_log();
  v24 = os_signpost_id_make_with_pointer(v23, self);

  if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, v24, "FetchShortcuts", " enableTelemetry=YES ", buf, 2u);
  }

  if (!v20 && v21)
  {
    v25 = share_sheet_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      sub_1001B23CC();
    }
  }

  [NSExtension extensionWithIdentifier:@"com.apple.shortcuts.Run-Workflow" error:0];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10019F1E8;
  v32 = v31[3] = &unk_1008D2C48;
  v26 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v20, "count")}];
  v33 = v26;
  v27 = v32;
  [v20 enumerateObjectsUsingBlock:v31];
  v28 = v33;
  v29 = v26;

  return v26;
}

- (void)_configureSharingSectionsForSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  hostConfiguration = [sessionCopy hostConfiguration];
  if (hostConfiguration)
  {
    v7 = [_UIActivityUserDefaults alloc];
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v7 initWithUnderlyingUserDefaults:v8 activityDefaultsKey:@"UIActivityCategoryShare"];
    [(SDShareSheetSlotManager *)selfCopy setShareUserDefaults:v9];

    orderedPresentableActivities = [sessionCopy orderedPresentableActivities];
    v11 = sub_10019F970(orderedPresentableActivities, 1);

    [sessionCopy setShareActivities:v11];
    v12 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v11 count] + 1);
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v14)
    {
      v15 = *v55;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v55 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v54 + 1) + 8 * i);
          activityUUID = [v17 activityUUID];
          [v12 setObject:v17 forKeyedSubscript:activityUUID];
        }

        v14 = [v13 countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v14);
    }

    [sessionCopy setShareActivitiesByUUID:v12];
    if (_os_feature_enabled_impl())
    {
      v19 = [SDShareSheetSlotManager _groupActivitiesByBundleID:v13];
      [sessionCopy setBundleIDToActivities:v19];

      bundleIDToActivities = [sessionCopy bundleIDToActivities];
      v21 = [(SDShareSheetSlotManager *)selfCopy _removeSecondaryActivities:v13 bundleIDToActivities:bundleIDToActivities];

      v13 = v21;
    }

    shareUserDefaults = [(SDShareSheetSlotManager *)selfCopy shareUserDefaults];
    if (shareUserDefaults)
    {
      v23 = [v13 count]== 0;

      if (!v23)
      {
        shareUserDefaults2 = [(SDShareSheetSlotManager *)selfCopy shareUserDefaults];
        v25 = [shareUserDefaults2 activitiesOrderedByUserActivityOrderForActivities:v13];

        [sessionCopy setShareActivitiesInUserOrder:v25];
        v26 = share_sheet_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Discovered Share Activities:", &buf, 2u);
        }

        v53[0] = _NSConcreteStackBlock;
        v53[1] = 3221225472;
        v53[2] = sub_10019FA40;
        v53[3] = &unk_1008D2C70;
        v53[4] = selfCopy;
        v27 = [NSPredicate predicateWithBlock:v53];
        v28 = [v25 filteredArrayUsingPredicate:v27];

        if (_os_feature_enabled_impl())
        {
          urlsBeingShared = [hostConfiguration urlsBeingShared];
          firstObject = [urlsBeingShared firstObject];
          [sessionCopy setUrlBeingShared:firstObject];

          urlBeingShared = [sessionCopy urlBeingShared];
          v32 = [(SDShareSheetSlotManager *)selfCopy _moveDefaultApplicationToFrontForURL:urlBeingShared activities:v28];

          v28 = v32;
        }

        v33 = [v28 count];
        shareUserDefaults3 = [(SDShareSheetSlotManager *)selfCopy shareUserDefaults];
        activityIdentifiersInUserOrder = [shareUserDefaults3 activityIdentifiersInUserOrder];
        v36 = [activityIdentifiersInUserOrder count];

        v37 = 12;
        if (v36 > 0xC)
        {
          v37 = v36;
        }

        if (v33 >= v37)
        {
          v38 = v37;
        }

        else
        {
          v38 = v33;
        }

        v39 = [v28 subarrayWithRange:{0, v38}];

        v40 = [_UIUserDefaultsActivity alloc];
        shareUserDefaults4 = [(SDShareSheetSlotManager *)selfCopy shareUserDefaults];
        v42 = [(_UIUserDefaultsActivity *)v40 initWithUserDefaults:shareUserDefaults4 activityCategory:1];

        v13 = [v39 arrayByAddingObject:v42];

        activityUUID2 = [(_UIUserDefaultsActivity *)v42 activityUUID];
        [v12 setObject:v42 forKeyedSubscript:activityUUID2];

        [sessionCopy setShareUserDefaultsActivity:v42];
      }
    }

    [sessionCopy setVisibleShareActivities:v13];
    objc_initWeak(&buf, sessionCopy);
    v46 = _NSConcreteStackBlock;
    v47 = 3221225472;
    v48 = sub_10019FB40;
    v49 = &unk_1008CDF68;
    v50 = selfCopy;
    objc_copyWeak(&v51, &buf);
    [sessionCopy setDisabledNodesUpdatedHandler:&v46];
    visibleShareActivities = [sessionCopy visibleShareActivities];
    v45 = [(SDShareSheetSlotManager *)selfCopy _createShareProxiesFromActivities:visibleShareActivities session:sessionCopy];

    [(SDShareSheetSlotManager *)selfCopy _configurePeopleSuggestionsSectionForSession:sessionCopy];
    [sessionCopy setHostShareActivityProxies:v45];

    objc_destroyWeak(&v51);
    objc_destroyWeak(&buf);
  }

  else
  {
    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1001B2434();
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)_configurePeopleSuggestionsSectionForSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  hostConfiguration = [sessionCopy hostConfiguration];
  v7 = hostConfiguration;
  if (hostConfiguration)
  {
    if ([hostConfiguration shouldSkipPeopleSuggestions])
    {
      initialPhotosAssetDetails = [v7 initialPhotosAssetDetails];
      if (initialPhotosAssetDetails)
      {

        goto LABEL_6;
      }
    }

    if ([sessionCopy hideSuggestions])
    {
LABEL_6:
      peopleSuggestionNodes = share_sheet_log();
      if (os_log_type_enabled(peopleSuggestionNodes, OS_LOG_TYPE_DEFAULT))
      {
        shouldSkipPeopleSuggestions = [v7 shouldSkipPeopleSuggestions];
        initialPhotosAssetDetails2 = [v7 initialPhotosAssetDetails];
        v12 = initialPhotosAssetDetails2;
        v13 = "no";
        if (shouldSkipPeopleSuggestions)
        {
          v13 = "yes";
        }

        *buf = 136315394;
        v37 = v13;
        v38 = 2112;
        v39 = initialPhotosAssetDetails2;
        _os_log_impl(&_mh_execute_header, peopleSuggestionNodes, OS_LOG_TYPE_DEFAULT, "SDShareSheetSlotManager: Should skip people suggestions %s with asset details %@", buf, 0x16u);
      }

      goto LABEL_27;
    }

    v14 = share_sheet_log();
    v15 = share_sheet_log();
    v16 = os_signpost_id_make_with_pointer(v15, v7);

    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "PeopleSuggestions", "", buf, 2u);
    }

    suggestionBrowser = [sessionCopy suggestionBrowser];
    peopleSuggestionNodes = [suggestionBrowser peopleSuggestionNodes];

    v18 = share_sheet_log();
    v19 = share_sheet_log();
    v20 = os_signpost_id_make_with_pointer(v19, v7);

    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v20, "PeopleSuggestions", "", buf, 2u);
    }

    v21 = share_sheet_log();
    v22 = share_sheet_log();
    v23 = os_signpost_id_make_with_pointer(v22, v7);

    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, v23, "ConfigureAirDropNodesFromSuggestions", "", buf, 2u);
    }

    shareUserDefaults = [(SDShareSheetSlotManager *)selfCopy shareUserDefaults];
    [(SDShareSheetSlotManager *)selfCopy configureAirDropNodesFromSuggestionNodes:peopleSuggestionNodes shareUserDefaults:shareUserDefaults forSession:sessionCopy];

    v25 = share_sheet_log();
    v26 = share_sheet_log();
    v27 = os_signpost_id_make_with_pointer(v26, v7);

    if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_END, v27, "ConfigureAirDropNodesFromSuggestions", "", buf, 2u);
    }

    if (_os_feature_enabled_impl())
    {
      testingSnapshot = [sessionCopy testingSnapshot];
      v29 = testingSnapshot == 0;

      if (!v29)
      {
        v30 = +[NSMutableArray array];
        suggestedPeople = [sessionCopy suggestedPeople];
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_1001A0098;
        v34[3] = &unk_1008D29D0;
        v32 = v30;
        v35 = v32;
        [suggestedPeople enumerateObjectsUsingBlock:v34];

        testingSnapshot2 = [sessionCopy testingSnapshot];
        [testingSnapshot2 updateWithPeopleSuggestionActivityTypes:v32 forCollaboration:{objc_msgSend(sessionCopy, "isCollaborative")}];
      }
    }
  }

  else
  {
    peopleSuggestionNodes = share_sheet_log();
    if (os_log_type_enabled(peopleSuggestionNodes, OS_LOG_TYPE_FAULT))
    {
      sub_1001B2470();
    }
  }

LABEL_27:

  objc_sync_exit(selfCopy);
}

- (void)_configureActionsSectionForSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  hostConfiguration = [sessionCopy hostConfiguration];
  if (hostConfiguration)
  {
    v7 = [_UIActivityUserDefaults alloc];
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v7 initWithUnderlyingUserDefaults:v8 activityDefaultsKey:@"UIActivityCategoryAction"];
    [(SDShareSheetSlotManager *)selfCopy setActionUserDefaults:v9];

    orderedPresentableActivities = [sessionCopy orderedPresentableActivities];
    v11 = sub_10019F970(orderedPresentableActivities, 0);

    [sessionCopy setActionActivities:v11];
    v12 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v11 count]);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v14)
    {
      v15 = *v35;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v34 + 1) + 8 * i);
          activityUUID = [v17 activityUUID];
          [v12 setObject:v17 forKeyedSubscript:activityUUID];
        }

        v14 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v14);
    }

    actionUserDefaults = [(SDShareSheetSlotManager *)selfCopy actionUserDefaults];

    if (actionUserDefaults)
    {
      actionUserDefaults2 = [(SDShareSheetSlotManager *)selfCopy actionUserDefaults];
      v21 = [actionUserDefaults2 activitiesOrderedByUserActivityOrderForActivities:v13];

      [sessionCopy setActionActivitiesInUserOrder:v21];
      v22 = share_sheet_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Discovered Action Activities:", buf, 2u);
      }

      v27 = _NSConcreteStackBlock;
      v28 = 3221225472;
      v29 = sub_1001A04E8;
      v30 = &unk_1008D2C98;
      v31 = selfCopy;
      v32 = sessionCopy;
      v23 = [NSPredicate predicateWithBlock:&v27];
      v13 = [v21 filteredArrayUsingPredicate:{v23, v27, v28, v29, v30, v31}];
    }

    [sessionCopy setActionActivitiesByUUID:v12];
    [sessionCopy setVisibleActionActivities:v13];
    visibleActionActivities = [sessionCopy visibleActionActivities];
    hostTintColor = [hostConfiguration hostTintColor];
    v26 = [(SDShareSheetSlotManager *)selfCopy _createActionProxiesFromActivities:visibleActionActivities withTintColor:hostTintColor session:sessionCopy];

    [sessionCopy setHostActionActivityProxies:v26];
  }

  else
  {
    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1001B24AC();
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)requestConfigurationWithSessionID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession objectForKeyedSubscript:dCopy];
  if (v9)
  {
    v10 = [(SDShareSheetSlotManager *)selfCopy configurationForDataSourceUpdateWithSession:v9];
    completionCopy[2](completionCopy, v10);
  }

  else
  {
    v10 = share_sheet_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1001B24E8();
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)sendConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  sessionID = [configurationCopy sessionID];
  if (sessionID)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v8 = share_sheet_log();
    v9 = share_sheet_log();
    v10 = os_signpost_id_make_with_pointer(v9, configurationCopy);

    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "SetConfiguration", "", buf, 2u);
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v12 = [(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession objectForKeyedSubscript:sessionID];
    if (!v12)
    {
      securityScopedURLsForMatching = share_sheet_log();
      if (os_log_type_enabled(securityScopedURLsForMatching, OS_LOG_TYPE_FAULT))
      {
        sub_1001B258C();
      }

      v22 = 0;
      goto LABEL_89;
    }

    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v108 = configurationCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "processing configuration: %@", buf, 0xCu);
    }

    v14 = +[NSBundle mainBundle];
    preferredLocalizations = [v14 preferredLocalizations];
    [configurationCopy setPreferredLocalizations:preferredLocalizations];

    hostConfiguration = [v12 hostConfiguration];
    hostTraitCollection = [hostConfiguration hostTraitCollection];
    hostTraitCollection2 = [configurationCopy hostTraitCollection];
    v19 = hostTraitCollection;
    v20 = hostTraitCollection2;
    v21 = v20;
    if (v19 == v20)
    {
      v98 = 1;
    }

    else if ((v19 != 0) == (v20 == 0))
    {
      v98 = 0;
    }

    else
    {
      v98 = [v19 isEqual:v20];
    }

    hostConfiguration2 = [v12 hostConfiguration];

    v24 = +[SFAirDropUserDefaults_objc privateContactDiscoveryEnabled];
    if (hostConfiguration2)
    {
      v25 = 0;
    }

    else
    {
      v25 = v24;
    }

    if (v25 == 1)
    {
      airDropController = [v12 airDropController];
      hostAppBundleID = [v12 hostAppBundleID];
      [airDropController activateWithBundleID:hostAppBundleID];
    }

    hostConfiguration3 = [v12 hostConfiguration];
    securityScopedURLsForMatching = [hostConfiguration3 securityScopedURLsForMatching];

    [v12 setHostConfiguration:configurationCopy];
    xpcHelperCnx = [v12 xpcHelperCnx];
    [xpcHelperCnx updateShareSheetHostConfiguration:configurationCopy];

    hostConfiguration4 = [v12 hostConfiguration];
    securityScopedURLsForMatching2 = [hostConfiguration4 securityScopedURLsForMatching];

    if (securityScopedURLsForMatching2)
    {
      [v12 _activateSecurityContext:securityScopedURLsForMatching2];
      if (securityScopedURLsForMatching != securityScopedURLsForMatching2)
      {
        [v12 _deactivateSecurityContext:securityScopedURLsForMatching];
      }
    }

    v31 = +[SDStatusMonitor sharedMonitor];
    isAirDropAllowed = [v31 isAirDropAllowed];

    hostAppBundleID2 = [v12 hostAppBundleID];
    v33 = +[MCProfileConnection sharedConnection];
    isClassroomEnabled = [v33 isClassroomEnabled];

    isContentManaged = [configurationCopy isContentManaged];
    excludedActivityTypes = +[MCProfileConnection sharedConnection];
    v37 = [excludedActivityTypes mayShareToAirDropForOriginatingAppBundleID:hostAppBundleID2 originatingAccountIsManaged:isContentManaged];

    if ((isAirDropAllowed | isClassroomEnabled) & v37)
    {
      excludedActivityTypes = [configurationCopy excludedActivityTypes];
      v38 = [excludedActivityTypes containsObject:UIActivityTypeAirDrop] ^ 1;
    }

    else
    {
      v38 = 0;
    }

    [v12 setAirDropAllowed:v38];
    if ((isAirDropAllowed | isClassroomEnabled) & v37)
    {
    }

    v39 = share_sheet_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413570;
      v108 = v12;
      v109 = 1024;
      v110 = isAirDropAllowed;
      v111 = 1024;
      v112 = isClassroomEnabled;
      v113 = 2112;
      v114 = hostAppBundleID2;
      v115 = 1024;
      v116 = isContentManaged;
      v117 = 1024;
      v118 = v37;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%@, airdropGloballyAllowed: %i, classroomEnabled: %i, hostBundleID: %@, isContentManaged: %i, mayShare: %i", buf, 0x2Eu);
    }

    if (([configurationCopy excludedActivityCategories] & 2) != 0 || objc_msgSend(configurationCopy, "sharingStyle") == 2)
    {
      v40 = 0;
      v41 = 1;
    }

    else
    {
      v41 = 0;
      v40 = [configurationCopy sharingStyle] != 1;
    }

    [v12 setSharingExpanded:{(objc_msgSend(v12, "sharingExpanded") | v40) & 1}];
    [v12 setIsCollaborative:{objc_msgSend(configurationCopy, "isCollaborative")}];
    recipients = [configurationCopy recipients];
    [v12 setRecipients:recipients];

    if (_os_feature_enabled_impl())
    {
      testingSnapshot = [v12 testingSnapshot];
      if (testingSnapshot)
      {
        testingSnapshot2 = [configurationCopy testingSnapshot];
        v45 = testingSnapshot2 == 0;

        if (!v45)
        {
          testingSnapshot3 = [v12 testingSnapshot];
          testingSnapshot4 = [configurationCopy testingSnapshot];
          [testingSnapshot3 updateFromSnapshot:testingSnapshot4];

LABEL_43:
          goto LABEL_44;
        }
      }

      testingSnapshot5 = [configurationCopy testingSnapshot];

      if (testingSnapshot5)
      {
        testingSnapshot3 = [configurationCopy testingSnapshot];
        [v12 setTestingSnapshot:testingSnapshot3];
        goto LABEL_43;
      }
    }

LABEL_44:
    testingReferenceSnapshot = [configurationCopy testingReferenceSnapshot];
    [v12 setTestingReferenceSnapshot:testingReferenceSnapshot];

    currentConnection = [(SDShareSheetSlotManager *)selfCopy currentConnection];

    if (currentConnection)
    {
      v51 = share_sheet_log();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        currentConnection2 = [(SDShareSheetSlotManager *)selfCopy currentConnection];
        sd_connectionBundleID = [currentConnection2 sd_connectionBundleID];
        *buf = 138412290;
        v108 = sd_connectionBundleID;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "current connection bundle ID: %@", buf, 0xCu);
      }
    }

    else
    {
      v51 = share_sheet_log();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        sub_1001B2550();
      }
    }

    v54 = share_sheet_log();
    v55 = share_sheet_log();
    v56 = os_signpost_id_make_with_pointer(v55, configurationCopy);

    if (v56 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v54, OS_SIGNPOST_INTERVAL_BEGIN, v56, "LoadPresentableActivitiesForSession", " enableTelemetry=YES ", buf, 2u);
    }

    hostHiddenActivityConfigurations = [configurationCopy hostHiddenActivityConfigurations];
    v58 = [SUIHostActivityProxy activitiesForConfigurations:hostHiddenActivityConfigurations];
    [v12 setHiddenActivities:v58];

    [(SDShareSheetSlotManager *)selfCopy _loadPresentableActivitiesForSession:v12];
    v59 = share_sheet_log();
    v60 = share_sheet_log();
    v61 = os_signpost_id_make_with_pointer(v60, configurationCopy);

    if (v61 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v59, OS_SIGNPOST_INTERVAL_END, v61, "LoadPresentableActivitiesForSession", " enableTelemetry=YES ", buf, 2u);
    }

    if ((v41 & 1) == 0)
    {
      if ([v12 sharingExpanded])
      {
        v62 = share_sheet_log();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "fetching sharing sections synchronously…", buf, 2u);
        }

        [(SDShareSheetSlotManager *)selfCopy _configureSharingSectionsForSession:v12];
      }

      else
      {
        v63 = share_sheet_log();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "fetching sharing sections asynchronously…", buf, 2u);
        }

        objc_initWeak(buf, selfCopy);
        connection = [v12 connection];
        _queue = [connection _queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001A1650;
        block[3] = &unk_1008CDC30;
        objc_copyWeak(&v106, buf);
        v105 = v12;
        dispatch_async(_queue, block);

        objc_destroyWeak(&v106);
        objc_destroyWeak(buf);
      }
    }

    [(SDShareSheetSlotManager *)selfCopy _configureActionsSectionForSession:v12];
    if (!hostConfiguration2 || v98 != 1)
    {
      if (+[SFAirDropUserDefaults_objc privateContactDiscoveryEnabled])
      {
        airDropController2 = [v12 airDropController];
        availableNodes = [airDropController2 availableNodes];
        sessionID2 = [v12 sessionID];
        [(SDShareSheetSlotManager *)selfCopy handleAirDropNodesChanged:availableNodes sessionID:sessionID2];
      }

      else
      {
        airDropController2 = [v12 peopleBrowser];
        availableNodes = [v12 peopleBrowser];
        sessionID2 = [availableNodes people];
        [(SDShareSheetSlotManager *)selfCopy browser:airDropController2 didUpdatePeople:sessionID2 deletedContactIdentifiers:0];
      }
    }

    selectedNode = [v12 selectedNode];
    [selectedNode setSelectionReason:2];

    selectedNode2 = [v12 selectedNode];
    [(SDShareSheetSlotManager *)selfCopy createAirDropProxyForNode:selectedNode2 session:v12];

    [(SDShareSheetSlotManager *)selfCopy updateNearbyCountSlotIDForSession:v12];
    v71 = share_sheet_log();
    v72 = share_sheet_log();
    v73 = os_signpost_id_make_with_pointer(v72, configurationCopy);

    if (v73 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v71))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v71, OS_SIGNPOST_INTERVAL_END, v73, "SetConfiguration", "", buf, 2u);
    }

    if ([v12 remoteShareSheet])
    {
      v22 = 0;
    }

    else
    {
      v22 = [(SDShareSheetSlotManager *)selfCopy configurationForDataSourceUpdateWithSession:v12];
      [v22 setReloadData:1];
    }

    [v12 setSentInitialConfiguration:1];
    [v12 reportCurrentInvocationForDuration:((CFAbsoluteTimeGetCurrent() - Current) * 1000.0)];
    uiServiceConnection = [v12 uiServiceConnection];

    if (uiServiceConnection)
    {
      [(SDShareSheetSlotManager *)selfCopy dataSourceDidUpdateForSession:v12 animated:0];
    }

    userDefaultsActivityCategory = [v12 userDefaultsActivityCategory];
    v76 = userDefaultsActivityCategory == 0;

    if (!v76)
    {
      userDefaultsActivityCategory2 = [v12 userDefaultsActivityCategory];
      -[SDShareSheetSlotManager _instructHostToPerformUserDefaultsActivityForCategory:session:updatingView:](selfCopy, "_instructHostToPerformUserDefaultsActivityForCategory:session:updatingView:", [userDefaultsActivityCategory2 integerValue], v12, 1);
    }

    if (_os_feature_enabled_impl())
    {
      testingSnapshot6 = [v12 testingSnapshot];
      v79 = testingSnapshot6 == 0;

      if (!v79)
      {
        testingSnapshot7 = [v12 testingSnapshot];
        testingReferenceSnapshot2 = [v12 testingReferenceSnapshot];
        [testingSnapshot7 updatePreconditionsIfNeededWithReferenceSnapshot:testingReferenceSnapshot2];

        shareActivities = [v12 shareActivities];
        visibleShareActivities = [v12 visibleShareActivities];
        if ([v12 isSharePlayAvailable])
        {
          shareActivities2 = [v12 shareActivities];
          hiddenActivities = [v12 hiddenActivities];
          v86 = [shareActivities2 arrayByAddingObjectsFromArray:hiddenActivities];

          visibleShareActivities2 = [v12 visibleShareActivities];
          hiddenActivities2 = [v12 hiddenActivities];
          v89 = [visibleShareActivities2 arrayByAddingObjectsFromArray:hiddenActivities2];

          shareActivities = v86;
          visibleShareActivities = v89;
        }

        testingSnapshot8 = [v12 testingSnapshot];
        actionActivities = [v12 actionActivities];
        visibleActionActivities = [v12 visibleActionActivities];
        [testingSnapshot8 updateWithDiscoveredShareActivities:shareActivities visibleShareActivities:visibleShareActivities actionActivities:actionActivities visibleActionActivities:visibleActionActivities forCollaboration:{objc_msgSend(v12, "isCollaborative")}];
      }
    }

    findSupportedActivitiesCompletionHandler = [v12 findSupportedActivitiesCompletionHandler];

    if (findSupportedActivitiesCompletionHandler)
    {
      findSupportedActivitiesCompletionHandler2 = [v12 findSupportedActivitiesCompletionHandler];
      [v12 setFindSupportedActivitiesCompletionHandler:0];
      [(SDShareSheetSlotManager *)selfCopy activityViewControllerWithSessionID:sessionID findSupportedActivitiesWithCompletionHandler:findSupportedActivitiesCompletionHandler2];
    }

    performActivityType = [v12 performActivityType];

    if (performActivityType)
    {
      performActivityType2 = [v12 performActivityType];
      [v12 setPerformActivityType:0];
      performActivityCompletionHandler = [v12 performActivityCompletionHandler];
      [v12 setPerformActivityCompletionHandler:0];
      [(SDShareSheetSlotManager *)selfCopy activityViewControllerWithSessionID:sessionID performActivityWithType:performActivityType2 completionHandler:performActivityCompletionHandler];
    }

LABEL_89:
    objc_sync_exit(selfCopy);

    if (v12)
    {
      completionCopy[2](completionCopy, v22);
    }

    goto LABEL_91;
  }

  v22 = share_sheet_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    sub_1001B25F4();
  }

LABEL_91:
}

- (void)createSharingURLForCollaborationRequest:(id)request completionHandler:(id)handler
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A1764;
  v7[3] = &unk_1008D2CE8;
  requestCopy = request;
  handlerCopy = handler;
  v5 = handlerCopy;
  v6 = requestCopy;
  [SFCollaborationUtilities createSharingURLForCollaborationRequest:v6 completionHandler:v7];
}

- (void)requestDefaultShareModeCollaborationForURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  v13 = 0;
  v7 = [[LSClaimBinding alloc] initWithURL:lCopy error:&v13];

  v8 = v13;
  claimRecord = [v7 claimRecord];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    claimRecord2 = [v7 claimRecord];
    defaultShareModeCollaboration = [claimRecord2 defaultShareModeCollaboration];
  }

  else
  {
    defaultShareModeCollaboration = 0;
  }

  handlerCopy[2](handlerCopy, defaultShareModeCollaboration, v8);
}

- (void)requestCollaborativeModeForContentIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v7 = +[SFCollaborationUserDefaults sharedDefaults];
  v8 = [v7 existingCollaborativeModeForContentIdentifier:identifierCopy];

  handlerCopy[2](handlerCopy, v8);
}

- (void)saveCollaborativeMode:(id)mode forContentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  modeCopy = mode;
  v8 = +[SFCollaborationUserDefaults sharedDefaults];
  bOOLValue = [modeCopy BOOLValue];

  [v8 setCollaborativeMode:bOOLValue contentIdentifier:identifierCopy];
}

- (id)_moveDefaultApplicationToFrontForURL:(id)l activities:(id)activities
{
  lCopy = l;
  activitiesCopy = activities;
  if ([lCopy isFileURL])
  {
    v8 = [UIDocumentInteractionController interactionControllerWithURL:lCopy];
    _defaultApplication = [v8 _defaultApplication];
    if (!_defaultApplication)
    {
      v31 = activitiesCopy;

      goto LABEL_32;
    }

    v10 = _defaultApplication;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    activitiesCopy = activitiesCopy;
    v11 = [activitiesCopy countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v11)
    {
      v36 = v8;
      v12 = *v43;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v43 != v12)
          {
            objc_enumerationMutation(activitiesCopy);
          }

          v14 = *(*(&v42 + 1) + 8 * i);
          applicationProxy = [v14 applicationProxy];
          v16 = [applicationProxy isEqual:v10];

          if (v16)
          {
            v11 = v14;
            goto LABEL_13;
          }
        }

        v11 = [activitiesCopy countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_13:
      v8 = v36;
    }

    shareUserDefaults = [(SDShareSheetSlotManager *)self shareUserDefaults];
    activityIdentifiersInUserOrder = [shareUserDefaults activityIdentifiersInUserOrder];

    if (v11)
    {
      _activityTypeUsingFallbackActivityTypeIfNecessary = [v11 _activityTypeUsingFallbackActivityTypeIfNecessary];
      v20 = [activityIdentifiersInUserOrder containsObject:_activityTypeUsingFallbackActivityTypeIfNecessary];

      if ((v20 & 1) == 0)
      {
        shareUserDefaults2 = [(SDShareSheetSlotManager *)self shareUserDefaults];
        hasUserEditedActivityOrder = [shareUserDefaults2 hasUserEditedActivityOrder];

        if (hasUserEditedActivityOrder)
        {
          v34 = v11;
          v35 = lCopy;
          v37 = v8;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v23 = activitiesCopy;
          v24 = [v23 countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = 0;
            v27 = *v39;
            do
            {
              for (j = 0; j != v25; j = j + 1)
              {
                if (*v39 != v27)
                {
                  objc_enumerationMutation(v23);
                }

                _activityTypeUsingFallbackActivityTypeIfNecessary2 = [*(*(&v38 + 1) + 8 * j) _activityTypeUsingFallbackActivityTypeIfNecessary];
                v30 = [activityIdentifiersInUserOrder containsObject:_activityTypeUsingFallbackActivityTypeIfNecessary2];

                v26 += v30;
              }

              v25 = [v23 countByEnumeratingWithState:&v38 objects:v46 count:16];
            }

            while (v25);
          }

          else
          {
            v26 = 0;
          }

          lCopy = v35;
          v8 = v37;
          v11 = v34;
        }

        else
        {
          v26 = 1;
        }

        v32 = [activitiesCopy mutableCopy];
        [v32 removeObject:v11];
        [v32 insertObject:v11 atIndex:v26];

        activitiesCopy = v32;
      }
    }
  }

  v31 = activitiesCopy;
LABEL_32:

  return v31;
}

+ (id)_bundleIdentifierForActivity:(id)activity
{
  activityCopy = activity;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = activityCopy;
    containingAppBundleIdentifier = [v4 containingAppBundleIdentifier];
    v6 = containingAppBundleIdentifier;
    if (containingAppBundleIdentifier)
    {
      identifier = containingAppBundleIdentifier;
    }

    else
    {
      applicationExtension = [v4 applicationExtension];
      identifier = [applicationExtension identifier];
    }
  }

  else if ((objc_opt_respondsToSelector() & 1) != 0 && ([activityCopy applicationIdentifier], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    identifier = [activityCopy applicationIdentifier];
  }

  else
  {
    identifier = @"noBundleID";
  }

  return identifier;
}

+ (id)_groupActivitiesByBundleID:(id)d
{
  dCopy = d;
  v4 = +[NSMutableDictionary dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = dCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [SDShareSheetSlotManager _bundleIdentifierForActivity:v10, v17];
        v12 = [v4 objectForKeyedSubscript:v11];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = +[NSMutableArray array];
        }

        v15 = v14;

        [v15 addObject:v10];
        [v4 setObject:v15 forKeyedSubscript:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_removeSecondaryActivities:(id)activities bundleIDToActivities:(id)toActivities
{
  activitiesCopy = activities;
  v7 = [(SDShareSheetSlotManager *)self _getMainActivityPerBundleID:toActivities];
  v8 = +[NSMutableIndexSet indexSet];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = activitiesCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ([v7 indexOfObject:{v14, v17}] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v8 addIndex:{objc_msgSend(v9, "indexOfObject:", v14)}];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [v9 mutableCopy];
  [v15 removeObjectsAtIndexes:v8];

  return v15;
}

- (id)_getMainActivityPerBundleID:(id)d
{
  dCopy = d;
  v4 = +[NSMutableArray array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [dCopy allKeys];
  v5 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    v22 = *v31;
    v23 = dCopy;
    do
    {
      v8 = 0;
      v24 = v6;
      do
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * v8);
        v10 = [dCopy objectForKeyedSubscript:{v9, v22, v23}];
        if ([v9 isEqualToString:@"noBundleID"])
        {
          [v4 addObjectsFromArray:v10];
        }

        else
        {
          v11 = v4;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v12 = [dCopy objectForKeyedSubscript:v9];
          v13 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = 0;
            v16 = *v27;
            do
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v27 != v16)
                {
                  objc_enumerationMutation(v12);
                }

                v18 = *(*(&v26 + 1) + 8 * i);
                if (v15)
                {
                  _defaultSortGroup = [*(*(&v26 + 1) + 8 * i) _defaultSortGroup];
                  if (_defaultSortGroup < [v15 _defaultSortGroup])
                  {
                    v20 = v18;

                    v15 = v20;
                  }
                }

                else
                {
                  v15 = v18;
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v14);
          }

          else
          {
            v15 = 0;
          }

          v4 = v11;
          [v11 addObject:v15];

          v7 = v22;
          dCopy = v23;
          v6 = v24;
        }

        v8 = v8 + 1;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)updateNearbyCountSlotIDForSession:(id)session
{
  sessionCopy = session;
  if (+[SFAirDropUserDefaults_objc privateContactDiscoveryEnabled])
  {
    airDropNearbyCount = [sessionCopy airDropNearbyCount];
  }

  else
  {
    airDropNearbyCount = 0;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = share_sheet_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    peopleNodes = [sessionCopy peopleNodes];
    *buf = 67109376;
    *&buf[4] = airDropNearbyCount;
    LOWORD(v26) = 1024;
    *(&v26 + 2) = [peopleNodes count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Found nearby count %u people nodes %u", buf, 0xEu);
  }

  shareSheetContext = [(SDShareSheetSlotManager *)selfCopy shareSheetContext];
  if (airDropNearbyCount <= 1)
  {
    if (airDropNearbyCount == 1)
    {
      peopleNodes2 = [sessionCopy peopleNodes];
      v10 = [peopleNodes2 count] == 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  if ([sessionCopy skipSlotsRendering])
  {
    if (v10)
    {
      v12 = airDropNearbyCount;
    }

    else
    {
      v12 = 0;
    }

    [sessionCopy setNearbyCountBadge:v12];
  }

  else if (v10)
  {
    *buf = 0;
    v26 = 0;
    v27 = 0;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1001A283C;
    v22[3] = &unk_1008D2D10;
    v23 = sessionCopy;
    v24 = airDropNearbyCount;
    v13 = v23;
    v20 = v13;
    v21 = airDropNearbyCount;
    hostConfiguration = [v13 hostConfiguration];
    [(SDShareSheetSlotManager *)selfCopy _uploadSlotWithVectorData:v22 cgImage:&v19 performCATransaction:1 hostConfiguration:hostConfiguration];

    if (*buf)
    {
      nearbyCountSlotID = [v13 nearbyCountSlotID];
      [shareSheetContext deleteSlot:{objc_msgSend(nearbyCountSlotID, "unsignedIntValue")}];

      v16 = [NSNumber numberWithUnsignedInt:*buf];
      [v13 setNearbyCountSlotID:v16];
    }
  }

  else
  {
    nearbyCountSlotID2 = [sessionCopy nearbyCountSlotID];

    if (nearbyCountSlotID2)
    {
      nearbyCountSlotID3 = [sessionCopy nearbyCountSlotID];
      [shareSheetContext deleteSlot:{objc_msgSend(nearbyCountSlotID3, "unsignedIntValue")}];

      [sessionCopy setNearbyCountSlotID:0];
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)_createShareProxiesFromActivities:(id)activities session:(id)session
{
  activitiesCopy = activities;
  sessionCopy = session;
  v8 = +[NSMutableArray array];
  obj = self;
  objc_sync_enter(obj);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v9 = activitiesCopy;
  v10 = [v9 countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v10)
  {
    v48 = UIActivityTypeUserDefaults;
    v49 = *v58;
    v45 = sessionCopy;
    v46 = v8;
    v44 = v9;
    do
    {
      v50 = v10;
      for (i = 0; i != v50; i = i + 1)
      {
        if (*v58 != v49)
        {
          objc_enumerationMutation(v9);
        }

        v12 = *(*(&v57 + 1) + 8 * i);
        screenTimeMonitor = [sessionCopy screenTimeMonitor];
        activityType = [v12 activityType];
        v15 = [screenTimeMonitor cachedPolicyForActivityType:activityType];

        v16 = [[_UIHostActivityProxy alloc] initWithActivity:v12];
        [(_UIHostActivityProxy *)v16 setIsDisabled:v15 != 0];
        activityType2 = [v12 activityType];
        -[_UIHostActivityProxy setIsUserDefaultsActivity:](v16, "setIsUserDefaultsActivity:", [activityType2 isEqualToString:v48]);

        _activityImageUTI = [v12 _activityImageUTI];
        [(_UIHostActivityProxy *)v16 setActivityImageUTI:_activityImageUTI];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || [(_UIHostActivityProxy *)v16 isUserDefaultsActivity])
        {
          activityType3 = [v12 activityType];
          v20 = UIActivityTypeAirDrop;
          v21 = activityType3;
          v22 = v21;
          if (v20 == v21)
          {
          }

          else
          {
            if ((UIActivityTypeAirDrop != 0) == (v21 == 0))
            {

              goto LABEL_17;
            }

            v23 = [(NSString *)v20 isEqual:v21];

            if (!v23)
            {
LABEL_17:
              v28 = share_sheet_log();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                activityUUID = [v12 activityUUID];
                activityType4 = [v12 activityType];
                *buf = 138412546;
                v63 = activityUUID;
                v64 = 2112;
                v65 = activityType4;
                _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Skipping slot creation for host activity %@ with activity type %@", buf, 0x16u);
              }

              goto LABEL_30;
            }
          }

          -[_UIHostActivityProxy setIsRestricted:](v16, "setIsRestricted:", [sessionCopy airDropAllowed] ^ 1);
          goto LABEL_17;
        }

        hostConfiguration = [sessionCopy hostConfiguration];
        preferredLocalizations = [hostConfiguration preferredLocalizations];
        [v12 setPreferredLocalizations:preferredLocalizations];

        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_1001A2F34;
        v55[3] = &unk_1008D2D60;
        v47 = v16;
        p_super = &v47->super;
        v26 = objc_retainBlock(v55);
        v27 = [SDShareSheetSlotManager _bundleIdentifierForActivity:v12];
        if ([v27 isEqualToString:@"noBundleID"])
        {
          (v26[2])(v26, v12);
        }

        else
        {
          bundleIDToActivities = [sessionCopy bundleIDToActivities];
          v32 = [bundleIDToActivities objectForKeyedSubscript:v27];

          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v33 = v32;
          v34 = [v33 countByEnumeratingWithState:&v51 objects:v61 count:16];
          if (v34)
          {
            v35 = *v52;
            do
            {
              for (j = 0; j != v34; j = j + 1)
              {
                if (*v52 != v35)
                {
                  objc_enumerationMutation(v33);
                }

                (v26[2])(v26, *(*(&v51 + 1) + 8 * j));
              }

              v34 = [v33 countByEnumeratingWithState:&v51 objects:v61 count:16];
            }

            while (v34);
          }

          sessionCopy = v45;
          v8 = v46;
          v9 = v44;
        }

        v37 = [SFProxyText alloc];
        activityTitle = [v12 activityTitle];
        v39 = [v37 initWithText:activityTitle];
        [(_UIHostActivityProxy *)v47 setActivityTitle:v39];

        if (([v27 isEqualToString:@"noBundleID"] & 1) == 0)
        {
          [(_UIHostActivityProxy *)v47 setApplicationBundleIdentifier:v27];
        }

        v28 = p_super;
LABEL_30:

        v40 = share_sheet_log();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          activityType5 = [v12 activityType];
          *buf = 138412546;
          v63 = v16;
          v64 = 2112;
          v65 = activityType5;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Created share activity proxy %@ for activity type %@", buf, 0x16u);
        }

        [v8 addObject:v16];
      }

      v10 = [v9 countByEnumeratingWithState:&v57 objects:v66 count:16];
    }

    while (v10);
  }

  objc_sync_exit(obj);

  return v8;
}

- (id)_createActionProxiesFromActivities:(id)activities withTintColor:(id)color session:(id)session
{
  activitiesCopy = activities;
  colorCopy = color;
  sessionCopy = session;
  v43 = +[NSMutableArray array];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  val = selfCopy;
  actionUserDefaults = [(SDShareSheetSlotManager *)selfCopy actionUserDefaults];
  activityIdentifiersInUserOrder = [actionUserDefaults activityIdentifiersInUserOrder];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = activitiesCopy;
  v12 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v12)
  {
    v13 = *v49;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v49 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v48 + 1) + 8 * i);
        v16 = [[_UIHostActivityProxy alloc] initWithActivity:v15];
        activityType = [v15 activityType];
        -[_UIHostActivityProxy setIsFavorite:](v16, "setIsFavorite:", [activityIdentifiersInUserOrder containsObject:activityType]);

        _activityImageUTI = [v15 _activityImageUTI];
        [(_UIHostActivityProxy *)v16 setActivityImageUTI:_activityImageUTI];

        _activityFooterText = [v15 _activityFooterText];

        if (_activityFooterText)
        {
          _activityFooterText2 = [v15 _activityFooterText];
          [(_UIHostActivityProxy *)v16 setActivityFooter:_activityFooterText2];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = share_sheet_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            activityUUID = [v15 activityUUID];
            activityType2 = [v15 activityType];
            *buf = 138412546;
            v53 = activityUUID;
            v54 = 2112;
            v55 = activityType2;
            _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Skipping slot creation for host activity %@ with activity type %@", buf, 0x16u);
          }
        }

        else
        {
          hostConfiguration = [sessionCopy hostConfiguration];
          hostTraitCollection = [hostConfiguration hostTraitCollection];
          preferredContentSizeCategory = [hostTraitCollection preferredContentSizeCategory];
          [v15 setContentSizeCategory:preferredContentSizeCategory];

          hostConfiguration2 = [sessionCopy hostConfiguration];
          preferredLocalizations = [hostConfiguration2 preferredLocalizations];
          [v15 setPreferredLocalizations:preferredLocalizations];

          activityTitle = [v15 activityTitle];
          v21 = [SDShareSheetSlotManager nonBreakingActivityTitle:activityTitle];

          v30 = [[SFProxyText alloc] initWithText:v21];
          [(_UIHostActivityProxy *)v16 setActivityTitle:v30];

          objc_opt_class();
          LOBYTE(v30) = objc_opt_isKindOfClass();
          if (v30 & 1 | (([v15 isMemberOfClass:objc_opt_class()] & 1) == 0))
          {
            v31 = objc_alloc_init(SDShareSheetLoadingConfiguration);
            [(SDShareSheetLoadingConfiguration *)v31 setTintColor:colorCopy];
            xpcHelperCnx = [sessionCopy xpcHelperCnx];
            [(SDShareSheetLoadingConfiguration *)v31 setHelperConnection:xpcHelperCnx];

            [(SDShareSheetLoadingConfiguration *)v31 setInstantShareSheet:1];
            hostConfiguration3 = [sessionCopy hostConfiguration];
            [(SDShareSheetLoadingConfiguration *)v31 setHostConfiguration:hostConfiguration3];

            objc_initWeak(buf, val);
            v45[0] = _NSConcreteStackBlock;
            v45[1] = 3221225472;
            v45[2] = sub_1001A363C;
            v45[3] = &unk_1008D2D88;
            objc_copyWeak(&v47, buf);
            v34 = v31;
            v46 = v34;
            [(_UIHostActivityProxy *)v16 setLoadHandler:v45];

            objc_destroyWeak(&v47);
            objc_destroyWeak(buf);
          }

          else
          {
            v34 = v15;
            applicationExtension = [(SDShareSheetLoadingConfiguration *)v34 applicationExtension];
            identifier = [applicationExtension identifier];
            [(_UIHostActivityProxy *)v16 setApplicationBundleIdentifier:identifier];
          }
        }

        v37 = share_sheet_log();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          activityType3 = [v15 activityType];
          *buf = 138412546;
          v53 = v16;
          v54 = 2112;
          v55 = activityType3;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Created action activity proxy %@ for activity type %@", buf, 0x16u);
        }

        [v43 addObject:v16];
      }

      v12 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v12);
  }

  objc_sync_exit(val);

  return v43;
}

- (CGImage)_createActivityTitleImageForActivity:(id)activity foregroundColor:(id)color sessionConnection:(id)connection
{
  activityCopy = activity;
  colorCopy = color;
  connectionCopy = connection;
  if (!connectionCopy)
  {
    v11 = share_sheet_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1001B26CC();
    }

    v10 = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    activityTitle = [activityCopy activityTitle];
    v11 = activityTitle;
    if (activityTitle)
    {
      v16 = activityTitle;
      v13 = [NSArray arrayWithObjects:&v16 count:1];
      v14 = [connectionCopy CGImgForUIActivityTitles:v13 foregroundColor:colorCopy processOppositeColor:1];

      v10 = [v14 objectForKeyedSubscript:v11];
    }

    else
    {
      v14 = share_sheet_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1001B265C();
      }

      v10 = 0;
    }

LABEL_13:
    goto LABEL_14;
  }

  v10 = 0;
LABEL_14:

  return v10;
}

- (id)_activityTitleImagesMapForActivities:(id)activities session:(id)session
{
  activitiesCopy = activities;
  sessionCopy = session;
  xpcHelperCnx = [sessionCopy xpcHelperCnx];
  v8 = xpcHelperCnx;
  if (xpcHelperCnx)
  {
    v25 = xpcHelperCnx;
    hostConfiguration = [sessionCopy hostConfiguration];
    v24 = [SDShareSheetSession labelColorWithHostConfiguration:hostConfiguration];

    v10 = objc_alloc_init(NSMutableArray);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v26 = activitiesCopy;
    v11 = activitiesCopy;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            hostConfiguration2 = [sessionCopy hostConfiguration];
            preferredLocalizations = [hostConfiguration2 preferredLocalizations];
            [v16 setPreferredLocalizations:preferredLocalizations];

            activityTitle = [v16 activityTitle];
            if (activityTitle)
            {
              [v10 addObject:activityTitle];
            }

            else
            {
              v20 = share_sheet_log();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v32 = v16;
                _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Couldn't retrieve an activity title for %@", buf, 0xCu);
              }
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v13);
    }

    v21 = v24;
    v8 = v25;
    v22 = [v25 CGImgForUIActivityTitles:v10 foregroundColor:v24 processOppositeColor:1];

    activitiesCopy = v26;
  }

  else
  {
    v21 = share_sheet_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_1001B2708();
    }

    v22 = &__NSDictionary0__struct;
  }

  return v22;
}

- (BOOL)_loadAirDropProxy:(id)proxy forAirDropNode:(id)node configuration:(id)configuration
{
  proxyCopy = proxy;
  nodeCopy = node;
  configurationCopy = configuration;
  helperConnection = [configurationCopy helperConnection];
  v12 = share_sheet_log();
  v13 = v12;
  if (helperConnection)
  {
    v14 = share_sheet_log();
    v15 = os_signpost_id_make_with_pointer(v14, self);

    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, "LoadSuggestionUIAirdropNode", "", buf, 2u);
    }

    v16 = helperConnection;

    transportBundleID = [nodeCopy transportBundleID];
    v13 = [_UIActivityHelper transportImageForBundleIdentifier:transportBundleID];

    cGImage = [v13 CGImage];
    v59 = proxyCopy;
    suggestionNode = [proxyCopy suggestionNode];
    iconData = [suggestionNode iconData];
    if (iconData)
    {
      v20 = SFCreateCGImageFromData();
      [nodeCopy setDisplayIcon:v20];
      if (v20)
      {
        CFRelease(v20);
      }
    }

    selfCopy = self;

    icon = [suggestionNode icon];
    if (icon)
    {
      [nodeCopy setDisplayIcon:icon];
    }

    displayIcon = [nodeCopy displayIcon];
    v57 = suggestionNode;
    hasGroupImage = [suggestionNode hasGroupImage];
    [configurationCopy hostLocale];
    v26 = v25 = configurationCopy;
    v27 = [nodeCopy displayNameForLocale:v26];

    +[CATransaction begin];
    *buf = 0;
    v62 = 0;
    v63 = 0.0;
    textColor = [v25 textColor];
    if (hasGroupImage)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2;
    }

    v55 = v25;
    hostConfiguration = [v25 hostConfiguration];
    v31 = selfCopy;
    v56 = v27;
    v32 = v27;
    v33 = selfCopy;
    helperConnection = v16;
    [(SDShareSheetSlotManager *)v31 _createNameLabelSlotWithString:v32 textColor:textColor maximumNumberOfLines:v29 isAirDrop:0 ignoreNameWrapping:hasGroupImage sessionConnection:v16 hostConfig:hostConfiguration];

    formattedHandles = [nodeCopy formattedHandles];
    v35 = [formattedHandles count];

    v36 = SFLocalizedStringForKey();
    v37 = [NSString localizedStringWithFormat:v36, v35];

    v38 = cGImage;
    proxyCopy = v59;
    if (displayIcon || cGImage || *buf)
    {
      shareSheetContext = [(SDShareSheetSlotManager *)v33 shareSheetContext];
      v40 = +[NSMutableDictionary dictionary];
      if (displayIcon)
      {
        v41 = share_sheet_log();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *v60 = 0;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "create slot for people proxy icon image", v60, 2u);
        }

        v42 = [(SDShareSheetSlotManager *)v33 createSlotForContext:shareSheetContext];
        [shareSheetContext setObject:displayIcon forSlot:v42];
        proxyCopy = v59;
        [v59 setAvatarImageSlotID:v42];
        v38 = cGImage;
      }

      if (v38)
      {
        v43 = share_sheet_log();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          *v60 = 0;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "create slot for people proxy transport image", v60, 2u);
        }

        v44 = [(SDShareSheetSlotManager *)v33 createSlotForContext:shareSheetContext];
        [shareSheetContext setObject:v38 forSlot:v44];
        transportBundleID2 = [nodeCopy transportBundleID];
        v46 = [NSNumber numberWithUnsignedInt:v44];
        [v40 setObject:transportBundleID2 forKey:v46];

        proxyCopy = v59;
        [v59 setTransportImageSlotID:v44];
      }

      if (*buf)
      {
        v47 = share_sheet_log();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          *v60 = 0;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "create slot for people proxy text image", v60, 2u);
        }

        displayName = [nodeCopy displayName];
        v49 = [NSNumber numberWithUnsignedInt:*buf];
        [v40 setObject:displayName forKey:v49];

        [proxyCopy setMainLabelSlotID:*buf];
        [proxyCopy setMainLabelSlotHeight:v63];
      }

      accessibilityCache = [(SDShareSheetSlotManager *)v33 accessibilityCache];
      [accessibilityCache addEntriesFromDictionary:v40];
    }

    +[CATransaction commit];
    v51 = share_sheet_log();
    v52 = share_sheet_log();
    v53 = os_signpost_id_make_with_pointer(v52, v33);

    if (v53 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
    {
      *v60 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, OS_SIGNPOST_INTERVAL_END, v53, "LoadSuggestionUIAirdropNode", "", v60, 2u);
    }

    configurationCopy = v55;
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1001B2770();
  }

  return helperConnection != 0;
}

- (BOOL)_loadSharingProxy:(id)proxy configuration:(id)configuration
{
  proxyCopy = proxy;
  configurationCopy = configuration;
  v9 = share_sheet_log();
  v10 = share_sheet_log();
  v11 = os_signpost_id_make_with_pointer(v10, self);

  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "LoadSharingActivityProxy", "", buf, 2u);
  }

  activity = [proxyCopy activity];
  if (!activity)
  {
    sub_1001B27AC(a2, self);
  }

  v13 = share_sheet_log();
  v14 = share_sheet_log();
  v15 = os_signpost_id_make_with_pointer(v14, self);

  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    activityTitle = [activity activityTitle];
    *buf = 138543362;
    v59 = activityTitle;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, "UIActivityImageLoad", "%{public}@", buf, 0xCu);
  }

  _activityImage = [activity _activityImage];
  v18 = share_sheet_log();
  v19 = share_sheet_log();
  v20 = os_signpost_id_make_with_pointer(v19, self);

  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v20, "UIActivityImageLoad", " enableTelemetry=YES ", buf, 2u);
  }

  cGImage = [_activityImage CGImage];
  if (!cGImage)
  {
    v22 = share_sheet_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      activityTitle2 = [activity activityTitle];
      *buf = 138412546;
      v59 = activityTitle2;
      v60 = 2112;
      v61 = _activityImage;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%@: imageRef is nil for %@ ", buf, 0x16u);
    }
  }

  +[CATransaction begin];
  if ([configurationCopy instantShareSheet])
  {
    v24 = 0;
    if (!cGImage)
    {
      goto LABEL_36;
    }

LABEL_35:
    shareSheetContext = [(SDShareSheetSlotManager *)self shareSheetContext];
    v37 = [(SDShareSheetSlotManager *)self createSlotForContext:shareSheetContext];

    shareSheetContext2 = [(SDShareSheetSlotManager *)self shareSheetContext];
    [shareSheetContext2 setObject:cGImage forSlot:v37];

    [proxyCopy setIconImageSlotID:v37];
    goto LABEL_36;
  }

  v49 = configurationCopy;
  helperConnection = [configurationCopy helperConnection];
  v26 = share_sheet_log();
  v27 = v26;
  if (helperConnection)
  {
    v48 = proxyCopy;
    v28 = share_sheet_log();
    v29 = os_signpost_id_make_with_pointer(v28, self);

    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_BEGIN, v29, "UIActivityTitleDrawing", " enableTelemetry=YES ", buf, 2u);
    }

    textColor = [v49 textColor];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_1001A47A0;
    v54[3] = &unk_1008D2DB0;
    v54[4] = self;
    v55 = activity;
    v56 = textColor;
    v57 = helperConnection;
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_1001A47B0;
    v50[3] = &unk_1008D2DD8;
    v50[4] = self;
    v51 = v55;
    v27 = v56;
    v52 = v27;
    v53 = v57;
    hostConfiguration = [v49 hostConfiguration];
    [(SDShareSheetSlotManager *)self _uploadSlotWithVectorData:v54 cgImage:v50 performCATransaction:0 hostConfiguration:hostConfiguration];
    v24 = *buf;

    v32 = share_sheet_log();
    v33 = share_sheet_log();
    v34 = os_signpost_id_make_with_pointer(v33, self);

    if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_END, v34, "UIActivityTitleDrawing", " enableTelemetry=YES ", buf, 2u);
    }

    proxyCopy = v48;
    if (!v24)
    {
      v35 = share_sheet_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        sub_1001B2824();
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      sub_1001B28C4();
    }

    v24 = 0;
  }

  configurationCopy = v49;
  if (cGImage)
  {
    goto LABEL_35;
  }

LABEL_36:
  +[CATransaction commit];
  if (v24)
  {
    accessibilityCache = [(SDShareSheetSlotManager *)self accessibilityCache];
    activityTitle3 = [activity activityTitle];
    v41 = [NSNumber numberWithUnsignedInt:v24];
    [accessibilityCache setLabel:activityTitle3 forSlotID:v41];

    [proxyCopy setLabelSlotID:v24];
  }

  v42 = share_sheet_log();
  v43 = share_sheet_log();
  v44 = os_signpost_id_make_with_pointer(v43, self);

  if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, OS_SIGNPOST_INTERVAL_END, v44, "LoadSharingActivityProxy", "", buf, 2u);
  }

  if (cGImage)
  {
    v45 = 0;
  }

  else
  {
    v45 = v24 == 0;
  }

  v46 = !v45;

  return v46;
}

- (BOOL)_loadActionProxy:(id)proxy configuration:(id)configuration
{
  proxyCopy = proxy;
  configurationCopy = configuration;
  v8 = share_sheet_log();
  v9 = share_sheet_log();
  v10 = os_signpost_id_make_with_pointer(v9, self);

  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "LoadActionActivityProxy", "", buf, 2u);
  }

  activity = [proxyCopy activity];
  if (!activity)
  {
    sub_1001B2900();
  }

  v12 = share_sheet_log();
  v13 = share_sheet_log();
  v14 = os_signpost_id_make_with_pointer(v13, self);

  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    activityTitle = [activity activityTitle];
    *buf = 138543362;
    v63 = activityTitle;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "UIActivityActionImageLoad", "%{public}@", buf, 0xCu);
  }

  _actionImage = [activity _actionImage];
  v17 = share_sheet_log();
  v18 = share_sheet_log();
  v19 = os_signpost_id_make_with_pointer(v18, self);

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v19, "UIActivityActionImageLoad", " enableTelemetry=YES ", buf, 2u);
  }

  cGImage = [_actionImage CGImage];
  if (!cGImage)
  {
    v21 = share_sheet_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      activityTitle2 = [activity activityTitle];
      *buf = 138412546;
      v63 = activityTitle2;
      v64 = 2112;
      *v65 = _actionImage;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@: imageRef is nil for %@ ", buf, 0x16u);
    }
  }

  v23 = &NSURLAuthenticationMethodServerTrust_ptr;
  +[CATransaction begin];
  v53 = configurationCopy;
  if ([configurationCopy instantShareSheet])
  {
    v24 = 0;
    v25 = 0.0;
  }

  else
  {
    helperConnection = [configurationCopy helperConnection];
    if (helperConnection)
    {
      activityTitle3 = [activity activityTitle];
      v28 = [SDShareSheetSlotManager nonBreakingActivityTitle:activityTitle3];

      tintColor = [configurationCopy tintColor];
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_1001A4E94;
      v58[3] = &unk_1008D2E00;
      v59 = helperConnection;
      v60 = v28;
      v61 = tintColor;
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_1001A4EA4;
      v54[3] = &unk_1008D2E28;
      v55 = v59;
      v30 = v60;
      v56 = v30;
      v31 = v61;
      v57 = v31;
      hostConfiguration = [configurationCopy hostConfiguration];
      [(SDShareSheetSlotManager *)self _uploadSlotWithVectorData:v58 cgImage:v54 performCATransaction:0 hostConfiguration:hostConfiguration];
      v24 = *buf;
      v25 = *&v65[2];

      if (!v24)
      {
        v33 = share_sheet_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412802;
          v63 = v30;
          v64 = 2112;
          *v65 = activity;
          *&v65[8] = 2112;
          v66 = v31;
          _os_log_fault_impl(&_mh_execute_header, v33, OS_LOG_TYPE_FAULT, "returned nil: CGImgForActionPlatterWithTitle:%@, in: %@, tintColor:%@", buf, 0x20u);
        }
      }

      v23 = &NSURLAuthenticationMethodServerTrust_ptr;
    }

    else
    {
      v30 = share_sheet_log();
      v25 = 0.0;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        sub_1001B296C();
      }

      v24 = 0;
    }
  }

  shareSheetContext = [(SDShareSheetSlotManager *)self shareSheetContext];
  if (cGImage)
  {
    v35 = [(SDShareSheetSlotManager *)self createSlotForContext:shareSheetContext];
    [shareSheetContext setObject:cGImage forSlot:v35];
    [proxyCopy setIconImageSlotID:v35];
  }

  if (v24)
  {
    accessibilityCache = [(SDShareSheetSlotManager *)self accessibilityCache];
    activityTitle4 = [activity activityTitle];
    [NSNumber numberWithUnsignedInt:v24];
    v52 = shareSheetContext;
    v38 = v24;
    selfCopy = self;
    v40 = proxyCopy;
    v41 = cGImage;
    v42 = activity;
    v43 = _actionImage;
    v45 = v44 = v23;
    [accessibilityCache setLabel:activityTitle4 forSlotID:v45];

    v23 = v44;
    _actionImage = v43;
    activity = v42;
    cGImage = v41;
    proxyCopy = v40;
    self = selfCopy;
    v24 = v38;
    shareSheetContext = v52;

    [proxyCopy setSlotTextHeight:v25];
    [proxyCopy setLabelSlotID:v24];
  }

  [v23[375] commit];
  v46 = share_sheet_log();
  v47 = share_sheet_log();
  v48 = os_signpost_id_make_with_pointer(v47, self);

  if (v48 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_INTERVAL_END, v48, "LoadActionActivityProxy", "", buf, 2u);
  }

  if (cGImage)
  {
    v49 = 0;
  }

  else
  {
    v49 = v24 == 0;
  }

  v50 = !v49;

  return v50;
}

+ (id)nonBreakingActivityTitle:(id)title
{
  titleCopy = title;
  v4 = titleCopy;
  if (!titleCopy)
  {
    titleCopy = &stru_1008EFBD0;
  }

  v5 = [(__CFString *)titleCopy mutableCopy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [&off_100910268 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(&off_100910268);
        }

        [v5 replaceOccurrencesOfString:*(*(&v11 + 1) + 8 * i) withString:&stru_1008EFBD0 options:2 range:{0, objc_msgSend(v5, "length")}];
      }

      v7 = [&off_100910268 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [v5 replaceOccurrencesOfString:@"\n" withString:@" " options:2 range:{0, objc_msgSend(v5, "length")}];

  return v5;
}

- (void)activityViewControllerWithSessionID:(id)d selectedActivityWithIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession objectForKeyedSubscript:dCopy];
  v10 = v9;
  if (v9)
  {
    shareActivitiesByUUID = [v9 shareActivitiesByUUID];
    v12 = [shareActivitiesByUUID objectForKeyedSubscript:identifierCopy];

    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Selected activity %@", buf, 0xCu);
    }

    recipients = [v10 recipients];
    v15 = [recipients count] == 0;

    if (v15)
    {
      suggestionBrowser = [v10 suggestionBrowser];
      activityType = [v12 activityType];
      [suggestionBrowser provideFeedbackForNodeAtIndex:0 bundleID:activityType selectedActionBundleID:0 abandoned:0];

      [(SDShareSheetSlotManager *)selfCopy _performSelectedActivity:v12 inSession:v10];
    }

    else
    {
      objc_initWeak(&location, selfCopy);
      v16 = share_sheet_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        recipients2 = [v10 recipients];
        activityType2 = [v12 activityType];
        *buf = 138412546;
        v28 = recipients2;
        v29 = 2112;
        v30 = activityType2;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Creating suggestion from provided recipients %@ and activity %@", buf, 0x16u);
      }

      recipients3 = [v10 recipients];
      activityType3 = [v12 activityType];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1001A53D8;
      v23[3] = &unk_1008D2E50;
      v23[4] = v10;
      v12 = v12;
      v24 = v12;
      objc_copyWeak(&v25, &location);
      [_TtC16DaemoniOSLibrary29SDSuggestionCreationUtilities retrieveSuggestionForRecipients:recipients3 inActivityType:activityType3 completionHandler:v23];

      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v12 = share_sheet_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1001B29A8();
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)_performSelectedActivity:(id)activity inSession:(id)session
{
  activityCopy = activity;
  sessionCopy = session;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  activityType = [activityCopy activityType];
  v9 = [activityType isEqualToString:UIActivityTypeUserDefaults];

  if (v9)
  {
    [(SDShareSheetSlotManager *)selfCopy _instructHostToPerformUserDefaultsActivityForCategory:1 session:sessionCopy];
    goto LABEL_11;
  }

  if ([activityCopy ss_shouldExecuteInShareSheet])
  {
    [(SDShareSheetSlotManager *)selfCopy _performServiceInitiatedActivityInServiceWithActivity:activityCopy session:sessionCopy];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    airDropPeople = activityCopy;
    [(SDShareSheetSlotManager *)selfCopy _instructHostToPerformExtensionActivity:airDropPeople session:sessionCopy];
LABEL_9:

    goto LABEL_11;
  }

  activityType2 = [activityCopy activityType];
  v12 = [activityType2 isEqualToString:UIActivityTypeAirDrop];

  if (v12)
  {
    airDropPeople = [sessionCopy airDropPeople];
    -[SDShareSheetSlotManager _instructHostToPerformAirDropActivityWithNoContentView:session:](selfCopy, "_instructHostToPerformAirDropActivityWithNoContentView:session:", [airDropPeople count] == 0, sessionCopy);
    goto LABEL_9;
  }

  [(SDShareSheetSlotManager *)selfCopy _instructHostToPerformHostActivity:activityCopy session:sessionCopy];
LABEL_11:
  objc_sync_exit(selfCopy);
}

- (void)activityViewControllerWithSessionID:(id)d selectedActionWithIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v8 = [(SDShareSheetSlotManager *)self getShareSheetSessionForSessionID:dCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!v8)
  {
    v11 = share_sheet_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1001B2AD4();
    }

    goto LABEL_8;
  }

  actionActivitiesByUUID = [v8 actionActivitiesByUUID];
  v11 = [actionActivitiesByUUID objectForKeyedSubscript:identifierCopy];

  suggestionBrowser = [v8 suggestionBrowser];
  activityType = [v11 activityType];
  [suggestionBrowser provideFeedbackForNodeAtIndex:0 bundleID:0 selectedActionBundleID:activityType abandoned:0];

  activityType2 = [v11 activityType];
  if ([activityType2 isEqualToString:UIActivityTypeUserDefaults])
  {

LABEL_7:
    [(SDShareSheetSlotManager *)selfCopy _instructHostToPerformUserDefaultsActivityForCategory:0 session:v8];
    goto LABEL_8;
  }

  activityType3 = [v11 activityType];
  v16 = [activityType3 isEqualToString:@"com.apple.UIKit.activity.ActionDefaults"];

  if (v16)
  {
    goto LABEL_7;
  }

  activityType4 = [v11 activityType];
  v22 = [activityType4 isEqualToString:@"com.apple.UIKit.activity.Share"];

  if (v22)
  {
    visibleActionActivities = [v8 visibleActionActivities];
    v24 = [visibleActionActivities mutableCopy];

    v25 = [v24 indexOfObject:v11];
    [v24 removeObject:v11];
    hostActionActivityProxies = [v8 hostActionActivityProxies];
    v27 = [hostActionActivityProxies mutableCopy];

    [v27 removeObjectAtIndex:v25];
    [v8 setHostActionActivityProxies:v27];
    [v8 setVisibleActionActivities:v24];
    [v8 setSharingExpanded:1];
    v28 = share_sheet_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "did expand sharing", buf, 2u);
    }

    [(SDShareSheetSlotManager *)selfCopy dataSourceDidUpdateForSession:v8 animated:1];
  }

  else if (([v11 ss_shouldExecuteInShareSheet]& 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v11;
      v18 = 1;
      v17 = v11;
      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v11;
      [(SDShareSheetSlotManager *)selfCopy _instructHostToPerformExtensionActivity:v11 session:v8];
    }

    else
    {
      [(SDShareSheetSlotManager *)selfCopy _instructHostToPerformHostActivity:v11 session:v8];
    }
  }

LABEL_8:
  v17 = 0;
  v18 = 0;
LABEL_9:

  objc_sync_exit(selfCopy);
  if (v8 && v18 && v17)
  {
    v19 = +[VCVoiceShortcutClient standardClient];
    identifier = [v17 identifier];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1001A5AE4;
    v29[3] = &unk_1008D2E78;
    v30 = v17;
    v31 = selfCopy;
    v32 = v8;
    [v19 generateSingleUseTokenForWorkflowIdentifier:identifier completion:v29];
  }
}

- (void)activityViewControllerWithSessionID:(id)d performActivityWithType:(id)type completionHandler:(id)handler
{
  dCopy = d;
  typeCopy = type;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v41 = dCopy;
  v10 = [(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession objectForKeyedSubscript:dCopy];
  v11 = v10;
  if (v10)
  {
    connection = [v10 connection];
    v40 = [connection valueForEntitlement:@"com.apple.sharing.sharesheet.perform-activity"];

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v40 BOOLValue])
    {
      if ([v11 sentInitialConfiguration])
      {
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        shareActivitiesByUUID = [v11 shareActivitiesByUUID];
        allKeys = [shareActivitiesByUUID allKeys];

        v15 = [allKeys countByEnumeratingWithState:&v48 objects:v55 count:16];
        if (v15)
        {
          v16 = *v49;
LABEL_7:
          v17 = 0;
          while (1)
          {
            if (*v49 != v16)
            {
              objc_enumerationMutation(allKeys);
            }

            v18 = *(*(&v48 + 1) + 8 * v17);
            shareActivitiesByUUID2 = [v11 shareActivitiesByUUID];
            v20 = [shareActivitiesByUUID2 objectForKeyedSubscript:v18];

            activityType = [v20 activityType];
            v22 = [activityType isEqualToString:typeCopy];

            if (v22)
            {
              break;
            }

            if (v15 == ++v17)
            {
              v15 = [allKeys countByEnumeratingWithState:&v48 objects:v55 count:16];
              if (v15)
              {
                goto LABEL_7;
              }

              goto LABEL_13;
            }
          }

          v26 = v18;

          if (v26)
          {
            goto LABEL_38;
          }

          v39 = 1;
        }

        else
        {
LABEL_13:

          v39 = 0;
        }

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        actionActivitiesByUUID = [v11 actionActivitiesByUUID];
        allKeys2 = [actionActivitiesByUUID allKeys];

        v29 = [allKeys2 countByEnumeratingWithState:&v44 objects:v54 count:16];
        if (v29)
        {
          v30 = *v45;
LABEL_29:
          v31 = 0;
          while (1)
          {
            if (*v45 != v30)
            {
              objc_enumerationMutation(allKeys2);
            }

            v32 = *(*(&v44 + 1) + 8 * v31);
            actionActivitiesByUUID2 = [v11 actionActivitiesByUUID];
            v34 = [actionActivitiesByUUID2 objectForKeyedSubscript:v32];

            activityType2 = [v34 activityType];
            v36 = [activityType2 isEqualToString:typeCopy];

            if (v36)
            {
              break;
            }

            if (v29 == ++v31)
            {
              v29 = [allKeys2 countByEnumeratingWithState:&v44 objects:v54 count:16];
              if (v29)
              {
                goto LABEL_29;
              }

              goto LABEL_35;
            }
          }

          v26 = v32;

          if (!v26)
          {
            goto LABEL_40;
          }

          if (!v39)
          {
            [(SDShareSheetSlotManager *)selfCopy activityViewControllerWithSessionID:v41 selectedActionWithIdentifier:v26];
            goto LABEL_39;
          }

LABEL_38:
          [(SDShareSheetSlotManager *)selfCopy activityViewControllerWithSessionID:v41 selectedActivityWithIdentifier:v26];
LABEL_39:
          v37 = 1;
        }

        else
        {
LABEL_35:

LABEL_40:
          v38 = share_sheet_log();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            sub_1001B2C24();
          }

          v37 = 0;
          v26 = 0;
        }

        handlerCopy[2](handlerCopy, v37, 0);
      }

      else
      {
        v25 = share_sheet_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v53 = typeCopy;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Waiting to perform activity with type:%@ until configuration is done...", buf, 0xCu);
        }

        [v11 setPerformActivityType:typeCopy];
        [v11 setPerformActivityCompletionHandler:handlerCopy];
      }
    }

    else
    {
      v23 = share_sheet_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1001B2BE8();
      }

      handlerCopy[2](handlerCopy, 0, 0);
    }
  }

  else
  {
    v24 = share_sheet_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      sub_1001B2C60();
    }

    handlerCopy[2](handlerCopy, 0, 0);
  }

  objc_sync_exit(selfCopy);
}

- (void)activityViewControllerWithSessionID:(id)d findSupportedActivitiesWithCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v22 = dCopy;
  v8 = [(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession objectForKeyedSubscript:dCopy];
  v25 = v8;
  if (v8)
  {
    connection = [v8 connection];
    v24 = [connection valueForEntitlement:@"com.apple.sharing.sharesheet.perform-activity"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v24 BOOLValue] & 1) == 0)
    {
      v19 = share_sheet_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1001B2BE8();
      }

      v10 = +[NSArray array];
      handlerCopy[2](handlerCopy, v10, 0);
      goto LABEL_16;
    }

    if ([v25 sentInitialConfiguration])
    {
      v10 = +[NSMutableArray array];
      [v25 orderedPresentableActivities];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v11 = v28 = 0u;
      v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v12)
      {
        v13 = *v28;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v28 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v27 + 1) + 8 * i);
            activityType = [v15 activityType];
            v17 = [SFShareSheetRemoteActivity sharingServiceWithIdentifier:activityType];

            activityTitle = [v15 activityTitle];
            [v17 setTitle:activityTitle];

            [v10 addObject:v17];
          }

          v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v12);
      }

      handlerCopy[2](handlerCopy, v10, 0);
LABEL_16:

      goto LABEL_20;
    }

    v21 = share_sheet_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Waiting to find supported activities until configuration is done...", buf, 2u);
    }

    [v25 setFindSupportedActivitiesCompletionHandler:handlerCopy];
  }

  else
  {
    v20 = share_sheet_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_1001B2CC8();
    }

    v24 = +[NSArray array];
    handlerCopy[2](handlerCopy, v24, 0);
  }

LABEL_20:

  objc_sync_exit(selfCopy);
}

- (void)canShareFileURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if ([lCopy isFileURL])
  {
    currentConnection = [(SDShareSheetSlotManager *)self currentConnection];
    v8 = [currentConnection sd_connectionCanShareURL:lCopy];
  }

  else
  {
    v8 = 1;
  }

  handlerCopy[2](handlerCopy, v8);
}

- (void)activityViewControllerWithSessionID:(id)d provideFeedbackForPeopleSuggestionWithIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession objectForKeyedSubscript:dCopy];
  v10 = v9;
  if (v9)
  {
    suggestionBrowser = [v9 suggestionBrowser];
    [suggestionBrowser provideFeedbackForPeopleSuggestionIdentifier:identifierCopy];
  }

  else
  {
    suggestionBrowser = share_sheet_log();
    if (os_log_type_enabled(suggestionBrowser, OS_LOG_TYPE_FAULT))
    {
      sub_1001B2D30();
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)activityViewControllerWithSessionID:(id)d selectedPersonWithIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession objectForKeyedSubscript:dCopy];
  if (v9)
  {
    objc_sync_exit(selfCopy);

    v10 = [v9 airdropNodeForIdentifier:identifierCopy];
    if (v10)
    {
      [(SDShareSheetSlotManager *)selfCopy _handleSelectedNode:v10 session:v9];
    }

    else
    {
      v12 = share_sheet_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1001B2D98();
      }
    }

    selfCopy = v10;
  }

  else
  {
    v11 = share_sheet_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1001B2D30();
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)_handleSelectedNode:(id)node session:(id)session
{
  nodeCopy = node;
  sessionCopy = session;
  transportBundleID = [nodeCopy transportBundleID];
  if ([nodeCopy isSuggestion])
  {
    obj = self;
    objc_sync_enter(obj);
    [sessionCopy setSelectedRecipient:nodeCopy];
    suggestionIndex = [nodeCopy suggestionIndex];
    v7 = [_UIActivityHelper activityTypeForBundleIdentifier:transportBundleID];
    v76 = v7;
    if (v7)
    {
      if (v7 == UIActivityTypeMessage)
      {
        v8 = share_sheet_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          realName = [nodeCopy realName];
          displayName = [nodeCopy displayName];
          formattedHandles = [nodeCopy formattedHandles];
          *buf = 138412802;
          *&buf[4] = realName;
          *&buf[12] = 2112;
          *&buf[14] = displayName;
          *&buf[22] = 2112;
          v89 = formattedHandles;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Messages recipient selected with GUID %@, group name %@, and handles %@", buf, 0x20u);
        }
      }

      else
      {
        v8 = share_sheet_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          formattedHandles2 = [nodeCopy formattedHandles];
          v10 = formattedHandles2;
          if (v76 == UIActivityTypeMail)
          {
            v11 = @"Mail";
          }

          else
          {
            v11 = @"SharePlay";
          }

          *buf = 138412546;
          *&buf[4] = v11;
          *&buf[12] = 2112;
          *&buf[14] = formattedHandles2;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ recipient selected with handles %@", buf, 0x16u);
        }
      }

      suggestionBrowser = [sessionCopy suggestionBrowser];
      [suggestionBrowser provideFeedbackForNodeAtIndex:suggestionIndex bundleID:transportBundleID selectedActionBundleID:0 abandoned:0];

      [(SDShareSheetSlotManager *)obj notifySession:sessionCopy personSelectedWithActivityType:v76];
LABEL_46:

      objc_sync_exit(obj);
      goto LABEL_52;
    }

    v85 = 0;
    v27 = [[LSApplicationRecord alloc] initWithBundleIdentifier:transportBundleID allowPlaceholder:1 error:&v85];
    v70 = v85;
    v73 = v27;
    if (v27)
    {
      v72 = 0;
      v69 = 0;
    }

    else
    {
      v84 = 0;
      v72 = [[LSApplicationExtensionRecord alloc] initWithBundleIdentifier:transportBundleID requireValid:0 platform:dyld_get_active_platform() error:&v84];
      v69 = v84;
      if (!v72)
      {
        v42 = share_sheet_log();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412802;
          *&buf[4] = transportBundleID;
          *&buf[12] = 2112;
          *&buf[14] = v70;
          *&buf[22] = 2112;
          v89 = v69;
          _os_log_fault_impl(&_mh_execute_header, v42, OS_LOG_TYPE_FAULT, "Got no application or extension record for %@ with errors %@ and %@", buf, 0x20u);
        }

        v72 = 0;
        v49 = 0;
        activityType2 = 0;
LABEL_43:

        v50 = share_sheet_log();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          displayName2 = [nodeCopy displayName];
          *buf = 138412802;
          *&buf[4] = activityType2;
          *&buf[12] = 2112;
          *&buf[14] = displayName2;
          *&buf[22] = 2112;
          v89 = transportBundleID;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%@ recipient %@ selected for corresponding bundleID %@", buf, 0x20u);
        }

        suggestionBrowser2 = [sessionCopy suggestionBrowser];
        [suggestionBrowser2 provideFeedbackForNodeAtIndex:suggestionIndex bundleID:activityType2 selectedActionBundleID:0 abandoned:0];

        [(SDShareSheetSlotManager *)obj notifySession:sessionCopy activitySelected:v49];
        goto LABEL_46;
      }
    }

    shareActivitiesInUserOrder = [sessionCopy shareActivitiesInUserOrder];
    hiddenActivities = [sessionCopy hiddenActivities];
    v38 = [shareActivitiesInUserOrder arrayByAddingObjectsFromArray:hiddenActivities];

    applicationExtensionRecords = [v73 applicationExtensionRecords];
    v40 = applicationExtensionRecords;
    if (applicationExtensionRecords)
    {
      v71 = applicationExtensionRecords;
    }

    else
    {
      v71 = [NSSet setWithObject:v72];
    }

    v41 = [v71 valueForKey:@"effectiveBundleIdentifier"];
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v42 = v38;
    activityType2 = [v42 countByEnumeratingWithState:&v80 objects:v87 count:16];
    if (activityType2)
    {
      v44 = *v81;
      while (2)
      {
        for (i = 0; i != activityType2; i = i + 1)
        {
          if (*v81 != v44)
          {
            objc_enumerationMutation(v42);
          }

          v46 = *(*(&v80 + 1) + 8 * i);
          activityType = [v46 activityType];
          v48 = [v41 containsObject:activityType];

          if (v48)
          {
            activityType2 = [v46 activityType];
            v49 = v46;
            goto LABEL_42;
          }
        }

        activityType2 = [v42 countByEnumeratingWithState:&v80 objects:v87 count:16];
        if (activityType2)
        {
          continue;
        }

        break;
      }
    }

    v49 = 0;
LABEL_42:

    goto LABEL_43;
  }

  v12 = share_sheet_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    displayName3 = [nodeCopy displayName];
    *buf = 138412290;
    *&buf[4] = displayName3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "AirDrop node with display name %@ selected", buf, 0xCu);
  }

  v14 = +[SDStatusMonitor sharedMonitor];
  wirelessEnabled = [v14 wirelessEnabled];

  if (wirelessEnabled)
  {
    transferNodes = [sessionCopy transferNodes];
    realName2 = [nodeCopy realName];
    v18 = [transferNodes objectForKeyedSubscript:realName2];

    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (v18 == nodeCopy)
    {
      v32 = share_sheet_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Transfer to this node already in progress, cancelling.", buf, 2u);
      }

      [sessionCopy cancelAirDropForNode:nodeCopy];
      hostConfiguration = [sessionCopy hostConfiguration];
      hostLocale = [hostConfiguration hostLocale];
      v77 = [nodeCopy displayNameForLocale:hostLocale];

      if ([sessionCopy skipSlotsRendering])
      {
        v35 = [[SFProxyText alloc] initWithText:v77];
      }

      else
      {
        hostConfiguration2 = [sessionCopy hostConfiguration];
        v54 = [SDShareSheetSession labelColorWithHostConfiguration:hostConfiguration2];

        +[CATransaction begin];
        memset(buf, 0, sizeof(buf));
        isClassroom = [nodeCopy isClassroom];
        xpcHelperCnx = [sessionCopy xpcHelperCnx];
        hostConfiguration3 = [sessionCopy hostConfiguration];
        [(SDShareSheetSlotManager *)selfCopy _createNameLabelSlotWithString:v77 textColor:v54 maximumNumberOfLines:2 isAirDrop:0 ignoreNameWrapping:isClassroom sessionConnection:xpcHelperCnx hostConfig:hostConfiguration3];

        +[CATransaction commit];
        displayName4 = [nodeCopy displayName];

        if (displayName4)
        {
          accessibilityCache = [(SDShareSheetSlotManager *)selfCopy accessibilityCache];
          displayName5 = [nodeCopy displayName];
          v61 = [NSNumber numberWithUnsignedInt:*buf];
          [accessibilityCache setLabel:displayName5 forSlotID:v61];
        }

        v62 = [SFProxyText alloc];
        v35 = [v62 initWithSlotIdentifier:*buf];
      }

      realNameToNodeID = [sessionCopy realNameToNodeID];
      realName3 = [nodeCopy realName];
      v65 = [realNameToNodeID objectForKeyedSubscript:realName3];

      v66 = [[SFAirDropTransferChange alloc] initWithState:5 progress:v65 proxyIdentifier:v35 displayName:0 status:0.0];
      [(SDShareSheetSlotManager *)selfCopy notifySession:sessionCopy withAirDropTransferChange:v66];
      transferNodes2 = [sessionCopy transferNodes];
      realName4 = [nodeCopy realName];
      [transferNodes2 removeObjectForKey:realName4];

      [sessionCopy setFiredImpactHaptic:0];
      [sessionCopy setTransferActive:0];
      [sessionCopy setLastTransferEvent:4];

      objc_sync_exit(selfCopy);
    }

    else
    {
      [sessionCopy setTransferActive:1];
      selectionHaptic = [sessionCopy selectionHaptic];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001A72DC;
      block[3] = &unk_1008CDEA0;
      block[4] = selectionHaptic;
      dispatch_async(&_dispatch_main_q, block);
      realName5 = [nodeCopy realName];

      if (realName5)
      {
        transferNodes3 = [sessionCopy transferNodes];
        realName6 = [nodeCopy realName];
        [transferNodes3 setObject:nodeCopy forKeyedSubscript:realName6];
      }

      [sessionCopy setSelectedRecipient:0];
      suggestionBrowser3 = [sessionCopy suggestionBrowser];
      [suggestionBrowser3 provideFeedbackForNodeAtIndex:&off_10090BE98 bundleID:transportBundleID selectedActionBundleID:0 abandoned:0];

      objc_sync_exit(selfCopy);
      endpointUUID = [nodeCopy endpointUUID];
      [(SDShareSheetSlotManager *)selfCopy requestAirDropItemsForNode:nodeCopy endpointUUID:endpointUUID session:sessionCopy];
      selfCopy = endpointUUID;
    }
  }

  else
  {
    v26 = share_sheet_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "WiFi is Off. Presenting AirDrop UI to request WiFi access.", buf, 2u);
    }

    [(SDShareSheetSlotManager *)self _instructHostToPerformAirDropActivityWithNoContentView:0 session:sessionCopy];
  }

LABEL_52:
}

- (void)activityViewControllerWithSessionID:(id)d removedPersonWithIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = selfCopy;
  v39 = dCopy;
  v9 = [(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession objectForKeyedSubscript:dCopy];
  v40 = v9;
  if (v9)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    suggestedPeople = [v9 suggestedPeople];
    v11 = [suggestedPeople countByEnumeratingWithState:&v41 objects:v55 count:16];
    if (v11)
    {
      v12 = *v42;
      while (2)
      {
        for (i = 0; i != v11; i = (i + 1))
        {
          if (*v42 != v12)
          {
            objc_enumerationMutation(suggestedPeople);
          }

          v14 = *(*(&v41 + 1) + 8 * i);
          nodeIdentifier = [v14 nodeIdentifier];
          v16 = [nodeIdentifier isEqual:identifierCopy];

          if (v16)
          {
            v11 = v14;
            goto LABEL_12;
          }
        }

        v11 = [suggestedPeople countByEnumeratingWithState:&v41 objects:v55 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    suggestionBrowser = [v40 suggestionBrowser];
    realName = [v11 realName];
    [suggestionBrowser suggestLessPeopleSuggestionIdentifier:realName];

    v19 = share_sheet_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      nodeIdentifier2 = [v11 nodeIdentifier];
      *buf = 138412546;
      v46 = v11;
      v47 = 2112;
      v48 = nodeIdentifier2;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Asked to remove node:%@ with identifier:%@", buf, 0x16u);
    }

    v21 = share_sheet_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      transportBundleID = [v11 transportBundleID];
      realName2 = [v11 realName];
      actualHandles = [v11 actualHandles];
      contactIDs = [v11 contactIDs];
      derivedIntentIdentifier = [v11 derivedIntentIdentifier];
      *buf = 138413314;
      v46 = transportBundleID;
      v47 = 2112;
      v48 = realName2;
      v49 = 2112;
      v50 = actualHandles;
      v51 = 2112;
      v52 = contactIDs;
      v53 = 2112;
      v54 = derivedIntentIdentifier;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "bundleIDs:%@, conversationID:%@, handles:%@, contactIDs:%@, derivedIntentIdentifier:%@", buf, 0x34u);
    }

    v37 = +[_PSSuggesterConfiguration defaultConfiguration];
    v36 = [[_PSSuggester alloc] initWithDaemonUsingConfiguration:v37];
    v27 = [_PSShareSheetSuggestLessFeedback alloc];
    transportBundleID2 = [v11 transportBundleID];
    realName3 = [v11 realName];
    derivedIntentIdentifier2 = [v11 derivedIntentIdentifier];
    actualHandles2 = [v11 actualHandles];
    anyObject = [actualHandles2 anyObject];
    contactIDs2 = [v11 contactIDs];
    anyObject2 = [contactIDs2 anyObject];
    v35 = [v27 initWithBundleId:transportBundleID2 conversationId:realName3 derivedIntentId:derivedIntentIdentifier2 handle:anyObject contactId:anyObject2];

    [v36 provideSuggestLessFeedbackForShareSheetSuggestion:v35];
  }

  else
  {
    v11 = share_sheet_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1001B2D30();
    }
  }

  objc_sync_exit(obj);
}

- (void)activityViewControllerWithSessionID:(id)d didLongPressShareActivityWithIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = selfCopy;
  v26 = dCopy;
  v8 = [(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession objectForKeyedSubscript:dCopy];
  v9 = v8;
  if (v8)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    shareActivities = [v8 shareActivities];
    v11 = [shareActivities countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v11)
    {
      v12 = *v33;
      while (2)
      {
        for (i = 0; i != v11; i = (i + 1))
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(shareActivities);
          }

          v14 = *(*(&v32 + 1) + 8 * i);
          activityUUID = [v14 activityUUID];
          v16 = [activityUUID isEqual:identifierCopy];

          if (v16)
          {
            v11 = v14;
            goto LABEL_12;
          }
        }

        v11 = [shareActivities countByEnumeratingWithState:&v32 objects:v39 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    bundleIDToActivities = [v9 bundleIDToActivities];
    v18 = [bundleIDToActivities countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v18)
    {
      v19 = *v29;
LABEL_14:
      v20 = 0;
      while (1)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(bundleIDToActivities);
        }

        v21 = *(*(&v28 + 1) + 8 * v20);
        bundleIDToActivities2 = [v9 bundleIDToActivities];
        v23 = [bundleIDToActivities2 objectForKeyedSubscript:v21];

        if ([v23 containsObject:v11])
        {
          if (([v21 isEqualToString:@"noBundleID"] & 1) == 0)
          {
            break;
          }
        }

        if (v18 == ++v20)
        {
          v18 = [bundleIDToActivities countByEnumeratingWithState:&v28 objects:v38 count:16];
          if (v18)
          {
            goto LABEL_14;
          }

          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_21:
      v23 = 0;
    }

    v24 = share_sheet_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Should present activities %@", buf, 0xCu);
    }
  }

  else
  {
    v11 = share_sheet_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1001B2D30();
    }
  }

  objc_sync_exit(obj);
}

- (void)_performServiceInitiatedActivityInServiceWithActivity:(id)activity session:(id)session
{
  activityCopy = activity;
  sessionCopy = session;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ss_activityTypeToReportToHost = [activityCopy ss_activityTypeToReportToHost];
  ss_activitySpecificExtensionItemDataRequestInfo = [activityCopy ss_activitySpecificExtensionItemDataRequestInfo];
  v11 = [UISUIActivityExtensionItemDataRequest requestForActivity:activityCopy activityType:ss_activityTypeToReportToHost activitySpecificMetadata:ss_activitySpecificExtensionItemDataRequestInfo];

  connection = [sessionCopy connection];
  v13 = [(SDShareSheetSlotManager *)selfCopy _remoteObjectProxyForConnection:connection];

  didFinishPerformingActivityHandler = [activityCopy didFinishPerformingActivityHandler];
  activityUUID = [activityCopy activityUUID];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001A7CC0;
  v22[3] = &unk_1008D2EA0;
  v16 = didFinishPerformingActivityHandler;
  v25 = v16;
  v17 = v13;
  v23 = v17;
  v18 = activityUUID;
  v24 = v18;
  [activityCopy setDidFinishPerformingActivityHandler:v22];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001A7D54;
  v20[3] = &unk_1008D2EC8;
  v19 = activityCopy;
  v21 = v19;
  [v17 willPerformInServiceActivityWithRequest:v11 completion:v20];

  objc_sync_exit(selfCopy);
}

- (id)_activityWithActivityType:(id)type session:(id)session
{
  typeCopy = type;
  sessionCopy = session;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  shareActivitiesInUserOrder = [sessionCopy shareActivitiesInUserOrder];
  v10 = [shareActivitiesInUserOrder countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v10)
  {
    v11 = *v27;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(shareActivitiesInUserOrder);
      }

      v13 = *(*(&v26 + 1) + 8 * v12);
      activityType = [v13 activityType];
      v15 = [activityType isEqualToString:typeCopy];

      if (v15)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [shareActivitiesInUserOrder countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    shareActivitiesInUserOrder = [sessionCopy hiddenActivities];
    v16 = [shareActivitiesInUserOrder countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (!v16)
    {
      goto LABEL_19;
    }

    v17 = *v23;
LABEL_11:
    v18 = 0;
    while (1)
    {
      if (*v23 != v17)
      {
        objc_enumerationMutation(shareActivitiesInUserOrder);
      }

      v13 = *(*(&v22 + 1) + 8 * v18);
      activityType2 = [v13 activityType];
      v20 = [activityType2 isEqualToString:typeCopy];

      if (v20)
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [shareActivitiesInUserOrder countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v16)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }
  }

  v16 = v13;
LABEL_19:

  objc_sync_exit(selfCopy);

  return v16;
}

- (void)activityViewControllerWithSessionID:(id)d toggledActivityWithIdentifier:(id)identifier activityCategory:(int64_t)category
{
  dCopy = d;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = [(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession objectForKeyedSubscript:dCopy];
  v12 = v11;
  if (v11)
  {
    if (category == 1)
    {
      shareActivitiesByUUID = [v11 shareActivitiesByUUID];
      v14 = [shareActivitiesByUUID objectForKeyedSubscript:identifierCopy];

      shareUserDefaults = [(SDShareSheetSlotManager *)selfCopy shareUserDefaults];
      LODWORD(shareActivitiesByUUID) = [shareUserDefaults activityIsHidden:v14];

      shareUserDefaults2 = [(SDShareSheetSlotManager *)selfCopy shareUserDefaults];
      [shareUserDefaults2 setActivity:v14 asHidden:shareActivitiesByUUID ^ 1];

      [(SDShareSheetSlotManager *)selfCopy shareActivityUserDefaultsDidChangeWithSession:v12];
    }

    else
    {
      actionActivitiesByUUID = [v11 actionActivitiesByUUID];
      v14 = [actionActivitiesByUUID objectForKeyedSubscript:identifierCopy];

      actionUserDefaults = [(SDShareSheetSlotManager *)selfCopy actionUserDefaults];
      LODWORD(actionActivitiesByUUID) = [actionUserDefaults activityIsHidden:v14];

      actionUserDefaults2 = [(SDShareSheetSlotManager *)selfCopy actionUserDefaults];
      [actionUserDefaults2 setActivity:v14 asHidden:actionActivitiesByUUID ^ 1];

      [(SDShareSheetSlotManager *)selfCopy actionActivityUserDefaultsDidChangeWithSession:v12];
    }
  }

  else
  {
    v14 = share_sheet_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1001B2EA8();
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)activityViewControllerWithSessionID:(id)d favoritedActivity:(BOOL)activity withIdentifier:(id)identifier activityCategory:(int64_t)category
{
  dCopy = d;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = [(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession objectForKeyedSubscript:dCopy];
  v13 = v12;
  if (v12)
  {
    if (category == 1)
    {
      shareActivitiesByUUID = [v12 shareActivitiesByUUID];
      v15 = [shareActivitiesByUUID objectForKeyedSubscript:identifierCopy];

      favoriteApps = [v13 favoriteApps];
      v17 = [favoriteApps mutableCopy];
      if ([favoriteApps containsObject:v15])
      {
        [v17 removeObject:v15];
        shareUserDefaults = [(SDShareSheetSlotManager *)selfCopy shareUserDefaults];
        activityType = [v15 activityType];
        [shareUserDefaults removeActivityTypeFromDefaults:activityType];
      }

      else
      {
        [v17 addObject:v15];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          shareUserDefaults2 = [(SDShareSheetSlotManager *)selfCopy shareUserDefaults];
          [shareUserDefaults2 setActivity:v15 asHidden:0];
        }

        shareUserDefaults = [(SDShareSheetSlotManager *)selfCopy shareUserDefaults];
        [shareUserDefaults updateUserActivityOrderWithOrderedPartialActivities:v17];
      }

      [v13 setFavoriteApps:v17];
      [(SDShareSheetSlotManager *)selfCopy shareActivityUserDefaultsDidChangeWithSession:v13];
    }

    else
    {
      actionActivitiesByUUID = [v12 actionActivitiesByUUID];
      v15 = [actionActivitiesByUUID objectForKeyedSubscript:identifierCopy];

      favoriteApps = [v13 favoriteActions];
      v17 = [favoriteApps mutableCopy];
      if ([favoriteApps containsObject:v15])
      {
        [v17 removeObject:v15];
        actionUserDefaults = [(SDShareSheetSlotManager *)selfCopy actionUserDefaults];
        activityType2 = [v15 activityType];
        [actionUserDefaults removeActivityTypeFromDefaults:activityType2];
      }

      else
      {
        [v17 addObject:v15];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          actionUserDefaults2 = [(SDShareSheetSlotManager *)selfCopy actionUserDefaults];
          [actionUserDefaults2 setActivity:v15 asHidden:0];
        }

        actionUserDefaults = [(SDShareSheetSlotManager *)selfCopy actionUserDefaults];
        [actionUserDefaults updateUserActivityOrderWithOrderedPartialActivities:v17];
      }

      [v13 setFavoriteActions:v17];
      [(SDShareSheetSlotManager *)selfCopy actionActivityUserDefaultsDidChangeWithSession:v13];
    }
  }

  else
  {
    v15 = share_sheet_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1001B2F10();
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)activityViewControllerWithSessionID:(id)d updatedFavoritesProxies:(id)proxies activityCategory:(int64_t)category
{
  dCopy = d;
  proxiesCopy = proxies;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v30 = dCopy;
  v10 = [(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession objectForKeyedSubscript:dCopy];
  if (v10)
  {
    if (category == 1)
    {
      v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [proxiesCopy count]);
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v12 = proxiesCopy;
      v13 = [v12 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v13)
      {
        v14 = *v37;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v37 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v36 + 1) + 8 * i);
            shareActivitiesByUUID = [v10 shareActivitiesByUUID];
            identifier = [v16 identifier];
            v19 = [shareActivitiesByUUID objectForKeyedSubscript:identifier];
            [v11 addObject:v19];
          }

          v13 = [v12 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v13);
      }

      [v10 setFavoriteApps:v11];
      shareUserDefaults = [(SDShareSheetSlotManager *)selfCopy shareUserDefaults];
      [shareUserDefaults updateUserActivityOrderWithOrderedPartialActivities:v11];

      [(SDShareSheetSlotManager *)selfCopy shareActivityUserDefaultsDidChangeWithSession:v10];
    }

    else
    {
      v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [proxiesCopy count]);
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v21 = proxiesCopy;
      v22 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v22)
      {
        v23 = *v33;
        do
        {
          for (j = 0; j != v22; j = j + 1)
          {
            if (*v33 != v23)
            {
              objc_enumerationMutation(v21);
            }

            v25 = *(*(&v32 + 1) + 8 * j);
            actionActivitiesByUUID = [v10 actionActivitiesByUUID];
            identifier2 = [v25 identifier];
            v28 = [actionActivitiesByUUID objectForKeyedSubscript:identifier2];
            [v11 addObject:v28];
          }

          v22 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v22);
      }

      [v10 setFavoriteActions:v11];
      actionUserDefaults = [(SDShareSheetSlotManager *)selfCopy actionUserDefaults];
      [actionUserDefaults updateUserActivityOrderWithOrderedPartialActivities:v11];

      [(SDShareSheetSlotManager *)selfCopy actionActivityUserDefaultsDidChangeWithSession:v10];
    }
  }

  else
  {
    v11 = share_sheet_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1001B2F78();
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)activityViewControllerWithSessionID:(id)d selectedDefaultActivityWithIdentifier:(id)identifier activityCategory:(int64_t)category
{
  dCopy = d;
  identifierCopy = identifier;
  v10 = [(SDShareSheetSlotManager *)self getShareSheetSessionForSessionID:dCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!v10)
  {
    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1001B2FE0();
    }

    goto LABEL_7;
  }

  if (category != 1)
  {
    actionActivitiesByUUID = [v10 actionActivitiesByUUID];
    v19 = [actionActivitiesByUUID objectForKeyedSubscript:identifierCopy];

    activityType = [v19 activityType];
    if ([activityType isEqualToString:UIActivityTypeUserDefaults])
    {
    }

    else
    {
      activityType2 = [v19 activityType];
      v22 = [activityType2 isEqualToString:@"com.apple.UIKit.activity.ActionDefaults"];

      if (!v22)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v19;
          v17 = 1;
          goto LABEL_15;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = v19;
          [(SDShareSheetSlotManager *)selfCopy _instructHostToPerformExtensionActivity:v28 session:v10];
        }

        else
        {
          [(SDShareSheetSlotManager *)selfCopy _instructHostToPerformHostActivity:v19 session:v10];
        }

LABEL_14:
        v16 = 0;
        v17 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    [(SDShareSheetSlotManager *)selfCopy _instructHostToPerformUserDefaultsActivityForCategory:0 session:v10];
    goto LABEL_14;
  }

  shareActivitiesByUUID = [v10 shareActivitiesByUUID];
  v13 = [shareActivitiesByUUID objectForKeyedSubscript:identifierCopy];

  activityType3 = [v13 activityType];
  v15 = [activityType3 isEqualToString:UIActivityTypeUserDefaults];

  if (v15)
  {
    [(SDShareSheetSlotManager *)selfCopy _instructHostToPerformUserDefaultsActivityForCategory:1 session:v10];
  }

  else if ([v13 ss_shouldExecuteInShareSheet])
  {
    [(SDShareSheetSlotManager *)selfCopy _performServiceInitiatedActivityInServiceWithActivity:v13 session:v10];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      airDropPeople = v13;
      [(SDShareSheetSlotManager *)selfCopy _instructHostToPerformExtensionActivity:airDropPeople session:v10];
    }

    else
    {
      activityType4 = [v13 activityType];
      v27 = [activityType4 isEqualToString:UIActivityTypeAirDrop];

      if (!v27)
      {
        [(SDShareSheetSlotManager *)selfCopy _instructHostToPerformHostActivity:v13 session:v10];
        goto LABEL_7;
      }

      airDropPeople = [v10 airDropPeople];
      [(SDShareSheetSlotManager *)selfCopy _instructHostToPerformAirDropActivityWithNoContentView:[airDropPeople count]== 0 session:v10];
    }
  }

LABEL_7:

  v16 = 0;
  v17 = 0;
LABEL_16:
  objc_sync_exit(selfCopy);

  if (v10 && v17 && v16)
  {
    v23 = +[VCVoiceShortcutClient standardClient];
    identifier = [v16 identifier];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1001A8C94;
    v29[3] = &unk_1008D2E78;
    v30 = v16;
    v31 = selfCopy;
    v32 = v10;
    [v23 generateSingleUseTokenForWorkflowIdentifier:identifier completion:v29];
  }
}

- (void)activityViewControllerDidAppearWithSessionID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession objectForKeyedSubscript:dCopy];
  v7 = v6;
  if (v6)
  {
    [v6 setIsForeground:1];
    objc_sync_exit(selfCopy);

    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = dCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "activityViewControllerDidAppear: for session ID %@", buf, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001A910C;
    block[3] = &unk_1008CDEA0;
    v11 = v7;
    dispatch_async(&_dispatch_main_q, block);
    selfCopy = v11;
  }

  else
  {
    v9 = share_sheet_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1001B315C();
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)activityViewControllerDidDisappearWithSessionID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession objectForKeyedSubscript:dCopy];
  if (v6)
  {
    objc_sync_exit(selfCopy);

    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = dCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "activityViewControllerDidDisappear: for session ID %@", buf, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001A9344;
    block[3] = &unk_1008CDEA0;
    v10 = v6;
    dispatch_async(&_dispatch_main_q, block);
    selfCopy = v10;
  }

  else
  {
    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1001B31C4();
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)activityViewControllerSessionDidEndWithSessionID:(id)d testingSnapshot:(id)snapshot completionHandler:(id)handler
{
  dCopy = d;
  snapshotCopy = snapshot;
  handlerCopy = handler;
  v11 = _os_feature_enabled_impl();
  if (snapshotCopy && (v11 & 1) != 0)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v13 = [(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession objectForKeyedSubscript:dCopy];
    if (v13)
    {
      objc_sync_exit(selfCopy);

      v14 = share_sheet_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = dCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "activityViewControllerSessionDidEnd: for session ID %@", &v19, 0xCu);
      }

      testingSnapshot = [v13 testingSnapshot];

      if (testingSnapshot)
      {
        testingSnapshot2 = [v13 testingSnapshot];
        [snapshotCopy updateFromSnapshot:testingSnapshot2];
      }

      testingReferenceSnapshot = [v13 testingReferenceSnapshot];
      [(SDShareSheetSlotManager *)selfCopy _saveSnapshotToFile:snapshotCopy withReferenceSnapshot:testingReferenceSnapshot sessionID:dCopy completionHandler:handlerCopy];
      selfCopy = testingReferenceSnapshot;
    }

    else
    {
      v18 = share_sheet_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        sub_1001B322C();
      }

      objc_sync_exit(selfCopy);
    }
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)activityViewControllerDidEnterBackgroundWithSessionID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession objectForKeyedSubscript:dCopy];
  v7 = v6;
  if (v6)
  {
    [v6 setIsForeground:0];
    objc_sync_exit(selfCopy);

    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = dCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "activityViewControllerDidEnterBackground: for session ID %@", buf, 0xCu);
    }

    xpcHelperCnx = [v7 xpcHelperCnx];
    [xpcHelperCnx setSessionKeepAliveTransactionIdentifier:0];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001A9790;
    block[3] = &unk_1008CDEA0;
    v12 = v7;
    dispatch_async(&_dispatch_main_q, block);
    selfCopy = v12;
  }

  else
  {
    v10 = share_sheet_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1001B3294();
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)activityViewControllerWillEnterForegroundWithSessionID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession objectForKeyedSubscript:dCopy];
  v7 = v6;
  if (v6)
  {
    [v6 setIsForeground:1];
    objc_sync_exit(selfCopy);

    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = dCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "activityViewControllerWillEnterForeground: for session ID %@", buf, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001A99B8;
    block[3] = &unk_1008CDEA0;
    v11 = v7;
    dispatch_async(&_dispatch_main_q, block);
    selfCopy = v11;
  }

  else
  {
    v9 = share_sheet_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1001B32FC();
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)activityViewControllerPerformEditActionsWithSessionID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession objectForKeyedSubscript:dCopy];
  if (v6)
  {
    [(SDShareSheetSlotManager *)selfCopy _instructHostToPerformUserDefaultsActivityForCategory:0 session:v6];
  }

  else
  {
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1001B3364();
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)shareActivityUserDefaultsDidChangeWithSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = selfCopy;
  shareUserDefaults = [(SDShareSheetSlotManager *)selfCopy shareUserDefaults];
  shareActivities = [sessionCopy shareActivities];
  v7 = [shareUserDefaults activitiesOrderedByUserActivityOrderForActivities:shareActivities];

  [sessionCopy setShareActivitiesInUserOrder:v7];
  if (_os_feature_enabled_impl())
  {
    v8 = [SDShareSheetSlotManager _groupActivitiesByBundleID:v7];
    [sessionCopy setBundleIDToActivities:v8];

    bundleIDToActivities = [sessionCopy bundleIDToActivities];
    v10 = [(SDShareSheetSlotManager *)obj _removeSecondaryActivities:v7 bundleIDToActivities:bundleIDToActivities];

    urlBeingShared = [sessionCopy urlBeingShared];
    v7 = [(SDShareSheetSlotManager *)obj _moveDefaultApplicationToFrontForURL:urlBeingShared activities:v10];
  }

  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1001AA038;
  v44[3] = &unk_1008D2C70;
  v44[4] = obj;
  v12 = [NSPredicate predicateWithBlock:v44];
  v13 = [v7 filteredArrayUsingPredicate:v12];

  v14 = [v13 count];
  shareUserDefaults2 = [(SDShareSheetSlotManager *)obj shareUserDefaults];
  activityIdentifiersInUserOrder = [shareUserDefaults2 activityIdentifiersInUserOrder];
  v17 = [activityIdentifiersInUserOrder count];

  v18 = 12;
  if (v17 > 0xC)
  {
    v18 = v17;
  }

  if (v14 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v14;
  }

  v20 = [v13 subarrayWithRange:{0, v19}];

  shareUserDefaultsActivity = [sessionCopy shareUserDefaultsActivity];
  v37 = [v20 arrayByAddingObject:shareUserDefaultsActivity];

  [sessionCopy setVisibleShareActivities:v37];
  v36 = [(SDShareSheetSlotManager *)obj _createShareProxiesFromActivities:v37 session:sessionCopy];
  shareSheetContext = [(SDShareSheetSlotManager *)obj shareSheetContext];
  hostShareActivityProxies = [sessionCopy hostShareActivityProxies];
  v24 = +[NSMutableArray array];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v25 = hostShareActivityProxies;
  v26 = [v25 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v26)
  {
    v27 = *v41;
    do
    {
      v28 = 0;
      do
      {
        if (*v41 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v40 + 1) + 8 * v28);
        v30 = share_sheet_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v46 = v29;
          _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Deleting slots for share proxy %@", buf, 0xCu);
        }

        iconImageSlotID = [v29 iconImageSlotID];
        labelSlotID = [v29 labelSlotID];
        if (iconImageSlotID)
        {
          [shareSheetContext deleteSlot:iconImageSlotID];
        }

        if (labelSlotID)
        {
          [shareSheetContext deleteSlot:labelSlotID];
          v33 = [NSNumber numberWithUnsignedInt:labelSlotID];
          [v24 addObject:v33];
        }

        v28 = v28 + 1;
      }

      while (v26 != v28);
      v26 = [v25 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v26);
  }

  accessibilityCache = [(SDShareSheetSlotManager *)obj accessibilityCache];
  [accessibilityCache removeLabelsForSlotIDs:v24];

  [sessionCopy setHostShareActivityProxies:v36];
  +[CATransaction flush];
  v35 = share_sheet_log();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "share user defaults did change", buf, 2u);
  }

  [(SDShareSheetSlotManager *)obj dataSourceDidUpdateForSession:sessionCopy animated:0];
  objc_sync_exit(obj);
}

- (void)actionActivityUserDefaultsDidChangeWithSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = selfCopy;
  actionUserDefaults = [(SDShareSheetSlotManager *)selfCopy actionUserDefaults];
  actionActivities = [sessionCopy actionActivities];
  v8 = [actionUserDefaults activitiesOrderedByUserActivityOrderForActivities:actionActivities];

  [sessionCopy setActionActivitiesInUserOrder:v8];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1001AA52C;
  v37[3] = &unk_1008D2C98;
  v37[4] = obj;
  v31 = sessionCopy;
  v38 = v31;
  v9 = [NSPredicate predicateWithBlock:v37];
  v30 = [v8 filteredArrayUsingPredicate:v9];

  visibleActionActivities = [v31 visibleActionActivities];
  [v31 setVisibleActionActivities:v30];
  if (sub_10026BF28() && [visibleActionActivities count] && objc_msgSend(v30, "count"))
  {
    v10 = [visibleActionActivities isEqualToArray:v30] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  [v31 hostConfiguration];
  v26 = v27 = v10;
  hostTintColor = [v26 hostTintColor];
  v29 = [(SDShareSheetSlotManager *)obj _createActionProxiesFromActivities:v30 withTintColor:hostTintColor session:v31];

  shareSheetContext = [(SDShareSheetSlotManager *)obj shareSheetContext];
  hostActionActivityProxies = [v31 hostActionActivityProxies];
  v14 = +[NSMutableArray array];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = hostActionActivityProxies;
  v16 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v16)
  {
    v17 = *v34;
    do
    {
      v18 = 0;
      do
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v33 + 1) + 8 * v18);
        v20 = share_sheet_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v40 = v19;
          _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Deleting slots for action proxy %@", buf, 0xCu);
        }

        iconImageSlotID = [v19 iconImageSlotID];
        labelSlotID = [v19 labelSlotID];
        if (iconImageSlotID)
        {
          [shareSheetContext deleteSlot:iconImageSlotID];
        }

        if (labelSlotID)
        {
          [shareSheetContext deleteSlot:labelSlotID];
          v23 = [NSNumber numberWithUnsignedInt:labelSlotID];
          [v14 addObject:v23];
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v16);
  }

  accessibilityCache = [(SDShareSheetSlotManager *)obj accessibilityCache];
  [accessibilityCache removeLabelsForSlotIDs:v14];

  [v31 setHostActionActivityProxies:v29];
  +[CATransaction flush];
  v25 = share_sheet_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "action user defaults did change", buf, 2u);
  }

  [(SDShareSheetSlotManager *)obj dataSourceDidUpdateForSession:v31 animated:0 reloadData:v27];
  objc_sync_exit(obj);
}

- (void)userDefaultsViewControllerDidDisappearWithSessionID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession objectForKeyedSubscript:dCopy];
  if (v6)
  {
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = dCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "userDefaultsViewControllerDidDisappear: for session ID %@", &v9, 0xCu);
    }

    [v6 setUserDefaultsActivityCategory:0];
  }

  else
  {
    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1001B33CC();
    }
  }

  objc_sync_exit(selfCopy);
}

- ($EC76EA2E339756B4D2C49A1061DE0928)_uploadSlotWithVectorData:(SEL)data cgImage:(id)image performCATransaction:(id)transaction hostConfiguration:(BOOL)configuration
{
  configurationCopy = configuration;
  imageCopy = image;
  transactionCopy = transaction;
  v14 = a7;
  retstr->var1.width = 0.0;
  retstr->var1.height = 0.0;
  *&retstr->var0 = 0;
  if (!+[SDStatusMonitor enableShareSheetVectorSlots](SDStatusMonitor, "enableShareSheetVectorSlots") || [v14 hostIdiom] != 6)
  {
    v16 = transactionCopy[2](transactionCopy);
    if (!v16)
    {
      goto LABEL_16;
    }

    v17 = 0;
    goto LABEL_7;
  }

  v15 = imageCopy[2](imageCopy);
  if (v15)
  {
    v16 = v15;
    v17 = 1;
LABEL_7:
    if (configurationCopy)
    {
      +[CATransaction begin];
    }

    shareSheetContext = [(SDShareSheetSlotManager *)self shareSheetContext];
    v19 = [(SDShareSheetSlotManager *)self createSlotForContext:shareSheetContext];

    if ((v17 & 1) == 0)
    {
      shareSheetContext2 = [(SDShareSheetSlotManager *)self shareSheetContext];
      [shareSheetContext2 setObject:v16 forSlot:v19];

      Width = CGImageGetWidth(v16);
      Height = CGImageGetHeight(v16);
      retstr->var1.width = Width;
      retstr->var1.height = Height;
      retstr->var0 = v19;
    }

    if (configurationCopy)
    {
      +[CATransaction commit];
      +[CATransaction flush];
    }

    goto LABEL_16;
  }

  v23 = share_sheet_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_1001B3434();
  }

  v16 = 0;
LABEL_16:

  return result;
}

- (void)_instructHostToPerformUserDefaultsActivityForCategory:(int64_t)category session:(id)session updatingView:(BOOL)view
{
  viewCopy = view;
  sessionCopy = session;
  v88 = objc_opt_new();
  v87 = objc_opt_new();
  v91 = objc_opt_new();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  categoryCopy = category;
  v97 = sessionCopy;
  if (category == 1)
  {
    shareActivitiesInUserOrder = [sessionCopy shareActivitiesInUserOrder];
    shareUserDefaults = [(SDShareSheetSlotManager *)selfCopy shareUserDefaults];
    activityIdentifiersInUserOrder = [shareUserDefaults activityIdentifiersInUserOrder];

    [sessionCopy hostShareActivityProxies];
  }

  else
  {
    shareActivitiesInUserOrder = [sessionCopy actionActivitiesInUserOrder];
    actionUserDefaults = [(SDShareSheetSlotManager *)selfCopy actionUserDefaults];
    activityIdentifiersInUserOrder = [actionUserDefaults activityIdentifiersInUserOrder];

    [sessionCopy hostActionActivityProxies];
  }
  v11 = ;
  v12 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v11, "count")}];
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  obj = v11;
  v13 = [obj countByEnumeratingWithState:&v115 objects:v125 count:16];
  if (v13)
  {
    v14 = *v116;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v116 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v115 + 1) + 8 * i);
        identifier = [v16 identifier];
        [v12 setObject:v16 forKeyedSubscript:identifier];
      }

      v13 = [obj countByEnumeratingWithState:&v115 objects:v125 count:16];
    }

    while (v13);
  }

  skipSlotsRendering = [v97 skipSlotsRendering];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v93 = shareActivitiesInUserOrder;
  v18 = [v93 countByEnumeratingWithState:&v111 objects:v124 count:16];
  if (v18)
  {
    v95 = *v112;
    *&v19 = 138412802;
    v85 = v19;
LABEL_13:
    v96 = v18;
    v20 = 0;
    while (1)
    {
      if (*v112 != v95)
      {
        objc_enumerationMutation(v93);
      }

      v21 = *(*(&v111 + 1) + 8 * v20);
      activityType = [v21 activityType];
      v23 = UIActivityTypeMessage;
      v24 = activityType;
      v25 = v24;
      if (v23 == v24)
      {
      }

      else
      {
        if ((UIActivityTypeMessage != 0) == (v24 == 0))
        {

LABEL_24:
          goto LABEL_25;
        }

        v26 = [(NSString *)v23 isEqual:v24];

        if (!v26)
        {
          goto LABEL_24;
        }
      }

      v27 = +[SDStatusMonitor sharedMonitor];
      effectiveBlockedAppBundleIDs = [v27 effectiveBlockedAppBundleIDs];
      v29 = [effectiveBlockedAppBundleIDs containsObject:@"com.apple.MobileSMS"];

      if (v29)
      {
        goto LABEL_66;
      }

LABEL_25:
      activityType2 = [v21 activityType];
      v31 = UIActivityTypeMail;
      v32 = activityType2;
      v33 = v32;
      if (v31 == v32)
      {
      }

      else
      {
        if ((UIActivityTypeMail != 0) == (v32 == 0))
        {

LABEL_33:
          goto LABEL_34;
        }

        v34 = [(NSString *)v31 isEqual:v32];

        if (!v34)
        {
          goto LABEL_33;
        }
      }

      v35 = +[SDStatusMonitor sharedMonitor];
      effectiveBlockedAppBundleIDs2 = [v35 effectiveBlockedAppBundleIDs];
      v37 = [effectiveBlockedAppBundleIDs2 containsObject:@"com.apple.mobilemail"];

      if (v37)
      {
        goto LABEL_66;
      }

LABEL_34:
      activityType3 = [v21 activityType];
      v39 = UIActivityTypeAirDrop;
      v40 = activityType3;
      v41 = v40;
      v99 = v39;
      if (v39 == v40)
      {

LABEL_39:
        airDropAllowed = [v97 airDropAllowed];

        if ((airDropAllowed & 1) == 0)
        {
          goto LABEL_66;
        }

        goto LABEL_43;
      }

      if ((UIActivityTypeAirDrop != 0) != (v40 == 0))
      {
        v42 = [(NSString *)v39 isEqual:v40];

        if (v42)
        {
          goto LABEL_39;
        }
      }

      else
      {
      }

LABEL_43:
      if (skipSlotsRendering)
      {
        v44 = 0;
        v45 = 0;
        v46 = 0.0;
      }

      else
      {
        xpcHelperCnx = [v97 xpcHelperCnx];
        if (!xpcHelperCnx)
        {
          v84 = share_sheet_log();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
          {
            sub_1001B34CC();
          }

          goto LABEL_75;
        }

        _activitySettingsImage = [v21 _activitySettingsImage];
        v49 = _activitySettingsImage;
        cGImage = [_activitySettingsImage CGImage];

        activityTitle = [v21 activityTitle];
        v51 = +[UIColor whiteColor];
        +[CATransaction begin];
        v106[0] = _NSConcreteStackBlock;
        v106[1] = 3221225472;
        v106[2] = sub_1001AB598;
        v106[3] = &unk_1008D2F18;
        v52 = xpcHelperCnx;
        v107 = v52;
        v53 = activityTitle;
        v108 = v53;
        v54 = v51;
        v109 = v54;
        v110 = categoryCopy;
        v101[0] = _NSConcreteStackBlock;
        v101[1] = 3221225472;
        v101[2] = sub_1001AB5A8;
        v101[3] = &unk_1008D2F40;
        v55 = v52;
        v102 = v55;
        v56 = v53;
        v103 = v56;
        v57 = v54;
        v104 = v57;
        v105 = categoryCopy;
        hostConfiguration = [v97 hostConfiguration];
        [(SDShareSheetSlotManager *)selfCopy _uploadSlotWithVectorData:v106 sfCGImageData:v101 performCATransaction:0 hostConfiguration:hostConfiguration];
        v44 = *buf;
        v46 = *&v122[2];

        if (v44)
        {
          accessibilityCache = [(SDShareSheetSlotManager *)selfCopy accessibilityCache];
          activityTitle2 = [v21 activityTitle];
          v61 = [NSNumber numberWithUnsignedInt:v44];
          [accessibilityCache setLabel:activityTitle2 forSlotID:v61];

          shareSheetContext = [(SDShareSheetSlotManager *)selfCopy shareSheetContext];
          v45 = [(SDShareSheetSlotManager *)selfCopy createSlotForContext:shareSheetContext];
          [shareSheetContext setObject:cGImage forSlot:v45];
          +[CATransaction commit];

          v63 = 0;
        }

        else
        {
          v64 = share_sheet_log();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
          {
            *buf = v85;
            v120 = v56;
            v121 = 2112;
            *v122 = v21;
            *&v122[8] = 2112;
            v123 = v57;
            _os_log_fault_impl(&_mh_execute_header, v64, OS_LOG_TYPE_FAULT, "returned nil: CGImgDataForActivityMoreListEntryForActivityTitle:%@, in: %@, labelColor:%@", buf, 0x20u);
          }

          +[CATransaction commit];
          v45 = 0;
          v63 = 5;
        }

        if (v63)
        {
          goto LABEL_66;
        }
      }

      v65 = [_UIUserDefaultsActivityProxy alloc];
      activityUUID = [v21 activityUUID];
      v67 = [v65 initWithIdentifier:activityUUID];

      if (skipSlotsRendering)
      {
        v68 = [SFProxyText alloc];
        activityTitle3 = [v21 activityTitle];
        v70 = [v68 initWithText:activityTitle3];
      }

      else
      {
        v70 = [[SFProxyText alloc] initWithSlotIdentifier:v44 slotTextHeight:v46];
      }

      [v67 setActivityTitle:v70];
      if (skipSlotsRendering)
      {
        v71 = [SDShareSheetSlotManager _bundleIdentifierForActivity:v21];
        if (([v71 isEqualToString:@"noBundleID"] & 1) == 0)
        {
          [v67 setApplicationBundleIdentifier:v71];
        }
      }

      else
      {
        [v67 setIconImageSlotID:v45];
      }

      screenTimeMonitor = [v97 screenTimeMonitor];
      activityType4 = [v21 activityType];
      v74 = [screenTimeMonitor cachedPolicyForActivityType:activityType4] != 0;

      [v67 setIsDisabled:v74];
      if (categoryCopy == 1)
      {
        shareUserDefaults2 = [(SDShareSheetSlotManager *)selfCopy shareUserDefaults];
        [v67 setCanHide:{objc_msgSend(shareUserDefaults2, "canHideActivity:", v21)}];

        [(SDShareSheetSlotManager *)selfCopy shareUserDefaults];
      }

      else
      {
        actionUserDefaults2 = [(SDShareSheetSlotManager *)selfCopy actionUserDefaults];
        [v67 setCanHide:{objc_msgSend(actionUserDefaults2, "canHideActivity:", v21)}];

        [(SDShareSheetSlotManager *)selfCopy actionUserDefaults];
      }
      v76 = ;
      [v67 setIsHidden:{objc_msgSend(v76, "activityIsHidden:", v21)}];

      activityType5 = [v21 activityType];
      [v67 setCanEdit:{objc_msgSend(activityType5, "isEqualToString:", v99) ^ 1}];

      activityType6 = [v21 activityType];
      [v67 setCanMove:{objc_msgSend(activityType6, "isEqualToString:", v99) ^ 1}];

      activityType7 = [v21 activityType];
      v81 = [activityIdentifiersInUserOrder containsObject:activityType7];

      v82 = v91;
      v83 = v67;
      if (v81)
      {
        [v87 addObject:v67];
        v82 = v88;
        v83 = v21;
      }

      [v82 addObject:v83];

LABEL_66:
      if (v96 == ++v20)
      {
        v18 = [v93 countByEnumeratingWithState:&v111 objects:v124 count:16];
        if (v18)
        {
          goto LABEL_13;
        }

        break;
      }
    }
  }

  if (categoryCopy == 1)
  {
    [v97 setFavoriteApps:v88];
  }

  else
  {
    [v97 setFavoriteActions:v88];
  }

  +[CATransaction flush];
  [(SDShareSheetSlotManager *)selfCopy notifySession:v97 favoritesProxies:v87 suggestionProxies:v91 activityCategory:categoryCopy updatingView:viewCopy];
LABEL_75:

  objc_sync_exit(selfCopy);
}

- (void)_instructHostToPerformExtensionActivity:(id)activity session:(id)session
{
  activityCopy = activity;
  sessionCopy = session;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = share_sheet_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    activityType = [activityCopy activityType];
    v11 = 138412290;
    v12 = activityType;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Performing extension %@", &v11, 0xCu);
  }

  [(SDShareSheetSlotManager *)selfCopy notifySession:sessionCopy activitySelected:activityCopy];
  objc_sync_exit(selfCopy);
}

- (void)_instructHostToPerformShortcutActivity:(id)activity singleUseToken:(id)token session:(id)session
{
  activityCopy = activity;
  tokenCopy = token;
  sessionCopy = session;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SDShareSheetSlotManager *)selfCopy notifySession:sessionCopy shortcutSelectedWithBundleID:@"com.apple.shortcuts.Run-Workflow" singleUseToken:tokenCopy];
  objc_sync_exit(selfCopy);
}

- (void)_instructHostToPerformHostActivity:(id)activity session:(id)session
{
  activityCopy = activity;
  sessionCopy = session;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = share_sheet_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    activityType = [activityCopy activityType];
    v13 = 138412290;
    v14 = activityType;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Performing host %@", &v13, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = activityCopy;
    [(SDShareSheetSlotManager *)selfCopy notifySession:sessionCopy activitySelected:v12];
  }

  else
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:selfCopy file:@"SDShareSheetSlotManager.m" lineNumber:4173 description:@"attempt to perform an activity in-host that is not an in-host activity"];
  }

  objc_sync_exit(selfCopy);
}

- (void)_loadPresentableActivitiesForSession:(id)session
{
  v8 = 0u;
  v9 = 0u;
  sessionCopy = session;
  currentConnection = [(SDShareSheetSlotManager *)self currentConnection];
  v6 = currentConnection;
  if (currentConnection)
  {
    [currentConnection auditToken];
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v7[0] = v8;
  v7[1] = v9;
  [sessionCopy _loadPresentableActivitiesForAuditToken:v7];
}

- (void)activateSuggestionBrowserForSession:(id)session withExtensionMatchingDictionaries:(id)dictionaries assetIdentifiers:(id)identifiers urlsBeingShared:(id)shared sandboxExtensionsByfileURLPath:(id)path
{
  sessionCopy = session;
  dictionariesCopy = dictionaries;
  identifiersCopy = identifiers;
  sharedCopy = shared;
  pathCopy = path;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([sessionCopy hideSuggestions])
  {
    v18 = share_sheet_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Not activating suggestion browser because hideSuggestions is true", buf, 2u);
    }
  }

  else
  {
    v19 = share_sheet_log();
    v20 = share_sheet_log();
    v21 = os_signpost_id_make_with_pointer(v20, selfCopy);

    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *v41 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, v21, "ConfigurePeopleSuggester", " enableTelemetry=YES ", v41, 2u);
    }

    v18 = sub_10026C18C(dictionariesCopy);
    v39 = dictionariesCopy;
    v22 = objc_alloc_init(SDSuggestionBrowserContext);
    currentConnection = [(SDShareSheetSlotManager *)selfCopy currentConnection];
    sd_connectionBundleID = [currentConnection sd_connectionBundleID];
    [(SDSuggestionBrowserContext *)v22 setBundleID:sd_connectionBundleID];

    array = [v18 array];
    [(SDSuggestionBrowserContext *)v22 setTypeIdentifiersBeingShared:array];

    [(SDSuggestionBrowserContext *)v22 setPhotosAssetIDs:identifiersCopy];
    [(SDSuggestionBrowserContext *)v22 setUrlsBeingShared:sharedCopy];
    [(SDSuggestionBrowserContext *)v22 setSandboxExtensionsByfileURLPath:pathCopy];
    -[SDSuggestionBrowserContext setShouldSuggestFamilyMembers:](v22, "setShouldSuggestFamilyMembers:", [sessionCopy shouldSuggestFamilyMembers]);
    -[SDSuggestionBrowserContext setIsSharePlayAvailable:](v22, "setIsSharePlayAvailable:", [sessionCopy isSharePlayAvailable]);
    -[SDSuggestionBrowserContext setSupportsCollaboration:](v22, "setSupportsCollaboration:", [sessionCopy supportsCollaboration]);
    peopleSuggestionBundleIds = [sessionCopy peopleSuggestionBundleIds];
    [(SDSuggestionBrowserContext *)v22 setPeopleSuggestionBundleIds:peopleSuggestionBundleIds];

    processedImageResultsData = [sessionCopy processedImageResultsData];
    [(SDSuggestionBrowserContext *)v22 setProcessedImageResultsData:processedImageResultsData];
    v38 = pathCopy;
    v28 = sharedCopy;
    v29 = identifiersCopy;

    sessionID = [sessionCopy sessionID];
    currentConnection2 = [(SDShareSheetSlotManager *)selfCopy currentConnection];
    _queue = [currentConnection2 _queue];
    [sessionCopy peopleSuggestionsTimeout];
    v33 = [SDSuggestionBrowser asyncBrowserWithSessionID:sessionID context:v22 queue:_queue timeout:?];

    [v33 setDelegate:selfCopy];
    xpcHelperCnx = [sessionCopy xpcHelperCnx];
    [v33 setHelperConnection:xpcHelperCnx];

    [sessionCopy setSuggestionBrowser:v33];
    v35 = share_sheet_log();
    v36 = share_sheet_log();
    v37 = os_signpost_id_make_with_pointer(v36, selfCopy);

    if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
    {
      *v40 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, OS_SIGNPOST_INTERVAL_END, v37, "ConfigurePeopleSuggester", " enableTelemetry=YES ", v40, 2u);
    }

    identifiersCopy = v29;
    sharedCopy = v28;
    pathCopy = v38;
    dictionariesCopy = v39;
  }

  objc_sync_exit(selfCopy);
}

- (void)suggestionBrowserDidUpdateSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sessionIDToShareSheetSession = selfCopy->_sessionIDToShareSheetSession;
  sessionID = [suggestionsCopy sessionID];
  v8 = [(NSMutableDictionary *)sessionIDToShareSheetSession objectForKeyedSubscript:sessionID];

  if (!v8)
  {
    v10 = share_sheet_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sessionID2 = [0 sessionID];
      sub_1001B3534(sessionID2, &v13, v10);
    }

    goto LABEL_8;
  }

  hostConfiguration = [v8 hostConfiguration];

  if (!hostConfiguration)
  {
    v10 = share_sheet_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      sessionID3 = [v8 sessionID];
      v13 = 138412290;
      v14 = sessionID3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "suggestionBrowserDidUpdateSuggestions: initial configuration hasn't happened yet for ID %@", &v13, 0xCu);
    }

LABEL_8:

    goto LABEL_9;
  }

  [(SDShareSheetSlotManager *)selfCopy _configurePeopleSuggestionsSectionForSession:v8];
  [(SDShareSheetSlotManager *)selfCopy dataSourceDidUpdateForSession:v8 animated:0];
LABEL_9:

  objc_sync_exit(selfCopy);
}

- (void)sessionDidChange:(id)change
{
  changeCopy = change;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "session did change", v6, 2u);
  }

  [(SDShareSheetSlotManager *)self dataSourceDidUpdateForSession:changeCopy animated:1];
}

- (void)session:(id)session didConnectNearbySharingInteractionWithEndpointUUID:(id)d
{
  sessionCopy = session;
  dCopy = d;
  v8 = share_sheet_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "did connect nearby sharing interaction with endpointUUID:%@", &v14, 0xCu);
  }

  if (([sessionCopy isForeground] & 1) == 0)
  {
    airDropController = share_sheet_log();
    if (os_log_type_enabled(airDropController, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, airDropController, OS_LOG_TYPE_DEFAULT, "Ignoring nearby sharing interaction for backgrounded session", &v14, 2u);
    }

    goto LABEL_12;
  }

  if (([sessionCopy airDropAllowed] & 1) == 0)
  {
    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Ignoring nearby sharing interaction - AirDrop unavailable", &v14, 2u);
    }

    airDropController = [sessionCopy airDropController];
    [airDropController showAirDropUnavailableAlert];
LABEL_12:

    goto LABEL_13;
  }

  hostConfiguration = [sessionCopy hostConfiguration];
  isCollaborative = [hostConfiguration isCollaborative];

  if (isCollaborative)
  {
    v11 = [[SFAirDropTransferChange alloc] initWithState:7 progress:0 proxyIdentifier:0 displayName:0 status:0.0];
    [(SDShareSheetSlotManager *)self notifySession:sessionCopy withAirDropTransferChange:v11];
  }

  else
  {
    [(SDShareSheetSlotManager *)self requestAirDropItemsForNode:0 endpointUUID:dCopy session:sessionCopy];
  }

LABEL_13:
}

- (id)activityHelper:(id)helper activitiesForActivityType:(id)type matchingContext:(id)context sessionID:(id)d
{
  helperCopy = helper;
  typeCopy = type;
  contextCopy = context;
  dCopy = d;
  v14 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v14);
  v15 = [(NSMutableDictionary *)self->_sessionIDToShareSheetSession objectForKeyedSubscript:dCopy];
  if (v15)
  {
    if (!_UIActivityOpenInApplicationTypeForActivityType())
    {
      v23 = 0;
      goto LABEL_14;
    }

    v32 = helperCopy;
    sessionIDToShareSheetSession = [(SDShareSheetSlotManager *)self sessionIDToShareSheetSession];
    v17 = [sessionIDToShareSheetSession objectForKeyedSubscript:dCopy];
    hostConfiguration = [v17 hostConfiguration];
    _unitTest_disableExcludingSourceApplicationFromOpenActivities = [hostConfiguration _unitTest_disableExcludingSourceApplicationFromOpenActivities];

    activityItemValueClasses = [contextCopy activityItemValueClasses];
    v20 = [activityItemValueClasses count];

    if (v20 == 1)
    {
      activityItemValueExtensionMatchingDictionaries = [contextCopy activityItemValueExtensionMatchingDictionaries];
      v22 = sub_10026C400(activityItemValueExtensionMatchingDictionaries);
    }

    else
    {
      v22 = 0;
    }

    activityItemValues = [contextCopy activityItemValues];
    isContentManaged = [contextCopy isContentManaged];
    hostAuditTokenData = [contextCopy hostAuditTokenData];
    v23 = [SUIOpenInAppActivity openInActivitiesForItems:activityItemValues isContentManaged:isContentManaged sourceApplicationAuditTokenData:hostAuditTokenData includeSourceApplicationInResults:_unitTest_disableExcludingSourceApplicationFromOpenActivities supportedTypeIdentifiers:v22];

    if (_UIActivityOpenInApplicationTypeForActivityType() != 1)
    {
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1001B1B30;
      v33[3] = &unk_1008D3100;
      v34 = typeCopy;
      v27 = v34;
      v28 = v23;
      v29 = [v28 indexesOfObjectsPassingTest:v33];
      v23 = [v28 objectsAtIndexes:v29];
    }

    helperCopy = v32;
  }

  else
  {
    v22 = share_sheet_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1001B358C();
    }

    v23 = 0;
  }

LABEL_14:
  objc_sync_exit(v14);

  return v23;
}

- (id)activityHelper:(id)helper predictionContextForSessionID:(id)d
{
  helperCopy = helper;
  dCopy = d;
  v8 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v8);
  v9 = [(NSMutableDictionary *)self->_sessionIDToShareSheetSession objectForKeyedSubscript:dCopy];
  if (!v9)
  {
    v15 = share_sheet_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1001B35F4();
    }

    v10 = 0;
    goto LABEL_12;
  }

  v10 = objc_alloc_init(off_100972140());
  hostAppBundleID = [v9 hostAppBundleID];
  [v10 setBundleID:hostAppBundleID];

  v12 = +[NSDate date];
  [v10 setSuggestionDate:v12];

  [v10 setShowPotentialFamilyMembers:{objc_msgSend(v9, "shouldSuggestFamilyMembers")}];
  peopleSuggestionBundleIds = [v9 peopleSuggestionBundleIds];
  [v10 setSuggestionsFilteredByBundleIds:peopleSuggestionBundleIds];

  [v10 setIsSharePlayAvailable:{objc_msgSend(v9, "isSharePlayAvailable")}];
  [v10 setSessionID:dCopy];
  if (objc_opt_respondsToSelector())
  {
    if ([v9 supportsCollaboration])
    {
      v14 = _os_feature_enabled_impl();
    }

    else
    {
      v14 = 0;
    }

    [v10 setIsCollaborationAvailable:v14];
  }

  processedImageResultsData = [v9 processedImageResultsData];

  if (processedImageResultsData)
  {
    v17 = objc_alloc(off_100972148());
    urlBeingShared = [v9 urlBeingShared];
    processedImageResultsData2 = [v9 processedImageResultsData];
    v15 = [v17 initWithCreationDate:0 UTI:@"SDShareSheetImageAnalysisIdentifier" photoLocalIdentifier:0 identifier:0 cloudIdentifier:0 contentURL:urlBeingShared contentText:0 imageData:processedImageResultsData2];

    v22 = v15;
    v20 = [NSArray arrayWithObjects:&v22 count:1];
    [v10 setAttachments:v20];

LABEL_12:
  }

  objc_sync_exit(v8);

  return v10;
}

- (unsigned)createSlotForContext:(id)context
{
  contextCopy = context;
  for (i = contextCopy; ; contextCopy = i)
  {
    createSlot = [contextCopy createSlot];
    if (createSlot)
    {
      break;
    }

    [i deleteSlot:0];
  }

  v6 = createSlot;

  return v6;
}

- (CAContext)shareSheetContext
{
  os_unfair_lock_lock(&self->_contextLock);
  v3 = self->_shareSheetContext;
  v4 = v3;
  if (!v3 || ([(CAContext *)v3 valid]& 1) == 0)
  {
    if (([(CAContext *)v4 valid]& 1) == 0)
    {
      v5 = share_sheet_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1001B365C();
      }
    }

    _createShareSheetContext = [(SDShareSheetSlotManager *)self _createShareSheetContext];

    objc_storeStrong(&self->_shareSheetContext, _createShareSheetContext);
    v4 = _createShareSheetContext;
  }

  os_unfair_lock_unlock(&self->_contextLock);

  return v4;
}

- (void)invalidateShareSheetContext
{
  os_unfair_lock_lock(&self->_contextLock);
  [(CAContext *)self->_shareSheetContext invalidate];
  shareSheetContext = self->_shareSheetContext;
  self->_shareSheetContext = 0;

  os_unfair_lock_unlock(&self->_contextLock);
}

- (void)configureAirDropNodesFromSuggestionNodes:(id)nodes shareUserDefaults:(id)defaults forSession:(id)session
{
  nodesCopy = nodes;
  defaultsCopy = defaults;
  sessionCopy = session;
  shareActivitiesInUserOrder = [sessionCopy shareActivitiesInUserOrder];
  v91 = [shareActivitiesInUserOrder valueForKey:@"activityType"];

  v88 = objc_opt_new();
  v95 = objc_opt_new();
  val = self;
  objc_sync_enter(val);
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  obj = nodesCopy;
  v11 = [obj countByEnumeratingWithState:&v114 objects:v125 count:16];
  if (v11)
  {
    v92 = *v115;
    do
    {
      v94 = v11;
      for (i = 0; i != v94; i = i + 1)
      {
        if (*v115 != v92)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v114 + 1) + 8 * i);
        bundleID = [v13 bundleID];
        v15 = bundleID;
        v16 = UIActivityTypeMessage;
        if (bundleID == @"com.apple.MobileSMS")
        {
          goto LABEL_11;
        }

        if (!bundleID)
        {
          goto LABEL_29;
        }

        v17 = [(__CFString *)bundleID isEqual:@"com.apple.MobileSMS"];

        v16 = UIActivityTypeMessage;
        if ((v17 & 1) != 0 || (v18 = v15, v16 = UIActivityTypeMail, v18 == @"com.apple.mobilemail") || (v19 = v18, v20 = [(__CFString *)v18 isEqual:@"com.apple.mobilemail"], v19, v16 = UIActivityTypeMail, v20))
        {
LABEL_11:
          isSharePlayAvailable = [v91 containsObject:v16];
        }

        else
        {
          v23 = v19;
          v24 = v23;
          if (v23 == @"com.apple.InCallService.ShareExtension" || (v25 = [(__CFString *)v23 isEqual:@"com.apple.InCallService.ShareExtension"], v24, v25))
          {
            if (![sessionCopy isCollaborative])
            {
LABEL_13:
              v22 = 0;
              goto LABEL_51;
            }

            hiddenActivities = [sessionCopy hiddenActivities];
            v27 = [hiddenActivities valueForKey:@"activityType"];

            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v28 = v27;
            v29 = [v28 countByEnumeratingWithState:&v110 objects:v124 count:16];
            if (v29)
            {
              v30 = *v111;
              while (2)
              {
                for (j = 0; j != v29; j = j + 1)
                {
                  if (*v111 != v30)
                  {
                    objc_enumerationMutation(v28);
                  }

                  if ([*(*(&v110 + 1) + 8 * j) hasPrefix:v24])
                  {

                    goto LABEL_39;
                  }
                }

                v29 = [v28 countByEnumeratingWithState:&v110 objects:v124 count:16];
                if (v29)
                {
                  continue;
                }

                break;
              }
            }

            goto LABEL_25;
          }

          v32 = v24;
          if (v32 != @"com.apple.telephonyutilities.callservicesd")
          {
            v33 = v32;
            v34 = [(__CFString *)v32 isEqual:@"com.apple.telephonyutilities.callservicesd"];

            if (!v34)
            {
LABEL_29:
              v108 = 0u;
              v109 = 0u;
              v107 = 0u;
              v106 = 0u;
              v28 = v91;
              v35 = [v28 countByEnumeratingWithState:&v106 objects:v123 count:16];
              if (v35)
              {
                v36 = *v107;
                while (2)
                {
                  for (k = 0; k != v35; k = k + 1)
                  {
                    if (*v107 != v36)
                    {
                      objc_enumerationMutation(v28);
                    }

                    if ([*(*(&v106 + 1) + 8 * k) hasPrefix:v15])
                    {
LABEL_39:

                      goto LABEL_40;
                    }
                  }

                  v35 = [v28 countByEnumeratingWithState:&v106 objects:v123 count:16];
                  if (v35)
                  {
                    continue;
                  }

                  break;
                }
              }

              v22 = 0;
              goto LABEL_50;
            }
          }

          isSharePlayAvailable = [sessionCopy isSharePlayAvailable];
        }

        if ((isSharePlayAvailable & 1) == 0)
        {
          goto LABEL_13;
        }

LABEL_40:
        bundleIDToActivities = [sessionCopy bundleIDToActivities];
        v39 = [bundleIDToActivities objectForKeyedSubscript:v15];

        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v28 = v39;
        v40 = [v28 countByEnumeratingWithState:&v102 objects:v122 count:16];
        if (!v40)
        {
LABEL_48:
          v22 = 1;
          goto LABEL_49;
        }

        v41 = *v103;
LABEL_42:
        v42 = 0;
        while (1)
        {
          if (*v103 != v41)
          {
            objc_enumerationMutation(v28);
          }

          if ([defaultsCopy activityIsHidden:*(*(&v102 + 1) + 8 * v42)])
          {
            break;
          }

          if (v40 == ++v42)
          {
            v40 = [v28 countByEnumeratingWithState:&v102 objects:v122 count:16];
            if (v40)
            {
              goto LABEL_42;
            }

            goto LABEL_48;
          }
        }

LABEL_25:
        v22 = 0;
LABEL_49:

LABEL_50:
LABEL_51:
        v43 = v15;
        v44 = @"SDSuggestionTransportIdentifierPlaceholder";
        v45 = v44;
        if (v43 == v44)
        {

          v46 = 1;
        }

        else
        {
          if ((v43 != 0) == (@"SDSuggestionTransportIdentifierPlaceholder" == 0))
          {
            v46 = 0;
          }

          else
          {
            v46 = [(__CFString *)v43 isEqual:v44];
          }

          if (((v22 | v46) & 1) == 0)
          {
            v48 = share_sheet_log();
            if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_78;
            }

            *buf = 138412290;
            v119 = v13;
            v77 = v48;
            v78 = "Rejecting people row proxy %@ due to not visible activity type";
            goto LABEL_70;
          }
        }

        v47 = [v95 count];
        if (v47 >= +[SDStatusMonitor shareSheetMaxSuggestions])
        {
          v48 = share_sheet_log();
          if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_78;
          }

          *buf = 138412290;
          v119 = v13;
          v77 = v48;
          v78 = "Rejecting people row proxy %@ because we are over the max number of suggestions";
LABEL_70:
          _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, v78, buf, 0xCu);
          goto LABEL_78;
        }

        v48 = objc_alloc_init(SFAirDropNode);
        [v48 setTransportBundleID:v43];
        displayName = [v13 displayName];
        [v48 setDisplayName:displayName];

        identifier = [v13 identifier];
        [v48 setRealName:identifier];

        [v48 setSuggestion:1];
        v51 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [obj indexOfObject:v13]);
        [v48 setSuggestionIndex:v51];

        formattedHandles = [v13 formattedHandles];
        v53 = [NSSet setWithArray:formattedHandles];
        [v48 setFormattedHandles:v53];

        actualHandles = [v13 actualHandles];
        v55 = [NSSet setWithArray:actualHandles];
        [v48 setActualHandles:v55];

        contactIDs = [v13 contactIDs];
        v57 = [NSSet setWithArray:contactIDs];
        [v48 setContactIDs:v57];

        derivedIntentIdentifier = [v13 derivedIntentIdentifier];
        [v48 setDerivedIntentIdentifier:derivedIntentIdentifier];

        [v95 addObject:v48];
        realNameToNodeID = [sessionCopy realNameToNodeID];
        realName = [v48 realName];
        v61 = [realNameToNodeID objectForKeyedSubscript:realName];

        if (!v61)
        {
          v61 = +[NSUUID UUID];
          realNameToNodeID2 = [sessionCopy realNameToNodeID];
          realName2 = [v48 realName];
          [realNameToNodeID2 setObject:v61 forKeyedSubscript:realName2];
        }

        v96 = v61;
        [v48 setNodeIdentifier:v61];
        v64 = [UIAirDropNode nodeWithIdentifier:v61 suggestionNode:v13];
        hostConfiguration = [sessionCopy hostConfiguration];
        hostLocale = [hostConfiguration hostLocale];

        hostConfiguration2 = [sessionCopy hostConfiguration];
        v89 = [SDShareSheetSession labelColorWithHostConfiguration:hostConfiguration2];

        if (([sessionCopy skipSlotsRendering] & 1) != 0 || (objc_msgSend(sessionCopy, "hostConfiguration"), v67 = objc_claimAutoreleasedReturnValue(), v68 = objc_msgSend(v67, "requestPeopleSuggestionsData"), v67, v68))
        {
          suggestion = [v13 suggestion];
          createPeopleSuggestion = [suggestion createPeopleSuggestion];
          [v64 setPeopleSuggestion:createPeopleSuggestion];
        }

        if (([sessionCopy skipSlotsRendering] | v46))
        {
          v71 = [v48 displayNameForLocale:hostLocale];
          v72 = [[SFProxyText alloc] initWithText:v71];
          [v64 setDisplayName:v72];

          if ([v13 hasGroupImage])
          {
            v73 = SFLocalizedStringForKey();
            formattedHandles2 = [v48 formattedHandles];
            v75 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v73, [formattedHandles2 count]);

            v76 = [[SFProxyText alloc] initWithText:v75];
            [v64 setSubtitle:v76];
          }
        }

        else
        {
          v79 = objc_alloc_init(SDShareSheetLoadingConfiguration);
          [(SDShareSheetLoadingConfiguration *)v79 setTextColor:v89];
          [(SDShareSheetLoadingConfiguration *)v79 setHostLocale:hostLocale];
          xpcHelperCnx = [sessionCopy xpcHelperCnx];
          [(SDShareSheetLoadingConfiguration *)v79 setHelperConnection:xpcHelperCnx];

          -[SDShareSheetLoadingConfiguration setInstantShareSheet:](v79, "setInstantShareSheet:", [sessionCopy skipSlotsRendering]);
          hostConfiguration3 = [sessionCopy hostConfiguration];
          [(SDShareSheetLoadingConfiguration *)v79 setHostConfiguration:hostConfiguration3];

          objc_initWeak(buf, val);
          v98[0] = _NSConcreteStackBlock;
          v98[1] = 3221225472;
          v98[2] = sub_1001AD70C;
          v98[3] = &unk_1008D2F68;
          objc_copyWeak(&v101, buf);
          v99 = v48;
          v71 = v79;
          v100 = v71;
          [v64 setLoadHandler:v98];

          objc_destroyWeak(&v101);
          objc_destroyWeak(buf);
        }

        if ([v13 isIntentsBased])
        {
          v82 = [v13 isGroup] ^ 1;
        }

        else
        {
          v82 = 0;
        }

        [v64 setHasSquareImage:v82];
        [v64 setIsDisabled:{-[NSObject isDisabled](v48, "isDisabled")}];
        [v88 addObject:v64];
        v83 = share_sheet_log();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v119 = v13;
          v120 = 2112;
          v121 = v96;
          _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "Share Sheet accepted people suggestion:%@ for identifier:%@", buf, 0x16u);
        }

LABEL_78:
      }

      v11 = [obj countByEnumeratingWithState:&v114 objects:v125 count:16];
    }

    while (v11);
  }

  if ([v88 count] && IsAppleInternalBuild())
  {
    v84 = share_sheet_log();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "adding tap-to-radar airdrop node to people suggestions.", buf, 2u);
    }

    v85 = +[UIAirDropNode TTRAirDropNode];
    [v88 addObject:v85];
  }

  peopleNodes = [sessionCopy peopleNodes];
  [(SDShareSheetSlotManager *)val _clearSlotsForAirDropProxies:peopleNodes];
  [sessionCopy setSuggestedPeople:v95];
  [sessionCopy setPeopleNodes:v88];
  +[CATransaction flush];

  objc_sync_exit(val);
}

- (void)_clearSlotsForAirDropProxies:(id)proxies
{
  proxiesCopy = proxies;
  selfCopy = self;
  shareSheetContext = [(SDShareSheetSlotManager *)self shareSheetContext];
  v6 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = proxiesCopy;
  v7 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        v12 = share_sheet_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v28 = v11;
          _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Deleting slots for people row proxy %@", buf, 0xCu);
        }

        avatarImageSlotID = [v11 avatarImageSlotID];
        mainLabelSlotID = [v11 mainLabelSlotID];
        transportImageSlotID = [v11 transportImageSlotID];
        bottomLabelSlotID = [v11 bottomLabelSlotID];
        if (avatarImageSlotID)
        {
          [shareSheetContext deleteSlot:avatarImageSlotID];
        }

        if (mainLabelSlotID)
        {
          [shareSheetContext deleteSlot:mainLabelSlotID];
          v17 = [NSNumber numberWithUnsignedInt:mainLabelSlotID];
          [v6 addObject:v17];
        }

        if (transportImageSlotID)
        {
          [shareSheetContext deleteSlot:transportImageSlotID];
          v18 = [NSNumber numberWithUnsignedInt:transportImageSlotID];
          [v6 addObject:v18];
        }

        if (bottomLabelSlotID)
        {
          [shareSheetContext deleteSlot:bottomLabelSlotID];
          v19 = [NSNumber numberWithUnsignedInt:bottomLabelSlotID];
          [v6 addObject:v19];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v8);
  }

  accessibilityCache = [(SDShareSheetSlotManager *)selfCopy accessibilityCache];
  [accessibilityCache removeLabelsForSlotIDs:v6];
}

- (void)handleAirDropNodesChanged:(id)changed sessionID:(id)d
{
  changedCopy = changed;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v44 = dCopy;
  v45 = selfCopy;
  v8 = [(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession objectForKeyedSubscript:dCopy];
  v9 = v8;
  if (!v8)
  {
    firstObject = share_sheet_log();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_FAULT))
    {
      sub_1001B3698();
    }

    goto LABEL_49;
  }

  airDropPeople = [v8 airDropPeople];
  v11 = [airDropPeople count];
  v12 = [changedCopy count];

  if (v11 != v12)
  {
    [(SDShareSheetSlotManager *)selfCopy updateNearbyCountSlotIDForSession:v9];
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = changedCopy;
  v13 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v13)
  {
    v14 = *v53;
    v15 = 1;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v53 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v52 + 1) + 8 * i);
        realNameToNodeID = [v9 realNameToNodeID];
        realName = [v17 realName];
        v20 = [realNameToNodeID objectForKeyedSubscript:realName];
        [v17 setNodeIdentifier:v20];

        realName2 = [v17 realName];
        selectedNode = [v9 selectedNode];
        realName3 = [selectedNode realName];
        LOBYTE(realName) = [realName2 isEqualToString:realName3];

        v15 &= realName ^ 1;
      }

      v13 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
    }

    while (v13);

    if ((v15 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  [v9 setSelectedNode:0];
LABEL_17:
  [v9 setAirDropPeople:obj];
  selectedNode2 = [v9 selectedNode];
  if (selectedNode2)
  {
    firstObject = 0;
  }

  else
  {
    firstObject = [obj firstObject];
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v26 = obj;
  v27 = [v26 countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v27)
  {
    v28 = *v49;
    do
    {
      for (j = 0; j != v27; j = j + 1)
      {
        if (*v49 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = *(*(&v48 + 1) + 8 * j);
        selectedNode3 = [v9 selectedNode];
        v32 = selectedNode3 == 0;

        if (v32)
        {
          v33 = v30;

          firstObject = v33;
        }

        else if ([v30 selectionReason])
        {
          v34 = v30;

          firstObject = v34;
          goto LABEL_31;
        }
      }

      v27 = [v26 countByEnumeratingWithState:&v48 objects:v58 count:16];
    }

    while (v27);
  }

LABEL_31:

  peopleNodes = [v9 peopleNodes];
  if ([peopleNodes count])
  {
    sentInitialConfiguration = [v9 sentInitialConfiguration];
  }

  else
  {
    sentInitialConfiguration = 0;
  }

  if (!firstObject)
  {
    goto LABEL_52;
  }

  nodeIdentifier = [firstObject nodeIdentifier];
  selectedNode4 = [v9 selectedNode];
  nodeIdentifier2 = [selectedNode4 nodeIdentifier];
  v40 = [nodeIdentifier isEqual:nodeIdentifier2];

  if ((v40 & 1) == 0)
  {
    v42 = share_sheet_log();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v57 = firstObject;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "people row AirDrop slot changing to %@", buf, 0xCu);
    }

    if (![firstObject selectionReason])
    {
      [firstObject setSelectionReason:2];
    }

    [v9 setSelectedNode:firstObject];
    [(SDShareSheetSlotManager *)v45 createAirDropProxyForNode:firstObject session:v9];
  }

  else
  {
LABEL_52:
    if ([v26 count])
    {
      goto LABEL_49;
    }

    v41 = share_sheet_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "no AirDrop nodes discovered", buf, 2u);
    }

    [v9 setAirDropNodes:&__NSArray0__struct];
    [v9 setSelectedNode:0];
  }

  if (sentInitialConfiguration)
  {
    v43 = share_sheet_log();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "AirDrop suggestion node did change", buf, 2u);
    }

    [(SDShareSheetSlotManager *)v45 dataSourceDidUpdateForSession:v9 animated:1];
  }

LABEL_49:

  objc_sync_exit(v45);
}

- (void)browser:(id)browser didUpdatePeople:(id)people deletedContactIdentifiers:(id)identifiers
{
  browserCopy = browser;
  peopleCopy = people;
  identifiersCopy = identifiers;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v46 = browserCopy;
  obj = selfCopy;
  sessionIDToShareSheetSession = selfCopy->_sessionIDToShareSheetSession;
  sessionID = [browserCopy sessionID];
  v12 = [(NSMutableDictionary *)sessionIDToShareSheetSession objectForKeyedSubscript:sessionID];

  if (v12)
  {
    airDropPeople = [v12 airDropPeople];
    v14 = [airDropPeople count];
    v15 = [peopleCopy count];

    if (v14 != v15)
    {
      [(SDShareSheetSlotManager *)selfCopy updateNearbyCountSlotIDForSession:v12];
    }

    [v12 setAirDropPeople:peopleCopy];
    selectedNode = [v12 selectedNode];
    if (selectedNode)
    {
      firstObject = 0;
    }

    else
    {
      firstObject = [peopleCopy firstObject];
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v19 = peopleCopy;
    v20 = [v19 countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v20)
    {
      v21 = *v51;
      while (2)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v51 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v50 + 1) + 8 * i);
          selectedNode2 = [v12 selectedNode];
          v25 = selectedNode2 == 0;

          if (v25)
          {
            rangingMeasurement = [v23 rangingMeasurement];
            [rangingMeasurement ptsScore];
            v31 = v30;
            rangingMeasurement2 = [firstObject rangingMeasurement];
            [rangingMeasurement2 ptsScore];
            v34 = v31 > v33;

            if (v34)
            {
              v35 = v23;

              firstObject = v35;
            }
          }

          else if ([v23 selectionReason] || (objc_msgSend(v12, "selectedNode"), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "contactIdentifier"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(identifiersCopy, "containsObject:", v27), v27, v26, (v28 & 1) != 0))
          {
            v36 = v23;

            firstObject = v36;
            goto LABEL_24;
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v50 objects:v54 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

LABEL_24:

    peopleNodes = [v12 peopleNodes];
    if ([peopleNodes count])
    {
      sentInitialConfiguration = [v12 sentInitialConfiguration];
    }

    else
    {
      sentInitialConfiguration = 0;
    }

    if (!firstObject)
    {
      goto LABEL_45;
    }

    nodeIdentifier = [firstObject nodeIdentifier];
    selectedNode3 = [v12 selectedNode];
    nodeIdentifier2 = [selectedNode3 nodeIdentifier];
    v42 = [nodeIdentifier isEqual:nodeIdentifier2];

    if ((v42 & 1) == 0)
    {
      v44 = share_sheet_log();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v56 = firstObject;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "people row AirDrop slot changing to %@", buf, 0xCu);
      }

      if (![firstObject selectionReason])
      {
        [firstObject setSelectionReason:2];
      }

      [v12 setSelectedNode:firstObject];
      [(SDShareSheetSlotManager *)obj createAirDropProxyForNode:firstObject session:v12];
    }

    else
    {
LABEL_45:
      if ([v19 count])
      {
        goto LABEL_42;
      }

      v43 = share_sheet_log();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "no AirDrop nodes discovered", buf, 2u);
      }

      [v12 setAirDropNodes:&__NSArray0__struct];
      [v12 setSelectedNode:0];
    }

    if (sentInitialConfiguration)
    {
      v45 = share_sheet_log();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "AirDrop suggestion node did change", buf, 2u);
      }

      [(SDShareSheetSlotManager *)obj dataSourceDidUpdateForSession:v12 animated:1];
    }
  }

  else
  {
    firstObject = share_sheet_log();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_FAULT))
    {
      sessionID2 = [browserCopy sessionID];
      sub_1001B3700(sessionID2, buf, firstObject);
    }
  }

LABEL_42:

  objc_sync_exit(obj);
}

- (void)createAirDropProxyForNode:(id)node session:(id)session
{
  nodeCopy = node;
  sessionCopy = session;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!nodeCopy)
  {
    goto LABEL_18;
  }

  v49 = SFLocalizedStringForKey();
  hostConfiguration = [sessionCopy hostConfiguration];
  hostLocale = [hostConfiguration hostLocale];
  v50 = [nodeCopy displayNameForLocale:hostLocale];

  realNameToNodeID = [sessionCopy realNameToNodeID];
  realName = [nodeCopy realName];
  v13 = [realNameToNodeID objectForKeyedSubscript:realName];

  if (!v13)
  {
    v13 = +[NSUUID UUID];
    realNameToNodeID2 = [sessionCopy realNameToNodeID];
    realName2 = [nodeCopy realName];
    [realNameToNodeID2 setObject:v13 forKeyedSubscript:realName2];
  }

  [nodeCopy setNodeIdentifier:v13];
  if (![sessionCopy skipSlotsRendering])
  {
    displayIcon = [nodeCopy displayIcon];
    v28 = [NSBundle bundleForClass:objc_opt_class()];
    v29 = [UIImage imageNamed:@"AirDropBadge" inBundle:v28];
    v30 = [v29 _applicationIconImageForFormat:5 precomposed:0];

    cGImage = [v30 CGImage];
    +[CATransaction begin];
    hostConfiguration2 = [sessionCopy hostConfiguration];
    v48 = [SDShareSheetSession labelColorWithHostConfiguration:hostConfiguration2];
    v46 = v30;

    isClassroom = [nodeCopy isClassroom];
    xpcHelperCnx = [sessionCopy xpcHelperCnx];
    hostConfiguration3 = [sessionCopy hostConfiguration];
    [(SDShareSheetSlotManager *)selfCopy _createNameLabelSlotWithString:v50 textColor:v48 maximumNumberOfLines:2 isAirDrop:0 ignoreNameWrapping:isClassroom sessionConnection:xpcHelperCnx hostConfig:hostConfiguration3];

    shareSheetContext = [(SDShareSheetSlotManager *)selfCopy shareSheetContext];
    v37 = +[NSMutableDictionary dictionary];
    if (displayIcon)
    {
      v47 = [(SDShareSheetSlotManager *)selfCopy createSlotForContext:shareSheetContext];
      [shareSheetContext setObject:displayIcon forSlot:v47];
    }

    else
    {
      v47 = 0;
    }

    if (cGImage)
    {
      v38 = [(SDShareSheetSlotManager *)selfCopy createSlotForContext:shareSheetContext];
      [shareSheetContext setObject:cGImage forSlot:v38];
      v39 = [NSNumber numberWithUnsignedInt:v38];
      [v37 setObject:v49 forKey:v39];

      if (!v51)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v38 = 0;
      if (!v51)
      {
LABEL_14:
        accessibilityCache = [(SDShareSheetSlotManager *)selfCopy accessibilityCache];
        [accessibilityCache addEntriesFromDictionary:v37];

        +[CATransaction commit];
        v43 = [[SFProxyText alloc] initWithSlotIdentifier:v51];
        v23 = [UIAirDropNode nodeWithIdentifier:v13 displayName:v43 subtitle:0 avatarImageSlotID:v47 transportImageSlotID:v38];

        goto LABEL_15;
      }
    }

    displayName = [nodeCopy displayName];
    v41 = [NSNumber numberWithUnsignedInt:v51];
    [v37 setObject:displayName forKey:v41];

    goto LABEL_14;
  }

  v16 = [SFPeopleSuggestion alloc];
  uUIDString = [v13 UUIDString];
  displayName2 = [nodeCopy displayName];
  transportBundleID = [nodeCopy transportBundleID];
  contact = [nodeCopy contact];
  model = [nodeCopy model];
  v22 = [v16 initWithIdentifier:uUIDString displayName:displayName2 transportBundleIdentifier:transportBundleID contact:contact deviceModelIdentifier:model];

  v23 = [UIAirDropNode nodeWithIdentifier:v13 peopleSuggestion:v22];
  v24 = [SFProxyText alloc];
  displayName3 = [nodeCopy displayName];
  v26 = [v24 initWithText:displayName3];
  [v23 setDisplayName:v26];

LABEL_15:
  [v23 setIsDisabled:{objc_msgSend(nodeCopy, "isDisabled")}];
  [v23 setHasSquareImage:{objc_msgSend(nodeCopy, "isClassroom")}];
  if (GestaltGetBoolean())
  {
    [v23 setSelectionReason:{objc_msgSend(nodeCopy, "selectionReason")}];
  }

  airDropNodes = [sessionCopy airDropNodes];
  [(SDShareSheetSlotManager *)selfCopy _clearSlotsForAirDropProxies:airDropNodes];
  v52 = v23;
  v45 = [NSArray arrayWithObjects:&v52 count:1];
  [sessionCopy setAirDropNodes:v45];

  +[CATransaction flush];
LABEL_18:
  objc_sync_exit(selfCopy);
}

- (id)_createActivityTitlePerspectiveDataForActivity:(id)activity foregroundColor:(id)color sessionConnection:(id)connection
{
  activityCopy = activity;
  colorCopy = color;
  connectionCopy = connection;
  if (!connectionCopy)
  {
    activityTitle = share_sheet_log();
    if (os_log_type_enabled(activityTitle, OS_LOG_TYPE_FAULT))
    {
      sub_1001B26CC();
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = 0;
    goto LABEL_13;
  }

  activityTitle = [activityCopy activityTitle];
  if (!activityTitle)
  {
    v12 = share_sheet_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001B265C();
    }

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v10 = [connectionCopy perspectiveDataForUIActivityTitle:activityTitle textColor:colorCopy];
LABEL_12:

LABEL_13:

  return v10;
}

- ($EC76EA2E339756B4D2C49A1061DE0928)_createNameLabelSlotWithString:(SEL)string textColor:(id)color maximumNumberOfLines:(id)lines isAirDrop:(unint64_t)drop ignoreNameWrapping:(BOOL)wrapping sessionConnection:(BOOL)connection hostConfig:(id)config
{
  connectionCopy = connection;
  wrappingCopy = wrapping;
  colorCopy = color;
  linesCopy = lines;
  configCopy = config;
  v20 = a10;
  retstr->var1.width = 0.0;
  retstr->var1.height = 0.0;
  *&retstr->var0 = 0;
  if (configCopy)
  {
    v31 = [colorCopy length];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1001AEFFC;
    v40[3] = &unk_1008D2F90;
    v41 = configCopy;
    v21 = colorCopy;
    v22 = linesCopy;
    v23 = v21;
    v42 = v21;
    v32 = v22;
    v43 = v22;
    dropCopy = drop;
    v45 = wrappingCopy;
    v46 = connectionCopy;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1001AF014;
    v33[3] = &unk_1008D2FB8;
    v34 = v41;
    v24 = v23;
    v35 = v24;
    v25 = v43;
    v36 = v25;
    dropCopy2 = drop;
    v38 = wrappingCopy;
    v39 = connectionCopy;
    [(SDShareSheetSlotManager *)self _uploadSlotWithVectorData:v40 cgImage:v33 performCATransaction:0 hostConfiguration:v20];
    if (!retstr->var0)
    {
      v26 = share_sheet_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        *buf = 138413570;
        v29 = "no";
        v48 = v24;
        v49 = 1024;
        if (wrappingCopy)
        {
          v30 = "yes";
        }

        else
        {
          v30 = "no";
        }

        v50 = v31;
        v51 = 2112;
        if (connectionCopy)
        {
          v29 = "yes";
        }

        v52 = v25;
        v53 = 1024;
        dropCopy3 = drop;
        v55 = 2080;
        v56 = v30;
        v57 = 2080;
        v58 = v29;
        _os_log_fault_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "returned nil: CGImgForNameLabelWithString:'%@', length: %i, textColor:%@, maxNumberOfLines: %i, isAirDrop: %s, ignoreNameWrapping: %s", buf, 0x36u);
      }
    }

    v27 = v41;
    linesCopy = v32;
  }

  else
  {
    v27 = share_sheet_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      sub_1001B3758();
    }
  }

  return result;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [(SDShareSheetSlotManager *)self shouldAcceptNewConnection:connectionCopy];
  v9 = daemon_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    sd_description = [connectionCopy sd_description];
    v11 = sd_description;
    v12 = "no";
    if (v8)
    {
      v12 = "yes";
    }

    *buf = 138412546;
    v23 = sd_description;
    v24 = 2080;
    v25 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "New connection from %@ accepted %s", buf, 0x16u);
  }

  if (v8)
  {
    [connectionCopy setDelegate:self];
    [connectionCopy setExportedObject:self];
    exportedInterface = [(SDShareSheetSlotManager *)self exportedInterface];
    [connectionCopy setExportedInterface:exportedInterface];

    remoteObjectInterface = [(SDShareSheetSlotManager *)self remoteObjectInterface];
    [connectionCopy setRemoteObjectInterface:remoteObjectInterface];

    objc_initWeak(buf, self);
    objc_initWeak(&location, connectionCopy);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001AF304;
    v18[3] = &unk_1008D2FE0;
    objc_copyWeak(&v19, &location);
    objc_copyWeak(&v20, buf);
    [connectionCopy setInvalidationHandler:v18];
    [connectionCopy resume];
    activeConnections = [(SDShareSheetSlotManager *)self activeConnections];
    v16 = [NSMutableSet setWithSet:activeConnections];

    [v16 addObject:connectionCopy];
    [(SDShareSheetSlotManager *)self setActiveConnections:v16];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  return v8;
}

- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply
{
  invocationCopy = invocation;
  [(SDShareSheetSlotManager *)self setCurrentConnection:connection];
  [invocationCopy invoke];
}

- (void)establishConnectionWithCompletionHandler:(id)handler
{
  (*(handler + 2))(handler, a2);
  currentConnection = [(SDShareSheetSlotManager *)self currentConnection];
  v5 = daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sd_description = [currentConnection sd_description];
    v7 = 138412290;
    v8 = sd_description;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "New connection established to %@", &v7, 0xCu);
  }

  [(SDShareSheetSlotManager *)self connectionEstablished:currentConnection];
}

- (id)exportedInterface
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SDShareSheetSlotManagerProtocol];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v3, v4, v5, v6, v7, v8, objc_opt_class(), 0];
  [v2 setClasses:v9 forSelector:"connectToDaemonWithContext:completionHandler:" argumentIndex:0 ofReply:0];

  [v2 setClass:objc_opt_class() forSelector:"connectUIServiceToDaemonWithSessionID:" argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:"sendConfiguration:completion:" argumentIndex:0 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:"requestConfigurationWithSessionID:completion:" argumentIndex:0 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:"activityViewControllerWithSessionID:selectedPersonWithIdentifier:" argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:"activityViewControllerWithSessionID:selectedPersonWithIdentifier:" argumentIndex:1 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:"activityViewControllerWithSessionID:removedPersonWithIdentifier:" argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:"activityViewControllerWithSessionID:removedPersonWithIdentifier:" argumentIndex:1 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:"activityViewControllerWithSessionID:didLongPressShareActivityWithIdentifier:" argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:"activityViewControllerWithSessionID:didLongPressShareActivityWithIdentifier:" argumentIndex:1 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:"activityViewControllerWithSessionID:provideFeedbackForPeopleSuggestionWithIdentifier:" argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:"activityViewControllerWithSessionID:provideFeedbackForPeopleSuggestionWithIdentifier:" argumentIndex:1 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:"activityViewControllerSessionDidEndWithSessionID:testingSnapshot:completionHandler:" argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:"activityViewControllerSessionDidEndWithSessionID:testingSnapshot:completionHandler:" argumentIndex:1 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:"activityViewControllerSessionDidEndWithSessionID:testingSnapshot:completionHandler:" argumentIndex:0 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:"userDefaultsViewControllerDidDisappearWithSessionID:" argumentIndex:0 ofReply:0];
  v10 = objc_opt_class();
  v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
  [v2 setClasses:v11 forSelector:"activityViewControllerWithSessionID:updatedFavoritesProxies:activityCategory:" argumentIndex:1 ofReply:0];

  v12 = objc_opt_class();
  v13 = [NSSet setWithObjects:v12, objc_opt_class(), 0];
  [v2 setClasses:v13 forSelector:"activityViewControllerWithSessionID:findSupportedActivitiesWithCompletionHandler:" argumentIndex:0 ofReply:1];

  [v2 setClass:objc_opt_class() forSelector:"createSharingURLForCollaborationRequest:completionHandler:" argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:"createSharingURLForCollaborationRequest:completionHandler:" argumentIndex:0 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:"requestSharedURLForCollaborationRequest:completionHandler:" argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:"requestSharedURLForCollaborationRequest:completionHandler:" argumentIndex:0 ofReply:1];

  return v2;
}

- (id)remoteObjectInterface
{
  v52 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SFShareSheetSlotObserverProtocol];
  v53 = objc_opt_class();
  v50 = objc_opt_class();
  v48 = objc_opt_class();
  v46 = objc_opt_class();
  v44 = objc_opt_class();
  v42 = objc_opt_class();
  v41 = objc_opt_class();
  v40 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [NSSet setWithObjects:v53, v50, v48, v46, v44, v42, v41, v40, v2, v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0];
  [v52 setClasses:v11 forSelector:"willPerformInServiceActivityWithRequest:completion:" argumentIndex:0 ofReply:1];

  v54 = objc_opt_class();
  v51 = objc_opt_class();
  v49 = objc_opt_class();
  v47 = objc_opt_class();
  v45 = objc_opt_class();
  v43 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = [NSSet setWithObjects:v54, v51, v49, v47, v45, v43, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, objc_opt_class(), 0];
  [v52 setClasses:v22 forSelector:"didPerformInServiceActivityWithIdentifier:completed:items:error:" argumentIndex:1 ofReply:0];

  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = [NSSet setWithObjects:v23, v24, objc_opt_class(), 0];
  [v52 setClasses:v25 forSelector:"performUserDefaultsWithFavoritesProxies:suggestionProxies:orderedUUIDs:activityCategory:" argumentIndex:0 ofReply:0];

  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = [NSSet setWithObjects:v26, v27, objc_opt_class(), 0];
  [v52 setClasses:v28 forSelector:"performUserDefaultsWithFavoritesProxies:suggestionProxies:orderedUUIDs:activityCategory:" argumentIndex:1 ofReply:0];

  v29 = objc_opt_class();
  v30 = [NSSet setWithObjects:v29, objc_opt_class(), 0];
  [v52 setClasses:v30 forSelector:"performUserDefaultsWithFavoritesProxies:suggestionProxies:orderedUUIDs:activityCategory:" argumentIndex:2 ofReply:0];

  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = [NSSet setWithObjects:v31, v32, objc_opt_class(), 0];
  [v52 setClasses:v33 forSelector:"updateUserDefaultsWithFavoritesProxies:suggestionProxies:orderedUUIDs:" argumentIndex:0 ofReply:0];

  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v36 = [NSSet setWithObjects:v34, v35, objc_opt_class(), 0];
  [v52 setClasses:v36 forSelector:"updateUserDefaultsWithFavoritesProxies:suggestionProxies:orderedUUIDs:" argumentIndex:1 ofReply:0];

  v37 = objc_opt_class();
  v38 = [NSSet setWithObjects:v37, objc_opt_class(), 0];
  [v52 setClasses:v38 forSelector:"updateUserDefaultsWithFavoritesProxies:suggestionProxies:orderedUUIDs:" argumentIndex:2 ofReply:0];

  [v52 setClass:objc_opt_class() forSelector:"didUpdateAirDropTransferWithChange:" argumentIndex:0 ofReply:0];
  [v52 setClass:objc_opt_class() forSelector:"dataSourceUpdatedWithSessionConfiguration:" argumentIndex:0 ofReply:0];

  return v52;
}

- (void)connectionEstablished:(id)established
{
  establishedCopy = established;
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sd_description = [establishedCopy sd_description];
    v6 = 138412290;
    v7 = sd_description;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "New connection established %@", &v6, 0xCu);
  }
}

- (void)connectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  v5 = daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sd_description = [invalidatedCopy sd_description];
    *buf = 138412290;
    v53 = sd_description;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Connection %@ invalidated", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  activeConnections = [(SDShareSheetSlotManager *)selfCopy activeConnections];
  v40 = [activeConnections mutableCopy];

  [v40 removeObject:invalidatedCopy];
  [(SDShareSheetSlotManager *)selfCopy setActiveConnections:v40];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  allValues = [(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession allValues];
  v10 = [allValues countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v10)
  {
    v11 = *v48;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v48 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        v13 = *(*(&v47 + 1) + 8 * i);
        connection = [v13 connection];
        v15 = connection == invalidatedCopy;

        if (v15)
        {
          v10 = v13;
          v16 = daemon_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v53 = v10;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Session matched to connection %@", buf, 0xCu);
          }

          goto LABEL_15;
        }
      }

      v10 = [allValues countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  shareSheetContext = [(SDShareSheetSlotManager *)selfCopy shareSheetContext];
  v18 = +[NSMutableArray array];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1001B0600;
  v44[3] = &unk_1008D3008;
  v19 = shareSheetContext;
  v45 = v19;
  v20 = v18;
  v46 = v20;
  v21 = objc_retainBlock(v44);
  +[CATransaction begin];
  hostShareActivityProxies = [v10 hostShareActivityProxies];
  (v21[2])(v21, hostShareActivityProxies);
  v38 = hostShareActivityProxies;
  hostActionActivityProxies = [v10 hostActionActivityProxies];
  (v21[2])(v21, hostActionActivityProxies);
  v36 = hostActionActivityProxies;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1001B07C4;
  v41[3] = &unk_1008D3008;
  v39 = v19;
  v42 = v39;
  v24 = v20;
  v43 = v24;
  v25 = objc_retainBlock(v41);
  airDropNodes = [v10 airDropNodes];
  (v25[2])(v25, airDropNodes);
  peopleNodes = [v10 peopleNodes];
  (v25[2])(v25, peopleNodes);
  accessibilityCache = [(SDShareSheetSlotManager *)selfCopy accessibilityCache];
  [accessibilityCache removeLabelsForSlotIDs:v24];

  nearbyCountSlotID = [v10 nearbyCountSlotID];

  if (nearbyCountSlotID)
  {
    nearbyCountSlotID2 = [v10 nearbyCountSlotID];
    [v39 deleteSlot:{objc_msgSend(nearbyCountSlotID2, "unsignedIntValue")}];
  }

  if (([v10 engagedWithSheet] & 1) == 0)
  {
    suggestionBrowser = [v10 suggestionBrowser];
    v32 = suggestionBrowser == 0;

    if (!v32)
    {
      suggestionBrowser2 = [v10 suggestionBrowser];
      [suggestionBrowser2 provideFeedbackForNodeAtIndex:0 bundleID:0 selectedActionBundleID:0 abandoned:1];
    }
  }

  peopleBrowser = [v10 peopleBrowser];
  sessionID = [peopleBrowser sessionID];

  [v10 invalidate];
  if (sessionID)
  {
    [(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession removeObjectForKey:sessionID];
  }

  if (![(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession count])
  {
    [(SDShareSheetSlotManager *)selfCopy invalidateShareSheetContext];
  }

  +[CATransaction commit];
  +[CATransaction flush];

  objc_sync_exit(selfCopy);
}

- (id)recipientHandlesForSessionID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v26 = dCopy;
  v6 = [(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession objectForKeyedSubscript:dCopy];
  selectedRecipient = [v6 selectedRecipient];
  if (selectedRecipient)
  {
    v7 = [[SFShareSheetRecipient alloc] initWithNode:selectedRecipient];
    v42 = v7;
    v8 = [NSArray arrayWithObjects:&v42 count:1];

    [v6 setSelectedRecipient:0];
  }

  else
  {
    recipients = [v6 recipients];
    v10 = [recipients count];

    if (v10)
    {
      v11 = objc_alloc_init(NSMutableArray);
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      recipients2 = [v6 recipients];
      v13 = [recipients2 countByEnumeratingWithState:&v32 objects:v41 count:16];
      if (v13)
      {
        v14 = *v33;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v33 != v14)
            {
              objc_enumerationMutation(recipients2);
            }

            v16 = [[SFShareSheetRecipient alloc] initWithPerson:*(*(&v32 + 1) + 8 * i) handleValidationBlock:&stru_1008D3048];
            [v11 addObject:v16];
          }

          v13 = [recipients2 countByEnumeratingWithState:&v32 objects:v41 count:16];
        }

        while (v13);
      }

      v17 = [v11 copy];
    }

    else
    {
      v11 = objc_alloc_init(NSMutableArray);
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      transferNodes = [v6 transferNodes];
      allValues = [transferNodes allValues];

      v20 = [allValues countByEnumeratingWithState:&v28 objects:v40 count:16];
      if (v20)
      {
        v21 = *v29;
        do
        {
          for (j = 0; j != v20; j = j + 1)
          {
            if (*v29 != v21)
            {
              objc_enumerationMutation(allValues);
            }

            v23 = [[SFShareSheetRecipient alloc] initWithNode:*(*(&v28 + 1) + 8 * j)];
            [v11 addObject:v23];
          }

          v20 = [allValues countByEnumeratingWithState:&v28 objects:v40 count:16];
        }

        while (v20);
      }

      v17 = [v11 copy];
    }

    v8 = v17;
  }

  objc_sync_exit(selfCopy);
  if (IsAppleInternalBuild())
  {
    v24 = share_sheet_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v37 = v8;
      v38 = 2112;
      v39 = v26;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Returning recipients %@ for session ID %@", buf, 0x16u);
    }
  }

  return v8;
}

- (void)requestMessagesRecipientInfoForSessionID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(NSMutableDictionary *)selfCopy->_sessionIDToShareSheetSession objectForKeyedSubscript:dCopy];
  selectedRecipient = [v9 selectedRecipient];

  if (selectedRecipient)
  {
    v11 = [SFShareSheetRecipient alloc];
    selectedRecipient2 = [v9 selectedRecipient];
    v13 = [v11 initWithNode:selectedRecipient2];

LABEL_3:
    [v9 setSelectedRecipient:0];
    v14 = 1;
    goto LABEL_6;
  }

  recipients = [v9 recipients];
  v16 = [recipients count];

  if (!v16)
  {
    v13 = 0;
    goto LABEL_3;
  }

  recipients2 = [v9 recipients];
  connection = [v9 connection];
  _queue = [connection _queue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001B11BC;
  v21[3] = &unk_1008D3070;
  v22 = dCopy;
  v23 = handlerCopy;
  sub_1001EAFE0(recipients2, _queue, v21);

  v14 = 0;
  v13 = 0;
LABEL_6:

  objc_sync_exit(selfCopy);
  if (v14)
  {
    if (IsAppleInternalBuild())
    {
      v20 = share_sheet_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v25 = v13;
        v26 = 2112;
        v27 = dCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Returning Messages recipient %@ for session ID %@", buf, 0x16u);
      }
    }

    (*(handlerCopy + 2))(handlerCopy, v13);
  }
}

- (void)_saveSnapshotToFile:(id)file withReferenceSnapshot:(id)snapshot sessionID:(id)d completionHandler:(id)handler
{
  fileCopy = file;
  snapshotCopy = snapshot;
  dCopy = d;
  handlerCopy = handler;
  testName = [snapshotCopy testName];

  if (testName)
  {
    testName2 = [snapshotCopy testName];
    [fileCopy setTestName:testName2];
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001B1404;
  v18[3] = &unk_1008D3098;
  v19 = snapshotCopy;
  v20 = dCopy;
  v21 = handlerCopy;
  v15 = handlerCopy;
  v16 = dCopy;
  v17 = snapshotCopy;
  [fileCopy writeSnapshotWithCompletionHandler:v18];
}

@end