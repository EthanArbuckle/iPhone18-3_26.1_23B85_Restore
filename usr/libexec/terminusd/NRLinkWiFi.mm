@interface NRLinkWiFi
- (BOOL)cancelWithReason:(id)reason;
- (BOOL)initializeExternalDeviceLink;
- (BOOL)resume;
- (BOOL)sendControlData:(id)data;
- (BOOL)start;
- (BOOL)suspend;
- (id)copyDescriptionInner;
- (id)copyStatusString;
- (id)initLinkWithQueue:(id)queue linkDelegate:(id)delegate nrUUID:(id)d wifiInterfaceName:(id)name localOuterEndpoint:(id)endpoint remoteOuterEndpoint:(id)outerEndpoint listenerPortString:(id)string;
- (void)checkPeerAvailabilityWithForceAggressive:(BOOL)aggressive;
- (void)didStartTrackingNOI:(id)i;
- (void)didStopTrackingAllNOIs:(id)is;
- (void)invalidateLink;
- (void)refreshCompanionProxyAgent;
- (void)requestConfigurationForListener:(id)listener session:(id)session sessionConfig:(id)config childConfig:(id)childConfig validateAuthBlock:(id)block responseBlock:(id)responseBlock;
- (void)setIsPrimary:(BOOL)primary;
@end

@implementation NRLinkWiFi

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
    v22.super_class = NRLinkWiFi;
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
            v19 = 1372;
            copyDescription2 = [(NRLink *)self copyDescription];
            v17 = "";
            v18 = "[NRLinkWiFi resume]";
            _NRLogWithArgs();
          }
        }
      }

      [(NRLink *)self changeStateTo:8 details:@"(resume)", v17, v18, v19, copyDescription2];
      [(NRLink *)self setInterfaceRank];
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
  v20.super_class = NRLinkWiFi;
  [(NRLink *)&v20 suspend];
  if (self->super._state != 255)
  {
    [(NRLink *)self changeStateTo:9 details:@"(suspend)"];
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
          v17 = 1345;
          copyDescription = [(NRLink *)self copyDescription];
          v15 = "";
          v16 = "[NRLinkWiFi suspend]";
          _NRLogWithArgs();
        }
      }
    }

    [(NRLink *)self setInterfaceRank:v15];
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
      v17[2] = sub_10004005C;
      v17[3] = &unk_1001FC018;
      objc_copyWeak(&v18, &location);
      [v7 sendPrivateNotifies:v8 maxRetries:10 retryIntervalInMilliseconds:1000 callbackQueue:queue callback:v17];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    else
    {
      v14 = sub_100040008();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v16 = sub_100040008();
        _NRLogWithArgs();
      }
    }
  }

  else
  {
    v11 = sub_100040008();
    v12 = _NRLogIsLevelEnabled();

    if (v12)
    {
      v13 = sub_100040008();
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
  sessionCopy2 = session;
  configCopy = config;
  childConfigCopy = childConfig;
  blockCopy = block;
  responseBlockCopy = responseBlock;
  v20 = responseBlockCopy;
  if (!listenerCopy)
  {
    v54 = sub_100040008();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_58;
    }

LABEL_50:
    v64 = sub_100040008();
    _NRLogWithArgs();

    goto LABEL_58;
  }

  if (!sessionCopy2)
  {
    v56 = sub_100040008();
    v57 = _NRLogIsLevelEnabled();

    if (!v57)
    {
      goto LABEL_58;
    }

    goto LABEL_50;
  }

  if (!configCopy)
  {
    v58 = sub_100040008();
    v59 = _NRLogIsLevelEnabled();

    if (!v59)
    {
      goto LABEL_58;
    }

    goto LABEL_50;
  }

  if (!blockCopy)
  {
    v60 = sub_100040008();
    v61 = _NRLogIsLevelEnabled();

    if (!v61)
    {
      goto LABEL_58;
    }

    goto LABEL_50;
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

    remoteEndpoint = [sessionCopy2 remoteEndpoint];
    [(NRLink *)self setRemoteOuterEndpoint:remoteEndpoint];

    state = self->super._state;
    v77 = configCopy;
    if (state == 255)
    {
      goto LABEL_55;
    }

    localIdentifier = [configCopy localIdentifier];
    v76 = childConfigCopy;
    if (qword_1002292F8 != -1)
    {
      dispatch_once(&qword_1002292F8, &stru_1001FC578);
    }

    v29 = qword_1002292F0;
    v30 = [localIdentifier isEqual:v29];

    if (!v30)
    {
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

      v31 = 0;
      v38 = 0;
      childConfigCopy = v76;
      goto LABEL_56;
    }

    childConfigCopy = v76;
    if (v76)
    {
      v31 = sub_100146D34(1, 0);
      [v31 setMode:2];
      [v31 setReplayWindowSize:4];
    }

    else
    {
      if ([(NRLink *)self hasCompanionDatapath])
      {
LABEL_54:
        [(NRLink *)self reportEvent:3024 detailsFormat:@"ClassC %@", sessionCopy2];
LABEL_55:
        v31 = 0;
        v38 = 0;
        goto LABEL_56;
      }

      v31 = 0;
    }

    v39 = *(&self->_symptomsNOIManager + 7);
    if (v39)
    {
      ++v39[9];
    }

    v40 = nr_absolute_time();
    v41 = *(&self->_symptomsNOIManager + 7);
    if (v41)
    {
      *(v41 + 40) = v40;
    }

    childConfigCopy = [(NRLink *)self nrUUID];
    v42 = sub_100163A30(NRDLocalDevice, childConfigCopy);

    if (v42)
    {
      v38 = sub_100147400(0, v42, 3);
      v43 = objc_alloc_init(NSMutableArray);
      v74 = listenerCopy;
      if (sub_100147B98(v42))
      {
        v44 = v42[18];
        hasCompanionDatapath = [v44 hasCompanionDatapath];

        if (hasCompanionDatapath)
        {
          localOuterEndpoint = 0;
        }

        else
        {
          localOuterEndpoint = [(NRLink *)self localOuterEndpoint];
        }

        v47 = sub_100147C1C(v42, localOuterEndpoint);
        if (v47)
        {
          [v43 addObject:v47];
        }

        listenerCopy = v74;
      }

      v48 = sub_1000409E8(self);
      if (v48)
      {
        [v43 addObject:v48];
      }

      if ([v43 count])
      {
        [v38 setCustomIKEAuthPrivateNotifies:v43];
      }

      if (blockCopy[2](blockCopy, v38))
      {
        v78.receiver = self;
        v78.super_class = NRLinkWiFi;
        [(NRLink *)&v78 invalidateIKESessionForClass:3];
        [(NRLink *)self setIkeClassDEstablished:0];
        self->super._peerAvailabilityCheckInProgress = 0;
        [(NRLink *)self invalidateIKESession:&self->_ikeListener + 7];
        objc_storeStrong((&self->_ikeListener + 7), sessionCopy);
        sub_100040BCC(self);
        [(NRLink *)self reportEvent:3016 detailsFormat:@"ClassC %@", sessionCopy2];

        if ([(NRLink *)self setupVirtualInterface])
        {
          (v20)[2](v20, v38, v31, [(NRLink *)self virtualInterface]);
          listenerCopy = v74;
          childConfigCopy = v76;
LABEL_57:

          configCopy = v77;
          goto LABEL_58;
        }

        v49 = self->super._nrUUID;
        v50 = _NRCopyLogObjectForNRUUID();
        v51 = _NRLogIsLevelEnabled();

        listenerCopy = v74;
        childConfigCopy = v76;
        if (v51)
        {
          v52 = self->super._nrUUID;
          v53 = _NRCopyLogObjectForNRUUID();
          copyDescription3 = [(NRLink *)self copyDescription];
          _NRLogWithArgs();
        }
      }

      else
      {
        [(NRLink *)self reportEvent:3021 detailsFormat:@"ClassC %@", sessionCopy2];

        childConfigCopy = v76;
      }

LABEL_56:
      v20[2](v20, 0, 0, 0);
      goto LABEL_57;
    }

    v65 = sub_100040008();
    v66 = _NRLogIsLevelEnabled();

    if (v66)
    {
      v67 = sub_100040008();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    sessionCopy2 = &v73 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v68 = *__error();
    v69 = _os_log_pack_fill();
    *v69 = 136446210;
    *(v69 + 4) = "[NRLinkWiFi requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]";
    sub_100040008();
    _NRLogAbortWithPack();
    goto LABEL_54;
  }

  v62 = sub_100040008();
  v63 = _NRLogIsLevelEnabled();

  if (v63)
  {
    goto LABEL_50;
  }

LABEL_58:
}

- (void)checkPeerAvailabilityWithForceAggressive:(BOOL)aggressive
{
  aggressiveCopy = aggressive;
  peerAvailabilityCheckInProgress = [(NRLink *)self peerAvailabilityCheckInProgress];
  nrUUID = self->super._nrUUID;
  v7 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (peerAvailabilityCheckInProgress)
  {
    if (IsLevelEnabled)
    {
      v9 = self->super._nrUUID;
      v19 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs();
    }
  }

  else
  {
    if (IsLevelEnabled)
    {
      v10 = self->super._nrUUID;
      v11 = _NRCopyLogObjectForNRUUID();
      copyDescription2 = [(NRLink *)self copyDescription];
      _NRLogWithArgs();
    }

    self->super._peerAvailabilityCheckInProgress = 1;
    objc_initWeak(&location, self);
    v12 = *(&self->_ikeListener + 7);
    queue = [(NRLink *)self queue];
    v14 = !aggressiveCopy;
    if (aggressiveCopy)
    {
      v15 = 1000;
    }

    else
    {
      v15 = 3000;
    }

    if (v14)
    {
      v16 = 3;
    }

    else
    {
      v16 = 5;
    }

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100043BC8;
    v20[3] = &unk_1001FC018;
    objc_copyWeak(&v21, &location);
    [v12 sendKeepaliveWithRetries:v16 retryIntervalInMilliseconds:v15 callbackQueue:queue callback:v20];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

- (void)didStopTrackingAllNOIs:(id)is
{
  if ([(NRLink *)self state]!= 255)
  {
    nrUUID = self->super._nrUUID;
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = self->super._nrUUID;
      v8 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs();
    }

    sub_100043E38(self);

    sub_100043264(self);
  }
}

- (void)didStartTrackingNOI:(id)i
{
  nrUUID = self->super._nrUUID;
  v5 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v7 = self->super._nrUUID;
    v8 = _NRCopyLogObjectForNRUUID();
    v35 = 711;
    copyDescription = [(NRLink *)self copyDescription];
    v31 = "";
    v33 = "[NRLinkWiFi didStartTrackingNOI:]";
    _NRLogWithArgs();
  }

  v9 = nr_absolute_time();
  v10 = *(&self->_symptomsNOIManager + 7);
  if (v10)
  {
    *(v10 + 120) = v9;
  }

  if (*(&self->_symptomsAdvisoryCounter + 3) == -1)
  {
    if (!&_symptom_new)
    {
      v12 = self->super._nrUUID;
      v13 = _NRCopyLogObjectForNRUUID();
      v14 = _NRLogIsLevelEnabled();

      if (v14)
      {
        v15 = self->super._nrUUID;
        v39 = _NRCopyLogObjectForNRUUID();
        copyDescription2 = [(NRLink *)self copyDescription];
        _NRLogWithArgs();
      }

      return;
    }

    if (qword_100229278 != -1)
    {
      dispatch_once(&qword_100229278, &stru_1001FC410);
    }

    if (!symptom_new())
    {
      if (qword_100228F90 != -1)
      {
        dispatch_once(&qword_100228F90, &stru_1001FAA30);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F90 != -1)
        {
          dispatch_once(&qword_100228F90, &stru_1001FAA30);
        }

        _NRLogWithArgs();
      }

      return;
    }

    if ([(NRLink *)self hasCompanionDatapath])
    {
      [(NRLink *)self virtualInterface];
      localInterfaceName = NEVirtualInterfaceCopyName();
    }

    else
    {
      localInterfaceName = [(NRLink *)self localInterfaceName];
    }

    v16 = localInterfaceName;
    [localInterfaceName length];
    [v16 UTF8String];
    symptom_set_additional_qualifier();
    if (symptom_send())
    {
      v17 = self->super._nrUUID;
      v18 = _NRCopyLogObjectForNRUUID();
      v19 = _NRLogIsLevelEnabled();

      if (v19)
      {
        v20 = self->super._nrUUID;
        v21 = _NRCopyLogObjectForNRUUID();
        copyDescription3 = [(NRLink *)self copyDescription];
        _NRLogWithArgs();
      }

      goto LABEL_41;
    }

    objc_initWeak(&location, self);
    queue = [(NRLink *)self queue];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000446AC;
    handler[3] = &unk_1001FD278;
    objc_copyWeak(&v41, &location);
    v23 = notify_register_dispatch("com.apple.symptoms.liveLinkHasAdvice", (&self->_symptomsAdvisoryCounter + 3), queue, handler);

    if (v23 || *(&self->_symptomsAdvisoryCounter + 3) == -1)
    {
      if (qword_100228F90 != -1)
      {
        dispatch_once(&qword_100228F90, &stru_1001FAA30);
      }

      v24 = qword_100228F88;
      v25 = _NRLogIsLevelEnabled();

      if ((v25 & 1) == 0)
      {
        goto LABEL_40;
      }

      if (qword_100228F90 != -1)
      {
        dispatch_once(&qword_100228F90, &stru_1001FAA30);
      }

      v26 = qword_100228F88;
      v34 = *(&self->_symptomsAdvisoryCounter + 3);
      _NRLogWithArgs();
    }

    else
    {
      v27 = self->super._nrUUID;
      v28 = _NRCopyLogObjectForNRUUID();
      v29 = _NRLogIsLevelEnabled();

      if (!v29)
      {
LABEL_40:
        objc_destroyWeak(&v41);
        objc_destroyWeak(&location);
LABEL_41:

        return;
      }

      v30 = self->super._nrUUID;
      v26 = _NRCopyLogObjectForNRUUID();
      copyDescription4 = [(NRLink *)self copyDescription];
      _NRLogWithArgs();
    }

    goto LABEL_40;
  }
}

- (BOOL)cancelWithReason:(id)reason
{
  reasonCopy = reason;
  if (reasonCopy)
  {
    v50 = &v52;
    v5 = [[NSString alloc] initWithFormat:reasonCopy arguments:&v52];
    v6 = [(NRLink *)self changeStateTo:255 details:v5];
    nrUUID = self->super._nrUUID;
    v8 = _NRCopyLogObjectForNRUUID();
    if (v6)
    {
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v10 = self->super._nrUUID;
        v11 = _NRCopyLogObjectForNRUUID();
        copyDescription = [(NRLink *)self copyDescription];
        v42 = v5;
        v38 = 393;
        v34 = "";
        v36 = "[NRLinkWiFi cancelWithReason:]";
        _NRLogWithArgs();
      }

      v45 = v5;
      v44 = [(NRLinkWiFi *)self copyStatusString:v34];
      copyDescription3 = [v44 componentsSeparatedByString:@"\n"];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v13 = [copyDescription3 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v47;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v47 != v15)
            {
              objc_enumerationMutation(copyDescription3);
            }

            v17 = *(*(&v46 + 1) + 8 * i);
            v18 = self->super._nrUUID;
            v19 = _NRCopyLogObjectForNRUUID();
            v20 = _NRLogIsLevelEnabled();

            if (v20)
            {
              v21 = self->super._nrUUID;
              v22 = _NRCopyLogObjectForNRUUID();
              copyDescription2 = [(NRLink *)self copyDescription];
              v43 = v17;
              v39 = 397;
              v35 = "";
              v37 = "[NRLinkWiFi cancelWithReason:]";
              _NRLogWithArgs();
            }
          }

          v14 = [copyDescription3 countByEnumeratingWithState:&v46 objects:v51 count:16];
        }

        while (v14);
      }

      v26 = [(NRLink *)self linkDelegate:v35];
      [v26 linkIsUnavailable:self];

      [(NRLinkWiFi *)self invalidateLink];
      v27 = *(&self->_symptomsNOIManager + 7);
      if (v27)
      {
        *(v27 + 136) = *(&self->_ikeRetryCounter + 3);
      }

      [(NRLink *)self linkTotalReadyTimeInSec];
      v29 = *(&self->_symptomsNOIManager + 7);
      v5 = v45;
      if (v29)
      {
        *(v29 + 24) = v28;
        v30 = *(&self->_symptomsNOIManager + 7);
      }

      else
      {
        v30 = 0;
      }

      v25 = v44;
      [v30 submit];
      goto LABEL_21;
    }

    v23 = _NRLogIsLevelEnabled();

    if (v23)
    {
      v24 = self->super._nrUUID;
      v25 = _NRCopyLogObjectForNRUUID();
      copyDescription3 = [(NRLink *)self copyDescription];
      _NRLogWithArgs();
LABEL_21:
    }
  }

  else
  {
    v32 = sub_100040008();
    v33 = _NRLogIsLevelEnabled();

    if (!v33)
    {
      goto LABEL_23;
    }

    v5 = sub_100040008();
    _NRLogWithArgs();
  }

LABEL_23:
  return reasonCopy != 0;
}

- (BOOL)initializeExternalDeviceLink
{
  v7.receiver = self;
  v7.super_class = NRLinkWiFi;
  initializeExternalDeviceLink = [(NRLink *)&v7 initializeExternalDeviceLink];
  if (initializeExternalDeviceLink)
  {
    v4 = initializeExternalDeviceLink;
    [(NRLink *)self changeStateTo:8];
    linkDelegate = [(NRLink *)self linkDelegate];
    [linkDelegate linkIsReady:self];

    LOBYTE(initializeExternalDeviceLink) = v4;
  }

  return initializeExternalDeviceLink;
}

- (BOOL)start
{
  queue = [(NRLink *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(NRLink *)self state]== 255)
  {
    nrUUID = self->super._nrUUID;
    v7 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if ([(NRLink *)self state]== 8)
  {
    linkDelegate = [(NRLink *)self linkDelegate];
    [linkDelegate linkIsReady:self];

    return 1;
  }

  if ([(NRLink *)self state]!= 9)
  {
    if ([(NRLink *)self startRequested])
    {
      return 1;
    }

    [(NRLink *)self updateIKEv2Role:&self->_isResponder];
    if (!self)
    {
      return 0;
    }

    if (!self->_isResponder)
    {
      remoteOuterEndpoint = [(NRLink *)self remoteOuterEndpoint];

      if (!remoteOuterEndpoint)
      {
        return 0;
      }

      v13 = sub_100163A30(NRDLocalDevice, self->super._nrUUID);
      v10 = v13;
      if (v13 && (*(v13 + 49) & 0x20) != 0 || [(NRLink *)self ikev2Role])
      {
      }

      else
      {
        peerToken = [(NRLink *)self peerToken];
        if (!peerToken)
        {
          goto LABEL_6;
        }

        v30 = peerToken;
        localToken = [(NRLink *)self localToken];

        if (!localToken)
        {
          return 0;
        }
      }
    }

    [(NRLink *)self setStartRequested:1];
    localInterfaceName = [(NRLink *)self localInterfaceName];

    if (localInterfaceName)
    {
      if ([(NRLink *)self state]== 1)
      {
        v15 = sub_100163A30(NRDLocalDevice, self->super._nrUUID);
        v16 = v15;
        if (v15)
        {
          v17 = *(v15 + 48);
          if ((v17 & 8) != 0)
          {
            v22 = *(&self->_symptomsNOIManager + 7);
            if (v22)
            {
              *(v22 + 16) = 1;
            }

            if (![(NRLinkWiFi *)self initializeExternalDeviceLink])
            {
              v23 = self->super._nrUUID;
              v24 = _NRCopyLogObjectForNRUUID();
              v25 = _NRLogIsLevelEnabled();

              if (v25)
              {
                v26 = self->super._nrUUID;
                v27 = _NRCopyLogObjectForNRUUID();
                copyDescription = [(NRLink *)self copyDescription];
                _NRLogWithArgs();
              }

              v28 = 0;
              goto LABEL_38;
            }

LABEL_35:
            if ([(NRLink *)self subtype]== 102)
            {
              sub_100045628(self);
            }

            v28 = 1;
LABEL_38:

            return v28;
          }

          if ((v17 & 0x2000) != 0)
          {
            sub_10004530C(self);
            goto LABEL_35;
          }
        }

        sub_100045068(self);
        goto LABEL_35;
      }

      v18 = self->super._nrUUID;
      v19 = _NRCopyLogObjectForNRUUID();
      v20 = _NRLogIsLevelEnabled();

      if (v20)
      {
        v21 = self->super._nrUUID;
        v10 = _NRCopyLogObjectForNRUUID();
        copyDescription2 = [(NRLink *)self copyDescription];
        v37 = sub_1001415A0([(NRLink *)self state]);
        _NRLogWithArgs();

        goto LABEL_6;
      }

      return 0;
    }

    v32 = self->super._nrUUID;
    v33 = _NRCopyLogObjectForNRUUID();
    v34 = _NRLogIsLevelEnabled();

    if (!v34)
    {
      return 0;
    }

LABEL_5:
    v9 = self->super._nrUUID;
    v10 = _NRCopyLogObjectForNRUUID();
    copyDescription3 = [(NRLink *)self copyDescription];
    _NRLogWithArgs();

LABEL_6:
    return 0;
  }

  return [(NRLinkWiFi *)self resume];
}

- (id)copyDescriptionInner
{
  v3 = [NSString alloc];
  v9.receiver = self;
  v9.super_class = NRLinkWiFi;
  copyDescriptionInner = [(NRLink *)&v9 copyDescriptionInner];
  localOuterEndpoint = [(NRLink *)self localOuterEndpoint];
  remoteOuterEndpoint = [(NRLink *)self remoteOuterEndpoint];
  v7 = [v3 initWithFormat:@"%@, %@ -> %@", copyDescriptionInner, localOuterEndpoint, remoteOuterEndpoint];

  return v7;
}

- (void)refreshCompanionProxyAgent
{
  if (self->super._state == 255)
  {
    nrUUID = self->super._nrUUID;
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = self->super._nrUUID;
      v9 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs();
    }
  }

  else
  {
    companionProxyAgent = self->super._companionProxyAgent;

    sub_100071A14(companionProxyAgent);
  }
}

- (void)invalidateLink
{
  v24.receiver = self;
  v24.super_class = NRLinkWiFi;
  [(NRLink *)&v24 invalidateLink];
  if (self)
  {
    v25.receiver = self;
    v25.super_class = NRLinkWiFi;
    [(NRLink *)&v25 invalidateIKESessionForClass:3];
    [(NRLink *)self setIkeClassDEstablished:0];
    self->super._peerAvailabilityCheckInProgress = 0;
    [(NRLink *)self invalidateIKESession:&self->_ikeListener + 7];
    v3 = *(&self->_listenerPortString + 7);
    if (v3)
    {
      [v3 cancel];
      v4 = *(&self->_listenerPortString + 7);
      *(&self->_listenerPortString + 7) = 0;
    }

    v5 = *(&self->_randomUUIDForWiFiAssertion + 7);
    if (v5)
    {
      nw_browser_cancel(v5);
      v6 = *(&self->_randomUUIDForWiFiAssertion + 7);
      *(&self->_randomUUIDForWiFiAssertion + 7) = 0;

      nrUUID = self->super._nrUUID;
      v8 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v10 = self->super._nrUUID;
        v11 = _NRCopyLogObjectForNRUUID();
        v22 = 495;
        copyDescription = [(NRLink *)self copyDescription];
        v20 = "";
        v21 = "[NRLinkWiFi stopAWDLBrowser]";
        _NRLogWithArgs();
      }
    }

    sub_100043E38(self);
    v12 = *(&self->_ikeSessionClassC + 7);
    if (v12)
    {
      [v12 setDelegate:0];
      [*(&self->_ikeSessionClassC + 7) destroy];
      v13 = *(&self->_ikeSessionClassC + 7);
      *(&self->_ikeSessionClassC + 7) = 0;
    }
  }

  else
  {
    sub_100043E38(0);
  }

  if ([(NRLink *)self virtualInterface:v20])
  {
    [(NRLink *)self virtualInterface];
    NEVirtualInterfaceSetRankNever();
    [(NRLink *)self virtualInterface];
    NEVirtualInterfaceUpdateAdHocService();
  }

  [(NRLink *)self invalidateVirtualInterface];
  companionProxyAgent = self->super._companionProxyAgent;
  if (companionProxyAgent)
  {
    sub_100070270(companionProxyAgent);
    [(NRLink *)self reportEvent:12003];
    v15 = self->super._companionProxyAgent;
    self->super._companionProxyAgent = 0;
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v16 = qword_1002290B8;
  v17 = v16;
  if (v16)
  {
    v18 = *(v16 + 6);
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  sub_10017EDB4(v19, 0, *(&self->_linkAnalytics + 7));

  *(&self->_ikeRetryCounter + 3) = 0;
  *(&self->_ikeRetryBackoffScheduled + 2) = 0;
  *(&self->_startRetryCounter + 3) = 0;
}

- (void)setIsPrimary:(BOOL)primary
{
  primaryCopy = primary;
  v21.receiver = self;
  v21.super_class = NRLinkWiFi;
  [(NRLink *)&v21 setIsPrimary:?];
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v5 = qword_1002290B8;
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = v8;
  if (primaryCopy)
  {
    if (self)
    {
      v10 = *(&self->_linkAnalytics + 7);
    }

    else
    {
      v10 = 0;
    }

    sub_10017F43C(v8, 32, v10, &off_10020A048);

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v11 = qword_1002290B8;
    v12 = v11;
    if (v11)
    {
      v13 = *(v11 + 6);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = v14;
    if (self)
    {
      v16 = *(&self->_linkAnalytics + 7);
    }

    else
    {
      v16 = 0;
    }

    v17 = 1;
  }

  else
  {
    if (self)
    {
      v18 = *(&self->_linkAnalytics + 7);
    }

    else
    {
      v18 = 0;
    }

    sub_10017F364(v8, v18);

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v19 = qword_1002290B8;
    v12 = v19;
    if (v19)
    {
      v20 = *(v19 + 6);
    }

    else
    {
      v20 = 0;
    }

    v14 = v20;
    v15 = v14;
    if (self)
    {
      v16 = *(&self->_linkAnalytics + 7);
    }

    else
    {
      v16 = 0;
    }

    v17 = 0;
  }

  sub_10017EDB4(v14, v17, v16);
}

- (id)initLinkWithQueue:(id)queue linkDelegate:(id)delegate nrUUID:(id)d wifiInterfaceName:(id)name localOuterEndpoint:(id)endpoint remoteOuterEndpoint:(id)outerEndpoint listenerPortString:(id)string
{
  queueCopy = queue;
  delegateCopy = delegate;
  dCopy = d;
  nameCopy = name;
  endpointCopy = endpoint;
  outerEndpointCopy = outerEndpoint;
  stringCopy = string;
  if (!queueCopy)
  {
    v32 = sub_100040008();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_21;
    }

    goto LABEL_25;
  }

  if (!delegateCopy)
  {
    v34 = sub_100040008();
    v35 = _NRLogIsLevelEnabled();

    if (v35)
    {
      goto LABEL_21;
    }

    goto LABEL_25;
  }

  if (!dCopy)
  {
    v36 = sub_100040008();
    v37 = _NRLogIsLevelEnabled();

    if (v37)
    {
      goto LABEL_21;
    }

    goto LABEL_25;
  }

  if ((_NRIsUUIDNonZero() & 1) == 0)
  {
    v38 = sub_100040008();
    v39 = _NRLogIsLevelEnabled();

    if (v39)
    {
      goto LABEL_21;
    }

    goto LABEL_25;
  }

  if (!nameCopy)
  {
    v40 = sub_100040008();
    v41 = _NRLogIsLevelEnabled();

    if (v41)
    {
      goto LABEL_21;
    }

    goto LABEL_25;
  }

  if (!endpointCopy)
  {
    v42 = sub_100040008();
    v43 = _NRLogIsLevelEnabled();

    if (v43)
    {
LABEL_21:
      v44 = sub_100040008();
      _NRLogWithArgs();

      selfCopy = 0;
      goto LABEL_9;
    }

LABEL_25:
    selfCopy = 0;
    goto LABEL_9;
  }

  v48.receiver = self;
  v48.super_class = NRLinkWiFi;
  v22 = [(NRLink *)&v48 initLinkWithQueue:queueCopy linkDelegate:delegateCopy nrUUID:dCopy];
  if (!v22)
  {
    v45 = sub_100040008();
    v46 = _NRLogIsLevelEnabled();

    if (v46)
    {
      v47 = sub_100040008();
      _NRLogWithArgs();
    }

    self = 0;
    goto LABEL_25;
  }

  v23 = v22;
  [v22 setType:2];
  [v23 setSubtype:101];
  [v23 setLocalInterfaceName:nameCopy];
  [v23 setLocalOuterEndpoint:endpointCopy];
  [v23 setRemoteOuterEndpoint:outerEndpointCopy];
  objc_storeStrong((v23 + 279), string);
  *(v23 + 271) = -1;
  v24 = objc_alloc_init(NRAnalyticsCmpnLinkWiFi);
  v25 = *(v23 + 311);
  *(v23 + 311) = v24;

  v26 = +[NSUUID UUID];
  v27 = *(v23 + 319);
  *(v23 + 319) = v26;

  uUIDString = [dCopy UUIDString];
  [v23 reportEvent:3000 details:uUIDString];

  linkDelegate = [v23 linkDelegate];
  [linkDelegate linkIsAvailable:v23];

  self = v23;
  selfCopy = self;
LABEL_9:

  return selfCopy;
}

- (id)copyStatusString
{
  v3 = [NSMutableString alloc];
  v4 = [(NRLink *)self description];
  v5 = [v3 initWithString:v4];

  [v5 appendFormat:@"\n %35s = %@", "nrUUID", self->super._nrUUID];
  localInterfaceName = [(NRLink *)self localInterfaceName];
  [v5 appendFormat:@"\n %35s = %@", "localInterfaceName", localInterfaceName];

  [v5 appendFormat:@"\n %35s = %@", "listenerPortString", *(&self->_notifyToken + 7)];
  [v5 appendFormat:@"\n %35s = %@", "ikeSessionClassC", *(&self->_ikeListener + 7)];
  if (self->super._virtualInterface)
  {
    v7 = NEVirtualInterfaceCopyName();
    [v5 appendFormat:@"\n %35s = %@", "virtualInterfaceName", v7];
  }

  v8 = *(&self->_symptomsNOIManager + 7);
  if (v8)
  {
    v8 = *(v8 + 128);
  }

  [v5 appendFormat:@"\n %35s = %llu", "symptomsAdvisoryFalsePositives", v8];
  return v5;
}

@end