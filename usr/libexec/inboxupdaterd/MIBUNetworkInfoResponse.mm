@interface MIBUNetworkInfoResponse
- (BOOL)_deserialize:(id)_deserialize;
- (MIBUNetworkInfoResponse)init;
- (id)serialize;
@end

@implementation MIBUNetworkInfoResponse

- (MIBUNetworkInfoResponse)init
{
  v5.receiver = self;
  v5.super_class = MIBUNetworkInfoResponse;
  v2 = [(MIBUNFCResponse *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MIBUNetworkInfoResponse *)v2 setNetworkInfo:0];
  }

  return v3;
}

- (BOOL)_deserialize:(id)_deserialize
{
  _deserializeCopy = _deserialize;
  v5 = [[MIBUDeserializer alloc] initWithData:_deserializeCopy];

  deserialize = [(MIBUDeserializer *)v5 deserialize];
  if (!deserialize)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100056814();
    }

    v42 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100056828(v42, v43, v44, v45, v46, v47, v48, v49);
    }

    v69 = 0;
    v70 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v34 = 0;
    v33 = 0;
    v37 = 0;
    v39 = 0;
    v64 = 0;
    v65 = 0;
    goto LABEL_15;
  }

  v71 = 0;
  v7 = [(MIBUDeserializer *)v5 deserializeResponseError:&v71];
  v64 = v71;
  if ((v7 & 1) == 0)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_1000567B4();
    }

    v50 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_1000567DC(v50, v51, v52, v53, v54, v55, v56, v57);
    }

    v69 = 0;
    v70 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v34 = 0;
    v33 = 0;
    v37 = 0;
    v39 = 0;
    v65 = 0;
LABEL_15:
    v31 = 0;
    v62 = 0;
    v63 = 0;
    v40 = 0;
    goto LABEL_4;
  }

  v63 = [deserialize objectForKey:&off_1000A7E18];
  v62 = [deserialize objectForKey:&off_1000A7E30];
  v8 = [deserialize objectForKey:&off_1000A7E48];
  v70 = [deserialize objectForKey:&off_1000A7E60];
  v69 = [deserialize objectForKey:&off_1000A7E78];
  v9 = [deserialize objectForKey:&off_1000A7E90];
  v10 = [deserialize objectForKey:&off_1000A7EA8];
  v11 = [deserialize objectForKey:&off_1000A7EC0];
  v68 = [deserialize objectForKey:&off_1000A7ED8];
  v59 = [deserialize objectForKey:&off_1000A7EF0];
  v58 = [deserialize objectForKey:&off_1000A7F08];
  v60 = [deserialize objectForKey:&off_1000A7F20];
  v61 = [deserialize objectForKey:&off_1000A7F38];
  v12 = objc_alloc_init(MIBUNetworkInfo);
  [(MIBUNetworkInfoResponse *)self setNetworkInfo:v12];

  networkInfo = [(MIBUNetworkInfoResponse *)self networkInfo];
  [networkInfo setNetworkName:v63];

  longValue = [v62 longValue];
  [(MIBUNetworkInfoResponse *)self networkInfo];
  v16 = v15 = v5;
  [v16 setRSSI:longValue];

  longValue2 = [v8 longValue];
  networkInfo2 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [networkInfo2 setNoise:longValue2];

  longValue3 = [v70 longValue];
  networkInfo3 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [networkInfo3 setChannel:longValue3];

  intValue = [v69 intValue];
  networkInfo4 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [networkInfo4 setChannelWidth:intValue];

  v67 = v9;
  intValue2 = [v9 intValue];
  networkInfo5 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [networkInfo5 setChannelBand:intValue2];

  v66 = v10;
  intValue3 = [v10 intValue];
  networkInfo6 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [networkInfo6 setPHYMode:intValue3];

  v65 = v11;
  unsignedLongValue = [v11 unsignedLongValue];
  networkInfo7 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [networkInfo7 setNumberOfSpatialStreams:unsignedLongValue];

  unsignedLongValue2 = [v68 unsignedLongValue];
  networkInfo8 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [networkInfo8 setMCSIndex:unsignedLongValue2];

  v5 = v15;
  v31 = v8;
  networkInfo9 = [(MIBUNetworkInfoResponse *)self networkInfo];
  v33 = v58;
  v34 = v59;
  [networkInfo9 setMACAddress:?];

  networkInfo10 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [networkInfo10 setIPV4Address:v58];

  networkInfo11 = [(MIBUNetworkInfoResponse *)self networkInfo];
  v37 = v60;
  [networkInfo11 setIPV6Address:?];

  networkInfo12 = [(MIBUNetworkInfoResponse *)self networkInfo];
  v39 = v61;
  [networkInfo12 setBSSID:?];

  v40 = 1;
LABEL_4:
  [(MIBUNFCResponse *)self setError:v64];

  return v40;
}

- (id)serialize
{
  v3 = objc_opt_new();
  networkInfo = [(MIBUNetworkInfoResponse *)self networkInfo];

  if (networkInfo)
  {
    if (![(MIBUNFCResponse *)self rejected])
    {
      networkInfo2 = [(MIBUNetworkInfoResponse *)self networkInfo];
      [networkInfo2 networkName];
      networkInfo19 = &NSDataWithHex_ptr;
      v50 = v55 = v3;
      if (v50)
      {
        networkInfo3 = [(MIBUNetworkInfoResponse *)self networkInfo];
        networkName = [networkInfo3 networkName];
      }

      else
      {
        networkName = objc_opt_new();
        networkInfo3 = networkName;
      }

      v28 = networkName;
      v58[0] = networkName;
      networkInfo4 = [sub_1000148A4() networkInfo];
      [networkInfo4 RSSI];
      v48 = [sub_100014898() numberWithInteger:?];
      v58[1] = v48;
      networkInfo5 = [sub_1000148A4() networkInfo];
      [networkInfo5 noise];
      v46 = [sub_100014898() numberWithInteger:?];
      v58[2] = v46;
      networkInfo6 = [sub_1000148A4() networkInfo];
      [networkInfo6 channel];
      v44 = [sub_100014898() numberWithInteger:?];
      v58[3] = v44;
      networkInfo7 = [sub_1000148A4() networkInfo];
      [networkInfo7 channelWidth];
      v42 = [sub_100014898() numberWithUnsignedInteger:?];
      v58[4] = v42;
      networkInfo8 = [sub_1000148A4() networkInfo];
      [networkInfo8 channelBand];
      v40 = [sub_100014898() numberWithUnsignedInteger:?];
      v58[5] = v40;
      networkInfo9 = [sub_1000148A4() networkInfo];
      [networkInfo9 PHYMode];
      v38 = [sub_100014898() numberWithUnsignedInteger:?];
      v58[6] = v38;
      networkInfo10 = [sub_1000148A4() networkInfo];
      [networkInfo10 numberOfSpatialStreams];
      v36 = [sub_100014898() numberWithUnsignedInteger:?];
      v58[7] = v36;
      networkInfo11 = [sub_1000148A4() networkInfo];
      [networkInfo11 MCSIndex];
      v34 = [sub_100014898() numberWithUnsignedInteger:?];
      v58[8] = v34;
      networkInfo12 = [(MIBUNetworkInfoResponse *)self networkInfo];
      mACAddress = [networkInfo12 MACAddress];
      if (mACAddress)
      {
        networkInfo13 = [(MIBUNetworkInfoResponse *)self networkInfo];
        mACAddress2 = [networkInfo13 MACAddress];
      }

      else
      {
        mACAddress2 = objc_opt_new();
        networkInfo13 = mACAddress2;
      }

      v27 = mACAddress2;
      v58[9] = mACAddress2;
      networkInfo14 = [(MIBUNetworkInfoResponse *)self networkInfo];
      iPV4Address = [networkInfo14 iPV4Address];
      if (iPV4Address)
      {
        networkInfo15 = [(MIBUNetworkInfoResponse *)self networkInfo];
        iPV4Address2 = [networkInfo15 iPV4Address];
      }

      else
      {
        iPV4Address2 = objc_opt_new();
        networkInfo15 = iPV4Address2;
      }

      v30 = iPV4Address;
      v58[10] = iPV4Address2;
      networkInfo16 = [(MIBUNetworkInfoResponse *)self networkInfo];
      iPV6Address = [networkInfo16 iPV6Address];
      if (iPV6Address)
      {
        networkInfo17 = [(MIBUNetworkInfoResponse *)self networkInfo];
        iPV6Address2 = [networkInfo17 iPV6Address];
      }

      else
      {
        iPV6Address2 = objc_opt_new();
        networkInfo17 = iPV6Address2;
      }

      v14 = iPV6Address2;
      v58[11] = iPV6Address2;
      networkInfo18 = [(MIBUNetworkInfoResponse *)self networkInfo];
      bSSID = [networkInfo18 BSSID];
      if (bSSID)
      {
        networkInfo19 = [(MIBUNetworkInfoResponse *)self networkInfo];
        bSSID2 = [networkInfo19 BSSID];
      }

      else
      {
        bSSID2 = objc_opt_new();
      }

      v58[12] = bSSID2;
      v18 = [NSArray arrayWithObjects:v58 count:13];
      v29 = [v55 serialize:&off_1000A9A88 withValue:v18];

      if (bSSID)
      {

        bSSID2 = networkInfo19;
      }

      if (iPV6Address)
      {
      }

      v3 = v55;
      if (v30)
      {
      }

      if (mACAddress)
      {
      }

      if (v50)
      {
      }

      if (v29)
      {
        error = [(MIBUNFCResponse *)self error];
        v20 = [v55 serializeResponseError:error];

        if (v20)
        {
          networkInfo = [v55 serializedData];
          goto LABEL_31;
        }

        if (qword_1000B84A8[0] != -1)
        {
          dispatch_once(qword_1000B84A8, &stru_10009A858);
        }

        v23 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
        {
          v24 = v23;
          error2 = [(MIBUNFCResponse *)self error];
          *buf = 138543362;
          v57 = error2;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to serialize response error: %{public}@", buf, 0xCu);
        }
      }

      else
      {
        if (qword_1000B84A8[0] != -1)
        {
          dispatch_once(qword_1000B84A8, &stru_10009A838);
        }

        v22 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to serialize network info", buf, 2u);
        }
      }
    }

    networkInfo = 0;
  }

LABEL_31:

  return networkInfo;
}

@end