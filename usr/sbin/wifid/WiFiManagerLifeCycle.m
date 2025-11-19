@interface WiFiManagerLifeCycle
- (WiFiManagerLifeCycle)init;
- (id)handleSignal:(int)a3 onQueue:(id)a4;
- (void)dealloc;
- (void)startOnQueue:(id)a3 group:(id)a4;
- (void)stopOnQueue:(id)a3;
@end

@implementation WiFiManagerLifeCycle

- (WiFiManagerLifeCycle)init
{
  v5.receiver = self;
  v5.super_class = WiFiManagerLifeCycle;
  v2 = [(WiFiManagerLifeCycle *)&v5 init];
  if (!v2 || (v3 = objc_opt_new(), (v2->_signals = v3) == 0))
  {

    return 0;
  }

  return v2;
}

- (void)dealloc
{
  self->_signals = 0;
  v3.receiver = self;
  v3.super_class = WiFiManagerLifeCycle;
  [(WiFiManagerLifeCycle *)&v3 dealloc];
}

- (void)startOnQueue:(id)a3 group:(id)a4
{
  if (a3)
  {
    NSLog(@"----- WiFiManager starting, version: %s -----", a2, "WiFiManager-1980.15 Oct 22 2025 22:39:39");
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"----- WiFiManager starting, version: %s -----", "WiFiManager-1980.15 Oct 22 2025 22:39:39"}];
    }

    objc_autoreleasePoolPop(v7);
    v8 = sub_10006F8F0(kCFAllocatorDefault, a3);
    self->_manager = v8;
    if (!v8)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = off_100298C40;
      if (!off_100298C40)
      {
        goto LABEL_8;
      }

      v12 = "[WiFiManagerLifeCycle startOnQueue:group:]";
      v11 = "%s: Error: WiFiManagerCreate failed";
      goto LABEL_7;
    }

    sub_1001740C0(&self->super.isa, a3, &self->_manager, a4);
  }

  v9 = objc_autoreleasePoolPush();
  v10 = off_100298C40;
  if (off_100298C40)
  {
    v11 = "WiFiManager started";
LABEL_7:
    [v10 WFLog:4 message:{v11, v12}];
  }

LABEL_8:

  objc_autoreleasePoolPop(v9);
}

- (void)stopOnQueue:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"----- WiFiManager stopping, version: %s -----", "WiFiManager-1980.15 Oct 22 2025 22:39:39"}];
  }

  objc_autoreleasePoolPop(v5);
  sub_100076304(self->_manager, a3);
  sub_100076284(self->_manager, 0);
  [(NSMutableArray *)self->_signals enumerateObjectsUsingBlock:&stru_1002610C8];
  manager = self->_manager;
  if (manager)
  {
    CFRelease(manager);
    self->_manager = 0;
  }

  NSLog(@"WiFiManager stopped");
}

- (id)handleSignal:(int)a3 onQueue:(id)a4
{
  signal(a3, 1);
  v7 = dispatch_source_create(&_dispatch_source_type_signal, a3, 0, a4);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10009A0FC;
  handler[3] = &unk_1002610F0;
  v10 = a3;
  handler[4] = self;
  handler[5] = a4;
  dispatch_source_set_event_handler(v7, handler);
  dispatch_activate(v7);
  return v7;
}

@end