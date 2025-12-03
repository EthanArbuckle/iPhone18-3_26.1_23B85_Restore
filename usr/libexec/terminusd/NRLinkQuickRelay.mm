@interface NRLinkQuickRelay
- (BOOL)cancelWithReason:(id)reason;
- (BOOL)resume;
- (BOOL)sendControlData:(id)data;
- (BOOL)sendPacketData:(id)data;
- (BOOL)start;
- (BOOL)suspend;
- (id)copyStatusString;
- (id)initLinkWithQueue:(id)queue linkDelegate:(id)delegate nrUUID:(id)d;
- (void)invalidateIKESessionForClass:(unsigned __int8)class;
- (void)invalidateLink;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)requestConfigurationForListener:(id)listener session:(id)session sessionConfig:(id)config childConfig:(id)childConfig validateAuthBlock:(id)block responseBlock:(id)responseBlock;
- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withOptions:(id)options;
- (void)session:(id)session didReceiveData:(id)data;
- (void)session:(id)session receivedInvitationAcceptFromID:(id)d;
- (void)session:(id)session receivedInvitationCancelFromID:(id)d;
- (void)session:(id)session receivedInvitationDeclineFromID:(id)d;
- (void)sessionStarted:(id)started;
- (void)setPacketReceiver:(id)receiver;
@end

@implementation NRLinkQuickRelay

- (void)session:(id)session receivedInvitationDeclineFromID:(id)d
{
  sessionCopy = session;
  dCopy = d;
  queue = [(NRLink *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(NRLink *)self state]== 255)
  {
    nrUUID = self->super._nrUUID;
    v16 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_13;
    }

LABEL_11:
    v19 = self->super._nrUUID;
    v13 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs();

LABEL_12:
    goto LABEL_13;
  }

  if (sessionCopy)
  {
    if (self)
    {
      v8 = *(&self->_idsService + 7);
    }

    else
    {
      v8 = 0;
    }

    v9 = self->super._nrUUID;
    v10 = _NRCopyLogObjectForNRUUID();
    if (v8 != sessionCopy)
    {
      v11 = _NRLogIsLevelEnabled();

      if (!v11)
      {
        goto LABEL_13;
      }

      v12 = self->super._nrUUID;
      v13 = _NRCopyLogObjectForNRUUID();
      copyDescription2 = [(NRLink *)self copyDescription];
      v23 = *(&self->_idsService + 7);
      _NRLogWithArgs();

      goto LABEL_12;
    }

    v18 = _NRLogIsLevelEnabled();

    if (!v18)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v21 = sub_100046E64();
  v22 = _NRLogIsLevelEnabled();

  if (v22)
  {
    v13 = sub_100046E64();
    _NRLogWithArgs();
    goto LABEL_12;
  }

LABEL_13:
}

- (void)session:(id)session receivedInvitationCancelFromID:(id)d
{
  sessionCopy = session;
  dCopy = d;
  queue = [(NRLink *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(NRLink *)self state]== 255)
  {
    nrUUID = self->super._nrUUID;
    v16 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_13;
    }

LABEL_11:
    v19 = self->super._nrUUID;
    v13 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs();

LABEL_12:
    goto LABEL_13;
  }

  if (sessionCopy)
  {
    if (self)
    {
      v8 = *(&self->_idsService + 7);
    }

    else
    {
      v8 = 0;
    }

    v9 = self->super._nrUUID;
    v10 = _NRCopyLogObjectForNRUUID();
    if (v8 != sessionCopy)
    {
      v11 = _NRLogIsLevelEnabled();

      if (!v11)
      {
        goto LABEL_13;
      }

      v12 = self->super._nrUUID;
      v13 = _NRCopyLogObjectForNRUUID();
      copyDescription2 = [(NRLink *)self copyDescription];
      v23 = *(&self->_idsService + 7);
      _NRLogWithArgs();

      goto LABEL_12;
    }

    v18 = _NRLogIsLevelEnabled();

    if (!v18)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v21 = sub_100046E64();
  v22 = _NRLogIsLevelEnabled();

  if (v22)
  {
    v13 = sub_100046E64();
    _NRLogWithArgs();
    goto LABEL_12;
  }

LABEL_13:
}

- (void)session:(id)session receivedInvitationAcceptFromID:(id)d
{
  sessionCopy = session;
  dCopy = d;
  queue = [(NRLink *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(NRLink *)self state]== 255)
  {
    nrUUID = self->super._nrUUID;
    v16 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_13;
    }

LABEL_11:
    v19 = self->super._nrUUID;
    v13 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs();

LABEL_12:
    goto LABEL_13;
  }

  if (sessionCopy)
  {
    if (self)
    {
      v8 = *(&self->_idsService + 7);
    }

    else
    {
      v8 = 0;
    }

    v9 = self->super._nrUUID;
    v10 = _NRCopyLogObjectForNRUUID();
    if (v8 != sessionCopy)
    {
      v11 = _NRLogIsLevelEnabled();

      if (!v11)
      {
        goto LABEL_13;
      }

      v12 = self->super._nrUUID;
      v13 = _NRCopyLogObjectForNRUUID();
      copyDescription2 = [(NRLink *)self copyDescription];
      v23 = *(&self->_idsService + 7);
      _NRLogWithArgs();

      goto LABEL_12;
    }

    v18 = _NRLogIsLevelEnabled();

    if (!v18)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v21 = sub_100046E64();
  v22 = _NRLogIsLevelEnabled();

  if (v22)
  {
    v13 = sub_100046E64();
    _NRLogWithArgs();
    goto LABEL_12;
  }

LABEL_13:
}

- (void)session:(id)session didReceiveData:(id)data
{
  sessionCopy = session;
  dataCopy = data;
  queue = [(NRLink *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(NRLink *)self state]== 255)
  {
    nrUUID = self->super._nrUUID;
    v21 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (!sessionCopy)
  {
    v26 = sub_100046E64();
    v27 = _NRLogIsLevelEnabled();

    if (!v27)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  if (!dataCopy)
  {
    v28 = sub_100046E64();
    v29 = _NRLogIsLevelEnabled();

    if (!v29)
    {
      goto LABEL_14;
    }

LABEL_20:
    v24 = sub_100046E64();
    _NRLogWithArgs();
    goto LABEL_13;
  }

  if (self)
  {
    v8 = *(&self->_idsService + 7);
  }

  else
  {
    v8 = 0;
  }

  sessionID = [v8 sessionID];
  v10 = [sessionID isEqualToString:sessionCopy];

  if ((v10 & 1) == 0)
  {
    v11 = self->super._nrUUID;
    v12 = _NRCopyLogObjectForNRUUID();
    v13 = _NRLogIsLevelEnabled();

    if (v13)
    {
      v14 = self->super._nrUUID;
      v15 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      sessionID2 = [*(&self->_idsService + 7) sessionID];
      _NRLogWithArgs();
    }
  }

  v17 = self->super._nrUUID;
  v18 = _NRCopyLogObjectForNRUUID();
  v19 = _NRLogIsLevelEnabled();

  if (v19)
  {
LABEL_12:
    v23 = self->super._nrUUID;
    v24 = _NRCopyLogObjectForNRUUID();
    copyDescription2 = [(NRLink *)self copyDescription];
    _NRLogWithArgs();

LABEL_13:
  }

LABEL_14:
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{@"_connection.connectionState", object, change, context}])
  {
    queue = [(NRLink *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100048164;
    block[3] = &unk_1001FD3C8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)sessionStarted:(id)started
{
  startedCopy = started;
  queue = [(NRLink *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(NRLink *)self state]== 255)
  {
    nrUUID = self->super._nrUUID;
    v20 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v22 = self->super._nrUUID;
      v17 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs();

LABEL_24:
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  if (!startedCopy)
  {
    v34 = sub_100046E64();
    v35 = _NRLogIsLevelEnabled();

    if (v35)
    {
      v36 = sub_100046E64();
      _NRLogWithArgs();
    }

    goto LABEL_25;
  }

  v7 = self->super._nrUUID;
  v8 = _NRCopyLogObjectForNRUUID();
  v9 = _NRLogIsLevelEnabled();

  if (v9)
  {
    v10 = self->super._nrUUID;
    v11 = _NRCopyLogObjectForNRUUID();
    copyDescription2 = [(NRLink *)self copyDescription];
    _NRLogWithArgs();
  }

  v12 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  if (*(&self->_idsService + 7) == startedCopy)
  {
    self->_idsSessionStarted = 1;
    self->_invitationInProgress = 0;
    self->_invitationRetryCounter = 0;
    v17 = +[NSDate date];
    objc_storeStrong((&self->_idsDestination + 7), v17);
    v23 = *(&self->_pathEvaluator + 7);
    if (!v23)
    {
      goto LABEL_18;
    }

    if (*(v23 + 120))
    {
      v24 = nr_absolute_time();
      v25 = *(&self->_pathEvaluator + 7);
      if (!v25)
      {
        goto LABEL_18;
      }

      v26 = &OBJC_IVAR___NRAnalyticsCmpnLinkQuickRelay__idsSessionSendInvitationEnd;
    }

    else
    {
      if (!*(v23 + 136) || (v24 = nr_absolute_time(), (v25 = *(&self->_pathEvaluator + 7)) == 0))
      {
LABEL_18:
        v27 = nr_absolute_time();
        v28 = *(&self->_pathEvaluator + 7);
        if (v28)
        {
          *(v28 + 152) = v27;
        }

        sub_100047F74(self);
        nrUUID = [(NRLink *)self nrUUID];
        copyDescription3 = sub_100163A30(NRDLocalDevice, nrUUID);

        if (copyDescription3)
        {
          sub_100168638(copyDescription3, (&self->_connection + 7));
          sub_100167D5C(copyDescription3, (&self->_localAddrClassD.__u6_addr32[3] + 3));
          nrUUID = *(&self->_ipHeaderOffset + 7);
          v12 = *(&self->_idsService + 7);
          queue2 = [(NRLink *)self queue];
          if (qword_1002292C0 == -1)
          {
LABEL_22:
            v30 = qword_1002292C8;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100050704;
            block[3] = &unk_1001FCE28;
            v47 = nrUUID;
            v48 = v12;
            v49 = queue2;
            selfCopy = self;
            v31 = queue2;
            v32 = v12;
            v33 = nrUUID;
            dispatch_async(v30, block);

            goto LABEL_23;
          }
        }

        else
        {
          v37 = sub_100046E64();
          v38 = _NRLogIsLevelEnabled();

          v17 = "[NRLinkQuickRelay sessionStarted:]";
          if (v38)
          {
            v39 = sub_100046E64();
            _NRLogWithArgs();
          }

          startedCopy = _os_log_pack_size();
          self = (&block[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
          v40 = *__error();
          v41 = _os_log_pack_fill();
          *v41 = 136446210;
          *(v41 + 4) = "[NRLinkQuickRelay sessionStarted:]";
          sub_100046E64();
          _NRLogAbortWithPack();
        }

        dispatch_once(&qword_1002292C0, &stru_1001FC4B0);
        goto LABEL_22;
      }

      v26 = &OBJC_IVAR___NRAnalyticsCmpnLinkQuickRelay__idsSessionReceiveInvitationEnd;
    }

    *(v25 + *v26) = v24;
    goto LABEL_18;
  }

  v13 = self->super._nrUUID;
  v14 = _NRCopyLogObjectForNRUUID();
  v15 = _NRLogIsLevelEnabled();

  if (v15)
  {
    v16 = self->super._nrUUID;
    v17 = _NRCopyLogObjectForNRUUID();
    copyDescription3 = [(NRLink *)self copyDescription];
    v43 = *(&self->_idsService + 7);
    _NRLogWithArgs();
LABEL_23:

    goto LABEL_24;
  }

LABEL_25:
}

- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withOptions:(id)options
{
  serviceCopy = service;
  accountCopy = account;
  sessionCopy = session;
  dCopy = d;
  optionsCopy = options;
  queue = [(NRLink *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(NRLink *)self state]!= 255)
  {
    if (serviceCopy)
    {
      if (accountCopy)
      {
        if (sessionCopy)
        {
          nrUUID = self->super._nrUUID;
          v19 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v21 = self->super._nrUUID;
            v22 = _NRCopyLogObjectForNRUUID();
            v71 = 2433;
            copyDescription = [(NRLink *)self copyDescription];
            v69 = "";
            v70 = "[NRLinkQuickRelay service:account:inviteReceivedForSession:fromID:withOptions:]";
            _NRLogWithArgs();
          }

          v23 = self->super._nrUUID;
          v24 = _NRCopyLogObjectForNRUUID();
          v25 = _NRLogIsLevelEnabled();

          if (v25)
          {
            v26 = self->super._nrUUID;
            v27 = _NRCopyLogObjectForNRUUID();
            copyDescription = [(NRLink *)self copyDescription];
            v73 = serviceCopy;
            v71 = 2434;
            v69 = "";
            v70 = "[NRLinkQuickRelay service:account:inviteReceivedForSession:fromID:withOptions:]";
            _NRLogWithArgs();
          }

          v28 = self->super._nrUUID;
          v29 = _NRCopyLogObjectForNRUUID();
          v30 = _NRLogIsLevelEnabled();

          if (v30)
          {
            v31 = self->super._nrUUID;
            v32 = _NRCopyLogObjectForNRUUID();
            copyDescription = [(NRLink *)self copyDescription];
            v73 = accountCopy;
            v71 = 2435;
            v69 = "";
            v70 = "[NRLinkQuickRelay service:account:inviteReceivedForSession:fromID:withOptions:]";
            _NRLogWithArgs();
          }

          v33 = self->super._nrUUID;
          v34 = _NRCopyLogObjectForNRUUID();
          v35 = _NRLogIsLevelEnabled();

          if (v35)
          {
            v36 = self->super._nrUUID;
            v37 = _NRCopyLogObjectForNRUUID();
            copyDescription = [(NRLink *)self copyDescription];
            v73 = sessionCopy;
            v71 = 2436;
            v69 = "";
            v70 = "[NRLinkQuickRelay service:account:inviteReceivedForSession:fromID:withOptions:]";
            _NRLogWithArgs();
          }

          v38 = self->super._nrUUID;
          v39 = _NRCopyLogObjectForNRUUID();
          v40 = _NRLogIsLevelEnabled();

          if (v40)
          {
            v41 = self->super._nrUUID;
            v42 = _NRCopyLogObjectForNRUUID();
            copyDescription = [(NRLink *)self copyDescription];
            v73 = dCopy;
            v71 = 2437;
            v69 = "";
            v70 = "[NRLinkQuickRelay service:account:inviteReceivedForSession:fromID:withOptions:]";
            _NRLogWithArgs();
          }

          v43 = self->super._nrUUID;
          v44 = _NRCopyLogObjectForNRUUID();
          v45 = _NRLogIsLevelEnabled();

          if (v45)
          {
            v46 = self->super._nrUUID;
            v47 = _NRCopyLogObjectForNRUUID();
            copyDescription = [(NRLink *)self copyDescription];
            v73 = optionsCopy;
            v71 = 2438;
            v69 = "";
            v70 = "[NRLinkQuickRelay service:account:inviteReceivedForSession:fromID:withOptions:]";
            _NRLogWithArgs();
          }

          sessionID = [sessionCopy sessionID];
          sub_100047AF0(self, 10004, sessionID);

          [(NRLink *)self reportEvent:10004 detailsFormat:@"%@", sessionCopy];
          v49 = [*(&self->_ipHeaderOffset + 7) deviceForFromID:dCopy];
          if ([v49 isDefaultPairedDevice])
          {
            if (self->_invitationInProgress)
            {
              v50 = *(&self->_pathEvaluator + 7);
              if (v50)
              {
                ++v50[14];
              }

              [(NRLink *)self reportEvent:10005 detailsFormat:@"Cancelling sent: %@, keep received: %@", *(&self->_idsService + 7), sessionCopy];
              [(NRLink *)self reportEvent:10007 detailsFormat:@"%@", *(&self->_idsService + 7)];
              [*(&self->_idsService + 7) cancelInvitation];
              v51 = *(&self->_pathEvaluator + 7);
              if (v51)
              {
                *(v51 + 120) = 0;
              }
            }

            if (*(&self->_idsService + 7))
            {
              [(NRLink *)self reportEvent:10019];
              sub_100047D2C(self);
            }

            objc_storeStrong((&self->_idsService + 7), session);
            self->_idsSessionIsIncoming = 1;
            v52 = *(&self->_idsService + 7);
            queue2 = [(NRLink *)self queue];
            [v52 setDelegate:self queue:queue2];

            v74 = IDSSessionForceInternetInvitationKey;
            v75 = &__kCFBooleanTrue;
            v54 = [NSDictionary dictionaryWithObjects:&v75 forKeys:&v74 count:1];
            [sessionCopy setPreferences:v54];

            [sessionCopy acceptInvitation];
            [(NRLink *)self reportEvent:10006 detailsFormat:@"%@", *(&self->_idsService + 7)];
            v55 = nr_absolute_time();
            v56 = *(&self->_pathEvaluator + 7);
            if (v56)
            {
              *(v56 + 136) = v55;
            }
          }

          else
          {
            [(NRLink *)self reportEvent:10026 detailsFormat:@"Remote device is not the default paired device: %@/%@", sessionCopy, dCopy];
            [sessionCopy declineInvitation];
          }

          goto LABEL_32;
        }

        v66 = sub_100046E64();
        v67 = _NRLogIsLevelEnabled();

        if (!v67)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v64 = sub_100046E64();
        v65 = _NRLogIsLevelEnabled();

        if (!v65)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      v62 = sub_100046E64();
      v63 = _NRLogIsLevelEnabled();

      if (!v63)
      {
        goto LABEL_32;
      }
    }

    v68 = sub_100046E64();
    _NRLogWithArgs();

    goto LABEL_32;
  }

  v57 = self->super._nrUUID;
  v58 = _NRCopyLogObjectForNRUUID();
  v59 = _NRLogIsLevelEnabled();

  if (v59)
  {
    v60 = self->super._nrUUID;
    v61 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs();
  }

  [(NRLink *)self reportEvent:10026 detailsFormat:@"Link is cancelled: %@/%@/%@", self, sessionCopy, dCopy, copyDescription];
  [sessionCopy declineInvitation];
LABEL_32:
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
    v111 = sub_100046E64();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_23;
    }

LABEL_77:
    v121 = sub_100046E64();
    _NRLogWithArgs();

    goto LABEL_23;
  }

  if (!sessionCopy)
  {
    v113 = sub_100046E64();
    v114 = _NRLogIsLevelEnabled();

    if (!v114)
    {
      goto LABEL_23;
    }

    goto LABEL_77;
  }

  if (!configCopy)
  {
    v115 = sub_100046E64();
    v116 = _NRLogIsLevelEnabled();

    if (!v116)
    {
      goto LABEL_23;
    }

    goto LABEL_77;
  }

  if (!blockCopy)
  {
    v117 = sub_100046E64();
    v118 = _NRLogIsLevelEnabled();

    if (!v118)
    {
      goto LABEL_23;
    }

    goto LABEL_77;
  }

  if (!responseBlockCopy)
  {
    v119 = sub_100046E64();
    v120 = _NRLogIsLevelEnabled();

    if (!v120)
    {
      goto LABEL_23;
    }

    goto LABEL_77;
  }

  queue = [(NRLink *)self queue];
  dispatch_assert_queue_V2(queue);

  nrUUID = self->super._nrUUID;
  v23 = _NRCopyLogObjectForNRUUID();
  v24 = _NRLogIsLevelEnabled();

  if (v24)
  {
    v25 = self->super._nrUUID;
    v26 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs();
  }

  state = self->super._state;
  v158 = childConfigCopy;
  if (state == 255)
  {
    goto LABEL_20;
  }

  localIdentifier = [configCopy localIdentifier];
  identifierType = [localIdentifier identifierType];

  if (identifierType == 11)
  {
    remoteIdentifier = [configCopy remoteIdentifier];
    identifierType2 = [remoteIdentifier identifierType];

    if (identifierType2 == 11)
    {
      nrUUID = [(NRLink *)self nrUUID];
      localIdentifier4 = sub_100163A30(NRDLocalDevice, nrUUID);

      v157 = localIdentifier4;
      if (!localIdentifier4)
      {
        v122 = sub_100046E64();
        v123 = _NRLogIsLevelEnabled();

        if (v123)
        {
          v124 = sub_100046E64();
          _NRLogWithArgs();
        }

        _os_log_pack_size();
        sessionCopy = &v152 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v125 = *__error();
        v126 = _os_log_pack_fill();
        *v126 = 136446210;
        *(v126 + 4) = "[NRLinkQuickRelay requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]";
        sub_100046E64();
        _NRLogAbortWithPack();
LABEL_81:
        dispatch_once(&qword_1002292E8, &stru_1001FC558);
LABEL_38:
        v67 = v158;
        v68 = qword_1002292E0;
        v69 = [localIdentifier4 isEqual:v68];

        if (v69)
        {
          v70 = nr_absolute_time();
          v71 = *(&self->_pathEvaluator + 7);
          if (v71)
          {
            *(v71 + 56) = v70;
            v72 = *(&self->_pathEvaluator + 7);
            if (v72)
            {
              ++v72[10];
            }

            if (v67)
            {
              goto LABEL_43;
            }
          }

          else
          {

            if (v67)
            {
              goto LABEL_43;
            }
          }

          if ([(NRLink *)self hasCompanionDatapath])
          {
            [(NRLink *)self reportEvent:3024 detailsFormat:@"ClassD %@", sessionCopy];
LABEL_100:
            v37 = childConfigCopy;
            goto LABEL_93;
          }

LABEL_43:
          v73 = sub_100003490();
          dispatch_assert_queue_V2(v73);

          v74 = sub_1001672A0(childConfigCopy, @"0");
          v75 = sub_100003490();
          dispatch_assert_queue_V2(v75);

          v76 = sub_1001677D0(childConfigCopy, @"0");
          v38 = sub_100147400(0, childConfigCopy, 4);
          v77 = [NEIKEv2ConfigurationMessage alloc];
          v78 = [NEIKEv2InitiatorTransportIPv6Address alloc];
          v153 = v76;
          v79 = [v78 initWithAddress:v76];
          v160[0] = v79;
          v80 = [NEIKEv2ResponderTransportIPv6Address alloc];
          v154 = v74;
          v81 = [v80 initWithAddress:v74];
          v160[1] = v81;
          v82 = [NSArray arrayWithObjects:v160 count:2];
          v83 = [v77 initWithWithAttributes:v82];
          [v38 setConfigurationReply:v83];

          blockCopy = v155;
          if (v155[2](v155, v38))
          {
            v84 = 4;
            [(NRLinkQuickRelay *)self invalidateIKESessionForClass:4];
            objc_storeStrong((&self->_ikeListener + 7), session);
            v85 = @"ClassD %@";
LABEL_54:
            listenerCopy = v156;
            sub_10004A3CC(self, v84);
            [(NRLink *)self reportEvent:3016 detailsFormat:v85, sessionCopy];

LABEL_56:
            if (self->super._virtualInterface)
            {

              virtualInterface = self->super._virtualInterface;
              v103 = sub_100146D34(1, 0);
              if (![(NRLink *)self hasCompanionDatapath])
              {

                virtualInterface = 0;
                v103 = 0;
              }

              (v20)[2](v20, v38, v103, virtualInterface);

              goto LABEL_22;
            }

            v127 = self->super._nrUUID;
            v128 = _NRCopyLogObjectForNRUUID();
            v129 = _NRLogIsLevelEnabled();

            if (v129)
            {
              v130 = self->super._nrUUID;
              v131 = _NRCopyLogObjectForNRUUID();
              copyDescription2 = [(NRLink *)self copyDescription];
              _NRLogWithArgs();
            }

            goto LABEL_64;
          }

          [(NRLink *)self reportEvent:3021 detailsFormat:@"ClassD %@", sessionCopy];

          goto LABEL_66;
        }

        localIdentifier2 = [configCopy localIdentifier];
        if (qword_1002292F8 != -1)
        {
          dispatch_once(&qword_1002292F8, &stru_1001FC578);
        }

        v87 = qword_1002292F0;
        v88 = [localIdentifier2 isEqual:v87];

        if (!v88)
        {
          v38 = 0;
          blockCopy = v155;
          listenerCopy = v156;
          goto LABEL_56;
        }

        v89 = nr_absolute_time();
        v90 = *(&self->_pathEvaluator + 7);
        if (v90)
        {
          *(v90 + 40) = v89;
          v91 = *(&self->_pathEvaluator + 7);
          if (v91)
          {
            ++v91[9];
          }

          if (v67)
          {
            goto LABEL_52;
          }
        }

        else
        {

          if (v67)
          {
            goto LABEL_52;
          }
        }

        if ([(NRLink *)self hasCompanionDatapath])
        {
          [(NRLink *)self reportEvent:3024 detailsFormat:@"ClassC %@", sessionCopy];
          goto LABEL_100;
        }

LABEL_52:
        v92 = sub_100003490();
        dispatch_assert_queue_V2(v92);

        v93 = sub_1001679E0(childConfigCopy, @"0");
        v94 = sub_100003490();
        dispatch_assert_queue_V2(v94);

        v95 = sub_100167B9C(childConfigCopy, @"0");
        v38 = sub_100147400(0, childConfigCopy, 3);
        v96 = [NEIKEv2ConfigurationMessage alloc];
        v97 = [[NEIKEv2InitiatorTransportIPv6Address alloc] initWithAddress:v95];
        v159[0] = v97;
        v98 = [NEIKEv2ResponderTransportIPv6Address alloc];
        v154 = v93;
        v99 = [v98 initWithAddress:v93];
        v159[1] = v99;
        v100 = [NSArray arrayWithObjects:v159 count:2];
        v101 = [v96 initWithWithAttributes:v100];
        [v38 setConfigurationReply:v101];

        blockCopy = v155;
        if (v155[2](v155, v38))
        {
          v153 = v95;
          v84 = 3;
          [(NRLinkQuickRelay *)self invalidateIKESessionForClass:3];
          sub_1000522F4(self, sessionCopy);
          v85 = @"ClassC %@";
          goto LABEL_54;
        }

        [(NRLink *)self reportEvent:3021 detailsFormat:@"ClassC %@", sessionCopy];

LABEL_66:
        listenerCopy = v156;
        v37 = v157;
        goto LABEL_67;
      }

      localIdentifier3 = [configCopy localIdentifier];
      remoteIdentifier2 = [configCopy remoteIdentifier];
      v36 = [localIdentifier3 isEqual:remoteIdentifier2];

      v155 = blockCopy;
      v156 = listenerCopy;
      if (v36)
      {
        childConfigCopy = v157;
        if ((*(v157 + 49) & 2) != 0)
        {
          [(NRLink *)self reportEvent:3022 detailsFormat:@"%@ %@", sessionCopy, v157];
          v37 = v157;
          v38 = 0;
LABEL_67:

          goto LABEL_21;
        }

LABEL_37:
        localIdentifier4 = [configCopy localIdentifier];
        if (qword_1002292E8 == -1)
        {
          goto LABEL_38;
        }

        goto LABEL_81;
      }

      localIdentifier5 = [configCopy localIdentifier];
      if (qword_1002292E8 != -1)
      {
        dispatch_once(&qword_1002292E8, &stru_1001FC558);
      }

      v51 = qword_1002292E0;
      if ([localIdentifier5 isEqual:v51])
      {
      }

      else
      {
        localIdentifier6 = [configCopy localIdentifier];
        if (qword_1002292F8 != -1)
        {
          dispatch_once(&qword_1002292F8, &stru_1001FC578);
        }

        v53 = qword_1002292F0;
        v54 = [localIdentifier6 isEqual:v53];

        if ((v54 & 1) == 0)
        {
          v104 = self->super._nrUUID;
          v105 = _NRCopyLogObjectForNRUUID();
          v106 = _NRLogIsLevelEnabled();

          if (v106)
          {
            v107 = self->super._nrUUID;
            v108 = _NRCopyLogObjectForNRUUID();
            copyDescription3 = [(NRLink *)self copyDescription];
            localIdentifier7 = [configCopy localIdentifier];
            remoteIdentifier3 = [configCopy remoteIdentifier];
            _NRLogWithArgs();
          }

          v38 = 0;
LABEL_64:
          blockCopy = v155;
          listenerCopy = v156;
          v37 = v157;
          goto LABEL_67;
        }
      }

      remoteIdentifier4 = [configCopy remoteIdentifier];
      localIdentifier8 = [configCopy localIdentifier];
      v57 = sub_1001646B4(NRDLocalDevice, remoteIdentifier4, localIdentifier8, sessionCopy);

      v58 = self->super._nrUUID;
      v59 = _NRCopyLogObjectForNRUUID();
      if (v57)
      {
        v60 = _NRLogIsLevelEnabled();

        if (v60)
        {
          v61 = self->super._nrUUID;
          v62 = _NRCopyLogObjectForNRUUID();
          copyDescription4 = [(NRLink *)self copyDescription];
          v148 = v57->_identity;
          _NRLogWithArgs();
        }

        v63 = v57->_nrUUID;

        if (v63)
        {
          v64 = v57->_nrUUID;
          nrUUID2 = [(NRLink *)self nrUUID];
          v66 = [(NSUUID *)v64 isEqual:nrUUID2];

          if (v66)
          {

            childConfigCopy = v157;
            goto LABEL_37;
          }

          v141 = self->super._nrUUID;
          v142 = _NRCopyLogObjectForNRUUID();
          v143 = _NRLogIsLevelEnabled();

          if (v143)
          {
            v144 = self->super._nrUUID;
            v134 = _NRCopyLogObjectForNRUUID();
            copyDescription5 = [(NRLink *)self copyDescription];
            v140 = v57->_identity;
            v145 = v57->_nrUUID;
            nrUUID3 = [(NRLink *)self nrUUID];
            _NRLogWithArgs();

            goto LABEL_90;
          }
        }

        else
        {
          v136 = self->super._nrUUID;
          v137 = _NRCopyLogObjectForNRUUID();
          v138 = _NRLogIsLevelEnabled();

          if (v138)
          {
            v139 = self->super._nrUUID;
            v134 = _NRCopyLogObjectForNRUUID();
            copyDescription5 = [(NRLink *)self copyDescription];
            v140 = v57->_identity;
            _NRLogWithArgs();
LABEL_90:

            goto LABEL_91;
          }
        }
      }

      else
      {
        v132 = _NRLogIsLevelEnabled();

        if (v132)
        {
          v133 = self->super._nrUUID;
          v134 = _NRCopyLogObjectForNRUUID();
          copyDescription5 = [(NRLink *)self copyDescription];
          _NRLogWithArgs();
LABEL_91:
        }
      }

      v37 = v157;
      [(NRLink *)self reportEvent:3023 detailsFormat:@"%@ %@", sessionCopy, v157];

LABEL_93:
      v38 = 0;
      blockCopy = v155;
      listenerCopy = v156;
      goto LABEL_67;
    }

    v46 = self->super._nrUUID;
    v47 = _NRCopyLogObjectForNRUUID();
    v48 = _NRLogIsLevelEnabled();

    if (v48)
    {
      v49 = self->super._nrUUID;
      v43 = _NRCopyLogObjectForNRUUID();
      copyDescription6 = [(NRLink *)self copyDescription];
      remoteIdentifier5 = [configCopy remoteIdentifier];
      [remoteIdentifier5 identifierType];
      goto LABEL_19;
    }
  }

  else
  {
    v39 = self->super._nrUUID;
    v40 = _NRCopyLogObjectForNRUUID();
    v41 = _NRLogIsLevelEnabled();

    if (v41)
    {
      v42 = self->super._nrUUID;
      v43 = _NRCopyLogObjectForNRUUID();
      copyDescription6 = [(NRLink *)self copyDescription];
      remoteIdentifier5 = [configCopy localIdentifier];
      [remoteIdentifier5 identifierType];
LABEL_19:
      _NRLogWithArgs();
    }
  }

LABEL_20:
  v38 = 0;
LABEL_21:
  v20[2](v20, 0, 0, 0);
LABEL_22:

  childConfigCopy = v158;
LABEL_23:
}

- (void)setPacketReceiver:(id)receiver
{
  receiverCopy = receiver;
  if (receiverCopy)
  {
    queue = [(NRLink *)self queue];
    dispatch_assert_queue_V2(queue);

    nrUUID = self->super._nrUUID;
    v8 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = self->super._nrUUID;
      v11 = _NRCopyLogObjectForNRUUID();
      v27 = 2221;
      copyDescription = [(NRLink *)self copyDescription];
      v25 = "";
      v26 = "[NRLinkQuickRelay setPacketReceiver:]";
      _NRLogWithArgs();
    }

    objc_storeStrong((&self->_packetNexus + 7), receiver);
    if ([*(&self->_ikeSessionTimeoutSource + 7) count])
    {
      v12 = self->super._nrUUID;
      v13 = _NRCopyLogObjectForNRUUID();
      v14 = _NRLogIsLevelEnabled();

      if (v14)
      {
        v15 = self->super._nrUUID;
        v16 = _NRCopyLogObjectForNRUUID();
        copyDescription = [(NRLink *)self copyDescription];
        v29 = [*(&self->_ikeSessionTimeoutSource + 7) count];
        v27 = 2225;
        v25 = "";
        v26 = "[NRLinkQuickRelay setPacketReceiver:]";
        _NRLogWithArgs();
      }
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = *(&self->_ikeSessionTimeoutSource + 7);
    v18 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [*(&self->_packetNexus + 7) receivePacketData:{*(*(&v30 + 1) + 8 * i), v25, v26, v27, copyDescription, v29}];
        }

        v19 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v19);
    }

    [*(&self->_ikeSessionTimeoutSource + 7) removeAllObjects];
  }

  else
  {
    v22 = sub_100046E64();
    v23 = _NRLogIsLevelEnabled();

    if (v23)
    {
      v24 = sub_100046E64();
      _NRLogWithArgs();
    }
  }
}

- (BOOL)sendPacketData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    v43 = sub_100046E64();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v45 = sub_100046E64();
      _NRLogWithArgs();

      v18 = 0;
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  queue = [(NRLink *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->super._state != 255)
  {
    v6 = *(&self->_nexusOutputAvailableCount + 7);
    IKEv2PacketString = createIKEv2PacketString();
    v8 = [dataCopy length];
    connection = [(NRLinkQuickRelay *)self connection];
    connection2 = [(NRLinkQuickRelay *)self connection];
    connectionState = [connection2 connectionState];
    if (connectionState >= 6)
    {
      v12 = [[NSString alloc] initWithFormat:@"Unknown[%lld]", connectionState];
    }

    else
    {
      v12 = *(&off_1001FAB20 + connectionState);
    }

    [(NRLink *)self reportEvent:3006 detailsFormat:@"Sending IKEv2 packet #%llu %@ len %u connection %@ state %@", v6, IKEv2PacketString, v8, connection, v12];

    ++*(&self->_nexusOutputAvailableCount + 7);
    v19 = objc_alloc_init(NSMutableData);
    v55 = 4;
    v54 = bswap32([dataCopy length]) >> 16;
    [v19 appendBytes:&v55 length:1];
    [v19 appendBytes:&v54 length:2];
    [v19 appendData:dataCopy];
    [v19 bytes];
    if (![v19 length])
    {
      v47 = sub_100046E64();
      v48 = _NRLogIsLevelEnabled();

      if (v48)
      {
        v49 = sub_100046E64();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      __chkstk_darwin();
      v50 = *__error();
      v51 = _os_log_pack_fill();
      *v51 = 136446210;
      *(v51 + 4) = "nrChecksumFull";
      sub_100046E64();
      _NRLogAbortWithPack();
    }

    v53 = ~os_inet_checksum();
    [v19 appendBytes:&v53 length:2];
    v20 = v19;
    dispatch_assert_queue_V2(self->super._queue);
    if (self->super._state == 255)
    {
      nrUUID = self->super._nrUUID;
      v25 = _NRCopyLogObjectForNRUUID();
      v26 = _NRLogIsLevelEnabled();

      if (!v26)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v21 = *(&self->_linkAnalytics + 7);
      if (v21)
      {
        if ([v21 connectionState] == 3)
        {
          *(&self->_lastRecordedSessionInvitationCounter + 7) += [v20 length];
          v22 = *(&self->_linkAnalytics + 7);
          v58 = v20;
          v23 = [NSArray arrayWithObjects:&v58 count:1];
          v56[0] = _NSConcreteStackBlock;
          v56[1] = 3221225472;
          v56[2] = sub_100052CA0;
          v56[3] = &unk_1001FAA58;
          v56[4] = self;
          v57 = v20;
          [v22 writeDatagrams:v23 completionHandler:v56];

LABEL_26:
          v18 = 1;
          goto LABEL_30;
        }

        v33 = *(&self->_linkAnalytics + 7);
        connectionState2 = [v33 connectionState];
        if (connectionState2 >= 6)
        {
          v35 = [[NSString alloc] initWithFormat:@"Unknown[%lld]", connectionState2];
        }

        else
        {
          v35 = *(&off_1001FAB20 + connectionState2);
        }

        [(NRLink *)self reportEvent:10022 detailsFormat:@"cannot write to connection %@ state %@", v33, v35];

        v36 = self->super._nrUUID;
        v37 = _NRCopyLogObjectForNRUUID();
        v38 = _NRLogIsLevelEnabled();

        if (!v38)
        {
          goto LABEL_26;
        }

        v39 = self->super._nrUUID;
        v31 = _NRCopyLogObjectForNRUUID();
        copyDescription = [(NRLink *)self copyDescription];
        connectionState3 = [*(&self->_linkAnalytics + 7) connectionState];
        if (connectionState3 >= 6)
        {
          v42 = [[NSString alloc] initWithFormat:@"Unknown[%lld]", connectionState3];
        }

        else
        {
          v42 = *(&off_1001FAB20 + connectionState3);
        }

        _NRLogWithArgs();

LABEL_25:
        goto LABEL_26;
      }

      v27 = self->super._nrUUID;
      v28 = _NRCopyLogObjectForNRUUID();
      v29 = _NRLogIsLevelEnabled();

      if (!v29)
      {
        goto LABEL_26;
      }
    }

    v30 = self->super._nrUUID;
    v31 = _NRCopyLogObjectForNRUUID();
    copyDescription2 = [(NRLink *)self copyDescription];
    _NRLogWithArgs();

    goto LABEL_25;
  }

  v13 = self->super._nrUUID;
  v14 = _NRCopyLogObjectForNRUUID();
  v15 = _NRLogIsLevelEnabled();

  if (!v15)
  {
LABEL_29:
    v18 = 0;
    goto LABEL_30;
  }

  v16 = self->super._nrUUID;
  v17 = _NRCopyLogObjectForNRUUID();
  copyDescription3 = [(NRLink *)self copyDescription];
  _NRLogWithArgs();

  v18 = 0;
LABEL_30:

  return v18;
}

- (BOOL)sendControlData:(id)data
{
  dataCopy = data;
  connection = [(NRLinkQuickRelay *)self connection];

  if (connection)
  {
    if (dataCopy)
    {
      v6 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50702 notifyData:dataCopy];
      v7 = v6 != 0;
      if (v6)
      {
        objc_initWeak(&location, self);
        v8 = *(&self->_ikeListener + 7);
        v27 = v6;
        v9 = [NSArray arrayWithObjects:&v27 count:1];
        queue = [(NRLink *)self queue];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100053248;
        v24[3] = &unk_1001FC018;
        objc_copyWeak(&v25, &location);
        [v8 sendPrivateNotifies:v9 maxRetries:10 retryIntervalInMilliseconds:1000 callbackQueue:queue callback:v24];

        objc_destroyWeak(&v25);
        objc_destroyWeak(&location);
      }

      else
      {
        v20 = sub_100046E64();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v22 = sub_100046E64();
          _NRLogWithArgs();
        }
      }
    }

    else
    {
      v17 = sub_100046E64();
      v18 = _NRLogIsLevelEnabled();

      if (v18)
      {
        v19 = sub_100046E64();
        _NRLogWithArgs();
      }

      v7 = 0;
    }
  }

  else
  {
    nrUUID = self->super._nrUUID;
    v12 = _NRCopyLogObjectForNRUUID();
    v7 = 1;
    v13 = _NRLogIsLevelEnabled();

    if (v13)
    {
      v14 = self->super._nrUUID;
      v15 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs();
    }
  }

  return v7;
}

- (void)invalidateIKESessionForClass:(unsigned __int8)class
{
  classCopy = class;
  v5.receiver = self;
  v5.super_class = NRLinkQuickRelay;
  [(NRLink *)&v5 invalidateIKESessionForClass:?];
  [(NRLink *)self invalidateIKESession:sub_10004A258(self, classCopy)];
}

- (BOOL)resume
{
  if ([(NRLink *)self state]== 255)
  {
    nrUUID = self->super._nrUUID;
    v12 = _NRCopyLogObjectForNRUUID();
    LOBYTE(idsSessionIsIncoming) = 1;
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v14 = self->super._nrUUID;
      v9 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      goto LABEL_11;
    }
  }

  else if ([(NRLink *)self state]== 9)
  {
    if (!self)
    {
      goto LABEL_15;
    }

    LOBYTE(idsSessionIsIncoming) = 1;
    if (self->_resumeRequested)
    {
      return idsSessionIsIncoming;
    }

    self->_resumeRequested = 1;
    v4 = *(&self->_idsService + 7);
    if (!v4 || (idsSessionIsIncoming = self->_idsSessionIsIncoming, v4, !idsSessionIsIncoming))
    {
LABEL_15:
      sub_1000535E8(self);
      LOBYTE(idsSessionIsIncoming) = 1;
      return idsSessionIsIncoming;
    }

    v5 = self->super._nrUUID;
    v6 = _NRCopyLogObjectForNRUUID();
    v7 = _NRLogIsLevelEnabled();

    if (v7)
    {
      v8 = self->super._nrUUID;
      v9 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      LOBYTE(idsSessionIsIncoming) = 1;
LABEL_11:
      _NRLogWithArgs();
    }
  }

  else
  {
    v15 = self->super._nrUUID;
    v16 = _NRCopyLogObjectForNRUUID();
    v17 = _NRLogIsLevelEnabled();

    if (v17)
    {
      v18 = self->super._nrUUID;
      v19 = _NRCopyLogObjectForNRUUID();
      copyDescription2 = [(NRLink *)self copyDescription];
      _NRLogWithArgs();
    }

    LOBYTE(idsSessionIsIncoming) = 0;
  }

  return idsSessionIsIncoming;
}

- (BOOL)suspend
{
  queue = [(NRLink *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self && self->_shouldCancelOnSuspend)
  {
    self->_shouldCancelOnSuspend = 0;
    [(NRLinkQuickRelay *)self cancelWithReason:@"Cancelling after link timeout and after suspend"];
  }

  if ([(NRLink *)self state]== 255)
  {
    nrUUID = self->super._nrUUID;
    v10 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v12 = self->super._nrUUID;
      v13 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs();
    }
  }

  else
  {
    if (![(NRLink *)self changeStateTo:9])
    {
      v4 = self->super._nrUUID;
      v5 = _NRCopyLogObjectForNRUUID();
      v6 = _NRLogIsLevelEnabled();

      if (v6)
      {
        v7 = self->super._nrUUID;
        v8 = _NRCopyLogObjectForNRUUID();
        v23 = 486;
        copyDescription2 = [(NRLink *)self copyDescription];
        v21 = "";
        v22 = "[NRLinkQuickRelay suspend]";
        _NRLogWithArgs();
      }
    }

    if (self->_dNexusReadSourceSuspended)
    {
      dispatch_resume(*(&self->_nexusOutputRing + 7));
      self->_dNexusReadSourceSuspended = 0;
    }

    if (![(NRLink *)self ikeClassDEstablished:v21])
    {
      [(NRLinkQuickRelay *)self invalidateIKESessionForClass:4];
    }

    if (![(NRLink *)self ikeClassCEstablished])
    {
      [(NRLinkQuickRelay *)self invalidateIKESessionForClass:3];
    }

    self->_resumeRequested = 0;
    self->_hasPendingInputAvailable = 0;
    self->_ikeClassCRetryCounter = 0;
    self->_ikeClassDRetryCounter = 0;
    self->_invitationRetryCounter = 0;
    if ([(NRLink *)self hasCompanionDatapath])
    {
      [*(&self->_ikeSessionClassC + 7) setAvailability:0];
    }

    else if ([(NRLink *)self virtualInterface])
    {
      [(NRLink *)self virtualInterface];
      NEVirtualInterfaceSetRankNever();
      [(NRLink *)self virtualInterface];
      NEVirtualInterfaceUpdateAdHocService();
    }

    sub_100047D2C(self);
    v14 = *(&self->_pathEvaluator + 7);
    if (v14)
    {
      *(v14 + 32) = *(&self->_sentIKEv2PointToPoint + 7) + *(&self->_nexusOutputAvailableCount + 7);
      v15 = *(&self->_pathEvaluator + 7);
      if (v15)
      {
        *(v15 + 88) = *(&self->_lastRecordedBytesFromQR + 7);
        v16 = *(&self->_pathEvaluator + 7);
        if (v16)
        {
          *(v16 + 96) = *(&self->_bytesFromNexus + 7);
        }
      }
    }

    [(NRLink *)self linkTotalReadyTimeInSec];
    v18 = *(&self->_pathEvaluator + 7);
    if (v18)
    {
      *(v18 + 24) = v17;
    }

    linkDelegate = [(NRLink *)self linkDelegate];
    [linkDelegate linkIsSuspended:self];

    [*(&self->_pathEvaluator + 7) submit];
    [*(&self->_pathEvaluator + 7) reset];
    self->super._linkTotalReadyTimeInSec = 0.0;
    *(&self->_nexusOutputAvailableCount + 7) = 0;
    *(&self->_sentIKEv2PointToPoint + 7) = 0;
    *(&self->_lastRecordedBytesFromQR + 7) = 0;
    *(&self->_bytesFromNexus + 7) = 0;
  }

  return 1;
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

    if (IsLevelEnabled)
    {
      v9 = self->super._nrUUID;
      v10 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs();
    }

    LOBYTE(v5) = 0;
  }

  else
  {
    if ([(NRLink *)self state]== 8)
    {
      linkDelegate = [(NRLink *)self linkDelegate];
      [linkDelegate linkIsReady:self];
      goto LABEL_4;
    }

    if ([(NRLink *)self state]!= 9)
    {
      if ([(NRLink *)self startRequested])
      {
        goto LABEL_5;
      }

      v5 = sub_1000539DC(self);
      if (!v5)
      {
        return v5;
      }

      [(NRLink *)self setStartRequested:1];
      [(NRLink *)self reportEvent:3001];
      if (!self || (v11 = *(&self->_idsService + 7)) == 0 || (idsSessionIsIncoming = self->_idsSessionIsIncoming, v11, !idsSessionIsIncoming))
      {
        sub_1000535E8(self);
        goto LABEL_5;
      }

      v13 = self->super._nrUUID;
      v14 = _NRCopyLogObjectForNRUUID();
      v15 = _NRLogIsLevelEnabled();

      LOBYTE(v5) = 1;
      if (!v15)
      {
        return v5;
      }

      v16 = self->super._nrUUID;
      linkDelegate = _NRCopyLogObjectForNRUUID();
      copyDescription2 = [(NRLink *)self copyDescription];
      _NRLogWithArgs();

LABEL_4:
LABEL_5:
      LOBYTE(v5) = 1;
      return v5;
    }

    LOBYTE(v5) = [(NRLinkQuickRelay *)self resume];
  }

  return v5;
}

- (id)copyStatusString
{
  queue = [(NRLink *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = [NSMutableString alloc];
  v5 = [(NRLink *)self description];
  v6 = [v4 initWithString:v5];

  [v6 appendFormat:@"\n %35s = %@", "nrUUID", self->super._nrUUID];
  if (self->super._startRequested)
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  [v6 appendFormat:@"\n %35s = %s", "startRequested", v7];
  if (self->_resumeRequested)
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  [v6 appendFormat:@"\n %35s = %s", "resumeRequested", v8];
  [v6 appendFormat:@"\n %35s = %@", "idsService", *(&self->_ipHeaderOffset + 7)];
  [v6 appendFormat:@"\n %35s = %@", "idsSession", *(&self->_idsService + 7)];
  [v6 appendFormat:@"\n %35s = %@", "idsDestination", *(&self->_idsSession + 7)];
  if (self->_idsSessionStarted)
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  [v6 appendFormat:@"\n %35s = %s", "idsSessionStarted", v9];
  if (self->_invitationInProgress)
  {
    v10 = "YES";
  }

  else
  {
    v10 = "NO";
  }

  [v6 appendFormat:@"\n %35s = %s", "invitationInProgress", v10];
  [v6 appendFormat:@"\n %35s = %llu", "sessionInvitationCounter", *(&self->_ikeClassCEstablishedTime + 7)];
  [v6 appendFormat:@"\n %35s = %@", "idsSessionStartTime", *(&self->_idsDestination + 7)];
  [v6 appendFormat:@"\n %35s = %@", "connection", *(&self->_linkAnalytics + 7)];
  v11 = *(&self->_linkAnalytics + 7);
  if (v11)
  {
    connectionState = [v11 connectionState];
    if (connectionState >= 6)
    {
      v13 = [[NSString alloc] initWithFormat:@"Unknown[%lld]", connectionState];
    }

    else
    {
      v13 = *(&off_1001FAB20 + connectionState);
    }

    [v6 appendFormat:@"\n %35s = %@", "connectionState", v13];
  }

  [v6 appendFormat:@"\n %35s = %@", "ikeListener", *(&self->_idsSessionStartTime + 7)];
  [v6 appendFormat:@"\n %35s = %@", "ikeSessionClassD", *(&self->_ikeListener + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "ikeClassDRetryCounter", self->_ikeClassDRetryCounter];
  if (self->super._ikeClassDEstablished)
  {
    v14 = "YES";
  }

  else
  {
    v14 = "NO";
  }

  [v6 appendFormat:@"\n %35s = %s", "ikeClassDEstablished", v14];
  [v6 appendFormat:@"\n %35s = %@", "ikeClassDEstablishedTime", *(&self->_receivedDatagrams + 7)];
  [v6 appendFormat:@"\n %35s = %@", "ikeSessionClassC", *(&self->_ikeSessionClassD + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "ikeClassCRetryCounter", self->_ikeClassCRetryCounter];
  if (self->super._ikeClassCEstablished)
  {
    v15 = "YES";
  }

  else
  {
    v15 = "NO";
  }

  [v6 appendFormat:@"\n %35s = %s", "ikeClassCEstablished", v15];
  [v6 appendFormat:@"\n %35s = %@", "ikeClassCEstablishedTime", *(&self->_ikeClassDEstablishedTime + 7)];
  if (self->_isResponder)
  {
    v16 = "YES";
  }

  else
  {
    v16 = "NO";
  }

  [v6 appendFormat:@"\n %35s = %s", "isResponder", v16];
  [v6 appendFormat:@"\n %35s = %@", "packetNexus", *(&self->_ikeSessionClassC + 7)];
  [v6 appendFormat:@"\n %35s = %@", "ikePacketReceiver", *(&self->_packetNexus + 7)];
  if (self->super._virtualInterface)
  {
    v17 = NEVirtualInterfaceCopyName();
    [v6 appendFormat:@"\n %35s = %@", "virtualInterfaceName", v17];
  }

  [v6 appendFormat:@"\n %35s = %p", "nexusChannel", *(&self->_ikePacketReceiver + 7)];
  [v6 appendFormat:@"\n %35s = %p", "nexusInputRing", *(&self->_nexusChannel + 7)];
  [v6 appendFormat:@"\n %35s = %p", "dNexusReadSource", *(&self->_nexusOutputRing + 7)];
  [v6 appendFormat:@"\n %35s = %p", "dNexusWriteSource", *(&self->_dNexusReadSource + 7)];
  if (self->_dNexusReadSourceSuspended)
  {
    v18 = "YES";
  }

  else
  {
    v18 = "NO";
  }

  [v6 appendFormat:@"\n %35s = %s", "dNexusReadSourceSuspended", v18];
  if (self->_dNexusWriteSourceSuspended)
  {
    v19 = "YES";
  }

  else
  {
    v19 = "NO";
  }

  [v6 appendFormat:@"\n %35s = %s", "dNexusWriteSourceSuspended", v19];
  if (self->_hasPendingInputAvailable)
  {
    v20 = "YES";
  }

  else
  {
    v20 = "NO";
  }

  [v6 appendFormat:@"\n %35s = %s", "hasPendingInputAvailable", v20];
  [v6 appendFormat:@"\n %35s = %llu", "bytesFromNexus", *(&self->_lastRecordedBytesFromQR + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "bytesFromQR", *(&self->_bytesToQRSendFailed + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "bytesToQRBeforeSend", *(&self->_lastRecordedSessionInvitationCounter + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "bytesToQRSent", *(&self->_bytesToQRBeforeSend + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "bytesToQRSendFailed", *(&self->_bytesToQRSent + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "bytesToNexus", *(&self->_bytesFromNexus + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "receivedDatagrams.count", objc_msgSend(*(&self->_nexusGroup + 7), "count")];
  [v6 appendFormat:@"\n %35s = %llu", "nexusInputAvailableCount", *(&self->_bytesToNexus + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "nexusOutputAvailableCount", *(&self->_nexusInputAvailableCount + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "sentIKEv2PointToPoint", *(&self->_nexusOutputAvailableCount + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "recvIKEv2PointToPoint", *(&self->_sentIKEv2PointToPoint + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "sentUncompressedIP", *(&self->_recvIKEv2PointToPoint + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "recvUncompressedIP", *(&self->_sentKnownIPv6Hdr_TCP_ECT0 + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "sentEncapsulated6LoWPAN", *(&self->_sentUncompressedIP + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "recvEncapsulated6LoWPAN", *(&self->_recvUncompressedIP + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "sentKnownIPv6Hdr_ESP", *(&self->_sentEncapsulated6LoWPAN + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "recvKnownIPv6Hdr_ESP", *(&self->_recvEncapsulated6LoWPAN + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "sentKnownIPv6Hdr_ESP_ECT0", *(&self->_sentKnownIPv6Hdr_ESP + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "recvKnownIPv6Hdr_ESP_ECT0", *(&self->_recvKnownIPv6Hdr_ESP + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "sentKnownIPv6Hdr_ESP_ClassC", *(&self->_sentKnownIPv6Hdr_ESP_ECT0 + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "recvKnownIPv6Hdr_ESP_ClassC", *(&self->_recvKnownIPv6Hdr_ESP_ECT0 + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "sentKnownIPv6Hdr_ESP_ClassC_ECT0", *(&self->_sentKnownIPv6Hdr_ESP_ClassC + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "recvKnownIPv6Hdr_ESP_ClassC_ECT0", *(&self->_recvKnownIPv6Hdr_ESP_ClassC + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "sentKnownIPv6Hdr_TCP", *(&self->_sentKnownIPv6Hdr_ESP_ClassC_ECT0 + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "recvKnownIPv6Hdr_TCP", *(&self->_recvKnownIPv6Hdr_ESP_ClassC_ECT0 + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "sentKnownIPv6Hdr_TCP_ECT0", *(&self->_sentKnownIPv6Hdr_TCP + 7)];
  [v6 appendFormat:@"\n %35s = %llu", "recvKnownIPv6Hdr_TCP_ECT0", *(&self->_recvKnownIPv6Hdr_TCP + 7)];
  return v6;
}

- (BOOL)cancelWithReason:(id)reason
{
  reasonCopy = reason;
  if (reasonCopy)
  {
    queue = [(NRLink *)self queue];
    dispatch_assert_queue_V2(queue);

    v6 = [[NSString alloc] initWithFormat:reasonCopy arguments:&v24];
    if ([(NRLink *)self changeStateTo:255 details:v6])
    {
      if (self)
      {
        v7 = *(&self->_pathEvaluator + 7);
        if (v7)
        {
          *(v7 + 32) = *(&self->_sentIKEv2PointToPoint + 7) + *(&self->_nexusOutputAvailableCount + 7);
          v8 = *(&self->_pathEvaluator + 7);
          if (v8)
          {
            *(v8 + 88) = *(&self->_lastRecordedBytesFromQR + 7);
            v9 = *(&self->_pathEvaluator + 7);
            if (v9)
            {
              *(v9 + 96) = *(&self->_bytesFromNexus + 7);
            }
          }
        }

        [(NRLink *)self linkTotalReadyTimeInSec];
        v11 = *(&self->_pathEvaluator + 7);
        if (v11)
        {
          *(v11 + 24) = v10;
        }

        linkDelegate = [(NRLink *)self linkDelegate];
        [linkDelegate linkIsUnavailable:self];

        [(NRLinkQuickRelay *)self invalidateLink];
        v13 = *(&self->_pathEvaluator + 7);
      }

      else
      {
        [0 linkTotalReadyTimeInSec];
        linkDelegate2 = [0 linkDelegate];
        [linkDelegate2 linkIsUnavailable:0];

        [0 invalidateLink];
        v13 = 0;
      }

      [v13 submit];
    }

    else
    {
      nrUUID = self->super._nrUUID;
      v15 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v17 = self->super._nrUUID;
        v18 = _NRCopyLogObjectForNRUUID();
        copyDescription = [(NRLink *)self copyDescription];
        _NRLogWithArgs();
      }
    }
  }

  else
  {
    v20 = sub_100046E64();
    v21 = _NRLogIsLevelEnabled();

    if (!v21)
    {
      goto LABEL_15;
    }

    v6 = sub_100046E64();
    _NRLogWithArgs();
  }

LABEL_15:
  return reasonCopy != 0;
}

- (void)invalidateLink
{
  v29.receiver = self;
  v29.super_class = NRLinkQuickRelay;
  [(NRLink *)&v29 invalidateLink];
  sub_100047D2C(self);
  if (self)
  {
    v3 = *(&self->_ipHeaderOffset + 7);
    if (v3)
    {
      v4 = v3;
      v5 = *(&self->_ipHeaderOffset + 7);
      *(&self->_ipHeaderOffset + 7) = 0;

      if (qword_1002292C0 != -1)
      {
        dispatch_once(&qword_1002292C0, &stru_1001FC4B0);
      }

      v6 = qword_1002292C8;
      v23 = _NSConcreteStackBlock;
      v24 = 3221225472;
      v25 = sub_100055C14;
      v26 = &unk_1001FD060;
      v27 = v4;
      selfCopy = self;
      v7 = v4;
      dispatch_async(v6, &v23);
    }

    v8 = *(&self->_idsSessionStartTime + 7);
    if (v8)
    {
      [v8 cancel];
      v9 = *(&self->_idsSessionStartTime + 7);
      *(&self->_idsSessionStartTime + 7) = 0;
    }

    [(NRLinkQuickRelay *)self invalidateIKESessionForClass:4, v23, v24, v25, v26];
    [(NRLinkQuickRelay *)self invalidateIKESessionForClass:3];
    v10 = *(&self->_nexusOutputRing + 7);
    if (v10)
    {
      if (self->_dNexusReadSourceSuspended)
      {
        dispatch_resume(v10);
        self->_dNexusReadSourceSuspended = 0;
        v10 = *(&self->_nexusOutputRing + 7);
      }

      dispatch_source_cancel(v10);
      v11 = *(&self->_nexusOutputRing + 7);
      *(&self->_nexusOutputRing + 7) = 0;
    }

    v12 = *(&self->_dNexusReadSource + 7);
    if (v12)
    {
      if (self->_dNexusWriteSourceSuspended)
      {
        dispatch_resume(v12);
        self->_dNexusWriteSourceSuspended = 0;
        v12 = *(&self->_dNexusReadSource + 7);
      }

      dispatch_source_cancel(v12);
      v13 = *(&self->_dNexusReadSource + 7);
      *(&self->_dNexusReadSource + 7) = 0;
    }

    if (*(&self->_ikePacketReceiver + 7))
    {
      if (!*(&self->_dNexusWriteSource + 7))
      {
        os_channel_destroy();
      }

      *(&self->_ikePacketReceiver + 7) = 0;
    }

    v14 = *(&self->_nexusGroup + 7);
    *(&self->_nexusGroup + 7) = 0;

    v15 = *(&self->_ikeSessionTimeoutSource + 7);
    *(&self->_ikeSessionTimeoutSource + 7) = 0;

    v16 = *(&self->_recvKnownIPv6Hdr_TCP_ECT0 + 7);
    if (v16)
    {
      dispatch_source_cancel(v16);
      v17 = *(&self->_recvKnownIPv6Hdr_TCP_ECT0 + 7);
      *(&self->_recvKnownIPv6Hdr_TCP_ECT0 + 7) = 0;
    }

    v18 = *(&self->_linkIdleTimerSource + 7);
    if (v18)
    {
      dispatch_source_cancel(v18);
      v19 = *(&self->_linkIdleTimerSource + 7);
      *(&self->_linkIdleTimerSource + 7) = 0;
    }
  }

  else
  {
    [0 invalidateIKESessionForClass:4];
    [0 invalidateIKESessionForClass:3];
  }

  if (![(NRLink *)self hasCompanionDatapath])
  {
    [(NRLink *)self virtualInterface];
    NEVirtualInterfaceInvalidate();
    if ([(NRLink *)self virtualInterface])
    {
      free([(NRLink *)self virtualInterface]);
      [(NRLink *)self setVirtualInterface:0];
    }
  }

  [(NRLink *)self setVirtualInterface:0];
  if (self)
  {
    v20 = *(&self->_ikeSessionClassC + 7);
    if (v20)
    {
      [v20 setAvailability:0];
      [*(&self->_ikeSessionClassC + 7) cancel];
      v21 = *(&self->_ikeSessionClassC + 7);
      *(&self->_ikeSessionClassC + 7) = 0;
    }

    if (*(&self->_receivedIKEPackets + 7))
    {
      nw_path_evaluator_cancel();
      v22 = *(&self->_receivedIKEPackets + 7);
      *(&self->_receivedIKEPackets + 7) = 0;
    }
  }
}

- (id)initLinkWithQueue:(id)queue linkDelegate:(id)delegate nrUUID:(id)d
{
  queueCopy = queue;
  delegateCopy = delegate;
  dCopy = d;
  if (!queueCopy)
  {
    v27 = sub_100046E64();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_23;
    }

LABEL_19:
    v35 = sub_100046E64();
    _NRLogWithArgs();

    goto LABEL_23;
  }

  dispatch_assert_queue_V2(queueCopy);
  if (!delegateCopy)
  {
    v29 = sub_100046E64();
    v30 = _NRLogIsLevelEnabled();

    if (!v30)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  if (!dCopy)
  {
    v31 = sub_100046E64();
    v32 = _NRLogIsLevelEnabled();

    if (!v32)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  if ((_NRIsUUIDNonZero() & 1) == 0)
  {
    v33 = sub_100046E64();
    v34 = _NRLogIsLevelEnabled();

    if (!v34)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v40.receiver = self;
  v40.super_class = NRLinkQuickRelay;
  v11 = [(NRLink *)&v40 initLinkWithQueue:queueCopy linkDelegate:delegateCopy nrUUID:dCopy];
  if (!v11)
  {
    v36 = sub_100046E64();
    v37 = _NRLogIsLevelEnabled();

    if (v37)
    {
      v38 = sub_100046E64();
      _NRLogWithArgs();
    }

    self = 0;
    goto LABEL_23;
  }

  self = v11;
  [(NRLink *)v11 setType:4];
  v12 = objc_alloc_init(NSMutableArray);
  v13 = *(&self->_nexusGroup + 7);
  *(&self->_nexusGroup + 7) = v12;

  v14 = objc_alloc_init(NSMutableArray);
  v15 = *(&self->_ikeSessionTimeoutSource + 7);
  *(&self->_ikeSessionTimeoutSource + 7) = v14;

  v16 = objc_alloc_init(NRAnalyticsCmpnLinkQuickRelay);
  v17 = *(&self->_pathEvaluator + 7);
  *(&self->_pathEvaluator + 7) = v16;

  if (!sub_1000539DC(self))
  {
LABEL_23:
    selfCopy = 0;
    goto LABEL_24;
  }

  if (![(NRLink *)self hasCompanionDatapath])
  {
    *(&self->_ikeSessionTimeoutScheduledOnce + 1) = 4;
    nrUUID = [(NRLink *)self nrUUID];
    v19 = sub_100163A30(NRDLocalDevice, nrUUID);

    if (v19)
    {
      v20 = sub_100003490();
      dispatch_assert_queue_V2(v20);

      v21 = sub_1001672A0(v19, @"0");
      [(NRLink *)self setLocalOuterEndpoint:v21];

      v22 = sub_100003490();
      dispatch_assert_queue_V2(v22);

      v23 = sub_1001677D0(v19, @"0");
    }

    else
    {
      [(NRLink *)self setLocalOuterEndpoint:0];
      v23 = 0;
    }

    [(NRLink *)self setRemoteOuterEndpoint:v23];
  }

  [(NRLink *)self updateIKEv2Role:&self->_isResponder];
  uUIDString = [dCopy UUIDString];
  [(NRLink *)self reportEvent:3000 details:uUIDString];

  linkDelegate = [(NRLink *)self linkDelegate];
  [linkDelegate linkIsAvailable:self];

  self = self;
  selfCopy = self;
LABEL_24:

  return selfCopy;
}

@end