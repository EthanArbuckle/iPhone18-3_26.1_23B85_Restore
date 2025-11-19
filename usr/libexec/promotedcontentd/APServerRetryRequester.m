@interface APServerRetryRequester
- (Class)responseClass;
- (id)buildURLForRequestProtobuf:(id)a3;
- (id)headers;
- (id)initFromServerRequest:(id)a3;
- (id)protoBuffer;
- (void)responseReceived:(id)a3 responseProtobuf:(id)a4 error:(id)a5;
@end

@implementation APServerRetryRequester

- (id)initFromServerRequest:(id)a3
{
  v5 = a3;
  v6 = sub_100394400(v5);
  v7 = sub_1003943F4(v5);
  v8 = +[APIDAccountProvider privateUserAccount];
  v11.receiver = self;
  v11.super_class = APServerRetryRequester;
  v9 = [(APServerRequester *)&v11 initWithBundleID:v6 requestIdentifier:v7 contextIdentifier:0 contentIdentifier:0 idAccount:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_serverRequest, a3);
  }

  return v9;
}

- (id)headers
{
  v2 = [(APServerRetryRequester *)self serverRequest];
  v3 = sub_100394418(v2);

  return v3;
}

- (Class)responseClass
{
  v2 = [(APServerRetryRequester *)self serverRequest];
  v3 = sub_100394430(v2);

  return v3;
}

- (id)protoBuffer
{
  v2 = [(APServerRetryRequester *)self serverRequest];
  v3 = sub_100394424(v2);

  return v3;
}

- (id)buildURLForRequestProtobuf:(id)a3
{
  v3 = [(APServerRetryRequester *)self serverRequest];
  v4 = sub_10039440C(v3);

  return v4;
}

- (void)responseReceived:(id)a3 responseProtobuf:(id)a4 error:(id)a5
{
  v6 = [APLegacyMetricRetryManager resultForResponse:a3 error:a5];

  [(APServerRetryRequester *)self setResponseResult:v6];
}

@end