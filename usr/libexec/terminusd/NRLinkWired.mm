@interface NRLinkWired
- (BOOL)cancelWithReason:(id)a3;
- (BOOL)initializeExternalDeviceLink;
- (BOOL)initiateConnection;
- (BOOL)resume;
- (BOOL)sendControlData:(id)a3;
- (BOOL)start;
- (BOOL)suspend;
- (id)copyDescriptionInner;
- (id)copyNotifyPayloadsToSendWithProxy:(BOOL)a3 sendingClassC:(BOOL *)a4;
- (id)copyStatusString;
- (id)getOrSendIDSDeviceID;
- (id)ikeSessionPointerForDataProtectionClass:(unsigned __int8)a3;
- (void)checkPeerAvailabilityWithForceAggressive:(BOOL)a3;
- (void)initiatePairing;
- (void)invalidateLink;
- (void)requestConfigurationForListener:(id)a3 session:(id)a4 sessionConfig:(id)a5 childConfig:(id)a6 validateAuthBlock:(id)a7 responseBlock:(id)a8;
- (void)retrySetupIPsec:(unsigned __int8)a3;
- (void)sendClassCUnlockedNotify;
- (void)sendNotifyPayload;
- (void)setupIKECallbacks:(unsigned __int8)a3;
- (void)upgradeSessionsIfNeeded;
@end

@implementation NRLinkWired

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
      v21 = [(NRLink *)self copyDescription];
      _NRLogWithArgs();
    }
  }

  else
  {
    v22.receiver = self;
    v22.super_class = NRLinkWired;
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
            v19 = 1204;
            v20 = [(NRLink *)self copyDescription];
            v17 = "";
            v18 = "[NRLinkWired resume]";
            _NRLogWithArgs();
          }
        }
      }

      [(NRLink *)self changeStateTo:8 details:@"(resume)", v17, v18, v19, v20];
      [(NRLink *)self setInterfaceRank];
      v15 = [(NRLink *)self linkDelegate];
      [v15 linkIsReady:self];

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
  v20.super_class = NRLinkWired;
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
          v17 = 1176;
          v18 = [(NRLink *)self copyDescription];
          v15 = "";
          v16 = "[NRLinkWired suspend]";
          _NRLogWithArgs();
        }
      }
    }

    [(NRLink *)self changeStateTo:9 details:@"(suspend)", v15, v16, v17, v18];
    [(NRLink *)self setInterfaceRank];
    v8 = [(NRLink *)self linkDelegate];
    [v8 linkIsSuspended:self];
    goto LABEL_10;
  }

  v4 = self->super._nrUUID;
  v5 = _NRCopyLogObjectForNRUUID();
  v6 = _NRLogIsLevelEnabled();

  if (v6)
  {
    v7 = self->super._nrUUID;
    v8 = _NRCopyLogObjectForNRUUID();
    v19 = [(NRLink *)self copyDescription];
    _NRLogWithArgs();

LABEL_10:
  }

  return 1;
}

- (void)upgradeSessionsIfNeeded
{
  if (!self || !self->_upgradeSessionAfterFirstUnlock || ![(NRLinkWired *)self isIKEResponder]&& ![(NRLinkWired *)self sentLocalClassCUnlockNotify]|| ![(NRLinkWired *)self remoteClassCUnlocked])
  {
    return;
  }

  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v3 = qword_1002294C0;
  if (!v3)
  {
    goto LABEL_22;
  }

  v4 = v3;
  dispatch_assert_queue_V2(v3[2]);
  if ((*(v4 + 10) & 1) == 0)
  {
    *(v4 + 10) = 1;
    if (*(v4 + 8) == 4)
    {
      sub_100181020(v4);
      if (*(v4 + 9) == 1)
      {
        *(v4 + 8) = 3;
        sub_100181284(v4);
      }
    }
  }

  v5 = v4[1] & 0xFD;

  if (v5 == 1 && ![(NRLink *)self ikeClassCEstablished])
  {
    if ([(NRLink *)self state]== 8)
    {
      [(NRLinkWired *)self suspend];
      [(NRLinkWired *)self invalidateIKESessionClassD];

      [(NRLinkWired *)self setupIPsecIfNecessary:3];
      return;
    }

    nrUUID = self->super._nrUUID;
    v7 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return;
    }

    v9 = self->super._nrUUID;
    v11 = _NRCopyLogObjectForNRUUID();
    v10 = [(NRLink *)self copyDescription];
    _NRLogWithArgs();

    v3 = v11;
LABEL_22:
  }
}

- (void)sendNotifyPayload
{
  if (![(NRLinkWired *)self isIKEResponder])
  {
    v3 = [(NRLink *)self nrUUID];
    v4 = sub_100163A30(NRDLocalDevice, v3);

    v15 = 0;
    v5 = [(NRLinkWired *)self copyNotifyPayloadsToSendWithProxy:sub_100147B98(v4) sendingClassC:&v15];
    [(NRLinkWired *)self setNeedsToSendLocalClassCUnlockNotify:(v15 & 1) == 0];
    v6 = [(NRLinkWired *)self getOrSendIDSDeviceID];
    if (v6)
    {
      [v5 addObject:v6];
    }

    v7 = [(NRLinkWired *)self ikeSessionClassD];
    v8 = [(NRLinkWired *)self ikeSessionClassC];

    if (v8)
    {
      v9 = [(NRLinkWired *)self ikeSessionClassC];

      v7 = v9;
    }

    objc_initWeak(&location, self);
    v10 = [(NRLink *)self queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000DD6E0;
    v11[3] = &unk_1001FB928;
    objc_copyWeak(&v12, &location);
    v13 = v15;
    [v7 sendPrivateNotifies:v5 maxRetries:10 retryIntervalInMilliseconds:1000 callbackQueue:v10 callback:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)sendClassCUnlockedNotify
{
  if ([(NRLink *)self state]== 8)
  {
    v3 = [(NRLinkWired *)self ikeSessionClassD];

    if (v3)
    {
      if (![(NRLinkWired *)self hasScheduledSendingLocalClassCUnlock])
      {
        [(NRLinkWired *)self setHasScheduledSendingLocalClassCUnlock:1];
        objc_initWeak(&location, self);
        objc_opt_self();
        if (qword_1002294C8 != -1)
        {
          dispatch_once(&qword_1002294C8, &stru_1001FD250);
        }

        v4 = qword_1002294C0;
        v5[0] = _NSConcreteStackBlock;
        v5[1] = 3221225472;
        v5[2] = sub_1000DD98C;
        v5[3] = &unk_1001FC730;
        objc_copyWeak(&v6, &location);
        sub_1001816DC(v4, v5);

        objc_destroyWeak(&v6);
        objc_destroyWeak(&location);
      }
    }
  }
}

- (id)getOrSendIDSDeviceID
{
  if ([(NRLink *)self state]== 255 || ![(NRLink *)self shouldSendIDSDeviceID])
  {
    v7 = 0;
  }

  else
  {
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v3 = qword_1002290B8;
    v4 = sub_1000CAD2C(v3, 0);

    if (v4)
    {
      v5 = [v4 dataUsingEncoding:4];
      v6 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48607 notifyData:v5];
    }

    else
    {
      objc_initWeak(&location, self);
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v8 = qword_1002290B8;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000DDE40;
      v10[3] = &unk_1001FBF00;
      objc_copyWeak(&v11, &location);

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
      v6 = 0;
    }

    v7 = v6;
  }

  return v7;
}

- (BOOL)sendControlData:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50702 notifyData:v4];
    v6 = v5 != 0;
    if (v5)
    {
      objc_initWeak(&location, self);
      v7 = *(&self->_ikeSessionClassD + 7);
      v20 = v5;
      v8 = [NSArray arrayWithObjects:&v20 count:1];
      v9 = [(NRLink *)self queue];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000DE4BC;
      v17[3] = &unk_1001FC018;
      objc_copyWeak(&v18, &location);
      [v7 sendPrivateNotifies:v8 maxRetries:10 retryIntervalInMilliseconds:1000 callbackQueue:v9 callback:v17];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    else
    {
      v14 = sub_1000DE468();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v16 = sub_1000DE468();
        _NRLogWithArgs();
      }
    }
  }

  else
  {
    v11 = sub_1000DE468();
    v12 = _NRLogIsLevelEnabled();

    if (v12)
    {
      v13 = sub_1000DE468();
      _NRLogWithArgs();
    }

    v6 = 0;
  }

  return v6;
}

- (id)copyNotifyPayloadsToSendWithProxy:(BOOL)a3 sendingClassC:(BOOL *)a4
{
  v5 = a3;
  v7 = objc_alloc_init(NSMutableArray);
  v30 = 6144;
  v8 = [[NSMutableData alloc] initWithBytes:&v30 length:2];
  v9 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48602 notifyData:v8];
  [v7 addObject:v9];

  if (qword_100229228 != -1)
  {
    dispatch_once(&qword_100229228, &stru_1001FC320);
  }

  v10 = qword_100229220;
  v11 = [v10 dataUsingEncoding:4];

  v12 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48603 notifyData:v11];
  [v7 addObject:v12];

  if (qword_100229218 != -1)
  {
    dispatch_once(&qword_100229218, &stru_1001FC300);
  }

  v13 = qword_100229210;
  v14 = [v13 dataUsingEncoding:4];

  v15 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48604 notifyData:v14];
  [v7 addObject:v15];

  v16 = sub_100147A80();
  [v7 addObject:v16];
  v29 = 0;
  v17 = [v16 notifyData];
  [v17 getBytes:&v29 length:1];

  *a4 = v29 >> 7;
  if (v5)
  {
    v18 = [(NRLink *)self nrUUID];
    v19 = sub_100163A30(NRDLocalDevice, v18);

    if (v19)
    {
      v20 = v19[18];
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    v22 = [v21 proxyCapability];

    if (v22 == 1)
    {
      if (v19)
      {
        v23 = v19[18];
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;
      v25 = [v24 hasCompanionDatapath];

      if (v25)
      {
        v26 = 0;
      }

      else
      {
        v26 = [(NRLink *)self localOuterEndpoint];
      }

      v27 = sub_100147C1C(v19, v26);
      [v7 addObject:v27];
    }
  }

  return v7;
}

- (void)requestConfigurationForListener:(id)a3 session:(id)a4 sessionConfig:(id)a5 childConfig:(id)a6 validateAuthBlock:(id)a7 responseBlock:(id)a8
{
  v61 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (v61)
  {
    if (v14)
    {
      if (v15)
      {
        if (v17)
        {
          if (v18)
          {
            nrUUID = self->super._nrUUID;
            v20 = _NRCopyLogObjectForNRUUID();
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (IsLevelEnabled)
            {
              v22 = self->super._nrUUID;
              v23 = _NRCopyLogObjectForNRUUID();
              v59 = v15;
              v60 = v16;
              v54 = 707;
              v55 = [(NRLink *)self copyDescription];
              v56 = v61;
              v58 = v14;
              v52 = "";
              v53 = "[NRLinkWired requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]";
              _NRLogWithArgs();
            }

            if (self->super._state != 255)
            {
              v24 = [v15 localIdentifier];
              if (qword_1002292E8 != -1)
              {
                dispatch_once(&qword_1002292E8, &stru_1001FC558);
              }

              v25 = qword_1002292E0;
              v26 = [v24 isEqual:v25];

              if (v26)
              {
                if (v16)
                {
                  v27 = sub_100146D34(1, 0);
                  [v27 setMode:2];
                  v28 = 4;
                  [v27 setReplayWindowSize:4];
                  goto LABEL_36;
                }

                if (![(NRLink *)self hasCompanionDatapath])
                {
                  v27 = 0;
                  v28 = 4;
                  goto LABEL_36;
                }

                [(NRLink *)self reportEvent:3024 detailsFormat:@"ClassD %@", v14, v53, v54, v55, v56, v58, v59, v60];
                goto LABEL_21;
              }

              v29 = [v15 localIdentifier];
              if (qword_1002292F8 != -1)
              {
                dispatch_once(&qword_1002292F8, &stru_1001FC578);
              }

              v30 = qword_1002292F0;
              v31 = [v29 isEqual:v30];

              if (v31)
              {
                if (v16)
                {
                  v27 = sub_100146D34(1, 0);
                  [v27 setMode:2];
                  [v27 setReplayWindowSize:4];
LABEL_27:
                  objc_opt_self();
                  if (qword_1002294C8 != -1)
                  {
                    dispatch_once(&qword_1002294C8, &stru_1001FD250);
                  }

                  v39 = qword_1002294C0;
                  if (v39)
                  {
                    v40 = v39;
                    dispatch_assert_queue_V2(*(v39 + 2));
                    if ((v40[10] & 1) == 0)
                    {
                      v40[10] = 1;
                      if (v40[8] == 4)
                      {
                        sub_100181020(v40);
                        if (v40[9] == 1)
                        {
                          v40[8] = 3;
                          sub_100181284(v40);
                        }
                      }
                    }

                    v41 = v40[8] & 0xFD;

                    if (v41 == 1)
                    {
                      v28 = 3;
LABEL_36:
                      v38 = [(NRLinkWired *)self respondToIKESession:v14 dataProtectionClass:v28 validateAuthBlock:v17, v52, v53, v54, v55, v56, v58, v59, v60];
                      if ([(NRLink *)self setupVirtualInterface])
                      {
                        v18[2](v18, v38, v27, [(NRLink *)self virtualInterface]);
LABEL_39:

LABEL_40:
                        goto LABEL_41;
                      }

LABEL_38:
                      v18[2](v18, 0, 0, 0);
                      goto LABEL_39;
                    }
                  }

                  [(NRLink *)self reportEvent:3020 detailsFormat:@"ClassC %@", v14, v53, v54, v55, v56, v58, v59, v60];
                  [(NRLinkWired *)self sendClassCUnlockedNotify];
LABEL_22:
                  v38 = 0;
                  goto LABEL_38;
                }

                if (![(NRLink *)self hasCompanionDatapath])
                {
                  v27 = 0;
                  goto LABEL_27;
                }

                [(NRLink *)self reportEvent:3024 detailsFormat:@"ClassC %@", v14, v53, v54, v55, v56, v58, v59, v60];
              }

              else
              {
                v32 = self->super._nrUUID;
                v33 = _NRCopyLogObjectForNRUUID();
                v34 = _NRLogIsLevelEnabled();

                if (v34)
                {
                  v35 = self->super._nrUUID;
                  v36 = _NRCopyLogObjectForNRUUID();
                  v37 = [(NRLink *)self copyDescription];
                  v57 = [v15 localIdentifier];
                  _NRLogWithArgs();
                }
              }
            }

LABEL_21:
            v27 = 0;
            goto LABEL_22;
          }

          v50 = sub_1000DE468();
          v51 = _NRLogIsLevelEnabled();

          if (v51)
          {
LABEL_54:
            v38 = sub_1000DE468();
            _NRLogWithArgs();
            goto LABEL_40;
          }
        }

        else
        {
          v48 = sub_1000DE468();
          v49 = _NRLogIsLevelEnabled();

          if (v49)
          {
            goto LABEL_54;
          }
        }
      }

      else
      {
        v46 = sub_1000DE468();
        v47 = _NRLogIsLevelEnabled();

        if (v47)
        {
          goto LABEL_54;
        }
      }
    }

    else
    {
      v44 = sub_1000DE468();
      v45 = _NRLogIsLevelEnabled();

      if (v45)
      {
        goto LABEL_54;
      }
    }
  }

  else
  {
    v42 = sub_1000DE468();
    v43 = _NRLogIsLevelEnabled();

    if (v43)
    {
      goto LABEL_54;
    }
  }

LABEL_41:
}

- (void)retrySetupIPsec:(unsigned __int8)a3
{
  [(NRLinkWired *)self setSetupIPsecRetryCounter:[(NRLinkWired *)self setupIPsecRetryCounter]+ 1];
  if ([(NRLinkWired *)self setupIPsecRetryCounter]> 4)
  {

    [(NRLinkWired *)self cancelWithReason:@"IKE session creation hit max retries"];
  }

  else
  {
    [(NRLink *)self reportEvent:3026];
    objc_initWeak(&location, self);
    v5 = dispatch_time(0, 1000000000);
    v6 = [(NRLink *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DF310;
    block[3] = &unk_1001FB900;
    objc_copyWeak(&v8, &location);
    v9 = a3;
    dispatch_after(v5, v6, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)setupIKECallbacks:(unsigned __int8)a3
{
  v3 = a3;
  String = NRDataProtectionClassCreateString();
  if (v3 == 3)
  {
    v6 = *(&self->_ikeSessionClassD + 7);
    if (!v6)
    {
      v33 = sub_1000DE468();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
LABEL_15:
        v35 = sub_1000DE468();
        _NRLogWithArgs();
      }

LABEL_12:
      v22 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if (v3 != 4)
    {
      nrUUID = self->super._nrUUID;
      v29 = _NRCopyLogObjectForNRUUID();
      v30 = _NRLogIsLevelEnabled();

      if (v30)
      {
        v31 = self->super._nrUUID;
        v32 = _NRCopyLogObjectForNRUUID();
        v36 = [(NRLink *)self copyDescription];
        _NRLogWithArgs();
      }

      goto LABEL_12;
    }

    v6 = *(&self->_ikeListener + 7);
    if (!v6)
    {
      v7 = sub_1000DE468();
      v8 = _NRLogIsLevelEnabled();

      if (v8)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }
  }

  v9 = v6;
  [v9 setClientQueue:self->super._queue];
  objc_initWeak(location, self);
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_1000DFF08;
  v63[3] = &unk_1001FB810;
  objc_copyWeak(&v66, location);
  v67 = v3;
  v10 = String;
  v64 = v10;
  v11 = v9;
  v65 = v11;
  [v11 setStateUpdateBlock:v63];
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_1000E065C;
  v58[3] = &unk_1001FB838;
  objc_copyWeak(&v61, location);
  v12 = v10;
  v59 = v12;
  v13 = v11;
  v60 = v13;
  v62 = v3;
  [v13 setChildStateUpdateBlock:v58];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_1000E0794;
  v54[3] = &unk_1001FB860;
  objc_copyWeak(&v57, location);
  v14 = v12;
  v55 = v14;
  v15 = v13;
  v56 = v15;
  [v15 setConfigurationUpdateBlock:v54];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_1000E0874;
  v50[3] = &unk_1001FB888;
  objc_copyWeak(&v53, location);
  v16 = v14;
  v51 = v16;
  v17 = v15;
  v52 = v17;
  [v17 setTrafficSelectorUpdateBlock:v50];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1000E0974;
  v46[3] = &unk_1001FB8B0;
  objc_copyWeak(&v49, location);
  v18 = v16;
  v47 = v18;
  v19 = v17;
  v48 = v19;
  [v19 setAdditionalAddressesUpdateBlock:v46];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000E0A54;
  v42[3] = &unk_1001FB8D8;
  objc_copyWeak(&v45, location);
  v20 = v18;
  v43 = v20;
  v21 = v19;
  v44 = v21;
  [v21 setShortDPDEventBlock:v42];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000E0B28;
  v38[3] = &unk_1001FB8B0;
  objc_copyWeak(&v41, location);
  v39 = v20;
  v22 = v21;
  v40 = v22;
  [v22 setPrivateNotifyStatusEvent:v38];
  v23 = self->super._nrUUID;
  v24 = _NRCopyLogObjectForNRUUID();
  v25 = _NRLogIsLevelEnabled();

  if (v25)
  {
    v26 = self->super._nrUUID;
    v27 = _NRCopyLogObjectForNRUUID();
    v37 = [(NRLink *)self copyDescription];
    _NRLogWithArgs();
  }

  objc_destroyWeak(&v41);
  objc_destroyWeak(&v45);

  objc_destroyWeak(&v49);
  objc_destroyWeak(&v53);

  objc_destroyWeak(&v57);
  objc_destroyWeak(&v61);

  objc_destroyWeak(&v66);
  objc_destroyWeak(location);

LABEL_13:
}

- (id)ikeSessionPointerForDataProtectionClass:(unsigned __int8)a3
{
  if (a3 == 4)
  {
    v3 = &OBJC_IVAR___NRLinkWired__ikeSessionClassD;
    return (&self->super.super.isa + *v3);
  }

  if (a3 == 3)
  {
    v3 = &OBJC_IVAR___NRLinkWired__ikeSessionClassC;
    return (&self->super.super.isa + *v3);
  }

  v5 = sub_1000DE468();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v7 = sub_1000DE468();
    String = NRDataProtectionClassCreateString();
    _NRLogWithArgs();
  }

  _os_log_pack_size();
  v8 = *__error();
  v9 = _os_log_pack_fill();
  v10 = NRDataProtectionClassCreateString();
  *v9 = 136446466;
  *(v9 + 4) = "[NRLinkWired ikeSessionPointerForDataProtectionClass:]";
  *(v9 + 12) = 2112;
  *(v9 + 14) = v10;
  sub_1000DE468();
  v11 = _NRLogAbortWithPack();
  [(NRLinkWired *)v11 invalidateIKESessionForClass:v12, v13];
  return result;
}

- (void)checkPeerAvailabilityWithForceAggressive:(BOOL)a3
{
  v3 = a3;
  v5 = [(NRLink *)self peerAvailabilityCheckInProgress];
  nrUUID = self->super._nrUUID;
  v7 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (v5)
  {
    if (IsLevelEnabled)
    {
      v9 = self->super._nrUUID;
      v19 = _NRCopyLogObjectForNRUUID();
      v17 = [(NRLink *)self copyDescription];
      _NRLogWithArgs();
    }
  }

  else
  {
    if (IsLevelEnabled)
    {
      v10 = self->super._nrUUID;
      v11 = _NRCopyLogObjectForNRUUID();
      v18 = [(NRLink *)self copyDescription];
      _NRLogWithArgs();
    }

    v12 = !v3;
    if (v3)
    {
      v13 = 5;
    }

    else
    {
      v13 = 3;
    }

    if (v12)
    {
      v14 = 3000;
    }

    else
    {
      v14 = 1000;
    }

    self->super._peerAvailabilityCheckInProgress = 1;
    objc_initWeak(&location, self);
    v15 = [(NRLinkWired *)self ikeSessionClassC];
    v16 = [(NRLink *)self queue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000E1308;
    v20[3] = &unk_1001FC018;
    objc_copyWeak(&v21, &location);
    [v15 sendKeepaliveWithRetries:v13 retryIntervalInMilliseconds:v14 callbackQueue:v16 callback:v20];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

- (BOOL)initiateConnection
{
  nrUUID = self->super._nrUUID;
  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = self->super._nrUUID;
    v7 = _NRCopyLogObjectForNRUUID();
    v18 = 266;
    v19 = [(NRLink *)self copyDescription];
    v16 = "";
    v17 = "[NRLinkWired initiateConnection]";
    _NRLogWithArgs();
  }

  if ([(NRLinkWired *)self isIKEResponder:v16])
  {
    objc_opt_self();
    if (qword_100228E88 != -1)
    {
      dispatch_once(&qword_100228E88, &stru_1001FA180);
    }

    v8 = qword_100228E80;
    v9 = [(NRLink *)self localInterfaceName];
    v10 = [(NRLink *)self localOuterEndpoint];
    v11 = sub_100016A08(v8, self, v9, v10);

    return v11;
  }

  v13 = [(NRLink *)self remoteOuterEndpoint];

  if (!v13)
  {
    v15 = @"No remote outer endpoint present";
LABEL_16:
    [(NRLinkWired *)self cancelWithReason:v15];
    return 0;
  }

  if (![(NRLink *)self setupVirtualInterface])
  {
    v15 = @"failed to setup virtual interface";
    goto LABEL_16;
  }

  if (self->_upgradeSessionAfterFirstUnlock || ![(NRLinkWired *)self onlyAllowClassC])
  {
    [(NRLinkWired *)self setupIPsecIfNecessary:4];
  }

  else
  {
    objc_initWeak(&location, self);
    objc_opt_self();
    if (qword_1002294C8 != -1)
    {
      dispatch_once(&qword_1002294C8, &stru_1001FD250);
    }

    v14 = qword_1002294C0;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000E16F0;
    v20[3] = &unk_1001FC730;
    objc_copyWeak(&v21, &location);
    sub_1001816DC(v14, v20);

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return 1;
}

- (void)initiatePairing
{
  v3 = sub_100163A30(NRDLocalDevice, self->super._nrUUID);
  v4 = objc_alloc_init(NRPairingParameters);
  v5 = [(NRLink *)self localInterfaceName];
  if (v4)
  {
    objc_storeStrong(&v4->_localInterfaceName, v5);
  }

  v6 = [(NRLink *)self localOuterEndpoint];
  if (v4)
  {
    objc_storeStrong(&v4->_localEndpoint, v6);
  }

  v7 = [(NRLink *)self remoteOuterEndpoint];
  v8 = v7;
  if (v4)
  {
    objc_storeStrong(&v4->_remoteEndpoint, v7);

    isIKEResponder = self->_isIKEResponder;
    v4->_isResponder = isIKEResponder;
    v4->_deferIKESessionInvalidation = isIKEResponder;
  }

  else
  {
  }

  objc_initWeak(&location, self);
  v10 = sub_100012448([NRPairingClient alloc], self->super._queue, self->super._nrUUID, &v4->super.isa);
  objc_initWeak(&from, v10);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000E19D0;
  v21[3] = &unk_1001FB7E8;
  objc_copyWeak(&v22, &location);
  objc_copyWeak(&v23, &from);
  v21[4] = self;
  v11 = v21;
  v12 = v11;
  if (v10 && (*(v10 + 10) & 1) == 0)
  {
    v13 = objc_retainBlock(v11);
    v14 = v10[18];
    v10[18] = v13;
  }

  sub_1000127C0(v10);
  [(NRLink *)self setPairingClient:v10];
  nrUUID = self->super._nrUUID;
  v16 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v18 = self->super._nrUUID;
    v19 = _NRCopyLogObjectForNRUUID();
    v20 = [(NRLink *)self copyDescription];
    _NRLogWithArgs();
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&from);

  objc_destroyWeak(&location);
}

- (BOOL)initializeExternalDeviceLink
{
  v7.receiver = self;
  v7.super_class = NRLinkWired;
  v3 = [(NRLink *)&v7 initializeExternalDeviceLink];
  if (v3)
  {
    v4 = v3;
    [(NRLink *)self changeStateTo:8];
    v5 = [(NRLink *)self linkDelegate];
    [v5 linkIsReady:self];

    LOBYTE(v3) = v4;
  }

  return v3;
}

- (BOOL)cancelWithReason:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[NSString alloc] initWithFormat:v4 arguments:&v16];
    [(NRLink *)self reportEvent:3005 details:v5];
    if ([(NRLink *)self changeStateTo:255])
    {
      v6 = [(NRLink *)self linkDelegate];
      [v6 linkIsUnavailable:self];

      [(NRLinkWired *)self invalidateLink];
    }

    else
    {
      nrUUID = self->super._nrUUID;
      v8 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v10 = self->super._nrUUID;
        v11 = _NRCopyLogObjectForNRUUID();
        v15 = [(NRLink *)self copyDescription];
        _NRLogWithArgs();
      }
    }
  }

  else
  {
    v13 = sub_1000DE468();
    v14 = _NRLogIsLevelEnabled();

    if (!v14)
    {
      goto LABEL_7;
    }

    v5 = sub_1000DE468();
    _NRLogWithArgs();
  }

LABEL_7:
  return v4 != 0;
}

- (BOOL)start
{
  if ([(NRLink *)self state]== 8)
  {
    v3 = [(NRLink *)self linkDelegate];
    [v3 linkIsReady:self];

    return 1;
  }

  if ([(NRLink *)self startRequested])
  {
    return 1;
  }

  [(NRLink *)self setStartRequested:1];
  v5 = [(NRLink *)self localInterfaceName];

  if (!v5)
  {
    nrUUID = self->super._nrUUID;
    v22 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return 0;
    }

    v24 = self->super._nrUUID;
    v14 = _NRCopyLogObjectForNRUUID();
    v27 = [(NRLink *)self copyDescription];
    _NRLogWithArgs();

    goto LABEL_15;
  }

  if ([(NRLink *)self state]!= 1)
  {
    v10 = self->super._nrUUID;
    v11 = _NRCopyLogObjectForNRUUID();
    v12 = _NRLogIsLevelEnabled();

    if (!v12)
    {
      return 0;
    }

    v13 = self->super._nrUUID;
    v14 = _NRCopyLogObjectForNRUUID();
    v25 = [(NRLink *)self copyDescription];
    v28 = sub_1001415A0([(NRLink *)self state]);
    _NRLogWithArgs();

LABEL_15:
    return 0;
  }

  [(NRLink *)self reportEvent:3001];
  [(NRLink *)self updateIKEv2Role:&self->_isIKEResponder];
  if ([(NRLinkWired *)self isIKEResponder]|| ([(NRLink *)self remoteOuterEndpoint], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = sub_100163A30(NRDLocalDevice, self->super._nrUUID);
    v8 = v7;
    if (v7)
    {
      v9 = *(v7 + 48);
      if ((v9 & 8) != 0)
      {
        if (![(NRLinkWired *)self initializeExternalDeviceLink])
        {
          v15 = self->super._nrUUID;
          v16 = _NRCopyLogObjectForNRUUID();
          v17 = _NRLogIsLevelEnabled();

          if (v17)
          {
            v18 = self->super._nrUUID;
            v19 = _NRCopyLogObjectForNRUUID();
            v26 = [(NRLink *)self copyDescription];
            _NRLogWithArgs();
          }

          v20 = 0;
          goto LABEL_23;
        }

LABEL_22:
        v20 = 1;
LABEL_23:

        return v20;
      }

      if ((v9 & 0x1000) != 0)
      {
        [(NRLinkWired *)self initiateConnection];
        goto LABEL_22;
      }
    }

    [(NRLinkWired *)self initiatePairing];
    goto LABEL_22;
  }

  [(NRLinkWired *)self cancelWithReason:@"No remote outer endpoint present"];
  return 0;
}

- (id)copyDescriptionInner
{
  v3 = [NSString alloc];
  v9.receiver = self;
  v9.super_class = NRLinkWired;
  v4 = [(NRLink *)&v9 copyDescriptionInner];
  v5 = [(NRLink *)self localOuterEndpoint];
  v6 = [(NRLink *)self remoteOuterEndpoint];
  v7 = [v3 initWithFormat:@"%@, %@ -> %@", v4, v5, v6];

  return v7;
}

- (void)invalidateLink
{
  v9.receiver = self;
  v9.super_class = NRLinkWired;
  [(NRLink *)&v9 invalidateLink];
  [(NRLinkWired *)self invalidateIKESessionClassD];
  [(NRLinkWired *)self invalidateIKESessionClassC];
  v3 = [(NRLinkWired *)self ikeListener];

  if (v3)
  {
    v4 = [(NRLinkWired *)self ikeListener];
    [v4 cancel];

    [(NRLinkWired *)self setIkeListener:0];
  }

  companionProxyAgent = self->super._companionProxyAgent;
  if (companionProxyAgent)
  {
    sub_100070270(companionProxyAgent);
    [(NRLink *)self reportEvent:12003];
    v6 = self->super._companionProxyAgent;
    self->super._companionProxyAgent = 0;
  }

  [(NRLink *)self invalidateVirtualInterface];
  v7 = [(NRLinkWired *)self pathEvaluator];

  if (v7)
  {
    v8 = [(NRLinkWired *)self pathEvaluator];
    nw_path_evaluator_cancel();

    [(NRLinkWired *)self setPathEvaluator:0];
  }
}

- (id)copyStatusString
{
  v3 = [NSMutableString alloc];
  v4 = [(NRLink *)self description];
  v5 = [v3 initWithString:v4];

  [v5 appendFormat:@"\n %35s = %@", "nrUUID", self->super._nrUUID];
  v6 = [(NRLink *)self localInterfaceName];
  [v5 appendFormat:@"\n %35s = %@", "localInterfaceName", v6];

  [v5 appendFormat:@"\n %35s = %@", "listenerPortString", *(&self->_ikeSessionClassC + 7)];
  [v5 appendFormat:@"\n %35s = %@", "ikeSessionClassD", *(&self->_ikeListener + 7)];
  [v5 appendFormat:@"\n %35s = %@", "ikeSessionClassC", *(&self->_ikeSessionClassD + 7)];
  if (self->super._virtualInterface)
  {
    v7 = NEVirtualInterfaceCopyName();
    [v5 appendFormat:@"\n %35s = %@", "virtualInterfaceName", v7];
  }

  return v5;
}

@end