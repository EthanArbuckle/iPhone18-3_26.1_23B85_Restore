@interface _NIRangingPeer
+ (id)hexStringMacAddressFromData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPeer:(id)a3;
- (_NIRangingPeer)initWithCoder:(id)a3;
- (_NIRangingPeer)initWithMacAddressAsData:(id)a3 secureRangingKeyID:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)getMacAddressAsString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _NIRangingPeer

- (_NIRangingPeer)initWithMacAddressAsData:(id)a3 secureRangingKeyID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
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
    v8 = [[_NIRangingPeerInternal alloc] initWithMacAddressAsData:v6 secureRangingKeyID:v7];
    internal = self->_internal;
    self->_internal = v8;
LABEL_6:
  }

  return self;
}

- (id)getMacAddressAsString
{
  v2 = [(_NIRangingPeer *)self macAddress];
  v3 = [_NIRangingPeer hexStringMacAddressFromData:v2];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  internal = self->_internal;
  v6 = internal[1];
  v7 = internal[2];

  return [v4 initWithMacAddressAsData:v6 secureRangingKeyID:v7];
}

- (_NIRangingPeer)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    sub_100213CAC();
  }

  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNICodingKeyRangingPeerMacAddress"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNICodingKeyRangingPeerSecureRangingKeyID"];

  v7 = [(_NIRangingPeer *)self initWithMacAddressAsData:v5 secureRangingKeyID:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  if (([v7 allowsKeyedCoding] & 1) == 0)
  {
    sub_100213D20();
  }

  internal = self->_internal;
  v5 = internal[1];
  v6 = internal;
  [v7 encodeObject:v5 forKey:@"kNICodingKeyRangingPeerMacAddress"];
  [v7 encodeObject:v6[2] forKey:@"kNICodingKeyRangingPeerSecureRangingKeyID"];
}

- (id)description
{
  v3 = self->_internal;
  v4 = [(_NIRangingPeer *)self getMacAddressAsString];
  v5 = v3[2];

  v6 = "Yes";
  if (!v5)
  {
    v6 = "No";
  }

  v7 = [NSString stringWithFormat:@"Peer:%@ hasKey:%s", v4, v6];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(_NIRangingPeer *)self macAddress];
  v4 = [v3 hash];
  v5 = [(_NIRangingPeer *)self secureRangingKeyID];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqualToPeer:(id)a3
{
  v8 = a3;
  v9 = v8;
  if (self == v8)
  {
    v12 = 1;
    goto LABEL_25;
  }

  v10 = [(_NIRangingPeer *)v8 macAddress];
  if (v10 && (-[_NIRangingPeer macAddress](self, "macAddress"), v3 = objc_claimAutoreleasedReturnValue(), -[_NIRangingPeer macAddress](v9, "macAddress"), v4 = objc_claimAutoreleasedReturnValue(), ([v3 isEqualToData:v4] & 1) != 0))
  {
    v11 = 0;
  }

  else
  {
    v13 = [(_NIRangingPeer *)v9 macAddress];
    if (v13)
    {
      v12 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v14 = [(_NIRangingPeer *)self macAddress];
    if (v14)
    {

      v12 = 0;
      goto LABEL_22;
    }

    v11 = 1;
  }

  v15 = [(_NIRangingPeer *)v9 secureRangingKeyID];
  if (v15)
  {
    v5 = [(_NIRangingPeer *)self secureRangingKeyID];
    v6 = [(_NIRangingPeer *)v9 secureRangingKeyID];
    if ([v5 isEqualToData:v6])
    {
      v12 = 1;
      goto LABEL_16;
    }
  }

  v16 = [(_NIRangingPeer *)v9 secureRangingKeyID];
  if (v16)
  {

    v12 = 0;
    if (v15)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = [(_NIRangingPeer *)self secureRangingKeyID];
    v12 = v17 == 0;

    if (v15)
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
    v13 = 0;
    goto LABEL_21;
  }

LABEL_22:
  if (v10)
  {
  }

LABEL_25:
  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(_NIRangingPeer *)self isEqualToPeer:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)hexStringMacAddressFromData:(id)a3
{
  *&v5.octet[4] = 0;
  *v5.octet = 0;
  [a3 getBytes:&v5 length:6];
  v3 = [NSString stringWithUTF8String:ether_ntoa(&v5)];

  return v3;
}

@end