@interface APResponseDataTranslator
- (APResponseDataTranslator)initWithResponse:(id)a3 forRequester:(id)a4;
@end

@implementation APResponseDataTranslator

- (APResponseDataTranslator)initWithResponse:(id)a3 forRequester:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = APResponseDataTranslator;
  v9 = [(APResponseDataTranslator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_response, a3);
    objc_storeStrong(&v10->_requester, a4);
  }

  return v10;
}

@end