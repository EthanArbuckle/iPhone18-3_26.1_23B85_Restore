@interface KTDevice
- (BOOL)active:(id)a3;
- (BOOL)expired:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)marked:(id)a3;
- (BOOL)shouldRemove;
- (KTDevice)initWithCoder:(id)a3;
- (KTDevice)initWithIdsDevice:(id)a3;
- (KTDevice)initWithMutation:(id)a3;
- (NSDate)addedDate;
- (NSDictionary)diagnosticsJsonDictionary;
- (id)clientRecordForAppVersion:(unint64_t)a3 clientDataHash:(id)a4;
- (id)clientRecordsForHash:(id)a3;
- (id)debugDescription;
- (void)deleteMarkedEntries:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)markClientDatasForAppVersion:(unint64_t)a3 mutationMs:(unint64_t)a4 except:(id)a5;
- (void)updateWithAddMutation:(id)a3 error:(id *)a4;
- (void)updateWithDeviceStateArray:(id)a3;
- (void)updateWithMarkDeleteMutation:(id)a3 error:(id *)a4;
@end

@implementation KTDevice

- (id)debugDescription
{
  v3 = [NSMutableString stringWithFormat:@"[\n"];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v21 = self;
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
        v9 = [v8 clientData];
        v10 = [v9 kt_hexString];
        [v3 appendFormat:@"    clientData:%@\n", v10];

        v11 = [v8 clientDataHash];
        v12 = [v11 kt_hexString];
        [v3 appendFormat:@"    clientDataHash:%@\n", v12];

        [v3 appendFormat:@"    appVersion:%lu\n", objc_msgSend(v8, "applicationVersion")];
        v13 = [v8 addedDate];
        v14 = [v8 markedForDeletion];
        v15 = [v8 expiry];
        v16 = [v8 escrowExpiry];
        [v3 appendFormat:@"    addedDate:%@ markDate:%@; expiryDate:%@; escrowDate:%@\n", v13, v14, v15, v16];

        [v3 appendFormat:@"   }, \n"];
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  [v3 appendFormat:@"  ]"];
  v17 = [(NSData *)v21->_deviceID kt_hexString];
  v18 = [(NSData *)v21->_deviceIDHash kt_hexString];
  v19 = [NSString stringWithFormat:@"{\n  deviceID:%@\n  deviceIDHash:%@\n  clientDatas: %@\n}", v17, v18, v3];

  return v19;
}

- (NSDictionary)diagnosticsJsonDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(KTDevice *)self deviceID];

  if (v4)
  {
    v5 = [(KTDevice *)self deviceID];
    v6 = [v5 kt_hexString];
    [v3 setObject:v6 forKeyedSubscript:@"deviceID"];
  }

  v7 = [(KTDevice *)self deviceIDHash];
  v8 = [v7 kt_hexString];
  [v3 setObject:v8 forKeyedSubscript:@"deviceIDHash"];

  v9 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [(KTDevice *)self clientDatas];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * i) diagnosticsJsonDictionary];
        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  [v3 setObject:v9 forKeyedSubscript:@"clientDatas"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(KTDevice *)self deviceID];
  [v4 encodeObject:v5 forKey:@"deviceID"];

  v6 = [(KTDevice *)self deviceIDHash];
  [v4 encodeObject:v6 forKey:@"deviceIDHash"];

  v7 = [(KTDevice *)self clientDatas];
  [v4 encodeObject:v7 forKey:@"clientDataRecords"];
}

- (KTDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceIDHash"];
  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"clientDataRecords"];

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

- (KTDevice)initWithIdsDevice:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = KTDevice;
  v5 = [(KTDevice *)&v20 init];
  if (v5)
  {
    v6 = [v4 deviceIdHash];
    [(KTDevice *)v5 setDeviceIDHash:v6];

    v7 = +[NSMutableArray array];
    [(KTDevice *)v5 setClientDatas:v7];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v4 clientDataArray];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [[KTClientDataRecord alloc] initWithSingleDataRecord:*(*(&v16 + 1) + 8 * v12)];
          v14 = [(KTDevice *)v5 clientDatas];
          [v14 addObject:v13];

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }
  }

  return v5;
}

- (KTDevice)initWithMutation:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = KTDevice;
  v5 = [(KTDevice *)&v12 init];
  if (v5)
  {
    v6 = [v4 deviceIdHash];
    deviceIDHash = v5->_deviceIDHash;
    v5->_deviceIDHash = v6;

    v8 = [[KTClientDataRecord alloc] initWithMutation:v4];
    v9 = [NSMutableArray arrayWithObject:v8];
    clientDatas = v5->_clientDatas;
    v5->_clientDatas = v9;
  }

  return v5;
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
      v6 = [(KTDevice *)self deviceID];
      v7 = [(KTDevice *)v5 deviceID];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(KTDevice *)self deviceID];
        v10 = [(KTDevice *)v5 deviceID];
        v11 = [v9 isEqual:v10];

        if (!v11)
        {
          goto LABEL_15;
        }
      }

      v13 = [(KTDevice *)self deviceIDHash];
      v14 = [(KTDevice *)v5 deviceIDHash];
      v15 = v14;
      if (v13 == v14)
      {
      }

      else
      {
        v16 = [(KTDevice *)self deviceIDHash];
        v17 = [(KTDevice *)v5 deviceIDHash];
        v18 = [v16 isEqual:v17];

        if (!v18)
        {
          goto LABEL_15;
        }
      }

      v19 = [(KTDevice *)self clientDatas];
      v20 = [(KTDevice *)v5 clientDatas];
      v21 = v20;
      if (v19 == v20)
      {
      }

      else
      {
        v22 = [(KTDevice *)self clientDatas];
        v23 = [(KTDevice *)v5 clientDatas];
        v24 = [v22 isEqual:v23];

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

- (id)clientRecordForAppVersion:(unint64_t)a3 clientDataHash:(id)a4
{
  v6 = a4;
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
        if ([v12 applicationVersion] == a3)
        {
          v13 = [v12 clientDataHash];
          v14 = [v13 isEqualToData:v6];

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

- (id)clientRecordsForHash:(id)a3
{
  v4 = a3;
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
        v12 = [v11 clientDataHash];
        v13 = [v12 isEqualToData:v4];

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

- (void)markClientDatasForAppVersion:(unint64_t)a3 mutationMs:(unint64_t)a4 except:(id)a5
{
  v8 = a5;
  v9 = [NSDate dateWithTimeIntervalSince1970:a4 / 1000.0];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [(KTDevice *)self clientDatas];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * v14);
        if ((!v8 || ([*(*(&v16 + 1) + 8 * v14) isEqual:v8] & 1) == 0) && objc_msgSend(v15, "applicationVersion") == a3 && (objc_msgSend(v15, "marked:", v9) & 1) == 0 && (objc_msgSend(v15, "expired:", v9) & 1) == 0)
        {
          [v15 markWithMutationMs:a4];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (BOOL)marked:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(KTDevice *)self clientDatas];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        if (![*(*(&v12 + 1) + 8 * i) marked:v4])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (BOOL)expired:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(KTDevice *)self clientDatas];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        if (![*(*(&v12 + 1) + 8 * i) expired:v4])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (BOOL)active:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(KTDevice *)self clientDatas];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) active:v4])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v4 = [(KTDevice *)self clientDatas];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 addedDate];
        v11 = [v10 compare:v3];

        if (v11 == -1)
        {
          v12 = [v9 addedDate];

          v3 = v12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)updateWithAddMutation:(id)a3 error:(id *)a4
{
  v11 = a3;
  v6 = [v11 appVersion];
  v7 = [v11 clientDataHash];
  v8 = [(KTDevice *)self clientRecordForAppVersion:v6 clientDataHash:v7];

  v9 = [v11 idsMutation];
  v10 = [v9 mutationMs];

  -[KTDevice markClientDatasForAppVersion:mutationMs:except:](self, "markClientDatasForAppVersion:mutationMs:except:", [v11 appVersion], v10, v8);
  if (v8)
  {
    [(KTClientDataRecord *)v8 updateWithAddMutation:v11 error:a4];
  }

  else
  {
    v8 = [[KTClientDataRecord alloc] initWithMutation:v11];
    [(KTDevice *)self addClientDatasObject:v8];
  }
}

- (void)updateWithMarkDeleteMutation:(id)a3 error:(id *)a4
{
  v9 = a3;
  v6 = [v9 appVersion];
  v7 = [v9 clientDataHash];
  v8 = [(KTDevice *)self clientRecordForAppVersion:v6 clientDataHash:v7];

  if (v8)
  {
    [v8 updateWithMarkDeleteMutation:v9 error:a4];
  }
}

- (void)updateWithDeviceStateArray:(id)a3
{
  v4 = a3;
  v13 = self;
  v5 = [(KTDevice *)self clientDatas];
  v6 = [NSArray arrayWithArray:v5];

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
        if ([v4 indexOfObjectPassingTest:v14] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [(KTDevice *)v13 removeClientDatasObject:v12];
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
  v2 = [(KTDevice *)self clientDatas];
  v3 = [v2 count] == 0;

  return v3;
}

- (void)deleteMarkedEntries:(id)a3
{
  v4 = a3;
  v5 = [(KTDevice *)self clientDatas];
  v6 = [NSArray arrayWithArray:v5];

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
        if ([v12 marked:{v4, v13}])
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