@interface NarrativeCertXPCDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC14narrativecertd24NarrativeCertXPCDelegate)init;
@end

@implementation NarrativeCertXPCDelegate

- (_TtC14narrativecertd24NarrativeCertXPCDelegate)init
{
  swift_weakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for NarrativeCertXPCDelegate();
  return [(NarrativeCertXPCDelegate *)&v4 init];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10001D624(v7);

  return v9 & 1;
}

@end