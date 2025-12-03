@interface CRHeadUnitPairingPromptServiceSession
- (CRHeadUnitPairingPromptServiceSessionDelegate)delegate;
- (void)handleReceivedResponse:(BOOL)response forKeyIdentifier:(id)identifier completion:(id)completion;
- (void)presentHeadUnitPairingPromptForKeyIdentifier:(id)identifier completion:(id)completion;
- (void)wantsToPresentHeadUnitPairingPromptForKeyIdentifier:(id)identifier completion:(id)completion;
@end

@implementation CRHeadUnitPairingPromptServiceSession

- (void)wantsToPresentHeadUnitPairingPromptForKeyIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = CarPairingLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100082660(v8);
  }

  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100015B9C;
  v11[3] = &unk_1000DD828;
  objc_copyWeak(&v14, &location);
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(&_dispatch_main_q, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)presentHeadUnitPairingPromptForKeyIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = CarPairingLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000826A4(v8);
  }

  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100015E34;
  v11[3] = &unk_1000DD828;
  objc_copyWeak(&v14, &location);
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(&_dispatch_main_q, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)handleReceivedResponse:(BOOL)response forKeyIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = CarPairingLogging();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100082760(response, v10);
  }

  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016128;
  block[3] = &unk_1000DD878;
  objc_copyWeak(&v16, &location);
  v14 = identifierCopy;
  v15 = completionCopy;
  responseCopy = response;
  v11 = completionCopy;
  v12 = identifierCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (CRHeadUnitPairingPromptServiceSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end