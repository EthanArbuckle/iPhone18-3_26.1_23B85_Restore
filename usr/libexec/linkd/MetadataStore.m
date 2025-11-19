@interface MetadataStore
- (id)actionsAndSystemProtocolDefaultsForBundleIdentifier:(id)a3 error:(id *)a4;
- (id)actionsConformingToSystemProtocol:(id)a3 withParametersOfTypes:(id)a4 bundleIdentifier:(id)a5 error:(id *)a6;
- (id)actionsConformingToSystemProtocols:(id)a3 logicalType:(unint64_t)a4 bundleIdentifier:(id)a5 error:(id *)a6;
- (id)actionsForBundleIdentifier:(id)a3 andActionIdentifier:(id)a4 error:(id *)a5;
- (id)actionsWithFullyQualifiedIdentifiers:(id)a3 error:(id *)a4;
- (id)appShortcutsProviderMangledTypeNameForBundleIdentifier:(id)a3 error:(id *)a4;
- (id)bundleRegistrationsWithError:(id *)a3;
- (id)bundlesWithError:(id *)a3;
- (id)openActionsForTypeIdentifier:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5;
- (id)openCollectionActionsForEntityTypeIdentifier:(id)a3 capabilities:(int64_t)a4 bundleIdentifier:(id)a5 error:(id *)a6;
- (id)queriesForBundleIdentifier:(id)a3 ofType:(id)a4 error:(id *)a5;
- (id)queriesWithCapabilities:(unint64_t)a3 inputValueType:(id)a4 resultValueType:(id)a5 error:(id *)a6;
- (id)suggestionPhrasesForQueries:(id)a3 error:(id *)a4;
- (int64_t)metadataVersionForBundleIdentifier:(id)a3 error:(id *)a4;
- (void)diagnoseBundleIdentifier:(NSString *)a3 completionHandler:(id)a4;
@end

@implementation MetadataStore

- (id)actionsForBundleIdentifier:(id)a3 andActionIdentifier:(id)a4 error:(id *)a5
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = self;
  sub_1000287E8(v6, v8, v9, v11, sub_100028870);

  sub_100003D44(0, &unk_10019AB20, LNActionMetadata_ptr);
  v13.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v13.super.isa;
}

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
  sub_1000791B0();

  sub_10002EB80(&unk_10019AB90, &unk_100150500);
  v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

- (id)actionsAndSystemProtocolDefaultsForBundleIdentifier:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = self;
  sub_100081300(v5, v7, sub_1000A70F4);

  sub_100003D44(0, &unk_10019ABA0, LNBundleActionsMetadata_ptr);
  v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
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
  sub_1000805FC();

  sub_10002EB80(&unk_10019AB90, &unk_100150500);
  v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v11.super.isa;
}

- (id)actionsWithFullyQualifiedIdentifiers:(id)a3 error:(id *)a4
{
  sub_100003D44(0, &unk_10019BBE0, LNFullyQualifiedActionIdentifier_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = self;
  sub_100081698(v5, sub_1000A4FB4);

  sub_10002EB80(&unk_10019AB90, &unk_100150500);
  v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (id)bundlesWithError:(id *)a3
{
  v3 = self;
  sub_100080928();

  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (id)bundleRegistrationsWithError:(id *)a3
{
  v3 = self;
  sub_100080A1C();

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
  sub_100080B84();

  sub_100003D44(0, &qword_10019B2E0, LNQueryMetadata_ptr);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (id)queriesWithCapabilities:(unint64_t)a3 inputValueType:(id)a4 resultValueType:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = self;
  sub_100080E70(a3, a4, a5);

  sub_10002EB80(&unk_10019AB70, &unk_10014F8C0);
  v13.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v13.super.isa;
}

- (int64_t)metadataVersionForBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = self;
  v10 = sub_100081464(v6, v8, a4);

  return v10;
}

- (id)appShortcutsProviderMangledTypeNameForBundleIdentifier:(id)a3 error:(id *)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = self;
  sub_1000814F8(v5, v7);

  v9 = String._bridgeToObjectiveC()();

  return v9;
}

- (id)suggestionPhrasesForQueries:(id)a3 error:(id *)a4
{
  sub_100003D44(0, &unk_10019AB30, LNAssistantSuggestionPhraseQuery_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = self;
  sub_100081698(v5, sub_1000AB064);

  sub_10002EB80(&unk_10019B2A0, &unk_1001504E0);
  sub_100084294(&unk_10019AB40, &unk_10019AB30, LNAssistantSuggestionPhraseQuery_ptr);
  v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
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

  sub_100006240(&unk_10014F898, v7);
}

- (id)openActionsForTypeIdentifier:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = self;
  sub_100081C24();

  sub_100003D44(0, &unk_10019AB20, LNActionMetadata_ptr);
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (id)openCollectionActionsForEntityTypeIdentifier:(id)a3 capabilities:(int64_t)a4 bundleIdentifier:(id)a5 error:(id *)a6
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = self;
  sub_100081DC0();

  sub_100003D44(0, &unk_10019AB20, LNActionMetadata_ptr);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

@end