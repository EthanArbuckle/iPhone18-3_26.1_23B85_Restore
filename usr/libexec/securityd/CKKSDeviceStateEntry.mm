@interface CKKSDeviceStateEntry
+ (BOOL)intransactionRecordChanged:(id)a3 contextID:(id)a4 resync:(BOOL)a5 error:(id *)a6;
+ (BOOL)intransactionRecordDeleted:(id)a3 contextID:(id)a4 resync:(BOOL)a5 error:(id *)a6;
+ (id)allInZone:(id)a3 error:(id *)a4;
+ (id)fromDatabase:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6;
+ (id)fromDatabaseRow:(id)a3;
+ (id)intransactionCreateDeviceStateForView:(id)a3 accountTracker:(id)a4 lockStateTracker:(id)a5 error:(id *)a6;
+ (id)nameFromCKRecordID:(id)a3;
+ (id)tryFromDatabase:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6;
+ (id)tryFromDatabaseFromCKRecordID:(id)a3 contextID:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesCKRecord:(id)a3;
- (id)CKRecordName;
- (id)cktypeToOTCliqueStatusWrapper:(id)a3;
- (id)cliqueStatusToCKType:(id)a3;
- (id)description;
- (id)initForDevice:(id)a3 contextID:(id)a4 osVersion:(id)a5 lastUnlockTime:(id)a6 octagonPeerID:(id)a7 octagonStatus:(id)a8 circlePeerID:(id)a9 circleStatus:(int)a10 keyState:(id)a11 currentTLKUUID:(id)a12 currentClassAUUID:(id)a13 currentClassCUUID:(id)a14 zoneID:(id)a15 encodedCKRecord:(id)a16;
- (id)sqlValues;
- (id)updateCKRecord:(id)a3 zoneID:(id)a4;
- (id)whereClauseToFindSelf;
- (int)cktypeToSOSCCStatus:(id)a3;
- (void)setFromCKRecord:(id)a3;
@end

@implementation CKKSDeviceStateEntry

- (id)sqlValues
{
  v3 = objc_alloc_init(NSISO8601DateFormatter);
  v57[0] = @"contextID";
  v55 = [(CKKSCKRecordHolder *)self contextID];
  v58[0] = v55;
  v57[1] = @"device";
  v54 = [(CKKSDeviceStateEntry *)self device];
  v58[1] = v54;
  v57[2] = @"ckzone";
  v4 = [(CKKSCKRecordHolder *)self zoneID];
  v5 = [v4 zoneName];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = +[NSNull null];
  }

  v7 = v6;

  v58[2] = v7;
  v57[3] = @"osversion";
  v8 = [(CKKSDeviceStateEntry *)self osVersion];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = +[NSNull null];
  }

  v11 = v10;

  v58[3] = v11;
  v57[4] = @"lastunlock";
  v12 = [(CKKSDeviceStateEntry *)self lastUnlockTime];
  if (!v12 || (v13 = v12, -[CKKSDeviceStateEntry lastUnlockTime](self, "lastUnlockTime"), v14 = objc_claimAutoreleasedReturnValue(), [v3 stringFromDate:v14], v15 = objc_claimAutoreleasedReturnValue(), v14, v13, !v15))
  {
    v15 = +[NSNull null];
  }

  v58[4] = v15;
  v57[5] = @"peerid";
  v16 = [(CKKSDeviceStateEntry *)self circlePeerID];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = +[NSNull null];
  }

  v19 = v18;

  v58[5] = v19;
  v57[6] = @"circlestatus";
  v20 = [(CKKSDeviceStateEntry *)self circleStatus]+ 1;
  if (v20 > 4)
  {
    v21 = @"kSOSCCError";
  }

  else
  {
    v21 = off_1003454A8[v20];
  }

  v58[6] = v21;
  v57[7] = @"octagonpeerid";
  v22 = [(CKKSDeviceStateEntry *)self octagonPeerID];
  v23 = v22;
  v52 = v19;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = +[NSNull null];
  }

  v25 = v24;

  v58[7] = v25;
  v57[8] = @"octagonstatus";
  v26 = [(CKKSDeviceStateEntry *)self octagonStatus];
  if (!v26)
  {
    goto LABEL_21;
  }

  v27 = v26;
  v28 = [(CKKSDeviceStateEntry *)self octagonStatus];
  [v28 status];
  v29 = OTCliqueStatusToString();

  if (!v29)
  {
LABEL_21:
    v29 = +[NSNull null];
  }

  v58[8] = v29;
  v57[9] = @"keystate";
  v30 = [(CKKSDeviceStateEntry *)self keyState];
  v31 = v30;
  v56 = v3;
  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = +[NSNull null];
  }

  v33 = v32;

  v58[9] = v33;
  v57[10] = @"currentTLK";
  v34 = [(CKKSDeviceStateEntry *)self currentTLKUUID];
  v35 = v34;
  v53 = v7;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = +[NSNull null];
  }

  v37 = v36;

  v58[10] = v37;
  v57[11] = @"currentClassA";
  v38 = [(CKKSDeviceStateEntry *)self currentClassAUUID];
  v39 = v38;
  if (v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = +[NSNull null];
  }

  v41 = v40;

  v58[11] = v41;
  v57[12] = @"currentClassC";
  v42 = [(CKKSDeviceStateEntry *)self currentClassCUUID];
  v43 = v42;
  if (v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = +[NSNull null];
  }

  v45 = v44;

  v58[12] = v45;
  v57[13] = @"ckrecord";
  v46 = [(CKKSCKRecordHolder *)self encodedCKRecord];
  v47 = [v46 base64EncodedStringWithOptions:0];

  if (v47)
  {
    v48 = v47;
  }

  else
  {
    v48 = +[NSNull null];
  }

  v49 = v48;

  v58[13] = v49;
  v50 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:14];

  return v50;
}

- (id)whereClauseToFindSelf
{
  v9[0] = @"contextID";
  v3 = [(CKKSCKRecordHolder *)self contextID];
  v10[0] = v3;
  v9[1] = @"device";
  v4 = [(CKKSDeviceStateEntry *)self device];
  v10[1] = v4;
  v9[2] = @"ckzone";
  v5 = [(CKKSCKRecordHolder *)self zoneID];
  v6 = [v5 zoneName];
  v10[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

- (void)setFromCKRecord:(id)a3
{
  v30 = a3;
  v4 = [v30 recordType];
  v5 = [v4 isEqualToString:@"devicestate"];

  if ((v5 & 1) == 0)
  {
    v26 = [v30 recordType];
    v27 = [NSString stringWithFormat:@"CKRecordType (%@) was not %@", v26, @"devicestate"];
    v28 = [NSException exceptionWithName:@"WrongCKRecordTypeException" reason:v27 userInfo:0];
    v29 = v28;

    objc_exception_throw(v28);
  }

  [(CKKSCKRecordHolder *)self setStoredCKRecord:v30];
  v6 = [v30 objectForKeyedSubscript:@"osver"];
  [(CKKSDeviceStateEntry *)self setOsVersion:v6];

  v7 = [v30 objectForKeyedSubscript:@"lastunlock"];
  [(CKKSDeviceStateEntry *)self setLastUnlockTime:v7];

  v8 = [v30 recordID];
  v9 = [CKKSDeviceStateEntry nameFromCKRecordID:v8];
  [(CKKSDeviceStateEntry *)self setDevice:v9];

  v10 = [v30 objectForKeyedSubscript:@"octagonpeerid"];
  [(CKKSDeviceStateEntry *)self setOctagonPeerID:v10];

  v11 = [v30 objectForKeyedSubscript:@"octagonstatus"];
  v12 = [(CKKSDeviceStateEntry *)self cktypeToOTCliqueStatusWrapper:v11];
  [(CKKSDeviceStateEntry *)self setOctagonStatus:v12];

  v13 = [v30 objectForKeyedSubscript:@"peerid"];
  [(CKKSDeviceStateEntry *)self setCirclePeerID:v13];

  v14 = [v30 objectForKeyedSubscript:@"circle"];
  [(CKKSDeviceStateEntry *)self setCircleStatus:[(CKKSDeviceStateEntry *)self cktypeToSOSCCStatus:v14]];

  v15 = [v30 objectForKeyedSubscript:@"keystate"];
  v16 = sub_10011007C(v15);
  [(CKKSDeviceStateEntry *)self setKeyState:v16];

  v17 = [v30 objectForKeyedSubscript:@"currentTLK"];
  v18 = [v17 recordID];
  v19 = [v18 recordName];
  [(CKKSDeviceStateEntry *)self setCurrentTLKUUID:v19];

  v20 = [v30 objectForKeyedSubscript:@"currentClassA"];
  v21 = [v20 recordID];
  v22 = [v21 recordName];
  [(CKKSDeviceStateEntry *)self setCurrentClassAUUID:v22];

  v23 = [v30 objectForKeyedSubscript:@"currentClassC"];
  v24 = [v23 recordID];
  v25 = [v24 recordName];
  [(CKKSDeviceStateEntry *)self setCurrentClassCUUID:v25];
}

- (BOOL)matchesCKRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 recordType];
  v6 = [v5 isEqualToString:@"devicestate"];

  if (!v6)
  {
    goto LABEL_38;
  }

  v7 = [v4 recordID];
  v8 = [v7 recordName];
  v9 = [(CKKSDeviceStateEntry *)self CKRecordName];
  v10 = [v8 isEqualToString:v9];

  if (!v10)
  {
    goto LABEL_38;
  }

  v11 = [(CKKSDeviceStateEntry *)self lastUnlockTime];
  if (v11 || ([v4 objectForKeyedSubscript:@"lastunlock"], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = [v4 objectForKeyedSubscript:@"lastunlock"];
    v13 = [(CKKSDeviceStateEntry *)self lastUnlockTime];
    v14 = [v12 isEqual:v13];

    if (v11)
    {

      if (!v14)
      {
        goto LABEL_38;
      }
    }

    else
    {

      if ((v14 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  v15 = [(CKKSDeviceStateEntry *)self osVersion];
  if (v15 || ([v4 objectForKeyedSubscript:@"osver"], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v16 = [v4 objectForKeyedSubscript:@"osver"];
    v17 = [(CKKSDeviceStateEntry *)self osVersion];
    v18 = [v16 isEqualToString:v17];

    if (v15)
    {

      if (!v18)
      {
        goto LABEL_38;
      }
    }

    else
    {

      if ((v18 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  v19 = [(CKKSDeviceStateEntry *)self circlePeerID];
  if (v19 || ([v4 objectForKeyedSubscript:@"peerid"], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v20 = [v4 objectForKeyedSubscript:@"peerid"];
    v21 = [(CKKSDeviceStateEntry *)self circlePeerID];
    v22 = [v20 isEqualToString:v21];

    if (v19)
    {

      if (!v22)
      {
        goto LABEL_38;
      }
    }

    else
    {

      if ((v22 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  v23 = [(CKKSDeviceStateEntry *)self octagonPeerID];
  if (v23 || ([v4 objectForKeyedSubscript:@"octagonpeerid"], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v24 = [v4 objectForKeyedSubscript:@"octagonpeerid"];
    v25 = [(CKKSDeviceStateEntry *)self octagonPeerID];
    v26 = [v24 isEqualToString:v25];

    if (v23)
    {

      if (!v26)
      {
        goto LABEL_38;
      }
    }

    else
    {

      if ((v26 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  v27 = [(CKKSDeviceStateEntry *)self octagonStatus];
  if (!v27)
  {
    v8 = [v4 objectForKeyedSubscript:@"octagonstatus"];
    if (!v8)
    {
      goto LABEL_33;
    }
  }

  v28 = [(CKKSDeviceStateEntry *)self octagonStatus];
  v29 = [v4 objectForKeyedSubscript:@"octagonstatus"];
  v30 = [(CKKSDeviceStateEntry *)self cktypeToOTCliqueStatusWrapper:v29];
  v31 = [v28 isEqual:v30];

  if (!v27)
  {

    if ((v31 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_38:
    v53 = 0;
    goto LABEL_39;
  }

  if (v31)
  {
    goto LABEL_38;
  }

LABEL_33:
  v32 = [v4 objectForKeyedSubscript:@"circle"];
  v33 = [(CKKSDeviceStateEntry *)self cktypeToSOSCCStatus:v32];
  v34 = [(CKKSDeviceStateEntry *)self circleStatus];

  if (v33 != v34)
  {
    goto LABEL_38;
  }

  v35 = [v4 objectForKeyedSubscript:@"keystate"];
  v36 = sub_10011007C(v35);
  v37 = [(CKKSDeviceStateEntry *)self keyState];
  v38 = [v36 isEqualToString:v37];

  if (!v38)
  {
    goto LABEL_38;
  }

  v39 = [v4 objectForKeyedSubscript:@"currentTLK"];
  v40 = [v39 recordID];
  v41 = [v40 recordName];
  v42 = [(CKKSDeviceStateEntry *)self currentTLKUUID];
  v43 = [v41 isEqualToString:v42];

  if (!v43)
  {
    goto LABEL_38;
  }

  v44 = [v4 objectForKeyedSubscript:@"currentClassA"];
  v45 = [v44 recordID];
  v46 = [v45 recordName];
  v47 = [(CKKSDeviceStateEntry *)self currentTLKUUID];
  v48 = [v46 isEqualToString:v47];

  if (!v48)
  {
    goto LABEL_38;
  }

  v49 = [v4 objectForKeyedSubscript:@"currentClassC"];
  v50 = [v49 recordID];
  v51 = [v50 recordName];
  v52 = [(CKKSDeviceStateEntry *)self currentTLKUUID];
  v53 = [v51 isEqualToString:v52];

LABEL_39:
  return v53;
}

- (id)updateCKRecord:(id)a3 zoneID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 recordID];
  v9 = [v8 recordName];
  v10 = [(CKKSDeviceStateEntry *)self CKRecordName];
  v11 = [v9 isEqualToString:v10];

  if ((v11 & 1) == 0)
  {
    v50 = [v6 recordID];
    v51 = [v50 recordName];
    v52 = [(CKKSDeviceStateEntry *)self CKRecordName];
    v53 = [NSString stringWithFormat:@"CKRecord name (%@) was not %@", v51, v52];
    v54 = [NSException exceptionWithName:@"WrongCKRecordNameException" reason:v53 userInfo:0];
    v55 = v54;

    goto LABEL_23;
  }

  v12 = [v6 recordType];
  v13 = [v12 isEqualToString:@"devicestate"];

  if ((v13 & 1) == 0)
  {
    v50 = [v6 recordType];
    v56 = [NSString stringWithFormat:@"CKRecordType (%@) was not %@", v50, @"devicestate"];
    v54 = [NSException exceptionWithName:@"WrongCKRecordTypeException" reason:v56 userInfo:0];
    v57 = v54;

LABEL_23:
    objc_exception_throw(v54);
  }

  v14 = [(CKKSDeviceStateEntry *)self osVersion];
  [v6 setObject:v14 forKeyedSubscript:@"osver"];

  v15 = [(CKKSDeviceStateEntry *)self lastUnlockTime];
  [v6 setObject:v15 forKeyedSubscript:@"lastunlock"];

  v16 = [(CKKSDeviceStateEntry *)self octagonPeerID];
  [v6 setObject:v16 forKeyedSubscript:@"octagonpeerid"];

  v17 = [(CKKSDeviceStateEntry *)self octagonStatus];
  v18 = [(CKKSDeviceStateEntry *)self cliqueStatusToCKType:v17];
  [v6 setObject:v18 forKeyedSubscript:@"octagonstatus"];

  v19 = [(CKKSDeviceStateEntry *)self sosCCStatusToCKType:[(CKKSDeviceStateEntry *)self circleStatus]];
  [v6 setObject:v19 forKeyedSubscript:@"circle"];

  v20 = [(CKKSDeviceStateEntry *)self keyState];
  v21 = sub_10010FC60();
  v22 = v21;
  if (!v20)
  {
    v24 = [v21 objectForKeyedSubscript:@"error"];
    goto LABEL_7;
  }

  v23 = [v21 objectForKeyedSubscript:v20];

  if (v23)
  {
    v24 = v23;
    v22 = v24;
LABEL_7:
    v25 = v24;
    goto LABEL_9;
  }

  v26 = sub_10010FC60();
  v25 = [v26 objectForKeyedSubscript:@"error"];

  v22 = 0;
LABEL_9:

  [v6 setObject:v25 forKeyedSubscript:@"keystate"];
  v27 = [(CKKSDeviceStateEntry *)self circlePeerID];
  [v6 setObject:v27 forKeyedSubscript:@"peerid"];

  v28 = [(CKKSDeviceStateEntry *)self currentTLKUUID];
  if (v28)
  {
    v29 = [CKReference alloc];
    v30 = [CKRecordID alloc];
    v31 = [(CKKSDeviceStateEntry *)self currentTLKUUID];
    v32 = [(CKKSCKRecordHolder *)self zoneID];
    v33 = [v30 initWithRecordName:v31 zoneID:v32];
    v34 = [v29 initWithRecordID:v33 action:0];
    [v6 setObject:v34 forKeyedSubscript:@"currentTLK"];
  }

  else
  {
    [v6 setObject:0 forKeyedSubscript:@"currentTLK"];
  }

  v35 = [(CKKSDeviceStateEntry *)self currentClassAUUID];
  if (v35)
  {
    v36 = [CKReference alloc];
    v37 = [CKRecordID alloc];
    v38 = [(CKKSDeviceStateEntry *)self currentClassAUUID];
    v39 = [(CKKSCKRecordHolder *)self zoneID];
    v40 = [v37 initWithRecordName:v38 zoneID:v39];
    v41 = [v36 initWithRecordID:v40 action:0];
    [v6 setObject:v41 forKeyedSubscript:@"currentClassA"];
  }

  else
  {
    [v6 setObject:0 forKeyedSubscript:@"currentClassA"];
  }

  v42 = [(CKKSDeviceStateEntry *)self currentClassCUUID];
  if (v42)
  {
    v43 = [CKReference alloc];
    v44 = [CKRecordID alloc];
    v45 = [(CKKSDeviceStateEntry *)self currentClassCUUID];
    v46 = [(CKKSCKRecordHolder *)self zoneID];
    v47 = [v44 initWithRecordName:v45 zoneID:v46];
    v48 = [v43 initWithRecordID:v47 action:0];
    [v6 setObject:v48 forKeyedSubscript:@"currentClassC"];
  }

  else
  {
    [v6 setObject:0 forKeyedSubscript:@"currentClassC"];
  }

  return v6;
}

- (id)CKRecordName
{
  v2 = [(CKKSDeviceStateEntry *)self device];
  v3 = [NSString stringWithFormat:@"ckid-%@", v2];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CKKSCKRecordHolder *)self zoneID];
    v107 = [v5 zoneID];
    v108 = v6;
    v106 = [v6 isEqual:v107];
    if (!v106)
    {
      v105 = 0;
      memset(v104, 0, sizeof(v104));
      memset(v100, 0, sizeof(v100));
      v10 = 0;
      v11 = 0;
      v103 = 0;
      v12 = 0;
      v102 = 0;
      v13 = 0;
      v101 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      goto LABEL_9;
    }

    v99 = [(CKKSDeviceStateEntry *)self device];
    HIDWORD(v105) = v99 == 0;
    if (v99 || ([v5 device], (v93 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [(CKKSDeviceStateEntry *)self device];
      v95 = [v5 device];
      v96 = v8;
      v9 = 1;
      if (![v8 isEqual:?])
      {
        LODWORD(v105) = 1;
        memset(v104, 0, sizeof(v104));
        memset(v100, 0, sizeof(v100));
        v10 = 0;
        v11 = 0;
        v103 = 0;
        v12 = 0;
        v102 = 0;
        v13 = 0;
        v101 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v93 = 0;
      v9 = 0;
    }

    v94 = [(CKKSCKRecordHolder *)self contextID];
    HIDWORD(v104[5]) = v94 == 0;
    LODWORD(v105) = v9;
    if (v94 || ([v5 contextID], (v89 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v32 = [(CKKSCKRecordHolder *)self contextID];
      [v5 contextID];
      v91 = v92 = v32;
      if (![v32 isEqual:?])
      {
        LODWORD(v104[0]) = 1;
        memset(v100, 0, sizeof(v100));
        memset(v104 + 4, 0, 32);
        v10 = 0;
        v11 = 0;
        v103 = 0;
        v12 = 0;
        v102 = 0;
        v13 = 0;
        v101 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(&v104[4] + 4) = 1;
        goto LABEL_9;
      }

      HIDWORD(v104[4]) = 1;
    }

    else
    {
      v89 = 0;
      HIDWORD(v104[4]) = 0;
    }

    v33 = [(CKKSDeviceStateEntry *)self osVersion];
    LODWORD(v104[5]) = v33 == 0;
    v90 = v33;
    if (v33 || ([v5 osVersion], (v85 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v34 = [(CKKSDeviceStateEntry *)self osVersion];
      v87 = [v5 osVersion];
      v88 = v34;
      if (![v34 isEqual:?])
      {
        LODWORD(v104[0]) = 1;
        *v100 = 0;
        v10 = 0;
        memset(v104 + 4, 0, 24);
        v11 = 0;
        v103 = 0;
        v12 = 0;
        v102 = 0;
        v13 = 0;
        v101 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *&v100[8] = 1;
        *(&v104[3] + 4) = 1;
        goto LABEL_9;
      }

      HIDWORD(v104[3]) = 1;
    }

    else
    {
      v85 = 0;
      HIDWORD(v104[3]) = 0;
    }

    v35 = [(CKKSDeviceStateEntry *)self lastUnlockTime];
    LODWORD(v104[4]) = v35 == 0;
    v86 = v35;
    if (v35 || ([v5 lastUnlockTime], (v81 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v36 = [(CKKSDeviceStateEntry *)self lastUnlockTime];
      v83 = [v5 lastUnlockTime];
      v84 = v36;
      if (![v36 isEqual:?])
      {
        LODWORD(v104[0]) = 1;
        *(v104 + 4) = 0;
        *(&v104[1] + 4) = 0;
        v10 = 0;
        v11 = 0;
        v103 = 0;
        v12 = 0;
        v102 = 0;
        v13 = 0;
        v101 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *&v100[8] = 1;
        *v100 = 0;
        *&v100[4] = 1;
        *(&v104[2] + 4) = 1;
        goto LABEL_9;
      }

      HIDWORD(v104[2]) = 1;
    }

    else
    {
      v81 = 0;
      HIDWORD(v104[2]) = 0;
    }

    v37 = [(CKKSDeviceStateEntry *)self octagonPeerID];
    LODWORD(v104[3]) = v37 == 0;
    v82 = v37;
    if (v37 || ([v5 octagonPeerID], (v77 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v38 = [(CKKSDeviceStateEntry *)self octagonPeerID];
      v79 = [v5 octagonPeerID];
      v80 = v38;
      if (![v38 isEqual:?])
      {
        LODWORD(v104[0]) = 1;
        v10 = 0;
        *(v104 + 4) = 0;
        v11 = 0;
        v103 = 0;
        v12 = 0;
        v102 = 0;
        v13 = 0;
        v101 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *&v100[4] = 1;
        *&v100[8] = 1;
        *v100 = 1;
        *(&v104[1] + 4) = 1;
        goto LABEL_9;
      }

      HIDWORD(v104[1]) = 1;
    }

    else
    {
      v77 = 0;
      HIDWORD(v104[1]) = 0;
    }

    v39 = [(CKKSDeviceStateEntry *)self octagonStatus];
    LODWORD(v104[2]) = v39 == 0;
    v78 = v39;
    if (v39 || ([v5 octagonStatus], (v73 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v40 = [(CKKSDeviceStateEntry *)self octagonStatus];
      v75 = [v5 octagonStatus];
      v76 = v40;
      if (![v40 isEqual:?])
      {
        LODWORD(v104[0]) = 1;
        v11 = 0;
        v103 = 0;
        v12 = 0;
        v102 = 0;
        v13 = 0;
        v101 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *&v100[4] = 1;
        *&v100[8] = 1;
        *v100 = 1;
        v10 = 1;
        *(v104 + 4) = 1;
        goto LABEL_9;
      }

      HIDWORD(v104[0]) = 1;
    }

    else
    {
      v73 = 0;
      HIDWORD(v104[0]) = 0;
    }

    v41 = [(CKKSDeviceStateEntry *)self circlePeerID];
    LODWORD(v104[1]) = v41 == 0;
    v74 = v41;
    if (v41 || ([v5 circlePeerID], (v70 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v42 = [(CKKSDeviceStateEntry *)self circlePeerID];
      v71 = [v5 circlePeerID];
      v72 = v42;
      if (![v42 isEqual:?])
      {
        LODWORD(v104[0]) = 1;
        v12 = 0;
        v102 = 0;
        v13 = 0;
        v101 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *&v100[8] = 1;
        *v100 = 0x100000001;
        v10 = 1;
        v11 = 1;
        v103 = 1;
        goto LABEL_9;
      }

      LODWORD(v103) = 1;
    }

    else
    {
      v70 = 0;
      LODWORD(v103) = 0;
    }

    v43 = [(CKKSDeviceStateEntry *)self circleStatus];
    if (v43 != [v5 circleStatus])
    {
      v12 = 0;
      v102 = 0;
      v13 = 0;
      v101 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      HIDWORD(v103) = 0;
      LODWORD(v104[0]) = 1;
      *&v100[4] = 1;
      *&v100[8] = 1;
      *v100 = 1;
      v10 = 1;
      v11 = 1;
      goto LABEL_9;
    }

    v44 = [(CKKSDeviceStateEntry *)self keyState];
    HIDWORD(v103) = v44 == 0;
    v69 = v44;
    if (v44 || ([v5 keyState], (v65 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v45 = [(CKKSDeviceStateEntry *)self keyState];
      v67 = [v5 keyState];
      v68 = v45;
      if (![v45 isEqual:?])
      {
        LODWORD(v104[0]) = 1;
        v13 = 0;
        v101 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *&v100[4] = 1;
        *&v100[8] = 1;
        *v100 = 1;
        v10 = 1;
        v11 = 1;
        v12 = 1;
        v102 = 1;
        goto LABEL_9;
      }

      LODWORD(v102) = 1;
    }

    else
    {
      v65 = 0;
      LODWORD(v102) = 0;
    }

    v46 = [(CKKSDeviceStateEntry *)self currentTLKUUID];
    HIDWORD(v102) = v46 == 0;
    v66 = v46;
    if (v46 || ([v5 currentTLKUUID], (v61 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v47 = [(CKKSDeviceStateEntry *)self currentTLKUUID];
      v63 = [v5 currentTLKUUID];
      v64 = v47;
      if (![v47 isEqual:?])
      {
        LODWORD(v104[0]) = 1;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *&v100[4] = 1;
        *&v100[8] = 1;
        *v100 = 1;
        v10 = 1;
        v11 = 1;
        v12 = 1;
        v13 = 1;
        v101 = 1;
        goto LABEL_9;
      }

      LODWORD(v101) = 1;
    }

    else
    {
      v61 = 0;
      LODWORD(v101) = 0;
    }

    v48 = [(CKKSDeviceStateEntry *)self currentClassAUUID];
    HIDWORD(v101) = v48 == 0;
    v62 = v48;
    if (v48 || ([v5 currentClassAUUID], (v57 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v49 = [(CKKSDeviceStateEntry *)self currentClassAUUID];
      v59 = [v5 currentClassAUUID];
      v60 = v49;
      if (![v49 isEqual:?])
      {
        LODWORD(v104[0]) = 1;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *&v100[4] = 1;
        *&v100[8] = 1;
        *v100 = 1;
        v10 = 1;
        v11 = 1;
        v12 = 1;
        v13 = 1;
        v14 = 1;
        v15 = 1;
        goto LABEL_9;
      }

      v54 = 1;
    }

    else
    {
      v57 = 0;
      v54 = 0;
    }

    v50 = [(CKKSDeviceStateEntry *)self currentClassCUUID];
    v98 = v50 == 0;
    v58 = v50;
    if (v50 || ([v5 currentClassCUUID], (v55 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v51 = [(CKKSDeviceStateEntry *)self currentClassCUUID];
      v53 = [v5 currentClassCUUID];
      v52 = [v51 isEqual:?];
      v18 = 1;
      v56 = v51;
      if (!v52)
      {
        LODWORD(v104[0]) = 1;
        v19 = 0;
        *&v100[8] = 1;
        *v100 = 0x100000001;
        v10 = 1;
        v11 = 1;
        v12 = 1;
        v13 = 1;
        v14 = 1;
        v16 = 1;
LABEL_142:
        v17 = v98;
        v15 = v54;
        v7 = v53;
LABEL_9:
        if (v18)
        {
          v97 = v4;
          v20 = v19;
          v21 = v11;
          v22 = v5;
          v23 = v16;
          v24 = v14;
          v25 = v13;
          v26 = v12;
          v27 = v10;
          v28 = v15;
          v29 = v17;

          v30 = v29;
          v15 = v28;
          v10 = v27;
          v12 = v26;
          v13 = v25;
          v14 = v24;
          v16 = v23;
          v5 = v22;
          v11 = v21;
          v19 = v20;
          v4 = v97;
          if (!v30)
          {
            goto LABEL_11;
          }
        }

        else if (!v17)
        {
LABEL_11:
          if (v16)
          {
            goto LABEL_12;
          }

          goto LABEL_16;
        }

        if (v16)
        {
LABEL_12:

          if (!v15)
          {
LABEL_18:
            if (HIDWORD(v101))
            {
            }

            if (v14)
            {
            }

            if (v101)
            {
            }

            if (HIDWORD(v102))
            {
            }

            if (v13)
            {
            }

            if (v102)
            {
            }

            if (HIDWORD(v103))
            {
            }

            if (v12)
            {
            }

            if (v103)
            {
            }

            if (LODWORD(v104[1]))
            {
            }

            if (v11)
            {
            }

            if (HIDWORD(v104[0]))
            {
            }

            if (LODWORD(v104[2]))
            {
            }

            if (v10)
            {
            }

            if (HIDWORD(v104[1]))
            {
            }

            if (LODWORD(v104[3]))
            {
            }

            if (*v100)
            {
            }

            if (HIDWORD(v104[2]))
            {
            }

            if (LODWORD(v104[4]))
            {
            }

            if (*&v100[4])
            {
            }

            if (HIDWORD(v104[3]))
            {
            }

            if (LODWORD(v104[5]))
            {
            }

            if (*&v100[8])
            {
            }

            if (HIDWORD(v104[4]))
            {
            }

            if (HIDWORD(v104[5]))
            {
            }

            if (LODWORD(v104[0]))
            {

              if (!v105)
              {
                goto LABEL_70;
              }
            }

            else if (!v105)
            {
LABEL_70:
              if (HIDWORD(v105))
              {
                goto LABEL_71;
              }

              goto LABEL_75;
            }

            if (HIDWORD(v105))
            {
LABEL_71:

              if (!v106)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            }

LABEL_75:
            if (!v106)
            {
LABEL_77:

              goto LABEL_78;
            }

LABEL_76:

            goto LABEL_77;
          }

LABEL_17:

          goto LABEL_18;
        }

LABEL_16:
        if (!v15)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v55 = 0;
      v18 = 0;
    }

    LODWORD(v104[0]) = 1;
    *&v100[4] = 1;
    *&v100[8] = 1;
    *v100 = 1;
    v10 = 1;
    v11 = 1;
    v12 = 1;
    v13 = 1;
    v14 = 1;
    v16 = 1;
    v19 = 1;
    goto LABEL_142;
  }

  v19 = 0;
LABEL_78:

  return v19;
}

- (id)description
{
  v3 = [(CKKSCKRecordHolder *)self storedCKRecord];
  v25 = [v3 modificationDate];

  v19 = [(CKKSCKRecordHolder *)self contextID];
  v24 = [(CKKSDeviceStateEntry *)self device];
  v23 = [(CKKSDeviceStateEntry *)self circlePeerID];
  v22 = [(CKKSDeviceStateEntry *)self octagonPeerID];
  v21 = [(CKKSDeviceStateEntry *)self osVersion];
  v20 = [(CKKSDeviceStateEntry *)self lastUnlockTime];
  v4 = [(CKKSCKRecordHolder *)self zoneID];
  v5 = [v4 zoneName];
  v6 = [(CKKSDeviceStateEntry *)self circleStatus]+ 1;
  if (v6 > 4)
  {
    v7 = @"kSOSCCError";
  }

  else
  {
    v7 = off_1003454A8[v6];
  }

  v8 = [(CKKSDeviceStateEntry *)self octagonStatus];
  if (v8)
  {
    v18 = [(CKKSDeviceStateEntry *)self octagonStatus];
    [v18 status];
    v9 = OTCliqueStatusToString();
  }

  else
  {
    v9 = @"CliqueMissing";
  }

  v10 = [(CKKSDeviceStateEntry *)self keyState];
  v11 = [(CKKSDeviceStateEntry *)self currentTLKUUID];
  v12 = [(CKKSDeviceStateEntry *)self currentClassAUUID];
  v13 = [(CKKSDeviceStateEntry *)self currentClassCUUID];
  v14 = v13;
  v15 = @"unknown";
  if (v25)
  {
    v15 = v25;
  }

  v16 = [NSString stringWithFormat:@"<CKKSDeviceStateEntry[%@](%@, %@, %@, %@, %@, %@): %@ %@ %@ %@ %@ %@ upd:%@>", v19, v24, v23, v22, v21, v20, v5, v7, v9, v10, v11, v12, v13, v15];

  if (v8)
  {
  }

  return v16;
}

- (id)cktypeToOTCliqueStatusWrapper:(id)a3
{
  v3 = a3;
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = 0;
    goto LABEL_21;
  }

  v4 = [v3 unsignedIntValue];
  v5 = v4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v6 = [OTCliqueStatusWrapper alloc];
        v7 = 3;
        goto LABEL_20;
      case 4:
        v6 = [OTCliqueStatusWrapper alloc];
        v7 = 4;
        goto LABEL_20;
      case 111:
        goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (!v4)
  {
    v6 = [OTCliqueStatusWrapper alloc];
    v7 = 0;
    goto LABEL_20;
  }

  if (v4 == 1)
  {
    v6 = [OTCliqueStatusWrapper alloc];
    v7 = 1;
    goto LABEL_20;
  }

  if (v4 != 2)
  {
LABEL_12:
    v9 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11[0] = 67109120;
      v11[1] = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%d is not an OTCliqueStatus?", v11, 8u);
    }

LABEL_15:
    v6 = [OTCliqueStatusWrapper alloc];
    v7 = -1;
    goto LABEL_20;
  }

  v6 = [OTCliqueStatusWrapper alloc];
  v7 = 2;
LABEL_20:
  v8 = [(OTCliqueStatusWrapper *)v6 initWithStatus:v7];
LABEL_21:

  return v8;
}

- (id)cliqueStatusToCKType:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 status] == -1)
    {
      v5 = 111;
    }

    else
    {
      v5 = [v4 status];
    }

    v6 = [NSNumber numberWithInt:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int)cktypeToSOSCCStatus:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:
    v5 = -1;
    goto LABEL_8;
  }

  v4 = [v3 unsignedIntValue];
  v5 = v4;
  if (v4 + 1 >= 5)
  {
    if (v4 != 111)
    {
      v6 = sub_100019104(@"ckks", 0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8[0] = 67109120;
        v8[1] = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%d is not an SOSCCStatus?", v8, 8u);
      }
    }

    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

- (id)initForDevice:(id)a3 contextID:(id)a4 osVersion:(id)a5 lastUnlockTime:(id)a6 octagonPeerID:(id)a7 octagonStatus:(id)a8 circlePeerID:(id)a9 circleStatus:(int)a10 keyState:(id)a11 currentTLKUUID:(id)a12 currentClassAUUID:(id)a13 currentClassCUUID:(id)a14 zoneID:(id)a15 encodedCKRecord:(id)a16
{
  v35 = a3;
  v34 = a5;
  v33 = a6;
  v32 = a7;
  v31 = a8;
  v30 = a9;
  v29 = a11;
  v21 = a12;
  v22 = a13;
  v23 = a14;
  v36.receiver = self;
  v36.super_class = CKKSDeviceStateEntry;
  v24 = [(CKKSCKRecordHolder *)&v36 initWithCKRecordType:@"devicestate" encodedCKRecord:a16 contextID:a4 zoneID:a15];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_device, a3);
    objc_storeStrong(&v25->_osVersion, a5);
    objc_storeStrong(&v25->_lastUnlockTime, a6);
    objc_storeStrong(&v25->_octagonPeerID, a7);
    objc_storeStrong(&v25->_octagonStatus, a8);
    v25->_circleStatus = a10;
    objc_storeStrong(&v25->_keyState, a11);
    objc_storeStrong(&v25->_circlePeerID, a9);
    objc_storeStrong(&v25->_currentTLKUUID, a12);
    objc_storeStrong(&v25->_currentClassAUUID, a13);
    objc_storeStrong(&v25->_currentClassCUUID, a14);
  }

  return v25;
}

+ (BOOL)intransactionRecordDeleted:(id)a3 contextID:(id)a4 resync:(BOOL)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 zoneID];
  v11 = [v10 zoneName];
  v12 = sub_100019104(@"ckksdevice", v11);

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v24 = @"devicestate";
    v25 = 2112;
    v26 = v8;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "CloudKit notification: deleted device state record(%@): %@", buf, 0x16u);
  }

  v22 = 0;
  v13 = [CKKSDeviceStateEntry tryFromDatabaseFromCKRecordID:v8 contextID:v9 error:&v22];

  v14 = v22;
  v21 = v14;
  [(__CFString *)v13 deleteFromDatabase:&v21];
  v15 = v21;

  v16 = [v8 zoneID];
  v17 = [v16 zoneName];
  v18 = sub_100019104(@"ckksdevice", v17);

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v24 = v13;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v15;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "CKKSDeviceStateEntry(%@) was deleted: %@ error: %@", buf, 0x20u);
  }

  if (a6 && v15)
  {
    v19 = v15;
    *a6 = v15;
  }

  return v15 == 0;
}

+ (BOOL)intransactionRecordChanged:(id)a3 contextID:(id)a4 resync:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v9 = a3;
  v10 = a4;
  if (v7)
  {
    v11 = [(CKKSDeviceStateEntry *)v9 recordID];
    v12 = [v11 recordName];
    v13 = [(CKKSDeviceStateEntry *)v9 recordID];
    v14 = [v13 zoneID];
    v37 = 0;
    v15 = [CKKSDeviceStateEntry tryFromDatabase:v12 contextID:v10 zoneID:v14 error:&v37];
    v16 = v37;

    if (v16)
    {
      v17 = [(CKKSDeviceStateEntry *)v9 recordID];
      v18 = [v17 zoneID];
      v19 = [v18 zoneName];
      v20 = sub_100019104(@"ckksresync", v19);

      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v39 = v16;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "error loading cdse: %@", buf, 0xCu);
      }
    }

    if (v15)
    {
      v21 = [(CKKSDeviceStateEntry *)v15 matchesCKRecord:v9];
      v22 = [(CKKSDeviceStateEntry *)v9 recordID];
      v23 = [v22 zoneID];
      v24 = [v23 zoneName];
      v25 = sub_100019104(@"ckksresync", v24);

      if (v21)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v39 = v9;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Already know about this current item pointer, skipping update: %@", buf, 0xCu);
        }

        v26 = 1;
        goto LABEL_23;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v39 = v15;
        v40 = 2112;
        v41 = v9;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "BUG: Local current device state entry doesn't match resynced CloudKit record(s): %@ %@", buf, 0x16u);
      }
    }

    else
    {
      v27 = [(CKKSDeviceStateEntry *)v9 recordID];
      v28 = [v27 zoneID];
      v29 = [v28 zoneName];
      v25 = sub_100019104(@"ckksresync", v29);

      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v39 = v9;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "BUG: No current device state entry matching resynced CloudKit record: %@", buf, 0xCu);
      }
    }
  }

  v15 = [(CKKSCKRecordHolder *)[CKKSDeviceStateEntry alloc] initWithCKRecord:v9 contextID:v10];
  v36 = 0;
  v26 = [(CKKSSQLDatabaseObject *)v15 saveToDatabase:&v36];
  v16 = v36;
  if (v16)
  {
    v26 = 0;
  }

  if ((v26 & 1) == 0)
  {
    v30 = [(CKKSDeviceStateEntry *)v9 recordID];
    v31 = [v30 zoneID];
    v32 = [v31 zoneName];
    v33 = sub_100019104(@"ckksdevice", v32);

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v39 = v15;
      v40 = 2112;
      v41 = v16;
      v42 = 2112;
      v43 = v9;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to save device record to database: %@: %@ %@", buf, 0x20u);
    }

    if (a6)
    {
      v34 = v16;
      *a6 = v16;
    }
  }

LABEL_23:

  return v26;
}

+ (id)intransactionCreateDeviceStateForView:(id)a3 accountTracker:(id)a4 lockStateTracker:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 contextID];
  v13 = [v10 cdpCapableiCloudAccountStatus];
  if (v13 == 1)
  {
    v14 = [v10 currentCKAccountInfo];
    v15 = [v14 accountStatus];

    if (v15 == 1)
    {
      v16 = [v10 ckdeviceID];
      if (!v16)
      {
        v32 = [v9 zoneName];
        v33 = sub_100019104(@"ckksdevice", v32);

        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "No CK device ID available; cannot make device state entry", buf, 2u);
        }

        v134 = NSLocalizedDescriptionKey;
        v34 = [v10 currentCKAccountInfo];
        v35 = [NSString stringWithFormat:@"No CK device ID: %@", v34];
        v135 = v35;
        v36 = [NSDictionary dictionaryWithObjects:&v135 forKeys:&v134 count:1];
        v18 = [NSError errorWithDomain:@"CKKSErrorDomain" code:10 userInfo:v36];

        if (a6)
        {
          v37 = v18;
          v22 = 0;
          *a6 = v18;
        }

        else
        {
          v22 = 0;
        }

        v16 = 0;
        goto LABEL_82;
      }

      v17 = [v9 zoneID];
      v133 = 0;
      v123 = [CKKSDeviceStateEntry tryFromDatabase:v16 contextID:v12 zoneID:v17 error:&v133];
      v18 = v133;

      if (v18)
      {
        v19 = [v9 zoneName];
        v20 = sub_100019104(@"ckksdevice", v19);

        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v139 = v18;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Couldn't read old CKKSDeviceStateEntry from database: %@", buf, 0xCu);
        }

        if (a6)
        {
          v21 = v18;
          v22 = 0;
          *a6 = v18;
        }

        else
        {
          v22 = 0;
        }

        v56 = v123;
        goto LABEL_81;
      }

      v122 = v16;
      v38 = [v9 contextID];
      v39 = [v9 zoneID];
      v132 = 0;
      v40 = [CKKSCurrentKeyPointer tryFromDatabase:@"tlk" contextID:v38 zoneID:v39 error:&v132];
      v41 = v132;

      v42 = [v9 contextID];
      v43 = [v9 zoneID];
      v131 = v41;
      v117 = [CKKSCurrentKeyPointer tryFromDatabase:@"classA" contextID:v42 zoneID:v43 error:&v131];
      v44 = v131;

      v45 = [v9 contextID];
      v46 = [v9 zoneID];
      v130 = v44;
      v116 = [CKKSCurrentKeyPointer tryFromDatabase:@"classC" contextID:v45 zoneID:v46 error:&v130];
      v47 = v130;

      if (v47)
      {
        v48 = [v9 zoneName];
        v49 = sub_100019104(@"ckksdevice", v48);

        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v139 = v47;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Couldn't read current key pointers from database: %@; proceeding", buf, 0xCu);
        }
      }

      v118 = v11;
      v50 = [v40 currentKeyUUID];
      v110 = v40;
      if (v50)
      {
        v51 = [v40 currentKeyUUID];
        v52 = [v9 contextID];
        v53 = [v9 zoneID];
        v129 = 0;
        v54 = [CKKSKey tryFromDatabase:v51 contextID:v52 zoneID:v53 error:&v129];
        v55 = v129;
      }

      else
      {
        v54 = 0;
        v55 = 0;
      }

      v57 = [v117 currentKeyUUID];
      if (v57)
      {
        v58 = [v117 currentKeyUUID];
        v59 = [v9 contextID];
        v60 = [v9 zoneID];
        v128 = v55;
        v121 = [CKKSKey tryFromDatabase:v58 contextID:v59 zoneID:v60 error:&v128];
        v61 = v128;

        v55 = v61;
      }

      else
      {
        v121 = 0;
      }

      v62 = [v116 currentKeyUUID];
      if (v62)
      {
        v63 = [v116 currentKeyUUID];
        v64 = [v9 contextID];
        v65 = [v9 zoneID];
        v127 = v55;
        v119 = [CKKSKey tryFromDatabase:v63 contextID:v64 zoneID:v65 error:&v127];
        v66 = v127;

        v55 = v66;
      }

      else
      {
        v119 = 0;
      }

      if (v55)
      {
        v67 = [v9 zoneName];
        v68 = sub_100019104(@"ckksdevice", v67);

        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v139 = v55;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "Couldn't read keys from database: %@; proceeding", buf, 0xCu);
        }
      }

      v126 = 0;
      v69 = [v54 ensureKeyLoadedForContextID:v12 cache:0 error:&v126];
      v70 = v126;
      if (v70)
      {
        v71 = [v118 isLockedError:v70];
        v72 = [v9 zoneName];
        v73 = sub_100019104(@"ckksdevice", v72);

        v74 = os_log_type_enabled(v73, OS_LOG_TYPE_ERROR);
        if (v71)
        {
          if (v74)
          {
            *buf = 138412290;
            v139 = v70;
            _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "Device is locked; couldn't read TLK from keychain. Assuming it is present and continuing; error was %@", buf, 0xCu);
          }

          v75 = v70;
          v70 = 0;
        }

        else
        {
          if (v74)
          {
            *buf = 138412290;
            v139 = v70;
            _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "Couldn't read TLK from keychain. We do not have a current TLK. Error was %@", buf, 0xCu);
          }

          v75 = v54;
          v54 = 0;
        }
      }

      v125 = v70;
      v76 = [v121 ensureKeyLoadedForContextID:v12 cache:0 error:&v125];
      v77 = v125;

      if (v77)
      {
        v78 = [v118 isLockedError:v77];
        v79 = [v9 zoneName];
        v80 = sub_100019104(@"ckksdevice", v79);

        v81 = os_log_type_enabled(v80, OS_LOG_TYPE_ERROR);
        if (v78)
        {
          if (v81)
          {
            *buf = 138412290;
            v139 = v77;
            _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "Device is locked; couldn't read ClassA key from keychain. Assuming it is present and continuing; error was %@", buf, 0xCu);
          }

          v82 = v77;
          v77 = 0;
        }

        else
        {
          if (v81)
          {
            *buf = 138412290;
            v139 = v77;
            _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "Couldn't read ClassA key from keychain. We do not have a current ClassA key. Error was %@", buf, 0xCu);
          }

          v82 = v121;
          v121 = 0;
        }

        v83 = v119;
      }

      else
      {
        v83 = v119;
      }

      v124 = v77;
      v84 = [v83 ensureKeyLoadedForContextID:v12 cache:0 error:&v124];
      v18 = v124;

      if (v18)
      {
        v85 = [v9 zoneName];
        v86 = sub_100019104(@"ckksdevice", v85);

        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v139 = v18;
          _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "Couldn't read ClassC key from keychain. We do not have a current ClassC key. Error was %@", buf, 0xCu);
        }

        v83 = 0;
      }

      if ([OTSOSActualAdapter sosEnabled]_0())
      {
        v87 = [v10 accountCirclePeerIDInitialized];
        if ([v87 wait:500000000])
        {
          v88 = [v10 accountCirclePeerID];

          if (v88)
          {
            goto LABEL_72;
          }

          v89 = [v9 zoneName];
          v87 = sub_100019104(@"ckksdevice", v89);

          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "No SOS peer ID available", buf, 2u);
          }
        }
      }

LABEL_72:
      v90 = [v10 octagonInformationInitialized];
      if ([v90 wait:500000000])
      {
        v91 = [v10 octagonPeerID];

        if (v91)
        {
LABEL_77:
          v93 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierISO8601];
          v94 = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];
          [v93 setTimeZone:v94];

          v95 = [v118 lastUnlockTime];
          v109 = v93;
          if (v95)
          {
            v96 = v95;
            v115 = [v93 startOfDayForDate:v95];
          }

          else
          {
            v115 = 0;
          }

          v107 = [CKKSDeviceStateEntry alloc];
          v114 = [v9 contextID];
          v113 = [OTDeviceInformationActualAdapter osVersion]_0();
          v106 = [v10 octagonPeerID];
          v112 = [v10 octagonStatus];
          v111 = [v10 accountCirclePeerID];
          v108 = [v10 currentCircleStatus];
          v105 = [v108 status];
          v104 = [v9 viewKeyHierarchyState];
          v103 = [v54 uuid];
          v102 = [v121 uuid];
          [v83 uuid];
          v97 = v120 = v83;
          v98 = [v9 zoneID];
          v99 = [v123 encodedCKRecord];
          LODWORD(v101) = v105;
          v16 = v122;
          v22 = [(CKKSDeviceStateEntry *)v107 initForDevice:v122 contextID:v114 osVersion:v113 lastUnlockTime:v115 octagonPeerID:v106 octagonStatus:v112 circlePeerID:v111 circleStatus:v101 keyState:v104 currentTLKUUID:v103 currentClassAUUID:v102 currentClassCUUID:v97 zoneID:v98 encodedCKRecord:v99];

          v56 = v123;
          v11 = v118;
LABEL_81:

LABEL_82:
          goto LABEL_83;
        }

        v92 = [v9 zoneName];
        v90 = sub_100019104(@"ckksdevice", v92);

        if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "No octagon peer ID available", buf, 2u);
        }
      }

      goto LABEL_77;
    }
  }

  v23 = [v9 zoneName];
  v24 = sub_100019104(@"ckksdevice", v23);

  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = [v10 currentCKAccountInfo];
    v26 = @"available";
    if (v13 == 3)
    {
      v26 = @"no account";
    }

    if (!v13)
    {
      v26 = @"unknown";
    }

    v27 = v26;
    *buf = 138412546;
    v139 = v25;
    v140 = 2112;
    v141 = v27;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "No iCloud account active: %@ cdp capable account:%@", buf, 0x16u);
  }

  v136 = NSLocalizedDescriptionKey;
  v28 = [v10 currentCKAccountInfo];
  v29 = [NSString stringWithFormat:@"No active CDP Capable iCloud account: %@", v28];
  v137 = v29;
  v30 = [NSDictionary dictionaryWithObjects:&v137 forKeys:&v136 count:1];
  v18 = [NSError errorWithDomain:@"securityd" code:-67671 userInfo:v30];

  if (a6)
  {
    v31 = v18;
    v22 = 0;
    *a6 = v18;
  }

  else
  {
    v22 = 0;
  }

LABEL_83:

  return v22;
}

+ (id)fromDatabaseRow:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"octagonstatus"];
  v5 = [v4 asString];

  if (v5)
  {
    v43 = [[OTCliqueStatusWrapper alloc] initWithStatus:OTCliqueStatusFromString()];
  }

  else
  {
    v43 = 0;
  }

  v26 = [CKKSDeviceStateEntry alloc];
  v39 = [v3 objectForKeyedSubscript:@"device"];
  v41 = [v39 asString];
  v38 = [v3 objectForKeyedSubscript:@"contextID"];
  v42 = [v38 asString];
  v37 = [v3 objectForKeyedSubscript:@"osversion"];
  v36 = [v37 asString];
  v35 = [v3 objectForKeyedSubscript:@"lastunlock"];
  v34 = [v35 asISO8601Date];
  v33 = [v3 objectForKeyedSubscript:@"octagonpeerid"];
  v32 = [v33 asString];
  v31 = [v3 objectForKeyedSubscript:@"peerid"];
  v6 = [v31 asString];
  v30 = [v3 objectForKeyedSubscript:@"circlestatus"];
  v7 = [v30 asString];
  v40 = v5;
  v29 = v7;
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = v7;
  if (CFEqual(v7, @"kSOSCCInCircle") || CFEqual(v8, @"kSOSCCInCircle"))
  {
    v24 = 0;
    goto LABEL_17;
  }

  if (!CFEqual(v8, @"kSOSCCNotInCircle"))
  {
    if (CFEqual(v8, @"kSOSCCRequestPending"))
    {
      v9 = 2;
      goto LABEL_16;
    }

    if (CFEqual(v8, @"kSOSCCCircleAbsent"))
    {
      v9 = 3;
      goto LABEL_16;
    }

    CFEqual(v8, @"kSOSCCError");
LABEL_15:
    v9 = -1;
    goto LABEL_16;
  }

  v9 = 1;
LABEL_16:
  v24 = v9;
LABEL_17:
  v28 = [v3 objectForKeyedSubscript:@"keystate"];
  v21 = [v28 asString];
  v25 = [v3 objectForKeyedSubscript:@"currentTLK"];
  v20 = [v25 asString];
  v23 = [v3 objectForKeyedSubscript:@"currentClassA"];
  v10 = [v23 asString];
  v22 = [v3 objectForKeyedSubscript:@"currentClassC"];
  v11 = [v22 asString];
  v12 = [CKRecordZoneID alloc];
  v13 = [v3 objectForKeyedSubscript:@"ckzone"];
  v14 = [v13 asString];
  v15 = [v12 initWithZoneName:v14 ownerName:CKCurrentUserDefaultName];
  v16 = [v3 objectForKeyedSubscript:@"ckrecord"];

  v17 = [v16 asBase64DecodedData];
  LODWORD(v19) = v24;
  v27 = [(CKKSDeviceStateEntry *)v26 initForDevice:v41 contextID:v42 osVersion:v36 lastUnlockTime:v34 octagonPeerID:v32 octagonStatus:v43 circlePeerID:v6 circleStatus:v19 keyState:v21 currentTLKUUID:v20 currentClassAUUID:v10 currentClassCUUID:v11 zoneID:v15 encodedCKRecord:v17];

  return v27;
}

+ (id)allInZone:(id)a3 error:(id *)a4
{
  v13 = @"ckzone";
  v6 = [a3 zoneName];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = +[NSNull null];
  }

  v9 = v8;

  v14 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v11 = [a1 allWhere:v10 error:a4];

  return v11;
}

+ (id)tryFromDatabaseFromCKRecordID:(id)a3 contextID:(id)a4 error:(id *)a5
{
  v8 = a4;
  v25[0] = @"device";
  v9 = a3;
  v10 = [a1 nameFromCKRecordID:v9];
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

  v26[0] = v13;
  v25[1] = @"contextID";
  v14 = v8;
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

  v26[1] = v17;
  v25[2] = @"ckzone";
  v18 = [v9 zoneID];

  v19 = [v18 zoneName];

  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = +[NSNull null];
  }

  v21 = v20;

  v26[2] = v21;
  v22 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
  v23 = [a1 tryFromDatabaseWhere:v22 error:a5];

  return v23;
}

+ (id)tryFromDatabase:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v28[0] = @"device";
  v13 = v10;
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = +[NSNull null];
  }

  v16 = v15;

  v29[0] = v16;
  v28[1] = @"contextID";
  v17 = v11;
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = +[NSNull null];
  }

  v20 = v19;

  v29[1] = v20;
  v28[2] = @"ckzone";
  v21 = [v12 zoneName];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = +[NSNull null];
  }

  v24 = v23;

  v29[2] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];
  v26 = [a1 tryFromDatabaseWhere:v25 error:a6];

  return v26;
}

+ (id)fromDatabase:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v28[0] = @"device";
  v13 = v10;
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = +[NSNull null];
  }

  v16 = v15;

  v29[0] = v16;
  v28[1] = @"contextID";
  v17 = v11;
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = +[NSNull null];
  }

  v20 = v19;

  v29[1] = v20;
  v28[2] = @"ckzone";
  v21 = [v12 zoneName];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = +[NSNull null];
  }

  v24 = v23;

  v29[2] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];
  v26 = [a1 fromDatabaseWhere:v25 error:a6];

  return v26;
}

+ (id)nameFromCKRecordID:(id)a3
{
  v3 = [a3 recordName];
  if ([v3 hasPrefix:@"ckid-"])
  {
    v4 = [v3 substringFromIndex:{objc_msgSend(@"ckid-", "length")}];

    v3 = v4;
  }

  return v3;
}

@end