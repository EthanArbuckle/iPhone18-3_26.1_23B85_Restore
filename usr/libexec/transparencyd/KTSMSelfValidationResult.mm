@interface KTSMSelfValidationResult
- (KTSMSelfValidationResult)initWithResult:(unint64_t)result transparentData:(id)data loggableData:(id)loggableData application:(id)application resultError:(id)error;
@end

@implementation KTSMSelfValidationResult

- (KTSMSelfValidationResult)initWithResult:(unint64_t)result transparentData:(id)data loggableData:(id)loggableData application:(id)application resultError:(id)error
{
  dataCopy = data;
  loggableDataCopy = loggableData;
  applicationCopy = application;
  errorCopy = error;
  v20.receiver = self;
  v20.super_class = KTSMSelfValidationResult;
  v16 = [(KTSMSelfValidationResult *)&v20 init];
  v17 = v16;
  if (v16)
  {
    [(KTSMSelfValidationResult *)v16 setResult:result];
    [(KTSMSelfValidationResult *)v17 setTransparentData:dataCopy];
    [(KTSMSelfValidationResult *)v17 setLoggableData:loggableDataCopy];
    [(KTSMSelfValidationResult *)v17 setApplication:applicationCopy];
    [(KTSMSelfValidationResult *)v17 setResultError:errorCopy];
    v18 = v17;
  }

  return v17;
}

@end