@interface LanguageAssetLoaderDaemon
+ (id)sharedInstance;
- (LanguageAssetLoaderDaemon)init;
- (void)_daemonDidLaunch;
- (void)_setupXPCListener;
- (void)dealloc;
- (void)run;
@end

@implementation LanguageAssetLoaderDaemon

+ (id)sharedInstance
{
  if (qword_10000C5B0 != -1)
  {
    sub_1000044C8();
  }

  return qword_10000C5A8;
}

- (LanguageAssetLoaderDaemon)init
{
  v3.receiver = self;
  v3.super_class = LanguageAssetLoaderDaemon;
  return [(LanguageAssetLoaderDaemon *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = LanguageAssetLoaderDaemon;
  [(LanguageAssetLoaderDaemon *)&v2 dealloc];
}

- (void)run
{
  [(LanguageAssetLoaderDaemon *)self _daemonDidLaunch];
  v2 = +[NSRunLoop mainRunLoop];

  [(NSRunLoop *)v2 run];
}

- (void)_daemonDidLaunch
{
  [+[LanguageAssetLoader sharedInstance](LanguageAssetLoader reset];

  [(LanguageAssetLoaderDaemon *)self _setupXPCEventHandler];
}

- (void)_setupXPCListener
{
  mach_service = xpc_connection_create_mach_service("com.apple.languageassetd", 0, 1uLL);
  xpc_connection_set_event_handler(mach_service, &stru_1000083A8);

  xpc_connection_resume(mach_service);
}

@end