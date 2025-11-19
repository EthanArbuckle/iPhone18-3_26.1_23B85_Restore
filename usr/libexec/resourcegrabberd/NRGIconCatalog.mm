@interface NRGIconCatalog
- (NRGIconCatalog)init;
- (id)readIcon;
- (void)readIcons:(id)a3;
- (void)remove;
- (void)writeIcon:(id)a3;
@end

@implementation NRGIconCatalog

- (NRGIconCatalog)init
{
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 temporaryDirectory];

  v5 = +[NSUUID UUID];
  v6 = [NSString stringWithFormat:@"%@.nrg", v5];

  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s/%@", [v4 fileSystemRepresentation], v6);
  v8 = [NSURL fileURLWithPath:v7];
  v9 = [(NRGIconCatalog *)self initWithURL:v8 readonly:0];

  return v9;
}

- (void)writeIcon:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NRGPBDataHeader);
  v6 = [v4 iconData];
  v7 = [v6 checksumData];
  [(NRGPBDataHeader *)v5 setChecksumData:v7];

  if (![(PBMessageStreamWriter *)self->_pbWriter writeMessage:v5]|| ([(PBMessageStreamWriter *)self->_pbWriter writeMessage:v4]& 1) == 0)
  {
    v8 = nrg_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100010DB0(v4, self, v8);
    }
  }
}

- (id)readIcon
{
  [(PBMessageStreamReader *)self->_pbReader setClassOfNextMessage:objc_opt_class()];
  v3 = [(PBMessageStreamReader *)self->_pbReader nextMessage];
  if (v3)
  {
    [(PBMessageStreamReader *)self->_pbReader setClassOfNextMessage:objc_opt_class()];
    v4 = [(PBMessageStreamReader *)self->_pbReader nextMessage];
    v5 = [v4 iconData];
    v6 = [v3 checksumData];
    v7 = [v5 matchesChecksumData:v6];

    if (v7)
    {
      goto LABEL_7;
    }

    v8 = nrg_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100010E2C(v8);
    }
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (void)readIcons:(id)a3
{
  v8 = a3;
  v4 = [(NRGIconCatalog *)self readIcon];
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = objc_autoreleasePoolPush();
      if (v8)
      {
        v8[2]();
      }

      objc_autoreleasePoolPop(v6);
      v7 = [(NRGIconCatalog *)self readIcon];

      v5 = v7;
    }

    while (v7);
  }
}

- (void)remove
{
  [(NRGIconCatalog *)self close];
  v3 = +[NSFileManager defaultManager];
  path = self->_path;
  p_path = &self->_path;
  v8 = 0;
  [v3 removeItemAtPath:path error:&v8];
  v6 = v8;

  if (v6)
  {
    v7 = nrg_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100010E70(p_path, v6, v7);
    }
  }
}

@end