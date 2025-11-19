@interface DMDInviteUserToVPPOperation
+ (BOOL)validateRequest:(id)a3 error:(id *)a4;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDInviteUserToVPPOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDInviteUserToVPPOperation;
  [(DMDInviteUserToVPPOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

+ (BOOL)validateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___DMDInviteUserToVPPOperation;
  if (!objc_msgSendSuper2(&v13, "validateRequest:error:", v6, a4))
  {
    goto LABEL_10;
  }

  v7 = [v6 URL];

  if (!v7)
  {
    if (!a4)
    {
      goto LABEL_11;
    }

    v16 = DMFInvalidParameterErrorKey;
    v17 = @"request.URL";
    v9 = &v17;
    v10 = &v16;
    goto LABEL_9;
  }

  v8 = [v6 originator];

  if (!v8)
  {
    if (!a4)
    {
      goto LABEL_11;
    }

    v14 = DMFInvalidParameterErrorKey;
    v15 = @"request.originator";
    v9 = &v15;
    v10 = &v14;
LABEL_9:
    v11 = [NSDictionary dictionaryWithObjects:v9 forKeys:v10 count:1];
    *a4 = DMFErrorWithCodeAndUserInfo();

LABEL_10:
    LOBYTE(a4) = 0;
    goto LABEL_11;
  }

  LOBYTE(a4) = 1;
LABEL_11:

  return a4;
}

- (void)runWithRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 URL];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v31 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invite user to VPP: %{private}@", buf, 0xCu);
  }

  if ([v5 conformsToOverridePatternWithKey:@"vpp-licensing-invitation-url-pattern"])
  {
    v6 = +[MCProfileConnection sharedConnection];
    v7 = [v6 restrictedAppBundleIDs];
    v8 = [v6 effectiveWhitelistedAppBundleIDs];
    v9 = MCAppStoreBundleIdentifier;
    if (([v7 containsObject:MCAppStoreBundleIdentifier] & 1) != 0 || v8 && (objc_msgSend(v8, "containsObject:", v9) & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000848F8();
      }

      v10 = self;
      v11 = 1400;
    }

    else
    {
      if (byte_1000FF118 != 1)
      {
        byte_1000FF118 = 1;
        v25 = [DMDPowerAssertion assertionForOperation:@"DMDInviteUserToVPPOperation: run"];
        v23 = objc_opt_new();
        v12 = [NSBundle bundleForClass:objc_opt_class()];
        v24 = [v12 localizedStringForKey:@"%@ would like to assign apps and books to you." value:&stru_1000D0428 table:@"DMFNotifications"];

        v13 = [NSBundle bundleForClass:objc_opt_class()];
        v14 = [v13 localizedStringForKey:@"Allow App and Book Assignment?" value:&stru_1000D0428 table:@"DMFNotifications"];
        [v23 setHeader:v14];

        v15 = [v4 originator];
        v16 = [NSString stringWithFormat:v24, v15];
        [v23 setMessage:v16];

        v17 = [NSBundle bundleForClass:objc_opt_class()];
        v18 = [v17 localizedStringForKey:@"Continue" value:&stru_1000D0428 table:@"DMFNotifications"];
        [v23 setDefaultButtonTitle:v18];

        v19 = [NSBundle bundleForClass:objc_opt_class()];
        v20 = [v19 localizedStringForKey:@"Cancel" value:&stru_1000D0428 table:@"DMFNotifications"];
        [v23 setAlternateButtonTitle:v20];

        v21 = +[DMDUserNotificationController sharedController];
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_10004D56C;
        v26[3] = &unk_1000CF368;
        v27 = v5;
        v28 = self;
        v29 = v25;
        v22 = v25;
        [v21 showNotification:v23 completion:v26];

        goto LABEL_16;
      }

      v10 = self;
      v11 = 1407;
    }

    [(DMDTaskOperation *)v10 endOperationWithDMFErrorCode:v11];
LABEL_16:

    goto LABEL_17;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000848B0();
  }

  [(DMDTaskOperation *)self endOperationWithDMFErrorCode:1402];
LABEL_17:
}

@end