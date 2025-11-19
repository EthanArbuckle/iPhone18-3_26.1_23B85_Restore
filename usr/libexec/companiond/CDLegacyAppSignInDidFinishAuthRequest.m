@interface CDLegacyAppSignInDidFinishAuthRequest
- (CDLegacyAppSignInDidFinishAuthRequest)initWithRapportDictionary:(id)a3;
- (NSString)description;
- (id)makeRapportDictionary;
@end

@implementation CDLegacyAppSignInDidFinishAuthRequest

- (CDLegacyAppSignInDidFinishAuthRequest)initWithRapportDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CDLegacyAppSignInDidFinishAuthRequest;
  v5 = [(CDLegacyAppSignInDidFinishAuthRequest *)&v17 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = v4;
    v8 = [NSSet setWithObject:v6];
    v9 = sub_100017500(v7, @"Authorization", v8);

    authorization = v5->_authorization;
    v5->_authorization = v9;

    v11 = objc_opt_self();
    v12 = v7;
    v13 = [NSSet setWithObject:v11];
    v14 = sub_100017500(v12, @"Error", v13);

    error = v5->_error;
    v5->_error = v14;
  }

  return v5;
}

- (id)makeRapportDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = sub_1000129F0(self->_authorization);
  [v3 setObject:v4 forKeyedSubscript:@"Authorization"];

  v5 = sub_1000129F0(self->_error);
  [v3 setObject:v5 forKeyedSubscript:@"Error"];

  v6 = [v3 copy];

  return v6;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendObject:self->_authorization withName:@"authorization" skipIfNil:1];
  v5 = [v3 appendObject:self->_error withName:@"error" skipIfNil:1];
  v6 = [v3 build];

  return v6;
}

@end