@interface CDContinueOnDidFinishAuthRequest
- (CDContinueOnDidFinishAuthRequest)initWithRapportDictionary:(id)dictionary;
- (NSString)description;
- (id)makeRapportDictionary;
@end

@implementation CDContinueOnDidFinishAuthRequest

- (CDContinueOnDidFinishAuthRequest)initWithRapportDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = CDContinueOnDidFinishAuthRequest;
  v5 = [(CDContinueOnDidFinishAuthRequest *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = dictionaryCopy;
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
  v4 = [(NSError *)self->_error description];
  [v3 appendString:v4 withName:@"error" skipIfEmpty:1];

  build = [v3 build];

  return build;
}

@end