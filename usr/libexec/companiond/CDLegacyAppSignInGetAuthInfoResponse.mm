@interface CDLegacyAppSignInGetAuthInfoResponse
- (CDLegacyAppSignInGetAuthInfoResponse)initWithRapportDictionary:(id)dictionary;
- (NSString)description;
- (id)makeRapportDictionary;
@end

@implementation CDLegacyAppSignInGetAuthInfoResponse

- (CDLegacyAppSignInGetAuthInfoResponse)initWithRapportDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = CDLegacyAppSignInGetAuthInfoResponse;
  v5 = [(CDLegacyAppSignInGetAuthInfoResponse *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = dictionaryCopy;
    v8 = [NSSet setWithObject:v6];
    v9 = sub_100017500(v7, @"CredentialRequest", v8);

    credentialRequest = v5->_credentialRequest;
    v5->_credentialRequest = v9;
  }

  return v5;
}

- (id)makeRapportDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = sub_1000129F0(self->_credentialRequest);
  [v3 setObject:v4 forKeyedSubscript:@"CredentialRequest"];

  v5 = [v3 copy];

  return v5;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendObject:self->_credentialRequest withName:@"credentialRequest" skipIfNil:1];
  build = [v3 build];

  return build;
}

@end