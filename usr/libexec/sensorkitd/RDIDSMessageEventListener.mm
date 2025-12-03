@interface RDIDSMessageEventListener
+ (void)initialize;
- (void)dealloc;
- (void)service:(id)service didFailResource:(id)resource IDSIdentifier:(id)identifier keyName:(id)name sensor:(id)sensor withError:(id)error;
- (void)service:(id)service didReceiveResourceServiceMessage:(id)message fromID:(id)d incomingResponseIdentifier:(id)identifier outgoingResponseIdentifier:(id)responseIdentifier;
- (void)service:(id)service didRequestToSendIDSMessage:(id)message withIDSIdentifier:(id)identifier;
- (void)service:(id)service didRequestToSendResource:(id)resource withIDSIdentifier:(id)identifier keyName:(id)name sensor:(id)sensor isRetry:(BOOL)retry;
@end

@implementation RDIDSMessageEventListener

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100071988 = os_log_create("com.apple.SensorKit", "RDCompanionSideIDSMessageEventListener");
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = RDIDSMessageEventListener;
  [(RDIDSMessageEventListener *)&v3 dealloc];
}

- (void)service:(id)service didRequestToSendIDSMessage:(id)message withIDSIdentifier:(id)identifier
{
  v9 = [message objectForKeyedSubscript:@"RDGizmoSyncMessageTypeKey"];
  if (v9)
  {
    integerValue = [v9 integerValue];
    if (integerValue != 4)
    {
      if (integerValue != 3 || ([objc_msgSend(message objectForKeyedSubscript:{@"RDGizmoSyncArchiveTransferStatusKey", "integerValue"}] | 2) != 2)
      {
        return;
      }

      if (service)
      {
        v11 = sub_100023DB4(service);
        v12 = sub_100023C20(service, v11, [*(service + 3) devices]);
        if (v12)
        {
          v13 = sub_10003A334(0, v12, self->_fileURLs, self->_defaults);
          v23 = sub_100012B50([RDIDSMessageStore alloc], v13);
          sub_1000132DC(v23, message, identifier);

          return;
        }
      }

      v22 = qword_100071988;
      if (!os_log_type_enabled(qword_100071988, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 0;
LABEL_21:
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "No remote device ID found", buf, 2u);
      return;
    }

    v15 = qword_100071988;
    if (os_log_type_enabled(qword_100071988, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Resending any pending IDS messages", buf, 2u);
    }

    if (service)
    {
      v16 = sub_100023DB4(service);
      v17 = sub_100023C20(service, v16, [*(service + 3) devices]);
      if (v17)
      {
        v18 = sub_10003A334(0, v17, self->_fileURLs, self->_defaults);
        v19 = sub_100012B50([RDIDSMessageStore alloc], v18);
        v20 = sub_10002B520(&self->_defaults->super.isa);
        v21 = [[NSMutableSet alloc] initWithCapacity:v20];
        *buf = 0;
        v26 = buf;
        v27 = 0x2020000000;
        v28 = 0;
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_1000025FC;
        v24[3] = &unk_1000609D0;
        v24[4] = v19;
        v24[5] = v21;
        v24[6] = service;
        v24[7] = buf;
        v24[8] = v20;
        sub_100012C04(v19, v24);

        _Block_object_dispose(buf, 8);
        return;
      }
    }

    v22 = qword_100071988;
    if (os_log_type_enabled(qword_100071988, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v14 = qword_100071988;
    if (os_log_type_enabled(qword_100071988, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "No message type key found!", buf, 2u);
    }
  }
}

- (void)service:(id)service didRequestToSendResource:(id)resource withIDSIdentifier:(id)identifier keyName:(id)name sensor:(id)sensor isRetry:(BOOL)retry
{
  if (service && (v14 = sub_100023DB4(service), (v15 = sub_100023C20(service, v14, [*(service + 3) devices])) != 0))
  {
    v16 = sub_10003A334(0, v15, self->_fileURLs, self->_defaults);
    v17 = sub_100012B50([RDIDSMessageStore alloc], v16);
    v26[0] = &off_1000651A8;
    v25[0] = @"RDGizmoSyncMessageTypeKey";
    v25[1] = @"RDGizmoSyncSamplesURLKey";
    v26[1] = [resource path];
    v26[2] = name;
    v25[2] = @"RDGizmoSyncKeyKey";
    v25[3] = @"RDGizmoSyncSensorIdentifierKey";
    v26[3] = sensor;
    v25[4] = @"RDGizmoSyncGizmoAbsoluteTimeKey";
    v18 = mach_continuous_time();
    if (qword_100071B60 != -1)
    {
      dispatch_once(&qword_100071B60, &stru_100060D90);
    }

    v19 = qword_100071B68;
    v20 = *&qword_100071B70;
    v21 = *&qword_100071B78;
    TMConvertTicksToSeconds();
    if (v19 >= v18)
    {
      v22 = -v22;
    }

    v26[4] = [NSNumber numberWithDouble:v21 + v20 + v22];
    sub_1000132DC(v17, [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:5], identifier);
  }

  else
  {
    v23 = qword_100071988;
    if (os_log_type_enabled(qword_100071988, OS_LOG_TYPE_ERROR))
    {
      *v24 = 0;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "No remote device ID found", v24, 2u);
    }
  }
}

- (void)service:(id)service didFailResource:(id)resource IDSIdentifier:(id)identifier keyName:(id)name sensor:(id)sensor withError:(id)error
{
  v11 = qword_100071988;
  if (os_log_type_enabled(qword_100071988, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    identifierCopy = identifier;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Resource send failed immediately for %{public}@, removing pending message", &v17, 0xCu);
  }

  if (identifier)
  {
    if (service && (v12 = sub_100023DB4(service), (v13 = sub_100023C20(service, v12, [*(service + 3) devices])) != 0))
    {
      v14 = sub_10003A334(0, v13, self->_fileURLs, self->_defaults);
      v15 = sub_100012B50([RDIDSMessageStore alloc], v14);
      sub_100013800(v15, identifier);
    }

    else
    {
      v16 = qword_100071988;
      if (os_log_type_enabled(qword_100071988, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v17) = 0;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "No remote device ID found", &v17, 2u);
      }
    }
  }
}

- (void)service:(id)service didReceiveResourceServiceMessage:(id)message fromID:(id)d incomingResponseIdentifier:(id)identifier outgoingResponseIdentifier:(id)responseIdentifier
{
  v11 = [message objectForKeyedSubscript:@"RDGizmoSyncMessageTypeKey"];
  if (!v11)
  {
    v18 = qword_100071988;
    if (!os_log_type_enabled(qword_100071988, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v19 = "No message type key found!";
    goto LABEL_15;
  }

  if (!service || (v12 = v11, v13 = sub_100023DB4(service), (v14 = sub_100023C20(service, v13, [*(service + 3) devices])) == 0))
  {
    v18 = qword_100071988;
    if (!os_log_type_enabled(qword_100071988, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v19 = "No remote device ID found";
LABEL_15:
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v19, buf, 2u);
    return;
  }

  v15 = v14;
  integerValue = [v12 integerValue];
  if (integerValue == 3)
  {
    v20 = sub_10003A334(0, v15, self->_fileURLs, self->_defaults);
    v21 = sub_100012B50([RDIDSMessageStore alloc], v20);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100002DA0;
    v23[3] = &unk_1000609F8;
    v23[4] = message;
    v23[5] = v21;
    sub_100012C04(v21, v23);
  }

  else if (integerValue == 6)
  {
    v17 = sub_10003A334(0, v15, self->_fileURLs, self->_defaults);
    v22 = sub_100012B50([RDIDSMessageStore alloc], v17);
    sub_100013800(v22, identifier);
  }
}

@end