@interface CDGetAuthTypeResponse
- (CDGetAuthTypeResponse)initWithRapportDictionary:(id)a3;
- (NSString)description;
- (id)makeRapportDictionary;
@end

@implementation CDGetAuthTypeResponse

- (CDGetAuthTypeResponse)initWithRapportDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CDGetAuthTypeResponse;
  v5 = [(CDGetAuthTypeResponse *)&v9 init];
  if (v5)
  {
    v6 = NSDictionaryGetNSNumber();
    v5->_authType = [v6 integerValue];

    v5->_sandboxPurchase = CFDictionaryGetInt64() != 0;
    v7 = NSDictionaryGetNSNumber();
    v5->_authFlags = [v7 integerValue];
  }

  return v5;
}

- (id)makeRapportDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithInteger:self->_authType];
  [v3 setObject:v4 forKeyedSubscript:@"authType"];

  if (self->_sandboxPurchase)
  {
    v5 = &__kCFBooleanTrue;
  }

  else
  {
    v5 = 0;
  }

  [v3 setObject:v5 forKeyedSubscript:@"sandboxPurchase"];
  v6 = [NSNumber numberWithUnsignedInteger:self->_authFlags];
  [v3 setObject:v6 forKeyedSubscript:@"authFlags"];

  v7 = [v3 copy];

  return v7;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  authType = self->_authType;
  v5 = CPSAuthenticationTypeDescription();
  [v3 appendString:v5 withName:@"authType"];

  v6 = [v3 appendBool:self->_sandboxPurchase withName:@"sandboxPurchase" ifEqualTo:1];
  v7 = [v3 appendInteger:self->_authFlags withName:@"authFlags"];
  v8 = [v3 build];

  return v8;
}

@end