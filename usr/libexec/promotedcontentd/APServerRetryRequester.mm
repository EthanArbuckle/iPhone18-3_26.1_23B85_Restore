@interface APServerRetryRequester
- (Class)responseClass;
- (id)buildURLForRequestProtobuf:(id)protobuf;
- (id)headers;
- (id)initFromServerRequest:(id)request;
- (id)protoBuffer;
- (void)responseReceived:(id)received responseProtobuf:(id)protobuf error:(id)error;
@end

@implementation APServerRetryRequester

- (id)initFromServerRequest:(id)request
{
  requestCopy = request;
  v6 = sub_100394400(requestCopy);
  v7 = sub_1003943F4(requestCopy);
  v8 = +[APIDAccountProvider privateUserAccount];
  v11.receiver = self;
  v11.super_class = APServerRetryRequester;
  v9 = [(APServerRequester *)&v11 initWithBundleID:v6 requestIdentifier:v7 contextIdentifier:0 contentIdentifier:0 idAccount:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_serverRequest, request);
  }

  return v9;
}

- (id)headers
{
  serverRequest = [(APServerRetryRequester *)self serverRequest];
  v3 = sub_100394418(serverRequest);

  return v3;
}

- (Class)responseClass
{
  serverRequest = [(APServerRetryRequester *)self serverRequest];
  v3 = sub_100394430(serverRequest);

  return v3;
}

- (id)protoBuffer
{
  serverRequest = [(APServerRetryRequester *)self serverRequest];
  v3 = sub_100394424(serverRequest);

  return v3;
}

- (id)buildURLForRequestProtobuf:(id)protobuf
{
  serverRequest = [(APServerRetryRequester *)self serverRequest];
  v4 = sub_10039440C(serverRequest);

  return v4;
}

- (void)responseReceived:(id)received responseProtobuf:(id)protobuf error:(id)error
{
  v6 = [APLegacyMetricRetryManager resultForResponse:received error:error];

  [(APServerRetryRequester *)self setResponseResult:v6];
}

@end