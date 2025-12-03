@interface GKBulletinService
- (void)sendRefreshContentsForDataTypeToAllClientProxy:(unsigned int)proxy;
@end

@implementation GKBulletinService

- (void)sendRefreshContentsForDataTypeToAllClientProxy:(unsigned int)proxy
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100060928;
  v3[3] = &unk_100361290;
  proxyCopy = proxy;
  [GKClientProxy enumerateClientsUsingBlock:v3];
}

@end