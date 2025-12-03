@interface GKFairPlaySAPSession
- (BOOL)_getHardwareInfo:(FairPlayHWInfo_ *)info;
- (GKFairPlaySAPSession)init;
- (id)exchangeData:(id)data error:(id *)error;
- (id)processSignedData:(id)data withSignature:(id)signature error:(id *)error;
- (id)signatureForData:(id)data error:(id *)error;
- (id)signatureStringForData:(id)data error:(id *)error;
- (void)dealloc;
@end

@implementation GKFairPlaySAPSession

- (GKFairPlaySAPSession)init
{
  v8.receiver = self;
  v8.super_class = GKFairPlaySAPSession;
  v2 = [(GKFairPlaySAPSession *)&v8 init];
  v3 = v2;
  if (v2)
  {
    if (![(GKFairPlaySAPSession *)v2 _getHardwareInfo:&v2->_hardwareInfo])
    {
LABEL_8:

      return 0;
    }

    sub_10003A214(&v3->_session, &v3->_hardwareInfo);
    if (v4)
    {
      v5 = v4;
      if (!os_log_GKGeneral)
      {
        GKOSLoggers();
      }

      v6 = os_log_GKHTTP;
      if (os_log_type_enabled(os_log_GKHTTP, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v10 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "MESCAL:Could not create SAP session: %d", buf, 8u);
      }

      goto LABEL_8;
    }
  }

  return v3;
}

- (void)dealloc
{
  session = self->_session;
  if (session)
  {
    sub_10000C1F8(session);
  }

  v4.receiver = self;
  v4.super_class = GKFairPlaySAPSession;
  [(GKFairPlaySAPSession *)&v4 dealloc];
}

- (id)exchangeData:(id)data error:(id *)error
{
  session = self->_session;
  if (!session)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v15 = 0;
  v14 = 0;
  v13 = -1;
  sub_10003FFFC(200, &self->_hardwareInfo, session, [data bytes], objc_msgSend(data, "length"), &v15, &v14, &v13);
  if (v7)
  {
    v8 = v7;
    if (!os_log_GKGeneral)
    {
      GKOSLoggers();
    }

    v9 = os_log_GKHTTP;
    if (os_log_type_enabled(os_log_GKHTTP, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "MESCAL:Could not SAP exchange: %li", buf, 0xCu);
    }

    v10 = [NSError errorWithDomain:@"GKFairPlay" code:v8 userInfo:0];
LABEL_11:
    v11 = 0;
    if (!error)
    {
      return v11;
    }

    goto LABEL_12;
  }

  v11 = sub_10015CFC0(v15, v14);
  v10 = 0;
  self->_complete = v13 == 0;
  if (!error)
  {
    return v11;
  }

LABEL_12:
  if (!v11)
  {
    *error = v10;
  }

  return v11;
}

- (id)processSignedData:(id)data withSignature:(id)signature error:(id *)error
{
  if (self->_session)
  {
    v7 = [data mutableCopy];
    [signature bytes];
    [signature length];
    [v7 mutableBytes];
    [v7 length];
    sub_100034ADC();
    v9 = v8;
    if (!os_log_GKGeneral)
    {
      GKOSLoggers();
    }

    v10 = os_log_GKHTTP;
    if (os_log_type_enabled(os_log_GKHTTP, OS_LOG_TYPE_INFO))
    {
      v15 = 138412546;
      v16 = objc_opt_class();
      v17 = 2048;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "SIGNATURE VERIF1:%@: processed signature of SAP response: %li", &v15, 0x16u);
    }

    if (!v9)
    {
      v11 = 0;
      if (!error)
      {
        return v7;
      }

      goto LABEL_16;
    }

    v11 = [NSError errorWithDomain:@"GKFairPlay" code:v9 userInfo:0];
    if (!os_log_GKGeneral)
    {
      GKOSLoggers();
    }

    v12 = os_log_GKHTTP;
    if (os_log_type_enabled(os_log_GKHTTP, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v15 = 138412546;
      v16 = v13;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "SIGNATURE VERIF2:%@: Could not process SAP response: %@", &v15, 0x16u);
    }
  }

  else
  {
    v11 = 0;
  }

  v7 = 0;
  if (!error)
  {
    return v7;
  }

LABEL_16:
  if (!v7)
  {
    *error = v11;
  }

  return v7;
}

- (id)signatureForData:(id)data error:(id *)error
{
  session = self->_session;
  if (!session)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v13 = 0;
  v12 = 0;
  sub_1000363B8(session, [data bytes], objc_msgSend(data, "length"), &v13, &v12);
  if (v6)
  {
    v7 = v6;
    if (!os_log_GKGeneral)
    {
      GKOSLoggers();
    }

    v8 = os_log_GKHTTP;
    if (os_log_type_enabled(os_log_GKHTTP, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Could not SAP sign: %li", buf, 0xCu);
    }

    v9 = [NSError errorWithDomain:@"GKFairPlay" code:v7 userInfo:0];
LABEL_11:
    v10 = 0;
    if (!error)
    {
      return v10;
    }

    goto LABEL_12;
  }

  v10 = sub_10015CFC0(v13, v12);
  v9 = 0;
  if (!error)
  {
    return v10;
  }

LABEL_12:
  if (!v10)
  {
    *error = v9;
  }

  return v10;
}

- (id)signatureStringForData:(id)data error:(id *)error
{
  v7 = 0;
  v5 = [(GKFairPlaySAPSession *)self signatureForData:data error:&v7];
  result = [v5 length];
  if (result)
  {
    result = [v5 base64EncodedStringWithOptions:0];
  }

  if (error)
  {
    if (!result)
    {
      *error = v7;
    }
  }

  return result;
}

- (BOOL)_getHardwareInfo:(FairPlayHWInfo_ *)info
{
  sub_10004FA2C(0, 0, info);
  v4 = v3;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      GKOSLoggers();
    }

    v5 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100293078(v5);
    }
  }

  return v4 == 0;
}

@end