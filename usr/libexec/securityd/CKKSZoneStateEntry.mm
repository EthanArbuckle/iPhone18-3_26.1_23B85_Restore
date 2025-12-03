@interface CKKSZoneStateEntry
+ (id)contextID:(id)d zoneName:(id)name;
+ (id)fromDatabase:(id)database zoneName:(id)name error:(id *)error;
+ (id)fromDatabaseRow:(id)row;
+ (id)tryFromDatabase:(id)database zoneName:(id)name error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (CKKSZoneStateEntry)initWithContextID:(id)d zoneName:(id)name zoneCreated:(BOOL)created zoneSubscribed:(BOOL)subscribed changeToken:(id)token moreRecordsInCloudKit:(BOOL)kit lastFetch:(id)fetch lastScan:(id)self0 lastFixup:(unint64_t)self1 encodedRateLimiter:(id)self2 fetchNewestChangesFirst:(BOOL)self3 initialSyncFinished:(BOOL)self4;
- (CKServerChangeToken)getChangeToken;
- (NSData)encodedRateLimiter;
- (id)description;
- (id)sqlValues;
- (id)whereClauseToFindSelf;
- (void)setChangeToken:(id)token;
- (void)setEncodedRateLimiter:(id)limiter;
@end

@implementation CKKSZoneStateEntry

- (id)sqlValues
{
  v33 = objc_alloc_init(NSISO8601DateFormatter);
  v34[0] = @"contextID";
  contextID = [(CKKSZoneStateEntry *)self contextID];
  v4 = contextID;
  if (contextID)
  {
    v5 = contextID;
  }

  else
  {
    v5 = +[NSNull null];
  }

  v6 = v5;

  v32 = v6;
  v35[0] = v6;
  v34[1] = @"ckzone";
  ckzone = [(CKKSZoneStateEntry *)self ckzone];
  v35[1] = ckzone;
  v34[2] = @"ckzonecreated";
  v30 = [NSNumber numberWithBool:[(CKKSZoneStateEntry *)self ckzonecreated]];
  v35[2] = v30;
  v34[3] = @"ckzonesubscribed";
  v29 = [NSNumber numberWithBool:[(CKKSZoneStateEntry *)self ckzonesubscribed]];
  v35[3] = v29;
  v34[4] = @"changetoken";
  encodedChangeToken = [(CKKSZoneStateEntry *)self encodedChangeToken];
  v8 = [encodedChangeToken base64EncodedStringWithOptions:0];

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
  lastFetchTime = [(CKKSZoneStateEntry *)self lastFetchTime];
  if (!lastFetchTime || (v12 = lastFetchTime, -[CKKSZoneStateEntry lastFetchTime](self, "lastFetchTime"), v13 = objc_claimAutoreleasedReturnValue(), [v33 stringFromDate:v13], v14 = objc_claimAutoreleasedReturnValue(), v13, v12, !v14))
  {
    v14 = +[NSNull null];
  }

  v35[5] = v14;
  v34[6] = @"ratelimiter";
  encodedRateLimiter = [(CKKSZoneStateEntry *)self encodedRateLimiter];
  v16 = [encodedRateLimiter base64EncodedStringWithOptions:0];

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
  lastLocalKeychainScanTime = [(CKKSZoneStateEntry *)self lastLocalKeychainScanTime];
  if (!lastLocalKeychainScanTime || (v22 = lastLocalKeychainScanTime, -[CKKSZoneStateEntry lastLocalKeychainScanTime](self, "lastLocalKeychainScanTime"), v23 = objc_claimAutoreleasedReturnValue(), [v33 stringFromDate:v23], v24 = objc_claimAutoreleasedReturnValue(), v23, v22, !v24))
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
  contextID = [(CKKSZoneStateEntry *)self contextID];
  v4 = contextID;
  if (contextID)
  {
    v5 = contextID;
  }

  else
  {
    v5 = +[NSNull null];
  }

  v6 = v5;

  v10[1] = @"ckzone";
  v11[0] = v6;
  ckzone = [(CKKSZoneStateEntry *)self ckzone];
  v11[1] = ckzone;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  return v8;
}

- (void)setEncodedRateLimiter:(id)limiter
{
  limiterCopy = limiter;
  if (limiterCopy)
  {
    v4 = [[NSKeyedUnarchiver alloc] initForReadingFromData:limiterCopy error:0];
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
  rateLimiter = [(CKKSZoneStateEntry *)self rateLimiter];

  if (rateLimiter)
  {
    rateLimiter2 = [(CKKSZoneStateEntry *)self rateLimiter];
    v5 = [NSKeyedArchiver archivedDataWithRootObject:rateLimiter2 requiringSecureCoding:1 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setChangeToken:(id)token
{
  if (token)
  {
    v4 = [NSKeyedArchiver archivedDataWithRootObject:token requiringSecureCoding:1 error:0];
    [(CKKSZoneStateEntry *)self setEncodedChangeToken:v4];
  }

  else
  {

    [(CKKSZoneStateEntry *)self setEncodedChangeToken:?];
  }
}

- (CKServerChangeToken)getChangeToken
{
  encodedChangeToken = [(CKKSZoneStateEntry *)self encodedChangeToken];

  if (encodedChangeToken)
  {
    v4 = [NSKeyedUnarchiver alloc];
    encodedChangeToken2 = [(CKKSZoneStateEntry *)self encodedChangeToken];
    v6 = [v4 initForReadingFromData:encodedChangeToken2 error:0];

    v7 = [v6 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = equalCopy;
    ckzone = [(CKKSZoneStateEntry *)self ckzone];
    ckzone2 = [v7 ckzone];
    if (![ckzone isEqualToString:ckzone2])
    {
      LOBYTE(v12) = 0;
LABEL_18:

      goto LABEL_19;
    }

    contextID = [(CKKSZoneStateEntry *)self contextID];
    if (contextID || ([v7 contextID], (v55 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      contextID2 = [(CKKSZoneStateEntry *)self contextID];
      contextID3 = [v7 contextID];
      if (![contextID2 isEqualToString:contextID3])
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

    ckzonecreated = [(CKKSZoneStateEntry *)self ckzonecreated];
    if (ckzonecreated != [v7 ckzonecreated] || (v14 = -[CKKSZoneStateEntry ckzonesubscribed](self, "ckzonesubscribed"), v14 != objc_msgSend(v7, "ckzonesubscribed")))
    {
      LOBYTE(v12) = 0;
      if (!v11)
      {
LABEL_15:
        if (!contextID)
        {
        }

        goto LABEL_18;
      }

LABEL_14:

      goto LABEL_15;
    }

    encodedChangeToken = [(CKKSZoneStateEntry *)self encodedChangeToken];
    if (encodedChangeToken || ([v7 encodedChangeToken], (v48 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v53 = contextID3;
      v17 = contextID2;
      v18 = v11;
      v19 = encodedChangeToken;
      encodedChangeToken2 = [(CKKSZoneStateEntry *)self encodedChangeToken];
      encodedChangeToken3 = [v7 encodedChangeToken];
      v52 = encodedChangeToken2;
      if (![encodedChangeToken2 isEqual:?])
      {
        LOBYTE(v12) = 0;
        v21 = v19;
        v22 = v18;
        contextID2 = v17;
        contextID3 = v53;
        goto LABEL_29;
      }

      v50 = v18;
      v49 = 1;
      contextID2 = v17;
      contextID3 = v53;
    }

    else
    {
      v50 = v11;
      v19 = 0;
      v48 = 0;
      v49 = 0;
    }

    moreRecordsInCloudKit = [(CKKSZoneStateEntry *)self moreRecordsInCloudKit];
    if (moreRecordsInCloudKit != [v7 moreRecordsInCloudKit])
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
      lastFetchTime = [(CKKSZoneStateEntry *)self lastFetchTime];
      lastFetchTime2 = [v7 lastFetchTime];
      v47 = lastFetchTime;
      if (![lastFetchTime isEqualToDate:?])
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

    rateLimiter = [(CKKSZoneStateEntry *)self rateLimiter];
    if (rateLimiter || ([v7 rateLimiter], (v39 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      rateLimiter2 = [(CKKSZoneStateEntry *)self rateLimiter];
      rateLimiter3 = [v7 rateLimiter];
      v43 = rateLimiter2;
      if (![rateLimiter2 isEqual:?])
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

    lastFixup = [(CKKSZoneStateEntry *)self lastFixup];
    if (lastFixup != [v7 lastFixup])
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
      lastLocalKeychainScanTime = [(CKKSZoneStateEntry *)self lastLocalKeychainScanTime];
      lastLocalKeychainScanTime2 = [v7 lastLocalKeychainScanTime];
      v37 = lastLocalKeychainScanTime;
      v30 = lastLocalKeychainScanTime;
      v26 = lastLocalKeychainScanTime2;
      if (![v30 isEqualToDate:lastLocalKeychainScanTime2])
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

    fetchNewestChangesFirst = [(CKKSZoneStateEntry *)self fetchNewestChangesFirst];
    if (fetchNewestChangesFirst == [v7 fetchNewestChangesFirst])
    {
      initialSyncFinished = [(CKKSZoneStateEntry *)self initialSyncFinished];
      v12 = initialSyncFinished ^ [v7 initialSyncFinished] ^ 1;
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
          if (rateLimiter)
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
  contextID = [(CKKSZoneStateEntry *)self contextID];
  ckzone = [(CKKSZoneStateEntry *)self ckzone];
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

  v10 = [NSString stringWithFormat:@"<CKKSZoneStateEntry[%@](%@): created:%@ subscribed:%@ moreRecords:%@ fetchNewestChangesFirst:%@ initialSyncFinished:%@>", contextID, ckzone, v5, v6, v7, v8, v9];

  return v10;
}

- (CKKSZoneStateEntry)initWithContextID:(id)d zoneName:(id)name zoneCreated:(BOOL)created zoneSubscribed:(BOOL)subscribed changeToken:(id)token moreRecordsInCloudKit:(BOOL)kit lastFetch:(id)fetch lastScan:(id)self0 lastFixup:(unint64_t)self1 encodedRateLimiter:(id)self2 fetchNewestChangesFirst:(BOOL)self3 initialSyncFinished:(BOOL)self4
{
  dCopy = d;
  nameCopy = name;
  tokenCopy = token;
  fetchCopy = fetch;
  scanCopy = scan;
  limiterCopy = limiter;
  v30.receiver = self;
  v30.super_class = CKKSZoneStateEntry;
  v22 = [(CKKSZoneStateEntry *)&v30 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_contextID, d);
    objc_storeStrong(&v23->_ckzone, name);
    v23->_ckzonecreated = created;
    v23->_ckzonesubscribed = subscribed;
    objc_storeStrong(&v23->_encodedChangeToken, token);
    v23->_moreRecordsInCloudKit = kit;
    objc_storeStrong(&v23->_lastFetchTime, fetch);
    objc_storeStrong(&v23->_lastLocalKeychainScanTime, scan);
    v23->_lastFixup = fixup;
    v23->_fetchNewestChangesFirst = first;
    v23->_initialSyncFinished = finished;
    [(CKKSZoneStateEntry *)v23 setEncodedRateLimiter:limiterCopy];
  }

  return v23;
}

+ (id)fromDatabaseRow:(id)row
{
  rowCopy = row;
  v25 = [CKKSZoneStateEntry alloc];
  v30 = [rowCopy objectForKeyedSubscript:@"contextID"];
  asString = [v30 asString];
  v29 = [rowCopy objectForKeyedSubscript:@"ckzone"];
  asString2 = [v29 asString];
  v28 = [rowCopy objectForKeyedSubscript:@"ckzonecreated"];
  asBOOL = [v28 asBOOL];
  v27 = [rowCopy objectForKeyedSubscript:@"ckzonesubscribed"];
  asBOOL2 = [v27 asBOOL];
  v24 = [rowCopy objectForKeyedSubscript:@"changetoken"];
  asBase64DecodedData = [v24 asBase64DecodedData];
  v22 = [rowCopy objectForKeyedSubscript:@"morecoming"];
  asBOOL3 = [v22 asBOOL];
  v19 = [rowCopy objectForKeyedSubscript:@"lastfetch"];
  asISO8601Date = [v19 asISO8601Date];
  v16 = [rowCopy objectForKeyedSubscript:@"lastscan"];
  asISO8601Date2 = [v16 asISO8601Date];
  v6 = [rowCopy objectForKeyedSubscript:@"lastFixup"];
  asNSInteger = [v6 asNSInteger];
  v8 = [rowCopy objectForKeyedSubscript:@"ratelimiter"];
  asBase64DecodedData2 = [v8 asBase64DecodedData];
  v10 = [rowCopy objectForKeyedSubscript:@"fetchNewestChangesFirst"];
  asBOOL4 = [v10 asBOOL];
  v12 = [rowCopy objectForKeyedSubscript:@"initialSyncFinished"];

  BYTE1(v14) = [v12 asBOOL];
  LOBYTE(v14) = asBOOL4;
  v26 = [(CKKSZoneStateEntry *)v25 initWithContextID:asString zoneName:asString2 zoneCreated:asBOOL zoneSubscribed:asBOOL2 changeToken:asBase64DecodedData moreRecordsInCloudKit:asBOOL3 lastFetch:asISO8601Date lastScan:asISO8601Date2 lastFixup:asNSInteger encodedRateLimiter:asBase64DecodedData2 fetchNewestChangesFirst:v14 initialSyncFinished:?];

  return v26;
}

+ (id)tryFromDatabase:(id)database zoneName:(id)name error:(id *)error
{
  databaseCopy = database;
  nameCopy = name;
  v21[0] = @"contextID";
  v10 = databaseCopy;
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
  v14 = nameCopy;
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
  v19 = [self tryFromDatabaseWhere:v18 error:error];

  return v19;
}

+ (id)fromDatabase:(id)database zoneName:(id)name error:(id *)error
{
  databaseCopy = database;
  nameCopy = name;
  v21[0] = @"contextID";
  v10 = databaseCopy;
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
  v14 = nameCopy;
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
  v19 = [self fromDatabaseWhere:v18 error:error];

  return v19;
}

+ (id)contextID:(id)d zoneName:(id)name
{
  dCopy = d;
  nameCopy = name;
  v12 = 0;
  v7 = [CKKSZoneStateEntry tryFromDatabase:dCopy zoneName:nameCopy error:&v12];
  v8 = v12;
  if (v8)
  {
    v9 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = nameCopy;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "error fetching CKState(%@): %@", buf, 0x16u);
    }
  }

  if (!v7)
  {
    LOWORD(v11) = 1;
    v7 = [[CKKSZoneStateEntry alloc] initWithContextID:dCopy zoneName:nameCopy zoneCreated:0 zoneSubscribed:0 changeToken:0 moreRecordsInCloudKit:0 lastFetch:0 lastScan:0 lastFixup:5 encodedRateLimiter:0 fetchNewestChangesFirst:v11 initialSyncFinished:?];
  }

  return v7;
}

@end