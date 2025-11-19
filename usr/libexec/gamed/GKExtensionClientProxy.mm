@interface GKExtensionClientProxy
- (void)dealloc;
- (void)handleNewHostClient:(id)a3;
- (void)setExtensionProxy:(id)a3 forBundleID:(id)a4;
@end

@implementation GKExtensionClientProxy

- (void)dealloc
{
  v3 = [(GKUIServiceClientProxy *)self hostClient];
  v4 = [(GKClientProxy *)self bundleIdentifier];
  [v3 setExtensionProxy:0 forBundleID:v4];

  v5.receiver = self;
  v5.super_class = GKExtensionClientProxy;
  [(GKUIServiceClientProxy *)&v5 dealloc];
}

- (void)setExtensionProxy:(id)a3 forBundleID:(id)a4
{
  v4 = [NSString stringWithFormat:@"Invalid attempt to set extension proxy(%@) on extension(%@)", a4, a3, self];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKExtensionClientProxy.m"];
  v6 = [v5 lastPathComponent];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", v4, "-[GKExtensionClientProxy setExtensionProxy:forBundleID:]", [v6 UTF8String], 30);

  [NSException raise:@"GameKit Exception" format:@"%@", v7];
}

- (void)handleNewHostClient:(id)a3
{
  v4 = a3;
  v5 = [(GKClientProxy *)self bundleIdentifier];
  [v4 setExtensionProxy:self forBundleID:v5];
}

@end