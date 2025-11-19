@interface NFSystemPowerConsumptionMonitor
- (NFSystemPowerConsumptionMonitor)init;
@end

@implementation NFSystemPowerConsumptionMonitor

- (NFSystemPowerConsumptionMonitor)init
{
  v25.receiver = self;
  v25.super_class = NFSystemPowerConsumptionMonitor;
  v2 = [(NFSystemPowerConsumptionMonitor *)&v25 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_readerStarted = 0;
    v4 = objc_opt_new();
    delegates = v3->_delegates;
    v3->_delegates = v4;

    if ((sub_1001AC86C(v3, v6) & 1) == 0)
    {
      objc_initWeak(&location, v3);
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v8 = Logger;
        Class = object_getClass(v3);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v3);
        Name = sel_getName("initCoreDuet");
        v12 = 45;
        if (isMetaClass)
        {
          v12 = 43;
        }

        v8(6, "%c[%{public}s %{public}s]:%i Using CoreDuet", v12, ClassName, Name, 410);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = object_getClass(v3);
        if (class_isMetaClass(v14))
        {
          v15 = 43;
        }

        else
        {
          v15 = 45;
        }

        v16 = object_getClassName(v3);
        v17 = sel_getName("initCoreDuet");
        *buf = 67109890;
        *&buf[4] = v15;
        *v29 = 2082;
        *&v29[2] = v16;
        *&v29[10] = 2082;
        *&v29[12] = v17;
        *&v29[20] = 1024;
        *&v29[22] = 410;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Using CoreDuet", buf, 0x22u);
      }

      v26 = 0;
      v18 = [PPMClient sharedInstanceWithClientRepresentation:@"com.apple.duet.ppm-attr.stck" error:&v26];
      v19 = v26;
      ppmSharedInstance = v3->_ppmSharedInstance;
      v3->_ppmSharedInstance = v18;

      v21 = v3->_ppmSharedInstance;
      *buf = _NSConcreteStackBlock;
      *v29 = 3221225472;
      *&v29[8] = sub_1001AC404;
      *&v29[16] = &unk_10031B230;
      objc_copyWeak(&v29[24], &location);
      [(PPMClient *)v21 registerForNotificationsWithError:0 handler:buf];

      objc_destroyWeak(&v29[24]);
      objc_destroyWeak(&location);
    }
  }

  v22 = v3;

  return v22;
}

@end