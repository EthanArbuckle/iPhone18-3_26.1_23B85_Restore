@interface MIBUDeviceInfoResponse
- (BOOL)_deserialize:(id)_deserialize;
- (MIBUDeviceInfoResponse)init;
- (id)serialize;
@end

@implementation MIBUDeviceInfoResponse

- (MIBUDeviceInfoResponse)init
{
  v5.receiver = self;
  v5.super_class = MIBUDeviceInfoResponse;
  v2 = [(MIBUNFCResponse *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MIBUDeviceInfoResponse *)v2 setSerialNumber:0];
    [(MIBUDeviceInfoResponse *)v3 setEcid:0];
    [(MIBUDeviceInfoResponse *)v3 setBoardID:0];
    [(MIBUDeviceInfoResponse *)v3 setChipID:0];
    [(MIBUDeviceInfoResponse *)v3 setApNonce:0];
    [(MIBUDeviceInfoResponse *)v3 setSepNonce:0];
    [(MIBUDeviceInfoResponse *)v3 setSecurityDomain:0];
    [(MIBUDeviceInfoResponse *)v3 setProductionMode:0];
    [(MIBUDeviceInfoResponse *)v3 setSecurityMode:0];
    [(MIBUDeviceInfoResponse *)v3 setUidMode:0];
    [(MIBUDeviceInfoResponse *)v3 setSikaFuse:0];
    [(MIBUDeviceInfoResponse *)v3 setSikaFuseExists:1];
  }

  return v3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  if (![(MIBUNFCResponse *)self rejected])
  {
    serialNumber = [(MIBUDeviceInfoResponse *)self serialNumber];
    v33[0] = serialNumber;
    ecid = [(MIBUDeviceInfoResponse *)self ecid];
    v33[1] = ecid;
    boardID = [(MIBUDeviceInfoResponse *)self boardID];
    v33[2] = boardID;
    chipID = [(MIBUDeviceInfoResponse *)self chipID];
    v33[3] = chipID;
    securityDomain = [(MIBUDeviceInfoResponse *)self securityDomain];
    v33[4] = securityDomain;
    apNonce = [(MIBUDeviceInfoResponse *)self apNonce];
    if (apNonce)
    {
      apNonce2 = [(MIBUDeviceInfoResponse *)self apNonce];
    }

    else
    {
      apNonce2 = objc_opt_new();
    }

    v24 = apNonce2;
    v33[5] = apNonce2;
    sepNonce = [(MIBUDeviceInfoResponse *)self sepNonce];
    if (sepNonce)
    {
      sepNonce2 = [(MIBUDeviceInfoResponse *)self sepNonce];
    }

    else
    {
      sepNonce2 = objc_opt_new();
    }

    v6 = sepNonce2;
    v33[6] = sepNonce2;
    v7 = [NSNumber numberWithBool:[(MIBUDeviceInfoResponse *)self productionMode]];
    v33[7] = v7;
    v8 = [NSNumber numberWithBool:[(MIBUDeviceInfoResponse *)self securityMode]];
    v33[8] = v8;
    v9 = [NSNumber numberWithBool:[(MIBUDeviceInfoResponse *)self uidMode]];
    v33[9] = v9;
    sikaFuse = [(MIBUDeviceInfoResponse *)self sikaFuse];
    v33[10] = sikaFuse;
    v11 = [NSNumber numberWithBool:[(MIBUDeviceInfoResponse *)self sikaFuseExists]];
    v33[11] = v11;
    v12 = [NSArray arrayWithObjects:v33 count:12];
    v13 = [v3 serialize:&off_1000A9EC0 withValue:v12];

    if (v13)
    {
      error = [(MIBUNFCResponse *)self error];
      v15 = [v3 serializeResponseError:error];

      if (v15)
      {
        serializedData = [v3 serializedData];
        goto LABEL_11;
      }

      if (qword_1000B84A8[0] != -1)
      {
        dispatch_once(qword_1000B84A8, &stru_10009F0B8);
      }

      v20 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        v21 = v20;
        error2 = [(MIBUNFCResponse *)self error];
        *buf = 138543362;
        v32 = error2;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to serialize response error: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      if (qword_1000B84A8[0] != -1)
      {
        dispatch_once(qword_1000B84A8, &stru_10009F098);
      }

      v18 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        sub_100040548(&_mh_execute_header, v18, v19, "Failed to serialize serial number & nonce", buf);
      }
    }
  }

  serializedData = 0;
LABEL_11:

  return serializedData;
}

- (BOOL)_deserialize:(id)_deserialize
{
  _deserializeCopy = _deserialize;
  v9 = [[MIBUDeserializer alloc] initWithData:_deserializeCopy];

  deserialize = [(MIBUDeserializer *)v9 deserialize];
  v94 = v9;
  if (!deserialize)
  {
    if (qword_1000B84A8[0] != -1)
    {
      dispatch_once(qword_1000B84A8, &stru_10009F0D8);
    }

    v11 = qword_1000B84A0;
    if (!sub_10000C57C())
    {
      goto LABEL_37;
    }

    *buf = 0;
    v36 = "Failed to deserialize payload for DeviceInfo command";
    goto LABEL_82;
  }

  v100 = 0;
  v11 = [(MIBUDeserializer *)v9 deserializeResponseError:&v100];
  v12 = v100;
  v13 = v12;
  if ((v11 & 1) == 0)
  {
    if (qword_1000B84A8[0] != -1)
    {
      dispatch_once(qword_1000B84A8, &stru_10009F0F8);
    }

    v11 = qword_1000B84A0;
    if (sub_10000C57C())
    {
      sub_100040E5C(&_mh_execute_header, v37, v38, "Failed to deserialize response error", v39, v40, v41, v42, v83, v84, v87, v90, v93, v9, v95, v96, v97, v98, v99, v100, 0);
    }

    sub_100040E40();
    sub_100040E7C();
    v26 = 0;
    goto LABEL_44;
  }

  if (v12)
  {
    sub_100040E40();
    sub_100040E7C();
    v26 = 0;
    goto LABEL_22;
  }

  v14 = [deserialize objectForKey:&off_1000A90F0];
  if (!v14)
  {
    if (qword_1000B84A8[0] != -1)
    {
      dispatch_once(qword_1000B84A8, &stru_10009F118);
    }

    v11 = qword_1000B84A0;
    if (!sub_10000C57C())
    {
      goto LABEL_37;
    }

    *buf = 0;
    v36 = "Failed to deserialize serial number";
LABEL_82:
    sub_100040E5C(&_mh_execute_header, v30, v31, v36, v32, v33, v34, v35, v83, v84, v87, v90, v93, v9, v95, v96, v97, v98, v99, v100, buf[0]);
LABEL_37:
    sub_100040E40();
    sub_100040E7C();
    v26 = 0;
LABEL_43:
    v13 = 0;
LABEL_44:
    LOBYTE(v9) = 0;
    goto LABEL_23;
  }

  v13 = v14;
  v15 = [deserialize objectForKey:&off_1000A9108];
  if (!v15)
  {
    if (qword_1000B84A8[0] != -1)
    {
      dispatch_once(qword_1000B84A8, &stru_10009F138);
    }

    v26 = v13;
    v11 = qword_1000B84A0;
    if (sub_10000C57C())
    {
      sub_100040E5C(&_mh_execute_header, v43, v44, "Failed to deserialize ecid", v45, v46, v47, v48, v83, v84, v87, v90, v93, v9, v95, v96, v97, v98, v99, v100, 0);
    }

    sub_100040E40();
    sub_100040E7C();
    goto LABEL_43;
  }

  v16 = v15;
  v17 = [deserialize objectForKey:&off_1000A9120];
  if (!v17)
  {
    v91 = v16;
    if (qword_1000B84A8[0] != -1)
    {
      dispatch_once(qword_1000B84A8, &stru_10009F158);
    }

    v26 = v13;
    if (sub_10000C57C())
    {
      sub_100040E5C(&_mh_execute_header, v49, v50, "Failed to deserialize board ID", v51, v52, v53, v54, v83, v84, v87, v91, v93, v9, v95, v96, v97, v98, v99, v100, 0);
    }

    sub_100040E40();
    v4 = 0;
    v3 = 0;
    goto LABEL_65;
  }

  v18 = v17;
  v19 = [deserialize objectForKey:&off_1000A9138];
  if (!v19)
  {
    v91 = v16;
    v3 = v18;
    if (qword_1000B84A8[0] != -1)
    {
      dispatch_once(qword_1000B84A8, &stru_10009F178);
    }

    v26 = v13;
    if (sub_10000C57C())
    {
      sub_100040E5C(&_mh_execute_header, v55, v56, "Failed to deserialize chip ID", v57, v58, v59, v60, v83, v84, v87, v91, v93, v9, v95, v96, v97, v98, v99, v100, 0);
    }

    sub_100040E40();
    v4 = 0;
    goto LABEL_65;
  }

  v20 = v19;
  v21 = [deserialize objectForKey:&off_1000A9150];
  if (!v21)
  {
    v4 = v20;
    v91 = v16;
    v3 = v18;
    if (qword_1000B84A8[0] != -1)
    {
      dispatch_once(qword_1000B84A8, &stru_10009F198);
    }

    v26 = v13;
    if (sub_10000C57C())
    {
      sub_100040E5C(&_mh_execute_header, v61, v62, "Failed to deserialize security domain", v63, v64, v65, v66, v83, v84, v87, v91, v93, v9, v95, v96, v97, v98, v99, v100, 0);
    }

    sub_100040E40();
    goto LABEL_65;
  }

  v4 = v21;
  v22 = [deserialize objectForKey:&off_1000A9168];
  if (!v22)
  {
    sub_100040E98();
    v91 = v16;
    v3 = v18;
    if (qword_1000B84A8[0] != -1)
    {
      dispatch_once(qword_1000B84A8, &stru_10009F1B8);
    }

    v26 = v13;
    if (sub_10000C57C())
    {
      sub_100040E5C(&_mh_execute_header, v67, v68, "Failed to deserialize ap nonce", v69, v70, v71, v72, v83, v84, v87, v91, v93, v9, v95, v96, v97, v98, v99, v100, 0);
    }

    v95 = 0;
    v96 = 0;
    v98 = 0;
    v99 = 0;
    v97 = 0;
    v93 = 0;
    v5 = 0;
LABEL_65:
    sub_100040E8C();
    v11 = v91;
    goto LABEL_23;
  }

  v5 = v22;
  v6 = [deserialize objectForKey:&off_1000A9180];
  v23 = [deserialize objectForKey:&off_1000A9198];
  v93 = v6;
  if (v23)
  {
    v98 = v23;
    v24 = [deserialize objectForKey:&off_1000A91B0];
    if (v24)
    {
      v97 = v24;
      v25 = [deserialize objectForKey:&off_1000A91C8];
      if (v25)
      {
        v95 = v25;
        v96 = [deserialize objectForKey:&off_1000A91F8];
        if (v96)
        {
          v99 = [deserialize objectForKey:&off_1000A91E0];
          if (!v99)
          {
            sub_100040E98();
            v3 = v18;
            v88 = v5;
            v11 = v16;
            if (qword_1000B84A8[0] != -1)
            {
              dispatch_once(qword_1000B84A8, &stru_10009F238);
            }

            v26 = v13;
            v27 = qword_1000B84A0;
            if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              sub_100040548(&_mh_execute_header, v27, v28, "Failed to deserialize sikaFuse", buf);
            }

            v99 = 0;
            sub_100040E8C();
            v5 = v88;
            goto LABEL_23;
          }
        }

        else
        {
          v99 = 0;
        }

        [(MIBUDeviceInfoResponse *)self setSerialNumber:v13];
        [(MIBUDeviceInfoResponse *)self setEcid:v16];
        [(MIBUDeviceInfoResponse *)self setBoardID:v18];
        [(MIBUDeviceInfoResponse *)self setChipID:v20];
        [(MIBUDeviceInfoResponse *)self setSecurityDomain:v4];
        [(MIBUDeviceInfoResponse *)self setApNonce:v5];
        [(MIBUDeviceInfoResponse *)self setSepNonce:v6];
        [v98 BOOLValue];
        [sub_100014898() setProductionMode:?];
        [v97 BOOLValue];
        [sub_100014898() setSecurityMode:?];
        [v95 BOOLValue];
        [sub_100014898() setUidMode:?];
        [(MIBUDeviceInfoResponse *)self setSikaFuse:v99];
        [v96 BOOLValue];
        [sub_100014898() setSikaFuseExists:?];
        sub_100040E98();
        v3 = v18;
        v11 = v16;
        v26 = v13;
        v13 = 0;
LABEL_22:
        LOBYTE(v9) = 1;
        goto LABEL_23;
      }

      v86 = v20;
      v3 = v18;
      v6 = v4;
      v11 = v16;
      if (qword_1000B84A8[0] != -1)
      {
        dispatch_once(qword_1000B84A8, &stru_10009F218);
      }

      v26 = v13;
      v81 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        sub_100040548(&_mh_execute_header, v81, v82, "Failed to deserialize UID mode", buf);
      }

      v95 = 0;
      v96 = 0;
      v99 = 0;
      sub_100040E8C();
      v4 = v86;
    }

    else
    {
      v85 = v18;
      v6 = v4;
      v4 = v20;
      v11 = v16;
      if (qword_1000B84A8[0] != -1)
      {
        dispatch_once(qword_1000B84A8, &stru_10009F1F8);
      }

      v26 = v13;
      v79 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        sub_100040548(&_mh_execute_header, v79, v80, "Failed to deserialize security mode", buf);
      }

      v95 = 0;
      v96 = 0;
      v99 = 0;
      v97 = 0;
      sub_100040E8C();
      v3 = v85;
    }
  }

  else
  {
    v89 = v5;
    sub_100040E98();
    v92 = v16;
    v3 = v18;
    if (qword_1000B84A8[0] != -1)
    {
      dispatch_once(qword_1000B84A8, &stru_10009F1D8);
    }

    v26 = v13;
    if (sub_10000C57C())
    {
      sub_100040E5C(&_mh_execute_header, v73, v74, "Failed to deserialize production mode", v75, v76, v77, v78, v83, v84, v5, v92, v6, v9, v95, v96, v97, v98, v99, v100, 0);
    }

    v95 = 0;
    v96 = 0;
    v98 = 0;
    v99 = 0;
    v97 = 0;
    sub_100040E8C();
    v5 = v89;
    v11 = v92;
  }

LABEL_23:
  [(MIBUNFCResponse *)self setError:v13];

  return v9;
}

@end