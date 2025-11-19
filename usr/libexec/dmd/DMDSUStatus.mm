@interface DMDSUStatus
- (BOOL)isDownloadComplete;
- (BOOL)isDownloading;
- (BOOL)isInstalling;
- (NSString)productBuildVersion;
- (double)downloadPercentComplete;
@end

@implementation DMDSUStatus

- (BOOL)isInstalling
{
  v2 = [(DMDSUStatus *)self autoInstallOperation];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isDownloading
{
  v2 = [(DMDSUStatus *)self download];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isDownloadComplete
{
  v3 = [(DMDSUStatus *)self download];
  if (v3)
  {
    v4 = [(DMDSUStatus *)self download];
    v5 = [v4 progress];
    v6 = [v5 isDone];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)downloadPercentComplete
{
  v3 = [(DMDSUStatus *)self download];
  if (v3)
  {
    v4 = [(DMDSUStatus *)self download];
    v5 = [v4 progress];
    [v5 normalizedPercentComplete];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (NSString)productBuildVersion
{
  v2 = [(DMDSUStatus *)self download];
  v3 = [v2 descriptor];
  v4 = [v3 productBuildVersion];

  return v4;
}

@end