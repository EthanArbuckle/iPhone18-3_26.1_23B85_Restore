@interface CameraCaptureServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC14dockaccessoryd28CameraCaptureServiceDelegate)init;
@end

@implementation CameraCaptureServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1000BA0EC(v7);

  return v9 & 1;
}

- (_TtC14dockaccessoryd28CameraCaptureServiceDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CameraCaptureServiceDelegate();
  return [(CameraCaptureServiceDelegate *)&v3 init];
}

@end