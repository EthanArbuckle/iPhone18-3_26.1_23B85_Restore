@interface MCProfileDaemonManagedConfigurationHelper
- (void)removeApplicationWithBundleID:(id)d personaID:(id)iD completionHandler:(id)handler;
- (void)removeProfileWithIdentifier:(id)identifier async:(BOOL)async;
@end

@implementation MCProfileDaemonManagedConfigurationHelper

- (void)removeProfileWithIdentifier:(id)identifier async:(BOOL)async
{
  if (identifier)
  {
    identifierCopy = identifier;
    v6 = dispatch_semaphore_create(0);
    v7 = +[MCProfileServiceServer sharedServer];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10009A6B4;
    v9[3] = &unk_10011BEE0;
    v8 = v6;
    v10 = v8;
    [v7 removeProfileWithIdentifier:identifierCopy installationType:1 source:@"com.apple.managedconfiguration.profiled" completion:v9];

    if (!async)
    {
      dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    }
  }
}

- (void)removeApplicationWithBundleID:(id)d personaID:(id)iD completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  iDCopy = iD;
  v10 = +[DMFConnection currentUserConnection];
  v11 = objc_opt_new();
  [v11 setBundleIdentifier:dCopy];
  [v11 setPersonaIdentifier:iDCopy];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10009A7D8;
  v14[3] = &unk_10011D000;
  v15 = dCopy;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = dCopy;
  [v10 performRequest:v11 completion:v14];
}

@end