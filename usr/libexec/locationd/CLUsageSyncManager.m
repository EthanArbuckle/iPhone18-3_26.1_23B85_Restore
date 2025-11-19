@interface CLUsageSyncManager
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (BOOL)_sendMessage:(id)a3 identifier:(id *)a4 error:(id *)a5;
- (CLUsageSyncManager)init;
- (id)currentlyActiveDevice;
- (id)mungedUsageDataForPotentiallyOldUsageData:(id)a3;
- (void)addMessageToErrorQueue:(id)a3;
- (void)beginService;
- (void)client:(id)a3 didChangeUsageData:(id)a4;
- (void)client:(id)a3 didChangeUsageDataInternal:(id)a4;
- (void)drainErrorQueue;
- (void)endService;
- (void)handleActiveNotification_bounce:(id)a3;
- (void)handleInactiveNotification_bounce:(id)a3;
- (void)handleMessageError:(id)a3;
- (void)handleMessageResyncRequestWithMessageData:(id)a3;
- (void)handleMessageResyncResponseWithMessageData:(id)a3;
- (void)handleMessageSendError:(id)a3 identifier:(id)a4;
- (void)handleMessageSendSuccessForIdentifier:(id)a3;
- (void)handleMessageUsageUpdateWithMessageData:(id)a3;
- (void)handlePair;
- (void)handlePairNotification_bounce:(id)a3;
- (void)handleUnpair;
- (void)handleUnpairNotification_bounce:(id)a3;
- (void)messageFailedToSend:(id)a3 withError:(id)a4 recoverable:(BOOL)a5;
- (void)onClientManagerNotification:(int)a3 data:(const void *)a4;
- (void)onStatusBarIconChange:(int)a3;
- (void)onStatusBarIconChangeInternal:(int)a3;
- (void)requestFullResync;
- (void)sendAllUsageSyncData;
- (void)sendMessage:(id)a3;
- (void)sendMessageWithMessageType:(id)a3 dataPayload:(id)a4 priority:(int64_t)a5 idsOptions:(id)a6;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 nearbyDevicesChanged:(id)a4;
- (void)setSilo:(id)a3;
@end

@implementation CLUsageSyncManager

+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4
{
  v5 = a4 + 1;
  if (a4 + 1 < [a3 count])
  {
    [objc_msgSend(a3 objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", a3, v5}];
  }
}

+ (id)getSilo
{
  if (qword_10265AE70 != -1)
  {
    sub_10195F038();
  }

  return qword_10265AE68;
}

+ (BOOL)isSupported
{
  if (qword_10265AE80 != -1)
  {
    sub_10195F04C();
  }

  return byte_10265AE78;
}

- (CLUsageSyncManager)init
{
  v3.receiver = self;
  v3.super_class = CLUsageSyncManager;
  return [(CLUsageSyncManager *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLUsageSyncManagerProtocol outboundProtocol:&OBJC_PROTOCOL___CLUsageSyncManagerClientProtocol];
}

- (void)setSilo:(id)a3
{
  if (qword_1025D47A0 != -1)
  {
    sub_10195F060();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync suspending silo until IDS becomes available}", buf, 0x12u);
  }

  [a3 suspend];
  v8.receiver = self;
  v8.super_class = CLUsageSyncManager;
  [(CLUsageSyncManager *)&v8 setSilo:a3];
  if (qword_1025D47A0 != -1)
  {
    sub_10195F074();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync waiting on IDS to become available}", buf, 0x12u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100868E00;
  v7[3] = &unk_10245D460;
  v7[4] = self;
  v7[5] = a3;
  [IDSService serviceWithIdentifier:@"com.apple.private.alloy.location.usage" completion:v7];
}

- (void)beginService
{
  [(CLUsageSyncManager *)self setErrorQueue:+[NSMutableArray array]];
  [(CLUsageSyncManager *)self setMessagesWaitingForAck:+[NSMutableDictionary dictionary]];
  [(CLUsageSyncManager *)self universe];
  sub_1007A98FC();
}

- (void)endService
{
  [(IDSService *)self->_service removeDelegate:self];

  self->_service = 0;
  self->_pairedDeviceID = 0;
  if (objc_opt_class())
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v3 removeObserver:self name:PDRDidUnpairNotification object:+[PDRRegistry sharedInstance]];
    v4 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v4 removeObserver:self name:PDRDidPairNotification object:+[PDRRegistry sharedInstance]];
    v5 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v5 removeObserver:self name:PDRDidActivateNotification object:+[PDRRegistry sharedInstance]];
    v6 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v6 removeObserver:self name:PDRDidDeactivateNotification object:+[PDRRegistry sharedInstance]];
  }

  [(CLTimer *)self->_retryTimer setHandler:0];

  self->_retryTimer = 0;
  self->_errorQueue = 0;

  self->_messagesWaitingForAck = 0;
}

- (void)onClientManagerNotification:(int)a3 data:(const void *)a4
{
  [(CLUsageSyncManager *)self requestFullResync:*&a3];

  [(CLUsageSyncManager *)self sendAllUsageSyncData];
}

- (void)handleUnpairNotification_bounce:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100869908;
  v3[3] = &unk_102447418;
  v3[4] = self;
  [objc_msgSend(-[CLUsageSyncManager universe](self universe];
}

- (void)handlePairNotification_bounce:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100869990;
  v3[3] = &unk_102447418;
  v3[4] = self;
  [objc_msgSend(-[CLUsageSyncManager universe](self universe];
}

- (void)handleUnpair
{
  [-[CLUsageSyncManager universe](self "universe")];
  v3 = [+[PDRRegistry sharedInstance](PDRRegistry getActiveDevice];
  v4 = [v3 valueForProperty:PDRDevicePropertyKeyPairingID];
  if ([v4 isEqual:{-[CLUsageSyncManager pairedDeviceID](self, "pairedDeviceID")}])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10195F060();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 68289282;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = [objc_msgSend(v4 "UUIDString")];
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync Non-active device unpaired, current id:%{public, location:escape_only}s}", &v8, 0x1Cu);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10195F060();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = [(NSString *)[(NSUUID *)[(CLUsageSyncManager *)self pairedDeviceID] UUIDString] UTF8String];
      v14 = 2082;
      v15 = [objc_msgSend(v4 "UUIDString")];
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync Unpair, current id:%{public, location:escape_only}s, active id:%{public, location:escape_only}s}", &v8, 0x26u);
    }

    [(CLClientManagerPublicProtocol *)[(CLUsageSyncManager *)self manager] syncgetDoSync:&stru_102478478];
    [(CLUsageSyncManager *)self setPairedDeviceID:0];
    [(CLUsageSyncManager *)self setErrorQueue:+[NSMutableArray array]];
    [(CLTimer *)self->_retryTimer setNextFireDelay:1.79769313e308];
    self->_retryTimerSet = 0;
    [(CLUsageSyncManager *)self setMessagesWaitingForAck:+[NSMutableDictionary dictionary]];
    v7 = sub_1000206B4();
    sub_1004FA94C(v7);
    [(CLUsageSyncManager *)self service:[(CLUsageSyncManager *)self service] nearbyDevicesChanged:[(IDSService *)[(CLUsageSyncManager *)self service] devices]];
  }
}

- (void)handlePair
{
  [-[CLUsageSyncManager universe](self "universe")];
  v3 = [+[PDRRegistry sharedInstance](PDRRegistry getActiveDevice];
  v4 = [v3 valueForProperty:PDRDevicePropertyKeyPairingID];
  if (qword_1025D47A0 != -1)
  {
    sub_10195F060();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 68289538;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2082;
    v12 = [objc_msgSend(v4 "UUIDString")];
    v13 = 2082;
    v14 = [(NSString *)[(NSUUID *)[(CLUsageSyncManager *)self pairedDeviceID] UUIDString] UTF8String];
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync Pairing, new id:%{public, location:escape_only}s, old id:%{public, location:escape_only}s}", v8, 0x26u);
  }

  if (v4)
  {
    if (([v4 isEqual:{-[CLUsageSyncManager pairedDeviceID](self, "pairedDeviceID")}] & 1) == 0)
    {
      [(CLUsageSyncManager *)self setPairedDeviceID:v4];
      v6 = sub_1000206B4();
      sub_1002DC480(v6, @"kCLUsageSyncPairedDeviceID", [(NSString *)[(NSUUID *)self->_pairedDeviceID UUIDString] UTF8String]);
      v7 = *sub_1000206B4();
      (*(v7 + 944))();
      [(CLUsageSyncManager *)self service:[(CLUsageSyncManager *)self service] nearbyDevicesChanged:[(IDSService *)[(CLUsageSyncManager *)self service] devices]];
    }
  }
}

- (void)handleActiveNotification_bounce:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100869E88;
  v3[3] = &unk_102447418;
  v3[4] = self;
  [objc_msgSend(-[CLUsageSyncManager universe](self universe];
}

- (void)handleInactiveNotification_bounce:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100869F10;
  v3[3] = &unk_102447418;
  v3[4] = self;
  [objc_msgSend(-[CLUsageSyncManager universe](self universe];
}

- (id)currentlyActiveDevice
{
  if (!objc_opt_class())
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10195F060();
    }

    v19 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    buf = 68289026;
    v33 = 2082;
    v34 = "";
    v20 = "{msg%{public}.0s:#usesync #warning PDRRegistry is missing from this system}";
LABEL_34:
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, v20, &buf, 0x12u);
    return 0;
  }

  v3 = [(CLUsageSyncManager *)self pairedDeviceID];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = [+[PDRRegistry sharedInstance](PDRRegistry getPairedDevices];
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (!v5)
  {
LABEL_21:
    if (qword_1025D47A0 != -1)
    {
      sub_10195F074();
    }

    v19 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    buf = 68289026;
    v33 = 2082;
    v34 = "";
    v20 = "{msg%{public}.0s:#usesync #warning Couldn't find an active device}";
    goto LABEL_34;
  }

  v6 = v5;
  v7 = *v27;
  v8 = PDRDevicePropertyKeyPairingID;
LABEL_4:
  v9 = 0;
  while (1)
  {
    if (*v27 != v7)
    {
      objc_enumerationMutation(v4);
    }

    v10 = *(*(&v26 + 1) + 8 * v9);
    if ([objc_msgSend(v10 valueForProperty:{v8), "isEqual:", v3}])
    {
      break;
    }

    if (v6 == ++v9)
    {
      v6 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v6)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  v11 = v10;
  if (!v11)
  {
    goto LABEL_21;
  }

  v12 = [v11 valueForProperty:PDRDevicePropertyKeyBluetoothIdentifier];
  v13 = [(IDSService *)[(CLUsageSyncManager *)self service] linkedDevicesWithRelationship:1];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
LABEL_14:
    v17 = 0;
    while (1)
    {
      if (*v23 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v22 + 1) + 8 * v17);
      if ([objc_msgSend(v18 "nsuuid")])
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v15)
        {
          goto LABEL_14;
        }

        goto LABEL_30;
      }
    }

    result = v18;
    if (result)
    {
      return result;
    }
  }

LABEL_30:
  if (qword_1025D47A0 != -1)
  {
    sub_10195F074();
  }

  v19 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    v33 = 2082;
    v34 = "";
    v20 = "{msg%{public}.0s:#usesync #warning Couldn't find a matching IDS device}";
    goto LABEL_34;
  }

  return 0;
}

- (BOOL)_sendMessage:(id)a3 identifier:(id *)a4 error:(id *)a5
{
  [-[CLUsageSyncManager universe](self "universe")];
  if ([(CLUsageSyncManager *)self isPaired])
  {
    v9 = +[NSMutableDictionary dictionary];
    [v9 setObject:objc_msgSend(a3 forKeyedSubscript:{"messageType"), @"kCLUsageSyncMessageTypeKey"}];
    if ([a3 dataPayload])
    {
      [v9 setObject:objc_msgSend(a3 forKeyedSubscript:{"dataPayload"), @"kCLUsageSyncMessageDataKey"}];
    }

    v10 = sub_10001A3E8();
    if ((**v10)(v10))
    {
      v11 = [(CLUsageSyncManager *)self currentlyActiveDevice];
      if (!v11 || ([v11 operatingSystemVersion], *buf <= 4))
      {
        *buf = 0;
        v12 = sub_1000206B4();
        sub_10016B550(v12, @"kCLUsageSyncNextSequenceNumberKey", buf);
        v13 = sub_1000206B4();
        v20 = *buf + 1;
        sub_1004FD04C(v13, @"kCLUsageSyncNextSequenceNumberKey", &v20);
        v14 = *sub_1000206B4();
        (*(v14 + 944))();
        [v9 setObject:+[NSNumber numberWithLongLong:](NSNumber forKeyedSubscript:{"numberWithLongLong:", *buf), @"kCLUsageSyncMessageSequenceNumberKey"}];
      }
    }

    v15 = [(CLUsageSyncManager *)self currentlyActiveDevice];
    if (v15)
    {
      if ([v15 relationship] == 2)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10195F074();
        }

        v16 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          v22 = 2082;
          v23 = "";
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync device is standalone watch. Spoof it is sent}", buf, 0x12u);
        }

        LOBYTE(v15) = 1;
      }

      else
      {
        LOBYTE(v15) = -[IDSService sendMessage:toDestinations:priority:options:identifier:error:](self->_service, "sendMessage:toDestinations:priority:options:identifier:error:", v9, +[NSSet setWithObject:](NSSet, "setWithObject:", IDSCopyIDForDevice()), [a3 priority], objc_msgSend(a3, "idsOptions"), a4, a5);
      }
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10195F060();
    }

    v17 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v22 = 2082;
      v23 = "";
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#usesync Attempted to send when unpaired}", buf, 0x12u);
      if (qword_1025D47A0 != -1)
      {
        sub_10195F074();
      }
    }

    v18 = off_1025D47A8;
    LODWORD(v15) = os_signpost_enabled(off_1025D47A8);
    if (v15)
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v22 = 2082;
      v23 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#usesync Attempted to send when unpaired", "{msg%{public}.0s:#usesync Attempted to send when unpaired}", buf, 0x12u);
      LOBYTE(v15) = 0;
    }
  }

  return v15;
}

- (void)addMessageToErrorQueue:(id)a3
{
  [-[CLUsageSyncManager universe](self "universe")];
  if (!self->_retryTimerSet)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10195F060();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync Setting 5 minute error retry timer}", &v8, 0x12u);
    }

    [(CLTimer *)self->_retryTimer setNextFireDelay:300.0];
    self->_retryTimerSet = 1;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10195F074();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_msgSend(objc_msgSend(a3 "message")];
    v8 = 68289282;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync Adding a message to the error queue, type:%{public, location:escape_only}s}", &v8, 0x1Cu);
  }

  [(NSMutableArray *)self->_errorQueue addObject:a3];
}

- (void)drainErrorQueue
{
  [-[CLUsageSyncManager universe](self "universe")];
  if (qword_1025D47A0 != -1)
  {
    sub_10195F060();
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSMutableArray *)self->_errorQueue count];
    buf = 68289282;
    v17 = 2082;
    v18 = "";
    v19 = 2050;
    v20 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync Draining the error queue, count:%{public}lu}", &buf, 0x1Cu);
  }

  v5 = self->_errorQueue;
  [(CLUsageSyncManager *)self setErrorQueue:+[NSMutableArray array]];
  [(CLTimer *)self->_retryTimer setNextFireDelay:1.79769313e308];
  self->_retryTimerSet = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(CLUsageSyncManager *)self handleMessageError:*(*(&v11 + 1) + 8 * i)];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10195F074();
  }

  v10 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    v17 = 2082;
    v18 = "";
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync Error queue drained}", &buf, 0x12u);
  }
}

- (void)messageFailedToSend:(id)a3 withError:(id)a4 recoverable:(BOOL)a5
{
  v5 = a5;
  if ([a4 code] == 24)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10195F060();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 68289026;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync Message was replaced}", &v12, 0x12u);
    }
  }

  else
  {
    v10 = objc_alloc_init(CLClientManagerUsageSyncMessageError);
    [(CLClientManagerUsageSyncMessageError *)v10 setMessage:a3];
    [(CLClientManagerUsageSyncMessageError *)v10 setError:a4];
    [(CLClientManagerUsageSyncMessageError *)v10 setRecoverable:v5];
    if ([a4 code] == 23 && v5)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10195F060();
      }

      v11 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 68289026;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync Message timed out.  Retrying}", &v12, 0x12u);
      }

      [(CLUsageSyncManager *)self handleMessageError:v10];
    }

    else
    {

      [(CLUsageSyncManager *)self addMessageToErrorQueue:v10];
    }
  }
}

- (void)handleMessageError:(id)a3
{
  v5 = [a3 message];
  v6 = [a3 error];
  if (qword_1025D47A0 != -1)
  {
    sub_10195F060();
  }

  v7 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *v16 = 2082;
    *&v16[2] = "";
    *&v16[10] = 2114;
    *&v16[12] = v6;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync #warning Got error from IDS, attempting to recover, error:%{public, location:escape_only}@}", buf, 0x1Cu);
  }

  if ([v5 isMessageOfType:@"kCLUsageSyncMessageUsageUpdateKey"])
  {
    v8 = sub_10086B004([objc_msgSend(v5 "dataPayload")]);
    *buf = 0;
    *v16 = buf;
    *&v16[8] = 0x3052000000;
    *&v16[16] = sub_100047608;
    v17 = sub_100048504;
    v18 = 0;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10086B084;
    v14[3] = &unk_1024784A0;
    v14[4] = v8;
    v14[5] = buf;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10086B19C;
    v13[3] = &unk_1024784C8;
    v13[5] = v8;
    v13[6] = buf;
    v13[4] = self;
    [(CLClientManagerPublicProtocol *)[(CLUsageSyncManager *)self manager] doAsync:v14 withReply:v13];
    _Block_object_dispose(buf, 8);
  }

  else if ([v5 isMessageOfType:@"kCLUsageSyncMessageResyncResponseKey"])
  {
    [(CLUsageSyncManager *)self sendAllUsageSyncData];
  }

  else if ([v5 isMessageOfType:@"kCLUsageSyncMessageResyncRequestKey"])
  {
    [(CLUsageSyncManager *)self requestFullResync];
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10195F074();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v10 = [objc_msgSend(v5 "messageType")];
      *buf = 68289282;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      *&v16[10] = 2082;
      *&v16[12] = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#usesync Unrecognized type message failed to send.  Cannot recover., type:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10195F074();
      }
    }

    v11 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v12 = [objc_msgSend(v5 "messageType")];
      *buf = 68289282;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      *&v16[10] = 2082;
      *&v16[12] = v12;
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#usesync Unrecognized type message failed to send.  Cannot recover.", "{msg%{public}.0s:#usesync Unrecognized type message failed to send.  Cannot recover., type:%{public, location:escape_only}s}", buf, 0x1Cu);
    }
  }
}

- (void)sendMessage:(id)a3
{
  [-[CLUsageSyncManager universe](self "universe")];
  if (self->_pairedDeviceID)
  {
    v12 = 0;
    v13 = 0;
    v5 = [(CLUsageSyncManager *)self _sendMessage:a3 identifier:&v13 error:&v12];
    if (!v5 || v12)
    {
      [(CLUsageSyncManager *)self messageFailedToSend:a3 withError:v12 recoverable:v5];
    }

    else if (v13)
    {
      v6 = [(CLUsageSyncManager *)self messagesWaitingForAck];
      [(NSMutableDictionary *)v6 setObject:a3 forKeyedSubscript:v13];
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10195F074();
      }

      v8 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        v9 = [objc_msgSend(a3 "messageType")];
        *buf = 68289282;
        v15 = 0;
        v16 = 2082;
        v17 = "";
        v18 = 2082;
        v19 = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#usesync Didn't get an identifier for message, type:%{public, location:escape_only}s}", buf, 0x1Cu);
        if (qword_1025D47A0 != -1)
        {
          sub_10195F074();
        }
      }

      v10 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        v11 = [objc_msgSend(a3 "messageType")];
        *buf = 68289282;
        v15 = 0;
        v16 = 2082;
        v17 = "";
        v18 = 2082;
        v19 = v11;
        _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#usesync Didn't get an identifier for message", "{msg%{public}.0s:#usesync Didn't get an identifier for message, type:%{public, location:escape_only}s}", buf, 0x1Cu);
      }
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10195F060();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = [objc_msgSend(a3 "messageType")];
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync Dropping a message because we aren't paired, type:%{public, location:escape_only}s}", buf, 0x1Cu);
    }
  }
}

- (void)sendMessageWithMessageType:(id)a3 dataPayload:(id)a4 priority:(int64_t)a5 idsOptions:(id)a6
{
  [-[CLUsageSyncManager universe](self "universe")];
  v11 = objc_alloc_init(CLClientManagerUsageSyncMessage);
  [(CLClientManagerUsageSyncMessage *)v11 setMessageType:a3];
  [(CLClientManagerUsageSyncMessage *)v11 setDataPayload:a4];
  [(CLClientManagerUsageSyncMessage *)v11 setPriority:a5];
  [(CLClientManagerUsageSyncMessage *)v11 setIdsOptions:a6];

  [(CLUsageSyncManager *)self sendMessage:v11];
}

- (void)requestFullResync
{
  [-[CLUsageSyncManager universe](self "universe")];
  if ([(CLUsageSyncManager *)self isPaired])
  {
    v8[0] = IDSSendMessageOptionTimeoutKey;
    v8[1] = IDSSendMessageOptionEncryptPayloadKey;
    v9[0] = &off_10254F0C8;
    v9[1] = &__kCFBooleanTrue;
    v8[2] = IDSSendMessageOptionForceLocalDeliveryKey;
    v8[3] = IDSSendMessageOptionQueueOneIdentifierKey;
    v9[2] = &__kCFBooleanTrue;
    v9[3] = @"kCLUsageSyncResyncRequestQueueIdentifierKey";
    [(CLUsageSyncManager *)self sendMessageWithMessageType:@"kCLUsageSyncMessageResyncRequestKey" dataPayload:0 priority:300 idsOptions:[NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:4]];
    if (qword_1025D47A0 != -1)
    {
      sub_10195F074();
    }

    v3 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      v11 = 2082;
      v12 = "";
      v4 = "{msg%{public}.0s:#usesync Full resync requested}";
      v5 = v3;
      v6 = OS_LOG_TYPE_DEFAULT;
LABEL_10:
      _os_log_impl(dword_100000000, v5, v6, v4, &buf, 0x12u);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10195F060();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      buf = 68289026;
      v11 = 2082;
      v12 = "";
      v4 = "{msg%{public}.0s:#usesync Not performing full sync due to being unpaired}";
      v5 = v7;
      v6 = OS_LOG_TYPE_INFO;
      goto LABEL_10;
    }
  }
}

- (void)client:(id)a3 didChangeUsageData:(id)a4
{
  v7 = _os_feature_enabled_impl();
  v8 = sub_10001A3E8();
  if (v7)
  {
    if (sub_10001CF3C())
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10195F060();
      }

      v9 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 68289026;
        v12 = 0;
        v13 = 2082;
        v14 = "";
        v10 = "{msg%{public}.0s:#usesync dropping watch usage data change}";
LABEL_12:
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, v10, &v11, 0x12u);
        return;
      }

      return;
    }

LABEL_14:

    [(CLUsageSyncManager *)self client:a3 didChangeUsageDataInternal:a4];
    return;
  }

  if (!(**v8)(v8))
  {
    goto LABEL_14;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10195F060();
  }

  v9 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 68289026;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v10 = "{msg%{public}.0s:#didChangeUsageData dropping companion usage data change}";
    goto LABEL_12;
  }
}

- (void)client:(id)a3 didChangeUsageDataInternal:(id)a4
{
  [-[CLUsageSyncManager universe](self "universe")];
  if (a4)
  {
    if ([(CLUsageSyncManager *)self isPaired])
    {
      v27[0] = @"kCLUsageSyncClientKey";
      v27[1] = @"kCLUsageSyncUsageKey";
      v28[0] = a3;
      v28[1] = a4;
      v7 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
      v25[0] = IDSSendMessageOptionTimeoutKey;
      v25[1] = IDSSendMessageOptionEncryptPayloadKey;
      v26[0] = &off_10254F0C8;
      v26[1] = &__kCFBooleanTrue;
      v25[2] = IDSSendMessageOptionForceLocalDeliveryKey;
      v25[3] = IDSSendMessageOptionNonWakingKey;
      v26[2] = &__kCFBooleanTrue;
      v26[3] = &__kCFBooleanTrue;
      v25[4] = IDSSendMessageOptionQueueOneIdentifierKey;
      v26[4] = [@"usage-" stringByAppendingString:a3];
      [(CLUsageSyncManager *)self sendMessageWithMessageType:@"kCLUsageSyncMessageUsageUpdateKey" dataPayload:v7 priority:300 idsOptions:[NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:5]];
      if (qword_1025D47A0 != -1)
      {
        sub_10195F074();
      }

      v8 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 68289538;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2082;
        v22 = [a3 UTF8String];
        v23 = 2114;
        v24 = a4;
        v9 = "{msg%{public}.0s:#usesync Enqueued usage update message, client:%{public, location:escape_only}s, usage:%{public, location:escape_only}@}";
        v10 = v8;
        v11 = OS_LOG_TYPE_DEFAULT;
        v12 = 38;
LABEL_18:
        _os_log_impl(dword_100000000, v10, v11, v9, &v17, v12);
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10195F060();
      }

      v16 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        v17 = 68289026;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v9 = "{msg%{public}.0s:#usesync Not performing sync due to being unpaired}";
        v10 = v16;
        v11 = OS_LOG_TYPE_INFO;
        v12 = 18;
        goto LABEL_18;
      }
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10195F060();
    }

    v13 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v17 = 68289282;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = [a3 UTF8String];
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#usesync Got empty usage dictionary, client:%{public, location:escape_only}s}", &v17, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10195F074();
      }
    }

    v14 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v15 = [a3 UTF8String];
      v17 = 68289282;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = v15;
      _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#usesync Got empty usage dictionary", "{msg%{public}.0s:#usesync Got empty usage dictionary, client:%{public, location:escape_only}s}", &v17, 0x1Cu);
    }
  }
}

- (void)onStatusBarIconChange:(int)a3
{
  sub_10001A3E8();
  if (sub_10001CF3C())
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10195F060();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v6 = "{msg%{public}.0s:#onStatusBarIconChange on watch, dropping iconState change}";
LABEL_11:
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0x12u);
    }
  }

  else
  {
    dword_10265AE88 = a3;
    if (self->_coalescingUpdates)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10195F060();
      }

      v5 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v10 = 0;
        v11 = 2082;
        v12 = "";
        v6 = "{msg%{public}.0s:#onStatusBarIconChange dropping iconState change, coalescing updates}";
        goto LABEL_11;
      }
    }

    else
    {
      self->_coalescingUpdates = 1;
      v7 = dispatch_time(0, 1000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10086BE38;
      block[3] = &unk_102447418;
      block[4] = self;
      dispatch_after(v7, [objc_msgSend(-[CLUsageSyncManager universe](self "universe")], block);
    }
  }
}

- (void)onStatusBarIconChangeInternal:(int)a3
{
  if (self->_lastStatusBarIconState == a3)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10195F060();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 1026;
      LODWORD(v20) = a3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#onStatusBarIconChangeInternal dropping duplicate iconState, iconState:%{public}d}", buf, 0x18u);
    }
  }

  else
  {
    self->_lastStatusBarIconState = a3;
    if (qword_1025D47A0 != -1)
    {
      sub_10195F060();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289283;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 1025;
      LODWORD(v20) = a3;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#onStatusBarIconChangeInternal processing iconState, iconState:%{private}d}", buf, 0x18u);
    }

    if (a3 == 1)
    {
      v7 = 0;
      v8 = 2;
    }

    else if (a3 == 2)
    {
      v7 = 0;
      v8 = 10;
    }

    else
    {
      v7 = 1;
      v8 = 24;
    }

    v9 = objc_alloc_init(NSMutableDictionary);
    if ((v7 & 1) == 0)
    {
      v13 = 0;
      v14 = 0;
      sub_10004F9C8(v8, &v14, &v13);
      if (v14)
      {
        v10 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
        [v9 setValue:v10 forKey:v14];
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10195F074();
        }

        v11 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289282;
          v16 = 0;
          v17 = 2082;
          v18 = "";
          v19 = 2050;
          v20 = v8;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#onStatusBarIconChangeInternal lacks start key, clientServiceType:%{public}lu}", buf, 0x1Cu);
          if (qword_1025D47A0 != -1)
          {
            sub_10195F074();
          }
        }

        v12 = off_1025D47A8;
        if (os_signpost_enabled(off_1025D47A8))
        {
          *buf = 68289282;
          v16 = 0;
          v17 = 2082;
          v18 = "";
          v19 = 2050;
          v20 = v8;
          _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#onStatusBarIconChangeInternal lacks start key", "{msg%{public}.0s:#onStatusBarIconChangeInternal lacks start key, clientServiceType:%{public}lu}", buf, 0x1Cu);
        }
      }
    }

    [(CLUsageSyncManager *)self client:@"com.apple.location.AggregateLocationIconApp" didChangeUsageDataInternal:v9];
  }
}

- (void)sendAllUsageSyncData
{
  [-[CLUsageSyncManager universe](self "universe")];
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3052000000;
  v5[3] = sub_100047608;
  v5[4] = sub_100048504;
  v5[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10086C2D4;
  v4[3] = &unk_10244F938;
  v4[4] = v5;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10086C324;
  v3[3] = &unk_1024784F0;
  v3[4] = self;
  v3[5] = v5;
  [(CLClientManagerPublicProtocol *)[(CLUsageSyncManager *)self manager] doAsync:v4 withReply:v3];
  _Block_object_dispose(v5, 8);
}

- (id)mungedUsageDataForPotentiallyOldUsageData:(id)a3
{
  v5 = sub_10001A3E8();
  if (!(**v5)(v5))
  {
    return a3;
  }

  v6 = [(CLUsageSyncManager *)self currentlyActiveDevice];
  if (v6)
  {
    [v6 operatingSystemVersion];
    if (*buf > 3)
    {
      return a3;
    }
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  *&v7 = 68289282;
  v33 = v7;
  do
  {
    v11 = qword_101CB2220[v10];
    v34 = 0;
    v35 = 0;
    sub_10004F9C8(v11, &v35, &v34);
    if (v35)
    {
      v12 = v34 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v15 = [a3 objectForKeyedSubscript:?];
      v16 = [a3 objectForKeyedSubscript:v34];
      v17 = v16;
      if (v15)
      {
        v18 = v16 == 0;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        if (!v15)
        {
LABEL_36:
          v15 = v8;
          goto LABEL_37;
        }

        if (v8)
        {
LABEL_35:
          [(NSNumber *)v8 doubleValue];
          v25 = v24;
          [(NSNumber *)v15 doubleValue];
          if (v25 > v26)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10195F074();
        }

        v19 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          *buf = v33;
          *&buf[4] = 0;
          v37 = 2082;
          v38 = "";
          v39 = 2114;
          v40 = a3;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#usesync Found start time AND stop time for a service, usageData:%{public, location:escape_only}@}", buf, 0x1Cu);
          if (qword_1025D47A0 != -1)
          {
            sub_10195F074();
          }
        }

        v20 = off_1025D47A8;
        if (os_signpost_enabled(off_1025D47A8))
        {
          *buf = v33;
          *&buf[4] = 0;
          v37 = 2082;
          v38 = "";
          v39 = 2114;
          v40 = a3;
          _os_signpost_emit_with_name_impl(dword_100000000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#usesync Found start time AND stop time for a service", "{msg%{public}.0s:#usesync Found start time AND stop time for a service, usageData:%{public, location:escape_only}@}", buf, 0x1Cu);
        }

        [v17 doubleValue];
        v22 = v21;
        [(NSNumber *)v15 doubleValue];
        if (v22 > v23)
        {
          v15 = v8;
          goto LABEL_38;
        }

        v17 = 0;
        if (v8)
        {
          goto LABEL_35;
        }
      }

LABEL_37:
      if (!v17)
      {
LABEL_41:
        v8 = v15;
        goto LABEL_42;
      }

LABEL_38:
      if (!v9 || ([v9 doubleValue], v28 = v27, objc_msgSend(v17, "doubleValue"), v28 < v29))
      {
        v9 = v17;
      }

      goto LABEL_41;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10195F074();
    }

    v13 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = v33;
      *&buf[4] = 0;
      v37 = 2082;
      v38 = "";
      v39 = 2050;
      v40 = v11;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#usesync Insanity!  A service lacks start/stop keys, service:%{public}lu}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10195F074();
      }
    }

    v14 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = v33;
      *&buf[4] = 0;
      v37 = 2082;
      v38 = "";
      v39 = 2050;
      v40 = v11;
      _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#usesync Insanity!  A service lacks start/stop keys", "{msg%{public}.0s:#usesync Insanity!  A service lacks start/stop keys, service:%{public}lu}", buf, 0x1Cu);
    }

LABEL_42:
    ++v10;
  }

  while (v10 != 7);
  if (v8 | v9)
  {
    a3 = [a3 mutableCopy];
    v35 = 0;
    *buf = 0;
    sub_10004F9C8(10, buf, &v35);
    if (v8)
    {
      v30 = *buf;
    }

    else
    {
      v30 = v35;
      [v9 doubleValue];
      v8 = [NSNumber numberWithDouble:v31 + 10.0];
    }

    [a3 setObject:v8 forKeyedSubscript:{v30, v33}];
  }

  return a3;
}

- (void)handleMessageSendError:(id)a3 identifier:(id)a4
{
  if (a4)
  {
    v7 = [(NSMutableDictionary *)[(CLUsageSyncManager *)self messagesWaitingForAck] objectForKeyedSubscript:a4];
    if (v7)
    {

      [(CLUsageSyncManager *)self messageFailedToSend:v7 withError:a3 recoverable:1];
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10195F060();
      }

      v10 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 68289538;
        v12 = 0;
        v13 = 2082;
        v14 = "";
        v15 = 2082;
        v16 = [a4 UTF8String];
        v17 = 2114;
        v18 = a3;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync Message from past life failed, identifier:%{public, location:escape_only}s, error:%{public, location:escape_only}@}", &v11, 0x26u);
      }
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10195F060();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v11 = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2114;
      v16 = a3;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#usesync Unknown message failed, error:%{public, location:escape_only}@}", &v11, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10195F074();
      }
    }

    v9 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v11 = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2114;
      v16 = a3;
      _os_signpost_emit_with_name_impl(dword_100000000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#usesync Unknown message failed", "{msg%{public}.0s:#usesync Unknown message failed, error:%{public, location:escape_only}@}", &v11, 0x1Cu);
    }
  }
}

- (void)handleMessageSendSuccessForIdentifier:(id)a3
{
  if (qword_1025D47A0 != -1)
  {
    sub_10195F060();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2082;
    v9 = [a3 UTF8String];
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync Message sent, identifier:%{public, location:escape_only}s}", v5, 0x1Cu);
  }
}

- (void)handleMessageUsageUpdateWithMessageData:(id)a3
{
  if (!_os_feature_enabled_impl() || (v5 = sub_10001A3E8(), ((**v5)(v5) & 1) == 0))
  {
    [-[CLUsageSyncManager universe](self "universe")];
    if (qword_1025D47A0 != -1)
    {
      sub_10195F060();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      LOWORD(v17) = 2082;
      *(&v17 + 2) = "";
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync Got usage update}", buf, 0x12u);
    }

    v7 = [a3 objectForKeyedSubscript:@"kCLUsageSyncClientKey"];
    v8 = [a3 objectForKeyedSubscript:@"kCLUsageSyncUsageKey"];
    v9 = v8;
    if (v7 && v8)
    {
      v10 = sub_10086B004(v7);
      v11 = [(CLUsageSyncManager *)self mungedUsageDataForPotentiallyOldUsageData:v9];
      *buf = 0;
      *&v17 = buf;
      *(&v17 + 1) = 0x2020000000;
      LOBYTE(v18) = 0;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10086D140;
      v15[3] = &unk_102478518;
      v15[4] = v10;
      v15[5] = v11;
      v15[6] = buf;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10086D258;
      v14[3] = &unk_1024784F0;
      v14[4] = self;
      v14[5] = buf;
      [(CLClientManagerPublicProtocol *)[(CLUsageSyncManager *)self manager] doAsync:v15 withReply:v14];
      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10195F074();
      }

      v12 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289538;
        *&buf[4] = 0;
        LOWORD(v17) = 2082;
        *(&v17 + 2) = "";
        WORD5(v17) = 1026;
        HIDWORD(v17) = v7 != 0;
        v18 = 1026;
        v19 = v9 != 0;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#usesync Didn't get an expected parameter, client key:%{public}hhd, usage data:%{public}hhd}", buf, 0x1Eu);
        if (qword_1025D47A0 != -1)
        {
          sub_10195F074();
        }
      }

      v13 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        *buf = 68289538;
        *&buf[4] = 0;
        LOWORD(v17) = 2082;
        *(&v17 + 2) = "";
        WORD5(v17) = 1026;
        HIDWORD(v17) = v7 != 0;
        v18 = 1026;
        v19 = v9 != 0;
        _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#usesync Didn't get an expected parameter", "{msg%{public}.0s:#usesync Didn't get an expected parameter, client key:%{public}hhd, usage data:%{public}hhd}", buf, 0x1Eu);
      }
    }
  }
}

- (void)handleMessageResyncRequestWithMessageData:(id)a3
{
  [-[CLUsageSyncManager universe](self universe];
  if (qword_1025D47A0 != -1)
  {
    sub_10195F060();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync Got request for full resync of data}", v5, 0x12u);
  }

  [(CLUsageSyncManager *)self sendAllUsageSyncData];
}

- (void)handleMessageResyncResponseWithMessageData:(id)a3
{
  [-[CLUsageSyncManager universe](self "universe")];
  if (qword_1025D47A0 != -1)
  {
    sub_10195F060();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    LOWORD(v17) = 2082;
    *(&v17 + 2) = "";
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync Got full resync data}", buf, 0x12u);
  }

  v6 = +[NSMutableDictionary dictionary];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v12 objects:v19 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(a3);
        }

        [v6 setObject:-[CLUsageSyncManager mungedUsageDataForPotentiallyOldUsageData:](self forKeyedSubscript:{"mungedUsageDataForPotentiallyOldUsageData:", objc_msgSend(a3, "objectForKeyedSubscript:", *(*(&v12 + 1) + 8 * i))), sub_10086B004(*(*(&v12 + 1) + 8 * i))}];
      }

      v7 = [a3 countByEnumeratingWithState:&v12 objects:v19 count:16];
    }

    while (v7);
  }

  *buf = 0;
  *&v17 = buf;
  *(&v17 + 1) = 0x2020000000;
  v18 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10086D5F8;
  v11[3] = &unk_102478540;
  v11[4] = v6;
  v11[5] = buf;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10086D714;
  v10[3] = &unk_1024784F0;
  v10[4] = self;
  v10[5] = buf;
  [(CLClientManagerPublicProtocol *)[(CLUsageSyncManager *)self manager] doAsync:v11 withReply:v10];
  _Block_object_dispose(buf, 8);
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  [-[CLUsageSyncManager universe](self universe];
  if (!a7 && v8)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10195F060();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 68289282;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = [a5 UTF8String];
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync sent, identifier:%{public, location:escape_only}s}", &v15, 0x1Cu);
    }

    [(CLUsageSyncManager *)self handleMessageSendSuccessForIdentifier:a5];
LABEL_19:
    [(NSMutableDictionary *)[(CLUsageSyncManager *)self messagesWaitingForAck] removeObjectForKey:a5];
    return;
  }

  v12 = [objc_msgSend(a7 "userInfo")];
  if (!v12 || [v12 code] != 32)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10195F060();
    }

    v14 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 68289794;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = [a5 UTF8String];
      v21 = 1026;
      v22 = v8;
      v23 = 2114;
      v24 = a7;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync #warning Failure, identifier:%{public, location:escape_only}s, succeeded:%{public}hhd, error:%{public, location:escape_only}@}", &v15, 0x2Cu);
    }

    [(CLUsageSyncManager *)self handleMessageSendError:a7 identifier:a5];
    goto LABEL_19;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10195F060();
  }

  v13 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 68289026;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync Sync to/from standalone watch is not supported}", &v15, 0x12u);
  }
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  [-[CLUsageSyncManager universe](self universe];
  sub_10001A3E8();
  if (!sub_10001CF3C())
  {
    return;
  }

  v9 = [a5 objectForKeyedSubscript:@"kCLUsageSyncMessageTypeKey"];
  if (v9)
  {
    v10 = v9;
    v11 = [a5 objectForKeyedSubscript:@"kCLUsageSyncMessageDataKey"];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v24 = sub_10086DDEC;
    v25 = &unk_102478568;
    v26 = v10;
    if ([@"kCLUsageSyncMessageUsageUpdateKey" isEqualToString:v10])
    {
      [(CLUsageSyncManager *)self handleMessageUsageUpdateWithMessageData:v11];
      return;
    }

    if (v24(v23, @"kCLUsageSyncMessageResyncRequestKey"))
    {
      [(CLUsageSyncManager *)self handleMessageResyncRequestWithMessageData:v11];
      return;
    }

    if (v24(v23, @"kCLUsageSyncMessageResyncResponseKey"))
    {
      [(CLUsageSyncManager *)self handleMessageResyncResponseWithMessageData:v11];
      return;
    }

    if (v24(v23, @"kCLUsageSyncMessagePromptKey"))
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10195F074();
      }

      v18 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289283;
        *&buf[4] = 0;
        v28 = 2082;
        v29 = "";
        v30 = 2113;
        v31 = a5;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync #warning received legacy kCLUsageSyncMessagePromptKey message, ignoring, payload:%{private, location:escape_only}@}", buf, 0x1Cu);
      }

      return;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10195F074();
    }

    v19 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v20 = [v10 UTF8String];
      *buf = 68289539;
      *&buf[4] = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2082;
      v31 = v20;
      v32 = 2113;
      v33 = a5;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#usesync Unrecognized message, type:%{public, location:escape_only}s, payload:%{private, location:escape_only}@}", buf, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        sub_10195F074();
      }
    }

    v21 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v22 = [v10 UTF8String];
      *buf = 68289539;
      *&buf[4] = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2082;
      v31 = v22;
      v32 = 2113;
      v33 = a5;
      v14 = "#usesync Unrecognized message";
      v15 = "{msg%{public}.0s:#usesync Unrecognized message, type:%{public, location:escape_only}s, payload:%{private, location:escape_only}@}";
      v16 = v21;
      v17 = 38;
      goto LABEL_12;
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10195F060();
    }

    v12 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v28 = 2082;
      v29 = "";
      v30 = 2114;
      v31 = a5;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#usesync Got invalid message from IDS, message:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10195F074();
      }
    }

    v13 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2114;
      v31 = a5;
      v14 = "#usesync Got invalid message from IDS";
      v15 = "{msg%{public}.0s:#usesync Got invalid message from IDS, message:%{public, location:escape_only}@}";
      v16 = v13;
      v17 = 28;
LABEL_12:
      _os_signpost_emit_with_name_impl(dword_100000000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v14, v15, buf, v17);
    }
  }
}

- (void)service:(id)a3 nearbyDevicesChanged:(id)a4
{
  [-[CLUsageSyncManager universe](self universe];
  v5 = [(CLUsageSyncManager *)self currentlyActiveDevice];
  if (v5 && [v5 isNearby])
  {
    if ([(CLUsageSyncManager *)self activeDeviceNearbyStatus]== 1)
    {
      return;
    }

    v6 = 1;
    v7 = 1;
  }

  else
  {
    if ([(CLUsageSyncManager *)self activeDeviceNearbyStatus]== 2)
    {
      return;
    }

    v6 = 0;
    v7 = 2;
  }

  [(CLUsageSyncManager *)self setActiveDeviceNearbyStatus:v7];
  if (qword_1025D47A0 != -1)
  {
    sub_10195F060();
  }

  v8 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289282;
    v12 = 2082;
    v13 = "";
    v14 = 1026;
    v15 = v6;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync Paired device nearby change, is nearby:%{public}hhd}", &buf, 0x18u);
  }

  if (v6)
  {
    if (self->_needFullResync)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10086E118;
      v9[3] = &unk_102447418;
      v9[4] = self;
      [objc_msgSend(-[CLUsageSyncManager universe](self "universe")];
    }
  }

  else if (self->_dirtyUsageSyncState)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10086E0F0;
    v10[3] = &unk_102447418;
    v10[4] = self;
    [(CLClientManagerPublicProtocol *)[(CLUsageSyncManager *)self manager] doAsync:&stru_102478588 withReply:v10];
  }
}

@end