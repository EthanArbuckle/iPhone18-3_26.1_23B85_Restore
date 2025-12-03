@interface SDXPCHelperConnection
+ (id)identifierForColor:(id)color;
+ (id)makeActivatedConnection;
+ (void)updateCacheFromSFCGImageData:(id)data cacheKey:(id)key contactIDs:(id)ds;
- (CGImage)CGImageWithCacheKey:(id)key contactIDs:(id)ds type:(id)type;
- (CGImage)CGImgForActionPlatterWithTitle:(id)title tintColor:(id)color;
- (CGImage)CGImgForNearbyBadgeWithCount:(int64_t)count;
- (SDXPCHelperConnection)initWithQueue:(id)queue serviceName:(id)name;
- (id)CGImgDataForActivityMoreListEntryForActivityTitle:(id)title labelColor:(id)color processOppositeColor:(BOOL)oppositeColor activityCategory:(int64_t)category;
- (id)CGImgForUIActivityTitles:(id)titles foregroundColor:(id)color processOppositeColor:(BOOL)oppositeColor;
- (id)MD5HashOfStrings:(id)strings;
- (id)_loadGroupContactIdentityImage:(id)image;
- (id)copyConversationIdentityImageIconDataForImage:(id)image forConversationIdentifier:(id)identifier style:(int64_t)style diameter:(double)diameter monogramsAsFlatImages:(BOOL)images isContactImage:(BOOL *)contactImage;
- (id)getOppositeColor:(id)color;
- (id)groupMonogramImageDataForContacts:(id)contacts style:(int64_t)style diameter:(double)diameter monogramsAsFlatImages:(BOOL)images processOppositeBackgroundStyle:(BOOL)backgroundStyle;
- (id)keyDerivedFromRelevantTraitCollectionProperties;
- (id)keyDerivedFromRelevantTraitCollectionPropertiesWithOppositeUserInterfaceStyle;
- (id)loadBatchImageCacheData:(id)data cacheKey:(id)key mapCacheHitImage:(id)image runProxy:(id)proxy type:(id)type;
- (id)monogramImagesForMultipleContacts:(id)contacts style:(int64_t)style diameter:(double)diameter monogramsAsFlatImages:(BOOL)images;
- (id)perspectiveDataForActionPlatterWithTitle:(id)title tintColor:(id)color;
- (id)perspectiveDataForActivityMoreListEntryForActivityTitle:(id)title labelColor:(id)color activityCategory:(int64_t)category;
- (id)perspectiveDataForNearbyBadgeWithCount:(int64_t)count;
- (id)perspectiveDataForUIActivityTitle:(id)title textColor:(id)color;
- (id)urlToCGImgDataForCallHandoffIconWithAppIconImageData:(id)data contact:(id)contact;
- (unint64_t)getContactBackgroundStyle;
- (unint64_t)getOppositeBackgroundStyle:(unint64_t)style;
- (void)_updateShareSheetHostConfiguration;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)sendShareSheetInvocationMetricsWithAppBundleID:(id)d numSuggestions:(int64_t)suggestions suggestionDisplayNames:(id)names extensionsCacheResult:(id)result isDarkMode:(BOOL)mode duration:(int64_t)duration isCollaborative:(BOOL)collaborative;
- (void)setSessionKeepAliveTransactionIdentifier:(id)identifier;
@end

@implementation SDXPCHelperConnection

+ (void)updateCacheFromSFCGImageData:(id)data cacheKey:(id)key contactIDs:(id)ds
{
  dataCopy = data;
  keyCopy = key;
  dsCopy = ds;
  v12 = dataCopy;
  if (v12)
  {
    v10 = SFCreateCGImageFromData();
    if (v10)
    {
      v11 = v10;
      [_TtC16DaemoniOSLibrary21SDXPCHelperImageCache setImage:v10 forKey:keyCopy contactIDs:dsCopy];
      CFRelease(v11);
    }
  }
}

- (SDXPCHelperConnection)initWithQueue:(id)queue serviceName:(id)name
{
  nameCopy = name;
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

    objc_storeStrong(&v7->_serviceName, name);
  }

  return v7;
}

- (void)activate
{
  if (!self->_activated)
  {
    self->_activated = 1;
    v4 = [NSXPCConnection alloc];
    serviceName = [(SDXPCHelperConnection *)self serviceName];
    v6 = [v4 initWithServiceName:serviceName];
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
    remoteObjectInterface = [(NSXPCConnection *)self->_connectionToService remoteObjectInterface];
    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
    [remoteObjectInterface setClasses:v11 forSelector:"monogramImagesForMultipleContactsSync:style:diameter:monogramAsFlatImages:replyHandler:" argumentIndex:0 ofReply:1];

    remoteObjectInterface2 = [(NSXPCConnection *)self->_connectionToService remoteObjectInterface];
    v13 = objc_opt_class();
    v14 = [NSSet setWithObjects:v13, objc_opt_class(), 0];
    [remoteObjectInterface2 setClasses:v14 forSelector:"CGImgDataForUIActivityTitles:foregroundColor:replyHandler:" argumentIndex:0 ofReply:1];

    remoteObjectInterface3 = [(NSXPCConnection *)self->_connectionToService remoteObjectInterface];
    v16 = objc_opt_class();
    v17 = [NSSet setWithObjects:v16, objc_opt_class(), 0];
    [remoteObjectInterface3 setClasses:v17 forSelector:"groupMonogramImageDataForContactsSync:style:diameter:backgroundStyle:monogramsAsFlatImages:replyHandler:" argumentIndex:0 ofReply:1];

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
  queuedBlocks = [(SDXPCHelperConnection *)self queuedBlocks];
  v5 = [queuedBlocks count];

  if (v5)
  {
    queuedBlocks2 = [(SDXPCHelperConnection *)self queuedBlocks];
    v7 = objc_retainBlock(v3);
    [queuedBlocks2 addObject:v7];

    queuedBlocks3 = [(SDXPCHelperConnection *)self queuedBlocks];
    v9 = [queuedBlocks3 copy];

    queuedBlocks4 = [(SDXPCHelperConnection *)self queuedBlocks];
    [queuedBlocks4 removeAllObjects];

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

- (id)copyConversationIdentityImageIconDataForImage:(id)image forConversationIdentifier:(id)identifier style:(int64_t)style diameter:(double)diameter monogramsAsFlatImages:(BOOL)images isContactImage:(BOOL *)contactImage
{
  imagesCopy = images;
  imageCopy = image;
  identifierCopy = identifier;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_100215B68;
  v57 = sub_100215B78;
  v58 = 0;
  _uri = [imageCopy _uri];
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
    _identifier = [imageCopy _identifier];
    *buf = 138412290;
    v62 = _identifier;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Fetching donated contact icon for image %@", buf, 0xCu);
  }

  if (![_uri isFileURL])
  {
    _identifier2 = [imageCopy _identifier];
    v31 = [v14 stringByAppendingFormat:@", %@, %@, %f", identifierCopy, _identifier2, floor(diameter)];
    goto LABEL_10;
  }

  v20 = +[NSFileManager defaultManager];
  path = [_uri path];
  v22 = [v20 fileExistsAtPath:path];

  if (v22)
  {
    v23 = +[NSFileManager defaultManager];
    path2 = [_uri path];
    _identifier2 = [v23 attributesOfItemAtPath:path2 error:0];

    v26 = [_identifier2 objectForKey:NSFileModificationDate];
    path3 = [_uri path];
    v28 = [path3 componentsSeparatedByString:@"/"];
    lastObject = [v28 lastObject];

    [v26 timeIntervalSince1970];
    v31 = [v14 stringByAppendingFormat:@", %@, %@, %f, %f", lastObject, identifierCopy, v30, floor(diameter)];

LABEL_10:
    v32 = sharingXPCHelperLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v62 = v31;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "copyConversationIdentityImageIconDataForImage: cache key {%@}", buf, 0xCu);
    }

    v60 = identifierCopy;
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
      v40 = [(SDXPCHelperConnection *)self _loadGroupContactIdentityImage:imageCopy];
      v41 = [(NSXPCConnection *)self->_connectionToService synchronousRemoteObjectProxyWithErrorHandler:&stru_1008D45A8];
      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_100216348;
      v52[3] = &unk_1008D4588;
      v52[4] = &v53;
      v52[5] = contactImage;
      [v41 monogramImageDataForContactSync:v40 style:style diameter:imagesCopy monogramsAsFlatImages:v52 replyHandler:diameter];

      v42 = v54[5];
      v59 = identifierCopy;
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
    absoluteString = [_uri absoluteString];
    sub_10021AF80(absoluteString, buf, v31);
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
    hostTraitCollection = [(UISUIActivityViewControllerConfiguration *)latestHostConfig hostTraitCollection];
    userInterfaceStyle = [hostTraitCollection userInterfaceStyle];

    if (userInterfaceStyle == 2)
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

- (unint64_t)getOppositeBackgroundStyle:(unint64_t)style
{
  if (((style - 1) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (id)groupMonogramImageDataForContacts:(id)contacts style:(int64_t)style diameter:(double)diameter monogramsAsFlatImages:(BOOL)images processOppositeBackgroundStyle:(BOOL)backgroundStyle
{
  contactsCopy = contacts;
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
  getContactBackgroundStyle = [(SDXPCHelperConnection *)self getContactBackgroundStyle];
  if (!backgroundStyle)
  {
    getContactBackgroundStyle = [(SDXPCHelperConnection *)self getOppositeBackgroundStyle:getContactBackgroundStyle];
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100216700;
  v27[3] = &unk_1008D45D0;
  v28 = v16;
  styleCopy = style;
  diameterCopy = diameter;
  imagesCopy = images;
  v31 = getContactBackgroundStyle;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100216858;
  v24[3] = &unk_1008D46A8;
  v24[4] = self;
  v24[5] = style;
  *&v24[6] = diameter;
  v24[7] = getContactBackgroundStyle;
  imagesCopy2 = images;
  backgroundStyleCopy = backgroundStyle;
  v18 = v16;
  v19 = [(SDXPCHelperConnection *)self loadBatchImageCacheData:contactsCopy cacheKey:v27 mapCacheHitImage:&stru_1008D4610 runProxy:v24 type:@"groupContacts"];

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

- (id)urlToCGImgDataForCallHandoffIconWithAppIconImageData:(id)data contact:(id)contact
{
  dataCopy = data;
  contactCopy = contact;
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
  [v11 urlToCGImgDataForCallHandoffIconWithAppIconImageData:dataCopy contact:contactCopy replyHandler:v17];

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

- (id)monogramImagesForMultipleContacts:(id)contacts style:(int64_t)style diameter:(double)diameter monogramsAsFlatImages:(BOOL)images
{
  contactsCopy = contacts;
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
  styleCopy = style;
  diameterCopy = diameter;
  imagesCopy = images;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100217270;
  v20[3] = &unk_1008D47A8;
  v20[4] = self;
  v20[5] = style;
  *&v20[6] = diameter;
  imagesCopy2 = images;
  v14 = v23;
  v15 = [(SDXPCHelperConnection *)self loadBatchImageCacheData:contactsCopy cacheKey:v22 mapCacheHitImage:&stru_1008D4738 runProxy:v20 type:@"multipleContacts"];

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

- (id)_loadGroupContactIdentityImage:(id)image
{
  imageCopy = image;
  _imageData = [imageCopy _imageData];
  if (_imageData)
  {
    goto LABEL_15;
  }

  _uri = [imageCopy _uri];
  if (![_uri isFileURL])
  {
LABEL_5:
    sharedConnection = [(objc_class *)off_100972CD8() sharedConnection];
    v17 = 0;
    v9 = [sharedConnection loadDataImageFromImage:imageCopy scaledSize:&v17 error:off_100972CE0()];
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
      _imageData = [v9 _imageData];
      v12 = sharingXPCHelperLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        _identifier = [imageCopy _identifier];
        *buf = 138412290;
        v19 = _identifier;
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

      _imageData = 0;
    }

    if (!_imageData)
    {
      v14 = 0;
      goto LABEL_16;
    }

LABEL_15:
    v14 = objc_alloc_init(CNMutableContact);
    [v14 setImageData:_imageData];
LABEL_16:
    _uri = v14;
    v15 = _uri;
    goto LABEL_17;
  }

  [_uri fileSystemRepresentation];
  v6 = sandbox_extension_issue_file();
  if (v6)
  {
    v7 = [NSData dataWithBytesNoCopy:v6 length:strlen(v6) + 1 freeWhenDone:1];
    [imageCopy _setSandboxExtensionData:v7];

    goto LABEL_5;
  }

  _imageData = sharingXPCHelperLog();
  if (os_log_type_enabled(_imageData, OS_LOG_TYPE_ERROR))
  {
    sub_1000635AC(_uri, _imageData);
  }

  v15 = 0;
LABEL_17:

  return v15;
}

- (id)getOppositeColor:(id)color
{
  colorCopy = color;
  v4 = +[UIColor blackColor];
  v5 = [colorCopy isEqual:v4];

  v6 = +[UIColor whiteColor];
  if ((v5 & 1) == 0)
  {
    v7 = [colorCopy isEqual:v6];

    if (v7)
    {
      v6 = +[UIColor blackColor];
    }

    else
    {
      cGColor = [colorCopy CGColor];
      v9 = [UIColor colorWithRed:0.235294118 green:0.235294118 blue:0.262745098 alpha:0.6];
      v10 = [UIColor colorWithRed:0.921568627 green:0.921568627 blue:0.960784314 alpha:0.6];
      v11 = CGColorEqualToColor(cGColor, [v9 CGColor]);
      v12 = v10;
      if (v11 || (v13 = CGColorEqualToColor(cGColor, [v10 CGColor]), v12 = v9, v13))
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

- (id)CGImgForUIActivityTitles:(id)titles foregroundColor:(id)color processOppositeColor:(BOOL)oppositeColor
{
  colorCopy = color;
  titlesCopy = titles;
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
  [titlesCopy enumerateObjectsUsingBlock:v32];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100217D70;
  v28[3] = &unk_1008D47D0;
  oppositeColorCopy = oppositeColor;
  v28[4] = self;
  v15 = v13;
  v29 = v15;
  v30 = colorCopy;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100217EEC;
  v25[3] = &unk_1008D4860;
  v25[4] = self;
  v16 = v30;
  v26 = v16;
  oppositeColorCopy2 = oppositeColor;
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

- (CGImage)CGImageWithCacheKey:(id)key contactIDs:(id)ds type:(id)type
{
  typeCopy = type;
  v9 = [_TtC16DaemoniOSLibrary21SDXPCHelperImageCache imageForKey:key contactIDs:ds];
  if (v9)
  {
    v10 = @"CacheHits";
  }

  else
  {
    v10 = @"CacheMisses";
  }

  v11 = [typeCopy stringByAppendingString:v10];

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

- (id)MD5HashOfStrings:(id)strings
{
  stringsCopy = strings;
  v20 = 0uLL;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [stringsCopy countByEnumeratingWithState:&v14 objects:v19 count:16];
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
          objc_enumerationMutation(stringsCopy);
        }

        uTF8String = [*(*(&v14 + 1) + 8 * i) UTF8String];
        memset(md, 0, sizeof(md));
        v9 = strlen(uTF8String);
        CC_MD5(uTF8String, v9, md);
        v13 = veorq_s8(v13, *md);
      }

      v5 = [stringsCopy countByEnumeratingWithState:&v14 objects:v19 count:16];
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

- (void)sendShareSheetInvocationMetricsWithAppBundleID:(id)d numSuggestions:(int64_t)suggestions suggestionDisplayNames:(id)names extensionsCacheResult:(id)result isDarkMode:(BOOL)mode duration:(int64_t)duration isCollaborative:(BOOL)collaborative
{
  dCopy = d;
  namesCopy = names;
  resultCopy = result;
  if (self->_cacheAccessCount >= 1)
  {
    v18 = dispatch_get_global_queue(-32768, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100218768;
    block[3] = &unk_1008D4888;
    block[4] = self;
    v20 = namesCopy;
    v21 = resultCopy;
    v22 = dCopy;
    suggestionsCopy = suggestions;
    durationCopy = duration;
    modeCopy = mode;
    collaborativeCopy = collaborative;
    dispatch_async(v18, block);
  }
}

- (id)CGImgDataForActivityMoreListEntryForActivityTitle:(id)title labelColor:(id)color processOppositeColor:(BOOL)oppositeColor activityCategory:(int64_t)category
{
  oppositeColorCopy = oppositeColor;
  titleCopy = title;
  colorCopy = color;
  v12 = sharingXPCHelperLog();
  v13 = v12;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "CGImgDataForActivityMoreListEntryForActivityTitle", "", buf, 2u);
  }

  if (oppositeColorCopy)
  {
    [(SDXPCHelperConnection *)self keyDerivedFromRelevantTraitCollectionProperties];
  }

  else
  {
    [(SDXPCHelperConnection *)self keyDerivedFromRelevantTraitCollectionPropertiesWithOppositeUserInterfaceStyle];
  }
  v15 = ;
  v16 = [NSString stringWithUTF8String:"[SDXPCHelperConnection CGImgDataForActivityMoreListEntryForActivityTitle:labelColor:processOppositeColor:activityCategory:]"];
  v17 = [SDXPCHelperConnection identifierForColor:colorCopy];
  v18 = [v16 stringByAppendingFormat:@", %@, %@, %@, ", titleCopy, v17, v15];

  if ([(SDXPCHelperConnection *)self CGImageWithCacheKey:v18 contactIDs:&__NSArray0__struct type:@"activityTitle"])
  {
    if (oppositeColorCopy)
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
    [v20 CGImgDataForActivityMoreListEntryForActivityTitle:titleCopy labelColor:colorCopy activityCategory:category replyHandler:v33];

    [SDXPCHelperConnection updateCacheFromSFCGImageData:*(v35 + 5) cacheKey:v18 contactIDs:&__NSArray0__struct];
    if (oppositeColorCopy)
    {
      selfCopy = self;
      queuedBlocks = [(SDXPCHelperConnection *)selfCopy queuedBlocks];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100219308;
      v29[3] = &unk_1008D08B8;
      v29[4] = selfCopy;
      v30 = colorCopy;
      v31 = titleCopy;
      categoryCopy = category;
      v23 = objc_retainBlock(v29);
      [queuedBlocks addObject:v23];
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

- (CGImage)CGImgForActionPlatterWithTitle:(id)title tintColor:(id)color
{
  titleCopy = title;
  colorCopy = color;
  v8 = sharingXPCHelperLog();
  v9 = v8;
  intervalID = self->_intervalID;
  if (intervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, intervalID, "CGImgForActionPlatterWithTitle", "", buf, 2u);
  }

  v11 = [NSString stringWithUTF8String:"[SDXPCHelperConnection CGImgForActionPlatterWithTitle:tintColor:]"];
  v12 = [SDXPCHelperConnection identifierForColor:colorCopy];
  keyDerivedFromRelevantTraitCollectionProperties = [(SDXPCHelperConnection *)self keyDerivedFromRelevantTraitCollectionProperties];
  v14 = [v11 stringByAppendingFormat:@", %@, %@, %@, ", titleCopy, v12, keyDerivedFromRelevantTraitCollectionProperties];

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
    [v16 CGImgDataForActionPlatterWithTitle:titleCopy tintColor:colorCopy replyHandler:v23];

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

- (CGImage)CGImgForNearbyBadgeWithCount:(int64_t)count
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
  keyDerivedFromRelevantTraitCollectionProperties = [(SDXPCHelperConnection *)self keyDerivedFromRelevantTraitCollectionProperties];
  v10 = [v8 stringByAppendingFormat:@"%li, %@", count, keyDerivedFromRelevantTraitCollectionProperties];

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
    [v12 CGImgDataForNearbyBadgeWithCount:count replyHandler:v19];

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

- (id)loadBatchImageCacheData:(id)data cacheKey:(id)key mapCacheHitImage:(id)image runProxy:(id)proxy type:(id)type
{
  dataCopy = data;
  keyCopy = key;
  imageCopy = image;
  proxyCopy = proxy;
  typeCopy = type;
  v39 = +[NSMutableArray array];
  v44 = +[NSMutableArray array];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = dataCopy;
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
        v18 = keyCopy[2](keyCopy, v17);
        [v17 setCacheLookupKey:v18];

        cacheLookupKey = [v17 cacheLookupKey];
        contactIDs = [v17 contactIDs];
        v21 = [(SDXPCHelperConnection *)self CGImageWithCacheKey:cacheLookupKey contactIDs:contactIDs type:typeCopy];

        if (v21)
        {
          v22 = imageCopy[2](imageCopy, v17, v21);
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
    proxyCopy[2](proxyCopy, v39);
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
          imageData = [v28 imageData];

          if (imageData)
          {
            imageData2 = [v28 imageData];
            cacheLookupKey2 = [v28 cacheLookupKey];
            contactIDs2 = [v28 contactIDs];
            [SDXPCHelperConnection updateCacheFromSFCGImageData:imageData2 cacheKey:cacheLookupKey2 contactIDs:contactIDs2];
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

+ (id)identifierForColor:(id)color
{
  colorCopy = color;
  if (color)
  {
    v8 = 0;
    var8[0] = 0;
    v7 = 0;
    v6 = 0;
    [color getRed:var8 green:&v8 blue:&v7 alpha:&v6];
    colorCopy = [NSString stringWithFormat:@"(UIColor %.1f, %.1f, %.1f, %.1f)", var8[0], v8, v7, v6];
    v3 = var8[2];
  }

  return colorCopy;
}

- (id)keyDerivedFromRelevantTraitCollectionProperties
{
  v2 = self->_latestHostConfig;
  v3 = v2;
  if (v2)
  {
    hostTraitCollection = [(UISUIActivityViewControllerConfiguration *)v2 hostTraitCollection];
    userInterfaceStyle = [hostTraitCollection userInterfaceStyle];
    hostTraitCollection2 = [(UISUIActivityViewControllerConfiguration *)v3 hostTraitCollection];
    preferredContentSizeCategory = [hostTraitCollection2 preferredContentSizeCategory];
    hostTraitCollection3 = [(UISUIActivityViewControllerConfiguration *)v3 hostTraitCollection];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @",%li,%@,%li,", userInterfaceStyle, preferredContentSizeCategory, [hostTraitCollection3 layoutDirection]);
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
    hostTraitCollection = [(UISUIActivityViewControllerConfiguration *)v2 hostTraitCollection];
    if ([hostTraitCollection userInterfaceStyle] == 1)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    hostTraitCollection2 = [(UISUIActivityViewControllerConfiguration *)v3 hostTraitCollection];
    preferredContentSizeCategory = [hostTraitCollection2 preferredContentSizeCategory];
    hostTraitCollection3 = [(UISUIActivityViewControllerConfiguration *)v3 hostTraitCollection];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @",%li,%@,%li,", v5, preferredContentSizeCategory, [hostTraitCollection3 layoutDirection]);
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

- (id)perspectiveDataForUIActivityTitle:(id)title textColor:(id)color
{
  titleCopy = title;
  colorCopy = color;
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
  [v8 perspectiveDataForUIActivityTitle:titleCopy textColor:colorCopy replyHandler:v11];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)perspectiveDataForActionPlatterWithTitle:(id)title tintColor:(id)color
{
  titleCopy = title;
  colorCopy = color;
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
  [v8 perspectiveDataForActionPlatterWithTitle:titleCopy tintColor:colorCopy replyHandler:v11];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)perspectiveDataForActivityMoreListEntryForActivityTitle:(id)title labelColor:(id)color activityCategory:(int64_t)category
{
  titleCopy = title;
  colorCopy = color;
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
  [v10 perspectiveDataForActivityMoreListEntryForActivityTitle:titleCopy labelColor:colorCopy activityCategory:category replyHandler:v13];

  v11 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v11;
}

- (id)perspectiveDataForNearbyBadgeWithCount:(int64_t)count
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
  [v5 perspectiveDataForNearbyBadgeWithCount:count replyHandler:v8];

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

- (void)setSessionKeepAliveTransactionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  self->_needsTransactionRelease = identifierCopy != 0;
  v8 = identifierCopy;
  if (identifierCopy)
  {
    v5 = identifierCopy;
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