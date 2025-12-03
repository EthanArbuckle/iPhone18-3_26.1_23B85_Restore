@interface MIBUStatusResponse
- (BOOL)_deserialize:(id)_deserialize;
- (BOOL)_serializeBatteryDetailsWithSerializer:(id)serializer;
- (BOOL)_serializeDict:(id)dict fromKeyToTagMapping:(id)mapping withSerializer:(id)serializer;
- (BOOL)_serializeOperationDetailsWithSerializer:(id)serializer;
- (BOOL)_serializeThermalDetailsWithSerializer:(id)serializer;
- (MIBUStatusResponse)init;
- (id)_deserializeBatteryDetailsFromDict:(id)dict;
- (id)_deserializeFromTagDict:(id)dict withKeyToTagMapping:(id)mapping;
- (id)_deserializeOperationDetailsFromDict:(id)dict;
- (id)_deserializeThermalDetailsFromDict:(id)dict;
- (id)_reverseDict:(id)dict;
- (id)serialize;
@end

@implementation MIBUStatusResponse

- (MIBUStatusResponse)init
{
  v5.receiver = self;
  v5.super_class = MIBUStatusResponse;
  v2 = [(MIBUNFCResponse *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MIBUStatusResponse *)v2 setSerialNumber:0];
    [(MIBUStatusResponse *)v3 setOsVersion:0];
    [(MIBUStatusResponse *)v3 setBuildVersion:0];
    [(MIBUStatusResponse *)v3 setStatus:0];
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
      sub_100066978();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_10006698C();
    }

    v27 = 0;
    v12 = 0;
    v15 = 0;
    v14 = 0;
    v38 = 0;
    v39 = 0;
    goto LABEL_24;
  }

  v41 = 0;
  v7 = [(MIBUDeserializer *)v5 deserializeResponseError:&v41];
  v38 = v41;
  if ((v7 & 1) == 0)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100066750();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100066778();
    }

    goto LABEL_23;
  }

  v8 = [deserialize objectForKey:&off_1000A92E8];
  if (!v8)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10006691C();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100066944();
    }

LABEL_23:
    v27 = 0;
    v12 = 0;
    v15 = 0;
    v14 = 0;
    v39 = 0;
LABEL_24:
    v11 = 0;
    v9 = 0;
LABEL_30:
    v34 = 0;
    goto LABEL_9;
  }

  v9 = v8;
  v10 = [deserialize objectForKey:&off_1000A9348];
  if (!v10)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_1000668C0();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_1000668E8();
    }

    v27 = 0;
    v12 = 0;
    v15 = 0;
    v14 = 0;
    v39 = 0;
    v11 = 0;
    goto LABEL_30;
  }

  v11 = v10;
  v12 = [deserialize objectForKey:&off_1000A9300];
  v13 = [deserialize objectForKey:&off_1000A9318];
  if (v13)
  {
    v14 = v13;
    v15 = [deserialize objectForKey:&off_1000A9330];
    v16 = [deserialize objectForKey:&off_1000A9360];
    if (v16)
    {
      v37 = v16;
      v40 = 0;
      v17 = [(MIBUDeserializer *)v5 deserializeOperationError:&v40];
      v18 = v40;
      v39 = v18;
      if (v17)
      {
        v19 = v18;
        v20 = objc_alloc_init(MIBUDeviceStatus);
        [(MIBUStatusResponse *)self setStatus:v20];

        [(MIBUStatusResponse *)self setSerialNumber:v12];
        [(MIBUStatusResponse *)self setOsVersion:v14];
        [(MIBUStatusResponse *)self setBuildVersion:v15];
        shortValue = [v9 shortValue];
        [(MIBUStatusResponse *)self status];
        v22 = v36 = v12;
        [v22 setState:shortValue];

        shortValue2 = [v11 shortValue];
        status = [(MIBUStatusResponse *)self status];
        [status setOperation:shortValue2];

        status2 = [(MIBUStatusResponse *)self status];
        [status2 setOperationError:v19];

        status3 = [(MIBUStatusResponse *)self status];
        v27 = v37;
        [status3 setBatteryLevel:v37];

        v28 = [(MIBUStatusResponse *)self _deserializeThermalDetailsFromDict:deserialize];
        status4 = [(MIBUStatusResponse *)self status];
        [status4 setThermalDetails:v28];

        v30 = [(MIBUStatusResponse *)self _deserializeBatteryDetailsFromDict:deserialize];
        status5 = [(MIBUStatusResponse *)self status];
        [status5 setBatteryDetails:v30];

        v32 = [(MIBUStatusResponse *)self _deserializeOperationDetailsFromDict:deserialize];
        status6 = [(MIBUStatusResponse *)self status];
        [status6 setOperationDetails:v32];

        v12 = v36;
        v34 = 1;
      }

      else
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_1000667AC();
        }

        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
        {
          sub_1000667D4();
        }

        v34 = 0;
        v27 = v37;
      }
    }

    else
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_100066808();
      }

      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        sub_100066830();
      }

      v27 = 0;
      v39 = 0;
      v34 = 0;
    }
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100066864();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_10006688C();
    }

    v27 = 0;
    v15 = 0;
    v39 = 0;
    v34 = 0;
    v14 = 0;
  }

LABEL_9:
  [(MIBUNFCResponse *)self setError:v38];

  return v34;
}

- (id)_reverseDict:(id)dict
{
  dictCopy = dict;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = dictCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v5 objectForKey:{v10, v13}];
        [v4 setObject:v10 forKey:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)_serializeDict:(id)dict fromKeyToTagMapping:(id)mapping withSerializer:(id)serializer
{
  dictCopy = dict;
  mappingCopy = mapping;
  serializerCopy = serializer;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = dictCopy;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        v15 = [v9 objectForKey:v14];
        v16 = [mappingCopy objectForKey:v14];
        v17 = v16;
        if (v16)
        {
          v29 = v16;
          v18 = [NSArray arrayWithObjects:&v29 count:1];
          v28 = v15;
          v19 = [NSArray arrayWithObjects:&v28 count:1];
          v20 = [serializerCopy serialize:v18 withValue:v19];

          if ((v20 & 1) == 0)
          {

            v21 = 0;
            goto LABEL_11;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v21 = 1;
LABEL_11:

  return v21;
}

- (id)_deserializeFromTagDict:(id)dict withKeyToTagMapping:(id)mapping
{
  dictCopy = dict;
  mappingCopy = mapping;
  v8 = objc_opt_new();
  v9 = [(MIBUStatusResponse *)self _reverseDict:mappingCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [dictCopy objectForKey:v14];
        if (v15)
        {
          v16 = [v9 objectForKey:v14];
          [v8 setObject:v15 forKey:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  return v8;
}

- (BOOL)_serializeOperationDetailsWithSerializer:(id)serializer
{
  serializerCopy = serializer;
  status = [(MIBUStatusResponse *)self status];
  operationDetails = [status operationDetails];
  v9[0] = @"Progress";
  v9[1] = @"TimeRemaining";
  v10[0] = &off_1000A9378;
  v10[1] = &off_1000A9390;
  v9[2] = @"TargetOSVersion";
  v9[3] = @"TargetBuildVersion";
  v10[2] = &off_1000A93A8;
  v10[3] = &off_1000A93C0;
  v9[4] = @"SoftwareUpdatePhase";
  v9[5] = @"TargetSUBundleSize";
  v10[4] = &off_1000A93D8;
  v10[5] = &off_1000A93F0;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:6];
  LOBYTE(self) = [(MIBUStatusResponse *)self _serializeDict:operationDetails fromKeyToTagMapping:v7 withSerializer:serializerCopy];

  return self;
}

- (id)_deserializeOperationDetailsFromDict:(id)dict
{
  v8[0] = @"Progress";
  v8[1] = @"TimeRemaining";
  v9[0] = &off_1000A9378;
  v9[1] = &off_1000A9390;
  v8[2] = @"TargetOSVersion";
  v8[3] = @"TargetBuildVersion";
  v9[2] = &off_1000A93A8;
  v9[3] = &off_1000A93C0;
  v8[4] = @"SoftwareUpdatePhase";
  v8[5] = @"TargetSUBundleSize";
  v9[4] = &off_1000A93D8;
  v9[5] = &off_1000A93F0;
  dictCopy = dict;
  v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:6];
  v6 = [(MIBUStatusResponse *)self _deserializeFromTagDict:dictCopy withKeyToTagMapping:v5];

  return v6;
}

- (BOOL)_serializeThermalDetailsWithSerializer:(id)serializer
{
  serializerCopy = serializer;
  status = [(MIBUStatusResponse *)self status];
  thermalDetails = [status thermalDetails];
  v9[0] = @"TSRM/TVRM";
  v9[1] = @"TSRR/TVRR";
  v10[0] = &off_1000A9408;
  v10[1] = &off_1000A9420;
  v9[2] = @"TVRQ";
  v9[3] = @"TSBE/TVBE";
  v10[2] = &off_1000A9438;
  v10[3] = &off_1000A9450;
  v9[4] = @"TSBQ/TVBQ";
  v9[5] = @"TSBR/TVBR";
  v10[4] = &off_1000A9468;
  v10[5] = &off_1000A9480;
  v9[6] = @"TSLR/TVRH";
  v9[7] = @"TG0V";
  v10[6] = &off_1000A9498;
  v10[7] = &off_1000A94B0;
  v9[8] = @"ThermalPressure";
  v10[8] = &off_1000A94C8;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:9];
  LOBYTE(self) = [(MIBUStatusResponse *)self _serializeDict:thermalDetails fromKeyToTagMapping:v7 withSerializer:serializerCopy];

  return self;
}

- (id)_deserializeThermalDetailsFromDict:(id)dict
{
  dictCopy = dict;
  v5 = objc_opt_new();
  v26[0] = @"TSRM/TVRM";
  v26[1] = @"TSRR/TVRR";
  v27[0] = &off_1000A9408;
  v27[1] = &off_1000A9420;
  v26[2] = @"TVRQ";
  v26[3] = @"TSBE/TVBE";
  v27[2] = &off_1000A9438;
  v27[3] = &off_1000A9450;
  v26[4] = @"TSBQ/TVBQ";
  v26[5] = @"TSBR/TVBR";
  v27[4] = &off_1000A9468;
  v27[5] = &off_1000A9480;
  v26[6] = @"TSLR/TVRH";
  v26[7] = @"TG0V";
  v27[6] = &off_1000A9498;
  v27[7] = &off_1000A94B0;
  v26[8] = @"ThermalPressure";
  v27[8] = &off_1000A94C8;
  v6 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:9];
  v7 = [(MIBUStatusResponse *)self _deserializeFromTagDict:dictCopy withKeyToTagMapping:v6];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v8 objectForKey:v13];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = 0;
          v15 = v14;
          if ([v13 isEqualToString:@"TG0V"])
          {
            v19 = 0;
            [v15 getBytes:&v19 length:8];
            v16 = v19 * 0.0000152587891;
            *&v16 = v16;
            v20 = LODWORD(v16);
          }

          else
          {
            [v15 getBytes:&v20 length:4];
            LODWORD(v16) = v20;
          }

          v17 = [NSNumber numberWithFloat:v16];
          [v5 setObject:v17 forKey:v13];
        }

        else
        {
          [v5 setObject:v14 forKey:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  return v5;
}

- (BOOL)_serializeBatteryDetailsWithSerializer:(id)serializer
{
  serializerCopy = serializer;
  status = [(MIBUStatusResponse *)self status];
  batteryDetails = [status batteryDetails];
  v9[0] = @"WARP";
  v9[1] = @"WAVR";
  v10[0] = &off_1000A94E0;
  v10[1] = &off_1000A94F8;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  LOBYTE(self) = [(MIBUStatusResponse *)self _serializeDict:batteryDetails fromKeyToTagMapping:v7 withSerializer:serializerCopy];

  return self;
}

- (id)_deserializeBatteryDetailsFromDict:(id)dict
{
  dictCopy = dict;
  v5 = objc_opt_new();
  v24[0] = @"WARP";
  v24[1] = @"WAVR";
  v25[0] = &off_1000A94E0;
  v25[1] = &off_1000A94F8;
  v6 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
  v17 = dictCopy;
  v7 = [(MIBUStatusResponse *)self _deserializeFromTagDict:dictCopy withKeyToTagMapping:v6];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v8 objectForKey:v13];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = 0;
          [v14 getBytes:&v18 length:2];
          v15 = [NSNumber numberWithShort:v18];
          [v5 setObject:v15 forKey:v13];
        }

        else
        {
          [v5 setObject:v14 forKey:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  return v5;
}

- (id)serialize
{
  v3 = objc_opt_new();
  status = [(MIBUStatusResponse *)self status];

  if (status && ![(MIBUNFCResponse *)self rejected])
  {
    status2 = [(MIBUStatusResponse *)self status];
    v42 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [status2 state]);
    v46[0] = v42;
    serialNumber = [(MIBUStatusResponse *)self serialNumber];
    v46[1] = serialNumber;
    osVersion = [(MIBUStatusResponse *)self osVersion];
    v46[2] = osVersion;
    buildVersion = [(MIBUStatusResponse *)self buildVersion];
    v46[3] = buildVersion;
    status3 = [(MIBUStatusResponse *)self status];
    v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [status3 operation]);
    v46[4] = v8;
    status4 = [(MIBUStatusResponse *)self status];
    batteryLevel = [status4 batteryLevel];
    v46[5] = batteryLevel;
    v11 = [NSArray arrayWithObjects:v46 count:6];
    v12 = [v3 serialize:&off_1000A9F50 withValue:v11];

    if (v12)
    {
      error = [(MIBUNFCResponse *)self error];
      v14 = [v3 serializeResponseError:error];

      if (v14)
      {
        status5 = [(MIBUStatusResponse *)self status];
        operationError = [status5 operationError];
        v17 = [v3 serializeOperationError:operationError];

        if (v17)
        {
          if ([(MIBUStatusResponse *)self _serializeOperationDetailsWithSerializer:v3]&& [(MIBUStatusResponse *)self _serializeThermalDetailsWithSerializer:v3]&& [(MIBUStatusResponse *)self _serializeBatteryDetailsWithSerializer:v3])
          {
            serializedData = [v3 serializedData];
            goto LABEL_10;
          }
        }

        else
        {
          if (qword_1000B84A8[0] != -1)
          {
            dispatch_once(qword_1000B84A8, &stru_10009F5E0);
          }

          v30 = qword_1000B84A0;
          if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
          {
            v31 = v30;
            status6 = [(MIBUStatusResponse *)self status];
            operationError2 = [status6 operationError];
            HIDWORD(v45) = HIDWORD(operationError2);
            sub_1000459C4(&_mh_execute_header, v34, v35, "Failed to serialize operation error: %{public}@", v36, v37, v38, v39, v40, serialNumber, v42, status2, 2u);
          }
        }
      }

      else
      {
        if (qword_1000B84A8[0] != -1)
        {
          dispatch_once(qword_1000B84A8, &stru_10009F5C0);
        }

        v21 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
        {
          v22 = v21;
          error2 = [(MIBUNFCResponse *)self error];
          HIDWORD(v45) = HIDWORD(error2);
          sub_1000459C4(&_mh_execute_header, v24, v25, "Failed to serialize response error: %{public}@", v26, v27, v28, v29, v40, serialNumber, v42, status2, 2u);
        }
      }
    }

    else
    {
      if (qword_1000B84A8[0] != -1)
      {
        dispatch_once(qword_1000B84A8, &stru_10009F5A0);
      }

      v20 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to serialize device status, serial number, and nonce", buf, 2u);
      }
    }
  }

  serializedData = 0;
LABEL_10:

  return serializedData;
}

@end