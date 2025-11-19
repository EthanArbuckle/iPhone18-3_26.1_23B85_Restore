@interface KCSharingStore
- (BOOL)applyIncomingDeletionsInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4;
- (BOOL)applyIncomingEntriesInTransaction:(__OpaqueSecDbConnection *)a3 updateInfos:(id)a4 error:(id *)a5;
- (BOOL)applyIncomingShareDeletionsInTransaction:(__OpaqueSecDbConnection *)a3 updateInfos:(id)a4 error:(id *)a5;
- (BOOL)dropDeletionsForRecordIDs:(id)a3 inTransaction:(__OpaqueSecDbConnection *)a4 error:(id *)a5;
- (BOOL)dropOutgoingChangeForRecordID:(id)a3 error:(id *)a4;
- (BOOL)dropOutgoingChangeForRecordID:(id)a3 inTransaction:(__OpaqueSecDbConnection *)a4 error:(id *)a5;
- (BOOL)enumerateRowsInRemotelyDeletedZonesForEntryModel:(Class)a3 inTransaction:(__OpaqueSecDbConnection *)a4 withError:(id *)a5 usingBlock:(id)a6;
- (BOOL)enumerateRowsInRemotelyDeletedZonesForLocalItemsInTransaction:(__OpaqueSecDbConnection *)a3 withError:(id *)a4 usingBlock:(id)a5;
- (BOOL)enumerateRowsInZoneIDs:(id)a3 forEntryModel:(Class)a4 inTransaction:(__OpaqueSecDbConnection *)a5 withError:(id *)a6 usingBlock:(id)a7;
- (BOOL)enumerateRowsInZoneIDs:(id)a3 forLocalItemsInTransaction:(__OpaqueSecDbConnection *)a4 withError:(id *)a5 usingBlock:(id)a6;
- (BOOL)fingerprintAllPasswordsInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4;
- (BOOL)fingerprintAllPrivateKeysInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4;
- (BOOL)fingerprintPasswordDatabaseItem:(SecDbItem *)a3 inTransaction:(__OpaqueSecDbConnection *)a4 error:(id *)a5;
- (BOOL)fingerprintPrivateKeyDatabaseItem:(SecDbItem *)a3 inTransaction:(__OpaqueSecDbConnection *)a4 error:(id *)a5;
- (BOOL)hasIncomingEntries:(BOOL *)a3 deletions:(BOOL *)a4 inTransaction:(__OpaqueSecDbConnection *)a5 error:(id *)a6;
- (BOOL)hasOutgoingChangesInDatabaseWithScope:(int64_t)a3;
- (BOOL)mergeWithUpdateInfos:(id)a3 error:(id *)a4;
- (BOOL)removeValueForMetadataKey:(id)a3 error:(id *)a4;
- (BOOL)reprocessAlreadyAppliedMirrorEntriesInTransaction:(__OpaqueSecDbConnection *)a3 forEntryType:(int64_t *)a4 withFixUpPlan:(BOOL)a5 error:(id *)a6;
- (BOOL)reprocessMirrorEntriesForEntryType:(int64_t *)a3 UsingFixUpPlan:(BOOL)a4 WithError:(id *)a5;
- (BOOL)resetMetadataInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4;
- (BOOL)resetSyncTablesInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4;
- (BOOL)resetWithError:(id *)a3;
- (BOOL)resolveConflictingPrimaryKeysForEntriesOfType:(int64_t)a3 inTransaction:(__OpaqueSecDbConnection *)a4 error:(id *)a5;
- (BOOL)resolveConflictingPrimaryKeysInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4;
- (BOOL)resolveMergeConflictsInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4;
- (BOOL)restageUnappliedMirrorEntriesInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4;
- (BOOL)setValue:(id)a3 forMetadataKey:(id)a4 error:(id *)a5;
- (BOOL)stageAllOutgoingChangesInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4;
- (BOOL)stageAllOutgoingChangesWithError:(id *)a3;
- (BOOL)stageIncomingDeletionForRecordID:(id)a3 error:(id *)a4;
- (BOOL)stageIncomingRecord:(id)a3 error:(id *)a4;
- (BOOL)stageIncomingRow:(id)a3 error:(id *)a4;
- (BOOL)stageOutgoingShares:(id)a3 deletionsForShares:(id)a4 error:(id *)a5;
- (BOOL)updateMirrorWithDeletedZoneIDs:(id)a3 error:(id *)a4;
- (BOOL)updateMirrorWithDeletedZoneIDs:(id)a3 inTransaction:(__OpaqueSecDbConnection *)a4 error:(id *)a5;
- (BOOL)updateMirrorWithSavedRecords:(id)a3 deletedRecordIDs:(id)a4 error:(id *)a5;
- (BOOL)wipeLocalPasswordsInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4;
- (BOOL)wipeLocalPrivateKeysInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4;
- (BOOL)wipeWithError:(id *)a3;
- (BOOL)withConnection:(id)a3 error:(id *)a4;
- (BOOL)withLocalFingerprintsTable:(id)a3 inTransaction:(__OpaqueSecDbConnection *)a4 error:(id *)a5;
- (KCSharingStore)initWithSecDB:(__OpaqueSecDb *)a3 accessGroups:(id)a4 metadataDomain:(id)a5;
- (KCSharingStore)initWithSecDB:(__OpaqueSecDb *)a3 loggingIdentifier:(id)a4;
- (__OpaqueSecDb)getStoreDbRef;
- (id)countAllSharingGroupAndItems:(Class)a3 withError:(id *)a4;
- (id)fetchAllCKSharesInMirrorForGroupID:(id)a3 error:(id *)a4;
- (id)fetchAllEntriesForModel:(Class)a3 withTransform:(id)a4 error:(id *)a5;
- (id)fetchAllIncomingRowsWithError:(id *)a3;
- (id)fetchAllMirrorEntriesWithError:(id *)a3;
- (id)fetchAllOutgoingRowsWithError:(id *)a3;
- (id)fetchAllSharingGroupsInMirrorWithError:(id *)a3;
- (id)fetchCKShareFromMirrorForGroupID:(id)a3 error:(id *)a4;
- (id)fetchOutgoingChangesWithCursor:(id)a3 maxChangeCount:(int64_t)a4 maxBatchSizeInBytes:(int64_t)a5 error:(id *)a6;
- (id)fetchOutgoingDatabaseItemWithRecordID:(id)a3 inTransaction:(__OpaqueSecDbConnection *)a4 error:(id *)a5;
- (id)fetchOutgoingRecordWithRecordID:(id)a3 error:(id *)a4;
- (id)fetchValueForMetadataKey:(id)a3 error:(id *)a4;
- (id)fetchZoneIDsToDeleteFromDatabaseWithScope:(int64_t)a3 error:(id *)a4;
- (id)fetchZonesToSaveToDatabaseWithScope:(int64_t)a3 error:(id *)a4;
- (id)plan;
- (id)stageAllOutgoingChangedPasswordsInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4;
- (id)stageAllOutgoingChangedPrivateKeysInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4;
- (id)stageAllOutgoingDeletionsInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4;
- (id)stageAllOutgoingNewPasswordsInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4;
- (id)stageAllOutgoingNewPrivateKeysInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4;
- (void)logMirrorEntryInfoWithMirrorEntry:(id)a3;
@end

@implementation KCSharingStore

- (__OpaqueSecDb)getStoreDbRef
{
  result = self->_db;
  if (!result)
  {
    return sub_10000869C(0);
  }

  return result;
}

- (id)fetchAllOutgoingRowsWithError:(id *)a3
{
  v5 = objc_opt_class();

  return [(KCSharingStore *)self fetchAllEntriesForModel:v5 withTransform:&stru_100334648 error:a3];
}

- (id)fetchAllIncomingRowsWithError:(id *)a3
{
  v5 = objc_opt_class();

  return [(KCSharingStore *)self fetchAllEntriesForModel:v5 withTransform:&stru_100334628 error:a3];
}

- (id)fetchAllMirrorEntriesWithError:(id *)a3
{
  v5 = objc_opt_class();

  return [(KCSharingStore *)self fetchAllEntriesForModel:v5 withTransform:&stru_100334608 error:a3];
}

- (id)fetchCKShareFromMirrorForGroupID:(id)a3 error:(id *)a4
{
  v4 = [(KCSharingStore *)self fetchAllCKSharesInMirrorForGroupID:a3 error:a4];
  v5 = [v4 firstObject];

  return v5;
}

- (id)fetchAllSharingGroupsInMirrorWithError:(id *)a3
{
  v4 = [(KCSharingStore *)self fetchAllCKSharesInMirrorForGroupID:0 error:a3];
  if (!v4 || a3 && *a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = +[NSMutableArray array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = sub_1000314F8(*(*(&v13 + 1) + 8 * i));
          if (v11)
          {
            [v5 addObject:{v11, v13}];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

- (id)fetchAllCKSharesInMirrorForGroupID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  +[NSMutableArray array];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003CEC0;
  v12[3] = &unk_100334550;
  v15 = v7;
  v8 = v13 = v6;
  v14 = v8;
  v9 = v6;
  if ([(KCSharingStore *)self withConnection:v12 error:a4])
  {
    v10 = [v8 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)fetchAllEntriesForModel:(Class)a3 withTransform:(id)a4 error:(id *)a5
{
  v8 = a4;
  +[NSMutableArray array];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003D374;
  v13[3] = &unk_1003345C8;
  v15 = v8;
  v9 = v16 = a3;
  v14 = v9;
  v10 = v8;
  if ([(KCSharingStore *)self withConnection:v13 error:a5])
  {
    v11 = [v9 copy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)countAllSharingGroupAndItems:(Class)a3 withError:(id *)a4
{
  v34[0] = &off_100363F10;
  v34[1] = &off_100363F40;
  v35[0] = &off_100363F28;
  v35[1] = &off_100363F28;
  v34[2] = &off_100363F58;
  v34[3] = &off_100363F70;
  v35[2] = &off_100363F28;
  v35[3] = &off_100363F28;
  v7 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:4];
  v8 = [v7 mutableCopy];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10003D8E8;
  v21[3] = &unk_100334550;
  v23 = a3;
  v21[4] = self;
  v9 = v8;
  v22 = v9;
  if ([(KCSharingStore *)self withConnection:v21 error:a4])
  {
    v10 = [v9 allValues];
    v11 = [v10 valueForKeyPath:@"@sum.self"];
    v12 = [v11 integerValue];

    loggingIdentifier = self->_loggingIdentifier;
    v14 = KCSharingLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v9 objectForKeyedSubscript:&off_100363F10];
      v16 = [v9 objectForKeyedSubscript:&off_100363F40];
      v17 = [v9 objectForKeyedSubscript:&off_100363F58];
      v18 = [v9 objectForKeyedSubscript:&off_100363F70];
      *buf = 138413315;
      v25 = v15;
      v26 = 2113;
      v27 = v16;
      v28 = 2113;
      v29 = v17;
      v30 = 2113;
      v31 = v18;
      v32 = 2048;
      v33 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Final counts - Unknown: %@, Passkey: %{private}@, Password: %{private}@, Share: %{private}@, Sum: %lu", buf, 0x34u);
    }

    v19 = v9;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)resetMetadataInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4
{
  loggingIdentifier = self->_loggingIdentifier;
  v8 = KCSharingLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Wiping local metadata...", buf, 2u);
  }

  v33 = 0;
  v9 = sub_100007604(@"genp", &qword_10039E090, &unk_10039E088);
  v10 = sub_100007698(v9, 0, 0, 0, &v33);
  if (v10)
  {
    v11 = v10;
    v12 = [(KCSharingStore *)self accessGroups];
    v13 = [v12 entryAccessGroup];
    sub_1000079A0(kSecAttrAccessGroup, v13, v11);

    v14 = [(KCSharingStore *)self metadataDomain];
    sub_1000079A0(kSecAttrService, v14, v11);

    *buf = 0;
    v30 = buf;
    v31 = 0x2020000000;
    v32 = 1;
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v23 = v11;
    v24 = 0;
    v21[6] = a3;
    v22.isa = _NSConcreteStackBlock;
    *&v22.flags = 3221225472;
    v22.invoke = sub_10003DE7C;
    v22.descriptor = &unk_100334508;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10003DEBC;
    v21[3] = &unk_100334AE8;
    v21[4] = &v25;
    v21[5] = buf;
    v15 = sub_100014718(v11, a3, &v24, &stru_1003344E8, &v22, 0, 0, v21);
    sub_10000DF70(v11, 0);
    if (v15)
    {
      if (v30[24])
      {
        v16 = 1;
LABEL_21:
        _Block_object_dispose(&v25, 8);
        _Block_object_dispose(buf, 8);
        return v16;
      }

      v19 = v26[3];
      if (a4)
      {
        v16 = 0;
        *a4 = v19;
        v26[3] = 0;
        goto LABEL_21;
      }

      if (v19)
      {
        v26[3] = 0;
        CFRelease(v19);
      }
    }

    else
    {
      v18 = v24;
      if (a4)
      {
        v16 = 0;
        *a4 = v24;
        goto LABEL_21;
      }

      if (v24)
      {
        v24 = 0;
        CFRelease(v18);
      }
    }

    v16 = 0;
    goto LABEL_21;
  }

  v17 = v33;
  if (a4)
  {
    *a4 = v33;
  }

  else if (v33)
  {
    v33 = 0;
    CFRelease(v17);
  }

  return 1;
}

- (BOOL)resetSyncTablesInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4
{
  loggingIdentifier = self->_loggingIdentifier;
  v8 = KCSharingLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Wiping sync tables...", buf, 2u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v23[0] = @"DELETE FROM sharingIncomingQueue WHERE agrp = ?";
  v23[1] = @"DELETE FROM sharingMirror WHERE agrp = ?";
  v23[2] = @"DELETE FROM sharingOutgoingQueue WHERE agrp = ?";
  v9 = [NSArray arrayWithObjects:v23 count:3];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10003E134;
        v17[3] = &unk_100333E70;
        v17[4] = self;
        v17[5] = a3;
        if (!sub_100069BC0(a3, v14, a4, v17))
        {
          v15 = 0;
          goto LABEL_13;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_13:

  return v15;
}

- (BOOL)wipeLocalPasswordsInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4
{
  loggingIdentifier = self->_loggingIdentifier;
  v7 = KCSharingLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Wiping local passwords...", buf, 2u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003E2D4;
  v9[3] = &unk_100334488;
  v9[4] = a3;
  return sub_100069BC0(a3, @"DELETE FROM inet WHERE ggrp <> ''", a4, v9);
}

- (BOOL)wipeLocalPrivateKeysInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4
{
  loggingIdentifier = self->_loggingIdentifier;
  v7 = KCSharingLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Wiping local private keys...", buf, 2u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003E3D0;
  v9[3] = &unk_100334488;
  v9[4] = a3;
  return sub_100069BC0(a3, @"DELETE FROM keys WHERE ggrp <> ''", a4, v9);
}

- (BOOL)wipeWithError:(id *)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10003E510;
  v11 = sub_10003E520;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003E528;
  v6[3] = &unk_100344BB0;
  v6[4] = self;
  v6[5] = &v13;
  v6[6] = &v7;
  sub_1000898F4(dword_10039E2F8, v6);
  v4 = *(v14 + 24);
  if (a3 && (v14[3] & 1) == 0)
  {
    *a3 = v8[5];
    v4 = *(v14 + 24);
  }

  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
  return v4 & 1;
}

- (BOOL)resetWithError:(id *)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10003E510;
  v11 = sub_10003E520;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003E8F4;
  v6[3] = &unk_100344BB0;
  v6[4] = self;
  v6[5] = &v13;
  v6[6] = &v7;
  sub_1000898F4(dword_10039E2F8, v6);
  v4 = *(v14 + 24);
  if (a3 && (v14[3] & 1) == 0)
  {
    *a3 = v8[5];
    v4 = *(v14 + 24);
  }

  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
  return v4 & 1;
}

- (BOOL)dropOutgoingChangeForRecordID:(id)a3 inTransaction:(__OpaqueSecDbConnection *)a4 error:(id *)a5
{
  v8 = a3;
  [(KCSharingStore *)self plan];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10003EC18;
  v17 = &unk_100333F30;
  v18 = self;
  v19 = v8;
  v9 = v21 = a4;
  v20 = v9;
  v10 = v8;
  if (sub_100069BC0(a4, @"SELECT rowid FROM sharingOutgoingQueue                       WHERE (agrp, ownr, zone, uuid) = (?1, ?2, ?3, ?4)", a5, &v14))
  {
    v11 = [(KCSharingStore *)self accessGroups:v14];
    v12 = [v9 applyInTransaction:a4 withAccessGroups:v11 error:a5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)dropOutgoingChangeForRecordID:(id)a3 error:(id *)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003EFE0;
  v7[3] = &unk_100333FF8;
  v8 = self;
  v9 = a3;
  v5 = v9;
  LOBYTE(a4) = [(KCSharingStore *)v8 withConnection:v7 error:a4];

  return a4;
}

- (BOOL)updateMirrorWithDeletedZoneIDs:(id)a3 inTransaction:(__OpaqueSecDbConnection *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(KCSharingStore *)self plan];
  v10 = objc_opt_class();
  v54[0] = 0;
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_10003F40C;
  v52[3] = &unk_100334070;
  v11 = v9;
  v53 = v11;
  v12 = [(KCSharingStore *)self enumerateRowsInZoneIDs:v8 forEntryModel:v10 inTransaction:a4 withError:v54 usingBlock:v52];
  v17 = v54[0];
  if (v12)
  {

    v18 = objc_opt_class();
    v51 = v17;
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10003F460;
    v49[3] = &unk_100334070;
    v19 = v11;
    v50 = v19;
    v20 = [(KCSharingStore *)self enumerateRowsInZoneIDs:v8 forEntryModel:v18 inTransaction:a4 withError:&v51 usingBlock:v49];
    v21 = v51;

    if (v20)
    {

      v26 = objc_opt_class();
      v48 = v21;
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_10003F4B4;
      v46[3] = &unk_100334070;
      v27 = v19;
      v47 = v27;
      v28 = [(KCSharingStore *)self enumerateRowsInZoneIDs:v8 forEntryModel:v26 inTransaction:a4 withError:&v48 usingBlock:v46];
      v17 = v48;

      if ((v28 & 1) == 0)
      {
        sub_100061EE8(a5, 30, v17, @"Enumerating mirror entries in locally deleted zones", v29, v30, v31, v32, v42);
        v40 = 0;
        v39 = v47;
        goto LABEL_10;
      }

      v45 = v17;
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_10003F508;
      v43[3] = &unk_100334070;
      v33 = v27;
      v44 = v33;
      v34 = [(KCSharingStore *)self enumerateRowsInZoneIDs:v8 forLocalItemsInTransaction:a4 withError:&v45 usingBlock:v43];
      v21 = v45;

      if (v34)
      {

        v39 = [(KCSharingStore *)self accessGroups];
        v40 = [v33 applyInTransaction:a4 withAccessGroups:v39 error:a5];
      }

      else
      {
        sub_100061EE8(a5, 30, v21, @"Enumerating local Keychain items in locally deleted zones", v35, v36, v37, v38, v42);
        v40 = 0;
        v39 = v44;
      }
    }

    else
    {
      sub_100061EE8(a5, 30, v21, @"Enumerating outgoing rows in locally deleted zones", v22, v23, v24, v25, v42);
      v40 = 0;
      v39 = v50;
    }

    v17 = v21;
  }

  else
  {
    sub_100061EE8(a5, 30, v17, @"Enumerating incoming rows in locally deleted zones", v13, v14, v15, v16, v42);
    v40 = 0;
    v39 = v53;
  }

LABEL_10:

  return v40;
}

- (BOOL)updateMirrorWithDeletedZoneIDs:(id)a3 error:(id *)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003F608;
  v7[3] = &unk_100333FF8;
  v8 = self;
  v9 = a3;
  v5 = v9;
  LOBYTE(a4) = [(KCSharingStore *)v8 withConnection:v7 error:a4];

  return a4;
}

- (BOOL)updateMirrorWithSavedRecords:(id)a3 deletedRecordIDs:(id)a4 error:(id *)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003F78C;
  v10[3] = &unk_100334048;
  v11 = self;
  v12 = a3;
  v13 = a4;
  v7 = v13;
  v8 = v12;
  LOBYTE(a5) = [(KCSharingStore *)v11 withConnection:v10 error:a5];

  return a5;
}

- (id)fetchOutgoingChangesWithCursor:(id)a3 maxChangeCount:(int64_t)a4 maxBatchSizeInBytes:(int64_t)a5 error:(id *)a6
{
  v9 = a3;
  v10 = +[NSMutableArray array];
  v11 = +[NSMutableArray array];
  v12 = [v9 keyset];
  v13 = [v12 mutableCopy];

  v14 = [[KCSharingRowMapper alloc] initWithModel:objc_opt_class()];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100040068;
  v47[3] = &unk_1003343A8;
  v15 = v9;
  v48 = v15;
  v16 = objc_retainBlock(v47);
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v46[3] = 0;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100040254;
  v39[3] = &unk_1003343D0;
  v17 = v14;
  v40 = v17;
  v18 = v11;
  v41 = v18;
  v19 = v13;
  v44 = v46;
  v45 = a5;
  v42 = v19;
  v20 = v10;
  v43 = v20;
  v21 = objc_retainBlock(v39);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000404D4;
  v31[3] = &unk_100334448;
  v22 = v15;
  v32 = v22;
  v23 = v17;
  v37 = a4;
  v33 = v23;
  v34 = self;
  v24 = v21;
  v35 = v24;
  v38 = a2;
  v25 = v16;
  v36 = v25;
  if ([(KCSharingStore *)self withConnection:v31 error:a6])
  {
    v26 = -[KCSharingOutgoingChangesetCursor initWithDatabaseScope:keyset:fetchBehavior:]([KCSharingOutgoingChangesetCursor alloc], "initWithDatabaseScope:keyset:fetchBehavior:", [v22 databaseScope], v19, objc_msgSend(v22, "fetchBehavior"));
    v27 = [[KCSharingOutgoingChangeset alloc] initWithRecordsToSave:v20 recordIDsToDelete:v18 cursor:v26];
  }

  else
  {
    v27 = 0;
  }

  _Block_object_dispose(v46, 8);

  return v27;
}

- (id)fetchOutgoingRecordWithRecordID:(id)a3 error:(id *)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10003E510;
  v16 = sub_10003E520;
  v17 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100041D24;
  v8[3] = &unk_100334380;
  v9 = self;
  v5 = a3;
  v10 = v5;
  v11 = &v12;
  if ([(KCSharingStore *)v9 withConnection:v8 error:a4])
  {
    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v12, 8);

  return v6;
}

- (id)fetchZoneIDsToDeleteFromDatabaseWithScope:(int64_t)a3 error:(id *)a4
{
  if (a3 == 2)
  {
    +[NSMutableArray array];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100041ED0;
    v9[3] = &unk_100334048;
    v10 = @"SELECT o.zone                       FROM sharingOutgoingQueue o                       WHERE (o.agrp, o.ownr, o.uuid) = (?1, ?2, ?3) AND                             o.deln";
    v6 = v11 = self;
    v12 = v6;
    if ([(KCSharingStore *)self withConnection:v9 error:a4])
    {
      v7 = [v6 copy];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  return v7;
}

- (id)fetchZonesToSaveToDatabaseWithScope:(int64_t)a3 error:(id *)a4
{
  if (a3 == 2)
  {
    +[NSMutableArray array];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10004225C;
    v9[3] = &unk_100334048;
    v10 = @"SELECT o.zone                       FROM sharingOutgoingQueue o                       WHERE (o.agrp, o.ownr, o.uuid) = (?1, ?2, ?3) AND                             NOT o.deln AND                             NOT EXISTS(                                SELECT 1 FROM sharingMirror m                                 WHERE (m.agrp, m.ownr, m.zone, m.uuid) = (o.agrp, o.ownr, o.zone, o.uuid)                            )";
    v6 = v11 = self;
    v12 = v6;
    if ([(KCSharingStore *)self withConnection:v9 error:a4])
    {
      v7 = [v6 copy];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  return v7;
}

- (BOOL)dropDeletionsForRecordIDs:(id)a3 inTransaction:(__OpaqueSecDbConnection *)a4 error:(id *)a5
{
  v8 = a3;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 1;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10003E510;
  v31 = sub_10003E520;
  v32 = 0;
  v9 = sqlite3_limit(*(a4 + 8), 9, -1);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v21 = sub_100042718;
  v22 = &unk_100334358;
  v25 = &v27;
  v26 = a4;
  v23 = self;
  v24 = &v33;
  v10 = v8;
  v11 = v20;
  v12 = [v10 count];
  v13 = (v9 & ~(v9 >> 31)) - 1;
  if (v13 >= 3 && v12 != 0)
  {
    v37 = 0;
    v15 = [v10 count];
    if (v15 >= v13 / 3)
    {
      v16 = v13 / 3;
    }

    else
    {
      v16 = v15;
    }

    v17 = [v10 subarrayWithRange:{0, v16}];
    v21(v11, v17, &v37);
  }

  v18 = *(v34 + 24);
  if (a5 && (v34[3] & 1) == 0)
  {
    *a5 = v28[5];
  }

  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  return v18;
}

- (id)fetchOutgoingDatabaseItemWithRecordID:(id)a3 inTransaction:(__OpaqueSecDbConnection *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [[KCSharingRowMapper alloc] initWithModel:objc_opt_class()];
  v10 = [(KCSharingRowMapper *)v9 columnNamesWithTableName:0];
  v11 = [v10 componentsJoinedByString:{@", "}];
  v12 = [NSString stringWithFormat:@"SELECT %@ FROM sharingOutgoingQueue WHERE (agrp, ownr, zone, uuid) = (?1, ?2, ?3, ?4)", v11];

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10003E510;
  v27 = sub_10003E520;
  v28 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100042EE0;
  v18[3] = &unk_100334310;
  v18[4] = self;
  v13 = v8;
  v21 = &v23;
  v22 = a4;
  v19 = v13;
  v14 = v9;
  v20 = v14;
  if (sub_100069BC0(a4, v12, a5, v18))
  {
    v15 = v24[5];
    if (v15)
    {
      v16 = v15;
      goto LABEL_6;
    }

    sub_100061E2C(a5, 9, 0);
  }

  v16 = 0;
LABEL_6:

  _Block_object_dispose(&v23, 8);

  return v16;
}

- (BOOL)hasIncomingEntries:(BOOL *)a3 deletions:(BOOL *)a4 inTransaction:(__OpaqueSecDbConnection *)a5 error:(id *)a6
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000431B0;
  v7[3] = &unk_1003342C0;
  v7[4] = self;
  v7[5] = a5;
  v7[6] = a3;
  v7[7] = a4;
  return sub_100069BC0(a5, @"SELECT EXISTS(                          SELECT 1 FROM sharingIncomingQueue i                           WHERE i.agrp = ?1 AND NOT i.deln                      ) AS hasEntries, EXISTS(                          SELECT 1 FROM sharingIncomingQueue i                           WHERE i.agrp = ?1 AND i.deln                      ) AS hasDeletions", a6, v7);
}

- (BOOL)mergeWithUpdateInfos:(id)a3 error:(id *)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000433B4;
  v7[3] = &unk_100333FF8;
  v8 = self;
  v9 = a3;
  v5 = v9;
  LOBYTE(a4) = [(KCSharingStore *)v8 withConnection:v7 error:a4];

  return a4;
}

- (BOOL)restageUnappliedMirrorEntriesInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4
{
  v7 = [(KCSharingStore *)self plan];
  v8 = [[KCSharingRowMapper alloc] initWithModel:objc_opt_class()];
  v9 = [(KCSharingRowMapper *)v8 columnNamesWithTableName:@"m"];
  v10 = [v9 componentsJoinedByString:{@", "}];
  v11 = [(KCSharingStore *)self accessGroups];
  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"SELECT %1$@           FROM sharingMirror m           WHERE m.agrp = ?1 AND                 m.flag <> 0 AND                (                    ((m.flag & %2$u) <> 0 AND m.lwsv < %3$lli) OR                     ((m.flag & %4$u) <> 0)                ) AND                 NOT EXISTS(                    SELECT 1 FROM sharingIncomingQueue i                     WHERE (i.agrp, i.ownr, i.zone, i.uuid) = (m.agrp, m.ownr, m.zone, m.uuid)                ) AND                 NOT EXISTS(                    SELECT 1 FROM sharingOutgoingQueue o                     WHERE (o.agrp, o.ownr, o.zone, o.uuid) = (m.agrp, m.ownr, m.zone, m.uuid) AND                           o.deln                )", v10, 2, [v11 entrySchemaVersion], 8);

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100043A24;
  v18[3] = &unk_100333F30;
  v21 = a3;
  v18[4] = self;
  v19 = v8;
  v13 = v7;
  v20 = v13;
  v14 = v8;
  if (sub_100069BC0(a3, v12, a4, v18))
  {
    v15 = [(KCSharingStore *)self accessGroups];
    v16 = [v13 applyInTransaction:a3 withAccessGroups:v15 error:a4];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)reprocessMirrorEntriesForEntryType:(int64_t *)a3 UsingFixUpPlan:(BOOL)a4 WithError:(id *)a5
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100043CCC;
  v6[3] = &unk_100334278;
  v6[4] = self;
  v6[5] = a3;
  v7 = a4;
  return [(KCSharingStore *)self withConnection:v6 error:a5];
}

- (BOOL)reprocessAlreadyAppliedMirrorEntriesInTransaction:(__OpaqueSecDbConnection *)a3 forEntryType:(int64_t *)a4 withFixUpPlan:(BOOL)a5 error:(id *)a6
{
  v28 = a5;
  v10 = [(KCSharingStore *)self plan];
  v11 = [[KCSharingRowMapper alloc] initWithModel:objc_opt_class()];
  v12 = [(KCSharingRowMapper *)v11 columnNamesWithTableName:@"m"];
  v13 = [v12 componentsJoinedByString:{@", "}];
  v14 = [(KCSharingStore *)self accessGroups];
  v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"SELECT %1$@           FROM sharingMirror m           WHERE m.agrp = ?1 AND                 m.flag = 0 AND                 m.lwsv = %2$lli AND                 NOT EXISTS(                    SELECT 1 FROM sharingIncomingQueue i                     WHERE (i.agrp, i.ownr, i.zone, i.uuid) = (m.agrp, m.ownr, m.zone, m.uuid)                ) AND                 NOT EXISTS(                    SELECT 1 FROM sharingOutgoingQueue o                     WHERE (o.agrp, o.ownr, o.zone, o.uuid) = (m.agrp, m.ownr, m.zone, m.uuid) AND                           o.deln                )", v13, [v14 entrySchemaVersion]);

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000442E4;
  v30[3] = &unk_100334228;
  v30[4] = self;
  v33 = a3;
  v16 = v11;
  v31 = v16;
  v34 = a4;
  v17 = v10;
  v32 = v17;
  if (sub_100069BC0(a3, v15, a6, v30))
  {
    if (v28)
    {
      if (!a4 || *a4 != 1)
      {
        v25 = [(KCSharingStore *)self getLoggingIdentifer];
        v26 = KCSharingLogObject();

        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "FixUp Plan is not supported for non-passkeys items", buf, 2u);
        }

        v35 = NSLocalizedDescriptionKey;
        v36 = @"FixUp plan is not implemented for non passkeys items";
        v20 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        sub_100061E2C(a6, 20, v20);
        v22 = 0;
        goto LABEL_16;
      }

      v18 = [(KCSharingStore *)self getLoggingIdentifer];
      v19 = KCSharingLogObject();

      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Reprocessing Mirror Entries with Passkeys FixUp Plan", buf, 2u);
      }

      v20 = [(KCSharingStore *)self accessGroups];
      v21 = [v17 applyPasskeysFixForMirrorEntriesInTransaction:a3 withAccessGroups:v20 error:a6];
    }

    else
    {
      v23 = [(KCSharingStore *)self getLoggingIdentifer];
      v24 = KCSharingLogObject();

      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Reprocessing Mirror Entries with Standard Plan", buf, 2u);
      }

      v20 = [(KCSharingStore *)self accessGroups];
      v21 = [v17 applyInTransaction:a3 withAccessGroups:v20 error:a6];
    }

    v22 = v21;
LABEL_16:

    goto LABEL_17;
  }

  v22 = 0;
LABEL_17:

  return v22;
}

- (void)logMirrorEntryInfoWithMirrorEntry:(id)a3
{
  v4 = a3;
  if ([v4 type] == 1 || objc_msgSend(v4, "type") == 2)
  {
    v5 = [(KCSharingStore *)self accessGroups];
    v17 = 0;
    v6 = [v4 remoteItemWithAccessGroups:v5 error:&v17];
    v7 = v17;

    if (v6)
    {
      v8 = [(KCSharingStore *)self getLoggingIdentifer];
      v9 = KCSharingLogObject();

      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
LABEL_7:

        goto LABEL_8;
      }

      v10 = [v6 contents];
      v11 = [v6 isFullyDecoded];
      *buf = 138478083;
      v19 = v10;
      v20 = 1026;
      v21 = v11;
      v12 = "Already applied mirror entry contents: %{private}@ decoding: %{public}d";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v12, buf, 0x12u);

      goto LABEL_7;
    }
  }

  else
  {
    if ([v4 type] != 3)
    {
      goto LABEL_9;
    }

    v13 = [(KCSharingStore *)self accessGroups];
    v16 = 0;
    v6 = [v4 shareWithAccessGroups:v13 error:&v16];
    v7 = v16;

    if (v6)
    {
      v14 = [(KCSharingStore *)self getLoggingIdentifer];
      v9 = KCSharingLogObject();

      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      v10 = [v6 contents];
      v15 = [v6 isFullyDecoded];
      *buf = 138478083;
      v19 = v10;
      v20 = 1026;
      v21 = v15;
      v12 = "Already applied mirror share entry contents: %{private}@ decoding: %{public}d";
      goto LABEL_6;
    }
  }

LABEL_8:

LABEL_9:
}

- (BOOL)resolveConflictingPrimaryKeysForEntriesOfType:(int64_t)a3 inTransaction:(__OpaqueSecDbConnection *)a4 error:(id *)a5
{
  v10 = [(KCSharingStore *)self plan];
  v11 = [[KCSharingRowMapper alloc] initWithModel:objc_opt_class()];
  v12 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      v13 = a5;
      if (a3 == 1)
      {
        v14 = &off_100334C70;
LABEL_8:
        v12 = *v14;
        goto LABEL_9;
      }

      goto LABEL_9;
    }

LABEL_12:
    v27 = +[NSAssertionHandler currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"KCSharingStore.m" lineNumber:1767 description:{@"Can't resolve conflicting primary keys for entries of type %ld", a3}];

    v26 = 1;
    goto LABEL_17;
  }

  if (a3 == 3)
  {
    goto LABEL_12;
  }

  v13 = a5;
  if (a3 == 2)
  {
    v14 = &off_100334C80;
    goto LABEL_8;
  }

LABEL_9:
  [(KCSharingRowMapper *)v11 columnNamesWithTableName:@"m"];
  v16 = v15 = v11;
  v17 = [v16 componentsJoinedByString:{@", "}];
  v18 = [NSString stringWithFormat:@"SELECT %1$@           FROM sharingMirror m           JOIN(              SELECT ownr, zone, min(uuid) AS lo               FROM sharingMirror               WHERE agrp = ? AND type = %2$lld               GROUP BY ownr, zone, %3$@               HAVING count(*) > 1          ) p ON (p.ownr, p.zone) = (m.ownr, m.zone) AND                  p.lo = m.uuid", v17, a3, v12];

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100044C5C;
  v36[3] = &unk_100333F30;
  v36[4] = self;
  v39 = a4;
  v31 = v15;
  v19 = v15;
  v37 = v19;
  v20 = v10;
  v38 = v20;
  if (sub_100069BC0(a4, v18, v13, v36))
  {
    v29 = v18;
    v30 = v10;
    v21 = [(KCSharingRowMapper *)v19 columnNamesWithTableName:@"m"];
    v22 = [v21 componentsJoinedByString:{@", "}];
    v23 = [NSString stringWithFormat:@"SELECT %1$@           FROM sharingMirror m           JOIN(              SELECT ownr, zone, %3$@, min(uuid) AS lo, max(uuid) AS hi               FROM sharingMirror               WHERE agrp = ? AND type = %2$lld               GROUP BY ownr, zone, %3$@               HAVING count(*) > 1          ) r ON (r.ownr, r.zone) = (m.ownr, m.zone) AND                  m.uuid > r.lo AND m.uuid <= r.hi           WHERE m.type = %2$lld AND                 m.%3$@ = r.%3$@", v22, a3, v12];

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100044D74;
    v32[3] = &unk_100333F30;
    v32[4] = self;
    v35 = a4;
    v33 = v19;
    v24 = v20;
    v34 = v24;
    if (sub_100069BC0(a4, v23, v13, v32))
    {
      v25 = [(KCSharingStore *)self accessGroups];
      v26 = [v24 applyInTransaction:a4 withAccessGroups:v25 error:v13];
    }

    else
    {
      v26 = 0;
    }

    v11 = v31;

    v18 = v29;
    v10 = v30;
  }

  else
  {
    v26 = 0;
    v11 = v15;
  }

LABEL_17:
  return v26;
}

- (BOOL)resolveConflictingPrimaryKeysInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4
{
  v7 = [(KCSharingStore *)self resolveConflictingPrimaryKeysForEntriesOfType:1 inTransaction:a3 error:a4];
  if (v7)
  {

    LOBYTE(v7) = [(KCSharingStore *)self resolveConflictingPrimaryKeysForEntriesOfType:2 inTransaction:a3 error:a4];
  }

  return v7;
}

- (BOOL)applyIncomingDeletionsInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4
{
  v7 = [(KCSharingStore *)self plan];
  v8 = [NSString stringWithFormat:@"SELECT i.rowid, m.rowid, IFNULL(l.type, 0), l.pkid, l.ipid           FROM sharingIncomingQueue i           JOIN sharingMirror m ON (m.agrp, m.ownr, m.zone, m.uuid) = (i.agrp, i.ownr, i.zone, i.uuid)           LEFT JOIN lsfp l ON (l.type = %1$lld AND l.pkkp = m.pkkp) OR                               (l.type = %2$lld AND l.ipkp = m.ipkp)           WHERE i.agrp = ?1 AND                 i.deln AND                 NOT EXISTS(                    SELECT 1 FROM sharingOutgoingQueue o                     WHERE (o.agrp, o.ownr, o.zone, o.uuid) = (i.agrp, i.ownr, i.zone, i.uuid)                ) AND                 NOT EXISTS(                    SELECT 1 FROM sharingIncomingQueue ish                     WHERE (ish.agrp, ish.ownr, ish.zone, ish.uuid) = (i.agrp, i.ownr, i.zone, ?2) AND                           ish.deln                ) AND                 NOT EXISTS(                    SELECT 1 FROM sharingOutgoingQueue osh                     WHERE (osh.agrp, osh.ownr, osh.zone, osh.uuid) = (i.agrp, i.ownr, i.zone, ?2) AND                           osh.deln                )", 1, 2];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100045234;
  v18[3] = &unk_100333E08;
  v18[4] = self;
  v20 = a3;
  v9 = v7;
  v19 = v9;
  if (sub_100069BC0(a3, v8, a4, v18))
  {
    v10 = [NSString stringWithFormat:@"SELECT i.rowid           FROM sharingIncomingQueue i           WHERE i.agrp = ? AND                 i.deln AND                 NOT EXISTS(                    SELECT 1 FROM sharingOutgoingQueue o                     WHERE (o.agrp, o.ownr, o.zone, o.uuid) = (i.agrp, i.ownr, i.zone, i.uuid)                ) AND                 NOT EXISTS(                    SELECT 1 FROM sharingMirror m                     WHERE (m.agrp, m.ownr, m.zone, m.uuid) = (i.agrp, i.ownr, i.zone, i.uuid)                )"];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100045360;
    v15[3] = &unk_100333E08;
    v15[4] = self;
    v17 = a3;
    v11 = v9;
    v16 = v11;
    if (sub_100069BC0(a3, v10, a4, v15))
    {
      v12 = [(KCSharingStore *)self accessGroups];
      v13 = [v11 applyInTransaction:a3 withAccessGroups:v12 error:a4];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)applyIncomingEntriesInTransaction:(__OpaqueSecDbConnection *)a3 updateInfos:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(KCSharingStore *)self plan];
  v10 = [[KCSharingRowMapper alloc] initWithModel:objc_opt_class()];
  v11 = [(KCSharingRowMapper *)v10 columnNamesWithTableName:@"i"];
  v12 = [v11 componentsJoinedByString:{@", "}];
  v13 = [NSString stringWithFormat:@"SELECT %1$@           FROM sharingIncomingQueue i           WHERE i.agrp = ?1 AND                 NOT i.deln AND                 NOT EXISTS(                    SELECT 1 FROM sharingOutgoingQueue o                     WHERE (o.agrp, o.ownr, o.zone, o.uuid) = (i.agrp, i.ownr, i.zone, i.uuid)                ) AND                 NOT EXISTS(                    SELECT 1 FROM sharingIncomingQueue ish                     WHERE (ish.agrp, ish.ownr, ish.zone, ish.uuid) = (i.agrp, i.ownr, i.zone, ?2) AND                           ish.deln                ) AND                 NOT EXISTS(                    SELECT 1 FROM sharingOutgoingQueue osh                     WHERE (osh.agrp, osh.ownr, osh.zone, osh.uuid) = (i.agrp, i.ownr, i.zone, ?2) AND                           osh.deln                )", v12];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10004592C;
  v19[3] = &unk_100333F30;
  v22 = a3;
  v19[4] = self;
  v20 = v10;
  v14 = v9;
  v21 = v14;
  v15 = v10;
  if (sub_100069BC0(a3, v13, a5, v19))
  {
    v16 = [(KCSharingStore *)self accessGroups];
    v17 = [v14 applyInTransaction:a3 withAccessGroups:v16 updateInfos:v8 error:a5];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)resolveMergeConflictsInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4
{
  v7 = [[KCSharingRowMapper alloc] initWithModel:objc_opt_class()];
  v8 = [[KCSharingRowMapper alloc] initWithModel:objc_opt_class()];
  v60[5] = a3;
  v61[0] = 0;
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_100045F68;
  v60[3] = &unk_100333E70;
  v60[4] = self;
  v9 = sub_100069BC0(a3, @"SELECT i.rowid, o.rowid, m.rowid                                         FROM sharingIncomingQueue i                                         JOIN sharingOutgoingQueue o ON (o.agrp, o.ownr, o.zone, o.uuid) = (i.agrp, i.ownr, i.zone, i.uuid)                                         JOIN sharingMirror m ON (m.agrp, m.ownr, m.zone, m.uuid) = (o.agrp, o.ownr, o.zone, o.uuid)                                         WHERE i.agrp = ? AND i.deln AND o.deln", v61, v60);
  v14 = v61[0];
  if (v9)
  {
    v48 = a4;
    v15 = [(KCSharingRowMapper *)v7 columnNamesWithTableName:@"i"];
    v42 = [v15 componentsJoinedByString:{@", "}];
    v16 = [NSString stringWithFormat:@"SELECT %1$@, o.rowid, o.data           FROM sharingIncomingQueue i           JOIN sharingOutgoingQueue o ON (o.agrp, o.ownr, o.zone, o.uuid) = (i.agrp, i.ownr, i.zone, i.uuid)           WHERE i.agrp = ?1 AND                 o.deln AND                 NOT i.deln AND                 NOT EXISTS(                    SELECT 1 FROM sharingIncomingQueue ish                     WHERE (ish.agrp, ish.ownr, ish.zone, ish.uuid) = (i.agrp, i.ownr, i.zone, ?2) AND                           ish.deln                ) AND                 NOT EXISTS(                    SELECT 1 FROM sharingOutgoingQueue osh                     WHERE (osh.agrp, osh.ownr, osh.zone, osh.uuid) = (i.agrp, i.ownr, i.zone, ?2) AND                           osh.deln                )"];

    v59 = 0;
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100046050;
    v56[3] = &unk_100333E08;
    v56[4] = self;
    v58 = a3;
    v17 = v7;
    v57 = v17;
    v18 = sub_100069BC0(a3, v16, &v59, v56);
    v23 = v59;
    if (v18)
    {
      v54[5] = a3;
      v55 = 0;
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_100046180;
      v54[3] = &unk_100333E70;
      v54[4] = self;
      v24 = sub_100069BC0(a3, @"SELECT i.rowid, o.rowid, m.rowid                                                    FROM sharingIncomingQueue i                                                    JOIN sharingOutgoingQueue o ON (o.agrp, o.ownr, o.zone, o.uuid) = (i.agrp, i.ownr, i.zone, i.uuid)                                                    JOIN sharingMirror m ON (m.agrp, m.ownr, m.zone, m.uuid) = (o.agrp, o.ownr, o.zone, o.uuid)                                                    WHERE i.agrp = ?1 AND                                                          NOT o.deln AND                                                          i.deln AND                                                          NOT EXISTS(                                                             SELECT 1 FROM sharingIncomingQueue ish                                                              WHERE (ish.agrp, ish.ownr, ish.zone, ish.uuid) = (i.agrp, i.ownr, i.zone, ?2) AND                                                                    ish.deln                                                         ) AND                                                          NOT EXISTS(                                                             SELECT 1 FROM sharingOutgoingQueue osh                                                              WHERE (osh.agrp, osh.ownr, osh.zone, osh.uuid) = (i.agrp, i.ownr, i.zone, ?2) AND                                                                    osh.deln                                                         )", &v55, v54);
      v25 = v55;
      v30 = v25;
      if (v24)
      {
        v46 = v25;
        v47 = v23;
        v45 = v16;
        v44 = [(KCSharingRowMapper *)v17 columnNamesWithTableName:@"i"];
        v31 = [v44 componentsJoinedByString:{@", "}];
        v32 = [(KCSharingRowMapper *)v8 columnNamesWithTableName:@"o"];
        v43 = [v32 componentsJoinedByString:{@", "}];
        v33 = [NSString stringWithFormat:@"SELECT %1$@, %2$@           FROM sharingIncomingQueue i           JOIN sharingOutgoingQueue o ON (o.agrp, o.ownr, o.zone, o.uuid) = (i.agrp, i.ownr, i.zone, i.uuid)           WHERE i.agrp = ?1 AND                 NOT o.deln AND                 NOT i.deln AND                 NOT EXISTS(                    SELECT 1 FROM sharingIncomingQueue ish                     WHERE (ish.agrp, ish.ownr, ish.zone, ish.uuid) = (i.agrp, i.ownr, i.zone, ?2) AND                           ish.deln                ) AND                 NOT EXISTS(                    SELECT 1 FROM sharingOutgoingQueue osh                     WHERE (osh.agrp, osh.ownr, osh.zone, osh.uuid) = (i.agrp, i.ownr, i.zone, ?2) AND                           osh.deln                )"];

        v52 = a3;
        v53 = 0;
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_100046290;
        v49[3] = &unk_100333F30;
        v49[4] = self;
        v50 = v17;
        v51 = v8;
        v34 = sub_100069BC0(a3, v33, &v53, v49);
        v39 = v53;
        if ((v34 & 1) == 0)
        {
          sub_100061EE8(v48, 28, v39, @"Resolving change-change conflicts", v35, v36, v37, v38, v31);
        }

        v16 = v45;
        v30 = v46;
        v23 = v47;
      }

      else
      {
        sub_100061EE8(v48, 28, v25, @"Resolving remote deletion-local change conflicts", v26, v27, v28, v29, v42);
        v34 = 0;
      }
    }

    else
    {
      sub_100061EE8(v48, 28, v23, @"Resolving remote change-local deletion conflicts", v19, v20, v21, v22, v42);
      v34 = 0;
    }
  }

  else
  {
    sub_100061EE8(a4, 28, v14, @"Resolving deletion-deletion conflicts", v10, v11, v12, v13, v41);
    v34 = 0;
  }

  return v34;
}

- (BOOL)enumerateRowsInZoneIDs:(id)a3 forLocalItemsInTransaction:(__OpaqueSecDbConnection *)a4 withError:(id *)a5 usingBlock:(id)a6
{
  v10 = a3;
  v11 = a6;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 1;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_10003E510;
  v44 = sub_10003E520;
  v45 = 0;
  v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v36 objects:v51 count:16];
  if (v14)
  {
    v15 = *v37;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = sub_100031160(*(*(&v36 + 1) + 8 * i));
        if (v17)
        {
          [v12 addObject:v17];
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v36 objects:v51 count:16];
    }

    while (v14);
  }

  v18 = sqlite3_limit(*(a4 + 8), 9, -1);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v29 = sub_100046DC0;
  v30 = &unk_100334160;
  v34 = &v40;
  v35 = a4;
  v33 = &v46;
  v31 = self;
  v19 = v11;
  v32 = v19;
  v20 = v12;
  v21 = v28;
  v22 = [v20 count];
  if (v18 >= 1 && v22)
  {
    v50 = 0;
    v23 = [v20 count];
    if (v23 >= (v18 & ~(v18 >> 31)))
    {
      v24 = (v18 & ~(v18 >> 31));
    }

    else
    {
      v24 = v23;
    }

    v25 = [v20 subarrayWithRange:{0, v24}];
    v29(v21, v25, &v50);
  }

  v26 = *(v47 + 24);
  if (a5 && (v47[3] & 1) == 0)
  {
    *a5 = v41[5];
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);

  return v26;
}

- (BOOL)enumerateRowsInZoneIDs:(id)a3 forEntryModel:(Class)a4 inTransaction:(__OpaqueSecDbConnection *)a5 withError:(id *)a6 usingBlock:(id)a7
{
  v24 = a6;
  v11 = a3;
  v12 = a7;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 1;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_10003E510;
  v40 = sub_10003E520;
  v41 = 0;
  v13 = sqlite3_limit(*(a5 + 8), 9, -1);
  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_100047894;
  v28 = &unk_100334110;
  v34 = a4;
  v35 = a5;
  v32 = &v42;
  v33 = &v36;
  v29 = v11;
  v30 = self;
  v14 = v12;
  v31 = v14;
  v15 = v29;
  v16 = &v25;
  v17 = [v15 count];
  v18 = (v13 & ~(v13 >> 31)) - 1;
  if (v18 >= 2 && v17)
  {
    v46[0] = 0;
    v19 = [v15 count];
    if (v19 >= v18 >> 1)
    {
      v20 = (v18 >> 1);
    }

    else
    {
      v20 = v19;
    }

    v21 = [v15 subarrayWithRange:{0, v20, v24, v25, v26}];
    v27(v16, v21, v46);
  }

  v22 = *(v43 + 24);
  if (v24 && (v43[3] & 1) == 0)
  {
    *v24 = v37[5];
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  return v22;
}

- (BOOL)enumerateRowsInRemotelyDeletedZonesForLocalItemsInTransaction:(__OpaqueSecDbConnection *)a3 withError:(id *)a4 usingBlock:(id)a5
{
  v8 = a5;
  v9 = [NSString stringWithFormat:@"SELECT lpk.rowid           FROM keys lpk           JOIN sharingIncomingQueue ish ON substr(ish.zone, 1, length(?3)) = ?3 AND                                            substr(ish.zone, length(?3) + 1) = lpk.ggrp           WHERE (ish.agrp, ish.uuid) = (?1, ?2) AND                 ish.deln"];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100047E9C;
  v17[3] = &unk_100333FA8;
  v17[4] = self;
  v19 = a3;
  v10 = v8;
  v18 = v10;
  if (sub_100069BC0(a3, v9, a4, v17))
  {
    v11 = [NSString stringWithFormat:@"SELECT lip.rowid           FROM inet lip           JOIN sharingIncomingQueue ish ON substr(ish.zone, 1, length(?3)) = ?3 AND                                            substr(ish.zone, length(?3) + 1) = lip.ggrp           WHERE (ish.agrp, ish.uuid) = (?1, ?2) AND                 ish.deln"];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100047FE0;
    v14[3] = &unk_100333FA8;
    v14[4] = self;
    v16 = a3;
    v15 = v10;
    v12 = sub_100069BC0(a3, v11, a4, v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)enumerateRowsInRemotelyDeletedZonesForEntryModel:(Class)a3 inTransaction:(__OpaqueSecDbConnection *)a4 withError:(id *)a5 usingBlock:(id)a6
{
  v10 = a6;
  v11 = [NSString stringWithFormat:@"SELECT r.rowid, r.zone, r.uuid           FROM %1$@ r           WHERE r.agrp = ?1 AND                 EXISTS(                    SELECT 1 FROM sharingIncomingQueue ish                     WHERE (ish.agrp, ish.zone, ish.uuid) = (r.agrp, r.zone, ?2) AND                           ish.deln                )", *[(objc_class *)a3 databaseItemClass]];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100048328;
  v14[3] = &unk_1003340C0;
  v16 = a4;
  v17 = a3;
  v14[4] = self;
  v15 = v10;
  v12 = v10;
  LOBYTE(a5) = sub_100069BC0(a4, v11, a5, v14);

  return a5;
}

- (BOOL)applyIncomingShareDeletionsInTransaction:(__OpaqueSecDbConnection *)a3 updateInfos:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(KCSharingStore *)self plan];
  v10 = objc_opt_class();
  v45[0] = 0;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1000488D0;
  v43[3] = &unk_100334070;
  v11 = v9;
  v44 = v11;
  v12 = [(KCSharingStore *)self enumerateRowsInRemotelyDeletedZonesForEntryModel:v10 inTransaction:a3 withError:v45 usingBlock:v43];
  v17 = v45[0];
  if (v12)
  {

    v18 = objc_opt_class();
    v42 = v17;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100048924;
    v40[3] = &unk_100334070;
    v19 = v11;
    v41 = v19;
    v20 = [(KCSharingStore *)self enumerateRowsInRemotelyDeletedZonesForEntryModel:v18 inTransaction:a3 withError:&v42 usingBlock:v40];
    v21 = v42;

    if (v20)
    {

      v26 = objc_opt_class();
      v39 = v21;
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100048978;
      v37[3] = &unk_100334070;
      v27 = v19;
      v38 = v27;
      v28 = [(KCSharingStore *)self enumerateRowsInRemotelyDeletedZonesForEntryModel:v26 inTransaction:a3 withError:&v39 usingBlock:v37];
      v17 = v39;

      if (v28)
      {

        v33 = [(KCSharingStore *)self accessGroups];
        v34 = [v27 applyInTransaction:a3 withAccessGroups:v33 updateInfos:v8 error:a5];
      }

      else
      {
        sub_100061EE8(a5, 28, v17, @"Enumerating mirror entries in remotely deleted zones", v29, v30, v31, v32, v36);
        v34 = 0;
        v33 = v38;
      }
    }

    else
    {
      sub_100061EE8(a5, 28, v21, @"Enumerating outgoing rows in remotely deleted zones", v22, v23, v24, v25, v36);
      v34 = 0;
      v33 = v41;
      v17 = v21;
    }
  }

  else
  {
    sub_100061EE8(a5, 28, v17, @"Enumerating incoming rows in remotely deleted zones", v13, v14, v15, v16, v36);
    v34 = 0;
    v33 = v44;
  }

  return v34;
}

- (BOOL)stageOutgoingShares:(id)a3 deletionsForShares:(id)a4 error:(id *)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100048A9C;
  v10[3] = &unk_100334048;
  v11 = self;
  v12 = a3;
  v13 = a4;
  v7 = v13;
  v8 = v12;
  LOBYTE(a5) = [(KCSharingStore *)v11 withConnection:v10 error:a5];

  return a5;
}

- (BOOL)stageIncomingDeletionForRecordID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[KCSharingIncomingDeletion alloc] initForDeletedRecordWithRecordID:v6];

  LOBYTE(a4) = [(KCSharingStore *)self stageIncomingRow:v7 error:a4];
  return a4;
}

- (BOOL)stageIncomingRecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[KCSharingIncomingEntry alloc] initWithFetchedRecord:v6];

  LOBYTE(a4) = [(KCSharingStore *)self stageIncomingRow:v7 error:a4];
  return a4;
}

- (BOOL)stageIncomingRow:(id)a3 error:(id *)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100048F28;
  v7[3] = &unk_100333FF8;
  v8 = self;
  v9 = a3;
  v5 = v9;
  LOBYTE(a4) = [(KCSharingStore *)v8 withConnection:v7 error:a4];

  return a4;
}

- (id)stageAllOutgoingDeletionsInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4
{
  v7 = [(KCSharingStore *)self plan];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10004924C;
  v21[3] = &unk_100333F58;
  v22 = [[KCSharingRowMapper alloc] initWithModel:objc_opt_class()];
  v23 = v7;
  v8 = v7;
  v9 = v22;
  v10 = objc_retainBlock(v21);
  v11 = [(KCSharingRowMapper *)v9 columnNamesWithTableName:@"m"];
  v12 = [v11 componentsJoinedByString:{@", "}];
  v13 = [NSString stringWithFormat:@"SELECT %1$@           FROM sharingMirror m           WHERE m.agrp = ? AND                (                    (m.type = %2$lld AND m.pkkp NOT IN(                        SELECT l.pkkp FROM lsfp l                         WHERE l.type = %2$lld                    )) OR                     (m.type = %3$lld AND m.ipkp NOT IN(                        SELECT l.ipkp FROM lsfp l                         WHERE l.type = %3$lld                    )) OR                     (m.flag <> 0 AND (m.flag & %4$u) <> 0)                )", v12, 1, 2, 4];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100049384;
  v18[3] = &unk_100333FA8;
  v19 = v10;
  v20 = a3;
  v18[4] = self;
  v14 = v10;
  if (sub_100069BC0(a3, v13, a4, v18))
  {
    v15 = v8;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

- (id)stageAllOutgoingNewPasswordsInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4
{
  v7 = [(KCSharingStore *)self plan];
  v8 = [[KCSharingRowMapper alloc] initWithModel:objc_opt_class()];
  v9 = [(KCSharingRowMapper *)v8 columnNamesWithTableName:@"lip"];
  v10 = [v9 componentsJoinedByString:{@", "}];
  v11 = [NSString stringWithFormat:@"WITH groups(ownr, zone) AS(              SELECT msh.ownr, msh.zone               FROM sharingMirror msh               WHERE (msh.agrp, msh.uuid) = (?1, ?2) AND                     NOT EXISTS(                        SELECT 1 FROM sharingIncomingQueue ish                         WHERE (ish.agrp, ish.ownr, ish.zone, ish.uuid) = (msh.agrp, msh.ownr, msh.zone, msh.uuid) AND                               ish.deln                    ) AND                     NOT EXISTS(                        SELECT 1 FROM sharingOutgoingQueue osh                         WHERE (osh.agrp, osh.ownr, osh.zone, osh.uuid) = (msh.agrp, msh.ownr, msh.zone, msh.uuid)                    )               UNION ALL               SELECT osh.ownr, osh.zone               FROM sharingOutgoingQueue osh               WHERE (osh.agrp, osh.uuid) = (?1, ?2) AND                     NOT osh.deln          )           SELECT g.ownr, g.zone, %1$@           FROM lsfp l           JOIN inet lip ON lip.rowid = l.ipid           JOIN groups g ON substr(g.zone, 1, length(?3)) = ?3 AND                            substr(g.zone, length(?3) + 1) = lip.ggrp           WHERE NOT EXISTS(                    SELECT 1 FROM sharingMirror m                     WHERE (m.ownr, m.zone) = (g.ownr, g.zone) AND                           (m.type, l.type, m.ipkp) = (%2$lld, %2$lld, l.ipkp)                ) AND                 NOT EXISTS(                    SELECT 1 FROM sharingOutgoingQueue o                     WHERE (o.ownr, o.zone) = (g.ownr, g.zone) AND                           (o.type, l.type, o.ipkp) = (%2$lld, %2$lld, l.ipkp)                )", v10, 2];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10004960C;
  v17[3] = &unk_100333F30;
  v17[4] = self;
  v18 = v8;
  v19 = v7;
  v20 = a3;
  v12 = v7;
  v13 = v8;
  if (sub_100069BC0(a3, v11, a4, v17))
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

- (id)stageAllOutgoingChangedPasswordsInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4
{
  v6 = [(KCSharingStore *)self plan];
  v7 = [[KCSharingRowMapper alloc] initWithModel:objc_opt_class()];
  v8 = [[KCSharingRowMapper alloc] initWithModel:objc_opt_class()];
  v9 = [(KCSharingRowMapper *)v7 columnNamesWithTableName:@"m"];
  v10 = [v9 componentsJoinedByString:{@", "}];
  v11 = [(KCSharingRowMapper *)v8 columnNamesWithTableName:@"lip"];
  v12 = [v11 componentsJoinedByString:{@", "}];
  v13 = [NSString stringWithFormat:@"SELECT %1$@, %2$@           FROM lsfp l           JOIN sharingMirror m ON (m.type = %3$lld AND l.type = %3$lld AND m.ipkp = l.ipkp)           JOIN inet lip ON lip.rowid = l.ipid           WHERE m.agrp = ?1 AND                (                    (l.type = m.type AND l.ipvp <> m.ipvp) OR                     (m.flag <> 0 AND(                        (m.flag & %4$u) <> 0                    ))                ) AND                 (m.flag = 0 OR (m.flag & %5$u) = 0) AND                 NOT EXISTS(                    SELECT 1 FROM sharingOutgoingQueue o                     WHERE (o.ownr, o.zone, o.uuid) = (m.ownr, m.zone, m.uuid)                )", v10, v12, 2, 1, 4];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100049BDC;
  v21[3] = &unk_100333EE0;
  v24 = v6;
  v25 = a3;
  v21[4] = self;
  v22 = v7;
  v23 = v8;
  v14 = v6;
  v15 = v8;
  v16 = v7;
  if (sub_100069BC0(a3, v13, a4, v21))
  {
    v17 = v14;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  return v17;
}

- (id)stageAllOutgoingNewPrivateKeysInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4
{
  v7 = [(KCSharingStore *)self plan];
  v8 = [[KCSharingRowMapper alloc] initWithModel:objc_opt_class()];
  v9 = [(KCSharingRowMapper *)v8 columnNamesWithTableName:@"lpk"];
  v10 = [v9 componentsJoinedByString:{@", "}];
  v11 = [NSString stringWithFormat:@"WITH groups(ownr, zone) AS(              SELECT msh.ownr, msh.zone               FROM sharingMirror msh               WHERE (msh.agrp, msh.uuid) = (?1, ?2) AND                     NOT EXISTS(                        SELECT 1 FROM sharingIncomingQueue ish                         WHERE (ish.agrp, ish.ownr, ish.zone, ish.uuid) = (msh.agrp, msh.ownr, msh.zone, msh.uuid) AND                               ish.deln                    ) AND                     NOT EXISTS(                        SELECT 1 FROM sharingOutgoingQueue osh                         WHERE (osh.agrp, osh.ownr, osh.zone, osh.uuid) = (msh.agrp, msh.ownr, msh.zone, msh.uuid)                    )               UNION ALL               SELECT osh.ownr, osh.zone               FROM sharingOutgoingQueue osh               WHERE (osh.agrp, osh.uuid) = (?1, ?2) AND                     NOT osh.deln          )           SELECT g.ownr, g.zone, %1$@           FROM lsfp l           JOIN keys lpk ON lpk.rowid = l.pkid           JOIN groups g ON substr(g.zone, 1, length(?3)) = ?3 AND                            substr(g.zone, length(?3) + 1) = lpk.ggrp           WHERE NOT EXISTS(                    SELECT 1 FROM sharingMirror m                     WHERE (m.ownr, m.zone) = (g.ownr, g.zone) AND                           (m.type, l.type, m.pkkp) = (%2$lld, %2$lld, l.pkkp)                ) AND                 NOT EXISTS(                    SELECT 1 FROM sharingOutgoingQueue o                     WHERE (o.ownr, o.zone) = (g.ownr, g.zone) AND                           (o.type, l.type, o.pkkp) = (%2$lld, %2$lld, l.pkkp)                )", v10, 1];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10004A274;
  v17[3] = &unk_100333F30;
  v17[4] = self;
  v18 = v8;
  v19 = v7;
  v20 = a3;
  v12 = v7;
  v13 = v8;
  if (sub_100069BC0(a3, v11, a4, v17))
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

- (id)stageAllOutgoingChangedPrivateKeysInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4
{
  v6 = [(KCSharingStore *)self plan];
  v7 = [[KCSharingRowMapper alloc] initWithModel:objc_opt_class()];
  v8 = [[KCSharingRowMapper alloc] initWithModel:objc_opt_class()];
  v9 = [(KCSharingRowMapper *)v7 columnNamesWithTableName:@"m"];
  v10 = [v9 componentsJoinedByString:{@", "}];
  v11 = [(KCSharingRowMapper *)v8 columnNamesWithTableName:@"lpk"];
  v12 = [v11 componentsJoinedByString:{@", "}];
  v13 = [NSString stringWithFormat:@"SELECT %1$@, %2$@           FROM lsfp l           JOIN sharingMirror m ON (m.type = %3$lld AND l.type = %3$lld AND m.pkkp = l.pkkp)           JOIN keys lpk ON lpk.rowid = l.pkid           WHERE m.agrp = ? AND                (                    (l.type = m.type AND l.pkvp <> m.pkvp) OR                     (m.flag <> 0 AND(                        (m.flag & %4$u) <> 0                    ))                ) AND                 (m.flag = 0 OR (m.flag & %5$u) = 0) AND                 NOT EXISTS(                    SELECT 1 FROM sharingOutgoingQueue o                     WHERE (o.ownr, o.zone, o.uuid) = (m.ownr, m.zone, m.uuid)                )", v10, v12, 1, 1, 4];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10004A840;
  v21[3] = &unk_100333EE0;
  v24 = v6;
  v25 = a3;
  v21[4] = self;
  v22 = v7;
  v23 = v8;
  v14 = v6;
  v15 = v8;
  v16 = v7;
  if (sub_100069BC0(a3, v13, a4, v21))
  {
    v17 = v14;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  return v17;
}

- (BOOL)stageAllOutgoingChangesInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004ADD4;
  v5[3] = &unk_100333D90;
  v5[4] = self;
  v5[5] = a3;
  return [(KCSharingStore *)self withLocalFingerprintsTable:v5 inTransaction:a3 error:a4];
}

- (BOOL)fingerprintPasswordDatabaseItem:(SecDbItem *)a3 inTransaction:(__OpaqueSecDbConnection *)a4 error:(id *)a5
{
  v8 = [[KCSharingLocalFingerprint alloc] initWithDatabaseItem:a3 error:a5];
  if (!v8)
  {
    goto LABEL_8;
  }

  v17 = 0;
  v9 = sub_100163560(a3, &v17);
  if (!v9)
  {
    v12 = v17;
    if (a5)
    {
      v11 = 0;
      *a5 = v17;
      goto LABEL_9;
    }

    if (v17)
    {
      v17 = 0;
      CFRelease(v12);
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v10 = [NSString stringWithFormat:@"INSERT INTO lsfp(type, ipid, ipkp, ipvp)           VALUES(%lld, %lld, ?1, ?2)", 2, v9];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004B5D4;
  v14[3] = &unk_100333E70;
  v15 = v8;
  v16 = a4;
  v11 = sub_100069BC0(a4, v10, a5, v14);

LABEL_9:
  return v11;
}

- (BOOL)fingerprintAllPasswordsInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4
{
  v7 = [[KCSharingRowMapper alloc] initWithModel:objc_opt_class()];
  v8 = [(KCSharingRowMapper *)v7 columnNamesWithTableName:@"lip"];
  v9 = [v8 componentsJoinedByString:{@", "}];
  v10 = [NSString stringWithFormat:@"SELECT %@           FROM inet lip           WHERE lip.ggrp <> ''", v9];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004B7F8;
  v13[3] = &unk_100333E08;
  v15 = self;
  v16 = a3;
  v14 = v7;
  v11 = v7;
  LOBYTE(a4) = sub_100069BC0(a3, v10, a4, v13);

  return a4;
}

- (BOOL)fingerprintPrivateKeyDatabaseItem:(SecDbItem *)a3 inTransaction:(__OpaqueSecDbConnection *)a4 error:(id *)a5
{
  v8 = [[KCSharingLocalFingerprint alloc] initWithDatabaseItem:a3 error:a5];
  if (!v8)
  {
    goto LABEL_8;
  }

  v17 = 0;
  v9 = sub_100163560(a3, &v17);
  if (!v9)
  {
    v12 = v17;
    if (a5)
    {
      v11 = 0;
      *a5 = v17;
      goto LABEL_9;
    }

    if (v17)
    {
      v17 = 0;
      CFRelease(v12);
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v10 = [NSString stringWithFormat:@"INSERT INTO lsfp(type, pkid, pkkp, pkvp)           VALUES(%lld, %lld, ?1, ?2)", 1, v9];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004BAD8;
  v14[3] = &unk_100333E70;
  v15 = v8;
  v16 = a4;
  v11 = sub_100069BC0(a4, v10, a5, v14);

LABEL_9:
  return v11;
}

- (BOOL)fingerprintAllPrivateKeysInTransaction:(__OpaqueSecDbConnection *)a3 error:(id *)a4
{
  v7 = [[KCSharingRowMapper alloc] initWithModel:objc_opt_class()];
  v8 = [(KCSharingRowMapper *)v7 columnNamesWithTableName:@"lpk"];
  v9 = [v8 componentsJoinedByString:{@", "}];
  v10 = [NSString stringWithFormat:@"SELECT %@           FROM keys lpk           WHERE lpk.ggrp <> ''", v9];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004BCFC;
  v13[3] = &unk_100333E08;
  v15 = self;
  v16 = a3;
  v14 = v7;
  v11 = v7;
  LOBYTE(a4) = sub_100069BC0(a3, v10, a4, v13);

  return a4;
}

- (BOOL)withLocalFingerprintsTable:(id)a3 inTransaction:(__OpaqueSecDbConnection *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [NSString stringWithFormat:@"CREATE TEMP TABLE lsfp(               type INTEGER NOT NULL, pkid INTEGER, /* Private key row ID */               pkkp BLOB, /* Private key keyprint */               pkvp BLOB, /* Private key valueprint */               ipid INTEGER, /* Internet password row ID */               ipkp BLOB, /* Internet password keyprint */               ipvp BLOB /* Internet password valueprint */          )"];;
  v28 = 0;
  if ((sub_1000152F0(a4, v9, &v28) & 1) == 0)
  {
    v15 = v28;
    v19 = @"Creating fingerprints table";
LABEL_7:
    sub_100061EE8(a5, 27, v15, v19, v10, v11, v12, v13, v25);
    v18 = 0;
    goto LABEL_10;
  }

  v27 = 0;
  v14 = [(KCSharingStore *)self fingerprintAllPrivateKeysInTransaction:a4 error:&v27];
  v15 = v27;
  if ((v14 & 1) == 0)
  {
    sub_1000152F0(a4, @"DROP TABLE lsfp", 0);
    v19 = @"Fingerprinting all private keys";
    goto LABEL_7;
  }

  v26 = 0;
  v16 = [(KCSharingStore *)self fingerprintAllPasswordsInTransaction:a4 error:&v26];
  v17 = v26;
  if (v16)
  {
    v18 = v8[2](v8, a5);
    sub_1000152F0(a4, @"DROP TABLE lsfp", 0);
  }

  else
  {
    sub_1000152F0(a4, @"DROP TABLE lsfp", 0);
    sub_100061EE8(a5, 27, v17, @"Fingerprinting all passwords", v20, v21, v22, v23, v25);
    v18 = 0;
  }

LABEL_10:
  return v18;
}

- (BOOL)stageAllOutgoingChangesWithError:(id *)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004C0A0;
  v4[3] = &unk_100333DB8;
  v4[4] = self;
  return [(KCSharingStore *)self withConnection:v4 error:a3];
}

- (BOOL)hasOutgoingChangesInDatabaseWithScope:(int64_t)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004C1FC;
  v5[3] = &unk_100333D68;
  v5[6] = a3;
  v5[7] = a2;
  v5[4] = self;
  v5[5] = &v6;
  if ([(KCSharingStore *)self withConnection:v5 error:0])
  {
    v3 = *(v7 + 24);
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v3 & 1;
}

- (BOOL)setValue:(id)a3 forMetadataKey:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (a3)
  {
    v9 = [NSPropertyListSerialization dataWithPropertyList:a3 format:200 options:0 error:a5];
    if (v9)
    {
      v24[0] = kSecClass;
      v24[1] = kSecUseDataProtectionKeychain;
      v25[0] = kSecClassGenericPassword;
      v25[1] = &__kCFBooleanTrue;
      v25[2] = &__kCFBooleanFalse;
      v24[2] = kSecAttrSynchronizable;
      v24[3] = kSecAttrAccessGroup;
      v10 = [(KCSharingStore *)self accessGroups];
      v11 = [v10 entryAccessGroup];
      v25[3] = v11;
      v25[4] = v8;
      v24[4] = kSecAttrAccount;
      v24[5] = kSecAttrService;
      v25[5] = self->_metadataDomain;
      v12 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:6];

      v22[0] = kSecAttrIsInvisible;
      v22[1] = kSecValueData;
      v23[0] = &__kCFBooleanTrue;
      v23[1] = v9;
      v13 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
      v14 = [v12 mutableCopy];
      [v14 addEntriesFromDictionary:v13];
      v20[0] = kSecAttrAccessible;
      v20[1] = kSecAttrSysBound;
      v21[0] = kSecAttrAccessibleWhenUnlocked;
      v21[1] = &off_100363EF8;
      v15 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
      [v14 addEntriesFromDictionary:v15];

      v16 = SecItemAdd(v14, 0);
      if (v16 == -25299)
      {
        v16 = SecItemUpdate(v12, v13);
      }

      v17 = v16 == 0;
      if (v16)
      {
        Error = SecCopyLastError();
        if (a5)
        {
          *a5 = Error;
        }

        else if (Error)
        {
          CFRelease(Error);
        }
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = [(KCSharingStore *)self removeValueForMetadataKey:v8 error:a5];
  }

  return v17;
}

- (BOOL)removeValueForMetadataKey:(id)a3 error:(id *)a4
{
  v16[0] = kSecClass;
  v16[1] = kSecUseDataProtectionKeychain;
  v17[0] = kSecClassGenericPassword;
  v17[1] = &__kCFBooleanTrue;
  v17[2] = &__kCFBooleanFalse;
  v16[2] = kSecAttrSynchronizable;
  v16[3] = kSecAttrAccessGroup;
  v6 = a3;
  v7 = [(KCSharingStore *)self accessGroups];
  v8 = [v7 entryAccessGroup];
  v17[3] = v8;
  v17[4] = v6;
  v16[4] = kSecAttrAccount;
  v16[5] = kSecAttrService;
  v17[5] = self->_metadataDomain;
  v9 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:6];

  v10 = SecItemDelete(v9);
  v11 = v10;
  if (v10 != -25300 && v10)
  {
    Error = SecCopyLastError();
    if (a4)
    {
      *a4 = Error;
    }

    else if (Error)
    {
      CFRelease(Error);
    }
  }

  if (v11)
  {
    v13 = v11 == -25300;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;

  return v14;
}

- (id)fetchValueForMetadataKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v25[0] = kSecClass;
  v25[1] = kSecUseDataProtectionKeychain;
  v26[0] = kSecClassGenericPassword;
  v26[1] = &__kCFBooleanTrue;
  v26[2] = &__kCFBooleanFalse;
  v25[2] = kSecAttrSynchronizable;
  v25[3] = kSecAttrAccessGroup;
  v7 = [(KCSharingStore *)self accessGroups];
  v8 = [v7 entryAccessGroup];
  v26[3] = v8;
  v26[4] = v6;
  v25[4] = kSecAttrAccount;
  v25[5] = kSecAttrService;
  v26[5] = self->_metadataDomain;
  v26[6] = kSecMatchLimitOne;
  v25[6] = kSecMatchLimit;
  v25[7] = kSecReturnAttributes;
  v25[8] = kSecReturnData;
  v26[7] = &__kCFBooleanTrue;
  v26[8] = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:9];

  v20 = 0xAAAAAAAAAAAAAAAALL;
  v10 = SecItemCopyMatching(v9, &v20);
  if (v10 == -25300)
  {
LABEL_11:
    v15 = 0;
    goto LABEL_15;
  }

  if (v10)
  {
    Error = SecCopyLastError();
    if (a4)
    {
      v15 = 0;
      *a4 = Error;
      goto LABEL_15;
    }

    if (Error)
    {
      CFRelease(Error);
    }

    goto LABEL_11;
  }

  v11 = v20;
  v12 = [v20 objectForKeyedSubscript:kSecValueData];
  if ((_NSIsNSData() & 1) == 0)
  {
    v23 = @"KCSharingInvalidAttribute";
    v21 = kSecValueData;
    v14 = [v12 copy];
    v22 = v14;
    v17 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v24 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    sub_100061E2C(a4, 1, v18);

LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  v13 = [NSPropertyListSerialization propertyListWithData:v12 options:0 format:0 error:a4];
  if (!v13)
  {
    v14 = 0;
    goto LABEL_13;
  }

  v14 = v13;
  v15 = v14;
LABEL_14:

LABEL_15:

  return v15;
}

- (BOOL)withConnection:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10003E510;
  v25 = sub_10003E520;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v16 = 0;
  db = self->_db;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10004CD3C;
  v12[3] = &unk_100333CF0;
  v14 = &v17;
  v8 = v6;
  v13 = v8;
  v15 = &v21;
  if ((sub_100008A70(1, 1, db, &v16, v12) & 1) == 0)
  {
    v10 = v16;
    if (a4)
    {
      v9 = 0;
      *a4 = v16;
      v16 = 0;
      goto LABEL_11;
    }

    if (v16)
    {
      v16 = 0;
      CFRelease(v10);
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  if ((v18[3] & 1) == 0)
  {
    if (a4)
    {
      v9 = 0;
      *a4 = v22[5];
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = 1;
LABEL_11:

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

- (id)plan
{
  v2 = [[KCSharingDatabaseUpdatePlan alloc] initWithLoggingIdentifier:self->_loggingIdentifier];

  return v2;
}

- (KCSharingStore)initWithSecDB:(__OpaqueSecDb *)a3 loggingIdentifier:(id)a4
{
  v7 = a4;
  v8 = [(KCSharingStore *)self initWithSecDB:a3 accessGroups:0 metadataDomain:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_loggingIdentifier, a4);
  }

  return v9;
}

- (KCSharingStore)initWithSecDB:(__OpaqueSecDb *)a3 accessGroups:(id)a4 metadataDomain:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = KCSharingStore;
  v10 = [(KCSharingStore *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_db, a3);
    if (v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = objc_alloc_init(KCSharingAccessGroups);
    }

    accessGroups = v11->_accessGroups;
    v11->_accessGroups = v12;

    if (v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = @"KCSharingStoreMetadata";
    }

    objc_storeStrong(&v11->_metadataDomain, v14);
    loggingIdentifier = v11->_loggingIdentifier;
    v11->_loggingIdentifier = 0;
  }

  return v11;
}

@end