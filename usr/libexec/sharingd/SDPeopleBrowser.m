@interface SDPeopleBrowser
- (SDPeopleBrowser)init;
- (SDPeopleBrowserDiffableDelegate)diffableDelegate;
- (void)dealloc;
- (void)networkBrowser:(id)a3 nodesChangedForParent:(__SFNode *)a4 protocol:(id)a5 error:(int)a6;
- (void)start;
- (void)stop;
@end

@implementation SDPeopleBrowser

- (SDPeopleBrowser)init
{
  v6.receiver = self;
  v6.super_class = SDPeopleBrowser;
  v2 = [(SDPeopleBrowser *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    nodes = v2->_nodes;
    v2->_nodes = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(SDPeopleBrowser *)self stop];
  v3.receiver = self;
  v3.super_class = SDPeopleBrowser;
  [(SDPeopleBrowser *)&v3 dealloc];
}

- (void)start
{
  if (self->_networkBrowser)
  {
    v2 = daemon_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1000AA734(v2);
    }
  }

  else
  {
    v4 = kSFBrowserKindAirDrop;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000A9D5C;
    v24[3] = &unk_1008CF110;
    v24[4] = sub_1001171C4(kSFBrowserKindAirDrop);
    v2 = objc_retainBlock(v24);
    v5 = SFNodeCreate();
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000A9D6C;
    v23[3] = &unk_1008CF110;
    v23[4] = v5;
    v6 = objc_retainBlock(v23);
    SFNodeAddKind();
    SFNodeAddKind();
    SFNodeAddDomain();
    if (v5)
    {
      SFNodeAddKind();
    }

    v7 = [[SDNetworkBrowser alloc] initWithKind:v4 rootNode:v5];
    networkBrowser = self->_networkBrowser;
    self->_networkBrowser = v7;

    v9 = [(SDPeopleBrowser *)self helperConnection];
    [(SDNetworkBrowser *)self->_networkBrowser setHelperConnection:v9];

    v10 = [(SDPeopleBrowser *)self bundleID];
    [(SDNetworkBrowser *)self->_networkBrowser setBundleID:v10];

    [(SDNetworkBrowser *)self->_networkBrowser setDelegate:self];
    v11 = [(SDPeopleBrowser *)self options];
    [(SDNetworkBrowser *)self->_networkBrowser setOptions:v11];

    v12 = self->_networkBrowser;
    v13 = [(SDPeopleBrowser *)self sessionID];
    [(SDNetworkBrowser *)v12 openNode:v5 forProtocol:v13 flags:0];

    v14 = [(SDPeopleBrowser *)self sessionID];
    v15 = [NSString stringWithFormat:@"SDPeopleBrowser for session %@", v14];

    v16 = [(SDPeopleBrowser *)self helperConnection];

    if (v16)
    {
      v17 = daemon_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        sub_1000AA778(v17);
      }

      v18 = [(SDPeopleBrowser *)self helperConnection];
      [v18 invalidate];
    }

    v19 = [[SDXPCHelperConnection alloc] initWithQueue:0];
    [(SDPeopleBrowser *)self setHelperConnection:v19];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000A9D7C;
    v22[3] = &unk_1008CDEA0;
    v22[4] = v15;
    v20 = [(SDPeopleBrowser *)self helperConnection];
    [v20 setInvalidationHandler:v22];

    v21 = [(SDPeopleBrowser *)self helperConnection];
    [v21 activate];

    (v6[2])(v6);
    (*(v2 + 16))(v2);
  }
}

- (void)stop
{
  [(SDNetworkBrowser *)self->_networkBrowser invalidate];
  networkBrowser = self->_networkBrowser;
  self->_networkBrowser = 0;

  v4 = [(SDPeopleBrowser *)self helperConnection];
  [v4 invalidate];

  [(SDPeopleBrowser *)self setHelperConnection:0];
}

- (void)networkBrowser:(id)a3 nodesChangedForParent:(__SFNode *)a4 protocol:(id)a5 error:(int)a6
{
  v8 = a3;
  v9 = magic_head_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000AA838(v9);
  }

  v10 = objc_opt_new();
  v11 = [v8 childrenForNode:a4];
  people = self->_people;
  v48 = v8;
  if (people)
  {
    v13 = people;
  }

  else
  {
    v13 = objc_opt_new();
  }

  v49 = v13;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v11;
  v14 = [obj countByEnumeratingWithState:&v62 objects:v72 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v63;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v63 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v62 + 1) + 8 * i);
        v19 = SFNodeCopyRealName();
        v20 = [v19 lowercaseString];

        v21 = [(NSMutableDictionary *)self->_nodes objectForKeyedSubscript:v20];
        if (v21)
        {
          v22 = v21;
          [v21 updateWithSFNode:v18];
        }

        else
        {
          v22 = [SFAirDropNode nodeWithSFNode:v18];
          v23 = [v22 transportBundleID];

          if (!v23)
          {
            [v22 setTransportBundleID:UIActivityTypeAirDrop];
          }

          [(NSMutableDictionary *)self->_nodes setObject:v22 forKeyedSubscript:v20];
        }

        [v10 addObject:v22];
      }

      v15 = [obj countByEnumeratingWithState:&v62 objects:v72 count:16];
    }

    while (v15);
  }

  v52 = +[NSMutableArray array];
  v47 = +[NSMutableArray array];
  v51 = +[NSMutableArray array];
  v50 = +[NSMutableArray array];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v24 = v49;
  v25 = [(NSArray *)v24 countByEnumeratingWithState:&v58 objects:v71 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v59;
    do
    {
      for (j = 0; j != v26; j = j + 1)
      {
        if (*v59 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v58 + 1) + 8 * j);
        if ([v10 containsObject:v29])
        {
          [v52 addObject:v29];
        }

        else
        {
          [v51 addObject:v29];
          v30 = [v29 contactIdentifier];
          if (v30)
          {
            [v50 addObject:v30];
          }

          v31 = magic_head_log();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [v29 displayName];
            v33 = [v29 nodeIdentifier];
            *buf = 138412546;
            v68 = v32;
            v69 = 2112;
            v70 = v33;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Removing person %@ (%@)", buf, 0x16u);
          }
        }
      }

      v26 = [(NSArray *)v24 countByEnumeratingWithState:&v58 objects:v71 count:16];
    }

    while (v26);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v34 = v10;
  v35 = [v34 countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v55;
    do
    {
      for (k = 0; k != v36; k = k + 1)
      {
        if (*v55 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v54 + 1) + 8 * k);
        if (![(NSArray *)v24 containsObject:v39])
        {
          [v47 addObject:v39];
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v54 objects:v66 count:16];
    }

    while (v36);
  }

  v40 = [v52 arrayByAddingObjectsFromArray:v47];
  v41 = [v40 sortedArrayUsingComparator:&stru_1008CF150];
  v42 = [NSPredicate predicateWithBlock:&stru_1008CF190];
  v43 = [v41 filteredArrayUsingPredicate:v42];

  v44 = self->_people;
  self->_people = v43;
  v45 = v43;

  WeakRetained = objc_loadWeakRetained(&self->_diffableDelegate);
  [WeakRetained browser:self didUpdatePeople:self->_people deletedContactIdentifiers:v50];
}

- (SDPeopleBrowserDiffableDelegate)diffableDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_diffableDelegate);

  return WeakRetained;
}

@end