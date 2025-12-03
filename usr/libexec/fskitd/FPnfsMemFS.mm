@interface FPnfsMemFS
- (FPnfsMemFS)initWithRootPath:(id)path;
- (id)findNode:(id)node nascentOk:(BOOL)ok;
- (id)mkMountPath:(id)path mountID:(unsigned int)d;
- (void)LIWrite:(id)write atOffset:(unint64_t)offset withBuffer:(id)buffer requestID:(unint64_t)d reply:(id)reply;
- (void)addNode:(id)node withLock:(BOOL)lock;
- (void)close:(id)close keepingMode:(int)mode requestID:(unint64_t)d reply:(id)reply;
- (void)createIn:(id)in named:(id)named attributes:(id)attributes requestID:(unint64_t)d reply:(id)reply;
- (void)fileAttributes:(id)attributes requestID:(unint64_t)d reply:(id)reply;
- (void)getRootFileHandleWithError:(id)error;
- (void)lookupIn:(id)in name:(id)name usingFlags:(unsigned int)flags requestID:(unint64_t)d reply:(id)reply;
- (void)makeCloneOf:(id)of named:(id)named inDirectory:(id)directory attributes:(id)attributes usingFlags:(unsigned int)flags requestID:(unint64_t)d reply:(id)reply;
- (void)makeDirectoryIn:(id)in named:(id)named attributes:(id)attributes requestID:(unint64_t)d reply:(id)reply;
- (void)makeLinkOf:(id)of named:(id)named inDirectory:(id)directory requestID:(unint64_t)d reply:(id)reply;
- (void)makeSymLinkIn:(id)in named:(id)named contents:(id)contents attributes:(id)attributes requestID:(unint64_t)d reply:(id)reply;
- (void)open:(id)open withMode:(int)mode requestID:(unint64_t)d reply:(id)reply;
- (void)otherAttributeOf:(id)of named:(id)named requestID:(unint64_t)d reply:(id)reply;
- (void)pathConfiguration:(id)configuration requestID:(unint64_t)d reply:(id)reply;
- (void)performExclusiveMemFS:(id)s;
- (void)performSharedMemFS:(id)s;
- (void)readDirectory:(id)directory intoBuffer:(id)buffer cookie:(unint64_t)cookie verifier:(unint64_t)verifier requestID:(unint64_t)d reply:(id)reply;
- (void)readDirectory:(id)directory intoBuffer:(id)buffer requestedAttributes:(unint64_t)attributes cookie:(unint64_t)cookie verifier:(unint64_t)verifier requestID:(unint64_t)d reply:(id)reply;
- (void)readFrom:(id)from atOffset:(unint64_t)offset intoBuffer:(id)buffer requestID:(unint64_t)d reply:(id)reply;
- (void)readLinkOf:(id)of requestID:(unint64_t)d reply:(id)reply;
- (void)reclaim:(id)reclaim requestID:(unint64_t)d reply:(id)reply;
- (void)removeDirectory:(id)directory from:(id)from named:(id)named usingFlags:(int)flags requestID:(unint64_t)d reply:(id)reply;
- (void)removeItem:(id)item from:(id)from named:(id)named usingFlags:(int)flags requestID:(unint64_t)d reply:(id)reply;
- (void)renameItemIn:(id)in named:(id)named item:(id)item toDirectory:(id)directory newName:(id)name toItem:(id)toItem usingFlags:(unsigned int)flags requestID:(unint64_t)self0 reply:(id)self1;
- (void)rmMountPath:(id)path;
- (void)rmNode:(id)node;
- (void)setFileAttributesOf:(id)of to:(id)to requestID:(unint64_t)d reply:(id)reply;
- (void)setUpdateInterest:(id)interest interest:(BOOL)a4 requestID:(unint64_t)d reply:(id)reply;
- (void)volumeStatistics:(id)statistics requestID:(unint64_t)d reply:(id)reply;
- (void)writeTo:(id)to atOffset:(unint64_t)offset fromBuffer:(id)buffer requestID:(unint64_t)d reply:(id)reply;
- (void)writeTo:(id)to atOffset:(unint64_t)offset sharedBuffer:(id)buffer requestID:(unint64_t)d reply:(id)reply;
@end

@implementation FPnfsMemFS

- (FPnfsMemFS)initWithRootPath:(id)path
{
  pathCopy = path;
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

  objc_storeStrong(&v7->rootPath, path);
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

- (void)performExclusiveMemFS:(id)s
{
  sCopy = s;
  pthread_rwlock_wrlock(&self->opLock);
  sCopy[2](sCopy);

  pthread_rwlock_unlock(&self->opLock);
}

- (void)performSharedMemFS:(id)s
{
  sCopy = s;
  pthread_rwlock_rdlock(&self->opLock);
  sCopy[2](sCopy);

  pthread_rwlock_unlock(&self->opLock);
}

- (void)addNode:(id)node withLock:(BOOL)lock
{
  lockCopy = lock;
  nodeCopy = node;
  v7 = nodeCopy;
  if (lockCopy)
  {
    fhMap = self->fhMap;
    v9 = [nodeCopy fh];
    [(NSMutableDictionary *)fhMap setObject:v7 forKey:v9];
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100005170;
    v13[3] = &unk_100060B20;
    v13[4] = self;
    v14 = nodeCopy;
    [(FPnfsMemFS *)self performExclusiveMemFS:v13];
  }

  if (verbose)
  {
    v10 = livefs_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v7 fh];
      nascent = [v7 nascent];
      *buf = 138412802;
      v16 = v7;
      v17 = 2112;
      v18 = v11;
      v19 = 1024;
      v20 = nascent;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Adding node %@ with filehandle %@ nascent %d", buf, 0x1Cu);
    }
  }
}

- (id)findNode:(id)node nascentOk:(BOOL)ok
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
  selfCopy = self;
  nodeCopy = node;
  v13 = nodeCopy;
  [(FPnfsMemFS *)selfCopy performSharedMemFS:v11];
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
      v22 = nodeCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Could not find node for fh %@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  if ([v6 nascent] && !ok)
  {
    if (verbose)
    {
      v7 = livefs_std_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = nodeCopy;
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

- (void)rmNode:(id)node
{
  nodeCopy = node;
  v5 = nodeCopy;
  if (nodeCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100005534;
    v6[3] = &unk_100060B20;
    v6[4] = self;
    v7 = nodeCopy;
    [(FPnfsMemFS *)self performExclusiveMemFS:v6];
  }
}

- (id)mkMountPath:(id)path mountID:(unsigned int)d
{
  pathCopy = path;
  v5 = livefs_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    rootPath = self->rootPath;
    *buf = 138412802;
    v59 = pathCopy;
    v60 = 1024;
    dCopy = d;
    v62 = 2112;
    *v63 = rootPath;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "mkMountPath: path = %@ id %u rootPath = %@", buf, 0x1Cu);
  }

  if (!pathCopy)
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

  if ([(NSString *)pathCopy isAbsolutePath])
  {
    p_rootPath = &self->rootPath;
    if (![(NSString *)pathCopy hasPrefix:self->rootPath])
    {
      v28 = livefs_std_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_10000839C(pathCopy, p_rootPath, v28);
      }

      v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
      goto LABEL_60;
    }

    if ([(NSString *)pathCopy isEqualToString:*p_rootPath])
    {
      v7 = 0;
      goto LABEL_60;
    }

    v7 = -[NSString substringFromIndex:](pathCopy, "substringFromIndex:", [*p_rootPath length] + 1);

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
    pathCopy = 0;
    goto LABEL_60;
  }

  v7 = pathCopy;
LABEL_13:
  pathComponents = [v7 pathComponents];
  v10 = [pathComponents count];
  rootNode = [(FPnfsMemFS *)self rootNode];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = pathComponents;
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
      v20 = rootNode;
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
          dCopy2 = d;
        }

        else
        {
          dCopy2 = 0;
        }

        v24 = [v20 mkDirPlaceholder:v22 fhBuffer:&v52 wellKnownMount:{dCopy2, v42}];
        v15 = v52;

        v25 = livefs_std_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = v42;
          v59 = v22;
          v60 = 1024;
          dCopy = v24;
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

          pathCopy = v43;
          rootNode = v20;
          goto LABEL_55;
        }

        rootNode = v27;
        if (v17 == v21)
        {
          v29 = [theMountTable lookup:d];
          if (v29)
          {
            [v29 setFileno:{objc_msgSend(rootNode, "fileno")}];
          }

          rootNode = 0;
          v15 = 0;
          v7 = v43;
          goto LABEL_42;
        }

        v18 = v18 + 1;
        v19 = v15;
        v20 = rootNode;
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

  pathCopy = self->rootPath;
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
    v35 = pathCopy;
    while (1)
    {
      if (*v49 != v33)
      {
        objc_enumerationMutation(v30);
      }

      pathCopy = [(NSString *)v35 stringByAppendingPathComponent:*(*(&v48 + 1) + 8 * v34)];

      v36 = livefs_std_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v59 = pathCopy;
        _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "mkMountPath: About to mkdir(%@, 0755)", buf, 0xCu);
      }

      if (mkdir([(NSString *)pathCopy UTF8String], 0x1EDu))
      {
        if (*__error() != 17)
        {
          break;
        }
      }

      v34 = v34 + 1;
      v35 = pathCopy;
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

- (void)rmMountPath:(id)path
{
  pathCopy = path;
  if (verbose)
  {
    v5 = livefs_std_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = pathCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "rmMountPath: %@", buf, 0xCu);
    }
  }

  if (![pathCopy isAbsolutePath])
  {
    goto LABEL_9;
  }

  if ([pathCopy hasPrefix:self->rootPath] && (objc_msgSend(pathCopy, "isEqualToString:", self->rootPath) & 1) == 0)
  {
    v6 = [pathCopy substringFromIndex:{-[NSString length](self->rootPath, "length") + 1}];

    pathCopy = v6;
LABEL_9:
    [pathCopy pathComponents];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100005DC4;
    v8[3] = &unk_100060B20;
    v9 = v8[4] = self;
    v7 = v9;
    [(FPnfsMemFS *)self performExclusiveMemFS:v8];
  }
}

- (void)close:(id)close keepingMode:(int)mode requestID:(unint64_t)d reply:(id)reply
{
  closeCopy = close;
  replyCopy = reply;
  if (verbose)
  {
    v9 = livefs_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = closeCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Close %@", &v10, 0xCu);
    }
  }

  replyCopy[2](replyCopy, 0);
}

- (void)createIn:(id)in named:(id)named attributes:(id)attributes requestID:(unint64_t)d reply:(id)reply
{
  inCopy = in;
  namedCopy = named;
  replyCopy = reply;
  if (verbose)
  {
    v12 = livefs_std_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = inCopy;
      v15 = 2112;
      v16 = namedCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Create called dir: %@ name:%@", &v13, 0x16u);
    }
  }

  (*(replyCopy + 2))(replyCopy, 30, 0, 0, 0, 0);
}

- (void)fileAttributes:(id)attributes requestID:(unint64_t)d reply:(id)reply
{
  attributesCopy = attributes;
  replyCopy = reply;
  if (verbose)
  {
    v9 = livefs_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = attributesCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Getattr called for %@", &v14, 0xCu);
    }
  }

  v10 = [(FPnfsMemFS *)self findNode:attributesCopy];
  v11 = v10;
  if (v10)
  {
    getattr = [v10 getattr];
    if (getattr)
    {
      v13 = 0;
    }

    else
    {
      v13 = 28;
    }

    replyCopy[2](replyCopy, v13, getattr);
  }

  else
  {
    replyCopy[2](replyCopy, 70, 0);
  }
}

- (void)getRootFileHandleWithError:(id)error
{
  errorCopy = error;
  if (verbose)
  {
    v5 = livefs_std_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      rootNode = [(FPnfsMemFS *)self rootNode];
      v7 = [rootNode fh];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "GetRootFileHandle %@", &v10, 0xCu);
    }
  }

  rootNode2 = [(FPnfsMemFS *)self rootNode];
  v9 = [rootNode2 fh];
  errorCopy[2](errorCopy, v9, 0);
}

- (void)lookupIn:(id)in name:(id)name usingFlags:(unsigned int)flags requestID:(unint64_t)d reply:(id)reply
{
  inCopy = in;
  nameCopy = name;
  replyCopy = reply;
  if (verbose)
  {
    v13 = livefs_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = inCopy;
      v21 = 2112;
      v22 = nameCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Lookup called dir: %@ name: %@", buf, 0x16u);
    }
  }

  v14 = [(FPnfsMemFS *)self findNode:inCopy];
  if (v14)
  {
    string = [nameCopy string];
    v16 = [v14 lookupNode:string];

    if (v16)
    {
      getattr = [v16 getattr];
      v18 = [v16 fh];
      (*(replyCopy + 2))(replyCopy, 0, 0xFFFFFFFFLL, v18, getattr, 0, 0, 0, 0, 0);
    }

    else
    {
      (*(replyCopy + 2))(replyCopy, 2, 0xFFFFFFFFLL, 0, 0, 0, 0, 0, 0, 0);
    }
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 70, 0xFFFFFFFFLL, 0, 0, 0, 0, 0, 0, 0);
  }
}

- (void)makeDirectoryIn:(id)in named:(id)named attributes:(id)attributes requestID:(unint64_t)d reply:(id)reply
{
  inCopy = in;
  namedCopy = named;
  attributesCopy = attributes;
  replyCopy = reply;
  if (verbose)
  {
    v15 = livefs_std_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = inCopy;
      v27 = 2112;
      v28 = namedCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Mkdir called dir: %@ name: %@", buf, 0x16u);
    }
  }

  v16 = [(FPnfsMemFS *)self findNode:inCopy];
  if (v16)
  {
    v23 = attributesCopy;
    string = [namedCopy string];
    v24 = 0;
    v18 = [v16 mkDir:string fhBuffer:&v24];
    v19 = v24;

    getattr = [v16 getattr];
    v21 = 0;
    getattr2 = 0;
    if (!v18)
    {
      v21 = [(FPnfsMemFS *)self findNode:v19];
      getattr2 = [v21 getattr];
    }

    (*(replyCopy + 2))(replyCopy, v18, getattr, v19, getattr2, 0, 0);

    attributesCopy = v23;
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 70, 0, 0, 0, 0, 0);
  }
}

- (void)makeSymLinkIn:(id)in named:(id)named contents:(id)contents attributes:(id)attributes requestID:(unint64_t)d reply:(id)reply
{
  inCopy = in;
  namedCopy = named;
  replyCopy = reply;
  if (verbose >= 2)
  {
    v13 = livefs_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = inCopy;
      v16 = 2112;
      v17 = namedCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "MakeSymLink called dir: %@ name: %@", &v14, 0x16u);
    }
  }

  (*(replyCopy + 2))(replyCopy, 30, 0, 0, 0, 0);
}

- (void)makeLinkOf:(id)of named:(id)named inDirectory:(id)directory requestID:(unint64_t)d reply:(id)reply
{
  namedCopy = named;
  directoryCopy = directory;
  replyCopy = reply;
  if (verbose >= 2)
  {
    v12 = livefs_std_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = directoryCopy;
      v15 = 2112;
      v16 = namedCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MakeLink called dir: %@ name: %@", &v13, 0x16u);
    }
  }

  (*(replyCopy + 2))(replyCopy, 30, 0, 0, 0);
}

- (void)makeCloneOf:(id)of named:(id)named inDirectory:(id)directory attributes:(id)attributes usingFlags:(unsigned int)flags requestID:(unint64_t)d reply:(id)reply
{
  namedCopy = named;
  directoryCopy = directory;
  replyCopy = reply;
  if (verbose >= 2)
  {
    v13 = livefs_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = directoryCopy;
      v16 = 2112;
      v17 = namedCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "MakeClone called dir: %@ name: %@", &v14, 0x16u);
    }
  }

  (*(replyCopy + 2))(replyCopy, 30, 0, 0, 0, 0);
}

- (void)open:(id)open withMode:(int)mode requestID:(unint64_t)d reply:(id)reply
{
  openCopy = open;
  replyCopy = reply;
  if (verbose >= 2)
  {
    v9 = livefs_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = openCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Open %@", &v10, 0xCu);
    }
  }

  replyCopy[2](replyCopy, 0);
}

- (void)pathConfiguration:(id)configuration requestID:(unint64_t)d reply:(id)reply
{
  configurationCopy = configuration;
  replyCopy = reply;
  v13 = 0;
  if (verbose)
  {
    v8 = livefs_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = configurationCopy;
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

  replyCopy[2](replyCopy, v10, v9);
}

- (void)readFrom:(id)from atOffset:(unint64_t)offset intoBuffer:(id)buffer requestID:(unint64_t)d reply:(id)reply
{
  fromCopy = from;
  replyCopy = reply;
  if (verbose >= 2)
  {
    v10 = livefs_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = fromCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Read %@", &v11, 0xCu);
    }
  }

  (*(replyCopy + 2))(replyCopy, 45, 0, 0);
}

- (void)readDirectory:(id)directory intoBuffer:(id)buffer cookie:(unint64_t)cookie verifier:(unint64_t)verifier requestID:(unint64_t)d reply:(id)reply
{
  bufferCopy = buffer;
  replyCopy = reply;
  directoryCopy = directory;
  v16 = livefs_std_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_1000084A0(v16);
  }

  v17 = [(FPnfsMemFS *)self findNode:directoryCopy];

  if (v17)
  {
    v19 = 0;
    v18 = [v17 readDirAtCookie:cookie withVerifier:verifier forBytes:objc_msgSend(bufferCopy andError:{"length"), &v19}];
    if (v18)
    {
      memmove([bufferCopy mutableBytes], objc_msgSend(v18, "bytes"), objc_msgSend(v18, "length"));
      [bufferCopy setLength:{objc_msgSend(v18, "length")}];
    }

    replyCopy[2](replyCopy, v19, [v18 length], objc_msgSend(v17, "verf"));
  }

  else
  {
    replyCopy[2](replyCopy, 70, 0, 0);
  }
}

- (void)readDirectory:(id)directory intoBuffer:(id)buffer requestedAttributes:(unint64_t)attributes cookie:(unint64_t)cookie verifier:(unint64_t)verifier requestID:(unint64_t)d reply:(id)reply
{
  directoryCopy = directory;
  bufferCopy = buffer;
  replyCopy = reply;
  v16 = livefs_std_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_1000084E4(directoryCopy, v16);
  }

  v17 = [(FPnfsMemFS *)self findNode:directoryCopy];
  v19 = 0;
  if (v17)
  {
    v18 = [v17 readDirAttrAtCookie:cookie withVerifier:verifier forBytes:objc_msgSend(bufferCopy andError:{"length"), &v19}];
    if (v18)
    {
      memmove([bufferCopy mutableBytes], objc_msgSend(v18, "bytes"), objc_msgSend(v18, "length"));
      [bufferCopy setLength:{objc_msgSend(v18, "length")}];
    }

    replyCopy[2](replyCopy, v19, [v18 length], objc_msgSend(v17, "verf"));
  }

  else
  {
    replyCopy[2](replyCopy, 70, 0, 0);
  }
}

- (void)readLinkOf:(id)of requestID:(unint64_t)d reply:(id)reply
{
  ofCopy = of;
  replyCopy = reply;
  if (verbose >= 2)
  {
    v8 = livefs_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = ofCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ReadLink %@", &v9, 0xCu);
    }
  }

  (*(replyCopy + 2))(replyCopy, 45, 0, 0);
}

- (void)reclaim:(id)reclaim requestID:(unint64_t)d reply:(id)reply
{
  reclaimCopy = reclaim;
  replyCopy = reply;
  if (verbose)
  {
    v8 = livefs_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = reclaimCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reclaim %@", &v9, 0xCu);
    }
  }

  (*(replyCopy + 2))(replyCopy, 0, 0);
}

- (void)removeItem:(id)item from:(id)from named:(id)named usingFlags:(int)flags requestID:(unint64_t)d reply:(id)reply
{
  fromCopy = from;
  namedCopy = named;
  replyCopy = reply;
  if (verbose >= 2)
  {
    v13 = livefs_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = fromCopy;
      v16 = 2112;
      v17 = namedCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Remove dir: %@ name:%@", &v14, 0x16u);
    }
  }

  (*(replyCopy + 2))(replyCopy, 30, 0, 0);
}

- (void)removeDirectory:(id)directory from:(id)from named:(id)named usingFlags:(int)flags requestID:(unint64_t)d reply:(id)reply
{
  directoryCopy = directory;
  fromCopy = from;
  namedCopy = named;
  replyCopy = reply;
  if (verbose)
  {
    v16 = livefs_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412546;
      v22 = fromCopy;
      v23 = 2112;
      v24 = namedCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Rmdir dir: %@ name:%@", &v21, 0x16u);
    }
  }

  v17 = [(FPnfsMemFS *)self findNode:fromCopy];
  if (v17)
  {
    string = [namedCopy string];
    v19 = [v17 rmDir:string];

    if (v19)
    {
      (*(replyCopy + 2))(replyCopy, v19, 0, 0);
    }

    else
    {
      getattr = [v17 getattr];
      (*(replyCopy + 2))(replyCopy, 0, getattr, 0);
    }
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 70, 0, 0);
  }
}

- (void)renameItemIn:(id)in named:(id)named item:(id)item toDirectory:(id)directory newName:(id)name toItem:(id)toItem usingFlags:(unsigned int)flags requestID:(unint64_t)self0 reply:(id)self1
{
  inCopy = in;
  namedCopy = named;
  itemCopy = item;
  directoryCopy = directory;
  nameCopy = name;
  toItemCopy = toItem;
  replyCopy = reply;
  if (verbose >= 2)
  {
    v24 = livefs_std_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v41 = inCopy;
      v42 = 2112;
      v43 = namedCopy;
      v44 = 2112;
      v45 = directoryCopy;
      v46 = 2112;
      v47 = nameCopy;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Rename from dir: %@ from name: %@ to dir: %@ to name: %@", buf, 0x2Au);
    }
  }

  if ([inCopy isEqualToString:directoryCopy])
  {
    v25 = [(FPnfsMemFS *)self findNode:inCopy];
    if (v25)
    {
      string = [namedCopy string];
      v27 = [v25 lookupNode:string];

      if (v27)
      {
        v39 = v27;
        string2 = [nameCopy string];
        v29 = [v25 lookupNode:string2];

        v38 = v29;
        if (v29 && ([nameCopy string], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v25, "rmDir:", v30), v30, v31))
        {
          (*(replyCopy + 2))(replyCopy, v31, 0, 0, 0, 0, 0);
        }

        else
        {
          v37 = itemCopy;
          string3 = [namedCopy string];
          string4 = [nameCopy string];
          v34 = [v39 renameFrom:string3 toName:string4];

          if (v34)
          {
            (*(replyCopy + 2))(replyCopy, v34, 0, 0, 0, 0, 0);
          }

          else
          {
            getattr = [v25 getattr];
            getattr2 = [v25 getattr];
            (*(replyCopy + 2))(replyCopy, 0, getattr, 0, getattr2, 0, 0);
          }

          itemCopy = v37;
        }
      }

      else
      {
        (*(replyCopy + 2))(replyCopy, 2, 0, 0, 0, 0, 0);
      }
    }

    else
    {
      (*(replyCopy + 2))(replyCopy, 70, 0, 0, 0, 0, 0);
    }
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 18, 0, 0, 0, 0, 0);
  }
}

- (void)setFileAttributesOf:(id)of to:(id)to requestID:(unint64_t)d reply:(id)reply
{
  ofCopy = of;
  replyCopy = reply;
  if (verbose >= 2)
  {
    v9 = livefs_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = ofCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SetAttr %@", &v10, 0xCu);
    }
  }

  (*(replyCopy + 2))(replyCopy, 30, 0, 0);
}

- (void)volumeStatistics:(id)statistics requestID:(unint64_t)d reply:(id)reply
{
  statisticsCopy = statistics;
  replyCopy = reply;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  if (verbose)
  {
    v8 = livefs_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = statisticsCopy;
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

  replyCopy[2](replyCopy, v10, v9);
}

- (void)writeTo:(id)to atOffset:(unint64_t)offset fromBuffer:(id)buffer requestID:(unint64_t)d reply:(id)reply
{
  toCopy = to;
  replyCopy = reply;
  if (verbose >= 2)
  {
    v10 = livefs_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = toCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Write %@", &v11, 0xCu);
    }
  }

  (*(replyCopy + 2))(replyCopy, 30, 0, 0, 0);
}

- (void)writeTo:(id)to atOffset:(unint64_t)offset sharedBuffer:(id)buffer requestID:(unint64_t)d reply:(id)reply
{
  toCopy = to;
  replyCopy = reply;
  if (verbose >= 2)
  {
    v10 = livefs_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = toCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Write %@", &v11, 0xCu);
    }
  }

  (*(replyCopy + 2))(replyCopy, 30, 0, 0, 0);
}

- (void)LIWrite:(id)write atOffset:(unint64_t)offset withBuffer:(id)buffer requestID:(unint64_t)d reply:(id)reply
{
  writeCopy = write;
  replyCopy = reply;
  if (verbose >= 2)
  {
    v10 = livefs_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = writeCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Write %@", &v11, 0xCu);
    }
  }

  replyCopy[2](replyCopy, 30, 0);
}

- (void)otherAttributeOf:(id)of named:(id)named requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  string = [named string];
  if (([string isEqualToString:@"_B_has_perm_enforcement"] & 1) != 0 || objc_msgSend(string, "isEqualToString:", @"_B_has_access_check"))
  {
    __s = 0;
  }

  else
  {
    if ([string isEqualToString:@"_S_f_type"])
    {
      p_s = "lifs";
      v10 = 5;
      goto LABEL_5;
    }

    if ([string isEqualToString:@"_S_f_location"])
    {
      __s = 0;
      v13 = getpid();
      asprintf(&__s, "fskitd@%d", v13);
      v11 = [NSData dataWithBytesNoCopy:__s length:strlen(__s) + 1 freeWhenDone:1];
      goto LABEL_6;
    }

    if ([string isEqualToString:@"_S_f_vol_name"])
    {
      p_s = "LiveFiles";
      v10 = 10;
      goto LABEL_5;
    }

    if ([string isEqualToString:@"_N_caps_format"])
    {
      v14 = 4195072;
    }

    else
    {
      if (![string isEqualToString:@"_N_caps_interfaces"])
      {
        replyCopy[2](replyCopy, 45, 0);
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
  replyCopy[2](replyCopy, 0, v11);

LABEL_7:
}

- (void)setUpdateInterest:(id)interest interest:(BOOL)a4 requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  (*(reply + 2))(replyCopy, v8);
}

@end