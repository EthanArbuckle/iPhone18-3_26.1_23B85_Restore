@interface APServerErrorRequester
- (APServerErrorRequester)initWithMetric:(id)metric internalContent:(id)content context:(id)context idAccount:(id)account error:(id)error;
- (id)protoBuffer;
@end

@implementation APServerErrorRequester

- (APServerErrorRequester)initWithMetric:(id)metric internalContent:(id)content context:(id)context idAccount:(id)account error:(id)error
{
  errorCopy = error;
  v21.receiver = self;
  v21.super_class = APServerErrorRequester;
  v13 = [(APLegacyMetricRequester *)&v21 initWithMetric:metric internalContent:content andContext:context clientInfo:0 idAccount:account];
  if (v13)
  {
    domain = [errorCopy domain];
    v15 = [domain isEqualToString:@"com.apple.ap.AdValidationErrorDomain"];

    if (!v15)
    {
      v19 = 0;
      goto LABEL_9;
    }

    if ([errorCopy code] == 4512)
    {
      v16 = 3;
    }

    else
    {
      v16 = 10;
    }

    v13->_legacyServerErrorCode = v16;
    localizedDescription = [errorCopy localizedDescription];
    errorDetails = v13->_errorDetails;
    v13->_errorDetails = localizedDescription;
  }

  v19 = v13;
LABEL_9:

  return v19;
}

- (id)protoBuffer
{
  v3 = objc_alloc_init(APPBServerErrorRequest);
  logMetadata = [(APLegacyMetricRequester *)self logMetadata];
  [(APPBServerErrorRequest *)v3 setMetaData:logMetadata];

  [(APPBServerErrorRequest *)v3 setErrorCode:[(APServerErrorRequester *)self legacyServerErrorCode]];
  errorDetails = [(APServerErrorRequester *)self errorDetails];
  [(APPBServerErrorRequest *)v3 setErrorDetails:errorDetails];

  return v3;
}

@end