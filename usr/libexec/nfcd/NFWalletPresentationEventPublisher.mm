@interface NFWalletPresentationEventPublisher
- (NFWalletPresentationEventPublisher)init;
- (unint64_t)walletDomain;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation NFWalletPresentationEventPublisher

- (unint64_t)walletDomain
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003370;
  v5[3] = &unk_1003161D8;
  v5[4] = self;
  v5[5] = &v6;
  os_unfair_lock_lock(&self->_updateLock);
  sub_100003370(v5);
  os_unfair_lock_unlock(&self->_updateLock);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NFWalletPresentationEventPublisher)init
{
  v29.receiver = self;
  v29.super_class = NFWalletPresentationEventPublisher;
  v3 = [(NFWalletPresentationEventPublisher *)&v29 init];
  if (v3)
  {
    v4 = +[NFWalletPresentationSettingsPassKit defaultSetting];
    passkitDefaults = v3->_passkitDefaults;
    v3->_passkitDefaults = v4;

    v6 = v3->_passkitDefaults;
    v7 = +[NFWalletPresentationSettingsSESD defaultSetting];
    sesdDefaults = v3->_sesdDefaults;
    v3->_sesdDefaults = v7;

    v9 = v3->_sesdDefaults;
    if (v6)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 67240448;
        v31 = v6 == 0;
        v32 = 1026;
        LODWORD(v33) = v9 == 0;
        _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "default is nil: PassKit=%{public}d, SESD=%{public}d", buf, 0xEu);
      }
    }

    v12 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm.wallet.presentation"];
    publishDefaults = v3->_publishDefaults;
    v3->_publishDefaults = v12;

    v14 = [(NSUserDefaults *)v3->_publishDefaults objectForKey:@"walletDoubleButtonPressedConsumerAvailable"];

    if (!v14)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v16 = Logger;
        Class = object_getClass(v3);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v3);
        Name = sel_getName(a2);
        v20 = 45;
        if (isMetaClass)
        {
          v20 = 43;
        }

        v16(5, "%c[%{public}s %{public}s]:%i Init default", v20, ClassName, Name, 95);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v21 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = object_getClass(v3);
        if (class_isMetaClass(v22))
        {
          v23 = 43;
        }

        else
        {
          v23 = 45;
        }

        v24 = object_getClassName(v3);
        v25 = sel_getName(a2);
        *buf = 67109890;
        v31 = v23;
        v32 = 2082;
        v33 = v24;
        v34 = 2082;
        v35 = v25;
        v36 = 1024;
        v37 = 95;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Init default", buf, 0x22u);
      }

      [(NSUserDefaults *)v3->_publishDefaults setBool:0 forKey:@"walletDoubleButtonPressedConsumerAvailable"];
    }

    v3->_updateLock._os_unfair_lock_opaque = 0;
    [(NFWalletPresentationSettingsPassKit *)v3->_passkitDefaults addObserver:v3 forKeyPath:@"isEligibleForDoubleClick" options:5 context:off_10035B308];
    [(NFWalletPresentationSettingsSESD *)v3->_sesdDefaults addObserver:v3 forKeyPath:@"isEligibleForDoubleClick" options:5 context:off_10035B310];
    [(NFWalletPresentationSettingsSESD *)v3->_sesdDefaults addObserver:v3 forKeyPath:@"walletDomain" options:5 context:off_10035B318];
    v26 = v3;
  }

  return v3;
}

- (void)dealloc
{
  [(NFWalletPresentationSettingsPassKit *)self->_passkitDefaults removeObserver:self forKeyPath:@"isEligibleForDoubleClick"];
  [(NFWalletPresentationSettingsSESD *)self->_sesdDefaults removeObserver:self forKeyPath:@"isEligibleForDoubleClick"];
  [(NFWalletPresentationSettingsSESD *)self->_sesdDefaults removeObserver:self forKeyPath:@"walletDomain"];
  v3.receiver = self;
  v3.super_class = NFWalletPresentationEventPublisher;
  [(NFWalletPresentationEventPublisher *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v64 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (off_10035B310 == a6 || off_10035B308 == a6)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    v16 = "PK";
    if (Logger)
    {
      v17 = Logger;
      v63 = v11;
      Class = object_getClass(self);
      if (class_isMetaClass(Class))
      {
        v19 = 43;
      }

      else
      {
        v19 = 45;
      }

      ClassName = object_getClassName(self);
      v21 = a2;
      Name = sel_getName(a2);
      if (off_10035B310 == a6)
      {
        v16 = "SESD";
      }

      if (self)
      {
        sesdDefaults = self->_sesdDefaults;
      }

      else
      {
        sesdDefaults = 0;
      }

      v24 = sesdDefaults;
      v17(6, "%c[%{public}s %{public}s]:%i %{public}sDoubleClick changed=%{public}@, domain=%{public}lu", v19, ClassName, Name, 190, v16, v13, [(NFWalletPresentationSettingsSESD *)v24 walletDomain]);

      v11 = v63;
      a2 = v21;
      v16 = "PK";
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v11;
      v27 = object_getClass(self);
      if (class_isMetaClass(v27))
      {
        v28 = 43;
      }

      else
      {
        v28 = 45;
      }

      v29 = object_getClassName(self);
      v30 = a2;
      v31 = sel_getName(a2);
      if (off_10035B310 == a6)
      {
        v16 = "SESD";
      }

      if (self)
      {
        v32 = self->_sesdDefaults;
      }

      else
      {
        v32 = 0;
      }

      v33 = [(NFWalletPresentationSettingsSESD *)v32 walletDomain];
      *buf = 67110658;
      *&buf[4] = v28;
      *v71 = 2082;
      *&v71[2] = v29;
      *&v71[10] = 2082;
      *&v71[12] = v31;
      *&v71[20] = 1024;
      *&v71[22] = 190;
      *&v71[26] = 2082;
      *&v71[28] = v16;
      *&v71[36] = 2114;
      *&v71[38] = v13;
      v72 = 2050;
      v73 = v33;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}sDoubleClick changed=%{public}@, domain=%{public}lu", buf, 0x40u);
      a2 = v30;
      v11 = v26;
    }

    v34 = [v13 objectForKeyedSubscript:NSKeyValueChangeNewKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v69[0] = _NSConcreteStackBlock;
      v69[1] = 3221225472;
      v69[2] = sub_1000484A0;
      v69[3] = &unk_100315F58;
      v69[4] = self;
      v69[5] = a2;
      os_unfair_lock_lock(&self->_updateLock);
      sub_1000484A0(v69);
      os_unfair_lock_unlock(&self->_updateLock);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        sub_100008160(self);
      }

      else
      {
        v36 = a2;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v37 = NFLogGetLogger();
        if (v37)
        {
          v38 = v37;
          v39 = object_getClass(self);
          isMetaClass = class_isMetaClass(v39);
          v41 = object_getClassName(self);
          v62 = sel_getName(v36);
          v42 = 45;
          if (isMetaClass)
          {
            v42 = 43;
          }

          v38(3, "%c[%{public}s %{public}s]:%i Unexpected state; dropping update", v42, v41, v62, 206);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v43 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = object_getClass(self);
          if (class_isMetaClass(v44))
          {
            v45 = 43;
          }

          else
          {
            v45 = 45;
          }

          v46 = object_getClassName(self);
          v47 = sel_getName(v36);
          *buf = 67109890;
          *&buf[4] = v45;
          *v71 = 2082;
          *&v71[2] = v46;
          *&v71[10] = 2082;
          *&v71[12] = v47;
          *&v71[20] = 1024;
          *&v71[22] = 206;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected state; dropping update", buf, 0x22u);
        }
      }
    }

    goto LABEL_43;
  }

  if (off_10035B320 == a6)
  {
    v34 = [v12 objectForKeyedSubscript:NSKeyValueChangeNewKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = sub_10004864C;
      v66[3] = &unk_100315F80;
      v66[4] = self;
      v67 = v34;
      v68 = a2;
      v35 = v34;
      os_unfair_lock_lock(&self->_updateLock);
      sub_10004864C(v66);
      os_unfair_lock_unlock(&self->_updateLock);

LABEL_62:
      goto LABEL_63;
    }

LABEL_43:

    goto LABEL_63;
  }

  if (off_10035B318 == a6)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v48 = NFLogGetLogger();
    if (v48)
    {
      v49 = v48;
      v50 = object_getClass(self);
      if (class_isMetaClass(v50))
      {
        v51 = 43;
      }

      else
      {
        v51 = 45;
      }

      v52 = object_getClassName(self);
      v53 = sel_getName(a2);
      if (self)
      {
        presenterAvailable = self->_presenterAvailable;
      }

      else
      {
        presenterAvailable = 0;
      }

      v49(6, "%c[%{public}s %{public}s]:%i walletDomain updated, change=%{public}@, presenterAvailable=%{public}d", v51, v52, v53, 237, v13, presenterAvailable);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v55 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v56 = object_getClass(self);
      if (class_isMetaClass(v56))
      {
        v57 = 43;
      }

      else
      {
        v57 = 45;
      }

      v58 = object_getClassName(self);
      v59 = sel_getName(a2);
      if (self)
      {
        v60 = self->_presenterAvailable;
      }

      else
      {
        v60 = 0;
      }

      *buf = 67110402;
      *&buf[4] = v57;
      *v71 = 2082;
      *&v71[2] = v58;
      *&v71[10] = 2082;
      *&v71[12] = v59;
      *&v71[20] = 1024;
      *&v71[22] = 237;
      *&v71[26] = 2114;
      *&v71[28] = v13;
      *&v71[36] = 1026;
      *&v71[38] = v60;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i walletDomain updated, change=%{public}@, presenterAvailable=%{public}d", buf, 0x32u);
    }

    v35 = [v13 objectForKeyedSubscript:NSKeyValueChangeNewKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v61 = [v35 unsignedIntValue];
      if (self)
      {
        *buf = _NSConcreteStackBlock;
        *v71 = 3221225472;
        *&v71[8] = sub_100048968;
        *&v71[16] = &unk_100315F58;
        *&v71[24] = self;
        *&v71[32] = v61;
        os_unfair_lock_lock(&self->_updateLock);
        (*&v71[8])(buf);
        os_unfair_lock_unlock(&self->_updateLock);
      }

      sub_100008160(self);
    }

    goto LABEL_62;
  }

  v65.receiver = self;
  v65.super_class = NFWalletPresentationEventPublisher;
  [(NFWalletPresentationEventPublisher *)&v65 observeValueForKeyPath:v64 ofObject:v11 change:v12 context:a6];
LABEL_63:
}

@end