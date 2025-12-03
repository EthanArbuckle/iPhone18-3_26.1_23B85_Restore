@interface CertificationServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC14dockaccessoryd28CertificationServiceDelegate)init;
@end

@implementation CertificationServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10009FF20(connectionCopy);

  return v9 & 1;
}

- (_TtC14dockaccessoryd28CertificationServiceDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CertificationServiceDelegate();
  return [(CertificationServiceDelegate *)&v3 init];
}

@end