@interface KTAccount
- (BOOL)active:(id)a3;
- (BOOL)everOptedIn;
- (BOOL)expired:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)marked:(id)a3;
- (BOOL)optInState;
- (BOOL)recentlyOptedIn;
- (BOOL)shouldRemove;
- (BOOL)updateWithOptInOutWithExt:(id)a3 error:(id *)a4;
- (BOOL)validateEmptyOptInOutHistory:(id)a3 responseTime:(id)a4 error:(id *)a5;
- (BOOL)validateOptInHistory:(id)a3 responseTime:(id)a4 error:(id *)a5;
- (KTAccount)initWithCoder:(id)a3;
- (KTAccount)initWithIdsAccount:(id)a3;
- (KTAccount)initWithMutation:(id)a3;
- (NSDictionary)diagnosticsJsonDictionary;
- (id)debugDescription;
- (id)deviceForDeviceIdHash:(id)a3;
- (id)kvsOptInOutEntry:(id)a3 before:(id)a4;
- (id)optInHistory;
- (id)optInHistoryDescription;
- (id)optInOutHistoryJsonArray;
- (id)optInRecord;
- (void)deleteMarkedEntries:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithAddMutation:(id)a3 error:(id *)a4;
- (void)updateWithDeviceStateArray:(id)a3;
- (void)updateWithExtensions:(id)a3 error:(id *)a4;
- (void)updateWithMarkDeleteMutation:(id)a3 error:(id *)a4;
- (void)updateWithOptInOutMutation:(id)a3 error:(id *)a4;
@end

@implementation KTAccount

- (id)debugDescription
{
  v3 = [NSMutableString stringWithFormat:@"[\n"];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v32 = self;
  obj = self->_devices;
  v36 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v36)
  {
    v34 = *v43;
    v35 = v3;
    do
    {
      v4 = 0;
      do
      {
        if (*v43 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v4;
        v5 = *(*(&v42 + 1) + 8 * v4);
        [v3 appendFormat:@"   {\n"];
        v6 = [v5 deviceID];
        v7 = [v6 kt_hexString];
        [v3 appendFormat:@"    deviceID:%@\n", v7];

        v8 = [v5 deviceIDHash];
        v9 = [v8 kt_hexString];
        [v3 appendFormat:@"    deviceIDHash: %@\n", v9];

        v10 = [NSMutableString stringWithFormat:@"[\n"];
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v11 = [v5 clientDatas];
        v12 = [v11 countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v39;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v39 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v38 + 1) + 8 * i);
              [v10 appendFormat:@"     {\n"];
              v17 = [v16 clientData];
              v18 = [v17 kt_hexString];
              [v10 appendFormat:@"      clientData:%@\n", v18];

              v19 = [v16 clientDataHash];
              v20 = [v19 kt_hexString];
              [v10 appendFormat:@"      clientDataHash:%@\n", v20];

              [v10 appendFormat:@"      appVersion:%lu\n", objc_msgSend(v16, "applicationVersion")];
              v21 = [v16 addedDate];
              v22 = [v16 markedForDeletion];
              v23 = [v16 expiry];
              v24 = [v16 escrowExpiry];
              [v10 appendFormat:@"      addedDate:%@ markDate:%@; expiryDate:%@; escrowDate:%@\n", v21, v22, v23, v24];

              [v10 appendFormat:@"     }, \n"];
            }

            v13 = [v11 countByEnumeratingWithState:&v38 objects:v46 count:16];
          }

          while (v13);
        }

        [v10 appendFormat:@"    ]"];
        v3 = v35;
        [v35 appendFormat:@"    clientDatas: %@\n", v10];
        [v35 appendFormat:@"   }, \n"];

        v4 = v37 + 1;
      }

      while ((v37 + 1) != v36);
      v36 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v36);
  }

  [v3 appendFormat:@"  ]"];
  v25 = [(KTAccount *)v32 accountKey];
  v26 = [v25 kt_hexString];
  v27 = [(KTAccount *)v32 accountKeyHash];
  v28 = [v27 kt_hexString];
  v29 = [(KTAccount *)v32 optInHistoryDescription];
  v30 = [NSString stringWithFormat:@"{\n  accountKey:%@\n  accountKeyHash:%@\n  optInHistory:%@\n devices: %@\n}", v26, v28, v29, v3];

  return v30;
}

- (id)optInOutHistoryJsonArray
{
  v3 = [(KTAccount *)self optInOutHistory];
  v4 = [v3 count];

  if (v4)
  {
    v5 = +[NSMutableArray array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(KTAccount *)self optInOutHistory];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v13 + 1) + 8 * i) diagnosticsJsonDictionary];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = +[NSArray array];
  }

  return v5;
}

- (NSDictionary)diagnosticsJsonDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(KTAccount *)self accountKey];

  if (v4)
  {
    v5 = [(KTAccount *)self accountKey];
    v6 = [v5 kt_hexString];
    [v3 setObject:v6 forKeyedSubscript:@"accountKey"];
  }

  v7 = [(KTAccount *)self accountKeyHash];
  v8 = [v7 kt_hexString];
  [v3 setObject:v8 forKeyedSubscript:@"accountKeyHash"];

  v9 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [(KTAccount *)self devices];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v18 + 1) + 8 * i) diagnosticsJsonDictionary];
        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  [v3 setObject:v9 forKeyedSubscript:@"devices"];
  v16 = [(KTAccount *)self optInOutHistoryJsonArray];
  [v3 setObject:v16 forKeyedSubscript:@"optInOutHistory"];

  return v3;
}

- (id)optInHistoryDescription
{
  v3 = [(KTAccount *)self optInOutHistory];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(KTAccount *)self optInOutHistory];
  v6 = [v5 reverseObjectEnumerator];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        if ([v11 optIn])
        {
          v12 = @"YES";
        }

        else
        {
          v12 = @"NO";
        }

        v13 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", ([v11 timestampMs] / 0x3E8));
        v14 = [v13 kt_toISO_8601_UTCString];
        v15 = [NSString stringWithFormat:@"%@-%@", v12, v14];

        [v4 addObject:v15];
      }

      v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v16 = [v4 componentsJoinedByString:{@", "}];

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(KTAccount *)self accountKey];
  [v4 encodeObject:v5 forKey:@"accountKey"];

  v6 = [(KTAccount *)self accountKeyHash];
  [v4 encodeObject:v6 forKey:@"accountKeyHash"];

  v7 = [(KTAccount *)self devices];
  [v4 encodeObject:v7 forKey:@"devices"];

  v8 = [(KTAccount *)self optInOutHistory];
  if (v8)
  {
    v9 = v8;
    v10 = [(KTAccount *)self optInOutHistory];
    v11 = [v10 count];

    if (v11)
    {
      v12 = [(KTAccount *)self optInOutHistory];
      v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v14 = [(KTAccount *)self optInOutHistory];
      v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v22;
        do
        {
          v18 = 0;
          do
          {
            if (*v22 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = [*(*(&v21 + 1) + 8 * v18) data];
            if (v19)
            {
              [v13 addObject:v19];
            }

            v18 = v18 + 1;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v16);
      }

      v20 = [NSArray arrayWithArray:v13];
      [v4 encodeObject:v20 forKey:@"optInOutHistory"];
    }
  }
}

- (KTAccount)initWithCoder:(id)a3
{
  v4 = a3;
  v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountKey"];
  v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountKeyHash"];
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  v31 = [v4 decodeObjectOfClasses:v6 forKey:@"devices"];
  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];

  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"optInOutHistory"];
  v10 = v9;
  if (v9)
  {
    v29 = v8;
    v30 = self;
    v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v36;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v35 + 1) + 8 * i);
          v34 = 0;
          v18 = [OptInOutWithExt parseFromData:v17 error:&v34];
          v19 = v34;
          if (!v18)
          {
            if (qword_10039C938 != -1)
            {
              sub_10025C104();
            }

            v21 = v32;
            v20 = v33;
            v22 = v31;
            v8 = v29;
            v23 = qword_10039C940;
            if (os_log_type_enabled(qword_10039C940, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v40 = v19;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "failed to parse OptInOut record: %@", buf, 0xCu);
            }

            v24 = 0;
            self = v30;
            goto LABEL_21;
          }

          [v11 addObject:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v35 objects:v41 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v8 = v29;
    self = v30;
  }

  else
  {
    v11 = 0;
  }

  v25 = objc_alloc_init(KTAccount);
  v24 = v25;
  v21 = v32;
  v20 = v33;
  v22 = v31;
  if (v25)
  {
    [(KTAccount *)v25 setAccountKey:v33];
    [(KTAccount *)v24 setAccountKeyHash:v32];
    v26 = [v31 mutableCopy];
    [(KTAccount *)v24 setDevices:v26];

    if (v11)
    {
      [(KTAccount *)v24 setOptInOutHistory:v11];
    }

    else
    {
      v27 = +[NSMutableArray array];
      [(KTAccount *)v24 setOptInOutHistory:v27];
    }
  }

LABEL_21:

  return v24;
}

- (KTAccount)initWithIdsAccount:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = KTAccount;
  v5 = [(KTAccount *)&v29 init];
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = [v4 accountKeyHash];
  [(KTAccount *)v5 setAccountKeyHash:v6];

  v7 = +[NSMutableArray array];
  [(KTAccount *)v5 setDevices:v7];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [v4 devicesArray];
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [[KTDevice alloc] initWithIdsDevice:*(*(&v25 + 1) + 8 * i)];
        v14 = [(KTAccount *)v5 devices];
        [v14 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v10);
  }

  v24 = 0;
  v15 = [v4 sortedOptInOutHistory:&v24];
  v16 = v24;
  v17 = [v15 mutableCopy];
  [(KTAccount *)v5 setOptInOutHistory:v17];

  if (v16)
  {
    if (qword_10039C938 != -1)
    {
      sub_10025C12C();
    }

    v18 = qword_10039C940;
    if (os_log_type_enabled(qword_10039C940, OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
      v20 = [(KTAccount *)v5 accountKeyHash];
      v21 = [v20 kt_hexString];
      *buf = 138412546;
      v31 = v21;
      v32 = 2112;
      v33 = v16;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to create account for %@: %@", buf, 0x16u);
    }

    v22 = 0;
  }

  else
  {
LABEL_15:
    v22 = v5;
  }

  return v22;
}

- (KTAccount)initWithMutation:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = KTAccount;
  v5 = [(KTAccount *)&v19 init];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = [v4 accountKeyHash];
  accountKeyHash = v5->_accountKeyHash;
  v5->_accountKeyHash = v6;

  v8 = [[KTDevice alloc] initWithMutation:v4];
  v9 = [NSMutableArray arrayWithObject:v8];
  devices = v5->_devices;
  v5->_devices = v9;

  v11 = +[NSMutableArray array];
  optInOutHistory = v5->_optInOutHistory;
  v5->_optInOutHistory = v11;

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v13 = [v4 extensions];
  v18 = 0;
  [(KTAccount *)v5 updateWithExtensions:v13 error:&v18];
  v14 = v18;

  if (v14)
  {
    if (qword_10039C938 != -1)
    {
      sub_10025C154();
    }

    v15 = qword_10039C940;
    if (os_log_type_enabled(qword_10039C940, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "unable to create account record: %@", buf, 0xCu);
    }

    v16 = 0;
  }

  else
  {
LABEL_9:
    v16 = v5;
  }

  return v16;
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
      v6 = [(KTAccount *)self accountKey];
      v7 = [(KTAccount *)v5 accountKey];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(KTAccount *)self accountKey];
        v10 = [(KTAccount *)v5 accountKey];
        v11 = [v9 isEqualToData:v10];

        if (!v11)
        {
          goto LABEL_15;
        }
      }

      v13 = [(KTAccount *)self accountKeyHash];
      v14 = [(KTAccount *)v5 accountKeyHash];
      v15 = v14;
      if (v13 == v14)
      {
      }

      else
      {
        v16 = [(KTAccount *)self accountKeyHash];
        v17 = [(KTAccount *)v5 accountKeyHash];
        v18 = [v16 isEqualToData:v17];

        if (!v18)
        {
          goto LABEL_15;
        }
      }

      v19 = [(KTAccount *)self devices];
      v20 = [(KTAccount *)v5 devices];
      v21 = v20;
      if (v19 == v20)
      {
      }

      else
      {
        v22 = [(KTAccount *)self devices];
        v23 = [(KTAccount *)v5 devices];
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

- (BOOL)marked:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(KTAccount *)self devices];
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
  v5 = [(KTAccount *)self devices];
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
  v5 = [(KTAccount *)self devices];
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

- (id)deviceForDeviceIdHash:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_devices;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [v10 deviceIDHash];
          v12 = [v11 isEqualToData:v4];

          if (v12)
          {
            v13 = v10;

            goto LABEL_15;
          }
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  else if ([(NSMutableArray *)self->_devices count]== 1)
  {
    v13 = [(NSMutableArray *)self->_devices objectAtIndexedSubscript:0];
    goto LABEL_15;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (id)optInRecord
{
  v3 = [(KTAccount *)self optInOutHistory];
  if (v3 && (v4 = v3, -[KTAccount optInOutHistory](self, "optInOutHistory"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, v6))
  {
    v7 = [(KTAccount *)self optInOutHistory];
    v8 = [v7 lastObject];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)optInHistory
{
  v3 = [(KTAccount *)self optInOutHistory];
  if (v3)
  {
    v4 = v3;
    v5 = [(KTAccount *)self optInOutHistory];
    v6 = [v5 count];

    if (v6)
    {
      v3 = [(KTAccount *)self optInOutHistory];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (BOOL)optInState
{
  v2 = [(KTAccount *)self optInRecord];
  v3 = [v2 optIn];

  return v3;
}

- (BOOL)everOptedIn
{
  v3 = [(KTAccount *)self optInOutHistory];
  if (v3)
  {
    v4 = [(KTAccount *)self optInOutHistory];
    v5 = [v4 count];

    if (v5)
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v6 = [(KTAccount *)self optInOutHistory];
      v3 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        v7 = *v11;
        while (2)
        {
          for (i = 0; i != v3; i = i + 1)
          {
            if (*v11 != v7)
            {
              objc_enumerationMutation(v6);
            }

            if ([*(*(&v10 + 1) + 8 * i) optIn])
            {
              LOBYTE(v3) = 1;
              goto LABEL_13;
            }
          }

          v3 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
          if (v3)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)recentlyOptedIn
{
  v3 = [(KTAccount *)self optInOutHistory];
  if (v3)
  {
    v4 = [(KTAccount *)self optInOutHistory];
    v5 = [v4 count];

    if (v5)
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v6 = [(KTAccount *)self optInOutHistory];
      v3 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        v7 = *v11;
        while (2)
        {
          for (i = 0; i != v3; i = i + 1)
          {
            if (*v11 != v7)
            {
              objc_enumerationMutation(v6);
            }

            if ([*(*(&v10 + 1) + 8 * i) optIn])
            {
              LOBYTE(v3) = 1;
              goto LABEL_13;
            }
          }

          v3 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
          if (v3)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (id)kvsOptInOutEntry:(id)a3 before:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 lastObject];
  v8 = [v7 objectAtIndexedSubscript:0];
  v9 = [v6 compare:v8];

  if (v9 == -1)
  {
    v11 = [v5 count] - 1;
    while (1)
    {
      v12 = [v5 objectAtIndexedSubscript:v11];
      v13 = [v12 objectAtIndexedSubscript:0];
      v14 = [v6 compare:v13];

      if (v14 != -1)
      {
        break;
      }

      if (--v11 == -1)
      {
        goto LABEL_8;
      }
    }

    v10 = [v5 objectAtIndexedSubscript:v11];
    if (v10)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = [v5 firstObject];
    v16 = [v15 objectAtIndexedSubscript:1];
    v17 = [v16 BOOLValue];

    v18 = [NSDate dateWithTimeIntervalSince1970:0.0];
    v21[0] = v18;
    v19 = [NSNumber numberWithInt:v17 ^ 1];
    v21[1] = v19;
    v10 = [NSArray arrayWithObjects:v21 count:2];
  }

  else
  {
    v10 = [v5 lastObject];
  }

LABEL_9:

  return v10;
}

- (BOOL)validateEmptyOptInOutHistory:(id)a3 responseTime:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(KTAccount *)self optInOutHistory];
  v11 = [v10 count];

  v12 = [v8 count];
  if (!(v11 | v12))
  {
LABEL_2:
    v13 = 1;
    goto LABEL_29;
  }

  if (v11)
  {
    if (!v12)
    {
      v14 = [(KTAccount *)self optInOutHistory];
      v15 = [v14 lastObject];
      v16 = [v15 optIn];

      if (!v16)
      {
        if (qword_10039C938 != -1)
        {
          sub_10025C17C();
        }

        v26 = qword_10039C940;
        if (os_log_type_enabled(qword_10039C940, OS_LOG_TYPE_DEBUG))
        {
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "opt-in state match: kvs = <null>; kt = 0", v27, 2u);
        }

        goto LABEL_2;
      }

      if (qword_10039C938 != -1)
      {
        sub_10025C190();
      }

      v17 = qword_10039C940;
      if (os_log_type_enabled(qword_10039C940, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "opt-in state mismatch: kvs = <null>; kt = 1", buf, 2u);
      }

      v18 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-289 description:@"Opt-in state mismatch: kvs = <null> kt = 1"];;
      if (a5 && v18)
      {
        v18 = v18;
        *a5 = v18;
      }
    }

    v13 = 0;
    goto LABEL_29;
  }

  v19 = [(KTAccount *)self kvsOptInOutEntry:v8 before:v9];
  v20 = [v19 objectAtIndexedSubscript:1];
  v21 = [v20 BOOLValue];

  if (v21)
  {
    if (qword_10039C938 != -1)
    {
      sub_10025C1B8();
    }

    v22 = qword_10039C940;
    if (os_log_type_enabled(qword_10039C940, OS_LOG_TYPE_ERROR))
    {
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "opt-in state mismatch: kvs = 1; kt = <null>", v30, 2u);
    }

    v23 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-289 description:@"Opt-in state mismatch: kvs = 1 kt = <null>"];;
    if (a5 && v23)
    {
      v23 = v23;
      *a5 = v23;
    }
  }

  else
  {
    if (qword_10039C938 != -1)
    {
      sub_10025C1A4();
    }

    v24 = qword_10039C940;
    if (os_log_type_enabled(qword_10039C940, OS_LOG_TYPE_DEBUG))
    {
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "opt-in state match: kvs = 0; kt = <null>", v29, 2u);
    }
  }

  v13 = v21 ^ 1;

LABEL_29:
  return v13;
}

- (BOOL)validateOptInHistory:(id)a3 responseTime:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    v10 = [(KTAccount *)self optInOutHistory];
    v11 = [v10 count];

    if (v11)
    {
      v12 = [(KTAccount *)self kvsOptInOutEntry:v8 before:v9];
      v13 = [v12 objectAtIndexedSubscript:1];
      v14 = [v13 BOOLValue];

      if (v14 == [(KTAccount *)self optInState])
      {
        if (!v14)
        {
          v19 = 1;
LABEL_34:

          goto LABEL_35;
        }

        v21 = [v12 objectAtIndexedSubscript:0];
        [v21 timeIntervalSince1970];
        v23 = v22;

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v24 = [(KTAccount *)self optInOutHistory];
        v18 = [v24 reverseObjectEnumerator];

        v25 = [v18 countByEnumeratingWithState:&v36 objects:v43 count:16];
        if (v25)
        {
          v26 = v25;
          v35 = v12;
          v27 = *v37;
          while (2)
          {
            for (i = 0; i != v26; i = i + 1)
            {
              if (*v37 != v27)
              {
                objc_enumerationMutation(v18);
              }

              v29 = *(*(&v36 + 1) + 8 * i);
              if (v23 < [v29 timestampMs] / 0x3E8 && (objc_msgSend(v29, "optIn") & 1) == 0)
              {
                if (qword_10039C938 != -1)
                {
                  sub_10025C1CC();
                }

                v12 = v35;
                v30 = qword_10039C940;
                if (os_log_type_enabled(qword_10039C940, OS_LOG_TYPE_ERROR))
                {
                  v31 = v30;
                  v32 = [v29 timestampMs];
                  *buf = 134218240;
                  *v41 = v32 / 0x3E8;
                  *&v41[8] = 2048;
                  v42 = v23;
                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Detected opt-out at %llu after kvs opt-in at %llu", buf, 0x16u);
                }

                v33 = +[TransparencyError errorWithDomain:code:description:](TransparencyError, "errorWithDomain:code:description:", @"TransparencyErrorVerify", -322, @"Detected opt-out at %llu after kvs opt-in at %llu", [v29 timestampMs] / 0x3E8, v23);
                if (a5 && v33)
                {
                  v33 = v33;
                  *a5 = v33;
                }

                v19 = 0;
                goto LABEL_33;
              }
            }

            v26 = [v18 countByEnumeratingWithState:&v36 objects:v43 count:16];
            v19 = 1;
            if (v26)
            {
              continue;
            }

            break;
          }

          v12 = v35;
        }

        else
        {
          v19 = 1;
        }
      }

      else
      {
        if (qword_10039C938 != -1)
        {
          sub_10025C1F4();
        }

        v15 = qword_10039C940;
        if (os_log_type_enabled(qword_10039C940, OS_LOG_TYPE_ERROR))
        {
          v16 = v15;
          *buf = 67109376;
          *v41 = [(KTAccount *)self optInState];
          *&v41[4] = 1024;
          *&v41[6] = v14;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "current opt-in state mismatch: kt = %d, kvs = %d", buf, 0xEu);
        }

        v17 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-289 description:@"Current opt-in state mismatch: kt = %d, kvs = %d", [(KTAccount *)self optInState], v14];
        v18 = v17;
        v19 = 0;
        if (a5 && v17)
        {
          v20 = v17;
          v19 = 0;
          *a5 = v18;
        }
      }

LABEL_33:

      goto LABEL_34;
    }
  }

  v19 = [(KTAccount *)self validateEmptyOptInOutHistory:v8 responseTime:v9 error:a5];
LABEL_35:

  return v19;
}

- (void)updateWithAddMutation:(id)a3 error:(id *)a4
{
  v9 = a3;
  v6 = [v9 deviceIdHash];
  v7 = [(KTAccount *)self deviceForDeviceIdHash:v6];

  if (v7)
  {
    [(KTDevice *)v7 updateWithAddMutation:v9 error:a4];
  }

  else
  {
    v7 = [[KTDevice alloc] initWithMutation:v9];
    [(KTAccount *)self addDevicesObject:v7];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v9 extensions];
    [(KTAccount *)self updateWithExtensions:v8 error:a4];
  }
}

- (void)updateWithMarkDeleteMutation:(id)a3 error:(id *)a4
{
  v8 = a3;
  v6 = [v8 deviceIdHash];
  v7 = [(KTAccount *)self deviceForDeviceIdHash:v6];

  if (v7)
  {
    [v7 updateWithMarkDeleteMutation:v8 error:a4];
  }
}

- (void)updateWithDeviceStateArray:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v23 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v31;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v30 + 1) + 8 * i) deviceIdHash];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v7);
    }

    v11 = [(KTAccount *)self devices];
    v12 = [NSArray arrayWithArray:v11];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v26 + 1) + 8 * j);
          v19 = [v18 deviceIDHash];
          v20 = [v4 containsObject:v19];

          if (v20)
          {
            v25[0] = _NSConcreteStackBlock;
            v25[1] = 3221225472;
            v25[2] = sub_1001C7C3C;
            v25[3] = &unk_100327430;
            v25[4] = v18;
            v21 = [v5 indexesOfObjectsPassingTest:v25];
            v22 = [v5 objectsAtIndexes:v21];
            [v18 updateWithDeviceStateArray:v22];
          }

          else
          {
            [(KTAccount *)self removeDevicesObject:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v15);
    }

    v3 = v23;
  }
}

- (void)updateWithExtensions:(id)a3 error:(id *)a4
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 extensionType] == 3)
        {
          v12 = [v11 extensionData];
          v13 = [OptInOutWithExt parseFromData:v12 error:0];

          if (-[KTAccount updateWithOptInOutWithExt:error:](self, "updateWithOptInOutWithExt:error:", v13, a4) && [v13 optIn])
          {
            v14 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v13 timestampMs] / 1000.0);
            [(KTAccount *)self deleteMarkedEntries:v14];
          }

          goto LABEL_14;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (BOOL)updateWithOptInOutWithExt:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(KTAccount *)self optInOutHistory];
  v7 = [v6 count];

  v8 = [(KTAccount *)self optInOutHistory];
  v9 = v8;
  if (!v7)
  {
    goto LABEL_5;
  }

  v10 = [v8 lastObject];
  v11 = [v10 timestampMs];
  v12 = [v5 timestampMs];

  v13 = [(KTAccount *)self optInOutHistory];
  v14 = v13;
  if (v11 >= v12)
  {
    v18 = [v13 count];

    v19 = 0;
    if (v18)
    {
      while (1)
      {
        v20 = [(KTAccount *)self optInOutHistory];
        v21 = [v20 objectAtIndexedSubscript:v19];
        LOBYTE(v18) = [v5 isEqual:v21];

        if (v18)
        {
          break;
        }

        v22 = [(KTAccount *)self optInOutHistory];
        v23 = [v22 objectAtIndexedSubscript:v19];
        v24 = [v23 timestampMs];
        v25 = [v5 timestampMs];

        if (v24 > v25)
        {
          break;
        }

        ++v19;
        v26 = [(KTAccount *)self optInOutHistory];
        v27 = [v26 count];

        if (v19 >= v27)
        {
          LOBYTE(v18) = 0;
          goto LABEL_12;
        }
      }

      if (!v19)
      {
        goto LABEL_13;
      }

LABEL_12:
      v28 = [(KTAccount *)self optInOutHistory];
      v29 = [v28 objectAtIndexedSubscript:v19 - 1];
      v30 = [v29 optIn];
      v31 = v30 ^ [v5 optIn] ^ 1;

      LOBYTE(v18) = v18 | v31;
    }

LABEL_13:
    if ((v18 & 1) == 0)
    {
      v9 = [(KTAccount *)self optInOutHistory];
      [v9 insertObject:v5 atIndex:v19];
      goto LABEL_16;
    }
  }

  else
  {
    v15 = [v13 lastObject];
    v16 = [v15 optIn];
    v17 = [v5 optIn];

    if (v16 != v17)
    {
      v8 = [(KTAccount *)self optInOutHistory];
      v9 = v8;
LABEL_5:
      [v8 addObject:v5];
LABEL_16:

      v32 = 1;
      goto LABEL_17;
    }
  }

  v32 = 0;
LABEL_17:

  return v32;
}

- (void)updateWithOptInOutMutation:(id)a3 error:(id *)a4
{
  v9 = a3;
  v6 = [[OptInOutWithExt alloc] initWithMutation:v9];
  if ([(KTAccount *)self updateWithOptInOutWithExt:v6 error:a4])
  {
    v7 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v9 timestampMs] / 1000.0);
    if ([(OptInOut *)v6 optIn])
    {
      [(KTAccount *)self deleteMarkedEntries:v7];
      v8 = [v9 devicesArray];
      [(KTAccount *)self updateWithDeviceStateArray:v8];
    }

    [(KTAccount *)self cleanupDevices:v7 removeAllMarked:[(OptInOut *)v6 optIn]];
  }
}

- (BOOL)shouldRemove
{
  v2 = [(KTAccount *)self devices];
  v3 = [v2 count] == 0;

  return v3;
}

- (void)deleteMarkedEntries:(id)a3
{
  v4 = a3;
  v5 = [(KTAccount *)self devices];
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
          [(KTAccount *)self removeDevicesObject:v12];
        }

        [v12 deleteMarkedEntries:v4];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

@end