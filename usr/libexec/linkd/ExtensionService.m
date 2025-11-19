@interface ExtensionService
- (void)getConnectionHostInterfaceForBundleIdentifier:(NSString *)a3 completionHandler:(id)a4;
@end

@implementation ExtensionService

- (void)getConnectionHostInterfaceForBundleIdentifier:(NSString *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_100006240(&unk_100151CA8, v7);
}

@end