@interface AccessoryAction
- (BOOL)shouldCancelAction:(id)action;
- (FMDServerInteractionController)serverInteractionController;
- (void)_enqueueQCAction;
- (void)_performAction:(id)action waitForConnection:(BOOL)connection;
- (void)accessoryDidPair:(id)pair;
- (void)accessoryDidUnpair:(id)unpair;
- (void)accessoryDidUpdate:(id)update;
- (void)runWithCompletion:(id)completion;
- (void)terminate;
- (void)willCancelAction;
@end

@implementation AccessoryAction

- (void)willCancelAction
{
  objc_initWeak(&location, self);
  serialQueue = [(AccessoryAction *)self serialQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001428A0;
  v4[3] = &unk_1002CD518;
  objc_copyWeak(&v5, &location);
  dispatch_async(serialQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)terminate
{
  completion = [(AccessoryAction *)self completion];
  [(AccessoryAction *)self setCompletion:0];
  v3 = completion;
  if (completion)
  {
    (*(completion + 16))(completion);
    v3 = completion;
  }
}

- (BOOL)shouldCancelAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    accessory = [(AccessoryAction *)self accessory];
    accessoryIdentifier = [accessory accessoryIdentifier];
    accessory2 = [actionCopy accessory];
    accessoryIdentifier2 = [accessory2 accessoryIdentifier];
    v9 = [accessoryIdentifier isEqual:accessoryIdentifier2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)runWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  serialQueue = [(AccessoryAction *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100142B2C;
  block[3] = &unk_1002CDEF0;
  objc_copyWeak(&v10, &location);
  v6 = completionCopy;
  v9 = v6;
  dispatch_async(serialQueue, block);

  accessory = [(AccessoryAction *)self accessory];
  [(AccessoryAction *)self _performAction:accessory waitForConnection:[(AccessoryAction *)self requiresConnectivity]];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_enqueueQCAction
{
  accessory = [(AccessoryAction *)self accessory];
  account = [(AccessoryAction *)self account];
  v5 = [FMDActingRequestDecorator alloc];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100142D58;
  v17[3] = &unk_1002CD580;
  v18 = accessory;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100142E0C;
  v14[3] = &unk_1002CDF18;
  v15 = account;
  v16 = v18;
  v6 = v18;
  v7 = account;
  v8 = [(FMDActingRequestDecorator *)v5 initWithDeviceContextGenerator:v17 deviceInfoGenerator:v14 serverContextGenerator:0 requestHeaderGenerator:0];
  serverInteractionController = [(AccessoryAction *)self serverInteractionController];
  v10 = [[QCAction alloc] initWithAccount:v7 shutdownActivityPending:0 serverInteractionController:serverInteractionController];
  commandContext = [v6 commandContext];
  [(QCAction *)v10 setCommandContext:commandContext];

  [(QCAction *)v10 setRequestDecorator:v8];
  v12 = +[ActionManager sharedManager];
  v13 = [v12 enqueueAction:v10];
}

- (void)_performAction:(id)action waitForConnection:(BOOL)connection
{
  actionCopy = action;
  objc_initWeak(&location, self);
  serialQueue = [(AccessoryAction *)self serialQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100142F60;
  v9[3] = &unk_1002CDF40;
  objc_copyWeak(&v11, &location);
  v10 = actionCopy;
  connectionCopy = connection;
  v8 = actionCopy;
  dispatch_async(serialQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)accessoryDidUpdate:(id)update
{
  updateCopy = update;
  [(AccessoryAction *)self _performAction:updateCopy waitForConnection:[(AccessoryAction *)self requiresConnectivity]];
}

- (void)accessoryDidPair:(id)pair
{
  pairCopy = pair;
  [(AccessoryAction *)self _performAction:pairCopy waitForConnection:[(AccessoryAction *)self requiresConnectivity]];
}

- (void)accessoryDidUnpair:(id)unpair
{
  unpairCopy = unpair;
  objc_initWeak(&location, self);
  serialQueue = [(AccessoryAction *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001432B8;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v9, &location);
  v8 = unpairCopy;
  v6 = unpairCopy;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (FMDServerInteractionController)serverInteractionController
{
  WeakRetained = objc_loadWeakRetained(&self->_serverInteractionController);

  return WeakRetained;
}

@end