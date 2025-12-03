@interface SFActivityAdvertisement
- (id)description;
@end

@implementation SFActivityAdvertisement

- (id)description
{
  v3 = objc_opt_class();
  v14 = NSStringFromClass(v3);
  device = [(SFActivityAdvertisement *)self device];
  uniqueID = [device uniqueID];
  advertisementPayload = [(SFActivityAdvertisement *)self advertisementPayload];
  v5 = SFAdvertisementDescriptionFromPayloadData();
  options = [(SFActivityAdvertisement *)self options];
  v7 = SFCompactStringFromCollection();
  device2 = [(SFActivityAdvertisement *)self device];
  name = [device2 name];
  device3 = [(SFActivityAdvertisement *)self device];
  modelIdentifier = [device3 modelIdentifier];
  v12 = [NSString stringWithFormat:@"<%@: %p, deviceUniqueID:%@, advertisementPayload:%@, options:%@, deviceName:%@, deviceModelIdentifier:%@>", v14, self, uniqueID, v5, v7, name, modelIdentifier];

  return v12;
}

@end