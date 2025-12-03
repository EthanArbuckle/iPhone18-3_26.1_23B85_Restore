@interface SDAirDropFileZipper
- (BOOL)addFile:(__CFURL *)file withBase:(__CFURL *)base toBom:(_BOMBom *)bom;
- (BOOL)addFileURLToBom:(_BOMBom *)bom file:(__CFURL *)file base:(__CFURL *)base propertyKeys:(id)keys topLevel:(BOOL)level;
- (BOOL)createPlaceholderFiles;
- (BOOL)initBomWithFiles;
- (BOOL)pathExistsInPlaceholderInfo:(id)info;
- (BOOL)validFileName:(id)name;
- (SDAirDropFileZipper)initWithQueue:(id)queue boundStreamSize:(int64_t)size;
- (SDAirDropFileZipperDelegate)delegate;
- (__CFArray)copyReverseParentChain:(__CFURL *)chain base:(__CFURL *)base;
- (__CFReadStream)copyReadStream;
- (id)URLFromFileInfo:(id)info;
- (id)absoluteURLIfTopLevelFile:(const char *)file isDirectory:(BOOL)directory base:(__CFURL *)base;
- (id)bomPath;
- (id)conflictResolvedURL:(id)l;
- (id)containerPath;
- (id)fixedRelativePath:(const char *)path;
- (id)prettyNameBasedOnUUID:(id)d;
- (int)bomCopierCopy:(id)copy destination:(id)destination options:(id)options;
- (int64_t)totalFileSize:(__CFURL *)size;
- (void)addParentChain:(_BOMBom *)chain file:(__CFURL *)file base:(__CFURL *)base;
- (void)allowProgressCircleToComplete;
- (void)bomCopierCopyFileFinished:(const char *)finished type:(int)type size:(int64_t)size operation:(int)operation;
- (void)bomCopierFatalError:(const char *)error;
- (void)bomCopierFatalFileError:(int)error;
- (void)dealloc;
- (void)moveFile:(__CFURL *)file toDestination:(__CFURL *)destination;
- (void)moveFilesToDestination;
- (void)notifyClientForEvent:(int64_t)event withProperty:(void *)property;
- (void)notifyProgress:(int64_t)progress force:(BOOL)force;
- (void)removeFileFromPlaceholderList:(id)list;
- (void)removeUnusedPlaceholderFiles;
- (void)setDestination:(id)destination;
- (void)setPlaceholderFiles:(id)files withCreationCompletionHandler:(id)handler;
- (void)setReadStream:(__CFReadStream *)stream;
- (void)startBomCopy:(id)copy destination:(id)destination options:(id)options;
- (void)stop;
- (void)unzip;
- (void)zip;
@end

@implementation SDAirDropFileZipper

- (SDAirDropFileZipper)initWithQueue:(id)queue boundStreamSize:(int64_t)size
{
  queueCopy = queue;
  v33.receiver = self;
  v33.super_class = SDAirDropFileZipper;
  v8 = [(SDAirDropFileZipper *)&v33 init];
  v9 = v8;
  if (v8)
  {
    bomPath = v8->_bomPath;
    v8->_bomPath = 0;

    v9->_useZip = 0;
    v9->_clientPid = 0;
    v9->_bomCopier = 0;
    senderName = v9->_senderName;
    v9->_senderName = 0;

    tempFolder = v9->_tempFolder;
    v9->_tempFolder = 0;

    destination = v9->_destination;
    v9->_destination = 0;

    v9->_bomArchive = 0;
    v9->_readStream = 0;
    v9->_writeStream = 0;
    sourceFiles = v9->_sourceFiles;
    v9->_sourceFiles = 0;

    progressTimer = v9->_progressTimer;
    v9->_progressTimer = 0;

    zipCompressionType = v9->_zipCompressionType;
    v9->_zipCompressionType = 0;

    unzipCompressionType = v9->_unzipCompressionType;
    v9->_unzipCompressionType = 0;

    placeholderFiles = v9->_placeholderFiles;
    v9->_placeholderFiles = 0;

    orderedRelativePaths = v9->_orderedRelativePaths;
    v9->_orderedRelativePaths = 0;

    compressionEngine = v9->_compressionEngine;
    v9->_compressionEngine = 0;

    skipReadableCheckFiles = v9->_skipReadableCheckFiles;
    v9->_skipReadableCheckFiles = 0;

    v9->_fileCount = 0;
    v9->_totalBytes = 0;
    v9->_lastBytesCopied = 0;
    v9->_totalBytesCopied = 0;
    v9->_timeStarted = 0.0;
    v9->_lastProgress = 0.0;
    v22 = objc_opt_new();
    topLevelFiles = v9->_topLevelFiles;
    v9->_topLevelFiles = v22;

    v24 = objc_opt_new();
    alternateNames = v9->_alternateNames;
    v9->_alternateNames = v24;

    v26 = objc_opt_new();
    relativePathToFile = v9->_relativePathToFile;
    v9->_relativePathToFile = v26;

    v28 = +[SDStatusMonitor sharedMonitor];
    monitor = v9->_monitor;
    v9->_monitor = v28;

    objc_storeStrong(&v9->_queue, queue);
    v30 = dispatch_queue_create("com.apple.airdrop.zip", &_dispatch_queue_attr_concurrent);
    zipQueue = v9->_zipQueue;
    v9->_zipQueue = v30;

    v9->_boundStreamSize = size;
  }

  return v9;
}

- (void)dealloc
{
  readStream = self->_readStream;
  if (readStream)
  {
    CFRelease(readStream);
  }

  if (self->_bomArchive)
  {
    BOMBomFree();
  }

  writeStream = self->_writeStream;
  if (writeStream)
  {
    CFRelease(writeStream);
  }

  bomPath = self->_bomPath;
  if (bomPath)
  {
    uTF8String = [(NSString *)bomPath UTF8String];
    remove(uTF8String, v7);
  }

  tempFolder = self->_tempFolder;
  if (tempFolder)
  {
    sub_1001F15C8(tempFolder);
  }

  v9.receiver = self;
  v9.super_class = SDAirDropFileZipper;
  [(SDAirDropFileZipper *)&v9 dealloc];
}

- (void)notifyClientForEvent:(int64_t)event withProperty:(void *)property
{
  CFRetain(property);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100180A5C;
  block[3] = &unk_1008D2178;
  block[4] = self;
  block[5] = event;
  block[6] = property;
  dispatch_async(queue, block);
}

- (void)setPlaceholderFiles:(id)files withCreationCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [files mutableCopy];
  placeholderFiles = self->_placeholderFiles;
  self->_placeholderFiles = v7;

  v9 = objc_opt_new();
  orderedRelativePaths = self->_orderedRelativePaths;
  self->_orderedRelativePaths = v9;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = self->_placeholderFiles;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    v15 = kSFOperationFileBomPathKey;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = [*(*(&v21 + 1) + 8 * v16) objectForKeyedSubscript:{v15, v21}];
        precomposedStringWithCanonicalMapping = [v17 precomposedStringWithCanonicalMapping];
        if (precomposedStringWithCanonicalMapping)
        {
          [(NSMutableArray *)self->_orderedRelativePaths addObject:precomposedStringWithCanonicalMapping];
        }

        v16 = v16 + 1;
      }

      while (v13 != v16);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  v19 = [handlerCopy copy];
  creationCompletionHandler = self->_creationCompletionHandler;
  self->_creationCompletionHandler = v19;
}

- (void)setDestination:(id)destination
{
  destinationCopy = destination;
  v5 = airdrop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    path = [destinationCopy path];
    v10 = 138412290;
    v11 = path;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "AirDrop destination set to %@", &v10, 0xCu);
  }

  filePathURL = [destinationCopy filePathURL];
  uRLByResolvingSymlinksInPath = [filePathURL URLByResolvingSymlinksInPath];
  destination = self->_destination;
  self->_destination = uRLByResolvingSymlinksInPath;
}

- (void)setReadStream:(__CFReadStream *)stream
{
  readStream = self->_readStream;
  if (readStream != stream)
  {
    if (readStream)
    {
      CFRelease(readStream);
    }

    self->_readStream = CFRetain(stream);
  }
}

- (__CFReadStream)copyReadStream
{
  result = self->_readStream;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

- (void)notifyProgress:(int64_t)progress force:(BOOL)force
{
  Current = CFAbsoluteTimeGetCurrent();
  if (force || Current > self->_lastProgress + 0.2)
  {
    totalBytes = self->_totalBytes;
    if (self->_totalBytesCopied + progress >= totalBytes)
    {
      v9 = self->_totalBytes;
    }

    else
    {
      v9 = self->_totalBytesCopied + progress;
    }

    if (totalBytes)
    {
      v10 = v9;
    }

    else
    {
      v10 = self->_totalBytesCopied + progress;
    }

    if (v10 > self->_lastBytesCopied || [(SDStatusMonitor *)self->_monitor enableBugs])
    {
      self->_lastProgress = Current;
      self->_lastBytesCopied = v10;
      v11 = [(NSMutableArray *)self->_topLevelFiles count];
      v17 = objc_opt_new();
      v12 = [(SDAirDropFileZipper *)self timeRemaining:v10 timeNow:Current];
      v13 = [NSNumber numberWithUnsignedInteger:v11];
      [v17 setObject:v13 forKeyedSubscript:kSFOperationFilesCopiedKey];

      v14 = [NSNumber numberWithLongLong:v10];
      [v17 setObject:v14 forKeyedSubscript:kSFOperationBytesCopiedKey];

      [v17 setObject:v12 forKeyedSubscript:kSFOperationTimeRemainingKey];
      [(SDAirDropFileZipper *)self notifyClientForEvent:7 withProperty:v17];
    }
  }

  else
  {
    progressTimer = self->_progressTimer;
    v16 = dispatch_time(0, 200000000);

    sub_1001F05F0(progressTimer, v16);
  }
}

- (id)absoluteURLIfTopLevelFile:(const char *)file isDirectory:(BOOL)directory base:(__CFURL *)base
{
  v8 = strlen(file);
  v9 = CFURLCreateFromFileSystemRepresentation(0, file, v8, directory);
  if (v9)
  {
    v10 = v9;
    PathComponent = CFURLCreateCopyDeletingLastPathComponent(0, v9);
    if (PathComponent)
    {
      v12 = PathComponent;
      v13 = CFURLCopyFileSystemPath(PathComponent, kCFURLPOSIXPathStyle);
      if (v13)
      {
        v14 = v13;
        if (CFEqual(v13, @"."))
        {
          v15 = strlen(file);
          v16 = CFURLCreateFromFileSystemRepresentationRelativeToBase(0, file, v15, directory, base);
        }

        else
        {
          v16 = 0;
        }

        CFRelease(v14);
      }

      else
      {
        v16 = 0;
      }

      CFRelease(v12);
    }

    else
    {
      v16 = 0;
    }

    CFRelease(v10);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)validFileName:(id)name
{
  nameCopy = name;
  if ([(SDStatusMonitor *)self->_monitor enableBugs])
  {
    v5 = 1;
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = self->_placeholderFiles;
    v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v19 = *v21;
      v18 = kSFOperationFileNameKey;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v21 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v20 + 1) + 8 * i);
          v10 = [(NSMutableDictionary *)self->_alternateNames objectForKeyedSubscript:nameCopy];
          v11 = [v9 objectForKeyedSubscript:v18];
          precomposedStringWithCanonicalMapping = [v11 precomposedStringWithCanonicalMapping];
          precomposedStringWithCanonicalMapping2 = [v10 precomposedStringWithCanonicalMapping];
          if (v10 && ([precomposedStringWithCanonicalMapping isEqualToString:precomposedStringWithCanonicalMapping2] & 1) != 0)
          {

LABEL_16:
            v5 = 1;
            goto LABEL_17;
          }

          lastPathComponent = [nameCopy lastPathComponent];
          v15 = [precomposedStringWithCanonicalMapping isEqualToString:lastPathComponent];

          if (v15)
          {
            goto LABEL_16;
          }
        }

        v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
        v5 = 0;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_17:
  }

  return v5;
}

- (void)removeFileFromPlaceholderList:(id)list
{
  listCopy = list;
  v4 = [(NSMutableDictionary *)self->_alternateNames objectForKeyedSubscript:?];
  v5 = v4;
  if (v4)
  {
    lastPathComponent = v4;
  }

  else
  {
    lastPathComponent = [listCopy lastPathComponent];
  }

  v7 = lastPathComponent;

  precomposedStringWithCanonicalMapping = [v7 precomposedStringWithCanonicalMapping];
  v9 = [(NSMutableArray *)self->_placeholderFiles count];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = kSFOperationFileNameKey;
    while (1)
    {
      v13 = [(NSMutableArray *)self->_placeholderFiles objectAtIndexedSubscript:v11];
      v14 = [v13 objectForKeyedSubscript:v12];
      precomposedStringWithCanonicalMapping2 = [v14 precomposedStringWithCanonicalMapping];
      v16 = [precomposedStringWithCanonicalMapping isEqualToString:precomposedStringWithCanonicalMapping2];

      if (v16)
      {
        break;
      }

      if (v10 == ++v11)
      {
        goto LABEL_10;
      }
    }

    [(NSMutableArray *)self->_placeholderFiles removeObjectAtIndex:v11];
  }

LABEL_10:
}

- (id)fixedRelativePath:(const char *)path
{
  v4 = CFStringCreateWithCString(0, path, 0x8000100u);
  v5 = v4;
  if (v4 && !CFStringHasPrefix(v4, @"./") && ![(SDStatusMonitor *)self->_monitor enableBugs])
  {
    v6 = CFStringCreateWithFormat(0, 0, @"%@%@", @"./", v5);
    CFRelease(v5);
    v5 = v6;
  }

  return v5;
}

- (BOOL)pathExistsInPlaceholderInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_placeholderFiles;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      v9 = kSFOperationFileBomPathKey;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [*(*(&v18 + 1) + 8 * i) objectForKeyedSubscript:{v9, v18}];
          precomposedStringWithCanonicalMapping = [v11 precomposedStringWithCanonicalMapping];
          precomposedStringWithCanonicalMapping2 = [infoCopy precomposedStringWithCanonicalMapping];
          v14 = precomposedStringWithCanonicalMapping2;
          if (precomposedStringWithCanonicalMapping)
          {
            v15 = precomposedStringWithCanonicalMapping2 == 0;
          }

          else
          {
            v15 = 1;
          }

          if (!v15 && [precomposedStringWithCanonicalMapping isEqualToString:precomposedStringWithCanonicalMapping2])
          {

            v16 = 1;
            goto LABEL_17;
          }
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
LABEL_17:
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)bomCopierCopyFileFinished:(const char *)finished type:(int)type size:(int64_t)size operation:(int)operation
{
  if (!operation)
  {
    self->_totalBytesCopied += size;
    if ([(SDAirDropFileZipper *)self isCompressor])
    {
      v9 = [(SDAirDropFileZipper *)self absoluteURLIfTopLevelFile:finished isDirectory:type == 2 base:self->_destination];
      if (v9)
      {
        if (([(NSMutableArray *)self->_topLevelFiles containsObject:v9]& 1) == 0)
        {
          [(NSMutableArray *)self->_topLevelFiles addObject:v9];
          [(SDAirDropFileZipper *)self notifyProgress:0 force:1];
        }
      }

      [(SDAirDropCompressor *)self->_compressionEngine fileComplete];
    }

    else
    {
      v10 = type == 2;
      v9 = [(SDAirDropFileZipper *)self fixedRelativePath:finished];
      v11 = +[NSURL fileURLWithFileSystemRepresentation:isDirectory:relativeToURL:](NSURL, "fileURLWithFileSystemRepresentation:isDirectory:relativeToURL:", [v9 UTF8String], v10, self->_tempFolder);
      precomposedStringWithCanonicalMapping = [v9 precomposedStringWithCanonicalMapping];
      if (v11)
      {
        [(SDAirDropFileZipper *)self quarantineFile:v11];
        if ([(SDAirDropFileZipper *)self pathExistsInPlaceholderInfo:precomposedStringWithCanonicalMapping])
        {
          if ([(SDAirDropFileZipper *)self validFileName:precomposedStringWithCanonicalMapping])
          {
            if (([(NSMutableArray *)self->_topLevelFiles containsObject:v11]& 1) != 0)
            {
              v13 = airdrop_log();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                sub_100184590();
              }
            }

            else
            {
              [(NSMutableArray *)self->_topLevelFiles addObject:v11];
              [(NSMutableDictionary *)self->_relativePathToFile setObject:v11 forKeyedSubscript:precomposedStringWithCanonicalMapping];
              [(SDAirDropFileZipper *)self notifyProgress:0 force:1];
            }

            [(SDAirDropFileZipper *)self removeFileFromPlaceholderList:precomposedStringWithCanonicalMapping];
          }

          else
          {
            v15 = airdrop_log();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              sub_100184554();
            }
          }
        }

        else
        {
          v14 = airdrop_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            sub_1001844E0();
          }
        }
      }
    }

    [(SDAirDropFileZipper *)self notifyProgress:0 force:0];
  }
}

- (void)bomCopierFatalFileError:(int)error
{
  v4 = [NSError errorWithDomain:NSPOSIXErrorDomain code:error userInfo:0];
  [(SDAirDropFileZipper *)self notifyClientForEvent:10 withProperty:v4];
}

- (void)bomCopierFatalError:(const char *)error
{
  v7 = NSLocalizedDescriptionKey;
  v4 = [NSString stringWithUTF8String:error];
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:v5];
  [(SDAirDropFileZipper *)self notifyClientForEvent:10 withProperty:v6];
}

- (int64_t)totalFileSize:(__CFURL *)size
{
  v3 = -1;
  number = 0;
  valuePtr = -1;
  if (CFURLCopyResourcePropertyForKey(size, kCFURLTotalFileSizeKey, &number, 0))
  {
    v4 = number == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (!CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr))
    {
      valuePtr = -1;
    }

    CFRelease(number);
    return valuePtr;
  }

  return v3;
}

- (__CFArray)copyReverseParentChain:(__CFURL *)chain base:(__CFURL *)base
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  PathComponent = CFURLCreateCopyDeletingLastPathComponent(0, chain);
  if (CFEqual(base, PathComponent))
  {
    v8 = PathComponent;
  }

  else
  {
    do
    {
      CFArrayAppendValue(Mutable, PathComponent);
      v8 = CFURLCreateCopyDeletingLastPathComponent(0, PathComponent);
      CFRelease(PathComponent);
      PathComponent = v8;
    }

    while (!CFEqual(base, v8));
  }

  CFRelease(v8);
  return Mutable;
}

- (BOOL)addFile:(__CFURL *)file withBase:(__CFURL *)base toBom:(_BOMBom *)bom
{
  v7 = sub_1001F0F24(file);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (BOMFSObjectNewFromPath())
  {
    v9 = sub_1001F09CC(file, base);
    if (v9)
    {
      v10 = v9;
      BOMFSObjectSetPathName();
      inserted = BOMBomInsertFSObject();
      v12 = inserted == 0;
      if (inserted)
      {
        v13 = airdrop_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_1001845CC();
        }
      }

      free(v10);
    }

    else
    {
      v12 = 0;
    }

    BOMFSObjectFree();
  }

  else
  {
    v14 = airdrop_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10018463C();
    }

    v12 = 0;
  }

  free(v8);
  return v12;
}

- (void)addParentChain:(_BOMBom *)chain file:(__CFURL *)file base:(__CFURL *)base
{
  v8 = [(SDAirDropFileZipper *)self copyReverseParentChain:file base:base];
  Count = CFArrayGetCount(v8);
  if (Count >= 1)
  {
    v10 = Count + 1;
    do
    {
      [(SDAirDropFileZipper *)self addFile:CFArrayGetValueAtIndex(v8 withBase:v10 - 2) toBom:base, chain];
      --v10;
    }

    while (v10 > 1);
  }

  CFRelease(v8);
}

- (BOOL)addFileURLToBom:(_BOMBom *)bom file:(__CFURL *)file base:(__CFURL *)base propertyKeys:(id)keys topLevel:(BOOL)level
{
  levelCopy = level;
  keysCopy = keys;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    goto LABEL_17;
  }

  v14 = WeakRetained;
  if ([(NSSet *)self->_skipReadableCheckFiles containsObject:file])
  {

    goto LABEL_5;
  }

  v15 = *&self->_auditToken.val[4];
  v23[0] = *self->_auditToken.val;
  v23[1] = v15;
  v16 = sub_1001F0F94(file, v23);

  if ((v16 & 1) == 0)
  {
LABEL_17:
    LOBYTE(v17) = 0;
    goto LABEL_24;
  }

LABEL_5:
  if (levelCopy)
  {
    [(SDAirDropFileZipper *)self addParentChain:bom file:file base:base];
  }

  v17 = [(SDAirDropFileZipper *)self addFile:file withBase:base toBom:bom];
  if (v17)
  {
    ++self->_fileCount;
  }

  if (sub_1001F0448(file))
  {
    *&v23[0] = 0;
    v18 = CFURLEnumeratorCreateForDirectoryURL(0, file, 0, keysCopy);
    while (1)
    {
      NextURL = CFURLEnumeratorGetNextURL(v18, v23, 0);
      if (NextURL == kCFURLEnumeratorSuccess)
      {
        [(SDAirDropFileZipper *)self addFileURLToBom:bom file:*&v23[0] base:base propertyKeys:keysCopy topLevel:0];
      }

      v20 = objc_loadWeakRetained(&self->_delegate);
      if (NextURL == kCFURLEnumeratorEnd || !v20)
      {
        break;
      }

      if (NextURL == kCFURLEnumeratorError)
      {
        goto LABEL_23;
      }
    }

LABEL_23:
    CFRelease(v18);
  }

  else
  {
    v21 = [(SDAirDropFileZipper *)self totalFileSize:file];
    if (v21 >= 1)
    {
      self->_totalBytes += v21;
    }

    if (v21 >> 33)
    {
      self->_useZip = 1;
    }
  }

LABEL_24:

  return v17;
}

- (id)URLFromFileInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (!infoCopy)
  {
    goto LABEL_12;
  }

  v6 = [infoCopy objectForKeyedSubscript:kSFOperationFileNameKey];

  v7 = [v5 objectForKeyedSubscript:kSFOperationFileTypeKey];

  v8 = [v5 objectForKeyedSubscript:kSFOperationFileIsDirectoryKey];

  if (self->_shouldExtractMediaFromPhotosBundles)
  {
    v9 = 0;
  }

  else
  {
    if (v8)
    {
      Value = CFBooleanGetValue(v8);
    }

    else
    {
      Value = v7 ? UTTypeConformsTo(v7, kUTTypeDirectory) : 0;
    }

    v9 = Value != 0;
  }

  v11 = CFURLCreateWithFileSystemPathRelativeToBase(0, v6, kCFURLPOSIXPathStyle, v9, self->_destination);
  if (v11)
  {
    v12 = v11;
    v13 = CFURLCopyAbsoluteURL(v11);
    CFRelease(v12);
  }

  else
  {
LABEL_12:
    v13 = 0;
  }

  return v13;
}

- (id)prettyNameBasedOnUUID:(id)d
{
  v6[0] = 0;
  v6[1] = 0;
  [d getUUIDBytes:v6];
  v3 = bswap32(LOWORD(v6[0]));
  v4 = [NSString stringWithFormat:@"IMG_%04u", (HIWORD(v3) - 10000 * (((839 * (v3 >> 20)) >> 16) >> 3))];

  return v4;
}

- (BOOL)createPlaceholderFiles
{
  selfCopy = self;
  placeholderFiles = self->_placeholderFiles;
  if (placeholderFiles)
  {
    v34 = [(NSMutableArray *)placeholderFiles count];
    if (v34)
    {
      v5 = 0;
      v39 = kSFOperationFileNameKey;
      v36 = kSFOperationFileBomPathKey;
      v37 = 1;
      *&v4 = 138412290;
      v33 = v4;
      while (1)
      {
        v6 = [(NSMutableArray *)selfCopy->_placeholderFiles objectAtIndexedSubscript:v5, v33];
        v7 = [v6 objectForKeyedSubscript:v39];
        v8 = v7;
        if (!v7)
        {
          break;
        }

        lastPathComponent = [v7 lastPathComponent];
        if (![v8 isEqual:lastPathComponent] || (objc_msgSend(v8, "isEqual:", @".") & 1) != 0)
        {

LABEL_37:
          [v8 UTF8String];
          v31 = airdrop_log();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            sub_10018472C();
          }

          goto LABEL_41;
        }

        v10 = [v8 isEqual:@".."];

        if (v10)
        {
          goto LABEL_37;
        }

        v35 = v8;
        v11 = [(SDAirDropFileZipper *)selfCopy URLFromFileInfo:v6];
        while (v11)
        {
          v44 = 0;
          v12 = sub_1001F183C(v11, &v44);
          v13 = v44;
          v14 = v13;
          if (v12)
          {
            goto LABEL_29;
          }

          domain = [v13 domain];
          if (![domain isEqual:NSPOSIXErrorDomain])
          {

LABEL_24:
            v30 = airdrop_log();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = v33;
              v46 = v14;
              _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "SDAirDropFileZipper: createPlaceholder %@", buf, 0xCu);
            }

LABEL_28:

            v37 = 0;
LABEL_29:

            break;
          }

          code = [v14 code];

          if (code != 17)
          {
            goto LABEL_24;
          }

          lastPathComponent2 = [(__CFURL *)v11 lastPathComponent];
          if (!lastPathComponent2)
          {
            v30 = airdrop_log();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              sub_1001846EC(&v40, v41, v30);
            }

            goto LABEL_28;
          }

          v18 = lastPathComponent2;
          v19 = sub_1001F1A78(lastPathComponent2);
          v20 = airdrop_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            destination = selfCopy->_destination;
            *buf = 138412802;
            v46 = v18;
            v47 = 2112;
            v48 = destination;
            v49 = 2112;
            v50 = v19;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "SDAirDropFileZipper: Placeholder filename %@ already exists at destination: %@. Creating as new filename: %@", buf, 0x20u);
          }

          v22 = [v6 mutableCopy];
          [v22 setObject:v19 forKeyedSubscript:v39];
          v23 = [v18 isEqual:v19];
          if (v23)
          {
            v24 = airdrop_log();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              sub_1001846AC(&v42, v43, v24);
            }

            v37 = 0;
          }

          else
          {
            v38 = [(SDAirDropFileZipper *)selfCopy URLFromFileInfo:v22];

            alternateNames = selfCopy->_alternateNames;
            [v22 objectForKeyedSubscript:v36];
            v26 = selfCopy;
            v27 = v6;
            v29 = v28 = v5;
            [(NSMutableDictionary *)alternateNames setObject:v19 forKeyedSubscript:v29];

            v5 = v28;
            v6 = v27;
            selfCopy = v26;
            [(NSMutableArray *)v26->_placeholderFiles setObject:v22 atIndexedSubscript:v5];
            v11 = v38;
          }

          if (v23)
          {
            break;
          }
        }

        if (++v5 == v34)
        {
          return v37;
        }
      }

      v31 = airdrop_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10018479C();
      }

LABEL_41:
    }

    else
    {
      v6 = airdrop_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100184810();
      }
    }
  }

  else
  {
    v6 = airdrop_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10018484C();
    }
  }

  return 0;
}

- (void)removeUnusedPlaceholderFiles
{
  placeholderFiles = self->_placeholderFiles;
  if (placeholderFiles)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = placeholderFiles;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [(SDAirDropFileZipper *)self URLFromFileInfo:*(*(&v14 + 1) + 8 * v8), v14];
          v10 = v9;
          if (v9)
          {
            v11 = CFURLCopyFileSystemPath(v9, kCFURLPOSIXPathStyle);
            if (v11)
            {
              v12 = v11;
              bzero(buffer, 0x400uLL);
              if (CFStringGetCString(v12, buffer, 1024, 0x8000100u))
              {
                remove(buffer, v13);
              }

              CFRelease(v12);
            }
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v6);
    }
  }
}

- (id)conflictResolvedURL:(id)l
{
  lCopy = l;
  lastPathComponent = [lCopy lastPathComponent];
  if (lastPathComponent)
  {
    relativePath = [lCopy relativePath];
    v7 = [(NSMutableDictionary *)self->_alternateNames objectForKeyedSubscript:relativePath];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = lastPathComponent;
    }

    v10 = v9;

    v11 = [(NSURL *)self->_destination URLByAppendingPathComponent:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)moveFile:(__CFURL *)file toDestination:(__CFURL *)destination
{
  v19 = 0;
  v6 = sub_1001F2338(file, destination, &v19);
  v7 = v19;
  v8 = v7;
  if (!v6)
  {
    domain = [v7 domain];
    if ([domain isEqual:NSPOSIXErrorDomain])
    {
      code = [v8 code];

      if (code == 20)
      {
        v18 = 0;
        v11 = sub_1001F1630(destination, &v18);
        v12 = v18;
        v13 = v12;
        if (v11)
        {
          v17 = v12;
          v14 = sub_1001F2338(file, destination, &v17);
          v15 = v17;

          if (v14)
          {
LABEL_15:

            goto LABEL_16;
          }

          v16 = airdrop_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_100184968();
          }
        }

        else
        {
          v16 = airdrop_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_1001848F8();
          }

          v15 = v13;
        }

        goto LABEL_15;
      }
    }

    else
    {
    }

    v15 = airdrop_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100184888();
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (void)moveFilesToDestination
{
  v3 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = self->_orderedRelativePaths;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      v8 = 0;
      do
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->_relativePathToFile objectForKeyedSubscript:*(*(&v23 + 1) + 8 * v8)];
        if (v9)
        {
          [v3 addObject:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  v10 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v3;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        v17 = [(SDAirDropFileZipper *)self conflictResolvedURL:v16, v19];
        if (v17)
        {
          [(SDAirDropFileZipper *)self moveFile:v16 toDestination:v17];
          [(NSMutableArray *)v10 addObject:v17];
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  topLevelFiles = self->_topLevelFiles;
  self->_topLevelFiles = v10;
}

- (int)bomCopierCopy:(id)copy destination:(id)destination options:(id)options
{
  destinationCopy = destination;
  optionsCopy = options;
  copyCopy = copy;
  self->_bomCopier = BOMCopierNew();
  BOMCopierSetUserData();
  bomCopier = self->_bomCopier;
  BOMCopierSetFileErrorHandler();
  v12 = self->_bomCopier;
  BOMCopierSetFatalErrorHandler();
  v13 = self->_bomCopier;
  BOMCopierSetCopyFileUpdateHandler();
  v14 = self->_bomCopier;
  BOMCopierSetFatalFileErrorHandler();
  v15 = self->_bomCopier;
  BOMCopierSetCopyFileFinishedHandler();
  v16 = self->_bomCopier;
  BOMCopierSetFileConflictErrorHandler();
  v17 = sub_1001F0F24(copyCopy);

  v18 = sub_1001F0F24(destinationCopy);
  if (self->_compressionEngine)
  {
    v19 = dispatch_group_create();
    dispatch_group_enter(v19);
    zipQueue = self->_zipQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100182F54;
    block[3] = &unk_1008CE900;
    v27 = destinationCopy;
    selfCopy = self;
    v29 = v19;
    v21 = v19;
    dispatch_async(zipQueue, block);
    v22 = self->_bomCopier;
    v23 = BOMCopierCopyWithOptions();
    dispatch_group_wait(v21, 0xFFFFFFFFFFFFFFFFLL);

    if (!v17)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v25 = self->_bomCopier;
  v23 = BOMCopierCopyWithOptions();
  if (v17)
  {
LABEL_3:
    free(v17);
  }

LABEL_4:
  if (v18)
  {
    free(v18);
  }

  return v23;
}

- (void)allowProgressCircleToComplete
{
  v2 = CFAbsoluteTimeGetCurrent() - self->_timeStarted;
  v3 = (0.95 - v2) * 1000000.0;
  v4 = v2 < 0.45;
  v5 = 500000.0;
  if (v4)
  {
    v5 = v3;
  }

  usleep(v5);
}

- (void)startBomCopy:(id)copy destination:(id)destination options:(id)options
{
  copyCopy = copy;
  destinationCopy = destination;
  optionsCopy = options;
  if ([(SDAirDropFileZipper *)self isDecompressor]&& (v11 = *&self->_auditToken.val[4], *buf = *self->_auditToken.val, *&buf[16] = v11, sub_1001F1034(destinationCopy)) || self->_fileCount)
  {
    v12 = objc_opt_new();
    v13 = [NSNumber numberWithLongLong:self->_totalBytes];
    [v12 setObject:v13 forKeyedSubscript:kSFOperationTotalBytesKey];

    [(SDAirDropFileZipper *)self notifyClientForEvent:5 withProperty:v12];
    Current = CFAbsoluteTimeGetCurrent();
    self->_timeStarted = Current;
    self->_lastProgress = Current + -0.2;
    zipQueue = self->_zipQueue;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100183468;
    v33[3] = &unk_1008CDEA0;
    v33[4] = self;
    v16 = sub_1001F0548(0, zipQueue, v33);
    progressTimer = self->_progressTimer;
    self->_progressTimer = v16;

    dispatch_resume(self->_progressTimer);
    if ([(SDAirDropFileZipper *)self isDecompressor]&& ![(SDAirDropFileZipper *)self createPlaceholderFiles])
    {
      v21 = airdrop_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100184C84();
      }
    }

    else
    {
      if ([(SDAirDropFileZipper *)self isDecompressor])
      {
        placeholderFiles = self->_placeholderFiles;
        (*(self->_creationCompletionHandler + 2))();
      }

      v19 = [(SDAirDropFileZipper *)self bomCopierCopy:copyCopy destination:destinationCopy options:optionsCopy];
      if (v19)
      {
        goto LABEL_18;
      }

      if ([(SDAirDropFileZipper *)self isDecompressor])
      {
        [(SDAirDropFileZipper *)self moveFilesToDestination];
        [(SDAirDropFileZipper *)self removeUnusedPlaceholderFiles];
      }
    }

    v19 = 0;
LABEL_18:
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      if ([(NSMutableArray *)self->_topLevelFiles count])
      {
        self->_totalBytesCopied = self->_totalBytes;
        v23 = airdrop_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = [(NSMutableArray *)self->_topLevelFiles count];
          topLevelFiles = self->_topLevelFiles;
          *buf = 134218242;
          *&buf[4] = v24;
          *&buf[12] = 2112;
          *&buf[14] = topLevelFiles;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "SDAirDropFileZipper: %lu files saved: %@", buf, 0x16u);
        }

        [(SDAirDropFileZipper *)self notifyProgress:0 force:1];
        [(SDAirDropFileZipper *)self allowProgressCircleToComplete];
        [(SDAirDropFileZipper *)self notifyClientForEvent:9 withProperty:self->_topLevelFiles];
      }

      else
      {
        v26 = airdrop_log();
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
        if (v19)
        {
          if (v27)
          {
            sub_100184CC0();
          }

          v28 = NSPOSIXErrorDomain;
          v29 = v19;
        }

        else
        {
          if (v27)
          {
            sub_100184D34();
          }

          v28 = NSPOSIXErrorDomain;
          v29 = 2;
        }

        v30 = [NSError errorWithDomain:v28 code:v29 userInfo:0];
        [(SDAirDropFileZipper *)self notifyClientForEvent:10 withProperty:v30];
      }
    }

    dispatch_source_cancel(self->_progressTimer);
    queue = self->_queue;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100183478;
    v32[3] = &unk_1008CDEA0;
    v32[4] = self;
    dispatch_async(queue, v32);
    goto LABEL_32;
  }

  v20 = airdrop_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_100184BF4(self);
  }

  v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
  [(SDAirDropFileZipper *)self notifyClientForEvent:10 withProperty:v12];
LABEL_32:
}

- (BOOL)initBomWithFiles
{
  bomPath = self->_bomPath;
  if (bomPath)
  {
    [(NSString *)bomPath UTF8String];
    v4 = BOMBomNew();
    self->_bomArchive = v4;
    if (v4)
    {
      if (!BOMFSObjectNewFromPath())
      {
        v9 = airdrop_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100184E60();
        }

        v7 = 0;
        goto LABEL_34;
      }

      bomArchive = self->_bomArchive;
      if (BOMBomInsertFSObject())
      {
        v6 = airdrop_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_100184D70();
        }
      }

      else
      {
        v29 = kCFURLTotalFileSizeKey;
        v6 = [NSArray arrayWithObjects:&v29 count:1];
        v10 = sub_1001F0874(self->_sourceFiles);
        v11 = airdrop_log();
        v12 = v11;
        if (v10)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SDAirDropFileZipper: start adding files to BOM", buf, 2u);
          }

          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v13 = self->_sourceFiles;
          v14 = [(NSArray *)v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v24;
            do
            {
              for (i = 0; i != v15; i = i + 1)
              {
                if (*v24 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                [(SDAirDropFileZipper *)self addFileURLToBom:self->_bomArchive file:*(*(&v23 + 1) + 8 * i) base:v10 propertyKeys:v6 topLevel:1, v23];
              }

              v15 = [(NSArray *)v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
            }

            while (v15);
          }

          v18 = airdrop_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "SDAirDropFileZipper: done adding files to BOM", buf, 2u);
          }

          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          v7 = WeakRetained != 0;
          if (!WeakRetained)
          {
            v20 = airdrop_log();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              sub_100184DAC();
            }
          }

          CFRelease(v10);
          goto LABEL_33;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100184DE8(&self->_sourceFiles);
        }
      }

      v7 = 0;
LABEL_33:

      BOMFSObjectFree();
LABEL_34:
      v21 = self->_bomArchive;
      BOMBomCommit();
      return v7;
    }

    v8 = airdrop_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100184E9C();
    }
  }

  else
  {
    v8 = airdrop_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100184ED8();
    }
  }

  return 0;
}

- (id)containerPath
{
  v2 = +[NSFileManager sharingContainerURL];
  v3 = [v2 URLByAppendingPathComponent:@"airdrop-bom" isDirectory:1];
  path = [v3 path];

  return path;
}

- (id)bomPath
{
  containerPath = [(SDAirDropFileZipper *)self containerPath];
  v3 = containerPath;
  if (containerPath)
  {
    v4 = containerPath;
  }

  else
  {
    v5 = airdrop_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100184F14();
    }

    v6 = sub_1001F1724(0, 65537);
    if (v6)
    {
      v7 = v6;
      v8 = +[NSUUID UUID];
      uUIDString = [v8 UUIDString];
      v10 = CFStringCreateWithFormat(0, 0, @"%@.bom", uUIDString);

      if (v10)
      {
        v11 = CFURLCreateWithFileSystemPathRelativeToBase(0, v10, kCFURLPOSIXPathStyle, 0, v7);
        if (v11)
        {
          v12 = v11;
          v13 = CFURLCopyAbsoluteURL(v11);
          if (v13)
          {
            v14 = v13;
            v4 = CFURLCopyFileSystemPath(v13, kCFURLPOSIXPathStyle);
            CFRelease(v14);
          }

          else
          {
            v17 = airdrop_log();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              sub_100184F50();
            }

            v4 = 0;
          }

          CFRelease(v12);
        }

        else
        {
          v16 = airdrop_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_100184F8C();
          }

          v4 = 0;
        }

        CFRelease(v10);
      }

      else
      {
        v4 = 0;
      }

      CFRelease(v7);
    }

    else
    {
      v15 = airdrop_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100184FC8();
      }

      v4 = 0;
    }
  }

  return v4;
}

- (void)zip
{
  bomPath = [(SDAirDropFileZipper *)self bomPath];
  bomPath = self->_bomPath;
  self->_bomPath = bomPath;

  if (!self->_destination)
  {
    CFStreamCreateBoundPair(0, &self->_readStream, &self->_writeStream, self->_boundStreamSize);
  }

  zipQueue = self->_zipQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100183B0C;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(zipQueue, block);
}

- (void)unzip
{
  destination = self->_destination;
  v10 = 0;
  v4 = sub_1001F1158(destination, &v10);
  v5 = v10;
  tempFolder = self->_tempFolder;
  self->_tempFolder = v4;

  if (self->_tempFolder)
  {
    zipQueue = self->_zipQueue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100183F00;
    v9[3] = &unk_1008CDEA0;
    v9[4] = self;
    dispatch_async(zipQueue, v9);
  }

  else
  {
    v8 = airdrop_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10018507C();
    }

    [(SDAirDropFileZipper *)self notifyClientForEvent:10 withProperty:v5];
  }
}

- (void)stop
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100184268;
  v4[3] = &unk_1008CDD98;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (SDAirDropFileZipperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end