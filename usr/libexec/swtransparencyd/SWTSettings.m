@interface SWTSettings
- (SWTSettings)init;
- (SWTSettings)initWithTransparencySettings:(id)a3;
- (void)determineATEnvironmentFromPCCEnvironment:(id)a3 completion:(id)a4;
- (void)initializeATEnvironmentWithCompletion:(id)a3;
- (void)readPCCPreferences:(id)a3;
@end

@implementation SWTSettings

- (SWTSettings)initWithTransparencySettings:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SWTSettings;
  v5 = [(SWTSettings *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SWTSettings *)v5 setPccEnvironment:0];
    [(SWTSettings *)v6 setAtEnvironment:0];
    [(SWTSettings *)v6 setTransparencySettings:v4];
  }

  return v6;
}

- (SWTSettings)init
{
  v3 = objc_alloc_init(TransparencySettings);
  v4 = [(SWTSettings *)self initWithTransparencySettings:v3];

  return v4;
}

- (void)readPCCPreferences:(id)a3
{
  v4 = a3;
  if (qword_100156100 != -1)
  {
    sub_1000F2E94();
  }

  v5 = qword_100156108;
  if (os_log_type_enabled(qword_100156108, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Using PrivateCloudCompute soft-link fallback", buf, 2u);
  }

  v6 = CFPreferencesCopyAppValue(@"environment", @"com.apple.privateCloudCompute");
  if (v6 && (v7 = v6, v8 = CFGetTypeID(v6), v8 == CFStringGetTypeID()))
  {
    [(SWTSettings *)self determineATEnvironmentFromPCCEnvironment:v7 completion:v4];
  }

  else
  {
    if (qword_100156100 != -1)
    {
      sub_1000F2EA8();
    }

    v9 = qword_100156108;
    if (os_log_type_enabled(qword_100156108, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Using PrivateCloudCompute environment (soft-link fallback): carry", v10, 2u);
    }

    [(SWTSettings *)self setPccEnvironment:6];
    [(SWTSettings *)self setAtEnvironment:[(SWTSettings *)self pccEnvironment]];
    v4[2](v4, [(SWTSettings *)self atEnvironment]);
  }
}

- (void)determineATEnvironmentFromPCCEnvironment:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(__CFString *)v6 isEqualToString:@"dev"]& 1) != 0)
  {
    v8 = 1;
LABEL_10:
    [(SWTSettings *)self setPccEnvironment:v8];
    goto LABEL_11;
  }

  if (([(__CFString *)v6 isEqualToString:@"ephemeral"]& 1) != 0)
  {
    v8 = 2;
    goto LABEL_10;
  }

  if (([(__CFString *)v6 isEqualToString:@"perf"]& 1) != 0)
  {
    v8 = 3;
    goto LABEL_10;
  }

  if (([(__CFString *)v6 isEqualToString:@"qa"]& 1) != 0 || ([(__CFString *)v6 isEqual:@"quarantine"]& 1) != 0)
  {
    v8 = 4;
    goto LABEL_10;
  }

  if (([(__CFString *)v6 isEqualToString:@"staging"]& 1) != 0)
  {
    v8 = 5;
    goto LABEL_10;
  }

  if (([(__CFString *)v6 isEqualToString:@"production"]& 1) != 0)
  {
    v8 = 7;
    goto LABEL_10;
  }

  if (([(__CFString *)v6 isEqualToString:@"qa2Primary"]& 1) != 0)
  {
    v8 = 8;
    goto LABEL_10;
  }

  if (([(__CFString *)v6 isEqualToString:@"qa2Internal"]& 1) != 0)
  {
    v8 = 9;
    goto LABEL_10;
  }

  if (([(__CFString *)v6 isEqual:@"carry"]& 1) != 0 || ([(__CFString *)v6 isEqual:@"uat"]& 1) != 0 || [(__CFString *)v6 isEqual:@"liveon"])
  {
    v8 = 6;
    goto LABEL_10;
  }

LABEL_11:
  if (![(SWTSettings *)self pccEnvironment])
  {
    [(SWTSettings *)self setPccEnvironment:7];

    v6 = @"production";
  }

  [(SWTSettings *)self setAtEnvironment:[(SWTSettings *)self pccEnvironment]];
  if (qword_100156100 != -1)
  {
    sub_1000F2ED0();
  }

  v9 = qword_100156108;
  if (os_log_type_enabled(qword_100156108, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Using PrivateCloudCompute environment: %{public}@", &v10, 0xCu);
  }

  v7[2](v7, [(SWTSettings *)self atEnvironment]);
}

- (void)initializeATEnvironmentWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SWTSettings *)self transparencySettings];
  v6 = [v5 allowsInternalSecurityPolicies];

  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = CFPreferencesCopyAppValue(@"ATEnvironment", @"com.apple.swtransparency");
  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = v7;
  v9 = CFGetTypeID(v7);
  if (v9 != CFStringGetTypeID())
  {
    goto LABEL_24;
  }

  if ([v8 isEqualToString:@"prod"])
  {
    v10 = 7;
LABEL_16:
    [(SWTSettings *)self setAtEnvironment:v10];
    goto LABEL_17;
  }

  if ([v8 isEqualToString:@"carry"])
  {
    v10 = 6;
    goto LABEL_16;
  }

  if ([v8 isEqualToString:@"QA1"])
  {
    v10 = 5;
    goto LABEL_16;
  }

  if ([v8 isEqualToString:@"InternalQA1"])
  {
    v10 = 1;
    goto LABEL_16;
  }

  if ([v8 isEqualToString:@"QA2"])
  {
    v10 = 8;
    goto LABEL_16;
  }

  if ([v8 isEqualToString:@"InternalQA2"])
  {
    v10 = 9;
    goto LABEL_16;
  }

LABEL_17:
  if ([(SWTSettings *)self atEnvironment])
  {
    if (qword_100156100 != -1)
    {
      sub_1000F2EE4();
    }

    v11 = qword_100156108;
    if (os_log_type_enabled(qword_100156108, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Using PrivateCloudCompute environment (swt override): %{public}@", buf, 0xCu);
    }

    v4[2](v4, [(SWTSettings *)self atEnvironment]);
    goto LABEL_27;
  }

LABEL_24:
  if (![(SWTSettings *)self pccEnvironment])
  {
    v8 = objc_alloc_init(PCCServerEnvironment);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100013D38;
    v12[3] = &unk_100132CA0;
    v12[4] = self;
    v13 = v4;
    [v8 selectedEnvironmentNameWithCompletionHandler:v12];

LABEL_27:
    goto LABEL_28;
  }

  [(SWTSettings *)self setAtEnvironment:[(SWTSettings *)self pccEnvironment]];
  v4[2](v4, [(SWTSettings *)self atEnvironment]);
LABEL_28:
}

@end