@interface GKAppMetadataFetcher
- (void)fetchWithRequest:(GKAppMetadataFetcherRequest *)request bag:(AMSBag *)bag refreshExpiredCompletion:(id)completion completionHandler:;
@end

@implementation GKAppMetadataFetcher

- (void)fetchWithRequest:(GKAppMetadataFetcherRequest *)request bag:(AMSBag *)bag refreshExpiredCompletion:(id)completion completionHandler:
{
  v6 = v5;
  v10 = _Block_copy(completion);
  v11 = _Block_copy(v6);
  v12 = swift_allocObject();
  v12[2] = request;
  v12[3] = bag;
  v12[4] = v10;
  v12[5] = v11;
  v12[6] = self;
  requestCopy = request;
  bagCopy = bag;

  sub_10028022C(&unk_1002C4930, v12);
}

@end