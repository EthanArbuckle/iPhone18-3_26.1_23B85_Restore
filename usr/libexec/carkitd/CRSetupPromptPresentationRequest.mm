@interface CRSetupPromptPresentationRequest
- (CRSetupPromptPresentationRequest)initWithPresentationHandler:(id)handler errorHandler:(id)errorHandler;
- (void)invalidate;
@end

@implementation CRSetupPromptPresentationRequest

- (CRSetupPromptPresentationRequest)initWithPresentationHandler:(id)handler errorHandler:(id)errorHandler
{
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  v14.receiver = self;
  v14.super_class = CRSetupPromptPresentationRequest;
  v8 = [(CRSetupPromptPresentationRequest *)&v14 init];
  if (v8)
  {
    v9 = objc_retainBlock(handlerCopy);
    presentationHandler = v8->_presentationHandler;
    v8->_presentationHandler = v9;

    v11 = objc_retainBlock(errorHandlerCopy);
    errorHandler = v8->_errorHandler;
    v8->_errorHandler = v11;
  }

  return v8;
}

- (void)invalidate
{
  [(CRSetupPromptPresentationRequest *)self setPresentationHandler:0];

  [(CRSetupPromptPresentationRequest *)self setErrorHandler:0];
}

@end