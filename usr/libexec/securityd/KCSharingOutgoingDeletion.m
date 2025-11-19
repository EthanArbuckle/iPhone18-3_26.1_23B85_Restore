@interface KCSharingOutgoingDeletion
- (BOOL)setRecordIDAndChangeTagFromData:(id)a3 error:(id *)a4;
- (KCSharingOutgoingDeletion)initWithAttributes:(id)a3 error:(id *)a4;
- (KCSharingOutgoingDeletion)initWithDeletedLocalItemForMirrorEntry:(id)a3;
- (KCSharingOutgoingDeletion)initWithDeletedRecord:(id)a3;
- (KCSharingOutgoingDeletion)initWithPlaceholderOutgoingDatabaseItem:(SecDbItem *)a3 error:(id *)a4;
- (id)attributesWithAccessGroups:(id)a3 error:(id *)a4;
- (id)serializeRecordIDAndChangeTag;
@end

@implementation KCSharingOutgoingDeletion

- (id)attributesWithAccessGroups:(id)a3 error:(id *)a4
{
  v18[0] = kSecAttrUUID;
  recordID = self->_recordID;
  v6 = a3;
  v7 = [(CKRecordID *)recordID recordName];
  v19[0] = v7;
  v18[1] = kSecValueData;
  v8 = [(KCSharingOutgoingDeletion *)self serializeRecordIDAndChangeTag];
  v19[1] = v8;
  v18[2] = @"zone";
  v9 = [(KCSharingOutgoingDeletion *)self recordID];
  v10 = [v9 zoneID];
  v11 = [v10 zoneName];
  v19[2] = v11;
  v18[3] = @"ownr";
  v12 = [(KCSharingOutgoingDeletion *)self recordID];
  v13 = [v12 zoneID];
  v14 = [v13 ownerName];
  v19[3] = v14;
  v19[4] = kSecAttrAccessibleWhenUnlockedThisDeviceOnly;
  v18[4] = kSecAttrAccessible;
  v18[5] = @"type";
  v19[5] = &off_100364018;
  v18[6] = kSecAttrAccessGroup;
  v15 = [v6 entryAccessGroup];

  v18[7] = @"deln";
  v19[6] = v15;
  v19[7] = &__kCFBooleanTrue;
  v16 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:8];

  return v16;
}

- (BOOL)setRecordIDAndChangeTagFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [NSKeyedUnarchiver unarchivedDictionaryWithKeysOfClass:v7 objectsOfClass:objc_opt_class() fromData:v6 error:a4];

  if (!v8)
  {
    v20 = [NSError errorWithDomain:@"KCSharingErrorDomain" code:26 userInfo:0];
LABEL_11:
    v19 = 0;
    goto LABEL_14;
  }

  v9 = [v8 objectForKeyedSubscript:@"recordID"];

  if (!v9)
  {
    v30 = @"KCSharingMissingAttribute";
    v31 = @"recordID";
    v21 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    sub_100061E2C(a4, 22, v21);
LABEL_10:

    goto LABEL_11;
  }

  v10 = objc_opt_class();
  v11 = [v8 objectForKeyedSubscript:@"recordID"];
  v12 = [NSKeyedUnarchiver unarchivedObjectOfClass:v10 fromData:v11 error:a4];
  recordID = self->_recordID;
  self->_recordID = v12;

  if (!self->_recordID)
  {
    v28 = @"KCSharingInvalidAttribute";
    v21 = [v8 objectForKeyedSubscript:@"recordID"];
    v29 = v21;
    v22 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    sub_100061E2C(a4, 1, v22);

    goto LABEL_10;
  }

  v14 = [v8 objectForKeyedSubscript:@"changeTag"];
  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = [NSString alloc];
  v16 = [v8 objectForKeyedSubscript:@"changeTag"];
  v17 = [v15 initWithData:v16 encoding:4];
  recordChangeTag = self->_recordChangeTag;
  self->_recordChangeTag = v17;

  if (!self->_recordChangeTag)
  {
    v26 = @"KCSharingInvalidAttribute";
    v23 = [v8 objectForKeyedSubscript:@"changeTag"];
    v27 = v23;
    v24 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    sub_100061E2C(a4, 1, v24);

    v19 = 0;
  }

  else
  {
LABEL_6:
    v19 = 1;
  }

LABEL_14:
  return v19;
}

- (id)serializeRecordIDAndChangeTag
{
  v9 = @"recordID";
  v3 = [NSKeyedArchiver archivedDataWithRootObject:self->_recordID];
  v10 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v5 = [v4 mutableCopy];

  v6 = [(NSString *)self->_recordChangeTag dataUsingEncoding:4];
  [v5 setObject:v6 forKeyedSubscript:@"changeTag"];

  v7 = [NSKeyedArchiver archivedDataWithRootObject:v5];

  return v7;
}

- (KCSharingOutgoingDeletion)initWithPlaceholderOutgoingDatabaseItem:(SecDbItem *)a3 error:(id *)a4
{
  v17.receiver = self;
  v17.super_class = KCSharingOutgoingDeletion;
  v6 = [(KCSharingOutgoingDeletion *)&v17 init];
  if (!v6)
  {
    goto LABEL_5;
  }

  v20 = kSecValueData;
  v7 = [NSArray arrayWithObjects:&v20 count:1];
  v8 = [NSSet setWithArray:v7];

  v9 = sub_100017964(a3, v8, a4);
  v10 = v9;
  if (!v9)
  {
    goto LABEL_7;
  }

  v11 = [v9 objectForKeyedSubscript:kSecValueData];

  if (!v11)
  {
    v18 = @"KCSharingMissingAttribute";
    v19 = kSecValueData;
    v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    sub_100061E2C(a4, 22, v15);

LABEL_7:
    goto LABEL_8;
  }

  v12 = [v10 objectForKeyedSubscript:kSecValueData];
  v13 = [(KCSharingOutgoingDeletion *)v6 setRecordIDAndChangeTagFromData:v12 error:a4];

  if (!v13)
  {
LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

LABEL_5:
  v14 = v6;
LABEL_9:

  return v14;
}

- (KCSharingOutgoingDeletion)initWithAttributes:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24.receiver = self;
  v24.super_class = KCSharingOutgoingDeletion;
  v7 = [(KCSharingOutgoingDeletion *)&v24 init];
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = [v6 objectForKeyedSubscript:@"deln"];
  if (!v8)
  {
    v47 = @"KCSharingMissingAttribute";
    v48 = @"deln";
    v10 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    sub_100061E2C(a4, 22, v10);
    goto LABEL_21;
  }

  if (!_NSIsNSNumber() || ([v8 BOOLValue] & 1) == 0)
  {
    v45 = @"KCSharingInvalidAttribute";
    v43 = @"deln";
    v10 = [v8 copy];
    v44 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v46 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v16 = a4;
    v17 = 1;
LABEL_17:
    sub_100061E2C(v16, v17, v12);
LABEL_18:

LABEL_19:
LABEL_21:

    goto LABEL_22;
  }

  v9 = kSecAttrUUID;
  v10 = [v6 objectForKeyedSubscript:kSecAttrUUID];
  if (!v10)
  {
    v41 = @"KCSharingMissingAttribute";
    v42 = v9;
    v11 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    sub_100061E2C(a4, 22, v11);
    goto LABEL_19;
  }

  if (!_NSIsNSString() || ![v10 length])
  {
    v39 = @"KCSharingInvalidAttribute";
    v37 = v9;
    v11 = [v10 copy];
    v38 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v40 = v12;
    v19 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v20 = a4;
    v21 = 1;
LABEL_25:
    sub_100061E2C(v20, v21, v19);
LABEL_26:

    goto LABEL_18;
  }

  v11 = [v6 objectForKeyedSubscript:@"zone"];
  if (!v11)
  {
    v35 = @"KCSharingMissingAttribute";
    v36 = @"zone";
    v12 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v16 = a4;
    v17 = 22;
    goto LABEL_17;
  }

  if (!_NSIsNSString() || ![v11 length])
  {
    v33 = @"KCSharingInvalidAttribute";
    v31 = @"zone";
    v12 = [v11 copy];
    v32 = v12;
    v19 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v34 = v19;
    v22 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    sub_100061E2C(a4, 1, v22);
LABEL_29:

    goto LABEL_26;
  }

  v12 = [v6 objectForKeyedSubscript:@"ownr"];
  if (!v12)
  {
    v29 = @"KCSharingMissingAttribute";
    v30 = @"ownr";
    v19 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v20 = a4;
    v21 = 22;
    goto LABEL_25;
  }

  if (!_NSIsNSString() || ![v12 length])
  {
    v27 = @"KCSharingInvalidAttribute";
    v25 = @"ownr";
    v19 = [v12 copy];
    v26 = v19;
    v22 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v28 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    sub_100061E2C(a4, 1, v23);

    goto LABEL_29;
  }

  v13 = [v6 objectForKeyedSubscript:kSecValueData];
  v14 = [(KCSharingOutgoingDeletion *)v7 setRecordIDAndChangeTagFromData:v13 error:a4];

  if (!v14)
  {
LABEL_22:
    v15 = 0;
    goto LABEL_23;
  }

LABEL_15:
  v15 = v7;
LABEL_23:

  return v15;
}

- (KCSharingOutgoingDeletion)initWithDeletedRecord:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = KCSharingOutgoingDeletion;
  v5 = [(KCSharingOutgoingDeletion *)&v11 init];
  if (v5)
  {
    v6 = [v4 recordID];
    recordID = v5->_recordID;
    v5->_recordID = v6;

    v8 = [v4 recordChangeTag];
    recordChangeTag = v5->_recordChangeTag;
    v5->_recordChangeTag = v8;
  }

  return v5;
}

- (KCSharingOutgoingDeletion)initWithDeletedLocalItemForMirrorEntry:(id)a3
{
  v4 = [a3 record];
  v5 = [(KCSharingOutgoingDeletion *)self initWithDeletedRecord:v4];

  return v5;
}

@end