@interface KTSMSelfValidationResult
- (KTSMSelfValidationResult)initWithResult:(unint64_t)a3 transparentData:(id)a4 loggableData:(id)a5 application:(id)a6 resultError:(id)a7;
@end

@implementation KTSMSelfValidationResult

- (KTSMSelfValidationResult)initWithResult:(unint64_t)a3 transparentData:(id)a4 loggableData:(id)a5 application:(id)a6 resultError:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v20.receiver = self;
  v20.super_class = KTSMSelfValidationResult;
  v16 = [(KTSMSelfValidationResult *)&v20 init];
  v17 = v16;
  if (v16)
  {
    [(KTSMSelfValidationResult *)v16 setResult:a3];
    [(KTSMSelfValidationResult *)v17 setTransparentData:v12];
    [(KTSMSelfValidationResult *)v17 setLoggableData:v13];
    [(KTSMSelfValidationResult *)v17 setApplication:v14];
    [(KTSMSelfValidationResult *)v17 setResultError:v15];
    v18 = v17;
  }

  return v17;
}

@end