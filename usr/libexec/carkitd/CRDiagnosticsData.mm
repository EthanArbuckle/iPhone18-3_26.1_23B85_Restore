@interface CRDiagnosticsData
+ (id)_carPlayLogsFolderURL;
+ (id)makeDiagnosticsFolderForTime:(id)time;
+ (void)removeDiagnosticsFoldersBeforeTime:(id)time;
- (BOOL)addAttachment:(id)attachment;
- (BOOL)addAttachment:(id)attachment asFilename:(id)filename;
- (BOOL)addTextAttachment:(id)attachment asFilename:(id)filename;
- (CRDiagnosticsData)init;
- (id)_getCreationDateForAttachmentURL:(id)l;
- (void)_markPurgeable:(id)purgeable;
@end

@implementation CRDiagnosticsData

+ (id)_carPlayLogsFolderURL
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 URLsForDirectory:5 inDomains:1];
  firstObject = [v3 firstObject];

  v5 = [firstObject URLByAppendingPathComponent:@"Logs/com.apple.CarPlay" isDirectory:1];

  return v5;
}

+ (id)makeDiagnosticsFolderForTime:(id)time
{
  timeCopy = time;
  _carPlayLogsFolderURL = [self _carPlayLogsFolderURL];
  if (_carPlayLogsFolderURL)
  {
    v6 = CRStringForDate();
    v7 = [NSString stringWithFormat:@"CarPlay-%@", v6];
    v8 = [_carPlayLogsFolderURL URLByAppendingPathComponent:v7];

    v9 = +[NSFileManager defaultManager];
    v16 = 0;
    v10 = [v9 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v16];
    v11 = v16;

    if (v10)
    {
      v12 = CarDiagnosticsLogging();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v8;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Created logging folder: %@", buf, 0xCu);
      }

      v13 = v8;
    }

    else
    {
      v14 = CarGeneralLogging();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000885FC();
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (void)removeDiagnosticsFoldersBeforeTime:(id)time
{
  timeCopy = time;
  _carPlayLogsFolderURL = [self _carPlayLogsFolderURL];
  if (_carPlayLogsFolderURL)
  {
    v6 = +[NSCalendar currentCalendar];
    v7 = [v6 dateByAddingUnit:16 value:-7 toDate:timeCopy options:0];

    v35 = v7;
    if (v7)
    {
      v8 = CarDiagnosticsLogging();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v45 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removing any logging folders before %@", buf, 0xCu);
      }

      v9 = +[NSFileManager defaultManager];
      v10 = NSURLCreationDateKey;
      v50 = NSURLCreationDateKey;
      v11 = [NSArray arrayWithObjects:&v50 count:1];
      v43 = 0;
      v12 = [v9 contentsOfDirectoryAtURL:_carPlayLogsFolderURL includingPropertiesForKeys:v11 options:0 error:&v43];
      v13 = v43;

      if (v12)
      {
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        obj = v12;
        v14 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
        if (!v14)
        {
          goto LABEL_30;
        }

        v15 = v14;
        v32 = v12;
        v33 = _carPlayLogsFolderURL;
        v34 = timeCopy;
        v16 = *v40;
        v17 = MAAsset_ptr;
        while (1)
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v40 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v39 + 1) + 8 * i);
            v48 = v10;
            v20 = [v17[47] arrayWithObjects:&v48 count:1];
            v38 = v13;
            v21 = [v19 resourceValuesForKeys:v20 error:&v38];
            v22 = v38;

            if (!v21)
            {
              v24 = CarGeneralLogging();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v45 = v19;
                v46 = 2112;
                v47 = v22;
                _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error reading metadata for %@: %@", buf, 0x16u);
              }

LABEL_19:
              v13 = v22;
              goto LABEL_25;
            }

            v23 = [v21 objectForKey:v10];
            v24 = v23;
            if (!v23)
            {
              goto LABEL_19;
            }

            v25 = v15;
            v26 = v16;
            v27 = [v23 earlierDate:v35];
            v28 = [v27 isEqual:v24];

            if (v28)
            {
              v29 = +[NSFileManager defaultManager];
              v37 = v22;
              v30 = [v29 removeItemAtURL:v19 error:&v37];
              v13 = v37;

              if (v30)
              {
                v31 = CarDiagnosticsLogging();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v45 = v19;
                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Removed logging folder: %@", buf, 0xCu);
                }
              }

              else
              {
                v31 = CarGeneralLogging();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v45 = v19;
                  v46 = 2112;
                  v47 = v13;
                  _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Failed to remove logging folder %@: %@", buf, 0x16u);
                }
              }

              v17 = MAAsset_ptr;
              v16 = v26;
            }

            else
            {
              v13 = v22;
              v16 = v26;
            }

            v15 = v25;
            v10 = NSURLCreationDateKey;
LABEL_25:
          }

          v15 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
          if (!v15)
          {
            _carPlayLogsFolderURL = v33;
            timeCopy = v34;
            v12 = v32;
            goto LABEL_30;
          }
        }
      }

      obj = CarGeneralLogging();
      if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
      {
        sub_100088670();
      }

LABEL_30:
    }
  }
}

- (CRDiagnosticsData)init
{
  v15.receiver = self;
  v15.super_class = CRDiagnosticsData;
  v2 = [(CRDiagnosticsData *)&v15 init];
  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = +[NSDate date];
  date = v2->_date;
  v2->_date = v3;

  date = [(CRDiagnosticsData *)v2 date];
  v6 = CRStringForDate();
  timestamp = v2->_timestamp;
  v2->_timestamp = v6;

  v8 = objc_alloc_init(NSMutableArray);
  attachmentURLs = v2->_attachmentURLs;
  v2->_attachmentURLs = v8;

  date2 = [(CRDiagnosticsData *)v2 date];
  v11 = [CRDiagnosticsData makeDiagnosticsFolderForTime:date2];
  baseFolderURL = v2->_baseFolderURL;
  v2->_baseFolderURL = v11;

  baseFolderURL = [(CRDiagnosticsData *)v2 baseFolderURL];

  if (baseFolderURL)
  {
LABEL_3:
    baseFolderURL = v2;
  }

  return baseFolderURL;
}

- (void)_markPurgeable:(id)purgeable
{
  purgeableCopy = purgeable;
  v7 = 0;
  v4 = [purgeableCopy setResourceValue:&__kCFBooleanTrue forKey:NSURLIsPurgeableKey error:&v7];
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v6 = CarGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000886E4();
    }
  }
}

- (BOOL)addAttachment:(id)attachment
{
  attachmentCopy = attachment;
  lastPathComponent = [attachmentCopy lastPathComponent];
  LOBYTE(self) = [(CRDiagnosticsData *)self addAttachment:attachmentCopy asFilename:lastPathComponent];

  return self;
}

- (BOOL)addAttachment:(id)attachment asFilename:(id)filename
{
  attachmentCopy = attachment;
  filenameCopy = filename;
  v8 = filenameCopy;
  if (!attachmentCopy)
  {
    v13 = CarGeneralLogging();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000887F0();
    }

    goto LABEL_9;
  }

  if (!filenameCopy)
  {
    v13 = CarGeneralLogging();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000887B4();
    }

LABEL_9:
    v12 = 0;
    goto LABEL_13;
  }

  baseFolderURL = [(CRDiagnosticsData *)self baseFolderURL];
  v10 = [baseFolderURL URLByAppendingPathComponent:v8];

  v11 = +[NSFileManager defaultManager];
  v16 = 0;
  v12 = [v11 moveItemAtURL:attachmentCopy toURL:v10 error:&v16];
  v13 = v16;

  if (v12)
  {
    [(CRDiagnosticsData *)self _markPurgeable:v10];
    attachmentURLs = [(CRDiagnosticsData *)self attachmentURLs];
    [attachmentURLs addObject:v10];
  }

  else
  {
    attachmentURLs = CarGeneralLogging();
    if (os_log_type_enabled(attachmentURLs, OS_LOG_TYPE_ERROR))
    {
      sub_10008874C();
    }
  }

LABEL_13:
  return v12;
}

- (id)_getCreationDateForAttachmentURL:(id)l
{
  path = [l path];
  if (path)
  {
    v4 = +[NSFileManager defaultManager];
    v10 = 0;
    v5 = [v4 attributesOfItemAtPath:path error:&v10];
    v6 = v10;

    if (v6)
    {
      v7 = CarGeneralLogging();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10008882C();
      }
    }

    v8 = [v5 objectForKeyedSubscript:NSFileCreationDate];
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return v8;
}

- (BOOL)addTextAttachment:(id)attachment asFilename:(id)filename
{
  attachmentCopy = attachment;
  filenameCopy = filename;
  v8 = filenameCopy;
  if (attachmentCopy && filenameCopy)
  {
    baseFolderURL = [(CRDiagnosticsData *)self baseFolderURL];
    v10 = [baseFolderURL URLByAppendingPathComponent:v8];

    v15 = 0;
    v11 = [attachmentCopy writeToURL:v10 atomically:1 encoding:4 error:&v15];
    v12 = v15;
    if (v11)
    {
      [(CRDiagnosticsData *)self _markPurgeable:v10];
      attachmentURLs = [(CRDiagnosticsData *)self attachmentURLs];
      [attachmentURLs addObject:v10];
    }

    else
    {
      attachmentURLs = CarGeneralLogging();
      if (os_log_type_enabled(attachmentURLs, OS_LOG_TYPE_ERROR))
      {
        sub_100088894();
      }
    }
  }

  else
  {
    v12 = CarGeneralLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000888FC();
    }

    v11 = 0;
  }

  return v11;
}

@end