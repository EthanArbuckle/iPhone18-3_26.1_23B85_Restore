@interface Copier
+ (id)copierWithSourceURL:(id)l uniqueIdentifier:(id)identifier destURL:(id)rL sandboxExtension:(id)extension callbackTarget:(id)target selector:(SEL)selector options:(int)options;
- (BOOL)createDirectory:(id)directory error:(id *)error;
- (BOOL)destroyTemporaryDirectory:(id)directory error:(id *)error;
- (BOOL)fileName:(id)name inDirectory:(id)directory hasUniqueIdentifier:(id)identifier;
- (BOOL)isCandidateFileName:(id)name forSourceFileName:(id)fileName;
- (BOOL)setUniqueIdentifier:(id)identifier forPath:(id)path;
- (BOOL)startCopy;
- (BOOL)validateSourceURLForCopying:(id)copying error:(id *)error;
- (BOOL)validateSourceURLForMoving:(id)moving error:(id *)error;
- (Copier)initWithSourceURL:(id)l uniqueIdentifier:(id)identifier destURL:(id)rL sandboxExtension:(id)extension callbackTarget:(id)target selector:(SEL)selector options:(int)options;
- (id)createTemporaryDirectory:(id *)directory;
- (id)identicalDocumentInDirectory:(id)directory sourceURL:(id)l uniqueIdentifier:(id)identifier;
- (id)uniquePathInDirectory:(id)directory sourceURL:(id)l;
- (void)_copyThread:(id)thread;
- (void)dealloc;
- (void)invalidate;
@end

@implementation Copier

+ (id)copierWithSourceURL:(id)l uniqueIdentifier:(id)identifier destURL:(id)rL sandboxExtension:(id)extension callbackTarget:(id)target selector:(SEL)selector options:(int)options
{
  LODWORD(v11) = options;
  v9 = [[Copier alloc] initWithSourceURL:l uniqueIdentifier:identifier destURL:rL sandboxExtension:extension callbackTarget:target selector:selector options:v11];

  return v9;
}

- (Copier)initWithSourceURL:(id)l uniqueIdentifier:(id)identifier destURL:(id)rL sandboxExtension:(id)extension callbackTarget:(id)target selector:(SEL)selector options:(int)options
{
  v19.receiver = self;
  v19.super_class = Copier;
  v15 = [(Copier *)&v19 init];
  v15->_sourceURL = [l copy];
  v15->_destURL = [rL copy];
  if (identifier)
  {
    v16 = [identifier copy];
  }

  else
  {
    v16 = 0;
  }

  v15->_uniqueID = v16;
  v15->_sandboxExtension = [extension copy];
  v15->_callbackTarget = target;
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  v15->_callbackSelector = selectorCopy;
  v15->_options = options;
  return v15;
}

- (void)dealloc
{
  [(Copier *)self invalidate];
  self->_continue = 0;

  self->_thread = 0;
  self->_sourceURL = 0;

  self->_destURL = 0;
  self->_uniqueID = 0;

  self->_sandboxExtension = 0;
  self->_callbackTarget = 0;
  v3.receiver = self;
  v3.super_class = Copier;
  [(Copier *)&v3 dealloc];
}

- (BOOL)validateSourceURLForCopying:(id)copying error:(id *)error
{
  if (([copying isFileURL] & 1) == 0)
  {
    if (error)
    {
      v9 = +[NSDictionary dictionaryWithObject:forKey:](NSDictionary, "dictionaryWithObject:forKey:", [copying path], NSFilePathErrorKey);
      v10 = NSPOSIXErrorDomain;
      v11 = 9;
      goto LABEL_11;
    }

    return 0;
  }

  path = [objc_msgSend(copying path];
  if (lstat(path, &v15))
  {
    goto LABEL_7;
  }

  v7 = v15.st_mode & 0xF000;
  if (v7 != 0x4000 && v7 != 0x8000 && v7 != 40960)
  {
    if (error)
    {
      v9 = +[NSDictionary dictionaryWithObject:forKey:](NSDictionary, "dictionaryWithObject:forKey:", [copying path], NSFilePathErrorKey);
      v10 = NSPOSIXErrorDomain;
      v11 = 22;
      goto LABEL_11;
    }

    return 0;
  }

  if (stat(path, &v15))
  {
LABEL_7:
    if (error)
    {
      v8 = *__error();
      v9 = +[NSDictionary dictionaryWithObject:forKey:](NSDictionary, "dictionaryWithObject:forKey:", [copying path], NSFilePathErrorKey);
      v10 = NSPOSIXErrorDomain;
      v11 = v8;
LABEL_11:
      v12 = [NSError errorWithDomain:v10 code:v11 userInfo:v9];
      result = 0;
      *error = v12;
      return result;
    }

    return 0;
  }

  v14 = v15.st_mode & 0xF000;
  result = 1;
  if (v14 != 0x4000 && v14 != 0x8000)
  {
    if (error)
    {
      v9 = +[NSDictionary dictionaryWithObject:forKey:](NSDictionary, "dictionaryWithObject:forKey:", [copying path], NSFilePathErrorKey);
      v10 = NSPOSIXErrorDomain;
      v11 = 20;
      goto LABEL_11;
    }

    return 0;
  }

  return result;
}

- (BOOL)validateSourceURLForMoving:(id)moving error:(id *)error
{
  v6 = [Copier validateSourceURLForCopying:"validateSourceURLForCopying:error:" error:?];
  if (v6)
  {
    if (lstat([objc_msgSend(moving path], &v13))
    {
      if (error)
      {
        v7 = *__error();
        v8 = +[NSDictionary dictionaryWithObject:forKey:](NSDictionary, "dictionaryWithObject:forKey:", [moving path], NSFilePathErrorKey);
        v9 = NSPOSIXErrorDomain;
        v10 = v7;
LABEL_9:
        v11 = [NSError errorWithDomain:v9 code:v10 userInfo:v8];
        LOBYTE(v6) = 0;
        *error = v11;
        return v6;
      }

      goto LABEL_10;
    }

    if (v13.st_nlink != 1)
    {
      if (error)
      {
        v8 = +[NSDictionary dictionaryWithObject:forKey:](NSDictionary, "dictionaryWithObject:forKey:", [moving path], NSFilePathErrorKey);
        v9 = NSPOSIXErrorDomain;
        v10 = 31;
        goto LABEL_9;
      }

LABEL_10:
      LOBYTE(v6) = 0;
      return v6;
    }

    LOBYTE(v6) = 1;
  }

  return v6;
}

- (BOOL)createDirectory:(id)directory error:(id *)error
{
  v6 = +[NSFileManager defaultManager];
  path = [directory path];
  v12 = 0;
  if ([(NSFileManager *)v6 fileExistsAtPath:path isDirectory:&v12]&& (v12 & 1) != 0)
  {
    return 1;
  }

  v8 = 1;
  if (![(NSFileManager *)v6 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:[NSDictionary error:"dictionaryWithObject:forKey:" dictionaryWithObject:NSFilePosixPermissions forKey:?], error])
  {
    if (error)
    {
      v9 = *error;
      if (*error)
      {
        v10 = [objc_msgSend(*error "userInfo")];
        if (!v10)
        {
          v10 = objc_alloc_init(NSMutableDictionary);
        }

        if (![v10 valueForKey:NSFilePathErrorKey])
        {
          [v10 setValue:objc_msgSend(directory forKey:{"path"), NSFilePathErrorKey}];
        }

        *error = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", [v9 domain], objc_msgSend(v9, "code"), v10);
      }
    }

    return 0;
  }

  return v8;
}

- (BOOL)setUniqueIdentifier:(id)identifier forPath:(id)path
{
  v6 = (mach_absolute_time() / 0x3B9ACA00);
  fileSystemRepresentation = [path fileSystemRepresentation];
  if (!fileSystemRepresentation)
  {
    return 0;
  }

  v8 = fileSystemRepresentation;
  if (!identifier)
  {
    v12 = 1;
    removexattr(fileSystemRepresentation, "com.apple.mdt.uniqueDocumentIdentifier", 1);
    removexattr(v8, "com.apple.mdt.modTime", 1);
    return v12;
  }

  v9 = [identifier cStringUsingEncoding:4];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = strlen(v9);
  if (setxattr(v8, "com.apple.mdt.uniqueDocumentIdentifier", v10, v11, 0, 1))
  {
    return 0;
  }

  if (setxattr(v8, "com.apple.mdt.modTime", &v14, 8uLL, 0, 1))
  {
    return 0;
  }

  v15.tv_sec = v6;
  v16 = v6;
  v15.tv_usec = 0;
  v17 = 0;
  return !utimes(v8, &v15);
}

- (BOOL)isCandidateFileName:(id)name forSourceFileName:(id)fileName
{
  if (!name)
  {
    sub_100004218();
  }

  if (!fileName)
  {
    sub_1000041EC();
  }

  sub_1000040F4(name, fileName, &v5);
  return v5;
}

- (id)identicalDocumentInDirectory:(id)directory sourceURL:(id)l uniqueIdentifier:(id)identifier
{
  v8 = [objc_msgSend(l "path")];
  path = [directory path];
  v20 = 0;
  result = [+[NSFileManager defaultManager](NSFileManager contentsOfDirectoryAtPath:"contentsOfDirectoryAtPath:error:" error:path, &v20];
  if (result)
  {
    v11 = result;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    result = [result countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (result)
    {
      v12 = result;
      v13 = *v17;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v16 + 1) + 8 * v14);
          if ([(Copier *)self isCandidateFileName:v15 forSourceFileName:v8]&& [(Copier *)self fileName:v15 inDirectory:path hasUniqueIdentifier:identifier])
          {
            return +[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", [path stringByAppendingPathComponent:v15]);
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        result = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
        v12 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

- (id)uniquePathInDirectory:(id)directory sourceURL:(id)l
{
  v5 = [objc_msgSend(l "path")];
  path = [directory path];
  v7 = [path stringByAppendingPathComponent:v5];
  memset(&v14, 0, sizeof(v14));
  if (lstat([v7 cStringUsingEncoding:4], &v14))
  {
LABEL_9:
    if (*__error() == 2)
    {
      return [NSURL fileURLWithPath:v7];
    }
  }

  else
  {
    v8 = 1;
    while (v8 != 0x10000)
    {
      pathExtension = [v5 pathExtension];
      if (pathExtension && (v10 = pathExtension, [pathExtension length]))
      {
        v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@-%u.%@", [v5 stringByDeletingPathExtension], v8, v10);
      }

      else
      {
        v11 = [NSString stringWithFormat:@"%@-%u", v5, v8, v13];
      }

      v7 = [path stringByAppendingPathComponent:v11];
      v8 = (v8 + 1);
      if (lstat([v7 cStringUsingEncoding:4], &v14))
      {
        goto LABEL_9;
      }
    }
  }

  return 0;
}

- (id)createTemporaryDirectory:(id *)directory
{
  v5 = CFUUIDCreate(0);
  v6 = CFUUIDCreateString(0, v5);
  1uLL = [objc_msgSend(-[NSArray objectAtIndex:](NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory 1uLL];
  CFRelease(v6);
  CFRelease(v5);
  v8 = [NSURL fileURLWithPath:1uLL];
  if ([(Copier *)self createDirectory:v8 error:directory])
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

- (BOOL)destroyTemporaryDirectory:(id)directory error:(id *)error
{
  v6 = +[NSFileManager defaultManager];
  path = [directory path];

  return [(NSFileManager *)v6 removeItemAtPath:path error:error];
}

- (void)_copyThread:(id)thread
{
  v25 = 0;
  v24 = 0;
  v4 = objc_alloc_init(NSAutoreleasePool);
  v5 = +[NSFileManager defaultManager];
  sandboxExtension = self->_sandboxExtension;
  if (sandboxExtension)
  {
    [(NSString *)sandboxExtension UTF8String];
    v7 = sandbox_extension_consume();
    if (v7 < 0)
    {
      NSLog(@"could not consume extension token!");
    }
  }

  else
  {
    v7 = -1;
  }

  if (![(Copier *)self validateSourceURLForCopying:self->_sourceURL error:&v25])
  {
    goto LABEL_22;
  }

  if (self->_uniqueID)
  {
    destURL = [(Copier *)self identicalDocumentInDirectory:self->_destURL sourceURL:self->_sourceURL uniqueIdentifier:?];
    if (destURL)
    {
      goto LABEL_23;
    }
  }

  if ([(NSFileManager *)v5 fileExistsAtPath:[(NSURL *)self->_destURL path] isDirectory:&v24])
  {
    if ((v24 & 1) == 0)
    {
      destURL = 0;
      v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:17 userInfo:[NSDictionary dictionaryWithObject:[(NSURL *)self->_destURL path] forKey:NSFilePathErrorKey]];
      goto LABEL_23;
    }

    goto LABEL_13;
  }

  destURL = self->_destURL;
  if ((self->_options & 1) == 0)
  {
    goto LABEL_14;
  }

  if (![(Copier *)self createDirectory:self->_destURL error:&v25])
  {
LABEL_22:
    destURL = 0;
    goto LABEL_23;
  }

LABEL_13:
  destURL = [(Copier *)self uniquePathInDirectory:self->_destURL sourceURL:self->_sourceURL];
LABEL_14:
  v9 = [(Copier *)self createTemporaryDirectory:&v25];
  if (!v9)
  {
    goto LABEL_23;
  }

  v10 = v9;
  v11 = [(NSDictionary *)[(NSFileManager *)v5 attributesOfItemAtPath:[(NSURL *)self->_destURL path] error:0] objectForKey:NSFileProtectionKey];
  if (v11)
  {
    v23 = 0;
    if (!-[NSFileManager setAttributes:ofItemAtPath:error:](v5, "setAttributes:ofItemAtPath:error:", +[NSDictionary dictionaryWithObject:forKey:](NSDictionary, "dictionaryWithObject:forKey:", v11, NSFileProtectionKey), [v10 path], &v23))
    {
      path = [v10 path];
      NSLog(@" Setting NSFileProtection: %@ on the path: %@ failed with error: %@", v11, path, v23);
    }
  }

  v22 = v10;
  v13 = [-[Copier uniquePathInDirectory:sourceURL:](self uniquePathInDirectory:v10 sourceURL:{self->_sourceURL), "path"}];
  v14 = [(NSString *)[(NSURL *)self->_sourceURL path] cStringUsingEncoding:4];
  v15 = [v13 cStringUsingEncoding:4];
  if ((self->_options & 2) != 0)
  {
    if (![(NSFileManager *)v5 moveItemAtPath:[(NSURL *)self->_sourceURL path] toPath:v13 error:&v25])
    {
      path2 = [(NSURL *)self->_sourceURL path];
      NSLog(@"Move from SRC(%@ -> %@) to temp failed with error %@", path2, v13, v25);
      destURL = 0;
      v18 = 5;
      goto LABEL_38;
    }

    if (!v11)
    {
      goto LABEL_34;
    }

    v23 = 0;
    if ([(NSFileManager *)v5 setAttributes:[NSDictionary dictionaryWithObject:NSFileProtectionKey forKey:?], v13, &v23])
    {
      v18 = 0;
    }

    else
    {
      NSLog(@" Setting NSFileProtection: %@ on the path: %@ failed with error: %@", v11, v13, v23);
      [(NSFileManager *)v5 moveItemAtPath:v13 toPath:[(NSURL *)self->_sourceURL path] error:&v25];
      v18 = 1;
    }
  }

  else
  {
    v16 = v15;
    v17 = copyfile_state_alloc();
    copyfile_state_set(v17, 6u, sub_100001DEC);
    copyfile_state_set(v17, 7u, self);
    v18 = copyfile(v14, v16, v17, 0xC800Fu);
    copyfile_state_free(v17);
  }

  if (!v18)
  {
LABEL_34:
    [(Copier *)self setUniqueIdentifier:self->_uniqueID forPath:v13];
    v18 = 0;
    if (![(NSFileManager *)v5 moveItemAtPath:v13 toPath:[(NSURL *)destURL path] error:&v25])
    {
      destURL = 0;
    }
  }

LABEL_38:
  NSLog(@"Operation completed with result=%d", v18);
  [(Copier *)self destroyTemporaryDirectory:v22 error:0];
LABEL_23:
  if (self->_callbackSelector)
  {
    callbackSelector = self->_callbackSelector;
  }

  else
  {
    callbackSelector = 0;
  }

  [self->_callbackTarget performSelector:callbackSelector withObject:destURL withObject:v25];
  if ((v7 & 0x8000000000000000) == 0 && (sandbox_extension_release() & 0x80000000) != 0)
  {
    v20 = __error();
    NSLog(@"Could not release sandbox extension: %d", *v20);
  }

  [v4 drain];
}

- (BOOL)startCopy
{
  self->_continue = 1;
  v3 = [[NSThread alloc] initWithTarget:self selector:"_copyThread:" object:0];
  self->_thread = v3;
  [(NSThread *)v3 start];
  return self->_thread != 0;
}

- (void)invalidate
{
  callbackTarget = self->_callbackTarget;
  self->_callbackTarget = 0;

  thread = self->_thread;

  [(NSThread *)thread cancel];
}

- (BOOL)fileName:(id)name inDirectory:(id)directory hasUniqueIdentifier:(id)identifier
{
  v6 = [objc_msgSend(directory stringByAppendingPathComponent:{name), "fileSystemRepresentation"}];
  value = 0;
  bzero(&v27, 0x90uLL);
  if (getxattr(v6, "com.apple.mdt.modTime", &value, 8uLL, 0, 1) != 8 || lstat(v6, &v27) || value != v27.st_mtimespec.tv_nsec + 1000000000 * v27.st_mtimespec.tv_sec)
  {
    goto LABEL_16;
  }

  v13 = &v29;
  v14 = sub_100001F0C(0, "com.apple.mdt.uniqueDocumentIdentifier", v7, v8, v9, v10, v11, v12, *&v27.st_dev, v27.st_ino, *&v27.st_uid, *&v27.st_rdev, v27.st_atimespec.tv_sec, v27.st_atimespec.tv_nsec, v27.st_mtimespec.tv_sec, v27.st_mtimespec.tv_nsec, v27.st_ctimespec.tv_sec, v27.st_ctimespec.tv_nsec, v27.st_birthtimespec.tv_sec, v27.st_birthtimespec.tv_nsec, v27.st_size, v27.st_blocks, *&v27.st_blksize, *&v27.st_gen, v27.st_qspare[0], v27.st_qspare[1], value, v29);
  if (v14 > 0)
  {
    v15 = 0;
    goto LABEL_6;
  }

  if ((v14 & 0x8000000000000000) == 0 || *__error() != 34 || (v19 = getxattr(v6, "com.apple.mdt.uniqueDocumentIdentifier", 0, 0, 0, 1), v19 < 1))
  {
LABEL_16:
    LOBYTE(v18) = 0;
    return v18;
  }

  v18 = malloc_type_malloc(v19 + 1, 0x100004077774924uLL);
  if (!v18)
  {
    return v18;
  }

  v15 = v18;
  v14 = sub_100001F0C(v18, "com.apple.mdt.uniqueDocumentIdentifier", v20, v21, v22, v23, v24, v25, *&v27.st_dev, v27.st_ino, *&v27.st_uid, *&v27.st_rdev, v27.st_atimespec.tv_sec, v27.st_atimespec.tv_nsec, v27.st_mtimespec.tv_sec, v27.st_mtimespec.tv_nsec, v27.st_ctimespec.tv_sec, v27.st_ctimespec.tv_nsec, v27.st_birthtimespec.tv_sec, v27.st_birthtimespec.tv_nsec, v27.st_size, v27.st_blocks, *&v27.st_blksize, *&v27.st_gen, v27.st_qspare[0], v27.st_qspare[1], value, v29);
  if (v14 < 1)
  {
    v17 = 0;
    goto LABEL_9;
  }

  v13 = v15;
LABEL_6:
  v13[v14] = 0;
  v16 = [NSString stringWithCString:v13 encoding:4];
  if (!v16 || [(NSString *)v16 compare:identifier])
  {
    v17 = 0;
    LOBYTE(v18) = 0;
    if (!v15)
    {
      return v18;
    }
  }

  else
  {
    v17 = 1;
    LOBYTE(v18) = 1;
    if (!v15)
    {
      return v18;
    }
  }

LABEL_9:
  free(v15);
  LOBYTE(v18) = v17;
  return v18;
}

@end