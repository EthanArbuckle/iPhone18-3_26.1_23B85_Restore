@interface GKAppMetadataFetcher
- (void)fetchWithRequest:(GKAppMetadataFetcherRequest *)a3 bag:(AMSBag *)a4 refreshExpiredCompletion:(id)a5 completionHandler:;
@end

@implementation GKAppMetadataFetcher

- (void)fetchWithRequest:(GKAppMetadataFetcherRequest *)a3 bag:(AMSBag *)a4 refreshExpiredCompletion:(id)a5 completionHandler:
{
  v6 = v5;
  v10 = _Block_copy(a5);
  v11 = _Block_copy(v6);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v10;
  v12[5] = v11;
  v12[6] = self;
  v13 = a3;
  v14 = a4;

  sub_10028022C(&unk_1002C4930, v12);
}

@end