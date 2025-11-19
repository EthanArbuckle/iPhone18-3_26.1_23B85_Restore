@interface SOSAccountTrust
+ (id)trust;
- (NSString)peerID;
- (SOSAccountTrust)init;
- (__OpaqueSOSPeerInfo)peerInfo;
- (void)dealloc;
- (void)setExpansion:(id)a3;
- (void)setFullPeerInfo:(__OpaqueSOSFullPeerInfo *)a3;
- (void)setRetirees:(id)a3;
- (void)setTrustedCircle:(__OpaqueSOSCircle *)a3;
@end

@implementation SOSAccountTrust

- (void)setExpansion:(id)a3
{
  v4 = [a3 mutableCopy];
  expansion = self->expansion;
  self->expansion = v4;

  _objc_release_x1();
}

- (void)setFullPeerInfo:(__OpaqueSOSFullPeerInfo *)a3
{
  fullPeerInfo = self->fullPeerInfo;
  if (fullPeerInfo != a3)
  {
    if (!a3 || (CFRetain(a3), (fullPeerInfo = self->fullPeerInfo) != 0))
    {
      CFRelease(fullPeerInfo);
    }

    self->fullPeerInfo = a3;
  }
}

- (void)setRetirees:(id)a3
{
  v4 = [a3 mutableCopy];
  retirees = self->retirees;
  self->retirees = v4;

  _objc_release_x1();
}

- (void)setTrustedCircle:(__OpaqueSOSCircle *)a3
{
  trustedCircle = self->trustedCircle;
  if (trustedCircle != a3)
  {
    if (!a3 || (CFRetain(a3), (trustedCircle = self->trustedCircle) != 0))
    {
      CFRelease(trustedCircle);
    }

    self->trustedCircle = a3;
  }
}

- (NSString)peerID
{
  [(SOSAccountTrust *)self peerInfo];
  PeerID = SOSPeerInfoGetPeerID();
  v3 = PeerID;
  if (PeerID)
  {
    CFRetain(PeerID);
  }

  return v3;
}

- (__OpaqueSOSPeerInfo)peerInfo
{
  [(SOSAccountTrust *)self fullPeerInfo];

  return SOSFullPeerInfoGetPeerInfo();
}

- (void)dealloc
{
  if (self)
  {
    fullPeerInfo = self->fullPeerInfo;
    if (fullPeerInfo)
    {
      self->fullPeerInfo = 0;
      CFRelease(fullPeerInfo);
    }

    peerInfo = self->peerInfo;
    if (peerInfo)
    {
      self->peerInfo = 0;
      CFRelease(peerInfo);
    }

    trustedCircle = self->trustedCircle;
    if (trustedCircle)
    {
      self->trustedCircle = 0;
      CFRelease(trustedCircle);
    }

    cachedOctagonSigningKey = self->_cachedOctagonSigningKey;
    if (cachedOctagonSigningKey)
    {
      self->_cachedOctagonSigningKey = 0;
      CFRelease(cachedOctagonSigningKey);
    }

    cachedOctagonEncryptionKey = self->_cachedOctagonEncryptionKey;
    if (cachedOctagonEncryptionKey)
    {
      self->_cachedOctagonEncryptionKey = 0;
      CFRelease(cachedOctagonEncryptionKey);
    }
  }

  v8.receiver = self;
  v8.super_class = SOSAccountTrust;
  [(SOSAccountTrust *)&v8 dealloc];
}

- (SOSAccountTrust)init
{
  v6.receiver = self;
  v6.super_class = SOSAccountTrust;
  v2 = [(SOSAccountTrust *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableSet set];
    [(SOSAccountTrust *)v2 setRetirees:v3];

    [(SOSAccountTrust *)v2 setFullPeerInfo:0];
    [(SOSAccountTrust *)v2 setTrustedCircle:0];
    [(SOSAccountTrust *)v2 setDepartureCode:0];
    v4 = +[NSMutableDictionary dictionary];
    [(SOSAccountTrust *)v2 setExpansion:v4];
  }

  return v2;
}

+ (id)trust
{
  v2 = objc_alloc_init(SOSAccountTrust);

  return v2;
}

@end