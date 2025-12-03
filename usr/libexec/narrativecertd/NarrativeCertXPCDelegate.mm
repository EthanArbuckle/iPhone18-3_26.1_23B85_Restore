@interface NarrativeCertXPCDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10001D624(connectionCopy);

  return v9 & 1;
}

@end