@interface PCSDelayedAction
- (PCSDelayedAction)initWithLabel:(id)a3 delay:(unint64_t)a4 operationQueue:(id)a5;
- (void)setAction:(id)a3;
- (void)setHoldTransaction:(BOOL)a3;
- (void)trigger;
@end

@implementation PCSDelayedAction

- (PCSDelayedAction)initWithLabel:(id)a3 delay:(unint64_t)a4 operationQueue:(id)a5
{
  v8 = a3;
  v9 = a5;
  v20.receiver = self;
  v20.super_class = PCSDelayedAction;
  v10 = [(PCSDelayedAction *)&v20 init];
  v11 = v10;
  if (v10)
  {
    [(PCSDelayedAction *)v10 setLabel:v8];
    objc_initWeak(&location, v11);
    objc_storeStrong(&v11->_operationQueue, a5);
    v11->_delayInSeconds = a4;
    v12 = sub_10000E158();
    v13 = dispatch_source_create(&_dispatch_source_type_data_add, 0, 0, v12);
    waitSource = v11->_waitSource;
    v11->_waitSource = v13;

    v15 = v11->_waitSource;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000E19C;
    v17[3] = &unk_100018998;
    objc_copyWeak(&v18, &location);
    dispatch_source_set_event_handler(v15, v17);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (void)setAction:(id)a3
{
  if (!self->_running)
  {
    v5 = objc_retainBlock(a3);
    actionOnTrigger = self->_actionOnTrigger;
    self->_actionOnTrigger = v5;

    _objc_release_x1();
  }
}

- (void)setHoldTransaction:(BOOL)a3
{
  v5 = sub_10000E158();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000E4FC;
  v6[3] = &unk_100018E60;
  v6[4] = self;
  v7 = a3;
  dispatch_sync(v5, v6);
}

- (void)trigger
{
  objc_initWeak(&location, self);
  v3 = sub_10000E158();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E5CC;
  block[3] = &unk_100018D48;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

@end