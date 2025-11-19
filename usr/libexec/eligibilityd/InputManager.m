@interface InputManager
+ (id)sharedInstance;
- (BOOL)_onQueue_saveInputsWithError:(id *)a3;
- (BOOL)_saveInputsWithError:(id *)a3;
- (BOOL)setInput:(id)a3 withError:(id *)a4;
- (InputManager)init;
- (NSDictionary)debugDictionary;
- (id)_createDefaultInputs;
- (id)_loadInputsWithError:(id *)a3;
- (id)_onQueue_debugDictionary;
- (id)objectForInputValue:(unint64_t)a3;
- (void)enumerateInputsUsingBlock:(id)a3;
@end

@implementation InputManager

- (NSDictionary)debugDictionary
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10001C2F0;
  v11 = sub_10001C300;
  v12 = 0;
  v3 = [(InputManager *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001C308;
  v6[3] = &unk_100046A18;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)_onQueue_debugDictionary
{
  v3 = [(InputManager *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_opt_new();
  v5 = [(InputManager *)self eligibilityInputs];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001C43C;
  v9[3] = &unk_1000464B8;
  v10 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

- (BOOL)_saveInputsWithError:(id *)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5 = [(InputManager *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C590;
  block[3] = &unk_1000469F0;
  block[4] = self;
  block[5] = &v8;
  block[6] = a3;
  dispatch_sync(v5, block);

  LOBYTE(a3) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return a3;
}

- (BOOL)_onQueue_saveInputsWithError:(id *)a3
{
  v5 = [(InputManager *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(InputManager *)self eligibilityInputs];
  v22 = 0;
  if (asprintf(&v22, "%s%s", "/", "/private/var/db/eligibilityd/eligibility_inputs.plist") == -1)
  {
    v7 = sub_10001F638();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "copy_eligibility_domain_input_manager_plist_path";
      v25 = 2080;
      v26 = "/private/var/db/eligibilityd/eligibility_inputs.plist";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s: Failed to construct absolute path for relative path: %s", buf, 0x16u);
    }
  }

  v8 = v22;
  if (v22)
  {
    v9 = [NSString stringWithUTF8String:v22];
    v10 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v10 encodeObject:v6 forKey:NSKeyedArchiveRootObjectKey];
    v11 = [v10 encodedData];

    v12 = [NSURL fileURLWithPath:v9 isDirectory:0];
    v21 = 0;
    v13 = [v11 writeToURL:v12 options:268435457 error:&v21];
    v14 = v21;
    if (v13)
    {
      free(v8);
      v15 = 1;
      goto LABEL_16;
    }

    v17 = sub_10001F638();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = [v12 path];
      *buf = 136315906;
      v24 = "[InputManager _onQueue_saveInputsWithError:]";
      v25 = 2112;
      v26 = v6;
      v27 = 2112;
      v28 = v20;
      v29 = 2112;
      v30 = v14;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s: Failed to write eligibility data %@ to disk at %@: %@", buf, 0x2Au);
    }
  }

  else
  {
    v16 = sub_10001F638();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v24 = "[InputManager _onQueue_saveInputsWithError:]";
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s: Failed to copy input manager plist path", buf, 0xCu);
    }

    v9 = 0;
    v12 = 0;
    v11 = 0;
    v14 = 0;
  }

  free(v8);
  if (a3)
  {
    v18 = v14;
    v15 = 0;
    *a3 = v14;
  }

  else
  {
    v15 = 0;
  }

LABEL_16:

  return v15;
}

- (id)_loadInputsWithError:(id *)a3
{
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v4, v5, objc_opt_class(), 0];
  v31 = 0;
  if (asprintf(&v31, "%s%s", "/", "/private/var/db/eligibilityd/eligibility_inputs.plist") == -1)
  {
    v7 = sub_10001F638();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "copy_eligibility_domain_input_manager_plist_path";
      v34 = 2080;
      v35 = "/private/var/db/eligibilityd/eligibility_inputs.plist";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s: Failed to construct absolute path for relative path: %s", buf, 0x16u);
    }
  }

  v8 = v31;
  if (!v31)
  {
    v18 = sub_10001F638();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v33 = "[InputManager _loadInputsWithError:]";
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: Failed to copy input manager plist path", buf, 0xCu);
    }

    v9 = 0;
    v11 = 0;
    v10 = 0;
    v13 = 0;
    v12 = 0;
    goto LABEL_22;
  }

  v9 = [NSString stringWithUTF8String:v31];
  v10 = [NSURL fileURLWithPath:v9 isDirectory:0];
  v30 = 0;
  v11 = [NSData dataWithContentsOfURL:v10 options:3 error:&v30];
  v12 = v30;
  if (!v11)
  {
    v19 = sub_10001F638();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v25 = [v10 path];
      *buf = 136315650;
      v33 = "[InputManager _loadInputsWithError:]";
      v34 = 2112;
      v35 = v25;
      v36 = 2112;
      v37 = v12;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s: Failed to deserialize data in %@: %@", buf, 0x20u);
    }

    v11 = 0;
    v13 = 0;
    goto LABEL_22;
  }

  v29 = v12;
  v13 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v11 error:&v29];
  v14 = v29;

  if (!v13)
  {
    v20 = sub_10001F638();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "[InputManager _loadInputsWithError:]";
      v34 = 2112;
      v35 = v14;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: Failed to create unarchiver: %@", buf, 0x16u);
    }

    v13 = 0;
    v17 = 0;
    goto LABEL_18;
  }

  v15 = [v13 decodeObjectOfClasses:v6 forKey:NSKeyedArchiveRootObjectKey];
  if (!v15)
  {
    v21 = sub_10001F638();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v28 = [v10 path];
      v26 = [v13 error];
      *buf = 136315650;
      v33 = "[InputManager _loadInputsWithError:]";
      v34 = 2112;
      v35 = v28;
      v36 = 2112;
      v37 = v26;
      v27 = v26;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s: Failed to decode input from data at %@ : %@", buf, 0x20u);
    }

    v12 = [v13 error];

LABEL_22:
    v17 = 0;
    goto LABEL_23;
  }

  v16 = v15;
  [v13 finishDecoding];
  v17 = v16;
LABEL_18:
  v12 = v14;
LABEL_23:
  free(v8);
  if (a3 && !v17)
  {
    v22 = v12;
    *a3 = v12;
  }

  v23 = v17;

  return v17;
}

- (void)enumerateInputsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(InputManager *)self eligibilityInputs];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001CF18;
  v7[3] = &unk_100046490;
  v8 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

- (BOOL)setInput:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = sub_10001F3E4([v6 type]);
  if (v7)
  {
    v8 = [NSString stringWithUTF8String:v7];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v20 = 0;
    v9 = [(InputManager *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001D158;
    block[3] = &unk_100046468;
    block[4] = self;
    v15 = v8;
    v16 = v6;
    v17 = buf;
    v18 = a4;
    v10 = v8;
    dispatch_sync(v9, block);

    v11 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v12 = sub_10001F638();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[InputManager setInput:withError:]";
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s: Unknown input %@", buf, 0x16u);
    }

    if (a4)
    {
      [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      *a4 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11 & 1;
}

- (id)objectForInputValue:(unint64_t)a3
{
  v5 = sub_10001F3E4(a3);
  if (v5)
  {
    v6 = [NSString stringWithUTF8String:v5];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v16 = sub_10001C2F0;
    v17 = sub_10001C300;
    v18 = 0;
    v7 = [(InputManager *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001D3FC;
    block[3] = &unk_100046440;
    v13 = v6;
    v14 = buf;
    block[4] = self;
    v8 = v6;
    dispatch_sync(v7, block);

    v9 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = sub_10001F638();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[InputManager objectForInputValue:]";
      *&buf[12] = 2048;
      *&buf[14] = a3;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: Unknown input %llu", buf, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)_createDefaultInputs
{
  v2 = objc_opt_new();
  v3 = [[LocatedCountryInput alloc] initWithCountryCodes:0 status:1 process:0];
  if (v3)
  {
    [v2 setObject:v3 forKeyedSubscript:@"OS_ELIGIBILITY_INPUT_COUNTRY_LOCATION"];
  }

  v4 = [[CountryBillingInput alloc] initWithBillingCountry:0 status:1 process:0];
  if (v4)
  {
    [v2 setObject:v4 forKeyedSubscript:@"OS_ELIGIBILITY_INPUT_COUNTRY_BILLING"];
  }

  v5 = objc_alloc_init(DeviceClassInput);
  if (v5)
  {
    [v2 setObject:v5 forKeyedSubscript:@"OS_ELIGIBILITY_INPUT_DEVICE_CLASS"];
  }

  v6 = [[DeviceLocaleInput alloc] initWithDeviceLocale:0 status:1 process:0];
  if (v6)
  {
    [v2 setObject:v6 forKeyedSubscript:@"OS_ELIGIBILITY_INPUT_DEVICE_LOCALE"];
  }

  v7 = objc_alloc_init(ChinaCellularInput);
  if (v7)
  {
    [v2 setObject:v7 forKeyedSubscript:@"OS_ELIGIBILITY_INPUT_CHINA_CELLULAR"];
  }

  v8 = objc_alloc_init(DeviceRegionCodeInput);
  if (v8)
  {
    [v2 setObject:v8 forKeyedSubscript:@"OS_ELIGIBILITY_INPUT_DEVICE_REGION_CODE"];
  }

  v9 = objc_alloc_init(DeviceLanguageInput);
  if (v9)
  {
    [v2 setObject:v9 forKeyedSubscript:@"OS_ELIGIBILITY_INPUT_DEVICE_LANGUAGE"];
  }

  v10 = objc_alloc_init(GenerativeModelSystemInput);
  if (v10)
  {
    [v2 setObject:v10 forKeyedSubscript:@"OS_ELIGIBILITY_INPUT_GENERATIVE_MODEL_SYSTEM"];
  }

  v11 = [[GreymatterQueueInput alloc] initOnQueue:0 status:1 process:0];
  if (v11)
  {
    [v2 setObject:v11 forKeyedSubscript:@"OS_ELIGIBILITY_INPUT_GREYMATTER_ON_QUEUE"];
  }

  v12 = objc_alloc_init(SiriLanguageInput);
  if (v12)
  {
    [v2 setObject:v12 forKeyedSubscript:@"OS_ELIGIBILITY_INPUT_SIRI_LANGUAGE"];
  }

  v13 = objc_alloc_init(ExternalBootDriveInput);
  if (v13)
  {
    [v2 setObject:v13 forKeyedSubscript:@"OS_ELIGIBILITY_INPUT_EXTERNAL_BOOT_DRIVE"];
  }

  v14 = objc_alloc_init(SharediPadInput);
  if (v14)
  {
    [v2 setObject:v14 forKeyedSubscript:@"OS_ELIGIBILITY_INPUT_SHARED_IPAD"];
  }

  v15 = [[EligibilityInput alloc] initWithInputType:13 status:0 process:@"eligibilityd"];
  if (v15)
  {
    [v2 setObject:v15 forKeyedSubscript:@"OS_ELIGIBILITY_INPUT_DEVICE_AND_SIRI_LANGUAGE_MATCH"];
  }

  v16 = [[InitialSetupLocationInput alloc] initWithLocations:0 status:1 process:0];
  if (v16)
  {
    [v2 setObject:v16 forKeyedSubscript:@"OS_ELIGIBILITY_INPUT_INITIAL_SETUP_LOCATION"];
  }

  v17 = [[BirthdateInput alloc] initWithDate:0 status:1 process:0];
  if (v17)
  {
    [v2 setObject:v17 forKeyedSubscript:@"OS_ELIGIBILITY_INPUT_BIRTHDATE"];
  }

  v18 = [[PreciseLocationInput alloc] initWithLocations:0 status:1 process:0];
  if (v18)
  {
    [v2 setObject:v18 forKeyedSubscript:@"OS_ELIGIBILITY_INPUT_PRECISE_LOCATION"];
  }

  v19 = [[ShiptoLocationInput alloc] initWithShiptoLocation:0 status:1 process:0];
  if (v19)
  {
    [v2 setObject:v19 forKeyedSubscript:@"OS_ELIGIBILITY_INPUT_SHIPTO_LOCATION"];
  }

  v20 = objc_alloc_init(PhoneAppRemovalInput);
  if (v20)
  {
    [v2 setObject:v20 forKeyedSubscript:@"OS_ELIGIBILITY_INPUT_PHONE_APP_REMOVAL"];
  }

  v21 = [v2 copy];

  return v21;
}

- (InputManager)init
{
  v16.receiver = self;
  v16.super_class = InputManager;
  v2 = [(InputManager *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(InputManager *)v2 _createDefaultInputs];
    v5 = [v4 mutableCopy];

    v15 = 0;
    v6 = [(InputManager *)v3 _loadInputsWithError:&v15];
    v7 = v15;
    if (v6)
    {
      [v5 addEntriesFromDictionary:v6];
    }

    else
    {
      v8 = sub_10001F638();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "[InputManager init]";
        v19 = 2112;
        v20 = v7;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s: Unable to load inputs from disk, initing with empty values: %@", buf, 0x16u);
      }
    }

    v9 = [v5 copy];
    eligibilityInputs = v3->_eligibilityInputs;
    v3->_eligibilityInputs = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.eligibility.InputManager.internal", v11);

    internalQueue = v3->_internalQueue;
    v3->_internalQueue = v12;
  }

  return v3;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001DAA0;
  block[3] = &unk_100046900;
  block[4] = a1;
  if (qword_10005D4B8 != -1)
  {
    dispatch_once(&qword_10005D4B8, block);
  }

  v2 = qword_10005D4B0;

  return v2;
}

@end