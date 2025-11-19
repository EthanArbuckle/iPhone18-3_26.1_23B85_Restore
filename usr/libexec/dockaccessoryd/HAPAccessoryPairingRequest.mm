@interface HAPAccessoryPairingRequest
- (BOOL)isEqual:(id)a3;
- (id)attributeDescriptions;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation HAPAccessoryPairingRequest

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

  v7 = [(HAPAccessoryPairingRequest *)self pairingIdentity];
  v8 = [v6 pairingIdentity];
  v9 = HMFEqualObjects();

  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = [(HAPAccessoryPairingRequest *)self requiresUserConsent];
  if (v10 != [v6 requiresUserConsent])
  {
    goto LABEL_12;
  }

  v11 = [(HAPAccessoryPairingRequest *)self ownershipToken];
  v12 = [v6 ownershipToken];
  v13 = HMFEqualObjects();

  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = [(HAPAccessoryPairingRequest *)self ssid];
  v15 = [v6 ssid];
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

  v20 = [(HAPAccessoryPairingRequest *)self isoCountryCode];
  v21 = [v6 isoCountryCode];
  v22 = HMFEqualObjects();

  if (v22)
  {
    v23 = [(HAPAccessoryPairingRequest *)self chipFabricIndex];
    v24 = [v6 chipFabricIndex];
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
  v3 = [(HAPAccessoryPairingRequest *)self pairingIdentity];
  v4 = [v3 hash];

  v5 = [(HAPAccessoryPairingRequest *)self requiresUserConsent];
  v6 = [(HAPAccessoryPairingRequest *)self ownershipToken];
  v7 = v4 ^ [v6 hash] ^ v5;

  v8 = [(HAPAccessoryPairingRequest *)self ssid];
  v9 = [v8 hash];

  v10 = [(HAPAccessoryPairingRequest *)self psk];
  v11 = v9 ^ [v10 hash];

  v12 = [(HAPAccessoryPairingRequest *)self isoCountryCode];
  v13 = v7 ^ v11 ^ [v12 hash];

  v14 = [(HAPAccessoryPairingRequest *)self chipFabricIndex];
  v15 = [v14 hash];

  return v13 ^ v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[HAPAccessoryPairingRequest allocWithZone:?]];
  v5 = [(HAPAccessoryPairingRequest *)self pairingIdentity];
  [(HAPAccessoryPairingRequest *)v4 setPairingIdentity:v5];

  [(HAPAccessoryPairingRequest *)v4 setRequiresUserConsent:[(HAPAccessoryPairingRequest *)self requiresUserConsent]];
  v6 = [(HAPAccessoryPairingRequest *)self ownershipToken];
  [(HAPAccessoryPairingRequest *)v4 setOwnershipToken:v6];

  v7 = [(HAPAccessoryPairingRequest *)self ssid];
  [(HAPAccessoryPairingRequest *)v4 setSsid:v7];

  v8 = [(HAPAccessoryPairingRequest *)self psk];
  [(HAPAccessoryPairingRequest *)v4 setPsk:v8];

  v9 = [(HAPAccessoryPairingRequest *)self isoCountryCode];
  [(HAPAccessoryPairingRequest *)v4 setIsoCountryCode:v9];

  v10 = [(HAPAccessoryPairingRequest *)self chipFabricIndex];
  [(HAPAccessoryPairingRequest *)v4 setChipFabricIndex:v10];

  return v4;
}

- (id)attributeDescriptions
{
  v3 = +[NSMutableArray array];
  v4 = [(HAPAccessoryPairingRequest *)self pairingIdentity];

  if (v4)
  {
    v5 = [HMFAttributeDescription alloc];
    v6 = [(HAPAccessoryPairingRequest *)self pairingIdentity];
    v7 = [v5 initWithName:@"Pairing Identity" value:v6];
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

  v11 = [(HAPAccessoryPairingRequest *)self ownershipToken];

  if (v11)
  {
    v12 = [HMFAttributeDescription alloc];
    v13 = [(HAPAccessoryPairingRequest *)self ownershipToken];
    v14 = [v12 initWithName:@"Ownership Token" value:v13];
    [v3 addObject:v14];
  }

  v15 = [(HAPAccessoryPairingRequest *)self ssid];

  if (v15)
  {
    v16 = [HMFAttributeDescription alloc];
    v17 = [(HAPAccessoryPairingRequest *)self ssid];
    v18 = [v16 initWithName:@"SSID" value:v17];
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

  v23 = [(HAPAccessoryPairingRequest *)self isoCountryCode];

  if (v23)
  {
    v24 = [HMFAttributeDescription alloc];
    v25 = [(HAPAccessoryPairingRequest *)self isoCountryCode];
    v26 = [v24 initWithName:@"ISO Country Code" value:v25];
    [v3 addObject:v26];
  }

  v27 = [(HAPAccessoryPairingRequest *)self chipFabricIndex];

  if (v27)
  {
    v28 = [HMFAttributeDescription alloc];
    v29 = [(HAPAccessoryPairingRequest *)self chipFabricIndex];
    v30 = [v28 initWithName:@"CHIP Fabric Index" value:v29];
    [v3 addObject:v30];
  }

  v31 = [v3 copy];

  return v31;
}

@end