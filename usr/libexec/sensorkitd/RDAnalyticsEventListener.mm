@interface RDAnalyticsEventListener
+ (void)initialize;
- (void)dealloc;
- (void)gizmoSync:(id)sync didDeliverAndUnarchive:(id)unarchive sensor:(id)sensor keyName:(id)name archiveStatus:(int64_t)status;
- (void)gizmoSync:(id)sync willRunXPCActivityNamed:(id)named;
- (void)gizmoSyncDidSyncTime:(id)time;
- (void)service:(id)service didDeliverMessageWithIDSIdentifier:(id)identifier;
- (void)service:(id)service didFailIDSMessage:(id)message IDSIdentifier:(id)identifier withError:(id)error;
- (void)service:(id)service didFailMessageWithIDSIdentifier:(id)identifier error:(id)error;
- (void)service:(id)service didReceiveArchive:(id)archive sensor:(id)sensor gizmoSnapshotURL:(id)l metadata:(id)metadata fromID:(id)d;
- (void)service:(id)service didReceiveKeyServiceMessage:(id)message fromID:(id)d key:(id)key keyName:(id)name sensor:(id)sensor archiveURLPath:(id)path deviceID:(id)self0;
- (void)service:(id)service didReceiveResourceServiceMessage:(id)message fromID:(id)d incomingResponseIdentifier:(id)identifier outgoingResponseIdentifier:(id)responseIdentifier;
- (void)service:(id)service didRequestToSendIDSMessage:(id)message withIDSIdentifier:(id)identifier;
@end

@implementation RDAnalyticsEventListener

+ (void)initialize
{
  if (objc_opt_class() == self)
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

- (void)service:(id)service didRequestToSendIDSMessage:(id)message withIDSIdentifier:(id)identifier
{
  v9 = [message objectForKeyedSubscript:@"RDGizmoSyncMessageTypeKey"];
  if (v9)
  {
    [(NSCache *)self->_messageTypesByIDSIdentifier setObject:v9 forKey:identifier];
    integerValue = [v9 integerValue];
    if (integerValue > 0xA)
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
      messageCopy = message;
      _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Failed to find message type in IDS message %{public}@", buf, 0xCu);
      integerValue = [0 integerValue];
      if (integerValue > 0xA)
      {
        return;
      }
    }

    else
    {
      integerValue = [0 integerValue];
      if (integerValue > 0xA)
      {
        return;
      }
    }
  }

  if (((1 << integerValue) & 0x17E) != 0)
  {
    if (service)
    {
      v12 = *(service + 2);
    }
  }

  else if (((1 << integerValue) & 0x480) == 0)
  {
    return;
  }

  AnalyticsSendEventLazy();
}

- (void)service:(id)service didFailIDSMessage:(id)message IDSIdentifier:(id)identifier withError:(id)error
{
  [(NSCache *)self->_messageTypesByIDSIdentifier removeObjectForKey:identifier];
  [objc_msgSend(message objectForKeyedSubscript:{@"RDGizmoSyncMessageTypeKey", "integerValue"}];
  AnalyticsSendEventLazy();
}

- (void)service:(id)service didFailMessageWithIDSIdentifier:(id)identifier error:(id)error
{
  if ([(NSCache *)self->_messageTypesByIDSIdentifier objectForKey:identifier])
  {
    AnalyticsSendEventLazy();
  }

  else
  {
    v6 = qword_100071B40;
    if (os_log_type_enabled(qword_100071B40, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      identifierCopy = identifier;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "No message found for IDS Identifier %{public}@", buf, 0xCu);
    }
  }
}

- (void)service:(id)service didDeliverMessageWithIDSIdentifier:(id)identifier
{
  if ([(NSCache *)self->_messageTypesByIDSIdentifier objectForKey:identifier])
  {
    AnalyticsSendEventLazy();
  }

  else
  {
    v5 = qword_100071B40;
    if (os_log_type_enabled(qword_100071B40, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      identifierCopy = identifier;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "No message found for IDS Identifier %{public}@", buf, 0xCu);
    }
  }
}

- (void)service:(id)service didReceiveArchive:(id)archive sensor:(id)sensor gizmoSnapshotURL:(id)l metadata:(id)metadata fromID:(id)d
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

- (void)service:(id)service didReceiveKeyServiceMessage:(id)message fromID:(id)d key:(id)key keyName:(id)name sensor:(id)sensor archiveURLPath:(id)path deviceID:(id)self0
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

  v17 = [objc_msgSend(message objectForKeyedSubscript:{@"RDGizmoSyncMessageTypeKey", message, d, key), "integerValue"}];
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

- (void)service:(id)service didReceiveResourceServiceMessage:(id)message fromID:(id)d incomingResponseIdentifier:(id)identifier outgoingResponseIdentifier:(id)responseIdentifier
{
  v9 = [objc_msgSend(message objectForKeyedSubscript:{@"RDGizmoSyncMessageTypeKey", "integerValue"}];
  if (self && v9 == 8)
  {
    if (objc_loadWeak(&self->_delegate))
    {
      [message objectForKeyedSubscript:@"RDGizmoSyncGizmoRecordingStatesKey"];
      [objc_msgSend(message objectForKeyedSubscript:{@"RDGizmoSyncGizmoPrerequisitesKey", "integerValue"}];
      AnalyticsSendEventLazy();
    }
  }
}

- (void)gizmoSync:(id)sync willRunXPCActivityNamed:(id)named
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

- (void)gizmoSync:(id)sync didDeliverAndUnarchive:(id)unarchive sensor:(id)sensor keyName:(id)name archiveStatus:(int64_t)status
{
  if (AnalyticsIsEventUsed())
  {
    if (-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", [unarchive path]))
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100040894;
      v11[3] = &unk_100061938;
      v11[4] = unarchive;
      v11[5] = sensor;
      v11[6] = name;
      sub_10000978C(RDUnarchiver, unarchive, v11);
    }

    v12[0] = @"RDAnalyticsWatchSyncEventKey";
    v12[1] = @"RDAnalyticsKeyStatusKey";
    v13[0] = &off_100065538;
    v13[1] = &off_100065598;
    v12[2] = @"RDAnalyticsArchiveStatusKey";
    v13[2] = [NSNumber numberWithInteger:status];
    v13[3] = sensor;
    v12[3] = @"RDAnalyticsSensorIdentifierKey";
    v12[4] = @"RDAnalyticsKeyNameKey";
    v13[4] = name;
    sub_10002DADC([NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:5]);
    AnalyticsSendEvent();
  }
}

- (void)gizmoSyncDidSyncTime:(id)time
{
  v3[0] = @"RDAnalyticsWatchSyncEventKey";
  v3[1] = @"RDAnalyticsSyncSideKey";
  v4[0] = &off_1000655C8;
  v4[1] = &off_100065568;
  sub_10002DADC([NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2]);
  AnalyticsSendEvent();
}

@end