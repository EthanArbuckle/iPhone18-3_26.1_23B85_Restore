@interface APMescalSigningLegacyInterface
+ (void)requestCertificateWithCompletion:(id)a3;
+ (void)requestMescalSetupForData:(id)a3 completionHandler:(id)a4;
@end

@implementation APMescalSigningLegacyInterface

+ (void)requestMescalSetupForData:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[NSUUID UUID];
  v8 = +[NSDate date];
  v9 = [APMescalSignSetupRequester alloc];
  v10 = +[APIDAccountProvider privateUserAccount];
  v11 = [(APServerRequester *)v9 initWithBundleID:@"com.apple.news" requestIdentifier:v7 contextIdentifier:0 contentIdentifier:0 idAccount:v10];

  [(APMescalSignSetupRequester *)v11 setData:v6];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1002CFE98;
  v14[3] = &unk_10047D640;
  v15 = v8;
  v16 = v5;
  v12 = v5;
  v13 = v8;
  [(APServerRequester *)v11 makeRequest:v14];
}

+ (void)requestCertificateWithCompletion:(id)a3
{
  v3 = a3;
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
  v13 = v3;
  v9 = v3;
  v10 = v5;
  [(APServerRequester *)v8 makeRequest:v11];
}

@end