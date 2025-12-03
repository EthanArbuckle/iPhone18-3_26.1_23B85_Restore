@interface APResponseDataTranslator
- (APResponseDataTranslator)initWithResponse:(id)response forRequester:(id)requester;
@end

@implementation APResponseDataTranslator

- (APResponseDataTranslator)initWithResponse:(id)response forRequester:(id)requester
{
  responseCopy = response;
  requesterCopy = requester;
  v12.receiver = self;
  v12.super_class = APResponseDataTranslator;
  v9 = [(APResponseDataTranslator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_response, response);
    objc_storeStrong(&v10->_requester, requester);
  }

  return v10;
}

@end