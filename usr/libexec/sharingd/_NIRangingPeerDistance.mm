@interface _NIRangingPeerDistance
- (_NIRangingPeerDistance)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _NIRangingPeerDistance

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  internal = self->_internal;
  v6 = internal[1];
  v7 = internal[2];
  v8 = *(internal + 24);
  v9 = *(internal + 25);

  return [v4 initWithPeer:v6 distanceMeters:v7 initiator:v8 shouldUnlock:v9];
}

- (_NIRangingPeerDistance)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    sub_100213D94();
  }

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNICodingKeyRangingPeerDistancePeer"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNICodingKeyRangingPeerDistanceDistance"];
  v7 = [coderCopy decodeBoolForKey:@"kNICodingKeyRangingPeerDistanceInitiator"];
  v8 = [coderCopy decodeBoolForKey:@"kNICodingKeyRangingPeerDistanceUnlock"];

  v9 = [(_NIRangingPeerDistance *)self initWithPeer:v5 distanceMeters:v6 initiator:v7 shouldUnlock:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    sub_100213E08();
  }

  internal = self->_internal;
  v5 = internal[1];
  v6 = internal;
  [coderCopy encodeObject:v5 forKey:@"kNICodingKeyRangingPeerDistancePeer"];
  [coderCopy encodeObject:v6[2] forKey:@"kNICodingKeyRangingPeerDistanceDistance"];
  [coderCopy encodeBool:*(v6 + 24) forKey:@"kNICodingKeyRangingPeerDistanceInitiator"];
  v7 = *(v6 + 25);

  [coderCopy encodeBool:v7 forKey:@"kNICodingKeyRangingPeerDistanceUnlock"];
}

- (id)description
{
  internal = self->_internal;
  v3 = internal[1];
  v4 = internal;
  getMacAddressAsString = [v3 getMacAddressAsString];
  [v4[2] floatValue];
  v7 = v6;
  if (*(v4 + 25))
  {
    v8 = "Yes";
  }

  else
  {
    v8 = "No";
  }

  secureRangingKeyID = [internal[1] secureRangingKeyID];
  if (secureRangingKeyID)
  {
    v10 = "Yes";
  }

  else
  {
    v10 = "No";
  }

  v11 = *(v4 + 24);

  if (v11)
  {
    v12 = "Yes";
  }

  else
  {
    v12 = "No";
  }

  v13 = [NSString stringWithFormat:@"Peer: %@ distance[m]:%.02f unlock:%s secure:%s initiator:%s", getMacAddressAsString, *&v7, v8, v10, v12];

  return v13;
}

@end