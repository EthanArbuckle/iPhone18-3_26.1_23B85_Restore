@interface _LNMetadataProviderDirect
- (id)actionsAndSystemProtocolDefaultsForBundleIdentifier:(id)identifier error:(id *)error;
- (id)actionsConformingToSystemProtocol:(id)protocol withParametersOfTypes:(id)types bundleIdentifier:(id)identifier error:(id *)error;
- (id)actionsConformingToSystemProtocols:(id)protocols logicalType:(unint64_t)type bundleIdentifier:(id)identifier error:(id *)error;
- (id)actionsWithFullyQualifiedIdentifiers:(id)identifiers error:(id *)error;
- (id)appShortcutsProviderMangledTypeNameForBundleIdentifier:(id)identifier error:(id *)error;
- (id)autoShortcutsForLocaleIdentifier:(id)identifier error:(id *)error;
- (id)bundleRegistrationsWithError:(id *)error;
- (id)bundlesWithError:(id *)error;
- (id)openCollectionActionsForEntityTypeIdentifier:(id)identifier capabilities:(int64_t)capabilities bundleIdentifier:(id)bundleIdentifier error:(id *)error;
- (id)propertiesForIdentifiers:(id)identifiers error:(id *)error;
- (id)queriesForBundleIdentifier:(id)identifier ofType:(id)type error:(id *)error;
- (id)queriesWithCapabilities:(unint64_t)capabilities inputValueType:(id)type resultValueType:(id)valueType error:(id *)error;
- (id)suggestionPhrasesForQueries:(id)queries error:(id *)error;
- (int64_t)metadataVersionForBundleIdentifier:(id)identifier error:(id *)error;
- (void)autoShortcutsForBundleIdentifier:(id)identifier localeIdentifier:(id)localeIdentifier completion:(id)completion;
- (void)autoShortcutsForLocaleIdentifier:(id)identifier completion:(id)completion;
- (void)diagnoseBundleIdentifier:(NSString *)identifier completionHandler:(id)handler;
@end

@implementation _LNMetadataProviderDirect

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
  _LNMetadataProviderDirect.actionsConforming(to:logicalType:bundleIdentifier:)();

  sub_10002EB80(&unk_10019AB90, &unk_100150500);
  v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

- (id)actionsAndSystemProtocolDefaultsForBundleIdentifier:(id)identifier error:(id *)error
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  selfCopy = self;
  _LNMetadataProviderDirect.actionsAndSystemProtocolDefaults(forBundleIdentifier:)();

  sub_100003D44(0, &unk_10019ABA0, LNBundleActionsMetadata_ptr);
  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
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
  _LNMetadataProviderDirect.actionsConforming(to:withParametersOfTypes:bundleIdentifier:)();

  sub_10002EB80(&unk_10019AB90, &unk_100150500);
  v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v11.super.isa;
}

- (id)actionsWithFullyQualifiedIdentifiers:(id)identifiers error:(id *)error
{
  sub_100003D44(0, &unk_10019BBE0, LNFullyQualifiedActionIdentifier_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  _LNMetadataProviderDirect.actions(withFullyQualifiedIdentifiers:)();

  sub_10002EB80(&unk_10019AB90, &unk_100150500);
  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (id)openCollectionActionsForEntityTypeIdentifier:(id)identifier capabilities:(int64_t)capabilities bundleIdentifier:(id)bundleIdentifier error:(id *)error
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  _LNMetadataProviderDirect.openCollectionActions(forEntityTypeIdentifier:capabilities:bundleIdentifier:)();

  sub_100003D44(0, &unk_10019AB20, LNActionMetadata_ptr);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (id)bundlesWithError:(id *)error
{
  selfCopy = self;
  _LNMetadataProviderDirect.bundles()();

  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (id)bundleRegistrationsWithError:(id *)error
{
  selfCopy = self;
  _LNMetadataProviderDirect.bundleRegistrations()();

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
  _LNMetadataProviderDirect.queries(forBundleIdentifier:ofType:)();

  sub_100003D44(0, &qword_10019B2E0, LNQueryMetadata_ptr);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (id)queriesWithCapabilities:(unint64_t)capabilities inputValueType:(id)type resultValueType:(id)valueType error:(id *)error
{
  typeCopy = type;
  valueTypeCopy = valueType;
  selfCopy = self;
  _LNMetadataProviderDirect.queries(with:inputValueType:resultValueType:)(capabilities, type, valueType);

  sub_10002EB80(&unk_10019AB70, &unk_10014F8C0);
  v13.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v13.super.isa;
}

- (int64_t)metadataVersionForBundleIdentifier:(id)identifier error:(id *)error
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  selfCopy = self;
  v10 = _LNMetadataProviderDirect.metadataVersion(forBundleIdentifier:error:)(v6, v8, error);

  return v10;
}

- (id)appShortcutsProviderMangledTypeNameForBundleIdentifier:(id)identifier error:(id *)error
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  _LNMetadataProviderDirect.appShortcutsProviderMangledTypeName(forBundleIdentifier:)(v10);

  if (v11)
  {
    if (error)
    {
      v12 = _convertErrorToNSError(_:)();

      v13 = v12;
      v14 = 0;
      *error = v12;
    }

    else
    {

      v14 = 0;
    }
  }

  else
  {
    v14 = String._bridgeToObjectiveC()();
  }

  return v14;
}

- (id)suggestionPhrasesForQueries:(id)queries error:(id *)error
{
  sub_100003D44(0, &unk_10019AB30, LNAssistantSuggestionPhraseQuery_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  _LNMetadataProviderDirect.suggestionPhrases(forQueries:)();

  sub_10002EB80(&unk_10019B2A0, &unk_1001504E0);
  sub_100084294(&unk_10019AB40, &unk_10019AB30, LNAssistantSuggestionPhraseQuery_ptr);
  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)autoShortcutsForBundleIdentifier:(id)identifier localeIdentifier:(id)localeIdentifier completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  _Block_copy(v6);
  selfCopy = self;
  sub_1000B1500(v7, v9, v10, v12, selfCopy, v6);
  _Block_release(v6);
}

- (void)autoShortcutsForLocaleIdentifier:(id)identifier completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_1000B17BC(v6, v8, selfCopy, v5);
  _Block_release(v5);
}

- (id)autoShortcutsForLocaleIdentifier:(id)identifier error:(id *)error
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  _LNMetadataProviderDirect.autoShortcuts(forLocaleIdentifier:)();

  sub_10002EB80(&unk_10019BBB0, &unk_10014E220);
  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (id)propertiesForIdentifiers:(id)identifiers error:(id *)error
{
  type metadata accessor for UUID();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  _LNMetadataProviderDirect.properties(forIdentifiers:)();

  sub_100003D44(0, &qword_10019BBA0, LNProperty_ptr);
  sub_1000B5D94(&qword_100199BD0, &type metadata accessor for UUID);
  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
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

  sub_100006240(&unk_1001504D0, v7);
}

@end