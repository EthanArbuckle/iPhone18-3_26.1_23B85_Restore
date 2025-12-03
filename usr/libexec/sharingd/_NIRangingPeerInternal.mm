@interface _NIRangingPeerInternal
- (_NIRangingPeerInternal)initWithMacAddressAsData:(id)data secureRangingKeyID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _NIRangingPeerInternal

- (_NIRangingPeerInternal)initWithMacAddressAsData:(id)data secureRangingKeyID:(id)d
{
  dataCopy = data;
  dCopy = d;
  v15.receiver = self;
  v15.super_class = _NIRangingPeerInternal;
  v8 = [(_NIRangingPeerInternal *)&v15 init];
  if (v8)
  {
    v9 = [dataCopy copy];
    macAddress = v8->_macAddress;
    v8->_macAddress = v9;

    if (v8->_secureRangingKeyID != dCopy)
    {
      v11 = [(NSData *)dCopy copy];
      secureRangingKeyID = v8->_secureRangingKeyID;
      v8->_secureRangingKeyID = v11;
    }

    v13 = v8;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  macAddress = self->_macAddress;
  secureRangingKeyID = self->_secureRangingKeyID;

  return [v4 initWithMacAddressAsData:macAddress secureRangingKeyID:secureRangingKeyID];
}

@end