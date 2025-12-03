@interface CKKSZoneChangeFetchDependencyOperation
- (CKKSZoneChangeFetchDependencyOperation)init;
- (CKKSZoneChangeFetcher)owner;
- (id)descriptionError;
@end

@implementation CKKSZoneChangeFetchDependencyOperation

- (CKKSZoneChangeFetcher)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

- (id)descriptionError
{
  owner = [(CKKSZoneChangeFetchDependencyOperation *)self owner];
  lastCKFetchError = [owner lastCKFetchError];
  v4 = [NSError errorWithDomain:@"CKKSResultOperationDescriptionError" code:2 description:@"Fetch failed" underlying:lastCKFetchError];

  return v4;
}

- (CKKSZoneChangeFetchDependencyOperation)init
{
  v3.receiver = self;
  v3.super_class = CKKSZoneChangeFetchDependencyOperation;
  return [(CKKSResultOperation *)&v3 init];
}

@end