@interface W5PeerStatusListener
- (BOOL)handleClientRequest:(id)request;
- (W5PeerStatusListener)initWithInterface:(id)interface statusManager:(id)manager;
- (id)_connectionInfo;
@end

@implementation W5PeerStatusListener

- (W5PeerStatusListener)initWithInterface:(id)interface statusManager:(id)manager
{
  interfaceCopy = interface;
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = W5PeerStatusListener;
  v9 = [(W5PeerStatusListener *)&v13 init];
  v10 = v9;
  if (!v9 || (objc_storeStrong(&v9->_interface, interface), !v10->_interface) || (objc_storeStrong(&v10->_statusManager, manager), !v10->_statusManager))
  {

    v11 = sub_100098A04();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315650;
      v15 = "[W5PeerStatusListener initWithInterface:statusManager:]";
      v16 = 2080;
      v17 = "W5PeerStatusListener.m";
      v18 = 1024;
      v19 = 42;
      _os_log_send_and_compose_impl();
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)handleClientRequest:(id)request
{
  requestCopy = request;
  payload = [requestCopy payload];
  v6 = payload;
  if (payload)
  {
    version = [payload version];
    v8 = sub_100098A04();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136316418;
      v20 = "[W5PeerStatusListener handleClientRequest:]";
      v21 = 2080;
      v22 = "W5PeerStatusListener.m";
      v23 = 1024;
      v24 = 53;
      v25 = 2114;
      v26 = requestCopy;
      v27 = 2114;
      v28 = v6;
      v29 = 2114;
      v30 = version;
      LODWORD(v18) = 58;
      v17 = &v19;
      _os_log_send_and_compose_impl();
    }

    v9 = objc_alloc_init(W5PeerStatusResponsePayload);
    v10 = [NSNumber numberWithInteger:[(W5PeerStatusListener *)self currentVersion]];
    [(W5PeerStatusResponsePayload *)v9 setVersion:v10];

    [(W5PeerStatusResponsePayload *)v9 setStatus:1];
    if ([version integerValue] == 1)
    {
      statusManager = [(W5PeerStatusListener *)self statusManager];
      status = [statusManager status];
      [(W5PeerStatusResponsePayload *)v9 setPeerStatus:status];
    }

    handler = [requestCopy handler];
    (handler)[2](handler, v9, 0);
  }

  else
  {
    _connectionInfo = [(W5PeerStatusListener *)self _connectionInfo];
    version = [W5PeerSimpleResponsePayload payloadFromDictionary:_connectionInfo];

    handler2 = [requestCopy handler];
    (handler2)[2](handler2, version, 0);
  }

  return 1;
}

- (id)_connectionInfo
{
  statusManager = [(W5PeerStatusListener *)self statusManager];
  networkStatus = [statusManager networkStatus];

  v5 = self->_interface;
  if (v5)
  {
    primaryIPv4Addresses = [networkStatus primaryIPv4Addresses];
    v7 = [primaryIPv4Addresses count];

    if (v7)
    {
      primaryIPv4Addresses2 = [networkStatus primaryIPv4Addresses];
      v41 = [primaryIPv4Addresses2 objectAtIndexedSubscript:0];
    }

    else
    {
      v41 = &stru_1000E4788;
    }

    primaryIPv4Router = [networkStatus primaryIPv4Router];

    if (primaryIPv4Router)
    {
      primaryIPv4Router2 = [networkStatus primaryIPv4Router];
    }

    else
    {
      primaryIPv4Router2 = &stru_1000E4788;
    }

    primaryIPv6Addresses = [networkStatus primaryIPv6Addresses];
    v11 = [primaryIPv6Addresses count];

    if (v11)
    {
      primaryIPv6Addresses2 = [networkStatus primaryIPv6Addresses];
      v39 = [primaryIPv6Addresses2 objectAtIndexedSubscript:0];
    }

    else
    {
      v39 = &stru_1000E4788;
    }

    primaryIPv6Router = [networkStatus primaryIPv6Router];

    if (primaryIPv6Router)
    {
      primaryIPv6Router2 = [networkStatus primaryIPv6Router];
    }

    else
    {
      primaryIPv6Router2 = &stru_1000E4788;
    }

    v35 = ([networkStatus isAppleReachable] & 2) != 0 && (objc_msgSend(networkStatus, "isAppleReachable") & 4) == 0;
    v42[0] = @"networkName";
    networkName = [(CWFInterface *)v5 networkName];
    if (networkName)
    {
      networkName2 = [(CWFInterface *)v5 networkName];
    }

    else
    {
      networkName2 = &stru_1000E4788;
    }

    v32 = networkName2;
    v43[0] = networkName2;
    v42[1] = @"bssid";
    bSSID = [(CWFInterface *)v5 BSSID];
    v37 = networkName;
    if (bSSID)
    {
      bSSID2 = [(CWFInterface *)v5 BSSID];
    }

    else
    {
      bSSID2 = @"00:00:00:00:00:00";
    }

    v31 = bSSID2;
    v43[1] = bSSID2;
    v43[2] = &stru_1000E4788;
    v42[2] = @"operatingBand";
    v42[3] = @"rssi";
    v17 = [NSNumber numberWithInteger:[(CWFInterface *)v5 RSSI]];
    v18 = v17;
    if (v17)
    {
      v17 = [NSNumber numberWithInteger:[(CWFInterface *)v5 RSSI]];
    }

    v30 = v17;
    v43[3] = v17;
    v42[4] = @"cca";
    v19 = [NSNumber numberWithUnsignedInteger:[(CWFInterface *)v5 CCA]];
    v20 = v19;
    v34 = v18;
    if (v19)
    {
      v19 = [NSNumber numberWithUnsignedInteger:[(CWFInterface *)v5 CCA]];
    }

    v29 = v19;
    v43[4] = v19;
    v42[5] = @"channel";
    channel = [(CWFInterface *)v5 channel];
    v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [channel channel]);
    v43[5] = v21;
    v42[6] = @"channelWidth";
    channel2 = [(CWFInterface *)v5 channel];
    v23 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [channel2 width]);
    v43[6] = v23;
    v42[7] = @"txRate";
    [(CWFInterface *)v5 txRate];
    v24 = [NSNumber numberWithDouble:?];
    v43[7] = v24;
    v42[8] = @"rxRate";
    [(CWFInterface *)v5 rxRate];
    v25 = [NSNumber numberWithDouble:?];
    v43[8] = v25;
    v43[9] = &off_1000F4A38;
    v42[9] = @"txFail";
    v42[10] = @"txFrames";
    v43[10] = &off_1000F4A38;
    v43[11] = &off_1000F4A38;
    v42[11] = @"packetLoss";
    v42[12] = @"ipv4Address";
    v43[12] = v41;
    v43[13] = primaryIPv4Router2;
    v42[13] = @"ipv4Gateway";
    v42[14] = @"ipv6Address";
    v43[14] = v39;
    v43[15] = primaryIPv6Router2;
    v42[15] = @"ipv6Gateway";
    v42[16] = @"knownNetwork";
    v43[16] = &off_1000EFB78;
    v43[17] = &off_1000EFB90;
    v42[17] = @"securityType";
    v42[18] = @"internetConnected";
    v26 = [NSNumber numberWithBool:v35];
    v42[19] = @"speed";
    v43[18] = v26;
    v43[19] = &stru_1000E4788;
    v27 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:20];

    if (v20)
    {
    }

    if (v34)
    {
    }

    if (bSSID)
    {
    }

    if (v37)
    {
    }
  }

  else
  {
    v27 = &__NSDictionary0__struct;
    primaryIPv6Router2 = &stru_1000E4788;
    v39 = &stru_1000E4788;
    primaryIPv4Router2 = &stru_1000E4788;
    v41 = &stru_1000E4788;
  }

  return v27;
}

@end