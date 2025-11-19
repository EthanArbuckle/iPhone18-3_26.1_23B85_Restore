@interface MSDPartialDownload
- (BOOL)isDownloadComplete;
- (MSDPartialDownload)init;
- (MSDPartialDownload)initWithFilePath:(id)a3;
- (id)description;
- (id)getRangeHeaderForDownload;
- (void)appendDownloadedFileSize:(int64_t)a3;
- (void)processServerRangeResponse:(id)a3;
- (void)pushToTestLog:(id)a3;
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

- (MSDPartialDownload)initWithFilePath:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MSDPartialDownload;
  v5 = [(MSDPartialDownload *)&v10 init];
  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    if ([v6 fileExistsAtPath:v4])
    {
      v7 = [v6 attributesOfItemAtPath:v4 error:0];
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
  v3 = [(MSDPartialDownload *)self downloadedBytes];
  v4 = [(MSDPartialDownload *)self existingFileSize];
  if ([(MSDPartialDownload *)self totalFileSize]!= -1)
  {
    v5 = (v4 + v3);
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
        v10 = [(MSDPartialDownload *)self totalFileSize];
        v11 = 2048;
        v12 = [(MSDPartialDownload *)self downloadedBytes];
        v13 = 2048;
        v14 = [(MSDPartialDownload *)self existingFileSize];
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error happened totalFileSize = %ld downloadContentSize=%ld existingFileSize=%ld", buf, 0x20u);
      }

      return 1;
    }
  }

  return 0;
}

- (void)recordDownloadedBytes
{
  v3 = [(MSDPartialDownload *)self downloadedBytes];

  [(MSDPartialDownload *)self setLastDownloadedByte:v3];
}

- (id)getRangeHeaderForDownload
{
  v2 = [NSString stringWithFormat:@"%ld", [(MSDPartialDownload *)self existingFileSize]+ [(MSDPartialDownload *)self downloadedBytes]];
  v3 = [NSString stringWithFormat:@"bytes=%@-%@", v2, &stru_10016D9D8];

  return v3;
}

- (void)processServerRangeResponse:(id)a3
{
  v9 = a3;
  if ([(MSDPartialDownload *)self totalFileSize]== -1)
  {
    v5 = [v9 componentsSeparatedByString:@"/"];
    v4 = v5;
    if (v5)
    {
      if ([v5 count] == 2)
      {
        v6 = [v4 objectAtIndexedSubscript:1];
        v7 = [v6 longLongValue];

        if (v7)
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

- (void)appendDownloadedFileSize:(int64_t)a3
{
  v4 = [(MSDPartialDownload *)self downloadedBytes]+ a3;

  [(MSDPartialDownload *)self setDownloadedBytes:v4];
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"TotalFileSize: %ld\t", [(MSDPartialDownload *)self totalFileSize]];
  [v3 appendFormat:@"DownloadedBytes: %ld", -[MSDPartialDownload downloadedBytes](self, "downloadedBytes")];

  return v3;
}

- (void)pushToTestLog:(id)a3
{
  v11 = a3;
  if (os_variant_has_internal_content())
  {
    v4 = [(MSDPartialDownload *)self fileDownloading];
    v5 = [v4 stringByAppendingString:@" -> "];
    v6 = [(MSDPartialDownload *)self description];
    v7 = [v5 stringByAppendingString:v6];

    if (v11)
    {
      v8 = [v11 mutableCopy];
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