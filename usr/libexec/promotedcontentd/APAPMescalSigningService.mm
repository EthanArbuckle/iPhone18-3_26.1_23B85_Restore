@interface APAPMescalSigningService
- (APAPMescalSigningService)initWithInterval:(unint64_t)interval;
- (APMescalSigningStateChangedDelegate)delegate;
- (BOOL)initializeFairPlay;
- (BOOL)signatureIsValid:(id)valid data:(id)data error:(id *)error;
- (id)rawSignatureForData:(id)data error:(id *)error;
- (void)certificateRetrievalDidFinish:(id)finish error:(id)error;
- (void)dealloc;
- (void)fairPlaySAPExchange:(id)exchange certificateIsCached:(BOOL)cached;
- (void)requestCertificate;
- (void)setHwInfo:(FairPlayHWInfo_ *)info;
- (void)setState:(int64_t)state;
- (void)setupNegotiationStepDidFinish:(id)finish certificateIsCached:(BOOL)cached error:(id)error;
- (void)setupRequestSigningWithCachedCertificate:(BOOL)certificate;
@end

@implementation APAPMescalSigningService

- (APAPMescalSigningService)initWithInterval:(unint64_t)interval
{
  v9.receiver = self;
  v9.super_class = APAPMescalSigningService;
  v4 = [(APAPMescalSigningService *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_intervalId = interval;
    v4->_version = 200;
    v6 = +[APMescalSigningSettings settings];
    mescalSigningSettings = v5->_mescalSigningSettings;
    v5->_mescalSigningSettings = v6;
  }

  return v5;
}

- (void)setState:(int64_t)state
{
  delegate = [(APAPMescalSigningService *)self delegate];

  if (delegate)
  {
    WeakRetained = objc_loadWeakRetained(&self->delegate);
    [WeakRetained mescalStateChanged:state];
  }
}

- (BOOL)signatureIsValid:(id)valid data:(id)data error:(id *)error
{
  validCopy = valid;
  dataCopy = data;
  v10 = [[NSData alloc] initWithBase64EncodedString:validCopy options:0];
  if (!v10)
  {
    if (error)
    {
      v30 = @"reason";
      v31 = @"Unable to decode signature string.";
      v20 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      *error = [NSError errorWithDomain:@"com.apple.ap.MescalSigning" code:1102 userInfo:v20];
    }

    v15 = APLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136643075;
      v23 = "[APAPMescalSigningService signatureIsValid:data:error:]";
      v24 = 2117;
      *v25 = validCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: Unable to decode signature string %{sensitive}@; cannot verify signature.", buf, 0x16u);
    }

    goto LABEL_12;
  }

  v11 = [dataCopy mutableCopy];
  [(APAPMescalSigningService *)self session];
  [v10 bytes];
  [v10 length];
  [v11 mutableBytes];
  [v11 length];
  sub_100023BAC();
  v13 = v12;

  v14 = v13 == 0;
  if (v13)
  {
    v15 = [v10 base64EncodedStringWithOptions:32];
    if (error)
    {
      v28 = @"reason";
      v16 = [NSString stringWithFormat:@"Signature validation failed with error %d.", v13];
      v29 = v16;
      [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v18 = v17 = dataCopy;
      *error = [NSError errorWithDomain:@"com.apple.ap.MescalSigning" code:1103 userInfo:v18];

      dataCopy = v17;
    }

    v19 = APLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136643587;
      v23 = "[APAPMescalSigningService signatureIsValid:data:error:]";
      v24 = 1024;
      *v25 = v13;
      *&v25[4] = 2117;
      *&v25[6] = validCopy;
      v26 = 2117;
      v27 = v15;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: Signature validation failed with error %d\nBase64-encoded signature: %{sensitive}@\nBase64-encoded body: %{sensitive}@", buf, 0x26u);
    }

LABEL_12:
    v14 = 0;
  }

  return v14;
}

- (id)rawSignatureForData:(id)data error:(id *)error
{
  v18 = 0;
  v17 = 0;
  dataCopy = data;
  session = [(APAPMescalSigningService *)self session];
  bytes = [dataCopy bytes];
  v9 = [dataCopy length];

  sub_10007071C(session, bytes, v9, &v18, &v17);
  if (v10)
  {
    v11 = v10;
    if (v18)
    {
      sub_100031C50(v18);
    }

    if (error)
    {
      v23 = @"reason";
      v12 = [NSString stringWithFormat:@"failed with error code %d.", v11];
      v24 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      *error = [NSError errorWithDomain:@"com.apple.ap.MescalSigning" code:1104 userInfo:v13];
    }

    v14 = APLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136643075;
      v20 = "[APAPMescalSigningService rawSignatureForData:error:]";
      v21 = 1024;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: FairPlaySAPSign failed with error code %d. Unable to generate signature - disabling request signing.", buf, 0x12u);
    }

    [(APAPMescalSigningService *)self setState:3];
    v15 = 0;
  }

  else
  {
    v15 = [NSData dataWithBytes:v18 length:v17];
    sub_100031C50(v18);
  }

  return v15;
}

- (BOOL)initializeFairPlay
{
  if ([(APAPMescalSigningService *)self session])
  {
    sub_100045EB0([(APAPMescalSigningService *)self session]);
    [(APAPMescalSigningService *)self setSession:0];
  }

  sub_10002B570(0, 0, &self->_hwInfo);
  if (v3)
  {
    v4 = v3;
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = 136643075;
      v12 = "[APAPMescalSigningService initializeFairPlay]";
      v13 = 1026;
      v14 = v4;
      v6 = "[%{sensitive}s]: FairPlayGetHWInfo returned %{public}d";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, v6, &v11, 0x12u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  sub_1001BE8C0(&self->_session, &self->_hwInfo);
  v8 = v7;
  v9 = APLogForCategory();
  v5 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136643075;
      v12 = "[APAPMescalSigningService initializeFairPlay]";
      v13 = 1026;
      v14 = v8;
      v6 = "[%{sensitive}s]: FairPlaySAPInit returned %{public}d";
      goto LABEL_9;
    }

LABEL_10:

    [(APAPMescalSigningService *)self setState:3];
    return 0;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136642819;
    v12 = "[APAPMescalSigningService initializeFairPlay]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{sensitive}s]: Fairplay initialized successfully.", &v11, 0xCu);
  }

  return 1;
}

- (void)dealloc
{
  if ([(APAPMescalSigningService *)self session])
  {
    sub_100045EB0([(APAPMescalSigningService *)self session]);
  }

  v3.receiver = self;
  v3.super_class = APAPMescalSigningService;
  [(APAPMescalSigningService *)&v3 dealloc];
}

- (void)setupRequestSigningWithCachedCertificate:(BOOL)certificate
{
  certificateCopy = certificate;
  v5 = APPerfLogForCategory();
  intervalId = [(APAPMescalSigningService *)self intervalId];
  if (intervalId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = intervalId;
    if (os_signpost_enabled(v5))
    {
      LOWORD(v18) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Initialize Fairplay", "", &v18, 2u);
    }
  }

  if ([(APAPMescalSigningService *)self initializeFairPlay])
  {
    v8 = APPerfLogForCategory();
    intervalId2 = [(APAPMescalSigningService *)self intervalId];
    if (intervalId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = intervalId2;
      if (os_signpost_enabled(v8))
      {
        LOWORD(v18) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v10, "Initialize Fairplay", "", &v18, 2u);
      }
    }

    if (!certificateCopy)
    {
      [(APAPMescalSigningService *)self requestCertificate];
      return;
    }

    mescalSigningSettings = [(APAPMescalSigningService *)self mescalSigningSettings];
    cachedCertificate = [mescalSigningSettings cachedCertificate];

    v13 = APLogForCategory();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (cachedCertificate)
    {
      if (v14)
      {
        LOWORD(v18) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Beginning Mescal negotiation with a cached certificate.", &v18, 2u);
      }

      [(APAPMescalSigningService *)self fairPlaySAPExchange:cachedCertificate certificateIsCached:1];
    }

    else
    {
      if (v14)
      {
        v18 = 136642819;
        v19 = "[APAPMescalSigningService setupRequestSigningWithCachedCertificate:]";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{sensitive}s]: No cached Mescal certificate available.", &v18, 0xCu);
      }

      [(APAPMescalSigningService *)self requestCertificate];
    }
  }

  else
  {
    v15 = APLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = 136642819;
      v19 = "[APAPMescalSigningService setupRequestSigningWithCachedCertificate:]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: Fairplay initialization failed.", &v18, 0xCu);
    }

    cachedCertificate = APPerfLogForCategory();
    intervalId3 = [(APAPMescalSigningService *)self intervalId];
    if (intervalId3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = intervalId3;
      if (os_signpost_enabled(cachedCertificate))
      {
        LOWORD(v18) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, cachedCertificate, OS_SIGNPOST_INTERVAL_END, v17, "Initialize Fairplay", "", &v18, 2u);
      }
    }
  }
}

- (void)requestCertificate
{
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136642819;
    v9 = "[APAPMescalSigningService requestCertificate]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{sensitive}s]: Requesting Mescal certificate from AdServer", buf, 0xCu);
  }

  v4 = APPerfLogForCategory();
  intervalId = [(APAPMescalSigningService *)self intervalId];
  if (intervalId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = intervalId;
    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Request Certificate", "", buf, 2u);
    }
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100321EBC;
  v7[3] = &unk_10047E1F0;
  v7[4] = self;
  [APMescalSigningLegacyInterface requestCertificateWithCompletion:v7];
}

- (void)fairPlaySAPExchange:(id)exchange certificateIsCached:(BOOL)cached
{
  cachedCopy = cached;
  exchangeCopy = exchange;
  v7 = APPerfLogForCategory();
  intervalId = [(APAPMescalSigningService *)self intervalId];
  if (intervalId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = intervalId;
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SAP Exchange", "", buf, 2u);
    }
  }

  v40 = 0;
  v39 = 0;
  v38 = -1;
  v10 = +[NSDate date];
  [v10 timeIntervalSince1970];
  v12 = v11;

  version = [(APAPMescalSigningService *)self version];
  session = [(APAPMescalSigningService *)self session];
  bytes = [exchangeCopy bytes];
  v16 = [exchangeCopy length];

  sub_100064DF0(version, &self->_hwInfo, session, bytes, v16, &v40, &v39, &v38);
  v18 = v17;
  v19 = +[NSDate date];
  [v19 timeIntervalSince1970];
  v21 = v20;

  v22 = APPerfLogForCategory();
  intervalId2 = [(APAPMescalSigningService *)self intervalId];
  if (intervalId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v24 = intervalId2;
    if (os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, v24, "SAP Exchange", "", buf, 2u);
    }
  }

  v25 = APLogForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136643075;
    v42 = "[APAPMescalSigningService fairPlaySAPExchange:certificateIsCached:]";
    v43 = 2048;
    v44 = v21 - v12;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%{sensitive}s]: FairPlaySAPExchange took %.2f seconds", buf, 0x16u);
  }

  if (v38 == 1)
  {
    v26 = [NSData alloc];
    v27 = [v26 initWithBytes:v40 length:v39];
  }

  else
  {
    v27 = 0;
  }

  sub_100031C50(v40);
  if (!v38)
  {
    selfCopy2 = self;
    v34 = 2;
LABEL_28:
    [(APAPMescalSigningService *)selfCopy2 setState:v34];
    goto LABEL_29;
  }

  if (v38 != 255)
  {
    if (v38 == 1)
    {
      v28 = APPerfLogForCategory();
      intervalId3 = [(APAPMescalSigningService *)self intervalId];
      if (intervalId3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v30 = intervalId3;
        if (os_signpost_enabled(v28))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_BEGIN, v30, "SAP Negotiating", "", buf, 2u);
        }
      }

      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_10032243C;
      v36[3] = &unk_10047E218;
      v36[4] = self;
      v37 = cachedCopy;
      [APMescalSigningLegacyInterface requestMescalSetupForData:v27 completionHandler:v36];
    }

    else
    {
      v35 = [NSString stringWithFormat:@"FairPlaySAPExchange returned unexpected code: %d.", v38];
      APSimulateCrash();
    }

    goto LABEL_29;
  }

  v31 = APLogForCategory();
  v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
  if (!cachedCopy)
  {
    if (v32)
    {
      *buf = 136643075;
      v42 = "[APAPMescalSigningService fairPlaySAPExchange:certificateIsCached:]";
      v43 = 1026;
      LODWORD(v44) = v18;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: Negotiation using a fresh certificate failed with error %{public}d; request signing will be disabled.", buf, 0x12u);
    }

    selfCopy2 = self;
    v34 = 3;
    goto LABEL_28;
  }

  if (v32)
  {
    *buf = 136643075;
    v42 = "[APAPMescalSigningService fairPlaySAPExchange:certificateIsCached:]";
    v43 = 1026;
    LODWORD(v44) = v18;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: Negotiation using cached certificate failed with error %{public}d; requesting a fresh certificate and trying again.", buf, 0x12u);
  }

  [(APAPMescalSigningService *)self requestCertificate];
LABEL_29:
}

- (void)certificateRetrievalDidFinish:(id)finish error:(id)error
{
  finishCopy = finish;
  errorCopy = error;
  if (errorCopy)
  {
    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      code = [errorCopy code];
      localizedDescription = [errorCopy localizedDescription];
      v16 = 136643331;
      v17 = "[APAPMescalSigningService certificateRetrievalDidFinish:error:]";
      v18 = 2048;
      v19 = code;
      v20 = 2114;
      v21 = localizedDescription;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: Error %ld retrieving Mescal certificate from AdServer - %{public}@. Requests will not be signed.", &v16, 0x20u);
    }

    selfCopy2 = self;
    v12 = 3;
LABEL_5:
    [(APAPMescalSigningService *)selfCopy2 setState:v12];
    goto LABEL_10;
  }

  v13 = APLogForCategory();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (!finishCopy)
  {
    if (v14)
    {
      v16 = 136642819;
      v17 = "[APAPMescalSigningService certificateRetrievalDidFinish:error:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{sensitive}s]: Server returned an empty certificate for Mescal setup; requests will not be signed.", &v16, 0xCu);
    }

    selfCopy2 = self;
    v12 = 4;
    goto LABEL_5;
  }

  if (v14)
  {
    v16 = 136642819;
    v17 = "[APAPMescalSigningService certificateRetrievalDidFinish:error:]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{sensitive}s]: Successfully retrieved certificate; continuing negotiation.", &v16, 0xCu);
  }

  mescalSigningSettings = [(APAPMescalSigningService *)self mescalSigningSettings];
  [mescalSigningSettings setCachedCertificate:finishCopy];

  [(APAPMescalSigningService *)self fairPlaySAPExchange:finishCopy certificateIsCached:0];
LABEL_10:
}

- (void)setupNegotiationStepDidFinish:(id)finish certificateIsCached:(BOOL)cached error:(id)error
{
  cachedCopy = cached;
  finishCopy = finish;
  errorCopy = error;
  if (errorCopy)
  {
    v10 = APLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      code = [errorCopy code];
      localizedDescription = [errorCopy localizedDescription];
      v14 = 136643331;
      v15 = "[APAPMescalSigningService setupNegotiationStepDidFinish:certificateIsCached:error:]";
      v16 = 2050;
      v17 = code;
      v18 = 2114;
      v19 = localizedDescription;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: Mescal negotiation failed with error code %{public}ld. %{public}@", &v14, 0x20u);
    }

LABEL_4:

    [(APAPMescalSigningService *)self setState:3];
    goto LABEL_9;
  }

  v13 = APLogForCategory();
  v10 = v13;
  if (!finishCopy)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 136642819;
      v15 = "[APAPMescalSigningService setupNegotiationStepDidFinish:certificateIsCached:error:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: Failed to retrieve Mescal negotiation response; requests will not be signed.", &v14, 0xCu);
    }

    goto LABEL_4;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136642819;
    v15 = "[APAPMescalSigningService setupNegotiationStepDidFinish:certificateIsCached:error:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{sensitive}s]: Successfully retrieved setup buffer; continuing negotiation.", &v14, 0xCu);
  }

  [(APAPMescalSigningService *)self fairPlaySAPExchange:finishCopy certificateIsCached:cachedCopy];
LABEL_9:
}

- (APMescalSigningStateChangedDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)setHwInfo:(FairPlayHWInfo_ *)info
{
  v3 = *&info->IDLength;
  *&self->_hwInfo.ID[12] = *&info->ID[12];
  *&self->_hwInfo.IDLength = v3;
}

@end