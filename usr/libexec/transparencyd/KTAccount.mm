@interface KTAccount
- (BOOL)active:(id)active;
- (BOOL)everOptedIn;
- (BOOL)expired:(id)expired;
- (BOOL)isEqual:(id)equal;
- (BOOL)marked:(id)marked;
- (BOOL)optInState;
- (BOOL)recentlyOptedIn;
- (BOOL)shouldRemove;
- (BOOL)updateWithOptInOutWithExt:(id)ext error:(id *)error;
- (BOOL)validateEmptyOptInOutHistory:(id)history responseTime:(id)time error:(id *)error;
- (BOOL)validateOptInHistory:(id)history responseTime:(id)time error:(id *)error;
- (KTAccount)initWithCoder:(id)coder;
- (KTAccount)initWithIdsAccount:(id)account;
- (KTAccount)initWithMutation:(id)mutation;
- (NSDictionary)diagnosticsJsonDictionary;
- (id)debugDescription;
- (id)deviceForDeviceIdHash:(id)hash;
- (id)kvsOptInOutEntry:(id)entry before:(id)before;
- (id)optInHistory;
- (id)optInHistoryDescription;
- (id)optInOutHistoryJsonArray;
- (id)optInRecord;
- (void)deleteMarkedEntries:(id)entries;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithAddMutation:(id)mutation error:(id *)error;
- (void)updateWithDeviceStateArray:(id)array;
- (void)updateWithExtensions:(id)extensions error:(id *)error;
- (void)updateWithMarkDeleteMutation:(id)mutation error:(id *)error;
- (void)updateWithOptInOutMutation:(id)mutation error:(id *)error;
@end

@implementation KTAccount

- (id)debugDescription
{
  v3 = [NSMutableString stringWithFormat:@"[\n"];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  selfCopy = self;
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
        deviceID = [v5 deviceID];
        kt_hexString = [deviceID kt_hexString];
        [v3 appendFormat:@"    deviceID:%@\n", kt_hexString];

        deviceIDHash = [v5 deviceIDHash];
        kt_hexString2 = [deviceIDHash kt_hexString];
        [v3 appendFormat:@"    deviceIDHash: %@\n", kt_hexString2];

        v10 = [NSMutableString stringWithFormat:@"[\n"];
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        clientDatas = [v5 clientDatas];
        v12 = [clientDatas countByEnumeratingWithState:&v38 objects:v46 count:16];
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
                objc_enumerationMutation(clientDatas);
              }

              v16 = *(*(&v38 + 1) + 8 * i);
              [v10 appendFormat:@"     {\n"];
              clientData = [v16 clientData];
              kt_hexString3 = [clientData kt_hexString];
              [v10 appendFormat:@"      clientData:%@\n", kt_hexString3];

              clientDataHash = [v16 clientDataHash];
              kt_hexString4 = [clientDataHash kt_hexString];
              [v10 appendFormat:@"      clientDataHash:%@\n", kt_hexString4];

              [v10 appendFormat:@"      appVersion:%lu\n", objc_msgSend(v16, "applicationVersion")];
              addedDate = [v16 addedDate];
              markedForDeletion = [v16 markedForDeletion];
              expiry = [v16 expiry];
              escrowExpiry = [v16 escrowExpiry];
              [v10 appendFormat:@"      addedDate:%@ markDate:%@; expiryDate:%@; escrowDate:%@\n", addedDate, markedForDeletion, expiry, escrowExpiry];

              [v10 appendFormat:@"     }, \n"];
            }

            v13 = [clientDatas countByEnumeratingWithState:&v38 objects:v46 count:16];
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
  accountKey = [(KTAccount *)selfCopy accountKey];
  kt_hexString5 = [accountKey kt_hexString];
  accountKeyHash = [(KTAccount *)selfCopy accountKeyHash];
  kt_hexString6 = [accountKeyHash kt_hexString];
  optInHistoryDescription = [(KTAccount *)selfCopy optInHistoryDescription];
  v30 = [NSString stringWithFormat:@"{\n  accountKey:%@\n  accountKeyHash:%@\n  optInHistory:%@\n devices: %@\n}", kt_hexString5, kt_hexString6, optInHistoryDescription, v3];

  return v30;
}

- (id)optInOutHistoryJsonArray
{
  optInOutHistory = [(KTAccount *)self optInOutHistory];
  v4 = [optInOutHistory count];

  if (v4)
  {
    v5 = +[NSMutableArray array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    optInOutHistory2 = [(KTAccount *)self optInOutHistory];
    v7 = [optInOutHistory2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(optInOutHistory2);
          }

          diagnosticsJsonDictionary = [*(*(&v13 + 1) + 8 * i) diagnosticsJsonDictionary];
          [v5 addObject:diagnosticsJsonDictionary];
        }

        v8 = [optInOutHistory2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  accountKey = [(KTAccount *)self accountKey];

  if (accountKey)
  {
    accountKey2 = [(KTAccount *)self accountKey];
    kt_hexString = [accountKey2 kt_hexString];
    [v3 setObject:kt_hexString forKeyedSubscript:@"accountKey"];
  }

  accountKeyHash = [(KTAccount *)self accountKeyHash];
  kt_hexString2 = [accountKeyHash kt_hexString];
  [v3 setObject:kt_hexString2 forKeyedSubscript:@"accountKeyHash"];

  v9 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  devices = [(KTAccount *)self devices];
  v11 = [devices countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(devices);
        }

        diagnosticsJsonDictionary = [*(*(&v18 + 1) + 8 * i) diagnosticsJsonDictionary];
        [v9 addObject:diagnosticsJsonDictionary];
      }

      v12 = [devices countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  [v3 setObject:v9 forKeyedSubscript:@"devices"];
  optInOutHistoryJsonArray = [(KTAccount *)self optInOutHistoryJsonArray];
  [v3 setObject:optInOutHistoryJsonArray forKeyedSubscript:@"optInOutHistory"];

  return v3;
}

- (id)optInHistoryDescription
{
  optInOutHistory = [(KTAccount *)self optInOutHistory];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [optInOutHistory count]);

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  optInOutHistory2 = [(KTAccount *)self optInOutHistory];
  reverseObjectEnumerator = [optInOutHistory2 reverseObjectEnumerator];

  obj = reverseObjectEnumerator;
  v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
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
        kt_toISO_8601_UTCString = [v13 kt_toISO_8601_UTCString];
        v15 = [NSString stringWithFormat:@"%@-%@", v12, kt_toISO_8601_UTCString];

        [v4 addObject:v15];
      }

      v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v16 = [v4 componentsJoinedByString:{@", "}];

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountKey = [(KTAccount *)self accountKey];
  [coderCopy encodeObject:accountKey forKey:@"accountKey"];

  accountKeyHash = [(KTAccount *)self accountKeyHash];
  [coderCopy encodeObject:accountKeyHash forKey:@"accountKeyHash"];

  devices = [(KTAccount *)self devices];
  [coderCopy encodeObject:devices forKey:@"devices"];

  optInOutHistory = [(KTAccount *)self optInOutHistory];
  if (optInOutHistory)
  {
    v9 = optInOutHistory;
    optInOutHistory2 = [(KTAccount *)self optInOutHistory];
    v11 = [optInOutHistory2 count];

    if (v11)
    {
      optInOutHistory3 = [(KTAccount *)self optInOutHistory];
      v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [optInOutHistory3 count]);

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      optInOutHistory4 = [(KTAccount *)self optInOutHistory];
      v15 = [optInOutHistory4 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
              objc_enumerationMutation(optInOutHistory4);
            }

            data = [*(*(&v21 + 1) + 8 * v18) data];
            if (data)
            {
              [v13 addObject:data];
            }

            v18 = v18 + 1;
          }

          while (v16 != v18);
          v16 = [optInOutHistory4 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v16);
      }

      v20 = [NSArray arrayWithArray:v13];
      [coderCopy encodeObject:v20 forKey:@"optInOutHistory"];
    }
  }
}

- (KTAccount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountKey"];
  v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountKeyHash"];
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  v31 = [coderCopy decodeObjectOfClasses:v6 forKey:@"devices"];
  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];

  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"optInOutHistory"];
  v10 = v9;
  if (v9)
  {
    v29 = v8;
    selfCopy = self;
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
            self = selfCopy;
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
    self = selfCopy;
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

- (KTAccount)initWithIdsAccount:(id)account
{
  accountCopy = account;
  v29.receiver = self;
  v29.super_class = KTAccount;
  v5 = [(KTAccount *)&v29 init];
  if (!v5)
  {
    goto LABEL_15;
  }

  accountKeyHash = [accountCopy accountKeyHash];
  [(KTAccount *)v5 setAccountKeyHash:accountKeyHash];

  v7 = +[NSMutableArray array];
  [(KTAccount *)v5 setDevices:v7];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  devicesArray = [accountCopy devicesArray];
  v9 = [devicesArray countByEnumeratingWithState:&v25 objects:v34 count:16];
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
          objc_enumerationMutation(devicesArray);
        }

        v13 = [[KTDevice alloc] initWithIdsDevice:*(*(&v25 + 1) + 8 * i)];
        devices = [(KTAccount *)v5 devices];
        [devices addObject:v13];
      }

      v10 = [devicesArray countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v10);
  }

  v24 = 0;
  v15 = [accountCopy sortedOptInOutHistory:&v24];
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
      accountKeyHash2 = [(KTAccount *)v5 accountKeyHash];
      kt_hexString = [accountKeyHash2 kt_hexString];
      *buf = 138412546;
      v31 = kt_hexString;
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

- (KTAccount)initWithMutation:(id)mutation
{
  mutationCopy = mutation;
  v19.receiver = self;
  v19.super_class = KTAccount;
  v5 = [(KTAccount *)&v19 init];
  if (!v5)
  {
    goto LABEL_9;
  }

  accountKeyHash = [mutationCopy accountKeyHash];
  accountKeyHash = v5->_accountKeyHash;
  v5->_accountKeyHash = accountKeyHash;

  v8 = [[KTDevice alloc] initWithMutation:mutationCopy];
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

  extensions = [mutationCopy extensions];
  v18 = 0;
  [(KTAccount *)v5 updateWithExtensions:extensions error:&v18];
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
      accountKey = [(KTAccount *)self accountKey];
      accountKey2 = [(KTAccount *)v5 accountKey];
      v8 = accountKey2;
      if (accountKey == accountKey2)
      {
      }

      else
      {
        accountKey3 = [(KTAccount *)self accountKey];
        accountKey4 = [(KTAccount *)v5 accountKey];
        v11 = [accountKey3 isEqualToData:accountKey4];

        if (!v11)
        {
          goto LABEL_15;
        }
      }

      accountKeyHash = [(KTAccount *)self accountKeyHash];
      accountKeyHash2 = [(KTAccount *)v5 accountKeyHash];
      v15 = accountKeyHash2;
      if (accountKeyHash == accountKeyHash2)
      {
      }

      else
      {
        accountKeyHash3 = [(KTAccount *)self accountKeyHash];
        accountKeyHash4 = [(KTAccount *)v5 accountKeyHash];
        v18 = [accountKeyHash3 isEqualToData:accountKeyHash4];

        if (!v18)
        {
          goto LABEL_15;
        }
      }

      devices = [(KTAccount *)self devices];
      devices2 = [(KTAccount *)v5 devices];
      v21 = devices2;
      if (devices == devices2)
      {
      }

      else
      {
        devices3 = [(KTAccount *)self devices];
        devices4 = [(KTAccount *)v5 devices];
        v24 = [devices3 isEqual:devices4];

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

- (BOOL)marked:(id)marked
{
  markedCopy = marked;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  devices = [(KTAccount *)self devices];
  v6 = [devices countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(devices);
        }

        if (![*(*(&v12 + 1) + 8 * i) marked:markedCopy])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [devices countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  devices = [(KTAccount *)self devices];
  v6 = [devices countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(devices);
        }

        if (![*(*(&v12 + 1) + 8 * i) expired:expiredCopy])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [devices countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  devices = [(KTAccount *)self devices];
  v6 = [devices countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(devices);
        }

        if ([*(*(&v10 + 1) + 8 * i) active:activeCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [devices countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (id)deviceForDeviceIdHash:(id)hash
{
  hashCopy = hash;
  if (hashCopy)
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
          deviceIDHash = [v10 deviceIDHash];
          v12 = [deviceIDHash isEqualToData:hashCopy];

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
  optInOutHistory = [(KTAccount *)self optInOutHistory];
  if (optInOutHistory && (v4 = optInOutHistory, -[KTAccount optInOutHistory](self, "optInOutHistory"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, v6))
  {
    optInOutHistory2 = [(KTAccount *)self optInOutHistory];
    lastObject = [optInOutHistory2 lastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (id)optInHistory
{
  optInOutHistory = [(KTAccount *)self optInOutHistory];
  if (optInOutHistory)
  {
    v4 = optInOutHistory;
    optInOutHistory2 = [(KTAccount *)self optInOutHistory];
    v6 = [optInOutHistory2 count];

    if (v6)
    {
      optInOutHistory = [(KTAccount *)self optInOutHistory];
    }

    else
    {
      optInOutHistory = 0;
    }
  }

  return optInOutHistory;
}

- (BOOL)optInState
{
  optInRecord = [(KTAccount *)self optInRecord];
  optIn = [optInRecord optIn];

  return optIn;
}

- (BOOL)everOptedIn
{
  optInOutHistory = [(KTAccount *)self optInOutHistory];
  if (optInOutHistory)
  {
    optInOutHistory2 = [(KTAccount *)self optInOutHistory];
    v5 = [optInOutHistory2 count];

    if (v5)
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      optInOutHistory3 = [(KTAccount *)self optInOutHistory];
      optInOutHistory = [optInOutHistory3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (optInOutHistory)
      {
        v7 = *v11;
        while (2)
        {
          for (i = 0; i != optInOutHistory; i = i + 1)
          {
            if (*v11 != v7)
            {
              objc_enumerationMutation(optInOutHistory3);
            }

            if ([*(*(&v10 + 1) + 8 * i) optIn])
            {
              LOBYTE(optInOutHistory) = 1;
              goto LABEL_13;
            }
          }

          optInOutHistory = [optInOutHistory3 countByEnumeratingWithState:&v10 objects:v14 count:16];
          if (optInOutHistory)
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
      LOBYTE(optInOutHistory) = 0;
    }
  }

  return optInOutHistory;
}

- (BOOL)recentlyOptedIn
{
  optInOutHistory = [(KTAccount *)self optInOutHistory];
  if (optInOutHistory)
  {
    optInOutHistory2 = [(KTAccount *)self optInOutHistory];
    v5 = [optInOutHistory2 count];

    if (v5)
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      optInOutHistory3 = [(KTAccount *)self optInOutHistory];
      optInOutHistory = [optInOutHistory3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (optInOutHistory)
      {
        v7 = *v11;
        while (2)
        {
          for (i = 0; i != optInOutHistory; i = i + 1)
          {
            if (*v11 != v7)
            {
              objc_enumerationMutation(optInOutHistory3);
            }

            if ([*(*(&v10 + 1) + 8 * i) optIn])
            {
              LOBYTE(optInOutHistory) = 1;
              goto LABEL_13;
            }
          }

          optInOutHistory = [optInOutHistory3 countByEnumeratingWithState:&v10 objects:v14 count:16];
          if (optInOutHistory)
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
      LOBYTE(optInOutHistory) = 0;
    }
  }

  return optInOutHistory;
}

- (id)kvsOptInOutEntry:(id)entry before:(id)before
{
  entryCopy = entry;
  beforeCopy = before;
  lastObject = [entryCopy lastObject];
  v8 = [lastObject objectAtIndexedSubscript:0];
  v9 = [beforeCopy compare:v8];

  if (v9 == -1)
  {
    v11 = [entryCopy count] - 1;
    while (1)
    {
      v12 = [entryCopy objectAtIndexedSubscript:v11];
      v13 = [v12 objectAtIndexedSubscript:0];
      v14 = [beforeCopy compare:v13];

      if (v14 != -1)
      {
        break;
      }

      if (--v11 == -1)
      {
        goto LABEL_8;
      }
    }

    lastObject2 = [entryCopy objectAtIndexedSubscript:v11];
    if (lastObject2)
    {
      goto LABEL_9;
    }

LABEL_8:
    firstObject = [entryCopy firstObject];
    v16 = [firstObject objectAtIndexedSubscript:1];
    bOOLValue = [v16 BOOLValue];

    v18 = [NSDate dateWithTimeIntervalSince1970:0.0];
    v21[0] = v18;
    v19 = [NSNumber numberWithInt:bOOLValue ^ 1];
    v21[1] = v19;
    lastObject2 = [NSArray arrayWithObjects:v21 count:2];
  }

  else
  {
    lastObject2 = [entryCopy lastObject];
  }

LABEL_9:

  return lastObject2;
}

- (BOOL)validateEmptyOptInOutHistory:(id)history responseTime:(id)time error:(id *)error
{
  historyCopy = history;
  timeCopy = time;
  optInOutHistory = [(KTAccount *)self optInOutHistory];
  v11 = [optInOutHistory count];

  v12 = [historyCopy count];
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
      optInOutHistory2 = [(KTAccount *)self optInOutHistory];
      lastObject = [optInOutHistory2 lastObject];
      optIn = [lastObject optIn];

      if (!optIn)
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
      if (error && v18)
      {
        v18 = v18;
        *error = v18;
      }
    }

    v13 = 0;
    goto LABEL_29;
  }

  v19 = [(KTAccount *)self kvsOptInOutEntry:historyCopy before:timeCopy];
  v20 = [v19 objectAtIndexedSubscript:1];
  bOOLValue = [v20 BOOLValue];

  if (bOOLValue)
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
    if (error && v23)
    {
      v23 = v23;
      *error = v23;
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

  v13 = bOOLValue ^ 1;

LABEL_29:
  return v13;
}

- (BOOL)validateOptInHistory:(id)history responseTime:(id)time error:(id *)error
{
  historyCopy = history;
  timeCopy = time;
  if ([historyCopy count])
  {
    optInOutHistory = [(KTAccount *)self optInOutHistory];
    v11 = [optInOutHistory count];

    if (v11)
    {
      v12 = [(KTAccount *)self kvsOptInOutEntry:historyCopy before:timeCopy];
      v13 = [v12 objectAtIndexedSubscript:1];
      bOOLValue = [v13 BOOLValue];

      if (bOOLValue == [(KTAccount *)self optInState])
      {
        if (!bOOLValue)
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
        optInOutHistory2 = [(KTAccount *)self optInOutHistory];
        reverseObjectEnumerator = [optInOutHistory2 reverseObjectEnumerator];

        v25 = [reverseObjectEnumerator countByEnumeratingWithState:&v36 objects:v43 count:16];
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
                objc_enumerationMutation(reverseObjectEnumerator);
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
                  timestampMs = [v29 timestampMs];
                  *buf = 134218240;
                  *v41 = timestampMs / 0x3E8;
                  *&v41[8] = 2048;
                  v42 = v23;
                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Detected opt-out at %llu after kvs opt-in at %llu", buf, 0x16u);
                }

                v33 = +[TransparencyError errorWithDomain:code:description:](TransparencyError, "errorWithDomain:code:description:", @"TransparencyErrorVerify", -322, @"Detected opt-out at %llu after kvs opt-in at %llu", [v29 timestampMs] / 0x3E8, v23);
                if (error && v33)
                {
                  v33 = v33;
                  *error = v33;
                }

                v19 = 0;
                goto LABEL_33;
              }
            }

            v26 = [reverseObjectEnumerator countByEnumeratingWithState:&v36 objects:v43 count:16];
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
          *&v41[6] = bOOLValue;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "current opt-in state mismatch: kt = %d, kvs = %d", buf, 0xEu);
        }

        v17 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-289 description:@"Current opt-in state mismatch: kt = %d, kvs = %d", [(KTAccount *)self optInState], bOOLValue];
        reverseObjectEnumerator = v17;
        v19 = 0;
        if (error && v17)
        {
          v20 = v17;
          v19 = 0;
          *error = reverseObjectEnumerator;
        }
      }

LABEL_33:

      goto LABEL_34;
    }
  }

  v19 = [(KTAccount *)self validateEmptyOptInOutHistory:historyCopy responseTime:timeCopy error:error];
LABEL_35:

  return v19;
}

- (void)updateWithAddMutation:(id)mutation error:(id *)error
{
  mutationCopy = mutation;
  deviceIdHash = [mutationCopy deviceIdHash];
  v7 = [(KTAccount *)self deviceForDeviceIdHash:deviceIdHash];

  if (v7)
  {
    [(KTDevice *)v7 updateWithAddMutation:mutationCopy error:error];
  }

  else
  {
    v7 = [[KTDevice alloc] initWithMutation:mutationCopy];
    [(KTAccount *)self addDevicesObject:v7];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    extensions = [mutationCopy extensions];
    [(KTAccount *)self updateWithExtensions:extensions error:error];
  }
}

- (void)updateWithMarkDeleteMutation:(id)mutation error:(id *)error
{
  mutationCopy = mutation;
  deviceIdHash = [mutationCopy deviceIdHash];
  v7 = [(KTAccount *)self deviceForDeviceIdHash:deviceIdHash];

  if (v7)
  {
    [v7 updateWithMarkDeleteMutation:mutationCopy error:error];
  }
}

- (void)updateWithDeviceStateArray:(id)array
{
  arrayCopy = array;
  if ([arrayCopy count])
  {
    v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [arrayCopy count]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v23 = arrayCopy;
    v5 = arrayCopy;
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

          deviceIdHash = [*(*(&v30 + 1) + 8 * i) deviceIdHash];
          [v4 addObject:deviceIdHash];
        }

        v7 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v7);
    }

    devices = [(KTAccount *)self devices];
    v12 = [NSArray arrayWithArray:devices];

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
          deviceIDHash = [v18 deviceIDHash];
          v20 = [v4 containsObject:deviceIDHash];

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

    arrayCopy = v23;
  }
}

- (void)updateWithExtensions:(id)extensions error:(id *)error
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  extensionsCopy = extensions;
  v7 = [extensionsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(extensionsCopy);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 extensionType] == 3)
        {
          extensionData = [v11 extensionData];
          v13 = [OptInOutWithExt parseFromData:extensionData error:0];

          if (-[KTAccount updateWithOptInOutWithExt:error:](self, "updateWithOptInOutWithExt:error:", v13, error) && [v13 optIn])
          {
            v14 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v13 timestampMs] / 1000.0);
            [(KTAccount *)self deleteMarkedEntries:v14];
          }

          goto LABEL_14;
        }
      }

      v8 = [extensionsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (BOOL)updateWithOptInOutWithExt:(id)ext error:(id *)error
{
  extCopy = ext;
  optInOutHistory = [(KTAccount *)self optInOutHistory];
  v7 = [optInOutHistory count];

  optInOutHistory2 = [(KTAccount *)self optInOutHistory];
  optInOutHistory8 = optInOutHistory2;
  if (!v7)
  {
    goto LABEL_5;
  }

  lastObject = [optInOutHistory2 lastObject];
  timestampMs = [lastObject timestampMs];
  timestampMs2 = [extCopy timestampMs];

  optInOutHistory3 = [(KTAccount *)self optInOutHistory];
  v14 = optInOutHistory3;
  if (timestampMs >= timestampMs2)
  {
    v18 = [optInOutHistory3 count];

    v19 = 0;
    if (v18)
    {
      while (1)
      {
        optInOutHistory4 = [(KTAccount *)self optInOutHistory];
        v21 = [optInOutHistory4 objectAtIndexedSubscript:v19];
        LOBYTE(v18) = [extCopy isEqual:v21];

        if (v18)
        {
          break;
        }

        optInOutHistory5 = [(KTAccount *)self optInOutHistory];
        v23 = [optInOutHistory5 objectAtIndexedSubscript:v19];
        timestampMs3 = [v23 timestampMs];
        timestampMs4 = [extCopy timestampMs];

        if (timestampMs3 > timestampMs4)
        {
          break;
        }

        ++v19;
        optInOutHistory6 = [(KTAccount *)self optInOutHistory];
        v27 = [optInOutHistory6 count];

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
      optInOutHistory7 = [(KTAccount *)self optInOutHistory];
      v29 = [optInOutHistory7 objectAtIndexedSubscript:v19 - 1];
      optIn = [v29 optIn];
      v31 = optIn ^ [extCopy optIn] ^ 1;

      LOBYTE(v18) = v18 | v31;
    }

LABEL_13:
    if ((v18 & 1) == 0)
    {
      optInOutHistory8 = [(KTAccount *)self optInOutHistory];
      [optInOutHistory8 insertObject:extCopy atIndex:v19];
      goto LABEL_16;
    }
  }

  else
  {
    lastObject2 = [optInOutHistory3 lastObject];
    optIn2 = [lastObject2 optIn];
    optIn3 = [extCopy optIn];

    if (optIn2 != optIn3)
    {
      optInOutHistory2 = [(KTAccount *)self optInOutHistory];
      optInOutHistory8 = optInOutHistory2;
LABEL_5:
      [optInOutHistory2 addObject:extCopy];
LABEL_16:

      v32 = 1;
      goto LABEL_17;
    }
  }

  v32 = 0;
LABEL_17:

  return v32;
}

- (void)updateWithOptInOutMutation:(id)mutation error:(id *)error
{
  mutationCopy = mutation;
  v6 = [[OptInOutWithExt alloc] initWithMutation:mutationCopy];
  if ([(KTAccount *)self updateWithOptInOutWithExt:v6 error:error])
  {
    v7 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [mutationCopy timestampMs] / 1000.0);
    if ([(OptInOut *)v6 optIn])
    {
      [(KTAccount *)self deleteMarkedEntries:v7];
      devicesArray = [mutationCopy devicesArray];
      [(KTAccount *)self updateWithDeviceStateArray:devicesArray];
    }

    [(KTAccount *)self cleanupDevices:v7 removeAllMarked:[(OptInOut *)v6 optIn]];
  }
}

- (BOOL)shouldRemove
{
  devices = [(KTAccount *)self devices];
  v3 = [devices count] == 0;

  return v3;
}

- (void)deleteMarkedEntries:(id)entries
{
  entriesCopy = entries;
  devices = [(KTAccount *)self devices];
  v6 = [NSArray arrayWithArray:devices];

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
          [(KTAccount *)self removeDevicesObject:v12];
        }

        [v12 deleteMarkedEntries:entriesCopy];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

@end