@interface SKIOMedia
- (NSString)BSDName;
- (SKIOMedia)initWithDADisk:(id)disk;
- (SKIOMedia)initWithDevName:(id)name;
- (id)copyBlockDevice;
@end

@implementation SKIOMedia

- (SKIOMedia)initWithDevName:(id)name
{
  nameCopy = name;
  lastPathComponent = [nameCopy lastPathComponent];
  v6 = IOBSDNameMatching(kIOMainPortDefault, 0, [lastPathComponent UTF8String]);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v6);

  if (MatchingService)
  {
    v11.receiver = self;
    v11.super_class = SKIOMedia;
    self = [(SKIOObject *)&v11 initWithIOObject:MatchingService];
    selfCopy = self;
  }

  else
  {
    v9 = sub_10000BFD0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = nameCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to find IO media entry for %@", buf, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (SKIOMedia)initWithDADisk:(id)disk
{
  diskCopy = disk;
  v5 = diskCopy;
  if (!diskCopy)
  {
LABEL_7:
    selfCopy = 0;
    goto LABEL_8;
  }

  v6 = DADiskCopyIOMedia(diskCopy);
  if (!v6)
  {
    v8 = sub_10000BFD0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to get IO media object for DA disk %@", buf, 0xCu);
    }

    goto LABEL_7;
  }

  v10.receiver = self;
  v10.super_class = SKIOMedia;
  self = [(SKIOObject *)&v10 initWithIOObject:v6];
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (NSString)BSDName
{
  v2 = [(SKIOObject *)self copyPropertyWithClass:objc_opt_class() key:@"BSD Name"];

  return v2;
}

- (id)copyBlockDevice
{
  v2 = [(SKIOObject *)self ioObjectWithClassName:@"IOBlockStorageDevice" iterateParents:1];
  v3 = [(SKIOObject *)[SKBlockDevice alloc] initWithSKIOObject:v2];

  return v3;
}

@end