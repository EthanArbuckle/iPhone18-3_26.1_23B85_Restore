void sub_1001A79A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 + 32));
  _Unwind_Resume(a1);
}

void sub_1001A79D4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained viewState];
  v12 = [v11 zoneID];
  v13 = [v12 zoneName];
  v14 = sub_100019104(@"ckkscurrent", v13);

  if (v9)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412546;
      v17 = v9;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "error on row: %@ %@", &v16, 0x16u);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v7 recordName];
    v16 = 138412546;
    v17 = v15;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Current pointer upload successful for %@: %@", &v16, 0x16u);
  }
}

void sub_1001A7B80(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v11 = [WeakRetained deps];
  v12 = [v11 databaseProvider];

  if (v9)
  {
    v13 = [WeakRetained viewState];
    v14 = [v13 zoneID];
    v15 = [v14 zoneName];
    v16 = sub_100019104(@"ckkscurrent", v15);

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "CloudKit returned an error: %@", &buf, 0xCu);
    }

    [WeakRetained setError:v9];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1001A7EB8;
    v26[3] = &unk_100343880;
    v26[4] = WeakRetained;
    v27 = v9;
    v28 = *(a1 + 32);
    [v12 dispatchSyncWithSQLTransaction:v26];
    v17 = [WeakRetained operationQueue];
    [v17 addOperation:*(a1 + 40)];
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x3032000000;
    v31 = sub_1001A51CC;
    v32 = sub_1001A51DC;
    v33 = 0;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1001A7EFC;
    v21[3] = &unk_1003438A8;
    v22 = v7;
    v18 = *(a1 + 48);
    v24 = WeakRetained;
    p_buf = &buf;
    v23 = v18;
    [v12 dispatchSyncWithSQLTransaction:v21];
    v19 = *(*(&buf + 1) + 40);
    if (!v19)
    {
      [WeakRetained _fetchAndUpdateMirrorEntry:*(a1 + 56)];
      v19 = *(*(&buf + 1) + 40);
    }

    [WeakRetained setError:v19];
    v20 = [WeakRetained operationQueue];
    [v20 addOperation:*(a1 + 40)];

    _Block_object_dispose(&buf, 8);
  }
}

void sub_1001A7E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001A7EB8(uint64_t a1)
{
  v2 = [*(a1 + 32) deps];
  v3 = [v2 intransactionCKWriteFailed:*(a1 + 40) attemptedRecordsChanged:*(a1 + 48)];

  return v3;
}

uint64_t sub_1001A7EFC(uint64_t a1)
{
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v31;
    *&v4 = 138412290;
    v28 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        v9 = [v8 recordType];
        v10 = [v9 isEqualToString:@"currentitem"];

        if (v10)
        {
          if ([*(a1 + 40) matchesCKRecord:v8])
          {
            [*(a1 + 40) setStoredCKRecord:v8];
            v11 = *(a1 + 40);
            v12 = *(*(a1 + 56) + 8);
            obj = *(v12 + 40);
            [v11 saveToDatabase:&obj];
            objc_storeStrong((v12 + 40), obj);
            if (!*(*(*(a1 + 56) + 8) + 40))
            {
              goto LABEL_15;
            }

            v13 = [*(a1 + 48) viewState];
            v14 = [v13 zoneID];
            v15 = [v14 zoneName];
            v16 = sub_100019104(@"ckkscurrent", v15);

            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v17 = *(*(*(a1 + 56) + 8) + 40);
              *buf = v28;
              v35 = v17;
              v18 = v16;
              v19 = "Couldn't save new current pointer to database: %@";
              v20 = 12;
              goto LABEL_13;
            }
          }

          else
          {
            v21 = [*(a1 + 48) viewState];
            v22 = [v21 zoneID];
            v23 = [v22 zoneName];
            v16 = sub_100019104(@"ckkscurrent", v23);

            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v24 = *(a1 + 40);
              *buf = 138412546;
              v35 = v8;
              v36 = 2112;
              v37 = v24;
              v18 = v16;
              v19 = "CloudKit record does not match saved record, ignoring: %@ %@";
              v20 = 22;
LABEL_13:
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v19, buf, v20);
            }
          }
        }

LABEL_15:
        v25 = [*(a1 + 48) viewState];
        v26 = [v25 notifyViewChangedScheduler];
        [v26 trigger];
      }

      v5 = [v2 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v5);
  }

  return 1;
}

void sub_1001A8980(uint64_t a1)
{
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v1 = [*(a1 + 32) deps];
  v2 = [v1 activeManagedViews];

  obj = v2;
  v3 = [v2 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v29;
    *&v4 = 138412290;
    v25 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        v9 = [v8 zoneID];
        v10 = [v8 contextID];
        v11 = [CKKSCurrentKeySet loadForZone:v9 contextID:v10];

        v12 = [v11 currentTLKPointer];

        if (v12)
        {
          v13 = *(a1 + 40);
          v14 = [v8 zoneID];
          [v13 setObject:v11 forKeyedSubscript:v14];
        }

        else
        {
          v15 = [*(a1 + 32) previousPendingKeySets];
          v16 = [v8 zoneID];
          v14 = [v15 objectForKeyedSubscript:v16];

          if (v14 && ([v14 zoneID], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "zoneID"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "isEqual:", v18), v18, v17, v19))
          {
            v20 = [v8 zoneID];
            v21 = [v20 zoneName];
            v22 = sub_100019104(@"ckkstlk", v21);

            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v25;
              v33 = v14;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Using prevously-generated proposed keyset: %@", buf, 0xCu);
            }

            v23 = *(a1 + 40);
            v24 = [v8 zoneID];
            [v23 setObject:v14 forKeyedSubscript:v24];
          }

          else
          {
            [*(a1 + 48) addObject:v8];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v5);
  }
}

uint64_t sub_1001A8C7C(uint64_t a1)
{
  v1 = a1;
  v2 = [*(a1 + 32) zoneID];
  v3 = [v2 zoneName];
  v4 = sub_100019104(@"ckkstlk", v3);

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Generating new TLK", buf, 2u);
  }

  v5 = [*(v1 + 32) contextID];
  v6 = [*(v1 + 32) zoneID];
  v174 = 0;
  v7 = [CKKSKey currentKeyForClass:@"tlk" contextID:v5 zoneID:v6 error:&v174];
  v8 = v174;

  if (v8)
  {
    v9 = [*(v1 + 32) zoneID];
    v10 = [v9 zoneName];
    v11 = sub_100019104(@"ckkstlk", v10);

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v178 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "couldn't load the current TLK: %@", buf, 0xCu);
    }
  }

  v12 = [*(v1 + 32) contextID];
  v173 = 0;
  v13 = [(CKKSCurrentKeySet *)v7 ensureKeyLoadedForContextID:v12 cache:0 error:&v173];
  v14 = v173;

  v15 = [*(v1 + 32) zoneID];
  v16 = [v15 zoneName];
  v17 = sub_100019104(@"ckkstlk", v16);

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v178 = v7;
    v179 = 2112;
    v180 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Old TLK is: %@ %@", buf, 0x16u);
  }

  if (!v14)
  {
    v145 = v8;
    v172 = 0;
    v25 = [CKKSAESSIVKey randomKey:&v172];
    v26 = v172;
    v27 = [CKKSKey alloc];
    v28 = [*(v1 + 32) contextID];
    v29 = +[NSUUID UUID];
    v30 = [v29 UUIDString];
    v31 = [*(v1 + 32) zoneID];
    v32 = [(CKKSKey *)v27 initSelfWrappedWithAESKey:v25 contextID:v28 uuid:v30 keyclass:@"tlk" state:@"local" zoneID:v31 encodedCKRecord:0 currentkey:1];

    v33 = v32;
    v171 = v26;
    v149 = [(CKKSCurrentKeySet *)v32 getKeychainBackedKey:&v171];
    v151 = v171;

    if (!v32 || !v25 || !v149 || v151)
    {
      v44 = [*(v1 + 32) zoneID];
      v45 = [v44 zoneName];
      v46 = sub_100019104(@"ckkstlk", v45);

      v8 = v145;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v178 = v151;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Couldn't create new TLK: %@", buf, 0xCu);
      }

      [*(v1 + 40) setNextState:@"error"];
      [*(v1 + 40) setError:v151];
      goto LABEL_29;
    }

    v170 = 0;
    v34 = [CKKSKey randomKeyWrappedByParent:v32 keyclass:@"classA" error:&v170];
    v35 = v170;
    v169 = v35;
    v36 = [CKKSKey randomKeyWrappedByParent:v32 keyclass:@"classC" error:&v169];
    v37 = v169;

    v151 = v37;
    if (v37)
    {
      v38 = v36;
      v39 = v34;
      v40 = [*(v1 + 32) zoneID];
      v41 = [v40 zoneName];
      v42 = sub_100019104(@"ckkstlk", v41);

      v8 = v145;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v178 = v151;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "couldn't make new key hierarchy: %@", buf, 0xCu);
      }

      [*(v1 + 40) setError:v151];
      [*(v1 + 40) setNextState:@"error"];

LABEL_29:
      v43 = 0;
LABEL_30:

      v14 = v151;
      goto LABEL_31;
    }

    v141 = v25;
    v48 = [*(v1 + 32) contextID];
    v146 = v33;
    v49 = [(CKKSCurrentKeySet *)v33 uuid];
    v50 = [*(v1 + 32) zoneID];
    v168 = 0;
    v140 = [CKKSCurrentKeyPointer forKeyClass:@"tlk" contextID:v48 withKeyUUID:v49 zoneID:v50 error:&v168];
    v51 = v168;

    v52 = [*(v1 + 32) contextID];
    v143 = v34;
    v53 = [v34 uuid];
    v54 = [*(v1 + 32) zoneID];
    v167 = v51;
    v139 = [CKKSCurrentKeyPointer forKeyClass:@"classA" contextID:v52 withKeyUUID:v53 zoneID:v54 error:&v167];
    v55 = v167;

    v56 = [*(v1 + 32) contextID];
    v142 = v36;
    v57 = [v36 uuid];
    v58 = [*(v1 + 32) zoneID];
    v166 = v55;
    v138 = [CKKSCurrentKeyPointer forKeyClass:@"classC" contextID:v56 withKeyUUID:v57 zoneID:v58 error:&v166];
    v59 = v166;

    v8 = v145;
    if (v59)
    {
      v60 = [*(v1 + 32) zoneID];
      v61 = [v60 zoneName];
      v62 = sub_100019104(@"ckkstlk", v61);

      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v178 = v59;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "couldn't make current key records: %@", buf, 0xCu);
      }

      [*(v1 + 40) setNextState:@"error"];
      v151 = v59;
      [*(v1 + 40) setError:v59];
      v43 = 0;
      v33 = v146;
      v63 = v142;
      goto LABEL_102;
    }

    v64 = [(CKKSCurrentKeySet *)v7 copy];
    v33 = v146;
    if (v64)
    {
      v65 = [(CKKSCurrentKeySet *)v7 contextID];
      v165 = 0;
      v66 = [v64 ensureKeyLoadedForContextID:v65 cache:0 error:&v165];
      v67 = v165;

      if (v67)
      {
        v68 = v64;
        v69 = [*(v1 + 40) deps];
        v70 = [v69 lockStateTracker];
        v151 = v67;
        v71 = [v70 isLockedError:v67];

        v72 = [*(v1 + 32) zoneID];
        v73 = [v72 zoneName];
        v74 = sub_100019104(@"ckkstlk", v73);

        v75 = os_log_type_enabled(v74, OS_LOG_TYPE_ERROR);
        if (v71)
        {
          if (v75)
          {
            *buf = 138412290;
            v178 = v67;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "Couldn't unwrap TLK due to lock state. Entering a waiting state; %@", buf, 0xCu);
          }

          *(*(*(v1 + 64) + 8) + 24) = 1;
        }

        else
        {
          if (v75)
          {
            *buf = 138412290;
            v178 = v67;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "couldn't unwrap TLK, aborting new TLK operation: %@", buf, 0xCu);
          }

          [*(v1 + 40) setNextState:@"error"];
        }

        v33 = v146;
        [*(v1 + 40) setError:v67];

LABEL_50:
        v43 = 0;
        v63 = v142;
LABEL_102:

        goto LABEL_30;
      }

      v164 = 0;
      [v64 wrapUnder:v146 error:&v164];
      v151 = v164;
      if (v151)
      {
        v76 = v64;
        v77 = [*(v1 + 32) zoneID];
        v78 = [v77 zoneName];
        v79 = sub_100019104(@"ckkstlk", v78);

        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v178 = v151;
          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "couldn't wrap oldTLK, aborting new TLK operation: %@", buf, 0xCu);
        }

        [*(v1 + 40) setNextState:@"error"];
        [*(v1 + 40) setError:v151];

        goto LABEL_50;
      }

      [v64 setCurrentkey:0];
    }

    v133 = v64;
    v80 = [CKKSCurrentKeySet alloc];
    v81 = [(CKKSCurrentKeySet *)v146 zoneID];
    v82 = [(CKKSCurrentKeySet *)v146 contextID];
    v83 = [(CKKSCurrentKeySet *)v80 initWithZoneID:v81 contextID:v82];

    [(CKKSCurrentKeySet *)v83 setTlk:v146];
    [(CKKSCurrentKeySet *)v83 setClassA:v143];
    [(CKKSCurrentKeySet *)v83 setClassC:v142];
    [(CKKSCurrentKeySet *)v83 setCurrentTLKPointer:v140];
    [(CKKSCurrentKeySet *)v83 setCurrentClassAPointer:v139];
    [(CKKSCurrentKeySet *)v83 setCurrentClassCPointer:v138];
    v134 = v83;
    [(CKKSCurrentKeySet *)v83 setProposed:1];
    v84 = [*(v1 + 32) zoneID];
    v85 = [v84 zoneName];
    v86 = sub_100019104(@"ckkstlk", v85);

    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v178 = v134;
      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "Saving new keys %@ to keychain", buf, 0xCu);
    }

    v163 = 0;
    [(CKKSCurrentKeySet *)v146 saveKeyMaterialToKeychain:&v163];
    v87 = v163;
    v162 = v87;
    [v143 saveKeyMaterialToKeychain:&v162];
    v88 = v162;

    v161 = v88;
    [v142 saveKeyMaterialToKeychain:&v161];
    v89 = v161;

    if (v89)
    {
      v90 = [*(v1 + 40) deps];
      v91 = [v90 lockStateTracker];
      v151 = v89;
      v92 = [v91 isLockedError:v89];

      v93 = [*(v1 + 32) zoneID];
      v94 = [v93 zoneName];
      v95 = sub_100019104(@"ckkstlk", v94);

      v96 = os_log_type_enabled(v95, OS_LOG_TYPE_ERROR);
      if (v92)
      {
        if (v96)
        {
          *buf = 138412290;
          v178 = v89;
          _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "Couldn't save new key material to keychain due to lock state. Entering a waiting state; %@", buf, 0xCu);
        }

        *(*(*(v1 + 64) + 8) + 24) = 1;
      }

      else
      {
        if (v96)
        {
          *buf = 138412290;
          v178 = v89;
          _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "couldn't save new key material to keychain; aborting new TLK operation: %@", buf, 0xCu);
        }

        [*(v1 + 40) setNextState:@"error"];
      }

      v33 = v146;
      [*(v1 + 40) setError:v89];
      v43 = 0;
LABEL_101:
      v63 = v142;

      goto LABEL_102;
    }

    v97 = +[NSMutableSet set];
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    obj = *(v1 + 48);
    v137 = [obj countByEnumeratingWithState:&v157 objects:v176 count:16];
    if (!v137)
    {
      v151 = 0;
LABEL_99:

      [v97 allObjects];
      v130 = v126 = v97;
      [(CKKSCurrentKeySet *)v134 setPendingTLKShares:v130];

      v131 = *(v1 + 56);
      v129 = [(CKKSCurrentKeySet *)v33 zoneID];
      [v131 setObject:v134 forKeyedSubscript:v129];
      v43 = 1;
LABEL_100:

      goto LABEL_101;
    }

    v151 = 0;
    v136 = *v158;
    v132 = v7;
LABEL_61:
    v98 = 0;
    while (1)
    {
      if (*v158 != v136)
      {
        objc_enumerationMutation(obj);
      }

      v144 = v98;
      v99 = *(*(&v157 + 1) + 8 * v98);
      v100 = [(CKKSCurrentKeySet *)v99 currentSelfPeers];
      v101 = [v100 currentSelf];
      if (v101)
      {
        v102 = v101;
        v103 = [(CKKSCurrentKeySet *)v99 currentSelfPeersError];

        if (!v103)
        {
          v155 = 0u;
          v156 = 0u;
          v153 = 0u;
          v154 = 0u;
          v148 = v99;
          v147 = [(CKKSCurrentKeySet *)v99 currentTrustedPeers];
          v104 = [v147 countByEnumeratingWithState:&v153 objects:v175 count:16];
          if (v104)
          {
            v105 = v104;
            v150 = *v154;
            do
            {
              for (i = 0; i != v105; i = i + 1)
              {
                if (*v154 != v150)
                {
                  objc_enumerationMutation(v147);
                }

                v107 = *(*(&v153 + 1) + 8 * i);
                v108 = [(CKKSCurrentKeySet *)v107 publicEncryptionKey];

                v109 = v1;
                v110 = [*(v1 + 32) zoneID];
                v111 = [v110 zoneName];
                v112 = sub_100019104(@"ckkstlk", v111);

                v113 = os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT);
                if (v108)
                {
                  if (v113)
                  {
                    *buf = 138412546;
                    v178 = v146;
                    v179 = 2112;
                    v180 = v107;
                    _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "Generating TLK(%@) share for %@", buf, 0x16u);
                  }

                  v114 = [*(v109 + 32) contextID];
                  v115 = [(CKKSCurrentKeySet *)v148 currentSelfPeers];
                  v116 = [v115 currentSelf];
                  v152 = v151;
                  v112 = [CKKSTLKShareRecord share:v149 contextID:v114 as:v116 to:v107 epoch:-1 poisoned:0 error:&v152];
                  v117 = v152;

                  v1 = v109;
                  [v97 addObject:v112];
                  v151 = v117;
                }

                else
                {
                  if (v113)
                  {
                    *buf = 138412290;
                    v178 = v107;
                    _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "No need to make TLK for %@; they don't have any encryption keys", buf, 0xCu);
                  }

                  v1 = v109;
                }
              }

              v105 = [v147 countByEnumeratingWithState:&v153 objects:v175 count:16];
            }

            while (v105);
            v7 = v132;
            v8 = v145;
            v25 = v141;
          }

          v33 = v146;
          v118 = v147;
          goto LABEL_86;
        }
      }

      else
      {
      }

      v119 = v99;
      v120 = [(CKKSCurrentKeySet *)v99 essential];
      v121 = [*(v1 + 32) zoneID];
      v122 = [v121 zoneName];
      v118 = sub_100019104(@"ckkstlk", v122);

      v123 = v118;
      v124 = os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT);
      if (v120)
      {
        v126 = v97;
        v33 = v146;
        if (v124)
        {
          v127 = [(CKKSCurrentKeySet *)v119 currentSelfPeersError];
          *buf = 138412546;
          v178 = v146;
          v179 = 2112;
          v180 = v127;
          _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "Fatal error: unable to generate TLK shares for (%@): %@", buf, 0x16u);
        }

        v128 = [(CKKSCurrentKeySet *)v119 currentSelfPeersError];
        [*(v1 + 40) setError:v128];

        [*(v1 + 40) setNextState:@"error"];
        v43 = 0;
        v129 = obj;
        goto LABEL_100;
      }

      v33 = v146;
      if (!v124)
      {
        v125 = v144;
        goto LABEL_88;
      }

      *buf = 138412546;
      v178 = v146;
      v179 = 2112;
      v180 = v119;
      _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "Unable to generate TLK shares for (%@): %@", buf, 0x16u);
LABEL_86:
      v125 = v144;
LABEL_88:

      v98 = v125 + 1;
      if (v98 == v137)
      {
        v137 = [obj countByEnumeratingWithState:&v157 objects:v176 count:16];
        if (v137)
        {
          goto LABEL_61;
        }

        goto LABEL_99;
      }
    }
  }

  v18 = [*(v1 + 40) deps];
  v19 = [v18 lockStateTracker];
  v20 = [v19 isLockedError:v14];

  v21 = [*(v1 + 32) zoneID];
  v22 = [v21 zoneName];
  v23 = sub_100019104(@"ckkstlk", v22);

  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
  if (v20)
  {
    if (v24)
    {
      *buf = 138412290;
      v178 = v14;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Couldn't fetch and unwrap old TLK due to lock state. Entering a waiting state; %@", buf, 0xCu);
    }

    *(*(*(v1 + 64) + 8) + 24) = 1;
  }

  else
  {
    if (v24)
    {
      *buf = 138412290;
      v178 = v14;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Couldn't fetch and unwrap old TLK: %@", buf, 0xCu);
    }

    [*(v1 + 40) setNextState:@"error"];
  }

  [*(v1 + 40) setError:v14];
  v33 = 0;
  v43 = 0;
LABEL_31:

  return v43;
}

id sub_1001AAA0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [v3 setIcloudAccountState:v5];
  [v4 setAltDSID:*(a1 + 32)];

  return v4;
}

OTAccountMetadataClassC *__cdecl sub_1001AAA68(id a1, OTAccountMetadataClassC *a2)
{
  v2 = a2;
  [(OTAccountMetadataClassC *)v2 setIcloudAccountState:1];
  [(OTAccountMetadataClassC *)v2 setAltDSID:0];

  return v2;
}

id sub_1001AB8C8(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTrustState:{objc_msgSend(*(a1 + 32), "trustState")}];
  v4 = [*(a1 + 32) peerID];
  [v3 setPeerID:v4];

  return v3;
}

void sub_1001ABA74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001ABA98(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (v8 && v7 && !v9)
  {
    [WeakRetained afterTPHTrustState:v7 trustedPeers:v8];
  }

  else
  {
    v12 = sub_100006274("SecError");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "octagon: TPH was unable to determine current peer state: %@", &v14, 0xCu);
    }

    [v11 setError:v9];
    [v11 setNextState:@"Error"];
    v13 = [v11 finishedOp];
    [v11 runBeforeGroupFinished:v13];
  }
}

void sub_1001AD0D0(uint64_t a1)
{
  [*(*(a1 + 32) + 48) addObject:*(a1 + 40)];
  v2 = [*(a1 + 32) queueIsLocked] ^ 1;
  v3 = dispatch_get_global_queue(21, 0);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001AD198;
  v4[3] = &unk_100343A90;
  v5 = *(a1 + 40);
  v6 = v2;
  dispatch_async(v3, v4);
}

id sub_1001AD24C(uint64_t a1)
{
  result = [*(a1 + 32) queueIsLocked];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 _onqueueRecheck];
  }

  return result;
}

void sub_1001AD538(id a1)
{
  v1 = sub_100019104(@"ckks", 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Keybag unlocked", v2, 2u);
  }
}

void sub_1001AD768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001AD780(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1001AD798(uint64_t a1)
{
  if ([*(a1 + 32) queueIsLocked])
  {
    v2 = [*(a1 + 32) lastUnlockedTime];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    return _objc_release_x1();
  }

  else
  {
    v5 = +[NSDate date];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(a1 + 32);
    v9 = *(*(*(a1 + 40) + 8) + 40);

    return [v8 setLastUnlockedTime:v9];
  }
}

void sub_1001ADB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001ADB60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onqueueRecheck];
}

void sub_1001ADBA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onqueueRecheck];
}

void sub_1001ADC34(id a1)
{
  v1 = [CKKSLockStateTracker alloc];
  v4 = objc_alloc_init(CKKSActualLockStateProvider);
  v2 = [(CKKSLockStateTracker *)v1 initWithProvider:v4];
  v3 = qword_10039E268;
  qword_10039E268 = v2;
}

void sub_1001ADD34(id a1)
{
  v3 = +[NSUUID UUID];
  v1 = [v3 UUIDString];
  v2 = qword_10039E290;
  qword_10039E290 = v1;
}

id sub_1001ADDE8()
{
  if (qword_10039E288 != -1)
  {
    dispatch_once(&qword_10039E288, &stru_100343AD0);
  }

  v1 = qword_10039E280;

  return v1;
}

void sub_1001ADE3C(id a1)
{
  v3 = +[NSBundle mainBundle];
  v1 = [v3 infoDictionary];
  v2 = qword_10039E280;
  qword_10039E280 = v1;
}

id sub_1001ADEFC(void *a1)
{
  v1 = qword_10039E2A0;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_10039E2A0, &stru_100343B10);
  }

  v3 = [qword_10039E278 objectForKeyedSubscript:v2];

  return v3;
}

void sub_1001ADF78(id a1)
{
  v1 = [[NSMutableDictionary alloc] initWithCapacity:0];
  v2 = qword_10039E278;
  qword_10039E278 = v1;

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *&buf = @"UniqueDeviceID";
  *(&buf + 1) = @"BuildVersion";
  v16 = @"ProductName";
  v17 = @"ProductType";
  v18 = @"ProductVersion";
  v3 = [NSArray arrayWithObjects:&buf count:5];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = MGCopyAnswer();
        if (v9)
        {
          [qword_10039E278 setObject:v9 forKeyedSubscript:v8];
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v8;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Error getting %@ from MobileGestalt", &buf, 0xCu);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

void sub_1001B08D4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 description];
  [v2 addObject:v3];
}

void sub_1001B092C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 description];
  [v2 addObject:v3];
}

void sub_1001B0C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001B0C68(uint64_t a1)
{
  v1 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = +[NSMutableArray array];
  v4 = v3;
  if ((*(v1 + 56) & 1) == 0)
  {
    v115 = v3;
    v5 = [WeakRetained accountTracker];
    v6 = [v5 ckdeviceIDInitialized];
    [v6 wait:1000000000];

    v7 = [WeakRetained accountTracker];
    v8 = [v7 ckdeviceID];

    v9 = [WeakRetained accountTracker];
    v10 = [v9 ckdeviceIDError];

    v11 = +[CKKSAnalytics logger];
    v106 = [v11 datePropertyForKey:@"lastCKKSPush"];

    v12 = +[NSMutableArray array];
    v13 = [WeakRetained operationQueue];
    v14 = [v13 operations];
    v15 = [v14 copy];

    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v120 objects:v126 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v121;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v121 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v120 + 1) + 8 * i) description];
          [v12 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v120 objects:v126 count:16];
      }

      while (v18);
    }

    v125[0] = @"global";
    v124[0] = @"view";
    v124[1] = @"reachability";
    v114 = [WeakRetained reachabilityTracker];
    v22 = [v114 currentReachability];
    v23 = @"no-network";
    if (v22)
    {
      v23 = @"network";
    }

    v125[1] = v23;
    v124[2] = @"activeAccount";
    v24 = [WeakRetained operationDependencies];
    v25 = [v24 activeAccount];
    v26 = [v25 description];

    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = +[NSNull null];
    }

    v28 = v27;

    v125[2] = v28;
    v124[3] = @"ckdeviceID";
    v29 = v8;
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = +[NSNull null];
    }

    v32 = v31;

    v125[3] = v32;
    v124[4] = @"ckdeviceIDError";
    v33 = v10;
    v34 = v33;
    v113 = v30;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = +[NSNull null];
    }

    v36 = v35;
    v111 = v34;

    v109 = v36;
    v125[4] = v36;
    v124[5] = @"lockstatetracker";
    v37 = [WeakRetained lockStateTracker];
    v38 = [v37 description];

    v110 = v32;
    if (v38)
    {
      v39 = v38;
    }

    else
    {
      v39 = +[NSNull null];
    }

    v40 = v39;

    v108 = v40;
    v125[5] = v40;
    v124[6] = @"cloudkitRetryAfter";
    v41 = [WeakRetained operationDependencies];
    v42 = [v41 cloudkitRetryAfter];
    v43 = [v42 description];

    if (v43)
    {
      v44 = v43;
    }

    else
    {
      v44 = +[NSNull null];
    }

    v45 = v44;

    v125[6] = v45;
    v124[7] = @"lastCKKSPush";
    v46 = v106;
    v47 = v46;
    v112 = v28;
    if (v46)
    {
      v48 = v46;
    }

    else
    {
      v48 = +[NSNull null];
    }

    v49 = v48;
    v107 = v47;

    v104 = v49;
    v125[7] = v49;
    v124[8] = @"policy";
    v50 = [WeakRetained syncingPolicy];
    v51 = [v50 description];

    if (v51)
    {
      v52 = v51;
    }

    else
    {
      v52 = +[NSNull null];
    }

    v53 = v52;

    v103 = v53;
    v125[8] = v53;
    v125[9] = @"yes";
    v124[9] = @"viewsFromPolicy";
    v124[10] = @"ckaccountstatus";
    v54 = [WeakRetained accountStatus];
    v55 = @"available";
    if (v54 == 3)
    {
      v55 = @"no account";
    }

    if (!v54)
    {
      v55 = @"unknown";
    }

    v102 = v55;
    v125[10] = v102;
    v124[11] = @"accounttracker";
    v56 = [WeakRetained accountTracker];
    v57 = [v56 description];

    if (v57)
    {
      v58 = v57;
    }

    else
    {
      v58 = +[NSNull null];
    }

    v59 = v58;

    v101 = v59;
    v125[11] = v59;
    v124[12] = @"fetcher";
    v60 = [WeakRetained zoneChangeFetcher];
    v61 = [v60 description];

    if (v61)
    {
      v62 = v61;
    }

    else
    {
      v62 = +[NSNull null];
    }

    v63 = v62;

    v100 = v63;
    v125[12] = v63;
    v124[13] = @"ckksstate";
    v64 = [WeakRetained stateMachine];
    v65 = [v64 currentState];

    if (v65)
    {
      v66 = v65;
    }

    else
    {
      v66 = +[NSNull null];
    }

    v67 = v66;

    v99 = v67;
    v125[13] = v67;
    v124[14] = @"lastIncomingQueueOperation";
    v68 = [WeakRetained lastIncomingQueueOperation];
    v69 = [v68 description];

    if (v69)
    {
      v70 = v69;
    }

    else
    {
      v70 = +[NSNull null];
    }

    v71 = v70;

    v98 = v71;
    v125[14] = v71;
    v124[15] = @"lastNewTLKOperation";
    v72 = [WeakRetained lastNewTLKOperation];
    v73 = [v72 description];

    v105 = v45;
    if (v73)
    {
      v74 = v73;
    }

    else
    {
      v74 = +[NSNull null];
    }

    v75 = v74;

    v125[15] = v75;
    v124[16] = @"lastOutgoingQueueOperation";
    v76 = [WeakRetained lastOutgoingQueueOperation];
    v77 = [v76 description];

    if (v77)
    {
      v78 = v77;
    }

    else
    {
      v78 = +[NSNull null];
    }

    v79 = v78;

    v125[16] = v79;
    v124[17] = @"lastProcessReceivedKeysOperation";
    v80 = [WeakRetained lastProcessReceivedKeysOperation];
    v81 = [v80 description];

    if (v81)
    {
      v82 = v81;
    }

    else
    {
      v82 = +[NSNull null];
    }

    v83 = v82;
    v97 = v1;

    v125[17] = v83;
    v124[18] = @"lastReencryptOutgoingItemsOperation";
    v84 = [WeakRetained lastReencryptOutgoingItemsOperation];
    v85 = [v84 description];

    v86 = v75;
    if (v85)
    {
      v87 = v85;
    }

    else
    {
      v87 = +[NSNull null];
    }

    v88 = v87;

    v125[18] = v88;
    v124[19] = @"launchSequence";
    v89 = [WeakRetained operationDependencies];
    v90 = [v89 overallLaunch];
    v91 = [v90 eventsByTime];

    if (v91)
    {
      v92 = v91;
    }

    else
    {
      v92 = +[NSNull null];
    }

    v93 = v92;

    v124[20] = @"operationQueue";
    v125[19] = v93;
    v125[20] = v12;
    v94 = [NSDictionary dictionaryWithObjects:v125 forKeys:v124 count:21];

    v4 = v115;
    [v115 addObject:v94];

    v1 = v97;
  }

  v116[0] = _NSConcreteStackBlock;
  v116[1] = 3221225472;
  v116[2] = sub_1001B1618;
  v116[3] = &unk_100343F40;
  v116[4] = WeakRetained;
  v95 = *(v1 + 32);
  v119 = *(v1 + 56);
  v117 = v95;
  v118 = v4;
  v96 = v4;
  [WeakRetained dispatchSyncWithReadOnlySQLTransaction:v116];
  (*(*(v1 + 40) + 16))();
}

void sub_1001B1618(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v3 = [*(a1 + 32) operationDependencies];
  v4 = [v3 allViews];

  v5 = [v4 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v40;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v40 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v39 + 1) + 8 * i);
        v10 = *(a1 + 40);
        if (v10)
        {
          v11 = [*(*(&v39 + 1) + 8 * i) zoneName];
          v12 = [v10 isEqualToString:v11];

          if (!v12)
          {
            continue;
          }
        }

        [v2 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v6);
  }

  v13 = [NSSortDescriptor sortDescriptorWithKey:@"zoneName" ascending:1];
  v46 = v13;
  v14 = [NSArray arrayWithObjects:&v46 count:1];
  v32 = v2;
  v15 = [v2 sortedArrayUsingDescriptors:v14];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v15;
  v16 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v16)
  {
    v17 = v16;
    v34 = *v36;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v36 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v35 + 1) + 8 * j);
        v20 = [v19 zoneID];
        v21 = [v20 zoneName];
        v22 = sub_100019104(@"ckks", v21);

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v44 = v19;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Building status for %@", buf, 0xCu);
        }

        v23 = [*(a1 + 32) operationDependencies];
        v24 = [v23 contextID];
        v25 = [v19 zoneName];
        v26 = [CKKSZoneStateEntry contextID:v24 zoneName:v25];

        v27 = [*(a1 + 32) fastStatus:v19 zoneStateEntry:v26];
        if ((*(a1 + 56) & 1) == 0)
        {
          v28 = [*(a1 + 32) intransactionSlowStatus:v19];
          v29 = [v27 mutableCopy];
          [v29 addEntriesFromDictionary:v28];

          v27 = v29;
        }

        v30 = [v19 zoneName];
        v31 = sub_100019104(@"ckks", v30);

        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v44 = v27;
          _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Status is %@", buf, 0xCu);
        }

        if (v27)
        {
          [*(a1 + 48) addObject:v27];
        }
      }

      v17 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v17);
  }
}

void sub_1001B1BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B1C08(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001B1C20(uint64_t a1)
{
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v2 = [*(a1 + 32) operationDependencies];
  v3 = [v2 allViews];

  v4 = a1;
  v5 = [v3 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v38;
    p_info = &OBJC_METACLASS___CKKSMemoryKeyCache.info;
    v32 = *v38;
    v33 = v3;
    do
    {
      v9 = 0;
      v34 = v6;
      do
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v37 + 1) + 8 * v9);
        v11 = [v10 zoneID];
        v12 = [v10 contextID];
        v13 = [p_info + 246 loadForZone:v11 contextID:v12];

        v14 = [v13 error];

        if (v14)
        {
          v15 = [v10 zoneID];
          v16 = [v15 zoneName];
          v17 = sub_100019104(@"ckks", v16);

          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = [v13 error];
            *buf = 138412290;
            v42 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "error loading keyset: %@", buf, 0xCu);
          }

          v19 = [v13 error];
          v20 = *(*(v4 + 48) + 8);
          v21 = *(v20 + 40);
          *(v20 + 40) = v19;
        }

        else
        {
          v22 = [v13 currentTLKPointer];
          v23 = [v22 currentKeyUUID];

          if (!v23)
          {
            goto LABEL_17;
          }

          v35 = *(v4 + 40);
          v24 = [v10 contextID];
          v25 = [v13 currentTLKPointer];
          v26 = [v25 currentKeyUUID];
          v27 = [v10 zoneID];
          v28 = v4;
          v29 = *(*(v4 + 48) + 8);
          obj = *(v29 + 40);
          v21 = [CKKSTLKShareRecord allFor:v35 contextID:v24 keyUUID:v26 zoneID:v27 error:&obj];
          objc_storeStrong((v29 + 40), obj);

          if (v21)
          {
            v4 = v28;
            if (!*(*(*(v28 + 48) + 8) + 40))
            {
              v30 = *(*(*(v28 + 56) + 8) + 40);
              v31 = [v10 zoneName];
              [v30 addObject:v31];

              v4 = v28;
            }
          }

          else
          {
            v4 = v28;
          }

          v7 = v32;
          v3 = v33;
          p_info = (&OBJC_METACLASS___CKKSMemoryKeyCache + 32);
          v6 = v34;
        }

LABEL_17:
        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [v3 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v6);
  }
}

void sub_1001B2580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001B25A0(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) operationDependencies];
  v3 = [v2 allCKKSManagedViews];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 zoneID];
        v10 = [v9 zoneName];
        v11 = [v10 isEqualToString:*(a1 + 40)];

        if (v11)
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v8);
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_1001B3308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001B3320(uint64_t a1)
{
  v2 = [(CKKSSQLDatabaseObject *)CKKSOutgoingQueueEntry all:*(a1 + 40)];
  if (v2)
  {
    v5 = v2;
    v3 = [v2 count] == 0;
    v2 = v5;
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
}

void sub_1001B3AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B3B08(uint64_t a1)
{
  v1 = a1;
  if (([*(a1 + 32) _onQueueZoneIsReadyForFetching:*(a1 + 40)] & 1) == 0)
  {
    v5 = [*(v1 + 40) zoneName];
    v3 = sub_100019104(@"ckksfetch", v5);

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "Zone is inactive; cancelling fetch";
      goto LABEL_7;
    }

LABEL_8:
    v6 = 0;
    goto LABEL_123;
  }

  if ([*(v1 + 32) halted])
  {
    v2 = [*(v1 + 40) zoneName];
    v3 = sub_100019104(@"ckksfetch", v2);

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "Dropping fetch due to halted operation";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, buf, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v7 = *(v1 + 48);
  v8 = [v7 countByEnumeratingWithState:&v158 objects:v179 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v159;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v159 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v158 + 1) + 8 * i);
        v13 = [*(v1 + 32) operationDependencies];
        [v13 intransactionCKRecordChanged:v12 resync:*(v1 + 80)];
      }

      v9 = [v7 countByEnumeratingWithState:&v158 objects:v179 count:16];
    }

    while (v9);
  }

  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v14 = *(v1 + 56);
  v15 = [v14 countByEnumeratingWithState:&v154 objects:v178 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v155;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v155 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v154 + 1) + 8 * j);
        v20 = [*(v1 + 32) operationDependencies];
        v21 = [v19 recordID];
        v22 = [v19 recordType];
        [v20 intransactionCKRecordDeleted:v21 recordType:v22 resync:*(v1 + 80)];
      }

      v16 = [v14 countByEnumeratingWithState:&v154 objects:v178 count:16];
    }

    while (v16);
  }

  v130 = v1;
  if (*(v1 + 80) == 1)
  {
    v23 = [*(v1 + 32) resyncRecordsSeen];

    if (!v23)
    {
      v24 = +[NSMutableSet set];
      [*(v1 + 32) setResyncRecordsSeen:v24];
    }

    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v25 = *(v1 + 48);
    v26 = [v25 countByEnumeratingWithState:&v150 objects:v177 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v151;
      do
      {
        for (k = 0; k != v27; k = k + 1)
        {
          if (*v151 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v150 + 1) + 8 * k);
          v31 = [*(v1 + 32) resyncRecordsSeen];
          v32 = [v30 recordID];
          v33 = [v32 recordName];
          [v31 addObject:v33];
        }

        v27 = [v25 countByEnumeratingWithState:&v150 objects:v177 count:16];
      }

      while (v27);
    }

    v34 = *(v1 + 81);
    v35 = [*(v1 + 40) zoneName];
    v36 = sub_100019104(@"ckksresync", v35);

    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
    if (v34 == 1)
    {
      if (v37)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "In a resync, but there's More Coming. Waiting to scan for extra items.", buf, 2u);
      }

      v38 = 0;
      goto LABEL_66;
    }

    if (v37)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Comparing local UUIDs against the CloudKit list", buf, 2u);
    }

    v39 = [*(v1 + 32) operationDependencies];
    v40 = [v39 contextID];
    v41 = *(v1 + 40);
    v149 = 0;
    v42 = [(CKKSSQLDatabaseObject *)CKKSMirrorEntry allUUIDsWithContextID:v40 zoneID:v41 error:&v149];
    v38 = v149;
    v43 = [v42 mutableCopy];

    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v36 = v43;
    v132 = [v36 countByEnumeratingWithState:&v145 objects:v176 count:16];
    if (!v132)
    {
LABEL_65:

      [*(v1 + 32) setResyncRecordsSeen:0];
LABEL_66:

      goto LABEL_67;
    }

    v44 = *v146;
    p_info = &OBJC_METACLASS___CKKSMemoryKeyCache.info;
    v126 = v36;
    v131 = *v146;
LABEL_42:
    v46 = 0;
    while (1)
    {
      if (*v146 != v44)
      {
        objc_enumerationMutation(v36);
      }

      v47 = *(*(&v145 + 1) + 8 * v46);
      v48 = [*(v130 + 32) resyncRecordsSeen];
      v49 = [v48 containsObject:v47];

      if (v49)
      {
        v50 = [*(v130 + 40) zoneName];
        v51 = sub_100019104(@"ckksresync", v50);

        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v163 = v47;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "UUID %@ is still in CloudKit; carry on.", buf, 0xCu);
        }

        v1 = v130;
        goto LABEL_59;
      }

      v52 = [*(v130 + 32) operationDependencies];
      v53 = [v52 contextID];
      v54 = *(v130 + 40);
      v144 = v38;
      v51 = [p_info + 296 tryFromDatabase:v47 contextID:v53 zoneID:v54 error:&v144];
      v55 = v144;

      if (v55)
      {
        v56 = [*(v130 + 40) zoneName];
        v57 = sub_100019104(@"ckksresync", v56);

        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v163 = v47;
          v164 = 2112;
          v165 = v55;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "Couldn't read an item from the database, but it used to be there: %@ %@", buf, 0x16u);
        }

        v38 = v55;
      }

      else
      {
        v58 = [*(v130 + 40) zoneName];
        v59 = sub_100019104(@"ckksresync", v58);

        v60 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
        if (v51)
        {
          if (v60)
          {
            *buf = 138412290;
            v163 = v47;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "BUG: Local item %@ not found in CloudKit, deleting", buf, 0xCu);
          }

          v61 = [*(v130 + 32) operationDependencies];
          v62 = [v51 item];
          v63 = [v62 storedCKRecord];
          v64 = [v63 recordID];
          v65 = [v51 item];
          v66 = [v65 storedCKRecord];
          v67 = [v66 recordType];
          [v61 intransactionCKRecordDeleted:v64 recordType:v67 resync:*(v130 + 80)];

          v1 = v130;
          v38 = 0;
          ++*(*(*(v130 + 72) + 8) + 24);
          v36 = v126;
          p_info = (&OBJC_METACLASS___CKKSMemoryKeyCache + 32);
          goto LABEL_58;
        }

        if (v60)
        {
          *buf = 138412290;
          v163 = v47;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Couldn't read ckme(%@) from database; continuing", buf, 0xCu);
        }

        v51 = 0;
        v38 = 0;
      }

      v1 = v130;
LABEL_58:
      v44 = v131;
LABEL_59:

      if (v132 == ++v46)
      {
        v68 = [v36 countByEnumeratingWithState:&v145 objects:v176 count:16];
        v132 = v68;
        if (!v68)
        {
          goto LABEL_65;
        }

        goto LABEL_42;
      }
    }
  }

  v38 = 0;
LABEL_67:
  v69 = [*(v1 + 32) operationDependencies];
  v70 = [v69 contextID];
  v71 = [*(v1 + 40) zoneName];
  v72 = [CKKSZoneStateEntry contextID:v70 zoneName:v71];

  v73 = +[NSDate date];
  [v72 setLastFetchTime:v73];

  [v72 setChangeToken:*(v1 + 64)];
  [v72 setMoreRecordsInCloudKit:*(v1 + 81)];
  v123 = v72;
  [v72 setFetchNewestChangesFirst:*(v1 + 82)];
  if ((*(v1 + 81) & 1) == 0 && *(v1 + 82) == 1)
  {
    [v72 setFetchNewestChangesFirst:0];
    v74 = [*(v1 + 40) zoneName];
    v75 = sub_100019104(@"ckksfetch", v74);

    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Finished syncing all changes from zone. Switching from reverse syncing to forward syncing", buf, 2u);
    }
  }

  v143 = v38;
  [v72 saveToDatabase:&v143];
  v76 = v143;

  v122 = v76;
  if (v76)
  {
    v77 = [*(v1 + 40) zoneName];
    v78 = sub_100019104(@"ckksfetch", v77);

    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v163 = v122;
      _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "Couldn't save new server change token: %@", buf, 0xCu);
    }
  }

  if ([*(v1 + 48) count])
  {
    v79 = *(v1 + 81);
  }

  else
  {
    v106 = [*(v1 + 56) count];
    v79 = *(v1 + 81);
    if (!v106 && (*(v1 + 81) & 1) == 0)
    {
      if ((*(v1 + 80) & 1) == 0)
      {
        v107 = [*(v1 + 40) zoneName];
        v108 = sub_100019104(@"ckksfetch", v107);

        if (os_log_type_enabled(&v108->super, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&_mh_execute_header, &v108->super, OS_LOG_TYPE_DEBUG, "No record changes in this fetch", buf, 2u);
        }

LABEL_119:

        goto LABEL_120;
      }

LABEL_79:
      v80 = [*(v1 + 32) zoneName];
      v81 = sub_100019104(@"ckksfetch", v80);

      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        v82 = *(v1 + 40);
        *buf = 138412290;
        v163 = v82;
        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Requesting incoming processing for %@", buf, 0xCu);
      }

      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v83 = [*(v1 + 32) operationDependencies];
      v84 = [v83 readyAndSyncingViews];

      obj = v84;
      v128 = [v84 countByEnumeratingWithState:&v139 objects:v175 count:16];
      if (v128)
      {
        v125 = 0;
        v127 = *v140;
        do
        {
          for (m = 0; m != v128; m = m + 1)
          {
            if (*v140 != v127)
            {
              objc_enumerationMutation(obj);
            }

            v86 = *(*(&v139 + 1) + 8 * m);
            v87 = [*(v1 + 32) operationDependencies];
            v88 = [v87 contextID];
            v89 = [v86 zoneID];
            v90 = [CKKSIncomingQueueEntry countNewEntriesByKeyWithContextID:v88 zoneID:v89 error:0];

            v137 = 0u;
            v138 = 0u;
            v135 = 0u;
            v136 = 0u;
            v133 = v90;
            v91 = [v133 countByEnumeratingWithState:&v135 objects:v174 count:16];
            if (v91)
            {
              v92 = v91;
              v129 = m;
              v93 = *v136;
              while (2)
              {
                for (n = 0; n != v92; n = n + 1)
                {
                  if (*v136 != v93)
                  {
                    objc_enumerationMutation(v133);
                  }

                  v95 = *(*(&v135 + 1) + 8 * n);
                  v96 = [v86 contextID];
                  v97 = [v86 zoneID];
                  v134 = 0;
                  v98 = [CKKSKey fromDatabase:v95 contextID:v96 zoneID:v97 error:&v134];
                  v99 = v134;

                  if (v98)
                  {
                    v100 = v99 == 0;
                  }

                  else
                  {
                    v100 = 0;
                  }

                  if (v100)
                  {
                    v104 = [v98 keyclass];
                    v105 = [v104 isEqualToString:@"classC"];

                    if (v105)
                    {

                      v125 = 1;
                      goto LABEL_103;
                    }
                  }

                  else
                  {
                    v101 = [v86 zoneID];
                    v102 = [v101 zoneName];
                    v103 = sub_100019104(@"ckksfetch", v102);

                    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      v163 = v95;
                      v164 = 2112;
                      v165 = v99;
                      _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_ERROR, "Unable to load key for %@: %@", buf, 0x16u);
                    }
                  }
                }

                v92 = [v133 countByEnumeratingWithState:&v135 objects:v174 count:16];
                if (v92)
                {
                  continue;
                }

                break;
              }

LABEL_103:
              v1 = v130;
              m = v129;
            }
          }

          v128 = [obj countByEnumeratingWithState:&v139 objects:v175 count:16];
        }

        while (v128);
      }

      else
      {
        v125 = 0;
      }

      v109 = [*(v1 + 32) lockStateTracker];
      v110 = [v109 isLocked];

      if (v110 && (v125 & 1) == 0)
      {
        v111 = sub_100019104(@"ckksfetch", 0);
        if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "Have incoming classA items needing processing, but device is locked", buf, 2u);
        }

        v108 = [[OctagonPendingFlag alloc] initWithFlag:@"process_incoming_queue" conditions:1];
        v112 = [*(v1 + 32) stateMachine];
        [v112 _onqueueHandlePendingFlagLater:v108];
      }

      else
      {
        v108 = [*(v1 + 32) stateMachine];
        [(OctagonPendingFlag *)v108 _onqueueHandleFlag:@"process_incoming_queue"];
      }

      goto LABEL_119;
    }
  }

  if ((v79 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_120:
  v113 = [*(v1 + 40) zoneName];
  v114 = sub_100019104(@"ckksfetch", v113);

  if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
  {
    v115 = [*(v1 + 48) count];
    v116 = *(v1 + 64);
    v117 = *(*(*(v1 + 72) + 8) + 24);
    v118 = *(v1 + 81);
    v119 = *(v1 + 80);
    v120 = *(v1 + 82);
    *buf = 134219266;
    v163 = v115;
    v164 = 2048;
    v165 = v117;
    v166 = 2048;
    v167 = v118;
    v168 = 1024;
    v169 = v119;
    v170 = 1024;
    v171 = v120;
    v172 = 2112;
    v173 = v116;
    _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "Finished processing changes: changed=%lu deleted=%lu moreComing=%lu resync=%u fetchNewestChangesFirst=%u changeToken=%@", buf, 0x36u);
  }

  v6 = 1;
  v3 = v122;
LABEL_123:

  return v6;
}

void sub_1001B4CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001B4CB8(uint64_t a1)
{
  if ([*(a1 + 32) _onQueueZoneIsReadyForFetching:*(a1 + 40)])
  {
    [*(*(*(a1 + 48) + 8) + 40) setParticipateInFetch:1];
    v2 = [*(a1 + 32) operationDependencies];
    v3 = [v2 contextID];
    v4 = [*(a1 + 40) zoneName];
    v5 = [CKKSZoneStateEntry contextID:v3 zoneName:v4];

    if (v5)
    {
      v6 = [v5 getChangeToken];
      [*(*(*(a1 + 48) + 8) + 40) setChangeToken:v6];

      [*(*(*(a1 + 48) + 8) + 40) setFetchNewestChangesFirst:{-[NSObject fetchNewestChangesFirst](v5, "fetchNewestChangesFirst")}];
    }

    else
    {
      v9 = [*(a1 + 32) zoneName];
      v10 = sub_100019104(@"ckksfetch", v9);

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [*(a1 + 40) zoneName];
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "couldn't fetch zone change token for %@", &v12, 0xCu);
      }

      v5 = 0;
    }
  }

  else
  {
    v7 = [*(a1 + 32) zoneName];
    v5 = sub_100019104(@"ckksfetch", v7);

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "skipping fetch for %@; zone is not ready", &v12, 0xCu);
    }
  }
}

id sub_1001B5324(uint64_t a1)
{
  result = [*(a1 + 32) _onQueueZoneIsReadyForFetching:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_1001B5768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1001B578C(uint64_t a1)
{
  v2 = [*(a1 + 32) zoneID];
  v3 = [*(a1 + 32) contextID];
  v4 = [CKKSCurrentKeySet loadForZone:v2 contextID:v3];

  v5 = [v4 currentTLKPointer];
  v6 = [v5 currentKeyUUID];

  if (v6)
  {
    v7 = [v4 currentTLKPointer];
    v8 = [v7 currentKeyUUID];
    v9 = [*(a1 + 32) contextID];
    v10 = [*(a1 + 32) zoneID];
    v39 = 0;
    v11 = [CKKSKey fromDatabaseAnyState:v8 contextID:v9 zoneID:v10 error:&v39];
    v12 = v39;

    if (v12)
    {
      v13 = [v12 domain];
      if ([v13 isEqualToString:@"securityd"])
      {
        v14 = [v12 code];

        if (v14 == -25300)
        {
          v15 = [*(a1 + 40) zoneName];
          v16 = sub_100019104(@"ckks", v15);

          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
LABEL_19:

            goto LABEL_20;
          }

          v17 = [v4 currentTLKPointer];
          v18 = [v17 currentKeyUUID];
          *buf = 138412290;
          v41 = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Do not have CKKSKey(%@) locally", buf, 0xCu);

LABEL_7:
          goto LABEL_19;
        }
      }

      else
      {
      }

      v26 = [*(a1 + 40) zoneName];
      v27 = sub_100019104(@"ckks", v26);

      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v41 = v12;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Unable to load CKKSKey TLK: %@", buf, 0xCu);
      }

      v28 = *(*(a1 + 48) + 8);
      v29 = v12;
      v16 = *(v28 + 40);
      *(v28 + 40) = v29;
      goto LABEL_19;
    }

    v38 = 0;
    v20 = [v11 loadKeyMaterialFromKeychain:&v38];
    v21 = v38;
    v22 = v38;
    v16 = v22;
    if (v20)
    {
      v23 = [*(a1 + 40) zoneName];
      v24 = sub_100019104(@"ckks", v23);

      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:

        *(*(*(a1 + 56) + 8) + 24) = 1;
        goto LABEL_19;
      }

      *buf = 138412290;
      v41 = v11;
      v25 = "Have TLK(%@) locally";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);
      goto LABEL_14;
    }

    v30 = [v22 domain];
    if ([v30 isEqualToString:@"securityd"])
    {
      v31 = [v16 code];

      if (v31 == -25308)
      {
        v32 = [*(a1 + 40) zoneName];
        v24 = sub_100019104(@"ckks", v32);

        if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *buf = 138412290;
        v41 = v11;
        v25 = "Have TLK(%@) locally, but device is locked";
        goto LABEL_13;
      }
    }

    else
    {
    }

    v33 = [v16 domain];
    if ([v33 isEqualToString:@"securityd"])
    {
      v34 = [v16 code];

      if (v34 == -25300)
      {
        v35 = [*(a1 + 40) zoneName];
        v17 = sub_100019104(@"ckks", v35);

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v41 = v11;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Do not have TLK(%@) locally", buf, 0xCu);
        }

        goto LABEL_7;
      }
    }

    else
    {
    }

    v36 = [*(a1 + 40) zoneName];
    v37 = sub_100019104(@"ckks", v36);

    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v41 = v11;
      v42 = 2112;
      v43 = v16;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Do not have TLK(%@) locally with unexpected error: %@", buf, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v21);
    goto LABEL_19;
  }

  v19 = [*(a1 + 40) zoneName];
  v12 = sub_100019104(@"ckks", v19);

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No current TLK in keyset: %@", buf, 0xCu);
  }

LABEL_20:
}

void sub_1001B60B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_1001B60F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained cloudKitClassDependencies];
  v3 = [v2 notifierClass];
  v4 = [NSString stringWithFormat:@"com.apple.security.view-change.%@", *(a1 + 32)];
  [v3 post:v4];

  v5 = [WeakRetained cloudKitClassDependencies];
  v6 = [v5 notifierClass];
  v7 = [NSString stringWithUTF8String:"com.apple.security.keychainchanged"];
  [v6 post:v7];

  if (([*(a1 + 32) isEqualToString:@"Manatee"] & 1) != 0 || (objc_msgSend(*(a1 + 32), "isEqualToString:", @"Engram") & 1) != 0 || (objc_msgSend(*(a1 + 32), "isEqualToString:", @"ApplePay") & 1) != 0 || (objc_msgSend(*(a1 + 32), "isEqualToString:", @"Home") & 1) != 0 || objc_msgSend(*(a1 + 32), "isEqualToString:", @"LimitedPeersAllowed"))
  {
    v8 = [WeakRetained cloudKitClassDependencies];
    [objc_msgSend(v8 "notifierClass")];
  }
}

void sub_1001B6260(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained cloudKitClassDependencies];
  v4 = [objc_msgSend(v3 "nsdistributednotificationCenterClass")];

  v5 = @"unknown";
  if (*(a1 + 32))
  {
    v5 = *(a1 + 32);
  }

  v10 = @"view";
  v11 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [v4 postNotificationName:@"com.apple.security.view-become-ready" object:0 userInfo:v6 options:0];

  v7 = [WeakRetained cloudKitClassDependencies];
  v8 = [v7 notifierClass];
  v9 = [NSString stringWithFormat:@"com.apple.security.view-ready.%@", *(a1 + 32)];
  [v8 post:v9];
}

void sub_1001B6D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_1001B6D58(uint64_t a1)
{
  v1 = a1;
  v2 = [*(a1 + 32) operationDependencies];
  v87 = [v2 syncingPolicy];

  v3 = [*(v1 + 32) operationDependencies];
  v4 = [v3 allViews];
  v5 = [v4 mutableCopy];

  v85 = +[NSMutableSet set];
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v105 objects:v120 count:16];
  v92 = v1;
  if (v6)
  {
    v7 = v6;
    v8 = *v106;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v106 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v105 + 1) + 8 * i);
        v11 = *(v1 + 40);
        v12 = [v10 zoneID];
        v13 = [v12 zoneName];
        LODWORD(v11) = [v11 containsObject:v13];

        if (v11)
        {
          v14 = [v10 zoneID];
          v15 = [v14 zoneName];
          v16 = [v87 isSyncingEnabledForView:v15];

          v17 = *(v1 + 48);
          v18 = [v10 zoneID];
          v19 = [v18 zoneName];
          v20 = [v17 isSyncingEnabledForView:v19];

          v21 = [v10 zoneID];
          v22 = [v21 zoneName];
          v23 = sub_100019104(@"ckks", v22);

          v1 = v92;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [v10 zoneID];
            v25 = [v24 zoneName];
            v26 = v25;
            v27 = *(v92 + 48);
            v28 = @"paused";
            if (v20)
            {
              v29 = @"enabled";
            }

            else
            {
              v29 = @"paused";
            }

            *buf = 138413058;
            if (v16)
            {
              v28 = @"enabled";
            }

            v113 = v25;
            v114 = 2112;
            v115 = v29;
            v116 = 2112;
            v117 = v28;
            v118 = 2112;
            v119 = v27;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Syncing for %@ is now %@ (used to be %@) (policy: %@)", buf, 0x2Au);
          }
        }

        else
        {
          v30 = *(v1 + 56);
          v31 = [v10 zoneID];
          v32 = [v31 zoneName];
          LOBYTE(v30) = [v30 containsObject:v32];

          if ((v30 & 1) == 0)
          {
            v33 = sub_100019104(@"ckks-policy", 0);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v34 = [v10 zoneID];
              v35 = [v34 zoneName];
              *buf = 138412290;
              v113 = v35;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Stopping old view %@", buf, 0xCu);
            }

            [v85 addObject:v10];
            *(*(*(v1 + 64) + 8) + 24) = 1;
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v105 objects:v120 count:16];
    }

    while (v7);
  }

  v36 = obj;

  [obj minusSet:v85];
  [*(v1 + 40) setByAddingObjectsFromSet:*(v1 + 56)];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v88 = v104 = 0u;
  v90 = [v88 countByEnumeratingWithState:&v101 objects:v111 count:16];
  if (!v90)
  {
    v73 = [*(v1 + 32) operationDependencies];
    [v73 applyNewSyncingPolicy:*(v1 + 48) viewStates:obj];

    v72 = @"check_queues";
    goto LABEL_61;
  }

  v86 = 0;
  v89 = *v102;
  do
  {
    for (j = 0; j != v90; j = j + 1)
    {
      if (*v102 != v89)
      {
        objc_enumerationMutation(v88);
      }

      v38 = *(*(&v101 + 1) + 8 * j);
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v39 = v36;
      v40 = [v39 countByEnumeratingWithState:&v97 objects:v110 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v98;
LABEL_28:
        v43 = 0;
        while (1)
        {
          if (*v98 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v97 + 1) + 8 * v43);
          v45 = [v44 zoneID];
          v46 = [v45 zoneName];
          v47 = [v46 isEqualToString:v38];

          if (v47)
          {
            break;
          }

          if (v41 == ++v43)
          {
            v41 = [v39 countByEnumeratingWithState:&v97 objects:v110 count:16];
            if (v41)
            {
              goto LABEL_28;
            }

            goto LABEL_34;
          }
        }

        v48 = v44;

        if (!v48)
        {
          goto LABEL_37;
        }

        v36 = obj;
        v1 = v92;
      }

      else
      {
LABEL_34:

LABEL_37:
        v49 = [*(v92 + 32) operationDependencies];
        v50 = [v49 contextID];
        v51 = [CKKSZoneStateEntry contextID:v50 zoneName:v38];

        v52 = [*(v92 + 40) containsObject:v38];
        v53 = [v51 getChangeToken];

        v54 = [*(v92 + 48) priorityViews];
        v55 = [v54 containsObject:v38];

        v56 = *(v92 + 32);
        v57 = [v51 contextID];
        v48 = [v56 createViewState:v38 contextID:v57 zoneIsNew:v53 == 0 priorityView:v55 ckksManagedView:v52];

        [v39 addObject:v48];
        v58 = [(__CFString *)v48 zoneID];
        v59 = [v58 zoneName];
        v60 = sub_100019104(@"ckks", v59);

        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          v61 = @"normal";
          if (v55)
          {
            v61 = @"priority";
          }

          *buf = 138412802;
          v113 = v61;
          v62 = @"externally-managed";
          if (v52)
          {
            v62 = @"CKKS";
          }

          v114 = 2112;
          v115 = v62;
          v116 = 2112;
          v117 = v48;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Created %@ %@ view %@", buf, 0x20u);
        }

        if (v53)
        {
          v63 = 0;
        }

        else
        {
          v63 = v55;
        }

        v36 = obj;
        v1 = v92;
        if (v63 == 1)
        {
          v64 = [(__CFString *)v48 zoneID];
          v65 = [v64 zoneName];
          v66 = sub_100019104(@"ckks", v65);

          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Initializing a priority view for the first time", buf, 2u);
          }

          v86 = 1;
        }

        if (v55 && [v51 moreRecordsInCloudKit])
        {
          v67 = [(__CFString *)v48 zoneID];
          v68 = [v67 zoneName];
          v69 = sub_100019104(@"ckks", v68);

          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "A priority view has more records in CloudKit; treating as new", buf, 2u);
          }

          v86 = 1;
        }

        *(*(*(v92 + 72) + 8) + 24) = 1;
      }
    }

    v90 = [v88 countByEnumeratingWithState:&v101 objects:v111 count:16];
  }

  while (v90);
  v70 = [*(v1 + 32) operationDependencies];
  [v70 applyNewSyncingPolicy:*(v1 + 48) viewStates:v36];

  v71 = [*(v1 + 32) stateMachine];
  [v71 _onqueueHandleFlag:@"check_queues"];

  if (v86)
  {
    [*(v1 + 32) onqueueCreatePriorityViewsProcessedWatcher];
    v72 = @"new_priority_views";
LABEL_61:
    v74 = [*(v1 + 32) stateMachine];
    [v74 _onqueueHandleFlag:v72];
  }

  if (*(*(*(v1 + 72) + 8) + 24) == 1 && *(v1 + 80) == 1)
  {
    v75 = [*(v1 + 32) stateMachine];
    [v75 _onqueueHandleFlag:@"key_process_requested"];
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v76 = v36;
  v77 = [v76 countByEnumeratingWithState:&v93 objects:v109 count:16];
  if (v77)
  {
    v78 = v77;
    v79 = *v94;
    do
    {
      for (k = 0; k != v78; k = k + 1)
      {
        if (*v94 != v79)
        {
          objc_enumerationMutation(v76);
        }

        v81 = *(*(&v93 + 1) + 8 * k);
        v82 = [*(v1 + 32) zoneChangeFetcher];
        v83 = *(v1 + 32);
        v84 = [v81 zoneID];
        [v82 registerClient:v83 zoneID:v84];
      }

      v78 = [v76 countByEnumeratingWithState:&v93 objects:v109 count:16];
    }

    while (v78);
  }
}

void sub_1001B790C(uint64_t a1)
{
  v2 = [*(a1 + 32) zoneName];
  v3 = sub_100019104(@"ckkstrust", v2);

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ending trusted operation", v9, 2u);
  }

  v4 = [*(a1 + 32) operationDependencies];
  [v4 setPeerProviders:&__NSArray0__struct];

  [*(a1 + 32) setSuggestTLKUpload:0];
  [*(a1 + 32) setTrustStatus:3];
  v5 = [*(a1 + 32) trustStatusKnown];
  [v5 fulfill];

  v6 = [*(a1 + 32) stateMachine];
  [v6 _onqueueHandleFlag:@"trusted_operation_end"];

  v7 = [*(a1 + 32) operationDependencies];
  v8 = [v7 overallLaunch];
  [v8 addEvent:@"trust-loss"];
}

void sub_1001B7D28(uint64_t a1)
{
  v2 = [*(a1 + 32) zoneName];
  v3 = sub_100019104(@"ckkstrust", v2);

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Beginning trusted operation", buf, 2u);
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) operationDependencies];
  [v5 setPeerProviders:v4];

  v6 = *(a1 + 48);
  v7 = [*(a1 + 32) operationDependencies];
  [v7 setRequestPolicyCheck:v6];

  v8 = [*(a1 + 32) trustStatus];
  [*(a1 + 32) setSuggestTLKUpload:*(a1 + 56)];
  [*(a1 + 32) setTrustStatus:1];
  v9 = [*(a1 + 32) trustStatusKnown];
  [v9 fulfill];

  v10 = [*(a1 + 32) stateMachine];
  [v10 _onqueueHandleFlag:@"trusted_operation_begin"];

  v11 = [*(a1 + 32) stateMachine];
  [v11 _onqueueHandleFlag:@"key_process_requested"];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = [*(a1 + 32) operationDependencies];
  v13 = [v12 allCKKSManagedViews];

  v14 = [v13 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      v17 = 0;
      do
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v25 + 1) + 8 * v17) launch];
        [v18 addEvent:@"trust"];

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v15);
  }

  v19 = [*(a1 + 32) operationDependencies];
  v20 = [v19 overallLaunch];
  [v20 addEvent:@"trust"];

  if (v8 == 3)
  {
    v21 = [*(a1 + 32) zoneName];
    v22 = sub_100019104(@"ckkstrust", v21);

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Moving from an untrusted status; we need to process incoming queue and scan for any new items", buf, 2u);
    }

    v23 = [*(a1 + 32) stateMachine];
    [v23 _onqueueHandleFlag:@"process_incoming_queue"];

    v24 = [*(a1 + 32) stateMachine];
    [v24 _onqueueHandleFlag:@"dropped_items"];

    [*(a1 + 32) onqueueCreatePriorityViewsProcessedWatcher];
  }
}

void sub_1001B815C(uint64_t a1)
{
  v2 = [*(a1 + 32) zoneName];
  v3 = sub_100019104(@"ckkszone", v2);

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "received a notification of CK logout", v8, 2u);
  }

  [*(a1 + 32) setAccountStatus:3];
  v4 = [CKKSCondition alloc];
  v5 = [*(a1 + 32) loggedIn];
  v6 = [(CKKSCondition *)v4 initToChain:v5];
  [*(a1 + 32) setLoggedIn:v6];

  v7 = [*(a1 + 32) loggedOut];
  [v7 fulfill];
}

void sub_1001B84F4(uint64_t a1)
{
  v2 = [*(a1 + 32) zoneName];
  v3 = sub_100019104(@"ckkszone", v2);

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "received a notification of CK login", v8, 2u);
  }

  [*(a1 + 32) setAccountStatus:1];
  v4 = [CKKSCondition alloc];
  v5 = [*(a1 + 32) loggedOut];
  v6 = [(CKKSCondition *)v4 initToChain:v5];
  [*(a1 + 32) setLoggedOut:v6];

  v7 = [*(a1 + 32) loggedIn];
  [v7 fulfill];
}

void sub_1001B8DB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1001B8DD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained zoneName];
  v4 = sub_100019104(@"ckkszone", v3);

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }
}

void sub_1001B9644(uint64_t a1)
{
  v2 = [*(a1 + 32) operationDependencies];
  v3 = [v2 contextID];
  v4 = *(a1 + 40);
  v9 = 0;
  v5 = [CKKSZoneStateEntry fromDatabase:v3 zoneName:v4 error:&v9];
  v6 = v9;

  v7 = *(a1 + 48);
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    (*(v7 + 16))(v7, [v5 initialSyncFinished], 0);
  }

  else
  {
    (*(v7 + 16))(v7, 0, v6);
  }
}

void sub_1001B983C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001B985C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001B990C;
  v3[3] = &unk_100344DC8;
  v4 = a1[4];
  v5 = a1[5];
  [WeakRetained dispatchSyncWithReadOnlySQLTransaction:v3];
}

void sub_1001B990C(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v16;
    while (2)
    {
      v7 = 0;
      v8 = v5;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * v7);
        v10 = [*(a1 + 32) objectForKeyedSubscript:v9];
        v14 = v8;
        v11 = [CKKSMirrorEntry pcsMirrorKeysForService:v9 matchingKeys:v10 error:&v14];
        v5 = v14;

        if (!v11)
        {
          v12 = sub_100019104(@"ckks", 0);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v20 = v9;
            v21 = 2112;
            v22 = v5;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Error getting PCS key hash for service %@: %@", buf, 0x16u);
          }

          v2 = 0;
          goto LABEL_14;
        }

        [v2 setObject:v11 forKeyedSubscript:v9];

        v7 = v7 + 1;
        v8 = v5;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v15 objects:v23 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_14:

  (*(*(a1 + 40) + 16))();
}

void sub_1001B9C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001B9C24(uint64_t a1)
{
  [*(a1 + 32) setHavoc:{objc_msgSend(*(a1 + 32), "havoc") ^ 1}];
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) havoc];
  v2 = sub_100019104(@"havoc", 0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) havoc];
    v4 = @"OFF";
    if (v3)
    {
      v4 = @"ON";
    }

    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Havoc is now %@", &v5, 0xCu);
  }
}

void sub_1001B9FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001B9FF4(uint64_t a1)
{
  v2 = [*(a1 + 32) accountStatus];
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = [v3 operationDependencies];
    v5 = [v4 syncingPolicy];

    if (v5)
    {
      if ([*(a1 + 32) trustStatus] == 1)
      {
        goto LABEL_11;
      }

      v6 = @"No iCloud Keychain Trust";
      v7 = 52;
    }

    else
    {
      v6 = @"Syncing policy not yet loaded";
      v7 = 56;
    }
  }

  else if ([v3 accountStatus])
  {
    v6 = @"User is not signed into iCloud.";
    v7 = 10;
  }

  else
  {
    v6 = @"iCloud account status unknown.";
    v7 = 64;
  }

  v8 = [NSError errorWithDomain:@"CKKSErrorDomain" code:v7 description:v6];
  if (v8)
  {
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001BA39C;
    v28[3] = &unk_100343BA0;
    v29 = v8;
    v9 = v8;
    v10 = [CKKSResultOperation named:@"rpcWaitForPriorityViewProcessing-fail" withBlockTakingSelf:v28];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = [*(a1 + 32) operationQueue];
    [v13 addOperation:*(*(*(a1 + 40) + 8) + 40)];

    goto LABEL_21;
  }

LABEL_11:
  v14 = [*(a1 + 32) priorityViewsProcessed];
  v15 = [v14 result];
  v16 = [v15 error];

  if (v16)
  {
    v17 = sub_100019104(@"ckksrpc", 0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "priorityViewsProcessed already ran and hit an error, re-setting up priority views watcher", buf, 2u);
    }

    [*(a1 + 32) onqueueCreatePriorityViewsProcessedWatcher];
  }

  v18 = [*(a1 + 32) priorityViewsProcessed];
  v19 = [v18 result];
  v20 = *(*(a1 + 40) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  v22 = *(*(*(a1 + 40) + 8) + 40);
  v9 = sub_100019104(@"ckksrpc", 0);
  v23 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (v23)
    {
      v24 = [*(a1 + 32) priorityViewsProcessed];
      *buf = 138412290;
      v31 = v24;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "waitForPriorityViews pending on %@", buf, 0xCu);
    }
  }

  else
  {
    if (v23)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Returning success for waitForPriorityViews", buf, 2u);
    }

    v25 = [CKKSResultOperation named:@"waitForPriority-succeed" withBlock:&stru_100343EA0];
    v26 = *(*(a1 + 40) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;

    v9 = [*(a1 + 32) operationQueue];
    [v9 addOperation:*(*(*(a1 + 40) + 8) + 40)];
  }

LABEL_21:
}

void sub_1001BA39C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100019104(@"ckksrpc", 0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Returning failure for waitForPriorityViews: %@", &v6, 0xCu);
  }

  [v3 setError:*(a1 + 32)];
}

void sub_1001BACE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001BAD1C(uint64_t a1)
{
  v2 = [*(a1 + 32) operationDependencies];
  v3 = [v2 currentFetchReasons];
  [v3 addObject:*(a1 + 40)];

  v4 = [*(a1 + 32) stateMachine];
  [v4 _onqueueHandleFlag:@"fetch_requested"];
}

void sub_1001BADA8(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = [a1[4] result];
  v6 = [v5 error];

  if (v6)
  {
    v7 = sub_100019104(@"ckksrpc", 0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "rpcFetchAndProcess failed: %@", buf, 0xCu);
    }

    [v3 setError:v6];
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001BAF30;
    v8[3] = &unk_100343C28;
    v9 = a1[5];
    v10 = WeakRetained;
    v11 = v3;
    [WeakRetained dispatchSyncWithReadOnlySQLTransaction:v8];
  }
}

void sub_1001BAF30(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [*(a1 + 40) viewList];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(a1 + 40) viewStateForName:*(*(&v18 + 1) + 8 * i)];
        v10 = [v9 zoneID];
        v11 = [v9 contextID];
        v12 = [CKKSCurrentKeySet loadForZone:v10 contextID:v11];

        v13 = [v12 tlk];

        if (!v13)
        {
          v14 = [*(a1 + 40) zoneName];
          v15 = sub_100019104(@"ckks", v14);

          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v23 = v9;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No local TLKs for %@; failing a fetch rpc", buf, 0xCu);
          }

          v16 = [NSString stringWithFormat:@"No local keys for %@ processing queue will fail", v9];;
          v17 = [NSError errorWithDomain:@"CKKSErrorDomain" code:53 description:v16];
          [*(a1 + 48) setError:v17];

          goto LABEL_16;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
}

void sub_1001BB678(uint64_t a1)
{
  v2 = [*(a1 + 32) operationDependencies];
  v3 = [v2 currentFetchReasons];
  [v3 addObject:*(a1 + 40)];

  v4 = [*(a1 + 32) stateMachine];
  [v4 _onqueueHandleFlag:@"fetch_requested"];
}

void sub_1001BB704(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) result];
  v5 = [v4 error];

  v6 = sub_100019104(@"ckksrpc", 0);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "rpcFetch failed: %@", &v8, 0xCu);
    }

    [v3 setError:v5];
  }

  else
  {
    if (v7)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "rpcFetch succeeded", &v8, 2u);
    }
  }
}

void sub_1001BBE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001BBE38(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  v3 = [v2 currentState];
  v4 = [v3 isEqualToString:@"loggedout"];

  if (v4)
  {
    v5 = [CKKSResultOperation named:@"fail" withBlockTakingSelf:&stru_100343DD0];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = [*(a1 + 32) viewList];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v11)
  {
    goto LABEL_22;
  }

  v12 = v11;
  v13 = *v30;
  while (2)
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v30 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = [*(a1 + 32) viewStateForName:*(*(&v29 + 1) + 8 * i)];
      v16 = [v15 viewKeyHierarchyState];
      v17 = [v16 isEqualToString:@"waitfortlk"];

      if (v17)
      {
        v20 = &stru_100343DF0;
LABEL_19:
        v21 = [CKKSResultOperation named:@"fail" withBlockTakingSelf:v20];
        v22 = *(*(a1 + 48) + 8);
        v23 = *(v22 + 40);
        *(v22 + 40) = v21;
LABEL_21:

        goto LABEL_22;
      }

      v18 = [v15 viewKeyHierarchyState];
      v19 = [v18 isEqualToString:@"waitfortrust"];

      if (v19)
      {
        v20 = &stru_100343E10;
        goto LABEL_19;
      }

      if (([v15 ckksManagedView] & 1) == 0)
      {
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_1001BC124;
        v27[3] = &unk_100343BA0;
        v15 = v15;
        v28 = v15;
        v24 = [CKKSResultOperation named:@"fail" withBlockTakingSelf:v27];
        v25 = *(*(a1 + 48) + 8);
        v26 = *(v25 + 40);
        *(v25 + 40) = v24;

        v23 = v28;
        goto LABEL_21;
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_22:
}

void sub_1001BC124(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v2 zoneName];
  v4 = [NSString stringWithFormat:@"Cannot push view %@ is externally managed", v6];;
  v5 = [NSError errorWithDomain:@"CKKSErrorDomain" code:63 description:v4];
  [v3 setError:v5];
}

void sub_1001BC1E0(id a1, CKKSResultOperation *a2)
{
  v2 = a2;
  v3 = [NSError errorWithDomain:@"CKKSErrorDomain" code:52 description:@"No trust push will not succeed."];;
  [(CKKSResultOperation *)v2 setError:v3];
}

void sub_1001BC25C(id a1, CKKSResultOperation *a2)
{
  v2 = a2;
  v3 = [NSError errorWithDomain:@"CKKSErrorDomain" code:53 description:@"No TLKs for this view push will not succeed."];;
  [(CKKSResultOperation *)v2 setError:v3];
}

void sub_1001BC2D8(id a1, CKKSResultOperation *a2)
{
  v2 = a2;
  v3 = [NSError errorWithDomain:@"CKKSErrorDomain" code:10 description:@"No CloudKit account push will not succeed."];;
  [(CKKSResultOperation *)v2 setError:v3];
}

void sub_1001BC5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001BC5F4(uint64_t a1)
{
  v5 = [*(a1 + 32) operationDependencies];
  v2 = [v5 viewsInState:@"waitfortlkcreation"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_1001BC7B8(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = [*(a1 + 40) operationDependencies];
        [v8 intransactionCKRecordChanged:v7 resync:0];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = [*(a1 + 40) stateMachine];
  [v9 _onqueueHandleFlag:@"key_process_requested"];

  return 1;
}

void sub_1001BCA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001BCA64(uint64_t a1)
{
  v2 = [*(a1 + 32) operationDependencies];
  v3 = [v2 currentFetchReasons];
  [v3 addObject:@"keyset"];

  v4 = [*(a1 + 32) stateMachine];
  [v4 _onqueueHandleFlag:@"fetch_requested"];
}

void sub_1001BCAF4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 operationDependencies];
  v4 = [v3 keysetProviderOperations];
  v5 = [v2 findFirstPendingOperation:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v8 = +[NSMutableSet set];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v9 = [*(a1 + 32) operationDependencies];
    v10 = [v9 allCKKSManagedViews];

    v11 = [v10 countByEnumeratingWithState:&v57 objects:v66 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v58;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v58 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v57 + 1) + 8 * i) zoneID];
          [v8 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v57 objects:v66 count:16];
      }

      while (v12);
    }

    v16 = [[CKKSProvideKeySetOperation alloc] initWithIntendedZoneIDs:v8];
    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v19 = [*(a1 + 32) operationDependencies];
    v20 = [v19 keysetProviderOperations];
    [v20 addObject:*(*(*(a1 + 40) + 8) + 40)];

    [*(a1 + 32) scheduleOperationWithoutDependencies:*(*(*(a1 + 40) + 8) + 40)];
  }

  v21 = +[NSMutableDictionary dictionary];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v49 = a1;
  v22 = [*(a1 + 32) operationDependencies];
  v23 = [v22 allCKKSManagedViews];

  obj = v23;
  v52 = [v23 countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v52)
  {
    v24 = *v54;
LABEL_12:
    v25 = 0;
    while (1)
    {
      if (*v54 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v53 + 1) + 8 * v25);
      v27 = [v26 zoneID];
      v28 = [v26 contextID];
      v29 = [CKKSCurrentKeySet loadForZone:v27 contextID:v28];

      v30 = [v29 currentTLKPointer];
      v31 = [v30 currentKeyUUID];
      if (!v31)
      {

LABEL_29:
        v44 = [v26 zoneID];
        v45 = [v44 zoneName];
        v46 = sub_100019104(@"ckks", v45);

        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = [v26 zoneID];
          *buf = 138412546;
          v62 = v47;
          v63 = 2112;
          v64 = v29;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "No current keyset for %@ (%@)", buf, 0x16u);
        }

        v48 = [*(v49 + 32) stateMachine];
        [v48 _onqueueHandleFlag:@"key_set"];

        goto LABEL_32;
      }

      v32 = v31;
      v33 = [v29 tlk];
      v34 = [v33 uuid];
      if (!v34)
      {
        v35 = v24;
        v36 = v21;
        v37 = [v26 viewKeyHierarchyState];
        if (([v37 isEqualToString:@"waitfortrust"] & 1) == 0)
        {
          v42 = [v26 viewKeyHierarchyState];
          v50 = [v42 isEqualToString:@"waitfortlk"];

          v21 = v36;
          v24 = v35;
          if ((v50 & 1) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_20;
        }

        v21 = v36;
        v24 = v35;
      }

LABEL_20:
      v38 = [v26 zoneID];
      v39 = [v38 zoneName];
      v40 = sub_100019104(@"ckks", v39);

      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v62 = v29;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Already have keyset %@", buf, 0xCu);
      }

      v41 = [v26 zoneID];
      [v21 setObject:v29 forKeyedSubscript:v41];

      if (v52 == ++v25)
      {
        v43 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
        v52 = v43;
        if (v43)
        {
          goto LABEL_12;
        }

        break;
      }
    }
  }

  [*(*(*(v49 + 40) + 8) + 40) provideKeySets:v21];
LABEL_32:
}

void sub_1001BEA38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak((v33 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001BEA64(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!v9)
  {
    v45 = a1;
    v47 = v7;
    v12 = objc_alloc_init(CKKSMemoryKeyCache);
    v13 = [WeakRetained operationDependencies];
    v14 = [v13 contextID];
    [(CKKSMemoryKeyCache *)v12 populateWithRecords:v8 contextID:v14];

    v53 = +[NSMutableSet set];
    v15 = v12;
    v49 = +[NSMutableSet set];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v46 = v8;
    obj = v8;
    v16 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
    v50 = v12;
    if (!v16)
    {
      goto LABEL_23;
    }

    v17 = v16;
    v18 = *v62;
    while (1)
    {
      v19 = 0;
      do
      {
        if (*v62 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v61 + 1) + 8 * v19);
        v21 = [CKKSKey alloc];
        v22 = [WeakRetained operationDependencies];
        v23 = [v22 contextID];
        v24 = [(CKKSCKRecordHolder *)v21 initWithCKRecord:v20 contextID:v23];

        v25 = [WeakRetained operationDependencies];
        v26 = [v25 contextID];
        v60 = 0;
        v27 = [(CKKSKey *)v24 ensureKeyLoadedForContextID:v26 cache:v15 error:&v60];
        v28 = v60;

        v29 = v53;
        if (!v27)
        {
          if (v28)
          {
            v30 = sub_100019104(@"ckks-oob", 0);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v67 = v28;
              _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Could not find key material in keychain: %@", buf, 0xCu);
            }
          }

          v31 = [(CKKSKey *)v24 keyclass];
          if ([v31 isEqual:@"tlk"])
          {
            v32 = [(CKKSKey *)v24 parentKeyUUID];
            v33 = [(CKKSKey *)v24 uuid];
            v34 = [v32 isEqualToString:v33];

            v29 = v53;
            v35 = v49;
            if (v34)
            {
              goto LABEL_20;
            }
          }

          else
          {
          }

          v35 = v29;
LABEL_20:
          [v35 addObject:v24];
          v15 = v50;
        }

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
      if (!v17)
      {
LABEL_23:

        if ([v49 count])
        {
          v44 = [WeakRetained cuttlefishAdapter];
          v36 = *(v45 + 32);
          obja = [WeakRetained accountTracker];
          v43 = [obja octagonPeerID];
          v48 = [WeakRetained operationDependencies];
          v37 = [v48 contextID];
          v38 = [WeakRetained operationDependencies];
          v39 = [v38 activeAccount];
          v40 = [v39 altDSID];
          v54[0] = _NSConcreteStackBlock;
          v54[1] = 3221225472;
          v54[2] = sub_1001BF004;
          v54[3] = &unk_100343D68;
          v59 = *(v45 + 40);
          v54[4] = WeakRetained;
          v55 = v50;
          v56 = v49;
          v41 = v53;
          v57 = v53;
          v7 = v47;
          v58 = v47;
          LOBYTE(v42) = 0;
          [v44 fetchRecoverableTLKShares:v36 peerID:v43 contextID:v37 altDSID:v40 flowID:0 deviceSessionID:0 canSendMetrics:v42 reply:v54];

          v15 = v50;
          v9 = 0;
        }

        else
        {
          v7 = v47;
          [WeakRetained decryptPCSIdentities:v47 cache:v15 complete:*(v45 + 40)];
          v9 = 0;
          v41 = v53;
        }

        v8 = v46;
        goto LABEL_27;
      }
    }
  }

  v11 = sub_100019104(@"ckks-oob", 0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v67 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "error getting pcs identities: %@", buf, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
LABEL_27:
}

void sub_1001BF004(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 && !v5)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v22 = 0;
    v10 = [v7 unwrapTLKAndSaveToCache:v8 tlks:v9 tlkShares:a2 error:&v22];
    v11 = v22;
    v12 = v11;
    if (!v10 || v11)
    {
      v19 = sub_100019104(@"ckks-oob", 0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v12;
        v20 = "Errored unwrapping TLK Shares, quitting: %@";
LABEL_15:
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);
      }
    }

    else
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v15 = *(a1 + 56);
      v21 = 0;
      v16 = [v13 unwrapKeysAndSaveToCache:v14 syncKeys:v15 error:&v21];
      v17 = v21;
      v12 = v17;
      if (v16 && !v17)
      {
        [*(a1 + 32) decryptPCSIdentities:*(a1 + 64) cache:*(a1 + 40) complete:*(a1 + 72)];
        goto LABEL_17;
      }

      v19 = sub_100019104(@"ckks-oob", 0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v12;
        v20 = "Errored unwrapping sync keys, quitting: %@";
        goto LABEL_15;
      }
    }

    (*(*(a1 + 72) + 16))();
    goto LABEL_17;
  }

  v18 = sub_100019104(@"ckks-oob", 0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Errored fetching TLK shares: %@", buf, 0xCu);
  }

  (*(*(a1 + 72) + 16))();
LABEL_17:
}

void sub_1001BF9E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak((v33 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001BFA0C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!v9)
  {
    v45 = a1;
    v47 = v7;
    v12 = objc_alloc_init(CKKSMemoryKeyCache);
    v13 = [WeakRetained operationDependencies];
    v14 = [v13 contextID];
    [(CKKSMemoryKeyCache *)v12 populateWithRecords:v8 contextID:v14];

    v53 = +[NSMutableSet set];
    v15 = v12;
    v49 = +[NSMutableSet set];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v46 = v8;
    obj = v8;
    v16 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
    v50 = v12;
    if (!v16)
    {
      goto LABEL_23;
    }

    v17 = v16;
    v18 = *v62;
    while (1)
    {
      v19 = 0;
      do
      {
        if (*v62 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v61 + 1) + 8 * v19);
        v21 = [CKKSKey alloc];
        v22 = [WeakRetained operationDependencies];
        v23 = [v22 contextID];
        v24 = [(CKKSCKRecordHolder *)v21 initWithCKRecord:v20 contextID:v23];

        v25 = [WeakRetained operationDependencies];
        v26 = [v25 contextID];
        v60 = 0;
        v27 = [(CKKSKey *)v24 ensureKeyLoadedForContextID:v26 cache:v15 error:&v60];
        v28 = v60;

        v29 = v53;
        if (!v27)
        {
          if (v28)
          {
            v30 = sub_100019104(@"ckks-oob", 0);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v67 = v28;
              _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Could not find key material in keychain: %@", buf, 0xCu);
            }
          }

          v31 = [(CKKSKey *)v24 keyclass];
          if ([v31 isEqual:@"tlk"])
          {
            v32 = [(CKKSKey *)v24 parentKeyUUID];
            v33 = [(CKKSKey *)v24 uuid];
            v34 = [v32 isEqualToString:v33];

            v29 = v53;
            v35 = v49;
            if (v34)
            {
              goto LABEL_20;
            }
          }

          else
          {
          }

          v35 = v29;
LABEL_20:
          [v35 addObject:v24];
          v15 = v50;
        }

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
      if (!v17)
      {
LABEL_23:

        if ([v49 count])
        {
          v44 = [WeakRetained cuttlefishAdapter];
          v36 = *(v45 + 32);
          obja = [WeakRetained accountTracker];
          v43 = [obja octagonPeerID];
          v48 = [WeakRetained operationDependencies];
          v37 = [v48 contextID];
          v38 = [WeakRetained operationDependencies];
          v39 = [v38 activeAccount];
          v40 = [v39 altDSID];
          v54[0] = _NSConcreteStackBlock;
          v54[1] = 3221225472;
          v54[2] = sub_1001BFFAC;
          v54[3] = &unk_100343D68;
          v59 = *(v45 + 40);
          v54[4] = WeakRetained;
          v55 = v50;
          v56 = v49;
          v41 = v53;
          v57 = v53;
          v7 = v47;
          v58 = v47;
          LOBYTE(v42) = 0;
          [v44 fetchRecoverableTLKShares:v36 peerID:v43 contextID:v37 altDSID:v40 flowID:0 deviceSessionID:0 canSendMetrics:v42 reply:v54];

          v15 = v50;
          v9 = 0;
        }

        else
        {
          v7 = v47;
          [WeakRetained decryptCurrentItems:v47 cache:v15 complete:*(v45 + 40)];
          v9 = 0;
          v41 = v53;
        }

        v8 = v46;
        goto LABEL_27;
      }
    }
  }

  v11 = sub_100019104(@"ckks-oob", 0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v67 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "error getting current items: %@", buf, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
LABEL_27:
}

void sub_1001BFFAC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 && !v5)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v20 = 0;
    [v7 unwrapTLKAndSaveToCache:v8 tlks:v9 tlkShares:a2 error:&v20];
    v10 = v20;
    if (v10)
    {
      v11 = v10;
      v12 = sub_100019104(@"ckks-oob", 0);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_13:

        (*(*(a1 + 72) + 16))();
        goto LABEL_14;
      }

      *buf = 138412290;
      v22 = v11;
      v13 = "Errored unwrapping TLK Shares, quitting: %@";
    }

    else
    {
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v17 = *(a1 + 56);
      v19 = 0;
      [v15 unwrapKeysAndSaveToCache:v16 syncKeys:v17 error:&v19];
      v18 = v19;
      if (!v18)
      {
        [*(a1 + 32) decryptCurrentItems:*(a1 + 64) cache:*(a1 + 40) complete:*(a1 + 72)];
        goto LABEL_14;
      }

      v11 = v18;
      v12 = sub_100019104(@"ckks-oob", 0);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      *buf = 138412290;
      v22 = v11;
      v13 = "Errored unwrapping sync keys, quitting: %@";
    }

    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v13, buf, 0xCu);
    goto LABEL_13;
  }

  v14 = sub_100019104(@"ckks-oob", 0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Errored fetching TLK shares, unable to decrypt identities: %@", buf, 0xCu);
  }

  (*(*(a1 + 72) + 16))();
LABEL_14:
}

void sub_1001C0650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001C067C(id *a1)
{
  v2 = [a1[4] error];

  if (v2)
  {
    v3 = [a1[5] zoneName];
    v4 = sub_100019104(@"ckkscurrent", v3);

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1[4] error];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Rejecting current item pointer get since fetch failed: %@", &buf, 0xCu);
    }

    v6 = a1[10];
    WeakRetained = [a1[4] error];
    v6[2](v6, 0, WeakRetained);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(a1 + 11);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v17 = 0x2020000000;
    v18 = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001C08F8;
    v8[3] = &unk_100343D40;
    v9 = a1[6];
    v10 = a1[7];
    v11 = WeakRetained;
    v12 = a1[8];
    v13 = a1[9];
    v14 = a1[10];
    p_buf = &buf;
    [WeakRetained dispatchSyncWithReadOnlySQLTransaction:v8];
    if (*(*(&buf + 1) + 24) == 1 && ([WeakRetained firstManateeKeyFetched] & 1) == 0 && objc_msgSend(a1[8], "isEqualToString:", kSecAttrViewHintManatee))
    {
      [WeakRetained setFirstManateeKeyFetched:1];
      [WeakRetained sendMetricForFirstManateeAccess];
    }

    _Block_object_dispose(&buf, 8);
  }
}

void sub_1001C08F8(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"%@-%@", *(a1 + 32), *(a1 + 40)];
  if (qword_10039E108 != -1)
  {
    dispatch_once(&qword_10039E108, &stru_1003420B8);
  }

  if (byte_10039E100 == 1)
  {
    v3 = sub_100006274("ckkspersona");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 48) personaAdapter];
      v5 = [v4 currentThreadPersonaUniqueString];
      v6 = [*(a1 + 48) operationDependencies];
      v7 = [v6 activeAccount];
      v8 = [v7 personaUniqueString];
      v9 = *(a1 + 56);
      *buf = 138413058;
      v34 = v5;
      v35 = 2112;
      v36 = v8;
      v37 = 2112;
      v38 = v2;
      v39 = 2112;
      v40 = v9;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "getCurrentItemForAccessGroup: thread persona [%@/%@] this currentIdentifier [%@] viewhint [%@]", buf, 0x2Au);
    }
  }

  v10 = [*(a1 + 48) operationDependencies];
  v11 = [v10 contextID];
  v12 = *(a1 + 64);
  v32 = 0;
  v13 = [CKKSCurrentItemPointer fromDatabase:v2 contextID:v11 state:@"local" zoneID:v12 error:&v32];
  v14 = v32;

  if (!v13 || v14)
  {
    v24 = [v14 domain];
    if ([v24 isEqualToString:@"securityd"])
    {
      v25 = [v14 code];

      if (v25 == -25300)
      {
        v26 = [*(a1 + 48) zoneName];
        v27 = sub_100019104(@"ckkscurrent", v26);

        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v34 = v2;
          _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "No current item pointer for %@", buf, 0xCu);
        }

        v28 = [NSString stringWithFormat:@"No current item pointer found for %@", v2];
        v29 = [NSError errorWithDomain:@"securityd" code:-25300 description:v28];

        v14 = v29;
LABEL_21:

        (*(*(a1 + 72) + 16))();
        goto LABEL_26;
      }
    }

    else
    {
    }

    v30 = [*(a1 + 48) zoneName];
    v28 = sub_100019104(@"ckkscurrent", v30);

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v2;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "No current item pointer for %@", buf, 0xCu);
    }

    goto LABEL_21;
  }

  v15 = [v13 currentItemUUID];

  v16 = [*(a1 + 48) zoneName];
  v17 = sub_100019104(@"ckkscurrent", v16);

  if (v15)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v34 = v13;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Retrieved current item pointer: %@", buf, 0xCu);
    }

    *(*(*(a1 + 80) + 8) + 24) = 1;
    v18 = [CKKSCurrentItemData alloc];
    v19 = [v13 currentItemUUID];
    v20 = [(CKKSCurrentItemData *)v18 initWithUUID:v19];

    v21 = [v13 storedCKRecord];
    v22 = [v21 modificationDate];
    [(CKKSCurrentItemData *)v20 setModificationDate:v22];

    v23 = *(*(a1 + 72) + 16);
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v13;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Current item pointer is empty %@", buf, 0xCu);
    }

    v31 = *(a1 + 72);
    v20 = [NSError errorWithDomain:@"CKKSErrorDomain" code:-67671 description:@"Current item pointer is empty"];
    v23 = *(v31 + 16);
  }

  v23();

  v14 = 0;
LABEL_26:
}

void sub_1001C14D4(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  v3 = [*(a1 + 40) zoneID];
  v4 = [v3 zoneName];
  v5 = sub_100019104(@"ckkscurrent", v4);

  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) error];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed deleting current item pointers: %@", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Finished deleting current item pointers", &v9, 2u);
  }

  v7 = *(a1 + 48);
  v8 = [*(a1 + 32) error];
  (*(v7 + 16))(v7, v8);
}

void sub_1001C1B8C(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  v3 = [*(a1 + 40) zoneID];
  v4 = [v3 zoneName];
  v5 = sub_100019104(@"ckkscurrent", v4);

  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) currentPointerIdentifier];
      v7 = [*(a1 + 32) error];
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed setting a current item pointer for %@ with %@", &v10, 0x16u);

LABEL_6:
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) currentPointerIdentifier];
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Finished setting a current item pointer for %@", &v10, 0xCu);
    goto LABEL_6;
  }

  v8 = *(a1 + 48);
  v9 = [*(a1 + 32) error];
  (*(v8 + 16))(v8, v9);
}

void sub_1001C29A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

void sub_1001C29FC(uint64_t a1)
{
  v2 = [*(a1 + 32) operationDependencies];
  v3 = [v2 syncingPolicy];

  if (v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v4 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 48);
      v6 = 138477827;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "No policy configured. Skipping item: %{private}@", &v6, 0xCu);
    }

    [*(a1 + 32) setItemModificationsBeforePolicyLoaded:1];
  }
}

uint64_t sub_1001C2B00(uint64_t a1)
{
  v1 = [*(a1 + 32) notifyViewChangedScheduler];
  [v1 trigger];

  if ([*(a1 + 40) accountStatus] != 3)
  {
    v117 = objc_alloc_init(CKKSMemoryKeyCache);
    *buf = 0;
    v152 = buf;
    v153 = 0x3032000000;
    v154 = sub_1001B1C08;
    v155 = sub_1001B1C18;
    v156 = 0;
    if (*(a1 + 96) == 1)
    {
      v9 = [*(a1 + 40) personaAdapter];
      v10 = v145;
      v145[0] = _NSConcreteStackBlock;
      v145[1] = 3221225472;
      v145[2] = sub_1001C3C10;
      v145[3] = &unk_100343CC8;
      v11 = *(a1 + 64);
      v148 = buf;
      v150 = v11;
      *v118 = *(a1 + 32);
      v12 = v118[0];
      v146 = vextq_s8(*v118, *v118, 8uLL);
      v13 = v117;
      v14 = *(a1 + 56);
      v147 = v13;
      v149 = v14;
      [v9 performBlockWithPersonaIdentifier:0 block:v145];
    }

    else if (*(a1 + 97) == 1)
    {
      v9 = [*(a1 + 40) personaAdapter];
      v10 = v139;
      v139[0] = _NSConcreteStackBlock;
      v139[1] = 3221225472;
      v139[2] = sub_1001C3CF0;
      v139[3] = &unk_100343CC8;
      v15 = *(a1 + 72);
      v142 = buf;
      v144 = v15;
      *v119 = *(a1 + 32);
      v16 = v119[0];
      v140 = vextq_s8(*v119, *v119, 8uLL);
      v17 = v117;
      v18 = *(a1 + 56);
      v141 = v17;
      v143 = v18;
      [v9 performBlockWithPersonaIdentifier:0 block:v139];
    }

    else
    {
      if (*(a1 + 98) != 1)
      {
        v54 = [*(a1 + 32) zoneID];
        v55 = [v54 zoneName];
        v56 = sub_100019104(@"ckks", v55);

        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v57 = *(a1 + 64);
          v58 = *(a1 + 72);
          *v157 = 138478083;
          v158 = v57;
          v159 = 2113;
          v160 = v58;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "processKeychainEventItemAdded given garbage: %{private}@ %{private}@", v157, 0x16u);
        }

        goto LABEL_45;
      }

      v9 = [*(a1 + 40) personaAdapter];
      v10 = v133;
      v133[0] = _NSConcreteStackBlock;
      v133[1] = 3221225472;
      v133[2] = sub_1001C3DD0;
      v133[3] = &unk_100343CC8;
      v19 = *(a1 + 64);
      v136 = buf;
      v138 = v19;
      *v120 = *(a1 + 32);
      v20 = v120[0];
      v134 = vextq_s8(*v120, *v120, 8uLL);
      v21 = v117;
      v22 = *(a1 + 56);
      v135 = v21;
      v137 = v22;
      [v9 performBlockWithPersonaIdentifier:0 block:v133];
    }

    v23 = [*(a1 + 40) operationDependencies];
    v24 = [v23 syncingPolicy];
    v25 = [*(a1 + 32) zoneID];
    v26 = [v25 zoneName];
    v27 = [v24 isSyncingEnabledForView:v26];

    if ((v27 & 1) == 0)
    {
      v28 = +[CKKSViewManager manager];
      v29 = [*(v152 + 5) uuid];
      v30 = [v28 claimCallbackForUUID:v29];

      if (v30)
      {
        v31 = [NSError errorWithDomain:@"CKKSErrorDomain" code:55 description:@"View is paused item is not expected to sync"];;
        (v30)[2](v30, 0, v31);
      }
    }

    v32 = a1;
    if (*(a1 + 80))
    {
      v33 = @"keychain-api-use";
    }

    else
    {
      v33 = @"sos-incoming-item";
    }

    v34 = [CKOperationGroup CKKSGroupWithName:v33];
    v35 = *(*(a1 + 56) + 8);
    v116 = v34;
    if (*(v35 + 40))
    {
      v36 = [*(a1 + 32) zoneID];
      v37 = [v36 zoneName];
      v38 = sub_100019104(@"ckks", v37);

      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = *(*(*(a1 + 56) + 8) + 40);
        *v157 = 138412290;
        v158 = v39;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Couldn't create outgoing queue entry: %@", v157, 0xCu);
      }

      v40 = [*(a1 + 40) stateMachine];
      [v40 _onqueueHandleFlag:@"dropped_items"];

      v41 = [*(*(*(a1 + 56) + 8) + 40) domain];
      if ([v41 isEqualToString:@"CKKSErrorDomain"])
      {
        v42 = [*(*(*(a1 + 56) + 8) + 40) code] == -25300;

        if (!v42)
        {
LABEL_44:
          v56 = v116;
LABEL_45:

          _Block_object_dispose(buf, 8);
          goto LABEL_46;
        }

        v43 = [*(a1 + 40) stateMachine];
        [v43 _onqueueHandleFlag:@"key_process_requested"];
        v44 = v43;
LABEL_43:

        goto LABEL_44;
      }

LABEL_42:
      v44 = v41;
      goto LABEL_43;
    }

    v45 = *(v152 + 5);
    if (!v45)
    {
      v59 = [*(a1 + 32) zoneID];
      v60 = [v59 zoneName];
      v41 = sub_100019104(@"ckks", v60);

      if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      v61 = *(*(*(a1 + 56) + 8) + 40);
      *v157 = 138412290;
      v158 = v61;
      v62 = "Decided that no operation needs to occur for %@";
LABEL_41:
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, v62, v157, 0xCu);
      goto LABEL_42;
    }

    v46 = *(a1 + 48);
    if (v46)
    {
      v47 = +[NSDate date];
      v132 = 0;
      v48 = [v46 judge:v45 at:v47 limitTime:&v132];
      v49 = v132;

      if (v49)
      {
        [*(v152 + 5) setWaitUntil:v49];
        v165[0] = @"ratelimit";
        v50 = [NSNumber numberWithInteger:v48];
        v165[1] = @"accessgroup";
        v166[0] = v50;
        v51 = [*(v152 + 5) accessgroup];
        v166[1] = v51;
        v52 = [NSDictionary dictionaryWithObjects:v166 forKeys:v165 count:2];
        sub_100011140(@"CKKSSyncing", v52);
      }

      v45 = *(v152 + 5);
      v32 = a1;
      v35 = *(*(a1 + 56) + 8);
      v53 = *(v35 + 40);
    }

    else
    {
      v53 = 0;
    }

    v63 = *(v32 + 88);
    obj = v53;
    [v45 saveToDatabaseWithConnection:v63 error:{&obj, v116}];
    objc_storeStrong((v35 + 40), obj);
    v64 = *(a1 + 32);
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v65 = [v64 zoneID];
      v66 = [v65 zoneName];
      v41 = sub_100019104(@"ckks", v66);

      if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      v67 = *(*(*(a1 + 56) + 8) + 40);
      *v157 = 138412290;
      v158 = v67;
      v62 = "Couldn't save outgoing queue entry to database: %@";
      goto LABEL_41;
    }

    v69 = [v64 zoneID];
    v70 = [v69 zoneName];
    v71 = sub_100019104(@"ckks", v70);

    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      v72 = *(v152 + 5);
      *v157 = 138412290;
      v158 = v72;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Saved %@ to outgoing queue", v157, 0xCu);
    }

    v73 = [*(v152 + 5) uuid];
    v164[0] = @"reencrypt";
    v164[1] = @"error";
    v74 = [NSArray arrayWithObjects:v164 count:2];
    v75 = [*(a1 + 40) operationDependencies];
    v76 = [v75 contextID];
    v77 = [*(a1 + 32) zoneID];
    v78 = *(*(a1 + 56) + 8);
    v130 = *(v78 + 40);
    v79 = [CKKSOutgoingQueueEntry allWithUUID:v73 states:v74 contextID:v76 zoneID:v77 error:&v130];
    objc_storeStrong((v78 + 40), v130);

    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v80 = [*(a1 + 32) zoneID];
      v81 = [v80 zoneName];
      v82 = sub_100019104(@"ckks", v81);

      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        v83 = *(v152 + 5);
        v84 = *(*(*(a1 + 56) + 8) + 40);
        *v157 = 138412546;
        v158 = v83;
        v159 = 2112;
        v160 = v84;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "Couldn't load OQE siblings for %@: %@", v157, 0x16u);
      }
    }

    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v121 = v79;
    v85 = [v121 countByEnumeratingWithState:&v126 objects:v163 count:16];
    if (v85)
    {
      v86 = *v127;
      do
      {
        for (i = 0; i != v85; i = i + 1)
        {
          if (*v127 != v86)
          {
            objc_enumerationMutation(v121);
          }

          v88 = *(*(&v126 + 1) + 8 * i);
          v125 = 0;
          [v88 deleteFromDatabase:&v125];
          v89 = v125;
          if (v89)
          {
            v90 = [*(a1 + 32) zoneID];
            v91 = [v90 zoneName];
            v92 = sub_100019104(@"ckks", v91);

            if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
            {
              v93 = [*(v152 + 5) uuid];
              *v157 = 138412802;
              v158 = v88;
              v159 = 2112;
              v160 = v93;
              v161 = 2112;
              v162 = v89;
              _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "Couldn't delete OQE sibling(%@) for %@: %@", v157, 0x20u);
            }
          }
        }

        v85 = [v121 countByEnumeratingWithState:&v126 objects:v163 count:16];
      }

      while (v85);
    }

    v94 = [*(v152 + 5) uuid];
    v95 = [*(a1 + 40) operationDependencies];
    v96 = [v95 contextID];
    v97 = [*(a1 + 32) zoneID];
    v124 = 0;
    v98 = [CKKSIncomingQueueEntry tryFromDatabase:v94 contextID:v96 zoneID:v97 error:&v124];
    v99 = v124;

    if (v99)
    {
      v100 = [*(a1 + 32) zoneID];
      v101 = [v100 zoneName];
      v102 = sub_100019104(@"ckks", v101);

      if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
      {
        v103 = [*(v152 + 5) uuid];
        v104 = *(*(*(a1 + 56) + 8) + 40);
        *v157 = 138412546;
        v158 = v103;
        v159 = 2112;
        v160 = v104;
        _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_ERROR, "Couldn't find IQE matching %@: %@", v157, 0x16u);
      }
    }

    else
    {
      if (!v98)
      {
        v99 = 0;
LABEL_76:
        v113 = +[CKKSViewManager manager];
        v114 = [*(v152 + 5) uuid];
        v115 = [v113 peekCallbackForUUID:v114];

        [*(a1 + 40) _onqueueProcessOutgoingQueue:v116 priorityRush:v115];
        v44 = v121;
        goto LABEL_43;
      }

      v123 = 0;
      [v98 deleteFromDatabase:&v123];
      v99 = v123;
      v105 = *(a1 + 32);
      if (v99)
      {
        v106 = [v105 zoneID];
        v107 = [v106 zoneName];
        v102 = sub_100019104(@"ckks", v107);

        if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
        {
          v108 = [*(v152 + 5) uuid];
          v109 = *(*(*(a1 + 56) + 8) + 40);
          *v157 = 138412546;
          v158 = v108;
          v159 = 2112;
          v160 = v109;
          _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_ERROR, "Couldn't delete IQE matching %@: %@", v157, 0x16u);
        }
      }

      else
      {
        v110 = [v105 zoneID];
        v111 = [v110 zoneName];
        v102 = sub_100019104(@"ckks", v111);

        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
        {
          v112 = [*(v152 + 5) uuid];
          *v157 = 138412290;
          v158 = v112;
          _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "Deleted IQE matching changed item %@", v157, 0xCu);
        }

        v99 = 0;
      }
    }

    goto LABEL_76;
  }

  v2 = [*(a1 + 40) stateMachine];
  [v2 _onqueueHandleFlag:@"dropped_items"];

  v3 = [*(a1 + 32) zoneID];
  v4 = [v3 zoneName];
  v5 = sub_100019104(@"ckks", v4);

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Dropping sync item modification due to CK account state; will scan to find changes later", buf, 2u);
  }

  v6 = *(a1 + 64);
  if (!v6)
  {
    v6 = *(a1 + 72);
  }

  v117 = sub_100015BFC(v6, &off_100343C98, 0);
  v7 = +[CKKSViewManager manager];
  v8 = [v7 claimCallbackForUUID:v117];

  if (v8)
  {
    [CKKSViewManager callSyncCallbackWithErrorNoAccount:v8];
  }

LABEL_46:
  return 1;
}

void sub_1001C3C10(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = [*(a1 + 32) operationDependencies];
  v4 = [v3 contextID];
  v5 = [*(a1 + 40) zoneID];
  v6 = *(a1 + 48);
  v7 = *(*(a1 + 64) + 8);
  obj = *(v7 + 40);
  v8 = [CKKSOutgoingQueueEntry withItem:v2 action:@"add" contextID:v4 zoneID:v5 keyCache:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_1001C3CF0(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = [*(a1 + 32) operationDependencies];
  v4 = [v3 contextID];
  v5 = [*(a1 + 40) zoneID];
  v6 = *(a1 + 48);
  v7 = *(*(a1 + 64) + 8);
  obj = *(v7 + 40);
  v8 = [CKKSOutgoingQueueEntry withItem:v2 action:@"delete" contextID:v4 zoneID:v5 keyCache:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_1001C3DD0(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = [*(a1 + 32) operationDependencies];
  v4 = [v3 contextID];
  v5 = [*(a1 + 40) zoneID];
  v6 = *(a1 + 48);
  v7 = *(*(a1 + 64) + 8);
  obj = *(v7 + 40);
  v8 = [CKKSOutgoingQueueEntry withItem:v2 action:@"modify" contextID:v4 zoneID:v5 keyCache:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_1001C4D44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1001C4D60(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained operationDependencies];
  v6 = [v5 currentTrustStates];

  v7 = +[NSMutableSet set];
  v8 = [WeakRetained operationDependencies];
  v9 = [v8 databaseProvider];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001C4F60;
  v15[3] = &unk_100343C28;
  v15[4] = WeakRetained;
  v10 = v6;
  v16 = v10;
  v11 = v7;
  v17 = v11;
  [v9 dispatchSyncWithReadOnlySQLTransaction:v15];

  if ([v11 count])
  {
    v12 = sub_100019104(@"ckkskey", 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Resetting zones due to missing TLKs: %@", buf, 0xCu);
    }

    v13 = [WeakRetained operationDependencies];
    [v13 operateOnSelectViews:v11];

    v14 = off_100343BC0;
  }

  else
  {
    v14 = (a1 + 32);
  }

  [v3 setNextState:*v14];
}

void sub_1001C4F60(uint64_t a1)
{
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v1 = [*(a1 + 32) operationDependencies];
  v2 = [v1 activeManagedViews];

  v3 = [v2 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v31;
    do
    {
      v6 = 0;
      do
      {
        if (*v31 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v30 + 1) + 8 * v6);
        v8 = [v7 viewKeyHierarchyState];
        v9 = [v8 isEqualToString:@"tlkmissing"];

        if (v9)
        {
          v10 = [v7 zoneID];
          v11 = [v7 contextID];
          v12 = [CKKSCurrentKeySet loadForZone:v10 contextID:v11];

          v13 = [v12 error];

          if (v13)
          {
            v14 = [v7 zoneID];
            v15 = [v14 zoneName];
            v16 = sub_100019104(@"ckkskey", v15);

            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v17 = [v12 error];
              *buf = 138412290;
              v35 = v17;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Unable to load keyset: %@", buf, 0xCu);
            }

            v18 = @"error";
          }

          else
          {
            v19 = [v12 currentTLKPointer];
            v20 = [v19 currentKeyUUID];

            if (v20)
            {
              if ([*(a1 + 32) trustStatus] == 1)
              {
                v21 = [*(a1 + 32) _onqueueOtherDevicesReportHavingTLKs:v12 trustStates:*(a1 + 40)];
                v18 = @"waitfortlk";
                if ((v21 & 1) == 0)
                {
                  v22 = [v7 zoneID];
                  v23 = [v22 zoneName];
                  v24 = sub_100019104(@"ckkskey", v23);

                  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "No other devices claim to have the TLK. Resetting zone...", buf, 2u);
                  }

                  [*(a1 + 48) addObject:v7];
                  v18 = @"resetzone";
                }
              }

              else
              {
                v25 = [v7 zoneID];
                v26 = [v25 zoneName];
                v27 = sub_100019104(@"ckkskey", v26);

                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "TLK is missing, but no trust is present.", buf, 2u);
                }

                v18 = @"waitfortrust";
              }
            }

            else
            {
              v18 = @"waitfortlkcreation";
            }
          }

          [v7 setViewKeyHierarchyState:v18];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v28 = [v2 countByEnumeratingWithState:&v30 objects:v36 count:16];
      v4 = v28;
    }

    while (v28);
  }
}

void sub_1001C53F0(uint64_t a1)
{
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = [*(a1 + 32) operationDependencies];
  v3 = [v2 allCKKSManagedViews];

  obj = v3;
  v25 = [v3 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (!v25)
  {
    goto LABEL_21;
  }

  v26 = *v29;
  while (2)
  {
    for (i = 0; i != v25; i = i + 1)
    {
      if (*v29 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v28 + 1) + 8 * i);
      v6 = [*(a1 + 32) operationDependencies];
      v7 = [v6 contextID];
      v8 = [v5 zoneName];
      v9 = [CKKSZoneStateEntry contextID:v7 zoneName:v8];

      v10 = [v9 lastFetchTime];
      if (!v10 || (v11 = v10, v12 = [v9 moreRecordsInCloudKit], v11, v12))
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        goto LABEL_20;
      }

      v13 = [*(a1 + 32) operationDependencies];
      v14 = [v13 contextID];
      v15 = [v5 zoneID];
      v27 = 0;
      v16 = [CKKSIncomingQueueEntry fetch:50 startingAtUUID:0 state:@"new" action:0 contextID:v14 zoneID:v15 error:&v27];
      v17 = v27;

      if (!v17)
      {
        if (![v16 count])
        {
          goto LABEL_14;
        }

        v17 = 0;
        v23 = 1;
LABEL_19:
        *(*(*(a1 + 40) + 8) + 24) = v23;

LABEL_20:
        goto LABEL_21;
      }

      v18 = [v5 zoneID];
      v19 = [v18 zoneName];
      v20 = sub_100019104(@"ckks", v19);

      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = [v5 zoneName];
        *buf = 138412546;
        v33 = v21;
        v34 = 2112;
        v35 = v17;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Error fetching IQEs for zone %@: %@", buf, 0x16u);
      }

      if (*(a1 + 48))
      {
        v22 = v17;
        v23 = 0;
        **(a1 + 48) = v17;
        goto LABEL_19;
      }

LABEL_14:
    }

    v25 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v25)
    {
      continue;
    }

    break;
  }

LABEL_21:
}

void sub_1001C5D84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1001C5DA0(uint64_t a1, void *a2)
{
  v17 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained trustStatus] == 1)
  {
    [WeakRetained setTrustStatus:0];
    v3 = objc_alloc_init(CKKSCondition);
    [WeakRetained setTrustStatusKnown:v3];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [WeakRetained operationDependencies];
  v5 = [v4 views];

  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 viewKeyHierarchyState];
        v12 = [v11 isEqualToString:@"ready"];

        if (v12)
        {
          [v10 setViewKeyHierarchyState:@"waitfortrust"];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v13 = [WeakRetained priorityViewsProcessed];
  v14 = [NSError errorWithDomain:@"CKKSErrorDomain" code:52 description:@"Trust not present"];
  [v13 completeWithErrorIfPending:v14];

  [v18 setNextState:*(v16 + 32)];
}

void sub_1001C60A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1001C60C0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001C6390;
  v21[3] = &unk_100343C00;
  v21[4] = WeakRetained;
  v5 = v3;
  v22 = v5;
  v24 = &v25;
  v23 = *(a1 + 32);
  [WeakRetained dispatchSyncWithReadOnlySQLTransaction:v21];
  if (*(v26 + 24) == 1)
  {
    v6 = [WeakRetained operationDependencies];
    if (![v6 sendMetric])
    {
LABEL_13:

      goto LABEL_14;
    }

    v7 = +[OTManager manager];
    v8 = [OTControlArguments alloc];
    v9 = [WeakRetained operationDependencies];
    v10 = [v9 activeAccount];
    v11 = [v10 altDSID];
    v12 = [v8 initWithAltDSID:v11];
    v20 = 0;
    v13 = [v7 persistSendingMetricsPermitted:v12 sendingMetricsPermitted:0 error:&v20];
    v6 = v20;

    if (v6)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      v15 = sub_100006274("ckks");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v16 = "Successfully persisted state to disable metrics";
        v17 = v15;
        v18 = OS_LOG_TYPE_DEFAULT;
        v19 = 2;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v17, v18, v16, buf, v19);
      }
    }

    else
    {
      v15 = sub_100019104(@"ckks", 0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = v6;
        v16 = "Error persisting sendingMetricsPermitted value: %@";
        v17 = v15;
        v18 = OS_LOG_TYPE_ERROR;
        v19 = 12;
        goto LABEL_11;
      }
    }

    goto LABEL_13;
  }

LABEL_14:

  _Block_object_dispose(&v25, 8);
}

void sub_1001C636C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001C6390(uint64_t a1)
{
  v1 = a1;
  v2 = [*(a1 + 32) operationDependencies];
  v282 = [v2 readyAndSyncingViews];

  v331 = 0u;
  v332 = 0u;
  v329 = 0u;
  v330 = 0u;
  v3 = [*(v1 + 32) operationDependencies];
  v4 = [v3 views];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v329 objects:v346 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v330;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v330 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v329 + 1) + 8 * i);
        v10 = [*(v1 + 32) operationDependencies];
        v11 = [v10 contextID];
        v12 = [v9 zoneName];
        v13 = [CKKSZoneStateEntry contextID:v11 zoneName:v12];

        if (![(__CFString *)v13 ckzonecreated]|| ([(__CFString *)v13 ckzonesubscribed]& 1) == 0)
        {
          v61 = [v9 zoneID];
          v62 = [v61 zoneName];
          v63 = sub_100019104(@"ckkszone", v62);

          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v343 = v9;
            v344 = 2112;
            v345 = v13;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Zone does not yet exist: %@ %@", buf, 0x16u);
          }

          [*(v1 + 40) setNextState:@"initializing"];
          goto LABEL_54;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v329 objects:v346 count:16];
    }

    while (v6);
  }

  v327 = 0u;
  v328 = 0u;
  v325 = 0u;
  v326 = 0u;
  v14 = v282;
  v15 = [v14 countByEnumeratingWithState:&v325 objects:v341 count:16];
  v285 = v1;
  if (v15)
  {
    p_info = &OBJC_METACLASS___CKKSMemoryKeyCache.info;
    v17 = *v326;
    v274 = v14;
    v262 = *v326;
    do
    {
      v18 = 0;
      v266 = v15;
      do
      {
        if (*v326 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v271 = v18;
        v19 = *(*(&v325 + 1) + 8 * v18);
        v20 = [*(v1 + 32) operationDependencies];
        v21 = [v20 contextID];
        v22 = [v19 zoneID];
        v324 = 0;
        v23 = [p_info + 206 countNewEntriesByKeyWithContextID:v21 zoneID:v22 error:&v324];
        v276 = v324;

        if ([v23 count])
        {
          v24 = [v19 zoneID];
          v25 = [v24 zoneName];
          v26 = sub_100019104(@"ckksincoming", v25);

          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v343 = v23;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Incoming Queue item counts: %@", buf, 0xCu);
          }
        }

        v322 = 0u;
        v323 = 0u;
        v320 = 0u;
        v321 = 0u;
        v27 = v23;
        v28 = [v27 countByEnumeratingWithState:&v320 objects:v340 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v321;
          obja = v27;
          do
          {
            for (j = 0; j != v29; j = j + 1)
            {
              if (*v321 != v30)
              {
                objc_enumerationMutation(obja);
              }

              v32 = *(*(&v320 + 1) + 8 * j);
              v33 = [v19 contextID];
              v34 = [v19 zoneID];
              v319 = 0;
              v35 = [CKKSKey fromDatabase:v32 contextID:v33 zoneID:v34 error:&v319];
              v36 = v319;

              if (v35)
              {
                v37 = v36 == 0;
              }

              else
              {
                v37 = 0;
              }

              if (v37)
              {
                v41 = [v35 keyclass];
                if (([v41 isEqualToString:@"classA"] & 1) == 0)
                {

LABEL_52:
                  [*(v285 + 40) setNextState:@"process_incoming_queue"];

                  v27 = obja;
                  v51 = obja;
LABEL_53:

                  obj = v274;
                  goto LABEL_54;
                }

                v42 = [*(v285 + 32) lockStateTracker];
                v43 = [v42 isLocked];

                if (!v43)
                {
                  goto LABEL_52;
                }

                v44 = [v19 zoneID];
                v45 = [v44 zoneName];
                v46 = sub_100019104(@"ckksincoming", v45);

                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Have pending classA items for view, but device is locked", buf, 2u);
                }

                v40 = [[OctagonPendingFlag alloc] initWithFlag:@"check_queues" conditions:1];
                v47 = [*(v285 + 32) stateMachine];
                [v47 _onqueueHandlePendingFlagLater:v40];
              }

              else
              {
                v38 = [v19 zoneID];
                v39 = [v38 zoneName];
                v40 = sub_100019104(@"ckksincoming", v39);

                if (os_log_type_enabled(&v40->super, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v343 = v32;
                  v344 = 2112;
                  v345 = v36;
                  _os_log_impl(&_mh_execute_header, &v40->super, OS_LOG_TYPE_ERROR, "Unable to load key for %@: %@", buf, 0x16u);
                }
              }
            }

            v27 = obja;
            v29 = [obja countByEnumeratingWithState:&v320 objects:v340 count:16];
          }

          while (v29);
        }

        v48 = [v19 contextID];
        v49 = [v19 zoneID];
        v318 = 0;
        v50 = [CKKSCurrentItemPointer countByState:@"new" contextID:v48 zone:v49 error:&v318];
        v51 = v318;

        if (v50 >= 1)
        {
          v172 = [v19 zoneID];
          v173 = [v172 zoneName];
          v174 = sub_100019104(@"ckksincoming", v173);

          if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            LODWORD(v343) = v50;
            _os_log_impl(&_mh_execute_header, v174, OS_LOG_TYPE_DEFAULT, "Incoming Queue CIP count: %d", buf, 8u);
          }

          [*(v285 + 40) setNextState:@"process_incoming_queue"];
          goto LABEL_53;
        }

        v1 = v285;
        v17 = v262;
        if (v51)
        {
          v52 = [v19 zoneID];
          v53 = [v52 zoneName];
          v54 = sub_100019104(@"ckksincoming", v53);

          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v343 = v51;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Unable to count CIPs: %@", buf, 0xCu);
          }
        }

        v18 = v271 + 1;
        v14 = v274;
        p_info = (&OBJC_METACLASS___CKKSMemoryKeyCache + 32);
      }

      while ((v271 + 1) != v266);
      v15 = [v274 countByEnumeratingWithState:&v325 objects:v341 count:16];
    }

    while (v15);
  }

  v55 = [*(v1 + 32) operationDependencies];
  v56 = [v55 allViews];
  v57 = [v56 mutableCopy];

  v58 = [*(v1 + 32) operationDependencies];
  v59 = [v58 views];
  [v57 minusSet:v59];

  obj = v57;
  if ([v57 count])
  {
    v60 = sub_100019104(@"ckkszone", 0);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v343 = v57;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Beginning again to include these views: %@", buf, 0xCu);
    }

    [*(v1 + 40) setNextState:@"handle_all_views"];
    goto LABEL_54;
  }

  v64 = [AAFAnalyticsEventSecurity alloc];
  v65 = [*(v1 + 32) operationDependencies];
  v66 = [v65 activeAccount];
  v67 = [v66 altDSID];
  v68 = kSecurityRTCEventNameLocalSyncFinish;
  v69 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  v70 = [*(v1 + 32) operationDependencies];
  v257 = v69;
  v71 = [v64 initWithCKKSMetrics:&__NSDictionary0__struct altDSID:v67 eventName:v68 testsAreEnabled:0 category:v69 sendMetric:{objc_msgSend(v70, "sendMetric")}];

  v258 = v71;
  [v71 sendMetricWithResult:1 error:0];
  v316 = 0u;
  v317 = 0u;
  v314 = 0u;
  v315 = 0u;
  v72 = v14;
  v263 = [v72 countByEnumeratingWithState:&v314 objects:v339 count:16];
  v259 = v72;
  if (v263)
  {
    v267 = *v315;
    do
    {
      for (k = 0; k != v263; k = k + 1)
      {
        if (*v315 != v267)
        {
          objc_enumerationMutation(v72);
        }

        v74 = *(*(&v314 + 1) + 8 * k);
        v75 = [*(v1 + 32) operationDependencies];
        v76 = [v75 contextID];
        v77 = [v74 zoneID];
        v313 = 0;
        v272 = [CKKSOutgoingQueueEntry allInState:@"reencrypt" contextID:v76 zoneID:v77 error:&v313];
        v78 = v313;

        v275 = v78;
        if (v78)
        {
          v79 = [v74 zoneID];
          v80 = [v79 zoneName];
          v81 = sub_100019104(@"ckks", v80);

          if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v343 = v275;
            _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "Couldn't count reencrypt OQEs, bad behavior ahead: %@", buf, 0xCu);
          }
        }

        v82 = [v74 viewKeyHierarchyState];
        v83 = [v82 isEqualToString:@"ready"];

        v269 = k;
        if ((v83 & 1) == 0)
        {
          v115 = [v74 zoneID];
          v116 = [v115 zoneName];
          v90 = sub_100019104(@"ckksincoming", v116);

          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v343 = v74;
            _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "Zone not ready (%@): skipping reencryption", buf, 0xCu);
          }

          goto LABEL_92;
        }

        v84 = [*(v1 + 32) operationDependencies];
        v85 = [v84 syncingPolicy];
        v86 = [v74 zoneID];
        v87 = [v86 zoneName];
        v88 = [v85 isSyncingEnabledForView:v87];

        if ((v88 & 1) == 0)
        {
          v117 = [v74 zoneID];
          v118 = [v117 zoneName];
          v90 = sub_100019104(@"ckksincoming", v118);

          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v343 = v74;
            _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "Syncing disabled for (%@): skipping incoming queue processing", buf, 0xCu);
          }

          v1 = v285;
LABEL_92:
          v89 = v272;
          goto LABEL_93;
        }

        v89 = v272;
        v1 = v285;
        if (![v272 count])
        {
          goto LABEL_94;
        }

        v311 = 0u;
        v312 = 0u;
        v309 = 0u;
        v310 = 0u;
        v90 = v272;
        v91 = [v90 countByEnumeratingWithState:&v309 objects:v338 count:16];
        if (v91)
        {
          v92 = v91;
          v277 = v90;
          v279 = *v310;
          do
          {
            for (m = 0; m != v92; m = m + 1)
            {
              if (*v310 != v279)
              {
                objc_enumerationMutation(v277);
              }

              v94 = *(*(&v309 + 1) + 8 * m);
              v95 = [v94 item];
              v96 = [v95 parentKeyUUID];
              v97 = [v74 contextID];
              v98 = [v74 zoneID];
              v308 = 0;
              v99 = [CKKSKey fromDatabase:v96 contextID:v97 zoneID:v98 error:&v308];
              v100 = v308;

              if (v99)
              {
                v101 = v100 == 0;
              }

              else
              {
                v101 = 0;
              }

              if (v101)
              {
                v107 = v99;
                v108 = [(__CFString *)v99 keyclass];
                if (([v108 isEqualToString:@"classA"] & 1) == 0)
                {

                  v1 = v285;
LABEL_111:
                  [*(v1 + 40) setNextState:@"reencrypt_outgoing_items"];
                  v142 = v277;
                  v143 = v277;
                  v126 = v107;
                  v145 = v258;
                  v144 = v259;
                  goto LABEL_207;
                }

                v1 = v285;
                v109 = [*(v285 + 32) lockStateTracker];
                v110 = [v109 isLocked];

                if (!v110)
                {
                  goto LABEL_111;
                }

                v111 = [v74 zoneID];
                v112 = [v111 zoneName];
                v113 = sub_100019104(@"ckksoutgoing", v112);

                if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "Have items needing re-encryption, but device is locked", buf, 2u);
                }

                v104 = [[OctagonPendingFlag alloc] initWithFlag:@"item_reencryption_needed" conditions:1];
                v114 = [*(v285 + 32) stateMachine];
                [v114 _onqueueHandlePendingFlagLater:v104];

                v99 = v107;
              }

              else
              {
                v102 = [v74 zoneID];
                v103 = [v102 zoneName];
                v104 = sub_100019104(@"ckksoutgoing", v103);

                if (os_log_type_enabled(&v104->super, OS_LOG_TYPE_ERROR))
                {
                  v105 = [v94 item];
                  v106 = [v105 parentKeyUUID];
                  *buf = 138412546;
                  v343 = v106;
                  v344 = 2112;
                  v345 = v100;
                  _os_log_impl(&_mh_execute_header, &v104->super, OS_LOG_TYPE_ERROR, "Unable to load key for %@: %@", buf, 0x16u);
                }

                v1 = v285;
              }
            }

            v90 = v277;
            v92 = [v277 countByEnumeratingWithState:&v309 objects:v338 count:16];
          }

          while (v92);
          v72 = v259;
          goto LABEL_92;
        }

LABEL_93:

        k = v269;
LABEL_94:
      }

      v263 = [v72 countByEnumeratingWithState:&v314 objects:v339 count:16];
    }

    while (v263);
  }

  v119 = +[NSDate date];
  v120 = objc_alloc_init(NSDateComponents);
  [v120 setHour:-24];
  v121 = +[NSCalendar currentCalendar];
  v275 = v120;
  v256 = v119;
  v261 = [v121 dateByAddingComponents:v120 toDate:v119 options:0];

  v306 = 0u;
  v307 = 0u;
  v304 = 0u;
  v305 = 0u;
  v122 = [*(v1 + 32) operationDependencies];
  v123 = [v122 views];

  v124 = [v123 countByEnumeratingWithState:&v304 objects:v337 count:16];
  if (v124)
  {
    v125 = v124;
    v126 = 0;
    v278 = 0;
    v280 = *v305;
    v264 = v123;
    do
    {
      for (n = 0; n != v125; n = n + 1)
      {
        v128 = v126;
        if (*v305 != v280)
        {
          objc_enumerationMutation(v264);
        }

        v129 = *(*(&v304 + 1) + 8 * n);
        v130 = [*(v1 + 32) operationDependencies];
        v131 = [v130 contextID];
        v132 = [v129 zoneName];
        v133 = [CKKSZoneStateEntry contextID:v131 zoneName:v132];

        v134 = [v133 lastFetchTime];
        v126 = v128;
        if (!v134)
        {
          goto LABEL_135;
        }

        v135 = v134;
        v136 = [v133 lastFetchTime];
        if ([v136 compare:v261] == -1)
        {

LABEL_135:
          v175 = [v133 lastFetchTime];

          if (v175)
          {
            v176 = [v133 moreRecordsInCloudKit];
            v177 = [*(v1 + 32) operationDependencies];
            v178 = [v177 currentFetchReasons];
            v179 = &off_100344910;
            if (v176)
            {
              v179 = off_100344908;
            }
          }

          else
          {
            v177 = [*(v1 + 32) operationDependencies];
            v178 = [v177 currentFetchReasons];
            v179 = off_100344900;
          }

          v142 = v278;
          v180 = v264;
          [v178 addObject:*v179];

          v181 = [v129 zoneID];
          v182 = [v181 zoneName];
          v183 = sub_100019104(@"ckksfetch", v182);

          if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
          {
            v184 = [v133 lastFetchTime];
            v185 = [v133 moreRecordsInCloudKit];
            v186 = @"complete";
            if (v185)
            {
              v186 = @"more coming";
            }

            *buf = 138412546;
            v343 = v184;
            v344 = 2112;
            v345 = v186;
            _os_log_impl(&_mh_execute_header, v183, OS_LOG_TYPE_DEFAULT, "Fetch last occurred at %@ (%@); beginning a new one", buf, 0x16u);
          }

          [*(v1 + 40) setNextState:@"begin_fetch"];
          v145 = v258;
          goto LABEL_206;
        }

        v137 = [v133 moreRecordsInCloudKit];

        if (v137)
        {
          goto LABEL_135;
        }

        if (!v278 || ([v133 lastFetchTime], v138 = objc_claimAutoreleasedReturnValue(), v139 = -[NSObject compare:](v278, "compare:", v138), v138, v139 == 1))
        {
          v140 = [v133 lastFetchTime];

          v141 = v129;
          v126 = v141;
          v278 = v140;
        }
      }

      v123 = v264;
      v125 = [v264 countByEnumeratingWithState:&v304 objects:v337 count:16];
    }

    while (v125);
  }

  else
  {
    v126 = 0;
    v278 = 0;
  }

  v146 = sub_100019104(@"ckksfetch", 0);
  if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v343 = v278;
    v344 = 2112;
    v345 = v126;
    _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEFAULT, "Fetch last occurred at %@ (for %@)", buf, 0x16u);
  }

  v302 = 0u;
  v303 = 0u;
  v300 = 0u;
  v301 = 0u;
  v147 = v259;
  v148 = [v147 countByEnumeratingWithState:&v300 objects:v336 count:16];
  v255 = v126;
  if (!v148)
  {
    v150 = 0;
    v260 = 0;
    goto LABEL_146;
  }

  v149 = v148;
  v150 = 0;
  v260 = 0;
  v151 = *v301;
LABEL_117:
  v152 = 0;
  while (1)
  {
    v265 = v150;
    if (*v301 != v151)
    {
      objc_enumerationMutation(v147);
    }

    v153 = *(*(&v300 + 1) + 8 * v152);
    v154 = [*(v285 + 32) operationDependencies];
    v155 = [v154 contextID];
    v156 = [v153 zoneName];
    v157 = [CKKSZoneStateEntry contextID:v155 zoneName:v156];

    v158 = [v157 lastLocalKeychainScanTime];
    if (!v158)
    {
      break;
    }

    v159 = v158;
    v160 = [v157 lastLocalKeychainScanTime];
    v161 = [v160 compare:v261];

    if (v161 == -1)
    {
      break;
    }

    v150 = v265;
    if (!v265 || ([v157 lastLocalKeychainScanTime], v162 = objc_claimAutoreleasedReturnValue(), v163 = -[NSObject compare:](v265, "compare:", v162), v162, v163 == 1))
    {
      v164 = [v157 lastLocalKeychainScanTime];

      v165 = v153;
      v150 = v164;
      v260 = v165;
    }

    if (v149 == ++v152)
    {
      v149 = [v147 countByEnumeratingWithState:&v300 objects:v336 count:16];
      if (!v149)
      {
LABEL_146:

        v187 = sub_100019104(@"ckksscan", 0);
        if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v343 = v150;
          v344 = 2112;
          v345 = v260;
          _os_log_impl(&_mh_execute_header, v187, OS_LOG_TYPE_DEFAULT, "CKKS scan last occurred at %@ (for %@)", buf, 0x16u);
        }

        v265 = v150;

        v298 = 0u;
        v299 = 0u;
        v296 = 0u;
        v297 = 0u;
        v188 = v147;
        v189 = [v188 countByEnumeratingWithState:&v296 objects:v335 count:16];
        v171 = v285;
        if (v189)
        {
          v190 = v189;
          v191 = *v297;
          do
          {
            v192 = 0;
            do
            {
              if (*v297 != v191)
              {
                objc_enumerationMutation(v188);
              }

              v193 = *(*(&v296 + 1) + 8 * v192);
              v194 = [*(v171 + 32) operationDependencies];
              v195 = [v194 contextID];
              v196 = [v193 zoneID];
              v295 = 0;
              v197 = [CKKSOutgoingQueueEntry countByState:@"new" contextID:v195 zoneID:v196 error:&v295];
              v198 = v295;

              if (v197 >= 1)
              {
                v199 = [v193 zoneID];
                v200 = [v199 zoneName];
                v201 = sub_100019104(@"ckksoutgoing", v200);

                if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  LODWORD(v343) = v197;
                  _os_log_impl(&_mh_execute_header, v201, OS_LOG_TYPE_DEFAULT, "Have %d outgoing items; scheduling upload", buf, 8u);
                }

                v202 = [[OctagonPendingFlag alloc] initWithFlag:@"process_outgoing_queue" conditions:2];
                v203 = [*(v285 + 32) stateMachine];
                [v203 _onqueueHandlePendingFlagLater:v202];

                v204 = [*(v285 + 32) outgoingQueueOperationScheduler];
                [v204 trigger];

LABEL_157:
                goto LABEL_158;
              }

              if (v198)
              {
                v205 = [v193 zoneID];
                v206 = [v205 zoneName];
                v202 = sub_100019104(@"ckksoutgoing", v206);

                if (os_log_type_enabled(&v202->super, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v343 = v198;
                  _os_log_impl(&_mh_execute_header, &v202->super, OS_LOG_TYPE_DEFAULT, "Error checking outgoing queue: %@", buf, 0xCu);
                }

                goto LABEL_157;
              }

LABEL_158:

              v192 = v192 + 1;
              v171 = v285;
            }

            while (v190 != v192);
            v207 = [v188 countByEnumeratingWithState:&v296 objects:v335 count:16];
            v190 = v207;
          }

          while (v207);
        }

        v293 = 0u;
        v294 = 0u;
        v291 = 0u;
        v292 = 0u;
        v208 = [*(v171 + 32) operationDependencies];
        v209 = [v208 allCKKSManagedViews];

        v210 = [v209 countByEnumeratingWithState:&v291 objects:v334 count:16];
        if (v210)
        {
          v211 = v210;
          v147 = 0;
          v212 = 0;
          v213 = *v292;
          v268 = *v292;
          v270 = v209;
          do
          {
            v214 = 0;
            v281 = v211;
            do
            {
              if (*v292 != v213)
              {
                objc_enumerationMutation(v209);
              }

              v215 = *(*(&v291 + 1) + 8 * v214);
              v216 = [v215 launch];
              v217 = [v216 launched];

              if ((v217 & 1) == 0)
              {
                if (!v147)
                {
                  v218 = [*(v285 + 32) operationDependencies];
                  v219 = [v218 contextID];
                  v290 = 0;
                  v147 = [CKKSMirrorEntry countsByZoneNameWithContextID:v219 error:&v290];
                  v220 = v290;

                  if (v220)
                  {
                    v221 = [v215 zoneID];
                    v222 = [v221 zoneName];
                    v223 = sub_100019104(@"launch", v222);

                    if (os_log_type_enabled(v223, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v343 = v220;
                      _os_log_impl(&_mh_execute_header, v223, OS_LOG_TYPE_ERROR, "Unable to count mirror entries: %@", buf, 0xCu);
                    }
                  }

                  v273 = v220;
                  v288 = 0u;
                  v289 = 0u;
                  v286 = 0u;
                  v287 = 0u;
                  v224 = [v147 allKeys];
                  v225 = [v224 countByEnumeratingWithState:&v286 objects:v333 count:16];
                  if (v225)
                  {
                    v226 = v225;
                    v227 = *v287;
                    do
                    {
                      for (ii = 0; ii != v226; ii = ii + 1)
                      {
                        if (*v287 != v227)
                        {
                          objc_enumerationMutation(v224);
                        }

                        v229 = [v147 objectForKeyedSubscript:*(*(&v286 + 1) + 8 * ii)];
                        v212 += [v229 longValue];
                      }

                      v226 = [v224 countByEnumeratingWithState:&v286 objects:v333 count:16];
                    }

                    while (v226);
                  }

                  v213 = v268;
                  v209 = v270;
                }

                v230 = [v215 zoneName];
                v231 = [v147 objectForKeyedSubscript:v230];

                if (v231)
                {
                  v232 = [v231 longValue];
                  v233 = 1;
                  if (v232 >= 11)
                  {
                    v234 = v232;
                    do
                    {
                      v232 = v234 / 0xA;
                      v233 *= 10;
                      v235 = v234 > 0x6D;
                      v234 /= 0xAuLL;
                    }

                    while (v235);
                  }

                  v236 = [NSNumber numberWithLongLong:v233 * v232];

                  v237 = [v215 launch];
                  [v237 addAttribute:@"zonesize" value:v236];

                  v238 = [v215 launch];
                  if (v212 < 11)
                  {
                    v241 = v212;
                    v239 = 1;
                  }

                  else
                  {
                    v239 = 1;
                    v240 = v212;
                    do
                    {
                      v241 = v240 / 0xA;
                      v239 *= 10;
                      v235 = v240 > 0x6D;
                      v240 /= 0xAuLL;
                    }

                    while (v235);
                  }

                  v242 = [NSNumber numberWithLongLong:v239 * v241];
                  [v238 addAttribute:@"totalsize" value:v242];
                }

                v211 = v281;
              }

              v214 = v214 + 1;
            }

            while (v214 != v211);
            v211 = [v209 countByEnumeratingWithState:&v291 objects:v334 count:16];
          }

          while (v211);

          if (v147)
          {
            v209 = [*(v285 + 32) operationDependencies];
            v243 = [v209 overallLaunch];
            v244 = &swift_errorRelease_ptr;
            v245 = 1;
            if (v212 >= 11)
            {
              v246 = v212;
              do
              {
                v212 = v246 / 0xA;
                v245 *= 10;
                v235 = v246 > 0x6D;
                v246 /= 0xAuLL;
              }

              while (v235);
            }

            v247 = [NSNumber numberWithLongLong:v245 * v212];
            [v243 addAttribute:@"totalsize" value:v247];

            v171 = v285;
LABEL_202:

            v248 = v257;
            v145 = v258;
          }

          else
          {
            v171 = v285;
            v248 = v257;
            v145 = v258;
            v244 = &swift_errorRelease_ptr;
          }

          *(*(*(v171 + 56) + 8) + 24) = 1;
          v249 = objc_alloc(v244[168]);
          v250 = [*(v171 + 32) operationDependencies];
          v251 = [v250 activeAccount];
          v252 = [v251 altDSID];
          v253 = kSecurityRTCEventNameContentSyncFinish;
          v254 = [*(v171 + 32) operationDependencies];
          v157 = [v249 initWithCKKSMetrics:&__NSDictionary0__struct altDSID:v252 eventName:v253 testsAreEnabled:0 category:v248 sendMetric:{objc_msgSend(v254, "sendMetric")}];

          [v157 sendMetricWithResult:1 error:0];
          v170 = (v171 + 48);
          goto LABEL_205;
        }

        v147 = 0;
        v244 = &swift_errorRelease_ptr;
        goto LABEL_202;
      }

      goto LABEL_117;
    }
  }

  v166 = [v153 zoneID];
  v167 = [v166 zoneName];
  v168 = sub_100019104(@"ckksscan", v167);

  if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
  {
    v169 = [v157 lastLocalKeychainScanTime];
    *buf = 138412290;
    v343 = v169;
    _os_log_impl(&_mh_execute_header, v168, OS_LOG_TYPE_DEFAULT, "CKKS scan last occurred at %@; beginning a new one", buf, 0xCu);
  }

  v170 = &off_100343BF0;
  v171 = v285;
  v145 = v258;
LABEL_205:
  v142 = v278;
  v126 = v255;
  [*(v171 + 40) setNextState:{*v170, v255}];

  v180 = v265;
  v133 = v260;
LABEL_206:

  v144 = v256;
  v143 = v261;
LABEL_207:

LABEL_54:
}

void sub_1001CAFA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x220]);
  _Unwind_Resume(a1);
}

void sub_1001CB02C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained operationDependencies];
  [v2 operateOnAllViews];

  v3 = sub_100019104(@"ckksview", 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained operationDependencies];
    v5 = [v4 views];
    *buf = 138412290;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Now operating on these views: %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [WeakRetained operationDependencies];
  v7 = [v6 allViews];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * v11) launch];
        [v12 addEvent:@"priority-complete"];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [WeakRetained operationDependencies];
  v14 = [v13 overallLaunch];
  [v14 addEvent:@"priority-complete"];
}

void sub_1001CB228(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained stateMachine];
  [v1 handleFlag:@"fetch_complete"];
}

void sub_1001CB288(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained operationDependencies];
  [v5 operateOnAllViews];

  v6 = sub_100019104(@"ckksview", 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [WeakRetained operationDependencies];
    v8 = [v7 views];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "After trust failure, operating on these views: %@", &v10, 0xCu);
  }

  v9 = [v3 intendedState];
  [v3 setNextState:v9];
}

void sub_1001CB948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001CB998(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (*(a1 + 32))
  {
    v6 = [WeakRetained zoneName];
    v7 = sub_100019104(@"ckksreset", v6);

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v19 = 138412290;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Restricting cloudkit zone reset to a view subset %@", &v19, 0xCu);
    }

    v9 = [v5 operationDependencies];
    v10 = [v9 viewStatesByNames:*(a1 + 32)];
  }

  else
  {
    v11 = [WeakRetained operationDependencies];
    v10 = [v11 activeManagedViews];

    v12 = [v5 zoneName];
    v9 = sub_100019104(@"ckksreset", v12);

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Restricting cloudkit zone reset to active CKKS-managed subset %@", &v19, 0xCu);
    }
  }

  v13 = [v5 operationDependencies];
  [v13 operateOnSelectViews:v10];

  v14 = [v5 zoneName];
  v15 = sub_100019104(@"ckksreset", v14);

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v5 operationDependencies];
    v17 = [v16 views];
    v19 = 138412290;
    v20 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Beginning cloudkit zone reset for %@", &v19, 0xCu);
  }

  v18 = [v3 intendedState];
  [v3 setNextState:v18];
}

void sub_1001CBF90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001CBFD4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (*(a1 + 32))
  {
    v6 = [WeakRetained zoneName];
    v7 = sub_100019104(@"ckksreset", v6);

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v17 = 138412290;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Restricting local data reset to a view subset %@", &v17, 0xCu);
    }

    v9 = [v5 operationDependencies];
    v10 = [v9 viewStatesByNames:*(a1 + 32)];

    v11 = [v5 operationDependencies];
    [v11 operateOnSelectViews:v10];
  }

  v12 = [v5 zoneName];
  v13 = sub_100019104(@"ckksreset", v12);

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v5 operationDependencies];
    v15 = [v14 views];
    v17 = 138412290;
    v18 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Beginning local data reset for %@", &v17, 0xCu);
  }

  v16 = [v3 intendedState];
  [v3 setNextState:v16];
}

void sub_1001CC2A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1001CC2C4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001CC36C;
  v6[3] = &unk_100343B50;
  v6[4] = WeakRetained;
  v7 = v3;
  v5 = v3;
  [WeakRetained dispatchSyncWithSQLTransaction:v6];
}

uint64_t sub_1001CC36C(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v98 = a1;
  v3 = [*(a1 + 32) operationDependencies];
  v4 = [v3 views];

  v5 = [v4 countByEnumeratingWithState:&v113 objects:v122 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v114;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v114 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v113 + 1) + 8 * i);
        v10 = [*(v98 + 32) operationDependencies];
        v11 = [v10 contextID];
        v12 = [v9 zoneID];
        v13 = [v12 zoneName];
        v14 = [CKKSZoneStateEntry contextID:v11 zoneName:v13];

        [v2 addObject:v14];
      }

      v6 = [v4 countByEnumeratingWithState:&v113 objects:v122 count:16];
    }

    while (v6);
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v15 = v2;
  v16 = [v15 countByEnumeratingWithState:&v109 objects:v121 count:16];
  if (v16)
  {
    v17 = v16;
    v95 = 0;
    v18 = 0;
    v19 = *v110;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v110 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v109 + 1) + 8 * j);
        if (([v21 ckzonecreated] & 1) == 0)
        {
          v33 = [*(v98 + 32) zoneName];
          v34 = sub_100019104(@"ckks", v33);

          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v120 = v21;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Zone does not exist(%@); going to restart operation", buf, 0xCu);
          }

          [*(v98 + 40) setNextState:@"initializing"];
          goto LABEL_89;
        }

        v22 = [v21 getChangeToken];

        if (!v22)
        {
          [v21 setFetchNewestChangesFirst:1];
          v108 = 0;
          [v21 saveToDatabase:&v108];
          v23 = v108;
          if (v23)
          {
            v24 = sub_100019104(@"ckksfetch", 0);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v120 = v23;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Couldn't save new server change token: %@", buf, 0xCu);
            }
          }

          v18 = 1;
        }

        if ([v21 moreRecordsInCloudKit])
        {
          v25 = [*(v98 + 32) zoneName];
          v26 = sub_100019104(@"ckks", v25);

          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "CloudKit reports there's more records to fetch!", buf, 2u);
          }

          v95 = 1;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v109 objects:v121 count:16];
    }

    while (v17);

    if (v18)
    {
      v27 = [CKOperationGroup CKKSGroupWithName:@"initial-setup"];
      v28 = [*(v98 + 32) operationDependencies];
      [v28 setCkoperationGroup:v27];

      v29 = [*(v98 + 32) zoneName];
      v30 = sub_100019104(@"ckks", v29);

      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "No existing change token; going to try to match local items with CloudKit ones.", buf, 2u);
      }

      v31 = [*(v98 + 32) operationDependencies];
      v32 = [v31 currentFetchReasons];
      [v32 addObject:@"initialfetch"];

      [*(v98 + 40) setNextState:@"begin_fetch"];
      goto LABEL_89;
    }
  }

  else
  {

    v95 = 0;
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v35 = v15;
  v36 = v15;
  v37 = [v36 countByEnumeratingWithState:&v104 objects:v118 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v105;
    v40 = 5;
    do
    {
      for (k = 0; k != v38; k = k + 1)
      {
        if (*v105 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v42 = *(*(&v104 + 1) + 8 * k);
        if ([v42 lastFixup] < v40)
        {
          v40 = [v42 lastFixup];
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v104 objects:v118 count:16];
    }

    while (v38);
  }

  else
  {
    v40 = 5;
  }

  v43 = [CKKSFixups fixupOperation:v40];
  v44 = *(v98 + 32);
  if (v43)
  {
    v45 = [v44 zoneName];
    v46 = sub_100019104(@"ckksfixup", v45);

    v15 = v35;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = [*(v98 + 32) lastFixupOperation];
      *buf = 138412290;
      v120 = v47;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "We have a fixup to perform: %@", buf, 0xCu);
    }

    [*(v98 + 40) setNextState:v43];
    goto LABEL_88;
  }

  v103 = 0;
  [v44 _onqueueResetAllInflightOQE:&v103];
  v48 = v103;
  if (v48)
  {
    v49 = [*(v98 + 32) zoneName];
    v50 = sub_100019104(@"ckks", v49);

    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v120 = v48;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Couldn't reset in-flight OQEs, bad behavior ahead: %@", buf, 0xCu);
    }
  }

  v94 = v48;
  v51 = [CKOperationGroup CKKSGroupWithName:@"restart-setup"];
  v52 = [*(v98 + 32) operationDependencies];
  [v52 setCkoperationGroup:v51];

  v53 = [CKOperationGroup CKKSGroupWithName:@"restart-setup"];
  v54 = [*(v98 + 32) operationDependencies];
  [v54 setCurrentOutgoingQueueOperationGroup:v53];

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v55 = [*(v98 + 32) operationDependencies];
  v56 = [v55 activeManagedViews];

  v96 = v56;
  v57 = [v56 countByEnumeratingWithState:&v99 objects:v117 count:16];
  v93 = v35;
  if (!v57)
  {
    LODWORD(v59) = 0;
    goto LABEL_80;
  }

  v58 = v57;
  v59 = 0;
  obj = *v100;
  do
  {
    for (m = 0; m != v58; m = m + 1)
    {
      if (*v100 != obj)
      {
        objc_enumerationMutation(v96);
      }

      v61 = *(*(&v99 + 1) + 8 * m);
      v62 = [v61 zoneID];
      v63 = [v61 contextID];
      v64 = [CKKSCurrentKeySet loadForZone:v62 contextID:v63];

      v65 = [v64 error];
      if (v65)
      {
        v66 = v65;
        v67 = [v64 error];
        v68 = [v67 domain];
        if ([v68 isEqual:@"securityd"])
        {
          [v64 error];
          v70 = v69 = v59;
          v71 = [v70 code];

          v59 = v69;
          if (v71 == -25300)
          {
            goto LABEL_66;
          }
        }

        else
        {
        }

        v72 = [*(v98 + 32) zoneName];
        v73 = sub_100019104(@"ckkskey", v72);

        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          v74 = [v64 error];
          *buf = 138412290;
          v120 = v74;
          _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "Error examining existing key hierarchy: %@", buf, 0xCu);
        }
      }

LABEL_66:
      v75 = [v64 tlk];
      if (v75)
      {
        v76 = v75;
        v77 = [v64 classA];
        if (v77)
        {
          v78 = v77;
          v79 = [v64 classC];
          if (v79)
          {
            v80 = v79;
            v81 = [v64 error];

            if (!v81)
            {
              goto LABEL_76;
            }

            goto LABEL_73;
          }
        }
      }

LABEL_73:
      v82 = [v61 zoneID];
      v83 = [v82 zoneName];
      v84 = sub_100019104(@"ckkskey", v83);

      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        v85 = [v61 zoneID];
        *buf = 138412290;
        v120 = v85;
        _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "No existing key hierarchy for %@. Check if there's one in CloudKit...", buf, 0xCu);
      }

      v59 = 1;
LABEL_76:
    }

    v58 = [v96 countByEnumeratingWithState:&v99 objects:v117 count:16];
  }

  while (v58);
LABEL_80:

  if ((v59 | v95))
  {
    v86 = v94;
    v43 = 0;
    v15 = v93;
    if (v95)
    {
      v87 = [*(v98 + 32) operationDependencies];
      v88 = [v87 currentFetchReasons];
      [v88 addObject:@"more-coming"];
    }

    if (v59)
    {
      v89 = [*(v98 + 32) operationDependencies];
      v90 = [v89 currentFetchReasons];
      [v90 addObject:@"periodic"];
    }

    v91 = off_100343B38;
  }

  else
  {
    v91 = &off_100343B40;
    v86 = v94;
    v43 = 0;
    v15 = v93;
  }

  [*(v98 + 40) setNextState:*v91];

LABEL_88:
LABEL_89:

  return 1;
}

void sub_1001CD9B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 136));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_1001CD9FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained stateMachine];
  [v1 handleFlag:@"oqo_token"];
}

void sub_1001CDA5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained stateMachine];
  [v1 handleFlag:@"oqo_token"];
}

void sub_1001CDABC(void *a1, const char *a2, CFDataRef theData, __CFString **a4)
{
  if (theData)
  {
    if (CFDataGetLength(theData) < 0)
    {
      sub_1000103CC(-50, a4, @"no data for key %s", a2);
    }

    else
    {
      BytePtr = CFDataGetBytePtr(theData);
      Length = CFDataGetLength(theData);

      xpc_dictionary_set_data(a1, a2, BytePtr, Length);
    }
  }

  else
  {
    sub_1000103CC(-50, a4, @"data for key %s is NULL", a2);
  }
}

void sub_1001CDB78(uint64_t a1, const __CFString *a2, __CFString **a3)
{
  if (a2)
  {
    v4[0] = 0;
    v4[1] = v4;
    v4[2] = 0x2000000000;
    v5 = 1;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 0x40000000;
    v3[2] = sub_1001CDC8C;
    v3[3] = &unk_100343FB8;
    v3[4] = v4;
    v3[5] = a1;
    v3[6] = "status";
    v3[7] = a3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_1000105E8;
    v6[3] = &unk_100335678;
    v6[4] = v3;
    sub_100008380(a2, v6);
    _Block_object_dispose(v4, 8);
  }

  else
  {
    sub_1000103CC(-50, a3, @"string for key %s is NULL", "status");
  }
}

void sub_1001CDC8C(uint64_t a1, char *string)
{
  v3 = *(a1 + 48);
  if (string)
  {
    v4 = *(a1 + 40);

    xpc_dictionary_set_string(v4, v3, string);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = sub_1000103CC(-50, *(a1 + 56), @"failed to convert string for key %s to utf8", *(a1 + 48));
  }
}

uint64_t sub_1001CDD0C(void *a1)
{
  v1 = xpc_dictionary_dup_fd(a1, "fileDescriptor");
  if ((v1 & 0x80000000) != 0)
  {
    sub_1000103CC(-50, 0, @"missing fd for key %s", "fileDescriptor");
  }

  return v1;
}

const void *sub_1001CDD64(void *a1, const char *a2, __CFString **a3)
{
  v5 = sub_10000674C(a1, a2, a3);
  v6 = v5;
  if (v5 && (v7 = CFGetTypeID(v5), v7 == CFSetGetTypeID()))
  {
    CFRetain(v6);
    v8 = v6;
  }

  else
  {
    if (a3)
    {
      sub_1000103CC(-50, a3, @"object %@ is not a set", v6);
    }

    if (!v6)
    {
      return 0;
    }

    v9 = CFGetTypeID(v6);
    v10 = CFCopyTypeIDDescription(v9);
    sub_1000103CC(-50, a3, @"object for key %s not set but %@", a2, v10);
    if (v10)
    {
      CFRelease(v10);
    }

    v8 = 0;
  }

  CFRelease(v6);
  return v8;
}

BOOL sub_1001CDE38(void *a1, const char *a2, void *a3, __CFString **a4)
{
  length = 0;
  data = xpc_dictionary_get_data(a1, a2, &length);
  if (data)
  {
    data = sub_1000182FC(a1, a2, a4);
    v9 = data != 0;
  }

  else
  {
    v9 = 1;
  }

  *a3 = data;
  return v9;
}

BOOL sub_1001CDEAC(void *a1, void *a2, __CFString **a3)
{
  value = xpc_dictionary_get_value(a1, "backup");
  if (value)
  {
    value = sub_100006304(a1, "backup", a3);
    v7 = value != 0;
  }

  else
  {
    v7 = 1;
  }

  *a2 = value;
  return v7;
}

CFStringRef sub_1001CDF18(void *a1, const char *a2, __CFString **a3)
{
  string = xpc_dictionary_get_string(a1, a2);
  if (string)
  {
    v6 = string;
    result = CFStringCreateWithCString(kCFAllocatorDefault, string, 0x8000100u);
    if (result)
    {
      return result;
    }

    sub_1000103CC(-108, a3, @"object for key %s failed to convert %s to CFString", a2, v6);
  }

  else
  {
    sub_1000103CC(-50, a3, @"object for key %s not string", a2);
  }

  return 0;
}

BOOL sub_1001CDFA8(void *a1, const char *a2, void *a3, __CFString **a4)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (value)
  {
    value = sub_1001CDF18(a1, a2, a4);
    v9 = value != 0;
  }

  else
  {
    v9 = 1;
  }

  *a3 = value;
  return v9;
}

void sub_1001D16B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a67, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001D1728(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1001D1740(uint64_t a1)
{
  v2 = [*(a1 + 32) deps];
  v3 = [v2 contextID];
  v4 = [*(a1 + 40) zoneID];
  v57 = 0;
  v5 = [CKKSKey remoteKeysForContextID:v3 zoneID:v4 error:&v57];
  v6 = v57;

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    *(*(*(a1 + 72) + 8) + 24) += [v5 count];
    if ([v5 count])
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = *(a1 + 56);
      v17 = *(*(a1 + 88) + 8);
      obj = *(v17 + 40);
      v18 = [v14 processRemoteKeys:v5 viewState:v15 currentTrustStates:v16 error:&obj];
      objc_storeStrong((v17 + 40), obj);
      v19 = *(*(a1 + 80) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      v21 = [*(a1 + 40) zoneID];
      v22 = [v21 zoneName];
      v23 = sub_100019104(@"ckkskey", v22);

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(*(*(a1 + 80) + 8) + 40);
        v25 = *(*(*(a1 + 88) + 8) + 40);
        *buf = 138412546;
        v61 = v24;
        v62 = 2112;
        v63 = v25;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "After remote key processing, Key hierarchy is '%@' (error: %@)", buf, 0x16u);
      }

      if (![*(*(*(a1 + 80) + 8) + 40) isEqualToString:@"ready"])
      {
        v13 = 1;
        goto LABEL_29;
      }
    }

    v26 = [*(a1 + 32) deps];
    v27 = [v26 contextID];
    v28 = [*(a1 + 40) zoneID];
    v55 = 0;
    v29 = [CKKSIncomingQueueEntry allIQEsHaveValidUnwrappingKeysInContextID:v27 zoneID:v28 error:&v55];
    v30 = v55;

    if (v30)
    {
      v31 = [*(a1 + 40) zoneID];
      v32 = [v31 zoneName];
      v33 = sub_100019104(@"ckkskey", v32);

      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v61 = v30;
        v34 = "Unable to determine if all IQEs have parent keys: %@";
        v35 = v33;
        v36 = OS_LOG_TYPE_ERROR;
        v37 = 12;
LABEL_15:
        _os_log_impl(&_mh_execute_header, v35, v36, v34, buf, v37);
      }
    }

    else
    {
      if (v29)
      {
LABEL_25:
        v46 = [*(a1 + 40) zoneID];
        v47 = [*(a1 + 32) deps];
        v48 = [v47 contextID];
        v49 = [CKKSCurrentKeySet loadForZone:v46 contextID:v48];
        v50 = *(*(a1 + 96) + 8);
        v51 = *(v50 + 40);
        *(v50 + 40) = v49;

        if ([*(*(*(a1 + 80) + 8) + 40) isEqualToString:@"error"])
        {
          v52 = *(a1 + 48);
          v53 = [*(a1 + 32) error];
          [v52 populateUnderlyingErrorsStartingWithRootError:v53];

          v13 = 0;
          *(*(*(a1 + 64) + 8) + 24) = 0;
        }

        else
        {
          v13 = 1;
        }

        goto LABEL_29;
      }

      v38 = [*(a1 + 32) allowFullRefetchResult];
      v39 = [*(a1 + 40) zoneID];
      v40 = [v39 zoneName];
      v33 = sub_100019104(@"ckkskey", v40);

      v41 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
      if (v38)
      {
        if (v41)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "We have some item that encrypts to a non-existent key. This is exceptional; requesting full refetch", buf, 2u);
        }

        v42 = *(a1 + 48);
        v58 = kSecurityRTCFieldFullRefetchNeeded;
        v59 = &__kCFBooleanTrue;
        v43 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        [v42 addMetrics:v43];

        v44 = *(*(a1 + 80) + 8);
        v45 = @"needrefetch";
        v33 = *(v44 + 40);
        *(v44 + 40) = @"needrefetch";
        goto LABEL_24;
      }

      if (v41)
      {
        *buf = 0;
        v34 = "We have some item that encrypts to a non-existent key, but we cannot request a refetch! Possible inifinite-loop ahead";
        v35 = v33;
        v36 = OS_LOG_TYPE_DEFAULT;
        v37 = 2;
        goto LABEL_15;
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  v8 = [*(a1 + 40) zoneID];
  v9 = [v8 zoneName];
  v10 = sub_100019104(@"ckkskey", v9);

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v61 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "couldn't fetch list of remote keys: %@", buf, 0xCu);
  }

  [*(a1 + 32) setError:v6];
  *(*(*(a1 + 64) + 8) + 24) = 0;
  v11 = *(a1 + 48);
  v12 = [*(a1 + 32) error];
  [v11 populateUnderlyingErrorsStartingWithRootError:v12];

  [*(a1 + 40) setViewKeyHierarchyState:@"error"];
  v13 = 0;
LABEL_29:

  return v13;
}

void sub_1001D3B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001D3B64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001D3B7C(uint64_t a1, void *a2)
{
  v6 = [a2 objectForKeyedSubscript:@"count(rowid)"];
  v3 = [v6 asNSNumberInteger];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1001D5654(uint64_t a1)
{
  if ([*(a1 + 32) readyNotificationArmed])
  {
    [*(a1 + 32) setReadyNotificationArmed:0];
    v2 = [*(a1 + 32) notifyViewReadyScheduler];
    [v2 trigger];
  }
}

void sub_1001D57D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001D57E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001D5800(uint64_t a1)
{
  v5 = [*(a1 + 32) mutableStateConditions];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001D5920(uint64_t a1)
{
  if (([*(a1 + 32) isEqualToString:*(*(a1 + 40) + 16)] & 1) == 0)
  {
    v2 = *(a1 + 40);
    if (v2[2])
    {
      v3 = objc_alloc_init(CKKSCondition);
      v4 = [*(a1 + 40) mutableStateConditions];
      [v4 setObject:v3 forKeyedSubscript:*(*(a1 + 40) + 16)];

      v2 = *(a1 + 40);
    }

    v5 = [v2 allowableStates];
    v6 = [v5 containsObject:*(a1 + 32)];

    if ((v6 & 1) == 0)
    {
      v18 = +[NSAssertionHandler currentHandler];
      [v18 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"CKKSKeychainViewState.m" lineNumber:123 description:{@"state machine tried to enter unknown state %@", *(a1 + 32)}];
    }

    objc_storeStrong((*(a1 + 40) + 16), *(a1 + 32));
    v7 = [*(a1 + 40) zoneID];
    v8 = [v7 zoneName];
    v9 = sub_100019104(@"ckks-view-state", v8);

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138412290;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Zone is entering %@", buf, 0xCu);
    }

    v11 = [*(a1 + 40) launch];
    [v11 addEvent:*(a1 + 32)];

    if (*(a1 + 32))
    {
      v12 = [*(a1 + 40) mutableStateConditions];
      v13 = [v12 objectForKeyedSubscript:*(a1 + 32)];
      [v13 fulfill];

      if ([*(a1 + 32) isEqualToString:@"ready"])
      {
        v14 = +[CKKSAnalytics logger];
        v15 = +[NSDate date];
        v16 = [*(a1 + 40) zoneID];
        v17 = [v16 zoneName];
        [v14 setDateProperty:v15 forKey:@"lastKSR" zoneName:v17];
      }
    }
  }
}

void sub_1001D6118(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = objc_alloc_init(CKKSCondition);
  v4 = [*(a1 + 32) mutableStateConditions];
  [v4 setObject:v5 forKeyedSubscript:v3];
}

void sub_1001D78A4(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x390], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001D796C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001D7984(uint64_t a1)
{
  v6 = [*(a1 + 32) zoneID];
  v2 = [*(a1 + 32) contextID];
  v3 = [CKKSCurrentKeySet loadForZone:v6 contextID:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

char *sub_1001D7A1C(uint64_t a1)
{
  result = [*(a1 + 32) count];
  if (&result[-*(a1 + 56)] <= 0x3E8)
  {
    v3 = *(a1 + 40);
    v4 = *(*(*(a1 + 48) + 8) + 24);

    return [v3 sendMetricWithResult:v4 error:0];
  }

  return result;
}

void sub_1001D7A80(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) zoneID];
  v9 = [v8 zoneName];
  v10 = sub_100019104(@"ckksshare", v9);

  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "error on row: %@ %@", &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 recordName];
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Successfully completed upload for record %@", &v12, 0xCu);
  }
}

void sub_1001D7BEC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v9 = [WeakRetained deps];
  v10 = [v9 databaseProvider];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001D7D48;
  v15[3] = &unk_100344570;
  v16 = v7;
  v17 = *(a1 + 32);
  v18 = v6;
  v11 = *(a1 + 64);
  v19 = WeakRetained;
  v22 = v11;
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v12 = v6;
  v13 = v7;
  [v10 dispatchSyncWithSQLTransaction:v15];

  v14 = [WeakRetained operationQueue];
  [v14 addOperation:*(a1 + 56)];
}

uint64_t sub_1001D7D48(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) zoneID];
  v4 = [v3 zoneName];
  v5 = sub_100019104(@"ckksshare", v4);

  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v31 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Completed TLK Share heal operation with error: %@", buf, 0xCu);
    }

    [*(a1 + 64) populateUnderlyingErrorsStartingWithRootError:*(a1 + 32)];
    v7 = [*(a1 + 56) deps];
    [v7 intransactionCKWriteFailed:*(a1 + 32) attemptedRecordsChanged:*(a1 + 72)];

    [*(a1 + 56) setCloudkitWriteFailures:1];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Completed TLK Share heal operation with success", buf, 2u);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = *(a1 + 48);
    v8 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          v13 = [CKKSTLKShareRecord alloc];
          v14 = [*(a1 + 56) deps];
          v15 = [v14 contextID];
          v16 = [(CKKSCKRecordHolder *)v13 initWithCKRecord:v12 contextID:v15];

          v25 = 0;
          LODWORD(v15) = [(CKKSSQLDatabaseObject *)v16 saveToDatabase:&v25];
          v17 = v25;
          v18 = [*(a1 + 40) zoneID];
          v19 = [v18 zoneName];
          v20 = sub_100019104(@"ckksshare", v19);

          if (v15)
          {
            v21 = v17 == 0;
          }

          else
          {
            v21 = 0;
          }

          if (!v21)
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v31 = v17;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Couldn't save new TLKShare record to database: %@", buf, 0xCu);
            }

            [*(a1 + 40) setViewKeyHierarchyState:@"error"];
            *(*(*(a1 + 80) + 8) + 24) = 0;
            [*(a1 + 64) populateUnderlyingErrorsStartingWithRootError:v17];

            goto LABEL_25;
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v31 = v16;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Successfully completed upload for %@", buf, 0xCu);
          }
        }

        v9 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
LABEL_25:
  }

  return 1;
}

void sub_1001D85D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001D8630(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained deps];
  v4 = [v3 overallLaunch];
  [v4 addEvent:@"heal-tlk-shares-complete"];

  if ([WeakRetained failedDueToEssentialTrustState])
  {
    v5 = @"lose_trust";
LABEL_7:
    [WeakRetained setNextState:v5];
    goto LABEL_8;
  }

  if ([WeakRetained cloudkitWriteFailures])
  {
    v6 = sub_100019104(@"ckksheal", 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Due to write failures, we'll retry later", v13, 2u);
    }

    v5 = @"healtlksharesfailed";
    goto LABEL_7;
  }

  v9 = [WeakRetained intendedState];
  [WeakRetained setNextState:v9];

  v10 = [WeakRetained failedDueToLockState];
  v11 = *(a1 + 32);
  if (!v10)
  {
    v7 = *(a1 + 32);
    v8 = 1;
    goto LABEL_9;
  }

  v14 = kSecurityRTCFieldIsLocked;
  v15 = &__kCFBooleanFalse;
  v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  [v11 addMetrics:v12];

LABEL_8:
  v7 = *(a1 + 32);
  v8 = 0;
LABEL_9:
  [v7 sendMetricWithResult:v8 error:0];
}

void sub_1001D9E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&STACK[0x2E0], 8);
  _Unwind_Resume(a1);
}

void sub_1001D9E84(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v2 = [*(a1 + 32) peerID];
  v3 = [*(a1 + 40) tlk];
  v4 = [v3 contextID];
  v5 = [*(a1 + 40) tlk];
  v6 = [v5 uuid];
  v7 = [*(a1 + 40) tlk];
  v8 = [v7 zoneID];
  v9 = *(*(a1 + 56) + 8);
  obj = *(v9 + 40);
  v10 = [CKKSTLKShareRecord allFor:v2 contextID:v4 keyUUID:v6 zoneID:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  objc_autoreleasePoolPop(context);
}

void sub_1001DACAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001DACCC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
}

void sub_1001DB054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001DB074(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
}

void sub_1001DB634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001DB650(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001DB668(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 userInfo];
  obj = [v4 objectForKeyedSubscript:@"CKRetryAfter"];

  v5 = obj;
  if (obj)
  {
    v6 = *(*(a1 + 32) + 8);
    if (*(v6 + 40))
    {
      [obj doubleValue];
      v8 = v7;
      [*(*(*(a1 + 32) + 8) + 40) doubleValue];
      v5 = obj;
      if (v8 >= v9)
      {
        goto LABEL_6;
      }

      v6 = *(*(a1 + 32) + 8);
    }

    objc_storeStrong((v6 + 40), obj);
    v5 = obj;
  }

LABEL_6:
}

uint64_t sub_1001DBF20(uint64_t a1)
{
  v1 = a1;
  if ([*(a1 + 32) isCancelled])
  {
    v2 = sub_100019104(@"ckksreencrypt", 0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CKKSReencryptOutgoingItemsOperation cancelled, quitting", buf, 2u);
    }

LABEL_86:
    v116 = 0;
    goto LABEL_87;
  }

  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v3 = [*(v1 + 32) deps];
  v4 = [v3 activeManagedViews];

  obj = v4;
  v124 = [v4 countByEnumeratingWithState:&v154 objects:v165 count:16];
  if (!v124)
  {
    goto LABEL_81;
  }

  v121 = 0;
  v123 = *v155;
  v138 = v1;
  do
  {
    v5 = 0;
    do
    {
      if (*v155 != v123)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v154 + 1) + 8 * v5);
      v7 = [v6 viewKeyHierarchyState];
      v8 = [v7 isEqualToString:@"ready"];

      if ((v8 & 1) == 0)
      {
        v9 = [v6 zoneID];
        v10 = [v9 zoneName];
        v11 = sub_100019104(@"ckksreencrypt", v10);

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v159 = v6;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "View is %@; reencryption will likely fail", buf, 0xCu);
        }
      }

      v12 = [*(v1 + 32) deps];
      v13 = [v12 contextID];
      v14 = [v6 zoneID];
      v153 = 0;
      v15 = [CKKSOutgoingQueueEntry allInState:@"reencrypt" contextID:v13 zoneID:v14 error:&v153];
      v2 = v153;

      if (v2)
      {
        v117 = [v6 zoneID];
        v118 = [v117 zoneName];
        v119 = sub_100019104(@"ckksreencrypt", v118);

        if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v159 = v2;
          _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_ERROR, "Error fetching oqes from database: %@", buf, 0xCu);
        }

        [*(v1 + 32) setError:v2];
        goto LABEL_86;
      }

      v126 = v5;
      v16 = [v6 zoneID];
      v17 = [v16 zoneName];
      +[CKKSPowerCollection CKKSPowerEvent:zone:count:](CKKSPowerCollection, "CKKSPowerEvent:zone:count:", @"reencryptOutgoing", v17, [v15 count]);

      v134 = objc_alloc_init(CKKSMemoryKeyCache);
      v149 = 0u;
      v150 = 0u;
      v151 = 0u;
      v152 = 0u;
      v135 = v15;
      v137 = [v135 countByEnumeratingWithState:&v149 objects:v164 count:16];
      if (v137)
      {
        v136 = *v150;
        v130 = v6;
        do
        {
          v18 = 0;
          do
          {
            v19 = v6;
            if (*v150 != v136)
            {
              objc_enumerationMutation(v135);
            }

            v20 = *(*(&v149 + 1) + 8 * v18);
            v21 = [v20 uuid];
            v22 = [*(v1 + 32) deps];
            v23 = [v22 contextID];
            v24 = [v20 item];
            v25 = [v24 zoneID];
            v148 = 0;
            v26 = [CKKSOutgoingQueueEntry tryFromDatabase:v21 state:@"new" contextID:v23 zoneID:v25 error:&v148];
            v27 = v148;

            v6 = v19;
            if (v27)
            {
              v28 = [v19 zoneID];
              v29 = [v28 zoneName];
              v30 = sub_100019104(@"ckksreencrypt", v29);

              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v159 = v27;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Couldn't load 'new' OQE to determine status: %@", buf, 0xCu);
              }

              v1 = v138;
              goto LABEL_23;
            }

            v31 = [v19 zoneID];
            v32 = [v31 zoneName];
            v33 = sub_100019104(@"ckksreencrypt", v32);

            v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
            if (!v26)
            {
              if (v34)
              {
                *buf = 138412290;
                v159 = v20;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Reencrypting item %@", buf, 0xCu);
              }

              v39 = [v20 item];
              v146 = 0;
              v27 = [CKKSItemEncrypter decryptItemToDictionary:v39 keyCache:v134 error:&v146];
              v40 = v146;

              if (v40)
              {
                v41 = [v40 domain];
                if ([v41 isEqualToString:@"securityd"])
                {
                  v42 = [v40 code];

                  v6 = v19;
                  if (v42 == -25300)
                  {
                    v43 = [v19 zoneID];
                    v44 = [v43 zoneName];
                    v45 = sub_100019104(@"ckksreencrypt", v44);

                    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v159 = v40;
                      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Couldn't find key in keychain; asking for reset: %@", buf, 0xCu);
                    }

                    v1 = v138;
                    v46 = [*(v138 + 32) deps];
                    v47 = [v46 flagHandler];
                    [v47 _onqueueHandleFlag:@"key_process_requested"];

                    [*(v138 + 32) setNextState:@"unhealthy"];
                    goto LABEL_50;
                  }
                }

                else
                {

                  v6 = v19;
                }

                v61 = [v6 zoneID];
                v62 = [v61 zoneName];
                v63 = sub_100019104(@"ckksreencrypt", v62);

                if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v159 = v20;
                  v160 = 2112;
                  p_super = v40;
                  _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "Couldn't decrypt item %@: %@", buf, 0x16u);
                }

                v1 = v138;
LABEL_50:
                [*(v1 + 32) setError:v40];
              }

              else
              {
                v131 = [v20 item];
                v48 = [v131 parentKeyUUID];
                v49 = [*(v138 + 32) deps];
                v50 = [v49 contextID];
                v51 = [v19 zoneID];
                v145 = 0;
                v52 = [(CKKSMemoryKeyCache *)v134 loadKeyForUUID:v48 contextID:v50 zoneID:v51 error:&v145];
                v53 = v145;

                if (v53)
                {
                  v54 = v53;
                  v40 = v52;
                  v6 = v130;
                  v55 = [v130 zoneID];
                  v56 = [v55 zoneName];
                  v57 = sub_100019104(@"ckksreencrypt", v56);

                  v58 = v54;
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                  {
                    v59 = [v20 item];
                    v60 = [v59 parentKeyUUID];
                    *buf = 138412802;
                    v159 = v60;
                    v160 = 2112;
                    p_super = v20;
                    v162 = 2112;
                    v163 = v54;
                    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "Couldn't fetch key (%@) for item %@: %@", buf, 0x20u);
                  }

                  v1 = v138;
                  [*(v138 + 32) setError:v54];
                  v26 = 0;
                }

                else
                {
                  v129 = v52;
                  v132 = [v52 keyclass];
                  v64 = [*(v138 + 32) deps];
                  v65 = [v64 contextID];
                  v66 = [v130 zoneID];
                  v144 = 0;
                  v67 = [(CKKSMemoryKeyCache *)v134 currentKeyForClass:v132 contextID:v65 zoneID:v66 error:&v144];
                  v68 = v144;

                  v69 = [v130 contextID];
                  v143 = v68;
                  v133 = v67;
                  v70 = [v67 ensureKeyLoadedForContextID:v69 cache:v134 error:&v143];
                  v71 = v143;

                  if (v71)
                  {
                    v6 = v130;
                    v72 = [v130 zoneID];
                    v73 = [v72 zoneName];
                    v74 = sub_100019104(@"ckksreencrypt", v73);

                    v40 = v129;
                    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
                    {
                      v75 = [v129 keyclass];
                      *buf = 138412546;
                      v159 = v75;
                      v160 = 2112;
                      p_super = v71;
                      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "Couldn't fetch the current key for class %@: %@", buf, 0x16u);
                    }

                    v1 = v138;
                    [*(v138 + 32) setError:v71];
                    v76 = v71;
                    v58 = v133;
                    v26 = 0;
                  }

                  else
                  {
                    v77 = [v20 item];
                    v78 = [v77 uuid];
                    v79 = [*(v138 + 32) deps];
                    v80 = [v79 contextID];
                    v81 = [v130 zoneID];
                    v142 = 0;
                    v128 = [CKKSMirrorEntry tryFromDatabase:v78 contextID:v80 zoneID:v81 error:&v142];
                    v82 = v142;

                    if (v82)
                    {
                      v6 = v130;
                      v83 = [v130 zoneID];
                      v84 = [v83 zoneName];
                      v85 = sub_100019104(@"ckksreencrypt", v84);

                      v26 = 0;
                      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                      {
                        v86 = [v20 item];
                        v87 = [v86 parentKeyUUID];
                        *buf = 138412802;
                        v159 = v87;
                        v160 = 2112;
                        p_super = v20;
                        v162 = 2112;
                        v163 = v82;
                        _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, "Couldn't fetch ckme (%@) for item %@: %@", buf, 0x20u);
                      }

                      v1 = v138;
                      [*(v138 + 32) setError:v82];
                      v88 = v82;
                      v40 = v129;
                      v58 = v133;
                    }

                    else
                    {
                      v89 = [v20 item];
                      v90 = [v128 item];
                      v141 = 0;
                      v91 = [CKKSItemEncrypter encryptCKKSItem:v89 dataDictionary:v27 updatingCKKSItem:v90 parentkey:v133 keyCache:v134 error:&v141];
                      v92 = v141;

                      v127 = v91;
                      if (v92)
                      {
                        v6 = v19;
                        [v19 zoneID];
                        v94 = v93 = v92;
                        v95 = [v94 zoneName];
                        v96 = sub_100019104(@"ckksreencrypt", v95);

                        v97 = v93;
                        v40 = v129;
                        v58 = v133;
                        if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412546;
                          v159 = v133;
                          v160 = 2112;
                          p_super = &v97->super.super;
                          _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_ERROR, "Couldn't encrypt under the new key %@: %@", buf, 0x16u);
                        }

                        v1 = v138;
                        [*(v138 + 32) setError:v97];
                        v26 = 0;
                      }

                      else
                      {
                        v98 = [CKKSOutgoingQueueEntry alloc];
                        v99 = [v20 action];
                        v100 = [v20 accessgroup];
                        v101 = [(CKKSOutgoingQueueEntry *)v98 initWithCKKSItem:v91 action:v99 state:@"new" waitUntil:0 accessGroup:v100];

                        v140 = 0;
                        [v20 deleteFromDatabase:&v140];
                        v102 = v140;
                        v139 = v102;
                        v125 = v101;
                        [(CKKSSQLDatabaseObject *)v101 saveToDatabase:&v139];
                        v103 = v139;

                        v6 = v19;
                        if (v103)
                        {
                          v104 = [v19 zoneID];
                          v105 = [v104 zoneName];
                          v106 = sub_100019104(@"ckksreencrypt", v105);

                          v58 = v133;
                          v26 = 0;
                          v40 = v129;
                          v97 = v125;
                          if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138412546;
                            v159 = &v125->super.super;
                            v160 = 2112;
                            p_super = v103;
                            _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, "Couldn't save newly-encrypted oqe %@: %@", buf, 0x16u);
                          }

                          v1 = v138;
                          [*(v138 + 32) setError:v103];
                        }

                        else
                        {
                          v121 = 1;
                          v1 = v138;
                          v58 = v133;
                          v26 = 0;
                          v40 = v129;
                          v97 = v125;
                        }
                      }

                      v88 = v127;
                    }

                    v76 = v128;
                  }
                }
              }

              goto LABEL_24;
            }

            v1 = v138;
            if (v34)
            {
              *buf = 138412546;
              v159 = v20;
              v160 = 2112;
              p_super = v26;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Have a new OQE superceding %@ (%@), skipping", buf, 0x16u);
            }

            v147 = 0;
            [v20 deleteFromDatabase:&v147];
            v35 = v147;
            if (v35)
            {
              v27 = v35;
              v36 = [v19 zoneID];
              v37 = [v36 zoneName];
              v38 = sub_100019104(@"ckksreencrypt", v37);

              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v159 = v20;
                v160 = 2112;
                p_super = v27;
                _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Couldn't delete reencrypting OQE(%@) from database: %@", buf, 0x16u);
              }

LABEL_23:
              [*(v1 + 32) setError:v27];
LABEL_24:
            }

            v18 = v18 + 1;
          }

          while (v137 != v18);
          v107 = [v135 countByEnumeratingWithState:&v149 objects:v164 count:16];
          v137 = v107;
        }

        while (v107);
      }

      v108 = +[CKKSAnalytics logger];
      v109 = [*(v1 + 32) error];

      v110 = [v6 zoneID];
      v111 = [v110 zoneName];
      if (v109)
      {
        [v108 logRecoverableError:0 forEvent:@"CKKSEventProcessReencryption" zoneName:v111 withAttributes:0];
      }

      else
      {
        [v108 logSuccessForEvent:@"CKKSEventProcessReencryption" zoneName:v111];
      }

      v5 = v126 + 1;
    }

    while ((v126 + 1) != v124);
    v124 = [obj countByEnumeratingWithState:&v154 objects:v165 count:16];
  }

  while (v124);

  if (v121)
  {
    v112 = [*(v1 + 32) deps];
    v113 = [v112 ckoperationGroup];
    v114 = [*(v1 + 32) deps];
    [v114 setCurrentOutgoingQueueOperationGroup:v113];

    obj = [*(v1 + 32) deps];
    v115 = [obj flagHandler];
    [v115 _onqueueHandleFlag:@"process_outgoing_queue"];

LABEL_81:
  }

  v2 = [*(v1 + 32) intendedState];
  [*(v1 + 32) setNextState:v2];
  v116 = 1;
LABEL_87:

  return v116;
}