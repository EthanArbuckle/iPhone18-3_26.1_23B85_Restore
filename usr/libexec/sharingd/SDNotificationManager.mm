@interface SDNotificationManager
+ (id)sharedManager;
- (NSSet)activeTVAutoFillPrompts;
- (NSString)description;
- (SDNotificationManager)init;
- (id)attachmentFromURL:(id)l;
- (id)homePodHandoffContentForDevice:(id)device info:(id)info;
- (id)riServerContentForDevice:(id)device backgroundAction:(BOOL)action;
- (id)visionUnlockiOSUpsellContent;
- (id)watchKeyboardContentForDevice:(id)device;
- (void)_activate;
- (void)_addRequestWithID:(id)d content:(id)content type:(unsigned int)type isHomePodMini:(BOOL)mini;
- (void)_homePodEnsureStarted:(BOOL)started completion:(id)completion;
- (void)_homePodHandleResponse:(id)response completion:(id)completion;
- (void)_homePodHandoffPostIfNeeded:(id)needed info:(id)info;
- (void)_homePodHandoffRemove:(id)remove reason:(int64_t)reason;
- (void)_homePodHandoffRemoveAll;
- (void)_homePodHandoffUpdateIfNeeded:(id)needed info:(id)info;
- (void)_invalidate;
- (void)_riServerEnsureStarted:(BOOL)started completion:(id)completion;
- (void)_riServerRemove:(id)remove;
- (void)_riServerRemoveAll;
- (void)_riServerUpdate:(id)update info:(id)info;
- (void)_riServerUpdate:(id)update rtiData:(id)data;
- (void)_tvAutoFillPostIfNeeded:(id)needed;
- (void)_tvAutoFillRemove:(id)remove;
- (void)_tvAutoFillRemoveAll;
- (void)_tvHandleResponse:(id)response completion:(id)completion;
- (void)_update;
- (void)_visionHandleFailureResponse:(id)response completion:(id)completion;
- (void)_visionHandleResponse:(id)response completion:(id)completion;
- (void)_visionUnlockiOSEnsureStarted:(BOOL)started completion:(id)completion;
- (void)_visionUnlockiOSPostFailureNotificationWithMessage:(id)message userInfo:(id)info;
- (void)_visionUnlockiOSRemoveAll;
- (void)_visionUnlockiOSUpsellPostIfNeeded;
- (void)_watchEnsureStarted:(BOOL)started completion:(id)completion;
- (void)_watchHandleResponse:(id)response completion:(id)completion;
- (void)_watchKeyboardPostIfNeeded:(id)needed;
- (void)_watchKeyboardRemove:(id)remove;
- (void)_watchKeyboardRemoveAll;
- (void)_watchKeyboardUpdate:(id)update info:(id)info;
- (void)_watchKeyboardUpdate:(id)update rtiData:(id)data;
- (void)activate;
- (void)homePodHandoffPostIfNeeded:(id)needed info:(id)info;
- (void)homePodHandoffRemove:(id)remove reason:(int64_t)reason;
- (void)homePodHandoffRemoveAll;
- (void)homePodHandoffUpdateIfNeeded:(id)needed info:(id)info;
- (void)invalidate;
- (void)riServerPostIfNeeded:(id)needed backgroundAction:(BOOL)action;
- (void)riServerRemove:(id)remove;
- (void)riServerRemoveAll;
- (void)riServerUpdate:(id)update info:(id)info;
- (void)riServerUpdate:(id)update rtiData:(id)data;
- (void)testAutoFillRemove;
- (void)testAutofillPost;
- (void)testHandoffPost;
- (void)testKeyboardPost;
- (void)testKeyboardPostAutoFill;
- (void)testKeyboardRemove;
- (void)testKeyboardUpdate;
- (void)testPost:(id)post;
- (void)testPostBasic;
- (void)testWatchKeyboard;
- (void)testWatchKeyboardAutoFill;
- (void)tvAutoFillPostIfNeeded:(id)needed;
- (void)tvAutoFillRemove:(id)remove;
- (void)tvAutoFillRemoveAll;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)visionUnlockiOSPostFailureNotificationWithMessage:(id)message userInfo:(id)info;
- (void)visionUnlockiOSRemoveAll;
- (void)visionUnlockiOSUpsellPostIfNeeded;
- (void)watchKeyboardPostIfNeeded:(id)needed;
- (void)watchKeyboardRemove:(id)remove;
- (void)watchKeyboardRemoveAll;
- (void)watchKeyboardUpdate:(id)update info:(id)info;
- (void)watchKeyboardUpdate:(id)update rtiData:(id)data;
@end

@implementation SDNotificationManager

+ (id)sharedManager
{
  if (qword_10098A0A8 != -1)
  {
    sub_100008BE4();
  }

  v3 = qword_10098A0B0;

  return v3;
}

- (void)homePodHandoffRemoveAll
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008BF8;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_homePodHandoffRemoveAll
{
  if (self->_homePodNotifCenter)
  {
    dispatch_assert_queue_V2(self->_dispatchQueue);
    if (dword_100972630 <= 10 && (dword_100972630 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(UNUserNotificationCenter *)self->_homePodNotifCenter removeAllDeliveredNotifications];
    [(UNUserNotificationCenter *)self->_homePodMiniNotificationCenter removeAllDeliveredNotifications];
    homePodRequests = self->_homePodRequests;

    [(NSMutableDictionary *)homePodRequests removeAllObjects];
  }
}

- (NSSet)activeTVAutoFillPrompts
{
  allKeys = [(NSMutableDictionary *)self->_autoFillRequests allKeys];
  v3 = allKeys;
  if (allKeys)
  {
    v4 = allKeys;
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  v5 = [NSSet setWithArray:v4];

  return v5;
}

- (SDNotificationManager)init
{
  v6.receiver = self;
  v6.super_class = SDNotificationManager;
  v2 = [(SDNotificationManager *)&v6 init];
  if (v2)
  {
    v3 = CUMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (NSString)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"-- SDNotificationManager --\n"];
  if (self->_activated)
  {
    [v3 appendString:@"activated "];
  }

  if (self->_homePodNotifGranted)
  {
    [v3 appendString:@"HomePod granted "];
  }

  if (self->_tvNotifGranted)
  {
    [v3 appendString:@"TV granted "];
  }

  if (self->_watchNotifGranted)
  {
    [v3 appendString:@"Watch granted "];
  }

  if (self->_autoFillRequests)
  {
    [v3 appendString:@"AutoFill requests:\n"];
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    allKeys = [(NSMutableDictionary *)self->_autoFillRequests allKeys];
    v5 = [allKeys countByEnumeratingWithState:&v55 objects:v64 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v56;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v56 != v7)
          {
            objc_enumerationMutation(allKeys);
          }

          [v3 appendFormat:@" - %@\n", *(*(&v55 + 1) + 8 * i)];
        }

        v6 = [allKeys countByEnumeratingWithState:&v55 objects:v64 count:16];
      }

      while (v6);
    }
  }

  [v3 appendString:@"\n"];
  if (self->_homePodRequests)
  {
    [v3 appendString:@"HomePod requests:\n"];
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    allKeys2 = [(NSMutableDictionary *)self->_homePodRequests allKeys];
    v10 = [allKeys2 countByEnumeratingWithState:&v51 objects:v63 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v52;
      do
      {
        for (j = 0; j != v11; j = j + 1)
        {
          if (*v52 != v12)
          {
            objc_enumerationMutation(allKeys2);
          }

          [v3 appendFormat:@" - %@\n", *(*(&v51 + 1) + 8 * j)];
        }

        v11 = [allKeys2 countByEnumeratingWithState:&v51 objects:v63 count:16];
      }

      while (v11);
    }
  }

  [v3 appendString:@"\n"];
  if (self->_tvKeyboardRequests)
  {
    [v3 appendString:@"TVKeyboard requests:\n"];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    allKeys3 = [(NSMutableDictionary *)self->_tvKeyboardRequests allKeys];
    v15 = [allKeys3 countByEnumeratingWithState:&v47 objects:v62 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v48;
      do
      {
        for (k = 0; k != v16; k = k + 1)
        {
          if (*v48 != v17)
          {
            objc_enumerationMutation(allKeys3);
          }

          [v3 appendFormat:@" - %@\n", *(*(&v47 + 1) + 8 * k)];
        }

        v16 = [allKeys3 countByEnumeratingWithState:&v47 objects:v62 count:16];
      }

      while (v16);
    }
  }

  [v3 appendString:@"\n"];
  if (self->_watchKeyboardRequests)
  {
    [v3 appendString:@"WatchKeyboard requests:\n"];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    allKeys4 = [(NSMutableDictionary *)self->_watchKeyboardRequests allKeys];
    v20 = [allKeys4 countByEnumeratingWithState:&v43 objects:v61 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v44;
      do
      {
        for (m = 0; m != v21; m = m + 1)
        {
          if (*v44 != v22)
          {
            objc_enumerationMutation(allKeys4);
          }

          [v3 appendFormat:@" - %@\n", *(*(&v43 + 1) + 8 * m)];
        }

        v21 = [allKeys4 countByEnumeratingWithState:&v43 objects:v61 count:16];
      }

      while (v21);
    }
  }

  [v3 appendString:@"\n"];
  if (self->_visionUnlockiOSRequests)
  {
    [v3 appendString:@"VisionUnlockiOS requests:\n"];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    allKeys5 = [(NSMutableDictionary *)self->_visionUnlockiOSRequests allKeys];
    v25 = [allKeys5 countByEnumeratingWithState:&v39 objects:v60 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v40;
      do
      {
        for (n = 0; n != v26; n = n + 1)
        {
          if (*v40 != v27)
          {
            objc_enumerationMutation(allKeys5);
          }

          [v3 appendFormat:@" - %@\n", *(*(&v39 + 1) + 8 * n)];
        }

        v26 = [allKeys5 countByEnumeratingWithState:&v39 objects:v60 count:16];
      }

      while (v26);
    }
  }

  if (self->_visionUnlockiOSRequestsErrors)
  {
    [v3 appendString:@"VisionUnlockiOSEror requests:\n"];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    allKeys6 = [(NSMutableDictionary *)self->_visionUnlockiOSRequestsErrors allKeys];
    v30 = [allKeys6 countByEnumeratingWithState:&v35 objects:v59 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v36;
      do
      {
        for (ii = 0; ii != v31; ii = ii + 1)
        {
          if (*v36 != v32)
          {
            objc_enumerationMutation(allKeys6);
          }

          [v3 appendFormat:@" - %@\n", *(*(&v35 + 1) + 8 * ii)];
        }

        v31 = [allKeys6 countByEnumeratingWithState:&v35 objects:v59 count:16];
      }

      while (v31);
    }
  }

  return v3;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BE164;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_activated)
  {
    if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
    {
      sub_1001C683C();
    }

    self->_activated = 1;

    [(SDNotificationManager *)self prefsChanged];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BE26C;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    sub_1001C6858();
  }
}

- (void)_update
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_activated)
  {
    [(SDNotificationManager *)self _homePodEnsureStarted:0 completion:0];
    [(SDNotificationManager *)self _riServerEnsureStarted:0 completion:0];

    [(SDNotificationManager *)self _watchEnsureStarted:0 completion:0];
  }
}

- (void)_riServerEnsureStarted:(BOOL)started completion:(id)completion
{
  completionCopy = completion;
  if (self->_tvNotifCenter)
  {
LABEL_2:
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }

    goto LABEL_11;
  }

  if (started)
  {
    CFPrefs_SetValue();
  }

  else if (!CFPrefs_GetInt64())
  {
    goto LABEL_2;
  }

  notify_post("com.apple.ContinuityKeyBoard.enabled");
  if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    sub_1001C6874();
  }

  v7 = [objc_alloc(sub_1001BE4C0()) initWithBundleIdentifier:@"com.apple.Sharing.TVRemoteNotifications"];
  tvNotifCenter = self->_tvNotifCenter;
  self->_tvNotifCenter = v7;

  [(UNUserNotificationCenter *)self->_tvNotifCenter setDelegate:self];
  [(UNUserNotificationCenter *)self->_tvNotifCenter setWantsNotificationResponsesDelivered];
  v9 = self->_tvNotifCenter;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001BE5A0;
  v10[3] = &unk_1008D3230;
  v10[4] = self;
  v11 = completionCopy;
  [(UNUserNotificationCenter *)v9 getNotificationSettingsWithCompletionHandler:v10];

LABEL_11:
}

- (void)_watchEnsureStarted:(BOOL)started completion:(id)completion
{
  completionCopy = completion;
  if (self->_watchNotifCenter)
  {
LABEL_2:
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }

    goto LABEL_11;
  }

  if (started)
  {
    CFPrefs_SetValue();
  }

  else if (!CFPrefs_GetInt64())
  {
    goto LABEL_2;
  }

  if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    sub_1001C6908();
  }

  v7 = [objc_alloc(sub_1001BE4C0()) initWithBundleIdentifier:@"com.apple.Sharing.WatchRemoteNotifications"];
  watchNotifCenter = self->_watchNotifCenter;
  self->_watchNotifCenter = v7;

  [(UNUserNotificationCenter *)self->_watchNotifCenter setDelegate:self];
  [(UNUserNotificationCenter *)self->_watchNotifCenter setWantsNotificationResponsesDelivered];
  v9 = self->_watchNotifCenter;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001BE958;
  v10[3] = &unk_1008D3230;
  v10[4] = self;
  v11 = completionCopy;
  [(UNUserNotificationCenter *)v9 getNotificationSettingsWithCompletionHandler:v10];

LABEL_11:
}

- (void)_homePodEnsureStarted:(BOOL)started completion:(id)completion
{
  completionCopy = completion;
  if (started)
  {
    CFPrefs_SetValue();
LABEL_4:
    v7 = dispatch_group_create();
    if (!self->_homePodNotifCenter)
    {
      if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
      {
        sub_1001C699C();
      }

      v8 = [objc_alloc(sub_1001BE4C0()) initWithBundleIdentifier:@"com.apple.Sharing.HomePodRemoteNotifications"];
      homePodNotifCenter = self->_homePodNotifCenter;
      self->_homePodNotifCenter = v8;

      [(UNUserNotificationCenter *)self->_homePodNotifCenter setDelegate:self];
      [(UNUserNotificationCenter *)self->_homePodNotifCenter setWantsNotificationResponsesDelivered];
      dispatch_group_enter(v7);
      v10 = self->_homePodNotifCenter;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1001BEE6C;
      v19[3] = &unk_1008D3280;
      v19[4] = self;
      v20 = v7;
      [(UNUserNotificationCenter *)v10 getNotificationSettingsWithCompletionHandler:v19];
    }

    if (!self->_homePodMiniNotificationCenter)
    {
      if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
      {
        sub_1001C69B8();
      }

      v11 = [objc_alloc(sub_1001BE4C0()) initWithBundleIdentifier:@"com.apple.Sharing.b7ce1794a1c8766816fc7b7500742862"];
      homePodMiniNotificationCenter = self->_homePodMiniNotificationCenter;
      self->_homePodMiniNotificationCenter = v11;

      [(UNUserNotificationCenter *)self->_homePodMiniNotificationCenter setDelegate:self];
      [(UNUserNotificationCenter *)self->_homePodMiniNotificationCenter setWantsNotificationResponsesDelivered];
      dispatch_group_enter(v7);
      v13 = self->_homePodMiniNotificationCenter;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1001BF094;
      v17[3] = &unk_1008D3280;
      v17[4] = self;
      v18 = v7;
      [(UNUserNotificationCenter *)v13 getNotificationSettingsWithCompletionHandler:v17];
    }

    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001BF2BC;
    block[3] = &unk_1008D08E0;
    v16 = completionCopy;
    dispatch_group_notify(v7, dispatchQueue, block);

    goto LABEL_15;
  }

  if (CFPrefs_GetInt64())
  {
    goto LABEL_4;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_15:
}

- (void)_visionUnlockiOSEnsureStarted:(BOOL)started completion:(id)completion
{
  completionCopy = completion;
  v6 = completionCopy;
  if (self->_visionNotifCenter)
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy);
    }
  }

  else
  {
    if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
    {
      sub_1001C6ADC();
    }

    v7 = [objc_alloc(sub_1001BE4C0()) initWithBundleIdentifier:@"com.apple.Sharing.VisionUnlockiOSNotifications"];
    visionNotifCenter = self->_visionNotifCenter;
    self->_visionNotifCenter = v7;

    [(UNUserNotificationCenter *)self->_visionNotifCenter setDelegate:self];
    [(UNUserNotificationCenter *)self->_visionNotifCenter setWantsNotificationResponsesDelivered];
    v9 = self->_visionNotifCenter;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001BF400;
    v10[3] = &unk_1008D3230;
    v10[4] = self;
    v11 = v6;
    [(UNUserNotificationCenter *)v9 getNotificationSettingsWithCompletionHandler:v10];
  }
}

- (void)_visionHandleResponse:(id)response completion:(id)completion
{
  responseCopy = response;
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_1001BF9E0;
  v25 = &unk_1008D08E0;
  completionCopy = completion;
  v26 = completionCopy;
  v7 = objc_retainBlock(&v22);
  if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    v21 = responseCopy;
    LogPrintF();
  }

  actionIdentifier = [responseCopy actionIdentifier];
  v9 = off_1009726A0();
  v10 = actionIdentifier;
  v11 = v9;
  v12 = v11;
  if (v10 == v11)
  {
    v13 = 1;
  }

  else if ((v10 != 0) == (v11 == 0))
  {
    v13 = 0;
  }

  else
  {
    v13 = [v10 isEqual:v11];
  }

  actionIdentifier2 = [responseCopy actionIdentifier];
  v15 = off_1009726A8();
  v16 = actionIdentifier2;
  v17 = v15;
  v18 = v17;
  if (v16 == v17)
  {

    goto LABEL_15;
  }

  if ((v16 != 0) == (v17 == 0))
  {

    goto LABEL_19;
  }

  v19 = [v16 isEqual:v17];

  if (v19)
  {
LABEL_15:
    if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    actionIdentifier3 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
    [actionIdentifier3 handleVisionOSUpsellDismissed];
    goto LABEL_30;
  }

LABEL_19:
  if (v13)
  {
    if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    actionIdentifier3 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
    [actionIdentifier3 handleVisionOSUpsellAction];
    goto LABEL_30;
  }

  if (dword_100972630 <= 90 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    actionIdentifier3 = [responseCopy actionIdentifier];
    LogPrintF();
LABEL_30:
  }

  (v7[2])(v7);
}

- (void)_visionHandleFailureResponse:(id)response completion:(id)completion
{
  responseCopy = response;
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_1001BFCDC;
  v23 = &unk_1008D08E0;
  completionCopy = completion;
  v24 = completionCopy;
  v7 = objc_retainBlock(&v20);
  if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    v19 = responseCopy;
    LogPrintF();
  }

  actionIdentifier = [responseCopy actionIdentifier];
  v9 = off_1009726A0();
  v10 = actionIdentifier;
  v11 = v9;
  v12 = v11;
  if (v10 == v11)
  {
  }

  else
  {
    if ((v10 != 0) == (v11 == 0))
    {

LABEL_14:
      if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_19;
    }

    v13 = [v10 isEqual:v11];

    if ((v13 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v14 = +[_TtC16DaemoniOSLibrary23SDAuthenticationManager shared];
  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];
  userInfo = [content userInfo];
  [v14 handleVisionOSFailureTappedWithUserInfo:userInfo];

LABEL_19:
  (v7[2])(v7);
}

- (void)_addRequestWithID:(id)d content:(id)content type:(unsigned int)type isHomePodMini:(BOOL)mini
{
  miniCopy = mini;
  dCopy = d;
  contentCopy = content;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2050000000;
  v12 = qword_10098A108;
  v51 = qword_10098A108;
  if (!qword_10098A108)
  {
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1001C5274;
    v47[3] = &unk_1008CDA20;
    v47[4] = &v48;
    sub_1001C5274(v47);
    v12 = v49[3];
  }

  v13 = v12;
  _Block_object_dispose(&v48, 8);
  v14 = [v12 requestWithIdentifier:dCopy content:contentCopy trigger:0];
  if (type > 5)
  {
    switch(type)
    {
      case 6u:
        v29 = [(NSMutableDictionary *)self->_watchKeyboardRequests objectForKeyedSubscript:dCopy];

        if (v29 && dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
        {
          sub_1001C6BD8();
        }

        watchKeyboardRequests = self->_watchKeyboardRequests;
        if (!watchKeyboardRequests)
        {
          v31 = objc_alloc_init(NSMutableDictionary);
          v32 = self->_watchKeyboardRequests;
          self->_watchKeyboardRequests = v31;

          watchKeyboardRequests = self->_watchKeyboardRequests;
        }

        [(NSMutableDictionary *)watchKeyboardRequests setObject:v14 forKeyedSubscript:dCopy];
        watchNotifCenter = self->_watchNotifCenter;
        goto LABEL_55;
      case 7u:
        v37 = [(NSMutableDictionary *)self->_visionUnlockiOSRequests objectForKeyedSubscript:dCopy];

        if (v37 && dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
        {
          sub_1001C6BA4();
        }

        visionUnlockiOSRequests = self->_visionUnlockiOSRequests;
        if (!visionUnlockiOSRequests)
        {
          v38 = objc_alloc_init(NSMutableDictionary);
          v39 = self->_visionUnlockiOSRequests;
          self->_visionUnlockiOSRequests = v38;

          visionUnlockiOSRequests = self->_visionUnlockiOSRequests;
        }

        break;
      case 8u:
        v19 = [(NSMutableDictionary *)self->_visionUnlockiOSRequestsErrors objectForKeyedSubscript:dCopy];

        if (v19 && dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
        {
          sub_1001C6B70();
        }

        visionUnlockiOSRequests = self->_visionUnlockiOSRequestsErrors;
        if (!visionUnlockiOSRequests)
        {
          v21 = objc_alloc_init(NSMutableDictionary);
          visionUnlockiOSRequestsErrors = self->_visionUnlockiOSRequestsErrors;
          self->_visionUnlockiOSRequestsErrors = v21;

          visionUnlockiOSRequests = self->_visionUnlockiOSRequestsErrors;
        }

        break;
      default:
        goto LABEL_37;
    }

    [(NSMutableDictionary *)visionUnlockiOSRequests setObject:v14 forKeyedSubscript:dCopy];
    watchNotifCenter = self->_visionNotifCenter;
    goto LABEL_55;
  }

  if (type - 2 < 2)
  {
    v23 = [(NSMutableDictionary *)self->_homePodRequests objectForKeyedSubscript:dCopy];

    if (v23 && dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
    {
      sub_1001C6C74();
    }

    homePodRequests = self->_homePodRequests;
    if (!homePodRequests)
    {
      v25 = objc_alloc_init(NSMutableDictionary);
      v26 = self->_homePodRequests;
      self->_homePodRequests = v25;

      homePodRequests = self->_homePodRequests;
    }

    [(NSMutableDictionary *)homePodRequests setObject:v14 forKeyedSubscript:dCopy];
    v27 = self->_homePodNotifCenter;
    if (miniCopy)
    {
      v28 = self->_homePodMiniNotificationCenter;

      v27 = v28;
    }

    goto LABEL_56;
  }

  if (type == 4)
  {
    v34 = [(NSMutableDictionary *)self->_autoFillRequests objectForKeyedSubscript:dCopy];

    if (v34 && dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
    {
      sub_1001C6C40();
    }

    autoFillRequests = self->_autoFillRequests;
    if (!autoFillRequests)
    {
      v35 = objc_alloc_init(NSMutableDictionary);
      v36 = self->_autoFillRequests;
      self->_autoFillRequests = v35;

      autoFillRequests = self->_autoFillRequests;
    }

    goto LABEL_47;
  }

  if (type == 5)
  {
    v15 = [(NSMutableDictionary *)self->_tvKeyboardRequests objectForKeyedSubscript:dCopy];

    if (v15 && dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
    {
      sub_1001C6C0C();
    }

    autoFillRequests = self->_tvKeyboardRequests;
    if (!autoFillRequests)
    {
      v17 = objc_alloc_init(NSMutableDictionary);
      tvKeyboardRequests = self->_tvKeyboardRequests;
      self->_tvKeyboardRequests = v17;

      autoFillRequests = self->_tvKeyboardRequests;
    }

LABEL_47:
    [(NSMutableDictionary *)autoFillRequests setObject:v14 forKeyedSubscript:dCopy];
    watchNotifCenter = self->_tvNotifCenter;
LABEL_55:
    v27 = watchNotifCenter;
LABEL_56:
    if (v27)
    {
      if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
      {
        sub_1001C6CA8(type);
      }

      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_1001C02C0;
      v40[3] = &unk_1008D32D0;
      v41 = v14;
      v42 = contentCopy;
      selfCopy = self;
      v44 = dCopy;
      typeCopy = type;
      v46 = miniCopy;
      [(UNUserNotificationCenter *)v27 addNotificationRequest:v41 withCompletionHandler:v40];
    }

    else
    {
      sub_1001C6CF8(dword_100972630, v47);
      v27 = v47[0];
    }

    goto LABEL_61;
  }

LABEL_37:
  if (dword_100972630 <= 60 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    sub_1001C6D64();
  }

  v27 = 0;
LABEL_61:
}

- (id)attachmentFromURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v4 = +[NSMutableDictionary dictionary];
    v5 = off_1009726B8();

    if (v5)
    {
      v6 = off_1009726B8();
      [v4 setObject:kUTTypePNG forKey:v6];
    }

    v7 = off_1009726C0();

    if (v7)
    {
      v8 = [NSNumber numberWithBool:1];
      v9 = off_1009726C0();
      [v4 setObject:v8 forKey:v9];
    }

    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v10 = qword_10098A128;
    v19 = qword_10098A128;
    if (!qword_10098A128)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1001C54A0;
      v15[3] = &unk_1008CDA20;
      v15[4] = &v16;
      sub_1001C54A0(v15);
      v10 = v17[3];
    }

    v11 = v10;
    _Block_object_dispose(&v16, 8);
    v12 = [v4 copy];
    v13 = [v10 attachmentWithIdentifier:&stru_1008EFBD0 URL:lCopy options:v12 error:0];

    if (!v13 && dword_100972630 <= 90 && (dword_100972630 != -1 || _LogCategory_Initialize()))
    {
      sub_1001C6DE4();
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_tvHandleResponse:(id)response completion:(id)completion
{
  responseCopy = response;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1001C0C8C;
  v32[3] = &unk_1008D08E0;
  completionCopy = completion;
  v33 = completionCopy;
  v7 = objc_retainBlock(v32);
  if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    v30 = responseCopy;
    LogPrintF();
  }

  notification = [responseCopy notification];
  request = [notification request];
  identifier = [request identifier];

  if (identifier)
  {
    v11 = [[NSUUID alloc] initWithUUIDString:identifier];
    if (!v11)
    {
      if (dword_100972630 <= 90 && (dword_100972630 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_50;
    }

    actionIdentifier = [responseCopy actionIdentifier];
    v13 = off_1009726A0();
    v14 = actionIdentifier;
    v15 = v13;
    v16 = v15;
    if (v14 == v15)
    {
      v17 = 1;
    }

    else if ((v14 != 0) == (v15 == 0))
    {
      v17 = 0;
    }

    else
    {
      v17 = [v14 isEqual:v15];
    }

    actionIdentifier2 = [responseCopy actionIdentifier];
    v19 = off_1009726A8();
    v20 = actionIdentifier2;
    v21 = v19;
    v22 = v21;
    if (v20 == v21)
    {
      v23 = 1;
    }

    else if ((v20 != 0) == (v21 == 0))
    {
      v23 = 0;
    }

    else
    {
      v23 = [v20 isEqual:v21];
    }

    v24 = objc_alloc_init(SFDevice);
    [v24 setIdentifier:v11];
    if (v23)
    {
      if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      allKeys = [(NSMutableDictionary *)self->_autoFillRequests allKeys];
      v27 = [allKeys containsObject:identifier];

      if (v27)
      {
        [(SDNotificationManager *)self tvAutoFillRemove:v24];
      }

      else
      {
        allKeys2 = [(NSMutableDictionary *)self->_tvKeyboardRequests allKeys];
        v29 = [allKeys2 containsObject:identifier];

        if (v29)
        {
          [(SDNotificationManager *)self riServerRemove:v24];
        }

        else if (dword_100972630 <= 60 && (dword_100972630 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      goto LABEL_49;
    }

    if (v17)
    {
      if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      actionIdentifier3 = +[SDRemoteInteractionAgent sharedAgent];
      [actionIdentifier3 clientUserDidTapNotification:v11];
    }

    else
    {
      if (dword_100972630 > 90 || dword_100972630 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_49;
      }

      actionIdentifier3 = [responseCopy actionIdentifier];
      LogPrintF();
    }

LABEL_49:
LABEL_50:

    goto LABEL_51;
  }

  if (dword_100972630 <= 90 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_51:

  (v7[2])(v7);
}

- (void)riServerPostIfNeeded:(id)needed backgroundAction:(BOOL)action
{
  neededCopy = needed;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C0F0C;
  block[3] = &unk_1008CF940;
  block[4] = self;
  v10 = neededCopy;
  actionCopy = action;
  v8 = neededCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)riServerRemove:(id)remove
{
  removeCopy = remove;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C1028;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = removeCopy;
  v6 = removeCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)riServerRemoveAll
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C10A8;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_riServerRemoveAll
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100972630 <= 10 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    sub_1001C6E84();
  }

  [(UNUserNotificationCenter *)self->_tvNotifCenter removeAllDeliveredNotifications];
  tvKeyboardRequests = self->_tvKeyboardRequests;

  [(NSMutableDictionary *)tvKeyboardRequests removeAllObjects];
}

- (void)riServerUpdate:(id)update info:(id)info
{
  updateCopy = update;
  infoCopy = info;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C11EC;
  block[3] = &unk_1008CE900;
  block[4] = self;
  v12 = updateCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = updateCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)riServerUpdate:(id)update rtiData:(id)data
{
  updateCopy = update;
  dataCopy = data;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C1384;
  block[3] = &unk_1008CE900;
  block[4] = self;
  v12 = updateCopy;
  v13 = dataCopy;
  v9 = dataCopy;
  v10 = updateCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_riServerUpdate:(id)update rtiData:(id)data
{
  dataCopy = data;
  updateCopy = update;
  v8 = [(SDNotificationManager *)self riServerContentForDevice:updateCopy backgroundAction:0];
  v9 = [v8 mutableCopy];

  identifier = [updateCopy identifier];

  uUIDString = [identifier UUIDString];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v12 = 0;
  v13 = -6705;
  if (identifier && uUIDString)
  {
    if (v9)
    {
      v12 = [(NSMutableDictionary *)self->_tvKeyboardRequests objectForKeyedSubscript:uUIDString];

      if (v12)
      {
        v12 = SFRTIDataPayloadForData();
        if (v12)
        {
          v14 = sub_1001C17D0();
          data = [v12 data];
          v16 = [v14 payloadWithData:data version:{objc_msgSend(v12, "version")}];

          if (v16)
          {
            if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
            {
              sub_1001C6F48();
            }

            documentTraits = [v16 documentTraits];
            prompt = [documentTraits prompt];

            documentTraits2 = [v16 documentTraits];
            title = [documentTraits2 title];

            if (prompt)
            {
              [v9 setBody:prompt];
              if (title)
              {
LABEL_12:
                [v9 setSubtitle:title];
                goto LABEL_15;
              }
            }

            else
            {
              v21 = SFLocalizedStringForKey();
              [v9 setBody:v21];

              if (title)
              {
                goto LABEL_12;
              }
            }

            v22 = SFLocalizedStringForKey();
            [v9 setSubtitle:v22];

LABEL_15:
            if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
            {
              v28 = prompt;
              v29 = title;
              v27 = uUIDString;
              LogPrintF();
            }

            tvNotifCenter = self->_tvNotifCenter;
            v30[0] = _NSConcreteStackBlock;
            v30[1] = 3221225472;
            v30[2] = sub_1001C18B0;
            v30[3] = &unk_1008CDF90;
            v30[4] = uUIDString;
            [(UNUserNotificationCenter *)tvNotifCenter replaceContentForRequestWithIdentifier:uUIDString replacementContent:v9 completionHandler:v30, v27, v28, v29];
LABEL_20:

            goto LABEL_21;
          }

          v13 = -6733;
        }

        else
        {
          v13 = -6742;
        }
      }

      else
      {
        v13 = -6727;
      }
    }

    else
    {
      v12 = 0;
      v13 = -6737;
    }
  }

  if (dword_100972630 <= 60 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    v24 = v13;
    v31 = NSLocalizedDescriptionKey;
    v25 = [NSString stringWithUTF8String:DebugGetErrorString()];
    v16 = v25;
    v26 = @"?";
    if (v25)
    {
      v26 = v25;
    }

    v32 = v26;
    prompt = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    title = [NSError errorWithDomain:NSOSStatusErrorDomain code:v24 userInfo:prompt];
    LogPrintF();
    goto LABEL_20;
  }

LABEL_21:
}

- (void)tvAutoFillPostIfNeeded:(id)needed
{
  neededCopy = needed;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C1A0C;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = neededCopy;
  v6 = neededCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)tvAutoFillRemove:(id)remove
{
  removeCopy = remove;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C1CA8;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = removeCopy;
  v6 = removeCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)tvAutoFillRemoveAll
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C1D28;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)watchKeyboardPostIfNeeded:(id)needed
{
  neededCopy = needed;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C1DC8;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = neededCopy;
  v6 = neededCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)watchKeyboardRemove:(id)remove
{
  removeCopy = remove;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C1EE0;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = removeCopy;
  v6 = removeCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)watchKeyboardRemoveAll
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C1F60;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_watchKeyboardRemoveAll
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100972630 <= 10 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    sub_1001C7090();
  }

  [(UNUserNotificationCenter *)self->_watchNotifCenter removeAllDeliveredNotifications];
  watchKeyboardRequests = self->_watchKeyboardRequests;

  [(NSMutableDictionary *)watchKeyboardRequests removeAllObjects];
}

- (void)watchKeyboardUpdate:(id)update info:(id)info
{
  updateCopy = update;
  infoCopy = info;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C20A4;
  block[3] = &unk_1008CE900;
  block[4] = self;
  v12 = updateCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = updateCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)watchKeyboardUpdate:(id)update rtiData:(id)data
{
  updateCopy = update;
  dataCopy = data;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C223C;
  block[3] = &unk_1008CE900;
  block[4] = self;
  v12 = updateCopy;
  v13 = dataCopy;
  v9 = dataCopy;
  v10 = updateCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_watchKeyboardUpdate:(id)update rtiData:(id)data
{
  dataCopy = data;
  updateCopy = update;
  v8 = [(SDNotificationManager *)self watchKeyboardContentForDevice:updateCopy];
  v9 = [v8 mutableCopy];

  identifier = [updateCopy identifier];

  uUIDString = [identifier UUIDString];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v12 = 0;
  v13 = -6705;
  if (identifier && uUIDString)
  {
    if (v9)
    {
      v12 = [(NSMutableDictionary *)self->_watchKeyboardRequests objectForKeyedSubscript:uUIDString];

      if (v12)
      {
        v12 = SFRTIDataPayloadForData();
        if (v12)
        {
          v14 = sub_1001C17D0();
          data = [v12 data];
          v16 = [v14 payloadWithData:data version:{objc_msgSend(v12, "version")}];

          if (v16)
          {
            if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
            {
              sub_1001C7154();
            }

            documentTraits = [v16 documentTraits];
            prompt = [documentTraits prompt];

            documentTraits2 = [v16 documentTraits];
            title = [documentTraits2 title];

            if (prompt)
            {
              [v9 setBody:prompt];
              if (title)
              {
LABEL_12:
                [v9 setSubtitle:title];
                goto LABEL_15;
              }
            }

            else
            {
              v21 = SFLocalizedStringForKey();
              [v9 setBody:v21];

              if (title)
              {
                goto LABEL_12;
              }
            }

            v22 = SFLocalizedStringForKey();
            [v9 setSubtitle:v22];

LABEL_15:
            if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
            {
              v28 = prompt;
              v29 = title;
              v27 = uUIDString;
              LogPrintF();
            }

            watchNotifCenter = self->_watchNotifCenter;
            v30[0] = _NSConcreteStackBlock;
            v30[1] = 3221225472;
            v30[2] = sub_1001C2684;
            v30[3] = &unk_1008CDF90;
            v30[4] = uUIDString;
            [(UNUserNotificationCenter *)watchNotifCenter replaceContentForRequestWithIdentifier:uUIDString replacementContent:v9 completionHandler:v30, v27, v28, v29];
LABEL_20:

            goto LABEL_21;
          }

          v13 = -6733;
        }

        else
        {
          v13 = -6742;
        }
      }

      else
      {
        v13 = -6727;
      }
    }

    else
    {
      v12 = 0;
      v13 = -6737;
    }
  }

  if (dword_100972630 <= 60 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    v24 = v13;
    v31 = NSLocalizedDescriptionKey;
    v25 = [NSString stringWithUTF8String:DebugGetErrorString()];
    v16 = v25;
    v26 = @"?";
    if (v25)
    {
      v26 = v25;
    }

    v32 = v26;
    prompt = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    title = [NSError errorWithDomain:NSOSStatusErrorDomain code:v24 userInfo:prompt];
    LogPrintF();
    goto LABEL_20;
  }

LABEL_21:
}

- (void)_watchHandleResponse:(id)response completion:(id)completion
{
  responseCopy = response;
  completionCopy = completion;
  if (dword_100972630 > 30 || dword_100972630 == -1 && !_LogCategory_Initialize())
  {
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_1001C7218();
  if (completionCopy)
  {
LABEL_5:
    completionCopy[2](completionCopy);
  }

LABEL_6:
}

- (id)homePodHandoffContentForDevice:(id)device info:(id)info
{
  deviceCopy = device;
  infoCopy = info;
  notificationType = [infoCopy notificationType];
  if (notificationType == 2)
  {
    body = [infoCopy body];
    v13 = body;
    if (body)
    {
      v14 = body;
    }

    else
    {
      v14 = SFLocalizedStringForKey();
    }

    v16 = v14;

    title = [infoCopy title];
    if (!title)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (notificationType == 3)
  {
    body2 = [infoCopy body];
    v10 = body2;
    if (body2)
    {
      v11 = body2;
    }

    else
    {
      v11 = SFLocalizedStringForKey();
    }

    v16 = v11;

    title = [infoCopy title];
    if (!title)
    {
LABEL_17:
      v18 = SFLocalizedStringForKey();
      goto LABEL_18;
    }

LABEL_16:
    v18 = title;
    title = v18;
LABEL_18:
    v19 = v18;

    header = [infoCopy header];
    v21 = header;
    if (header)
    {
      v22 = header;
    }

    else
    {
      v22 = SFLocalizedStringForKey();
    }

    v23 = v22;

    v24 = +[NSUUID UUID];
    uUIDString = [v24 UUIDString];

    v26 = objc_alloc_init(sub_1001C0CA4());
    [v26 setBody:v16];
    [v26 setCategoryIdentifier:@"HomePodHandoffCategory"];
    if ([infoCopy homePodType] == 2)
    {
      [v26 setCategoryIdentifier:@"60909dfe8f8c461e619cf5ffef54b503"];
      v27 = @"homepodmini.fill";
    }

    else
    {
      v27 = @"homepod.fill";
    }

    v28 = [UNNotificationIcon iconForSystemImageNamed:v27];
    [v26 setIcon:v28];

    [v26 setTitle:v23];
    [v26 setShouldBackgroundDefaultAction:1];
    [v26 setShouldHideTime:1];
    [v26 setShouldHideDate:1];
    [v26 setShouldIgnoreDoNotDisturb:1];
    [v26 setSound:0];
    [v26 setSubtitle:v19];
    v35[0] = @"deviceIdentifier";
    v35[1] = @"sessionID";
    v36[0] = deviceCopy;
    v36[1] = uUIDString;
    v29 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
    [v26 setUserInfo:v29];

    attachmentURL = [infoCopy attachmentURL];
    v31 = [(SDNotificationManager *)self attachmentFromURL:attachmentURL];

    if (v31)
    {
      v34 = v31;
      v32 = [NSArray arrayWithObjects:&v34 count:1];
      [v26 setAttachments:v32];
    }

    else if (dword_100972630 <= 90 && (dword_100972630 != -1 || _LogCategory_Initialize()))
    {
      sub_1001C7258();
    }

    v15 = v26;

    goto LABEL_30;
  }

  if (dword_100972630 <= 90 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    sub_1001C728C(infoCopy);
  }

  v15 = 0;
LABEL_30:

  return v15;
}

- (void)homePodHandoffPostIfNeeded:(id)needed info:(id)info
{
  neededCopy = needed;
  infoCopy = info;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C2C88;
  block[3] = &unk_1008CE900;
  block[4] = self;
  v12 = neededCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = neededCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_homePodHandoffPostIfNeeded:(id)needed info:(id)info
{
  neededCopy = needed;
  infoCopy = info;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v8 = [(SDNotificationManager *)self homePodHandoffContentForDevice:neededCopy info:infoCopy];
  if (v8)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001C2D88;
    v9[3] = &unk_1008CE158;
    v10 = infoCopy;
    v11 = neededCopy;
    selfCopy = self;
    v13 = v8;
    [(SDNotificationManager *)self _homePodEnsureStarted:1 completion:v9];
  }
}

- (void)homePodHandoffRemove:(id)remove reason:(int64_t)reason
{
  removeCopy = remove;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C2EDC;
  block[3] = &unk_1008CF8F0;
  block[4] = self;
  v10 = removeCopy;
  reasonCopy = reason;
  v8 = removeCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_homePodHandoffRemove:(id)remove reason:(int64_t)reason
{
  removeCopy = remove;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v7 = [(NSMutableDictionary *)self->_homePodRequests objectForKeyedSubscript:removeCopy];

  if (v7)
  {
    if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
    {
      sub_1001C7318(reason);
    }

    homePodNotifCenter = self->_homePodNotifCenter;
    v20 = removeCopy;
    v9 = [NSArray arrayWithObjects:&v20 count:1];
    [(UNUserNotificationCenter *)homePodNotifCenter removeDeliveredNotificationsWithIdentifiers:v9];

    v10 = self->_homePodNotifCenter;
    v19 = removeCopy;
    v11 = [NSArray arrayWithObjects:&v19 count:1];
    [(UNUserNotificationCenter *)v10 removePendingNotificationRequestsWithIdentifiers:v11];

    homePodMiniNotificationCenter = self->_homePodMiniNotificationCenter;
    v18 = removeCopy;
    v13 = [NSArray arrayWithObjects:&v18 count:1];
    [(UNUserNotificationCenter *)homePodMiniNotificationCenter removeDeliveredNotificationsWithIdentifiers:v13];

    v14 = self->_homePodMiniNotificationCenter;
    v17 = removeCopy;
    v15 = [NSArray arrayWithObjects:&v17 count:1];
    [(UNUserNotificationCenter *)v14 removePendingNotificationRequestsWithIdentifiers:v15];

    [(NSMutableDictionary *)self->_homePodRequests removeObjectForKey:removeCopy];
    v16 = +[SDProxHandoffAgent sharedAgent];
    [v16 notificationDidDismiss:removeCopy reason:reason];
  }
}

- (void)homePodHandoffUpdateIfNeeded:(id)needed info:(id)info
{
  neededCopy = needed;
  infoCopy = info;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C3178;
  block[3] = &unk_1008CE900;
  block[4] = self;
  v12 = neededCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = neededCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_homePodHandoffUpdateIfNeeded:(id)needed info:(id)info
{
  neededCopy = needed;
  infoCopy = info;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  homePodRequests = self->_homePodRequests;
  if (homePodRequests)
  {
    v9 = [(NSMutableDictionary *)homePodRequests objectForKeyedSubscript:neededCopy];

    if (v9)
    {
      v10 = [(SDNotificationManager *)self homePodHandoffContentForDevice:neededCopy info:infoCopy];
      if (v10)
      {
        v11 = self->_homePodNotifCenter;
        if ([infoCopy homePodType] == 2)
        {
          v12 = self->_homePodMiniNotificationCenter;

          v11 = v12;
        }

        if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_1001C3398;
        v13[3] = &unk_1008CDFB8;
        v14 = neededCopy;
        v15 = infoCopy;
        selfCopy = self;
        [(UNUserNotificationCenter *)v11 replaceContentForRequestWithIdentifier:v14 replacementContent:v10 completionHandler:v13];
      }

      else if (dword_100972630 <= 90 && (dword_100972630 != -1 || _LogCategory_Initialize()))
      {
        sub_1001C737C();
      }
    }

    else if (dword_100972630 <= 90 && (dword_100972630 != -1 || _LogCategory_Initialize()))
    {
      sub_1001C73BC();
    }
  }
}

- (void)_homePodHandleResponse:(id)response completion:(id)completion
{
  responseCopy = response;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1001C3984;
  v34[3] = &unk_1008D08E0;
  completionCopy = completion;
  v35 = completionCopy;
  v8 = objc_retainBlock(v34);
  if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    v32 = responseCopy;
    LogPrintF();
  }

  notification = [responseCopy notification];
  request = [notification request];
  identifier = [request identifier];

  if (identifier)
  {
    selfCopy = self;
    actionIdentifier = [responseCopy actionIdentifier];
    if (!actionIdentifier)
    {
      if (dword_100972630 > 90 || dword_100972630 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_49;
      }

      goto LABEL_15;
    }

    v13 = off_1009726A0();
    v14 = actionIdentifier;
    v15 = v13;
    v16 = v15;
    if (v14 == v15)
    {
      v17 = 1;
    }

    else if (v15)
    {
      v17 = [v14 isEqual:v15];
    }

    else
    {
      v17 = 0;
    }

    v18 = off_1009726A8();
    v19 = v14;
    v20 = v18;
    v21 = v20;
    if (v19 == v20)
    {
      v22 = 1;
    }

    else
    {
      if (!v20)
      {

        if (v17)
        {
LABEL_26:
          LOBYTE(v23) = 1;
LABEL_36:
          v26 = off_1009726C8();
          v27 = v19;
          v28 = v26;
          v29 = v28;
          if (v27 == v28)
          {
            v30 = 1;
          }

          else if (v28)
          {
            v30 = [v27 isEqual:v28];
          }

          else
          {
            v30 = 0;
          }

          if (v23)
          {
            goto LABEL_42;
          }

          if (v30)
          {
            goto LABEL_44;
          }

          if (dword_100972630 > 60 || dword_100972630 == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_49;
          }

LABEL_15:
          LogPrintF();
LABEL_49:

          goto LABEL_50;
        }

        v22 = 0;
LABEL_30:
        v24 = v19;
        v25 = v24;
        if (v24 == @"TRANSFER")
        {
          v23 = 1;
        }

        else
        {
          v23 = [(__CFString *)v24 isEqual:@"TRANSFER"];
        }

        if (v22)
        {
          if (v23)
          {
LABEL_42:
            v31 = +[SDProxHandoffAgent sharedAgent];
            [v31 userDidTapNotification:identifier];

            goto LABEL_49;
          }

LABEL_44:
          [(SDNotificationManager *)selfCopy homePodHandoffRemove:identifier reason:2];
          goto LABEL_49;
        }

        goto LABEL_36;
      }

      v22 = [v19 isEqual:v20];
    }

    if (v17)
    {
      if (v22)
      {
        goto LABEL_42;
      }

      goto LABEL_26;
    }

    goto LABEL_30;
  }

  if (dword_100972630 <= 90 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_50:

  (v8[2])(v8);
}

- (id)visionUnlockiOSUpsellContent
{
  v2 = SFLocalizedStringForKey();
  v3 = SFLocalizedStringForKey();
  v4 = objc_alloc_init(sub_1001C0CA4());
  [v4 setBody:v3];
  [v4 setCategoryIdentifier:@"9A6B4B018A5E46B389CAE9E2F8B84779"];
  [v4 setShouldHideTime:1];
  [v4 setShouldHideDate:1];
  [v4 setShouldBackgroundDefaultAction:1];
  [v4 setTitle:v2];
  v5 = [UNNotificationIcon iconForSystemImageNamed:@"lock.open.iphone"];
  [v4 setIcon:v5];

  return v4;
}

- (void)visionUnlockiOSUpsellPostIfNeeded
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C3AF8;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_visionUnlockiOSUpsellPostIfNeeded
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  visionUnlockiOSUpsellContent = [(SDNotificationManager *)self visionUnlockiOSUpsellContent];
  v4 = visionUnlockiOSUpsellContent;
  if (visionUnlockiOSUpsellContent)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001C3BA4;
    v5[3] = &unk_1008CE028;
    v5[4] = self;
    v5[5] = visionUnlockiOSUpsellContent;
    [(SDNotificationManager *)self _visionUnlockiOSEnsureStarted:1 completion:v5];
  }
}

- (void)visionUnlockiOSPostFailureNotificationWithMessage:(id)message userInfo:(id)info
{
  messageCopy = message;
  infoCopy = info;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C3C80;
  block[3] = &unk_1008CE900;
  block[4] = self;
  v12 = messageCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = messageCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_visionUnlockiOSPostFailureNotificationWithMessage:(id)message userInfo:(id)info
{
  messageCopy = message;
  infoCopy = info;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v8 = objc_alloc_init(sub_1001C0CA4());
  if (v8)
  {
    v9 = v8;
    v10 = objc_alloc_init(sub_1001C0CA4());

    [v10 setTitle:@"Failed to unlock iPhone with VisionOS"];
    [v10 setBody:messageCopy];
    [v10 setCategoryIdentifier:@"com.apple.SharingVisionUnlockiOSNotifications.Failure"];
    [v10 setShouldBackgroundDefaultAction:1];
    v11 = [UNNotificationIcon iconForSystemImageNamed:@"lock.open.iphone"];
    [v10 setIcon:v11];

    [v10 setUserInfo:infoCopy];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001C3DE8;
    v13[3] = &unk_1008CE028;
    v13[4] = self;
    v14 = v10;
    v12 = v10;
    [(SDNotificationManager *)self _visionUnlockiOSEnsureStarted:1 completion:v13];
  }
}

- (void)visionUnlockiOSRemoveAll
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C3EDC;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_visionUnlockiOSRemoveAll
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100972630 <= 40 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    sub_1001C74A4();
  }

  [(UNUserNotificationCenter *)self->_visionNotifCenter removeDeliveredNotificationsWithIdentifiers:&off_100910280];
  visionUnlockiOSRequests = self->_visionUnlockiOSRequests;

  [(NSMutableDictionary *)visionUnlockiOSRequests removeAllObjects];
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  centerCopy = center;
  responseCopy = response;
  handlerCopy = handler;
  homePodNotifCenter = self->_homePodNotifCenter;
  v12 = centerCopy;
  v13 = homePodNotifCenter;
  v14 = v13;
  if (v13 == v12)
  {
    goto LABEL_10;
  }

  if ((v12 != 0) != (v13 == 0))
  {
    v15 = [(UNUserNotificationCenter *)v12 isEqual:v13];

    if (v15)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  homePodMiniNotificationCenter = self->_homePodMiniNotificationCenter;
  v17 = v12;
  v18 = homePodMiniNotificationCenter;
  v14 = v18;
  if (v18 == v17)
  {
LABEL_10:

    goto LABEL_11;
  }

  if ((v12 != 0) == (v18 == 0))
  {

    goto LABEL_14;
  }

  v19 = [(UNUserNotificationCenter *)v17 isEqual:v18];

  if (v19)
  {
LABEL_11:
    v20 = _os_activity_create(&_mh_execute_header, "Sharing/SDNotificationManager/didReceiveNotificationResponse/homepod", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v20, &state);
    [(SDNotificationManager *)self _homePodHandleResponse:responseCopy completion:handlerCopy];
    os_activity_scope_leave(&state);

    goto LABEL_12;
  }

LABEL_14:
  tvNotifCenter = self->_tvNotifCenter;
  v22 = v17;
  v23 = tvNotifCenter;
  v24 = v23;
  if (v23 == v22)
  {

    goto LABEL_19;
  }

  if ((v12 != 0) == (v23 == 0))
  {

    goto LABEL_21;
  }

  v25 = [(UNUserNotificationCenter *)v22 isEqual:v23];

  if (v25)
  {
LABEL_19:
    v26 = _os_activity_create(&_mh_execute_header, "Sharing/SDNotificationManager/didReceiveNotificationResponse/tv", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v26, &state);
    [(SDNotificationManager *)self _tvHandleResponse:responseCopy completion:handlerCopy];
    os_activity_scope_leave(&state);

    goto LABEL_12;
  }

LABEL_21:
  watchNotifCenter = self->_watchNotifCenter;
  v28 = v22;
  v29 = watchNotifCenter;
  v30 = v29;
  if (v29 == v28)
  {

    goto LABEL_26;
  }

  if ((v12 != 0) == (v29 == 0))
  {

    goto LABEL_28;
  }

  v31 = [(UNUserNotificationCenter *)v28 isEqual:v29];

  if (v31)
  {
LABEL_26:
    v32 = _os_activity_create(&_mh_execute_header, "Sharing/SDNotificationManager/didReceiveNotificationResponse/watch", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v32, &state);
    [(SDNotificationManager *)self _watchHandleResponse:responseCopy completion:handlerCopy];
    os_activity_scope_leave(&state);

    goto LABEL_12;
  }

LABEL_28:
  visionNotifCenter = self->_visionNotifCenter;
  v34 = v28;
  v35 = visionNotifCenter;
  v36 = v35;
  if (v35 == v34)
  {
  }

  else
  {
    if ((v12 != 0) == (v35 == 0))
    {

LABEL_37:
      if (dword_100972630 <= 60)
      {
        if (dword_100972630 != -1 || _LogCategory_Initialize())
        {
          LogPrintF();
        }

        if (dword_100972630 <= 60 && (dword_100972630 != -1 || _LogCategory_Initialize()))
        {
          sub_1001C74C4(&v45, &v46);
        }
      }

      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy);
      }

      goto LABEL_12;
    }

    v37 = [(UNUserNotificationCenter *)v34 isEqual:v35];

    if (!v37)
    {
      goto LABEL_37;
    }
  }

  v38 = _os_activity_create(&_mh_execute_header, "Sharing/SDNotificationManager/didReceiveNotificationResponse/vision", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v38, &state);
  if (dword_100972630 <= 40 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];
  categoryIdentifier = [content categoryIdentifier];
  v43 = [categoryIdentifier isEqualToString:@"com.apple.SharingVisionUnlockiOSNotifications.Failure"];

  if (v43)
  {
    [(SDNotificationManager *)self _visionHandleFailureResponse:responseCopy completion:handlerCopy];
  }

  else
  {
    [(SDNotificationManager *)self _visionHandleResponse:responseCopy completion:handlerCopy];
  }

  os_activity_scope_leave(&state);

LABEL_12:
}

- (void)testPost:(id)post
{
  postCopy = post;
  v6 = postCopy;
  if (dword_100972630 <= 30)
  {
    if (dword_100972630 != -1 || (v5 = _LogCategory_Initialize(), postCopy = v6, v5))
    {
      sub_1001C75D0();
      postCopy = v6;
    }
  }

  if (!self->_activated)
  {
    [(SDNotificationManager *)self _activate];
    postCopy = v6;
  }

  if ([postCopy isEqual:@"-af"])
  {
    [(SDNotificationManager *)self testAutofillPost];
  }

  else if ([v6 isEqual:@"-afr"])
  {
    [(SDNotificationManager *)self testAutoFillRemove];
  }

  else if ([v6 isEqual:@"-ho"])
  {
    [(SDNotificationManager *)self testHandoffPost];
  }

  else if ([v6 isEqual:@"-kb"])
  {
    [(SDNotificationManager *)self testKeyboardPost];
  }

  else if ([v6 isEqual:@"-kba"])
  {
    [(SDNotificationManager *)self testKeyboardPostAutoFill];
  }

  else if ([v6 isEqual:@"-kbr"])
  {
    [(SDNotificationManager *)self testKeyboardRemove];
  }

  else if ([v6 isEqual:@"-kbu"])
  {
    [(SDNotificationManager *)self testKeyboardUpdate];
  }

  else if ([v6 isEqual:@"-wkb"])
  {
    [(SDNotificationManager *)self testWatchKeyboard];
  }

  else if ([v6 isEqual:@"-waf"])
  {
    [(SDNotificationManager *)self testWatchKeyboardAutoFill];
  }

  else
  {
    [(SDNotificationManager *)self testPostBasic];
  }
}

- (void)testPostBasic
{
  v5 = objc_alloc_init(sub_1001C0CA4());
  [v5 setBody:@"This is a test user notification"];
  [v5 setCategoryIdentifier:@"continuityRemoteCategory"];
  [v5 setSubtitle:@"Example Subtitle"];
  [v5 setTitle:@"Notification Title"];
  if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    sub_1001C75EC();
  }

  v3 = +[NSUUID UUID];
  uUIDString = [v3 UUIDString];
  [(SDNotificationManager *)self _addRequestWithID:uUIDString content:v5 type:5];
}

- (void)testAutofillPost
{
  v4 = objc_alloc_init(SFDevice);
  v3 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  [v4 setIdentifier:v3];

  if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    sub_1001C7608();
  }

  [(SDNotificationManager *)self tvAutoFillPostIfNeeded:v4];
}

- (void)testAutoFillRemove
{
  v4 = objc_alloc_init(SFDevice);
  v3 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  [v4 setIdentifier:v3];

  if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    sub_1001C7624();
  }

  [(SDNotificationManager *)self tvAutoFillRemove:v4];
}

- (void)testHandoffPost
{
  v3 = SFDeviceClassCodeGet() - 1;
  if (v3 <= 2)
  {
    v4 = off_1008D3460[v3];
  }

  v9 = SFLocalizedStringForKey();
  v5 = [NSString stringWithFormat:@"John Appleseed"];
  v6 = objc_alloc_init(SFNotificationInfo);
  [v6 setNotificationType:3];
  [v6 setBody:v5];
  v7 = SFHomePodDisplayNameForDeviceName();
  [v6 setHeader:v7];

  v8 = SFLocalizedStringForKey();
  [v6 setTitle:v8];

  if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    sub_1001C7640();
  }

  [(SDNotificationManager *)self homePodHandoffPostIfNeeded:@"00000000-0000-0000-0000-000000000000" info:v6];
}

- (void)testKeyboardPost
{
  v4 = objc_alloc_init(SFDevice);
  v3 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  [v4 setIdentifier:v3];

  if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    sub_1001C765C();
  }

  [(SDNotificationManager *)self riServerPostIfNeeded:v4 backgroundAction:0];
}

- (void)testKeyboardPostAutoFill
{
  v4 = objc_alloc_init(SFDevice);
  v3 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  [v4 setIdentifier:v3];

  [v4 setDeviceActionType:19];
  if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    sub_1001C7678();
  }

  [(SDNotificationManager *)self riServerPostIfNeeded:v4 backgroundAction:0];
}

- (void)testKeyboardRemove
{
  v4 = objc_alloc_init(SFDevice);
  v3 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  [v4 setIdentifier:v3];

  if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    sub_1001C7694();
  }

  [(SDNotificationManager *)self riServerRemove:v4];
}

- (void)testKeyboardUpdate
{
  v5 = objc_alloc_init(SFDevice);
  v3 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  [v5 setIdentifier:v3];

  v4 = objc_alloc_init(SFRemoteTextSessionInfo);
  [v4 setPrompt:@"Updated prompt"];
  [v4 setTitle:@"Updated Title"];
  [(SDNotificationManager *)self riServerUpdate:v5 info:v4];
}

- (void)testWatchKeyboard
{
  v4 = objc_alloc_init(SFDevice);
  v3 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  [v4 setIdentifier:v3];

  if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    sub_1001C76B0();
  }

  [(SDNotificationManager *)self watchKeyboardPostIfNeeded:v4];
}

- (void)testWatchKeyboardAutoFill
{
  v4 = objc_alloc_init(SFDevice);
  v3 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  [v4 setIdentifier:v3];

  [v4 setDeviceActionType:19];
  if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
  {
    sub_1001C76CC();
  }

  [(SDNotificationManager *)self watchKeyboardPostIfNeeded:v4];
}

- (id)riServerContentForDevice:(id)device backgroundAction:(BOOL)action
{
  actionCopy = action;
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  uUIDString = [identifier UUIDString];
  v9 = uUIDString;
  v10 = 0;
  v11 = 0;
  uUIDString2 = 0;
  v13 = 0;
  if (identifier && uUIDString)
  {
    v14 = +[NSUUID UUID];
    uUIDString2 = [v14 UUIDString];

    deviceActionType = [deviceCopy deviceActionType];
    v16 = @"REMOTE_BULLETIN_MESSAGE";
    if (deviceActionType == 19)
    {
      v16 = @"REMOTE_BULLETIN_MESSAGE_AUTOFILL";
      v17 = @"REMOTE_BULLETIN_SUBTITLE_AUTOFILL";
    }

    else
    {
      v17 = @"REMOTE_BULLETIN_SUBTITLE";
    }

    v11 = v16;
    v13 = v17;
    v10 = objc_alloc_init(sub_1001C0CA4());
    SFLocalizedStringForKey();
    objc_claimAutoreleasedReturnValue();
    [sub_10002FCC0() setBody:?];

    [v10 setCategoryIdentifier:@"continuityRemoteCategory"];
    [sub_1001C5830() setShouldHideTime:?];
    [sub_1001C5830() setShouldHideDate:?];
    [sub_1001C5830() setShouldIgnoreDoNotDisturb:?];
    [sub_1001C0D84() soundWithAlertType:23];
    objc_claimAutoreleasedReturnValue();
    [sub_10002FCC0() setSound:?];

    SFLocalizedStringForKey();
    objc_claimAutoreleasedReturnValue();
    [sub_10002FCC0() setSubtitle:?];

    v21[0] = @"deviceIdentifier";
    v21[1] = @"sessionID";
    v22[0] = v9;
    v22[1] = uUIDString2;
    [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
    objc_claimAutoreleasedReturnValue();
    [sub_10002FCC0() setUserInfo:?];

    v18 = sub_1001C5830();
    if (actionCopy)
    {
      [v18 setShouldBackgroundDefaultAction:?];
    }

    else
    {
      [v18 setShouldSuppressDefaultAction:?];
    }
  }

  v19 = v10;

  return v10;
}

- (void)_riServerRemove:(id)remove
{
  identifier = [remove identifier];
  [identifier UUIDString];
  objc_claimAutoreleasedReturnValue();
  sub_1001C5888();
  if (identifier)
  {
    if (v3)
    {
      v7 = [(NSMutableDictionary *)self->_tvKeyboardRequests objectForKeyedSubscript:v3];

      if (v7)
      {
        if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
        {
          v10 = v3;
          LogPrintF();
        }

        tvNotifCenter = self->_tvNotifCenter;
        v11 = v3;
        v9 = [NSArray arrayWithObjects:&v11 count:1, v10];
        sub_1001C5814(v9);

        [(NSMutableDictionary *)self->_tvKeyboardRequests removeObjectForKey:v3];
      }
    }
  }
}

- (void)_riServerUpdate:(id)update info:(id)info
{
  infoCopy = info;
  updateCopy = update;
  v10 = [sub_1001C5854() riServerContentForDevice:? backgroundAction:?];
  v11 = [v10 mutableCopy];

  identifier = [v4 identifier];

  uUIDString = [identifier UUIDString];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_tvNotifCenter && identifier && uUIDString && v11)
  {
    v14 = [(NSMutableDictionary *)self->_tvKeyboardRequests objectForKeyedSubscript:uUIDString];

    if (v14)
    {
      prompt = [infoCopy prompt];
      if (prompt)
      {
        [sub_1001C583C() setBody:?];
      }

      else
      {
        SFLocalizedStringForKey();
        objc_claimAutoreleasedReturnValue();
        [sub_1001C57E4() setBody:?];
      }

      title = [infoCopy title];
      if (title)
      {
        [sub_1001C583C() setSubtitle:?];
      }

      else
      {
        SFLocalizedStringForKey();
        objc_claimAutoreleasedReturnValue();
        [sub_1001C57E4() setSubtitle:?];
      }

      if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
      {
        prompt2 = [infoCopy prompt];
        [infoCopy title];
        v29 = v28 = prompt2;
        v27 = uUIDString;
        LogPrintF();
      }

      tvNotifCenter = self->_tvNotifCenter;
      sub_100035DFC();
      sub_1001C5868(v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, 3221225472, sub_1001C11FC, &unk_1008CDF90, v31);
    }

    else if (dword_100972630 <= 60 && (dword_100972630 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }
}

- (void)_tvAutoFillPostIfNeeded:(id)needed
{
  identifier = [needed identifier];
  [identifier UUIDString];
  objc_claimAutoreleasedReturnValue();
  sub_1001C5888();
  if (identifier && v3)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001C1A18;
    v6[3] = &unk_1008CE028;
    v6[4] = v3;
    v6[5] = self;
    [(SDNotificationManager *)self _riServerEnsureStarted:1 completion:v6];
  }
}

- (void)_tvAutoFillRemove:(id)remove
{
  identifier = [remove identifier];
  [identifier UUIDString];
  objc_claimAutoreleasedReturnValue();
  sub_1001C5888();
  if (identifier)
  {
    if (v3)
    {
      v7 = [(NSMutableDictionary *)self->_autoFillRequests objectForKeyedSubscript:v3];

      if (v7)
      {
        if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
        {
          v10 = v3;
          LogPrintF();
        }

        tvNotifCenter = self->_tvNotifCenter;
        v11 = v3;
        v9 = [NSArray arrayWithObjects:&v11 count:1, v10];
        sub_1001C5814(v9);

        [(NSMutableDictionary *)self->_autoFillRequests removeObjectForKey:v3];
      }
    }
  }
}

- (void)_tvAutoFillRemoveAll
{
  if (self->_tvNotifCenter)
  {
    dispatch_assert_queue_V2(self->_dispatchQueue);
    if (dword_100972630 <= 10 && (dword_100972630 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(UNUserNotificationCenter *)self->_tvNotifCenter removeAllDeliveredNotifications];
    autoFillRequests = self->_autoFillRequests;

    [(NSMutableDictionary *)autoFillRequests removeAllObjects];
  }
}

- (id)watchKeyboardContentForDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  uUIDString = [identifier UUIDString];
  v7 = uUIDString;
  v8 = 0;
  v9 = 0;
  uUIDString2 = 0;
  v11 = 0;
  if (identifier && uUIDString)
  {
    v12 = +[NSUUID UUID];
    uUIDString2 = [v12 UUIDString];

    deviceActionType = [deviceCopy deviceActionType];
    v14 = @"WATCH_KEYBOARD_MESSAGE";
    if (deviceActionType == 19)
    {
      v14 = @"WATCH_KEYBOARD_MESSAGE_AUTOFILL";
      v15 = @"WATCH_KEYBOARD_SUBTITLE_AUTOFILL";
    }

    else
    {
      v15 = @"WATCH_KEYBOARD_SUBTITLE";
    }

    v9 = v14;
    v11 = v15;
    v8 = objc_alloc_init(sub_1001C0CA4());
    SFLocalizedStringForKey();
    objc_claimAutoreleasedReturnValue();
    [sub_100019E30() setBody:?];

    [v8 setCategoryIdentifier:@"continuityRemoteCategory"];
    [sub_1001C5848() setShouldHideTime:?];
    [sub_1001C5848() setShouldHideDate:?];
    [sub_1001C5848() setShouldSuppressDefaultAction:?];
    [sub_1001C5848() setShouldIgnoreDoNotDisturb:?];
    [sub_1001C0D84() soundWithAlertType:23];
    objc_claimAutoreleasedReturnValue();
    [sub_100019E30() setSound:?];

    SFLocalizedStringForKey();
    objc_claimAutoreleasedReturnValue();
    [sub_100019E30() setSubtitle:?];

    v18[0] = @"deviceIdentifier";
    v18[1] = @"sessionID";
    v19[0] = v7;
    v19[1] = uUIDString2;
    [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
    objc_claimAutoreleasedReturnValue();
    [sub_100019E30() setUserInfo:?];

    if (SFDeviceClassCodeGet() == 1)
    {
      [UNNotificationIcon iconForApplicationIdentifier:@"com.apple.Bridge"];
      objc_claimAutoreleasedReturnValue();
      [sub_100019E30() setIcon:?];
    }
  }

  v16 = v8;

  return v8;
}

- (void)_watchKeyboardPostIfNeeded:(id)needed
{
  neededCopy = needed;
  identifier = [neededCopy identifier];
  uUIDString = [identifier UUIDString];

  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (uUIDString)
  {
    v7 = [(SDNotificationManager *)self watchKeyboardContentForDevice:neededCopy];
    if (v7)
    {
      sub_100021EF0();
      v9[0] = v8;
      v9[1] = 3221225472;
      v9[2] = sub_1001C1DD4;
      v9[3] = &unk_1008CE900;
      v9[4] = uUIDString;
      v9[5] = self;
      v9[6] = v7;
      [(SDNotificationManager *)self _watchEnsureStarted:1 completion:v9];
    }
  }
}

- (void)_watchKeyboardRemove:(id)remove
{
  identifier = [remove identifier];
  [identifier UUIDString];
  objc_claimAutoreleasedReturnValue();
  sub_1001C5888();
  if (identifier)
  {
    if (v3)
    {
      v7 = [(NSMutableDictionary *)self->_watchKeyboardRequests objectForKeyedSubscript:v3];

      if (v7)
      {
        if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
        {
          v10 = v3;
          LogPrintF();
        }

        watchNotifCenter = self->_watchNotifCenter;
        v11 = v3;
        v9 = [NSArray arrayWithObjects:&v11 count:1, v10];
        sub_1001C5814(v9);

        [(NSMutableDictionary *)self->_watchKeyboardRequests removeObjectForKey:v3];
      }
    }
  }
}

- (void)_watchKeyboardUpdate:(id)update info:(id)info
{
  infoCopy = info;
  updateCopy = update;
  v10 = [sub_1001C5854() riServerContentForDevice:? backgroundAction:?];
  v11 = [v10 mutableCopy];

  identifier = [v4 identifier];

  uUIDString = [identifier UUIDString];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_watchNotifCenter && identifier && uUIDString && v11)
  {
    v14 = [(NSMutableDictionary *)self->_watchKeyboardRequests objectForKeyedSubscript:uUIDString];

    if (v14)
    {
      prompt = [infoCopy prompt];
      if (prompt)
      {
        [sub_1001C583C() setBody:?];
      }

      else
      {
        SFLocalizedStringForKey();
        objc_claimAutoreleasedReturnValue();
        [sub_1001C57E4() setBody:?];
      }

      title = [infoCopy title];
      if (title)
      {
        [sub_1001C583C() setSubtitle:?];
      }

      else
      {
        SFLocalizedStringForKey();
        objc_claimAutoreleasedReturnValue();
        [sub_1001C57E4() setSubtitle:?];
      }

      if (dword_100972630 <= 30 && (dword_100972630 != -1 || _LogCategory_Initialize()))
      {
        prompt2 = [infoCopy prompt];
        [infoCopy title];
        v29 = v28 = prompt2;
        v27 = uUIDString;
        LogPrintF();
      }

      watchNotifCenter = self->_watchNotifCenter;
      sub_100035DFC();
      sub_1001C5868(v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, 3221225472, sub_1001C20B4, &unk_1008CDF90, v31);
    }

    else if (dword_100972630 <= 60 && (dword_100972630 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }
}

@end