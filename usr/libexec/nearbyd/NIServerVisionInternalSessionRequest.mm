@interface NIServerVisionInternalSessionRequest
- (NIServerVisionInternalSessionRequest)initWithIdentifier:(id)a3 observer:(id)a4;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
@end

@implementation NIServerVisionInternalSessionRequest

- (NIServerVisionInternalSessionRequest)initWithIdentifier:(id)a3 observer:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    __assert_rtn("[NIServerVisionInternalSessionRequest initWithIdentifier:observer:]", "NIServerVisionInternalSession.mm", 244, "identifier");
  }

  v12.receiver = self;
  v12.super_class = NIServerVisionInternalSessionRequest;
  v9 = [(NIServerVisionInternalSessionRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeWeak(&v10->_observer, v8);
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