@interface HAPBLEPeripheral
+ (id)uuidForBTLEPeripheral:(id)peripheral;
- (BOOL)isEqual:(id)equal;
- (HAPBLEPeripheral)initWithName:(id)name peripheralUUID:(id)d identifier:(id)identifier;
- (NSArray)peripheralUUIDs;
- (id)shortDescription;
- (unint64_t)hash;
- (void)connectedToCBPeripheral:(id)peripheral error:(id)error;
- (void)disconnectedFromCBPeripheral:(id)peripheral shouldRemove:(BOOL)remove;
- (void)mergeWithPeripheral:(id)peripheral;
@end

@implementation HAPBLEPeripheral

- (HAPBLEPeripheral)initWithName:(id)name peripheralUUID:(id)d identifier:(id)identifier
{
  nameCopy = name;
  dCopy = d;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = HAPBLEPeripheral;
  v12 = [(HAPBLEPeripheral *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, name);
    objc_storeStrong(&v13->_identifier, identifier);
    v21 = dCopy;
    v14 = [NSArray arrayWithObjects:&v21 count:1];
    v15 = [v14 mutableCopy];
    cbPeripheralUUIDs = v13->_cbPeripheralUUIDs;
    v13->_cbPeripheralUUIDs = v15;

    v17 = [objc_opt_class() uuidForBTLEPeripheral:v13];
    uniqueBTIdentifier = v13->_uniqueBTIdentifier;
    v13->_uniqueBTIdentifier = v17;

    v13->_lastSeen = CFAbsoluteTimeGetCurrent();
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
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
    if (v6 && ([(HAPBLEPeripheral *)self identifier], v7 = objc_claimAutoreleasedReturnValue(), [(HAPBLEPeripheral *)v6 identifier], v8 = objc_claimAutoreleasedReturnValue(), v9 = HMFEqualObjects(), v8, v7, v9))
    {
      uniqueBTIdentifier = [(HAPBLEPeripheral *)self uniqueBTIdentifier];
      uniqueBTIdentifier2 = [(HAPBLEPeripheral *)v6 uniqueBTIdentifier];
      v12 = HMFEqualObjects();
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  identifier = [(HAPBLEPeripheral *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)shortDescription
{
  name = [(HAPBLEPeripheral *)self name];
  identifier = [(HAPBLEPeripheral *)self identifier];
  [(HAPBLEPeripheral *)self isCached];
  v4 = HMFBooleanToString();
  peripheralUUIDs = [(HAPBLEPeripheral *)self peripheralUUIDs];
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [peripheralUUIDs count]);
  cbPeripheral = [(HAPBLEPeripheral *)self cbPeripheral];
  identifier2 = [cbPeripheral identifier];
  cbPeripheral2 = [(HAPBLEPeripheral *)self cbPeripheral];
  cbPeripheral3 = [(HAPBLEPeripheral *)self cbPeripheral];
  v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [cbPeripheral3 state]);
  v11 = [NSString stringWithFormat:@"%@/%@ (%@) periph[%@] -> %@ (%p: %@)", name, identifier, v4, v5, identifier2, cbPeripheral2, v10];

  return v11;
}

- (NSArray)peripheralUUIDs
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_cbPeripheralUUIDs copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)mergeWithPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  if (self == peripheralCopy)
  {
    goto LABEL_37;
  }

  identifier = [(HAPBLEPeripheral *)self identifier];
  identifier2 = [(HAPBLEPeripheral *)peripheralCopy identifier];
  v7 = [identifier isEqualToString:identifier2];

  if (!v7)
  {
    goto LABEL_37;
  }

  [(HAPBLEPeripheral *)peripheralCopy lastSeen];
  v9 = v8;
  [(HAPBLEPeripheral *)self lastSeen];
  v11 = v10;
  if (v9 > v10)
  {
    [(HAPBLEPeripheral *)peripheralCopy lastSeen];
    [(HAPBLEPeripheral *)self setLastSeen:?];
    [(HAPBLEPeripheral *)self setIsCached:[(HAPBLEPeripheral *)peripheralCopy isCached]];
    cbPeripheral = [(HAPBLEPeripheral *)peripheralCopy cbPeripheral];
    if (cbPeripheral)
    {
      v13 = cbPeripheral;
      cbPeripheral2 = [(HAPBLEPeripheral *)self cbPeripheral];

      if (!cbPeripheral2)
      {
        selfCopy = self;
        v16 = sub_10007FAA0();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = sub_10007FAFC(selfCopy);
          shortDescription = [(HAPBLEPeripheral *)selfCopy shortDescription];
          cbPeripheral3 = [(HAPBLEPeripheral *)peripheralCopy cbPeripheral];
          *buf = 138543874;
          v58 = v17;
          v59 = 2112;
          v60 = shortDescription;
          v61 = 2112;
          v62 = cbPeripheral3;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%{public}@Updating the BLE peripheral: %@ with CBPeripheral: %@", buf, 0x20u);
        }

        cbPeripheral4 = [(HAPBLEPeripheral *)peripheralCopy cbPeripheral];
        [(HAPBLEPeripheral *)selfCopy setCbPeripheral:cbPeripheral4];
      }
    }
  }

  identifier3 = [(HAPBLEPeripheral *)peripheralCopy identifier];
  v22 = identifier3;
  if (v9 <= v11 && identifier3)
  {
    identifier4 = [(HAPBLEPeripheral *)self identifier];

    if (!identifier4)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (v22)
    {
LABEL_14:
      identifier5 = [(HAPBLEPeripheral *)peripheralCopy identifier];
      [(HAPBLEPeripheral *)self setIdentifier:identifier5];
    }
  }

  name = [(HAPBLEPeripheral *)self name];
  v26 = [name length];
  name2 = [(HAPBLEPeripheral *)peripheralCopy name];
  v28 = [name2 length];

  if (v26 < v28)
  {
    name3 = [(HAPBLEPeripheral *)peripheralCopy name];
    [(HAPBLEPeripheral *)self setName:name3];
  }

  peripheralUUIDs = [(HAPBLEPeripheral *)peripheralCopy peripheralUUIDs];
  if (peripheralUUIDs)
  {
    v31 = peripheralUUIDs;
    peripheralUUIDs2 = [(HAPBLEPeripheral *)self peripheralUUIDs];
    peripheralUUIDs3 = [(HAPBLEPeripheral *)peripheralCopy peripheralUUIDs];
    v34 = [peripheralUUIDs2 isEqual:peripheralUUIDs3];

    if ((v34 & 1) == 0)
    {
      if (v9 <= v11)
      {
        selfCopy2 = peripheralCopy;
      }

      else
      {
        selfCopy2 = self;
      }

      if (v9 <= v11)
      {
        selfCopy3 = self;
      }

      else
      {
        selfCopy3 = peripheralCopy;
      }

      peripheralUUIDs4 = [(HAPBLEPeripheral *)selfCopy2 peripheralUUIDs];
      v38 = [peripheralUUIDs4 mutableCopy];

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      peripheralUUIDs5 = [(HAPBLEPeripheral *)selfCopy3 peripheralUUIDs];
      v40 = [peripheralUUIDs5 countByEnumeratingWithState:&v52 objects:v56 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v53;
        do
        {
          for (i = 0; i != v41; i = i + 1)
          {
            if (*v53 != v42)
            {
              objc_enumerationMutation(peripheralUUIDs5);
            }

            v44 = *(*(&v52 + 1) + 8 * i);
            [(NSMutableArray *)v38 removeObject:v44];
            [(NSMutableArray *)v38 addObject:v44];
          }

          v41 = [peripheralUUIDs5 countByEnumeratingWithState:&v52 objects:v56 count:16];
        }

        while (v41);
      }

      cbPeripheral5 = [(HAPBLEPeripheral *)self cbPeripheral];
      state = [cbPeripheral5 state];

      if (state)
      {
        cbPeripheral6 = [(HAPBLEPeripheral *)self cbPeripheral];
        identifier6 = [cbPeripheral6 identifier];
        [(NSMutableArray *)v38 removeObject:identifier6];

        cbPeripheral7 = [(HAPBLEPeripheral *)self cbPeripheral];
        identifier7 = [cbPeripheral7 identifier];
        [(NSMutableArray *)v38 addObject:identifier7];
      }

      if ([(NSMutableArray *)v38 count]>= 6)
      {
        [(NSMutableArray *)v38 removeObjectsInRange:0, [(NSMutableArray *)v38 count]- 5];
      }

      os_unfair_lock_lock_with_options();
      cbPeripheralUUIDs = self->_cbPeripheralUUIDs;
      self->_cbPeripheralUUIDs = v38;

      os_unfair_lock_unlock(&self->_lock);
    }
  }

LABEL_37:
}

- (void)connectedToCBPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  v7 = peripheralCopy;
  if (errorCopy)
  {
    os_unfair_lock_lock_with_options();
    cbPeripheral = [(HAPBLEPeripheral *)self cbPeripheral];

    if (cbPeripheral)
    {
      cbPeripheralUUIDs = self->_cbPeripheralUUIDs;
      cbPeripheral2 = [(HAPBLEPeripheral *)self cbPeripheral];
      identifier = [cbPeripheral2 identifier];
      [(NSMutableArray *)cbPeripheralUUIDs removeObject:identifier];
    }

    if (peripheralCopy)
    {
      v12 = self->_cbPeripheralUUIDs;
      identifier2 = [peripheralCopy identifier];
      [(NSMutableArray *)v12 removeObject:identifier2];
    }

    os_unfair_lock_unlock(&self->_lock);
    v7 = 0;
  }

  [(HAPBLEPeripheral *)self setCbPeripheral:v7];
}

- (void)disconnectedFromCBPeripheral:(id)peripheral shouldRemove:(BOOL)remove
{
  removeCopy = remove;
  peripheralCopy = peripheral;
  [(HAPBLEPeripheral *)self setCbPeripheral:0];
  if (peripheralCopy && removeCopy)
  {
    os_unfair_lock_lock_with_options();
    cbPeripheralUUIDs = self->_cbPeripheralUUIDs;
    identifier = [peripheralCopy identifier];
    [(NSMutableArray *)cbPeripheralUUIDs removeObject:identifier];

    os_unfair_lock_unlock(&self->_lock);
  }
}

+ (id)uuidForBTLEPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  uniqueBTIdentifier = [peripheralCopy uniqueBTIdentifier];

  if (uniqueBTIdentifier)
  {
    uniqueBTIdentifier2 = [peripheralCopy uniqueBTIdentifier];
  }

  else
  {
    peripheralUUIDs = [peripheralCopy peripheralUUIDs];

    uniqueBTIdentifier2 = [peripheralUUIDs lastObject];
    peripheralCopy = peripheralUUIDs;
  }

  return uniqueBTIdentifier2;
}

@end