@interface MSDEnrollRequest
- (BOOL)isValid;
- (id)getPostData;
- (id)parseResponseForError:(id)error andPayload:(id)payload;
@end

@implementation MSDEnrollRequest

- (BOOL)isValid
{
  v6.receiver = self;
  v6.super_class = MSDEnrollRequest;
  if ([(MSDCommandServerRequest *)&v6 isValid])
  {
    registrationInfo = [(MSDEnrollRequest *)self registrationInfo];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)getPostData
{
  if ([(MSDEnrollRequest *)self isValid])
  {
    registrationInfo = [(MSDEnrollRequest *)self registrationInfo];
    v4 = [registrationInfo mutableCopy];

    v5 = +[NSTimeZone defaultTimeZone];
    name = [v5 name];
    [v4 setObject:name forKey:@"MSDTimeZone"];

    deviceName = [(MSDEnrollRequest *)self deviceName];

    if (deviceName)
    {
      deviceName2 = [(MSDEnrollRequest *)self deviceName];
      [v4 setObject:deviceName2 forKey:@"DeviceName"];
    }

    pairingCredentials = [(MSDEnrollRequest *)self pairingCredentials];

    if (pairingCredentials)
    {
      pairingCredentials2 = [(MSDEnrollRequest *)self pairingCredentials];
      [v4 setObject:pairingCredentials2 forKey:@"PairingCredential"];
    }

    v11 = sub_100063A54();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E58C0(v4, v11);
    }

    convertToNSData = [v4 convertToNSData];
  }

  else
  {
    convertToNSData = 0;
  }

  return convertToNSData;
}

- (id)parseResponseForError:(id)error andPayload:(id)payload
{
  errorCopy = error;
  payloadCopy = payload;
  v25.receiver = self;
  v25.super_class = MSDEnrollRequest;
  v8 = [(MSDServerRequest *)&v25 parseResponseForError:errorCopy andPayload:payloadCopy];
  error = [v8 error];

  if (error)
  {
    v10 = 0;
    v12 = 0;
    goto LABEL_27;
  }

  v24 = errorCopy;
  v10 = [(MSDCommandServerRequest *)self getDataDictFromPayload:payloadCopy error:&v24];
  v11 = v24;

  if (!v10)
  {
    v12 = 0;
LABEL_26:
    errorCopy = v11;
LABEL_27:
    error2 = [v8 error];

    if (error2)
    {
      v11 = errorCopy;
    }

    else
    {
      v22 = errorCopy;
      sub_1000C1390(&v22, 3727744512, @"Unexpected server response.");
      v11 = v22;

      [v8 setError:v11];
    }

    goto LABEL_14;
  }

  v12 = [v10 objectForKey:@"Credential"];
  if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v17 = sub_100063A54();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5938(self);
    }

    v18 = [v10 objectForKey:@"Error"];
    if (v18)
    {
      v19 = sub_100063A54();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000E59C8(self);
      }

      v23 = v11;
      sub_1000C1390(&v23, 3727744512, v18);
      v20 = v23;

      v11 = v20;
    }

    goto LABEL_26;
  }

  [v8 setCredential:v12];
  v13 = [v10 objectForKey:@"Settings"];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 setSettingsDict:v13];
    }
  }

  v14 = [payloadCopy objectForKey:@"protocolVersion"];
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 setHubProtocolVersion:v14];
    }
  }

  v15 = sub_100063A54();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Enroll succeeded with response: %{public}@", buf, 0xCu);
  }

LABEL_14:

  return v8;
}

@end