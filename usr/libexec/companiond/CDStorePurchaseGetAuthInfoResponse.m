@interface CDStorePurchaseGetAuthInfoResponse
- (CDStorePurchaseGetAuthInfoResponse)initWithRapportDictionary:(id)a3;
- (NSString)description;
- (id)makeRapportDictionary;
@end

@implementation CDStorePurchaseGetAuthInfoResponse

- (CDStorePurchaseGetAuthInfoResponse)initWithRapportDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CDStorePurchaseGetAuthInfoResponse;
  v5 = [(CDStorePurchaseGetAuthInfoResponse *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = v4;
    v8 = [NSSet setWithObject:v6];
    v9 = sub_100017500(v7, @"purchaseRequest", v8);

    purchaseRequest = v5->_purchaseRequest;
    v5->_purchaseRequest = v9;
  }

  return v5;
}

- (id)makeRapportDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = sub_1000129F0(self->_purchaseRequest);
  [v3 setObject:v4 forKeyedSubscript:@"purchaseRequest"];

  v5 = [v3 copy];

  return v5;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendObject:self->_purchaseRequest withName:@"purchaseRequest" skipIfNil:1];
  v5 = [v3 build];

  return v5;
}

@end