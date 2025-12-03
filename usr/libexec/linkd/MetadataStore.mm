@interface MetadataStore
- (id)actionsAndSystemProtocolDefaultsForBundleIdentifier:(id)identifier error:(id *)error;
- (id)actionsConformingToSystemProtocol:(id)protocol withParametersOfTypes:(id)types bundleIdentifier:(id)identifier error:(id *)error;
- (id)actionsConformingToSystemProtocols:(id)protocols logicalType:(unint64_t)type bundleIdentifier:(id)identifier error:(id *)error;
- (id)actionsForBundleIdentifier:(id)identifier andActionIdentifier:(id)actionIdentifier error:(id *)error;
- (id)actionsWithFullyQualifiedIdentifiers:(id)identifiers error:(id *)error;
- (id)appShortcutsProviderMangledTypeNameForBundleIdentifier:(id)identifier error:(id *)error;
- (id)bundleRegistrationsWithError:(id *)error;
- (id)bundlesWithError:(id *)error;
- (id)openActionsForTypeIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier error:(id *)error;
- (id)openCollectionActionsForEntityTypeIdentifier:(id)identifier capabilities:(int64_t)capabilities bundleIdentifier:(id)bundleIdentifier error:(id *)error;
- (id)queriesForBundleIdentifier:(id)identifier ofType:(id)type error:(id *)error;
- (id)queriesWithCapabilities:(unint64_t)capabilities inputValueType:(id)type resultValueType:(id)valueType error:(id *)error;
- (id)suggestionPhrasesForQueries:(id)queries error:(id *)error;
- (int64_t)metadataVersionForBundleIdentifier:(id)identifier error:(id *)error;
- (void)diagnoseBundleIdentifier:(NSString *)identifier completionHandler:(id)handler;
@end

@implementation MetadataStore

- (id)actionsForBundleIdentifier:(id)identifier andActionIdentifier:(id)actionIdentifier error:(id *)error
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  selfCopy = self;
  sub_1000287E8(v6, v8, v9, v11, sub_100028870);

  sub_100003D44(0, &unk_10019AB20, LNActionMetadata_ptr);
  v13.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v13.super.isa;
}

- (id)actionsConformingToSystemProtocols:(id)protocols logicalType:(unint64_t)type bundleIdentifier:(id)identifier error:(id *)error
{
  sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
  sub_100084294(&qword_10019ABB0, &qword_100199040, LNSystemProtocol_ptr);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  selfCopy = self;
  sub_1000791B0();

  sub_10002EB80(&unk_10019AB90, &unk_100150500);
  v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

- (id)actionsAndSystemProtocolDefaultsForBundleIdentifier:(id)identifier error:(id *)error
{
  if (identifier)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  selfCopy = self;
  sub_100081300(v5, v7, sub_1000A70F4);

  sub_100003D44(0, &unk_10019ABA0, LNBundleActionsMetadata_ptr);
  v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

- (id)actionsConformingToSystemProtocol:(id)protocol withParametersOfTypes:(id)types bundleIdentifier:(id)identifier error:(id *)error
{
  sub_100003D44(0, &unk_10019BBF0, LNValueType_ptr);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  protocolCopy = protocol;
  selfCopy = self;
  sub_1000805FC();

  sub_10002EB80(&unk_10019AB90, &unk_100150500);
  v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v11.super.isa;
}

- (id)actionsWithFullyQualifiedIdentifiers:(id)identifiers error:(id *)error
{
  sub_100003D44(0, &unk_10019BBE0, LNFullyQualifiedActionIdentifier_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100081698(v5, sub_1000A4FB4);

  sub_10002EB80(&unk_10019AB90, &unk_100150500);
  v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (id)bundlesWithError:(id *)error
{
  selfCopy = self;
  sub_100080928();

  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (id)bundleRegistrationsWithError:(id *)error
{
  selfCopy = self;
  sub_100080A1C();

  sub_100003D44(0, &unk_10019AB80, LNRegisteredBundleMetadata_ptr);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (id)queriesForBundleIdentifier:(id)identifier ofType:(id)type error:(id *)error
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (type)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  selfCopy = self;
  sub_100080B84();

  sub_100003D44(0, &qword_10019B2E0, LNQueryMetadata_ptr);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (id)queriesWithCapabilities:(unint64_t)capabilities inputValueType:(id)type resultValueType:(id)valueType error:(id *)error
{
  typeCopy = type;
  valueTypeCopy = valueType;
  selfCopy = self;
  sub_100080E70(capabilities, type, valueType);

  sub_10002EB80(&unk_10019AB70, &unk_10014F8C0);
  v13.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v13.super.isa;
}

- (int64_t)metadataVersionForBundleIdentifier:(id)identifier error:(id *)error
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  selfCopy = self;
  v10 = sub_100081464(v6, v8, error);

  return v10;
}

- (id)appShortcutsProviderMangledTypeNameForBundleIdentifier:(id)identifier error:(id *)error
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  selfCopy = self;
  sub_1000814F8(v5, v7);

  v9 = String._bridgeToObjectiveC()();

  return v9;
}

- (id)suggestionPhrasesForQueries:(id)queries error:(id *)error
{
  sub_100003D44(0, &unk_10019AB30, LNAssistantSuggestionPhraseQuery_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100081698(v5, sub_1000AB064);

  sub_10002EB80(&unk_10019B2A0, &unk_1001504E0);
  sub_100084294(&unk_10019AB40, &unk_10019AB30, LNAssistantSuggestionPhraseQuery_ptr);
  v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (void)diagnoseBundleIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = identifier;
  v7[3] = v6;
  v7[4] = self;
  identifierCopy = identifier;
  selfCopy = self;

  sub_100006240(&unk_10014F898, v7);
}

- (id)openActionsForTypeIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier error:(id *)error
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100081C24();

  sub_100003D44(0, &unk_10019AB20, LNActionMetadata_ptr);
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (id)openCollectionActionsForEntityTypeIdentifier:(id)identifier capabilities:(int64_t)capabilities bundleIdentifier:(id)bundleIdentifier error:(id *)error
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100081DC0();

  sub_100003D44(0, &unk_10019AB20, LNActionMetadata_ptr);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

@end