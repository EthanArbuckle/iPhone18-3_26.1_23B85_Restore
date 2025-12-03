@interface PalmspringCrashlog
+ (BOOL)writeToDirectory:(id)directory crashlogData:(id)data options:(unint64_t)options error:(id *)error;
+ (OS_os_log)log;
- (BOOL)writeToDirectory:(id)directory options:(unint64_t)options error:(id *)error;
- (PalmspringCrashlog)initWithInfoEntry:(id)entry data:(id)data;
- (id)description;
@end

@implementation PalmspringCrashlog

+ (OS_os_log)log
{
  if (qword_1000794F0 != -1)
  {
    sub_10003AFD8();
  }

  v3 = qword_1000794E8;

  return v3;
}

- (PalmspringCrashlog)initWithInfoEntry:(id)entry data:(id)data
{
  entryCopy = entry;
  dataCopy = data;
  v30.receiver = self;
  v30.super_class = PalmspringCrashlog;
  v9 = [(PalmspringCrashlog *)&v30 init];
  if (v9)
  {
    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_10003AFEC(a2, v10);
    }

    if ([dataCopy length] > 7)
    {
      bytes = [dataCopy bytes];
      v14 = [objc_opt_class() log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_10003B080(entryCopy, bytes, v14);
      }

      v15 = [dataCopy length] - 8;
      v16 = [dataCopy length];
      if (v16 == [entryCopy headerAndRawBlobSize] && v15 == *(bytes + 1))
      {
        v11 = [dataCopy subdataWithRange:{8, v15}];
        v17 = crc16_compute([v11 bytes], [v11 length]);
        if (v17 == bytes[3])
        {
          v18 = [v11 copy];
          data = v9->_data;
          v9->_data = v18;

          v20 = [entryCopy copy];
          info = v9->_info;
          v9->_info = v20;

          v9->_blobVersion = *bytes;
          v12 = v9;
LABEL_17:

          goto LABEL_18;
        }

        v23 = v17;
        v24 = [objc_opt_class() log];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          name = [entryCopy name];
          v29 = bytes[3];
          *buf = 67109634;
          *v32 = v23;
          *&v32[4] = 2112;
          *&v32[6] = name;
          v33 = 1024;
          LODWORD(v34) = v29;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "CRC (0x%04x) of crashlog %@ did not match CRC in header (0x%04x)", buf, 0x18u);
        }
      }

      else
      {
        v11 = [objc_opt_class() log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v25 = [dataCopy length];
          headerAndRawBlobSize = [entryCopy headerAndRawBlobSize];
          v27 = *(bytes + 1);
          *buf = 134218752;
          *v32 = v25;
          *&v32[8] = 1024;
          *&v32[10] = headerAndRawBlobSize;
          v33 = 2048;
          v34 = v15;
          v35 = 1024;
          v36 = v27;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Size of crashlog did not match expected size: header+blob (expected: %ld / actual: %d), blob (expected: %ld, actual %d)", buf, 0x22u);
        }
      }
    }

    else
    {
      v11 = [objc_opt_class() log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10003B144(entryCopy, v11);
      }
    }

    v12 = 0;
    goto LABEL_17;
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (BOOL)writeToDirectory:(id)directory options:(unint64_t)options error:(id *)error
{
  directoryCopy = directory;
  data = [(PalmspringCrashlog *)self data];
  LOBYTE(error) = [PalmspringCrashlog writeToDirectory:directoryCopy crashlogData:data options:options error:error];

  return error;
}

+ (BOOL)writeToDirectory:(id)directory crashlogData:(id)data options:(unint64_t)options error:(id *)error
{
  directoryCopy = directory;
  dataCopy = data;
  v13 = [objc_opt_class() log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v26 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy = v26;
    v29 = 2112;
    v30 = directoryCopy;
    v31 = 2048;
    optionsCopy = options;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%@, directory %@, options %lu", buf, 0x20u);
  }

  v14 = +[NSFileManager defaultManager];
  v15 = [v14 createDirectoryAtPath:directoryCopy withIntermediateDirectories:1 attributes:0 error:error];

  if (v15)
  {
    v16 = objc_alloc_init(NSDateFormatter);
    [v16 setDateFormat:@"yyyy-MM-dd-HH:mm:ss"];
    v17 = +[NSDate date];
    v18 = [v16 stringFromDate:v17];
    v19 = +[PalmspringCrashlog crashlogPathExtension];
    v20 = [NSString stringWithFormat:@"%@/PalmspringCrashlog_%@.%@", directoryCopy, v18, v19];

    v21 = [dataCopy writeToFile:v20 options:options error:error];
    v22 = [objc_opt_class() log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = @"failed";
      if (v21)
      {
        v23 = @"succeeded";
      }

      if (error)
      {
        v24 = *error;
      }

      else
      {
        v24 = 0;
      }

      *buf = 138413058;
      selfCopy = self;
      v29 = 2112;
      v30 = v20;
      v31 = 2112;
      optionsCopy = v23;
      v33 = 2112;
      v34 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Writing crashlog %@ to %@ %@, error %@", buf, 0x2Au);
    }
  }

  else
  {
    v16 = [objc_opt_class() log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10003B204(directoryCopy, error);
    }

    LOBYTE(v21) = 0;
  }

  return v21;
}

- (id)description
{
  info = [(PalmspringCrashlog *)self info];
  v4 = [NSString stringWithFormat:@"(%@, Palmspring Crashlog Header: [blob version: %d])", info, [(PalmspringCrashlog *)self blobVersion]];

  return v4;
}

@end