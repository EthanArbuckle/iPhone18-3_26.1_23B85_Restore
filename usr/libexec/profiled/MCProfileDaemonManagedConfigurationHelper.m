@interface MCProfileDaemonManagedConfigurationHelper
- (void)removeApplicationWithBundleID:(id)a3 personaID:(id)a4 completionHandler:(id)a5;
- (void)removeProfileWithIdentifier:(id)a3 async:(BOOL)a4;
@end

@implementation MCProfileDaemonManagedConfigurationHelper

- (void)removeProfileWithIdentifier:(id)a3 async:(BOOL)a4
{
  if (a3)
  {
    v5 = a3;
    v6 = dispatch_semaphore_create(0);
    v7 = +[MCProfileServiceServer sharedServer];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10009A6B4;
    v9[3] = &unk_10011BEE0;
    v8 = v6;
    v10 = v8;
    [v7 removeProfileWithIdentifier:v5 installationType:1 source:@"com.apple.managedconfiguration.profiled" completion:v9];

    if (!a4)
    {
      dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    }
  }
}

- (void)removeApplicationWithBundleID:(id)a3 personaID:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = +[DMFConnection currentUserConnection];
  v11 = objc_opt_new();
  [v11 setBundleIdentifier:v7];
  [v11 setPersonaIdentifier:v9];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10009A7D8;
  v14[3] = &unk_10011D000;
  v15 = v7;
  v16 = v8;
  v12 = v8;
  v13 = v7;
  [v10 performRequest:v11 completion:v14];
}

@end