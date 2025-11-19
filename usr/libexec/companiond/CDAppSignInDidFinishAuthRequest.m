@interface CDAppSignInDidFinishAuthRequest
- (CDAppSignInDidFinishAuthRequest)initWithRapportDictionary:(id)a3;
- (NSString)description;
- (id)makeRapportDictionary;
@end

@implementation CDAppSignInDidFinishAuthRequest

- (CDAppSignInDidFinishAuthRequest)initWithRapportDictionary:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = CDAppSignInDidFinishAuthRequest;
  v5 = [(CDAppSignInDidFinishAuthRequest *)&v37 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = v4;
    v8 = [NSSet setWithObject:v6];
    v9 = sub_100017500(v7, @"appleIDAuthorization", v8);

    appleIDAuthorization = v5->_appleIDAuthorization;
    v5->_appleIDAuthorization = v9;

    v11 = objc_opt_self();
    v12 = v7;
    v13 = [NSSet setWithObject:v11];
    v14 = sub_100017500(v12, @"authError", v13);

    error = v5->_error;
    v5->_error = v14;

    v16 = objc_opt_self();
    v17 = v12;
    v18 = [NSSet setWithObject:v16];
    v19 = sub_100017500(v17, @"passwordCredential", v18);

    passwordCredential = v5->_passwordCredential;
    v5->_passwordCredential = v19;

    v21 = objc_opt_self();
    v22 = v17;
    v23 = [NSSet setWithObject:v21];
    v24 = sub_100017500(v22, @"webCallbackURL", v23);

    webCallbackURL = v5->_webCallbackURL;
    v5->_webCallbackURL = v24;

    v26 = objc_opt_self();
    v27 = v22;
    v28 = [NSSet setWithObject:v26];
    v29 = sub_100017500(v27, @"platformKeyCredentialAssertion", v28);

    platformKeyCredentialAssertion = v5->_platformKeyCredentialAssertion;
    v5->_platformKeyCredentialAssertion = v29;

    v31 = objc_opt_self();
    v32 = v27;
    v33 = [NSSet setWithObject:v31];
    v34 = sub_100017500(v32, @"platformKeyCredentialRegistration", v33);

    platformKeyCredentialRegistration = v5->_platformKeyCredentialRegistration;
    v5->_platformKeyCredentialRegistration = v34;
  }

  return v5;
}

- (id)makeRapportDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = sub_1000129F0(self->_appleIDAuthorization);
  [v3 setObject:v4 forKeyedSubscript:@"appleIDAuthorization"];

  v5 = sub_1000129F0(self->_error);
  [v3 setObject:v5 forKeyedSubscript:@"authError"];

  v6 = sub_1000129F0(self->_passwordCredential);
  [v3 setObject:v6 forKeyedSubscript:@"passwordCredential"];

  v7 = sub_1000129F0(self->_webCallbackURL);
  [v3 setObject:v7 forKeyedSubscript:@"webCallbackURL"];

  v8 = sub_1000129F0(self->_platformKeyCredentialAssertion);
  [v3 setObject:v8 forKeyedSubscript:@"platformKeyCredentialAssertion"];

  v9 = sub_1000129F0(self->_platformKeyCredentialRegistration);
  [v3 setObject:v9 forKeyedSubscript:@"platformKeyCredentialRegistration"];

  v10 = [v3 copy];

  return v10;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendObject:self->_appleIDAuthorization withName:@"appleIDAuthorization" skipIfNil:1];
  v5 = [v3 appendObject:self->_error withName:@"error" skipIfNil:1];
  v6 = [v3 appendObject:self->_passwordCredential withName:@"passwordCredential" skipIfNil:1];
  if (self->_webCallbackURL)
  {
    v7 = CUPrintNSObjectMasked();
    [v3 appendString:v7 withName:@"webCallbackURL"];
  }

  v8 = [v3 appendObject:self->_platformKeyCredentialAssertion withName:@"platformKeyCredentialAssertion" skipIfNil:1];
  v9 = [v3 appendObject:self->_platformKeyCredentialRegistration withName:@"platformKeyCredentialRegistration" skipIfNil:1];
  v10 = [v3 build];

  return v10;
}

@end