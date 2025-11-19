@interface MIIPAPatcherManifestTarget
- (MIIPAPatcherManifestTarget)initWithCFBundleVersion:(id)a3 cfBundleShortVersion:(id)a4 bundleIdentifier:(id)a5 uiSupportedDevices:(id)a6 infoPlistHash:(id)a7 infoPlistHashAlgorithm:(id)a8;
- (id)plistRepresentation;
@end

@implementation MIIPAPatcherManifestTarget

- (MIIPAPatcherManifestTarget)initWithCFBundleVersion:(id)a3 cfBundleShortVersion:(id)a4 bundleIdentifier:(id)a5 uiSupportedDevices:(id)a6 infoPlistHash:(id)a7 infoPlistHashAlgorithm:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = MIIPAPatcherManifestTarget;
  v18 = [(MIIPAPatcherManifestTarget *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_cfBundleVersion, a3);
    objc_storeStrong(&v19->_cfBundleShortVersion, a4);
    objc_storeStrong(&v19->_bundleIdentifier, a5);
    objc_storeStrong(&v19->_uiSupportedDevices, a6);
    objc_storeStrong(&v19->_infoPlistHash, a7);
    objc_storeStrong(&v19->_infoPlistHashAlgorithm, a8);
  }

  return v19;
}

- (id)plistRepresentation
{
  v14[0] = kCFBundleVersionKey;
  v3 = [(MIIPAPatcherManifestTarget *)self cfBundleVersion];
  v15[0] = v3;
  v14[1] = _kCFBundleShortVersionStringKey;
  v4 = [(MIIPAPatcherManifestTarget *)self cfBundleShortVersion];
  v15[1] = v4;
  v14[2] = kCFBundleIdentifierKey;
  v5 = [(MIIPAPatcherManifestTarget *)self bundleIdentifier];
  v15[2] = v5;
  v14[3] = @"infoPlistHash";
  v6 = [(MIIPAPatcherManifestTarget *)self infoPlistHash];
  v15[3] = v6;
  v14[4] = @"infoPlistHashAlgorithm";
  v7 = [(MIIPAPatcherManifestTarget *)self infoPlistHashAlgorithm];
  v15[4] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:5];

  v9 = [(MIIPAPatcherManifestTarget *)self uiSupportedDevices];

  if (v9)
  {
    v10 = [v8 mutableCopy];
    v11 = [(MIIPAPatcherManifestTarget *)self uiSupportedDevices];
    [v10 setObject:v11 forKeyedSubscript:@"UISupportedDevices"];

    v12 = [v10 copy];
    v8 = v12;
  }

  return v8;
}

@end