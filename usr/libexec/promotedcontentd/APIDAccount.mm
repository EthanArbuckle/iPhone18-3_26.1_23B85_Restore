@interface APIDAccount
- (APIDAccount)initWithCoder:(id)coder;
- (APIDAccount)initWithIDAccountsRecord:(id)record storefront:(id)storefront monthlyIDResetCount:(id)count;
- (id)_fakeID;
- (id)_getAccountToken;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APIDAccount

- (id)_getAccountToken
{
  v3 = [NSUserDefaults alloc];
  v4 = [v3 initWithSuiteName:APDefaultsBundleID];
  dictionaryRepresentation = [v4 dictionaryRepresentation];
  allKeys = [dictionaryRepresentation allKeys];
  v7 = [allKeys containsObject:@"AccountStateUUID"];

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[APIDAccount ageUnknown](self forKey:{"ageUnknown"), @"ageUnknown"}];
  deviceNewsPlusSubscriberID = [(APIDAccount *)self deviceNewsPlusSubscriberID];
  [coderCopy encodeObject:deviceNewsPlusSubscriberID forKey:@"deviceNewsPlusSubscriberID"];

  anonymousDemandID = [(APIDAccount *)self anonymousDemandID];
  [coderCopy encodeObject:anonymousDemandID forKey:@"anonymousDemandID"];

  contentID = [(APIDAccount *)self contentID];
  [coderCopy encodeObject:contentID forKey:@"contentID"];

  dPID = [(APIDAccount *)self DPID];
  [coderCopy encodeObject:dPID forKey:@"DPID"];

  iAdID = [(APIDAccount *)self iAdID];
  [coderCopy encodeObject:iAdID forKey:@"iAdID"];

  [coderCopy encodeBool:-[APIDAccount isAdolescent](self forKey:{"isAdolescent"), @"isAdolescent"}];
  [coderCopy encodeBool:-[APIDAccount isAdult](self forKey:{"isAdult"), @"isAdult"}];
  [coderCopy encodeBool:-[APIDAccount isChild](self forKey:{"isChild"), @"isChild"}];
  [coderCopy encodeBool:-[APIDAccount sensitiveContentEligible](self forKey:{"sensitiveContentEligible"), @"sensitiveContentEligible"}];
  [coderCopy encodeBool:-[APIDAccount isiCloudLoggedIn](self forKey:{"isiCloudLoggedIn"), @"isiCloudLoggedIn"}];
  [coderCopy encodeBool:-[APIDAccount isiCloudSameAsiTunes](self forKey:{"isiCloudSameAsiTunes"), @"isiCloudSameAsiTunes"}];
  [coderCopy encodeBool:-[APIDAccount isiTunesLoggedIn](self forKey:{"isiTunesLoggedIn"), @"isiTunesLoggedIn"}];
  [coderCopy encodeBool:-[APIDAccount isManagedAccount](self forKey:{"isManagedAccount"), @"isManagedAccount"}];
  iTunesDSID = [(APIDAccount *)self iTunesDSID];
  [coderCopy encodeObject:iTunesDSID forKey:@"iTunesDSID"];

  monthlyIDResetCount = [(APIDAccount *)self monthlyIDResetCount];
  [coderCopy encodeObject:monthlyIDResetCount forKey:@"monthlyIDResetCount"];

  storefront = [(APIDAccount *)self storefront];
  [coderCopy encodeObject:storefront forKey:@"storefront"];

  toroID = [(APIDAccount *)self toroID];
  [coderCopy encodeObject:toroID forKey:@"toroID"];

  [coderCopy encodeBool:-[APIDAccount isNoServicesRegion](self forKey:{"isNoServicesRegion"), @"isNoServicesRegion"}];
  [coderCopy encodeBool:-[APIDAccount isProtoU13](self forKey:{"isProtoU13"), @"isProtoU13"}];
  accountToken = [(APIDAccount *)self accountToken];
  [coderCopy encodeObject:accountToken forKey:@"accountToken"];

  [coderCopy encodeInteger:-[APIDAccount effectiveBirthYear](self forKey:{"effectiveBirthYear"), @"effectiveBirthYear"}];
}

- (APIDAccount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(APIDAccount *)self init];
  if (v5)
  {
    v5->_ageUnknown = [coderCopy decodeBoolForKey:@"ageUnknown"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceNewsPlusSubscriberID"];
    deviceNewsPlusSubscriberID = v5->_deviceNewsPlusSubscriberID;
    v5->_deviceNewsPlusSubscriberID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"anonymousDemandID"];
    anonymousDemandID = v5->_anonymousDemandID;
    v5->_anonymousDemandID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentID"];
    contentID = v5->_contentID;
    v5->_contentID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DPID"];
    DPID = v5->_DPID;
    v5->_DPID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iAdID"];
    iAdID = v5->_iAdID;
    v5->_iAdID = v14;

    v5->_isAdolescent = [coderCopy decodeBoolForKey:@"isAdolescent"];
    v5->_isAdult = [coderCopy decodeBoolForKey:@"isAdult"];
    v5->_isChild = [coderCopy decodeBoolForKey:@"isChild"];
    v5->_sensitiveContentEligible = [coderCopy decodeBoolForKey:@"sensitiveContentEligible"];
    v5->_isiCloudLoggedIn = [coderCopy decodeBoolForKey:@"isiCloudLoggedIn"];
    v5->_isiCloudSameAsiTunes = [coderCopy decodeBoolForKey:@"isiCloudSameAsiTunes"];
    v5->_isiTunesLoggedIn = [coderCopy decodeBoolForKey:@"isiTunesLoggedIn"];
    v5->_isManagedAccount = [coderCopy decodeBoolForKey:@"isManagedAccount"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iTunesDSID"];
    iTunesDSID = v5->_iTunesDSID;
    v5->_iTunesDSID = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"monthlyIDResetCount"];
    monthlyIDResetCount = v5->_monthlyIDResetCount;
    v5->_monthlyIDResetCount = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storefront"];
    storefront = v5->_storefront;
    v5->_storefront = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"toroID"];
    toroID = v5->_toroID;
    v5->_toroID = v22;

    v5->_isNoServicesRegion = [coderCopy decodeBoolForKey:@"isNoServicesRegion"];
    v5->_isProtoU13 = [coderCopy decodeBoolForKey:@"isProtoU13"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountToken"];
    accountToken = v5->_accountToken;
    v5->_accountToken = v24;

    v5->_effectiveBirthYear = [coderCopy decodeIntegerForKey:@"effectiveBirthYear"];
  }

  return v5;
}

- (APIDAccount)initWithIDAccountsRecord:(id)record storefront:(id)storefront monthlyIDResetCount:(id)count
{
  recordCopy = record;
  storefrontCopy = storefront;
  countCopy = count;
  v11 = [(APIDAccount *)self init];
  if (v11)
  {
    obj = count;
    v77 = countCopy;
    v78 = storefrontCopy;
    v12 = +[APSystemInternal isAppleInternalInstall];
    v75 = [recordCopy objectForKeyedSubscript:@"iTunesDSID"];
    v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v75 integerValue]);
    iTunesDSID = v11->_iTunesDSID;
    v11->_iTunesDSID = v13;

    if (v12 && (+[APIDAccountsDefaultsSettings settings](APIDAccountsDefaultsSettings, "settings"), v15 = objc_claimAutoreleasedReturnValue(), [v15 isChild], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToNumber:", &off_100492190), v16, v15, v17))
    {
      v11->_isChild = 1;
    }

    else
    {
      v18 = [recordCopy objectForKeyedSubscript:@"isChild"];
      v11->_isChild = [v18 BOOLValue];
    }

    v19 = [recordCopy objectForKeyedSubscript:@"isAdolescent"];
    v11->_isAdolescent = [v19 BOOLValue];

    v20 = [recordCopy objectForKeyedSubscript:@"isAdult"];
    v11->_isAdult = [v20 BOOLValue];

    v21 = [recordCopy objectForKeyedSubscript:@"ageUnknown"];
    v11->_ageUnknown = [v21 BOOLValue];

    v22 = [recordCopy objectForKeyedSubscript:@"sensitiveContentEligible"];
    v11->_sensitiveContentEligible = [v22 BOOLValue];

    v23 = [recordCopy objectForKeyedSubscript:@"isManagedAccount"];
    v11->_isManagedAccount = [v23 BOOLValue];

    v24 = [recordCopy objectForKeyedSubscript:@"isiCloudLoggedIn"];
    v11->_isiCloudLoggedIn = [v24 BOOLValue];

    v25 = [recordCopy objectForKeyedSubscript:@"isiTunesLoggedIn"];
    v11->_isiTunesLoggedIn = [v25 BOOLValue];

    v26 = [recordCopy objectForKeyedSubscript:@"isiCloudSameAsiTunes"];
    v11->_isiCloudSameAsiTunes = [v26 BOOLValue];

    if (v12 && (+[APIDAccountsDefaultsSettings settings](APIDAccountsDefaultsSettings, "settings"), v27 = objc_claimAutoreleasedReturnValue(), [v27 isNoServicesRegion], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "isEqualToNumber:", &off_100492190), v28, v27, v29))
    {
      v11->_isNoServicesRegion = 1;
    }

    else
    {
      v30 = [recordCopy objectForKeyedSubscript:@"isNoServicesRegion"];
      v11->_isNoServicesRegion = [v30 BOOLValue];
    }

    v31 = [recordCopy objectForKeyedSubscript:@"effectiveBirthYear"];
    v11->_effectiveBirthYear = [v31 integerValue];

    v32 = [recordCopy objectForKeyedSubscript:@"isProtoU13"];
    v11->_isProtoU13 = [v32 BOOLValue];

    v33 = [recordCopy objectForKeyedSubscript:@"deviceNewsPlusSubscriberID"];
    v34 = [recordCopy objectForKeyedSubscript:@"anonymousDemandID"];
    v35 = [recordCopy objectForKeyedSubscript:@"contentID"];
    v36 = [recordCopy objectForKeyedSubscript:@"toroID"];
    v37 = [recordCopy objectForKeyedSubscript:@"iAdID"];
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
      _fakeID = [(APIDAccount *)v11 _fakeID];
      v50 = [v39 initWithUUIDString:_fakeID];
      v51 = v11->_anonymousDemandID;
      v11->_anonymousDemandID = v50;

      v52 = [NSUUID alloc];
      _fakeID2 = [(APIDAccount *)v11 _fakeID];
      v54 = [v52 initWithUUIDString:_fakeID2];
      v55 = v11->_contentID;
      v11->_contentID = v54;

      v56 = [NSUUID alloc];
      _fakeID3 = [(APIDAccount *)v11 _fakeID];
      v58 = [v56 initWithUUIDString:_fakeID3];
      v59 = v11->_toroID;
      v11->_toroID = v58;

      v60 = [NSUUID alloc];
      _fakeID4 = [(APIDAccount *)v11 _fakeID];
      v62 = [v60 initWithUUIDString:_fakeID4];
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

    v70 = [recordCopy objectForKeyedSubscript:@"DPID"];
    DPID = v11->_DPID;
    v11->_DPID = v70;

    objc_storeStrong(&v11->_storefront, storefront);
    objc_storeStrong(&v11->_monthlyIDResetCount, obj);
    _getAccountToken = [(APIDAccount *)v11 _getAccountToken];
    accountToken = v11->_accountToken;
    v11->_accountToken = _getAccountToken;

    countCopy = v77;
    storefrontCopy = v78;
  }

  return v11;
}

- (id)_fakeID
{
  v2 = [@"BAAAAAAD" length];
  v3 = +[NSUUID UUID];
  uUIDString = [v3 UUIDString];
  v5 = [uUIDString stringByReplacingCharactersInRange:0 withString:{v2, @"BAAAAAAD"}];

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