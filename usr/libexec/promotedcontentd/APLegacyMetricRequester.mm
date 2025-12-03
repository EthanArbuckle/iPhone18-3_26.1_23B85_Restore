@interface APLegacyMetricRequester
- (APLegacyMetricRequester)initWithMetric:(id)metric internalContent:(id)content andContext:(id)context clientInfo:(id)info idAccount:(id)account;
- (APLegacyMetricRetryManagerProtocol)retryManager;
- (APPBLogMetaData)logMetadata;
- (void)requestWillSend:(id)send headers:(id)headers request:(id)request;
- (void)responseReceived:(id)received responseProtobuf:(id)protobuf error:(id)error;
@end

@implementation APLegacyMetricRequester

- (APLegacyMetricRequester)initWithMetric:(id)metric internalContent:(id)content andContext:(id)context clientInfo:(id)info idAccount:(id)account
{
  metricCopy = metric;
  contentCopy = content;
  contextCopy = context;
  contextCopy2 = context;
  infoCopy = info;
  infoCopy2 = info;
  accountCopy = account;
  if (contentCopy && ([(APContentDataInternal *)contentCopy content], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
  {
    v17 = contentCopy;
  }

  else
  {
    v17 = objc_alloc_init(APContentDataInternal);

    if (contextCopy2)
    {
      identifier = [contextCopy2 identifier];
      content = [(APContentDataInternal *)v17 content];
      [content setContextIdentifier:identifier];
    }
  }

  v33 = metricCopy;
  bundleIdentifier = [metricCopy bundleIdentifier];
  if (bundleIdentifier)
  {
    v21 = bundleIdentifier;
  }

  else
  {
    v21 = @"com.apple.ap.promotedcontentd";
  }

  v22 = +[NSUUID UUID];
  identifier2 = [contextCopy2 identifier];
  uUIDString = [identifier2 UUIDString];
  content2 = [(APContentDataInternal *)v17 content];
  identifier3 = [content2 identifier];
  v34.receiver = self;
  v34.super_class = APLegacyMetricRequester;
  v27 = [(APServerRequester *)&v34 initWithBundleID:v21 requestIdentifier:v22 contextIdentifier:uUIDString contentIdentifier:identifier3 idAccount:accountCopy];

  if (v27)
  {
    objc_storeStrong(&v27->_metric, metric);
    objc_storeStrong(&v27->_internalContent, v17);
    objc_storeStrong(&v27->_context, contextCopy);
    objc_storeStrong(&v27->_clientInfo, infoCopy);
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

    clientInfo = [(APLegacyMetricRequester *)self clientInfo];
    v7 = +[APEncryptedIDProvider provider];
    idAccount = [(APServerRequester *)self idAccount];
    v9 = [v7 encryptedIDsForIDAccountPrivate:idAccount];

    privateContent = [(APContentDataInternal *)self->_internalContent privateContent];
    batchResponseID = [privateContent batchResponseID];
    [(APPBLogMetaData *)self->_logMetadata setBatchId:batchResponseID];

    privateContent2 = [(APContentDataInternal *)self->_internalContent privateContent];
    adResponseIdentifier = [privateContent2 adResponseIdentifier];
    [(APPBLogMetaData *)self->_logMetadata setAdDataResponseIdentifier:adResponseIdentifier];

    privateContent3 = [(APContentDataInternal *)self->_internalContent privateContent];
    impressionIdentifier = [privateContent3 impressionIdentifier];
    [(APPBLogMetaData *)self->_logMetadata setImpressionIdentifierData:impressionIdentifier];

    privateContent4 = [(APContentDataInternal *)self->_internalContent privateContent];
    -[APPBLogMetaData setMessageSequence:](self->_logMetadata, "setMessageSequence:", [privateContent4 sequenceNumber]);

    transientContent = [(APContentDataInternal *)self->_internalContent transientContent];
    -[APPBLogMetaData setImpressionSequence:](self->_logMetadata, "setImpressionSequence:", [transientContent impressionSequenceNumber]);

    v18 = +[NSDate date];
    [v18 timeIntervalSince1970];
    [(APPBLogMetaData *)self->_logMetadata setTimeStamp:?];

    v19 = +[APDeviceInfo current];
    -[APPBLogMetaData setConnectionType:](self->_logMetadata, "setConnectionType:", +[APLegacyTypeTranslator connectionTypeToAPPBAdConnection:](APLegacyTypeTranslator, "connectionTypeToAPPBAdConnection:", [v19 connectionType]));

    v20 = objc_alloc_init(APPBAdSize);
    [(APPBLogMetaData *)self->_logMetadata setScreenSize:v20];

    if (clientInfo)
    {
      screenWidth = [clientInfo screenWidth];
      screenSize = [(APPBLogMetaData *)self->_logMetadata screenSize];
      [screenSize setWidth:screenWidth];

      screenHeight = [clientInfo screenHeight];
      screenSize2 = [(APPBLogMetaData *)self->_logMetadata screenSize];
      [screenSize2 setHeight:screenHeight];

      scale = [clientInfo scale];
      -[APPBLogMetaData setScreenScale:](self->_logMetadata, "setScreenScale:", [scale intValue]);
    }

    iAdID = [v9 iAdID];
    [(APPBLogMetaData *)self->_logMetadata setIAdID:iAdID];

    anonymousDemandID = [v9 anonymousDemandID];
    [(APPBLogMetaData *)self->_logMetadata setAnonymousDemandiAdID:anonymousDemandID];

    contentID = [v9 contentID];
    [(APPBLogMetaData *)self->_logMetadata setContentiAdID:contentID];

    dPID = [v9 DPID];
    [(APPBLogMetaData *)self->_logMetadata setDPID:dPID];

    privateContent5 = [(APContentDataInternal *)self->_internalContent privateContent];
    isCarouselAd = [privateContent5 isCarouselAd];

    if (isCarouselAd)
    {
      transientContent2 = [(APContentDataInternal *)self->_internalContent transientContent];
      -[APPBLogMetaData setSlotPosition:](self->_logMetadata, "setSlotPosition:", [transientContent2 clickedCarouselElement]);
    }

    internalContent = [(APLegacyMetricRequester *)self internalContent];
    transientContent3 = [internalContent transientContent];
    clickCount = [transientContent3 clickCount];

    if (clickCount >= 2)
    {
      [(APPBLogMetaData *)self->_logMetadata setOverclickCount:(clickCount - 1)];
    }

    logMetadata = self->_logMetadata;
  }

  return logMetadata;
}

- (void)requestWillSend:(id)send headers:(id)headers request:(id)request
{
  v17.receiver = self;
  v17.super_class = APLegacyMetricRequester;
  requestCopy = request;
  headersCopy = headers;
  sendCopy = send;
  [(APServerRequester *)&v17 requestWillSend:sendCopy headers:headersCopy request:requestCopy];
  v11 = [NSProcessInfo processInfo:v17.receiver];
  [v11 isRunningTests];

  v12 = [APServerRequest alloc];
  requestIdentifier = [(APServerRequester *)self requestIdentifier];
  bundleID = [(APServerRequester *)self bundleID];
  v15 = sub_1003942F4(&v12->super.isa, requestIdentifier, bundleID, sendCopy, headersCopy, requestCopy, [(APServerRequester *)self responseClass]);

  retryManager = [(APLegacyMetricRequester *)self retryManager];
  [retryManager registerMetricRequest:v15];
}

- (void)responseReceived:(id)received responseProtobuf:(id)protobuf error:(id)error
{
  errorCopy = error;
  protobufCopy = protobuf;
  receivedCopy = received;
  v11 = +[NSProcessInfo processInfo];
  [v11 isRunningTests];

  v16.receiver = self;
  v16.super_class = APLegacyMetricRequester;
  [(APServerRequester *)&v16 responseReceived:receivedCopy responseProtobuf:protobufCopy error:errorCopy];

  v12 = [APLegacyMetricRetryManager resultForResponse:receivedCopy error:errorCopy];
  retryManager = [(APLegacyMetricRequester *)self retryManager];
  requestIdentifier = [(APServerRequester *)self requestIdentifier];
  uUIDString = [requestIdentifier UUIDString];
  [retryManager completeServerRequestId:uUIDString result:v12];
}

- (APLegacyMetricRetryManagerProtocol)retryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_retryManager);

  return WeakRetained;
}

@end