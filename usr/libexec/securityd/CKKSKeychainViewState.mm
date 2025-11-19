@interface CKKSKeychainViewState
- (BOOL)isEqual:(id)a3;
- (CKKSKeychainViewState)initWithZoneID:(id)a3 forContextID:(id)a4 ckksManagedView:(BOOL)a5 priorityView:(BOOL)a6 notifyViewChangedScheduler:(id)a7 notifyViewReadyScheduler:(id)a8;
- (NSDictionary)keyHierarchyConditions;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)armReadyNotification;
- (void)launchComplete;
- (void)setViewKeyHierarchyState:(id)a3;
@end

@implementation CKKSKeychainViewState

- (unint64_t)hash
{
  v3 = [(CKKSKeychainViewState *)self zoneName];
  v4 = [v3 hash];
  v5 = [(CKKSKeychainViewState *)self contextID];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (void)armReadyNotification
{
  v3 = [(CKKSKeychainViewState *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D55A8;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)launchComplete
{
  v3 = [(CKKSKeychainViewState *)self launch];
  [v3 launch];

  v4 = [(CKKSKeychainViewState *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D5654;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(v4, block);
}

- (NSDictionary)keyHierarchyConditions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1001D57E8;
  v11 = sub_1001D57F8;
  v12 = 0;
  v3 = [(CKKSKeychainViewState *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001D5800;
  v6[3] = &unk_100344E90;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setViewKeyHierarchyState:(id)a3
{
  v5 = a3;
  v6 = [(CKKSKeychainViewState *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D5920;
  block[3] = &unk_100345100;
  v9 = v5;
  v10 = self;
  v11 = a2;
  v7 = v5;
  dispatch_sync(v6, block);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CKKSKeychainViewState *)self zoneName];
    v7 = [v5 zoneName];
    if ([v6 isEqualToString:v7] && (v8 = -[CKKSKeychainViewState ckksManagedView](self, "ckksManagedView"), v8 == objc_msgSend(v5, "ckksManagedView")))
    {
      v10 = [(CKKSKeychainViewState *)self viewKeyHierarchyState];
      v11 = [v5 viewKeyHierarchyState];
      if ([v10 isEqualToString:v11])
      {
        v12 = [(CKKSKeychainViewState *)self contextID];
        v13 = [v5 contextID];
        v9 = [v12 isEqualToString:v13];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CKKSKeychainViewState alloc];
  v5 = [(CKKSKeychainViewState *)self zoneID];
  v6 = [(CKKSKeychainViewState *)self contextID];
  v7 = [(CKKSKeychainViewState *)self ckksManagedView];
  v8 = [(CKKSKeychainViewState *)self priorityView];
  v9 = [(CKKSKeychainViewState *)self notifyViewReadyScheduler];
  v10 = [(CKKSKeychainViewState *)self notifyViewReadyScheduler];
  v11 = [(CKKSKeychainViewState *)v4 initWithZoneID:v5 forContextID:v6 ckksManagedView:v7 priorityView:v8 notifyViewChangedScheduler:v9 notifyViewReadyScheduler:v10];

  v12 = [(CKKSKeychainViewState *)self viewKeyHierarchyState];
  [(CKKSKeychainViewState *)v11 setViewKeyHierarchyState:v12];

  return v11;
}

- (id)description
{
  v3 = [(CKKSKeychainViewState *)self contextID];
  v4 = [(CKKSKeychainViewState *)self zoneName];
  if ([(CKKSKeychainViewState *)self ckksManagedView])
  {
    v5 = @"ckks";
  }

  else
  {
    v5 = @"ext";
  }

  v6 = [(CKKSKeychainViewState *)self viewKeyHierarchyState];
  v7 = [NSString stringWithFormat:@"<CKKSKeychainViewState(%@): %@(%@), %@>", v3, v4, v5, v6];

  return v7;
}

- (CKKSKeychainViewState)initWithZoneID:(id)a3 forContextID:(id)a4 ckksManagedView:(BOOL)a5 priorityView:(BOOL)a6 notifyViewChangedScheduler:(id)a7 notifyViewReadyScheduler:(id)a8
{
  v15 = a3;
  v34 = a4;
  v16 = a7;
  v17 = a8;
  v37.receiver = self;
  v37.super_class = CKKSKeychainViewState;
  v18 = [(CKKSKeychainViewState *)&v37 init];
  if (v18)
  {
    v19 = [v15 zoneName];
    zoneName = v18->_zoneName;
    v18->_zoneName = v19;

    objc_storeStrong(&v18->_zoneID, a3);
    objc_storeStrong(&v18->_contextID, a4);
    v18->_priorityView = a6;
    v18->_ckksManagedView = a5;
    v21 = dispatch_queue_create("key-state", 0);
    queue = v18->_queue;
    v18->_queue = v21;

    v23 = objc_alloc_init(NSOperationQueue);
    operationQueue = v18->_operationQueue;
    v18->_operationQueue = v23;

    objc_storeStrong(&v18->_notifyViewChangedScheduler, a7);
    objc_storeStrong(&v18->_notifyViewReadyScheduler, a8);
    if (qword_10039DEA8 != -1)
    {
      dispatch_once(&qword_10039DEA8, &stru_100337208);
    }

    objc_storeStrong(&v18->_allowableStates, qword_10039DEA0);
    v25 = objc_alloc_init(NSMutableDictionary);
    mutableStateConditions = v18->_mutableStateConditions;
    v18->_mutableStateConditions = v25;

    allowableStates = v18->_allowableStates;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1001D6118;
    v35[3] = &unk_1003444C0;
    v28 = v18;
    v36 = v28;
    [(NSSet *)allowableStates enumerateObjectsUsingBlock:v35];
    [(CKKSKeychainViewState *)v28 setViewKeyHierarchyState:@"initializing"];
    v29 = [[SecLaunchSequence alloc] initWithRocketName:@"com.apple.security.ckks.launch"];
    launch = v28->_launch;
    v28->_launch = v29;

    v31 = v28->_launch;
    v32 = [v15 zoneName];
    [(SecLaunchSequence *)v31 addAttribute:@"view" value:v32];

    v28->_readyNotificationArmed = 0;
  }

  return v18;
}

@end