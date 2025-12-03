@interface _NIRangingPeer
+ (id)hexStringMacAddressFromData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPeer:(id)peer;
- (_NIRangingPeer)initWithCoder:(id)coder;
- (_NIRangingPeer)initWithMacAddressAsData:(id)data secureRangingKeyID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)getMacAddressAsString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _NIRangingPeer

- (_NIRangingPeer)initWithMacAddressAsData:(id)data secureRangingKeyID:(id)d
{
  dataCopy = data;
  dCopy = d;
  if (!dataCopy)
  {
    internal = auto_unlock_log();
    if (os_log_type_enabled(internal, OS_LOG_TYPE_FAULT))
    {
      sub_100213C68(internal);
    }

    goto LABEL_6;
  }

  v11.receiver = self;
  v11.super_class = _NIRangingPeer;
  self = [(_NIRangingPeer *)&v11 init];
  if (self)
  {
    v8 = [[_NIRangingPeerInternal alloc] initWithMacAddressAsData:dataCopy secureRangingKeyID:dCopy];
    internal = self->_internal;
    self->_internal = v8;
LABEL_6:
  }

  return self;
}

- (id)getMacAddressAsString
{
  macAddress = [(_NIRangingPeer *)self macAddress];
  v3 = [_NIRangingPeer hexStringMacAddressFromData:macAddress];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  internal = self->_internal;
  v6 = internal[1];
  v7 = internal[2];

  return [v4 initWithMacAddressAsData:v6 secureRangingKeyID:v7];
}

- (_NIRangingPeer)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    sub_100213CAC();
  }

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNICodingKeyRangingPeerMacAddress"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNICodingKeyRangingPeerSecureRangingKeyID"];

  v7 = [(_NIRangingPeer *)self initWithMacAddressAsData:v5 secureRangingKeyID:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    sub_100213D20();
  }

  internal = self->_internal;
  v5 = internal[1];
  v6 = internal;
  [coderCopy encodeObject:v5 forKey:@"kNICodingKeyRangingPeerMacAddress"];
  [coderCopy encodeObject:v6[2] forKey:@"kNICodingKeyRangingPeerSecureRangingKeyID"];
}

- (id)description
{
  v3 = self->_internal;
  getMacAddressAsString = [(_NIRangingPeer *)self getMacAddressAsString];
  v5 = v3[2];

  v6 = "Yes";
  if (!v5)
  {
    v6 = "No";
  }

  v7 = [NSString stringWithFormat:@"Peer:%@ hasKey:%s", getMacAddressAsString, v6];

  return v7;
}

- (unint64_t)hash
{
  macAddress = [(_NIRangingPeer *)self macAddress];
  v4 = [macAddress hash];
  secureRangingKeyID = [(_NIRangingPeer *)self secureRangingKeyID];
  v6 = [secureRangingKeyID hash];

  return v6 ^ v4;
}

- (BOOL)isEqualToPeer:(id)peer
{
  peerCopy = peer;
  v9 = peerCopy;
  if (self == peerCopy)
  {
    v12 = 1;
    goto LABEL_25;
  }

  macAddress = [(_NIRangingPeer *)peerCopy macAddress];
  if (macAddress && (-[_NIRangingPeer macAddress](self, "macAddress"), v3 = objc_claimAutoreleasedReturnValue(), -[_NIRangingPeer macAddress](v9, "macAddress"), v4 = objc_claimAutoreleasedReturnValue(), ([v3 isEqualToData:v4] & 1) != 0))
  {
    v11 = 0;
  }

  else
  {
    macAddress2 = [(_NIRangingPeer *)v9 macAddress];
    if (macAddress2)
    {
      v12 = 0;
LABEL_21:

      goto LABEL_22;
    }

    macAddress3 = [(_NIRangingPeer *)self macAddress];
    if (macAddress3)
    {

      v12 = 0;
      goto LABEL_22;
    }

    v11 = 1;
  }

  secureRangingKeyID = [(_NIRangingPeer *)v9 secureRangingKeyID];
  if (secureRangingKeyID)
  {
    secureRangingKeyID2 = [(_NIRangingPeer *)self secureRangingKeyID];
    secureRangingKeyID3 = [(_NIRangingPeer *)v9 secureRangingKeyID];
    if ([secureRangingKeyID2 isEqualToData:secureRangingKeyID3])
    {
      v12 = 1;
      goto LABEL_16;
    }
  }

  secureRangingKeyID4 = [(_NIRangingPeer *)v9 secureRangingKeyID];
  if (secureRangingKeyID4)
  {

    v12 = 0;
    if (secureRangingKeyID)
    {
      goto LABEL_16;
    }
  }

  else
  {
    secureRangingKeyID5 = [(_NIRangingPeer *)self secureRangingKeyID];
    v12 = secureRangingKeyID5 == 0;

    if (secureRangingKeyID)
    {
LABEL_16:

      if ((v11 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }
  }

  if (v11)
  {
LABEL_20:
    macAddress2 = 0;
    goto LABEL_21;
  }

LABEL_22:
  if (macAddress)
  {
  }

LABEL_25:
  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(_NIRangingPeer *)self isEqualToPeer:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)hexStringMacAddressFromData:(id)data
{
  *&v5.octet[4] = 0;
  *v5.octet = 0;
  [data getBytes:&v5 length:6];
  v3 = [NSString stringWithUTF8String:ether_ntoa(&v5)];

  return v3;
}

@end