@interface SDAirDropHandlerIPA
- (BOOL)canHandleTransfer;
- (NSString)singleItemActionTitle;
- (NSString)suitableContentsDescription;
- (_TtC16DaemoniOSLibrary19SDAirDropHandlerIPA)initWithTransfer:(id)transfer bundleIdentifier:(id)identifier;
- (int64_t)transferTypes;
- (void)updatePossibleActions;
@end

@implementation SDAirDropHandlerIPA

- (BOOL)canHandleTransfer
{
  selfCopy = self;
  sub_100356650();
  v4 = v3;

  return v4 & 1;
}

- (int64_t)transferTypes
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SDAirDropHandler *)&v3 transferTypes]| 0x8000;
}

- (NSString)suitableContentsDescription
{
  selfCopy = self;
  sub_100356E58();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (NSString)singleItemActionTitle
{
  v2 = String._bridgeToObjectiveC()();
  v3 = SFLocalizedStringForKey();

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = String._bridgeToObjectiveC()();
  }

  return v3;
}

- (void)updatePossibleActions
{
  selfCopy = self;
  sub_100357344();
}

- (_TtC16DaemoniOSLibrary19SDAirDropHandlerIPA)initWithTransfer:(id)transfer bundleIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(SDAirDropHandler *)&v7 initWithTransfer:transfer bundleIdentifier:identifier];
}

@end