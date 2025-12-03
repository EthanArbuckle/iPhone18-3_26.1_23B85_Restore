@interface NSData
+ (void)_gkLoadRemoteImageDataForURL:(id)l subdirectory:(id)subdirectory filename:(id)filename queue:(id)queue handler:(id)handler;
- (id)_gkUnzippedData;
- (id)_gkZippedData;
- (void)_gkWriteToImageCacheWithURLString:(id)string;
@end

@implementation NSData

+ (void)_gkLoadRemoteImageDataForURL:(id)l subdirectory:(id)subdirectory filename:(id)filename queue:(id)queue handler:(id)handler
{
  handlerCopy = handler;
  queueCopy = queue;
  filenameCopy = filename;
  subdirectoryCopy = subdirectory;
  lCopy = l;
  v16 = +[NSURLSession _gkForGameDaemonProcess];
  [NSData _gkLoadRemoteImageDataForURL:lCopy session:v16 subdirectory:subdirectoryCopy filename:filenameCopy queue:queueCopy handler:handlerCopy];
}

- (id)_gkZippedData
{
  bytes = [(NSData *)self bytes];
  v4 = [(NSData *)self length];
  v5 = 0;
  if (bytes)
  {
    v6 = v4;
    if (v4)
    {
      v7 = [[NSMutableData alloc] initWithLength:v4];
      memset(&v13.avail_in, 0, 104);
      v13.avail_in = v6;
      v13.avail_out = v6;
      v13.next_out = [v7 mutableBytes];
      if (v7 && !deflateInit2_(&v13, -1, 8, 31, 8, 0, "1.2.12", 112) && (v8 = deflate(&v13, 4), v9 = deflateEnd(&v13), v8 == 1))
      {
        v10 = v9;
        v11 = 0;
        if (!v10 && v6 == v13.total_in)
        {
          [v7 setLength:v13.total_out];
          v11 = v7;
        }
      }

      else
      {
        v11 = 0;
      }

      v5 = v11;
    }
  }

  return v5;
}

- (id)_gkUnzippedData
{
  memset(&strm.avail_in, 0, 104);
  strm.avail_in = [(NSData *)self length];
  strm.next_in = [(NSData *)self bytes];
  v3 = 0;
  if (!inflateInit2_(&strm, 31, "1.2.12", 112))
  {
    v3 = objc_alloc_init(NSMutableData);
    while (1)
    {
      strm.avail_out = 0x4000;
      strm.next_out = v8;
      v4 = inflate(&strm, 0);
      if (v4 > 1)
      {
        break;
      }

      v5 = v4;
      if (strm.avail_out != 0x4000)
      {
        [v3 appendBytes:v8 length:0x4000 - strm.avail_out];
      }

      if (v5)
      {
        inflateEnd(&strm);
        goto LABEL_9;
      }
    }

    inflateEnd(&strm);

    v3 = 0;
  }

LABEL_9:

  return v3;
}

- (void)_gkWriteToImageCacheWithURLString:(id)string
{
  v4 = [NSURL URLWithString:string];
  path = [v4 path];
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 fileExistsAtPath:stringByDeletingLastPathComponent];

  if ((v8 & 1) == 0)
  {
    v9 = +[NSFileManager defaultManager];
    v19 = 0;
    [v9 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v19];
    v10 = v19;

    if (v10)
    {
      if (!os_log_GKGeneral)
      {
        v11 = GKOSLoggers();
      }

      v12 = os_log_GKError;
      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_1002949E4(v10, v12);
      }
    }
  }

  v18 = 0;
  [(NSData *)self writeToFile:path options:1 error:&v18];
  v13 = v18;
  if (v13)
  {
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    v15 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100294A5C(path, v13, v15);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v16 = GKOSLoggers();
    }

    v17 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = path;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Saved new local player avatar image to image cache: %@", buf, 0xCu);
    }

    _gkMarkFileAsPurgeable();
  }
}

@end