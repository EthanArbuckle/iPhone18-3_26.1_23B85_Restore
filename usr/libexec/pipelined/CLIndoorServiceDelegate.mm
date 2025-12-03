@interface CLIndoorServiceDelegate
+ (BOOL)isEntitled:(id)entitled forEntitlement:(id)entitlement allowRootEverything:(BOOL)everything;
+ (BOOL)validateEntitlement:(id)entitlement forConnection:(id)connection forSelector:(SEL)selector;
+ (id)defaultWorkdir;
+ (id)versionString;
+ (void)logViolation:(id)violation ofEntitlement:(id)entitlement forSelector:(SEL)selector;
- (BOOL)initializeDb:(BOOL)db;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)tilePrefetchShouldPrefetchMetadataForFloor:(const void *)floor withLocationContext:(int64_t)context;
- (BOOL)tilePrefetchShouldPrefetchTileDataForFloor:(const void *)floor;
- (CLIndoorProvider)currentProvider;
- (CLIndoorServiceDelegate)initWithWorkdir:(id)workdir;
- (CLIndoorTilePrefetcher)prefetcher;
- (id).cxx_construct;
- (id)onQueueCreateProviderForConnection:(id)connection;
- (int)getMaxPriorityForPrefetch:(id)prefetch;
- (int64_t)numFloors;
- (int64_t)onQueueNumFloors;
- (shared_ptr<ITileDb>)createDbAtBasedir:(id)basedir rootdir:(id)rootdir relativeTo:(id)to;
- (shared_ptr<ITileDb>)createLocalizerDbWithRootDir:(BOOL)dir relativeTo:(id)to;
- (vector<std::shared_ptr<ITileDb>,)onQueueDbsToClear;
- (void)_setWorkingdir:(id)workingdir;
- (void)cancelPrefetch;
- (void)clearTiles:(id)tiles;
- (void)createIndoorProvderTransaction;
- (void)deleteLegacyPrefetchDatabase;
- (void)fullyVacuumAllDBsWithReply:(id)reply;
- (void)keybagDidLock;
- (void)keybagDidUnlock;
- (void)onQueueClearTiles:(id)tiles;
- (void)onQueueClearTiles:(id)tiles fromDbs:()vector<std:(std::allocator<std::shared_ptr<ITileDb>>> *)std :shared_ptr<ITileDb>;
- (void)onQueueClearTilesIfPossible:(id)possible fromDbs:()vector<std:(std::allocator<std::shared_ptr<ITileDb>>> *)std :shared_ptr<ITileDb>;
- (void)onQueuePrefetch:(id)prefetch callback:(id)callback when:(unsigned __int8)when;
- (void)onQueueShutdown;
- (void)prefetch:(id)prefetch callback:(id)callback when:(unsigned __int8)when;
- (void)prefetcher:(id)prefetcher didFinishForegroundRequest:(id)request;
- (void)prefetcher:(id)prefetcher didFinishForegroundRequest:(id)request withError:(id)error;
- (void)releaseObjectsNotNeededForLocalization;
- (void)reloadAvailabilityTilePrefetchParameters;
- (void)shutdown;
- (void)tileForegroundFetchFinishedAllDownloads;
- (void)tilePrefetchDidDownload:(const void *)download forRequest:(id)request;
- (void)tilePrefetchFinishedAllDownloads;
- (void)tilePrefetchForTileId:(const void *)id updateRelevancy:(id)relevancy;
@end

@implementation CLIndoorServiceDelegate

+ (id)versionString
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[NSBundle mainBundle];
  infoDictionary = [v3 infoDictionary];

  v5 = [infoDictionary objectForKeyedSubscript:@"CFBundleVersion"];
  v6 = [infoDictionary objectForKeyedSubscript:@"Revision"];
  if ([(__CFString *)v6 length])
  {
    v7 = [NSString stringWithFormat:@"%@-%@", v5, v6];
  }

  else
  {
    v8 = @"<unknown version>";
    if (v6)
    {
      v8 = v6;
    }

    v7 = v8;
  }

  v9 = v7;

  objc_autoreleasePoolPop(v2);

  return v9;
}

- (void)createIndoorProvderTransaction
{
  transactionManager = [(CLIndoorServiceDelegate *)self transactionManager];
  [transactionManager openTransactionWithDescription:@"start indoor provider"];
}

- (void)keybagDidUnlock
{
  if (qword_10045B070 != -1)
  {
    sub_100388008();
    v3 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "keybag did unlock", buf, 2u);
  }

LABEL_4:
  objc_initWeak(buf, self);
  q = self->_q;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000B6E0;
  v5[3] = &unk_10044B1D0;
  objc_copyWeak(&v6, buf);
  v5[4] = self;
  dispatch_async(q, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (void)releaseObjectsNotNeededForLocalization
{
  if (qword_10045B070 != -1)
  {
    sub_100388008();
    v3 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Destroying FilesystemDB objects", buf, 2u);
  }

LABEL_4:
  cntrl = self->_fsDb.__cntrl_;
  self->_fsDb.__ptr_ = 0;
  self->_fsDb.__cntrl_ = 0;
  if (cntrl && !atomic_fetch_add(cntrl + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*cntrl + 16))(cntrl);
    std::__shared_weak_count::__release_weak(cntrl);
  }

  if (!self->_fsDbHandle.__ptr_)
  {
LABEL_13:
    if (!self->_prefetcher)
    {
      return;
    }

LABEL_14:
    if (qword_10045B070 == -1)
    {
      v7 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_100388618();
      v7 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
LABEL_17:
        prefetcher = [(CLIndoorServiceDelegate *)self prefetcher];
        [prefetcher invalidate];

        if (qword_10045B070 == -1)
        {
          v9 = qword_10045B078;
          if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
          {
LABEL_20:
            [(CLIndoorServiceDelegate *)self setPrefetcher:0];
            return;
          }
        }

        else
        {
          sub_100388618();
          v9 = qword_10045B078;
          if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
          {
            goto LABEL_20;
          }
        }

        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Destroying the prefetcher", v10, 2u);
        goto LABEL_20;
      }
    }

    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Invalidating the prefetcher", v11, 2u);
    goto LABEL_17;
  }

  if (qword_10045B070 != -1)
  {
    sub_100388618();
    v5 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_10:
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Closing the base.local db handle", v12, 2u);
  }

LABEL_11:
  v6 = self->_fsDbHandle.__cntrl_;
  self->_fsDbHandle.__ptr_ = 0;
  self->_fsDbHandle.__cntrl_ = 0;
  if (!v6 || atomic_fetch_add(v6 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_13;
  }

  (*(*v6 + 16))(v6);
  std::__shared_weak_count::__release_weak(v6);
  if (self->_prefetcher)
  {
    goto LABEL_14;
  }
}

+ (BOOL)validateEntitlement:(id)entitlement forConnection:(id)connection forSelector:(SEL)selector
{
  entitlementCopy = entitlement;
  connectionCopy = connection;
  v10 = [self isEntitled:connectionCopy forEntitlement:entitlementCopy];
  if ((v10 & 1) == 0)
  {
    [self logViolation:connectionCopy ofEntitlement:entitlementCopy forSelector:selector];
  }

  return v10;
}

+ (BOOL)isEntitled:(id)entitled forEntitlement:(id)entitlement allowRootEverything:(BOOL)everything
{
  everythingCopy = everything;
  entitledCopy = entitled;
  entitlementCopy = entitlement;
  if (!entitledCopy)
  {
    if (qword_10045B070 == -1)
    {
      v11 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
      {
LABEL_9:
        v10 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      sub_100388008();
      v11 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Attempt to check entitlement of nil connection", v14, 2u);
    goto LABEL_9;
  }

  if (everythingCopy && ![entitledCopy effectiveUserIdentifier] || (v9 = objc_msgSend(entitledCopy, "processIdentifier"), v9 == getpid()))
  {
    v10 = 1;
  }

  else
  {
    v12 = [entitledCopy valueForEntitlement:@"com.apple.pipelined"];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = [v12 containsObject:entitlementCopy];
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_15:

  return v10;
}

+ (void)logViolation:(id)violation ofEntitlement:(id)entitlement forSelector:(SEL)selector
{
  violationCopy = violation;
  entitlementCopy = entitlement;
  if (qword_10045B070 != -1)
  {
    sub_100388008();
  }

  v9 = qword_10045B078;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = NSStringFromSelector(selector);
    v11 = 138543875;
    v12 = v10;
    v13 = 1025;
    processIdentifier = [violationCopy processIdentifier];
    v15 = 2113;
    v16 = entitlementCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Attempt to invoke %{public}@ by pid %{private}d without the appropriate entitlement %{private}@ set", &v11, 0x1Cu);
  }
}

+ (id)defaultWorkdir
{
  v2 = +[NSFileManager defaultManager];
  if (+[Keybag supportsMultiUser])
  {
    if (+[Keybag supportsMultiUser])
    {
      v3 = @"mobile";
    }

    else
    {
      v3 = 0;
    }

    v4 = getpwnam([(__CFString *)v3 UTF8String]);
    if (v4)
    {
      v5 = [NSString stringWithUTF8String:v4->pw_dir];
    }

    else
    {
      v5 = 0;
    }

    v8 = [&off_10044F318 componentsJoinedByString:@"/"];
    v6 = [v5 stringByAppendingPathComponent:v8];

    v7 = [NSURL fileURLWithPath:v6];
  }

  else
  {
    v5 = [v2 URLsForDirectory:13 inDomains:1];
    if (![v5 count])
    {
      sub_10038801C(buf);

      abort_report_np();
      goto LABEL_29;
    }

    v6 = [v5 objectAtIndex:0];
    v7 = [v6 URLByAppendingPathComponent:@"com.apple.pipelined"];
  }

  v9 = v7;

  if (!v9)
  {
    sub_1003883F0(buf);

    abort_report_np();
    goto LABEL_29;
  }

  v28 = 0;
  [v2 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v28];
  v10 = v28;
  if (v10)
  {
    v16 = v10;
    v17 = sub_100374178();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      localizedDescription = [v16 localizedDescription];
      v19 = localizedDescription;
      uTF8String = [localizedDescription UTF8String];
      *buf = 68289795;
      *&buf[4] = 0;
      v30 = 2082;
      v31 = "";
      v32 = 2081;
      v33 = uTF8String;
      v34 = 2082;
      v35 = "assert";
      v36 = 2081;
      v37 = "error == nullptr";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Failed to create directory:, error:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    }

    v21 = sub_100374178();
    if (os_signpost_enabled(v21))
    {
      localizedDescription2 = [v16 localizedDescription];
      v23 = localizedDescription2;
      uTF8String2 = [localizedDescription2 UTF8String];
      *buf = 68289795;
      *&buf[4] = 0;
      v30 = 2082;
      v31 = "";
      v32 = 2081;
      v33 = uTF8String2;
      v34 = 2082;
      v35 = "assert";
      v36 = 2081;
      v37 = "error == nullptr";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create directory:", "{msg%{public}.0s:Failed to create directory:, error:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    }

    v25 = sub_100374178();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      localizedDescription3 = [v16 localizedDescription];
      v27 = localizedDescription3;
      sub_100388130([localizedDescription3 UTF8String], buf, v25, localizedDescription3);
    }

    abort_report_np();
LABEL_29:
    __break(1u);
  }

  v11 = v9;
  v12 = realpath_DARWIN_EXTSN([v9 fileSystemRepresentation], 0);
  if (!v12)
  {
    sub_1003882DC(buf);

    abort_report_np();
    goto LABEL_29;
  }

  v13 = [NSString stringWithUTF8String:v12];
  v14 = [NSURL fileURLWithPath:v13];

  if (!v14)
  {
    sub_1003881C8(buf);

    abort_report_np();
    goto LABEL_29;
  }

  free(v12);

  return v14;
}

- (CLIndoorServiceDelegate)initWithWorkdir:(id)workdir
{
  workdirCopy = workdir;
  v45.receiver = self;
  v45.super_class = CLIndoorServiceDelegate;
  v5 = [(CLIndoorServiceDelegate *)&v45 init];
  if (!v5 || (v6 = dispatch_queue_create("com.apple.pipelined.positioning", 0), v7 = *(v5 + 14), *(v5 + 14) = v6, v7, !*(v5 + 14)))
  {
    v26 = 0;
    goto LABEL_7;
  }

  v5[56] = 0;
  location = sub_100005F30();
  v42 = v8;
  v9 = sub_100005C94(&location, &v42 + 1);
  v39 = sub_100005F40();
  v40 = v10;
  v11 = sub_100005C94(&v39, &v40 + 1);
  v37 = sub_100005F54();
  v38 = v12;
  v13 = sub_100005C94(&v37, &v38 + 1);
  v35 = sub_100005F64();
  v36 = v14;
  v15 = sub_100005C94(&v35, &v36 + 1);
  v33 = sub_100006214();
  v34 = v16;
  v17 = sub_100005F78(&v33, &v34 + 1);
  v31 = sub_100006224();
  v32 = v18;
  v19 = sub_100005F78(&v31, &v32 + 1);
  sub_1002186B4(to, v9, v11, v13, v15, v17, v19);
  *(v5 + 60) = *to;
  *(v5 + 76) = v44;
  if (workdirCopy || (+[CLIndoorServiceDelegate defaultWorkdir], (workdirCopy = objc_claimAutoreleasedReturnValue()) != 0))
  {
    [v5 _setWorkingdir:workdirCopy];
    [v5 deleteLegacyPrefetchDatabase];
    objc_initWeak(&location, v5);
    v20 = sub_100003F78();
    v21 = *(v5 + 14);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3321888768;
    v28[2] = sub_100374DA4;
    v28[3] = &unk_10044BA48;
    objc_copyWeak(to, &location);
    v22 = workdirCopy;
    to[1] = v22;
    objc_copyWeak(&v29, to);
    v30 = to[1];
    (*(*v20 + 48))(v20, v21, v28);

    objc_destroyWeak(to);
    xpc_set_event_stream_handler("com.apple.notifyd.matching", *(v5 + 14), &stru_10044BA78);
    v23 = objc_alloc_init(IndoorServiceTransactionManager);
    [v5 setTransactionManager:v23];

    v24 = [[Keybag alloc] initWithDelegate:v5];
    v25 = *(v5 + 17);
    *(v5 + 17) = v24;

    v26 = v5;
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
    workdirCopy = v22;
LABEL_7:

    return v26;
  }

  sub_100388504(to);

  result = abort_report_np();
  __break(1u);
  return result;
}

- (void)keybagDidLock
{
  if (qword_10045B070 == -1)
  {
    v2 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      return;
    }
  }

  else
  {
    sub_100388008();
    v2 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      return;
    }
  }

  *v3 = 0;
  _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "keybag did lock", v3, 2u);
}

- (void)_setWorkingdir:(id)workingdir
{
  workingdirCopy = workingdir;
  workdir = [(CLIndoorServiceDelegate *)self workdir];

  if (workdir)
  {
    sub_100388640(&v23);

    v18 = 344;
    v19 = "[CLIndoorServiceDelegate _setWorkingdir:]";
    v17 = "/Library/Caches/com.apple.xbs/Sources/purpleslam/daemon/indoorservice/CLIndoorServiceDelegate.mm";
    abort_report_np();
    __break(1u);
LABEL_21:
    sub_100388618();
    goto LABEL_13;
  }

  sub_100375374(&v23);
  if (v23 == 1)
  {
    if (v25 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v8 = [NSURL fileURLWithFileSystemRepresentation:p_p isDirectory:1 relativeToURL:0];
    v9 = v8;
    if (v8)
    {
      v10 = v8;

      workingdirCopy = v10;
    }
  }

  workdir = +[NSFileManager defaultManager];
  path = [workingdirCopy path];
  v12 = [workdir fileExistsAtPath:path];

  if (v12)
  {
    v3 = 0;
    goto LABEL_16;
  }

  path2 = [workingdirCopy path];
  v20 = 0;
  v14 = [workdir createDirectoryAtPath:path2 withIntermediateDirectories:1 attributes:0 error:&v20];
  v3 = v20;

  if (v14)
  {
    goto LABEL_16;
  }

  if (qword_10045B070 != -1)
  {
    goto LABEL_21;
  }

LABEL_13:
  v15 = qword_10045B078;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = [v3 description];
    *buf = 138477827;
    v22 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failure to create working directory, %{private}@", buf, 0xCu);
  }

LABEL_16:
  [(CLIndoorServiceDelegate *)self setWorkdir:workingdirCopy, v17, v18, v19];

  if (v23 == 1 && v25 < 0)
  {
    operator delete(__p);
  }
}

- (void)deleteLegacyPrefetchDatabase
{
  v3 = +[NSFileManager defaultManager];
  workdir = [(CLIndoorServiceDelegate *)self workdir];
  path = [workdir path];
  v16[0] = path;
  v16[1] = @"prefetch";
  v6 = [NSArray arrayWithObjects:v16 count:2];
  v7 = [NSString pathWithComponents:v6];

  if ([v3 fileExistsAtPath:v7])
  {
    if (qword_10045B070 != -1)
    {
      sub_100388618();
    }

    v8 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138477827;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Deleting legacy prefetch database directory, %{private}@", buf, 0xCu);
    }

    v13 = 0;
    v9 = [v3 removeItemAtPath:v7 error:&v13];
    v10 = v13;
    if ((v9 & 1) == 0)
    {
      if (qword_10045B070 != -1)
      {
        sub_100388618();
      }

      v11 = qword_10045B078;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [v10 description];
        *buf = 138477827;
        v15 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error, while deleting legacy prefetch database directory, %{private}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v10 = 0;
  }
}

- (void)fullyVacuumAllDBsWithReply:(id)reply
{
  replyCopy = reply;
  if (qword_10045B070 != -1)
  {
    sub_100388008();
    v5 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Dispatching request to vacuum databases", buf, 2u);
  }

LABEL_4:
  objc_initWeak(buf, self);
  q = self->_q;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100375884;
  v8[3] = &unk_10044BAC0;
  objc_copyWeak(&v10, buf);
  v9 = replyCopy;
  v7 = replyCopy;
  dispatch_async(q, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)clearTiles:(id)tiles
{
  tilesCopy = tiles;
  if (qword_10045B070 != -1)
  {
    sub_100388008();
    v5 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Dispatching request to clear tiles", buf, 2u);
  }

LABEL_4:
  objc_initWeak(buf, self);
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100375E38;
  block[3] = &unk_10044BAE8;
  objc_copyWeak(&v11, buf);
  v9 = tilesCopy;
  selfCopy = self;
  v7 = tilesCopy;
  dispatch_async(q, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)cancelPrefetch
{
  if (qword_10045B070 != -1)
  {
    sub_100388008();
    v3 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Dispatching request to cancel prefetch", buf, 2u);
  }

LABEL_4:
  objc_initWeak(buf, self);
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100376184;
  block[3] = &unk_1004488F0;
  objc_copyWeak(&v6, buf);
  dispatch_async(q, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (CLIndoorTilePrefetcher)prefetcher
{
  prefetcher = self->_prefetcher;
  if (!prefetcher)
  {
    v4 = +[GEOCountryConfiguration sharedConfiguration];
    v5 = [v4 defaultForKey:@"CLPipelineTileServer" defaultValue:0];
    v6 = [NSURL URLWithString:v5];

    v7 = +[GEOCountryConfiguration sharedConfiguration];
    v8 = [v7 defaultForKey:@"CLPipelineTilePrefix" defaultValue:0];

    if (qword_10045B070 != -1)
    {
      sub_100388008();
    }

    v9 = qword_10045B078;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v6 description];
      *__p = 138412546;
      *&__p[4] = v10;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Country specific tile data URL override: %@, path prefix override: %@", __p, 0x16u);
    }

    sub_100322270(v6, v8, __p);
    v11 = [CLIndoorTilePrefetcher alloc];
    v12 = [(CLIndoorServiceDelegate *)self q];
    v13 = [(CLIndoorTilePrefetcher *)v11 initWithServerConfiguration:__p usingDelegate:self queue:v12];
    v14 = self->_prefetcher;
    self->_prefetcher = v13;

    if (v19 < 0)
    {
      operator delete(*__p);
    }

    prefetcher = self->_prefetcher;
  }

  return prefetcher;
}

- (void)prefetch:(id)prefetch callback:(id)callback when:(unsigned __int8)when
{
  prefetchCopy = prefetch;
  callbackCopy = callback;
  objc_initWeak(&location, self);
  v10 = [(CLIndoorServiceDelegate *)self q];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100376680;
  block[3] = &unk_10044BB10;
  objc_copyWeak(&v16, &location);
  v14 = prefetchCopy;
  v15 = callbackCopy;
  whenCopy = when;
  v11 = callbackCopy;
  v12 = prefetchCopy;
  dispatch_async(v10, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (int)getMaxPriorityForPrefetch:(id)prefetch
{
  prefetchCopy = prefetch;
  [(CLIndoorServiceDelegate *)self initializeDb];
  if (self->_fsDb.__ptr_)
  {
    __p = 0;
    v42 = 0;
    v43 = 0;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v4 = prefetchCopy;
    v5 = [v4 countByEnumeratingWithState:&v37 objects:v73 count:16];
    if (v5)
    {
      v6 = *v38;
      do
      {
        v7 = 0;
        v35 = v5;
        do
        {
          if (*v38 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v37 + 1) + 8 * v7);
          venueUuid = [v8 venueUuid];
          v10 = venueUuid;
          __s = [venueUuid UTF8String];
          priority = [v8 priority];
          v11 = v42;
          if (v42 >= v43)
          {
            v15 = sub_10037CF30(&__p, &__s, &priority);
          }

          else
          {
            v12 = __s;
            v13 = strlen(__s);
            if (v13 >= 0x7FFFFFFFFFFFFFF8)
            {
              sub_10000D39C();
            }

            v14 = v13;
            if (v13 >= 0x17)
            {
              operator new();
            }

            v42[23] = v13;
            if (v13)
            {
              memmove(v11, v12, v13);
            }

            *(v11 + v14) = 0;
            v11[6] = priority;
            v15 = (v11 + 8);
            v5 = v35;
          }

          v42 = v15;

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v37 objects:v73 count:16];
      }

      while (v5);
    }

    v16 = (*(*self->_fsDb.__ptr_ + 216))(self->_fsDb.__ptr_, &__p, &self->_tileStorageLimits, &v44);
    if (qword_10045B070 != -1)
    {
      sub_100388618();
    }

    v17 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__s) = 67240704;
      HIDWORD(__s) = v16;
      v54 = 2050;
      *v55 = (v42 - __p) >> 5;
      *&v55[8] = 1026;
      *v56 = v45;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "TileFetch, maxpriority, %{public}d, len, %{public}lu, queued, %{public}d", &__s, 0x18u);
    }

    if (!v45)
    {
      goto LABEL_36;
    }

    v18 = 100;
    if (v51)
    {
      v18 = 100 * v45 / v51;
    }

    v19 = v48 + v49;
    if (v50)
    {
      v20 = 100 * v19 / v50;
      v21 = 100 * v46 / v50;
      v22 = v44;
      if (v44)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v22 = v44;
      if (v44)
      {
LABEL_27:
        v23 = 100 * v45 / v22;
        if (qword_10045B070 == -1)
        {
LABEL_28:
          v24 = qword_10045B078;
          if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(__s) = 67243008;
            HIDWORD(__s) = v44;
            v54 = 1026;
            *v55 = v45;
            *&v55[4] = 1026;
            *&v55[6] = v46;
            *v56 = 1026;
            *&v56[2] = v47;
            v57 = 1026;
            v58 = v48;
            v59 = 1026;
            v60 = v49;
            v61 = 1026;
            v62 = v50;
            v63 = 1026;
            v64 = v51;
            v65 = 1026;
            v66 = v18;
            v67 = 1026;
            v68 = v20;
            v69 = 1026;
            v70 = v21;
            v71 = 1026;
            v72 = v23;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Wifi2Metric, prefetch, incoming, %{public}d, queued, %{public}d, ondisk, %{public}d, lowpriortity, %{public}d, evictlow, %{public}d, evictoff, %{public}d, tiles, %{public}d, max, %{public}d, pctRequest, %{public}d, pctEvict, %{public}d, pctOndisk, %{public}d, pctFetch, %{public}d", &__s, 0x4Au);
          }

          AnalyticsSendEventLazy();
          if (v19)
          {
            v25 = v52;
            if (qword_10045B070 != -1)
            {
              sub_100388618();
            }

            v26 = qword_10045B078;
            v27 = 100 * v25 / v19;
            if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(__s) = 67240704;
              HIDWORD(__s) = v19;
              v54 = 1026;
              *v55 = v52;
              *&v55[4] = 1026;
              *&v55[6] = v27;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Wifi2Metric, eviction, %{public}d, untouched, %{public}d, pct, %{public}d, trigger, prefetch", &__s, 0x14u);
            }

            AnalyticsSendEventLazy();
          }

LABEL_36:
          v28 = __p;
          if (__p)
          {
            v29 = v42;
            v30 = __p;
            if (v42 != __p)
            {
              do
              {
                v31 = *(v29 - 9);
                v29 -= 4;
                if (v31 < 0)
                {
                  operator delete(*v29);
                }
              }

              while (v29 != v28);
              v30 = __p;
            }

            v42 = v28;
            operator delete(v30);
          }

          goto LABEL_49;
        }

LABEL_52:
        sub_100388618();
        goto LABEL_28;
      }
    }

    v23 = 0;
    if (qword_10045B070 == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_52;
  }

  if (qword_10045B070 != -1)
  {
    sub_100388008();
  }

  v32 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__s) = 0;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Prefetched file before first unlock!", &__s, 2u);
  }

  v16 = 0;
LABEL_49:

  return v16;
}

- (void)onQueuePrefetch:(id)prefetch callback:(id)callback when:(unsigned __int8)when
{
  whenCopy = when;
  prefetchCopy = prefetch;
  callbackCopy = callback;
  selfCopy = self;
  v8 = [(CLIndoorServiceDelegate *)self q];
  dispatch_assert_queue_V2(v8);

  if (whenCopy)
  {
    if (whenCopy == 1)
    {
      [(CLIndoorServiceDelegate *)selfCopy setPrefetchCompletion:callbackCopy];
    }
  }

  else
  {
    callbackCopy[2]();
  }

  transactionManager = [(CLIndoorServiceDelegate *)selfCopy transactionManager];
  [transactionManager openTransactionWithDescription:@"Prefetching"];

  if ([(CLIndoorServiceDelegate *)selfCopy initializeDb])
  {
    [(CLIndoorServiceDelegate *)selfCopy reloadAvailabilityTilePrefetchParameters];
    transactionManager2 = objc_alloc_init(NSMutableArray);
    v48 = objc_alloc_init(NSMutableArray);
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = prefetchCopy;
    v11 = [obj countByEnumeratingWithState:&v58 objects:v77 count:16];
    if (!v11)
    {
      goto LABEL_17;
    }

    v12 = *v59;
    while (1)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v59 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v58 + 1) + 8 * i);
        locationContext = [v14 locationContext];
        v16 = transactionManager2;
        if (!locationContext)
        {
          goto LABEL_9;
        }

        if (locationContext == 1)
        {
          v16 = v48;
LABEL_9:
          [v16 addObject:v14];
          continue;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v58 objects:v77 count:16];
      if (!v11)
      {
LABEL_17:

        v43 = [transactionManager2 count];
        if ([v48 count])
        {
          v76 = [[NSSortDescriptor alloc] initWithKey:@"priority" ascending:1];
          v42 = v76;
          v17 = [NSArray arrayWithObjects:&v76 count:1];
          v18 = [v48 sortedArrayUsingDescriptors:v17];

          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v47 = v18;
          v19 = [v47 countByEnumeratingWithState:&v54 objects:v75 count:16];
          if (v19)
          {
            v20 = *v55;
            do
            {
              v21 = 0;
              do
              {
                if (*v55 != v20)
                {
                  objc_enumerationMutation(v47);
                }

                v22 = *(*(&v54 + 1) + 8 * v21);
                if (qword_10045B070 != -1)
                {
                  sub_100388618();
                }

                v23 = qword_10045B078;
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  venueUuid = [v22 venueUuid];
                  v25 = venueUuid;
                  uTF8String = [venueUuid UTF8String];
                  priority = [v22 priority];
                  *buf = 136380931;
                  v63 = uTF8String;
                  v64 = 1026;
                  LODWORD(v65) = priority;
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "TileMaxPri, sortedreg, %{private}s, %{public}d", buf, 0x12u);
                }

                v21 = v21 + 1;
              }

              while (v19 != v21);
              v19 = [v47 countByEnumeratingWithState:&v54 objects:v75 count:16];
            }

            while (v19);
          }

          v28 = [(CLIndoorServiceDelegate *)selfCopy getMaxPriorityForPrefetch:v47];
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v29 = v47;
          v30 = 0;
          v31 = [v29 countByEnumeratingWithState:&v50 objects:v74 count:16];
          if (v31)
          {
            v32 = *v51;
            while (2)
            {
              v33 = 0;
              v34 = v30;
              v30 += v31;
              do
              {
                if (*v51 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                v35 = *(*(&v50 + 1) + 8 * v33);
                if ([v35 priority] > v28)
                {
                  v30 = v34;
                  goto LABEL_44;
                }

                [transactionManager2 addObject:v35];
                ++v34;
                v33 = v33 + 1;
              }

              while (v31 != v33);
              v31 = [v29 countByEnumeratingWithState:&v50 objects:v74 count:16];
              if (v31)
              {
                continue;
              }

              break;
            }
          }

LABEL_44:

          if (qword_10045B070 == -1)
          {
LABEL_45:
            v37 = qword_10045B078;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v38 = [obj count];
              v39 = [transactionManager2 count];
              v40 = [v48 count];
              *buf = 134350336;
              v63 = v38;
              v64 = 2050;
              v65 = v39;
              v66 = 2050;
              v67 = v43;
              v68 = 2050;
              v69 = v40;
              v70 = 1026;
              v71 = v30;
              v72 = 1026;
              v73 = v28;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "TileFetch, onPrefetch, %{public}lu, reduced, %{public}lu, indoor, %{public}lu, regional, %{public}lu, %{public}d, prioritylimit, %{public}d", buf, 0x36u);
            }

            if ([transactionManager2 count])
            {
              prefetcher = [(CLIndoorServiceDelegate *)selfCopy prefetcher];
              [prefetcher prefetch:transactionManager2];
            }

            goto LABEL_50;
          }
        }

        else
        {
          v28 = 0;
          v30 = 0;
          if (qword_10045B070 == -1)
          {
            goto LABEL_45;
          }
        }

        sub_100388618();
        goto LABEL_45;
      }
    }
  }

  if (qword_10045B070 != -1)
  {
    sub_100388008();
  }

  v36 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "TileFetch, onPrefetch, skip, database handle unavailable", buf, 2u);
  }

  transactionManager2 = [(CLIndoorServiceDelegate *)selfCopy transactionManager];
  [transactionManager2 closeTransactionWithDescription:@"Prefetching"];
LABEL_50:
}

- (BOOL)tilePrefetchShouldPrefetchMetadataForFloor:(const void *)floor withLocationContext:(int64_t)context
{
  v7 = [(CLIndoorServiceDelegate *)self q];
  dispatch_assert_queue_V2(v7);

  transactionManager = [(CLIndoorServiceDelegate *)self transactionManager];
  hasAnyOpenTransaction = [transactionManager hasAnyOpenTransaction];

  if (hasAnyOpenTransaction)
  {
    [(CLIndoorServiceDelegate *)self initializeDb];
    if (self->_fsDb.__ptr_)
    {
      std::chrono::system_clock::now();
      if (context == 1)
      {
        sub_100218BF4(&self->_tileStorageLimits);
      }

      else if (context)
      {
        if (qword_10045B070 != -1)
        {
          sub_100388008();
        }

        v16 = qword_10045B078;
        if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
        {
          v19 = 67109120;
          LODWORD(v20) = context;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Unimplemented CLPipelinedLocationContext %d, default to indoor...", &v19, 8u);
        }

        sub_100218AE4(&self->_tileStorageLimits);
      }

      else
      {
        sub_100218AE4(&self->_tileStorageLimits);
      }

      ptr = self->_fsDb.__ptr_;
      sub_1001181E4(&v19, floor);
    }

    if (qword_10045B070 != -1)
    {
      sub_100388008();
    }

    v15 = qword_10045B078;
    v11 = os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      LOWORD(v19) = 0;
      v12 = "Attempt to prefetch before first unlock";
      v13 = v15;
      v14 = 2;
      goto LABEL_14;
    }
  }

  else
  {
    if (qword_10045B070 != -1)
    {
      sub_100388008();
    }

    v10 = qword_10045B078;
    v11 = os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      v19 = 136315138;
      v20 = "[CLIndoorServiceDelegate tilePrefetchShouldPrefetchMetadataForFloor:withLocationContext:]";
      v12 = "%s Got delegate call from prefetcher while shutting down. Ignoring";
      v13 = v10;
      v14 = 12;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v12, &v19, v14);
      LOBYTE(v11) = 0;
    }
  }

  return v11;
}

- (BOOL)tilePrefetchShouldPrefetchTileDataForFloor:(const void *)floor
{
  v5 = [(CLIndoorServiceDelegate *)self q];
  dispatch_assert_queue_V2(v5);

  transactionManager = [(CLIndoorServiceDelegate *)self transactionManager];
  hasAnyOpenTransaction = [transactionManager hasAnyOpenTransaction];

  if (hasAnyOpenTransaction)
  {
    [(CLIndoorServiceDelegate *)self initializeDb];
    if (self->_fsDb.__ptr_)
    {
      std::chrono::system_clock::now();
      ptr = self->_fsDb.__ptr_;
      sub_1001181E4(&v16, floor);
    }

    if (qword_10045B070 != -1)
    {
      sub_100388008();
    }

    v14 = qword_10045B078;
    v10 = os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      LOWORD(v16) = 0;
      v11 = "Attempt to prefetch before first unlock";
      v12 = v14;
      v13 = 2;
      goto LABEL_12;
    }
  }

  else
  {
    if (qword_10045B070 != -1)
    {
      sub_100388008();
    }

    v9 = qword_10045B078;
    v10 = os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      v16 = 136315138;
      v17 = "[CLIndoorServiceDelegate tilePrefetchShouldPrefetchTileDataForFloor:]";
      v11 = "%s Got delegate call from prefetcher while shutting down. Ignoring";
      v12 = v9;
      v13 = 12;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v11, &v16, v13);
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (void)tilePrefetchDidDownload:(const void *)download forRequest:(id)request
{
  requestCopy = request;
  v7 = [(CLIndoorServiceDelegate *)self q];
  dispatch_assert_queue_V2(v7);

  transactionManager = [(CLIndoorServiceDelegate *)self transactionManager];
  hasAnyOpenTransaction = [transactionManager hasAnyOpenTransaction];

  if (hasAnyOpenTransaction)
  {
    [(CLIndoorServiceDelegate *)self initializeDb];
    if (self->_fsDb.__ptr_)
    {
      v10.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      venueUuid = [requestCopy venueUuid];
      v12 = venueUuid;
      if (venueUuid)
      {
        [venueUuid ps_STLString];
      }

      else
      {
        v40[0] = 0;
        v40[1] = 0;
        v41 = 0;
      }

      floorUuid = [requestCopy floorUuid];
      v19 = floorUuid;
      if (floorUuid)
      {
        [floorUuid ps_STLString];
      }

      else
      {
        v38[0] = 0;
        v38[1] = 0;
        v39 = 0;
      }

      if (SHIBYTE(v39) < 0)
      {
        sub_100003228(v36, v38[0], v38[1]);
      }

      else
      {
        *v36 = *v38;
        v37 = v39;
      }

      if (SHIBYTE(v41) < 0)
      {
        sub_100003228(__p, v40[0], v40[1]);
      }

      else
      {
        *__p = *v40;
        v35 = v41;
      }

      *&v20 = sub_100261BAC(buf, v36, __p, +[CLLocationContextConversions fromCLPipelinedLocationContext:](CLLocationContextConversions, "fromCLPipelinedLocationContext:", [requestCopy context])).n128_u64[0];
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v37) & 0x80000000) == 0)
        {
          goto LABEL_26;
        }
      }

      else if ((SHIBYTE(v37) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      operator delete(v36[0]);
LABEL_26:
      lastRelevant = [requestCopy lastRelevant];
      [(CLIndoorServiceDelegate *)self tilePrefetchForTileId:buf updateRelevancy:lastRelevant];

      kind = [requestCopy kind];
      if (kind)
      {
        if (kind == 1)
        {
          (*(*self->_fsDb.__ptr_ + 168))(self->_fsDb.__ptr_, v10.__d_.__rep_, buf, -1, download, &self->_tileStorageLimits);
        }
      }

      else
      {
        (*(*self->_fsDb.__ptr_ + 160))(self->_fsDb.__ptr_, v10.__d_.__rep_, buf, download, &self->_tileStorageLimits);
      }

      if (qword_10045B070 != -1)
      {
        sub_100388618();
      }

      v23 = qword_10045B078;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        kind2 = [requestCopy kind];
        session = [requestCopy session];
        v26 = SHIBYTE(v39);
        v27 = v38[0];
        v28 = SHIBYTE(v41);
        v29 = v40[0];
        context = [requestCopy context];
        v31 = v40;
        *v42 = 67241219;
        if (v28 < 0)
        {
          v31 = v29;
        }

        v43 = kind2;
        v32 = v38;
        v44 = 1026;
        if (v26 < 0)
        {
          v32 = v27;
        }

        v45 = session;
        v46 = 2081;
        if (context == 1)
        {
          v33 = 82;
        }

        else
        {
          v33 = 73;
        }

        v47 = v32;
        v48 = 2081;
        v49 = v31;
        v50 = 1026;
        v51 = v33;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "@TileFetch, kind, %{public}d, session, %{public}d, %{private}s, %{private}s, %{public}c", v42, 0x28u);
      }

      if (v55 < 0)
      {
        operator delete(v54);
        if ((v53 & 0x80000000) == 0)
        {
LABEL_45:
          if ((SHIBYTE(v39) & 0x80000000) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_50;
        }
      }

      else if ((v53 & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      operator delete(*buf);
      if ((SHIBYTE(v39) & 0x80000000) == 0)
      {
LABEL_46:
        if ((SHIBYTE(v41) & 0x80000000) == 0)
        {
          goto LABEL_47;
        }

LABEL_51:
        operator delete(v40[0]);
        goto LABEL_47;
      }

LABEL_50:
      operator delete(v38[0]);
      if ((SHIBYTE(v41) & 0x80000000) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_51;
    }

    if (qword_10045B070 != -1)
    {
      sub_100388008();
    }

    v17 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "Prefetched file before first unlock!";
      v15 = v17;
      v16 = 2;
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_10045B070 != -1)
    {
      sub_100388008();
    }

    v13 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[CLIndoorServiceDelegate tilePrefetchDidDownload:forRequest:]";
      v14 = "%s Got delegate call from prefetcher while shutting down. Ignoring";
      v15 = v13;
      v16 = 12;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
    }
  }

LABEL_47:
}

- (void)tilePrefetchForTileId:(const void *)id updateRelevancy:(id)relevancy
{
  relevancyCopy = relevancy;
  v7 = [(CLIndoorServiceDelegate *)self q];
  dispatch_assert_queue_V2(v7);

  transactionManager = [(CLIndoorServiceDelegate *)self transactionManager];
  hasAnyOpenTransaction = [transactionManager hasAnyOpenTransaction];

  if (hasAnyOpenTransaction)
  {
    [(CLIndoorServiceDelegate *)self initializeDb];
    if (self->_fsDb.__ptr_)
    {
      [relevancyCopy timeIntervalSince1970];
      v11.__d_.__rep_ = std::chrono::system_clock::from_time_t(v10).__d_.__rep_;
      (*(*self->_fsDb.__ptr_ + 192))(self->_fsDb.__ptr_, v11.__d_.__rep_, id);
      goto LABEL_13;
    }

    if (qword_10045B070 != -1)
    {
      sub_100388008();
    }

    v16 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      v13 = "@TileFetch, error, Couldn't mark venue as relevant - before first unlock!?";
      v14 = v16;
      v15 = 2;
      goto LABEL_12;
    }
  }

  else
  {
    if (qword_10045B070 != -1)
    {
      sub_100388008();
    }

    v12 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = "[CLIndoorServiceDelegate tilePrefetchForTileId:updateRelevancy:]";
      v13 = "%s Got delegate call from prefetcher while shutting down. Ignoring";
      v14 = v12;
      v15 = 12;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v13, &v17, v15);
    }
  }

LABEL_13:
}

- (void)tileForegroundFetchFinishedAllDownloads
{
  if (qword_10045B070 == -1)
  {
    v3 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_100388008();
  v3 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "TileFetch, prefetchFinished", v5, 2u);
  }

LABEL_4:
  [(CLIndoorServiceDelegate *)self initializeDb];
  ptr = self->_fsDb.__ptr_;
  if (ptr)
  {
    (*(*ptr + 176))(ptr, &self->_tileStorageLimits);
  }
}

- (void)tilePrefetchFinishedAllDownloads
{
  v3 = [(CLIndoorServiceDelegate *)self q];
  dispatch_assert_queue_V2(v3);

  if (qword_10045B070 == -1)
  {
    v4 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_100388008();
  v4 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "TileFetch, prefetchFinished", buf, 2u);
  }

LABEL_4:
  transactionManager = [(CLIndoorServiceDelegate *)self transactionManager];
  v6 = [transactionManager hasOpenTransactionWithDescription:@"Prefetching"];

  if (v6)
  {
    [(CLIndoorServiceDelegate *)self initializeDb];
    ptr = self->_fsDb.__ptr_;
    if (ptr)
    {
      (*(*ptr + 176))(ptr, &self->_tileStorageLimits);
    }

    v8 = objc_autoreleasePoolPush();
    if ([(CLIndoorServiceDelegate *)self initializeDb])
    {
      prefetchCompletion = [(CLIndoorServiceDelegate *)self prefetchCompletion];

      if (prefetchCompletion)
      {
        prefetchCompletion2 = [(CLIndoorServiceDelegate *)self prefetchCompletion];
        prefetchCompletion2[2]();
      }

      [(CLIndoorServiceDelegate *)self setPrefetchCompletion:0];
      transactionManager2 = [(CLIndoorServiceDelegate *)self transactionManager];
      v12 = [transactionManager2 isLastOpenTransactionWithDescription:@"Prefetching"];

      if (v12)
      {
        [(CLIndoorServiceDelegate *)self releaseObjectsNotNeededForLocalization];
        goto LABEL_22;
      }

      if (qword_10045B070 == -1)
      {
        v15 = qword_10045B078;
        if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_100388618();
        v15 = qword_10045B078;
        if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
        {
LABEL_22:
          if (qword_10045B070 == -1)
          {
            v16 = qword_10045B078;
            if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
            {
LABEL_25:
              transactionManager3 = [(CLIndoorServiceDelegate *)self transactionManager];
              [transactionManager3 closeTransactionWithDescription:@"Prefetching"];

              goto LABEL_26;
            }
          }

          else
          {
            sub_100388618();
            v16 = qword_10045B078;
            if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
            {
              goto LABEL_25;
            }
          }

          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Releasing the prefetch transaction", v18, 2u);
          goto LABEL_25;
        }
      }

      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Deferring destruction of FilesystemDB objects and prefetcher since we're still active", v19, 2u);
      goto LABEL_22;
    }

    if (qword_10045B070 == -1)
    {
      v14 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
      {
LABEL_26:
        objc_autoreleasePoolPop(v8);
        return;
      }
    }

    else
    {
      sub_100388618();
      v14 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }
    }

    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Couldn't import all prefetched venues - before first unlock!?", v20, 2u);
    goto LABEL_26;
  }

  if (qword_10045B070 == -1)
  {
    v13 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      return;
    }

    goto LABEL_14;
  }

  sub_100388618();
  v13 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_14:
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Got notified that all prefetch downloads are completed", v21, 2u);
  }
}

- (void)prefetcher:(id)prefetcher didFinishForegroundRequest:(id)request
{
  requestCopy = request;
  v5 = [(CLIndoorServiceDelegate *)self q];
  dispatch_assert_queue_V2(v5);

  currentProvider = [(CLIndoorServiceDelegate *)self currentProvider];
  [currentProvider foregroundRequestCompleted:requestCopy];
}

- (void)prefetcher:(id)prefetcher didFinishForegroundRequest:(id)request withError:(id)error
{
  requestCopy = request;
  errorCopy = error;
  v8 = [(CLIndoorServiceDelegate *)self q];
  dispatch_assert_queue_V2(v8);

  currentProvider = [(CLIndoorServiceDelegate *)self currentProvider];
  [currentProvider foregroundRequestCompleted:requestCopy withError:errorCopy];
}

- (BOOL)initializeDb:(BOOL)db
{
  dbCopy = db;
  workdir = [(CLIndoorServiceDelegate *)self workdir];
  if (!workdir)
  {
    sub_10038877C(buf);

    abort_report_np();
    __break(1u);
LABEL_32:
    sub_100388008();
LABEL_18:
    v11 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Cannot initialize db - not unlocked yet", buf, 2u);
    }

    goto LABEL_28;
  }

  if (!+[Keybag afterFirstUserUnlock])
  {
    if (qword_10045B070 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

  ptr = self->_fsDb.__ptr_;
  if (!ptr)
  {
    [(CLIndoorServiceDelegate *)self createLocalizerDbWithRootDir:0 relativeTo:workdir];
    v12 = *buf;
    memset(buf, 0, 16);
    cntrl = self->_fsDb.__cntrl_;
    self->_fsDb = v12;
    if (cntrl && !atomic_fetch_add(cntrl + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*cntrl + 16))(cntrl);
      std::__shared_weak_count::__release_weak(cntrl);
    }

    if (buf[1] && !atomic_fetch_add(buf[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*buf[1] + 16))(buf[1]);
      std::__shared_weak_count::__release_weak(buf[1]);
    }

    if (self->_fsDb.__ptr_)
    {
      objc_alloc_init(CLIndoorTileEvictionPolicy);
      CFAbsoluteTimeGetCurrent();
      v14 = self->_fsDb.__ptr_;
      operator new();
    }

LABEL_28:
    v15 = 0;
    goto LABEL_30;
  }

  if (dbCopy)
  {
    v7 = (*(*ptr + 240))(ptr);
    v8 = *(v7 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v7 + 8);
    }

    if (!v8)
    {
      [(CLIndoorServiceDelegate *)self createLocalizerDbWithRootDir:1 relativeTo:workdir];
      if (buf[0])
      {
        v9 = buf[1];
        if (buf[1])
        {
          atomic_fetch_add_explicit(buf[1] + 1, 1uLL, memory_order_relaxed);
        }

        v10 = self->_fsDb.__cntrl_;
        self->_fsDb.__ptr_ = buf[0];
        self->_fsDb.__cntrl_ = v9;
        if (v10 && !atomic_fetch_add(v10 + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          (*(*v10 + 16))(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (buf[1] && !atomic_fetch_add(buf[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
        (*(*buf[1] + 16))(buf[1]);
        std::__shared_weak_count::__release_weak(buf[1]);
      }
    }
  }

  v15 = 1;
LABEL_30:

  return v15;
}

- (shared_ptr<ITileDb>)createLocalizerDbWithRootDir:(BOOL)dir relativeTo:(id)to
{
  if (dir)
  {
    v4 = [(CLIndoorServiceDelegate *)self createDbAtBasedir:@"base.local" rootdir:@"playback" relativeTo:to];
  }

  else
  {
    v4 = [(CLIndoorServiceDelegate *)self createDbAtBasedir:@"base.local" rootdir:0 relativeTo:to];
  }

  result.__cntrl_ = v5;
  result.__ptr_ = v4;
  return result;
}

- (shared_ptr<ITileDb>)createDbAtBasedir:(id)basedir rootdir:(id)rootdir relativeTo:(id)to
{
  v54 = v5;
  basedirCopy = basedir;
  rootdirCopy = rootdir;
  toCopy = to;
  sub_10000B2A4(&buf);
  v11 = sub_10000B010(&buf, &buf.__r_.__value_.__r.__words[2]);
  v12 = toCopy;
  fileSystemRepresentation = [toCopy fileSystemRepresentation];
  v14 = strlen(fileSystemRepresentation);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_10000D39C();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v14;
  if (v14)
  {
    memmove(&__dst, fileSystemRepresentation, v14);
  }

  __dst.__r_.__value_.__s.__data_[v15] = 0;
  *&v57.__val_ = 0;
  v57.__cat_ = 0;
  v58 = 0;
  sub_10000B2C0(&__dst, &v57, &buf);
  v16 = buf.__r_.__value_.__r.__words[2];
  if ((v58 & 1) != 0 && (v58 != 1 || v57.__val_))
  {
    if (qword_10045B070 != -1)
    {
      sub_100388618();
    }

    v18 = qword_10045B078;
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    if (v58)
    {
      if (v58 == 1)
      {
        std::error_code::message(&buf, &v57);
LABEL_26:
        p_buf = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        LODWORD(v64.__r_.__value_.__l.__data_) = 136380675;
        *(v64.__r_.__value_.__r.__words + 4) = p_buf;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Couldn't determine amount of disk space available - assuming we have enough. %{private}s", &v64, 0xCu);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

LABEL_30:

LABEL_31:
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        transactionManager = [(CLIndoorServiceDelegate *)self transactionManager];
        hasAnyOpenTransaction = [transactionManager hasAnyOpenTransaction];

        if ((hasAnyOpenTransaction & 1) == 0)
        {
          sub_100388890(&buf);

          abort_report_np();
          goto LABEL_127;
        }

        v23 = [toCopy URLByAppendingPathComponent:basedirCopy];
        path = [v23 path];

        if (path)
        {
          [path ps_STLString];
        }

        else
        {
          memset(&buf, 0, sizeof(buf));
        }

        __dst = buf;
        *&v57.__val_ = 0;
        v57.__cat_ = 0;
        v58 = 0;
        if (!rootdirCopy)
        {
LABEL_41:
          p_fsDbHandle = &self->_fsDbHandle;
          ptr = self->_fsDbHandle.__ptr_;
          if (ptr)
          {
            v29 = sub_10023C594(ptr, "main");
            v30 = strlen(v29);
            if (v30 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_10000D39C();
            }

            v31 = v30;
            if (v30 >= 0x17)
            {
              operator new();
            }

            *(&v64.__r_.__value_.__s + 23) = v30;
            if (v30)
            {
              memmove(&v64, v29, v30);
            }

            v64.__r_.__value_.__s.__data_[v31] = 0;
            buf = v64;
            sub_100002F5C(&buf, 0, &v56);
            data = v56.__r_.__value_.__l.__data_;
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
              v33 = qword_10045B070;
              if (data >= 2)
              {
LABEL_50:
                if (v33 != -1)
                {
                  sub_100388618();
                }

                v34 = qword_10045B078;
                if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
                {
                  LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                  _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Recreating the base.local database with a cached file handle", &buf, 2u);
                }

                sub_10037D3F4();
              }
            }

            else
            {
              v33 = qword_10045B070;
              if (LODWORD(v56.__r_.__value_.__l.__data_) >= 2)
              {
                goto LABEL_50;
              }
            }

            if (v33 != -1)
            {
              sub_100388618();
            }

            v35 = qword_10045B078;
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              v36 = sub_10023C594(*p_fsDbHandle, "main");
              v37 = strlen(v36);
              if (v37 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_10000D39C();
              }

              v38 = v37;
              if (v37 >= 0x17)
              {
                operator new();
              }

              *(&buf.__r_.__value_.__s + 23) = v37;
              if (v37)
              {
                memmove(&buf, v36, v37);
              }

              buf.__r_.__value_.__s.__data_[v38] = 0;
              v39 = &buf;
              if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v39 = buf.__r_.__value_.__r.__words[0];
              }

              LODWORD(v64.__r_.__value_.__l.__data_) = 136380675;
              *(v64.__r_.__value_.__r.__words + 4) = v39;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Path to db no longer exists: %{private}s", &v64, 0xCu);
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }
            }

            cntrl = self->_fsDbHandle.__cntrl_;
            self->_fsDbHandle.__ptr_ = 0;
            self->_fsDbHandle.__cntrl_ = 0;
            if (cntrl && !atomic_fetch_add(cntrl + 1, 0xFFFFFFFFFFFFFFFFLL))
            {
              (*(*cntrl + 16))(cntrl);
              std::__shared_weak_count::__release_weak(cntrl);
            }
          }

          if (!sub_1000033EC(&__dst))
          {
            goto LABEL_116;
          }

          if (qword_10045B070 != -1)
          {
            sub_100388618();
          }

          v41 = qword_10045B078;
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            LOWORD(buf.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Resetting the handle to filesystem db just to be safe (it may actually be nil)", &buf, 2u);
          }

          v42 = self->_fsDbHandle.__cntrl_;
          self->_fsDbHandle.__ptr_ = 0;
          self->_fsDbHandle.__cntrl_ = 0;
          if (v42 && !atomic_fetch_add(v42 + 1, 0xFFFFFFFFFFFFFFFFLL))
          {
            (*(*v42 + 16))(v42);
            std::__shared_weak_count::__release_weak(v42);
          }

          if (qword_10045B070 != -1)
          {
            sub_100388618();
          }

          v43 = qword_10045B078;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            p_dst = &__dst;
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_dst = __dst.__r_.__value_.__r.__words[0];
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136380675;
            *(buf.__r_.__value_.__r.__words + 4) = p_dst;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "removing the db path due to version mismatch: %{private}s", &buf, 0xCu);
          }

          memset(&v64, 0, sizeof(v64));
          sub_100019F68(&__dst, &v64);
          if ((v64.__r_.__value_.__s.__data_[16] & 1) == 0 || v64.__r_.__value_.__r.__words[2] == 1 && !LODWORD(v64.__r_.__value_.__l.__data_))
          {
            goto LABEL_116;
          }

          if (qword_10045B070 != -1)
          {
            sub_100388618();
          }

          v45 = qword_10045B078;
          if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
LABEL_115:

LABEL_116:
            if (!*p_fsDbHandle)
            {
              *(&v64.__r_.__value_.__s + 23) = 10;
              strcpy(&v64, "privacy.db");
              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
              {
                sub_100003228(&buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
              }

              else
              {
                buf = __dst;
              }

              sub_1000032E4(&buf, &v64);
              sub_100007E34();
            }

            sub_1003889A4(&buf);

            abort_report_np();
LABEL_127:
            __break(1u);
            JUMPOUT(0x100379FD0);
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v46 = &__dst;
          }

          else
          {
            v46 = __dst.__r_.__value_.__r.__words[0];
          }

          if (v64.__r_.__value_.__r.__words[2])
          {
            if (v64.__r_.__value_.__r.__words[2] == 1)
            {
              std::error_code::message(&v56, &v64);
LABEL_103:
              if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v48 = &v56;
              }

              else
              {
                v48 = v56.__r_.__value_.__r.__words[0];
              }

              if (v64.__r_.__value_.__r.__words[2])
              {
                if (v64.__r_.__value_.__r.__words[2] == 1)
                {
                  size = &boost::system::detail::interop_cat_holder<void>::instance;
                }

                else
                {
                  size = v64.__r_.__value_.__l.__size_;
                }
              }

              else
              {
                size = &boost::system::detail::system_cat_holder<void>::instance;
              }

              v50 = (**size)(size);
              v51 = v64.__r_.__value_.__l.__data_;
              if (v64.__r_.__value_.__r.__words[2] == 1)
              {
                v51 = LODWORD(v64.__r_.__value_.__l.__data_) + 1000 * (v64.__r_.__value_.__l.__size_ % 0x1FFFF7);
              }

              LODWORD(buf.__r_.__value_.__l.__data_) = 136446978;
              *(buf.__r_.__value_.__r.__words + 4) = v46;
              WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = v48;
              HIWORD(buf.__r_.__value_.__r.__words[2]) = 2082;
              v61 = v50;
              v62 = 1026;
              v63 = v51;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Failed to remove on-disk db in %{public}s, msg, %{public}s, categoryName, %{public}s, %{public}d", &buf, 0x26u);
              if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v56.__r_.__value_.__l.__data_);
              }

              goto LABEL_115;
            }

            v47 = v64.__r_.__value_.__l.__size_;
          }

          else
          {
            v47 = &boost::system::detail::system_cat_holder<void>::instance;
          }

          ((*v47)[4])(&v56);
          goto LABEL_103;
        }

        v25 = [toCopy URLByAppendingPathComponent:rootdirCopy];
        path2 = [v25 path];

        if (path2)
        {
          [path2 ps_STLString];
          if ((SHIBYTE(v58) & 0x80000000) == 0)
          {
LABEL_40:
            v57 = *&buf.__r_.__value_.__l.__data_;
            v58 = buf.__r_.__value_.__r.__words[2];

            goto LABEL_41;
          }
        }

        else
        {
          memset(&buf, 0, sizeof(buf));
          if ((SHIBYTE(v58) & 0x80000000) == 0)
          {
            goto LABEL_40;
          }
        }

        operator delete(*&v57.__val_);
        goto LABEL_40;
      }

      cat = v57.__cat_;
    }

    else
    {
      cat = &boost::system::detail::system_cat_holder<void>::instance;
    }

    (cat->equivalent)(&buf);
    goto LABEL_26;
  }

  if (buf.__r_.__value_.__r.__words[2] >= v11)
  {
    goto LABEL_31;
  }

  if (qword_10045B070 != -1)
  {
    sub_100388618();
  }

  v17 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 138478339;
    *(buf.__r_.__value_.__r.__words + 4) = basedirCopy;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v16;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
    v61 = v11;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Cannot open %{private}@: only %{public}llu bytes remaining but need %{public}llu bytes", &buf, 0x20u);
  }

  *v54 = 0;
  v54[1] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  result.__cntrl_ = v53;
  result.__ptr_ = v52;
  return result;
}

- (vector<std::shared_ptr<ITileDb>,)onQueueDbsToClear
{
  v5 = [(CLIndoorServiceDelegate *)self q];
  dispatch_assert_queue_V2(v5);

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  if (self->_fsDb.__ptr_)
  {
    if (qword_10045B070 == -1)
    {
      v6 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_100388008();
      v6 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
LABEL_6:
        operator new();
      }
    }

    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Device will evict from the real DB", v10, 2u);
    goto LABEL_6;
  }

  if (qword_10045B070 == -1)
  {
    v8 = qword_10045B078;
    result = os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO);
    if (result)
    {
LABEL_11:
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Device appears to be locked.", buf, 2u);
    }
  }

  else
  {
    sub_100388008();
    v8 = qword_10045B078;
    result = os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO);
    if (result)
    {
      goto LABEL_11;
    }
  }

  return result;
}

- (void)onQueueClearTiles:(id)tiles
{
  tilesCopy = tiles;
  [(CLIndoorServiceDelegate *)self initializeDb];
  [(CLIndoorServiceDelegate *)self onQueueDbsToClear];
  if (v25 == v26)
  {
    if (qword_10045B070 != -1)
    {
      sub_100388618();
    }

    v9 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "No DB handles could be obtained to process tile eviction request.", buf, 2u);
    }

    activity = [tilesCopy activity];
    v11 = activity == 0;

    if (!v11)
    {
      activity2 = [tilesCopy activity];
      v13 = xpc_activity_set_state(activity2, 5);

      if (!v13)
      {
        if (qword_10045B070 != -1)
        {
          sub_100388618();
        }

        v14 = qword_10045B078;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          activity3 = [tilesCopy activity];
          state = xpc_activity_get_state(activity3);
          *buf = 134349056;
          v29 = state;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "@CtsClear, failed to mark tile cleanup activity as done.  current state is %{public}ld", buf, 0xCu);
        }
      }

      if (qword_10045B070 != -1)
      {
        sub_100388618();
      }

      v17 = qword_10045B078;
      if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "@CtsClear, DONE", buf, 2u);
      }
    }
  }

  else
  {
    __p = v25;
    v23 = v26;
    v24 = v27;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    [(CLIndoorServiceDelegate *)self onQueueClearTilesIfPossible:tilesCopy fromDbs:&__p];
    v5 = __p;
    if (__p)
    {
      v6 = v23;
      v7 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          v6 -= 16;
        }

        while (v6 != v5);
        v7 = __p;
      }

      v23 = v5;
      operator delete(v7);
    }
  }

  v18 = v25;
  if (v25)
  {
    v19 = v26;
    v20 = v25;
    if (v26 != v25)
    {
      do
      {
        v21 = *(v19 - 1);
        if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v21->__on_zero_shared)(v21);
          std::__shared_weak_count::__release_weak(v21);
        }

        v19 -= 16;
      }

      while (v19 != v18);
      v20 = v25;
    }

    v26 = v18;
    operator delete(v20);
  }
}

- (void)onQueueClearTiles:(id)tiles fromDbs:()vector<std:(std::allocator<std::shared_ptr<ITileDb>>> *)std :shared_ptr<ITileDb>
{
  tilesCopy = tiles;
  v6 = [(CLIndoorServiceDelegate *)self q];
  dispatch_assert_queue_V2(v6);

  delayedClearTilesPolicy = self->_delayedClearTilesPolicy;
  self->_delayedClearTilesPolicy = 0;

  if (qword_10045B070 != -1)
  {
    sub_100388008();
  }

  v8 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Releasing the database file handles before clearing tiles", &buf, 2u);
  }

  cntrl = self->_fsDbHandle.__cntrl_;
  self->_fsDbHandle.__ptr_ = 0;
  self->_fsDbHandle.__cntrl_ = 0;
  if (cntrl && !atomic_fetch_add(cntrl + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*cntrl + 16))(cntrl);
    std::__shared_weak_count::__release_weak(cntrl);
  }

  context = objc_autoreleasePoolPush();
  *(&v30.__r_.__value_.__s + 23) = 3;
  LODWORD(v30.__r_.__value_.__l.__data_) = 6645601;
  [tilesCopy maxModifiedAge];
  if (v10 == -1.79769313e308)
  {
    std::string::assign(&v30, "privacy");
  }

  var0 = std->var0;
  if (std->var0 != std->var1)
  {
    if (qword_10045B070 != -1)
    {
      sub_100388618();
    }

    v12 = qword_10045B078;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = (*(**var0 + 232))(*var0, v13, v14);
      if (*(v15 + 23) >= 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = *v15;
      }

      v17 = &v30;
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v17 = v30.__r_.__value_.__r.__words[0];
      }

      buf = 136380931;
      buf_4 = v16;
      v34 = 2082;
      v35 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "TileEvict, fromDB, %{private}s, trigger, %{public}s", &buf, 0x16u);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v28 = 0;
    v18 = *var0;
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&__p, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v30;
    }

    v36 = 0;
    operator new();
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  objc_autoreleasePoolPop(context);
  activity = [tilesCopy activity];
  v20 = activity == 0;

  if (!v20)
  {
    activity2 = [tilesCopy activity];
    v22 = xpc_activity_set_state(activity2, 5);

    if (!v22)
    {
      if (qword_10045B070 != -1)
      {
        sub_100388618();
      }

      v23 = qword_10045B078;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        activity3 = [tilesCopy activity];
        state = xpc_activity_get_state(activity3);
        buf = 134349056;
        buf_4 = state;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "failed to mark tile cleanup activity as done.  current state is %{public}ld", &buf, 0xCu);
      }
    }
  }
}

- (void)onQueueClearTilesIfPossible:(id)possible fromDbs:()vector<std:(std::allocator<std::shared_ptr<ITileDb>>> *)std :shared_ptr<ITileDb>
{
  possibleCopy = possible;
  WeakRetained = objc_loadWeakRetained(&self->_currentProvider);
  if (qword_10045B070 != -1)
  {
    sub_100388008();
  }

  v9 = qword_10045B078;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    forceClean = [possibleCopy forceClean];
    [possibleCopy maxModifiedAge];
    *buf = 67240704;
    *&buf[4] = WeakRetained == 0;
    v32 = 1026;
    v33 = forceClean;
    v34 = 2050;
    v35 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "@CtsClear, check, providernil, %{public}d, force, %{public}d, agethresh, %{public}.1f", buf, 0x18u);
  }

  if (WeakRetained)
  {
    if ([possibleCopy forceClean])
    {
      if (qword_10045B070 != -1)
      {
        sub_100388618();
      }

      v12 = qword_10045B078;
      if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "WARNING: Request to force a clean of all tiles while localizer is active - crash may occur", buf, 2u);
      }

      __p = 0;
      v26 = 0;
      v27 = 0;
      var0 = std->var0;
      var1 = std->var1;
      *buf = &__p;
      LOBYTE(v32) = 0;
      if (var1 != var0)
      {
        if (((var1 - var0) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_10000FC84();
      }

      [(CLIndoorServiceDelegate *)self onQueueClearTiles:possibleCopy fromDbs:&__p];
      v22 = __p;
      if (__p)
      {
        v23 = v26;
        v20 = __p;
        if (v26 != __p)
        {
          do
          {
            v24 = *(v23 - 1);
            if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v24->__on_zero_shared)(v24);
              std::__shared_weak_count::__release_weak(v24);
            }

            v23 -= 16;
          }

          while (v23 != v22);
          v20 = __p;
        }

        v26 = v22;
LABEL_39:
        operator delete(v20);
      }
    }

    else
    {
      objc_storeStrong(&self->_delayedClearTilesPolicy, possible);
      if (qword_10045B070 != -1)
      {
        sub_100388618();
      }

      v17 = qword_10045B078;
      if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "@CtsClear, scheduled deferred tile clear when localizer stops", buf, 2u);
      }
    }
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v15 = std->var0;
    v16 = std->var1;
    v30 = 0;
    *buf = &v28;
    LOBYTE(v32) = 0;
    if (v16 != v15)
    {
      if (((v16 - v15) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10000FC84();
    }

    [(CLIndoorServiceDelegate *)self onQueueClearTiles:possibleCopy fromDbs:&v28];
    v18 = v28;
    if (v28)
    {
      v19 = v29;
      v20 = v28;
      if (v29 != v28)
      {
        do
        {
          v21 = *(v19 - 1);
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v21->__on_zero_shared)(v21);
            std::__shared_weak_count::__release_weak(v21);
          }

          v19 -= 16;
        }

        while (v19 != v18);
        v20 = v28;
      }

      v29 = v18;
      goto LABEL_39;
    }
  }
}

- (void)shutdown
{
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10037B700;
  block[3] = &unk_100432828;
  block[4] = self;
  dispatch_sync(q, block);
}

- (void)onQueueShutdown
{
  self->_shutdown = 1;
  WeakRetained = objc_loadWeakRetained(&self->_currentProvider);
  [WeakRetained onConnectionQueueShutdown];
}

- (int64_t)numFloors
{
  if (qword_10045B070 != -1)
  {
    sub_100388008();
    v3 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    LOWORD(v7) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Dispatching request get number of floors", &v7, 2u);
  }

LABEL_4:
  objc_initWeak(&location, self);
  v11 = -1;
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10037B8B4;
  block[3] = &unk_10044BBA0;
  objc_copyWeak(&v7, &location);
  v8 = &v11;
  objc_copyWeak(v10, &v7);
  v10[1] = v8;
  dispatch_sync(q, block);
  objc_destroyWeak(&v7);
  v5 = v11;
  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
  return v5;
}

- (int64_t)onQueueNumFloors
{
  if (!+[Keybag afterFirstUserUnlock])
  {
    return -1;
  }

  [(CLIndoorServiceDelegate *)self initializeDb];
  ptr = self->_fsDb.__ptr_;
  if (!ptr)
  {
    return -1;
  }

  result = (*(*ptr + 72))(ptr);
  if (result < 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v6 = sub_1000D8810(exception);
  }

  return result;
}

- (void)reloadAvailabilityTilePrefetchParameters
{
  if (qword_10045B070 == -1)
  {
    v3 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_100388008();
  v3 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "@IndoorAvl, load, request to reload availability tile prefetch params", &buf, 2u);
  }

LABEL_4:
  v4 = [CLAvailabilityTileParser alloc];
  workdir = [(CLIndoorServiceDelegate *)self workdir];
  v6 = [CLIndoorProvider getAvailabilityTilePathFromWorkdir:workdir];
  v7 = [(CLAvailabilityTileParser *)v4 initWithTilePathIncrementalIO:v6];

  if (v7)
  {
    getAvlTile = [(CLAvailabilityTileParser *)v7 getAvlTile];
    v32[0] = sub_100005F30();
    v32[1] = v9;
    v31 = sub_10017038C(getAvlTile);
    v10 = sub_100005C94(v32, &v31);
    v30[0] = sub_100005F40();
    v30[1] = v11;
    v29 = sub_10017047C(getAvlTile);
    v12 = sub_100005C94(v30, &v29);
    v28[0] = sub_100005F54();
    v28[1] = v13;
    v27 = sub_100170398(getAvlTile);
    v14 = sub_100005C94(v28, &v27);
    v26[0] = sub_100005F64();
    v26[1] = v15;
    v25 = sub_100170550(getAvlTile);
    v16 = sub_100005C94(v26, &v25);
    v24[0] = sub_100006214();
    v24[1] = v17;
    v23 = sub_100170714(getAvlTile);
    v18 = sub_100005F78(v24, &v23);
    v22[0] = sub_100006224();
    v22[1] = v19;
    v21 = sub_100170720(getAvlTile);
    v20 = sub_100005F78(v22, &v21);
    sub_1002186B4(&buf, v10, v12, v14, v16, v18, v20);
    *&self->_tileStorageLimits._maxIndoorCount = buf;
    *&self->_tileStorageLimits._numOfDaysBeforeIndoorTileRedownload = v34;
  }
}

- (id)onQueueCreateProviderForConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [CLIndoorServiceDelegate isEntitled:connectionCopy forEntitlement:@"replay" allowRootEverything:0];
  v6 = [[CLIndoorProvider alloc] initWithConnection:connectionCopy];
  [(CLIndoorServiceDelegate *)self initializeDb:v5];
  cntrl = self->_fsDb.__cntrl_;
  ptr = self->_fsDb.__ptr_;
  v13 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  [(CLIndoorProvider *)v6 setFsDb:&ptr];
  v8 = v13;
  if (v13 && !atomic_fetch_add(v13 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  prefetcher = [(CLIndoorServiceDelegate *)self prefetcher];
  [(CLIndoorProvider *)v6 setPrefetcher:prefetcher];

  workdir = [(CLIndoorServiceDelegate *)self workdir];
  [(CLIndoorProvider *)v6 setWorkdir:workdir];

  return v6;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  if (qword_10045B070 != -1)
  {
    sub_100388008();
  }

  v9 = qword_10045B078;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = +[CLIndoorServiceDelegate versionString];
    *buf = 138543362;
    v36[0] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "New XPC connection to pipelined %{public}@", buf, 0xCu);
  }

  if ([CLIndoorServiceDelegate validateEntitlement:@"positioning" forConnection:connectionCopy forSelector:a2])
  {
    _queue = [listenerCopy _queue];
    [connectionCopy _setQueue:_queue];

    WeakRetained = objc_loadWeakRetained(&self->_currentProvider);
    v13 = WeakRetained;
    v14 = WeakRetained == 0;
    if (!WeakRetained)
    {
      if (self->_shutdown)
      {
        if (qword_10045B070 != -1)
        {
          sub_100388618();
        }

        v22 = qword_10045B078;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          processIdentifier = [connectionCopy processIdentifier];
          *buf = 67174657;
          LODWORD(v36[0]) = processIdentifier;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "WARNING: Connection from %{private}d postponing shutdown", buf, 8u);
        }
      }

      v24 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CLIndoorProtocolPrivate];
      [connectionCopy setExportedInterface:v24];

      v25 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CLIndoorDelegateProtocolInternal];
      [connectionCopy setRemoteObjectInterface:v25];

      [(CLIndoorServiceDelegate *)self createIndoorProvderTransaction];
      xpcConnection = [(CLIndoorServiceDelegate *)self onQueueCreateProviderForConnection:connectionCopy];
      [xpcConnection setPrefetchFloorLimitIndoor:sub_1002187CC(&self->_tileStorageLimits)];
      [xpcConnection setPrefetchByteSizeLimitIndoor:sub_1002189DC(&self->_tileStorageLimits)];
      [xpcConnection setPrefetchFloorLimitRegional:sub_1002186C4(&self->_tileStorageLimits)];
      [xpcConnection setPrefetchByteSizeLimitRegional:sub_1002188D4(&self->_tileStorageLimits)];
      [connectionCopy setExportedObject:xpcConnection];
      objc_initWeak(&location, connectionCopy);
      objc_initWeak(&from, self);
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10037C63C;
      v30[3] = &unk_10044BBD8;
      objc_copyWeak(&v31, &location);
      objc_copyWeak(&v32, &from);
      v30[4] = self;
      [connectionCopy setInvalidationHandler:v30];
      if (qword_10045B070 != -1)
      {
        sub_100388618();
      }

      v26 = qword_10045B078;
      if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        *buf = 134283521;
        v36[0] = xpcConnection;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Resuming XPC connection with %{private}p as the provider", buf, 0xCu);
      }

      [connectionCopy resume];
      objc_storeWeak(&self->_currentProvider, xpcConnection);
      objc_destroyWeak(&v32);
      objc_destroyWeak(&v31);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
      goto LABEL_30;
    }

    xpcConnection = [WeakRetained xpcConnection];
    processIdentifier2 = [xpcConnection processIdentifier];
    if (processIdentifier2 == [connectionCopy processIdentifier])
    {
      if (qword_10045B070 != -1)
      {
        sub_100388618();
      }

      v17 = qword_10045B078;
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        goto LABEL_29;
      }

      processIdentifier3 = [xpcConnection processIdentifier];
      *buf = 67174657;
      LODWORD(v36[0]) = processIdentifier3;
      v19 = "WARNING: Already have a connection from %{private}d - rejecting";
      v20 = v17;
      v21 = 8;
    }

    else
    {
      if (qword_10045B070 != -1)
      {
        sub_100388618();
      }

      v17 = qword_10045B078;
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        goto LABEL_29;
      }

      processIdentifier4 = [xpcConnection processIdentifier];
      processIdentifier5 = [connectionCopy processIdentifier];
      *buf = 67174913;
      LODWORD(v36[0]) = processIdentifier4;
      WORD2(v36[0]) = 1025;
      *(v36 + 6) = processIdentifier5;
      v19 = "WARNING: Already have a connection from %{private}d - rejecting connection from  %{private}d";
      v20 = v17;
      v21 = 14;
    }

    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, v19, buf, v21);
LABEL_29:

LABEL_30:
    goto LABEL_31;
  }

  v14 = 0;
LABEL_31:

  return v14;
}

- (CLIndoorProvider)currentProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_currentProvider);

  return WeakRetained;
}

- (id).cxx_construct
{
  self->_workdirOverride.m_initialized = 0;
  self->_fsDb.__ptr_ = 0;
  self->_fsDb.__cntrl_ = 0;
  sub_1002186A0(&self->_tileStorageLimits);
  self->_fsDbHandle.__ptr_ = 0;
  self->_fsDbHandle.__cntrl_ = 0;
  return self;
}

@end