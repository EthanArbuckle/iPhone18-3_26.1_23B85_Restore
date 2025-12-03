@interface HAPAccessoryPairingRequest
- (BOOL)isEqual:(id)equal;
- (id)attributeDescriptions;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation HAPAccessoryPairingRequest

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (!v6)
  {
    goto LABEL_12;
  }

  pairingIdentity = [(HAPAccessoryPairingRequest *)self pairingIdentity];
  pairingIdentity2 = [v6 pairingIdentity];
  v9 = HMFEqualObjects();

  if (!v9)
  {
    goto LABEL_12;
  }

  requiresUserConsent = [(HAPAccessoryPairingRequest *)self requiresUserConsent];
  if (requiresUserConsent != [v6 requiresUserConsent])
  {
    goto LABEL_12;
  }

  ownershipToken = [(HAPAccessoryPairingRequest *)self ownershipToken];
  ownershipToken2 = [v6 ownershipToken];
  v13 = HMFEqualObjects();

  if (!v13)
  {
    goto LABEL_12;
  }

  ssid = [(HAPAccessoryPairingRequest *)self ssid];
  ssid2 = [v6 ssid];
  v16 = HMFEqualObjects();

  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = [(HAPAccessoryPairingRequest *)self psk];
  v18 = [v6 psk];
  v19 = HMFEqualObjects();

  if (!v19)
  {
    goto LABEL_12;
  }

  isoCountryCode = [(HAPAccessoryPairingRequest *)self isoCountryCode];
  isoCountryCode2 = [v6 isoCountryCode];
  v22 = HMFEqualObjects();

  if (v22)
  {
    chipFabricIndex = [(HAPAccessoryPairingRequest *)self chipFabricIndex];
    chipFabricIndex2 = [v6 chipFabricIndex];
    v25 = HMFEqualObjects();
  }

  else
  {
LABEL_12:
    v25 = 0;
  }

  return v25;
}

- (unint64_t)hash
{
  pairingIdentity = [(HAPAccessoryPairingRequest *)self pairingIdentity];
  v4 = [pairingIdentity hash];

  requiresUserConsent = [(HAPAccessoryPairingRequest *)self requiresUserConsent];
  ownershipToken = [(HAPAccessoryPairingRequest *)self ownershipToken];
  v7 = v4 ^ [ownershipToken hash] ^ requiresUserConsent;

  ssid = [(HAPAccessoryPairingRequest *)self ssid];
  v9 = [ssid hash];

  v10 = [(HAPAccessoryPairingRequest *)self psk];
  v11 = v9 ^ [v10 hash];

  isoCountryCode = [(HAPAccessoryPairingRequest *)self isoCountryCode];
  v13 = v7 ^ v11 ^ [isoCountryCode hash];

  chipFabricIndex = [(HAPAccessoryPairingRequest *)self chipFabricIndex];
  v15 = [chipFabricIndex hash];

  return v13 ^ v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[HAPAccessoryPairingRequest allocWithZone:?]];
  pairingIdentity = [(HAPAccessoryPairingRequest *)self pairingIdentity];
  [(HAPAccessoryPairingRequest *)v4 setPairingIdentity:pairingIdentity];

  [(HAPAccessoryPairingRequest *)v4 setRequiresUserConsent:[(HAPAccessoryPairingRequest *)self requiresUserConsent]];
  ownershipToken = [(HAPAccessoryPairingRequest *)self ownershipToken];
  [(HAPAccessoryPairingRequest *)v4 setOwnershipToken:ownershipToken];

  ssid = [(HAPAccessoryPairingRequest *)self ssid];
  [(HAPAccessoryPairingRequest *)v4 setSsid:ssid];

  v8 = [(HAPAccessoryPairingRequest *)self psk];
  [(HAPAccessoryPairingRequest *)v4 setPsk:v8];

  isoCountryCode = [(HAPAccessoryPairingRequest *)self isoCountryCode];
  [(HAPAccessoryPairingRequest *)v4 setIsoCountryCode:isoCountryCode];

  chipFabricIndex = [(HAPAccessoryPairingRequest *)self chipFabricIndex];
  [(HAPAccessoryPairingRequest *)v4 setChipFabricIndex:chipFabricIndex];

  return v4;
}

- (id)attributeDescriptions
{
  v3 = +[NSMutableArray array];
  pairingIdentity = [(HAPAccessoryPairingRequest *)self pairingIdentity];

  if (pairingIdentity)
  {
    v5 = [HMFAttributeDescription alloc];
    pairingIdentity2 = [(HAPAccessoryPairingRequest *)self pairingIdentity];
    v7 = [v5 initWithName:@"Pairing Identity" value:pairingIdentity2];
    [v3 addObject:v7];
  }

  if ([(HAPAccessoryPairingRequest *)self requiresUserConsent])
  {
    v8 = [HMFAttributeDescription alloc];
    [(HAPAccessoryPairingRequest *)self requiresUserConsent];
    v9 = HMFBooleanToString();
    v10 = [v8 initWithName:@"Requires User Consent" value:v9];
    [v3 addObject:v10];
  }

  ownershipToken = [(HAPAccessoryPairingRequest *)self ownershipToken];

  if (ownershipToken)
  {
    v12 = [HMFAttributeDescription alloc];
    ownershipToken2 = [(HAPAccessoryPairingRequest *)self ownershipToken];
    v14 = [v12 initWithName:@"Ownership Token" value:ownershipToken2];
    [v3 addObject:v14];
  }

  ssid = [(HAPAccessoryPairingRequest *)self ssid];

  if (ssid)
  {
    v16 = [HMFAttributeDescription alloc];
    ssid2 = [(HAPAccessoryPairingRequest *)self ssid];
    v18 = [v16 initWithName:@"SSID" value:ssid2];
    [v3 addObject:v18];
  }

  v19 = [(HAPAccessoryPairingRequest *)self psk];

  if (v19)
  {
    v20 = [HMFAttributeDescription alloc];
    v21 = [(HAPAccessoryPairingRequest *)self psk];
    v22 = [v20 initWithName:@"PSK" value:v21];
    [v3 addObject:v22];
  }

  isoCountryCode = [(HAPAccessoryPairingRequest *)self isoCountryCode];

  if (isoCountryCode)
  {
    v24 = [HMFAttributeDescription alloc];
    isoCountryCode2 = [(HAPAccessoryPairingRequest *)self isoCountryCode];
    v26 = [v24 initWithName:@"ISO Country Code" value:isoCountryCode2];
    [v3 addObject:v26];
  }

  chipFabricIndex = [(HAPAccessoryPairingRequest *)self chipFabricIndex];

  if (chipFabricIndex)
  {
    v28 = [HMFAttributeDescription alloc];
    chipFabricIndex2 = [(HAPAccessoryPairingRequest *)self chipFabricIndex];
    v30 = [v28 initWithName:@"CHIP Fabric Index" value:chipFabricIndex2];
    [v3 addObject:v30];
  }

  v31 = [v3 copy];

  return v31;
}

@end