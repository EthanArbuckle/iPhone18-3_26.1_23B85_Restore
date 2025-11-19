@interface HTPrefs
+ (id)sharedPrefs;
- (BOOL)BOOLProperty:(HTPrefInit *)a3 contextPrefixOut:(id *)a4;
- (BOOL)compareBootSessionUUIDAndClearPreferencesWithDomain:(id)a3 prefix:(id)a4;
- (BOOL)shouldDisplayFenceHangToHUD;
- (BOOL)shouldUpdateHangsHUD;
- (HTPrefInit)prefInitList;
- (NSArray)prefContextPrefixPriorityOrder;
- (double)doubleProperty:(HTPrefInit *)a3 contextPrefixOut:(id *)a4;
- (id)getBootSessionUUID;
- (id)objectProperty:(HTPrefInit *)a3 matchingSelector:(SEL)a4 contextPrefixOut:(id *)a5;
- (id)prefNamed:(__CFString *)a3 domain:(__CFString *)a4 profile:(id)a5 matchingSelector:(SEL)a6 contextPrefixOut:(id *)a7;
- (id)stringProperty:(HTPrefInit *)a3 contextPrefixOut:(id *)a4;
- (int)intProperty:(HTPrefInit *)a3 contextPrefixOut:(id *)a4;
- (unint64_t)unsignedLongLongProperty:(HTPrefInit *)a3 contextPrefixOut:(id *)a4;
- (unint64_t)unsignedLongProperty:(HTPrefInit *)a3 contextPrefixOut:(id *)a4;
- (unsigned)unsignedIntProperty:(HTPrefInit *)a3 contextPrefixOut:(id *)a4;
- (void)__createInternalSettings;
- (void)_removeAllPrefs;
- (void)dealloc;
- (void)earlyInitNecessaryPrefs;
- (void)initBoolProperty:(HTPrefInit *)a3;
- (void)initDoubleProperty:(HTPrefInit *)a3;
- (void)initIntProperty:(HTPrefInit *)a3;
- (void)initIsAutomationGroup:(HTPrefInit *)a3;
- (void)initNSObjectProperty:(HTPrefInit *)a3;
- (void)initNSStringProperty:(HTPrefInit *)a3;
- (void)initPropertyForceQuitDetectionEnabled:(HTPrefInit *)a3;
- (void)initPropertyHangtracerDaemonEnabled:(HTPrefInit *)a3;
- (void)initPropertyHaveInternalSettings:(HTPrefInit *)a3;
- (void)initPropertyIsCarryDevice:(HTPrefInit *)a3;
- (void)initPropertyIsInternal:(HTPrefInit *)a3;
- (void)initPropertyProcessTerminationSubReasonsMonitored:(HTPrefInit *)a3;
- (void)initPropertyReportPeriod:(HTPrefInit *)a3;
- (void)initPropertyShouldSaveAndCompressTailspins:(HTPrefInit *)a3;
- (void)initPropertyThirdPartyDevPreferredLanguages:(HTPrefInit *)a3;
- (void)initUnsignedIntProperty:(HTPrefInit *)a3;
- (void)initUnsignedLongLongProperty:(HTPrefInit *)a3;
- (void)initUnsignedLongProperty:(HTPrefInit *)a3;
- (void)refreshHTPrefs;
- (void)savePreferencesForRestoration:(id)a3 withDomain:(id)a4 prefix:(id)a5;
- (void)setupPrefsWithQueue:(id)a3;
- (void)setupPrefsWithQueue:(id)a3 profilePath:(id)a4 taskingDomainName:(__CFString *)a5 hangtracerDomain:(__CFString *)a6 setupInternalPrefs:(BOOL)a7;
@end

@implementation HTPrefs

+ (id)sharedPrefs
{
  if (qword_100067B78 != -1)
  {
    sub_100002548();
  }

  v3 = qword_100067B70;

  return v3;
}

- (NSArray)prefContextPrefixPriorityOrder
{
  if (qword_100067B60 != -1)
  {
    sub_100033A30();
  }

  v3 = qword_100067B68;

  return v3;
}

- (id)prefNamed:(__CFString *)a3 domain:(__CFString *)a4 profile:(id)a5 matchingSelector:(SEL)a6 contextPrefixOut:(id *)a7
{
  v25 = a5;
  v27 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(HTPrefs *)self prefContextPrefixPriorityOrder];
  v10 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v15 = [(__CFString *)v14 isEqualToString:&stru_100057080];
        if (v15)
        {
          v16 = v27;
        }

        else
        {
          v16 = [NSString stringWithFormat:@"%@.%@", v14, v27];
        }

        v17 = v16;
        if ([(__CFString *)v14 isEqualToString:@"HTProfile"])
        {
          v18 = [v25 objectForKeyedSubscript:v17];
        }

        else
        {
          v18 = CFPreferencesCopyValue(v17, a4, @"mobile", kCFPreferencesAnyHost);
        }

        v19 = v18;
        if (v18 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v20 = sub_100003824();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v23 = @"<base context>";
            *buf = 138412802;
            if (!v15)
            {
              v23 = v14;
            }

            v33 = v23;
            v34 = 2112;
            v35 = v27;
            v36 = 2112;
            v37 = v19;
            _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "HTPrefs: Overriden by %@: %@ = %@", buf, 0x20u);
          }

          if (a7)
          {
            v21 = v14;
            *a7 = v14;
          }

          goto LABEL_25;
        }

        if (a7)
        {
          *a7 = 0;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  obj = sub_100003824();
  if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
  {
    sub_100033A44();
  }

  v19 = 0;
LABEL_25:

  return v19;
}

- (BOOL)BOOLProperty:(HTPrefInit *)a3 contextPrefixOut:(id *)a4
{
  v4 = 16;
  if (!self->_isInternal)
  {
    v4 = 24;
  }

  v5 = *(&a3->var0 + v4);
  v6 = [(HTPrefs *)self prefNamed:a3->var0 domain:self->__htTaskingDomain profile:self->__installedHTProfileDict matchingSelector:"BOOLValue" contextPrefixOut:a4];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v6 BOOLValue];
  }

  return v5 & 1;
}

- (int)intProperty:(HTPrefInit *)a3 contextPrefixOut:(id *)a4
{
  v5 = 24;
  if (self->_isInternal)
  {
    v5 = 16;
  }

  v6 = *(&a3->var0 + v5);
  v7 = [(HTPrefs *)self prefNamed:a3->var0 domain:self->__htTaskingDomain profile:self->__installedHTProfileDict matchingSelector:"intValue" contextPrefixOut:a4];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = [v7 intValue];
  v9 = v8;
  if ((a3->var4 & 1) != 0 && !v8)
  {
    v10 = sub_100003824();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      var0 = a3->var0;
      var4 = a3->var4;
      v14 = 138412802;
      v15 = var0;
      v16 = 2048;
      v17 = var4;
      v18 = 1024;
      v19 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "HTPrefs: %@ failed policy check (%lu) for value %d", &v14, 0x1Cu);
    }

LABEL_9:
    v9 = v6;
  }

  return v9;
}

- (unsigned)unsignedIntProperty:(HTPrefInit *)a3 contextPrefixOut:(id *)a4
{
  v5 = 24;
  if (self->_isInternal)
  {
    v5 = 16;
  }

  v6 = *(&a3->var0 + v5);
  v7 = [(HTPrefs *)self prefNamed:a3->var0 domain:self->__htTaskingDomain profile:self->__installedHTProfileDict matchingSelector:"unsignedIntValue" contextPrefixOut:a4];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = [v7 unsignedIntValue];
  v9 = v8;
  if ((a3->var4 & 1) != 0 && !v8)
  {
    v10 = sub_100003824();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      var0 = a3->var0;
      var4 = a3->var4;
      v14 = 138412802;
      v15 = var0;
      v16 = 2048;
      v17 = var4;
      v18 = 1024;
      v19 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "HTPrefs: %@ failed policy check (%lu) for value %u", &v14, 0x1Cu);
    }

LABEL_9:
    v9 = v6;
  }

  return v9;
}

- (unint64_t)unsignedLongProperty:(HTPrefInit *)a3 contextPrefixOut:(id *)a4
{
  v5 = 24;
  if (self->_isInternal)
  {
    v5 = 16;
  }

  v6 = *(&a3->var0 + v5);
  v7 = [(HTPrefs *)self prefNamed:a3->var0 domain:self->__htTaskingDomain profile:self->__installedHTProfileDict matchingSelector:"unsignedLongValue" contextPrefixOut:a4];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = [v7 unsignedLongValue];
  v9 = v8;
  if ((a3->var4 & 1) != 0 && !v8)
  {
    v10 = sub_100003824();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      var0 = a3->var0;
      var4 = a3->var4;
      v14 = 138412802;
      v15 = var0;
      v16 = 2048;
      v17 = var4;
      v18 = 2048;
      v19 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "HTPrefs: %@ failed policy check (%lu) for value %lu", &v14, 0x20u);
    }

LABEL_9:
    v9 = v6;
  }

  return v9;
}

- (unint64_t)unsignedLongLongProperty:(HTPrefInit *)a3 contextPrefixOut:(id *)a4
{
  v5 = 24;
  if (self->_isInternal)
  {
    v5 = 16;
  }

  v6 = *(&a3->var0 + v5);
  v7 = [(HTPrefs *)self prefNamed:a3->var0 domain:self->__htTaskingDomain profile:self->__installedHTProfileDict matchingSelector:"unsignedLongLongValue" contextPrefixOut:a4];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = [v7 unsignedLongLongValue];
  v9 = v8;
  if ((a3->var4 & 1) != 0 && !v8)
  {
    v10 = sub_100003824();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      var0 = a3->var0;
      var4 = a3->var4;
      v14 = 138412802;
      v15 = var0;
      v16 = 2048;
      v17 = var4;
      v18 = 2048;
      v19 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "HTPrefs: %@ failed policy check (%lu) for value %llu", &v14, 0x20u);
    }

LABEL_9:
    v9 = v6;
  }

  return v9;
}

- (double)doubleProperty:(HTPrefInit *)a3 contextPrefixOut:(id *)a4
{
  v5 = 24;
  if (self->_isInternal)
  {
    v5 = 16;
  }

  v6 = *(&a3->var0 + v5);
  v7 = [(HTPrefs *)self prefNamed:a3->var0 domain:self->__htTaskingDomain profile:self->__installedHTProfileDict matchingSelector:"doubleValue" contextPrefixOut:a4];
  if (objc_opt_respondsToSelector())
  {
    [v7 doubleValue];
    v9 = v8;
    if ((a3->var4 & 2) != 0 && v8 < v6)
    {
      v10 = sub_100003824();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        var0 = a3->var0;
        var4 = a3->var4;
        v14 = 138412802;
        v15 = var0;
        v16 = 2048;
        v17 = var4;
        v18 = 2048;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "HTPrefs: %@ failed policy check (%lu) for value %f", &v14, 0x20u);
      }
    }

    else
    {
      v6 = v8;
    }
  }

  return v6;
}

- (id)stringProperty:(HTPrefInit *)a3 contextPrefixOut:(id *)a4
{
  v7 = 24;
  if (self->_isInternal)
  {
    v7 = 16;
  }

  v8 = *(&a3->var0 + v7);
  v9 = [(HTPrefs *)self prefNamed:a3->var0 domain:self->__htTaskingDomain profile:self->__installedHTProfileDict matchingSelector:"isEqualToString:" contextPrefixOut:a4];
  v10 = v9;
  if (v9)
  {
    if ((a3->var4 & 4) != 0 && ![v9 length])
    {
      v13 = sub_100003824();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        var0 = a3->var0;
        var4 = a3->var4;
        v16 = 138412802;
        v17 = var0;
        v18 = 2048;
        v19 = var4;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "HTPrefs: %@ failed policy check (%lu) for value %@", &v16, 0x20u);
      }
    }

    else
    {
      v11 = v10;

      v8 = v11;
    }
  }

  return v8;
}

- (id)objectProperty:(HTPrefInit *)a3 matchingSelector:(SEL)a4 contextPrefixOut:(id *)a5
{
  v9 = 24;
  if (self->_isInternal)
  {
    v9 = 16;
  }

  v10 = *(&a3->var0 + v9);
  v11 = [(HTPrefs *)self prefNamed:a3->var0 domain:self->__htTaskingDomain profile:self->__installedHTProfileDict matchingSelector:a4 contextPrefixOut:a5];
  v12 = v11;
  if (v11)
  {
    v13 = v11;

    v10 = v13;
  }

  return v10;
}

- (void)initBoolProperty:(HTPrefInit *)a3
{
  v5 = *a3->var1;
  v6 = [HTPrefs BOOLProperty:"BOOLProperty:contextPrefixOut:" contextPrefixOut:?];
  if (v5 != v6)
  {
    v7 = v6;
    v8 = sub_100003824();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      var0 = a3->var0;
      v10 = 138412802;
      v11 = var0;
      v12 = 1024;
      v13 = v5;
      v14 = 1024;
      v15 = v7;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %{BOOL}d -> %{BOOL}d", &v10, 0x18u);
    }

    *a3->var1 = v7;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initIntProperty:(HTPrefInit *)a3
{
  v5 = *a3->var1;
  v6 = [HTPrefs intProperty:"intProperty:contextPrefixOut:" contextPrefixOut:?];
  if (v5 != v6)
  {
    v7 = v6;
    v8 = sub_100003824();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      var0 = a3->var0;
      v10 = 138412802;
      v11 = var0;
      v12 = 1024;
      v13 = v5;
      v14 = 1024;
      v15 = v7;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %d -> %d", &v10, 0x18u);
    }

    *a3->var1 = v7;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initUnsignedIntProperty:(HTPrefInit *)a3
{
  v5 = *a3->var1;
  v6 = [HTPrefs unsignedIntProperty:"unsignedIntProperty:contextPrefixOut:" contextPrefixOut:?];
  if (v5 != v6)
  {
    v7 = v6;
    v8 = sub_100003824();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      var0 = a3->var0;
      v10 = 138412802;
      v11 = var0;
      v12 = 1024;
      v13 = v5;
      v14 = 1024;
      v15 = v7;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %u -> %u", &v10, 0x18u);
    }

    *a3->var1 = v7;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initUnsignedLongProperty:(HTPrefInit *)a3
{
  v5 = *a3->var1;
  v6 = [HTPrefs unsignedLongProperty:"unsignedLongProperty:contextPrefixOut:" contextPrefixOut:?];
  if (v5 != v6)
  {
    v7 = v6;
    v8 = sub_100003824();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      var0 = a3->var0;
      v10 = 138412802;
      v11 = var0;
      v12 = 2048;
      v13 = v5;
      v14 = 2048;
      v15 = v7;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %lu -> %lu", &v10, 0x20u);
    }

    *a3->var1 = v7;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initUnsignedLongLongProperty:(HTPrefInit *)a3
{
  v5 = *a3->var1;
  v6 = [HTPrefs unsignedLongProperty:"unsignedLongProperty:contextPrefixOut:" contextPrefixOut:?];
  if (v5 != v6)
  {
    v7 = v6;
    v8 = sub_100003824();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      var0 = a3->var0;
      v10 = 138412802;
      v11 = var0;
      v12 = 2048;
      v13 = v5;
      v14 = 2048;
      v15 = v7;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %llu -> %llu", &v10, 0x20u);
    }

    *a3->var1 = v7;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initDoubleProperty:(HTPrefInit *)a3
{
  v5 = *a3->var1;
  [HTPrefs doubleProperty:"doubleProperty:contextPrefixOut:" contextPrefixOut:?];
  if (v5 != v6)
  {
    v7 = v6;
    v8 = sub_100003824();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      var0 = a3->var0;
      v10 = 138412802;
      v11 = var0;
      v12 = 2048;
      v13 = v5;
      v14 = 2048;
      v15 = v7;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %f -> %f", &v10, 0x20u);
    }

    *a3->var1 = v7;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initNSStringProperty:(HTPrefInit *)a3
{
  v5 = *a3->var1;
  v6 = [(HTPrefs *)self stringProperty:a3 contextPrefixOut:0];
  if (([v6 isEqualToString:v5] & 1) == 0)
  {
    v7 = sub_100003824();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      var0 = a3->var0;
      v12 = 138412802;
      v13 = var0;
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %@ -> %@", &v12, 0x20u);
    }

    v8 = [(HTPrefs *)self stringProperty:a3 contextPrefixOut:0];
    var1 = a3->var1;
    v10 = *var1;
    *var1 = v8;

    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initNSObjectProperty:(HTPrefInit *)a3
{
  v5 = *a3->var1;
  v6 = [(HTPrefs *)self objectProperty:a3 matchingSelector:"isEqual:" contextPrefixOut:0];
  v7 = v6;
  if ((v5 == 0) == (v6 != 0) || (v5 ? (v8 = v6 == 0) : (v8 = 1), !v8 && ([v5 isEqual:v6] & 1) == 0))
  {
    v9 = sub_100003824();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      var0 = a3->var0;
      v14 = 138412802;
      v15 = var0;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v7;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %@ -> %@", &v14, 0x20u);
    }

    v10 = [(HTPrefs *)self objectProperty:a3 matchingSelector:"isEqual:" contextPrefixOut:0];
    var1 = a3->var1;
    v12 = *var1;
    *var1 = v10;

    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initIsAutomationGroup:(HTPrefInit *)a3
{
  v5 = *a3->var1;
  v6 = 24;
  if (self->_isInternal)
  {
    v6 = 16;
  }

  v7 = *(&a3->var0 + v6);
  v8 = +[OSASystemConfiguration automatedDeviceGroup];
  v9 = v8;
  if (v8 && ((a3->var4 & 4) == 0 || [v8 length]))
  {
    v10 = v9;

    v7 = v10;
  }

  if (([v7 isEqualToString:v5] & 1) == 0)
  {
    v11 = sub_100003824();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      var0 = a3->var0;
      v13 = 138412802;
      v14 = var0;
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v7;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %@ -> %@", &v13, 0x20u);
    }

    objc_storeStrong(a3->var1, v7);
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initPropertyHangtracerDaemonEnabled:(HTPrefInit *)a3
{
  hangtracerDaemonEnabled = self->_hangtracerDaemonEnabled;
  v13 = 0;
  v6 = [(HTPrefs *)self BOOLProperty:a3 contextPrefixOut:&v13];
  v7 = v13;
  v8 = v13;
  v9 = self->_enablementPrefix;
  if (![(NSString *)v9 isEqualToString:v8])
  {
    objc_storeStrong(&self->_enablementPrefix, v7);
    v10 = sub_100003824();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100033AC4(v9, &self->_enablementPrefix);
    }
  }

  if (hangtracerDaemonEnabled != v6)
  {
    self->_hangtracerDaemonEnabled = v6;
    v11 = sub_100003824();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      var0 = a3->var0;
      *buf = 138412802;
      v15 = var0;
      v16 = 1024;
      v17 = hangtracerDaemonEnabled;
      v18 = 1024;
      v19 = v6;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %{BOOL}d -> %{BOOL}d", buf, 0x18u);
    }

    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initPropertyIsInternal:(HTPrefInit *)a3
{
  isInternalNoOverride = self->__isInternalNoOverride;
  v5 = MGGetBoolAnswer();
  if (isInternalNoOverride != v5)
  {
    v6 = v5;
    v7 = sub_100003824();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100033B50();
    }

    self->__isInternalNoOverride = v6;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }

  v8 = !self->_customerModeEnabled && self->__isInternalNoOverride;
  v9 = v8;
  if (self->_isInternal != v8)
  {
    v10 = sub_100003824();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100033BF4();
    }

    self->_isInternal = v9;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initPropertyForceQuitDetectionEnabled:(HTPrefInit *)a3
{
  forceQuitDetectionEnabled = self->_forceQuitDetectionEnabled;
  v15 = 0;
  v6 = [(HTPrefs *)self BOOLProperty:a3 contextPrefixOut:&v15];
  v7 = v15;
  v8 = v7;
  isInternal = self->_isInternal;
  v10 = isInternal & v6;
  if (isInternal && (v6 & 1) == 0)
  {
    if (self->_isCarryDevice && ([v7 isEqualToString:&stru_100057080] & 1) == 0)
    {
      v11 = sub_100003824();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        var0 = a3->var0;
        *buf = 138412290;
        v17 = var0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "HTPrefs: %@ force-enabled by isCarryDevice", buf, 0xCu);
      }

      v10 = 1;
    }

    else
    {
      v10 = 0;
    }
  }

  if (forceQuitDetectionEnabled != v10)
  {
    *a3->var1 = v10;
    v13 = sub_100003824();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = a3->var0;
      *buf = 138412802;
      v17 = v14;
      v18 = 1024;
      v19 = forceQuitDetectionEnabled;
      v20 = 1024;
      v21 = v10;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %{BOOL}d -> %{BOOL}d", buf, 0x18u);
    }

    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initPropertyIsCarryDevice:(HTPrefInit *)a3
{
  v5 = *a3->var1;
  v6 = sub_100003824();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100033C98(self);
  }

  v7 = sub_100003824();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100033D14(self);
  }

  v13[0] = @"carry";
  v13[1] = @"walkabout";
  v8 = [NSArray arrayWithObjects:v13 count:2];
  v9 = v8;
  if (self->_isInternal && !self->_automationGroup && [v8 containsObject:self->_experimentGroup])
  {
    v10 = sub_100003824();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100033D90(&self->_experimentGroup);
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  if (v5 != v11)
  {
    *a3->var1 = v11;
    v12 = sub_100003824();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100033E0C();
    }

    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initPropertyShouldSaveAndCompressTailspins:(HTPrefInit *)a3
{
  shouldSaveTailspins = self->_shouldSaveTailspins;
  shouldCompressSavedTailspins = self->_shouldCompressSavedTailspins;
  tailspinSaveFormat = self->_tailspinSaveFormat;
  if (!tailspinSaveFormat)
  {
    v8 = 0;
    keepTailspinsLegacy = self->_keepTailspinsLegacy;
    goto LABEL_9;
  }

  isInternal = self->_isInternal;
  if ([(NSString *)tailspinSaveFormat isEqualToString:@"compressed"])
  {
    v8 = 1;
LABEL_7:
    keepTailspinsLegacy = 1;
    goto LABEL_9;
  }

  if ([(NSString *)self->_tailspinSaveFormat isEqualToString:@"uncompressed"])
  {
    v8 = 0;
    goto LABEL_7;
  }

  v8 = ![(NSString *)self->_tailspinSaveFormat isEqualToString:@"none"]&& isInternal;
  keepTailspinsLegacy = v8;
LABEL_9:
  v10 = self->_savedTailspinMaxMB != 0;
  v11 = v10 & v8;
  v12 = v10 && keepTailspinsLegacy;
  if (shouldSaveTailspins != (v10 && keepTailspinsLegacy))
  {
    v13 = sub_100003824();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100033E9C();
    }

    self->_shouldSaveTailspins = v12;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }

  if (shouldCompressSavedTailspins != v11)
  {
    v14 = sub_100003824();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_100033F40();
    }

    self->_shouldCompressSavedTailspins = v11;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initPropertyReportPeriod:(HTPrefInit *)a3
{
  reportPeriodMATU = self->_reportPeriodMATU;
  [(HTPrefs *)self doubleProperty:a3 contextPrefixOut:0];
  v7 = v6 * 1000.0 / sub_100029458();
  if (v7 != reportPeriodMATU)
  {
    v8 = sub_100003824();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      var0 = a3->var0;
      v10 = 138412802;
      v11 = var0;
      v12 = 2048;
      v13 = reportPeriodMATU;
      v14 = 2048;
      v15 = v7;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %f -> %f", &v10, 0x20u);
    }

    self->_reportPeriodMATU = v7;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initPropertyHaveInternalSettings:(HTPrefInit *)a3
{
  v5 = CFPreferencesCopyValue(@"HangTracerInternalSettingCreated", self->__htTaskingDomain, @"mobile", kCFPreferencesAnyHost);
  hasInternalSettings = self->_hasInternalSettings;
  v7 = v5 != 0;
  if (hasInternalSettings != v7)
  {
    v8 = sub_100003824();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      var0 = a3->var0;
      v10 = 138412802;
      v11 = var0;
      v12 = 1024;
      v13 = hasInternalSettings;
      v14 = 1024;
      v15 = v5 != 0;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %{BOOL}d -> %{BOOL}d", &v10, 0x18u);
    }

    self->_hasInternalSettings = v7;
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initPropertyThirdPartyDevPreferredLanguages:(HTPrefInit *)a3
{
  v5 = self->_thirdPartyDevPreferredLanguages;
  v6 = CFPreferencesCopyValue(@"AppleLanguages", kCFPreferencesAnyApplication, @"mobile", kCFPreferencesAnyHost);
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = +[NSLocale preferredLanguages];
  }

  v8 = v7;
  if (![(NSArray *)v5 isEqualToArray:v7])
  {
    v9 = sub_100003824();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      var0 = a3->var0;
      v11 = 138412802;
      v12 = var0;
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v8;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %@ -> %@", &v11, 0x20u);
    }

    objc_storeStrong(&self->_thirdPartyDevPreferredLanguages, v8);
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)initPropertyProcessTerminationSubReasonsMonitored:(HTPrefInit *)a3
{
  v3 = sub_1000155F4();
  v17 = +[NSMutableDictionary dictionary];
  v4 = [@"HangTracerEnableTerminationsTrackedReasons" stringByAppendingString:@"."];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [v4 stringByAppendingFormat:@"%llu", objc_msgSend(v9, "unsignedLongLongValue")];
        v11 = CFPreferencesCopyValue(v10, self->__htTaskingDomain, @"mobile", kCFPreferencesAnyHost);
        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v17 setObject:v11 forKeyedSubscript:v9];
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v6);
  }

  v12 = self->_processTerminationSubReasonsMonitored;
  v13 = v12;
  if ((v17 != 0) == (v12 == 0) || v17 && v12 && ([(NSDictionary *)v12 isEqual:v17]& 1) == 0)
  {
    v14 = sub_100003824();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      var0 = a3->var0;
      *buf = 138412802;
      v25 = var0;
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = v17;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "HTPrefs: %@: %@ -> %@", buf, 0x20u);
    }

    objc_storeStrong(&self->_processTerminationSubReasonsMonitored, v17);
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  }
}

- (void)dealloc
{
  prefInitList = self->_prefInitList;
  if (prefInitList)
  {
    free(prefInitList);
  }

  v4.receiver = self;
  v4.super_class = HTPrefs;
  [(HTPrefs *)&v4 dealloc];
}

- (HTPrefInit)prefInitList
{
  result = self->_prefInitList;
  if (!result)
  {
    v4 = sub_100003824();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100033FE4(v4);
    }

    v18 = +[NSDate distantFuture];
    [v18 timeIntervalSinceReferenceDate];
    v6 = v5;
    v17 = +[NSDate distantFuture];
    [v17 timeIntervalSinceReferenceDate];
    v8 = v7;
    v105 = 0u;
    HIBYTE(v105) = 0;

    result = malloc_type_malloc(0x1230uLL, 0x5FA256FFuLL);
    result[86].var0 = @"BadDaySecondsBetweenLastEnablementAndReferenceDate";
    result[86].var1 = &self->_badDaySecondsBetweenLastEnablementAndReferenceDate;
    result[87].var0 = @"BadDayEnablementMinimumBreakDurationDays";
    result[87].var1 = &self->_badDayEnablementMinimumBreakDurationDays;
    result[88].var0 = @"BadDayEnablementDurationDaysKey";
    result->var0 = @"HangTracerEnableTailspin";
    result->var1 = &self->_htTailspinEnabled;
    result[88].var1 = &self->_badDayEnablementDurationDays;
    result[89].var0 = @"BadDayEnablementForHangDurationMSec";
    result[89].var1 = &self->_badDayEnablementForHangDurationMSec;
    result[90].var0 = @"BadDayEnablementForLogCount";
    result[1].var0 = @"HangTracerEnableHUD";
    result[1].var1 = &self->_hudEnabled;
    result[90].var1 = &self->_badDayEnablementForLogCount;
    result[91].var0 = @"BadDayEnablementForPreviousDays";
    result[91].var1 = &self->_badDayEnablementForPreviousDays;
    result[92].var0 = @"HangTracerTelemetryHaveNonDefaultFeatureFlags";
    result[2].var0 = @"ExperimentGroup";
    result[2].var1 = &self->_experimentGroup;
    result[92].var1 = &self->_haveNonDefaultFeatureFlags;
    result[93].var0 = @"HangTracerTelemetrySerialLoggingEnabled";
    result[93].var1 = &self->_haveSerialLoggingEnabled;
    result[94].var0 = @"HangTracerTelemetryNumOSCryptexFileExtents";
    result[3].var0 = @"AutomatedDeviceGroup";
    result[3].var1 = &self->_automationGroup;
    result[94].var1 = &self->_numOSCryptexFileExtents;
    result[95].var0 = @"HangTracerTelemetryHaveRootsInstalled";
    result[95].var1 = &self->_haveRootsInstalled;
    result[3].var5 = "initIsAutomationGroup:";
    result[4].var1 = &self->_isCarryDevice;
    result[4].var5 = "initPropertyIsCarryDevice:";
    HIDWORD(result[5].var2.var3) = *&v98[3];
    *(&result[5].var2.var0 + 1) = *v98;
    HIDWORD(result[5].var3.var3) = *&v97[3];
    *(&result[5].var3.var0 + 1) = *v97;
    HIDWORD(result[6].var2.var3) = *&v96[3];
    *(&result[6].var2.var0 + 1) = *v96;
    HIDWORD(result[6].var3.var3) = *&v95[3];
    *(&result[6].var3.var0 + 1) = *v95;
    HIDWORD(result[8].var2.var3) = *&v94[3];
    *(&result[8].var2.var0 + 1) = *v94;
    HIDWORD(result[8].var3.var3) = *&v93[3];
    *(&result[8].var3.var0 + 1) = *v93;
    HIDWORD(result[10].var2.var3) = *&v92[3];
    *(&result[10].var2.var0 + 1) = *v92;
    HIDWORD(result[10].var3.var3) = *&v91[3];
    *(&result[10].var3.var0 + 1) = *v91;
    HIDWORD(result[11].var2.var3) = *&v90[3];
    *(&result[11].var2.var0 + 1) = *v90;
    HIDWORD(result[11].var3.var3) = *&v89[3];
    *(&result[11].var3.var0 + 1) = *v89;
    HIDWORD(result[12].var2.var3) = *&v88[3];
    *(&result[12].var2.var0 + 1) = *v88;
    HIDWORD(result[12].var3.var3) = *&v87[3];
    *(&result[12].var3.var0 + 1) = *v87;
    HIDWORD(result[13].var2.var3) = *&v86[3];
    *(&result[13].var2.var0 + 1) = *v86;
    HIDWORD(result[13].var3.var3) = *&v85[3];
    *(&result[13].var3.var0 + 1) = *v85;
    HIDWORD(result[14].var2.var3) = *&v84[3];
    *(&result[14].var2.var0 + 1) = *v84;
    HIDWORD(result[14].var3.var3) = *&v83[3];
    *(&result[14].var3.var0 + 1) = *v83;
    *(&result[28].var2.var0 + 1) = *v82;
    *(&result[28].var3.var0 + 1) = *v81;
    *(&result[31].var2.var0 + 1) = *v80;
    *(&result[31].var3.var0 + 1) = *v79;
    HIDWORD(result[33].var2.var3) = *&v78[3];
    *(&result[33].var2.var0 + 1) = *v78;
    HIDWORD(result[33].var3.var3) = *&v77[3];
    *(&result[33].var3.var0 + 1) = *v77;
    *(&result[36].var2.var0 + 1) = *v76;
    *(&result[36].var3.var0 + 1) = *v75;
    HIDWORD(result[37].var2.var3) = *&v74[3];
    *(&result[37].var2.var0 + 1) = *v74;
    HIDWORD(result[37].var3.var3) = *&v73[3];
    *(&result[37].var3.var0 + 1) = *v73;
    *(&result[40].var2.var0 + 1) = *v72;
    *(&result[40].var3.var0 + 1) = *v71;
    HIDWORD(result[41].var2.var3) = *&v70[3];
    *(&result[41].var2.var0 + 1) = *v70;
    HIDWORD(result[41].var3.var3) = *&v69[3];
    *(&result[41].var3.var0 + 1) = *v69;
    HIDWORD(result[44].var2.var3) = *&v68[3];
    *(&result[44].var2.var0 + 1) = *v68;
    HIDWORD(result[44].var3.var3) = *&v67[3];
    *(&result[44].var3.var0 + 1) = *v67;
    *(&result[47].var2.var0 + 1) = *v66;
    *(&result[47].var3.var0 + 1) = *v65;
    HIDWORD(result[48].var2.var3) = *&v64[3];
    *(&result[48].var2.var0 + 1) = *v64;
    HIDWORD(result[48].var3.var3) = *&v63[3];
    *(&result[48].var3.var0 + 1) = *v63;
    HIDWORD(result[49].var2.var3) = *&v62[3];
    *(&result[49].var2.var0 + 1) = *v62;
    *(&result[49].var3.var0 + 1) = *v61;
    HIDWORD(result[52].var2.var3) = *&v60[3];
    *(&result[52].var2.var0 + 1) = *v60;
    HIDWORD(result[52].var3.var3) = *&v59[3];
    *(&result[52].var3.var0 + 1) = *v59;
    HIDWORD(result[53].var2.var3) = *&v58[3];
    *(&result[53].var2.var0 + 1) = *v58;
    HIDWORD(result[53].var3.var3) = *&v57[3];
    *(&result[53].var3.var0 + 1) = *v57;
    HIDWORD(result[54].var2.var3) = *&v56[3];
    *(&result[54].var2.var0 + 1) = *v56;
    HIDWORD(result[54].var3.var3) = *&v55[3];
    *(&result[54].var3.var0 + 1) = *v55;
    HIDWORD(result[59].var2.var3) = *&v54[3];
    *(&result[59].var2.var0 + 1) = *v54;
    HIDWORD(result[59].var3.var3) = *&v53[3];
    *(&result[59].var3.var0 + 1) = *v53;
    HIDWORD(result[60].var2.var3) = *&v52[3];
    *(&result[60].var2.var0 + 1) = *v52;
    HIDWORD(result[60].var3.var3) = *&v51[3];
    *(&result[60].var3.var0 + 1) = *v51;
    HIDWORD(result[61].var2.var3) = *&v50[3];
    *(&result[61].var2.var0 + 1) = *v50;
    HIDWORD(result[61].var3.var3) = *&v49[3];
    *(&result[61].var3.var0 + 1) = *v49;
    HIDWORD(result[62].var2.var3) = *&v48[3];
    *(&result[62].var2.var0 + 1) = *v48;
    HIDWORD(result[62].var3.var3) = *&v47[3];
    *(&result[62].var3.var0 + 1) = *v47;
    HIDWORD(result[63].var2.var3) = *&v46[3];
    *(&result[63].var2.var0 + 1) = *v46;
    HIDWORD(result[63].var3.var3) = *&v45[3];
    *(&result[63].var3.var0 + 1) = *v45;
    HIDWORD(result[64].var2.var3) = *&v44[3];
    *(&result[64].var2.var0 + 1) = *v44;
    HIDWORD(result[64].var3.var3) = *&v43[3];
    *(&result[64].var3.var0 + 1) = *v43;
    HIDWORD(result[65].var2.var3) = *&v42[3];
    *(&result[65].var2.var0 + 1) = *v42;
    HIDWORD(result[65].var3.var3) = *&v41[3];
    *(&result[65].var3.var0 + 1) = *v41;
    HIDWORD(result[67].var2.var3) = *&v40[3];
    *(&result[67].var2.var0 + 1) = *v40;
    HIDWORD(result[67].var3.var3) = *&v39[3];
    *(&result[67].var3.var0 + 1) = *v39;
    *(&result[71].var2.var0 + 1) = *v38;
    *(&result[71].var3.var0 + 1) = *v37;
    HIDWORD(result[72].var2.var3) = *&v36[3];
    *(&result[72].var2.var0 + 1) = *v36;
    HIDWORD(result[72].var3.var3) = *&v35[3];
    *(&result[72].var3.var0 + 1) = *v35;
    HIDWORD(result[73].var2.var3) = *&v34[3];
    *(&result[73].var2.var0 + 1) = *v34;
    *(&result[73].var3.var0 + 1) = *v33;
    HIDWORD(result[74].var2.var3) = *&v32[3];
    *(&result[74].var2.var0 + 1) = *v32;
    HIDWORD(result[74].var3.var3) = *&v31[3];
    *(&result[74].var3.var0 + 1) = *v31;
    *(&result->var2.var0 + 1) = *v104;
    HIDWORD(result->var2.var3) = *&v104[3];
    *(&result->var3.var0 + 1) = *v103;
    HIDWORD(result->var3.var3) = *&v103[3];
    HIDWORD(result[1].var2.var3) = *&v102[3];
    *(&result[1].var2.var0 + 1) = *v102;
    *(&result[1].var3.var0 + 1) = *v101;
    HIDWORD(result[1].var3.var3) = *&v101[3];
    HIDWORD(result[4].var2.var3) = *&v100[3];
    *(&result[4].var2.var0 + 1) = *v100;
    HIDWORD(result[4].var3.var3) = *&v99[3];
    *(&result[4].var3.var0 + 1) = *v99;
    result[5].var0 = @"HangTracerEnableForceQuitDetection";
    result[5].var1 = &self->_forceQuitDetectionEnabled;
    result[5].var5 = "initPropertyForceQuitDetectionEnabled:";
    result[6].var0 = @"HangTracerCollectOSSignposts";
    result[6].var1 = &self->_shouldCollectOSSignposts;
    result[7].var0 = @"HangTracerSavedTailspinsMaxMB";
    result[7].var1 = &self->_savedTailspinMaxMB;
    result[7].var2.var1 = 50;
    result[8].var0 = @"HangTracerKeepTailspins";
    result[8].var1 = &self->_keepTailspinsLegacy;
    result[9].var0 = @"HangTracerKeepTailspinsWithFormat";
    result[9].var1 = &self->_tailspinSaveFormat;
    result[9].var2.var3 = @"compressed";
    result[9].var3.var3 = @"none";
    result[10].var1 = &self->_shouldSaveTailspins;
    result[10].var5 = "initPropertyShouldSaveAndCompressTailspins:";
    result[11].var0 = @"HangTracerIncludeDiskInfo";
    result[11].var1 = &self->_shouldIncludeDiskInfo;
    result[12].var0 = @"HangTracerEnableDisplayData";
    result[12].var1 = &self->_shouldIncludeDisplayData;
    result[13].var0 = @"HangTracerIncludeNetworkState";
    result[13].var1 = &self->_shouldIncludeNetworkState;
    result[14].var0 = @"HangTracerThirdPartyRunloopLogsEnabled";
    result[14].var1 = &self->_thirdPartyRunLoopHangLogsEnabled;
    result[15].var0 = @"HangTracerSamplingPercentForMicroHangs";
    result[15].var1 = &self->_samplingPercentForMicroHangs;
    result[16].var0 = @"HangTracerPercentFullSpinReports";
    result[16].var1 = &self->_runloopHangPercentHeavyLogs;
    result[17].var0 = @"HangTracerDailyMicroHangLogLimit";
    result[17].var1 = &self->_runLoopMicroHangDailyLogLimit;
    result[18].var0 = @"HangTracerDailyLogLimit";
    result[18].var1 = &self->_runLoopHangDailyLogLimit;
    result[19].var0 = @"HangTracerPerPeriodLogLimit";
    result[19].var1 = &self->_runLoopHangPerPeriodLogLimit;
    result[20].var0 = @"HangTracerDailyLongLogLimit";
    result[20].var1 = &self->_runLoopLongHangDailyLogLimit;
    result[21].var0 = @"HangTracerDailyThirdPartyLogLimit";
    result[21].var1 = &self->_runloopHangThirdPartyDailyLogLimit;
    result[22].var0 = @"HangTracerFenceHangLogLimit";
    result[22].var1 = &self->_fenceHangDailyLogLimit;
    result[23].var0 = @"HangTracerHangTimeoutDuration";
    v9 = vdupq_n_s64(0x2328uLL);
    result[23].var1 = &self->_runloopHangTimeoutDurationMSec;
    result[24].var0 = @"HangTracerDuration";
    result[24].var1 = &self->_runloopHangDurationThresholdMSec;
    result[25].var0 = @"HangTracerLongHangDurationThreshold";
    result[25].var1 = &self->_runloopLongHangDurationThresholdMSec;
    v10 = vdupq_n_s64(0x7D0uLL);
    result[26].var0 = @"HangTracerThirdPartyHangThreshold";
    result[26].var1 = &self->_runloopHangThirdPartyDurationThresholdMSec;
    result[27].var0 = @"HangTracerSpringBoardHangIORegGPUDumpTimeout";
    result[27].var1 = &self->_springBoardHangIORegGPUDumpTimeoutMSec;
    result[28].var0 = @"HangTracerFenceTrackingEnabled";
    result[28].var1 = &self->_fenceTrackingEnabled;
    HIDWORD(result[28].var2.var3) = *&v82[3];
    HIDWORD(result[28].var3.var3) = *&v81[3];
    result[29].var0 = @"HangTracerSlowActPerAppMax";
    result[29].var1 = &self->_slowAppActivationPerAppMaxLogLimit;
    result[30].var0 = @"HangTracerSlowActDailyLogLimit";
    result[30].var1 = &self->_slowAppActivationDailyLogLimit;
    result[31].var0 = @"HangTracerSlowActTailspinsEnabled";
    result[31].var1 = &self->_slowAppActivationTailspinEnabled;
    HIDWORD(result[31].var2.var3) = *&v80[3];
    HIDWORD(result[31].var3.var3) = *&v79[3];
    result[32].var0 = @"HangTracerSlowActLaunchTailspinThreshold";
    result[32].var1 = &self->_slowAppActivationThresholdMSec;
    v11 = vdupq_n_s64(0x1388uLL);
    result[33].var0 = @"HangTracerEnableSignpostMonitoring";
    result[33].var1 = &self->_signpostMonitoringEnabled;
    result[34].var0 = @"HangTracerSignpostMonitoringDailyLogLimit";
    result[34].var1 = &self->_signpostMonitoringDailyLogLimit;
    result[35].var0 = @"HangTracerSignpostMonitoringPerPeriodLogLimit";
    result[35].var1 = &self->_signpostMonitoringPerPeriodLogLimit;
    result[36].var0 = @"HangTracerEnableAppLaunchMonitoring";
    result[36].var1 = &self->_appLaunchMonitoringEnabled;
    HIDWORD(result[36].var2.var3) = *&v76[3];
    HIDWORD(result[36].var3.var3) = *&v75[3];
    result[37].var0 = @"HangTracerEnableWorkflowResponsiveness";
    result[37].var1 = &self->_workflowResponsivenessEnabled;
    result[38].var0 = @"HangTracerWorkflowResponsivenessDailyLogLimit";
    result[38].var1 = &self->_workflowResponsivenessDailyLogLimit;
    result[39].var0 = @"HangTracerWorkflowResponsivenessPerPeriodLogLimit";
    result[39].var1 = &self->_workflowResponsivenessPerPeriodLogLimit;
    result[19].var2.var1 = 4;
    result[19].var3.var1 = 4;
    result[35].var2.var1 = 4;
    result[35].var3.var1 = 4;
    result[39].var2.var1 = 4;
    result[39].var3.var1 = 4;
    result[40].var0 = @"EPLEnabledProfile";
    result[40].var1 = &self->_eplEnabledProfile;
    HIDWORD(result[40].var2.var3) = *&v72[3];
    HIDWORD(result[40].var3.var3) = *&v71[3];
    result[41].var0 = @"EPLEnabled";
    result[41].var1 = &self->_eplEnabled;
    result[42].var0 = @"EPLTimeoutTimestampSec";
    result[42].var1 = &self->_eplTimeoutTimestampSec;
    result[43].var0 = @"HangTracerReportPeriod";
    result[43].var1 = &self->_reportPeriodMATU;
    result[43].var5 = "initPropertyReportPeriod:";
    result[44].var0 = @"HangTracerInternalSettingCreated";
    result[44].var1 = &self->_hasInternalSettings;
    result[44].var5 = "initPropertyHaveInternalSettings:";
    result[45].var0 = @"HangTracerHUDThresholdMSec";
    result[45].var1 = &self->_hudThresholdMSec;
    result[45].var2.var1 = 500;
    result[45].var3.var1 = 500;
    result[46].var0 = @"HangTracerForceQuitDetectionThresholdMSec";
    result[46].var1 = &self->_forceQuitDetectionThresholdMSec;
    result[46].var2.var1 = 3000;
    result[46].var3.var1 = 3000;
    result[47].var0 = @"HangTracerEnableTerminationsInHUD";
    result[47].var1 = &self->_areProcessTerminationsMonitored;
    HIDWORD(result[47].var2.var3) = *&v66[3];
    HIDWORD(result[47].var3.var3) = *&v65[3];
    result[48].var0 = @"HangTracerEnableTerminationsAllProcessesTracked";
    result[48].var1 = &self->_areAllProcessTerminationsMonitored;
    result[49].var0 = @"HangTracerEnableTerminationsCriticalProcessesTracked";
    result[49].var1 = &self->_areCriticalProcessTerminationsMonitored;
    HIDWORD(result[49].var3.var3) = *&v61[3];
    result[50].var0 = @"HangTracerEnableTerminationsTrackedProcessesList";
    result[50].var1 = &self->_processTerminationNamesMonitored;
    result[50].var5 = "initNSObjectProperty:";
    result[51].var0 = @"HangTracerEnableTerminationsTrackedReasons";
    result[51].var1 = &self->_processTerminationReasonsMonitored;
    result[51].var5 = "initUnsignedLongLongProperty:";
    result[52].var0 = @"HangTracerShouldEmitTelemetry";
    result[52].var1 = &self->_shouldEmitTelemetry;
    result[53].var0 = @"HangTracerThirdPartyDevHangHUDEnabled";
    result[53].var1 = &self->_thirdPartyDevHangHUDEnabled;
    result[54].var0 = @"HangTracerThirdPartyIncludeNonDevelopmentApps";
    result[54].var1 = &self->_thirdPartyIncludeNonDevelopmentApps;
    result[55].var0 = @"HangTracerThirdPartyDevBootSessionUUID";
    result[55].var1 = &self->_thirdPartyDevBootSessionUUID;
    result[2].var5 = "initNSStringProperty:";
    result[9].var5 = "initNSStringProperty:";
    result[55].var5 = "initNSStringProperty:";
    result[56].var0 = @"HangTracerThirdPartyDevPreferredLanguages";
    result[56].var1 = &self->_thirdPartyDevPreferredLanguages;
    result[56].var5 = "initPropertyThirdPartyDevPreferredLanguages:";
    result[57].var0 = @"HangTracerHangWaitTimeoutDuration";
    result[57].var1 = &self->_hangWaitTimeoutDurationMSec;
    result[58].var0 = @"HangTracerConsecutiveHangWaitTimeoutDuration";
    result[58].var1 = &self->_consecutiveHangWaitTimeoutDurationMSec;
    result[23].var5 = "initUnsignedLongProperty:";
    result[24].var5 = "initUnsignedLongProperty:";
    result[25].var5 = "initUnsignedLongProperty:";
    result[26].var5 = "initUnsignedLongProperty:";
    result[27].var5 = "initUnsignedLongProperty:";
    result[32].var5 = "initUnsignedLongProperty:";
    result[57].var5 = "initUnsignedLongProperty:";
    result[58].var5 = "initUnsignedLongProperty:";
    result[59].var0 = @"enableLoggingForPoster";
    result[59].var1 = &self->_enableLoggingForPoster;
    result[60].var0 = @"enableLoggingForWidgetRenderer";
    result[60].var1 = &self->_enableLoggingForWidgetRenderer;
    result[61].var0 = @"PDSEPrefHangTracerKillSwitch";
    result[61].var1 = &self->_pdseHangTracerKillSwitch;
    result[62].var0 = @"PDSEPrefHTRateOnlyKillSwitch";
    result[62].var1 = &self->_pdseHTRateOnlyKillSwitch;
    result[63].var0 = @"PDSEPrefHTThirdPartyKillSwitch";
    result[63].var1 = &self->_pdseHTThirdPartyKillSwitch;
    result[64].var0 = @"PDSEPrefAppLaunchKillSwitch";
    result[64].var1 = &self->_pdseAppLaunchKillSwitch;
    result[65].var0 = @"PDSEPrefWBClientHangKillSwitch";
    result[65].var1 = &self->_pdseWBClientHangKillSwitch;
    result[66].var0 = @"PDSEPrefWBClientHangPeriodDays";
    result[66].var1 = &self->_pdseWBClientHangPeriodDays;
    result[67].var0 = @"HangTracerShouldUploadToDiagPipe";
    result[67].var1 = &self->_shouldUploadToDiagPipe;
    result[68].var0 = @"tailspinReportingThresholdSec";
    result[68].var1 = &self->_tailspinReportingThresholdSec;
    result[69].var0 = @"HTFGTrackingTelemetryPersistentEmissionRateSec";
    result[69].var1 = &self->_persistentFGEmissionThresholdSec;
    result[70].var0 = @"HTFGTrackingTelemetryMinEmissionThresholdSec";
    result[70].var1 = &self->_minFGEmissionThresholdSec;
    result[71].var0 = @"ShouldCollectCPURoleInfo";
    result[71].var1 = &self->_shouldCollectCPURoleInfo;
    HIDWORD(result[71].var2.var3) = *&v38[3];
    HIDWORD(result[71].var3.var3) = *&v37[3];
    result[72].var0 = @"PDSEPrefSentryKillSwitch";
    result[72].var1 = &self->_pdseSentryKillSwitch;
    result[73].var0 = @"PDSEPrefWorkflowResponsivenessKillSwitch";
    result[73].var1 = &self->_pdseWorkflowResponsivenessKillSwitch;
    HIDWORD(result[73].var3.var3) = *&v33[3];
    result[74].var0 = @"PDSEPrefCATailspinKillSwitch";
    result[2].var4 = 0;
    result[3].var4 = 0;
    *&result[58].var2.var0 = vdupq_n_s64(0x15EuLL);
    result[58].var4 = 0;
    result[4].var0 = 0;
    result[4].var4 = 0;
    result[5].var4 = 0;
    result[9].var4 = 0;
    result[10].var0 = 0;
    result[57].var4 = 0;
    __asm { FMOV            V17.2D, #2.0 }

    *&result[15].var2.var0 = _Q17;
    *&result[16].var2.var0 = xmmword_10003DB30;
    *&result[24].var2.var0 = vdupq_n_s64(0x1F4uLL);
    *&result[57].var2.var0 = v11;
    result[74].var1 = &self->_pdseCATailspinKillSwitch;
    *&result[26].var2.var0 = vdupq_n_s64(0x3E8uLL);
    result[56].var4 = 0;
    *&result[56].var2.var0 = 0u;
    *&result[23].var2.var0 = v9;
    *&result[27].var2.var0 = v9;
    result[42].var2 = v6;
    result[42].var3 = v8;
    result[55].var4 = 0;
    *&result[55].var2.var0 = 0u;
    *&result[43].var2.var0 = vdupq_n_s64(0x40AC200000000000uLL);
    result[75].var0 = @"HTSEEnablementPeriodDays";
    result[54].var3.var0 = 0;
    result[54].var4 = 0;
    result[54].var5 = "initBoolProperty:";
    result[75].var1 = &self->_pdseHTPeriodDays;
    result->var2.var0 = 1;
    result[53].var4 = 0;
    result[53].var5 = "initBoolProperty:";
    result[54].var2.var0 = 0;
    result->var3.var0 = 0;
    result->var4 = 0;
    result->var5 = "initBoolProperty:";
    result[52].var5 = "initBoolProperty:";
    result[53].var2.var0 = 0;
    result[53].var3.var0 = 0;
    result[1].var2.var0 = 0;
    result[1].var3.var0 = 0;
    result[52].var2.var0 = 1;
    result[52].var3.var0 = 1;
    result[52].var4 = 0;
    result[1].var4 = 0;
    result[1].var5 = "initBoolProperty:";
    *&result[2].var2.var0 = 0u;
    *&result[3].var2.var0 = 0u;
    result[4].var2.var0 = 0;
    result[51].var4 = 0;
    *&result[51].var2.var0 = 0u;
    result[4].var3.var0 = 0;
    result[5].var2.var0 = 0;
    result[5].var3.var0 = 0;
    result[49].var5 = "initBoolProperty:";
    result[50].var4 = 0;
    *&result[50].var2.var0 = 0u;
    result[6].var2.var0 = 0;
    result[6].var3.var0 = 0;
    result[49].var2.var0 = 0;
    result[49].var3.var0 = 0;
    result[49].var4 = 0;
    result[6].var4 = 0;
    result[6].var5 = "initBoolProperty:";
    result[76].var0 = @"PDSEPrefHTRateOnlyPeriodDays";
    result[48].var3.var0 = 0;
    result[48].var4 = 0;
    result[48].var5 = "initBoolProperty:";
    result[7].var3.var1 = 20;
    result[7].var4 = 0;
    result[7].var5 = "initUnsignedIntProperty:";
    result[47].var4 = 0;
    result[47].var5 = "initBoolProperty:";
    result[48].var2.var0 = 0;
    result[8].var2.var0 = 0;
    result[8].var3.var0 = 0;
    result[8].var4 = 0;
    result[8].var5 = "initBoolProperty:";
    result[47].var2.var0 = 0;
    result[47].var3.var0 = 0;
    result[10].var2.var0 = 0;
    result[10].var3.var0 = 0;
    result[10].var4 = 0;
    result[11].var2.var0 = 0;
    result[46].var4 = 1;
    result[46].var5 = "initUnsignedIntProperty:";
    result[11].var3.var0 = 0;
    result[11].var4 = 0;
    result[11].var5 = "initBoolProperty:";
    result[12].var2.var0 = 1;
    result[45].var4 = 1;
    result[45].var5 = "initUnsignedIntProperty:";
    result[12].var3.var0 = 1;
    result[12].var4 = 0;
    result[12].var5 = "initBoolProperty:";
    result[44].var2.var0 = 0;
    result[44].var3.var0 = 0;
    result[44].var4 = 0;
    result[13].var2.var0 = 0;
    result[13].var3.var0 = 0;
    result[13].var4 = 0;
    result[13].var5 = "initBoolProperty:";
    result[14].var2.var0 = 1;
    result[43].var4 = 2;
    result[14].var3.var0 = 1;
    result[14].var4 = 0;
    result[14].var5 = "initBoolProperty:";
    result[15].var4 = 0;
    result[42].var4 = 0;
    result[42].var5 = "initDoubleProperty:";
    result[15].var5 = "initDoubleProperty:";
    result[16].var4 = 0;
    result[16].var5 = "initDoubleProperty:";
    result[41].var3.var0 = 0;
    result[41].var4 = 0;
    result[41].var5 = "initBoolProperty:";
    result[76].var1 = &self->_pdseHTRateOnlyPeriodDays;
    result[18].var2.var1 = 25;
    result[40].var4 = 0;
    result[40].var5 = "initBoolProperty:";
    result[41].var2.var0 = 0;
    result[18].var3.var1 = 25;
    result[20].var2.var1 = 25;
    result[20].var3.var1 = 25;
    result[22].var2.var1 = 25;
    result[40].var2.var0 = 0;
    result[40].var3.var0 = 0;
    result[22].var3.var1 = 25;
    result[29].var2.var1 = 25;
    result[29].var3.var1 = 25;
    result[30].var2.var1 = 25;
    result[39].var4 = 0;
    result[39].var5 = "initIntProperty:";
    result[30].var3.var1 = 25;
    result[34].var2.var1 = 25;
    result[38].var2.var1 = 25;
    result[38].var3.var1 = 25;
    result[38].var4 = 0;
    result[38].var5 = "initIntProperty:";
    result[34].var3.var1 = 25;
    result[76].var3.var1 = 25;
    result[37].var3.var0 = 0;
    result[37].var4 = 0;
    result[37].var5 = "initBoolProperty:";
    result[17].var2.var1 = 10;
    result[17].var3.var1 = 10;
    result[17].var4 = 0;
    result[36].var4 = 0;
    result[36].var5 = "initBoolProperty:";
    result[37].var2.var0 = 1;
    result[17].var5 = "initIntProperty:";
    result[18].var4 = 0;
    result[18].var5 = "initIntProperty:";
    result[35].var5 = "initIntProperty:";
    result[36].var2.var0 = 1;
    result[36].var3.var0 = 0;
    result[19].var4 = 0;
    result[19].var5 = "initIntProperty:";
    result[20].var4 = 0;
    result[20].var5 = "initIntProperty:";
    result[34].var5 = "initIntProperty:";
    result[35].var4 = 0;
    result[21].var2.var1 = 10;
    result[21].var3.var1 = 10;
    result[21].var4 = 0;
    result[21].var5 = "initIntProperty:";
    result[33].var5 = "initBoolProperty:";
    result[34].var4 = 0;
    result[22].var4 = 0;
    result[22].var5 = "initIntProperty:";
    result[23].var4 = 1;
    result[33].var2.var0 = 1;
    result[33].var3.var0 = 0;
    result[33].var4 = 0;
    result[24].var4 = 1;
    *&result[25].var2.var0 = v10;
    result[25].var4 = 1;
    result[26].var4 = 1;
    *&result[32].var2.var0 = v11;
    result[32].var4 = 1;
    result[27].var4 = 0;
    result[28].var2.var0 = 1;
    result[28].var3.var0 = 1;
    result[31].var3.var0 = 0;
    result[31].var4 = 0;
    result[31].var5 = "initBoolProperty:";
    result[28].var4 = 0;
    result[28].var5 = "initBoolProperty:";
    result[29].var4 = 0;
    result[30].var4 = 0;
    result[30].var5 = "initIntProperty:";
    result[31].var2.var0 = 0;
    result[29].var5 = "initIntProperty:";
    result[59].var2.var0 = 0;
    result[59].var3.var0 = 0;
    result[59].var4 = 0;
    result[59].var5 = "initBoolProperty:";
    result[60].var2.var0 = 0;
    result[60].var3.var0 = 0;
    result[60].var4 = 0;
    result[60].var5 = "initBoolProperty:";
    result[61].var2.var0 = 0;
    result[61].var3.var0 = 0;
    result[61].var4 = 0;
    result[61].var5 = "initBoolProperty:";
    result[62].var2.var0 = 0;
    result[62].var3.var0 = 0;
    result[62].var4 = 0;
    result[62].var5 = "initBoolProperty:";
    result[63].var2.var0 = 0;
    result[63].var3.var0 = 0;
    result[63].var4 = 0;
    result[63].var5 = "initBoolProperty:";
    result[64].var2.var0 = 0;
    result[64].var3.var0 = 0;
    result[64].var4 = 0;
    result[64].var5 = "initBoolProperty:";
    result[65].var2.var0 = 1;
    result[65].var3.var0 = 1;
    result[65].var4 = 0;
    result[65].var5 = "initBoolProperty:";
    result[77].var0 = @"PDSEPrefHTThirdPartyPeriodDays";
    result[66].var2.var1 = 0x7FFFFFFF;
    result[66].var3.var1 = 0x7FFFFFFF;
    result[66].var4 = 0;
    result[66].var5 = "initIntProperty:";
    result[67].var2.var0 = 1;
    result[67].var3.var0 = 1;
    result[67].var4 = 0;
    result[67].var5 = "initBoolProperty:";
    *&result[68].var2.var0 = vdupq_n_s64(0x40BC200000000000uLL);
    result[68].var4 = 0;
    result[68].var5 = "initDoubleProperty:";
    *&result[69].var2.var0 = vdupq_n_s64(0x408C200000000000uLL);
    result[69].var4 = 0;
    result[69].var5 = "initDoubleProperty:";
    *&result[70].var2.var0 = vdupq_n_s64(0x404E000000000000uLL);
    result[70].var4 = 0;
    result[70].var5 = "initDoubleProperty:";
    result[71].var2.var0 = 1;
    result[71].var3.var0 = 1;
    result[71].var4 = 0;
    result[71].var5 = "initBoolProperty:";
    result[72].var2.var0 = 0;
    result[72].var3.var0 = 1;
    result[72].var4 = 0;
    result[72].var5 = "initBoolProperty:";
    result[73].var2.var0 = 0;
    result[73].var3.var0 = 1;
    result[73].var4 = 0;
    result[73].var5 = "initBoolProperty:";
    result[74].var2.var0 = 0;
    result[74].var3.var0 = 1;
    result[74].var4 = 0;
    result[74].var5 = "initBoolProperty:";
    result[77].var1 = &self->_pdseHTThirdPartyPeriodDays;
    result[75].var2.var1 = 200;
    result[75].var3.var1 = 1000;
    result[75].var4 = 0;
    result[75].var5 = "initIntProperty:";
    result[76].var2.var1 = 200;
    result[76].var4 = 0;
    result[76].var5 = "initIntProperty:";
    result[77].var2.var1 = 200;
    result[77].var3.var1 = 200;
    result[77].var4 = 0;
    result[77].var5 = "initIntProperty:";
    result[78].var0 = @"PDSEPrefHTThirdPartyNoLogUploadPeriodDays";
    result[78].var1 = &self->_pdseHTThirdPartyNoLogUploadPeriodDays;
    result[78].var2.var1 = 200;
    result[78].var3.var1 = 200;
    result[78].var4 = 0;
    result[78].var5 = "initIntProperty:";
    result[79].var0 = @"PDSEPrefCATailspinPeriodDays";
    result[79].var1 = &self->_pdseCATailspinPeriodDays;
    result[79].var2.var1 = 100;
    result[79].var3.var1 = 0x7FFFFFFF;
    result[79].var4 = 0;
    result[79].var5 = "initIntProperty:";
    result[80].var0 = @"PDSEPrefAppLaunchPeriodDays";
    result[80].var1 = &self->_pdseAppLaunchPeriodDays;
    result[80].var2.var1 = 200;
    result[80].var3.var1 = 400;
    result[80].var4 = 0;
    result[80].var5 = "initIntProperty:";
    result[81].var0 = @"PDSEPrefSentryPeriodDays";
    result[81].var1 = &self->_pdseSentryPeriodDays;
    result[81].var2.var1 = 10;
    result[81].var3.var1 = 0x7FFFFFFF;
    result[81].var4 = 0;
    result[81].var5 = "initIntProperty:";
    result[82].var0 = @"PDSEPrefWorkflowResponsivenessPeriodDays";
    result[82].var1 = &self->_pdseWorkflowResponsivenessPeriodDays;
    result[82].var2.var1 = 20;
    result[82].var3.var1 = 1000;
    result[82].var4 = 0;
    result[82].var5 = "initIntProperty:";
    result[83].var0 = @"HangTracerCollectOSSignpostsDeferred";
    result[83].var1 = &self->_shouldAugmentSentryTailspinWithSignposts;
    result[83].var2.var0 = 1;
    *(&result[83].var2.var0 + 1) = *v30;
    HIDWORD(result[83].var2.var3) = *&v30[3];
    result[83].var3.var0 = 0;
    *(&result[83].var3.var0 + 1) = *v29;
    HIDWORD(result[83].var3.var3) = *&v29[3];
    result[83].var4 = 0;
    result[83].var5 = "initBoolProperty:";
    result[84].var0 = @"PDSEPrefHTBadDayKillSwitch";
    result[84].var1 = &self->_pdseHTBadDayKillSwitch;
    result[84].var2.var0 = 0;
    HIDWORD(result[84].var2.var3) = *&v28[3];
    *(&result[84].var2.var0 + 1) = *v28;
    result[84].var3.var0 = 1;
    HIDWORD(result[84].var3.var3) = *&v27[3];
    *(&result[84].var3.var0 + 1) = *v27;
    result[84].var4 = 0;
    *(&result[85].var2.var0 + 1) = *v26;
    result[84].var5 = "initBoolProperty:";
    result[85].var0 = @"PDSEPrefAllowEnableTailspin";
    result[85].var1 = &self->_pdseAllowEnableTailspin;
    result[85].var2.var0 = 1;
    HIDWORD(result[85].var2.var3) = *&v26[3];
    result[85].var3.var0 = 1;
    *(&result[85].var3.var0 + 1) = *v25;
    HIDWORD(result[85].var3.var3) = *&v25[3];
    result[85].var4 = 0;
    result[85].var5 = "initBoolProperty:";
    result[86].var4 = 0;
    *&result[86].var2.var0 = 0u;
    result[86].var5 = "initDoubleProperty:";
    result[87].var2.var1 = 14;
    result[87].var3.var1 = 14;
    result[87].var4 = 0;
    result[87].var5 = "initUnsignedIntProperty:";
    result[88].var2.var1 = 2;
    result[88].var3.var1 = 2;
    result[88].var4 = 0;
    result[88].var5 = "initUnsignedIntProperty:";
    *&result[89].var2.var0 = v10;
    result[89].var4 = 0;
    result[89].var5 = "initUnsignedIntProperty:";
    result[90].var2.var1 = 8;
    result[90].var3.var1 = 8;
    result[90].var4 = 0;
    result[90].var5 = "initUnsignedIntProperty:";
    result[91].var2.var1 = 1;
    result[91].var3.var1 = 1;
    result[91].var4 = 1;
    result[91].var5 = "initUnsignedIntProperty:";
    result[92].var2.var0 = 0;
    *(&result[92].var2.var0 + 1) = *v24;
    HIDWORD(result[92].var2.var3) = *&v24[3];
    result[92].var3.var0 = 0;
    *(&result[92].var3.var0 + 1) = *v23;
    HIDWORD(result[92].var3.var3) = *&v23[3];
    result[92].var4 = 0;
    result[92].var5 = "initBoolProperty:";
    *(&result[93].var2.var0 + 1) = *v22;
    result[93].var2.var0 = 0;
    HIDWORD(result[93].var2.var3) = *&v22[3];
    *(&result[93].var3.var0 + 1) = *v21;
    result[93].var3.var0 = 0;
    HIDWORD(result[93].var3.var3) = *&v21[3];
    result[93].var4 = 0;
    result[93].var5 = "initBoolProperty:";
    result[94].var2.var1 = 0;
    result[94].var3.var1 = 0;
    result[94].var4 = 0;
    result[94].var5 = "initIntProperty:";
    result[95].var2.var0 = 0;
    *(&result[95].var2.var0 + 1) = *v20;
    HIDWORD(result[95].var2.var3) = *&v20[3];
    result[95].var3.var0 = 0;
    *(&result[95].var3.var0 + 1) = *v19;
    HIDWORD(result[95].var3.var3) = *&v19[3];
    result[95].var4 = 0;
    result[95].var5 = "initBoolProperty:";
    result[96].var2.var0 = 0;
    *(&result[96].var2.var0 + 1) = 0;
    HIDWORD(result[96].var2.var3) = 0;
    result[96].var3.var0 = 0;
    *(&result[96].var3.var0 + 1) = v105;
    result[96].var5 = 0;
    *&result[96].var0 = 0u;
    self->_prefInitList = result;
  }

  return result;
}

- (BOOL)shouldDisplayFenceHangToHUD
{
  if ([(HTPrefs *)self hudEnabled]&& [(HTPrefs *)self isInternal])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(HTPrefs *)self thirdPartyDevHangHUDEnabled];
    if (v3)
    {

      LOBYTE(v3) = +[HTProcessInfo isAnyThirdPartyDeveloperProcessForeground];
    }
  }

  return v3;
}

- (BOOL)shouldUpdateHangsHUD
{
  if ([(HTPrefs *)self hudEnabled]&& [(HTPrefs *)self isInternal])
  {
    return 1;
  }

  return [(HTPrefs *)self thirdPartyDevHangHUDEnabled];
}

- (id)getBootSessionUUID
{
  if (qword_100067B80 != -1)
  {
    sub_100034028();
  }

  v3 = qword_100067B88;

  return v3;
}

- (void)savePreferencesForRestoration:(id)a3 withDomain:(id)a4 prefix:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  applicationID = v8;
  if (([(__CFString *)v8 isEqual:@"com.apple.hangtracer"]& 1) == 0)
  {
    v10 = sub_100017020(v9);
    if ([v10 count])
    {
      v11 = +[NSMutableSet set];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v25 = v10;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v32 objects:v41 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v33;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v33 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [NSString stringWithFormat:@"%@.%@", v9, *(*(&v32 + 1) + 8 * i)];
            [v11 addObject:v17];
          }

          v14 = [v12 countByEnumeratingWithState:&v32 objects:v41 count:16];
        }

        while (v14);
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      obj = v7;
      v18 = [obj countByEnumeratingWithState:&v28 objects:v40 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v29;
        do
        {
          for (j = 0; j != v19; j = j + 1)
          {
            if (*v29 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v28 + 1) + 8 * j);
            if ([v11 containsObject:v22])
            {
              v23 = sub_100003824();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v37 = v22;
                v38 = 2112;
                v39 = v9;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Saving Setting Key for restoration: %@ that matches prefix: %@", buf, 0x16u);
              }

              v24 = CFPreferencesCopyValue(v22, applicationID, @"mobile", kCFPreferencesAnyHost);
              CFPreferencesSetValue([NSString stringWithFormat:@"%@.%@", @"HTSavedForRestoration", v22], v24, applicationID, @"mobile", kCFPreferencesAnyHost);
              if (v24)
              {
                CFRelease(v24);
              }
            }
          }

          v19 = [obj countByEnumeratingWithState:&v28 objects:v40 count:16];
        }

        while (v19);
      }

      v10 = v25;
    }
  }
}

- (BOOL)compareBootSessionUUIDAndClearPreferencesWithDomain:(id)a3 prefix:(id)a4
{
  v6 = a3;
  v30 = a4;
  v7 = sub_10002B7C8(v6, @"mobile", v30);
  if ([v7 count])
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v36;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v35 + 1) + 8 * v12);
        if ([v13 hasSuffix:@"HangTracerThirdPartyDevBootSessionUUID"])
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v35 objects:v44 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v15 = v13;

      if (v15)
      {
        v14 = CFPreferencesCopyValue(v15, v6, @"mobile", kCFPreferencesAnyHost);
        if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v16 = [(HTPrefs *)self getBootSessionUUID];
          v17 = [v14 isEqualToString:v16];

          if (v17)
          {
            goto LABEL_28;
          }

          v28 = v15;
          v29 = v7;
          v27 = v17 ^ 1;
          [(HTPrefs *)self savePreferencesForRestoration:v8 withDomain:v6 prefix:v30];
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v18 = v8;
          v19 = [v18 countByEnumeratingWithState:&v31 objects:v43 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v32;
            do
            {
              for (i = 0; i != v20; i = i + 1)
              {
                if (*v32 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v31 + 1) + 8 * i);
                v24 = sub_100003824();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v40 = v23;
                  v41 = 2112;
                  v42 = v30;
                  _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Removing Setting Key: %@ that matches prefix: %@", buf, 0x16u);
                }

                CFPreferencesSetValue(v23, 0, v6, @"mobile", kCFPreferencesAnyHost);
              }

              v20 = [v18 countByEnumeratingWithState:&v31 objects:v43 count:16];
            }

            while (v20);
          }

          [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
          v15 = v28;
          v7 = v29;
          v25 = v27;
LABEL_29:

          goto LABEL_30;
        }
      }

      v14 = 0;
      goto LABEL_28;
    }

LABEL_10:

    v14 = 0;
    v15 = 0;
LABEL_28:
    v25 = 0;
    goto LABEL_29;
  }

  v25 = 0;
LABEL_30:

  return v25;
}

- (void)refreshHTPrefs
{
  v3 = sub_100003824();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v11[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "HTPrefs: Refreshing preferences", v11, 2u);
  }

  v4 = [NSDictionary dictionaryWithContentsOfFile:self->__profilePath];
  installedHTProfileDict = self->__installedHTProfileDict;
  self->__installedHTProfileDict = v4;

  CFPreferencesAppSynchronize(self->__htTaskingDomain);
  CFPreferencesAppSynchronize(self->__htDomain);
  [(HTPrefs *)self earlyInitNecessaryPrefs];
  if (!self->_isInternal)
  {
    if (AMFIIsDeveloperModeEnabled())
    {
      v6 = sub_100003824();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11[0]) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Skipping boot session UUID comparison because the device is in developer mode.", v11, 2u);
      }
    }

    else if ([(HTPrefs *)self compareBootSessionUUIDAndClearPreferencesWithDomain:self->__htTaskingDomain prefix:@"HTThirdPartyDevSupport"])
    {
      sub_1000145B4(0);
    }
  }

  v7 = [(HTPrefs *)self prefInitList];
  v11[2] = 1;
  v11[3] = 0;
  v11[0] = @"HangTracerEnabled";
  v11[1] = &self->_hangtracerDaemonEnabled;
  v11[4] = 0;
  v11[5] = "initPropertyHangtracerDaemonEnabled:";
  [(HTPrefs *)self initPropertyHangtracerDaemonEnabled:v11];
  for (i = v7->var5; i; ++v7)
  {
    [self i];
    i = v7[1].var5;
  }

  [(HTPrefs *)self initPropertyProcessTerminationSubReasonsMonitored:?];
  if ([(HTPrefs *)self shouldPostHTPrefsChangedNotification])
  {
    [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:0];
    v9 = sub_100003824();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = @"com.apple.hangtracer.htprefs.refreshed";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Posting notification %@", buf, 0xCu);
    }

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 postNotificationName:@"com.apple.hangtracer.htprefs.refreshed" object:self userInfo:0];
  }
}

- (void)earlyInitNecessaryPrefs
{
  v5[0] = @"HangTracerEnableCustomerMode";
  v5[1] = &self->_customerModeEnabled;
  v6 = 0;
  v7 = 0;
  v2 = "initBoolProperty:";
  v8 = 0;
  v9 = "initBoolProperty:";
  v10 = 0;
  p_isInternal = &self->_isInternal;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = "initPropertyIsInternal:";
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  if ("initBoolProperty:")
  {
    v4 = v5;
    do
    {
      [self v2];
      v2 = v4[11];
      v4 += 6;
    }

    while (v2);
  }
}

- (void)__createInternalSettings
{
  if (![(HTPrefs *)self isInternal])
  {
    return;
  }

  v3 = CFPreferencesCopyValue(@"HangTracerInternalSettingCreated", self->__htTaskingDomain, @"mobile", kCFPreferencesAnyHost);
  v4 = v3;
  if (!v3 || ([v3 BOOLValue] & 1) == 0)
  {
    v5 = sub_100003824();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "checkPreferences: Internal install, force enabled.", buf, 2u);
    }

    CFPreferencesSetValue(@"HangTracerEnabled", kCFBooleanTrue, self->__htTaskingDomain, @"mobile", kCFPreferencesAnyHost);
    CFPreferencesSetValue(@"HangTracerInternalSettingCreated", kCFBooleanTrue, self->__htTaskingDomain, @"mobile", kCFPreferencesAnyHost);
  }

  v6 = CFPreferencesCopyValue(@"HangTracerInternalSettingsVersion", self->__htTaskingDomain, @"mobile", kCFPreferencesAnyHost);
  v7 = v6;
  if (!v6)
  {
    CFPreferencesSetValue(@"HangTracerDuration", 0, self->__htTaskingDomain, @"mobile", kCFPreferencesAnyHost);
    goto LABEL_11;
  }

  if ([v6 unsignedIntegerValue] != 3)
  {
LABEL_11:
    v8 = [@"HangTracerEnableTerminationsTrackedReasons" stringByAppendingString:@"."];
    v9 = [v8 stringByAppendingFormat:@"%llu", 2];
    v10 = CFPreferencesCopyValue(v9, self->__htTaskingDomain, @"mobile", kCFPreferencesAnyHost);
    v11 = v10;
    if (v10)
    {
      CFPreferencesSetValue(v9, +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 unsignedLongLongValue] & 0xFFFFFFFFFFFBFFFFLL), self->__htTaskingDomain, @"mobile", kCFPreferencesAnyHost);
    }

    CFPreferencesSetValue(@"HangTracerInternalSettingsVersion", &off_10005CC00, self->__htTaskingDomain, @"mobile", kCFPreferencesAnyHost);
  }

  v12 = CFPreferencesCopyValue(@"HangTracerEnableTailspin", self->__htTaskingDomain, @"mobile", kCFPreferencesAnyHost);
  if (!v12)
  {
    CFPreferencesSetValue(@"HangTracerEnableTailspin", kCFBooleanTrue, self->__htTaskingDomain, @"mobile", kCFPreferencesAnyHost);
  }
}

- (void)setupPrefsWithQueue:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    sub_10003403C();
  }

  v5 = v4;
  [(HTPrefs *)self setupPrefsWithQueue:v4 profilePath:@"/Library/Managed Preferences/mobile/.GlobalPreferences.plist" taskingDomainName:@"com.apple.da" hangtracerDomain:@"com.apple.hangtracer" setupInternalPrefs:1];
}

- (void)setupPrefsWithQueue:(id)a3 profilePath:(id)a4 taskingDomainName:(__CFString *)a5 hangtracerDomain:(__CFString *)a6 setupInternalPrefs:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = sub_100003824();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "HTPrefs initialization", buf, 2u);
  }

  objc_storeStrong(&self->__profilePath, a4);
  self->__htTaskingDomain = a5;
  self->__htDomain = a6;
  *&self->_shouldAllowSentryEnablement = 0;
  [(HTPrefs *)self earlyInitNecessaryPrefs];
  if (v7)
  {
    [(HTPrefs *)self __createInternalSettings];
  }

  v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  if (!self->__prefsQueue)
  {
    v16 = dispatch_queue_create_with_target_V2("com.apple.hangtracer.preferences", v15, v12);
    prefsQueue = self->__prefsQueue;
    self->__prefsQueue = v16;
  }

  objc_initWeak(location, self);
  *buf = 0;
  v55 = buf;
  v56 = 0x2020000000;
  v57 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100023E4C;
  v28[3] = &unk_100055CF0;
  v28[5] = buf;
  v28[6] = &v50;
  v28[7] = &v46;
  v28[8] = &v42;
  v28[9] = &v38;
  objc_copyWeak(&v29, location);
  v28[4] = self;
  v18 = objc_retainBlock(v28);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000241C0;
  v27[3] = &unk_100055D18;
  v27[4] = &v30;
  v19 = objc_retainBlock(v27);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100024264;
  v26[3] = &unk_100055D40;
  v26[4] = self;
  v26[5] = &v34;
  v20 = objc_retainBlock(v26);
  notify_register_dispatch(off_100067698, v35 + 6, self->__prefsQueue, v20);
  notify_register_dispatch(off_100067670[0], v43 + 6, self->__prefsQueue, v18);
  notify_register_dispatch(off_100067658[0], v55 + 6, self->__prefsQueue, v18);
  notify_register_dispatch(off_100067660[0], v51 + 6, self->__prefsQueue, v18);
  notify_register_dispatch(off_100067668[0], v47 + 6, self->__prefsQueue, v18);
  notify_register_dispatch(off_100067680[0], v39 + 6, self->__prefsQueue, v18);
  notify_register_dispatch(off_100067678[0], v31 + 6, self->__prefsQueue, v19);
  v24[4] = self;
  *out_token = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000242F4;
  v24[3] = &unk_100055D68;
  v21 = objc_retainBlock(v24);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100024454;
  v23[3] = &unk_100055D68;
  v23[4] = self;
  v22 = objc_retainBlock(v23);
  notify_register_dispatch(off_100067688[0], &out_token[1], self->__prefsQueue, v21);
  notify_register_dispatch(off_100067690[0], out_token, self->__prefsQueue, v22);
  [(HTPrefs *)self setShouldPostHTPrefsChangedNotification:1];
  [(HTPrefs *)self refreshHTPrefs];

  objc_destroyWeak(&v29);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(buf, 8);
  objc_destroyWeak(location);
}

- (void)_removeAllPrefs
{
  v37[0] = @"HangTracerInternalSettingCreated";
  v37[1] = @"HangTracerInternalSettingsVersion";
  v37[2] = @"HangTracerReportPeriod";
  v37[3] = @"HangTracerEnableCustomerMode";
  v37[4] = @"HangTracerEnabled";
  v37[5] = @"HangTracerThirdPartyRunloopLogsEnabled";
  v37[6] = @"HangTracerEnableHUD";
  v37[7] = @"HangTracerEnableForceQuitDetection";
  v37[8] = @"HangTracerCollectOSSignposts";
  v37[9] = @"HangTracerCollectOSSignpostsDeferred";
  v37[10] = @"HangTracerEnableTailspin";
  v37[11] = @"HangTracerSavedTailspinsMaxMB";
  v37[12] = @"HangTracerKeepTailspins";
  v37[13] = @"HangTracerKeepTailspinsWithFormat";
  v37[14] = @"HangTracerPercentFullSpinReports";
  v37[15] = @"HangTracerDailyLogLimit";
  v37[16] = @"HangTracerPerPeriodLogLimit";
  v37[17] = @"HangTracerDailyLongLogLimit";
  v37[18] = @"HangTracerDailyThirdPartyLogLimit";
  v37[19] = @"HangTracerDuration";
  v37[20] = @"HangTracerLongHangDurationThreshold";
  v37[21] = @"HangTracerThirdPartyHangThreshold";
  v37[22] = @"HangTracerHangTimeoutDuration";
  v37[23] = @"HangTracerSpringBoardHangIORegGPUDumpTimeout";
  v37[24] = @"HangTracerIncludeDiskInfo";
  v37[25] = @"HangTracerEnableDisplayData";
  v37[26] = @"HangTracerIncludeNetworkState";
  v37[27] = @"HangTracerFenceTrackingEnabled";
  v37[28] = @"HangTracerSlowActTailspinsEnabled";
  v37[29] = @"HangTracerSlowActPerAppMax";
  v37[30] = @"HangTracerSlowActDailyLogLimit";
  v37[31] = @"HangTracerSlowActLaunchTailspinThreshold";
  v37[32] = @"HangTracerEnableSignpostMonitoring";
  v37[33] = @"HangTracerSignpostMonitoringDailyLogLimit";
  v37[34] = @"HangTracerSignpostMonitoringPerPeriodLogLimit";
  v37[35] = @"HangTracerEnableAppLaunchMonitoring";
  v37[36] = @"HangTracerEnableWorkflowResponsiveness";
  v37[37] = @"HangTracerWorkflowResponsivenessDailyLogLimit";
  v37[38] = @"HangTracerWorkflowResponsivenessPerPeriodLogLimit";
  v37[39] = @"HangTracerEnableTerminationsInHUD";
  v37[40] = @"HangTracerEnableTerminationsAllProcessesTracked";
  v37[41] = @"HangTracerEnableTerminationsCriticalProcessesTracked";
  v37[42] = @"HangTracerEnableTerminationsTrackedProcessesList";
  v37[43] = @"HangTracerEnableTerminationsTrackedReasons";
  v37[44] = @"ShouldCollectCPURoleInfo";
  v37[45] = @"HangTracerShouldEmitTelemetry";
  v37[46] = @"HTFGTrackingTelemetryPersistentEmissionRateSec";
  v37[47] = @"HTFGTrackingTelemetryMinEmissionThresholdSec";
  v37[48] = @"EPLEnabled";
  v37[49] = @"EPLTimeoutTimestampSec";
  v37[50] = @"HangTracerHUDThresholdMSec";
  v37[51] = @"HangTracerForceQuitDetectionThresholdMSec";
  v37[52] = @"AutomatedDeviceGroup";
  v37[53] = @"ExperimentGroup";
  v37[54] = @"HangTracerHangWaitTimeoutDuration";
  v37[55] = @"HangTracerConsecutiveHangWaitTimeoutDuration";
  v21 = [NSArray arrayWithObjects:v37 count:56];
  v3 = sub_1000155F4();
  v4 = +[NSMutableArray array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      v9 = 0;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%llu", @"HangTracerEnableTerminationsTrackedReasons", [*(*(&v30 + 1) + 8 * v9) unsignedLongLongValue]);
        [v4 addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v7);
  }

  v11 = [v21 arrayByAddingObjectsFromArray:v4];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      v16 = 0;
      do
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        CFPreferencesSetValue(*(*(&v26 + 1) + 8 * v16), 0, self->__htTaskingDomain, @"mobile", kCFPreferencesAnyHost);
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v14);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = [&__NSArray0__struct countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      v20 = 0;
      do
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(&__NSArray0__struct);
        }

        CFPreferencesSetValue(*(*(&v22 + 1) + 8 * v20), 0, self->__htDomain, @"mobile", kCFPreferencesAnyHost);
        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [&__NSArray0__struct countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v18);
  }

  CFPreferencesSynchronize(self->__htTaskingDomain, @"mobile", kCFPreferencesAnyHost);
  CFPreferencesSynchronize(self->__htDomain, @"mobile", kCFPreferencesAnyHost);
}

@end