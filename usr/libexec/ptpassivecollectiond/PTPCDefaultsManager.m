@interface PTPCDefaultsManager
- (BOOL)_validateInstrumentationConfigDict:(id)a3;
- (BOOL)_valueHasExpectedClass:(id)a3 value:(id)a4;
- (NSDictionary)configurationDict;
- (PTPCDefaultsManager)initWithDefaultsDomain:(id)a3 configurationDictKey:(id)a4 keyToExpectedClassDict:(id)a5 errorOut:(id *)a6;
- (id)objectForKey:(id)a3;
- (id)setObjectForKey:(id)a3 objectValue:(id)a4;
- (void)resetPersistedDefaults;
@end

@implementation PTPCDefaultsManager

- (BOOL)_valueHasExpectedClass:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = sub_1000031A4();
    if (os_signpost_enabled(v11))
    {
      LOWORD(v19) = 0;
      v12 = "InvalidDefaultsKey";
      v13 = "Defaults contain non-string key";
      v14 = v11;
      v15 = 2;
LABEL_10:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v12, v13, &v19, v15);
    }

LABEL_11:

    v10 = 0;
    goto LABEL_12;
  }

  v8 = [(PTPCDefaultsManager *)self keyToExpectedClass];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (!v9)
  {
    v11 = sub_1000031A4();
    if (os_signpost_enabled(v11))
    {
      v19 = 138543362;
      v20 = v6;
      v12 = "UnknownDefaultsKey";
      v13 = "Defaults contain unknown key: %{public}@";
      v14 = v11;
      v15 = 12;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = sub_1000031A4();
    if (os_signpost_enabled(v11))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = 138543618;
      v20 = v6;
      v21 = 2114;
      v22 = v18;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnexpectedClassForKey", "Key '%{public}@' has unexpected class '%{public}@'", &v19, 0x16u);
    }

    goto LABEL_11;
  }

  v10 = 1;
LABEL_12:

  return v10;
}

- (BOOL)_validateInstrumentationConfigDict:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = sub_100003420();
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NilConfigurationDictIsValid", "", buf, 2u);
    }

    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = sub_1000031A4();
    if (os_signpost_enabled(v5))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138543362;
      v22 = v14;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnexpectedClassForConfigurationDict", "Expected dictionary, got unexpected class '%{public}@'", buf, 0xCu);
    }

    LOBYTE(v12) = 0;
    goto LABEL_18;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v6)
  {
LABEL_14:
    LOBYTE(v12) = 1;
    goto LABEL_18;
  }

  v7 = v6;
  v8 = *v17;
LABEL_5:
  v9 = 0;
  while (1)
  {
    if (*v17 != v8)
    {
      objc_enumerationMutation(v5);
    }

    v10 = *(*(&v16 + 1) + 8 * v9);
    v11 = [v4 objectForKeyedSubscript:v10];
    v12 = [(PTPCDefaultsManager *)self _valueHasExpectedClass:v10 value:v11];

    if (!v12)
    {
      break;
    }

    if (v7 == ++v9)
    {
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      LOBYTE(v12) = 1;
      if (v7)
      {
        goto LABEL_5;
      }

      break;
    }
  }

LABEL_18:

  return v12;
}

- (NSDictionary)configurationDict
{
  v3 = [(PTPCDefaultsManager *)self defaults];
  v4 = [(PTPCDefaultsManager *)self configurationDictKey];
  v5 = [v3 valueForKey:v4];

  return v5;
}

- (void)resetPersistedDefaults
{
  v3 = [(PTPCDefaultsManager *)self defaults];
  v4 = [(PTPCDefaultsManager *)self configurationDictKey];
  [v3 removeObjectForKey:v4];

  v5 = sub_100003420();
  if (os_signpost_enabled(v5))
  {
    v6 = [(PTPCDefaultsManager *)self defaultsDomain];
    v7 = 138543362;
    v8 = v6;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HardResetSuccess", "Reset of collection configuration for domain %{public}@", &v7, 0xCu);
  }
}

- (PTPCDefaultsManager)initWithDefaultsDomain:(id)a3 configurationDictKey:(id)a4 keyToExpectedClassDict:(id)a5 errorOut:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [[NSUserDefaults alloc] initWithSuiteName:v11];
  if (!v14)
  {
    if (a6)
    {
      v20 = [NSString stringWithFormat:@"Unable to read defaults domain: '%@'", v11];
      *a6 = [NSError passiveTraceError:1 description:v20];
    }

    v16 = sub_1000031A4();
    if (os_signpost_enabled(v16))
    {
      *buf = 138543362;
      v26 = v11;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CouldNotReadDefaults", "Could not read defaults for domain %{public}@", buf, 0xCu);
    }

    goto LABEL_17;
  }

  v24.receiver = self;
  v24.super_class = PTPCDefaultsManager;
  v15 = [(PTPCDefaultsManager *)&v24 init];
  self = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_defaults, v14);
    objc_storeStrong(&self->_defaultsDomain, a3);
    objc_storeStrong(&self->_configurationDictKey, a4);
    objc_storeStrong(&self->_keyToExpectedClass, a5);
    v16 = [(PTPCDefaultsManager *)self configurationDict];
    if ([(PTPCDefaultsManager *)self _validateInstrumentationConfigDict:v16])
    {
      v17 = sub_100003420();
      if (os_signpost_enabled(v17))
      {
        v18 = [v16 description];
        *buf = 138543362;
        v26 = v18;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InitializedDefaultsManager", "Initialized with current config:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_7;
    }

    if (a6)
    {
      v21 = [NSString stringWithFormat:@"Unable to read defaults domain: '%@'", v11];
      *a6 = [NSError passiveTraceError:1 description:v21];
    }

    v22 = sub_1000031A4();
    if (os_signpost_enabled(v22))
    {
      *buf = 138543362;
      v26 = v11;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MalformedDefaults", "Could not read defaults for domain %{public}@", buf, 0xCu);
    }

LABEL_17:
    v19 = 0;
    goto LABEL_18;
  }

LABEL_7:
  self = self;
  v19 = self;
LABEL_18:

  return v19;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(PTPCDefaultsManager *)self configurationDict];
  if (![(PTPCDefaultsManager *)self _validateInstrumentationConfigDict:v5])
  {
    [(PTPCDefaultsManager *)self resetPersistedDefaults];
    v6 = sub_1000031A4();
    if (os_signpost_enabled(v6))
    {
      LOWORD(v10) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClearingStateDueToInvalidDict", "Encountered invalid persisted configuration. Resetting.", &v10, 2u);
    }

    v5 = &__NSDictionary0__struct;
  }

  v7 = [v5 objectForKeyedSubscript:v4];
  v8 = sub_100003420();
  if (os_signpost_enabled(v8))
  {
    v10 = 138543618;
    v11 = v4;
    v12 = 2114;
    v13 = v7;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ValueForKey", "Fetched key-value pair: '%{public}@' -> '%{public}@'", &v10, 0x16u);
  }

  return v7;
}

- (id)setObjectForKey:(id)a3 objectValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PTPCDefaultsManager *)self _valueHasExpectedClass:v6 value:v7])
  {
    v8 = [(PTPCDefaultsManager *)self configurationDict];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = &__NSDictionary0__struct;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = sub_1000031A4();
      if (os_signpost_enabled(v10))
      {
        v11 = [(PTPCDefaultsManager *)self configurationDictKey];
        v21 = 138543362;
        v22 = v11;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigNotDict", "Object for key '%{public}@' was unexpected class. Clearing and starting over.", &v21, 0xCu);
      }

      v9 = &__NSDictionary0__struct;
    }

    v12 = [v9 mutableCopy];
    v13 = v12;
    if (v7)
    {
      [v12 setObject:v7 forKeyedSubscript:v6];
    }

    else
    {
      [v12 removeObjectForKey:v6];
    }

    v16 = [v13 count];
    v17 = [(PTPCDefaultsManager *)self defaults];
    v18 = [(PTPCDefaultsManager *)self configurationDictKey];
    if (v16)
    {
      [v17 setValue:v13 forKey:v18];
    }

    else
    {
      [v17 removeObjectForKey:v18];
    }

    v19 = sub_100003420();
    if (os_signpost_enabled(v19))
    {
      v21 = 138543618;
      v22 = v6;
      v23 = 2114;
      v24 = v7;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SetKeyValue", "Set key-value pair: '%{public}@' -> '%{public}@'", &v21, 0x16u);
    }

    v15 = 0;
  }

  else
  {
    v14 = sub_1000031A4();
    if (os_signpost_enabled(v14))
    {
      v21 = 138543618;
      v22 = v6;
      v23 = 2114;
      v24 = v7;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidKeyValueSetting", "Attempted to set invalid key-value pair: '%{public}@' -> '%{public}@'", &v21, 0x16u);
    }

    v15 = [NSError passiveTraceError:1 description:@"Attempted to set invalid value for key"];
  }

  return v15;
}

@end