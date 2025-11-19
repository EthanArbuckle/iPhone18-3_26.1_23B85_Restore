@interface WCDApplicationInfo
- (BOOL)hasValidConfiguration;
- (BOOL)isEqual:(id)a3;
- (WCDApplicationInfo)initWithACXApplication:(id)a3;
- (WCDApplicationInfo)initWithAppConduitInstalledApplication:(id)a3 complicationInfo:(id)a4;
- (WCDApplicationInfo)initWithCompanionBundleIdentifier:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
@end

@implementation WCDApplicationInfo

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [BSEqualsBuilder builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(WCDApplicationInfo *)self watchAppBundleIdentifier];
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_100002ED4;
  v58[3] = &unk_100048A98;
  v7 = v4;
  v59 = v7;
  v8 = [v5 appendString:v6 counterpart:v58];

  v9 = [(WCDApplicationInfo *)self watchExtensionBundleIdentifier];
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_100002EDC;
  v56[3] = &unk_100048A98;
  v10 = v7;
  v57 = v10;
  v11 = [v5 appendString:v9 counterpart:v56];

  v12 = [(WCDApplicationInfo *)self companionAppBundleIdentifier];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100002EE4;
  v54[3] = &unk_100048A98;
  v13 = v10;
  v55 = v13;
  v14 = [v5 appendString:v12 counterpart:v54];

  v15 = [(WCDApplicationInfo *)self canRunIndependentlyOfCompanionApp];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100002EEC;
  v52[3] = &unk_100048AC0;
  v16 = v13;
  v53 = v16;
  v17 = [v5 appendBool:v15 counterpart:v52];
  v18 = [(WCDApplicationInfo *)self isRunningIndependently];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100002EF4;
  v50[3] = &unk_100048AC0;
  v19 = v16;
  v51 = v19;
  v20 = [v5 appendBool:v18 counterpart:v50];
  v21 = [(WCDApplicationInfo *)self isStandaloneWatchApp];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100002EFC;
  v48[3] = &unk_100048AC0;
  v22 = v19;
  v49 = v22;
  v23 = [v5 appendBool:v21 counterpart:v48];
  v24 = [(WCDApplicationInfo *)self isCompanionAppInstalled];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100002F04;
  v46[3] = &unk_100048AC0;
  v25 = v22;
  v47 = v25;
  v26 = [v5 appendBool:v24 counterpart:v46];
  v27 = [(WCDApplicationInfo *)self isWatchAppInstalled];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100002F0C;
  v44[3] = &unk_100048AC0;
  v28 = v25;
  v45 = v28;
  v29 = [v5 appendBool:v27 counterpart:v44];
  v30 = [(WCDApplicationInfo *)self hasComplications];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100002F14;
  v42[3] = &unk_100048AC0;
  v31 = v28;
  v43 = v31;
  v32 = [v5 appendBool:v30 counterpart:v42];
  v33 = [(WCDApplicationInfo *)self uniqueInstallID];
  v37 = _NSConcreteStackBlock;
  v38 = 3221225472;
  v39 = sub_100002F1C;
  v40 = &unk_100048A98;
  v41 = v31;
  v34 = v31;
  v35 = [v5 appendString:v33 counterpart:&v37];

  LOBYTE(v31) = [v5 isEqual];
  return v31;
}

- (unint64_t)hash
{
  v2 = [(WCDApplicationInfo *)self watchAppBundleIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(WCDApplicationInfo *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  [(WCDApplicationInfo *)self succinctDescriptionBuilder];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100003074;
  v5 = v8[3] = &unk_100048AE8;
  v9 = v5;
  v10 = self;
  [v5 appendBodySectionWithName:0 multilinePrefix:v4 block:v8];

  v6 = v5;
  return v5;
}

- (id)succinctDescription
{
  v2 = [(WCDApplicationInfo *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [(WCDApplicationInfo *)self watchAppBundleIdentifier];
  v5 = [v3 appendObject:v4 withName:@"watchAppBundleID"];

  v6 = [(WCDApplicationInfo *)self watchExtensionBundleIdentifier];
  v7 = [v3 appendObject:v6 withName:@"extensionBundleID" skipIfNil:1];

  v8 = [(WCDApplicationInfo *)self companionAppBundleIdentifier];
  v9 = [v3 appendObject:v8 withName:@"companionAppBundleID" skipIfNil:1];

  return v3;
}

- (WCDApplicationInfo)initWithAppConduitInstalledApplication:(id)a3 complicationInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v31.receiver = self;
  v31.super_class = WCDApplicationInfo;
  v8 = [(WCDApplicationInfo *)&v31 init];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:ACXContainerAppBundleIdKey];
    v10 = [v9 copy];
    v11 = *(v8 + 4);
    *(v8 + 4) = v10;

    if (!*(v8 + 4))
    {
      v12 = wc_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_100029DC8(v6, v12);
      }
    }

    v13 = [v6 objectForKeyedSubscript:ACXApplicationBundleIdentiferKey];
    v14 = [v13 copy];
    v15 = *(v8 + 2);
    *(v8 + 2) = v14;

    if (!*(v8 + 2))
    {
      v16 = wc_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        sub_100029E40(v6, v16);
      }
    }

    v17 = [v6 objectForKeyedSubscript:ACXPluginBundleIdKey];
    v18 = [v17 copy];
    v19 = *(v8 + 3);
    *(v8 + 3) = v18;

    if (!*(v8 + 3))
    {
      v20 = [v6 objectForKeyedSubscript:ACXWatchKitVersion];
      v21 = v20;
      if (v20 && [v20 integerValue] >= 2)
      {
        v22 = wc_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_100029EB8(v8 + 4, v22);
        }
      }
    }

    v23 = ACXServerStatusKey;
    v24 = [v6 objectForKeyedSubscript:ACXServerStatusKey];
    if ([v24 integerValue] == 2)
    {
      *(v8 + 12) = 1;
    }

    else
    {
      v25 = [v6 objectForKeyedSubscript:v23];
      *(v8 + 12) = [v25 integerValue] == 3;
    }

    v26 = [v6 objectForKeyedSubscript:ACXApplicationUniqueID];
    v27 = [v26 uppercaseString];
    v28 = *(v8 + 5);
    *(v8 + 5) = v27;

    *(v8 + 11) = 1;
    v29 = [v7 objectForKeyedSubscript:kCFBundleIdentifierKey];
    if ([v29 isEqual:*(v8 + 2)])
    {
      *(v8 + 13) = 1;
    }
  }

  return v8;
}

- (WCDApplicationInfo)initWithACXApplication:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = WCDApplicationInfo;
  v5 = [(WCDApplicationInfo *)&v21 init];
  if (v5)
  {
    v6 = [v4 companionAppBundleID];
    companionAppBundleIdentifier = v5->_companionAppBundleIdentifier;
    v5->_companionAppBundleIdentifier = v6;

    v8 = [v4 bundleIdentifier];
    watchAppBundleIdentifier = v5->_watchAppBundleIdentifier;
    v5->_watchAppBundleIdentifier = v8;

    v10 = [v4 watchKitAppExtensionBundleID];
    watchExtensionBundleIdentifier = v5->_watchExtensionBundleIdentifier;
    v5->_watchExtensionBundleIdentifier = v10;

    v5->_hasComplications = [v4 hasComplication];
    v12 = [v4 watchKitVersion];
    watchKitVersion = v5->_watchKitVersion;
    v5->_watchKitVersion = v12;

    v14 = [v4 deviceStatus];
    v15 = v14;
    if (v14)
    {
      if ([v14 installStatus] == 2)
      {
        v5->_watchAppInstalled = 1;
LABEL_6:
        v17 = [v15 uniqueInstallID];
        v18 = [v17 uppercaseString];
        uniqueInstallID = v5->_uniqueInstallID;
        v5->_uniqueInstallID = v18;

        goto LABEL_7;
      }

      v16 = [v15 installStatus];
      v5->_watchAppInstalled = v16 == 3;
      if (v16 == 3)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    v5->_companionAppInstalled = 1;
  }

  return v5;
}

- (WCDApplicationInfo)initWithCompanionBundleIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WCDApplicationInfo;
  v5 = [(WCDApplicationInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    companionAppBundleIdentifier = v5->_companionAppBundleIdentifier;
    v5->_companionAppBundleIdentifier = v6;

    v5->_companionAppInstalled = 1;
  }

  return v5;
}

- (BOOL)hasValidConfiguration
{
  v3 = [(WCDApplicationInfo *)self companionAppBundleIdentifier];

  if (!v3)
  {
    return 0;
  }

  v4 = [(WCDApplicationInfo *)self watchKitVersion];
  v5 = [v4 integerValue];

  if (v5 == 1)
  {
    return 0;
  }

  v6 = [(WCDApplicationInfo *)self watchAppBundleIdentifier];

  if (!v6)
  {
    return 0;
  }

  if ([(WCDApplicationInfo *)self isWatchAppInstalled])
  {
    v7 = [(WCDApplicationInfo *)self uniqueInstallID];

    if (!v7)
    {
      return 0;
    }
  }

  return [(WCDApplicationInfo *)self isCompanionAppInstalled];
}

@end