@interface CDRapportListener
- (CDRapportListener)init;
- (void)_activated;
- (void)_handleEvent:(id)event;
- (void)_invalidated;
- (void)activate;
- (void)invalidate;
@end

@implementation CDRapportListener

- (CDRapportListener)init
{
  v5.receiver = self;
  v5.super_class = CDRapportListener;
  v2 = [(CDRapportListener *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v3->_activateCalledAtomic = 0;
  }

  return v3;
}

- (void)activate
{
  atomic_store(1u, &self->_activateCalledAtomic);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011638;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000116C0;
  block[3] = &unk_100089E20;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  objc_initWeak(&location, self);
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100011798;
  v4[3] = &unk_10008A708;
  objc_copyWeak(&v5, &location);
  xpc_set_event_stream_handler("com.apple.rapport.matching", dispatchQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    deviceFoundHandler = self->_deviceFoundHandler;
    self->_deviceFoundHandler = 0;

    self->_invalidateDone = 1;
  }
}

- (void)_handleEvent:(id)event
{
  xdict = event;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  v5 = xpc_dictionary_get_string(xdict, "deviceID");
  if (string)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_8;
  }

  deviceFoundHandler = self->_deviceFoundHandler;
  if (!deviceFoundHandler)
  {
    goto LABEL_8;
  }

  v8 = v5;
  if (!strcmp(string, "CompanionAuthenticationDiscovery"))
  {
    v10 = 1;
  }

  else
  {
    if (strcmp(string, "LegacyAppSignInDiscovery"))
    {
LABEL_8:
      reply = +[_TtC10companiond13CPSDaemonShim shared];
      [reply handleXPCEvent:xdict];
LABEL_9:

      goto LABEL_10;
    }

    v10 = 2;
  }

  v11 = [NSString stringWithUTF8String:v8];
  deviceFoundHandler[2](deviceFoundHandler, v11, v10);

  if (xpc_dictionary_get_BOOL(xdict, "replyRequired"))
  {
    reply = xpc_dictionary_create_reply(xdict);
    if (reply)
    {
      xpc_dictionary_send_reply();
    }

    goto LABEL_9;
  }

LABEL_10:
}

@end