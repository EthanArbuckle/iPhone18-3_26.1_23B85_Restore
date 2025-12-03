@interface NRGIconCatalog
- (NRGIconCatalog)init;
- (id)readIcon;
- (void)readIcons:(id)icons;
- (void)remove;
- (void)writeIcon:(id)icon;
@end

@implementation NRGIconCatalog

- (NRGIconCatalog)init
{
  v3 = +[NSFileManager defaultManager];
  temporaryDirectory = [v3 temporaryDirectory];

  v5 = +[NSUUID UUID];
  v6 = [NSString stringWithFormat:@"%@.nrg", v5];

  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s/%@", [temporaryDirectory fileSystemRepresentation], v6);
  v8 = [NSURL fileURLWithPath:v7];
  v9 = [(NRGIconCatalog *)self initWithURL:v8 readonly:0];

  return v9;
}

- (void)writeIcon:(id)icon
{
  iconCopy = icon;
  v5 = objc_alloc_init(NRGPBDataHeader);
  iconData = [iconCopy iconData];
  checksumData = [iconData checksumData];
  [(NRGPBDataHeader *)v5 setChecksumData:checksumData];

  if (![(PBMessageStreamWriter *)self->_pbWriter writeMessage:v5]|| ([(PBMessageStreamWriter *)self->_pbWriter writeMessage:iconCopy]& 1) == 0)
  {
    v8 = nrg_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100010DB0(iconCopy, self, v8);
    }
  }
}

- (id)readIcon
{
  [(PBMessageStreamReader *)self->_pbReader setClassOfNextMessage:objc_opt_class()];
  nextMessage = [(PBMessageStreamReader *)self->_pbReader nextMessage];
  if (nextMessage)
  {
    [(PBMessageStreamReader *)self->_pbReader setClassOfNextMessage:objc_opt_class()];
    nextMessage2 = [(PBMessageStreamReader *)self->_pbReader nextMessage];
    iconData = [nextMessage2 iconData];
    checksumData = [nextMessage checksumData];
    v7 = [iconData matchesChecksumData:checksumData];

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

  nextMessage2 = 0;
LABEL_7:

  return nextMessage2;
}

- (void)readIcons:(id)icons
{
  iconsCopy = icons;
  readIcon = [(NRGIconCatalog *)self readIcon];
  if (readIcon)
  {
    v5 = readIcon;
    do
    {
      v6 = objc_autoreleasePoolPush();
      if (iconsCopy)
      {
        iconsCopy[2]();
      }

      objc_autoreleasePoolPop(v6);
      readIcon2 = [(NRGIconCatalog *)self readIcon];

      v5 = readIcon2;
    }

    while (readIcon2);
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