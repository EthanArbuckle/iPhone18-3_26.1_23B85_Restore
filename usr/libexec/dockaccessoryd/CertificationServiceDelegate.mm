@interface CertificationServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC14dockaccessoryd28CertificationServiceDelegate)init;
@end

@implementation CertificationServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10009FF20(v7);

  return v9 & 1;
}

- (_TtC14dockaccessoryd28CertificationServiceDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CertificationServiceDelegate();
  return [(CertificationServiceDelegate *)&v3 init];
}

@end