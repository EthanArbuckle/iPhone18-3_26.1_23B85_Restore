@interface SECAngelProxy
+ (id)sharedInstance;
- (SECAngelProxy)init;
- (void)presentGDPRinAppWithBundleId:(id)a3 completion:(id)a4;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation SECAngelProxy

+ (id)sharedInstance
{
  if (qword_10050CD08 != -1)
  {
    sub_1003B0920();
  }

  v3 = qword_10050CD00;

  return v3;
}

- (SECAngelProxy)init
{
  v3.receiver = self;
  v3.super_class = SECAngelProxy;
  result = [(SECAngelProxy *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)presentGDPRinAppWithBundleId:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [RBSProcessPredicate predicateMatchingBundleIdentifier:v6];
  v28 = 0;
  v27 = [RBSProcessHandle handleForPredicate:v8 error:&v28];
  v9 = v28;

  if (v9)
  {
    v10 = SESDefaultLogObject();
    v11 = SESCreateAndLogError();
    v7[2](v7, v11);
  }

  else
  {
    v12 = [v27 legacyHandle];
    v10 = [SBSRemoteAlertPresentationTargetPredicate predicateForProcess:v12];

    v11 = [[SBSRemoteAlertPresentationTarget alloc] initWithTargetPredicate:v10];
    [v11 setShouldDismissOnUILock:1];
    [v11 setShouldDismissInSwitcher:0];
    v13 = objc_opt_new();
    [v13 setPresentationTarget:v11];
    v14 = [SBSRemoteAlertDefinition alloc];
    v15 = [RBSProcessIdentity identityForAngelJobLabel:@"com.apple.SESUIServiceApp"];
    v16 = [v14 initWithSceneProvidingProcess:v15 configurationIdentifier:@"SceneConfiguration"];

    v17 = objc_opt_new();
    v29 = SESUIServiceAppConfigurationKey;
    v30 = SESGDPRSceneConfigurationUserInfo;
    v18 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    [v17 setUserInfo:v18];

    v25 = v17;
    v26 = v16;
    v19 = [SBSRemoteAlertHandle newHandleWithDefinition:v16 configurationContext:v17];
    os_unfair_lock_lock(&self->_lock);
    [v19 registerObserver:self];
    gdprCompletion = self->_gdprCompletion;
    if (gdprCompletion)
    {
      v21 = SESDefaultLogObject();
      v22 = SESCreateAndLogError();
      gdprCompletion[2](gdprCompletion, v22);

      v9 = 0;
    }

    v23 = objc_retainBlock(v7);
    v24 = self->_gdprCompletion;
    self->_gdprCompletion = v23;

    [v19 activateWithContext:v13];
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v3 = SESDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "We are showing our glorious GDPR sheet", v4, 2u);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "GDPR Dismissed!", v7, 2u);
  }

  gdprCompletion = self->_gdprCompletion;
  if (gdprCompletion)
  {
    gdprCompletion[2](gdprCompletion, 0);
    v6 = self->_gdprCompletion;
    self->_gdprCompletion = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  os_unfair_lock_lock(&self->_lock);
  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "GDPR Presentment crashed?", v10, 2u);
  }

  gdprCompletion = self->_gdprCompletion;
  if (gdprCompletion)
  {
    v7 = SESDefaultLogObject();
    v8 = SESCreateAndLogError();
    gdprCompletion[2](gdprCompletion, v8);

    v9 = self->_gdprCompletion;
    self->_gdprCompletion = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end