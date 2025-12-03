@interface NFWalletPresentationSettingsPassKit
+ (id)defaultSetting;
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
- (NFWalletPresentationSettingsPassKit)initWithSuiteName:(id)name;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation NFWalletPresentationSettingsPassKit

+ (id)defaultSetting
{
  v2 = [[NFWalletPresentationSettingsPassKit alloc] initWithSuiteName:@"com.apple.passd.class-d"];

  return v2;
}

- (NFWalletPresentationSettingsPassKit)initWithSuiteName:(id)name
{
  v8.receiver = self;
  v8.super_class = NFWalletPresentationSettingsPassKit;
  v3 = [(NFWalletPresentationSettings *)&v8 initWithSuiteName:name];
  v4 = v3;
  if (v3)
  {
    defaults = [(NFWalletPresentationSettings *)v3 defaults];
    [defaults addObserver:v4 forKeyPath:@"pre-arm-available" options:5 context:off_10035D500];

    v6 = v4;
  }

  return v4;
}

- (void)dealloc
{
  defaults = [(NFWalletPresentationSettings *)self defaults];
  [defaults removeObserver:self forKeyPath:@"pre-arm-available"];

  v4.receiver = self;
  v4.super_class = NFWalletPresentationSettingsPassKit;
  [(NFWalletPresentationSettingsPassKit *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_10035D500 != context)
  {
    v31.receiver = self;
    v31.super_class = NFWalletPresentationSettingsPassKit;
    [(NFWalletPresentationSettingsPassKit *)&v31 observeValueForKeyPath:path ofObject:object change:change context:?];
    return;
  }

  v8 = [change objectForKeyedSubscript:{NSKeyValueChangeNewKey, object}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v8 BOOLValue];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v11 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      isEligible = [(NFWalletPresentationSettingsPassKit *)self isEligible];
      v16 = 45;
      if (isMetaClass)
      {
        v16 = 43;
      }

      v11(6, "%c[%{public}s %{public}s]:%i existing=%{public}d, new=%{public}d", v16, ClassName, Name, 221, isEligible, bOOLValue);
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
    isEligible2 = [(NFWalletPresentationSettingsPassKit *)self isEligible];
    v42 = 1026;
    v43 = bOOLValue;
LABEL_23:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i existing=%{public}d, new=%{public}d", buf, 0x2Eu);
LABEL_24:

    [(NFWalletPresentationSettingsPassKit *)self setIsEligible:bOOLValue];
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v8 BOOLValue];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFLogGetLogger();
    if (v20)
    {
      v21 = v20;
      v22 = object_getClass(self);
      v23 = class_isMetaClass(v22);
      v24 = object_getClassName(self);
      v25 = sel_getName(a2);
      isEligible3 = [(NFWalletPresentationSettingsPassKit *)self isEligible];
      v26 = 45;
      if (v23)
      {
        v26 = 43;
      }

      v21(6, "%c[%{public}s %{public}s]:%i existing=%{public}d, new=%{public}d", v26, v24, v25, 225, isEligible3, bOOLValue);
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
    isEligible2 = [(NFWalletPresentationSettingsPassKit *)self isEligible];
    v42 = 1026;
    v43 = bOOLValue;
    goto LABEL_23;
  }

LABEL_25:
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___NFWalletPresentationSettingsPassKit;
  keyCopy = key;
  v4 = objc_msgSendSuper2(&v8, "keyPathsForValuesAffectingValueForKey:", keyCopy);
  v5 = [keyCopy isEqualToString:{@"isEligibleForDoubleClick", v8.receiver, v8.super_class}];

  if (v5)
  {
    v6 = [v4 setByAddingObject:@"isEligible"];

    v4 = v6;
  }

  return v4;
}

@end