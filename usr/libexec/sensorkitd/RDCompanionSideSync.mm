@interface RDCompanionSideSync
+ (void)initialize;
- (BOOL)isRemoteSupported;
- (void)dealloc;
- (void)decryptArchivesWithActivity:(id)a3;
- (void)sendStateToPeer:(id)a3;
- (void)service:(id)a3 connectedDevicesChanged:(id)a4;
- (void)service:(id)a3 didReceiveArchive:(id)a4 sensor:(id)a5 gizmoSnapshotURL:(id)a6 metadata:(id)a7 fromID:(id)a8;
- (void)service:(id)a3 didReceiveKeyServiceMessage:(id)a4 fromID:(id)a5 key:(id)a6 keyName:(id)a7 sensor:(id)a8 archiveURLPath:(id)a9 deviceID:(id)a10;
- (void)service:(id)a3 didReceiveResourceServiceMessage:(id)a4 fromID:(id)a5 incomingResponseIdentifier:(id)a6 outgoingResponseIdentifier:(id)a7;
- (void)validatePreferWifiAssertion;
@end

@implementation RDCompanionSideSync

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_100071990 = os_log_create("com.apple.SensorKit", "RDCompanionSideSync");
  }
}

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_nonatomic(self, a2, 0, 40);
    objc_setProperty_nonatomic(self, v3, 0, 24);
    objc_setProperty_nonatomic(self, v4, 0, 48);
    objc_setProperty_nonatomic(self, v5, 0, 32);
    objc_setProperty_nonatomic(self, v6, 0, 56);
  }

  v7.receiver = self;
  v7.super_class = RDCompanionSideSync;
  [(RDCompanionSideSync *)&v7 dealloc];
}

- (BOOL)isRemoteSupported
{
  v2 = [(NSDictionary *)sub_100023D50(self->_gizmoSyncService) objectForKeyedSubscript:@"supportsCurrentVersion"];

  return [v2 BOOLValue];
}

- (void)validatePreferWifiAssertion
{
  stateCache = self->_stateCache;
  if (stateCache && stateCache->_preferWifiAssertionEndTime != 0.0)
  {
    v4 = mach_continuous_time();
    if (qword_100071B60 != -1)
    {
      dispatch_once(&qword_100071B60, &stru_100060D90);
    }

    v5 = qword_100071B68;
    v6 = *&qword_100071B70;
    v7 = *&qword_100071B78;
    TMConvertTicksToSeconds();
    if (v5 >= v4)
    {
      v8 = -v8;
    }

    v9 = v7 + v6 + v8;
    v10 = self->_stateCache;
    if (v10)
    {
      if (v9 <= v10->_preferWifiAssertionEndTime)
      {
        return;
      }
    }

    else if (v9 <= 0.0)
    {
      return;
    }

    sub_100023A24(&self->_gizmoSyncService->super.isa, 0);
    v11 = self->_stateCache;
    if (v11)
    {
      v11[7].super.isa = 0;

      sub_100027584(v11);
    }
  }
}

- (void)decryptArchivesWithActivity:(id)a3
{
  v5 = sub_10003A2C0(self->_fileURLs, self->_defaults);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v20 = sub_10000DB60([RDTopLevelInformingDatastore alloc], v5);
  obj = sub_10000DC14(v20, 1);
  v23 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v23)
  {
    v22 = *v33;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v32 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        if ([a3 deferIfNeeded])
        {
          objc_autoreleasePoolPop(v8);
          goto LABEL_20;
        }

        context = v8;
        v26 = v6;
        v9 = sub_10003A334(v7, 0, self->_fileURLs, self->_defaults);
        v10 = sub_10000D068([RDInformingDatastore alloc], v9);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v24 = v10;
        v11 = sub_10000D2B8(v10);
        v12 = [(NSSet *)v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v29;
LABEL_10:
          v15 = 0;
          while (1)
          {
            if (*v29 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v28 + 1) + 8 * v15);
            if ([a3 deferIfNeeded])
            {
              break;
            }

            v27[0] = _NSConcreteStackBlock;
            v27[1] = 3221225472;
            v27[2] = sub_100003494;
            v27[3] = &unk_100060A20;
            v27[4] = a3;
            v36[0] = _NSConcreteStackBlock;
            v36[1] = 3221225472;
            v36[2] = sub_100004938;
            v36[3] = &unk_100060AB0;
            v36[4] = v7;
            v36[5] = v16;
            v36[6] = self;
            v36[7] = v27;
            v17 = objc_autoreleasePoolPush();
            sub_100004B88(self, v7, v16, v36);
            objc_autoreleasePoolPop(v17);
            v18 = objc_autoreleasePoolPush();
            sub_100004EE8(&self->super.isa, v7, v16, v36);
            objc_autoreleasePoolPop(v18);
            if (v13 == ++v15)
            {
              v13 = [(NSSet *)v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
              if (v13)
              {
                goto LABEL_10;
              }

              break;
            }
          }
        }

        objc_autoreleasePoolPop(context);
        v6 = v26 + 1;
      }

      while ((v26 + 1) != v23);
      v23 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:

  if (!a3 || (v19 = *(a3 + 3)) == 0 || xpc_activity_get_state(v19) != 3)
  {
    [a3 markCompleted];
  }
}

- (void)service:(id)a3 didReceiveArchive:(id)a4 sensor:(id)a5 gizmoSnapshotURL:(id)a6 metadata:(id)a7 fromID:(id)a8
{
  if (self)
  {
    gizmoSyncService = self->_gizmoSyncService;
    if (gizmoSyncService)
    {
      v14 = sub_100023C20(gizmoSyncService, a8, [(IDSService *)gizmoSyncService->_resourceService devices:a3]);
      if (v14)
      {
        v15 = v14;
        v16 = sub_10003A334(a5, v14, self->_fileURLs, self->_defaults);
        v17 = sub_10000E610([RDArchiveableDatastore alloc], &v16->super.isa);
        v18 = sub_100010B60(v17, a4, [a6 lastPathComponent]);

        if (v18)
        {
          v37[0] = _NSConcreteStackBlock;
          v37[1] = 3221225472;
          v37[2] = sub_100003868;
          v37[3] = &unk_100060A48;
          v37[4] = self;
          v37[5] = v18;
          v37[6] = a5;
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_100004938;
          v39 = &unk_100060AB0;
          v40 = a5;
          v41 = v15;
          v42 = self;
          v43 = v37;
          v19 = objc_autoreleasePoolPush();
          sub_100004B88(self, a5, v15, buf);
          objc_autoreleasePoolPop(v19);
          v20 = objc_autoreleasePoolPush();
          sub_100004EE8(&self->super.isa, a5, v15, buf);
          objc_autoreleasePoolPop(v20);
          sub_100023A24(&self->_gizmoSyncService->super.isa, 1);
          v21 = mach_continuous_time();
          if (qword_100071B60 != -1)
          {
            dispatch_once(&qword_100071B60, &stru_100060D90);
          }

          v22 = qword_100071B68;
          v23 = *&qword_100071B70;
          v24 = *&qword_100071B78;
          TMConvertTicksToSeconds();
          v26 = v25;
          v27 = sub_10002B4B8(&self->_defaults->super.isa);
          stateCache = self->_stateCache;
          if (stateCache)
          {
            v29 = -v26;
            if (v22 < v21)
            {
              v29 = v26;
            }

            stateCache->_preferWifiAssertionEndTime = v24 + v23 + v29 + v27;
            sub_100027584(stateCache);
          }

          return;
        }

        v31 = -[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", [a4 path]);
        v32 = qword_100071990;
        v33 = os_log_type_enabled(qword_100071990, OS_LOG_TYPE_ERROR);
        if (v31)
        {
          if (v33)
          {
            *buf = 138543362;
            *&buf[4] = a5;
            v34 = "Failed to store the encrypted archive for %{public}@!";
            v35 = v32;
            v36 = 12;
LABEL_20:
            _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, v34, buf, v36);
          }
        }

        else if (v33)
        {
          *buf = 138543618;
          *&buf[4] = a4;
          *&buf[12] = 2114;
          *&buf[14] = a5;
          v34 = "Got an incoming resource %{public}@ for %{public}@ but unable to locate the IDS resource";
          v35 = v32;
          v36 = 22;
          goto LABEL_20;
        }

        -[RDAnalyticsEventDelegate gizmoSync:failedToStoreEncryptedArchive:key:sensor:fileExists:](-[RDCompanionSideSync analyticsDelegate](self, "analyticsDelegate"), "gizmoSync:failedToStoreEncryptedArchive:key:sensor:fileExists:", self, a4, sub_10002399C(self->_gizmoSyncService, [a4 path], a5), a5, v31);
        return;
      }
    }
  }

  v30 = qword_100071990;
  if (os_log_type_enabled(qword_100071990, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    *&buf[4] = a8;
    _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to find a device id from IDS id %{public}@", buf, 0xCu);
  }
}

- (void)service:(id)a3 didReceiveKeyServiceMessage:(id)a4 fromID:(id)a5 key:(id)a6 keyName:(id)a7 sensor:(id)a8 archiveURLPath:(id)a9 deviceID:(id)a10
{
  v15 = qword_100071990;
  if (os_log_type_enabled(qword_100071990, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    *&buf[4] = a9;
    *&buf[12] = 2114;
    *&buf[14] = a8;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Key for %{public}@ received for %{public}@ adding to the keychain", buf, 0x16u);
  }

  v16 = [a4 objectForKeyedSubscript:@"RDGizmoSyncIVKey"];
  if (v16 && (v17 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v18 = sub_10003A334(a8, a10, self->_fileURLs, self->_defaults);
    v19 = sub_100011CFC([RDEncryptingDatastore alloc], v18);
    v20 = sub_1000120EC(v19, a6, v17, a9);

    if (v20)
    {
      fileURLs = self->_fileURLs;
      v26 = a10;
      if ([+[NSFileManager defaultManager](NSFileManager fileExistsAtPath:"fileExistsAtPath:", [[NSURL fileURLWithPath:? isDirectory:? relativeToURL:?]]
      {
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100004938;
        v28 = &unk_100060AB0;
        v29 = a8;
        v30 = a10;
        v31 = self;
        v32 = 0;
        v22 = objc_autoreleasePoolPush();
        sub_100004B88(self, a8, a10, buf);
        objc_autoreleasePoolPop(v22);
        v23 = objc_autoreleasePoolPush();
        sub_100004EE8(&self->super.isa, a8, a10, buf);
        objc_autoreleasePoolPop(v23);
      }
    }

    else
    {
      v25 = qword_100071990;
      if (os_log_type_enabled(qword_100071990, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        *&buf[4] = a9;
        *&buf[12] = 2114;
        *&buf[14] = a8;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Failed to add key for %{public}@ for %{public}@ to keychain. Registering to retry on next unlock.", buf, 0x16u);
      }

      [(RDAnalyticsEventDelegate *)[(RDCompanionSideSync *)self analyticsDelegate] gizmoSync:self failedToAddKey:a7 toKeyChainForSensor:a8];
    }
  }

  else
  {
    v24 = qword_100071990;
    if (os_log_type_enabled(qword_100071990, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Message missing IV. Dropping", buf, 2u);
    }
  }
}

- (void)service:(id)a3 didReceiveResourceServiceMessage:(id)a4 fromID:(id)a5 incomingResponseIdentifier:(id)a6 outgoingResponseIdentifier:(id)a7
{
  v10 = [a4 objectForKeyedSubscript:@"RDGizmoSyncMessageTypeKey"];
  if (v10)
  {
    v11 = [v10 integerValue];
    if (v11 > 0xA)
    {
      goto LABEL_18;
    }

    if (((1 << v11) & 0x6B0) != 0)
    {
      v12 = v11;
      v13 = qword_100071990;
      if (os_log_type_enabled(qword_100071990, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        *&buf[4] = v12;
        _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Shouldn't be getting message type %ld on this IDS service", buf, 0xCu);
      }

      return;
    }

    if (v11 != 3)
    {
      if (v11 == 8)
      {
        if (self)
        {
          gizmoSyncService = self->_gizmoSyncService;
          if (gizmoSyncService)
          {
            v16 = sub_100023C20(gizmoSyncService, a5, [(IDSService *)gizmoSyncService->_resourceService devices]);
            if (v16)
            {
              v17 = v16;
              selfa = objc_alloc_init(RDGizmoSyncState);
              v18 = [objc_msgSend(a4 objectForKeyedSubscript:{@"RDGizmoSyncGizmoPrerequisitesKey", "integerValue"}];
              if (selfa)
              {
                selfa->_prerequisites = v18;
                v19 = [a4 objectForKeyedSubscript:@"RDGizmoSyncGizmoRecordingStatesKey"];
                objc_setProperty_nonatomic(selfa, v20, v19, 16);
                v21 = [a4 objectForKeyedSubscript:@"RDGizmoSyncGizmoServiceStartTimesKey"];
                objc_setProperty_nonatomic(selfa, v22, v21, 24);
                v23 = [a4 objectForKeyedSubscript:@"RDGizmoSyncSensorConfigurations"];
                objc_setProperty_nonatomic(selfa, v24, v23, 40);
              }

              else
              {
                [a4 objectForKeyedSubscript:@"RDGizmoSyncGizmoRecordingStatesKey"];
                [a4 objectForKeyedSubscript:@"RDGizmoSyncGizmoServiceStartTimesKey"];
                [a4 objectForKeyedSubscript:@"RDGizmoSyncSensorConfigurations"];
              }

              [(RDGizmoSyncDelegate *)[(RDCompanionSideSync *)self delegate] gizmoSync:self didSyncState:selfa deviceID:v17];

              return;
            }
          }
        }

        v46 = qword_100071990;
        if (!os_log_type_enabled(qword_100071990, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        *buf = 134217984;
        *&buf[4] = 8;
        v26 = "Got message %ld from unknown device";
        v47 = v46;
        v48 = 12;
LABEL_51:
        _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, v26, buf, v48);
        return;
      }

LABEL_18:
      if (v11 != 2)
      {
        if (v11 != 1)
        {
          return;
        }

        v25 = qword_100071990;
        if (!os_log_type_enabled(qword_100071990, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        *buf = 0;
        v26 = "Shouldn't be receiving recording message on the companion side";
        goto LABEL_50;
      }

      v27 = [a4 objectForKeyedSubscript:@"RDGizmoSyncCompanionAbsoluteTimeKey"];
      if (v27)
      {
        v28 = v27;
        v29 = [a4 objectForKeyedSubscript:@"RDGizmoSyncGizmoAbsoluteTimeKey"];
        if (v29)
        {
          v30 = v29;
          v31 = *&qword_100071B70;
          TMConvertTicksToSeconds();
          v33 = v31 - v32;
          *buf = 0;
          mach_get_times();
          if (self)
          {
            self = self->_gizmoSyncService;
          }

          v54[0] = &off_1000651C0;
          v53[0] = @"RDGizmoSyncMessageTypeKey";
          v53[1] = @"RDGizmoSyncCompanionRTCContinuousOffsetKey";
          v54[1] = [NSNumber numberWithDouble:v33];
          v53[2] = @"RDGizmoSyncCompanionContinuousAbsoluteOffsetKey";
          v54[2] = [NSNumber numberWithLongLong:0];
          v54[3] = v30;
          v53[3] = @"RDGizmoSyncGizmoAbsoluteTimeKey";
          v53[4] = @"RDGizmoSyncCompanionAbsoluteTimeKey";
          v54[4] = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v28 unsignedLongLongValue]);
          v34 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:5];
          if (self)
          {
            sub_100023F18(self, v34, self->_fileURLs, 0);
          }

          return;
        }

        v25 = qword_100071990;
        if (!os_log_type_enabled(qword_100071990, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        *buf = 0;
        v26 = "Time sync requested but no gizmo absolute time provided";
      }

      else
      {
        v25 = qword_100071990;
        if (!os_log_type_enabled(qword_100071990, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        *buf = 0;
        v26 = "Time sync requested but no companion absolute time provided";
      }

LABEL_50:
      v47 = v25;
      v48 = 2;
      goto LABEL_51;
    }

    v35 = [objc_msgSend(a4 objectForKeyedSubscript:{@"RDGizmoSyncArchiveTransferStatusKey", "integerValue"}];
    if (v35 == 4)
    {
      v49 = qword_100071990;
      if (os_log_type_enabled(qword_100071990, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Received request from gizmo to expire our prefer infra wifi assertion", buf, 2u);
      }

      if (self)
      {
        sub_100023A24(&self->_gizmoSyncService->super.isa, 0);
        stateCache = self->_stateCache;
        if (stateCache)
        {
          stateCache[7].super.isa = 0;
          sub_100027584(stateCache);
        }
      }
    }

    else if (v35 == 3)
    {
      v36 = qword_100071990;
      if (os_log_type_enabled(qword_100071990, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Received request from gizmo to renew our prefer infra wifi assertion", buf, 2u);
      }

      if (self)
      {
        sub_100023A24(&self->_gizmoSyncService->super.isa, 1);
        v37 = mach_continuous_time();
        if (qword_100071B60 != -1)
        {
          dispatch_once(&qword_100071B60, &stru_100060D90);
        }

        v38 = qword_100071B68;
        v39 = *&qword_100071B70;
        v40 = *&qword_100071B78;
        TMConvertTicksToSeconds();
        v42 = v41;
        v43 = sub_10002B4B8(&self->_defaults->super.isa);
        v44 = self->_stateCache;
        if (v44)
        {
          v45 = -v42;
          if (v38 < v37)
          {
            v45 = v42;
          }

          v44->_preferWifiAssertionEndTime = v40 + v39 + v45 + v43;
          sub_100027584(v44);
        }
      }
    }
  }

  else
  {
    v14 = qword_100071990;
    if (os_log_type_enabled(qword_100071990, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "No message type key found. Ignoring message", buf, 2u);
    }
  }
}

- (void)sendStateToPeer:(id)a3
{
  v4 = self;
  [(RDCompanionSideSync *)self validatePreferWifiAssertion];
  if (v4)
  {
    p_isa = &v4->_gizmoSyncService->super.isa;
    if (p_isa && (v6 = sub_100023DB4(v4->_gizmoSyncService), (v44 = sub_100023C20(p_isa, v6, [p_isa[3] devices])) != 0))
    {
      v36 = a3;
      v45 = &v4->super.isa;
      v7 = sub_10003A2C0(v4->_fileURLs, v4->_defaults);
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v37 = sub_10000DB60([RDTopLevelInformingDatastore alloc], v7);
      obj = sub_10000DC14(v37, 1);
      v8 = [obj countByEnumeratingWithState:&v54 objects:buf count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v55;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v55 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v54 + 1) + 8 * i);
            v70[0] = _NSConcreteStackBlock;
            v70[1] = 3221225472;
            v70[2] = sub_100004938;
            v70[3] = &unk_100060AB0;
            v70[4] = v12;
            v70[5] = v44;
            v70[6] = v45;
            v70[7] = &stru_100060A88;
            v13 = objc_autoreleasePoolPush();
            sub_100004B88(v45, v12, v44, v70);
            objc_autoreleasePoolPop(v13);
            v14 = objc_autoreleasePoolPush();
            sub_100004EE8(v45, v12, v44, v70);
            objc_autoreleasePoolPop(v14);
          }

          v9 = [obj countByEnumeratingWithState:&v54 objects:buf count:16];
        }

        while (v9);
      }

      v15 = +[NSMutableDictionary dictionary];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v38 = sub_10000DC14(v37, 1);
      v40 = [v38 countByEnumeratingWithState:&v50 objects:v70 count:16];
      if (v40)
      {
        v39 = *v51;
        do
        {
          for (j = 0; j != v40; j = j + 1)
          {
            if (*v51 != v39)
            {
              objc_enumerationMutation(v38);
            }

            v17 = *(*(&v50 + 1) + 8 * j);
            obja = objc_autoreleasePoolPush();
            v18 = sub_10003A334(v17, v44, v45[3], v45[4]);
            v19 = sub_10000D068([RDInformingDatastore alloc], v18);
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v41 = v19;
            v21 = sub_10000D860(v19, v20);
            v22 = [(NSDirectoryEnumerator *)v21 countByEnumeratingWithState:&v46 objects:v69 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v47;
              do
              {
                for (k = 0; k != v23; k = k + 1)
                {
                  if (*v47 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v26 = *(*(&v46 + 1) + 8 * k);
                  if (![v15 objectForKeyedSubscript:v17])
                  {
                    [v15 setObject:+[NSMutableArray array](NSMutableArray forKeyedSubscript:{"array"), v17}];
                  }

                  [objc_msgSend(v15 objectForKeyedSubscript:{v17), "addObject:", objc_msgSend(v26, "lastPathComponent")}];
                }

                v23 = [(NSDirectoryEnumerator *)v21 countByEnumeratingWithState:&v46 objects:v69 count:16];
              }

              while (v23);
            }

            objc_autoreleasePoolPop(obja);
          }

          v40 = [v38 countByEnumeratingWithState:&v50 objects:v70 count:16];
        }

        while (v40);
      }

      v27 = [NSDictionary dictionaryWithDictionary:v15];
      a3 = v36;
      v4 = v45;
      v28 = qword_100071990;
      if (os_log_type_enabled(qword_100071990, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }
    }

    else
    {
      v29 = qword_100071990;
      if (os_log_type_enabled(qword_100071990, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Unable to find a remote device ID therefore there are no required keys", buf, 2u);
      }

      v27 = &__NSDictionary0__struct;
      v28 = qword_100071990;
      if (os_log_type_enabled(qword_100071990, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    v27 = 0;
    v28 = qword_100071990;
    if (os_log_type_enabled(qword_100071990, OS_LOG_TYPE_DEFAULT))
    {
LABEL_32:
      *buf = 138543362;
      v72 = v27;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Asking for required keys: %{public}@", buf, 0xCu);
    }
  }

  if (v4)
  {
    v4 = v4->_gizmoSyncService;
  }

  v63[0] = &off_1000651D8;
  v58[0] = @"RDGizmoSyncMessageTypeKey";
  v58[1] = @"RDGizmoSyncCompanionRecordingStatesKey";
  if (a3)
  {
    v30 = *(a3 + 2);
  }

  else
  {
    v30 = 0;
  }

  v63[1] = v30;
  v63[2] = v27;
  v58[2] = @"RDGizmoSyncCompanionRequiredKeysKey";
  v58[3] = @"RDGizmoSyncCompanionPrerequisitesKey";
  if (a3)
  {
    v64 = [NSNumber numberWithUnsignedInteger:*(a3 + 4)];
    v59 = @"RDGizmoSyncSensorConfigurations";
    v31 = *(a3 + 5);
    if (!v31)
    {
      v31 = &__NSDictionary0__struct;
    }

    v32 = *(a3 + 8);
  }

  else
  {
    v64 = [NSNumber numberWithUnsignedInteger:0];
    v59 = @"RDGizmoSyncSensorConfigurations";
    v32 = 0;
    v31 = &__NSDictionary0__struct;
  }

  v65 = v31;
  v60 = @"RDGizmoSyncCompanionRequiredAppInstalledKey";
  v66 = [NSNumber numberWithBool:v32 & 1];
  v61 = @"RDGizmoSyncCompanionServiceStartTimesKey";
  if (a3)
  {
    v33 = *(a3 + 3);
    v34 = *(a3 + 6);
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  v67 = v33;
  v62 = @"RDGizmoSyncCapabilitiesKey";
  v68 = [NSNumber numberWithUnsignedInteger:v34];
  v35 = [NSDictionary dictionaryWithObjects:v63 forKeys:v58 count:8];
  if (v4)
  {
    sub_100023F18(v4, v35, v4->_fileURLs, 0);
  }
}

- (void)service:(id)a3 connectedDevicesChanged:(id)a4
{
  if (self)
  {
    gizmoSyncService = self->_gizmoSyncService;
    if (gizmoSyncService)
    {
      v7 = sub_100023DB4(self->_gizmoSyncService);
      v8 = sub_100023C20(gizmoSyncService, v7, [(IDSService *)gizmoSyncService->_resourceService devices]);
      if (sub_100023C20(gizmoSyncService, v8, a4))
      {
        v9 = [(RDCompanionSideSync *)self delegate];

        [(RDGizmoSyncDelegate *)v9 gizmoSyncConnectedDevicesAdded:self];
      }
    }
  }
}

@end