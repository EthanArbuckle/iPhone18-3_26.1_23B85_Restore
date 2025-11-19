@interface NRDDeviceConductor
- (BOOL)preferWiFiP2PRequestUpdated;
- (BOOL)preferWiFiRequestAvailable;
- (BOOL)preferWiFiRequestUnavailable;
- (NSString)description;
- (void)apsIsConnected:(BOOL)a3;
- (void)dealloc;
- (void)deviceHasBTLinkUpgradeRequest:(BOOL)a3;
- (void)deviceHasPhoneCallRelayRequest:(BOOL)a3;
- (void)didCompleteIncomingResolveRequestForASName:(id)a3 asClient:(id)a4;
- (void)didStartBrowseRequestForASName:(id)a3 asClient:(id)a4;
- (void)didStartResolveRequestForASName:(id)a3 asClient:(id)a4;
- (void)didStartTrackingNOI:(id)a3;
- (void)didStopAdvertiseRequestForASName:(id)a3 endpoint:(id)a4 asClient:(id)a5;
- (void)didStopBrowseRequestForASName:(id)a3 asClient:(id)a4;
- (void)didStopResolveRequestForASName:(id)a3 asClient:(id)a4;
- (void)didStopTrackingAllNOIs:(id)a3;
- (void)directToCloudRequestAvailable;
- (void)directToCloudRequestUnavailable;
- (void)linkDidReceiveData:(id)a3 data:(id)a4;
- (void)linkIsAvailable:(id)a3;
- (void)linkIsReady:(id)a3;
- (void)linkIsSuspended:(id)a3;
- (void)linkIsUnavailable:(id)a3;
- (void)linkPeerIsAsleep:(id)a3 isAsleep:(BOOL)a4;
- (void)localAWDLEndpointChanged:(id)a3;
- (void)peerDidUnpairBluetooth:(BOOL)a3 nrUUID:(id)a4;
- (void)pipeDidConnectForNRUUID:(BOOL)a3 nrUUID:(id)a4;
- (void)processAppStateChanged:(id)a3;
- (void)reportBTLinkUpgradeClientAdded:(id)a3;
- (void)reportBTLinkUpgradeClientRemoved:(id)a3;
@end

@implementation NRDDeviceConductor

- (void)didStopAdvertiseRequestForASName:(id)a3 endpoint:(id)a4 asClient:(id)a5
{
  v31 = a3;
  v8 = a4;
  v9 = a5;
  if (self && self->_isEnabled && v31 && self->_asClient == v9)
  {
    v30 = v9;
    if (v8)
    {
      nrUUID = self->_nrUUID;
      v11 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v13 = self->_nrUUID;
        v14 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }

      v15 = v31;
      v16 = v8;
      if (nw_endpoint_get_type(v16) == nw_endpoint_type_address)
      {
        v17 = objc_alloc_init(NSMutableData);
        v18 = [v15 dataUsingEncoding:4];
        NRTLVAddData();
        v19 = [NWAddressEndpoint endpointWithCEndpoint:v16];
        v20 = [v19 port];
        v21 = sub_10013D308(v19, [v20 intValue], 0);

        NRTLVAddData();
        v22 = objc_alloc_init(NSMutableData);
        NRTLVAddData();
        v23 = sub_10002A50C([NRLinkDirectorMessage alloc], self->_nrUUID);
        sub_10002AB38(v23, 20, v22);
        sub_10002C0E8(v23);
      }

      else
      {
        v24 = self->_nrUUID;
        v25 = _NRCopyLogObjectForNRUUID();
        v26 = _NRLogIsLevelEnabled();

        if (!v26)
        {
LABEL_13:

LABEL_14:
          v9 = v30;
          goto LABEL_15;
        }

        v27 = self->_nrUUID;
        v17 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }

      goto LABEL_13;
    }

    v28 = sub_1000E83DC();
    v29 = _NRLogIsLevelEnabled();

    v9 = v30;
    if (v29)
    {
      v15 = sub_1000E83DC();
      _NRLogWithArgs();
      goto LABEL_14;
    }
  }

LABEL_15:
}

- (void)didCompleteIncomingResolveRequestForASName:(id)a3 asClient:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (self && self->_isEnabled && v13 && self->_asClient == v6)
  {
    v7 = v6;
    nrUUID = self->_nrUUID;
    v9 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = self->_nrUUID;
      v12 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    sub_1000E8568(self, v13);
    v6 = v7;
  }
}

- (void)didStopResolveRequestForASName:(id)a3 asClient:(id)a4
{
  v20 = a3;
  v6 = a4;
  if (self && self->_isEnabled && v20 && self->_asClient == v6)
  {
    v7 = v6;
    nrUUID = self->_nrUUID;
    v9 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = self->_nrUUID;
      v12 = _NRCopyLogObjectForNRUUID();
      v18 = 9626;
      v19 = v20;
      v16 = "";
      v17 = "[NRDDeviceConductor didStopResolveRequestForASName:asClient:]";
      _NRLogWithArgs();
    }

    [(NSMutableDictionary *)self->_asNamesToResolvedEndpoints setObject:0 forKeyedSubscript:v20, v16, v17, v18, v19];
    [(NSMutableDictionary *)self->_outgoingResolveASNameToToken setObject:0 forKeyedSubscript:v20];
    asClient = self->_asClient;
    if (asClient)
    {
      asClient = asClient->_asNamesForResolving;
    }

    v14 = asClient;
    if ([(NRApplicationServiceClient *)v14 count])
    {
    }

    else
    {
      qrAssertedForResolve = self->_qrAssertedForResolve;

      v6 = v7;
      if (!qrAssertedForResolve)
      {
        goto LABEL_14;
      }

      self->_qrAssertedForResolve = 0;
      [(NRQuickRelayAgent *)self->_quickRelayAgent unassertAgentWithOptions:0];
    }

    v6 = v7;
  }

LABEL_14:
}

- (void)didStartResolveRequestForASName:(id)a3 asClient:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (self && self->_isEnabled && v13 && self->_asClient == v6)
  {
    v7 = v6;
    nrUUID = self->_nrUUID;
    v9 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = self->_nrUUID;
      v12 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    sub_1000E8C70(self, 0, 1);
    v6 = v7;
  }
}

- (void)didStopBrowseRequestForASName:(id)a3 asClient:(id)a4
{
  v16 = a3;
  v6 = a4;
  if (self && self->_isEnabled && v16 && self->_asClient == v6)
  {
    v7 = v6;
    nrUUID = self->_nrUUID;
    v9 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = self->_nrUUID;
      v12 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    asClient = self->_asClient;
    if (asClient)
    {
      asClient = asClient->_asNamesForBrowsing;
    }

    v14 = asClient;
    if ([(NRApplicationServiceClient *)v14 count])
    {
    }

    else
    {
      qrAssertedForBrowse = self->_qrAssertedForBrowse;

      v6 = v7;
      if (!qrAssertedForBrowse)
      {
        goto LABEL_14;
      }

      self->_qrAssertedForBrowse = 0;
      [(NRQuickRelayAgent *)self->_quickRelayAgent unassertAgentWithOptions:0];
    }

    v6 = v7;
  }

LABEL_14:
}

- (void)didStartBrowseRequestForASName:(id)a3 asClient:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (self && self->_isEnabled && v13 && self->_asClient == v6)
  {
    v7 = v6;
    nrUUID = self->_nrUUID;
    v9 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = self->_nrUUID;
      v12 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    sub_1000E8C70(self, 1, 0);
    v6 = v7;
  }
}

- (void)localAWDLEndpointChanged:(id)a3
{
  v4 = a3;
  if (self && self->_isEnabled && self->_supportsAWDL)
  {
    v5 = v4;
    sub_1000EA6A0(self);
    sub_1000EA900(self);
    v4 = v5;
  }
}

- (void)directToCloudRequestUnavailable
{
  if (!self || !self->_allowsDirectToCloud)
  {
    return;
  }

  v3 = nr_absolute_time();
  directToCloudAnalytics = self->_directToCloudAnalytics;
  if (!directToCloudAnalytics || (directToCloudAnalytics->_directToCloudRequestEnd = v3, (v5 = self->_directToCloudAnalytics) == 0))
  {
    self->_directToCloudRequestEndTime = 0;
    v6 = 0;
    goto LABEL_12;
  }

  self->_directToCloudRequestEndTime = v5->_directToCloudRequestEnd;
  v6 = v5;
  if (!v6->_iRATManagerQueryStart)
  {
LABEL_12:

    goto LABEL_13;
  }

  v7 = self->_directToCloudAnalytics;
  if (!v7)
  {

    v9 = self->_directToCloudAnalytics;
    if (!v9)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  iRATManagerQueryEnd = v7->_iRATManagerQueryEnd;

  if (!iRATManagerQueryEnd)
  {
    v9 = self->_directToCloudAnalytics;
    if (v9)
    {
LABEL_9:
      v9->_iRATManagerQueryIncomplete = 1;
    }
  }

LABEL_13:
  [(NRAnalyticsDirectToCloud *)self->_directToCloudAnalytics submit];
  v10 = self->_directToCloudAnalytics;
  self->_directToCloudAnalytics = 0;
}

- (void)directToCloudRequestAvailable
{
  if (self && self->_allowsDirectToCloud)
  {
    v4 = [(NRLink *)self->_primaryLink companionProxyAgent];
  }
}

- (BOOL)preferWiFiRequestUnavailable
{
  dispatch_assert_queue_V2(self->_queue);
  self->_preferWiFiRequestInFlight = 0;
  if (_NRIsAppleInternal())
  {
    if (self->_disablePreferWiFi)
    {
      nrUUID = self->_nrUUID;
      v4 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        goto LABEL_10;
      }

      return 0;
    }

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v6 = qword_1002290B8;
    if (v6)
    {
      v7 = v6[8];

      if (v7 == 1)
      {
        v8 = self->_nrUUID;
        v9 = _NRCopyLogObjectForNRUUID();
        v10 = _NRLogIsLevelEnabled();

        if (v10)
        {
LABEL_10:
          v11 = self->_nrUUID;
          v12 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();
        }

        return 0;
      }
    }
  }

  if (self->_hasPhoneCallRelayRequest)
  {
    v14 = self->_nrUUID;
    v15 = _NRCopyLogObjectForNRUUID();
    v16 = _NRLogIsLevelEnabled();

    if (v16)
    {
      v17 = self->_nrUUID;
      v18 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }
  }

  else
  {
    self->_p2pRequested = 0;
    if (!sub_1000EF670(self, 0, 1, 1, 0, 0) && !sub_1000EF670(self, 0, 1, 1, 1, 0))
    {
      sub_1000EF670(self, 0, 1, 0, 0, 0);
    }

    self->_pendingPreferWiFiRequest = 0;
    sub_1000EF7A0(self, 0);
  }

  return 1;
}

- (BOOL)preferWiFiRequestAvailable
{
  dispatch_assert_queue_V2(self->_queue);
  self->_preferWiFiRequestInFlight = 0;
  if (_NRIsAppleInternal())
  {
    if (self->_disablePreferWiFi)
    {
      nrUUID = self->_nrUUID;
      v4 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        goto LABEL_13;
      }

      return 0;
    }

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v6 = qword_1002290B8;
    if (v6)
    {
      v7 = v6[8];

      if (v7 == 1)
      {
        v8 = self->_nrUUID;
        v9 = _NRCopyLogObjectForNRUUID();
        v10 = _NRLogIsLevelEnabled();

        if (v10)
        {
          goto LABEL_13;
        }

        return 0;
      }
    }
  }

  if (self->_deviceSetupInProgress)
  {
    v11 = self->_nrUUID;
    v12 = _NRCopyLogObjectForNRUUID();
    v13 = _NRLogIsLevelEnabled();

    if (v13)
    {
LABEL_13:
      v14 = self->_nrUUID;
      v15 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();

      return 0;
    }

    return 0;
  }

  if (self->_hasPhoneCallRelayRequest)
  {
    v17 = self->_nrUUID;
    v18 = _NRCopyLogObjectForNRUUID();
    v19 = _NRLogIsLevelEnabled();

    if (v19)
    {
      v20 = self->_nrUUID;
      v21 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }
  }

  else
  {
    if (self->_supportsAWDL)
    {
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v22 = qword_1002290B8;
      v23 = v22;
      if (v22)
      {
        v24 = *(v22 + 12);
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;
      self->_p2pRequested = sub_10007401C(v25, 0);
    }

    v26 = sub_1000F1BC0(self, 2);
    v33 = v26;
    if (v26 && [(dispatch_queue_t *)v26 state]!= 255)
    {
      goto LABEL_32;
    }

    if (!self->_p2pRequested)
    {
      goto LABEL_38;
    }

    dispatch_assert_queue_V2(self->_queue);
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v34 = qword_1002290B8;
    v35 = v34;
    v36 = v34 ? *(v34 + 6) : 0;
    v37 = v36;

    v38 = sub_10017F7C8(v37);
    if (v38)
    {
LABEL_32:
      dispatch_assert_queue_V2(self->_queue);
      if (self->_isAlwaysReachableOverWiFi)
      {
        v39 = objc_alloc_init(NRLinkDirectorRequest);
        v40 = v39;
        if (v39)
        {
          v39->_type = 1;
          v39->_requiredLinkType = 1;
          *&v39->_attemptImmediately = 257;
        }

        sub_1000EAA20(self, v39);
      }

      if (sub_1000EF670(self, 1, 1, 1, 0, 0))
      {
        [(dispatch_queue_t *)v33 start];
      }

      else
      {
        self->_pendingPreferWiFiRequest = 1;
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_1000F2CB0;
        v47[3] = &unk_1001FD3C8;
        v47[4] = self;
        sub_1000EF670(self, 1, 0, 0, 0, v47);
        v41 = self->_nrUUID;
        v42 = _NRCopyLogObjectForNRUUID();
        v43 = _NRLogIsLevelEnabled();

        if (v43)
        {
          v44 = self->_nrUUID;
          v45 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();
        }
      }
    }

    else
    {
LABEL_38:
      sub_1000F2504(self, @"No Wi-Fi link available", v27, v28, v29, v30, v31, v32, v46);
      self->_pendingPreferWiFiRequest = 1;
    }
  }

  return 1;
}

- (BOOL)preferWiFiP2PRequestUpdated
{
  if (_NRIsAppleInternal())
  {
    if (self && self->_disablePreferWiFi)
    {
      return 0;
    }

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v3 = qword_1002290B8;
    if (v3)
    {
      v4 = v3[8];

      if (v4)
      {
        return 0;
      }
    }
  }

  if (!self)
  {
LABEL_20:
    v12 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      if (self)
      {
        nrUUID = self->_nrUUID;
        v15 = _NRCopyLogObjectForNRUUID();
        preferWiFiRequest = self->_preferWiFiRequest;
        preferWiFiRequestInFlight = self->_preferWiFiRequestInFlight;
      }

      else
      {
        v15 = _NRCopyLogObjectForNRUUID();
      }

      _NRLogWithArgs();
    }

    return 0;
  }

  if (!self->_preferWiFiRequest && !self->_preferWiFiRequestInFlight)
  {
    v11 = self->_nrUUID;
    goto LABEL_20;
  }

  if (self->_supportsAWDL)
  {
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v5 = qword_1002290B8;
    v6 = v5;
    if (v5)
    {
      v7 = *(v5 + 12);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = sub_10007401C(v8, 0);

    if (v9 != self->_p2pRequested)
    {
      [(NRDDeviceConductor *)self preferWiFiRequestUnavailable];
      [(NRDDeviceConductor *)self preferWiFiRequestAvailable];
    }
  }

  return 1;
}

- (void)reportBTLinkUpgradeClientRemoved:(id)a3
{
  if (self)
  {
    self = self->_devicePreferencesManager;
  }

  sub_100149890(self, a3);
}

- (void)reportBTLinkUpgradeClientAdded:(id)a3
{
  if (self)
  {
    self = self->_devicePreferencesManager;
  }

  sub_100149788(self, a3);
}

- (void)deviceHasBTLinkUpgradeRequest:(BOOL)a3
{
  if (a3)
  {
    v4 = objc_alloc_init(NRBluetoothLinkPreferences);
    [v4 setPacketsPerSecond:&off_100209CF8];
    if (self)
    {
      v5 = self->_devicePreferencesManager;
      v6 = self->_btLinkPreferencesAgent;
      v7 = [(NRBTLinkPreferencesAgent *)v6 agentUUID];
      v8 = [v7 UUIDString];
      sub_100149998(v5, v4, v8);

      v9 = (self->_effectiveALUAdvice >> 1) & 1;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000F31AC;
      v19[3] = &unk_1001FBA98;
      v20 = v9;
      v19[4] = self;
      sub_1000F06F8(self, 1, v9, v19);
    }

    else
    {
      v15 = [0 agentUUID];
      v16 = [v15 UUIDString];
      sub_100149998(0, v4, v16);
    }
  }

  else if (self)
  {
    v10 = self->_devicePreferencesManager;
    v11 = self->_btLinkPreferencesAgent;
    v12 = [(NRBTLinkPreferencesAgent *)v11 agentUUID];
    v13 = [v12 UUIDString];
    sub_100149A78(v10, v13);

    linkUpgradeReportForBTClassic = self->_linkUpgradeReportForBTClassic;

    sub_1000F0D40(self, linkUpgradeReportForBTClassic);
  }

  else
  {
    v17 = [0 agentUUID];
    v18 = [v17 UUIDString];
    sub_100149A78(0, v18);
  }
}

- (void)apsIsConnected:(BOOL)a3
{
  v3 = a3;
  if (self)
  {
    self->_hasReceivedFirstAPSIsConnectedUpdate = 1;
    if (self->_apsIsConnected == a3)
    {
      return;
    }

    nrUUID = self->_nrUUID;
  }

  else if (!a3)
  {
    return;
  }

  v6 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    if (self)
    {
      v8 = self->_nrUUID;
      v9 = _NRCopyLogObjectForNRUUID();
      apsIsConnected = self->_apsIsConnected;
    }

    else
    {
      v9 = _NRCopyLogObjectForNRUUID();
    }

    _NRLogWithArgs();
  }

  if (self)
  {
    self->_apsIsConnected = v3;
    if (self->_isEnabled)
    {
      if (v3)
      {

        sub_1000F35C8(self);
      }

      return;
    }

    v11 = self->_nrUUID;
  }

  v12 = _NRCopyLogObjectForNRUUID();
  v13 = _NRLogIsLevelEnabled();

  if (v13)
  {
    if (self)
    {
      v14 = self->_nrUUID;
    }

    v15 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }
}

- (void)deviceHasPhoneCallRelayRequest:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_isEnabled || !self->_supportsPhoneCallRelay || self->_hasPhoneCallRelayRequest == v3)
  {
    return;
  }

  if (!self->_phoneCallRelayAnalytics)
  {
    v5 = objc_alloc_init(NRAnalyticsPhoneCallRelay);
    phoneCallRelayAnalytics = self->_phoneCallRelayAnalytics;
    self->_phoneCallRelayAnalytics = v5;
  }

  v7 = nr_absolute_time();
  v8 = self->_phoneCallRelayAnalytics;
  if (v3)
  {
    if (v8)
    {
      v8->_phoneCallRelayStart = v7;
    }
  }

  else
  {
    if (v8)
    {
      v8->_phoneCallRelayEnd = v7;
      v9 = self->_phoneCallRelayAnalytics;
    }

    else
    {
      v9 = 0;
    }

    [(NRAnalyticsPhoneCallRelay *)v9 submit];
    v10 = self->_phoneCallRelayAnalytics;
    self->_phoneCallRelayAnalytics = 0;
  }

  nrUUID = self->_nrUUID;
  v12 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v14 = self->_nrUUID;
    v15 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }

  self->_hasPhoneCallRelayRequest = v3;
  if (self->_isPreferWiFiProvider)
  {
    if (v3)
    {
      return;
    }

    dispatch_assert_queue_V2(self->_queue);
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

    if (v19 && (v20 = v19[3], dispatch_assert_queue_V2(v20), v20, *(v19 + 10) >= 1))
    {
      preferWiFiRequest = self->_preferWiFiRequest;

      if (!preferWiFiRequest)
      {
        v22 = self->_nrUUID;
        v23 = _NRCopyLogObjectForNRUUID();
        v24 = _NRLogIsLevelEnabled();

        if (v24)
        {
          v25 = self->_nrUUID;
          v26 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();
        }

        [(NRDDeviceConductor *)self preferWiFiRequestAvailable];
        return;
      }
    }

    else
    {
    }

    dispatch_assert_queue_V2(self->_queue);
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v32 = qword_1002290B8;
    v33 = v32;
    if (v32)
    {
      v34 = *(v32 + 6);
    }

    else
    {
      v34 = 0;
    }

    v43 = v34;

    v35 = v43;
    if (v43 && (v36 = v43[3], dispatch_assert_queue_V2(v36), v36, v35 = v43, *(v43 + 10) > 0))
    {
    }

    else
    {
      v37 = self->_preferWiFiRequest;

      if (v37)
      {
        v38 = self->_nrUUID;
        v39 = _NRCopyLogObjectForNRUUID();
        v40 = _NRLogIsLevelEnabled();

        if (v40)
        {
          v41 = self->_nrUUID;
          v42 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();
        }

        [(NRDDeviceConductor *)self preferWiFiRequestUnavailable];
      }
    }
  }

  else if (v3 && !self->_preferWiFiRequest && self->_pendingPreferWiFiRequest)
  {
    v27 = self->_nrUUID;
    v28 = _NRCopyLogObjectForNRUUID();
    v29 = _NRLogIsLevelEnabled();

    if (v29)
    {
      v30 = self->_nrUUID;
      v31 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    self->_pendingPreferWiFiRequest = 0;
  }
}

- (void)peerDidUnpairBluetooth:(BOOL)a3 nrUUID:(id)a4
{
  v4 = a3;
  v16 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_peerDidUnpairBluetooth != v4)
  {
    if (([(NSUUID *)self->_nrUUID isEqual:v16]& 1) == 0)
    {
      v11 = sub_1000E83DC();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v13 = sub_1000E83DC();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v14 = *__error();
      v15 = _os_log_pack_fill();
      *v15 = 136446210;
      *(v15 + 4) = "[NRDDeviceConductor peerDidUnpairBluetooth:nrUUID:]";
      sub_1000E83DC();
      _NRLogAbortWithPack();
    }

    nrUUID = self->_nrUUID;
    v7 = _NRCopyLogObjectForNRUUID();
    v8 = _NRLogIsLevelEnabled();

    if (v8)
    {
      v9 = self->_nrUUID;
      v10 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    self->_peerDidUnpairBluetooth = v4;
    sub_1000F4104(self);
  }
}

- (void)pipeDidConnectForNRUUID:(BOOL)a3 nrUUID:(id)a4
{
  v4 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (([(NSUUID *)self->_nrUUID isEqual:v6]& 1) == 0)
  {
    v15 = sub_1000E83DC();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v17 = sub_1000E83DC();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v18 = *__error();
    v19 = _os_log_pack_fill();
    *v19 = 136446210;
    *(v19 + 4) = "[NRDDeviceConductor pipeDidConnectForNRUUID:nrUUID:]";
    sub_1000E83DC();
    _NRLogAbortWithPack();
  }

  nrUUID = self->_nrUUID;
  v8 = _NRCopyLogObjectForNRUUID();
  v9 = _NRLogIsLevelEnabled();

  if (v9)
  {
    v10 = self->_nrUUID;
    v11 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }

  self->_peerDeviceIsNearby = v4;
  ++self->_peerDeviceIsNearbyUpdateCounter;
  if (v4)
  {
    sub_10003F7D8(self->_quickRelayAgent);
    peerDeviceIsNearbyUpdateCounter = self->_peerDeviceIsNearbyUpdateCounter;
    v13 = dispatch_time(0x8000000000000000, 3000000000);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F54EC;
    block[3] = &unk_1001FBAE8;
    block[4] = self;
    block[5] = peerDeviceIsNearbyUpdateCounter;
    dispatch_after(v13, queue, block);
  }

  sub_1000F4104(self);
}

- (void)linkPeerIsAsleep:(id)a3 isAsleep:(BOOL)a4
{
  v15 = a3;
  dispatch_assert_queue_V2(self->_queue);
  nrUUID = self->_nrUUID;
  v7 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v9 = self->_nrUUID;
    v10 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }

  self->_peerDeviceIsAsleep = a4;
  if (!a4 && self->_peerDeviceIsNearby)
  {
    netInfo = self->_netInfo;
    if (netInfo)
    {
      if (!netInfo->_isCoalescing)
      {
        netInfoGenerationSent = self->_netInfoGenerationSent;
        goto LABEL_11;
      }

      v12 = sub_10001EEBC(netInfo);

      if (v12)
      {
        netInfo = self->_netInfo;
        netInfoGenerationSent = self->_netInfoGenerationSent;
        if (!netInfo)
        {
          generation = 0;
          goto LABEL_12;
        }

LABEL_11:
        generation = netInfo->_generation;
LABEL_12:
        if (netInfoGenerationSent != generation)
        {
          sub_1000F5B40(self, self->_primaryLink);
        }
      }
    }

    if (self->_sendThermalPressureUpdateWhenAwake)
    {
      sub_1000F5768(self, self->_primaryLink);
    }

    if (self->_sendDeviceStateUpdateWhenAwake)
    {
      sub_1000F5974(self, self->_primaryLink);
    }
  }

  sub_1000F4104(self);
}

- (void)linkDidReceiveData:(id)a3 data:(id)a4
{
  v6 = a3;
  v384 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v382 = v6;
  if (self->_isEnabled)
  {
    if ([v6 state]!= 255)
    {
      v7 = self->_nrUUID;
      v8 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v10 = self->_nrUUID;
        v11 = _NRCopyLogObjectForNRUUID();
        v375 = [v384 length];
        v376 = v382;
        v374 = 6627;
        v372 = "";
        v373 = "[NRDDeviceConductor linkDidReceiveData:data:]";
        _NRLogWithArgs();
      }

      v12 = self->_nrUUID;
      v13 = sub_10002A684(NRLinkDirectorMessage, v384, v12);

      v383 = v13;
      if (!v13)
      {
        nrUUID = self->_nrUUID;
        v44 = _NRCopyLogObjectForNRUUID();
        v45 = _NRLogIsLevelEnabled();

        if (v45)
        {
          v46 = self->_nrUUID;
          v47 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();
        }

LABEL_364:

        goto LABEL_365;
      }

      v407 = self;
      v14 = sub_10002B210(v13, 1);
      v15 = [v14 firstObject];

      if (v15)
      {
        v16 = self->_nrUUID;
        v17 = _NRCopyLogObjectForNRUUID();
        v18 = _NRLogIsLevelEnabled();

        if (v18)
        {
          v19 = self->_nrUUID;
          v20 = _NRCopyLogObjectForNRUUID();
          v374 = 6636;
          v372 = "";
          v373 = "[NRDDeviceConductor linkDidReceiveData:data:]";
          _NRLogWithArgs();
        }

        if (self->_helloMessageReceivedOnce)
        {
          v21 = self->_nrUUID;
          v22 = _NRCopyLogObjectForNRUUID();
          v23 = _NRLogIsLevelEnabled();

          if (v23)
          {
            v24 = self->_nrUUID;
            v25 = _NRCopyLogObjectForNRUUID();
            v374 = 6642;
            v372 = "";
            v373 = "[NRDDeviceConductor linkDidReceiveData:data:]";
            _NRLogWithArgs();
          }

          sub_1000F91EC(self, v382, 1);
          objc_opt_self();
          if (qword_1002294C8 != -1)
          {
            dispatch_once(&qword_1002294C8, &stru_1001FD250);
          }

          v26 = qword_1002294C0;
          if (v26)
          {
            v27 = v26;
            dispatch_assert_queue_V2(*(v26 + 2));
            if ((v27[10] & 1) == 0)
            {
              v27[10] = 1;
              if (v27[8] == 4)
              {
                sub_100181020(v27);
                if (v27[9] == 1)
                {
                  v27[8] = 3;
                  sub_100181284(v27);
                }
              }
            }

            v28 = v27[8] & 0xFD;

            if (v28 == 1)
            {
              sub_1000F2504(self, @"Other side restarted", v29, v30, v31, v32, v33, v34, v372);
              if (self->_isPreferWiFiProvider)
              {
                v35 = sub_1000EC630(self);
                self->_pendingPreferWiFiRequest = sub_10017F64C(v35);
              }
            }
          }
        }

        else
        {
          self->_helloMessageReceivedOnce = 1;
        }
      }

      v48 = sub_10002B210(v383, 3);
      v49 = [v48 firstObject];

      v50 = self;
      if (v49 || (v51 = sub_10002B210(v383, 2), [v51 firstObject], v52 = objc_claimAutoreleasedReturnValue(), v51, v52, v50 = self, v52))
      {
        v50->_latestWiFiAddressUpdateMsgIdentifier = sub_100029538(v383);
      }

      if (v50->_supportsAWDL)
      {
        v53 = sub_10002B210(v383, 10);
        v54 = [v53 firstObject];

        if (v54)
        {
          self->_latestAWDLAddressUpdateMsgIdentifier = sub_100029538(v383);
        }
      }

      v55 = sub_10002B210(v383, 7);
      v56 = [v55 firstObject];

      v57 = v383;
      if (v56 || (v58 = sub_10002B210(v383, 13), [v58 firstObject], v59 = objc_claimAutoreleasedReturnValue(), v58, v59, v57 = v383, v59))
      {
        self->_latestPreferWiFiAckMsgIdentifier = sub_100029538(v57);
      }

      v60 = sub_10002B210(v57, 5);
      v61 = [v60 firstObject];

      v62 = v383;
      if (v61 || (v63 = sub_10002B210(v383, 13), [v63 firstObject], v64 = objc_claimAutoreleasedReturnValue(), v63, v64, v62 = v383, v64))
      {
        self->_latestPreferWiFiRequestMsgIdentifier = sub_100029538(v62);
      }

      v65 = sub_10002B210(v62, 6);
      v66 = [v65 firstObject];

      if (v66)
      {
        self->_latestDeviceLinkStateMsgIdentifier = sub_100029538(v383);
      }

      v67 = sub_10002B210(v383, 15);
      v68 = [v67 firstObject];

      if (v68)
      {
        self->_latestCountryCodeMsgIdentifier = sub_100029538(v383);
      }

      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v69 = qword_1002290B8;
      v443[0] = _NSConcreteStackBlock;
      v443[1] = 3221225472;
      v443[2] = sub_1000F92A8;
      v443[3] = &unk_1001FD060;
      v443[4] = self;
      v385 = v383;
      v444 = v385;
      sub_1000C95D8(v69, v443);

      v70 = sub_10002B210(v385, 8);
      v71 = [v70 firstObject];

      if (v71)
      {
        v72 = self;
        if (!self->_handlesLinkRecommendations && !self->_didForceWoWMode)
        {
          if (!self->_forcedWoWUUID)
          {
            v73 = +[NSUUID UUID];
            forcedWoWUUID = self->_forcedWoWUUID;
            self->_forcedWoWUUID = v73;

            v72 = self;
          }

          dispatch_assert_queue_V2(v72->_queue);
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v75 = qword_1002290B8;
          v76 = v75;
          if (v75)
          {
            v77 = *(v75 + 6);
          }

          else
          {
            v77 = 0;
          }

          v78 = v77;

          sub_10017EDB4(v78, 1, self->_forcedWoWUUID);
          dispatch_assert_queue_V2(self->_queue);
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v79 = qword_1002290B8;
          v80 = v79;
          if (v79)
          {
            v81 = *(v79 + 6);
          }

          else
          {
            v81 = 0;
          }

          v82 = v81;

          sub_10017F43C(v82, 16, self->_forcedWoWUUID, &off_10020A0A8);
          v83 = dispatch_time(0x8000000000000000, 60000000000);
          queue = self->_queue;
          block = _NSConcreteStackBlock;
          p_block = 3221225472;
          v478 = sub_100004F08;
          v479 = &unk_1001FD3C8;
          v480 = self;
          dispatch_after(v83, queue, &block);
          self->_didForceWoWMode = 1;
          sub_1000059A8(self->_nrUUID, 1029, 0, 0);
        }
      }

      v85 = sub_10002B210(v385, 11);
      v381 = [v85 firstObject];

      if ([v381 length] < 8)
      {
LABEL_98:
        if (self->_supportsPathOverrides)
        {
          v91 = sub_10002B210(v385, 12);
          v92 = [v91 firstObject];

          if (v92)
          {
            v93 = sub_10001CD58([NRNetInfo alloc], v92);
            v416 = v93;
            if (v93 && (v93[16] | 2) == 3)
            {
              sub_1000FA7F8(self);
            }

            else
            {
              sub_1000FA994(self);
            }

            v94 = v92;
            CC_SHA256([v94 bytes], objc_msgSend(v94, "length"), &block);
            obj = [[NSData alloc] initWithBytes:&block length:32];
          }

          else
          {
            obj = 0;
            v416 = 0;
          }

          v95 = self->_lastReceivedNetInfoDataHash;
          v96 = [obj isEqualToData:v95];

          if (v96)
          {
            v97 = self->_nrUUID;
            v98 = _NRCopyLogObjectForNRUUID();
            v99 = _NRLogIsLevelEnabled();

            if (v99)
            {
              v100 = self->_nrUUID;
              v101 = _NRCopyLogObjectForNRUUID();
              v374 = 6880;
              v372 = "";
              v373 = "[NRDDeviceConductor linkDidReceiveData:data:]";
              _NRLogWithArgs();
            }
          }

          else if (v92)
          {
            v102 = self->_nrUUID;
            v103 = _NRCopyLogObjectForNRUUID();
            v104 = _NRLogIsLevelEnabled();

            if (v104)
            {
              v105 = self->_nrUUID;
              v106 = _NRCopyLogObjectForNRUUID();
              v375 = v416;
              v376 = [v92 length];
              v374 = 6882;
              v372 = "";
              v373 = "[NRDDeviceConductor linkDidReceiveData:data:]";
              _NRLogWithArgs();
            }

            sub_1000FAA10(self, v416 == 0);
            if (v416)
            {
              objc_storeStrong(&self->_lastReceivedNetInfoDataHash, obj);
              v107 = nw_path_override_info_create();
              v108 = *(v416 + 7);
              nw_path_override_info_set_expensive();
              v109 = *(v416 + 7);
              nw_path_override_info_set_constrained();
              v110 = *(v416 + 7);
              nw_path_override_info_set_roaming();
              v111 = *(v416 + 16);
              nw_path_override_info_set_uses_wifi();
              v112 = *(v416 + 16);
              nw_path_override_info_set_uses_cellular();
              v113 = v416[16];
              v439 = 0u;
              v440 = 0u;
              v441 = 0u;
              v442 = 0u;
              v114 = v113;
              v115 = [v114 countByEnumeratingWithState:&v439 objects:v465 count:16];
              if (v115)
              {
                v116 = *v440;
                do
                {
                  for (i = 0; i != v115; i = i + 1)
                  {
                    if (*v440 != v116)
                    {
                      objc_enumerationMutation(v114);
                    }

                    v118 = *(*(&v439 + 1) + 8 * i);
                    nw_path_override_info_add_resolver_config();
                  }

                  v115 = [v114 countByEnumeratingWithState:&v439 objects:v465 count:16];
                }

                while (v115);
              }

              v119 = v407->_queue;
              v120 = nw_agent_create_with_path_override_info();
              sub_1000FAB30(v407, v120);

              v121 = v407->_pathOverrideAgent;
              v122 = nw_path_override_info_copy_data();
              nw_agent_change_state();

              block = 0;
              p_block = 0;
              v123 = v407->_pathOverrideAgent;
              nw_agent_get_uuid();

              v405 = [[NSUUID alloc] initWithUUIDBytes:&block];
              v124 = v407->_nrUUID;
              v125 = _NRCopyLogObjectForNRUUID();
              LODWORD(v122) = _NRLogIsLevelEnabled();

              if (v122)
              {
                v126 = v407->_nrUUID;
                v127 = _NRCopyLogObjectForNRUUID();
                v374 = 6908;
                v375 = v405;
                v372 = "";
                v373 = "[NRDDeviceConductor linkDidReceiveData:data:]";
                _NRLogWithArgs();
              }

              endpoint = [NEPolicyRouteRule routeRuleWithAction:5 forType:6, v372, v373, v374, v375, v376];
              [endpoint setNetworkAgentUUID:v405];
              v128 = [NEPolicy alloc];
              v464 = endpoint;
              v129 = [NSArray arrayWithObjects:&v464 count:1];
              v130 = [NEPolicyResult routeRules:v129];
              v131 = +[NEPolicyCondition allInterfaces];
              v463 = v131;
              v132 = [NSArray arrayWithObjects:&v463 count:1];
              v401 = [v128 initWithOrder:10 result:v130 conditions:v132];

              v133 = sub_1001599CC();
              v134 = v407->_netInfoPolicyIdentifier;
              v135 = sub_100159E00(v133, v134, v401);

              sub_1000FAB40(v407, v416);
              v136 = sub_1001599CC();
              sub_10015A52C(v136);

              v137 = v416;
              v138 = v407;
              if (*(v416 + 9) == 1 && !v407->_hasNonCompanionClients)
              {
                sub_1000FAEC0(v407);
                v138 = v407;
                v137 = v416;
              }

              if (*(v137 + 16) - 1 <= 2)
              {
                v139 = dword_1001965C0[(*(v137 + 16) - 1)];
                v437 = 0u;
                v438 = 0u;
                v435 = 0u;
                v436 = 0u;
                v140 = v138->_availableLinks;
                v141 = [(NSMutableSet *)v140 countByEnumeratingWithState:&v435 objects:v462 count:16];
                if (v141)
                {
                  v142 = *v436;
                  do
                  {
                    for (j = 0; j != v141; j = j + 1)
                    {
                      if (*v436 != v142)
                      {
                        objc_enumerationMutation(v140);
                      }

                      v144 = *(*(&v435 + 1) + 8 * j);
                      if ([v144 virtualInterface])
                      {
                        v145 = [v144 proxyAgentUUID];
                        v146 = v145 == 0;

                        if (!v146)
                        {
                          [v144 setInterfacePeerEgressFunctionalType:v139];
                        }
                      }
                    }

                    v141 = [(NSMutableSet *)v140 countByEnumeratingWithState:&v435 objects:v462 count:16];
                  }

                  while (v141);
                }

                if (v407->_catchAllInterface)
                {
                  v147 = v407->_proxyAgentUUID;
                  v148 = v147 == 0;

                  if (!v148)
                  {
                    if (v407->_catchAllInterface)
                    {
                      v149 = NEVirtualInterfaceCopyName();
                    }

                    else
                    {
                      v149 = 0;
                    }

                    sub_10013B488(v149, v139);
                  }
                }
              }
            }

            else
            {
              sub_1000FAFFC(self);
            }

            sub_1000FB114(v407, 1);
          }
        }

        v150 = sub_10002B210(v385, 6);
        v151 = v150;
        if (v150 && [v150 count])
        {
          v475 = 0u;
          v474 = 0u;
          v473 = 0u;
          v472 = 0u;
          v152 = v151;
          v153 = [v152 countByEnumeratingWithState:&v472 objects:&block count:16];
          if (v153)
          {
            v406 = 0;
            v154 = *v473;
            do
            {
              for (k = 0; k != v153; k = k + 1)
              {
                if (*v473 != v154)
                {
                  objc_enumerationMutation(v152);
                }

                v156 = *(*(&v472 + 1) + 8 * k);
                LOBYTE(v455) = 0;
                if ([v156 length] <= 1)
                {
                  v157 = [v156 length];
                }

                else
                {
                  v157 = 1;
                }

                [v156 getBytes:&v455 length:v157];
                if (!v406)
                {
                  v406 = objc_alloc_init(NSMutableArray);
                }

                if (((v455 - 1) & 0xF8) != 0)
                {
                  v158 = 0;
                }

                else
                {
                  v158 = 0x102020205040201uLL >> (8 * (v455 - 1));
                }

                v159 = [NSNumber numberWithUnsignedChar:v158 & 7];
                [v406 addObject:v159];
              }

              v153 = [v152 countByEnumeratingWithState:&v472 objects:&block count:16];
            }

            while (v153);

            if (v406)
            {
              if ([v406 count])
              {
                v433 = 0u;
                v434 = 0u;
                v431 = 0u;
                v432 = 0u;
                v406 = v406;
                v160 = [v406 countByEnumeratingWithState:&v431 objects:v461 count:16];
                if (v160)
                {
                  v161 = 0;
                  v417 = 0;
                  v162 = *v432;
                  while (1)
                  {
                    v163 = 0;
                    obja = v161;
                    v164 = -v161;
                    do
                    {
                      if (*v432 != v162)
                      {
                        objc_enumerationMutation(v406);
                      }

                      v165 = [*(*(&v431 + 1) + 8 * v163) unsignedShortValue];
                      StringFromNRLinkType = createStringFromNRLinkType();
                      v167 = v407->_nrUUID;
                      v168 = _NRCopyLogObjectForNRUUID();
                      v169 = _NRLogIsLevelEnabled();

                      if (v164 == v163)
                      {
                        v417 = v165;
                        if (!v169)
                        {
                          goto LABEL_176;
                        }

                        v170 = v407->_nrUUID;
                        v171 = _NRCopyLogObjectForNRUUID();
                        v374 = 6964;
                        v375 = StringFromNRLinkType;
                        v372 = "";
                        v373 = "[NRDDeviceConductor linkDidReceiveData:data:]";
                        _NRLogWithArgs();
                        v417 = v165;
                      }

                      else
                      {
                        if (!v169)
                        {
                          goto LABEL_176;
                        }

                        v170 = v407->_nrUUID;
                        v171 = _NRCopyLogObjectForNRUUID();
                        v374 = 6966;
                        v375 = StringFromNRLinkType;
                        v372 = "";
                        v373 = "[NRDDeviceConductor linkDidReceiveData:data:]";
                        _NRLogWithArgs();
                      }

LABEL_176:
                      v163 = v163 + 1;
                    }

                    while (v160 != v163);
                    v172 = [v406 countByEnumeratingWithState:&v431 objects:v461 count:16];
                    v161 = obja + v160;
                    v160 = v172;
                    if (!v172)
                    {
                      goto LABEL_372;
                    }
                  }
                }

                v417 = 0;
LABEL_372:

                v314 = sub_10002B210(v385, 6);
                v315 = v314;
                if (v314 && [v314 count])
                {
                  v475 = 0u;
                  v474 = 0u;
                  v473 = 0u;
                  v472 = 0u;
                  v316 = v315;
                  v317 = 0;
                  v318 = [v316 countByEnumeratingWithState:&v472 objects:&block count:16];
                  if (v318)
                  {
                    v319 = *v473;
                    do
                    {
                      for (m = 0; m != v318; m = m + 1)
                      {
                        if (*v473 != v319)
                        {
                          objc_enumerationMutation(v316);
                        }

                        v321 = *(*(&v472 + 1) + 8 * m);
                        LOBYTE(v455) = 0;
                        if ([v321 length] <= 1)
                        {
                          v322 = [v321 length];
                        }

                        else
                        {
                          v322 = 1;
                        }

                        [v321 getBytes:&v455 length:v322];
                        if (!v317)
                        {
                          v317 = objc_alloc_init(NSMutableArray);
                        }

                        if (v455 > 8uLL)
                        {
                          v323 = 0;
                        }

                        else
                        {
                          v323 = byte_100196508[v455];
                        }

                        v324 = [NSNumber numberWithUnsignedChar:v323];
                        [v317 addObject:v324];
                      }

                      v318 = [v316 countByEnumeratingWithState:&v472 objects:&block count:16];
                    }

                    while (v318);
                  }
                }

                else
                {
                  v317 = 0;
                }

                v427 = 0u;
                v428 = 0u;
                v429 = 0u;
                v430 = 0u;
                endpointc = v317;
                v325 = [endpointc countByEnumeratingWithState:&v427 objects:v460 count:16];
                if (v325)
                {
                  v326 = 0;
                  v327 = *v428;
                  do
                  {
                    v328 = 0;
                    v404 = v326;
                    v329 = -v326;
                    do
                    {
                      if (*v428 != v327)
                      {
                        objc_enumerationMutation(endpointc);
                      }

                      v330 = [*(*(&v427 + 1) + 8 * v328) unsignedShortValue];
                      StringFromNRLinkSubtype = createStringFromNRLinkSubtype();
                      if (v330)
                      {
                        v332 = v329 == v328;
                      }

                      else
                      {
                        v332 = 0;
                      }

                      v333 = v332;
                      v334 = v407->_nrUUID;
                      v335 = _NRCopyLogObjectForNRUUID();
                      v336 = _NRLogIsLevelEnabled();

                      if (v333)
                      {
                        if (!v336)
                        {
                          goto LABEL_408;
                        }

                        v337 = v407->_nrUUID;
                        v338 = _NRCopyLogObjectForNRUUID();
                        v374 = 6981;
                        v375 = StringFromNRLinkSubtype;
                        v372 = "";
                        v373 = "[NRDDeviceConductor linkDidReceiveData:data:]";
                        _NRLogWithArgs();
                      }

                      else
                      {
                        if (!v336)
                        {
                          goto LABEL_408;
                        }

                        v337 = v407->_nrUUID;
                        v338 = _NRCopyLogObjectForNRUUID();
                        v374 = 6983;
                        v375 = StringFromNRLinkSubtype;
                        v372 = "";
                        v373 = "[NRDDeviceConductor linkDidReceiveData:data:]";
                        _NRLogWithArgs();
                      }

LABEL_408:
                      v328 = v328 + 1;
                    }

                    while (v325 != v328);
                    v339 = [endpointc countByEnumeratingWithState:&v427 objects:v460 count:16];
                    v326 = v404 + v325;
                    v325 = v339;
                  }

                  while (v339);
                }

                v340 = v407->_nrUUID;
                v341 = _NRCopyLogObjectForNRUUID();
                v342 = _NRLogIsLevelEnabled();

                if (v342)
                {
                  v343 = v407->_nrUUID;
                  v344 = _NRCopyLogObjectForNRUUID();
                  v345 = v407->_primaryLink;
                  [(NRLink *)v345 type];
                  v346 = createStringFromNRLinkType();
                  v347 = v407->_primaryLink;
                  [(NRLink *)v347 subtype];
                  v348 = createStringFromNRLinkSubtype();
                  v377 = createStringFromNRLinkType();
                  v378 = createStringFromNRLinkSubtype();
                  v375 = v346;
                  v376 = v348;
                  v373 = "[NRDDeviceConductor linkDidReceiveData:data:]";
                  v374 = 6990;
                  v372 = "";
                  _NRLogWithArgs();
                }

                v349 = v407;
                if (!v407->_followsPeerPrimaryLink)
                {
                  goto LABEL_433;
                }

                if (!v417)
                {
                  v350 = v407->_nrUUID;
                  v351 = _NRCopyLogObjectForNRUUID();
                  v352 = _NRLogIsLevelEnabled();

                  if (v352)
                  {
                    v353 = v407->_nrUUID;
                    v354 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs();
                  }

                  v417 = 1;
                  v349 = v407;
                }

                v355 = v349->_nrUUID;
                v356 = _NRCopyLogObjectForNRUUID();
                v357 = _NRLogIsLevelEnabled();

                if (v357)
                {
                  v358 = v407->_nrUUID;
                  v359 = _NRCopyLogObjectForNRUUID();
                  v374 = 7080;
                  v375 = createStringFromNRLinkType();
                  v372 = "";
                  v373 = "[NRDDeviceConductor linkDidReceiveData:data:]";
                  _NRLogWithArgs();
                }

                v349 = v407;
                if (v417 != 2)
                {
                  if (v417 != 1)
                  {
LABEL_433:
                    v425 = 0u;
                    v426 = 0u;
                    v423 = 0u;
                    v424 = 0u;
                    v363 = v349->_availableLinks;
                    v364 = [(NSMutableSet *)v363 copy];

                    v365 = [v364 countByEnumeratingWithState:&v423 objects:v459 count:16];
                    if (v365)
                    {
                      v366 = *v424;
                      do
                      {
                        for (n = 0; n != v365; n = n + 1)
                        {
                          if (*v424 != v366)
                          {
                            objc_enumerationMutation(v364);
                          }

                          v368 = *(*(&v423 + 1) + 8 * n);
                          if ([v368 state] == 8)
                          {
                            v369 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v368 type]);
                            if (![v406 containsObject:v369] || objc_msgSend(v368, "subtype") && (+[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", objc_msgSend(v368, "subtype")), v370 = objc_claimAutoreleasedReturnValue(), v371 = -[NSObject containsObject:](endpointc, "containsObject:", v370), v370, (v371 & 1) == 0))
                            {
                              [v368 checkPeerAvailabilityWithForceAggressive:1];
                            }
                          }
                        }

                        v365 = [v364 countByEnumeratingWithState:&v423 objects:v459 count:16];
                      }

                      while (v365);
                    }

                    goto LABEL_181;
                  }

                  sub_1000FB7E8(v407);
                  sub_1000F0BF8(v407);
LABEL_432:
                  v349 = v407;
                  goto LABEL_433;
                }

                v360 = sub_1000F1BC0(v407, 2);
                v361 = v360;
                if (v360 && [(dispatch_queue_t *)v360 state]== 8)
                {
                  v362 = v361;
                }

                else
                {
                  v362 = sub_1000EA2C8(v407, 2, 102);

                  if (!v362 || [v362 state] != 8)
                  {
                    goto LABEL_431;
                  }
                }

                sub_1000EFF24(v407);
LABEL_431:

                goto LABEL_432;
              }

LABEL_181:
              v173 = sub_10002B210(v385, 14);
              v174 = [v173 firstObject];

              if (v174)
              {
                v175 = sub_10002B210(v385, 14);
                v176 = [v175 firstObject];

                LOBYTE(block) = 0;
                if ([v176 length] && (objc_msgSend(v176, "getBytes:length:", &block, 1), block))
                {
                  if (block >= 0xBu)
                  {
                    if (block >= 0x15u)
                    {
                      if (block >= 0x1Fu)
                      {
                        v177 = block >= 0x29u ? 50 : 40;
                      }

                      else
                      {
                        v177 = 30;
                      }
                    }

                    else
                    {
                      v177 = 20;
                    }
                  }

                  else
                  {
                    v177 = 10;
                  }
                }

                else
                {
                  v177 = 0;
                }

                v407->_lastSeenPeerThermalPressure = v177;
                if (v407->_lastReportedPeerThermalPressure != v177)
                {
                  sub_1000F4104(v407);
                }
              }

              v178 = sub_10002B210(v385, 22);
              v179 = [v178 firstObject];

              if (v179)
              {
                v180 = sub_10002B210(v385, 22);
                v181 = [v180 firstObject];

                if (v181 && [v181 length])
                {
                  LOBYTE(block) = 0;
                  [v181 getBytes:&block length:1];
                  v182 = (block & 1) != 0 ? &__kCFBooleanTrue : &__kCFBooleanFalse;
                }

                else
                {
                  v182 = 0;
                }

                v183 = [v182 BOOLValue];
                v407->_lastSeenPeerPluggedInState = v183;
                if (v183 != v407->_lastReportedPluggedInState)
                {
                  sub_1000F4104(v407);
                }
              }

              v184 = sub_10002B210(v385, 16);
              v185 = [v184 firstObject];

              if (v185)
              {
                goto LABEL_202;
              }

              v186 = sub_10002B210(v385, 18);
              v187 = [v186 firstObject];

              if (v187)
              {
                goto LABEL_202;
              }

              v188 = sub_10002B210(v385, 17);
              v189 = [v188 firstObject];

              if (v189 || (v190 = sub_10002B210(v385, 19), [v190 firstObject], v191 = objc_claimAutoreleasedReturnValue(), v190, v191, v191))
              {
LABEL_202:
                objc_opt_self();
                if (qword_1002294C8 != -1)
                {
                  dispatch_once(&qword_1002294C8, &stru_1001FD250);
                }

                v192 = qword_1002294C0;
                v421[0] = _NSConcreteStackBlock;
                v421[1] = 3221225472;
                v421[2] = sub_1000FBA90;
                v421[3] = &unk_1001FD060;
                v421[4] = v407;
                v422 = v385;
                sub_1001816DC(v192, v421);
              }

              v193 = sub_10002B210(v385, 20);
              v194 = [v193 firstObject];

              if (v194)
              {
                v195 = sub_10002B210(v385, 20);
                v196 = [v195 firstObject];

                v197 = v196;
                if (v407)
                {
                  v379 = v197;
                  v402 = v197;
                  block = 0;
                  p_block = &block;
                  v478 = 0x3032000000;
                  v479 = sub_1000FD2F4;
                  v480 = sub_1000FD304;
                  v481 = objc_alloc_init(NSMutableDictionary);
                  *&v472 = _NSConcreteStackBlock;
                  *(&v472 + 1) = 3221225472;
                  *&v473 = sub_1000FD874;
                  *(&v473 + 1) = &unk_1001FC680;
                  *&v474 = &block;
                  NRTLVParse();
                  v380 = *(p_block + 40);
                  _Block_object_dispose(&block, 8);

                  if ([v380 count])
                  {
                    v198 = v407->_nrUUID;
                    v199 = _NRCopyLogObjectForNRUUID();
                    v200 = _NRLogIsLevelEnabled();

                    if (v200)
                    {
                      v201 = v407->_nrUUID;
                      v202 = _NRCopyLogObjectForNRUUID();
                      v374 = 9505;
                      v375 = v380;
                      v372 = "";
                      v373 = "[NRDDeviceConductor handleIncomingResolveRequest:]";
                      _NRLogWithArgs();
                    }

                    v447 = 0u;
                    v448 = 0u;
                    v445 = 0u;
                    v446 = 0u;
                    v389 = v380;
                    v387 = [v389 countByEnumeratingWithState:&v445 objects:&v472 count:16];
                    if (v387)
                    {
                      v386 = *v446;
                      do
                      {
                        v203 = 0;
                        do
                        {
                          if (*v446 != v386)
                          {
                            v204 = v203;
                            objc_enumerationMutation(v389);
                            v203 = v204;
                          }

                          v393 = v203;
                          v205 = *(*(&v445 + 1) + 8 * v203);
                          v399 = v407->_asClient;
                          v206 = [v389 objectForKeyedSubscript:v205];
                          v395 = v205;
                          v397 = v206;
                          if (v399 && !v399->_cancelled)
                          {
                            objc_opt_self();
                            if (qword_1002291A0 != -1)
                            {
                              dispatch_once(&qword_1002291A0, &stru_1001FBD88);
                            }

                            v207 = qword_100229198;
                            v391 = v395;
                            endpointa = v397;
                            if (v207)
                            {
                              if (qword_1002291B0 != -1)
                              {
                                dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                              }

                              if (_NRLogIsLevelEnabled())
                              {
                                if (qword_1002291B0 != -1)
                                {
                                  dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                                }

                                v375 = v391;
                                v376 = endpointa;
                                v374 = 1035;
                                v372 = "";
                                v373 = "[NRApplicationServiceManager removeEndpointForASName:endpoint:]";
                                _NRLogWithArgs();
                              }

                              v457 = 0u;
                              v458 = 0u;
                              v455 = 0u;
                              v456 = 0u;
                              objb = [*(v207 + 48) objectForKeyedSubscript:{v391, v372, v373, v374, v375, v376}];
                              v208 = [objb countByEnumeratingWithState:&v455 objects:&block count:16];
                              if (v208)
                              {
                                v418 = *v456;
                                do
                                {
                                  for (ii = 0; ii != v208; ii = ii + 1)
                                  {
                                    if (*v456 != v418)
                                    {
                                      objc_enumerationMutation(objb);
                                    }

                                    v210 = *(*(&v455 + 1) + 8 * ii);
                                    if (v210)
                                    {
                                      v211 = *(v210 + 56);
                                      if (v211)
                                      {
                                        v212 = v211[11];

                                        if (v212)
                                        {
                                          v213 = objc_alloc_init(NSMutableArray);
                                          v214 = +[NEPolicyCondition allInterfaces];
                                          [v213 addObject:v214];

                                          v215 = nw_endpoint_copy_port_string(endpointa);
                                          v216 = [NSString stringWithUTF8String:v215];
                                          if (v215)
                                          {
                                            free(v215);
                                          }

                                          v217 = [NWAddressEndpoint endpointWithHostname:@"::" port:v216];
                                          v218 = [NEPolicyCondition flowRemoteAddress:v217 prefix:0];

                                          [v213 addObject:v218];
                                          v219 = [NEPolicyCondition requiredAgentDomain:@"com.apple.networkrelay" agentType:@"ASResolver"];
                                          [v213 addObject:v219];
                                          if (*(v210 + 8) >= 1)
                                          {
                                            v220 = [NEPolicyCondition effectivePID:?];
                                            [v213 addObject:v220];
                                          }

                                          v221 = [NEPolicy alloc];
                                          v222 = [NEPolicyResult dropWithFlags:4];
                                          v223 = [v221 initWithOrder:10 result:v222 conditions:v213];

                                          objc_opt_self();
                                          if (qword_100229410 != -1)
                                          {
                                            dispatch_once(&qword_100229410, &stru_1001FCD98);
                                          }

                                          v224 = qword_100229408;
                                          v225 = [v210 description];
                                          v226 = sub_100159E00(v224, v225, v223);

                                          objc_opt_self();
                                          if (qword_100229410 != -1)
                                          {
                                            dispatch_once(&qword_100229410, &stru_1001FCD98);
                                          }

                                          v227 = qword_100229408;
                                          sub_10015A52C(v227);

                                          v228 = *(v210 + 56);
                                          if (v228)
                                          {
                                            *(v228 + 12) = 1;
                                          }
                                        }
                                      }
                                    }
                                  }

                                  v208 = [objb countByEnumeratingWithState:&v455 objects:&block count:16];
                                }

                                while (v208);
                              }
                            }
                          }

                          v203 = v393 + 1;
                        }

                        while ((v393 + 1) != v387);
                        v387 = [v389 countByEnumeratingWithState:&v445 objects:&v472 count:16];
                      }

                      while (v387);
                    }
                  }

                  v229 = sub_1000FC558(v402);
                  v230 = v407->_nrUUID;
                  v231 = _NRCopyLogObjectForNRUUID();
                  v232 = _NRLogIsLevelEnabled();

                  if (v232)
                  {
                    v233 = v407->_nrUUID;
                    v234 = _NRCopyLogObjectForNRUUID();
                    v374 = 9512;
                    v375 = v229;
                    v372 = "";
                    v373 = "[NRDDeviceConductor handleIncomingResolveRequest:]";
                    _NRLogWithArgs();
                  }

                  v457 = 0u;
                  v458 = 0u;
                  v455 = 0u;
                  v456 = 0u;
                  v235 = v229;
                  v236 = [v235 countByEnumeratingWithState:&v455 objects:&block count:16];
                  if (v236)
                  {
                    v419 = *v456;
                    do
                    {
                      v237 = 0;
                      do
                      {
                        if (*v456 != v419)
                        {
                          objc_enumerationMutation(v235);
                        }

                        v238 = *(*(&v455 + 1) + 8 * v237);
                        v239 = [v235 objectForKeyedSubscript:{v238, v372, v373, v374, v375}];
                        v240 = objc_alloc_init(NSMutableArray);
                        v449 = _NSConcreteStackBlock;
                        v450 = 3221225472;
                        v451 = sub_1000FD82C;
                        v452 = &unk_1001FBBF8;
                        v453 = v240;
                        v241 = v240;
                        nw_array_apply();
                        v467 = 0;
                        v466 = 0;
                        v242 = +[NSUUID UUID];
                        [v242 getUUIDBytes:&v466];

                        [v238 UTF8String];
                        application_service = nw_endpoint_create_application_service();
                        nw_endpoint_set_public_keys();
                        v244 = sub_1000FC668(v402, v238);
                        [(NSMutableDictionary *)v407->_incomingResolveASNameToToken setObject:v244 forKeyedSubscript:v238];

                        sub_1000E9DD8(v407, application_service);
                        asClient = v407->_asClient;
                        v246 = v238;
                        v247 = application_service;
                        if (asClient && !asClient->_cancelled)
                        {
                          if (([(NSMutableArray *)asClient->_asNamesForIncomingResolveRequests containsObject:v246]& 1) == 0)
                          {
                            [(NSMutableArray *)asClient->_asNamesForIncomingResolveRequests addObject:v246];
                          }

                          objc_opt_self();
                          if (qword_1002291A0 != -1)
                          {
                            dispatch_once(&qword_1002291A0, &stru_1001FBD88);
                          }

                          v248 = qword_100229198;
                          v249 = v247;
                          v250 = v249;
                          if (v248)
                          {
                            if (v249)
                            {
                              if (nw_endpoint_get_type(v249) == (nw_endpoint_type_url|nw_endpoint_type_host))
                              {
                                v251 = [NSString stringWithUTF8String:nw_endpoint_get_application_service_name()];
                                [v248[8] setObject:v250 forKeyedSubscript:v251];
                                sub_10011B75C(v248);
                              }

                              else
                              {
                                if (qword_1002291B0 != -1)
                                {
                                  dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                                }

                                if (_NRLogIsLevelEnabled())
                                {
                                  if (qword_1002291B0 != -1)
                                  {
                                    dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                                  }

                                  v374 = 1024;
                                  v375 = v250;
                                  v372 = "";
                                  v373 = "[NRApplicationServiceManager addIncomingResolveRequestForEndpoint:]";
                                  _NRLogWithArgs();
                                }
                              }
                            }

                            else
                            {
                              if (qword_1002291B0 != -1)
                              {
                                dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                              }

                              v252 = qword_1002291A8;
                              v253 = _NRLogIsLevelEnabled();

                              if (v253)
                              {
                                if (qword_1002291B0 != -1)
                                {
                                  dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                                }

                                v254 = qword_1002291A8;
                                v372 = "[NRApplicationServiceManager addIncomingResolveRequestForEndpoint:]";
                                _NRLogWithArgs();
                              }
                            }
                          }
                        }

                        v237 = v237 + 1;
                      }

                      while (v236 != v237);
                      v255 = [v235 countByEnumeratingWithState:&v455 objects:&block count:16];
                      v236 = v255;
                    }

                    while (v255);
                  }

                  sub_1000FC7D0(v407, 1);
                  v197 = v379;
                }

                v256 = v197;
              }

              v257 = sub_10002B210(v385, 21);
              v258 = [v257 firstObject];

              if (v258)
              {
                v259 = sub_10002B210(v385, 21);
                v260 = [v259 firstObject];

                v261 = v260;
                if (v407)
                {
                  v388 = v261;
                  v262 = sub_1000FC558(v261);
                  v263 = v407->_nrUUID;
                  v264 = _NRCopyLogObjectForNRUUID();
                  v265 = _NRLogIsLevelEnabled();

                  if (v265)
                  {
                    v266 = v407->_nrUUID;
                    v267 = _NRCopyLogObjectForNRUUID();
                    v374 = 9392;
                    v375 = v262;
                    v372 = "";
                    v373 = "[NRDDeviceConductor handleIncomingResolveResponse:]";
                    _NRLogWithArgs();
                  }

                  v447 = 0u;
                  v448 = 0u;
                  v445 = 0u;
                  v446 = 0u;
                  v392 = v262;
                  v396 = [v392 countByEnumeratingWithState:&v445 objects:&v472 count:16];
                  if (v396)
                  {
                    v394 = *v446;
                    do
                    {
                      v268 = 0;
                      do
                      {
                        if (*v446 != v394)
                        {
                          objc_enumerationMutation(v392);
                        }

                        v269 = *(*(&v445 + 1) + 8 * v268);
                        v270 = v407->_asClient;
                        v271 = v270;
                        endpointb = v268;
                        if (v270)
                        {
                          asNamesForResolving = v270->_asNamesForResolving;
                        }

                        else
                        {
                          asNamesForResolving = 0;
                        }

                        v273 = asNamesForResolving;
                        v274 = [(NSMutableArray *)v273 containsObject:v269];

                        if (v274)
                        {
                          objc = sub_1000FC668(v388, v269);
                          v403 = [(NSMutableDictionary *)v407->_outgoingResolveASNameToToken objectForKeyedSubscript:v269];
                          if (objc && (v275 = objc->_token) != 0 && (v276 = v275, v277 = objc->_token, v278 = [v403 isEqual:v277], v277, v276, (v278 & 1) == 0))
                          {
                            v301 = v407->_nrUUID;
                            v302 = _NRCopyLogObjectForNRUUID();
                            v303 = _NRLogIsLevelEnabled();

                            if (v303)
                            {
                              v304 = v407->_nrUUID;
                              v400 = _NRCopyLogObjectForNRUUID();
                              v398 = objc->_token;
                              v376 = v403;
                              v377 = v398;
                              v374 = 9400;
                              v375 = v269;
                              v372 = "";
                              v373 = "[NRDDeviceConductor handleIncomingResolveResponse:]";
                              _NRLogWithArgs();

                              goto LABEL_344;
                            }
                          }

                          else
                          {
                            v279 = v407->_nrUUID;
                            v280 = _NRCopyLogObjectForNRUUID();
                            v281 = _NRLogIsLevelEnabled();

                            if (v281)
                            {
                              v282 = v407->_nrUUID;
                              v283 = _NRCopyLogObjectForNRUUID();
                              if (objc)
                              {
                                token = objc->_token;
                              }

                              else
                              {
                                token = 0;
                              }

                              v376 = v403;
                              v377 = token;
                              v374 = 9403;
                              v375 = v269;
                              v372 = "";
                              v373 = "[NRDDeviceConductor handleIncomingResolveResponse:]";
                              _NRLogWithArgs();
                            }

                            [(NSMutableDictionary *)v407->_outgoingResolveASNameToToken setObject:0 forKeyedSubscript:v269, v372, v373, v374, v375, v376, v377];
                            [(NSMutableDictionary *)v407->_asNamesToResolvedEndpoints setObject:0 forKeyedSubscript:v269];
                            v285 = objc_alloc_init(NSMutableArray);
                            v286 = [v392 objectForKeyedSubscript:v269];
                            v466 = _NSConcreteStackBlock;
                            v467 = 3221225472;
                            v468 = sub_1000FC74C;
                            v469 = &unk_1001FBBD0;
                            v470 = v407;
                            v471 = v285;
                            v398 = v285;
                            nw_array_apply();
                            [(NSMutableDictionary *)v407->_asNamesToResolvedEndpoints setObject:v398 forKeyedSubscript:v269];
                            v287 = v407->_asClient;
                            v390 = v269;
                            v400 = v286;
                            if (v287 && !v287->_cancelled)
                            {
                              objc_opt_self();
                              if (qword_1002291A0 != -1)
                              {
                                dispatch_once(&qword_1002291A0, &stru_1001FBD88);
                              }

                              v288 = qword_100229198;
                              v289 = v390;
                              v290 = v400;
                              if (v288)
                              {
                                v420 = v290;
                                if (v290)
                                {
                                  dispatch_assert_queue_V2(*(v288 + 16));
                                  v291 = [*(v288 + 48) objectForKeyedSubscript:v289];
                                  if ([v291 count])
                                  {
                                    v457 = 0u;
                                    v458 = 0u;
                                    v455 = 0u;
                                    v456 = 0u;
                                    v291 = v291;
                                    v292 = [v291 countByEnumeratingWithState:&v455 objects:&block count:16];
                                    if (v292)
                                    {
                                      v293 = *v456;
                                      do
                                      {
                                        for (jj = 0; jj != v292; jj = jj + 1)
                                        {
                                          if (*v456 != v293)
                                          {
                                            objc_enumerationMutation(v291);
                                          }

                                          v295 = *(*(&v455 + 1) + 8 * jj);
                                          if (!v295 || (*(v295 + 64) != 1 || (sub_10011E694(v288, v289) & 1) == 0) && (*(v295 + 65) & 1) == 0)
                                          {
                                            v296 = nw_array_create();
                                            v449 = _NSConcreteStackBlock;
                                            v450 = 3221225472;
                                            v451 = sub_10011E848;
                                            v452 = &unk_1001FBDB0;
                                            v453 = v295;
                                            v297 = v296;
                                            v454 = v297;
                                            nw_array_apply();
                                            if (nw_array_get_count())
                                            {
                                              if (qword_1002291B0 != -1)
                                              {
                                                dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                                              }

                                              if (_NRLogIsLevelEnabled())
                                              {
                                                if (qword_1002291B0 != -1)
                                                {
                                                  dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                                                }

                                                if (v295)
                                                {
                                                  v298 = *(v295 + 48);
                                                }

                                                else
                                                {
                                                  v298 = 0;
                                                }

                                                v299 = qword_1002291A8;
                                                v376 = v298;
                                                v377 = v297;
                                                v374 = 544;
                                                v375 = v289;
                                                v372 = "";
                                                v373 = "[NRApplicationServiceManager reportResolveResultForASName:endpoint:]";
                                                _NRLogWithArgs();
                                              }

                                              if (v295)
                                              {
                                                *(v295 + 64) = 1;
                                                v300 = *(v295 + 72);
                                              }

                                              else
                                              {
                                                v300 = 0;
                                              }

                                              (*(v300 + 16))(v300, v297);
                                            }
                                          }
                                        }

                                        v292 = [v291 countByEnumeratingWithState:&v455 objects:&block count:16];
                                      }

                                      while (v292);
                                    }
                                  }

                                  goto LABEL_341;
                                }

                                if (qword_1002291B0 != -1)
                                {
                                  dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                                }

                                v305 = qword_1002291A8;
                                v306 = _NRLogIsLevelEnabled();

                                v290 = 0;
                                if (v306)
                                {
                                  if (qword_1002291B0 != -1)
                                  {
                                    dispatch_once(&qword_1002291B0, &stru_1001FBE70);
                                  }

                                  v291 = qword_1002291A8;
                                  v372 = "[NRApplicationServiceManager reportResolveResultForASName:endpoint:]";
                                  _NRLogWithArgs();
LABEL_341:

                                  v290 = v420;
                                }
                              }
                            }

LABEL_344:
                          }
                        }

                        v268 = (&endpointb->isa + 1);
                      }

                      while (&endpointb->isa + 1 != v396);
                      v396 = [v392 countByEnumeratingWithState:&v445 objects:&v472 count:16];
                    }

                    while (v396);
                  }

                  sub_1000FC7D0(v407, 1);
                  v261 = v388;
                }

                v307 = v261;
              }

              v308 = sub_10002B210(v385, 23);
              v309 = [v308 firstObject];

              if (v309)
              {
                v310 = sub_10002B210(v385, 23);
                v311 = [v310 firstObject];

                objc_opt_self();
                if (qword_1002290C0 != -1)
                {
                  dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
                }

                v312 = qword_1002290B8;
                v313 = v407->_nrUUID;
                sub_1000CA918(v312, v311, v313);
              }

              goto LABEL_364;
            }
          }

          else
          {
          }
        }

        else
        {
        }

        v406 = 0;
        goto LABEL_181;
      }

      block = 0;
      [v381 getBytes:&block length:8];
      v86 = block;
      v87 = sub_100163A30(NRDLocalDevice, self->_nrUUID);
      v88 = v87;
      if (v87 && *(v87 + 16) >= 0x16u)
      {
        if ((v86 & 4) == 0)
        {
          if ((v86 & 8) == 0)
          {
            goto LABEL_97;
          }

          if (qword_100229160 != -1)
          {
            dispatch_once(&qword_100229160, &stru_1001FBC40);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229160 != -1)
            {
              dispatch_once(&qword_100229160, &stru_1001FBC40);
            }

            v374 = 4584;
            v372 = "";
            v373 = "[NRDDeviceConductor processReceivedRequestFlags:]";
            _NRLogWithArgs();
          }

          goto LABEL_80;
        }

        if (qword_100229160 != -1)
        {
          dispatch_once(&qword_100229160, &stru_1001FBC40);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229160 != -1)
          {
            dispatch_once(&qword_100229160, &stru_1001FBC40);
          }

          v374 = 4581;
          v372 = "";
          v373 = "[NRDDeviceConductor processReceivedRequestFlags:]";
          _NRLogWithArgs();
        }
      }

      else
      {
        if ((v86 & 2) == 0)
        {
          if ((v86 & 4) == 0)
          {
            goto LABEL_97;
          }

          if (qword_100229160 != -1)
          {
            dispatch_once(&qword_100229160, &stru_1001FBC40);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229160 != -1)
            {
              dispatch_once(&qword_100229160, &stru_1001FBC40);
            }

            v374 = 4592;
            v372 = "";
            v373 = "[NRDDeviceConductor processReceivedRequestFlags:]";
            _NRLogWithArgs();
          }

LABEL_80:
          netInfo = self->_netInfo;
          if (netInfo)
          {
            v90 = 0;
LABEL_96:
            netInfo->_disableCoalescing = v90;
            goto LABEL_97;
          }

          goto LABEL_97;
        }

        if (qword_100229160 != -1)
        {
          dispatch_once(&qword_100229160, &stru_1001FBC40);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229160 != -1)
          {
            dispatch_once(&qword_100229160, &stru_1001FBC40);
          }

          v374 = 4589;
          v372 = "";
          v373 = "[NRDDeviceConductor processReceivedRequestFlags:]";
          _NRLogWithArgs();
        }
      }

      netInfo = self->_netInfo;
      if (netInfo)
      {
        v90 = 1;
        goto LABEL_96;
      }

LABEL_97:

      goto LABEL_98;
    }

    v39 = _NRCopyLogObjectForNRUUID();
    v40 = _NRLogIsLevelEnabled();

    if (v40)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v36 = self->_nrUUID;
    v37 = _NRCopyLogObjectForNRUUID();
    v38 = _NRLogIsLevelEnabled();

    if (v38)
    {
LABEL_25:
      v41 = self->_nrUUID;
      v42 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }
  }

LABEL_365:
}

- (void)linkIsUnavailable:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (!v4)
  {
    v61 = sub_1000E83DC();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_81;
    }

    v19 = sub_1000E83DC();
    goto LABEL_11;
  }

  isEnabled = self->_isEnabled;
  nrUUID = self->_nrUUID;
  v7 = _NRCopyLogObjectForNRUUID();
  v8 = _NRLogIsLevelEnabled();

  if (!isEnabled)
  {
    if (!v8)
    {
      goto LABEL_81;
    }

    v18 = self->_nrUUID;
    v19 = _NRCopyLogObjectForNRUUID();
LABEL_11:
    _NRLogWithArgs();

    goto LABEL_81;
  }

  if (v8)
  {
    v9 = self->_nrUUID;
    v10 = _NRCopyLogObjectForNRUUID();
    v67 = 6454;
    v69 = v4;
    v63 = "";
    v65 = "[NRDDeviceConductor linkIsUnavailable:]";
    _NRLogWithArgs();
  }

  v11 = [v4 copyShortDescription];
  sub_1000EC910(self, 1007, @"%@", v12, v13, v14, v15, v16, v11);

  [(NSMutableSet *)self->_availableLinks removeObject:v4];
  if ([v4 type] == 1)
  {
    sub_1000FFA7C(self);
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v17 = qword_1002290B8;
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_1000FFB90;
    v75[3] = &unk_1001FD3C8;
    v75[4] = self;
    sub_1000C95D8(v17, v75);
    goto LABEL_72;
  }

  if ([v4 type] != 2)
  {
    if ([v4 type] == 4)
    {
      quickRelayAgent = self->_quickRelayAgent;
      if (quickRelayAgent)
      {
        if (quickRelayAgent->_state.state != 1)
        {
          quickRelayAgent->_state.state = 1;
          [(NWNetworkAgentRegistration *)quickRelayAgent->_registrationObject updateNetworkAgent:?];
        }
      }
    }

    goto LABEL_73;
  }

  v20 = [v4 subtype] == 103 || objc_msgSend(v4, "subtype") == 102;
  v17 = sub_1000EA2C8(self, 2, 102);
  v22 = sub_1000EA2C8(self, 2, 103);
  if (v20)
  {
    if ([v4 startRequested])
    {
      if (!self->_peerDeviceIsNearby)
      {
        sub_1000FFD58(self);
      }

      goto LABEL_29;
    }
  }

  else
  {
    if (([v17 state] == 255 || (objc_msgSend(v17, "startRequested") & 1) == 0) && (objc_msgSend(v22, "state") == 255 || !objc_msgSend(v22, "startRequested")))
    {
LABEL_29:
      if (self->_pendingPreferWiFiRequest)
      {
        sub_1000F08C8(self, 2u);
      }

      if (self->_isPreferWiFiProvider)
      {
        if (self->_preferWiFiRequest && !self->_preferwiFiTimeoutSet)
        {
          v23 = self->_nrUUID;
          v24 = _NRCopyLogObjectForNRUUID();
          v25 = _NRLogIsLevelEnabled();

          if (v25)
          {
            v32 = self->_nrUUID;
            v33 = _NRCopyLogObjectForNRUUID();
            v68 = 6526;
            v64 = "";
            v66 = "[NRDDeviceConductor linkIsUnavailable:]";
            _NRLogWithArgs();
          }

          sub_1000F2504(self, @"Wi-Fi link went away", v26, v27, v28, v29, v30, v31, v64);
          v34 = sub_1000EC630(self);
          self->_pendingPreferWiFiRequest = sub_10017F64C(v34);
        }

        if (self->_preferwiFiTimeoutSet)
        {
          v35 = self->_nrUUID;
          v36 = _NRCopyLogObjectForNRUUID();
          v37 = _NRLogIsLevelEnabled();

          if (v37)
          {
            v38 = self->_nrUUID;
            v39 = _NRCopyLogObjectForNRUUID();
            v68 = 6531;
            v64 = "";
            v66 = "[NRDDeviceConductor linkIsUnavailable:]";
            _NRLogWithArgs();
          }
        }
      }

      if (self->_bringUpWiFiImmediately)
      {
        v40 = self->_nrUUID;
        v41 = _NRCopyLogObjectForNRUUID();
        v42 = _NRLogIsLevelEnabled();

        if (v42)
        {
          v43 = self->_nrUUID;
          v44 = _NRCopyLogObjectForNRUUID();
          v68 = 6537;
          v64 = "";
          v66 = "[NRDDeviceConductor linkIsUnavailable:]";
          _NRLogWithArgs();
        }

        sub_1000F18B4(self);
      }

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v45 = self->_availableLinks;
      v46 = [(NSMutableSet *)v45 countByEnumeratingWithState:&v71 objects:v76 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = 0;
        v49 = *v72;
        while (2)
        {
          v50 = 0;
          v51 = v48;
          do
          {
            if (*v72 != v49)
            {
              objc_enumerationMutation(v45);
            }

            v48 = *(*(&v71 + 1) + 8 * v50);

            if ([v48 type] == 1)
            {
              v52 = 0;
              goto LABEL_55;
            }

            v50 = v50 + 1;
            v51 = v48;
          }

          while (v47 != v50);
          v47 = [(NSMutableSet *)v45 countByEnumeratingWithState:&v71 objects:v76 count:16];
          if (v47)
          {
            continue;
          }

          break;
        }
      }

      v48 = 0;
      v52 = 1;
LABEL_55:

      v53 = sub_1000EA2C8(self, 2, 101);
      if ([v17 state] != 8 && objc_msgSend(v53, "state") != 8)
      {
        if ([v17 state] != 255 && (objc_msgSend(v17, "startRequested") & 1) != 0 || objc_msgSend(v53, "state", v64, v66, v68) != 255 && objc_msgSend(v53, "startRequested"))
        {
          sub_1000EFE54(self);
        }

        if ((v52 & 1) == 0)
        {
          v54 = self->_nrUUID;
          v55 = _NRCopyLogObjectForNRUUID();
          v56 = _NRLogIsLevelEnabled();

          if (v56)
          {
            v57 = self->_nrUUID;
            v58 = _NRCopyLogObjectForNRUUID();
            v68 = 6574;
            v70 = v48;
            v64 = "";
            v66 = "[NRDDeviceConductor linkIsUnavailable:]";
            _NRLogWithArgs();
          }

          if ([v48 state] == 9 && !self->_preferwiFiTimeoutSet)
          {
            [v48 resume];
          }

          else if ([v48 state] == 1)
          {
            [v48 start];
          }
        }
      }

      goto LABEL_71;
    }

    sub_1000F015C(self);
  }

LABEL_71:

LABEL_72:
LABEL_73:
  queue = self->_queue;
  v60 = v4;
  dispatch_assert_queue_V2(queue);
  [v60 removePolicies];

  sub_1000FFDA8(self);
  sub_1000F4104(self);
  if ([v60 subtype] != 102 && objc_msgSend(v60, "subtype") != 103 && objc_msgSend(v60, "subtype") != 104 && objc_msgSend(v60, "type") != 4 || objc_msgSend(v60, "startRequested", v64))
  {
    sub_100100060(self, self->_primaryLink);
  }

  if ([v60 startRequested])
  {
    sub_10010047C(self);
  }

LABEL_81:
}

- (void)linkIsSuspended:(id)a3
{
  v32 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (!v32)
  {
    v26 = sub_1000E83DC();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_16;
    }

    v25 = sub_1000E83DC();
LABEL_15:
    _NRLogWithArgs();

    goto LABEL_16;
  }

  if (!self->_isEnabled)
  {
    nrUUID = self->_nrUUID;
    v19 = _NRCopyLogObjectForNRUUID();
    v20 = _NRLogIsLevelEnabled();

    if (!v20)
    {
      goto LABEL_16;
    }

LABEL_14:
    v24 = self->_nrUUID;
    v25 = _NRCopyLogObjectForNRUUID();
    goto LABEL_15;
  }

  if ([v32 state] == 255)
  {
    v21 = self->_nrUUID;
    v22 = _NRCopyLogObjectForNRUUID();
    v23 = _NRLogIsLevelEnabled();

    if (!v23)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  queue = self->_queue;
  v5 = v32;
  dispatch_assert_queue_V2(queue);
  [v5 removePolicies];

  sub_1000FFDA8(self);
  sub_1000F4104(self);
  if ([v5 type] == 4)
  {
    quickRelayAgent = self->_quickRelayAgent;
    if (quickRelayAgent)
    {
      if (quickRelayAgent->_state.state != 1)
      {
        quickRelayAgent->_state.state = 1;
        [(NWNetworkAgentRegistration *)quickRelayAgent->_registrationObject updateNetworkAgent:?];
      }
    }
  }

  v7 = [v5 copyShortDescription];
  sub_1000EC910(self, 1006, @"%@", v8, v9, v10, v11, v12, v7);

  v13 = self->_nrUUID;
  v14 = _NRCopyLogObjectForNRUUID();
  v15 = _NRLogIsLevelEnabled();

  if (v15)
  {
    v16 = self->_nrUUID;
    v17 = _NRCopyLogObjectForNRUUID();
    v30 = 6439;
    v31 = v5;
    v28 = "";
    v29 = "[NRDDeviceConductor linkIsSuspended:]";
    _NRLogWithArgs();
  }

  [v5 setMigrationInfoAgent:{0, v28, v29, v30, v31}];
LABEL_16:
}

- (void)linkIsReady:(id)a3
{
  v134 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (v134)
  {
    if (self->_isEnabled)
    {
      v4 = [v134 state];
      nrUUID = self->_nrUUID;
      v6 = _NRCopyLogObjectForNRUUID();
      if (v4 != 255)
      {
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v8 = self->_nrUUID;
          v9 = _NRCopyLogObjectForNRUUID();
          v128 = 6308;
          v130 = v134;
          v124 = "";
          v126 = "[NRDDeviceConductor linkIsReady:]";
          _NRLogWithArgs();
        }

        v10 = [v134 copyShortDescription];
        sub_1000EC910(self, 1005, @"%@", v11, v12, v13, v14, v15, v10);

        sub_1001033B0(self);
        sub_100104190(self);
        if ([v134 suspendWhenReady])
        {
          v16 = self->_nrUUID;
          v17 = _NRCopyLogObjectForNRUUID();
          v18 = _NRLogIsLevelEnabled();

          if (v18)
          {
            v19 = self->_nrUUID;
            v20 = _NRCopyLogObjectForNRUUID();
            v129 = 6314;
            v131 = v134;
            v125 = "";
            v127 = "[NRDDeviceConductor linkIsReady:]";
            _NRLogWithArgs();
          }

          [v134 setSuspendWhenReady:{0, v125, v127, v129, v131}];
          [v134 suspend];
        }

        v136 = self;
        if ([v134 type] == 1)
        {
          sub_1000F0BF8(self);
          sub_10003F7D8(self->_quickRelayAgent);
          if (self->_alwaysOnWiFiQueryComplete && !self->_alwaysOnWiFiUpdateSent)
          {
            dispatch_assert_queue_V2(self->_queue);
            if (!self->_isAlwaysReachableOverWiFi)
            {
              self->_alwaysOnWiFiQueryComplete = 1;
              dispatch_assert_queue_V2(self->_queue);
              v21 = sub_100163A30(NRDLocalDevice, self->_nrUUID);
              v22 = v21;
              if (v21)
              {
                v23 = *(v21 + 144);
              }

              else
              {
                v23 = 0;
              }

              v24 = v23;
              v25 = [v24 getDefaultLinkSubtypeForLinkType:1];

              v26 = sub_1000EA2C8(self, 1, v25);
              if (v26)
              {
                if ([v26 state] == 255 || !objc_msgSend(v26, "ikeClassDEstablished"))
                {
                  v32 = 0;
                }

                else
                {
                  objc_opt_self();
                  LOBYTE(v137) = 1;
                  v27 = [[NSData alloc] initWithBytes:&v137 length:1];
                  v28 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:51401 notifyData:v27];
                  objc_initWeak(location, v26);
                  v29 = *(v26 + 1311);
                  *&v147 = v28;
                  v30 = [NSArray arrayWithObjects:&v147 count:1];
                  v31 = [v26 queue];
                  newValue = _NSConcreteStackBlock;
                  v143 = 3221225472;
                  v144 = sub_1000B6F28;
                  v145 = &unk_1001FC018;
                  objc_copyWeak(v146, location);
                  [v29 sendPrivateNotifies:v30 maxRetries:10 retryIntervalInMilliseconds:10000 callbackQueue:v31 callback:&newValue];

                  objc_destroyWeak(v146);
                  objc_destroyWeak(location);

                  v32 = 1;
                  self = v136;
                }

                self->_alwaysOnWiFiUpdateSent = v32;
              }
            }
          }

          sub_1000EA900(self);
        }

        else
        {
          if ([v134 type] == 2)
          {
            if ([v134 subtype] != 101)
            {
              goto LABEL_50;
            }

            v39 = sub_1000EA2C8(self, 2, 102);
            if ([v39 startRequested] && !self->_needsAWDL)
            {
              [v39 cancelWithReason:@"not needed anymore"];
            }

            if (self->_preferWiFiRequest || (self->_effectiveALUAdvice & 4) != 0)
            {
              v40 = self->_linkUpgradeReportWiFiInfra;
              if (v40)
              {
                v40->_flags |= 0x800u;
              }

              if ((self->_effectiveALUAdvice & 4) != 0)
              {
                currentALUAdviceID = self->_currentALUAdviceID;
                v42 = self->_aluMonitor;
                sub_10007A18C(v42, currentALUAdviceID);
              }
            }
          }

          else
          {
            if ([v134 type] != 4)
            {
              goto LABEL_50;
            }

            quickRelayAgent = self->_quickRelayAgent;
            if (quickRelayAgent && quickRelayAgent->_state.state != 2)
            {
              quickRelayAgent->_state.state = 2;
              [(NWNetworkAgentRegistration *)quickRelayAgent->_registrationObject updateNetworkAgent:?];
            }

            v44 = objc_alloc_init(NRLinkDirectorRequest);
            v46 = v44;
            if (v44)
            {
              v44->_type = 8;
              v44->_allowsSuspendedLink = 0;
              v44->_requiredLinkType = 1;
            }

            newValue = _NSConcreteStackBlock;
            v143 = 3221225472;
            v144 = sub_1000F38BC;
            v145 = &unk_1001FD3C8;
            v146[0] = self;
            if (v44)
            {
              objc_setProperty_nonatomic_copy(v44, v45, &newValue, 48);
            }

            sub_1000EAA20(self, v46);

            v39 = sub_1000F1BC0(self, 2);
            if ([v39 state] == 8)
            {
              [v39 checkPeerAvailabilityWithForceAggressive:1];
            }
          }
        }

LABEL_50:
        sub_100104434(&self->super.isa);
        v47 = v134;
        dispatch_assert_queue_V2(self->_queue);
        v133 = v47;
        if ([v47 state] == 8)
        {
          if (!self->_isExternalDevice)
          {
            v48 = [v47 localInterfaceName];
            if ([v47 hasCompanionDatapath])
            {
              [v47 virtualInterface];
              v49 = NEVirtualInterfaceCopyName();

              v48 = v49;
            }

            self = v136;
            sub_100107A24(v136, v48);
            if ([v47 hasCompanionDatapath])
            {
              v50 = sub_10010A0D8(v136, v47);
              v51 = sub_10010A218(v136, v47, v50);
              [v47 setLinkMTU];
              if ([v51 count])
              {
                objc_opt_self();
                if (qword_100229410 != -1)
                {
                  dispatch_once(&qword_100229410, &stru_1001FCD98);
                }

                v52 = qword_100229408;
                sub_10015A52C(v52);

                v53 = [v47 policyIDs];
                v54 = [[NSMutableArray alloc] initWithArray:v53];
                [v54 addObjectsFromArray:v51];
                [v47 setPolicyIDs:v54];
                v55 = v136->_nrUUID;
                v56 = _NRCopyLogObjectForNRUUID();
                v57 = _NRLogIsLevelEnabled();

                if (v57)
                {
                  v58 = v136->_nrUUID;
                  v59 = _NRCopyLogObjectForNRUUID();
                  v129 = 4466;
                  v131 = v47;
                  v125 = "";
                  v127 = "[NRDDeviceConductor setIPTunnelPolicyForLink:]";
                  _NRLogWithArgs();
                }

                self = v136;
              }

              else
              {
                self = v136;
                v64 = v136->_nrUUID;
                v65 = _NRCopyLogObjectForNRUUID();
                v66 = _NRLogIsLevelEnabled();

                if (!v66)
                {
LABEL_67:

                  goto LABEL_68;
                }

                v67 = v136->_nrUUID;
                v53 = _NRCopyLogObjectForNRUUID();
                v129 = 4468;
                v131 = v47;
                v125 = "";
                v127 = "[NRDDeviceConductor setIPTunnelPolicyForLink:]";
                _NRLogWithArgs();
              }

              goto LABEL_67;
            }

            sub_100107B28(&v136->super.isa, v47);
LABEL_68:
          }
        }

        else
        {
          v60 = self->_nrUUID;
          v61 = _NRCopyLogObjectForNRUUID();
          v62 = _NRLogIsLevelEnabled();

          if (v62)
          {
            v63 = self->_nrUUID;
            v48 = _NRCopyLogObjectForNRUUID();
            v129 = 4431;
            v131 = v47;
            v125 = "";
            v127 = "[NRDDeviceConductor setIPTunnelPolicyForLink:]";
            _NRLogWithArgs();
            goto LABEL_68;
          }
        }

        sub_1000F91EC(self, v47, 0);
        sub_1000FFDA8(self);
        sub_100104BB4(self);
        if ([v47 type] == 1 && (sub_1000EC4F0(self, 1) & 1) == 0)
        {
          sub_1000F2BE0(self, 1);
        }

        else
        {
          v68 = self->_nrUUID;
          v69 = _NRCopyLogObjectForNRUUID();
          v70 = _NRLogIsLevelEnabled();

          if (v70)
          {
            v71 = self->_nrUUID;
            v72 = _NRCopyLogObjectForNRUUID();
            v129 = 6374;
            v125 = "";
            v127 = "[NRDDeviceConductor linkIsReady:]";
            _NRLogWithArgs();
          }
        }

        sub_100106338(self);
        sub_1000F4104(self);
        sub_100100060(self, v47);
        sub_1000F5B40(self, v47);
        sub_1000F5768(self, v47);
        sub_1000F5974(self, v47);
        if (self->_hasPendingImmediateNetInfoUpdateMessage)
        {
          sub_1000FAEC0(self);
        }

        sub_1000FDFE4(self);
        sub_1000FDB08(self);
        isCurrentlyPairing = self->_isCurrentlyPairing;
        self->_isCurrentlyPairing = 0;
        if (isCurrentlyPairing && [v47 subtype] != 103)
        {
          discoveredEndpoint = self->_discoveredEndpoint;
          self->_discoveredEndpoint = 0;

          discoveryClient = self->_discoveryClient;
          if (discoveryClient)
          {
            sub_10014F1DC(discoveryClient);
            v104 = self->_discoveryClient;
            self->_discoveryClient = 0;
          }

          sub_1000ECF74(self, [v47 type], objc_msgSend(v47, "subtype"));
        }

        else if (sub_1000ED8A4(self))
        {
          v149 = 0u;
          v150 = 0u;
          v147 = 0u;
          v148 = 0u;
          obj = self->_availableLinks;
          v74 = [(NSMutableSet *)obj countByEnumeratingWithState:&v147 objects:&newValue count:16];
          if (!v74)
          {
            goto LABEL_122;
          }

          v75 = *v148;
          while (1)
          {
            for (i = 0; i != v74; i = i + 1)
            {
              if (*v148 != v75)
              {
                objc_enumerationMutation(obj);
              }

              v77 = *(*(&v147 + 1) + 8 * i);
              if ([v77 state] != 8)
              {
                v139 = 0u;
                v140 = 0u;
                v137 = 0u;
                v138 = 0u;
                v78 = v136->_availableLinks;
                v79 = [(NSMutableSet *)v78 countByEnumeratingWithState:&v137 objects:location count:16];
                if (v79)
                {
                  v80 = *v138;
                  do
                  {
                    for (j = 0; j != v79; j = j + 1)
                    {
                      if (*v138 != v80)
                      {
                        objc_enumerationMutation(v78);
                      }

                      v82 = *(*(&v137 + 1) + 8 * j);
                      v83 = [v82 type];
                      if (v83 == [v77 type])
                      {
                        v84 = [v82 subtype];
                        if (v84 == [v77 subtype] && objc_msgSend(v82, "state") == 8)
                        {

                          goto LABEL_82;
                        }
                      }
                    }

                    v79 = [(NSMutableSet *)v78 countByEnumeratingWithState:&v137 objects:location count:16];
                  }

                  while (v79);
                }

                v85 = [v77 type];
                v86 = [v77 subtype];
                if (sub_1000ED8A4(v136))
                {
                  if (v86 > 103)
                  {
                    if (v86 == 121)
                    {
                      LOBYTE(v88) = 8;
                      v87 = v136;
                      goto LABEL_115;
                    }

                    v87 = v136;
                    if (v86 == 120)
                    {
                      LOBYTE(v88) = 1;
                      goto LABEL_115;
                    }

                    if (v86 == 104)
                    {
                      LOBYTE(v88) = 7;
                      goto LABEL_115;
                    }
                  }

                  else
                  {
                    if (v86 == 101)
                    {
                      LOBYTE(v88) = 2;
                      v87 = v136;
                      goto LABEL_115;
                    }

                    v87 = v136;
                    if (v86 == 102)
                    {
                      LOBYTE(v88) = 5;
                      goto LABEL_115;
                    }

                    if (v86 == 103)
                    {
                      LOBYTE(v88) = 6;
LABEL_115:
                      v94 = v87->_discoveryClient;
                      if (v94)
                      {
                        v95 = *(v94 + 104);
                        v96 = [NSNumber numberWithUnsignedChar:v88];
                        [v95 removeObject:v96];

                        if (*(v94 + 19) == 1 && *(v94 + 20) == 1)
                        {
                          v97 = *(v94 + 168);
                          v98 = [NSNumber numberWithUnsignedChar:v88];
                          v99 = [v97 objectForKeyedSubscript:v98];

                          if (v99)
                          {
                            nw_browser_cancel(v99);
                            v100 = *(v94 + 168);
                            v101 = [NSNumber numberWithUnsignedChar:v88];
                            [v100 setObject:0 forKeyedSubscript:v101];
                          }

                          sub_10015312C(v94, v88);
                        }
                      }

                      continue;
                    }
                  }

                  if (v85 <= 5)
                  {
                    v88 = 0x40300020100uLL >> (8 * (v85 & 0x1Fu));
                    if (v88)
                    {
                      goto LABEL_115;
                    }
                  }

                  v89 = v87->_nrUUID;
                  v90 = _NRCopyLogObjectForNRUUID();
                  v91 = _NRLogIsLevelEnabled();

                  if (v91)
                  {
                    v92 = v136->_nrUUID;
                    v93 = _NRCopyLogObjectForNRUUID();
                    v131 = v85;
                    v132 = v86;
                    v129 = 8197;
                    v125 = "";
                    v127 = "[NRDDeviceConductor stopDiscoveryOverLinkType:subtype:]";
                    _NRLogWithArgs();
                  }
                }
              }

LABEL_82:
              ;
            }

            v74 = [(NSMutableSet *)obj countByEnumeratingWithState:&v147 objects:&newValue count:16];
            if (!v74)
            {
LABEL_122:

              self = v136;
              sub_1001067E0(v136);
              v47 = v133;
              if (!v136)
              {
                goto LABEL_144;
              }

              goto LABEL_128;
            }
          }
        }

        sub_1001067E0(self);
LABEL_128:
        if (self->_isProxyClient)
        {
          v105 = sub_100163A30(NRDLocalDevice, self->_nrUUID);
          v106 = v105;
          if (v105)
          {
            v107 = *(v105 + 144);
          }

          else
          {
            v107 = 0;
          }

          v108 = v107;
          v109 = [v108 usesTLS];

          if (v109)
          {
            objc_opt_self();
            if (qword_1002290C0 != -1)
            {
              dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
            }

            v110 = qword_1002290B8;
            v111 = v110;
            if (v110)
            {
              v112 = *(v110 + 13);
            }

            else
            {
              v112 = 0;
            }

            v113 = v112;

            if (v113 && [(NRLink *)self->_primaryLink type]!= 4)
            {
              v114 = sub_10002A50C([NRLinkDirectorMessage alloc], self->_nrUUID);
              objc_opt_self();
              if (qword_1002290C0 != -1)
              {
                dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
              }

              v115 = qword_1002290B8;
              v116 = v115;
              if (v115)
              {
                v117 = *(v115 + 13);
              }

              else
              {
                v117 = 0;
              }

              v118 = v117;
              sub_10002AB38(v114, 23, v118);

              sub_10002C0E8(v114);
            }
          }

          v47 = v133;
        }

LABEL_144:
        if (self->_hasPendingClassCASNameResolveRequest && [v47 ikeClassCEstablished])
        {
          sub_1000E8C70(self, 0, 1);
          self->_hasPendingClassCASNameResolveRequest = 0;
        }

        v37 = self->_discoveryClient;
        v119 = [v47 type];
        v120 = [v47 subtype];
        if (v120 > 103)
        {
          switch(v120)
          {
            case 'y':
              LOBYTE(v121) = 8;
              goto LABEL_163;
            case 'x':
              LOBYTE(v121) = 1;
              goto LABEL_163;
            case 'h':
              LOBYTE(v121) = 7;
              goto LABEL_163;
          }
        }

        else
        {
          switch(v120)
          {
            case 'e':
              LOBYTE(v121) = 2;
              goto LABEL_163;
            case 'f':
              LOBYTE(v121) = 5;
              goto LABEL_163;
            case 'g':
              LOBYTE(v121) = 6;
LABEL_163:
              sub_10014F754(v37, v121);
              goto LABEL_164;
          }
        }

        if (v119 > 5)
        {
          LOBYTE(v121) = 0;
        }

        else
        {
          v121 = 0x40300020100uLL >> (8 * (v119 & 0x1F));
        }

        goto LABEL_163;
      }

      v38 = _NRLogIsLevelEnabled();

      if (!v38)
      {
        goto LABEL_165;
      }
    }

    else
    {
      v33 = self->_nrUUID;
      v34 = _NRCopyLogObjectForNRUUID();
      v35 = _NRLogIsLevelEnabled();

      if (!v35)
      {
        goto LABEL_165;
      }
    }

    v36 = self->_nrUUID;
    v37 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
LABEL_164:

    goto LABEL_165;
  }

  v122 = sub_1000E83DC();
  v123 = _NRLogIsLevelEnabled();

  if (v123)
  {
    v37 = sub_1000E83DC();
    _NRLogWithArgs();
    goto LABEL_164;
  }

LABEL_165:
}

- (void)linkIsAvailable:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (v4)
  {
    if (self->_isEnabled)
    {
      v5 = [v4 state];
      nrUUID = self->_nrUUID;
      v7 = _NRCopyLogObjectForNRUUID();
      if (v5 != 255)
      {
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v9 = self->_nrUUID;
          v10 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();
        }

        v11 = [v4 copyShortDescription];
        sub_1000059A8(self->_nrUUID, 1004, 0, v11);

        [(NSMutableSet *)self->_availableLinks addObject:v4];
        [v4 setPolicyIdentifierString:self->_policyIdentifier];
        [v4 setIsCompanionLink:self->_isCompanionLink];
        sub_1000EF110(self, v4);
        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        v12 = qword_1002290B8;
        if (v12 && v12[12] == 1)
        {
          isCompanionLink = self->_isCompanionLink;

          if (isCompanionLink)
          {
            if (qword_100229160 != -1)
            {
              dispatch_once(&qword_100229160, &stru_1001FBC40);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_100229160 != -1)
              {
                dispatch_once(&qword_100229160, &stru_1001FBC40);
              }

              _NRLogWithArgs();
            }

            goto LABEL_61;
          }
        }

        else
        {
        }

        v22 = [v4 type];
        if (v22 > 2)
        {
          if (v22 != 3)
          {
            if (v22 != 4)
            {
              if (v22 != 5)
              {
                goto LABEL_60;
              }

              goto LABEL_59;
            }

            sub_1000F35C8(self);
LABEL_60:
            sub_100106338(self);
            sub_1000F4104(self);
            goto LABEL_61;
          }

          v25 = self->_nrUUID;
          v26 = _NRCopyLogObjectForNRUUID();
          v27 = _NRLogIsLevelEnabled();

          if (!v27)
          {
            goto LABEL_60;
          }

          v28 = self->_nrUUID;
          v29 = _NRCopyLogObjectForNRUUID();
          [v4 type];

          StringFromNRLinkType = createStringFromNRLinkType();
LABEL_39:
          _NRLogWithArgs();

          goto LABEL_60;
        }

        if (v22 != 1)
        {
          if (v22 == 2)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v62 = sub_1000BA648();
              if (!v62 || (v63 = v62[8], v62, (v63 & 1) == 0))
              {
                v64 = self->_nrUUID;
                v65 = _NRCopyLogObjectForNRUUID();
                v66 = _NRLogIsLevelEnabled();

                if (!v66)
                {
                  goto LABEL_60;
                }

                StringFromNRLinkType = self->_nrUUID;
                v29 = _NRCopyLogObjectForNRUUID();
                goto LABEL_39;
              }
            }

            v23 = v4;
            if ([v23 subtype] == 101)
            {
              sub_1000F2BE0(self, 0);
            }

            if (self->_isPreferWiFiProvider && !self->_isCoalescingLinkUpgradeRequest)
            {
              if (self->_supportsNAN || self->_supportsAWDL)
              {
                v24 = 5000000000;
              }

              else
              {
                v24 = 1000000000;
              }

              self->_isCoalescingLinkUpgradeRequest = 1;
              v45 = dispatch_time(0x8000000000000000, v24);
              queue = self->_queue;
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_10010FA5C;
              block[3] = &unk_1001FD3C8;
              block[4] = self;
              dispatch_after(v45, queue, block);
            }

            if ([v23 subtype] == 102)
            {
              if (self->_isCompanionLink)
              {
                sub_1000F03C0(self);
              }

              else
              {
                sub_1000F1A9C(self);
              }

              goto LABEL_67;
            }

            if ([v23 subtype] == 103 || objc_msgSend(v23, "subtype") == 104)
            {
              goto LABEL_70;
            }

            if ([v23 subtype] != 101)
            {
              v54 = self->_nrUUID;
              v55 = _NRCopyLogObjectForNRUUID();
              v56 = _NRLogIsLevelEnabled();

              if (v56)
              {
                v57 = self->_nrUUID;
                v58 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs();

                goto LABEL_60;
              }

              goto LABEL_67;
            }

            if (self->_isAlwaysReachableOverWiFi || !self->_isCompanionLink)
            {
LABEL_70:
              [v23 start];

              goto LABEL_60;
            }

            v47 = sub_1000BA648();
            if (v47)
            {
              v48 = v47[8];

              if (v48 == 1)
              {
                v49 = self->_nrUUID;
                v50 = _NRCopyLogObjectForNRUUID();
                v51 = _NRLogIsLevelEnabled();

                if (v51)
                {
                  v52 = self->_nrUUID;
                  v53 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs();
                }

                goto LABEL_70;
              }
            }

            if (self->_pendingPreferWiFiRequest || self->_preferWiFiRequest || self->_bringUpWiFiImmediately)
            {
              v67 = sub_1000EC630(self);
              v68 = sub_10017E984(v67, self->_nrUUID);

              if (v68)
              {
                sub_1000F03C0(self);
              }

              else
              {
                v69 = self->_nrUUID;
                v70 = _NRCopyLogObjectForNRUUID();
                v71 = _NRLogIsLevelEnabled();

                if (v71)
                {
                  v72 = self->_nrUUID;
                  v73 = _NRCopyLogObjectForNRUUID();
                  _NRLogWithArgs();
                }
              }
            }

            else
            {
              v74 = self->_nrUUID;
              v75 = _NRCopyLogObjectForNRUUID();
              v76 = _NRLogIsLevelEnabled();

              if (!v76)
              {
LABEL_67:

                goto LABEL_60;
              }

              v77 = self->_nrUUID;
              v68 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs();
            }

            goto LABEL_67;
          }

          if (v22)
          {
            goto LABEL_60;
          }

          v33 = sub_1000E83DC();
          v34 = _NRLogIsLevelEnabled();

          if (v34)
          {
            v35 = sub_1000E83DC();
            _NRLogWithArgs();
          }

          self = _os_log_pack_size();
          v31 = block - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v36 = *__error();
          v37 = _os_log_pack_fill();
          *v37 = 136446466;
          *(v37 + 4) = "[NRDDeviceConductor linkIsAvailable:]";
          *(v37 + 12) = 2112;
          *(v37 + 14) = v4;
          sub_1000E83DC();
          _NRLogAbortWithPack();
LABEL_51:

          goto LABEL_57;
        }

        if (!self->_isPreferWiFiProvider)
        {
          goto LABEL_57;
        }

        if (self->_preferWiFiRequest)
        {
          [v4 setSuspendWhenReady:1];
        }

        v31 = sub_100180AC4();
        if (!sub_10018165C(v31))
        {
          goto LABEL_51;
        }

        latestPreferWiFiRequestType = self->_latestPreferWiFiRequestType;
        if (latestPreferWiFiRequestType == 2)
        {
        }

        else
        {

          if (latestPreferWiFiRequestType != 3)
          {
            goto LABEL_57;
          }
        }

        if (self->_latestPreferWiFiRequestType == 2)
        {
          v38 = sub_1000EC630(self);
          v39 = sub_10017F64C(v38);
        }

        else
        {
          v39 = 0;
        }

        v79[0] = _NSConcreteStackBlock;
        v79[1] = 3221225472;
        v79[2] = sub_10010F970;
        v79[3] = &unk_1001FBA98;
        v79[4] = self;
        v80 = v39;
        sub_1000EF670(self, v39, 0, 0, 1, v79);
LABEL_57:
        v40 = self->_nrUUID;
        v41 = _NRCopyLogObjectForNRUUID();
        v42 = _NRLogIsLevelEnabled();

        if (v42)
        {
          v43 = self->_nrUUID;
          v44 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();
        }

LABEL_59:
        [v4 start];
        goto LABEL_60;
      }

      v19 = _NRLogIsLevelEnabled();

      if (v19)
      {
        v20 = self->_nrUUID;
        v21 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }

    else
    {
      v14 = self->_nrUUID;
      v15 = _NRCopyLogObjectForNRUUID();
      v16 = _NRLogIsLevelEnabled();

      if (v16)
      {
        v17 = self->_nrUUID;
        v18 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs();
      }
    }
  }

  else
  {
    v59 = sub_1000E83DC();
    v60 = _NRLogIsLevelEnabled();

    if (v60)
    {
      v61 = sub_1000E83DC();
      _NRLogWithArgs();
    }
  }

LABEL_61:
}

- (void)didStopTrackingAllNOIs:(id)a3
{
  if (self)
  {
    nrUUID = self->_nrUUID;
  }

  v5 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    if (self)
    {
      v7 = self->_nrUUID;
    }

    v8 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }

  if (self)
  {
    aluMonitor = self->_aluMonitor;
    if (aluMonitor && ![(NRAutoLinkUpgradeMonitor *)self->_aluMonitor cancelled])
    {
      [(NRAutoLinkUpgradeMonitor *)aluMonitor setCancelled:1];
      [(NRAutoLinkUpgradeMonitor *)aluMonitor setUpdateBlock:0];
      [(NRAutoLinkUpgradeMonitor *)aluMonitor invalidateAggregateStatsTimerSource];
      [(NRAutoLinkUpgradeMonitor *)aluMonitor reportEvent:30003];
    }

    linkUpgradeReportWiFiInfra = self->_linkUpgradeReportWiFiInfra;
    self->_linkUpgradeReportWiFiInfra = 0;

    linkUpgradeReportForBTClassic = self->_linkUpgradeReportForBTClassic;
    self->_linkUpgradeReportForBTClassic = 0;

    *&self->_effectiveALUAdvice = 0u;

    sub_10010FE38(self);
  }
}

- (void)didStartTrackingNOI:(id)a3
{
  v4 = a3;
  if (self && self->_isEnabled && self->_aluSupported)
  {
    v28 = v4;
    nrUUID = self->_nrUUID;
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = self->_nrUUID;
      v9 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    v10 = [NRAutoLinkUpgradeMonitor alloc];
    v11 = self->_nrUUID;
    v12 = self->_queue;
    v13 = sub_100079FE8(&v10->super.isa, v12, v11);

    v14 = self->_aluMonitor;
    if (!v14)
    {
      goto LABEL_16;
    }

    v15 = v14;
    v16 = self->_aluMonitor;
    v17 = v16;
    if (v16 && (v18 = v16->_lastReceivedAdviceID) != 0)
    {
      v19 = v18;
      aluMonitor = self->_aluMonitor;
      if (aluMonitor)
      {
        aluMonitor = aluMonitor->_lastReceivedAdviceID;
      }

      v21 = aluMonitor;
      v22 = [(NRAutoLinkUpgradeMonitor *)v21 unsignedLongLongValue];

      if (!v22)
      {
        goto LABEL_16;
      }

      v23 = self->_nrUUID;
      v24 = _NRCopyLogObjectForNRUUID();
      v25 = _NRLogIsLevelEnabled();

      if (!v25)
      {
        goto LABEL_16;
      }

      v26 = self->_nrUUID;
      v15 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs();
    }

    else
    {
    }

LABEL_16:
    v27 = self->_aluMonitor;
    self->_aluMonitor = v13;

    v4 = v28;
  }
}

- (void)processAppStateChanged:(id)a3
{
  v4 = a3;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100110754;
  v7[3] = &unk_1001FD060;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)dealloc
{
  v3 = [(NRDDeviceConductor *)self description];
  if (self)
  {
    sub_1000059A8(self->_nrUUID, 1503, 0, v3);
  }

  v4.receiver = self;
  v4.super_class = NRDDeviceConductor;
  [(NRDDeviceConductor *)&v4 dealloc];
}

- (NSString)description
{
  v3 = [NSString alloc];
  if (self)
  {
    nrUUID = self->_nrUUID;
  }

  else
  {
    nrUUID = 0;
  }

  v5 = [(NSUUID *)nrUUID UUIDString];
  v6 = [v3 initWithFormat:@"Conductor[%@]", v5];

  return v6;
}

@end