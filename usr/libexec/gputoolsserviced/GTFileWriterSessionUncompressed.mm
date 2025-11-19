@interface GTFileWriterSessionUncompressed
+ (id)sessionWithFileEntries:(id)a3 relativeToURL:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)_closeCurrentFileDescriptor:(id *)a3;
- (BOOL)_writeUncompressedFileData:(const char *)a3 length:(unint64_t)a4 error:(id *)a5;
- (BOOL)finish:(id *)a3;
- (GTFileWriterSessionUncompressed)initWithFileEntries:(id)a3 relativeToURL:(id)a4 options:(id)a5 error:(id *)a6;
- (int)_getCurrentFileDescriptor:(id *)a3;
- (int)_openNextFile:(id *)a3;
- (void)writeFileData:(id)a3 completionHandler:(id)a4;
@end

@implementation GTFileWriterSessionUncompressed

+ (id)sessionWithFileEntries:(id)a3 relativeToURL:(id)a4 options:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[a1 alloc] initWithFileEntries:v12 relativeToURL:v11 options:v10 error:a6];

  return v13;
}

- (GTFileWriterSessionUncompressed)initWithFileEntries:(id)a3 relativeToURL:(id)a4 options:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v75.receiver = self;
  v75.super_class = GTFileWriterSessionUncompressed;
  v14 = [(GTFileWriterSessionUncompressed *)&v75 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_53;
  }

  objc_storeStrong(&v14->_fileEntries, a3);
  objc_storeStrong(&v15->_baseURL, a4);
  v15->_currentFileIndex = 0;
  v15->_currentFileBytesWritten = 0;
  v15->_fd = -1;
  v16 = v11;
  v71 = v12;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v16;
  v74 = [obj countByEnumeratingWithState:&v77 objects:v81 count:16];
  if (!v74)
  {
    v17 = 0;
    v35 = 1;
    goto LABEL_50;
  }

  v67 = a6;
  v68 = v15;
  v69 = v13;
  v70 = v12;
  v17 = 0;
  v73 = *v78;
  v18 = v71;
  do
  {
    v19 = 0;
    v20 = v17;
    do
    {
      if (*v78 != v73)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v77 + 1) + 8 * v19);
      v22 = objc_autoreleasePoolPush();
      v76 = v20;
      v23 = v21;
      v24 = v18;
      v25 = [NSURL alloc];
      v26 = [v23 path];
      v27 = [v25 initFileURLWithPath:v26 isDirectory:0 relativeToURL:v24];

      v28 = +[NSFileManager defaultManager];
      v29 = [v27 URLByDeletingLastPathComponent];
      LODWORD(v24) = [v28 createDirectoryAtURL:v29 withIntermediateDirectories:1 attributes:0 error:&v76];

      if (!v24)
      {
LABEL_20:
        v35 = 0;
        goto LABEL_44;
      }

      v30 = [v23 destination];

      if (v30)
      {
        v31 = +[NSFileManager defaultManager];
        v32 = [v27 path];
        v33 = [v23 destination];
        v34 = [v31 createSymbolicLinkAtPath:v32 withDestinationPath:v33 error:&v76];

        if ((v34 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v36 = objc_alloc_init(NSData);
        v37 = [v36 writeToURL:v27 options:0 error:&v76];

        if (!v37)
        {
          goto LABEL_20;
        }

        v38 = open([v27 fileSystemRepresentation], 1, 0);
        if (v38 < 0)
        {
          v43 = *__error();
          if (GTCoreLogUseOsLog())
          {
            v44 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = v27;
              v84 = 1024;
              v85 = v43;
              _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Failed to open file %@ for writing (%d)", buf, 0x12u);
            }
          }

          else
          {
            v48 = __stderrp;
            v44 = [NSString stringWithFormat:@"Failed to open file %@ for writing (%d)", v27, v43];
            fprintf(v48, "%s\n", [v44 UTF8String]);
          }

          v82 = NSLocalizedDescriptionKey;
          v49 = [NSString stringWithFormat:@"Failed to open file %@ for writing", v27];
          *buf = v49;
          v50 = [NSDictionary dictionaryWithObjects:buf forKeys:&v82 count:1];
          v51 = NSPOSIXErrorDomain;
          v52 = v43;
          goto LABEL_41;
        }

        v39 = v38;
        if (ftruncate(v38, [v23 fileSize]) < 0)
        {
          v45 = *__error();
          v66 = v11;
          if (GTCoreLogUseOsLog())
          {
            v46 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = v27;
              v84 = 1024;
              v85 = v45;
              _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Failed to resize file %@ (%d)", buf, 0x12u);
            }

            v47 = &SecTaskCopySigningIdentifier_ptr;
          }

          else
          {
            v56 = __stderrp;
            v47 = &SecTaskCopySigningIdentifier_ptr;
            v46 = [NSString stringWithFormat:@"Failed to resize file %@ (%d)", v27, v45];
            fprintf(v56, "%s\n", [v46 UTF8String]);
          }

          v57 = v45;

          v82 = NSLocalizedDescriptionKey;
          v58 = [v47[248] stringWithFormat:@"Failed to resize file %@", v27];
          *buf = v58;
          v59 = [NSDictionary dictionaryWithObjects:buf forKeys:&v82 count:1];
          v76 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v57 userInfo:v59];

          close(v39);
          v35 = 0;
          v11 = v66;
          goto LABEL_43;
        }

        if (fsync(v39) < 0)
        {
          v53 = *__error();
          if (GTCoreLogUseOsLog())
          {
            v54 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = v27;
              v84 = 1024;
              v85 = v53;
              _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Failed to flush file %@ (%d)", buf, 0x12u);
            }

            v55 = &SecTaskCopySigningIdentifier_ptr;
          }

          else
          {
            v60 = __stderrp;
            v55 = &SecTaskCopySigningIdentifier_ptr;
            v54 = [NSString stringWithFormat:@"Failed to flush file %@ (%d)", v27, v53];
            fprintf(v60, "%s\n", [v54 UTF8String]);
          }

          v61 = v53;

          v82 = NSLocalizedDescriptionKey;
          [v55[248] stringWithFormat:@"Failed to flush file %@", v27];
          v49 = LABEL_40:;
          *buf = v49;
          v50 = [NSDictionary dictionaryWithObjects:buf forKeys:&v82 count:1];
          v51 = NSPOSIXErrorDomain;
          v52 = v61;
LABEL_41:
          v76 = [NSError errorWithDomain:v51 code:v52 userInfo:v50];

LABEL_42:
          v35 = 0;
          goto LABEL_43;
        }

        if (close(v39) < 0)
        {
          v40 = *__error();
          if (GTCoreLogUseOsLog())
          {
            v41 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = v27;
              v84 = 1024;
              v85 = v40;
              _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Failed to close file %@ (%d)", buf, 0x12u);
            }

            v42 = &SecTaskCopySigningIdentifier_ptr;
          }

          else
          {
            v62 = __stderrp;
            v42 = &SecTaskCopySigningIdentifier_ptr;
            v41 = [NSString stringWithFormat:@"Failed to close file %@ (%d)", v27, v40];
            fprintf(v62, "%s\n", [v41 UTF8String]);
          }

          v61 = v40;

          v82 = NSLocalizedDescriptionKey;
          [v42[248] stringWithFormat:@"Failed to close file %@", v27];
          goto LABEL_40;
        }
      }

      v35 = 1;
LABEL_43:
      v18 = v71;
LABEL_44:

      v17 = v76;
      objc_autoreleasePoolPop(v22);
      if (!v35)
      {
        goto LABEL_48;
      }

      v19 = v19 + 1;
      v20 = v17;
    }

    while (v74 != v19);
    v74 = [obj countByEnumeratingWithState:&v77 objects:v81 count:16];
  }

  while (v74);
  v35 = 1;
LABEL_48:
  v13 = v69;
  v12 = v70;
  a6 = v67;
  v15 = v68;
LABEL_50:

  if (a6)
  {
    v63 = v17;
    *a6 = v17;
  }

  if (v35)
  {
LABEL_53:
    v64 = v15;
  }

  else
  {
    v64 = 0;
  }

  return v64;
}

- (int)_openNextFile:(id *)a3
{
  currentFileIndex = self->_currentFileIndex;
  if (currentFileIndex >= [(NSArray *)self->_fileEntries count])
  {
    v6 = 0;
LABEL_9:
    if (GTCoreLogUseOsLog())
    {
      v10 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100013208();
      }

      if (a3)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v13 = __stderrp;
      v14 = [NSString stringWithFormat:@"No more files to write to"];
      fprintf(v13, "%s\n", [v14 UTF8String]);

      if (a3)
      {
LABEL_13:
        v27 = NSLocalizedDescriptionKey;
        v28 = @"No more files to write to";
        v11 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        *a3 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:v11];
LABEL_14:
        v12 = -1;
        goto LABEL_15;
      }
    }

    v12 = -1;
    goto LABEL_18;
  }

  v6 = 0;
  while (1)
  {
    v7 = v6;
    v6 = [(NSArray *)self->_fileEntries objectAtIndexedSubscript:self->_currentFileIndex];

    v8 = [v6 destination];
    if (!v8)
    {
      break;
    }

LABEL_6:
    v9 = self->_currentFileIndex + 1;
    self->_currentFileIndex = v9;
    if (v9 >= [(NSArray *)self->_fileEntries count])
    {
      goto LABEL_9;
    }
  }

  if (![v6 fileSize])
  {
    goto LABEL_6;
  }

  v16 = [NSURL alloc];
  v17 = [v6 path];
  v11 = [v16 initFileURLWithPath:v17 isDirectory:0 relativeToURL:self->_baseURL];

  v18 = open([v11 fileSystemRepresentation], 1, 0);
  if (v18 < 0)
  {
    if (GTCoreLogUseOsLog())
    {
      v19 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100013198();
      }
    }

    else
    {
      v20 = __stderrp;
      v21 = [NSString stringWithFormat:@"Failed to open file %@ for writing", v11];
      fprintf(v20, "%s\n", [v21 UTF8String]);
    }

    if (a3)
    {
      v22 = *__error();
      v23 = [NSString stringWithFormat:@"Failed to open file %@ for writing", v11, NSLocalizedDescriptionKey];
      v26 = v23;
      v24 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      *a3 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v22 userInfo:v24];
    }

    goto LABEL_14;
  }

  v12 = v18;
LABEL_15:

LABEL_18:
  return v12;
}

- (void)writeFileData:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = a3;
  v10 = [v9 bytes];
  v11 = [v9 length];

  v13 = 0;
  [(GTFileWriterSessionUncompressed *)self _writeUncompressedFileData:v10 length:v11 error:&v13];
  v12 = v13;
  v8[2](v8, v12);
}

- (BOOL)_writeUncompressedFileData:(const char *)a3 length:(unint64_t)a4 error:(id *)a5
{
  if (a4)
  {
    v9 = 0;
    while (1)
    {
      v10 = [(GTFileWriterSessionUncompressed *)self _getCurrentFileDescriptor:a5];
      if ((v10 & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      v11 = v10;
      v12 = a4 - v9;
      v13 = [(NSArray *)self->_fileEntries objectAtIndexedSubscript:self->_currentFileIndex];
      v14 = [v13 fileSize] - self->_currentFileBytesWritten;

      v15 = 0;
      if (a4 - v9 >= v14)
      {
        v12 = v14;
      }

      do
      {
        v16 = write(v11, &a3[v9 + v15], v12 - v15);
        if (v16 < 0)
        {
          goto LABEL_14;
        }

        v15 += v16;
      }

      while (v15 != v12);
      if ((v12 & 0x8000000000000000) != 0)
      {
        break;
      }

      currentFileIndex = self->_currentFileIndex;
      v18 = self->_currentFileBytesWritten + v12;
      self->_currentFileBytesWritten = v18;
      v19 = [(NSArray *)self->_fileEntries objectAtIndexedSubscript:currentFileIndex];
      v20 = [v19 fileSize];

      if (v18 == v20)
      {
        v21 = [(GTFileWriterSessionUncompressed *)self _closeCurrentFileDescriptor:a5];
        if (!v21)
        {
          return v21;
        }

        ++self->_currentFileIndex;
        self->_currentFileBytesWritten = 0;
      }

      v9 += v12;
      if (v9 >= a4)
      {
        goto LABEL_13;
      }
    }

LABEL_14:
    if (GTCoreLogUseOsLog())
    {
      v22 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10001323C();
      }

      if (!a5)
      {
LABEL_21:
        LOBYTE(v21) = 0;
        return v21;
      }
    }

    else
    {
      v23 = __stderrp;
      v24 = [NSString stringWithFormat:@"Failed to write to fd (%d)", v11];
      fprintf(v23, "%s\n", [v24 UTF8String]);

      if (!a5)
      {
        goto LABEL_21;
      }
    }

    v25 = *__error();
    v26 = [NSString stringWithFormat:@"Failed to write to fd (%d)", v11, NSLocalizedDescriptionKey];
    v30 = v26;
    v27 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    *a5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v25 userInfo:v27];

    goto LABEL_21;
  }

LABEL_13:
  LOBYTE(v21) = 1;
  return v21;
}

- (int)_getCurrentFileDescriptor:(id *)a3
{
  result = self->_fd;
  if (result < 0)
  {
    result = [(GTFileWriterSessionUncompressed *)self _openNextFile:a3];
    self->_fd = result;
  }

  return result;
}

- (BOOL)finish:(id *)a3
{
  baseURL = self->_baseURL;
  self->_baseURL = 0;

  fileEntries = self->_fileEntries;
  self->_fileEntries = 0;

  self->_currentFileIndex = 0;
  self->_currentFileBytesWritten = 0;

  return [(GTFileWriterSessionUncompressed *)self _closeCurrentFileDescriptor:a3];
}

- (BOOL)_closeCurrentFileDescriptor:(id *)a3
{
  fd = self->_fd;
  if ((fd & 0x80000000) != 0)
  {
    return 1;
  }

  self->_fd = -1;
  if (fsync(fd) < 0)
  {
    if (GTCoreLogUseOsLog())
    {
      v7 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100013330();
      }

      if (!a3)
      {
        return 0;
      }
    }

    else
    {
      v10 = __stderrp;
      v11 = [NSString stringWithFormat:@"Failed to flush fd (%d)", fd];
      fprintf(v10, "%s\n", [v11 UTF8String]);

      if (!a3)
      {
        return 0;
      }
    }

    v12 = NSPOSIXErrorDomain;
    v13 = *__error();
    v22 = NSLocalizedDescriptionKey;
    v14 = [NSString stringWithFormat:@"Failed to flush fd (%d)", fd];
    v23 = v14;
    v15 = &v23;
    v16 = &v22;
LABEL_19:
    v19 = [NSDictionary dictionaryWithObjects:v15 forKeys:v16 count:1];
    *a3 = [NSError errorWithDomain:v12 code:v13 userInfo:v19];

    return 0;
  }

  v5 = close(fd);
  if ((v5 & 0x80000000) == 0)
  {
    return 1;
  }

  v8 = v5;
  if (GTCoreLogUseOsLog())
  {
    v9 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000132B0();
    }

    if (!a3)
    {
      return 0;
    }

    goto LABEL_18;
  }

  v17 = __stderrp;
  v18 = [NSString stringWithFormat:@"Failed to close fd (%d), status %d", fd, v8];
  fprintf(v17, "%s\n", [v18 UTF8String]);

  if (a3)
  {
LABEL_18:
    v12 = NSPOSIXErrorDomain;
    v13 = *__error();
    v20 = NSLocalizedDescriptionKey;
    v14 = [NSString stringWithFormat:@"Failed to close fd (%d), status %d", fd, v8];
    v21 = v14;
    v15 = &v21;
    v16 = &v20;
    goto LABEL_19;
  }

  return 0;
}

@end