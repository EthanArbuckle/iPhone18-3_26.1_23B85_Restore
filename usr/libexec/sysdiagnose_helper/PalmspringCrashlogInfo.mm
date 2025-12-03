@interface PalmspringCrashlogInfo
- (PalmspringCrashlogInfo)initWithData:(id)data;
@end

@implementation PalmspringCrashlogInfo

- (PalmspringCrashlogInfo)initWithData:(id)data
{
  dataCopy = data;
  v27.receiver = self;
  v27.super_class = PalmspringCrashlogInfo;
  v6 = [(PalmspringCrashlogInfo *)&v27 init];
  if (!v6)
  {
LABEL_16:
    v24 = 0;
    goto LABEL_17;
  }

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = os_log_create("com.apple.hid.AppleTopCase", [v8 UTF8String]);
  log = v6->_log;
  v6->_log = v9;

  v11 = v6->_log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10003ADDC(v11, a2);
  }

  if ([dataCopy length] <= 4)
  {
    v12 = v6->_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10003AF30(v12, dataCopy);
    }

    goto LABEL_16;
  }

  bytes = [dataCopy bytes];
  v14 = v6->_log;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = bytes[1];
    v16 = bytes[2];
    *buf = 67109376;
    v29 = v15;
    v30 = 1024;
    v31 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Crashlog info report header extracted: version %d, # of crashlogs %d", buf, 0xEu);
  }

  v17 = ((32 * bytes[2]) | 5);
  if ([dataCopy length] != v17)
  {
    v25 = v6->_log;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10003AE80(v25, dataCopy, v17);
    }

    goto LABEL_16;
  }

  v6->_version = bytes[1];
  v18 = objc_alloc_init(NSMutableArray);
  entries = v6->_entries;
  v6->_entries = v18;

  if (bytes[2])
  {
    v20 = 0;
    v21 = (bytes + 11);
    do
    {
      __strlcpy_chk();
      v22 = [NSString stringWithCString:buf encoding:4];
      v23 = [[PalmspringCrashlogInfoEntry alloc] initWithUniqueID:*(v21 - 6) type:*(v21 - 5) headerAndRawBlobSize:*(v21 - 1) name:v22];
      [(NSMutableArray *)v6->_entries addObject:v23];

      ++v20;
      v21 += 32;
    }

    while (v20 < bytes[2]);
  }

  v24 = v6;
LABEL_17:

  return v24;
}

@end