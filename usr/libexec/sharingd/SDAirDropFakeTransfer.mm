@interface SDAirDropFakeTransfer
+ (id)sharedFakeTransfer;
- (SDAirDropFakeTransfer)init;
- (id)createBlockToPerformBlockOnMainQueue:(id)queue withDelay:(float)delay;
- (id)generateFakeTransferDataFromBundleID:(id)d files:(id)files items:(id)items itemsDescription:(id)description;
- (id)writeDataToFile:(id)file ofType:(id)type;
- (void)addProgressPropertiesWithBytesCopied:(int64_t)copied totalBytes:(int64_t)bytes timeRemaining:(int64_t)remaining filesCopied:(int64_t)filesCopied toFakeTransferData:(id)data;
- (void)setDebugModeEnabled:(BOOL)enabled;
- (void)startFakeTransferInCategory:(int64_t)category ofType:(int64_t)type;
- (void)startFakeTransferWithItemSources:(id)sources;
- (void)startFakeTransferWithItems:(id)items fromBundleID:(id)d withItemsDescription:(id)description previewImage:(id)image desiredDuration:(float)duration totalBytes:(int64_t)bytes;
@end

@implementation SDAirDropFakeTransfer

+ (id)sharedFakeTransfer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001152B0;
  block[3] = &unk_1008CF110;
  block[4] = self;
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

- (void)setDebugModeEnabled:(BOOL)enabled
{
  if (self->_debugModeEnabled != enabled)
  {
    self->_debugModeEnabled = enabled;
    if (enabled)
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

- (void)startFakeTransferInCategory:(int64_t)category ofType:(int64_t)type
{
  v6 = [SDASharedItemsFactory sharedItemsInCategory:"sharedItemsInCategory:ofType:" ofType:?];
  v7 = v6;
  categoryCopy = category;
  if ((category - 7) < 2)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v32 objects:v40 count:{16, category}];
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
        data = [v12 data];

        if (data)
        {
          data2 = [v12 data];
          v15 = [v12 uti];
          v16 = [(SDAirDropFakeTransfer *)self writeDataToFile:data2 ofType:v15];

          goto LABEL_11;
        }

        string = [v12 string];

        if (string)
        {
          string2 = [v12 string];
          data2 = [string2 dataUsingEncoding:4];

          v16 = [(SDAirDropFakeTransfer *)self writeDataToFile:data2 ofType:kUTTypePlainText];
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

  if (category == 2 && (type - 3) <= 4)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v19 = [v6 countByEnumeratingWithState:&v36 objects:v43 count:{16, category}];
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
          subject = [v23 subject];
          v41[1] = @"SFAirDropActivitySubjectiTunesStoreLinkType";
          v42[0] = subject;
          v25 = [NSNumber numberWithInteger:type - 2];
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
      sub_100117000(categoryCopy, type, v29);
    }
  }
}

- (void)startFakeTransferWithItemSources:(id)sources
{
  sourcesCopy = sources;
  v5 = [sourcesCopy valueForKeyPath:@"@sum.fakeDuration"];
  [v5 floatValue];
  v7 = v6;

  v8 = [sourcesCopy valueForKeyPath:@"@sum.fakeBytes"];
  longLongValue = [v8 longLongValue];

  v15 = [sourcesCopy objectAtIndexedSubscript:0];
  v10 = [SDASharedItemsFactory plainItemsFromItemSources:sourcesCopy];

  fakeBundleID = [v15 fakeBundleID];
  subject = [v15 subject];
  previewImage = [v15 previewImage];
  LODWORD(v14) = v7;
  [(SDAirDropFakeTransfer *)self startFakeTransferWithItems:v10 fromBundleID:fakeBundleID withItemsDescription:subject previewImage:previewImage desiredDuration:longLongValue totalBytes:v14];
}

- (void)startFakeTransferWithItems:(id)items fromBundleID:(id)d withItemsDescription:(id)description previewImage:(id)image desiredDuration:(float)duration totalBytes:(int64_t)bytes
{
  itemsCopy = items;
  dCopy = d;
  descriptionCopy = description;
  imageCopy = image;
  firstObject = [itemsCopy firstObject];
  isFileURL = [firstObject isFileURL];

  v19 = +[NSUUID UUID];
  uUIDString = [v19 UUIDString];

  v21 = sub_1001F17F4();
  if (v21)
  {
    v22 = v21;
    v70 = isFileURL;
    selfCopy = self;
    v23 = [v21 URLByAppendingPathComponent:@"com.apple.AirDrop" isDirectory:1];

    v24 = [v23 URLByAppendingPathComponent:uUIDString isDirectory:1];

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

    v64 = itemsCopy;
    v65 = uUIDString;
    v67 = descriptionCopy;
    v68 = dCopy;
    v66 = imageCopy;
    if (v70)
    {
      v75 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [itemsCopy count]);
      v113 = 0u;
      v114 = 0u;
      v115 = 0u;
      v116 = 0u;
      obj = itemsCopy;
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
            lastPathComponent = [v34 lastPathComponent];
            v36 = [log URLByAppendingPathComponent:lastPathComponent isDirectory:0];

            v37 = +[NSFileManager defaultManager];
            v112 = v29;
            v38 = [v37 copyItemAtURL:v34 toURL:v36 error:&v112];
            v39 = v112;

            if (v38)
            {
              [v75 addObject:v36];
              v40 = +[NSFileManager defaultManager];
              path = [v36 path];
              v111 = v39;
              v42 = [v40 attributesOfItemAtPath:path error:&v111];
              v29 = v111;

              v43 = [v42 objectForKeyedSubscript:NSFileSize];
              bytes += [v43 longLongValue];
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

      itemsCopy = &__NSArray0__struct;
      descriptionCopy = v67;
      dCopy = v68;
      uUIDString = v65;
      imageCopy = v66;
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
    [(SDAirDropFakeTransfer *)selfCopy generateFakeTransferDataFromBundleID:dCopy files:v44 items:itemsCopy itemsDescription:descriptionCopy];
    v104[0] = _NSConcreteStackBlock;
    v104[1] = 3221225472;
    v104[2] = sub_100116480;
    obja = v104[3] = &unk_1008CE158;
    v105 = obja;
    v106 = imageCopy;
    v107 = selfCopy;
    v76 = uUIDString;
    v108 = v76;
    v47 = [(SDAirDropFakeTransfer *)selfCopy createBlockToPerformBlockOnMainQueue:v104 withDelay:0.0];
    [v46 addOperationWithBlock:v47];

    v101[0] = _NSConcreteStackBlock;
    v101[1] = 3221225472;
    v101[2] = sub_10011650C;
    v101[3] = &unk_1008CFD30;
    v48 = v72;
    v102 = v48;
    bytesCopy = bytes;
    v49 = [(SDAirDropFakeTransfer *)selfCopy createBlockToPerformBlockOnMainQueue:v101 withDelay:0.0];
    v50 = v46;
    [v46 addOperationWithBlock:v49];

    bytesCopy3 = bytes;
    v52 = (duration + duration);
    if (v52 >= 1)
    {
      v53 = (bytes / v52);
      v54 = 1;
      do
      {
        v91[0] = _NSConcreteStackBlock;
        v91[1] = 3221225472;
        v91[2] = sub_100116560;
        v91[3] = &unk_1008D0B68;
        v96 = v53;
        v98 = v54;
        durationCopy = duration;
        v100 = 1056964608;
        v92 = v48;
        v93 = obja;
        v94 = selfCopy;
        v97 = bytesCopy3;
        v95 = v76;
        LODWORD(v55) = 0.5;
        v56 = [(SDAirDropFakeTransfer *)selfCopy createBlockToPerformBlockOnMainQueue:v91 withDelay:v55];
        [v50 addOperationWithBlock:v56];

        bytesCopy3 = bytes;
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
    v89 = bytesCopy3;
    v86 = selfCopy;
    v90 = v70;
    v44 = v74;
    v87 = v44;
    v88 = v76;
    v58 = obja;
    LODWORD(v59) = 0.5;
    v60 = [(SDAirDropFakeTransfer *)selfCopy createBlockToPerformBlockOnMainQueue:v83 withDelay:v59];
    v61 = v50;
    [v50 addOperationWithBlock:v60];

    v81[0] = _NSConcreteStackBlock;
    v81[1] = 3221225472;
    v81[2] = sub_100116704;
    v81[3] = &unk_1008CDEA0;
    v82 = v57;
    LODWORD(v62) = 2.0;
    v63 = [(SDAirDropFakeTransfer *)selfCopy createBlockToPerformBlockOnMainQueue:v81 withDelay:v62];
    [v61 addOperationWithBlock:v63];

    [v61 setSuspended:0];
LABEL_30:
    itemsCopy = v64;
    uUIDString = v65;
    descriptionCopy = v67;
    dCopy = v68;
    imageCopy = v66;
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

- (id)writeDataToFile:(id)file ofType:(id)type
{
  typeCopy = type;
  fileCopy = file;
  v7 = UTTypeCopyPreferredTagWithClass(typeCopy, kUTTagClassFilenameExtension);
  v8 = UTTypeCopyDescription(typeCopy);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = typeCopy;
  }

  v11 = +[NSUUID UUID];
  uUIDString = [v11 UUIDString];
  v13 = [NSString stringWithFormat:@"%@-%@.%@", v10, uUIDString, v7];

  v14 = NSTemporaryDirectory();
  v15 = [v14 stringByAppendingPathComponent:v13];
  [fileCopy writeToFile:v15 atomically:1];

  v16 = [NSURL fileURLWithPath:v15];

  return v16;
}

- (id)createBlockToPerformBlockOnMainQueue:(id)queue withDelay:(float)delay
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100116904;
  v7[3] = &unk_1008D0BE0;
  delayCopy = delay;
  queueCopy = queue;
  v4 = queueCopy;
  v5 = objc_retainBlock(v7);

  return v5;
}

- (id)generateFakeTransferDataFromBundleID:(id)d files:(id)files items:(id)items itemsDescription:(id)description
{
  dCopy = d;
  filesCopy = files;
  itemsCopy = items;
  descriptionCopy = description;
  v13 = +[NSMutableDictionary dictionary];
  [v13 setObject:dCopy forKeyedSubscript:kSFOperationBundleIDKey];
  v14 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [filesCopy count]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = filesCopy;
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

  [v13 setObject:itemsCopy forKeyedSubscript:kSFOperationItemsKey];
  v23 = [descriptionCopy copy];
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

- (void)addProgressPropertiesWithBytesCopied:(int64_t)copied totalBytes:(int64_t)bytes timeRemaining:(int64_t)remaining filesCopied:(int64_t)filesCopied toFakeTransferData:(id)data
{
  dataCopy = data;
  [dataCopy setObject:@"application/x-cpio" forKeyedSubscript:@"Content-Type"];
  v12 = [NSNumber numberWithLongLong:copied];
  [dataCopy setObject:v12 forKeyedSubscript:kSFOperationBytesCopiedKey];

  v13 = [NSNumber numberWithLongLong:bytes];
  [dataCopy setObject:v13 forKeyedSubscript:kSFOperationTotalBytesKey];

  v14 = [NSNumber numberWithInteger:remaining];
  [dataCopy setObject:v14 forKeyedSubscript:kSFOperationTimeRemainingKey];

  v15 = [NSNumber numberWithInteger:filesCopied];
  [dataCopy setObject:v15 forKeyedSubscript:kSFOperationFilesCopiedKey];
}

@end