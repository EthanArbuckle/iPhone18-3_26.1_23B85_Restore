@interface NRLink
- (BOOL)changeStateTo:(unsigned __int8)to details:(id)details;
- (BOOL)initializeExternalDeviceLink;
- (BOOL)publishDNSConfig:(id)config;
- (BOOL)resume;
- (BOOL)setInterfacePeerEgressFunctionalType:(unsigned int)type;
- (BOOL)setInterfaceRank;
- (BOOL)setInterfaceSubfamily;
- (BOOL)setNoACKPrioritization;
- (BOOL)setupVirtualInterface;
- (BOOL)shouldCreateCompanionProxyAgent;
- (BOOL)shouldSendIDSDeviceID;
- (NRLinkDelegate)linkDelegate;
- (NSString)description;
- (id)copyDescription;
- (id)copyDescriptionInner;
- (id)copyLocalOuterEndpoint:(unsigned __int8)endpoint;
- (id)copyShortDescription;
- (id)copyShortDescriptionInner;
- (id)initLinkWithQueue:(id)queue linkDelegate:(id)delegate nrUUID:(id)d;
- (void)checkPeerAvailabilityWithForceAggressive:(BOOL)aggressive;
- (void)checkProxyAgentWithForceUpdate:(BOOL)update;
- (void)dealloc;
- (void)invalidateIKESession:(id *)session;
- (void)invalidateIKESessionForClass:(unsigned __int8)class;
- (void)invalidateLink;
- (void)invalidateVirtualInterface;
- (void)processIKEDisconnection:(unsigned __int8)disconnection error:(id)error;
- (void)removePolicies;
- (void)reportEvent:(unsigned int)event details:(id)details;
- (void)setIkeClassCEstablished:(BOOL)established;
- (void)setIkeClassDEstablished:(BOOL)established;
- (void)setInterfaceAvailability;
- (void)setLinkMTU;
- (void)setPowerAssertionState:(BOOL)state;
- (void)unregisterProxyAgent;
- (void)updateIKEv2Role:(BOOL *)role;
@end

@implementation NRLink

- (NRLinkDelegate)linkDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_linkDelegate);

  return WeakRetained;
}

- (id)copyLocalOuterEndpoint:(unsigned __int8)endpoint
{
  endpointCopy = endpoint;
  nrUUID = [(NRLink *)self nrUUID];
  v6 = sub_100163A30(NRDLocalDevice, nrUUID);

  if (!self->_hasCompanionDatapath)
  {
    type = self->_type;
    if (type != 1 && type != 4)
    {
      v12 = self->_localOuterEndpoint;
LABEL_14:
      v11 = v12;
      goto LABEL_15;
    }
  }

  if (endpointCopy == 4)
  {
    if (v6)
    {
      v10 = sub_100003490();
      dispatch_assert_queue_V2(v10);

      v12 = sub_1001672A0(v6, @"0");
      goto LABEL_14;
    }
  }

  else if (endpointCopy == 3 && v6)
  {
    v9 = sub_100003490();
    dispatch_assert_queue_V2(v9);

    v12 = sub_1001679E0(v6, @"0");
    goto LABEL_14;
  }

  v11 = 0;
LABEL_15:

  return v11;
}

- (void)removePolicies
{
  policyIDs = self->_policyIDs;
  if (!policyIDs || ![(NSMutableArray *)policyIDs count])
  {
    nrUUID = self->_nrUUID;
    v22 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return;
    }

LABEL_21:
    v24 = self->_nrUUID;
    v42 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs();

    return;
  }

  if (!self->_policyIdentifierString)
  {
    v32 = self->_nrUUID;
    v33 = _NRCopyLogObjectForNRUUID();
    v34 = _NRLogIsLevelEnabled();

    if (!v34)
    {
      return;
    }

    goto LABEL_21;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v4 = self->_policyIDs;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v44;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v44 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v43 + 1) + 8 * i);
        if ([v9 unsignedIntegerValue])
        {
          objc_opt_self();
          if (qword_100229410 != -1)
          {
            dispatch_once(&qword_100229410, &stru_1001FCD98);
          }

          v10 = qword_100229408;
          sub_100159FB0(v10, self->_policyIdentifierString, v9);
          goto LABEL_12;
        }

        v11 = self->_nrUUID;
        v12 = _NRCopyLogObjectForNRUUID();
        v13 = _NRLogIsLevelEnabled();

        if (v13)
        {
          v14 = self->_nrUUID;
          v15 = _NRCopyLogObjectForNRUUID();
          copyDescription2 = [(NRLink *)self copyDescription];
          v40 = v9;
          policyIdentifierString = self->_policyIdentifierString;
          v37 = 888;
          v38 = copyDescription2;
          copyDescription3 = "";
          v36 = "[NRLink removePolicies]";
          _NRLogWithArgs();
        }

        v17 = self->_nrUUID;
        v18 = _NRCopyLogObjectForNRUUID();
        v19 = _NRLogIsLevelEnabled();

        if (v19)
        {
          v20 = self->_nrUUID;
          v10 = _NRCopyLogObjectForNRUUID();
          copyDescription3 = [(NRLink *)self copyDescription];
          v36 = v9;
          _NRLogWithArgs();

LABEL_12:
          continue;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v6);
  }

  objc_opt_self();
  if (qword_100229410 != -1)
  {
    dispatch_once(&qword_100229410, &stru_1001FCD98);
  }

  v26 = qword_100229408;
  sub_10015A52C(v26);

  [(NSMutableArray *)self->_policyIDs removeAllObjects];
  *&self->_hasRouteRulePolicy = 0;
  self->_hasClassDPolicies = 0;
  v27 = self->_nrUUID;
  v28 = _NRCopyLogObjectForNRUUID();
  v29 = _NRLogIsLevelEnabled();

  if (v29)
  {
    v30 = self->_nrUUID;
    v31 = _NRCopyLogObjectForNRUUID();
    copyDescription4 = [(NRLink *)self copyDescription];
    _NRLogWithArgs();
  }
}

- (void)updateIKEv2Role:(BOOL *)role
{
  v25 = sub_100163A30(NRDLocalDevice, self->_nrUUID);
  [(NRLink *)self setIkev2Role:sub_10013FF60(v25)];
  ikev2Role = [(NRLink *)self ikev2Role];
  ikev2Role2 = [(NRLink *)self ikev2Role];
  v7 = ikev2Role2 == 1;
  if (ikev2Role != 2 && ikev2Role2 != 1)
  {
    peerToken = [(NRLink *)self peerToken];
    if (peerToken && (v9 = peerToken, [(NRLink *)self localToken], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
    {
      localToken = [(NRLink *)self localToken];
      peerToken2 = [(NRLink *)self peerToken];
    }

    else
    {
      if (v25)
      {
        v13 = v25[5];
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      if (!v14)
      {
        nrUUID = [(NRLink *)self nrUUID];
        v21 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          nrUUID2 = [(NRLink *)self nrUUID];
          v24 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();
        }

        v19 = 1;
        v7 = 1;
        goto LABEL_20;
      }

      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v15 = qword_1002290B8;
      localToken = sub_1000CAD2C(v15, 0);

      if (v25)
      {
        v16 = v25[5];
      }

      else
      {
        v16 = 0;
      }

      peerToken2 = v16;
    }

    v17 = peerToken2;
    v18 = [localToken compare:peerToken2];

    v7 = v18 == -1;
    if (v18 == -1)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

LABEL_20:
    [(NRLink *)self setIkev2Role:v19];
  }

  if (role)
  {
    *role = v7;
  }
}

- (BOOL)publishDNSConfig:(id)config
{
  configCopy = config;
  if ([(NRLink *)self virtualInterface]&& [(NRLink *)self state]== 8)
  {
    [(NRLink *)self virtualInterface];
    if (configCopy)
    {
      hostname = [configCopy hostname];
      v9 = hostname;
      [NSArray arrayWithObjects:&v9 count:1];
      NEVirtualInterfaceSetDNSServers();

      [(NRLink *)self virtualInterface];
      port = [configCopy port];
      [port intValue];
      NEVirtualInterfaceSetDNSPort();
    }

    else
    {
      NEVirtualInterfaceSetDNSServers();
      [(NRLink *)self virtualInterface];
      NEVirtualInterfaceSetDNSPort();
    }

    [(NRLink *)self virtualInterface];
    NEVirtualInterfaceUpdateAdHocService();
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)checkPeerAvailabilityWithForceAggressive:(BOOL)aggressive
{
  nrUUID = self->_nrUUID;
  v5 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v7 = self->_nrUUID;
    v9 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs();
  }
}

- (void)setPowerAssertionState:(BOOL)state
{
  if (state)
  {
    if (!self || !self->_powerAssertion)
    {
      v4 = [NSString alloc];
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v23 = [v4 initWithFormat:@"%@:[%llu]", v6, -[NRLink identifier](self, "identifier")];

      v7 = sub_10013F1F8(v23);
      if (self)
      {
        self->_powerAssertion = v7;
        if (v7)
        {
          nrUUID = self->_nrUUID;
          v9 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v11 = self->_nrUUID;
            v12 = _NRCopyLogObjectForNRUUID();
            v21 = 790;
            copyDescription = [(NRLink *)self copyDescription];
            v20 = "[NRLink setPowerAssertionState:]";
            _NRLogWithArgs();
          }

          [(NRLink *)self reportEvent:3300 detailsFormat:@"id: %u", self->_powerAssertion, v20, v21, copyDescription];
        }
      }
    }
  }

  else if (self)
  {
    powerAssertion = self->_powerAssertion;
    if (powerAssertion)
    {
      if (sub_10013F3BC(powerAssertion))
      {
        v14 = self->_nrUUID;
        v15 = _NRCopyLogObjectForNRUUID();
        v16 = _NRLogIsLevelEnabled();

        if (v16)
        {
          v17 = self->_nrUUID;
          v18 = _NRCopyLogObjectForNRUUID();
          v21 = 800;
          copyDescription = [(NRLink *)self copyDescription];
          v19 = "[NRLink setPowerAssertionState:]";
          _NRLogWithArgs();
        }

        [(NRLink *)self reportEvent:3302 detailsFormat:@"id: %u", self->_powerAssertion, v19, v21, copyDescription];
      }

      self->_powerAssertion = 0;
    }
  }
}

- (BOOL)setNoACKPrioritization
{
  if ([(NRLink *)self virtualInterface])
  {
    [(NRLink *)self virtualInterface];
    v3 = NEVirtualInterfaceCopyName();
    v4 = sub_10013B900(v3);
  }

  else
  {
    nrUUID = self->_nrUUID;
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return 0;
    }

    v8 = self->_nrUUID;
    v3 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs();

    v4 = 0;
  }

  return v4;
}

- (BOOL)setInterfacePeerEgressFunctionalType:(unsigned int)type
{
  if (![(NRLink *)self virtualInterface])
  {
    nrUUID = self->_nrUUID;
    v8 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (!type)
  {
    v10 = self->_nrUUID;
    v11 = _NRCopyLogObjectForNRUUID();
    v12 = _NRLogIsLevelEnabled();

    if (v12)
    {
LABEL_7:
      v13 = self->_nrUUID;
      v5 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      _NRLogWithArgs();

      v6 = 0;
      goto LABEL_8;
    }

    return 0;
  }

  [(NRLink *)self virtualInterface];
  v5 = NEVirtualInterfaceCopyName();
  v6 = sub_10013B488(v5, type);
LABEL_8:

  return v6;
}

- (BOOL)setInterfaceSubfamily
{
  if ([(NRLink *)self virtualInterface])
  {
    [(NRLink *)self virtualInterface];
    v3 = NEVirtualInterfaceCopyName();
    type = [(NRLink *)self type];
    if (type > 5)
    {
      v5 = 2;
    }

    else
    {
      v5 = dword_1001965A8[type];
    }

    v10 = sub_10013AD6C(v3, v5);
  }

  else
  {
    nrUUID = self->_nrUUID;
    v7 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return 0;
    }

    v9 = self->_nrUUID;
    v3 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs();

    v10 = 0;
  }

  return v10;
}

- (void)setInterfaceAvailability
{
  if ([(NRLink *)self virtualInterface])
  {
    [(NRLink *)self virtualInterface];
    v8 = NEVirtualInterfaceCopyName();
    sub_10013CC88(v8);
  }

  else
  {
    nrUUID = self->_nrUUID;
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return;
    }

    v6 = self->_nrUUID;
    v8 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs();
  }
}

- (void)setIkeClassDEstablished:(BOOL)established
{
  if (self->_ikeClassDEstablished != established)
  {
    self->_ikeClassDEstablished = established;
    if (established)
    {
      selfCopy = self;
      v4 = nr_absolute_time();
      self = selfCopy;
    }

    else
    {
      v4 = 0;
    }

    self->_ikeClassDEstablishedTime = v4;
  }
}

- (void)setIkeClassCEstablished:(BOOL)established
{
  if (self->_ikeClassCEstablished != established)
  {
    self->_ikeClassCEstablished = established;
    if (self->_isPrimary && established)
    {
      ikeClassDEstablishedTime = self->_ikeClassDEstablishedTime;
      nr_absolute_time();
      NRDiffMachTimeInSeconds();
      if (v6 > 1.0)
      {
        nrUUID = self->_nrUUID;
        v8 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v10 = self->_nrUUID;
          v11 = _NRCopyLogObjectForNRUUID();
          copyDescription = [(NRLink *)self copyDescription];
          _NRLogWithArgs();
        }

        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        v19 = qword_1002290B8;
        v12 = self->_nrUUID;
        if (!v19)
        {
          goto LABEL_16;
        }

        v13 = sub_100003490();
        dispatch_assert_queue_V2(v13);

        if (v12)
        {
          v14 = [v19[28] objectForKeyedSubscript:v12];

          if (!v14)
          {
LABEL_16:

            return;
          }

          v15 = [v19[28] objectForKeyedSubscript:v12];
          sub_100101D0C(v15);
        }

        else
        {
          v16 = sub_1000B9544();
          v17 = _NRLogIsLevelEnabled();

          if (!v17)
          {
            goto LABEL_16;
          }

          v15 = sub_1000B9544();
          _NRLogWithArgs();
        }

        goto LABEL_16;
      }
    }
  }
}

- (BOOL)shouldCreateCompanionProxyAgent
{
  v2 = sub_100163A30(NRDLocalDevice, self->_nrUUID);
  if (!v2)
  {
    v6 = sub_100140094();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = sub_100140094();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v9 = *__error();
    v10 = _os_log_pack_fill();
    *v10 = 136446210;
    *(v10 + 4) = "[NRLink shouldCreateCompanionProxyAgent]";
    sub_100140094();
    _NRLogAbortWithPack();
  }

  v3 = v2;
  v4 = sub_100140C44(v2);

  return v4;
}

- (BOOL)setInterfaceRank
{
  if ([(NRLink *)self state]!= 9)
  {
    nrUUID = [(NRLink *)self nrUUID];
    v5 = sub_100163A30(NRDLocalDevice, nrUUID);

    if (!v5)
    {
      v17 = sub_100140094();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v19 = sub_100140094();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v20 = *__error();
      v21 = _os_log_pack_fill();
      *v21 = 136446210;
      *(v21 + 4) = "[NRLink setInterfaceRank]";
      sub_100140094();
      _NRLogAbortWithPack();
    }

    v6 = v5[18];

    if (v6)
    {
      v7 = v5[18];
      requiresReachability = [v7 requiresReachability];

      isCompanionLink = [(NRLink *)self isCompanionLink];
      v10 = isCompanionLink;
      if (requiresReachability)
      {
        [(NRLink *)self virtualInterface];
        if (!v10)
        {
          v11 = NEVirtualInterfaceSetRankPrimaryEligible();
          goto LABEL_15;
        }

LABEL_7:
        v11 = NEVirtualInterfaceSetRankLast();
LABEL_15:
        v3 = v11;

        return v3 != 0;
      }

      if ((isCompanionLink & 1) == 0)
      {
        v12 = v5[18];
        if ([v12 hasPoliciesForProxyCriteria])
        {
          v13 = v5[18];
          proxyProviderCriteria = [v13 proxyProviderCriteria];
          forwardNonMatchingTraffic = [proxyProviderCriteria forwardNonMatchingTraffic];

          if (forwardNonMatchingTraffic)
          {
            [(NRLink *)self virtualInterface];
            goto LABEL_7;
          }
        }

        else
        {
        }
      }
    }

    [(NRLink *)self virtualInterface];
    v11 = NEVirtualInterfaceSetRankNever();
    goto LABEL_15;
  }

  [(NRLink *)self virtualInterface];
  v3 = NEVirtualInterfaceSetRankNever();
  return v3 != 0;
}

- (void)processIKEDisconnection:(unsigned __int8)disconnection error:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    state = self->_state;
    if (state == 8 || state == 9 && self->_type == 1)
    {
      v7 = NEIKEv2ErrorDomain;
      v15 = errorCopy;
      v8 = [errorCopy code] == 3;
      v9 = v15;
      if (!v8 || ([v15 domain], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", v7), v10, v9 = v15, (v11 & 1) == 0))
      {
        String = v9;
        if ([String code] != 4)
        {
LABEL_11:

          errorCopy = v15;
          goto LABEL_12;
        }

        domain = [String domain];
        v14 = [domain isEqualToString:v7];

        errorCopy = v15;
        if (!v14)
        {
          goto LABEL_12;
        }
      }

      String = NRDataProtectionClassCreateString();
      [(NRLink *)self cancelWithReason:@"%@ session disconnected due to no response from peer", String];
      goto LABEL_11;
    }
  }

LABEL_12:
}

- (void)dealloc
{
  nrUUID = self->_nrUUID;
  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = self->_nrUUID;
    v7 = _NRCopyLogObjectForNRUUID();
    v10 = 547;
    copyDescription = [(NRLink *)self copyDescription];
    v8 = "";
    v9 = "[NRLink dealloc]";
    _NRLogWithArgs();
  }

  [(NRLink *)self invalidateLink:v8];
  v12.receiver = self;
  v12.super_class = NRLink;
  [(NRLink *)&v12 dealloc];
}

- (void)setLinkMTU
{
  if (!self->_virtualInterface)
  {
    return;
  }

  v3 = sub_100163A30(NRDLocalDevice, self->_nrUUID);
  if (v3 && v3[8] >= 0xCu && !self->_isExternalDeviceLink)
  {
    v4 = 1400;
    if (!self->_hasCompanionDatapath)
    {
      if (self->_type == 1)
      {
        v4 = 1500;
      }

      else
      {
        v4 = 1400;
      }
    }

    if (self->_linkMTU != v4)
    {
      v18 = v3;
      virtualInterface = self->_virtualInterface;
      if (NEVirtualInterfaceSetMTU())
      {
        self->_linkMTU = v4;
        nrUUID = self->_nrUUID;
        v7 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        v3 = v18;
        if (IsLevelEnabled)
        {
          v9 = self->_nrUUID;
          v10 = _NRCopyLogObjectForNRUUID();
          copyDescription = [(NRLink *)self copyDescription];
          linkMTU = self->_linkMTU;
LABEL_16:
          _NRLogWithArgs();

          v3 = v18;
        }
      }

      else
      {
        v12 = self->_nrUUID;
        v13 = _NRCopyLogObjectForNRUUID();
        v14 = _NRLogIsLevelEnabled();

        v3 = v18;
        if (v14)
        {
          v15 = self->_nrUUID;
          v10 = _NRCopyLogObjectForNRUUID();
          copyDescription = [(NRLink *)self copyDescription];
          v16 = self->_linkMTU;
          goto LABEL_16;
        }
      }
    }
  }
}

- (BOOL)changeStateTo:(unsigned __int8)to details:(id)details
{
  toCopy = to;
  detailsCopy = details;
  v7 = detailsCopy;
  switch(toCopy)
  {
    case 8:
      [(NRLink *)self reportEvent:3004 details:detailsCopy];
      v8 = 0;
      goto LABEL_8;
    case 9:
      v9 = 3002;
      goto LABEL_7;
    case 255:
      v9 = 3005;
LABEL_7:
      [(NRLink *)self reportEvent:v9 details:detailsCopy];
      [(NRLink *)self setClients:0];
      v8 = toCopy == 255;
      goto LABEL_8;
  }

  if (detailsCopy && [detailsCopy length])
  {
    v18 = sub_1001415A0(toCopy);
    [(NRLink *)self reportEvent:3008 detailsFormat:@"Changing state to %@ %@", v18, v7];
  }

  else
  {
    v18 = sub_1001415A0(toCopy);
    [(NRLink *)self reportEvent:3008 detailsFormat:@"Changing state to %@", v18, v19];
  }

  v8 = 0;
LABEL_8:
  state = self->_state;
  if (state != toCopy)
  {
    if (state == 8)
    {
      linkReadyStartTime = self->_linkReadyStartTime;
      nr_absolute_time();
      NRDiffMachTimeInSeconds();
      self->_linkTotalReadyTimeInSec = self->_linkTotalReadyTimeInSec + v12;
    }

    if (toCopy == 8)
    {
      self->_linkReadyStartTime = nr_absolute_time();
      pairingClient = [(NRLink *)self pairingClient];

      if (pairingClient)
      {
        pairingClient2 = [(NRLink *)self pairingClient];
        v15 = pairingClient2;
        if (pairingClient2)
        {
          sub_10000CCF0(pairingClient2);
          sub_10000C668(v15, 6u, 0);
        }

        [(NRLink *)self setPairingClient:0];
      }

      [(NRLink *)self setLinkMTU];
      sub_1001416F4(self);
    }

    else if (toCopy == 255 || toCopy == 9)
    {
      [(NRLink *)self removePolicies];
      v16 = !v8;
      if (state != 8)
      {
        v16 = 1;
      }

      if ((v16 & 1) == 0 && [(NRLink *)self virtualInterface])
      {
        [(NRLink *)self setInterfaceAvailability];
      }
    }

    self->_state = toCopy;
  }

  return state != toCopy;
}

- (void)reportEvent:(unsigned int)event details:(id)details
{
  detailsCopy = details;
  nrUUID = [(NRLink *)self nrUUID];
  copyShortDescription = [(NRLink *)self copyShortDescription];
  sub_1000059A8(nrUUID, event, copyShortDescription, detailsCopy);
}

- (BOOL)resume
{
  if (self->_ikeClassDEstablished || self->_ikeClassCEstablished)
  {
    return 1;
  }

  nrUUID = self->_nrUUID;
  v5 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v7 = self->_nrUUID;
    v8 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs();
  }

  return 0;
}

- (id)copyShortDescription
{
  v3 = [NSString alloc];
  copyShortDescriptionInner = [(NRLink *)self copyShortDescriptionInner];
  v5 = [v3 initWithFormat:@"[%@]", copyShortDescriptionInner];

  return v5;
}

- (id)copyShortDescriptionInner
{
  v3 = [NSString alloc];
  identifier = self->_identifier;
  isPrimary = [(NRLink *)self isPrimary];
  type = self->_type;
  ShortStringFromNRLinkType = createShortStringFromNRLinkType();
  state = self->_state;
  if (state == 8)
  {
    v9 = @"Rdy";
  }

  else
  {
    v9 = sub_1001415A0(state);
  }

  v10 = "";
  if (isPrimary)
  {
    v10 = " P";
  }

  v11 = [v3 initWithFormat:@"%llu%s %@ %@", identifier, v10, ShortStringFromNRLinkType, v9];

  return v11;
}

- (NSString)description
{
  copyDescription = [(NRLink *)self copyDescription];

  return copyDescription;
}

- (id)copyDescription
{
  v3 = [NSString alloc];
  copyDescriptionInner = [(NRLink *)self copyDescriptionInner];
  v5 = [v3 initWithFormat:@"[%@]", copyDescriptionInner];

  return v5;
}

- (id)copyDescriptionInner
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"%llu", -[NRLink identifier](self, "identifier")];
  if ([(NRLink *)self isPrimary])
  {
    [v3 appendString:{@", PRIMARY"}];
  }

  [(NRLink *)self type];
  StringFromNRLinkType = createStringFromNRLinkType();
  [v3 appendFormat:@", %@", StringFromNRLinkType];

  if ([(NRLink *)self subtype])
  {
    [(NRLink *)self subtype];
    ShortStringFromNRLinkSubtype = createShortStringFromNRLinkSubtype();
    [v3 appendFormat:@"(%@)", ShortStringFromNRLinkSubtype];
  }

  v6 = sub_1001415A0([(NRLink *)self state]);
  [v3 appendFormat:@", %@", v6];

  if ([(NRLink *)self virtualInterface])
  {
    [(NRLink *)self virtualInterface];
    v7 = NEVirtualInterfaceCopyName();
    [v3 appendFormat:@", %@", v7];
  }

  return v3;
}

- (id)initLinkWithQueue:(id)queue linkDelegate:(id)delegate nrUUID:(id)d
{
  queueCopy = queue;
  delegateCopy = delegate;
  dCopy = d;
  if (!queueCopy)
  {
    v21 = sub_100140094();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  dispatch_assert_queue_V2(queueCopy);
  if (!delegateCopy)
  {
    v23 = sub_100140094();
    v24 = _NRLogIsLevelEnabled();

    if (v24)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (!dCopy)
  {
    v25 = sub_100140094();
    v26 = _NRLogIsLevelEnabled();

    if (v26)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if ((_NRIsUUIDNonZero() & 1) == 0)
  {
    v27 = sub_100140094();
    v28 = _NRLogIsLevelEnabled();

    if (v28)
    {
LABEL_17:
      v29 = sub_100140094();
      _NRLogWithArgs();

      selfCopy = 0;
      goto LABEL_9;
    }

LABEL_18:
    selfCopy = 0;
    goto LABEL_9;
  }

  v35.receiver = self;
  v35.super_class = NRLink;
  v12 = [(NRLink *)&v35 init];
  if (!v12)
  {
    v30 = sub_100140094();
    v31 = _NRLogIsLevelEnabled();

    if (v31)
    {
      v32 = sub_100140094();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v33 = *__error();
    v34 = _os_log_pack_fill();
    *v34 = 136446210;
    *(v34 + 4) = "[NRLink initLinkWithQueue:linkDelegate:nrUUID:]";
    sub_100140094();
    _NRLogAbortWithPack();
  }

  v13 = v12;
  objc_storeStrong(&v12->_queue, queue);
  objc_storeWeak(&v13->_linkDelegate, delegateCopy);
  objc_storeStrong(&v13->_nrUUID, d);
  *&v13->_state = 1;
  v13->_subtype = 0;
  v13->_linkMTU = 1500;
  nrUUID = [(NRLink *)v13 nrUUID];
  v15 = sub_100163A30(NRDLocalDevice, nrUUID);

  if (v15)
  {
    v16 = *(v15 + 144);
    v13->_hasCompanionDatapath = [v16 hasCompanionDatapath];

    v17 = (*(v15 + 48) >> 3) & 1;
  }

  else
  {
    v13->_hasCompanionDatapath = [0 hasCompanionDatapath];
    LOBYTE(v17) = 0;
  }

  v13->_isExternalDeviceLink = v17;
  v18 = objc_alloc_init(NSMutableArray);
  [(NRLink *)v13 setPolicyIDs:v18];

  v13->_identifier = atomic_fetch_add_explicit(&qword_100228A88, 1uLL, memory_order_relaxed);
  self = v13;

  selfCopy = self;
LABEL_9:

  return selfCopy;
}

- (BOOL)shouldSendIDSDeviceID
{
  if ([(NRLink *)self isExternalDeviceLink])
  {
    return 0;
  }

  if ([(NRLink *)self isCompanionLink])
  {
    if ([(NRLink *)self type]== 1)
    {
      v4 = 1;
    }

    else
    {
      if (qword_100229238 != -1)
      {
        dispatch_once(&qword_100229238, &stru_1001FC340);
      }

      v4 = byte_100229230;
    }

    return v4 & 1;
  }

  else
  {
    nrUUID = [(NRLink *)self nrUUID];
    v6 = sub_100163A30(NRDLocalDevice, nrUUID);

    if (v6)
    {
      v7 = v6[18];
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    allowsApplicationServiceConnections = [v8 allowsApplicationServiceConnections];

    return allowsApplicationServiceConnections;
  }
}

- (void)checkProxyAgentWithForceUpdate:(BOOL)update
{
  v5 = sub_100163A30(NRDLocalDevice, self->_nrUUID);
  if (!v5)
  {
    v22 = sub_100140094();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v24 = sub_100140094();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v25 = *__error();
    v26 = _os_log_pack_fill();
    *v26 = 136446210;
    *(v26 + 4) = "[NRLink(NRLinkProtected) checkProxyAgentWithForceUpdate:]";
    sub_100140094();
    _NRLogAbortWithPack();
  }

  v6 = v5;
  if (update)
  {
    goto LABEL_24;
  }

  v7 = self->_usedProxyNotifyPayload;
  v8 = v6[12];
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_18;
  }

  v10 = self->_usedProxyNotifyPayload;
  v11 = v6[12];
  v12 = [(NSData *)v10 isEqual:v11];

  if ((v12 & 1) == 0)
  {
LABEL_24:
    v13 = v6[18];
    proxyCapability = [v13 proxyCapability];

    if (proxyCapability == 2)
    {
      [(NRLink *)self unregisterProxyAgent];
      objc_storeStrong(&self->_usedProxyNotifyPayload, v6[12]);
      if (self->_usedProxyNotifyPayload)
      {
        v29 = 0;
        v30 = 0;
        v27 = 0;
        v28 = 0;
        if ([(NRLink *)self virtualInterface])
        {
          [(NRLink *)self virtualInterface];
          localInterfaceName = NEVirtualInterfaceCopyName();
        }

        else
        {
          if ([(NRLink *)self hasCompanionDatapath])
          {
            v16 = 0;
LABEL_14:
            v17 = self->_usedProxyNotifyPayload;
            v18 = [(NRLink *)self description];
            v19 = sub_1001428D4(v6, v17, v16, &v29, &v30, &v28, &v27, v18);

            if (v19)
            {
              v20 = v29;
              [(NRLink *)self setShoesProxyAgentRegistration:v29];
              v21 = v30;
              objc_storeStrong(&self->_proxyAgentUUID, v30);
              [(NRLink *)self setPublishedMasqueProxyConfig:v28];
              [(NRLink *)self setProxyEndpoint:v27];
            }

            else
            {
              [(NRLink *)self cancelWithReason:@"Failed to configure proxy agent"];
              v20 = v29;
              v21 = v30;
            }

            goto LABEL_18;
          }

          localInterfaceName = [(NRLink *)self localInterfaceName];
        }

        v16 = localInterfaceName;
        goto LABEL_14;
      }
    }
  }

LABEL_18:
}

- (BOOL)setupVirtualInterface
{
  if ([(NRLink *)self virtualInterface]|| ![(NRLink *)self hasCompanionDatapath])
  {
LABEL_44:
    [(NRLink *)self checkProxyAgentWithForceUpdate:1];
    return [(NRLink *)self state]!= 255;
  }

  queue = [(NRLink *)self queue];
  [(NRLink *)self setVirtualInterface:sub_100144910(2, queue)];

  if (![(NRLink *)self virtualInterface])
  {
    nrUUID = self->_nrUUID;
    v18 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return 0;
    }

    v20 = self->_nrUUID;
    v5 = _NRCopyLogObjectForNRUUID();
    copyDescription = [(NRLink *)self copyDescription];
    _NRLogWithArgs();

    goto LABEL_48;
  }

  if (![(NRLink *)self setInterfaceSubfamily])
  {
    v21 = self->_nrUUID;
    v22 = _NRCopyLogObjectForNRUUID();
    v23 = _NRLogIsLevelEnabled();

    if (v23)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (![(NRLink *)self setNoACKPrioritization])
  {
    v25 = self->_nrUUID;
    v26 = _NRCopyLogObjectForNRUUID();
    v27 = _NRLogIsLevelEnabled();

    if (v27)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (![(NRLink *)self setInterfaceRank])
  {
    v28 = self->_nrUUID;
    v29 = _NRCopyLogObjectForNRUUID();
    v30 = _NRLogIsLevelEnabled();

    if (v30)
    {
LABEL_24:
      v31 = self->_nrUUID;
      v32 = _NRCopyLogObjectForNRUUID();
      copyDescription2 = [(NRLink *)self copyDescription];
      _NRLogWithArgs();
    }

LABEL_25:
    [(NRLink *)self invalidateVirtualInterface];
    return 0;
  }

  nrUUID = [(NRLink *)self nrUUID];
  v5 = sub_100163A30(NRDLocalDevice, nrUUID);

  if (!v5)
  {
    v64 = sub_100140094();
    v65 = _NRLogIsLevelEnabled();

    if (v65)
    {
      v66 = sub_100140094();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v67 = *__error();
    v68 = _os_log_pack_fill();
    *v68 = 136446210;
    *(v68 + 4) = "[NRLink(NRLinkProtected) setupVirtualInterface]";
    sub_100140094();
    _NRLogAbortWithPack();
  }

  [(NRLink *)self virtualInterface];
  v6 = sub_100172E20(v5);
  v7 = NEVirtualInterfaceAddAddress();

  if (v7)
  {
    [(NRLink *)self virtualInterface];
    v8 = sub_100172E88(v5);
    v9 = NEVirtualInterfaceAddAddress();

    if (v9)
    {
      [(NRLink *)self virtualInterface];
      v10 = sub_1001731B0(v5);
      v11 = NEVirtualInterfaceAddAddress();

      if (v11)
      {
        [(NRLink *)self virtualInterface];
        if (NEVirtualInterfaceAddAddress())
        {
          [(NRLink *)self virtualInterface];
          v12 = sub_100172EF0(v5);
          v13 = NEVirtualInterfaceAddIPv6Route();

          if (v13)
          {
            [(NRLink *)self virtualInterface];
            v14 = sub_100172F58(v5);
            v15 = NEVirtualInterfaceAddIPv6Route();

            if (v15)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(NRLink *)self virtualInterface];
                localInterfaceName = [(NRLink *)self localInterfaceName];
                NEVirtualInterfaceSetDelegateInterface();

                [(NRLink *)self virtualInterface];
                NEVirtualInterfaceSetRankNever();
              }

              else if ([(NRLink *)self type]== 5)
              {
                [(NRLink *)self virtualInterface];
                localInterfaceName2 = [(NRLink *)self localInterfaceName];
                NEVirtualInterfaceSetDelegateInterface();
              }

              [(NRLink *)self virtualInterface];
              if (NEVirtualInterfaceUpdateAdHocService())
              {
                [(NRLink *)self virtualInterface];
                v53 = NEVirtualInterfaceCopyName();
                v54 = self->_nrUUID;
                v55 = _NRCopyLogObjectForNRUUID();
                v56 = _NRLogIsLevelEnabled();

                if (v56)
                {
                  v57 = self->_nrUUID;
                  v58 = _NRCopyLogObjectForNRUUID();
                  copyDescription3 = [(NRLink *)self copyDescription];
                  _NRLogWithArgs();
                }

                goto LABEL_44;
              }

              v59 = self->_nrUUID;
              v60 = _NRCopyLogObjectForNRUUID();
              v61 = _NRLogIsLevelEnabled();

              if ((v61 & 1) == 0)
              {
                goto LABEL_47;
              }

              goto LABEL_46;
            }

            v49 = self->_nrUUID;
            v50 = _NRCopyLogObjectForNRUUID();
            v51 = _NRLogIsLevelEnabled();

            if (v51)
            {
LABEL_46:
              v62 = self->_nrUUID;
              v63 = _NRCopyLogObjectForNRUUID();
              copyDescription4 = [(NRLink *)self copyDescription];
              _NRLogWithArgs();
            }
          }

          else
          {
            v46 = self->_nrUUID;
            v47 = _NRCopyLogObjectForNRUUID();
            v48 = _NRLogIsLevelEnabled();

            if (v48)
            {
              goto LABEL_46;
            }
          }
        }

        else
        {
          v43 = self->_nrUUID;
          v44 = _NRCopyLogObjectForNRUUID();
          v45 = _NRLogIsLevelEnabled();

          if (v45)
          {
            goto LABEL_46;
          }
        }
      }

      else
      {
        v40 = self->_nrUUID;
        v41 = _NRCopyLogObjectForNRUUID();
        v42 = _NRLogIsLevelEnabled();

        if (v42)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
      v37 = self->_nrUUID;
      v38 = _NRCopyLogObjectForNRUUID();
      v39 = _NRLogIsLevelEnabled();

      if (v39)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    v34 = self->_nrUUID;
    v35 = _NRCopyLogObjectForNRUUID();
    v36 = _NRLogIsLevelEnabled();

    if (v36)
    {
      goto LABEL_46;
    }
  }

LABEL_47:
  [(NRLink *)self invalidateVirtualInterface];
LABEL_48:

  return 0;
}

- (BOOL)initializeExternalDeviceLink
{
  isExternalDeviceLink = self->_isExternalDeviceLink;
  if (isExternalDeviceLink)
  {
    v4 = sub_100163A30(NRDLocalDevice, self->_nrUUID);
    v5 = v4;
    if (v4)
    {
      v6 = *(v4 + 48);
      if ((v6 & 0x20) != 0)
      {
        LOBYTE(v8) = 1;
        if ((v6 & 0x1000) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v7 = (v6 & 0x10) != 0 || *(v4 + 16) > 0x12u;
        v8 = (v6 >> 14) & 1 | v7;
        if ((v6 & 0x1000) == 0)
        {
          goto LABEL_11;
        }
      }

      if ((((*(v4 + 48) & 0x2000) != 0) & v8) != 0)
      {
LABEL_12:

        return isExternalDeviceLink;
      }
    }

LABEL_11:
    sub_10016B190(NRDLocalDevice, 4, self->_nrUUID);
    sub_10016B190(NRDLocalDevice, 3, self->_nrUUID);
    sub_10016B190(NRDLocalDevice, 1, self->_nrUUID);
    goto LABEL_12;
  }

  return isExternalDeviceLink;
}

- (void)unregisterProxyAgent
{
  shoesProxyAgentRegistration = [(NRLink *)self shoesProxyAgentRegistration];

  if (shoesProxyAgentRegistration)
  {
    shoesProxyAgentRegistration2 = [(NRLink *)self shoesProxyAgentRegistration];
    [shoesProxyAgentRegistration2 unregisterNetworkAgent];

    [(NRLink *)self setShoesProxyAgentRegistration:0];
  }

  publishedMasqueProxyConfig = [(NRLink *)self publishedMasqueProxyConfig];

  if (publishedMasqueProxyConfig)
  {
    publishedMasqueProxyConfig2 = [(NRLink *)self publishedMasqueProxyConfig];
    nw_proxy_config_unpublish();

    [(NRLink *)self setPublishedMasqueProxyConfig:0];
  }

  proxyAgentUUID = self->_proxyAgentUUID;
  self->_proxyAgentUUID = 0;
}

- (void)invalidateIKESessionForClass:(unsigned __int8)class
{
  if (class == 3)
  {
    [(NRLink *)self setIkeClassCEstablished:0];
  }

  else if (class == 4)
  {
    [(NRLink *)self setIkeClassDEstablished:0];
  }
}

- (void)invalidateIKESession:(id *)session
{
  if (*session)
  {
    nrUUID = self->_nrUUID;
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = self->_nrUUID;
      v9 = _NRCopyLogObjectForNRUUID();
      copyDescription = [(NRLink *)self copyDescription];
      v16 = *session;
      _NRLogWithArgs();
    }

    objc_initWeak(&location, *session);
    v10 = [objc_opt_class() description];
    v11 = dispatch_time(0, 5000000000);
    queue = [(NRLink *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100145178;
    block[3] = &unk_1001FD0D8;
    objc_copyWeak(&v19, &location);
    v13 = v10;
    v18 = v13;
    dispatch_after(v11, queue, block);

    [*session setStateUpdateBlock:0];
    [*session setChildStateUpdateBlock:0];
    [*session setConfigurationUpdateBlock:0];
    [*session setTrafficSelectorUpdateBlock:0];
    [*session setAdditionalAddressesUpdateBlock:0];
    [*session setShortDPDEventBlock:0];
    [*session setRedirectEventBlock:0];
    [*session setPrivateNotifyStatusEvent:0];
    [*session disconnect];
    [*session invalidate];
    v14 = *session;
    *session = 0;

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

- (void)invalidateVirtualInterface
{
  if ([(NRLink *)self virtualInterface])
  {
    CFRelease([(NRLink *)self virtualInterface]);

    [(NRLink *)self setVirtualInterface:0];
  }
}

- (void)invalidateLink
{
  objc_storeWeak(&self->_linkDelegate, 0);
  *&self->_ikeClassCEstablished = 0;
  [(NRLink *)self unregisterProxyAgent];
  [(NRLink *)self setPowerAssertionState:0];
  pairingClient = [(NRLink *)self pairingClient];

  if (pairingClient)
  {
    pairingClient2 = [(NRLink *)self pairingClient];
    v5 = pairingClient2;
    if (pairingClient2)
    {
      sub_10000CCF0(pairingClient2);
      sub_10000C668(v5, 6u, 0);
    }

    [(NRLink *)self setPairingClient:0];
  }

  objc_opt_self();
  if (qword_100228E88 != -1)
  {
    dispatch_once(&qword_100228E88, &stru_1001FA180);
  }

  v6 = qword_100228E80;
  selfCopy = self;
  if (!v6)
  {
    goto LABEL_28;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = v6[3];
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (!v9)
  {
    v19 = v8;
    goto LABEL_27;
  }

  v10 = v9;
  v33 = selfCopy;
  v11 = *v39;
LABEL_11:
  v12 = 0;
  while (1)
  {
    if (*v39 != v11)
    {
      objc_enumerationMutation(v8);
    }

    v13 = *(*(&v38 + 1) + 8 * v12);
    v14 = [v6[3] objectForKeyedSubscript:{v13, v33}];
    v15 = v14;
    if (!v14)
    {
      goto LABEL_12;
    }

    v16 = v6;
    v17 = *(v14 + 24);
    identifier = [v17 identifier];
    if (identifier == [(NRLink *)v33 identifier])
    {
      break;
    }

    v6 = v16;
LABEL_12:

    if (v10 == ++v12)
    {
      v10 = [v8 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v10)
      {
        goto LABEL_11;
      }

      v19 = v8;
      selfCopy = v33;
      goto LABEL_27;
    }
  }

  v19 = v13;

  selfCopy = v33;
  v6 = v16;
  if (!v19)
  {
    goto LABEL_28;
  }

  [*(v16 + 24) setObject:0 forKeyedSubscript:v19];
  if (qword_100228E98 != -1)
  {
    dispatch_once(&qword_100228E98, &stru_1001FA1F0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228E98 != -1)
    {
      dispatch_once(&qword_100228E98, &stru_1001FA1F0);
    }

    _NRLogWithArgs();
  }

  sub_100015C1C(v16);
LABEL_27:

LABEL_28:
  if ([(NRLink *)selfCopy virtualInterface])
  {
    [(NRLink *)selfCopy virtualInterface];
    v20 = NEVirtualInterfaceCopyName();
    if (v20)
    {
      v21 = v20;
      v22 = &qword_100229000;
      if (qword_100229378 == -1)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v28 = sub_100140094();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v30 = sub_100140094();
        _NRLogWithArgs();
      }

      v22 = _os_log_pack_size();
      v21 = &v34[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = *__error();
      v32 = _os_log_pack_fill();
      *v32 = 136446210;
      *(v32 + 4) = "[NRLink(NRLinkProtected) invalidateLink]";
      sub_100140094();
      _NRLogAbortWithPack();
    }

    dispatch_once(&qword_100229378, &stru_1001FC6A0);
LABEL_31:
    if (_NRLogIsLevelEnabled())
    {
      if (v22[111] != -1)
      {
        dispatch_once(&qword_100229378, &stru_1001FC6A0);
      }

      _NRLogWithArgs();
    }

    v23 = sub_10013BCD8(v21);
    if (v23)
    {
      v24 = [objc_opt_class() description];
      v25 = dispatch_time(0, 5000000000);
      queue = [(NRLink *)selfCopy queue];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100145824;
      v34[3] = &unk_1001FD088;
      v35 = v21;
      v36 = v23;
      v37 = v24;
      v27 = v24;
      dispatch_after(v25, queue, v34);
    }
  }
}

@end