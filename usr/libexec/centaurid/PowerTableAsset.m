@interface PowerTableAsset
+ (id)stateAsString:(int64_t)a3;
+ (id)subsystemAsString:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (PowerTableAsset)initWithSubsystem:(int64_t)a3 identifier:(id)a4 version:(id)a5 state:(int64_t)a6 firstSupportedBuild:(id)a7 lastSupportedBuild:(id)a8 firstSupportedOS:(id)a9 lastSupportedOS:(id)a10;
- (id)assetByChangingState:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation PowerTableAsset

- (PowerTableAsset)initWithSubsystem:(int64_t)a3 identifier:(id)a4 version:(id)a5 state:(int64_t)a6 firstSupportedBuild:(id)a7 lastSupportedBuild:(id)a8 firstSupportedOS:(id)a9 lastSupportedOS:(id)a10
{
  v25 = a4;
  v24 = a5;
  v23 = a7;
  v15 = a8;
  v16 = a9;
  v17 = a10;
  v26.receiver = self;
  v26.super_class = PowerTableAsset;
  v18 = [(PowerTableAsset *)&v26 init];
  v19 = v18;
  if (v18)
  {
    v18->_subsystem = a3;
    objc_storeStrong(&v18->_identifier, a4);
    objc_storeStrong(&v19->_version, a5);
    v19->_state = a6;
    objc_storeStrong(&v19->_firstSupportedBuild, a7);
    objc_storeStrong(&v19->_lastSupportedBuild, a8);
    objc_storeStrong(&v19->_firstSupportedOS, a9);
    objc_storeStrong(&v19->_lastSupportedOS, a10);
  }

  return v19;
}

- (id)assetByChangingState:(int64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(PowerTableAsset *)self subsystem];
  v7 = [(PowerTableAsset *)self identifier];
  v8 = [(PowerTableAsset *)self version];
  v9 = [(PowerTableAsset *)self firstSupportedBuild];
  v10 = [(PowerTableAsset *)self lastSupportedBuild];
  v11 = [(PowerTableAsset *)self firstSupportedOS];
  v12 = [(PowerTableAsset *)self lastSupportedOS];
  v13 = [v5 initWithSubsystem:v6 identifier:v7 version:v8 state:a3 firstSupportedBuild:v9 lastSupportedBuild:v10 firstSupportedOS:v11 lastSupportedOS:v12];

  return v13;
}

+ (id)subsystemAsString:(int64_t)a3
{
  if (a3)
  {
    return @"BT";
  }

  else
  {
    return @"WiFi";
  }
}

+ (id)stateAsString:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"Available";
  }

  else
  {
    return off_10005CDB8[a3 - 1];
  }
}

- (id)description
{
  v3 = [objc_opt_class() subsystemAsString:{-[PowerTableAsset subsystem](self, "subsystem")}];
  v4 = [(PowerTableAsset *)self identifier];
  v5 = [(PowerTableAsset *)self version];
  v6 = [objc_opt_class() stateAsString:{-[PowerTableAsset state](self, "state")}];
  v7 = [(PowerTableAsset *)self firstSupportedOS];
  v8 = [(PowerTableAsset *)self lastSupportedOS];
  v9 = [(PowerTableAsset *)self firstSupportedBuild];
  v10 = [(PowerTableAsset *)self lastSupportedBuild];
  v11 = [NSString stringWithFormat:@"[%@, %@, %@, %@, OS [%@, %@], build [%@, %@]]", v3, v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PowerTableAsset *)self subsystem];
    if (v6 == [v5 subsystem])
    {
      v7 = [(PowerTableAsset *)self identifier];
      v8 = [v5 identifier];
      v9 = [v7 isEqualToString:v8];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(PowerTableAsset *)self subsystem];
  v6 = [(PowerTableAsset *)self identifier];
  v7 = [(PowerTableAsset *)self version];
  v8 = [(PowerTableAsset *)self state];
  v9 = [(PowerTableAsset *)self firstSupportedBuild];
  v10 = [(PowerTableAsset *)self lastSupportedBuild];
  v11 = [(PowerTableAsset *)self firstSupportedOS];
  v12 = [(PowerTableAsset *)self lastSupportedOS];
  v13 = [v4 initWithSubsystem:v5 identifier:v6 version:v7 state:v8 firstSupportedBuild:v9 lastSupportedBuild:v10 firstSupportedOS:v11 lastSupportedOS:v12];

  return v13;
}

@end