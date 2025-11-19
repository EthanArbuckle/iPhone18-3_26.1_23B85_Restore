@interface KTTransparentData
+ (void)addResult:(unint64_t)a3 failure:(id)a4 toLoggableDatas:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)optInAfter:(id)a3 accountKey:(id)a4;
- (BOOL)updateWithMapLeaf:(id)a3 error:(id *)a4;
- (BOOL)updateWithMutation:(id)a3 error:(id *)a4;
- (BOOL)updateWithSMTs:(id)a3 error:(id *)a4;
- (BOOL)validateActiveClientDatas:(id)a3 at:(id)a4 error:(id *)a5;
- (BOOL)validateAndUpdateWithServerLoggableDatas:(id)a3 accountKey:(id)a4 idsResponseTime:(double)a5 error:(id *)a6;
- (BOOL)validateAndUpdateWithSyncedLoggableDatas:(id)a3 accountKey:(id)a4 cloudDevices:(id)a5 requestDate:(id)a6 error:(id *)a7;
- (BOOL)validateOptInHistory:(id)a3 accountKey:(id)a4 responseTime:(id)a5 error:(id *)a6;
- (BOOL)validateOtherAccountsInactiveForAccount:(id)a3 at:(id)a4 error:(id *)a5;
- (BOOL)verifyServerInvariantsAt:(id)a3 error:(id *)a4;
- (KTTransparentData)initWithCoder:(id)a3;
- (KTTransparentData)initWithUriVRFOutput:(id)a3 mapLeaf:(id)a4 pendingSMTs:(id)a5 deps:(id)a6 error:(id *)a7;
- (KTTransparentData)initWithUriVRFOutput:(id)a3 mapLeaf:(id)a4 pendingSMTs:(id)a5 error:(id *)a6;
- (NSDictionary)diagnosticsJsonDictionary;
- (id)accountForAccountKey:(id)a3;
- (id)accountForAccountKeyHash:(id)a3;
- (id)accountOptInHistory:(id)a3;
- (id)accountOptInRecord:(id)a3;
- (id)copy;
- (id)currentPublicID;
- (id)debugDescription;
- (id)earliestAddedDate:(id)a3;
- (id)expectedSelfResolutionDate:(id)a3 requestDate:(id)a4;
- (id)failedRecordsForSyncedLoggableDatas:(id)a3 accountKey:(id)a4 cloudDevices:(id)a5 requestDate:(id)a6 error:(id *)a7;
- (id)failedServerLoggableDatas:(id)a3 accountKey:(id)a4 idsResponseTime:(double)a5 error:(id *)a6;
- (id)failureResult:(id)a3 loggableData:(id)a4;
- (id)filterLoggableDatas:(id)a3 clientDataHash:(id)a4;
- (id)filterLoggableDatas:(id)a3 deviceIdHash:(id)a4;
- (id)getLogDataForAccountKey:(id)a3 uri:(id)a4;
- (id)mutationsFromSMTs:(id)a3 error:(id *)a4;
- (id)serialize;
- (id)sortMutationsByTimestamp:(id)a3 error:(id *)a4;
- (unint64_t)accountEverOptedIn:(id)a3;
- (unint64_t)accountOptInState:(id)a3;
- (unint64_t)accountRecentlyOptedIn:(id)a3;
- (unint64_t)currentAccountOptInState;
- (unint64_t)verifiedAccountOptInState;
- (void)cleanupAccounts:(id)a3;
- (void)deleteMarkedEntries:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)markAccountsWithMutationMs:(unint64_t)a3 except:(id)a4;
- (void)updateWithAddMutation:(id)a3 error:(id *)a4;
- (void)updateWithMarkDeleteMutation:(id)a3 error:(id *)a4;
- (void)updateWithOptInOutMutation:(id)a3 error:(id *)a4;
@end

@implementation KTTransparentData

- (id)debugDescription
{
  v3 = [NSMutableString stringWithFormat:@"[\n"];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v35 = self;
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
        v6 = [v5 accountKey];
        v7 = [v6 kt_hexString];
        [v3 appendFormat:@"    accountKey:%@\n", v7];

        v8 = [v5 accountKeyHash];
        v9 = [v8 kt_hexString];
        [v3 appendFormat:@"    accountKeyHash:%@\n", v9];

        v10 = [NSMutableString stringWithFormat:@"[\n"];
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v41 = [v5 devices];
        v44 = [v41 countByEnumeratingWithState:&v50 objects:v59 count:16];
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
                objc_enumerationMutation(v41);
              }

              v45 = v11;
              v12 = *(*(&v50 + 1) + 8 * v11);
              [v10 appendFormat:@"     {\n"];
              v13 = [v12 deviceID];
              v14 = [v13 kt_hexString];
              [v10 appendFormat:@"      deviceID:%@\n", v14];

              v15 = [v12 deviceIDHash];
              v16 = [v15 kt_hexString];
              [v10 appendFormat:@"      deviceIDHash: %@\n", v16];

              v17 = [NSMutableString stringWithFormat:@"[\n"];
              v46 = 0u;
              v47 = 0u;
              v48 = 0u;
              v49 = 0u;
              v18 = [v12 clientDatas];
              v19 = [v18 countByEnumeratingWithState:&v46 objects:v58 count:16];
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
                      objc_enumerationMutation(v18);
                    }

                    v23 = *(*(&v46 + 1) + 8 * i);
                    [v17 appendFormat:@"       {\n"];
                    v24 = [v23 clientData];
                    v25 = [v24 kt_hexString];
                    [v17 appendFormat:@"        clientData:%@\n", v25];

                    v26 = [v23 clientDataHash];
                    v27 = [v26 kt_hexString];
                    [v17 appendFormat:@"        clientDataHash:%@\n", v27];

                    [v17 appendFormat:@"        appVersion:%lu\n", objc_msgSend(v23, "applicationVersion")];
                    v28 = [v23 addedDate];
                    v29 = [v23 markedForDeletion];
                    v30 = [v23 expiry];
                    v31 = [v23 escrowExpiry];
                    [v17 appendFormat:@"        addedDate:%@ markDate:%@; expiryDate:%@; escrowDate:%@\n", v28, v29, v30, v31];

                    [v17 appendFormat:@"       }, \n"];
                  }

                  v20 = [v18 countByEnumeratingWithState:&v46 objects:v58 count:16];
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
            v44 = [v41 countByEnumeratingWithState:&v50 objects:v59 count:16];
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
  v32 = [(NSData *)v35->_uriVRFOutput kt_hexString];
  v33 = [NSString stringWithFormat:@"{\n  uriVRFOutput: %@\n  accounts: %@\n}", v32, v3];

  return v33;
}

- (NSDictionary)diagnosticsJsonDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(KTTransparentData *)self uriVRFOutput];
  v5 = [v4 kt_hexString];
  [v3 setObject:v5 forKeyedSubscript:@"uriVRFOutput"];

  [(KTTransparentData *)self staticKeyStatus];
  v6 = KTStaticKeyPeerValidateResultGetString();
  [v3 setObject:v6 forKeyedSubscript:@"staticKeyStatus"];

  v7 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(KTTransparentData *)self accounts];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) diagnosticsJsonDictionary];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [v3 setObject:v7 forKeyedSubscript:@"accounts"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(KTTransparentData *)self accounts];
  [v4 encodeObject:v5 forKey:@"accounts"];

  v6 = [(KTTransparentData *)self uriVRFOutput];
  [v4 encodeObject:v6 forKey:@"uriVRFOutput"];

  v7 = [(KTTransparentData *)self currentTreeEpochBeginDate];
  [v4 encodeObject:v7 forKey:@"currentTreeEpoch"];
}

- (KTTransparentData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"accounts"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uriVRFOutput"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentTreeEpoch"];

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

- (KTTransparentData)initWithUriVRFOutput:(id)a3 mapLeaf:(id)a4 pendingSMTs:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = +[KTDefaultTransparentDataDeps shared];
  v14 = [(KTTransparentData *)self initWithUriVRFOutput:v12 mapLeaf:v11 pendingSMTs:v10 deps:v13 error:a6];

  return v14;
}

- (KTTransparentData)initWithUriVRFOutput:(id)a3 mapLeaf:(id)a4 pendingSMTs:(id)a5 deps:(id)a6 error:(id *)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v23.receiver = self;
  v23.super_class = KTTransparentData;
  v17 = [(KTTransparentData *)&v23 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v17->_uriVRFOutput, a3);
  v19 = +[NSMutableArray array];
  accounts = v18->_accounts;
  v18->_accounts = v19;

  [(KTTransparentData *)v18 setDeps:v16];
  [(KTTransparentData *)v18 setStaticKeyStatus:3];
  if (v14)
  {
    if (![(KTTransparentData *)v18 updateWithMapLeaf:v14 error:a7])
    {
      goto LABEL_7;
    }
  }

  if (v15 && ![(KTTransparentData *)v18 updateWithSMTs:v15 error:a7])
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
  v4 = [v3 encodedData];

  return v4;
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
      v6 = [(KTTransparentData *)self uriVRFOutput];
      v7 = [(KTTransparentData *)v5 uriVRFOutput];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(KTTransparentData *)self uriVRFOutput];
        v10 = [(KTTransparentData *)v5 uriVRFOutput];
        v11 = [v9 isEqualToData:v10];

        if (!v11)
        {
          goto LABEL_15;
        }
      }

      v13 = [(KTTransparentData *)self accounts];
      v14 = [(KTTransparentData *)v5 accounts];
      v15 = v14;
      if (v13 == v14)
      {
      }

      else
      {
        v16 = [(KTTransparentData *)self accounts];
        v17 = [(KTTransparentData *)v5 accounts];
        v18 = [v16 isEqual:v17];

        if (!v18)
        {
          goto LABEL_15;
        }
      }

      v19 = [(KTTransparentData *)self currentTreeEpochBeginDate];
      v20 = [(KTTransparentData *)v5 currentTreeEpochBeginDate];
      v21 = v20;
      if (v19 == v20)
      {
      }

      else
      {
        v22 = [(KTTransparentData *)self currentTreeEpochBeginDate];
        v23 = [(KTTransparentData *)v5 currentTreeEpochBeginDate];
        v24 = [v22 kt_isEqualWithinOneMillisecond:v23];

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

- (id)accountForAccountKeyHash:(id)a3
{
  v4 = a3;
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
        v10 = [v9 accountKeyHash];
        v11 = [v10 isEqualToData:v4];

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

- (id)accountForAccountKey:(id)a3
{
  v4 = a3;
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
        v11 = [v10 accountKey];
        v12 = [v11 isEqualToData:v4];

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

  v13 = [(KTTransparentData *)self uriVRFOutput];
  v5 = [v4 kt_sha256WithSalt:v13];

  v14 = [(KTTransparentData *)self accountForAccountKeyHash:v5];
  v15 = v14;
  if (v14)
  {
    [v14 setAccountKey:v4];
  }

LABEL_12:

  return v15;
}

- (BOOL)updateWithMapLeaf:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 verifyWithError:a4];
  if (v7 == 1)
  {
    v8 = +[NSMutableArray array];
    [(KTTransparentData *)self setAccounts:v8];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v6 accountsArray];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = [[KTAccount alloc] initWithIdsAccount:*(*(&v19 + 1) + 8 * i)];
          v15 = [(KTTransparentData *)self accounts];
          [v15 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    v16 = [(KTTransparentData *)self deps];
    v17 = [v16 now];
    [(KTTransparentData *)self cleanupAccounts:v17];
  }

  return v7 == 1;
}

- (id)sortMutationsByTimestamp:(id)a3 error:(id *)a4
{
  v5 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001AA838;
  v11[3] = &unk_100326028;
  v11[4] = &v12;
  v6 = [v5 sortedArrayUsingComparator:v11];
  v7 = v6;
  if (*(v13 + 24) == 1)
  {
    v8 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-332 description:@"error sorting SMTs due to multiple conflicting SMTs with the same timestamp"];
    if (a4 && v8)
    {
      v8 = v8;
      *a4 = v8;
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

- (id)mutationsFromSMTs:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
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
        v13 = [v12 parsedMutationWithError:a4];
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

- (void)markAccountsWithMutationMs:(unint64_t)a3 except:(id)a4
{
  v6 = a4;
  v7 = [NSDate dateWithTimeIntervalSince1970:a3 / 1000.0];
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
    v25 = v6;
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
        if ((!v6 || ([*(*(&v38 + 1) + 8 * v11) isEqual:v6] & 1) == 0) && objc_msgSend(v12, "active:", v7, v24, v25))
        {
          v28 = v11;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v29 = [v12 devices];
          v13 = [v29 countByEnumeratingWithState:&v34 objects:v43 count:16];
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
                  objc_enumerationMutation(v29);
                }

                v17 = *(*(&v34 + 1) + 8 * i);
                if ([v17 active:v7])
                {
                  v32 = 0u;
                  v33 = 0u;
                  v30 = 0u;
                  v31 = 0u;
                  v18 = [v17 clientDatas];
                  v19 = [v18 countByEnumeratingWithState:&v30 objects:v42 count:16];
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
                          objc_enumerationMutation(v18);
                        }

                        v23 = *(*(&v30 + 1) + 8 * j);
                        if ([v23 active:v7])
                        {
                          [v23 markWithMutationMs:a3];
                        }
                      }

                      v20 = [v18 countByEnumeratingWithState:&v30 objects:v42 count:16];
                    }

                    while (v20);
                  }
                }
              }

              v14 = [v29 countByEnumeratingWithState:&v34 objects:v43 count:16];
            }

            while (v14);
          }

          v10 = v24;
          v6 = v25;
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

- (void)updateWithOptInOutMutation:(id)a3 error:(id *)a4
{
  v9 = a3;
  v6 = [v9 accountKeyHash];
  v7 = [(KTTransparentData *)self accountForAccountKeyHash:v6];

  v8 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v9 timestampMs] / 1000.0);
  if (v7 && [v7 active:v8])
  {
    [v7 updateWithOptInOutMutation:v9 error:a4];
  }
}

- (void)updateWithAddMutation:(id)a3 error:(id *)a4
{
  v9 = a3;
  v6 = [v9 accountKeyHash];
  v7 = [(KTTransparentData *)self accountForAccountKeyHash:v6];

  v8 = [v9 idsMutation];
  -[KTTransparentData markAccountsWithMutationMs:except:](self, "markAccountsWithMutationMs:except:", [v8 mutationMs], v7);

  if (v7)
  {
    [(KTAccount *)v7 updateWithAddMutation:v9 error:a4];
  }

  else
  {
    v7 = [[KTAccount alloc] initWithMutation:v9];
    [(KTTransparentData *)self addAccountsObject:v7];
  }
}

- (void)updateWithMarkDeleteMutation:(id)a3 error:(id *)a4
{
  v8 = a3;
  v6 = [v8 accountKeyHash];
  v7 = [(KTTransparentData *)self accountForAccountKeyHash:v6];

  if (v7)
  {
    [v7 updateWithMarkDeleteMutation:v8 error:a4];
  }
}

- (void)cleanupAccounts:(id)a3
{
  v4 = a3;
  v5 = [(KTTransparentData *)self accounts];
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
        [v12 cleanupDevices:v4 removeAllMarked:{0, v13}];
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

- (void)deleteMarkedEntries:(unint64_t)a3
{
  v4 = [NSDate dateWithTimeIntervalSince1970:a3 / 1000.0];
  v5 = [(KTTransparentData *)self accounts];
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
          [(KTTransparentData *)self removeAccountsObject:v12];
        }

        [v12 deleteMarkedEntries:v4];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (BOOL)updateWithMutation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 uriVRFOutput];
  v8 = [(KTTransparentData *)self uriVRFOutput];
  v9 = [v7 isEqualToData:v8];

  if ((v9 & 1) == 0)
  {
    if (a4)
    {
      *a4 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-86 description:@"smt has different URI VRF output than computed in witness"];
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

  v10 = [v6 mutationType];
  if (v10 > 3)
  {
    if (v10 == 6)
    {
      v18 = [v6 optInOutMutation];

      if (v18)
      {
        v16 = [v6 optInOutMutation];
        [(KTTransparentData *)self updateWithOptInOutMutation:v16 error:a4];
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

    if (v10 == 5)
    {
LABEL_23:
      v17 = [v6 idsDeviceMutation];

      if (v17)
      {
        v16 = [v6 idsDeviceMutation];
        [(KTTransparentData *)self updateWithMarkDeleteMutation:v16 error:a4];
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

    if (v10 != 4)
    {
      goto LABEL_32;
    }
  }

  else if (v10 != 1)
  {
    if (v10 != 2)
    {
      if (v10 == 3)
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
        v25[1] = [v6 mutationType];
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "unknown mutation type %d, continuing anyway", v25, 8u);
      }

      goto LABEL_28;
    }

    goto LABEL_23;
  }

  v15 = [v6 idsDeviceMutation];

  if (!v15)
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

  v16 = [v6 idsDeviceMutation];
  [(KTTransparentData *)self updateWithAddMutation:v16 error:a4];
LABEL_27:

LABEL_28:
  v19 = [(KTTransparentData *)self deps];
  v20 = [v19 now];

  if ([v6 mutationMs])
  {
    v21 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v6 mutationMs] / 1000.0);

    v20 = v21;
  }

  [(KTTransparentData *)self cleanupAccounts:v20];

  v14 = 1;
LABEL_31:

  return v14;
}

- (BOOL)updateWithSMTs:(id)a3 error:(id *)a4
{
  v6 = [(KTTransparentData *)self mutationsFromSMTs:a3 error:?];
  v7 = [(KTTransparentData *)self sortMutationsByTimestamp:v6 error:a4];

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

          if (![(KTTransparentData *)self updateWithMutation:*(*(&v15 + 1) + 8 * i) error:a4, v15])
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

- (id)filterLoggableDatas:(id)a3 deviceIdHash:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v6;
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
        v15 = [v14 deviceIdHash];

        if (!v15)
        {
          v16 = [(KTTransparentData *)self uriVRFOutput];
          [v14 computeHashesForSalt:v16];
        }

        v17 = [v14 deviceIdHash];
        v18 = [v17 isEqualToData:v7];

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

- (id)filterLoggableDatas:(id)a3 clientDataHash:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v6;
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
        v15 = [v14 clientDataHash];

        if (!v15)
        {
          v16 = [(KTTransparentData *)self uriVRFOutput];
          [v14 computeHashesForSalt:v16];
        }

        v17 = [v14 clientDataHash];
        v18 = [v17 isEqualToData:v7];

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

- (id)failedRecordsForSyncedLoggableDatas:(id)a3 accountKey:(id)a4 cloudDevices:(id)a5 requestDate:(id)a6 error:(id *)a7
{
  v94 = a3;
  v12 = a4;
  v102 = a5;
  v107 = a6;
  v13 = [(KTTransparentData *)self accountForAccountKey:v12];
  v92 = v13;
  if (v13)
  {
    v101 = a7;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    obj = [v13 devices];
    v98 = [obj countByEnumeratingWithState:&v112 objects:v129 count:16];
    if (v98)
    {
      v91 = v12;
      v97 = *v113;
      v14 = &PCSIdentityCopyPublicKeyInfo_ptr;
      v103 = self;
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
          v18 = [v16 deviceIDHash];
          v19 = [v102 fetchSyncedLoggableDataByDeviceIdHash:v18];

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
              v22 = [v19 firstObject];
              [v22 deviceID];
              v24 = v23 = v15;
              [v24 kt_hexString];
              v104 = v17;
              v26 = v25 = v16;
              v27 = [v25 deviceIDHash];
              v28 = [v27 kt_hexString];
              v29 = [v19 count];
              *buf = 138412802;
              v119 = v26;
              v120 = 2112;
              v121 = v28;
              v122 = 1024;
              LODWORD(v123) = v29;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "CloudDevices: found device %@ with deviceIDHash: %@: %d", buf, 0x1Cu);

              self = v103;
              v15 = v23;

              v16 = v25;
              v17 = v104;
              v14 = &PCSIdentityCopyPublicKeyInfo_ptr;
            }

            [v17 addObjectsFromArray:v19];
          }

          if (([v102 disableKTSyncabledKVSStore] & 1) == 0)
          {
            v30 = [v16 deviceIDHash];
            v31 = [(KTTransparentData *)self filterLoggableDatas:v94 deviceIdHash:v30];

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
                v35 = [v34 deviceID];
                [v35 kt_hexString];
                v99 = v19;
                v37 = v36 = v15;
                v38 = [v105 deviceIDHash];
                v39 = [v38 kt_hexString];
                v40 = [v31 count];
                *buf = 138412802;
                v119 = v37;
                v120 = 2112;
                v121 = v39;
                v122 = 1024;
                LODWORD(v123) = v40;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "KVS: found device %@ with deviceIDHash: %@: %d", buf, 0x1Cu);

                self = v103;
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
            v63 = [v16 deviceIDHash];
            v43 = [v63 kt_hexString];

            v64 = [v16 addedDate];
            v65 = [v64 compare:v107];

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
                v68 = [v16 addedDate];
                *buf = 138412802;
                v119 = v43;
                v120 = 2112;
                v121 = v68;
                v122 = 2112;
                v123 = v107;
                _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEBUG, "skipping device (%@) added %@ after request time %@", buf, 0x20u);
              }

              v62 = 3;
              goto LABEL_68;
            }

            v75 = [v14[345] errorWithDomain:@"TransparencyErrorVerify" code:-99 underlyingError:*v101 description:{@"Unknown device in Transparent Data with deviceIdHash %@", v43}];
            if ([v16 marked:v107])
            {
              [v14[345] errorWithDomain:@"TransparencyErrorVerify" code:-107 underlyingError:*v101 description:{@"Unknown marked device in Transparent Data with deviceIdHash %@", v43}];
              goto LABEL_60;
            }

            if ([v16 expired:v107])
            {
              [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-161 underlyingError:*v101 description:@"Unknown expired device in Transparent Data with deviceIdHash %@", v43];
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
              v119 = v43;
              _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "Unknown device in Transparent Data with deviceIdHash %{public}@", buf, 0xCu);
            }

            if (v75)
            {
              v81 = v75;
              *v101 = v75;
            }

            v127 = @"failedDeviceIdHash";
            v128 = v43;
            v62 = 1;
            v93 = [NSDictionary dictionaryWithObjects:&v128 forKeys:&v127 count:1];

            goto LABEL_68;
          }

          v41 = [v17 objectAtIndexedSubscript:0];
          v42 = [v41 deviceID];
          [v16 setDeviceID:v42];

          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v43 = [v16 clientDatas];
          v44 = [v43 countByEnumeratingWithState:&v108 objects:v126 count:16];
          if (!v44)
          {
            v62 = 0;
            goto LABEL_68;
          }

          v45 = v44;
          v106 = v16;
          v46 = v43;
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
              v50 = [v49 clientDataHash];
              v51 = [(KTTransparentData *)self filterLoggableDatas:v17 clientDataHash:v50];

              if (v51)
              {
                v52 = [v51 objectAtIndexedSubscript:0];
                v53 = [v52 clientData];
                [v49 setClientData:v53];

                [v49 setSynced:1];
              }

              else
              {
                v54 = [v106 deviceID];
                v51 = [v54 kt_hexString];

                v55 = [v49 clientDataHash];
                v56 = [v55 kt_hexString];

                v57 = [v49 addedDate];
                v58 = [v57 compare:v107];

                if (v58 != 1)
                {
                  v69 = [v49 addedDate];
                  v70 = [v49 markedForDeletion];
                  v71 = [v49 expiry];
                  v72 = [NSString stringWithFormat:@"Unknown client data in Transparent Data for device {%@, %@, %@, %@, %@}", v51, v56, v69, v70, v71];

                  v73 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-100 underlyingError:*v101 description:@"%@", v72];
                  if ([v49 marked:v107])
                  {
                    v74 = -108;
                    self = v103;
                    v43 = v46;
                    goto LABEL_50;
                  }

                  self = v103;
                  v43 = v46;
                  if ([v49 expired:v107])
                  {
                    v74 = -162;
LABEL_50:
                    v76 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:v74 underlyingError:*v101 description:@"%@", v72];

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
                    *v101 = v73;
                  }

                  v116[0] = @"failedDeviceId";
                  v116[1] = @"failedClientDataHash";
                  v117[0] = v51;
                  v117[1] = v56;
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
                  v61 = [v49 addedDate];
                  *buf = 138413058;
                  v119 = v51;
                  v120 = 2112;
                  v121 = v56;
                  v122 = 2112;
                  v123 = v61;
                  v124 = 2112;
                  v125 = v107;
                  _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEBUG, "skipping client data (%@,%@) added %@ after request time %@", buf, 0x2Au);
                }

                self = v103;
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
          v43 = v46;
LABEL_68:

          if (v62 != 3 && v62)
          {
            v12 = v91;
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
          v12 = v91;
          goto LABEL_85;
        }
      }
    }

    v82 = 0;
    goto LABEL_85;
  }

  if (a7)
  {
    v83 = *a7;
    v84 = a7;
    v85 = [v12 kt_hexString];
    *v84 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-98 underlyingError:v83 description:@"No transparent data for accountKey %@", v85];
  }

  if (qword_10039C7F8 != -1)
  {
    sub_10025B1E0();
  }

  v86 = qword_10039C800;
  if (os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_ERROR))
  {
    v87 = v86;
    v88 = [v12 kt_hexString];
    *buf = 138412290;
    v119 = v88;
    _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "No transparent data for accountKey %@", buf, 0xCu);
  }

  v130 = @"failedAccountKey";
  if (v12)
  {
    v89 = [v12 base64EncodedStringWithOptions:0];
  }

  else
  {
    v89 = @"NULL";
  }

  obj = v89;
  v131 = v89;
  v82 = [NSDictionary dictionaryWithObjects:&v131 forKeys:&v130 count:1];
  if (v12)
  {
LABEL_85:
  }

  return v82;
}

- (BOOL)validateAndUpdateWithSyncedLoggableDatas:(id)a3 accountKey:(id)a4 cloudDevices:(id)a5 requestDate:(id)a6 error:(id *)a7
{
  v7 = [(KTTransparentData *)self failedRecordsForSyncedLoggableDatas:a3 accountKey:a4 cloudDevices:a5 requestDate:a6 error:a7];
  v8 = v7 == 0;

  return v8;
}

- (BOOL)validateOtherAccountsInactiveForAccount:(id)a3 at:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
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
        if (([v15 isEqual:v8] & 1) == 0 && objc_msgSend(v15, "active:", v9))
        {
          if (a5)
          {
            [v8 accountKeyHash];
            v17 = v28 = a5;
            v18 = [v17 kt_hexString];
            v19 = [v15 accountKeyHash];
            v20 = [v19 kt_hexString];
            *v28 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-91 description:@"verifying (%@), other accountKey (%@) has active records", v18, v20];
          }

          if (qword_10039C7F8 != -1)
          {
            sub_10025B1F4();
          }

          v21 = qword_10039C800;
          if (os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_ERROR))
          {
            v22 = v21;
            v23 = [v8 accountKeyHash];
            v24 = [v23 kt_hexString];
            v25 = [v15 accountKeyHash];
            v26 = [v25 kt_hexString];
            *buf = 138412546;
            v34 = v24;
            v35 = 2112;
            v36 = v26;
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

- (BOOL)validateActiveClientDatas:(id)a3 at:(id)a4 error:(id *)a5
{
  v6 = a4;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = [a3 devices];
  v30 = [v7 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v30)
  {
    v8 = *v40;
    v9 = NSNotification_ptr;
    v34 = v7;
    v29 = *v40;
    do
    {
      v10 = 0;
      do
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(v7);
        }

        v31 = v10;
        v11 = *(*(&v39 + 1) + 8 * v10);
        v12 = [v9[106] array];
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v33 = v11;
        v13 = [v11 clientDatas];
        v14 = [v13 countByEnumeratingWithState:&v35 objects:v47 count:16];
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
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v35 + 1) + 8 * i);
              if ([v18 active:v6])
              {
                v19 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v18 applicationVersion]);
                v20 = [v12 containsObject:v19];

                if (v20)
                {
                  if (a5)
                  {
                    v23 = [v33 deviceIDHash];
                    *a5 = +[TransparencyError errorWithDomain:code:description:](TransparencyError, "errorWithDomain:code:description:", @"TransparencyErrorVerify", -92, @"muliple active client datas for deviceIdHash %@ appVersion %lu", v23, [v18 applicationVersion]);
                  }

                  if (qword_10039C7F8 != -1)
                  {
                    sub_10025B21C();
                  }

                  v7 = v34;
                  v24 = qword_10039C800;
                  if (os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_ERROR))
                  {
                    v25 = v24;
                    v26 = [v33 deviceIDHash];
                    v27 = [v18 applicationVersion];
                    *buf = 138412546;
                    v44 = v26;
                    v45 = 2048;
                    v46 = v27;
                    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "muliple active client datas for deviceIdHash %@ appVersion %lu", buf, 0x16u);
                  }

                  v22 = 0;
                  goto LABEL_27;
                }

                v21 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v18 applicationVersion]);
                [v12 addObject:v21];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v35 objects:v47 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v10 = v31 + 1;
        v7 = v34;
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

- (BOOL)verifyServerInvariantsAt:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    v7 = [(KTTransparentData *)self deps];
    v6 = [v7 now];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(KTTransparentData *)self accounts];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 active:v6] && !-[KTTransparentData validateOtherAccountsInactiveForAccount:at:error:](self, "validateOtherAccountsInactiveForAccount:at:error:", v13, v6, a4) || !-[KTTransparentData validateActiveClientDatas:at:error:](self, "validateActiveClientDatas:at:error:", v13, v6, a4))
        {
          v14 = 0;
          goto LABEL_15;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

+ (void)addResult:(unint64_t)a3 failure:(id)a4 toLoggableDatas:(id)a5
{
  v7 = a4;
  v8 = a5;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        [v13 setResult:a3];
        [v13 setFailure:v7];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (id)failureResult:(id)a3 loggableData:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableDictionary dictionary];
  if (v5)
  {
    v8 = [v5 base64EncodedStringWithOptions:0];
    [v7 setObject:v8 forKeyedSubscript:@"failedAccountKey"];
  }

  v9 = [v6 deviceID];

  if (v9)
  {
    v10 = [v6 deviceID];
    v11 = [v10 base64EncodedStringWithOptions:0];
    [v7 setObject:v11 forKeyedSubscript:@"failedDeviceId"];
  }

  v12 = [v6 clientData];

  if (v12)
  {
    v13 = [v6 clientData];
    v14 = [v13 base64EncodedStringWithOptions:0];
    [v7 setObject:v14 forKeyedSubscript:@"failedClientData"];
  }

  return v7;
}

- (id)failedServerLoggableDatas:(id)a3 accountKey:(id)a4 idsResponseTime:(double)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v115 = self;
  v106 = [(KTTransparentData *)self accountForAccountKey:v11];
  v113 = a6;
  if (v106)
  {
    v114 = +[NSMutableArray array];
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v103 = v10;
    obj = v10;
    v107 = [obj countByEnumeratingWithState:&v122 objects:v135 count:16];
    v12 = 0;
    if (!v107)
    {
      goto LABEL_56;
    }

    v105 = *v123;
    v13 = NSNotification_ptr;
    v111 = v11;
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
        v16 = [v15 deviceIdHash];

        if (!v16)
        {
          v17 = [(KTTransparentData *)v115 uriVRFOutput];
          [v15 computeHashesForSalt:v17];
        }

        v18 = [v15 deviceIdHash];
        v19 = [v106 deviceForDeviceIdHash:v18];

        if (v19)
        {
          v110 = v14;
          v20 = [v15 deviceID];
          [v19 setDeviceID:v20];

          v21 = [v19 deviceID];
          v22 = [v21 kt_hexString];

          v23 = [v15 clientDataHash];
          v109 = v19;
          v24 = [v19 clientRecordsForHash:v23];

          v108 = v24;
          if (v24)
          {
            v117 = v22;
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
                v29 = [v13[101] dateWithTimeIntervalSinceReferenceDate:a5];
                v30 = [v28 marked:v29];

                if (v30)
                {
                  v31 = [v28 markedForDeletion];
                  [v31 timeIntervalSinceReferenceDate];
                  v33 = a5 - v32;

                  v34 = +[NSMutableDictionary dictionary];
                  v35 = [NSNumber numberWithDouble:a5];
                  [v34 setObject:v35 forKeyedSubscript:@"idsResponseTime"];

                  v36 = [v28 markedForDeletion];
                  [v36 timeIntervalSinceReferenceDate];
                  v37 = [NSNumber numberWithDouble:?];
                  [v34 setObject:v37 forKeyedSubscript:@"markedForDeletion"];

                  v38 = [v11 kt_hexString];
                  [v34 setObject:v38 forKeyedSubscript:@"accountKey"];

                  [v34 setObject:v117 forKeyedSubscript:@"deviceID"];
                  v39 = [v15 clientData];
                  v40 = [v39 kt_hexString];
                  [v34 setObject:v40 forKeyedSubscript:@"clientData"];

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
                    v47 = [v11 kt_hexString];
                    v48 = [v15 clientData];
                    v49 = [v48 kt_hexString];
                    *buf = 138544130;
                    v127 = v47;
                    v128 = 2114;
                    v129 = v117;
                    v130 = 2112;
                    v131 = v49;
                    v132 = 2048;
                    v133 = v43;
                    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Transparent data for accountKey %{public}@ and deviceId %{public}@ and clientData %@ is marked since %.2f", buf, 0x2Au);

                    v11 = v111;
                  }

                  v50 = [(KTTransparentData *)v115 failureResult:v11 loggableData:v15];
                  [v114 addObject:v50];

                  [v15 setResult:0];
                  [v15 setFailure:v44];
                  [v15 setMarked:1];
                  v51 = [v28 escrowExpiry];
                  [v15 setMarkExpiryDate:v51];

                  v52 = v113;
                  v13 = NSNotification_ptr;
                  if (!v113)
                  {
                    goto LABEL_31;
                  }

                  goto LABEL_29;
                }

                v53 = [v13[101] dateWithTimeIntervalSinceReferenceDate:a5];
                v54 = [v28 expired:v53];

                if (v54)
                {
                  v34 = +[NSMutableDictionary dictionary];
                  v55 = [NSNumber numberWithDouble:a5];
                  [v34 setObject:v55 forKeyedSubscript:@"idsResponseTime"];

                  v56 = [v28 expiry];
                  [v56 timeIntervalSinceReferenceDate];
                  v57 = [NSNumber numberWithDouble:?];
                  [v34 setObject:v57 forKeyedSubscript:@"expire"];

                  v58 = [v11 kt_hexString];
                  [v34 setObject:v58 forKeyedSubscript:@"accountKey"];

                  [v34 setObject:v117 forKeyedSubscript:@"deviceID"];
                  v59 = [v15 clientData];
                  v60 = [v59 kt_hexString];
                  [v34 setObject:v60 forKeyedSubscript:@"clientData"];

                  v61 = [v28 expiry];
                  v44 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-238 errorLevel:2 underlyingError:0 userinfo:v34 description:@"Transparent data for accountKey is expired since %@", v61];

                  if (qword_10039C7F8 != -1)
                  {
                    sub_10025B244();
                  }

                  v62 = qword_10039C800;
                  if (os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_ERROR))
                  {
                    v63 = v62;
                    v64 = [v11 kt_hexString];
                    v65 = [v15 clientData];
                    v66 = [v65 kt_hexString];
                    v67 = [v28 expiry];
                    *buf = 138544130;
                    v127 = v64;
                    v128 = 2114;
                    v129 = v117;
                    v130 = 2112;
                    v131 = v66;
                    v132 = 2112;
                    v133 = *&v67;
                    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "Transparent data for accountKey %{public}@ and deviceId %{public}@ and clientData %@ is expired since %@", buf, 0x2Au);

                    v13 = NSNotification_ptr;
                    v11 = v111;
                  }

                  v68 = [(KTTransparentData *)v115 failureResult:v11 loggableData:v15];
                  [v114 addObject:v68];

                  [v15 setResult:0];
                  [v15 setFailure:v44];
                  v52 = v113;
                  if (!v113)
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

                v70 = [v15 clientData];
                [v28 setClientData:v70];

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

          v85 = [v11 kt_hexString];
          v86 = [v15 clientData];
          v87 = [v86 kt_hexString];
          v73 = v22;
          v72 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-95 description:@"No transparent data for accountKey %@ and deviceId %@ and clientData %@", v85, v22, v87];

          if (qword_10039C7F8 != -1)
          {
            sub_10025B294();
          }

          v88 = qword_10039C800;
          v19 = v109;
          if (os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_ERROR))
          {
            v89 = v88;
            v90 = [v11 kt_hexString];
            v91 = [v15 clientData];
            v92 = [v91 kt_hexString];
            *buf = 138543874;
            v127 = v90;
            v128 = 2114;
            v129 = v73;
            v130 = 2112;
            v131 = v92;
            _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "No transparent data for accountKey %{public}@ and deviceId %{public}@ and clientData %@", buf, 0x20u);
          }

          v93 = [(KTTransparentData *)v115 failureResult:v11 loggableData:v15];
          [v114 addObject:v93];

          [v15 setResult:0];
          [v15 setFailure:v72];
          v13 = NSNotification_ptr;
          if (v113 && v72)
          {
            v94 = v72;
            *v113 = v72;
          }

LABEL_53:

          v12 = v72;
        }

        else
        {
          v74 = [v11 kt_hexString];
          v75 = [v15 deviceID];
          v76 = [v75 kt_hexString];
          v77 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-94 description:@"No transparent data for accountKey %@ and deviceId %@", v74, v76];

          if (qword_10039C7F8 != -1)
          {
            sub_10025B2BC();
          }

          v78 = qword_10039C800;
          if (os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_ERROR))
          {
            v79 = v78;
            v80 = [v11 kt_hexString];
            v81 = [v15 deviceID];
            v82 = [v81 kt_hexString];
            *buf = 138412546;
            v127 = v80;
            v128 = 2112;
            v129 = v82;
            _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "No transparent data for accountKey %@ and deviceId %@", buf, 0x16u);
          }

          v83 = [(KTTransparentData *)v115 failureResult:v11 loggableData:v15];
          [v114 addObject:v83];

          [v15 setResult:0];
          [v15 setFailure:v77];
          v13 = NSNotification_ptr;
          if (v113 && v77)
          {
            v84 = v77;
            *v113 = v77;
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

        v10 = v103;
        goto LABEL_68;
      }
    }
  }

  v97 = [v11 kt_hexString];
  v12 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-93 description:@"No transparent data for accountKey %@", v97];

  [KTTransparentData addResult:0 failure:v12 toLoggableDatas:v10];
  if (a6 && v12)
  {
    v98 = v12;
    *a6 = v12;
  }

  if (qword_10039C7F8 != -1)
  {
    sub_10025B2E4();
  }

  v99 = qword_10039C800;
  if (os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_ERROR))
  {
    v100 = v99;
    v101 = [v11 kt_hexString];
    *buf = 138412290;
    v127 = v101;
    _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "No transparent data for accountKey %@", buf, 0xCu);
  }

  v95 = [(KTTransparentData *)v115 failureResult:v11 loggableData:0];
  v136 = v95;
  v96 = [NSArray arrayWithObjects:&v136 count:1];
LABEL_68:

  return v96;
}

- (BOOL)validateAndUpdateWithServerLoggableDatas:(id)a3 accountKey:(id)a4 idsResponseTime:(double)a5 error:(id *)a6
{
  v6 = [(KTTransparentData *)self failedServerLoggableDatas:a3 accountKey:a4 idsResponseTime:a6 error:a5];
  v7 = v6 == 0;

  return v7;
}

- (BOOL)validateOptInHistory:(id)a3 accountKey:(id)a4 responseTime:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [(KTTransparentData *)self accountForAccountKey:a4];
  LOBYTE(a6) = [v12 validateOptInHistory:v11 responseTime:v10 error:a6];

  return a6;
}

- (id)earliestAddedDate:(id)a3
{
  v4 = a3;
  v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:9.22337204e18];
  v6 = [(KTTransparentData *)self accountForAccountKey:v4];
  v7 = v6;
  if (v6)
  {
    v23 = v6;
    v24 = v4;
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
          v10 = [v9 clientDatas];
          v11 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
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
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v28 + 1) + 8 * j);
                v16 = [v15 addedDate];
                if (v16)
                {
                  v17 = v16;
                  v18 = [v15 addedDate];
                  v19 = [v18 compare:v5];

                  if (v19 == -1)
                  {
                    v20 = [v15 addedDate];

                    v5 = v20;
                  }
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
            }

            while (v12);
          }
        }

        v27 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v27);
    }

    v7 = v23;
    v4 = v24;
  }

  v21 = v5;

  return v5;
}

- (unint64_t)accountOptInState:(id)a3
{
  v3 = [(KTTransparentData *)self accountForAccountKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 optInState];
  }

  else
  {
    v5 = 2;
  }

  return v5;
}

- (id)accountOptInRecord:(id)a3
{
  v3 = [(KTTransparentData *)self accountForAccountKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 optInRecord];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)accountOptInHistory:(id)a3
{
  v3 = [(KTTransparentData *)self accountForAccountKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 optInHistory];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)accountEverOptedIn:(id)a3
{
  v3 = [(KTTransparentData *)self accountForAccountKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 everOptedIn];
  }

  else
  {
    v5 = 2;
  }

  return v5;
}

- (unint64_t)accountRecentlyOptedIn:(id)a3
{
  v3 = [(KTTransparentData *)self accountForAccountKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 recentlyOptedIn];
  }

  else
  {
    v5 = 2;
  }

  return v5;
}

- (unint64_t)verifiedAccountOptInState
{
  v3 = [(KTTransparentData *)self currentPublicID];
  v4 = [v3 publicKeyInfo];

  v5 = [(KTTransparentData *)self accountOptInState:v4];
  return v5;
}

- (unint64_t)currentAccountOptInState
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(KTTransparentData *)self accounts];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = 2;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(KTTransparentData *)self deps];
        v11 = [v10 now];
        v12 = [v9 active:v11];

        if (v12)
        {
          v7 = [v9 optInState];
          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 2;
  }

LABEL_12:

  return v7;
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
        v7 = [v6 accountKey];

        if (v7)
        {
          v8 = [v6 accountKey];
          v3 = [KTAccountPublicID ktAccountPublicIDWithPublicKeyInfo:v8 error:0];

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

- (BOOL)optInAfter:(id)a3 accountKey:(id)a4
{
  v6 = a3;
  v7 = [(KTTransparentData *)self accountOptInRecord:a4];
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
    v15 = v6;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "opted-in peer verification failure ids(%@) optin(%@)", &v14, 0x16u);
  }

  v11 = [v6 compare:v9];

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

- (id)expectedSelfResolutionDate:(id)a3 requestDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(KTTransparentData *)self accountForAccountKey:v6];
  v9 = v8;
  if (v8)
  {
    v28 = v8;
    v29 = v6;
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
          v13 = [v12 clientDatas];
          v14 = [v13 countByEnumeratingWithState:&v34 objects:v43 count:16];
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
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v34 + 1) + 8 * i);
                v19 = [v18 addedDate];
                v20 = [v7 compare:v19];

                if (v20 != -1 && ([v18 synced] & 1) == 0)
                {
                  if (!v10)
                  {
                    goto LABEL_17;
                  }

                  v21 = [v18 escrowExpiry];
                  if (v21)
                  {
                    v22 = v21;
                    v23 = [v18 escrowExpiry];
                    v24 = [v10 compare:v23];

                    if (v24 == -1)
                    {
LABEL_17:
                      v25 = [v18 escrowExpiry];

                      v10 = v25;
                    }
                  }
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v34 objects:v43 count:16];
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
    v6 = v29;
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

- (id)getLogDataForAccountKey:(id)a3 uri:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  v9 = [(KTTransparentData *)self accountOptInHistory:v6];
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
          v17 = [[KTOptIOLogState alloc] initWithURI:v7 smtTimestamp:v16 optIn:{objc_msgSend(v15, "optIn")}];
          [v8 addObject:v17];
        }

        v12 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v12);
    }

    v25 = v7;
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