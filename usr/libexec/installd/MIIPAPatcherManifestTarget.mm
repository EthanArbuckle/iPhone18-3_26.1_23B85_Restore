@interface MIIPAPatcherManifestTarget
- (MIIPAPatcherManifestTarget)initWithCFBundleVersion:(id)version cfBundleShortVersion:(id)shortVersion bundleIdentifier:(id)identifier uiSupportedDevices:(id)devices infoPlistHash:(id)hash infoPlistHashAlgorithm:(id)algorithm;
- (id)plistRepresentation;
@end

@implementation MIIPAPatcherManifestTarget

- (MIIPAPatcherManifestTarget)initWithCFBundleVersion:(id)version cfBundleShortVersion:(id)shortVersion bundleIdentifier:(id)identifier uiSupportedDevices:(id)devices infoPlistHash:(id)hash infoPlistHashAlgorithm:(id)algorithm
{
  versionCopy = version;
  shortVersionCopy = shortVersion;
  identifierCopy = identifier;
  devicesCopy = devices;
  hashCopy = hash;
  algorithmCopy = algorithm;
  v24.receiver = self;
  v24.super_class = MIIPAPatcherManifestTarget;
  v18 = [(MIIPAPatcherManifestTarget *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_cfBundleVersion, version);
    objc_storeStrong(&v19->_cfBundleShortVersion, shortVersion);
    objc_storeStrong(&v19->_bundleIdentifier, identifier);
    objc_storeStrong(&v19->_uiSupportedDevices, devices);
    objc_storeStrong(&v19->_infoPlistHash, hash);
    objc_storeStrong(&v19->_infoPlistHashAlgorithm, algorithm);
  }

  return v19;
}

- (id)plistRepresentation
{
  v14[0] = kCFBundleVersionKey;
  cfBundleVersion = [(MIIPAPatcherManifestTarget *)self cfBundleVersion];
  v15[0] = cfBundleVersion;
  v14[1] = _kCFBundleShortVersionStringKey;
  cfBundleShortVersion = [(MIIPAPatcherManifestTarget *)self cfBundleShortVersion];
  v15[1] = cfBundleShortVersion;
  v14[2] = kCFBundleIdentifierKey;
  bundleIdentifier = [(MIIPAPatcherManifestTarget *)self bundleIdentifier];
  v15[2] = bundleIdentifier;
  v14[3] = @"infoPlistHash";
  infoPlistHash = [(MIIPAPatcherManifestTarget *)self infoPlistHash];
  v15[3] = infoPlistHash;
  v14[4] = @"infoPlistHashAlgorithm";
  infoPlistHashAlgorithm = [(MIIPAPatcherManifestTarget *)self infoPlistHashAlgorithm];
  v15[4] = infoPlistHashAlgorithm;
  v8 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:5];

  uiSupportedDevices = [(MIIPAPatcherManifestTarget *)self uiSupportedDevices];

  if (uiSupportedDevices)
  {
    v10 = [v8 mutableCopy];
    uiSupportedDevices2 = [(MIIPAPatcherManifestTarget *)self uiSupportedDevices];
    [v10 setObject:uiSupportedDevices2 forKeyedSubscript:@"UISupportedDevices"];

    v12 = [v10 copy];
    v8 = v12;
  }

  return v8;
}

@end