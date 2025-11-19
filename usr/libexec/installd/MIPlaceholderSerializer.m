@interface MIPlaceholderSerializer
+ (BOOL)materializeForInstalledAppWithBundleContainer:(id)a3 withError:(id *)a4;
@end

@implementation MIPlaceholderSerializer

+ (BOOL)materializeForInstalledAppWithBundleContainer:(id)a3 withError:(id *)a4
{
  v4 = a3;
  v5 = +[MIFileManager defaultManager];
  v6 = [v4 serializedPlaceholderURL];
  v7 = +[MIHelperServiceFrameworkClient sharedInstance];
  v82 = 0;
  v8 = [v7 stagingLocationForURL:v6 withinStagingSubsytem:1 usingUniqueName:0 error:&v82];
  v9 = v82;

  v64 = v5;
  if (!v8)
  {
    v62 = 0;
    v63 = 0;
    v24 = 0;
    v11 = 0;
    v14 = 0;
    v60 = 0;
    v61 = 0;
    v15 = 0;
    goto LABEL_26;
  }

  v81 = v9;
  v11 = [v8 resolveWithError:&v81];
  v12 = v81;

  if (!v11)
  {
    v62 = 0;
    v63 = 0;
    v24 = 0;
    v14 = 0;
    v60 = 0;
    v61 = 0;
    v15 = 0;
    v9 = v12;
    goto LABEL_26;
  }

  v14 = [v4 bundle];
  if (!v14)
  {
    v9 = sub_100010734("+[MIPlaceholderSerializer materializeForInstalledAppWithBundleContainer:withError:]", 61, MIInstallerErrorDomain, 4, 0, 0, @"Failed to locate app bundle in container %@", v13, v4);
    v61 = 0;
    v62 = 0;
    v15 = 0;
    v24 = 0;
    v63 = 0;
    goto LABEL_12;
  }

  v80 = v12;
  v15 = [v5 createTemporaryDirectoryInDirectoryURL:v11 error:&v80];
  v9 = v80;

  if (!v15)
  {
    v61 = 0;
    v62 = 0;
    v24 = 0;
    v63 = 0;
    goto LABEL_25;
  }

  v16 = [v15 URLByAppendingPathComponent:@"Payload" isDirectory:1];
  v79 = v9;
  v17 = [v5 createDirectoryAtURL:v16 withIntermediateDirectories:0 mode:493 error:&v79];
  v18 = v79;
  v19 = v9;
  v9 = v18;

  if (!v17)
  {
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v24 = v16;
    goto LABEL_25;
  }

  v20 = [v14 bundleName];
  v57 = v16;
  v21 = [v16 URLByAppendingPathComponent:v20 isDirectory:1];

  v63 = v21;
  if (![v14 isPlaceholder])
  {
    v25 = [MIPlaceholderConstructor alloc];
    v26 = [v14 bundleURL];
    v77 = v9;
    v12 = [v25 initWithSource:v26 byPreservingFullInfoPlist:1 error:&v77];
    v27 = v77;

    if (!v12)
    {
      v61 = 0;
      v62 = 0;
      v24 = v57;
      v9 = v27;
      goto LABEL_25;
    }

    v76 = v27;
    v28 = [v4 bundleMetadataWithError:&v76];
    v29 = v76;
    v30 = v27;
    v31 = v29;

    if (v28)
    {
      v32 = [v28 alternateIconName];
      [v12 setAlternateIconName:v32];

      v75 = v31;
      LOBYTE(v32) = [v12 materializeIntoBundleDirectory:v63 error:&v75];
      v58 = v75;

      if (v32)
      {

        v5 = v64;
        goto LABEL_19;
      }
    }

    else
    {
      v58 = v31;
    }

    v61 = 0;
    v62 = 0;
    v24 = v57;
    v9 = v58;
LABEL_12:

LABEL_25:
    [v64 removeItemAtURL:v11 error:0];
    v60 = 0;
    goto LABEL_26;
  }

  v22 = [v14 bundleURL];
  v78 = v9;
  v23 = [v5 copyItemAtURL:v22 toURL:v21 error:&v78];
  v58 = v78;

  if ((v23 & 1) == 0)
  {
    v62 = 0;
LABEL_23:
    v61 = 0;
    v24 = v57;
    v9 = v58;
    goto LABEL_25;
  }

LABEL_19:
  v33 = v58;
  v34 = [v4 containerURL];
  v35 = [v34 URLByAppendingPathComponent:@"iTunesMetadata.plist" isDirectory:0];

  v36 = [v15 URLByAppendingPathComponent:@"iTunesMetadata.plist" isDirectory:0];
  v74 = v58;
  v62 = v35;
  LODWORD(v35) = [v5 copyItemIfExistsAtURL:v35 toURL:v36 error:&v74];
  v58 = v74;

  if (!v35)
  {
    goto LABEL_23;
  }

  v37 = [v6 lastPathComponent];
  v38 = [v15 URLByAppendingPathComponent:v37 isDirectory:0];

  v39 = fopen([v38 fileSystemRepresentation], "wx");
  v24 = v57;
  v61 = v38;
  if (!v39)
  {
    v49 = *__error();
    v50 = [v38 fileSystemRepresentation];
    strerror(v49);
    v9 = sub_100010734("+[MIPlaceholderSerializer materializeForInstalledAppWithBundleContainer:withError:]", 110, NSPOSIXErrorDomain, v49, 0, 0, @"Failed to create output file %s: %s", v51, v50);
    v12 = v58;
    goto LABEL_12;
  }

  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v68 = 0;
  v70 = 0u;
  v66 = 0u;
  v67 = 0u;
  v56 = v39;
  v69 = v39;
  v83[0] = kSZArchiverOptionCompressionOptions;
  v83[1] = kSZArchiverOptionNoCache;
  v83[2] = kSZArchiverOptionZlibCompressionLevel;
  v83[3] = kSZArchiverOptionSkipPrescan;
  v84[2] = &off_10009B6C8;
  v84[3] = &__kCFBooleanFalse;
  v84[0] = kSZArchiverCompressionOptionTryRecompress;
  v84[1] = &__kCFBooleanTrue;
  v83[4] = kSZArchiverOptionUncompressBloatedFiles;
  v84[4] = &__kCFBooleanTrue;
  v40 = [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:5];
  v41 = [NSMutableDictionary dictionaryWithDictionary:v40];

  [v15 fileSystemRepresentation];
  v60 = v41;
  if (SZArchiverCreateStreamableZip())
  {
    v65 = v58;
    v42 = v64;
    v55 = [v64 moveItemAtURL:v38 toURL:v6 error:&v65];
    v43 = v65;
    v44 = v58;
    v9 = v43;
  }

  else
  {
    v52 = MIInstallerErrorDomain;
    v53 = [v63 path];
    v9 = sub_100010734("+[MIPlaceholderSerializer materializeForInstalledAppWithBundleContainer:withError:]", 126, v52, 4, 0, 0, @"Failed to archive contents of %@", v54, v53);

    v55 = 0;
    v44 = v53;
    v42 = v64;
  }

  [v42 removeItemAtURL:v11 error:0];
  fclose(v56);
  if (v55)
  {
    v47 = 1;
    goto LABEL_29;
  }

LABEL_26:
  v45 = v9;
  v9 = sub_100010734("+[MIPlaceholderSerializer materializeForInstalledAppWithBundleContainer:withError:]", 148, MIInstallerErrorDomain, 175, v9, 0, @"Failed to create a serialized placeholder for %@", v10, v4);

  if (a4)
  {
    v46 = v9;
    v47 = 0;
    *a4 = v9;
  }

  else
  {
    v47 = 0;
  }

LABEL_29:

  return v47;
}

@end