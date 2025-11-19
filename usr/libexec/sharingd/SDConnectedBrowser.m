@interface SDConnectedBrowser
+ (id)sharedBrowser;
- (BOOL)opticalDisk:(id)a3;
- (NSArray)airDropNodes;
- (SDConnectedBrowser)init;
- (id)URLForRemounting:(id)a3;
- (id)connectedNodes;
- (id)recentNodes;
- (void)addAirDropPerson:(__SFNode *)a3;
- (void)browseAfterDelay:(double)a3;
- (void)combineRecentAndConnectedNodes:(BOOL)a3;
- (void)postNotification;
- (void)removeAirDropPerson:(__SFNode *)a3;
- (void)removeAirDropPersonInternal:(__SFNode *)a3;
- (void)setODiskServers:(id)a3;
- (void)setServers:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation SDConnectedBrowser

+ (id)sharedBrowser
{
  if (qword_10098A2E0 != -1)
  {
    sub_10021281C();
  }

  v3 = qword_10098A2E8;

  return v3;
}

- (SDConnectedBrowser)init
{
  v10.receiver = self;
  v10.super_class = SDConnectedBrowser;
  v2 = [(SDConnectedBrowser *)&v10 init];
  v3 = v2;
  if (v2)
  {
    timer = v2->_timer;
    v2->_timer = 0;

    servers = v3->_servers;
    v3->_servers = 0;

    *&v3->_clientCount = 0;
    v3->_connectedCount = 0;
    odiskServers = v3->_odiskServers;
    v3->_odiskServers = 0;

    v3->_airDropPeople = 0;
    v3->_sendNotification = 0;
    v7 = +[SDStatusMonitor sharedMonitor];
    monitor = v3->_monitor;
    v3->_monitor = v7;
  }

  return v3;
}

- (void)setServers:(id)a3
{
  v5 = a3;
  if (sub_100118058(self->_servers, v5))
  {
    objc_storeStrong(&self->_servers, a3);
    self->_sendNotification = 1;
  }
}

- (void)setODiskServers:(id)a3
{
  v5 = a3;
  if (sub_100118058(self->_odiskServers, v5))
  {
    objc_storeStrong(&self->_odiskServers, a3);
    self->_sendNotification = 1;
  }
}

- (void)postNotification
{
  if (self->_sendNotification)
  {
    self->_sendNotification = 0;
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 postNotificationName:@"com.apple.sharingd.ConnectedChanged" object:0 userInfo:0];
  }
}

- (void)browseAfterDelay:(double)a3
{
  timer = self->_timer;
  v4 = sub_1001F0530(a3);

  sub_1001F05F0(timer, v4);
}

- (id)recentNodes
{
  v2 = objc_opt_new();
  v3 = [v2 allValues];

  return v3;
}

- (BOOL)opticalDisk:(id)a3
{
  cf = 0;
  if (_CFURLGetVolumePropertyFlags())
  {
    return 0;
  }

  v4 = browser_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100212830(&cf, v4);
  }

  CFRelease(cf);
  return 0;
}

- (id)URLForRemounting:(id)a3
{
  v9 = 0;
  v8 = 0;
  v3 = [a3 getResourceValue:&v9 forKey:NSURLVolumeURLForRemountingKey error:&v8];
  v4 = v9;
  v5 = v8;
  if ((v3 & 1) == 0)
  {
    v6 = browser_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1002128AC(v5, v6);
    }
  }

  return v4;
}

- (id)connectedNodes
{
  v40 = objc_opt_new();
  v44 = objc_opt_new();
  v43 = objc_opt_new();
  v39 = objc_opt_new();
  v53 = NSURLVolumeURLForRemountingKey;
  v3 = [NSArray arrayWithObjects:&v53 count:1];
  v4 = +[NSFileManager defaultManager];
  v36 = v3;
  v5 = [v4 mountedVolumeURLsIncludingResourceValuesForKeys:v3 options:2];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v49;
    v37 = kSFNodeProtocolAFP;
    v38 = kSFNodeProtocolFile;
    v41 = *v49;
    v42 = v6;
    v46 = self;
    do
    {
      v10 = 0;
      v45 = v8;
      do
      {
        if (*v49 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v48 + 1) + 8 * v10);
        v12 = [(SDConnectedBrowser *)self opticalDisk:v11];
        v13 = [(SDConnectedBrowser *)self URLForRemounting:v11];
        v14 = v13;
        if ((v12 & 1) != 0 || v13)
        {
          v15 = [v13 host];
          v16 = [v14 scheme];
          v17 = v16;
          if (v12)
          {
            v47 = v16;
            v18 = variable initialization expression of HeadphoneProxFeatureClient.delegate();
            v17 = v47;
            if (v18)
            {
              goto LABEL_10;
            }

LABEL_31:

            goto LABEL_32;
          }

          if (v15)
          {
            v22 = v16 == 0;
          }

          else
          {
            v22 = 1;
          }

          if (v22)
          {
            goto LABEL_31;
          }

          v47 = v16;
          v23 = [v16 isEqual:v38];
          v17 = v47;
          if (v23)
          {
            goto LABEL_31;
          }

          v18 = [(SDStatusMonitor *)self->_monitor serverNameForHost:v15];
          if (v18)
          {
LABEL_10:
            v19 = v18;
          }

          else
          {
            v24 = _CFNetServiceCreateFromURL();
            if (!v24 || (v25 = v24, CFNetServiceGetName(v24), v19 = objc_claimAutoreleasedReturnValue(), CFRelease(v25), !v19))
            {
              if (![v47 isEqual:v37] || (sub_1001F23A8(v11), (v18 = objc_claimAutoreleasedReturnValue()) == 0))
              {
                v18 = v15;
              }

              goto LABEL_10;
            }
          }

          if ([(__CFString *)v15 isEqual:v19])
          {
            v20 = sub_1001F2B40(v15);
            v21 = SFNodeCreate();
            CFRelease(v20);
          }

          else
          {
            v21 = SFNodeCreate();
          }

          v26 = v43;
          v27 = v44;
          v28 = v19;
          if ((v12 & 1) == 0)
          {
            v29 = [v14 port];
            v30 = [v29 intValue];

            SFNodeSetHostName();
            v31 = sub_1001174F4(v47, 0, 0, v15, v30, 0, 0, 0);
            v27 = v39;
            v26 = v40;
            v28 = v15;
            if (v31)
            {
              v32 = v31;
              SFNodeSetURL();
              CFRelease(v32);
              v27 = v39;
              v26 = v40;
              v28 = v15;
            }
          }

          SFNodeAddKind();
          [(SDConnectedBrowser *)v46 setNodeModel:v21 protocol:v47 url:v14];
          [v26 setValue:v21 forKey:v28];
          CFRelease(v21);
          v33 = [v27 objectForKeyedSubscript:v19];
          if (!v33)
          {
            v33 = +[NSMutableArray array];
            [v27 setValue:v33 forKey:v19];
          }

          [v33 addObject:v11];

          v8 = v45;
          self = v46;
          v9 = v41;
          v6 = v42;
          v17 = v47;
          goto LABEL_31;
        }

LABEL_32:

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v8);
  }

  [(SDStatusMonitor *)self->_monitor setODiskMountPoints:v44];
  [(SDStatusMonitor *)self->_monitor setServerMountPoints:v39];
  [(SDConnectedBrowser *)self setODiskServers:v43];
  v34 = [v40 allValues];

  return v34;
}

- (void)combineRecentAndConnectedNodes:(BOOL)a3
{
  v31 = a3;
  v3 = self;
  v33 = [(SDConnectedBrowser *)self recentNodes];
  v4 = [(SDConnectedBrowser *)v3 connectedNodes];
  v5 = objc_opt_new();
  v30 = [v4 count];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  v35 = v3;
  if (v6)
  {
    v7 = v6;
    v8 = *v41;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v40 + 1) + 8 * i);
        v11 = SFNodeCopyRealName();
        servers = v3->_servers;
        if (servers && ([(NSDictionary *)servers objectForKeyedSubscript:v11], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
        {
          v14 = SFNodeCopyURL();
          v15 = SFNodeCopyModel();
          v16 = SFNodeCopyRealName();
          SFNodeSetURL();
          SFNodeSetModel();
          [v5 setObject:v13 forKeyedSubscript:v16];
          if (v15)
          {
            CFRelease(v15);
          }

          if (v14)
          {
            CFRelease(v14);
          }

          v3 = v35;
        }

        else
        {
          Copy = SFNodeCreateCopy();
          v16 = SFNodeCopyRealName();
          [v5 setObject:Copy forKeyedSubscript:v16];
          CFRelease(Copy);
        }

        SFNodeAddKind();
        CFRelease(v11);
      }

      v7 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v7);
  }

  if (v30 != v3->_connectedCount)
  {
    v3->_connectedCount = v30;
    v3->_sendNotification = 1;
  }

  if (v31)
  {
    [(SDConnectedBrowser *)v3 addToRecents:v5];
  }

  v32 = [v33 count];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v18 = v33;
  v19 = [v18 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v37;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v36 + 1) + 8 * j);
        v24 = SFNodeCopyRealName();
        v25 = [v5 objectForKeyedSubscript:v24];

        if (v25)
        {
          goto LABEL_26;
        }

        v27 = v35->_servers;
        if (v27)
        {
          v25 = [(NSDictionary *)v27 objectForKeyedSubscript:v24];

          if (v25)
          {
            v28 = SFNodeCopyURL();
            SFNodeSetURL();
            SFNodeRemoveKind();
            if (v28)
            {
              CFRelease(v28);
            }

LABEL_26:
            v26 = SFNodeCopyRealName();
            [v5 setObject:v25 forKeyedSubscript:v26];
            goto LABEL_32;
          }
        }

        v26 = SFNodeCreateCopy();
        v29 = SFNodeCopyRealName();
        [v5 setObject:v26 forKeyedSubscript:v29];
        CFRelease(v29);
LABEL_32:
        CFRelease(v26);
        SFNodeAddKind();
      }

      v20 = [v18 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v20);
  }

  if (v32 != v35->_recentsCount)
  {
    v35->_recentsCount = v32;
    v35->_sendNotification = 1;
  }

  [(SDConnectedBrowser *)v35 setServers:v5];
}

- (void)addAirDropPerson:(__SFNode *)a3
{
  airDropPeople = self->_airDropPeople;
  if (!airDropPeople)
  {
    airDropPeople = CFBagCreateMutable(0, 0, &kCFTypeBagCallBacks);
    self->_airDropPeople = airDropPeople;
  }

  CFBagAddValue(airDropPeople, a3);
  if (CFBagGetCountOfValue(self->_airDropPeople, a3) == 1)
  {
    SFNodeAddKind();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002123A0;
    block[3] = &unk_1008CDEA0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (NSArray)airDropNodes
{
  v2 = sub_10011725C(0, 0, self->_airDropPeople);
  if (v2)
  {
    v3 = v2;
    v4 = [(__CFSet *)v2 allObjects];
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)removeAirDropPersonInternal:(__SFNode *)a3
{
  CFBagRemoveValue(self->_airDropPeople, a3);
  if (!CFBagGetCountOfValue(self->_airDropPeople, a3))
  {
    SFNodeRemoveKind();

    dispatch_async(&_dispatch_main_q, &stru_1008D4500);
  }
}

- (void)removeAirDropPerson:(__SFNode *)a3
{
  CFRetain(a3);
  v5 = [(SDStatusMonitor *)self->_monitor wirelessEnabled];
  v6 = 0.0;
  if (v5)
  {
    v6 = 2.0;
  }

  v7 = sub_1001F0530(v6);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002125E8;
  v8[3] = &unk_1008CFD30;
  v8[4] = self;
  v8[5] = a3;
  dispatch_after(v7, &_dispatch_main_q, v8);
}

- (void)start
{
  clientCount = self->_clientCount;
  self->_clientCount = clientCount + 1;
  if (!clientCount)
  {
    v9[7] = v2;
    v9[8] = v3;
    if (!self->_timer)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100212728;
      v9[3] = &unk_1008CDEA0;
      v9[4] = self;
      v6 = sub_1001F0548(1, &_dispatch_main_q, v9);
      timer = self->_timer;
      self->_timer = v6;

      dispatch_resume(self->_timer);
    }

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:self selector:"volumesChanged:" name:@"com.apple.sharingd.VolumesChanged" object:0];
  }
}

- (void)stop
{
  v6 = self->_clientCount - 1;
  self->_clientCount = v6;
  if (!v6)
  {
    v13 = v2;
    timer = self->_timer;
    if (timer)
    {
      dispatch_source_cancel(timer);
      v9 = self->_timer;
      self->_timer = 0;
    }

    v10 = [NSNotificationCenter defaultCenter:v3];
    [v10 removeObserver:self];

    servers = self->_servers;
    self->_servers = 0;

    odiskServers = self->_odiskServers;
    self->_odiskServers = 0;

    self->_recentsCount = 0;
    self->_connectedCount = 0;
  }
}

@end