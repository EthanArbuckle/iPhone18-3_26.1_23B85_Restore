@interface _LNMetadataProviderDirect
- (id)actionsAndSystemProtocolDefaultsForBundleIdentifier:(id)a3 error:(id *)a4;
- (id)actionsConformingToSystemProtocol:(id)a3 withParametersOfTypes:(id)a4 bundleIdentifier:(id)a5 error:(id *)a6;
- (id)actionsConformingToSystemProtocols:(id)a3 logicalType:(unint64_t)a4 bundleIdentifier:(id)a5 error:(id *)a6;
- (id)actionsWithFullyQualifiedIdentifiers:(id)a3 error:(id *)a4;
- (id)appShortcutsProviderMangledTypeNameForBundleIdentifier:(id)a3 error:(id *)a4;
- (id)autoShortcutsForLocaleIdentifier:(id)a3 error:(id *)a4;
- (id)bundleRegistrationsWithError:(id *)a3;
- (id)bundlesWithError:(id *)a3;
- (id)openCollectionActionsForEntityTypeIdentifier:(id)a3 capabilities:(int64_t)a4 bundleIdentifier:(id)a5 error:(id *)a6;
- (id)propertiesForIdentifiers:(id)a3 error:(id *)a4;
- (id)queriesForBundleIdentifier:(id)a3 ofType:(id)a4 error:(id *)a5;
- (id)queriesWithCapabilities:(unint64_t)a3 inputValueType:(id)a4 resultValueType:(id)a5 error:(id *)a6;
- (id)suggestionPhrasesForQueries:(id)a3 error:(id *)a4;
- (int64_t)metadataVersionForBundleIdentifier:(id)a3 error:(id *)a4;
- (void)autoShortcutsForBundleIdentifier:(id)a3 localeIdentifier:(id)a4 completion:(id)a5;
- (void)autoShortcutsForLocaleIdentifier:(id)a3 completion:(id)a4;
- (void)diagnoseBundleIdentifier:(NSString *)a3 completionHandler:(id)a4;
@end

@implementation _LNMetadataProviderDirect

- (id)actionsConformingToSystemProtocols:(id)a3 logicalType:(unint64_t)a4 bundleIdentifier:(id)a5 error:(id *)a6
{
  sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
  sub_100084294(&qword_10019ABB0, &qword_100199040, LNSystemProtocol_ptr);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  if (a5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = self;
  _LNMetadataProviderDirect.actionsConforming(to:logicalType:bundleIdentifier:)();

  sub_10002EB80(&unk_10019AB90, &unk_100150500);
  v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

- (id)actionsAndSystemProtocolDefaultsForBundleIdentifier:(id)a3 error:(id *)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = self;
  _LNMetadataProviderDirect.actionsAndSystemProtocolDefaults(forBundleIdentifier:)();

  sub_100003D44(0, &unk_10019ABA0, LNBundleActionsMetadata_ptr);
  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (id)actionsConformingToSystemProtocol:(id)a3 withParametersOfTypes:(id)a4 bundleIdentifier:(id)a5 error:(id *)a6
{
  sub_100003D44(0, &unk_10019BBF0, LNValueType_ptr);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a3;
  v10 = self;
  _LNMetadataProviderDirect.actionsConforming(to:withParametersOfTypes:bundleIdentifier:)();

  sub_10002EB80(&unk_10019AB90, &unk_100150500);
  v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v11.super.isa;
}

- (id)actionsWithFullyQualifiedIdentifiers:(id)a3 error:(id *)a4
{
  sub_100003D44(0, &unk_10019BBE0, LNFullyQualifiedActionIdentifier_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  _LNMetadataProviderDirect.actions(withFullyQualifiedIdentifiers:)();

  sub_10002EB80(&unk_10019AB90, &unk_100150500);
  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (id)openCollectionActionsForEntityTypeIdentifier:(id)a3 capabilities:(int64_t)a4 bundleIdentifier:(id)a5 error:(id *)a6
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = self;
  _LNMetadataProviderDirect.openCollectionActions(forEntityTypeIdentifier:capabilities:bundleIdentifier:)();

  sub_100003D44(0, &unk_10019AB20, LNActionMetadata_ptr);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (id)bundlesWithError:(id *)a3
{
  v3 = self;
  _LNMetadataProviderDirect.bundles()();

  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (id)bundleRegistrationsWithError:(id *)a3
{
  v3 = self;
  _LNMetadataProviderDirect.bundleRegistrations()();

  sub_100003D44(0, &unk_10019AB80, LNRegisteredBundleMetadata_ptr);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (id)queriesForBundleIdentifier:(id)a3 ofType:(id)a4 error:(id *)a5
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = self;
  _LNMetadataProviderDirect.queries(forBundleIdentifier:ofType:)();

  sub_100003D44(0, &qword_10019B2E0, LNQueryMetadata_ptr);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (id)queriesWithCapabilities:(unint64_t)a3 inputValueType:(id)a4 resultValueType:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = self;
  _LNMetadataProviderDirect.queries(with:inputValueType:resultValueType:)(a3, a4, a5);

  sub_10002EB80(&unk_10019AB70, &unk_10014F8C0);
  v13.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v13.super.isa;
}

- (int64_t)metadataVersionForBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = self;
  v10 = _LNMetadataProviderDirect.metadataVersion(forBundleIdentifier:error:)(v6, v8, a4);

  return v10;
}

- (id)appShortcutsProviderMangledTypeNameForBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  _LNMetadataProviderDirect.appShortcutsProviderMangledTypeName(forBundleIdentifier:)(v10);

  if (v11)
  {
    if (a4)
    {
      v12 = _convertErrorToNSError(_:)();

      v13 = v12;
      v14 = 0;
      *a4 = v12;
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

- (id)suggestionPhrasesForQueries:(id)a3 error:(id *)a4
{
  sub_100003D44(0, &unk_10019AB30, LNAssistantSuggestionPhraseQuery_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  _LNMetadataProviderDirect.suggestionPhrases(forQueries:)();

  sub_10002EB80(&unk_10019B2A0, &unk_1001504E0);
  sub_100084294(&unk_10019AB40, &unk_10019AB30, LNAssistantSuggestionPhraseQuery_ptr);
  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)autoShortcutsForBundleIdentifier:(id)a3 localeIdentifier:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  _Block_copy(v6);
  v13 = self;
  sub_1000B1500(v7, v9, v10, v12, v13, v6);
  _Block_release(v6);
}

- (void)autoShortcutsForLocaleIdentifier:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_1000B17BC(v6, v8, v9, v5);
  _Block_release(v5);
}

- (id)autoShortcutsForLocaleIdentifier:(id)a3 error:(id *)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  _LNMetadataProviderDirect.autoShortcuts(forLocaleIdentifier:)();

  sub_10002EB80(&unk_10019BBB0, &unk_10014E220);
  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (id)propertiesForIdentifiers:(id)a3 error:(id *)a4
{
  type metadata accessor for UUID();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  _LNMetadataProviderDirect.properties(forIdentifiers:)();

  sub_100003D44(0, &qword_10019BBA0, LNProperty_ptr);
  sub_1000B5D94(&qword_100199BD0, &type metadata accessor for UUID);
  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)diagnoseBundleIdentifier:(NSString *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_100006240(&unk_1001504D0, v7);
}

@end