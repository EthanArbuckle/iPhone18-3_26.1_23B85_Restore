@interface KTTransparentData
+ (void)addResult:(unint64_t)result failure:(id)failure toLoggableDatas:(id)datas;
- (BOOL)isEqual:(id)equal;
- (BOOL)optInAfter:(id)after accountKey:(id)key;
- (BOOL)updateWithMapLeaf:(id)leaf error:(id *)error;
- (BOOL)updateWithMutation:(id)mutation error:(id *)error;
- (BOOL)updateWithSMTs:(id)ts error:(id *)error;
- (BOOL)validateActiveClientDatas:(id)datas at:(id)at error:(id *)error;
- (BOOL)validateAndUpdateWithServerLoggableDatas:(id)datas accountKey:(id)key idsResponseTime:(double)time error:(id *)error;
- (BOOL)validateAndUpdateWithSyncedLoggableDatas:(id)datas accountKey:(id)key cloudDevices:(id)devices requestDate:(id)date error:(id *)error;
- (BOOL)validateOptInHistory:(id)history accountKey:(id)key responseTime:(id)time error:(id *)error;
- (BOOL)validateOtherAccountsInactiveForAccount:(id)account at:(id)at error:(id *)error;
- (BOOL)verifyServerInvariantsAt:(id)at error:(id *)error;
- (KTTransparentData)initWithCoder:(id)coder;
- (KTTransparentData)initWithUriVRFOutput:(id)output mapLeaf:(id)leaf pendingSMTs:(id)ts deps:(id)deps error:(id *)error;
- (KTTransparentData)initWithUriVRFOutput:(id)output mapLeaf:(id)leaf pendingSMTs:(id)ts error:(id *)error;
- (NSDictionary)diagnosticsJsonDictionary;
- (id)accountForAccountKey:(id)key;
- (id)accountForAccountKeyHash:(id)hash;
- (id)accountOptInHistory:(id)history;
- (id)accountOptInRecord:(id)record;
- (id)copy;
- (id)currentPublicID;
- (id)debugDescription;
- (id)earliestAddedDate:(id)date;
- (id)expectedSelfResolutionDate:(id)date requestDate:(id)requestDate;
- (id)failedRecordsForSyncedLoggableDatas:(id)datas accountKey:(id)key cloudDevices:(id)devices requestDate:(id)date error:(id *)error;
- (id)failedServerLoggableDatas:(id)datas accountKey:(id)key idsResponseTime:(double)time error:(id *)error;
- (id)failureResult:(id)result loggableData:(id)data;
- (id)filterLoggableDatas:(id)datas clientDataHash:(id)hash;
- (id)filterLoggableDatas:(id)datas deviceIdHash:(id)hash;
- (id)getLogDataForAccountKey:(id)key uri:(id)uri;
- (id)mutationsFromSMTs:(id)ts error:(id *)error;
- (id)serialize;
- (id)sortMutationsByTimestamp:(id)timestamp error:(id *)error;
- (unint64_t)accountEverOptedIn:(id)in;
- (unint64_t)accountOptInState:(id)state;
- (unint64_t)accountRecentlyOptedIn:(id)in;
- (unint64_t)currentAccountOptInState;
- (unint64_t)verifiedAccountOptInState;
- (void)cleanupAccounts:(id)accounts;
- (void)deleteMarkedEntries:(unint64_t)entries;
- (void)encodeWithCoder:(id)coder;
- (void)markAccountsWithMutationMs:(unint64_t)ms except:(id)except;
- (void)updateWithAddMutation:(id)mutation error:(id *)error;
- (void)updateWithMarkDeleteMutation:(id)mutation error:(id *)error;
- (void)updateWithOptInOutMutation:(id)mutation error:(id *)error;
@end

@implementation KTTransparentData

- (id)debugDescription
{
  v3 = [NSMutableString stringWithFormat:@"[\n"];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  selfCopy = self;
  obj = self->_accounts;
  v39 = [(NSMutableArray *)obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v39)
  {
    v37 = *v55;
    v38 = v3;
    do
    {
      v4 = 0;
      do
      {
        if (*v55 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v40 = v4;
        v5 = *(*(&v54 + 1) + 8 * v4);
        [v3 appendFormat:@"   {\n"];
        accountKey = [v5 accountKey];
        kt_hexString = [accountKey kt_hexString];
        [v3 appendFormat:@"    accountKey:%@\n", kt_hexString];

        accountKeyHash = [v5 accountKeyHash];
        kt_hexString2 = [accountKeyHash kt_hexString];
        [v3 appendFormat:@"    accountKeyHash:%@\n", kt_hexString2];

        v10 = [NSMutableString stringWithFormat:@"[\n"];
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        devices = [v5 devices];
        v44 = [devices countByEnumeratingWithState:&v50 objects:v59 count:16];
        if (v44)
        {
          v42 = *v51;
          v43 = v10;
          do
          {
            v11 = 0;
            do
            {
              if (*v51 != v42)
              {
                objc_enumerationMutation(devices);
              }

              v45 = v11;
              v12 = *(*(&v50 + 1) + 8 * v11);
              [v10 appendFormat:@"     {\n"];
              deviceID = [v12 deviceID];
              kt_hexString3 = [deviceID kt_hexString];
              [v10 appendFormat:@"      deviceID:%@\n", kt_hexString3];

              deviceIDHash = [v12 deviceIDHash];
              kt_hexString4 = [deviceIDHash kt_hexString];
              [v10 appendFormat:@"      deviceIDHash: %@\n", kt_hexString4];

              v17 = [NSMutableString stringWithFormat:@"[\n"];
              v46 = 0u;
              v47 = 0u;
              v48 = 0u;
              v49 = 0u;
              clientDatas = [v12 clientDatas];
              v19 = [clientDatas countByEnumeratingWithState:&v46 objects:v58 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v47;
                do
                {
                  for (i = 0; i != v20; i = i + 1)
                  {
                    if (*v47 != v21)
                    {
                      objc_enumerationMutation(clientDatas);
                    }

                    v23 = *(*(&v46 + 1) + 8 * i);
                    [v17 appendFormat:@"       {\n"];
                    clientData = [v23 clientData];
                    kt_hexString5 = [clientData kt_hexString];
                    [v17 appendFormat:@"        clientData:%@\n", kt_hexString5];

                    clientDataHash = [v23 clientDataHash];
                    kt_hexString6 = [clientDataHash kt_hexString];
                    [v17 appendFormat:@"        clientDataHash:%@\n", kt_hexString6];

                    [v17 appendFormat:@"        appVersion:%lu\n", objc_msgSend(v23, "applicationVersion")];
                    addedDate = [v23 addedDate];
                    markedForDeletion = [v23 markedForDeletion];
                    expiry = [v23 expiry];
                    escrowExpiry = [v23 escrowExpiry];
                    [v17 appendFormat:@"        addedDate:%@ markDate:%@; expiryDate:%@; escrowDate:%@\n", addedDate, markedForDeletion, expiry, escrowExpiry];

                    [v17 appendFormat:@"       }, \n"];
                  }

                  v20 = [clientDatas countByEnumeratingWithState:&v46 objects:v58 count:16];
                }

                while (v20);
              }

              [v17 appendFormat:@"      ]"];
              v10 = v43;
              [v43 appendFormat:@"      clientDatas: %@\n", v17];
              [v43 appendFormat:@"     }, \n"];

              v11 = v45 + 1;
            }

            while ((v45 + 1) != v44);
            v44 = [devices countByEnumeratingWithState:&v50 objects:v59 count:16];
          }

          while (v44);
        }

        [v10 appendFormat:@"    ]"];
        v3 = v38;
        [v38 appendFormat:@"    devices: %@\n", v10];
        [v38 appendFormat:@"   }, \n"];

        v4 = v40 + 1;
      }

      while ((v40 + 1) != v39);
      v39 = [(NSMutableArray *)obj countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v39);
  }

  [v3 appendFormat:@"  ]"];
  kt_hexString7 = [(NSData *)selfCopy->_uriVRFOutput kt_hexString];
  v33 = [NSString stringWithFormat:@"{\n  uriVRFOutput: %@\n  accounts: %@\n}", kt_hexString7, v3];

  return v33;
}

- (NSDictionary)diagnosticsJsonDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  uriVRFOutput = [(KTTransparentData *)self uriVRFOutput];
  kt_hexString = [uriVRFOutput kt_hexString];
  [v3 setObject:kt_hexString forKeyedSubscript:@"uriVRFOutput"];

  [(KTTransparentData *)self staticKeyStatus];
  v6 = KTStaticKeyPeerValidateResultGetString();
  [v3 setObject:v6 forKeyedSubscript:@"staticKeyStatus"];

  v7 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  accounts = [(KTTransparentData *)self accounts];
  v9 = [accounts countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(accounts);
        }

        diagnosticsJsonDictionary = [*(*(&v15 + 1) + 8 * i) diagnosticsJsonDictionary];
        [v7 addObject:diagnosticsJsonDictionary];
      }

      v10 = [accounts countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [v3 setObject:v7 forKeyedSubscript:@"accounts"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accounts = [(KTTransparentData *)self accounts];
  [coderCopy encodeObject:accounts forKey:@"accounts"];

  uriVRFOutput = [(KTTransparentData *)self uriVRFOutput];
  [coderCopy encodeObject:uriVRFOutput forKey:@"uriVRFOutput"];

  currentTreeEpochBeginDate = [(KTTransparentData *)self currentTreeEpochBeginDate];
  [coderCopy encodeObject:currentTreeEpochBeginDate forKey:@"currentTreeEpoch"];
}

- (KTTransparentData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"accounts"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uriVRFOutput"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentTreeEpoch"];

  v10 = objc_alloc_init(KTTransparentData);
  if (v10)
  {
    v11 = [v7 mutableCopy];
    [(KTTransparentData *)v10 setAccounts:v11];

    [(KTTransparentData *)v10 setUriVRFOutput:v8];
    [(KTTransparentData *)v10 setCurrentTreeEpochBeginDate:v9];
  }

  return v10;
}

- (KTTransparentData)initWithUriVRFOutput:(id)output mapLeaf:(id)leaf pendingSMTs:(id)ts error:(id *)error
{
  tsCopy = ts;
  leafCopy = leaf;
  outputCopy = output;
  v13 = +[KTDefaultTransparentDataDeps shared];
  v14 = [(KTTransparentData *)self initWithUriVRFOutput:outputCopy mapLeaf:leafCopy pendingSMTs:tsCopy deps:v13 error:error];

  return v14;
}

- (KTTransparentData)initWithUriVRFOutput:(id)output mapLeaf:(id)leaf pendingSMTs:(id)ts deps:(id)deps error:(id *)error
{
  outputCopy = output;
  leafCopy = leaf;
  tsCopy = ts;
  depsCopy = deps;
  v23.receiver = self;
  v23.super_class = KTTransparentData;
  v17 = [(KTTransparentData *)&v23 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v17->_uriVRFOutput, output);
  v19 = +[NSMutableArray array];
  accounts = v18->_accounts;
  v18->_accounts = v19;

  [(KTTransparentData *)v18 setDeps:depsCopy];
  [(KTTransparentData *)v18 setStaticKeyStatus:3];
  if (leafCopy)
  {
    if (![(KTTransparentData *)v18 updateWithMapLeaf:leafCopy error:error])
    {
      goto LABEL_7;
    }
  }

  if (tsCopy && ![(KTTransparentData *)v18 updateWithSMTs:tsCopy error:error])
  {
LABEL_7:
    v21 = 0;
  }

  else
  {
LABEL_6:
    v21 = v18;
  }

  return v21;
}

- (id)copy
{
  v2 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v3 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];

  return v3;
}

- (id)serialize
{
  v3 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v3 encodeObject:self forKey:@"kTransparentData"];
  encodedData = [v3 encodedData];

  return encodedData;
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
      uriVRFOutput = [(KTTransparentData *)self uriVRFOutput];
      uriVRFOutput2 = [(KTTransparentData *)v5 uriVRFOutput];
      v8 = uriVRFOutput2;
      if (uriVRFOutput == uriVRFOutput2)
      {
      }

      else
      {
        uriVRFOutput3 = [(KTTransparentData *)self uriVRFOutput];
        uriVRFOutput4 = [(KTTransparentData *)v5 uriVRFOutput];
        v11 = [uriVRFOutput3 isEqualToData:uriVRFOutput4];

        if (!v11)
        {
          goto LABEL_15;
        }
      }

      accounts = [(KTTransparentData *)self accounts];
      accounts2 = [(KTTransparentData *)v5 accounts];
      v15 = accounts2;
      if (accounts == accounts2)
      {
      }

      else
      {
        accounts3 = [(KTTransparentData *)self accounts];
        accounts4 = [(KTTransparentData *)v5 accounts];
        v18 = [accounts3 isEqual:accounts4];

        if (!v18)
        {
          goto LABEL_15;
        }
      }

      currentTreeEpochBeginDate = [(KTTransparentData *)self currentTreeEpochBeginDate];
      currentTreeEpochBeginDate2 = [(KTTransparentData *)v5 currentTreeEpochBeginDate];
      v21 = currentTreeEpochBeginDate2;
      if (currentTreeEpochBeginDate == currentTreeEpochBeginDate2)
      {
      }

      else
      {
        currentTreeEpochBeginDate3 = [(KTTransparentData *)self currentTreeEpochBeginDate];
        currentTreeEpochBeginDate4 = [(KTTransparentData *)v5 currentTreeEpochBeginDate];
        v24 = [currentTreeEpochBeginDate3 kt_isEqualWithinOneMillisecond:currentTreeEpochBeginDate4];

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

- (id)accountForAccountKeyHash:(id)hash
{
  hashCopy = hash;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_accounts;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        accountKeyHash = [v9 accountKeyHash];
        v11 = [accountKeyHash isEqualToData:hashCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)accountForAccountKey:(id)key
{
  keyCopy = key;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_accounts;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        accountKey = [v10 accountKey];
        v12 = [accountKey isEqualToData:keyCopy];

        if (v12)
        {
          v15 = v10;
          goto LABEL_12;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  uriVRFOutput = [(KTTransparentData *)self uriVRFOutput];
  v5 = [keyCopy kt_sha256WithSalt:uriVRFOutput];

  v14 = [(KTTransparentData *)self accountForAccountKeyHash:v5];
  v15 = v14;
  if (v14)
  {
    [v14 setAccountKey:keyCopy];
  }

LABEL_12:

  return v15;
}

- (BOOL)updateWithMapLeaf:(id)leaf error:(id *)error
{
  leafCopy = leaf;
  v7 = [leafCopy verifyWithError:error];
  if (v7 == 1)
  {
    v8 = +[NSMutableArray array];
    [(KTTransparentData *)self setAccounts:v8];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    accountsArray = [leafCopy accountsArray];
    v10 = [accountsArray countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(accountsArray);
          }

          v14 = [[KTAccount alloc] initWithIdsAccount:*(*(&v19 + 1) + 8 * i)];
          accounts = [(KTTransparentData *)self accounts];
          [accounts addObject:v14];
        }

        v11 = [accountsArray countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    deps = [(KTTransparentData *)self deps];
    v17 = [deps now];
    [(KTTransparentData *)self cleanupAccounts:v17];
  }

  return v7 == 1;
}

- (id)sortMutationsByTimestamp:(id)timestamp error:(id *)error
{
  timestampCopy = timestamp;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001AA838;
  v11[3] = &unk_100326028;
  v11[4] = &v12;
  v6 = [timestampCopy sortedArrayUsingComparator:v11];
  v7 = v6;
  if (*(v13 + 24) == 1)
  {
    v8 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-332 description:@"error sorting SMTs due to multiple conflicting SMTs with the same timestamp"];
    if (error && v8)
    {
      v8 = v8;
      *error = v8;
    }

    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)mutationsFromSMTs:(id)ts error:(id *)error
{
  tsCopy = ts;
  v6 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = tsCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

        v12 = [SignedMutationTimestamp signedTypeWithObject:*(*(&v17 + 1) + 8 * i), v17];
        v13 = [v12 parsedMutationWithError:error];
        if (!v13)
        {

          v15 = 0;
          goto LABEL_11;
        }

        v14 = v13;
        [v6 addObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = v6;
LABEL_11:

  return v15;
}

- (void)markAccountsWithMutationMs:(unint64_t)ms except:(id)except
{
  exceptCopy = except;
  v7 = [NSDate dateWithTimeIntervalSince1970:ms / 1000.0];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(KTTransparentData *)self accounts];
  v8 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v39;
    v24 = *v39;
    v25 = exceptCopy;
    do
    {
      v11 = 0;
      v26 = v9;
      do
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v38 + 1) + 8 * v11);
        if ((!exceptCopy || ([*(*(&v38 + 1) + 8 * v11) isEqual:exceptCopy] & 1) == 0) && objc_msgSend(v12, "active:", v7, v24, v25))
        {
          v28 = v11;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          devices = [v12 devices];
          v13 = [devices countByEnumeratingWithState:&v34 objects:v43 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v35;
            do
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v35 != v15)
                {
                  objc_enumerationMutation(devices);
                }

                v17 = *(*(&v34 + 1) + 8 * i);
                if ([v17 active:v7])
                {
                  v32 = 0u;
                  v33 = 0u;
                  v30 = 0u;
                  v31 = 0u;
                  clientDatas = [v17 clientDatas];
                  v19 = [clientDatas countByEnumeratingWithState:&v30 objects:v42 count:16];
                  if (v19)
                  {
                    v20 = v19;
                    v21 = *v31;
                    do
                    {
                      for (j = 0; j != v20; j = j + 1)
                      {
                        if (*v31 != v21)
                        {
                          objc_enumerationMutation(clientDatas);
                        }

                        v23 = *(*(&v30 + 1) + 8 * j);
                        if ([v23 active:v7])
                        {
                          [v23 markWithMutationMs:ms];
                        }
                      }

                      v20 = [clientDatas countByEnumeratingWithState:&v30 objects:v42 count:16];
                    }

                    while (v20);
                  }
                }
              }

              v14 = [devices countByEnumeratingWithState:&v34 objects:v43 count:16];
            }

            while (v14);
          }

          v10 = v24;
          exceptCopy = v25;
          v9 = v26;
          v11 = v28;
        }

        v11 = v11 + 1;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v9);
  }
}

- (void)updateWithOptInOutMutation:(id)mutation error:(id *)error
{
  mutationCopy = mutation;
  accountKeyHash = [mutationCopy accountKeyHash];
  v7 = [(KTTransparentData *)self accountForAccountKeyHash:accountKeyHash];

  v8 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [mutationCopy timestampMs] / 1000.0);
  if (v7 && [v7 active:v8])
  {
    [v7 updateWithOptInOutMutation:mutationCopy error:error];
  }
}

- (void)updateWithAddMutation:(id)mutation error:(id *)error
{
  mutationCopy = mutation;
  accountKeyHash = [mutationCopy accountKeyHash];
  v7 = [(KTTransparentData *)self accountForAccountKeyHash:accountKeyHash];

  idsMutation = [mutationCopy idsMutation];
  -[KTTransparentData markAccountsWithMutationMs:except:](self, "markAccountsWithMutationMs:except:", [idsMutation mutationMs], v7);

  if (v7)
  {
    [(KTAccount *)v7 updateWithAddMutation:mutationCopy error:error];
  }

  else
  {
    v7 = [[KTAccount alloc] initWithMutation:mutationCopy];
    [(KTTransparentData *)self addAccountsObject:v7];
  }
}

- (void)updateWithMarkDeleteMutation:(id)mutation error:(id *)error
{
  mutationCopy = mutation;
  accountKeyHash = [mutationCopy accountKeyHash];
  v7 = [(KTTransparentData *)self accountForAccountKeyHash:accountKeyHash];

  if (v7)
  {
    [v7 updateWithMarkDeleteMutation:mutationCopy error:error];
  }
}

- (void)cleanupAccounts:(id)accounts
{
  accountsCopy = accounts;
  accounts = [(KTTransparentData *)self accounts];
  v6 = [NSArray arrayWithArray:accounts];

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
        [v12 cleanupDevices:accountsCopy removeAllMarked:{0, v13}];
        if ([v12 shouldRemove])
        {
          [(KTTransparentData *)self removeAccountsObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)deleteMarkedEntries:(unint64_t)entries
{
  v4 = [NSDate dateWithTimeIntervalSince1970:entries / 1000.0];
  accounts = [(KTTransparentData *)self accounts];
  v6 = [NSArray arrayWithArray:accounts];

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
          [(KTTransparentData *)self removeAccountsObject:v12];
        }

        [v12 deleteMarkedEntries:v4];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (BOOL)updateWithMutation:(id)mutation error:(id *)error
{
  mutationCopy = mutation;
  uriVRFOutput = [mutationCopy uriVRFOutput];
  uriVRFOutput2 = [(KTTransparentData *)self uriVRFOutput];
  v9 = [uriVRFOutput isEqualToData:uriVRFOutput2];

  if ((v9 & 1) == 0)
  {
    if (error)
    {
      *error = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-86 description:@"smt has different URI VRF output than computed in witness"];
    }

    if (qword_10039C7F8 != -1)
    {
      sub_10025B078();
    }

    v12 = qword_10039C800;
    if (!os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    LOWORD(v25[0]) = 0;
    v13 = "smt has different URI VRF output than computed in witness";
    goto LABEL_16;
  }

  mutationType = [mutationCopy mutationType];
  if (mutationType > 3)
  {
    if (mutationType == 6)
    {
      optInOutMutation = [mutationCopy optInOutMutation];

      if (optInOutMutation)
      {
        optInOutMutation2 = [mutationCopy optInOutMutation];
        [(KTTransparentData *)self updateWithOptInOutMutation:optInOutMutation2 error:error];
        goto LABEL_27;
      }

      if (qword_10039C7F8 != -1)
      {
        sub_10025B08C();
      }

      v12 = qword_10039C800;
      if (os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v25[0]) = 0;
        v13 = "optInOutWithSync mutation doesn't have OptInOutMutation object";
        goto LABEL_16;
      }

LABEL_17:
      v14 = 0;
      goto LABEL_31;
    }

    if (mutationType == 5)
    {
LABEL_23:
      idsDeviceMutation = [mutationCopy idsDeviceMutation];

      if (idsDeviceMutation)
      {
        optInOutMutation2 = [mutationCopy idsDeviceMutation];
        [(KTTransparentData *)self updateWithMarkDeleteMutation:optInOutMutation2 error:error];
        goto LABEL_27;
      }

      if (qword_10039C7F8 != -1)
      {
        sub_10025B0B4();
      }

      v12 = qword_10039C800;
      if (os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v25[0]) = 0;
        v13 = "Mark mutation doesn't have idsDeviceMutation object";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v13, v25, 2u);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    if (mutationType != 4)
    {
      goto LABEL_32;
    }
  }

  else if (mutationType != 1)
  {
    if (mutationType != 2)
    {
      if (mutationType == 3)
      {
        if (qword_10039C7F8 != -1)
        {
          sub_10025B0A0();
        }

        v11 = qword_10039C800;
        if (os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v25[0]) = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "WARNING: Skipping deprecated mutation type OPT_IN_OUT_MUTATION", v25, 2u);
        }

        goto LABEL_28;
      }

LABEL_32:
      if (qword_10039C7F8 != -1)
      {
        sub_10025B0DC();
      }

      v23 = qword_10039C800;
      if (os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_ERROR))
      {
        v24 = v23;
        v25[0] = 67109120;
        v25[1] = [mutationCopy mutationType];
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "unknown mutation type %d, continuing anyway", v25, 8u);
      }

      goto LABEL_28;
    }

    goto LABEL_23;
  }

  idsDeviceMutation2 = [mutationCopy idsDeviceMutation];

  if (!idsDeviceMutation2)
  {
    if (qword_10039C7F8 != -1)
    {
      sub_10025B0C8();
    }

    v12 = qword_10039C800;
    if (!os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    LOWORD(v25[0]) = 0;
    v13 = "Add mutation doesn't have idsDeviceMutation object";
    goto LABEL_16;
  }

  optInOutMutation2 = [mutationCopy idsDeviceMutation];
  [(KTTransparentData *)self updateWithAddMutation:optInOutMutation2 error:error];
LABEL_27:

LABEL_28:
  deps = [(KTTransparentData *)self deps];
  v20 = [deps now];

  if ([mutationCopy mutationMs])
  {
    v21 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [mutationCopy mutationMs] / 1000.0);

    v20 = v21;
  }

  [(KTTransparentData *)self cleanupAccounts:v20];

  v14 = 1;
LABEL_31:

  return v14;
}

- (BOOL)updateWithSMTs:(id)ts error:(id *)error
{
  v6 = [(KTTransparentData *)self mutationsFromSMTs:ts error:?];
  v7 = [(KTTransparentData *)self sortMutationsByTimestamp:v6 error:error];

  if (v7)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if (![(KTTransparentData *)self updateWithMutation:*(*(&v15 + 1) + 8 * i) error:error, v15])
          {
            v13 = 0;
            goto LABEL_12;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_12:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)filterLoggableDatas:(id)datas deviceIdHash:(id)hash
{
  datasCopy = datas;
  hashCopy = hash;
  v8 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = datasCopy;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        deviceIdHash = [v14 deviceIdHash];

        if (!deviceIdHash)
        {
          uriVRFOutput = [(KTTransparentData *)self uriVRFOutput];
          [v14 computeHashesForSalt:uriVRFOutput];
        }

        deviceIdHash2 = [v14 deviceIdHash];
        v18 = [deviceIdHash2 isEqualToData:hashCopy];

        if (v18)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v19 = v8;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)filterLoggableDatas:(id)datas clientDataHash:(id)hash
{
  datasCopy = datas;
  hashCopy = hash;
  v8 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = datasCopy;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        clientDataHash = [v14 clientDataHash];

        if (!clientDataHash)
        {
          uriVRFOutput = [(KTTransparentData *)self uriVRFOutput];
          [v14 computeHashesForSalt:uriVRFOutput];
        }

        clientDataHash2 = [v14 clientDataHash];
        v18 = [clientDataHash2 isEqualToData:hashCopy];

        if (v18)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v19 = v8;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)failedRecordsForSyncedLoggableDatas:(id)datas accountKey:(id)key cloudDevices:(id)devices requestDate:(id)date error:(id *)error
{
  datasCopy = datas;
  keyCopy = key;
  devicesCopy = devices;
  dateCopy = date;
  v13 = [(KTTransparentData *)self accountForAccountKey:keyCopy];
  v92 = v13;
  if (v13)
  {
    errorCopy = error;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    obj = [v13 devices];
    v98 = [obj countByEnumeratingWithState:&v112 objects:v129 count:16];
    if (v98)
    {
      v91 = keyCopy;
      v97 = *v113;
      v14 = &PCSIdentityCopyPublicKeyInfo_ptr;
      selfCopy = self;
      while (1)
      {
        v15 = 0;
        do
        {
          if (*v113 != v97)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v112 + 1) + 8 * v15);
          v17 = +[NSMutableArray array];
          deviceIDHash = [v16 deviceIDHash];
          v19 = [devicesCopy fetchSyncedLoggableDataByDeviceIdHash:deviceIDHash];

          if (v19)
          {
            if (qword_10039C7F8 != -1)
            {
              sub_10025B0F0();
            }

            v20 = qword_10039C800;
            if (os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_DEBUG))
            {
              v21 = v20;
              firstObject = [v19 firstObject];
              [firstObject deviceID];
              v24 = v23 = v15;
              [v24 kt_hexString];
              v104 = v17;
              v26 = v25 = v16;
              deviceIDHash2 = [v25 deviceIDHash];
              kt_hexString = [deviceIDHash2 kt_hexString];
              v29 = [v19 count];
              *buf = 138412802;
              v119 = v26;
              v120 = 2112;
              v121 = kt_hexString;
              v122 = 1024;
              LODWORD(v123) = v29;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "CloudDevices: found device %@ with deviceIDHash: %@: %d", buf, 0x1Cu);

              self = selfCopy;
              v15 = v23;

              v16 = v25;
              v17 = v104;
              v14 = &PCSIdentityCopyPublicKeyInfo_ptr;
            }

            [v17 addObjectsFromArray:v19];
          }

          if (([devicesCopy disableKTSyncabledKVSStore] & 1) == 0)
          {
            deviceIDHash3 = [v16 deviceIDHash];
            v31 = [(KTTransparentData *)self filterLoggableDatas:datasCopy deviceIdHash:deviceIDHash3];

            if (v31)
            {
              if (qword_10039C7F8 != -1)
              {
                sub_10025B118();
              }

              v32 = qword_10039C800;
              if (os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_DEBUG))
              {
                v33 = v32;
                [v31 firstObject];
                v34 = v105 = v16;
                deviceID = [v34 deviceID];
                [deviceID kt_hexString];
                v99 = v19;
                v37 = v36 = v15;
                deviceIDHash4 = [v105 deviceIDHash];
                kt_hexString2 = [deviceIDHash4 kt_hexString];
                v40 = [v31 count];
                *buf = 138412802;
                v119 = v37;
                v120 = 2112;
                v121 = kt_hexString2;
                v122 = 1024;
                LODWORD(v123) = v40;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "KVS: found device %@ with deviceIDHash: %@: %d", buf, 0x1Cu);

                self = selfCopy;
                v16 = v105;
                v14 = &PCSIdentityCopyPublicKeyInfo_ptr;

                v15 = v36;
                v19 = v99;
              }

              [v17 addObjectsFromArray:v31];
            }
          }

          if (![v17 count])
          {
            deviceIDHash5 = [v16 deviceIDHash];
            kt_hexString3 = [deviceIDHash5 kt_hexString];

            addedDate = [v16 addedDate];
            v65 = [addedDate compare:dateCopy];

            if (v65 == 1)
            {
              if (qword_10039C7F8 != -1)
              {
                sub_10025B1B8();
              }

              v66 = qword_10039C800;
              if (os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_DEBUG))
              {
                v67 = v66;
                addedDate2 = [v16 addedDate];
                *buf = 138412802;
                v119 = kt_hexString3;
                v120 = 2112;
                v121 = addedDate2;
                v122 = 2112;
                v123 = dateCopy;
                _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEBUG, "skipping device (%@) added %@ after request time %@", buf, 0x20u);
              }

              v62 = 3;
              goto LABEL_68;
            }

            v75 = [v14[345] errorWithDomain:@"TransparencyErrorVerify" code:-99 underlyingError:*errorCopy description:{@"Unknown device in Transparent Data with deviceIdHash %@", kt_hexString3}];
            if ([v16 marked:dateCopy])
            {
              [v14[345] errorWithDomain:@"TransparencyErrorVerify" code:-107 underlyingError:*errorCopy description:{@"Unknown marked device in Transparent Data with deviceIdHash %@", kt_hexString3}];
              goto LABEL_60;
            }

            if ([v16 expired:dateCopy])
            {
              [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-161 underlyingError:*errorCopy description:@"Unknown expired device in Transparent Data with deviceIdHash %@", kt_hexString3];
              v79 = LABEL_60:;

              v75 = v79;
            }

            if (qword_10039C7F8 != -1)
            {
              sub_10025B190();
            }

            v14 = &PCSIdentityCopyPublicKeyInfo_ptr;
            v80 = qword_10039C800;
            if (os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v119 = kt_hexString3;
              _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "Unknown device in Transparent Data with deviceIdHash %{public}@", buf, 0xCu);
            }

            if (v75)
            {
              v81 = v75;
              *errorCopy = v75;
            }

            v127 = @"failedDeviceIdHash";
            v128 = kt_hexString3;
            v62 = 1;
            v93 = [NSDictionary dictionaryWithObjects:&v128 forKeys:&v127 count:1];

            goto LABEL_68;
          }

          v41 = [v17 objectAtIndexedSubscript:0];
          deviceID2 = [v41 deviceID];
          [v16 setDeviceID:deviceID2];

          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          kt_hexString3 = [v16 clientDatas];
          v44 = [kt_hexString3 countByEnumeratingWithState:&v108 objects:v126 count:16];
          if (!v44)
          {
            v62 = 0;
            goto LABEL_68;
          }

          v45 = v44;
          v106 = v16;
          v46 = kt_hexString3;
          v100 = v19;
          v96 = v15;
          v47 = *v109;
          while (2)
          {
            v48 = 0;
            do
            {
              if (*v109 != v47)
              {
                objc_enumerationMutation(v46);
              }

              v49 = *(*(&v108 + 1) + 8 * v48);
              clientDataHash = [v49 clientDataHash];
              kt_hexString4 = [(KTTransparentData *)self filterLoggableDatas:v17 clientDataHash:clientDataHash];

              if (kt_hexString4)
              {
                v52 = [kt_hexString4 objectAtIndexedSubscript:0];
                clientData = [v52 clientData];
                [v49 setClientData:clientData];

                [v49 setSynced:1];
              }

              else
              {
                deviceID3 = [v106 deviceID];
                kt_hexString4 = [deviceID3 kt_hexString];

                clientDataHash2 = [v49 clientDataHash];
                kt_hexString5 = [clientDataHash2 kt_hexString];

                addedDate3 = [v49 addedDate];
                v58 = [addedDate3 compare:dateCopy];

                if (v58 != 1)
                {
                  addedDate4 = [v49 addedDate];
                  markedForDeletion = [v49 markedForDeletion];
                  expiry = [v49 expiry];
                  v72 = [NSString stringWithFormat:@"Unknown client data in Transparent Data for device {%@, %@, %@, %@, %@}", kt_hexString4, kt_hexString5, addedDate4, markedForDeletion, expiry];

                  v73 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-100 underlyingError:*errorCopy description:@"%@", v72];
                  if ([v49 marked:dateCopy])
                  {
                    v74 = -108;
                    self = selfCopy;
                    kt_hexString3 = v46;
                    goto LABEL_50;
                  }

                  self = selfCopy;
                  kt_hexString3 = v46;
                  if ([v49 expired:dateCopy])
                  {
                    v74 = -162;
LABEL_50:
                    v76 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:v74 underlyingError:*errorCopy description:@"%@", v72];

                    v73 = v76;
                  }

                  if (qword_10039C7F8 != -1)
                  {
                    sub_10025B140();
                  }

                  v77 = qword_10039C800;
                  if (os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v119 = v72;
                    _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
                  }

                  if (v73)
                  {
                    v78 = v73;
                    *errorCopy = v73;
                  }

                  v116[0] = @"failedDeviceId";
                  v116[1] = @"failedClientDataHash";
                  v117[0] = kt_hexString4;
                  v117[1] = kt_hexString5;
                  v93 = [NSDictionary dictionaryWithObjects:v117 forKeys:v116 count:2];

                  v62 = 1;
                  v14 = &PCSIdentityCopyPublicKeyInfo_ptr;
                  v15 = v96;
                  v19 = v100;
                  goto LABEL_68;
                }

                if (qword_10039C7F8 != -1)
                {
                  sub_10025B168();
                }

                v59 = qword_10039C800;
                if (os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_DEBUG))
                {
                  v60 = v59;
                  addedDate5 = [v49 addedDate];
                  *buf = 138413058;
                  v119 = kt_hexString4;
                  v120 = 2112;
                  v121 = kt_hexString5;
                  v122 = 2112;
                  v123 = addedDate5;
                  v124 = 2112;
                  v125 = dateCopy;
                  _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEBUG, "skipping client data (%@,%@) added %@ after request time %@", buf, 0x2Au);
                }

                self = selfCopy;
              }

              v48 = v48 + 1;
            }

            while (v45 != v48);
            v45 = [v46 countByEnumeratingWithState:&v108 objects:v126 count:16];
            if (v45)
            {
              continue;
            }

            break;
          }

          v62 = 0;
          v14 = &PCSIdentityCopyPublicKeyInfo_ptr;
          v15 = v96;
          v19 = v100;
          kt_hexString3 = v46;
LABEL_68:

          if (v62 != 3 && v62)
          {
            keyCopy = v91;
            v82 = v93;
            goto LABEL_85;
          }

          v15 = v15 + 1;
        }

        while (v15 != v98);
        v98 = [obj countByEnumeratingWithState:&v112 objects:v129 count:16];
        if (!v98)
        {
          v82 = 0;
          keyCopy = v91;
          goto LABEL_85;
        }
      }
    }

    v82 = 0;
    goto LABEL_85;
  }

  if (error)
  {
    v83 = *error;
    errorCopy2 = error;
    kt_hexString6 = [keyCopy kt_hexString];
    *errorCopy2 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-98 underlyingError:v83 description:@"No transparent data for accountKey %@", kt_hexString6];
  }

  if (qword_10039C7F8 != -1)
  {
    sub_10025B1E0();
  }

  v86 = qword_10039C800;
  if (os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_ERROR))
  {
    v87 = v86;
    kt_hexString7 = [keyCopy kt_hexString];
    *buf = 138412290;
    v119 = kt_hexString7;
    _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "No transparent data for accountKey %@", buf, 0xCu);
  }

  v130 = @"failedAccountKey";
  if (keyCopy)
  {
    v89 = [keyCopy base64EncodedStringWithOptions:0];
  }

  else
  {
    v89 = @"NULL";
  }

  obj = v89;
  v131 = v89;
  v82 = [NSDictionary dictionaryWithObjects:&v131 forKeys:&v130 count:1];
  if (keyCopy)
  {
LABEL_85:
  }

  return v82;
}

- (BOOL)validateAndUpdateWithSyncedLoggableDatas:(id)datas accountKey:(id)key cloudDevices:(id)devices requestDate:(id)date error:(id *)error
{
  v7 = [(KTTransparentData *)self failedRecordsForSyncedLoggableDatas:datas accountKey:key cloudDevices:devices requestDate:date error:error];
  v8 = v7 == 0;

  return v8;
}

- (BOOL)validateOtherAccountsInactiveForAccount:(id)account at:(id)at error:(id *)error
{
  accountCopy = account;
  atCopy = at;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = self->_accounts;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        if (([v15 isEqual:accountCopy] & 1) == 0 && objc_msgSend(v15, "active:", atCopy))
        {
          if (error)
          {
            [accountCopy accountKeyHash];
            v17 = v28 = error;
            kt_hexString = [v17 kt_hexString];
            accountKeyHash = [v15 accountKeyHash];
            kt_hexString2 = [accountKeyHash kt_hexString];
            *v28 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-91 description:@"verifying (%@), other accountKey (%@) has active records", kt_hexString, kt_hexString2];
          }

          if (qword_10039C7F8 != -1)
          {
            sub_10025B1F4();
          }

          v21 = qword_10039C800;
          if (os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_ERROR))
          {
            v22 = v21;
            accountKeyHash2 = [accountCopy accountKeyHash];
            kt_hexString3 = [accountKeyHash2 kt_hexString];
            accountKeyHash3 = [v15 accountKeyHash];
            kt_hexString4 = [accountKeyHash3 kt_hexString];
            *buf = 138412546;
            v34 = kt_hexString3;
            v35 = 2112;
            v36 = kt_hexString4;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "verifying (%@), other accountKey (%@) has active records", buf, 0x16u);
          }

          v16 = 0;
          goto LABEL_18;
        }
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_18:

  return v16;
}

- (BOOL)validateActiveClientDatas:(id)datas at:(id)at error:(id *)error
{
  atCopy = at;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  devices = [datas devices];
  v30 = [devices countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v30)
  {
    v8 = *v40;
    v9 = NSNotification_ptr;
    v34 = devices;
    v29 = *v40;
    do
    {
      v10 = 0;
      do
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(devices);
        }

        v31 = v10;
        v11 = *(*(&v39 + 1) + 8 * v10);
        array = [v9[106] array];
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v33 = v11;
        clientDatas = [v11 clientDatas];
        v14 = [clientDatas countByEnumeratingWithState:&v35 objects:v47 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v36;
          while (2)
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v36 != v16)
              {
                objc_enumerationMutation(clientDatas);
              }

              v18 = *(*(&v35 + 1) + 8 * i);
              if ([v18 active:atCopy])
              {
                v19 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v18 applicationVersion]);
                v20 = [array containsObject:v19];

                if (v20)
                {
                  if (error)
                  {
                    deviceIDHash = [v33 deviceIDHash];
                    *error = +[TransparencyError errorWithDomain:code:description:](TransparencyError, "errorWithDomain:code:description:", @"TransparencyErrorVerify", -92, @"muliple active client datas for deviceIdHash %@ appVersion %lu", deviceIDHash, [v18 applicationVersion]);
                  }

                  if (qword_10039C7F8 != -1)
                  {
                    sub_10025B21C();
                  }

                  devices = v34;
                  v24 = qword_10039C800;
                  if (os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_ERROR))
                  {
                    v25 = v24;
                    deviceIDHash2 = [v33 deviceIDHash];
                    applicationVersion = [v18 applicationVersion];
                    *buf = 138412546;
                    v44 = deviceIDHash2;
                    v45 = 2048;
                    v46 = applicationVersion;
                    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "muliple active client datas for deviceIdHash %@ appVersion %lu", buf, 0x16u);
                  }

                  v22 = 0;
                  goto LABEL_27;
                }

                v21 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v18 applicationVersion]);
                [array addObject:v21];
              }
            }

            v15 = [clientDatas countByEnumeratingWithState:&v35 objects:v47 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v10 = v31 + 1;
        devices = v34;
        v8 = v29;
        v9 = NSNotification_ptr;
      }

      while ((v31 + 1) != v30);
      v22 = 1;
      v30 = [v34 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v30);
  }

  else
  {
    v22 = 1;
  }

LABEL_27:

  return v22;
}

- (BOOL)verifyServerInvariantsAt:(id)at error:(id *)error
{
  atCopy = at;
  if (!atCopy)
  {
    deps = [(KTTransparentData *)self deps];
    atCopy = [deps now];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  accounts = [(KTTransparentData *)self accounts];
  v9 = [accounts countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(accounts);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 active:atCopy] && !-[KTTransparentData validateOtherAccountsInactiveForAccount:at:error:](self, "validateOtherAccountsInactiveForAccount:at:error:", v13, atCopy, error) || !-[KTTransparentData validateActiveClientDatas:at:error:](self, "validateActiveClientDatas:at:error:", v13, atCopy, error))
        {
          v14 = 0;
          goto LABEL_15;
        }
      }

      v10 = [accounts countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_15:

  return v14;
}

+ (void)addResult:(unint64_t)result failure:(id)failure toLoggableDatas:(id)datas
{
  failureCopy = failure;
  datasCopy = datas;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [datasCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(datasCopy);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        [v13 setResult:result];
        [v13 setFailure:failureCopy];
      }

      v10 = [datasCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (id)failureResult:(id)result loggableData:(id)data
{
  resultCopy = result;
  dataCopy = data;
  v7 = +[NSMutableDictionary dictionary];
  if (resultCopy)
  {
    v8 = [resultCopy base64EncodedStringWithOptions:0];
    [v7 setObject:v8 forKeyedSubscript:@"failedAccountKey"];
  }

  deviceID = [dataCopy deviceID];

  if (deviceID)
  {
    deviceID2 = [dataCopy deviceID];
    v11 = [deviceID2 base64EncodedStringWithOptions:0];
    [v7 setObject:v11 forKeyedSubscript:@"failedDeviceId"];
  }

  clientData = [dataCopy clientData];

  if (clientData)
  {
    clientData2 = [dataCopy clientData];
    v14 = [clientData2 base64EncodedStringWithOptions:0];
    [v7 setObject:v14 forKeyedSubscript:@"failedClientData"];
  }

  return v7;
}

- (id)failedServerLoggableDatas:(id)datas accountKey:(id)key idsResponseTime:(double)time error:(id *)error
{
  datasCopy = datas;
  keyCopy = key;
  selfCopy = self;
  v106 = [(KTTransparentData *)self accountForAccountKey:keyCopy];
  errorCopy = error;
  if (v106)
  {
    v114 = +[NSMutableArray array];
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v103 = datasCopy;
    obj = datasCopy;
    v107 = [obj countByEnumeratingWithState:&v122 objects:v135 count:16];
    v12 = 0;
    if (!v107)
    {
      goto LABEL_56;
    }

    v105 = *v123;
    v13 = NSNotification_ptr;
    v111 = keyCopy;
    while (1)
    {
      v14 = 0;
      do
      {
        if (*v123 != v105)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v122 + 1) + 8 * v14);
        deviceIdHash = [v15 deviceIdHash];

        if (!deviceIdHash)
        {
          uriVRFOutput = [(KTTransparentData *)selfCopy uriVRFOutput];
          [v15 computeHashesForSalt:uriVRFOutput];
        }

        deviceIdHash2 = [v15 deviceIdHash];
        v19 = [v106 deviceForDeviceIdHash:deviceIdHash2];

        if (v19)
        {
          v110 = v14;
          deviceID = [v15 deviceID];
          [v19 setDeviceID:deviceID];

          deviceID2 = [v19 deviceID];
          kt_hexString = [deviceID2 kt_hexString];

          clientDataHash = [v15 clientDataHash];
          v109 = v19;
          v24 = [v19 clientRecordsForHash:clientDataHash];

          v108 = v24;
          if (v24)
          {
            v117 = kt_hexString;
            v120 = 0u;
            v121 = 0u;
            v118 = 0u;
            v119 = 0u;
            v112 = v24;
            v25 = [v112 countByEnumeratingWithState:&v118 objects:v134 count:16];
            if (!v25)
            {
              goto LABEL_37;
            }

            v26 = v25;
            v116 = *v119;
            while (1)
            {
              v27 = 0;
              do
              {
                if (*v119 != v116)
                {
                  objc_enumerationMutation(v112);
                }

                v28 = *(*(&v118 + 1) + 8 * v27);
                v29 = [v13[101] dateWithTimeIntervalSinceReferenceDate:time];
                v30 = [v28 marked:v29];

                if (v30)
                {
                  markedForDeletion = [v28 markedForDeletion];
                  [markedForDeletion timeIntervalSinceReferenceDate];
                  v33 = time - v32;

                  v34 = +[NSMutableDictionary dictionary];
                  v35 = [NSNumber numberWithDouble:time];
                  [v34 setObject:v35 forKeyedSubscript:@"idsResponseTime"];

                  markedForDeletion2 = [v28 markedForDeletion];
                  [markedForDeletion2 timeIntervalSinceReferenceDate];
                  v37 = [NSNumber numberWithDouble:?];
                  [v34 setObject:v37 forKeyedSubscript:@"markedForDeletion"];

                  kt_hexString2 = [keyCopy kt_hexString];
                  [v34 setObject:kt_hexString2 forKeyedSubscript:@"accountKey"];

                  [v34 setObject:v117 forKeyedSubscript:@"deviceID"];
                  clientData = [v15 clientData];
                  kt_hexString3 = [clientData kt_hexString];
                  [v34 setObject:kt_hexString3 forKeyedSubscript:@"clientData"];

                  v41 = [NSNumber numberWithDouble:v33];
                  [v34 setObject:v41 forKeyedSubscript:@"since"];

                  v42 = v33;
                  v43 = v42;
                  v44 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-96 errorLevel:2 underlyingError:0 userinfo:v34 description:@"Transparent data is marked for deletion since %.2f", v42];

                  if (qword_10039C7F8 != -1)
                  {
                    sub_10025B26C();
                  }

                  v45 = qword_10039C800;
                  if (os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_ERROR))
                  {
                    v46 = v45;
                    kt_hexString4 = [keyCopy kt_hexString];
                    clientData2 = [v15 clientData];
                    kt_hexString5 = [clientData2 kt_hexString];
                    *buf = 138544130;
                    v127 = kt_hexString4;
                    v128 = 2114;
                    v129 = v117;
                    v130 = 2112;
                    v131 = kt_hexString5;
                    v132 = 2048;
                    v133 = v43;
                    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Transparent data for accountKey %{public}@ and deviceId %{public}@ and clientData %@ is marked since %.2f", buf, 0x2Au);

                    keyCopy = v111;
                  }

                  v50 = [(KTTransparentData *)selfCopy failureResult:keyCopy loggableData:v15];
                  [v114 addObject:v50];

                  [v15 setResult:0];
                  [v15 setFailure:v44];
                  [v15 setMarked:1];
                  escrowExpiry = [v28 escrowExpiry];
                  [v15 setMarkExpiryDate:escrowExpiry];

                  v52 = errorCopy;
                  v13 = NSNotification_ptr;
                  if (!errorCopy)
                  {
                    goto LABEL_31;
                  }

                  goto LABEL_29;
                }

                v53 = [v13[101] dateWithTimeIntervalSinceReferenceDate:time];
                v54 = [v28 expired:v53];

                if (v54)
                {
                  v34 = +[NSMutableDictionary dictionary];
                  v55 = [NSNumber numberWithDouble:time];
                  [v34 setObject:v55 forKeyedSubscript:@"idsResponseTime"];

                  expiry = [v28 expiry];
                  [expiry timeIntervalSinceReferenceDate];
                  v57 = [NSNumber numberWithDouble:?];
                  [v34 setObject:v57 forKeyedSubscript:@"expire"];

                  kt_hexString6 = [keyCopy kt_hexString];
                  [v34 setObject:kt_hexString6 forKeyedSubscript:@"accountKey"];

                  [v34 setObject:v117 forKeyedSubscript:@"deviceID"];
                  clientData3 = [v15 clientData];
                  kt_hexString7 = [clientData3 kt_hexString];
                  [v34 setObject:kt_hexString7 forKeyedSubscript:@"clientData"];

                  expiry2 = [v28 expiry];
                  v44 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-238 errorLevel:2 underlyingError:0 userinfo:v34 description:@"Transparent data for accountKey is expired since %@", expiry2];

                  if (qword_10039C7F8 != -1)
                  {
                    sub_10025B244();
                  }

                  v62 = qword_10039C800;
                  if (os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_ERROR))
                  {
                    v63 = v62;
                    kt_hexString8 = [keyCopy kt_hexString];
                    clientData4 = [v15 clientData];
                    kt_hexString9 = [clientData4 kt_hexString];
                    expiry3 = [v28 expiry];
                    *buf = 138544130;
                    v127 = kt_hexString8;
                    v128 = 2114;
                    v129 = v117;
                    v130 = 2112;
                    v131 = kt_hexString9;
                    v132 = 2112;
                    v133 = *&expiry3;
                    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "Transparent data for accountKey %{public}@ and deviceId %{public}@ and clientData %@ is expired since %@", buf, 0x2Au);

                    v13 = NSNotification_ptr;
                    keyCopy = v111;
                  }

                  v68 = [(KTTransparentData *)selfCopy failureResult:keyCopy loggableData:v15];
                  [v114 addObject:v68];

                  [v15 setResult:0];
                  [v15 setFailure:v44];
                  v52 = errorCopy;
                  if (!errorCopy)
                  {
                    goto LABEL_31;
                  }

LABEL_29:
                  if (v44)
                  {
                    v69 = v44;
                    *v52 = v44;
                  }

LABEL_31:

                  v12 = v44;
                  goto LABEL_32;
                }

                clientData5 = [v15 clientData];
                [v28 setClientData:clientData5];

                [v28 setVerified:1];
                if ([v15 result] == 2)
                {
                  [v15 setResult:1];
                }

LABEL_32:
                v27 = v27 + 1;
              }

              while (v26 != v27);
              v71 = [v112 countByEnumeratingWithState:&v118 objects:v134 count:16];
              v26 = v71;
              if (!v71)
              {
LABEL_37:

                v72 = v12;
                v19 = v109;
                v14 = v110;
                v73 = v117;
                goto LABEL_53;
              }
            }
          }

          kt_hexString10 = [keyCopy kt_hexString];
          clientData6 = [v15 clientData];
          kt_hexString11 = [clientData6 kt_hexString];
          v73 = kt_hexString;
          v72 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-95 description:@"No transparent data for accountKey %@ and deviceId %@ and clientData %@", kt_hexString10, kt_hexString, kt_hexString11];

          if (qword_10039C7F8 != -1)
          {
            sub_10025B294();
          }

          v88 = qword_10039C800;
          v19 = v109;
          if (os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_ERROR))
          {
            v89 = v88;
            kt_hexString12 = [keyCopy kt_hexString];
            clientData7 = [v15 clientData];
            kt_hexString13 = [clientData7 kt_hexString];
            *buf = 138543874;
            v127 = kt_hexString12;
            v128 = 2114;
            v129 = v73;
            v130 = 2112;
            v131 = kt_hexString13;
            _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "No transparent data for accountKey %{public}@ and deviceId %{public}@ and clientData %@", buf, 0x20u);
          }

          v93 = [(KTTransparentData *)selfCopy failureResult:keyCopy loggableData:v15];
          [v114 addObject:v93];

          [v15 setResult:0];
          [v15 setFailure:v72];
          v13 = NSNotification_ptr;
          if (errorCopy && v72)
          {
            v94 = v72;
            *errorCopy = v72;
          }

LABEL_53:

          v12 = v72;
        }

        else
        {
          kt_hexString14 = [keyCopy kt_hexString];
          deviceID3 = [v15 deviceID];
          kt_hexString15 = [deviceID3 kt_hexString];
          v77 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-94 description:@"No transparent data for accountKey %@ and deviceId %@", kt_hexString14, kt_hexString15];

          if (qword_10039C7F8 != -1)
          {
            sub_10025B2BC();
          }

          v78 = qword_10039C800;
          if (os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_ERROR))
          {
            v79 = v78;
            kt_hexString16 = [keyCopy kt_hexString];
            deviceID4 = [v15 deviceID];
            kt_hexString17 = [deviceID4 kt_hexString];
            *buf = 138412546;
            v127 = kt_hexString16;
            v128 = 2112;
            v129 = kt_hexString17;
            _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "No transparent data for accountKey %@ and deviceId %@", buf, 0x16u);
          }

          v83 = [(KTTransparentData *)selfCopy failureResult:keyCopy loggableData:v15];
          [v114 addObject:v83];

          [v15 setResult:0];
          [v15 setFailure:v77];
          v13 = NSNotification_ptr;
          if (errorCopy && v77)
          {
            v84 = v77;
            *errorCopy = v77;
          }

          v12 = v77;
        }

        v14 = v14 + 1;
      }

      while (v14 != v107);
      v107 = [obj countByEnumeratingWithState:&v122 objects:v135 count:16];
      if (!v107)
      {
LABEL_56:

        v95 = v114;
        if ([v114 count])
        {
          v96 = [NSArray arrayWithArray:v114];
        }

        else
        {
          v96 = 0;
        }

        datasCopy = v103;
        goto LABEL_68;
      }
    }
  }

  kt_hexString18 = [keyCopy kt_hexString];
  v12 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-93 description:@"No transparent data for accountKey %@", kt_hexString18];

  [KTTransparentData addResult:0 failure:v12 toLoggableDatas:datasCopy];
  if (error && v12)
  {
    v98 = v12;
    *error = v12;
  }

  if (qword_10039C7F8 != -1)
  {
    sub_10025B2E4();
  }

  v99 = qword_10039C800;
  if (os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_ERROR))
  {
    v100 = v99;
    kt_hexString19 = [keyCopy kt_hexString];
    *buf = 138412290;
    v127 = kt_hexString19;
    _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "No transparent data for accountKey %@", buf, 0xCu);
  }

  v95 = [(KTTransparentData *)selfCopy failureResult:keyCopy loggableData:0];
  v136 = v95;
  v96 = [NSArray arrayWithObjects:&v136 count:1];
LABEL_68:

  return v96;
}

- (BOOL)validateAndUpdateWithServerLoggableDatas:(id)datas accountKey:(id)key idsResponseTime:(double)time error:(id *)error
{
  v6 = [(KTTransparentData *)self failedServerLoggableDatas:datas accountKey:key idsResponseTime:error error:time];
  v7 = v6 == 0;

  return v7;
}

- (BOOL)validateOptInHistory:(id)history accountKey:(id)key responseTime:(id)time error:(id *)error
{
  timeCopy = time;
  historyCopy = history;
  v12 = [(KTTransparentData *)self accountForAccountKey:key];
  LOBYTE(error) = [v12 validateOptInHistory:historyCopy responseTime:timeCopy error:error];

  return error;
}

- (id)earliestAddedDate:(id)date
{
  dateCopy = date;
  v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:9.22337204e18];
  v6 = [(KTTransparentData *)self accountForAccountKey:dateCopy];
  v7 = v6;
  if (v6)
  {
    v23 = v6;
    v24 = dateCopy;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [v6 devices];
    v27 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v27)
    {
      v26 = *v33;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v33 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v32 + 1) + 8 * i);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          clientDatas = [v9 clientDatas];
          v11 = [clientDatas countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v29;
            do
            {
              for (j = 0; j != v12; j = j + 1)
              {
                if (*v29 != v13)
                {
                  objc_enumerationMutation(clientDatas);
                }

                v15 = *(*(&v28 + 1) + 8 * j);
                addedDate = [v15 addedDate];
                if (addedDate)
                {
                  v17 = addedDate;
                  addedDate2 = [v15 addedDate];
                  v19 = [addedDate2 compare:v5];

                  if (v19 == -1)
                  {
                    addedDate3 = [v15 addedDate];

                    v5 = addedDate3;
                  }
                }
              }

              v12 = [clientDatas countByEnumeratingWithState:&v28 objects:v36 count:16];
            }

            while (v12);
          }
        }

        v27 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v27);
    }

    v7 = v23;
    dateCopy = v24;
  }

  v21 = v5;

  return v5;
}

- (unint64_t)accountOptInState:(id)state
{
  v3 = [(KTTransparentData *)self accountForAccountKey:state];
  v4 = v3;
  if (v3)
  {
    optInState = [v3 optInState];
  }

  else
  {
    optInState = 2;
  }

  return optInState;
}

- (id)accountOptInRecord:(id)record
{
  v3 = [(KTTransparentData *)self accountForAccountKey:record];
  v4 = v3;
  if (v3)
  {
    optInRecord = [v3 optInRecord];
  }

  else
  {
    optInRecord = 0;
  }

  return optInRecord;
}

- (id)accountOptInHistory:(id)history
{
  v3 = [(KTTransparentData *)self accountForAccountKey:history];
  v4 = v3;
  if (v3)
  {
    optInHistory = [v3 optInHistory];
  }

  else
  {
    optInHistory = 0;
  }

  return optInHistory;
}

- (unint64_t)accountEverOptedIn:(id)in
{
  v3 = [(KTTransparentData *)self accountForAccountKey:in];
  v4 = v3;
  if (v3)
  {
    everOptedIn = [v3 everOptedIn];
  }

  else
  {
    everOptedIn = 2;
  }

  return everOptedIn;
}

- (unint64_t)accountRecentlyOptedIn:(id)in
{
  v3 = [(KTTransparentData *)self accountForAccountKey:in];
  v4 = v3;
  if (v3)
  {
    recentlyOptedIn = [v3 recentlyOptedIn];
  }

  else
  {
    recentlyOptedIn = 2;
  }

  return recentlyOptedIn;
}

- (unint64_t)verifiedAccountOptInState
{
  currentPublicID = [(KTTransparentData *)self currentPublicID];
  publicKeyInfo = [currentPublicID publicKeyInfo];

  v5 = [(KTTransparentData *)self accountOptInState:publicKeyInfo];
  return v5;
}

- (unint64_t)currentAccountOptInState
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  accounts = [(KTTransparentData *)self accounts];
  v4 = [accounts countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    optInState = 2;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(accounts);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        deps = [(KTTransparentData *)self deps];
        v11 = [deps now];
        v12 = [v9 active:v11];

        if (v12)
        {
          optInState = [v9 optInState];
          goto LABEL_12;
        }
      }

      v5 = [accounts countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    optInState = 2;
  }

LABEL_12:

  return optInState;
}

- (id)currentPublicID
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_accounts;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        accountKey = [v6 accountKey];

        if (accountKey)
        {
          accountKey2 = [v6 accountKey];
          v3 = [KTAccountPublicID ktAccountPublicIDWithPublicKeyInfo:accountKey2 error:0];

          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)optInAfter:(id)after accountKey:(id)key
{
  afterCopy = after;
  v7 = [(KTTransparentData *)self accountOptInRecord:key];
  v8 = v7;
  if (!v7 || ![v7 optIn])
  {
    goto LABEL_8;
  }

  v9 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v8 timestampMs] / 1000.0);
  if (qword_10039C7F8 != -1)
  {
    sub_10025B2F8();
  }

  v10 = qword_10039C800;
  if (os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412546;
    v15 = afterCopy;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "opted-in peer verification failure ids(%@) optin(%@)", &v14, 0x16u);
  }

  v11 = [afterCopy compare:v9];

  if (v11 == -1)
  {
    v12 = 1;
  }

  else
  {
LABEL_8:
    v12 = 0;
  }

  return v12;
}

- (id)expectedSelfResolutionDate:(id)date requestDate:(id)requestDate
{
  dateCopy = date;
  requestDateCopy = requestDate;
  v8 = [(KTTransparentData *)self accountForAccountKey:dateCopy];
  v9 = v8;
  if (v8)
  {
    v28 = v8;
    v29 = dateCopy;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = [v8 devices];
    v32 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    v10 = 0;
    if (v32)
    {
      v31 = *v39;
      do
      {
        v11 = 0;
        do
        {
          if (*v39 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v33 = v11;
          v12 = *(*(&v38 + 1) + 8 * v11);
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          clientDatas = [v12 clientDatas];
          v14 = [clientDatas countByEnumeratingWithState:&v34 objects:v43 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v35;
            do
            {
              for (i = 0; i != v15; i = i + 1)
              {
                if (*v35 != v16)
                {
                  objc_enumerationMutation(clientDatas);
                }

                v18 = *(*(&v34 + 1) + 8 * i);
                addedDate = [v18 addedDate];
                v20 = [requestDateCopy compare:addedDate];

                if (v20 != -1 && ([v18 synced] & 1) == 0)
                {
                  if (!v10)
                  {
                    goto LABEL_17;
                  }

                  escrowExpiry = [v18 escrowExpiry];
                  if (escrowExpiry)
                  {
                    v22 = escrowExpiry;
                    escrowExpiry2 = [v18 escrowExpiry];
                    v24 = [v10 compare:escrowExpiry2];

                    if (v24 == -1)
                    {
LABEL_17:
                      escrowExpiry3 = [v18 escrowExpiry];

                      v10 = escrowExpiry3;
                    }
                  }
                }
              }

              v15 = [clientDatas countByEnumeratingWithState:&v34 objects:v43 count:16];
            }

            while (v15);
          }

          v11 = v33 + 1;
        }

        while ((v33 + 1) != v32);
        v32 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v32);
    }

    v9 = v28;
    dateCopy = v29;
  }

  else
  {
    if (qword_10039C7F8 != -1)
    {
      sub_10025B30C();
    }

    v26 = qword_10039C800;
    if (os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "no account record for account key, so no expected resolution date", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)getLogDataForAccountKey:(id)key uri:(id)uri
{
  keyCopy = key;
  uriCopy = uri;
  v8 = +[NSMutableArray array];
  v9 = [(KTTransparentData *)self accountOptInHistory:keyCopy];
  v10 = v9;
  if (v9 && [v9 count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          v16 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v15 timestampMs] / 1000.0);
          v17 = [[KTOptIOLogState alloc] initWithURI:uriCopy smtTimestamp:v16 optIn:{objc_msgSend(v15, "optIn")}];
          [v8 addObject:v17];
        }

        v12 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v12);
    }

    v25 = uriCopy;
    v26 = v8;
    v18 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end