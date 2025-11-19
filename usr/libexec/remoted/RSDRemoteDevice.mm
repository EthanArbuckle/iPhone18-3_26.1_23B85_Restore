@interface RSDRemoteDevice
- ($53DFC3DD9429D54544A2B2B9F14ED761)optionsForService:(SEL)a3;
- (BOOL)hasServiceWithName:(const char *)a3 peerMessage:(id)a4;
- (BOOL)isHost;
- (BOOL)isTrusted;
- (BOOL)negotiateTls;
- (NSSet)tlsOidsPopulatedOnPeer;
- (RSDRemoteDevice)initWithName:(char *)a3;
- (const)local_address;
- (const)remote_address;
- (id)copyClientDescriptionWithSensitiveProperties:(BOOL)a3;
- (id)copyProperty:(char *)a3 allowSensitive:(BOOL)a4;
- (id)handleReset:(id)a3;
- (id)listenerForService:(id)a3;
- (id)serviceWithName:(const char *)a3;
- (int)connectToService:(char *)a3 withTcpOption:(id *)a4;
- (int)interface_index;
- (int)listenForService:(char *)a3 port:(char *)a4;
- (unsigned)type;
- (void)_resetNow;
- (void)attach;
- (void)connect:(id)a3;
- (void)dealloc;
- (void)disconnect;
- (void)drainPendedRequests;
- (void)fetchDeviceAlias;
- (void)goodByeWithCallback:(id)a3;
- (void)handleResetGoAhead;
- (void)handshakeCompleted:(unint64_t)a3;
- (void)heartbeatWithCallback:(id)a3;
- (void)invokeWhenConnectable:(id)a3;
- (void)listenForService:(id)a3;
- (void)pollConnect:(int)a3 onQueue:(id)a4 withLog:(id)a5 completion:(id)a6;
- (void)refreshServiceListeners;
- (void)reset;
- (void)setBackendProperty:(const char *)a3 withBool:(BOOL)a4;
- (void)setBackendProperty:(const char *)a3 withString:(const char *)a4;
- (void)setBackendProperty:(const char *)a3 withUint:(unint64_t)a4;
- (void)setDevice_alias:(char *)a3;
- (void)setUuid:(char *)a3;
- (void)timesyncWithCallback:(id)a3;
- (void)triggerNeedsConnect;
@end

@implementation RSDRemoteDevice

- (void)disconnect
{
  [(RSDRemoteDevice *)self setState:5];
  v3 = [(RSDRemoteDevice *)self connection];

  if (v3)
  {
    v4 = [(RSDRemoteDevice *)self connection];
    xpc_remote_connection_cancel();

    [(RSDRemoteDevice *)self setConnection:0];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(RSDRemoteDevice *)self service_listeners];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v19 + 1) + 8 * v9) cancel];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = [(RSDRemoteDevice *)self services];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14) cancel];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  [(RSDRemoteDevice *)self setService_listeners:0];
  [(RSDRemoteDevice *)self setServices:0];
  [(RSDRemoteDevice *)self drainPendedRequests];
  sub_100001CF4(self);
  [qword_100064360 removeObject:self];
}

- (void)drainPendedRequests
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001EAC;
  block[3] = &unk_10005D130;
  block[4] = self;
  dispatch_async(qword_100064368, block);
}

- (void)dealloc
{
  free(self->_uuid);
  free(self->_device_name);
  free(self->_device_alias);
  v3.receiver = self;
  v3.super_class = RSDRemoteDevice;
  [(RSDRemoteDevice *)&v3 dealloc];
}

- (RSDRemoteDevice)initWithName:(char *)a3
{
  v4 = [(RSDRemoteDevice *)self init];
  v5 = v4;
  if (v4)
  {
    ++qword_100063C18;
    [(RSDRemoteDevice *)v4 setDevice_id:?];
    [(RSDRemoteDevice *)v5 setHeartbeat_sequence_number:1];
    v6 = objc_alloc_init(NSMutableSet);
    [(RSDRemoteDevice *)v5 setDevice_peers:v6];

    v7 = objc_alloc_init(NSMutableArray);
    [(RSDRemoteDevice *)v5 setHeartbeat_requests:v7];

    v8 = xpc_dictionary_create(0, 0, 0);
    [(RSDRemoteDevice *)v5 setProperties:v8];

    v9 = xpc_dictionary_create(0, 0, 0);
    [(RSDRemoteDevice *)v5 setPublic_properties:v9];

    [(RSDRemoteDevice *)v5 setLatestConnectError:0xFFFFFFFFLL];
    [(RSDRemoteDevice *)v5 setTlsEnabled:0];
    v10 = objc_alloc_init(NSMutableArray);
    pended_requests = v5->_pended_requests;
    v5->_pended_requests = v10;

    v5->_device_name = strdup(a3);
    v12 = os_transaction_create();
    transaction = v5->_transaction;
    v5->_transaction = v12;

    *&v5->_requested_tls = 0;
    v5->_timesync_in_progress = 0;
    v14 = v5;
  }

  return v5;
}

- (BOOL)isHost
{
  connection = self->_connection;
  if (connection)
  {
    LOBYTE(connection) = _xpc_remote_connection_is_server(connection, a2);
  }

  return connection;
}

- (void)setUuid:(char *)a3
{
  uuid = self->_uuid;
  if (!uuid)
  {
    uuid = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
    self->_uuid = uuid;
    if (!uuid)
    {
      sub_100038D84(&v7, v8);
    }
  }

  uuid_copy(uuid, a3);
  v6 = self->_uuid;

  uuid_unparse(v6, self->_uuidString);
}

- (BOOL)isTrusted
{
  [(RSDRemoteDevice *)self type];

  return remote_device_type_is_trusted();
}

- (id)serviceWithName:(const char *)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(RSDRemoteDevice *)self services];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (!strcmp([v9 name], a3))
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (unsigned)type
{
  result = _os_crash();
  __break(1u);
  return result;
}

- (const)remote_address
{
  result = _os_crash();
  __break(1u);
  return result;
}

- (const)local_address
{
  result = _os_crash();
  __break(1u);
  return result;
}

- (int)interface_index
{
  result = _os_crash();
  __break(1u);
  return result;
}

- (void)pollConnect:(int)a3 onQueue:(id)a4 withLog:(id)a5 completion:(id)a6
{
  v7 = a6;
  v6 = v7;
  remote_socket_poll_connect_async();
}

- (int)listenForService:(char *)a3 port:(char *)a4
{
  v13 = -1;
  v12 = 0;
  v7 = sub_1000240DC(&v13, [(RSDRemoteDevice *)self local_address], &v12, [(RSDRemoteDevice *)self interface_index], &unk_100049E6C);
  if (v7)
  {
    v8 = v7;
    v9 = qword_1000646E0;
    if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v16 = self;
      v17 = 2080;
      v18 = a3;
      v19 = 1024;
      v20 = v8;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@> Unable to start listener for %s: %{errno}d", buf, 0x1Cu);
    }

    return -1;
  }

  else
  {
    if (asprintf(a4, "%d", v12) < 0)
    {
      sub_100038DF0(&v14, buf);
    }

    v11 = qword_1000646E0;
    if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_INFO))
    {
      *buf = 138543874;
      v16 = self;
      v17 = 2080;
      v18 = a3;
      v19 = 1024;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%{public}@> listenForService %s returning port %d", buf, 0x1Cu);
    }

    return v13;
  }
}

- (int)connectToService:(char *)a3 withTcpOption:(id *)a4
{
  v12 = -1;
  v6 = atoi(a3);
  v7 = qword_1000646E0;
  if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v14 = self;
    v15 = 1024;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@> Attempting to connect to service on port %d", buf, 0x12u);
  }

  v8 = sub_100023C1C(&v12, [(RSDRemoteDevice *)self remote_address], v6, [(RSDRemoteDevice *)self interface_index], a4);
  if (!v8)
  {
    return v12;
  }

  v9 = v8;
  v10 = qword_1000646E0;
  if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    v14 = self;
    v15 = 1024;
    v16 = v6;
    v17 = 1024;
    v18 = v9;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@> Unable to open socket to service on port %d: %{darwin.errno}d", buf, 0x18u);
  }

  return -1;
}

- (void)attach
{
  if (![(RSDRemoteDevice *)self type])
  {
    sub_100038F58(&v11, buf);
  }

  v3 = objc_alloc_init(NSMutableSet);
  [(RSDRemoteDevice *)self setService_listeners:v3];

  v4 = objc_alloc_init(NSMutableSet);
  [(RSDRemoteDevice *)self setServices:v4];

  [qword_100064360 addObject:self];
  v5 = qword_1000646E0;
  if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@> Attached", buf, 0xCu);
  }

  if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(RSDRemoteDevice *)self properties];
    v7 = xpc_copy_clean_description();

    if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEBUG))
    {
      sub_100038E78();
    }

    free(v7);
    v8 = [(RSDRemoteDevice *)self public_properties];
    v9 = xpc_copy_clean_description();

    if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEBUG))
    {
      sub_100038EE8();
    }

    free(v9);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100008548;
  v10[3] = &unk_10005D130;
  v10[4] = self;
  dispatch_async(qword_100064368, v10);
  sub_100026EE8(self);
}

- (NSSet)tlsOidsPopulatedOnPeer
{
  v3 = objc_alloc_init(NSMutableSet);
  v4 = [(RSDRemoteDevice *)self properties];
  v5 = xpc_dictionary_get_array(v4, "EncryptedRemoteXPCPopulatedOIDs");

  if (v5)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_100008644;
    applier[3] = &unk_10005D0E0;
    v9 = v3;
    xpc_array_apply(v5, applier);
  }

  v6 = [v3 copy];

  return v6;
}

- (void)triggerNeedsConnect
{
  if ([(RSDRemoteDevice *)self state]== 5)
  {
    v3 = qword_1000646E0;
    if (!os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v5 = 138543362;
    v6 = self;
    v4 = "%{public}@> Device gone, not attempting reconnect";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v4, &v5, 0xCu);
    return;
  }

  if ([(RSDRemoteDevice *)self state]== 3)
  {
    v3 = qword_1000646E0;
    if (!os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v5 = 138543362;
    v6 = self;
    v4 = "%{public}@> Already connected, not triggering needsConnect";
    goto LABEL_7;
  }

  [(RSDRemoteDevice *)self needsConnect];
}

- (BOOL)negotiateTls
{
  v3 = xpc_dictionary_create(0, 0, 0);
  if ([(RSDRemoteDevice *)self state]== 2)
  {
    v4 = sub_10001C540();

    if (v4)
    {
      if ([(RSDRemoteDevice *)self messaging_protocol_version]> 6)
      {
        if ([(RSDRemoteDevice *)self tlsRequirement]!= 1)
        {
          v13 = [objc_opt_class() tlsOidsRequiredOfPeer];
          v9 = [NSMutableSet setWithSet:v13];

          v14 = [(RSDRemoteDevice *)self tlsOidsPopulatedOnPeer];
          [v9 minusSet:v14];

          if (![v9 count])
          {
            v8 = 1;
            goto LABEL_13;
          }

          if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
          {
            sub_100039060();
          }

LABEL_12:
          v8 = 0;
LABEL_13:
          xpc_dictionary_set_string(v3, "MessageType", "StartTls");
          xpc_dictionary_set_BOOL(v3, "YesNo", v8);
          xpc_dictionary_set_uint64(v3, "TlsPolicy", [(RSDRemoteDevice *)self tlsRequirement]);
          v10 = [(RSDRemoteDevice *)self connection];
          xpc_remote_connection_send_message();

          goto LABEL_14;
        }

        v12 = qword_1000646E0;
        if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_INFO))
        {
          v15 = 138543362;
          v16 = self;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@> TLS is disabled for this backend.", &v15, 0xCu);
        }
      }

      else
      {
        v5 = qword_1000646E0;
        if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_INFO))
        {
          v6 = v5;
          v15 = 138543874;
          v16 = self;
          v17 = 2048;
          v18 = [(RSDRemoteDevice *)self messaging_protocol_version];
          v19 = 1024;
          v20 = 7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@> Peer protocol version too low for TLS (%llu < %d).", &v15, 0x1Cu);
        }
      }
    }

    else if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
    {
      sub_1000390C8();
    }

    v9 = 0;
    goto LABEL_12;
  }

  v7 = qword_1000646E0;
  if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
  {
    sub_100038FC4(self, v7);
  }

  v8 = 0;
LABEL_14:

  return v8;
}

- (void)handshakeCompleted:(unint64_t)a3
{
  v5 = [(RSDRemoteDevice *)self tlsRequirement];
  if ((a3 == 3 || v5 == 3) && !self->_enable_tls)
  {
    v7 = qword_1000646E0;
    if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@> TLS is required by self and/or peer and was not enabled. Connect failed.", &v10, 0xCu);
    }

    [(RSDRemoteDevice *)self setState:1];
    v8 = [(RSDRemoteDevice *)self connection];

    if (v8)
    {
      v9 = [(RSDRemoteDevice *)self connection];
      xpc_remote_connection_cancel();

      [(RSDRemoteDevice *)self setConnection:0];
    }
  }

  else
  {
    v6 = qword_1000646E0;
    if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@> Handshake complete.", &v10, 0xCu);
    }

    [(RSDRemoteDevice *)self setState:3];
    [(RSDRemoteDevice *)self connected];
    [(RSDRemoteDevice *)self fetchDeviceAlias];
    sub_100026FE8(self);
    [(RSDRemoteDevice *)self drainPendedRequests];
  }
}

- (id)handleReset:(id)a3
{
  v4 = a3;
  if (xpc_dictionary_expects_reply())
  {
    self->_being_reset = 1;
    reply = xpc_dictionary_create_reply(v4);
    xpc_dictionary_set_string(reply, "Result", "Ok");
  }

  else
  {
    if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
    {
      sub_100039130();
    }

    reply = 0;
  }

  return reply;
}

- (void)handleResetGoAhead
{
  v3 = qword_1000646E0;
  if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@> Got reset goahead. Cancel this connection and proceed to reset", &v6, 0xCu);
  }

  v4 = [(RSDRemoteDevice *)self connection];

  if (v4)
  {
    v5 = [(RSDRemoteDevice *)self connection];
    xpc_remote_connection_cancel();

    [(RSDRemoteDevice *)self setConnection:0];
  }
}

- (void)connect:(id)a3
{
  v4 = a3;
  v5 = [(RSDRemoteDevice *)self state];
  if (v4)
  {
    if (v5 == 5)
    {
      v6 = qword_1000646E0;
      if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v78 = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@> Device already gone, giving up the connection", buf, 0xCu);
      }

      xpc_remote_connection_cancel();
    }

    else
    {
      v8 = [(RSDRemoteDevice *)self connection];

      if (v8)
      {
        sub_100039198(&v72, buf);
      }

      [(RSDRemoteDevice *)self setConnection:v4];
      if (![(RSDRemoteDevice *)self state])
      {
        self->_being_reset = 0;
      }

      [(RSDRemoteDevice *)self setState:1];
      if (self->_enable_tls)
      {
        v9 = sub_10001C540();
        if (!v9)
        {
          sub_100039204();
        }

        v10 = v9;
        v11 = qword_1000646E0;
        if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v78 = self;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@> Applying TLS to RemoteXPC connection.", buf, 0xCu);
        }

        v12 = [(RSDRemoteDevice *)self connection];
        v67 = _NSConcreteStackBlock;
        v68 = 3221225472;
        v69 = sub_100009598;
        v70 = &unk_10005D180;
        v71 = self;
        xpc_remote_connection_set_tls();

        enable_tls = self->_enable_tls;
      }

      else
      {
        enable_tls = 0;
      }

      [(RSDRemoteDevice *)self setTlsEnabled:enable_tls];
      [(RSDRemoteDevice *)self refreshServiceListeners];
      xpc_remote_connection_set_target_queue();
      v61 = _NSConcreteStackBlock;
      v62 = 3221225472;
      v63 = sub_100009600;
      v64 = &unk_10005D1D0;
      v65 = self;
      v45 = v4;
      v66 = v4;
      xpc_remote_connection_set_event_handler();
      xpc_remote_connection_activate();
      v15 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v15, "MessageType", "Handshake");
      xpc_dictionary_set_uint64(v15, "MessagingProtocolVersion", 7uLL);
      xpc_dictionary_set_uuid(v15, "UUID", &xmmword_1000646E8);
      v44 = v15;
      xpc_dictionary_set_value(v15, "Properties", qword_1000646F8);
      xdict = xpc_dictionary_create(0, 0, 0);
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      obj = qword_100064700;
      v16 = [obj countByEnumeratingWithState:&v57 objects:v76 count:16];
      v48 = self;
      if (v16)
      {
        v17 = v16;
        v18 = *v58;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v58 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v57 + 1) + 8 * i);
            v53 = 0u;
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v21 = [(RSDRemoteDevice *)self service_listeners];
            v22 = [v21 countByEnumeratingWithState:&v53 objects:v75 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v54;
LABEL_28:
              v25 = 0;
              while (1)
              {
                if (*v54 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v53 + 1) + 8 * v25);
                v27 = [v26 service];

                if (v27 == v20)
                {
                  break;
                }

                if (v23 == ++v25)
                {
                  v23 = [v21 countByEnumeratingWithState:&v53 objects:v75 count:16];
                  if (v23)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_34;
                }
              }

              v28 = v26;

              if (!v28)
              {
                goto LABEL_37;
              }

              v29 = [v20 name];
              v30 = [v28 copyServiceDescription];
              xpc_dictionary_set_value(xdict, v29, v30);

              self = v48;
            }

            else
            {
LABEL_34:

LABEL_37:
              v31 = qword_1000646E0;
              self = v48;
              if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
              {
                v32 = v31;
                v33 = [v20 name];
                *buf = 138543618;
                v78 = v48;
                v79 = 2080;
                v80 = v33;
                _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%{public}@> No listener for %s", buf, 0x16u);
              }
            }
          }

          v17 = [obj countByEnumeratingWithState:&v57 objects:v76 count:16];
        }

        while (v17);
      }

      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v34 = qword_100064708;
      v35 = [v34 countByEnumeratingWithState:&v49 objects:v74 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v50;
        do
        {
          for (j = 0; j != v36; j = j + 1)
          {
            if (*v50 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = *(*(&v49 + 1) + 8 * j);
            v40 = [v39 name];
            v41 = [v39 copyServiceDescription];
            xpc_dictionary_set_value(xdict, v40, v41);
          }

          v36 = [v34 countByEnumeratingWithState:&v49 objects:v74 count:16];
        }

        while (v36);
      }

      xpc_dictionary_set_value(v44, "Services", xdict);
      xpc_remote_connection_send_message();
      v42 = xpc_copy_clean_description();
      v43 = qword_1000646E0;
      if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v78 = v48;
        v79 = 2080;
        v80 = v42;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%{public}@> Sending handshake message: %s", buf, 0x16u);
      }

      free(v42);

      v4 = v45;
    }
  }

  else
  {
    v7 = qword_1000646E0;
    if (v5 == 5)
    {
      if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v78 = self;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@> Device connection failed, device already gone, giving up", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v78 = self;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@> Device connection failed", buf, 0xCu);
      }

      v14 = dispatch_time(0, 1000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100009590;
      block[3] = &unk_10005D130;
      block[4] = self;
      dispatch_after(v14, qword_100064368, block);
    }
  }
}

- (void)heartbeatWithCallback:(id)a3
{
  v4 = a3;
  if ([(RSDRemoteDevice *)self state]== 3 && ([(RSDRemoteDevice *)self connection], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    if ([(RSDRemoteDevice *)self messaging_protocol_version])
    {
      v6 = [(RSDRemoteDevice *)self heartbeat_sequence_number];
      [(RSDRemoteDevice *)self setHeartbeat_sequence_number:[(RSDRemoteDevice *)self heartbeat_sequence_number]+ 1];
      v7 = qword_1000646E0;
      if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v19 = self;
        v20 = 2048;
        v21 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@> Sending heartbeat request %llu", buf, 0x16u);
      }

      self->_heartbeat_stats.times.outstanding_start = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
      ++self->_heartbeat_stats.counts.sent;
      v8 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v8, "MessageType", "Heartbeat");
      xpc_dictionary_set_uint64(v8, "SequenceNumber", v6);
      v9 = [(RSDRemoteDevice *)self connection];
      v13 = v4;
      xpc_remote_connection_send_message_with_reply();
    }

    else
    {
      if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
      {
        sub_100039960();
      }

      v12 = qword_100064368;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10000ABC0;
      v14[3] = &unk_10005D1F8;
      v15 = v4;
      dispatch_async(v12, v14);
      v8 = v15;
    }
  }

  else
  {
    v10 = qword_1000646E0;
    if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@> Heartbeat failed: not connected", buf, 0xCu);
    }

    v11 = qword_100064368;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000ABAC;
    block[3] = &unk_10005D1F8;
    v17 = v4;
    dispatch_async(v11, block);
    v8 = v17;
  }
}

- (void)timesyncWithCallback:(id)a3
{
  v4 = a3;
  if ([(RSDRemoteDevice *)self state]== 3 && ([(RSDRemoteDevice *)self connection], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    if ([(RSDRemoteDevice *)self messaging_protocol_version]> 2)
    {
      if (self->_timesync_in_progress)
      {
        if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
        {
          sub_100039A58();
        }

        v4[2](v4, 37);
      }

      else
      {
        self->_timesync_in_progress = 1;
        v6 = qword_1000646E0;
        if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v13 = self;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@> sending timesync request", buf, 0xCu);
        }

        v7 = sub_10000FF0C();
        v8 = sub_10000FF98(v7, qword_1000646E0);
        empty = xpc_dictionary_create_empty();
        xpc_dictionary_set_string(empty, "MessageType", "Timesync");
        xpc_dictionary_set_value(empty, "TimesyncPayload", v8);
        v10 = [(RSDRemoteDevice *)self connection];
        v11 = v4;
        xpc_remote_connection_send_message_with_reply();
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
      {
        sub_100039AC0();
      }

      v4[2](v4, 43);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
    {
      sub_100039B28();
    }

    v4[2](v4, 57);
  }
}

- (void)goodByeWithCallback:(id)a3
{
  v4 = a3;
  if ([(RSDRemoteDevice *)self type]== 14)
  {
    if ([(RSDRemoteDevice *)self state]== 3 && ([(RSDRemoteDevice *)self connection], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_string(empty, "MessageType", "Goodbye");
      v7 = [(RSDRemoteDevice *)self connection];
      v8 = v4;
      xpc_remote_connection_send_message_with_reply();
    }

    else
    {
      if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
      {
        sub_100039CC8();
      }

      (*(v4 + 2))(v4, 57);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
    {
      sub_100039C60();
    }

    (*(v4 + 2))(v4, 43);
  }
}

- (void)reset
{
  if ([(RSDRemoteDevice *)self state]== 5)
  {
    if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
    {
      sub_100039D30();
    }
  }

  else
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10000B4E8;
    v3[3] = &unk_10005D130;
    v3[4] = self;
    [(RSDRemoteDevice *)self invokeWhenConnectable:v3];
  }
}

- (void)refreshServiceListeners
{
  if ([(RSDRemoteDevice *)self tlsRequirement]== 3 && ![(RSDRemoteDevice *)self tlsEnabled])
  {
    v19 = qword_1000646E0;
    if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v41 = self;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%{public}@> TLS required and not yet enabled. Postpone listening for services.", buf, 0xCu);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v20 = [(RSDRemoteDevice *)self service_listeners];
    v21 = [v20 countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v37;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v37 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [*(*(&v36 + 1) + 8 * i) cancel];
        }

        v22 = [v20 countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v22);
    }

    obj = [(RSDRemoteDevice *)self service_listeners];
    [obj removeAllObjects];
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = qword_100064700;
    v3 = [obj countByEnumeratingWithState:&v32 objects:v45 count:16];
    if (v3)
    {
      v5 = v3;
      v27 = *v33;
      *&v4 = 138543618;
      v25 = v4;
      do
      {
        for (j = 0; j != v5; j = j + 1)
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v32 + 1) + 8 * j);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v8 = [(RSDRemoteDevice *)self service_listeners];
          v9 = [v8 countByEnumeratingWithState:&v28 objects:v44 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v29;
LABEL_10:
            v12 = 0;
            while (1)
            {
              if (*v29 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v28 + 1) + 8 * v12);
              v14 = [v13 service];

              if (v14 == v7)
              {
                break;
              }

              if (v10 == ++v12)
              {
                v10 = [v8 countByEnumeratingWithState:&v28 objects:v44 count:16];
                if (v10)
                {
                  goto LABEL_10;
                }

                goto LABEL_16;
              }
            }

            v15 = v13;

            if (v15)
            {
              goto LABEL_21;
            }
          }

          else
          {
LABEL_16:
          }

          v16 = qword_1000646E0;
          if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_INFO))
          {
            v17 = v16;
            v18 = [v7 name];
            *buf = v25;
            v41 = self;
            v42 = 2080;
            v43 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%{public}@> Trying to listen for new service %s", buf, 0x16u);
          }

          [(RSDRemoteDevice *)self listenForService:v7];
          v15 = 0;
LABEL_21:
        }

        v5 = [obj countByEnumeratingWithState:&v32 objects:v45 count:16];
      }

      while (v5);
    }
  }
}

- (void)_resetNow
{
  if ([(RSDRemoteDevice *)self state]== 5)
  {
    if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
    {
      sub_100039D30();
    }
  }

  else
  {
    v3 = [(RSDRemoteDevice *)self messaging_protocol_version];
    v4 = qword_1000646E0;
    if (v3 > 1)
    {
      if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v8 = self;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%{public}@> About to reset", buf, 0xCu);
      }

      self->_resetting = 1;
      v5 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v5, "MessageType", "Reset");
      v6 = [(RSDRemoteDevice *)self connection];
      xpc_remote_connection_send_message_with_reply();
    }

    else if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
    {
      sub_100039D98();
    }
  }
}

- (void)invokeWhenConnectable:(id)a3
{
  v6 = a3;
  if ([(RSDRemoteDevice *)self connectable])
  {
    v6[2]();
  }

  else
  {
    pended_requests = self->_pended_requests;
    v5 = objc_retainBlock(v6);

    [(NSMutableArray *)pended_requests addObject:v5];
    v6 = v5;
  }
}

- (void)setBackendProperty:(const char *)a3 withUint:(unint64_t)a4
{
  v7 = [(RSDRemoteDevice *)self properties];
  xpc_dictionary_set_uint64(v7, a3, a4);

  v9 = a3;
  if (lfind(&v9, &off_10005D2B0, &qword_100049E80, 8uLL, sub_10000D314))
  {
    v8 = [(RSDRemoteDevice *)self public_properties];
    xpc_dictionary_set_uint64(v8, a3, a4);
  }
}

- (void)setBackendProperty:(const char *)a3 withBool:(BOOL)a4
{
  v7 = [(RSDRemoteDevice *)self properties];
  xpc_dictionary_set_BOOL(v7, a3, a4);

  v9 = a3;
  if (lfind(&v9, &off_10005D2B0, &qword_100049E80, 8uLL, sub_10000D314))
  {
    v8 = [(RSDRemoteDevice *)self public_properties];
    xpc_dictionary_set_BOOL(v8, a3, a4);
  }
}

- (void)setBackendProperty:(const char *)a3 withString:(const char *)a4
{
  v7 = [(RSDRemoteDevice *)self properties];
  xpc_dictionary_set_string(v7, a3, a4);

  v9 = a3;
  if (lfind(&v9, &off_10005D2B0, &qword_100049E80, 8uLL, sub_10000D314))
  {
    v8 = [(RSDRemoteDevice *)self public_properties];
    xpc_dictionary_set_string(v8, a3, a4);
  }
}

- ($53DFC3DD9429D54544A2B2B9F14ED761)optionsForService:(SEL)a3
{
  if (a4)
  {
    return [a4 getTcpOptions];
  }

  *&retstr->var0 = 0;
  *&retstr->var3 = 0;
  retstr->var5 = 0;
  return self;
}

- (id)listenerForService:(id)a3
{
  v4 = a3;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v5 = -[RSDRemoteDevice listenForService:port:](self, "listenForService:port:", [v4 name], &v12);
  if (v5 == -1)
  {
    v9 = qword_1000646E0;
    if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
    {
      sub_100039E84(self, v9, v4);
    }

    v8 = 0;
  }

  else
  {
    v6 = v5;
    if (fcntl(v5, 4, 4) == -1)
    {
      sub_100039E00(&v11, v13);
    }

    v7 = [RSDLocalServiceSocketListener alloc];
    v8 = [(RSDLocalServiceSocketListener *)v7 initWithService:v4 forDevice:self withPort:v12 onSocket:v6];
  }

  return v8;
}

- (void)listenForService:(id)a3
{
  v4 = a3;
  if ([(RSDRemoteDevice *)self shouldExposeLocalService:v4])
  {
    v5 = [(RSDRemoteDevice *)self listenerForService:v4];
    v6 = qword_1000646E0;
    if (v5)
    {
      if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_INFO))
      {
        v7 = v6;
        v10 = 138543874;
        v11 = self;
        v12 = 2080;
        v13 = [v4 name];
        v14 = 2080;
        v15 = [v5 port];
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@> Listening for %s on port %s.", &v10, 0x20u);
      }

      v8 = [(RSDRemoteDevice *)self service_listeners];
      [v8 addObject:v5];
    }

    else if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
    {
      sub_100039F18(self, v6, v4);
    }

    goto LABEL_10;
  }

  v9 = qword_1000646E0;
  if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_INFO))
  {
    v5 = v9;
    v10 = 138543618;
    v11 = self;
    v12 = 2080;
    v13 = [v4 name];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@> Won't expose %s to the device", &v10, 0x16u);
LABEL_10:
  }
}

- (void)fetchDeviceAlias
{
  if (![(RSDRemoteDevice *)self device_alias])
  {
    v3 = [(RSDRemoteDevice *)self properties];
    v4 = xpc_dictionary_get_value(v3, "UniqueDeviceID");

    if (v4)
    {
      string_ptr = xpc_string_get_string_ptr(v4);
      if (string_ptr)
      {
        v6 = string_ptr;
        v7 = [qword_1000646D8 valueForKey:@"device_name_map"];
        if (v7)
        {
          v8 = v7;
          v9 = CFStringCreateWithCString(kCFAllocatorDefault, v6, 0x8000100u);
          Value = CFDictionaryGetValue(v8, v9);
          if (Value)
          {
            v11 = Value;
            v12 = malloc_type_malloc(0x80uLL, 0x2F48DA65uLL);
            if (!v12)
            {
              sub_100039FAC(&v13, v14);
            }

            self->_device_alias = v12;
            CFStringGetCString(v11, v12, 128, 0x8000100u);
          }

          CFRelease(v9);
          CFRelease(v8);
        }
      }

      else if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEBUG))
      {
        sub_10003A084();
      }
    }

    else if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEBUG))
    {
      sub_10003A0EC();
    }
  }
}

- (void)setDevice_alias:(char *)a3
{
  if (a3)
  {
    v5 = [(RSDRemoteDevice *)self properties];
    v6 = xpc_dictionary_get_value(v5, "UniqueDeviceID");

    if (v6)
    {
      string_ptr = xpc_string_get_string_ptr(v6);
      if (string_ptr)
      {
        v8 = string_ptr;
        v9 = [qword_1000646D8 valueForKey:@"device_name_map"];
        if (!v9 || (Mutable = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v9)) == 0)
        {
          Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        }

        v11 = CFStringCreateWithCString(kCFAllocatorDefault, a3, 0x8000100u);
        v12 = CFStringCreateWithCString(kCFAllocatorDefault, v8, 0x8000100u);
        CFDictionarySetValue(Mutable, v12, v11);
        [qword_1000646D8 setValue:Mutable forKey:@"device_name_map"];
        [qword_1000646D8 synchronize];
        free(self->_device_alias);
        if (_dispatch_is_multithreaded())
        {
          while (1)
          {
            v13 = strdup(a3);
            if (v13)
            {
              break;
            }

            __os_temporary_resource_shortage();
          }
        }

        else
        {
          v13 = strdup(a3);
          if (!v13)
          {
            sub_10003A154(a3, &v14, v15);
          }
        }

        self->_device_alias = v13;
        CFRelease(v12);
        CFRelease(v11);
        CFRelease(Mutable);
        if (v9)
        {
          CFRelease(v9);
        }
      }

      else if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEBUG))
      {
        sub_10003A084();
      }
    }

    else if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_DEBUG))
    {
      sub_10003A0EC();
    }
  }

  else if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
  {
    sub_10003A22C();
  }
}

- (id)copyProperty:(char *)a3 allowSensitive:(BOOL)a4
{
  v4 = a4;
  v7 = [(RSDRemoteDevice *)self public_properties];
  v8 = xpc_dictionary_get_value(v7, a3);

  if (!v8 && v4)
  {
    v9 = [(RSDRemoteDevice *)self properties];
    v8 = xpc_dictionary_get_value(v9, a3);
  }

  return v8;
}

- (BOOL)hasServiceWithName:(const char *)a3 peerMessage:(id)a4
{
  v6 = a4;
  v7 = [(RSDRemoteDevice *)self serviceWithName:a3];
  if (v7)
  {
    v8 = sub_100025438(v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyClientDescriptionWithSensitiveProperties:(BOOL)a3
{
  v3 = a3;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v5, "device_type", [(RSDRemoteDevice *)self type]);
  xpc_dictionary_set_uint64(v5, "device_id", [(RSDRemoteDevice *)self device_id]);
  xpc_dictionary_set_string(v5, "device_name", [(RSDRemoteDevice *)self device_name]);
  if ([(RSDRemoteDevice *)self device_alias])
  {
    xpc_dictionary_set_string(v5, "device_alias", [(RSDRemoteDevice *)self device_alias]);
  }

  xpc_dictionary_set_uint64(v5, "device_messaging_protocol_version", [(RSDRemoteDevice *)self messaging_protocol_version]);
  xpc_dictionary_set_BOOL(v5, "device_tls_enabled", [(RSDRemoteDevice *)self tlsEnabled]);
  if ([(RSDRemoteDevice *)self uuid])
  {
    xpc_dictionary_set_uuid(v5, "UUID", [(RSDRemoteDevice *)self uuid]);
  }

  v6 = [(RSDRemoteDevice *)self properties];

  if (v6)
  {
    v7 = os_log_type_enabled(qword_100064558, OS_LOG_TYPE_DEBUG);
    if (v3)
    {
      if (v7)
      {
        sub_1000402B4();
      }

      v8 = [(RSDRemoteDevice *)self properties];
    }

    else
    {
      if (v7)
      {
        sub_1000401E0();
      }

      v9 = [(RSDRemoteDevice *)self public_properties];

      if (!v9)
      {
        sub_100040248(&v21, buf);
      }

      v8 = [(RSDRemoteDevice *)self public_properties];
    }

    v10 = v8;
    xpc_dictionary_set_value(v5, "properties", v8);
  }

  v11 = [(RSDRemoteDevice *)self state]- 3;
  if (v11 > 2)
  {
    v12 = 1;
  }

  else
  {
    v12 = qword_100049EE0[v11];
  }

  xpc_dictionary_set_uint64(v5, "device_state", v12);
  v13 = [(RSDRemoteDevice *)self device_listener];

  if (!v13)
  {
    v14 = qword_100064558;
    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%{public}@> Creating device listener", buf, 0xCu);
    }

    v15 = xpc_connection_create(0, qword_100064560);
    [(RSDRemoteDevice *)self setDevice_listener:v15];

    v16 = [(RSDRemoteDevice *)self device_listener];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100026168;
    v20[3] = &unk_10005CF88;
    v20[4] = self;
    xpc_connection_set_event_handler(v16, v20);

    v17 = [(RSDRemoteDevice *)self device_listener];
    xpc_connection_activate(v17);
  }

  v18 = [(RSDRemoteDevice *)self device_listener];
  xpc_dictionary_set_connection(v5, "endpoint", v18);

  return v5;
}

@end