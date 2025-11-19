@interface SDAirDropLegacyHelper
+ (__SecKey)copyReceiverPublicKeyForIdentifier:(id)a3;
+ (id)convertWideGamutToClampedPhotoForURLs:(id)a3 outTmpDirectory:(id *)a4;
+ (id)internetLocationFile:(__CFURL *)a3;
+ (id)preprocessItems:(id)a3 forClientBundleID:(id)a4 receiverIdentifier:(id)a5 receiverSupportsURLs:(BOOL)a6 receiverIsUnknown:(BOOL)a7;
+ (id)realPathURL:(__CFURL *)a3;
+ (id)temporaryWeblocURL:(__CFURL *)a3;
+ (id)tmpDirectory;
+ (id)webURLFromInternetLocationFile:(id)a3;
+ (void)convertLivePhotoBundleIfNeeded:(id)a3 capabilities:(id)a4 conversionManager:(id)a5 queue:(id)a6 progressHandler:(id)a7 completionHandler:(id)a8;
+ (void)convertMediaItemFromURL:(id)a3 forMediaCapabilities:(id)a4 conversionManager:(id)a5 progressHandler:(id)a6 completionHandler:(id)a7;
+ (void)convertMediaItemsWithFileURLs:(id)a3 clientBundleID:(id)a4 conversionManager:(id)a5 mediaCapabilities:(id)a6 supportsLivePhoto:(BOOL)a7 supportsAssetBundles:(BOOL)a8 supportsWideGamut:(BOOL)a9 queue:(id)a10 progressHandler:(id)a11 completionHandler:(id)a12;
+ (void)presentEnableRadiosAlertForBluetooth:(BOOL)a3 andWLAN:(BOOL)a4;
@end

@implementation SDAirDropLegacyHelper

+ (id)realPathURL:(__CFURL *)a3
{
  cf = 0;
  v3 = CFURLCreateFilePathURL(0, a3, &cf);
  if (v3)
  {
    v4 = v3;
    bzero(buffer, 0x400uLL);
    if (CFURLGetFileSystemRepresentation(v4, 1u, buffer, 1024))
    {
      bzero(__s, 0x400uLL);
      if (realpath_DARWIN_EXTSN(buffer, __s))
      {
        v5 = strlen(__s);
        v6 = sub_1001F0448(v4);
        v7 = CFURLCreateFromFileSystemRepresentation(0, __s, v5, v6);
        if (v7)
        {
LABEL_15:
          CFRelease(v4);
          goto LABEL_16;
        }

        v8 = airdrop_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1001EFADC();
        }
      }

      else
      {
        v8 = airdrop_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1001EFB4C(buffer, v8);
        }
      }
    }

    else
    {
      v8 = airdrop_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1001EFBEC();
      }
    }

    v7 = 0;
    goto LABEL_15;
  }

  v9 = airdrop_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1001EFC5C(&cf);
  }

  CFRelease(cf);
  v7 = 0;
LABEL_16:

  return v7;
}

+ (void)convertMediaItemsWithFileURLs:(id)a3 clientBundleID:(id)a4 conversionManager:(id)a5 mediaCapabilities:(id)a6 supportsLivePhoto:(BOOL)a7 supportsAssetBundles:(BOOL)a8 supportsWideGamut:(BOOL)a9 queue:(id)a10 progressHandler:(id)a11 completionHandler:(id)a12
{
  v86 = a7;
  v87 = a8;
  v15 = a3;
  v82 = a4;
  v16 = a5;
  v92 = a6;
  v85 = a10;
  v91 = a11;
  v83 = a12;
  v84 = v15;
  if (SFIsDeviceAudioAccessory())
  {
    v17 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v15 count]);
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v18 = v15;
    v19 = [v18 countByEnumeratingWithState:&v99 objects:v148 count:16];
    if (v19)
    {
      v20 = *v100;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v100 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v99 + 1) + 8 * i);
          v23 = objc_alloc_init(SDAirDropConvertMediaItemsResult);
          [(SDAirDropConvertMediaItemsResult *)v23 setUrl:v22];
          [v17 addObject:v23];
        }

        v19 = [v18 countByEnumeratingWithState:&v99 objects:v148 count:16];
      }

      while (v19);
    }

    (*(v83 + 2))(v83, v17, &__NSArray0__struct, &__NSArray0__struct, &__kCFBooleanFalse, 4, 0, v16, 0);
  }

  else
  {
    if (!v16)
    {
      v16 = objc_opt_new();
      v24 = +[PLPhotoLibrary systemPhotoLibrary];
      v25 = [v24 photoOutboundSharingTmpDirectoryURL];

      if (v25)
      {
        [v16 setDirectoryForTemporaryFiles:v25];
      }

      else
      {
        v26 = airdrop_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_1001EFCD4();
        }

        v27 = +[SDAirDropLegacyHelper tmpDirectory];
        [v16 setDirectoryForTemporaryFiles:v27];
      }
    }

    v146[0] = 0;
    v146[1] = v146;
    v146[2] = 0x3032000000;
    v146[3] = sub_1001ECC68;
    v146[4] = sub_1001ECC78;
    v147 = 0;
    v142 = 0;
    v143 = &v142;
    v144 = 0x2020000000;
    v145 = 0;
    v136 = 0;
    v137 = &v136;
    v138 = 0x3032000000;
    v139 = sub_1001ECC68;
    v140 = sub_1001ECC78;
    v141 = 0;
    v28 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v15 count]);
    v29 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v15 count]);
    v95 = v16;
    v30 = +[NSMutableArray array];
    v31 = dispatch_group_create();
    v129[0] = _NSConcreteStackBlock;
    v129[1] = 3221225472;
    v129[2] = sub_1001ECC80;
    v129[3] = &unk_1008D3C70;
    v81 = v28;
    v130 = v81;
    v80 = v29;
    v131 = v80;
    v79 = v30;
    v132 = v79;
    v134 = &v142;
    v135 = &v136;
    group = v31;
    v133 = group;
    v97 = objc_retainBlock(v129);
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    obj = v15;
    v93 = [obj countByEnumeratingWithState:&v125 objects:v153 count:16];
    if (v93)
    {
      v89 = PFAssetBundleFileExtension;
      v90 = *v126;
      v94 = PFLivePhotoBundleExtension;
      do
      {
        for (j = 0; j != v93; j = j + 1)
        {
          if (*v126 != v90)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v125 + 1) + 8 * j);
          v33 = [v32 pathExtension];
          v34 = [v33 isEqual:v89];

          v35 = [v32 pathExtension];
          v36 = [v35 isEqual:v94];

          if (v34)
          {
            v37 = airdrop_log();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v38 = [v32 lastPathComponent];
              *buf = 138412290;
              v150 = v38;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "attempting to send asset bundle %@", buf, 0xCu);
            }

            v39 = [[PFAssetBundle alloc] initWithAssetBundleAtURL:v32];
            if (v39)
            {
              if (v87)
              {
                v40 = airdrop_log();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                {
                  v41 = [v32 lastPathComponent];
                  *buf = 138412290;
                  v150 = v41;
                  _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "receiver supports receiving asset bundle %@", buf, 0xCu);
                }

                dispatch_group_enter(group);
                (v97[2])(v97, v32, 0, 0);
                v42 = 1;
              }

              else
              {
                v43 = airdrop_log();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  v44 = [v32 lastPathComponent];
                  *buf = 138412290;
                  v150 = v44;
                  _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "receiver does not support receiving asset bundle %@. Conversion required.", buf, 0xCu);
                }

                v45 = +[NSUUID UUID];
                v46 = [v45 UUIDString];

                v47 = [v95 directoryForTemporaryFiles];
                v48 = [v47 URLByAppendingPathComponent:v46];

                v124 = 0;
                v49 = [v39 writeDowngradedRepresentationToDirectory:v48 error:&v124];
                v50 = v124;
                if (v50)
                {
                  v51 = 1;
                }

                else
                {
                  v51 = v49 == 0;
                }

                v42 = v51;
                if (v51)
                {
                  v52 = airdrop_log();
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v150 = v48;
                    v151 = 2112;
                    v152 = v50;
                    _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "assetBundle returned NULL for writing downgraded version to URL: %@. Error: %@", buf, 0x16u);
                  }

                  v143[3] = 10;
                  v53 = v137;
                  v54 = v50;
                  v55 = v53[5];
                  v53[5] = v54;
                }

                else
                {
                  v56 = airdrop_log();
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                  {
                    v58 = [v49 lastPathComponent];
                    *buf = 138412290;
                    v150 = v58;
                    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "asset bundle was downgraded to: %@", buf, 0xCu);
                  }

                  v59 = v49;
                  v55 = [v59 pathExtension];
                  v36 = [v55 isEqual:v94];
                  v32 = v59;
                }
              }
            }

            else
            {
              v42 = 0;
            }
          }

          else
          {
            v42 = 0;
          }

          v118[0] = _NSConcreteStackBlock;
          v118[1] = 3221225472;
          v118[2] = sub_1001ED0AC;
          v118[3] = &unk_1008D3C98;
          v60 = group;
          v119 = v60;
          v61 = v92;
          v120 = v61;
          v62 = v95;
          v121 = v62;
          v63 = v91;
          v122 = v63;
          v64 = v97;
          v123 = v64;
          v65 = objc_retainBlock(v118);
          if (v36 && (v66 = [[PFVideoComplement alloc] initWithBundleAtURL:v32]) != 0)
          {
            if (v86)
            {
              v67 = airdrop_log();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                v68 = [v32 lastPathComponent];
                *buf = 138412290;
                v150 = v68;
                _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "attempting conversion of live photo bundle %@", buf, 0xCu);
              }

              dispatch_group_enter(v60);
              v114[0] = _NSConcreteStackBlock;
              v114[1] = 3221225472;
              v114[2] = sub_1001ED114;
              v114[3] = &unk_1008D3CC0;
              v117 = v146;
              v69 = v32;
              v115 = v69;
              v116 = v64;
              [SDAirDropLegacyHelper convertLivePhotoBundleIfNeeded:v69 capabilities:v61 conversionManager:v62 queue:v85 progressHandler:v63 completionHandler:v114];

              v70 = v115;
            }

            else
            {
              v71 = airdrop_log();
              if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
              {
                v72 = [v32 lastPathComponent];
                *buf = 138412290;
                v150 = v72;
                _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "attempting conversion of extracted photo from live photo bundle %@", buf, 0xCu);
              }

              v70 = [v66 imagePath];
              v73 = [NSURL fileURLWithPath:v70];
              (v65[2])(v65, v73);
            }
          }

          else if ((v42 & 1) == 0)
          {
            (v65[2])(v65, v32);
          }
        }

        v93 = [obj countByEnumeratingWithState:&v125 objects:v153 count:16];
      }

      while (v93);
    }

    v74 = sub_1001F0610();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001ED1D4;
    block[3] = &unk_1008D3D10;
    v104 = group;
    v110 = &v142;
    v109 = v83;
    v111 = &v136;
    v113 = a9;
    v16 = v95;
    v105 = v16;
    v106 = v80;
    v107 = v81;
    v108 = v79;
    v112 = v146;
    v75 = v79;
    v76 = v81;
    v77 = v80;
    v78 = group;
    dispatch_async(v74, block);

    _Block_object_dispose(&v136, 8);
    _Block_object_dispose(&v142, 8);
    _Block_object_dispose(v146, 8);
  }
}

+ (void)convertLivePhotoBundleIfNeeded:(id)a3 capabilities:(id)a4 conversionManager:(id)a5 queue:(id)a6 progressHandler:(id)a7 completionHandler:(id)a8
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001ED5C0;
  v15[3] = &unk_1008D3D38;
  v16 = a6;
  v17 = a8;
  v13 = v17;
  v14 = v16;
  [SDAirDropLegacyHelper convertMediaItemFromURL:a3 forMediaCapabilities:a4 conversionManager:a5 progressHandler:a7 completionHandler:v15];
}

+ (void)convertMediaItemFromURL:(id)a3 forMediaCapabilities:(id)a4 conversionManager:(id)a5 progressHandler:(id)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [PHMediaFormatConversionSource sourceForFileURL:v11];
  v17 = v16;
  if (!v12 || !v16)
  {
    if (!v16)
    {
      goto LABEL_15;
    }

    v24 = airdrop_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v17 fileURL];
      v26 = [v25 lastPathComponent];
      *buf = 138412290;
      v57 = v26;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Assuming no conversion needed for %@", buf, 0xCu);
    }

    v27 = [v17 fileURL];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = v11;
    }

    v30 = v29;

    v31 = [v17 fileType];
    if ([v31 isEqualToString:@"com.apple.live-photo-bundle"])
    {
    }

    else
    {
      v34 = [v17 fileType];
      v35 = [v34 isEqualToString:@"com.apple.private.live-photo-bundle"];

      if (!v35)
      {
        if ([v17 containsVideoWithFormatEligibleForTranscoding])
        {
          v39 = 1;
        }

        else
        {
          v39 = [v17 containsHEIFImage];
        }

        v36 = [NSNumber numberWithInt:v39];
        goto LABEL_31;
      }
    }

    v36 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v17 containsHEIFImage]);
LABEL_31:
    v20 = v36;
    v15[2](v15, v30, 0, v36);
LABEL_32:

    goto LABEL_33;
  }

  v55 = 0;
  v18 = [PHMediaFormatConversionRequest requestForSource:v16 destinationCapabilities:v12 error:&v55];
  v19 = v55;
  v20 = v19;
  if (v18)
  {
    v44 = v14;
    v45 = v13;
    v21 = [v17 fileURL];
    v22 = [v21 lastPathComponent];

    v23 = [v17 fileType];
    if ([v23 isEqualToString:@"com.apple.live-photo-bundle"])
    {
    }

    else
    {
      v37 = [v17 fileType];
      v38 = [v37 isEqualToString:@"com.apple.private.live-photo-bundle"];

      if ((v38 & 1) == 0)
      {
        [v18 setLivePhotoPairingIdentifierBehavior:5];
        v43 = 0;
        goto LABEL_26;
      }
    }

    v43 = 1;
LABEL_26:
    [v18 setUseTransferBehaviorUserPreference:1];
    v40 = airdrop_log();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v57 = v22;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Determining if conversion required for %@", buf, 0xCu);
    }

    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1001EDCA4;
    v46[3] = &unk_1008D3D88;
    v47 = v18;
    v52 = v15;
    v48 = v11;
    v49 = v22;
    v41 = v22;
    v14 = v44;
    v53 = v44;
    v13 = v45;
    v50 = v45;
    v51 = v17;
    v54 = v43;
    v42 = v41;
    v30 = v18;
    [v50 preflightConversionRequest:v30 completionHandler:v46];

    goto LABEL_32;
  }

LABEL_15:
  v32 = [v17 fileURL];
  v20 = v32;
  if (v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = v11;
  }

  v15[2](v15, v33, 0, 0);
LABEL_33:
}

+ (id)convertWideGamutToClampedPhotoForURLs:(id)a3 outTmpDirectory:(id *)a4
{
  v4 = a3;
  v33 = +[NSMutableDictionary dictionary];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v6)
  {
    v7 = v6;
    v40 = 0;
    v8 = *v43;
    v9 = kUTTagClassFilenameExtension;
    v34 = v5;
    v37 = *v43;
    do
    {
      v10 = 0;
      v38 = v7;
      do
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v42 + 1) + 8 * v10);
        v12 = [v11 pathExtension];
        PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(v9, v12, 0);
        if (SFIsImage())
        {
          if (!v40)
          {
            v40 = +[SDAirDropLegacyHelper tmpDirectory];
            if (a4)
            {
              *a4 = v40;
            }
          }

          v14 = [v11 lastPathComponent];
          v15 = [v40 URLByAppendingPathComponent:v14];

          v16 = CGImageSourceCreateWithURL(v11, 0);
          if (v16)
          {
            v17 = v16;
            Type = CGImageSourceGetType(v16);
            v39 = v15;
            v19 = CGImageDestinationCreateWithURL(v15, Type, 1uLL, 0);
            if (v19)
            {
              v20 = v19;
              v48 = kCGImageSourceShouldCache;
              v49 = &__kCFBooleanFalse;
              v21 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
              v22 = CGImageSourceCopyPropertiesAtIndex(v17, 0, v21);

              v36 = [(__CFDictionary *)v22 objectForKeyedSubscript:kCGImagePropertyPixelWidth];
              v23 = [(__CFDictionary *)v22 objectForKeyedSubscript:kCGImagePropertyPixelHeight];
              v46[0] = kCGImageDestinationOptimizeColorForSharing;
              v46[1] = kCGImageDestinationImageMaxPixelSize;
              v47[0] = &__kCFBooleanTrue;
              [v36 floatValue];
              v25 = v24;
              v26 = v23;
              [v23 floatValue];
              if (v25 >= *&v27)
              {
                *&v27 = v25;
              }

              v28 = [NSNumber numberWithFloat:v27];
              v47[1] = v28;
              v29 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:2];

              CGImageDestinationAddImageFromSource(v20, v17, 0, v29);
              LODWORD(v28) = CGImageDestinationFinalize(v20);
              CFRelease(v20);

              v5 = v34;
              CFRelease(v17);
              v15 = v39;
              if (v28)
              {
                v30 = airdrop_log();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Clamped one image", buf, 2u);
                }

                v15 = v39;
                v31 = [SDAirDropLegacyHelper realPathURL:v39];
                [v33 setObject:v31 forKeyedSubscript:v11];
              }
            }

            else
            {
              CFRelease(v17);
            }
          }

          v9 = kUTTagClassFilenameExtension;
          v8 = v37;
          v7 = v38;
        }

        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v7);
  }

  else
  {
    v40 = 0;
  }

  return v33;
}

+ (id)tmpDirectory
{
  v2 = NSHomeDirectory();
  v3 = [NSURL fileURLWithPath:v2 isDirectory:1];

  v10 = 0;
  v4 = sub_1001F1158(v3, &v10);
  v5 = v10;
  v6 = airdrop_log();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 path];
      *buf = 138412290;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "created temporary directory %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1001EFF14();
  }

  return v4;
}

+ (id)preprocessItems:(id)a3 forClientBundleID:(id)a4 receiverIdentifier:(id)a5 receiverSupportsURLs:(BOOL)a6 receiverIsUnknown:(BOOL)a7
{
  v57 = a7;
  v58 = a6;
  v9 = a3;
  v10 = a4;
  v59 = a5;
  v62 = +[NSMutableArray array];
  v63 = +[NSMutableArray array];
  v11 = +[NSMutableArray array];
  v60 = +[NSMutableArray array];
  v12 = objc_alloc_init(SDAirDropPreprocessItemsResult);
  [(SDAirDropPreprocessItemsResult *)v12 setSuccess:1];
  v13 = [v9 count];
  if (v13 >= 1)
  {
    v14 = v13;
    v15 = 0;
    cf2 = kSFNodeProtocolFile;
    p_cb = &OBJC_PROTOCOL___SDXPCUserNotificationInterface.cb;
    while (1)
    {
      if (![(SDAirDropPreprocessItemsResult *)v12 success])
      {
        goto LABEL_78;
      }

      v17 = [v9 objectAtIndexedSubscript:v15];

      v18 = CFURLGetTypeID();
      if (v18 != CFGetTypeID(v17))
      {
        [v11 addObject:v17];
        if (v17)
        {
          [v63 addObject:v17];
        }

        else
        {
          v29 = airdrop_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v69 = 0;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "### Could not create URL from item %@", buf, 0xCu);
          }
        }

        goto LABEL_49;
      }

      v19 = CFURLCopyScheme(v17);
      if (!v19)
      {
        v26 = [v17 absoluteString];
        v27 = [v26 UTF8String];

        v28 = airdrop_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v69 = v27;
          _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "SDAirDropClient: splitOutFileURLs url %s has no scheme", buf, 0xCu);
        }

        [(SDAirDropPreprocessItemsResult *)v12 setSuccess:0];
        goto LABEL_49;
      }

      v20 = v19;
      if (CFEqual(v19, cf2))
      {
        v21 = v17;
        v22 = [v21 pathExtension];
        v23 = [v22 isEqualToString:@"webloc"];

        if (v23)
        {
          v24 = [SDAirDropLegacyHelper webURLFromInternetLocationFile:v21];
          if (v24)
          {
            [v11 addObject:v24];
            v25 = [NSURL URLWithString:v24];
            if (v25)
            {
              [v63 addObject:v25];
            }

            else
            {
              v54 = v10;
              v39 = airdrop_log();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v69 = v24;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "### Could not create URL from webloc string: %@", buf, 0xCu);
              }

              v10 = v54;
            }
          }

          else
          {
            [v62 addObject:v21];
          }
        }

        else
        {
          [v62 addObject:v21];
        }

        p_cb = (&OBJC_PROTOCOL___SDXPCUserNotificationInterface + 64);
        goto LABEL_39;
      }

      v30 = (*(p_cb + 304))();
      if (v30)
      {
        v31 = v30;
        v32 = (*(p_cb + 304))();
        v33 = CFEqual(v20, v32);

        if (v33)
        {
          break;
        }
      }

      if (v58 && (+[SDStatusMonitor sharedMonitor](SDStatusMonitor, "sharedMonitor"), v36 = objc_claimAutoreleasedReturnValue(), v37 = [v36 enableWebloc], v36, (v37 & 1) == 0))
      {
        [v11 addObject:CFURLGetString(v17)];
        if (!v17)
        {
          v47 = airdrop_log();
          p_cb = (&OBJC_PROTOCOL___SDXPCUserNotificationInterface + 64);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v69 = 0;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "### Could not create URL from item %@", buf, 0xCu);
          }

          goto LABEL_48;
        }

        [v63 addObject:v17];
      }

      else
      {
        v38 = [SDAirDropLegacyHelper internetLocationFile:v17];
        if (v38)
        {
          [v62 addObject:v38];
          [v60 addObject:v38];
        }

        else
        {
          v40 = airdrop_log();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            sub_1001EFFC4(&v64, v65, v40);
          }

          [(SDAirDropPreprocessItemsResult *)v12 setSuccess:0];
        }
      }

      p_cb = (&OBJC_PROTOCOL___SDXPCUserNotificationInterface + 64);
LABEL_48:
      CFRelease(v20);
LABEL_49:
      if (v14 == ++v15)
      {
        goto LABEL_78;
      }
    }

    v34 = airdrop_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Found Credential to AirDrop", buf, 2u);
    }

    p_cb = (&OBJC_PROTOCOL___SDXPCUserNotificationInterface + 64);
    if ((SFIsAllowedAirDropCredentialClient() & 1) == 0)
    {
      v35 = airdrop_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v69 = v10;
        _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "### Sending credentials from %@ is not permitted", buf, 0xCu);
      }

      goto LABEL_42;
    }

    if (v57)
    {
      v35 = airdrop_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_1001EFF84(&v66, v67, v35);
      }

LABEL_42:

      [(SDAirDropPreprocessItemsResult *)v12 setSuccess:0];
      goto LABEL_48;
    }

    v21 = SFSharablePasswordForURL();
    if (v59)
    {
      v41 = [SDAirDropLegacyHelper copyReceiverPublicKeyForIdentifier:?];
      if (v41 && (v42 = v41, SFSharablePasswordAirDropURLEncryptedString(), v43 = objc_claimAutoreleasedReturnValue(), v44 = v42, v45 = v43, CFRelease(v44), v45))
      {
        if ([v45 length])
        {
          [v11 addObject:v45];
          v55 = v45;
          v46 = [NSURL URLWithString:v45];
          if (v46)
          {
            [v63 addObject:v46];
          }

          else
          {
            v52 = airdrop_log();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v69 = v55;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "### Could not create URL from credential string: %@", buf, 0xCu);
            }

            p_cb = (&OBJC_PROTOCOL___SDXPCUserNotificationInterface + 64);
          }

          v51 = v55;
LABEL_72:

LABEL_39:
          goto LABEL_48;
        }

        v56 = v21;
        v48 = v45;
      }

      else
      {
        v56 = v21;
        v48 = 0;
      }

      v49 = airdrop_log();
      if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
LABEL_71:

        [(SDAirDropPreprocessItemsResult *)v12 setSuccess:0];
        v51 = v48;
        v21 = v56;
        goto LABEL_72;
      }
    }

    else
    {
      v50 = airdrop_log();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Skipping extra encrypt due to lack of identifier", buf, 2u);
      }

      v51 = SFSharablePasswordAirDropUnencryptedURL();
      if (v51)
      {
        [v63 addObject:v51];
        goto LABEL_72;
      }

      v56 = v21;
      v48 = 0;
      v49 = airdrop_log();
      if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_71;
      }
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "### No credential URL to AirDrop?", buf, 2u);
    goto LABEL_71;
  }

LABEL_78:
  if ([(SDAirDropPreprocessItemsResult *)v12 success])
  {
    [(SDAirDropPreprocessItemsResult *)v12 setFiles:v62];
    [(SDAirDropPreprocessItemsResult *)v12 setLinks:v63];
    [(SDAirDropPreprocessItemsResult *)v12 setOtherStuff:v11];
    [(SDAirDropPreprocessItemsResult *)v12 setFilesToCleanup:v60];
  }

  return v12;
}

+ (id)temporaryWeblocURL:(__CFURL *)a3
{
  v4 = sub_1001F1724(0, 65537);
  if (v4)
  {
    v5 = v4;
    v6 = CFURLCopyHostName(a3);
    if (v6)
    {
      v7 = v6;
      MutableCopy = CFStringCreateMutableCopy(0, 0, v6);
      if (!CFStringHasSuffix(MutableCopy, @"."))
      {
        CFStringTrim(MutableCopy, @".");
      }

      v19.length = CFStringGetLength(MutableCopy);
      v19.location = 0;
      CFStringFindAndReplace(MutableCopy, @".", @"-", v19, 0);
      v9 = CFStringCreateWithFormat(0, 0, @"%@.webloc", MutableCopy);
      if (v9)
      {
        v10 = v9;
        v11 = CFURLCreateWithFileSystemPathRelativeToBase(0, v9, kCFURLPOSIXPathStyle, 0, v5);
        if (v11)
        {
          v12 = v11;
          v13 = CFURLCopyAbsoluteURL(v11);
          CFRelease(v12);
        }

        else
        {
          v16 = airdrop_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_1001F0004();
          }

          v13 = 0;
        }

        CFRelease(v10);
      }

      else
      {
        v13 = 0;
      }

      CFRelease(MutableCopy);
      CFRelease(v7);
    }

    else
    {
      v15 = airdrop_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1001F0040();
      }

      v13 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v14 = airdrop_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1001F007C();
    }

    v13 = 0;
  }

  return v13;
}

+ (id)internetLocationFile:(__CFURL *)a3
{
  v4 = [SDAirDropLegacyHelper temporaryWeblocURL:?];
  if (v4)
  {
    v5 = CFURLGetString(a3);
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(Mutable, @"URL", v5);
    v7 = CFWriteStreamCreateWithFile(0, v4);
    if (v7)
    {
      v8 = v7;
      if (CFWriteStreamOpen(v7))
      {
        error = 0;
        if (!CFPropertyListWrite(Mutable, v8, kCFPropertyListBinaryFormat_v1_0, 0, &error))
        {
          v9 = airdrop_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_1001F00B8(&error);
          }

          CFRelease(error);
        }

        CFWriteStreamClose(v8);
      }

      else
      {
        v11 = airdrop_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1001F0130();
        }
      }

      CFRelease(v8);
    }

    else
    {
      v10 = airdrop_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1001F016C();
      }
    }

    CFRelease(Mutable);
  }

  return v4;
}

+ (id)webURLFromInternetLocationFile:(id)a3
{
  v3 = [NSData dataWithContentsOfURL:a3];
  v4 = [NSPropertyListSerialization propertyListWithData:v3 options:0 format:0 error:0];

  v5 = [v4 objectForKeyedSubscript:@"URL"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  return v6;
}

+ (__SecKey)copyReceiverPublicKeyForIdentifier:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v8 = airdrop_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001F0220();
    }

    goto LABEL_12;
  }

  v4 = +[SDStatusMonitor sharedMonitor];
  v5 = [v4 copyCertificateForRealName:v3];

  if (!v5)
  {
    v8 = airdrop_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001F01E4();
    }

LABEL_12:

    v6 = 0;
    goto LABEL_13;
  }

  v6 = SecCertificateCopyKey(v5);
  if (!v6)
  {
    v7 = airdrop_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001F01A8();
    }
  }

  CFRelease(v5);
LABEL_13:

  return v6;
}

+ (void)presentEnableRadiosAlertForBluetooth:(BOOL)a3 andWLAN:(BOOL)a4
{
  v4 = a4;
  v6 = objc_opt_new();
  v7 = SFLocalizedStringForKey();
  [v6 setTitle:v7];

  if (a3 || v4)
  {
    v8 = SFLocalizedStringForKey();
    [v6 setMessage:v8];
  }

  v9 = SFLocalizedStringForKey();
  [v6 setDefaultButtonTitle:v9];

  v10 = SFLocalizedStringForKey();
  [v6 setAlternateButtonTitle:v10];

  objc_initWeak(&location, v6);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001EF7FC;
  v15[3] = &unk_1008D3DB0;
  v17 = v4;
  v18 = a3;
  objc_copyWeak(&v16, &location);
  [v6 setResponseHandler:v15];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001EF92C;
  v13[3] = &unk_1008D2B80;
  objc_copyWeak(&v14, &location);
  [v6 setErrorHandler:v13];
  v11 = airdrop_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Asking user to enable radios", v12, 2u);
  }

  [v6 present];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

@end