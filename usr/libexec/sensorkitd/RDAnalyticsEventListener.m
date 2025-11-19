@interface RDAnalyticsEventListener
+ (void)initialize;
- (void)dealloc;
- (void)gizmoSync:(id)a3 didDeliverAndUnarchive:(id)a4 sensor:(id)a5 keyName:(id)a6 archiveStatus:(int64_t)a7;
- (void)gizmoSync:(id)a3 willRunXPCActivityNamed:(id)a4;
- (void)gizmoSyncDidSyncTime:(id)a3;
- (void)service:(id)a3 didDeliverMessageWithIDSIdentifier:(id)a4;
- (void)service:(id)a3 didFailIDSMessage:(id)a4 IDSIdentifier:(id)a5 withError:(id)a6;
- (void)service:(id)a3 didFailMessageWithIDSIdentifier:(id)a4 error:(id)a5;
- (void)service:(id)a3 didReceiveArchive:(id)a4 sensor:(id)a5 gizmoSnapshotURL:(id)a6 metadata:(id)a7 fromID:(id)a8;
- (void)service:(id)a3 didReceiveKeyServiceMessage:(id)a4 fromID:(id)a5 key:(id)a6 keyName:(id)a7 sensor:(id)a8 archiveURLPath:(id)a9 deviceID:(id)a10;
- (void)service:(id)a3 didReceiveResourceServiceMessage:(id)a4 fromID:(id)a5 incomingResponseIdentifier:(id)a6 outgoingResponseIdentifier:(id)a7;
- (void)service:(id)a3 didRequestToSendIDSMessage:(id)a4 withIDSIdentifier:(id)a5;
@end

@implementation RDAnalyticsEventListener

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_100071B40 = os_log_create("com.apple.SensorKit", "AnalyticsGizmoSyncEventListener");
  }
}

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_nonatomic(self, a2, 0, 24);
  }

  v3.receiver = self;
  v3.super_class = RDAnalyticsEventListener;
  [(RDAnalyticsEventListener *)&v3 dealloc];
}

- (void)service:(id)a3 didRequestToSendIDSMessage:(id)a4 withIDSIdentifier:(id)a5
{
  v9 = [a4 objectForKeyedSubscript:@"RDGizmoSyncMessageTypeKey"];
  if (v9)
  {
    [(NSCache *)self->_messageTypesByIDSIdentifier setObject:v9 forKey:a5];
    v10 = [v9 integerValue];
    if (v10 > 0xA)
    {
      return;
    }
  }

  else
  {
    v11 = qword_100071B40;
    if (os_log_type_enabled(qword_100071B40, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v14 = a4;
      _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Failed to find message type in IDS message %{public}@", buf, 0xCu);
      v10 = [0 integerValue];
      if (v10 > 0xA)
      {
        return;
      }
    }

    else
    {
      v10 = [0 integerValue];
      if (v10 > 0xA)
      {
        return;
      }
    }
  }

  if (((1 << v10) & 0x17E) != 0)
  {
    if (a3)
    {
      v12 = *(a3 + 2);
    }
  }

  else if (((1 << v10) & 0x480) == 0)
  {
    return;
  }

  AnalyticsSendEventLazy();
}

- (void)service:(id)a3 didFailIDSMessage:(id)a4 IDSIdentifier:(id)a5 withError:(id)a6
{
  [(NSCache *)self->_messageTypesByIDSIdentifier removeObjectForKey:a5];
  [objc_msgSend(a4 objectForKeyedSubscript:{@"RDGizmoSyncMessageTypeKey", "integerValue"}];
  AnalyticsSendEventLazy();
}

- (void)service:(id)a3 didFailMessageWithIDSIdentifier:(id)a4 error:(id)a5
{
  if ([(NSCache *)self->_messageTypesByIDSIdentifier objectForKey:a4])
  {
    AnalyticsSendEventLazy();
  }

  else
  {
    v6 = qword_100071B40;
    if (os_log_type_enabled(qword_100071B40, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v8 = a4;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "No message found for IDS Identifier %{public}@", buf, 0xCu);
    }
  }
}

- (void)service:(id)a3 didDeliverMessageWithIDSIdentifier:(id)a4
{
  if ([(NSCache *)self->_messageTypesByIDSIdentifier objectForKey:a4])
  {
    AnalyticsSendEventLazy();
  }

  else
  {
    v5 = qword_100071B40;
    if (os_log_type_enabled(qword_100071B40, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v7 = a4;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "No message found for IDS Identifier %{public}@", buf, 0xCu);
    }
  }
}

- (void)service:(id)a3 didReceiveArchive:(id)a4 sensor:(id)a5 gizmoSnapshotURL:(id)a6 metadata:(id)a7 fromID:(id)a8
{
  stateCache = self->_stateCache;
  if (stateCache)
  {
    v9 = mach_continuous_time();
    if (qword_100071B60 != -1)
    {
      dispatch_once(&qword_100071B60, &stru_100060D90);
    }

    v10 = qword_100071B68;
    v11 = *&qword_100071B70;
    v12 = *&qword_100071B78;
    TMConvertTicksToSeconds();
    if (v10 >= v9)
    {
      v13 = -v13;
    }

    if (v12 + v11 + v13 < stateCache->_localDaemonLaunchTime + 3.0 + stateCache->_remoteRTCOffset)
    {

      AnalyticsSendEventLazy();
    }
  }
}

- (void)service:(id)a3 didReceiveKeyServiceMessage:(id)a4 fromID:(id)a5 key:(id)a6 keyName:(id)a7 sensor:(id)a8 archiveURLPath:(id)a9 deviceID:(id)a10
{
  stateCache = self->_stateCache;
  if (stateCache)
  {
    v12 = mach_continuous_time();
    if (qword_100071B60 != -1)
    {
      dispatch_once(&qword_100071B60, &stru_100060D90);
    }

    v13 = qword_100071B68;
    v14 = *&qword_100071B70;
    v15 = *&qword_100071B78;
    TMConvertTicksToSeconds();
    if (v13 >= v12)
    {
      v16 = -v16;
    }

    if (v15 + v14 + v16 < stateCache->_localDaemonLaunchTime + 3.0 + stateCache->_remoteRTCOffset)
    {
      AnalyticsSendEventLazy();
    }
  }

  v17 = [objc_msgSend(a4 objectForKeyedSubscript:{@"RDGizmoSyncMessageTypeKey", a4, a5, a6), "integerValue"}];
  v18 = v17;
  if ((v17 - 1) < 6)
  {
    goto LABEL_9;
  }

  if (v17 == 7)
  {
    AnalyticsSendEventLazy();
    return;
  }

  if (v17 == 8)
  {
LABEL_9:
    v19 = qword_100071B40;
    if (os_log_type_enabled(qword_100071B40, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v21 = v18;
      _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "Shouldn't be receiving message %ld on the key service", buf, 0xCu);
    }
  }
}

- (void)service:(id)a3 didReceiveResourceServiceMessage:(id)a4 fromID:(id)a5 incomingResponseIdentifier:(id)a6 outgoingResponseIdentifier:(id)a7
{
  v9 = [objc_msgSend(a4 objectForKeyedSubscript:{@"RDGizmoSyncMessageTypeKey", "integerValue"}];
  if (self && v9 == 8)
  {
    if (objc_loadWeak(&self->_delegate))
    {
      [a4 objectForKeyedSubscript:@"RDGizmoSyncGizmoRecordingStatesKey"];
      [objc_msgSend(a4 objectForKeyedSubscript:{@"RDGizmoSyncGizmoPrerequisitesKey", "integerValue"}];
      AnalyticsSendEventLazy();
    }
  }
}

- (void)gizmoSync:(id)a3 willRunXPCActivityNamed:(id)a4
{
  stateCache = self->_stateCache;
  if (stateCache)
  {
    v5 = mach_continuous_time();
    if (qword_100071B60 != -1)
    {
      dispatch_once(&qword_100071B60, &stru_100060D90);
    }

    v6 = qword_100071B68;
    v7 = *&qword_100071B70;
    v8 = *&qword_100071B78;
    TMConvertTicksToSeconds();
    if (v6 >= v5)
    {
      v9 = -v9;
    }

    if (v8 + v7 + v9 < stateCache->_localDaemonLaunchTime + 3.0 + stateCache->_remoteRTCOffset)
    {
      AnalyticsSendEventLazy();
    }
  }
}

- (void)gizmoSync:(id)a3 didDeliverAndUnarchive:(id)a4 sensor:(id)a5 keyName:(id)a6 archiveStatus:(int64_t)a7
{
  if (AnalyticsIsEventUsed())
  {
    if (-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", [a4 path]))
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100040894;
      v11[3] = &unk_100061938;
      v11[4] = a4;
      v11[5] = a5;
      v11[6] = a6;
      sub_10000978C(RDUnarchiver, a4, v11);
    }

    v12[0] = @"RDAnalyticsWatchSyncEventKey";
    v12[1] = @"RDAnalyticsKeyStatusKey";
    v13[0] = &off_100065538;
    v13[1] = &off_100065598;
    v12[2] = @"RDAnalyticsArchiveStatusKey";
    v13[2] = [NSNumber numberWithInteger:a7];
    v13[3] = a5;
    v12[3] = @"RDAnalyticsSensorIdentifierKey";
    v12[4] = @"RDAnalyticsKeyNameKey";
    v13[4] = a6;
    sub_10002DADC([NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:5]);
    AnalyticsSendEvent();
  }
}

- (void)gizmoSyncDidSyncTime:(id)a3
{
  v3[0] = @"RDAnalyticsWatchSyncEventKey";
  v3[1] = @"RDAnalyticsSyncSideKey";
  v4[0] = &off_1000655C8;
  v4[1] = &off_100065568;
  sub_10002DADC([NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2]);
  AnalyticsSendEvent();
}

@end