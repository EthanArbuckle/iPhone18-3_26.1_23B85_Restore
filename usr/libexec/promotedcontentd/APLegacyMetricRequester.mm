@interface APLegacyMetricRequester
- (APLegacyMetricRequester)initWithMetric:(id)a3 internalContent:(id)a4 andContext:(id)a5 clientInfo:(id)a6 idAccount:(id)a7;
- (APLegacyMetricRetryManagerProtocol)retryManager;
- (APPBLogMetaData)logMetadata;
- (void)requestWillSend:(id)a3 headers:(id)a4 request:(id)a5;
- (void)responseReceived:(id)a3 responseProtobuf:(id)a4 error:(id)a5;
@end

@implementation APLegacyMetricRequester

- (APLegacyMetricRequester)initWithMetric:(id)a3 internalContent:(id)a4 andContext:(id)a5 clientInfo:(id)a6 idAccount:(id)a7
{
  v12 = a3;
  v13 = a4;
  v30 = a5;
  v14 = a5;
  v31 = a6;
  v32 = a6;
  v15 = a7;
  if (v13 && ([(APContentDataInternal *)v13 content], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
  {
    v17 = v13;
  }

  else
  {
    v17 = objc_alloc_init(APContentDataInternal);

    if (v14)
    {
      v18 = [v14 identifier];
      v19 = [(APContentDataInternal *)v17 content];
      [v19 setContextIdentifier:v18];
    }
  }

  v33 = v12;
  v20 = [v12 bundleIdentifier];
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = @"com.apple.ap.promotedcontentd";
  }

  v22 = +[NSUUID UUID];
  v23 = [v14 identifier];
  v24 = [v23 UUIDString];
  v25 = [(APContentDataInternal *)v17 content];
  v26 = [v25 identifier];
  v34.receiver = self;
  v34.super_class = APLegacyMetricRequester;
  v27 = [(APServerRequester *)&v34 initWithBundleID:v21 requestIdentifier:v22 contextIdentifier:v24 contentIdentifier:v26 idAccount:v15];

  if (v27)
  {
    objc_storeStrong(&v27->_metric, a3);
    objc_storeStrong(&v27->_internalContent, v17);
    objc_storeStrong(&v27->_context, v30);
    objc_storeStrong(&v27->_clientInfo, v31);
  }

  return v27;
}

- (APPBLogMetaData)logMetadata
{
  logMetadata = self->_logMetadata;
  if (!logMetadata)
  {
    v4 = objc_alloc_init(APPBLogMetaData);
    v5 = self->_logMetadata;
    self->_logMetadata = v4;

    v6 = [(APLegacyMetricRequester *)self clientInfo];
    v7 = +[APEncryptedIDProvider provider];
    v8 = [(APServerRequester *)self idAccount];
    v9 = [v7 encryptedIDsForIDAccountPrivate:v8];

    v10 = [(APContentDataInternal *)self->_internalContent privateContent];
    v11 = [v10 batchResponseID];
    [(APPBLogMetaData *)self->_logMetadata setBatchId:v11];

    v12 = [(APContentDataInternal *)self->_internalContent privateContent];
    v13 = [v12 adResponseIdentifier];
    [(APPBLogMetaData *)self->_logMetadata setAdDataResponseIdentifier:v13];

    v14 = [(APContentDataInternal *)self->_internalContent privateContent];
    v15 = [v14 impressionIdentifier];
    [(APPBLogMetaData *)self->_logMetadata setImpressionIdentifierData:v15];

    v16 = [(APContentDataInternal *)self->_internalContent privateContent];
    -[APPBLogMetaData setMessageSequence:](self->_logMetadata, "setMessageSequence:", [v16 sequenceNumber]);

    v17 = [(APContentDataInternal *)self->_internalContent transientContent];
    -[APPBLogMetaData setImpressionSequence:](self->_logMetadata, "setImpressionSequence:", [v17 impressionSequenceNumber]);

    v18 = +[NSDate date];
    [v18 timeIntervalSince1970];
    [(APPBLogMetaData *)self->_logMetadata setTimeStamp:?];

    v19 = +[APDeviceInfo current];
    -[APPBLogMetaData setConnectionType:](self->_logMetadata, "setConnectionType:", +[APLegacyTypeTranslator connectionTypeToAPPBAdConnection:](APLegacyTypeTranslator, "connectionTypeToAPPBAdConnection:", [v19 connectionType]));

    v20 = objc_alloc_init(APPBAdSize);
    [(APPBLogMetaData *)self->_logMetadata setScreenSize:v20];

    if (v6)
    {
      v21 = [v6 screenWidth];
      v22 = [(APPBLogMetaData *)self->_logMetadata screenSize];
      [v22 setWidth:v21];

      v23 = [v6 screenHeight];
      v24 = [(APPBLogMetaData *)self->_logMetadata screenSize];
      [v24 setHeight:v23];

      v25 = [v6 scale];
      -[APPBLogMetaData setScreenScale:](self->_logMetadata, "setScreenScale:", [v25 intValue]);
    }

    v26 = [v9 iAdID];
    [(APPBLogMetaData *)self->_logMetadata setIAdID:v26];

    v27 = [v9 anonymousDemandID];
    [(APPBLogMetaData *)self->_logMetadata setAnonymousDemandiAdID:v27];

    v28 = [v9 contentID];
    [(APPBLogMetaData *)self->_logMetadata setContentiAdID:v28];

    v29 = [v9 DPID];
    [(APPBLogMetaData *)self->_logMetadata setDPID:v29];

    v30 = [(APContentDataInternal *)self->_internalContent privateContent];
    v31 = [v30 isCarouselAd];

    if (v31)
    {
      v32 = [(APContentDataInternal *)self->_internalContent transientContent];
      -[APPBLogMetaData setSlotPosition:](self->_logMetadata, "setSlotPosition:", [v32 clickedCarouselElement]);
    }

    v33 = [(APLegacyMetricRequester *)self internalContent];
    v34 = [v33 transientContent];
    v35 = [v34 clickCount];

    if (v35 >= 2)
    {
      [(APPBLogMetaData *)self->_logMetadata setOverclickCount:(v35 - 1)];
    }

    logMetadata = self->_logMetadata;
  }

  return logMetadata;
}

- (void)requestWillSend:(id)a3 headers:(id)a4 request:(id)a5
{
  v17.receiver = self;
  v17.super_class = APLegacyMetricRequester;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(APServerRequester *)&v17 requestWillSend:v10 headers:v9 request:v8];
  v11 = [NSProcessInfo processInfo:v17.receiver];
  [v11 isRunningTests];

  v12 = [APServerRequest alloc];
  v13 = [(APServerRequester *)self requestIdentifier];
  v14 = [(APServerRequester *)self bundleID];
  v15 = sub_1003942F4(&v12->super.isa, v13, v14, v10, v9, v8, [(APServerRequester *)self responseClass]);

  v16 = [(APLegacyMetricRequester *)self retryManager];
  [v16 registerMetricRequest:v15];
}

- (void)responseReceived:(id)a3 responseProtobuf:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[NSProcessInfo processInfo];
  [v11 isRunningTests];

  v16.receiver = self;
  v16.super_class = APLegacyMetricRequester;
  [(APServerRequester *)&v16 responseReceived:v10 responseProtobuf:v9 error:v8];

  v12 = [APLegacyMetricRetryManager resultForResponse:v10 error:v8];
  v13 = [(APLegacyMetricRequester *)self retryManager];
  v14 = [(APServerRequester *)self requestIdentifier];
  v15 = [v14 UUIDString];
  [v13 completeServerRequestId:v15 result:v12];
}

- (APLegacyMetricRetryManagerProtocol)retryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_retryManager);

  return WeakRetained;
}

@end