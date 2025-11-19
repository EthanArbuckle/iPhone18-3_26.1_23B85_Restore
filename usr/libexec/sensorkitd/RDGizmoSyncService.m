@interface RDGizmoSyncService
+ (void)initialize;
- (void)dealloc;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 fromID:(id)a6 hasBeenDeliveredWithContext:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8;
- (void)service:(id)a3 connectedDevicesChanged:(id)a4;
@end

@implementation RDGizmoSyncService

+ (void)initialize
{
  if (objc_opt_class() == a1)
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

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  if (a7 || !a6)
  {
    v28 = a6;
    if (!self || (v31 = 0u, v32 = 0u, v29 = 0u, v30 = 0u, listeners = self->_listeners, (v20 = [(NSHashTable *)listeners countByEnumeratingWithState:&v29 objects:buf count:16]) == 0))
    {
LABEL_26:
      v25 = qword_100071AB0;
      if (os_log_type_enabled(qword_100071AB0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138544387;
        v34 = a3;
        v35 = 2113;
        v36 = a4;
        v37 = 2114;
        v38 = a5;
        v39 = 1026;
        v40 = v28;
        v41 = 2114;
        v42 = a7;
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
          [v24 service:self didFailMessageWithIDSIdentifier:a5 error:a7];
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
    v34 = a3;
    v35 = 2113;
    v36 = a4;
    v37 = 2114;
    v38 = a5;
    v39 = 1026;
    v40 = 1;
    v41 = 2114;
    v42 = 0;
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

        [v18 service:self didSendMessageWithIDSIdentifier:a5];
      }

      v15 = [(NSHashTable *)v13 countByEnumeratingWithState:&v29 objects:buf count:16];
    }

    while (v15);
  }
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  if (self->_keyService == a3)
  {
    v19 = qword_100071AB0;
    if (os_log_type_enabled(qword_100071AB0, OS_LOG_TYPE_INFO))
    {
      v20 = sub_100023C20(self, a6, [(IDSService *)self->_resourceService devices]);
      *buf = 138543875;
      v71 = a6;
      v72 = 2114;
      v73 = v20;
      v74 = 2113;
      v75 = a5;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "IDS message received key service. fromID: %{public}@, pairedID: %{public}@, message: %{private}@", buf, 0x20u);
    }

    v51 = [a5 objectForKeyedSubscript:@"RDGizmoSyncSensorIdentifierKey"];
    if (v51)
    {
      v21 = sub_100023C20(self, a6, [(IDSService *)self->_resourceService devices]);
      if (v21)
      {
        v52 = self;
        v50 = v21;
        v22 = sub_10003A334(v51, v21, self->_fileURLs, self->_defaults);
        v45 = sub_100011CFC([RDEncryptingDatastore alloc], v22);
        if (![a5 objectForKeyedSubscript:@"RDGizmoSyncKeysKey"])
        {
          v68 = @"RDGizmoSyncKeysKey";
          v67 = a5;
          v69 = [NSArray arrayWithObjects:&v67 count:1];
          a5 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
        }

        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        obj = [a5 objectForKeyedSubscript:@"RDGizmoSyncKeysKey"];
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
              listeners = v52->_listeners;
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

                    [v36 service:v52 didReceiveKeyServiceMessage:v25 fromID:a6 key:v27 keyName:v30 sensor:v51 archiveURLPath:v29 deviceID:v50];
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
      v71 = a6;
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
    v11 = sub_100023C20(self, a6, [(IDSService *)self->_resourceService devices]);
    *buf = 138544130;
    v71 = a6;
    v72 = 2114;
    v73 = v11;
    v74 = 2114;
    v75 = a7;
    v76 = 2114;
    v77 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "IDS message received on resource service. fromID: %{public}@, pairedID: %{public}@, context: %{public}@, message: %{public}@", buf, 0x2Au);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v12 = self;
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

        [v18 service:v12 didReceiveResourceServiceMessage:a5 fromID:a6 incomingResponseIdentifier:objc_msgSend(a7 outgoingResponseIdentifier:{"incomingResponseIdentifier"), objc_msgSend(a7, "outgoingResponseIdentifier")}];
      }

      v15 = [(NSHashTable *)v13 countByEnumeratingWithState:&v63 objects:buf count:16];
    }

    while (v15);
  }
}

- (void)service:(id)a3 connectedDevicesChanged:(id)a4
{
  if (self->_resourceService == a3)
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

          [v11 service:self connectedDevicesChanged:a4];
        }

        v8 = [(NSHashTable *)listeners countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8
{
  v13 = qword_100071AB0;
  if (os_log_type_enabled(qword_100071AB0, OS_LOG_TYPE_INFO))
  {
    *buf = 138544643;
    v35 = a3;
    v36 = 2114;
    v37 = a4;
    v38 = 2113;
    v39 = a5;
    v40 = 2114;
    v41 = a6;
    v42 = 2114;
    v43 = a7;
    v44 = 2114;
    v45 = a8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "IDS resource received. service: %{public}@ resource: %{public}@ account: %{private}@ metadata: %{public}@ fromID: %{public}@ context: %{public}@", buf, 0x3Eu);
  }

  v14 = [a6 objectForKeyedSubscript:{@"RDGizmoSyncSensorIdentifierKey", a5, a7}];
  if (!v14)
  {
    v24 = qword_100071AB0;
    if (!os_log_type_enabled(qword_100071AB0, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 138543362;
    v35 = a6;
    v25 = "No sensor identifier in message payload %{public}@. Ignoring message";
    goto LABEL_21;
  }

  v15 = v14;
  v16 = [a6 objectForKeyedSubscript:@"RDGizmoSyncSamplesURLKey"];
  if (!v16)
  {
    v24 = qword_100071AB0;
    if (!os_log_type_enabled(qword_100071AB0, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 138543362;
    v35 = a6;
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

          [v23 service:self didReceiveArchive:v27 sensor:v15 gizmoSnapshotURL:v17 metadata:a6 fromID:v29];
        }

        v20 = [(NSHashTable *)listeners countByEnumeratingWithState:&v30 objects:buf count:16];
      }

      while (v20);
    }
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 fromID:(id)a6 hasBeenDeliveredWithContext:(id)a7
{
  v13 = qword_100071AB0;
  if (os_log_type_enabled(qword_100071AB0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544387;
    v25 = a3;
    v26 = 2113;
    v27 = a4;
    v28 = 2114;
    v29 = a5;
    v30 = 2114;
    v31 = a6;
    v32 = 2114;
    v33 = a7;
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

          [v19 service:self didDeliverMessageWithIDSIdentifier:a5];
        }

        v16 = [(NSHashTable *)listeners countByEnumeratingWithState:&v20 objects:buf count:16];
      }

      while (v16);
    }
  }
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v8 = qword_100071AB0;
  if (os_log_type_enabled(qword_100071AB0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = a5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "IDS Incoming data %{public}@", &v9, 0xCu);
  }
}

@end