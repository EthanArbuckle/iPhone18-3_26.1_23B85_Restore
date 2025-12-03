@interface RDGizmoSyncService
+ (void)initialize;
- (void)dealloc;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account identifier:(id)identifier fromID:(id)d hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)service:(id)service connectedDevicesChanged:(id)changed;
@end

@implementation RDGizmoSyncService

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100071AB0 = os_log_create("com.apple.SensorKit", "RDGizmoSyncService");
  }
}

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_nonatomic(self, a2, 0, 56);
    objc_setProperty_nonatomic(self, v3, 0, 24);
    objc_setProperty_nonatomic(self, v4, 0, 32);
    objc_setProperty_nonatomic(self, v5, 0, 48);
    objc_setProperty_nonatomic(self, v6, 0, 40);
  }

  dispatch_release(self->_q);
  v7.receiver = self;
  v7.super_class = RDGizmoSyncService;
  [(RDGizmoSyncService *)&v7 dealloc];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  if (error || !success)
  {
    successCopy = success;
    if (!self || (v31 = 0u, v32 = 0u, v29 = 0u, v30 = 0u, listeners = self->_listeners, (v20 = [(NSHashTable *)listeners countByEnumeratingWithState:&v29 objects:buf count:16]) == 0))
    {
LABEL_26:
      v25 = qword_100071AB0;
      if (os_log_type_enabled(qword_100071AB0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138544387;
        serviceCopy2 = service;
        v35 = 2113;
        accountCopy2 = account;
        v37 = 2114;
        identifierCopy2 = identifier;
        v39 = 1026;
        v40 = successCopy;
        v41 = 2114;
        errorCopy = error;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "IDS send failed. service:%{public}@ account:%{private}@ identifier:%{public}@ didSendWithSuccess:%{public}d error:%{public}@", buf, 0x30u);
      }

      return;
    }

    v21 = v20;
    v22 = *v30;
LABEL_19:
    v23 = 0;
    while (1)
    {
      if (*v30 == v22)
      {
        v24 = *(*(&v29 + 1) + 8 * v23);
        if (objc_opt_respondsToSelector())
        {
          goto LABEL_25;
        }
      }

      else
      {
        objc_enumerationMutation(listeners);
        v24 = *(*(&v29 + 1) + 8 * v23);
        if (objc_opt_respondsToSelector())
        {
LABEL_25:
          [v24 service:self didFailMessageWithIDSIdentifier:identifier error:error];
        }
      }

      if (v21 == ++v23)
      {
        v21 = [(NSHashTable *)listeners countByEnumeratingWithState:&v29 objects:buf count:16];
        if (!v21)
        {
          goto LABEL_26;
        }

        goto LABEL_19;
      }
    }
  }

  v12 = qword_100071AB0;
  if (os_log_type_enabled(qword_100071AB0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138544387;
    serviceCopy2 = service;
    v35 = 2113;
    accountCopy2 = account;
    v37 = 2114;
    identifierCopy2 = identifier;
    v39 = 1026;
    v40 = 1;
    v41 = 2114;
    errorCopy = 0;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "IDS send success. service:%{public}@ account:%{private}@ identifier:%{public}@ didSendWithSuccess:%{public}d error:%{public}@", buf, 0x30u);
    if (!self)
    {
      return;
    }
  }

  else if (!self)
  {
    return;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = self->_listeners;
  v14 = [(NSHashTable *)v13 countByEnumeratingWithState:&v29 objects:buf count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v30 == v16)
        {
          v18 = *(*(&v29 + 1) + 8 * i);
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            continue;
          }
        }

        else
        {
          objc_enumerationMutation(v13);
          v18 = *(*(&v29 + 1) + 8 * i);
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            continue;
          }
        }

        [v18 service:self didSendMessageWithIDSIdentifier:identifier];
      }

      v15 = [(NSHashTable *)v13 countByEnumeratingWithState:&v29 objects:buf count:16];
    }

    while (v15);
  }
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  if (self->_keyService == service)
  {
    v19 = qword_100071AB0;
    if (os_log_type_enabled(qword_100071AB0, OS_LOG_TYPE_INFO))
    {
      v20 = sub_100023C20(self, d, [(IDSService *)self->_resourceService devices]);
      *buf = 138543875;
      dCopy3 = d;
      v72 = 2114;
      v73 = v20;
      v74 = 2113;
      contextCopy = message;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "IDS message received key service. fromID: %{public}@, pairedID: %{public}@, message: %{private}@", buf, 0x20u);
    }

    v51 = [message objectForKeyedSubscript:@"RDGizmoSyncSensorIdentifierKey"];
    if (v51)
    {
      v21 = sub_100023C20(self, d, [(IDSService *)self->_resourceService devices]);
      if (v21)
      {
        selfCopy = self;
        v50 = v21;
        v22 = sub_10003A334(v51, v21, self->_fileURLs, self->_defaults);
        v45 = sub_100011CFC([RDEncryptingDatastore alloc], v22);
        if (![message objectForKeyedSubscript:@"RDGizmoSyncKeysKey"])
        {
          v68 = @"RDGizmoSyncKeysKey";
          messageCopy2 = message;
          v69 = [NSArray arrayWithObjects:&messageCopy2 count:1];
          message = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
        }

        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        obj = [message objectForKeyedSubscript:@"RDGizmoSyncKeysKey"];
        v48 = [obj countByEnumeratingWithState:&v59 objects:buf count:16];
        if (!v48)
        {
LABEL_45:

          return;
        }

        v47 = *v60;
LABEL_23:
        v23 = 0;
        while (1)
        {
          if (*v60 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v59 + 1) + 8 * v23);
          v26 = [v25 objectForKeyedSubscript:@"RDGizmoSyncKeyKey"];
          v49 = v23;
          if (v26 && (v27 = v26, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v28 = [v25 objectForKeyedSubscript:@"RDGizmoSyncSnapshotKey"];
            if (v28)
            {
              v29 = v28;
              v30 = sub_10001206C(v45, v28);
              v54 = 0u;
              v55 = 0u;
              v56 = 0u;
              v57 = 0u;
              listeners = selfCopy->_listeners;
              v32 = [(NSHashTable *)listeners countByEnumeratingWithState:&v54 objects:&v63 count:16];
              if (v32)
              {
                v33 = v32;
                v34 = *v55;
                while (1)
                {
                  for (i = 0; i != v33; i = i + 1)
                  {
                    if (*v55 == v34)
                    {
                      v36 = *(*(&v54 + 1) + 8 * i);
                      if ((objc_opt_respondsToSelector() & 1) == 0)
                      {
                        continue;
                      }
                    }

                    else
                    {
                      objc_enumerationMutation(listeners);
                      v36 = *(*(&v54 + 1) + 8 * i);
                      if ((objc_opt_respondsToSelector() & 1) == 0)
                      {
                        continue;
                      }
                    }

                    [v36 service:selfCopy didReceiveKeyServiceMessage:v25 fromID:d key:v27 keyName:v30 sensor:v51 archiveURLPath:v29 deviceID:v50];
                  }

                  v33 = [(NSHashTable *)listeners countByEnumeratingWithState:&v54 objects:&v63 count:16];
                  if (!v33)
                  {
                    goto LABEL_25;
                  }
                }
              }

              goto LABEL_25;
            }

            v37 = qword_100071AB0;
            if (os_log_type_enabled(qword_100071AB0, OS_LOG_TYPE_ERROR))
            {
              *v58 = 0;
              v38 = v37;
              v39 = "Message missing snapshot URL. Dropping.";
LABEL_44:
              _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, v39, v58, 2u);
            }
          }

          else
          {
            v24 = qword_100071AB0;
            if (os_log_type_enabled(qword_100071AB0, OS_LOG_TYPE_ERROR))
            {
              *v58 = 0;
              v38 = v24;
              v39 = "Message missing key. Dropping";
              goto LABEL_44;
            }
          }

LABEL_25:
          v23 = v49 + 1;
          if ((v49 + 1) == v48)
          {
            v48 = [obj countByEnumeratingWithState:&v59 objects:buf count:16];
            if (!v48)
            {
              goto LABEL_45;
            }

            goto LABEL_23;
          }
        }
      }

      v44 = qword_100071AB0;
      if (!os_log_type_enabled(qword_100071AB0, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 138543362;
      dCopy3 = d;
      v41 = "Failed to find a device id from IDS id %{public}@";
      v42 = v44;
      v43 = 12;
    }

    else
    {
      v40 = qword_100071AB0;
      if (!os_log_type_enabled(qword_100071AB0, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 0;
      v41 = "Message missing sensorIdentifier. Dropping.";
      v42 = v40;
      v43 = 2;
    }

    _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, v41, buf, v43);
    return;
  }

  v10 = qword_100071AB0;
  if (os_log_type_enabled(qword_100071AB0, OS_LOG_TYPE_INFO))
  {
    v11 = sub_100023C20(self, d, [(IDSService *)self->_resourceService devices]);
    *buf = 138544130;
    dCopy3 = d;
    v72 = 2114;
    v73 = v11;
    v74 = 2114;
    contextCopy = context;
    v76 = 2114;
    messageCopy3 = message;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "IDS message received on resource service. fromID: %{public}@, pairedID: %{public}@, context: %{public}@, message: %{public}@", buf, 0x2Au);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  selfCopy2 = self;
  v13 = self->_listeners;
  v14 = [(NSHashTable *)v13 countByEnumeratingWithState:&v63 objects:buf count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v64;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v64 == v16)
        {
          v18 = *(*(&v63 + 1) + 8 * j);
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            continue;
          }
        }

        else
        {
          objc_enumerationMutation(v13);
          v18 = *(*(&v63 + 1) + 8 * j);
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            continue;
          }
        }

        [v18 service:selfCopy2 didReceiveResourceServiceMessage:message fromID:d incomingResponseIdentifier:objc_msgSend(context outgoingResponseIdentifier:{"incomingResponseIdentifier"), objc_msgSend(context, "outgoingResponseIdentifier")}];
      }

      v15 = [(NSHashTable *)v13 countByEnumeratingWithState:&v63 objects:buf count:16];
    }

    while (v15);
  }
}

- (void)service:(id)service connectedDevicesChanged:(id)changed
{
  if (self->_resourceService == service)
  {
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    listeners = self->_listeners;
    v7 = [(NSHashTable *)listeners countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v13 == v9)
          {
            v11 = *(*(&v12 + 1) + 8 * i);
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              continue;
            }
          }

          else
          {
            objc_enumerationMutation(listeners);
            v11 = *(*(&v12 + 1) + 8 * i);
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              continue;
            }
          }

          [v11 service:self connectedDevicesChanged:changed];
        }

        v8 = [(NSHashTable *)listeners countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  v13 = qword_100071AB0;
  if (os_log_type_enabled(qword_100071AB0, OS_LOG_TYPE_INFO))
  {
    *buf = 138544643;
    metadataCopy3 = service;
    v36 = 2114;
    accountCopy = account;
    v38 = 2113;
    lCopy = l;
    v40 = 2114;
    metadataCopy = metadata;
    v42 = 2114;
    dCopy = d;
    v44 = 2114;
    contextCopy = context;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "IDS resource received. service: %{public}@ resource: %{public}@ account: %{private}@ metadata: %{public}@ fromID: %{public}@ context: %{public}@", buf, 0x3Eu);
  }

  v14 = [metadata objectForKeyedSubscript:{@"RDGizmoSyncSensorIdentifierKey", l, d}];
  if (!v14)
  {
    v24 = qword_100071AB0;
    if (!os_log_type_enabled(qword_100071AB0, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 138543362;
    metadataCopy3 = metadata;
    v25 = "No sensor identifier in message payload %{public}@. Ignoring message";
    goto LABEL_21;
  }

  v15 = v14;
  v16 = [metadata objectForKeyedSubscript:@"RDGizmoSyncSamplesURLKey"];
  if (!v16)
  {
    v24 = qword_100071AB0;
    if (!os_log_type_enabled(qword_100071AB0, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 138543362;
    metadataCopy3 = metadata;
    v25 = "No gizmo sync samples URL in message payload %{public}@. Ignoring message";
LABEL_21:
    _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v25, buf, 0xCu);
    return;
  }

  if (self)
  {
    v17 = v16;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    listeners = self->_listeners;
    v19 = [(NSHashTable *)listeners countByEnumeratingWithState:&v30 objects:buf count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v31;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v31 == v21)
          {
            v23 = *(*(&v30 + 1) + 8 * i);
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              continue;
            }
          }

          else
          {
            objc_enumerationMutation(listeners);
            v23 = *(*(&v30 + 1) + 8 * i);
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              continue;
            }
          }

          [v23 service:self didReceiveArchive:v27 sensor:v15 gizmoSnapshotURL:v17 metadata:metadata fromID:v29];
        }

        v20 = [(NSHashTable *)listeners countByEnumeratingWithState:&v30 objects:buf count:16];
      }

      while (v20);
    }
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier fromID:(id)d hasBeenDeliveredWithContext:(id)context
{
  v13 = qword_100071AB0;
  if (os_log_type_enabled(qword_100071AB0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544387;
    serviceCopy = service;
    v26 = 2113;
    accountCopy = account;
    v28 = 2114;
    identifierCopy = identifier;
    v30 = 2114;
    dCopy = d;
    v32 = 2114;
    contextCopy = context;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "IDS Message delivered. service: %{public}@ account: %{private}@ identifier: %{public}@ fromID: %{public}@ context: %{public}@", buf, 0x34u);
  }

  if (self)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    listeners = self->_listeners;
    v15 = [(NSHashTable *)listeners countByEnumeratingWithState:&v20 objects:buf count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v21 == v17)
          {
            v19 = *(*(&v20 + 1) + 8 * i);
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              continue;
            }
          }

          else
          {
            objc_enumerationMutation(listeners);
            v19 = *(*(&v20 + 1) + 8 * i);
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              continue;
            }
          }

          [v19 service:self didDeliverMessageWithIDSIdentifier:identifier];
        }

        v16 = [(NSHashTable *)listeners countByEnumeratingWithState:&v20 objects:buf count:16];
      }

      while (v16);
    }
  }
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  v8 = qword_100071AB0;
  if (os_log_type_enabled(qword_100071AB0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    dataCopy = data;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "IDS Incoming data %{public}@", &v9, 0xCu);
  }
}

@end