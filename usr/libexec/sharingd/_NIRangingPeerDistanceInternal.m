@interface _NIRangingPeerDistanceInternal
- (_NIRangingPeerDistanceInternal)initWithPeer:(id)a3 distanceMeters:(id)a4 initiator:(BOOL)a5 shouldUnlock:(BOOL)a6;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _NIRangingPeerDistanceInternal

- (_NIRangingPeerDistanceInternal)initWithPeer:(id)a3 distanceMeters:(id)a4 initiator:(BOOL)a5 shouldUnlock:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v20.receiver = self;
  v20.super_class = _NIRangingPeerDistanceInternal;
  v12 = [(_NIRangingPeerDistanceInternal *)&v20 init];
  v13 = v12;
  if (v12)
  {
    if (v12->_peer != v10)
    {
      v14 = [(_NIRangingPeer *)v10 copy];
      peer = v13->_peer;
      v13->_peer = v14;
    }

    if (v13->_distanceMeters != v11)
    {
      v16 = [(NSNumber *)v11 copy];
      distanceMeters = v13->_distanceMeters;
      v13->_distanceMeters = v16;
    }

    v13->_initiator = a5;
    v13->_shouldUnlock = a6;
    v18 = v13;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  peer = self->_peer;
  distanceMeters = self->_distanceMeters;
  initiator = self->_initiator;
  shouldUnlock = self->_shouldUnlock;

  return [v4 initWithPeer:peer distanceMeters:distanceMeters initiator:initiator shouldUnlock:shouldUnlock];
}

@end