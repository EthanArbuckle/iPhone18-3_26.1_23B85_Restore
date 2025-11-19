@interface REMCDAccount
+ (BOOL)clearAppleCloudKitTable;
+ (REMCDAccount)accountWithCKIdentifier:(id)a3 context:(id)a4;
+ (id)_fetchCloudKitAccountsInContext:(id)a3;
+ (id)_groundTruth_primaryActiveCloudKitAccountInContext:(id)a3;
+ (id)accountByCKIdentifierFrom:(id)a3;
+ (id)allCloudKitAccountsInContext:(id)a3;
+ (id)allCloudObjectIDsInContext:(id)a3;
+ (id)allCloudObjectsInContext:(id)a3;
+ (id)cloudKitAccountWithCKIdentifier:(id)a3 context:(id)a4;
+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)newCloudObjectForRecord:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)predicateForCloudKitAccountsWithKeyPathPrefix:(id)a3;
+ (id)recordTypes;
+ (id)unsafeUntilSystemReady_primaryCloudKitAccountInContext:(id)a3 appleAccountUtilities:(id)a4;
+ (unint64_t)countCloudBasedAccountsInContext:(id)a3;
+ (void)clearUserRecord:(id)a3;
+ (void)initialize;
+ (void)writeMigrationStateTo:(id)a3 didChooseToMigrate:(BOOL)a4 didFinishMigration:(BOOL)a5;
- (BOOL)generateAndSavePersonIDSaltIfNeededWithContext:(id)a3;
- (BOOL)mergeMigrationStateFromRecord:(id)a3;
- (BOOL)needsToBePushedToCloud;
- (BOOL)postAccountPropertyChangeNotificationWithKey:(id)a3 changedValue:(id)a4;
- (BOOL)shouldCascadeMarkAsDeleteInto:(id)a3 forRelationship:(id)a4;
- (NSData)listIDsMergeableOrdering;
- (NSData)personIDSalt;
- (id)accountTypeHost;
- (id)newlyCreatedRecord;
- (id)recordName;
- (id)recordType;
- (int64_t)compare:(id)a3;
- (void)cleanUpAfterLocalObjectMerge;
- (void)mergeDataFromRecord:(id)a3 accountID:(id)a4;
- (void)setListIDsMergeableOrdering:(id)a3;
- (void)setPersonIDSalt:(id)a3;
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

+ (id)predicateForCloudKitAccountsWithKeyPathPrefix:(id)a3
{
  v3 = @"type IN %@";
  if (a3)
  {
    v3 = [NSString stringWithFormat:@"%@.%@", a3, @"type IN %@"];
  }

  v4 = cloudKitAccountTypes();
  v5 = [NSPredicate predicateWithFormat:v3, v4];

  return v5;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = REMDynamicCast();

  if (v5 && ([v5 name], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v5 name];
    v8 = [(REMCDAccount *)self name];
    v9 = [v8 compare:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setPersonIDSalt:(id)a3
{
  v4 = a3;
  [(REMCDObject *)self willChangeValueForKey:@"personIDSalt"];
  [(REMCDObject *)self willChangeValueForKey:@"personIDSalt_v1"];
  [(REMCDAccount *)self setPrimitiveValue:v4 forKey:@"personIDSalt_v1"];

  [(REMCDObject *)self didChangeValueForKey:@"personIDSalt_v1"];

  [(REMCDObject *)self didChangeValueForKey:@"personIDSalt"];
}

- (void)setListIDsMergeableOrdering:(id)a3
{
  v4 = a3;
  [(REMCDObject *)self willChangeValueForKey:@"listIDsMergeableOrdering"];
  [(REMCDObject *)self willChangeValueForKey:@"listIDsMergeableOrdering_v2"];
  [(REMCDAccount *)self setPrimitiveValue:v4 forKey:@"listIDsMergeableOrdering_v2"];

  [(REMCDObject *)self didChangeValueForKey:@"listIDsMergeableOrdering_v2"];

  [(REMCDObject *)self didChangeValueForKey:@"listIDsMergeableOrdering"];
}

- (BOOL)postAccountPropertyChangeNotificationWithKey:(id)a3 changedValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v10 = [(REMCDObject *)self remObjectID];
    if (v10 && (-[REMCDAccount accountTypeHost](self, "accountTypeHost"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isValid], v11, v12))
    {
      v13 = [(REMCDAccount *)self type];
      v14 = +[NSMutableDictionary dictionary];
      v15 = +[RDAccountPropertiesNotifier notificationUserInfoPropertyNameKey];
      [v14 setValue:v6 forKey:v15];

      v16 = +[RDAccountPropertiesNotifier notificationUserInfoPropertyValueKey];
      [v14 setValue:v8 forKey:v16];

      v17 = +[RDAccountPropertiesNotifier notificationUserInfoAccountObjectIDKey];
      [v14 setValue:v10 forKey:v17];

      v18 = [NSNumber numberWithInteger:v13];
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

- (BOOL)shouldCascadeMarkAsDeleteInto:(id)a3 forRelationship:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 name];
  v9 = [v8 isEqualToString:@"lists"];

  if (v9)
  {
    objc_opt_class();
    v10 = REMCheckedDynamicCast();
    v11 = [v10 parentList];
    v12 = v11 == 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = REMCDAccount;
    v12 = [(REMCDObject *)&v14 shouldCascadeMarkAsDeleteInto:v6 forRelationship:v7];
  }

  return v12;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = +[NSMapTable weakToStrongObjectsMapTable];
    v3 = qword_100952B60;
    qword_100952B60 = v2;

    _objc_release_x1(v2, v3);
  }
}

+ (id)_fetchCloudKitAccountsInContext:(id)a3
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
  v3 = a3;
  v7 = v3;
  [v3 performBlockAndWait:v6];
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

+ (id)allCloudKitAccountsInContext:(id)a3
{
  v4 = a3;
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
  v5 = v4;
  v10 = v5;
  v11 = &v13;
  v12 = a1;
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

+ (unint64_t)countCloudBasedAccountsInContext:(id)a3
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
  v3 = a3;
  v7 = v3;
  [v3 performBlockAndWait:v6];
  v4 = v10[3];

  _Block_object_dispose(&v9, 8);
  return v4;
}

+ (id)_groundTruth_primaryActiveCloudKitAccountInContext:(id)a3
{
  v3 = [a1 allCloudKitAccountsInContext:a3];
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
        v11 = [v10 accountTypeHost];
        if ([v11 isPrimaryCloudKit])
        {
          v12 = [v10 inactive];

          if ((v12 & 1) == 0)
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

  v14 = [v4 firstObject];
  if ([v4 count] >= 2)
  {
    v15 = +[REMLog cloudkit];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_10076E138(v4, v14);
    }
  }

  return v14;
}

+ (id)unsafeUntilSystemReady_primaryCloudKitAccountInContext:(id)a3 appleAccountUtilities:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 allCloudKitAccountsInContext:v6];
  if ([v8 count])
  {
    v9 = [v7 unsafeUntilSystemReady_primaryICloudACAccount];
    if (v9)
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
      v9 = v9;
      v15 = v9;
      v16 = &v17;
      [v6 performBlockAndWait:v13];
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
    v9 = +[REMLog cloudkit];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10076E224();
    }
  }

  v10 = 0;
LABEL_10:

  return v10;
}

+ (REMCDAccount)accountWithCKIdentifier:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSPredicate predicateWithFormat:@"ckIdentifier == %@", v6];
  v9 = [a1 accountsMatchingPredicate:v8 context:v7];

  v10 = [v9 firstObject];
  v11 = v10;
  if (v10 && [v10 inactive])
  {
    v12 = +[REMLog cloudkit];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "-accountWithCKIdentifier: fetched an inactive account {ckIdentifier: %{public}@}", buf, 0xCu);
    }
  }

  return v11;
}

+ (id)cloudKitAccountWithCKIdentifier:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000E6888;
  v20 = sub_1000E6898;
  v21 = 0;
  if ([v6 length])
  {
    if (v7)
    {
      os_unfair_lock_lock(&unk_100952B68);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000E7C60;
      v11[3] = &unk_1008DC7C0;
      v12 = v7;
      v14 = &v16;
      v13 = v6;
      v15 = a1;
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

- (BOOL)generateAndSavePersonIDSaltIfNeededWithContext:(id)a3
{
  v4 = a3;
  v5 = [(REMCDAccount *)self accountTypeHost];
  v6 = [v5 isPrimaryCloudKit];

  if ((v6 & 1) == 0)
  {
    sub_10076E2C0();
  }

  v7 = [(REMCDAccount *)self personIDSalt];

  if (v7)
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
  v11 = [(REMCDObject *)self createResolutionTokenMapIfNecessary];
  v12 = @"personIDSalt";
  [v11 updateForKey:v12];
  v13 = [v11 getTokenForKey:v12];
  [(REMCDObject *)self updateChangeCount];
  v14 = [(REMCDAccount *)self identifier];
  v15 = [v14 UUIDString];
  v16 = [(REMCDAccount *)self personIDSalt];
  v17 = [v16 base64EncodedStringWithOptions:0];
  v24 = v13;
  v9 = [v4 ic_saveWithLogDescription:{@"Setting account .personIDSalt {accountID: %@, salt: %@, resolutionToken: %@}", v15, v17, v13}];

  if (v9)
  {
    v18 = [(REMCDAccount *)self personIDSalt];
    v19 = [(REMCDAccount *)self postAccountPropertyChangeNotificationWithKey:@"personIDSalt_v1" changedValue:v18];
    v20 = +[REMLog cloudkit];
    v21 = v20;
    if (v19)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [(REMCDObject *)self remObjectID];
        *buf = 138543618;
        v26 = v22;
        v27 = 2112;
        v28 = v18;
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

+ (id)accountByCKIdentifierFrom:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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
        v11 = [v10 ckIdentifier];
        if (v11)
        {
          [v4 setObject:v10 forKeyedSubscript:v11];
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
  v2 = self;
  REMCDAccount.recordName()();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (id)recordType
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  swift_getObjCClassMetadata();
  v10 = a3;
  v11 = a5;
  v12 = static REMCDAccount.existingCloudObject(for:accountID:managedObjectContext:)(v10, v7, v9, v11);

  return v12;
}

+ (id)allCloudObjectsInContext:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  static REMCDAccount.allCloudObjects(in:)(v4);

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

+ (id)allCloudObjectIDsInContext:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  static REMCDAccount.allCloudObjectIDs(in:)(v4);

  sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

+ (id)newCloudObjectForRecord:(id)a3 accountID:(id)a4 context:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  swift_getObjCClassMetadata();
  v10 = a3;
  v11 = a5;
  static REMCDAccount.newCloudObject(for:accountID:managedObjectContext:)(v10, v7, v9, v11);
  v13 = v12;

  return v13;
}

- (void)sortChildrenObjects
{
  v2 = self;
  REMCDAccount.sortChildrenObjects()();
}

- (BOOL)mergeMigrationStateFromRecord:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = REMCDAccount.mergeMigrationState(fromRecord:)(v4);

  return self & 1;
}

- (void)mergeDataFromRecord:(id)a3 accountID:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a3;
  v10 = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  REMCDAccount.mergeData(from:accountID:)(v9, v11);
}

- (id)newlyCreatedRecord
{
  v2 = self;
  v3 = REMCDAccount.newlyCreatedRecord()();

  return v3;
}

- (BOOL)needsToBePushedToCloud
{
  v2 = self;
  v3 = REMCDAccount.needsToBePushedToCloud()();

  return v3;
}

+ (void)clearUserRecord:(id)a3
{
  v3 = a3;
  sub_100724F6C();
}

+ (void)writeMigrationStateTo:(id)a3 didChooseToMigrate:(BOOL)a4 didFinishMigration:(BOOL)a5
{
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  v6 = a3;
  CKRecordKeyValueSetting.subscript.setter();
  CKRecordKeyValueSetting.subscript.setter();
}

- (void)cleanUpAfterLocalObjectMerge
{
  v2 = self;
  REMCDAccount.cleanUpAfterLocalObjectMerge()();
}

@end