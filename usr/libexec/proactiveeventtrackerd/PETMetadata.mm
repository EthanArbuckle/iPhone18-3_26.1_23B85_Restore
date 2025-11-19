@interface PETMetadata
+ (id)getCountryCode;
- (void)setMetadataWithConfigVersion:(unint64_t)a3;
@end

@implementation PETMetadata

- (void)setMetadataWithConfigVersion:(unint64_t)a3
{
  v5 = +[NSDate date];
  [v5 timeIntervalSince1970];
  [(PETMetadata *)self setUploadTime:v6];

  [(PETMetadata *)self setPlatform:@"iOS"];
  memset(&v20, 0, 512);
  if (uname(&v20))
  {
    v7 = 0;
  }

  else
  {
    v7 = [NSString stringWithUTF8String:v20.machine];
  }

  [(PETMetadata *)self setDevice:v7];

  v8 = +[_PASDeviceState currentOsBuild];
  [(PETMetadata *)self setBuild:v8];

  [(PETMetadata *)self setIsInternal:+[_PASDeviceInfo isInternalBuild]];
  [(PETMetadata *)self setIsSeed:0];
  v9 = [(PETMetadata *)self isInternal];
  v10 = 0;
  if ((v9 & 1) == 0)
  {
    v10 = [(PETMetadata *)self isSeed]^ 1;
  }

  [(PETMetadata *)self setIsGm:v10];
  v11 = +[PETMetadata getCountryCode];
  [(PETMetadata *)self setCountry:v11];

  v12 = +[NSLocale preferredLanguages];
  v13 = [v12 firstObject];

  if (v13)
  {
    v14 = [NSLocale componentsFromLocaleIdentifier:v13];
    v15 = [v14 objectForKey:kCFLocaleLanguageCode];
    [(PETMetadata *)self setLanguage:v15];
  }

  [(PETMetadata *)self setConfigVersion:a3];
  v16 = CFPreferencesCopyAppValue(@"ExperimentGroup", @"com.apple.da");
  v17 = [v16 isEqualToString:@"carry"];

  [(PETMetadata *)self setIsInternalCarry:v17];
  if ([(PETMetadata *)self isInternal])
  {
    v18 = +[NSUUID UUID];
    v19 = [v18 UUIDString];
    [(PETMetadata *)self setUploadIdentifier:v19];
  }
}

+ (id)getCountryCode
{
  v2 = +[NSLocale currentLocale];
  v3 = [v2 countryCode];

  return v3;
}

@end