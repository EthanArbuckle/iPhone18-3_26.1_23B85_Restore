@interface KCSharingDatabaseUpdatePlan
- (BOOL)applyInTransaction:(__OpaqueSecDbConnection *)a3 withAccessGroups:(id)a4 updateInfos:(id)a5 error:(id *)a6;
- (BOOL)applyPasskeysFixForMirrorEntriesInTransaction:(__OpaqueSecDbConnection *)a3 withAccessGroups:(id)a4 error:(id *)a5;
- (BOOL)insertIntoMirrorWithMirrorEntry:(id)a3 withAccessGroups:(id)a4 applyInTransaction:(__OpaqueSecDbConnection *)a5 updateInfos:(id)a6 withError:(id *)a7;
- (KCSharingDatabaseUpdatePlan)init;
- (KCSharingDatabaseUpdatePlan)initWithLoggingIdentifier:(id)a3;
- (id)groupUpdateInfoFrom:(SecDbItem *)a3 to:(id)a4;
- (id)removeCorruptedItemAndUpdateLocalItemWithMirrorItem:(id)a3 inTransaction:(__OpaqueSecDbConnection *)a4 withAccessGroups:(id)a5 error:(id *)a6;
- (id)updateInfoForDeletion:(SecDbItem *)a3;
- (id)updateLocalItemWithRemoteItem:(id)a3 inTransaction:(__OpaqueSecDbConnection *)a4 withAccessGroups:(id)a5 error:(id *)a6;
@end

@implementation KCSharingDatabaseUpdatePlan

- (id)removeCorruptedItemAndUpdateLocalItemWithMirrorItem:(id)a3 inTransaction:(__OpaqueSecDbConnection *)a4 withAccessGroups:(id)a5 error:(id *)a6
{
  v8 = a3;
  v61 = a5;
  v76 = 0;
  v62 = v8;
  v9 = [v8 type];
  loggingIdentifier = self->_loggingIdentifier;
  if (v9 != 1)
  {
    v36 = KCSharingLogObject();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "FixUp is not supported for non-passkey item", buf, 2u);
    }

    goto LABEL_35;
  }

  v11 = KCSharingLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Trying to remove corrupted item and reinsert/update local item with fixup plan", buf, 2u);
  }

  v12 = [v8 privateKey];
  v59 = [v12 attributesWithAccessGroups:v61 error:a6];

  if (!v59)
  {
    v37 = self->_loggingIdentifier;
    v36 = KCSharingLogObject();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v53 = [v8 privateKey];
      *buf = 138477827;
      *&buf[4] = v53;
      _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Failed to get attributes out of %{private}@", buf, 0xCu);
    }

LABEL_35:

LABEL_59:
    v34 = 0;
LABEL_60:
    v48 = 0;
    goto LABEL_61;
  }

  v13 = [v8 privateKey];
  v14 = [objc_opt_class() databaseItemClass];
  v56 = sub_10001A690(v14, v59, dword_10039E2F8, &v76);

  if (!v56)
  {
    v38 = v76;
    if (a6)
    {
      *a6 = v76;
      v76 = 0;
    }

    else if (v76)
    {
      v76 = 0;
      CFRelease(v38);
    }

    goto LABEL_59;
  }

  v15 = sub_10001B350(v56, 1, 0, &v76);
  if (!v15)
  {
    v39 = self->_loggingIdentifier;
    v40 = KCSharingLogObject();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v54 = [v8 privateKey];
      *buf = 138478083;
      *&buf[4] = v54;
      *&buf[12] = 2113;
      *&buf[14] = v76;
      _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Failed to get primary key attributes out of %{private}@ with error: %{private}@", buf, 0x16u);
    }

    v41 = v76;
    if (a6)
    {
      *a6 = v76;
      v76 = 0;
    }

    else if (v76)
    {
      v76 = 0;
      CFRelease(v41);
    }

    goto LABEL_59;
  }

  v16 = v15;
  v60 = objc_alloc_init(NSMutableDictionary);
  [v60 setObject:kSecClassKey forKeyedSubscript:kSecClass];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v16;
  v17 = [(__CFDictionary *)obj countByEnumeratingWithState:&v72 objects:v83 count:16];
  if (v17)
  {
    v18 = *v73;
    v19 = kSecAttrKeyCreator;
    v20 = kSecAttrStartDate;
    v64 = kSecAttrEndDate;
    v63 = kSecAttrMultiUser;
    do
    {
      v21 = 0;
      do
      {
        if (*v73 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v72 + 1) + 8 * v21);
        if (([v22 isEqual:{v19, v56}] & 1) != 0 || (objc_msgSend(v22, "isEqual:", v20) & 1) != 0 || (objc_msgSend(v22, "isEqual:", v64) & 1) != 0 || (objc_msgSend(v22, "isEqual:", kSecAttrTokenID) & 1) != 0 || (objc_msgSend(v22, "isEqual:", v63) & 1) != 0 || (objc_msgSend(v22, "isEqual:", kSecAttrKeyClass) & 1) != 0 || objc_msgSend(v22, "isEqual:", kSecAttrSyncViewHint))
        {
          v23 = self->_loggingIdentifier;
          v24 = KCSharingLogObject();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138477827;
            *&buf[4] = v22;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Skipping adding %{private}@ attr in fixup", buf, 0xCu);
          }
        }

        else
        {
          v25 = self->_loggingIdentifier;
          v26 = KCSharingLogObject();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138477827;
            *&buf[4] = v22;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "adding %{private}@ attr in fixup", buf, 0xCu);
          }

          v24 = [(__CFDictionary *)v59 objectForKeyedSubscript:v22];
          [v60 setObject:v24 forKeyedSubscript:v22];
        }

        v21 = v21 + 1;
      }

      while (v17 != v21);
      v27 = [(__CFDictionary *)obj countByEnumeratingWithState:&v72 objects:v83 count:16];
      v17 = v27;
    }

    while (v27);
  }

  v28 = [(__CFDictionary *)v59 objectForKeyedSubscript:kSecAttrLabel];
  [v60 setObject:v28 forKeyedSubscript:kSecAttrLabel];

  [v60 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecAttrIsPermanent];
  [v60 setObject:kSecAttrKeyClassPublic forKeyedSubscript:kSecAttrKeyClass];
  [v60 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecAttrIsPrivate];
  [v60 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecAttrIsModifiable];
  [v60 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecAttrIsExtractable];
  [v60 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecAttrCanDecrypt];
  [v60 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecAttrCanDerive];
  [v60 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecAttrCanSign];
  [v60 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecAttrCanUnwrap];
  v29 = self->_loggingIdentifier;
  v30 = KCSharingLogObject();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    *&buf[4] = v60;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Trying to delete item with query: %{private}@", buf, 0xCu);
  }

  v31 = sub_100006454(v60, 0, -1, 0, &v76);
  if (v31)
  {
    v32 = v31;
    v70 = 0;
    v71 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v82 = 1;
    v67 = 0;
    v68 = &v67;
    v69 = 0x2020000000;
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_1000582C8;
    v66[3] = &unk_100334AE8;
    v66[5] = buf;
    v66[6] = a4;
    v66[4] = &v67;
    v33 = sub_10001DC5C(v31, 0, a4, &v71, v66);
    sub_10000DF70(v32, 0);
    if (v33)
    {
      if (*(*&buf[8] + 24))
      {
        v34 = [(KCSharingDatabaseUpdatePlan *)self updateLocalItemWithRemoteItem:v62 inTransaction:a4 withAccessGroups:v61 error:a6];
        v35 = 1;
LABEL_76:
        _Block_object_dispose(&v67, 8);
        _Block_object_dispose(buf, 8);
        goto LABEL_77;
      }

      v50 = self->_loggingIdentifier;
      v51 = KCSharingLogObject();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v55 = v68[3];
        *v77 = 138478083;
        v78 = v60;
        v79 = 2114;
        v80 = v55;
        _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Failed to perform delete with %{private}@ with error:%{public}@", v77, 0x16u);
      }

      v52 = v68[3];
      if (a6)
      {
        v35 = 0;
        v34 = 0;
        *a6 = v52;
        v68[3] = 0;
        goto LABEL_76;
      }

      if (v52)
      {
        v68[3] = 0;
        CFRelease(v52);
      }
    }

    else
    {
      v45 = self->_loggingIdentifier;
      v46 = KCSharingLogObject();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *v77 = 138478083;
        v78 = v60;
        v79 = 2114;
        v80 = v71;
        _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Failed to perform query with %{private}@ with error:%{public}@", v77, 0x16u);
      }

      v47 = v71;
      if (a6)
      {
        v35 = 0;
        v34 = 0;
        *a6 = v71;
        v71 = 0;
        goto LABEL_76;
      }

      if (v71)
      {
        v71 = 0;
        CFRelease(v47);
      }
    }

    v35 = 0;
    v34 = 0;
    goto LABEL_76;
  }

  v42 = self->_loggingIdentifier;
  v43 = KCSharingLogObject();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    *buf = 138478083;
    *&buf[4] = v60;
    *&buf[12] = 2114;
    *&buf[14] = v76;
    _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Failed to form query with %{private}@ with error:%{public}@", buf, 0x16u);
  }

  v44 = v76;
  if (a6)
  {
    v35 = 0;
    v34 = 0;
    *a6 = v76;
    v76 = 0;
  }

  else
  {
    if (v76)
    {
      v76 = 0;
      CFRelease(v44);
    }

    v35 = 0;
    v34 = 0;
  }

LABEL_77:

  if ((v35 & 1) == 0)
  {
    goto LABEL_60;
  }

  v34 = v34;
  v48 = v34;
LABEL_61:

  return v48;
}

- (BOOL)applyPasskeysFixForMirrorEntriesInTransaction:(__OpaqueSecDbConnection *)a3 withAccessGroups:(id)a4 error:(id *)a5
{
  v7 = a4;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = self->_reinsertIntoLocal;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
  v10 = v9 == 0;
  if (!v9)
  {
LABEL_36:

    goto LABEL_37;
  }

  v11 = v9;
  v34 = a3;
  v31 = v9 == 0;
  v12 = *v39;
  v35 = v7;
  v33 = v8;
  while (2)
  {
    v13 = 0;
    do
    {
      if (*v39 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v38 + 1) + 8 * v13);
      if ([v14 type] == 1)
      {
        v37 = 0;
        v15 = [v14 remoteItemWithAccessGroups:v7 error:&v37];
        v16 = v37;
        if (v15)
        {
          v17 = [v15 contents];
          if (v17)
          {
            if (!-[NSObject isFullyDecoded](v15, "isFullyDecoded") || [v14 flags])
            {
              v18 = v16;
LABEL_12:

              v16 = v18;
              v7 = v35;
              goto LABEL_21;
            }

            v36 = v16;
            v23 = [(KCSharingDatabaseUpdatePlan *)self removeCorruptedItemAndUpdateLocalItemWithMirrorItem:v17 inTransaction:v34 withAccessGroups:v7 error:&v36];
            v18 = v36;

            if (v23)
            {
              v24 = -[KCSharingMirrorEntry initWithUpdatedLocalItem:forMirrorEntry:flags:]([KCSharingMirrorEntry alloc], "initWithUpdatedLocalItem:forMirrorEntry:flags:", v23, v14, [v14 flags]);
              if (![(KCSharingDatabaseUpdatePlan *)self insertIntoMirrorWithMirrorEntry:v24 withAccessGroups:v35 applyInTransaction:v34 updateInfos:0 withError:a5])
              {
                v27 = v23;
                loggingIdentifier = self->_loggingIdentifier;
                v29 = KCSharingLogObject();
                v8 = v33;
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138477827;
                  v43 = v24;
                  _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to insert into mirror: %{private}@", buf, 0xCu);
                }

                v7 = v35;
                v10 = v31;
                goto LABEL_36;
              }

              HIDWORD(v31) = 1;
              v8 = v33;
              goto LABEL_12;
            }

            v25 = self->_loggingIdentifier;
            v22 = KCSharingLogObject();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v43 = v18;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to update local item with mirror item with error: %{public}@", buf, 0xCu);
            }

            v16 = v18;
            v7 = v35;
            v8 = v33;
          }

          else
          {
            v21 = self->_loggingIdentifier;
            v22 = KCSharingLogObject();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "failed to decode mirror remote item result", buf, 2u);
            }
          }
        }

        else
        {
          v20 = self->_loggingIdentifier;
          v15 = KCSharingLogObject();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v43 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "failed to decode mirror entry with error: %{public}@", buf, 0xCu);
          }
        }
      }

      else
      {
        v19 = self->_loggingIdentifier;
        v16 = KCSharingLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Fixup is not supported for non-passkey item", buf, 2u);
        }
      }

LABEL_21:

      v13 = v13 + 1;
    }

    while (v11 != v13);
    v26 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
    v11 = v26;
    if (v26)
    {
      continue;
    }

    break;
  }

  if ((v31 & 0x100000000) != 0)
  {
    sub_10017E868();
  }

  v10 = 1;
LABEL_37:

  return v10;
}

- (id)updateLocalItemWithRemoteItem:(id)a3 inTransaction:(__OpaqueSecDbConnection *)a4 withAccessGroups:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  v43 = 0;
  v11 = [v9 type];
  if (v11 == 2)
  {
    v23 = [v9 internetPassword];
    v14 = [v23 attributesWithAccessGroups:v10 error:a6];

    if (v14)
    {
      v24 = [v9 internetPassword];
      v25 = [objc_opt_class() databaseItemClass];
      v17 = sub_10001A690(v25, v14, dword_10039E2F8, &v43);

      if (v17)
      {
        v26 = sub_100019F7C();
        v42 = 0;
        sub_10001A804(v17, v26, &v42);
        if (v26)
        {
          CFRelease(v26);
        }

        v19 = v42;
        if (!v42)
        {
          v35 = _NSConcreteStackBlock;
          v36 = 3221225472;
          v37 = sub_100058C1C;
          v38 = &unk_100334A38;
          v28 = v17;
          v39 = v28;
          if (sub_10001AA4C(v28, a4, &v43, &v35) & 1) != 0 || (sub_10016379C(v43))
          {
            v29 = v43;
            if (v43)
            {
              v43 = 0;
              CFRelease(v29);
            }

            v30 = [KCSharingLocalItem alloc];
            v12 = [(KCSharingLocalItem *)v30 initPasswordWithInternetPasswordDatabaseItem:v28 error:a6, v35, v36, v37, v38];
            v31 = 1;
          }

          else
          {
            v34 = v43;
            if (a6)
            {
              v31 = 0;
              v12 = 0;
              *a6 = v43;
              v43 = 0;
            }

            else
            {
              if (v43)
              {
                v43 = 0;
                CFRelease(v34);
              }

              v31 = 0;
              v12 = 0;
            }
          }

          if (v31)
          {
            goto LABEL_37;
          }

          goto LABEL_30;
        }

        goto LABEL_20;
      }

LABEL_22:
      v19 = v43;
      if (a6)
      {
        *a6 = v43;
        v43 = 0;
        goto LABEL_28;
      }

      if (!v43)
      {
        goto LABEL_28;
      }

      v43 = 0;
LABEL_27:
      CFRelease(v19);
      goto LABEL_28;
    }

LABEL_29:
    v12 = 0;
    goto LABEL_30;
  }

  v12 = 0;
  if (v11 == 1)
  {
    v13 = [v9 privateKey];
    v14 = [v13 attributesWithAccessGroups:v10 error:a6];

    if (v14)
    {
      v15 = [v9 privateKey];
      v16 = [objc_opt_class() databaseItemClass];
      v17 = sub_10001A690(v16, v14, dword_10039E2F8, &v43);

      if (v17)
      {
        v18 = sub_100019F7C();
        v42 = 0;
        sub_10001A804(v17, v18, &v42);
        if (v18)
        {
          CFRelease(v18);
        }

        v19 = v42;
        if (!v42)
        {
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_100058B94;
          v40[3] = &unk_100334A38;
          v20 = v17;
          v41 = v20;
          if (sub_10001AA4C(v20, a4, &v43, v40) & 1) != 0 || (sub_10016379C(v43))
          {
            v21 = v43;
            if (v43)
            {
              v43 = 0;
              CFRelease(v21);
            }

            v12 = [[KCSharingLocalItem alloc] initPasskeyWithPrivateKeyDatabaseItem:v20 error:a6];
            v22 = 1;
          }

          else
          {
            v33 = v43;
            if (a6)
            {
              v22 = 0;
              v12 = 0;
              *a6 = v43;
              v43 = 0;
            }

            else
            {
              if (v43)
              {
                v43 = 0;
                CFRelease(v33);
              }

              v22 = 0;
              v12 = 0;
            }
          }

          if (v22)
          {
            goto LABEL_37;
          }

LABEL_30:
          v27 = 0;
          goto LABEL_38;
        }

LABEL_20:
        if (a6)
        {
          *a6 = v19;
LABEL_28:

          goto LABEL_29;
        }

        v42 = 0;
        goto LABEL_27;
      }

      goto LABEL_22;
    }

    goto LABEL_29;
  }

LABEL_37:
  v12 = v12;
  v27 = v12;
LABEL_38:

  return v27;
}

- (BOOL)insertIntoMirrorWithMirrorEntry:(id)a3 withAccessGroups:(id)a4 applyInTransaction:(__OpaqueSecDbConnection *)a5 updateInfos:(id)a6 withError:(id *)a7
{
  v12 = a3;
  v13 = a6;
  cf = 0;
  v14 = [v12 attributesWithAccessGroups:a4 error:a7];
  if (v14)
  {
    v15 = [objc_opt_class() databaseItemClass];
    v16 = sub_10001A690(v15, v14, dword_10039E2F8, &cf);
    if (v16)
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100058E70;
      v22[3] = &unk_100334AA0;
      v23 = v12;
      v24 = v13;
      v25 = self;
      v26 = v16;
      if (sub_10001AA4C(v26, a5, &cf, v22) & 1) != 0 || (sub_10016379C(cf))
      {
        v17 = cf;
        if (cf)
        {
          cf = 0;
          CFRelease(v17);
        }

        v18 = 1;
      }

      else
      {
        v20 = cf;
        if (a7)
        {
          v18 = 0;
          *a7 = cf;
          cf = 0;
        }

        else
        {
          if (cf)
          {
            cf = 0;
            CFRelease(v20);
          }

          v18 = 0;
        }
      }
    }

    else
    {
      v19 = cf;
      if (a7)
      {
        v18 = 0;
        *a7 = cf;
        cf = 0;
      }

      else
      {
        if (cf)
        {
          cf = 0;
          CFRelease(v19);
        }

        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)applyInTransaction:(__OpaqueSecDbConnection *)a3 withAccessGroups:(id)a4 updateInfos:(id)a5 error:(id *)a6
{
  v100 = a4;
  v94 = a5;
  v101 = [(NSMutableArray *)self->_insertIntoMirror mutableCopy];
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v99 = self;
  v8 = self->_insertIntoLocalAndMirror;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v132 objects:v142 count:16];
  if (!v9)
  {
    v97 = 0;
    goto LABEL_39;
  }

  v10 = v9;
  v97 = 0;
  v11 = *v133;
  v96 = v8;
  do
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v133 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v132 + 1) + 8 * i);
      v14 = [v13 type];
      if ((v14 - 1) < 2)
      {
        v131 = 0;
        v15 = [v13 remoteItemWithAccessGroups:v100 error:&v131];
        v16 = v131;
        if (v15)
        {
          v22 = [v15 contents];
          if (v22)
          {
            v130 = v16;
            v23 = [(KCSharingDatabaseUpdatePlan *)v99 updateLocalItemWithRemoteItem:v22 inTransaction:a3 withAccessGroups:v100 error:&v130];
            v24 = v130;

            if (v23)
            {
              if ([v15 isFullyDecoded])
              {
                v25 = 0;
              }

              else
              {
                v25 = 2;
              }

              v26 = [[KCSharingMirrorEntry alloc] initWithUpdatedLocalItem:v23 forIncomingEntry:v13 flags:v25];
              [v101 addObject:v26];
              loggingIdentifier = v99->_loggingIdentifier;
              v28 = KCSharingLogObject();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v23;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Inserted item into local: %@", buf, 0xCu);
              }

              v29 = v99->_loggingIdentifier;
              v30 = KCSharingLogObject();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v26;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "...with corresponding mirror: %@", buf, 0xCu);
              }

              v97 = 1;
            }

            else
            {
              v26 = [[KCSharingMirrorEntry alloc] initWithIncomingEntry:v13 flags:8];
              [v101 addObject:v26];
            }

            v16 = v24;
            v8 = v96;
          }

          else
          {
            v23 = [[KCSharingMirrorEntry alloc] initWithIncomingEntry:v13 flags:2];
            [v101 addObject:v23];
          }

          goto LABEL_33;
        }

LABEL_26:
        v19 = [KCSharingMirrorEntry alloc];
        v20 = v13;
        v21 = 2;
LABEL_27:
        v22 = [(KCSharingMirrorEntry *)v19 initWithIncomingEntry:v20 flags:v21];
        [v101 addObject:v22];
LABEL_33:

        goto LABEL_34;
      }

      if (v14)
      {
        if (v14 != 3)
        {
          continue;
        }

        v129 = 0;
        v15 = [v13 shareWithAccessGroups:v100 error:&v129];
        v16 = v129;
        if (!v15)
        {
          goto LABEL_26;
        }

        v17 = [v15 contents];

        if (!v17)
        {
          goto LABEL_26;
        }

        if ([v15 isFullyDecoded])
        {
          v18 = 0;
        }

        else
        {
          v18 = 2;
        }

        v19 = [KCSharingMirrorEntry alloc];
        v20 = v13;
        v21 = v18;
        goto LABEL_27;
      }

      v16 = [[KCSharingMirrorEntry alloc] initWithIncomingEntry:v13 flags:2];
      [v101 addObject:v16];
LABEL_34:
    }

    v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v132 objects:v142 count:16];
  }

  while (v10);
LABEL_39:

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v31 = v99->_reinsertIntoLocal;
  v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v125 objects:v140 count:16];
  if (!v32)
  {
    goto LABEL_70;
  }

  v33 = v32;
  v34 = *v126;
  while (2)
  {
    v35 = 0;
    while (2)
    {
      if (*v126 != v34)
      {
        objc_enumerationMutation(v31);
      }

      v36 = *(*(&v125 + 1) + 8 * v35);
      v37 = [v36 type];
      if ((v37 - 1) < 2)
      {
        v124 = 0;
        v43 = [v36 remoteItemWithAccessGroups:v100 error:&v124];
        v39 = v124;
        if (v43)
        {
          v44 = [v43 contents];
          if (v44)
          {
            v123 = v39;
            v45 = [(KCSharingDatabaseUpdatePlan *)v99 updateLocalItemWithRemoteItem:v44 inTransaction:a3 withAccessGroups:v100 error:&v123];
            v46 = v123;

            v47 = [v36 flags];
            v48 = v47;
            if (v45)
            {
              if ([v43 isFullyDecoded])
              {
                v49 = v48 & 0xFFFFFFF5;
              }

              else
              {
                v49 = v48 & 0xFFFFFFF5 | 2;
              }

              v50 = [[KCSharingMirrorEntry alloc] initWithUpdatedLocalItem:v45 forMirrorEntry:v36 flags:v49];
              v97 = 1;
            }

            else
            {
              v50 = [[KCSharingMirrorEntry alloc] initWithMirrorEntry:v36 flags:v47 & 0xFFFFFFF5 | 8];
            }

            [v101 addObject:v50];

            v39 = v46;
          }

          else
          {
            v45 = -[KCSharingMirrorEntry initWithMirrorEntry:flags:]([KCSharingMirrorEntry alloc], "initWithMirrorEntry:flags:", v36, [v36 flags] & 0xFFFFFFF5 | 2);
            [v101 addObject:v45];
          }
        }

        else
        {
          v44 = -[KCSharingMirrorEntry initWithMirrorEntry:flags:]([KCSharingMirrorEntry alloc], "initWithMirrorEntry:flags:", v36, [v36 flags] & 0xFFFFFFF5 | 2);
          [v101 addObject:v44];
        }

LABEL_67:
      }

      else
      {
        if (!v37)
        {
          v39 = -[KCSharingMirrorEntry initWithMirrorEntry:flags:]([KCSharingMirrorEntry alloc], "initWithMirrorEntry:flags:", v36, [v36 flags] & 0xFFFFFFF5 | 2);
          [v101 addObject:v39];
          goto LABEL_67;
        }

        if (v37 == 3)
        {
          v122 = 0;
          v38 = [v36 shareWithAccessGroups:v100 error:&v122];
          v39 = v122;
          v40 = [v36 flags];
          v41 = v40;
          if (v38)
          {
            if ([v38 isFullyDecoded])
            {
              v42 = v41 & 0xFFFFFFF5;
            }

            else
            {
              v42 = v41 & 0xFFFFFFF5 | 2;
            }
          }

          else
          {
            v42 = v40 & 0xFFFFFFF5 | 2;
          }

          v51 = [[KCSharingMirrorEntry alloc] initWithMirrorEntry:v36 flags:v42];
          [v101 addObject:v51];

          goto LABEL_67;
        }
      }

      if (v33 != ++v35)
      {
        continue;
      }

      break;
    }

    v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v125 objects:v140 count:16];
    if (v33)
    {
      continue;
    }

    break;
  }

LABEL_70:

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v52 = v99->_insertIntoIncoming;
  v53 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v118 objects:v139 count:16];
  if (!v53)
  {
    goto LABEL_83;
  }

  v54 = v53;
  v55 = *v119;
  while (2)
  {
    v56 = 0;
    while (2)
    {
      if (*v119 != v55)
      {
        objc_enumerationMutation(v52);
      }

      v57 = *(*(&v118 + 1) + 8 * v56);
      *buf = 0;
      v58 = [v57 attributesWithAccessGroups:v100 error:a6];
      if (!v58)
      {
        goto LABEL_117;
      }

      v59 = v58;
      v60 = [objc_opt_class() databaseItemClass];
      v61 = sub_10001A690(v60, v59, dword_10039E2F8, buf);
      if (!v61)
      {
LABEL_118:
        v86 = *buf;
        if (a6)
        {
          *a6 = *buf;
          *buf = 0;
          v65 = v94;
        }

        else
        {
          v65 = v94;
          if (*buf)
          {
            *buf = 0;
            CFRelease(v86);
          }
        }

LABEL_130:

        goto LABEL_131;
      }

      v116[0] = _NSConcreteStackBlock;
      v116[1] = 3221225472;
      v116[2] = sub_100059BD0;
      v116[3] = &unk_100334A38;
      v62 = v61;
      v117 = v62;
      if ((sub_10001AA4C(v62, a3, buf, v116) & 1) == 0 && (sub_10016379C(*buf) & 1) == 0)
      {
        v88 = *buf;
        if (a6)
        {
          *a6 = *buf;
          *buf = 0;
          v65 = v94;
        }

        else
        {
          v65 = v94;
          if (*buf)
          {
            *buf = 0;
            CFRelease(v88);
          }
        }

        v89 = v117;
LABEL_129:

        goto LABEL_130;
      }

      v63 = *buf;
      if (*buf)
      {
        *buf = 0;
        CFRelease(v63);
      }

      if (v54 != ++v56)
      {
        continue;
      }

      break;
    }

    v54 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v118 objects:v139 count:16];
    if (v54)
    {
      continue;
    }

    break;
  }

LABEL_83:

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v52 = v101;
  v64 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v112 objects:v138 count:16];
  v65 = v94;
  if (v64)
  {
    v66 = v64;
    v67 = *v113;
    while (2)
    {
      for (j = 0; j != v66; j = j + 1)
      {
        if (*v113 != v67)
        {
          objc_enumerationMutation(v52);
        }

        v69 = *(*(&v112 + 1) + 8 * j);
        if (![(KCSharingDatabaseUpdatePlan *)v99 insertIntoMirrorWithMirrorEntry:v69 withAccessGroups:v100 applyInTransaction:a3 updateInfos:v94 withError:a6])
        {
          v87 = v99->_loggingIdentifier;
          v59 = KCSharingLogObject();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            *buf = 138477827;
            *&buf[4] = v69;
            _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Failed to insert into mirror: %{private}@", buf, 0xCu);
          }

          goto LABEL_130;
        }
      }

      v66 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v112 objects:v138 count:16];
      if (v66)
      {
        continue;
      }

      break;
    }
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v52 = v99->_insertIntoOutgoing;
  v70 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v108 objects:v137 count:16];
  if (!v70)
  {
LABEL_104:

    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v52 = v99->_itemsToDelete;
    v79 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v102 objects:v136 count:16];
    if (v79)
    {
      v80 = v79;
      v81 = *v103;
      v65 = v94;
      v82 = a6;
      while (2)
      {
        for (k = 0; k != v80; k = k + 1)
        {
          if (*v103 != v81)
          {
            objc_enumerationMutation(v52);
          }

          v84 = *(*(&v102 + 1) + 8 * k);
          *buf = 0;
          if (v94)
          {
            v85 = [(KCSharingDatabaseUpdatePlan *)v99 updateInfoForDeletion:v84];
            if (v85)
            {
              [v94 addObject:v85];
            }

            v82 = a6;
          }

          if ((sub_1000171B0(v84, a3, buf, &stru_100334A78) & 1) == 0)
          {
            v92 = *buf;
            if (v82)
            {
              *v82 = *buf;
            }

            else if (*buf)
            {
              *buf = 0;
              CFRelease(v92);
            }

            goto LABEL_131;
          }
        }

        v80 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v102 objects:v136 count:16];
        if (v80)
        {
          continue;
        }

        break;
      }
    }

    else
    {

      v65 = v94;
      if ((v97 & 1) == 0)
      {
LABEL_137:
        v90 = 1;
        goto LABEL_132;
      }
    }

    sub_10017E868();
    goto LABEL_137;
  }

  v71 = v70;
  v72 = *v109;
LABEL_93:
  v73 = 0;
  while (1)
  {
    if (*v109 != v72)
    {
      objc_enumerationMutation(v52);
    }

    v74 = *(*(&v108 + 1) + 8 * v73);
    *buf = 0;
    v75 = [v74 attributesWithAccessGroups:v100 error:a6];
    if (!v75)
    {
      break;
    }

    v59 = v75;
    v76 = [objc_opt_class() databaseItemClass];
    v77 = sub_10001A690(v76, v59, dword_10039E2F8, buf);
    if (!v77)
    {
      goto LABEL_118;
    }

    v106[0] = _NSConcreteStackBlock;
    v106[1] = 3221225472;
    v106[2] = sub_100059BFC;
    v106[3] = &unk_100334A38;
    v62 = v77;
    v107 = v62;
    if ((sub_10001AA4C(v62, a3, buf, v106) & 1) == 0 && (sub_10016379C(*buf) & 1) == 0)
    {
      v93 = *buf;
      if (a6)
      {
        *a6 = *buf;
        *buf = 0;
        v65 = v94;
      }

      else
      {
        v65 = v94;
        if (*buf)
        {
          *buf = 0;
          CFRelease(v93);
        }
      }

      v89 = v107;
      goto LABEL_129;
    }

    v78 = *buf;
    if (*buf)
    {
      *buf = 0;
      CFRelease(v78);
    }

    if (v71 == ++v73)
    {
      v71 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v108 objects:v137 count:16];
      if (v71)
      {
        goto LABEL_93;
      }

      goto LABEL_104;
    }
  }

LABEL_117:
  v65 = v94;
LABEL_131:

  v90 = 0;
LABEL_132:

  return v90;
}

- (id)updateInfoForDeletion:(SecDbItem *)a3
{
  var1 = a3->var1;
  if (var1 != sub_100007604(@"sharingIncomingQueue", &qword_10039E0D0, &unk_10039E0C8))
  {
    goto LABEL_2;
  }

  v8 = sub_100015B5C(a3, @"deln");
  if (!v8 || !CFEqual(v8, &off_100363FA0))
  {
    goto LABEL_2;
  }

  v9 = sub_100015B5C(a3, kSecAttrUUID);
  if (v9)
  {
    v10 = CKRecordNameZoneWideShare == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (v9 != CKRecordNameZoneWideShare)
    {
LABEL_2:
      v6 = 0;
      goto LABEL_3;
    }
  }

  else if (!CFEqual(v9, CKRecordNameZoneWideShare))
  {
    goto LABEL_2;
  }

  if (!sub_100015B5C(a3, @"zone"))
  {
    goto LABEL_2;
  }

  v12 = sub_100015B5C(a3, @"zone");
  if ([v12 hasPrefix:@"group-"])
  {
    v13 = [v12 substringFromIndex:{objc_msgSend(@"group-", "length")}];
  }

  else
  {
    v13 = 0;
  }

  v6 = [[KCSharingGroupUpdateInfo alloc] initWithDepartedGroupID:v13];
  loggingIdentifier = self->_loggingIdentifier;
  v15 = KCSharingLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138477827;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Group update info: %{private}@", &v16, 0xCu);
  }

LABEL_3:

  return v6;
}

- (id)groupUpdateInfoFrom:(SecDbItem *)a3 to:(id)a4
{
  v6 = a4;
  v102 = 0;
  v7 = [[KCSharingMirrorEntry alloc] initWithMirrorDatabaseItem:a3 error:&v102];
  v8 = v102;
  if (!v7)
  {
    loggingIdentifier = self->_loggingIdentifier;
    v62 = KCSharingLogObject();
    if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
LABEL_63:
      v65 = 0;
      goto LABEL_64;
    }

    *buf = 138412290;
    v104 = v8;
    v69 = "Existing stored share didn't turn into MirrorEntry: %@";
    v70 = v62;
    v71 = 12;
LABEL_72:
    _os_log_error_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, v69, buf, v71);
    goto LABEL_63;
  }

  v9 = [(KCSharingMirrorEntry *)v7 record];
  v10 = [v9 recordID];
  v11 = [v10 recordName];
  if (([v11 isEqual:CKRecordNameZoneWideShare] & 1) == 0)
  {

    goto LABEL_62;
  }

  v12 = [v6 record];
  [v12 recordID];
  v13 = v82 = v8;
  [v13 recordName];
  v14 = v81 = self;
  v15 = [v14 isEqual:CKRecordNameZoneWideShare];

  self = v81;
  v8 = v82;

  if ((v15 & 1) == 0)
  {
LABEL_62:
    v72 = self->_loggingIdentifier;
    v62 = KCSharingLogObject();
    if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_63;
    }

    *buf = 0;
    v69 = "Stored share or new share isn't actually a share?!";
    v70 = v62;
    v71 = 2;
    goto LABEL_72;
  }

  v78 = v7;
  v16 = [(KCSharingMirrorEntry *)v7 record];
  v79 = v6;
  v83 = [v6 record];
  v84 = +[NSMutableArray array];
  v85 = +[NSMutableArray array];
  v17 = +[NSMutableDictionary dictionary];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v80 = v16;
  v18 = [v16 participants];
  v19 = [v18 countByEnumeratingWithState:&v98 objects:v114 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v99;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v99 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v98 + 1) + 8 * i);
        v24 = [v23 userIdentity];
        v25 = [v24 lookupInfo];
        v26 = sub_100031428(v25);

        if (v26)
        {
          [v17 setObject:v23 forKeyedSubscript:v26];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v98 objects:v114 count:16];
    }

    while (v20);
  }

  v27 = +[NSMutableDictionary dictionary];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v28 = [v83 participants];
  v29 = [v28 countByEnumeratingWithState:&v94 objects:v113 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v95;
    do
    {
      for (j = 0; j != v30; j = j + 1)
      {
        if (*v95 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v94 + 1) + 8 * j);
        v34 = [v33 userIdentity];
        v35 = [v34 lookupInfo];
        v36 = sub_100031428(v35);

        if (v36)
        {
          [v27 setObject:v33 forKeyedSubscript:v36];
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v94 objects:v113 count:16];
    }

    while (v30);
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v37 = [v80 participants];
  v38 = [v37 countByEnumeratingWithState:&v90 objects:v112 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v91;
    do
    {
      for (k = 0; k != v39; k = k + 1)
      {
        if (*v91 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v90 + 1) + 8 * k);
        v43 = [v42 userIdentity];
        v44 = [v43 lookupInfo];
        v45 = sub_100031428(v44);

        if (v45)
        {
          v46 = [v27 objectForKeyedSubscript:v45];
          if (v46)
          {
            if ([v42 acceptanceStatus] != 2 && objc_msgSend(v46, "acceptanceStatus") == 2)
            {
              v47 = sub_100031284(v46);
              if (v47)
              {
                v48 = v84;
                goto LABEL_35;
              }

              goto LABEL_36;
            }
          }

          else
          {
            v47 = sub_100031284(v42);
            if (v47)
            {
              v48 = v85;
LABEL_35:
              [v48 addObject:v47];
            }

LABEL_36:
          }
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v90 objects:v112 count:16];
    }

    while (v39);
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v49 = [v83 participants];
  v50 = [v49 countByEnumeratingWithState:&v86 objects:v111 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v87;
    do
    {
      for (m = 0; m != v51; m = m + 1)
      {
        if (*v87 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = *(*(&v86 + 1) + 8 * m);
        v55 = [v54 userIdentity];
        v56 = [v55 lookupInfo];
        v57 = sub_100031428(v56);

        if (v57)
        {
          v58 = [v17 objectForKeyedSubscript:v57];
          if (!v58 && [v54 acceptanceStatus] == 2)
          {
            v59 = sub_100031284(v54);
            if (v59)
            {
              [v84 addObject:v59];
            }
          }
        }
      }

      v51 = [v49 countByEnumeratingWithState:&v86 objects:v111 count:16];
    }

    while (v51);
  }

  v60 = v81->_loggingIdentifier;
  v61 = KCSharingLogObject();
  v62 = v80;
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478595;
    v104 = v80;
    v105 = 2113;
    v106 = v83;
    v107 = 2113;
    v108 = v84;
    v109 = 2113;
    v110 = v85;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Old Share: %{private}@ \n New Share: %{private}@ \n Added participants: %{private}@ \n Departed participants: %{private}@", buf, 0x2Au);
  }

  v8 = v82;
  if ([v84 count])
  {
    v63 = [KCSharingGroupUpdateInfo alloc];
    v64 = sub_1000314F8(v83);
    v65 = [v63 initWithGroup:v64 addedParticipants:v84];

    v66 = v81->_loggingIdentifier;
    v67 = KCSharingLogObject();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v104 = v65;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Group update info for added participants: %{private}@", buf, 0xCu);
    }
  }

  else
  {
    v74 = v81->_loggingIdentifier;
    v67 = KCSharingLogObject();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v75 = [v83 recordID];
      v76 = [v75 zoneID];
      v77 = sub_100031160(v76);
      *buf = 138412290;
      v104 = v77;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Group update for %@ with no new participants", buf, 0xCu);
    }

    v65 = 0;
  }

  v6 = v79;

  v7 = v78;
LABEL_64:

  return v65;
}

- (KCSharingDatabaseUpdatePlan)initWithLoggingIdentifier:(id)a3
{
  v5 = a3;
  v6 = [(KCSharingDatabaseUpdatePlan *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_loggingIdentifier, a3);
  }

  return v7;
}

- (KCSharingDatabaseUpdatePlan)init
{
  v17.receiver = self;
  v17.super_class = KCSharingDatabaseUpdatePlan;
  v2 = [(KCSharingDatabaseUpdatePlan *)&v17 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    insertIntoLocalAndMirror = v2->_insertIntoLocalAndMirror;
    v2->_insertIntoLocalAndMirror = v3;

    v5 = +[NSMutableArray array];
    reinsertIntoLocal = v2->_reinsertIntoLocal;
    v2->_reinsertIntoLocal = v5;

    v7 = objc_opt_new();
    insertIntoIncoming = v2->_insertIntoIncoming;
    v2->_insertIntoIncoming = v7;

    v9 = +[NSMutableArray array];
    insertIntoMirror = v2->_insertIntoMirror;
    v2->_insertIntoMirror = v9;

    v11 = +[NSMutableArray array];
    insertIntoOutgoing = v2->_insertIntoOutgoing;
    v2->_insertIntoOutgoing = v11;

    v13 = +[NSMutableArray array];
    itemsToDelete = v2->_itemsToDelete;
    v2->_itemsToDelete = v13;

    loggingIdentifier = v2->_loggingIdentifier;
    v2->_loggingIdentifier = 0;
  }

  return v2;
}

@end