@interface TransparencyAuthentication
+ (BOOL)isVirtualMachine;
- (TransparencyAuthentication)initWithWorkloop:(id)a3;
- (TransparencyAuthentication)initWithWorkloop:(id)a3 analytics:(id)a4;
- (void)signData:(id)a3 key:(id)a4 completionHandler:(id)a5;
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

- (TransparencyAuthentication)initWithWorkloop:(id)a3 analytics:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = TransparencyAuthentication;
  v8 = [(TransparencyAuthentication *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(TransparencyAuthentication *)v8 setIsSupported:1];
    [(TransparencyAuthentication *)v9 setWorkloop:v6];
    [(TransparencyAuthentication *)v9 setAnalytics:v7];
    v10 = [TransparencyBAACertFetcher alloc];
    v11 = [(TransparencyAuthentication *)v9 analytics];
    v12 = [(TransparencyBAACertFetcher *)v10 initWithWorkloop:v6 analytics:v11];
    [(TransparencyAuthentication *)v9 setCertFetcher:v12];
  }

  return v9;
}

- (TransparencyAuthentication)initWithWorkloop:(id)a3
{
  v4 = a3;
  v5 = +[TransparencyAnalytics logger];
  v6 = [(TransparencyAuthentication *)self initWithWorkloop:v4 analytics:v5];

  return v6;
}

- (void)signData:(id)a3 key:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  if ([v8 useHostKey])
  {
    v11 = [(TransparencyAuthentication *)self workloop];
    error[1] = _NSConcreteStackBlock;
    error[2] = 3221225472;
    error[3] = sub_100234254;
    error[4] = &unk_10032C318;
    error[5] = self;
    v17 = v9;
    DeviceIdentityCreateHostSignatureWithCompletion();
  }

  else
  {
    error[0] = 0;
    Signature = SecKeyCreateSignature([v8 referenceKey], kSecKeyAlgorithmECDSASignatureMessageX962SHA256, v10, error);

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
      v15 = [v8 certificates];
      (*(v9 + 2))(v9, Signature, v15, 0);
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
      (*(v9 + 2))(v9, 0, 0, error[0]);
    }
  }
}

@end