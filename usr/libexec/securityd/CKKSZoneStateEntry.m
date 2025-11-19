@interface CKKSZoneStateEntry
+ (id)contextID:(id)a3 zoneName:(id)a4;
+ (id)fromDatabase:(id)a3 zoneName:(id)a4 error:(id *)a5;
+ (id)fromDatabaseRow:(id)a3;
+ (id)tryFromDatabase:(id)a3 zoneName:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (CKKSZoneStateEntry)initWithContextID:(id)a3 zoneName:(id)a4 zoneCreated:(BOOL)a5 zoneSubscribed:(BOOL)a6 changeToken:(id)a7 moreRecordsInCloudKit:(BOOL)a8 lastFetch:(id)a9 lastScan:(id)a10 lastFixup:(unint64_t)a11 encodedRateLimiter:(id)a12 fetchNewestChangesFirst:(BOOL)a13 initialSyncFinished:(BOOL)a14;
- (CKServerChangeToken)getChangeToken;
- (NSData)encodedRateLimiter;
- (id)description;
- (id)sqlValues;
- (id)whereClauseToFindSelf;
- (void)setChangeToken:(id)a3;
- (void)setEncodedRateLimiter:(id)a3;
@end

@implementation CKKSZoneStateEntry

- (id)sqlValues
{
  v33 = objc_alloc_init(NSISO8601DateFormatter);
  v34[0] = @"contextID";
  v3 = [(CKKSZoneStateEntry *)self contextID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[NSNull null];
  }

  v6 = v5;

  v32 = v6;
  v35[0] = v6;
  v34[1] = @"ckzone";
  v31 = [(CKKSZoneStateEntry *)self ckzone];
  v35[1] = v31;
  v34[2] = @"ckzonecreated";
  v30 = [NSNumber numberWithBool:[(CKKSZoneStateEntry *)self ckzonecreated]];
  v35[2] = v30;
  v34[3] = @"ckzonesubscribed";
  v29 = [NSNumber numberWithBool:[(CKKSZoneStateEntry *)self ckzonesubscribed]];
  v35[3] = v29;
  v34[4] = @"changetoken";
  v7 = [(CKKSZoneStateEntry *)self encodedChangeToken];
  v8 = [v7 base64EncodedStringWithOptions:0];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = +[NSNull null];
  }

  v10 = v9;

  v35[4] = v10;
  v34[5] = @"lastfetch";
  v11 = [(CKKSZoneStateEntry *)self lastFetchTime];
  if (!v11 || (v12 = v11, -[CKKSZoneStateEntry lastFetchTime](self, "lastFetchTime"), v13 = objc_claimAutoreleasedReturnValue(), [v33 stringFromDate:v13], v14 = objc_claimAutoreleasedReturnValue(), v13, v12, !v14))
  {
    v14 = +[NSNull null];
  }

  v35[5] = v14;
  v34[6] = @"ratelimiter";
  v15 = [(CKKSZoneStateEntry *)self encodedRateLimiter];
  v16 = [v15 base64EncodedStringWithOptions:0];

  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = +[NSNull null];
  }

  v18 = v17;

  v35[6] = v18;
  v34[7] = @"lastFixup";
  v19 = [NSNumber numberWithLong:[(CKKSZoneStateEntry *)self lastFixup]];
  v35[7] = v19;
  v34[8] = @"morecoming";
  v20 = [NSNumber numberWithBool:[(CKKSZoneStateEntry *)self moreRecordsInCloudKit]];
  v35[8] = v20;
  v34[9] = @"lastscan";
  v21 = [(CKKSZoneStateEntry *)self lastLocalKeychainScanTime];
  if (!v21 || (v22 = v21, -[CKKSZoneStateEntry lastLocalKeychainScanTime](self, "lastLocalKeychainScanTime"), v23 = objc_claimAutoreleasedReturnValue(), [v33 stringFromDate:v23], v24 = objc_claimAutoreleasedReturnValue(), v23, v22, !v24))
  {
    v24 = +[NSNull null];
  }

  v35[9] = v24;
  v34[10] = @"fetchNewestChangesFirst";
  v25 = [NSNumber numberWithBool:[(CKKSZoneStateEntry *)self fetchNewestChangesFirst]];
  v35[10] = v25;
  v34[11] = @"initialSyncFinished";
  v26 = [NSNumber numberWithBool:[(CKKSZoneStateEntry *)self initialSyncFinished]];
  v35[11] = v26;
  v27 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:12];

  return v27;
}

- (id)whereClauseToFindSelf
{
  v10[0] = @"contextID";
  v3 = [(CKKSZoneStateEntry *)self contextID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[NSNull null];
  }

  v6 = v5;

  v10[1] = @"ckzone";
  v11[0] = v6;
  v7 = [(CKKSZoneStateEntry *)self ckzone];
  v11[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  return v8;
}

- (void)setEncodedRateLimiter:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v6 error:0];
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
    [(CKKSZoneStateEntry *)self setRateLimiter:v5];
  }

  else
  {
    [(CKKSZoneStateEntry *)self setRateLimiter:0];
  }
}

- (NSData)encodedRateLimiter
{
  v3 = [(CKKSZoneStateEntry *)self rateLimiter];

  if (v3)
  {
    v4 = [(CKKSZoneStateEntry *)self rateLimiter];
    v5 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setChangeToken:(id)a3
{
  if (a3)
  {
    v4 = [NSKeyedArchiver archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
    [(CKKSZoneStateEntry *)self setEncodedChangeToken:v4];
  }

  else
  {

    [(CKKSZoneStateEntry *)self setEncodedChangeToken:?];
  }
}

- (CKServerChangeToken)getChangeToken
{
  v3 = [(CKKSZoneStateEntry *)self encodedChangeToken];

  if (v3)
  {
    v4 = [NSKeyedUnarchiver alloc];
    v5 = [(CKKSZoneStateEntry *)self encodedChangeToken];
    v6 = [v4 initForReadingFromData:v5 error:0];

    v7 = [v6 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [(CKKSZoneStateEntry *)self ckzone];
    v9 = [v7 ckzone];
    if (![v8 isEqualToString:v9])
    {
      LOBYTE(v12) = 0;
LABEL_18:

      goto LABEL_19;
    }

    v10 = [(CKKSZoneStateEntry *)self contextID];
    if (v10 || ([v7 contextID], (v55 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v3 = [(CKKSZoneStateEntry *)self contextID];
      v4 = [v7 contextID];
      if (![v3 isEqualToString:v4])
      {
        LOBYTE(v12) = 0;
        goto LABEL_14;
      }

      v11 = 1;
    }

    else
    {
      v55 = 0;
      v11 = 0;
    }

    v13 = [(CKKSZoneStateEntry *)self ckzonecreated];
    if (v13 != [v7 ckzonecreated] || (v14 = -[CKKSZoneStateEntry ckzonesubscribed](self, "ckzonesubscribed"), v14 != objc_msgSend(v7, "ckzonesubscribed")))
    {
      LOBYTE(v12) = 0;
      if (!v11)
      {
LABEL_15:
        if (!v10)
        {
        }

        goto LABEL_18;
      }

LABEL_14:

      goto LABEL_15;
    }

    v16 = [(CKKSZoneStateEntry *)self encodedChangeToken];
    if (v16 || ([v7 encodedChangeToken], (v48 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v53 = v4;
      v17 = v3;
      v18 = v11;
      v19 = v16;
      v20 = [(CKKSZoneStateEntry *)self encodedChangeToken];
      v51 = [v7 encodedChangeToken];
      v52 = v20;
      if (![v20 isEqual:?])
      {
        LOBYTE(v12) = 0;
        v21 = v19;
        v22 = v18;
        v3 = v17;
        v4 = v53;
        goto LABEL_29;
      }

      v50 = v18;
      v49 = 1;
      v3 = v17;
      v4 = v53;
    }

    else
    {
      v50 = v11;
      v19 = 0;
      v48 = 0;
      v49 = 0;
    }

    v23 = [(CKKSZoneStateEntry *)self moreRecordsInCloudKit];
    if (v23 != [v7 moreRecordsInCloudKit])
    {
      LOBYTE(v12) = 0;
      v21 = v19;
      if (v49)
      {
LABEL_28:
        v22 = v50;
LABEL_29:

        if (v21)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

LABEL_58:
      v22 = v50;
      if (v21)
      {
LABEL_31:

        if ((v22 & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

LABEL_30:

      goto LABEL_31;
    }

    [(CKKSZoneStateEntry *)self lastFetchTime];
    v54 = v21 = v19;
    if (v54 || ([v7 lastFetchTime], (v41 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v24 = [(CKKSZoneStateEntry *)self lastFetchTime];
      v46 = [v7 lastFetchTime];
      v47 = v24;
      if (![v24 isEqualToDate:?])
      {
        LOBYTE(v12) = 0;
        goto LABEL_54;
      }

      v45 = 1;
    }

    else
    {
      v41 = 0;
      v45 = 0;
    }

    v44 = [(CKKSZoneStateEntry *)self rateLimiter];
    if (v44 || ([v7 rateLimiter], (v39 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v25 = [(CKKSZoneStateEntry *)self rateLimiter];
      v42 = [v7 rateLimiter];
      v43 = v25;
      if (![v25 isEqual:?])
      {
        LOBYTE(v12) = 0;
        goto LABEL_51;
      }

      v26 = v21;
      v40 = 1;
    }

    else
    {
      v26 = v21;
      v39 = 0;
      v40 = 0;
    }

    v27 = [(CKKSZoneStateEntry *)self lastFixup];
    if (v27 != [v7 lastFixup])
    {
      LOBYTE(v12) = 0;
      v21 = v26;
      if (!v40)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }

    [(CKKSZoneStateEntry *)self lastLocalKeychainScanTime];
    v38 = v21 = v26;
    if (v38 || ([v7 lastLocalKeychainScanTime], (v34 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v28 = [(CKKSZoneStateEntry *)self lastLocalKeychainScanTime];
      v29 = [v7 lastLocalKeychainScanTime];
      v37 = v28;
      v30 = v28;
      v26 = v29;
      if (![v30 isEqualToDate:v29])
      {
        LOBYTE(v12) = 0;
        goto LABEL_69;
      }

      v36 = v21;
      v35 = 1;
    }

    else
    {
      v36 = v26;
      v34 = 0;
      v35 = 0;
    }

    v31 = [(CKKSZoneStateEntry *)self fetchNewestChangesFirst];
    if (v31 == [v7 fetchNewestChangesFirst])
    {
      v32 = [(CKKSZoneStateEntry *)self initialSyncFinished];
      v12 = v32 ^ [v7 initialSyncFinished] ^ 1;
      if ((v35 & 1) == 0)
      {
        v21 = v36;
        goto LABEL_70;
      }

      v21 = v36;
    }

    else
    {
      LOBYTE(v12) = 0;
      v21 = v36;
      if (!v35)
      {
LABEL_70:
        if (v38)
        {
          v33 = v38;
        }

        else
        {
          v33 = v34;
        }

        if ((v40 & 1) == 0)
        {
LABEL_52:
          if (v44)
          {

            if (!v45)
            {
              goto LABEL_55;
            }
          }

          else
          {

            if ((v45 & 1) == 0)
            {
LABEL_55:
              if (!v54)
              {
              }

              if (v49)
              {
                goto LABEL_28;
              }

              goto LABEL_58;
            }
          }

LABEL_54:

          goto LABEL_55;
        }

LABEL_51:

        goto LABEL_52;
      }
    }

LABEL_69:

    goto LABEL_70;
  }

  LOBYTE(v12) = 0;
LABEL_19:

  return v12;
}

- (id)description
{
  v3 = [(CKKSZoneStateEntry *)self contextID];
  v4 = [(CKKSZoneStateEntry *)self ckzone];
  if ([(CKKSZoneStateEntry *)self ckzonecreated])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if ([(CKKSZoneStateEntry *)self ckzonesubscribed])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(CKKSZoneStateEntry *)self moreRecordsInCloudKit])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(CKKSZoneStateEntry *)self fetchNewestChangesFirst])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(CKKSZoneStateEntry *)self initialSyncFinished])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [NSString stringWithFormat:@"<CKKSZoneStateEntry[%@](%@): created:%@ subscribed:%@ moreRecords:%@ fetchNewestChangesFirst:%@ initialSyncFinished:%@>", v3, v4, v5, v6, v7, v8, v9];

  return v10;
}

- (CKKSZoneStateEntry)initWithContextID:(id)a3 zoneName:(id)a4 zoneCreated:(BOOL)a5 zoneSubscribed:(BOOL)a6 changeToken:(id)a7 moreRecordsInCloudKit:(BOOL)a8 lastFetch:(id)a9 lastScan:(id)a10 lastFixup:(unint64_t)a11 encodedRateLimiter:(id)a12 fetchNewestChangesFirst:(BOOL)a13 initialSyncFinished:(BOOL)a14
{
  v18 = a3;
  v19 = a4;
  v29 = a7;
  v28 = a9;
  v20 = a10;
  v21 = a12;
  v30.receiver = self;
  v30.super_class = CKKSZoneStateEntry;
  v22 = [(CKKSZoneStateEntry *)&v30 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_contextID, a3);
    objc_storeStrong(&v23->_ckzone, a4);
    v23->_ckzonecreated = a5;
    v23->_ckzonesubscribed = a6;
    objc_storeStrong(&v23->_encodedChangeToken, a7);
    v23->_moreRecordsInCloudKit = a8;
    objc_storeStrong(&v23->_lastFetchTime, a9);
    objc_storeStrong(&v23->_lastLocalKeychainScanTime, a10);
    v23->_lastFixup = a11;
    v23->_fetchNewestChangesFirst = a13;
    v23->_initialSyncFinished = a14;
    [(CKKSZoneStateEntry *)v23 setEncodedRateLimiter:v21];
  }

  return v23;
}

+ (id)fromDatabaseRow:(id)a3
{
  v3 = a3;
  v25 = [CKKSZoneStateEntry alloc];
  v30 = [v3 objectForKeyedSubscript:@"contextID"];
  v23 = [v30 asString];
  v29 = [v3 objectForKeyedSubscript:@"ckzone"];
  v21 = [v29 asString];
  v28 = [v3 objectForKeyedSubscript:@"ckzonecreated"];
  v20 = [v28 asBOOL];
  v27 = [v3 objectForKeyedSubscript:@"ckzonesubscribed"];
  v18 = [v27 asBOOL];
  v24 = [v3 objectForKeyedSubscript:@"changetoken"];
  v17 = [v24 asBase64DecodedData];
  v22 = [v3 objectForKeyedSubscript:@"morecoming"];
  v15 = [v22 asBOOL];
  v19 = [v3 objectForKeyedSubscript:@"lastfetch"];
  v4 = [v19 asISO8601Date];
  v16 = [v3 objectForKeyedSubscript:@"lastscan"];
  v5 = [v16 asISO8601Date];
  v6 = [v3 objectForKeyedSubscript:@"lastFixup"];
  v7 = [v6 asNSInteger];
  v8 = [v3 objectForKeyedSubscript:@"ratelimiter"];
  v9 = [v8 asBase64DecodedData];
  v10 = [v3 objectForKeyedSubscript:@"fetchNewestChangesFirst"];
  v11 = [v10 asBOOL];
  v12 = [v3 objectForKeyedSubscript:@"initialSyncFinished"];

  BYTE1(v14) = [v12 asBOOL];
  LOBYTE(v14) = v11;
  v26 = [(CKKSZoneStateEntry *)v25 initWithContextID:v23 zoneName:v21 zoneCreated:v20 zoneSubscribed:v18 changeToken:v17 moreRecordsInCloudKit:v15 lastFetch:v4 lastScan:v5 lastFixup:v7 encodedRateLimiter:v9 fetchNewestChangesFirst:v14 initialSyncFinished:?];

  return v26;
}

+ (id)tryFromDatabase:(id)a3 zoneName:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v21[0] = @"contextID";
  v10 = v8;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = +[NSNull null];
  }

  v13 = v12;

  v21[1] = @"ckzone";
  v22[0] = v13;
  v14 = v9;
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = +[NSNull null];
  }

  v17 = v16;

  v22[1] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  v19 = [a1 tryFromDatabaseWhere:v18 error:a5];

  return v19;
}

+ (id)fromDatabase:(id)a3 zoneName:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v21[0] = @"contextID";
  v10 = v8;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = +[NSNull null];
  }

  v13 = v12;

  v21[1] = @"ckzone";
  v22[0] = v13;
  v14 = v9;
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = +[NSNull null];
  }

  v17 = v16;

  v22[1] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  v19 = [a1 fromDatabaseWhere:v18 error:a5];

  return v19;
}

+ (id)contextID:(id)a3 zoneName:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12 = 0;
  v7 = [CKKSZoneStateEntry tryFromDatabase:v5 zoneName:v6 error:&v12];
  v8 = v12;
  if (v8)
  {
    v9 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "error fetching CKState(%@): %@", buf, 0x16u);
    }
  }

  if (!v7)
  {
    LOWORD(v11) = 1;
    v7 = [[CKKSZoneStateEntry alloc] initWithContextID:v5 zoneName:v6 zoneCreated:0 zoneSubscribed:0 changeToken:0 moreRecordsInCloudKit:0 lastFetch:0 lastScan:0 lastFixup:5 encodedRateLimiter:0 fetchNewestChangesFirst:v11 initialSyncFinished:?];
  }

  return v7;
}

@end