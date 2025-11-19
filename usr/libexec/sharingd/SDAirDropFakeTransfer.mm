@interface SDAirDropFakeTransfer
+ (id)sharedFakeTransfer;
- (SDAirDropFakeTransfer)init;
- (id)createBlockToPerformBlockOnMainQueue:(id)a3 withDelay:(float)a4;
- (id)generateFakeTransferDataFromBundleID:(id)a3 files:(id)a4 items:(id)a5 itemsDescription:(id)a6;
- (id)writeDataToFile:(id)a3 ofType:(id)a4;
- (void)addProgressPropertiesWithBytesCopied:(int64_t)a3 totalBytes:(int64_t)a4 timeRemaining:(int64_t)a5 filesCopied:(int64_t)a6 toFakeTransferData:(id)a7;
- (void)setDebugModeEnabled:(BOOL)a3;
- (void)startFakeTransferInCategory:(int64_t)a3 ofType:(int64_t)a4;
- (void)startFakeTransferWithItemSources:(id)a3;
- (void)startFakeTransferWithItems:(id)a3 fromBundleID:(id)a4 withItemsDescription:(id)a5 previewImage:(id)a6 desiredDuration:(float)a7 totalBytes:(int64_t)a8;
@end

@implementation SDAirDropFakeTransfer

+ (id)sharedFakeTransfer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001152B0;
  block[3] = &unk_1008CF110;
  block[4] = a1;
  if (qword_100989DB0 != -1)
  {
    dispatch_once(&qword_100989DB0, block);
  }

  v2 = qword_100989DA8;

  return v2;
}

- (SDAirDropFakeTransfer)init
{
  v9.receiver = self;
  v9.super_class = SDAirDropFakeTransfer;
  v2 = [(SDAirDropFakeTransfer *)&v9 init];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = [NSBundle bundleWithPath:@"/AppleInternal/Applications/SharingDemo.app"];
  bundle = v2->_bundle;
  v2->_bundle = v3;

  if (!v2->_bundle)
  {
    goto LABEL_7;
  }

  v5 = +[SDStatusMonitor sharedMonitor];
  if (([v5 enableDebugMode] & 1) == 0)
  {

    goto LABEL_7;
  }

  v6 = IsAppleInternalBuild();

  if (!v6)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

LABEL_5:
  v7 = v2;
LABEL_8:

  return v7;
}

- (void)setDebugModeEnabled:(BOOL)a3
{
  if (self->_debugModeEnabled != a3)
  {
    self->_debugModeEnabled = a3;
    if (a3)
    {
      if ([&off_100910010 count])
      {
        v4 = 0;
        do
        {
          if (v4 <= 8)
          {
            v5 = [off_1008D0C20[v4] count];
            if (v5 >= 1)
            {
              v6 = v5;
              for (i = 0; i != v6; ++i)
              {
                v8 = [NSString stringWithFormat:@"%ld.%ld", v4, i];
                v9 = [@"com.apple.sharingd.fake.transfer." stringByAppendingString:v8];
                v10 = airdrop_log();
                if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v14 = v9;
                  _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "fakeTransfer notification observer %@", buf, 0xCu);
                }

                DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
                CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1001155B4, v9, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
              }
            }
          }

          ++v4;
        }

        while (v4 < [&off_100910010 count]);
      }
    }

    else
    {
      v12 = CFNotificationCenterGetDarwinNotifyCenter();

      CFNotificationCenterRemoveEveryObserver(v12, self);
    }
  }
}

- (void)startFakeTransferInCategory:(int64_t)a3 ofType:(int64_t)a4
{
  v6 = [SDASharedItemsFactory sharedItemsInCategory:"sharedItemsInCategory:ofType:" ofType:?];
  v7 = v6;
  v30 = a3;
  if ((a3 - 7) < 2)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v32 objects:v40 count:{16, a3}];
    if (!v8)
    {
      goto LABEL_25;
    }

    v9 = v8;
    v10 = *v33;
    while (1)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = [v12 data];

        if (v13)
        {
          v14 = [v12 data];
          v15 = [v12 uti];
          v16 = [(SDAirDropFakeTransfer *)self writeDataToFile:v14 ofType:v15];

          goto LABEL_11;
        }

        v17 = [v12 string];

        if (v17)
        {
          v18 = [v12 string];
          v14 = [v18 dataUsingEncoding:4];

          v16 = [(SDAirDropFakeTransfer *)self writeDataToFile:v14 ofType:kUTTypePlainText];
LABEL_11:

          if (v16)
          {
            goto LABEL_13;
          }
        }

        v16 = [v12 URL];
LABEL_13:
        [v12 setURL:v16];

        [v12 setData:0];
        [v12 setUti:0];
        [v12 setString:0];
      }

      v9 = [v7 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (!v9)
      {
        goto LABEL_25;
      }
    }
  }

  if (a3 == 2 && (a4 - 3) <= 4)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v19 = [v6 countByEnumeratingWithState:&v36 objects:v43 count:{16, a3}];
    if (v19)
    {
      v20 = v19;
      v21 = *v37;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(v7);
          }

          v23 = *(*(&v36 + 1) + 8 * j);
          v41[0] = @"SFAirDropActivitySubjectMain";
          v24 = [v23 subject];
          v41[1] = @"SFAirDropActivitySubjectiTunesStoreLinkType";
          v42[0] = v24;
          v25 = [NSNumber numberWithInteger:a4 - 2];
          v42[1] = v25;
          v26 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:2];

          v27 = [NSJSONSerialization dataWithJSONObject:v26 options:0 error:0];
          v28 = [[NSString alloc] initWithData:v27 encoding:4];
          [v23 setSubject:v28];
        }

        v20 = [v7 countByEnumeratingWithState:&v36 objects:v43 count:16];
      }

      while (v20);
    }
  }

LABEL_25:
  if (v7)
  {
    [(SDAirDropFakeTransfer *)self startFakeTransferWithItemSources:v7];
  }

  else
  {
    v29 = airdrop_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_100117000(v30, a4, v29);
    }
  }
}

- (void)startFakeTransferWithItemSources:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForKeyPath:@"@sum.fakeDuration"];
  [v5 floatValue];
  v7 = v6;

  v8 = [v4 valueForKeyPath:@"@sum.fakeBytes"];
  v9 = [v8 longLongValue];

  v15 = [v4 objectAtIndexedSubscript:0];
  v10 = [SDASharedItemsFactory plainItemsFromItemSources:v4];

  v11 = [v15 fakeBundleID];
  v12 = [v15 subject];
  v13 = [v15 previewImage];
  LODWORD(v14) = v7;
  [(SDAirDropFakeTransfer *)self startFakeTransferWithItems:v10 fromBundleID:v11 withItemsDescription:v12 previewImage:v13 desiredDuration:v9 totalBytes:v14];
}

- (void)startFakeTransferWithItems:(id)a3 fromBundleID:(id)a4 withItemsDescription:(id)a5 previewImage:(id)a6 desiredDuration:(float)a7 totalBytes:(int64_t)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = [v13 firstObject];
  v18 = [v17 isFileURL];

  v19 = +[NSUUID UUID];
  v20 = [v19 UUIDString];

  v21 = sub_1001F17F4();
  if (v21)
  {
    v22 = v21;
    v70 = v18;
    v69 = self;
    v23 = [v21 URLByAppendingPathComponent:@"com.apple.AirDrop" isDirectory:1];

    v24 = [v23 URLByAppendingPathComponent:v20 isDirectory:1];

    v25 = [NSProgress alloc];
    v72 = [v25 sf_initWithFileURL:v24];

    v26 = [v24 URLByAppendingPathComponent:@"Files" isDirectory:1];

    v123 = NSFileProtectionKey;
    v124 = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v27 = [NSDictionary dictionaryWithObjects:&v124 forKeys:&v123 count:1];
    v28 = +[NSFileManager defaultManager];
    v117 = 0;
    log = v26;
    v71 = v27;
    LODWORD(v26) = [v28 createDirectoryAtURL:v26 withIntermediateDirectories:1 attributes:v27 error:&v117];
    v29 = v117;

    if (!v26)
    {
      v44 = airdrop_log();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        sub_100117088(v29, v44);
      }

      goto LABEL_31;
    }

    v64 = v13;
    v65 = v20;
    v67 = v15;
    v68 = v14;
    v66 = v16;
    if (v70)
    {
      v75 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v13 count]);
      v113 = 0u;
      v114 = 0u;
      v115 = 0u;
      v116 = 0u;
      obj = v13;
      v30 = [obj countByEnumeratingWithState:&v113 objects:v122 count:16];
      if (v30)
      {
        v31 = v30;
        v73 = 0;
        v32 = *v114;
        do
        {
          for (i = 0; i != v31; i = i + 1)
          {
            if (*v114 != v32)
            {
              objc_enumerationMutation(obj);
            }

            v34 = *(*(&v113 + 1) + 8 * i);
            v35 = [v34 lastPathComponent];
            v36 = [log URLByAppendingPathComponent:v35 isDirectory:0];

            v37 = +[NSFileManager defaultManager];
            v112 = v29;
            v38 = [v37 copyItemAtURL:v34 toURL:v36 error:&v112];
            v39 = v112;

            if (v38)
            {
              [v75 addObject:v36];
              v40 = +[NSFileManager defaultManager];
              v41 = [v36 path];
              v111 = v39;
              v42 = [v40 attributesOfItemAtPath:v41 error:&v111];
              v29 = v111;

              v43 = [v42 objectForKeyedSubscript:NSFileSize];
              a8 += [v43 longLongValue];
            }

            else
            {
              v42 = airdrop_log();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v119 = v34;
                v120 = 2112;
                v121 = v39;
                _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "startFakeTransferWithItems copyItemAtURL %@ failed %@", buf, 0x16u);
              }

              v73 = 1;
              v29 = v39;
            }
          }

          v31 = [obj countByEnumeratingWithState:&v113 objects:v122 count:16];
        }

        while (v31);
      }

      else
      {
        v73 = 0;
      }

      v44 = [v75 copy];
      if (v73)
      {
        goto LABEL_30;
      }

      v13 = &__NSArray0__struct;
      v15 = v67;
      v14 = v68;
      v20 = v65;
      v16 = v66;
    }

    else
    {
      v44 = &__NSArray0__struct;
    }

    v45 = objc_alloc_init(NSOperationQueue);
    [v45 setMaxConcurrentOperationCount:1];
    [v45 setSuspended:1];
    v109[0] = _NSConcreteStackBlock;
    v109[1] = 3221225472;
    v109[2] = sub_100116478;
    v109[3] = &unk_1008CDEA0;
    v46 = v45;
    v110 = v46;
    [v72 setCancellationHandler:v109];
    v74 = v44;
    [(SDAirDropFakeTransfer *)v69 generateFakeTransferDataFromBundleID:v14 files:v44 items:v13 itemsDescription:v15];
    v104[0] = _NSConcreteStackBlock;
    v104[1] = 3221225472;
    v104[2] = sub_100116480;
    obja = v104[3] = &unk_1008CE158;
    v105 = obja;
    v106 = v16;
    v107 = v69;
    v76 = v20;
    v108 = v76;
    v47 = [(SDAirDropFakeTransfer *)v69 createBlockToPerformBlockOnMainQueue:v104 withDelay:0.0];
    [v46 addOperationWithBlock:v47];

    v101[0] = _NSConcreteStackBlock;
    v101[1] = 3221225472;
    v101[2] = sub_10011650C;
    v101[3] = &unk_1008CFD30;
    v48 = v72;
    v102 = v48;
    v103 = a8;
    v49 = [(SDAirDropFakeTransfer *)v69 createBlockToPerformBlockOnMainQueue:v101 withDelay:0.0];
    v50 = v46;
    [v46 addOperationWithBlock:v49];

    v51 = a8;
    v52 = (a7 + a7);
    if (v52 >= 1)
    {
      v53 = (a8 / v52);
      v54 = 1;
      do
      {
        v91[0] = _NSConcreteStackBlock;
        v91[1] = 3221225472;
        v91[2] = sub_100116560;
        v91[3] = &unk_1008D0B68;
        v96 = v53;
        v98 = v54;
        v99 = a7;
        v100 = 1056964608;
        v92 = v48;
        v93 = obja;
        v94 = v69;
        v97 = v51;
        v95 = v76;
        LODWORD(v55) = 0.5;
        v56 = [(SDAirDropFakeTransfer *)v69 createBlockToPerformBlockOnMainQueue:v91 withDelay:v55];
        [v50 addOperationWithBlock:v56];

        v51 = a8;
        ++v54;
        --v52;
      }

      while (v52);
    }

    v83[0] = _NSConcreteStackBlock;
    v83[1] = 3221225472;
    v83[2] = sub_100116650;
    v83[3] = &unk_1008D0B90;
    v57 = v48;
    v84 = v57;
    v85 = obja;
    v89 = v51;
    v86 = v69;
    v90 = v70;
    v44 = v74;
    v87 = v44;
    v88 = v76;
    v58 = obja;
    LODWORD(v59) = 0.5;
    v60 = [(SDAirDropFakeTransfer *)v69 createBlockToPerformBlockOnMainQueue:v83 withDelay:v59];
    v61 = v50;
    [v50 addOperationWithBlock:v60];

    v81[0] = _NSConcreteStackBlock;
    v81[1] = 3221225472;
    v81[2] = sub_100116704;
    v81[3] = &unk_1008CDEA0;
    v82 = v57;
    LODWORD(v62) = 2.0;
    v63 = [(SDAirDropFakeTransfer *)v69 createBlockToPerformBlockOnMainQueue:v81 withDelay:v62];
    [v61 addOperationWithBlock:v63];

    [v61 setSuspended:0];
LABEL_30:
    v13 = v64;
    v20 = v65;
    v15 = v67;
    v14 = v68;
    v16 = v66;
LABEL_31:

    goto LABEL_32;
  }

  log = airdrop_log();
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_100117100(log);
  }

  v29 = 0;
LABEL_32:
}

- (id)writeDataToFile:(id)a3 ofType:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = UTTypeCopyPreferredTagWithClass(v5, kUTTagClassFilenameExtension);
  v8 = UTTypeCopyDescription(v5);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  v11 = +[NSUUID UUID];
  v12 = [v11 UUIDString];
  v13 = [NSString stringWithFormat:@"%@-%@.%@", v10, v12, v7];

  v14 = NSTemporaryDirectory();
  v15 = [v14 stringByAppendingPathComponent:v13];
  [v6 writeToFile:v15 atomically:1];

  v16 = [NSURL fileURLWithPath:v15];

  return v16;
}

- (id)createBlockToPerformBlockOnMainQueue:(id)a3 withDelay:(float)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100116904;
  v7[3] = &unk_1008D0BE0;
  v9 = a4;
  v8 = a3;
  v4 = v8;
  v5 = objc_retainBlock(v7);

  return v5;
}

- (id)generateFakeTransferDataFromBundleID:(id)a3 files:(id)a4 items:(id)a5 itemsDescription:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[NSMutableDictionary dictionary];
  [v13 setObject:v9 forKeyedSubscript:kSFOperationBundleIDKey];
  v14 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v10;
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v25 + 1) + 8 * i);
        v21 = SFGenerateFileInfoForURL();
        [v14 addObject:{v21, v25}];
      }

      v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v17);
  }

  v22 = [v14 copy];
  [v13 setObject:v22 forKeyedSubscript:kSFOperationFilesKey];

  [v13 setObject:v11 forKeyedSubscript:kSFOperationItemsKey];
  v23 = [v12 copy];
  [v13 setObject:v23 forKeyedSubscript:kSFOperationItemsDescriptionKey];

  [v13 setObject:@"John's iPhone" forKeyedSubscript:kSFOperationSenderComputerNameKey];
  [v13 setObject:@"john_doe86@icloud.com" forKeyedSubscript:kSFOperationSenderEmailKey];
  [v13 setObject:@"John" forKeyedSubscript:kSFOperationSenderFirstNameKey];
  [v13 setObject:@"7g63429g1d7d" forKeyedSubscript:kSFOperationSenderIDKey];
  [v13 setObject:@"Doe" forKeyedSubscript:kSFOperationSenderLastNameKey];
  [v13 setObject:@"John Doe" forKeyedSubscript:kSFOperationSenderCompositeNameKey];
  [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:kSFOperationVerifiableIdentityKey];

  return v13;
}

- (void)addProgressPropertiesWithBytesCopied:(int64_t)a3 totalBytes:(int64_t)a4 timeRemaining:(int64_t)a5 filesCopied:(int64_t)a6 toFakeTransferData:(id)a7
{
  v11 = a7;
  [v11 setObject:@"application/x-cpio" forKeyedSubscript:@"Content-Type"];
  v12 = [NSNumber numberWithLongLong:a3];
  [v11 setObject:v12 forKeyedSubscript:kSFOperationBytesCopiedKey];

  v13 = [NSNumber numberWithLongLong:a4];
  [v11 setObject:v13 forKeyedSubscript:kSFOperationTotalBytesKey];

  v14 = [NSNumber numberWithInteger:a5];
  [v11 setObject:v14 forKeyedSubscript:kSFOperationTimeRemainingKey];

  v15 = [NSNumber numberWithInteger:a6];
  [v11 setObject:v15 forKeyedSubscript:kSFOperationFilesCopiedKey];
}

@end