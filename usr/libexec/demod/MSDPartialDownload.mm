@interface MSDPartialDownload
- (BOOL)isDownloadComplete;
- (MSDPartialDownload)init;
- (MSDPartialDownload)initWithFilePath:(id)path;
- (id)description;
- (id)getRangeHeaderForDownload;
- (void)appendDownloadedFileSize:(int64_t)size;
- (void)processServerRangeResponse:(id)response;
- (void)pushToTestLog:(id)log;
- (void)recordDownloadedBytes;
@end

@implementation MSDPartialDownload

- (MSDPartialDownload)init
{
  [(MSDPartialDownload *)self setTotalFileSize:-1];
  [(MSDPartialDownload *)self setDownloadedBytes:0];
  [(MSDPartialDownload *)self setExistingFileSize:0];
  [(MSDPartialDownload *)self setLastDownloadedByte:0];
  return self;
}

- (MSDPartialDownload)initWithFilePath:(id)path
{
  pathCopy = path;
  v10.receiver = self;
  v10.super_class = MSDPartialDownload;
  v5 = [(MSDPartialDownload *)&v10 init];
  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    if ([v6 fileExistsAtPath:pathCopy])
    {
      v7 = [v6 attributesOfItemAtPath:pathCopy error:0];
      -[MSDPartialDownload setExistingFileSize:](v5, "setExistingFileSize:", [v7 fileSize]);
    }

    else
    {
      [(MSDPartialDownload *)v5 setExistingFileSize:0];
    }

    [(MSDPartialDownload *)v5 setTotalFileSize:-1];
    [(MSDPartialDownload *)v5 setDownloadedBytes:0];
    [(MSDPartialDownload *)v5 setLastDownloadedByte:0];
    v8 = v5;
  }

  return v5;
}

- (BOOL)isDownloadComplete
{
  downloadedBytes = [(MSDPartialDownload *)self downloadedBytes];
  existingFileSize = [(MSDPartialDownload *)self existingFileSize];
  if ([(MSDPartialDownload *)self totalFileSize]!= -1)
  {
    v5 = (existingFileSize + downloadedBytes);
    if ([(MSDPartialDownload *)self totalFileSize]== v5)
    {
      return 1;
    }

    if ([(MSDPartialDownload *)self totalFileSize]< v5)
    {
      v6 = [NSDictionary dictionaryWithObjectsAndKeys:@"Downloaded file size went bigger than total size", @"testEventAdditionalData", &off_10017AF00, @"testLogLevel", 0];
      v7 = sub_100063A54();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        totalFileSize = [(MSDPartialDownload *)self totalFileSize];
        v11 = 2048;
        downloadedBytes2 = [(MSDPartialDownload *)self downloadedBytes];
        v13 = 2048;
        existingFileSize2 = [(MSDPartialDownload *)self existingFileSize];
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error happened totalFileSize = %ld downloadContentSize=%ld existingFileSize=%ld", buf, 0x20u);
      }

      return 1;
    }
  }

  return 0;
}

- (void)recordDownloadedBytes
{
  downloadedBytes = [(MSDPartialDownload *)self downloadedBytes];

  [(MSDPartialDownload *)self setLastDownloadedByte:downloadedBytes];
}

- (id)getRangeHeaderForDownload
{
  v2 = [NSString stringWithFormat:@"%ld", [(MSDPartialDownload *)self existingFileSize]+ [(MSDPartialDownload *)self downloadedBytes]];
  v3 = [NSString stringWithFormat:@"bytes=%@-%@", v2, &stru_10016D9D8];

  return v3;
}

- (void)processServerRangeResponse:(id)response
{
  responseCopy = response;
  if ([(MSDPartialDownload *)self totalFileSize]== -1)
  {
    v5 = [responseCopy componentsSeparatedByString:@"/"];
    v4 = v5;
    if (v5)
    {
      if ([v5 count] == 2)
      {
        v6 = [v4 objectAtIndexedSubscript:1];
        longLongValue = [v6 longLongValue];

        if (longLongValue)
        {
          v8 = [v4 objectAtIndexedSubscript:1];
          -[MSDPartialDownload setTotalFileSize:](self, "setTotalFileSize:", [v8 longLongValue]);
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }
}

- (void)appendDownloadedFileSize:(int64_t)size
{
  v4 = [(MSDPartialDownload *)self downloadedBytes]+ size;

  [(MSDPartialDownload *)self setDownloadedBytes:v4];
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"TotalFileSize: %ld\t", [(MSDPartialDownload *)self totalFileSize]];
  [v3 appendFormat:@"DownloadedBytes: %ld", -[MSDPartialDownload downloadedBytes](self, "downloadedBytes")];

  return v3;
}

- (void)pushToTestLog:(id)log
{
  logCopy = log;
  if (os_variant_has_internal_content())
  {
    fileDownloading = [(MSDPartialDownload *)self fileDownloading];
    v5 = [fileDownloading stringByAppendingString:@" -> "];
    v6 = [(MSDPartialDownload *)self description];
    v7 = [v5 stringByAppendingString:v6];

    if (logCopy)
    {
      v8 = [logCopy mutableCopy];
    }

    else
    {
      v8 = objc_alloc_init(NSMutableDictionary);
    }

    v9 = v8;
    if (v7)
    {
      v10 = +[MSDTestInterface sharedInstance];
      [v10 pushTestEvent:v7 ofType:@"partialRangeStatus"];
    }
  }
}

@end