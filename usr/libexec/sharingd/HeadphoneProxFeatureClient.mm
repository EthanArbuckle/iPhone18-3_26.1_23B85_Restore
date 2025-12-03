@interface HeadphoneProxFeatureClient
- (BOOL)shouldShowWhatsNewCardWithDeviceAddress:(id)address;
- (_TtP16DaemoniOSLibrary37HPXHeadphoneProxFeatureDeviceProtocol_)delegate;
@end

@implementation HeadphoneProxFeatureClient

- (_TtP16DaemoniOSLibrary37HPXHeadphoneProxFeatureDeviceProtocol_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)shouldShowWhatsNewCardWithDeviceAddress:(id)address
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LOBYTE(v4) = HeadphoneProxFeatureClient.shouldShowWhatsNewCard(deviceAddress:)(v8);

  return v4 & 1;
}

@end