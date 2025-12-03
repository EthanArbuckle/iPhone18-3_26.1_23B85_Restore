@interface WCDApplicationInfo
- (BOOL)hasValidConfiguration;
- (BOOL)isEqual:(id)equal;
- (WCDApplicationInfo)initWithACXApplication:(id)application;
- (WCDApplicationInfo)initWithAppConduitInstalledApplication:(id)application complicationInfo:(id)info;
- (WCDApplicationInfo)initWithCompanionBundleIdentifier:(id)identifier;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
@end

@implementation WCDApplicationInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [BSEqualsBuilder builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  watchAppBundleIdentifier = [(WCDApplicationInfo *)self watchAppBundleIdentifier];
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_100002ED4;
  v58[3] = &unk_100048A98;
  v7 = equalCopy;
  v59 = v7;
  v8 = [v5 appendString:watchAppBundleIdentifier counterpart:v58];

  watchExtensionBundleIdentifier = [(WCDApplicationInfo *)self watchExtensionBundleIdentifier];
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_100002EDC;
  v56[3] = &unk_100048A98;
  v10 = v7;
  v57 = v10;
  v11 = [v5 appendString:watchExtensionBundleIdentifier counterpart:v56];

  companionAppBundleIdentifier = [(WCDApplicationInfo *)self companionAppBundleIdentifier];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100002EE4;
  v54[3] = &unk_100048A98;
  v13 = v10;
  v55 = v13;
  v14 = [v5 appendString:companionAppBundleIdentifier counterpart:v54];

  canRunIndependentlyOfCompanionApp = [(WCDApplicationInfo *)self canRunIndependentlyOfCompanionApp];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100002EEC;
  v52[3] = &unk_100048AC0;
  v16 = v13;
  v53 = v16;
  v17 = [v5 appendBool:canRunIndependentlyOfCompanionApp counterpart:v52];
  isRunningIndependently = [(WCDApplicationInfo *)self isRunningIndependently];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100002EF4;
  v50[3] = &unk_100048AC0;
  v19 = v16;
  v51 = v19;
  v20 = [v5 appendBool:isRunningIndependently counterpart:v50];
  isStandaloneWatchApp = [(WCDApplicationInfo *)self isStandaloneWatchApp];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100002EFC;
  v48[3] = &unk_100048AC0;
  v22 = v19;
  v49 = v22;
  v23 = [v5 appendBool:isStandaloneWatchApp counterpart:v48];
  isCompanionAppInstalled = [(WCDApplicationInfo *)self isCompanionAppInstalled];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100002F04;
  v46[3] = &unk_100048AC0;
  v25 = v22;
  v47 = v25;
  v26 = [v5 appendBool:isCompanionAppInstalled counterpart:v46];
  isWatchAppInstalled = [(WCDApplicationInfo *)self isWatchAppInstalled];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100002F0C;
  v44[3] = &unk_100048AC0;
  v28 = v25;
  v45 = v28;
  v29 = [v5 appendBool:isWatchAppInstalled counterpart:v44];
  hasComplications = [(WCDApplicationInfo *)self hasComplications];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100002F14;
  v42[3] = &unk_100048AC0;
  v31 = v28;
  v43 = v31;
  v32 = [v5 appendBool:hasComplications counterpart:v42];
  uniqueInstallID = [(WCDApplicationInfo *)self uniqueInstallID];
  v37 = _NSConcreteStackBlock;
  v38 = 3221225472;
  v39 = sub_100002F1C;
  v40 = &unk_100048A98;
  v41 = v31;
  v34 = v31;
  v35 = [v5 appendString:uniqueInstallID counterpart:&v37];

  LOBYTE(v31) = [v5 isEqual];
  return v31;
}

- (unint64_t)hash
{
  watchAppBundleIdentifier = [(WCDApplicationInfo *)self watchAppBundleIdentifier];
  v3 = [watchAppBundleIdentifier hash];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(WCDApplicationInfo *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  [(WCDApplicationInfo *)self succinctDescriptionBuilder];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100003074;
  v5 = v8[3] = &unk_100048AE8;
  v9 = v5;
  selfCopy = self;
  [v5 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v8];

  v6 = v5;
  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(WCDApplicationInfo *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  watchAppBundleIdentifier = [(WCDApplicationInfo *)self watchAppBundleIdentifier];
  v5 = [v3 appendObject:watchAppBundleIdentifier withName:@"watchAppBundleID"];

  watchExtensionBundleIdentifier = [(WCDApplicationInfo *)self watchExtensionBundleIdentifier];
  v7 = [v3 appendObject:watchExtensionBundleIdentifier withName:@"extensionBundleID" skipIfNil:1];

  companionAppBundleIdentifier = [(WCDApplicationInfo *)self companionAppBundleIdentifier];
  v9 = [v3 appendObject:companionAppBundleIdentifier withName:@"companionAppBundleID" skipIfNil:1];

  return v3;
}

- (WCDApplicationInfo)initWithAppConduitInstalledApplication:(id)application complicationInfo:(id)info
{
  applicationCopy = application;
  infoCopy = info;
  v31.receiver = self;
  v31.super_class = WCDApplicationInfo;
  v8 = [(WCDApplicationInfo *)&v31 init];
  if (v8)
  {
    v9 = [applicationCopy objectForKeyedSubscript:ACXContainerAppBundleIdKey];
    v10 = [v9 copy];
    v11 = *(v8 + 4);
    *(v8 + 4) = v10;

    if (!*(v8 + 4))
    {
      v12 = wc_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_100029DC8(applicationCopy, v12);
      }
    }

    v13 = [applicationCopy objectForKeyedSubscript:ACXApplicationBundleIdentiferKey];
    v14 = [v13 copy];
    v15 = *(v8 + 2);
    *(v8 + 2) = v14;

    if (!*(v8 + 2))
    {
      v16 = wc_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        sub_100029E40(applicationCopy, v16);
      }
    }

    v17 = [applicationCopy objectForKeyedSubscript:ACXPluginBundleIdKey];
    v18 = [v17 copy];
    v19 = *(v8 + 3);
    *(v8 + 3) = v18;

    if (!*(v8 + 3))
    {
      v20 = [applicationCopy objectForKeyedSubscript:ACXWatchKitVersion];
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
    v24 = [applicationCopy objectForKeyedSubscript:ACXServerStatusKey];
    if ([v24 integerValue] == 2)
    {
      *(v8 + 12) = 1;
    }

    else
    {
      v25 = [applicationCopy objectForKeyedSubscript:v23];
      *(v8 + 12) = [v25 integerValue] == 3;
    }

    v26 = [applicationCopy objectForKeyedSubscript:ACXApplicationUniqueID];
    uppercaseString = [v26 uppercaseString];
    v28 = *(v8 + 5);
    *(v8 + 5) = uppercaseString;

    *(v8 + 11) = 1;
    v29 = [infoCopy objectForKeyedSubscript:kCFBundleIdentifierKey];
    if ([v29 isEqual:*(v8 + 2)])
    {
      *(v8 + 13) = 1;
    }
  }

  return v8;
}

- (WCDApplicationInfo)initWithACXApplication:(id)application
{
  applicationCopy = application;
  v21.receiver = self;
  v21.super_class = WCDApplicationInfo;
  v5 = [(WCDApplicationInfo *)&v21 init];
  if (v5)
  {
    companionAppBundleID = [applicationCopy companionAppBundleID];
    companionAppBundleIdentifier = v5->_companionAppBundleIdentifier;
    v5->_companionAppBundleIdentifier = companionAppBundleID;

    bundleIdentifier = [applicationCopy bundleIdentifier];
    watchAppBundleIdentifier = v5->_watchAppBundleIdentifier;
    v5->_watchAppBundleIdentifier = bundleIdentifier;

    watchKitAppExtensionBundleID = [applicationCopy watchKitAppExtensionBundleID];
    watchExtensionBundleIdentifier = v5->_watchExtensionBundleIdentifier;
    v5->_watchExtensionBundleIdentifier = watchKitAppExtensionBundleID;

    v5->_hasComplications = [applicationCopy hasComplication];
    watchKitVersion = [applicationCopy watchKitVersion];
    watchKitVersion = v5->_watchKitVersion;
    v5->_watchKitVersion = watchKitVersion;

    deviceStatus = [applicationCopy deviceStatus];
    v15 = deviceStatus;
    if (deviceStatus)
    {
      if ([deviceStatus installStatus] == 2)
      {
        v5->_watchAppInstalled = 1;
LABEL_6:
        uniqueInstallID = [v15 uniqueInstallID];
        uppercaseString = [uniqueInstallID uppercaseString];
        uniqueInstallID = v5->_uniqueInstallID;
        v5->_uniqueInstallID = uppercaseString;

        goto LABEL_7;
      }

      installStatus = [v15 installStatus];
      v5->_watchAppInstalled = installStatus == 3;
      if (installStatus == 3)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    v5->_companionAppInstalled = 1;
  }

  return v5;
}

- (WCDApplicationInfo)initWithCompanionBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = WCDApplicationInfo;
  v5 = [(WCDApplicationInfo *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    companionAppBundleIdentifier = v5->_companionAppBundleIdentifier;
    v5->_companionAppBundleIdentifier = v6;

    v5->_companionAppInstalled = 1;
  }

  return v5;
}

- (BOOL)hasValidConfiguration
{
  companionAppBundleIdentifier = [(WCDApplicationInfo *)self companionAppBundleIdentifier];

  if (!companionAppBundleIdentifier)
  {
    return 0;
  }

  watchKitVersion = [(WCDApplicationInfo *)self watchKitVersion];
  integerValue = [watchKitVersion integerValue];

  if (integerValue == 1)
  {
    return 0;
  }

  watchAppBundleIdentifier = [(WCDApplicationInfo *)self watchAppBundleIdentifier];

  if (!watchAppBundleIdentifier)
  {
    return 0;
  }

  if ([(WCDApplicationInfo *)self isWatchAppInstalled])
  {
    uniqueInstallID = [(WCDApplicationInfo *)self uniqueInstallID];

    if (!uniqueInstallID)
    {
      return 0;
    }
  }

  return [(WCDApplicationInfo *)self isCompanionAppInstalled];
}

@end