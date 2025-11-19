@interface SFActivityAdvertisement
- (id)description;
@end

@implementation SFActivityAdvertisement

- (id)description
{
  v3 = objc_opt_class();
  v14 = NSStringFromClass(v3);
  v16 = [(SFActivityAdvertisement *)self device];
  v4 = [v16 uniqueID];
  v15 = [(SFActivityAdvertisement *)self advertisementPayload];
  v5 = SFAdvertisementDescriptionFromPayloadData();
  v6 = [(SFActivityAdvertisement *)self options];
  v7 = SFCompactStringFromCollection();
  v8 = [(SFActivityAdvertisement *)self device];
  v9 = [v8 name];
  v10 = [(SFActivityAdvertisement *)self device];
  v11 = [v10 modelIdentifier];
  v12 = [NSString stringWithFormat:@"<%@: %p, deviceUniqueID:%@, advertisementPayload:%@, options:%@, deviceName:%@, deviceModelIdentifier:%@>", v14, self, v4, v5, v7, v9, v11];

  return v12;
}

@end