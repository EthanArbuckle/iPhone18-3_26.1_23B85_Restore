@interface APMescalSigningLegacyInterface
+ (void)requestCertificateWithCompletion:(id)completion;
+ (void)requestMescalSetupForData:(id)data completionHandler:(id)handler;
@end

@implementation APMescalSigningLegacyInterface

+ (void)requestMescalSetupForData:(id)data completionHandler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  v7 = +[NSUUID UUID];
  v8 = +[NSDate date];
  v9 = [APMescalSignSetupRequester alloc];
  v10 = +[APIDAccountProvider privateUserAccount];
  v11 = [(APServerRequester *)v9 initWithBundleID:@"com.apple.news" requestIdentifier:v7 contextIdentifier:0 contentIdentifier:0 idAccount:v10];

  [(APMescalSignSetupRequester *)v11 setData:dataCopy];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1002CFE98;
  v14[3] = &unk_10047D640;
  v15 = v8;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = v8;
  [(APServerRequester *)v11 makeRequest:v14];
}

+ (void)requestCertificateWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[NSUUID UUID];
  v5 = +[NSDate date];
  v6 = [APMescalSignSetupCertificateRequester alloc];
  v7 = +[APIDAccountProvider privateUserAccount];
  v8 = [(APServerRequester *)v6 initWithBundleID:@"com.apple.news" requestIdentifier:v4 contextIdentifier:0 contentIdentifier:0 idAccount:v7];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002D008C;
  v11[3] = &unk_10047D640;
  v12 = v5;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = v5;
  [(APServerRequester *)v8 makeRequest:v11];
}

@end