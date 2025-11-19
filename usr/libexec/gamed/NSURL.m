@interface NSURL
- (id)_gkGetPreconnectURL;
- (void)hasTrustedImageDomainWithStoreBag:(GKStoreBag *)a3 completionHandler:(id)a4;
@end

@implementation NSURL

- (id)_gkGetPreconnectURL
{
  v3 = [(NSURL *)self host];
  v4 = [(NSURL *)self scheme];
  v5 = objc_alloc_init(NSURLComponents);
  [v5 setScheme:v4];
  [v5 setHost:v3];
  v6 = [v5 URL];

  return v6;
}

- (void)hasTrustedImageDomainWithStoreBag:(GKStoreBag *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_10028022C(&unk_1002C8F10, v7);
}

@end