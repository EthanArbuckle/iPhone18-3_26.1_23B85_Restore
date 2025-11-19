@interface GKBulletinService
- (void)sendRefreshContentsForDataTypeToAllClientProxy:(unsigned int)a3;
@end

@implementation GKBulletinService

- (void)sendRefreshContentsForDataTypeToAllClientProxy:(unsigned int)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100060928;
  v3[3] = &unk_100361290;
  v4 = a3;
  [GKClientProxy enumerateClientsUsingBlock:v3];
}

@end