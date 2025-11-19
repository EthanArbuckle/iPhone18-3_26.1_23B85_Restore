@interface REMCDList
+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)newCloudObjectForRecord:(id)a3 account:(id)a4 context:(id)a5;
+ (id)newPlaceholderObjectForRecordID:(id)a3 account:(id)a4 context:(id)a5;
+ (id)recordTypes;
- (BOOL)isConnectedToAccountObject:(id)a3;
- (BOOL)isShared;
- (BOOL)mergeWithLocalObject:(id)a3;
- (BOOL)shouldCascadeMarkAsDeleteInto:(id)a3 forRelationship:(id)a4;
- (BOOL)validateForDelete:(id *)a3;
- (BOOL)validateForInsert:(id *)a3;
- (NSData)reminderIDsMergeableOrdering;
- (NSString)displayName;
- (id)_parentZoneMismatchErrorDebugDescription;
- (id)existingLocalObjectToMergeWithPredicate:(id)a3;
- (id)newlyCreatedRecord;
- (id)objectsToBeDeletedBeforeThisObject;
- (id)recordType;
- (id)shareTitle;
- (id)shareType;
- (int64_t)compare:(id)a3;
- (int64_t)parentEffectiveMinimumSupportedVersion;
- (void)debug_lowLevelRemoveFromParent;
- (void)incrementSpotlightIndexCount;
- (void)mergeDataFromRecord:(id)a3 accountID:(id)a4;
- (void)objectWasDeletedFromCloudByAnotherDevice;
- (void)restoreParentReferenceAfterUnmarkingForDeletion;
- (void)setReminderIDsMergeableOrdering:(id)a3;
- (void)sortChildrenObjects;
- (void)updateObjectWithShare:(id)a3;
@end

@implementation REMCDList

- (NSData)reminderIDsMergeableOrdering
{
  [(REMCDList *)self willAccessValueForKey:@"reminderIDsOrdering"];
  [(REMCDList *)self willAccessValueForKey:@"reminderIDsMergeableOrdering_v2_JSON"];
  v3 = [(REMCDList *)self primitiveValueForKey:@"reminderIDsMergeableOrdering_v2_JSON"];
  [(REMCDList *)self didAccessValueForKey:@"reminderIDsMergeableOrdering_v2_JSON"];
  [(REMCDList *)self didAccessValueForKey:@"reminderIDsOrdering"];

  return v3;
}

- (void)setReminderIDsMergeableOrdering:(id)a3
{
  v4 = a3;
  [(REMCDObject *)self willChangeValueForKey:@"reminderIDsOrdering"];
  [(REMCDObject *)self willChangeValueForKey:@"reminderIDsMergeableOrdering_v2_JSON"];
  [(REMCDList *)self setPrimitiveValue:v4 forKey:@"reminderIDsMergeableOrdering_v2_JSON"];

  [(REMCDObject *)self didChangeValueForKey:@"reminderIDsMergeableOrdering_v2_JSON"];

  [(REMCDObject *)self didChangeValueForKey:@"reminderIDsOrdering"];
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = REMDynamicCast();

  if (v5 && ([v5 name], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v5 name];
    v8 = [(REMCDList *)self name];
    v9 = [v8 compare:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)validateForInsert:(id *)a3
{
  v9.receiver = self;
  v9.super_class = REMCDList;
  v5 = [(REMCDObject *)&v9 validateForInsert:?];
  if (v5)
  {
    v6 = [(REMCDList *)self account];

    if (v6)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      if (a3)
      {
        v7 = [(REMCDObject *)self remObjectID];
        *a3 = [REMError validationErrorListHasNoAccount:v7];
      }

      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)validateForDelete:(id *)a3
{
  v10.receiver = self;
  v10.super_class = REMCDList;
  v4 = [(REMCDList *)&v10 validateForDelete:a3];
  if (v4)
  {
    v5 = [(REMCDObject *)self remObjectID];
    v6 = [v5 stringRepresentation];

    v7 = +[REMUserDefaults daemonUserDefaults];
    [v7 removeMuteNotificationOptionsForSharedList:v6];

    v8 = +[REMUserDefaults daemonUserDefaults];
    [v8 removeHideEmptySectionsForGroceryList:v6];
  }

  return v4;
}

- (id)_parentZoneMismatchErrorDebugDescription
{
  v3 = [(REMCDList *)self sharees];
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"sharees.count: %lu, sharingStatus: %d", [v3 count], -[REMCDList sharingStatus](self, "sharingStatus"));

  return v4;
}

- (BOOL)isShared
{
  v2 = self;
  v3 = [(REMCDList *)self sharees];
  LOBYTE(v2) = +[REMList isSharedWithShareeCount:sharingStatus:](REMList, "isSharedWithShareeCount:sharingStatus:", [v3 count], -[REMCDList sharingStatus](v2, "sharingStatus"));

  return v2;
}

- (void)incrementSpotlightIndexCount
{
  if ([(REMCDList *)self spotlightIndexCount]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(REMCDList *)self spotlightIndexCount]+ 1;
  }

  [(REMCDList *)self setSpotlightIndexCount:v3];
}

- (BOOL)isConnectedToAccountObject:(id)a3
{
  v4 = a3;
  v5 = [(REMCDObject *)self remObjectID];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:v5];
    v7 = v6;
    if (v6)
    {
      LOBYTE(v8) = [v6 integerValue] == 1;
    }

    else
    {
      [v4 setObject:&off_100904FE0 forKeyedSubscript:v5];
      v9 = [(REMCDList *)self parentList];

      if (v9)
      {
        [(REMCDList *)self parentList];
      }

      else
      {
        [(REMCDList *)self parentAccount];
      }
      v10 = ;
      v8 = [v10 isConnectedToAccountObject:v4];

      if (v8)
      {
        v11 = &off_100904FF8;
      }

      else
      {
        v11 = &off_100905010;
      }

      [v4 setObject:v11 forKeyedSubscript:v5];
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)shouldCascadeMarkAsDeleteInto:(id)a3 forRelationship:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 name];
  v9 = [v8 isEqualToString:@"reminders"];

  if (v9)
  {
    objc_opt_class();
    v10 = REMCheckedDynamicCast();
    v11 = [v10 parentReminder];
    v12 = v11 == 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = REMCDList;
    v12 = [(REMCDObject *)&v14 shouldCascadeMarkAsDeleteInto:v6 forRelationship:v7];
  }

  return v12;
}

- (int64_t)parentEffectiveMinimumSupportedVersion
{
  v3 = [(REMCDList *)self parentList];

  if (v3)
  {
    v4 = [(REMCDList *)self parentList];
    v5 = [v4 effectiveMinimumSupportedVersion];
  }

  else
  {
    v4 = [(REMCDList *)self parentAccount];
    if (v4)
    {
      v6 = [(REMCDList *)self parentAccount];
      v5 = [v6 effectiveMinimumSupportedVersion];
    }

    else
    {
      v5 = kREMSupportedVersionUnset;
    }
  }

  return v5;
}

- (void)debug_lowLevelRemoveFromParent
{
  [(REMCDList *)self setParentList:0];

  [(REMCDList *)self setParentAccount:0];
}

- (NSString)displayName
{
  v3 = [(REMCDList *)self name];

  if (v3)
  {
    v4 = [(REMCDList *)self name];
    v5 = [REMDisplayNameUtils displayNameFromListName:v4 isPlaceholder:[(REMCDObject *)self isPlaceholder]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)recordTypes
{
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  swift_getObjCClassMetadata();
  v10 = a3;
  v11 = a5;
  v12 = static REMCDList.existingCloudObject(for:accountID:managedObjectContext:)(v10, v7, v9, v11);

  return v12;
}

+ (id)newCloudObjectForRecord:(id)a3 account:(id)a4 context:(id)a5
{
  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = static REMCDList.newCloudObject(for:account:managedObjectContext:)(v8, v9, v10);

  return v11;
}

+ (id)newPlaceholderObjectForRecordID:(id)a3 account:(id)a4 context:(id)a5
{
  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = static REMCDList.newPlaceholderObject(for:account:context:)(v8, a4, v10);

  return v11;
}

- (void)objectWasDeletedFromCloudByAnotherDevice
{
  v2 = self;
  if (![(REMCDObject *)v2 isOwnedByCurrentUser])
  {
    [(REMCDObject *)v2 updateSharedObjectOwnerName:0];
  }

  v3.receiver = v2;
  v3.super_class = REMCDList;
  [(REMCDObject *)&v3 objectWasDeletedFromCloudByAnotherDevice];
}

- (id)recordType
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)sortChildrenObjects
{
  v2 = self;
  sub_100357E44();
  sub_100358264();
}

- (void)mergeDataFromRecord:(id)a3 accountID:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a3;
  v10 = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  REMCDList.mergeData(from:accountID:)(v9, v11);
}

- (id)newlyCreatedRecord
{
  v2 = self;
  v3 = REMCDList.newlyCreatedRecord()();

  return v3;
}

- (id)shareTitle
{
  v2 = self;
  v3 = [(REMCDList *)v2 name];
  if (!v3)
  {
    v7.receiver = v2;
    v7.super_class = REMCDList;
    v3 = [(REMCDObject *)&v7 shareTitle];
  }

  v4 = v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (id)shareType
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)updateObjectWithShare:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.super.isa = a3;
  REMCDList.update(with:)(v9);
}

- (id)existingLocalObjectToMergeWithPredicate:(id)a3
{
  v5 = a3;
  v6 = self;
  REMCDList.existingLocalObjectToMerge(with:)(v7, a3);
  v9 = v8;

  return v9;
}

- (BOOL)mergeWithLocalObject:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = REMCDList.merge(withLocalObject:)(v4);

  return self & 1;
}

- (id)objectsToBeDeletedBeforeThisObject
{
  v2 = self;
  REMCDList.objectsToBeDeletedBeforeThisObject()();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)restoreParentReferenceAfterUnmarkingForDeletion
{
  v3 = self;
  v2 = [(REMCDList *)v3 account];
  [(REMCDList *)v3 setParentAccount:v2];
}

@end