@interface REMCDSmartList
+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context;
+ (id)newCloudObjectForRecord:(id)record account:(id)account context:(id)context;
+ (id)recordTypes;
- (BOOL)isConnectedToAccountObject:(id)object;
- (BOOL)mergeWithLocalObject:(id)object;
- (id)existingLocalObjectToMergeWithPredicate:(id)predicate;
- (id)newlyCreatedRecord;
- (id)parentCloudObject;
- (id)recordType;
- (int64_t)parentEffectiveMinimumSupportedVersion;
- (void)cleanUpAfterLocalObjectMerge;
- (void)debug_lowLevelRemoveFromParent;
- (void)mergeDataFromRecord:(id)record accountID:(id)d;
- (void)sortChildrenObjects;
- (void)willSave_Swift;
@end

@implementation REMCDSmartList

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
      [objectCopy setObject:&off_100904F98 forKeyedSubscript:remObjectID];
      parentList = [(REMCDSmartList *)self parentList];

      if (parentList)
      {
        [(REMCDSmartList *)self parentList];
      }

      else
      {
        [(REMCDSmartList *)self parentAccount];
      }
      v10 = ;
      v8 = [v10 isConnectedToAccountObject:objectCopy];

      if (v8)
      {
        v11 = &off_100904FB0;
      }

      else
      {
        v11 = &off_100904FC8;
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

- (int64_t)parentEffectiveMinimumSupportedVersion
{
  v3 = REMSmartListTypeCustom;
  smartListType = [(REMCDSmartList *)self smartListType];
  LODWORD(v3) = [v3 isEqual:smartListType];

  if (!v3)
  {
    return kREMSupportedVersionUnset;
  }

  parentList = [(REMCDSmartList *)self parentList];

  if (parentList)
  {
    parentList2 = [(REMCDSmartList *)self parentList];
    effectiveMinimumSupportedVersion = [parentList2 effectiveMinimumSupportedVersion];

    return effectiveMinimumSupportedVersion;
  }

  parentAccount = [(REMCDSmartList *)self parentAccount];
  if (parentAccount)
  {
    parentAccount2 = [(REMCDSmartList *)self parentAccount];
    effectiveMinimumSupportedVersion2 = [parentAccount2 effectiveMinimumSupportedVersion];
  }

  else
  {
    effectiveMinimumSupportedVersion2 = kREMSupportedVersionUnset;
  }

  return effectiveMinimumSupportedVersion2;
}

- (void)debug_lowLevelRemoveFromParent
{
  v3 = REMSmartListTypeCustom;
  smartListType = [(REMCDSmartList *)self smartListType];
  LODWORD(v3) = [v3 isEqual:smartListType];

  if (v3)
  {
    [(REMCDSmartList *)self setParentList:0];

    [(REMCDSmartList *)self setParentAccount:0];
  }

  else
  {
    v5 = +[REMLogStore write];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_100766578(v5);
    }
  }
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
  v12 = static REMCDSmartList.existingCloudObject(for:accountID:managedObjectContext:)(dCopy, v7, v9, contextCopy);

  return v12;
}

+ (id)newCloudObjectForRecord:(id)record account:(id)account context:(id)context
{
  swift_getObjCClassMetadata();
  recordCopy = record;
  accountCopy = account;
  contextCopy = context;
  v11 = static REMCDSmartList.newCloudObject(for:account:managedObjectContext:)(recordCopy, accountCopy, contextCopy);

  return v11;
}

- (id)recordType
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)sortChildrenObjects
{
  selfCopy = self;
  _sSo14REMCDSmartListC7reminddE19sortChildrenObjectsyyF_0();
}

- (void)mergeDataFromRecord:(id)record accountID:(id)d
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  recordCopy = record;
  selfCopy = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  REMCDSmartList.mergeData(from:accountID:)(recordCopy, v11);
}

- (id)newlyCreatedRecord
{
  selfCopy = self;
  v3 = REMCDSmartList.newlyCreatedRecord()();

  return v3;
}

- (id)parentCloudObject
{
  selfCopy = self;
  REMCDSmartList.parentCloud()(v3);
  v5 = v4;

  return v5;
}

- (id)existingLocalObjectToMergeWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  selfCopy = self;
  v6 = _sSo14REMCDSmartListC7reminddE26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0();

  return v6;
}

- (BOOL)mergeWithLocalObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  LOBYTE(self) = _sSo14REMCDSmartListC7reminddE5merge15withLocalObjectSbSo11REMCDObjectC_tF_0();

  return self & 1;
}

- (void)cleanUpAfterLocalObjectMerge
{
  selfCopy = self;
  REMCDSmartList.cleanUpAfterLocalObjectMerge()();
}

- (void)willSave_Swift
{
  selfCopy = self;
  if (![(REMCDSmartList *)selfCopy didCleanUpManualSortHintOnMarkingForDeletion])
  {
    [(REMCDSmartList *)selfCopy setDidCleanUpManualSortHintOnMarkingForDeletion:1];
    sub_10044796C();
  }
}

@end