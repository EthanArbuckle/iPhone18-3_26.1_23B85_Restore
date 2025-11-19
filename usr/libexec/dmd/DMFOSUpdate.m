@interface DMFOSUpdate
+ (id)productKeyFromBuild:(id)a3;
- (id)initWithDescriptor:(id)a3;
@end

@implementation DMFOSUpdate

+ (id)productKeyFromBuild:(id)a3
{
  v3 = &stru_1000D0428;
  if (a3)
  {
    v3 = a3;
  }

  return [NSString stringWithFormat:@"%@%@", @"iOSUpdate", v3];
}

- (id)initWithDescriptor:(id)a3
{
  v4 = a3;
  v5 = [v4 productBuildVersion];

  if (v5)
  {
    v5 = [v4 productBuildVersion];
    v6 = [objc_opt_class() productKeyFromBuild:v5];
  }

  else
  {
    v6 = [@"iOSUpdate" copy];
  }

  v21 = v6;
  v7 = [v4 updateType];
  v20 = [v4 isSplatOnly];
  v8 = [v5 copy];
  v9 = v4;
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 productVersionExtra];
  }

  else
  {
    v11 = [v9 isSplatOnly];

    v12 = @"(?)";
    if (!v11)
    {
      v12 = 0;
    }

    v10 = v12;
  }

  v13 = v7 == 3;
  v14 = [v9 humanReadableUpdateName];
  v15 = [v9 productSystemName];
  v16 = [v9 productVersion];
  BYTE3(v19) = v20;
  *(&v19 + 1) = 1;
  LOBYTE(v19) = v13;
  v17 = -[DMFOSUpdate initWithProductKey:humanReadableName:productName:version:build:downloadSize:installSize:isCritical:restartRequired:allowsInstallLater:isSplat:supplementalBuild:supplementalVersionExtra:](self, "initWithProductKey:humanReadableName:productName:version:build:downloadSize:installSize:isCritical:restartRequired:allowsInstallLater:isSplat:supplementalBuild:supplementalVersionExtra:", v21, v14, v15, v16, v5, [v9 downloadSize], objc_msgSend(v9, "installationSize"), v19, v8, v10);

  return v17;
}

@end