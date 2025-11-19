@interface MIInstaller
+ (id)installerForURL:(id)a3 identity:(id)a4 domain:(unint64_t)a5 options:(id)a6 operationType:(unint64_t)a7 forClient:(id)a8;
- (BOOL)_extractPackageContainedSymlink:(BOOL *)a3 withError:(id *)a4;
- (BOOL)_installInstallable:(id)a3 containingSymlink:(BOOL)a4 error:(id *)a5;
- (BOOL)_installProvisioningProfilesAtStagingRootWithError:(id *)a3;
- (BOOL)_installProvisioningProfilesFromUserOptionsWithError:(id *)a3;
- (BOOL)_setupPackageStateWithError:(id *)a3;
- (BOOL)_takeOwnershipOfInstallableContainingSymlink:(BOOL *)a3 error:(id *)a4;
- (BOOL)_writeLockBundle:(id)a3 error:(id *)a4;
- (BOOL)applyStagedUpdateWithJournalEntry:(id)a3 error:(id *)a4;
- (BOOL)performInstallationWithError:(id *)a3;
- (BOOL)removeAndReportAbandonedContainersWithIncorrectPersonaForBundleContainer:(id)a3 withError:(id *)a4;
- (MIInstaller)initWithURL:(id)a3 identity:(id)a4 domain:(unint64_t)a5 options:(id)a6 operationType:(unint64_t)a7 forClient:(id)a8;
- (id)_bundleInDirectory:(id)a3 withBundleID:(id)a4 platformHint:(unsigned int)a5 error:(id *)a6;
- (id)_discoverInstallableWithError:(id *)a3;
- (id)_existingBundleContainerForBundle:(id)a3 error:(id *)a4;
- (id)_identifiersToLockBundleIdentifier:(id)a3 error:(id *)a4;
- (id)_manifestPathForBase:(id)a3 withIdentifier:(id)a4 patchType:(unsigned __int8 *)a5 error:(id *)a6;
- (id)_patchUpdateInstallableForBundle:(id)a3 manifestPath:(id)a4 existingBundleContainer:(id)a5 patchType:(unsigned __int8)a6 error:(id *)a7;
- (void)_fireCallbackWithStatus:(id)a3;
- (void)_logOperationCompletionWithStartTime:(unint64_t)a3 distributorID:(id)a4;
- (void)_writeLockIdentifiers:(id)a3;
- (void)dealloc;
@end

@implementation MIInstaller

- (MIInstaller)initWithURL:(id)a3 identity:(id)a4 domain:(unint64_t)a5 options:(id)a6 operationType:(unint64_t)a7 forClient:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = MIInstaller;
  v18 = [(MIInstaller *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_installURL, a3);
    objc_storeStrong(&v19->_identity, a4);
    v20 = 2;
    if (a5 != 1)
    {
      v20 = a5;
    }

    v19->_installationDomain = v20;
    objc_storeStrong(&v19->_options, a6);
    objc_storeStrong(&v19->_client, a8);
    v19->_installOperationType = a7;
  }

  return v19;
}

- (void)dealloc
{
  v3 = [(MIInstaller *)self lockedIdentifiers];

  if (v3)
  {
    v4 = [(MIInstaller *)self lockedIdentifiers];
    sub_100054780(v4);

    [(MIInstaller *)self setLockedIdentifiers:0];
  }

  v5 = [(MIInstaller *)self client];
  if (v5)
  {
    v6 = v5;
    v7 = [(MIInstaller *)self terminationAssertionReleased];

    if ((v7 & 1) == 0)
    {
      v8 = [(MIInstaller *)self client];
      [v8 releaseTerminationAssertion];

      [(MIInstaller *)self setTerminationAssertionReleased:1];
    }
  }

  v9.receiver = self;
  v9.super_class = MIInstaller;
  [(MIInstaller *)&v9 dealloc];
}

+ (id)installerForURL:(id)a3 identity:(id)a4 domain:(unint64_t)a5 options:(id)a6 operationType:(unint64_t)a7 forClient:(id)a8
{
  v13 = a8;
  v14 = a6;
  v15 = a4;
  v16 = a3;
  v17 = [objc_alloc(objc_opt_class()) initWithURL:v16 identity:v15 domain:a5 options:v14 operationType:a7 forClient:v13];

  return v17;
}

- (void)_fireCallbackWithStatus:(id)a3
{
  v4 = a3;
  v5 = [(MIInstaller *)self client];
  [v5 sendProgressWithStatus:v4];
}

- (BOOL)_takeOwnershipOfInstallableContainingSymlink:(BOOL *)a3 error:(id *)a4
{
  v29 = 0;
  v7 = +[MIHelperServiceFrameworkClient sharedInstance];
  v8 = [(MIInstaller *)self identity];
  v9 = [v8 location];
  v28 = 0;
  v10 = [v7 stagingLocationForInstallLocation:v9 withinStagingSubsytem:1 usingUniqueName:0 error:&v28];
  v11 = v28;

  if (!v10)
  {
    v16 = v11;
    if (!a4)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v12 = +[MIHelperServiceClient sharedInstance];
  v13 = [(MIInstaller *)self installURL];
  v14 = [(MIInstaller *)self options];
  v27 = v11;
  v15 = [v12 stageItemAtURL:v13 toStagingLocation:v10 options:v14 containedSymlink:&v29 error:&v27];
  v16 = v27;

  if (!v15)
  {
    v18 = [v16 domain];
    v19 = MIInstallerErrorDomain;
    v20 = [v18 isEqualToString:MIInstallerErrorDomain];

    if (v20)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        MOLogWrite();
      }

      if (a4)
      {
        goto LABEL_13;
      }

LABEL_15:
      v17 = 0;
      goto LABEL_16;
    }

    v22 = [(MIInstaller *)self installURL];
    v23 = [v22 path];
    v25 = sub_100010734("[MIInstaller _takeOwnershipOfInstallableContainingSymlink:error:]", 205, v19, 103, v16, 0, @"Failed to transfer ownership of path %@ to installd", v24, v23);

    v16 = v25;
    if (!a4)
    {
      goto LABEL_15;
    }

LABEL_13:
    v21 = v16;
    v17 = 0;
    *a4 = v16;
    goto LABEL_16;
  }

  if (a3)
  {
    *a3 = v29;
  }

  [(MIInstaller *)self setInstallURL:v15];
  [(MIInstaller *)self setStagingLocation:v10];

  v17 = 1;
LABEL_16:

  return v17;
}

- (BOOL)_setupPackageStateWithError:(id *)a3
{
  memset(&v60, 0, sizeof(v60));
  v5 = [(MIInstaller *)self installURL];
  if (lstat([v5 fileSystemRepresentation], &v60))
  {
    v6 = MIInstallerErrorDomain;
    v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
    v68 = MIPathArgumentErrorKey;
    v8 = [(MIInstaller *)self installURL];
    v9 = [v8 path];
    v69 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
    v11 = [v5 fileSystemRepresentation];
    v12 = __error();
    strerror(*v12);
    v14 = sub_100010734("[MIInstaller _setupPackageStateWithError:]", 239, v6, 3, v7, v10, @"Can't stat %s: %s", v13, v11);

LABEL_28:
    goto LABEL_29;
  }

  v15 = v5;
  LOBYTE(value) = 110;
  v16 = getxattr([v15 fileSystemRepresentation], "com.apple.streamingzip.incomplete_extraction", &value, 1uLL, 0, 1);
  if (v16 == -1)
  {
    if (*__error() == 93)
    {
      goto LABEL_11;
    }

    if (*__error() == 34)
    {
      goto LABEL_5;
    }
  }

  else if ((v16 & 0x8000000000000000) == 0)
  {
LABEL_5:

    v17 = MIInstallerErrorDomain;
    v66[0] = MIPathArgumentErrorKey;
    v7 = [v15 path];
    v66[1] = @"LegacyErrorString";
    v67[0] = v7;
    v67[1] = @"PackageInspectionFailed";
    v8 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:2];
    v51 = [v15 fileSystemRepresentation];
    sub_100010734("[MIInstaller _setupPackageStateWithError:]", 246, v17, 3, 0, v8, @"Archive we've been requested to install at %s is an incomplete download.", v18, v51);
    v14 = LABEL_27:;
    goto LABEL_28;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    v19 = [v15 fileSystemRepresentation];
    v20 = __error();
    v53 = v19;
    v54 = strerror(*v20);
    v50 = "com.apple.streamingzip.incomplete_extraction";
    MOLogWrite();
  }

LABEL_11:

  v21 = v60.st_mode & 0xF000;
  if (v21 != 0x4000)
  {
    if (v21 != 0x8000)
    {
      v33 = MIInstallerErrorDomain;
      v62 = MIPathArgumentErrorKey;
      v7 = [v15 path];
      v63 = v7;
      v8 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      sub_100010734("[MIInstaller _setupPackageStateWithError:]", 293, v33, 3, 0, v8, @"Unrecognized package file type 0%o", v34, v60.st_mode);
      goto LABEL_27;
    }

    if (!v60.st_size)
    {
      v37 = MIInstallerErrorDomain;
      v64[0] = MIPathArgumentErrorKey;
      v7 = [v15 path];
      v64[1] = @"LegacyErrorString";
      v65[0] = v7;
      v65[1] = @"PackageExtractionFailed";
      v8 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:2];
      v52 = [v15 fileSystemRepresentation];
      sub_100010734("[MIInstaller _setupPackageStateWithError:]", 259, v37, 3, 0, v8, @"Archive we've been requested to install at %s is 0 bytes. That can't be a valid ipa.", v38, v52);
      goto LABEL_27;
    }

    v22 = v15;
    value = 0;
    v23 = open([v22 fileSystemRepresentation], 256);
    if (v23 < 0)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v42 = [v22 fileSystemRepresentation];
        v43 = __error();
        v50 = v42;
        v53 = strerror(*v43);
        MOLogWrite();
      }

      goto LABEL_44;
    }

    v24 = v23;
    v25 = read(v23, &value, 4uLL);
    if (v25 == 4)
    {
      if (value == 67324752)
      {
        close(v24);

LABEL_47:
        [(MIInstaller *)self setPackageFormat:1, v50, v53, v54, v55, v56, v57, v58, v59];
        goto LABEL_48;
      }

      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
      {
        goto LABEL_43;
      }

      v58 = 3;
      v59 = 4;
      v56 = 80;
      v57 = 75;
      v54 = SBYTE2(value);
      v55 = SHIBYTE(value);
      v50 = value;
      v53 = SBYTE1(value);
    }

    else
    {
      v44 = v25;
      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
      {
        goto LABEL_43;
      }

      v45 = [v22 fileSystemRepresentation];
      v46 = __error();
      v54 = v45;
      v55 = strerror(*v46);
      v50 = 4;
      v53 = v44;
    }

    MOLogWrite();
LABEL_43:
    close(v24);
LABEL_44:

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v50 = [v22 fileSystemRepresentation];
      MOLogWrite();
    }

    goto LABEL_47;
  }

  v26 = [v15 URLByAppendingPathComponent:@"Payload" isDirectory:1];
  v27 = [v15 URLByAppendingPathComponent:@"AssetData" isDirectory:1];
  v28 = [(MIInstaller *)self options];
  v29 = [v28 isSystemAppInstall];

  if (v29 && (+[MIFileManager defaultManager](MIFileManager, "defaultManager"), v30 = objc_claimAutoreleasedReturnValue(), v31 = [v30 itemExistsAtURL:v27], v30, (v31 & 1) != 0))
  {
    v32 = 4;
  }

  else
  {
    v35 = [MIFileManager defaultManager:v50];
    v36 = [v35 itemExistsAtURL:v26];

    if (v36)
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }
  }

  [(MIInstaller *)self setPackageFormat:v32, v50];

LABEL_48:
  v47 = [v15 URLByDeletingLastPathComponent];
  [(MIInstaller *)self setStagingRoot:v47];

  v14 = [(MIInstaller *)self stagingRoot];

  if (v14)
  {
    v48 = [(MIInstaller *)self stagingRoot];
    v40 = 1;
    v49 = [v48 URLByAppendingPathComponent:@"extracted" isDirectory:1];
    [(MIInstaller *)self setStagingURL:v49];

    v14 = 0;
    goto LABEL_32;
  }

LABEL_29:
  if (a3)
  {
    v39 = v14;
    v40 = 0;
    *a3 = v14;
  }

  else
  {
    v40 = 0;
  }

LABEL_32:

  return v40;
}

- (BOOL)_extractPackageContainedSymlink:(BOOL *)a3 withError:(id *)a4
{
  v7 = +[MIFileManager defaultManager];
  if ([(MIInstaller *)self packageFormat]!= 1)
  {
    v14 = [(MIInstaller *)self stagingURL];
    if ([(MIInstaller *)self packageFormat]== 2)
    {
      v22 = [(MIInstaller *)self installURL];
      v23 = [v22 pathExtension];

      v24 = [v23 isEqualToString:@"app"];
      v25 = [(MIInstaller *)self installURL];
      v26 = [v25 lastPathComponent];
      v27 = v26;
      if ((v24 & 1) == 0)
      {
        v28 = [v26 stringByAppendingString:@".app"];

        v27 = v28;
      }

      v29 = [v14 URLByAppendingPathComponent:v27 isDirectory:1];

      v30 = [(MIInstaller *)self stagingURL];
      v50 = 0;
      v31 = [v7 createDirectoryAtURL:v30 withIntermediateDirectories:0 mode:493 error:&v50];
      v32 = v50;

      if ((v31 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
      {
        v45 = [(MIInstaller *)self stagingURL];
        v46 = v32;
        MOLogWrite();
      }

      v14 = v29;
    }

    else
    {
      v32 = 0;
    }

    if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
    {
      v35 = [(MIInstaller *)self installURL];
      v36 = [v35 path];
      [v14 path];
      v46 = v45 = v36;
      MOLogWrite();
    }

    v37 = [(MIInstaller *)self installURL:v45];
    v49 = v32;
    v38 = [v7 moveItemAtURL:v37 toURL:v14 error:&v49];
    v11 = v49;

    if (v38)
    {
      v20 = 1;
      goto LABEL_31;
    }

    v39 = MIInstallerErrorDomain;
    v40 = [(MIInstaller *)self installURL];
    v41 = [v40 path];
    v48 = [v14 path];
    v21 = sub_100010734("[MIInstaller _extractPackageContainedSymlink:withError:]", 357, v39, 5, v11, &off_10009C1C8, @"Failed to move %@ to %@", v42, v41);

    goto LABEL_29;
  }

  v8 = [(MIInstaller *)self installURL];
  v9 = [(MIInstaller *)self stagingURL];
  v53 = 0;
  v10 = [MIBOMWrapper extractZipArchiveAtURL:v8 toURL:v9 withError:&v53];
  v11 = v53;

  if (v10)
  {
    v12 = [(MIInstaller *)self installURL];
    v52 = 0;
    v13 = [v7 removeItemAtURL:v12 error:&v52];
    v14 = v52;

    if ((v13 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
    {
      v15 = [(MIInstaller *)self installURL];
      v45 = [v15 path];
      v46 = v14;
      MOLogWrite();
    }

    v16 = [(MIInstaller *)self stagingURL:v45];
    v17 = +[MIDaemonConfiguration sharedInstance];
    v18 = [v17 uid];
    v19 = +[MIDaemonConfiguration sharedInstance];
    v51 = v11;
    v20 = 1;
    LOBYTE(v18) = [v7 standardizeOwnershipAtURL:v16 toUID:v18 GID:objc_msgSend(v19 removeACLs:"gid") setProtectionClass:1 foundSymlink:1 error:{a3, &v51}];
    v21 = v51;

    if (v18)
    {
      goto LABEL_30;
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }

LABEL_29:
    v20 = 0;
LABEL_30:
    v11 = v21;
    goto LABEL_31;
  }

  if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
  {
    v20 = 0;
    if (!a4)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v14 = [(MIInstaller *)self installURL];
  v33 = [v14 path];
  v34 = [(MIInstaller *)self stagingURL];
  v47 = [v34 path];
  MOLogWrite();

  v20 = 0;
LABEL_31:

  if (a4)
  {
LABEL_32:
    v43 = v11;
    *a4 = v11;
  }

LABEL_33:

  return v20;
}

- (id)_manifestPathForBase:(id)a3 withIdentifier:(id)a4 patchType:(unsigned __int8 *)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = [@"com.apple.deltainstallcommands." stringByAppendingString:v9];
  v11 = [v8 URLByAppendingPathComponent:v10 isDirectory:0];

  v12 = [@"com.apple.parallelpatchinfo." stringByAppendingString:v9];
  v13 = [v8 URLByAppendingPathComponent:v12 isDirectory:0];

  v14 = [@"com.apple.parallelpatcharchive." stringByAppendingString:v9];
  v15 = [v8 URLByAppendingPathComponent:v14 isDirectory:0];

  v16 = +[MIFileManager defaultManager];
  v43 = 0;
  LODWORD(v14) = [v16 itemIsFileAtURL:v15 error:&v43];
  v17 = v43;
  v40 = v11;
  if (v14)
  {
    *a5 = 4;
    v18 = v15;
    if (qword_1000A9720)
    {
      v19 = v13;
      if (*(qword_1000A9720 + 44) >= 7)
      {
        MOLogWrite();
      }
    }

    else
    {
      v19 = v13;
    }

    v21 = 0;
LABEL_16:
    v25 = 0;
    v23 = v17;
LABEL_17:
    v24 = a6;
    goto LABEL_18;
  }

  v42 = 0;
  v20 = [v16 itemIsFileAtURL:v11 error:&v42];
  v21 = v42;
  if (v20)
  {
    *a5 = 2;
    v18 = v11;
    if (qword_1000A9720)
    {
      v19 = v13;
      if (*(qword_1000A9720 + 44) >= 7)
      {
        MOLogWrite();
      }
    }

    else
    {
      v19 = v13;
    }

    goto LABEL_16;
  }

  v41 = v17;
  v19 = v13;
  v22 = [v16 itemIsFileAtURL:v13 error:&v41];
  v23 = v41;

  if (!v22)
  {
    *a5 = 0;
    v28 = [v21 domain];
    if ([v28 isEqualToString:NSPOSIXErrorDomain] && objc_msgSend(v21, "code") == 2)
    {
      v29 = [v23 domain];
      if ([v29 isEqualToString:NSPOSIXErrorDomain])
      {
        v38 = [v23 code];

        if (v38 == 2)
        {
          v25 = sub_1000106F4("[MIInstaller _manifestPathForBase:withIdentifier:patchType:error:]", 397, NSPOSIXErrorDomain, 2, 0, 0, @"No manifest file for application %@ found in %@", v30, v9);
LABEL_42:
          v18 = 0;
          goto LABEL_17;
        }

LABEL_33:
        v31 = [v21 domain];
        if ([v31 isEqualToString:NSPOSIXErrorDomain])
        {
          v32 = [v21 code];

          if (v32 == 2)
          {
            v33 = v23;
          }

          else
          {
            v33 = v21;
          }

          if (v32 == 2)
          {
            v34 = v19;
          }

          else
          {
            v34 = v40;
          }
        }

        else
        {

          v33 = v21;
          v34 = v40;
        }

        v35 = v33;
        v36 = v34;
        v25 = sub_100010734("[MIInstaller _manifestPathForBase:withIdentifier:patchType:error:]", 408, MIInstallerErrorDomain, 8, v35, &off_10009C1F0, @"Failed to determine if patch URL %@ for application %@ exists. Failing.", v37, v36);

        goto LABEL_42;
      }
    }

    goto LABEL_33;
  }

  *a5 = 3;
  v18 = v19;
  if (!qword_1000A9720)
  {
    v25 = 0;
    goto LABEL_17;
  }

  v24 = a6;
  if (*(qword_1000A9720 + 44) >= 7)
  {
    MOLogWrite();
  }

  v25 = 0;
LABEL_18:
  if (v24 && !v18)
  {
    v26 = v25;
    *v24 = v25;
  }

  return v18;
}

- (id)_bundleInDirectory:(id)a3 withBundleID:(id)a4 platformHint:(unsigned int)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_100023B80;
  v41 = sub_100023B90;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_100023B80;
  v35 = sub_100023B90;
  v36 = 0;
  v11 = objc_opt_new();
  v12 = +[MIFileManager defaultManager];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100023B98;
  v24[3] = &unk_1000913F0;
  v30 = a5;
  v28 = &v31;
  v13 = v10;
  v25 = v13;
  v29 = &v37;
  v14 = v9;
  v26 = v14;
  v15 = v11;
  v27 = v15;
  v16 = [v12 enumerateURLsForItemsInDirectoryAtURL:v14 ignoreSymlinks:1 withBlock:v24];

  if (v32[5])
  {
LABEL_4:
    v17 = 0;
    if (!a6)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v16)
  {
    objc_storeStrong(v32 + 5, v16);
    goto LABEL_4;
  }

  if (!v38[5])
  {
    if ([v15 count])
    {
      sub_100010734("[MIInstaller _bundleInDirectory:withBundleID:platformHint:error:]", 481, MIInstallerErrorDomain, 180, 0, 0, @"The item being installed did not contain an app with bundle ID %@, but it did contain app(s) with bundle ID(s): %@", v20, v13);
    }

    else
    {
      sub_100010734("[MIInstaller _bundleInDirectory:withBundleID:platformHint:error:]", 483, MIInstallerErrorDomain, 6, 0, &off_10009C240, @"The item being installed did not contain any installable apps.", v20, v23);
    }
    v21 = ;
    v22 = v32[5];
    v32[5] = v21;
  }

  v17 = v38[5];
  if (a6)
  {
LABEL_5:
    if (!v17)
    {
      *a6 = v32[5];
    }
  }

LABEL_7:
  v18 = v17;

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  return v18;
}

- (id)_identifiersToLockBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  [v7 addObject:v6];
  v8 = [(MIInstaller *)self options];
  v9 = [v8 linkedParentBundleID];

  if (v9)
  {
    [v7 addObject:v9];
  }

  sub_100054628(v6);
  v10 = [MIContainerLinkManager sharedInstanceForDomain:[(MIInstaller *)self installationDomain]];
  v20 = 0;
  v21 = 0;
  v11 = [v10 getLinkedParent:&v21 forChild:v6 error:&v20];
  v12 = v21;
  v13 = v20;
  sub_100054780(v6);
  if (v11)
  {
    if (v12)
    {
      [v7 addObject:v12];
    }
  }

  else
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v18 = v6;
      v19 = v13;
      MOLogWrite();
    }

    v13 = 0;
  }

  v14 = [v7 copy];
  v15 = v14;
  if (a4 && !v14)
  {
    v16 = v13;
    *a4 = v13;
  }

  return v15;
}

- (void)_writeLockIdentifiers:(id)a3
{
  v4 = a3;
  [(MIInstaller *)self _fireCallbackWithStatus:@"TakingInstallLock"];
  [(MIInstaller *)self setLockedIdentifiers:v4];
  v5 = mach_absolute_time();
  sub_100054630(v4);

  v6 = (mach_absolute_time() - v5) * qword_1000A9728 / HIDWORD(qword_1000A9728);

  [(MIInstaller *)self setWaitingTime:v6];
}

- (BOOL)_writeLockBundle:(id)a3 error:(id *)a4
{
  v6 = [a3 identifier];
  v11 = 0;
  v7 = [(MIInstaller *)self _identifiersToLockBundleIdentifier:v6 error:&v11];
  v8 = v11;

  if (v7)
  {
    [(MIInstaller *)self _writeLockIdentifiers:v7];
  }

  else if (a4)
  {
    v9 = v8;
    *a4 = v8;
  }

  return v7 != 0;
}

- (BOOL)removeAndReportAbandonedContainersWithIncorrectPersonaForBundleContainer:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = +[MIDaemonConfiguration sharedInstance];
  v8 = [v7 deviceHasPersonas];

  if (!v8)
  {
    v17 = 1;
    goto LABEL_55;
  }

  v9 = [(MIInstaller *)self identity];
  v10 = [v9 bundleID];
  v62 = [v9 personaUniqueString];
  v11 = +[MIUserManagement sharedInstance];
  v12 = objc_opt_new();
  v13 = +[MIUserManagement sharedInstance];
  v71 = 0;
  v14 = [v13 multiPersonaSADAppBundleIDsWithError:&v71];
  v15 = v71;

  if (!v14)
  {
    obj = 0;
    v16 = 0;
    if (!a4)
    {
      goto LABEL_53;
    }

    goto LABEL_7;
  }

  if ([v14 containsObject:v10])
  {
    obj = 0;
    v16 = 0;
    v17 = 1;
    goto LABEL_54;
  }

  v57 = v14;
  v58 = v12;
  v70 = v15;
  v19 = [MIContainer allContainersForAllPersonasForIdentifier:v10 options:2 error:&v70];
  v20 = v70;

  if (!v19)
  {
    v15 = sub_100010734("[MIInstaller removeAndReportAbandonedContainersWithIncorrectPersonaForBundleContainer:withError:]", 609, MIInstallerErrorDomain, 4, v20, 0, @"Failed to query containers for %@", v21, v10);
    obj = 0;
    v16 = 0;
    goto LABEL_52;
  }

  v53 = a4;
  v54 = v11;
  v59 = v10;
  v55 = v9;
  v56 = v6;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v19;
  v22 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (!v22)
  {
    v61 = 0;
    goto LABEL_42;
  }

  v23 = v22;
  v61 = 0;
  v24 = *v67;
  do
  {
    v25 = 0;
    v26 = v20;
    do
    {
      if (*v67 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v66 + 1) + 8 * v25);
      v28 = [v27 personaUniqueString];
      if (v28 && ([v62 isEqualToString:v28] & 1) != 0)
      {
        v20 = v26;
        goto LABEL_37;
      }

      v65 = 0;
      v29 = +[MIHelperServiceClient sharedInstance];
      v30 = [v27 containerURL];
      v31 = [v27 containerClass];
      v64 = v26;
      v32 = [v29 dataContainer:v30 ofContainerType:v31 isEmpty:&v65 error:&v64];
      v20 = v64;

      if ((v32 & 1) == 0)
      {
        if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
        {
          goto LABEL_36;
        }

        v51 = v59;
        v52 = v20;
        v50 = v27;
        goto LABEL_28;
      }

      v61 |= v65 ^ 1;
      if (v28 || (+[MIGlobalConfiguration sharedInstance](MIGlobalConfiguration, "sharedInstance"), v33 = objc_claimAutoreleasedReturnValue(), [v33 primaryPersonaString], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v62, "isEqualToString:", v34), v34, v33, !v35))
      {
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
        {
          if (v65)
          {
            v37 = @"without";
          }

          else
          {
            v37 = @"with";
          }

          v51 = v59;
          v52 = v37;
          v50 = v27;
          MOLogWrite();
        }

        [v58 addObject:{v27, v50}];
        goto LABEL_36;
      }

      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v36 = @"with";
        if (v65)
        {
          v36 = @"without";
        }

        v50 = v27;
        v51 = v36;
LABEL_28:
        MOLogWrite();
      }

LABEL_36:
      v26 = v20;
LABEL_37:

      v25 = v25 + 1;
    }

    while (v23 != v25);
    v23 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
  }

  while (v23);
LABEL_42:

  v12 = v58;
  if (![v58 count])
  {
    v16 = 0;
    v17 = 1;
    v15 = v20;
    v9 = v55;
    v6 = v56;
    v10 = v59;
    v11 = v54;
    v14 = v57;
    goto LABEL_54;
  }

  v38 = [v58 objectAtIndexedSubscript:0];
  v16 = [v38 personaUniqueString];

  v6 = v56;
  v11 = v54;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_100057D7C(v59, v16, v62);
  }

  a4 = v53;
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    MOLogWrite();
  }

  v39 = objc_opt_new();
  [(__CFString *)v39 setObject:v59 forKeyedSubscript:@"bundleID"];
  v40 = [NSNumber numberWithBool:v56 == 0];
  [(__CFString *)v39 setObject:v40 forKeyedSubscript:@"isFreshInstall"];

  v41 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v54 personaTypeForPersonaUniqueString:v62]);
  [(__CFString *)v39 setObject:v41 forKeyedSubscript:@"requestedPersonaType"];

  v42 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v54 personaTypeForPersonaUniqueString:v16]);
  [(__CFString *)v39 setObject:v42 forKeyedSubscript:@"erroneousPersonaType"];

  v43 = [NSNumber numberWithBool:v61 & 1];
  [(__CFString *)v39 setObject:v43 forKeyedSubscript:@"hasAbandonedUserData"];

  v44 = MIInstallerErrorDomain;
  v45 = [(__CFString *)v39 copy];
  sub_100009BA8(v44, @"InvalidPersonaError", @"AbandonedErroneousContainers", @"Concurrent app install container cleanup", v45);

  v63 = v20;
  v46 = [MIContainer removeContainers:v58 waitForDeletion:0 error:&v63];
  v15 = v63;

  if (v46)
  {

    v17 = 1;
    v9 = v55;
    v10 = v59;
    v14 = v57;
    v12 = v58;
    goto LABEL_54;
  }

  v48 = sub_100010734("[MIInstaller removeAndReportAbandonedContainersWithIncorrectPersonaForBundleContainer:withError:]", 658, v44, 4, v15, 0, @"Failed to delete erroneous containers associated with persona %@ for %@", v47, v16);

  v20 = v39;
  v15 = v48;
  v9 = v55;
  v10 = v59;
LABEL_52:

  v14 = v57;
  v12 = v58;
  if (a4)
  {
LABEL_7:
    v18 = v15;
    v17 = 0;
    *a4 = v15;
    goto LABEL_54;
  }

LABEL_53:
  v17 = 0;
LABEL_54:

LABEL_55:
  return v17;
}

- (id)_existingBundleContainerForBundle:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MIInstaller *)self installationDomain];
  v8 = [v6 identifier];
  if (v7 == 3)
  {
    v25 = 0;
    v9 = &v25;
    v10 = [MIBundleContainer privateAppBundleContainerWithIdentifier:v8 createIfNeeded:0 created:0 error:&v25];
  }

  else
  {
    v24 = 0;
    v9 = &v24;
    v10 = [MIBundleContainer appBundleContainerWithIdentifier:v8 createIfNeeded:0 created:0 error:&v24];
  }

  v11 = v10;
  v12 = *v9;

  if (v11)
  {
    v13 = [v11 bundle];

    if (!v13)
    {
      v14 = [v6 identifier];
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v21 = v14;
        MOLogWrite();
      }

      v23 = v12;
      v15 = [v11 removeUnderlyingContainerWaitingForDeletion:0 error:{&v23, v21}];
      v16 = v23;

      if ((v15 & 1) == 0)
      {
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          MOLogWrite();
        }

        v16 = 0;
      }

      v12 = sub_1000106F4("[MIInstaller _existingBundleContainerForBundle:error:]", 697, MIContainerManagerErrorDomain, 21, 0, 0, @"Deleted exisiting bundle container for %@ because it didn't contain a bundle", v17, v14);

      v11 = 0;
    }
  }

  if (_os_feature_enabled_impl())
  {
    v22 = v12;
    [(MIInstaller *)self removeAndReportAbandonedContainersWithIncorrectPersonaForBundleContainer:v11 withError:&v22];
    v18 = v22;

    v12 = v18;
  }

  if (a4 && !v11)
  {
    v19 = v12;
    *a4 = v12;
  }

  return v11;
}

- (id)_patchUpdateInstallableForBundle:(id)a3 manifestPath:(id)a4 existingBundleContainer:(id)a5 patchType:(unsigned __int8)a6 error:(id *)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [(MIInstaller *)self options];
  v16 = [v15 installTargetType];

  if (!v14)
  {
    v22 = MIInstallerErrorDomain;
    if (v8 > 4)
    {
      v23 = @"Unknown";
    }

    else
    {
      v23 = *(&off_1000914A8 + v8);
    }

    v25 = [v12 identifier];
    sub_100010734("[MIInstaller _patchUpdateInstallableForBundle:manifestPath:existingBundleContainer:patchType:error:]", 766, v22, 8, 0, &off_10009C268, @"%@ patch submitted for application %@ that's not installed. Failing.", v26, v23);
    goto LABEL_14;
  }

  v17 = [v14 bundle];
  v18 = [v17 isPlaceholder];

  if (v18)
  {
    v20 = MIInstallerErrorDomain;
    if (v8 > 4)
    {
      v21 = @"Unknown";
    }

    else
    {
      v21 = *(&off_1000914A8 + v8);
    }

    v25 = [v12 identifier];
    sub_100010734("[MIInstaller _patchUpdateInstallableForBundle:manifestPath:existingBundleContainer:patchType:error:]", 771, v20, 8, 0, &off_10009C290, @"%@ patch submitted for application %@ that's just a placeholder. Failing.", v27, v21);
    v28 = LABEL_14:;

    goto LABEL_15;
  }

  if ((v16 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v40 = [MIInstallableBundle alloc];
    v32 = [(MIInstaller *)self stagingURL];
    v33 = [(MIInstaller *)self stagingLocation];
    v39 = [(MIInstaller *)self packageFormat];
    v34 = [(MIInstaller *)self identity];
    v38 = [(MIInstaller *)self installationDomain];
    v35 = [(MIInstaller *)self options];
    v41 = 0;
    LOBYTE(v37) = v8;
    v36 = [(MIInstallableBundle *)v40 initWithBundle:v12 inStagingRoot:v32 stagingLocation:v33 packageFormat:v39 identity:v34 domain:v38 installOptions:v35 manifestURL:v13 existingBundleContainer:v14 patchType:v37 operationType:[(MIInstaller *)self installOperationType] error:&v41];
    v28 = v41;

    v29 = v36;
    if (!a7)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v8 > 4)
  {
    v24 = @"Unknown";
  }

  else
  {
    v24 = *(&off_1000914A8 + v8);
  }

  v28 = sub_100010734("[MIInstaller _patchUpdateInstallableForBundle:manifestPath:existingBundleContainer:patchType:error:]", 777, MIInstallerErrorDomain, 25, 0, 0, @"%@ patch supplied but install target type was placeholder or downgrade. This doesn't make sense.", v19, v24);
LABEL_15:
  v29 = 0;
  if (!a7)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (!v29)
  {
    v30 = v28;
    *a7 = v28;
  }

LABEL_18:

  return v29;
}

- (id)_discoverInstallableWithError:(id *)a3
{
  v5 = [(MIInstaller *)self stagingURL];
  v6 = [(MIInstaller *)self packageFormat];
  v7 = [(MIInstaller *)self options];
  v8 = [v7 bundleIdentifier];

  if (!v8)
  {
    v11 = MIInstallerErrorDomain;
    v12 = @"Caller did not supply bundle identifer in install options";
    v13 = 833;
LABEL_11:
    v15 = sub_100010734("[MIInstaller _discoverInstallableWithError:]", v13, v11, 4, 0, 0, v12, v9, v55);
    v16 = 0;
    v17 = 0;
    goto LABEL_24;
  }

  if (v6 > 2)
  {
    if (v6 == 4)
    {
      v14 = @"AssetData";
      goto LABEL_13;
    }

    if (v6 != 3)
    {
LABEL_10:
      v11 = MIInstallerErrorDomain;
      v55 = v6;
      v12 = @"Unknown package format: %hhu";
      v13 = 856;
      goto LABEL_11;
    }
  }

  else if (v6 != 1)
  {
    if (v6 == 2)
    {
      v10 = v5;
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v14 = @"Payload";
LABEL_13:
  v10 = [v5 URLByAppendingPathComponent:v14 isDirectory:1];
LABEL_14:
  v16 = v10;
  v18 = [(MIInstaller *)self options];
  v19 = [v18 installTargetType];

  v79[0] = 0;
  v17 = [(MIInstaller *)self _bundleInDirectory:v16 withBundleID:v8 platformHint:0 error:v79];
  v20 = v79[0];
  v15 = v20;
  if (!v17)
  {
    goto LABEL_24;
  }

  v78 = v20;
  v21 = [(MIInstaller *)self _writeLockBundle:v17 error:&v78];
  v22 = v78;

  if (!v21)
  {
    v15 = v22;
    goto LABEL_24;
  }

  v67 = v19;
  v23 = [(MIInstaller *)self identity];
  v77 = v22;
  v24 = [v23 resolvePersonaWithError:&v77];
  v15 = v77;

  if (!v24)
  {
    goto LABEL_24;
  }

  v25 = [v17 bundleType];
  v26 = v25;
  if (v25 > 4 || ((1 << v25) & 0x16) == 0)
  {
    v41 = MIInstallerErrorDomain;
    v42 = [v17 bundleURL];
    v56 = [v42 path];
    v44 = sub_100010734("[MIInstaller _discoverInstallableWithError:]", 988, v41, 4, 0, 0, @"Got unexpected bundle type %d at %@", v43, v26);

LABEL_48:
    v15 = v44;
    goto LABEL_24;
  }

  v76 = v15;
  v27 = [(MIInstaller *)self _existingBundleContainerForBundle:v17 error:&v76];
  v28 = v76;

  if (!v27)
  {
    v36 = [v28 domain];
    if ([v36 isEqualToString:MIContainerManagerErrorDomain])
    {
      v37 = [v28 code];

      if (v37 != 21)
      {
LABEL_35:
        v15 = v28;
        goto LABEL_24;
      }

      v66 = 0;
      if (v67 != 3)
      {
        goto LABEL_42;
      }

      v38 = MIInstallerErrorDomain;
      v36 = [v17 identifier];
      v40 = sub_100010734("[MIInstaller _discoverInstallableWithError:]", 940, v38, 26, 0, 0, @"Application %@ not found to downgrade to placeholder.", v39, v36);

      v28 = v40;
    }

    goto LABEL_35;
  }

  v66 = v27;
  v29 = [v27 bundle];
  v30 = [v29 isPlaceholder];

  if ((v30 & 1) == 0 && v67 == 2)
  {
    v68 = [MIInstallableParallelPlaceholder alloc];
    v64 = [(MIInstaller *)self stagingLocation];
    v62 = [(MIInstaller *)self packageFormat];
    v58 = [(MIInstaller *)self identity];
    v60 = [(MIInstaller *)self installationDomain];
    v31 = [(MIInstaller *)self options];
    v75 = v28;
    v69 = [(MIInstallableBundle *)v68 initWithBundle:v17 inStagingRoot:v5 stagingLocation:v64 packageFormat:v62 identity:v58 domain:v60 installOptions:v31 existingBundleContainer:v27 operationType:[(MIInstaller *)self installOperationType] error:&v75];
    v15 = v75;

    p_super = &v69->super;
LABEL_45:

    if (p_super)
    {
      v34 = p_super;
      goto LABEL_27;
    }

    v50 = MIInstallerErrorDomain;
    v51 = [v16 path];
    v44 = sub_100010734("[MIInstaller _discoverInstallableWithError:]", 994, v50, 6, v15, &off_10009C2B8, @"No installable items found at %@", v52, v51);

    goto LABEL_48;
  }

  if (v67 == 3)
  {
    v45 = [v27 bundle];
    v46 = [v45 isPlaceholder];

    if ((v46 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5))
    {
      v55 = [v17 identifier];
      MOLogWrite();
    }
  }

LABEL_42:
  v74 = 0;
  v47 = [v17 identifier];
  v73 = v28;
  v48 = [(MIInstaller *)self _manifestPathForBase:v5 withIdentifier:v47 patchType:&v74 error:&v73];
  v15 = v73;

  if (v48)
  {
    v72 = v15;
    v27 = v66;
    p_super = [(MIInstaller *)self _patchUpdateInstallableForBundle:v17 manifestPath:v48 existingBundleContainer:v66 patchType:v74 error:&v72];
    v49 = v72;
LABEL_44:

    v15 = v49;
    goto LABEL_45;
  }

  v53 = [v15 domain];
  if ([v53 isEqualToString:NSPOSIXErrorDomain])
  {
    v54 = [v15 code];

    if (v54 == 2)
    {
      v63 = [MIInstallableBundle alloc];
      v70 = [(MIInstaller *)self stagingLocation];
      v61 = [(MIInstaller *)self packageFormat];
      v65 = [(MIInstaller *)self identity];
      v59 = [(MIInstaller *)self installationDomain];
      v57 = [(MIInstaller *)self options];
      v71 = v15;
      v27 = v66;
      p_super = [(MIInstallableBundle *)v63 initWithBundle:v17 inStagingRoot:v5 stagingLocation:v70 packageFormat:v61 identity:v65 domain:v59 installOptions:v57 existingBundleContainer:v66 operationType:[(MIInstaller *)self installOperationType] error:&v71];
      v49 = v71;

      v15 = v70;
      goto LABEL_44;
    }
  }

  else
  {
  }

LABEL_24:
  if (a3)
  {
    v33 = v15;
    v34 = 0;
    *a3 = v15;
  }

  else
  {
    v34 = 0;
  }

LABEL_27:

  return v34;
}

- (BOOL)_installProvisioningProfilesFromUserOptionsWithError:(id *)a3
{
  v5 = [(MIInstaller *)self options];
  v6 = [v5 provisioningProfiles];
  if (v6)
  {
    v24 = self;
    v25 = a3;
    [v5 provisioningProfileInstallFailureIsFatal];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v26 = v6;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = MIInstallProfileWithData();
            if (MIIsFatalMISProfileInstallationError())
            {
              v15 = MIInstallerErrorDomain;
              v31[0] = @"LegacyErrorString";
              v31[1] = MILibMISErrorNumberKey;
              v32[0] = @"ApplicationVerificationFailed";
              v16 = [NSNumber numberWithInt:v13];
              v32[1] = v16;
              v17 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
              v18 = [(MIInstaller *)v24 installURL];
              v23 = MIErrorStringForMISError();
              v20 = sub_100010734("[MIInstaller _installProvisioningProfilesFromUserOptionsWithError:]", 1028, v15, 13, 0, v17, @"Failed to install local provisioning profile from user options for %@ : 0x%08x (%@)", v19, v18);

              if (v25)
              {
                v21 = v20;
                v14 = 0;
                *v25 = v20;
              }

              else
              {
                v14 = 0;
              }

              goto LABEL_20;
            }
          }

          else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
          {
            MOLogWrite();
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v27 objects:v33 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v20 = 0;
    v14 = 1;
LABEL_20:
    v6 = v26;
  }

  else
  {
    v20 = 0;
    v14 = 1;
  }

  return v14;
}

- (BOOL)_installProvisioningProfilesAtStagingRootWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100023B80;
  v22 = sub_100023B90;
  v23 = 0;
  v5 = [(MIInstaller *)self stagingRoot];
  v6 = [v5 URLByAppendingPathComponent:@"ProvisioningProfiles" isDirectory:1];

  v7 = [(MIInstaller *)self options];
  v8 = [v7 provisioningProfileInstallFailureIsFatal];

  v9 = +[MIFileManager defaultManager];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100025ACC;
  v16[3] = &unk_100091418;
  v17 = v8;
  v16[4] = self;
  v16[5] = &v18;
  v10 = [v9 enumerateURLsForItemsInDirectoryAtURL:v6 ignoreSymlinks:1 withBlock:v16];

  if (v10)
  {
    v11 = [v10 domain];
    if ([v11 isEqualToString:NSPOSIXErrorDomain])
    {
      v12 = [v10 code];

      if (v12 == 2)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }
  }

LABEL_9:
  v13 = v19[5];
  if (a3 && v13)
  {
    v13 = v13;
    *a3 = v13;
  }

  v14 = v13 == 0;

  _Block_object_dispose(&v18, 8);
  return v14;
}

- (BOOL)_installInstallable:(id)a3 containingSymlink:(BOOL)a4 error:(id *)a5
{
  v5 = a4;
  v7 = a3;
  v113 = 0;
  v114 = &v113;
  v115 = 0x3032000000;
  v116 = sub_100023B80;
  v117 = sub_100023B90;
  v118 = 0;
  v94 = [(MIInstaller *)self installOperationType];
  v112[0] = _NSConcreteStackBlock;
  v112[1] = 3221225472;
  v112[2] = sub_100026A44;
  v112[3] = &unk_100091440;
  v112[4] = self;
  [v7 setProgressBlock:v112];
  if (v94 == 1)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) > 4)
    {
LABEL_7:
      v90 = v7;
      MOLogWrite();
    }
  }

  else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    goto LABEL_7;
  }

  v8 = [v7 bundle];
  v9 = [v8 identifier];

  v10 = [(MIInstaller *)self identity];
  v95 = [v10 personaUniqueString];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v7;
    v14 = [v13 existingBundleContainer];

    if (v14 && v94 == 1)
    {
      v15 = 13;
LABEL_38:

      goto LABEL_39;
    }

    if ([v13 isPatchUpdate])
    {
      v15 = 1;
      goto LABEL_38;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = 2;
      goto LABEL_38;
    }

    if ([v13 isPlaceholderInstall])
    {
      v16 = [v13 existingBundleContainer];
      if (v16)
      {
        v17 = [v13 existingBundleContainer];
        v18 = [v17 bundle];
        v19 = [v18 isPlaceholder];

        if (v19)
        {
          v15 = 3;
          goto LABEL_38;
        }
      }
    }

    if ([v13 isPlaceholderInstall])
    {
      v15 = 4;
      goto LABEL_38;
    }

    v20 = [v13 existingBundleContainer];
    if (v20)
    {
      v21 = [v13 existingBundleContainer];
      if (v21)
      {
        v22 = [v13 existingBundleContainer];
        v23 = [v22 bundle];
        v24 = [v23 isPlaceholder];

        if (v24)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }

      v25 = [v13 existingBundleContainer];
      if (v25)
      {
        v26 = [v13 existingBundleContainer];
        v27 = [v26 bundle];
        if ([v27 isPlaceholder])
        {
        }

        else
        {
          v28 = [(MIInstaller *)self options];
          v29 = [v28 installTargetType];

          if (v29 == 3)
          {
            v15 = 6;
            goto LABEL_38;
          }
        }
      }

      v30 = [v13 existingBundleContainer];
      if (v30)
      {
        v31 = [v13 existingBundleContainer];
        v32 = [v31 bundle];
        v33 = [v32 isPlaceholder];

        if (v33)
        {
          v15 = 8;
        }

        else
        {
          v15 = 7;
        }
      }

      else
      {
        v15 = 8;
      }

      goto LABEL_38;
    }

LABEL_26:
    v15 = 5;
    goto LABEL_38;
  }

  v15 = 0;
LABEL_39:
  _MILogTransactionStep(v15, 1, 1, v9, v95, 0, v11, v12, v91);
  v34 = mach_absolute_time();
  if (v5)
  {
    v35 = +[MIFileManager defaultManager];
    v36 = [v7 bundle];
    v37 = [v36 bundleURL];
    v38 = v114;
    obj = v114[5];
    v39 = [v35 validateSymlinksInURLDoNotEscapeURL:v37 error:&obj];
    objc_storeStrong(v38 + 5, obj);

    if ((v39 & 1) == 0)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v56 = [v7 bundle];
        v57 = [v56 bundleURL];
        v92 = [v57 path];
        MOLogWrite();
      }

      v48 = 0;
      goto LABEL_121;
    }
  }

  v42 = objc_autoreleasePoolPush();
  if (qword_1000A9650 != -1)
  {
    sub_100057E20();
  }

  v43 = qword_1000A9648;
  if (os_signpost_enabled(v43))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PreflightAndPatch", "Start preflighting and patching", buf, 2u);
  }

  v44 = v114 + 5;
  v110 = v114[5];
  v45 = [v7 performPreflightWithError:&v110];
  objc_storeStrong(v44, v110);
  if (v45)
  {
    [(MIInstaller *)self setPreflightAndPatchTime:(mach_absolute_time() - v34) * qword_1000A9728 / HIDWORD(qword_1000A9728)];
    if (qword_1000A9650 != -1)
    {
      sub_100057E20();
    }

    v46 = qword_1000A9648;
    if (os_signpost_enabled(v46))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PreflightAndPatch", "End preflighting and patching [succeeded]", buf, 2u);
    }

    v47 = 0;
  }

  else
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }

    if (qword_1000A9650 != -1)
    {
      sub_100057E20();
    }

    v46 = qword_1000A9648;
    if (os_signpost_enabled(v46))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PreflightAndPatch", "End preflighting and patching [failed]", buf, 2u);
    }

    v47 = 14;
  }

  objc_autoreleasePoolPop(v42);
  v48 = 0;
  if (v47 != 14)
  {
    v49 = mach_absolute_time();
    v50 = objc_autoreleasePoolPush();
    if (qword_1000A9650 != -1)
    {
      sub_100057E20();
    }

    v51 = qword_1000A9648;
    if (os_signpost_enabled(v51))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Verification", "Start code sign verification", buf, 2u);
    }

    v52 = v114 + 5;
    v109 = v114[5];
    v53 = [v7 performVerificationWithError:&v109];
    objc_storeStrong(v52, v109);
    if (v53)
    {
      [(MIInstaller *)self setVerificationTime:(mach_absolute_time() - v49) * qword_1000A9728 / HIDWORD(qword_1000A9728)];
      if (qword_1000A9650 != -1)
      {
        sub_100057E20();
      }

      v54 = qword_1000A9648;
      if (os_signpost_enabled(v54))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v54, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Verification", "End code sign verification [succeeded]", buf, 2u);
      }

      v55 = 0;
    }

    else
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        MOLogWrite();
      }

      if (qword_1000A9650 != -1)
      {
        sub_100057E20();
      }

      v54 = qword_1000A9648;
      if (os_signpost_enabled(v54))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v54, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Verification", "End code sign verification [failed]", buf, 2u);
      }

      v55 = 14;
    }

    objc_autoreleasePoolPop(v50);
    v48 = 0;
    if (v55 != 14)
    {
      v58 = objc_autoreleasePoolPush();
      v59 = v114 + 5;
      v108 = v114[5];
      v60 = [v7 performInstallationWithError:&v108];
      objc_storeStrong(v59, v108);
      if (v60)
      {
        v61 = 0;
      }

      else
      {
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          MOLogWrite();
        }

        v61 = 14;
      }

      objc_autoreleasePoolPop(v58);
      v48 = 0;
      if (v61 != 14)
      {
        v62 = objc_autoreleasePoolPush();
        v63 = v114 + 5;
        v107 = v114[5];
        v64 = [v7 postFlightInstallationWithError:&v107];
        objc_storeStrong(v63, v107);
        if (v64)
        {
          v65 = 0;
        }

        else
        {
          if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
          {
            MOLogWrite();
          }

          v65 = 14;
        }

        objc_autoreleasePoolPop(v62);
        v48 = 0;
        if (v65 != 14)
        {
          v66 = objc_autoreleasePoolPush();
          v67 = v114 + 5;
          if (v94 == 1)
          {
            v106 = v114[5];
            v68 = [v7 stageBackgroundUpdateWithError:&v106];
            objc_storeStrong(v67, v106);
            stagedUpdateMetadata = self->_stagedUpdateMetadata;
            self->_stagedUpdateMetadata = v68;

            if (self->_stagedUpdateMetadata)
            {
              v70 = [(MIInstaller *)self lockedIdentifiers];

              if (v70)
              {
                v71 = [(MIInstaller *)self lockedIdentifiers];
                sub_100054780(v71);

                [(MIInstaller *)self setLockedIdentifiers:0];
              }

              v72 = 43;
LABEL_108:
              objc_autoreleasePoolPop(v66);
              v48 = 0;
              if (v72 != 43)
              {
                if (v72 == 14)
                {
                  goto LABEL_121;
                }

                v74 = objc_autoreleasePoolPush();
                v75 = v114;
                v104 = v114[5];
                v48 = [v7 launchServicesBundleRecordsWithError:&v104];
                objc_storeStrong(v75 + 5, v104);
                if (v48)
                {
                  v76 = 0;
                }

                else
                {
                  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
                  {
                    v92 = v114[5];
                    MOLogWrite();
                  }

                  v76 = 14;
                }

                objc_autoreleasePoolPop(v74);
                if (v76 == 14)
                {
                  goto LABEL_121;
                }

                v77 = [(MIInstaller *)self lockedIdentifiers];

                if (v77)
                {
                  v78 = [(MIInstaller *)self lockedIdentifiers];
                  sub_100054780(v78);

                  [(MIInstaller *)self setLockedIdentifiers:0];
                }

                v79 = [(MIInstaller *)self client];
                [v79 releaseTerminationAssertion];

                [(MIInstaller *)self setTerminationAssertionReleased:1];
                *buf = 0;
                v101 = buf;
                v102 = 0x2020000000;
                v103 = 0;
                v80 = sub_10000998C();
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_100026A54;
                block[3] = &unk_100091468;
                v81 = v7;
                v97 = v81;
                v98 = &v113;
                v99 = buf;
                dispatch_sync(v80, block);

                if (v101[24])
                {

                  _Block_object_dispose(buf, 8);
                  goto LABEL_121;
                }

                v84 = [v81 recordPromise];
                recordPromise = self->_recordPromise;
                self->_recordPromise = v84;

                _Block_object_dispose(buf, 8);
              }

              if ([v48 count])
              {
                v86 = v48;
              }

              else
              {
                v86 = &__NSArray0__struct;
              }

              receipt = self->_receipt;
              self->_receipt = v86;

              v82 = 1;
              _MILogTransactionStep(v15, 2, 1, v9, v95, 0, v88, v89, v92);
              goto LABEL_126;
            }
          }

          else
          {
            v105 = v114[5];
            v73 = [v7 finalizeInstallationWithError:&v105];
            objc_storeStrong(v67, v105);
            if (v73)
            {
              v72 = 0;
              goto LABEL_108;
            }

            if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
            {
              MOLogWrite();
            }
          }

          v72 = 14;
          goto LABEL_108;
        }
      }
    }
  }

LABEL_121:
  if (v9 && v15)
  {
    _MILogTransactionStep(v15, 2, 0, v9, v95, 0, v40, v41, v92);
  }

  v82 = 0;
  if (a5)
  {
    *a5 = v114[5];
  }

LABEL_126:

  _Block_object_dispose(&v113, 8);
  return v82 & 1;
}

- (void)_logOperationCompletionWithStartTime:(unint64_t)a3 distributorID:(id)a4
{
  v11 = a4;
  v5 = [(MIInstaller *)self options];
  v6 = [(MIInstaller *)self identity];
  v7 = [v6 bundleID];

  mach_absolute_time();
  if ([(MIInstaller *)self installOperationType]!= 1)
  {
    if ([(MIInstaller *)self installOperationType]== 2)
    {
      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
      {
        goto LABEL_14;
      }

      v8 = [v5 installTypeSummaryString];
    }

    else
    {
      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
      {
        goto LABEL_14;
      }

      v8 = [v5 installTypeSummaryString];
      [(MIInstaller *)self stagingTime];
      [(MIInstaller *)self waitingTime];
      [(MIInstaller *)self preflightAndPatchTime];
      [(MIInstaller *)self verificationTime];
    }

    MOLogWrite();
    goto LABEL_13;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    v8 = [v5 installTypeSummaryString];
    [(MIInstaller *)self stagingTime];
    [(MIInstaller *)self waitingTime];
    [(MIInstaller *)self preflightAndPatchTime];
    [(MIInstaller *)self verificationTime];
    v9 = [(MIInstaller *)self stagedUpdateMetadata];
    v10 = [v9 stagedIdentifier];
    MOLogWrite();

LABEL_13:
  }

LABEL_14:
}

- (BOOL)performInstallationWithError:(id *)a3
{
  v60 = 0;
  v5 = mach_absolute_time();
  v6 = +[MIDaemonConfiguration sharedInstance];
  v52 = [v6 installationBlacklist];

  v7 = [(MIInstaller *)self installOperationType];
  if (v7 == 1)
  {
    if (qword_1000A9650 != -1)
    {
      sub_100057E48();
    }

    v8 = qword_1000A9648;
    if (os_signpost_enabled(qword_1000A9648))
    {
      *buf = 0;
      v9 = "StageUpdate";
      v10 = "Start update staging";
LABEL_10:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, v9, v10, buf, 2u);
    }
  }

  else
  {
    if (qword_1000A9650 != -1)
    {
      sub_100057E48();
    }

    v8 = qword_1000A9648;
    if (os_signpost_enabled(qword_1000A9648))
    {
      *buf = 0;
      v9 = "Install";
      v10 = "Start installation";
      goto LABEL_10;
    }
  }

  if (qword_1000A9650 != -1)
  {
    sub_100057E20();
  }

  v11 = qword_1000A9648;
  if (os_signpost_enabled(qword_1000A9648))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Stage", "Start staging", buf, 2u);
  }

  v59 = 0;
  v12 = [(MIInstaller *)self _takeOwnershipOfInstallableContainingSymlink:&v60 error:&v59];
  v13 = v59;
  if ((v12 & 1) == 0)
  {
    if (qword_1000A9650 != -1)
    {
      sub_100057E20();
    }

    v23 = qword_1000A9648;
    if (!os_signpost_enabled(qword_1000A9648))
    {
      goto LABEL_33;
    }

    *buf = 0;
    goto LABEL_32;
  }

  v51 = a3;
  if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
  {
    v14 = [(MIInstaller *)self installURL];
    v50 = [v14 path];
    MOLogWrite();
  }

  v58 = v13;
  v15 = [(MIInstaller *)self _setupPackageStateWithError:&v58, v50];
  v16 = v58;

  if ((v15 & 1) == 0)
  {
    if (qword_1000A9650 != -1)
    {
      sub_100057E20();
    }

    v25 = qword_1000A9648;
    if (os_signpost_enabled(qword_1000A9648))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Stage", "End staging [failed]", buf, 2u);
    }

    v19 = 0;
    goto LABEL_39;
  }

  [(MIInstaller *)self _fireCallbackWithStatus:@"CreatingStagingDirectory" percentComplete:5];
  [(MIInstaller *)self _fireCallbackWithStatus:@"ExtractingPackage" percentComplete:15];
  v57 = v16;
  v17 = [(MIInstaller *)self _extractPackageContainedSymlink:&v60 withError:&v57];
  v13 = v57;

  if ((v17 & 1) == 0)
  {
    a3 = v51;
    if (qword_1000A9650 != -1)
    {
      sub_100057E20();
    }

    v23 = qword_1000A9648;
    if (!os_signpost_enabled(qword_1000A9648))
    {
      goto LABEL_33;
    }

    *buf = 0;
LABEL_32:
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Stage", "End staging [failed]", buf, 2u);
LABEL_33:
    v19 = 0;
    v21 = 0;
    v24 = 0;
    goto LABEL_50;
  }

  [(MIInstaller *)self _fireCallbackWithStatus:@"InspectingPackage" percentComplete:20];
  if (qword_1000A9650 != -1)
  {
    sub_100057E20();
  }

  v18 = qword_1000A9648;
  if (os_signpost_enabled(qword_1000A9648))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Stage", "End staging [succeeded]", buf, 2u);
  }

  [(MIInstaller *)self setStagingTime:(mach_absolute_time() - v5) * qword_1000A9728 / HIDWORD(qword_1000A9728)];
  v56 = v13;
  v19 = [(MIInstaller *)self _discoverInstallableWithError:&v56];
  v16 = v56;

  if (!v19)
  {
LABEL_39:
    v21 = 0;
    v24 = 0;
    v13 = v16;
    a3 = v51;
    goto LABEL_50;
  }

  v20 = [(MIInstaller *)self lockedIdentifiers];
  v21 = [NSSet setWithArray:v20];

  if ([v52 intersectsSet:v21])
  {
    v13 = sub_100010734("[MIInstaller performInstallationWithError:]", 1368, MIInstallerErrorDomain, 7, 0, &off_10009C2E0, @"Found blacklisted app in identifiers to be installed: %@", v22, v21);

LABEL_48:
    v24 = 0;
    goto LABEL_49;
  }

  v55 = v16;
  v26 = [(MIInstaller *)self _installProvisioningProfilesAtStagingRootWithError:&v55];
  v13 = v55;

  if (!v26)
  {
    goto LABEL_48;
  }

  v54 = v13;
  v27 = [(MIInstaller *)self _installProvisioningProfilesFromUserOptionsWithError:&v54];
  v28 = v54;

  if (!v27)
  {
    v24 = 0;
    v13 = v28;
    goto LABEL_49;
  }

  v53 = v28;
  v29 = [(MIInstaller *)self _installInstallable:v19 containingSymlink:v60 error:&v53];
  v13 = v53;

  if (!v29)
  {
    goto LABEL_48;
  }

  v30 = [v19 installedDistributorID];
  [(MIInstaller *)self _logOperationCompletionWithStartTime:v5 distributorID:v30];

  v24 = 1;
LABEL_49:
  a3 = v51;
LABEL_50:
  if (v7 == 1)
  {
    if (qword_1000A9650 != -1)
    {
      sub_100057E20();
    }

    v31 = qword_1000A9648;
    if (os_signpost_enabled(qword_1000A9648))
    {
      v32 = "failed";
      if (v24)
      {
        v32 = "succeeded";
      }

      *buf = 136315138;
      v62 = v32;
      v33 = "StageUpdate";
      v34 = "End staging update [%s]";
LABEL_63:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, v33, v34, buf, 0xCu);
    }
  }

  else
  {
    if (qword_1000A9650 != -1)
    {
      sub_100057E20();
    }

    v31 = qword_1000A9648;
    if (os_signpost_enabled(qword_1000A9648))
    {
      v35 = "failed";
      if (v24)
      {
        v35 = "succeeded";
      }

      *buf = 136315138;
      v62 = v35;
      v33 = "Install";
      v34 = "End installation [%s]";
      goto LABEL_63;
    }
  }

  v36 = [(MIInstaller *)self lockedIdentifiers];

  if (v36)
  {
    v37 = [(MIInstaller *)self lockedIdentifiers];
    sub_100054780(v37);

    [(MIInstaller *)self setLockedIdentifiers:0];
  }

  v38 = [(MIInstaller *)self client];
  if (v38)
  {
    v39 = v38;
    v40 = [(MIInstaller *)self terminationAssertionReleased];

    if ((v40 & 1) == 0)
    {
      v41 = [(MIInstaller *)self client];
      [v41 releaseTerminationAssertion];

      [(MIInstaller *)self setTerminationAssertionReleased:1];
    }
  }

  v42 = [(MIInstaller *)self stagingRoot];

  if (v42)
  {
    v44 = +[MIFileManager defaultManager];
    v45 = [(MIInstaller *)self stagingRoot];
    [v44 removeItemAtURL:v45 error:0];
  }

  if (v13)
  {
    v46 = 1;
  }

  else
  {
    v46 = v24;
  }

  if ((v46 & 1) == 0)
  {
    v13 = sub_100010734("[MIInstaller performInstallationWithError:]", 1415, MIInstallerErrorDomain, 1, 0, 0, @"No error was specified but the operation failed.", v43, v50);
  }

  if (a3)
  {
    v47 = v24;
  }

  else
  {
    v47 = 1;
  }

  if ((v47 & 1) == 0)
  {
    v48 = v13;
    *a3 = v13;
  }

  return v24;
}

- (BOOL)applyStagedUpdateWithJournalEntry:(id)a3 error:(id *)a4
{
  v6 = a3;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = sub_100023B80;
  v66 = sub_100023B90;
  v67 = 0;
  v7 = [(MIInstaller *)self identity];
  v8 = [v7 bundleID];
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_100027C64;
  v61[3] = &unk_100091440;
  v61[4] = self;
  v9 = objc_retainBlock(v61);
  v46 = mach_absolute_time();
  if (qword_1000A9650 != -1)
  {
    sub_100057E20();
  }

  v10 = qword_1000A9648;
  if (os_signpost_enabled(qword_1000A9648))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "InstallStagedUpdate", "Start Applying Staged Update", buf, 2u);
  }

  v49 = [v7 personaUniqueString];
  if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
  {
    v43 = v6;
    MOLogWrite();
  }

  _MILogTransactionStep(14, 1, 1, v8, v49, 0, v11, v12, v43);
  [v6 setProgressBlock:v9];
  v13 = v63;
  obj = v63[5];
  v48 = [(MIInstaller *)self _identifiersToLockBundleIdentifier:v8 error:&obj];
  objc_storeStrong(v13 + 5, obj);
  if (!v48)
  {
    v47 = 0;
    goto LABEL_16;
  }

  [(MIInstaller *)self _writeLockIdentifiers:?];
  v14 = v63;
  v59 = v63[5];
  v15 = [v6 makeStagedBackgroundUpdateLive:&v59];
  objc_storeStrong(v14 + 5, v59);
  if (v15)
  {
    v47 = [v6 bundleRecordsToRegister];
    v17 = [(MIInstaller *)self lockedIdentifiers];

    if (v17)
    {
      v18 = [(MIInstaller *)self lockedIdentifiers];
      sub_100054780(v18);

      [(MIInstaller *)self setLockedIdentifiers:0];
    }

    v19 = [(MIInstaller *)self client];
    [v19 releaseTerminationAssertion];

    [(MIInstaller *)self setTerminationAssertionReleased:1];
    context = objc_autoreleasePoolPush();
    v20 = v9;
    v21 = v6;
    v22 = v8;
    v23 = a4;
    v24 = v7;
    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v58 = 0;
    v25 = sub_10000998C();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100027C74;
    block[3] = &unk_100091468;
    v26 = v21;
    v52 = v26;
    v53 = &v62;
    v54 = &v55;
    dispatch_sync(v25, block);

    v7 = v24;
    a4 = v23;
    v8 = v22;
    v6 = v21;
    v9 = v20;
    LOBYTE(v20) = *(v56 + 24);

    _Block_object_dispose(&v55, 8);
    objc_autoreleasePoolPop(context);
    if ((v20 & 1) == 0)
    {
      [(MIInstaller *)self _logOperationCompletionWithStartTime:v46 distributorID:@"Unknown"];
      v27 = [v26 recordPromise];
      recordPromise = self->_recordPromise;
      self->_recordPromise = v27;

      if ([v47 count])
      {
        v29 = v47;
        receipt = self->_receipt;
        v47 = v29;
        self->_receipt = v29;
      }

      else
      {
        receipt = self->_receipt;
        self->_receipt = &__NSArray0__struct;
      }

      goto LABEL_18;
    }

LABEL_16:
    v15 = 0;
    goto LABEL_19;
  }

  v31 = sub_100010734("[MIInstaller applyStagedUpdateWithJournalEntry:error:]", 1458, MIInstallerErrorDomain, 4, 0, 0, @"Failed to make staged background update live for app identity: %@", v16, v7);
  v47 = 0;
  receipt = v63[5];
  v63[5] = v31;
LABEL_18:

LABEL_19:
  if (qword_1000A9650 != -1)
  {
    sub_100057E20();
  }

  v32 = qword_1000A9648;
  if (os_signpost_enabled(qword_1000A9648))
  {
    v35 = "failed";
    if (v15)
    {
      v35 = "succeeded";
    }

    *buf = 136315138;
    v69 = v35;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "InstallStagedUpdate", "End staging update installation [%s]", buf, 0xCu);
  }

  _MILogTransactionStep(14, 2, v15, v8, v49, 0, v33, v34, v44);
  if ((v15 & 1) == 0)
  {
    v36 = [(MIInstaller *)self lockedIdentifiers];

    if (v36)
    {
      v37 = [(MIInstaller *)self lockedIdentifiers];
      sub_100054780(v37);

      [(MIInstaller *)self setLockedIdentifiers:0];
    }

    if (![(MIInstaller *)self terminationAssertionReleased])
    {
      v38 = [(MIInstaller *)self client];
      [v38 releaseTerminationAssertion];
    }

    v39 = v9;
    if (v6)
    {
      v50 = 0;
      v40 = [0 purgeJournalEntry:v6 withError:&v50];
      v41 = v50;
      if ((v40 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
      {
        MOLogWrite();
      }
    }

    else
    {
      v41 = 0;
    }

    v9 = v39;
    if (a4)
    {
      *a4 = v63[5];
    }
  }

  _Block_object_dispose(&v62, 8);
  return v15;
}

@end