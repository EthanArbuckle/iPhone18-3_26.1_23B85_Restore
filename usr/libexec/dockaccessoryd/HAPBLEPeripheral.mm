@interface HAPBLEPeripheral
+ (id)uuidForBTLEPeripheral:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HAPBLEPeripheral)initWithName:(id)a3 peripheralUUID:(id)a4 identifier:(id)a5;
- (NSArray)peripheralUUIDs;
- (id)shortDescription;
- (unint64_t)hash;
- (void)connectedToCBPeripheral:(id)a3 error:(id)a4;
- (void)disconnectedFromCBPeripheral:(id)a3 shouldRemove:(BOOL)a4;
- (void)mergeWithPeripheral:(id)a3;
@end

@implementation HAPBLEPeripheral

- (HAPBLEPeripheral)initWithName:(id)a3 peripheralUUID:(id)a4 identifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = HAPBLEPeripheral;
  v12 = [(HAPBLEPeripheral *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, a3);
    objc_storeStrong(&v13->_identifier, a5);
    v21 = v10;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
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
    if (v6 && ([(HAPBLEPeripheral *)self identifier], v7 = objc_claimAutoreleasedReturnValue(), [(HAPBLEPeripheral *)v6 identifier], v8 = objc_claimAutoreleasedReturnValue(), v9 = HMFEqualObjects(), v8, v7, v9))
    {
      v10 = [(HAPBLEPeripheral *)self uniqueBTIdentifier];
      v11 = [(HAPBLEPeripheral *)v6 uniqueBTIdentifier];
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
  v2 = [(HAPBLEPeripheral *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)shortDescription
{
  v13 = [(HAPBLEPeripheral *)self name];
  v3 = [(HAPBLEPeripheral *)self identifier];
  [(HAPBLEPeripheral *)self isCached];
  v4 = HMFBooleanToString();
  v14 = [(HAPBLEPeripheral *)self peripheralUUIDs];
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v14 count]);
  v6 = [(HAPBLEPeripheral *)self cbPeripheral];
  v7 = [v6 identifier];
  v8 = [(HAPBLEPeripheral *)self cbPeripheral];
  v9 = [(HAPBLEPeripheral *)self cbPeripheral];
  v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 state]);
  v11 = [NSString stringWithFormat:@"%@/%@ (%@) periph[%@] -> %@ (%p: %@)", v13, v3, v4, v5, v7, v8, v10];

  return v11;
}

- (NSArray)peripheralUUIDs
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_cbPeripheralUUIDs copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)mergeWithPeripheral:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_37;
  }

  v5 = [(HAPBLEPeripheral *)self identifier];
  v6 = [(HAPBLEPeripheral *)v4 identifier];
  v7 = [v5 isEqualToString:v6];

  if (!v7)
  {
    goto LABEL_37;
  }

  [(HAPBLEPeripheral *)v4 lastSeen];
  v9 = v8;
  [(HAPBLEPeripheral *)self lastSeen];
  v11 = v10;
  if (v9 > v10)
  {
    [(HAPBLEPeripheral *)v4 lastSeen];
    [(HAPBLEPeripheral *)self setLastSeen:?];
    [(HAPBLEPeripheral *)self setIsCached:[(HAPBLEPeripheral *)v4 isCached]];
    v12 = [(HAPBLEPeripheral *)v4 cbPeripheral];
    if (v12)
    {
      v13 = v12;
      v14 = [(HAPBLEPeripheral *)self cbPeripheral];

      if (!v14)
      {
        v15 = self;
        v16 = sub_10007FAA0();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = sub_10007FAFC(v15);
          v18 = [(HAPBLEPeripheral *)v15 shortDescription];
          v19 = [(HAPBLEPeripheral *)v4 cbPeripheral];
          *buf = 138543874;
          v58 = v17;
          v59 = 2112;
          v60 = v18;
          v61 = 2112;
          v62 = v19;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%{public}@Updating the BLE peripheral: %@ with CBPeripheral: %@", buf, 0x20u);
        }

        v20 = [(HAPBLEPeripheral *)v4 cbPeripheral];
        [(HAPBLEPeripheral *)v15 setCbPeripheral:v20];
      }
    }
  }

  v21 = [(HAPBLEPeripheral *)v4 identifier];
  v22 = v21;
  if (v9 <= v11 && v21)
  {
    v23 = [(HAPBLEPeripheral *)self identifier];

    if (!v23)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (v22)
    {
LABEL_14:
      v24 = [(HAPBLEPeripheral *)v4 identifier];
      [(HAPBLEPeripheral *)self setIdentifier:v24];
    }
  }

  v25 = [(HAPBLEPeripheral *)self name];
  v26 = [v25 length];
  v27 = [(HAPBLEPeripheral *)v4 name];
  v28 = [v27 length];

  if (v26 < v28)
  {
    v29 = [(HAPBLEPeripheral *)v4 name];
    [(HAPBLEPeripheral *)self setName:v29];
  }

  v30 = [(HAPBLEPeripheral *)v4 peripheralUUIDs];
  if (v30)
  {
    v31 = v30;
    v32 = [(HAPBLEPeripheral *)self peripheralUUIDs];
    v33 = [(HAPBLEPeripheral *)v4 peripheralUUIDs];
    v34 = [v32 isEqual:v33];

    if ((v34 & 1) == 0)
    {
      if (v9 <= v11)
      {
        v35 = v4;
      }

      else
      {
        v35 = self;
      }

      if (v9 <= v11)
      {
        v36 = self;
      }

      else
      {
        v36 = v4;
      }

      v37 = [(HAPBLEPeripheral *)v35 peripheralUUIDs];
      v38 = [v37 mutableCopy];

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v39 = [(HAPBLEPeripheral *)v36 peripheralUUIDs];
      v40 = [v39 countByEnumeratingWithState:&v52 objects:v56 count:16];
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
              objc_enumerationMutation(v39);
            }

            v44 = *(*(&v52 + 1) + 8 * i);
            [(NSMutableArray *)v38 removeObject:v44];
            [(NSMutableArray *)v38 addObject:v44];
          }

          v41 = [v39 countByEnumeratingWithState:&v52 objects:v56 count:16];
        }

        while (v41);
      }

      v45 = [(HAPBLEPeripheral *)self cbPeripheral];
      v46 = [v45 state];

      if (v46)
      {
        v47 = [(HAPBLEPeripheral *)self cbPeripheral];
        v48 = [v47 identifier];
        [(NSMutableArray *)v38 removeObject:v48];

        v49 = [(HAPBLEPeripheral *)self cbPeripheral];
        v50 = [v49 identifier];
        [(NSMutableArray *)v38 addObject:v50];
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

- (void)connectedToCBPeripheral:(id)a3 error:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = v14;
  if (v6)
  {
    os_unfair_lock_lock_with_options();
    v8 = [(HAPBLEPeripheral *)self cbPeripheral];

    if (v8)
    {
      cbPeripheralUUIDs = self->_cbPeripheralUUIDs;
      v10 = [(HAPBLEPeripheral *)self cbPeripheral];
      v11 = [v10 identifier];
      [(NSMutableArray *)cbPeripheralUUIDs removeObject:v11];
    }

    if (v14)
    {
      v12 = self->_cbPeripheralUUIDs;
      v13 = [v14 identifier];
      [(NSMutableArray *)v12 removeObject:v13];
    }

    os_unfair_lock_unlock(&self->_lock);
    v7 = 0;
  }

  [(HAPBLEPeripheral *)self setCbPeripheral:v7];
}

- (void)disconnectedFromCBPeripheral:(id)a3 shouldRemove:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  [(HAPBLEPeripheral *)self setCbPeripheral:0];
  if (v8 && v4)
  {
    os_unfair_lock_lock_with_options();
    cbPeripheralUUIDs = self->_cbPeripheralUUIDs;
    v7 = [v8 identifier];
    [(NSMutableArray *)cbPeripheralUUIDs removeObject:v7];

    os_unfair_lock_unlock(&self->_lock);
  }
}

+ (id)uuidForBTLEPeripheral:(id)a3
{
  v3 = a3;
  v4 = [v3 uniqueBTIdentifier];

  if (v4)
  {
    v5 = [v3 uniqueBTIdentifier];
  }

  else
  {
    v6 = [v3 peripheralUUIDs];

    v5 = [v6 lastObject];
    v3 = v6;
  }

  return v5;
}

@end