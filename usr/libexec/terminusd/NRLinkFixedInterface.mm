@interface NRLinkFixedInterface
- (BOOL)cancelWithReason:(id)reason;
- (BOOL)resume;
- (BOOL)sendControlData:(id)data;
- (BOOL)start;
- (BOOL)suspend;
- (id)copyDescriptionInner;
- (id)copyStatusString;
- (void)invalidateIKESessionForClass:(unsigned __int8)class;
- (void)invalidateLink;
- (void)requestConfigurationForListener:(id)listener session:(id)session sessionConfig:(id)config childConfig:(id)childConfig validateAuthBlock:(id)block responseBlock:(id)responseBlock;
@end

@implementation NRLinkFixedInterface

- (BOOL)resume
{
  if (self->super._state == 255)
  {
    nrUUID = self->super._nrUUID;
    v5 = _NRCopyLogObjectForNRUUID();
    v6 = 1;
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = self->super._nrUUID;
      v9 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs();
    }
  }

  else
  {
    v22.receiver = self;
    v22.super_class = NRLinkFixedInterface;
    if ([(NRLink *)&v22 resume])
    {
      companionProxyAgent = self->super._companionProxyAgent;
      if (companionProxyAgent)
      {
        if (sub_100070DD8(companionProxyAgent, self))
        {
          [(NRLink *)self reportEvent:12002];
        }

        else
        {
          v10 = self->super._nrUUID;
          v11 = _NRCopyLogObjectForNRUUID();
          v12 = _NRLogIsLevelEnabled();

          if (v12)
          {
            v13 = self->super._nrUUID;
            v14 = _NRCopyLogObjectForNRUUID();
            v19 = 683;
            copyDescription2 = [(NRLink *)self copyDescription];
            v17 = "";
            v18 = "[NRLinkFixedInterface resume]";
            _NRLogWithArgs();
          }
        }
      }

      [(NRLink *)self changeStateTo:8 details:@"(resume)", v17, v18, v19, copyDescription2];
      linkDelegate = [(NRLink *)self linkDelegate];
      [linkDelegate linkIsReady:self];

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

- (BOOL)suspend
{
  v20.receiver = self;
  v20.super_class = NRLinkFixedInterface;
  [(NRLink *)&v20 suspend];
  if (self->super._state != 255)
  {
    companionProxyAgent = self->super._companionProxyAgent;
    if (companionProxyAgent)
    {
      if (sub_100070270(companionProxyAgent))
      {
        [(NRLink *)self reportEvent:12003];
      }

      else
      {
        nrUUID = self->super._nrUUID;
        v10 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v12 = self->super._nrUUID;
          v13 = _NRCopyLogObjectForNRUUID();
          v17 = 656;
          copyDescription = [(NRLink *)self copyDescription];
          v15 = "";
          v16 = "[NRLinkFixedInterface suspend]";
          _NRLogWithArgs();
        }
      }
    }

    [(NRLink *)self changeStateTo:9 details:@"(suspend)", v15, v16, v17, copyDescription];
    linkDelegate = [(NRLink *)self linkDelegate];
    [linkDelegate linkIsSuspended:self];
    goto LABEL_10;
  }

  v4 = self->super._nrUUID;
  v5 = _NRCopyLogObjectForNRUUID();
  v6 = _NRLogIsLevelEnabled();

  if (v6)
  {
    v7 = self->super._nrUUID;
    linkDelegate = _NRCopyLogObjectForNRUUID();
    copyDescription2 = [(NRLink *)self copyDescription];
    _NRLogWithArgs();

LABEL_10:
  }

  return 1;
}

- (BOOL)sendControlData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v5 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50702 notifyData:dataCopy];
    v6 = v5 != 0;
    if (v5)
    {
      objc_initWeak(&location, self);
      v7 = *(&self->_ikeListener + 7);
      v20 = v5;
      v8 = [NSArray arrayWithObjects:&v20 count:1];
      queue = [(NRLink *)self queue];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000747E0;
      v17[3] = &unk_1001FC018;
      objc_copyWeak(&v18, &location);
      [v7 sendPrivateNotifies:v8 maxRetries:10 retryIntervalInMilliseconds:1000 callbackQueue:queue callback:v17];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    else
    {
      v14 = sub_10007478C();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v16 = sub_10007478C();
        _NRLogWithArgs();
      }
    }
  }

  else
  {
    v11 = sub_10007478C();
    v12 = _NRLogIsLevelEnabled();

    if (v12)
    {
      v13 = sub_10007478C();
      _NRLogWithArgs();
    }

    v6 = 0;
  }

  return v6;
}

- (void)requestConfigurationForListener:(id)listener session:(id)session sessionConfig:(id)config childConfig:(id)childConfig validateAuthBlock:(id)block responseBlock:(id)responseBlock
{
  listenerCopy = listener;
  sessionCopy = session;
  configCopy = config;
  childConfigCopy = childConfig;
  blockCopy = block;
  responseBlockCopy = responseBlock;
  v20 = responseBlockCopy;
  if (!listenerCopy)
  {
    v46 = sub_10007478C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_44;
    }

LABEL_36:
    v56 = sub_10007478C();
    _NRLogWithArgs();

    goto LABEL_44;
  }

  if (!sessionCopy)
  {
    v48 = sub_10007478C();
    v49 = _NRLogIsLevelEnabled();

    if (!v49)
    {
      goto LABEL_44;
    }

    goto LABEL_36;
  }

  if (!configCopy)
  {
    v50 = sub_10007478C();
    v51 = _NRLogIsLevelEnabled();

    if (!v51)
    {
      goto LABEL_44;
    }

    goto LABEL_36;
  }

  if (!blockCopy)
  {
    v52 = sub_10007478C();
    v53 = _NRLogIsLevelEnabled();

    if (!v53)
    {
      goto LABEL_44;
    }

    goto LABEL_36;
  }

  if (responseBlockCopy)
  {
    nrUUID = self->super._nrUUID;
    v22 = _NRCopyLogObjectForNRUUID();
    v23 = _NRLogIsLevelEnabled();

    if (v23)
    {
      v24 = self->super._nrUUID;
      v25 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs();
    }

    state = self->super._state;
    v68 = sessionCopy;
    if (state == 255)
    {
      goto LABEL_41;
    }

    localIdentifier = [configCopy localIdentifier];
    sessionCopy2 = session;
    if (qword_1002292E8 != -1)
    {
      dispatch_once(&qword_1002292E8, &stru_1001FC558);
    }

    v28 = qword_1002292E0;
    v29 = [localIdentifier isEqual:v28];

    if (!v29)
    {
      v31 = listenerCopy;
      v32 = self->super._nrUUID;
      v33 = _NRCopyLogObjectForNRUUID();
      v34 = _NRLogIsLevelEnabled();

      if (v34)
      {
        v35 = self->super._nrUUID;
        v36 = _NRCopyLogObjectForNRUUID();
        copyDescription2 = [(NRLink *)self copyDescription];
        localIdentifier2 = [configCopy localIdentifier];
        _NRLogWithArgs();
      }

      v38 = 0;
      v30 = 0;
      listenerCopy = v31;
      goto LABEL_42;
    }

    if (childConfigCopy)
    {
      v30 = sub_100146D34(1, 0);
      [v30 setMode:2];
      [v30 setReplayWindowSize:4];
    }

    else
    {
      if ([(NRLink *)self hasCompanionDatapath])
      {
LABEL_40:
        [(NRLink *)self reportEvent:3024 detailsFormat:@"ClassD %@", sessionCopy];
LABEL_41:
        v38 = 0;
        v30 = 0;
        goto LABEL_42;
      }

      v30 = 0;
    }

    sessionCopy = [(NRLink *)self nrUUID];
    v39 = sub_100163A30(NRDLocalDevice, sessionCopy);

    if (v39)
    {
      v64 = childConfigCopy;
      v38 = sub_100147400(0, v39, 4);
      v40 = v39[18];
      hasCompanionDatapath = [v40 hasCompanionDatapath];

      v65 = configCopy;
      v66 = listenerCopy;
      if (hasCompanionDatapath)
      {
        localOuterEndpoint = 0;
      }

      else
      {
        localOuterEndpoint = [(NRLink *)self localOuterEndpoint];
      }

      v43 = sub_100147C1C(v39, localOuterEndpoint);
      v69[0] = v43;
      v44 = sub_100147A80();
      v69[1] = v44;
      v45 = [NSArray arrayWithObjects:v69 count:2];
      [v38 setCustomIKEAuthPrivateNotifies:v45];

      if (blockCopy[2](blockCopy, v38))
      {
        [(NRLinkFixedInterface *)self invalidateIKESessionForClass:4];
        objc_storeStrong((&self->_ikeListener + 7), sessionCopy2);
        sub_10007501C(self);
        [(NRLink *)self reportEvent:3016 detailsFormat:@"ClassD %@", v68];

        configCopy = v65;
        listenerCopy = v66;
        childConfigCopy = v64;
        if ([(NRLink *)self setupVirtualInterface])
        {
          (v20)[2](v20, v38, v30, [(NRLink *)self virtualInterface]);
LABEL_43:

          sessionCopy = v68;
          goto LABEL_44;
        }
      }

      else
      {
        [(NRLink *)self reportEvent:3021 detailsFormat:@"ClassD %@", v68];

        configCopy = v65;
        listenerCopy = v66;
        childConfigCopy = v64;
      }

LABEL_42:
      v20[2](v20, 0, 0, 0);
      goto LABEL_43;
    }

    v57 = sub_10007478C();
    v58 = _NRLogIsLevelEnabled();

    if (v58)
    {
      v59 = sub_10007478C();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    listenerCopy = &v64 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v60 = *__error();
    v61 = _os_log_pack_fill();
    *v61 = 136446210;
    *(v61 + 4) = "[NRLinkFixedInterface requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]";
    sub_10007478C();
    _NRLogAbortWithPack();
    goto LABEL_40;
  }

  v54 = sub_10007478C();
  v55 = _NRLogIsLevelEnabled();

  if (v55)
  {
    goto LABEL_36;
  }

LABEL_44:
}

- (void)invalidateIKESessionForClass:(unsigned __int8)class
{
  classCopy = class;
  v5.receiver = self;
  v5.super_class = NRLinkFixedInterface;
  [(NRLink *)&v5 invalidateIKESessionForClass:?];
  [(NRLink *)self invalidateIKESession:sub_100076C30(self, classCopy)];
}

- (BOOL)cancelWithReason:(id)reason
{
  reasonCopy = reason;
  if (reasonCopy)
  {
    v5 = [[NSString alloc] initWithFormat:reasonCopy arguments:&v11];
    [(NRLink *)self reportEvent:3005 details:v5];
    if ([(NRLink *)self changeStateTo:255])
    {
      linkDelegate = [(NRLink *)self linkDelegate];
      [linkDelegate linkIsUnavailable:self];

      [(NRLinkFixedInterface *)self invalidateLink];
    }

    else
    {
      if (qword_100229000 != -1)
      {
        dispatch_once(&qword_100229000, &stru_1001FAE30);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229000 != -1)
        {
          dispatch_once(&qword_100229000, &stru_1001FAE30);
        }

        _NRLogWithArgs();
      }
    }
  }

  else
  {
    v8 = sub_10007478C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = sub_10007478C();
      _NRLogWithArgs();
    }
  }

  return reasonCopy != 0;
}

- (BOOL)start
{
  selfCopy = self;
  if ([(NRLink *)self state]== 8)
  {
    linkDelegate = [selfCopy linkDelegate];
    [linkDelegate linkIsReady:selfCopy];

    return 1;
  }

  if ([selfCopy state] != 9)
  {
    if ([selfCopy startRequested])
    {
      return 1;
    }

    [selfCopy setStartRequested:1];
    localInterfaceName = [selfCopy localInterfaceName];

    if (!localInterfaceName)
    {
      v21 = sub_10007478C();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        return 0;
      }

      v19 = sub_10007478C();
      _NRLogWithArgs();
LABEL_24:

      return 0;
    }

    if ([selfCopy state] == 1)
    {
      [selfCopy reportEvent:3001];
      nrUUID = [selfCopy nrUUID];
      v8 = sub_100163A30(NRDLocalDevice, nrUUID);

      if (v8)
      {
        [selfCopy setIkev2Role:sub_10013FF60(v8)];
        if ([selfCopy ikev2Role] == 2 && (objc_msgSend(selfCopy, "remoteOuterEndpoint"), v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
        {
          v20 = @"No remote outer endpoint present";
        }

        else
        {
          if ([selfCopy setupVirtualInterface])
          {
            v10 = nw_parameters_create();
            localInterfaceName2 = [selfCopy localInterfaceName];
            [localInterfaceName2 UTF8String];
            v12 = nw_interface_create_with_name();
            nw_parameters_require_interface(v10, v12);
            remoteOuterEndpoint = [selfCopy remoteOuterEndpoint];
            copyCEndpoint = [remoteOuterEndpoint copyCEndpoint];
            evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();

            objc_initWeak(&location, selfCopy);
            queue = [selfCopy queue];
            objc_copyWeak(&v28, &location);
            nw_path_evaluator_set_update_handler();

            nw_path_evaluator_start();
            if (selfCopy)
            {
              objc_storeStrong((selfCopy + 287), evaluator_for_endpoint);
            }

            sub_1000766CC(selfCopy);
            objc_destroyWeak(&v28);
            objc_destroyWeak(&location);

            v5 = 1;
            goto LABEL_29;
          }

          v20 = @"failed to setup virtual interface";
        }

        [selfCopy cancelWithReason:v20];
        v5 = 0;
LABEL_29:

        return v5;
      }

      v23 = sub_10007478C();
      v24 = _NRLogIsLevelEnabled();

      p_vtable = "[NRLinkFixedInterface start]";
      if (v24)
      {
        v25 = sub_10007478C();
        _NRLogWithArgs();
      }

      selfCopy = _os_log_pack_size();
      __chkstk_darwin();
      v26 = *__error();
      v27 = _os_log_pack_fill();
      *v27 = 136446210;
      *(v27 + 4) = "[NRLinkFixedInterface start]";
      sub_10007478C();
      _NRLogAbortWithPack();
      __break(1u);
    }

    else
    {
      if (qword_100229000 != -1)
      {
        dispatch_once(&qword_100229000, &stru_1001FAE30);
      }

      p_vtable = NRSCDInterfaceConfig.vtable;
      if (!_NRLogIsLevelEnabled())
      {
        return 0;
      }

      if (qword_100229000 == -1)
      {
        goto LABEL_23;
      }
    }

    dispatch_once(&qword_100229000, &stru_1001FAE30);
LABEL_23:
    v18 = p_vtable[511];
    v19 = sub_1001415A0([selfCopy state]);
    _NRLogWithArgs();

    goto LABEL_24;
  }

  return [selfCopy resume];
}

- (id)copyDescriptionInner
{
  v3 = [NSString alloc];
  v9.receiver = self;
  v9.super_class = NRLinkFixedInterface;
  copyDescriptionInner = [(NRLink *)&v9 copyDescriptionInner];
  localOuterEndpoint = [(NRLink *)self localOuterEndpoint];
  remoteOuterEndpoint = [(NRLink *)self remoteOuterEndpoint];
  v7 = [v3 initWithFormat:@"%@, %@ -> %@", copyDescriptionInner, localOuterEndpoint, remoteOuterEndpoint];

  return v7;
}

- (void)invalidateLink
{
  v8.receiver = self;
  v8.super_class = NRLinkFixedInterface;
  [(NRLink *)&v8 invalidateLink];
  if (!self)
  {
    [0 invalidateVirtualInterface];
    companionProxyAgent = MEMORY[0x58];
    if (!MEMORY[0x58])
    {
      return;
    }

    goto LABEL_7;
  }

  [(NRLinkFixedInterface *)self invalidateIKESessionForClass:4];
  v3 = *(&self->_listenerPort + 7);
  if (v3)
  {
    [v3 cancel];
    v4 = *(&self->_listenerPort + 7);
    *(&self->_listenerPort + 7) = 0;
  }

  [(NRLink *)self invalidateVirtualInterface];
  if (*(&self->_listenerPortString + 7))
  {
    nw_path_evaluator_cancel();
    v5 = *(&self->_listenerPortString + 7);
    *(&self->_listenerPortString + 7) = 0;
  }

  companionProxyAgent = self->super._companionProxyAgent;
  if (companionProxyAgent)
  {
LABEL_7:
    sub_100070270(companionProxyAgent);
    [(NRLink *)self reportEvent:12003];
    v7 = self->super._companionProxyAgent;
    self->super._companionProxyAgent = 0;
  }
}

- (id)copyStatusString
{
  v3 = [NSMutableString alloc];
  v4 = [(NRLink *)self description];
  v5 = [v3 initWithString:v4];

  [v5 appendFormat:@"\n %35s = %@", "nrUUID", self->super._nrUUID];
  [v5 appendFormat:@"\n %35s = %@", "localInterfaceName", self->super._localInterfaceName];
  [v5 appendFormat:@"\n %35s = %@", "listenerPortString", *(&self->_ikeSessionClassD + 7)];
  [v5 appendFormat:@"\n %35s = %@", "ikeSessionClassD", *(&self->_ikeListener + 7)];
  if (self->super._virtualInterface)
  {
    v6 = NEVirtualInterfaceCopyName();
    [v5 appendFormat:@"\n %35s = %@", "virtualInterfaceName", v6];
  }

  return v5;
}

@end