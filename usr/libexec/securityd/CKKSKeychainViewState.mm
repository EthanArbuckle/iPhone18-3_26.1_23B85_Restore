@interface CKKSKeychainViewState
- (BOOL)isEqual:(id)equal;
- (CKKSKeychainViewState)initWithZoneID:(id)d forContextID:(id)iD ckksManagedView:(BOOL)view priorityView:(BOOL)priorityView notifyViewChangedScheduler:(id)scheduler notifyViewReadyScheduler:(id)readyScheduler;
- (NSDictionary)keyHierarchyConditions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)armReadyNotification;
- (void)launchComplete;
- (void)setViewKeyHierarchyState:(id)state;
@end

@implementation CKKSKeychainViewState

- (unint64_t)hash
{
  zoneName = [(CKKSKeychainViewState *)self zoneName];
  v4 = [zoneName hash];
  contextID = [(CKKSKeychainViewState *)self contextID];
  v6 = [contextID hash];

  return v6 ^ v4;
}

- (void)armReadyNotification
{
  queue = [(CKKSKeychainViewState *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D55A8;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)launchComplete
{
  launch = [(CKKSKeychainViewState *)self launch];
  [launch launch];

  queue = [(CKKSKeychainViewState *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D5654;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (NSDictionary)keyHierarchyConditions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1001D57E8;
  v11 = sub_1001D57F8;
  v12 = 0;
  queue = [(CKKSKeychainViewState *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001D5800;
  v6[3] = &unk_100344E90;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setViewKeyHierarchyState:(id)state
{
  stateCopy = state;
  queue = [(CKKSKeychainViewState *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D5920;
  block[3] = &unk_100345100;
  v9 = stateCopy;
  selfCopy = self;
  v11 = a2;
  v7 = stateCopy;
  dispatch_sync(queue, block);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    zoneName = [(CKKSKeychainViewState *)self zoneName];
    zoneName2 = [v5 zoneName];
    if ([zoneName isEqualToString:zoneName2] && (v8 = -[CKKSKeychainViewState ckksManagedView](self, "ckksManagedView"), v8 == objc_msgSend(v5, "ckksManagedView")))
    {
      viewKeyHierarchyState = [(CKKSKeychainViewState *)self viewKeyHierarchyState];
      viewKeyHierarchyState2 = [v5 viewKeyHierarchyState];
      if ([viewKeyHierarchyState isEqualToString:viewKeyHierarchyState2])
      {
        contextID = [(CKKSKeychainViewState *)self contextID];
        contextID2 = [v5 contextID];
        v9 = [contextID isEqualToString:contextID2];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CKKSKeychainViewState alloc];
  zoneID = [(CKKSKeychainViewState *)self zoneID];
  contextID = [(CKKSKeychainViewState *)self contextID];
  ckksManagedView = [(CKKSKeychainViewState *)self ckksManagedView];
  priorityView = [(CKKSKeychainViewState *)self priorityView];
  notifyViewReadyScheduler = [(CKKSKeychainViewState *)self notifyViewReadyScheduler];
  notifyViewReadyScheduler2 = [(CKKSKeychainViewState *)self notifyViewReadyScheduler];
  v11 = [(CKKSKeychainViewState *)v4 initWithZoneID:zoneID forContextID:contextID ckksManagedView:ckksManagedView priorityView:priorityView notifyViewChangedScheduler:notifyViewReadyScheduler notifyViewReadyScheduler:notifyViewReadyScheduler2];

  viewKeyHierarchyState = [(CKKSKeychainViewState *)self viewKeyHierarchyState];
  [(CKKSKeychainViewState *)v11 setViewKeyHierarchyState:viewKeyHierarchyState];

  return v11;
}

- (id)description
{
  contextID = [(CKKSKeychainViewState *)self contextID];
  zoneName = [(CKKSKeychainViewState *)self zoneName];
  if ([(CKKSKeychainViewState *)self ckksManagedView])
  {
    v5 = @"ckks";
  }

  else
  {
    v5 = @"ext";
  }

  viewKeyHierarchyState = [(CKKSKeychainViewState *)self viewKeyHierarchyState];
  v7 = [NSString stringWithFormat:@"<CKKSKeychainViewState(%@): %@(%@), %@>", contextID, zoneName, v5, viewKeyHierarchyState];

  return v7;
}

- (CKKSKeychainViewState)initWithZoneID:(id)d forContextID:(id)iD ckksManagedView:(BOOL)view priorityView:(BOOL)priorityView notifyViewChangedScheduler:(id)scheduler notifyViewReadyScheduler:(id)readyScheduler
{
  dCopy = d;
  iDCopy = iD;
  schedulerCopy = scheduler;
  readySchedulerCopy = readyScheduler;
  v37.receiver = self;
  v37.super_class = CKKSKeychainViewState;
  v18 = [(CKKSKeychainViewState *)&v37 init];
  if (v18)
  {
    zoneName = [dCopy zoneName];
    zoneName = v18->_zoneName;
    v18->_zoneName = zoneName;

    objc_storeStrong(&v18->_zoneID, d);
    objc_storeStrong(&v18->_contextID, iD);
    v18->_priorityView = priorityView;
    v18->_ckksManagedView = view;
    v21 = dispatch_queue_create("key-state", 0);
    queue = v18->_queue;
    v18->_queue = v21;

    v23 = objc_alloc_init(NSOperationQueue);
    operationQueue = v18->_operationQueue;
    v18->_operationQueue = v23;

    objc_storeStrong(&v18->_notifyViewChangedScheduler, scheduler);
    objc_storeStrong(&v18->_notifyViewReadyScheduler, readyScheduler);
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
    zoneName2 = [dCopy zoneName];
    [(SecLaunchSequence *)v31 addAttribute:@"view" value:zoneName2];

    v28->_readyNotificationArmed = 0;
  }

  return v18;
}

@end