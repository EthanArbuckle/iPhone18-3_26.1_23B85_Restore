@interface SKMediaKitFSInfo
- (NSString)fsType;
- (NSString)volumeName;
- (SKMediaKitFSInfo)initWithFSInfo:(id)a3;
@end

@implementation SKMediaKitFSInfo

- (SKMediaKitFSInfo)initWithFSInfo:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SKMediaKitFSInfo;
  v6 = [(SKMediaKitFSInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fsInfo, a3);
  }

  return v7;
}

- (NSString)volumeName
{
  v2 = [(SKMediaKitFSInfo *)self fsInfo];
  v3 = [v2 objectForKey:@"Volume name"];

  return v3;
}

- (NSString)fsType
{
  v2 = [(SKMediaKitFSInfo *)self fsInfo];
  v3 = [v2 objectForKey:@"Filesystem"];

  return v3;
}

@end