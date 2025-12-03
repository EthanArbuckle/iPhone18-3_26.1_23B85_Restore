@interface KTDevice
- (BOOL)active:(id)active;
- (BOOL)expired:(id)expired;
- (BOOL)isEqual:(id)equal;
- (BOOL)marked:(id)marked;
- (BOOL)shouldRemove;
- (KTDevice)initWithCoder:(id)coder;
- (KTDevice)initWithIdsDevice:(id)device;
- (KTDevice)initWithMutation:(id)mutation;
- (NSDate)addedDate;
- (NSDictionary)diagnosticsJsonDictionary;
- (id)clientRecordForAppVersion:(unint64_t)version clientDataHash:(id)hash;
- (id)clientRecordsForHash:(id)hash;
- (id)debugDescription;
- (void)deleteMarkedEntries:(id)entries;
- (void)encodeWithCoder:(id)coder;
- (void)markClientDatasForAppVersion:(unint64_t)version mutationMs:(unint64_t)ms except:(id)except;
- (void)updateWithAddMutation:(id)mutation error:(id *)error;
- (void)updateWithDeviceStateArray:(id)array;
- (void)updateWithMarkDeleteMutation:(id)mutation error:(id *)error;
@end

@implementation KTDevice

- (id)debugDescription
{
  v3 = [NSMutableString stringWithFormat:@"[\n"];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  selfCopy = self;
  obj = self->_clientDatas;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        [v3 appendFormat:@"   {\n"];
        clientData = [v8 clientData];
        kt_hexString = [clientData kt_hexString];
        [v3 appendFormat:@"    clientData:%@\n", kt_hexString];

        clientDataHash = [v8 clientDataHash];
        kt_hexString2 = [clientDataHash kt_hexString];
        [v3 appendFormat:@"    clientDataHash:%@\n", kt_hexString2];

        [v3 appendFormat:@"    appVersion:%lu\n", objc_msgSend(v8, "applicationVersion")];
        addedDate = [v8 addedDate];
        markedForDeletion = [v8 markedForDeletion];
        expiry = [v8 expiry];
        escrowExpiry = [v8 escrowExpiry];
        [v3 appendFormat:@"    addedDate:%@ markDate:%@; expiryDate:%@; escrowDate:%@\n", addedDate, markedForDeletion, expiry, escrowExpiry];

        [v3 appendFormat:@"   }, \n"];
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  [v3 appendFormat:@"  ]"];
  kt_hexString3 = [(NSData *)selfCopy->_deviceID kt_hexString];
  kt_hexString4 = [(NSData *)selfCopy->_deviceIDHash kt_hexString];
  v19 = [NSString stringWithFormat:@"{\n  deviceID:%@\n  deviceIDHash:%@\n  clientDatas: %@\n}", kt_hexString3, kt_hexString4, v3];

  return v19;
}

- (NSDictionary)diagnosticsJsonDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  deviceID = [(KTDevice *)self deviceID];

  if (deviceID)
  {
    deviceID2 = [(KTDevice *)self deviceID];
    kt_hexString = [deviceID2 kt_hexString];
    [v3 setObject:kt_hexString forKeyedSubscript:@"deviceID"];
  }

  deviceIDHash = [(KTDevice *)self deviceIDHash];
  kt_hexString2 = [deviceIDHash kt_hexString];
  [v3 setObject:kt_hexString2 forKeyedSubscript:@"deviceIDHash"];

  v9 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  clientDatas = [(KTDevice *)self clientDatas];
  v11 = [clientDatas countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(clientDatas);
        }

        diagnosticsJsonDictionary = [*(*(&v17 + 1) + 8 * i) diagnosticsJsonDictionary];
        [v9 addObject:diagnosticsJsonDictionary];
      }

      v12 = [clientDatas countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  [v3 setObject:v9 forKeyedSubscript:@"clientDatas"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  deviceID = [(KTDevice *)self deviceID];
  [coderCopy encodeObject:deviceID forKey:@"deviceID"];

  deviceIDHash = [(KTDevice *)self deviceIDHash];
  [coderCopy encodeObject:deviceIDHash forKey:@"deviceIDHash"];

  clientDatas = [(KTDevice *)self clientDatas];
  [coderCopy encodeObject:clientDatas forKey:@"clientDataRecords"];
}

- (KTDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceIDHash"];
  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"clientDataRecords"];

  v10 = objc_alloc_init(KTDevice);
  v11 = v10;
  if (v10)
  {
    [(KTDevice *)v10 setDeviceID:v5];
    [(KTDevice *)v11 setDeviceIDHash:v6];
    v12 = [v9 mutableCopy];
    [(KTDevice *)v11 setClientDatas:v12];
  }

  return v11;
}

- (KTDevice)initWithIdsDevice:(id)device
{
  deviceCopy = device;
  v20.receiver = self;
  v20.super_class = KTDevice;
  v5 = [(KTDevice *)&v20 init];
  if (v5)
  {
    deviceIdHash = [deviceCopy deviceIdHash];
    [(KTDevice *)v5 setDeviceIDHash:deviceIdHash];

    v7 = +[NSMutableArray array];
    [(KTDevice *)v5 setClientDatas:v7];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    clientDataArray = [deviceCopy clientDataArray];
    v9 = [clientDataArray countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(clientDataArray);
          }

          v13 = [[KTClientDataRecord alloc] initWithSingleDataRecord:*(*(&v16 + 1) + 8 * v12)];
          clientDatas = [(KTDevice *)v5 clientDatas];
          [clientDatas addObject:v13];

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [clientDataArray countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }
  }

  return v5;
}

- (KTDevice)initWithMutation:(id)mutation
{
  mutationCopy = mutation;
  v12.receiver = self;
  v12.super_class = KTDevice;
  v5 = [(KTDevice *)&v12 init];
  if (v5)
  {
    deviceIdHash = [mutationCopy deviceIdHash];
    deviceIDHash = v5->_deviceIDHash;
    v5->_deviceIDHash = deviceIdHash;

    v8 = [[KTClientDataRecord alloc] initWithMutation:mutationCopy];
    v9 = [NSMutableArray arrayWithObject:v8];
    clientDatas = v5->_clientDatas;
    v5->_clientDatas = v9;
  }

  return v5;
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
      deviceID = [(KTDevice *)self deviceID];
      deviceID2 = [(KTDevice *)v5 deviceID];
      v8 = deviceID2;
      if (deviceID == deviceID2)
      {
      }

      else
      {
        deviceID3 = [(KTDevice *)self deviceID];
        deviceID4 = [(KTDevice *)v5 deviceID];
        v11 = [deviceID3 isEqual:deviceID4];

        if (!v11)
        {
          goto LABEL_15;
        }
      }

      deviceIDHash = [(KTDevice *)self deviceIDHash];
      deviceIDHash2 = [(KTDevice *)v5 deviceIDHash];
      v15 = deviceIDHash2;
      if (deviceIDHash == deviceIDHash2)
      {
      }

      else
      {
        deviceIDHash3 = [(KTDevice *)self deviceIDHash];
        deviceIDHash4 = [(KTDevice *)v5 deviceIDHash];
        v18 = [deviceIDHash3 isEqual:deviceIDHash4];

        if (!v18)
        {
          goto LABEL_15;
        }
      }

      clientDatas = [(KTDevice *)self clientDatas];
      clientDatas2 = [(KTDevice *)v5 clientDatas];
      v21 = clientDatas2;
      if (clientDatas == clientDatas2)
      {
      }

      else
      {
        clientDatas3 = [(KTDevice *)self clientDatas];
        clientDatas4 = [(KTDevice *)v5 clientDatas];
        v24 = [clientDatas3 isEqual:clientDatas4];

        if ((v24 & 1) == 0)
        {
LABEL_15:
          v12 = 0;
LABEL_18:

          goto LABEL_19;
        }
      }

      v12 = 1;
      goto LABEL_18;
    }

    v12 = 0;
  }

LABEL_19:

  return v12;
}

- (id)clientRecordForAppVersion:(unint64_t)version clientDataHash:(id)hash
{
  hashCopy = hash;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_clientDatas;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 applicationVersion] == version)
        {
          clientDataHash = [v12 clientDataHash];
          v14 = [clientDataHash isEqualToData:hashCopy];

          if (v14)
          {
            v15 = v12;
            goto LABEL_12;
          }
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (id)clientRecordsForHash:(id)hash
{
  hashCopy = hash;
  v5 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_clientDatas;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        clientDataHash = [v11 clientDataHash];
        v13 = [clientDataHash isEqualToData:hashCopy];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v14 = v5;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)markClientDatasForAppVersion:(unint64_t)version mutationMs:(unint64_t)ms except:(id)except
{
  exceptCopy = except;
  v9 = [NSDate dateWithTimeIntervalSince1970:ms / 1000.0];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  clientDatas = [(KTDevice *)self clientDatas];
  v11 = [clientDatas countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(clientDatas);
        }

        v15 = *(*(&v16 + 1) + 8 * v14);
        if ((!exceptCopy || ([*(*(&v16 + 1) + 8 * v14) isEqual:exceptCopy] & 1) == 0) && objc_msgSend(v15, "applicationVersion") == version && (objc_msgSend(v15, "marked:", v9) & 1) == 0 && (objc_msgSend(v15, "expired:", v9) & 1) == 0)
        {
          [v15 markWithMutationMs:ms];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [clientDatas countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (BOOL)marked:(id)marked
{
  markedCopy = marked;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  clientDatas = [(KTDevice *)self clientDatas];
  v6 = [clientDatas countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(clientDatas);
        }

        if (![*(*(&v12 + 1) + 8 * i) marked:markedCopy])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [clientDatas countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (BOOL)expired:(id)expired
{
  expiredCopy = expired;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  clientDatas = [(KTDevice *)self clientDatas];
  v6 = [clientDatas countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(clientDatas);
        }

        if (![*(*(&v12 + 1) + 8 * i) expired:expiredCopy])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [clientDatas countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (BOOL)active:(id)active
{
  activeCopy = active;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  clientDatas = [(KTDevice *)self clientDatas];
  v6 = [clientDatas countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(clientDatas);
        }

        if ([*(*(&v10 + 1) + 8 * i) active:activeCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [clientDatas countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (NSDate)addedDate
{
  v3 = +[NSDate date];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  clientDatas = [(KTDevice *)self clientDatas];
  v5 = [clientDatas countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(clientDatas);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        addedDate = [v9 addedDate];
        v11 = [addedDate compare:v3];

        if (v11 == -1)
        {
          addedDate2 = [v9 addedDate];

          v3 = addedDate2;
        }
      }

      v6 = [clientDatas countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)updateWithAddMutation:(id)mutation error:(id *)error
{
  mutationCopy = mutation;
  appVersion = [mutationCopy appVersion];
  clientDataHash = [mutationCopy clientDataHash];
  v8 = [(KTDevice *)self clientRecordForAppVersion:appVersion clientDataHash:clientDataHash];

  idsMutation = [mutationCopy idsMutation];
  mutationMs = [idsMutation mutationMs];

  -[KTDevice markClientDatasForAppVersion:mutationMs:except:](self, "markClientDatasForAppVersion:mutationMs:except:", [mutationCopy appVersion], mutationMs, v8);
  if (v8)
  {
    [(KTClientDataRecord *)v8 updateWithAddMutation:mutationCopy error:error];
  }

  else
  {
    v8 = [[KTClientDataRecord alloc] initWithMutation:mutationCopy];
    [(KTDevice *)self addClientDatasObject:v8];
  }
}

- (void)updateWithMarkDeleteMutation:(id)mutation error:(id *)error
{
  mutationCopy = mutation;
  appVersion = [mutationCopy appVersion];
  clientDataHash = [mutationCopy clientDataHash];
  v8 = [(KTDevice *)self clientRecordForAppVersion:appVersion clientDataHash:clientDataHash];

  if (v8)
  {
    [v8 updateWithMarkDeleteMutation:mutationCopy error:error];
  }
}

- (void)updateWithDeviceStateArray:(id)array
{
  arrayCopy = array;
  selfCopy = self;
  clientDatas = [(KTDevice *)self clientDatas];
  v6 = [NSArray arrayWithArray:clientDatas];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_1001C9CF8;
        v14[3] = &unk_100327430;
        v14[4] = v12;
        if ([arrayCopy indexOfObjectPassingTest:v14] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [(KTDevice *)selfCopy removeClientDatasObject:v12];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (BOOL)shouldRemove
{
  clientDatas = [(KTDevice *)self clientDatas];
  v3 = [clientDatas count] == 0;

  return v3;
}

- (void)deleteMarkedEntries:(id)entries
{
  entriesCopy = entries;
  clientDatas = [(KTDevice *)self clientDatas];
  v6 = [NSArray arrayWithArray:clientDatas];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([v12 marked:{entriesCopy, v13}])
        {
          [(KTDevice *)self removeClientDatasObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

@end