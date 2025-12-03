@interface APAdDataResponseTranslator
- (APAdDataResponseTranslator)initWithResponse:(id)response forRequester:(id)requester contentIdentifier:(id)identifier withContext:(id)context placement:(int64_t)placement;
- (id)translate:(id *)translate;
@end

@implementation APAdDataResponseTranslator

- (APAdDataResponseTranslator)initWithResponse:(id)response forRequester:(id)requester contentIdentifier:(id)identifier withContext:(id)context placement:(int64_t)placement
{
  identifierCopy = identifier;
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = APAdDataResponseTranslator;
  v15 = [(APResponseDataTranslator *)&v18 initWithResponse:response forRequester:requester];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_contentIdentifier, identifier);
    objc_storeStrong(&v16->_context, context);
    v16->_placement = placement;
  }

  return v16;
}

- (id)translate:(id *)translate
{
  requester = [(APResponseDataTranslator *)self requester];
  response = [(APResponseDataTranslator *)self response];
  adOriginalRequesterId = [response adOriginalRequesterId];
  v8 = [requester requestFromRequestID:adOriginalRequesterId];

  if (v8)
  {
    v9 = [APContentDataInternal alloc];
    response2 = [(APResponseDataTranslator *)self response];
    contentIdentifier = [(APAdDataResponseTranslator *)self contentIdentifier];
    context = [(APAdDataResponseTranslator *)self context];
    identifier = [context identifier];
    placement = [(APAdDataResponseTranslator *)self placement];
    context2 = [(APAdDataResponseTranslator *)self context];
    [context2 maxSize];
    v16 = [(APContentDataInternal *)v9 initWithAdData:response2 identifier:contentIdentifier contextIdentifier:identifier placementType:placement maxSize:?];

    content = [(APContentDataInternal *)v16 content];
    *translate = [content error];
  }

  else
  {
    content = [(APResponseDataTranslator *)self response];
    adDataResponseIdentifier = [content adDataResponseIdentifier];
    response3 = [(APResponseDataTranslator *)self response];
    adOriginalRequesterId2 = [response3 adOriginalRequesterId];
    requester2 = [(APResponseDataTranslator *)self requester];
    requestIdentifier = [requester2 requestIdentifier];
    v23 = [NSString stringWithFormat:@"Ad %@ with original requester id (%@) was returned to wrong requester (%@)", adDataResponseIdentifier, adOriginalRequesterId2, requestIdentifier];
    *translate = [APLegacyInterfaceError validationErrorWithCode:4506 andReason:v23];

    v16 = 0;
  }

  return v16;
}

@end