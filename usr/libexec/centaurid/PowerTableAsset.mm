@interface PowerTableAsset
+ (id)stateAsString:(int64_t)string;
+ (id)subsystemAsString:(int64_t)string;
- (BOOL)isEqual:(id)equal;
- (PowerTableAsset)initWithSubsystem:(int64_t)subsystem identifier:(id)identifier version:(id)version state:(int64_t)state firstSupportedBuild:(id)build lastSupportedBuild:(id)supportedBuild firstSupportedOS:(id)s lastSupportedOS:(id)self0;
- (id)assetByChangingState:(int64_t)state;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation PowerTableAsset

- (PowerTableAsset)initWithSubsystem:(int64_t)subsystem identifier:(id)identifier version:(id)version state:(int64_t)state firstSupportedBuild:(id)build lastSupportedBuild:(id)supportedBuild firstSupportedOS:(id)s lastSupportedOS:(id)self0
{
  identifierCopy = identifier;
  versionCopy = version;
  buildCopy = build;
  supportedBuildCopy = supportedBuild;
  sCopy = s;
  oSCopy = oS;
  v26.receiver = self;
  v26.super_class = PowerTableAsset;
  v18 = [(PowerTableAsset *)&v26 init];
  v19 = v18;
  if (v18)
  {
    v18->_subsystem = subsystem;
    objc_storeStrong(&v18->_identifier, identifier);
    objc_storeStrong(&v19->_version, version);
    v19->_state = state;
    objc_storeStrong(&v19->_firstSupportedBuild, build);
    objc_storeStrong(&v19->_lastSupportedBuild, supportedBuild);
    objc_storeStrong(&v19->_firstSupportedOS, s);
    objc_storeStrong(&v19->_lastSupportedOS, oS);
  }

  return v19;
}

- (id)assetByChangingState:(int64_t)state
{
  v5 = objc_alloc(objc_opt_class());
  subsystem = [(PowerTableAsset *)self subsystem];
  identifier = [(PowerTableAsset *)self identifier];
  version = [(PowerTableAsset *)self version];
  firstSupportedBuild = [(PowerTableAsset *)self firstSupportedBuild];
  lastSupportedBuild = [(PowerTableAsset *)self lastSupportedBuild];
  firstSupportedOS = [(PowerTableAsset *)self firstSupportedOS];
  lastSupportedOS = [(PowerTableAsset *)self lastSupportedOS];
  v13 = [v5 initWithSubsystem:subsystem identifier:identifier version:version state:state firstSupportedBuild:firstSupportedBuild lastSupportedBuild:lastSupportedBuild firstSupportedOS:firstSupportedOS lastSupportedOS:lastSupportedOS];

  return v13;
}

+ (id)subsystemAsString:(int64_t)string
{
  if (string)
  {
    return @"BT";
  }

  else
  {
    return @"WiFi";
  }
}

+ (id)stateAsString:(int64_t)string
{
  if ((string - 1) > 2)
  {
    return @"Available";
  }

  else
  {
    return off_10005CDB8[string - 1];
  }
}

- (id)description
{
  v3 = [objc_opt_class() subsystemAsString:{-[PowerTableAsset subsystem](self, "subsystem")}];
  identifier = [(PowerTableAsset *)self identifier];
  version = [(PowerTableAsset *)self version];
  v6 = [objc_opt_class() stateAsString:{-[PowerTableAsset state](self, "state")}];
  firstSupportedOS = [(PowerTableAsset *)self firstSupportedOS];
  lastSupportedOS = [(PowerTableAsset *)self lastSupportedOS];
  firstSupportedBuild = [(PowerTableAsset *)self firstSupportedBuild];
  lastSupportedBuild = [(PowerTableAsset *)self lastSupportedBuild];
  v11 = [NSString stringWithFormat:@"[%@, %@, %@, %@, OS [%@, %@], build [%@, %@]]", v3, identifier, version, v6, firstSupportedOS, lastSupportedOS, firstSupportedBuild, lastSupportedBuild];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    subsystem = [(PowerTableAsset *)self subsystem];
    if (subsystem == [v5 subsystem])
    {
      identifier = [(PowerTableAsset *)self identifier];
      identifier2 = [v5 identifier];
      v9 = [identifier isEqualToString:identifier2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  subsystem = [(PowerTableAsset *)self subsystem];
  identifier = [(PowerTableAsset *)self identifier];
  version = [(PowerTableAsset *)self version];
  state = [(PowerTableAsset *)self state];
  firstSupportedBuild = [(PowerTableAsset *)self firstSupportedBuild];
  lastSupportedBuild = [(PowerTableAsset *)self lastSupportedBuild];
  firstSupportedOS = [(PowerTableAsset *)self firstSupportedOS];
  lastSupportedOS = [(PowerTableAsset *)self lastSupportedOS];
  v13 = [v4 initWithSubsystem:subsystem identifier:identifier version:version state:state firstSupportedBuild:firstSupportedBuild lastSupportedBuild:lastSupportedBuild firstSupportedOS:firstSupportedOS lastSupportedOS:lastSupportedOS];

  return v13;
}

@end