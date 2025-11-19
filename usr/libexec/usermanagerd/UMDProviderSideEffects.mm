@interface UMDProviderSideEffects
+ (id)sideEffects;
- (UMDProviderSideEffects)init;
@end

@implementation UMDProviderSideEffects

+ (id)sideEffects
{
  if (qword_1000EB2D0 != -1)
  {
    sub_100089CD8();
  }

  v3 = qword_1000EB2C8;

  return v3;
}

- (UMDProviderSideEffects)init
{
  v14.receiver = self;
  v14.super_class = UMDProviderSideEffects;
  v2 = [(UMDProviderSideEffects *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(UMAppleKeyStoreProvider);
    sub_10009864C(v2, v3);

    v4 = objc_alloc_init(UMCommPageProvider);
    sub_1000897A8(v2, v4);

    v5 = objc_alloc_init(UMDarwinDirectoryProvider);
    sub_1000897B8(v2, v5);

    v6 = objc_alloc_init(UMFilesystemProvider);
    sub_1000897C8(v2, v6);

    v7 = objc_alloc_init(UMMobileKeyBagProvider);
    sub_1000897D8(v2, v7);

    v8 = objc_alloc_init(UMKPersonaProvider);
    sub_1000897E8(v2, v8);

    v9 = objc_alloc_init(UMLibNotifyProvider);
    sub_1000897F8(v2, v9);

    v10 = objc_alloc_init(UMProcessProvider);
    sub_100089808(v2, v10);

    v11 = objc_alloc_init(UMSecurityProvider);
    sub_100089818(v2, v11);

    v12 = v2;
  }

  return v2;
}

@end