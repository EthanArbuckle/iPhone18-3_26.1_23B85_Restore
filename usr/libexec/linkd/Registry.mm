@interface Registry
- (void)actionForBundleIdentifier:(NSString *)identifier basePhraseTemplate:(NSString *)template actionIdentifier:(NSString *)actionIdentifier parameterIdentifier:(NSUUID *)parameterIdentifier completionHandler:(id)handler;
- (void)actionForBundleIdentifier:(NSString *)identifier basePhraseTemplate:(NSString *)template parameterIdentifier:(NSUUID *)parameterIdentifier completionHandler:(id)handler;
- (void)actionsConformingToSystemProtocols:(NSSet *)protocols logicalType:(unint64_t)type bundleIdentifier:(NSString *)identifier reply:(id)reply;
- (void)fetchDatabaseURL:(id)l;
- (void)openCollectionActionsForEntityTypeIdentifier:(NSString *)identifier capabilities:(int64_t)capabilities bundleIdentifier:(NSString *)bundleIdentifier reply:(id)reply;
- (void)queriesForBundleIdentifier:(NSString *)identifier ofType:(NSString *)type reply:(id)reply;
- (void)queriesWithCapabilities:(unint64_t)capabilities inputValueType:(LNValueType *)type resultValueType:(LNValueType *)valueType reply:(id)reply;
- (void)registerBundleWithIdentifier:(NSString *)identifier force:(BOOL)force reply:(id)reply;
@end

@implementation Registry

- (void)fetchDatabaseURL:(id)l
{
  v4 = _Block_copy(l);
  _Block_copy(v4);
  selfCopy = self;
  sub_100008E98(selfCopy, v4);
  _Block_release(v4);
}

- (void)actionsConformingToSystemProtocols:(NSSet *)protocols logicalType:(unint64_t)type bundleIdentifier:(NSString *)identifier reply:(id)reply
{
  v10 = _Block_copy(reply);
  v11 = swift_allocObject();
  v11[2] = protocols;
  v11[3] = type;
  v11[4] = identifier;
  v11[5] = v10;
  v11[6] = self;
  protocolsCopy = protocols;
  identifierCopy = identifier;
  selfCopy = self;

  sub_100006240(&unk_1001515C8, v11);
}

- (void)openCollectionActionsForEntityTypeIdentifier:(NSString *)identifier capabilities:(int64_t)capabilities bundleIdentifier:(NSString *)bundleIdentifier reply:(id)reply
{
  v10 = _Block_copy(reply);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = capabilities;
  v11[4] = bundleIdentifier;
  v11[5] = v10;
  v11[6] = self;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  selfCopy = self;

  sub_100006240(&unk_1001514F0, v11);
}

- (void)queriesForBundleIdentifier:(NSString *)identifier ofType:(NSString *)type reply:(id)reply
{
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  v9[2] = identifier;
  v9[3] = type;
  v9[4] = v8;
  v9[5] = self;
  identifierCopy = identifier;
  typeCopy = type;
  selfCopy = self;

  sub_100006240(&unk_100151368, v9);
}

- (void)queriesWithCapabilities:(unint64_t)capabilities inputValueType:(LNValueType *)type resultValueType:(LNValueType *)valueType reply:(id)reply
{
  v10 = _Block_copy(reply);
  v11 = swift_allocObject();
  v11[2] = capabilities;
  v11[3] = type;
  v11[4] = valueType;
  v11[5] = v10;
  v11[6] = self;
  typeCopy = type;
  valueTypeCopy = valueType;
  selfCopy = self;

  sub_100006240(&unk_100151320, v11);
}

- (void)actionForBundleIdentifier:(NSString *)identifier basePhraseTemplate:(NSString *)template parameterIdentifier:(NSUUID *)parameterIdentifier completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = template;
  v11[4] = parameterIdentifier;
  v11[5] = v10;
  v11[6] = self;
  identifierCopy = identifier;
  templateCopy = template;
  parameterIdentifierCopy = parameterIdentifier;
  selfCopy = self;

  sub_100006240(&unk_100151228, v11);
}

- (void)actionForBundleIdentifier:(NSString *)identifier basePhraseTemplate:(NSString *)template actionIdentifier:(NSString *)actionIdentifier parameterIdentifier:(NSUUID *)parameterIdentifier completionHandler:(id)handler
{
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = identifier;
  v13[3] = template;
  v13[4] = actionIdentifier;
  v13[5] = parameterIdentifier;
  v13[6] = v12;
  v13[7] = self;
  identifierCopy = identifier;
  templateCopy = template;
  actionIdentifierCopy = actionIdentifier;
  parameterIdentifierCopy = parameterIdentifier;
  selfCopy = self;

  sub_100006240(&unk_1001511E8, v13);
}

- (void)registerBundleWithIdentifier:(NSString *)identifier force:(BOOL)force reply:(id)reply
{
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = identifier;
  *(v9 + 24) = force;
  *(v9 + 32) = v8;
  *(v9 + 40) = self;
  identifierCopy = identifier;
  selfCopy = self;

  sub_100006240(&unk_1001510E0, v9);
}

@end