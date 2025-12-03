@interface DIDiskArbEmulation
- (BOOL)ejectWithBSDName:(id)name error:(id *)error;
- (BOOL)mountWithDeviceName:(id)name args:(id)args filesystem:(id)filesystem mountURL:(id)l error:(id *)error;
- (BOOL)unmountWithMountPoint:(id)point error:(id *)error;
@end

@implementation DIDiskArbEmulation

- (BOOL)ejectWithBSDName:(id)name error:(id *)error
{
  nameCopy = name;
  v6 = *__error();
  if (sub_1000E95F0())
  {
    v7 = sub_1000E957C();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    *buf = 68158210;
    v24 = 45;
    v25 = 2080;
    v26 = "[DIDiskArbEmulation ejectWithBSDName:error:]";
    v27 = 2112;
    v28 = nameCopy;
    v8 = _os_log_send_and_compose_impl();

    if (v8)
    {
      fprintf(__stderrp, "%s\n", v8);
      free(v8);
    }
  }

  else
  {
    v9 = sub_1000E957C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      v24 = 45;
      v25 = 2080;
      v26 = "[DIDiskArbEmulation ejectWithBSDName:error:]";
      v27 = 2112;
      v28 = nameCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%.*s: Ejecting %@", buf, 0x1Cu);
    }
  }

  *__error() = v6;
  nameCopy = [NSString stringWithFormat:@"/dev/%@", nameCopy];
  v11 = open([nameCopy fileSystemRepresentation], 0);
  if (v11 < 0)
  {
    v16 = *__error();
    v15 = @"Failed to eject - cannot open device";
    goto LABEL_11;
  }

  v12 = v11;
  v13 = ioctl(v11, 0x20006415uLL, 0);
  v14 = *__error();
  close(v12);
  if (v13)
  {
    v15 = @"Failed to eject";
    v16 = v14;
LABEL_11:
    v17 = [DIError failWithPOSIXCode:v16 verboseInfo:v15 error:error];
    goto LABEL_19;
  }

  v18 = *__error();
  if (sub_1000E95F0())
  {
    v19 = sub_1000E957C();
    os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    *buf = 68158210;
    v24 = 45;
    v25 = 2080;
    v26 = "[DIDiskArbEmulation ejectWithBSDName:error:]";
    v27 = 2112;
    v28 = nameCopy;
    v20 = _os_log_send_and_compose_impl();

    if (v20)
    {
      fprintf(__stderrp, "%s\n", v20);
      free(v20);
    }
  }

  else
  {
    v21 = sub_1000E957C();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      v24 = 45;
      v25 = 2080;
      v26 = "[DIDiskArbEmulation ejectWithBSDName:error:]";
      v27 = 2112;
      v28 = nameCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%.*s: %@ ejected successfully", buf, 0x1Cu);
    }
  }

  *__error() = v18;
  v17 = 1;
LABEL_19:

  return v17;
}

- (BOOL)mountWithDeviceName:(id)name args:(id)args filesystem:(id)filesystem mountURL:(id)l error:(id *)error
{
  argsCopy = args;
  filesystemCopy = filesystem;
  lCopy = l;
  name = [NSString stringWithFormat:@"/dev/%@", name];
  v15 = +[NSMutableArray array];
  if (argsCopy && [argsCopy count])
  {
    [v15 addObject:@"-o"];
    v16 = [argsCopy componentsJoinedByString:{@", "}];
    [v15 addObject:v16];
  }

  v21[0] = @"-t";
  v21[1] = filesystemCopy;
  v21[2] = name;
  path = [lCopy path];
  v21[3] = path;
  v18 = [NSArray arrayWithObjects:v21 count:4];
  [v15 addObjectsFromArray:v18];

  v19 = [DIHelpers executeWithPath:@"/sbin/mount" arguments:v15 error:error];
  return v19;
}

- (BOOL)unmountWithMountPoint:(id)point error:(id *)error
{
  pointCopy = point;
  v6 = *__error();
  if (sub_1000E95F0())
  {
    v7 = sub_1000E957C();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    *buf = 68158211;
    v15 = 50;
    v16 = 2080;
    v17 = "[DIDiskArbEmulation unmountWithMountPoint:error:]";
    v18 = 2113;
    v19 = pointCopy;
    v8 = _os_log_send_and_compose_impl();

    if (v8)
    {
      fprintf(__stderrp, "%s\n", v8);
      free(v8);
    }
  }

  else
  {
    v9 = sub_1000E957C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158211;
      v15 = 50;
      v16 = 2080;
      v17 = "[DIDiskArbEmulation unmountWithMountPoint:error:]";
      v18 = 2113;
      v19 = pointCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%.*s: Unmounting %{private}@", buf, 0x1Cu);
    }
  }

  *__error() = v6;
  v13 = pointCopy;
  v10 = [NSArray arrayWithObjects:&v13 count:1];
  v11 = [DIHelpers executeWithPath:@"/sbin/umount" arguments:v10 error:error];

  return v11;
}

@end