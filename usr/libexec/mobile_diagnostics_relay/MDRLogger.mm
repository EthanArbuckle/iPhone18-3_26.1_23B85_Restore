@interface MDRLogger
+ (id)sharedInstance;
- (MDRLogger)init;
- (id)getLogger:(id)logger;
@end

@implementation MDRLogger

- (MDRLogger)init
{
  v6.receiver = self;
  v6.super_class = MDRLogger;
  v2 = [(MDRLogger *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    loggerDict = v2->_loggerDict;
    v2->_loggerDict = v3;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_100026488 != -1)
  {
    sub_100012C10();
  }

  v3 = qword_100026490;

  return v3;
}

- (id)getLogger:(id)logger
{
  loggerCopy = logger;
  v5 = self->_loggerDict;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_loggerDict objectForKey:loggerCopy];

  if (!v6)
  {
    v7 = os_log_create("com.apple.MobileDiagnosticsRelay", [loggerCopy UTF8String]);
    [(NSMutableDictionary *)self->_loggerDict setValue:v7 forKey:loggerCopy];
  }

  v8 = [(NSMutableDictionary *)self->_loggerDict objectForKey:loggerCopy];
  objc_sync_exit(v5);

  return v8;
}

@end