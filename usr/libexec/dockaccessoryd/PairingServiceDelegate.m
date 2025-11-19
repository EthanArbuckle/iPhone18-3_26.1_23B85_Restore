@interface PairingServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC14dockaccessoryd22PairingServiceDelegate)init;
@end

@implementation PairingServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100180D4C(v7);

  return v9 & 1;
}

- (_TtC14dockaccessoryd22PairingServiceDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PairingServiceDelegate();
  return [(PairingServiceDelegate *)&v3 init];
}

@end