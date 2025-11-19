@interface _NIRangingPeerDistance
- (_NIRangingPeerDistance)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _NIRangingPeerDistance

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  internal = self->_internal;
  v6 = internal[1];
  v7 = internal[2];
  v8 = *(internal + 24);
  v9 = *(internal + 25);

  return [v4 initWithPeer:v6 distanceMeters:v7 initiator:v8 shouldUnlock:v9];
}

- (_NIRangingPeerDistance)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    sub_100213D94();
  }

  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNICodingKeyRangingPeerDistancePeer"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNICodingKeyRangingPeerDistanceDistance"];
  v7 = [v4 decodeBoolForKey:@"kNICodingKeyRangingPeerDistanceInitiator"];
  v8 = [v4 decodeBoolForKey:@"kNICodingKeyRangingPeerDistanceUnlock"];

  v9 = [(_NIRangingPeerDistance *)self initWithPeer:v5 distanceMeters:v6 initiator:v7 shouldUnlock:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  if (([v8 allowsKeyedCoding] & 1) == 0)
  {
    sub_100213E08();
  }

  internal = self->_internal;
  v5 = internal[1];
  v6 = internal;
  [v8 encodeObject:v5 forKey:@"kNICodingKeyRangingPeerDistancePeer"];
  [v8 encodeObject:v6[2] forKey:@"kNICodingKeyRangingPeerDistanceDistance"];
  [v8 encodeBool:*(v6 + 24) forKey:@"kNICodingKeyRangingPeerDistanceInitiator"];
  v7 = *(v6 + 25);

  [v8 encodeBool:v7 forKey:@"kNICodingKeyRangingPeerDistanceUnlock"];
}

- (id)description
{
  internal = self->_internal;
  v3 = internal[1];
  v4 = internal;
  v5 = [v3 getMacAddressAsString];
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

  v9 = [internal[1] secureRangingKeyID];
  if (v9)
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

  v13 = [NSString stringWithFormat:@"Peer: %@ distance[m]:%.02f unlock:%s secure:%s initiator:%s", v5, *&v7, v8, v10, v12];

  return v13;
}

@end