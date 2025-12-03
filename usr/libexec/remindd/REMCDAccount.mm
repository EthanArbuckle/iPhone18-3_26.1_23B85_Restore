@interface REMCDAccount
+ (BOOL)clearAppleCloudKitTable;
+ (REMCDAccount)accountWithCKIdentifier:(id)identifier context:(id)context;
+ (id)_fetchCloudKitAccountsInContext:(id)context;
+ (id)_groundTruth_primaryActiveCloudKitAccountInContext:(id)context;
+ (id)accountByCKIdentifierFrom:(id)from;
+ (id)allCloudKitAccountsInContext:(id)context;
+ (id)allCloudObjectIDsInContext:(id)context;
+ (id)allCloudObjectsInContext:(id)context;
+ (id)cloudKitAccountWithCKIdentifier:(id)identifier context:(id)context;
+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context;
+ (id)newCloudObjectForRecord:(id)record accountID:(id)d context:(id)context;
+ (id)predicateForCloudKitAccountsWithKeyPathPrefix:(id)prefix;
+ (id)recordTypes;
+ (id)unsafeUntilSystemReady_primaryCloudKitAccountInContext:(id)context appleAccountUtilities:(id)utilities;
+ (unint64_t)countCloudBasedAccountsInContext:(id)context;
+ (void)clearUserRecord:(id)record;
+ (void)initialize;
+ (void)writeMigrationStateTo:(id)to didChooseToMigrate:(BOOL)migrate didFinishMigration:(BOOL)migration;
- (BOOL)generateAndSavePersonIDSaltIfNeededWithContext:(id)context;
- (BOOL)mergeMigrationStateFromRecord:(id)record;
- (BOOL)needsToBePushedToCloud;
- (BOOL)postAccountPropertyChangeNotificationWithKey:(id)key changedValue:(id)value;
- (BOOL)shouldCascadeMarkAsDeleteInto:(id)into forRelationship:(id)relationship;
- (NSData)listIDsMergeableOrdering;
- (NSData)personIDSalt;
- (id)accountTypeHost;
- (id)newlyCreatedRecord;
- (id)recordName;
- (id)recordType;
- (int64_t)compare:(id)compare;
- (void)cleanUpAfterLocalObjectMerge;
- (void)mergeDataFromRecord:(id)record accountID:(id)d;
- (void)setListIDsMergeableOrdering:(id)ordering;
- (void)setPersonIDSalt:(id)salt;
- (void)sortChildrenObjects;
@end

@implementation REMCDAccount

- (id)accountTypeHost
{
  accountTypeHost = self->_accountTypeHost;
  if (!accountTypeHost || (v4 = [(REMAccountTypeHost *)accountTypeHost _accountType], v4 != [(REMCDAccount *)self type]))
  {
    v5 = [[REMAccountTypeHost alloc] initWithType:{-[REMCDAccount type](self, "type")}];
    v6 = self->_accountTypeHost;
    self->_accountTypeHost = v5;
  }

  v7 = self->_accountTypeHost;

  return v7;
}

- (NSData)listIDsMergeableOrdering
{
  [(REMCDAccount *)self willAccessValueForKey:@"listIDsMergeableOrdering"];
  [(REMCDAccount *)self willAccessValueForKey:@"listIDsMergeableOrdering_v2"];
  v3 = [(REMCDAccount *)self primitiveValueForKey:@"listIDsMergeableOrdering_v2"];
  [(REMCDAccount *)self didAccessValueForKey:@"listIDsMergeableOrdering_v2"];
  [(REMCDAccount *)self didAccessValueForKey:@"listIDsMergeableOrdering"];

  return v3;
}

- (NSData)personIDSalt
{
  [(REMCDAccount *)self willAccessValueForKey:@"personIDSalt"];
  [(REMCDAccount *)self willAccessValueForKey:@"personIDSalt_v1"];
  v3 = [(REMCDAccount *)self primitiveValueForKey:@"personIDSalt_v1"];
  [(REMCDAccount *)self didAccessValueForKey:@"personIDSalt_v1"];
  [(REMCDAccount *)self didAccessValueForKey:@"personIDSalt"];

  return v3;
}

+ (id)predicateForCloudKitAccountsWithKeyPathPrefix:(id)prefix
{
  v3 = @"type IN %@";
  if (prefix)
  {
    v3 = [NSString stringWithFormat:@"%@.%@", prefix, @"type IN %@"];
  }

  v4 = cloudKitAccountTypes();
  v5 = [NSPredicate predicateWithFormat:v3, v4];

  return v5;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_opt_class();
  v5 = REMDynamicCast();

  if (v5 && ([v5 name], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    name = [v5 name];
    name2 = [(REMCDAccount *)self name];
    v9 = [name2 compare:name];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setPersonIDSalt:(id)salt
{
  saltCopy = salt;
  [(REMCDObject *)self willChangeValueForKey:@"personIDSalt"];
  [(REMCDObject *)self willChangeValueForKey:@"personIDSalt_v1"];
  [(REMCDAccount *)self setPrimitiveValue:saltCopy forKey:@"personIDSalt_v1"];

  [(REMCDObject *)self didChangeValueForKey:@"personIDSalt_v1"];

  [(REMCDObject *)self didChangeValueForKey:@"personIDSalt"];
}

- (void)setListIDsMergeableOrdering:(id)ordering
{
  orderingCopy = ordering;
  [(REMCDObject *)self willChangeValueForKey:@"listIDsMergeableOrdering"];
  [(REMCDObject *)self willChangeValueForKey:@"listIDsMergeableOrdering_v2"];
  [(REMCDAccount *)self setPrimitiveValue:orderingCopy forKey:@"listIDsMergeableOrdering_v2"];

  [(REMCDObject *)self didChangeValueForKey:@"listIDsMergeableOrdering_v2"];

  [(REMCDObject *)self didChangeValueForKey:@"listIDsMergeableOrdering"];
}

- (BOOL)postAccountPropertyChangeNotificationWithKey:(id)key changedValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v8 = valueCopy;
  v9 = 0;
  if (keyCopy && valueCopy)
  {
    remObjectID = [(REMCDObject *)self remObjectID];
    if (remObjectID && (-[REMCDAccount accountTypeHost](self, "accountTypeHost"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isValid], v11, v12))
    {
      type = [(REMCDAccount *)self type];
      v14 = +[NSMutableDictionary dictionary];
      v15 = +[RDAccountPropertiesNotifier notificationUserInfoPropertyNameKey];
      [v14 setValue:keyCopy forKey:v15];

      v16 = +[RDAccountPropertiesNotifier notificationUserInfoPropertyValueKey];
      [v14 setValue:v8 forKey:v16];

      v17 = +[RDAccountPropertiesNotifier notificationUserInfoAccountObjectIDKey];
      [v14 setValue:remObjectID forKey:v17];

      v18 = [NSNumber numberWithInteger:type];
      v19 = +[RDAccountPropertiesNotifier notificationUserInfoAccountTypeKey];
      [v14 setValue:v18 forKey:v19];

      v20 = +[NSNotificationCenter defaultCenter];
      [v20 postNotificationName:@"RDStoreControllerREMAccountPropertiesDidUpdateNotification" object:0 userInfo:v14];

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)shouldCascadeMarkAsDeleteInto:(id)into forRelationship:(id)relationship
{
  intoCopy = into;
  relationshipCopy = relationship;
  name = [relationshipCopy name];
  v9 = [name isEqualToString:@"lists"];

  if (v9)
  {
    objc_opt_class();
    v10 = REMCheckedDynamicCast();
    parentList = [v10 parentList];
    v12 = parentList == 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = REMCDAccount;
    v12 = [(REMCDObject *)&v14 shouldCascadeMarkAsDeleteInto:intoCopy forRelationship:relationshipCopy];
  }

  return v12;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = +[NSMapTable weakToStrongObjectsMapTable];
    v3 = qword_100952B60;
    qword_100952B60 = v2;

    _objc_release_x1(v2, v3);
  }
}

+ (id)_fetchCloudKitAccountsInContext:(id)context
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1000E6888;
  v13 = sub_1000E6898;
  v14 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000E68A0;
  v6[3] = &unk_1008D9A28;
  v8 = &v9;
  contextCopy = context;
  v7 = contextCopy;
  [contextCopy performBlockAndWait:v6];
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

+ (id)allCloudKitAccountsInContext:(id)context
{
  contextCopy = context;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000E6888;
  v17 = sub_1000E6898;
  v18 = 0;
  os_unfair_lock_lock(&unk_100952B68);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000E6C7C;
  v9[3] = &unk_1008DBB70;
  v5 = contextCopy;
  v10 = v5;
  v11 = &v13;
  selfCopy = self;
  sub_1000E6C7C(v9);
  os_unfair_lock_unlock(&unk_100952B68);

  v6 = v14[5];
  if (!v6)
  {
    v6 = &__NSArray0__struct;
  }

  v7 = v6;
  _Block_object_dispose(&v13, 8);

  return v7;
}

+ (unint64_t)countCloudBasedAccountsInContext:(id)context
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000E7000;
  v6[3] = &unk_1008D9A28;
  v8 = &v9;
  contextCopy = context;
  v7 = contextCopy;
  [contextCopy performBlockAndWait:v6];
  v4 = v10[3];

  _Block_object_dispose(&v9, 8);
  return v4;
}

+ (id)_groundTruth_primaryActiveCloudKitAccountInContext:(id)context
{
  v3 = [self allCloudKitAccountsInContext:context];
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        accountTypeHost = [v10 accountTypeHost];
        if ([accountTypeHost isPrimaryCloudKit])
        {
          inactive = [v10 inactive];

          if ((inactive & 1) == 0)
          {
            [v4 addObject:v10];
          }
        }

        else
        {
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  if (![v4 count])
  {
    v13 = +[REMLog cloudkit];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10076E104();
    }
  }

  firstObject = [v4 firstObject];
  if ([v4 count] >= 2)
  {
    v15 = +[REMLog cloudkit];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_10076E138(v4, firstObject);
    }
  }

  return firstObject;
}

+ (id)unsafeUntilSystemReady_primaryCloudKitAccountInContext:(id)context appleAccountUtilities:(id)utilities
{
  contextCopy = context;
  utilitiesCopy = utilities;
  v8 = [self allCloudKitAccountsInContext:contextCopy];
  if ([v8 count])
  {
    unsafeUntilSystemReady_primaryICloudACAccount = [utilitiesCopy unsafeUntilSystemReady_primaryICloudACAccount];
    if (unsafeUntilSystemReady_primaryICloudACAccount)
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x3032000000;
      v20 = sub_1000E6888;
      v21 = sub_1000E6898;
      v22 = 0;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000E74E8;
      v13[3] = &unk_1008D9EE0;
      v14 = v8;
      unsafeUntilSystemReady_primaryICloudACAccount = unsafeUntilSystemReady_primaryICloudACAccount;
      v15 = unsafeUntilSystemReady_primaryICloudACAccount;
      v16 = &v17;
      [contextCopy performBlockAndWait:v13];
      v10 = v18[5];

      _Block_object_dispose(&v17, 8);
      goto LABEL_10;
    }

    v11 = +[REMLog cloudkit];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10076E1F0();
    }
  }

  else
  {
    unsafeUntilSystemReady_primaryICloudACAccount = +[REMLog cloudkit];
    if (os_log_type_enabled(unsafeUntilSystemReady_primaryICloudACAccount, OS_LOG_TYPE_ERROR))
    {
      sub_10076E224();
    }
  }

  v10 = 0;
LABEL_10:

  return v10;
}

+ (REMCDAccount)accountWithCKIdentifier:(id)identifier context:(id)context
{
  identifierCopy = identifier;
  contextCopy = context;
  identifierCopy = [NSPredicate predicateWithFormat:@"ckIdentifier == %@", identifierCopy];
  v9 = [self accountsMatchingPredicate:identifierCopy context:contextCopy];

  firstObject = [v9 firstObject];
  v11 = firstObject;
  if (firstObject && [firstObject inactive])
  {
    v12 = +[REMLog cloudkit];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "-accountWithCKIdentifier: fetched an inactive account {ckIdentifier: %{public}@}", buf, 0xCu);
    }
  }

  return v11;
}

+ (id)cloudKitAccountWithCKIdentifier:(id)identifier context:(id)context
{
  identifierCopy = identifier;
  contextCopy = context;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000E6888;
  v20 = sub_1000E6898;
  v21 = 0;
  if ([identifierCopy length])
  {
    if (contextCopy)
    {
      os_unfair_lock_lock(&unk_100952B68);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000E7C60;
      v11[3] = &unk_1008DC7C0;
      v12 = contextCopy;
      v14 = &v16;
      v13 = identifierCopy;
      selfCopy = self;
      sub_1000E7C60(v11);
      os_unfair_lock_unlock(&unk_100952B68);

      v8 = v17[5];
      goto LABEL_9;
    }

    v9 = +[REMLog cloudkit];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10076E258();
    }
  }

  else
  {
    v9 = +[REMLog cloudkit];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10076E28C();
    }
  }

  v8 = 0;
LABEL_9:
  _Block_object_dispose(&v16, 8);

  return v8;
}

+ (BOOL)clearAppleCloudKitTable
{
  os_unfair_lock_lock(&unk_100952B68);
  v2 = [qword_100952B60 count] != 0;
  [qword_100952B60 removeAllObjects];
  os_unfair_lock_unlock(&unk_100952B68);
  return v2;
}

- (BOOL)generateAndSavePersonIDSaltIfNeededWithContext:(id)context
{
  contextCopy = context;
  accountTypeHost = [(REMCDAccount *)self accountTypeHost];
  isPrimaryCloudKit = [accountTypeHost isPrimaryCloudKit];

  if ((isPrimaryCloudKit & 1) == 0)
  {
    sub_10076E2C0();
  }

  personIDSalt = [(REMCDAccount *)self personIDSalt];

  if (personIDSalt)
  {
    v8 = +[REMLog cloudkit];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10076E330(self);
    }

LABEL_6:
    LOBYTE(v9) = 0;
    goto LABEL_18;
  }

  v10 = +[PersonIDSaltGenerator randomSalt];
  if (!v10)
  {
    v8 = +[REMLog cloudkit];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10076E4A8(self);
    }

    goto LABEL_6;
  }

  v8 = v10;
  [(REMCDAccount *)self setPersonIDSalt:v10];
  createResolutionTokenMapIfNecessary = [(REMCDObject *)self createResolutionTokenMapIfNecessary];
  v12 = @"personIDSalt";
  [createResolutionTokenMapIfNecessary updateForKey:v12];
  v13 = [createResolutionTokenMapIfNecessary getTokenForKey:v12];
  [(REMCDObject *)self updateChangeCount];
  identifier = [(REMCDAccount *)self identifier];
  uUIDString = [identifier UUIDString];
  personIDSalt2 = [(REMCDAccount *)self personIDSalt];
  v17 = [personIDSalt2 base64EncodedStringWithOptions:0];
  v24 = v13;
  v9 = [contextCopy ic_saveWithLogDescription:{@"Setting account .personIDSalt {accountID: %@, salt: %@, resolutionToken: %@}", uUIDString, v17, v13}];

  if (v9)
  {
    personIDSalt3 = [(REMCDAccount *)self personIDSalt];
    v19 = [(REMCDAccount *)self postAccountPropertyChangeNotificationWithKey:@"personIDSalt_v1" changedValue:personIDSalt3];
    v20 = +[REMLog cloudkit];
    v21 = v20;
    if (v19)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        remObjectID = [(REMCDObject *)self remObjectID];
        *buf = 138543618;
        v26 = remObjectID;
        v27 = 2112;
        v28 = personIDSalt3;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "generateAndSavePersonIDSaltIfNeeded...: Posted RDStoreControllerREMAccountPropertiesDidUpdate {accountID: %{public}@, salt: %@}", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10076E400(self);
    }
  }

LABEL_18:
  return v9;
}

+ (id)accountByCKIdentifierFrom:(id)from
{
  fromCopy = from;
  v4 = +[NSMutableDictionary dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = fromCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        ckIdentifier = [v10 ckIdentifier];
        if (ckIdentifier)
        {
          [v4 setObject:v10 forKeyedSubscript:ckIdentifier];
        }

        else
        {
          v12 = +[REMLog cloudkit];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_10076E530(v19, v10, &v20, v12);
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

+ (id)recordTypes
{
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (id)recordName
{
  selfCopy = self;
  REMCDAccount.recordName()();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (id)recordType
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  swift_getObjCClassMetadata();
  dCopy = d;
  contextCopy = context;
  v12 = static REMCDAccount.existingCloudObject(for:accountID:managedObjectContext:)(dCopy, v7, v9, contextCopy);

  return v12;
}

+ (id)allCloudObjectsInContext:(id)context
{
  swift_getObjCClassMetadata();
  contextCopy = context;
  static REMCDAccount.allCloudObjects(in:)(contextCopy);

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

+ (id)allCloudObjectIDsInContext:(id)context
{
  swift_getObjCClassMetadata();
  contextCopy = context;
  static REMCDAccount.allCloudObjectIDs(in:)(contextCopy);

  sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

+ (id)newCloudObjectForRecord:(id)record accountID:(id)d context:(id)context
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  swift_getObjCClassMetadata();
  recordCopy = record;
  contextCopy = context;
  static REMCDAccount.newCloudObject(for:accountID:managedObjectContext:)(recordCopy, v7, v9, contextCopy);
  v13 = v12;

  return v13;
}

- (void)sortChildrenObjects
{
  selfCopy = self;
  REMCDAccount.sortChildrenObjects()();
}

- (BOOL)mergeMigrationStateFromRecord:(id)record
{
  recordCopy = record;
  selfCopy = self;
  LOBYTE(self) = REMCDAccount.mergeMigrationState(fromRecord:)(recordCopy);

  return self & 1;
}

- (void)mergeDataFromRecord:(id)record accountID:(id)d
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  recordCopy = record;
  selfCopy = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  REMCDAccount.mergeData(from:accountID:)(recordCopy, v11);
}

- (id)newlyCreatedRecord
{
  selfCopy = self;
  v3 = REMCDAccount.newlyCreatedRecord()();

  return v3;
}

- (BOOL)needsToBePushedToCloud
{
  selfCopy = self;
  v3 = REMCDAccount.needsToBePushedToCloud()();

  return v3;
}

+ (void)clearUserRecord:(id)record
{
  recordCopy = record;
  sub_100724F6C();
}

+ (void)writeMigrationStateTo:(id)to didChooseToMigrate:(BOOL)migrate didFinishMigration:(BOOL)migration
{
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  toCopy = to;
  CKRecordKeyValueSetting.subscript.setter();
  CKRecordKeyValueSetting.subscript.setter();
}

- (void)cleanUpAfterLocalObjectMerge
{
  selfCopy = self;
  REMCDAccount.cleanUpAfterLocalObjectMerge()();
}

@end