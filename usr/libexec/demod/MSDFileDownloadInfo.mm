@interface MSDFileDownloadInfo
- (BOOL)entitlementCheckForFile:(id)a3;
- (BOOL)hashCheckForFile:(id)a3;
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

- (BOOL)entitlementCheckForFile:(id)a3
{
  v4 = a3;
  v5 = [(MSDFileDownloadInfo *)self checker];
  if (!v5 || (v6 = v5, [(MSDFileDownloadInfo *)self file], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    v12 = sub_100063A54();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D440C(v4, v12);
    }

    v11 = 1;
    goto LABEL_11;
  }

  v8 = [(MSDFileDownloadInfo *)self checker];
  v9 = [(MSDFileDownloadInfo *)self file];
  v10 = [v8 checkFileForEntitlements:v4 forCorrespondingManifestEntry:v9];

  if ((v10 & 1) == 0)
  {
    v12 = sub_100063A54();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000D4394(v4, v12);
    }

    v11 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v11 = 1;
LABEL_12:

  return v11;
}

- (BOOL)hashCheckForFile:(id)a3
{
  v4 = a3;
  if ([(MSDFileDownloadInfo *)self skipHashCheck])
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Skipping file hash check for: %{public}@", &v12, 0xCu);
    }

    v8 = 1;
  }

  else
  {
    if (!v4)
    {
      v8 = 1;
      goto LABEL_9;
    }

    v5 = [MSDFileMetadata fileHashWithPath:v4];
    v6 = [v5 hexStringRepresentation];

    v7 = [(MSDFileDownloadInfo *)self fileHash];
    v8 = [v7 isEqualToString:v6];

    if ((v8 & 1) == 0)
    {
      v9 = sub_100063A54();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = [(MSDFileDownloadInfo *)self fileHash];
        v12 = 138543874;
        v13 = v4;
        v14 = 2114;
        v15 = v6;
        v16 = 2114;
        v17 = v11;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "The file (%{public}@) is corrupted - File hash:  %{public}@ - Expected:  %{public}@", &v12, 0x20u);
      }
    }
  }

LABEL_9:
  return v8;
}

@end