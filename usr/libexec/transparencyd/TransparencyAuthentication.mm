@interface TransparencyAuthentication
+ (BOOL)isVirtualMachine;
- (TransparencyAuthentication)initWithWorkloop:(id)workloop;
- (TransparencyAuthentication)initWithWorkloop:(id)workloop analytics:(id)analytics;
- (void)signData:(id)data key:(id)key completionHandler:(id)handler;
@end

@implementation TransparencyAuthentication

+ (BOOL)isVirtualMachine
{
  if (qword_10039CE38 != -1)
  {
    sub_10025FE94();
  }

  return byte_10039CE40;
}

- (TransparencyAuthentication)initWithWorkloop:(id)workloop analytics:(id)analytics
{
  workloopCopy = workloop;
  analyticsCopy = analytics;
  v14.receiver = self;
  v14.super_class = TransparencyAuthentication;
  v8 = [(TransparencyAuthentication *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(TransparencyAuthentication *)v8 setIsSupported:1];
    [(TransparencyAuthentication *)v9 setWorkloop:workloopCopy];
    [(TransparencyAuthentication *)v9 setAnalytics:analyticsCopy];
    v10 = [TransparencyBAACertFetcher alloc];
    analytics = [(TransparencyAuthentication *)v9 analytics];
    v12 = [(TransparencyBAACertFetcher *)v10 initWithWorkloop:workloopCopy analytics:analytics];
    [(TransparencyAuthentication *)v9 setCertFetcher:v12];
  }

  return v9;
}

- (TransparencyAuthentication)initWithWorkloop:(id)workloop
{
  workloopCopy = workloop;
  v5 = +[TransparencyAnalytics logger];
  v6 = [(TransparencyAuthentication *)self initWithWorkloop:workloopCopy analytics:v5];

  return v6;
}

- (void)signData:(id)data key:(id)key completionHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  dataCopy = data;
  if ([keyCopy useHostKey])
  {
    workloop = [(TransparencyAuthentication *)self workloop];
    error[1] = _NSConcreteStackBlock;
    error[2] = 3221225472;
    error[3] = sub_100234254;
    error[4] = &unk_10032C318;
    error[5] = self;
    v17 = handlerCopy;
    DeviceIdentityCreateHostSignatureWithCompletion();
  }

  else
  {
    error[0] = 0;
    Signature = SecKeyCreateSignature([keyCopy referenceKey], kSecKeyAlgorithmECDSASignatureMessageX962SHA256, dataCopy, error);

    if (Signature)
    {
      v13 = error[0] == 0;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      certificates = [keyCopy certificates];
      (*(handlerCopy + 2))(handlerCopy, Signature, certificates, 0);
    }

    else
    {
      if (qword_10039CE48 != -1)
      {
        sub_10025FEF8();
      }

      v14 = qword_10039CE50;
      if (os_log_type_enabled(qword_10039CE50, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = error[0];
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to create signature: %@", buf, 0xCu);
      }

      Signature = error[0];
      (*(handlerCopy + 2))(handlerCopy, 0, 0, error[0]);
    }
  }
}

@end