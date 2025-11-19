@interface REMCDSmartList
+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)newCloudObjectForRecord:(id)a3 account:(id)a4 context:(id)a5;
+ (id)recordTypes;
- (BOOL)isConnectedToAccountObject:(id)a3;
- (BOOL)mergeWithLocalObject:(id)a3;
- (id)existingLocalObjectToMergeWithPredicate:(id)a3;
- (id)newlyCreatedRecord;
- (id)parentCloudObject;
- (id)recordType;
- (int64_t)parentEffectiveMinimumSupportedVersion;
- (void)cleanUpAfterLocalObjectMerge;
- (void)debug_lowLevelRemoveFromParent;
- (void)mergeDataFromRecord:(id)a3 accountID:(id)a4;
- (void)sortChildrenObjects;
- (void)willSave_Swift;
@end

@implementation REMCDSmartList

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
      [v4 setObject:&off_100904F98 forKeyedSubscript:v5];
      v9 = [(REMCDSmartList *)self parentList];

      if (v9)
      {
        [(REMCDSmartList *)self parentList];
      }

      else
      {
        [(REMCDSmartList *)self parentAccount];
      }
      v10 = ;
      v8 = [v10 isConnectedToAccountObject:v4];

      if (v8)
      {
        v11 = &off_100904FB0;
      }

      else
      {
        v11 = &off_100904FC8;
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

- (int64_t)parentEffectiveMinimumSupportedVersion
{
  v3 = REMSmartListTypeCustom;
  v4 = [(REMCDSmartList *)self smartListType];
  LODWORD(v3) = [v3 isEqual:v4];

  if (!v3)
  {
    return kREMSupportedVersionUnset;
  }

  v5 = [(REMCDSmartList *)self parentList];

  if (v5)
  {
    v6 = [(REMCDSmartList *)self parentList];
    v7 = [v6 effectiveMinimumSupportedVersion];

    return v7;
  }

  v10 = [(REMCDSmartList *)self parentAccount];
  if (v10)
  {
    v11 = [(REMCDSmartList *)self parentAccount];
    v9 = [v11 effectiveMinimumSupportedVersion];
  }

  else
  {
    v9 = kREMSupportedVersionUnset;
  }

  return v9;
}

- (void)debug_lowLevelRemoveFromParent
{
  v3 = REMSmartListTypeCustom;
  v4 = [(REMCDSmartList *)self smartListType];
  LODWORD(v3) = [v3 isEqual:v4];

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

+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  swift_getObjCClassMetadata();
  v10 = a3;
  v11 = a5;
  v12 = static REMCDSmartList.existingCloudObject(for:accountID:managedObjectContext:)(v10, v7, v9, v11);

  return v12;
}

+ (id)newCloudObjectForRecord:(id)a3 account:(id)a4 context:(id)a5
{
  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = static REMCDSmartList.newCloudObject(for:account:managedObjectContext:)(v8, v9, v10);

  return v11;
}

- (id)recordType
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)sortChildrenObjects
{
  v2 = self;
  _sSo14REMCDSmartListC7reminddE19sortChildrenObjectsyyF_0();
}

- (void)mergeDataFromRecord:(id)a3 accountID:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a3;
  v10 = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  REMCDSmartList.mergeData(from:accountID:)(v9, v11);
}

- (id)newlyCreatedRecord
{
  v2 = self;
  v3 = REMCDSmartList.newlyCreatedRecord()();

  return v3;
}

- (id)parentCloudObject
{
  v2 = self;
  REMCDSmartList.parentCloud()(v3);
  v5 = v4;

  return v5;
}

- (id)existingLocalObjectToMergeWithPredicate:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _sSo14REMCDSmartListC7reminddE26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0();

  return v6;
}

- (BOOL)mergeWithLocalObject:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = _sSo14REMCDSmartListC7reminddE5merge15withLocalObjectSbSo11REMCDObjectC_tF_0();

  return self & 1;
}

- (void)cleanUpAfterLocalObjectMerge
{
  v2 = self;
  REMCDSmartList.cleanUpAfterLocalObjectMerge()();
}

- (void)willSave_Swift
{
  v2 = self;
  if (![(REMCDSmartList *)v2 didCleanUpManualSortHintOnMarkingForDeletion])
  {
    [(REMCDSmartList *)v2 setDidCleanUpManualSortHintOnMarkingForDeletion:1];
    sub_10044796C();
  }
}

@end