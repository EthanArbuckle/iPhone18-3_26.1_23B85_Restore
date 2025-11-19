@interface APIDAccount
- (APIDAccount)initWithCoder:(id)a3;
- (APIDAccount)initWithIDAccountsRecord:(id)a3 storefront:(id)a4 monthlyIDResetCount:(id)a5;
- (id)_fakeID;
- (id)_getAccountToken;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APIDAccount

- (id)_getAccountToken
{
  v3 = [NSUserDefaults alloc];
  v4 = [v3 initWithSuiteName:APDefaultsBundleID];
  v5 = [v4 dictionaryRepresentation];
  v6 = [v5 allKeys];
  v7 = [v6 containsObject:@"AccountStateUUID"];

  if (v7)
  {
    v8 = [v4 stringForKey:@"AccountStateUUID"];
  }

  else
  {
    [(APIDAccount *)self _performForceReconcile];
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to retrieve Account Token.", v11, 2u);
    }

    v8 = @"-1";
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v14 = a3;
  [v14 encodeBool:-[APIDAccount ageUnknown](self forKey:{"ageUnknown"), @"ageUnknown"}];
  v4 = [(APIDAccount *)self deviceNewsPlusSubscriberID];
  [v14 encodeObject:v4 forKey:@"deviceNewsPlusSubscriberID"];

  v5 = [(APIDAccount *)self anonymousDemandID];
  [v14 encodeObject:v5 forKey:@"anonymousDemandID"];

  v6 = [(APIDAccount *)self contentID];
  [v14 encodeObject:v6 forKey:@"contentID"];

  v7 = [(APIDAccount *)self DPID];
  [v14 encodeObject:v7 forKey:@"DPID"];

  v8 = [(APIDAccount *)self iAdID];
  [v14 encodeObject:v8 forKey:@"iAdID"];

  [v14 encodeBool:-[APIDAccount isAdolescent](self forKey:{"isAdolescent"), @"isAdolescent"}];
  [v14 encodeBool:-[APIDAccount isAdult](self forKey:{"isAdult"), @"isAdult"}];
  [v14 encodeBool:-[APIDAccount isChild](self forKey:{"isChild"), @"isChild"}];
  [v14 encodeBool:-[APIDAccount sensitiveContentEligible](self forKey:{"sensitiveContentEligible"), @"sensitiveContentEligible"}];
  [v14 encodeBool:-[APIDAccount isiCloudLoggedIn](self forKey:{"isiCloudLoggedIn"), @"isiCloudLoggedIn"}];
  [v14 encodeBool:-[APIDAccount isiCloudSameAsiTunes](self forKey:{"isiCloudSameAsiTunes"), @"isiCloudSameAsiTunes"}];
  [v14 encodeBool:-[APIDAccount isiTunesLoggedIn](self forKey:{"isiTunesLoggedIn"), @"isiTunesLoggedIn"}];
  [v14 encodeBool:-[APIDAccount isManagedAccount](self forKey:{"isManagedAccount"), @"isManagedAccount"}];
  v9 = [(APIDAccount *)self iTunesDSID];
  [v14 encodeObject:v9 forKey:@"iTunesDSID"];

  v10 = [(APIDAccount *)self monthlyIDResetCount];
  [v14 encodeObject:v10 forKey:@"monthlyIDResetCount"];

  v11 = [(APIDAccount *)self storefront];
  [v14 encodeObject:v11 forKey:@"storefront"];

  v12 = [(APIDAccount *)self toroID];
  [v14 encodeObject:v12 forKey:@"toroID"];

  [v14 encodeBool:-[APIDAccount isNoServicesRegion](self forKey:{"isNoServicesRegion"), @"isNoServicesRegion"}];
  [v14 encodeBool:-[APIDAccount isProtoU13](self forKey:{"isProtoU13"), @"isProtoU13"}];
  v13 = [(APIDAccount *)self accountToken];
  [v14 encodeObject:v13 forKey:@"accountToken"];

  [v14 encodeInteger:-[APIDAccount effectiveBirthYear](self forKey:{"effectiveBirthYear"), @"effectiveBirthYear"}];
}

- (APIDAccount)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(APIDAccount *)self init];
  if (v5)
  {
    v5->_ageUnknown = [v4 decodeBoolForKey:@"ageUnknown"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceNewsPlusSubscriberID"];
    deviceNewsPlusSubscriberID = v5->_deviceNewsPlusSubscriberID;
    v5->_deviceNewsPlusSubscriberID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"anonymousDemandID"];
    anonymousDemandID = v5->_anonymousDemandID;
    v5->_anonymousDemandID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentID"];
    contentID = v5->_contentID;
    v5->_contentID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DPID"];
    DPID = v5->_DPID;
    v5->_DPID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iAdID"];
    iAdID = v5->_iAdID;
    v5->_iAdID = v14;

    v5->_isAdolescent = [v4 decodeBoolForKey:@"isAdolescent"];
    v5->_isAdult = [v4 decodeBoolForKey:@"isAdult"];
    v5->_isChild = [v4 decodeBoolForKey:@"isChild"];
    v5->_sensitiveContentEligible = [v4 decodeBoolForKey:@"sensitiveContentEligible"];
    v5->_isiCloudLoggedIn = [v4 decodeBoolForKey:@"isiCloudLoggedIn"];
    v5->_isiCloudSameAsiTunes = [v4 decodeBoolForKey:@"isiCloudSameAsiTunes"];
    v5->_isiTunesLoggedIn = [v4 decodeBoolForKey:@"isiTunesLoggedIn"];
    v5->_isManagedAccount = [v4 decodeBoolForKey:@"isManagedAccount"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iTunesDSID"];
    iTunesDSID = v5->_iTunesDSID;
    v5->_iTunesDSID = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"monthlyIDResetCount"];
    monthlyIDResetCount = v5->_monthlyIDResetCount;
    v5->_monthlyIDResetCount = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storefront"];
    storefront = v5->_storefront;
    v5->_storefront = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"toroID"];
    toroID = v5->_toroID;
    v5->_toroID = v22;

    v5->_isNoServicesRegion = [v4 decodeBoolForKey:@"isNoServicesRegion"];
    v5->_isProtoU13 = [v4 decodeBoolForKey:@"isProtoU13"];
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountToken"];
    accountToken = v5->_accountToken;
    v5->_accountToken = v24;

    v5->_effectiveBirthYear = [v4 decodeIntegerForKey:@"effectiveBirthYear"];
  }

  return v5;
}

- (APIDAccount)initWithIDAccountsRecord:(id)a3 storefront:(id)a4 monthlyIDResetCount:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(APIDAccount *)self init];
  if (v11)
  {
    obj = a5;
    v77 = v10;
    v78 = v9;
    v12 = +[APSystemInternal isAppleInternalInstall];
    v75 = [v8 objectForKeyedSubscript:@"iTunesDSID"];
    v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v75 integerValue]);
    iTunesDSID = v11->_iTunesDSID;
    v11->_iTunesDSID = v13;

    if (v12 && (+[APIDAccountsDefaultsSettings settings](APIDAccountsDefaultsSettings, "settings"), v15 = objc_claimAutoreleasedReturnValue(), [v15 isChild], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToNumber:", &off_100492190), v16, v15, v17))
    {
      v11->_isChild = 1;
    }

    else
    {
      v18 = [v8 objectForKeyedSubscript:@"isChild"];
      v11->_isChild = [v18 BOOLValue];
    }

    v19 = [v8 objectForKeyedSubscript:@"isAdolescent"];
    v11->_isAdolescent = [v19 BOOLValue];

    v20 = [v8 objectForKeyedSubscript:@"isAdult"];
    v11->_isAdult = [v20 BOOLValue];

    v21 = [v8 objectForKeyedSubscript:@"ageUnknown"];
    v11->_ageUnknown = [v21 BOOLValue];

    v22 = [v8 objectForKeyedSubscript:@"sensitiveContentEligible"];
    v11->_sensitiveContentEligible = [v22 BOOLValue];

    v23 = [v8 objectForKeyedSubscript:@"isManagedAccount"];
    v11->_isManagedAccount = [v23 BOOLValue];

    v24 = [v8 objectForKeyedSubscript:@"isiCloudLoggedIn"];
    v11->_isiCloudLoggedIn = [v24 BOOLValue];

    v25 = [v8 objectForKeyedSubscript:@"isiTunesLoggedIn"];
    v11->_isiTunesLoggedIn = [v25 BOOLValue];

    v26 = [v8 objectForKeyedSubscript:@"isiCloudSameAsiTunes"];
    v11->_isiCloudSameAsiTunes = [v26 BOOLValue];

    if (v12 && (+[APIDAccountsDefaultsSettings settings](APIDAccountsDefaultsSettings, "settings"), v27 = objc_claimAutoreleasedReturnValue(), [v27 isNoServicesRegion], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "isEqualToNumber:", &off_100492190), v28, v27, v29))
    {
      v11->_isNoServicesRegion = 1;
    }

    else
    {
      v30 = [v8 objectForKeyedSubscript:@"isNoServicesRegion"];
      v11->_isNoServicesRegion = [v30 BOOLValue];
    }

    v31 = [v8 objectForKeyedSubscript:@"effectiveBirthYear"];
    v11->_effectiveBirthYear = [v31 integerValue];

    v32 = [v8 objectForKeyedSubscript:@"isProtoU13"];
    v11->_isProtoU13 = [v32 BOOLValue];

    v33 = [v8 objectForKeyedSubscript:@"deviceNewsPlusSubscriberID"];
    v34 = [v8 objectForKeyedSubscript:@"anonymousDemandID"];
    v35 = [v8 objectForKeyedSubscript:@"contentID"];
    v36 = [v8 objectForKeyedSubscript:@"toroID"];
    v37 = [v8 objectForKeyedSubscript:@"iAdID"];
    v38 = [NSUUID alloc];
    v39 = v38;
    if (v34 && v35 && v36 && v37)
    {
      v40 = [v38 initWithUUIDString:v34];
      anonymousDemandID = v11->_anonymousDemandID;
      v11->_anonymousDemandID = v40;

      v42 = [[NSUUID alloc] initWithUUIDString:v35];
      contentID = v11->_contentID;
      v11->_contentID = v42;

      v44 = [[NSUUID alloc] initWithUUIDString:v36];
      toroID = v11->_toroID;
      v11->_toroID = v44;

      v46 = [[NSUUID alloc] initWithUUIDString:v37];
      iAdID = v11->_iAdID;
      v11->_iAdID = v46;

      if (!v11->_anonymousDemandID || !v11->_contentID || !v11->_toroID || !v11->_iAdID)
      {
        v79[0] = @"anonymousDemandIDRead";
        v79[1] = @"contentIDRead";
        v80[0] = v34;
        v80[1] = v35;
        v79[2] = @"toroIDRead";
        v79[3] = @"iAdIDRead";
        v80[2] = v36;
        v80[3] = v37;
        v48 = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:4];
        CreateDiagnosticReport();
      }
    }

    else
    {
      v49 = [(APIDAccount *)v11 _fakeID];
      v50 = [v39 initWithUUIDString:v49];
      v51 = v11->_anonymousDemandID;
      v11->_anonymousDemandID = v50;

      v52 = [NSUUID alloc];
      v53 = [(APIDAccount *)v11 _fakeID];
      v54 = [v52 initWithUUIDString:v53];
      v55 = v11->_contentID;
      v11->_contentID = v54;

      v56 = [NSUUID alloc];
      v57 = [(APIDAccount *)v11 _fakeID];
      v58 = [v56 initWithUUIDString:v57];
      v59 = v11->_toroID;
      v11->_toroID = v58;

      v60 = [NSUUID alloc];
      v61 = [(APIDAccount *)v11 _fakeID];
      v62 = [v60 initWithUUIDString:v61];
      v63 = v11->_iAdID;
      v11->_iAdID = v62;

      [(APIDAccount *)v11 _performForceReconcile];
    }

    v64 = [NSUUID alloc];
    v65 = v64;
    if (v33)
    {
      v66 = [v64 initWithUUIDString:v33];
      deviceNewsPlusSubscriberID = v11->_deviceNewsPlusSubscriberID;
      v11->_deviceNewsPlusSubscriberID = v66;
    }

    else
    {
      deviceNewsPlusSubscriberID = [(APIDAccount *)v11 _fakeID];
      v68 = [v65 initWithUUIDString:deviceNewsPlusSubscriberID];
      v69 = v11->_deviceNewsPlusSubscriberID;
      v11->_deviceNewsPlusSubscriberID = v68;
    }

    v70 = [v8 objectForKeyedSubscript:@"DPID"];
    DPID = v11->_DPID;
    v11->_DPID = v70;

    objc_storeStrong(&v11->_storefront, a4);
    objc_storeStrong(&v11->_monthlyIDResetCount, obj);
    v72 = [(APIDAccount *)v11 _getAccountToken];
    accountToken = v11->_accountToken;
    v11->_accountToken = v72;

    v10 = v77;
    v9 = v78;
  }

  return v11;
}

- (id)_fakeID
{
  v2 = [@"BAAAAAAD" length];
  v3 = +[NSUUID UUID];
  v4 = [v3 UUIDString];
  v5 = [v4 stringByReplacingCharactersInRange:0 withString:{v2, @"BAAAAAAD"}];

  if (!v5)
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "fakeIDString is nil", v8, 2u);
    }
  }

  return v5;
}

@end