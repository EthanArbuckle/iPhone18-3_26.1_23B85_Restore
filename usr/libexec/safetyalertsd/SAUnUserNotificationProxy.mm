@interface SAUnUserNotificationProxy
- (SAUnUserNotificationProxy)initWithQueue:(id)queue bundleIdentifier:(const char *)identifier authorizationOption:(unint64_t)option interruptionLevel:(unint64_t)level extension:(const char *)extension categoryName:(const char *)name analyticsRef:(shared_ptr<SACoreAnalytics>)ref;
- (id).cxx_construct;
- (void)postIgneousRichNotification:(id)notification;
- (void)postIgneousTextNotification:(id)notification;
- (void)postNotification:(id)notification;
@end

@implementation SAUnUserNotificationProxy

- (SAUnUserNotificationProxy)initWithQueue:(id)queue bundleIdentifier:(const char *)identifier authorizationOption:(unint64_t)option interruptionLevel:(unint64_t)level extension:(const char *)extension categoryName:(const char *)name analyticsRef:(shared_ptr<SACoreAnalytics>)ref
{
  queueCopy = queue;
  v36.receiver = self;
  v36.super_class = SAUnUserNotificationProxy;
  v16 = [(SAUnUserNotificationProxy *)&v36 init];
  v17 = v16;
  if (v16)
  {
    if (identifier && extension)
    {
      v16->_bundleIdentifier = identifier;
      v16->_categoryName = name;
      v16->_interruptionLevel = level;
      v19 = *ref.__ptr_;
      v18 = *(ref.__ptr_ + 1);
      if (v18)
      {
        atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      }

      cntrl = v16->analyticsRef.__cntrl_;
      v17->analyticsRef.__ptr_ = v19;
      v17->analyticsRef.__cntrl_ = v18;
      if (cntrl)
      {
        sub_10002A838(cntrl);
      }

      if (level == 3)
      {
        v21 = +[UNNotificationSound defaultCriticalSound];
        v22 = 1;
      }

      else
      {
        v21 = +[UNNotificationSound defaultSound];
        v22 = 0;
      }

      defaultSound = v17->_defaultSound;
      v17->_defaultSound = v21;

      v17->_isHapticsUsed = v22;
      v25 = [NSString stringWithUTF8String:extension];
      v26 = [UNNotificationCategory categoryWithIdentifier:v25 actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:1];

      v27 = [UNUserNotificationCenter alloc];
      v28 = [NSString stringWithUTF8String:identifier];
      v29 = [v27 initWithBundleIdentifier:v28 queue:queueCopy];
      notificationCenter = v17->_notificationCenter;
      v17->_notificationCenter = v29;

      [(UNUserNotificationCenter *)v17->_notificationCenter setDelegate:v17];
      [(UNUserNotificationCenter *)v17->_notificationCenter setWantsNotificationResponsesDelivered];
      v31 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289283;
        v38 = 0;
        v39 = 2082;
        v40 = "";
        v41 = 2081;
        extensionCopy = extension;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#notif,setting notification category, categoryIdentifier:%{private, location:escape_only}s}", buf, 0x1Cu);
      }

      v32 = v17->_notificationCenter;
      v33 = [NSSet setWithObject:v26];
      [(UNUserNotificationCenter *)v32 setNotificationCategories:v33];

      [(UNUserNotificationCenter *)v17->_notificationCenter requestAuthorizationWithOptions:option completionHandler:&stru_10013D070];
      v34 = v17;
    }

    else
    {
      v23 = v16;
    }
  }

  return v17;
}

- (void)postNotification:(id)notification
{
  notificationCopy = notification;
  if (notificationCopy)
  {
    v5 = [NSString stringWithUTF8String:"title"];
    v6 = [notificationCopy objectForKey:v5];

    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v80 = v6;
    }

    else
    {
      v80 = 0;
    }

    v7 = [NSString stringWithUTF8String:"body"];
    v8 = [notificationCopy objectForKey:v7];

    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v79 = v8;
    }

    else
    {
      v79 = 0;
    }

    v9 = [NSString stringWithUTF8String:"isSilent"];
    v10 = [notificationCopy objectForKey:v9];

    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v75 = v10;
    }

    else
    {
      v75 = 0;
    }

    v11 = [NSString stringWithUTF8String:"isExtended"];
    v12 = [notificationCopy objectForKey:v11];

    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v74 = v12;
    }

    else
    {
      v74 = 0;
    }

    v13 = [NSString stringWithUTF8String:"toneFile"];
    v14 = [notificationCopy objectForKey:v13];

    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v78 = v14;
    }

    else
    {
      v78 = 0;
    }

    v15 = [NSString stringWithUTF8String:"userInfo"];
    v16 = [notificationCopy objectForKey:v15];

    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = [NSString stringWithUTF8String:"attachments"];
    v19 = [notificationCopy objectForKey:v18];

    if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v73 = v19;
    }

    else
    {
      v73 = 0;
    }

    v20 = [NSString stringWithUTF8String:"serverTs"];
    v21 = [notificationCopy objectForKey:v20];

    if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v72 = v21;
    }

    else
    {
      v72 = 0;
    }

    v22 = [NSString stringWithUTF8String:"interface"];
    v23 = [notificationCopy objectForKey:v22];

    if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v77 = v23;
    }

    else
    {
      v77 = 0;
    }

    v24 = [NSString stringWithUTF8String:"isRelayed"];
    v25 = [notificationCopy objectForKey:v24];

    if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v76 = v25;
    }

    else
    {
      v76 = 0;
    }

    v26 = [NSString stringWithUTF8String:"level"];
    v27 = [notificationCopy objectForKey:v26];

    if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v30 = [v17 objectForKey:@"attribution"];
    if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v71 = v30;
    }

    else
    {
      v71 = 0;
    }

    v31 = [v17 objectForKey:@"uid"];
    if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    if (v80 && v79 && v78 && v32 && v77 && v76 && v28)
    {
      if (v75)
      {
        bOOLValue = [v75 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      if (v74)
      {
        bOOLValue2 = [v74 BOOLValue];
      }

      else
      {
        bOOLValue2 = 0;
      }

      bundleIdentifier = self->_bundleIdentifier;
      if (bundleIdentifier)
      {
        bundleIdentifier = [NSString stringWithFormat:@"%s/%s.bundle", "/System/Library/UserNotifications/Bundles/", bundleIdentifier];
        v38 = bundleIdentifier;
        if (!bundleIdentifier)
        {
          v44 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289026;
            *&buf[8] = 2082;
            *&buf[10] = "";
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#notif,postNotification,unableToGetBundlePath}", buf, 0x12u);
          }

          goto LABEL_134;
        }

        v69 = bundleIdentifier;
        v39 = objc_alloc_init(UNMutableNotificationContent);
        [v39 setTitle:v80];
        [v39 setBody:v79];
        if (v17)
        {
          [v39 setUserInfo:v17];
        }

        if (v73)
        {
          v40 = SALogObjectGeneral;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289026;
            *&buf[8] = 2082;
            *&buf[10] = "";
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#notif,postNotification,adding attachments to content}", buf, 0x12u);
          }

          v41 = v73;
          [v39 setAttachments:v41];
        }

        v42 = *(sub_100042820() + 395);
        if ((bOOLValue | v42))
        {
          v43 = SALogObjectGeneral;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289539;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 1025;
            *&buf[20] = bOOLValue;
            v89 = 1025;
            v90 = v42;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#notif,postNotification,tone,silentAlert, isSilent:%{private}hhd, preference:%{private}hhd}", buf, 0x1Eu);
          }
        }

        else
        {
          if (![v78 length])
          {
            [v39 setSound:self->_defaultSound];
LABEL_123:
            v58 = [NSString stringWithUTF8String:self->_bundleIdentifier];
            [v39 setThreadIdentifier:v58];

            if (bOOLValue2)
            {
              v59 = [NSString stringWithUTF8String:self->_categoryName];
              [v39 setCategoryIdentifier:v59];
            }

            [v39 setShouldSuppressDefaultAction:1];
            [v39 setInterruptionLevel:self->_interruptionLevel];
            v60 = [NSString stringWithFormat:@"%s.notif_%d", "com.apple.safetyalerts", CFAbsoluteTimeGetCurrent()];
            v61 = [UNNotificationRequest requestWithIdentifier:v60 content:v39 trigger:0 destinations:7];
            notificationCenter = self->_notificationCenter;
            v81[0] = _NSConcreteStackBlock;
            v81[1] = 3221225472;
            v81[2] = sub_10007BAA8;
            v81[3] = &unk_10013D098;
            v81[4] = v61;
            [(UNUserNotificationCenter *)notificationCenter addNotificationRequest:v61 withCompletionHandler:v81];
            if (self->analyticsRef.__ptr_)
            {
              v63 = v32;
              sub_1000060C4(buf, [v32 UTF8String]);
              sub_100070CC4(*(self->analyticsRef.__ptr_ + 13), buf, &v87);
              if (v87.__r_.__value_.__r.__words[0])
              {
                Current = CFAbsoluteTimeGetCurrent();
                v65 = v87.__r_.__value_.__r.__words[0];
                [v72 doubleValueSafe];
                sub_10007047C(v65, v66);
                sub_100070540(v87.__r_.__value_.__l.__data_, Current);
                sub_10007078C(v87.__r_.__value_.__l.__data_, [v77 intValue]);
                v67 = v87.__r_.__value_.__r.__words[0];
                *(v67 + 64) = [v76 intValue] != 0;
                v68 = v87.__r_.__value_.__r.__words[0];
                *(v68 + 68) = [v28 intValue];
                if ((bOOLValue2 & 1) == 0)
                {
                  sub_10007161C(*(self->analyticsRef.__ptr_ + 13), buf);
                }
              }

              if (v87.__r_.__value_.__l.__size_)
              {
                sub_10002A838(v87.__r_.__value_.__l.__size_);
              }

              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }

            v38 = v69;
LABEL_134:

            goto LABEL_135;
          }

          if (self->_interruptionLevel == 3)
          {
            [UNMutableNotificationSound criticalSoundNamed:v78];
          }

          else
          {
            [UNMutableNotificationSound soundNamed:v78];
          }
          v43 = ;
          if (v43)
          {
            if (self->_isHapticsUsed)
            {
              v45 = v69;
              sub_1000060C4(&v86, [v69 UTF8String]);
              sub_1000060C4(v84, "/");
              if ((v85 & 0x80u) == 0)
              {
                v46 = v84;
              }

              else
              {
                v46 = v84[0];
              }

              if ((v85 & 0x80u) == 0)
              {
                v47 = v85;
              }

              else
              {
                v47 = v84[1];
              }

              v48 = std::string::append(&v86, v46, v47);
              v49 = *&v48->__r_.__value_.__l.__data_;
              v87.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
              *&v87.__r_.__value_.__l.__data_ = v49;
              v48->__r_.__value_.__l.__size_ = 0;
              v48->__r_.__value_.__r.__words[2] = 0;
              v48->__r_.__value_.__r.__words[0] = 0;
              sub_1000060C4(__p, "igneous_haptics.plist");
              if ((v83 & 0x80u) == 0)
              {
                v50 = __p;
              }

              else
              {
                v50 = __p[0];
              }

              if ((v83 & 0x80u) == 0)
              {
                v51 = v83;
              }

              else
              {
                v51 = __p[1];
              }

              v52 = std::string::append(&v87, v50, v51);
              v53 = *&v52->__r_.__value_.__l.__data_;
              *&buf[16] = *(&v52->__r_.__value_.__l + 2);
              *buf = v53;
              v52->__r_.__value_.__l.__size_ = 0;
              v52->__r_.__value_.__r.__words[2] = 0;
              v52->__r_.__value_.__r.__words[0] = 0;
              if (v83 < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v87.__r_.__value_.__l.__data_);
              }

              if (v85 < 0)
              {
                operator delete(v84[0]);
              }

              if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v86.__r_.__value_.__l.__data_);
              }

              v54 = [NSURL alloc];
              if (buf[23] >= 0)
              {
                v55 = buf;
              }

              else
              {
                v55 = *buf;
              }

              v56 = [NSString stringWithUTF8String:v55];
              v57 = [v54 initFileURLWithPath:v56];

              if (v57)
              {
                [v43 setVibrationPatternFileURL:v57];
                [v43 setShouldIgnoreRingerSwitch:1];
              }

              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }

            [v39 setSound:v43];
          }
        }

        goto LABEL_123;
      }

      v34 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[8] = 2082;
        *&buf[10] = "";
        v35 = "{msg%{public}.0s:#notif,postNotification,bundleIdentifierIsNil}";
        goto LABEL_84;
      }
    }

    else
    {
      v34 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[8] = 2082;
        *&buf[10] = "";
        v35 = "{msg%{public}.0s:#notif,postNotification,invalidContents}";
LABEL_84:
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v35, buf, 0x12u);
      }
    }

LABEL_135:

    goto LABEL_136;
  }

  v29 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#notif,postNotification,invalidArgs}", buf, 0x12u);
  }

LABEL_136:
}

- (void)postIgneousTextNotification:(id)notification
{
  notificationCopy = notification;
  if (notificationCopy)
  {
    v4 = [NSString stringWithUTF8String:"title"];
    v5 = [notificationCopy objectForKey:v4];

    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v54 = v5;
    }

    else
    {
      v54 = 0;
    }

    v6 = [NSString stringWithUTF8String:"body"];
    v7 = [notificationCopy objectForKey:v6];

    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v53 = v7;
    }

    else
    {
      v53 = 0;
    }

    v8 = [NSString stringWithUTF8String:"attribution"];
    v9 = [notificationCopy objectForKey:v8];

    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v49 = v9;
    }

    else
    {
      v49 = 0;
    }

    v10 = [NSString stringWithUTF8String:"tone"];
    v11 = [notificationCopy objectForKey:v10];

    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v52 = v11;
    }

    else
    {
      v52 = 0;
    }

    v12 = [NSString stringWithUTF8String:"isSilent"];
    v13 = [notificationCopy objectForKey:v12];

    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v51 = v13;
    }

    else
    {
      v51 = 0;
    }

    v14 = [NSString stringWithUTF8String:"uid"];
    v15 = [notificationCopy objectForKey:v14];

    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v50 = v15;
    }

    else
    {
      v50 = 0;
    }

    v16 = [NSString stringWithUTF8String:"serverTs"];
    v17 = [notificationCopy objectForKey:v16];

    v18 = -1.0;
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v17 doubleValue];
        v18 = v19;
      }
    }

    v20 = [NSString stringWithUTF8String:"interface"];
    v21 = [notificationCopy objectForKey:v20];

    if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      intValue = [v21 intValue];
    }

    else
    {
      intValue = 0;
    }

    v23 = [NSString stringWithUTF8String:"isRelayed"];
    v24 = [notificationCopy objectForKey:v23];

    if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      intValue2 = [v24 intValue];
    }

    else
    {
      intValue2 = 0;
    }

    v26 = [NSString stringWithUTF8String:"level"];
    v27 = [notificationCopy objectForKey:v26];

    if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      intValue3 = [v27 intValue];
    }

    else
    {
      intValue3 = 0xFFFFFFFFLL;
    }

    if (v54 && v53 && v49 && v52 && v51 && v50)
    {
      v47 = objc_alloc_init(NSMutableDictionary);
      [v47 setObject:v50 forKey:@"uid"];
      v46 = [NSString stringWithUTF8String:"title"];
      v55[0] = v46;
      v56[0] = v54;
      v45 = [NSString stringWithUTF8String:"body"];
      v55[1] = v45;
      v56[1] = v53;
      v44 = [NSString stringWithUTF8String:"isSilent"];
      v55[2] = v44;
      v56[2] = v51;
      v43 = [NSString stringWithUTF8String:"isExtended"];
      v55[3] = v43;
      v56[3] = &__kCFBooleanFalse;
      v42 = [NSString stringWithUTF8String:"toneFile"];
      v55[4] = v42;
      v56[4] = v52;
      v41 = [NSString stringWithUTF8String:"userInfo"];
      v55[5] = v41;
      v56[5] = v47;
      v40 = [NSString stringWithUTF8String:"serverTs"];
      v55[6] = v40;
      v29 = [NSNumber numberWithDouble:v18];
      v56[6] = v29;
      v30 = [NSString stringWithUTF8String:"interface"];
      v55[7] = v30;
      v31 = [NSNumber numberWithInt:intValue];
      v56[7] = v31;
      v32 = [NSString stringWithUTF8String:"isRelayed"];
      v55[8] = v32;
      v33 = [NSNumber numberWithInt:intValue2];
      v56[8] = v33;
      v34 = [NSString stringWithUTF8String:"level"];
      v55[9] = v34;
      v35 = [NSNumber numberWithInt:intValue3];
      v56[9] = v35;
      v36 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:10];

      v37 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        buf = 68289283;
        v58 = 2082;
        v59 = "";
        v60 = 2113;
        v61 = v36;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#notif,postNotification,contentInfo, notifDetails:%{private, location:escape_only}@}", &buf, 0x1Cu);
      }

      [(SAUnUserNotificationProxy *)self postNotification:v36];
    }

    else
    {
      v39 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        buf = 68290563;
        v58 = 2082;
        v59 = "";
        v60 = 2113;
        v61 = v54;
        v62 = 2113;
        v63 = v53;
        v64 = 2113;
        v65 = v49;
        v66 = 2113;
        v67 = v52;
        v68 = 2113;
        v69 = v51;
        v70 = 2113;
        v71 = v50;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#notif,postNotification,invalidContent, title:%{private, location:escape_only}@, body:%{private, location:escape_only}@, attribution:%{private, location:escape_only}@, tone:%{private, location:escape_only}@, isSilent:%{private, location:escape_only}@, uid:%{private, location:escape_only}@}", &buf, 0x4Eu);
      }
    }
  }

  else
  {
    v38 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      v58 = 2082;
      v59 = "";
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#notif,postNotification,nilDictionary}", &buf, 0x12u);
    }
  }
}

- (void)postIgneousRichNotification:(id)notification
{
  notificationCopy = notification;
  if (notificationCopy)
  {
    v4 = [NSString stringWithUTF8String:"title"];
    v5 = [notificationCopy objectForKey:v4];

    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v118 = v5;
    }

    else
    {
      v118 = 0;
    }

    v6 = [NSString stringWithUTF8String:"body"];
    v7 = [notificationCopy objectForKey:v6];

    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v117 = v7;
    }

    else
    {
      v117 = 0;
    }

    v8 = [NSString stringWithUTF8String:"attribution"];
    v9 = [notificationCopy objectForKey:v8];

    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v116 = v9;
    }

    else
    {
      v116 = 0;
    }

    v10 = [NSString stringWithUTF8String:"tone"];
    v11 = [notificationCopy objectForKey:v10];

    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v115 = v11;
    }

    else
    {
      v115 = 0;
    }

    v12 = [NSString stringWithUTF8String:"isSilent"];
    v13 = [notificationCopy objectForKey:v12];

    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v114 = v13;
    }

    else
    {
      v114 = 0;
    }

    v14 = [NSString stringWithUTF8String:"uid"];
    v15 = [notificationCopy objectForKey:v14];

    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v113 = v15;
    }

    else
    {
      v113 = 0;
    }

    v16 = [NSString stringWithUTF8String:"serverTs"];
    v17 = [notificationCopy objectForKey:v16];

    v18 = -1.0;
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v17 doubleValue];
        v18 = v19;
      }
    }

    v20 = [NSString stringWithUTF8String:"isRelayed"];
    v21 = [notificationCopy objectForKey:v20];

    if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      intValue = [v21 intValue];
    }

    else
    {
      intValue = 0;
    }

    v23 = [NSString stringWithUTF8String:"level"];
    v24 = [notificationCopy objectForKey:v23];

    if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      intValue2 = [v24 intValue];
    }

    else
    {
      intValue2 = -1;
    }

    if (v118 && v117 && v116 && v115 && v114)
    {
      v26 = [NSString stringWithUTF8String:"epiLat"];
      v27 = [notificationCopy objectForKey:v26];

      v28 = -1000.0;
      if (v27)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v27 doubleValue];
          v28 = v29;
        }
      }

      v30 = [NSString stringWithUTF8String:"epiLon"];
      v31 = [notificationCopy objectForKey:v30];

      v32 = -1000.0;
      if (v31)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v31 doubleValue];
          v32 = v33;
        }
      }

      v34 = [NSString stringWithUTF8String:"userLat"];
      v35 = [notificationCopy objectForKey:v34];

      v36 = -1000.0;
      if (v35)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v35 doubleValue];
          v36 = v37;
        }
      }

      v38 = [NSString stringWithUTF8String:"userLon"];
      v39 = [notificationCopy objectForKey:v38];

      v40 = -1000.0;
      if (v39)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v39 doubleValue];
          v40 = v41;
        }
      }

      v42 = [NSString stringWithUTF8String:"interface"];
      v43 = [notificationCopy objectForKey:v42];

      if (v43 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        intValue3 = [v43 intValue];
      }

      else
      {
        intValue3 = 0;
      }

      v46 = [NSString stringWithUTF8String:"radius"];
      v47 = [notificationCopy objectForKey:v46];

      v48 = -1.0;
      if (v47)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v47 doubleValue];
          v48 = v49;
        }
      }

      v50 = [NSString stringWithUTF8String:"polygon"];
      v51 = [notificationCopy objectForKey:v50];

      v110 = intValue2;
      v111 = intValue;
      if (v51 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v52 = v51;

        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        obj = v52;
        if ([obj countByEnumeratingWithState:&v121 objects:v149 count:16])
        {
          *v122;
          *v122;
          v53 = **(&v121 + 1);
          v54 = [**(&v121 + 1) objectAtIndexedSubscript:0];
          [v54 doubleValue];
          v56 = v55;

          v57 = [v53 objectAtIndexedSubscript:1];
          [v57 doubleValue];
          v59 = v58;

          CLLocationCoordinate2DMake(v56, v59);
          operator new();
        }
      }

      else
      {

        obj = 0;
      }

      v60 = fabs(v28);
      if (v60 > 90.0 || (v61 = fabs(v32), v61 > 180.0) || fabs(v60 + -0.0000001) <= 0.0000001 && fabs(v61 + -0.0000001) <= 0.0000001 || v48 < 0.0)
      {
        v70 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289795;
          v143 = 0;
          v144 = 2082;
          v145 = "";
          v146 = 2049;
          *v147 = v28;
          *&v147[8] = 2049;
          *&v147[10] = v32;
          *&v147[18] = 2049;
          *&v147[20] = v48;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#notif,postNotification,invalidEpicenterInfo, epiLat:%{private}0.1f, epiLon:%{private}0.1f, radius:%{private}0.1f}", buf, 0x30u);
        }
      }

      else
      {
        v62 = fabs(v36);
        if (v62 > 90.0 || (v63 = fabs(v40), v63 > 180.0) || fabs(v62 + -0.0000001) <= 0.0000001 && fabs(v63 + -0.0000001) <= 0.0000001)
        {
          v68 = (v48 + v48) * 1.4;
          v69 = 1.33333333;
        }

        else
        {
          CLClientGetDistanceCoordinates();
          v65 = v64;
          CLClientGetDistanceCoordinates();
          v67 = v48 + v66;
          if (v67 < (v48 + v65) / 0.75)
          {
            v67 = (v48 + v65) / 0.75;
          }

          v68 = v67 + v67;
          v69 = 1.4;
        }

        v71 = v68 * v69;
        buf[0] = 0;
        v143 = -1;
        *&v147[4] = 0x40C5180000000000;
        *&v147[12] = 0u;
        memset(v148, 0, 28);
        v72 = sub_10008E020();
        sub_10009019C(v72, buf);
        v74 = *&v147[12];
        if (*&v147[12] == *&v147[20])
        {
          v75 = -1.0;
        }

        else
        {
          v75 = -1.0;
          do
          {
            LODWORD(v73) = *v74;
            v73 = *&v73 + *&v73;
            if (v73 >= v71)
            {
              if (v75 == -1.0)
              {
                v75 = v73;
              }

              else if (v73 < v75)
              {
                v75 = v73;
              }
            }

            ++v74;
          }

          while (v74 != *&v147[20]);
        }

        if (v75 > 0.0)
        {
          v71 = v75;
        }

        if (*(sub_100042820() + 394) == 1)
        {
          if (intValue3 - 1 >= 3)
          {
            v76 = 0;
          }

          else
          {
            v76 = off_10013D0F8[intValue3 - 1];
          }

          v77 = SALogObjectGeneral;
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
          {
            *v125 = 68289283;
            v126 = 0;
            v127 = 2082;
            v128 = "";
            v129 = 1025;
            LODWORD(v130) = intValue3;
            _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#notif,postIgneousRichNotification, alertInterface:%{private}d}", v125, 0x18u);
          }
        }

        else
        {
          v76 = 0;
        }

        v78 = objc_alloc_init(NSMutableDictionary);
        [v78 setObject:v116 forKey:@"attribution"];
        v79 = [NSNumber numberWithDouble:v28];
        [v78 setObject:v79 forKey:@"epiLat"];

        v80 = [NSNumber numberWithDouble:v32];
        [v78 setObject:v80 forKey:@"epiLon"];

        v81 = [NSNumber numberWithDouble:v36];
        [v78 setObject:v81 forKey:@"userLat"];

        v82 = [NSNumber numberWithDouble:v40];
        [v78 setObject:v82 forKey:@"userLon"];

        v83 = [NSNumber numberWithDouble:v71];
        [v78 setObject:v83 forKey:@"regionSpan"];

        v84 = [NSNumber numberWithDouble:v48];
        [v78 setObject:v84 forKey:@"eqRadius"];

        [v78 setObject:v113 forKey:@"uid"];
        v85 = [NSNumber numberWithBool:*(sub_100042820() + 396)];
        [v78 setObject:v85 forKey:@"displayEpicenter"];

        v86 = [NSNumber numberWithBool:*(sub_100042820() + 397)];
        [v78 setObject:v86 forKey:@"lineShadeStrongShakingArea"];

        v87 = sub_10008E020();
        v88 = sub_10008F570(v87);
        v89 = SALogObjectGeneral;
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          *v125 = 68289283;
          v126 = 0;
          v127 = 2082;
          v128 = "";
          v129 = 1025;
          LODWORD(v130) = v88;
          _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#notif,postNotification,mapDisplay, enabled:%{private}hhd}", v125, 0x18u);
        }

        v131 = [NSString stringWithUTF8String:"title"];
        v108 = v131;
        if (v76)
        {
          v90 = [v118 stringByAppendingString:v76];
        }

        else
        {
          v90 = v118;
        }

        v141[0] = v90;
        v109 = v76;
        v132 = [NSString stringWithUTF8String:"body", v90];
        v141[1] = v117;
        v103 = v132;
        v107 = [NSString stringWithUTF8String:"isSilent"];
        v133 = v107;
        v141[2] = v114;
        v106 = [NSString stringWithUTF8String:"isExtended"];
        v134 = v106;
        v105 = [NSNumber numberWithBool:v88];
        v141[3] = v105;
        v104 = [NSString stringWithUTF8String:"toneFile"];
        v135 = v104;
        v141[4] = v115;
        v102 = [NSString stringWithUTF8String:"userInfo"];
        v136 = v102;
        v141[5] = v78;
        v101 = [NSString stringWithUTF8String:"serverTs"];
        v137 = v101;
        v100 = [NSNumber numberWithDouble:v18];
        v141[6] = v100;
        v91 = [NSString stringWithUTF8String:"interface"];
        v138 = v91;
        v92 = [NSNumber numberWithInt:intValue3];
        v141[7] = v92;
        v93 = [NSString stringWithUTF8String:"isRelayed"];
        v139 = v93;
        v94 = [NSNumber numberWithInt:v111];
        v141[8] = v94;
        v95 = [NSString stringWithUTF8String:"level"];
        v140 = v95;
        v96 = [NSNumber numberWithInt:v110];
        v141[9] = v96;
        v97 = [NSDictionary dictionaryWithObjects:v141 forKeys:&v131 count:10];

        if (v109)
        {
        }

        v98 = SALogObjectGeneral;
        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
        {
          *v125 = 68289283;
          v126 = 0;
          v127 = 2082;
          v128 = "";
          v129 = 2117;
          v130 = v97;
          _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#notif,postNotification,contentInfo, notifDetails:%{sensitive, location:escape_only}@}", v125, 0x1Cu);
        }

        [(SAUnUserNotificationProxy *)self postNotification:v97];
        if (*&v147[12])
        {
          *&v147[20] = *&v147[12];
          operator delete(*&v147[12]);
        }
      }
    }

    else
    {
      v45 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68290563;
        v143 = 0;
        v144 = 2082;
        v145 = "";
        v146 = 2113;
        *v147 = v118;
        *&v147[8] = 2113;
        *&v147[10] = v117;
        *&v147[18] = 2113;
        *&v147[20] = v116;
        *v148 = 2113;
        *&v148[2] = v115;
        *&v148[10] = 2113;
        *&v148[12] = v114;
        *&v148[20] = 2113;
        *&v148[22] = v113;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#notif,postNotification,invalidContent, title:%{private, location:escape_only}@, body:%{private, location:escape_only}@, attribution:%{private, location:escape_only}@, tone:%{private, location:escape_only}@, isSilent:%{private, location:escape_only}@, uid:%{private, location:escape_only}@}", buf, 0x4Eu);
      }
    }
  }

  else
  {
    v44 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v143 = 0;
      v144 = 2082;
      v145 = "";
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#notif,#warning,postIgneousRichNotification,invalidArgs}", buf, 0x12u);
    }
  }
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  return self;
}

@end