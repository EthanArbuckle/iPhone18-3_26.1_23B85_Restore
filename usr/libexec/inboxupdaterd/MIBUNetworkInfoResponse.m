@interface MIBUNetworkInfoResponse
- (BOOL)_deserialize:(id)a3;
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

- (BOOL)_deserialize:(id)a3
{
  v4 = a3;
  v5 = [[MIBUDeserializer alloc] initWithData:v4];

  v6 = [(MIBUDeserializer *)v5 deserialize];
  if (!v6)
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

  v63 = [v6 objectForKey:&off_1000A7E18];
  v62 = [v6 objectForKey:&off_1000A7E30];
  v8 = [v6 objectForKey:&off_1000A7E48];
  v70 = [v6 objectForKey:&off_1000A7E60];
  v69 = [v6 objectForKey:&off_1000A7E78];
  v9 = [v6 objectForKey:&off_1000A7E90];
  v10 = [v6 objectForKey:&off_1000A7EA8];
  v11 = [v6 objectForKey:&off_1000A7EC0];
  v68 = [v6 objectForKey:&off_1000A7ED8];
  v59 = [v6 objectForKey:&off_1000A7EF0];
  v58 = [v6 objectForKey:&off_1000A7F08];
  v60 = [v6 objectForKey:&off_1000A7F20];
  v61 = [v6 objectForKey:&off_1000A7F38];
  v12 = objc_alloc_init(MIBUNetworkInfo);
  [(MIBUNetworkInfoResponse *)self setNetworkInfo:v12];

  v13 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [v13 setNetworkName:v63];

  v14 = [v62 longValue];
  [(MIBUNetworkInfoResponse *)self networkInfo];
  v16 = v15 = v5;
  [v16 setRSSI:v14];

  v17 = [v8 longValue];
  v18 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [v18 setNoise:v17];

  v19 = [v70 longValue];
  v20 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [v20 setChannel:v19];

  v21 = [v69 intValue];
  v22 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [v22 setChannelWidth:v21];

  v67 = v9;
  v23 = [v9 intValue];
  v24 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [v24 setChannelBand:v23];

  v66 = v10;
  v25 = [v10 intValue];
  v26 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [v26 setPHYMode:v25];

  v65 = v11;
  v27 = [v11 unsignedLongValue];
  v28 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [v28 setNumberOfSpatialStreams:v27];

  v29 = [v68 unsignedLongValue];
  v30 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [v30 setMCSIndex:v29];

  v5 = v15;
  v31 = v8;
  v32 = [(MIBUNetworkInfoResponse *)self networkInfo];
  v33 = v58;
  v34 = v59;
  [v32 setMACAddress:?];

  v35 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [v35 setIPV4Address:v58];

  v36 = [(MIBUNetworkInfoResponse *)self networkInfo];
  v37 = v60;
  [v36 setIPV6Address:?];

  v38 = [(MIBUNetworkInfoResponse *)self networkInfo];
  v39 = v61;
  [v38 setBSSID:?];

  v40 = 1;
LABEL_4:
  [(MIBUNFCResponse *)self setError:v64];

  return v40;
}

- (id)serialize
{
  v3 = objc_opt_new();
  v4 = [(MIBUNetworkInfoResponse *)self networkInfo];

  if (v4)
  {
    if (![(MIBUNFCResponse *)self rejected])
    {
      v51 = [(MIBUNetworkInfoResponse *)self networkInfo];
      [v51 networkName];
      v5 = &NSDataWithHex_ptr;
      v50 = v55 = v3;
      if (v50)
      {
        v54 = [(MIBUNetworkInfoResponse *)self networkInfo];
        v6 = [v54 networkName];
      }

      else
      {
        v6 = objc_opt_new();
        v54 = v6;
      }

      v28 = v6;
      v58[0] = v6;
      v49 = [sub_1000148A4() networkInfo];
      [v49 RSSI];
      v48 = [sub_100014898() numberWithInteger:?];
      v58[1] = v48;
      v47 = [sub_1000148A4() networkInfo];
      [v47 noise];
      v46 = [sub_100014898() numberWithInteger:?];
      v58[2] = v46;
      v45 = [sub_1000148A4() networkInfo];
      [v45 channel];
      v44 = [sub_100014898() numberWithInteger:?];
      v58[3] = v44;
      v43 = [sub_1000148A4() networkInfo];
      [v43 channelWidth];
      v42 = [sub_100014898() numberWithUnsignedInteger:?];
      v58[4] = v42;
      v41 = [sub_1000148A4() networkInfo];
      [v41 channelBand];
      v40 = [sub_100014898() numberWithUnsignedInteger:?];
      v58[5] = v40;
      v39 = [sub_1000148A4() networkInfo];
      [v39 PHYMode];
      v38 = [sub_100014898() numberWithUnsignedInteger:?];
      v58[6] = v38;
      v37 = [sub_1000148A4() networkInfo];
      [v37 numberOfSpatialStreams];
      v36 = [sub_100014898() numberWithUnsignedInteger:?];
      v58[7] = v36;
      v35 = [sub_1000148A4() networkInfo];
      [v35 MCSIndex];
      v34 = [sub_100014898() numberWithUnsignedInteger:?];
      v58[8] = v34;
      v33 = [(MIBUNetworkInfoResponse *)self networkInfo];
      v32 = [v33 MACAddress];
      if (v32)
      {
        v53 = [(MIBUNetworkInfoResponse *)self networkInfo];
        v7 = [v53 MACAddress];
      }

      else
      {
        v7 = objc_opt_new();
        v53 = v7;
      }

      v27 = v7;
      v58[9] = v7;
      v31 = [(MIBUNetworkInfoResponse *)self networkInfo];
      v8 = [v31 iPV4Address];
      if (v8)
      {
        v52 = [(MIBUNetworkInfoResponse *)self networkInfo];
        v9 = [v52 iPV4Address];
      }

      else
      {
        v9 = objc_opt_new();
        v52 = v9;
      }

      v30 = v8;
      v58[10] = v9;
      v10 = [(MIBUNetworkInfoResponse *)self networkInfo];
      v11 = [v10 iPV6Address];
      if (v11)
      {
        v12 = [(MIBUNetworkInfoResponse *)self networkInfo];
        v13 = [v12 iPV6Address];
      }

      else
      {
        v13 = objc_opt_new();
        v12 = v13;
      }

      v14 = v13;
      v58[11] = v13;
      v15 = [(MIBUNetworkInfoResponse *)self networkInfo];
      v16 = [v15 BSSID];
      if (v16)
      {
        v5 = [(MIBUNetworkInfoResponse *)self networkInfo];
        v17 = [v5 BSSID];
      }

      else
      {
        v17 = objc_opt_new();
      }

      v58[12] = v17;
      v18 = [NSArray arrayWithObjects:v58 count:13];
      v29 = [v55 serialize:&off_1000A9A88 withValue:v18];

      if (v16)
      {

        v17 = v5;
      }

      if (v11)
      {
      }

      v3 = v55;
      if (v30)
      {
      }

      if (v32)
      {
      }

      if (v50)
      {
      }

      if (v29)
      {
        v19 = [(MIBUNFCResponse *)self error];
        v20 = [v55 serializeResponseError:v19];

        if (v20)
        {
          v4 = [v55 serializedData];
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
          v25 = [(MIBUNFCResponse *)self error];
          *buf = 138543362;
          v57 = v25;
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

    v4 = 0;
  }

LABEL_31:

  return v4;
}

@end