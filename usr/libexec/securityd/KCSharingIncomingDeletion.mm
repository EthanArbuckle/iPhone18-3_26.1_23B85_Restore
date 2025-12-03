@interface KCSharingIncomingDeletion
- (KCSharingIncomingDeletion)initWithAttributes:(id)attributes error:(id *)error;
- (id)attributesWithAccessGroups:(id)groups error:(id *)error;
- (id)initForDeletedRecordWithRecordID:(id)d;
@end

@implementation KCSharingIncomingDeletion

- (id)attributesWithAccessGroups:(id)groups error:(id *)error
{
  v17[0] = kSecAttrUUID;
  recordID = self->_recordID;
  groupsCopy = groups;
  recordName = [(CKRecordID *)recordID recordName];
  v18[0] = recordName;
  v17[1] = @"zone";
  recordID = [(KCSharingIncomingDeletion *)self recordID];
  zoneID = [recordID zoneID];
  zoneName = [zoneID zoneName];
  v18[1] = zoneName;
  v17[2] = @"ownr";
  recordID2 = [(KCSharingIncomingDeletion *)self recordID];
  zoneID2 = [recordID2 zoneID];
  ownerName = [zoneID2 ownerName];
  v18[2] = ownerName;
  v18[3] = kSecAttrAccessibleWhenUnlockedThisDeviceOnly;
  v17[3] = kSecAttrAccessible;
  v17[4] = @"type";
  v18[4] = &off_100363F88;
  v17[5] = kSecAttrAccessGroup;
  entryAccessGroup = [groupsCopy entryAccessGroup];

  v17[6] = @"deln";
  v18[5] = entryAccessGroup;
  v18[6] = &__kCFBooleanTrue;
  v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:7];

  return v15;
}

- (KCSharingIncomingDeletion)initWithAttributes:(id)attributes error:(id *)error
{
  attributesCopy = attributes;
  v7 = [attributesCopy objectForKeyedSubscript:@"deln"];
  if (v7)
  {
    if (_NSIsNSNumber() && ([v7 BOOLValue] & 1) != 0)
    {
      v8 = kSecAttrUUID;
      v9 = [attributesCopy objectForKeyedSubscript:kSecAttrUUID];
      if (v9)
      {
        if (_NSIsNSString() && [v9 length])
        {
          v10 = [attributesCopy objectForKeyedSubscript:@"zone"];
          if (v10)
          {
            if (_NSIsNSString() && [v10 length])
            {
              v11 = [attributesCopy objectForKeyedSubscript:@"ownr"];
              if (!v11)
              {
                v29 = @"KCSharingMissingAttribute";
                v30 = @"ownr";
                v24 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
                sub_100061E2C(error, 22, v24);

                v12 = 0;
                goto LABEL_25;
              }

              v12 = v11;
              if (_NSIsNSString() && [v12 length])
              {
                v13 = [[CKRecordZoneID alloc] initWithZoneName:v10 ownerName:v12];
                v14 = [[CKRecordID alloc] initWithRecordName:v9 zoneID:v13];
                self = [(KCSharingIncomingDeletion *)self initForDeletedRecordWithRecordID:v14];

                selfCopy = self;
LABEL_26:

                goto LABEL_21;
              }

              v27 = @"KCSharingInvalidAttribute";
              v21 = [v12 copy];
              v26 = v21;
              v22 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
              v28 = v22;
              v23 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
              sub_100061E2C(error, 1, v23);
            }

            else
            {
              v33 = @"KCSharingInvalidAttribute";
              v31 = @"zone";
              v12 = [v10 copy];
              v32 = v12;
              v21 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
              v34 = v21;
              v22 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
              sub_100061E2C(error, 1, v22);
            }
          }

          else
          {
            v35 = @"KCSharingMissingAttribute";
            v36 = @"zone";
            v12 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
            sub_100061E2C(error, 22, v12);
          }

LABEL_25:
          selfCopy = 0;
          goto LABEL_26;
        }

        v39 = @"KCSharingInvalidAttribute";
        v37 = v8;
        v10 = [v9 copy];
        v38 = v10;
        v19 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        v40 = v19;
        v20 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        sub_100061E2C(error, 1, v20);
      }

      else
      {
        v41 = @"KCSharingMissingAttribute";
        v42 = v8;
        v10 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        sub_100061E2C(error, 22, v10);
      }

      selfCopy = 0;
LABEL_21:

      goto LABEL_17;
    }

    v45 = @"KCSharingInvalidAttribute";
    v43 = @"deln";
    v9 = [v7 copy];
    v44 = v9;
    v16 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v46 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    sub_100061E2C(error, 1, v17);
  }

  else
  {
    v47 = @"KCSharingMissingAttribute";
    v48 = @"deln";
    v9 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    sub_100061E2C(error, 22, v9);
  }

  selfCopy = 0;
LABEL_17:

  return selfCopy;
}

- (id)initForDeletedRecordWithRecordID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = KCSharingIncomingDeletion;
  v6 = [(KCSharingIncomingDeletion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recordID, d);
  }

  return v7;
}

@end