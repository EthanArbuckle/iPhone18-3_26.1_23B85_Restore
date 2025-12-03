@interface CKKSDeviceStateEntry
+ (BOOL)intransactionRecordChanged:(id)changed contextID:(id)d resync:(BOOL)resync error:(id *)error;
+ (BOOL)intransactionRecordDeleted:(id)deleted contextID:(id)d resync:(BOOL)resync error:(id *)error;
+ (id)allInZone:(id)zone error:(id *)error;
+ (id)fromDatabase:(id)database contextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)fromDatabaseRow:(id)row;
+ (id)intransactionCreateDeviceStateForView:(id)view accountTracker:(id)tracker lockStateTracker:(id)stateTracker error:(id *)error;
+ (id)nameFromCKRecordID:(id)d;
+ (id)tryFromDatabase:(id)database contextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)tryFromDatabaseFromCKRecordID:(id)d contextID:(id)iD error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesCKRecord:(id)record;
- (id)CKRecordName;
- (id)cktypeToOTCliqueStatusWrapper:(id)wrapper;
- (id)cliqueStatusToCKType:(id)type;
- (id)description;
- (id)initForDevice:(id)device contextID:(id)d osVersion:(id)version lastUnlockTime:(id)time octagonPeerID:(id)iD octagonStatus:(id)status circlePeerID:(id)peerID circleStatus:(int)self0 keyState:(id)self1 currentTLKUUID:(id)self2 currentClassAUUID:(id)self3 currentClassCUUID:(id)self4 zoneID:(id)self5 encodedCKRecord:(id)self6;
- (id)sqlValues;
- (id)updateCKRecord:(id)record zoneID:(id)d;
- (id)whereClauseToFindSelf;
- (int)cktypeToSOSCCStatus:(id)status;
- (void)setFromCKRecord:(id)record;
@end

@implementation CKKSDeviceStateEntry

- (id)sqlValues
{
  v3 = objc_alloc_init(NSISO8601DateFormatter);
  v57[0] = @"contextID";
  contextID = [(CKKSCKRecordHolder *)self contextID];
  v58[0] = contextID;
  v57[1] = @"device";
  device = [(CKKSDeviceStateEntry *)self device];
  v58[1] = device;
  v57[2] = @"ckzone";
  zoneID = [(CKKSCKRecordHolder *)self zoneID];
  zoneName = [zoneID zoneName];

  if (zoneName)
  {
    v6 = zoneName;
  }

  else
  {
    v6 = +[NSNull null];
  }

  v7 = v6;

  v58[2] = v7;
  v57[3] = @"osversion";
  osVersion = [(CKKSDeviceStateEntry *)self osVersion];
  v9 = osVersion;
  if (osVersion)
  {
    v10 = osVersion;
  }

  else
  {
    v10 = +[NSNull null];
  }

  v11 = v10;

  v58[3] = v11;
  v57[4] = @"lastunlock";
  lastUnlockTime = [(CKKSDeviceStateEntry *)self lastUnlockTime];
  if (!lastUnlockTime || (v13 = lastUnlockTime, -[CKKSDeviceStateEntry lastUnlockTime](self, "lastUnlockTime"), v14 = objc_claimAutoreleasedReturnValue(), [v3 stringFromDate:v14], v15 = objc_claimAutoreleasedReturnValue(), v14, v13, !v15))
  {
    v15 = +[NSNull null];
  }

  v58[4] = v15;
  v57[5] = @"peerid";
  circlePeerID = [(CKKSDeviceStateEntry *)self circlePeerID];
  v17 = circlePeerID;
  if (circlePeerID)
  {
    v18 = circlePeerID;
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
  octagonPeerID = [(CKKSDeviceStateEntry *)self octagonPeerID];
  v23 = octagonPeerID;
  v52 = v19;
  if (octagonPeerID)
  {
    v24 = octagonPeerID;
  }

  else
  {
    v24 = +[NSNull null];
  }

  v25 = v24;

  v58[7] = v25;
  v57[8] = @"octagonstatus";
  octagonStatus = [(CKKSDeviceStateEntry *)self octagonStatus];
  if (!octagonStatus)
  {
    goto LABEL_21;
  }

  v27 = octagonStatus;
  octagonStatus2 = [(CKKSDeviceStateEntry *)self octagonStatus];
  [octagonStatus2 status];
  v29 = OTCliqueStatusToString();

  if (!v29)
  {
LABEL_21:
    v29 = +[NSNull null];
  }

  v58[8] = v29;
  v57[9] = @"keystate";
  keyState = [(CKKSDeviceStateEntry *)self keyState];
  v31 = keyState;
  v56 = v3;
  if (keyState)
  {
    v32 = keyState;
  }

  else
  {
    v32 = +[NSNull null];
  }

  v33 = v32;

  v58[9] = v33;
  v57[10] = @"currentTLK";
  currentTLKUUID = [(CKKSDeviceStateEntry *)self currentTLKUUID];
  v35 = currentTLKUUID;
  v53 = v7;
  if (currentTLKUUID)
  {
    v36 = currentTLKUUID;
  }

  else
  {
    v36 = +[NSNull null];
  }

  v37 = v36;

  v58[10] = v37;
  v57[11] = @"currentClassA";
  currentClassAUUID = [(CKKSDeviceStateEntry *)self currentClassAUUID];
  v39 = currentClassAUUID;
  if (currentClassAUUID)
  {
    v40 = currentClassAUUID;
  }

  else
  {
    v40 = +[NSNull null];
  }

  v41 = v40;

  v58[11] = v41;
  v57[12] = @"currentClassC";
  currentClassCUUID = [(CKKSDeviceStateEntry *)self currentClassCUUID];
  v43 = currentClassCUUID;
  if (currentClassCUUID)
  {
    v44 = currentClassCUUID;
  }

  else
  {
    v44 = +[NSNull null];
  }

  v45 = v44;

  v58[12] = v45;
  v57[13] = @"ckrecord";
  encodedCKRecord = [(CKKSCKRecordHolder *)self encodedCKRecord];
  v47 = [encodedCKRecord base64EncodedStringWithOptions:0];

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
  contextID = [(CKKSCKRecordHolder *)self contextID];
  v10[0] = contextID;
  v9[1] = @"device";
  device = [(CKKSDeviceStateEntry *)self device];
  v10[1] = device;
  v9[2] = @"ckzone";
  zoneID = [(CKKSCKRecordHolder *)self zoneID];
  zoneName = [zoneID zoneName];
  v10[2] = zoneName;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

- (void)setFromCKRecord:(id)record
{
  recordCopy = record;
  recordType = [recordCopy recordType];
  v5 = [recordType isEqualToString:@"devicestate"];

  if ((v5 & 1) == 0)
  {
    recordType2 = [recordCopy recordType];
    v27 = [NSString stringWithFormat:@"CKRecordType (%@) was not %@", recordType2, @"devicestate"];
    v28 = [NSException exceptionWithName:@"WrongCKRecordTypeException" reason:v27 userInfo:0];
    v29 = v28;

    objc_exception_throw(v28);
  }

  [(CKKSCKRecordHolder *)self setStoredCKRecord:recordCopy];
  v6 = [recordCopy objectForKeyedSubscript:@"osver"];
  [(CKKSDeviceStateEntry *)self setOsVersion:v6];

  v7 = [recordCopy objectForKeyedSubscript:@"lastunlock"];
  [(CKKSDeviceStateEntry *)self setLastUnlockTime:v7];

  recordID = [recordCopy recordID];
  v9 = [CKKSDeviceStateEntry nameFromCKRecordID:recordID];
  [(CKKSDeviceStateEntry *)self setDevice:v9];

  v10 = [recordCopy objectForKeyedSubscript:@"octagonpeerid"];
  [(CKKSDeviceStateEntry *)self setOctagonPeerID:v10];

  v11 = [recordCopy objectForKeyedSubscript:@"octagonstatus"];
  v12 = [(CKKSDeviceStateEntry *)self cktypeToOTCliqueStatusWrapper:v11];
  [(CKKSDeviceStateEntry *)self setOctagonStatus:v12];

  v13 = [recordCopy objectForKeyedSubscript:@"peerid"];
  [(CKKSDeviceStateEntry *)self setCirclePeerID:v13];

  v14 = [recordCopy objectForKeyedSubscript:@"circle"];
  [(CKKSDeviceStateEntry *)self setCircleStatus:[(CKKSDeviceStateEntry *)self cktypeToSOSCCStatus:v14]];

  v15 = [recordCopy objectForKeyedSubscript:@"keystate"];
  v16 = sub_10011007C(v15);
  [(CKKSDeviceStateEntry *)self setKeyState:v16];

  v17 = [recordCopy objectForKeyedSubscript:@"currentTLK"];
  recordID2 = [v17 recordID];
  recordName = [recordID2 recordName];
  [(CKKSDeviceStateEntry *)self setCurrentTLKUUID:recordName];

  v20 = [recordCopy objectForKeyedSubscript:@"currentClassA"];
  recordID3 = [v20 recordID];
  recordName2 = [recordID3 recordName];
  [(CKKSDeviceStateEntry *)self setCurrentClassAUUID:recordName2];

  v23 = [recordCopy objectForKeyedSubscript:@"currentClassC"];
  recordID4 = [v23 recordID];
  recordName3 = [recordID4 recordName];
  [(CKKSDeviceStateEntry *)self setCurrentClassCUUID:recordName3];
}

- (BOOL)matchesCKRecord:(id)record
{
  recordCopy = record;
  recordType = [recordCopy recordType];
  v6 = [recordType isEqualToString:@"devicestate"];

  if (!v6)
  {
    goto LABEL_38;
  }

  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  cKRecordName = [(CKKSDeviceStateEntry *)self CKRecordName];
  v10 = [recordName isEqualToString:cKRecordName];

  if (!v10)
  {
    goto LABEL_38;
  }

  lastUnlockTime = [(CKKSDeviceStateEntry *)self lastUnlockTime];
  if (lastUnlockTime || ([recordCopy objectForKeyedSubscript:@"lastunlock"], (recordName = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = [recordCopy objectForKeyedSubscript:@"lastunlock"];
    lastUnlockTime2 = [(CKKSDeviceStateEntry *)self lastUnlockTime];
    v14 = [v12 isEqual:lastUnlockTime2];

    if (lastUnlockTime)
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

  osVersion = [(CKKSDeviceStateEntry *)self osVersion];
  if (osVersion || ([recordCopy objectForKeyedSubscript:@"osver"], (recordName = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v16 = [recordCopy objectForKeyedSubscript:@"osver"];
    osVersion2 = [(CKKSDeviceStateEntry *)self osVersion];
    v18 = [v16 isEqualToString:osVersion2];

    if (osVersion)
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

  circlePeerID = [(CKKSDeviceStateEntry *)self circlePeerID];
  if (circlePeerID || ([recordCopy objectForKeyedSubscript:@"peerid"], (recordName = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v20 = [recordCopy objectForKeyedSubscript:@"peerid"];
    circlePeerID2 = [(CKKSDeviceStateEntry *)self circlePeerID];
    v22 = [v20 isEqualToString:circlePeerID2];

    if (circlePeerID)
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

  octagonPeerID = [(CKKSDeviceStateEntry *)self octagonPeerID];
  if (octagonPeerID || ([recordCopy objectForKeyedSubscript:@"octagonpeerid"], (recordName = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v24 = [recordCopy objectForKeyedSubscript:@"octagonpeerid"];
    octagonPeerID2 = [(CKKSDeviceStateEntry *)self octagonPeerID];
    v26 = [v24 isEqualToString:octagonPeerID2];

    if (octagonPeerID)
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

  octagonStatus = [(CKKSDeviceStateEntry *)self octagonStatus];
  if (!octagonStatus)
  {
    recordName = [recordCopy objectForKeyedSubscript:@"octagonstatus"];
    if (!recordName)
    {
      goto LABEL_33;
    }
  }

  octagonStatus2 = [(CKKSDeviceStateEntry *)self octagonStatus];
  v29 = [recordCopy objectForKeyedSubscript:@"octagonstatus"];
  v30 = [(CKKSDeviceStateEntry *)self cktypeToOTCliqueStatusWrapper:v29];
  v31 = [octagonStatus2 isEqual:v30];

  if (!octagonStatus)
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
  v32 = [recordCopy objectForKeyedSubscript:@"circle"];
  v33 = [(CKKSDeviceStateEntry *)self cktypeToSOSCCStatus:v32];
  circleStatus = [(CKKSDeviceStateEntry *)self circleStatus];

  if (v33 != circleStatus)
  {
    goto LABEL_38;
  }

  v35 = [recordCopy objectForKeyedSubscript:@"keystate"];
  v36 = sub_10011007C(v35);
  keyState = [(CKKSDeviceStateEntry *)self keyState];
  v38 = [v36 isEqualToString:keyState];

  if (!v38)
  {
    goto LABEL_38;
  }

  v39 = [recordCopy objectForKeyedSubscript:@"currentTLK"];
  recordID2 = [v39 recordID];
  recordName2 = [recordID2 recordName];
  currentTLKUUID = [(CKKSDeviceStateEntry *)self currentTLKUUID];
  v43 = [recordName2 isEqualToString:currentTLKUUID];

  if (!v43)
  {
    goto LABEL_38;
  }

  v44 = [recordCopy objectForKeyedSubscript:@"currentClassA"];
  recordID3 = [v44 recordID];
  recordName3 = [recordID3 recordName];
  currentTLKUUID2 = [(CKKSDeviceStateEntry *)self currentTLKUUID];
  v48 = [recordName3 isEqualToString:currentTLKUUID2];

  if (!v48)
  {
    goto LABEL_38;
  }

  v49 = [recordCopy objectForKeyedSubscript:@"currentClassC"];
  recordID4 = [v49 recordID];
  recordName4 = [recordID4 recordName];
  currentTLKUUID3 = [(CKKSDeviceStateEntry *)self currentTLKUUID];
  v53 = [recordName4 isEqualToString:currentTLKUUID3];

LABEL_39:
  return v53;
}

- (id)updateCKRecord:(id)record zoneID:(id)d
{
  recordCopy = record;
  dCopy = d;
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  cKRecordName = [(CKKSDeviceStateEntry *)self CKRecordName];
  v11 = [recordName isEqualToString:cKRecordName];

  if ((v11 & 1) == 0)
  {
    recordID2 = [recordCopy recordID];
    recordName2 = [recordID2 recordName];
    cKRecordName2 = [(CKKSDeviceStateEntry *)self CKRecordName];
    v53 = [NSString stringWithFormat:@"CKRecord name (%@) was not %@", recordName2, cKRecordName2];
    v54 = [NSException exceptionWithName:@"WrongCKRecordNameException" reason:v53 userInfo:0];
    v55 = v54;

    goto LABEL_23;
  }

  recordType = [recordCopy recordType];
  v13 = [recordType isEqualToString:@"devicestate"];

  if ((v13 & 1) == 0)
  {
    recordID2 = [recordCopy recordType];
    v56 = [NSString stringWithFormat:@"CKRecordType (%@) was not %@", recordID2, @"devicestate"];
    v54 = [NSException exceptionWithName:@"WrongCKRecordTypeException" reason:v56 userInfo:0];
    v57 = v54;

LABEL_23:
    objc_exception_throw(v54);
  }

  osVersion = [(CKKSDeviceStateEntry *)self osVersion];
  [recordCopy setObject:osVersion forKeyedSubscript:@"osver"];

  lastUnlockTime = [(CKKSDeviceStateEntry *)self lastUnlockTime];
  [recordCopy setObject:lastUnlockTime forKeyedSubscript:@"lastunlock"];

  octagonPeerID = [(CKKSDeviceStateEntry *)self octagonPeerID];
  [recordCopy setObject:octagonPeerID forKeyedSubscript:@"octagonpeerid"];

  octagonStatus = [(CKKSDeviceStateEntry *)self octagonStatus];
  v18 = [(CKKSDeviceStateEntry *)self cliqueStatusToCKType:octagonStatus];
  [recordCopy setObject:v18 forKeyedSubscript:@"octagonstatus"];

  v19 = [(CKKSDeviceStateEntry *)self sosCCStatusToCKType:[(CKKSDeviceStateEntry *)self circleStatus]];
  [recordCopy setObject:v19 forKeyedSubscript:@"circle"];

  keyState = [(CKKSDeviceStateEntry *)self keyState];
  v21 = sub_10010FC60();
  v22 = v21;
  if (!keyState)
  {
    v24 = [v21 objectForKeyedSubscript:@"error"];
    goto LABEL_7;
  }

  v23 = [v21 objectForKeyedSubscript:keyState];

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

  [recordCopy setObject:v25 forKeyedSubscript:@"keystate"];
  circlePeerID = [(CKKSDeviceStateEntry *)self circlePeerID];
  [recordCopy setObject:circlePeerID forKeyedSubscript:@"peerid"];

  currentTLKUUID = [(CKKSDeviceStateEntry *)self currentTLKUUID];
  if (currentTLKUUID)
  {
    v29 = [CKReference alloc];
    v30 = [CKRecordID alloc];
    currentTLKUUID2 = [(CKKSDeviceStateEntry *)self currentTLKUUID];
    zoneID = [(CKKSCKRecordHolder *)self zoneID];
    v33 = [v30 initWithRecordName:currentTLKUUID2 zoneID:zoneID];
    v34 = [v29 initWithRecordID:v33 action:0];
    [recordCopy setObject:v34 forKeyedSubscript:@"currentTLK"];
  }

  else
  {
    [recordCopy setObject:0 forKeyedSubscript:@"currentTLK"];
  }

  currentClassAUUID = [(CKKSDeviceStateEntry *)self currentClassAUUID];
  if (currentClassAUUID)
  {
    v36 = [CKReference alloc];
    v37 = [CKRecordID alloc];
    currentClassAUUID2 = [(CKKSDeviceStateEntry *)self currentClassAUUID];
    zoneID2 = [(CKKSCKRecordHolder *)self zoneID];
    v40 = [v37 initWithRecordName:currentClassAUUID2 zoneID:zoneID2];
    v41 = [v36 initWithRecordID:v40 action:0];
    [recordCopy setObject:v41 forKeyedSubscript:@"currentClassA"];
  }

  else
  {
    [recordCopy setObject:0 forKeyedSubscript:@"currentClassA"];
  }

  currentClassCUUID = [(CKKSDeviceStateEntry *)self currentClassCUUID];
  if (currentClassCUUID)
  {
    v43 = [CKReference alloc];
    v44 = [CKRecordID alloc];
    currentClassCUUID2 = [(CKKSDeviceStateEntry *)self currentClassCUUID];
    zoneID3 = [(CKKSCKRecordHolder *)self zoneID];
    v47 = [v44 initWithRecordName:currentClassCUUID2 zoneID:zoneID3];
    v48 = [v43 initWithRecordID:v47 action:0];
    [recordCopy setObject:v48 forKeyedSubscript:@"currentClassC"];
  }

  else
  {
    [recordCopy setObject:0 forKeyedSubscript:@"currentClassC"];
  }

  return recordCopy;
}

- (id)CKRecordName
{
  device = [(CKKSDeviceStateEntry *)self device];
  v3 = [NSString stringWithFormat:@"ckid-%@", device];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    zoneID = [(CKKSCKRecordHolder *)self zoneID];
    zoneID2 = [v5 zoneID];
    v108 = zoneID;
    v106 = [zoneID isEqual:zoneID2];
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

    device = [(CKKSDeviceStateEntry *)self device];
    HIDWORD(v105) = device == 0;
    if (device || ([v5 device], (v93 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      device2 = [(CKKSDeviceStateEntry *)self device];
      device3 = [v5 device];
      v96 = device2;
      v9 = 1;
      if (![device2 isEqual:?])
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

    contextID = [(CKKSCKRecordHolder *)self contextID];
    HIDWORD(v104[5]) = contextID == 0;
    LODWORD(v105) = v9;
    if (contextID || ([v5 contextID], (v89 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      contextID2 = [(CKKSCKRecordHolder *)self contextID];
      [v5 contextID];
      v91 = v92 = contextID2;
      if (![contextID2 isEqual:?])
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

    osVersion = [(CKKSDeviceStateEntry *)self osVersion];
    LODWORD(v104[5]) = osVersion == 0;
    v90 = osVersion;
    if (osVersion || ([v5 osVersion], (v85 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      osVersion2 = [(CKKSDeviceStateEntry *)self osVersion];
      osVersion3 = [v5 osVersion];
      v88 = osVersion2;
      if (![osVersion2 isEqual:?])
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

    lastUnlockTime = [(CKKSDeviceStateEntry *)self lastUnlockTime];
    LODWORD(v104[4]) = lastUnlockTime == 0;
    v86 = lastUnlockTime;
    if (lastUnlockTime || ([v5 lastUnlockTime], (v81 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      lastUnlockTime2 = [(CKKSDeviceStateEntry *)self lastUnlockTime];
      lastUnlockTime3 = [v5 lastUnlockTime];
      v84 = lastUnlockTime2;
      if (![lastUnlockTime2 isEqual:?])
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

    octagonPeerID = [(CKKSDeviceStateEntry *)self octagonPeerID];
    LODWORD(v104[3]) = octagonPeerID == 0;
    v82 = octagonPeerID;
    if (octagonPeerID || ([v5 octagonPeerID], (v77 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      octagonPeerID2 = [(CKKSDeviceStateEntry *)self octagonPeerID];
      octagonPeerID3 = [v5 octagonPeerID];
      v80 = octagonPeerID2;
      if (![octagonPeerID2 isEqual:?])
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

    octagonStatus = [(CKKSDeviceStateEntry *)self octagonStatus];
    LODWORD(v104[2]) = octagonStatus == 0;
    v78 = octagonStatus;
    if (octagonStatus || ([v5 octagonStatus], (v73 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      octagonStatus2 = [(CKKSDeviceStateEntry *)self octagonStatus];
      octagonStatus3 = [v5 octagonStatus];
      v76 = octagonStatus2;
      if (![octagonStatus2 isEqual:?])
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

    circlePeerID = [(CKKSDeviceStateEntry *)self circlePeerID];
    LODWORD(v104[1]) = circlePeerID == 0;
    v74 = circlePeerID;
    if (circlePeerID || ([v5 circlePeerID], (v70 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      circlePeerID2 = [(CKKSDeviceStateEntry *)self circlePeerID];
      circlePeerID3 = [v5 circlePeerID];
      v72 = circlePeerID2;
      if (![circlePeerID2 isEqual:?])
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

    circleStatus = [(CKKSDeviceStateEntry *)self circleStatus];
    if (circleStatus != [v5 circleStatus])
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

    keyState = [(CKKSDeviceStateEntry *)self keyState];
    HIDWORD(v103) = keyState == 0;
    v69 = keyState;
    if (keyState || ([v5 keyState], (v65 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      keyState2 = [(CKKSDeviceStateEntry *)self keyState];
      keyState3 = [v5 keyState];
      v68 = keyState2;
      if (![keyState2 isEqual:?])
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

    currentTLKUUID = [(CKKSDeviceStateEntry *)self currentTLKUUID];
    HIDWORD(v102) = currentTLKUUID == 0;
    v66 = currentTLKUUID;
    if (currentTLKUUID || ([v5 currentTLKUUID], (v61 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      currentTLKUUID2 = [(CKKSDeviceStateEntry *)self currentTLKUUID];
      currentTLKUUID3 = [v5 currentTLKUUID];
      v64 = currentTLKUUID2;
      if (![currentTLKUUID2 isEqual:?])
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

    currentClassAUUID = [(CKKSDeviceStateEntry *)self currentClassAUUID];
    HIDWORD(v101) = currentClassAUUID == 0;
    v62 = currentClassAUUID;
    if (currentClassAUUID || ([v5 currentClassAUUID], (v57 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      currentClassAUUID2 = [(CKKSDeviceStateEntry *)self currentClassAUUID];
      currentClassAUUID3 = [v5 currentClassAUUID];
      v60 = currentClassAUUID2;
      if (![currentClassAUUID2 isEqual:?])
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

    currentClassCUUID = [(CKKSDeviceStateEntry *)self currentClassCUUID];
    v98 = currentClassCUUID == 0;
    v58 = currentClassCUUID;
    if (currentClassCUUID || ([v5 currentClassCUUID], (v55 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      currentClassCUUID2 = [(CKKSDeviceStateEntry *)self currentClassCUUID];
      currentClassCUUID3 = [v5 currentClassCUUID];
      v52 = [currentClassCUUID2 isEqual:?];
      v18 = 1;
      v56 = currentClassCUUID2;
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
        v7 = currentClassCUUID3;
LABEL_9:
        if (v18)
        {
          v97 = equalCopy;
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
          equalCopy = v97;
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
  storedCKRecord = [(CKKSCKRecordHolder *)self storedCKRecord];
  modificationDate = [storedCKRecord modificationDate];

  contextID = [(CKKSCKRecordHolder *)self contextID];
  device = [(CKKSDeviceStateEntry *)self device];
  circlePeerID = [(CKKSDeviceStateEntry *)self circlePeerID];
  octagonPeerID = [(CKKSDeviceStateEntry *)self octagonPeerID];
  osVersion = [(CKKSDeviceStateEntry *)self osVersion];
  lastUnlockTime = [(CKKSDeviceStateEntry *)self lastUnlockTime];
  zoneID = [(CKKSCKRecordHolder *)self zoneID];
  zoneName = [zoneID zoneName];
  v6 = [(CKKSDeviceStateEntry *)self circleStatus]+ 1;
  if (v6 > 4)
  {
    v7 = @"kSOSCCError";
  }

  else
  {
    v7 = off_1003454A8[v6];
  }

  octagonStatus = [(CKKSDeviceStateEntry *)self octagonStatus];
  if (octagonStatus)
  {
    octagonStatus2 = [(CKKSDeviceStateEntry *)self octagonStatus];
    [octagonStatus2 status];
    v9 = OTCliqueStatusToString();
  }

  else
  {
    v9 = @"CliqueMissing";
  }

  keyState = [(CKKSDeviceStateEntry *)self keyState];
  currentTLKUUID = [(CKKSDeviceStateEntry *)self currentTLKUUID];
  currentClassAUUID = [(CKKSDeviceStateEntry *)self currentClassAUUID];
  currentClassCUUID = [(CKKSDeviceStateEntry *)self currentClassCUUID];
  v14 = currentClassCUUID;
  v15 = @"unknown";
  if (modificationDate)
  {
    v15 = modificationDate;
  }

  v16 = [NSString stringWithFormat:@"<CKKSDeviceStateEntry[%@](%@, %@, %@, %@, %@, %@): %@ %@ %@ %@ %@ %@ upd:%@>", contextID, device, circlePeerID, octagonPeerID, osVersion, lastUnlockTime, zoneName, v7, v9, keyState, currentTLKUUID, currentClassAUUID, currentClassCUUID, v15];

  if (octagonStatus)
  {
  }

  return v16;
}

- (id)cktypeToOTCliqueStatusWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  if (!wrapperCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = 0;
    goto LABEL_21;
  }

  unsignedIntValue = [wrapperCopy unsignedIntValue];
  v5 = unsignedIntValue;
  if (unsignedIntValue > 2)
  {
    switch(unsignedIntValue)
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

  if (!unsignedIntValue)
  {
    v6 = [OTCliqueStatusWrapper alloc];
    v7 = 0;
    goto LABEL_20;
  }

  if (unsignedIntValue == 1)
  {
    v6 = [OTCliqueStatusWrapper alloc];
    v7 = 1;
    goto LABEL_20;
  }

  if (unsignedIntValue != 2)
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

- (id)cliqueStatusToCKType:(id)type
{
  typeCopy = type;
  v4 = typeCopy;
  if (typeCopy)
  {
    if ([typeCopy status] == -1)
    {
      status = 111;
    }

    else
    {
      status = [v4 status];
    }

    v6 = [NSNumber numberWithInt:status];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int)cktypeToSOSCCStatus:(id)status
{
  statusCopy = status;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:
    v5 = -1;
    goto LABEL_8;
  }

  unsignedIntValue = [statusCopy unsignedIntValue];
  v5 = unsignedIntValue;
  if (unsignedIntValue + 1 >= 5)
  {
    if (unsignedIntValue != 111)
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

- (id)initForDevice:(id)device contextID:(id)d osVersion:(id)version lastUnlockTime:(id)time octagonPeerID:(id)iD octagonStatus:(id)status circlePeerID:(id)peerID circleStatus:(int)self0 keyState:(id)self1 currentTLKUUID:(id)self2 currentClassAUUID:(id)self3 currentClassCUUID:(id)self4 zoneID:(id)self5 encodedCKRecord:(id)self6
{
  deviceCopy = device;
  versionCopy = version;
  timeCopy = time;
  iDCopy = iD;
  statusCopy = status;
  peerIDCopy = peerID;
  stateCopy = state;
  uIDCopy = uID;
  uUIDCopy = uUID;
  cUUIDCopy = cUUID;
  v36.receiver = self;
  v36.super_class = CKKSDeviceStateEntry;
  v24 = [(CKKSCKRecordHolder *)&v36 initWithCKRecordType:@"devicestate" encodedCKRecord:record contextID:d zoneID:zoneID];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_device, device);
    objc_storeStrong(&v25->_osVersion, version);
    objc_storeStrong(&v25->_lastUnlockTime, time);
    objc_storeStrong(&v25->_octagonPeerID, iD);
    objc_storeStrong(&v25->_octagonStatus, status);
    v25->_circleStatus = circleStatus;
    objc_storeStrong(&v25->_keyState, state);
    objc_storeStrong(&v25->_circlePeerID, peerID);
    objc_storeStrong(&v25->_currentTLKUUID, uID);
    objc_storeStrong(&v25->_currentClassAUUID, uUID);
    objc_storeStrong(&v25->_currentClassCUUID, cUUID);
  }

  return v25;
}

+ (BOOL)intransactionRecordDeleted:(id)deleted contextID:(id)d resync:(BOOL)resync error:(id *)error
{
  deletedCopy = deleted;
  dCopy = d;
  zoneID = [deletedCopy zoneID];
  zoneName = [zoneID zoneName];
  v12 = sub_100019104(@"ckksdevice", zoneName);

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v24 = @"devicestate";
    v25 = 2112;
    v26 = deletedCopy;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "CloudKit notification: deleted device state record(%@): %@", buf, 0x16u);
  }

  v22 = 0;
  v13 = [CKKSDeviceStateEntry tryFromDatabaseFromCKRecordID:deletedCopy contextID:dCopy error:&v22];

  v14 = v22;
  v21 = v14;
  [(__CFString *)v13 deleteFromDatabase:&v21];
  v15 = v21;

  zoneID2 = [deletedCopy zoneID];
  zoneName2 = [zoneID2 zoneName];
  v18 = sub_100019104(@"ckksdevice", zoneName2);

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v24 = v13;
    v25 = 2112;
    v26 = deletedCopy;
    v27 = 2112;
    v28 = v15;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "CKKSDeviceStateEntry(%@) was deleted: %@ error: %@", buf, 0x20u);
  }

  if (error && v15)
  {
    v19 = v15;
    *error = v15;
  }

  return v15 == 0;
}

+ (BOOL)intransactionRecordChanged:(id)changed contextID:(id)d resync:(BOOL)resync error:(id *)error
{
  resyncCopy = resync;
  changedCopy = changed;
  dCopy = d;
  if (resyncCopy)
  {
    recordID = [(CKKSDeviceStateEntry *)changedCopy recordID];
    recordName = [recordID recordName];
    recordID2 = [(CKKSDeviceStateEntry *)changedCopy recordID];
    zoneID = [recordID2 zoneID];
    v37 = 0;
    v15 = [CKKSDeviceStateEntry tryFromDatabase:recordName contextID:dCopy zoneID:zoneID error:&v37];
    v16 = v37;

    if (v16)
    {
      recordID3 = [(CKKSDeviceStateEntry *)changedCopy recordID];
      zoneID2 = [recordID3 zoneID];
      zoneName = [zoneID2 zoneName];
      v20 = sub_100019104(@"ckksresync", zoneName);

      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v39 = v16;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "error loading cdse: %@", buf, 0xCu);
      }
    }

    if (v15)
    {
      v21 = [(CKKSDeviceStateEntry *)v15 matchesCKRecord:changedCopy];
      recordID4 = [(CKKSDeviceStateEntry *)changedCopy recordID];
      zoneID3 = [recordID4 zoneID];
      zoneName2 = [zoneID3 zoneName];
      v25 = sub_100019104(@"ckksresync", zoneName2);

      if (v21)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v39 = changedCopy;
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
        v41 = changedCopy;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "BUG: Local current device state entry doesn't match resynced CloudKit record(s): %@ %@", buf, 0x16u);
      }
    }

    else
    {
      recordID5 = [(CKKSDeviceStateEntry *)changedCopy recordID];
      zoneID4 = [recordID5 zoneID];
      zoneName3 = [zoneID4 zoneName];
      v25 = sub_100019104(@"ckksresync", zoneName3);

      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v39 = changedCopy;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "BUG: No current device state entry matching resynced CloudKit record: %@", buf, 0xCu);
      }
    }
  }

  v15 = [(CKKSCKRecordHolder *)[CKKSDeviceStateEntry alloc] initWithCKRecord:changedCopy contextID:dCopy];
  v36 = 0;
  v26 = [(CKKSSQLDatabaseObject *)v15 saveToDatabase:&v36];
  v16 = v36;
  if (v16)
  {
    v26 = 0;
  }

  if ((v26 & 1) == 0)
  {
    recordID6 = [(CKKSDeviceStateEntry *)changedCopy recordID];
    zoneID5 = [recordID6 zoneID];
    zoneName4 = [zoneID5 zoneName];
    v33 = sub_100019104(@"ckksdevice", zoneName4);

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v39 = v15;
      v40 = 2112;
      v41 = v16;
      v42 = 2112;
      v43 = changedCopy;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to save device record to database: %@: %@ %@", buf, 0x20u);
    }

    if (error)
    {
      v34 = v16;
      *error = v16;
    }
  }

LABEL_23:

  return v26;
}

+ (id)intransactionCreateDeviceStateForView:(id)view accountTracker:(id)tracker lockStateTracker:(id)stateTracker error:(id *)error
{
  viewCopy = view;
  trackerCopy = tracker;
  stateTrackerCopy = stateTracker;
  contextID = [viewCopy contextID];
  cdpCapableiCloudAccountStatus = [trackerCopy cdpCapableiCloudAccountStatus];
  if (cdpCapableiCloudAccountStatus == 1)
  {
    currentCKAccountInfo = [trackerCopy currentCKAccountInfo];
    accountStatus = [currentCKAccountInfo accountStatus];

    if (accountStatus == 1)
    {
      ckdeviceID = [trackerCopy ckdeviceID];
      if (!ckdeviceID)
      {
        zoneName = [viewCopy zoneName];
        v33 = sub_100019104(@"ckksdevice", zoneName);

        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "No CK device ID available; cannot make device state entry", buf, 2u);
        }

        v134 = NSLocalizedDescriptionKey;
        currentCKAccountInfo2 = [trackerCopy currentCKAccountInfo];
        v35 = [NSString stringWithFormat:@"No CK device ID: %@", currentCKAccountInfo2];
        v135 = v35;
        v36 = [NSDictionary dictionaryWithObjects:&v135 forKeys:&v134 count:1];
        v18 = [NSError errorWithDomain:@"CKKSErrorDomain" code:10 userInfo:v36];

        if (error)
        {
          v37 = v18;
          v22 = 0;
          *error = v18;
        }

        else
        {
          v22 = 0;
        }

        ckdeviceID = 0;
        goto LABEL_82;
      }

      zoneID = [viewCopy zoneID];
      v133 = 0;
      v123 = [CKKSDeviceStateEntry tryFromDatabase:ckdeviceID contextID:contextID zoneID:zoneID error:&v133];
      v18 = v133;

      if (v18)
      {
        zoneName2 = [viewCopy zoneName];
        v20 = sub_100019104(@"ckksdevice", zoneName2);

        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v139 = v18;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Couldn't read old CKKSDeviceStateEntry from database: %@", buf, 0xCu);
        }

        if (error)
        {
          v21 = v18;
          v22 = 0;
          *error = v18;
        }

        else
        {
          v22 = 0;
        }

        v56 = v123;
        goto LABEL_81;
      }

      v122 = ckdeviceID;
      contextID2 = [viewCopy contextID];
      zoneID2 = [viewCopy zoneID];
      v132 = 0;
      v40 = [CKKSCurrentKeyPointer tryFromDatabase:@"tlk" contextID:contextID2 zoneID:zoneID2 error:&v132];
      v41 = v132;

      contextID3 = [viewCopy contextID];
      zoneID3 = [viewCopy zoneID];
      v131 = v41;
      v117 = [CKKSCurrentKeyPointer tryFromDatabase:@"classA" contextID:contextID3 zoneID:zoneID3 error:&v131];
      v44 = v131;

      contextID4 = [viewCopy contextID];
      zoneID4 = [viewCopy zoneID];
      v130 = v44;
      v116 = [CKKSCurrentKeyPointer tryFromDatabase:@"classC" contextID:contextID4 zoneID:zoneID4 error:&v130];
      v47 = v130;

      if (v47)
      {
        zoneName3 = [viewCopy zoneName];
        v49 = sub_100019104(@"ckksdevice", zoneName3);

        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v139 = v47;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Couldn't read current key pointers from database: %@; proceeding", buf, 0xCu);
        }
      }

      v118 = stateTrackerCopy;
      currentKeyUUID = [v40 currentKeyUUID];
      v110 = v40;
      if (currentKeyUUID)
      {
        currentKeyUUID2 = [v40 currentKeyUUID];
        contextID5 = [viewCopy contextID];
        zoneID5 = [viewCopy zoneID];
        v129 = 0;
        v54 = [CKKSKey tryFromDatabase:currentKeyUUID2 contextID:contextID5 zoneID:zoneID5 error:&v129];
        v55 = v129;
      }

      else
      {
        v54 = 0;
        v55 = 0;
      }

      currentKeyUUID3 = [v117 currentKeyUUID];
      if (currentKeyUUID3)
      {
        currentKeyUUID4 = [v117 currentKeyUUID];
        contextID6 = [viewCopy contextID];
        zoneID6 = [viewCopy zoneID];
        v128 = v55;
        v121 = [CKKSKey tryFromDatabase:currentKeyUUID4 contextID:contextID6 zoneID:zoneID6 error:&v128];
        v61 = v128;

        v55 = v61;
      }

      else
      {
        v121 = 0;
      }

      currentKeyUUID5 = [v116 currentKeyUUID];
      if (currentKeyUUID5)
      {
        currentKeyUUID6 = [v116 currentKeyUUID];
        contextID7 = [viewCopy contextID];
        zoneID7 = [viewCopy zoneID];
        v127 = v55;
        v119 = [CKKSKey tryFromDatabase:currentKeyUUID6 contextID:contextID7 zoneID:zoneID7 error:&v127];
        v66 = v127;

        v55 = v66;
      }

      else
      {
        v119 = 0;
      }

      if (v55)
      {
        zoneName4 = [viewCopy zoneName];
        v68 = sub_100019104(@"ckksdevice", zoneName4);

        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v139 = v55;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "Couldn't read keys from database: %@; proceeding", buf, 0xCu);
        }
      }

      v126 = 0;
      v69 = [v54 ensureKeyLoadedForContextID:contextID cache:0 error:&v126];
      v70 = v126;
      if (v70)
      {
        v71 = [v118 isLockedError:v70];
        zoneName5 = [viewCopy zoneName];
        v73 = sub_100019104(@"ckksdevice", zoneName5);

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
      v76 = [v121 ensureKeyLoadedForContextID:contextID cache:0 error:&v125];
      v77 = v125;

      if (v77)
      {
        v78 = [v118 isLockedError:v77];
        zoneName6 = [viewCopy zoneName];
        v80 = sub_100019104(@"ckksdevice", zoneName6);

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
      v84 = [v83 ensureKeyLoadedForContextID:contextID cache:0 error:&v124];
      v18 = v124;

      if (v18)
      {
        zoneName7 = [viewCopy zoneName];
        v86 = sub_100019104(@"ckksdevice", zoneName7);

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
        accountCirclePeerIDInitialized = [trackerCopy accountCirclePeerIDInitialized];
        if ([accountCirclePeerIDInitialized wait:500000000])
        {
          accountCirclePeerID = [trackerCopy accountCirclePeerID];

          if (accountCirclePeerID)
          {
            goto LABEL_72;
          }

          zoneName8 = [viewCopy zoneName];
          accountCirclePeerIDInitialized = sub_100019104(@"ckksdevice", zoneName8);

          if (os_log_type_enabled(accountCirclePeerIDInitialized, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, accountCirclePeerIDInitialized, OS_LOG_TYPE_ERROR, "No SOS peer ID available", buf, 2u);
          }
        }
      }

LABEL_72:
      octagonInformationInitialized = [trackerCopy octagonInformationInitialized];
      if ([octagonInformationInitialized wait:500000000])
      {
        octagonPeerID = [trackerCopy octagonPeerID];

        if (octagonPeerID)
        {
LABEL_77:
          v93 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierISO8601];
          v94 = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];
          [v93 setTimeZone:v94];

          lastUnlockTime = [v118 lastUnlockTime];
          v109 = v93;
          if (lastUnlockTime)
          {
            v96 = lastUnlockTime;
            v115 = [v93 startOfDayForDate:lastUnlockTime];
          }

          else
          {
            v115 = 0;
          }

          v107 = [CKKSDeviceStateEntry alloc];
          contextID8 = [viewCopy contextID];
          v113 = [OTDeviceInformationActualAdapter osVersion]_0();
          octagonPeerID2 = [trackerCopy octagonPeerID];
          octagonStatus = [trackerCopy octagonStatus];
          accountCirclePeerID2 = [trackerCopy accountCirclePeerID];
          currentCircleStatus = [trackerCopy currentCircleStatus];
          status = [currentCircleStatus status];
          viewKeyHierarchyState = [viewCopy viewKeyHierarchyState];
          uuid = [v54 uuid];
          uuid2 = [v121 uuid];
          [v83 uuid];
          v97 = v120 = v83;
          zoneID8 = [viewCopy zoneID];
          encodedCKRecord = [v123 encodedCKRecord];
          LODWORD(v101) = status;
          ckdeviceID = v122;
          v22 = [(CKKSDeviceStateEntry *)v107 initForDevice:v122 contextID:contextID8 osVersion:v113 lastUnlockTime:v115 octagonPeerID:octagonPeerID2 octagonStatus:octagonStatus circlePeerID:accountCirclePeerID2 circleStatus:v101 keyState:viewKeyHierarchyState currentTLKUUID:uuid currentClassAUUID:uuid2 currentClassCUUID:v97 zoneID:zoneID8 encodedCKRecord:encodedCKRecord];

          v56 = v123;
          stateTrackerCopy = v118;
LABEL_81:

LABEL_82:
          goto LABEL_83;
        }

        zoneName9 = [viewCopy zoneName];
        octagonInformationInitialized = sub_100019104(@"ckksdevice", zoneName9);

        if (os_log_type_enabled(octagonInformationInitialized, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, octagonInformationInitialized, OS_LOG_TYPE_ERROR, "No octagon peer ID available", buf, 2u);
        }
      }

      goto LABEL_77;
    }
  }

  zoneName10 = [viewCopy zoneName];
  v24 = sub_100019104(@"ckksdevice", zoneName10);

  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    currentCKAccountInfo3 = [trackerCopy currentCKAccountInfo];
    v26 = @"available";
    if (cdpCapableiCloudAccountStatus == 3)
    {
      v26 = @"no account";
    }

    if (!cdpCapableiCloudAccountStatus)
    {
      v26 = @"unknown";
    }

    v27 = v26;
    *buf = 138412546;
    v139 = currentCKAccountInfo3;
    v140 = 2112;
    v141 = v27;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "No iCloud account active: %@ cdp capable account:%@", buf, 0x16u);
  }

  v136 = NSLocalizedDescriptionKey;
  currentCKAccountInfo4 = [trackerCopy currentCKAccountInfo];
  v29 = [NSString stringWithFormat:@"No active CDP Capable iCloud account: %@", currentCKAccountInfo4];
  v137 = v29;
  v30 = [NSDictionary dictionaryWithObjects:&v137 forKeys:&v136 count:1];
  v18 = [NSError errorWithDomain:@"securityd" code:-67671 userInfo:v30];

  if (error)
  {
    v31 = v18;
    v22 = 0;
    *error = v18;
  }

  else
  {
    v22 = 0;
  }

LABEL_83:

  return v22;
}

+ (id)fromDatabaseRow:(id)row
{
  rowCopy = row;
  v4 = [rowCopy objectForKeyedSubscript:@"octagonstatus"];
  asString = [v4 asString];

  if (asString)
  {
    v43 = [[OTCliqueStatusWrapper alloc] initWithStatus:OTCliqueStatusFromString()];
  }

  else
  {
    v43 = 0;
  }

  v26 = [CKKSDeviceStateEntry alloc];
  v39 = [rowCopy objectForKeyedSubscript:@"device"];
  asString2 = [v39 asString];
  v38 = [rowCopy objectForKeyedSubscript:@"contextID"];
  asString3 = [v38 asString];
  v37 = [rowCopy objectForKeyedSubscript:@"osversion"];
  asString4 = [v37 asString];
  v35 = [rowCopy objectForKeyedSubscript:@"lastunlock"];
  asISO8601Date = [v35 asISO8601Date];
  v33 = [rowCopy objectForKeyedSubscript:@"octagonpeerid"];
  asString5 = [v33 asString];
  v31 = [rowCopy objectForKeyedSubscript:@"peerid"];
  asString6 = [v31 asString];
  v30 = [rowCopy objectForKeyedSubscript:@"circlestatus"];
  asString7 = [v30 asString];
  v40 = asString;
  v29 = asString7;
  if (!asString7)
  {
    goto LABEL_15;
  }

  v8 = asString7;
  if (CFEqual(asString7, @"kSOSCCInCircle") || CFEqual(v8, @"kSOSCCInCircle"))
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
  v28 = [rowCopy objectForKeyedSubscript:@"keystate"];
  asString8 = [v28 asString];
  v25 = [rowCopy objectForKeyedSubscript:@"currentTLK"];
  asString9 = [v25 asString];
  v23 = [rowCopy objectForKeyedSubscript:@"currentClassA"];
  asString10 = [v23 asString];
  v22 = [rowCopy objectForKeyedSubscript:@"currentClassC"];
  asString11 = [v22 asString];
  v12 = [CKRecordZoneID alloc];
  v13 = [rowCopy objectForKeyedSubscript:@"ckzone"];
  asString12 = [v13 asString];
  v15 = [v12 initWithZoneName:asString12 ownerName:CKCurrentUserDefaultName];
  v16 = [rowCopy objectForKeyedSubscript:@"ckrecord"];

  asBase64DecodedData = [v16 asBase64DecodedData];
  LODWORD(v19) = v24;
  v27 = [(CKKSDeviceStateEntry *)v26 initForDevice:asString2 contextID:asString3 osVersion:asString4 lastUnlockTime:asISO8601Date octagonPeerID:asString5 octagonStatus:v43 circlePeerID:asString6 circleStatus:v19 keyState:asString8 currentTLKUUID:asString9 currentClassAUUID:asString10 currentClassCUUID:asString11 zoneID:v15 encodedCKRecord:asBase64DecodedData];

  return v27;
}

+ (id)allInZone:(id)zone error:(id *)error
{
  v13 = @"ckzone";
  zoneName = [zone zoneName];
  v7 = zoneName;
  if (zoneName)
  {
    v8 = zoneName;
  }

  else
  {
    v8 = +[NSNull null];
  }

  v9 = v8;

  v14 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v11 = [self allWhere:v10 error:error];

  return v11;
}

+ (id)tryFromDatabaseFromCKRecordID:(id)d contextID:(id)iD error:(id *)error
{
  iDCopy = iD;
  v25[0] = @"device";
  dCopy = d;
  v10 = [self nameFromCKRecordID:dCopy];
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
  v14 = iDCopy;
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
  zoneID = [dCopy zoneID];

  zoneName = [zoneID zoneName];

  if (zoneName)
  {
    v20 = zoneName;
  }

  else
  {
    v20 = +[NSNull null];
  }

  v21 = v20;

  v26[2] = v21;
  v22 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
  v23 = [self tryFromDatabaseWhere:v22 error:error];

  return v23;
}

+ (id)tryFromDatabase:(id)database contextID:(id)d zoneID:(id)iD error:(id *)error
{
  databaseCopy = database;
  dCopy = d;
  iDCopy = iD;
  v28[0] = @"device";
  v13 = databaseCopy;
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
  v17 = dCopy;
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
  zoneName = [iDCopy zoneName];
  v22 = zoneName;
  if (zoneName)
  {
    v23 = zoneName;
  }

  else
  {
    v23 = +[NSNull null];
  }

  v24 = v23;

  v29[2] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];
  v26 = [self tryFromDatabaseWhere:v25 error:error];

  return v26;
}

+ (id)fromDatabase:(id)database contextID:(id)d zoneID:(id)iD error:(id *)error
{
  databaseCopy = database;
  dCopy = d;
  iDCopy = iD;
  v28[0] = @"device";
  v13 = databaseCopy;
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
  v17 = dCopy;
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
  zoneName = [iDCopy zoneName];
  v22 = zoneName;
  if (zoneName)
  {
    v23 = zoneName;
  }

  else
  {
    v23 = +[NSNull null];
  }

  v24 = v23;

  v29[2] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];
  v26 = [self fromDatabaseWhere:v25 error:error];

  return v26;
}

+ (id)nameFromCKRecordID:(id)d
{
  recordName = [d recordName];
  if ([recordName hasPrefix:@"ckid-"])
  {
    v4 = [recordName substringFromIndex:{objc_msgSend(@"ckid-", "length")}];

    recordName = v4;
  }

  return recordName;
}

@end