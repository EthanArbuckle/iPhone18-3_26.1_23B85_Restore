@interface NRLinkBluetooth
- (BOOL)cancelWithReason:(id)reason;
- (BOOL)initializeExternalDeviceLink;
- (BOOL)resume;
- (BOOL)sendControlData:(id)data;
- (BOOL)sendPacketData:(id)data;
- (BOOL)start;
- (BOOL)suspend;
- (id)copyDescriptionInner;
- (id)copyShortDescriptionInner;
- (id)copyStatusString;
- (void)acceptNewFlow:(id)flow fromNexus:(id)nexus completionHandler:(id)handler;
- (void)invalidateIKESessionForClass:(unsigned __int8)class;
- (void)invalidateLink;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)refreshCompanionProxyAgent;
- (void)requestConfigurationForListener:(id)listener session:(id)session sessionConfig:(id)config childConfig:(id)childConfig validateAuthBlock:(id)block responseBlock:(id)responseBlock;
- (void)setPacketReceiver:(id)receiver;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation NRLinkBluetooth

- (void)setPacketReceiver:(id)receiver
{
  receiverCopy = receiver;
  if (receiverCopy)
  {
    nrUUID = self->super._nrUUID;
    v7 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = self->super._nrUUID;
      v10 = _NRCopyLogObjectForNRUUID();
      v26 = 10345;
      copyDescription = [(NRLink *)self copyDescription];
      v24 = "";
      v25 = "[NRLinkBluetooth setPacketReceiver:]";
      _NRLogWithArgs();
    }

    objc_storeStrong((&self->_ikeSessionPairing + 7), receiver);
    if ([*(&self->_urgentLinkWriteBuffer + 7) count])
    {
      v11 = self->super._nrUUID;
      v12 = _NRCopyLogObjectForNRUUID();
      v13 = _NRLogIsLevelEnabled();

      if (v13)
      {
        v14 = self->super._nrUUID;
        v15 = _NRCopyLogObjectForNRUUID();
        copyDescription = [(NRLink *)self copyDescription];
        v28 = [*(&self->_urgentLinkWriteBuffer + 7) count];
        v26 = 10349;
        v24 = "";
        v25 = "[NRLinkBluetooth setPacketReceiver:]";
        _NRLogWithArgs();
      }
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = *(&self->_urgentLinkWriteBuffer + 7);
    v17 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v30;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(&self->_ikeSessionPairing + 7) receivePacketData:{*(*(&v29 + 1) + 8 * i), v24, v25, v26, copyDescription, v28}];
        }

        v18 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v18);
    }

    [*(&self->_urgentLinkWriteBuffer + 7) removeAllObjects];
  }

  else
  {
    v21 = sub_10007CF34();
    v22 = _NRLogIsLevelEnabled();

    if (v22)
    {
      v23 = sub_10007CF34();
      _NRLogWithArgs();
    }
  }
}

- (BOOL)sendPacketData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    v12 = sub_10007CF34();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v14 = sub_10007CF34();
      _NRLogWithArgs();
    }

    goto LABEL_6;
  }

  if (self->super._state == 255)
  {
    nrUUID = self->super._nrUUID;
    v7 = _NRCopyLogObjectForNRUUID();
    v8 = _NRLogIsLevelEnabled();

    if (v8)
    {
      v9 = self->super._nrUUID;
      v10 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs();
    }

LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  v5 = sub_10007D0EC(self, dataCopy);
LABEL_7:

  return v5;
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
    v132 = sub_10007CF34();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_37;
    }

LABEL_126:
    v142 = sub_10007CF34();
    _NRLogWithArgs();

    goto LABEL_37;
  }

  if (!sessionCopy)
  {
    v134 = sub_10007CF34();
    v135 = _NRLogIsLevelEnabled();

    if (!v135)
    {
      goto LABEL_37;
    }

    goto LABEL_126;
  }

  if (!configCopy)
  {
    v136 = sub_10007CF34();
    v137 = _NRLogIsLevelEnabled();

    if (!v137)
    {
      goto LABEL_37;
    }

    goto LABEL_126;
  }

  if (!blockCopy)
  {
    v138 = sub_10007CF34();
    v139 = _NRLogIsLevelEnabled();

    if (!v139)
    {
      goto LABEL_37;
    }

    goto LABEL_126;
  }

  if (!responseBlockCopy)
  {
    v140 = sub_10007CF34();
    v141 = _NRLogIsLevelEnabled();

    if (!v141)
    {
      goto LABEL_37;
    }

    goto LABEL_126;
  }

  nrUUID = self->super._nrUUID;
  v22 = _NRCopyLogObjectForNRUUID();
  v23 = _NRLogIsLevelEnabled();

  if (v23)
  {
    v24 = self->super._nrUUID;
    v25 = _NRCopyLogObjectForNRUUID();
    v160 = configCopy;
    v161 = childConfigCopy;
    v153 = 10076;
    copyDescription = [(NRLink *)self copyDescription];
    v156 = listenerCopy;
    v158 = sessionCopy;
    v150 = "";
    v152 = "[NRLinkBluetooth requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]";
    _NRLogWithArgs();
  }

  if (self->super._state == 255)
  {
    goto LABEL_34;
  }

  localIdentifier = [configCopy localIdentifier];
  identifierType = [localIdentifier identifierType];

  if (identifierType != 11)
  {
    v46 = self->super._nrUUID;
    v47 = _NRCopyLogObjectForNRUUID();
    v48 = _NRLogIsLevelEnabled();

    if (v48)
    {
      v49 = self->super._nrUUID;
      v43 = _NRCopyLogObjectForNRUUID();
      copyDescription2 = [(NRLink *)self copyDescription];
      localIdentifier2 = [configCopy localIdentifier];
      [localIdentifier2 identifierType];
LABEL_31:
      _NRLogWithArgs();

      goto LABEL_32;
    }

LABEL_34:
    v56 = 0;
    goto LABEL_35;
  }

  remoteIdentifier = [configCopy remoteIdentifier];
  identifierType2 = [remoteIdentifier identifierType];

  if (identifierType2 != 11)
  {
    v52 = self->super._nrUUID;
    v53 = _NRCopyLogObjectForNRUUID();
    v54 = _NRLogIsLevelEnabled();

    if (v54)
    {
      v55 = self->super._nrUUID;
      v43 = _NRCopyLogObjectForNRUUID();
      copyDescription2 = [(NRLink *)self copyDescription];
      localIdentifier2 = [configCopy remoteIdentifier];
      [localIdentifier2 identifierType];
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  v167 = childConfigCopy;
  nrUUID = [(NRLink *)self nrUUID];
  v166 = sub_100163A30(NRDLocalDevice, nrUUID);

  localIdentifier3 = [configCopy localIdentifier];
  remoteIdentifier2 = [configCopy remoteIdentifier];
  v33 = [localIdentifier3 isEqual:remoteIdentifier2];

  v34 = &qword_100229000;
  v165 = blockCopy;
  v35 = &qword_100229000;
  if (v33)
  {
    goto LABEL_20;
  }

  localIdentifier4 = [configCopy localIdentifier];
  if (qword_1002292E8 != -1)
  {
    dispatch_once(&qword_1002292E8, &stru_1001FC558);
  }

  v37 = qword_1002292E0;
  if ([localIdentifier4 isEqual:v37])
  {
    goto LABEL_19;
  }

  [configCopy localIdentifier];
  v38 = v164 = localIdentifier4;
  if (qword_1002292F8 != -1)
  {
    dispatch_once(&qword_1002292F8, &stru_1001FC578);
  }

  v39 = qword_1002292F0;
  if ([v38 isEqual:v39])
  {

    localIdentifier4 = v164;
LABEL_19:

    v34 = &qword_100229000;
    goto LABEL_20;
  }

  [configCopy localIdentifier];
  v84 = v162 = listenerCopy;
  v85 = sub_100145B5C();
  v163 = [v84 isEqual:v85];

  v35 = &qword_100229000;
  listenerCopy = v162;

  v34 = &qword_100229000;
  if ((v163 & 1) == 0)
  {
    v86 = self->super._nrUUID;
    v87 = _NRCopyLogObjectForNRUUID();
    v88 = _NRLogIsLevelEnabled();

    if (v88)
    {
      v89 = self->super._nrUUID;
      v90 = _NRCopyLogObjectForNRUUID();
      copyDescription3 = [(NRLink *)self copyDescription];
      localIdentifier5 = [configCopy localIdentifier];
      remoteIdentifier3 = [configCopy remoteIdentifier];
      _NRLogWithArgs();
    }

    v56 = 0;
    childConfigCopy = v167;
    goto LABEL_115;
  }

LABEL_20:
  localIdentifier6 = [configCopy localIdentifier];
  if (v35[93] != -1)
  {
    dispatch_once(&qword_1002292E8, &stru_1001FC558);
  }

  v41 = v34[92];
  v42 = [localIdentifier6 isEqual:v41];

  childConfigCopy = v167;
  if (v42)
  {
    blockCopy = v165;
    v43 = v166;
    if (v166)
    {
      v44 = v166[18];
    }

    else
    {
      v44 = 0;
    }

    v45 = v44;
    if ([v45 usesTLS])
    {

LABEL_46:
      v62 = nr_absolute_time();
      v63 = *(&self->_counterForDataStallRemediation + 7);
      if (v63)
      {
        *(v63 + 56) = v62;
        v64 = *(&self->_counterForDataStallRemediation + 7);
        if (v64)
        {
          ++v64[10];
        }
      }

      else
      {
        v64 = 0;
      }

      selfCopy2 = self;
      v66 = sessionCopy;
      v67 = configCopy;
      v68 = 4;
      goto LABEL_50;
    }

    if (v167)
    {
      goto LABEL_46;
    }

    [(NRLink *)self reportEvent:3024 detailsFormat:@"ClassD %@", sessionCopy];
    goto LABEL_32;
  }

  localIdentifier7 = [configCopy localIdentifier];
  if (qword_1002292F8 != -1)
  {
    dispatch_once(&qword_1002292F8, &stru_1001FC578);
  }

  v58 = qword_1002292F0;
  v59 = [localIdentifier7 isEqual:v58];

  if (v59)
  {
    blockCopy = v165;
    v43 = v166;
    if (v166)
    {
      v60 = v166[18];
    }

    else
    {
      v60 = 0;
    }

    v61 = v60;
    if ([v61 usesTLS])
    {

LABEL_73:
      objc_opt_self();
      if (qword_1002294C8 != -1)
      {
        dispatch_once(&qword_1002294C8, &stru_1001FD250);
      }

      v93 = qword_1002294C0;
      v94 = v93;
      if (v93)
      {
        dispatch_assert_queue_V2(*(v93 + 2));
        if ((v94[10] & 1) == 0)
        {
          v94[10] = 1;
          if (v94[8] == 4)
          {
            sub_100181020(v94);
            if (v94[9] == 1)
            {
              v94[8] = 3;
              sub_100181284(v94);
            }
          }
        }

        if ((v94[8] & 0xFD) == 1)
        {
          v95 = nr_absolute_time();
          v96 = *(&self->_counterForDataStallRemediation + 7);
          if (v96)
          {
            *(v96 + 40) = v95;
            v97 = *(&self->_counterForDataStallRemediation + 7);
            if (v97)
            {
              ++v97[9];
            }
          }

          else
          {
            v97 = 0;
          }

          v56 = sub_1000828DC(&self->super.super.isa, sessionCopy, configCopy, 3, v165);

          goto LABEL_51;
        }
      }

      [(NRLink *)self reportEvent:3020 detailsFormat:@"ClassC %@", sessionCopy];

      v56 = 0;
      childConfigCopy = v167;
LABEL_33:

      goto LABEL_35;
    }

    if (v167)
    {
      goto LABEL_73;
    }

    [(NRLink *)self reportEvent:3024 detailsFormat:@"ClassC %@", sessionCopy];
LABEL_32:
    v56 = 0;
    goto LABEL_33;
  }

  localIdentifier8 = [configCopy localIdentifier];
  if (qword_100229308 != -1)
  {
    dispatch_once(&qword_100229308, &stru_1001FC598);
  }

  v74 = qword_100229300;
  v75 = [localIdentifier8 isEqual:v74];

  if (v75)
  {
    v43 = v166;
    if (v166)
    {
      v76 = v166[18];
    }

    else
    {
      v76 = 0;
    }

    blockCopy = v165;
    v77 = v76;
    if ([v77 usesTLS])
    {
    }

    else
    {

      if (!v167)
      {
        [(NRLink *)self reportEvent:3024 detailsFormat:@"ClassA %@", sessionCopy];
        goto LABEL_32;
      }
    }

    selfCopy2 = self;
    v66 = sessionCopy;
    v67 = configCopy;
    v68 = 1;
LABEL_50:
    v56 = sub_1000828DC(&selfCopy2->super.super.isa, v66, v67, v68, blockCopy);
LABEL_51:
    v69 = 0;
    v70 = 0;
    v71 = 0;
    goto LABEL_52;
  }

  localIdentifier9 = [configCopy localIdentifier];
  v99 = sub_100145C94();
  v100 = [localIdentifier9 isEqual:v99];

  if (v100)
  {
    v101 = nr_absolute_time();
    v102 = *(&self->_counterForDataStallRemediation + 7);
    if (v102)
    {
      *(v102 + 120) = v101;
      v103 = *(&self->_counterForDataStallRemediation + 7);
      v104 = v166;
      if (v103)
      {
        ++v103[14];
      }
    }

    else
    {
      v103 = 0;
      v104 = v166;
    }

    objc_storeStrong((&self->_ikeSessionClassA + 7), session);
    sub_100083088(self);
    v105 = [[NEIKEv2AuthenticationProtocol alloc] initWithMethod:2];
    v106 = sub_100145C94();
    v56 = sub_1001472F0(0, v106, v105);

    v107 = sub_100165598(v104);
    [v56 setSharedSecret:v107];

    sharedSecret = [v56 sharedSecret];

    v109 = sub_10007CF34();
    if (!sharedSecret)
    {
      v148 = _NRLogIsLevelEnabled();

      if (v148)
      {
        v149 = sub_10007CF34();
        _NRLogWithArgs();
      }

      childConfigCopy = v167;
      goto LABEL_115;
    }

    v110 = _NRLogIsLevelEnabled();

    if (v110)
    {
      v111 = sub_10007CF34();
      _NRLogWithArgs();
    }

    v71 = 0;
    v69 = 1;
    v70 = 1;
  }

  else
  {
    localIdentifier10 = [configCopy localIdentifier];
    v116 = sub_100145BF8();
    v117 = [localIdentifier10 isEqual:v116];

    if (!v117)
    {
      v126 = self->super._nrUUID;
      v127 = _NRCopyLogObjectForNRUUID();
      v128 = _NRLogIsLevelEnabled();

      if (v128)
      {
        v129 = self->super._nrUUID;
        v130 = _NRCopyLogObjectForNRUUID();
        copyDescription4 = [(NRLink *)self copyDescription];
        localIdentifier11 = [configCopy localIdentifier];
        _NRLogWithArgs();
      }

      v56 = 0;
      goto LABEL_115;
    }

    v118 = nr_absolute_time();
    v119 = *(&self->_counterForDataStallRemediation + 7);
    if (v119)
    {
      *(v119 + 120) = v118;
      v120 = *(&self->_counterForDataStallRemediation + 7);
      if (v120)
      {
        ++v120[14];
      }
    }

    else
    {
      v120 = 0;
    }

    objc_storeStrong((&self->_ikeSessionClassA + 7), session);
    sub_100083088(self);
    v121 = [[NEIKEv2AuthenticationProtocol alloc] initWithNonStandardDigitalSignature:2];
    v122 = sub_100145BF8();
    v56 = sub_1001472F0(0, v122, v121);

    v123 = sub_10007CF34();
    v124 = _NRLogIsLevelEnabled();

    if (v124)
    {
      v125 = sub_10007CF34();
      _NRLogWithArgs();
    }

    v70 = 0;
    v69 = 1;
    v71 = 1;
  }

LABEL_52:
  if (!self->super._virtualInterface)
  {
    v143 = self->super._nrUUID;
    v144 = _NRCopyLogObjectForNRUUID();
    v145 = _NRLogIsLevelEnabled();

    if (v145)
    {
      v146 = self->super._nrUUID;
      v147 = _NRCopyLogObjectForNRUUID();
      copyDescription5 = [(NRLink *)self copyDescription];
      _NRLogWithArgs();
    }

    childConfigCopy = v167;
LABEL_115:
    blockCopy = v165;
    v43 = v166;
    goto LABEL_33;
  }

  childConfigCopy = v167;
  if (v56)
  {
    if (v70)
    {
      v72 = self->super._nrUUID;
      v173[0] = _NSConcreteStackBlock;
      v173[1] = 3221225472;
      v173[2] = sub_1000835D4;
      v173[3] = &unk_1001FB178;
      v173[4] = self;
      v56 = v56;
      v174 = v56;
      v176 = v20;
      v175 = v167;
      sub_10016D738(NRDLocalDevice, v72, 1, 0, v173);
    }

    else if (v71)
    {
      v78 = self->super._nrUUID;
      v79 = _NRCopyLogObjectForNRUUID();
      v80 = _NRLogIsLevelEnabled();

      if (v80)
      {
        v81 = self->super._nrUUID;
        v82 = _NRCopyLogObjectForNRUUID();
        copyDescription6 = [(NRLink *)self copyDescription];
        _NRLogWithArgs();
      }

      v83 = self->super._nrUUID;
      v168[0] = _NSConcreteStackBlock;
      v168[1] = 3221225472;
      v168[2] = sub_1000838F4;
      v168[3] = &unk_1001FB1A0;
      v168[4] = self;
      v172 = v20;
      v169 = sessionCopy;
      v56 = v56;
      v170 = v56;
      v171 = v167;
      sub_10016E0BC(NRDLocalDevice, v83, 4, v168);
    }

    else
    {
      v112 = sub_100146D34(1, 1);
      virtualInterface = [(NRLink *)self virtualInterface];
      if (![(NRLink *)self hasCompanionDatapath])
      {

        v112 = 0;
        virtualInterface = 0;
      }

      if (v69)
      {
        v114 = 0;
      }

      else
      {
        v114 = virtualInterface;
      }

      (v20)[2](v20, v56, v112, v114);
    }

    blockCopy = v165;
    goto LABEL_36;
  }

  blockCopy = v165;
LABEL_35:
  v20[2](v20, 0, 0, 0);
LABEL_36:

LABEL_37:
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
      if (self)
      {
        ++*(&self->_handledUrgentLinkWriteBufferBytes + 3);
      }

      objc_initWeak(&location, self);
      v7 = *(&self->_ikeListener + 7);
      v20 = v5;
      v8 = [NSArray arrayWithObjects:&v20 count:1];
      queue = [(NRLink *)self queue];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10008E814;
      v17[3] = &unk_1001FC018;
      objc_copyWeak(&v18, &location);
      [v7 sendPrivateNotifies:v8 maxRetries:10 retryIntervalInMilliseconds:10000 callbackQueue:queue callback:v17];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    else
    {
      v14 = sub_10007CF34();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v16 = sub_10007CF34();
        _NRLogWithArgs();
      }
    }
  }

  else
  {
    v11 = sub_10007CF34();
    v12 = _NRLogIsLevelEnabled();

    if (v12)
    {
      v13 = sub_10007CF34();
      _NRLogWithArgs();
    }

    v6 = 0;
  }

  return v6;
}

- (void)acceptNewFlow:(id)flow fromNexus:(id)nexus completionHandler:(id)handler
{
  handlerCopy = handler;
  nrUUID = self->super._nrUUID;
  v7 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v9 = self->super._nrUUID;
    v10 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs();
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  streamCopy = stream;
  if ([(NRLink *)self state]!= 255)
  {
    if (event == 16 || event == 8)
    {
      [(NRLinkBluetooth *)self cancelWithReason:@"L2CAP stream event %d", event];
    }

    else if ([streamCopy isEqual:*(&self->_writeContext + 7)])
    {
      sub_10008F50C(self, event);
    }

    else if ([streamCopy isEqual:*(&self->_linkInputStream + 7)] && -[NRLink state](self, "state") != 255)
    {
      if (gNRPacketLoggingEnabled == 1)
      {
        v7 = sub_10007CF34();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v9 = sub_10007CF34();
          _NRLogWithArgs();
        }
      }

      if (event == 4)
      {
        if (gNRPacketLoggingEnabled == 1)
        {
          v10 = sub_10007CF34();
          v11 = _NRLogIsLevelEnabled();

          if (v11)
          {
            v12 = sub_10007CF34();
            _NRLogWithArgs();
          }
        }

        v6 = *(&self->_readContext + 7);
        if (v6)
        {
          (*(v6 + 16))(*(v6 + 24));
        }
      }

      else if (event == 1)
      {
        self->_linkOutputStreamOpen = 1;
      }
    }
  }
}

- (BOOL)initializeExternalDeviceLink
{
  v12.receiver = self;
  v12.super_class = NRLinkBluetooth;
  initializeExternalDeviceLink = [(NRLink *)&v12 initializeExternalDeviceLink];
  if (initializeExternalDeviceLink)
  {
    initializeExternalDeviceLink = sub_100090058(self);
    if (initializeExternalDeviceLink)
    {
      if (sub_100090538(self))
      {
        if (self)
        {
          if (self->super._subtype == 121)
          {
            v4 = 1;
          }

          else
          {
            v4 = 4;
          }
        }

        else
        {
          v4 = 0;
        }

        v5 = sub_10013F0B0([(NRLink *)self virtualInterface]);
        v6 = [v5 count];
        v7 = v6 == v4;
        if (v6 == v4)
        {
          sub_100090978(self, v5);
          if (self)
          {
            if (self->_bluetoothChannelPacketized)
            {
              v8 = 3;
            }

            else
            {
              v8 = 1;
            }
          }

          else
          {
            v8 = 1;
          }

          v9 = [NSNumber numberWithInteger:v8];
          sub_100090BF4(self, 0, v9);

          [(NRLink *)self changeStateTo:8];
          linkDelegate = [(NRLink *)self linkDelegate];
          [linkDelegate linkIsReady:self];
        }

        else
        {
          [(NRLinkBluetooth *)self cancelWithReason:@"Failed to setup nexus instance"];
        }

        LOBYTE(initializeExternalDeviceLink) = v7;
      }

      else
      {
        [(NRLinkBluetooth *)self cancelWithReason:@"Failed to setup utun interface"];
        LOBYTE(initializeExternalDeviceLink) = 0;
      }
    }
  }

  return initializeExternalDeviceLink;
}

- (BOOL)resume
{
  if (self->super._state == 255)
  {
    nrUUID = self->super._nrUUID;
    v12 = _NRCopyLogObjectForNRUUID();
    v10 = 1;
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v14 = self->super._nrUUID;
      v15 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs();
    }
  }

  else
  {
    v22.receiver = self;
    v22.super_class = NRLinkBluetooth;
    if ([(NRLink *)&v22 resume])
    {
      companionProxyAgent = self->super._companionProxyAgent;
      if (companionProxyAgent)
      {
        if ((sub_100070DD8(companionProxyAgent, self) & 1) == 0)
        {
          v4 = self->super._nrUUID;
          v5 = _NRCopyLogObjectForNRUUID();
          v6 = _NRLogIsLevelEnabled();

          if (v6)
          {
            v7 = self->super._nrUUID;
            v8 = _NRCopyLogObjectForNRUUID();
            v19 = 1903;
            copyDescription2 = [(NRLink *)self copyDescription];
            v17 = "";
            v18 = "[NRLinkBluetooth resume]";
            _NRLogWithArgs();
          }
        }
      }

      [(NRLink *)self changeStateTo:8 details:@"(resume)", v17, v18, v19, copyDescription2];
      sub_10008EA14(self, 0);
      linkDelegate = [(NRLink *)self linkDelegate];
      [linkDelegate linkIsReady:self];

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return v10;
}

- (BOOL)suspend
{
  v25.receiver = self;
  v25.super_class = NRLinkBluetooth;
  [(NRLink *)&v25 suspend];
  if (self->super._state != 255)
  {
    companionProxyAgent = self->super._companionProxyAgent;
    if (companionProxyAgent)
    {
      if ((sub_100070270(companionProxyAgent) & 1) == 0)
      {
        nrUUID = self->super._nrUUID;
        v5 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v7 = self->super._nrUUID;
          v8 = _NRCopyLogObjectForNRUUID();
          v22 = 1870;
          copyDescription = [(NRLink *)self copyDescription];
          v20 = "";
          v21 = "[NRLinkBluetooth suspend]";
          _NRLogWithArgs();
        }
      }
    }

    if (*(&self->_handledUrgentLinkWriteBufferBytes + 3))
    {
      v9 = self->super._nrUUID;
      v10 = _NRCopyLogObjectForNRUUID();
      v11 = _NRLogIsLevelEnabled();

      if (v11)
      {
        v12 = self->super._nrUUID;
        v13 = _NRCopyLogObjectForNRUUID();
        v22 = 1878;
        copyDescription = [(NRLink *)self copyDescription];
        v20 = "";
        v21 = "[NRLinkBluetooth suspend]";
        _NRLogWithArgs();
      }

      self->_shouldSuspend = 1;
    }

    else
    {
      sub_10008EA14(self, 1);
    }

    [(NRLink *)self changeStateTo:9 details:@"(suspend)", v20, v21, v22, copyDescription];
    linkDelegate = [(NRLink *)self linkDelegate];
    [linkDelegate linkIsSuspended:self];
    goto LABEL_14;
  }

  v14 = self->super._nrUUID;
  v15 = _NRCopyLogObjectForNRUUID();
  v16 = _NRLogIsLevelEnabled();

  if (v16)
  {
    v17 = self->super._nrUUID;
    linkDelegate = _NRCopyLogObjectForNRUUID();
    copyDescription2 = [(NRLink *)self copyDescription];
    _NRLogWithArgs();

LABEL_14:
  }

  return 1;
}

- (BOOL)cancelWithReason:(id)reason
{
  reasonCopy = reason;
  if (reasonCopy)
  {
    v57 = &v59;
    v5 = [[NSString alloc] initWithFormat:reasonCopy arguments:&v59];
    if ([(NRLink *)self changeStateTo:255 details:v5])
    {
      if (self)
      {
        v6 = *(&self->_counterForDataStallRemediation + 7);
        if (v6)
        {
          *(v6 + 32) = *(&self->_recvKnownIPv6Hdr_TCP_ECT0 + 7) + *(&self->_sentKnownIPv6Hdr_TCP_ECT0 + 7);
          v6 = *(&self->_counterForDataStallRemediation + 7);
        }

        if (v6)
        {
          *(v6 + 88) = *(&self->_packetsToNexusBK + 7) + *(&self->_packetsToNexus + 7) + *(&self->_packetsToNexusVI + 7) + *(&self->_packetsToNexusVO + 7) + *(&self->_bytesToNexusVO + 7);
          v7 = *(&self->_counterForDataStallRemediation + 7);
          if (v7)
          {
            *(v7 + 96) = *(&self->_bytesFromNexusBK + 7) + *(&self->_bytesFromNexus + 7) + *(&self->_bytesFromNexusVI + 7) + *(&self->_bytesFromNexusVO + 7) + *(&self->_bytesToL2CAP + 7);
          }
        }

        [(NRLink *)self linkTotalReadyTimeInSec];
        v9 = *(&self->_counterForDataStallRemediation + 7);
        if (v9)
        {
          *(v9 + 24) = v8;
        }
      }

      else
      {
        [0 linkTotalReadyTimeInSec];
      }

      linkDelegate = [(NRLink *)self linkDelegate];
      [linkDelegate linkIsUnavailable:self];

      nrUUID = self->super._nrUUID;
      v12 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v14 = self->super._nrUUID;
        v15 = _NRCopyLogObjectForNRUUID();
        copyDescription = [(NRLink *)self copyDescription];
        v49 = v5;
        v44 = 1818;
        v40 = "";
        v42 = "[NRLinkBluetooth cancelWithReason:]";
        _NRLogWithArgs();
      }

      v52 = v5;
      v51 = [(NRLinkBluetooth *)self copyStatusString:v40];
      copyDescription4 = [v51 componentsSeparatedByString:@"\n"];
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v17 = [copyDescription4 countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v54;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v54 != v19)
            {
              objc_enumerationMutation(copyDescription4);
            }

            v21 = *(*(&v53 + 1) + 8 * i);
            v22 = self->super._nrUUID;
            v23 = _NRCopyLogObjectForNRUUID();
            v24 = _NRLogIsLevelEnabled();

            if (v24)
            {
              v25 = self->super._nrUUID;
              v26 = _NRCopyLogObjectForNRUUID();
              copyDescription2 = [(NRLink *)self copyDescription];
              v50 = v21;
              v45 = 1822;
              v41 = "";
              v43 = "[NRLinkBluetooth cancelWithReason:]";
              _NRLogWithArgs();
            }
          }

          v18 = [copyDescription4 countByEnumeratingWithState:&v53 objects:v58 count:16];
        }

        while (v18);
      }

      [(NRLinkBluetooth *)self invalidateLink:v41];
      [*(&self->_counterForDataStallRemediation + 7) submit];
      v32 = self->super._nrUUID;
      v33 = _NRCopyLogObjectForNRUUID();
      v34 = _NRLogIsLevelEnabled();

      if (v34)
      {
        v35 = self->super._nrUUID;
        v36 = _NRCopyLogObjectForNRUUID();
        copyDescription3 = [(NRLink *)self copyDescription];
        _NRLogWithArgs();
      }

      v5 = v52;
      v31 = v51;
      goto LABEL_27;
    }

    v27 = self->super._nrUUID;
    v28 = _NRCopyLogObjectForNRUUID();
    v29 = _NRLogIsLevelEnabled();

    if (v29)
    {
      v30 = self->super._nrUUID;
      v31 = _NRCopyLogObjectForNRUUID();
      copyDescription4 = [(NRLink *)self copyDescription];
      _NRLogWithArgs();
LABEL_27:
    }
  }

  else
  {
    v38 = sub_10007CF34();
    v39 = _NRLogIsLevelEnabled();

    if (!v39)
    {
      goto LABEL_29;
    }

    v5 = sub_10007CF34();
    _NRLogWithArgs();
  }

LABEL_29:
  return reasonCopy != 0;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  if ([pathCopy isEqualToString:@"hostState"])
  {
    v10 = objectCopy;
    if (qword_100229088 != -1)
    {
      dispatch_once(&qword_100229088, &stru_1001FB1C0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229088 != -1)
      {
        dispatch_once(&qword_100229088, &stru_1001FB1C0);
      }

      v11 = qword_100229080;
      hostState = [v10 hostState];
      if (hostState >= 3)
      {
        v13 = [[NSString alloc] initWithFormat:@"Unknown(%lld)", hostState];
      }

      else
      {
        v13 = *(&off_1001FB208 + hostState);
      }

      v20 = v10;
      v21 = v13;
      v18 = 1763;
      v19 = pathCopy;
      v16 = "";
      v17 = "[NRLinkBluetooth observeValueForKeyPath:ofObject:change:context:]";
      _NRLogWithArgs();
    }

    v14 = [(NRLink *)self queue:v16];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000AD65C;
    block[3] = &unk_1001FD060;
    block[4] = self;
    v23 = v10;
    v15 = v10;
    dispatch_async(v14, block);
  }

  else
  {
    if (qword_100229088 != -1)
    {
      dispatch_once(&qword_100229088, &stru_1001FB1C0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229088 != -1)
      {
        dispatch_once(&qword_100229088, &stru_1001FB1C0);
      }

      _NRLogWithArgs();
    }
  }
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
  nrUUID = self->super._nrUUID;
  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = self->super._nrUUID;
    v7 = _NRCopyLogObjectForNRUUID();
    v107 = 1649;
    copyDescription = [(NRLink *)self copyDescription];
    v103 = "";
    v105 = "[NRLinkBluetooth invalidateLink]";
    _NRLogWithArgs();
  }

  v112.receiver = self;
  v112.super_class = NRLinkBluetooth;
  [(NRLink *)&v112 invalidateLink:v103];
  v8 = *(&self->_linkInputStreamBufferSize + 7);
  if (v8)
  {
    free(v8);
    *(&self->_linkInputStreamBufferSize + 7) = 0;
  }

  v9 = *(&self->_lastReadNexusOutputActivityCounter + 7);
  if (v9)
  {
    free(v9);
    *(&self->_lastReadNexusOutputActivityCounter + 7) = 0;
  }

  v10 = *(&self->_linkOutputStream + 7);
  if (v10)
  {
    free(v10);
    *(&self->_linkOutputStream + 7) = 0;
  }

  if (self->_addedHostStateObserver)
  {
    v11 = *(&self->_bluetoothUUID + 7);
    peer = [v11 peer];
    [peer removeObserver:self forKeyPath:@"hostState" context:0];

    self->_addedHostStateObserver = 0;
  }

  v13 = *(&self->_nexusOutputRing + 7);
  if (v13)
  {
    if (self->_dNexusInputSourceSuspended)
    {
      self->_dNexusInputSourceSuspended = 0;
      ++*(&self->_nexusGroup + 7);
      if (gNRPacketLoggingEnabled == 1)
      {
        v53 = self->super._nrUUID;
        v54 = _NRCopyLogObjectForNRUUID();
        v55 = _NRLogIsLevelEnabled();

        if (v55)
        {
          v56 = self->super._nrUUID;
          v57 = _NRCopyLogObjectForNRUUID();
          v108 = 873;
          copyDescription2 = [(NRLink *)self copyDescription];
          v104 = "";
          v106 = "NRLinkResumeNexusInputSource";
          _NRLogWithArgs();
        }
      }

      dispatch_resume(*(&self->_nexusOutputRing + 7));
      v13 = *(&self->_nexusOutputRing + 7);
    }

    dispatch_source_cancel(v13);
    v14 = *(&self->_nexusOutputRing + 7);
    *(&self->_nexusOutputRing + 7) = 0;
  }

  v15 = *(&self->_dNexusInputSource + 7);
  if (v15)
  {
    if (self->_dNexusOutputSourceSuspended)
    {
      self->_dNexusOutputSourceSuspended = 0;
      ++*(&self->_dNexusInputSourceActivityCounter + 7);
      if (gNRPacketLoggingEnabled == 1)
      {
        v58 = self->super._nrUUID;
        v59 = _NRCopyLogObjectForNRUUID();
        v60 = _NRLogIsLevelEnabled();

        if (v60)
        {
          v61 = self->super._nrUUID;
          v62 = _NRCopyLogObjectForNRUUID();
          v108 = 874;
          copyDescription2 = [(NRLink *)self copyDescription];
          v104 = "";
          v106 = "NRLinkResumeNexusOutputSource";
          _NRLogWithArgs();
        }
      }

      dispatch_resume(*(&self->_dNexusInputSource + 7));
      v15 = *(&self->_dNexusInputSource + 7);
    }

    dispatch_source_cancel(v15);
    v16 = *(&self->_dNexusInputSource + 7);
    *(&self->_dNexusInputSource + 7) = 0;
  }

  if (*(&self->_receivedPrelude + 7))
  {
    if (!*(&self->_dNexusOutputSource + 7))
    {
      os_channel_destroy();
    }

    *(&self->_receivedPrelude + 7) = 0;
  }

  *(&self->_nexusChannel + 7) = 0;
  *(&self->_nexusInputRing + 7) = 0;
  v17 = *(&self->_nexusVIOutputRing + 7);
  if (v17)
  {
    if (self->_dNexusVIInputSourceSuspended)
    {
      self->_dNexusVIInputSourceSuspended = 0;
      ++*(&self->_dNexusVIOutputSource + 7);
      if (gNRPacketLoggingEnabled == 1)
      {
        v63 = self->super._nrUUID;
        v64 = _NRCopyLogObjectForNRUUID();
        v65 = _NRLogIsLevelEnabled();

        if (v65)
        {
          v66 = self->super._nrUUID;
          v67 = _NRCopyLogObjectForNRUUID();
          v108 = 877;
          copyDescription2 = [(NRLink *)self copyDescription];
          v104 = "";
          v106 = "NRLinkResumeNexusVIInputSource";
          _NRLogWithArgs();
        }
      }

      dispatch_resume(*(&self->_nexusVIOutputRing + 7));
      v17 = *(&self->_nexusVIOutputRing + 7);
    }

    dispatch_source_cancel(v17);
    v18 = *(&self->_nexusVIOutputRing + 7);
    *(&self->_nexusVIOutputRing + 7) = 0;
  }

  v19 = *(&self->_dNexusVIInputSource + 7);
  if (v19)
  {
    if (self->_dNexusVIOutputSourceSuspended)
    {
      self->_dNexusVIOutputSourceSuspended = 0;
      ++*(&self->_dNexusVIInputSourceActivityCounter + 7);
      if (gNRPacketLoggingEnabled == 1)
      {
        v68 = self->super._nrUUID;
        v69 = _NRCopyLogObjectForNRUUID();
        v70 = _NRLogIsLevelEnabled();

        if (v70)
        {
          v71 = self->super._nrUUID;
          v72 = _NRCopyLogObjectForNRUUID();
          v108 = 878;
          copyDescription2 = [(NRLink *)self copyDescription];
          v104 = "";
          v106 = "NRLinkResumeNexusVIOutputSource";
          _NRLogWithArgs();
        }
      }

      dispatch_resume(*(&self->_dNexusVIInputSource + 7));
      v19 = *(&self->_dNexusVIInputSource + 7);
    }

    dispatch_source_cancel(v19);
    v20 = *(&self->_dNexusVIInputSource + 7);
    *(&self->_dNexusVIInputSource + 7) = 0;
  }

  if (*(&self->_nexusVIGroup + 7))
  {
    if (!*(&self->_bytesFromL2CAP + 7))
    {
      os_channel_destroy();
    }

    *(&self->_nexusVIGroup + 7) = 0;
  }

  *(&self->_nexusVIChannel + 7) = 0;
  *(&self->_nexusVIInputRing + 7) = 0;
  v21 = *(&self->_nexusVOOutputRing + 7);
  if (v21)
  {
    if (self->_dNexusVOInputSourceSuspended)
    {
      self->_dNexusVOInputSourceSuspended = 0;
      ++*(&self->_dNexusVOOutputSource + 7);
      if (gNRPacketLoggingEnabled == 1)
      {
        v73 = self->super._nrUUID;
        v74 = _NRCopyLogObjectForNRUUID();
        v75 = _NRLogIsLevelEnabled();

        if (v75)
        {
          v76 = self->super._nrUUID;
          v77 = _NRCopyLogObjectForNRUUID();
          v108 = 875;
          copyDescription2 = [(NRLink *)self copyDescription];
          v104 = "";
          v106 = "NRLinkResumeNexusVOInputSource";
          _NRLogWithArgs();
        }
      }

      dispatch_resume(*(&self->_nexusVOOutputRing + 7));
      v21 = *(&self->_nexusVOOutputRing + 7);
    }

    dispatch_source_cancel(v21);
    v22 = *(&self->_nexusVOOutputRing + 7);
    *(&self->_nexusVOOutputRing + 7) = 0;
  }

  v23 = *(&self->_dNexusVOInputSource + 7);
  if (v23)
  {
    if (self->_dNexusVOOutputSourceSuspended)
    {
      self->_dNexusVOOutputSourceSuspended = 0;
      ++*(&self->_dNexusVOInputSourceActivityCounter + 7);
      if (gNRPacketLoggingEnabled == 1)
      {
        v78 = self->super._nrUUID;
        v79 = _NRCopyLogObjectForNRUUID();
        v80 = _NRLogIsLevelEnabled();

        if (v80)
        {
          v81 = self->super._nrUUID;
          v82 = _NRCopyLogObjectForNRUUID();
          v108 = 876;
          copyDescription2 = [(NRLink *)self copyDescription];
          v104 = "";
          v106 = "NRLinkResumeNexusVOOutputSource";
          _NRLogWithArgs();
        }
      }

      dispatch_resume(*(&self->_dNexusVOInputSource + 7));
      v23 = *(&self->_dNexusVOInputSource + 7);
    }

    dispatch_source_cancel(v23);
    v24 = *(&self->_dNexusVOInputSource + 7);
    *(&self->_dNexusVOInputSource + 7) = 0;
  }

  if (*(&self->_nexusVOGroup + 7))
  {
    if (!*(&self->_bytesToNexus + 7))
    {
      os_channel_destroy();
    }

    *(&self->_nexusVOGroup + 7) = 0;
  }

  *(&self->_nexusVOChannel + 7) = 0;
  *(&self->_nexusVOInputRing + 7) = 0;
  v25 = *(&self->_nexusBKOutputRing + 7);
  if (v25)
  {
    if (self->_dNexusBKInputSourceSuspended)
    {
      self->_dNexusBKInputSourceSuspended = 0;
      ++*(&self->_dNexusBKOutputSource + 7);
      if (gNRPacketLoggingEnabled == 1)
      {
        v83 = self->super._nrUUID;
        v84 = _NRCopyLogObjectForNRUUID();
        v85 = _NRLogIsLevelEnabled();

        if (v85)
        {
          v86 = self->super._nrUUID;
          v87 = _NRCopyLogObjectForNRUUID();
          v108 = 879;
          copyDescription2 = [(NRLink *)self copyDescription];
          v104 = "";
          v106 = "NRLinkResumeNexusBKInputSource";
          _NRLogWithArgs();
        }
      }

      dispatch_resume(*(&self->_nexusBKOutputRing + 7));
      v25 = *(&self->_nexusBKOutputRing + 7);
    }

    dispatch_source_cancel(v25);
    v26 = *(&self->_nexusBKOutputRing + 7);
    *(&self->_nexusBKOutputRing + 7) = 0;
  }

  v27 = *(&self->_dNexusBKInputSource + 7);
  if (v27)
  {
    if (self->_dNexusBKOutputSourceSuspended)
    {
      self->_dNexusBKOutputSourceSuspended = 0;
      ++*(&self->_dNexusBKInputSourceActivityCounter + 7);
      if (gNRPacketLoggingEnabled == 1)
      {
        v88 = self->super._nrUUID;
        v89 = _NRCopyLogObjectForNRUUID();
        v90 = _NRLogIsLevelEnabled();

        if (v90)
        {
          v91 = self->super._nrUUID;
          v92 = _NRCopyLogObjectForNRUUID();
          v108 = 880;
          copyDescription2 = [(NRLink *)self copyDescription];
          v104 = "";
          v106 = "NRLinkResumeNexusBKOutputSource";
          _NRLogWithArgs();
        }
      }

      dispatch_resume(*(&self->_dNexusBKInputSource + 7));
      v27 = *(&self->_dNexusBKInputSource + 7);
    }

    dispatch_source_cancel(v27);
    v28 = *(&self->_dNexusBKInputSource + 7);
    *(&self->_dNexusBKInputSource + 7) = 0;
  }

  if (*(&self->_nexusBKGroup + 7))
  {
    if (!*(&self->_bytesToNexusVI + 7))
    {
      os_channel_destroy();
    }

    *(&self->_nexusBKGroup + 7) = 0;
  }

  *(&self->_nexusBKChannel + 7) = 0;
  *(&self->_nexusBKInputRing + 7) = 0;
  v29 = *(&self->_linkOutputRing + 7);
  if (v29)
  {
    if (self->_dLinkInputSourceSuspended)
    {
      self->_dLinkInputSourceSuspended = 0;
      ++*(&self->_dLinkOutputSource + 7);
      if (gNRPacketLoggingEnabled == 1)
      {
        v93 = self->super._nrUUID;
        v94 = _NRCopyLogObjectForNRUUID();
        v95 = _NRLogIsLevelEnabled();

        if (v95)
        {
          v96 = self->super._nrUUID;
          v97 = _NRCopyLogObjectForNRUUID();
          v108 = 853;
          copyDescription2 = [(NRLink *)self copyDescription];
          v104 = "";
          v106 = "NRLinkResumeLinkInputSource";
          _NRLogWithArgs();
        }
      }

      dispatch_resume(*(&self->_linkOutputRing + 7));
      v29 = *(&self->_linkOutputRing + 7);
    }

    dispatch_source_cancel(v29);
    v30 = *(&self->_linkOutputRing + 7);
    *(&self->_linkOutputRing + 7) = 0;
  }

  v31 = *(&self->_dLinkInputSource + 7);
  if (v31)
  {
    if (self->_dLinkOutputSourceSuspended)
    {
      self->_dLinkOutputSourceSuspended = 0;
      ++*(&self->_dLinkInputSourceActivityCounter + 7);
      if (gNRPacketLoggingEnabled == 1)
      {
        v98 = self->super._nrUUID;
        v99 = _NRCopyLogObjectForNRUUID();
        v100 = _NRLogIsLevelEnabled();

        if (v100)
        {
          v101 = self->super._nrUUID;
          v102 = _NRCopyLogObjectForNRUUID();
          v108 = 854;
          copyDescription2 = [(NRLink *)self copyDescription];
          v104 = "";
          v106 = "NRLinkResumeLinkOutputSource";
          _NRLogWithArgs();
        }
      }

      dispatch_resume(*(&self->_dLinkInputSource + 7));
      v31 = *(&self->_dLinkInputSource + 7);
    }

    dispatch_source_cancel(v31);
    v32 = *(&self->_dLinkInputSource + 7);
    *(&self->_dLinkInputSource + 7) = 0;
  }

  v33 = *(&self->_lastWrittenUrgentLink + 7);
  if (v33)
  {
    dispatch_source_cancel(v33);
    v34 = *(&self->_lastWrittenUrgentLink + 7);
    *(&self->_lastWrittenUrgentLink + 7) = 0;
  }

  if (*(&self->_pipe + 7))
  {
    [*(&self->_writeContext + 7) close];
    [*(&self->_writeContext + 7) setDelegate:0];
    [*(&self->_linkInputStream + 7) close];
    [*(&self->_linkInputStream + 7) setDelegate:0];
    v35 = *(&self->_pipe + 7);
    *(&self->_pipe + 7) = 0;
  }

  v36 = *(&self->_localPublicClassAKeysEncryptedWithIDS + 7);
  if (v36)
  {
    [v36 cancel];
    v37 = *(&self->_localPublicClassAKeysEncryptedWithIDS + 7);
    *(&self->_localPublicClassAKeysEncryptedWithIDS + 7) = 0;
  }

  *(&self->_writeCounter + 7) = 0;
  *(&self->_linkChannel + 7) = 0;
  *(&self->_linkInputRing + 7) = 0;
  v38 = *(&self->_linkLogToken + 7);
  if (v38)
  {
    free(v38);
    *(&self->_linkLogToken + 7) = 0;
  }

  v39 = *(&self->_ntlLogToken + 7);
  if (v39)
  {
    free(v39);
    *(&self->_ntlLogToken + 7) = 0;
  }

  if (self->super._virtualInterface)
  {
    if (NEVirtualInterfaceGetType() == 1)
    {
      [(NRLink *)self virtualInterface];
      NEVirtualInterfaceInvalidate();
      if ([(NRLink *)self virtualInterface])
      {
        free([(NRLink *)self virtualInterface]);
        [(NRLink *)self setVirtualInterface:0];
      }
    }
  }

  [(NRLink *)self setVirtualInterface:0, v104, v106, v108, copyDescription2];
  v40 = *(&self->_linkOutgoingData + 7);
  if (v40)
  {
    [v40 setAvailability:0];
    [*(&self->_linkOutgoingData + 7) cancel];
    v41 = *(&self->_linkOutgoingData + 7);
    *(&self->_linkOutgoingData + 7) = 0;
  }

  v42 = *(&self->_dummyPacketNexus + 7);
  *(&self->_dummyPacketNexus + 7) = 0;

  v43 = *(&self->_bluetoothUUID + 7);
  *(&self->_bluetoothUUID + 7) = 0;

  sub_1000AE684(self, 0);
  sub_1000AF784(self, 0);
  [(NRLinkBluetooth *)self invalidateIKESessionForClass:4];
  [(NRLinkBluetooth *)self invalidateIKESessionForClass:3];
  [(NRLinkBluetooth *)self invalidateIKESessionForClass:1];
  [(NRLink *)self invalidateIKESession:&self->_ikeSessionClassA + 7];
  v44 = *(&self->_latencyContexts + 7);
  if (v44)
  {
    [v44 cancel];
    v45 = *(&self->_latencyContexts + 7);
    *(&self->_latencyContexts + 7) = 0;
  }

  companionProxyAgent = self->super._companionProxyAgent;
  if (companionProxyAgent)
  {
    sub_100070270(companionProxyAgent);
    v47 = self->super._companionProxyAgent;
    self->super._companionProxyAgent = 0;
  }

  v48 = self->super._nrUUID;
  v49 = _NRCopyLogObjectForNRUUID();
  v50 = _NRLogIsLevelEnabled();

  if (v50)
  {
    v51 = self->super._nrUUID;
    v52 = _NRCopyLogObjectForNRUUID();
    copyDescription3 = [(NRLink *)self copyDescription];
    _NRLogWithArgs();
  }
}

- (void)invalidateIKESessionForClass:(unsigned __int8)class
{
  classCopy = class;
  v5.receiver = self;
  v5.super_class = NRLinkBluetooth;
  [(NRLink *)&v5 invalidateIKESessionForClass:?];
  [(NRLink *)self invalidateIKESession:sub_1000857F4(self, classCopy)];
}

- (BOOL)start
{
  selfCopy = self;
  if (self->super._state != 8)
  {
    if ([(NRLink *)self state]== 9)
    {

      LOBYTE(IsLevelEnabled) = [selfCopy resume];
      return IsLevelEnabled;
    }

    if (*(selfCopy + 16) >= 2u)
    {
      if (qword_100229088 != -1)
      {
        dispatch_once(&qword_100229088, &stru_1001FB1C0);
      }

      IsLevelEnabled = _NRLogIsLevelEnabled();
      if (!IsLevelEnabled)
      {
        return IsLevelEnabled;
      }

      if (qword_100229088 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_126;
    }

    [selfCopy reportEvent:3001];
    [selfCopy updateIKEv2Role:0];
    queue = [selfCopy queue];

    if (queue)
    {
      v11 = *(selfCopy + 399);
      if (v11)
      {
      }

      else if (!*(selfCopy + 407))
      {
        if (qword_100229088 != -1)
        {
          dispatch_once(&qword_100229088, &stru_1001FB1C0);
        }

        IsLevelEnabled = _NRLogIsLevelEnabled();
        if (!IsLevelEnabled)
        {
          return IsLevelEnabled;
        }

        if (qword_100229088 == -1)
        {
LABEL_14:
          _NRLogWithArgs();
          LOBYTE(IsLevelEnabled) = 0;
          return IsLevelEnabled;
        }

LABEL_126:
        dispatch_once(&qword_100229088, &stru_1001FB1C0);
        goto LABEL_14;
      }

      v12 = *(selfCopy + 391);

      if (v12)
      {
        v13 = *(selfCopy + 415);

        if (v13)
        {
          if ([selfCopy ikev2Role] == 2 || objc_msgSend(selfCopy, "ikev2Role") == 1)
          {
            ikev2Role = [selfCopy ikev2Role];
            v15 = 255;
            if (ikev2Role != 1)
            {
              v15 = 0;
            }

            memptr[0] = (0x101010101010101 * v15);
            memptr[1] = 0;
            arc4random_buf(&memptr[1], 8uLL);
            v16 = [[NSUUID alloc] initWithUUIDBytes:memptr];
          }

          else
          {
            v16 = +[NSUUID UUID];
          }

          v17 = *(selfCopy + 1503);
          *(selfCopy + 1503) = v16;

          v18 = *(selfCopy + 1511);
          *(selfCopy + 1511) = &stru_1001FDE68;

          v19 = 315;
          v20 = *(selfCopy + 315);
          if (v20)
          {
            v21 = malloc_type_malloc(v20, 0xD2019250uLL);
            if (v21)
            {
              *(selfCopy + 1455) = v21;
              *(selfCopy + 371) = 0;
              *(selfCopy + 375) = 0;
              if (gNRPacketLoggingEnabled == 1)
              {
                v128 = *(selfCopy + 32);
                v129 = _NRCopyLogObjectForNRUUID();
                copyDescription = _NRLogIsLevelEnabled();

                if (copyDescription)
                {
                  v130 = *(selfCopy + 32);
                  v131 = _NRCopyLogObjectForNRUUID();
                  copyDescription = [selfCopy copyDescription];
                  v329 = *(selfCopy + 315);
                  _NRLogWithArgs();
                }
              }

              v3 = 331;
              v22 = *(selfCopy + 331);
              if (v22)
              {
                v23 = malloc_type_malloc(v22, 0x3A56B233uLL);
                if (v23)
                {
                  v6 = 519;
                  *(selfCopy + 519) = v23;
                  v4 = 339;
                  *(selfCopy + 339) = 0;
                  v5 = 343;
                  *(selfCopy + 343) = 0;
                  if (gNRPacketLoggingEnabled == 1)
                  {
                    v137 = *(selfCopy + 32);
                    v138 = _NRCopyLogObjectForNRUUID();
                    copyDescription = _NRLogIsLevelEnabled();

                    if (copyDescription)
                    {
                      v139 = *(selfCopy + 32);
                      v140 = _NRCopyLogObjectForNRUUID();
                      copyDescription = [selfCopy copyDescription];
                      v330 = *(selfCopy + 331);
                      _NRLogWithArgs();
                    }
                  }

                  v24 = objc_alloc_init(NSMutableArray);
                  v25 = *(selfCopy + 1287);
                  *(selfCopy + 1287) = v24;

                  *(selfCopy + 297) = 10;
                  memptr[0] = 0;
                  if (malloc_type_posix_memalign(memptr, 8uLL, 0x50uLL, 0x57080EDuLL) || !memptr[0])
                  {
                    v141 = sub_10007CF34();
                    v142 = _NRLogIsLevelEnabled();

                    if (v142)
                    {
                      v143 = sub_10007CF34();
                      _NRLogWithArgs();
                    }
                  }

                  else
                  {
                    *(selfCopy + 2023) = memptr[0];
                    *(selfCopy + 303) = 10;
                    memptr[0] = 0;
                    if (!malloc_type_posix_memalign(memptr, 8uLL, 0x50uLL, 0xC1B3E6E9uLL) && memptr[0])
                    {
                      *(selfCopy + 2071) = memptr[0];
                      if (*(selfCopy + 18) == 121 && (sub_100090058(selfCopy) & 1) == 0)
                      {
                        v61 = *(selfCopy + 32);
                        v62 = _NRCopyLogObjectForNRUUID();
                        v63 = _NRLogIsLevelEnabled();

                        if (v63)
                        {
                          goto LABEL_61;
                        }
                      }

                      else
                      {
                        if (*(selfCopy + 128) != 1)
                        {
                          if (*(selfCopy + 293))
                          {
                            while (1)
                            {
LABEL_44:
                              if (*(selfCopy + 128))
                              {
                                goto LABEL_54;
                              }

                              v19 = *(selfCopy + 248);
                              v29 = selfCopy;
                              v30 = malloc_type_malloc(0x26uLL, 0xF891214AuLL);
                              if (v30)
                              {
                                copyDescription = v30;
                                *v30 = 0x53554E494D524554;
                                v30[8] = 1;
                                v30[9] = v19;
                                *(v30 + 5) = 6144;
                                v30[12] = 4;
                                *(v30 + 13) = 4096;
                                memptr[0] = 0;
                                memptr[1] = 0;
                                [*(selfCopy + 1503) getUUIDBytes:memptr];
                                *(copyDescription + 15) = *memptr;
                                *(copyDescription + 31) = 5;
                                *(copyDescription + 32) = 512;
                                *(copyDescription + 34) = sub_1000952E8(v29) << 8;
                                *(copyDescription + 36) = ~os_inet_checksum();

                                if (*(selfCopy + v3) > 0x25u)
                                {
                                  v31 = *(v29 + 423);

                                  if (v31)
                                  {
                                    v32 = *(v29 + 4);
                                    v33 = _NRCopyLogObjectForNRUUID();
                                    v34 = _NRLogIsLevelEnabled();

                                    if (v34)
                                    {
                                      v35 = *(v29 + 4);
                                      v36 = _NRCopyLogObjectForNRUUID();
                                      copyDescription2 = [v29 copyDescription];
                                      v332 = *(v29 + 423);
                                      _NRLogWithArgs();
                                    }
                                  }

                                  v37 = [[NSData alloc] initWithBytes:copyDescription length:38];
                                  objc_storeStrong((v29 + 423), v37);

                                  v38 = *(selfCopy + v6);
                                  v39 = *copyDescription;
                                  v40 = *(copyDescription + 16);
                                  *(v38 + 30) = *(copyDescription + 30);
                                  *v38 = v39;
                                  *(v38 + 16) = v40;
                                  free(copyDescription);
                                  *(selfCopy + v4) += 38;
                                  v41 = *(v29 + 4);
                                  v42 = _NRCopyLogObjectForNRUUID();
                                  LODWORD(v37) = _NRLogIsLevelEnabled();

                                  if (v37)
                                  {
                                    v43 = *(v29 + 4);
                                    v44 = _NRCopyLogObjectForNRUUID();
                                    copyDescription3 = [v29 copyDescription];
                                    v46 = *(v29 + 423);
                                    v47 = *(selfCopy + v4);
                                    v328 = *(selfCopy + v5);
                                    v333 = _NRCreateDataString();
                                    _NRLogWithArgs();
                                  }

                                  [v29 changeStateTo:2];
                                  if (v29[293] == 1)
                                  {
                                    sub_10007D788(v29, *(v29 + 423), &off_100209B90);
                                  }

LABEL_54:
                                  v48 = *(selfCopy + 32);
                                  v49 = _NRCopyLogObjectForNRUUID();
                                  v50 = _NRLogIsLevelEnabled();

                                  if (v50)
                                  {
                                    v51 = *(selfCopy + 32);
                                    v52 = _NRCopyLogObjectForNRUUID();
                                    copyDescription4 = [selfCopy copyDescription];
                                    _NRLogWithArgs();
                                  }

                                  v53 = *(selfCopy + 32);
                                  v54 = _NRCopyLogObjectForNRUUID();
                                  v55 = _NRLogIsLevelEnabled();

                                  if (v55)
                                  {
                                    v56 = *(selfCopy + 32);
                                    v57 = _NRCopyLogObjectForNRUUID();
                                    copyDescription5 = [selfCopy copyDescription];
                                    _NRLogWithArgs();
                                  }

                                  v58 = *(selfCopy + 8);
                                  block[0] = _NSConcreteStackBlock;
                                  block[1] = 3221225472;
                                  block[2] = sub_1000B4DE4;
                                  block[3] = &unk_1001FD3C8;
                                  block[4] = selfCopy;
                                  dispatch_async(v58, block);
                                  if ((*(selfCopy + 251) & 1) == 0)
                                  {
                                    v59 = *(selfCopy + 399);
                                    peer = [v59 peer];
                                    [peer addObserver:selfCopy forKeyPath:@"hostState" options:5 context:0];

                                    *(selfCopy + 251) = 1;
                                  }

                                  goto LABEL_3;
                                }

                                v216 = sub_10007CF34();
                                v217 = _NRLogIsLevelEnabled();

                                if (v217)
                                {
                                  v218 = sub_10007CF34();
                                  _NRLogWithArgs();
                                }

                                selfCopy = _os_log_pack_size();
                                v65 = v336 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
                                v219 = *__error();
                                v220 = _os_log_pack_fill();
                                *v220 = 136446466;
                                *(v220 + 4) = "[NRLinkBluetooth start]";
                                *(v220 + 12) = 1024;
                                *(v220 + 14) = 38;
                              }

                              else
                              {
                                v211 = sub_10007CF34();
                                v212 = _NRLogIsLevelEnabled();

                                copyDescription = "createPreludeBuffer";
                                if (v212)
                                {
                                  v213 = sub_10007CF34();
                                  _NRLogWithArgs();
                                }

                                selfCopy = _os_log_pack_size();
                                v65 = v336 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
                                v214 = *__error();
                                v215 = _os_log_pack_fill();
                                *v215 = 136446210;
                                *(v215 + 4) = "createPreludeBuffer";
                              }

LABEL_120:
                              sub_10007CF34();
                              _NRLogAbortWithPack();
LABEL_121:
                              v149 = _NRLogIsLevelEnabled();

                              if (v149)
                              {
                                v150 = *(selfCopy + 32);
                                v151 = _NRCopyLogObjectForNRUUID();
                                copyDescription6 = [selfCopy copyDescription];
                                _NRLogWithArgs();
                              }

                              memptr[0] = 0;
                              v152 = os_channel_attr_get();
                              v153 = *(selfCopy + 32);
                              v154 = _NRCopyLogObjectForNRUUID();
                              if (v152)
                              {
                                v155 = _NRLogIsLevelEnabled();

                                if (!v155)
                                {
                                  goto LABEL_216;
                                }

                                goto LABEL_214;
                              }

                              v156 = _NRLogIsLevelEnabled();

                              if (v156)
                              {
                                v157 = *(selfCopy + 32);
                                v158 = _NRCopyLogObjectForNRUUID();
                                copyDescription7 = [selfCopy copyDescription];
                                _NRLogWithArgs();
                              }

                              memptr[0] = 0;
                              v159 = os_channel_attr_get();
                              v160 = *(selfCopy + 32);
                              v161 = _NRCopyLogObjectForNRUUID();
                              if (v159)
                              {
                                v162 = _NRLogIsLevelEnabled();

                                if (!v162)
                                {
                                  goto LABEL_216;
                                }

                                goto LABEL_214;
                              }

                              v163 = _NRLogIsLevelEnabled();

                              if (v163)
                              {
                                v164 = *(selfCopy + 32);
                                v165 = _NRCopyLogObjectForNRUUID();
                                copyDescription8 = [selfCopy copyDescription];
                                _NRLogWithArgs();
                              }

                              memptr[0] = 0;
                              v166 = os_channel_attr_get();
                              v167 = *(selfCopy + 32);
                              v168 = _NRCopyLogObjectForNRUUID();
                              if (v166)
                              {
                                v169 = _NRLogIsLevelEnabled();

                                if (!v169)
                                {
                                  goto LABEL_216;
                                }

                                goto LABEL_214;
                              }

                              v170 = _NRLogIsLevelEnabled();

                              if (v170)
                              {
                                v171 = *(selfCopy + 32);
                                v172 = _NRCopyLogObjectForNRUUID();
                                copyDescription9 = [selfCopy copyDescription];
                                _NRLogWithArgs();
                              }

                              memptr[0] = 0;
                              v173 = os_channel_attr_get();
                              v174 = *(selfCopy + 32);
                              v175 = _NRCopyLogObjectForNRUUID();
                              if (v173)
                              {
                                v176 = _NRLogIsLevelEnabled();

                                if (!v176)
                                {
                                  goto LABEL_216;
                                }

                                goto LABEL_214;
                              }

                              v177 = _NRLogIsLevelEnabled();

                              if (v177)
                              {
                                v178 = *(selfCopy + 32);
                                v179 = _NRCopyLogObjectForNRUUID();
                                copyDescription10 = [selfCopy copyDescription];
                                _NRLogWithArgs();
                              }

                              memptr[0] = 0;
                              v180 = os_channel_attr_get();
                              v181 = *(selfCopy + 32);
                              v182 = _NRCopyLogObjectForNRUUID();
                              if (v180)
                              {
                                v183 = _NRLogIsLevelEnabled();

                                if (!v183)
                                {
                                  goto LABEL_216;
                                }

                                goto LABEL_214;
                              }

                              v184 = _NRLogIsLevelEnabled();

                              if (v184)
                              {
                                v185 = *(selfCopy + 32);
                                v186 = _NRCopyLogObjectForNRUUID();
                                copyDescription11 = [selfCopy copyDescription];
                                _NRLogWithArgs();
                              }

                              memptr[0] = 0;
                              v187 = os_channel_attr_get();
                              v188 = *(selfCopy + 32);
                              v189 = _NRCopyLogObjectForNRUUID();
                              if (v187)
                              {
                                v190 = _NRLogIsLevelEnabled();

                                if (!v190)
                                {
                                  goto LABEL_216;
                                }

                                goto LABEL_214;
                              }

                              v191 = _NRLogIsLevelEnabled();

                              if (v191)
                              {
                                v192 = *(selfCopy + 32);
                                v193 = _NRCopyLogObjectForNRUUID();
                                copyDescription12 = [selfCopy copyDescription];
                                _NRLogWithArgs();
                              }

                              memptr[0] = 0;
                              v194 = os_channel_attr_get();
                              v195 = *(selfCopy + 32);
                              v196 = _NRCopyLogObjectForNRUUID();
                              if (v194)
                              {
                                v197 = _NRLogIsLevelEnabled();

                                if (!v197)
                                {
                                  goto LABEL_216;
                                }

                                goto LABEL_214;
                              }

                              v204 = _NRLogIsLevelEnabled();

                              if (v204)
                              {
                                v205 = *(selfCopy + 32);
                                v206 = _NRCopyLogObjectForNRUUID();
                                copyDescription13 = [selfCopy copyDescription];
                                _NRLogWithArgs();
                              }

                              memptr[0] = 0;
                              v207 = os_channel_attr_get();
                              v208 = *(selfCopy + 32);
                              v209 = _NRCopyLogObjectForNRUUID();
                              if (v207)
                              {
                                v210 = _NRLogIsLevelEnabled();

                                if (!v210)
                                {
                                  goto LABEL_216;
                                }

                                goto LABEL_214;
                              }

                              v221 = _NRLogIsLevelEnabled();

                              if (v221)
                              {
                                v222 = *(selfCopy + 32);
                                v223 = _NRCopyLogObjectForNRUUID();
                                copyDescription14 = [selfCopy copyDescription];
                                _NRLogWithArgs();
                              }

                              memptr[0] = 0;
                              v224 = os_channel_attr_get();
                              v225 = *(selfCopy + 32);
                              v226 = _NRCopyLogObjectForNRUUID();
                              if (v224)
                              {
                                v227 = _NRLogIsLevelEnabled();

                                if (!v227)
                                {
                                  goto LABEL_216;
                                }

                                goto LABEL_214;
                              }

                              v228 = _NRLogIsLevelEnabled();

                              if (v228)
                              {
                                v229 = *(selfCopy + 32);
                                v230 = _NRCopyLogObjectForNRUUID();
                                copyDescription15 = [selfCopy copyDescription];
                                _NRLogWithArgs();
                              }

                              memptr[0] = 0;
                              v231 = os_channel_attr_get();
                              v232 = *(selfCopy + 32);
                              v233 = _NRCopyLogObjectForNRUUID();
                              if (v231)
                              {
                                v234 = _NRLogIsLevelEnabled();

                                if (!v234)
                                {
                                  goto LABEL_216;
                                }

                                goto LABEL_214;
                              }

                              v235 = _NRLogIsLevelEnabled();

                              if (v235)
                              {
                                v236 = *(selfCopy + 32);
                                v237 = _NRCopyLogObjectForNRUUID();
                                copyDescription16 = [selfCopy copyDescription];
                                _NRLogWithArgs();
                              }

                              memptr[0] = 0;
                              v238 = os_channel_attr_get();
                              v239 = *(selfCopy + 32);
                              v240 = _NRCopyLogObjectForNRUUID();
                              if (v238)
                              {
                                v241 = _NRLogIsLevelEnabled();

                                if (!v241)
                                {
                                  goto LABEL_216;
                                }

                                goto LABEL_214;
                              }

                              v242 = _NRLogIsLevelEnabled();

                              if (v242)
                              {
                                v243 = *(selfCopy + 32);
                                v244 = _NRCopyLogObjectForNRUUID();
                                copyDescription17 = [selfCopy copyDescription];
                                _NRLogWithArgs();
                              }

                              memptr[0] = 0;
                              v245 = os_channel_attr_get();
                              v246 = *(selfCopy + 32);
                              v247 = _NRCopyLogObjectForNRUUID();
                              if (v245)
                              {
                                v248 = _NRLogIsLevelEnabled();

                                if (!v248)
                                {
                                  goto LABEL_216;
                                }

                                goto LABEL_214;
                              }

                              v249 = _NRLogIsLevelEnabled();

                              if (v249)
                              {
                                v250 = *(selfCopy + 32);
                                v251 = _NRCopyLogObjectForNRUUID();
                                copyDescription18 = [selfCopy copyDescription];
                                _NRLogWithArgs();
                              }

                              memptr[0] = 0;
                              v252 = os_channel_attr_get();
                              v253 = *(selfCopy + 32);
                              v254 = _NRCopyLogObjectForNRUUID();
                              if (v252)
                              {
                                v255 = _NRLogIsLevelEnabled();

                                if (!v255)
                                {
                                  goto LABEL_216;
                                }

                                goto LABEL_214;
                              }

                              v256 = _NRLogIsLevelEnabled();

                              if (v256)
                              {
                                v257 = *(selfCopy + 32);
                                v258 = _NRCopyLogObjectForNRUUID();
                                copyDescription19 = [selfCopy copyDescription];
                                _NRLogWithArgs();
                              }

                              memptr[0] = 0;
                              v259 = os_channel_attr_get();
                              v260 = *(selfCopy + 32);
                              v261 = _NRCopyLogObjectForNRUUID();
                              if (v259)
                              {
                                v262 = _NRLogIsLevelEnabled();

                                if (!v262)
                                {
                                  goto LABEL_216;
                                }

                                goto LABEL_214;
                              }

                              v263 = _NRLogIsLevelEnabled();

                              if (v263)
                              {
                                v264 = *(selfCopy + 32);
                                v265 = _NRCopyLogObjectForNRUUID();
                                copyDescription20 = [selfCopy copyDescription];
                                _NRLogWithArgs();
                              }

                              memptr[0] = 0;
                              v266 = os_channel_attr_get();
                              v267 = *(selfCopy + 32);
                              v268 = _NRCopyLogObjectForNRUUID();
                              if (v266)
                              {
                                v269 = _NRLogIsLevelEnabled();

                                if (!v269)
                                {
                                  goto LABEL_216;
                                }

                                goto LABEL_214;
                              }

                              v270 = _NRLogIsLevelEnabled();

                              if (v270)
                              {
                                v271 = *(selfCopy + 32);
                                v272 = _NRCopyLogObjectForNRUUID();
                                copyDescription21 = [selfCopy copyDescription];
                                _NRLogWithArgs();
                              }

                              memptr[0] = 0;
                              if (os_channel_attr_get())
                              {
                                v273 = *(selfCopy + 32);
                                v274 = _NRCopyLogObjectForNRUUID();
                                v275 = _NRLogIsLevelEnabled();

                                if (!v275)
                                {
                                  goto LABEL_216;
                                }

                                goto LABEL_214;
                              }

                              if (os_channel_attr_set())
                              {
                                break;
                              }

                              v280 = *(selfCopy + copyDescription);
                              if (os_channel_write_attr())
                              {
                                v281 = *(selfCopy + 32);
                                v282 = _NRCopyLogObjectForNRUUID();
                                v283 = _NRLogIsLevelEnabled();

                                if (v283)
                                {
                                  goto LABEL_214;
                                }

                                goto LABEL_216;
                              }

                              os_channel_attr_destroy();
                              v284 = *(selfCopy + 32);
                              v285 = _NRCopyLogObjectForNRUUID();
                              v286 = _NRLogIsLevelEnabled();

                              if (v286)
                              {
                                v287 = *(selfCopy + 32);
                                v288 = _NRCopyLogObjectForNRUUID();
                                copyDescription22 = [selfCopy copyDescription];
                                _NRLogWithArgs();
                              }

                              v290 = *(selfCopy + 8);
                              v337 = v337;
                              v291 = dispatch_source_create(&_dispatch_source_type_read, v337, 0, v290);
                              v292 = *(selfCopy + 1071);
                              *(selfCopy + 1071) = v291;

                              v293 = *(selfCopy + 1071);
                              if (!v293)
                              {
                                v300 = *(selfCopy + 32);
                                v301 = _NRCopyLogObjectForNRUUID();
                                v302 = _NRLogIsLevelEnabled();

                                if (v302)
                                {
                                  goto LABEL_214;
                                }

                                goto LABEL_216;
                              }

                              handler[0] = _NSConcreteStackBlock;
                              handler[1] = 3221225472;
                              handler[2] = sub_1000B487C;
                              handler[3] = &unk_1001FD3C8;
                              handler[4] = selfCopy;
                              dispatch_source_set_event_handler(v293, handler);
                              v294 = *(selfCopy + 1071);
                              v342[0] = _NSConcreteStackBlock;
                              v342[1] = 3221225472;
                              v342[2] = nullsub_11;
                              v342[3] = &unk_1001FD3C8;
                              v295 = v65;
                              v343 = v295;
                              dispatch_source_set_cancel_handler(v294, v342);
                              dispatch_activate(*(selfCopy + 1071));
                              v296 = dispatch_source_create(&_dispatch_source_type_write, v337, 0, *(selfCopy + 8));
                              v297 = *(selfCopy + 1079);
                              *(selfCopy + 1079) = v296;

                              v298 = *(selfCopy + 1079);
                              if (v298)
                              {
                                v341[0] = _NSConcreteStackBlock;
                                v341[1] = 3221225472;
                                v341[2] = sub_1000B4AD8;
                                v341[3] = &unk_1001FD3C8;
                                v341[4] = selfCopy;
                                dispatch_source_set_event_handler(v298, v341);
                                v299 = *(selfCopy + 1079);
                                v339[0] = _NSConcreteStackBlock;
                                v339[1] = 3221225472;
                                v339[2] = nullsub_12;
                                v339[3] = &unk_1001FD3C8;
                                v340 = v295;
                                dispatch_source_set_cancel_handler(v299, v339);
                                *(selfCopy + 262) = 1;
                              }

                              else
                              {
                                v303 = *(selfCopy + 32);
                                v304 = _NRCopyLogObjectForNRUUID();
                                v305 = _NRLogIsLevelEnabled();

                                if (v305)
                                {
                                  v306 = *(selfCopy + 32);
                                  v307 = _NRCopyLogObjectForNRUUID();
                                  copyDescription23 = [selfCopy copyDescription];
                                  _NRLogWithArgs();
                                }
                              }

                              if (!v298)
                              {
                                goto LABEL_233;
                              }
                            }

                            v277 = *(selfCopy + 32);
                            v278 = _NRCopyLogObjectForNRUUID();
                            v279 = _NRLogIsLevelEnabled();

                            if (v279)
                            {
LABEL_214:
                              v276 = *(selfCopy + 32);
                              v116 = _NRCopyLogObjectForNRUUID();
                              copyDescription24 = [selfCopy copyDescription];
                              goto LABEL_215;
                            }

                            goto LABEL_216;
                          }

                          v65 = *(selfCopy + 399);
                          channel = [v65 channel];
                          copyDescription = 1047;
                          *(selfCopy + 1047) = channel;
                          if (channel)
                          {
                            os_channel_ring_id();
                            v68 = *(selfCopy + 1047);
                            v69 = os_channel_rx_ring();
                            *(selfCopy + 1055) = v69;
                            if (v69)
                            {
                              v70 = *(selfCopy + 1047);
                              os_channel_ring_id();
                              v71 = *(selfCopy + 1047);
                              v72 = os_channel_tx_ring();
                              *(selfCopy + 1063) = v72;
                              if (v72)
                              {
                                v73 = *(selfCopy + 1047);
                                fd = os_channel_get_fd();
                                if (fd < 0)
                                {
                                  v90 = *(selfCopy + 32);
                                  v91 = _NRCopyLogObjectForNRUUID();
                                  v92 = _NRLogIsLevelEnabled();

                                  if (!v92)
                                  {
                                    goto LABEL_216;
                                  }
                                }

                                else
                                {
                                  LODWORD(v337) = fd;
                                  v75 = os_channel_attr_create();
                                  if (v75)
                                  {
                                    v76 = v75;
                                    v77 = *(selfCopy + 1047);
                                    if (os_channel_read_attr())
                                    {
                                      v78 = *(selfCopy + 32);
                                      v79 = _NRCopyLogObjectForNRUUID();
                                      v80 = _NRLogIsLevelEnabled();

                                      if (!v80)
                                      {
                                        goto LABEL_216;
                                      }
                                    }

                                    else
                                    {
                                      memptr[0] = 0;
                                      v96 = os_channel_attr_get();
                                      v97 = *(selfCopy + 32);
                                      v98 = _NRCopyLogObjectForNRUUID();
                                      v99 = v76;
                                      v100 = v98;
                                      if (v96)
                                      {
                                        v101 = _NRLogIsLevelEnabled();

                                        if (!v101)
                                        {
                                          goto LABEL_216;
                                        }
                                      }

                                      else
                                      {
                                        v336[1] = v99;
                                        v102 = _NRLogIsLevelEnabled();

                                        if (v102)
                                        {
                                          v103 = *(selfCopy + 32);
                                          v104 = _NRCopyLogObjectForNRUUID();
                                          copyDescription25 = [selfCopy copyDescription];
                                          _NRLogWithArgs();
                                        }

                                        memptr[0] = 0;
                                        v105 = os_channel_attr_get();
                                        v106 = *(selfCopy + 32);
                                        v107 = _NRCopyLogObjectForNRUUID();
                                        if (v105)
                                        {
                                          v108 = _NRLogIsLevelEnabled();

                                          if (!v108)
                                          {
                                            goto LABEL_216;
                                          }
                                        }

                                        else
                                        {
                                          v109 = _NRLogIsLevelEnabled();

                                          if (v109)
                                          {
                                            v110 = *(selfCopy + 32);
                                            v111 = _NRCopyLogObjectForNRUUID();
                                            copyDescription26 = [selfCopy copyDescription];
                                            _NRLogWithArgs();
                                          }

                                          memptr[0] = 0;
                                          v112 = os_channel_attr_get();
                                          v113 = *(selfCopy + 32);
                                          v19 = _NRCopyLogObjectForNRUUID();
                                          if (!v112)
                                          {
                                            goto LABEL_121;
                                          }

                                          v114 = _NRLogIsLevelEnabled();

                                          if (!v114)
                                          {
                                            goto LABEL_216;
                                          }
                                        }
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v93 = *(selfCopy + 32);
                                    v94 = _NRCopyLogObjectForNRUUID();
                                    v95 = _NRLogIsLevelEnabled();

                                    if (!v95)
                                    {
                                      goto LABEL_216;
                                    }
                                  }
                                }
                              }

                              else
                              {
                                v87 = *(selfCopy + 32);
                                v88 = _NRCopyLogObjectForNRUUID();
                                v89 = _NRLogIsLevelEnabled();

                                if (!v89)
                                {
                                  goto LABEL_216;
                                }
                              }
                            }

                            else
                            {
                              v84 = *(selfCopy + 32);
                              v85 = _NRCopyLogObjectForNRUUID();
                              v86 = _NRLogIsLevelEnabled();

                              if (!v86)
                              {
                                goto LABEL_216;
                              }
                            }
                          }

                          else
                          {
                            v81 = *(selfCopy + 32);
                            v82 = _NRCopyLogObjectForNRUUID();
                            v83 = _NRLogIsLevelEnabled();

                            if (!v83)
                            {
                              goto LABEL_216;
                            }
                          }

                          v115 = *(selfCopy + 32);
                          v116 = _NRCopyLogObjectForNRUUID();
                          copyDescription24 = [selfCopy copyDescription];
LABEL_215:
                          _NRLogWithArgs();

                          goto LABEL_216;
                        }

                        if ([selfCopy initializeExternalDeviceLink])
                        {
                          goto LABEL_44;
                        }

                        v26 = *(selfCopy + 32);
                        v27 = _NRCopyLogObjectForNRUUID();
                        v28 = _NRLogIsLevelEnabled();

                        if (v28)
                        {
LABEL_61:
                          v64 = *(selfCopy + 32);
                          v65 = _NRCopyLogObjectForNRUUID();
                          copyDescription27 = [selfCopy copyDescription];
                          _NRLogWithArgs();

LABEL_216:
                          LOBYTE(IsLevelEnabled) = 0;
                          return IsLevelEnabled;
                        }
                      }

LABEL_233:
                      LOBYTE(IsLevelEnabled) = 0;
                      return IsLevelEnabled;
                    }

                    v144 = sub_10007CF34();
                    v145 = _NRLogIsLevelEnabled();

                    if (v145)
                    {
                      v146 = sub_10007CF34();
                      _NRLogWithArgs();
                    }
                  }

                  selfCopy = _os_log_pack_size();
                  v65 = v336 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
                  v147 = *__error();
                  v148 = _os_log_pack_fill();
                  *v148 = 136446722;
                  *(v148 + 4) = "[NRLinkBluetooth start]";
                  *(v148 + 12) = 2048;
                  *(v148 + 14) = 8;
                  *(v148 + 22) = 2048;
                  *(v148 + 24) = 80;
                  goto LABEL_120;
                }

                v201 = sub_10007CF34();
                v202 = _NRLogIsLevelEnabled();

                if (v202)
                {
                  v203 = sub_10007CF34();
                  _NRLogWithArgs();
                }
              }

              else
              {
                v132 = sub_10007CF34();
                v133 = _NRLogIsLevelEnabled();

                if (v133)
                {
                  v134 = sub_10007CF34();
                  _NRLogWithArgs();
                }
              }
            }

            else
            {
              v198 = sub_10007CF34();
              v199 = _NRLogIsLevelEnabled();

              if (v199)
              {
                v200 = sub_10007CF34();
                _NRLogWithArgs();
              }
            }
          }

          else
          {
            v125 = sub_10007CF34();
            v126 = _NRLogIsLevelEnabled();

            if (v126)
            {
              v127 = sub_10007CF34();
              _NRLogWithArgs();
            }
          }

          selfCopy = _os_log_pack_size();
          v65 = v336 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v135 = *__error();
          v136 = _os_log_pack_fill();
          *v136 = 136446210;
          *(v136 + 4) = "[NRLinkBluetooth start]";
          goto LABEL_120;
        }

        v122 = sub_10007CF34();
        v123 = _NRLogIsLevelEnabled();

        if (!v123)
        {
          goto LABEL_233;
        }
      }

      else
      {
        v120 = sub_10007CF34();
        v121 = _NRLogIsLevelEnabled();

        if (!v121)
        {
          goto LABEL_233;
        }
      }
    }

    else
    {
      v118 = sub_10007CF34();
      v119 = _NRLogIsLevelEnabled();

      if (!v119)
      {
        goto LABEL_233;
      }
    }

    v124 = sub_10007CF34();
    _NRLogWithArgs();

    LOBYTE(IsLevelEnabled) = 0;
    return IsLevelEnabled;
  }

  linkDelegate = [(NRLink *)self linkDelegate];
  [linkDelegate linkIsReady:selfCopy];

LABEL_3:
  LOBYTE(IsLevelEnabled) = 1;
  return IsLevelEnabled;
}

- (id)copyShortDescriptionInner
{
  v3 = [NSString alloc];
  v9.receiver = self;
  v9.super_class = NRLinkBluetooth;
  copyShortDescriptionInner = [(NRLink *)&v9 copyShortDescriptionInner];
  v5 = *(&self->_l2CAPChannel + 7);
  if ([*(&self->_randomUUID + 7) length])
  {
    if (self->_isResponder)
    {
      v6 = " R";
    }

    else
    {
      v6 = " I";
    }
  }

  else
  {
    v6 = "";
  }

  v7 = [v3 initWithFormat:@"%@ %@%s%@", copyShortDescriptionInner, v5, v6, *(&self->_randomUUID + 7)];

  return v7;
}

- (id)copyDescriptionInner
{
  v3 = [NSMutableString alloc];
  v10.receiver = self;
  v10.super_class = NRLinkBluetooth;
  copyDescriptionInner = [(NRLink *)&v10 copyDescriptionInner];
  v5 = [v3 initWithString:copyDescriptionInner];

  [(NRLink *)self type];
  StringFromNRLinkType = createStringFromNRLinkType();
  [v5 appendFormat:@", %@", StringFromNRLinkType];

  if (self)
  {
    v7 = *(&self->_l2CAPChannel + 7);
  }

  else
  {
    v7 = 0;
  }

  [v5 appendFormat:@", %@", v7];
  if ([*(&self->_randomUUID + 7) length])
  {
    if (self->_isResponder)
    {
      v8 = " R";
    }

    else
    {
      v8 = " I";
    }
  }

  else
  {
    v8 = "";
  }

  [v5 appendFormat:@", %s", v8];
  [v5 appendFormat:@", %@", *(&self->_randomUUID + 7)];
  return v5;
}

- (id)copyStatusString
{
  v3 = [NSMutableString alloc];
  v4 = [(NRLink *)self description];
  v5 = [v3 initWithString:v4];

  [v5 appendFormat:@"\n %35s = %@", "nrUUID", self->super._nrUUID];
  [v5 appendFormat:@"\n %35s = %@", "bluetoothUUID", *(&self->_handledUrgentLinkReadBufferBytes + 7)];
  [v5 appendFormat:@"\n %35s = %@", "pipe", *(&self->_bluetoothUUID + 7)];
  [v5 appendFormat:@"\n %35s = %@", "urgentPipe", *(&self->_lastReadDatagramLinkOutputActivityCounter + 7)];
  [v5 appendFormat:@"\n %35s = %@", "datagramPipe", *(&self->_lastReadLinkOutputActivityCounter + 7)];
  [v5 appendFormat:@"\n %35s = %p", "linkChannel", *(&self->_writeCounter + 7)];
  [v5 appendFormat:@"\n %35s = %p", "linkInputRing", *(&self->_linkChannel + 7)];
  [v5 appendFormat:@"\n %35s = %p", "linkOutputRing", *(&self->_linkInputRing + 7)];
  [v5 appendFormat:@"\n %35s = %p", "dLinkInputSource", *(&self->_linkOutputRing + 7)];
  [v5 appendFormat:@"\n %35s = %p", "dLinkOutputSource", *(&self->_dLinkInputSource + 7)];
  [v5 appendFormat:@"\n %35s = %p", "datagramLinkChannel", *(&self->_datagramPipe + 7)];
  [v5 appendFormat:@"\n %35s = %p", "datagramLinkInputRing", *(&self->_datagramLinkChannel + 7)];
  [v5 appendFormat:@"\n %35s = %p", "datagramLinkOutputRing", *(&self->_datagramLinkInputRing + 7)];
  [v5 appendFormat:@"\n %35s = %p", "dDatagramLinkInputSource", *(&self->_datagramLinkOutputRing + 7)];
  [v5 appendFormat:@"\n %35s = %p", "dDatagramLinkOutputSource", *(&self->_dDatagramLinkInputSource + 7)];
  if (self->_datagramPipeNeeded)
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "datagramPipeNeeded", v6];
  if (self->super._virtualInterface)
  {
    v7 = NEVirtualInterfaceCopyName();
    [v5 appendFormat:@"\n %35s = %@", "virtualInterfaceName", v7];
  }

  [v5 appendFormat:@"\n %35s = %@", "ikeSessionClassD", *(&self->_ikeListener + 7)];
  [v5 appendFormat:@"\n %35s = %@", "ikeSessionClassC", *(&self->_ikeSessionClassD + 7)];
  [v5 appendFormat:@"\n %35s = %@", "ikeSessionClassA", *(&self->_ikeSessionClassC + 7)];
  IPv6AddrString = createIPv6AddrString();
  [v5 appendFormat:@"\n %35s = %@", "localAddrClassD", IPv6AddrString];

  v9 = createIPv6AddrString();
  [v5 appendFormat:@"\n %35s = %@", "remoteAddrClassD", v9];

  v10 = createIPv6AddrString();
  [v5 appendFormat:@"\n %35s = %@", "localAddrClassC", v10];

  v11 = createIPv6AddrString();
  [v5 appendFormat:@"\n %35s = %@", "remoteAddrClassC", v11];

  [v5 appendFormat:@"\n %35s = %llu", "packetsFromNexus", *(&self->_syncNexusOutput + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "packetsToNexus", *(&self->_packetsFromNexus + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "bytesFromNexus", *(&self->_packetsToNexus + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "bytesToNexus", *(&self->_bytesFromNexus + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "bytesFromNexusVO", *(&self->_packetsToNexusVO + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "bytesToNexusVO", *(&self->_bytesFromNexusVO + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "bytesFromNexusVI", *(&self->_packetsToNexusVI + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "bytesToNexusVI", *(&self->_bytesFromNexusVI + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "bytesFromNexusBK", *(&self->_packetsToNexusBK + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "bytesToNexusBK", *(&self->_bytesFromNexusBK + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "bytesFromLink", *(&self->_jointUUIDHash + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "bytesToLink", *(&self->_bytesFromLink + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "datagramBytesFromLink", *(&self->_bytesToLink + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "datagramBytesToLink", *(&self->_datagramBytesFromLink + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "urgentBytesFromLink", *(&self->_datagramBytesToLink + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "urgentBytesToLink", *(&self->_urgentBytesFromLink + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "syncNexusInput", *(&self->_nexusOutputAvailWake + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "syncNexusOutput", *(&self->_syncNexusInput + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "syncNexusVOInput", *(&self->_nexusVOOutputAvailWake + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "syncNexusVOOutput", *(&self->_syncNexusVOInput + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "syncNexusVIInput", *(&self->_nexusVIOutputAvailWake + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "syncNexusVIOutput", *(&self->_syncNexusVIInput + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "syncNexusBKInput", *(&self->_nexusBKOutputAvailWake + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "syncNexusBKOutput", *(&self->_syncNexusBKInput + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "syncLinkInput", *(&self->_urgentBytesToLink + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "syncLinkOutput", *(&self->_syncLinkInput + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "syncDatagramLinkInput", *(&self->_syncLinkOutput + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "syncDatagramLinkOutput", *(&self->_syncDatagramLinkInput + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "syncUrgentLinkInput", *(&self->_syncDatagramLinkOutput + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "syncUrgentLinkOutput", *(&self->_syncUrgentLinkInput + 7)];
  [v5 appendFormat:@"\n %35s = %u", "filledInLinkWriteBufferBytes", *(&self->_urgentLinkWriteBufferLength + 3)];
  [v5 appendFormat:@"\n %35s = %u", "handledLinkWriteBufferBytes", *(&self->_filledInLinkWriteBufferBytes + 3)];
  [v5 appendFormat:@"\n %35s = %u", "filledInUrgentLinkWriteBufferBytes", *(&self->_controlPacketCounter + 3)];
  [v5 appendFormat:@"\n %35s = %u", "handledUrgentLinkWriteBufferBytes", *(&self->_filledInUrgentLinkWriteBufferBytes + 3)];
  if (self->_hasUrgentPrelude)
  {
    v12 = "YES";
  }

  else
  {
    v12 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "hasUrgentPrelude", v12];
  [v5 appendFormat:@"\n %35s = %llu", "linkInputAvailWake", *(&self->_syncUrgentLinkOutput + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "linkOutputAvailWake", *(&self->_linkInputAvailWake + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "datagramLinkInputAvailWake", *(&self->_linkOutputAvailWake + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "datagramLinkOutputAvailWake", *(&self->_datagramLinkInputAvailWake + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "nexusInputAvailWake", *(&self->_linkWriteBuffer + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "nexusOutputAvailWake", *(&self->_nexusInputAvailWake + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "nexusVOInputAvailWake", *(&self->_lastReadNexusVOOutputActivityCounter + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "nexusVOOutputAvailWake", *(&self->_nexusVOInputAvailWake + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "nexusVIInputAvailWake", *(&self->_lastReadNexusVIOutputActivityCounter + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "nexusVIOutputAvailWake", *(&self->_nexusVIInputAvailWake + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "nexusBKInputAvailWake", *(&self->_lastReadNexusBKOutputActivityCounter + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "nexusBKOutputAvailWake", *(&self->_nexusBKInputAvailWake + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "pendingBytesToLink", objc_msgSend(*(&self->_urgentLinkReadBuffer + 7), "length")];
  [v5 appendFormat:@"\n %35s = %lld (%u - %u)", "pendingBytesFromLink", *(&self->_handledlinkInputStreamBufferBytes + 3) - *(&self->_filledInLinkReadBufferBytes + 3), *(&self->_handledlinkInputStreamBufferBytes + 3), *(&self->_filledInLinkReadBufferBytes + 3)];
  [v5 appendFormat:@"\n %35s = %llu", "sentUncompressedIP", *(&self->_urgentLinkOutputAvailWake + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "sentEncapsulated6LoWPAN", *(&self->_sentUncompressedIP + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "sentKnownIPv6Hdr_ESP", *(&self->_sentEncapsulated6LoWPAN + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "sentKnownIPv6Hdr_ESP_ECT0", *(&self->_sentKnownIPv6Hdr_ESP + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "sentKnownIPv6Hdr_ESP_ClassC", *(&self->_sentKnownIPv6Hdr_ESP_ECT0 + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "sentKnownIPv6Hdr_ESP_ClassC_ECT0", *(&self->_sentKnownIPv6Hdr_ESP_ClassC + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "sentKnownIPv6Hdr_TCP", *(&self->_sentKnownIPv6Hdr_ESP_ClassC_ECT0 + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "sentKnownIPv6Hdr_TCP_ECT0", *(&self->_sentKnownIPv6Hdr_TCP + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "sentIKEv2PointToPoint", *(&self->_sentKnownIPv6Hdr_TCP_ECT0 + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "recvUncompressedIP", *(&self->_sentIKEv2PointToPoint + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "recvEncapsulated6LoWPAN", *(&self->_recvUncompressedIP + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "recvKnownIPv6Hdr_ESP", *(&self->_recvEncapsulated6LoWPAN + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "recvKnownIPv6Hdr_ESP_ECT0", *(&self->_recvKnownIPv6Hdr_ESP + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "recvKnownIPv6Hdr_ESP_ClassC", *(&self->_recvKnownIPv6Hdr_ESP_ECT0 + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "recvKnownIPv6Hdr_ESP_ClassC_ECT0", *(&self->_recvKnownIPv6Hdr_ESP_ClassC + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "recvKnownIPv6Hdr_TCP", *(&self->_recvKnownIPv6Hdr_ESP_ClassC_ECT0 + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "recvKnownIPv6Hdr_TCP_ECT0", *(&self->_recvKnownIPv6Hdr_TCP + 7)];
  [v5 appendFormat:@"\n %35s = %llu", "recvIKEv2PointToPoint", *(&self->_recvKnownIPv6Hdr_TCP_ECT0 + 7)];
  v13 = *(&self->_recvIKEv2PointToPoint + 7);
  v14 = _NRCopyTimeStringForDate();
  [v5 appendFormat:@"\n %35s = %@", "lastReadNexus", v14];

  v15 = *(&self->_lastReadNexus + 7);
  v16 = _NRCopyTimeStringForDate();
  [v5 appendFormat:@"\n %35s = %@", "lastWrittenNexus", v16];

  v17 = *(&self->_lastWrittenNexus + 7);
  v18 = _NRCopyTimeStringForDate();
  [v5 appendFormat:@"\n %35s = %@", "lastReadLink", v18];

  v19 = *(&self->_lastReadLink + 7);
  v20 = _NRCopyTimeStringForDate();
  [v5 appendFormat:@"\n %35s = %@", "lastWrittenLink", v20];

  v21 = *(&self->_lastWrittenDatagramLink + 7);
  v22 = _NRCopyTimeStringForDate();
  [v5 appendFormat:@"\n %35s = %@", "lastReadUrgentLink", v22];

  v23 = *(&self->_lastReadUrgentLink + 7);
  v24 = _NRCopyTimeStringForDate();
  [v5 appendFormat:@"\n %35s = %@", "lastWrittenUrgentLink", v24];

  [v5 appendFormat:@"\n %35s = %u", "nexusRecvWindow", objc_msgSend(*(&self->_dummyPacketNexus + 7), "receiveWindowPacketCount")];
  if (self->_dLinkInputSourceSuspended)
  {
    v25 = "YES";
  }

  else
  {
    v25 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "dLinkInputSourceSuspended", v25];
  if (self->_dLinkOutputSourceSuspended)
  {
    v26 = "YES";
  }

  else
  {
    v26 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "dLinkOutputSourceSuspended", v26];
  if (self->_dUrgentLinkInputSourceSuspended)
  {
    v27 = "YES";
  }

  else
  {
    v27 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "dUrgentLinkInputSourceSuspended", v27];
  if (self->_dUrgentLinkOutputSourceSuspended)
  {
    v28 = "YES";
  }

  else
  {
    v28 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "dUrgentLinkOutputSourceSuspended", v28];
  if (self->_dDatagramLinkInputSourceSuspended)
  {
    v29 = "YES";
  }

  else
  {
    v29 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "dDatagramLinkInputSourceSuspended", v29];
  if (self->_dDatagramLinkOutputSourceSuspended)
  {
    v30 = "YES";
  }

  else
  {
    v30 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "dDatagramLinkOutputSourceSuspended", v30];
  if (self->_dNexusInputSourceSuspended)
  {
    v31 = "YES";
  }

  else
  {
    v31 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "dNexusInputSourceSuspended", v31];
  if (self->_dNexusOutputSourceSuspended)
  {
    v32 = "YES";
  }

  else
  {
    v32 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "dNexusOutputSourceSuspended", v32];
  if (self->_dNexusVOInputSourceSuspended)
  {
    v33 = "YES";
  }

  else
  {
    v33 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "dNexusVOInputSourceSuspended", v33];
  if (self->_dNexusVOOutputSourceSuspended)
  {
    v34 = "YES";
  }

  else
  {
    v34 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "dNexusVOOutputSourceSuspended", v34];
  if (self->_dNexusVIInputSourceSuspended)
  {
    v35 = "YES";
  }

  else
  {
    v35 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "dNexusVIInputSourceSuspended", v35];
  if (self->_dNexusVIOutputSourceSuspended)
  {
    v36 = "YES";
  }

  else
  {
    v36 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "dNexusVIOutputSourceSuspended", v36];
  if (self->_dNexusBKInputSourceSuspended)
  {
    v37 = "YES";
  }

  else
  {
    v37 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "dNexusBKInputSourceSuspended", v37];
  if (self->_dNexusBKOutputSourceSuspended)
  {
    v38 = "YES";
  }

  else
  {
    v38 = "NO";
  }

  [v5 appendFormat:@"\n %35s = %s", "dNexusBKOutputSourceSuspended", v38];
  return v5;
}

@end