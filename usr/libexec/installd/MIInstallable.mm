@interface MIInstallable
- (BOOL)_applyDeltaPatchWithError:(id *)error;
- (BOOL)_applyParallelPatchProcessingArchiveSection:(BOOL)section withError:(id *)error;
- (BOOL)applyPatchWithError:(id *)error;
- (BOOL)performPreflightWithError:(id *)error;
- (MIInstallable)initWithBundle:(id)bundle inStagingRoot:(id)root stagingLocation:(id)location packageFormat:(unsigned __int8)format identity:(id)identity domain:(unint64_t)domain installOptions:(id)options manifestURL:(id)self0 existingBundleContainer:(id)self1 patchType:(unsigned __int8)self2 operationType:(unint64_t)self3 error:(id *)self4;
- (NSString)patchTypeName;
- (id)description;
- (id)stageBackgroundUpdateWithError:(id *)error;
@end

@implementation MIInstallable

- (MIInstallable)initWithBundle:(id)bundle inStagingRoot:(id)root stagingLocation:(id)location packageFormat:(unsigned __int8)format identity:(id)identity domain:(unint64_t)domain installOptions:(id)options manifestURL:(id)self0 existingBundleContainer:(id)self1 patchType:(unsigned __int8)self2 operationType:(unint64_t)self3 error:(id *)self4
{
  bundleCopy = bundle;
  rootCopy = root;
  locationCopy = location;
  identityCopy = identity;
  optionsCopy = options;
  lCopy = l;
  containerCopy = container;
  v66.receiver = self;
  v66.super_class = MIInstallable;
  v21 = [(MIInstallable *)&v66 init];
  if (!v21)
  {
    v30 = 0;
    v26 = containerCopy;
    v25 = lCopy;
    v31 = bundleCopy;
    goto LABEL_15;
  }

  v22 = v21;
  objc_storeStrong(&v21->_identity, identity);
  objc_storeStrong(&v22->_installOptions, options);
  domainCopy = 2;
  if (domain != 1)
  {
    domainCopy = domain;
  }

  v22->_installationDomain = domainCopy;
  v22->_packageFormat = format;
  objc_storeStrong(&v22->_bundle, bundle);
  objc_storeStrong(&v22->_stagingRootURL, root);
  objc_storeStrong(&v22->_stagingLocation, location);
  v22->_installOperationType = operationType;
  v22->_patchType = type;
  objc_storeStrong(&v22->_existingBundleContainer, container);
  if (type != 1)
  {
    v26 = containerCopy;
    v25 = lCopy;
    if (type)
    {
      if (containerCopy)
      {
        v31 = bundleCopy;
        if (lCopy)
        {
          objc_storeStrong(&v22->_manifestURL, l);
          bundle = [(MIInstallable *)v22 bundle];
          infoPlistSubset = [bundle infoPlistSubset];
          v35 = [infoPlistSubset objectForKeyedSubscript:kCFBundleVersionKey];
          v36 = sub_100010E9C(v35);
          updatedBundleVersion = v22->_updatedBundleVersion;
          v22->_updatedBundleVersion = v36;

          bundle2 = [(MIInstallable *)v22 bundle];
          infoPlistSubset2 = [bundle2 infoPlistSubset];
          v40 = _kCFBundleShortVersionStringKey;
          v41 = [infoPlistSubset2 objectForKeyedSubscript:_kCFBundleShortVersionStringKey];
          v42 = sub_100010E9C(v41);
          updatedBundleShortVersion = v22->_updatedBundleShortVersion;
          v22->_updatedBundleShortVersion = v42;

          existingBundleContainer = [(MIInstallable *)v22 existingBundleContainer];
          bundle3 = [existingBundleContainer bundle];
          infoPlistSubset3 = [bundle3 infoPlistSubset];
          v47 = [infoPlistSubset3 objectForKeyedSubscript:kCFBundleVersionKey];
          v48 = sub_100010E9C(v47);
          existingBundleVersion = v22->_existingBundleVersion;
          v22->_existingBundleVersion = v48;

          existingBundleContainer2 = [(MIInstallable *)v22 existingBundleContainer];
          bundle4 = [existingBundleContainer2 bundle];
          infoPlistSubset4 = [bundle4 infoPlistSubset];
          v53 = [infoPlistSubset4 objectForKeyedSubscript:v40];
          v54 = sub_100010E9C(v53);
          existingBundleShortVersion = v22->_existingBundleShortVersion;
          v22->_existingBundleShortVersion = v54;

          v30 = 0;
LABEL_18:
          v32 = locationCopy;
          goto LABEL_19;
        }

        v30 = sub_100010734("[MIInstallable initWithBundle:inStagingRoot:stagingLocation:packageFormat:identity:domain:installOptions:manifestURL:existingBundleContainer:patchType:operationType:error:]", 98, MIInstallerErrorDomain, 4, 0, 0, @"No manifest supplied for patch update.", v24, v58);
        goto LABEL_14;
      }

      v27 = MIInstallerErrorDomain;
      v28 = @"No installed app container supplied for patch update.";
      v29 = 92;
    }

    else
    {
      v27 = MIInstallerErrorDomain;
      v28 = @"No patch type supplied for patch update.";
      v29 = 85;
    }

    v30 = sub_100010734("[MIInstallable initWithBundle:inStagingRoot:stagingLocation:packageFormat:identity:domain:installOptions:manifestURL:existingBundleContainer:patchType:operationType:error:]", v29, v27, 4, 0, 0, v28, v24, v58);
    v31 = bundleCopy;
LABEL_14:

LABEL_15:
    if (error)
    {
      v56 = v30;
      v22 = 0;
      *error = v30;
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_18;
  }

  v30 = 0;
  v31 = bundleCopy;
  v32 = locationCopy;
  v26 = containerCopy;
  v25 = lCopy;
LABEL_19:

  return v22;
}

- (NSString)patchTypeName
{
  patchType = [(MIInstallable *)self patchType];
  if (patchType > 4)
  {
    return @"Unknown";
  }

  else
  {
    return &off_1000918D0[patchType]->isa;
  }
}

- (BOOL)_applyDeltaPatchWithError:(id *)error
{
  existingBundleContainer = [(MIInstallable *)self existingBundleContainer];
  bundle = [existingBundleContainer bundle];

  supportedDevices = [bundle supportedDevices];
  objc_opt_class();
  if ((sub_100010AB8(supportedDevices) & 1) == 0)
  {
    v11 = sub_100010734("[MIInstallable _applyDeltaPatchWithError:]", 146, MIInstallerErrorDomain, 87, 0, &off_10009C308, @"Existing app's SupportedDevices Info.plist key does not contain only string values.", v8, v32);
    v9 = 0;
    if (!error)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v47 = 0;
  v9 = [bundle infoPlistHashWithError:&v47];
  v11 = v47;
  if (!v9)
  {
    v21 = sub_100010734("[MIInstallable _applyDeltaPatchWithError:]", 152, MIInstallerErrorDomain, 8, v11, &off_10009C330, @"Failed to get Info.plist hash for %@", v10, 0);

    v11 = v21;
    if (!error)
    {
LABEL_10:
      v20 = 0;
      goto LABEL_11;
    }

LABEL_8:
    v22 = v11;
    v20 = 0;
    *error = v11;
    goto LABEL_11;
  }

  errorCopy = error;
  MIAssertHighResourceUsage();
  v46 = 0;
  bundleURL = [bundle bundleURL];
  fileSystemRepresentation = [bundleURL fileSystemRepresentation];
  bundle2 = [(MIInstallable *)self bundle];
  bundleURL2 = [bundle2 bundleURL];
  fileSystemRepresentation2 = [bundleURL2 fileSystemRepresentation];
  manifestURL = [(MIInstallable *)self manifestURL];
  fileSystemRepresentation3 = [manifestURL fileSystemRepresentation];
  existingBundleVersion = [(MIInstallable *)self existingBundleVersion];
  uTF8String = [existingBundleVersion UTF8String];
  existingBundleShortVersion = [(MIInstallable *)self existingBundleShortVersion];
  uTF8String2 = [existingBundleShortVersion UTF8String];
  v45 = supportedDevices;
  uTF8String3 = [v9 UTF8String];
  executableURL = [bundle executableURL];
  fileSystemRepresentation4 = [executableURL fileSystemRepresentation];
  v19 = uTF8String3;
  supportedDevices = v45;
  LOBYTE(uTF8String2) = sub_100001ECC(fileSystemRepresentation, fileSystemRepresentation2, fileSystemRepresentation3, uTF8String, uTF8String2, v19, fileSystemRepresentation4, v45, 0, &v46);

  MIClearResourceAssertion();
  if ((uTF8String2 & 1) == 0)
  {
    v23 = v46;
    v42 = MIInstallerErrorDomain;
    bundleURL3 = [bundle bundleURL];
    path = [bundleURL3 path];
    bundle3 = [(MIInstallable *)self bundle];
    bundleURL4 = [bundle3 bundleURL];
    path2 = [bundleURL4 path];
    manifestURL2 = [(MIInstallable *)self manifestURL];
    path3 = [manifestURL2 path];
    v28 = v23;
    v30 = sub_100010734("[MIInstallable _applyDeltaPatchWithError:]", 172, v42, 8, v23, &off_10009C358, @"Could not hardlink copy %@ to %@ with manifest %@", v29, path);

    supportedDevices = v45;
    v11 = v30;
    error = errorCopy;
    if (!errorCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v20 = 1;
LABEL_11:

  return v20;
}

- (BOOL)_applyParallelPatchProcessingArchiveSection:(BOOL)section withError:(id *)error
{
  sectionCopy = section;
  v56 = 0;
  v6 = +[MIDaemonConfiguration sharedInstance];
  v44 = [v6 uid];
  v7 = +[MIDaemonConfiguration sharedInstance];
  v42 = [v7 gid];

  if (sectionCopy)
  {
    v8 = 260;
  }

  else
  {
    v8 = 258;
  }

  existingBundleContainer = [(MIInstallable *)self existingBundleContainer];
  bundle = [existingBundleContainer bundle];
  bundleURL = [bundle bundleURL];
  fileSystemRepresentation = [bundleURL fileSystemRepresentation];
  v46[1] = fileSystemRepresentation;
  bundle2 = [(MIInstallable *)self bundle];
  bundleURL2 = [bundle2 bundleURL];
  fileSystemRepresentation2 = [bundleURL2 fileSystemRepresentation];
  v46[2] = fileSystemRepresentation2;
  manifestURL = [(MIInstallable *)self manifestURL];
  fileSystemRepresentation3 = [manifestURL fileSystemRepresentation];
  v46[3] = fileSystemRepresentation3;
  v47 = v8;
  v48 = 15;
  v49 = 0;
  v50 = 0;
  v51 = v44;
  v52 = v42;
  v53 = xmmword_100065A20;
  v54 = &v56;
  v55 = 0;

  if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
  {
    v37 = fileSystemRepresentation2;
    v38 = fileSystemRepresentation3;
    v35 = fileSystemRepresentation;
    MOLogWrite();
  }

  MIAssertHighResourceUsage();
  v17 = DirectoryPatch();
  MIClearResourceAssertion();
  if (v17)
  {
    v45 = v17;
    v18 = MIInstallerErrorDomain;
    v19 = v56;
    existingBundleContainer2 = [(MIInstallable *)self existingBundleContainer];
    bundle3 = [existingBundleContainer2 bundle];
    bundleURL3 = [bundle3 bundleURL];
    path = [bundleURL3 path];
    bundle4 = [(MIInstallable *)self bundle];
    bundleURL4 = [bundle4 bundleURL];
    path2 = [bundleURL4 path];
    manifestURL2 = [(MIInstallable *)self manifestURL];
    path3 = [manifestURL2 path];
    v28 = sub_100010734("[MIInstallable _applyParallelPatchProcessingArchiveSection:withError:]", 245, v18, 8, v19, &off_10009C380, @"DirectoryPatch failed for %@ to %@ with manifest %@", v27, path);

    if (v19)
    {
    }

    if (error)
    {
      v29 = v28;
      *error = v28;
    }

    v17 = v45;
  }

  else
  {
    v30 = +[MIFileManager defaultManager];
    manifestURL3 = [(MIInstallable *)self manifestURL];
    v46[0] = 0;
    v32 = [v30 removeItemAtURL:manifestURL3 error:v46];
    v28 = v46[0];

    if ((v32 & 1) == 0)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v33 = [(MIInstallable *)self manifestURL:v35];
        path4 = [v33 path];
        MOLogWrite();
      }

      v28 = 0;
    }
  }

  return v17 == 0;
}

- (BOOL)applyPatchWithError:(id *)error
{
  bundle = [(MIInstallable *)self bundle];
  if ([(MIInstallable *)self isPatchUpdate])
  {
    manifestURL = [(MIInstallable *)self manifestURL];

    if (!manifestURL)
    {
      v18 = MIInstallerErrorDomain;
      identifier = [bundle identifier];
      v16 = sub_100010734("[MIInstallable applyPatchWithError:]", 278, v18, 8, 0, 0, @"Failed to find manifestURL when attempting a patch update for %@", v20, identifier);

      if (error)
      {
LABEL_24:
        v29 = v16;
        v17 = 0;
        *error = v16;
        goto LABEL_28;
      }

LABEL_27:
      v17 = 0;
      goto LABEL_28;
    }

    progressBlock = [(MIInstallable *)self progressBlock];
    (progressBlock)[2](progressBlock, @"PatchingApplication", 35);

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      patchTypeName = [(MIInstallable *)self patchTypeName];
      bundle2 = [(MIInstallable *)self bundle];
      [bundle2 identifier];
      v10 = v41 = error;
      existingBundleVersion = [(MIInstallable *)self existingBundleVersion];
      existingBundleShortVersion = [(MIInstallable *)self existingBundleShortVersion];
      updatedBundleVersion = [(MIInstallable *)self updatedBundleVersion];
      [(MIInstallable *)self updatedBundleShortVersion];
      v40 = v39 = updatedBundleVersion;
      v37 = existingBundleVersion;
      v38 = existingBundleShortVersion;
      v34 = patchTypeName;
      v36 = v10;
      MOLogWrite();

      error = v41;
    }

    v14 = [(MIInstallable *)self patchType:v34];
    if (v14 == 2)
    {
      v43 = 0;
      v22 = [(MIInstallable *)self _applyDeltaPatchWithError:&v43];
      v16 = v43;
      if (!v22)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v14 == 3)
      {
        v15 = 0;
      }

      else
      {
        if (v14 != 4)
        {
          v26 = MIInstallerErrorDomain;
          identifier2 = [bundle identifier];
          v16 = sub_100010734("[MIInstallable applyPatchWithError:]", 308, v26, 8, 0, 0, @"Attempted a patch update for %@ with an incompatible patch type", v28, identifier2);

          goto LABEL_23;
        }

        v15 = 1;
      }

      v42 = 0;
      v21 = [(MIInstallable *)self _applyParallelPatchProcessingArchiveSection:v15 withError:&v42];
      v16 = v42;
      if ((v21 & 1) == 0)
      {
LABEL_23:
        if (error)
        {
          goto LABEL_24;
        }

        goto LABEL_27;
      }
    }

    v23 = +[MIDaemonConfiguration sharedInstance];
    if ([v23 allowPatchWithoutSinf])
    {
      goto LABEL_21;
    }

    installOptions = [(MIInstallable *)self installOptions];
    sinfData = [installOptions sinfData];
    if (sinfData)
    {

LABEL_21:
      goto LABEL_11;
    }

    needsSinf = [bundle needsSinf];

    if (needsSinf)
    {
      v32 = sub_100010734("[MIInstallable applyPatchWithError:]", 318, MIInstallerErrorDomain, 60, 0, &off_10009C3A8, @"Client requesting patch installation did not supply a new SINF for an app that requires one to function", v31, v35);

      v16 = v32;
      if (error)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_11:
  v17 = 1;
LABEL_28:

  return v17;
}

- (BOOL)performPreflightWithError:(id *)error
{
  if ([(MIInstallable *)self isPatchUpdate]&& ![(MIInstallable *)self applyPatchWithError:error])
  {
    v10 = 0;
    v8 = 0;
  }

  else
  {
    bundle = [(MIInstallable *)self bundle];
    bundleURL = [bundle bundleURL];
    v15 = 0;
    v7 = [MIExecutableBundle bundleForURL:bundleURL error:&v15];
    v8 = v15;

    if (v7)
    {
      [(MIInstallable *)self setBundle:v7];

      v10 = 1;
    }

    else
    {
      v11 = sub_100010734("[MIInstallable performPreflightWithError:]", 346, MIInstallerErrorDomain, 4, v8, 0, @"Failed to re-fetch bundle during preflight", v9, v14);

      if (error)
      {
        v12 = v11;
        v10 = 0;
        *error = v11;
      }

      else
      {
        v10 = 0;
      }

      v8 = v11;
    }
  }

  return v10;
}

- (id)stageBackgroundUpdateWithError:(id *)error
{
  v3 = [[MIStagedUpdateMetadata alloc] initForStagedIdentifier:&stru_100092CF8 diskUsage:0];

  return v3;
}

- (id)description
{
  bundle = [(MIInstallable *)self bundle];
  infoPlistSubset = [bundle infoPlistSubset];

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  bundle2 = [(MIInstallable *)self bundle];
  identifier = [bundle2 identifier];
  identity = [(MIInstallable *)self identity];
  personaUniqueString = [identity personaUniqueString];
  v11 = [infoPlistSubset objectForKeyedSubscript:kCFBundleVersionKey];
  v12 = [infoPlistSubset objectForKeyedSubscript:_kCFBundleShortVersionStringKey];
  v13 = [NSString stringWithFormat:@"<%@ ID=%@ Persona=%@, Version=%@, ShortVersion=%@>", v6, identifier, personaUniqueString, v11, v12];;

  return v13;
}

@end