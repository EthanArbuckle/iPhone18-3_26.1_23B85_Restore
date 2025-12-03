@interface CameraCaptureServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC14dockaccessoryd28CameraCaptureServiceDelegate)init;
@end

@implementation CameraCaptureServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1000BA0EC(connectionCopy);

  return v9 & 1;
}

- (_TtC14dockaccessoryd28CameraCaptureServiceDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CameraCaptureServiceDelegate();
  return [(CameraCaptureServiceDelegate *)&v3 init];
}

@end