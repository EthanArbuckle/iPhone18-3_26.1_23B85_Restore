@interface DirectActivityRequestXPCServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation DirectActivityRequestXPCServer

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10000BD74(v8, v7);

  return 1;
}

@end