@interface GKExtensionClientProxy
- (void)dealloc;
- (void)handleNewHostClient:(id)client;
- (void)setExtensionProxy:(id)proxy forBundleID:(id)d;
@end

@implementation GKExtensionClientProxy

- (void)dealloc
{
  hostClient = [(GKUIServiceClientProxy *)self hostClient];
  bundleIdentifier = [(GKClientProxy *)self bundleIdentifier];
  [hostClient setExtensionProxy:0 forBundleID:bundleIdentifier];

  v5.receiver = self;
  v5.super_class = GKExtensionClientProxy;
  [(GKUIServiceClientProxy *)&v5 dealloc];
}

- (void)setExtensionProxy:(id)proxy forBundleID:(id)d
{
  v4 = [NSString stringWithFormat:@"Invalid attempt to set extension proxy(%@) on extension(%@)", d, proxy, self];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKExtensionClientProxy.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (NO)\n[%s (%s:%d)]", v4, "-[GKExtensionClientProxy setExtensionProxy:forBundleID:]", [lastPathComponent UTF8String], 30);

  [NSException raise:@"GameKit Exception" format:@"%@", v7];
}

- (void)handleNewHostClient:(id)client
{
  clientCopy = client;
  bundleIdentifier = [(GKClientProxy *)self bundleIdentifier];
  [clientCopy setExtensionProxy:self forBundleID:bundleIdentifier];
}

@end