@interface MSDFileDownloadInfo
- (BOOL)entitlementCheckForFile:(id)file;
- (BOOL)hashCheckForFile:(id)file;
- (MSDFileDownloadInfo)init;
@end

@implementation MSDFileDownloadInfo

- (MSDFileDownloadInfo)init
{
  v7.receiver = self;
  v7.super_class = MSDFileDownloadInfo;
  v2 = [(MSDFileDownloadInfo *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(MSDFileDownloadInfo *)v2 setFile:0];
    [(MSDFileDownloadInfo *)v3 setFileHash:0];
    v4 = +[MSDDemoManifestCheck sharedInstance];
    [(MSDFileDownloadInfo *)v3 setChecker:v4];

    [(MSDFileDownloadInfo *)v3 setSkipHashCheck:0];
    v5 = v3;
  }

  return v3;
}

- (BOOL)entitlementCheckForFile:(id)file
{
  fileCopy = file;
  checker = [(MSDFileDownloadInfo *)self checker];
  if (!checker || (v6 = checker, [(MSDFileDownloadInfo *)self file], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    v12 = sub_100063A54();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D440C(fileCopy, v12);
    }

    v11 = 1;
    goto LABEL_11;
  }

  checker2 = [(MSDFileDownloadInfo *)self checker];
  file = [(MSDFileDownloadInfo *)self file];
  v10 = [checker2 checkFileForEntitlements:fileCopy forCorrespondingManifestEntry:file];

  if ((v10 & 1) == 0)
  {
    v12 = sub_100063A54();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000D4394(fileCopy, v12);
    }

    v11 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v11 = 1;
LABEL_12:

  return v11;
}

- (BOOL)hashCheckForFile:(id)file
{
  fileCopy = file;
  if ([(MSDFileDownloadInfo *)self skipHashCheck])
  {
    hexStringRepresentation = sub_100063A54();
    if (os_log_type_enabled(hexStringRepresentation, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = fileCopy;
      _os_log_impl(&_mh_execute_header, hexStringRepresentation, OS_LOG_TYPE_DEFAULT, "Skipping file hash check for: %{public}@", &v12, 0xCu);
    }

    v8 = 1;
  }

  else
  {
    if (!fileCopy)
    {
      v8 = 1;
      goto LABEL_9;
    }

    v5 = [MSDFileMetadata fileHashWithPath:fileCopy];
    hexStringRepresentation = [v5 hexStringRepresentation];

    fileHash = [(MSDFileDownloadInfo *)self fileHash];
    v8 = [fileHash isEqualToString:hexStringRepresentation];

    if ((v8 & 1) == 0)
    {
      v9 = sub_100063A54();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        fileHash2 = [(MSDFileDownloadInfo *)self fileHash];
        v12 = 138543874;
        v13 = fileCopy;
        v14 = 2114;
        v15 = hexStringRepresentation;
        v16 = 2114;
        v17 = fileHash2;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "The file (%{public}@) is corrupted - File hash:  %{public}@ - Expected:  %{public}@", &v12, 0x20u);
      }
    }
  }

LABEL_9:
  return v8;
}

@end