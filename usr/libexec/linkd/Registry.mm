@interface Registry
- (void)actionForBundleIdentifier:(NSString *)a3 basePhraseTemplate:(NSString *)a4 actionIdentifier:(NSString *)a5 parameterIdentifier:(NSUUID *)a6 completionHandler:(id)a7;
- (void)actionForBundleIdentifier:(NSString *)a3 basePhraseTemplate:(NSString *)a4 parameterIdentifier:(NSUUID *)a5 completionHandler:(id)a6;
- (void)actionsConformingToSystemProtocols:(NSSet *)a3 logicalType:(unint64_t)a4 bundleIdentifier:(NSString *)a5 reply:(id)a6;
- (void)fetchDatabaseURL:(id)a3;
- (void)openCollectionActionsForEntityTypeIdentifier:(NSString *)a3 capabilities:(int64_t)a4 bundleIdentifier:(NSString *)a5 reply:(id)a6;
- (void)queriesForBundleIdentifier:(NSString *)a3 ofType:(NSString *)a4 reply:(id)a5;
- (void)queriesWithCapabilities:(unint64_t)a3 inputValueType:(LNValueType *)a4 resultValueType:(LNValueType *)a5 reply:(id)a6;
- (void)registerBundleWithIdentifier:(NSString *)a3 force:(BOOL)a4 reply:(id)a5;
@end

@implementation Registry

- (void)fetchDatabaseURL:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_100008E98(v5, v4);
  _Block_release(v4);
}

- (void)actionsConformingToSystemProtocols:(NSSet *)a3 logicalType:(unint64_t)a4 bundleIdentifier:(NSString *)a5 reply:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  v13 = a5;
  v14 = self;

  sub_100006240(&unk_1001515C8, v11);
}

- (void)openCollectionActionsForEntityTypeIdentifier:(NSString *)a3 capabilities:(int64_t)a4 bundleIdentifier:(NSString *)a5 reply:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  v13 = a5;
  v14 = self;

  sub_100006240(&unk_1001514F0, v11);
}

- (void)queriesForBundleIdentifier:(NSString *)a3 ofType:(NSString *)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_100006240(&unk_100151368, v9);
}

- (void)queriesWithCapabilities:(unint64_t)a3 inputValueType:(LNValueType *)a4 resultValueType:(LNValueType *)a5 reply:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a4;
  v13 = a5;
  v14 = self;

  sub_100006240(&unk_100151320, v11);
}

- (void)actionForBundleIdentifier:(NSString *)a3 basePhraseTemplate:(NSString *)a4 parameterIdentifier:(NSUUID *)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = self;

  sub_100006240(&unk_100151228, v11);
}

- (void)actionForBundleIdentifier:(NSString *)a3 basePhraseTemplate:(NSString *)a4 actionIdentifier:(NSString *)a5 parameterIdentifier:(NSUUID *)a6 completionHandler:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = v12;
  v13[7] = self;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = self;

  sub_100006240(&unk_1001511E8, v13);
}

- (void)registerBundleWithIdentifier:(NSString *)a3 force:(BOOL)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = v8;
  *(v9 + 40) = self;
  v10 = a3;
  v11 = self;

  sub_100006240(&unk_1001510E0, v9);
}

@end