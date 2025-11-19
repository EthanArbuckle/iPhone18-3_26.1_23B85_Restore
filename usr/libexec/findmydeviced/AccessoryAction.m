@interface AccessoryAction
- (BOOL)shouldCancelAction:(id)a3;
- (FMDServerInteractionController)serverInteractionController;
- (void)_enqueueQCAction;
- (void)_performAction:(id)a3 waitForConnection:(BOOL)a4;
- (void)accessoryDidPair:(id)a3;
- (void)accessoryDidUnpair:(id)a3;
- (void)accessoryDidUpdate:(id)a3;
- (void)runWithCompletion:(id)a3;
- (void)terminate;
- (void)willCancelAction;
@end

@implementation AccessoryAction

- (void)willCancelAction
{
  objc_initWeak(&location, self);
  v3 = [(AccessoryAction *)self serialQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001428A0;
  v4[3] = &unk_1002CD518;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)terminate
{
  v4 = [(AccessoryAction *)self completion];
  [(AccessoryAction *)self setCompletion:0];
  v3 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
    v3 = v4;
  }
}

- (BOOL)shouldCancelAction:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(AccessoryAction *)self accessory];
    v6 = [v5 accessoryIdentifier];
    v7 = [v4 accessory];
    v8 = [v7 accessoryIdentifier];
    v9 = [v6 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)runWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(AccessoryAction *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100142B2C;
  block[3] = &unk_1002CDEF0;
  objc_copyWeak(&v10, &location);
  v6 = v4;
  v9 = v6;
  dispatch_async(v5, block);

  v7 = [(AccessoryAction *)self accessory];
  [(AccessoryAction *)self _performAction:v7 waitForConnection:[(AccessoryAction *)self requiresConnectivity]];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_enqueueQCAction
{
  v3 = [(AccessoryAction *)self accessory];
  v4 = [(AccessoryAction *)self account];
  v5 = [FMDActingRequestDecorator alloc];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100142D58;
  v17[3] = &unk_1002CD580;
  v18 = v3;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100142E0C;
  v14[3] = &unk_1002CDF18;
  v15 = v4;
  v16 = v18;
  v6 = v18;
  v7 = v4;
  v8 = [(FMDActingRequestDecorator *)v5 initWithDeviceContextGenerator:v17 deviceInfoGenerator:v14 serverContextGenerator:0 requestHeaderGenerator:0];
  v9 = [(AccessoryAction *)self serverInteractionController];
  v10 = [[QCAction alloc] initWithAccount:v7 shutdownActivityPending:0 serverInteractionController:v9];
  v11 = [v6 commandContext];
  [(QCAction *)v10 setCommandContext:v11];

  [(QCAction *)v10 setRequestDecorator:v8];
  v12 = +[ActionManager sharedManager];
  v13 = [v12 enqueueAction:v10];
}

- (void)_performAction:(id)a3 waitForConnection:(BOOL)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v7 = [(AccessoryAction *)self serialQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100142F60;
  v9[3] = &unk_1002CDF40;
  objc_copyWeak(&v11, &location);
  v10 = v6;
  v12 = a4;
  v8 = v6;
  dispatch_async(v7, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)accessoryDidUpdate:(id)a3
{
  v4 = a3;
  [(AccessoryAction *)self _performAction:v4 waitForConnection:[(AccessoryAction *)self requiresConnectivity]];
}

- (void)accessoryDidPair:(id)a3
{
  v4 = a3;
  [(AccessoryAction *)self _performAction:v4 waitForConnection:[(AccessoryAction *)self requiresConnectivity]];
}

- (void)accessoryDidUnpair:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(AccessoryAction *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001432B8;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (FMDServerInteractionController)serverInteractionController
{
  WeakRetained = objc_loadWeakRetained(&self->_serverInteractionController);

  return WeakRetained;
}

@end