@interface REMCDList
+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context;
+ (id)newCloudObjectForRecord:(id)record account:(id)account context:(id)context;
+ (id)newPlaceholderObjectForRecordID:(id)d account:(id)account context:(id)context;
+ (id)recordTypes;
- (BOOL)isConnectedToAccountObject:(id)object;
- (BOOL)isShared;
- (BOOL)mergeWithLocalObject:(id)object;
- (BOOL)shouldCascadeMarkAsDeleteInto:(id)into forRelationship:(id)relationship;
- (BOOL)validateForDelete:(id *)delete;
- (BOOL)validateForInsert:(id *)insert;
- (NSData)reminderIDsMergeableOrdering;
- (NSString)displayName;
- (id)_parentZoneMismatchErrorDebugDescription;
- (id)existingLocalObjectToMergeWithPredicate:(id)predicate;
- (id)newlyCreatedRecord;
- (id)objectsToBeDeletedBeforeThisObject;
- (id)recordType;
- (id)shareTitle;
- (id)shareType;
- (int64_t)compare:(id)compare;
- (int64_t)parentEffectiveMinimumSupportedVersion;
- (void)debug_lowLevelRemoveFromParent;
- (void)incrementSpotlightIndexCount;
- (void)mergeDataFromRecord:(id)record accountID:(id)d;
- (void)objectWasDeletedFromCloudByAnotherDevice;
- (void)restoreParentReferenceAfterUnmarkingForDeletion;
- (void)setReminderIDsMergeableOrdering:(id)ordering;
- (void)sortChildrenObjects;
- (void)updateObjectWithShare:(id)share;
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

- (void)setReminderIDsMergeableOrdering:(id)ordering
{
  orderingCopy = ordering;
  [(REMCDObject *)self willChangeValueForKey:@"reminderIDsOrdering"];
  [(REMCDObject *)self willChangeValueForKey:@"reminderIDsMergeableOrdering_v2_JSON"];
  [(REMCDList *)self setPrimitiveValue:orderingCopy forKey:@"reminderIDsMergeableOrdering_v2_JSON"];

  [(REMCDObject *)self didChangeValueForKey:@"reminderIDsMergeableOrdering_v2_JSON"];

  [(REMCDObject *)self didChangeValueForKey:@"reminderIDsOrdering"];
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_opt_class();
  v5 = REMDynamicCast();

  if (v5 && ([v5 name], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    name = [v5 name];
    name2 = [(REMCDList *)self name];
    v9 = [name2 compare:name];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)validateForInsert:(id *)insert
{
  v9.receiver = self;
  v9.super_class = REMCDList;
  v5 = [(REMCDObject *)&v9 validateForInsert:?];
  if (v5)
  {
    account = [(REMCDList *)self account];

    if (account)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      if (insert)
      {
        remObjectID = [(REMCDObject *)self remObjectID];
        *insert = [REMError validationErrorListHasNoAccount:remObjectID];
      }

      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)validateForDelete:(id *)delete
{
  v10.receiver = self;
  v10.super_class = REMCDList;
  v4 = [(REMCDList *)&v10 validateForDelete:delete];
  if (v4)
  {
    remObjectID = [(REMCDObject *)self remObjectID];
    stringRepresentation = [remObjectID stringRepresentation];

    v7 = +[REMUserDefaults daemonUserDefaults];
    [v7 removeMuteNotificationOptionsForSharedList:stringRepresentation];

    v8 = +[REMUserDefaults daemonUserDefaults];
    [v8 removeHideEmptySectionsForGroceryList:stringRepresentation];
  }

  return v4;
}

- (id)_parentZoneMismatchErrorDebugDescription
{
  sharees = [(REMCDList *)self sharees];
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"sharees.count: %lu, sharingStatus: %d", [sharees count], -[REMCDList sharingStatus](self, "sharingStatus"));

  return v4;
}

- (BOOL)isShared
{
  selfCopy = self;
  sharees = [(REMCDList *)self sharees];
  LOBYTE(selfCopy) = +[REMList isSharedWithShareeCount:sharingStatus:](REMList, "isSharedWithShareeCount:sharingStatus:", [sharees count], -[REMCDList sharingStatus](selfCopy, "sharingStatus"));

  return selfCopy;
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

- (BOOL)isConnectedToAccountObject:(id)object
{
  objectCopy = object;
  remObjectID = [(REMCDObject *)self remObjectID];
  if (remObjectID)
  {
    v6 = [objectCopy objectForKeyedSubscript:remObjectID];
    v7 = v6;
    if (v6)
    {
      LOBYTE(v8) = [v6 integerValue] == 1;
    }

    else
    {
      [objectCopy setObject:&off_100904FE0 forKeyedSubscript:remObjectID];
      parentList = [(REMCDList *)self parentList];

      if (parentList)
      {
        [(REMCDList *)self parentList];
      }

      else
      {
        [(REMCDList *)self parentAccount];
      }
      v10 = ;
      v8 = [v10 isConnectedToAccountObject:objectCopy];

      if (v8)
      {
        v11 = &off_100904FF8;
      }

      else
      {
        v11 = &off_100905010;
      }

      [objectCopy setObject:v11 forKeyedSubscript:remObjectID];
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)shouldCascadeMarkAsDeleteInto:(id)into forRelationship:(id)relationship
{
  intoCopy = into;
  relationshipCopy = relationship;
  name = [relationshipCopy name];
  v9 = [name isEqualToString:@"reminders"];

  if (v9)
  {
    objc_opt_class();
    v10 = REMCheckedDynamicCast();
    parentReminder = [v10 parentReminder];
    v12 = parentReminder == 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = REMCDList;
    v12 = [(REMCDObject *)&v14 shouldCascadeMarkAsDeleteInto:intoCopy forRelationship:relationshipCopy];
  }

  return v12;
}

- (int64_t)parentEffectiveMinimumSupportedVersion
{
  parentList = [(REMCDList *)self parentList];

  if (parentList)
  {
    parentList2 = [(REMCDList *)self parentList];
    effectiveMinimumSupportedVersion = [parentList2 effectiveMinimumSupportedVersion];
  }

  else
  {
    parentList2 = [(REMCDList *)self parentAccount];
    if (parentList2)
    {
      parentAccount = [(REMCDList *)self parentAccount];
      effectiveMinimumSupportedVersion = [parentAccount effectiveMinimumSupportedVersion];
    }

    else
    {
      effectiveMinimumSupportedVersion = kREMSupportedVersionUnset;
    }
  }

  return effectiveMinimumSupportedVersion;
}

- (void)debug_lowLevelRemoveFromParent
{
  [(REMCDList *)self setParentList:0];

  [(REMCDList *)self setParentAccount:0];
}

- (NSString)displayName
{
  name = [(REMCDList *)self name];

  if (name)
  {
    name2 = [(REMCDList *)self name];
    v5 = [REMDisplayNameUtils displayNameFromListName:name2 isPlaceholder:[(REMCDObject *)self isPlaceholder]];
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

+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  swift_getObjCClassMetadata();
  dCopy = d;
  contextCopy = context;
  v12 = static REMCDList.existingCloudObject(for:accountID:managedObjectContext:)(dCopy, v7, v9, contextCopy);

  return v12;
}

+ (id)newCloudObjectForRecord:(id)record account:(id)account context:(id)context
{
  swift_getObjCClassMetadata();
  recordCopy = record;
  accountCopy = account;
  contextCopy = context;
  v11 = static REMCDList.newCloudObject(for:account:managedObjectContext:)(recordCopy, accountCopy, contextCopy);

  return v11;
}

+ (id)newPlaceholderObjectForRecordID:(id)d account:(id)account context:(id)context
{
  swift_getObjCClassMetadata();
  dCopy = d;
  accountCopy = account;
  contextCopy = context;
  v11 = static REMCDList.newPlaceholderObject(for:account:context:)(dCopy, account, contextCopy);

  return v11;
}

- (void)objectWasDeletedFromCloudByAnotherDevice
{
  selfCopy = self;
  if (![(REMCDObject *)selfCopy isOwnedByCurrentUser])
  {
    [(REMCDObject *)selfCopy updateSharedObjectOwnerName:0];
  }

  v3.receiver = selfCopy;
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
  selfCopy = self;
  sub_100357E44();
  sub_100358264();
}

- (void)mergeDataFromRecord:(id)record accountID:(id)d
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  recordCopy = record;
  selfCopy = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  REMCDList.mergeData(from:accountID:)(recordCopy, v11);
}

- (id)newlyCreatedRecord
{
  selfCopy = self;
  v3 = REMCDList.newlyCreatedRecord()();

  return v3;
}

- (id)shareTitle
{
  selfCopy = self;
  name = [(REMCDList *)selfCopy name];
  if (!name)
  {
    v7.receiver = selfCopy;
    v7.super_class = REMCDList;
    name = [(REMCDObject *)&v7 shareTitle];
  }

  v4 = name;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (id)shareType
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)updateObjectWithShare:(id)share
{
  shareCopy = share;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.super.isa = share;
  REMCDList.update(with:)(v9);
}

- (id)existingLocalObjectToMergeWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  selfCopy = self;
  REMCDList.existingLocalObjectToMerge(with:)(v7, predicate);
  v9 = v8;

  return v9;
}

- (BOOL)mergeWithLocalObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  LOBYTE(self) = REMCDList.merge(withLocalObject:)(objectCopy);

  return self & 1;
}

- (id)objectsToBeDeletedBeforeThisObject
{
  selfCopy = self;
  REMCDList.objectsToBeDeletedBeforeThisObject()();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)restoreParentReferenceAfterUnmarkingForDeletion
{
  selfCopy = self;
  account = [(REMCDList *)selfCopy account];
  [(REMCDList *)selfCopy setParentAccount:account];
}

@end