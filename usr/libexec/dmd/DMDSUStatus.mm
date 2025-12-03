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
  autoInstallOperation = [(DMDSUStatus *)self autoInstallOperation];
  v3 = autoInstallOperation != 0;

  return v3;
}

- (BOOL)isDownloading
{
  download = [(DMDSUStatus *)self download];
  v3 = download != 0;

  return v3;
}

- (BOOL)isDownloadComplete
{
  download = [(DMDSUStatus *)self download];
  if (download)
  {
    download2 = [(DMDSUStatus *)self download];
    progress = [download2 progress];
    isDone = [progress isDone];
  }

  else
  {
    isDone = 0;
  }

  return isDone;
}

- (double)downloadPercentComplete
{
  download = [(DMDSUStatus *)self download];
  if (download)
  {
    download2 = [(DMDSUStatus *)self download];
    progress = [download2 progress];
    [progress normalizedPercentComplete];
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
  download = [(DMDSUStatus *)self download];
  descriptor = [download descriptor];
  productBuildVersion = [descriptor productBuildVersion];

  return productBuildVersion;
}

@end