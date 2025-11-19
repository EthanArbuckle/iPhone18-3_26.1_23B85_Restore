void sub_1000C6234(uint64_t a1)
{
  v2 = [*(a1 + 32) share];
  v3 = [v2 recordID];

  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) share];
  v6 = [v5 recordID];
  v7 = [v4 objectForKeyedSubscript:v6];

  v8 = +[REMLog cloudkitCollaboration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v7 ic_loggingDescription];
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v11 = [WeakRetained ic_loggingDescription];
    v17 = 138412546;
    v18 = v9;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Using share from per-share completion block %@: %@", &v17, 0x16u);
  }

  if (!v7)
  {
LABEL_5:
    v7 = [*(a1 + 32) share];
    v12 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v7 ic_loggingDescription];
      v14 = objc_loadWeakRetained((a1 + 72));
      v15 = [v14 ic_loggingDescription];
      v17 = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Falling back to share from metadata %@: %@", &v17, 0x16u);
    }
  }

  v16 = [REMCDObject objectWithRecordID:*(a1 + 48) accountID:*(a1 + 56) context:*(a1 + 64)];
  [v16 didAcceptShare:v7];
  [*(a1 + 64) ic_save];
}

void sub_1000C7AF4(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v4 = +[(REMCDObject *)REMCDAccount];
  [*(a1 + 32) _heightOfEntityNodeInMOMTreeForEffectiveMinimumSupportedVersionPropagation:v4 heightMap:v2];
  v3 = qword_100952B08;
  qword_100952B08 = v2;
}

uint64_t sub_1000C7C48(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 entity];
  v7 = [v6 name];

  v8 = [v5 entity];

  v9 = [v8 name];

  if (v7)
  {
    v10 = [*(a1 + 32) objectForKey:v7];
    v11 = [v10 unsignedIntegerValue];

    if (v9)
    {
LABEL_3:
      v12 = [*(a1 + 32) objectForKey:v9];
      v13 = [v12 unsignedIntegerValue];

      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  if (v11 <= v13)
  {
    if (v11 >= v13)
    {
      v14 = 0;
      if (v7 && v9)
      {
        v14 = [v7 compare:v9];
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = -1;
  }

  return v14;
}

void sub_1000C8050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C8078(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v20 = 0;
    v6 = [v5 existingObjectWithID:v3 error:&v20];
    v7 = v20;
    v8 = v7;
    if (v7)
    {
      v9 = [v7 userInfo];
      v10 = [v9 objectForKeyedSubscript:NSDebugDescriptionErrorKey];

      if (!v10)
      {
        v10 = [v8 description];
      }

      v11 = [v8 domain];
      v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 code]);
      v13 = [NSString stringWithFormat:@"%@[%@] - %@", v11, v12, v10];

      v14 = +[REMLogStore write];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_10076C034(v3, v13, v14);
      }
    }

    else
    {
      objc_opt_class();
      v10 = REMDynamicCast();
      if (v10)
      {
        v15 = &off_1008D4208;
        if (!*(a1 + 64))
        {
          v15 = off_1008D41C0;
        }

        v13 = objc_alloc_init(*v15);
        v16 = [v10 objectID];
        [v13 setManagedObjectID:v16];

        [v13 setBackingCDObject:v10];
        v17 = [*(a1 + 40) objectTreeProcessorDelegateFactoryWithTreeNode:v13];
        v18 = [[REMCDObjectTreeProcessor alloc] initWithTraversalOrder:0 batchSize:*(a1 + 56) delegate:v17];
        v19 = [(REMCDObjectTreeProcessor *)v18 traverse:v13];
        [*(a1 + 32) addObjectsFromArray:v19];
        ++*(*(*(a1 + 48) + 8) + 24);
      }

      else
      {
        v13 = +[REMLogStore write];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          sub_10076C0BC(v3, v13);
        }
      }
    }

    objc_autoreleasePoolPop(v4);
  }
}

uint64_t sub_1000C8D64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000C8D7C(void *a1)
{
  v2 = +[REMLogStore container];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1[6] + 8) + 40);
    v4 = [*(*(a1[7] + 8) + 40) count];
    *buf = 138543618;
    v55 = v3;
    v56 = 2048;
    v57 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}@] after save {attachmentIDs.count: %ld}", buf, 0x16u);
  }

  v52 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  obj = *(*(a1[7] + 8) + 40);
  v5 = REMCRMergeableOrderedSet_ptr;
  v41 = [obj countByEnumeratingWithState:&v49 objects:v66 count:16];
  if (v41)
  {
    v39 = *v50;
    do
    {
      for (i = 0; i != v41; i = i + 1)
      {
        if (*v50 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v49 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = [*(*(a1[7] + 8) + 40) objectForKeyedSubscript:v7];
        v10 = a1[4];
        v48 = 0;
        v11 = [v10 purgeAttachmentFilesWithAttachmentIDs:v9 accountID:v7 error:&v48];
        v12 = v48;
        v13 = [v5[51] container];
        v14 = v13;
        if (v12)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v35 = *(*(a1[6] + 8) + 40);
            v33 = [v12 code];
            v15 = [v12 localizedDescription];
            *buf = 138544642;
            v55 = v35;
            v56 = 2114;
            v57 = v7;
            v58 = 2048;
            v59 = v33;
            v60 = 2112;
            v61 = v15;
            v62 = 2114;
            v63 = v9;
            v64 = 2114;
            v65 = v11;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%{public}@] Purge attachment files failed {accountID: %{public}@, code: %ld, error: %@, attachmentIDs: %{public}@, purged: %{public}@}", buf, 0x3Eu);

            v5 = REMCRMergeableOrderedSet_ptr;
          }
        }

        else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(*(a1[6] + 8) + 40);
          v17 = [v9 count];
          v18 = [v11 count];
          *buf = 138544130;
          v55 = v16;
          v56 = 2114;
          v57 = v7;
          v58 = 2048;
          v59 = v17;
          v5 = REMCRMergeableOrderedSet_ptr;
          v60 = 2048;
          v61 = v18;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Purged attachment files for {accountID: %{public}@, attachmentIDs.count: %ld, purged.count: %ld}", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v8);
      }

      v41 = [obj countByEnumeratingWithState:&v49 objects:v66 count:16];
    }

    while (v41);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obja = *(*(a1[8] + 8) + 40);
  v42 = [obja countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v42)
  {
    v40 = *v45;
    do
    {
      for (j = 0; j != v42; j = j + 1)
      {
        if (*v45 != v40)
        {
          objc_enumerationMutation(obja);
        }

        v20 = *(*(&v44 + 1) + 8 * j);
        v21 = objc_autoreleasePoolPush();
        v22 = [*(*(a1[8] + 8) + 40) objectForKeyedSubscript:v20];
        v23 = a1[4];
        v43 = 0;
        v24 = [v23 purgeAttachmentFilesWithSha512SumsAndExtensions:v22 accountID:v20 error:&v43];
        v25 = v43;
        v26 = [v5[51] container];
        v27 = v26;
        if (v25)
        {
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v36 = *(*(a1[6] + 8) + 40);
            v34 = [v25 code];
            v28 = [v25 localizedDescription];
            *buf = 138544642;
            v55 = v36;
            v56 = 2114;
            v57 = v20;
            v58 = 2048;
            v59 = v34;
            v60 = 2112;
            v61 = v28;
            v62 = 2114;
            v63 = v22;
            v64 = 2114;
            v65 = v24;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "[%{public}@] Purge attachment files failed {accountID: %{public}@, code: %ld, error: %@, fileNames: %{public}@, purged: %{public}@}", buf, 0x3Eu);

            v5 = REMCRMergeableOrderedSet_ptr;
          }
        }

        else if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v29 = *(*(a1[6] + 8) + 40);
          v30 = [v22 count];
          v31 = [v24 count];
          *buf = 138544130;
          v55 = v29;
          v56 = 2114;
          v57 = v20;
          v58 = 2048;
          v59 = v30;
          v5 = REMCRMergeableOrderedSet_ptr;
          v60 = 2048;
          v61 = v31;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] Purged attachment files for {accountID: %{public}@, fileNames.count: %ld, purged.count: %ld}", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v21);
      }

      v42 = [obja countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v42);
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000C9670(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_1000C99A8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = +[REMLogStore search];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_10076C2B0();
    }

    objc_end_catch();
    JUMPOUT(0x1000C9970);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C9BB0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[REMLogStore search];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10076C380(v3, a1, v4);
    }
  }
}

void sub_1000CACF0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void sub_1000CB5E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = +[REMLog utility];
  v7 = v6;
  if (v5 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10076C534(v5, v7);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) identifier];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Done unset didChooseToMigrate and didFinishMigration on ACAccount (%@)", &v10, 0xCu);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }
}

id sub_1000CB8BC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 recordIDsToDelete];
    v5 = [v4 containsObject:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1000CBA3C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 recordIDs];
    v5 = [v4 containsObject:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1000CBBBC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 recordsToSave];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000CBC9C;
    v7[3] = &unk_1008DC4A0;
    v8 = *(a1 + 32);
    v5 = [v4 ic_containsObjectPassingTest:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1000CBC9C(uint64_t a1, void *a2)
{
  v3 = [a2 recordID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_1000CBFE0(id a1)
{
  v1 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v1;
  v2 = [NSArray arrayWithObjects:&v5 count:1];
  v3 = [NSManagedObjectModel mergedModelFromBundles:v2];
  v4 = qword_100952B18;
  qword_100952B18 = v3;
}

void sub_1000CC508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000CC524(uint64_t a1)
{
  v2 = +[NSMapTable strongToWeakObjectsMapTable];
  [*(a1 + 32) setL_accountStoreMap:v2];

  v3 = +[NSMapTable strongToStrongObjectsMapTable];
  [*(a1 + 32) setL_accountStorageCacheByObjectIDs:v3];

  v4 = +[NSMapTable strongToStrongObjectsMapTable];
  [*(a1 + 32) setL_accountExternalIdentifiersToObjectIDsMap:v4];

  v5 = [NSHashTable hashTableWithOptions:0];
  [*(a1 + 32) setL_allGenericAccountsObjectIDs:v5];

  v6 = objc_alloc_init(REMAutoCategorizationActivity);
  [*(a1 + 32) setL_currentAutoCategorizationActivity:v6];

  v7 = *(a1 + 32);
  v11 = 0;
  v8 = [v7 l_loadAccountStoresFromDiskDeletingFilesMarkedDeleted:1 shouldDeleteInvalidStoresImmediately:1 error:&v11];
  v9 = v11;
  if ((v8 & 1) == 0)
  {
    v10 = +[REMLogStore container];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10076C670();
    }

    [*(a1 + 40) accountStoresFailToLoadWithError:v9];
  }
}

void sub_1000CC670(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[REMLogStore search];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10076C6D8();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v6 = WeakRetained;
      os_unfair_lock_lock(WeakRetained + 4);
      v4 = v6;
      [v4 l_activateCoreSpotlightDelegates];
      os_unfair_lock_unlock(v6 + 4);
    }

    else
    {
      v4 = 0;
    }
  }
}

void sub_1000D04AC(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = v5;
  if (v5 && ([v5 isEqual:@"NullMetadataAccountIdentifier"] & 1) == 0)
  {
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
  }
}

uint64_t sub_1000D39EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000D3A04(uint64_t a1)
{
  v2 = [*(a1 + 32) _deduplicateStore:*(a1 + 40) withStore:*(a1 + 48) isLocalAccountType:*(a1 + 72) managedObjectContext:*(a1 + 56)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1000D3D50(uint64_t a1)
{
  v2 = +[REMCDAccount fetchRequest];
  v3 = [NSPredicate predicateWithValue:1];
  [v2 setPredicate:v3];

  [v2 setResultType:2];
  v75[0] = @"identifier";
  v75[1] = @"type";
  v4 = [NSArray arrayWithObjects:v75 count:2];
  [v2 setPropertiesToFetch:v4];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v59 objects:v74 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v60;
    *&v7 = 138544386;
    v48 = v7;
    v52 = v2;
    v53 = v5;
    v55 = *v60;
    do
    {
      v10 = 0;
      v56 = v8;
      do
      {
        if (*v60 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v59 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 URL];
        v14 = [v13 isEqual:*(a1 + 40)];

        if (v14)
        {
          [*(a1 + 48) setObject:v11 forKey:@"local"];
          goto LABEL_43;
        }

        v73 = v11;
        v15 = [NSArray arrayWithObjects:&v73 count:1];
        [v2 setAffectedStores:v15];

        v16 = *(a1 + 56);
        v58 = 0;
        v17 = [v16 executeFetchRequest:v2 error:&v58];
        v57 = v58;
        v18 = [v17 valueForKey:@"identifier"];
        v19 = [v17 valueForKey:@"type"];
        v20 = v19;
        if (!v18 || !v19)
        {
          v25 = +[REMLogStore container];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v64 = v57;
            v65 = 2112;
            v66 = v11;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[_validateAccountStores] Error fetching account ID from store {error: %{public}@, store: %@}", buf, 0x16u);
          }

          [*(a1 + 72) addObject:v11];
          goto LABEL_42;
        }

        v21 = [v18 valueForKey:@"UUIDString"];
        if ([v21 count] == 1)
        {
          v54 = v21;
          if (![v20 count])
          {
            v31 = +[REMLogStore container];
            if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
            {
              v43 = [v54 firstObject];
              *buf = 138543618;
              v64 = v43;
              v65 = 2112;
              v66 = v11;
              _os_log_fault_impl(&_mh_execute_header, v31, OS_LOG_TYPE_FAULT, "[_validateAccountStores] RDCDAccountTypeKey from [REMCDAccount fetchRequest] yields no result unexpectedly {accountID: %{public}@, store: %@}", buf, 0x16u);
            }

LABEL_24:
            v32 = +[REMLogStore container];
            if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
            {
              v42 = [v54 firstObject];
              *buf = 138543618;
              v64 = v42;
              v65 = 2112;
              v66 = v11;
              _os_log_fault_impl(&_mh_execute_header, v32, OS_LOG_TYPE_FAULT, "[_validateAccountStores] Found corrupted store with unkwown account type {accountID: %{public}@, store: %@}", buf, 0x16u);

              v5 = v53;
            }

            [*(a1 + 72) addObject:v11];
            v26 = v54;
            goto LABEL_41;
          }

          objc_opt_class();
          v22 = [v20 objectAtIndexedSubscript:0];
          v23 = REMDynamicCast();
          v24 = [v23 intValue];

          v5 = v53;
          if (!v24)
          {
            goto LABEL_24;
          }

          if (v24 == 1)
          {
            [*(a1 + 64) addObject:v11];
          }

          else
          {
            v24 = 0;
          }

          v33 = [v54 firstObject];
          v34 = [*(a1 + 48) valueForKey:v33];
          v51 = v34;
          if (v34)
          {
            v50 = v33;
            v35 = v34;
            v36 = [*(a1 + 80) _deduplicateStore:v34 withStore:v11 isLocalAccountType:v24 managedObjectContext:*(a1 + 56)];
            [*(a1 + 72) addObject:v36];
            v37 = v35;
            if (v36 == v37)
            {
              v38 = v37;
              v39 = v36;
              v40 = v11;

              [*(a1 + 48) setObject:v40 forKey:v50];
              v49 = v40;
              v36 = v39;
            }

            else
            {
              v49 = v37;
            }

            v41 = +[REMLogStore container];
            v26 = v54;
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              [v49 identifier];
              v45 = v44 = v36;
              v46 = [v44 identifier];
              *buf = v48;
              v64 = v50;
              v65 = 2114;
              v66 = v45;
              v67 = 2112;
              v68 = v49;
              v69 = 2114;
              v70 = v46;
              v47 = v46;
              v71 = 2112;
              v72 = v44;
              _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "[_validateAccountStores] Found duplicated stores for the same account, treating one of them as invalid {accountID: %{public}@, valid: storeid=%{public}@ %@, invalid: storeid=%{public}@ %@}", buf, 0x34u);

              v36 = v44;
              v26 = v54;
            }

            v33 = v50;
          }

          else
          {
            [*(a1 + 48) setObject:v11 forKey:v33];
            v26 = v54;
          }
        }

        else
        {
          v26 = v21;
          v27 = [v21 count];
          v28 = +[REMLogStore container];
          v29 = v28;
          if (v27)
          {
            if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
            {
              v30 = [v26 count];
              *buf = 134218498;
              v64 = v30;
              v65 = 2114;
              v66 = v26;
              v67 = 2112;
              v68 = v11;
              _os_log_fault_impl(&_mh_execute_header, v29, OS_LOG_TYPE_FAULT, "[_validateAccountStores] Found corrupted store with %ld REMCDAccount objects {accountIDs: %{public}@, store: %@}", buf, 0x20u);
            }
          }

          else if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v64 = v11;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[_validateAccountStores] Found store with no REMCDAccount. Going to disconnect and destroy {store: %@}", buf, 0xCu);
          }

          [*(a1 + 72) addObject:v11];
        }

        v5 = v53;
LABEL_41:

        v2 = v52;
LABEL_42:

        v9 = v55;
        v8 = v56;
LABEL_43:
        objc_autoreleasePoolPop(v12);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v59 objects:v74 count:16];
    }

    while (v8);
  }
}

void sub_1000D523C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8 = 0;
  v3 = [v2 save:&v8];
  v4 = v8;
  v5 = +[REMLogStore container];
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "RDStoreControllerMigrator: [MIGRATE STORE] Did update stores metadata", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10076CE14(v4, a1);
  }
}

void sub_1000D5C08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 URL];
  v6 = [v5 lastPathComponent];
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [v5 URLByDeletingLastPathComponent];
    v9 = [v8 URLByDeletingLastPathComponent];

    v10 = [v9 path];
    v57 = 0;
    if (!v10 || ![*(a1 + 40) fileExistsAtPath:v10 isDirectory:&v57] || (v57 & 1) == 0)
    {
      v20 = +[REMLogStore container];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v59 = v10;
        v60 = 1024;
        *v61 = v57;
        *&v61[4] = 2112;
        *&v61[6] = v5;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[addValidatedStoresToAccountStoreMapWithStores] Cannot obtain a valid container directory path from storeURL {reminderDataContainerPath: %@, isDirectory: %d, storeURL: %@}", buf, 0x1Cu);
      }

      [*(a1 + 32) addObject:v3];
      goto LABEL_21;
    }

    v11 = [*(a1 + 48) databaseBackupDirectoryURLWithContainerURL:v9];
    v12 = *(a1 + 40);
    v56 = 0;
    v13 = [v12 rem_createDirectoryIfNecessaryAtURL:v11 error:&v56];
    v49 = v56;
    v50 = v11;
    if ((v13 & 1) == 0)
    {
      v14 = +[REMLogStore container];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v38 = *(a1 + 48);
        v39 = objc_opt_class();
        v52 = NSStringFromClass(v39);
        v48 = NSStringFromSelector(*(a1 + 56));
        v46 = [NSString stringWithFormat:@"%@.%@", v52, v48];
        v40 = [v49 localizedDescription];
        *buf = 138544130;
        v59 = v46;
        v60 = 2112;
        *v61 = v9;
        *&v61[8] = 2112;
        *&v61[10] = v11;
        v62 = 2112;
        v63 = v40;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%{public}@] Create directory failed {reminderDataContainerURL: %@, databaseBackupDirectoryURL: %@, error: %@}", buf, 0x2Au);
      }
    }

    [v11 setRd_isExcludedFromBackup:1];
    v51 = [*(a1 + 48) invalidStoreBackupURLWithFileName:v7 withContainerURL:v9];
    if (!v51)
    {
      v21 = +[REMLogStore container];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10076D054();
      }

      [*(a1 + 32) addObject:v3];
      goto LABEL_48;
    }

    v15 = *(a1 + 40);
    v55 = 0;
    [v15 copyItemAtURL:v5 toURL:v51 error:&v55];
    v16 = v55;
    if (v16)
    {
      v17 = v16;
      v18 = +[REMLogStore container];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10076CE8C();
      }

      [*(a1 + 32) addObject:v3];
      goto LABEL_47;
    }

    v22 = [v5 URLByDeletingPathExtension];
    v23 = [v22 URLByAppendingPathExtension:@"sqlite-wal"];

    v24 = [v5 URLByDeletingPathExtension];
    v25 = [v24 URLByAppendingPathExtension:@"sqlite-shm"];

    v43 = v23;
    v44 = [v23 path];
    v42 = v25;
    v47 = [v25 path];
    v26 = [v51 URLByDeletingPathExtension];
    v27 = [v26 URLByAppendingPathExtension:@"sqlite-wal"];

    v28 = [v51 URLByDeletingPathExtension];
    v45 = [v28 URLByAppendingPathExtension:@"sqlite-shm"];

    v29 = v44;
    v17 = 0;
    v41 = v27;
    if (v44 && v27)
    {
      if ([*(a1 + 40) fileExistsAtPath:v44])
      {
        v30 = *(a1 + 40);
        v54 = 0;
        [v30 copyItemAtURL:v43 toURL:v27 error:&v54];
        v17 = v54;
        if (v17)
        {
          v31 = +[REMLogStore container];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            sub_10076CF24();
          }

          v29 = v44;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    if (v47 && v45 && [*(a1 + 40) fileExistsAtPath:v47])
    {
      v32 = *(a1 + 40);
      v53 = v17;
      [v32 copyItemAtURL:v42 toURL:v45 error:&v53];
      v33 = v53;

      if (v33)
      {
        v34 = +[REMLogStore container];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_10076CFBC();
        }

        v17 = v33;
        v29 = v44;
        goto LABEL_42;
      }
    }

    else if (v17)
    {
LABEL_42:
      [*(a1 + 32) addObject:v3];
LABEL_46:

LABEL_47:
LABEL_48:

LABEL_21:
      goto LABEL_22;
    }

    v35 = +[REMLogStore container];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      [v3 identifier];
      v37 = v36 = v29;
      *buf = 138543874;
      v59 = v37;
      v60 = 2112;
      *v61 = v3;
      *&v61[8] = 2112;
      *&v61[10] = v51;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[addValidatedStoresToAccountStoreMapWithStores] Created back up of invalid store {store: id=%{public}@ %@, backupURL: %@}", buf, 0x20u);

      v29 = v36;
    }

    v17 = 0;
    goto LABEL_46;
  }

  v19 = +[REMLogStore container];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_10076D0CC();
  }

  [*(a1 + 32) addObject:v3];
LABEL_22:

  objc_autoreleasePoolPop(v4);
}

void sub_1000D7304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000D731C(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) l_accountStoreMap];
  v3 = [v2 keyEnumerator];

  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [*(a1 + 32) l_accountStoreMap];
        v10 = [v9 objectForKey:v8];

        v11 = *(a1 + 40);
        v12 = [v10 identifier];
        LODWORD(v11) = [v11 isEqualToString:v12];

        if (v11)
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v8);

          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_1000D75CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000D75E4(uint64_t a1)
{
  v5 = [*(a1 + 32) l_accountStoreMap];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000D782C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v15 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v15];
  v5 = v15;
  v6 = [v4 valueForKey:@"identifier"];

  if (v6)
  {
    v7 = [v6 valueForKey:@"UUIDString"];
    os_unfair_lock_lock((a1[6] + 16));
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000D7998;
    v11[3] = &unk_1008D9C10;
    v8 = a1[6];
    v9 = a1[7];
    v12 = v7;
    v13 = v8;
    v14 = v9;
    v10 = v7;
    sub_1000D7998(v11);
    os_unfair_lock_unlock((a1[6] + 16));
  }

  else
  {
    v10 = +[REMLogStore container];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10076D260(v5, a1);
    }
  }
}

void sub_1000D7998(id *a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [a1[5] l_accountStoreMap];
        v9 = [v8 objectForKey:v7];

        if (v9)
        {
          [a1[6] addObject:v9];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_1000D7B64(uint64_t a1)
{
  v1 = [REMChangeTracking entityNamesToIncludeFromTrackingWithOptionProvider:*(a1 + 32)];
  v10 = NSPersistentHistoryTrackingEntitiesToInclude;
  v11 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v8[0] = NSPersistentHistoryTrackingKey;
  v8[1] = NSMigratePersistentStoresAutomaticallyOption;
  v9[0] = v2;
  v9[1] = &__kCFBooleanTrue;
  v9[2] = &__kCFBooleanTrue;
  v8[2] = NSInferMappingModelAutomaticallyOption;
  v8[3] = NSPersistentStoreCoordinatorResourceBundlesForMigration;
  v7 = v3;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v8[4] = NSPersistentStoreServiceConfigurationOptionKey;
  v9[3] = v4;
  v9[4] = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:5];
  v6 = qword_100952B28;
  qword_100952B28 = v5;
}

void sub_1000D7E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1000D7E74(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[8];
  obj = 0;
  v5 = [v2 l_createAccountStoresWithIdentifiers:v3 didAddNewStores:v4 error:&obj];
  v6 = obj;
  *(*(a1[6] + 8) + 24) = v5;
  objc_storeStrong((*(a1[7] + 8) + 40), v6);
}

void sub_1000D8F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose(&STACK[0x320], 8);
  _Block_object_dispose(&a60, 8);
  _Unwind_Resume(a1);
}

void sub_1000D8FD8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[REMLogStore container];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10076D35C(v6, a1);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    *(*(*(a1 + 56) + 8) + 24) = 0;
    if ([v6 rem_isDiskFullSQLError])
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }
  }

  else
  {
    objc_opt_class();
    v8 = [*(a1 + 32) options];
    v9 = [v8 valueForKey:NSPersistentStoreConnectionPoolMaxSizeKey];
    v10 = REMDynamicCast();

    v11 = +[REMLogStore container];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v13 = 138543874;
      v14 = v12;
      v15 = 2114;
      v16 = v10;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[createOrLoadAccountStores] didAdd store {fileName: %{public}@, connectionPoolMaxSize: %{public}@, addedStoreDescription: %@}", &v13, 0x20u);
    }
  }
}

void sub_1000D92D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000D92EC(uint64_t a1)
{
  v2 = [*(a1 + 32) metadata];
  v3 = [v2 mutableCopy];

  [v3 setObject:*(a1 + 40) forKeyedSubscript:@"RDStoreControllerAccountIdentifier"];
  v4 = [v3 copy];
  [*(a1 + 32) setMetadata:v4];

  v5 = *(a1 + 48);
  v8 = 0;
  LOBYTE(v4) = [v5 save:&v8];
  v6 = v8;
  v7 = *(a1 + 64);
  *(*(*(a1 + 56) + 8) + 24) = v4;
  if (v7 && v6)
  {
    v6 = v6;
    **(a1 + 64) = v6;
  }
}

void sub_1000D95AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1000D95DC(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  v5 = *(v4 + 40);
  v8 = 0;
  obj = v5;
  v6 = [v2 l_removeAccountStoresWithIdentifiers:v3 deletedObjectIDs:&obj error:&v8];
  objc_storeStrong((v4 + 40), obj);
  v7 = v8;
  *(*(a1[6] + 8) + 24) = v6;
  objc_storeStrong((*(a1[8] + 8) + 40), v7);
}

void sub_1000DA16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose((v49 - 176), 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_1000DA1E0(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) metadata];
  v4 = [v3 mutableCopy];

  v5 = [v4 objectForKeyedSubscript:@"RDStoreControllerAccountIdentifier"];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"RDMarkedForDeletion"];
  v8 = [v4 copy];
  [*v2 setMetadata:v8];

  v10 = *(a1 + 56);
  v9 = a1 + 56;
  v11 = *(v9 - 16);
  v12 = *(v10 + 8);
  obj = *(v12 + 40);
  v13 = [v11 save:&obj];
  objc_storeStrong((v12 + 40), obj);
  if ((v13 & 1) == 0)
  {
    v14 = +[REMLogStore container];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10076D454(v2, v9, v14);
    }
  }
}

void sub_1000DA300(uint64_t a1)
{
  v2 = [[NSFetchRequest alloc] initWithEntityName:*(a1 + 32)];
  v31 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v31 count:1];
  [v2 setAffectedStores:v3];

  v4 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v2];
  v30 = *(a1 + 40);
  v5 = [NSArray arrayWithObjects:&v30 count:1];
  [v4 setAffectedStores:v5];

  [v4 setResultType:1];
  v6 = *(a1 + 48);
  v20 = 0;
  v7 = [v6 executeRequest:v4 error:&v20];
  v8 = v20;
  v9 = v20;
  v10 = [v7 result];
  v11 = v10;
  if (v10)
  {
    v22 = NSDeletedObjectsKey;
    v23 = v10;
    v12 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v21 = *(a1 + 48);
    v13 = [NSArray arrayWithObjects:&v21 count:1];
    [NSManagedObjectContext mergeChangesFromRemoteContextSave:v12 intoContexts:v13];

    v14 = +[REMLogStore container];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      *buf = 138412546;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[markAccountStoreDeleted] Done deleting objects for entity {entity: %@, store: %@}", buf, 0x16u);
    }

    [*(a1 + 56) addObjectsFromArray:v11];
  }

  else
  {
    v17 = +[REMLogStore container];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      *buf = 138412802;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      v28 = 2114;
      v29 = v9;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[markAccountStoreDeleted] Failed to delete objects for entity {entity: %@, store: %@, error: %{public}@}", buf, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v8);
    if (+[REMSystemUtilities isInternalInstall])
    {
      [REMRadarUtilities promptUserToFileBugWithAlertMessage:REMRadarUtilitiesAlertMessageDefault bugTitle:@"nil localDeletedObjectIDs in RDStoreController.l_markAccountStoreDeletedAndDeleteData" bugDescription:REMRadarUtilitiesBugDescriptionDefault];
    }
  }
}

void sub_1000DA730(id a1)
{
  attr = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_get_global_queue(17, 0);
  v2 = dispatch_queue_create_with_target_V2("com.apple.remindd.RDStoreController.fileIOWorker", attr, v1);
  v3 = qword_100952B38;
  qword_100952B38 = v2;
}

void sub_1000DACAC(uint64_t a1)
{
  v1 = [*(a1 + 32) coreSpotlightDelegateManager];
  [v1 reindexAllSearchableItems];
}

void sub_1000DADAC(uint64_t a1)
{
  v2 = [*(a1 + 32) coreSpotlightDelegateManager];
  [v2 reindexSearchableItemsWithIdentifiers:*(a1 + 40)];
}

id sub_1000DAE9C(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  [v2 _removeAllPersistentStores:*(a1 + 40)];

  v3 = [*(a1 + 32) l_accountStoreMap];
  [v3 removeAllObjects];

  v4 = *(a1 + 32);

  return [v4 l_invalidateAccountStorageCaches:@"invalidateStoreConnections"];
}

void sub_1000DAFEC(uint64_t a1)
{
  [*(a1 + 32) setStoreController:*(a1 + 40)];
  v2 = [*(a1 + 40) persistentStoreCoordinator];
  [*(a1 + 32) setPersistentStoreCoordinator:v2];

  v3 = [*(a1 + 40) mergePolicy];
  [*(a1 + 32) setMergePolicy:v3];

  [*(a1 + 32) setTransactionAuthor:*(a1 + 48)];
  v4 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) _setAllowsExpandedUserInfoKeys:1];
  }

  if (*(a1 + 56) == 1)
  {
    v5 = *(a1 + 32);
    v6 = +[NSQueryGenerationToken currentQueryGenerationToken];
    v10 = 0;
    v7 = [v5 setQueryGenerationFromToken:v6 error:&v10];
    v8 = v10;

    if ((v7 & 1) == 0)
    {
      v9 = +[REMLogStore read];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_10076D4F0();
      }
    }
  }
}

void sub_1000DBE48(uint64_t a1)
{
  v3 = [*(a1 + 32) l_currentAutoCategorizationActivity];
  v2 = [v3 activityByMergingWithActivity:*(a1 + 40)];
  [*(a1 + 32) setL_currentAutoCategorizationActivity:v2];
}

void sub_1000DBFD0(uint64_t a1)
{
  v3 = [*(a1 + 32) l_currentAutoCategorizationActivity];
  v2 = [v3 activityBySubtractingActivity:*(a1 + 40)];
  [*(a1 + 32) setL_currentAutoCategorizationActivity:v2];
}

void sub_1000DC240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  objc_sync_exit(v24);
  _Block_object_dispose(&a24, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DC27C(uint64_t a1)
{
  v2 = [*(a1 + 32) l_currentAutoCategorizationActivity];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1000DC434(uint64_t a1)
{
  v2 = [*(a1 + 32) recordID];
  v4 = [REMCDAccount existingCloudObjectForRecordID:v2 accountID:*(a1 + 40) context:*(a1 + 48)];

  v3 = v4;
  if (v4)
  {
    [v4 mergeMigrationStateFromRecord:*(a1 + 32)];
    [*(a1 + 48) ic_saveWithLogDescription:@"merged migration state from user record"];
    v3 = v4;
  }
}

void sub_1000DC690(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[ICCloudContext appZoneID];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v4 = [REMCDAccount accountWithCKIdentifier:*(a1 + 40) context:*(a1 + 48)];
    v5 = [v4 allChildObjects];
  }

  else
  {
    v5 = 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        [v11 setInCloud:{0, v12}];
        [v11 clearServerRecord];
        if (([v11 markedForDeletion] & 1) == 0)
        {
          [v11 updateChangeCount];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [*(a1 + 48) ic_saveWithLogDescription:@"cleared server records for all cloud objects"];
}

void sub_1000DC9B4(uint64_t a1)
{
  v2 = [*(a1 + 32) ownerName];
  v3 = [NSPredicate predicateWithFormat:@"ckZoneOwnerName == %@", v2];

  v26 = v3;
  v4 = [REMCDObject ic_objectsMatchingPredicate:v3 context:*(a1 + 40)];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    v8 = REMCRMergeableOrderedSet_ptr;
    do
    {
      v9 = 0;
      v27 = v6;
      do
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v28 + 1) + 8 * v9);
        v11 = [v10 recordID];
        v12 = [v11 zoneID];
        v13 = [v12 isEqual:*(a1 + 32)];

        v14 = [v8[50] cloudkit];
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (v15)
          {
            v16 = [v10 shortLoggingDescription];
            v17 = *(a1 + 48);
            *buf = 138412546;
            v33 = v16;
            v34 = 2114;
            v35 = v17;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Deleting shared %@ for accountID %{public}@", buf, 0x16u);
          }

          [v10 deleteFromLocalDatabase];
        }

        else
        {
          if (v15)
          {
            v18 = [v10 shortLoggingDescription];
            v19 = [v10 recordID];
            v20 = [v19 zoneID];
            [v20 ic_loggingDescription];
            v21 = v7;
            v22 = v8;
            v24 = v23 = v4;
            v25 = *(a1 + 48);
            *buf = 138412802;
            v33 = v18;
            v34 = 2114;
            v35 = v24;
            v36 = 2114;
            v37 = v25;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not deleting shared %@ in wrong zone %{public}@ for account ID %{public}@", buf, 0x20u);

            v4 = v23;
            v8 = v22;
            v7 = v21;
            v6 = v27;
          }
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v6);
  }

  [*(a1 + 40) ic_saveWithLogDescription:@"deleted all local database objects after shared zone was deleted"];
}

void sub_1000DCE68(uint64_t a1)
{
  v2 = [REMCDAccount accountWithCKIdentifier:*(a1 + 32) context:*(a1 + 40)];
  v3 = [v2 allChildObjects];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 isDeletable])
        {
          [*(a1 + 48) deleteCloudObjectIfFullyPushed:v8];
        }

        else
        {
          [v8 clearServerRecord];
          [v8 setInCloud:0];
          [v8 updateChangeCount];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  if ([*(a1 + 40) hasChanges])
  {
    v9 = *(a1 + 40);
    v13 = 0;
    v10 = [v9 save:&v13];
    v11 = v13;
    if ((v10 & 1) == 0)
    {
      v12 = +[REMLog cloudkit];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10076D67C();
      }
    }
  }
}

void sub_1000DDE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_1000DDECC(void *a1)
{
  v8 = [REMCDAccount unsafeUntilSystemReady_primaryCloudKitAccountInContext:a1[4] appleAccountUtilities:a1[5]];
  v2 = [v8 identifier];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [v8 personIDSalt];
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *(*(a1[8] + 8) + 24) = [v8 inactive];
}

void sub_1000DDF70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[RDAccountPersonIDSaltObserver AccountAbsentError];
  (*(v1 + 16))(v1, v2);
}

void sub_1000DE108(id a1)
{
  v28 = +[REMCDAccount cdEntityName];
  v29[0] = v28;
  v27 = +[REMCDList cdEntityName];
  v29[1] = v27;
  v26 = +[REMCDReminder cdEntityName];
  v29[2] = v26;
  v25 = +[REMCDSharee cdEntityName];
  v29[3] = v25;
  v24 = +[REMCDCalDAVNotification cdEntityName];
  v29[4] = v24;
  v23 = +[REMCDAssignment cdEntityName];
  v29[5] = v23;
  v22 = +[REMCDHashtag cdEntityName];
  v29[6] = v22;
  v21 = +[REMCDSmartList cdEntityName];
  v29[7] = v21;
  v20 = +[REMCDSharedToMeReminderPlaceholder cdEntityName];
  v29[8] = v20;
  v19 = +[REMCDTemplate cdEntityName];
  v29[9] = v19;
  v18 = +[REMCDSavedReminder cdEntityName];
  v29[10] = v18;
  v17 = +[REMCDAlarm cdEntityName];
  v29[11] = v17;
  v16 = +[REMCDAlarmDateTrigger cdEntityName];
  v29[12] = v16;
  v15 = +[REMCDAlarmTimeIntervalTrigger cdEntityName];
  v29[13] = v15;
  v14 = +[REMCDAlarmLocationTrigger cdEntityName];
  v29[14] = v14;
  v13 = +[REMCDAlarmVehicleTrigger cdEntityName];
  v29[15] = v13;
  v1 = +[REMCDListSection cdEntityName];
  v29[16] = v1;
  v2 = +[REMCDSmartListSection cdEntityName];
  v29[17] = v2;
  v3 = +[REMCDTemplateSection cdEntityName];
  v29[18] = v3;
  v4 = +[REMCDAuxiliaryChangeInfo cdEntityName];
  v29[19] = v4;
  v5 = +[REMCDAuxiliaryReminderChangeInfo cdEntityName];
  v29[20] = v5;
  v6 = +[REMCDAuxiliaryReminderChangeDeleteInfo cdEntityName];
  v29[21] = v6;
  v7 = +[REMCDAuxiliaryReminderChangeMoveInfo cdEntityName];
  v29[22] = v7;
  v8 = +[REMCDHashtagLabel cdEntityName];
  v29[23] = v8;
  v9 = +[REMCKSharedEntitySyncActivity cdEntityName];
  v29[24] = v9;
  v10 = +[REMCDDueDateDeltaAlert cdEntityName];
  v29[25] = v10;
  v11 = [NSArray arrayWithObjects:v29 count:26];
  v12 = qword_100952B48;
  qword_100952B48 = v11;
}

uint64_t sub_1000DECEC(uint64_t a1)
{
  v2 = [*(a1 + 32) l_primaryActiveCloudKitAccountREMObjectID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t sub_1000DEDE8(uint64_t a1)
{
  v2 = [*(a1 + 32) l_primaryActiveCloudKitAccountREMObjectID];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5 = v2;
    v3 = [v3 isEqual:v2];
    v2 = v5;
    if ((v3 & 1) == 0)
    {
      v3 = [*(a1 + 32) setL_primaryActiveCloudKitAccountREMObjectID:*(a1 + 40)];
      v2 = v5;
    }
  }

  return _objc_release_x1(v3, v2);
}

void sub_1000DEF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DEFA0(uint64_t a1)
{
  v2 = [*(a1 + 32) l_accountStoragesForAccountObjectIDs:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1000DF204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000DF21C(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = [*(a1 + 40) l_accountExternalIdentifiersToObjectIDsMap];
        v10 = [v9 objectForKey:v8];

        if (v10)
        {
          [v2 addObject:v10];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = [*(a1 + 40) l_accountStoragesForAccountObjectIDs:v2];
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

void sub_1000DF43C(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        objc_opt_class();
        v9 = [v8 objectID];
        v10 = REMCheckedDynamicCast();

        if (v10)
        {
          [v2 addObject:v10];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = [*(a1 + 32) count];
  if (v11 == [v2 count])
  {
    [*(a1 + 40) l_setAccountStorages:*(a1 + 32) forAccountObjectIDs:v2];
  }
}

void sub_1000DF6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000DF6D8(uint64_t a1)
{
  v2 = [*(a1 + 32) l_allGenericAccountsObjectIDs];
  v3 = [v2 count];

  if (v3)
  {
    v4 = +[NSMutableArray array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = [*(a1 + 32) l_accountStorageCacheByObjectIDs];
    v6 = [v5 keyEnumerator];

    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        v10 = 0;
        do
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * v10);
          v12 = [*(a1 + 32) l_allGenericAccountsObjectIDs];
          v13 = [v12 containsObject:v11];

          if (v13)
          {
            v14 = [*(a1 + 32) l_accountStorageCacheByObjectIDs];
            v15 = [v14 objectForKey:v11];

            [v4 addObject:v15];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v4;
  }

  else
  {
    v18 = *(*(a1 + 40) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = &__NSArray0__struct;
  }
}

void sub_1000DF99C(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      v7 = 0;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v24 + 1) + 8 * v7);
        objc_opt_class();
        v9 = [v8 objectID];
        v10 = REMCheckedDynamicCast();

        if (v10)
        {
          [v2 addObject:v10];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  v11 = [*(a1 + 32) count];
  if (v11 == [v2 count])
  {
    [*(a1 + 40) l_setAccountStorages:*(a1 + 32) forAccountObjectIDs:v2];
    v12 = [*(a1 + 40) l_allGenericAccountsObjectIDs];
    [v12 removeAllObjects];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = v2;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v20 + 1) + 8 * v17);
          v19 = [*(a1 + 40) l_allGenericAccountsObjectIDs];
          [v19 addObject:v18];

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v15);
    }
  }
}

void sub_1000E024C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1000E027C(uint64_t a1)
{
  v1 = a1;
  v2 = [*(a1 + 32) l_accountStoreMap];
  v39 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v2 count]);

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v3 = [*(v1 + 32) l_accountStoreMap];
  v4 = [v3 keyEnumerator];

  v5 = [v4 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v45;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v45 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v44 + 1) + 8 * i);
        v10 = [*(v1 + 32) l_accountStoreMap];
        v11 = [v10 objectForKey:v9];

        v12 = [v11 URL];
        v13 = [v12 lastPathComponent];
        v14 = v1;
        v15 = v13;
        if (v13)
        {
          v16 = v13;
        }

        else
        {
          v16 = @"(nil)";
        }

        v17 = v16;

        v1 = v14;
        [v39 setObject:v17 forKeyedSubscript:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v6);
  }

  [v39 removeObjectForKey:@"local"];
  v18 = +[REMLogStore container];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [*(v1 + 32) isolatedReminderDataContainerURL];
    v20 = +[RDPaths defaultReminderDataContainerURL];
    *buf = 138412802;
    v49 = v19;
    v50 = 2112;
    v51 = v20;
    v52 = 2112;
    v53 = v39;
  }

  v21 = *(*(v1 + 40) + 8);
  if (*(v21 + 24))
  {
    v22 = *(v1 + 32);
    v23 = [v39 allKeys];
    v24 = *(*(v1 + 48) + 8);
    v25 = *(v24 + 40);
    v42 = 0;
    v43 = v25;
    v26 = [v22 l_removeAccountStoresWithIdentifiers:v23 deletedObjectIDs:&v43 error:&v42];
    objc_storeStrong((v24 + 40), v43);
    v27 = v42;
    *(*(*(v1 + 40) + 8) + 24) = v26;
  }

  else
  {
    v27 = 0;
    *(v21 + 24) = 0;
  }

  v28 = *(*(v1 + 40) + 8);
  if (*(v28 + 24))
  {
    v29 = [*(v1 + 32) persistentStoreCoordinator];
    v41 = v27;
    v30 = [v29 _removeAllPersistentStores:&v41];
    v31 = v41;

    *(*(*(v1 + 40) + 8) + 24) = v30;
    v27 = v31;
  }

  else
  {
    *(v28 + 24) = 0;
  }

  v32 = *(*(v1 + 40) + 8);
  if (*(v32 + 24) == 1 && ([*(v1 + 32) l_accountStoreMap], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "removeAllObjects"), v33, objc_msgSend(*(v1 + 32), "l_invalidateAccountStorageCaches:", @"nukeData"), v32 = *(*(v1 + 40) + 8), (*(v32 + 24) & 1) != 0))
  {
    v34 = *(v1 + 32);
    v40 = v27;
    v35 = [v34 l_loadAccountStoresFromDiskDeletingFilesMarkedDeleted:0 shouldDeleteInvalidStoresImmediately:0 error:&v40];
    v36 = v40;

    v32 = *(*(v1 + 40) + 8);
    v27 = v36;
  }

  else
  {
    v35 = 0;
  }

  *(v32 + 24) = v35;
  objc_storeStrong((*(*(v1 + 56) + 8) + 40), v27);
  v37 = +[REMLogStore container];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = *(*(*(v1 + 40) + 8) + 24);
    *buf = 134218242;
    v49 = v38;
    v50 = 2114;
    v51 = v27;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "RDStoreController nukeData completed {allSuccess: %ld, error: %{public}@}", buf, 0x16u);
  }
}

void sub_1000E07AC(uint64_t a1)
{
  v2 = [NSPredicate predicateWithFormat:@"markedForDeletion == YES"];
  v3 = *(a1 + 32);
  v15 = v2;
  v4 = [REMCDObject ic_objectsMatchingPredicate:"ic_objectsMatchingPredicate:context:" context:?];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v4 copy];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
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
        if (([v10 isDeleted] & 1) == 0)
        {
          v11 = +[REMLogStore write];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            sub_10076D82C(v21, v10);
          }

          [v10 deleteFromLocalDatabase];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v7);
  }

  v12 = *(a1 + 32);
  v16 = 0;
  [v12 save:&v16];
  v13 = v16;
  if (v13)
  {
    v14 = +[REMLogStore write];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10076D888();
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000E1898(uint64_t a1)
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = [*(a1 + 32) l_accountStoreMap];
  v3 = [v2 keyEnumerator];

  obj = v3;
  v20 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v20)
  {
    v19 = *v23;
    do
    {
      v4 = 0;
      do
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v22 + 1) + 8 * v4);
        v6 = [[NSUUID alloc] initWithUUIDString:v5];
        v7 = [NSPredicate predicateWithFormat:@"%K == %@", @"identifier", v6];

        v8 = +[REMCDAccount fetchRequest];
        [v8 setPredicate:v7];
        [v8 setResultType:0];
        v9 = *(a1 + 40);
        v21 = 0;
        v10 = [v9 executeFetchRequest:v8 error:&v21];
        v11 = v21;
        objc_opt_class();
        v12 = [v10 firstObject];
        v13 = REMDynamicCast();

        if (v11)
        {
          v14 = *(a1 + 48);
          v15 = [v11 debugDescription];
          [v14 addObject:v15];
        }

        if (v13)
        {
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
        }

        else
        {
          v16 = *(a1 + 48);
          v17 = [NSString stringWithFormat:@"Cannot fetch CD account with identifier %@", v5];
          [v16 addObject:v17];
        }

        v4 = v4 + 1;
      }

      while (v20 != v4);
      v20 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v20);
  }
}

void sub_1000E1E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E1EB4(uint64_t a1)
{
  v2 = [*(a1 + 32) l_accountStoreMap];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

void sub_1000E2AD0(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v20 = 0;
  v5 = [v2 executeRequest:v3 withContext:v4 error:&v20];
  v6 = v20;

  if (v5)
  {
    if ([v5 resultType] == 2 && (objc_msgSend(v5, "result"), v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, (isKindOfClass & 1) != 0))
    {
      v9 = [v5 result];
      v10 = [v9 integerValue];
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v13 = *(a1 + 72);
    v14 = [NSNumber numberWithInteger:v10];
    v15 = [NSString stringWithFormat:@"%@.%@(%@)", v12, v13, v14];
    [v11 addObject:v15];

    v16 = +[REMLogStore container];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 64);
      v18 = *(a1 + 72);
      v19 = [NSNumber numberWithInteger:v10];
      *buf = 138412802;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "PopulateDefaultValues END {entity: %@, attributeName: %@, updated.count: %@}", buf, 0x20u);
    }
  }

  else
  {
    v16 = +[REMLogStore container];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10076D8F0(v6, a1, v16);
    }
  }
}

void sub_1000E2FE0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:kReachabilityChangedNotification object:v3];
}

void sub_1000E38B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E38DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000E38F4(void *a1)
{
  v2 = a1[4];
  v6 = a1[5];
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  LOBYTE(v2) = [v2 obtainPermanentIDsForObjects:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v2;
}

void sub_1000E4040(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) managedObjectContext];
  v5 = [v2 ic_objectsMatchingPredicate:v3 context:v4];

  if ([v5 count])
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = objc_alloc_init(NSMutableDictionary);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v34 = v5;
    obj = v5;
    v39 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v39)
    {
      v37 = 0;
      v38 = *v48;
      v36 = a1;
      do
      {
        for (i = 0; i != v39; i = i + 1)
        {
          if (*v48 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v47 + 1) + 8 * i);
          objc_opt_class();
          v12 = REMDynamicCast();
          v13 = [v12 ckIdentifier];
          v41 = v12;
          v14 = [v12 accountCKIdentifier];
          if (v14)
          {
            v15 = v14;
          }

          else
          {
            v16 = +[REMLog cloudkit];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v54 = v13;
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "ICBatchFetchHelper found object %{public}@ with nil accountIdentifier", buf, 0xCu);
            }

            if ((v37 & 1) == 0)
            {
              v45 = 0u;
              v46 = 0u;
              v43 = 0u;
              v44 = 0u;
              v17 = [*(a1 + 40) ckIdentifierAccountPairs];
              v18 = [v17 countByEnumeratingWithState:&v43 objects:v52 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v44;
                do
                {
                  for (j = 0; j != v19; j = j + 1)
                  {
                    if (*v44 != v20)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v22 = *(*(&v43 + 1) + 8 * j);
                    v23 = [v22 ckIdentifier];
                    [v9 setObject:v22 forKeyedSubscript:v23];
                  }

                  v19 = [v17 countByEnumeratingWithState:&v43 objects:v52 count:16];
                }

                while (v19);
              }

              a1 = v36;
            }

            v24 = [v9 objectForKeyedSubscript:v13];
            v15 = [v24 accountIdentifier];

            v37 = 1;
          }

          v40 = v13;
          v25 = [[_REMCKIdentifierAccountIdentifierPair alloc] initWithCkIdentifier:v13 accountIdentifier:v15];
          v26 = [*(a1 + 40) managedObjectContext];
          v51 = v11;
          [NSArray arrayWithObjects:&v51 count:1];
          v28 = v27 = a1;
          v42 = 0;
          v29 = [v26 obtainPermanentIDsForObjects:v28 error:&v42];
          v30 = v42;

          if (v29)
          {
            v31 = [*(v27 + 40) managedObjectIDCache];
            v32 = [v11 objectID];
            [v31 setObject:v32 forKey:v25];

            [*(*(*(v27 + 48) + 8) + 40) addObject:v25];
            a1 = v27;
          }

          else
          {
            v33 = +[REMLog cloudkit];
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v54 = v25;
              _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Cannot obtain permanent ID for %{public}@", buf, 0xCu);
            }

            a1 = v36;
          }
        }

        v39 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v39);
    }

    v5 = v34;
  }
}

void sub_1000E47A8(uint64_t a1)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v8 = [_REMCKIdentifierAccountIdentifierPair alloc];
        v9 = [(_REMCKIdentifierAccountIdentifierPair *)v8 initWithCkIdentifier:v7 accountIdentifier:*(a1 + 40), v16];
        v10 = [*(a1 + 48) ckIdentifierAccountPairs];
        [v10 addObject:v9];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  v11 = [*(a1 + 48) dispatchBlocks];
  v12 = objc_retainBlock(*(a1 + 56));
  [v11 addObject:v12];

  v13 = [*(a1 + 48) dispatchBlocks];
  v14 = [v13 count];
  v15 = [*(a1 + 48) batchSize];

  if (v14 >= v15)
  {
    [*(a1 + 48) _flush];
  }
}

void sub_1000E49DC(uint64_t a1)
{
  v2 = [*(a1 + 32) dispatchBlocks];
  v3 = objc_retainBlock(*(a1 + 40));
  [v2 addObject:v3];

  v4 = [*(a1 + 32) dispatchBlocks];
  v5 = [v4 count];
  v6 = [*(a1 + 32) batchSize];

  if (v5 >= v6)
  {
    v7 = *(a1 + 32);

    [v7 _flush];
  }
}

void sub_1000E5084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E50C4(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [WeakRetained existingObjectWithID:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1000E5F64(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  dispatch_async(&_dispatch_main_q, v2);
}

void sub_1000E6354(uint64_t a1)
{
  v2 = +[REMCDReminder cdEntityName];
  v3 = [NSBatchUpdateRequest batchUpdateRequestWithEntityName:v2];

  v4 = [NSPredicate predicateWithFormat:@"%K != NULL", @"ckServerRecordData"];
  [v3 setPredicate:v4];

  [v3 setIncludesSubentities:1];
  [v3 setResultType:2];
  v5 = [NSString stringWithFormat:@"%@.%@", @"parentReminder", @"ckIdentifier"];
  v18 = @"ckParentReminderIdentifier";
  v6 = [NSExpression expressionForKeyPath:v5];
  v19 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [v3 setPropertiesToUpdate:v7];

  v17 = *(a1 + 32);
  v8 = [NSArray arrayWithObjects:&v17 count:1];
  [v3 setAffectedStores:v8];

  v9 = [*(a1 + 32) persistentStoreCoordinator];
  v10 = *(a1 + 40);
  v16 = 0;
  v11 = [v9 executeRequest:v3 withContext:v10 error:&v16];
  v12 = v16;

  if (!v11)
  {
    v15 = +[REMLogStore container];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10076DF64(v12, v15);
    }

    goto LABEL_7;
  }

  if ([v11 resultType] == 2)
  {
    v13 = [v11 result];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v15 = [v11 result];
      *(*(*(a1 + 48) + 8) + 24) = [v15 integerValue];
LABEL_7:
    }
  }
}

void sub_1000E6870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E6888(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000E68A0(uint64_t a1)
{
  v2 = +[REMCDAccount fetchRequest];
  v3 = [REMCDAccount predicateForCloudKitAccountsWithKeyPathPrefix:0];
  [v2 setPredicate:v3];

  v4 = *(a1 + 32);
  v26 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v26];
  v6 = v26;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  if (v6)
  {
    v9 = +[REMLog cloudkit];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10076E02C();
    }
  }

  else
  {
    v21 = v2;
    v10 = +[NSMutableArray array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = a1;
    v11 = *(*(*(a1 + 40) + 8) + 40);
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          v17 = [v16 ckUserRecordName];

          if (!v17)
          {
            v18 = +[REMLog cloudkit];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v28 = v16;
              _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Found extended account without CK user record name: %@", buf, 0xCu);
            }
          }

          [v10 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v29 count:16];
      }

      while (v13);
    }

    v2 = v21;
    v19 = *(*(v20 + 40) + 8);
    v9 = *(v19 + 40);
    *(v19 + 40) = v10;
    v6 = 0;
  }
}

void sub_1000E6C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E6C7C(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E6D18;
  v4[3] = &unk_1008DC798;
  v3 = *(a1 + 32);
  v2 = v3;
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 performBlockAndWait:v4];
}

void sub_1000E6D18(uint64_t a1)
{
  v2 = [qword_100952B60 objectForKey:*(a1 + 32)];
  v3 = [v2 allValues];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 40) + 8) + 40);
  v7 = v6;
  if (v6)
  {
    goto LABEL_3;
  }

  v8 = [*(a1 + 48) _fetchCloudKitAccountsInContext:*(a1 + 32)];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(a1 + 40);
  v7 = *(*(v11 + 8) + 40);
  if (v7)
  {
LABEL_3:
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v24 + 1) + 8 * i) managedObjectContext];

          if (!v17)
          {
            v18 = *(*(a1 + 40) + 8);
            v19 = *(v18 + 40);
            *(v18 + 40) = 0;

            goto LABEL_13;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    v11 = *(a1 + 40);
    if (*(*(v11 + 8) + 40))
    {
      if (v6)
      {
        return;
      }
    }

    else
    {
      v20 = [*(a1 + 48) _fetchCloudKitAccountsInContext:*(a1 + 32)];
      v21 = *(*(a1 + 40) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

      v11 = *(a1 + 40);
    }
  }

  v23 = [*(a1 + 48) accountByCKIdentifierFrom:{*(*(v11 + 8) + 40), v24}];
  [qword_100952B60 setObject:v23 forKey:*(a1 + 32)];
}

void sub_1000E6FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E7000(uint64_t a1)
{
  v2 = +[REMCDAccount fetchRequest];
  v3 = cloudBasedAccountTypes();
  v4 = [NSPredicate predicateWithFormat:@"type IN %@", v3];
  [v2 setPredicate:v4];

  v5 = *(a1 + 32);
  v9 = 0;
  v6 = [v5 countForFetchRequest:v2 error:&v9];
  v7 = v9;
  *(*(*(a1 + 40) + 8) + 24) = v6;
  if (v7)
  {
    v8 = +[REMLog cloudkit];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10076E098();
    }
  }
}

void sub_1000E74D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E74E8(uint64_t a1)
{
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (!v2)
  {
    goto LABEL_26;
  }

  v4 = v2;
  v5 = *v36;
  *&v3 = 138543618;
  v33 = v3;
  while (2)
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v36 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v35 + 1) + 8 * i);
      v8 = [v7 accountTypeHost];
      v9 = [v8 isPrimaryCloudKit];

      v10 = [v7 identifier];
      v11 = [v10 UUIDString];
      v12 = [*(a1 + 40) identifier];
      v13 = [v11 isEqualToString:v12];

      v14 = [v7 identifier];
      v15 = [v14 UUIDString];
      v16 = [v15 isEqualToString:@"55CF9DED-2785-46E1-9991-04987805FEE7"];

      v17 = v13 ^ 1;
      if (((v9 ^ 1) & 1) == 0 && (v17 & 1) == 0)
      {
        v28 = +[REMLog cloudkit];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = [v7 identifier];
          v30 = [v29 UUIDString];
          v31 = [*(a1 + 40) identifier];
          *buf = v33;
          v40 = v30;
          v41 = 2114;
          v42 = v31;
          v32 = "CloudKitUtils: Found a CloudKit REMCDAccount that matches the primary iCloud ACAccount {cdAccount: %{public}@, acAccount: %{public}@}";
LABEL_24:
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, v32, buf, 0x16u);
        }

LABEL_25:

        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
        goto LABEL_26;
      }

      if (v16)
      {
        v28 = +[REMLog cloudkit];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = [v7 identifier];
          v30 = [v29 UUIDString];
          v31 = [*(a1 + 40) identifier];
          *buf = v33;
          v40 = v30;
          v41 = 2114;
          v42 = v31;
          v32 = "CloudKitUtils: Found a PPT fixture CK account, ASSUMED to be matching the primary iCloud ACAccount {cdAccount: %{public}@, acAccount: %{public}@}";
          goto LABEL_24;
        }

        goto LABEL_25;
      }

      if ((v9 ^ 1 | v13))
      {
        if ((v9 | v17))
        {
          continue;
        }

        v18 = +[REMLog cloudkit];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          v19 = [v7 identifier];
          v20 = [v19 UUIDString];
          v21 = [*(a1 + 40) identifier];
          *buf = v33;
          v40 = v20;
          v41 = 2114;
          v42 = v21;
          _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "CloudKitUtils: Found a non-primary CloudKit REMCDAccount that matches the primary iCloud ACAccount, this is unexpected {cdAccount: %{public}@, acAccount: %{public}@}", buf, 0x16u);
        }
      }

      else
      {
        v22 = +[REMLog cloudkit];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          v25 = [v7 identifier];
          v26 = [v25 UUIDString];
          v27 = [*(a1 + 40) identifier];
          *buf = v33;
          v40 = v26;
          v41 = 2114;
          v42 = v27;
          _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "CloudKitUtils: Found a primary CloudKit REMCDAccount that does NOT match with the primary iCloud ACAccount, this is unexpected {cdAccount: %{public}@, acAccount: %{public}@}", buf, 0x16u);
        }

        v23 = *(*(a1 + 48) + 8);
        v24 = v7;
        v18 = *(v23 + 40);
        *(v23 + 40) = v24;
      }
    }

    v4 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v4)
    {
      continue;
    }

    break;
  }

LABEL_26:
}

void sub_1000E7C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E7C60(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E7D18;
  v5[3] = &unk_1008DC7C0;
  v6 = v2;
  v4 = *(a1 + 40);
  v3 = v4;
  v7 = v4;
  v8 = *(a1 + 56);
  [v6 performBlockAndWait:v5];
}

void sub_1000E7D18(uint64_t a1)
{
  v2 = [qword_100952B60 objectForKey:*(a1 + 32)];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  if (v7)
  {
    v8 = 0;
    v9 = *(v6 + 40);
    v10 = v2;
  }

  else
  {
    v8 = [*(a1 + 56) _fetchCloudKitAccountsInContext:*(a1 + 32)];
    v10 = [*(a1 + 56) accountByCKIdentifierFrom:v8];

    v11 = [v10 objectForKey:*(a1 + 40)];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = +[REMLog cloudkit];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 40);
      v16 = [v10 allKeys];
      v26 = 138543618;
      v27 = v15;
      v28 = 2114;
      v29 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "cloudKitAccountWithCKIdentifier: not in cache, ckIdentifier: %{public}@, all ckIdentifiers: %{public}@", &v26, 0x16u);
    }

    v9 = *(*(*(a1 + 48) + 8) + 40);
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  v17 = [v9 managedObjectContext];

  if (!v17)
  {
    v18 = [*(a1 + 56) _fetchCloudKitAccountsInContext:*(a1 + 32)];

    v19 = [*(a1 + 56) accountByCKIdentifierFrom:v18];

    v20 = [v19 objectForKey:*(a1 + 40)];
    v21 = *(*(a1 + 48) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    v23 = +[REMLog cloudkit];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(a1 + 40);
      v25 = [v19 allKeys];
      v26 = 138543618;
      v27 = v24;
      v28 = 2114;
      v29 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "cloudKitAccountWithCKIdentifier: nil context, ckIdentifier: %{public}@, all ckIdentifiers: %{public}@", &v26, 0x16u);
    }

    v8 = v18;
    v10 = v19;
    goto LABEL_12;
  }

  if (!v7)
  {
LABEL_12:
    [qword_100952B60 setObject:v10 forKey:*(a1 + 32)];
  }
}

void sub_1000E84C4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

int main(int argc, const char **argv, const char **envp)
{
  ReminderKitInternalVerify()();
  v3 = type metadata accessor for Logger();
  sub_1000EECAC(v3, qword_1009359A0);
  v4 = sub_100006654(v3, qword_1009359A0);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v5 = sub_100006654(v3, qword_100974F78);
  (*(*(v3 - 8) + 16))(v4, v5, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    v9 = [objc_opt_self() processInfo];
    v10 = [v9 processIdentifier];

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "LAUNCH remindd {pid: %d}", v8, 8u);
  }

  v11 = objc_autoreleasePoolPush();
  sub_1000E89FC();
  objc_autoreleasePoolPop(v11);
  sub_100052F58();
  return 0;
}

uint64_t sub_1000E89FC()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v0 - 8);
  v21 = v0;
  v1 = *(v20 + 64);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v18 = *(v4 - 8);
  v19 = v4;
  v5 = *(v18 + 64);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  sub_100006654(v8, &unk_1009359A0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "os_transaction INIT {name: com.apple.remindd.launch}", v11, 2u);
  }

  v12 = os_transaction_create();
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  aBlock[4] = sub_1000FCE9C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E52F8;
  v15 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000F4E04(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  v16 = v21;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  swift_unknownObjectRelease();

  (*(v20 + 8))(v3, v16);
  return (*(v18 + 8))(v7, v19);
}

uint64_t sub_1000E8D90(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v103 = a2;
  v101 = type metadata accessor for DispatchWorkItemFlags();
  v100 = *(v101 - 8);
  v7 = *(v100 + 64);
  __chkstk_darwin(v101);
  v98 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for DispatchQoS();
  v97 = *(v99 - 8);
  v9 = *(v97 + 64);
  __chkstk_darwin(v99);
  v96 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  sub_100006654(v11, &unk_1009359A0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "os_transaction INIT {name: com.apple.remindd.xpcEvents}", v14, 2u);
  }

  v95 = os_transaction_create();
  if (qword_100935D30 != -1)
  {
    swift_once();
  }

  v15 = qword_100974CC8;
  v16 = type metadata accessor for RDXPCEventStream.SystemXPCEventInterface();
  v17 = swift_allocObject();
  if (byte_10093F008 == 1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    byte_10093F008 = 1;
    v106 = v16;
    v107 = &off_1008EBEB0;
    aBlock[0] = v17;
    type metadata accessor for RDXPCEventStream();
    v18 = swift_allocObject();
    v19 = sub_10000C9DC(aBlock, v16);
    v20 = *(*(v16 - 8) + 64);
    __chkstk_darwin(v19);
    v22 = (&v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    v24 = *v22;
    *(v18 + 64) = v16;
    *(v18 + 72) = &off_1008EBEB0;
    *(v18 + 24) = 0;
    *(v18 + 32) = _swiftEmptyArrayStorage;
    *(v18 + 40) = v24;
    *(v18 + 16) = v15;
    v25 = v15;
    sub_10000607C(aBlock);
    v26 = type metadata accessor for RDLocationManager();
    v27 = objc_allocWithZone(v26);
    *&v27[OBJC_IVAR____TtC7remindd17RDLocationManager_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v27[OBJC_IVAR____TtC7remindd17RDLocationManager_q_locationManager] = 0;
    *&v27[OBJC_IVAR____TtC7remindd17RDLocationManager_queue] = v25;
    v111.receiver = v27;
    v111.super_class = v26;
    v28 = v25;
    v29 = objc_msgSendSuper2(&v111, "init");
    v30 = qword_100935D18;

    v31 = v29;
    if (v30 != -1)
    {
      swift_once();
    }

    v32 = qword_100974CB0;
    v94 = type metadata accessor for RDDaemon();
    v33 = objc_allocWithZone(v94);
    v34 = v32;
    v35 = a3;
    v36 = a1;
    v37 = v103;

    v91 = v31;
    v38 = sub_1000F55EC(v18, v36, v37, v35, v31, a4, v34, v33);
    v102 = v38;
    type metadata accessor for RDMigrationClient();
    sub_100311E94(v36);
    v39 = &v38[OBJC_IVAR____TtC7remindd8RDDaemon_xpcDaemon];
    v40 = *&v38[OBJC_IVAR____TtC7remindd8RDDaemon_xpcDaemon];
    v41 = *(v39 + 1);
    type metadata accessor for RDAccountUtils();
    v42 = swift_allocObject();
    *(v42 + 24) = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    *(v42 + 24) = v41;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakAssign();
    *(v42 + 40) = 0;
    [v36 setAccountUtils:v42];

    v93 = type metadata accessor for RDExchangeAccountComplimentaryService();
    swift_allocObject();
    v43 = v36;
    v92 = sub_100157C6C(v43, 0, 0, 0);
    v44 = type metadata accessor for RDDaemonController();
    v45 = *v39;
    v46 = *(v39 + 1);
    v112 = xmmword_1007912E0;
    v114 = 0;
    memset(v115, 0, 14);
    v113 = 0;
    ObjectType = swift_getObjectType();
    v48 = swift_unknownObjectRetain();
    v49 = sub_1005564D4(v48, &v112, 0, v44, ObjectType, v46);
    v50 = [objc_allocWithZone(REMStore) initWithDaemonController:v49];

    v51 = objc_opt_self();
    v52 = v50;
    v53 = [v51 sharedInstance];
    v54 = [objc_opt_self() daemonUserDefaults];
    v55 = type metadata accessor for RDAccountInitializer();
    v56 = objc_allocWithZone(v55);
    *&v56[OBJC_IVAR____TtC7remindd20RDAccountInitializer_store] = v52;
    *&v56[OBJC_IVAR____TtC7remindd20RDAccountInitializer_storeController] = v43;
    *&v56[OBJC_IVAR____TtC7remindd20RDAccountInitializer_appleAccountUtilities] = v53;
    *&v56[OBJC_IVAR____TtC7remindd20RDAccountInitializer_userDefaults] = v54;
    v110.receiver = v56;
    v110.super_class = v55;
    v57 = v43;
    v58 = objc_msgSendSuper2(&v110, "init");
    sub_100455ED0();

    v59 = type metadata accessor for RDNotifydEventStream();
    swift_allocObject();
    v60 = v18;
    v61 = v28;
    v62 = v52;
    v90 = v62;
    v63 = sub_10028F604(v61, 0);
    sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
    v64 = [swift_getObjCClassFromMetadata() daemonUserDefaults];
    v65 = [objc_opt_self() sharedConfiguration];
    v66 = swift_allocObject();
    *(v66 + 16) = v62;
    v89 = type metadata accessor for RDSyncPoller();
    v67 = swift_allocObject();
    v67[4] = &off_1008F7BC8;
    v67[9] = v65;
    v67[10] = &off_1008F7BE8;
    v67[7] = v63;
    v67[8] = &off_1008EC760;
    v67[2] = v61;
    v67[3] = v64;
    v67[5] = sub_1000FC404;
    v67[6] = v66;
    v68 = type metadata accessor for RDDisplayDateUpdater();
    v88 = v68;
    v69 = objc_allocWithZone(v68);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v87 = v59;
    swift_allocObject();
    v70 = v61;
    v71 = v57;
    *&v69[OBJC_IVAR____TtC7remindd20RDDisplayDateUpdater_significantTimeNotificationStream] = sub_10028F604(v70, 0);
    v109.receiver = v69;
    v109.super_class = v68;
    v86 = objc_msgSendSuper2(&v109, "init");

    swift_allocObject();
    v72 = sub_10028F604(v70, 0);
    sub_1005D0E0C();
    sub_1005B560C();
    v73 = swift_allocObject();
    v73[2] = v67;
    v73[3] = v60;
    v85 = v60;
    v74 = v91;
    v73[4] = v91;
    v73[5] = v72;
    v84 = v72;
    v73[6] = v95;
    v107 = sub_1000FC40C;
    v108 = v73;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    v106 = &unk_1008E4D08;
    v75 = _Block_copy(aBlock);

    v91 = v74;

    swift_unknownObjectRetain();
    v76 = v96;
    static DispatchQoS.unspecified.getter();
    v104 = _swiftEmptyArrayStorage;
    sub_1000F4E04(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
    v77 = v98;
    v78 = v101;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v75);
    (*(v100 + 8))(v77, v78);
    (*(v97 + 8))(v76, v99);

    sub_1000F5104(&unk_100936EC0, &unk_100791AE0);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1007912F0;
    *(v79 + 56) = v94;
    *(v79 + 64) = &off_1008E4A58;
    v80 = v102;
    *(v79 + 32) = v102;
    *(v79 + 96) = type metadata accessor for RDStoreControllerNotificationCenter();
    *(v79 + 104) = &off_1008E4A38;
    *(v79 + 72) = v103;
    *(v79 + 136) = v89;
    *(v79 + 144) = &off_1008E4A30;
    *(v79 + 112) = v67;
    *(v79 + 176) = v88;
    *(v79 + 184) = &off_1008E4A28;
    *(v79 + 152) = v86;
    *(v79 + 216) = v87;
    *(v79 + 224) = &off_1008E4A20;
    *(v79 + 192) = v84;
    *(v79 + 256) = v93;
    *(v79 + 264) = &off_1008E4A18;
    *(v79 + 232) = v92;

    v81 = v80;
    swift_unknownObjectRelease();

    return v81;
  }

  return result;
}

void sub_1000E99C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_100006654(v5, &unk_1009359A0);
  sub_1005819E4();
  sub_10025DB14();
  sub_100507624();
  v6 = *(a4 + 16);
  v7 = *(a4 + 24);
  *(a4 + 16) = sub_1000E9AD0;
  *(a4 + 24) = 0;
  sub_10003E114(v6);
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v8, "os_transaction RELEASE {name: com.apple.remindd.xpcEvents}", v9, 2u);
  }
}

uint64_t sub_1000E9AD0()
{
  v0 = type metadata accessor for Logger();
  sub_100006654(v0, &unk_1009359A0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Triggered proactiveExitStream.eventHandler. Exiting... {name: com.apple.remindd.xpcEvents}", v3, 2u);
  }

  return _xpc_transaction_exit_clean();
}

void sub_1000E9B88()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100006654(v3, &unk_1009359A0);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.utf8CString.getter();

  v7 = _set_user_dir_suffix();

  if ((v7 & 1) == 0)
  {
    (*(v1 + 16))(v5, v6, v0);
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    inited = swift_initStackObject();
    v14 = xmmword_100791300;
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = 49;
    *(inited + 40) = 0xE100000000000000;
    v9 = errno.getter();
    if (!strerror(v9))
    {
      __break(1u);
    }

    v10 = String.init(cString:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v10;
    *(inited + 56) = v11;
    sub_1001F67C8(inited);

    v12 = swift_initStackObject();
    *(v12 + 16) = v14;
    *(v12 + 32) = 48;
    *(v12 + 40) = 0xE100000000000000;
    v13 = errno.getter();
    *(v12 + 72) = &type metadata for Int32;
    *(v12 + 48) = v13;
    sub_1001F67C8(v12);

    sub_10054573C("Sandbox: _set_user_dir_suffix() failed %{public}d (%@)", 54, 2);
    __break(1u);
  }
}

uint64_t sub_1000E9D7C(int a1)
{
  v2 = type metadata accessor for Logger();
  sub_100006654(v2, &unk_1009359A0);
  v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v3 + 16) = 1024;
  bzero((v3 + 32), 0x400uLL);
  if (!confstr(a1, (v3 + 32), 0x400uLL))
  {
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v29 = v7;
      *v6 = 67240706;
      *(v6 + 4) = a1;
      *(v6 + 8) = 1026;
      *(v6 + 10) = errno.getter();
      *(v6 + 14) = 2080;
      v8 = errno.getter();
      result = strerror(v8);
      if (!result)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v10 = String.init(cString:)();
      v12 = sub_10000668C(v10, v11, &v29);

      *(v6 + 16) = v12;
      _os_log_impl(&_mh_execute_header, v4, v5, "Sandbox: confstr() for type %{public}d failed %{public}d (%s)", v6, 0x18u);
      sub_10000607C(v7);
    }
  }

  if (realpath_DARWIN_EXTSN((v3 + 32), 0))
  {

    sub_1000EA11C();
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    result = swift_slowAlloc();
    v29 = result;
    *v15 = 136315650;
    v16 = *(v3 + 16);
    if (!v16)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (*(v3 + 32))
    {
      v17 = 0;
      v18 = v16 - 1;
      while (v18 != v17)
      {
        if (!*(v3 + 33 + v17++))
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_24;
    }

LABEL_18:
    v20 = static String._fromUTF8Repairing(_:)();
    v22 = v21;

    v23 = sub_10000668C(v20, v22, &v29);

    *(v15 + 4) = v23;
    *(v15 + 12) = 1026;
    *(v15 + 14) = errno.getter();
    *(v15 + 18) = 2080;
    v24 = errno.getter();
    result = strerror(v24);
    if (!result)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    v25 = String.init(cString:)();
    v27 = sub_10000668C(v25, v26, &v29);

    *(v15 + 20) = v27;
    _os_log_impl(&_mh_execute_header, v13, v14, "Sandbox: realpath(%s) failed %{public}d (%s)", v15, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {
  }

  v28 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v28 + 16) = 1;
  *(v28 + 32) = 0;
  sub_1000EA11C();
}

void sub_1000EA11C()
{
  v0 = type metadata accessor for Logger();
  sub_100006654(v0, &unk_1009359A0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    v4 = String.init(cString:)();
    v6 = sub_10000668C(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Sandbox: TMPDIR=%s", v2, 0xCu);
    sub_10000607C(v3);
  }
}

id sub_1000EA240(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v4 - 8);
  v26 = v4;
  v5 = *(v25 + 64);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  sub_100006654(v12, &unk_1009359A0);
  if (qword_100935FC8 != -1)
  {
    swift_once();
  }

  v29 = xmmword_100791310;
  v31 = 0;
  v32[0] = 0;
  v30 = 0;
  *(v32 + 6) = 0;
  sub_1000081D8(&v29, a1, a2);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "os_transaction INIT {name: com.apple.remindd.xpcEvents}", v15, 2u);
  }

  v16 = os_transaction_create();
  v17 = [objc_allocWithZone(type metadata accessor for RDBarebonesDaemon()) init];
  sub_1005D19E8();
  if (qword_100935D30 != -1)
  {
    swift_once();
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  aBlock[4] = sub_1000FC3E0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E4C18;
  v19 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_1000F4E04(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  v20 = v26;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  swift_unknownObjectRelease();
  (*(v25 + 8))(v7, v20);
  (*(v23 + 8))(v11, v24);

  return v17;
}

void sub_1000EA66C(uint64_t a1, const char *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100006654(v3, &unk_1009359A0);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, a2, v5, 2u);
  }
}

void sub_1000EA72C(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UnfairLock.Options();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = sub_100006654(v13, &unk_1009359A0);
  if ([objc_opt_self() isSetupUser])
  {
    *&v105 = REMCDList.cleanUpAfterLocalObjectMerge();
    *(&v105 + 1) = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v104 = sub_1000EBA84;
    *(&v104 + 1) = &unk_1008E4BA0;
    v15 = _Block_copy(&aBlock);
    xpc_set_event_stream_handler("com.apple.alarm", 0, v15);
    _Block_release(v15);
    *&v105 = j_j___s7remindd28RDLaunchAnalyticsPostNotifydyySo13OS_xpc_object_pF;
    *(&v105 + 1) = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v104 = sub_1000EBA84;
    *(&v104 + 1) = &unk_1008E4BC8;
    v16 = _Block_copy(&aBlock);
    xpc_set_event_stream_handler("com.apple.notifyd.matching", 0, v16);
    _Block_release(v16);
    if (qword_100935D38 != -1)
    {
      swift_once();
    }

    sub_1005A9F48(qword_100974CD0, sub_1000EBAE4, 0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Running in the buddy setup user. Going to run a barebones daemon.", v19, 2u);
    }

    sub_1000F5104(&qword_100936E88, &unk_100791AC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100791300;
    v21 = sub_1000EA240(0x754265726F666542, 0xEB00000000796464);
    *(v20 + 56) = type metadata accessor for RDBarebonesDaemon();
    *(v20 + 64) = &off_1008E4A50;
    *(v20 + 32) = v21;
    goto LABEL_46;
  }

  v95 = v8;
  v94 = v13;
  v93 = a1;
  v102 = v14;
  v100 = v2;
  v98 = a2;
  v22 = [objc_allocWithZone(UNUserNotificationCenter) initWithBundleIdentifier:REMAppBundleIdentifier];
  if (qword_100935D30 != -1)
  {
    swift_once();
  }

  v23 = qword_100974CC8;
  v24 = type metadata accessor for RDUserNotificationCenter();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_reminderAlarmDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v25[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_todayNotificationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v25[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_beforeFirstUnlockReminderDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v25[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_assignmentNotificationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v25[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_sharedListUpdateNotificationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v25[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue] = v23;
  *&v25[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_notificationCenter] = v22;
  v106.receiver = v25;
  v106.super_class = v24;
  v26 = v23;
  v97 = v22;
  v27 = objc_msgSendSuper2(&v106, "init");
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1000F50E0;
  *(v29 + 24) = v28;
  v96 = v28;
  *&v105 = sub_1000529DC;
  *(&v105 + 1) = v29;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v104 = sub_10000F160;
  *(&v104 + 1) = &unk_1008E4AB0;
  v30 = _Block_copy(&aBlock);
  v31 = v27;

  dispatch_sync(v26, v30);
  _Block_release(v30);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
    goto LABEL_48;
  }

  UnlockNotificationEngine = type metadata accessor for RDBeforeFirstUnlockNotificationEngine();
  v32 = swift_allocObject();
  v32[2] = v26;
  v32[3] = v31;
  v99 = v32;
  v32[4] = &off_1008F5BC0;
  v101 = v31;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "os_transaction INIT {name: com.apple.remindd.firstUnlockManager.launch}", v35, 2u);
  }

  v36 = os_transaction_create();
  v91 = type metadata accessor for RDFirstUnlockManager();
  v37 = swift_allocObject();
  type metadata accessor for RDTransactionRegistrar();
  v38 = swift_allocObject();
  v38[4] = 0;
  v38[5] = 0;
  v38[2] = 0xD000000000000058;
  v38[3] = 0x80000001007EAE60;
  *&aBlock = _swiftEmptyArrayStorage;
  sub_1000F4E04(&qword_100936E60, &type metadata accessor for UnfairLock.Options);
  sub_1000F5104(&qword_100936E68, &unk_100791AB0);
  sub_10000CB48(&qword_100936E70, &qword_100936E68, &unk_100791AB0);
  v39 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v40 = type metadata accessor for UnfairLock();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v38[6] = UnfairLock.init(options:)();
  *(v37 + 16) = v38;
  *(v37 + 24) = 0;
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v43 = static OS_dispatch_queue.main.getter();
  *&v105 = 0;
  aBlock = 0u;
  v104 = 0u;

  swift_unknownObjectRetain();
  v44 = sub_100294A20(v43, &aBlock, v37, sub_1000EBB04, 0, v37, v36);

  swift_unknownObjectRelease();

  sub_1000050A4(&aBlock, &qword_100936E80, qword_10079F000);
  if (v44 == 1)
  {
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.fault.getter();
    v52 = os_log_type_enabled(v50, v51);
    v45 = v95;
    if (v52)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Unexpected currentUnlockState - .firstUnlock is a transitional state that should be passed to the unlock handler only.", v53, 2u);
    }
  }

  else
  {
    v45 = v95;
    if (!v44)
    {
      *&v105 = REMCDList.cleanUpAfterLocalObjectMerge();
      *(&v105 + 1) = 0;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v104 = sub_1000EBA84;
      *(&v104 + 1) = &unk_1008E4B78;
      v46 = _Block_copy(&aBlock);
      xpc_set_event_stream_handler("com.apple.alarm", 0, v46);
      _Block_release(v46);
      v47 = v101;
      *&v101[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_beforeFirstUnlockReminderDelegate + 8] = &off_1008ED8B8;
      v48 = v99;
      swift_unknownObjectWeakAssign();

      sub_10030088C();

      sub_1000F5104(&qword_100936E88, &unk_100791AC0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_100791320;
      v49 = sub_1000EA240(0x616F4C74416E7552, 0xE900000000000064);
      *(v20 + 56) = type metadata accessor for RDBarebonesDaemon();
      *(v20 + 64) = &off_1008E4A50;
      *(v20 + 32) = v49;
      *(v20 + 96) = UnlockNotificationEngine;
      *(v20 + 104) = &off_1008E4A40;
      *(v20 + 72) = v48;
      *(v20 + 136) = v91;
      *(v20 + 144) = &off_1008E4A48;
      *(v20 + 112) = v37;

LABEL_45:
      swift_unknownObjectRelease();

      a2 = v98;
LABEL_46:
      *a2 = v20;
      return;
    }
  }

  v12 = [objc_allocWithZone(RDStoreController) init];
  if ([v12 hasFailedLoadingAccountStoresFromDiskDueToDiskFull])
  {
    *&v105 = REMCDList.cleanUpAfterLocalObjectMerge();
    *(&v105 + 1) = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v104 = sub_1000EBA84;
    *(&v104 + 1) = &unk_1008E4B00;
    v54 = _Block_copy(&aBlock);
    xpc_set_event_stream_handler("com.apple.alarm", 0, v54);
    _Block_release(v54);
    *&v105 = j_j___s7remindd28RDLaunchAnalyticsPostNotifydyySo13OS_xpc_object_pF;
    *(&v105 + 1) = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v104 = sub_1000EBA84;
    *(&v104 + 1) = &unk_1008E4B28;
    v55 = _Block_copy(&aBlock);
    xpc_set_event_stream_handler("com.apple.notifyd.matching", 0, v55);
    _Block_release(v55);
    if (qword_100935D38 == -1)
    {
LABEL_20:
      sub_1005A9F48(qword_100974CD0, sub_1000EBBC0, 0);
      v56 = static OS_dispatch_queue.main.getter();
      *&v105 = sub_1000EBD84;
      *(&v105 + 1) = 0;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v104 = sub_1000EC630;
      *(&v104 + 1) = &unk_1008E4B50;
      v57 = _Block_copy(&aBlock);

      [v12 requestFreeSpaceToLoadAccountStoresWithQueue:v56 completionBlock:v57];
      _Block_release(v57);

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "Could not load some of our databases due to disk full. Going to run a barebones daemon.", v60, 2u);
      }

      sub_1000F5104(&qword_100936E88, &unk_100791AC0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_100791300;
      v61 = sub_1000EA240(0x6C6C75466B736944, 0xE800000000000000);
      *(v20 + 56) = type metadata accessor for RDBarebonesDaemon();
      *(v20 + 64) = &off_1008E4A50;
      *(v20 + 32) = v61;

      goto LABEL_44;
    }

LABEL_48:
    swift_once();
    goto LABEL_20;
  }

  v107[0] = 0x4014000000000000;
  type metadata accessor for RDStoreControllerNotificationCenter();
  memset(&v107[1], 0, 24);
  v108 = 0;
  swift_allocObject();
  v62 = v12;
  v63 = sub_1004417C4(0, 0, v62, v107);

  if (qword_100935D20 != -1)
  {
    swift_once();
  }

  sub_10043B68C(qword_100974CB8, sub_10002ABC8, 0, v45);
  sub_1000FBE54(v45);

  sub_1003016CC();

  if (qword_100935D18 != -1)
  {
    swift_once();
  }

  v64 = sub_1000EC6A0(0xD00000000000001BLL, 0x80000001007EAEC0, qword_100974CB0, &qword_100937040, &qword_100791C28, &qword_100937048, &unk_100791C30);
  v66 = v65;
  v95 = v64;
  v102 = sub_1000E8D90(v62, v63, v101, v64);
  v68 = v67;
  if (qword_100936870 != -1)
  {
    swift_once();
  }

  v69 = byte_1009753A9;
  *v93 = byte_1009753A9;
  if (v69 != 1)
  {
    if (qword_100936440 != -1)
    {
      swift_once();
    }

    sub_100006654(v94, qword_100975008);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&_mh_execute_header, v87, v88, "Not Running DataAccess", v89, 2u);
    }

    *&v105 = j_j___s7remindd28RDLaunchAnalyticsPostNotifydyySo13OS_xpc_object_pF;
    *(&v105 + 1) = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v104 = sub_1000EBA84;
    *(&v104 + 1) = &unk_1008E4AD8;
    v90 = _Block_copy(&aBlock);
    xpc_set_event_stream_handler("com.apple.notifyd.matching", 0, v90);
    _Block_release(v90);
    goto LABEL_43;
  }

  v91 = v68;
  UnlockNotificationEngine = v62;
  v93 = v39;
  if (qword_100936440 != -1)
  {
    swift_once();
  }

  sub_100006654(v94, qword_100975008);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&_mh_execute_header, v70, v71, "Running DataAccess", v72, 2u);
  }

  type metadata accessor for RDDARequestsQueue();
  v73 = swift_allocObject();
  v73[6] = 0;
  swift_unknownObjectWeakInit();
  v73[2] = 0xD000000000000019;
  v73[3] = 0x80000001007EAF20;
  v74 = *(v66 + 32);
  v73[4] = v74;
  v73[7] = v66;
  v73[8] = _swiftEmptyArrayStorage;
  swift_retain_n();
  v75 = v74;
  sub_1000ECBB4(v73, v75, sub_10004FD78, 0);

  v76 = *&v102[OBJC_IVAR____TtC7remindd8RDDaemon_xpcDaemon];
  v77 = *&v102[OBJC_IVAR____TtC7remindd8RDDaemon_xpcDaemon + 8];
  v78 = type metadata accessor for RDDaemonController();
  aBlock = xmmword_100791330;
  *&v105 = 0;
  v104 = 0uLL;
  *(&v105 + 6) = 0;
  ObjectType = swift_getObjectType();
  v80 = v101;
  swift_unknownObjectRetain_n();
  v81 = v80;
  v82 = sub_1005564D4(v76, &aBlock, 0, v78, ObjectType, v77);
  v83 = qword_100951C88;
  qword_100951C88 = v82;
  off_100951C90 = v63;
  qword_100951C98 = v81;
  qword_100951CA0 = &off_1008F5BC0;

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (qword_100936868 != -1)
  {
    swift_once();
  }

  v84 = qword_1009753A0;
  v85 = objc_autoreleasePoolPush();
  v86 = v100;
  sub_10075AC18(v84, v73);
  v100 = v86;
  if (!v86)
  {
    objc_autoreleasePoolPop(v85);

    v62 = UnlockNotificationEngine;
    v68 = v91;
LABEL_43:
    v20 = sub_1002706C8(v68);

LABEL_44:

    goto LABEL_45;
  }

  objc_autoreleasePoolPop(v85);
  __break(1u);
}

uint64_t sub_1000EBA84(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_1000EBB04()
{
  v0 = type metadata accessor for Logger();
  sub_100006654(v0, &unk_1009359A0);
  raise(1);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 67109120;
    *(v3 + 4) = 1;
    _os_log_impl(&_mh_execute_header, v1, v2, "remindd raised signal (%d) in try to terminate asap", v3, 8u);
  }

  exit(0);
}

void sub_1000EBBE0(unsigned __int8 a1, const char *a2)
{
  v4 = type metadata accessor for Logger();
  sub_100006654(v4, &unk_1009359A0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    v9 = 0xD000000000000030;
    v10 = "REMCDTemplateOperationQueueItem";
    *v7 = 136446210;
    v11 = "d.ICCloudConfigurationUpdater";
    v12 = 0xD000000000000034;
    v13 = "atchUpSyncController";
    v14 = 0xD000000000000031;
    if (a1 != 3)
    {
      v14 = 0xD00000000000001BLL;
      v13 = "ActivityScheduler";
    }

    if (a1 != 2)
    {
      v12 = v14;
      v11 = v13;
    }

    if (a1)
    {
      v9 = 0xD00000000000002DLL;
      v10 = "butesAutoTrainer";
    }

    if (a1 <= 1u)
    {
      v15 = v9;
    }

    else
    {
      v15 = v12;
    }

    if (a1 <= 1u)
    {
      v16 = v10;
    }

    else
    {
      v16 = v11;
    }

    v17 = sub_10000668C(v15, v16 | 0x8000000000000000, &v18);

    *(v7 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, a2, v7, 0xCu);
    sub_10000607C(v8);
  }
}

void sub_1000EBD84(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v46 = a2;
  v47 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchQoS();
  v49 = *(v51 - 8);
  v8 = *(v49 + 64);
  __chkstk_darwin(v51);
  v48 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTimeInterval();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = type metadata accessor for DispatchTime();
  v15 = *(v55 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v55);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v46 - v20;
  v22 = type metadata accessor for Logger();
  v23 = sub_100006654(v22, &unk_1009359A0);
  v52 = v5;
  v53 = v4;
  v54 = v23;
  if ((a1 - 2) < 3 || !a1)
  {
    v24 = v10;
    v25 = v21;
    v26 = v15;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      v15 = v26;
      v21 = v25;
      v10 = v24;
      goto LABEL_7;
    }

    v29 = swift_slowAlloc();
    *v29 = 134218496;
    *(v29 + 4) = a1;
    *(v29 + 12) = 2048;
    *(v29 + 14) = v46;
    *(v29 + 22) = 2048;
    *(v29 + 24) = v47;
    _os_log_impl(&_mh_execute_header, v27, v28, "RDStoreController.requestFreeSpaceToLoadAccountStores did not succeed {result: %lu, requested: %llu, available: %llu}", v29, 0x20u);
    v15 = v26;
    v21 = v25;
    v10 = v24;
    goto LABEL_5;
  }

  if (a1 != 1)
  {
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_10054573C("Unknown RDFreeSpaceResult value", 31, 2);
    __break(1u);
    return;
  }

  v27 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  v40 = os_log_type_enabled(v27, v39);
  if (v47 >= v46)
  {
    if (v40)
    {
      v42 = swift_slowAlloc();
      *v42 = 134218240;
      *(v42 + 4) = v46;
      *(v42 + 12) = 2048;
      *(v42 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v27, v39, "remindd is now exiting in response to requested free space to load account stores {requested: %llu, available: %llu}", v42, 0x16u);
    }

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Notifying stores must refresh due to relaunching upon requested free space to load account stores", v45, 2u);
    }

    notify_post(_REMStoreMustRefreshNotificationName);

    sub_1000EBB04();
  }

  if (v40)
  {
    v41 = swift_slowAlloc();
    *v41 = 134218240;
    *(v41 + 4) = v46;
    *(v41 + 12) = 2048;
    *(v41 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v27, v39, "RDStoreController.requestFreeSpaceToLoadAccountStores completes with .success but still doesn't have enough space {requested: %llu, available: %llu}", v41, 0x16u);
LABEL_5:
  }

LABEL_7:

  static DispatchTime.now()();
  *v14 = 300;
  (*(v11 + 104))(v14, enum case for DispatchTimeInterval.seconds(_:), v10);
  + infix(_:_:)();
  (*(v11 + 8))(v14, v10);
  v30 = *(v15 + 8);
  v47 = v15 + 8;
  v30(v19, v55);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    *(v33 + 4) = 300;
    _os_log_impl(&_mh_execute_header, v31, v32, "remindd couldn't get the requested free space to load account stores, will terminate after {delay: %ld}", v33, 0xCu);
  }

  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v34 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1000EC578;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E4C40;
  v35 = _Block_copy(aBlock);

  v36 = v48;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000F4E04(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  v37 = v50;
  v38 = v53;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v35);

  (*(v52 + 8))(v37, v38);
  (*(v49 + 8))(v36, v51);
  v30(v21, v55);
}

void sub_1000EC578()
{
  v0 = type metadata accessor for Logger();
  sub_100006654(v0, &unk_1009359A0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "remindd is now exiting after failure to get requested disk space to load account stores in hope to get relaunched in some better future", v3, 2u);
  }

  sub_1000EBB04();
}

uint64_t sub_1000EC630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v8(a2, a3, a4);
}

void *sub_1000EC6A0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  sub_1000F5104(a4, a5);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12[6] = 0;
  v12[7] = 0;
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  sub_1000F5104(a6, a7);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = v12;
  swift_bridgeObjectRetain_n();
  v14 = a3;

  return v13;
}

uint64_t sub_1000EC808@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

void sub_1000EC890(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
  v9 = v4[4];
  if (static NSObject.== infix(_:_:)())
  {
    if (v4[6])
    {
      if (qword_100936210 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_100006654(v10, qword_100948430);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v26 = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_10000668C(v5[2], v5[3], &v26);
        _os_log_impl(&_mh_execute_header, v11, v12, "Replacing existing eventHandler in Reader. This is usually a programmer error. {identifier: %s}", v13, 0xCu);
        sub_10000607C(v14);
      }
    }

    v16 = v5[2];
    v15 = v5[3];
    swift_unknownObjectWeakAssign();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = v16;
    v18[4] = v15;
    v18[5] = a3;
    v18[6] = a4;
    v19 = v5[6];
    v20 = v5[7];
    v5[6] = sub_1000FC550;
    v5[7] = v18;

    sub_10003E114(v19);
  }

  else
  {
    if (qword_100936210 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_100948430);
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    *(inited + 32) = 48;
    *(inited + 40) = 0xE100000000000000;
    v23 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
    *(inited + 48) = v9;
    *(inited + 72) = v23;
    *(inited + 80) = 49;
    *(inited + 120) = v23;
    *(inited + 88) = 0xE100000000000000;
    *(inited + 96) = a2;
    v24 = v9;
    v25 = a2;
    sub_1001F67C8(inited);

    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_10054573C("Unexpected eventHandler queue {self.queue: %@, queue: %@}", 57, 2);
    __break(1u);
  }
}

void sub_1000ECBB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
  v9 = v4[4];
  if (static NSObject.== infix(_:_:)())
  {
    if (v4[6])
    {
      if (qword_100936210 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_100006654(v10, qword_100948430);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v26 = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_10000668C(v5[2], v5[3], &v26);
        _os_log_impl(&_mh_execute_header, v11, v12, "Replacing existing eventHandler in Reader. This is usually a programmer error. {identifier: %s}", v13, 0xCu);
        sub_10000607C(v14);
      }
    }

    v16 = v5[2];
    v15 = v5[3];
    swift_unknownObjectWeakAssign();
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = v16;
    v18[4] = v15;
    v18[5] = a3;
    v18[6] = a4;
    v19 = v5[6];
    v20 = v5[7];
    v5[6] = sub_10004FD30;
    v5[7] = v18;

    sub_10003E114(v19);
  }

  else
  {
    if (qword_100936210 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_100948430);
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    *(inited + 32) = 48;
    *(inited + 40) = 0xE100000000000000;
    v23 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
    *(inited + 48) = v9;
    *(inited + 72) = v23;
    *(inited + 80) = 49;
    *(inited + 120) = v23;
    *(inited + 88) = 0xE100000000000000;
    *(inited + 96) = a2;
    v24 = v9;
    v25 = a2;
    sub_1001F67C8(inited);

    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_10054573C("Unexpected eventHandler queue {self.queue: %@, queue: %@}", 57, 2);
    __break(1u);
  }
}

id variable initialization expression of RDSynchronizedKeyValueStore.queue()
{
  if (qword_100935D30 != -1)
  {
    swift_once();
  }

  v1 = qword_100974CC8;

  return v1;
}

id sub_1000ECF58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = [objc_opt_self() sharedBabysitter];
  if (result)
  {
    v7 = result;
    v23 = sub_1000060C8(0, &qword_100936FB0, DABabysitter_ptr);
    v24 = &off_1008F54F0;
    *&v22 = v7;
    sub_100054B6C(&v22, v25);
    sub_10000F61C(v25, v25[3]);
    sub_10050C4C0(v3);
    if (qword_100936370 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_10094B320);

    v9 = v3;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v12 = 136446466;
      v13 = [v9 waiterID];

      if (!v13)
      {
        __break(1u);
        return result;
      }

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = sub_10000668C(v14, v16, &v21);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2082;
      *&v22 = a1;
      *(&v22 + 1) = a2;
      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      v18 = Optional.descriptionOrNil.getter();
      v20 = sub_10000668C(v18, v19, &v21);

      *(v12 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "Reset babysitter for {waiterID: %{public}s, event: %{public}s}", v12, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return sub_10000607C(v25);
  }

  return result;
}

void sub_1000ED1F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t, uint64_t *))
{
  v16 = a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    a5(Strong, &v16);
  }

  else
  {
    if (qword_100936210 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006654(v10, qword_100948430);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_10000668C(a3, a4, &v15);
      _os_log_impl(&_mh_execute_header, v11, v12, "Dropping reader message because target has been deallocated {identifier: %s}", v13, 0xCu);
      sub_10000607C(v14);
    }
  }
}

uint64_t sub_1000ED380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v18);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a1;
  aBlock[4] = sub_1000FC564;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E4F60;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_1000F4E04(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v18);
}

void sub_1000ED658()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1[2];
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  v9 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v9)
  {
    if (qword_1009362D8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_100949DE0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "CloudSchemaCatchUpSyncController: Starting", v13, 2u);
  }

  swift_beginAccess();
  if (v1[3])
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "CloudSchemaCatchUpSyncController: backgroundScheduler has already instantiated, duplicate call to q_start?";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v14, v15, v17, v16, 2u);
    }
  }

  else
  {
    v18 = v1[4];
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = *(v18 + 16);
    type metadata accessor for RDICCloudSchemaCatchUpSyncXPCActivity();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    v22 = swift_allocObject();
    v22[2] = v8;
    v22[3] = sub_1000FCE6C;
    v22[4] = v19;
    type metadata accessor for RDDynamicXPCActivity();
    swift_allocObject();
    v23 = v8;

    v24 = v20;
    v25 = sub_1005A9A28(2, sub_1000FCE88, v22);

    *(v21 + 24) = v25;

    v26 = v1[3];
    v1[3] = v21;

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "CloudSchemaCatchUpSyncController: Instantiated a background scheduler (xpcActivity) upon q_start";
      goto LABEL_10;
    }
  }
}

void sub_1000ED9E8()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v35[-v8];
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v1 + 16);
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_10;
  }

  v17 = *(v1 + 40);
  swift_getObjectType();
  if ([v17 schedulingState] != 1)
  {
    return;
  }

  v18 = [v17 lastScheduledDate];
  if (v18)
  {
    v19 = v18;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceNow.getter();
    if (v20 >= -604800.0)
    {
      (*(v3 + 8))(v9, v2);
    }

    else
    {
      if (qword_1009362D8 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100006654(v21, qword_100949DE0);
      (*(v3 + 16))(v7, v9, v2);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v39 = v38;
        *v24 = 134349314;
        *(v24 + 4) = 0x4122750000000000;
        *(v24 + 12) = 2082;
        sub_1000F4E04(&qword_100937010, &type metadata accessor for Date);
        v37 = v22;
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = v26;
        v28 = *(v3 + 8);
        v36 = v23;
        v28(v7, v2);
        v29 = sub_10000668C(v25, v27, &v39);

        *(v24 + 14) = v29;
        v30 = v37;
        _os_log_impl(&_mh_execute_header, v37, v36, "CloudSchemaCatchUpSyncController: q_repairSchedulingStateIfNeeded(): It had been too long since we scheudled the background activity and catch up sync still hasn't ran yet, force running the activity manually now {timeout: %{public}f, lastScheduledDate: %{public}s}", v24, 0x16u);
        sub_10000607C(v38);
      }

      else
      {

        v28 = *(v3 + 8);
        v28(v7, v2);
      }

      sub_1000EE4E0();
      v28(v9, v2);
    }

    return;
  }

  if (qword_1009362D8 != -1)
  {
    goto LABEL_18;
  }

LABEL_10:
  v31 = type metadata accessor for Logger();
  sub_100006654(v31, qword_100949DE0);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "CloudSchemaCatchUpSyncController: q_repairSchedulingStateIfNeeded(): schedulingState is .scheduled but we don't have a lastScheduledDate, force re-scheduling now", v34, 2u);
  }

  sub_1004C1FD4();
  sub_1000EDEFC();
}

void sub_1000EDEFC()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v0[2];
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v2 + 8);
  v8 = (v2 + 8);
  v9(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
LABEL_5:
    v12 = type metadata accessor for Logger();
    sub_100006654(v12, qword_100949DE0);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134349312;
      *(v15 + 4) = v8;
      *(v15 + 12) = 1026;
      v29 = *(*(v1 + 24) + 120);
      type metadata accessor for UnfairLock();

      Lock.sync<A>(_:)();

      *(v15 + 14) = v30;

      _os_log_impl(&_mh_execute_header, v13, v14, "CloudSchemaCatchUpSyncController: SchedulingState is not .unset so no need to schedule another one {schedulingState: %{public}ld, hasPendingActivity: %{BOOL,public}d}", v15, 0x12u);
    }

    else
    {
    }

    return;
  }

  swift_beginAccess();
  v1 = v0[3];
  if (v1)
  {
    v10 = v0[5];
    swift_getObjectType();

    v11 = [v10 schedulingState];
    if (v11)
    {
      v8 = v11;
      if (qword_1009362D8 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_25;
    }

    v29 = *(*(v1 + 24) + 120);
    type metadata accessor for UnfairLock();

    Lock.sync<A>(_:)();

    if (v30)
    {
      if (qword_1009362D8 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100006654(v20, qword_100949DE0);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134349056;
        *(v23 + 4) = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "CloudSchemaCatchUpSyncController: Already having a pending activity with the background scheduler (xpcActivity) so no need to schedule another one {schedulingState: (%{public}ld)}", v23, 0xCu);
      }

      sub_1004C2318();
    }

    else
    {
      sub_1004C261C();
      sub_1004C2318();
      if (qword_1009362D8 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100006654(v24, qword_100949DE0);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "CloudSchemaCatchUpSyncController: Updated background activity (xpcActivity) criteria", v27, 2u);
      }
    }
  }

  else
  {
    if (qword_1009362D8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_100949DE0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "CloudSchemaCatchUpSyncController: backgroundScheduler is unexpectedly not instantiated yet when calling q_scheduleBackgroundActivity(), bailing out", v19, 2u);
    }
  }
}

uint64_t sub_1000EE480()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000EE4E0();
  }

  return result;
}

void sub_1000EE4E0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v2 - 8);
  v3 = *(v50 + 64);
  __chkstk_darwin(v2);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  __chkstk_darwin(v6);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = v1[2];
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v48 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    if (qword_1009362D8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = type metadata accessor for Logger();
  sub_100006654(v16, qword_100949DE0);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "CloudSchemaCatchUpSyncController: Running scheduled background activity...", v19, 2u);
  }

  v20 = v1[5];
  swift_getObjectType();
  v21 = [v20 schedulingState];
  if (v21 == 1)
  {
    v47 = v6;
    sub_1004C201C();
    Strong = swift_unknownObjectWeakLoadStrong();
    v23 = v1[7];
    v24 = Logger.logObject.getter();
    if (Strong)
    {
      v25 = Strong;
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v24, v26, "os_transaction INIT {name: com.apple.remindd.ICCloudSchemaCatchUpSyncController.q_syncRunScheduledActivity}", v27, 2u);
      }

      v28 = os_transaction_create();
      v29 = swift_allocObject();
      v29[2] = v25;
      v29[3] = v23;
      v44 = v25;
      v29[4] = v28;
      v46 = v28;
      v56 = sub_1000FCE50;
      v57 = v29;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v45 = &v54;
      v54 = sub_100019200;
      v55 = &unk_1008E5208;
      v30 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      static DispatchQoS.unspecified.getter();
      v51 = _swiftEmptyArrayStorage;
      v42[1] = sub_1000F4E04(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
      v42[0] = sub_1000F5104(&unk_100939E50, &unk_100791AD0);
      sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
      v31 = v5;
      v32 = v2;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v30);
      v33 = *(v50 + 8);
      v50 += 8;
      v43 = v33;
      v33(v31, v2);
      v49 = *(v49 + 8);
      v34 = v47;
      (v49)(v9, v47);

      v56 = sub_1000FCE5C;
      v57 = v1;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_100019200;
      v55 = &unk_1008E5230;
      v35 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v51 = _swiftEmptyArrayStorage;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v35);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v43(v31, v32);
      (v49)(v9, v34);
    }

    else
    {
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v24, v40, "CloudSchemaCatchUpSyncController: Unexpected nil RDICCloudSchemaCatchUpSyncPerformer (ICCloudContext), bailing out from q_syncRunScheduledActivity()", v41, 2u);
      }
    }
  }

  else
  {
    v36 = v21;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134349056;
      *(v39 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v37, v38, "CloudSchemaCatchUpSyncController: SchedulingState is not .scheduled when trying to call q_syncRunScheduledActivity(), bailing out {schedulingState: %{public}ld}", v39, 0xCu);
    }
  }
}

uint64_t sub_1000EEC50(uint64_t a1)
{
  result = swift_beginAccess();
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *(v3 + 24);

    sub_1005A4C98();
  }

  return result;
}

uint64_t *sub_1000EECAC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

id sub_1000EED10(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = v3;
  v8 = [objc_opt_self() sharedBabysitter];
  if (!v8 || (v11 = v8, sub_1000060C8(0, &qword_100936FB0, DABabysitter_ptr), v9 = sub_10050C458(v3), v11, !v9))
  {
    v9 = v5;
    a3(a1, a2);
    swift_willThrow();
  }

  return v9;
}

uint64_t sub_1000EEDF0(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return _swift_task_switch(sub_1000EEE10, 0, 0);
}

void sub_1000EEE10()
{
  v32 = v0;
  v1 = v0[8];
  v2 = v1[3];
  v3 = v1[5];
  sub_10000F61C(v1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v0[10] = sub_1000EED10(v4, v5, sub_1004646D4);

  if (qword_100936370 != -1)
  {
    swift_once();
  }

  v6 = v0[8];
  v7 = v0[9];
  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_10094B320);
  sub_100030E2C(v6, (v0 + 2));
  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[9];
  if (v12)
  {
    v14 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v14 = 136446466;
    v15 = [v13 waiterID];

    if (!v15)
    {
      __break(1u);
      return;
    }

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_10000668C(v16, v18, v31);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    v20 = v0[5];
    v21 = v0[7];
    sub_10000F61C(v0 + 2, v20);
    v22 = (*(v21 + 8))(v20, v21);
    v24 = v23;
    sub_10000607C(v0 + 2);
    v25 = sub_10000668C(v22, v24, v31);

    *(v14 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v10, v11, "Obtained babysitter token for {waiterID: %{public}s, executable: %{public}s}", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000607C(v0 + 2);
  }

  v26 = sub_10000F61C(v0[8], v1[3]);
  v27 = *(*v26 + 40);
  v30 = (*(*v26 + 32) + **(*v26 + 32));
  v28 = *(*(*v26 + 32) + 4);
  v29 = swift_task_alloc();
  v0[11] = v29;
  *v29 = v0;
  v29[1] = sub_1000EF1C8;

  v30();
}

uint64_t sub_1000EF1C8()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1000EF348;
  }

  else
  {
    v3 = sub_1000EF2DC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000EF2DC()
{
  v1 = *(v0 + 80);
  sub_1000FC788(*(v0 + 72), *(v0 + 64));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000EF348()
{
  v1 = *(v0 + 80);
  sub_1000FC788(*(v0 + 72), *(v0 + 64));

  v2 = *(v0 + 96);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000EF3B4(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return _swift_task_switch(sub_1000EF3D4, 0, 0);
}

void sub_1000EF3D4()
{
  v32 = v0;
  v1 = v0[8];
  v2 = v1[3];
  v3 = v1[5];
  sub_10000F61C(v1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v0[10] = sub_1000EED10(v4, v5, sub_1004646D4);

  if (qword_100936370 != -1)
  {
    swift_once();
  }

  v6 = v0[8];
  v7 = v0[9];
  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_10094B320);
  sub_100030E2C(v6, (v0 + 2));
  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[9];
  if (v12)
  {
    v14 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v14 = 136446466;
    v15 = [v13 waiterID];

    if (!v15)
    {
      __break(1u);
      return;
    }

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_10000668C(v16, v18, v31);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    v20 = v0[5];
    v21 = v0[7];
    sub_10000F61C(v0 + 2, v20);
    v22 = (*(v21 + 8))(v20, v21);
    v24 = v23;
    sub_10000607C(v0 + 2);
    v25 = sub_10000668C(v22, v24, v31);

    *(v14 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v10, v11, "Obtained babysitter token for {waiterID: %{public}s, executable: %{public}s}", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000607C(v0 + 2);
  }

  v26 = sub_10000F61C(v0[8], v1[3]);
  v27 = *(*v26 + 40);
  v30 = (*(*v26 + 32) + **(*v26 + 32));
  v28 = *(*(*v26 + 32) + 4);
  v29 = swift_task_alloc();
  v0[11] = v29;
  *v29 = v0;
  v29[1] = sub_1000EF78C;

  v30();
}

uint64_t sub_1000EF78C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1000FDAFC;
  }

  else
  {
    v3 = sub_1000FDB0C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000EF8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v28 - 8);
  v6 = *(v30 + 64);
  __chkstk_darwin(v28);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchQoS();
  v27 = *(v29 - 8);
  v9 = *(v27 + 64);
  __chkstk_darwin(v29);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  v26 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v24 - v18;
  v24 = *(v3 + qword_10094FAC0);
  static DispatchTime.now()();
  + infix(_:_:)();
  v25 = *(v13 + 8);
  v25(v17, v12);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a2;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = a3;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_1000F4E04(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  v22 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v21);
  (*(v30 + 8))(v8, v22);
  (*(v27 + 8))(v11, v29);
  v25(v19, v26);
}

void sub_1000EFC84()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = qword_10094FAD8;
    swift_beginAccess();
    v3 = *&v1[v2];
    if ((v3 & 0xC000000000000001) != 0)
    {

      v4 = __CocoaSet.count.getter();

      if (v4)
      {
LABEL_5:

        return;
      }
    }

    else if (*(v3 + 16))
    {
      goto LABEL_5;
    }

    sub_1000EFEE4(&off_1008E41C8, &unk_1008E41E8, &unk_1008E51C8, sub_1000FDA78, sub_1000F5208, sub_1000F524C);
    sub_1000F0B08(1, &unk_1008E5128, &unk_100791BE0);
    goto LABEL_5;
  }
}

void sub_1000EFDB4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = qword_10094FAD8;
    swift_beginAccess();
    v3 = *&v1[v2];
    if ((v3 & 0xC000000000000001) != 0)
    {

      v4 = __CocoaSet.count.getter();

      if (v4)
      {
LABEL_5:

        return;
      }
    }

    else if (*(v3 + 16))
    {
      goto LABEL_5;
    }

    sub_1000EFEE4(&off_1008E41F8, &unk_1008E4218, &unk_1008E50B0, sub_1000FC9D8, sub_1000F532C, sub_1000F5370);
    sub_1000F0B08(1, &unk_1008E5010, &unk_100791B80);
    goto LABEL_5;
  }
}

void sub_1000EFEE4(void (*a1)(char *, uint64_t, uint64_t, uint64_t), uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v86 = a6;
  v75 = a4;
  v76 = a5;
  v70 = a3;
  v69 = a2;
  v68 = a1;
  v7 = v6;
  ObjectType = swift_getObjectType();
  v8 = sub_1000F5104(&unk_100936F50, &unk_100791B40);
  v78 = *(v8 - 8);
  v79 = v8;
  v9 = *(v78 + 64);
  __chkstk_darwin(v8);
  v77 = &v64 - v10;
  v84 = sub_1000F5104(&unk_100939970, &unk_10079ADB0);
  v82 = *(v84 - 8);
  v11 = *(v82 + 64);
  __chkstk_darwin(v84);
  v80 = &v64 - v12;
  v85 = sub_1000F5104(&unk_100936F60, &unk_100791B50);
  v83 = *(v85 - 8);
  v13 = *(v83 + 64);
  __chkstk_darwin(v85);
  v81 = &v64 - v14;
  v15 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v67 = &v64 - v17;
  v65 = sub_1000F5104(&unk_10093D130, &unk_100791BA0);
  v66 = *(v65 - 8);
  v18 = v66[8];
  __chkstk_darwin(v65);
  v20 = &v64 - v19;
  v72 = sub_1000F5104(&unk_100936FC0, &qword_10079C9A0);
  v71 = *(v72 - 1);
  v21 = *(v71 + 64);
  __chkstk_darwin(v72);
  v23 = &v64 - v22;
  v24 = sub_1000F5104(&unk_10094CE00, &unk_100791BB0);
  v73 = *(v24 - 8);
  v74 = v24;
  v25 = *(v73 + 64);
  __chkstk_darwin(v24);
  v27 = &v64 - v26;
  v28 = type metadata accessor for DispatchPredicate();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = (&v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = v7;
  v34 = *(v7 + qword_10094FAC0);
  *v32 = v34;
  (*(v29 + 104))(v32, enum case for DispatchPredicate.onQueue(_:), v28);
  v35 = v34;
  v36 = _dispatchPreconditionTest(_:)();
  (*(v29 + 8))(v32, v28);
  if (v36)
  {
    v87 = v33;
    v37 = *(v33 + qword_10094FAB0);
    v38 = *(v33 + qword_10094FAD0);
    v39 = *(v33 + qword_10094FAD0 + 8);
    sub_1000F5104(&unk_100936FD0, &unk_100795D40);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_100791300;
    *(v40 + 32) = v38;
    *(v40 + 40) = v39;

    v41 = sub_100441DF8(v37, v38, v39, v40);

    v42 = sub_10038D894(v68);
    sub_100034610(v69);
    v90 = v41;
    *(swift_allocObject() + 16) = v42;
    sub_1000F5104(&unk_10093D170, &unk_100791BC0);
    sub_1000F5104(&unk_100936FE0, &unk_1007A05A0);
    v70 = &protocol conformance descriptor for AnyPublisher<A, B>;
    sub_10000CB48(&unk_10093D180, &unk_10093D170, &unk_100791BC0);
    Publisher.map<A>(_:)();

    v75 = &protocol conformance descriptor for Publishers.Map<A, B>;
    sub_10000CB48(&unk_100936FF0, &unk_10093D130, &unk_100791BA0);
    v43 = v65;
    Publisher.filter(_:)();

    (v66[1])(v20, v43);
    v90 = v35;
    v44 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v45 = *(v44 - 8);
    v68 = *(v45 + 56);
    v69 = v45 + 56;
    v46 = v67;
    v68(v67, 1, 1, v44);
    v65 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
    v66 = &protocol conformance descriptor for Publishers.Filter<A>;
    sub_10000CB48(&qword_10093D190, &unk_100936FC0, &qword_10079C9A0);
    v64 = sub_100006CA4();
    v47 = v35;
    v48 = v72;
    Publisher.receive<A>(on:options:)();
    sub_1000050A4(v46, &qword_100939980, &unk_10079ADA0);

    (*(v71 + 8))(v23, v48);
    v72 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
    sub_10000CB48(&unk_100937000, &unk_10094CE00, &unk_100791BB0);
    v49 = v74;
    Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
    (*(v73 + 8))(v27, v49);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v90 = sub_100441A9C(0xD000000000000010, 0x80000001007EB570, 0);
    sub_1000F5104(&unk_10093D140, qword_1007969F0);
    sub_1000F5104(&unk_100936F70, &unk_100791B60);
    sub_10000CB48(&unk_10093D150, &unk_10093D140, qword_1007969F0);
    v50 = v77;
    Publisher.map<A>(_:)();
    sub_10000CB48(&unk_100936F80, &unk_100936F50, &unk_100791B40);
    v51 = v79;
    v52 = v80;
    Publisher.filter(_:)();

    (*(v78 + 8))(v50, v51);
    v90 = v47;
    v35 = ObjectType;
    v68(v46, 1, 1, v44);
    sub_10000CB48(&unk_10093D160, &unk_100939970, &unk_10079ADB0);
    v53 = v81;
    v54 = v84;
    Publisher.receive<A>(on:options:)();
    sub_1000050A4(v46, &qword_100939980, &unk_10079ADA0);

    (*(v82 + 8))(v52, v54);
    sub_10000CB48(&unk_100936F90, &unk_100936F60, &unk_100791B50);
    v55 = v85;
    Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
    (*(v83 + 8))(v53, v55);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    if (qword_1009366D8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v56 = type metadata accessor for Logger();
  sub_100006654(v56, qword_10094FA90);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v89 = v60;
    v90 = v35;
    *v59 = 136446210;
    swift_getMetatypeMetadata();
    v61 = String.init<A>(describing:)();
    v63 = sub_10000668C(v61, v62, &v89);

    *(v59 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v57, v58, "%{public}s: Did set up subscriptions", v59, 0xCu);
    sub_10000607C(v60);
  }
}

uint64_t sub_1000F0B08(int a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v45 = a2;
  v4 = v3;
  v48 = a1;
  ObjectType = swift_getObjectType();
  v6 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v44 = &v41 - v8;
  v46 = type metadata accessor for Date();
  v9 = *(v46 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v46);
  v43 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *&v4[qword_10094FAC0];
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  result = (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  if (v4[qword_10094FAE8])
  {
    return result;
  }

  v4[qword_10094FAE8] = 1;
  sub_1000F0FE8(0);
  if (qword_1009366D8 != -1)
  {
    goto LABEL_15;
  }

LABEL_4:
  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_10094FA90);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v49[0] = swift_slowAlloc();
    v49[1] = ObjectType;
    *v25 = 136446466;
    swift_getMetatypeMetadata();
    v26 = String.init<A>(describing:)();
    v28 = sub_10000668C(v26, v27, v49);
    v42 = ObjectType;
    v29 = v28;

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    if (v48)
    {
      v30 = 1702195828;
    }

    else
    {
      v30 = 0x65736C6166;
    }

    if (v48)
    {
      v31 = 0xE400000000000000;
    }

    else
    {
      v31 = 0xE500000000000000;
    }

    v32 = sub_10000668C(v30, v31, v49);

    *(v25 + 14) = v32;
    ObjectType = v42;
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s: Began handling operation queue items {isOnLaunch: %{public}s}", v25, 0x16u);
    swift_arrayDestroy();
  }

  Date.init()();
  v33 = type metadata accessor for TaskPriority();
  v34 = v44;
  (*(*(v33 - 8) + 56))(v44, 1, 1, v33);
  v35 = v43;
  v36 = v46;
  (*(v9 + 16))(v43, v13, v46);
  v37 = (*(v9 + 80) + 41) & ~*(v9 + 80);
  v38 = (v10 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v39 + 32) = v4;
  *(v39 + 40) = v48 & 1;
  (*(v9 + 32))(v39 + v37, v35, v36);
  *(v39 + v38) = ObjectType;
  v40 = v4;
  sub_1001955C4(0, 0, v34, v47, v39);

  return (*(v9 + 8))(v13, v36);
}

void sub_1000F0FE8(char a1)
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009366D8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_10094FA90);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "os_transaction INIT {name: com.apple.remindd.RDOperationQueue.handleIncompleteOperationQueueItems}", v11, 2u);
  }

  if (*(v1 + qword_10094FAE8) != (a1 & 1))
  {
    if (*(v1 + qword_10094FAE8))
    {
      v12 = os_transaction_create();
      v13 = *(v1 + qword_10094FAE0);
      *(v1 + qword_10094FAE0) = v12;
      swift_unknownObjectRelease();
      static os_signpost_type_t.begin.getter();
      if (qword_1009366E0 != -1)
      {
        swift_once();
      }

      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      (*(v4 + 8))(v7, v3);
    }

    else
    {
      static os_signpost_type_t.end.getter();
      if (qword_1009366E0 != -1)
      {
        swift_once();
      }

      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      (*(v4 + 8))(v7, v3);
      v14 = *(v1 + qword_10094FAE0);
      *(v1 + qword_10094FAE0) = 0;
      swift_unknownObjectRelease();
    }

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "os_transaction RELEASE {name: com.apple.remindd.RDOperationQueue.handleIncompleteOperationQueueItems}", v17, 2u);
    }
  }
}

uint64_t sub_1000F1330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 200) = a6;
  *(v7 + 208) = a7;
  *(v7 + 296) = a5;
  *(v7 + 192) = a4;
  v8 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v7 + 216) = v8;
  v9 = *(v8 - 8);
  *(v7 + 224) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 232) = swift_task_alloc();

  return _swift_task_switch(sub_1000F13F8, 0, 0);
}

uint64_t sub_1000F13F8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v2 + qword_10094FAB0);
  v4 = *(v0 + 296);
  v5 = *(v2 + qword_10094FAD0);
  v6 = *(v2 + qword_10094FAD0 + 8);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v3 newBackgroundContextWithAuthor:v7];
  *(v0 + 240) = v8;

  v9 = v4 == 0;
  if (v4)
  {
    v10 = 0xD00000000000002BLL;
  }

  else
  {
    v10 = 0xD000000000000023;
  }

  if (v9)
  {
    v11 = "atabaseController";
  }

  else
  {
    v11 = "OperationQueueItems";
  }

  v12 = v11 | 0x8000000000000000;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = v8;
  v14[4] = v1;
  v15 = type metadata accessor for RDSimpleExecutable();
  v16 = swift_allocObject();
  *(v0 + 248) = v16;
  v16[2] = v10;
  v16[3] = v12;
  v16[4] = &unk_100791BF0;
  v16[5] = v14;
  *(v0 + 40) = v15;
  *(v0 + 48) = &off_1008F5520;
  *(v0 + 16) = v16;
  *(v0 + 56) = &off_1008F5510;
  v17 = v8;

  v18 = swift_task_alloc();
  *(v0 + 256) = v18;
  *v18 = v0;
  v18[1] = sub_1000F15E4;
  v19 = *(v0 + 192);

  return sub_1000EEDF0(v0 + 16);
}

uint64_t sub_1000F15E4()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v6 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_1000F1784;
  }

  else
  {
    sub_10000607C((v2 + 16));
    v4 = sub_1000F1700;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000F1700()
{
  v1 = *(v0 + 248);

  v2 = *(v0 + 232);
  sub_1000F2B2C(*(v0 + 192), *(v0 + 296), *(v0 + 200), *(v0 + 208));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000F1784()
{
  v42 = v0;
  v1 = *(v0 + 264);
  sub_10000607C((v0 + 16));
  swift_getErrorValue();
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 80);
  if (Error.isREMError(withErrorCode:)())
  {
    v5 = *(v0 + 232);
    v6 = *(v0 + 240);
    v7 = *(v0 + 216);
    v8 = *(v0 + 224);
    v9 = swift_allocObject();
    *(v0 + 272) = v9;
    *(v9 + 16) = v6;
    (*(v8 + 104))(v5, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v7);
    v10 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
    v11 = v6;
    v12 = swift_task_alloc();
    *(v0 + 280) = v12;
    *v12 = v0;
    v12[1] = sub_1000F1B50;
    v13 = *(v0 + 232);
    v14 = *(v0 + 240);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 176, v13, sub_1000FCDD8, v9, &type metadata for Int);
  }

  else
  {
    if (qword_1009366D8 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 264);
    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_10094FA90);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 264);
    v21 = *(v0 + 248);
    if (v19)
    {
      v40 = *(v0 + 240);
      v22 = *(v0 + 208);
      v23 = *(v0 + 296);
      v24 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v24 = 136446722;
      *(v0 + 136) = v22;
      swift_getMetatypeMetadata();
      v25 = String.init<A>(describing:)();
      v27 = sub_10000668C(v25, v26, &v41);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2082;
      if (v23)
      {
        v28 = 1702195828;
      }

      else
      {
        v28 = 0x65736C6166;
      }

      if (v23)
      {
        v29 = 0xE400000000000000;
      }

      else
      {
        v29 = 0xE500000000000000;
      }

      v30 = sub_10000668C(v28, v29, &v41);

      *(v24 + 14) = v30;
      *(v24 + 22) = 2082;
      swift_getErrorValue();
      v32 = *(v0 + 88);
      v31 = *(v0 + 96);
      v33 = *(v0 + 104);
      v34 = Error.rem_errorDescription.getter();
      v36 = sub_10000668C(v34, v35, &v41);

      *(v24 + 24) = v36;
      _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s: Failed to handle incomplete operation queue items. {isOnLaunch: %{public}s, error: %{public}s}", v24, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v37 = *(v0 + 232);
    sub_1000F2B2C(*(v0 + 192), *(v0 + 296), *(v0 + 200), *(v0 + 208));

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_1000F1B50()
{
  v2 = *(*v1 + 280);
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 232);
  v5 = *(*v1 + 224);
  v6 = *(*v1 + 216);
  v9 = *v1;
  *(*v1 + 288) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_1000F1F44;
  }

  else
  {
    v7 = sub_1000F1CE4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000F1CE4()
{
  v24 = v0;
  v1 = *(v0 + 176);
  if (qword_1009366D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10094FA90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 264);
  v8 = *(v0 + 240);
  v7 = *(v0 + 248);
  if (v5)
  {
    v9 = *(v0 + 208);
    v22 = *(v0 + 264);
    v10 = *(v0 + 296);
    v21 = v1;
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v11 = 136446722;
    *(v0 + 152) = v9;
    swift_getMetatypeMetadata();
    v12 = String.init<A>(describing:)();
    v14 = sub_10000668C(v12, v13, &v23);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    if (v10)
    {
      v15 = 1702195828;
    }

    else
    {
      v15 = 0x65736C6166;
    }

    if (v10)
    {
      v16 = 0xE400000000000000;
    }

    else
    {
      v16 = 0xE500000000000000;
    }

    v17 = sub_10000668C(v15, v16, &v23);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2048;
    *(v11 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s: Blocked by babysitter. Batch completed all incomplete operation queue items. {isOnLaunch: %{public}s, affectedCount: %ld}", v11, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v18 = *(v0 + 232);
  sub_1000F2B2C(*(v0 + 192), *(v0 + 296), *(v0 + 200), *(v0 + 208));

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1000F1F44()
{
  v29 = v0;
  if (qword_1009366D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 288);
  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10094FA90);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 288);
  v7 = *(v0 + 248);
  if (v5)
  {
    v26 = *(v0 + 240);
    v27 = *(v0 + 264);
    v8 = *(v0 + 208);
    v9 = *(v0 + 296);
    v10 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v10 = 136446722;
    *(v0 + 144) = v8;
    swift_getMetatypeMetadata();
    v11 = String.init<A>(describing:)();
    v13 = sub_10000668C(v11, v12, &v28);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    if (v9)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v9)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    v16 = sub_10000668C(v14, v15, &v28);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2082;
    swift_getErrorValue();
    v18 = *(v0 + 112);
    v17 = *(v0 + 120);
    v19 = *(v0 + 128);
    v20 = Error.rem_errorDescription.getter();
    v22 = sub_10000668C(v20, v21, &v28);

    *(v10 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s: Failed to batch complete all incomplete operation queue items. {isOnLaunch: %{public}s, error: %{public}s}", v10, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v23 = *(v0 + 232);
  sub_1000F2B2C(*(v0 + 192), *(v0 + 296), *(v0 + 200), *(v0 + 208));

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1000F21FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 200) = a6;
  *(v7 + 208) = a7;
  *(v7 + 296) = a5;
  *(v7 + 192) = a4;
  v8 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v7 + 216) = v8;
  v9 = *(v8 - 8);
  *(v7 + 224) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 232) = swift_task_alloc();

  return _swift_task_switch(sub_1000F22C4, 0, 0);
}

uint64_t sub_1000F22C4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v2 + qword_10094FAB0);
  v4 = *(v0 + 296);
  v5 = *(v2 + qword_10094FAD0);
  v6 = *(v2 + qword_10094FAD0 + 8);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v3 newBackgroundContextWithAuthor:v7];
  *(v0 + 240) = v8;

  v9 = v4 == 0;
  if (v4)
  {
    v10 = 0xD00000000000002BLL;
  }

  else
  {
    v10 = 0xD000000000000023;
  }

  if (v9)
  {
    v11 = "atabaseController";
  }

  else
  {
    v11 = "OperationQueueItems";
  }

  v12 = v11 | 0x8000000000000000;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = v8;
  v14[4] = v1;
  v15 = type metadata accessor for RDSimpleExecutable();
  v16 = swift_allocObject();
  *(v0 + 248) = v16;
  v16[2] = v10;
  v16[3] = v12;
  v16[4] = &unk_100791B90;
  v16[5] = v14;
  *(v0 + 40) = v15;
  *(v0 + 48) = &off_1008F5520;
  *(v0 + 16) = v16;
  *(v0 + 56) = &off_1008F5510;
  v17 = v8;

  v18 = swift_task_alloc();
  *(v0 + 256) = v18;
  *v18 = v0;
  v18[1] = sub_1000F24B0;
  v19 = *(v0 + 192);

  return sub_1000EF3B4(v0 + 16);
}

uint64_t sub_1000F24B0()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v6 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_1000F25CC;
  }

  else
  {
    sub_10000607C((v2 + 16));
    v4 = sub_1000FDB04;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000F25CC()
{
  v42 = v0;
  v1 = *(v0 + 264);
  sub_10000607C((v0 + 16));
  swift_getErrorValue();
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 80);
  if (Error.isREMError(withErrorCode:)())
  {
    v5 = *(v0 + 232);
    v6 = *(v0 + 240);
    v7 = *(v0 + 216);
    v8 = *(v0 + 224);
    v9 = swift_allocObject();
    *(v0 + 272) = v9;
    *(v9 + 16) = v6;
    (*(v8 + 104))(v5, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v7);
    v10 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
    v11 = v6;
    v12 = swift_task_alloc();
    *(v0 + 280) = v12;
    *v12 = v0;
    v12[1] = sub_1000F2998;
    v13 = *(v0 + 232);
    v14 = *(v0 + 240);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 176, v13, sub_1000FC764, v9, &type metadata for Int);
  }

  else
  {
    if (qword_1009366D8 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 264);
    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_10094FA90);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 264);
    v21 = *(v0 + 248);
    if (v19)
    {
      v40 = *(v0 + 240);
      v22 = *(v0 + 208);
      v23 = *(v0 + 296);
      v24 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v24 = 136446722;
      *(v0 + 136) = v22;
      swift_getMetatypeMetadata();
      v25 = String.init<A>(describing:)();
      v27 = sub_10000668C(v25, v26, &v41);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2082;
      if (v23)
      {
        v28 = 1702195828;
      }

      else
      {
        v28 = 0x65736C6166;
      }

      if (v23)
      {
        v29 = 0xE400000000000000;
      }

      else
      {
        v29 = 0xE500000000000000;
      }

      v30 = sub_10000668C(v28, v29, &v41);

      *(v24 + 14) = v30;
      *(v24 + 22) = 2082;
      swift_getErrorValue();
      v32 = *(v0 + 88);
      v31 = *(v0 + 96);
      v33 = *(v0 + 104);
      v34 = Error.rem_errorDescription.getter();
      v36 = sub_10000668C(v34, v35, &v41);

      *(v24 + 24) = v36;
      _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s: Failed to handle incomplete operation queue items. {isOnLaunch: %{public}s, error: %{public}s}", v24, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v37 = *(v0 + 232);
    sub_1000F2B2C(*(v0 + 192), *(v0 + 296), *(v0 + 200), *(v0 + 208));

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_1000F2998()
{
  v2 = *(*v1 + 280);
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 232);
  v5 = *(*v1 + 224);
  v6 = *(*v1 + 216);
  v9 = *v1;
  *(*v1 + 288) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_1000FDB1C;
  }

  else
  {
    v7 = sub_1000FDB00;
  }

  return _swift_task_switch(v7, 0, 0);
}

void sub_1000F2B2C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + qword_10094FAE8);
  *(a1 + qword_10094FAE8) = 0;
  sub_1000F0FE8(v13);
  if (qword_1009366D8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_10094FA90);
  (*(v9 + 16))(v12, a3, v8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    v26[1] = a4;
    *v17 = 136446722;
    swift_getMetatypeMetadata();
    v18 = String.init<A>(describing:)();
    v20 = sub_10000668C(v18, v19, v26);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2082;
    if (a2)
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    if (a2)
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v22 = 0xE500000000000000;
    }

    v23 = sub_10000668C(v21, v22, v26);

    *(v17 + 14) = v23;
    *(v17 + 22) = 2048;
    Date.rem_elapsedInMilliseconds.getter();
    v25 = v24;
    (*(v9 + 8))(v12, v8);
    *(v17 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s: Finished handling operation queue items {isOnLaunch: %{public}s, elapsedSeconds: %f}", v17, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_1000F2DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000F2EBC, 0, 0);
}

uint64_t sub_1000F2EBC()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v3 = [objc_allocWithZone(REMStore) initWithDaemonController:*(Strong + qword_10094FAB8)];
    v0[14] = v3;
    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_1000F2FE8;
    v5 = v0[8];
    v6 = v0[9];

    return sub_1001741E4(v5, v3);
  }

  else
  {
    v8 = v0[12];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1000F2FE8(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_1000F329C;
  }

  else
  {

    *(v4 + 160) = a1 & 1;
    v7 = sub_1000F311C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000F311C()
{
  if (*(v0 + 160) == 1)
  {
    v2 = *(v0 + 88);
    v1 = *(v0 + 96);
    v3 = *(v0 + 80);
    v4 = *(v0 + 64);
    v5 = swift_allocObject();
    *(v0 + 136) = v5;
    *(v5 + 16) = v4;
    (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
    v6 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
    v7 = v4;
    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    *v8 = v0;
    v8[1] = sub_1000F330C;
    v9 = *(v0 + 96);
    v10 = *(v0 + 64);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 48, v9, sub_1000FCDFC, v5, &type metadata for Int);
  }

  else
  {

    v11 = *(v0 + 96);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1000F329C()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 128);
  v3 = *(v0 + 96);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000F330C()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 152) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_1000F365C;
  }

  else
  {
    v7 = sub_1000F34A0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000F34A0()
{
  v17 = v0;
  v1 = v0[6];
  if (qword_1009366D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10094FA90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  if (v5)
  {
    v7 = v0[9];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446466;
    v0[5] = v7;
    swift_getMetatypeMetadata();
    v10 = String.init<A>(describing:)();
    v12 = sub_10000668C(v10, v11, &v16);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s: Batch deleted completed operation queue items. {deletionCount: %ld}", v8, 0x16u);
    sub_10000607C(v9);
  }

  v13 = v0[12];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000F365C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 96);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000F36C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000F378C, 0, 0);
}

uint64_t sub_1000F378C()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v3 = [objc_allocWithZone(REMStore) initWithDaemonController:*(Strong + qword_10094FAB8)];
    v0[14] = v3;
    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_1000F38B8;
    v5 = v0[8];
    v6 = v0[9];

    return sub_100175A40(v5, v3);
  }

  else
  {
    v8 = v0[12];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1000F38B8(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_1000FDA40;
  }

  else
  {

    *(v4 + 160) = a1 & 1;
    v7 = sub_1000F39EC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000F39EC()
{
  if (*(v0 + 160) == 1)
  {
    v2 = *(v0 + 88);
    v1 = *(v0 + 96);
    v3 = *(v0 + 80);
    v4 = *(v0 + 64);
    v5 = swift_allocObject();
    *(v0 + 136) = v5;
    *(v5 + 16) = v4;
    (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
    v6 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
    v7 = v4;
    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    *v8 = v0;
    v8[1] = sub_1000F3B6C;
    v9 = *(v0 + 96);
    v10 = *(v0 + 64);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 48, v9, sub_1000FC9B8, v5, &type metadata for Int);
  }

  else
  {

    v11 = *(v0 + 96);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1000F3B6C()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 152) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_1000FDA8C;
  }

  else
  {
    v7 = sub_1000FDA50;
  }

  return _swift_task_switch(v7, 0, 0);
}

_WORD *sub_1000F3D00@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t sub_1000F3D24(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000F3D9C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000F3E1C@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

Swift::Int sub_1000F3E74()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000F3EBC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000F3F10(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_1009371E8, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000F3F7C(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_1009371E8, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000F3FE8(void *a1, uint64_t a2)
{
  v4 = sub_1000F4E04(&qword_1009371E8, type metadata accessor for CKError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000F409C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F4E04(&qword_1009371E8, type metadata accessor for CKError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000F4118()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000F4178(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_100937258, type metadata accessor for NLLanguage);
  v3 = sub_1000F4E04(&qword_100937260, type metadata accessor for NLLanguage);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000F4234(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_100937208, type metadata accessor for REMSmartListType);
  v3 = sub_1000F4E04(&qword_100937210, type metadata accessor for REMSmartListType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000F42F0(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_100936D08, type metadata accessor for ICCloudContextSyncReason);
  v3 = sub_1000F4E04(&qword_100936D10, type metadata accessor for ICCloudContextSyncReason);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000F43AC(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_100936D18, type metadata accessor for REMXPCSyncInterfaceSyncReason);
  v3 = sub_1000F4E04(&qword_100936D20, type metadata accessor for REMXPCSyncInterfaceSyncReason);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000F4468(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_100937228, type metadata accessor for NLTagScheme);
  v3 = sub_1000F4E04(&qword_100937230, type metadata accessor for NLTagScheme);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000F4524(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_100937218, type metadata accessor for NLTag);
  v3 = sub_1000F4E04(&qword_100937220, type metadata accessor for NLTag);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000F45E0(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_100936D28, type metadata accessor for URLResourceKey);
  v3 = sub_1000F4E04(&qword_100936D30, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000F469C(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_100937248, type metadata accessor for DocumentReadingOptionKey);
  v3 = sub_1000F4E04(&qword_100937250, type metadata accessor for DocumentReadingOptionKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000F4758(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_100937238, type metadata accessor for DocumentType);
  v3 = sub_1000F4E04(&qword_100937240, type metadata accessor for DocumentType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000F4814(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_1009371B0, type metadata accessor for CKError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000F4880(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_1009371B0, type metadata accessor for CKError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000F48EC(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_1009371E8, type metadata accessor for CKError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000F4958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F4E04(&qword_1009371E8, type metadata accessor for CKError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000F49DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_1000F4A24(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_1009371F8, type metadata accessor for FileAttributeKey);
  v3 = sub_1000F4E04(&qword_100937200, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000F4AE0()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_1000F4B1C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000F4B70()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_1000F4BE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_1000F4CA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000F4CC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1000F4E04(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000F508C()
{
  result = qword_100936E58;
  if (!qword_100936E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936E58);
  }

  return result;
}

uint64_t sub_1000F5104(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000F514C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000F5194(uint64_t result, uint64_t *a2)
{
  v4 = *a2;
  v2 = *(result + 48);
  if (v2)
  {
    v3 = *(result + 56);

    v2(&v4);

    return sub_10003E114(v2);
  }

  return result;
}

void sub_1000F524C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_1000ECF58(0xD00000000000001ALL, 0x80000001007EB590);

  objc_autoreleasePoolPop(v2);
}

id sub_1000F52D0@<X0>(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for REMCDOperationQueueItem();
  result = sub_10034C26C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_1000F5370(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_1000ECF58(0xD00000000000001ALL, 0x80000001007EB590);
  v3 = [objc_allocWithZone(REMStore) initWithDaemonController:*(a1 + qword_10094FAB8)];
  [v3 requestDownloadGroceryModelAssetsFromTrial];

  objc_autoreleasePoolPop(v2);
}

char *sub_1000F5404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RDAlarmProducerDataSource();
  v20[3] = v6;
  v20[4] = &off_1008F0840;
  v20[0] = a3;
  v7 = type metadata accessor for RDLocationAlarmProducer();
  v8 = objc_allocWithZone(v7);
  v9 = sub_10000C9DC(v20, v6);
  v10 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v19[4] = &off_1008F0840;
  v19[3] = v6;
  v19[0] = v14;
  *&v8[OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_delegate + 8] = &off_1008FDFD0;
  swift_unknownObjectUnownedInit();

  *&v8[OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_queue] = a1;
  v15 = &v8[OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_locationManager];
  *v15 = a2;
  *(v15 + 1) = &off_1008F52F0;
  sub_10000A87C(v19, &v8[OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_dataSource]);
  v18.receiver = v8;
  v18.super_class = v7;
  v16 = objc_msgSendSuper2(&v18, "init");
  sub_10000607C(v19);
  *(*&v16[OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_locationManager] + OBJC_IVAR____TtC7remindd17RDLocationManager_delegate + 8) = &off_1008F8410;
  swift_unknownObjectWeakAssign();
  sub_10000607C(v20);
  return v16;
}

id sub_1000F55EC(void *a1, void *a2, uint64_t a3, char *a4, void *a5, uint64_t a6, char *a7, char *a8)
{
  v431 = a7;
  v466 = a6;
  v475 = a4;
  v468 = a3;
  v459 = a1;
  v12 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v446 = v423 - v14;
  v447 = type metadata accessor for NSNotificationCenter.Publisher();
  v445 = *(v447 - 8);
  v15 = *(v445 + 64);
  __chkstk_darwin(v447);
  v444 = v423 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000F5104(&unk_100936ED0, &unk_100791AF0);
  v449 = *(v17 - 8);
  v450 = v17;
  v18 = *(v449 + 64);
  __chkstk_darwin(v17);
  v448 = v423 - v19;
  v20 = type metadata accessor for REMFeatureFlags();
  v439 = *(v20 - 8);
  v440 = v20;
  v21 = *(v439 + 64);
  __chkstk_darwin(v20);
  v438 = v423 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v473 = *(v23 - 1);
  v474 = v23;
  v24 = v473[8];
  __chkstk_darwin(v23);
  v467 = v423 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v436 = type metadata accessor for UnfairLock.Options();
  v26 = *(*(v436 - 8) + 64);
  __chkstk_darwin(v436);
  v437 = v423 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000F5104(&unk_10093CFD0, qword_10079AA70);
  v434 = *(v28 - 8);
  v435 = v28;
  v29 = *(v434 + 64);
  __chkstk_darwin(v28);
  v433 = v423 - v30;
  v463 = type metadata accessor for DispatchWorkItemFlags();
  v472 = *(v463 - 8);
  v31 = *(v472 + 64);
  __chkstk_darwin(v463);
  v462 = v423 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v464 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v460 = *(v464 - 1);
  v33 = v460[8];
  __chkstk_darwin(v464);
  v457 = v423 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v455 = type metadata accessor for OS_dispatch_queue.Attributes();
  v35 = *(*(v455 - 1) + 64);
  __chkstk_darwin(v455);
  v454 = (v423 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v461 = type metadata accessor for DispatchQoS();
  v471 = *(v461 - 8);
  v37 = *(v471 + 64);
  __chkstk_darwin(v461);
  v470 = v423 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v452 = type metadata accessor for DispatchQoS.QoSClass();
  v442 = *(v452 - 1);
  v39 = *(v442 + 64);
  __chkstk_darwin(v452);
  v41 = v423 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v441 = OBJC_IVAR____TtC7remindd8RDDaemon_autoCategorizationOperationQueue;
  *&a8[OBJC_IVAR____TtC7remindd8RDDaemon_autoCategorizationOperationQueue] = 0;
  v42 = &a8[OBJC_IVAR____TtC7remindd8RDDaemon_manualSortHintUpdater];
  v476 = a8;
  *v42 = 0u;
  *(v42 + 1) = 0u;
  v443 = v42;
  v428 = 0xD000000000000013;
  v465 = sub_1000EC6A0(0xD000000000000013, 0x80000001007EB040, a7, &qword_100937030, &qword_100791C18, &qword_100937038, &qword_100791C20);
  v451 = v43;
  v44 = type metadata accessor for RDCoreSuggestionsController();
  v45 = [objc_opt_self() serviceForReminders];
  swift_getObjectType();
  v46 = sub_1003E6C10(v45);
  v427 = OBJC_IVAR____TtC7remindd8RDDaemon_coreSuggestionController;
  *&a8[OBJC_IVAR____TtC7remindd8RDDaemon_coreSuggestionController] = v46;
  v488 = &off_1008F0550;
  *(&v487 + 1) = v44;
  *&v486 = v46;
  v453 = v46;
  v456 = type metadata accessor for RDXPCDaemon();
  v47 = objc_allocWithZone(v456);
  v48 = sub_10000C9DC(&v486, v44);
  v49 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v48);
  v51 = (v423 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v52 + 16))(v51);
  v53 = *v51;
  v495 = &off_1008F0550;
  v494 = v44;
  v493[0] = v53;
  swift_unknownObjectWeakInit();
  *&v47[OBJC_IVAR____TtC7remindd11RDXPCDaemon_storeController] = a2;
  v432 = type metadata accessor for RDXPCDebugPerformer();
  v54 = objc_allocWithZone(v432);
  *(v54 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_xpcDaemon + 8) = 0;
  swift_unknownObjectWeakInit();
  v55 = OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_q_storeControllerByContainerURL;
  v56 = objc_opt_self();
  v57 = a2;
  v58 = v475;
  v59 = a5;
  swift_retain_n();
  v430 = v57;
  v469 = v58;
  *&v458 = v59;

  v475 = v431;
  *(v54 + v55) = [v56 strongToWeakObjectsMapTable];
  v60 = OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_q_storeControllerNotificationCenterByContainerURL;
  *(v54 + v60) = [objc_opt_self() strongToStrongObjectsMapTable];
  v431 = OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_accessQueue;
  v61 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v429 = "Contact Interaction";
  v62 = v442;
  v63 = v452;
  (*(v442 + 104))(v41, enum case for DispatchQoS.QoSClass.utility(_:), v452);
  static OS_dispatch_queue.global(qos:)();
  (*(v62 + 8))(v41, v63);
  static DispatchQoS.unspecified.getter();
  *&v484[0] = _swiftEmptyArrayStorage;
  sub_1000F4E04(&qword_100936EE0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_10000CB48(&qword_100936EF0, &unk_10093FEE0, &qword_100791B00);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v460[13])(v457, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v464);
  v442 = v61;
  v64 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v65 = v430;
  *&v431[v54] = v64;
  *(v54 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_manualHashtagLabelUpdater) = 0;
  *(v54 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController) = v65;
  *(v54 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeContainerToken) = 0;
  v66 = (v54 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_notificationCenter);
  v67 = v469;
  *v66 = v469;
  v66[1] = &off_1008F5BC0;
  v68 = v54 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_locationManager;
  v69 = v458;
  *v68 = v458;
  v68[1] = &off_1008F52F0;
  v492.receiver = v54;
  v492.super_class = v432;
  *&v47[OBJC_IVAR____TtC7remindd11RDXPCDaemon_debugPerformer] = objc_msgSendSuper2(&v492, "init");
  type metadata accessor for RDXPCSyncInterfacePerformerFactory();
  swift_allocObject();
  v70 = v65;
  v71 = v466;

  v72 = v475;
  v73 = sub_1001C64D8(v70, v71, v72);

  *&v47[OBJC_IVAR____TtC7remindd11RDXPCDaemon_syncInterfacePerformerFactory] = v73;
  v74 = type metadata accessor for RDXPCIndexingPerformer();
  v75 = objc_allocWithZone(v74);
  *&v75[OBJC_IVAR____TtC7remindd22RDXPCIndexingPerformer_storeController] = v70;
  v491.receiver = v75;
  v491.super_class = v74;
  v76 = v70;
  *&v47[OBJC_IVAR____TtC7remindd11RDXPCDaemon_indexingPerformer] = objc_msgSendSuper2(&v491, "init");
  *&v47[OBJC_IVAR____TtC7remindd11RDXPCDaemon_dataAccessRequestsWriter] = v71;
  *&v47[OBJC_IVAR____TtC7remindd11RDXPCDaemon_contactInteractionWriter] = v465;
  sub_10000A87C(v493, &v47[OBJC_IVAR____TtC7remindd11RDXPCDaemon_coreSuggestionsHandler]);
  v490.receiver = v47;
  v490.super_class = v456;
  v77 = v76;

  v78 = objc_msgSendSuper2(&v490, "init");

  v79 = v69;
  v80 = v476;

  v432 = v72;

  sub_10000607C(v493);
  *(*&v78[OBJC_IVAR____TtC7remindd11RDXPCDaemon_debugPerformer] + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_xpcDaemon + 8) = &off_1008F03B0;
  swift_unknownObjectWeakAssign();
  sub_10000607C(&v486);
  v81 = (v80 + OBJC_IVAR____TtC7remindd8RDDaemon_xpcDaemon);
  *v81 = v78;
  v81[1] = &off_1008F03B0;
  v460 = v81;
  v82 = qword_100935D10;
  v83 = v78;
  if (v82 != -1)
  {
    swift_once();
  }

  v84 = qword_100974CA8;
  v85 = objc_allocWithZone(type metadata accessor for RDClientConnectionListener());
  v86 = sub_1005D1BD0(v83, v84, v85);
  v431 = OBJC_IVAR____TtC7remindd8RDDaemon_xpcClientConnectionListener;
  *(v80 + OBJC_IVAR____TtC7remindd8RDDaemon_xpcClientConnectionListener) = v86;
  if (qword_100935F68 != -1)
  {
    swift_once();
  }

  v475 = v77;
  v464 = v83;
  v87 = static RDSynchronizedKeyValueStore.default;
  v430 = OBJC_IVAR____TtC7remindd8RDDaemon_synchronizedKeyValueStores;
  *(v80 + OBJC_IVAR____TtC7remindd8RDDaemon_synchronizedKeyValueStores) = static RDSynchronizedKeyValueStore.default;
  v88 = qword_100935D38;

  if (v88 != -1)
  {
    swift_once();
  }

  v89 = qword_100974CD0;
  v488 = sub_1000FC41C;
  v489 = v87;
  *&v486 = _NSConcreteStackBlock;
  *(&v486 + 1) = 1107296256;
  *&v487 = sub_100019200;
  *(&v487 + 1) = &unk_1008E4D30;
  v90 = _Block_copy(&v486);

  v91 = v470;
  static DispatchQoS.unspecified.getter();
  v493[0] = _swiftEmptyArrayStorage;
  v92 = sub_1000F4E04(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  v93 = sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  v94 = sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  v96 = v462;
  v95 = v463;
  v456 = v93;
  v457 = v92;
  v453 = v94;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v452 = v89;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v90);
  v97 = *(v472 + 8);
  v472 += 8;
  v455 = v97;
  v97(v96, v95);
  v98 = *(v471 + 8);
  v471 += 8;
  v454 = v98;
  v98(v91, v461);

  type metadata accessor for RDDisabledAccountsEventHandler();
  v99 = swift_allocObject();
  v99[2] = 0;
  v99[3] = 0;
  v99[4] = &_swiftEmptySetSingleton;
  *(v80 + OBJC_IVAR____TtC7remindd8RDDaemon_disabledAccountsEventHandler) = v99;
  v100 = v475;
  v101 = &qword_100936000;
  if ([v475 supportsAlarmEngine])
  {
    v102 = swift_allocObject();
    v429 = v102;
    *(v102 + 16) = xmmword_100791350;
    *(v102 + 32) = 0x402E000000000000;
    v500[0] = sub_1000FC4D4;
    v500[1] = v102;
    v501 = xmmword_100791360;
    v502 = 1;
    type metadata accessor for RDStoreControllerNotificationCenter();
    swift_allocObject();
    v103 = v100;
    v104 = sub_1004417C4(0x676E456D72616C41, 0xEB00000000656E69, v103, v500);
    v426 = v104;

    v105 = v460;
    v106 = *v460;
    v107 = v460[1];
    v108 = *&v427[v476];
    v109 = v458;
    swift_unknownObjectRetain();

    v110 = v104;
    v111 = v469;
    v112 = sub_1000F9330(v459, v106, v107, v103, v110, v469, v109, v451);
    swift_unknownObjectRelease();
    v101 = &qword_100936000;

    *(v476 + OBJC_IVAR____TtC7remindd8RDDaemon_alarmEngine) = v112;
    v498[0] = 0x404E000000000000;
    memset(&v498[1], 0, 24);
    v499 = 0;
    swift_allocObject();
    v113 = v103;
    v80 = v476;
    v114 = v113;

    v115 = sub_1004417C4(0x676E457961646F54, 0xEB00000000656E69, v114, v498);

    v117 = *v105;
    v116 = v105[1];
    v118 = *&v430[v80];
    swift_unknownObjectRetain();

    v119 = sub_1000FA268(v459, v117, v116, v115, v111, v118);

    swift_unknownObjectRelease();
    v100 = v475;
  }

  else
  {

    if (qword_100936698 != -1)
    {
      swift_once();
    }

    v120 = type metadata accessor for Logger();
    sub_100006654(v120, qword_10094DFE0);
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&_mh_execute_header, v121, v122, "Alarm and today engines are disabled because store controller does not support them", v123, 2u);
    }

    v119 = 0;
    *(v80 + OBJC_IVAR____TtC7remindd8RDDaemon_alarmEngine) = 0;
  }

  *(v80 + OBJC_IVAR____TtC7remindd8RDDaemon_todayEngine) = v119;
  if ([v100 supportsTimelineEngine])
  {
    v124 = *v460;
    v125 = v459[2];
    swift_unknownObjectRetain();
    v126 = sub_100123D70(v125, v100);

    swift_unknownObjectRelease();
  }

  else
  {
    if (v101[211] != -1)
    {
      swift_once();
    }

    v127 = type metadata accessor for Logger();
    sub_100006654(v127, qword_10094DFE0);
    v128 = Logger.logObject.getter();
    v129 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      *v130 = 0;
      _os_log_impl(&_mh_execute_header, v128, v129, "Timeline engine is disabled because store controller does not support it.", v130, 2u);
    }

    v126 = 0;
  }

  *(v80 + OBJC_IVAR____TtC7remindd8RDDaemon_timelineEngine) = v126;
  p_class_meths = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
  if ([v100 supportsAssignmentNotificationEngine])
  {
    v496[0] = 0x403E000000000000;
    memset(&v496[1], 0, 24);
    v497 = 256;
    type metadata accessor for RDStoreControllerNotificationCenter();
    swift_allocObject();
    v132 = v100;
    v133 = sub_1004417C4(0xD000000000000015, 0x80000001007EB390, v132, v496);

    v134 = *v460;
    v135 = v460[1];
    v136 = qword_100935D30;
    swift_unknownObjectRetain();
    if (v136 != -1)
    {
      swift_once();
    }

    v137 = sub_1000FA9DC(v134, v135, v132, v133, v469, qword_100974CC8, 0);
    swift_unknownObjectRelease();

    v100 = v475;
  }

  else
  {
    if (v101[211] != -1)
    {
      swift_once();
    }

    v138 = type metadata accessor for Logger();
    sub_100006654(v138, qword_10094DFE0);
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      *v141 = 0;
      _os_log_impl(&_mh_execute_header, v139, v140, "Assignment notification engine is disabled because store controller does not support it", v141, 2u);
    }

    v137 = 0;
  }

  *(v80 + OBJC_IVAR____TtC7remindd8RDDaemon_assignmentNotificationEngine) = v137;
  if ([v100 supportsHashtagLabelUpdater])
  {
    if (qword_100935D30 != -1)
    {
      swift_once();
    }

    v142 = qword_100974CC8;
    v458 = *v460;
    v143 = qword_100935C00;
    v425 = v100;
    v430 = v142;
    v429 = v458;
    swift_unknownObjectRetain();
    if (v143 != -1)
    {
      swift_once();
    }

    v144 = v435;
    v145 = sub_100006654(v435, qword_100974C50);
    v146 = *(v434 + 16);
    v426 = (v434 + 16);
    v427 = v146;
    (v146)(v433, v145, v144);
    v147 = type metadata accessor for RDHashtagLabelUpdater(0);
    v148 = *(v147 + 48);
    v149 = *(v147 + 52);
    v150 = swift_allocObject();
    *(v150 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_delegate + 8) = 0;
    swift_unknownObjectWeakInit();
    *(v150 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_started) = 0;
    *(v150 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_cloudAccountsDidChangeCancellable) = 0;
    v424 = OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_highPrioritySubscriptionTransactionRegistrar;
    type metadata accessor for RDTransactionRegistrar();
    v151 = swift_allocObject();
    v151[4] = 0;
    v151[5] = 0;
    v151[2] = 0xD000000000000040;
    v151[3] = 0x80000001007EB230;
    *&v486 = _swiftEmptyArrayStorage;
    v423[1] = sub_1000F4E04(&qword_100936E60, &type metadata accessor for UnfairLock.Options);
    sub_1000F5104(&qword_100936E68, &unk_100791AB0);
    sub_10000CB48(&qword_100936E70, &qword_100936E68, &unk_100791AB0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v152 = type metadata accessor for UnfairLock();
    v153 = *(v152 + 48);
    v154 = *(v152 + 52);
    swift_allocObject();
    v151[6] = UnfairLock.init(options:)();
    *(v150 + v424) = v151;
    v155 = OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_lowPrioritySubscriptionTransactionRegistrar;
    v156 = swift_allocObject();
    v156[4] = 0;
    v156[5] = 0;
    v156[2] = 0xD00000000000003FLL;
    v156[3] = 0x80000001007EB280;
    *&v486 = _swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v157 = *(v152 + 48);
    v158 = *(v152 + 52);
    swift_allocObject();
    v156[6] = UnfairLock.init(options:)();
    *(v150 + v155) = v156;
    v159 = (v150 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_babysitterOperationRefreshFromLastConsumed);
    *v159 = 0xD000000000000017;
    v159[1] = 0x80000001007EB2C0;
    v160 = (v150 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_babysitterOperationRefreshFromLastConsumedOnLaunch);
    *v160 = 0xD00000000000001FLL;
    v160[1] = 0x80000001007EB2E0;
    v161 = (v150 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_analyticsCrashDetected);
    *v161 = 0xD000000000000035;
    v161[1] = 0x80000001007EB300;
    v162 = OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_babysitTarget;
    *(v150 + v162) = [objc_allocWithZone(type metadata accessor for RDHashtagLabelUpdater.BabysitTarget()) init];
    v163 = (v150 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_changeTrackingClientName);
    *v163 = 0xD000000000000027;
    v163[1] = 0x80000001007EB340;
    v164 = v425;
    v150[2] = v430;
    v150[3] = v164;
    v165 = type metadata accessor for RDDaemonController();
    v166 = objc_allocWithZone(v165);
    *&v166[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon] = v458;
    v167 = &v166[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
    *v167 = v428;
    v167[1] = 0x80000001007EB370;
    *(v167 + 38) = 0;
    v167[3] = 0;
    v167[4] = 0;
    v167[2] = 0;
    *&v166[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = 0;
    v477.receiver = v166;
    v477.super_class = v165;
    swift_unknownObjectRetain();
    v150[4] = objc_msgSendSuper2(&v477, "init");
    v168 = v433;
    v169 = v435;
    (v427)(v150 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_timeGroupingStrategy, v433, v435);
    *(v150 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_delegate + 8) = 0;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    (*(v434 + 8))(v168, v169);
    *(v150 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_hashtagInsertEventCancellables) = _swiftEmptyArrayStorage;
    v80 = v476;
    *(v476 + OBJC_IVAR____TtC7remindd8RDDaemon_hashtagLabelUpdater) = v150;
    v488 = sub_1000FC4CC;
    v489 = v150;
    *&v486 = _NSConcreteStackBlock;
    *(&v486 + 1) = 1107296256;
    *&v487 = sub_100019200;
    *(&v487 + 1) = &unk_1008E4DF8;
    v170 = _Block_copy(&v486);
    swift_retain_n();
    v171 = v470;
    static DispatchQoS.unspecified.getter();
    v493[0] = _swiftEmptyArrayStorage;
    v173 = v462;
    v172 = v463;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v170);

    v455(v173, v172);
    v454(v171, v461);

    v101 = &qword_100936000;
    v100 = v475;
    p_class_meths = (&OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm + 32);
  }

  else
  {
    if (v101[211] != -1)
    {
      swift_once();
    }

    v174 = type metadata accessor for Logger();
    sub_100006654(v174, qword_10094DFE0);
    v175 = Logger.logObject.getter();
    v176 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v175, v176))
    {
      v177 = swift_slowAlloc();
      *v177 = 0;
      _os_log_impl(&_mh_execute_header, v175, v176, "RDHashtagLabelUpdater is disabled because store controller does not support it", v177, 2u);
    }

    *(v80 + OBJC_IVAR____TtC7remindd8RDDaemon_hashtagLabelUpdater) = 0;
  }

  if ([v100 supportsStalePinnedListsEventHandler])
  {
    v178 = p_class_meths[422];
    v179 = v100;
    if (v178 != -1)
    {
      swift_once();
    }

    v180 = qword_100974CC8;
    v181 = v467;
    static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
    v182 = [objc_opt_self() defaultCenter];
    v183 = type metadata accessor for RDStalePinnedListsEventHandler();
    v184 = *(v183 + 48);
    v185 = *(v183 + 52);
    v186 = swift_allocObject();
    v186[3] = 0;
    swift_unknownObjectWeakInit();
    *(v186 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_cancellables) = &_swiftEmptySetSingleton;
    *(v186 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_osTransactionForHandlingEvent) = 0;
    *(v186 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_osTransactionForDebouncingEvent) = 0;
    *(v186 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_isHandlingEvent) = 0;
    *(v186 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_isDebouncingEvent) = 0;
    v186[4] = v179;
    v186[5] = v180;
    (v473[4])(v186 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_debounceInterval, v181, v474);
    *(v186 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_notificationCenter) = v182;
    *(v80 + OBJC_IVAR____TtC7remindd8RDDaemon_stalePinnedListsEventHandler) = v186;

    sub_1003CAAC8();

    v100 = v475;
  }

  else
  {
    if (v101[211] != -1)
    {
      swift_once();
    }

    v187 = type metadata accessor for Logger();
    sub_100006654(v187, qword_10094DFE0);
    v188 = Logger.logObject.getter();
    v189 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v188, v189))
    {
      v190 = swift_slowAlloc();
      *v190 = 0;
      _os_log_impl(&_mh_execute_header, v188, v189, "RDStalePinnedListsEventHandler is disabled because store controller does not support it", v190, 2u);
    }

    *(v80 + OBJC_IVAR____TtC7remindd8RDDaemon_stalePinnedListsEventHandler) = 0;
  }

  p_attr = &stru_100923FF8.attr;
  if ([v100 supportsTemplateOperation])
  {
    v192 = type metadata accessor for RDPublicCloudDatabaseController();
    v193 = swift_allocObject();
    type metadata accessor for RDTransactionRegistrar();
    v194 = v100;
    v195 = swift_allocObject();
    v195[4] = 0;
    v195[5] = 0;
    v195[2] = 0xD000000000000031;
    v195[3] = 0x80000001007EB130;
    *&v486 = _swiftEmptyArrayStorage;
    sub_1000F4E04(&qword_100936E60, &type metadata accessor for UnfairLock.Options);
    sub_1000F5104(&qword_100936E68, &unk_100791AB0);
    sub_10000CB48(&qword_100936E70, &qword_100936E68, &unk_100791AB0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v196 = type metadata accessor for UnfairLock();
    v197 = *(v196 + 48);
    v198 = *(v196 + 52);
    swift_allocObject();
    v195[6] = UnfairLock.init(options:)();
    v193[4] = v195;
    v193[5] = 0;
    v193[2] = sub_1005D0DE0;
    v193[3] = 0;
    v199 = p_class_meths[422];
    v200 = v194;
    *&v458 = v464;
    if (v199 != -1)
    {
      swift_once();
    }

    v201 = v476;
    v202 = *(*&v431[v476] + OBJC_IVAR____TtC7remindd26RDClientConnectionListener_clientConnectionDidClosePublisher);
    v203 = qword_100974CC8;
    v488 = &off_1008F82C8;
    *(&v487 + 1) = v192;
    *&v486 = v193;
    type metadata accessor for RDTemplateOperationQueue();
    v204 = swift_allocObject();
    *(v204 + 64) = 0;
    swift_unknownObjectWeakInit();
    *(v204 + 104) = &_swiftEmptySetSingleton;
    *(v204 + 112) = 0;
    *(v204 + 120) = 0;
    *(v204 + 128) = 0xD000000000000023;
    *(v204 + 136) = 0x80000001007EB170;
    *(v204 + 144) = 0xD00000000000002BLL;
    *(v204 + 152) = 0x80000001007EB1A0;
    *(v204 + 160) = 0xD000000000000038;
    *(v204 + 168) = 0x80000001007EB1D0;
    v205 = objc_allocWithZone(type metadata accessor for RDTemplateOperationQueue.BabysitTarget());
    v206 = v203;

    *(v204 + 176) = [v205 init];
    *(v204 + 72) = v200;
    v207 = type metadata accessor for RDDaemonController();
    v208 = objc_allocWithZone(v207);
    v209 = &v208[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
    *v209 = v458;
    *(v209 + 1) = &off_1008F03B0;
    v210 = &v208[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
    *v210 = 0xD000000000000016;
    *(v210 + 1) = 0x80000001007EB210;
    *(v210 + 38) = 0;
    *(v210 + 3) = 0;
    *(v210 + 4) = 0;
    *(v210 + 2) = 0;
    *&v208[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = 0;
    v478.receiver = v208;
    v478.super_class = v207;
    *(v204 + 80) = objc_msgSendSuper2(&v478, "init");
    *(v204 + 88) = v206;
    sub_100054B6C(&v486, v204 + 16);
    *(v204 + 96) = v202;
    *(v201 + OBJC_IVAR____TtC7remindd8RDDaemon_templateOperationQueue) = v204;

    sub_1005871D0();

    v212 = v473;
    v211 = v474;
    v101 = &qword_100936000;
    v100 = v475;
    p_attr = (&stru_100923FF8 + 8);
  }

  else
  {
    if (v101[211] != -1)
    {
      swift_once();
    }

    v213 = type metadata accessor for Logger();
    sub_100006654(v213, qword_10094DFE0);
    v214 = Logger.logObject.getter();
    v215 = static os_log_type_t.default.getter();
    v216 = os_log_type_enabled(v214, v215);
    v212 = v473;
    v211 = v474;
    if (v216)
    {
      v217 = swift_slowAlloc();
      *v217 = 0;
      _os_log_impl(&_mh_execute_header, v214, v215, "RDTemplateOperationQueue is disabled because store controller does not support it", v217, 2u);
    }

    v201 = v476;
    *(v476 + OBJC_IVAR____TtC7remindd8RDDaemon_templateOperationQueue) = 0;
  }

  if ([v100 p_attr[461]])
  {
    v218 = qword_100935D30;
    v219 = v100;
    if (v218 != -1)
    {
      swift_once();
    }

    v220 = qword_100974CC8;
    v221 = v467;
    static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
    v222 = [objc_opt_self() defaultCenter];
    v223 = type metadata accessor for RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler();
    v224 = *(v223 + 48);
    v225 = *(v223 + 52);
    v226 = swift_allocObject();
    v226[3] = 0;
    swift_unknownObjectWeakInit();
    *(v226 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_cancellables) = &_swiftEmptySetSingleton;
    *(v226 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_osTransactionForHandlingEvent) = 0;
    *(v226 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_osTransactionForDebouncingEvent) = 0;
    *(v226 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_isHandlingEvent) = 0;
    *(v226 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_isDebouncingEvent) = 0;
    v226[4] = v219;
    v226[5] = v220;
    (v212[4])(v226 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_debounceInterval, v221, v211);
    *(v226 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_notificationCenter) = v222;
    *(v201 + OBJC_IVAR____TtC7remindd8RDDaemon_staleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler) = v226;

    sub_1003D03E0();

    v101 = &qword_100936000;
    v100 = v475;
    v227 = (&OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm + 32);
  }

  else
  {
    if (v101[211] != -1)
    {
      swift_once();
    }

    v228 = type metadata accessor for Logger();
    sub_100006654(v228, qword_10094DFE0);
    v229 = Logger.logObject.getter();
    v230 = static os_log_type_t.default.getter();
    v227 = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
    if (os_log_type_enabled(v229, v230))
    {
      v231 = swift_slowAlloc();
      *v231 = 0;
      _os_log_impl(&_mh_execute_header, v229, v230, "RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler is disabled because store controller does not support it", v231, 2u);
    }

    *(v201 + OBJC_IVAR____TtC7remindd8RDDaemon_staleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler) = 0;
  }

  if ([v100 supportsGroceryOperation])
  {
    v232 = v227[422];
    v233 = v100;
    v234 = v464;
    if (v232 != -1)
    {
      swift_once();
    }

    v235 = qword_100974CC8;
    v236 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v238 = v237;
    v239 = sub_1000F5104(&unk_100939E10, &qword_1007970D0);
    v240 = objc_allocWithZone(v239);
    *&v240[qword_10094FAD8] = &_swiftEmptySetSingleton;
    *&v240[qword_10094FAE0] = 0;
    v240[qword_10094FAE8] = 0;
    *&v240[qword_10094FAB0] = v233;
    *&v240[qword_10094FAC0] = v235;
    v241 = &v240[qword_10094FAC8];
    *v241 = 0xD000000000000017;
    v241[1] = 0x80000001007EB110;
    v242 = &v240[qword_10094FAD0];
    *v242 = v236;
    v242[1] = v238;
    v243 = type metadata accessor for RDDaemonController();
    v244 = objc_allocWithZone(v243);
    v245 = &v244[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
    *v245 = v234;
    *(v245 + 1) = &off_1008F03B0;
    v246 = &v244[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
    *v246 = 0xD000000000000017;
    *(v246 + 1) = 0x80000001007EB110;
    *(v246 + 38) = 0;
    *(v246 + 3) = 0;
    *(v246 + 4) = 0;
    *(v246 + 2) = 0;
    *&v244[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = 0;
    v480.receiver = v244;
    v480.super_class = v243;
    v247 = v233;
    v248 = v234;
    v249 = v235;
    *&v240[qword_10094FAB8] = objc_msgSendSuper2(&v480, "init");
    v479.receiver = v240;
    v479.super_class = v239;
    v250 = objc_msgSendSuper2(&v479, "init");

    v201 = v476;
    *(v476 + OBJC_IVAR____TtC7remindd8RDDaemon_groceryOperationQueue) = v250;
    v251 = v250;
    sub_1000EF8AC(&unk_1008E4FC0, sub_1000FC578, &unk_1008E4FD8);

    v101 = &qword_100936000;
    v100 = v475;
  }

  else
  {
    if (v101[211] != -1)
    {
      swift_once();
    }

    v252 = type metadata accessor for Logger();
    sub_100006654(v252, qword_10094DFE0);
    v253 = Logger.logObject.getter();
    v254 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v253, v254))
    {
      v255 = swift_slowAlloc();
      *v255 = 0;
      _os_log_impl(&_mh_execute_header, v253, v254, "RDGroceryOperationQueue is disabled because store controller does not support it", v255, 2u);
    }

    *(v201 + OBJC_IVAR____TtC7remindd8RDDaemon_groceryOperationQueue) = 0;
  }

  v257 = v438;
  v256 = v439;
  v258 = v440;
  (*(v439 + 104))(v438, enum case for REMFeatureFlags.autoCategorize(_:), v440);
  v259 = REMFeatureFlags.isEnabled.getter();
  (*(v256 + 8))(v257, v258);
  v260 = v468;
  if ((v259 & 1) == 0 || ![v100 supportsAutoCategorizationOperation])
  {
    if (v101[211] != -1)
    {
      swift_once();
    }

    v284 = type metadata accessor for Logger();
    sub_100006654(v284, qword_10094DFE0);
    v285 = Logger.logObject.getter();
    v286 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v285, v286))
    {
      v287 = swift_slowAlloc();
      *v287 = 0;
      _os_log_impl(&_mh_execute_header, v285, v286, "RDAutoCategorizationOperationQueue is disabled because store controller does not support it", v287, 2u);
    }

    v283 = *&v441[v201];
    *&v441[v201] = 0;
    goto LABEL_87;
  }

  v261 = qword_100935D30;
  v262 = v100;
  v263 = v464;
  if (v261 != -1)
  {
    goto LABEL_140;
  }

  while (1)
  {
    v264 = qword_100974CC8;
    v265 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v267 = v266;
    v268 = sub_1000F5104(&unk_100936F40, &unk_100791B30);
    v269 = objc_allocWithZone(v268);
    *&v269[qword_10094FAD8] = &_swiftEmptySetSingleton;
    *&v269[qword_10094FAE0] = 0;
    v269[qword_10094FAE8] = 0;
    *&v269[qword_10094FAB0] = v262;
    *&v269[qword_10094FAC0] = v264;
    v270 = &v269[qword_10094FAC8];
    *v270 = 0xD000000000000022;
    v270[1] = 0x80000001007EB0E0;
    v271 = &v269[qword_10094FAD0];
    *v271 = v265;
    v271[1] = v267;
    v272 = type metadata accessor for RDDaemonController();
    v273 = objc_allocWithZone(v272);
    v274 = &v273[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
    *v274 = v263;
    *(v274 + 1) = &off_1008F03B0;
    v275 = &v273[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
    *v275 = 0xD000000000000022;
    *(v275 + 1) = 0x80000001007EB0E0;
    *(v275 + 38) = 0;
    *(v275 + 3) = 0;
    *(v275 + 4) = 0;
    *(v275 + 2) = 0;
    *&v273[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = 0;
    v482.receiver = v273;
    v482.super_class = v272;
    v276 = v262;
    v277 = v263;
    v278 = v264;
    *&v269[qword_10094FAB8] = objc_msgSendSuper2(&v482, "init");
    v481.receiver = v269;
    v481.super_class = v268;
    v279 = objc_msgSendSuper2(&v481, "init");

    v201 = v476;
    v280 = v441;
    v281 = *&v441[v476];
    *&v441[v476] = v279;

    v282 = *&v280[v201];
    v260 = v468;
    v101 = &qword_100936000;
    v100 = v475;
    if (v282)
    {
      v283 = v282;
      sub_1000EF8AC(&unk_1008E50D8, sub_1000FC9E0, &unk_1008E50F0);
LABEL_87:
    }

    if ([v100 supportsApplicationShortcuts])
    {
      type metadata accessor for RDApplicationShortcutAssembly();
      v288 = *v460;
      v289 = v460[1];
      v290 = swift_unknownObjectRetain();
      sub_10013AFCC(v290, v289, v260, &v486);
      swift_unknownObjectRelease();
      v291 = v201 + OBJC_IVAR____TtC7remindd8RDDaemon_applicationShortcutEngine;
      v292 = v487;
      *v291 = v486;
      *(v291 + 16) = v292;
      *(v291 + 32) = v488;
    }

    else
    {
      if (v101[211] != -1)
      {
        swift_once();
      }

      v293 = type metadata accessor for Logger();
      sub_100006654(v293, qword_10094DFE0);
      v294 = Logger.logObject.getter();
      v295 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v294, v295))
      {
        v296 = swift_slowAlloc();
        *v296 = 0;
        _os_log_impl(&_mh_execute_header, v294, v295, "Application shortcut engine is disabled because store controller does not support application shortcuts", v296, 2u);
      }

      v297 = v201 + OBJC_IVAR____TtC7remindd8RDDaemon_applicationShortcutEngine;
      *(v297 + 32) = 0;
      *v297 = 0u;
      *(v297 + 16) = 0u;
    }

    v298 = v475;
    if ([v475 supportsSuggestedAttributes])
    {
      v299 = type metadata accessor for RDDaemonController();
      v300 = objc_allocWithZone(v299);
      v301 = &v300[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
      v302 = v464;
      *v301 = v464;
      *(v301 + 1) = &off_1008F03B0;
      v303 = &v300[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
      *v303 = 0xD00000000000001ELL;
      *(v303 + 1) = 0x80000001007EB0C0;
      *(v303 + 38) = 0;
      *(v303 + 3) = 0;
      *(v303 + 4) = 0;
      *(v303 + 2) = 0;
      *&v300[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = 0;
      v483.receiver = v300;
      v483.super_class = v299;
      v304 = v302;
      v305 = objc_msgSendSuper2(&v483, "init");
      v306 = [objc_allocWithZone(REMStore) initWithDaemonController:v305];
      v307 = objc_opt_self();
      v308 = v452;

      v309 = [v307 daemonUserDefaults];
      v310 = [objc_opt_self() sharedConfiguration];

      v311 = sub_1000060C8(0, &qword_100936F28, off_1008D4108);
      v488 = &off_1008FCFA0;
      *(&v487 + 1) = v311;
      *&v486 = v310;
      v312 = type metadata accessor for RDSuggestedAttributesAutoTrainer();
      v313 = *(v312 + 48);
      v314 = *(v312 + 52);
      v315 = swift_allocObject();
      v316 = OBJC_IVAR____TtC7remindd32RDSuggestedAttributesAutoTrainer_storeControllerObserverToken;
      v317 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
      (*(*(v317 - 8) + 56))(&v315[v316], 1, 1, v317);
      *&v315[OBJC_IVAR____TtC7remindd32RDSuggestedAttributesAutoTrainer_xpcActivity] = 0;
      *(v315 + 2) = v308;
      *(v315 + 3) = v260;
      *(v315 + 4) = v306;
      *(v315 + 5) = v309;
      v298 = v475;
      *(v315 + 6) = &off_1008FCF68;
      sub_100054B6C(&v486, (v315 + 56));
      v315[OBJC_IVAR____TtC7remindd32RDSuggestedAttributesAutoTrainer_started] = 0;
      v318 = v467;
    }

    else
    {
      if (v101[211] != -1)
      {
        swift_once();
      }

      v319 = type metadata accessor for Logger();
      sub_100006654(v319, qword_10094DFE0);
      v320 = Logger.logObject.getter();
      v321 = static os_log_type_t.default.getter();
      v322 = os_log_type_enabled(v320, v321);
      v318 = v467;
      if (v322)
      {
        v323 = swift_slowAlloc();
        *v323 = 0;
        _os_log_impl(&_mh_execute_header, v320, v321, "Suggested attributes disabled because not supported by store controller", v323, 2u);
      }

      v315 = 0;
    }

    *(v201 + OBJC_IVAR____TtC7remindd8RDDaemon_suggestedAttributesAutoTrainer) = v315;
    if ([v298 supportsWidgetRefresh])
    {
      if (qword_100935D30 != -1)
      {
        swift_once();
      }

      v324 = qword_100974CC8;
      refreshed = type metadata accessor for RDWidgetRefreshEngine();
      v326 = *(refreshed + 48);
      v327 = *(refreshed + 52);
      swift_allocObject();

      v328 = sub_1003CD694(v324, v260);
    }

    else
    {
      if (v101[211] != -1)
      {
        swift_once();
      }

      v329 = type metadata accessor for Logger();
      sub_100006654(v329, qword_10094DFE0);
      v330 = Logger.logObject.getter();
      v331 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v330, v331))
      {
        v332 = swift_slowAlloc();
        *v332 = 0;
        _os_log_impl(&_mh_execute_header, v330, v331, "Widget refresh disabled because not supported by store controller", v332, 2u);
      }

      v328 = 0;
    }

    *(v201 + OBJC_IVAR____TtC7remindd8RDDaemon_widgetRefresh) = v328;
    v333 = v298;

    static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
    v441 = objc_opt_self();
    v334 = [v441 defaultCenter];
    v335 = type metadata accessor for RDManualSortHintUpdater();
    v336 = *(v335 + 48);
    v337 = *(v335 + 52);
    v338 = v318;
    v339 = swift_allocObject();
    *(v339 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_accountsAndRemindersChangesSubscription) = 0;
    *(v339 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_manualSortHintChangesSubscription) = 0;
    v340 = (v339 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_clientIdentity);
    *&v486 = v335;
    sub_1000F5104(&qword_100936EF8, &qword_100791B08);
    *v340 = String.init<A>(reflecting:)();
    v340[1] = v341;
    v340[3] = 0;
    v340[4] = 0;
    v340[2] = 0;
    *(v340 + 38) = 0;
    v339[2] = v333;
    v339[3] = v260;
    v342 = v452;
    v339[4] = v452;
    (v473[2])(v339 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_debounceInterval, v338, v474);
    *(v339 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_notificationCenter) = v334;
    v343 = qword_100936298;
    v475 = v333;
    v344 = v342;

    v345 = v334;
    if (v343 != -1)
    {
      swift_once();
    }

    v346 = v444;
    v460 = v345;
    NSNotificationCenter.publisher(for:object:)();
    *&v486 = v344;
    v347 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v348 = v446;
    (*(*(v347 - 8) + 56))(v446, 1, 1, v347);
    sub_1000F4E04(&qword_100936F00, &type metadata accessor for NSNotificationCenter.Publisher);
    sub_100006CA4();
    v349 = v447;
    v350 = v448;
    Publisher.receive<A>(on:options:)();
    sub_1000050A4(v348, &qword_100939980, &unk_10079ADA0);
    (*(v445 + 8))(v346, v349);
    swift_allocObject();
    swift_weakInit();
    sub_10000CB48(&qword_100936F10, &unk_100936ED0, &unk_100791AF0);

    v351 = v450;
    v352 = Publisher<>.sink(receiveValue:)();

    (*(v449 + 8))(v350, v351);
    v353 = *(v339 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_manualSortHintChangesSubscription);
    *(v339 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_manualSortHintChangesSubscription) = v352;

    v354 = swift_allocObject();
    swift_weakInit();

    v488 = sub_1000FC42C;
    v489 = v354;
    *&v486 = _NSConcreteStackBlock;
    *(&v486 + 1) = 1107296256;
    *&v487 = sub_100019200;
    *(&v487 + 1) = &unk_1008E4D80;
    v355 = _Block_copy(&v486);

    v356 = v470;
    static DispatchQoS.unspecified.getter();
    v493[0] = _swiftEmptyArrayStorage;
    v358 = v462;
    v357 = v463;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    *&v458 = v344;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v355);
    v359 = v475;

    v455(v358, v357);
    v454(v356, v461);
    (v473[1])(v467, v474);

    *(&v487 + 1) = v335;
    *&v486 = v339;
    v360 = v443;
    swift_beginAccess();
    sub_1000FC434(&v486, v360);
    swift_endAccess();
    v361 = [v359 cloudContext];
    v362 = v476;
    if (!v361)
    {
      break;
    }

    v262 = v361;
    if (![v359 supportsCloudSchemaCatchUpSyncBackgroundScheduling])
    {

      break;
    }

    v363 = [v262 processingQueue];
    type metadata accessor for RDICCloudSchemaCatchUpSyncXPCActivityFactory();
    v364 = swift_allocObject();
    *(v364 + 16) = v359;
    v365 = v359;
    v366 = [v262 icUserDefaults];
    v367 = [v366 cloudSchemaCatchUpSyncSchedulingStateStorage];

    v263 = sub_1000F5104(&qword_100936F38, &qword_100791B28);
    v368 = swift_allocObject();
    v368[3] = 0;
    v368[7] = 0;
    swift_unknownObjectWeakInit();
    v368[2] = v363;
    v368[4] = v364;
    v368[5] = v367;
    v368[7] = &off_1008F8500;
    swift_unknownObjectWeakAssign();
    v368[8] = 0x4122750000000000;
    [v262 setCloudSchemaCatchUpSyncController:v368];
    v369 = v368[2];
    v370 = swift_allocObject();
    *(v370 + 16) = sub_1000FC4A4;
    *(v370 + 24) = v368;
    v488 = sub_1000FDA90;
    v489 = v370;
    *&v486 = _NSConcreteStackBlock;
    *(&v486 + 1) = 1107296256;
    *&v487 = sub_10000F160;
    *(&v487 + 1) = &unk_1008E4DD0;
    v371 = _Block_copy(&v486);

    dispatch_sync(v369, v371);
    _Block_release(v371);
    LOBYTE(v369) = swift_isEscapingClosureAtFileLocation();

    if ((v369 & 1) == 0)
    {

      v372 = v476 + OBJC_IVAR____TtC7remindd8RDDaemon_cloudSchemaCatchUpSyncController;
      *v372 = v368;
      v372[3] = v263;
      v372[4] = &off_1008F4778;
      goto LABEL_119;
    }

    __break(1u);
LABEL_140:
    swift_once();
  }

  v373 = v362 + OBJC_IVAR____TtC7remindd8RDDaemon_cloudSchemaCatchUpSyncController;
  *(v373 + 32) = 0;
  *v373 = 0u;
  *(v373 + 16) = 0u;
LABEL_119:
  v374 = objc_opt_self();
  v375 = [v374 sharedConfiguration];
  if (qword_100935D30 != -1)
  {
    swift_once();
  }

  v376 = qword_100974CC8;
  type metadata accessor for RDICCloudConfigurationUpdaterXPCActivityFactory();
  v377 = swift_allocObject();
  v378 = sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v380 = v376;
  v381 = v375;
  v382 = [ObjCClassFromMetadata daemonUserDefaults];
  v383 = sub_1000F5104(&qword_100936F20, &qword_100791B18);
  v384 = swift_allocObject();
  v473 = v380;
  v474 = v381;
  v384[2] = v381;
  v384[3] = v380;
  v384[4] = v382;
  v384[5] = &off_1008F80F8;
  v384[6] = 0;
  v384[7] = v377;
  v385 = v475;
  v386 = v476 + OBJC_IVAR____TtC7remindd8RDDaemon_cloudConfigurationUpdater;
  *v386 = v384;
  v386[3] = v383;
  v386[4] = &off_1008F8218;
  v387 = [v385 cloudContext];
  if (v387)
  {
    v388 = v387;
    v389 = v385;
    v390 = v458;
    v391 = v458;
    v392 = [v441 defaultCenter];
    v393 = [v374 sharedConfiguration];
    v394 = sub_1000060C8(0, &qword_100936F28, off_1008D4108);
    v488 = &off_1008EC9F0;
    *(&v487 + 1) = v394;
    *&v486 = v393;
    v395 = [ObjCClassFromMetadata daemonUserDefaults];
    v495 = &off_1008ECA10;
    v494 = v378;
    v493[0] = v395;
    v396 = type metadata accessor for RDICCloudExtraneousAlarmsCollector();
    v397 = swift_allocObject();
    *(v397 + 40) = 0;
    swift_unknownObjectWeakInit();
    *(v397 + 144) = 0;
    swift_unknownObjectWeakInit();
    *(v397 + 152) = 0;
    *(v397 + 160) = 0;
    *(v397 + 168) = 0xD000000000000022;
    *(v397 + 176) = 0x80000001007EB090;
    *(v397 + 192) = 0;
    *(v397 + 200) = 0;
    *(v397 + 184) = 0;
    *(v397 + 206) = 0;
    *&v484[0] = v396;
    sub_1000F5104(&qword_100936F30, &qword_100791B20);
    *(v397 + 216) = String.init<A>(reflecting:)();
    *(v397 + 224) = v398;
    *(v397 + 272) = 0u;
    *(v397 + 288) = 0u;
    *(v397 + 304) = 0;
    *(v397 + 16) = v389;
    *(v397 + 24) = v391;
    *(v397 + 40) = &off_1008F8510;
    swift_unknownObjectWeakAssign();
    *(v397 + 128) = v392;
    sub_10000A87C(&v486, v397 + 48);
    sub_10000A87C(v493, v397 + 88);
    sub_10000A87C(v493, v484);
    v399 = type metadata accessor for RDICCloudExtraneousAlarmsCollector.RDICCloudExtraneousAlarmsCollectorExecutionDateStorage();
    v400 = swift_allocObject();
    sub_100054B6C(v484, v400 + 16);
    *(v397 + 256) = v399;
    *(v397 + 264) = &off_1008ECA48;
    *(v397 + 232) = v400;
    v385 = v475;

    sub_10000607C(v493);
    sub_10000607C(&v486);
    *(v397 + 144) = 0;
    swift_unknownObjectWeakAssign();
    v401 = &qword_100936000;
  }

  else
  {
    v397 = 0;
    v401 = &qword_100936000;
    v390 = v458;
  }

  v402 = v476;
  *(v476 + OBJC_IVAR____TtC7remindd8RDDaemon_extraneousAlarmsCollector) = v397;
  v403 = v390;
  v404 = v473;
  sub_10023DA1C(v403, v473, v385, &v486);
  v405 = &v402[OBJC_IVAR____TtC7remindd8RDDaemon_housekeepingActivityScheduler];
  v406 = v487;
  *v405 = v486;
  *(v405 + 1) = v406;
  *(v405 + 4) = v488;
  if ([v385 supportsSyncActivityNotificationEngine])
  {
    v407 = [ObjCClassFromMetadata daemonUserDefaults];
    LOBYTE(v486) = 1;
    *(&v486 + 1) = 5;
    LOBYTE(v487) = 1;
    *(&v487 + 1) = 30;
    LOBYTE(v488) = 0;
    v408 = v407;
    v409 = sub_1000FB4B8(v404, v385, v469, v408, &v486);
  }

  else
  {
    if (v401[211] != -1)
    {
      swift_once();
    }

    v410 = type metadata accessor for Logger();
    sub_100006654(v410, qword_10094DFE0);
    v411 = Logger.logObject.getter();
    v412 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v411, v412))
    {
      v413 = swift_slowAlloc();
      *v413 = 0;
      _os_log_impl(&_mh_execute_header, v411, v412, "RDSyncActivityNotificationEngine is disabled because sharedListNotifications feature flag is off", v413, 2u);
      v385 = v475;
    }

    v409 = 0;
  }

  *&v402[OBJC_IVAR____TtC7remindd8RDDaemon_syncActivityNotificationEngine] = v409;
  if ([v385 supportsSharedInlineTagAutoConvertEngine])
  {
    v414 = sub_10034BB78(v385, v404);
  }

  else
  {
    if (v401[211] != -1)
    {
      swift_once();
    }

    v415 = type metadata accessor for Logger();
    sub_100006654(v415, qword_10094DFE0);
    v416 = Logger.logObject.getter();
    v417 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v416, v417))
    {
      v418 = swift_slowAlloc();
      *v418 = 0;
      _os_log_impl(&_mh_execute_header, v416, v417, "RDSharedInlineTagAutoConvertEngineAssembly is disabled because supportsSharedInlineTagAutoConvertEngine feature flag is off", v418, 2u);
      v385 = v475;
    }

    v414 = 0;
  }

  *&v402[OBJC_IVAR____TtC7remindd8RDDaemon_sharedInlineTagAutoConvertEngine] = v414;
  v419 = type metadata accessor for RDDaemon();
  v485.receiver = v402;
  v485.super_class = v419;
  v420 = objc_msgSendSuper2(&v485, "init");

  v421 = v464;
  swift_unknownObjectWeakAssign();

  return v420;
}

char *sub_1000F9330(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char *a6, char *a7, id *a8)
{
  v131 = a7;
  v133 = a8;
  v132 = *a8;
  v140 = type metadata accessor for DispatchWorkItemFlags();
  v139 = *(v140 - 8);
  v14 = *(v139 + 64);
  __chkstk_darwin(v140);
  v137 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for DispatchQoS();
  v136 = *(v138 - 8);
  v16 = *(v136 + 64);
  __chkstk_darwin(v138);
  v135 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100936830 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_100951898);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "os_transaction INIT {name: com.apple.remindd.RDAlarmEngineAssembly}", v21, 2u);
  }

  v134 = os_transaction_create();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Starting alarm engine assembly", v24, 2u);
  }

  v25 = a1[2];
  v26 = [a4 supportsAlarmEngine];
  v144 = a1;
  if (v26)
  {
    type metadata accessor for RDBeforeFirstUnlockNotificationEngine();
    v27 = swift_allocObject();
    v27[2] = v25;
    v27[3] = a6;
    v27[4] = &off_1008F5BC0;
    v28 = v25;
    v29 = a6;
  }

  else
  {
    v27 = 0;
  }

  v30 = type metadata accessor for RDAlarmEngine();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  swift_retain_n();
  v33 = v25;

  swift_unknownObjectRetain();
  v34 = a3;
  v143 = sub_1007450B4(v33, a2, a3, a5, v27);
  v129 = a6;
  *&a6[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_reminderAlarmDelegate + 8] = &off_1008FDFC0;
  swift_unknownObjectWeakAssign();
  v35 = type metadata accessor for RDAlarmProducerDataSource();
  swift_allocObject();
  v36 = v33;
  swift_unknownObjectRetain();
  v37 = sub_1004075DC(v36, a2, a3, a4);
  v141 = v37;
  v38 = type metadata accessor for RDXPCActivityTimeEventStream();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  v41 = swift_allocObject();
  v42 = OBJC_IVAR____TtC7remindd28RDXPCActivityTimeEventStream_xpcEventStreamToken;
  v43 = type metadata accessor for RDXPCEventStream.Token(0);
  v128 = a2;
  v44 = v43;
  v45 = *(v43 - 8);
  v123 = *(v45 + 56);
  v127 = v34;
  v124 = (v45 + 56);
  v123(&v41[v42], 1, 1, v43);
  v46 = &v41[OBJC_IVAR____TtC7remindd28RDXPCActivityTimeEventStream_eventHandler];
  *v46 = 0;
  *(v46 + 1) = 0;
  *(v41 + 2) = v36;
  *(v41 + 3) = 0xD00000000000001CLL;
  v47 = v144;
  *(v41 + 4) = 0x80000001007EB430;
  *(v41 + 5) = v47;
  v147 = v35;
  v148 = &off_1008F0850;
  *&aBlock = v37;
  v48 = type metadata accessor for RDTimeAlarmProducer();
  v49 = objc_allocWithZone(v48);
  v50 = sub_10000C9DC(&aBlock, v35);
  v125 = &v123;
  v51 = *(*(v35 - 1) + 64);
  __chkstk_darwin(v50);
  v53 = v27;
  v54 = (&v123 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v55 + 16))(v54);
  v56 = *v54;
  v154 = v35;
  v155 = &off_1008F0850;
  v153 = v56;
  v49[OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_started] = 0;
  *&v49[OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_queue] = v36;
  v57 = &v49[OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_timeEventStream];
  v130 = v41;
  *v57 = v41;
  v57[1] = &off_1008E86D8;
  sub_10000A87C(&v153, &v49[OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_dataSource]);
  *&v49[OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_beforeFirstUnlockNotificationEngine] = v53;
  *&v49[OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_delegate + 8] = &off_1008FDFD0;
  swift_unknownObjectUnownedInit();
  v152.receiver = v49;
  v152.super_class = v48;
  v58 = v36;
  v142 = v53;

  v59 = v144;

  v60 = v141;

  v126 = objc_msgSendSuper2(&v152, "init");
  sub_10000607C(&v153);
  sub_10000607C(&aBlock);
  v61 = *(v38 + 48);
  v62 = *(v38 + 52);
  v63 = swift_allocObject();
  v123(&v63[OBJC_IVAR____TtC7remindd28RDXPCActivityTimeEventStream_xpcEventStreamToken], 1, 1, v44);
  v64 = &v63[OBJC_IVAR____TtC7remindd28RDXPCActivityTimeEventStream_eventHandler];
  *v64 = 0;
  *(v64 + 1) = 0;
  *(v63 + 2) = v58;
  *(v63 + 3) = 0xD000000000000024;
  *(v63 + 4) = 0x80000001007EB450;
  *(v63 + 5) = v59;
  v65 = v63;
  v147 = v35;
  v148 = &off_1008F07F0;
  *&aBlock = v60;
  v66 = type metadata accessor for RDDueDateDeltaAlarmProducer();
  v67 = objc_allocWithZone(v66);
  v68 = v147;
  v69 = sub_10000C9DC(&aBlock, v147);
  v124 = &v123;
  v70 = *(*(v68 - 1) + 64);
  __chkstk_darwin(v69);
  v72 = (&v123 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v73 + 16))(v72);
  v74 = *v72;
  v154 = v35;
  v155 = &off_1008F07F0;
  v153 = v74;
  v67[OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_started] = 0;
  *&v67[OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_queue] = v58;
  v75 = &v67[OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_timeEventStream];
  v125 = v65;
  *v75 = v65;
  v75[1] = &off_1008E86D8;
  sub_10000A87C(&v153, &v67[OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_dataSource]);
  *&v67[OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_beforeFirstUnlockNotificationEngine] = v53;
  *&v67[OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_delegate + 8] = &off_1008FDFD0;
  v76 = v143;
  swift_unknownObjectUnownedInit();
  v151.receiver = v67;
  v151.super_class = v66;
  v77 = v58;

  v144 = objc_msgSendSuper2(&v151, "init");
  sub_10000607C(&v153);
  sub_10000607C(&aBlock);
  v78 = v77;

  v131 = sub_1000F5404(v78, v131, v60);
  v147 = v35;
  v148 = &off_1008F0830;
  *&aBlock = v60;
  v79 = v60;
  v80 = objc_allocWithZone(type metadata accessor for RDVehicleAlarmProducer());
  v81 = v147;
  v82 = sub_10000C9DC(&aBlock, v147);
  v83 = *(*(v81 - 1) + 64);
  __chkstk_darwin(v82);
  v85 = (&v123 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v86 + 16))(v85);
  v87 = *v85;
  v88 = v78;

  v124 = sub_1000FBEB0(v88, v87, v76, v80);

  sub_10000607C(&aBlock);
  v89 = v133;
  v91 = v133[2];
  v90 = v133[3];
  v92 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v92[6] = 0;
  v92[7] = 0;
  v92[2] = v91;
  v92[3] = v90;
  v92[4] = v88;
  v93 = swift_allocObject();
  *(v93 + 16) = v88;
  *(v93 + 24) = v92;
  v94 = v89[6];
  v95 = v89[7];
  v89[6] = sub_1000FC4E8;
  v89[7] = v93;
  v96 = v88;

  sub_10003E114(v94);
  v97 = objc_opt_self();

  v98 = [v97 daemonUserDefaults];
  v147 = sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
  v148 = &off_1008F2758;
  *&aBlock = v98;
  type metadata accessor for RDUserInteractionSessionManager();
  v99 = swift_allocObject();
  sub_100054B6C(&aBlock, v99 + 16);
  v100 = v76;
  v101 = sub_1000FBFCC(v96, v92, v99, v79);

  type metadata accessor for RDAlarmNotificationConsumer();
  v102 = swift_allocObject();
  v102[7] = 0xD000000000000014;
  v102[8] = 0x80000001007EB480;
  v102[10] = 0;
  v102[11] = 0;
  v102[9] = 0;
  *(v102 + 94) = 0;
  v102[4] = v96;
  v103 = type metadata accessor for RDDaemonController();
  v104 = objc_allocWithZone(v103);
  v105 = &v104[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
  v106 = v127;
  *v105 = v128;
  v105[1] = v106;
  v107 = &v104[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
  *v107 = 0xD000000000000014;
  *(v107 + 1) = 0x80000001007EB480;
  *(v107 + 38) = 0;
  *(v107 + 3) = 0;
  *(v107 + 4) = 0;
  *(v107 + 2) = 0;
  *&v104[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = 0;
  v133 = v96;
  swift_unknownObjectRetain();
  sub_10000C71C(0xD000000000000014, 0x80000001007EB480, 0, 0, 0, 0);
  v150.receiver = v104;
  v150.super_class = v103;
  v108 = objc_msgSendSuper2(&v150, "init");
  v109 = v129;
  v102[2] = v129;
  v102[3] = &off_1008F5BC0;
  v102[5] = v142;
  v102[6] = v108;
  v110 = swift_allocObject();
  v111 = v126;
  v110[2] = v100;
  v110[3] = v111;
  v112 = v144;
  v113 = v131;
  v110[4] = v144;
  v110[5] = v113;
  v114 = v124;
  v110[6] = v124;
  v110[7] = v101;
  v115 = v134;
  v110[8] = v102;
  v110[9] = v115;
  v148 = sub_1000FC4F4;
  v149 = v110;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v146 = sub_100019200;
  v147 = &unk_1008E4EC0;
  v116 = _Block_copy(&aBlock);
  v117 = v109;

  v132 = v111;
  v144 = v112;
  v131 = v113;
  v129 = v114;
  v118 = v101;

  swift_unknownObjectRetain();
  v119 = v135;
  static DispatchQoS.unspecified.getter();
  v153 = _swiftEmptyArrayStorage;
  sub_1000F4E04(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  v120 = v137;
  v121 = v140;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v116);

  swift_unknownObjectRelease();
  (*(v139 + 8))(v120, v121);
  (*(v136 + 8))(v119, v138);

  return v143;
}