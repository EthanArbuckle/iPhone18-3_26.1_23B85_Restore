@interface PRXPCServicesManager
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (PRXPCServicesManager)init;
- (void)createServices;
- (void)setupXPCListeners;
- (void)startServices;
@end

@implementation PRXPCServicesManager

- (PRXPCServicesManager)init
{
  v6.receiver = self;
  v6.super_class = PRXPCServicesManager;
  v2 = [(PRXPCServicesManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.nearbyd.xpcQueue", 0);
    xpcQueue = v2->_xpcQueue;
    v2->_xpcQueue = v3;

    [(PRXPCServicesManager *)v2 createServices];
    [(PRXPCServicesManager *)v2 setupXPCListeners];
  }

  return v2;
}

- (void)createServices
{
  v3 = objc_alloc_init(NSMutableDictionary);
  machServices = self->_machServices;
  self->_machServices = v3;

  v5 = objc_alloc_init(NSMutableArray);
  listeners = self->_listeners;
  self->_listeners = v5;

  v7 = [PRBeaconRangingService serviceWithQueue:self->_xpcQueue];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v8 = [v7 machServicesNames];
  v9 = [v8 countByEnumeratingWithState:&v64 objects:v73 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v65;
    do
    {
      v12 = 0;
      do
      {
        if (*v65 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(NSMutableDictionary *)self->_machServices setObject:v7 forKey:*(*(&v64 + 1) + 8 * v12)];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v64 objects:v73 count:16];
    }

    while (v10);
  }

  v13 = [PRCompanionRangingService serviceWithQueue:self->_xpcQueue];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v14 = [v13 machServicesNames];
  v15 = [v14 countByEnumeratingWithState:&v60 objects:v72 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v61;
    do
    {
      v18 = 0;
      do
      {
        if (*v61 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(NSMutableDictionary *)self->_machServices setObject:v13 forKey:*(*(&v60 + 1) + 8 * v18)];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v60 objects:v72 count:16];
    }

    while (v16);
  }

  v19 = [PRBTRangingService serviceWithQueue:self->_xpcQueue];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v20 = [v19 machServicesNames];
  v21 = [v20 countByEnumeratingWithState:&v56 objects:v71 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v57;
    do
    {
      v24 = 0;
      do
      {
        if (*v57 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(NSMutableDictionary *)self->_machServices setObject:v19 forKey:*(*(&v56 + 1) + 8 * v24)];
        v24 = v24 + 1;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v56 objects:v71 count:16];
    }

    while (v22);
  }

  v43 = v7;

  v25 = objc_alloc_init(PRDiagnosticsService);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v26 = [(PRDiagnosticsService *)v25 machServicesNames];
  v27 = [v26 countByEnumeratingWithState:&v52 objects:v70 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v53;
    do
    {
      v30 = 0;
      do
      {
        if (*v53 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(NSMutableDictionary *)self->_machServices setObject:v25 forKey:*(*(&v52 + 1) + 8 * v30)];
        v30 = v30 + 1;
      }

      while (v28 != v30);
      v28 = [v26 countByEnumeratingWithState:&v52 objects:v70 count:16];
    }

    while (v28);
  }

  v31 = [PRRangingService serviceWithQueue:self->_xpcQueue];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v32 = [v31 machServicesNames];
  v33 = [v32 countByEnumeratingWithState:&v48 objects:v69 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v49;
    do
    {
      v36 = 0;
      do
      {
        if (*v49 != v35)
        {
          objc_enumerationMutation(v32);
        }

        [(NSMutableDictionary *)self->_machServices setObject:v31 forKey:*(*(&v48 + 1) + 8 * v36)];
        v36 = v36 + 1;
      }

      while (v34 != v36);
      v34 = [v32 countByEnumeratingWithState:&v48 objects:v69 count:16];
    }

    while (v34);
  }

  v37 = [PRNearbyInteractionService serviceWithQueue:self->_xpcQueue];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v38 = [v37 machServicesNames];
  v39 = [v38 countByEnumeratingWithState:&v44 objects:v68 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v45;
    do
    {
      v42 = 0;
      do
      {
        if (*v45 != v41)
        {
          objc_enumerationMutation(v38);
        }

        [(NSMutableDictionary *)self->_machServices setObject:v37 forKey:*(*(&v44 + 1) + 8 * v42)];
        v42 = v42 + 1;
      }

      while (v40 != v42);
      v40 = [v38 countByEnumeratingWithState:&v44 objects:v68 count:16];
    }

    while (v40);
  }
}

- (void)setupXPCListeners
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PRXPCServicesManager] setting up XPC listeners", buf, 2u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSMutableDictionary *)self->_machServices allKeys];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v17 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[PRXPCServicesManager] setting up XPC listener for mach service: %@", buf, 0xCu);
        }

        v11 = [[NSXPCListener alloc] initWithMachServiceName:v9];
        [v11 setDelegate:self];
        [(NSMutableArray *)self->_listeners addObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)startServices
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = self->_listeners;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v14;
    *&v4 = 138412290;
    v12 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v9;
          v11 = [v8 serviceName];
          *buf = v12;
          v18 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[PRXPCServicesManager] resuming listener for mach service: %@", buf, 0xCu);
        }

        [v8 resume];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v5);
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[PRXPCServicesManager] listener shouldAcceptNewConnection. Connection: %@", &v15, 0xCu);
  }

  machServices = self->_machServices;
  v10 = [v7 serviceName];
  v11 = [(NSMutableDictionary *)machServices objectForKey:v10];

  if (v11)
  {
    v12 = [v11 shouldAcceptNewConnection:v7];
  }

  else
  {
    v13 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049D48C(v13, v7);
    }

    v12 = 0;
  }

  return v12;
}

@end