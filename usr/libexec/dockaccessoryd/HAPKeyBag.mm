@interface HAPKeyBag
+ (id)logCategory;
- (BOOL)isEmpty;
- (BOOL)isValidIndex:(int64_t)index;
- (HAPKeyBag)initWithAccessoryIdentifier:(id)identifier keyStore:(id)store;
- (HAPKeyBag)initWithAccessoryIdentifier:(id)identifier keyStore:(id)store controllerKeyList:(id)list;
- (HAPKeyStore)keyStore;
- (id)_populateBagWithPairingIdentitiesForAccessory:(id)accessory fromStore:(id)store;
- (id)currentIdentity;
- (id)logIdentifier;
- (id)nextIdentity;
- (int64_t)getCurrentIndexInBag;
- (unint64_t)totalIdentities;
- (void)refreshKeys;
- (void)setCurrentIndexInBag:(int64_t)bag;
@end

@implementation HAPKeyBag

- (HAPKeyBag)initWithAccessoryIdentifier:(id)identifier keyStore:(id)store
{
  identifierCopy = identifier;
  storeCopy = store;
  if (identifierCopy)
  {
    v8 = storeCopy;
    v9 = [(HAPKeyBag *)self _populateBagWithPairingIdentitiesForAccessory:identifierCopy fromStore:storeCopy];
    v10 = [(HAPKeyBag *)self initWithAccessoryIdentifier:identifierCopy keyStore:v8 controllerKeyList:v9];

    return v10;
  }

  else
  {
    v12 = sub_1001F8A90();
    return [(HAPKeyBag *)v12 initWithAccessoryIdentifier:v13 keyStore:v14 controllerKeyList:v15, v16];
  }
}

- (HAPKeyBag)initWithAccessoryIdentifier:(id)identifier keyStore:(id)store controllerKeyList:(id)list
{
  identifierCopy = identifier;
  storeCopy = store;
  listCopy = list;
  if (!identifierCopy)
  {
    sub_1001F8A90();
  }

  v12 = listCopy;
  v24.receiver = self;
  v24.super_class = HAPKeyBag;
  v13 = [(HAPKeyBag *)&v24 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_accessoryIdentifier, identifier);
    objc_storeWeak(&v14->_keyStore, storeCopy);
    v14->_currentIndexInBag = -1;
    v15 = [v12 copy];
    availableKeysToTry = v14->_availableKeysToTry;
    v14->_availableKeysToTry = v15;

    v17 = v14;
    v18 = sub_10007FAA0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = sub_10007FAFC(v17);
      accessoryIdentifier = v14->_accessoryIdentifier;
      v21 = [NSNumber numberWithUnsignedInteger:[(NSArray *)v14->_availableKeysToTry count]];
      firstObject = [(NSArray *)v14->_availableKeysToTry firstObject];
      *buf = 138544130;
      v26 = v19;
      v27 = 2112;
      v28 = accessoryIdentifier;
      v29 = 2112;
      v30 = v21;
      v31 = 2112;
      v32 = firstObject;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%{public}@Initialized key bag for accessory [%@] with %@ keys and primary identity: [%@]", buf, 0x2Au);
    }
  }

  return v14;
}

- (void)refreshKeys
{
  accessoryIdentifier = [(HAPKeyBag *)self accessoryIdentifier];

  if (!accessoryIdentifier)
  {
    sub_1001F8AC0();
    goto LABEL_11;
  }

  keyStore = [(HAPKeyBag *)self keyStore];

  if (!keyStore)
  {
    sub_1001F8AA8();
LABEL_11:
    __break(1u);
  }

  accessoryIdentifier2 = [(HAPKeyBag *)self accessoryIdentifier];
  keyStore2 = [(HAPKeyBag *)self keyStore];
  v7 = [(HAPKeyBag *)self _populateBagWithPairingIdentitiesForAccessory:accessoryIdentifier2 fromStore:keyStore2];

  os_unfair_lock_lock_with_options();
  availableKeysToTry = self->_availableKeysToTry;
  if (HMFEqualObjects())
  {
    self->_currentIndexInBag = -1;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v9 = [v7 copy];
    v10 = self->_availableKeysToTry;
    self->_availableKeysToTry = v9;

    self->_currentIndexInBag = -1;
    os_unfair_lock_unlock(&self->_lock);
    selfCopy = self;
    v12 = sub_10007FAA0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = sub_10007FAFC(selfCopy);
      accessoryIdentifier3 = [(HAPKeyBag *)selfCopy accessoryIdentifier];
      v15 = 138543874;
      v16 = v13;
      v17 = 2112;
      v18 = accessoryIdentifier3;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@Refreshed key bag for accessory [%@] with identities: [%@]", &v15, 0x20u);
    }
  }
}

- (id)_populateBagWithPairingIdentitiesForAccessory:(id)accessory fromStore:(id)store
{
  accessoryCopy = accessory;
  storeCopy = store;
  v8 = objc_autoreleasePoolPush();
  allAccessoryPairingKeys = [storeCopy allAccessoryPairingKeys];
  v10 = allAccessoryPairingKeys;
  if (allAccessoryPairingKeys)
  {
    v11 = allAccessoryPairingKeys;
  }

  else
  {
    v11 = &__NSArray0__struct;
  }

  v12 = [NSMutableArray arrayWithArray:v11];

  v13 = [storeCopy getAssociatedControllerKeyForAccessory:accessoryCopy];
  if (v13 || ([storeCopy readControllerPairingKeyForAccessory:accessoryCopy error:0], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = v13;
    [v12 removeObject:v13];
    [v12 insertObject:v14 atIndex:0];
  }

  if ([v12 hmf_isEmpty])
  {
    selfCopy = self;
    v16 = sub_10007FAA0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = sub_10007FAFC(selfCopy);
      v20 = 138543362;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@This is strange. We do not have any controller keys in the key chain.", &v20, 0xCu);
    }
  }

  v18 = [v12 copy];

  objc_autoreleasePoolPop(v8);

  return v18;
}

- (int64_t)getCurrentIndexInBag
{
  os_unfair_lock_lock_with_options();
  currentIndexInBag = self->_currentIndexInBag;
  os_unfair_lock_unlock(&self->_lock);
  return currentIndexInBag;
}

- (void)setCurrentIndexInBag:(int64_t)bag
{
  os_unfair_lock_lock_with_options();
  self->_currentIndexInBag = bag;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isValidIndex:(int64_t)index
{
  if (index < 0)
  {
    return 0;
  }

  availableKeysToTry = [(HAPKeyBag *)self availableKeysToTry];
  v5 = [availableKeysToTry count] > index;

  return v5;
}

- (id)nextIdentity
{
  if ([(HAPKeyBag *)self isEmpty])
  {
    currentIdentity = 0;
  }

  else
  {
    [(HAPKeyBag *)self setCurrentIndexInBag:[(HAPKeyBag *)self currentIndexInBag]+ 1];
    currentIdentity = [(HAPKeyBag *)self currentIdentity];
    selfCopy = self;
    v5 = sub_10007FAA0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = sub_10007FAFC(selfCopy);
      v7 = [NSNumber numberWithInteger:[(HAPKeyBag *)selfCopy currentIndexInBag]];
      availableKeysToTry = [(HAPKeyBag *)selfCopy availableKeysToTry];
      v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [availableKeysToTry count]);
      v11 = 138544130;
      v12 = v6;
      v13 = 2112;
      v14 = currentIdentity;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Fetching Identity [%@] at index : %@, total keys: [%@]", &v11, 0x2Au);
    }
  }

  return currentIdentity;
}

- (id)currentIdentity
{
  if ([(HAPKeyBag *)self currentIndexInBag]== -1)
  {
    [(HAPKeyBag *)self setCurrentIndexInBag:[(HAPKeyBag *)self currentIndexInBag]+ 1];
  }

  if ([(HAPKeyBag *)self isValidIndex:[(HAPKeyBag *)self currentIndexInBag]])
  {
    availableKeysToTry = [(HAPKeyBag *)self availableKeysToTry];
    v4 = [availableKeysToTry objectAtIndex:{-[HAPKeyBag currentIndexInBag](self, "currentIndexInBag")}];

    selfCopy = self;
    v6 = sub_10007FAA0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = sub_10007FAFC(selfCopy);
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Current Identity [%@]", &v9, 0x16u);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEmpty
{
  availableKeysToTry = [(HAPKeyBag *)self availableKeysToTry];
  hmf_isEmpty = [availableKeysToTry hmf_isEmpty];

  return hmf_isEmpty;
}

- (unint64_t)totalIdentities
{
  availableKeysToTry = [(HAPKeyBag *)self availableKeysToTry];
  v3 = [availableKeysToTry count];

  return v3;
}

- (id)logIdentifier
{
  v3 = objc_opt_class();
  accessoryIdentifier = [(HAPKeyBag *)self accessoryIdentifier];
  v5 = [NSNumber numberWithInteger:[(HAPKeyBag *)self getCurrentIndexInBag]];
  v6 = [NSNumber numberWithUnsignedInteger:[(HAPKeyBag *)self totalIdentities]];
  v7 = [NSString stringWithFormat:@"%@ %@ (%@/%@)", v3, accessoryIdentifier, v5, v6];

  return v7;
}

+ (id)logCategory
{
  if (qword_1002ACC60 != -1)
  {
    sub_1001F8AD8();
  }

  v3 = qword_1002ACC68;

  return v3;
}

- (HAPKeyStore)keyStore
{
  WeakRetained = objc_loadWeakRetained(&self->_keyStore);

  return WeakRetained;
}

@end