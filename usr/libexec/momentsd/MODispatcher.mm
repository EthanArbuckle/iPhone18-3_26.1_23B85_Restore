@interface MODispatcher
- (MODispatcher)initWithNotifier:(id)notifier;
- (void)onNotification:(int)notification withPayload:(id)payload;
- (void)registerForNotification:(int)notification withHandler:(id)handler;
- (void)unregisterForNotification:(int)notification;
@end

@implementation MODispatcher

- (MODispatcher)initWithNotifier:(id)notifier
{
  notifierCopy = notifier;
  v15.receiver = self;
  v15.super_class = MODispatcher;
  v6 = [(MODispatcher *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notifier, notifier);
    v8 = objc_opt_new();
    handlerMap = v7->_handlerMap;
    v7->_handlerMap = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("MODispatcher", v10);
    queue = v7->_queue;
    v7->_queue = v11;

    v13 = v7;
  }

  return v7;
}

- (void)registerForNotification:(int)notification withHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __52__MODispatcher_registerForNotification_withHandler___block_invoke;
  v9[3] = &unk_10033ECE8;
  objc_copyWeak(&v11, &location);
  notificationCopy = notification;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(queue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __52__MODispatcher_registerForNotification_withHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = WeakRetained[2];
    v4 = [NSNumber numberWithInt:*(a1 + 48)];
    v5 = [v3 objectForKey:v4];
    if (v5)
    {
    }

    else
    {
      v6 = *(a1 + 32);

      WeakRetained = v10;
      if (!v6)
      {
        goto LABEL_7;
      }

      v7 = *(v10 + 2);
      v8 = objc_retainBlock(*(a1 + 32));
      v9 = [NSNumber numberWithInt:*(a1 + 48)];
      [v7 setObject:v8 forKey:v9];

      [*(v10 + 1) registerDispatcher:v10 forNotification:*(a1 + 48)];
    }

    WeakRetained = v10;
  }

LABEL_7:
}

- (void)unregisterForNotification:(int)notification
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __42__MODispatcher_unregisterForNotification___block_invoke;
  block[3] = &unk_10033ED10;
  objc_copyWeak(&v7, &location);
  notificationCopy = notification;
  dispatch_async(queue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __42__MODispatcher_unregisterForNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained[2];
    v5 = WeakRetained;
    v4 = [NSNumber numberWithInt:*(a1 + 40)];
    [v3 removeObjectForKey:v4];

    [v5[1] unregisterDispatcher:v5];
    WeakRetained = v5;
  }
}

- (void)onNotification:(int)notification withPayload:(id)payload
{
  payloadCopy = payload;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __62__MODispatcher_MONotifierUtility__onNotification_withPayload___block_invoke;
  v9[3] = &unk_10033ED38;
  objc_copyWeak(&v11, &location);
  notificationCopy = notification;
  v10 = payloadCopy;
  v8 = payloadCopy;
  dispatch_async(queue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __62__MODispatcher_MONotifierUtility__onNotification_withPayload___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = WeakRetained[2];
    v4 = [NSNumber numberWithInt:*(a1 + 48)];
    v5 = [v3 objectForKey:v4];

    if (v5)
    {
      v5[2](v5, *(a1 + 48), *(a1 + 32));
    }

    WeakRetained = v6;
  }
}

@end