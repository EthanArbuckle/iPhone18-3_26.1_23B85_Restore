@interface ExtensionService
- (void)getConnectionHostInterfaceForBundleIdentifier:(NSString *)identifier completionHandler:(id)handler;
@end

@implementation ExtensionService

- (void)getConnectionHostInterfaceForBundleIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = identifier;
  v7[3] = v6;
  v7[4] = self;
  identifierCopy = identifier;
  selfCopy = self;

  sub_100006240(&unk_100151CA8, v7);
}

@end