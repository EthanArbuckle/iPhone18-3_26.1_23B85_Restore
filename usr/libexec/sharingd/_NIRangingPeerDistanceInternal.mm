@interface _NIRangingPeerDistanceInternal
- (_NIRangingPeerDistanceInternal)initWithPeer:(id)peer distanceMeters:(id)meters initiator:(BOOL)initiator shouldUnlock:(BOOL)unlock;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _NIRangingPeerDistanceInternal

- (_NIRangingPeerDistanceInternal)initWithPeer:(id)peer distanceMeters:(id)meters initiator:(BOOL)initiator shouldUnlock:(BOOL)unlock
{
  peerCopy = peer;
  metersCopy = meters;
  v20.receiver = self;
  v20.super_class = _NIRangingPeerDistanceInternal;
  v12 = [(_NIRangingPeerDistanceInternal *)&v20 init];
  v13 = v12;
  if (v12)
  {
    if (v12->_peer != peerCopy)
    {
      v14 = [(_NIRangingPeer *)peerCopy copy];
      peer = v13->_peer;
      v13->_peer = v14;
    }

    if (v13->_distanceMeters != metersCopy)
    {
      v16 = [(NSNumber *)metersCopy copy];
      distanceMeters = v13->_distanceMeters;
      v13->_distanceMeters = v16;
    }

    v13->_initiator = initiator;
    v13->_shouldUnlock = unlock;
    v18 = v13;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  peer = self->_peer;
  distanceMeters = self->_distanceMeters;
  initiator = self->_initiator;
  shouldUnlock = self->_shouldUnlock;

  return [v4 initWithPeer:peer distanceMeters:distanceMeters initiator:initiator shouldUnlock:shouldUnlock];
}

@end