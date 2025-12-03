@interface NSURL
- (id)_gkGetPreconnectURL;
- (void)hasTrustedImageDomainWithStoreBag:(GKStoreBag *)bag completionHandler:(id)handler;
@end

@implementation NSURL

- (id)_gkGetPreconnectURL
{
  host = [(NSURL *)self host];
  scheme = [(NSURL *)self scheme];
  v5 = objc_alloc_init(NSURLComponents);
  [v5 setScheme:scheme];
  [v5 setHost:host];
  v6 = [v5 URL];

  return v6;
}

- (void)hasTrustedImageDomainWithStoreBag:(GKStoreBag *)bag completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = bag;
  v7[3] = v6;
  v7[4] = self;
  bagCopy = bag;
  selfCopy = self;

  sub_10028022C(&unk_1002C8F10, v7);
}

@end