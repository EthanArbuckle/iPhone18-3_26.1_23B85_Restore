@interface DIAttachedDeviceInfo
+ (id)DI1URLWithData:(id)a3 error:(id *)a4;
+ (id)copyAllMountPoints;
+ (id)newDI1DevicesArrayWithError:(id *)a3;
+ (id)newDI2DevicesArrayWithError:(id *)a3;
+ (id)newDevicesArrayWithError:(id *)a3;
+ (id)newEntityDictWithIOMedia:(id)a3 mountPoints:(id)a4;
- (BOOL)fillDI1InfoWithDevice:(id)a3 error:(id *)a4;
- (BOOL)fillDI2InfoWithDevice:(id)a3 error:(id *)a4;
- (BOOL)setDI2PIDWithDevice:(id)a3 error:(id *)a4;
- (DIAttachedDeviceInfo)initWithBSDName:(id)a3 error:(id *)a4;
- (DIAttachedDeviceInfo)initWithDevice:(id)a3 error:(id *)a4;
- (id)copyEntitiesList;
- (id)description;
- (id)toDictionary;
@end

@implementation DIAttachedDeviceInfo

- (DIAttachedDeviceInfo)initWithDevice:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20.receiver = self;
  v20.super_class = DIAttachedDeviceInfo;
  v7 = [(DIAttachedDeviceInfo *)&v20 init];
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = [v6 copyIOMediaWithError:a4];
  ioMedia = v7->_ioMedia;
  v7->_ioMedia = v8;

  v10 = v7->_ioMedia;
  if (!v10)
  {
LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  v11 = [(DIIOObject *)v10 copyPropertyWithClass:objc_opt_class() key:@"Size"];
  mediaSize = v7->_mediaSize;
  v7->_mediaSize = v11;

  v13 = [(DIIOObject *)v7->_ioMedia copyPropertyWithClass:objc_opt_class() key:@"Preferred Block Size"];
  blockSize = v7->_blockSize;
  v7->_blockSize = v13;

  v15 = [(DIIOMedia *)v7->_ioMedia BSDName];
  BSDName = v7->_BSDName;
  v7->_BSDName = v15;

  if (!v7->_mediaSize || !v7->_blockSize || !v7->_BSDName)
  {
    v17 = [DIError nilWithEnumValue:153 verboseInfo:@"Basic information about the IOMedia device is missing" error:a4];
    goto LABEL_10;
  }

  if (![v6 diskImageDevice])
  {
    if (!IOObjectConformsTo([v6 ioObj], "IOHDIXHDDriveNub"))
    {
      v17 = [DIError nilWithEnumValue:157 description:@"Device is not a disk image" error:a4];
      goto LABEL_10;
    }

    if ([(DIAttachedDeviceInfo *)v7 fillDI1InfoWithDevice:v6 error:a4])
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  if (![(DIAttachedDeviceInfo *)v7 fillDI2InfoWithDevice:v6 error:a4])
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v7;
LABEL_10:
  v18 = v17;
LABEL_14:

  return v18;
}

- (BOOL)fillDI2InfoWithDevice:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 copyPropertyWithClass:objc_opt_class() key:@"DiskImageURL"];
  v8 = v7;
  if (v7)
  {
    v7 = [[NSURL alloc] initWithString:v7];
  }

  imageURL = self->_imageURL;
  self->_imageURL = v7;

  if (self->_imageURL)
  {
    v10 = [v6 copyPropertyWithClass:objc_opt_class() key:@"ShadowURL"];
    v11 = v10;
    if (v10)
    {
      v10 = [[NSURL alloc] initWithString:v10];
    }

    shadowURL = self->_shadowURL;
    self->_shadowURL = v10;

    v13 = [v6 copyPropertyWithClass:objc_opt_class() key:@"CacheURL"];
    v14 = v13;
    if (v13)
    {
      v13 = [[NSURL alloc] initWithString:v13];
    }

    cacheURL = self->_cacheURL;
    self->_cacheURL = v13;

    v16 = [v6 copyPropertyWithClass:objc_opt_class() key:@"InstanceID"];
    instanceId = self->_instanceId;
    self->_instanceId = v16;

    self->_frameworkNum = 2;
    if ([(DIAttachedDeviceInfo *)self setDI2PIDWithDevice:v6 error:a4])
    {
      v18 = 1;
    }

    else
    {
      v18 = [DIError failWithEnumValue:153 verboseInfo:@"Failed to get Daemon PID" error:a4];
    }
  }

  else
  {
    v18 = [DIError failWithEnumValue:153 verboseInfo:@"Invalid or missing image URL key" error:a4];
  }

  return v18;
}

- (BOOL)setDI2PIDWithDevice:(id)a3 error:(id *)a4
{
  v18 = -1;
  v5 = [a3 newIteratorWithOptions:0 error:a4];
  v6 = [[DIIOObject alloc] initWithIteratorNext:v5];
  if (v6)
  {
    v7 = v6;
    while (1)
    {
      if (IOObjectConformsTo([(DIIOObject *)v7 ioObj], "DIDeviceIOUserClient"))
      {
        v8 = [(DIIOObject *)v7 copyPropertyWithClass:objc_opt_class() key:@"IOUserClientCreator"];
        if (v8)
        {
          break;
        }
      }

      v9 = [[DIIOObject alloc] initWithIteratorNext:v5];

      v7 = v9;
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v11 = v8;
    v12 = [NSScanner scannerWithString:v8];
    v13 = +[NSCharacterSet decimalDigitCharacterSet];
    v14 = [v12 scanUpToCharactersFromSet:v13 intoString:0];

    if (v14 && [v12 scanInteger:&v18])
    {
      v15 = [NSNumber numberWithInteger:v18];
      pid = self->_pid;
      self->_pid = v15;

      v10 = 1;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
LABEL_6:
    v10 = 0;
  }

  return v10;
}

+ (id)DI1URLWithData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[NSString alloc] initWithData:v5 encoding:4];

  if (v6)
  {
    v7 = [[NSURL alloc] initWithString:v6];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 scheme];

      if (v9)
      {
        goto LABEL_8;
      }
    }

    v10 = [[NSURL alloc] initFileURLWithPath:v6];

    v8 = v10;
    if (v10)
    {
      goto LABEL_8;
    }

    v11 = @"Invalid path property (not a path or URL)";
  }

  else
  {
    v11 = @"Invalid path property (not UTF8)";
  }

  v8 = [DIError nilWithEnumValue:153 verboseInfo:v11 error:a4];
LABEL_8:

  return v8;
}

- (BOOL)fillDI1InfoWithDevice:(id)a3 error:(id *)a4
{
  v6 = [a3 copyParentWithError:a4];
  if (v6)
  {
    v7 = [v6 copyPropertyWithClass:objc_opt_class() key:@"image-path"];
    if (v7)
    {
      v8 = [DIAttachedDeviceInfo DI1URLWithData:v7 error:a4];
      imageURL = self->_imageURL;
      self->_imageURL = v8;

      if (self->_imageURL)
      {
        v10 = [v6 copyPropertyWithClass:objc_opt_class() key:@"shadow-path"];
        if (v10 && ([DIAttachedDeviceInfo DI1URLWithData:v10 error:a4], v11 = objc_claimAutoreleasedReturnValue(), shadowURL = self->_shadowURL, self->_shadowURL = v11, shadowURL, !self->_shadowURL))
        {
          v13 = 0;
        }

        else
        {
          v13 = 1;
          self->_frameworkNum = 1;
          v14 = [v6 copyPropertyWithClass:objc_opt_class() key:@"hdid-pid"];
          pid = self->_pid;
          self->_pid = v14;

          if (!self->_pid)
          {
            self->_pid = &off_10022A728;

            v13 = 1;
          }
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = [DIError failWithEnumValue:153 verboseInfo:@"Missing image path property" error:a4];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (DIAttachedDeviceInfo)initWithBSDName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[DIIOMedia alloc] initWithDevName:v6 error:a4];

  if (v7)
  {
    v8 = [(DIIOMedia *)v7 copyBlockDeviceWithError:a4];
    if (v8)
    {
      self = [(DIAttachedDeviceInfo *)self initWithDevice:v8 error:a4];
      v9 = self;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)newDI1DevicesArrayWithError:(id *)a3
{
  v4 = +[NSMutableArray array];
  v5 = [[DIIOObject alloc] initWithClassName:@"IOHDIXController" error:0];
  v6 = v5;
  if (v5)
  {
    v7 = [(DIIOObject *)v5 newIteratorWithOptions:0 error:a3];
    if (v7)
    {
      v8 = [[DIIOObject alloc] initWithIteratorNext:v7];
      if (v8)
      {
        v9 = v8;
        do
        {
          if ([v7 startedOver])
          {
            [v4 removeAllObjects];
            [v7 setStartedOver:0];
          }

          v10 = [(DIIOObject *)v9 ioObjectWithClassName:@"IOHDIXHDDriveNub" iterateParent:0 error:a3];
          if (v10)
          {
            v11 = [(DIIOObject *)[DIBlockDevice alloc] initWithDIIOObject:v10];
            v12 = [[DIAttachedDeviceInfo alloc] initWithDevice:v11 error:0];
            if (v12)
            {
              [v4 addObject:v12];
            }
          }

          v13 = [[DIIOObject alloc] initWithIteratorNext:v7];
          v9 = v13;
        }

        while (v13);
      }

      v14 = v4;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = v4;
  }

  return v14;
}

+ (id)newDI2DevicesArrayWithError:(id *)a3
{
  v4 = +[NSMutableArray array];
  v5 = [DIIOObject copyDiskImagesControllerWithError:a3];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 newIteratorWithOptions:0 error:a3];
    if (v7)
    {
      v8 = [(DIIOObject *)[DIBlockDevice alloc] initWithIteratorNext:v7];
      if (v8)
      {
        v9 = v8;
        do
        {
          if ([v7 startedOver])
          {
            [v4 removeAllObjects];
            [v7 setStartedOver:0];
          }

          if ([(DIBlockDevice *)v9 diskImageDevice])
          {
            v10 = [[DIAttachedDeviceInfo alloc] initWithDevice:v9 error:0];
            if (v10)
            {
              [v4 addObject:v10];
            }
          }

          v11 = [(DIIOObject *)[DIBlockDevice alloc] initWithIteratorNext:v7];

          v9 = v11;
        }

        while (v11);
      }

      v12 = v4;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)newDevicesArrayWithError:(id *)a3
{
  v5 = [a1 newDI2DevicesArrayWithError:?];
  if (v5)
  {
    v6 = [a1 newDI1DevicesArrayWithError:a3];
    if (v6)
    {
      v7 = [NSMutableArray arrayWithArray:v5];
      [v7 addObjectsFromArray:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = [(DIAttachedDeviceInfo *)self BSDName];
  v4 = [(DIAttachedDeviceInfo *)self imageURL];
  v5 = [NSString stringWithFormat:@"Attached disk image device info: BSD Name [%@], image URL [%@]", v3, v4];

  return v5;
}

+ (id)copyAllMountPoints
{
  v2 = +[NSMutableDictionary dictionary];
  v15 = 0;
  v3 = getmntinfo_r_np(&v15, 2);
  if (v3)
  {
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = 2168 * v3;
      do
      {
        v6 = [DIHelpers copyDevicePathWithStatfs:&v15[v4 / 0x878]];
        v7 = [NSString stringWithUTF8String:v15[v4 / 0x878].f_mntonname];
        if (v6)
        {
          if ([v6 hasPrefix:@"/dev/disk"])
          {
            v8 = v7 == 0;
          }

          else
          {
            v8 = 1;
          }

          if (!v8)
          {
            v9 = [v6 lastPathComponent];
            [v2 setObject:v7 forKeyedSubscript:v9];
          }
        }

        v4 += 2168;
      }

      while (v5 != v4);
    }

    free(v15);
  }

  else
  {
    v10 = *__error();
    if (sub_1000E95F0())
    {
      v11 = sub_1000E957C();
      os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      *buf = 68157954;
      v17 = 42;
      v18 = 2080;
      v19 = "+[DIAttachedDeviceInfo copyAllMountPoints]";
      v12 = _os_log_send_and_compose_impl();

      if (v12)
      {
        fprintf(__stderrp, "%s\n", v12);
        free(v12);
      }
    }

    else
    {
      v13 = sub_1000E957C();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        v17 = 42;
        v18 = 2080;
        v19 = "+[DIAttachedDeviceInfo copyAllMountPoints]";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%.*s: Failed getting mounts list", buf, 0x12u);
      }
    }

    *__error() = v10;
  }

  return v2;
}

+ (id)newEntityDictWithIOMedia:(id)a3 mountPoints:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 BSDName];
  v8 = v7;
  if (v7)
  {
    v14 = @"BSD Name";
    v15 = v7;
    v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v10 = [NSMutableDictionary dictionaryWithDictionary:v9];

    v11 = [v6 objectForKeyedSubscript:v8];
    [v10 setObject:v11 forKeyedSubscript:@"Mount Point"];

    v12 = [v5 copyPropertyWithClass:objc_opt_class() key:@"Content"];
    [v10 setObject:v12 forKeyedSubscript:@"Content"];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyEntitiesList
{
  v3 = +[NSMutableArray array];
  v4 = +[DIAttachedDeviceInfo copyAllMountPoints];
  v5 = [(DIAttachedDeviceInfo *)self ioMedia];
  v6 = [DIAttachedDeviceInfo newEntityDictWithIOMedia:v5 mountPoints:v4];

  if (v6)
  {
    [v3 addObject:v6];
  }

  v7 = [(DIAttachedDeviceInfo *)self ioMedia];
  v8 = [v7 newIteratorWithOptions:1 error:0];

  if (v8)
  {
    v9 = [(DIIOObject *)[DIIOMedia alloc] initWithIteratorNext:v8];
    if (v9)
    {
      v10 = v9;
      do
      {
        if ([v8 startedOver])
        {
          [v3 removeAllObjects];
          [v8 setStartedOver:0];
        }

        if (IOObjectConformsTo([(DIIOObject *)v10 ioObj], "IOMedia"))
        {
          v11 = [DIAttachedDeviceInfo newEntityDictWithIOMedia:v10 mountPoints:v4];
          if (v11)
          {
            [v3 addObject:v11];
          }
        }

        v12 = [(DIIOObject *)[DIIOMedia alloc] initWithIteratorNext:v8];

        v10 = v12;
      }

      while (v12);
    }
  }

  return v3;
}

- (id)toDictionary
{
  v22[0] = @"BSD Name";
  v21 = [(DIAttachedDeviceInfo *)self BSDName];
  v23[0] = v21;
  v22[1] = @"DiskImages Framework";
  v3 = [NSNumber numberWithInteger:[(DIAttachedDeviceInfo *)self frameworkNum]];
  v23[1] = v3;
  v22[2] = @"DiskImageURL";
  v4 = [(DIAttachedDeviceInfo *)self imageURL];
  v5 = [v4 description];
  v23[2] = v5;
  v22[3] = @"Size";
  v6 = [(DIAttachedDeviceInfo *)self mediaSize];
  v23[3] = v6;
  v22[4] = @"Preferred Block Size";
  v7 = [(DIAttachedDeviceInfo *)self blockSize];
  v23[4] = v7;
  v22[5] = @"System Entities";
  v8 = [(DIAttachedDeviceInfo *)self copyEntitiesList];
  v23[5] = v8;
  v22[6] = @"Daemon PID";
  v9 = [(DIAttachedDeviceInfo *)self pid];
  v23[6] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:7];
  v11 = [NSMutableDictionary dictionaryWithDictionary:v10];

  v12 = [(DIAttachedDeviceInfo *)self shadowURL];

  if (v12)
  {
    v13 = [(DIAttachedDeviceInfo *)self shadowURL];
    v14 = [v13 description];
    [v11 setObject:v14 forKeyedSubscript:@"ShadowURL"];
  }

  v15 = [(DIAttachedDeviceInfo *)self cacheURL];

  if (v15)
  {
    v16 = [(DIAttachedDeviceInfo *)self cacheURL];
    v17 = [v16 description];
    [v11 setObject:v17 forKeyedSubscript:@"CacheURL"];
  }

  v18 = [(DIAttachedDeviceInfo *)self instanceId];

  if (v18)
  {
    v19 = [(DIAttachedDeviceInfo *)self instanceId];
    [v11 setObject:v19 forKeyedSubscript:@"InstanceID"];
  }

  return v11;
}

@end