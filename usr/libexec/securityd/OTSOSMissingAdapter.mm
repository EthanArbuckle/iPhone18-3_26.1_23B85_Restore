@interface OTSOSMissingAdapter
- (BOOL)joinAfterRestore:(id *)restore;
- (BOOL)preloadOctagonKeySetOnAccount:(id)account error:(id *)error;
- (BOOL)resetToOffering:(id *)offering;
- (BOOL)updateCKKS4AllStatus:(BOOL)status error:(id *)error;
- (BOOL)updateOctagonKeySetWithAccount:(id)account error:(id *)error;
- (OTSOSMissingAdapter)init;
- (id)currentSOSSelf:(id *)self;
- (id)currentState;
- (id)fetchSelfPeers:(id *)peers;
- (id)fetchTrustedPeers:(id *)peers;
@end

@implementation OTSOSMissingAdapter

- (BOOL)resetToOffering:(id *)offering
{
  if (offering)
  {
    *offering = [NSError errorWithDomain:NSOSStatusErrorDomain code:-4 description:@"SOS unsupported on this platform"];
  }

  return 0;
}

- (BOOL)joinAfterRestore:(id *)restore
{
  if (restore)
  {
    *restore = [NSError errorWithDomain:NSOSStatusErrorDomain code:-4 description:@"SOS unsupported on this platform"];
  }

  return 0;
}

- (BOOL)preloadOctagonKeySetOnAccount:(id)account error:(id *)error
{
  if (error)
  {
    *error = [NSError errorWithDomain:NSOSStatusErrorDomain code:-4 description:@"SOS unsupported on this platform"];
  }

  return 0;
}

- (id)currentState
{
  v3 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-4 description:@"SOS unsupported on this platform"];
  v4 = [CKKSPeerProviderState alloc];
  providerID = [(OTSOSMissingAdapter *)self providerID];
  v6 = [(CKKSPeerProviderState *)v4 initWithPeerProviderID:providerID essential:[(OTSOSMissingAdapter *)self essential] selfPeers:0 selfPeersError:v3 trustedPeers:0 trustedPeersError:v3];

  return v6;
}

- (id)fetchSelfPeers:(id *)peers
{
  if (peers)
  {
    *peers = [NSError errorWithDomain:NSOSStatusErrorDomain code:-4 description:@"SOS unsupported on this platform"];
  }

  return 0;
}

- (BOOL)updateCKKS4AllStatus:(BOOL)status error:(id *)error
{
  if (error)
  {
    *error = [NSError errorWithDomain:NSOSStatusErrorDomain code:-4 description:@"SOS unsupported on this platform"];
  }

  return 0;
}

- (BOOL)updateOctagonKeySetWithAccount:(id)account error:(id *)error
{
  if (error)
  {
    *error = [NSError errorWithDomain:NSOSStatusErrorDomain code:-4 description:@"SOS unsupported on this platform"];
  }

  return 0;
}

- (id)fetchTrustedPeers:(id *)peers
{
  if (peers)
  {
    *peers = [NSError errorWithDomain:NSOSStatusErrorDomain code:-4 description:@"SOS unsupported on this platform"];
  }

  return 0;
}

- (id)currentSOSSelf:(id *)self
{
  if (self)
  {
    *self = [NSError errorWithDomain:NSOSStatusErrorDomain code:-4 description:@"SOS unsupported on this platform"];
  }

  return 0;
}

- (OTSOSMissingAdapter)init
{
  v6.receiver = self;
  v6.super_class = OTSOSMissingAdapter;
  v2 = [(OTSOSMissingAdapter *)&v6 init];
  v3 = v2;
  if (v2)
  {
    providerID = v2->_providerID;
    v2->_providerID = @"[OTSOSMissingAdapter]";

    v3->_essential = 0;
  }

  return v3;
}

@end