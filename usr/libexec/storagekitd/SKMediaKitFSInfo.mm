@interface SKMediaKitFSInfo
- (NSString)fsType;
- (NSString)volumeName;
- (SKMediaKitFSInfo)initWithFSInfo:(id)info;
@end

@implementation SKMediaKitFSInfo

- (SKMediaKitFSInfo)initWithFSInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = SKMediaKitFSInfo;
  v6 = [(SKMediaKitFSInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fsInfo, info);
  }

  return v7;
}

- (NSString)volumeName
{
  fsInfo = [(SKMediaKitFSInfo *)self fsInfo];
  v3 = [fsInfo objectForKey:@"Volume name"];

  return v3;
}

- (NSString)fsType
{
  fsInfo = [(SKMediaKitFSInfo *)self fsInfo];
  v3 = [fsInfo objectForKey:@"Filesystem"];

  return v3;
}

@end