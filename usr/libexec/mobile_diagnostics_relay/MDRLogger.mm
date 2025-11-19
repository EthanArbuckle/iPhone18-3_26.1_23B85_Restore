@interface MDRLogger
+ (id)sharedInstance;
- (MDRLogger)init;
- (id)getLogger:(id)a3;
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

- (id)getLogger:(id)a3
{
  v4 = a3;
  v5 = self->_loggerDict;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_loggerDict objectForKey:v4];

  if (!v6)
  {
    v7 = os_log_create("com.apple.MobileDiagnosticsRelay", [v4 UTF8String]);
    [(NSMutableDictionary *)self->_loggerDict setValue:v7 forKey:v4];
  }

  v8 = [(NSMutableDictionary *)self->_loggerDict objectForKey:v4];
  objc_sync_exit(v5);

  return v8;
}

@end