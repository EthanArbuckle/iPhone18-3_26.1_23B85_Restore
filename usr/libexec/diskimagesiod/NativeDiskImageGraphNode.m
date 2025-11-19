@interface NativeDiskImageGraphNode
+ (BOOL)validateWithDictionary:(id)a3 error:(id *)a4;
- (BOOL)deleteImage;
- (NativeDiskImageGraphNode)initWithDictionary:(id)a3 workDir:(id)a4 error:(id *)a5;
- (id)toDIShadowNode;
- (id)toDictionary;
- (void)setFilePath:(id)a3;
@end

@implementation NativeDiskImageGraphNode

- (id)toDIShadowNode
{
  v3 = [DIShadowNode alloc];
  v4 = [(NativeDiskImageGraphNode *)self filePath];
  v5 = [(DIShadowNode *)v3 initWithURL:v4 isCache:[(DiskImageGraphNode *)self isCache]];

  return v5;
}

+ (BOOL)validateWithDictionary:(id)a3 error:(id *)a4
{
  v6 = [NSMutableDictionary dictionaryWithDictionary:a3];
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___NativeDiskImageGraphNode;
  if (objc_msgSendSuper2(&v10, "validateWithDictionary:error:", v6, a4) && [v6 validateAndPopObjectForKey:@"FilePath" className:objc_opt_class() isOptional:0 error:a4])
  {
    if ([v6 count])
    {
      v7 = [NSString stringWithFormat:@"Validation failed, input contains unexpected data."];
      v8 = [DIError failWithPOSIXCode:22 verboseInfo:v7 error:a4];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NativeDiskImageGraphNode)initWithDictionary:(id)a3 workDir:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([NativeDiskImageGraphNode validateWithDictionary:v8 error:a5])
  {
    v17.receiver = self;
    v17.super_class = NativeDiskImageGraphNode;
    self = [(DiskImageGraphNode *)&v17 initWithDictionary:v8 workDir:v9 error:a5];
    if (!self)
    {
      goto LABEL_4;
    }

    v10 = [v8 objectForKey:@"FilePath"];
    v11 = [NSURL fileURLWithPath:v10 relativeToURL:v9];
    filePath = self->_filePath;
    self->_filePath = v11;

    v13 = [(NativeDiskImageGraphNode *)self filePath];
    LOBYTE(v10) = [v13 checkResourceIsReachableAndReturnError:a5];

    if ((v10 & 1) == 0)
    {
      v14 = [DIError nilWithPOSIXCode:2 verboseInfo:@"Image referenced in the pstack is unreachable." error:a5];
    }

    else
    {
LABEL_4:
      v14 = self;
      self = v14;
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)setFilePath:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_filePath, a3);
  v5 = [(DiskImageGraphNode *)self pstackDict];

  if (v5)
  {
    v6 = [(DiskImageGraphNode *)self pstackDict];
    v7 = [v8 relativeString];
    [v6 setObject:v7 forKey:@"FilePath"];
  }
}

- (BOOL)deleteImage
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(NativeDiskImageGraphNode *)self filePath];
  v16 = 0;
  v5 = [v3 removeItemAtURL:v4 error:&v16];
  v6 = v16;

  if ((v5 & 1) == 0)
  {
    v7 = *__error();
    if (sub_1000E95F0())
    {
      v8 = sub_1000E957C();
      os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      v9 = [(NativeDiskImageGraphNode *)self filePath];
      v10 = [v6 description];
      *buf = 68158466;
      v18 = 39;
      v19 = 2080;
      v20 = "[NativeDiskImageGraphNode deleteImage]";
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      v11 = _os_log_send_and_compose_impl();

      if (v11)
      {
        fprintf(__stderrp, "%s\n", v11);
        free(v11);
      }
    }

    else
    {
      v12 = sub_1000E957C();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [(NativeDiskImageGraphNode *)self filePath];
        v14 = [v6 description];
        *buf = 68158466;
        v18 = 39;
        v19 = 2080;
        v20 = "[NativeDiskImageGraphNode deleteImage]";
        v21 = 2112;
        v22 = v13;
        v23 = 2112;
        v24 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%.*s: Failed to delete %@: %@", buf, 0x26u);
      }
    }

    *__error() = v7;
  }

  return v5;
}

- (id)toDictionary
{
  v8.receiver = self;
  v8.super_class = NativeDiskImageGraphNode;
  v3 = [(DiskImageGraphNode *)&v8 toDictionary];
  v4 = [v3 mutableCopy];

  v5 = [(NativeDiskImageGraphNode *)self filePath];
  v6 = [v5 relativePath];
  [v4 setObject:v6 forKeyedSubscript:@"FilePath"];

  return v4;
}

@end