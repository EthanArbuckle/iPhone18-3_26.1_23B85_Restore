@interface PDURLSessionProxyService
- (BOOL)verifyAndUpdateIncomingSequenceNumber:(unint64_t)a3 forPriority:(int64_t)a4;
- (PDURLSessionProxyService)init;
- (id)defaultPairedDevice;
- (unint64_t)bumpAndReturnOutgoingSequenceNumberForPriority:(int64_t)a3;
- (void)_onqueue_handleFailedMessageSend:(id)a3 ofType:(unsigned __int16)a4;
- (void)_onqueue_handleReceivedMessage:(id)a3 ofType:(unsigned __int16)a4 withReply:(id)a5;
- (void)_onqueue_handleReceivedReply:(id)a3 forIdentifier:(id)a4 ofType:(unsigned __int16)a5 withError:(id)a6;
- (void)_onqueue_messageWithIdentifier:(id)a3 didSendWithSuccess:(BOOL)a4 error:(id)a5;
- (void)_onqueue_sendMessage:(id)a3 ofType:(unsigned __int16)a4 responseIdentifier:(id)a5 forSourceApplication:(id)a6 withUrgency:(BOOL)a7 withIDSMessageTimeout:(int64_t)a8 withReply:(id)a9;
- (void)_onqueue_sendStartupMessage;
- (void)_onqueue_updateDeviceState;
- (void)devicesDidUnpair:(id)a3;
- (void)sendProtobufMessage:(id)a3 ofType:(unsigned __int16)a4 withReply:(id)a5;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)service:(id)a3 didSwitchActivePairedDevice:(id)a4 acknowledgementBlock:(id)a5;
- (void)start;
@end

@implementation PDURLSessionProxyService

- (void)service:(id)a3 didSwitchActivePairedDevice:(id)a4 acknowledgementBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = qword_1000EB1D8;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v18 = 138412290;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: didSwitchActivePairedDevice", &v18, 0xCu);
  }

  currentRemoteLaunchUUID = self->_currentRemoteLaunchUUID;
  self->_currentRemoteLaunchUUID = 0;

  [(NSMutableSet *)self->_receivedLaunchUUIDs removeAllObjects];
  [(PDURLSessionProxyService *)self _onqueue_remoteDeviceStartedUp];
  v10[2](v10);
  v15 = +[NSUUID UUID];
  v16 = [v15 UUIDString];
  launchUUID = self->_launchUUID;
  self->_launchUUID = v16;

  self->_haveReceivedMessage = 0;
  [(PDURLSessionProxyService *)self _onqueue_sendStartupMessage];
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1000EB1D8;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = 138412546;
    v12 = v10;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: activeAccountsChanged: %@", &v11, 0x16u);
  }

  if ([v7 count] && self->_startupMessageFailed)
  {
    [(PDURLSessionProxyService *)self _onqueue_sendStartupMessage];
  }
}

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a5;
  v48 = a7;
  v11 = [v10 type];
  v47 = [v10 data];
  v12 = qword_1000EB1D8;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = NSStringFromSelector(a2);
    v16 = [v48 outgoingResponseIdentifier];
    v17 = [v10 isResponse];
    v18 = [v47 length];
    *buf = 138413570;
    if (v17)
    {
      v19 = 89;
    }

    else
    {
      v19 = 78;
    }

    v54 = v14;
    v55 = 2112;
    *v56 = v15;
    *&v56[8] = 2114;
    *v57 = v16;
    *&v57[8] = 1024;
    *v58 = v11;
    *&v58[4] = 1024;
    *&v58[6] = v19;
    v59 = 2048;
    v60 = v18;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@::%@ outgoingResponseIdentifier = %{public}@, type = %u, isResponse = %c, data length = %lu", buf, 0x36u);
  }

  v20 = +[PDURLSessionProxyCommon messageSubclassForMessageType:isReply:](PDURLSessionProxyCommon, "messageSubclassForMessageType:isReply:", v11, [v10 isResponse]);
  if ([(objc_class *)v20 isEqual:objc_opt_class()])
  {
    v21 = qword_1000EB1D8;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      v43 = [v10 isResponse];
      v44 = [v47 length];
      *buf = 138413058;
      if (v43)
      {
        v45 = 89;
      }

      else
      {
        v45 = 78;
      }

      v54 = v42;
      v55 = 1024;
      *v56 = v11;
      *&v56[4] = 1024;
      *&v56[6] = v45;
      *v57 = 2048;
      *&v57[2] = v44;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%@ received protobuf of type %u which could not be decoded! isResponse = %c, data length = %lu", buf, 0x22u);
    }

    v22 = 0;
  }

  else
  {
    v23 = [v20 alloc];
    v21 = [v10 data];
    v22 = [v23 initWithData:v21];
  }

  v24 = [v22 _nsurlsessionproxy_launchUUID];
  if (!self->_haveReceivedMessage)
  {
    self->_haveReceivedMessage = 1;
    if (!self->_startupMessageIdentifier)
    {
      [(PDURLSessionProxyService *)self _onqueue_sendStartupMessage];
    }
  }

  if (!v24 || ([v10 isResponse] & 1) != 0)
  {
    if (v11 == 10000)
    {
      v25 = qword_1000EB1D8;
      if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Received PDURLSessionProxy Startup message (without a launchUUID)", buf, 2u);
      }

      [(PDURLSessionProxyService *)self _onqueue_remoteDeviceStartedUp];
      self->_haveReceivedLegacyStartupMessage = 1;
      goto LABEL_47;
    }

    goto LABEL_21;
  }

  if (([(NSMutableSet *)self->_receivedLaunchUUIDs containsObject:v24]& 1) == 0)
  {
    v27 = qword_1000EB1D8;
    v28 = os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_DEFAULT);
    if (v11 == 10000)
    {
      if (!v28)
      {
        goto LABEL_28;
      }

      *buf = 138412290;
      v54 = v24;
      v29 = "Received PDURLSession Startup message with launchUUID %@";
    }

    else
    {
      if (!v28)
      {
        goto LABEL_28;
      }

      *buf = 138412290;
      v54 = v24;
      v29 = "Received PDURLSessionProxy message with new launchUUID %@";
    }

    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v29, buf, 0xCu);
LABEL_28:
    v26 = v11 != 10000;
    if (self->_currentRemoteLaunchUUID || v11 == 10000 || self->_haveReceivedLegacyStartupMessage)
    {
      [(PDURLSessionProxyService *)self _onqueue_remoteDeviceStartedUp];
    }

    objc_storeStrong(&self->_currentRemoteLaunchUUID, v24);
    [(NSMutableSet *)self->_receivedLaunchUUIDs addObject:v24];
    goto LABEL_31;
  }

  if ([(NSString *)self->_currentRemoteLaunchUUID isEqualToString:v24])
  {
LABEL_21:
    v26 = 1;
LABEL_31:
    if (v22 && v26)
    {
      v46 = [(PDURLSessionProxyService *)self _onqueue_loggableDescriptionForMessage:v22];
      v30 = qword_1000EB1D8;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v48 outgoingResponseIdentifier];
        v32 = [v10 isResponse];
        v33 = [v47 length];
        *buf = 138544386;
        if (v32)
        {
          v34 = 89;
        }

        else
        {
          v34 = 78;
        }

        v54 = v46;
        v55 = 2114;
        *v56 = v31;
        *&v56[8] = 1024;
        *v57 = v11;
        *&v57[4] = 1024;
        *&v57[6] = v34;
        *v58 = 2048;
        *&v58[2] = v33;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ receiving NSURLSession proxy message, identifier = %{public}@, type = %u, isReply = %c, data length = %lu", buf, 0x2Cu);
      }

      if ([v10 isResponse])
      {
        v35 = [v48 incomingResponseIdentifier];
        [(PDURLSessionProxyService *)self _onqueue_handleReceivedReply:v22 forIdentifier:v35 ofType:v11 withError:0];
      }

      else
      {
        v36 = [v22 _nsurlsessionproxy_sequenceNumber];
        v37 = [v22 _nsurlsessionproxy_messagePriority];
        v38 = qword_1000EB1D8;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = [v48 outgoingResponseIdentifier];
          *buf = 138543874;
          v54 = v39;
          v55 = 2048;
          *v56 = v37;
          *&v56[8] = 2048;
          *v57 = v36;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Incoming (non-reply) message with identifier %{public}@ has priority %lld and sequence number %llu", buf, 0x20u);
        }

        if ([(PDURLSessionProxyService *)self verifyAndUpdateIncomingSequenceNumber:v36 forPriority:v37])
        {
          v49[0] = _NSConcreteStackBlock;
          v49[1] = 3221225472;
          v49[2] = sub_10000B430;
          v49[3] = &unk_1000D50C0;
          v49[4] = self;
          v50 = v22;
          v52 = v11;
          v51 = v48;
          [(PDURLSessionProxyService *)self _onqueue_handleReceivedMessage:v50 ofType:v11 withReply:v49];
        }
      }
    }

    goto LABEL_47;
  }

  v40 = qword_1000EB1D8;
  if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v54 = v24;
    _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Dropping NSURLSessionProxy message with old launchUUID %@", buf, 0xCu);
  }

LABEL_47:
}

- (void)_onqueue_messageWithIdentifier:(id)a3 didSendWithSuccess:(BOOL)a4 error:(id)a5
{
  v13 = a3;
  v8 = a5;
  if (a4)
  {
    v9 = [(NSMutableDictionary *)self->_outstandingReplies objectForKeyedSubscript:v13];

    if (v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = [(NSMutableDictionary *)self->_outstandingMessages objectForKeyedSubscript:v13];
    v11 = v8;
    if (!v8)
    {
      v11 = [NSError errorWithDomain:NSURLErrorDomain code:-1 userInfo:0];
    }

    [(PDURLSessionProxyService *)self _onqueue_handleReceivedReply:0 forIdentifier:v13 ofType:0 withError:v11];
    if (!v8)
    {
    }

    v12 = [v10 message];
    -[PDURLSessionProxyService _onqueue_handleFailedMessageSend:ofType:](self, "_onqueue_handleFailedMessageSend:ofType:", v12, [v10 type]);
  }

  [(NSMutableDictionary *)self->_outstandingMessages removeObjectForKey:v13];
LABEL_10:
}

- (void)_onqueue_handleReceivedReply:(id)a3 forIdentifier:(id)a4 ofType:(unsigned __int16)a5 withError:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(NSMutableDictionary *)self->_outstandingReplies objectForKeyedSubscript:v10];
  v13 = v12;
  if (v12)
  {
    (*(v12 + 16))(v12, v9, v11);
    [(NSMutableDictionary *)self->_outstandingReplies removeObjectForKey:v10];
    [(NSMutableDictionary *)self->_outstandingMessages removeObjectForKey:v10];
  }

  else
  {
    v14 = qword_1000EB1D8;
    if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v10;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Received a reply with identifier %@ but don't have a corresponding reply block", &v15, 0xCu);
    }
  }
}

- (void)_onqueue_handleFailedMessageSend:(id)a3 ofType:(unsigned __int16)a4
{
  v4 = a3;
  v5 = qword_1000EB1D8;
  if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Subclass did not handle message send failure for message %@", &v6, 0xCu);
  }
}

- (void)_onqueue_handleReceivedMessage:(id)a3 ofType:(unsigned __int16)a4 withReply:(id)a5
{
  v5 = a4;
  v6 = a3;
  v7 = qword_1000EB1D8;
  if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412546;
    v9 = v6;
    v10 = 1024;
    v11 = v5;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Subclass did not handle message %@ of type %u", &v8, 0x12u);
  }
}

- (void)sendProtobufMessage:(id)a3 ofType:(unsigned __int16)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000BAF8;
  v13[3] = &unk_1000D5070;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

- (void)_onqueue_sendMessage:(id)a3 ofType:(unsigned __int16)a4 responseIdentifier:(id)a5 forSourceApplication:(id)a6 withUrgency:(BOOL)a7 withIDSMessageTimeout:(int64_t)a8 withReply:(id)a9
{
  v68 = a4;
  v15 = a3;
  v69 = a5;
  v66 = a6;
  v67 = a9;
  v16 = qword_1000EB1D8;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = NSStringFromSelector(a2);
    v20 = v19;
    if (self->_connected)
    {
      v21 = 89;
    }

    else
    {
      v21 = 78;
    }

    *buf = 138413826;
    if (v69)
    {
      v22 = 89;
    }

    else
    {
      v22 = 78;
    }

    *v78 = v18;
    *&v78[8] = 2112;
    *&v78[10] = v19;
    *&v78[18] = 1024;
    *&v78[20] = v68;
    v79 = 1024;
    v80 = v21;
    v81 = 1024;
    *v82 = v22;
    *&v82[4] = 2112;
    *&v82[6] = v66;
    v83 = 2048;
    v84 = a8;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@::%@ type = %u, connected = %c, isReply = %c, sourceApplication = %@, msgTO = %ld", buf, 0x3Cu);
  }

  v23 = +[NSMutableDictionary dictionary];
  [v23 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionLocalDeliveryKey];
  v24 = [NSNumber numberWithInteger:a8];
  [v23 setObject:v24 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

  [v23 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionNSURLSessionKey];
  [v23 setObject:&__kCFBooleanFalse forKeyedSubscript:IDSSendMessageOptionEnforceRemoteTimeoutsKey];
  v25 = [v15 _nsurlsessionproxy_sessionIdentifier];
  LODWORD(v24) = (v66 | v25) != 0;

  v26 = 2 * a8 + 5;
  if (v24)
  {
    v27 = [v15 _nsurlsessionproxy_sessionIdentifier];
    v28 = v27 == 0;

    if (v28)
    {
      v31 = 0;
      v30 = 0;
    }

    else
    {
      v29 = [v15 _nsurlsessionproxy_sessionIdentifier];
      v75 = 0;
      v76 = 0;
      [PDURLSessionProxyCommon getComponentsForFullIdentifier:v29 bundleIdentifier:&v76 sessionIdentifier:&v75];
      v30 = v76;
      v31 = v75;

      if (v30)
      {
        [v23 setObject:v30 forKeyedSubscript:@"NSURLSessionProxyClientBundleIdentifier"];
        if (([v30 isEqualToString:@"com.apple.cloudkit.cloudd"] & 1) != 0 || objc_msgSend(v30, "isEqualToString:", @"com.apple.cloudd"))
        {
          v26 = 3600;
        }
      }
    }

    v32 = v66;
    if (v66)
    {
      v33 = v32;
    }

    else
    {
      v58 = [v15 _nsurlsessionproxy_sessionIdentifier];
      v59 = v58 == 0;

      if (v59)
      {
        v33 = 0;
        goto LABEL_19;
      }

      v60 = [(PDURLSessionProxyService *)self _onqueue_sourceApplicationForMessage:v15];
      v61 = v60;
      if (v60)
      {
        v62 = v60;
      }

      else
      {
        v62 = v30;
      }

      v33 = v62;

      if (!v33)
      {
        goto LABEL_19;
      }
    }

    [v23 setObject:v33 forKeyedSubscript:@"IDSSendMessageOptionMetricReportIdentifier"];
LABEL_19:
  }

  v34 = [v23 objectForKeyedSubscript:@"IDSSendMessageOptionMetricReportIdentifier"];
  v35 = v34 == 0;

  if (v35)
  {
    v36 = qword_1000EB1D8;
    if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Unable to determine source application for message", buf, 2u);
    }
  }

  if (v67)
  {
    [v23 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionExpectsPeerResponseKey];
  }

  if (v69)
  {
    [v23 setObject:v69 forKeyedSubscript:IDSSendMessageOptionPeerResponseIdentifierKey];
  }

  if (a7)
  {
    v37 = 300;
  }

  else
  {
    v37 = [(PDURLSessionProxyService *)self _onqueue_priorityForMessage:v15 ofType:v68 isReply:v69 != 0];
  }

  if (!v69)
  {
    [v15 _nsurlsessionproxy_setSequenceNumber:{-[PDURLSessionProxyService bumpAndReturnOutgoingSequenceNumberForPriority:](self, "bumpAndReturnOutgoingSequenceNumberForPriority:", v37)}];
    [v15 _nsurlsessionproxy_setMessagePriority:v37];
    v38 = [(PDURLSessionProxyService *)self launchUUID];
    [v15 _nsurlsessionproxy_setLaunchUUID:v38];
  }

  v39 = [IDSProtobuf alloc];
  v40 = [v15 data];
  v64 = [v39 initWithProtobufData:v40 type:v68 isResponse:v69 != 0];

  idsService = self->_idsService;
  v42 = [NSSet setWithObject:IDSDefaultPairedDevice];
  v73 = 0;
  v74 = 0;
  v43 = [(IDSService *)idsService sendProtobuf:v64 toDestinations:v42 priority:v37 options:v23 identifier:&v74 error:&v73];
  v44 = v74;
  v45 = v73;

  if (v43)
  {
    v46 = [[PDURLSessionProxyMessageInfo alloc] initWithMessage:v15 type:v68];
    [(NSMutableDictionary *)self->_outstandingMessages setObject:v46 forKeyedSubscript:v44];
    if (v67)
    {
      v47 = [v67 copy];
      [(NSMutableDictionary *)self->_outstandingReplies setObject:v47 forKeyedSubscript:v44];

      if (v68 != 3001)
      {
        v48 = dispatch_time(0, 1000000000 * v26);
        queue = self->_queue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000C530;
        block[3] = &unk_1000D5048;
        block[4] = self;
        v71 = v44;
        v72 = v68;
        dispatch_after(v48, queue, block);
      }
    }
  }

  else
  {
    v50 = qword_1000EB1D8;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v63 = [v45 code];
      *buf = 67109634;
      *v78 = v68;
      *&v78[4] = 2112;
      *&v78[6] = v45;
      *&v78[14] = 2048;
      *&v78[16] = v63;
      _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Failed to send message! Type = %u, error = %@ [%ld]", buf, 0x1Cu);
    }

    if (v67)
    {
      v51 = v45;
      if (!v45)
      {
        v51 = [NSError errorWithDomain:NSURLErrorDomain code:-1 userInfo:0];
      }

      (*(v67 + 2))(v67, 0, v51);
      if (!v45)
      {
      }
    }

    [(PDURLSessionProxyService *)self _onqueue_handleFailedMessageSend:v15 ofType:v68, v64];
  }

  v52 = [(PDURLSessionProxyService *)self _onqueue_loggableDescriptionForMessage:v15, v64];
  v53 = qword_1000EB1D8;
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    if (v69)
    {
      v54 = 89;
    }

    else
    {
      v54 = 78;
    }

    v55 = [v15 data];
    v56 = [v55 length];
    *buf = 138544642;
    if (v43)
    {
      v57 = 89;
    }

    else
    {
      v57 = 78;
    }

    *v78 = v52;
    *&v78[8] = 2114;
    *&v78[10] = v44;
    *&v78[18] = 1024;
    *&v78[20] = v68;
    v79 = 1024;
    v80 = v54;
    v81 = 2048;
    *v82 = v56;
    *&v82[8] = 1024;
    *&v82[10] = v57;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%{public}@ sent NSURLSessionProxy message, identifier = %{public}@, type = %u, isReply = %c, data length = %lu, result = %c", buf, 0x32u);
  }
}

- (BOOL)verifyAndUpdateIncomingSequenceNumber:(unint64_t)a3 forPriority:(int64_t)a4
{
  incomingSequenceNumbersByPriority = self->_incomingSequenceNumbersByPriority;
  v8 = [NSNumber numberWithLongLong:a4];
  v9 = [(NSMutableDictionary *)incomingSequenceNumbersByPriority objectForKeyedSubscript:v8];
  v10 = [v9 unsignedLongLongValue];

  v11 = a3 - 1;
  if (a3 - 1 < v10)
  {
    v15 = qword_1000EB1D8;
    if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_ERROR))
    {
      v17 = 134218496;
      v18 = a4;
      v19 = 2048;
      v20 = a3;
      v21 = 2048;
      v22 = v10;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Received a message of priority %ld with lower sequence number %llu than existing sequence number %llu. Dropping message.", &v17, 0x20u);
    }
  }

  else
  {
    v12 = [NSNumber numberWithUnsignedLongLong:a3];
    v13 = self->_incomingSequenceNumbersByPriority;
    v14 = [NSNumber numberWithLongLong:a4];
    [(NSMutableDictionary *)v13 setObject:v12 forKeyedSubscript:v14];
  }

  return v11 >= v10;
}

- (unint64_t)bumpAndReturnOutgoingSequenceNumberForPriority:(int64_t)a3
{
  outgoingSequenceNumbersByPriority = self->_outgoingSequenceNumbersByPriority;
  v6 = [NSNumber numberWithLongLong:?];
  v7 = [(NSMutableDictionary *)outgoingSequenceNumbersByPriority objectForKeyedSubscript:v6];
  v8 = [v7 unsignedLongLongValue];

  v9 = [NSNumber numberWithUnsignedLongLong:v8 + 1];
  v10 = self->_outgoingSequenceNumbersByPriority;
  v11 = [NSNumber numberWithLongLong:a3];
  [(NSMutableDictionary *)v10 setObject:v9 forKeyedSubscript:v11];

  return (v8 + 1);
}

- (void)_onqueue_updateDeviceState
{
  connected = self->_connected;
  [(IDSService *)self->_idsService devices];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v4 = v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v5)
  {
    v6 = *v19;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v19 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v18 + 1) + 8 * v7);
      if ([v8 isDefaultPairedDevice])
      {
        if ([v8 isNearby])
        {
          break;
        }
      }

      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    if ([v8 serviceMinCompatibilityVersion] < 8)
    {
      v9 = 1;
      goto LABEL_16;
    }

    v10 = qword_1000EB1D8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138412290;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ Connected to post PDURL device - resetting state", buf, 0xCu);
    }

    self->_haveReceivedMessage = 0;
    [(PDURLSessionProxyService *)self _onqueue_remoteDeviceStartedUp];
  }

  else
  {
LABEL_10:
    v9 = 0;
LABEL_16:

    self->_connected = v9;
    v13 = qword_1000EB1D8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = v15;
      if (self->_connected)
      {
        v17 = 89;
      }

      else
      {
        v17 = 78;
      }

      *buf = 138412546;
      v23 = v15;
      v24 = 1024;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ Updated device state connected = %c", buf, 0x12u);
    }

    if (v9 || !connected)
    {
      if (!connected && v9)
      {
        [(PDURLSessionProxyService *)self _onqueue_devicesConnected];
      }
    }

    else
    {
      [(PDURLSessionProxyService *)self _onqueue_devicesDisconnected];
    }
  }
}

- (id)defaultPairedDevice
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(IDSService *)self->_idsService devices];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isDefaultPairedDevice])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)_onqueue_sendStartupMessage
{
  if (self->_haveReceivedMessage)
  {
    v3 = objc_opt_new();
    v4 = [(PDURLSessionProxyService *)self launchUUID];
    [v3 setLaunchUUID:v4];

    v5 = [IDSProtobuf alloc];
    v6 = [v3 data];
    v7 = [v5 initWithProtobufData:v6 type:10000 isResponse:0];

    v8 = +[NSMutableDictionary dictionary];
    [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionLocalDeliveryKey];
    v9 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    [v8 setObject:v9 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

    [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionNSURLSessionKey];
    [v8 setObject:&__kCFBooleanFalse forKeyedSubscript:IDSSendMessageOptionEnforceRemoteTimeoutsKey];
    idsService = self->_idsService;
    v11 = [NSSet setWithObject:IDSDefaultPairedDevice];
    v20 = 0;
    v21 = 0;
    v12 = [(IDSService *)idsService sendProtobuf:v7 toDestinations:v11 priority:200 options:v8 identifier:&v21 error:&v20];
    v13 = v21;
    v14 = v21;
    v15 = v20;

    self->_startupMessageFailed = v12 ^ 1;
    if ((v12 ^ 1))
    {
      v16 = qword_1000EB1D8;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19 = [v15 code];
        *buf = 138412546;
        v23 = v15;
        v24 = 2048;
        v25 = v19;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "sendProtobuf: returned NO for PDURLSessionProxy startup message, error %@ [%ld]", buf, 0x16u);
      }
    }

    else
    {
      objc_storeStrong(&self->_startupMessageIdentifier, v13);
      v16 = qword_1000EB1D8;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 138412546;
        v23 = v18;
        v24 = 2112;
        v25 = v14;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ sent startup message with identifier %@", buf, 0x16u);
      }
    }
  }
}

- (void)devicesDidUnpair:(id)a3
{
  v4 = a3;
  v5 = qword_1000EB1D8;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Devices unpaired", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000D380;
  v8[3] = &unk_1000D63D0;
  v8[4] = self;
  [(PDURLSessionProxyService *)self withWorkQueue:v8];
}

- (void)start
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D430;
  block[3] = &unk_1000D63D0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (PDURLSessionProxyService)init
{
  v21.receiver = self;
  v21.super_class = PDURLSessionProxyService;
  v2 = [(PDURLSessionProxyService *)&v21 init];
  if (v2)
  {
    v3 = objc_opt_new();
    outstandingReplies = v2->_outstandingReplies;
    v2->_outstandingReplies = v3;

    v5 = objc_opt_new();
    outstandingMessages = v2->_outstandingMessages;
    v2->_outstandingMessages = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.nsurlsessiond.NSURLSessionProxyService-Queue", v7);
    queue = v2->_queue;
    v2->_queue = v8;

    v10 = objc_opt_new();
    outgoingSequenceNumbersByPriority = v2->_outgoingSequenceNumbersByPriority;
    v2->_outgoingSequenceNumbersByPriority = v10;

    v12 = objc_opt_new();
    incomingSequenceNumbersByPriority = v2->_incomingSequenceNumbersByPriority;
    v2->_incomingSequenceNumbersByPriority = v12;

    v14 = objc_opt_new();
    receivedLaunchUUIDs = v2->_receivedLaunchUUIDs;
    v2->_receivedLaunchUUIDs = v14;

    startupMessageIdentifier = v2->_startupMessageIdentifier;
    v2->_startupMessageIdentifier = 0;

    v17 = +[NSUUID UUID];
    v18 = [v17 UUIDString];
    launchUUID = v2->_launchUUID;
    v2->_launchUUID = v18;

    v2->_haveReceivedMessage = 0;
  }

  return v2;
}

@end