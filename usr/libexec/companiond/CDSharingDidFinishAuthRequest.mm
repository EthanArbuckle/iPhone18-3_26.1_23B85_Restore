@interface CDSharingDidFinishAuthRequest
- (CDSharingDidFinishAuthRequest)initWithRapportDictionary:(id)a3;
- (NSString)description;
- (id)makeRapportDictionary;
@end

@implementation CDSharingDidFinishAuthRequest

- (CDSharingDidFinishAuthRequest)initWithRapportDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CDSharingDidFinishAuthRequest;
  v5 = [(CDSharingDidFinishAuthRequest *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = v4;
    v8 = [NSSet setWithObject:v6];
    v9 = sub_100017500(v7, @"authError", v8);

    error = v5->_error;
    v5->_error = v9;
  }

  return v5;
}

- (id)makeRapportDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = sub_1000129F0(self->_error);
  [v3 setObject:v4 forKeyedSubscript:@"authError"];

  v5 = [v3 copy];

  return v5;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendObject:self->_error withName:@"error" skipIfNil:1];
  v5 = [v3 build];

  return v5;
}

@end