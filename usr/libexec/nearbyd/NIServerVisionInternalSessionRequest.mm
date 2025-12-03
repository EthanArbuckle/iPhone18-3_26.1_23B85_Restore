@interface NIServerVisionInternalSessionRequest
- (NIServerVisionInternalSessionRequest)initWithIdentifier:(id)identifier observer:(id)observer;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
@end

@implementation NIServerVisionInternalSessionRequest

- (NIServerVisionInternalSessionRequest)initWithIdentifier:(id)identifier observer:(id)observer
{
  identifierCopy = identifier;
  observerCopy = observer;
  if (!identifierCopy)
  {
    __assert_rtn("[NIServerVisionInternalSessionRequest initWithIdentifier:observer:]", "NIServerVisionInternalSession.mm", 244, "identifier");
  }

  v12.receiver = self;
  v12.super_class = NIServerVisionInternalSessionRequest;
  v9 = [(NIServerVisionInternalSessionRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeWeak(&v10->_observer, observerCopy);
  }

  return v10;
}

- (void)dealloc
{
  v3 = +[_InternalVisionSession sharedInstance];
  [v3 unregisterObserverWithIdentifier:self->_identifier];

  v4.receiver = self;
  v4.super_class = NIServerVisionInternalSessionRequest;
  [(NIServerVisionInternalSessionRequest *)&v4 dealloc];
}

- (void)activate
{
  v4 = +[_InternalVisionSession sharedInstance];
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [v4 registerObserver:WeakRetained withIdentifier:self->_identifier];
}

- (void)invalidate
{
  v3 = +[_InternalVisionSession sharedInstance];
  [v3 unregisterObserverWithIdentifier:self->_identifier];
}

@end