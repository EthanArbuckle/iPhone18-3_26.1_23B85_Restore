@interface SDShareSheetSlotManager
+ (id)_bundleIdentifierForActivity:(id)a3;
+ (id)_groupActivitiesByBundleID:(id)a3;
+ (id)nonBreakingActivityTitle:(id)a3;
+ (id)sharedManager;
- ($EC76EA2E339756B4D2C49A1061DE0928)_createNameLabelSlotWithString:(SEL)a3 textColor:(id)a4 maximumNumberOfLines:(id)a5 isAirDrop:(unint64_t)a6 ignoreNameWrapping:(BOOL)a7 sessionConnection:(BOOL)a8 hostConfig:(id)a9;
- ($EC76EA2E339756B4D2C49A1061DE0928)_uploadSlotWithVectorData:(SEL)a3 cgImage:(id)a4 performCATransaction:(id)a5 hostConfiguration:(BOOL)a6;
- (BOOL)_hasCollaborationEntitlementForConnection:(id)a3;
- (BOOL)_loadActionProxy:(id)a3 configuration:(id)a4;
- (BOOL)_loadAirDropProxy:(id)a3 forAirDropNode:(id)a4 configuration:(id)a5;
- (BOOL)_loadSharingProxy:(id)a3 configuration:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CAContext)shareSheetContext;
- (CGImage)_createActivityTitleImageForActivity:(id)a3 foregroundColor:(id)a4 sessionConnection:(id)a5;
- (SDShareSheetSlotManager)init;
- (id)_activityTitleImagesMapForActivities:(id)a3 session:(id)a4;
- (id)_activityWithActivityType:(id)a3 session:(id)a4;
- (id)_createActionProxiesFromActivities:(id)a3 withTintColor:(id)a4 session:(id)a5;
- (id)_createActivityTitlePerspectiveDataForActivity:(id)a3 foregroundColor:(id)a4 sessionConnection:(id)a5;
- (id)_createShareProxiesFromActivities:(id)a3 session:(id)a4;
- (id)_createShareSheetContext;
- (id)_fetchShortcutWorkflowsForMatchingDictionaries:(id)a3 resolvedActivityItems:(id)a4 hostBundleID:(id)a5 iconSize:(CGSize)a6 iconScale:(double)a7 error:(id *)a8;
- (id)_getMainActivityPerBundleID:(id)a3;
- (id)_moveDefaultApplicationToFrontForURL:(id)a3 activities:(id)a4;
- (id)_remoteObjectProxyForConnection:(id)a3;
- (id)_removeSecondaryActivities:(id)a3 bundleIDToActivities:(id)a4;
- (id)_shortcutActivitiesForMatchingDictionaries:(id)a3 resolvedActivityItems:(id)a4 hostBundleID:(id)a5 configuration:(id)a6;
- (id)activeConnections;
- (id)activityHelper:(id)a3 activitiesForActivityType:(id)a4 matchingContext:(id)a5 sessionID:(id)a6;
- (id)activityHelper:(id)a3 predictionContextForSessionID:(id)a4;
- (id)configurationForDataSourceUpdateWithSession:(id)a3;
- (id)currentConnection;
- (id)exportedInterface;
- (id)getShareSheetSessionForSessionID:(id)a3;
- (id)recipientHandlesForSessionID:(id)a3;
- (id)remoteObjectInterface;
- (unsigned)createSlotForContext:(id)a3;
- (void)_clearSlotsForAirDropProxies:(id)a3;
- (void)_configureActionsSectionForSession:(id)a3;
- (void)_configurePeopleSuggestionsSectionForSession:(id)a3;
- (void)_configureSharingSectionsForSession:(id)a3;
- (void)_handleSelectedNode:(id)a3 session:(id)a4;
- (void)_instructHostToPerformExtensionActivity:(id)a3 session:(id)a4;
- (void)_instructHostToPerformHostActivity:(id)a3 session:(id)a4;
- (void)_instructHostToPerformShortcutActivity:(id)a3 singleUseToken:(id)a4 session:(id)a5;
- (void)_instructHostToPerformUserDefaultsActivityForCategory:(int64_t)a3 session:(id)a4 updatingView:(BOOL)a5;
- (void)_loadPresentableActivitiesForSession:(id)a3;
- (void)_performSelectedActivity:(id)a3 inSession:(id)a4;
- (void)_performServiceInitiatedActivityInServiceWithActivity:(id)a3 session:(id)a4;
- (void)_saveSnapshotToFile:(id)a3 withReferenceSnapshot:(id)a4 sessionID:(id)a5 completionHandler:(id)a6;
- (void)actionActivityUserDefaultsDidChangeWithSession:(id)a3;
- (void)activate;
- (void)activateSuggestionBrowserForSession:(id)a3 withExtensionMatchingDictionaries:(id)a4 assetIdentifiers:(id)a5 urlsBeingShared:(id)a6 sandboxExtensionsByfileURLPath:(id)a7;
- (void)activityViewControllerDidAppearWithSessionID:(id)a3;
- (void)activityViewControllerDidDisappearWithSessionID:(id)a3;
- (void)activityViewControllerDidEnterBackgroundWithSessionID:(id)a3;
- (void)activityViewControllerPerformEditActionsWithSessionID:(id)a3;
- (void)activityViewControllerSessionDidEndWithSessionID:(id)a3 testingSnapshot:(id)a4 completionHandler:(id)a5;
- (void)activityViewControllerWillEnterForegroundWithSessionID:(id)a3;
- (void)activityViewControllerWithSessionID:(id)a3 didLongPressShareActivityWithIdentifier:(id)a4;
- (void)activityViewControllerWithSessionID:(id)a3 favoritedActivity:(BOOL)a4 withIdentifier:(id)a5 activityCategory:(int64_t)a6;
- (void)activityViewControllerWithSessionID:(id)a3 findSupportedActivitiesWithCompletionHandler:(id)a4;
- (void)activityViewControllerWithSessionID:(id)a3 performActivityWithType:(id)a4 completionHandler:(id)a5;
- (void)activityViewControllerWithSessionID:(id)a3 provideFeedbackForPeopleSuggestionWithIdentifier:(id)a4;
- (void)activityViewControllerWithSessionID:(id)a3 removedPersonWithIdentifier:(id)a4;
- (void)activityViewControllerWithSessionID:(id)a3 selectedActionWithIdentifier:(id)a4;
- (void)activityViewControllerWithSessionID:(id)a3 selectedActivityWithIdentifier:(id)a4;
- (void)activityViewControllerWithSessionID:(id)a3 selectedDefaultActivityWithIdentifier:(id)a4 activityCategory:(int64_t)a5;
- (void)activityViewControllerWithSessionID:(id)a3 selectedPersonWithIdentifier:(id)a4;
- (void)activityViewControllerWithSessionID:(id)a3 toggledActivityWithIdentifier:(id)a4 activityCategory:(int64_t)a5;
- (void)activityViewControllerWithSessionID:(id)a3 updatedFavoritesProxies:(id)a4 activityCategory:(int64_t)a5;
- (void)browser:(id)a3 didUpdatePeople:(id)a4 deletedContactIdentifiers:(id)a5;
- (void)canShareFileURL:(id)a3 completionHandler:(id)a4;
- (void)configureAirDropNodesFromSuggestionNodes:(id)a3 shareUserDefaults:(id)a4 forSession:(id)a5;
- (void)connectToDaemonWithContext:(id)a3 completionHandler:(id)a4;
- (void)connectUIServiceToDaemonWithSessionID:(id)a3;
- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5;
- (void)connectionEstablished:(id)a3;
- (void)connectionInvalidated:(id)a3;
- (void)createAirDropProxyForNode:(id)a3 session:(id)a4;
- (void)createSharingURLForCollaborationRequest:(id)a3 completionHandler:(id)a4;
- (void)establishConnectionWithCompletionHandler:(id)a3;
- (void)handleAirDropNodesChanged:(id)a3 sessionID:(id)a4;
- (void)handleAirDropTransferUpdated:(id)a3;
- (void)invalidate;
- (void)invalidateShareSheetContext;
- (void)notifySession:(id)a3 activitySelected:(id)a4;
- (void)notifySession:(id)a3 favoritesProxies:(id)a4 suggestionProxies:(id)a5 activityCategory:(int64_t)a6 updatingView:(BOOL)a7;
- (void)notifySession:(id)a3 personSelectedWithActivityType:(id)a4;
- (void)notifySession:(id)a3 shortcutSelectedWithBundleID:(id)a4 singleUseToken:(id)a5;
- (void)notifySession:(id)a3 withAirDropTransferChange:(id)a4;
- (void)requestAirDropItemsForNode:(id)a3 endpointUUID:(id)a4 session:(id)a5;
- (void)requestCollaborativeModeForContentIdentifier:(id)a3 completionHandler:(id)a4;
- (void)requestConfigurationWithSessionID:(id)a3 completion:(id)a4;
- (void)requestDefaultShareModeCollaborationForURL:(id)a3 completionHandler:(id)a4;
- (void)requestMessagesRecipientInfoForSessionID:(id)a3 completionHandler:(id)a4;
- (void)saveCollaborativeMode:(id)a3 forContentIdentifier:(id)a4;
- (void)sendAirDropUpdateForSessionWithID:(id)a3 realName:(id)a4 status:(int64_t)a5 progress:(double)a6;
- (void)sendConfiguration:(id)a3 completion:(id)a4;
- (void)session:(id)a3 didConnectNearbySharingInteractionWithEndpointUUID:(id)a4;
- (void)sessionDidChange:(id)a3;
- (void)setActiveConnections:(id)a3;
- (void)setCurrentConnection:(id)a3;
- (void)shareActivityUserDefaultsDidChangeWithSession:(id)a3;
- (void)suggestionBrowserDidUpdateSuggestions:(id)a3;
- (void)transferUpdated:(id)a3;
- (void)updateNearbyCountSlotIDForSession:(id)a3;
- (void)userDefaultsViewControllerDidDisappearWithSessionID:(id)a3;
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

- (id)getShareSheetSessionForSessionID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_sessionIDToShareSheetSession objectForKeyedSubscript:v4];
  objc_sync_exit(v5);

  return v6;
}

- (id)currentConnection
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->__currentConnection;
  objc_sync_exit(v2);

  return v3;
}

- (void)setCurrentConnection:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  currentConnection = obj->__currentConnection;
  obj->__currentConnection = v4;

  objc_sync_exit(obj);
}

- (id)activeConnections
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSSet *)v2->__activeConnections copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)setActiveConnections:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  activeConnections = v4->__activeConnections;
  v4->__activeConnections = v5;

  objc_sync_exit(v4);
}

- (void)transferUpdated:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:@"SessionID"];
    if (v7)
    {
      v8 = [v6 objectForKeyedSubscript:@"RealName"];
      if (v8)
      {
        v9 = [v4 userInfo];
        v10 = [v9 objectForKeyedSubscript:@"TransferText"];
        v11 = [v10 integerValue];

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

        [(SDShareSheetSlotManager *)self sendAirDropUpdateForSessionWithID:v7 realName:v8 status:v11 progress:v15];
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

- (void)handleAirDropTransferUpdated:(id)a3
{
  v4 = a3;
  v9 = [v4 sessionID];
  v5 = [v4 realName];
  v6 = [v4 state];
  [v4 progress];
  v8 = v7;

  [(SDShareSheetSlotManager *)self sendAirDropUpdateForSessionWithID:v9 realName:v5 status:v6 progress:v8];
}

- (void)sendAirDropUpdateForSessionWithID:(id)a3 realName:(id)a4 status:(int64_t)a5 progress:(double)a6
{
  v10 = a3;
  v11 = a4;
  v12 = self;
  objc_sync_enter(v12);
  v13 = [(NSMutableDictionary *)v12->_sessionIDToShareSheetSession objectForKeyedSubscript:v10];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 airDropController];
    v16 = [v15 hasActiveNearbySharingInteraction];

    v17 = [v14 transferNodes];
    v18 = [v17 objectForKeyedSubscript:v11];

    if (v18)
    {
      v19 = 1;
    }

    else
    {
      v19 = v16;
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

    v20 = [v14 hostConfiguration];
    v58 = [SDShareSheetSession labelColorWithHostConfiguration:v20];

    v21 = [v14 hostConfiguration];
    v56 = [SDShareSheetSession secondaryLabelColorWithHostConfiguration:v21];

    v22 = [v14 hostConfiguration];
    v23 = [v22 hostLocale];
    v57 = [v18 displayNameForLocale:v23];

    v24 = [v14 lastTransferEvent] != 3 && objc_msgSend(v14, "lastTransferEvent") != 11;
    [v14 setLastTransferEvent:a5];
    if ((a5 & 0xFFFFFFFFFFFFFFF7) == 3 && !v24)
    {
      v25 = &stru_1008EFBD0;
LABEL_39:

LABEL_40:
      goto LABEL_41;
    }

    if (a5 == 15)
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

    if ((a5 & 0xFFFFFFFFFFFFFFF7) == 3)
    {
      v25 = SFLocalizedStringForKey();
      v26 = v56;

      v54 = @"Waiting";
      v27 = 2;
      goto LABEL_25;
    }

    v25 = &stru_1008EFBD0;
    if (a5 > 8)
    {
      if (a5 == 9)
      {
        v49 = [v14 notificationHaptic];
        v61[0] = _NSConcreteStackBlock;
        v61[1] = 3221225472;
        v61[2] = sub_10019C9E8;
        v61[3] = &unk_1008CDEA0;
        v61[4] = v49;
        dispatch_async(&_dispatch_main_q, v61);
        v25 = SFLocalizedStringForKey();
        v44 = +[UIColor systemBlueColor];

        v50 = [v14 transferNodes];
        [v50 removeObjectForKey:v11];

        [v14 setFiredImpactHaptic:0];
        [v14 setTransferActive:0];

        v54 = @"Sent";
        v46 = 4;
      }

      else
      {
        if (a5 != 10)
        {
LABEL_47:
          v54 = &stru_1008EFBD0;
          v55 = 0;
          goto LABEL_26;
        }

        v43 = [v14 notificationHaptic];
        v59[0] = _NSConcreteStackBlock;
        v59[1] = 3221225472;
        v59[2] = sub_10019CA00;
        v59[3] = &unk_1008CDEA0;
        v59[4] = v43;
        dispatch_async(&_dispatch_main_q, v59);
        v25 = SFLocalizedStringForKey();
        v44 = +[UIColor systemRedColor];

        v45 = [v14 transferNodes];
        [v45 removeObjectForKey:v11];

        [v14 setFiredImpactHaptic:0];
        [v14 setTransferActive:0];

        v54 = @"Failed";
        v46 = 6;
      }
    }

    else
    {
      if (a5 != 4)
      {
        if (a5 == 7)
        {
          if (([v14 firedImpactHaptic] & 1) == 0)
          {
            v28 = [v14 impactHaptic];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10019C9E0;
            block[3] = &unk_1008CDEA0;
            block[4] = v28;
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

      v47 = [v14 notificationHaptic];
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_10019C9F4;
      v60[3] = &unk_1008CDEA0;
      v60[4] = v47;
      dispatch_async(&_dispatch_main_q, v60);
      v25 = SFLocalizedStringForKey();
      v44 = +[UIColor systemRedColor];

      v48 = [v14 transferNodes];
      [v48 removeObjectForKey:v11];

      [v14 setFiredImpactHaptic:0];
      [v14 setTransferActive:0];

      v54 = @"Declined";
      v46 = 5;
    }

    v55 = v46;
    v58 = v44;
LABEL_26:
    if (v16)
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
      v31 = [v14 xpcHelperCnx];
      if (!v31)
      {
        v30 = share_sheet_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          sub_1001B1FD0();
        }

        goto LABEL_38;
      }

      v52 = v31;
      v32 = [v14 hostConfiguration];
      v51 = [SDShareSheetSession labelColorWithHostConfiguration:v32];

      +[CATransaction begin];
      memset(buf, 0, sizeof(buf));
      v33 = [v14 hostConfiguration];
      [(SDShareSheetSlotManager *)v12 _createNameLabelSlotWithString:v57 textColor:v51 maximumNumberOfLines:1 isAirDrop:1 ignoreNameWrapping:0 sessionConnection:v52 hostConfig:v33];

      v34 = [v14 hostConfiguration];
      [(SDShareSheetSlotManager *)v12 _createNameLabelSlotWithString:v25 textColor:v58 maximumNumberOfLines:1 isAirDrop:1 ignoreNameWrapping:1 sessionConnection:v52 hostConfig:v34];

      v53 = +[NSMutableDictionary dictionary];
      v35 = [NSNumber numberWithUnsignedInt:*buf];
      [v53 setObject:v57 forKeyedSubscript:v35];

      v36 = [NSNumber numberWithUnsignedInt:0];
      [v53 setObject:v25 forKeyedSubscript:v36];

      v37 = [(SDShareSheetSlotManager *)v12 accessibilityCache];
      [v37 addEntriesFromDictionary:v53];

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

    if (v16)
    {
      v40 = 0;
    }

    else
    {
      v41 = [v14 realNameToNodeID];
      v40 = [v41 objectForKeyedSubscript:v11];
    }

    v42 = [[SFAirDropTransferChange alloc] initWithState:v55 progress:v40 proxyIdentifier:v30 displayName:v29 status:a6];
    [(SDShareSheetSlotManager *)v12 notifySession:v14 withAirDropTransferChange:v42];

LABEL_38:
    goto LABEL_39;
  }

  v18 = share_sheet_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_1001B2038();
  }

LABEL_41:

  objc_sync_exit(v12);
}

- (void)activate
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_activateCalled)
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
      v5 = [(SDShareSheetSlotManager *)v2 machServiceName];
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Activating %@", &v10, 0xCu);
    }

    v2->_activateCalled = 1;
    v6 = [NSXPCListener alloc];
    v7 = [(SDShareSheetSlotManager *)v2 machServiceName];
    v8 = [v6 initWithMachServiceName:v7];
    xpcListener = v2->_xpcListener;
    v2->_xpcListener = v8;

    [(NSXPCListener *)v2->_xpcListener setDelegate:v2];
    [(NSXPCListener *)v2->_xpcListener resume];
    +[_UIActivityHelper registerContinuousExtensionsDiscoveryOnLaunch];
  }

  objc_sync_exit(v2);
}

- (void)invalidate
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_invalidateCalled)
  {
    v2->_invalidateCalled = 1;
    [(NSXPCListener *)v2->_xpcListener invalidate];
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v3 = [(SDShareSheetSlotManager *)v2 activeConnections];
    v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
            objc_enumerationMutation(v3);
          }

          [*(*(&v7 + 1) + 8 * v6) invalidate];
          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }

    v2->_invalidateDone = 1;
  }

  objc_sync_exit(v2);
}

- (id)_remoteObjectProxyForConnection:(id)a3
{
  v3 = a3;
  objc_initWeak(&location, v3);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10019CDD8;
  v6[3] = &unk_1008D2B80;
  objc_copyWeak(&v7, &location);
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

- (id)configurationForDataSourceUpdateWithSession:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([v4 sharingExpanded])
  {
    v6 = [v4 peopleNodes];
    v7 = [v6 count];

    if (v7)
    {
      v8 = objc_opt_new();
      v9 = [v4 hostConfiguration];
      v10 = [v9 isCollaborative];

      if ((v10 & 1) == 0)
      {
        v11 = [v4 airDropNodes];
        [v8 addObjectsFromArray:v11];
      }

      v12 = [v4 peopleNodes];
      [v8 addObjectsFromArray:v12];

      v13 = [NSPredicate predicateWithFormat:@"isRestricted == NO"];
      v14 = [v8 filteredArrayUsingPredicate:v13];
    }

    else
    {
      v14 = 0;
    }

    v16 = [v4 hostShareActivityProxies];
    v17 = [NSPredicate predicateWithFormat:@"isRestricted == NO"];
    v15 = [v16 filteredArrayUsingPredicate:v17];
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v18 = objc_alloc_init(UISDShareSheetSessionConfiguration);
  [(UISDShareSheetSessionConfiguration *)v18 setPeopleProxies:v14];
  [(UISDShareSheetSessionConfiguration *)v18 setShareProxies:v15];
  v19 = [v4 hostActionActivityProxies];
  [(UISDShareSheetSessionConfiguration *)v18 setActionProxies:v19];

  v20 = [v4 nearbyCountSlotID];
  [(UISDShareSheetSessionConfiguration *)v18 setNearbyCountSlotID:v20];

  v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 nearbyCountBadge]);
  [(UISDShareSheetSessionConfiguration *)v18 setNearbyCountBadge:v21];

  v22 = [v4 hostConfiguration];
  if ([v22 requestPeopleSuggestionsData])
  {
    v23 = [v4 hideSuggestions];

    if ((v23 & 1) == 0)
    {
      v24 = [v4 connection];
      v25 = [v24 valueForEntitlement:@"com.apple.sharesheet.allow-suggestions"];

      if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v25 BOOLValue])
      {
        v26 = [v4 suggestionBrowser];
        v27 = [v26 peopleSuggestions];
        [(UISDShareSheetSessionConfiguration *)v18 setPeopleSuggestions:v27];
      }

      else
      {
        v28 = share_sheet_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          v35 = [v4 connection];
          v36[0] = 67109120;
          v36[1] = [v35 processIdentifier];
          _os_log_fault_impl(&_mh_execute_header, v28, OS_LOG_TYPE_FAULT, "process %d tried to request people suggestions data, but it was not entitled!", v36, 8u);
        }
      }
    }
  }

  else
  {
  }

  v29 = [v4 screenTimeMonitor];
  v30 = [v29 restrictedActivityTypes];

  v31 = [v4 connection];
  v32 = [(SDShareSheetSlotManager *)v5 _hasCollaborationEntitlementForConnection:v31];

  if ((v32 & 1) == 0)
  {
    v33 = [v30 arrayByAddingObject:@"com.apple.Collaboration.Internal"];

    v30 = v33;
  }

  [(UISDShareSheetSessionConfiguration *)v18 setRestrictedActivityTypes:v30];
  [(UISDShareSheetSessionConfiguration *)v18 setShouldBlockPresentation:[(SDShareSheetSlotManager *)v5 wantsToBlockPresentation]];

  objc_sync_exit(v5);

  return v18;
}

- (BOOL)_hasCollaborationEntitlementForConnection:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForEntitlement:@"com.apple.developer.shared-with-you.collaboration"];
  v5 = [v3 valueForEntitlement:@"com.apple.developer.shared-with-you"];
  v6 = [v3 valueForEntitlement:@"com.apple.private.sociallayer.highlights"];

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
    v8 = [v5 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 0;
    if (!v7)
    {
      goto LABEL_9;
    }

LABEL_11:
    v10 = v8 | v9;
    goto LABEL_12;
  }

  v9 = [v6 BOOLValue];
  if (v7)
  {
    goto LABEL_11;
  }

LABEL_9:
  v10 = 1;
LABEL_12:

  return v10 & 1;
}

- (void)notifySession:(id)a3 favoritesProxies:(id)a4 suggestionProxies:(id)a5 activityCategory:(int64_t)a6 updatingView:(BOOL)a7
{
  v7 = a7;
  v24 = a3;
  v12 = a4;
  v13 = a5;
  if ([v24 remoteShareSheet])
  {
    [v24 uiServiceConnection];
  }

  else
  {
    [v24 connection];
  }
  v14 = ;
  v15 = [(SDShareSheetSlotManager *)self _remoteObjectProxyForConnection:v14];
  if (v7)
  {
    if (a6 == 1)
    {
      [v24 shareActivities];
    }

    else
    {
      [v24 actionActivities];
    }
    v17 = ;
    v18 = [v17 valueForKey:@"activityUUID"];
    [v15 updateUserDefaultsWithFavoritesProxies:v12 suggestionProxies:v13 orderedUUIDs:v18];
  }

  else
  {
    v16 = [NSNumber numberWithInteger:a6];
    [v24 setUserDefaultsActivityCategory:v16];

    if (a6 == 1)
    {
      v17 = [v24 shareActivities];
      v18 = [v17 valueForKey:@"activityUUID"];
      v19 = v15;
      v20 = v12;
      v21 = v13;
      v22 = v18;
      v23 = 1;
    }

    else
    {
      v17 = [v24 actionActivities];
      v18 = [v17 valueForKey:@"activityUUID"];
      v19 = v15;
      v20 = v12;
      v21 = v13;
      v22 = v18;
      v23 = a6;
    }

    [v19 performUserDefaultsWithFavoritesProxies:v20 suggestionProxies:v21 orderedUUIDs:v22 activityCategory:v23];
  }
}

- (void)notifySession:(id)a3 activitySelected:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [v20 connection];
  v9 = [(SDShareSheetSlotManager *)v7 _remoteObjectProxyForConnection:v8];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v6 activityUUID];
    [v9 performActivityInHostWithUUID:v10];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v10 = v6;
    v11 = +[MCProfileConnection sharedConnection];
    v12 = [v20 hostAppBundleID];
    v13 = [v11 isAppManaged:v12];

    v14 = [v20 hostConfiguration];
    LOBYTE(v12) = [v14 isContentManaged];

    v15 = [v11 mayOpenFromManagedToUnmanaged];
    v16 = [v10 activityType];
    v17 = [UISUIActivityExtensionItemDataRequest requestForActivity:v10 activityType:v16 sourceAppIsManaged:(v13 | v12) & ~v15 & 1];

    v18 = [v10 applicationExtension];
    v19 = [v18 identifier];
    [v9 performExtensionActivityInHostWithBundleID:v19 request:v17];
  }

LABEL_6:
  objc_sync_exit(v7);
}

- (void)notifySession:(id)a3 shortcutSelectedWithBundleID:(id)a4 singleUseToken:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = self;
  objc_sync_enter(v10);
  v11 = [v13 connection];
  v12 = [(SDShareSheetSlotManager *)v10 _remoteObjectProxyForConnection:v11];

  [v12 performShortcutActivityInHostWithBundleID:v8 singleUseToken:v9];
  objc_sync_exit(v10);
}

- (void)notifySession:(id)a3 personSelectedWithActivityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [v6 connection];
  v10 = [(SDShareSheetSlotManager *)v8 _remoteObjectProxyForConnection:v9];

  v11 = [(SDShareSheetSlotManager *)v8 _activityWithActivityType:v7 session:v6];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 activityUUID];
    [v10 performActivityInHostWithUUID:v13];
  }

  else
  {
    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1001B220C();
    }
  }

  objc_sync_exit(v8);
}

- (void)notifySession:(id)a3 withAirDropTransferChange:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [v10 connection];
  v9 = [(SDShareSheetSlotManager *)v7 _remoteObjectProxyForConnection:v8];

  [v9 didUpdateAirDropTransferWithChange:v6];
  objc_sync_exit(v7);
}

- (void)requestAirDropItemsForNode:(id)a3 endpointUUID:(id)a4 session:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    v12 = [v9 endpointUUID];
    v13 = v10;
    v14 = v12;
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
      v27 = [v9 endpointUUID];
      [v15 handleFailureInMethod:a2 object:self file:@"SDShareSheetSlotManager.m" lineNumber:1948 description:{@"endpointUUID:%@ mismatching node.endpointUUID:%@", v13, v27}];
      v13 = v27;
      goto LABEL_7;
    }

    v16 = [v13 isEqual:v14];

    if ((v16 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

LABEL_8:
  v17 = self;
  objc_sync_enter(v17);
  v18 = objc_alloc_init(SDAirDropActivity);
  v19 = [v11 hostAppBundleID];
  [(SDAirDropActivity *)v18 setSendingAppBundleID:v19];

  [(SDAirDropActivity *)v18 setMaxPreviews:3];
  [v11 setActiveAirDropActivity:v18];
  v20 = [UISUIActivityExtensionItemDataRequest requestForActivity:v18 activityType:UIActivityTypeAirDrop activitySpecificMetadata:0];
  objc_sync_exit(v17);

  v21 = [v11 connection];
  v22 = [(SDShareSheetSlotManager *)v17 _remoteObjectProxyForConnection:v21];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10019E10C;
  v28[3] = &unk_1008D2BD0;
  v29 = v18;
  v30 = v11;
  v31 = v10;
  v32 = v9;
  v23 = v9;
  v24 = v10;
  v25 = v11;
  v26 = v18;
  [v22 willPerformInServiceActivityWithRequest:v20 completion:v28];
}

- (void)connectToDaemonWithContext:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v46 = a4;
  v7 = [[SHSheetRemoteConnectionContext alloc] initWithDictionary:v6];
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(SHSheetRemoteConnectionContext *)v7 sessionIdentifier];
  v10 = [SDShareSheetSession alloc];
  v11 = [(SDShareSheetSlotManager *)v8 currentConnection];
  v12 = [(SHSheetRemoteConnectionContext *)v7 instantShareSheet];
  v13 = [(SDShareSheetSession *)v10 initWithSessionID:v9 xpcConnection:v11 instantShareSheet:v12 remoteShareSheet:[(SHSheetRemoteConnectionContext *)v7 remoteShareSheet] xrRenderingMode:[(SHSheetRemoteConnectionContext *)v7 xrRenderingMode]];

  [(SDShareSheetSession *)v13 setDelegate:v8];
  [(SHSheetRemoteConnectionContext *)v7 peopleSuggestionsTimeout];
  [(SDShareSheetSession *)v13 setPeopleSuggestionsTimeout:?];
  [(SDShareSheetSession *)v13 setShouldSuggestFamilyMembers:[(SHSheetRemoteConnectionContext *)v7 shouldSuggestFamilyMembers]];
  [(SDShareSheetSession *)v13 setHideSuggestions:[(SHSheetRemoteConnectionContext *)v7 hideSuggestions]];
  [(SDShareSheetSession *)v13 setIsSharePlayAvailable:[(SHSheetRemoteConnectionContext *)v7 isSharePlayAvailable]];
  v14 = [(SHSheetRemoteConnectionContext *)v7 supportsCollaboration];
  if (v14)
  {
    v12 = [(SDShareSheetSession *)v13 connection];
    v15 = [(SDShareSheetSlotManager *)v8 _hasCollaborationEntitlementForConnection:v12];
  }

  else
  {
    v15 = 0;
  }

  [(SDShareSheetSession *)v13 setSupportsCollaboration:v15];
  if (v14)
  {
  }

  v16 = [(SHSheetRemoteConnectionContext *)v7 peopleSuggestionBundleIds];
  v17 = [v16 copy];
  [(SDShareSheetSession *)v13 setPeopleSuggestionBundleIds:v17];

  v18 = [(SHSheetRemoteConnectionContext *)v7 processedImageResultsData];
  [(SDShareSheetSession *)v13 setProcessedImageResultsData:v18];

  v19 = [(SHSheetRemoteConnectionContext *)v7 urlsBeingShared];
  v20 = [v19 count];

  if (v20)
  {
    v21 = [(SHSheetRemoteConnectionContext *)v7 urlsBeingShared];
    v22 = [v21 firstObject];
    [(SDShareSheetSession *)v13 setUrlBeingShared:v22];
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
    v26 = [(SDShareSheetSession *)v13 xpcHelperCnx];
    [v26 setInvalidationHandler:v58];

    v27 = [(SDShareSheetSession *)v13 xpcHelperCnx];
    [v27 activate];

    if (+[_TtC16DaemoniOSLibrary21SDXPCHelperImageCache cacheIsEmpty])
    {
      v28 = [(SDShareSheetSession *)v13 description];
      v29 = [NSString stringWithFormat:@"%@, cacheEmpty: %s", v28, "yes"];

      v30 = [(SDShareSheetSession *)v13 xpcHelperCnx];
      [v30 setSessionKeepAliveTransactionIdentifier:v29];
    }

    v31 = [(SDShareSheetSession *)v13 xpcHelperCnx];
    v32 = [(SDShareSheetSession *)v13 airDropController];
    [v32 setHelperConnection:v31];
  }

  objc_initWeak(buf, v8);
  objc_initWeak(&location, v13);
  v33 = [_UIActivityHelper alloc];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_10019EA4C;
  v52[3] = &unk_1008D2BF8;
  v52[4] = v8;
  objc_copyWeak(&v54, buf);
  v34 = v7;
  v53 = v34;
  objc_copyWeak(&v55, &location);
  v35 = [v33 initWithDelegate:v8 sessionID:v9 fetchShortcutsBlock:v52];
  [(SDShareSheetSession *)v13 setActivityHelper:v35];

  [(NSMutableDictionary *)v8->_sessionIDToShareSheetSession setObject:v13 forKeyedSubscript:v9];
  v36 = [(SHSheetRemoteConnectionContext *)v34 discoveryContext];
  if (v36)
  {
    v37 = [(SDShareSheetSession *)v13 activityHelper];
    [v37 primeWithDiscoveryContext:v36];

    v38 = [v36 activityItemValueExtensionMatchingDictionaries];
    v39 = [(SHSheetRemoteConnectionContext *)v34 assetIdentifiers];
    v40 = [(SHSheetRemoteConnectionContext *)v34 urlsBeingShared];
    v41 = [(SHSheetRemoteConnectionContext *)v34 sandboxExtensionsByfileURLPath];
    [(SDShareSheetSlotManager *)v8 activateSuggestionBrowserForSession:v13 withExtensionMatchingDictionaries:v38 assetIdentifiers:v39 urlsBeingShared:v40 sandboxExtensionsByfileURLPath:v41];
  }

  v42 = [(SDShareSheetSession *)v13 peopleBrowser];
  [v42 setDiffableDelegate:v8];

  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_10019EC10;
  v50[3] = &unk_1008D2C20;
  objc_copyWeak(&v51, buf);
  v43 = [(SDShareSheetSession *)v13 airDropController];
  [v43 setTransferUpdateChangedHandler:v50];

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10019EC6C;
  v47[3] = &unk_1008D29A8;
  objc_copyWeak(&v49, buf);
  v44 = v9;
  v48 = v44;
  v45 = [(SDShareSheetSession *)v13 airDropController];
  [v45 setAvailableNodesChangedHandler:v47];

  [(SDShareSheetSession *)v13 activate];
  objc_destroyWeak(&v49);
  objc_destroyWeak(&v51);

  objc_destroyWeak(&v55);
  objc_destroyWeak(&v54);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  objc_sync_exit(v8);
  v46[2](v46);
}

- (void)connectUIServiceToDaemonWithSessionID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_sessionIDToShareSheetSession objectForKeyedSubscript:v4];
  if (v6)
  {
    v7 = [(SDShareSheetSlotManager *)v5 currentConnection];
    [v6 setUiServiceConnection:v7];

    if ([v6 sentInitialConfiguration])
    {
      [(SDShareSheetSlotManager *)v5 dataSourceDidUpdateForSession:v6 animated:0];
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

  objc_sync_exit(v5);
}

- (id)_fetchShortcutWorkflowsForMatchingDictionaries:(id)a3 resolvedActivityItems:(id)a4 hostBundleID:(id)a5 iconSize:(CGSize)a6 iconScale:(double)a7 error:(id *)a8
{
  height = a6.height;
  width = a6.width;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = share_sheet_log();
  v19 = share_sheet_log();
  v20 = os_signpost_id_make_with_pointer(v19, self);

  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, v20, "FetchShortcuts", " enableTelemetry=YES ", buf, 2u);
  }

  v21 = +[VCVoiceShortcutClient standardClient];
  v22 = [v21 shareSheetWorkflowsForExtensionMatchingDictionaries:v17 resolvedActivityItems:v16 hostBundleIdentifier:v15 iconSize:a8 iconScale:width error:{height, a7}];

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

- (id)_shortcutActivitiesForMatchingDictionaries:(id)a3 resolvedActivityItems:(id)a4 hostBundleID:(id)a5 configuration:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [v10 iconSize];
  v15 = v14;
  v17 = v16;
  [v10 iconScale];
  v19 = v18;

  v35 = 0;
  v20 = [(SDShareSheetSlotManager *)self _fetchShortcutWorkflowsForMatchingDictionaries:v13 resolvedActivityItems:v12 hostBundleID:v11 iconSize:&v35 iconScale:v15 error:v17, v19];

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

- (void)_configureSharingSectionsForSession:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 hostConfiguration];
  if (v6)
  {
    v7 = [_UIActivityUserDefaults alloc];
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v7 initWithUnderlyingUserDefaults:v8 activityDefaultsKey:@"UIActivityCategoryShare"];
    [(SDShareSheetSlotManager *)v5 setShareUserDefaults:v9];

    v10 = [v4 orderedPresentableActivities];
    v11 = sub_10019F970(v10, 1);

    [v4 setShareActivities:v11];
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
          v18 = [v17 activityUUID];
          [v12 setObject:v17 forKeyedSubscript:v18];
        }

        v14 = [v13 countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v14);
    }

    [v4 setShareActivitiesByUUID:v12];
    if (_os_feature_enabled_impl())
    {
      v19 = [SDShareSheetSlotManager _groupActivitiesByBundleID:v13];
      [v4 setBundleIDToActivities:v19];

      v20 = [v4 bundleIDToActivities];
      v21 = [(SDShareSheetSlotManager *)v5 _removeSecondaryActivities:v13 bundleIDToActivities:v20];

      v13 = v21;
    }

    v22 = [(SDShareSheetSlotManager *)v5 shareUserDefaults];
    if (v22)
    {
      v23 = [v13 count]== 0;

      if (!v23)
      {
        v24 = [(SDShareSheetSlotManager *)v5 shareUserDefaults];
        v25 = [v24 activitiesOrderedByUserActivityOrderForActivities:v13];

        [v4 setShareActivitiesInUserOrder:v25];
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
        v53[4] = v5;
        v27 = [NSPredicate predicateWithBlock:v53];
        v28 = [v25 filteredArrayUsingPredicate:v27];

        if (_os_feature_enabled_impl())
        {
          v29 = [v6 urlsBeingShared];
          v30 = [v29 firstObject];
          [v4 setUrlBeingShared:v30];

          v31 = [v4 urlBeingShared];
          v32 = [(SDShareSheetSlotManager *)v5 _moveDefaultApplicationToFrontForURL:v31 activities:v28];

          v28 = v32;
        }

        v33 = [v28 count];
        v34 = [(SDShareSheetSlotManager *)v5 shareUserDefaults];
        v35 = [v34 activityIdentifiersInUserOrder];
        v36 = [v35 count];

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
        v41 = [(SDShareSheetSlotManager *)v5 shareUserDefaults];
        v42 = [(_UIUserDefaultsActivity *)v40 initWithUserDefaults:v41 activityCategory:1];

        v13 = [v39 arrayByAddingObject:v42];

        v43 = [(_UIUserDefaultsActivity *)v42 activityUUID];
        [v12 setObject:v42 forKeyedSubscript:v43];

        [v4 setShareUserDefaultsActivity:v42];
      }
    }

    [v4 setVisibleShareActivities:v13];
    objc_initWeak(&buf, v4);
    v46 = _NSConcreteStackBlock;
    v47 = 3221225472;
    v48 = sub_10019FB40;
    v49 = &unk_1008CDF68;
    v50 = v5;
    objc_copyWeak(&v51, &buf);
    [v4 setDisabledNodesUpdatedHandler:&v46];
    v44 = [v4 visibleShareActivities];
    v45 = [(SDShareSheetSlotManager *)v5 _createShareProxiesFromActivities:v44 session:v4];

    [(SDShareSheetSlotManager *)v5 _configurePeopleSuggestionsSectionForSession:v4];
    [v4 setHostShareActivityProxies:v45];

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

  objc_sync_exit(v5);
}

- (void)_configurePeopleSuggestionsSectionForSession:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 hostConfiguration];
  v7 = v6;
  if (v6)
  {
    if ([v6 shouldSkipPeopleSuggestions])
    {
      v8 = [v7 initialPhotosAssetDetails];
      if (v8)
      {

        goto LABEL_6;
      }
    }

    if ([v4 hideSuggestions])
    {
LABEL_6:
      v9 = share_sheet_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v7 shouldSkipPeopleSuggestions];
        v11 = [v7 initialPhotosAssetDetails];
        v12 = v11;
        v13 = "no";
        if (v10)
        {
          v13 = "yes";
        }

        *buf = 136315394;
        v37 = v13;
        v38 = 2112;
        v39 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SDShareSheetSlotManager: Should skip people suggestions %s with asset details %@", buf, 0x16u);
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

    v17 = [v4 suggestionBrowser];
    v9 = [v17 peopleSuggestionNodes];

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

    v24 = [(SDShareSheetSlotManager *)v5 shareUserDefaults];
    [(SDShareSheetSlotManager *)v5 configureAirDropNodesFromSuggestionNodes:v9 shareUserDefaults:v24 forSession:v4];

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
      v28 = [v4 testingSnapshot];
      v29 = v28 == 0;

      if (!v29)
      {
        v30 = +[NSMutableArray array];
        v31 = [v4 suggestedPeople];
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_1001A0098;
        v34[3] = &unk_1008D29D0;
        v32 = v30;
        v35 = v32;
        [v31 enumerateObjectsUsingBlock:v34];

        v33 = [v4 testingSnapshot];
        [v33 updateWithPeopleSuggestionActivityTypes:v32 forCollaboration:{objc_msgSend(v4, "isCollaborative")}];
      }
    }
  }

  else
  {
    v9 = share_sheet_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1001B2470();
    }
  }

LABEL_27:

  objc_sync_exit(v5);
}

- (void)_configureActionsSectionForSession:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 hostConfiguration];
  if (v6)
  {
    v7 = [_UIActivityUserDefaults alloc];
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v7 initWithUnderlyingUserDefaults:v8 activityDefaultsKey:@"UIActivityCategoryAction"];
    [(SDShareSheetSlotManager *)v5 setActionUserDefaults:v9];

    v10 = [v4 orderedPresentableActivities];
    v11 = sub_10019F970(v10, 0);

    [v4 setActionActivities:v11];
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
          v18 = [v17 activityUUID];
          [v12 setObject:v17 forKeyedSubscript:v18];
        }

        v14 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v14);
    }

    v19 = [(SDShareSheetSlotManager *)v5 actionUserDefaults];

    if (v19)
    {
      v20 = [(SDShareSheetSlotManager *)v5 actionUserDefaults];
      v21 = [v20 activitiesOrderedByUserActivityOrderForActivities:v13];

      [v4 setActionActivitiesInUserOrder:v21];
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
      v31 = v5;
      v32 = v4;
      v23 = [NSPredicate predicateWithBlock:&v27];
      v13 = [v21 filteredArrayUsingPredicate:{v23, v27, v28, v29, v30, v31}];
    }

    [v4 setActionActivitiesByUUID:v12];
    [v4 setVisibleActionActivities:v13];
    v24 = [v4 visibleActionActivities];
    v25 = [v6 hostTintColor];
    v26 = [(SDShareSheetSlotManager *)v5 _createActionProxiesFromActivities:v24 withTintColor:v25 session:v4];

    [v4 setHostActionActivityProxies:v26];
  }

  else
  {
    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1001B24AC();
    }
  }

  objc_sync_exit(v5);
}

- (void)requestConfigurationWithSessionID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(NSMutableDictionary *)v8->_sessionIDToShareSheetSession objectForKeyedSubscript:v6];
  if (v9)
  {
    v10 = [(SDShareSheetSlotManager *)v8 configurationForDataSourceUpdateWithSession:v9];
    v7[2](v7, v10);
  }

  else
  {
    v10 = share_sheet_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1001B24E8();
    }
  }

  objc_sync_exit(v8);
}

- (void)sendConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v102 = a4;
  v103 = [v6 sessionID];
  if (v103)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v8 = share_sheet_log();
    v9 = share_sheet_log();
    v10 = os_signpost_id_make_with_pointer(v9, v6);

    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "SetConfiguration", "", buf, 2u);
    }

    v11 = self;
    objc_sync_enter(v11);
    v12 = [(NSMutableDictionary *)v11->_sessionIDToShareSheetSession objectForKeyedSubscript:v103];
    if (!v12)
    {
      v100 = share_sheet_log();
      if (os_log_type_enabled(v100, OS_LOG_TYPE_FAULT))
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
      v108 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "processing configuration: %@", buf, 0xCu);
    }

    v14 = +[NSBundle mainBundle];
    v15 = [v14 preferredLocalizations];
    [v6 setPreferredLocalizations:v15];

    v16 = [v12 hostConfiguration];
    v17 = [v16 hostTraitCollection];
    v18 = [v6 hostTraitCollection];
    v19 = v17;
    v20 = v18;
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

    v23 = [v12 hostConfiguration];

    v24 = +[SFAirDropUserDefaults_objc privateContactDiscoveryEnabled];
    if (v23)
    {
      v25 = 0;
    }

    else
    {
      v25 = v24;
    }

    if (v25 == 1)
    {
      v26 = [v12 airDropController];
      v27 = [v12 hostAppBundleID];
      [v26 activateWithBundleID:v27];
    }

    v28 = [v12 hostConfiguration];
    v100 = [v28 securityScopedURLsForMatching];

    [v12 setHostConfiguration:v6];
    v29 = [v12 xpcHelperCnx];
    [v29 updateShareSheetHostConfiguration:v6];

    v30 = [v12 hostConfiguration];
    v101 = [v30 securityScopedURLsForMatching];

    if (v101)
    {
      [v12 _activateSecurityContext:v101];
      if (v100 != v101)
      {
        [v12 _deactivateSecurityContext:v100];
      }
    }

    v31 = +[SDStatusMonitor sharedMonitor];
    v32 = [v31 isAirDropAllowed];

    v99 = [v12 hostAppBundleID];
    v33 = +[MCProfileConnection sharedConnection];
    v34 = [v33 isClassroomEnabled];

    v35 = [v6 isContentManaged];
    v36 = +[MCProfileConnection sharedConnection];
    v37 = [v36 mayShareToAirDropForOriginatingAppBundleID:v99 originatingAccountIsManaged:v35];

    if ((v32 | v34) & v37)
    {
      v36 = [v6 excludedActivityTypes];
      v38 = [v36 containsObject:UIActivityTypeAirDrop] ^ 1;
    }

    else
    {
      v38 = 0;
    }

    [v12 setAirDropAllowed:v38];
    if ((v32 | v34) & v37)
    {
    }

    v39 = share_sheet_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413570;
      v108 = v12;
      v109 = 1024;
      v110 = v32;
      v111 = 1024;
      v112 = v34;
      v113 = 2112;
      v114 = v99;
      v115 = 1024;
      v116 = v35;
      v117 = 1024;
      v118 = v37;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%@, airdropGloballyAllowed: %i, classroomEnabled: %i, hostBundleID: %@, isContentManaged: %i, mayShare: %i", buf, 0x2Eu);
    }

    if (([v6 excludedActivityCategories] & 2) != 0 || objc_msgSend(v6, "sharingStyle") == 2)
    {
      v40 = 0;
      v41 = 1;
    }

    else
    {
      v41 = 0;
      v40 = [v6 sharingStyle] != 1;
    }

    [v12 setSharingExpanded:{(objc_msgSend(v12, "sharingExpanded") | v40) & 1}];
    [v12 setIsCollaborative:{objc_msgSend(v6, "isCollaborative")}];
    v42 = [v6 recipients];
    [v12 setRecipients:v42];

    if (_os_feature_enabled_impl())
    {
      v43 = [v12 testingSnapshot];
      if (v43)
      {
        v44 = [v6 testingSnapshot];
        v45 = v44 == 0;

        if (!v45)
        {
          v46 = [v12 testingSnapshot];
          v47 = [v6 testingSnapshot];
          [v46 updateFromSnapshot:v47];

LABEL_43:
          goto LABEL_44;
        }
      }

      v48 = [v6 testingSnapshot];

      if (v48)
      {
        v46 = [v6 testingSnapshot];
        [v12 setTestingSnapshot:v46];
        goto LABEL_43;
      }
    }

LABEL_44:
    v49 = [v6 testingReferenceSnapshot];
    [v12 setTestingReferenceSnapshot:v49];

    v50 = [(SDShareSheetSlotManager *)v11 currentConnection];

    if (v50)
    {
      v51 = share_sheet_log();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = [(SDShareSheetSlotManager *)v11 currentConnection];
        v53 = [v52 sd_connectionBundleID];
        *buf = 138412290;
        v108 = v53;
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
    v56 = os_signpost_id_make_with_pointer(v55, v6);

    if (v56 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v54, OS_SIGNPOST_INTERVAL_BEGIN, v56, "LoadPresentableActivitiesForSession", " enableTelemetry=YES ", buf, 2u);
    }

    v57 = [v6 hostHiddenActivityConfigurations];
    v58 = [SUIHostActivityProxy activitiesForConfigurations:v57];
    [v12 setHiddenActivities:v58];

    [(SDShareSheetSlotManager *)v11 _loadPresentableActivitiesForSession:v12];
    v59 = share_sheet_log();
    v60 = share_sheet_log();
    v61 = os_signpost_id_make_with_pointer(v60, v6);

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

        [(SDShareSheetSlotManager *)v11 _configureSharingSectionsForSession:v12];
      }

      else
      {
        v63 = share_sheet_log();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "fetching sharing sections asynchronously…", buf, 2u);
        }

        objc_initWeak(buf, v11);
        v64 = [v12 connection];
        v65 = [v64 _queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001A1650;
        block[3] = &unk_1008CDC30;
        objc_copyWeak(&v106, buf);
        v105 = v12;
        dispatch_async(v65, block);

        objc_destroyWeak(&v106);
        objc_destroyWeak(buf);
      }
    }

    [(SDShareSheetSlotManager *)v11 _configureActionsSectionForSession:v12];
    if (!v23 || v98 != 1)
    {
      if (+[SFAirDropUserDefaults_objc privateContactDiscoveryEnabled])
      {
        v66 = [v12 airDropController];
        v67 = [v66 availableNodes];
        v68 = [v12 sessionID];
        [(SDShareSheetSlotManager *)v11 handleAirDropNodesChanged:v67 sessionID:v68];
      }

      else
      {
        v66 = [v12 peopleBrowser];
        v67 = [v12 peopleBrowser];
        v68 = [v67 people];
        [(SDShareSheetSlotManager *)v11 browser:v66 didUpdatePeople:v68 deletedContactIdentifiers:0];
      }
    }

    v69 = [v12 selectedNode];
    [v69 setSelectionReason:2];

    v70 = [v12 selectedNode];
    [(SDShareSheetSlotManager *)v11 createAirDropProxyForNode:v70 session:v12];

    [(SDShareSheetSlotManager *)v11 updateNearbyCountSlotIDForSession:v12];
    v71 = share_sheet_log();
    v72 = share_sheet_log();
    v73 = os_signpost_id_make_with_pointer(v72, v6);

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
      v22 = [(SDShareSheetSlotManager *)v11 configurationForDataSourceUpdateWithSession:v12];
      [v22 setReloadData:1];
    }

    [v12 setSentInitialConfiguration:1];
    [v12 reportCurrentInvocationForDuration:((CFAbsoluteTimeGetCurrent() - Current) * 1000.0)];
    v74 = [v12 uiServiceConnection];

    if (v74)
    {
      [(SDShareSheetSlotManager *)v11 dataSourceDidUpdateForSession:v12 animated:0];
    }

    v75 = [v12 userDefaultsActivityCategory];
    v76 = v75 == 0;

    if (!v76)
    {
      v77 = [v12 userDefaultsActivityCategory];
      -[SDShareSheetSlotManager _instructHostToPerformUserDefaultsActivityForCategory:session:updatingView:](v11, "_instructHostToPerformUserDefaultsActivityForCategory:session:updatingView:", [v77 integerValue], v12, 1);
    }

    if (_os_feature_enabled_impl())
    {
      v78 = [v12 testingSnapshot];
      v79 = v78 == 0;

      if (!v79)
      {
        v80 = [v12 testingSnapshot];
        v81 = [v12 testingReferenceSnapshot];
        [v80 updatePreconditionsIfNeededWithReferenceSnapshot:v81];

        v82 = [v12 shareActivities];
        v83 = [v12 visibleShareActivities];
        if ([v12 isSharePlayAvailable])
        {
          v84 = [v12 shareActivities];
          v85 = [v12 hiddenActivities];
          v86 = [v84 arrayByAddingObjectsFromArray:v85];

          v87 = [v12 visibleShareActivities];
          v88 = [v12 hiddenActivities];
          v89 = [v87 arrayByAddingObjectsFromArray:v88];

          v82 = v86;
          v83 = v89;
        }

        v90 = [v12 testingSnapshot];
        v91 = [v12 actionActivities];
        v92 = [v12 visibleActionActivities];
        [v90 updateWithDiscoveredShareActivities:v82 visibleShareActivities:v83 actionActivities:v91 visibleActionActivities:v92 forCollaboration:{objc_msgSend(v12, "isCollaborative")}];
      }
    }

    v93 = [v12 findSupportedActivitiesCompletionHandler];

    if (v93)
    {
      v94 = [v12 findSupportedActivitiesCompletionHandler];
      [v12 setFindSupportedActivitiesCompletionHandler:0];
      [(SDShareSheetSlotManager *)v11 activityViewControllerWithSessionID:v103 findSupportedActivitiesWithCompletionHandler:v94];
    }

    v95 = [v12 performActivityType];

    if (v95)
    {
      v96 = [v12 performActivityType];
      [v12 setPerformActivityType:0];
      v97 = [v12 performActivityCompletionHandler];
      [v12 setPerformActivityCompletionHandler:0];
      [(SDShareSheetSlotManager *)v11 activityViewControllerWithSessionID:v103 performActivityWithType:v96 completionHandler:v97];
    }

LABEL_89:
    objc_sync_exit(v11);

    if (v12)
    {
      v102[2](v102, v22);
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

- (void)createSharingURLForCollaborationRequest:(id)a3 completionHandler:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A1764;
  v7[3] = &unk_1008D2CE8;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  [SFCollaborationUtilities createSharingURLForCollaborationRequest:v6 completionHandler:v7];
}

- (void)requestDefaultShareModeCollaborationForURL:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v13 = 0;
  v7 = [[LSClaimBinding alloc] initWithURL:v6 error:&v13];

  v8 = v13;
  v9 = [v7 claimRecord];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [v7 claimRecord];
    v12 = [v11 defaultShareModeCollaboration];
  }

  else
  {
    v12 = 0;
  }

  v5[2](v5, v12, v8);
}

- (void)requestCollaborativeModeForContentIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[SFCollaborationUserDefaults sharedDefaults];
  v8 = [v7 existingCollaborativeModeForContentIdentifier:v6];

  v5[2](v5, v8);
}

- (void)saveCollaborativeMode:(id)a3 forContentIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = +[SFCollaborationUserDefaults sharedDefaults];
  v7 = [v6 BOOLValue];

  [v8 setCollaborativeMode:v7 contentIdentifier:v5];
}

- (id)_moveDefaultApplicationToFrontForURL:(id)a3 activities:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isFileURL])
  {
    v8 = [UIDocumentInteractionController interactionControllerWithURL:v6];
    v9 = [v8 _defaultApplication];
    if (!v9)
    {
      v31 = v7;

      goto LABEL_32;
    }

    v10 = v9;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v7 = v7;
    v11 = [v7 countByEnumeratingWithState:&v42 objects:v47 count:16];
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
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v42 + 1) + 8 * i);
          v15 = [v14 applicationProxy];
          v16 = [v15 isEqual:v10];

          if (v16)
          {
            v11 = v14;
            goto LABEL_13;
          }
        }

        v11 = [v7 countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_13:
      v8 = v36;
    }

    v17 = [(SDShareSheetSlotManager *)self shareUserDefaults];
    v18 = [v17 activityIdentifiersInUserOrder];

    if (v11)
    {
      v19 = [v11 _activityTypeUsingFallbackActivityTypeIfNecessary];
      v20 = [v18 containsObject:v19];

      if ((v20 & 1) == 0)
      {
        v21 = [(SDShareSheetSlotManager *)self shareUserDefaults];
        v22 = [v21 hasUserEditedActivityOrder];

        if (v22)
        {
          v34 = v11;
          v35 = v6;
          v37 = v8;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v23 = v7;
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

                v29 = [*(*(&v38 + 1) + 8 * j) _activityTypeUsingFallbackActivityTypeIfNecessary];
                v30 = [v18 containsObject:v29];

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

          v6 = v35;
          v8 = v37;
          v11 = v34;
        }

        else
        {
          v26 = 1;
        }

        v32 = [v7 mutableCopy];
        [v32 removeObject:v11];
        [v32 insertObject:v11 atIndex:v26];

        v7 = v32;
      }
    }
  }

  v31 = v7;
LABEL_32:

  return v31;
}

+ (id)_bundleIdentifierForActivity:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 containingAppBundleIdentifier];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v9 = [v4 applicationExtension];
      v7 = [v9 identifier];
    }
  }

  else if ((objc_opt_respondsToSelector() & 1) != 0 && ([v3 applicationIdentifier], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v7 = [v3 applicationIdentifier];
  }

  else
  {
    v7 = @"noBundleID";
  }

  return v7;
}

+ (id)_groupActivitiesByBundleID:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
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

- (id)_removeSecondaryActivities:(id)a3 bundleIDToActivities:(id)a4
{
  v6 = a3;
  v7 = [(SDShareSheetSlotManager *)self _getMainActivityPerBundleID:a4];
  v8 = +[NSMutableIndexSet indexSet];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
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

- (id)_getMainActivityPerBundleID:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [v3 allKeys];
  v5 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    v22 = *v31;
    v23 = v3;
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
        v10 = [v3 objectForKeyedSubscript:{v9, v22, v23}];
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
          v12 = [v3 objectForKeyedSubscript:v9];
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
                  v19 = [*(*(&v26 + 1) + 8 * i) _defaultSortGroup];
                  if (v19 < [v15 _defaultSortGroup])
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
          v3 = v23;
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

- (void)updateNearbyCountSlotIDForSession:(id)a3
{
  v4 = a3;
  if (+[SFAirDropUserDefaults_objc privateContactDiscoveryEnabled])
  {
    v5 = [v4 airDropNearbyCount];
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = share_sheet_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v4 peopleNodes];
    *buf = 67109376;
    *&buf[4] = v5;
    LOWORD(v26) = 1024;
    *(&v26 + 2) = [v8 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Found nearby count %u people nodes %u", buf, 0xEu);
  }

  v9 = [(SDShareSheetSlotManager *)v6 shareSheetContext];
  if (v5 <= 1)
  {
    if (v5 == 1)
    {
      v11 = [v4 peopleNodes];
      v10 = [v11 count] == 0;
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

  if ([v4 skipSlotsRendering])
  {
    if (v10)
    {
      v12 = v5;
    }

    else
    {
      v12 = 0;
    }

    [v4 setNearbyCountBadge:v12];
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
    v23 = v4;
    v24 = v5;
    v13 = v23;
    v20 = v13;
    v21 = v5;
    v14 = [v13 hostConfiguration];
    [(SDShareSheetSlotManager *)v6 _uploadSlotWithVectorData:v22 cgImage:&v19 performCATransaction:1 hostConfiguration:v14];

    if (*buf)
    {
      v15 = [v13 nearbyCountSlotID];
      [v9 deleteSlot:{objc_msgSend(v15, "unsignedIntValue")}];

      v16 = [NSNumber numberWithUnsignedInt:*buf];
      [v13 setNearbyCountSlotID:v16];
    }
  }

  else
  {
    v17 = [v4 nearbyCountSlotID];

    if (v17)
    {
      v18 = [v4 nearbyCountSlotID];
      [v9 deleteSlot:{objc_msgSend(v18, "unsignedIntValue")}];

      [v4 setNearbyCountSlotID:0];
    }
  }

  objc_sync_exit(v6);
}

- (id)_createShareProxiesFromActivities:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  obj = self;
  objc_sync_enter(obj);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v10)
  {
    v48 = UIActivityTypeUserDefaults;
    v49 = *v58;
    v45 = v7;
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
        v13 = [v7 screenTimeMonitor];
        v14 = [v12 activityType];
        v15 = [v13 cachedPolicyForActivityType:v14];

        v16 = [[_UIHostActivityProxy alloc] initWithActivity:v12];
        [(_UIHostActivityProxy *)v16 setIsDisabled:v15 != 0];
        v17 = [v12 activityType];
        -[_UIHostActivityProxy setIsUserDefaultsActivity:](v16, "setIsUserDefaultsActivity:", [v17 isEqualToString:v48]);

        v18 = [v12 _activityImageUTI];
        [(_UIHostActivityProxy *)v16 setActivityImageUTI:v18];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || [(_UIHostActivityProxy *)v16 isUserDefaultsActivity])
        {
          v19 = [v12 activityType];
          v20 = UIActivityTypeAirDrop;
          v21 = v19;
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
                v29 = [v12 activityUUID];
                v30 = [v12 activityType];
                *buf = 138412546;
                v63 = v29;
                v64 = 2112;
                v65 = v30;
                _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Skipping slot creation for host activity %@ with activity type %@", buf, 0x16u);
              }

              goto LABEL_30;
            }
          }

          -[_UIHostActivityProxy setIsRestricted:](v16, "setIsRestricted:", [v7 airDropAllowed] ^ 1);
          goto LABEL_17;
        }

        v24 = [v7 hostConfiguration];
        v25 = [v24 preferredLocalizations];
        [v12 setPreferredLocalizations:v25];

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
          v31 = [v7 bundleIDToActivities];
          v32 = [v31 objectForKeyedSubscript:v27];

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

          v7 = v45;
          v8 = v46;
          v9 = v44;
        }

        v37 = [SFProxyText alloc];
        v38 = [v12 activityTitle];
        v39 = [v37 initWithText:v38];
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
          v41 = [v12 activityType];
          *buf = 138412546;
          v63 = v16;
          v64 = 2112;
          v65 = v41;
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

- (id)_createActionProxiesFromActivities:(id)a3 withTintColor:(id)a4 session:(id)a5
{
  v8 = a3;
  v40 = a4;
  v9 = a5;
  v43 = +[NSMutableArray array];
  v10 = self;
  objc_sync_enter(v10);
  val = v10;
  v11 = [(SDShareSheetSlotManager *)v10 actionUserDefaults];
  v44 = [v11 activityIdentifiersInUserOrder];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v8;
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
        v17 = [v15 activityType];
        -[_UIHostActivityProxy setIsFavorite:](v16, "setIsFavorite:", [v44 containsObject:v17]);

        v18 = [v15 _activityImageUTI];
        [(_UIHostActivityProxy *)v16 setActivityImageUTI:v18];

        v19 = [v15 _activityFooterText];

        if (v19)
        {
          v20 = [v15 _activityFooterText];
          [(_UIHostActivityProxy *)v16 setActivityFooter:v20];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = share_sheet_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v22 = [v15 activityUUID];
            v23 = [v15 activityType];
            *buf = 138412546;
            v53 = v22;
            v54 = 2112;
            v55 = v23;
            _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Skipping slot creation for host activity %@ with activity type %@", buf, 0x16u);
          }
        }

        else
        {
          v24 = [v9 hostConfiguration];
          v25 = [v24 hostTraitCollection];
          v26 = [v25 preferredContentSizeCategory];
          [v15 setContentSizeCategory:v26];

          v27 = [v9 hostConfiguration];
          v28 = [v27 preferredLocalizations];
          [v15 setPreferredLocalizations:v28];

          v29 = [v15 activityTitle];
          v21 = [SDShareSheetSlotManager nonBreakingActivityTitle:v29];

          v30 = [[SFProxyText alloc] initWithText:v21];
          [(_UIHostActivityProxy *)v16 setActivityTitle:v30];

          objc_opt_class();
          LOBYTE(v30) = objc_opt_isKindOfClass();
          if (v30 & 1 | (([v15 isMemberOfClass:objc_opt_class()] & 1) == 0))
          {
            v31 = objc_alloc_init(SDShareSheetLoadingConfiguration);
            [(SDShareSheetLoadingConfiguration *)v31 setTintColor:v40];
            v32 = [v9 xpcHelperCnx];
            [(SDShareSheetLoadingConfiguration *)v31 setHelperConnection:v32];

            [(SDShareSheetLoadingConfiguration *)v31 setInstantShareSheet:1];
            v33 = [v9 hostConfiguration];
            [(SDShareSheetLoadingConfiguration *)v31 setHostConfiguration:v33];

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
            v35 = [(SDShareSheetLoadingConfiguration *)v34 applicationExtension];
            v36 = [v35 identifier];
            [(_UIHostActivityProxy *)v16 setApplicationBundleIdentifier:v36];
          }
        }

        v37 = share_sheet_log();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [v15 activityType];
          *buf = 138412546;
          v53 = v16;
          v54 = 2112;
          v55 = v38;
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

- (CGImage)_createActivityTitleImageForActivity:(id)a3 foregroundColor:(id)a4 sessionConnection:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v9)
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
    v12 = [v7 activityTitle];
    v11 = v12;
    if (v12)
    {
      v16 = v12;
      v13 = [NSArray arrayWithObjects:&v16 count:1];
      v14 = [v9 CGImgForUIActivityTitles:v13 foregroundColor:v8 processOppositeColor:1];

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

- (id)_activityTitleImagesMapForActivities:(id)a3 session:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 xpcHelperCnx];
  v8 = v7;
  if (v7)
  {
    v25 = v7;
    v9 = [v6 hostConfiguration];
    v24 = [SDShareSheetSession labelColorWithHostConfiguration:v9];

    v10 = objc_alloc_init(NSMutableArray);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v26 = v5;
    v11 = v5;
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
            v17 = [v6 hostConfiguration];
            v18 = [v17 preferredLocalizations];
            [v16 setPreferredLocalizations:v18];

            v19 = [v16 activityTitle];
            if (v19)
            {
              [v10 addObject:v19];
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

    v5 = v26;
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

- (BOOL)_loadAirDropProxy:(id)a3 forAirDropNode:(id)a4 configuration:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 helperConnection];
  v12 = share_sheet_log();
  v13 = v12;
  if (v11)
  {
    v14 = share_sheet_log();
    v15 = os_signpost_id_make_with_pointer(v14, self);

    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, "LoadSuggestionUIAirdropNode", "", buf, 2u);
    }

    v16 = v11;

    v17 = [v9 transportBundleID];
    v13 = [_UIActivityHelper transportImageForBundleIdentifier:v17];

    v58 = [v13 CGImage];
    v59 = v8;
    v18 = [v8 suggestionNode];
    v19 = [v18 iconData];
    if (v19)
    {
      v20 = SFCreateCGImageFromData();
      [v9 setDisplayIcon:v20];
      if (v20)
      {
        CFRelease(v20);
      }
    }

    v21 = self;

    v22 = [v18 icon];
    if (v22)
    {
      [v9 setDisplayIcon:v22];
    }

    v23 = [v9 displayIcon];
    v57 = v18;
    v24 = [v18 hasGroupImage];
    [v10 hostLocale];
    v26 = v25 = v10;
    v27 = [v9 displayNameForLocale:v26];

    +[CATransaction begin];
    *buf = 0;
    v62 = 0;
    v63 = 0.0;
    v28 = [v25 textColor];
    if (v24)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2;
    }

    v55 = v25;
    v30 = [v25 hostConfiguration];
    v31 = v21;
    v56 = v27;
    v32 = v27;
    v33 = v21;
    v11 = v16;
    [(SDShareSheetSlotManager *)v31 _createNameLabelSlotWithString:v32 textColor:v28 maximumNumberOfLines:v29 isAirDrop:0 ignoreNameWrapping:v24 sessionConnection:v16 hostConfig:v30];

    v34 = [v9 formattedHandles];
    v35 = [v34 count];

    v36 = SFLocalizedStringForKey();
    v37 = [NSString localizedStringWithFormat:v36, v35];

    v38 = v58;
    v8 = v59;
    if (v23 || v58 || *buf)
    {
      v39 = [(SDShareSheetSlotManager *)v33 shareSheetContext];
      v40 = +[NSMutableDictionary dictionary];
      if (v23)
      {
        v41 = share_sheet_log();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *v60 = 0;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "create slot for people proxy icon image", v60, 2u);
        }

        v42 = [(SDShareSheetSlotManager *)v33 createSlotForContext:v39];
        [v39 setObject:v23 forSlot:v42];
        v8 = v59;
        [v59 setAvatarImageSlotID:v42];
        v38 = v58;
      }

      if (v38)
      {
        v43 = share_sheet_log();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          *v60 = 0;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "create slot for people proxy transport image", v60, 2u);
        }

        v44 = [(SDShareSheetSlotManager *)v33 createSlotForContext:v39];
        [v39 setObject:v38 forSlot:v44];
        v45 = [v9 transportBundleID];
        v46 = [NSNumber numberWithUnsignedInt:v44];
        [v40 setObject:v45 forKey:v46];

        v8 = v59;
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

        v48 = [v9 displayName];
        v49 = [NSNumber numberWithUnsignedInt:*buf];
        [v40 setObject:v48 forKey:v49];

        [v8 setMainLabelSlotID:*buf];
        [v8 setMainLabelSlotHeight:v63];
      }

      v50 = [(SDShareSheetSlotManager *)v33 accessibilityCache];
      [v50 addEntriesFromDictionary:v40];
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

    v10 = v55;
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1001B2770();
  }

  return v11 != 0;
}

- (BOOL)_loadSharingProxy:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = share_sheet_log();
  v10 = share_sheet_log();
  v11 = os_signpost_id_make_with_pointer(v10, self);

  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "LoadSharingActivityProxy", "", buf, 2u);
  }

  v12 = [v7 activity];
  if (!v12)
  {
    sub_1001B27AC(a2, self);
  }

  v13 = share_sheet_log();
  v14 = share_sheet_log();
  v15 = os_signpost_id_make_with_pointer(v14, self);

  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v16 = [v12 activityTitle];
    *buf = 138543362;
    v59 = v16;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, "UIActivityImageLoad", "%{public}@", buf, 0xCu);
  }

  v17 = [v12 _activityImage];
  v18 = share_sheet_log();
  v19 = share_sheet_log();
  v20 = os_signpost_id_make_with_pointer(v19, self);

  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v20, "UIActivityImageLoad", " enableTelemetry=YES ", buf, 2u);
  }

  v21 = [v17 CGImage];
  if (!v21)
  {
    v22 = share_sheet_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v12 activityTitle];
      *buf = 138412546;
      v59 = v23;
      v60 = 2112;
      v61 = v17;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%@: imageRef is nil for %@ ", buf, 0x16u);
    }
  }

  +[CATransaction begin];
  if ([v8 instantShareSheet])
  {
    v24 = 0;
    if (!v21)
    {
      goto LABEL_36;
    }

LABEL_35:
    v36 = [(SDShareSheetSlotManager *)self shareSheetContext];
    v37 = [(SDShareSheetSlotManager *)self createSlotForContext:v36];

    v38 = [(SDShareSheetSlotManager *)self shareSheetContext];
    [v38 setObject:v21 forSlot:v37];

    [v7 setIconImageSlotID:v37];
    goto LABEL_36;
  }

  v49 = v8;
  v25 = [v8 helperConnection];
  v26 = share_sheet_log();
  v27 = v26;
  if (v25)
  {
    v48 = v7;
    v28 = share_sheet_log();
    v29 = os_signpost_id_make_with_pointer(v28, self);

    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_BEGIN, v29, "UIActivityTitleDrawing", " enableTelemetry=YES ", buf, 2u);
    }

    v30 = [v49 textColor];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_1001A47A0;
    v54[3] = &unk_1008D2DB0;
    v54[4] = self;
    v55 = v12;
    v56 = v30;
    v57 = v25;
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_1001A47B0;
    v50[3] = &unk_1008D2DD8;
    v50[4] = self;
    v51 = v55;
    v27 = v56;
    v52 = v27;
    v53 = v57;
    v31 = [v49 hostConfiguration];
    [(SDShareSheetSlotManager *)self _uploadSlotWithVectorData:v54 cgImage:v50 performCATransaction:0 hostConfiguration:v31];
    v24 = *buf;

    v32 = share_sheet_log();
    v33 = share_sheet_log();
    v34 = os_signpost_id_make_with_pointer(v33, self);

    if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_END, v34, "UIActivityTitleDrawing", " enableTelemetry=YES ", buf, 2u);
    }

    v7 = v48;
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

  v8 = v49;
  if (v21)
  {
    goto LABEL_35;
  }

LABEL_36:
  +[CATransaction commit];
  if (v24)
  {
    v39 = [(SDShareSheetSlotManager *)self accessibilityCache];
    v40 = [v12 activityTitle];
    v41 = [NSNumber numberWithUnsignedInt:v24];
    [v39 setLabel:v40 forSlotID:v41];

    [v7 setLabelSlotID:v24];
  }

  v42 = share_sheet_log();
  v43 = share_sheet_log();
  v44 = os_signpost_id_make_with_pointer(v43, self);

  if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, OS_SIGNPOST_INTERVAL_END, v44, "LoadSharingActivityProxy", "", buf, 2u);
  }

  if (v21)
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

- (BOOL)_loadActionProxy:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = share_sheet_log();
  v9 = share_sheet_log();
  v10 = os_signpost_id_make_with_pointer(v9, self);

  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "LoadActionActivityProxy", "", buf, 2u);
  }

  v11 = [v6 activity];
  if (!v11)
  {
    sub_1001B2900();
  }

  v12 = share_sheet_log();
  v13 = share_sheet_log();
  v14 = os_signpost_id_make_with_pointer(v13, self);

  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v15 = [v11 activityTitle];
    *buf = 138543362;
    v63 = v15;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "UIActivityActionImageLoad", "%{public}@", buf, 0xCu);
  }

  v16 = [v11 _actionImage];
  v17 = share_sheet_log();
  v18 = share_sheet_log();
  v19 = os_signpost_id_make_with_pointer(v18, self);

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v19, "UIActivityActionImageLoad", " enableTelemetry=YES ", buf, 2u);
  }

  v20 = [v16 CGImage];
  if (!v20)
  {
    v21 = share_sheet_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v11 activityTitle];
      *buf = 138412546;
      v63 = v22;
      v64 = 2112;
      *v65 = v16;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@: imageRef is nil for %@ ", buf, 0x16u);
    }
  }

  v23 = &NSURLAuthenticationMethodServerTrust_ptr;
  +[CATransaction begin];
  v53 = v7;
  if ([v7 instantShareSheet])
  {
    v24 = 0;
    v25 = 0.0;
  }

  else
  {
    v26 = [v7 helperConnection];
    if (v26)
    {
      v27 = [v11 activityTitle];
      v28 = [SDShareSheetSlotManager nonBreakingActivityTitle:v27];

      v29 = [v7 tintColor];
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_1001A4E94;
      v58[3] = &unk_1008D2E00;
      v59 = v26;
      v60 = v28;
      v61 = v29;
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_1001A4EA4;
      v54[3] = &unk_1008D2E28;
      v55 = v59;
      v30 = v60;
      v56 = v30;
      v31 = v61;
      v57 = v31;
      v32 = [v7 hostConfiguration];
      [(SDShareSheetSlotManager *)self _uploadSlotWithVectorData:v58 cgImage:v54 performCATransaction:0 hostConfiguration:v32];
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
          *v65 = v11;
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

  v34 = [(SDShareSheetSlotManager *)self shareSheetContext];
  if (v20)
  {
    v35 = [(SDShareSheetSlotManager *)self createSlotForContext:v34];
    [v34 setObject:v20 forSlot:v35];
    [v6 setIconImageSlotID:v35];
  }

  if (v24)
  {
    v36 = [(SDShareSheetSlotManager *)self accessibilityCache];
    v37 = [v11 activityTitle];
    [NSNumber numberWithUnsignedInt:v24];
    v52 = v34;
    v38 = v24;
    v39 = self;
    v40 = v6;
    v41 = v20;
    v42 = v11;
    v43 = v16;
    v45 = v44 = v23;
    [v36 setLabel:v37 forSlotID:v45];

    v23 = v44;
    v16 = v43;
    v11 = v42;
    v20 = v41;
    v6 = v40;
    self = v39;
    v24 = v38;
    v34 = v52;

    [v6 setSlotTextHeight:v25];
    [v6 setLabelSlotID:v24];
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

  if (v20)
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

+ (id)nonBreakingActivityTitle:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v3 = &stru_1008EFBD0;
  }

  v5 = [(__CFString *)v3 mutableCopy];
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

- (void)activityViewControllerWithSessionID:(id)a3 selectedActivityWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(NSMutableDictionary *)v8->_sessionIDToShareSheetSession objectForKeyedSubscript:v6];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 shareActivitiesByUUID];
    v12 = [v11 objectForKeyedSubscript:v7];

    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Selected activity %@", buf, 0xCu);
    }

    v14 = [v10 recipients];
    v15 = [v14 count] == 0;

    if (v15)
    {
      v21 = [v10 suggestionBrowser];
      v22 = [v12 activityType];
      [v21 provideFeedbackForNodeAtIndex:0 bundleID:v22 selectedActionBundleID:0 abandoned:0];

      [(SDShareSheetSlotManager *)v8 _performSelectedActivity:v12 inSession:v10];
    }

    else
    {
      objc_initWeak(&location, v8);
      v16 = share_sheet_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v10 recipients];
        v18 = [v12 activityType];
        *buf = 138412546;
        v28 = v17;
        v29 = 2112;
        v30 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Creating suggestion from provided recipients %@ and activity %@", buf, 0x16u);
      }

      v19 = [v10 recipients];
      v20 = [v12 activityType];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1001A53D8;
      v23[3] = &unk_1008D2E50;
      v23[4] = v10;
      v12 = v12;
      v24 = v12;
      objc_copyWeak(&v25, &location);
      [_TtC16DaemoniOSLibrary29SDSuggestionCreationUtilities retrieveSuggestionForRecipients:v19 inActivityType:v20 completionHandler:v23];

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

  objc_sync_exit(v8);
}

- (void)_performSelectedActivity:(id)a3 inSession:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [v13 activityType];
  v9 = [v8 isEqualToString:UIActivityTypeUserDefaults];

  if (v9)
  {
    [(SDShareSheetSlotManager *)v7 _instructHostToPerformUserDefaultsActivityForCategory:1 session:v6];
    goto LABEL_11;
  }

  if ([v13 ss_shouldExecuteInShareSheet])
  {
    [(SDShareSheetSlotManager *)v7 _performServiceInitiatedActivityInServiceWithActivity:v13 session:v6];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v13;
    [(SDShareSheetSlotManager *)v7 _instructHostToPerformExtensionActivity:v10 session:v6];
LABEL_9:

    goto LABEL_11;
  }

  v11 = [v13 activityType];
  v12 = [v11 isEqualToString:UIActivityTypeAirDrop];

  if (v12)
  {
    v10 = [v6 airDropPeople];
    -[SDShareSheetSlotManager _instructHostToPerformAirDropActivityWithNoContentView:session:](v7, "_instructHostToPerformAirDropActivityWithNoContentView:session:", [v10 count] == 0, v6);
    goto LABEL_9;
  }

  [(SDShareSheetSlotManager *)v7 _instructHostToPerformHostActivity:v13 session:v6];
LABEL_11:
  objc_sync_exit(v7);
}

- (void)activityViewControllerWithSessionID:(id)a3 selectedActionWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SDShareSheetSlotManager *)self getShareSheetSessionForSessionID:v6];
  v9 = self;
  objc_sync_enter(v9);
  if (!v8)
  {
    v11 = share_sheet_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1001B2AD4();
    }

    goto LABEL_8;
  }

  v10 = [v8 actionActivitiesByUUID];
  v11 = [v10 objectForKeyedSubscript:v7];

  v12 = [v8 suggestionBrowser];
  v13 = [v11 activityType];
  [v12 provideFeedbackForNodeAtIndex:0 bundleID:0 selectedActionBundleID:v13 abandoned:0];

  v14 = [v11 activityType];
  if ([v14 isEqualToString:UIActivityTypeUserDefaults])
  {

LABEL_7:
    [(SDShareSheetSlotManager *)v9 _instructHostToPerformUserDefaultsActivityForCategory:0 session:v8];
    goto LABEL_8;
  }

  v15 = [v11 activityType];
  v16 = [v15 isEqualToString:@"com.apple.UIKit.activity.ActionDefaults"];

  if (v16)
  {
    goto LABEL_7;
  }

  v21 = [v11 activityType];
  v22 = [v21 isEqualToString:@"com.apple.UIKit.activity.Share"];

  if (v22)
  {
    v23 = [v8 visibleActionActivities];
    v24 = [v23 mutableCopy];

    v25 = [v24 indexOfObject:v11];
    [v24 removeObject:v11];
    v26 = [v8 hostActionActivityProxies];
    v27 = [v26 mutableCopy];

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

    [(SDShareSheetSlotManager *)v9 dataSourceDidUpdateForSession:v8 animated:1];
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
      [(SDShareSheetSlotManager *)v9 _instructHostToPerformExtensionActivity:v11 session:v8];
    }

    else
    {
      [(SDShareSheetSlotManager *)v9 _instructHostToPerformHostActivity:v11 session:v8];
    }
  }

LABEL_8:
  v17 = 0;
  v18 = 0;
LABEL_9:

  objc_sync_exit(v9);
  if (v8 && v18 && v17)
  {
    v19 = +[VCVoiceShortcutClient standardClient];
    v20 = [v17 identifier];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1001A5AE4;
    v29[3] = &unk_1008D2E78;
    v30 = v17;
    v31 = v9;
    v32 = v8;
    [v19 generateSingleUseTokenForWorkflowIdentifier:v20 completion:v29];
  }
}

- (void)activityViewControllerWithSessionID:(id)a3 performActivityWithType:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v43 = a4;
  v42 = a5;
  v9 = self;
  objc_sync_enter(v9);
  v41 = v8;
  v10 = [(NSMutableDictionary *)v9->_sessionIDToShareSheetSession objectForKeyedSubscript:v8];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 connection];
    v40 = [v12 valueForEntitlement:@"com.apple.sharing.sharesheet.perform-activity"];

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v40 BOOLValue])
    {
      if ([v11 sentInitialConfiguration])
      {
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v13 = [v11 shareActivitiesByUUID];
        v14 = [v13 allKeys];

        v15 = [v14 countByEnumeratingWithState:&v48 objects:v55 count:16];
        if (v15)
        {
          v16 = *v49;
LABEL_7:
          v17 = 0;
          while (1)
          {
            if (*v49 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v48 + 1) + 8 * v17);
            v19 = [v11 shareActivitiesByUUID];
            v20 = [v19 objectForKeyedSubscript:v18];

            v21 = [v20 activityType];
            v22 = [v21 isEqualToString:v43];

            if (v22)
            {
              break;
            }

            if (v15 == ++v17)
            {
              v15 = [v14 countByEnumeratingWithState:&v48 objects:v55 count:16];
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
        v27 = [v11 actionActivitiesByUUID];
        v28 = [v27 allKeys];

        v29 = [v28 countByEnumeratingWithState:&v44 objects:v54 count:16];
        if (v29)
        {
          v30 = *v45;
LABEL_29:
          v31 = 0;
          while (1)
          {
            if (*v45 != v30)
            {
              objc_enumerationMutation(v28);
            }

            v32 = *(*(&v44 + 1) + 8 * v31);
            v33 = [v11 actionActivitiesByUUID];
            v34 = [v33 objectForKeyedSubscript:v32];

            v35 = [v34 activityType];
            v36 = [v35 isEqualToString:v43];

            if (v36)
            {
              break;
            }

            if (v29 == ++v31)
            {
              v29 = [v28 countByEnumeratingWithState:&v44 objects:v54 count:16];
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
            [(SDShareSheetSlotManager *)v9 activityViewControllerWithSessionID:v41 selectedActionWithIdentifier:v26];
            goto LABEL_39;
          }

LABEL_38:
          [(SDShareSheetSlotManager *)v9 activityViewControllerWithSessionID:v41 selectedActivityWithIdentifier:v26];
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

        v42[2](v42, v37, 0);
      }

      else
      {
        v25 = share_sheet_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v53 = v43;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Waiting to perform activity with type:%@ until configuration is done...", buf, 0xCu);
        }

        [v11 setPerformActivityType:v43];
        [v11 setPerformActivityCompletionHandler:v42];
      }
    }

    else
    {
      v23 = share_sheet_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1001B2BE8();
      }

      v42[2](v42, 0, 0);
    }
  }

  else
  {
    v24 = share_sheet_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      sub_1001B2C60();
    }

    v42[2](v42, 0, 0);
  }

  objc_sync_exit(v9);
}

- (void)activityViewControllerWithSessionID:(id)a3 findSupportedActivitiesWithCompletionHandler:(id)a4
{
  v6 = a3;
  v23 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v22 = v6;
  v8 = [(NSMutableDictionary *)v7->_sessionIDToShareSheetSession objectForKeyedSubscript:v6];
  v25 = v8;
  if (v8)
  {
    v9 = [v8 connection];
    v24 = [v9 valueForEntitlement:@"com.apple.sharing.sharesheet.perform-activity"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v24 BOOLValue] & 1) == 0)
    {
      v19 = share_sheet_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1001B2BE8();
      }

      v10 = +[NSArray array];
      v23[2](v23, v10, 0);
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
            v16 = [v15 activityType];
            v17 = [SFShareSheetRemoteActivity sharingServiceWithIdentifier:v16];

            v18 = [v15 activityTitle];
            [v17 setTitle:v18];

            [v10 addObject:v17];
          }

          v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v12);
      }

      v23[2](v23, v10, 0);
LABEL_16:

      goto LABEL_20;
    }

    v21 = share_sheet_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Waiting to find supported activities until configuration is done...", buf, 2u);
    }

    [v25 setFindSupportedActivitiesCompletionHandler:v23];
  }

  else
  {
    v20 = share_sheet_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_1001B2CC8();
    }

    v24 = +[NSArray array];
    v23[2](v23, v24, 0);
  }

LABEL_20:

  objc_sync_exit(v7);
}

- (void)canShareFileURL:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([v9 isFileURL])
  {
    v7 = [(SDShareSheetSlotManager *)self currentConnection];
    v8 = [v7 sd_connectionCanShareURL:v9];
  }

  else
  {
    v8 = 1;
  }

  v6[2](v6, v8);
}

- (void)activityViewControllerWithSessionID:(id)a3 provideFeedbackForPeopleSuggestionWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(NSMutableDictionary *)v8->_sessionIDToShareSheetSession objectForKeyedSubscript:v6];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 suggestionBrowser];
    [v11 provideFeedbackForPeopleSuggestionIdentifier:v7];
  }

  else
  {
    v11 = share_sheet_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1001B2D30();
    }
  }

  objc_sync_exit(v8);
}

- (void)activityViewControllerWithSessionID:(id)a3 selectedPersonWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(NSMutableDictionary *)v8->_sessionIDToShareSheetSession objectForKeyedSubscript:v6];
  if (v9)
  {
    objc_sync_exit(v8);

    v10 = [v9 airdropNodeForIdentifier:v7];
    if (v10)
    {
      [(SDShareSheetSlotManager *)v8 _handleSelectedNode:v10 session:v9];
    }

    else
    {
      v12 = share_sheet_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1001B2D98();
      }
    }

    v8 = v10;
  }

  else
  {
    v11 = share_sheet_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1001B2D30();
    }

    objc_sync_exit(v8);
  }
}

- (void)_handleSelectedNode:(id)a3 session:(id)a4
{
  v5 = a3;
  v6 = a4;
  v79 = [v5 transportBundleID];
  if ([v5 isSuggestion])
  {
    obj = self;
    objc_sync_enter(obj);
    [v6 setSelectedRecipient:v5];
    v75 = [v5 suggestionIndex];
    v7 = [_UIActivityHelper activityTypeForBundleIdentifier:v79];
    v76 = v7;
    if (v7)
    {
      if (v7 == UIActivityTypeMessage)
      {
        v8 = share_sheet_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [v5 realName];
          v29 = [v5 displayName];
          v30 = [v5 formattedHandles];
          *buf = 138412802;
          *&buf[4] = v28;
          *&buf[12] = 2112;
          *&buf[14] = v29;
          *&buf[22] = 2112;
          v89 = v30;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Messages recipient selected with GUID %@, group name %@, and handles %@", buf, 0x20u);
        }
      }

      else
      {
        v8 = share_sheet_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v5 formattedHandles];
          v10 = v9;
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
          *&buf[14] = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ recipient selected with handles %@", buf, 0x16u);
        }
      }

      v31 = [v6 suggestionBrowser];
      [v31 provideFeedbackForNodeAtIndex:v75 bundleID:v79 selectedActionBundleID:0 abandoned:0];

      [(SDShareSheetSlotManager *)obj notifySession:v6 personSelectedWithActivityType:v76];
LABEL_46:

      objc_sync_exit(obj);
      goto LABEL_52;
    }

    v85 = 0;
    v27 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v79 allowPlaceholder:1 error:&v85];
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
      v72 = [[LSApplicationExtensionRecord alloc] initWithBundleIdentifier:v79 requireValid:0 platform:dyld_get_active_platform() error:&v84];
      v69 = v84;
      if (!v72)
      {
        v42 = share_sheet_log();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412802;
          *&buf[4] = v79;
          *&buf[12] = 2112;
          *&buf[14] = v70;
          *&buf[22] = 2112;
          v89 = v69;
          _os_log_fault_impl(&_mh_execute_header, v42, OS_LOG_TYPE_FAULT, "Got no application or extension record for %@ with errors %@ and %@", buf, 0x20u);
        }

        v72 = 0;
        v49 = 0;
        v43 = 0;
LABEL_43:

        v50 = share_sheet_log();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = [v5 displayName];
          *buf = 138412802;
          *&buf[4] = v43;
          *&buf[12] = 2112;
          *&buf[14] = v51;
          *&buf[22] = 2112;
          v89 = v79;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%@ recipient %@ selected for corresponding bundleID %@", buf, 0x20u);
        }

        v52 = [v6 suggestionBrowser];
        [v52 provideFeedbackForNodeAtIndex:v75 bundleID:v43 selectedActionBundleID:0 abandoned:0];

        [(SDShareSheetSlotManager *)obj notifySession:v6 activitySelected:v49];
        goto LABEL_46;
      }
    }

    v36 = [v6 shareActivitiesInUserOrder];
    v37 = [v6 hiddenActivities];
    v38 = [v36 arrayByAddingObjectsFromArray:v37];

    v39 = [v73 applicationExtensionRecords];
    v40 = v39;
    if (v39)
    {
      v71 = v39;
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
    v43 = [v42 countByEnumeratingWithState:&v80 objects:v87 count:16];
    if (v43)
    {
      v44 = *v81;
      while (2)
      {
        for (i = 0; i != v43; i = i + 1)
        {
          if (*v81 != v44)
          {
            objc_enumerationMutation(v42);
          }

          v46 = *(*(&v80 + 1) + 8 * i);
          v47 = [v46 activityType];
          v48 = [v41 containsObject:v47];

          if (v48)
          {
            v43 = [v46 activityType];
            v49 = v46;
            goto LABEL_42;
          }
        }

        v43 = [v42 countByEnumeratingWithState:&v80 objects:v87 count:16];
        if (v43)
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
    v13 = [v5 displayName];
    *buf = 138412290;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "AirDrop node with display name %@ selected", buf, 0xCu);
  }

  v14 = +[SDStatusMonitor sharedMonitor];
  v15 = [v14 wirelessEnabled];

  if (v15)
  {
    v16 = [v6 transferNodes];
    v17 = [v5 realName];
    v18 = [v16 objectForKeyedSubscript:v17];

    v19 = self;
    objc_sync_enter(v19);
    if (v18 == v5)
    {
      v32 = share_sheet_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Transfer to this node already in progress, cancelling.", buf, 2u);
      }

      [v6 cancelAirDropForNode:v5];
      v33 = [v6 hostConfiguration];
      v34 = [v33 hostLocale];
      v77 = [v5 displayNameForLocale:v34];

      if ([v6 skipSlotsRendering])
      {
        v35 = [[SFProxyText alloc] initWithText:v77];
      }

      else
      {
        v53 = [v6 hostConfiguration];
        v54 = [SDShareSheetSession labelColorWithHostConfiguration:v53];

        +[CATransaction begin];
        memset(buf, 0, sizeof(buf));
        v55 = [v5 isClassroom];
        v56 = [v6 xpcHelperCnx];
        v57 = [v6 hostConfiguration];
        [(SDShareSheetSlotManager *)v19 _createNameLabelSlotWithString:v77 textColor:v54 maximumNumberOfLines:2 isAirDrop:0 ignoreNameWrapping:v55 sessionConnection:v56 hostConfig:v57];

        +[CATransaction commit];
        v58 = [v5 displayName];

        if (v58)
        {
          v59 = [(SDShareSheetSlotManager *)v19 accessibilityCache];
          v60 = [v5 displayName];
          v61 = [NSNumber numberWithUnsignedInt:*buf];
          [v59 setLabel:v60 forSlotID:v61];
        }

        v62 = [SFProxyText alloc];
        v35 = [v62 initWithSlotIdentifier:*buf];
      }

      v63 = [v6 realNameToNodeID];
      v64 = [v5 realName];
      v65 = [v63 objectForKeyedSubscript:v64];

      v66 = [[SFAirDropTransferChange alloc] initWithState:5 progress:v65 proxyIdentifier:v35 displayName:0 status:0.0];
      [(SDShareSheetSlotManager *)v19 notifySession:v6 withAirDropTransferChange:v66];
      v67 = [v6 transferNodes];
      v68 = [v5 realName];
      [v67 removeObjectForKey:v68];

      [v6 setFiredImpactHaptic:0];
      [v6 setTransferActive:0];
      [v6 setLastTransferEvent:4];

      objc_sync_exit(v19);
    }

    else
    {
      [v6 setTransferActive:1];
      v20 = [v6 selectionHaptic];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001A72DC;
      block[3] = &unk_1008CDEA0;
      block[4] = v20;
      dispatch_async(&_dispatch_main_q, block);
      v21 = [v5 realName];

      if (v21)
      {
        v22 = [v6 transferNodes];
        v23 = [v5 realName];
        [v22 setObject:v5 forKeyedSubscript:v23];
      }

      [v6 setSelectedRecipient:0];
      v24 = [v6 suggestionBrowser];
      [v24 provideFeedbackForNodeAtIndex:&off_10090BE98 bundleID:v79 selectedActionBundleID:0 abandoned:0];

      objc_sync_exit(v19);
      v25 = [v5 endpointUUID];
      [(SDShareSheetSlotManager *)v19 requestAirDropItemsForNode:v5 endpointUUID:v25 session:v6];
      v19 = v25;
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

    [(SDShareSheetSlotManager *)self _instructHostToPerformAirDropActivityWithNoContentView:0 session:v6];
  }

LABEL_52:
}

- (void)activityViewControllerWithSessionID:(id)a3 removedPersonWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  obj = v8;
  v39 = v6;
  v9 = [(NSMutableDictionary *)v8->_sessionIDToShareSheetSession objectForKeyedSubscript:v6];
  v40 = v9;
  if (v9)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v10 = [v9 suggestedPeople];
    v11 = [v10 countByEnumeratingWithState:&v41 objects:v55 count:16];
    if (v11)
    {
      v12 = *v42;
      while (2)
      {
        for (i = 0; i != v11; i = (i + 1))
        {
          if (*v42 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v41 + 1) + 8 * i);
          v15 = [v14 nodeIdentifier];
          v16 = [v15 isEqual:v7];

          if (v16)
          {
            v11 = v14;
            goto LABEL_12;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v41 objects:v55 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v17 = [v40 suggestionBrowser];
    v18 = [v11 realName];
    [v17 suggestLessPeopleSuggestionIdentifier:v18];

    v19 = share_sheet_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v11 nodeIdentifier];
      *buf = 138412546;
      v46 = v11;
      v47 = 2112;
      v48 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Asked to remove node:%@ with identifier:%@", buf, 0x16u);
    }

    v21 = share_sheet_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v11 transportBundleID];
      v23 = [v11 realName];
      v24 = [v11 actualHandles];
      v25 = [v11 contactIDs];
      v26 = [v11 derivedIntentIdentifier];
      *buf = 138413314;
      v46 = v22;
      v47 = 2112;
      v48 = v23;
      v49 = 2112;
      v50 = v24;
      v51 = 2112;
      v52 = v25;
      v53 = 2112;
      v54 = v26;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "bundleIDs:%@, conversationID:%@, handles:%@, contactIDs:%@, derivedIntentIdentifier:%@", buf, 0x34u);
    }

    v37 = +[_PSSuggesterConfiguration defaultConfiguration];
    v36 = [[_PSSuggester alloc] initWithDaemonUsingConfiguration:v37];
    v27 = [_PSShareSheetSuggestLessFeedback alloc];
    v28 = [v11 transportBundleID];
    v29 = [v11 realName];
    v30 = [v11 derivedIntentIdentifier];
    v31 = [v11 actualHandles];
    v32 = [v31 anyObject];
    v33 = [v11 contactIDs];
    v34 = [v33 anyObject];
    v35 = [v27 initWithBundleId:v28 conversationId:v29 derivedIntentId:v30 handle:v32 contactId:v34];

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

- (void)activityViewControllerWithSessionID:(id)a3 didLongPressShareActivityWithIdentifier:(id)a4
{
  v6 = a3;
  v27 = a4;
  v7 = self;
  objc_sync_enter(v7);
  obj = v7;
  v26 = v6;
  v8 = [(NSMutableDictionary *)v7->_sessionIDToShareSheetSession objectForKeyedSubscript:v6];
  v9 = v8;
  if (v8)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v10 = [v8 shareActivities];
    v11 = [v10 countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v11)
    {
      v12 = *v33;
      while (2)
      {
        for (i = 0; i != v11; i = (i + 1))
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v32 + 1) + 8 * i);
          v15 = [v14 activityUUID];
          v16 = [v15 isEqual:v27];

          if (v16)
          {
            v11 = v14;
            goto LABEL_12;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v32 objects:v39 count:16];
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
    v17 = [v9 bundleIDToActivities];
    v18 = [v17 countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v18)
    {
      v19 = *v29;
LABEL_14:
      v20 = 0;
      while (1)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v28 + 1) + 8 * v20);
        v22 = [v9 bundleIDToActivities];
        v23 = [v22 objectForKeyedSubscript:v21];

        if ([v23 containsObject:v11])
        {
          if (([v21 isEqualToString:@"noBundleID"] & 1) == 0)
          {
            break;
          }
        }

        if (v18 == ++v20)
        {
          v18 = [v17 countByEnumeratingWithState:&v28 objects:v38 count:16];
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

- (void)_performServiceInitiatedActivityInServiceWithActivity:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [v6 ss_activityTypeToReportToHost];
  v10 = [v6 ss_activitySpecificExtensionItemDataRequestInfo];
  v11 = [UISUIActivityExtensionItemDataRequest requestForActivity:v6 activityType:v9 activitySpecificMetadata:v10];

  v12 = [v7 connection];
  v13 = [(SDShareSheetSlotManager *)v8 _remoteObjectProxyForConnection:v12];

  v14 = [v6 didFinishPerformingActivityHandler];
  v15 = [v6 activityUUID];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001A7CC0;
  v22[3] = &unk_1008D2EA0;
  v16 = v14;
  v25 = v16;
  v17 = v13;
  v23 = v17;
  v18 = v15;
  v24 = v18;
  [v6 setDidFinishPerformingActivityHandler:v22];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001A7D54;
  v20[3] = &unk_1008D2EC8;
  v19 = v6;
  v21 = v19;
  [v17 willPerformInServiceActivityWithRequest:v11 completion:v20];

  objc_sync_exit(v8);
}

- (id)_activityWithActivityType:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = [v7 shareActivitiesInUserOrder];
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v10)
  {
    v11 = *v27;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(v9);
      }

      v13 = *(*(&v26 + 1) + 8 * v12);
      v14 = [v13 activityType];
      v15 = [v14 isEqualToString:v6];

      if (v15)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
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
    v9 = [v7 hiddenActivities];
    v16 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
        objc_enumerationMutation(v9);
      }

      v13 = *(*(&v22 + 1) + 8 * v18);
      v19 = [v13 activityType];
      v20 = [v19 isEqualToString:v6];

      if (v20)
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
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

  objc_sync_exit(v8);

  return v16;
}

- (void)activityViewControllerWithSessionID:(id)a3 toggledActivityWithIdentifier:(id)a4 activityCategory:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  objc_sync_enter(v10);
  v11 = [(NSMutableDictionary *)v10->_sessionIDToShareSheetSession objectForKeyedSubscript:v8];
  v12 = v11;
  if (v11)
  {
    if (a5 == 1)
    {
      v13 = [v11 shareActivitiesByUUID];
      v14 = [v13 objectForKeyedSubscript:v9];

      v15 = [(SDShareSheetSlotManager *)v10 shareUserDefaults];
      LODWORD(v13) = [v15 activityIsHidden:v14];

      v16 = [(SDShareSheetSlotManager *)v10 shareUserDefaults];
      [v16 setActivity:v14 asHidden:v13 ^ 1];

      [(SDShareSheetSlotManager *)v10 shareActivityUserDefaultsDidChangeWithSession:v12];
    }

    else
    {
      v17 = [v11 actionActivitiesByUUID];
      v14 = [v17 objectForKeyedSubscript:v9];

      v18 = [(SDShareSheetSlotManager *)v10 actionUserDefaults];
      LODWORD(v17) = [v18 activityIsHidden:v14];

      v19 = [(SDShareSheetSlotManager *)v10 actionUserDefaults];
      [v19 setActivity:v14 asHidden:v17 ^ 1];

      [(SDShareSheetSlotManager *)v10 actionActivityUserDefaultsDidChangeWithSession:v12];
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

  objc_sync_exit(v10);
}

- (void)activityViewControllerWithSessionID:(id)a3 favoritedActivity:(BOOL)a4 withIdentifier:(id)a5 activityCategory:(int64_t)a6
{
  v9 = a3;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  v12 = [(NSMutableDictionary *)v11->_sessionIDToShareSheetSession objectForKeyedSubscript:v9];
  v13 = v12;
  if (v12)
  {
    if (a6 == 1)
    {
      v14 = [v12 shareActivitiesByUUID];
      v15 = [v14 objectForKeyedSubscript:v10];

      v16 = [v13 favoriteApps];
      v17 = [v16 mutableCopy];
      if ([v16 containsObject:v15])
      {
        [v17 removeObject:v15];
        v18 = [(SDShareSheetSlotManager *)v11 shareUserDefaults];
        v19 = [v15 activityType];
        [v18 removeActivityTypeFromDefaults:v19];
      }

      else
      {
        [v17 addObject:v15];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = [(SDShareSheetSlotManager *)v11 shareUserDefaults];
          [v23 setActivity:v15 asHidden:0];
        }

        v18 = [(SDShareSheetSlotManager *)v11 shareUserDefaults];
        [v18 updateUserActivityOrderWithOrderedPartialActivities:v17];
      }

      [v13 setFavoriteApps:v17];
      [(SDShareSheetSlotManager *)v11 shareActivityUserDefaultsDidChangeWithSession:v13];
    }

    else
    {
      v20 = [v12 actionActivitiesByUUID];
      v15 = [v20 objectForKeyedSubscript:v10];

      v16 = [v13 favoriteActions];
      v17 = [v16 mutableCopy];
      if ([v16 containsObject:v15])
      {
        [v17 removeObject:v15];
        v21 = [(SDShareSheetSlotManager *)v11 actionUserDefaults];
        v22 = [v15 activityType];
        [v21 removeActivityTypeFromDefaults:v22];
      }

      else
      {
        [v17 addObject:v15];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = [(SDShareSheetSlotManager *)v11 actionUserDefaults];
          [v24 setActivity:v15 asHidden:0];
        }

        v21 = [(SDShareSheetSlotManager *)v11 actionUserDefaults];
        [v21 updateUserActivityOrderWithOrderedPartialActivities:v17];
      }

      [v13 setFavoriteActions:v17];
      [(SDShareSheetSlotManager *)v11 actionActivityUserDefaultsDidChangeWithSession:v13];
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

  objc_sync_exit(v11);
}

- (void)activityViewControllerWithSessionID:(id)a3 updatedFavoritesProxies:(id)a4 activityCategory:(int64_t)a5
{
  v8 = a3;
  v31 = a4;
  v9 = self;
  objc_sync_enter(v9);
  v30 = v8;
  v10 = [(NSMutableDictionary *)v9->_sessionIDToShareSheetSession objectForKeyedSubscript:v8];
  if (v10)
  {
    if (a5 == 1)
    {
      v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v31 count]);
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v12 = v31;
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
            v17 = [v10 shareActivitiesByUUID];
            v18 = [v16 identifier];
            v19 = [v17 objectForKeyedSubscript:v18];
            [v11 addObject:v19];
          }

          v13 = [v12 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v13);
      }

      [v10 setFavoriteApps:v11];
      v20 = [(SDShareSheetSlotManager *)v9 shareUserDefaults];
      [v20 updateUserActivityOrderWithOrderedPartialActivities:v11];

      [(SDShareSheetSlotManager *)v9 shareActivityUserDefaultsDidChangeWithSession:v10];
    }

    else
    {
      v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v31 count]);
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v21 = v31;
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
            v26 = [v10 actionActivitiesByUUID];
            v27 = [v25 identifier];
            v28 = [v26 objectForKeyedSubscript:v27];
            [v11 addObject:v28];
          }

          v22 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v22);
      }

      [v10 setFavoriteActions:v11];
      v29 = [(SDShareSheetSlotManager *)v9 actionUserDefaults];
      [v29 updateUserActivityOrderWithOrderedPartialActivities:v11];

      [(SDShareSheetSlotManager *)v9 actionActivityUserDefaultsDidChangeWithSession:v10];
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

  objc_sync_exit(v9);
}

- (void)activityViewControllerWithSessionID:(id)a3 selectedDefaultActivityWithIdentifier:(id)a4 activityCategory:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(SDShareSheetSlotManager *)self getShareSheetSessionForSessionID:v8];
  v11 = self;
  objc_sync_enter(v11);
  if (!v10)
  {
    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1001B2FE0();
    }

    goto LABEL_7;
  }

  if (a5 != 1)
  {
    v18 = [v10 actionActivitiesByUUID];
    v19 = [v18 objectForKeyedSubscript:v9];

    v20 = [v19 activityType];
    if ([v20 isEqualToString:UIActivityTypeUserDefaults])
    {
    }

    else
    {
      v21 = [v19 activityType];
      v22 = [v21 isEqualToString:@"com.apple.UIKit.activity.ActionDefaults"];

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
          [(SDShareSheetSlotManager *)v11 _instructHostToPerformExtensionActivity:v28 session:v10];
        }

        else
        {
          [(SDShareSheetSlotManager *)v11 _instructHostToPerformHostActivity:v19 session:v10];
        }

LABEL_14:
        v16 = 0;
        v17 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    [(SDShareSheetSlotManager *)v11 _instructHostToPerformUserDefaultsActivityForCategory:0 session:v10];
    goto LABEL_14;
  }

  v12 = [v10 shareActivitiesByUUID];
  v13 = [v12 objectForKeyedSubscript:v9];

  v14 = [v13 activityType];
  v15 = [v14 isEqualToString:UIActivityTypeUserDefaults];

  if (v15)
  {
    [(SDShareSheetSlotManager *)v11 _instructHostToPerformUserDefaultsActivityForCategory:1 session:v10];
  }

  else if ([v13 ss_shouldExecuteInShareSheet])
  {
    [(SDShareSheetSlotManager *)v11 _performServiceInitiatedActivityInServiceWithActivity:v13 session:v10];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v13;
      [(SDShareSheetSlotManager *)v11 _instructHostToPerformExtensionActivity:v25 session:v10];
    }

    else
    {
      v26 = [v13 activityType];
      v27 = [v26 isEqualToString:UIActivityTypeAirDrop];

      if (!v27)
      {
        [(SDShareSheetSlotManager *)v11 _instructHostToPerformHostActivity:v13 session:v10];
        goto LABEL_7;
      }

      v25 = [v10 airDropPeople];
      [(SDShareSheetSlotManager *)v11 _instructHostToPerformAirDropActivityWithNoContentView:[v25 count]== 0 session:v10];
    }
  }

LABEL_7:

  v16 = 0;
  v17 = 0;
LABEL_16:
  objc_sync_exit(v11);

  if (v10 && v17 && v16)
  {
    v23 = +[VCVoiceShortcutClient standardClient];
    v24 = [v16 identifier];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1001A8C94;
    v29[3] = &unk_1008D2E78;
    v30 = v16;
    v31 = v11;
    v32 = v10;
    [v23 generateSingleUseTokenForWorkflowIdentifier:v24 completion:v29];
  }
}

- (void)activityViewControllerDidAppearWithSessionID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_sessionIDToShareSheetSession objectForKeyedSubscript:v4];
  v7 = v6;
  if (v6)
  {
    [v6 setIsForeground:1];
    objc_sync_exit(v5);

    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "activityViewControllerDidAppear: for session ID %@", buf, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001A910C;
    block[3] = &unk_1008CDEA0;
    v11 = v7;
    dispatch_async(&_dispatch_main_q, block);
    v5 = v11;
  }

  else
  {
    v9 = share_sheet_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1001B315C();
    }

    objc_sync_exit(v5);
  }
}

- (void)activityViewControllerDidDisappearWithSessionID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_sessionIDToShareSheetSession objectForKeyedSubscript:v4];
  if (v6)
  {
    objc_sync_exit(v5);

    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "activityViewControllerDidDisappear: for session ID %@", buf, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001A9344;
    block[3] = &unk_1008CDEA0;
    v10 = v6;
    dispatch_async(&_dispatch_main_q, block);
    v5 = v10;
  }

  else
  {
    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1001B31C4();
    }

    objc_sync_exit(v5);
  }
}

- (void)activityViewControllerSessionDidEndWithSessionID:(id)a3 testingSnapshot:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_feature_enabled_impl();
  if (v9 && (v11 & 1) != 0)
  {
    v12 = self;
    objc_sync_enter(v12);
    v13 = [(NSMutableDictionary *)v12->_sessionIDToShareSheetSession objectForKeyedSubscript:v8];
    if (v13)
    {
      objc_sync_exit(v12);

      v14 = share_sheet_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v8;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "activityViewControllerSessionDidEnd: for session ID %@", &v19, 0xCu);
      }

      v15 = [v13 testingSnapshot];

      if (v15)
      {
        v16 = [v13 testingSnapshot];
        [v9 updateFromSnapshot:v16];
      }

      v17 = [v13 testingReferenceSnapshot];
      [(SDShareSheetSlotManager *)v12 _saveSnapshotToFile:v9 withReferenceSnapshot:v17 sessionID:v8 completionHandler:v10];
      v12 = v17;
    }

    else
    {
      v18 = share_sheet_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        sub_1001B322C();
      }

      objc_sync_exit(v12);
    }
  }

  else if (v10)
  {
    v10[2](v10, 0);
  }
}

- (void)activityViewControllerDidEnterBackgroundWithSessionID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_sessionIDToShareSheetSession objectForKeyedSubscript:v4];
  v7 = v6;
  if (v6)
  {
    [v6 setIsForeground:0];
    objc_sync_exit(v5);

    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "activityViewControllerDidEnterBackground: for session ID %@", buf, 0xCu);
    }

    v9 = [v7 xpcHelperCnx];
    [v9 setSessionKeepAliveTransactionIdentifier:0];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001A9790;
    block[3] = &unk_1008CDEA0;
    v12 = v7;
    dispatch_async(&_dispatch_main_q, block);
    v5 = v12;
  }

  else
  {
    v10 = share_sheet_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1001B3294();
    }

    objc_sync_exit(v5);
  }
}

- (void)activityViewControllerWillEnterForegroundWithSessionID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_sessionIDToShareSheetSession objectForKeyedSubscript:v4];
  v7 = v6;
  if (v6)
  {
    [v6 setIsForeground:1];
    objc_sync_exit(v5);

    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "activityViewControllerWillEnterForeground: for session ID %@", buf, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001A99B8;
    block[3] = &unk_1008CDEA0;
    v11 = v7;
    dispatch_async(&_dispatch_main_q, block);
    v5 = v11;
  }

  else
  {
    v9 = share_sheet_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1001B32FC();
    }

    objc_sync_exit(v5);
  }
}

- (void)activityViewControllerPerformEditActionsWithSessionID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_sessionIDToShareSheetSession objectForKeyedSubscript:v4];
  if (v6)
  {
    [(SDShareSheetSlotManager *)v5 _instructHostToPerformUserDefaultsActivityForCategory:0 session:v6];
  }

  else
  {
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1001B3364();
    }
  }

  objc_sync_exit(v5);
}

- (void)shareActivityUserDefaultsDidChangeWithSession:(id)a3
{
  v39 = a3;
  v4 = self;
  objc_sync_enter(v4);
  obj = v4;
  v5 = [(SDShareSheetSlotManager *)v4 shareUserDefaults];
  v6 = [v39 shareActivities];
  v7 = [v5 activitiesOrderedByUserActivityOrderForActivities:v6];

  [v39 setShareActivitiesInUserOrder:v7];
  if (_os_feature_enabled_impl())
  {
    v8 = [SDShareSheetSlotManager _groupActivitiesByBundleID:v7];
    [v39 setBundleIDToActivities:v8];

    v9 = [v39 bundleIDToActivities];
    v10 = [(SDShareSheetSlotManager *)obj _removeSecondaryActivities:v7 bundleIDToActivities:v9];

    v11 = [v39 urlBeingShared];
    v7 = [(SDShareSheetSlotManager *)obj _moveDefaultApplicationToFrontForURL:v11 activities:v10];
  }

  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1001AA038;
  v44[3] = &unk_1008D2C70;
  v44[4] = obj;
  v12 = [NSPredicate predicateWithBlock:v44];
  v13 = [v7 filteredArrayUsingPredicate:v12];

  v14 = [v13 count];
  v15 = [(SDShareSheetSlotManager *)obj shareUserDefaults];
  v16 = [v15 activityIdentifiersInUserOrder];
  v17 = [v16 count];

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

  v21 = [v39 shareUserDefaultsActivity];
  v37 = [v20 arrayByAddingObject:v21];

  [v39 setVisibleShareActivities:v37];
  v36 = [(SDShareSheetSlotManager *)obj _createShareProxiesFromActivities:v37 session:v39];
  v22 = [(SDShareSheetSlotManager *)obj shareSheetContext];
  v23 = [v39 hostShareActivityProxies];
  v24 = +[NSMutableArray array];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v25 = v23;
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

        v31 = [v29 iconImageSlotID];
        v32 = [v29 labelSlotID];
        if (v31)
        {
          [v22 deleteSlot:v31];
        }

        if (v32)
        {
          [v22 deleteSlot:v32];
          v33 = [NSNumber numberWithUnsignedInt:v32];
          [v24 addObject:v33];
        }

        v28 = v28 + 1;
      }

      while (v26 != v28);
      v26 = [v25 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v26);
  }

  v34 = [(SDShareSheetSlotManager *)obj accessibilityCache];
  [v34 removeLabelsForSlotIDs:v24];

  [v39 setHostShareActivityProxies:v36];
  +[CATransaction flush];
  v35 = share_sheet_log();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "share user defaults did change", buf, 2u);
  }

  [(SDShareSheetSlotManager *)obj dataSourceDidUpdateForSession:v39 animated:0];
  objc_sync_exit(obj);
}

- (void)actionActivityUserDefaultsDidChangeWithSession:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  obj = v5;
  v6 = [(SDShareSheetSlotManager *)v5 actionUserDefaults];
  v7 = [v4 actionActivities];
  v8 = [v6 activitiesOrderedByUserActivityOrderForActivities:v7];

  [v4 setActionActivitiesInUserOrder:v8];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1001AA52C;
  v37[3] = &unk_1008D2C98;
  v37[4] = obj;
  v31 = v4;
  v38 = v31;
  v9 = [NSPredicate predicateWithBlock:v37];
  v30 = [v8 filteredArrayUsingPredicate:v9];

  v28 = [v31 visibleActionActivities];
  [v31 setVisibleActionActivities:v30];
  if (sub_10026BF28() && [v28 count] && objc_msgSend(v30, "count"))
  {
    v10 = [v28 isEqualToArray:v30] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  [v31 hostConfiguration];
  v26 = v27 = v10;
  v11 = [v26 hostTintColor];
  v29 = [(SDShareSheetSlotManager *)obj _createActionProxiesFromActivities:v30 withTintColor:v11 session:v31];

  v12 = [(SDShareSheetSlotManager *)obj shareSheetContext];
  v13 = [v31 hostActionActivityProxies];
  v14 = +[NSMutableArray array];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = v13;
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

        v21 = [v19 iconImageSlotID];
        v22 = [v19 labelSlotID];
        if (v21)
        {
          [v12 deleteSlot:v21];
        }

        if (v22)
        {
          [v12 deleteSlot:v22];
          v23 = [NSNumber numberWithUnsignedInt:v22];
          [v14 addObject:v23];
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v16);
  }

  v24 = [(SDShareSheetSlotManager *)obj accessibilityCache];
  [v24 removeLabelsForSlotIDs:v14];

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

- (void)userDefaultsViewControllerDidDisappearWithSessionID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_sessionIDToShareSheetSession objectForKeyedSubscript:v4];
  if (v6)
  {
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
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

  objc_sync_exit(v5);
}

- ($EC76EA2E339756B4D2C49A1061DE0928)_uploadSlotWithVectorData:(SEL)a3 cgImage:(id)a4 performCATransaction:(id)a5 hostConfiguration:(BOOL)a6
{
  v8 = a6;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  retstr->var1.width = 0.0;
  retstr->var1.height = 0.0;
  *&retstr->var0 = 0;
  if (!+[SDStatusMonitor enableShareSheetVectorSlots](SDStatusMonitor, "enableShareSheetVectorSlots") || [v14 hostIdiom] != 6)
  {
    v16 = v13[2](v13);
    if (!v16)
    {
      goto LABEL_16;
    }

    v17 = 0;
    goto LABEL_7;
  }

  v15 = v12[2](v12);
  if (v15)
  {
    v16 = v15;
    v17 = 1;
LABEL_7:
    if (v8)
    {
      +[CATransaction begin];
    }

    v18 = [(SDShareSheetSlotManager *)self shareSheetContext];
    v19 = [(SDShareSheetSlotManager *)self createSlotForContext:v18];

    if ((v17 & 1) == 0)
    {
      v20 = [(SDShareSheetSlotManager *)self shareSheetContext];
      [v20 setObject:v16 forSlot:v19];

      Width = CGImageGetWidth(v16);
      Height = CGImageGetHeight(v16);
      retstr->var1.width = Width;
      retstr->var1.height = Height;
      retstr->var0 = v19;
    }

    if (v8)
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

- (void)_instructHostToPerformUserDefaultsActivityForCategory:(int64_t)a3 session:(id)a4 updatingView:(BOOL)a5
{
  v86 = a5;
  v7 = a4;
  v88 = objc_opt_new();
  v87 = objc_opt_new();
  v91 = objc_opt_new();
  v98 = self;
  objc_sync_enter(v98);
  v92 = a3;
  v97 = v7;
  if (a3 == 1)
  {
    v8 = [v7 shareActivitiesInUserOrder];
    v9 = [(SDShareSheetSlotManager *)v98 shareUserDefaults];
    v90 = [v9 activityIdentifiersInUserOrder];

    [v7 hostShareActivityProxies];
  }

  else
  {
    v8 = [v7 actionActivitiesInUserOrder];
    v10 = [(SDShareSheetSlotManager *)v98 actionUserDefaults];
    v90 = [v10 activityIdentifiersInUserOrder];

    [v7 hostActionActivityProxies];
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
        v17 = [v16 identifier];
        [v12 setObject:v16 forKeyedSubscript:v17];
      }

      v13 = [obj countByEnumeratingWithState:&v115 objects:v125 count:16];
    }

    while (v13);
  }

  v94 = [v97 skipSlotsRendering];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v93 = v8;
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
      v22 = [v21 activityType];
      v23 = UIActivityTypeMessage;
      v24 = v22;
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
      v28 = [v27 effectiveBlockedAppBundleIDs];
      v29 = [v28 containsObject:@"com.apple.MobileSMS"];

      if (v29)
      {
        goto LABEL_66;
      }

LABEL_25:
      v30 = [v21 activityType];
      v31 = UIActivityTypeMail;
      v32 = v30;
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
      v36 = [v35 effectiveBlockedAppBundleIDs];
      v37 = [v36 containsObject:@"com.apple.mobilemail"];

      if (v37)
      {
        goto LABEL_66;
      }

LABEL_34:
      v38 = [v21 activityType];
      v39 = UIActivityTypeAirDrop;
      v40 = v38;
      v41 = v40;
      v99 = v39;
      if (v39 == v40)
      {

LABEL_39:
        v43 = [v97 airDropAllowed];

        if ((v43 & 1) == 0)
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
      if (v94)
      {
        v44 = 0;
        v45 = 0;
        v46 = 0.0;
      }

      else
      {
        v47 = [v97 xpcHelperCnx];
        if (!v47)
        {
          v84 = share_sheet_log();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
          {
            sub_1001B34CC();
          }

          goto LABEL_75;
        }

        v48 = [v21 _activitySettingsImage];
        v49 = v48;
        v89 = [v48 CGImage];

        v50 = [v21 activityTitle];
        v51 = +[UIColor whiteColor];
        +[CATransaction begin];
        v106[0] = _NSConcreteStackBlock;
        v106[1] = 3221225472;
        v106[2] = sub_1001AB598;
        v106[3] = &unk_1008D2F18;
        v52 = v47;
        v107 = v52;
        v53 = v50;
        v108 = v53;
        v54 = v51;
        v109 = v54;
        v110 = v92;
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
        v105 = v92;
        v58 = [v97 hostConfiguration];
        [(SDShareSheetSlotManager *)v98 _uploadSlotWithVectorData:v106 sfCGImageData:v101 performCATransaction:0 hostConfiguration:v58];
        v44 = *buf;
        v46 = *&v122[2];

        if (v44)
        {
          v59 = [(SDShareSheetSlotManager *)v98 accessibilityCache];
          v60 = [v21 activityTitle];
          v61 = [NSNumber numberWithUnsignedInt:v44];
          [v59 setLabel:v60 forSlotID:v61];

          v62 = [(SDShareSheetSlotManager *)v98 shareSheetContext];
          v45 = [(SDShareSheetSlotManager *)v98 createSlotForContext:v62];
          [v62 setObject:v89 forSlot:v45];
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
      v66 = [v21 activityUUID];
      v67 = [v65 initWithIdentifier:v66];

      if (v94)
      {
        v68 = [SFProxyText alloc];
        v69 = [v21 activityTitle];
        v70 = [v68 initWithText:v69];
      }

      else
      {
        v70 = [[SFProxyText alloc] initWithSlotIdentifier:v44 slotTextHeight:v46];
      }

      [v67 setActivityTitle:v70];
      if (v94)
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

      v72 = [v97 screenTimeMonitor];
      v73 = [v21 activityType];
      v74 = [v72 cachedPolicyForActivityType:v73] != 0;

      [v67 setIsDisabled:v74];
      if (v92 == 1)
      {
        v75 = [(SDShareSheetSlotManager *)v98 shareUserDefaults];
        [v67 setCanHide:{objc_msgSend(v75, "canHideActivity:", v21)}];

        [(SDShareSheetSlotManager *)v98 shareUserDefaults];
      }

      else
      {
        v77 = [(SDShareSheetSlotManager *)v98 actionUserDefaults];
        [v67 setCanHide:{objc_msgSend(v77, "canHideActivity:", v21)}];

        [(SDShareSheetSlotManager *)v98 actionUserDefaults];
      }
      v76 = ;
      [v67 setIsHidden:{objc_msgSend(v76, "activityIsHidden:", v21)}];

      v78 = [v21 activityType];
      [v67 setCanEdit:{objc_msgSend(v78, "isEqualToString:", v99) ^ 1}];

      v79 = [v21 activityType];
      [v67 setCanMove:{objc_msgSend(v79, "isEqualToString:", v99) ^ 1}];

      v80 = [v21 activityType];
      v81 = [v90 containsObject:v80];

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

  if (v92 == 1)
  {
    [v97 setFavoriteApps:v88];
  }

  else
  {
    [v97 setFavoriteActions:v88];
  }

  +[CATransaction flush];
  [(SDShareSheetSlotManager *)v98 notifySession:v97 favoritesProxies:v87 suggestionProxies:v91 activityCategory:v92 updatingView:v86];
LABEL_75:

  objc_sync_exit(v98);
}

- (void)_instructHostToPerformExtensionActivity:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = share_sheet_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 activityType];
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Performing extension %@", &v11, 0xCu);
  }

  [(SDShareSheetSlotManager *)v8 notifySession:v7 activitySelected:v6];
  objc_sync_exit(v8);
}

- (void)_instructHostToPerformShortcutActivity:(id)a3 singleUseToken:(id)a4 session:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = self;
  objc_sync_enter(v10);
  [(SDShareSheetSlotManager *)v10 notifySession:v9 shortcutSelectedWithBundleID:@"com.apple.shortcuts.Run-Workflow" singleUseToken:v8];
  objc_sync_exit(v10);
}

- (void)_instructHostToPerformHostActivity:(id)a3 session:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  objc_sync_enter(v9);
  v10 = share_sheet_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 activityType];
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Performing host %@", &v13, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v7;
    [(SDShareSheetSlotManager *)v9 notifySession:v8 activitySelected:v12];
  }

  else
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:v9 file:@"SDShareSheetSlotManager.m" lineNumber:4173 description:@"attempt to perform an activity in-host that is not an in-host activity"];
  }

  objc_sync_exit(v9);
}

- (void)_loadPresentableActivitiesForSession:(id)a3
{
  v8 = 0u;
  v9 = 0u;
  v4 = a3;
  v5 = [(SDShareSheetSlotManager *)self currentConnection];
  v6 = v5;
  if (v5)
  {
    [v5 auditToken];
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v7[0] = v8;
  v7[1] = v9;
  [v4 _loadPresentableActivitiesForAuditToken:v7];
}

- (void)activateSuggestionBrowserForSession:(id)a3 withExtensionMatchingDictionaries:(id)a4 assetIdentifiers:(id)a5 urlsBeingShared:(id)a6 sandboxExtensionsByfileURLPath:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = self;
  objc_sync_enter(v17);
  if ([v12 hideSuggestions])
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
    v21 = os_signpost_id_make_with_pointer(v20, v17);

    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *v41 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, v21, "ConfigurePeopleSuggester", " enableTelemetry=YES ", v41, 2u);
    }

    v18 = sub_10026C18C(v13);
    v39 = v13;
    v22 = objc_alloc_init(SDSuggestionBrowserContext);
    v23 = [(SDShareSheetSlotManager *)v17 currentConnection];
    v24 = [v23 sd_connectionBundleID];
    [(SDSuggestionBrowserContext *)v22 setBundleID:v24];

    v25 = [v18 array];
    [(SDSuggestionBrowserContext *)v22 setTypeIdentifiersBeingShared:v25];

    [(SDSuggestionBrowserContext *)v22 setPhotosAssetIDs:v14];
    [(SDSuggestionBrowserContext *)v22 setUrlsBeingShared:v15];
    [(SDSuggestionBrowserContext *)v22 setSandboxExtensionsByfileURLPath:v16];
    -[SDSuggestionBrowserContext setShouldSuggestFamilyMembers:](v22, "setShouldSuggestFamilyMembers:", [v12 shouldSuggestFamilyMembers]);
    -[SDSuggestionBrowserContext setIsSharePlayAvailable:](v22, "setIsSharePlayAvailable:", [v12 isSharePlayAvailable]);
    -[SDSuggestionBrowserContext setSupportsCollaboration:](v22, "setSupportsCollaboration:", [v12 supportsCollaboration]);
    v26 = [v12 peopleSuggestionBundleIds];
    [(SDSuggestionBrowserContext *)v22 setPeopleSuggestionBundleIds:v26];

    v27 = [v12 processedImageResultsData];
    [(SDSuggestionBrowserContext *)v22 setProcessedImageResultsData:v27];
    v38 = v16;
    v28 = v15;
    v29 = v14;

    v30 = [v12 sessionID];
    v31 = [(SDShareSheetSlotManager *)v17 currentConnection];
    v32 = [v31 _queue];
    [v12 peopleSuggestionsTimeout];
    v33 = [SDSuggestionBrowser asyncBrowserWithSessionID:v30 context:v22 queue:v32 timeout:?];

    [v33 setDelegate:v17];
    v34 = [v12 xpcHelperCnx];
    [v33 setHelperConnection:v34];

    [v12 setSuggestionBrowser:v33];
    v35 = share_sheet_log();
    v36 = share_sheet_log();
    v37 = os_signpost_id_make_with_pointer(v36, v17);

    if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
    {
      *v40 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, OS_SIGNPOST_INTERVAL_END, v37, "ConfigurePeopleSuggester", " enableTelemetry=YES ", v40, 2u);
    }

    v14 = v29;
    v15 = v28;
    v16 = v38;
    v13 = v39;
  }

  objc_sync_exit(v17);
}

- (void)suggestionBrowserDidUpdateSuggestions:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  sessionIDToShareSheetSession = v5->_sessionIDToShareSheetSession;
  v7 = [v4 sessionID];
  v8 = [(NSMutableDictionary *)sessionIDToShareSheetSession objectForKeyedSubscript:v7];

  if (!v8)
  {
    v10 = share_sheet_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = [0 sessionID];
      sub_1001B3534(v11, &v13, v10);
    }

    goto LABEL_8;
  }

  v9 = [v8 hostConfiguration];

  if (!v9)
  {
    v10 = share_sheet_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = [v8 sessionID];
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "suggestionBrowserDidUpdateSuggestions: initial configuration hasn't happened yet for ID %@", &v13, 0xCu);
    }

LABEL_8:

    goto LABEL_9;
  }

  [(SDShareSheetSlotManager *)v5 _configurePeopleSuggestionsSectionForSession:v8];
  [(SDShareSheetSlotManager *)v5 dataSourceDidUpdateForSession:v8 animated:0];
LABEL_9:

  objc_sync_exit(v5);
}

- (void)sessionDidChange:(id)a3
{
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "session did change", v6, 2u);
  }

  [(SDShareSheetSlotManager *)self dataSourceDidUpdateForSession:v4 animated:1];
}

- (void)session:(id)a3 didConnectNearbySharingInteractionWithEndpointUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = share_sheet_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "did connect nearby sharing interaction with endpointUUID:%@", &v14, 0xCu);
  }

  if (([v6 isForeground] & 1) == 0)
  {
    v12 = share_sheet_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Ignoring nearby sharing interaction for backgrounded session", &v14, 2u);
    }

    goto LABEL_12;
  }

  if (([v6 airDropAllowed] & 1) == 0)
  {
    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Ignoring nearby sharing interaction - AirDrop unavailable", &v14, 2u);
    }

    v12 = [v6 airDropController];
    [v12 showAirDropUnavailableAlert];
LABEL_12:

    goto LABEL_13;
  }

  v9 = [v6 hostConfiguration];
  v10 = [v9 isCollaborative];

  if (v10)
  {
    v11 = [[SFAirDropTransferChange alloc] initWithState:7 progress:0 proxyIdentifier:0 displayName:0 status:0.0];
    [(SDShareSheetSlotManager *)self notifySession:v6 withAirDropTransferChange:v11];
  }

  else
  {
    [(SDShareSheetSlotManager *)self requestAirDropItemsForNode:0 endpointUUID:v7 session:v6];
  }

LABEL_13:
}

- (id)activityHelper:(id)a3 activitiesForActivityType:(id)a4 matchingContext:(id)a5 sessionID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v14);
  v15 = [(NSMutableDictionary *)self->_sessionIDToShareSheetSession objectForKeyedSubscript:v13];
  if (v15)
  {
    if (!_UIActivityOpenInApplicationTypeForActivityType())
    {
      v23 = 0;
      goto LABEL_14;
    }

    v32 = v10;
    v16 = [(SDShareSheetSlotManager *)self sessionIDToShareSheetSession];
    v17 = [v16 objectForKeyedSubscript:v13];
    v18 = [v17 hostConfiguration];
    v31 = [v18 _unitTest_disableExcludingSourceApplicationFromOpenActivities];

    v19 = [v12 activityItemValueClasses];
    v20 = [v19 count];

    if (v20 == 1)
    {
      v21 = [v12 activityItemValueExtensionMatchingDictionaries];
      v22 = sub_10026C400(v21);
    }

    else
    {
      v22 = 0;
    }

    v24 = [v12 activityItemValues];
    v25 = [v12 isContentManaged];
    v26 = [v12 hostAuditTokenData];
    v23 = [SUIOpenInAppActivity openInActivitiesForItems:v24 isContentManaged:v25 sourceApplicationAuditTokenData:v26 includeSourceApplicationInResults:v31 supportedTypeIdentifiers:v22];

    if (_UIActivityOpenInApplicationTypeForActivityType() != 1)
    {
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1001B1B30;
      v33[3] = &unk_1008D3100;
      v34 = v11;
      v27 = v34;
      v28 = v23;
      v29 = [v28 indexesOfObjectsPassingTest:v33];
      v23 = [v28 objectsAtIndexes:v29];
    }

    v10 = v32;
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

- (id)activityHelper:(id)a3 predictionContextForSessionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[SDShareSheetSlotManager sharedManager];
  objc_sync_enter(v8);
  v9 = [(NSMutableDictionary *)self->_sessionIDToShareSheetSession objectForKeyedSubscript:v7];
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
  v11 = [v9 hostAppBundleID];
  [v10 setBundleID:v11];

  v12 = +[NSDate date];
  [v10 setSuggestionDate:v12];

  [v10 setShowPotentialFamilyMembers:{objc_msgSend(v9, "shouldSuggestFamilyMembers")}];
  v13 = [v9 peopleSuggestionBundleIds];
  [v10 setSuggestionsFilteredByBundleIds:v13];

  [v10 setIsSharePlayAvailable:{objc_msgSend(v9, "isSharePlayAvailable")}];
  [v10 setSessionID:v7];
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

  v16 = [v9 processedImageResultsData];

  if (v16)
  {
    v17 = objc_alloc(off_100972148());
    v18 = [v9 urlBeingShared];
    v19 = [v9 processedImageResultsData];
    v15 = [v17 initWithCreationDate:0 UTI:@"SDShareSheetImageAnalysisIdentifier" photoLocalIdentifier:0 identifier:0 cloudIdentifier:0 contentURL:v18 contentText:0 imageData:v19];

    v22 = v15;
    v20 = [NSArray arrayWithObjects:&v22 count:1];
    [v10 setAttachments:v20];

LABEL_12:
  }

  objc_sync_exit(v8);

  return v10;
}

- (unsigned)createSlotForContext:(id)a3
{
  v3 = a3;
  for (i = v3; ; v3 = i)
  {
    v5 = [v3 createSlot];
    if (v5)
    {
      break;
    }

    [i deleteSlot:0];
  }

  v6 = v5;

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

    v6 = [(SDShareSheetSlotManager *)self _createShareSheetContext];

    objc_storeStrong(&self->_shareSheetContext, v6);
    v4 = v6;
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

- (void)configureAirDropNodesFromSuggestionNodes:(id)a3 shareUserDefaults:(id)a4 forSession:(id)a5
{
  v8 = a3;
  v9 = a4;
  v97 = a5;
  v10 = [v97 shareActivitiesInUserOrder];
  v91 = [v10 valueForKey:@"activityType"];

  v88 = objc_opt_new();
  v95 = objc_opt_new();
  val = self;
  objc_sync_enter(val);
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  obj = v8;
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
        v14 = [v13 bundleID];
        v15 = v14;
        v16 = UIActivityTypeMessage;
        if (v14 == @"com.apple.MobileSMS")
        {
          goto LABEL_11;
        }

        if (!v14)
        {
          goto LABEL_29;
        }

        v17 = [(__CFString *)v14 isEqual:@"com.apple.MobileSMS"];

        v16 = UIActivityTypeMessage;
        if ((v17 & 1) != 0 || (v18 = v15, v16 = UIActivityTypeMail, v18 == @"com.apple.mobilemail") || (v19 = v18, v20 = [(__CFString *)v18 isEqual:@"com.apple.mobilemail"], v19, v16 = UIActivityTypeMail, v20))
        {
LABEL_11:
          v21 = [v91 containsObject:v16];
        }

        else
        {
          v23 = v19;
          v24 = v23;
          if (v23 == @"com.apple.InCallService.ShareExtension" || (v25 = [(__CFString *)v23 isEqual:@"com.apple.InCallService.ShareExtension"], v24, v25))
          {
            if (![v97 isCollaborative])
            {
LABEL_13:
              v22 = 0;
              goto LABEL_51;
            }

            v26 = [v97 hiddenActivities];
            v27 = [v26 valueForKey:@"activityType"];

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

          v21 = [v97 isSharePlayAvailable];
        }

        if ((v21 & 1) == 0)
        {
          goto LABEL_13;
        }

LABEL_40:
        v38 = [v97 bundleIDToActivities];
        v39 = [v38 objectForKeyedSubscript:v15];

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

          if ([v9 activityIsHidden:*(*(&v102 + 1) + 8 * v42)])
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
        v49 = [v13 displayName];
        [v48 setDisplayName:v49];

        v50 = [v13 identifier];
        [v48 setRealName:v50];

        [v48 setSuggestion:1];
        v51 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [obj indexOfObject:v13]);
        [v48 setSuggestionIndex:v51];

        v52 = [v13 formattedHandles];
        v53 = [NSSet setWithArray:v52];
        [v48 setFormattedHandles:v53];

        v54 = [v13 actualHandles];
        v55 = [NSSet setWithArray:v54];
        [v48 setActualHandles:v55];

        v56 = [v13 contactIDs];
        v57 = [NSSet setWithArray:v56];
        [v48 setContactIDs:v57];

        v58 = [v13 derivedIntentIdentifier];
        [v48 setDerivedIntentIdentifier:v58];

        [v95 addObject:v48];
        v59 = [v97 realNameToNodeID];
        v60 = [v48 realName];
        v61 = [v59 objectForKeyedSubscript:v60];

        if (!v61)
        {
          v61 = +[NSUUID UUID];
          v62 = [v97 realNameToNodeID];
          v63 = [v48 realName];
          [v62 setObject:v61 forKeyedSubscript:v63];
        }

        v96 = v61;
        [v48 setNodeIdentifier:v61];
        v64 = [UIAirDropNode nodeWithIdentifier:v61 suggestionNode:v13];
        v65 = [v97 hostConfiguration];
        v93 = [v65 hostLocale];

        v66 = [v97 hostConfiguration];
        v89 = [SDShareSheetSession labelColorWithHostConfiguration:v66];

        if (([v97 skipSlotsRendering] & 1) != 0 || (objc_msgSend(v97, "hostConfiguration"), v67 = objc_claimAutoreleasedReturnValue(), v68 = objc_msgSend(v67, "requestPeopleSuggestionsData"), v67, v68))
        {
          v69 = [v13 suggestion];
          v70 = [v69 createPeopleSuggestion];
          [v64 setPeopleSuggestion:v70];
        }

        if (([v97 skipSlotsRendering] | v46))
        {
          v71 = [v48 displayNameForLocale:v93];
          v72 = [[SFProxyText alloc] initWithText:v71];
          [v64 setDisplayName:v72];

          if ([v13 hasGroupImage])
          {
            v73 = SFLocalizedStringForKey();
            v74 = [v48 formattedHandles];
            v75 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v73, [v74 count]);

            v76 = [[SFProxyText alloc] initWithText:v75];
            [v64 setSubtitle:v76];
          }
        }

        else
        {
          v79 = objc_alloc_init(SDShareSheetLoadingConfiguration);
          [(SDShareSheetLoadingConfiguration *)v79 setTextColor:v89];
          [(SDShareSheetLoadingConfiguration *)v79 setHostLocale:v93];
          v80 = [v97 xpcHelperCnx];
          [(SDShareSheetLoadingConfiguration *)v79 setHelperConnection:v80];

          -[SDShareSheetLoadingConfiguration setInstantShareSheet:](v79, "setInstantShareSheet:", [v97 skipSlotsRendering]);
          v81 = [v97 hostConfiguration];
          [(SDShareSheetLoadingConfiguration *)v79 setHostConfiguration:v81];

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

  v86 = [v97 peopleNodes];
  [(SDShareSheetSlotManager *)val _clearSlotsForAirDropProxies:v86];
  [v97 setSuggestedPeople:v95];
  [v97 setPeopleNodes:v88];
  +[CATransaction flush];

  objc_sync_exit(val);
}

- (void)_clearSlotsForAirDropProxies:(id)a3
{
  v4 = a3;
  v21 = self;
  v5 = [(SDShareSheetSlotManager *)self shareSheetContext];
  v6 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v4;
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

        v13 = [v11 avatarImageSlotID];
        v14 = [v11 mainLabelSlotID];
        v15 = [v11 transportImageSlotID];
        v16 = [v11 bottomLabelSlotID];
        if (v13)
        {
          [v5 deleteSlot:v13];
        }

        if (v14)
        {
          [v5 deleteSlot:v14];
          v17 = [NSNumber numberWithUnsignedInt:v14];
          [v6 addObject:v17];
        }

        if (v15)
        {
          [v5 deleteSlot:v15];
          v18 = [NSNumber numberWithUnsignedInt:v15];
          [v6 addObject:v18];
        }

        if (v16)
        {
          [v5 deleteSlot:v16];
          v19 = [NSNumber numberWithUnsignedInt:v16];
          [v6 addObject:v19];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v8);
  }

  v20 = [(SDShareSheetSlotManager *)v21 accessibilityCache];
  [v20 removeLabelsForSlotIDs:v6];
}

- (void)handleAirDropNodesChanged:(id)a3 sessionID:(id)a4
{
  v46 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v44 = v6;
  v45 = v7;
  v8 = [(NSMutableDictionary *)v7->_sessionIDToShareSheetSession objectForKeyedSubscript:v6];
  v9 = v8;
  if (!v8)
  {
    v24 = share_sheet_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      sub_1001B3698();
    }

    goto LABEL_49;
  }

  v10 = [v8 airDropPeople];
  v11 = [v10 count];
  v12 = [v46 count];

  if (v11 != v12)
  {
    [(SDShareSheetSlotManager *)v7 updateNearbyCountSlotIDForSession:v9];
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v46;
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
        v18 = [v9 realNameToNodeID];
        v19 = [v17 realName];
        v20 = [v18 objectForKeyedSubscript:v19];
        [v17 setNodeIdentifier:v20];

        v21 = [v17 realName];
        v22 = [v9 selectedNode];
        v23 = [v22 realName];
        LOBYTE(v19) = [v21 isEqualToString:v23];

        v15 &= v19 ^ 1;
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
  v25 = [v9 selectedNode];
  if (v25)
  {
    v24 = 0;
  }

  else
  {
    v24 = [obj firstObject];
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
        v31 = [v9 selectedNode];
        v32 = v31 == 0;

        if (v32)
        {
          v33 = v30;

          v24 = v33;
        }

        else if ([v30 selectionReason])
        {
          v34 = v30;

          v24 = v34;
          goto LABEL_31;
        }
      }

      v27 = [v26 countByEnumeratingWithState:&v48 objects:v58 count:16];
    }

    while (v27);
  }

LABEL_31:

  v35 = [v9 peopleNodes];
  if ([v35 count])
  {
    v36 = [v9 sentInitialConfiguration];
  }

  else
  {
    v36 = 0;
  }

  if (!v24)
  {
    goto LABEL_52;
  }

  v37 = [v24 nodeIdentifier];
  v38 = [v9 selectedNode];
  v39 = [v38 nodeIdentifier];
  v40 = [v37 isEqual:v39];

  if ((v40 & 1) == 0)
  {
    v42 = share_sheet_log();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v57 = v24;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "people row AirDrop slot changing to %@", buf, 0xCu);
    }

    if (![v24 selectionReason])
    {
      [v24 setSelectionReason:2];
    }

    [v9 setSelectedNode:v24];
    [(SDShareSheetSlotManager *)v45 createAirDropProxyForNode:v24 session:v9];
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

  if (v36)
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

- (void)browser:(id)a3 didUpdatePeople:(id)a4 deletedContactIdentifiers:(id)a5
{
  v8 = a3;
  v48 = a4;
  v49 = a5;
  v9 = self;
  objc_sync_enter(v9);
  v46 = v8;
  obj = v9;
  sessionIDToShareSheetSession = v9->_sessionIDToShareSheetSession;
  v11 = [v8 sessionID];
  v12 = [(NSMutableDictionary *)sessionIDToShareSheetSession objectForKeyedSubscript:v11];

  if (v12)
  {
    v13 = [v12 airDropPeople];
    v14 = [v13 count];
    v15 = [v48 count];

    if (v14 != v15)
    {
      [(SDShareSheetSlotManager *)v9 updateNearbyCountSlotIDForSession:v12];
    }

    [v12 setAirDropPeople:v48];
    v16 = [v12 selectedNode];
    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = [v48 firstObject];
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v19 = v48;
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
          v24 = [v12 selectedNode];
          v25 = v24 == 0;

          if (v25)
          {
            v29 = [v23 rangingMeasurement];
            [v29 ptsScore];
            v31 = v30;
            v32 = [v17 rangingMeasurement];
            [v32 ptsScore];
            v34 = v31 > v33;

            if (v34)
            {
              v35 = v23;

              v17 = v35;
            }
          }

          else if ([v23 selectionReason] || (objc_msgSend(v12, "selectedNode"), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "contactIdentifier"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v49, "containsObject:", v27), v27, v26, (v28 & 1) != 0))
          {
            v36 = v23;

            v17 = v36;
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

    v37 = [v12 peopleNodes];
    if ([v37 count])
    {
      v38 = [v12 sentInitialConfiguration];
    }

    else
    {
      v38 = 0;
    }

    if (!v17)
    {
      goto LABEL_45;
    }

    v39 = [v17 nodeIdentifier];
    v40 = [v12 selectedNode];
    v41 = [v40 nodeIdentifier];
    v42 = [v39 isEqual:v41];

    if ((v42 & 1) == 0)
    {
      v44 = share_sheet_log();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v56 = v17;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "people row AirDrop slot changing to %@", buf, 0xCu);
      }

      if (![v17 selectionReason])
      {
        [v17 setSelectionReason:2];
      }

      [v12 setSelectedNode:v17];
      [(SDShareSheetSlotManager *)obj createAirDropProxyForNode:v17 session:v12];
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

    if (v38)
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
    v17 = share_sheet_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v18 = [v8 sessionID];
      sub_1001B3700(v18, buf, v17);
    }
  }

LABEL_42:

  objc_sync_exit(obj);
}

- (void)createAirDropProxyForNode:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  if (!v6)
  {
    goto LABEL_18;
  }

  v49 = SFLocalizedStringForKey();
  v9 = [v7 hostConfiguration];
  v10 = [v9 hostLocale];
  v50 = [v6 displayNameForLocale:v10];

  v11 = [v7 realNameToNodeID];
  v12 = [v6 realName];
  v13 = [v11 objectForKeyedSubscript:v12];

  if (!v13)
  {
    v13 = +[NSUUID UUID];
    v14 = [v7 realNameToNodeID];
    v15 = [v6 realName];
    [v14 setObject:v13 forKeyedSubscript:v15];
  }

  [v6 setNodeIdentifier:v13];
  if (![v7 skipSlotsRendering])
  {
    v27 = [v6 displayIcon];
    v28 = [NSBundle bundleForClass:objc_opt_class()];
    v29 = [UIImage imageNamed:@"AirDropBadge" inBundle:v28];
    v30 = [v29 _applicationIconImageForFormat:5 precomposed:0];

    v31 = [v30 CGImage];
    +[CATransaction begin];
    v32 = [v7 hostConfiguration];
    v48 = [SDShareSheetSession labelColorWithHostConfiguration:v32];
    v46 = v30;

    v33 = [v6 isClassroom];
    v34 = [v7 xpcHelperCnx];
    v35 = [v7 hostConfiguration];
    [(SDShareSheetSlotManager *)v8 _createNameLabelSlotWithString:v50 textColor:v48 maximumNumberOfLines:2 isAirDrop:0 ignoreNameWrapping:v33 sessionConnection:v34 hostConfig:v35];

    v36 = [(SDShareSheetSlotManager *)v8 shareSheetContext];
    v37 = +[NSMutableDictionary dictionary];
    if (v27)
    {
      v47 = [(SDShareSheetSlotManager *)v8 createSlotForContext:v36];
      [v36 setObject:v27 forSlot:v47];
    }

    else
    {
      v47 = 0;
    }

    if (v31)
    {
      v38 = [(SDShareSheetSlotManager *)v8 createSlotForContext:v36];
      [v36 setObject:v31 forSlot:v38];
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
        v42 = [(SDShareSheetSlotManager *)v8 accessibilityCache];
        [v42 addEntriesFromDictionary:v37];

        +[CATransaction commit];
        v43 = [[SFProxyText alloc] initWithSlotIdentifier:v51];
        v23 = [UIAirDropNode nodeWithIdentifier:v13 displayName:v43 subtitle:0 avatarImageSlotID:v47 transportImageSlotID:v38];

        goto LABEL_15;
      }
    }

    v40 = [v6 displayName];
    v41 = [NSNumber numberWithUnsignedInt:v51];
    [v37 setObject:v40 forKey:v41];

    goto LABEL_14;
  }

  v16 = [SFPeopleSuggestion alloc];
  v17 = [v13 UUIDString];
  v18 = [v6 displayName];
  v19 = [v6 transportBundleID];
  v20 = [v6 contact];
  v21 = [v6 model];
  v22 = [v16 initWithIdentifier:v17 displayName:v18 transportBundleIdentifier:v19 contact:v20 deviceModelIdentifier:v21];

  v23 = [UIAirDropNode nodeWithIdentifier:v13 peopleSuggestion:v22];
  v24 = [SFProxyText alloc];
  v25 = [v6 displayName];
  v26 = [v24 initWithText:v25];
  [v23 setDisplayName:v26];

LABEL_15:
  [v23 setIsDisabled:{objc_msgSend(v6, "isDisabled")}];
  [v23 setHasSquareImage:{objc_msgSend(v6, "isClassroom")}];
  if (GestaltGetBoolean())
  {
    [v23 setSelectionReason:{objc_msgSend(v6, "selectionReason")}];
  }

  v44 = [v7 airDropNodes];
  [(SDShareSheetSlotManager *)v8 _clearSlotsForAirDropProxies:v44];
  v52 = v23;
  v45 = [NSArray arrayWithObjects:&v52 count:1];
  [v7 setAirDropNodes:v45];

  +[CATransaction flush];
LABEL_18:
  objc_sync_exit(v8);
}

- (id)_createActivityTitlePerspectiveDataForActivity:(id)a3 foregroundColor:(id)a4 sessionConnection:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v9)
  {
    v11 = share_sheet_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
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

  v11 = [v7 activityTitle];
  if (!v11)
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

  v10 = [v9 perspectiveDataForUIActivityTitle:v11 textColor:v8];
LABEL_12:

LABEL_13:

  return v10;
}

- ($EC76EA2E339756B4D2C49A1061DE0928)_createNameLabelSlotWithString:(SEL)a3 textColor:(id)a4 maximumNumberOfLines:(id)a5 isAirDrop:(unint64_t)a6 ignoreNameWrapping:(BOOL)a7 sessionConnection:(BOOL)a8 hostConfig:(id)a9
{
  v11 = a8;
  v12 = a7;
  v17 = a4;
  v18 = a5;
  v19 = a9;
  v20 = a10;
  retstr->var1.width = 0.0;
  retstr->var1.height = 0.0;
  *&retstr->var0 = 0;
  if (v19)
  {
    v31 = [v17 length];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1001AEFFC;
    v40[3] = &unk_1008D2F90;
    v41 = v19;
    v21 = v17;
    v22 = v18;
    v23 = v21;
    v42 = v21;
    v32 = v22;
    v43 = v22;
    v44 = a6;
    v45 = v12;
    v46 = v11;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1001AF014;
    v33[3] = &unk_1008D2FB8;
    v34 = v41;
    v24 = v23;
    v35 = v24;
    v25 = v43;
    v36 = v25;
    v37 = a6;
    v38 = v12;
    v39 = v11;
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
        if (v12)
        {
          v30 = "yes";
        }

        else
        {
          v30 = "no";
        }

        v50 = v31;
        v51 = 2112;
        if (v11)
        {
          v29 = "yes";
        }

        v52 = v25;
        v53 = 1024;
        v54 = a6;
        v55 = 2080;
        v56 = v30;
        v57 = 2080;
        v58 = v29;
        _os_log_fault_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "returned nil: CGImgForNameLabelWithString:'%@', length: %i, textColor:%@, maxNumberOfLines: %i, isAirDrop: %s, ignoreNameWrapping: %s", buf, 0x36u);
      }
    }

    v27 = v41;
    v18 = v32;
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SDShareSheetSlotManager *)self shouldAcceptNewConnection:v7];
  v9 = daemon_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 sd_description];
    v11 = v10;
    v12 = "no";
    if (v8)
    {
      v12 = "yes";
    }

    *buf = 138412546;
    v23 = v10;
    v24 = 2080;
    v25 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "New connection from %@ accepted %s", buf, 0x16u);
  }

  if (v8)
  {
    [v7 setDelegate:self];
    [v7 setExportedObject:self];
    v13 = [(SDShareSheetSlotManager *)self exportedInterface];
    [v7 setExportedInterface:v13];

    v14 = [(SDShareSheetSlotManager *)self remoteObjectInterface];
    [v7 setRemoteObjectInterface:v14];

    objc_initWeak(buf, self);
    objc_initWeak(&location, v7);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001AF304;
    v18[3] = &unk_1008D2FE0;
    objc_copyWeak(&v19, &location);
    objc_copyWeak(&v20, buf);
    [v7 setInvalidationHandler:v18];
    [v7 resume];
    v15 = [(SDShareSheetSlotManager *)self activeConnections];
    v16 = [NSMutableSet setWithSet:v15];

    [v16 addObject:v7];
    [(SDShareSheetSlotManager *)self setActiveConnections:v16];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  return v8;
}

- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5
{
  v7 = a4;
  [(SDShareSheetSlotManager *)self setCurrentConnection:a3];
  [v7 invoke];
}

- (void)establishConnectionWithCompletionHandler:(id)a3
{
  (*(a3 + 2))(a3, a2);
  v4 = [(SDShareSheetSlotManager *)self currentConnection];
  v5 = daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 sd_description];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "New connection established to %@", &v7, 0xCu);
  }

  [(SDShareSheetSlotManager *)self connectionEstablished:v4];
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

- (void)connectionEstablished:(id)a3
{
  v3 = a3;
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 sd_description];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "New connection established %@", &v6, 0xCu);
  }
}

- (void)connectionInvalidated:(id)a3
{
  v4 = a3;
  v5 = daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 sd_description];
    *buf = 138412290;
    v53 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Connection %@ invalidated", buf, 0xCu);
  }

  v7 = self;
  objc_sync_enter(v7);
  v8 = [(SDShareSheetSlotManager *)v7 activeConnections];
  v40 = [v8 mutableCopy];

  [v40 removeObject:v4];
  [(SDShareSheetSlotManager *)v7 setActiveConnections:v40];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v9 = [(NSMutableDictionary *)v7->_sessionIDToShareSheetSession allValues];
  v10 = [v9 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v10)
  {
    v11 = *v48;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v48 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v47 + 1) + 8 * i);
        v14 = [v13 connection];
        v15 = v14 == v4;

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

      v10 = [v9 countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v17 = [(SDShareSheetSlotManager *)v7 shareSheetContext];
  v18 = +[NSMutableArray array];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1001B0600;
  v44[3] = &unk_1008D3008;
  v19 = v17;
  v45 = v19;
  v20 = v18;
  v46 = v20;
  v21 = objc_retainBlock(v44);
  +[CATransaction begin];
  v22 = [v10 hostShareActivityProxies];
  (v21[2])(v21, v22);
  v38 = v22;
  v23 = [v10 hostActionActivityProxies];
  (v21[2])(v21, v23);
  v36 = v23;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1001B07C4;
  v41[3] = &unk_1008D3008;
  v39 = v19;
  v42 = v39;
  v24 = v20;
  v43 = v24;
  v25 = objc_retainBlock(v41);
  v26 = [v10 airDropNodes];
  (v25[2])(v25, v26);
  v27 = [v10 peopleNodes];
  (v25[2])(v25, v27);
  v28 = [(SDShareSheetSlotManager *)v7 accessibilityCache];
  [v28 removeLabelsForSlotIDs:v24];

  v29 = [v10 nearbyCountSlotID];

  if (v29)
  {
    v30 = [v10 nearbyCountSlotID];
    [v39 deleteSlot:{objc_msgSend(v30, "unsignedIntValue")}];
  }

  if (([v10 engagedWithSheet] & 1) == 0)
  {
    v31 = [v10 suggestionBrowser];
    v32 = v31 == 0;

    if (!v32)
    {
      v33 = [v10 suggestionBrowser];
      [v33 provideFeedbackForNodeAtIndex:0 bundleID:0 selectedActionBundleID:0 abandoned:1];
    }
  }

  v34 = [v10 peopleBrowser];
  v35 = [v34 sessionID];

  [v10 invalidate];
  if (v35)
  {
    [(NSMutableDictionary *)v7->_sessionIDToShareSheetSession removeObjectForKey:v35];
  }

  if (![(NSMutableDictionary *)v7->_sessionIDToShareSheetSession count])
  {
    [(SDShareSheetSlotManager *)v7 invalidateShareSheetContext];
  }

  +[CATransaction commit];
  +[CATransaction flush];

  objc_sync_exit(v7);
}

- (id)recipientHandlesForSessionID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v26 = v4;
  v6 = [(NSMutableDictionary *)v5->_sessionIDToShareSheetSession objectForKeyedSubscript:v4];
  v27 = [v6 selectedRecipient];
  if (v27)
  {
    v7 = [[SFShareSheetRecipient alloc] initWithNode:v27];
    v42 = v7;
    v8 = [NSArray arrayWithObjects:&v42 count:1];

    [v6 setSelectedRecipient:0];
  }

  else
  {
    v9 = [v6 recipients];
    v10 = [v9 count];

    if (v10)
    {
      v11 = objc_alloc_init(NSMutableArray);
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v12 = [v6 recipients];
      v13 = [v12 countByEnumeratingWithState:&v32 objects:v41 count:16];
      if (v13)
      {
        v14 = *v33;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v33 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = [[SFShareSheetRecipient alloc] initWithPerson:*(*(&v32 + 1) + 8 * i) handleValidationBlock:&stru_1008D3048];
            [v11 addObject:v16];
          }

          v13 = [v12 countByEnumeratingWithState:&v32 objects:v41 count:16];
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
      v18 = [v6 transferNodes];
      v19 = [v18 allValues];

      v20 = [v19 countByEnumeratingWithState:&v28 objects:v40 count:16];
      if (v20)
      {
        v21 = *v29;
        do
        {
          for (j = 0; j != v20; j = j + 1)
          {
            if (*v29 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = [[SFShareSheetRecipient alloc] initWithNode:*(*(&v28 + 1) + 8 * j)];
            [v11 addObject:v23];
          }

          v20 = [v19 countByEnumeratingWithState:&v28 objects:v40 count:16];
        }

        while (v20);
      }

      v17 = [v11 copy];
    }

    v8 = v17;
  }

  objc_sync_exit(v5);
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

- (void)requestMessagesRecipientInfoForSessionID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(NSMutableDictionary *)v8->_sessionIDToShareSheetSession objectForKeyedSubscript:v6];
  v10 = [v9 selectedRecipient];

  if (v10)
  {
    v11 = [SFShareSheetRecipient alloc];
    v12 = [v9 selectedRecipient];
    v13 = [v11 initWithNode:v12];

LABEL_3:
    [v9 setSelectedRecipient:0];
    v14 = 1;
    goto LABEL_6;
  }

  v15 = [v9 recipients];
  v16 = [v15 count];

  if (!v16)
  {
    v13 = 0;
    goto LABEL_3;
  }

  v17 = [v9 recipients];
  v18 = [v9 connection];
  v19 = [v18 _queue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001B11BC;
  v21[3] = &unk_1008D3070;
  v22 = v6;
  v23 = v7;
  sub_1001EAFE0(v17, v19, v21);

  v14 = 0;
  v13 = 0;
LABEL_6:

  objc_sync_exit(v8);
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
        v27 = v6;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Returning Messages recipient %@ for session ID %@", buf, 0x16u);
      }
    }

    (*(v7 + 2))(v7, v13);
  }
}

- (void)_saveSnapshotToFile:(id)a3 withReferenceSnapshot:(id)a4 sessionID:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 testName];

  if (v13)
  {
    v14 = [v10 testName];
    [v9 setTestName:v14];
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001B1404;
  v18[3] = &unk_1008D3098;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  [v9 writeSnapshotWithCompletionHandler:v18];
}

@end