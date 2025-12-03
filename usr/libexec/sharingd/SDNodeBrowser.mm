@interface SDNodeBrowser
- (BOOL)onlySupportsADisk:(id)disk;
- (SDNodeBrowser)initWithNode:(__SFNode *)node protocol:(id)protocol flags:(unint64_t)flags kind:(id)kind;
- (SDNodeBrowserDelegate)delegate;
- (SDXPCHelperConnection)helperConnection;
- (id)airDropNodes;
- (id)neighborhoodNodes;
- (id)nodesInternal:(BOOL)internal;
- (id)odiskNodes;
- (id)sharePointNodes;
- (id)sidebarNodesFromServerNodes:(id)nodes nonServerCount:(unint64_t)count addAllNode:(BOOL *)node;
- (id)workgroupChildren;
- (int)addNode:(__SFNode *)node;
- (int)removeNode:(__SFNode *)node;
- (void)addBonjourChildrenFromCache:(id)cache;
- (void)addClassroomChildrenFromCache:(id)cache;
- (void)addConnectedChildrenFromCache:(id)cache;
- (void)addFakeRangingMeasurementIfAppropriateToNodesInCache:(id)cache;
- (void)addManagedChildrenFromCache:(id)cache;
- (void)addRapportChildrenFromCache:(id)cache;
- (void)addWindowsChildrenFromCache:(id)cache;
- (void)appendAllNode:(id)node;
- (void)connectedChanged:(id)changed;
- (void)copyOverBonjourInfo:(__SFNode *)info source:(__SFNode *)source;
- (void)dealloc;
- (void)domainsChanged:(id)changed;
- (void)loadAirDrop;
- (void)loadBonjour;
- (void)loadClassroom;
- (void)loadConnected;
- (void)loadDomains;
- (void)loadManaged;
- (void)loadODisk;
- (void)loadRapport;
- (void)loadSidebarPrefsMonitor;
- (void)loadWindows;
- (void)loadWorkgroups;
- (void)managedChanged:(id)changed;
- (void)notifyClientAboutWorkgroups;
- (void)serversChanged:(id)changed;
- (void)setMode:(int64_t)mode;
- (void)sharePointBrowser:(id)browser nodesDidChangeWithError:(int)error;
- (void)sidebarPrefsChanged:(id)changed;
- (void)start;
- (void)stop;
- (void)takeActionOnServerChanged:(id)changed neighborhood:(id)neighborhood;
- (void)unloadAirDrop;
- (void)unloadBonjour;
- (void)unloadClassroom;
- (void)unloadConnected;
- (void)unloadDomains;
- (void)unloadManaged;
- (void)unloadODisk;
- (void)unloadRapport;
- (void)unloadSharePoints;
- (void)unloadSidebarPrefsMonitor;
- (void)unloadWindows;
- (void)unloadWorkgroups;
- (void)updateSelectionReasonInNodes:(id)nodes;
- (void)workgroupsChanged:(id)changed;
@end

@implementation SDNodeBrowser

- (SDNodeBrowser)initWithNode:(__SFNode *)node protocol:(id)protocol flags:(unint64_t)flags kind:(id)kind
{
  protocolCopy = protocol;
  kindCopy = kind;
  v40.receiver = self;
  v40.super_class = SDNodeBrowser;
  v12 = [(SDNodeBrowser *)&v40 init];
  v13 = v12;
  if (v12)
  {
    v12->_mode = 0;
    objc_storeStrong(&v12->_kind, kind);
    v14 = objc_alloc_init(SDNodeCoalescer);
    nodeCoalescer = v13->_nodeCoalescer;
    v13->_nodeCoalescer = v14;

    airDropDiscoveryLogger = v13->_airDropDiscoveryLogger;
    v13->_airDropDiscoveryLogger = 0;

    v13->_startTime = 0.0;
    v13->_shouldCollectNodeCoalescerMetrics = 1;
    coalescer = v13->_coalescer;
    v13->_coalescer = 0;

    connection = v13->_connection;
    v13->_connection = 0;

    objc_storeStrong(&v13->_protocol, protocol);
    odiskDomains = v13->_odiskDomains;
    v13->_odiskDomains = 0;

    airDropDomains = v13->_airDropDomains;
    v13->_airDropDomains = 0;

    bonjourDomains = v13->_bonjourDomains;
    v13->_bonjourDomains = 0;

    domainBrowser = v13->_domainBrowser;
    v13->_domainBrowser = 0;

    managedBrowser = v13->_managedBrowser;
    v13->_managedBrowser = 0;

    classroomBrowser = v13->_classroomBrowser;
    v13->_classroomBrowser = 0;

    workgroupBrowser = v13->_workgroupBrowser;
    v13->_workgroupBrowser = 0;

    connectedBrowser = v13->_connectedBrowser;
    v13->_connectedBrowser = 0;

    sharePointBrowser = v13->_sharePointBrowser;
    v13->_sharePointBrowser = 0;

    managedURLTable = v13->_managedURLTable;
    v13->_managedURLTable = 0;

    commentHashTable = v13->_commentHashTable;
    v13->_commentHashTable = 0;

    v13->_combineWorkgroups = 0;
    windowsWorkgroups = v13->_windowsWorkgroups;
    v13->_windowsWorkgroups = 0;

    originalNodes = v13->_originalNodes;
    v13->_originalNodes = 0;

    v13->_error = 0;
    objc_storeStrong(&v13->_queue, &_dispatch_main_q);
    v13->_parent = CFRetain(node);
    v32 = +[SDStatusMonitor sharedMonitor];
    monitor = v13->_monitor;
    v13->_monitor = v32;

    v34 = SFNodeCopyProtocols();
    protocols = v13->_protocols;
    v13->_protocols = v34;

    contactIdentifierMap = v13->_contactIdentifierMap;
    v13->_contactIdentifierMap = 0;

    if (IsAppleInternalBuild())
    {
      v13->_showAllKnownPeopleInMagicHead = sub_10000C1F8(@"ShowKnownInMagicHead", 0) != 0;
      v37 = objc_opt_new();
      cachedFakeMeasurements = v13->_cachedFakeMeasurements;
      v13->_cachedFakeMeasurements = v37;
    }
  }

  return v13;
}

- (void)dealloc
{
  [(SDNodeBrowser *)self stop];
  parent = self->_parent;
  if (parent)
  {
    CFRelease(parent);
  }

  v4.receiver = self;
  v4.super_class = SDNodeBrowser;
  [(SDNodeBrowser *)&v4 dealloc];
}

- (void)notifyClientAboutWorkgroups
{
  if ([(NSString *)self->_kind isEqual:kSFBrowserKindPrinter])
  {

    [(SDNodeBrowser *)self notifyClient];
    return;
  }

  parent = self->_parent;
  v4 = SFNodeCopyWorkgroups();
  workgroups = [(SDWorkgroupBrowser *)self->_workgroupBrowser workgroups];
  v6 = workgroups;
  if (v4)
  {
    Count = CFSetGetCount(v4);
    if (v6)
    {
      v8 = CFSetGetCount(v6);
      v9 = v8;
      p_combineWorkgroups = &self->_combineWorkgroups;
      combineWorkgroups = self->_combineWorkgroups;
      if (Count < 1)
      {
        Mutable = 0;
      }

      else
      {
        v30 = v8;
        __chkstk_darwin(v8);
        v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v13, v12);
        CFSetGetValues(v4, v13);
        Mutable = CFSetCreateMutable(0, 0, &kCFCopyStringSetCallBacks);
        for (i = 0; i != Count; ++i)
        {
          if (!CFSetContainsValue(v6, *&v13[8 * i]))
          {
            CFSetSetValue(Mutable, *&v13[8 * i]);
          }
        }

        v9 = v30;
      }

      goto LABEL_17;
    }

    p_combineWorkgroups = &self->_combineWorkgroups;
    combineWorkgroups = self->_combineWorkgroups;
    Mutable = CFSetCreateMutableCopy(0, 0, v4);
  }

  else
  {
    if (workgroups)
    {
      v9 = CFSetGetCount(workgroups);
      Count = 0;
      Mutable = 0;
      p_combineWorkgroups = &self->_combineWorkgroups;
      combineWorkgroups = self->_combineWorkgroups;
LABEL_17:
      v16 = self->_parent;
      SFNodeSetWorkgroups();
      CFRelease(v6);
      goto LABEL_20;
    }

    Count = 0;
    Mutable = 0;
    p_combineWorkgroups = &self->_combineWorkgroups;
    combineWorkgroups = self->_combineWorkgroups;
  }

  v17 = CFSetCreate(0, 0, 0, &kCFCopyStringSetCallBacks);
  v18 = self->_parent;
  SFNodeSetWorkgroups();
  CFRelease(v17);
  v9 = 0;
LABEL_20:
  if (v9 >= [(SDStatusMonitor *)self->_monitor workgroupThreshold])
  {
    if (v9 <= [(SDStatusMonitor *)self->_monitor workgroupThreshold])
    {
      goto LABEL_25;
    }

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  *p_combineWorkgroups = v19;
LABEL_25:
  if (!combineWorkgroups)
  {
    goto LABEL_36;
  }

  if (*p_combineWorkgroups)
  {
    v20 = Mutable;
    if (!Mutable)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v20 = v4;
    if (!v4)
    {
      goto LABEL_36;
    }
  }

  v21 = CFRetain(v20);
  if (v21)
  {
    v22 = v21;
    v23 = CFSetGetCount(v21);
    if (v23)
    {
      v24 = v23;
      v29[1] = v29;
      v30 = v9;
      __chkstk_darwin(v23);
      v26 = (v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
      bzero(v26, v25);
      CFSetGetValues(v22, v26);
      if (v24 >= 1)
      {
        do
        {
          v27 = +[SDServerBrowser sharedBrowser];
          v28 = *v26++;
          [v27 stopBrowsingWorkgroup:v28];

          --v24;
        }

        while (v24);
      }

      v9 = v30;
    }

    CFRelease(v22);
  }

LABEL_36:
  if (!*p_combineWorkgroups)
  {
    goto LABEL_40;
  }

  if (v9 < 1)
  {
    if (Count < 1)
    {
      goto LABEL_41;
    }

LABEL_40:
    [(SDNodeBrowser *)self notifyClient];
    goto LABEL_41;
  }

  [(SDNodeBrowser *)self loadWindows];
LABEL_41:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

- (void)takeActionOnServerChanged:(id)changed neighborhood:(id)neighborhood
{
  changedCopy = changed;
  neighborhoodCopy = neighborhood;
  if ([changedCopy isEqualToString:@"com.apple.sharingd.BonjourChanged"] && (bonjourDomains = self->_bonjourDomains) != 0 || objc_msgSend(changedCopy, "isEqualToString:", @"com.apple.sharingd.WindowsChanged") && (bonjourDomains = self->_windowsWorkgroups) != 0 || objc_msgSend(changedCopy, "isEqualToString:", @"com.apple.sharingd.ODisksChanged") && (bonjourDomains = self->_odiskDomains) != 0 || objc_msgSend(changedCopy, "isEqualToString:", @"com.apple.sharingd.AirDropChanged") && (bonjourDomains = self->_airDropDomains) != 0)
  {
    if (([(NSMutableSet *)bonjourDomains containsObject:neighborhoodCopy]& 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ([changedCopy isEqualToString:@"com.apple.sharingd.RapportChanged"])
  {
LABEL_10:
    [(SDNodeBrowser *)self setError:0];
    [(SDNodeBrowser *)self notifyClient];
  }

LABEL_11:
}

- (void)serversChanged:(id)changed
{
  changedCopy = changed;
  name = [changedCopy name];
  userInfo = [changedCopy userInfo];

  v6 = [userInfo objectForKeyedSubscript:@"NeighborhoodName"];
  [(SDNodeBrowser *)self takeActionOnServerChanged:name neighborhood:v6];
}

- (void)domainsChanged:(id)changed
{
  [(SDNodeBrowser *)self setError:0];

  [(SDNodeBrowser *)self notifyClient];
}

- (void)workgroupsChanged:(id)changed
{
  [(SDNodeBrowser *)self setError:0];

  [(SDNodeBrowser *)self notifyClientAboutWorkgroups];
}

- (void)sharePointBrowser:(id)browser nodesDidChangeWithError:(int)error
{
  browserCopy = browser;
  userName = [browserCopy userName];
  [(SDNodeBrowser *)self setUserName:userName];

  connectionState = [browserCopy connectionState];
  [(SDNodeBrowser *)self setConnectionState:connectionState];

  [(SDNodeBrowser *)self notifyClient];
}

- (void)connectedChanged:(id)changed
{
  [(SDNodeBrowser *)self setError:0];

  [(SDNodeBrowser *)self notifyClient];
}

- (void)managedChanged:(id)changed
{
  [(SDNodeBrowser *)self setError:0];

  [(SDNodeBrowser *)self notifyClient];
}

- (void)sidebarPrefsChanged:(id)changed
{
  [(SDNodeBrowser *)self setError:0];

  [(SDNodeBrowser *)self notifyClient];
}

- (void)setMode:(int64_t)mode
{
  if (self->_mode != mode && [(NSString *)self->_kind isEqual:kSFBrowserKindNetwork])
  {
    self->_mode = mode;
    v5 = +[SDServerBrowser sharedBrowser];
    [v5 setBonjourBrowserMode:mode];
  }
}

- (void)loadBonjour
{
  parent = self->_parent;
  v4 = SFNodeCopyKinds();
  if (CFSetContainsValue(v4, kSFNodeKindDomain) && [(NSString *)self->_kind isEqual:kSFBrowserKindNetwork])
  {
    v5 = self->_parent;
    v6 = SFNodeCopyDomains();
    if ([v6 count])
    {
      v21 = v6;
      allObjects = [v6 allObjects];
      if (!self->_bonjourDomains)
      {
        v8 = objc_opt_new();
        bonjourDomains = self->_bonjourDomains;
        self->_bonjourDomains = v8;
      }

      v10 = +[NSNotificationCenter defaultCenter];
      [v10 addObserver:self selector:"serversChanged:" name:@"com.apple.sharingd.BonjourChanged" object:0];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = allObjects;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v22 + 1) + 8 * i);
            [(NSMutableSet *)self->_bonjourDomains addObject:v16];
            v17 = +[SDServerBrowser sharedBrowser];
            [v17 startBrowsingDomain:v16];

            if ([v16 isEqual:@"local"])
            {
              v18 = +[SDServerBrowser sharedBrowser];
              [v18 setBonjourBrowserMode:self->_mode];
            }

            v19 = +[SDServerBrowser sharedBrowser];
            v20 = [v19 bonjourNodesForDomain:v16];

            if ([v20 count])
            {
              [(SDNodeBrowser *)self notifyClient];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v13);
      }

      v6 = v21;
    }
  }

  CFRelease(v4);
}

- (void)loadWindows
{
  parent = self->_parent;
  v4 = SFNodeCopyKinds();
  if (CFSetContainsValue(v4, kSFNodeKindWorkgroup))
  {
    v5 = self->_parent;
    v6 = SFNodeCopyWorkgroups();
    if ([v6 count])
    {
      allObjects = [v6 allObjects];
      if (!self->_windowsWorkgroups)
      {
        v8 = objc_opt_new();
        windowsWorkgroups = self->_windowsWorkgroups;
        self->_windowsWorkgroups = v8;
      }

      v10 = +[NSNotificationCenter defaultCenter];
      [v10 addObserver:self selector:"serversChanged:" name:@"com.apple.sharingd.WindowsChanged" object:0];

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = allObjects;
      v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v20 + 1) + 8 * i);
            [(NSMutableSet *)self->_windowsWorkgroups addObject:v16, v20];
            v17 = +[SDServerBrowser sharedBrowser];
            [v17 startBrowsingWorkgroup:v16];

            v18 = +[SDServerBrowser sharedBrowser];
            v19 = [v18 windowsNodesForWorkgroup:v16];

            if ([v19 count])
            {
              [(SDNodeBrowser *)self notifyClient];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v13);
      }
    }
  }

  CFRelease(v4);
}

- (void)loadDomains
{
  if ([(NSString *)self->_kind isEqual:kSFBrowserKindNetwork])
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"domainsChanged:" name:@"com.apple.sharingd.DomainsChanged" object:0];

    v4 = +[SDDomainBrowser sharedBrowser];
    domainBrowser = self->_domainBrowser;
    self->_domainBrowser = v4;

    [(SDDomainBrowser *)self->_domainBrowser start];
    v6 = [(SDDomainBrowser *)self->_domainBrowser childrenForNode:self->_parent];
    if ([v6 count])
    {
      [(SDNodeBrowser *)self notifyClient];
    }
  }
}

- (void)loadWorkgroups
{
  if (([(NSString *)self->_kind isEqual:kSFBrowserKindNetwork]& 1) != 0 || [(NSString *)self->_kind isEqual:kSFBrowserKindPrinter])
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"workgroupsChanged:" name:@"com.apple.sharingd.WorkgroupsChanged" object:0];

    v4 = +[SDWorkgroupBrowser sharedBrowser];
    workgroupBrowser = self->_workgroupBrowser;
    self->_workgroupBrowser = v4;

    [(SDWorkgroupBrowser *)self->_workgroupBrowser start];
    nodes = [(SDWorkgroupBrowser *)self->_workgroupBrowser nodes];
    if ([nodes count])
    {
      [(SDNodeBrowser *)self notifyClientAboutWorkgroups];
    }
  }
}

- (BOOL)onlySupportsADisk:(id)disk
{
  v3 = kSFNodeProtocolAFP;
  diskCopy = disk;
  LOBYTE(v3) = [diskCopy containsObject:v3];
  v5 = [diskCopy containsObject:kSFNodeProtocolSMB];
  v6 = [diskCopy containsObject:kSFNodeProtocolADisk];

  return v6 & ((v3 | v5) ^ 1);
}

- (void)loadConnected
{
  v3 = [(NSString *)self->_kind isEqual:kSFBrowserKindNetwork];
  v4 = kSFBrowserKindRemoteDisc;
  if ((v3 & 1) != 0 || ([(NSString *)self->_kind isEqual:kSFBrowserKindRemoteDisc]& 1) != 0 || [(NSString *)self->_kind isEqual:kSFBrowserKindAirDrop])
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"connectedChanged:" name:@"com.apple.sharingd.ConnectedChanged" object:0];

    v6 = +[SDConnectedBrowser sharedBrowser];
    connectedBrowser = self->_connectedBrowser;
    self->_connectedBrowser = v6;

    [(SDConnectedBrowser *)self->_connectedBrowser start];
    v8 = [(NSString *)self->_kind isEqual:v4];
    v9 = self->_connectedBrowser;
    if (v8)
    {
      [(SDConnectedBrowser *)v9 odiskNodes];
    }

    else
    {
      [(SDConnectedBrowser *)v9 nodes];
    }
    v10 = ;
    if ([v10 count])
    {
      [(SDNodeBrowser *)self notifyClient];
    }
  }
}

- (void)loadManaged
{
  if ([(NSString *)self->_kind isEqual:kSFBrowserKindNetwork])
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"managedChanged:" name:@"com.apple.sharingd.ManagedChanged" object:0];

    v4 = +[SDManagedBrowser sharedBrowser];
    managedBrowser = self->_managedBrowser;
    self->_managedBrowser = v4;

    [(SDManagedBrowser *)self->_managedBrowser start];
    nodes = [(SDManagedBrowser *)self->_managedBrowser nodes];
    if ([nodes count])
    {
      [(SDNodeBrowser *)self notifyClient];
    }
  }
}

- (void)loadODisk
{
  parent = self->_parent;
  v4 = SFNodeCopyKinds();
  if (CFSetContainsValue(v4, kSFNodeKindDomain) && [(NSString *)self->_kind isEqual:kSFBrowserKindRemoteDisc])
  {
    v5 = self->_parent;
    v6 = SFNodeCopyDomains();
    if ([v6 count])
    {
      allObjects = [v6 allObjects];
      if (!self->_odiskDomains)
      {
        v8 = objc_opt_new();
        odiskDomains = self->_odiskDomains;
        self->_odiskDomains = v8;
      }

      v10 = +[NSNotificationCenter defaultCenter];
      [v10 addObserver:self selector:"serversChanged:" name:@"com.apple.sharingd.ODisksChanged" object:0];

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = allObjects;
      v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v20 + 1) + 8 * i);
            [(NSMutableSet *)self->_odiskDomains addObject:v16, v20];
            v17 = +[SDServerBrowser sharedBrowser];
            [v17 startODiskBrowsing:v16];

            v18 = +[SDServerBrowser sharedBrowser];
            v19 = [v18 odiskNodesForDomain:v16];

            if ([v19 count])
            {
              [(SDNodeBrowser *)self notifyClient];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v13);
      }
    }
  }

  CFRelease(v4);
}

- (void)loadClassroom
{
  v3 = +[MCProfileConnection sharedConnection];
  isClassroomEnabled = [v3 isClassroomEnabled];

  if (isClassroomEnabled)
  {
    parent = self->_parent;
    v6 = SFNodeCopyKinds();
    if (CFSetContainsValue(v6, kSFNodeKindDomain) && [(NSString *)self->_kind isEqual:kSFBrowserKindAirDrop])
    {
      v7 = +[NSNotificationCenter defaultCenter];
      [v7 addObserver:self selector:"classroomChanged:" name:@"com.apple.sharingd.ClassroomChanged" object:0];

      v8 = +[SDClassroomBrowser sharedBrowser];
      classroomBrowser = self->_classroomBrowser;
      self->_classroomBrowser = v8;

      connection = self->_connection;
      if (connection)
      {
        v11 = sub_10000C344(connection);
        [(SDClassroomBrowser *)self->_classroomBrowser setClientBundleID:v11];
      }

      [(SDClassroomBrowser *)self->_classroomBrowser start];
      nodes = [(SDClassroomBrowser *)self->_classroomBrowser nodes];
      if ([nodes count])
      {
        [(SDNodeBrowser *)self notifyClient];
      }
    }

    if (v6)
    {

      CFRelease(v6);
    }
  }
}

- (void)loadAirDrop
{
  v3 = +[MCProfileConnection sharedConnection];
  isAirDropAllowed = [v3 isAirDropAllowed];

  if (isAirDropAllowed)
  {
    parent = self->_parent;
    v6 = SFNodeCopyKinds();
    if (CFSetContainsValue(v6, kSFNodeKindDomain) && [(NSString *)self->_kind isEqual:kSFBrowserKindAirDrop])
    {
      v7 = self->_parent;
      v8 = SFNodeCopyDomains();
      if ([v8 count])
      {
        v25 = v8;
        v26 = v6;
        allObjects = [v8 allObjects];
        if (!self->_airDropDomains)
        {
          v10 = objc_opt_new();
          airDropDomains = self->_airDropDomains;
          self->_airDropDomains = v10;
        }

        v12 = +[NSNotificationCenter defaultCenter];
        [v12 addObserver:self selector:"serversChanged:" name:@"com.apple.sharingd.AirDropChanged" object:0];

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        obj = allObjects;
        v13 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v13)
        {
          v14 = v13;
          v28 = *v30;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v30 != v28)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(*(&v29 + 1) + 8 * i);
              [(NSMutableSet *)self->_airDropDomains addObject:v16];
              if (self->_bundleID)
              {
                options = [(SDNodeBrowser *)self options];
                v18 = CFDictionaryGetInt64() != 0;

                v19 = +[SDServerBrowser sharedBrowser];
                bundleID = self->_bundleID;
                protocol = self->_protocol;
                helperConnection = [(SDNodeBrowser *)self helperConnection];
                [v19 startAirDropBrowsing:v16 bundleID:bundleID sessionID:protocol helperConnection:helperConnection delayBonjour:v18];
              }

              else
              {
                v19 = +[SDServerBrowser sharedBrowser];
                [v19 startAirDropBrowsing:v16 connection:self->_connection sessionID:self->_protocol];
              }

              v23 = +[SDServerBrowser sharedBrowser];
              v24 = [v23 airDropNodesForDomain:v16];

              if ([v24 count])
              {
                [(SDNodeBrowser *)self notifyClient];
              }
            }

            v14 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v14);
        }

        v8 = v25;
        v6 = v26;
      }
    }

    CFRelease(v6);
  }
}

- (void)loadSidebarPrefsMonitor
{
  if ([(NSString *)self->_kind isEqual:kSFBrowserKindNetwork])
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"sidebarPrefsChanged:" name:@"com.apple.sharingd.FinderPrefsChanged" object:0];
  }
}

- (void)loadRapport
{
  parent = self->_parent;
  v4 = SFNodeCopyKinds();
  if (CFSetContainsValue(v4, kSFNodeKindDomain) && [(NSString *)self->_kind isEqual:kSFNodeKindAirDrop])
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"serversChanged:" name:@"com.apple.sharingd.RapportChanged" object:0];

    v6 = +[SDRapportBrowser sharedRapportBrowser];
    rapportBrowser = self->_rapportBrowser;
    self->_rapportBrowser = v6;

    helperConnection = [(SDNodeBrowser *)self helperConnection];
    [(SDRapportBrowser *)self->_rapportBrowser setHelperConnection:helperConnection];

    [(SDRapportBrowser *)self->_rapportBrowser start];
    nodes = [(SDRapportBrowser *)self->_rapportBrowser nodes];
    if ([nodes count])
    {
      [(SDNodeBrowser *)self notifyClient];
    }
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

- (id)workgroupChildren
{
  workgroupBrowser = self->_workgroupBrowser;
  if (workgroupBrowser)
  {
    if (!self->_combineWorkgroups)
    {
LABEL_5:
      workgroupBrowser = [workgroupBrowser nodes];
      goto LABEL_7;
    }

    if ([(NSString *)self->_kind isEqual:kSFBrowserKindPrinter])
    {
      workgroupBrowser = self->_workgroupBrowser;
      goto LABEL_5;
    }

    workgroupBrowser = 0;
  }

LABEL_7:

  return workgroupBrowser;
}

- (void)copyOverBonjourInfo:(__SFNode *)info source:(__SFNode *)source
{
  v4 = SFNodeCopyModel();
  SFNodeSetModel();
  v5 = SFNodeCopyColor();
  SFNodeSetColor();
  v6 = SFNodeCopySiblingNodes();
  SFNodeSetSiblingNodes();
  v7 = SFNodeCopyDomain();
  SFNodeSetDomain();
  v8 = SFNodeCopyAppleID();
  SFNodeSetAppleID();
  v9 = SFNodeCopyIconData();
  SFNodeSetIconData();
  v10 = SFNodeCopyIconHash();
  SFNodeSetIconHash();
  v11 = SFNodeCopyLastName();
  SFNodeSetLastName();
  v12 = SFNodeCopyFirstName();
  SFNodeSetFirstName();
  v13 = SFNodeCopyContactIdentifier();
  SFNodeSetContactIdentifier();
  v14 = SFNodeCopyContactIdentifiers();
  SFNodeSetContactIdentifiers();
  v15 = SFNodeCopyComputerName();
  SFNodeSetComputerName();
  v16 = SFNodeCopySecondaryName();
  SFNodeSetSecondaryName();
  v17 = SFNodeCopyTransportBundleID();
  SFNodeSetTransportBundleID();
  v18 = SFNodeCopyBonjourProtocols();
  SFNodeSetBonjourProtocols();
  v19 = SFNodeCopyRapportFlags();
  SFNodeSetRapportFlags();
  SFNodeGetSupportedMedia();

  SFNodeSetSupportedMedia();
}

- (void)addBonjourChildrenFromCache:(id)cache
{
  cacheCopy = cache;
  v39 = kSFBrowserKindRemoteDisc;
  if (([(NSString *)self->_kind isEqual:?]& 1) != 0)
  {
    v5 = 112;
  }

  else
  {
    v6 = [(NSString *)self->_kind isEqual:kSFBrowserKindAirDrop];
    v5 = 128;
    if (v6)
    {
      v5 = 120;
    }
  }

  v7 = *(&self->super.isa + v5);
  if ([v7 count])
  {
    parent = self->_parent;
    v9 = SFNodeCopyKinds();
    v10 = v9;
    if (!self->_commentHashTable && CFSetContainsValue(v9, kSFNodeKindWorkgroup))
    {
      v11 = objc_opt_new();
      commentHashTable = self->_commentHashTable;
      self->_commentHashTable = v11;
    }

    cf = v10;
    v34 = v7;
    [v7 allObjects];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = v49 = 0u;
    v40 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v40)
    {
      v37 = *v47;
      v35 = kSFBrowserKindAirDrop;
      selfCopy = self;
      do
      {
        v13 = 0;
        do
        {
          if (*v47 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v46 + 1) + 8 * v13);
          v41 = v13;
          if ([(NSString *)self->_kind isEqual:v39])
          {
            v15 = +[SDServerBrowser sharedBrowser];
            v16 = [v15 odiskNodesForDomain:v14];
          }

          else
          {
            v17 = [(NSString *)self->_kind isEqual:v35];
            v18 = +[SDServerBrowser sharedBrowser];
            v15 = v18;
            if (v17)
            {
              [v18 airDropNodesForDomain:v14];
            }

            else
            {
              [v18 bonjourNodesForDomain:v14];
            }
            v16 = ;
          }

          v19 = v16;

          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v20 = v19;
          v21 = [v20 countByEnumeratingWithState:&v42 objects:v50 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v43;
            do
            {
              for (i = 0; i != v22; i = i + 1)
              {
                if (*v43 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v42 + 1) + 8 * i);
                v26 = SFNodeCopyRealName();
                lowercaseString = [v26 lowercaseString];
                v28 = [cacheCopy objectForKeyedSubscript:lowercaseString];

                if (!v28)
                {
                  Copy = SFNodeCreateCopy();
                  [cacheCopy setObject:Copy forKeyedSubscript:lowercaseString];
                  CFRelease(Copy);
                }

                v30 = SFNodeCopyKinds();
                v31 = SFNodeCopyKinds();
                v32 = SFNodeCopyDomain();
                CFRelease(v30);
                CFRelease(v32);
                CFRelease(v31);
              }

              v22 = [v20 countByEnumeratingWithState:&v42 objects:v50 count:16];
            }

            while (v22);
          }

          v13 = v41 + 1;
          self = selfCopy;
        }

        while ((v41 + 1) != v40);
        v40 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v40);
    }

    CFRelease(cf);

    v7 = v34;
  }

  if (self->_commentHashTable && ![cacheCopy count])
  {
    [(NSMutableDictionary *)self->_commentHashTable removeAllObjects];
  }
}

- (void)addWindowsChildrenFromCache:(id)cache
{
  cacheCopy = cache;
  v5 = cacheCopy;
  if (self->_windowsWorkgroups && (!self->_workgroupBrowser || self->_combineWorkgroups))
  {
    v38 = cacheCopy;
    v6 = objc_opt_new();
    selfCopy = self;
    allObjects = [(NSMutableSet *)self->_windowsWorkgroups allObjects];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v8 = [allObjects countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v46;
      do
      {
        v11 = 0;
        do
        {
          if (*v46 != v10)
          {
            objc_enumerationMutation(allObjects);
          }

          v12 = *(*(&v45 + 1) + 8 * v11);
          v13 = +[SDServerBrowser sharedBrowser];
          v14 = [v13 windowsNodesForWorkgroup:v12];

          if (v14)
          {
            [v6 addObjectsFromArray:v14];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [allObjects countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v9);
    }

    v34 = allObjects;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v15 = v6;
    v16 = [v15 countByEnumeratingWithState:&v41 objects:v49 count:16];
    v5 = v38;
    if (v16)
    {
      v17 = v16;
      v18 = *v42;
      v19 = kSFNodeKindBonjour;
      value = kSFNodeProtocolSMB;
      v36 = v15;
      v37 = *v42;
      do
      {
        v20 = 0;
        v39 = v17;
        do
        {
          if (*v42 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v41 + 1) + 8 * v20);
          v22 = SFNodeCopyKinds();
          if (!CFSetContainsValue(v22, v19))
          {
            v23 = SFNodeCopyNetbiosName();
            v24 = SFNodeCopyWorkgroup();
            v25 = SFNodeCopySecondaryName();
            v26 = v25;
            if (selfCopy->_commentHashTable && v25 && CFStringGetLength(v25) && (v27 = CFDictionaryGetValue(selfCopy->_commentHashTable, v26)) != 0 && ([v5 objectForKeyedSubscript:v27], v28 = objc_claimAutoreleasedReturnValue(), v28, v28) || (objc_msgSend(v5, "objectForKeyedSubscript:", v23), v29 = objc_claimAutoreleasedReturnValue(), v29, v29))
            {
              v30 = SFNodeCopyKinds();
              v31 = SFNodeCopyProtocols();
              if (CFSetContainsValue(v30, v19) && (v51.length = CFArrayGetCount(v31), v51.location = 0, CFArrayContainsValue(v31, v51, value)))
              {
                SFNodeAddKind();
              }

              else
              {
                SFNodeSetMountPoint();
                SFNodeSetSecondaryName();
                SFNodeSetNetbiosName();
                SFNodeSetWorkgroup();
                SFNodeAddKind();
                SFNodeRemoveKind();
                SFNodeRemoveKind();
                SFNodeRemoveKind();
              }

              v18 = v37;
              CFRelease(v31);
              v15 = v36;
            }

            else
            {
              Copy = SFNodeCreateCopy();
              v33 = v5;
              v30 = Copy;
              [v33 setObject:Copy forKeyedSubscript:v23];
              v18 = v37;
            }

            CFRelease(v30);
            if (v26)
            {
              CFRelease(v26);
            }

            CFRelease(v24);
            CFRelease(v23);
            v5 = v38;
            v17 = v39;
          }

          CFRelease(v22);
          v20 = v20 + 1;
        }

        while (v17 != v20);
        v17 = [v15 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v17);
    }
  }
}

- (void)addClassroomChildrenFromCache:(id)cache
{
  cacheCopy = cache;
  classroomBrowser = self->_classroomBrowser;
  if (classroomBrowser)
  {
    nodes = [(SDClassroomBrowser *)classroomBrowser nodes];
    v7 = nodes;
    if (nodes)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v8 = [nodes countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        do
        {
          v11 = 0;
          do
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v15 + 1) + 8 * v11);
            v13 = SFNodeCopyRealName();
            lowercaseString = [v13 lowercaseString];
            [cacheCopy setObject:v12 forKeyedSubscript:lowercaseString];

            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v9);
      }
    }
  }
}

- (void)addManagedChildrenFromCache:(id)cache
{
  cacheCopy = cache;
  managedBrowser = self->_managedBrowser;
  if (managedBrowser)
  {
    nodes = [(SDManagedBrowser *)managedBrowser nodes];
    if (nodes)
    {
      managedURLTable = self->_managedURLTable;
      if (managedURLTable)
      {
        [(NSMutableDictionary *)managedURLTable removeAllObjects];
      }

      else
      {
        v8 = objc_opt_new();
        v9 = self->_managedURLTable;
        self->_managedURLTable = v8;
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v23 = nodes;
      v10 = nodes;
      v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v25;
        do
        {
          v14 = 0;
          do
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v24 + 1) + 8 * v14);
            v16 = SFNodeCopyRealName();
            lowercaseString = [v16 lowercaseString];
            if (lowercaseString)
            {
              v18 = [cacheCopy objectForKeyedSubscript:lowercaseString];

              if (v18)
              {
                v19 = SFNodeCopyURL();
                SFNodeAddKind();
                SFNodeSetURL();
                [cacheCopy setObject:v18 forKeyedSubscript:lowercaseString];
                if (v19)
                {
                  v20 = v19;
                  goto LABEL_16;
                }
              }

              else
              {
                Copy = SFNodeCreateCopy();
                [cacheCopy setObject:Copy forKeyedSubscript:lowercaseString];
                v20 = Copy;
LABEL_16:
                CFRelease(v20);
              }

              v22 = SFNodeCopyURL();
              [(NSMutableDictionary *)self->_managedURLTable setObject:lowercaseString forKeyedSubscript:v22];
            }

            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v12);
      }

      nodes = v23;
    }
  }
}

- (void)addConnectedChildrenFromCache:(id)cache
{
  cacheCopy = cache;
  if (self->_connectedBrowser)
  {
    if ([(NSString *)self->_kind isEqual:kSFBrowserKindRemoteDisc])
    {
      odiskNodes = [(SDConnectedBrowser *)self->_connectedBrowser odiskNodes];
      if (!odiskNodes)
      {
LABEL_46:

        goto LABEL_47;
      }
    }

    else
    {
      v6 = [(NSString *)self->_kind isEqual:kSFBrowserKindAirDrop];
      connectedBrowser = self->_connectedBrowser;
      if (v6)
      {
        odiskNodes = [(SDConnectedBrowser *)connectedBrowser airDropNodes];
        if (!odiskNodes)
        {
          goto LABEL_46;
        }
      }

      else
      {
        odiskNodes = [(SDConnectedBrowser *)connectedBrowser nodes];
        if (!odiskNodes)
        {
          goto LABEL_46;
        }
      }
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v25 = odiskNodes;
    obj = odiskNodes;
    v34 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (!v34)
    {
      goto LABEL_45;
    }

    v33 = *v38;
    value = kSFNodeKindRecent;
    v35 = kSFNodeKindConnected;
    v26 = kSFNodeKindBonjour;
    v27 = cacheCopy;
    selfCopy = self;
LABEL_11:
    v8 = 0;
    while (1)
    {
      if (*v38 != v33)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v37 + 1) + 8 * v8);
      v10 = SFNodeCopyURL();
      v11 = SFNodeCopyKinds();
      v12 = CFSetContainsValue(v11, value);
      v13 = CFSetContainsValue(v11, v35);
      v14 = SFNodeCopyRealName();
      managedURLTable = self->_managedURLTable;
      if (managedURLTable)
      {
        v16 = [(NSMutableDictionary *)managedURLTable objectForKeyedSubscript:v10];
        if (v16)
        {
          break;
        }
      }

      lowercaseString = [v14 lowercaseString];
      if (lowercaseString)
      {
        goto LABEL_18;
      }

LABEL_41:
      CFRelease(v10);
      CFRelease(v11);

      if (v34 == ++v8)
      {
        v24 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
        v34 = v24;
        if (!v24)
        {
LABEL_45:

          odiskNodes = v25;
          goto LABEL_46;
        }

        goto LABEL_11;
      }
    }

    lowercaseString = v16;
LABEL_18:
    v18 = [cacheCopy objectForKeyedSubscript:lowercaseString];

    if (v12)
    {
      v19 = sub_1001F2E78();
      if (v18)
      {
        if (v19)
        {
          v20 = CFURLCopyScheme(v10);
          theSet = SFNodeCopyKinds();
          v21 = SFNodeCopyProtocols();
          v22 = v21;
          if (v20)
          {
            range = CFArrayGetCount(v21);
            if (!CFSetContainsValue(theSet, v26))
            {
              CFRelease(v20);
              CFRelease(v22);
              CFRelease(theSet);
              cacheCopy = v27;
LABEL_40:
              self = selfCopy;
              goto LABEL_41;
            }

            v42.location = 0;
            v42.length = range;
            rangea = CFArrayContainsValue(v22, v42, v20);
            CFRelease(v20);
            CFRelease(v22);
            CFRelease(theSet);
            cacheCopy = v27;
            if (!rangea)
            {
              goto LABEL_40;
            }
          }

          else
          {
            CFRelease(v21);
            CFRelease(theSet);
            cacheCopy = v27;
          }
        }

LABEL_33:
        SFNodeSetURL();
        SFNodeSetRealName();
        if (v12)
        {
          SFNodeAddKind();
        }

        else
        {
          SFNodeRemoveKind();
        }

        if (v13)
        {
          SFNodeAddKind();
        }

        else
        {
          SFNodeRemoveKind();
        }

        [cacheCopy setObject:v18 forKeyedSubscript:lowercaseString];
        goto LABEL_40;
      }
    }

    else
    {
      if (v18)
      {
        if (!v13)
        {
          goto LABEL_40;
        }

        goto LABEL_33;
      }

      LOBYTE(v19) = 1;
    }

    if (v13 || (v19 & 1) == 0)
    {
      Copy = SFNodeCreateCopy();
      [cacheCopy setObject:Copy forKeyedSubscript:lowercaseString];
      CFRelease(Copy);
    }

    goto LABEL_40;
  }

LABEL_47:
}

- (void)addRapportChildrenFromCache:(id)cache
{
  cacheCopy = cache;
  nodes = [(SDRapportBrowser *)self->_rapportBrowser nodes];
  v6 = nodes;
  if (nodes)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [nodes countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          v12 = SFNodeCopyRealName();
          lowercaseString = [v12 lowercaseString];
          [cacheCopy setObject:v11 forKeyedSubscript:lowercaseString];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (void)addFakeRangingMeasurementIfAppropriateToNodesInCache:(id)cache
{
  if (self->_showAllKnownPeopleInMagicHead)
  {
    v5[5] = v3;
    v5[6] = v4;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001D9D20;
    v5[3] = &unk_1008D3658;
    v5[4] = self;
    [cache enumerateKeysAndObjectsUsingBlock:v5];
  }
}

- (void)updateSelectionReasonInNodes:(id)nodes
{
  nodesCopy = nodes;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v4 = [nodesCopy countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v34;
    v8 = 200.0;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(nodesCopy);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        v11 = SFNodeCopyRealName();
        v12 = sub_1001EAE00();
        v13 = magic_head_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v39 = v12;
          v40 = 2112;
          v41 = v11;
          _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Evaluating %@ for %@", buf, 0x16u);
        }

        if (([v12 flags] & 2) != 0)
        {
          [v12 horizontalAngle];
          v15 = v14;
          [v12 horizontalAngle];
          v17 = v15 >= 0.0 ? v16 : -v16;
          if (v17 < v8)
          {
            v18 = v11;

            v8 = v17;
            v6 = v18;
          }
        }
      }

      v5 = [nodesCopy countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = nodesCopy;
  v20 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v29 + 1) + 8 * j);
        v25 = SFNodeCopyRealName();
        v26 = v6;
        v27 = v25;
        v28 = v27;
        if (v26 == v27)
        {
        }

        else
        {
          if ((v6 != 0) != (v27 == 0))
          {
            [v26 isEqual:v27];
          }

          else
          {
          }
        }

        SFNodeSetSelectionReason();
      }

      v21 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v21);
  }
}

- (id)sidebarNodesFromServerNodes:(id)nodes nonServerCount:(unint64_t)count addAllNode:(BOOL *)node
{
  nodesCopy = nodes;
  v9 = objc_opt_new();
  connectedEnabled = [(SDStatusMonitor *)self->_monitor connectedEnabled];
  bonjourEnabled = [(SDStatusMonitor *)self->_monitor bonjourEnabled];
  v11 = [nodesCopy count];
  if (v11)
  {
    selfCopy = self;
    v34 = v9;
    countCopy = count;
    nodeCopy = node;
    v12 = objc_opt_new();
    v39 = objc_opt_new();
    v33 = objc_opt_new();
    v13 = objc_opt_new();
    v36 = nodesCopy;
    v14 = [nodesCopy mutableCopy];
    [v14 sortUsingComparator:&stru_1008D3698];
    v15 = 0;
    v16 = kSFNodeKindConnected;
    v17 = kSFNodeKindManaged;
    value = kSFNodeKindRecent;
    do
    {
      v18 = [v14 objectAtIndexedSubscript:v15];

      v19 = SFNodeCopyKinds();
      v20 = v19;
      if (connectedEnabled && (v21 = CFSetContainsValue(v19, v16), v22 = v13, v21) || (v23 = CFSetContainsValue(v20, v17), v22 = v12, v23) || bonjourEnabled && (v24 = CFSetContainsValue(v20, value), v22 = v39, v24))
      {
        [v22 addObject:v18];
      }

      CFRelease(v20);
      ++v15;
    }

    while (v11 != v15);
    v25 = [v12 count];
    v26 = [v13 count];
    v27 = [v39 count];
    sidebarMaxCount = [(SDStatusMonitor *)selfCopy->_monitor sidebarMaxCount];
    if (v27 >= sidebarMaxCount - (v25 + v26))
    {
      v29 = sidebarMaxCount - (v25 + v26);
    }

    else
    {
      v29 = v27;
    }

    if (v29)
    {
      v30 = [v39 subarrayWithRange:0];
      [v33 addObjectsFromArray:v30];
    }

    [v33 sortUsingComparator:&stru_1008D36B8];
    v9 = v34;
    [v34 addObjectsFromArray:v13];
    [v34 addObjectsFromArray:v12];
    [v34 addObjectsFromArray:v33];

    nodesCopy = v36;
    node = nodeCopy;
    count = countCopy;
  }

  *node = ((v11 | count) != 0) & (connectedEnabled | bonjourEnabled);

  return v9;
}

- (id)neighborhoodNodes
{
  v3 = objc_opt_new();
  domainChildren = [(SDNodeBrowser *)self domainChildren];
  [v3 addObjectsFromArray:domainChildren];

  workgroupChildren = [(SDNodeBrowser *)self workgroupChildren];
  [v3 addObjectsFromArray:workgroupChildren];

  return v3;
}

- (id)sharePointNodes
{
  v3 = [(NSString *)self->_kind isEqual:kSFBrowserKindPrinter];
  sharePointBrowser = self->_sharePointBrowser;
  if (v3)
  {
    [(SDSharePointBrowser *)sharePointBrowser printerNodes];
  }

  else
  {
    [(SDSharePointBrowser *)sharePointBrowser fileNodes];
  }
  v5 = ;

  return v5;
}

- (id)odiskNodes
{
  v3 = objc_opt_new();
  [(SDNodeBrowser *)self addBonjourChildrenFromCache:v3];
  [(SDNodeBrowser *)self addConnectedChildrenFromCache:v3];
  allValues = [v3 allValues];

  return allValues;
}

- (id)airDropNodes
{
  v3 = objc_opt_new();
  [(SDNodeBrowser *)self addBonjourChildrenFromCache:v3];
  [(SDNodeBrowser *)self addConnectedChildrenFromCache:v3];
  [(SDNodeBrowser *)self addClassroomChildrenFromCache:v3];
  [(SDNodeBrowser *)self addRapportChildrenFromCache:v3];
  [(SDNodeBrowser *)self addFakeRangingMeasurementIfAppropriateToNodesInCache:v3];
  nodeCoalescer = self->_nodeCoalescer;
  allValues = [v3 allValues];
  v6 = [(SDNodeCoalescer *)nodeCoalescer coalescedNodesForNewAvailableNodes:allValues];

  [(SDAirDropDiscoveryLogger *)self->_airDropDiscoveryLogger updateWithAirDropNodes:v6];
  [(SDNodeBrowser *)self updateSelectionReasonInNodes:v6];

  return v6;
}

- (void)unloadBonjour
{
  bonjourDomains = self->_bonjourDomains;
  if (bonjourDomains)
  {
    allObjects = [(NSMutableSet *)bonjourDomains allObjects];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(allObjects);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          v10 = +[SDServerBrowser sharedBrowser];
          [v10 stopBrowsingDomain:v9];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 removeObserver:self name:@"com.apple.sharingd.BonjourChanged" object:0];

    v12 = self->_bonjourDomains;
    self->_bonjourDomains = 0;
  }
}

- (void)unloadWindows
{
  windowsWorkgroups = self->_windowsWorkgroups;
  if (windowsWorkgroups)
  {
    allObjects = [(NSMutableSet *)windowsWorkgroups allObjects];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(allObjects);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          v10 = +[SDServerBrowser sharedBrowser];
          [v10 stopBrowsingWorkgroup:v9];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 removeObserver:self name:@"com.apple.sharingd.WindowsChanged" object:0];

    v12 = self->_windowsWorkgroups;
    self->_windowsWorkgroups = 0;
  }
}

- (void)unloadDomains
{
  if (self->_domainBrowser)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:@"com.apple.sharingd.DomainsChanged" object:0];

    [(SDDomainBrowser *)self->_domainBrowser stop];
    domainBrowser = self->_domainBrowser;
    self->_domainBrowser = 0;
  }
}

- (void)unloadWorkgroups
{
  if (self->_workgroupBrowser)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:@"com.apple.sharingd.WorkgroupsChanged" object:0];

    [(SDWorkgroupBrowser *)self->_workgroupBrowser stop];
    workgroupBrowser = self->_workgroupBrowser;
    self->_workgroupBrowser = 0;
  }
}

- (void)unloadSharePoints
{
  sharePointBrowser = self->_sharePointBrowser;
  if (sharePointBrowser)
  {
    [(SDSharePointBrowser *)sharePointBrowser setDelegate:0];
    [(SDSharePointBrowser *)self->_sharePointBrowser stop];
    v4 = self->_sharePointBrowser;
    self->_sharePointBrowser = 0;
  }
}

- (void)unloadConnected
{
  if (self->_connectedBrowser)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:@"com.apple.sharingd.ConnectedChanged" object:0];

    [(SDConnectedBrowser *)self->_connectedBrowser stop];
    connectedBrowser = self->_connectedBrowser;
    self->_connectedBrowser = 0;
  }
}

- (void)unloadManaged
{
  if (self->_managedBrowser)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:@"com.apple.sharingd.ManagedChanged" object:0];

    [(SDManagedBrowser *)self->_managedBrowser stop];
    managedBrowser = self->_managedBrowser;
    self->_managedBrowser = 0;
  }
}

- (void)unloadClassroom
{
  if (self->_classroomBrowser)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:@"com.apple.sharingd.ClassroomChanged" object:0];

    [(SDClassroomBrowser *)self->_classroomBrowser stop];
    classroomBrowser = self->_classroomBrowser;
    self->_classroomBrowser = 0;
  }
}

- (void)unloadODisk
{
  odiskDomains = self->_odiskDomains;
  if (odiskDomains)
  {
    allObjects = [(NSMutableSet *)odiskDomains allObjects];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(allObjects);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          v10 = +[SDServerBrowser sharedBrowser];
          [v10 stopODiskBrowsing:v9];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 removeObserver:self name:@"com.apple.sharingd.ODisksChanged" object:0];

    v12 = self->_odiskDomains;
    self->_odiskDomains = 0;
  }
}

- (void)unloadAirDrop
{
  airDropDomains = self->_airDropDomains;
  if (airDropDomains)
  {
    allObjects = [(NSMutableSet *)airDropDomains allObjects];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(allObjects);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          v10 = +[SDServerBrowser sharedBrowser];
          [v10 stopAirDropBrowsing:v9];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 removeObserver:self name:@"com.apple.sharingd.AirDropChanged" object:0];

    v12 = self->_airDropDomains;
    self->_airDropDomains = 0;
  }
}

- (void)unloadSidebarPrefsMonitor
{
  if ([(NSString *)self->_kind isEqual:kSFBrowserKindNetwork])
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:@"com.apple.sharingd.FinderPrefsChanged" object:0];
  }
}

- (void)unloadRapport
{
  if (self->_rapportBrowser)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:@"com.apple.sharingd.RapportChanged" object:0];

    [(SDRapportBrowser *)self->_rapportBrowser stop];
    rapportBrowser = self->_rapportBrowser;
    self->_rapportBrowser = 0;
  }
}

- (void)start
{
  if (!self->_coalescer)
  {
    objc_initWeak(&location, self);
    v3 = objc_opt_new();
    coalescer = self->_coalescer;
    self->_coalescer = v3;

    [(CUCoalescer *)self->_coalescer setDispatchQueue:self->_queue];
    [(CUCoalescer *)self->_coalescer setMaxDelay:0.05];
    [(CUCoalescer *)self->_coalescer setMinDelay:0.02];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_1001DB370;
    v15 = &unk_1008CDD98;
    objc_copyWeak(&v16, &location);
    [(CUCoalescer *)self->_coalescer setActionHandler:&v12];
    parent = self->_parent;
    if (SFNodeIsNeighborhood())
    {
      [(SDNodeBrowser *)self loadBonjour:v12];
      [(SDNodeBrowser *)self loadWindows];
      [(SDNodeBrowser *)self loadDomains];
    }

    else
    {
      v6 = self->_parent;
      if (SFNodeIsServer())
      {
        [(SDNodeBrowser *)self loadSharePoints:v12];
      }
    }

    v7 = self->_parent;
    if (SFNodeIsRoot())
    {
      [(SDNodeBrowser *)self loadWorkgroups];
      [(SDNodeBrowser *)self loadConnected];
      [(SDNodeBrowser *)self loadManaged];
      [(SDNodeBrowser *)self loadClassroom];
      [(SDNodeBrowser *)self loadODisk];
      [(SDNodeBrowser *)self loadRapport];
      [(SDNodeBrowser *)self loadAirDrop];
      [(SDNodeBrowser *)self loadSidebarPrefsMonitor];
    }

    [(CUCoalescer *)self->_coalescer trigger:v12];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  if (!self->_airDropDiscoveryLogger)
  {
    v8 = objc_alloc_init(SDAirDropDiscoveryLogger);
    airDropDiscoveryLogger = self->_airDropDiscoveryLogger;
    self->_airDropDiscoveryLogger = v8;

    v10 = [(NSDictionary *)self->_options objectForKeyedSubscript:kSFBrowserOptionsShouldDisableDiscoveryMetricsKey];
    bOOLValueSafe = [v10 BOOLValueSafe];

    if (bOOLValueSafe)
    {
      self->_shouldCollectNodeCoalescerMetrics = 0;
    }

    self->_startTime = CFAbsoluteTimeGetCurrent();
  }
}

- (void)stop
{
  if (self->_coalescer)
  {
    [(SDNodeBrowser *)self unloadBonjour];
    [(SDNodeBrowser *)self unloadWindows];
    [(SDNodeBrowser *)self unloadDomains];
    [(SDNodeBrowser *)self unloadSharePoints];
    [(SDNodeBrowser *)self unloadWorkgroups];
    [(SDNodeBrowser *)self unloadConnected];
    [(SDNodeBrowser *)self unloadManaged];
    [(SDNodeBrowser *)self unloadClassroom];
    [(SDNodeBrowser *)self unloadODisk];
    [(SDNodeBrowser *)self unloadAirDrop];
    [(SDNodeBrowser *)self unloadRapport];
    parent = self->_parent;
    if (SFNodeIsRoot())
    {
      [(SDNodeBrowser *)self unloadSidebarPrefsMonitor];
    }

    v4 = self->_parent;
    SFNodeSetConnectionState();
    [(CUCoalescer *)self->_coalescer invalidate];
    coalescer = self->_coalescer;
    self->_coalescer = 0;
  }

  airDropDiscoveryLogger = self->_airDropDiscoveryLogger;
  if (airDropDiscoveryLogger)
  {
    if (self->_shouldCollectNodeCoalescerMetrics)
    {
      [(SDAirDropDiscoveryLogger *)airDropDiscoveryLogger logMetricsWithSessionTime:CFAbsoluteTimeGetCurrent() - self->_startTime];
      airDropDiscoveryLogger = self->_airDropDiscoveryLogger;
    }

    self->_airDropDiscoveryLogger = 0;

    self->_startTime = 0.0;
  }
}

- (void)appendAllNode:(id)node
{
  nodeCopy = node;
  if (!qword_10098A178)
  {
    v3 = sub_1001171C4(@"All...");
    qword_10098A178 = SFNodeCreate();
    SFNodeAddKind();
    if (v3)
    {
      CFRelease(v3);
    }
  }

  [nodeCopy addObject:qword_10098A178];
}

- (id)nodesInternal:(BOOL)internal
{
  internalCopy = internal;
  v16 = 0;
  neighborhoodNodes = [(SDNodeBrowser *)self neighborhoodNodes];
  v6 = [neighborhoodNodes count];
  v7 = objc_opt_new();
  parent = self->_parent;
  if (SFNodeIsRoot())
  {
    v9 = internalCopy;
  }

  else
  {
    v9 = 0;
  }

  if ([(NSString *)self->_kind isEqual:kSFBrowserKindRemoteDisc])
  {
    odiskNodes = [(SDNodeBrowser *)self odiskNodes];
LABEL_8:
    v11 = odiskNodes;
    [v7 addObjectsFromArray:odiskNodes];
    goto LABEL_12;
  }

  if ([(NSString *)self->_kind isEqual:kSFBrowserKindAirDrop])
  {
    odiskNodes = [(SDNodeBrowser *)self airDropNodes];
    goto LABEL_8;
  }

  v11 = objc_opt_new();
  [(SDNodeBrowser *)self addBonjourChildrenFromCache:v11];
  [(SDNodeBrowser *)self addWindowsChildrenFromCache:v11];
  [(SDNodeBrowser *)self addManagedChildrenFromCache:v11];
  [(SDNodeBrowser *)self addConnectedChildrenFromCache:v11];
  allValues = [v11 allValues];
  if (v9)
  {
    v13 = [(SDNodeBrowser *)self sidebarNodesFromServerNodes:allValues nonServerCount:v6 addAllNode:&v16];

    allValues = v13;
  }

  [v7 addObjectsFromArray:allValues];

LABEL_12:
  if (self->_sharePointBrowser)
  {
    sharePointNodes = [(SDNodeBrowser *)self sharePointNodes];
    [v7 addObjectsFromArray:sharePointNodes];
  }

  if (v9)
  {
    if (v16 == 1 && [(SDStatusMonitor *)self->_monitor allEnabled])
    {
      [(SDNodeBrowser *)self appendAllNode:v7];
    }
  }

  else if (v6)
  {
    [v7 addObjectsFromArray:neighborhoodNodes];
  }

  return v7;
}

- (int)addNode:(__SFNode *)node
{
  connectedBrowser = self->_connectedBrowser;
  if (connectedBrowser)
  {
    return [(SDConnectedBrowser *)connectedBrowser addNode:node];
  }

  else
  {
    return -1;
  }
}

- (int)removeNode:(__SFNode *)node
{
  v5 = SFNodeCopyKinds();
  if (!v5)
  {
    return -1;
  }

  v6 = v5;
  if (CFSetContainsValue(v5, kSFNodeKindPerson) || (connectedBrowser = self->_connectedBrowser) == 0)
  {
    v7 = -1;
  }

  else
  {
    v7 = [(SDConnectedBrowser *)connectedBrowser removeNode:node];
  }

  CFRelease(v6);
  return v7;
}

- (SDXPCHelperConnection)helperConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_helperConnection);

  return WeakRetained;
}

- (SDNodeBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end