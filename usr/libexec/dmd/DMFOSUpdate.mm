@interface DMFOSUpdate
+ (id)productKeyFromBuild:(id)build;
- (id)initWithDescriptor:(id)descriptor;
@end

@implementation DMFOSUpdate

+ (id)productKeyFromBuild:(id)build
{
  buildCopy = &stru_1000D0428;
  if (build)
  {
    buildCopy = build;
  }

  return [NSString stringWithFormat:@"%@%@", @"iOSUpdate", buildCopy];
}

- (id)initWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  productBuildVersion = [descriptorCopy productBuildVersion];

  if (productBuildVersion)
  {
    productBuildVersion = [descriptorCopy productBuildVersion];
    v6 = [objc_opt_class() productKeyFromBuild:productBuildVersion];
  }

  else
  {
    v6 = [@"iOSUpdate" copy];
  }

  v21 = v6;
  updateType = [descriptorCopy updateType];
  isSplatOnly = [descriptorCopy isSplatOnly];
  v8 = [productBuildVersion copy];
  v9 = descriptorCopy;
  if (objc_opt_respondsToSelector())
  {
    productVersionExtra = [v9 productVersionExtra];
  }

  else
  {
    isSplatOnly2 = [v9 isSplatOnly];

    v12 = @"(?)";
    if (!isSplatOnly2)
    {
      v12 = 0;
    }

    productVersionExtra = v12;
  }

  v13 = updateType == 3;
  humanReadableUpdateName = [v9 humanReadableUpdateName];
  productSystemName = [v9 productSystemName];
  productVersion = [v9 productVersion];
  BYTE3(v19) = isSplatOnly;
  *(&v19 + 1) = 1;
  LOBYTE(v19) = v13;
  v17 = -[DMFOSUpdate initWithProductKey:humanReadableName:productName:version:build:downloadSize:installSize:isCritical:restartRequired:allowsInstallLater:isSplat:supplementalBuild:supplementalVersionExtra:](self, "initWithProductKey:humanReadableName:productName:version:build:downloadSize:installSize:isCritical:restartRequired:allowsInstallLater:isSplat:supplementalBuild:supplementalVersionExtra:", v21, humanReadableUpdateName, productSystemName, productVersion, productBuildVersion, [v9 downloadSize], objc_msgSend(v9, "installationSize"), v19, v8, productVersionExtra);

  return v17;
}

@end