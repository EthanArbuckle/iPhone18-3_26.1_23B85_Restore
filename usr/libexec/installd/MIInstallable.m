@interface MIInstallable
- (BOOL)_applyDeltaPatchWithError:(id *)a3;
- (BOOL)_applyParallelPatchProcessingArchiveSection:(BOOL)a3 withError:(id *)a4;
- (BOOL)applyPatchWithError:(id *)a3;
- (BOOL)performPreflightWithError:(id *)a3;
- (MIInstallable)initWithBundle:(id)a3 inStagingRoot:(id)a4 stagingLocation:(id)a5 packageFormat:(unsigned __int8)a6 identity:(id)a7 domain:(unint64_t)a8 installOptions:(id)a9 manifestURL:(id)a10 existingBundleContainer:(id)a11 patchType:(unsigned __int8)a12 operationType:(unint64_t)a13 error:(id *)a14;
- (NSString)patchTypeName;
- (id)description;
- (id)stageBackgroundUpdateWithError:(id *)a3;
@end

@implementation MIInstallable

- (MIInstallable)initWithBundle:(id)a3 inStagingRoot:(id)a4 stagingLocation:(id)a5 packageFormat:(unsigned __int8)a6 identity:(id)a7 domain:(unint64_t)a8 installOptions:(id)a9 manifestURL:(id)a10 existingBundleContainer:(id)a11 patchType:(unsigned __int8)a12 operationType:(unint64_t)a13 error:(id *)a14
{
  v20 = a3;
  v65 = a4;
  v64 = a5;
  v63 = a7;
  v62 = a9;
  v61 = a10;
  v60 = a11;
  v66.receiver = self;
  v66.super_class = MIInstallable;
  v21 = [(MIInstallable *)&v66 init];
  if (!v21)
  {
    v30 = 0;
    v26 = v60;
    v25 = v61;
    v31 = v20;
    goto LABEL_15;
  }

  v22 = v21;
  objc_storeStrong(&v21->_identity, a7);
  objc_storeStrong(&v22->_installOptions, a9);
  v23 = 2;
  if (a8 != 1)
  {
    v23 = a8;
  }

  v22->_installationDomain = v23;
  v22->_packageFormat = a6;
  objc_storeStrong(&v22->_bundle, a3);
  objc_storeStrong(&v22->_stagingRootURL, a4);
  objc_storeStrong(&v22->_stagingLocation, a5);
  v22->_installOperationType = a13;
  v22->_patchType = a12;
  objc_storeStrong(&v22->_existingBundleContainer, a11);
  if (a12 != 1)
  {
    v26 = v60;
    v25 = v61;
    if (a12)
    {
      if (v60)
      {
        v31 = v20;
        if (v61)
        {
          objc_storeStrong(&v22->_manifestURL, a10);
          v33 = [(MIInstallable *)v22 bundle];
          v34 = [v33 infoPlistSubset];
          v35 = [v34 objectForKeyedSubscript:kCFBundleVersionKey];
          v36 = sub_100010E9C(v35);
          updatedBundleVersion = v22->_updatedBundleVersion;
          v22->_updatedBundleVersion = v36;

          v38 = [(MIInstallable *)v22 bundle];
          v39 = [v38 infoPlistSubset];
          v40 = _kCFBundleShortVersionStringKey;
          v41 = [v39 objectForKeyedSubscript:_kCFBundleShortVersionStringKey];
          v42 = sub_100010E9C(v41);
          updatedBundleShortVersion = v22->_updatedBundleShortVersion;
          v22->_updatedBundleShortVersion = v42;

          v44 = [(MIInstallable *)v22 existingBundleContainer];
          v45 = [v44 bundle];
          v46 = [v45 infoPlistSubset];
          v47 = [v46 objectForKeyedSubscript:kCFBundleVersionKey];
          v48 = sub_100010E9C(v47);
          existingBundleVersion = v22->_existingBundleVersion;
          v22->_existingBundleVersion = v48;

          v50 = [(MIInstallable *)v22 existingBundleContainer];
          v51 = [v50 bundle];
          v52 = [v51 infoPlistSubset];
          v53 = [v52 objectForKeyedSubscript:v40];
          v54 = sub_100010E9C(v53);
          existingBundleShortVersion = v22->_existingBundleShortVersion;
          v22->_existingBundleShortVersion = v54;

          v30 = 0;
LABEL_18:
          v32 = v64;
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
    v31 = v20;
LABEL_14:

LABEL_15:
    if (a14)
    {
      v56 = v30;
      v22 = 0;
      *a14 = v30;
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_18;
  }

  v30 = 0;
  v31 = v20;
  v32 = v64;
  v26 = v60;
  v25 = v61;
LABEL_19:

  return v22;
}

- (NSString)patchTypeName
{
  v2 = [(MIInstallable *)self patchType];
  if (v2 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return &off_1000918D0[v2]->isa;
  }
}

- (BOOL)_applyDeltaPatchWithError:(id *)a3
{
  v5 = [(MIInstallable *)self existingBundleContainer];
  v6 = [v5 bundle];

  v7 = [v6 supportedDevices];
  objc_opt_class();
  if ((sub_100010AB8(v7) & 1) == 0)
  {
    v11 = sub_100010734("[MIInstallable _applyDeltaPatchWithError:]", 146, MIInstallerErrorDomain, 87, 0, &off_10009C308, @"Existing app's SupportedDevices Info.plist key does not contain only string values.", v8, v32);
    v9 = 0;
    if (!a3)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v47 = 0;
  v9 = [v6 infoPlistHashWithError:&v47];
  v11 = v47;
  if (!v9)
  {
    v21 = sub_100010734("[MIInstallable _applyDeltaPatchWithError:]", 152, MIInstallerErrorDomain, 8, v11, &off_10009C330, @"Failed to get Info.plist hash for %@", v10, 0);

    v11 = v21;
    if (!a3)
    {
LABEL_10:
      v20 = 0;
      goto LABEL_11;
    }

LABEL_8:
    v22 = v11;
    v20 = 0;
    *a3 = v11;
    goto LABEL_11;
  }

  v34 = a3;
  MIAssertHighResourceUsage();
  v46 = 0;
  v43 = [v6 bundleURL];
  v38 = [v43 fileSystemRepresentation];
  v41 = [(MIInstallable *)self bundle];
  v39 = [v41 bundleURL];
  v37 = [v39 fileSystemRepresentation];
  v12 = [(MIInstallable *)self manifestURL];
  v36 = [v12 fileSystemRepresentation];
  v13 = [(MIInstallable *)self existingBundleVersion];
  v35 = [v13 UTF8String];
  v14 = [(MIInstallable *)self existingBundleShortVersion];
  v15 = [v14 UTF8String];
  v45 = v7;
  v16 = [v9 UTF8String];
  v17 = [v6 executableURL];
  v18 = [v17 fileSystemRepresentation];
  v19 = v16;
  v7 = v45;
  LOBYTE(v15) = sub_100001ECC(v38, v37, v36, v35, v15, v19, v18, v45, 0, &v46);

  MIClearResourceAssertion();
  if ((v15 & 1) == 0)
  {
    v23 = v46;
    v42 = MIInstallerErrorDomain;
    v44 = [v6 bundleURL];
    v40 = [v44 path];
    v24 = [(MIInstallable *)self bundle];
    v25 = [v24 bundleURL];
    v26 = [v25 path];
    v27 = [(MIInstallable *)self manifestURL];
    v33 = [v27 path];
    v28 = v23;
    v30 = sub_100010734("[MIInstallable _applyDeltaPatchWithError:]", 172, v42, 8, v23, &off_10009C358, @"Could not hardlink copy %@ to %@ with manifest %@", v29, v40);

    v7 = v45;
    v11 = v30;
    a3 = v34;
    if (!v34)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v20 = 1;
LABEL_11:

  return v20;
}

- (BOOL)_applyParallelPatchProcessingArchiveSection:(BOOL)a3 withError:(id *)a4
{
  v4 = a3;
  v56 = 0;
  v6 = +[MIDaemonConfiguration sharedInstance];
  v44 = [v6 uid];
  v7 = +[MIDaemonConfiguration sharedInstance];
  v42 = [v7 gid];

  if (v4)
  {
    v8 = 260;
  }

  else
  {
    v8 = 258;
  }

  v9 = [(MIInstallable *)self existingBundleContainer];
  v10 = [v9 bundle];
  v11 = [v10 bundleURL];
  v40 = [v11 fileSystemRepresentation];
  v46[1] = v40;
  v12 = [(MIInstallable *)self bundle];
  v13 = [v12 bundleURL];
  v14 = [v13 fileSystemRepresentation];
  v46[2] = v14;
  v15 = [(MIInstallable *)self manifestURL];
  v16 = [v15 fileSystemRepresentation];
  v46[3] = v16;
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
    v37 = v14;
    v38 = v16;
    v35 = v40;
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
    v43 = [(MIInstallable *)self existingBundleContainer];
    v20 = [v43 bundle];
    v21 = [v20 bundleURL];
    v22 = [v21 path];
    v23 = [(MIInstallable *)self bundle];
    v24 = [v23 bundleURL];
    v25 = [v24 path];
    v26 = [(MIInstallable *)self manifestURL];
    v39 = [v26 path];
    v28 = sub_100010734("[MIInstallable _applyParallelPatchProcessingArchiveSection:withError:]", 245, v18, 8, v19, &off_10009C380, @"DirectoryPatch failed for %@ to %@ with manifest %@", v27, v22);

    if (v19)
    {
    }

    if (a4)
    {
      v29 = v28;
      *a4 = v28;
    }

    v17 = v45;
  }

  else
  {
    v30 = +[MIFileManager defaultManager];
    v31 = [(MIInstallable *)self manifestURL];
    v46[0] = 0;
    v32 = [v30 removeItemAtURL:v31 error:v46];
    v28 = v46[0];

    if ((v32 & 1) == 0)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v33 = [(MIInstallable *)self manifestURL:v35];
        v36 = [v33 path];
        MOLogWrite();
      }

      v28 = 0;
    }
  }

  return v17 == 0;
}

- (BOOL)applyPatchWithError:(id *)a3
{
  v5 = [(MIInstallable *)self bundle];
  if ([(MIInstallable *)self isPatchUpdate])
  {
    v6 = [(MIInstallable *)self manifestURL];

    if (!v6)
    {
      v18 = MIInstallerErrorDomain;
      v19 = [v5 identifier];
      v16 = sub_100010734("[MIInstallable applyPatchWithError:]", 278, v18, 8, 0, 0, @"Failed to find manifestURL when attempting a patch update for %@", v20, v19);

      if (a3)
      {
LABEL_24:
        v29 = v16;
        v17 = 0;
        *a3 = v16;
        goto LABEL_28;
      }

LABEL_27:
      v17 = 0;
      goto LABEL_28;
    }

    v7 = [(MIInstallable *)self progressBlock];
    (v7)[2](v7, @"PatchingApplication", 35);

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      v8 = [(MIInstallable *)self patchTypeName];
      v9 = [(MIInstallable *)self bundle];
      [v9 identifier];
      v10 = v41 = a3;
      v11 = [(MIInstallable *)self existingBundleVersion];
      v12 = [(MIInstallable *)self existingBundleShortVersion];
      v13 = [(MIInstallable *)self updatedBundleVersion];
      [(MIInstallable *)self updatedBundleShortVersion];
      v40 = v39 = v13;
      v37 = v11;
      v38 = v12;
      v34 = v8;
      v36 = v10;
      MOLogWrite();

      a3 = v41;
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
          v27 = [v5 identifier];
          v16 = sub_100010734("[MIInstallable applyPatchWithError:]", 308, v26, 8, 0, 0, @"Attempted a patch update for %@ with an incompatible patch type", v28, v27);

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
        if (a3)
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

    v24 = [(MIInstallable *)self installOptions];
    v25 = [v24 sinfData];
    if (v25)
    {

LABEL_21:
      goto LABEL_11;
    }

    v30 = [v5 needsSinf];

    if (v30)
    {
      v32 = sub_100010734("[MIInstallable applyPatchWithError:]", 318, MIInstallerErrorDomain, 60, 0, &off_10009C3A8, @"Client requesting patch installation did not supply a new SINF for an app that requires one to function", v31, v35);

      v16 = v32;
      if (a3)
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

- (BOOL)performPreflightWithError:(id *)a3
{
  if ([(MIInstallable *)self isPatchUpdate]&& ![(MIInstallable *)self applyPatchWithError:a3])
  {
    v10 = 0;
    v8 = 0;
  }

  else
  {
    v5 = [(MIInstallable *)self bundle];
    v6 = [v5 bundleURL];
    v15 = 0;
    v7 = [MIExecutableBundle bundleForURL:v6 error:&v15];
    v8 = v15;

    if (v7)
    {
      [(MIInstallable *)self setBundle:v7];

      v10 = 1;
    }

    else
    {
      v11 = sub_100010734("[MIInstallable performPreflightWithError:]", 346, MIInstallerErrorDomain, 4, v8, 0, @"Failed to re-fetch bundle during preflight", v9, v14);

      if (a3)
      {
        v12 = v11;
        v10 = 0;
        *a3 = v11;
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

- (id)stageBackgroundUpdateWithError:(id *)a3
{
  v3 = [[MIStagedUpdateMetadata alloc] initForStagedIdentifier:&stru_100092CF8 diskUsage:0];

  return v3;
}

- (id)description
{
  v3 = [(MIInstallable *)self bundle];
  v4 = [v3 infoPlistSubset];

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(MIInstallable *)self bundle];
  v8 = [v7 identifier];
  v9 = [(MIInstallable *)self identity];
  v10 = [v9 personaUniqueString];
  v11 = [v4 objectForKeyedSubscript:kCFBundleVersionKey];
  v12 = [v4 objectForKeyedSubscript:_kCFBundleShortVersionStringKey];
  v13 = [NSString stringWithFormat:@"<%@ ID=%@ Persona=%@, Version=%@, ShortVersion=%@>", v6, v8, v10, v11, v12];;

  return v13;
}

@end