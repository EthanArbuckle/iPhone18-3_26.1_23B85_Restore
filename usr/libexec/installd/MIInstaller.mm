@interface MIInstaller
+ (id)installerForURL:(id)l identity:(id)identity domain:(unint64_t)domain options:(id)options operationType:(unint64_t)type forClient:(id)client;
- (BOOL)_extractPackageContainedSymlink:(BOOL *)symlink withError:(id *)error;
- (BOOL)_installInstallable:(id)installable containingSymlink:(BOOL)symlink error:(id *)error;
- (BOOL)_installProvisioningProfilesAtStagingRootWithError:(id *)error;
- (BOOL)_installProvisioningProfilesFromUserOptionsWithError:(id *)error;
- (BOOL)_setupPackageStateWithError:(id *)error;
- (BOOL)_takeOwnershipOfInstallableContainingSymlink:(BOOL *)symlink error:(id *)error;
- (BOOL)_writeLockBundle:(id)bundle error:(id *)error;
- (BOOL)applyStagedUpdateWithJournalEntry:(id)entry error:(id *)error;
- (BOOL)performInstallationWithError:(id *)error;
- (BOOL)removeAndReportAbandonedContainersWithIncorrectPersonaForBundleContainer:(id)container withError:(id *)error;
- (MIInstaller)initWithURL:(id)l identity:(id)identity domain:(unint64_t)domain options:(id)options operationType:(unint64_t)type forClient:(id)client;
- (id)_bundleInDirectory:(id)directory withBundleID:(id)d platformHint:(unsigned int)hint error:(id *)error;
- (id)_discoverInstallableWithError:(id *)error;
- (id)_existingBundleContainerForBundle:(id)bundle error:(id *)error;
- (id)_identifiersToLockBundleIdentifier:(id)identifier error:(id *)error;
- (id)_manifestPathForBase:(id)base withIdentifier:(id)identifier patchType:(unsigned __int8 *)type error:(id *)error;
- (id)_patchUpdateInstallableForBundle:(id)bundle manifestPath:(id)path existingBundleContainer:(id)container patchType:(unsigned __int8)type error:(id *)error;
- (void)_fireCallbackWithStatus:(id)status;
- (void)_logOperationCompletionWithStartTime:(unint64_t)time distributorID:(id)d;
- (void)_writeLockIdentifiers:(id)identifiers;
- (void)dealloc;
@end

@implementation MIInstaller

- (MIInstaller)initWithURL:(id)l identity:(id)identity domain:(unint64_t)domain options:(id)options operationType:(unint64_t)type forClient:(id)client
{
  lCopy = l;
  identityCopy = identity;
  optionsCopy = options;
  clientCopy = client;
  v23.receiver = self;
  v23.super_class = MIInstaller;
  v18 = [(MIInstaller *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_installURL, l);
    objc_storeStrong(&v19->_identity, identity);
    domainCopy = 2;
    if (domain != 1)
    {
      domainCopy = domain;
    }

    v19->_installationDomain = domainCopy;
    objc_storeStrong(&v19->_options, options);
    objc_storeStrong(&v19->_client, client);
    v19->_installOperationType = type;
  }

  return v19;
}

- (void)dealloc
{
  lockedIdentifiers = [(MIInstaller *)self lockedIdentifiers];

  if (lockedIdentifiers)
  {
    lockedIdentifiers2 = [(MIInstaller *)self lockedIdentifiers];
    sub_100054780(lockedIdentifiers2);

    [(MIInstaller *)self setLockedIdentifiers:0];
  }

  client = [(MIInstaller *)self client];
  if (client)
  {
    v6 = client;
    terminationAssertionReleased = [(MIInstaller *)self terminationAssertionReleased];

    if ((terminationAssertionReleased & 1) == 0)
    {
      client2 = [(MIInstaller *)self client];
      [client2 releaseTerminationAssertion];

      [(MIInstaller *)self setTerminationAssertionReleased:1];
    }
  }

  v9.receiver = self;
  v9.super_class = MIInstaller;
  [(MIInstaller *)&v9 dealloc];
}

+ (id)installerForURL:(id)l identity:(id)identity domain:(unint64_t)domain options:(id)options operationType:(unint64_t)type forClient:(id)client
{
  clientCopy = client;
  optionsCopy = options;
  identityCopy = identity;
  lCopy = l;
  v17 = [objc_alloc(objc_opt_class()) initWithURL:lCopy identity:identityCopy domain:domain options:optionsCopy operationType:type forClient:clientCopy];

  return v17;
}

- (void)_fireCallbackWithStatus:(id)status
{
  statusCopy = status;
  client = [(MIInstaller *)self client];
  [client sendProgressWithStatus:statusCopy];
}

- (BOOL)_takeOwnershipOfInstallableContainingSymlink:(BOOL *)symlink error:(id *)error
{
  v29 = 0;
  v7 = +[MIHelperServiceFrameworkClient sharedInstance];
  identity = [(MIInstaller *)self identity];
  location = [identity location];
  v28 = 0;
  v10 = [v7 stagingLocationForInstallLocation:location withinStagingSubsytem:1 usingUniqueName:0 error:&v28];
  v11 = v28;

  if (!v10)
  {
    v16 = v11;
    if (!error)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v12 = +[MIHelperServiceClient sharedInstance];
  installURL = [(MIInstaller *)self installURL];
  options = [(MIInstaller *)self options];
  v27 = v11;
  v15 = [v12 stageItemAtURL:installURL toStagingLocation:v10 options:options containedSymlink:&v29 error:&v27];
  v16 = v27;

  if (!v15)
  {
    domain = [v16 domain];
    v19 = MIInstallerErrorDomain;
    v20 = [domain isEqualToString:MIInstallerErrorDomain];

    if (v20)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        MOLogWrite();
      }

      if (error)
      {
        goto LABEL_13;
      }

LABEL_15:
      v17 = 0;
      goto LABEL_16;
    }

    installURL2 = [(MIInstaller *)self installURL];
    path = [installURL2 path];
    v25 = sub_100010734("[MIInstaller _takeOwnershipOfInstallableContainingSymlink:error:]", 205, v19, 103, v16, 0, @"Failed to transfer ownership of path %@ to installd", v24, path);

    v16 = v25;
    if (!error)
    {
      goto LABEL_15;
    }

LABEL_13:
    v21 = v16;
    v17 = 0;
    *error = v16;
    goto LABEL_16;
  }

  if (symlink)
  {
    *symlink = v29;
  }

  [(MIInstaller *)self setInstallURL:v15];
  [(MIInstaller *)self setStagingLocation:v10];

  v17 = 1;
LABEL_16:

  return v17;
}

- (BOOL)_setupPackageStateWithError:(id *)error
{
  memset(&v60, 0, sizeof(v60));
  installURL = [(MIInstaller *)self installURL];
  if (lstat([installURL fileSystemRepresentation], &v60))
  {
    v6 = MIInstallerErrorDomain;
    path2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
    v68 = MIPathArgumentErrorKey;
    installURL2 = [(MIInstaller *)self installURL];
    path = [installURL2 path];
    v69 = path;
    v10 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
    fileSystemRepresentation = [installURL fileSystemRepresentation];
    v12 = __error();
    strerror(*v12);
    stagingRoot = sub_100010734("[MIInstaller _setupPackageStateWithError:]", 239, v6, 3, path2, v10, @"Can't stat %s: %s", v13, fileSystemRepresentation);

LABEL_28:
    goto LABEL_29;
  }

  v15 = installURL;
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
    path2 = [v15 path];
    v66[1] = @"LegacyErrorString";
    v67[0] = path2;
    v67[1] = @"PackageInspectionFailed";
    installURL2 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:2];
    fileSystemRepresentation2 = [v15 fileSystemRepresentation];
    sub_100010734("[MIInstaller _setupPackageStateWithError:]", 246, v17, 3, 0, installURL2, @"Archive we've been requested to install at %s is an incomplete download.", v18, fileSystemRepresentation2);
    stagingRoot = LABEL_27:;
    goto LABEL_28;
  }

  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    fileSystemRepresentation3 = [v15 fileSystemRepresentation];
    v20 = __error();
    v53 = fileSystemRepresentation3;
    v54 = strerror(*v20);
    fileSystemRepresentation7 = "com.apple.streamingzip.incomplete_extraction";
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
      path2 = [v15 path];
      v63 = path2;
      installURL2 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      sub_100010734("[MIInstaller _setupPackageStateWithError:]", 293, v33, 3, 0, installURL2, @"Unrecognized package file type 0%o", v34, v60.st_mode);
      goto LABEL_27;
    }

    if (!v60.st_size)
    {
      v37 = MIInstallerErrorDomain;
      v64[0] = MIPathArgumentErrorKey;
      path2 = [v15 path];
      v64[1] = @"LegacyErrorString";
      v65[0] = path2;
      v65[1] = @"PackageExtractionFailed";
      installURL2 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:2];
      fileSystemRepresentation4 = [v15 fileSystemRepresentation];
      sub_100010734("[MIInstaller _setupPackageStateWithError:]", 259, v37, 3, 0, installURL2, @"Archive we've been requested to install at %s is 0 bytes. That can't be a valid ipa.", v38, fileSystemRepresentation4);
      goto LABEL_27;
    }

    v22 = v15;
    value = 0;
    v23 = open([v22 fileSystemRepresentation], 256);
    if (v23 < 0)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        fileSystemRepresentation5 = [v22 fileSystemRepresentation];
        v43 = __error();
        fileSystemRepresentation7 = fileSystemRepresentation5;
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
        [(MIInstaller *)self setPackageFormat:1, fileSystemRepresentation7, v53, v54, v55, v56, v57, v58, v59];
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
      fileSystemRepresentation7 = value;
      v53 = SBYTE1(value);
    }

    else
    {
      v44 = v25;
      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
      {
        goto LABEL_43;
      }

      fileSystemRepresentation6 = [v22 fileSystemRepresentation];
      v46 = __error();
      v54 = fileSystemRepresentation6;
      v55 = strerror(*v46);
      fileSystemRepresentation7 = 4;
      v53 = v44;
    }

    MOLogWrite();
LABEL_43:
    close(v24);
LABEL_44:

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      fileSystemRepresentation7 = [v22 fileSystemRepresentation];
      MOLogWrite();
    }

    goto LABEL_47;
  }

  v26 = [v15 URLByAppendingPathComponent:@"Payload" isDirectory:1];
  v27 = [v15 URLByAppendingPathComponent:@"AssetData" isDirectory:1];
  options = [(MIInstaller *)self options];
  isSystemAppInstall = [options isSystemAppInstall];

  if (isSystemAppInstall && (+[MIFileManager defaultManager](MIFileManager, "defaultManager"), v30 = objc_claimAutoreleasedReturnValue(), v31 = [v30 itemExistsAtURL:v27], v30, (v31 & 1) != 0))
  {
    v32 = 4;
  }

  else
  {
    v35 = [MIFileManager defaultManager:fileSystemRepresentation7];
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

  [(MIInstaller *)self setPackageFormat:v32, fileSystemRepresentation7];

LABEL_48:
  uRLByDeletingLastPathComponent = [v15 URLByDeletingLastPathComponent];
  [(MIInstaller *)self setStagingRoot:uRLByDeletingLastPathComponent];

  stagingRoot = [(MIInstaller *)self stagingRoot];

  if (stagingRoot)
  {
    stagingRoot2 = [(MIInstaller *)self stagingRoot];
    v40 = 1;
    v49 = [stagingRoot2 URLByAppendingPathComponent:@"extracted" isDirectory:1];
    [(MIInstaller *)self setStagingURL:v49];

    stagingRoot = 0;
    goto LABEL_32;
  }

LABEL_29:
  if (error)
  {
    v39 = stagingRoot;
    v40 = 0;
    *error = stagingRoot;
  }

  else
  {
    v40 = 0;
  }

LABEL_32:

  return v40;
}

- (BOOL)_extractPackageContainedSymlink:(BOOL *)symlink withError:(id *)error
{
  v7 = +[MIFileManager defaultManager];
  if ([(MIInstaller *)self packageFormat]!= 1)
  {
    stagingURL = [(MIInstaller *)self stagingURL];
    if ([(MIInstaller *)self packageFormat]== 2)
    {
      installURL = [(MIInstaller *)self installURL];
      pathExtension = [installURL pathExtension];

      v24 = [pathExtension isEqualToString:@"app"];
      installURL2 = [(MIInstaller *)self installURL];
      lastPathComponent = [installURL2 lastPathComponent];
      v27 = lastPathComponent;
      if ((v24 & 1) == 0)
      {
        v28 = [lastPathComponent stringByAppendingString:@".app"];

        v27 = v28;
      }

      v29 = [stagingURL URLByAppendingPathComponent:v27 isDirectory:1];

      stagingURL2 = [(MIInstaller *)self stagingURL];
      v50 = 0;
      v31 = [v7 createDirectoryAtURL:stagingURL2 withIntermediateDirectories:0 mode:493 error:&v50];
      v32 = v50;

      if ((v31 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
      {
        stagingURL3 = [(MIInstaller *)self stagingURL];
        v46 = v32;
        MOLogWrite();
      }

      stagingURL = v29;
    }

    else
    {
      v32 = 0;
    }

    if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
    {
      installURL3 = [(MIInstaller *)self installURL];
      path = [installURL3 path];
      [stagingURL path];
      v46 = stagingURL3 = path;
      MOLogWrite();
    }

    v37 = [(MIInstaller *)self installURL:stagingURL3];
    v49 = v32;
    v38 = [v7 moveItemAtURL:v37 toURL:stagingURL error:&v49];
    v11 = v49;

    if (v38)
    {
      v20 = 1;
      goto LABEL_31;
    }

    v39 = MIInstallerErrorDomain;
    installURL4 = [(MIInstaller *)self installURL];
    path2 = [installURL4 path];
    path3 = [stagingURL path];
    v21 = sub_100010734("[MIInstaller _extractPackageContainedSymlink:withError:]", 357, v39, 5, v11, &off_10009C1C8, @"Failed to move %@ to %@", v42, path2);

    goto LABEL_29;
  }

  installURL5 = [(MIInstaller *)self installURL];
  stagingURL4 = [(MIInstaller *)self stagingURL];
  v53 = 0;
  v10 = [MIBOMWrapper extractZipArchiveAtURL:installURL5 toURL:stagingURL4 withError:&v53];
  v11 = v53;

  if (v10)
  {
    installURL6 = [(MIInstaller *)self installURL];
    v52 = 0;
    v13 = [v7 removeItemAtURL:installURL6 error:&v52];
    stagingURL = v52;

    if ((v13 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
    {
      installURL7 = [(MIInstaller *)self installURL];
      stagingURL3 = [installURL7 path];
      v46 = stagingURL;
      MOLogWrite();
    }

    v16 = [(MIInstaller *)self stagingURL:stagingURL3];
    v17 = +[MIDaemonConfiguration sharedInstance];
    v18 = [v17 uid];
    v19 = +[MIDaemonConfiguration sharedInstance];
    v51 = v11;
    v20 = 1;
    LOBYTE(v18) = [v7 standardizeOwnershipAtURL:v16 toUID:v18 GID:objc_msgSend(v19 removeACLs:"gid") setProtectionClass:1 foundSymlink:1 error:{symlink, &v51}];
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
    if (!error)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  stagingURL = [(MIInstaller *)self installURL];
  path4 = [stagingURL path];
  stagingURL5 = [(MIInstaller *)self stagingURL];
  path5 = [stagingURL5 path];
  MOLogWrite();

  v20 = 0;
LABEL_31:

  if (error)
  {
LABEL_32:
    v43 = v11;
    *error = v11;
  }

LABEL_33:

  return v20;
}

- (id)_manifestPathForBase:(id)base withIdentifier:(id)identifier patchType:(unsigned __int8 *)type error:(id *)error
{
  baseCopy = base;
  identifierCopy = identifier;
  v10 = [@"com.apple.deltainstallcommands." stringByAppendingString:identifierCopy];
  v11 = [baseCopy URLByAppendingPathComponent:v10 isDirectory:0];

  v12 = [@"com.apple.parallelpatchinfo." stringByAppendingString:identifierCopy];
  v13 = [baseCopy URLByAppendingPathComponent:v12 isDirectory:0];

  v14 = [@"com.apple.parallelpatcharchive." stringByAppendingString:identifierCopy];
  v15 = [baseCopy URLByAppendingPathComponent:v14 isDirectory:0];

  v16 = +[MIFileManager defaultManager];
  v43 = 0;
  LODWORD(v14) = [v16 itemIsFileAtURL:v15 error:&v43];
  v17 = v43;
  v40 = v11;
  if (v14)
  {
    *type = 4;
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
    errorCopy2 = error;
    goto LABEL_18;
  }

  v42 = 0;
  v20 = [v16 itemIsFileAtURL:v11 error:&v42];
  v21 = v42;
  if (v20)
  {
    *type = 2;
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
    *type = 0;
    domain = [v21 domain];
    if ([domain isEqualToString:NSPOSIXErrorDomain] && objc_msgSend(v21, "code") == 2)
    {
      domain2 = [v23 domain];
      if ([domain2 isEqualToString:NSPOSIXErrorDomain])
      {
        code = [v23 code];

        if (code == 2)
        {
          v25 = sub_1000106F4("[MIInstaller _manifestPathForBase:withIdentifier:patchType:error:]", 397, NSPOSIXErrorDomain, 2, 0, 0, @"No manifest file for application %@ found in %@", v30, identifierCopy);
LABEL_42:
          v18 = 0;
          goto LABEL_17;
        }

LABEL_33:
        domain3 = [v21 domain];
        if ([domain3 isEqualToString:NSPOSIXErrorDomain])
        {
          code2 = [v21 code];

          if (code2 == 2)
          {
            v33 = v23;
          }

          else
          {
            v33 = v21;
          }

          if (code2 == 2)
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

  *type = 3;
  v18 = v19;
  if (!qword_1000A9720)
  {
    v25 = 0;
    goto LABEL_17;
  }

  errorCopy2 = error;
  if (*(qword_1000A9720 + 44) >= 7)
  {
    MOLogWrite();
  }

  v25 = 0;
LABEL_18:
  if (errorCopy2 && !v18)
  {
    v26 = v25;
    *errorCopy2 = v25;
  }

  return v18;
}

- (id)_bundleInDirectory:(id)directory withBundleID:(id)d platformHint:(unsigned int)hint error:(id *)error
{
  directoryCopy = directory;
  dCopy = d;
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
  hintCopy = hint;
  v28 = &v31;
  v13 = dCopy;
  v25 = v13;
  v29 = &v37;
  v14 = directoryCopy;
  v26 = v14;
  v15 = v11;
  v27 = v15;
  v16 = [v12 enumerateURLsForItemsInDirectoryAtURL:v14 ignoreSymlinks:1 withBlock:v24];

  if (v32[5])
  {
LABEL_4:
    v17 = 0;
    if (!error)
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
  if (error)
  {
LABEL_5:
    if (!v17)
    {
      *error = v32[5];
    }
  }

LABEL_7:
  v18 = v17;

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  return v18;
}

- (id)_identifiersToLockBundleIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = objc_opt_new();
  [v7 addObject:identifierCopy];
  options = [(MIInstaller *)self options];
  linkedParentBundleID = [options linkedParentBundleID];

  if (linkedParentBundleID)
  {
    [v7 addObject:linkedParentBundleID];
  }

  sub_100054628(identifierCopy);
  v10 = [MIContainerLinkManager sharedInstanceForDomain:[(MIInstaller *)self installationDomain]];
  v20 = 0;
  v21 = 0;
  v11 = [v10 getLinkedParent:&v21 forChild:identifierCopy error:&v20];
  v12 = v21;
  v13 = v20;
  sub_100054780(identifierCopy);
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
      v18 = identifierCopy;
      v19 = v13;
      MOLogWrite();
    }

    v13 = 0;
  }

  v14 = [v7 copy];
  v15 = v14;
  if (error && !v14)
  {
    v16 = v13;
    *error = v13;
  }

  return v15;
}

- (void)_writeLockIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  [(MIInstaller *)self _fireCallbackWithStatus:@"TakingInstallLock"];
  [(MIInstaller *)self setLockedIdentifiers:identifiersCopy];
  v5 = mach_absolute_time();
  sub_100054630(identifiersCopy);

  v6 = (mach_absolute_time() - v5) * qword_1000A9728 / HIDWORD(qword_1000A9728);

  [(MIInstaller *)self setWaitingTime:v6];
}

- (BOOL)_writeLockBundle:(id)bundle error:(id *)error
{
  identifier = [bundle identifier];
  v11 = 0;
  v7 = [(MIInstaller *)self _identifiersToLockBundleIdentifier:identifier error:&v11];
  v8 = v11;

  if (v7)
  {
    [(MIInstaller *)self _writeLockIdentifiers:v7];
  }

  else if (error)
  {
    v9 = v8;
    *error = v8;
  }

  return v7 != 0;
}

- (BOOL)removeAndReportAbandonedContainersWithIncorrectPersonaForBundleContainer:(id)container withError:(id *)error
{
  containerCopy = container;
  v7 = +[MIDaemonConfiguration sharedInstance];
  deviceHasPersonas = [v7 deviceHasPersonas];

  if (!deviceHasPersonas)
  {
    v17 = 1;
    goto LABEL_55;
  }

  identity = [(MIInstaller *)self identity];
  bundleID = [identity bundleID];
  personaUniqueString = [identity personaUniqueString];
  v11 = +[MIUserManagement sharedInstance];
  v12 = objc_opt_new();
  v13 = +[MIUserManagement sharedInstance];
  v71 = 0;
  v14 = [v13 multiPersonaSADAppBundleIDsWithError:&v71];
  v15 = v71;

  if (!v14)
  {
    obj = 0;
    personaUniqueString3 = 0;
    if (!error)
    {
      goto LABEL_53;
    }

    goto LABEL_7;
  }

  if ([v14 containsObject:bundleID])
  {
    obj = 0;
    personaUniqueString3 = 0;
    v17 = 1;
    goto LABEL_54;
  }

  v57 = v14;
  v58 = v12;
  v70 = v15;
  v19 = [MIContainer allContainersForAllPersonasForIdentifier:bundleID options:2 error:&v70];
  v20 = v70;

  if (!v19)
  {
    v15 = sub_100010734("[MIInstaller removeAndReportAbandonedContainersWithIncorrectPersonaForBundleContainer:withError:]", 609, MIInstallerErrorDomain, 4, v20, 0, @"Failed to query containers for %@", v21, bundleID);
    obj = 0;
    personaUniqueString3 = 0;
    goto LABEL_52;
  }

  errorCopy = error;
  v54 = v11;
  v59 = bundleID;
  v55 = identity;
  v56 = containerCopy;
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
      personaUniqueString2 = [v27 personaUniqueString];
      if (personaUniqueString2 && ([personaUniqueString isEqualToString:personaUniqueString2] & 1) != 0)
      {
        v20 = v26;
        goto LABEL_37;
      }

      v65 = 0;
      v29 = +[MIHelperServiceClient sharedInstance];
      containerURL = [v27 containerURL];
      containerClass = [v27 containerClass];
      v64 = v26;
      v32 = [v29 dataContainer:containerURL ofContainerType:containerClass isEmpty:&v65 error:&v64];
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
      if (personaUniqueString2 || (+[MIGlobalConfiguration sharedInstance](MIGlobalConfiguration, "sharedInstance"), v33 = objc_claimAutoreleasedReturnValue(), [v33 primaryPersonaString], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(personaUniqueString, "isEqualToString:", v34), v34, v33, !v35))
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
    personaUniqueString3 = 0;
    v17 = 1;
    v15 = v20;
    identity = v55;
    containerCopy = v56;
    bundleID = v59;
    v11 = v54;
    v14 = v57;
    goto LABEL_54;
  }

  v38 = [v58 objectAtIndexedSubscript:0];
  personaUniqueString3 = [v38 personaUniqueString];

  containerCopy = v56;
  v11 = v54;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_100057D7C(v59, personaUniqueString3, personaUniqueString);
  }

  error = errorCopy;
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    MOLogWrite();
  }

  v39 = objc_opt_new();
  [(__CFString *)v39 setObject:v59 forKeyedSubscript:@"bundleID"];
  v40 = [NSNumber numberWithBool:v56 == 0];
  [(__CFString *)v39 setObject:v40 forKeyedSubscript:@"isFreshInstall"];

  v41 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v54 personaTypeForPersonaUniqueString:personaUniqueString]);
  [(__CFString *)v39 setObject:v41 forKeyedSubscript:@"requestedPersonaType"];

  v42 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v54 personaTypeForPersonaUniqueString:personaUniqueString3]);
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
    identity = v55;
    bundleID = v59;
    v14 = v57;
    v12 = v58;
    goto LABEL_54;
  }

  v48 = sub_100010734("[MIInstaller removeAndReportAbandonedContainersWithIncorrectPersonaForBundleContainer:withError:]", 658, v44, 4, v15, 0, @"Failed to delete erroneous containers associated with persona %@ for %@", v47, personaUniqueString3);

  v20 = v39;
  v15 = v48;
  identity = v55;
  bundleID = v59;
LABEL_52:

  v14 = v57;
  v12 = v58;
  if (error)
  {
LABEL_7:
    v18 = v15;
    v17 = 0;
    *error = v15;
    goto LABEL_54;
  }

LABEL_53:
  v17 = 0;
LABEL_54:

LABEL_55:
  return v17;
}

- (id)_existingBundleContainerForBundle:(id)bundle error:(id *)error
{
  bundleCopy = bundle;
  installationDomain = [(MIInstaller *)self installationDomain];
  identifier = [bundleCopy identifier];
  if (installationDomain == 3)
  {
    v25 = 0;
    v9 = &v25;
    v10 = [MIBundleContainer privateAppBundleContainerWithIdentifier:identifier createIfNeeded:0 created:0 error:&v25];
  }

  else
  {
    v24 = 0;
    v9 = &v24;
    v10 = [MIBundleContainer appBundleContainerWithIdentifier:identifier createIfNeeded:0 created:0 error:&v24];
  }

  v11 = v10;
  v12 = *v9;

  if (v11)
  {
    bundle = [v11 bundle];

    if (!bundle)
    {
      identifier2 = [bundleCopy identifier];
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v21 = identifier2;
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

      v12 = sub_1000106F4("[MIInstaller _existingBundleContainerForBundle:error:]", 697, MIContainerManagerErrorDomain, 21, 0, 0, @"Deleted exisiting bundle container for %@ because it didn't contain a bundle", v17, identifier2);

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

  if (error && !v11)
  {
    v19 = v12;
    *error = v12;
  }

  return v11;
}

- (id)_patchUpdateInstallableForBundle:(id)bundle manifestPath:(id)path existingBundleContainer:(id)container patchType:(unsigned __int8)type error:(id *)error
{
  typeCopy = type;
  bundleCopy = bundle;
  pathCopy = path;
  containerCopy = container;
  options = [(MIInstaller *)self options];
  installTargetType = [options installTargetType];

  if (!containerCopy)
  {
    v22 = MIInstallerErrorDomain;
    if (typeCopy > 4)
    {
      v23 = @"Unknown";
    }

    else
    {
      v23 = *(&off_1000914A8 + typeCopy);
    }

    identifier = [bundleCopy identifier];
    sub_100010734("[MIInstaller _patchUpdateInstallableForBundle:manifestPath:existingBundleContainer:patchType:error:]", 766, v22, 8, 0, &off_10009C268, @"%@ patch submitted for application %@ that's not installed. Failing.", v26, v23);
    goto LABEL_14;
  }

  bundle = [containerCopy bundle];
  isPlaceholder = [bundle isPlaceholder];

  if (isPlaceholder)
  {
    v20 = MIInstallerErrorDomain;
    if (typeCopy > 4)
    {
      v21 = @"Unknown";
    }

    else
    {
      v21 = *(&off_1000914A8 + typeCopy);
    }

    identifier = [bundleCopy identifier];
    sub_100010734("[MIInstaller _patchUpdateInstallableForBundle:manifestPath:existingBundleContainer:patchType:error:]", 771, v20, 8, 0, &off_10009C290, @"%@ patch submitted for application %@ that's just a placeholder. Failing.", v27, v21);
    v28 = LABEL_14:;

    goto LABEL_15;
  }

  if ((installTargetType & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v40 = [MIInstallableBundle alloc];
    stagingURL = [(MIInstaller *)self stagingURL];
    stagingLocation = [(MIInstaller *)self stagingLocation];
    packageFormat = [(MIInstaller *)self packageFormat];
    identity = [(MIInstaller *)self identity];
    installationDomain = [(MIInstaller *)self installationDomain];
    options2 = [(MIInstaller *)self options];
    v41 = 0;
    LOBYTE(v37) = typeCopy;
    v36 = [(MIInstallableBundle *)v40 initWithBundle:bundleCopy inStagingRoot:stagingURL stagingLocation:stagingLocation packageFormat:packageFormat identity:identity domain:installationDomain installOptions:options2 manifestURL:pathCopy existingBundleContainer:containerCopy patchType:v37 operationType:[(MIInstaller *)self installOperationType] error:&v41];
    v28 = v41;

    v29 = v36;
    if (!error)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (typeCopy > 4)
  {
    v24 = @"Unknown";
  }

  else
  {
    v24 = *(&off_1000914A8 + typeCopy);
  }

  v28 = sub_100010734("[MIInstaller _patchUpdateInstallableForBundle:manifestPath:existingBundleContainer:patchType:error:]", 777, MIInstallerErrorDomain, 25, 0, 0, @"%@ patch supplied but install target type was placeholder or downgrade. This doesn't make sense.", v19, v24);
LABEL_15:
  v29 = 0;
  if (!error)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (!v29)
  {
    v30 = v28;
    *error = v28;
  }

LABEL_18:

  return v29;
}

- (id)_discoverInstallableWithError:(id *)error
{
  stagingURL = [(MIInstaller *)self stagingURL];
  packageFormat = [(MIInstaller *)self packageFormat];
  options = [(MIInstaller *)self options];
  bundleIdentifier = [options bundleIdentifier];

  if (!bundleIdentifier)
  {
    v11 = MIInstallerErrorDomain;
    v12 = @"Caller did not supply bundle identifer in install options";
    v13 = 833;
LABEL_11:
    v15 = sub_100010734("[MIInstaller _discoverInstallableWithError:]", v13, v11, 4, 0, 0, v12, v9, identifier);
    v16 = 0;
    v17 = 0;
    goto LABEL_24;
  }

  if (packageFormat > 2)
  {
    if (packageFormat == 4)
    {
      v14 = @"AssetData";
      goto LABEL_13;
    }

    if (packageFormat != 3)
    {
LABEL_10:
      v11 = MIInstallerErrorDomain;
      identifier = packageFormat;
      v12 = @"Unknown package format: %hhu";
      v13 = 856;
      goto LABEL_11;
    }
  }

  else if (packageFormat != 1)
  {
    if (packageFormat == 2)
    {
      v10 = stagingURL;
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v14 = @"Payload";
LABEL_13:
  v10 = [stagingURL URLByAppendingPathComponent:v14 isDirectory:1];
LABEL_14:
  v16 = v10;
  options2 = [(MIInstaller *)self options];
  installTargetType = [options2 installTargetType];

  v79[0] = 0;
  v17 = [(MIInstaller *)self _bundleInDirectory:v16 withBundleID:bundleIdentifier platformHint:0 error:v79];
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

  v67 = installTargetType;
  identity = [(MIInstaller *)self identity];
  v77 = v22;
  v24 = [identity resolvePersonaWithError:&v77];
  v15 = v77;

  if (!v24)
  {
    goto LABEL_24;
  }

  bundleType = [v17 bundleType];
  v26 = bundleType;
  if (bundleType > 4 || ((1 << bundleType) & 0x16) == 0)
  {
    v41 = MIInstallerErrorDomain;
    bundleURL = [v17 bundleURL];
    path = [bundleURL path];
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
    domain = [v28 domain];
    if ([domain isEqualToString:MIContainerManagerErrorDomain])
    {
      code = [v28 code];

      if (code != 21)
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
      domain = [v17 identifier];
      v40 = sub_100010734("[MIInstaller _discoverInstallableWithError:]", 940, v38, 26, 0, 0, @"Application %@ not found to downgrade to placeholder.", v39, domain);

      v28 = v40;
    }

    goto LABEL_35;
  }

  v66 = v27;
  bundle = [v27 bundle];
  isPlaceholder = [bundle isPlaceholder];

  if ((isPlaceholder & 1) == 0 && v67 == 2)
  {
    v68 = [MIInstallableParallelPlaceholder alloc];
    stagingLocation = [(MIInstaller *)self stagingLocation];
    packageFormat2 = [(MIInstaller *)self packageFormat];
    identity2 = [(MIInstaller *)self identity];
    installationDomain = [(MIInstaller *)self installationDomain];
    options3 = [(MIInstaller *)self options];
    v75 = v28;
    v69 = [(MIInstallableBundle *)v68 initWithBundle:v17 inStagingRoot:stagingURL stagingLocation:stagingLocation packageFormat:packageFormat2 identity:identity2 domain:installationDomain installOptions:options3 existingBundleContainer:v27 operationType:[(MIInstaller *)self installOperationType] error:&v75];
    v15 = v75;

    p_super = &v69->super;
LABEL_45:

    if (p_super)
    {
      v34 = p_super;
      goto LABEL_27;
    }

    v50 = MIInstallerErrorDomain;
    path2 = [v16 path];
    v44 = sub_100010734("[MIInstaller _discoverInstallableWithError:]", 994, v50, 6, v15, &off_10009C2B8, @"No installable items found at %@", v52, path2);

    goto LABEL_48;
  }

  if (v67 == 3)
  {
    bundle2 = [v27 bundle];
    isPlaceholder2 = [bundle2 isPlaceholder];

    if ((isPlaceholder2 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5))
    {
      identifier = [v17 identifier];
      MOLogWrite();
    }
  }

LABEL_42:
  v74 = 0;
  identifier2 = [v17 identifier];
  v73 = v28;
  v48 = [(MIInstaller *)self _manifestPathForBase:stagingURL withIdentifier:identifier2 patchType:&v74 error:&v73];
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

  domain2 = [v15 domain];
  if ([domain2 isEqualToString:NSPOSIXErrorDomain])
  {
    code2 = [v15 code];

    if (code2 == 2)
    {
      v63 = [MIInstallableBundle alloc];
      stagingLocation2 = [(MIInstaller *)self stagingLocation];
      packageFormat3 = [(MIInstaller *)self packageFormat];
      identity3 = [(MIInstaller *)self identity];
      installationDomain2 = [(MIInstaller *)self installationDomain];
      options4 = [(MIInstaller *)self options];
      v71 = v15;
      v27 = v66;
      p_super = [(MIInstallableBundle *)v63 initWithBundle:v17 inStagingRoot:stagingURL stagingLocation:stagingLocation2 packageFormat:packageFormat3 identity:identity3 domain:installationDomain2 installOptions:options4 existingBundleContainer:v66 operationType:[(MIInstaller *)self installOperationType] error:&v71];
      v49 = v71;

      v15 = stagingLocation2;
      goto LABEL_44;
    }
  }

  else
  {
  }

LABEL_24:
  if (error)
  {
    v33 = v15;
    v34 = 0;
    *error = v15;
  }

  else
  {
    v34 = 0;
  }

LABEL_27:

  return v34;
}

- (BOOL)_installProvisioningProfilesFromUserOptionsWithError:(id *)error
{
  options = [(MIInstaller *)self options];
  provisioningProfiles = [options provisioningProfiles];
  if (provisioningProfiles)
  {
    selfCopy = self;
    errorCopy = error;
    [options provisioningProfileInstallFailureIsFatal];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v26 = provisioningProfiles;
    v7 = provisioningProfiles;
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
              installURL = [(MIInstaller *)selfCopy installURL];
              v23 = MIErrorStringForMISError();
              v20 = sub_100010734("[MIInstaller _installProvisioningProfilesFromUserOptionsWithError:]", 1028, v15, 13, 0, v17, @"Failed to install local provisioning profile from user options for %@ : 0x%08x (%@)", v19, installURL);

              if (errorCopy)
              {
                v21 = v20;
                v14 = 0;
                *errorCopy = v20;
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
    provisioningProfiles = v26;
  }

  else
  {
    v20 = 0;
    v14 = 1;
  }

  return v14;
}

- (BOOL)_installProvisioningProfilesAtStagingRootWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100023B80;
  v22 = sub_100023B90;
  v23 = 0;
  stagingRoot = [(MIInstaller *)self stagingRoot];
  v6 = [stagingRoot URLByAppendingPathComponent:@"ProvisioningProfiles" isDirectory:1];

  options = [(MIInstaller *)self options];
  provisioningProfileInstallFailureIsFatal = [options provisioningProfileInstallFailureIsFatal];

  v9 = +[MIFileManager defaultManager];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100025ACC;
  v16[3] = &unk_100091418;
  v17 = provisioningProfileInstallFailureIsFatal;
  v16[4] = self;
  v16[5] = &v18;
  v10 = [v9 enumerateURLsForItemsInDirectoryAtURL:v6 ignoreSymlinks:1 withBlock:v16];

  if (v10)
  {
    domain = [v10 domain];
    if ([domain isEqualToString:NSPOSIXErrorDomain])
    {
      code = [v10 code];

      if (code == 2)
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
  if (error && v13)
  {
    v13 = v13;
    *error = v13;
  }

  v14 = v13 == 0;

  _Block_object_dispose(&v18, 8);
  return v14;
}

- (BOOL)_installInstallable:(id)installable containingSymlink:(BOOL)symlink error:(id *)error
{
  symlinkCopy = symlink;
  installableCopy = installable;
  v113 = 0;
  v114 = &v113;
  v115 = 0x3032000000;
  v116 = sub_100023B80;
  v117 = sub_100023B90;
  v118 = 0;
  installOperationType = [(MIInstaller *)self installOperationType];
  v112[0] = _NSConcreteStackBlock;
  v112[1] = 3221225472;
  v112[2] = sub_100026A44;
  v112[3] = &unk_100091440;
  v112[4] = self;
  [installableCopy setProgressBlock:v112];
  if (installOperationType == 1)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) > 4)
    {
LABEL_7:
      v90 = installableCopy;
      MOLogWrite();
    }
  }

  else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    goto LABEL_7;
  }

  bundle = [installableCopy bundle];
  identifier = [bundle identifier];

  identity = [(MIInstaller *)self identity];
  personaUniqueString = [identity personaUniqueString];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = installableCopy;
    existingBundleContainer = [v13 existingBundleContainer];

    if (existingBundleContainer && installOperationType == 1)
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
      existingBundleContainer2 = [v13 existingBundleContainer];
      if (existingBundleContainer2)
      {
        existingBundleContainer3 = [v13 existingBundleContainer];
        bundle2 = [existingBundleContainer3 bundle];
        isPlaceholder = [bundle2 isPlaceholder];

        if (isPlaceholder)
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

    existingBundleContainer4 = [v13 existingBundleContainer];
    if (existingBundleContainer4)
    {
      existingBundleContainer5 = [v13 existingBundleContainer];
      if (existingBundleContainer5)
      {
        existingBundleContainer6 = [v13 existingBundleContainer];
        bundle3 = [existingBundleContainer6 bundle];
        isPlaceholder2 = [bundle3 isPlaceholder];

        if (isPlaceholder2)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }

      existingBundleContainer7 = [v13 existingBundleContainer];
      if (existingBundleContainer7)
      {
        existingBundleContainer8 = [v13 existingBundleContainer];
        bundle4 = [existingBundleContainer8 bundle];
        if ([bundle4 isPlaceholder])
        {
        }

        else
        {
          options = [(MIInstaller *)self options];
          installTargetType = [options installTargetType];

          if (installTargetType == 3)
          {
            v15 = 6;
            goto LABEL_38;
          }
        }
      }

      existingBundleContainer9 = [v13 existingBundleContainer];
      if (existingBundleContainer9)
      {
        existingBundleContainer10 = [v13 existingBundleContainer];
        bundle5 = [existingBundleContainer10 bundle];
        isPlaceholder3 = [bundle5 isPlaceholder];

        if (isPlaceholder3)
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
  _MILogTransactionStep(v15, 1, 1, identifier, personaUniqueString, 0, v11, v12, v91);
  v34 = mach_absolute_time();
  if (symlinkCopy)
  {
    v35 = +[MIFileManager defaultManager];
    bundle6 = [installableCopy bundle];
    bundleURL = [bundle6 bundleURL];
    v38 = v114;
    obj = v114[5];
    v39 = [v35 validateSymlinksInURLDoNotEscapeURL:bundleURL error:&obj];
    objc_storeStrong(v38 + 5, obj);

    if ((v39 & 1) == 0)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        bundle7 = [installableCopy bundle];
        bundleURL2 = [bundle7 bundleURL];
        path = [bundleURL2 path];
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
  v45 = [installableCopy performPreflightWithError:&v110];
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
    v53 = [installableCopy performVerificationWithError:&v109];
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
      v60 = [installableCopy performInstallationWithError:&v108];
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
        v64 = [installableCopy postFlightInstallationWithError:&v107];
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
          if (installOperationType == 1)
          {
            v106 = v114[5];
            v68 = [installableCopy stageBackgroundUpdateWithError:&v106];
            objc_storeStrong(v67, v106);
            stagedUpdateMetadata = self->_stagedUpdateMetadata;
            self->_stagedUpdateMetadata = v68;

            if (self->_stagedUpdateMetadata)
            {
              lockedIdentifiers = [(MIInstaller *)self lockedIdentifiers];

              if (lockedIdentifiers)
              {
                lockedIdentifiers2 = [(MIInstaller *)self lockedIdentifiers];
                sub_100054780(lockedIdentifiers2);

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
                v48 = [installableCopy launchServicesBundleRecordsWithError:&v104];
                objc_storeStrong(v75 + 5, v104);
                if (v48)
                {
                  v76 = 0;
                }

                else
                {
                  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
                  {
                    path = v114[5];
                    MOLogWrite();
                  }

                  v76 = 14;
                }

                objc_autoreleasePoolPop(v74);
                if (v76 == 14)
                {
                  goto LABEL_121;
                }

                lockedIdentifiers3 = [(MIInstaller *)self lockedIdentifiers];

                if (lockedIdentifiers3)
                {
                  lockedIdentifiers4 = [(MIInstaller *)self lockedIdentifiers];
                  sub_100054780(lockedIdentifiers4);

                  [(MIInstaller *)self setLockedIdentifiers:0];
                }

                client = [(MIInstaller *)self client];
                [client releaseTerminationAssertion];

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
                v81 = installableCopy;
                v97 = v81;
                v98 = &v113;
                v99 = buf;
                dispatch_sync(v80, block);

                if (v101[24])
                {

                  _Block_object_dispose(buf, 8);
                  goto LABEL_121;
                }

                recordPromise = [v81 recordPromise];
                recordPromise = self->_recordPromise;
                self->_recordPromise = recordPromise;

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
              _MILogTransactionStep(v15, 2, 1, identifier, personaUniqueString, 0, v88, v89, path);
              goto LABEL_126;
            }
          }

          else
          {
            v105 = v114[5];
            v73 = [installableCopy finalizeInstallationWithError:&v105];
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
  if (identifier && v15)
  {
    _MILogTransactionStep(v15, 2, 0, identifier, personaUniqueString, 0, v40, v41, path);
  }

  v82 = 0;
  if (error)
  {
    *error = v114[5];
  }

LABEL_126:

  _Block_object_dispose(&v113, 8);
  return v82 & 1;
}

- (void)_logOperationCompletionWithStartTime:(unint64_t)time distributorID:(id)d
{
  dCopy = d;
  options = [(MIInstaller *)self options];
  identity = [(MIInstaller *)self identity];
  bundleID = [identity bundleID];

  mach_absolute_time();
  if ([(MIInstaller *)self installOperationType]!= 1)
  {
    if ([(MIInstaller *)self installOperationType]== 2)
    {
      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
      {
        goto LABEL_14;
      }

      installTypeSummaryString = [options installTypeSummaryString];
    }

    else
    {
      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 5)
      {
        goto LABEL_14;
      }

      installTypeSummaryString = [options installTypeSummaryString];
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
    installTypeSummaryString = [options installTypeSummaryString];
    [(MIInstaller *)self stagingTime];
    [(MIInstaller *)self waitingTime];
    [(MIInstaller *)self preflightAndPatchTime];
    [(MIInstaller *)self verificationTime];
    stagedUpdateMetadata = [(MIInstaller *)self stagedUpdateMetadata];
    stagedIdentifier = [stagedUpdateMetadata stagedIdentifier];
    MOLogWrite();

LABEL_13:
  }

LABEL_14:
}

- (BOOL)performInstallationWithError:(id *)error
{
  v60 = 0;
  v5 = mach_absolute_time();
  v6 = +[MIDaemonConfiguration sharedInstance];
  installationBlacklist = [v6 installationBlacklist];

  installOperationType = [(MIInstaller *)self installOperationType];
  if (installOperationType == 1)
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

  errorCopy = error;
  if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
  {
    installURL = [(MIInstaller *)self installURL];
    path = [installURL path];
    MOLogWrite();
  }

  v58 = v13;
  v15 = [(MIInstaller *)self _setupPackageStateWithError:&v58, path];
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
    error = errorCopy;
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
    error = errorCopy;
    goto LABEL_50;
  }

  lockedIdentifiers = [(MIInstaller *)self lockedIdentifiers];
  v21 = [NSSet setWithArray:lockedIdentifiers];

  if ([installationBlacklist intersectsSet:v21])
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

  installedDistributorID = [v19 installedDistributorID];
  [(MIInstaller *)self _logOperationCompletionWithStartTime:v5 distributorID:installedDistributorID];

  v24 = 1;
LABEL_49:
  error = errorCopy;
LABEL_50:
  if (installOperationType == 1)
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

  lockedIdentifiers2 = [(MIInstaller *)self lockedIdentifiers];

  if (lockedIdentifiers2)
  {
    lockedIdentifiers3 = [(MIInstaller *)self lockedIdentifiers];
    sub_100054780(lockedIdentifiers3);

    [(MIInstaller *)self setLockedIdentifiers:0];
  }

  client = [(MIInstaller *)self client];
  if (client)
  {
    v39 = client;
    terminationAssertionReleased = [(MIInstaller *)self terminationAssertionReleased];

    if ((terminationAssertionReleased & 1) == 0)
    {
      client2 = [(MIInstaller *)self client];
      [client2 releaseTerminationAssertion];

      [(MIInstaller *)self setTerminationAssertionReleased:1];
    }
  }

  stagingRoot = [(MIInstaller *)self stagingRoot];

  if (stagingRoot)
  {
    v44 = +[MIFileManager defaultManager];
    stagingRoot2 = [(MIInstaller *)self stagingRoot];
    [v44 removeItemAtURL:stagingRoot2 error:0];
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
    v13 = sub_100010734("[MIInstaller performInstallationWithError:]", 1415, MIInstallerErrorDomain, 1, 0, 0, @"No error was specified but the operation failed.", v43, path);
  }

  if (error)
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
    *error = v13;
  }

  return v24;
}

- (BOOL)applyStagedUpdateWithJournalEntry:(id)entry error:(id *)error
{
  entryCopy = entry;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = sub_100023B80;
  v66 = sub_100023B90;
  v67 = 0;
  identity = [(MIInstaller *)self identity];
  bundleID = [identity bundleID];
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

  personaUniqueString = [identity personaUniqueString];
  if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
  {
    v43 = entryCopy;
    MOLogWrite();
  }

  _MILogTransactionStep(14, 1, 1, bundleID, personaUniqueString, 0, v11, v12, v43);
  [entryCopy setProgressBlock:v9];
  v13 = v63;
  obj = v63[5];
  v48 = [(MIInstaller *)self _identifiersToLockBundleIdentifier:bundleID error:&obj];
  objc_storeStrong(v13 + 5, obj);
  if (!v48)
  {
    bundleRecordsToRegister = 0;
    goto LABEL_16;
  }

  [(MIInstaller *)self _writeLockIdentifiers:?];
  v14 = v63;
  v59 = v63[5];
  v15 = [entryCopy makeStagedBackgroundUpdateLive:&v59];
  objc_storeStrong(v14 + 5, v59);
  if (v15)
  {
    bundleRecordsToRegister = [entryCopy bundleRecordsToRegister];
    lockedIdentifiers = [(MIInstaller *)self lockedIdentifiers];

    if (lockedIdentifiers)
    {
      lockedIdentifiers2 = [(MIInstaller *)self lockedIdentifiers];
      sub_100054780(lockedIdentifiers2);

      [(MIInstaller *)self setLockedIdentifiers:0];
    }

    client = [(MIInstaller *)self client];
    [client releaseTerminationAssertion];

    [(MIInstaller *)self setTerminationAssertionReleased:1];
    context = objc_autoreleasePoolPush();
    v20 = v9;
    v21 = entryCopy;
    v22 = bundleID;
    errorCopy = error;
    v24 = identity;
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

    identity = v24;
    error = errorCopy;
    bundleID = v22;
    entryCopy = v21;
    v9 = v20;
    LOBYTE(v20) = *(v56 + 24);

    _Block_object_dispose(&v55, 8);
    objc_autoreleasePoolPop(context);
    if ((v20 & 1) == 0)
    {
      [(MIInstaller *)self _logOperationCompletionWithStartTime:v46 distributorID:@"Unknown"];
      recordPromise = [v26 recordPromise];
      recordPromise = self->_recordPromise;
      self->_recordPromise = recordPromise;

      if ([bundleRecordsToRegister count])
      {
        v29 = bundleRecordsToRegister;
        receipt = self->_receipt;
        bundleRecordsToRegister = v29;
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

  v31 = sub_100010734("[MIInstaller applyStagedUpdateWithJournalEntry:error:]", 1458, MIInstallerErrorDomain, 4, 0, 0, @"Failed to make staged background update live for app identity: %@", v16, identity);
  bundleRecordsToRegister = 0;
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

  _MILogTransactionStep(14, 2, v15, bundleID, personaUniqueString, 0, v33, v34, v44);
  if ((v15 & 1) == 0)
  {
    lockedIdentifiers3 = [(MIInstaller *)self lockedIdentifiers];

    if (lockedIdentifiers3)
    {
      lockedIdentifiers4 = [(MIInstaller *)self lockedIdentifiers];
      sub_100054780(lockedIdentifiers4);

      [(MIInstaller *)self setLockedIdentifiers:0];
    }

    if (![(MIInstaller *)self terminationAssertionReleased])
    {
      client2 = [(MIInstaller *)self client];
      [client2 releaseTerminationAssertion];
    }

    v39 = v9;
    if (entryCopy)
    {
      v50 = 0;
      v40 = [0 purgeJournalEntry:entryCopy withError:&v50];
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
    if (error)
    {
      *error = v63[5];
    }
  }

  _Block_object_dispose(&v62, 8);
  return v15;
}

@end