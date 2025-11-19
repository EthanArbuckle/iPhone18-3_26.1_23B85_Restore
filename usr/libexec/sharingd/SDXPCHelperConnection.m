@interface SDXPCHelperConnection
+ (id)identifierForColor:(id)a3;
+ (id)makeActivatedConnection;
+ (void)updateCacheFromSFCGImageData:(id)a3 cacheKey:(id)a4 contactIDs:(id)a5;
- (CGImage)CGImageWithCacheKey:(id)a3 contactIDs:(id)a4 type:(id)a5;
- (CGImage)CGImgForActionPlatterWithTitle:(id)a3 tintColor:(id)a4;
- (CGImage)CGImgForNearbyBadgeWithCount:(int64_t)a3;
- (SDXPCHelperConnection)initWithQueue:(id)a3 serviceName:(id)a4;
- (id)CGImgDataForActivityMoreListEntryForActivityTitle:(id)a3 labelColor:(id)a4 processOppositeColor:(BOOL)a5 activityCategory:(int64_t)a6;
- (id)CGImgForUIActivityTitles:(id)a3 foregroundColor:(id)a4 processOppositeColor:(BOOL)a5;
- (id)MD5HashOfStrings:(id)a3;
- (id)_loadGroupContactIdentityImage:(id)a3;
- (id)copyConversationIdentityImageIconDataForImage:(id)a3 forConversationIdentifier:(id)a4 style:(int64_t)a5 diameter:(double)a6 monogramsAsFlatImages:(BOOL)a7 isContactImage:(BOOL *)a8;
- (id)getOppositeColor:(id)a3;
- (id)groupMonogramImageDataForContacts:(id)a3 style:(int64_t)a4 diameter:(double)a5 monogramsAsFlatImages:(BOOL)a6 processOppositeBackgroundStyle:(BOOL)a7;
- (id)keyDerivedFromRelevantTraitCollectionProperties;
- (id)keyDerivedFromRelevantTraitCollectionPropertiesWithOppositeUserInterfaceStyle;
- (id)loadBatchImageCacheData:(id)a3 cacheKey:(id)a4 mapCacheHitImage:(id)a5 runProxy:(id)a6 type:(id)a7;
- (id)monogramImagesForMultipleContacts:(id)a3 style:(int64_t)a4 diameter:(double)a5 monogramsAsFlatImages:(BOOL)a6;
- (id)perspectiveDataForActionPlatterWithTitle:(id)a3 tintColor:(id)a4;
- (id)perspectiveDataForActivityMoreListEntryForActivityTitle:(id)a3 labelColor:(id)a4 activityCategory:(int64_t)a5;
- (id)perspectiveDataForNearbyBadgeWithCount:(int64_t)a3;
- (id)perspectiveDataForUIActivityTitle:(id)a3 textColor:(id)a4;
- (id)urlToCGImgDataForCallHandoffIconWithAppIconImageData:(id)a3 contact:(id)a4;
- (unint64_t)getContactBackgroundStyle;
- (unint64_t)getOppositeBackgroundStyle:(unint64_t)a3;
- (void)_updateShareSheetHostConfiguration;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)sendShareSheetInvocationMetricsWithAppBundleID:(id)a3 numSuggestions:(int64_t)a4 suggestionDisplayNames:(id)a5 extensionsCacheResult:(id)a6 isDarkMode:(BOOL)a7 duration:(int64_t)a8 isCollaborative:(BOOL)a9;
- (void)setSessionKeepAliveTransactionIdentifier:(id)a3;
@end

@implementation SDXPCHelperConnection

+ (void)updateCacheFromSFCGImageData:(id)a3 cacheKey:(id)a4 contactIDs:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v12 = v7;
  if (v12)
  {
    v10 = SFCreateCGImageFromData();
    if (v10)
    {
      v11 = v10;
      [_TtC16DaemoniOSLibrary21SDXPCHelperImageCache setImage:v10 forKey:v8 contactIDs:v9];
      CFRelease(v11);
    }
  }
}

- (SDXPCHelperConnection)initWithQueue:(id)a3 serviceName:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = SDXPCHelperConnection;
  v7 = [(SDXPCHelperConnection *)&v16 init];
  if (v7)
  {
    v8 = sharingXPCHelperLog();
    v7->_intervalID = os_signpost_id_generate(v8);

    v9 = [(SDXPCHelperConnection *)v7 description];
    signpostName = v7->_signpostName;
    v7->_signpostName = v9;

    v7->_cacheAccessCount = 0;
    v11 = objc_opt_new();
    cacheAccessDict = v7->_cacheAccessDict;
    v7->_cacheAccessDict = v11;

    v7->_cacheAccessLock._os_unfair_lock_opaque = 0;
    v13 = objc_opt_new();
    queuedBlocks = v7->_queuedBlocks;
    v7->_queuedBlocks = v13;

    objc_storeStrong(&v7->_serviceName, a4);
  }

  return v7;
}

- (void)activate
{
  if (!self->_activated)
  {
    self->_activated = 1;
    v4 = [NSXPCConnection alloc];
    v5 = [(SDXPCHelperConnection *)self serviceName];
    v6 = [v4 initWithServiceName:v5];
    connectionToService = self->_connectionToService;
    self->_connectionToService = v6;

    if (self->_queue)
    {
      [(NSXPCConnection *)self->_connectionToService _setQueue:?];
    }

    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SharingXPCHelperProtocol];
    [(NSXPCConnection *)self->_connectionToService setRemoteObjectInterface:v8];

    [(NSXPCConnection *)self->_connectionToService setInvalidationHandler:self->_invalidationHandler];
    [(NSXPCConnection *)self->_connectionToService setInterruptionHandler:self->_interruptionHandler];
    v9 = [(NSXPCConnection *)self->_connectionToService remoteObjectInterface];
    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
    [v9 setClasses:v11 forSelector:"monogramImagesForMultipleContactsSync:style:diameter:monogramAsFlatImages:replyHandler:" argumentIndex:0 ofReply:1];

    v12 = [(NSXPCConnection *)self->_connectionToService remoteObjectInterface];
    v13 = objc_opt_class();
    v14 = [NSSet setWithObjects:v13, objc_opt_class(), 0];
    [v12 setClasses:v14 forSelector:"CGImgDataForUIActivityTitles:foregroundColor:replyHandler:" argumentIndex:0 ofReply:1];

    v15 = [(NSXPCConnection *)self->_connectionToService remoteObjectInterface];
    v16 = objc_opt_class();
    v17 = [NSSet setWithObjects:v16, objc_opt_class(), 0];
    [v15 setClasses:v17 forSelector:"groupMonogramImageDataForContactsSync:style:diameter:backgroundStyle:monogramsAsFlatImages:replyHandler:" argumentIndex:0 ofReply:1];

    v18 = self->_connectionToService;

    [(NSXPCConnection *)v18 resume];
  }
}

- (void)invalidate
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100215470;
  v15[3] = &unk_1008CDEA0;
  v15[4] = self;
  v3 = objc_retainBlock(v15);
  v4 = [(SDXPCHelperConnection *)self queuedBlocks];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(SDXPCHelperConnection *)self queuedBlocks];
    v7 = objc_retainBlock(v3);
    [v6 addObject:v7];

    v8 = [(SDXPCHelperConnection *)self queuedBlocks];
    v9 = [v8 copy];

    v10 = [(SDXPCHelperConnection *)self queuedBlocks];
    [v10 removeAllObjects];

    v11 = dispatch_get_global_queue(-32768, 0);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100215508;
    v13[3] = &unk_1008CDEA0;
    v14 = v9;
    v12 = v9;
    dispatch_async(v11, v13);
  }

  else
  {
    (v3[2])(v3);
  }
}

- (void)dealloc
{
  p_invalidateCalled = &self->_invalidateCalled;
  if (!self->_invalidateCalled)
  {
    sub_10021AE0C(a2, self, p_invalidateCalled);
  }

  v4.receiver = self;
  v4.super_class = SDXPCHelperConnection;
  [(SDXPCHelperConnection *)&v4 dealloc];
}

+ (id)makeActivatedConnection
{
  v2 = [[SDXPCHelperConnection alloc] initWithQueue:0];
  [(SDXPCHelperConnection *)v2 setInvalidationHandler:&stru_1008D4540];
  [(SDXPCHelperConnection *)v2 activate];

  return v2;
}

- (id)copyConversationIdentityImageIconDataForImage:(id)a3 forConversationIdentifier:(id)a4 style:(int64_t)a5 diameter:(double)a6 monogramsAsFlatImages:(BOOL)a7 isContactImage:(BOOL *)a8
{
  v51 = a7;
  v11 = a3;
  v12 = a4;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_100215B68;
  v57 = sub_100215B78;
  v58 = 0;
  v13 = [v11 _uri];
  v14 = [NSString stringWithFormat:@"%s", "[SDXPCHelperConnection copyConversationIdentityImageIconDataForImage:forConversationIdentifier:style:diameter:monogramsAsFlatImages:isContactImage:]"];
  v15 = sharingXPCHelperLog();
  v16 = v15;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 134217984;
    v62 = intervalID;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "copyConversationIdentityImageIconDataForImage", "%llu", buf, 0xCu);
  }

  v18 = sharingXPCHelperLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v11 _identifier];
    *buf = 138412290;
    v62 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Fetching donated contact icon for image %@", buf, 0xCu);
  }

  if (![v13 isFileURL])
  {
    v25 = [v11 _identifier];
    v31 = [v14 stringByAppendingFormat:@", %@, %@, %f", v12, v25, floor(a6)];
    goto LABEL_10;
  }

  v20 = +[NSFileManager defaultManager];
  v21 = [v13 path];
  v22 = [v20 fileExistsAtPath:v21];

  if (v22)
  {
    v23 = +[NSFileManager defaultManager];
    v24 = [v13 path];
    v25 = [v23 attributesOfItemAtPath:v24 error:0];

    v26 = [v25 objectForKey:NSFileModificationDate];
    v27 = [v13 path];
    v28 = [v27 componentsSeparatedByString:@"/"];
    v29 = [v28 lastObject];

    [v26 timeIntervalSince1970];
    v31 = [v14 stringByAppendingFormat:@", %@, %@, %f, %f", v29, v12, v30, floor(a6)];

LABEL_10:
    v32 = sharingXPCHelperLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v62 = v31;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "copyConversationIdentityImageIconDataForImage: cache key {%@}", buf, 0xCu);
    }

    v60 = v12;
    v33 = [NSArray arrayWithObjects:&v60 count:1];
    v34 = [(SDXPCHelperConnection *)self CGImageWithCacheKey:v31 contactIDs:v33 type:@"contact"];

    if (v34)
    {
      v35 = sharingXPCHelperLog();
      v36 = v35;
      v37 = self->_intervalID;
      if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
      {
        *buf = 134217984;
        v62 = v37;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_INTERVAL_END, v37, "copyConversationIdentityImageIconDataForImage", "%llu", buf, 0xCu);
      }

      v38 = SFDataFromCGImage();
    }

    else
    {
      v39 = sharingXPCHelperLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "copyConversationIdentityImageIconDataForImage: image not found in cache", buf, 2u);
      }

      [(SDXPCHelperConnection *)self _updateShareSheetHostConfiguration];
      v40 = [(SDXPCHelperConnection *)self _loadGroupContactIdentityImage:v11];
      v41 = [(NSXPCConnection *)self->_connectionToService synchronousRemoteObjectProxyWithErrorHandler:&stru_1008D45A8];
      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_100216348;
      v52[3] = &unk_1008D4588;
      v52[4] = &v53;
      v52[5] = a8;
      [v41 monogramImageDataForContactSync:v40 style:a5 diameter:v51 monogramsAsFlatImages:v52 replyHandler:a6];

      v42 = v54[5];
      v59 = v12;
      v43 = [NSArray arrayWithObjects:&v59 count:1];
      [SDXPCHelperConnection updateCacheFromSFCGImageData:v42 cacheKey:v31 contactIDs:v43];

      v44 = sharingXPCHelperLog();
      v45 = v44;
      v46 = self->_intervalID;
      if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
      {
        *buf = 134217984;
        v62 = v46;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, OS_SIGNPOST_INTERVAL_END, v46, "copyConversationIdentityImageIconDataForImage", "%llu", buf, 0xCu);
      }

      v38 = v54[5];
    }

    goto LABEL_26;
  }

  v31 = sharingXPCHelperLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v47 = [v13 absoluteString];
    sub_10021AF80(v47, buf, v31);
  }

  v38 = 0;
LABEL_26:

  _Block_object_dispose(&v53, 8);
  return v38;
}

- (unint64_t)getContactBackgroundStyle
{
  latestHostConfig = self->_latestHostConfig;
  if (latestHostConfig)
  {
    v3 = [(UISUIActivityViewControllerConfiguration *)latestHostConfig hostTraitCollection];
    v4 = [v3 userInterfaceStyle];

    if (v4 == 2)
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v6 = sharingXPCHelperLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_10021B04C();
    }

    return 2;
  }
}

- (unint64_t)getOppositeBackgroundStyle:(unint64_t)a3
{
  if (((a3 - 1) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (id)groupMonogramImageDataForContacts:(id)a3 style:(int64_t)a4 diameter:(double)a5 monogramsAsFlatImages:(BOOL)a6 processOppositeBackgroundStyle:(BOOL)a7
{
  v12 = a3;
  v13 = sharingXPCHelperLog();
  v14 = v13;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 134217984;
    v34 = intervalID;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "groupMonogramImageDataForContacts", "%llu", buf, 0xCu);
  }

  v16 = [NSString stringWithFormat:@"%s", "[SDXPCHelperConnection groupMonogramImageDataForContacts:style:diameter:monogramsAsFlatImages:processOppositeBackgroundStyle:]"];
  v17 = [(SDXPCHelperConnection *)self getContactBackgroundStyle];
  if (!a7)
  {
    v17 = [(SDXPCHelperConnection *)self getOppositeBackgroundStyle:v17];
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100216700;
  v27[3] = &unk_1008D45D0;
  v28 = v16;
  v29 = a4;
  v30 = a5;
  v32 = a6;
  v31 = v17;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100216858;
  v24[3] = &unk_1008D46A8;
  v24[4] = self;
  v24[5] = a4;
  *&v24[6] = a5;
  v24[7] = v17;
  v25 = a6;
  v26 = a7;
  v18 = v16;
  v19 = [(SDXPCHelperConnection *)self loadBatchImageCacheData:v12 cacheKey:v27 mapCacheHitImage:&stru_1008D4610 runProxy:v24 type:@"groupContacts"];

  v20 = sharingXPCHelperLog();
  v21 = v20;
  v22 = self->_intervalID;
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 134217984;
    v34 = v22;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, v22, "groupMonogramImageDataForContacts", "%llu", buf, 0xCu);
  }

  return v19;
}

- (id)urlToCGImgDataForCallHandoffIconWithAppIconImageData:(id)a3 contact:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SDXPCHelperConnection *)self _updateShareSheetHostConfiguration];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100215B68;
  v23 = sub_100215B78;
  v24 = 0;
  v8 = sharingXPCHelperLog();
  v9 = v8;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "urlToCGImgDataForCallHandoffIconWithAppIconImageData", "", buf, 2u);
  }

  v11 = [(NSXPCConnection *)self->_connectionToService synchronousRemoteObjectProxyWithErrorHandler:&stru_1008D46C8];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100216E08;
  v17[3] = &unk_1008D46F0;
  v17[4] = &v19;
  [v11 urlToCGImgDataForCallHandoffIconWithAppIconImageData:v6 contact:v7 replyHandler:v17];

  v12 = sharingXPCHelperLog();
  v13 = v12;
  v14 = self->_intervalID;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v14, "urlToCGImgDataForCallHandoffIconWithAppIconImageData", "", buf, 2u);
  }

  v15 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v15;
}

- (id)monogramImagesForMultipleContacts:(id)a3 style:(int64_t)a4 diameter:(double)a5 monogramsAsFlatImages:(BOOL)a6
{
  v10 = a3;
  v11 = sharingXPCHelperLog();
  v12 = v11;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 134217984;
    v28 = intervalID;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "monogramImagesForMultipleContacts", "%llu", buf, 0xCu);
  }

  [NSString stringWithFormat:@"%s", "[SDXPCHelperConnection monogramImagesForMultipleContacts:style:diameter:monogramsAsFlatImages:]"];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100217090;
  v23 = v22[3] = &unk_1008D4718;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100217270;
  v20[3] = &unk_1008D47A8;
  v20[4] = self;
  v20[5] = a4;
  *&v20[6] = a5;
  v21 = a6;
  v14 = v23;
  v15 = [(SDXPCHelperConnection *)self loadBatchImageCacheData:v10 cacheKey:v22 mapCacheHitImage:&stru_1008D4738 runProxy:v20 type:@"multipleContacts"];

  v16 = sharingXPCHelperLog();
  v17 = v16;
  v18 = self->_intervalID;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 134217984;
    v28 = v18;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v18, "monogramImagesForMultipleContacts", "%llu", buf, 0xCu);
  }

  return v15;
}

- (id)_loadGroupContactIdentityImage:(id)a3
{
  v3 = a3;
  v4 = [v3 _imageData];
  if (v4)
  {
    goto LABEL_15;
  }

  v5 = [v3 _uri];
  if (![v5 isFileURL])
  {
LABEL_5:
    v8 = [(objc_class *)off_100972CD8() sharedConnection];
    v17 = 0;
    v9 = [v8 loadDataImageFromImage:v3 scaledSize:&v17 error:off_100972CE0()];
    v10 = v17;

    if (v9)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      v4 = [v9 _imageData];
      v12 = sharingXPCHelperLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v3 _identifier];
        *buf = 138412290;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Successfully fetched identity image {%@}", buf, 0xCu);
      }
    }

    else
    {
      v12 = sharingXPCHelperLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10021B258();
      }

      v4 = 0;
    }

    if (!v4)
    {
      v14 = 0;
      goto LABEL_16;
    }

LABEL_15:
    v14 = objc_alloc_init(CNMutableContact);
    [v14 setImageData:v4];
LABEL_16:
    v5 = v14;
    v15 = v5;
    goto LABEL_17;
  }

  [v5 fileSystemRepresentation];
  v6 = sandbox_extension_issue_file();
  if (v6)
  {
    v7 = [NSData dataWithBytesNoCopy:v6 length:strlen(v6) + 1 freeWhenDone:1];
    [v3 _setSandboxExtensionData:v7];

    goto LABEL_5;
  }

  v4 = sharingXPCHelperLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000635AC(v5, v4);
  }

  v15 = 0;
LABEL_17:

  return v15;
}

- (id)getOppositeColor:(id)a3
{
  v3 = a3;
  v4 = +[UIColor blackColor];
  v5 = [v3 isEqual:v4];

  v6 = +[UIColor whiteColor];
  if ((v5 & 1) == 0)
  {
    v7 = [v3 isEqual:v6];

    if (v7)
    {
      v6 = +[UIColor blackColor];
    }

    else
    {
      v8 = [v3 CGColor];
      v9 = [UIColor colorWithRed:0.235294118 green:0.235294118 blue:0.262745098 alpha:0.6];
      v10 = [UIColor colorWithRed:0.921568627 green:0.921568627 blue:0.960784314 alpha:0.6];
      v11 = CGColorEqualToColor(v8, [v9 CGColor]);
      v12 = v10;
      if (v11 || (v13 = CGColorEqualToColor(v8, [v10 CGColor]), v12 = v9, v13))
      {
        v6 = v12;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

- (id)CGImgForUIActivityTitles:(id)a3 foregroundColor:(id)a4 processOppositeColor:(BOOL)a5
{
  v8 = a4;
  v9 = a3;
  v10 = sharingXPCHelperLog();
  v11 = v10;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "CGImgDataForUIActivityTitle", "", buf, 2u);
  }

  v13 = [NSString stringWithFormat:@"%s", "[SDXPCHelperConnection CGImgForUIActivityTitles:foregroundColor:processOppositeColor:]"];
  [(SDXPCHelperConnection *)self _updateShareSheetHostConfiguration];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100217CF8;
  v32[3] = &unk_1008D3F90;
  v14 = objc_alloc_init(NSMutableArray);
  v33 = v14;
  [v9 enumerateObjectsUsingBlock:v32];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100217D70;
  v28[3] = &unk_1008D47D0;
  v31 = a5;
  v28[4] = self;
  v15 = v13;
  v29 = v15;
  v30 = v8;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100217EEC;
  v25[3] = &unk_1008D4860;
  v25[4] = self;
  v16 = v30;
  v26 = v16;
  v27 = a5;
  v17 = [(SDXPCHelperConnection *)self loadBatchImageCacheData:v14 cacheKey:v28 mapCacheHitImage:&stru_1008D47F0 runProxy:v25 type:@"activityTitles"];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100218300;
  v23[3] = &unk_1008D4838;
  v18 = objc_alloc_init(NSMutableDictionary);
  v24 = v18;
  [v17 enumerateObjectsUsingBlock:v23];
  v19 = sharingXPCHelperLog();
  v20 = v19;
  v21 = self->_intervalID;
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_END, v21, "CGImgDataForUIActivityTitle", "", buf, 2u);
  }

  return v18;
}

- (CGImage)CGImageWithCacheKey:(id)a3 contactIDs:(id)a4 type:(id)a5
{
  v8 = a5;
  v9 = [_TtC16DaemoniOSLibrary21SDXPCHelperImageCache imageForKey:a3 contactIDs:a4];
  if (v9)
  {
    v10 = @"CacheHits";
  }

  else
  {
    v10 = @"CacheMisses";
  }

  v11 = [v8 stringByAppendingString:v10];

  os_unfair_lock_lock(&self->_cacheAccessLock);
  cacheAccessDict = self->_cacheAccessDict;
  ++self->_cacheAccessCount;
  v13 = [(NSMutableDictionary *)cacheAccessDict objectForKeyedSubscript:v11];
  v14 = self->_cacheAccessDict;
  v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 intValue] + 1);
  [(NSMutableDictionary *)v14 setObject:v15 forKey:v11];

  os_unfair_lock_unlock(&self->_cacheAccessLock);
  return v9;
}

- (id)MD5HashOfStrings:(id)a3
{
  v3 = a3;
  v20 = 0uLL;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v13 = v20;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v14 + 1) + 8 * i) UTF8String];
        memset(md, 0, sizeof(md));
        v9 = strlen(v8);
        CC_MD5(v8, v9, md);
        v13 = veorq_s8(v13, *md);
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v5);
    v20 = v13;
  }

  v10 = [[NSMutableString alloc] initWithCapacity:32];
  for (j = 0; j != 16; ++j)
  {
    [v10 appendFormat:@"%02x", v20.u8[j]];
  }

  return v10;
}

- (void)sendShareSheetInvocationMetricsWithAppBundleID:(id)a3 numSuggestions:(int64_t)a4 suggestionDisplayNames:(id)a5 extensionsCacheResult:(id)a6 isDarkMode:(BOOL)a7 duration:(int64_t)a8 isCollaborative:(BOOL)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  if (self->_cacheAccessCount >= 1)
  {
    v18 = dispatch_get_global_queue(-32768, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100218768;
    block[3] = &unk_1008D4888;
    block[4] = self;
    v20 = v16;
    v21 = v17;
    v22 = v15;
    v23 = a4;
    v24 = a8;
    v25 = a7;
    v26 = a9;
    dispatch_async(v18, block);
  }
}

- (id)CGImgDataForActivityMoreListEntryForActivityTitle:(id)a3 labelColor:(id)a4 processOppositeColor:(BOOL)a5 activityCategory:(int64_t)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = sharingXPCHelperLog();
  v13 = v12;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "CGImgDataForActivityMoreListEntryForActivityTitle", "", buf, 2u);
  }

  if (v7)
  {
    [(SDXPCHelperConnection *)self keyDerivedFromRelevantTraitCollectionProperties];
  }

  else
  {
    [(SDXPCHelperConnection *)self keyDerivedFromRelevantTraitCollectionPropertiesWithOppositeUserInterfaceStyle];
  }
  v15 = ;
  v16 = [NSString stringWithUTF8String:"[SDXPCHelperConnection CGImgDataForActivityMoreListEntryForActivityTitle:labelColor:processOppositeColor:activityCategory:]"];
  v17 = [SDXPCHelperConnection identifierForColor:v11];
  v18 = [v16 stringByAppendingFormat:@", %@, %@, %@, ", v10, v17, v15];

  if ([(SDXPCHelperConnection *)self CGImageWithCacheKey:v18 contactIDs:&__NSArray0__struct type:@"activityTitle"])
  {
    if (v7)
    {
      v19 = SFDataFromCGImage();
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    [(SDXPCHelperConnection *)self _updateShareSheetHostConfiguration];
    *buf = 0;
    v35 = buf;
    v36 = 0x3032000000;
    v37 = sub_100215B68;
    v38 = sub_100215B78;
    v39 = 0;
    v20 = [(NSXPCConnection *)self->_connectionToService synchronousRemoteObjectProxyWithErrorHandler:&stru_1008D4918];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1002192F8;
    v33[3] = &unk_1008D48D0;
    v33[4] = buf;
    [v20 CGImgDataForActivityMoreListEntryForActivityTitle:v10 labelColor:v11 activityCategory:a6 replyHandler:v33];

    [SDXPCHelperConnection updateCacheFromSFCGImageData:*(v35 + 5) cacheKey:v18 contactIDs:&__NSArray0__struct];
    if (v7)
    {
      v21 = self;
      v22 = [(SDXPCHelperConnection *)v21 queuedBlocks];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100219308;
      v29[3] = &unk_1008D08B8;
      v29[4] = v21;
      v30 = v11;
      v31 = v10;
      v32 = a6;
      v23 = objc_retainBlock(v29);
      [v22 addObject:v23];
    }

    v24 = sharingXPCHelperLog();
    v25 = v24;
    v26 = self->_intervalID;
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *v28 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_END, v26, "CGImgDataForActivityMoreListEntryForActivityTitle", "", v28, 2u);
    }

    v19 = *(v35 + 5);
    _Block_object_dispose(buf, 8);
  }

  return v19;
}

- (CGImage)CGImgForActionPlatterWithTitle:(id)a3 tintColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sharingXPCHelperLog();
  v9 = v8;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "CGImgForActionPlatterWithTitle", "", buf, 2u);
  }

  v11 = [NSString stringWithUTF8String:"[SDXPCHelperConnection CGImgForActionPlatterWithTitle:tintColor:]"];
  v12 = [SDXPCHelperConnection identifierForColor:v7];
  v13 = [(SDXPCHelperConnection *)self keyDerivedFromRelevantTraitCollectionProperties];
  v14 = [v11 stringByAppendingFormat:@", %@, %@, %@, ", v6, v12, v13];

  v15 = [(SDXPCHelperConnection *)self CGImageWithCacheKey:v14 contactIDs:&__NSArray0__struct type:@"actionPlatter"];
  if (!v15)
  {
    [(SDXPCHelperConnection *)self _updateShareSheetHostConfiguration];
    *buf = 0;
    v25 = buf;
    v26 = 0x3032000000;
    v27 = sub_100215B68;
    v28 = sub_100215B78;
    v29 = 0;
    v16 = [(NSXPCConnection *)self->_connectionToService synchronousRemoteObjectProxyWithErrorHandler:&stru_1008D4938];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100219720;
    v23[3] = &unk_1008D48D0;
    v23[4] = buf;
    [v16 CGImgDataForActionPlatterWithTitle:v6 tintColor:v7 replyHandler:v23];

    [SDXPCHelperConnection updateCacheFromSFCGImageData:*(v25 + 5) cacheKey:v14 contactIDs:&__NSArray0__struct];
    v17 = sharingXPCHelperLog();
    v18 = v17;
    v19 = self->_intervalID;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *v22 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v19, "CGImgForActionPlatterWithTitle", "", v22, 2u);
    }

    if (*(v25 + 5))
    {
      v20 = SFCreateCGImageFromData();
      v15 = CFAutorelease(v20);
    }

    else
    {
      v15 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  return v15;
}

- (CGImage)CGImgForNearbyBadgeWithCount:(int64_t)a3
{
  v5 = sharingXPCHelperLog();
  v6 = v5;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "CGImgForNearbyBadgeWithCount", "", buf, 2u);
  }

  v8 = [NSString stringWithUTF8String:"[SDXPCHelperConnection CGImgForNearbyBadgeWithCount:]"];
  v9 = [(SDXPCHelperConnection *)self keyDerivedFromRelevantTraitCollectionProperties];
  v10 = [v8 stringByAppendingFormat:@"%li, %@", a3, v9];

  v11 = [(SDXPCHelperConnection *)self CGImageWithCacheKey:v10 contactIDs:&__NSArray0__struct type:@"nearbyBadge"];
  if (!v11)
  {
    [(SDXPCHelperConnection *)self _updateShareSheetHostConfiguration];
    *buf = 0;
    v21 = buf;
    v22 = 0x3032000000;
    v23 = sub_100215B68;
    v24 = sub_100215B78;
    v25 = 0;
    v12 = [(NSXPCConnection *)self->_connectionToService synchronousRemoteObjectProxyWithErrorHandler:&stru_1008D4958];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100219A20;
    v19[3] = &unk_1008D48D0;
    v19[4] = buf;
    [v12 CGImgDataForNearbyBadgeWithCount:a3 replyHandler:v19];

    [SDXPCHelperConnection updateCacheFromSFCGImageData:*(v21 + 5) cacheKey:v10 contactIDs:&__NSArray0__struct];
    v13 = sharingXPCHelperLog();
    v14 = v13;
    v15 = self->_intervalID;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *v18 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, v15, "CGImgForNearbyBadgeWithCount", "", v18, 2u);
    }

    if (*(v21 + 5))
    {
      v16 = SFCreateCGImageFromData();
      v11 = CFAutorelease(v16);
    }

    else
    {
      v11 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  return v11;
}

- (id)loadBatchImageCacheData:(id)a3 cacheKey:(id)a4 mapCacheHitImage:(id)a5 runProxy:(id)a6 type:(id)a7
{
  v11 = a3;
  v12 = a4;
  v41 = a5;
  v38 = a6;
  v43 = a7;
  v39 = +[NSMutableArray array];
  v44 = +[NSMutableArray array];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v11;
  v13 = [obj countByEnumeratingWithState:&v49 objects:v60 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v50;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v50 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v49 + 1) + 8 * i);
        v18 = v12[2](v12, v17);
        [v17 setCacheLookupKey:v18];

        v19 = [v17 cacheLookupKey];
        v20 = [v17 contactIDs];
        v21 = [(SDXPCHelperConnection *)self CGImageWithCacheKey:v19 contactIDs:v20 type:v43];

        if (v21)
        {
          v22 = v41[2](v41, v17, v21);
          [v44 addObject:v22];
        }

        else
        {
          [v39 addObject:v17];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v49 objects:v60 count:16];
    }

    while (v14);
  }

  if ([v39 count])
  {
    [(SDXPCHelperConnection *)self _updateShareSheetHostConfiguration];
    v38[2](v38, v39);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v23 = v48 = 0u;
    v24 = [v23 countByEnumeratingWithState:&v45 objects:v59 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v46;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v46 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v45 + 1) + 8 * j);
          v29 = [v28 imageData];

          if (v29)
          {
            v30 = [v28 imageData];
            v31 = [v28 cacheLookupKey];
            v32 = [v28 contactIDs];
            [SDXPCHelperConnection updateCacheFromSFCGImageData:v30 cacheKey:v31 contactIDs:v32];
          }

          [v44 addObject:v28];
        }

        v25 = [v23 countByEnumeratingWithState:&v45 objects:v59 count:16];
      }

      while (v25);
    }
  }

  v33 = sharingXPCHelperLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = [obj count];
    v35 = [v39 count];
    v36 = [v44 count];
    *buf = 134218496;
    v54 = v34;
    v55 = 2048;
    v56 = v35;
    v57 = 2048;
    v58 = v36;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Need image data for %lu images, %lu are not in cache, return %lu image data.", buf, 0x20u);
  }

  return v44;
}

+ (id)identifierForColor:(id)a3
{
  v4 = a3;
  if (a3)
  {
    v8 = 0;
    var8[0] = 0;
    v7 = 0;
    v6 = 0;
    [a3 getRed:var8 green:&v8 blue:&v7 alpha:&v6];
    v4 = [NSString stringWithFormat:@"(UIColor %.1f, %.1f, %.1f, %.1f)", var8[0], v8, v7, v6];
    v3 = var8[2];
  }

  return v4;
}

- (id)keyDerivedFromRelevantTraitCollectionProperties
{
  v2 = self->_latestHostConfig;
  v3 = v2;
  if (v2)
  {
    v4 = [(UISUIActivityViewControllerConfiguration *)v2 hostTraitCollection];
    v5 = [v4 userInterfaceStyle];
    v6 = [(UISUIActivityViewControllerConfiguration *)v3 hostTraitCollection];
    v7 = [v6 preferredContentSizeCategory];
    v8 = [(UISUIActivityViewControllerConfiguration *)v3 hostTraitCollection];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @",%li,%@,%li,", v5, v7, [v8 layoutDirection]);
  }

  else
  {
    v10 = sharingXPCHelperLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_10021B04C();
    }

    v9 = @"NULL";
  }

  return v9;
}

- (id)keyDerivedFromRelevantTraitCollectionPropertiesWithOppositeUserInterfaceStyle
{
  v2 = self->_latestHostConfig;
  v3 = v2;
  if (v2)
  {
    v4 = [(UISUIActivityViewControllerConfiguration *)v2 hostTraitCollection];
    if ([v4 userInterfaceStyle] == 1)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    v6 = [(UISUIActivityViewControllerConfiguration *)v3 hostTraitCollection];
    v7 = [v6 preferredContentSizeCategory];
    v8 = [(UISUIActivityViewControllerConfiguration *)v3 hostTraitCollection];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @",%li,%@,%li,", v5, v7, [v8 layoutDirection]);
  }

  else
  {
    v10 = sharingXPCHelperLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_10021B04C();
    }

    v9 = @"NULL";
  }

  return v9;
}

- (id)perspectiveDataForUIActivityTitle:(id)a3 textColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SDXPCHelperConnection *)self _updateShareSheetHostConfiguration];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100215B68;
  v16 = sub_100215B78;
  v17 = 0;
  v8 = [(NSXPCConnection *)self->_connectionToService synchronousRemoteObjectProxyWithErrorHandler:&stru_1008D4978];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10021A28C;
  v11[3] = &unk_1008D49A0;
  v11[4] = &v12;
  [v8 perspectiveDataForUIActivityTitle:v6 textColor:v7 replyHandler:v11];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)perspectiveDataForActionPlatterWithTitle:(id)a3 tintColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SDXPCHelperConnection *)self _updateShareSheetHostConfiguration];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100215B68;
  v16 = sub_100215B78;
  v17 = 0;
  v8 = [(NSXPCConnection *)self->_connectionToService synchronousRemoteObjectProxyWithErrorHandler:&stru_1008D49E0];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10021A624;
  v11[3] = &unk_1008D49A0;
  v11[4] = &v12;
  [v8 perspectiveDataForActionPlatterWithTitle:v6 tintColor:v7 replyHandler:v11];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)perspectiveDataForActivityMoreListEntryForActivityTitle:(id)a3 labelColor:(id)a4 activityCategory:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  [(SDXPCHelperConnection *)self _updateShareSheetHostConfiguration];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100215B68;
  v18 = sub_100215B78;
  v19 = 0;
  v10 = [(NSXPCConnection *)self->_connectionToService synchronousRemoteObjectProxyWithErrorHandler:&stru_1008D4A00];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10021A7EC;
  v13[3] = &unk_1008D49A0;
  v13[4] = &v14;
  [v10 perspectiveDataForActivityMoreListEntryForActivityTitle:v8 labelColor:v9 activityCategory:a5 replyHandler:v13];

  v11 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v11;
}

- (id)perspectiveDataForNearbyBadgeWithCount:(int64_t)a3
{
  [(SDXPCHelperConnection *)self _updateShareSheetHostConfiguration];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100215B68;
  v13 = sub_100215B78;
  v14 = 0;
  v5 = [(NSXPCConnection *)self->_connectionToService synchronousRemoteObjectProxyWithErrorHandler:&stru_1008D4A20];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10021A984;
  v8[3] = &unk_1008D49A0;
  v8[4] = &v9;
  [v5 perspectiveDataForNearbyBadgeWithCount:a3 replyHandler:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)_updateShareSheetHostConfiguration
{
  v3 = self->_latestHostConfig;
  if (v3)
  {
    v4 = sharingXPCHelperLog();
    v5 = v4;
    intervalID = self->_intervalID;
    if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "updateShareSheetHostConfiguration", "", buf, 2u);
    }

    v7 = [(NSXPCConnection *)self->_connectionToService synchronousRemoteObjectProxyWithErrorHandler:&stru_1008D4A40];
    [v7 updateShareSheetHostConfiguration:v3];

    v8 = sharingXPCHelperLog();
    v9 = v8;
    v10 = self->_intervalID;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "updateShareSheetHostConfiguration", "", v11, 2u);
    }
  }

  else
  {
    v9 = daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_10021B7A0();
    }
  }
}

- (void)setSessionKeepAliveTransactionIdentifier:(id)a3
{
  v4 = a3;
  self->_needsTransactionRelease = v4 != 0;
  v8 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = +[NSNull null];
  }

  v6 = v5;
  v7 = [(NSXPCConnection *)self->_connectionToService remoteObjectProxyWithErrorHandler:&stru_1008D4A60];
  [v7 setSessionKeepAliveTransactionIdentifier:v6];
}

@end