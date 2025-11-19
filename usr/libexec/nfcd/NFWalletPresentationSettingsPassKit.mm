@interface NFWalletPresentationSettingsPassKit
+ (id)defaultSetting;
+ (id)keyPathsForValuesAffectingValueForKey:(id)a3;
- (NFWalletPresentationSettingsPassKit)initWithSuiteName:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation NFWalletPresentationSettingsPassKit

+ (id)defaultSetting
{
  v2 = [[NFWalletPresentationSettingsPassKit alloc] initWithSuiteName:@"com.apple.passd.class-d"];

  return v2;
}

- (NFWalletPresentationSettingsPassKit)initWithSuiteName:(id)a3
{
  v8.receiver = self;
  v8.super_class = NFWalletPresentationSettingsPassKit;
  v3 = [(NFWalletPresentationSettings *)&v8 initWithSuiteName:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(NFWalletPresentationSettings *)v3 defaults];
    [v5 addObserver:v4 forKeyPath:@"pre-arm-available" options:5 context:off_10035D500];

    v6 = v4;
  }

  return v4;
}

- (void)dealloc
{
  v3 = [(NFWalletPresentationSettings *)self defaults];
  [v3 removeObserver:self forKeyPath:@"pre-arm-available"];

  v4.receiver = self;
  v4.super_class = NFWalletPresentationSettingsPassKit;
  [(NFWalletPresentationSettingsPassKit *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_10035D500 != a6)
  {
    v31.receiver = self;
    v31.super_class = NFWalletPresentationSettingsPassKit;
    [(NFWalletPresentationSettingsPassKit *)&v31 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
    return;
  }

  v8 = [a5 objectForKeyedSubscript:{NSKeyValueChangeNewKey, a4}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 BOOLValue];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v11 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v29 = [(NFWalletPresentationSettingsPassKit *)self isEligible];
      v16 = 45;
      if (isMetaClass)
      {
        v16 = 43;
      }

      v11(6, "%c[%{public}s %{public}s]:%i existing=%{public}d, new=%{public}d", v16, ClassName, Name, 221, v29, v9);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v18 = object_getClass(self);
    if (class_isMetaClass(v18))
    {
      v19 = 43;
    }

    else
    {
      v19 = 45;
    }

    *buf = 67110402;
    v33 = v19;
    v34 = 2082;
    v35 = object_getClassName(self);
    v36 = 2082;
    v37 = sel_getName(a2);
    v38 = 1024;
    v39 = 221;
    v40 = 1026;
    v41 = [(NFWalletPresentationSettingsPassKit *)self isEligible];
    v42 = 1026;
    v43 = v9;
LABEL_23:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i existing=%{public}d, new=%{public}d", buf, 0x2Eu);
LABEL_24:

    [(NFWalletPresentationSettingsPassKit *)self setIsEligible:v9];
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 BOOLValue];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFLogGetLogger();
    if (v20)
    {
      v21 = v20;
      v22 = object_getClass(self);
      v23 = class_isMetaClass(v22);
      v24 = object_getClassName(self);
      v25 = sel_getName(a2);
      v30 = [(NFWalletPresentationSettingsPassKit *)self isEligible];
      v26 = 45;
      if (v23)
      {
        v26 = 43;
      }

      v21(6, "%c[%{public}s %{public}s]:%i existing=%{public}d, new=%{public}d", v26, v24, v25, 225, v30, v9);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v27 = object_getClass(self);
    if (class_isMetaClass(v27))
    {
      v28 = 43;
    }

    else
    {
      v28 = 45;
    }

    *buf = 67110402;
    v33 = v28;
    v34 = 2082;
    v35 = object_getClassName(self);
    v36 = 2082;
    v37 = sel_getName(a2);
    v38 = 1024;
    v39 = 225;
    v40 = 1026;
    v41 = [(NFWalletPresentationSettingsPassKit *)self isEligible];
    v42 = 1026;
    v43 = v9;
    goto LABEL_23;
  }

LABEL_25:
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)a3
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___NFWalletPresentationSettingsPassKit;
  v3 = a3;
  v4 = objc_msgSendSuper2(&v8, "keyPathsForValuesAffectingValueForKey:", v3);
  v5 = [v3 isEqualToString:{@"isEligibleForDoubleClick", v8.receiver, v8.super_class}];

  if (v5)
  {
    v6 = [v4 setByAddingObject:@"isEligible"];

    v4 = v6;
  }

  return v4;
}

@end