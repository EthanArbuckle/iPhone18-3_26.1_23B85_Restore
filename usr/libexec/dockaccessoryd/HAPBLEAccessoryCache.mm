@interface HAPBLEAccessoryCache
- (BOOL)isEqual:(id)equal;
- (HAPBLEAccessoryCache)initWithCoder:(id)coder;
- (HAPBLEAccessoryCache)initWithPairingIdentifier:(id)identifier saveBlock:(id)block;
- (id)description;
- (id)getCachedServiceWithUUID:(id)d;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)save;
- (void)setLastKeyBagIdentityIndexFailingPV:(id)v;
- (void)updateCurrentPairingIdentityIndexIfNeededForKeyBag:(id)bag;
- (void)updateWithPeripheralInfo:(id)info;
- (void)updateWithService:(id)service;
@end

@implementation HAPBLEAccessoryCache

- (HAPBLEAccessoryCache)initWithPairingIdentifier:(id)identifier saveBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = HAPBLEAccessoryCache;
  v9 = [(HAPBLEAccessoryCache *)&v17 init];
  if (v9)
  {
    v10 = sub_100014948();
    metadataVersion = v9->_metadataVersion;
    v9->_metadataVersion = v10;

    objc_storeStrong(&v9->_pairingIdentifier, identifier);
    v12 = +[NSMutableArray array];
    cachedServices = v9->_cachedServices;
    v9->_cachedServices = v12;

    v14 = objc_retainBlock(blockCopy);
    saveBlock = v9->_saveBlock;
    v9->_saveBlock = v14;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      pairingIdentifier = [(HAPBLEAccessoryCache *)self pairingIdentifier];
      pairingIdentifier2 = [(HAPBLEAccessoryCache *)v5 pairingIdentifier];

      v8 = [pairingIdentifier isEqual:pairingIdentifier2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  pairingIdentifier = [(HAPBLEAccessoryCache *)self pairingIdentifier];
  v3 = [pairingIdentifier hash];

  return v3;
}

- (void)updateWithPeripheralInfo:(id)info
{
  infoCopy = info;
  peripheralInfo = [(HAPBLEAccessoryCache *)self peripheralInfo];
  accessoryName = [peripheralInfo accessoryName];

  [(HAPBLEAccessoryCache *)self setPeripheralInfo:infoCopy];
  peripheralInfo2 = [(HAPBLEAccessoryCache *)self peripheralInfo];
  [peripheralInfo2 updateAccessoryName:accessoryName];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  pairingIdentifier = [(HAPBLEAccessoryCache *)self pairingIdentifier];
  [coderCopy encodeObject:pairingIdentifier forKey:@"PI"];

  peripheralInfo = [(HAPBLEAccessoryCache *)self peripheralInfo];
  [coderCopy encodeObject:peripheralInfo forKey:@"PIN"];

  cachedServices = [(HAPBLEAccessoryCache *)self cachedServices];
  [coderCopy encodeObject:cachedServices forKey:@"CS"];

  metadataVersion = [(HAPBLEAccessoryCache *)self metadataVersion];
  [coderCopy encodeObject:metadataVersion forKey:@"MV"];

  lastKeyBagIdentityIndexFailingPV = [(HAPBLEAccessoryCache *)self lastKeyBagIdentityIndexFailingPV];
  [coderCopy encodeObject:lastKeyBagIdentityIndexFailingPV forKey:@"PVX"];

  [coderCopy encodeInteger:-[HAPBLEAccessoryCache discoveryVersion](self forKey:{"discoveryVersion"), @"DV"}];
}

- (HAPBLEAccessoryCache)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = HAPBLEAccessoryCache;
  v5 = [(HAPBLEAccessoryCache *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MV"];
    metadataVersion = v5->_metadataVersion;
    v5->_metadataVersion = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PI"];
    pairingIdentifier = v5->_pairingIdentifier;
    v5->_pairingIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PIN"];
    peripheralInfo = v5->_peripheralInfo;
    v5->_peripheralInfo = v10;

    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v12 = [NSArray arrayWithObjects:v20 count:2];
    v13 = [NSSet setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"CS"];
    cachedServices = v5->_cachedServices;
    v5->_cachedServices = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PVX"];
    lastKeyBagIdentityIndexFailingPV = v5->_lastKeyBagIdentityIndexFailingPV;
    v5->_lastKeyBagIdentityIndexFailingPV = v16;

    v5->_discoveryVersion = [coderCopy decodeIntegerForKey:@"DV"];
  }

  return v5;
}

- (id)getCachedServiceWithUUID:(id)d
{
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  cachedServices = [(HAPBLEAccessoryCache *)self cachedServices];
  v6 = [cachedServices countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(cachedServices);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        serviceUUID = [v9 serviceUUID];
        v11 = [serviceUUID isEqual:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [cachedServices countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)updateWithService:(id)service
{
  serviceCopy = service;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  cachedServices = [(HAPBLEAccessoryCache *)self cachedServices];
  v6 = [cachedServices countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(cachedServices);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([v10 isEqual:serviceCopy])
        {
          [v10 updateWithService:serviceCopy];
          goto LABEL_11;
        }
      }

      v7 = [cachedServices countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  cachedServices = [(HAPBLEAccessoryCache *)self cachedServices];
  [cachedServices addObject:serviceCopy];
LABEL_11:
}

- (void)save
{
  saveBlock = [(HAPBLEAccessoryCache *)self saveBlock];
  if (saveBlock)
  {
    v3 = saveBlock;
    saveBlock[2]();
    saveBlock = v3;
  }
}

- (void)setLastKeyBagIdentityIndexFailingPV:(id)v
{
  vCopy = v;
  lastKeyBagIdentityIndexFailingPV = self->_lastKeyBagIdentityIndexFailingPV;
  v7 = vCopy;
  if ((HMFEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_lastKeyBagIdentityIndexFailingPV, v);
    [(HAPBLEAccessoryCache *)self save];
  }
}

- (void)updateCurrentPairingIdentityIndexIfNeededForKeyBag:(id)bag
{
  bagCopy = bag;
  lastKeyBagIdentityIndexFailingPV = [(HAPBLEAccessoryCache *)self lastKeyBagIdentityIndexFailingPV];

  if (lastKeyBagIdentityIndexFailingPV)
  {
    lastKeyBagIdentityIndexFailingPV2 = [(HAPBLEAccessoryCache *)self lastKeyBagIdentityIndexFailingPV];
    longLongValue = [lastKeyBagIdentityIndexFailingPV2 longLongValue];

    if ([bagCopy isValidIndex:longLongValue + 1])
    {
      selfCopy = self;
      v9 = sub_10007FAA0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = sub_10007FAFC(selfCopy);
        v11 = [NSNumber numberWithInteger:longLongValue + 1];
        pairingIdentifier = [(HAPBLEAccessoryCache *)selfCopy pairingIdentifier];
        v15 = 138543874;
        v16 = v10;
        v17 = 2112;
        v18 = v11;
        v19 = 2112;
        v20 = pairingIdentifier;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@Updating keybag identity index to %@ for %@.", &v15, 0x20u);
      }

      getCurrentIndexInBag = [bagCopy getCurrentIndexInBag];
      [bagCopy setCurrentIndexInBag:longLongValue + 1];
      currentIdentity = [bagCopy currentIdentity];

      if (!currentIdentity)
      {
        [bagCopy setCurrentIndexInBag:getCurrentIndexInBag];
      }
    }
  }
}

- (id)description
{
  cachedServices = [(HAPBLEAccessoryCache *)self cachedServices];
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"\n\nList of Services: %tu\n", [cachedServices count]);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  cachedServices2 = [(HAPBLEAccessoryCache *)self cachedServices];
  v6 = [cachedServices2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      v10 = v4;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(cachedServices2);
        }

        v4 = [v10 stringByAppendingFormat:@"%@", *(*(&v14 + 1) + 8 * v9)];

        v9 = v9 + 1;
        v10 = v4;
      }

      while (v7 != v9);
      v7 = [cachedServices2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  peripheralInfo = [(HAPBLEAccessoryCache *)self peripheralInfo];
  v12 = [NSString stringWithFormat:@"%@ %@", peripheralInfo, v4];

  return v12;
}

@end