@interface RDAuthorizationBroadcaster
+ (void)initialize;
- (BOOL)hasReaderEntitlementForConnection:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)authorizationStore:(id)a3 didDetermineInitialAuthorizationValues:(id)a4;
- (void)authorizationStore:(id)a3 didUpdateAuthorizationsForBundleId:(id)a4 sensors:(id)a5;
- (void)completeEnrollmentForBundleId:(id)a3 sensors:(id)a4;
- (void)dealloc;
- (void)legacyResearchStudyBundleIDs:(id)a3;
- (void)legacyResearchStudyEntitlement:(id)a3;
- (void)registerForAuthorizationChangeNotificationsWithEffectiveBundleId:(id)a3;
- (void)retrieveCurrentAuthorizedServicesWithReply:(id)a3;
- (void)setFirstRunOnboardingCompleted:(BOOL)a3;
@end

@implementation RDAuthorizationBroadcaster

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_100071B38 = os_log_create("com.apple.SensorKit", "AuthorizationBroadcaster");
  }
}

- (void)dealloc
{
  if (self)
  {
    [(NSXPCListener *)self->_listener invalidate];
    [(NSXPCListener *)self->_listener setDelegate:0];
  }

  self->_listener = 0;
  self->_exportedInterface = 0;

  self->_remoteInterface = 0;
  self->_connectionToBundleIds = 0;

  self->_bundleIdToConnections = 0;
  objc_setProperty_nonatomic(self, v3, 0, 72);
  objc_setProperty_nonatomic(self, v4, 0, 80);
  objc_setProperty_nonatomic(self, v5, 0, 88);
  objc_setProperty_nonatomic(self, v6, 0, 96);
  dispatch_release(self->_q);
  v7.receiver = self;
  v7.super_class = RDAuthorizationBroadcaster;
  [(RDAuthorizationBroadcaster *)&v7 dealloc];
}

- (void)authorizationStore:(id)a3 didDetermineInitialAuthorizationValues:(id)a4
{
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003BD84;
  block[3] = &unk_100060E48;
  block[4] = self;
  dispatch_async(q, block);
}

- (void)authorizationStore:(id)a3 didUpdateAuthorizationsForBundleId:(id)a4 sensors:(id)a5
{
  q = self->_q;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003C14C;
  v6[3] = &unk_100061308;
  v6[4] = self;
  v6[5] = a4;
  dispatch_async(q, v6);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v6 = _os_activity_create(&_mh_execute_header, "RDAuthorizationBroadcaster new connection", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);
  v7 = qword_100071B38;
  if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_INFO))
  {
    v8 = [a4 processIdentifier];
    LODWORD(buf) = 67240192;
    HIDWORD(buf) = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "New connection from pid %{public}d", &buf, 8u);
  }

  if (self)
  {
    stateCache = self->_stateCache;
    if (stateCache)
    {
      v10 = mach_continuous_time();
      if (qword_100071B60 != -1)
      {
        dispatch_once(&qword_100071B60, &stru_100060D90);
      }

      v11 = qword_100071B68;
      v12 = *&qword_100071B70;
      v13 = *&qword_100071B78;
      TMConvertTicksToSeconds();
      if (v11 >= v10)
      {
        v14 = -v14;
      }

      if (v13 + v12 + v14 < stateCache->_localDaemonLaunchTime + 3.0 + stateCache->_remoteRTCOffset)
      {
        AnalyticsSendEventLazy();
      }
    }

    exportedInterface = self->_exportedInterface;
  }

  else
  {
    exportedInterface = 0;
  }

  [a4 setExportedInterface:exportedInterface];
  [a4 setExportedObject:self];
  if (self)
  {
    remoteInterface = self->_remoteInterface;
  }

  else
  {
    remoteInterface = 0;
  }

  [a4 setRemoteObjectInterface:remoteInterface];
  [a4 setInterruptionHandler:&stru_1000617C8];
  objc_initWeak(&buf, a4);
  objc_initWeak(&location, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10003C790;
  v18[3] = &unk_1000617F0;
  objc_copyWeak(&v19, &buf);
  objc_copyWeak(&v20, &location);
  [a4 setInvalidationHandler:v18];
  [a4 _setQueue:self->_q];
  [a4 resume];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
  objc_destroyWeak(&buf);
  os_activity_scope_leave(&state);
  return 1;
}

- (void)registerForAuthorizationChangeNotificationsWithEffectiveBundleId:(id)a3
{
  v4 = self;
  dispatch_assert_queue_V2(self->_q);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&_mh_execute_header, "RDAuthorizationBroadcaster registration", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);
  v6 = +[NSXPCConnection currentConnection];
  v7 = v6;
  if (a3)
  {
    v8 = a3;
    if (([a3 isEqualToString:@"com.apple.private.SensorKit._compositeBundle"] & 1) == 0)
    {
      v8 = a3;
      if (![(RDAuthorizationBroadcaster *)v4 valueForEntitlement:@"com.apple.SensorKit.effective-bundle" connection:v7])
      {
        v9 = qword_100071B38;
        if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_ERROR))
        {
          v10 = [(NSXPCConnection *)v7 processIdentifier];
          *buf = 67240192;
          LODWORD(v81) = v10;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Attempting to set effective bundle identifier without proper entitlement, pid %{public}d", buf, 8u);
        }

LABEL_86:
        [(NSXPCConnection *)v7 invalidate];
        goto LABEL_87;
      }
    }
  }

  else
  {
    v8 = sub_10001B58C(v6);
    if (!v8)
    {
      v52 = qword_100071B38;
      if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_FAULT))
      {
        v53 = [(NSXPCConnection *)v7 processIdentifier];
        *buf = 67240192;
        LODWORD(v81) = v53;
        _os_log_fault_impl(&_mh_execute_header, v52, OS_LOG_TYPE_FAULT, "Failed to determine bundle id for pid %{public}d", buf, 8u);
      }

      goto LABEL_86;
    }
  }

  v11 = qword_100071B38;
  if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(NSXPCConnection *)v7 processIdentifier];
    *buf = 138543874;
    v81 = v8;
    v82 = 1026;
    v83 = v12;
    v84 = 1026;
    v85 = a3 != 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Client bundleId determined, bundle id, %{public}@, pid, %{public}d, effective bundle id used, %{public}d", buf, 0x18u);
  }

  v13 = [(NSMapTable *)v4->_connectionToBundleIds objectForKey:v7];
  if (!v13)
  {
    v13 = +[NSMutableSet set];
  }

  obj = v13;
  [v13 addObject:v8];
  [(NSMapTable *)v4->_connectionToBundleIds setObject:obj forKey:v7];
  v14 = [(NSMutableDictionary *)v4->_bundleIdToConnections objectForKeyedSubscript:v8];
  if (!v14)
  {
    v14 = +[NSMutableSet set];
  }

  [v14 addObject:v7];
  [(NSMutableDictionary *)v4->_bundleIdToConnections setObject:v14 forKeyedSubscript:v8];
  if ([-[SRAuthorizationStore readerAuthorizationBundleIdValues](v4->_authStore "readerAuthorizationBundleIdValues")])
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v55 = [obj countByEnumeratingWithState:&v62 objects:v75 count:16];
    if (v55)
    {
      v56 = *v63;
      v57 = v4;
      v54 = v7;
      do
      {
        for (i = 0; i != v55; i = i + 1)
        {
          if (*v63 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v60 = *(*(&v62 + 1) + 8 * i);
          if ([v60 isEqualToString:{@"com.apple.private.SensorKit._compositeBundle", v54}])
          {
            v15 = +[NSMutableSet set];
            v16 = [(SRAuthorizationStore *)v4->_authStore readerAuthorizationBundleIdValues];
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v17 = [v16 countByEnumeratingWithState:&v71 objects:buf count:16];
            if (v17)
            {
              v18 = *v72;
              do
              {
                for (j = 0; j != v17; j = j + 1)
                {
                  if (*v72 != v18)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v20 = [v16 objectForKeyedSubscript:*(*(&v71 + 1) + 8 * j)];
                  v69 = 0u;
                  v70 = 0u;
                  v67 = 0u;
                  v68 = 0u;
                  v21 = [v20 countByEnumeratingWithState:&v67 objects:&v76 count:16];
                  if (v21)
                  {
                    v22 = *v68;
                    do
                    {
                      for (k = 0; k != v21; k = k + 1)
                      {
                        if (*v68 != v22)
                        {
                          objc_enumerationMutation(v20);
                        }

                        v24 = *(*(&v67 + 1) + 8 * k);
                        if ([objc_msgSend(v20 objectForKeyedSubscript:{v24), "BOOLValue"}])
                        {
                          [v15 addObject:v24];
                        }
                      }

                      v21 = [v20 countByEnumeratingWithState:&v67 objects:&v76 count:16];
                    }

                    while (v21);
                  }
                }

                v17 = [v16 countByEnumeratingWithState:&v71 objects:buf count:16];
              }

              while (v17);
            }

            v25 = v57;
            v26 = [NSSet setWithSet:v15];
            v27 = v60;
          }

          else
          {
            dispatch_assert_queue_V2(v4->_q);
            v26 = +[NSMutableSet set];
            v28 = [(SRAuthorizationStore *)v4->_authStore readerAuthorizationBundleIdValues];
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            v29 = [v28 objectForKeyedSubscript:v60];
            v30 = [v29 countByEnumeratingWithState:&v76 objects:buf count:16];
            v27 = v60;
            if (v30)
            {
              v31 = *v77;
              do
              {
                for (m = 0; m != v30; m = m + 1)
                {
                  if (*v77 != v31)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v33 = *(*(&v76 + 1) + 8 * m);
                  if ([objc_msgSend(objc_msgSend(v28 objectForKeyedSubscript:{v60), "objectForKeyedSubscript:", v33), "BOOLValue"}])
                  {
                    [(NSSet *)v26 addObject:v33];
                  }
                }

                v30 = [v29 countByEnumeratingWithState:&v76 objects:buf count:16];
              }

              while (v30);
            }

            v25 = v57;
          }

          if ([v27 isEqualToString:@"com.apple.private.SensorKit._compositeBundle"])
          {
            v34 = +[NSMutableSet set];
            v35 = [(SRAuthorizationStore *)v25->_authStore readerAuthorizationBundleIdValues];
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v36 = [v35 countByEnumeratingWithState:&v71 objects:buf count:16];
            if (v36)
            {
              v61 = *v72;
              do
              {
                for (n = 0; n != v36; n = n + 1)
                {
                  if (*v72 != v61)
                  {
                    objc_enumerationMutation(v35);
                  }

                  v38 = [v35 objectForKeyedSubscript:*(*(&v71 + 1) + 8 * n)];
                  v69 = 0u;
                  v70 = 0u;
                  v67 = 0u;
                  v68 = 0u;
                  v39 = [v38 countByEnumeratingWithState:&v67 objects:&v76 count:16];
                  if (v39)
                  {
                    v40 = *v68;
                    do
                    {
                      for (ii = 0; ii != v39; ii = ii + 1)
                      {
                        if (*v68 != v40)
                        {
                          objc_enumerationMutation(v38);
                        }

                        v42 = *(*(&v67 + 1) + 8 * ii);
                        if ([v38 count] && !-[NSSet containsObject:](v26, "containsObject:", v42))
                        {
                          [v34 addObject:v42];
                        }
                      }

                      v39 = [v38 countByEnumeratingWithState:&v67 objects:&v76 count:16];
                    }

                    while (v39);
                  }
                }

                v36 = [v35 countByEnumeratingWithState:&v71 objects:buf count:16];
              }

              while (v36);
            }

            v4 = v57;
            v43 = [NSSet setWithSet:v34];
          }

          else
          {
            dispatch_assert_queue_V2(v25->_q);
            v43 = +[NSMutableSet set];
            v44 = [(SRAuthorizationStore *)v25->_authStore readerAuthorizationBundleIdValues];
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            v45 = [v44 objectForKeyedSubscript:v60];
            v46 = [v45 countByEnumeratingWithState:&v76 objects:buf count:16];
            if (v46)
            {
              v47 = *v77;
              do
              {
                for (jj = 0; jj != v46; jj = jj + 1)
                {
                  if (*v77 != v47)
                  {
                    objc_enumerationMutation(v45);
                  }

                  v49 = *(*(&v76 + 1) + 8 * jj);
                  if (([objc_msgSend(objc_msgSend(v44 objectForKeyedSubscript:{v60), "objectForKeyedSubscript:", v49), "BOOLValue"}] & 1) == 0)
                  {
                    [(NSSet *)v43 addObject:v49];
                  }
                }

                v46 = [v45 countByEnumeratingWithState:&v76 objects:buf count:16];
              }

              while (v46);
            }

            v4 = v57;
          }

          v50 = [(NSDictionary *)[(SRAuthorizationStore *)v4->_authStore readerLastModifiedAuthorizationTimes] objectForKeyedSubscript:v60];
          if (v50)
          {
            v51 = v50;
          }

          else
          {
            v51 = &__NSDictionary0__struct;
          }

          [-[NSXPCConnection remoteObjectProxy](v54 "remoteObjectProxy")];
        }

        v55 = [obj countByEnumeratingWithState:&v62 objects:v75 count:16];
      }

      while (v55);
    }
  }

LABEL_87:
  os_activity_scope_leave(&state);
}

- (void)retrieveCurrentAuthorizedServicesWithReply:(id)a3
{
  v4 = self;
  dispatch_assert_queue_V2(self->_q);
  v5 = +[NSXPCConnection currentConnection];
  if ([(RDAuthorizationBroadcaster *)v4 valueForEntitlement:@"com.apple.private.SensorKit.prerequisite.readonly" connection:v5]|| [(RDAuthorizationBroadcaster *)v4 valueForEntitlement:@"com.apple.private.SensorKit.prerequisite.readwrite" connection:v5]|| [(RDAuthorizationBroadcaster *)v4 hasReaderEntitlementForConnection:v5])
  {
    v6 = [(NSMapTable *)v4->_connectionToBundleIds objectForKey:v5];
    if (v6)
    {
      v7 = v6;
      v74 = a3;
      v77 = +[NSMutableDictionary dictionary];
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v82 = v7;
      v83 = v4;
      v80 = [v7 countByEnumeratingWithState:&v96 objects:v110 count:16];
      if (v80)
      {
        v8 = *v97;
        v78 = *v97;
        do
        {
          v9 = 0;
          do
          {
            if (*v97 != v8)
            {
              objc_enumerationMutation(v7);
            }

            v84 = v9;
            v10 = *(*(&v96 + 1) + 8 * v9);
            v86 = v10;
            if ([v10 isEqualToString:@"com.apple.private.SensorKit._compositeBundle"])
            {
              v11 = +[NSMutableSet set];
              v12 = [(SRAuthorizationStore *)v4->_authStore readerAuthorizationBundleIdValues];
              v104 = 0u;
              v105 = 0u;
              v106 = 0u;
              v107 = 0u;
              v13 = [v12 countByEnumeratingWithState:&v104 objects:buf count:16];
              if (v13)
              {
                v14 = v13;
                v15 = *v105;
                do
                {
                  for (i = 0; i != v14; i = i + 1)
                  {
                    if (*v105 != v15)
                    {
                      objc_enumerationMutation(v12);
                    }

                    v17 = [v12 objectForKeyedSubscript:*(*(&v104 + 1) + 8 * i)];
                    v100 = 0u;
                    v101 = 0u;
                    v102 = 0u;
                    v103 = 0u;
                    v18 = [v17 countByEnumeratingWithState:&v100 objects:&v111 count:16];
                    if (v18)
                    {
                      v19 = v18;
                      v20 = *v101;
                      do
                      {
                        for (j = 0; j != v19; j = j + 1)
                        {
                          if (*v101 != v20)
                          {
                            objc_enumerationMutation(v17);
                          }

                          v22 = *(*(&v100 + 1) + 8 * j);
                          if ([objc_msgSend(v17 objectForKeyedSubscript:{v22), "BOOLValue"}])
                          {
                            [v11 addObject:v22];
                          }
                        }

                        v19 = [v17 countByEnumeratingWithState:&v100 objects:&v111 count:16];
                      }

                      while (v19);
                    }
                  }

                  v14 = [v12 countByEnumeratingWithState:&v104 objects:buf count:16];
                }

                while (v14);
              }

              v23 = [NSSet setWithSet:v11];
              v7 = v82;
              v4 = v83;
              v8 = v78;
            }

            else
            {
              dispatch_assert_queue_V2(v4->_q);
              v23 = +[NSMutableSet set];
              v24 = [(SRAuthorizationStore *)v4->_authStore readerAuthorizationBundleIdValues];
              v111 = 0u;
              v112 = 0u;
              v113 = 0u;
              v114 = 0u;
              v25 = [v24 objectForKeyedSubscript:v10];
              v26 = [v25 countByEnumeratingWithState:&v111 objects:buf count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v112;
                do
                {
                  for (k = 0; k != v27; k = k + 1)
                  {
                    if (*v112 != v28)
                    {
                      objc_enumerationMutation(v25);
                    }

                    v30 = *(*(&v111 + 1) + 8 * k);
                    if ([objc_msgSend(objc_msgSend(v24 objectForKeyedSubscript:{v86), "objectForKeyedSubscript:", v30), "BOOLValue"}])
                    {
                      [(NSSet *)v23 addObject:v30];
                    }
                  }

                  v27 = [v25 countByEnumeratingWithState:&v111 objects:buf count:16];
                }

                while (v27);
              }
            }

            if (v23)
            {
              [v77 setObject:v23 forKeyedSubscript:v86];
            }

            v9 = v84 + 1;
          }

          while ((v84 + 1) != v80);
          v80 = [v7 countByEnumeratingWithState:&v96 objects:v110 count:16];
        }

        while (v80);
      }

      v76 = +[NSMutableDictionary dictionary];
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v81 = [v7 countByEnumeratingWithState:&v92 objects:v109 count:16];
      if (v81)
      {
        v31 = *v93;
        v75 = *v93;
        do
        {
          for (m = 0; m != v81; m = m + 1)
          {
            if (*v93 != v31)
            {
              objc_enumerationMutation(v7);
            }

            v87 = *(*(&v92 + 1) + 8 * m);
            if ([v87 isEqualToString:@"com.apple.private.SensorKit._compositeBundle"])
            {
              if (v4)
              {
                v79 = m;
                v33 = +[NSMutableSet set];
                v34 = [(SRAuthorizationStore *)v4->_authStore readerAuthorizationBundleIdValues];
                v104 = 0u;
                v105 = 0u;
                v106 = 0u;
                v107 = 0u;
                v35 = [v34 countByEnumeratingWithState:&v104 objects:buf count:16];
                if (v35)
                {
                  v36 = v35;
                  v37 = *v105;
                  do
                  {
                    for (n = 0; n != v36; n = n + 1)
                    {
                      if (*v105 != v37)
                      {
                        objc_enumerationMutation(v34);
                      }

                      v39 = [v34 objectForKeyedSubscript:*(*(&v104 + 1) + 8 * n)];
                      v100 = 0u;
                      v101 = 0u;
                      v102 = 0u;
                      v103 = 0u;
                      v40 = [v39 countByEnumeratingWithState:&v100 objects:&v111 count:16];
                      if (v40)
                      {
                        v41 = v40;
                        v42 = *v101;
                        do
                        {
                          for (ii = 0; ii != v41; ii = ii + 1)
                          {
                            if (*v101 != v42)
                            {
                              objc_enumerationMutation(v39);
                            }

                            v44 = *(*(&v100 + 1) + 8 * ii);
                            if ([objc_msgSend(v39 objectForKeyedSubscript:{v44), "BOOLValue"}])
                            {
                              [v33 addObject:v44];
                            }
                          }

                          v41 = [v39 countByEnumeratingWithState:&v100 objects:&v111 count:16];
                        }

                        while (v41);
                      }
                    }

                    v36 = [v34 countByEnumeratingWithState:&v104 objects:buf count:16];
                  }

                  while (v36);
                  v54 = [NSSet setWithSet:v33];
                  v4 = v83;
                }

                else
                {
                  v54 = [NSSet setWithSet:v33];
                }

                v55 = +[NSMutableSet set];
                v56 = [(SRAuthorizationStore *)v4->_authStore readerAuthorizationBundleIdValues];
                v104 = 0u;
                v105 = 0u;
                v106 = 0u;
                v107 = 0u;
                v57 = [v56 countByEnumeratingWithState:&v104 objects:buf count:16];
                if (v57)
                {
                  v58 = v57;
                  v85 = *v105;
                  do
                  {
                    for (jj = 0; jj != v58; jj = jj + 1)
                    {
                      if (*v105 != v85)
                      {
                        objc_enumerationMutation(v56);
                      }

                      v60 = [v56 objectForKeyedSubscript:*(*(&v104 + 1) + 8 * jj)];
                      v100 = 0u;
                      v101 = 0u;
                      v102 = 0u;
                      v103 = 0u;
                      v61 = [v60 countByEnumeratingWithState:&v100 objects:&v111 count:16];
                      if (v61)
                      {
                        v62 = v61;
                        v63 = *v101;
                        do
                        {
                          for (kk = 0; kk != v62; kk = kk + 1)
                          {
                            if (*v101 != v63)
                            {
                              objc_enumerationMutation(v60);
                            }

                            v65 = *(*(&v100 + 1) + 8 * kk);
                            if ([v60 count] && !-[NSSet containsObject:](v54, "containsObject:", v65))
                            {
                              [v55 addObject:v65];
                            }
                          }

                          v62 = [v60 countByEnumeratingWithState:&v100 objects:&v111 count:16];
                        }

                        while (v62);
                      }
                    }

                    v58 = [v56 countByEnumeratingWithState:&v104 objects:buf count:16];
                  }

                  while (v58);
                }

                v45 = [NSSet setWithSet:v55];
                v7 = v82;
                v4 = v83;
                v31 = v75;
                m = v79;
                if (v45)
                {
                  goto LABEL_100;
                }
              }
            }

            else if (v4)
            {
              dispatch_assert_queue_V2(v4->_q);
              v45 = +[NSMutableSet set];
              v46 = [(SRAuthorizationStore *)v4->_authStore readerAuthorizationBundleIdValues];
              v111 = 0u;
              v112 = 0u;
              v113 = 0u;
              v114 = 0u;
              v47 = [v46 objectForKeyedSubscript:v87];
              v48 = [v47 countByEnumeratingWithState:&v111 objects:buf count:16];
              if (!v48)
              {
                v4 = v83;
                if (!v45)
                {
                  continue;
                }

LABEL_100:
                [v76 setObject:v45 forKeyedSubscript:v87];
                continue;
              }

              v49 = v48;
              v50 = m;
              v51 = *v112;
              do
              {
                for (mm = 0; mm != v49; mm = mm + 1)
                {
                  if (*v112 != v51)
                  {
                    objc_enumerationMutation(v47);
                  }

                  v53 = *(*(&v111 + 1) + 8 * mm);
                  if (([objc_msgSend(objc_msgSend(v46 objectForKeyedSubscript:{v87), "objectForKeyedSubscript:", v53), "BOOLValue"}] & 1) == 0)
                  {
                    [(NSSet *)v45 addObject:v53];
                  }
                }

                v49 = [v47 countByEnumeratingWithState:&v111 objects:buf count:16];
              }

              while (v49);
              m = v50;
              v7 = v82;
              v4 = v83;
              if (v45)
              {
                goto LABEL_100;
              }
            }
          }

          v81 = [v7 countByEnumeratingWithState:&v92 objects:v109 count:16];
        }

        while (v81);
      }

      v66 = +[NSMutableDictionary dictionary];
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v67 = [v7 countByEnumeratingWithState:&v88 objects:v108 count:16];
      if (v67)
      {
        v68 = v67;
        v69 = *v89;
        do
        {
          for (nn = 0; nn != v68; nn = nn + 1)
          {
            if (*v89 != v69)
            {
              objc_enumerationMutation(v7);
            }

            [v66 setObject:-[NSDictionary objectForKeyedSubscript:](-[SRAuthorizationStore readerLastModifiedAuthorizationTimes](v4->_authStore forKeyedSubscript:{"readerLastModifiedAuthorizationTimes"), "objectForKeyedSubscript:", *(*(&v88 + 1) + 8 * nn)), *(*(&v88 + 1) + 8 * nn)}];
          }

          v68 = [v7 countByEnumeratingWithState:&v88 objects:v108 count:16];
        }

        while (v68);
      }

      sub_10003B54C(v4);
      v71 = *(v74 + 2);
    }

    else
    {
      v72 = qword_100071B38;
      if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240192;
        LODWORD(v116) = [(NSXPCConnection *)v5 processIdentifier];
        _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "Client requested authorized services prior to registration, pid %{public}d", buf, 8u);
      }

      sub_10003B54C(v4);
      v71 = *(a3 + 2);
    }

    v71();
  }

  else
  {
    v73 = qword_100071B38;
    if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v116 = v5;
      _os_log_error_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "Attempting to read prerequisite values without the proper entitlement, %{public}@", buf, 0xCu);
    }

    [(NSXPCConnection *)v5 invalidate];
  }
}

- (void)setFirstRunOnboardingCompleted:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(self->_q);
  v5 = +[NSXPCConnection currentConnection];
  v6 = [(RDAuthorizationBroadcaster *)self valueForEntitlement:@"com.apple.private.SensorKit.prerequisite.readwrite" connection:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 BOOLValue])
  {
    defaults = self->_defaults;
    if (defaults)
    {
      sub_100029538(&self->_defaults->super.isa, 2, v3);
      sub_100029538(defaults, 1, v3);
    }

    sub_10001D9A8(RDNotifier, @"com.apple.SensorKit.prerequisitesUpdated");

    sub_10003C280(&self->super.isa);
  }

  else
  {
    v8 = qword_100071B38;
    if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Attempting to set prerequisite values without the proper entitlement, %{public}@", &v9, 0xCu);
    }

    [(NSXPCConnection *)v5 invalidate];
  }
}

- (void)completeEnrollmentForBundleId:(id)a3 sensors:(id)a4
{
  dispatch_assert_queue_V2(self->_q);
  v7 = +[NSXPCConnection currentConnection];
  v8 = [(RDAuthorizationBroadcaster *)self valueForEntitlement:@"com.apple.private.SensorKit.prerequisite.enrollment-complete" connection:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 BOOLValue])
  {
    Weak = objc_loadWeak(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {

      [Weak authorizationBroadcaster:self didCompleteEnrollmentFor:a3 sensors:a4];
    }
  }

  else
  {
    v10 = qword_100071B38;
    if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = v7;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Attempting to set prerequisite values without the proper entitlement, %{public}@", &v11, 0xCu);
    }

    [(NSXPCConnection *)v7 invalidate];
  }
}

- (void)legacyResearchStudyBundleIDs:(id)a3
{
  dispatch_assert_queue_V2(self->_q);
  v5 = +[NSXPCConnection currentConnection];
  if ([(RDAuthorizationBroadcaster *)self valueForEntitlement:@"com.apple.private.SensorKit.prerequisite.readonly" connection:v5]|| [(RDAuthorizationBroadcaster *)self valueForEntitlement:@"com.apple.private.SensorKit.prerequisite.readwrite" connection:v5])
  {
    v6 = sub_10002B488(&self->_defaults->super.isa);
    v7 = *(a3 + 2);

    v7(a3, v6);
  }

  else
  {
    v8 = qword_100071B38;
    if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Attempting to read prerequisite values without the proper entitlement, %{public}@", &v9, 0xCu);
    }

    [(NSXPCConnection *)v5 invalidate];
  }
}

- (void)legacyResearchStudyEntitlement:(id)a3
{
  dispatch_assert_queue_V2(self->_q);
  v5 = +[NSXPCConnection currentConnection];
  if ([(RDAuthorizationBroadcaster *)self valueForEntitlement:@"com.apple.private.SensorKit.prerequisite.readonly" connection:v5]|| [(RDAuthorizationBroadcaster *)self valueForEntitlement:@"com.apple.private.SensorKit.prerequisite.readwrite" connection:v5])
  {
    v6 = sub_10002B4A0(&self->_defaults->super.isa);
    v7 = *(a3 + 2);

    v7(a3, v6);
  }

  else
  {
    v8 = qword_100071B38;
    if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Attempting to read prerequisite values without the proper entitlement, %{public}@", &v9, 0xCu);
    }

    [(NSXPCConnection *)v5 invalidate];
  }
}

- (BOOL)hasReaderEntitlementForConnection:(id)a3
{
  if ([(RDAuthorizationBroadcaster *)self valueForEntitlement:@"com.apple.sensorkit.reader.allow" connection:a3])
  {
    return 1;
  }

  if ([(RDAuthorizationBroadcaster *)self valueForEntitlement:@"com.apple.private.sensorkit.reader.wildcard.allow" connection:a3])
  {
    return 1;
  }

  if ([(RDAuthorizationBroadcaster *)self valueForEntitlement:@"com.apple.developer.sensorkit.reader.allow" connection:a3])
  {
    return 1;
  }

  return [(RDAuthorizationBroadcaster *)self valueForEntitlement:@"com.apple.private.sensorkit.reader.allow" connection:a3]!= 0;
}

@end