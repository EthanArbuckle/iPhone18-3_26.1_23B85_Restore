@interface FPnfsMemFS
- (FPnfsMemFS)initWithRootPath:(id)a3;
- (id)findNode:(id)a3 nascentOk:(BOOL)a4;
- (id)mkMountPath:(id)a3 mountID:(unsigned int)a4;
- (void)LIWrite:(id)a3 atOffset:(unint64_t)a4 withBuffer:(id)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)addNode:(id)a3 withLock:(BOOL)a4;
- (void)close:(id)a3 keepingMode:(int)a4 requestID:(unint64_t)a5 reply:(id)a6;
- (void)createIn:(id)a3 named:(id)a4 attributes:(id)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)fileAttributes:(id)a3 requestID:(unint64_t)a4 reply:(id)a5;
- (void)getRootFileHandleWithError:(id)a3;
- (void)lookupIn:(id)a3 name:(id)a4 usingFlags:(unsigned int)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)makeCloneOf:(id)a3 named:(id)a4 inDirectory:(id)a5 attributes:(id)a6 usingFlags:(unsigned int)a7 requestID:(unint64_t)a8 reply:(id)a9;
- (void)makeDirectoryIn:(id)a3 named:(id)a4 attributes:(id)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)makeLinkOf:(id)a3 named:(id)a4 inDirectory:(id)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)makeSymLinkIn:(id)a3 named:(id)a4 contents:(id)a5 attributes:(id)a6 requestID:(unint64_t)a7 reply:(id)a8;
- (void)open:(id)a3 withMode:(int)a4 requestID:(unint64_t)a5 reply:(id)a6;
- (void)otherAttributeOf:(id)a3 named:(id)a4 requestID:(unint64_t)a5 reply:(id)a6;
- (void)pathConfiguration:(id)a3 requestID:(unint64_t)a4 reply:(id)a5;
- (void)performExclusiveMemFS:(id)a3;
- (void)performSharedMemFS:(id)a3;
- (void)readDirectory:(id)a3 intoBuffer:(id)a4 cookie:(unint64_t)a5 verifier:(unint64_t)a6 requestID:(unint64_t)a7 reply:(id)a8;
- (void)readDirectory:(id)a3 intoBuffer:(id)a4 requestedAttributes:(unint64_t)a5 cookie:(unint64_t)a6 verifier:(unint64_t)a7 requestID:(unint64_t)a8 reply:(id)a9;
- (void)readFrom:(id)a3 atOffset:(unint64_t)a4 intoBuffer:(id)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)readLinkOf:(id)a3 requestID:(unint64_t)a4 reply:(id)a5;
- (void)reclaim:(id)a3 requestID:(unint64_t)a4 reply:(id)a5;
- (void)removeDirectory:(id)a3 from:(id)a4 named:(id)a5 usingFlags:(int)a6 requestID:(unint64_t)a7 reply:(id)a8;
- (void)removeItem:(id)a3 from:(id)a4 named:(id)a5 usingFlags:(int)a6 requestID:(unint64_t)a7 reply:(id)a8;
- (void)renameItemIn:(id)a3 named:(id)a4 item:(id)a5 toDirectory:(id)a6 newName:(id)a7 toItem:(id)a8 usingFlags:(unsigned int)a9 requestID:(unint64_t)a10 reply:(id)a11;
- (void)rmMountPath:(id)a3;
- (void)rmNode:(id)a3;
- (void)setFileAttributesOf:(id)a3 to:(id)a4 requestID:(unint64_t)a5 reply:(id)a6;
- (void)setUpdateInterest:(id)a3 interest:(BOOL)a4 requestID:(unint64_t)a5 reply:(id)a6;
- (void)volumeStatistics:(id)a3 requestID:(unint64_t)a4 reply:(id)a5;
- (void)writeTo:(id)a3 atOffset:(unint64_t)a4 fromBuffer:(id)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)writeTo:(id)a3 atOffset:(unint64_t)a4 sharedBuffer:(id)a5 requestID:(unint64_t)a6 reply:(id)a7;
@end

@implementation FPnfsMemFS

- (FPnfsMemFS)initWithRootPath:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = FPnfsMemFS;
  v6 = [(FPnfsMemFS *)&v14 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  if (pthread_rwlock_init(&v6->opLock, 0))
  {
    goto LABEL_3;
  }

  objc_storeStrong(&v7->rootPath, a3);
  v9 = objc_alloc_init(NSMutableDictionary);
  fhMap = v7->fhMap;
  v7->fhMap = v9;

  if (!v7->fhMap || (atomic_store(1uLL, &v7->filehandle), v11 = [[FPnfsMemNode alloc] initWithFS:v7 name:&stru_100062B08 parent:0], rootNode = v7->_rootNode, v7->_rootNode = v11, rootNode, !v7->_rootNode))
  {
LABEL_3:
    v8 = 0;
  }

  else
  {
LABEL_6:
    v8 = v7;
  }

  return v8;
}

- (void)performExclusiveMemFS:(id)a3
{
  v4 = a3;
  pthread_rwlock_wrlock(&self->opLock);
  v4[2](v4);

  pthread_rwlock_unlock(&self->opLock);
}

- (void)performSharedMemFS:(id)a3
{
  v4 = a3;
  pthread_rwlock_rdlock(&self->opLock);
  v4[2](v4);

  pthread_rwlock_unlock(&self->opLock);
}

- (void)addNode:(id)a3 withLock:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    fhMap = self->fhMap;
    v9 = [v6 fh];
    [(NSMutableDictionary *)fhMap setObject:v7 forKey:v9];
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100005170;
    v13[3] = &unk_100060B20;
    v13[4] = self;
    v14 = v6;
    [(FPnfsMemFS *)self performExclusiveMemFS:v13];
  }

  if (verbose)
  {
    v10 = livefs_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v7 fh];
      v12 = [v7 nascent];
      *buf = 138412802;
      v16 = v7;
      v17 = 2112;
      v18 = v11;
      v19 = 1024;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Adding node %@ with filehandle %@ nascent %d", buf, 0x1Cu);
    }
  }
}

- (id)findNode:(id)a3 nascentOk:(BOOL)a4
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100005428;
  v19 = sub_100005438;
  v20 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005440;
  v11[3] = &unk_100060B48;
  v14 = &v15;
  v12 = self;
  v5 = a3;
  v13 = v5;
  [(FPnfsMemFS *)v12 performSharedMemFS:v11];
  v6 = v16[5];
  if (!v6)
  {
    if (!verbose)
    {
      goto LABEL_13;
    }

    v8 = livefs_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Could not find node for fh %@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  if ([v6 nascent] && !a4)
  {
    if (verbose)
    {
      v7 = livefs_std_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Found nascent node for fh %@", buf, 0xCu);
      }
    }

    v8 = v16[5];
    v16[5] = 0;
LABEL_12:
  }

LABEL_13:
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (void)rmNode:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100005534;
    v6[3] = &unk_100060B20;
    v6[4] = self;
    v7 = v4;
    [(FPnfsMemFS *)self performExclusiveMemFS:v6];
  }
}

- (id)mkMountPath:(id)a3 mountID:(unsigned int)a4
{
  v4 = a3;
  v5 = livefs_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    rootPath = self->rootPath;
    *buf = 138412802;
    v59 = v4;
    v60 = 1024;
    v61 = a4;
    v62 = 2112;
    *v63 = rootPath;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "mkMountPath: path = %@ id %u rootPath = %@", buf, 0x1Cu);
  }

  if (!v4)
  {
    v8 = livefs_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v59 = "[FPnfsMemFS mkMountPath:mountID:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: path is nil", buf, 0xCu);
    }

    v7 = 0;
    goto LABEL_11;
  }

  if ([(NSString *)v4 isAbsolutePath])
  {
    p_rootPath = &self->rootPath;
    if (![(NSString *)v4 hasPrefix:self->rootPath])
    {
      v28 = livefs_std_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_10000839C(v4, p_rootPath, v28);
      }

      v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
      goto LABEL_60;
    }

    if ([(NSString *)v4 isEqualToString:*p_rootPath])
    {
      v7 = 0;
      goto LABEL_60;
    }

    v7 = -[NSString substringFromIndex:](v4, "substringFromIndex:", [*p_rootPath length] + 1);

    if (v7)
    {
      v40 = livefs_std_log();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v59 = v7;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "mkMountPath: Relative mount path is %@", buf, 0xCu);
      }

      goto LABEL_13;
    }

LABEL_11:
    v4 = 0;
    goto LABEL_60;
  }

  v7 = v4;
LABEL_13:
  v9 = [v7 pathComponents];
  v10 = [v9 count];
  v11 = [(FPnfsMemFS *)self rootNode];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v9;
  v12 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = 0;
    v16 = 0;
    v45 = *v54;
    v17 = v10 - 1;
    *&v13 = 138413058;
    v42 = v13;
    v43 = v7;
    while (2)
    {
      v18 = 0;
      v19 = v15;
      v20 = v11;
      v21 = v16;
      do
      {
        if (*v54 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v53 + 1) + 8 * v18);
        v16 = v21 + 1;
        v52 = v19;
        if (v17 == v21)
        {
          v23 = a4;
        }

        else
        {
          v23 = 0;
        }

        v24 = [v20 mkDirPlaceholder:v22 fhBuffer:&v52 wellKnownMount:{v23, v42}];
        v15 = v52;

        v25 = livefs_std_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = v42;
          v59 = v22;
          v60 = 1024;
          v61 = v24;
          v62 = 1024;
          *v63 = v21 + 1;
          *&v63[4] = 1024;
          *&v63[6] = v17 == v21;
          _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "mkMountPath: Making placeholder %@ returned %d i %d isLast %d", buf, 0x1Eu);
        }

        if (v24 != 17 && v24 != 0)
        {
          goto LABEL_38;
        }

        v27 = [(FPnfsMemFS *)self findNode:v15 nascentOk:1];
        if (!v27)
        {
          v24 = 5;
LABEL_38:

          v4 = v43;
          v11 = v20;
          goto LABEL_55;
        }

        v11 = v27;
        if (v17 == v21)
        {
          v29 = [theMountTable lookup:a4];
          if (v29)
          {
            [v29 setFileno:{objc_msgSend(v11, "fileno")}];
          }

          v11 = 0;
          v15 = 0;
          v7 = v43;
          goto LABEL_42;
        }

        v18 = v18 + 1;
        v19 = v15;
        v20 = v11;
        ++v21;
      }

      while (v14 != v18);
      v14 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
      v7 = v43;
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_42:

  v4 = self->rootPath;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v30 = obj;
  v31 = [v30 countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v49;
LABEL_44:
    v34 = 0;
    v35 = v4;
    while (1)
    {
      if (*v49 != v33)
      {
        objc_enumerationMutation(v30);
      }

      v4 = [(NSString *)v35 stringByAppendingPathComponent:*(*(&v48 + 1) + 8 * v34)];

      v36 = livefs_std_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v59 = v4;
        _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "mkMountPath: About to mkdir(%@, 0755)", buf, 0xCu);
      }

      if (mkdir([(NSString *)v4 UTF8String], 0x1EDu))
      {
        if (*__error() != 17)
        {
          break;
        }
      }

      v34 = v34 + 1;
      v35 = v4;
      if (v32 == v34)
      {
        v32 = [v30 countByEnumeratingWithState:&v48 objects:v57 count:16];
        if (v32)
        {
          goto LABEL_44;
        }

        goto LABEL_53;
      }
    }

    v24 = *__error();

    if (!v24)
    {
      goto LABEL_56;
    }

LABEL_55:
    v37 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v24 userInfo:0];
  }

  else
  {
LABEL_53:

LABEL_56:
    v37 = 0;
  }

  v38 = livefs_std_log();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    sub_100008428(v37, v38);
  }

  v7 = v37;
LABEL_60:

  return v7;
}

- (void)rmMountPath:(id)a3
{
  v4 = a3;
  if (verbose)
  {
    v5 = livefs_std_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "rmMountPath: %@", buf, 0xCu);
    }
  }

  if (![v4 isAbsolutePath])
  {
    goto LABEL_9;
  }

  if ([v4 hasPrefix:self->rootPath] && (objc_msgSend(v4, "isEqualToString:", self->rootPath) & 1) == 0)
  {
    v6 = [v4 substringFromIndex:{-[NSString length](self->rootPath, "length") + 1}];

    v4 = v6;
LABEL_9:
    [v4 pathComponents];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100005DC4;
    v8[3] = &unk_100060B20;
    v9 = v8[4] = self;
    v7 = v9;
    [(FPnfsMemFS *)self performExclusiveMemFS:v8];
  }
}

- (void)close:(id)a3 keepingMode:(int)a4 requestID:(unint64_t)a5 reply:(id)a6
{
  v7 = a3;
  v8 = a6;
  if (verbose)
  {
    v9 = livefs_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Close %@", &v10, 0xCu);
    }
  }

  v8[2](v8, 0);
}

- (void)createIn:(id)a3 named:(id)a4 attributes:(id)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  v9 = a3;
  v10 = a4;
  v11 = a7;
  if (verbose)
  {
    v12 = livefs_std_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Create called dir: %@ name:%@", &v13, 0x16u);
    }
  }

  (*(v11 + 2))(v11, 30, 0, 0, 0, 0);
}

- (void)fileAttributes:(id)a3 requestID:(unint64_t)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (verbose)
  {
    v9 = livefs_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Getattr called for %@", &v14, 0xCu);
    }
  }

  v10 = [(FPnfsMemFS *)self findNode:v7];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 getattr];
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = 28;
    }

    v8[2](v8, v13, v12);
  }

  else
  {
    v8[2](v8, 70, 0);
  }
}

- (void)getRootFileHandleWithError:(id)a3
{
  v4 = a3;
  if (verbose)
  {
    v5 = livefs_std_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(FPnfsMemFS *)self rootNode];
      v7 = [v6 fh];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "GetRootFileHandle %@", &v10, 0xCu);
    }
  }

  v8 = [(FPnfsMemFS *)self rootNode];
  v9 = [v8 fh];
  v4[2](v4, v9, 0);
}

- (void)lookupIn:(id)a3 name:(id)a4 usingFlags:(unsigned int)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a7;
  if (verbose)
  {
    v13 = livefs_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Lookup called dir: %@ name: %@", buf, 0x16u);
    }
  }

  v14 = [(FPnfsMemFS *)self findNode:v10];
  if (v14)
  {
    v15 = [v11 string];
    v16 = [v14 lookupNode:v15];

    if (v16)
    {
      v17 = [v16 getattr];
      v18 = [v16 fh];
      (*(v12 + 2))(v12, 0, 0xFFFFFFFFLL, v18, v17, 0, 0, 0, 0, 0);
    }

    else
    {
      (*(v12 + 2))(v12, 2, 0xFFFFFFFFLL, 0, 0, 0, 0, 0, 0, 0);
    }
  }

  else
  {
    (*(v12 + 2))(v12, 70, 0xFFFFFFFFLL, 0, 0, 0, 0, 0, 0, 0);
  }
}

- (void)makeDirectoryIn:(id)a3 named:(id)a4 attributes:(id)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (verbose)
  {
    v15 = livefs_std_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = v11;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Mkdir called dir: %@ name: %@", buf, 0x16u);
    }
  }

  v16 = [(FPnfsMemFS *)self findNode:v11];
  if (v16)
  {
    v23 = v13;
    v17 = [v12 string];
    v24 = 0;
    v18 = [v16 mkDir:v17 fhBuffer:&v24];
    v19 = v24;

    v20 = [v16 getattr];
    v21 = 0;
    v22 = 0;
    if (!v18)
    {
      v21 = [(FPnfsMemFS *)self findNode:v19];
      v22 = [v21 getattr];
    }

    (*(v14 + 2))(v14, v18, v20, v19, v22, 0, 0);

    v13 = v23;
  }

  else
  {
    (*(v14 + 2))(v14, 70, 0, 0, 0, 0, 0);
  }
}

- (void)makeSymLinkIn:(id)a3 named:(id)a4 contents:(id)a5 attributes:(id)a6 requestID:(unint64_t)a7 reply:(id)a8
{
  v10 = a3;
  v11 = a4;
  v12 = a8;
  if (verbose >= 2)
  {
    v13 = livefs_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "MakeSymLink called dir: %@ name: %@", &v14, 0x16u);
    }
  }

  (*(v12 + 2))(v12, 30, 0, 0, 0, 0);
}

- (void)makeLinkOf:(id)a3 named:(id)a4 inDirectory:(id)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  v9 = a4;
  v10 = a5;
  v11 = a7;
  if (verbose >= 2)
  {
    v12 = livefs_std_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MakeLink called dir: %@ name: %@", &v13, 0x16u);
    }
  }

  (*(v11 + 2))(v11, 30, 0, 0, 0);
}

- (void)makeCloneOf:(id)a3 named:(id)a4 inDirectory:(id)a5 attributes:(id)a6 usingFlags:(unsigned int)a7 requestID:(unint64_t)a8 reply:(id)a9
{
  v10 = a4;
  v11 = a5;
  v12 = a9;
  if (verbose >= 2)
  {
    v13 = livefs_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "MakeClone called dir: %@ name: %@", &v14, 0x16u);
    }
  }

  (*(v12 + 2))(v12, 30, 0, 0, 0, 0);
}

- (void)open:(id)a3 withMode:(int)a4 requestID:(unint64_t)a5 reply:(id)a6
{
  v7 = a3;
  v8 = a6;
  if (verbose >= 2)
  {
    v9 = livefs_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Open %@", &v10, 0xCu);
    }
  }

  v8[2](v8, 0);
}

- (void)pathConfiguration:(id)a3 requestID:(unint64_t)a4 reply:(id)a5
{
  v6 = a3;
  v7 = a5;
  v13 = 0;
  if (verbose)
  {
    v8 = livefs_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Pathconf called on %@", buf, 0xCu);
    }
  }

  v11 = 0x40000002710;
  LOBYTE(v13) = 11;
  v12 = 64;
  v9 = [NSData dataWithBytes:&v11 length:16];
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 28;
  }

  v7[2](v7, v10, v9);
}

- (void)readFrom:(id)a3 atOffset:(unint64_t)a4 intoBuffer:(id)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  v8 = a3;
  v9 = a7;
  if (verbose >= 2)
  {
    v10 = livefs_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Read %@", &v11, 0xCu);
    }
  }

  (*(v9 + 2))(v9, 45, 0, 0);
}

- (void)readDirectory:(id)a3 intoBuffer:(id)a4 cookie:(unint64_t)a5 verifier:(unint64_t)a6 requestID:(unint64_t)a7 reply:(id)a8
{
  v13 = a4;
  v14 = a8;
  v15 = a3;
  v16 = livefs_std_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_1000084A0(v16);
  }

  v17 = [(FPnfsMemFS *)self findNode:v15];

  if (v17)
  {
    v19 = 0;
    v18 = [v17 readDirAtCookie:a5 withVerifier:a6 forBytes:objc_msgSend(v13 andError:{"length"), &v19}];
    if (v18)
    {
      memmove([v13 mutableBytes], objc_msgSend(v18, "bytes"), objc_msgSend(v18, "length"));
      [v13 setLength:{objc_msgSend(v18, "length")}];
    }

    v14[2](v14, v19, [v18 length], objc_msgSend(v17, "verf"));
  }

  else
  {
    v14[2](v14, 70, 0, 0);
  }
}

- (void)readDirectory:(id)a3 intoBuffer:(id)a4 requestedAttributes:(unint64_t)a5 cookie:(unint64_t)a6 verifier:(unint64_t)a7 requestID:(unint64_t)a8 reply:(id)a9
{
  v13 = a3;
  v14 = a4;
  v15 = a9;
  v16 = livefs_std_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_1000084E4(v13, v16);
  }

  v17 = [(FPnfsMemFS *)self findNode:v13];
  v19 = 0;
  if (v17)
  {
    v18 = [v17 readDirAttrAtCookie:a6 withVerifier:a7 forBytes:objc_msgSend(v14 andError:{"length"), &v19}];
    if (v18)
    {
      memmove([v14 mutableBytes], objc_msgSend(v18, "bytes"), objc_msgSend(v18, "length"));
      [v14 setLength:{objc_msgSend(v18, "length")}];
    }

    v15[2](v15, v19, [v18 length], objc_msgSend(v17, "verf"));
  }

  else
  {
    v15[2](v15, 70, 0, 0);
  }
}

- (void)readLinkOf:(id)a3 requestID:(unint64_t)a4 reply:(id)a5
{
  v6 = a3;
  v7 = a5;
  if (verbose >= 2)
  {
    v8 = livefs_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ReadLink %@", &v9, 0xCu);
    }
  }

  (*(v7 + 2))(v7, 45, 0, 0);
}

- (void)reclaim:(id)a3 requestID:(unint64_t)a4 reply:(id)a5
{
  v6 = a3;
  v7 = a5;
  if (verbose)
  {
    v8 = livefs_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reclaim %@", &v9, 0xCu);
    }
  }

  (*(v7 + 2))(v7, 0, 0);
}

- (void)removeItem:(id)a3 from:(id)a4 named:(id)a5 usingFlags:(int)a6 requestID:(unint64_t)a7 reply:(id)a8
{
  v10 = a4;
  v11 = a5;
  v12 = a8;
  if (verbose >= 2)
  {
    v13 = livefs_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Remove dir: %@ name:%@", &v14, 0x16u);
    }
  }

  (*(v12 + 2))(v12, 30, 0, 0);
}

- (void)removeDirectory:(id)a3 from:(id)a4 named:(id)a5 usingFlags:(int)a6 requestID:(unint64_t)a7 reply:(id)a8
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a8;
  if (verbose)
  {
    v16 = livefs_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412546;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Rmdir dir: %@ name:%@", &v21, 0x16u);
    }
  }

  v17 = [(FPnfsMemFS *)self findNode:v13];
  if (v17)
  {
    v18 = [v14 string];
    v19 = [v17 rmDir:v18];

    if (v19)
    {
      (*(v15 + 2))(v15, v19, 0, 0);
    }

    else
    {
      v20 = [v17 getattr];
      (*(v15 + 2))(v15, 0, v20, 0);
    }
  }

  else
  {
    (*(v15 + 2))(v15, 70, 0, 0);
  }
}

- (void)renameItemIn:(id)a3 named:(id)a4 item:(id)a5 toDirectory:(id)a6 newName:(id)a7 toItem:(id)a8 usingFlags:(unsigned int)a9 requestID:(unint64_t)a10 reply:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a11;
  if (verbose >= 2)
  {
    v24 = livefs_std_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v41 = v17;
      v42 = 2112;
      v43 = v18;
      v44 = 2112;
      v45 = v20;
      v46 = 2112;
      v47 = v21;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Rename from dir: %@ from name: %@ to dir: %@ to name: %@", buf, 0x2Au);
    }
  }

  if ([v17 isEqualToString:v20])
  {
    v25 = [(FPnfsMemFS *)self findNode:v17];
    if (v25)
    {
      v26 = [v18 string];
      v27 = [v25 lookupNode:v26];

      if (v27)
      {
        v39 = v27;
        v28 = [v21 string];
        v29 = [v25 lookupNode:v28];

        v38 = v29;
        if (v29 && ([v21 string], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v25, "rmDir:", v30), v30, v31))
        {
          (*(v23 + 2))(v23, v31, 0, 0, 0, 0, 0);
        }

        else
        {
          v37 = v19;
          v32 = [v18 string];
          v33 = [v21 string];
          v34 = [v39 renameFrom:v32 toName:v33];

          if (v34)
          {
            (*(v23 + 2))(v23, v34, 0, 0, 0, 0, 0);
          }

          else
          {
            v35 = [v25 getattr];
            v36 = [v25 getattr];
            (*(v23 + 2))(v23, 0, v35, 0, v36, 0, 0);
          }

          v19 = v37;
        }
      }

      else
      {
        (*(v23 + 2))(v23, 2, 0, 0, 0, 0, 0);
      }
    }

    else
    {
      (*(v23 + 2))(v23, 70, 0, 0, 0, 0, 0);
    }
  }

  else
  {
    (*(v23 + 2))(v23, 18, 0, 0, 0, 0, 0);
  }
}

- (void)setFileAttributesOf:(id)a3 to:(id)a4 requestID:(unint64_t)a5 reply:(id)a6
{
  v7 = a3;
  v8 = a6;
  if (verbose >= 2)
  {
    v9 = livefs_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SetAttr %@", &v10, 0xCu);
    }
  }

  (*(v8 + 2))(v8, 30, 0, 0);
}

- (void)volumeStatistics:(id)a3 requestID:(unint64_t)a4 reply:(id)a5
{
  v6 = a3;
  v7 = a5;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  if (verbose)
  {
    v8 = livefs_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Statfs called on %@", buf, 0xCu);
    }
  }

  *(v11 + 8) = vdupq_n_s64(0xF4240uLL);
  *(&v11[1] + 1) = 1000000;
  v13 = vdupq_n_s64(0x2710uLL);
  v9 = [NSData dataWithBytes:v11 length:56];
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 28;
  }

  v7[2](v7, v10, v9);
}

- (void)writeTo:(id)a3 atOffset:(unint64_t)a4 fromBuffer:(id)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  v8 = a3;
  v9 = a7;
  if (verbose >= 2)
  {
    v10 = livefs_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Write %@", &v11, 0xCu);
    }
  }

  (*(v9 + 2))(v9, 30, 0, 0, 0);
}

- (void)writeTo:(id)a3 atOffset:(unint64_t)a4 sharedBuffer:(id)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  v8 = a3;
  v9 = a7;
  if (verbose >= 2)
  {
    v10 = livefs_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Write %@", &v11, 0xCu);
    }
  }

  (*(v9 + 2))(v9, 30, 0, 0, 0);
}

- (void)LIWrite:(id)a3 atOffset:(unint64_t)a4 withBuffer:(id)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  v8 = a3;
  v9 = a7;
  if (verbose >= 2)
  {
    v10 = livefs_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Write %@", &v11, 0xCu);
    }
  }

  v9[2](v9, 30, 0);
}

- (void)otherAttributeOf:(id)a3 named:(id)a4 requestID:(unint64_t)a5 reply:(id)a6
{
  v7 = a6;
  v8 = [a4 string];
  if (([v8 isEqualToString:@"_B_has_perm_enforcement"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"_B_has_access_check"))
  {
    __s = 0;
  }

  else
  {
    if ([v8 isEqualToString:@"_S_f_type"])
    {
      p_s = "lifs";
      v10 = 5;
      goto LABEL_5;
    }

    if ([v8 isEqualToString:@"_S_f_location"])
    {
      __s = 0;
      v13 = getpid();
      asprintf(&__s, "fskitd@%d", v13);
      v11 = [NSData dataWithBytesNoCopy:__s length:strlen(__s) + 1 freeWhenDone:1];
      goto LABEL_6;
    }

    if ([v8 isEqualToString:@"_S_f_vol_name"])
    {
      p_s = "LiveFiles";
      v10 = 10;
      goto LABEL_5;
    }

    if ([v8 isEqualToString:@"_N_caps_format"])
    {
      v14 = 4195072;
    }

    else
    {
      if (![v8 isEqualToString:@"_N_caps_interfaces"])
      {
        v7[2](v7, 45, 0);
        goto LABEL_7;
      }

      v14 = 8;
    }

    __s = v14;
  }

  p_s = &__s;
  v10 = 8;
LABEL_5:
  v11 = [NSData dataWithBytes:p_s length:v10];
LABEL_6:
  v12 = v11;
  v7[2](v7, 0, v11);

LABEL_7:
}

- (void)setUpdateInterest:(id)a3 interest:(BOOL)a4 requestID:(unint64_t)a5 reply:(id)a6
{
  v7 = a6;
  v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  (*(a6 + 2))(v7, v8);
}

@end