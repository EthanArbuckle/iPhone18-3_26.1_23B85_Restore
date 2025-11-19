@interface CKKSHealTLKSharesOperation
+ (id)createMissingKeyShares:(id)a3 peers:(id)a4 databaseProvider:(id)a5 altDSID:(id)a6 sendMetric:(BOOL)a7 error:(id *)a8;
- (BOOL)areNewSharesSufficient:(id)a3 trustStates:(id)a4 error:(id *)a5;
- (CKKSHealTLKSharesOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5;
- (void)checkAndHealTLKShares:(id)a3 currentTrustStates:(id)a4;
- (void)groupStart;
@end

@implementation CKKSHealTLKSharesOperation

- (BOOL)areNewSharesSufficient:(id)a3 trustStates:(id)a4 error:(id *)a5
{
  v32 = a3;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = a4;
  v30 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v30)
  {
    v27 = a5;
    v29 = *v35;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v35 != v29)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v34 + 1) + 8 * v7);
      v9 = [(CKKSHealTLKSharesOperation *)self deps];
      v10 = [v9 databaseProvider];
      v11 = [(CKKSHealTLKSharesOperation *)self deps];
      v12 = [v11 activeAccount];
      v13 = [v12 altDSID];
      v14 = [(CKKSHealTLKSharesOperation *)self deps];
      v15 = [v14 sendMetric];
      v33 = 0;
      v16 = [CKKSHealTLKSharesOperation filterTrustedPeers:v8 missingTLKSharesFor:v32 databaseProvider:v10 altDSID:v13 sendMetric:v15 error:&v33];
      v17 = v33;

      if (!v16 || v17)
      {
        if ([v8 essential])
        {
          if (v27)
          {
            v25 = v17;
            *v27 = v17;
          }

          goto LABEL_21;
        }

        v18 = [v32 tlk];
        v19 = [v18 zoneName];
        v20 = sub_100019104(@"ckksshare", v19);

        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v39 = v8;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Failed to find peers for nonessential system: %@", buf, 0xCu);
        }
      }

      if ([v16 count])
      {
        v22 = [v32 tlk];
        v23 = [v22 zoneName];
        v24 = sub_100019104(@"ckksshare", v23);

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v39 = v16;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "New share set is missing shares for peers: %@", buf, 0xCu);
        }

LABEL_21:
        v21 = 0;
        goto LABEL_22;
      }

      if (v30 == ++v7)
      {
        v30 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
        if (v30)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v21 = 1;
LABEL_22:

  return v21;
}

- (void)checkAndHealTLKShares:(id)a3 currentTrustStates:(id)a4
{
  v6 = a3;
  v124 = a4;
  v169 = 0;
  v170 = &v169;
  v171 = 0x3032000000;
  v172 = sub_1001D796C;
  v173 = sub_1001D797C;
  v174 = 0;
  val = self;
  v7 = [(CKKSHealTLKSharesOperation *)self deps];
  v8 = [v7 databaseProvider];
  v166[0] = _NSConcreteStackBlock;
  v166[1] = 3221225472;
  v166[2] = sub_1001D7984;
  v166[3] = &unk_100344E90;
  v168 = &v169;
  v135 = v6;
  v167 = v135;
  [v8 dispatchSyncWithReadOnlySQLTransaction:v166];

  v9 = [v170[5] error];

  if (!v9)
  {
    v13 = [v135 zoneID];
    v14 = [v13 zoneName];
    v15 = sub_100019104(@"ckksshare", v14);

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v170[5];
      *buf = 138412290;
      *&buf[4] = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Key set is %@", buf, 0xCu);
    }

    v17 = [v135 zoneID];
    v18 = [v17 zoneName];
    [CKKSPowerCollection CKKSPowerEvent:@"TLKShareProcessing" zone:v18];

    v19 = [AAFAnalyticsEventSecurity alloc];
    v20 = kSecurityRTCFieldIsLocked;
    v186 = kSecurityRTCFieldIsLocked;
    v187 = &__kCFBooleanFalse;
    v21 = [NSDictionary dictionaryWithObjects:&v187 forKeys:&v186 count:1];
    v22 = [(CKKSHealTLKSharesOperation *)val deps];
    v23 = [v22 activeAccount];
    v24 = [v23 altDSID];
    v25 = [(CKKSHealTLKSharesOperation *)val deps];
    [v25 sendMetric];
    v123 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
    v131 = [v19 initWithCKKSMetrics:v21 altDSID:v24 eventName:kSecurityRTCEventNameCreateMissingTLKShares testsAreEnabled:0 category:? sendMetric:?];

    v26 = objc_autoreleasePoolPush();
    v27 = [v170[5] tlk];
    v165 = 0;
    v28 = [v27 loadKeyMaterialFromKeychain:&v165];
    v29 = v165;
    if (v29)
    {
      v30 = 0;
    }

    else
    {
      v30 = v28;
    }

    if ((v30 & 1) == 0)
    {
      v31 = [(CKKSHealTLKSharesOperation *)val deps];
      v32 = [v31 lockStateTracker];
      v33 = [v32 isLockedError:v29];

      if (v33)
      {
        v34 = [v135 zoneID];
        v35 = [v34 zoneName];
        v36 = sub_100019104(@"ckksshare", v35);

        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v29;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Keychain is locked: can't fix shares yet: %@", buf, 0xCu);
        }

        [(CKKSHealTLKSharesOperation *)val setFailedDueToLockState:1];
        v184 = v20;
        v185 = &__kCFBooleanTrue;
        v37 = [NSDictionary dictionaryWithObjects:&v185 forKeys:&v184 count:1];
        [v131 addMetrics:v37];
      }

      else
      {
        v38 = [v135 zoneID];
        v39 = [v38 zoneName];
        v40 = sub_100019104(@"ckksshare", v39);

        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v29;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "couldn't load current tlk from keychain: %@", buf, 0xCu);
        }

        [v135 setViewKeyHierarchyState:@"unhealthy"];
      }

      [v131 sendMetricWithResult:0 error:v29];
    }

    objc_autoreleasePoolPop(v26);
    if (v30)
    {
      v126 = +[NSMutableSet set];
      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v41 = v124;
      v42 = [v41 countByEnumeratingWithState:&v161 objects:v183 count:16];
      obj = v41;
      if (v42)
      {
        v129 = *v162;
LABEL_21:
        v43 = 0;
        v127 = v42;
        while (1)
        {
          if (*v162 != v129)
          {
            objc_enumerationMutation(obj);
          }

          v44 = *(*(&v161 + 1) + 8 * v43);
          context = objc_autoreleasePoolPush();
          v45 = v170[5];
          v46 = [(CKKSHealTLKSharesOperation *)val deps];
          v47 = [v46 databaseProvider];
          v48 = [(CKKSHealTLKSharesOperation *)val deps];
          v49 = [v48 activeAccount];
          v50 = [v49 altDSID];
          v51 = [(CKKSHealTLKSharesOperation *)val deps];
          v52 = [v51 sendMetric];
          v160 = 0;
          v53 = [CKKSHealTLKSharesOperation createMissingKeyShares:v45 peers:v44 databaseProvider:v47 altDSID:v50 sendMetric:v52 error:&v160];
          v54 = v160;

          if (!v53 || v54)
          {
            v55 = [v170[5] tlk];
            v56 = [v55 zoneName];
            v57 = sub_100019104(@"ckksshare", v56);

            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *&buf[4] = v44;
              *&buf[12] = 2112;
              *&buf[14] = v54;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Unable to create shares for trust set %@: %@", buf, 0x16u);
            }

            [v131 sendMetricWithResult:0 error:v54];
            if ([v44 essential])
            {
              v58 = [v54 domain];
              if ([v58 isEqualToString:@"com.apple.security.trustedpeers.container"] && objc_msgSend(v54, "code") == 1)
              {
LABEL_35:

                goto LABEL_39;
              }

              v59 = [v54 domain];
              if ([v59 isEqualToString:@"CKKSErrorDomain"] && objc_msgSend(v54, "code") == 52)
              {

                goto LABEL_35;
              }

              v61 = [v54 domain];
              if ([v61 isEqualToString:@"CKKSErrorDomain"])
              {
                v62 = [v54 code] == 24;

                if (v62)
                {
LABEL_39:
                  v63 = [v135 zoneID];
                  v64 = [v63 zoneName];
                  v65 = sub_100019104(@"ckksshare", v64);

                  if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    *&buf[4] = 0;
                    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "Unable to create shares due to some trust issue: %@", buf, 0xCu);
                  }

                  [v135 setViewKeyHierarchyState:@"waitfortrust"];
                  [(CKKSHealTLKSharesOperation *)val setFailedDueToEssentialTrustState:1];
LABEL_46:
                  [v131 sendMetricWithResult:0 error:0];
                  v60 = 0;
                  goto LABEL_47;
                }
              }

              else
              {
              }

              v66 = [v135 zoneID];
              v67 = [v66 zoneName];
              v68 = sub_100019104(@"ckksshare", v67);

              if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = 0;
                _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "Unable to create shares: %@", buf, 0xCu);
              }

              [v135 setViewKeyHierarchyState:@"unhealthy"];
              goto LABEL_46;
            }
          }

          else
          {
            [v126 unionSet:v53];
          }

          v60 = 1;
LABEL_47:

          objc_autoreleasePoolPop(context);
          if (!v60)
          {
            v116 = obj;
            goto LABEL_76;
          }

          if (v127 == ++v43)
          {
            v41 = obj;
            v42 = [obj countByEnumeratingWithState:&v161 objects:v183 count:16];
            if (v42)
            {
              goto LABEL_21;
            }

            break;
          }
        }
      }

      v181 = kSecurityRTCFieldNewTLKShares;
      v69 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v126 count]);
      v182 = v69;
      v70 = [NSDictionary dictionaryWithObjects:&v182 forKeys:&v181 count:1];
      [v131 addMetrics:v70];

      [v131 sendMetricWithResult:1 error:0];
      if ([v126 count])
      {
        v71 = [v126 allObjects];
        [v170[5] setPendingTLKShares:v71];

        v72 = v170[5];
        v159 = 0;
        v73 = [(CKKSHealTLKSharesOperation *)val areNewSharesSufficient:v72 trustStates:obj error:&v159];
        v74 = v159;
        if (v74)
        {
          v75 = 0;
        }

        else
        {
          v75 = v73;
        }

        if (v75)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          v180 = 1;
          v76 = [AAFAnalyticsEventSecurity alloc];
          v177 = kSecurityRTCFieldIsPrioritized;
          v178 = &__kCFBooleanFalse;
          v77 = [NSDictionary dictionaryWithObjects:&v178 forKeys:&v177 count:1];
          v78 = [(CKKSHealTLKSharesOperation *)val deps];
          v79 = [v78 activeAccount];
          v80 = [v79 altDSID];
          v81 = [(CKKSHealTLKSharesOperation *)val deps];
          v82 = [v81 sendMetric];
          v128 = [v76 initWithCKKSMetrics:v77 altDSID:v80 eventName:kSecurityRTCEventNameUploadMissingTLKShares testsAreEnabled:0 category:v123 sendMetric:v82];

          v83 = objc_alloc_init(NSMutableArray);
          v157 = 0u;
          v158 = 0u;
          v155 = 0u;
          v156 = 0u;
          v84 = v126;
          v85 = [v84 countByEnumeratingWithState:&v155 objects:v176 count:16];
          if (v85)
          {
            v86 = *v156;
            do
            {
              for (i = 0; i != v85; i = i + 1)
              {
                if (*v156 != v86)
                {
                  objc_enumerationMutation(v84);
                }

                v88 = *(*(&v155 + 1) + 8 * i);
                v89 = [v135 zoneID];
                v90 = [v88 CKRecordWithZoneID:v89];
                [v83 addObject:v90];
              }

              v85 = [v84 countByEnumeratingWithState:&v155 objects:v176 count:16];
            }

            while (v85);
          }

          for (contexta = 0; ; contexta = contexta + 1)
          {
            v91 = 1000 * contexta;
            if (1000 * contexta >= [v84 count])
            {
              break;
            }

            v92 = [v135 zoneID];
            v93 = [v92 zoneName];
            v94 = [NSString stringWithFormat:@"heal-tlkshares-%@", v93];
            v150[0] = _NSConcreteStackBlock;
            v150[1] = 3221225472;
            v150[2] = sub_1001D7A1C;
            v150[3] = &unk_100344520;
            v95 = v84;
            v151 = v95;
            v154 = 1000 * contexta;
            v96 = v128;
            v152 = v96;
            v153 = buf;
            v130 = [CKKSResultOperation named:v94 withBlock:v150];

            [(CKKSGroupOperation *)val dependOnBeforeGroupFinished:v130];
            v97 = objc_alloc_init(NSMutableDictionary);
            v98 = [v95 count];
            if (&v98[-v91] >= 0x3E8)
            {
              v99 = 1000;
            }

            else
            {
              v99 = &v98[-v91];
            }

            v100 = [v83 subarrayWithRange:{v91, v99}];
            v148 = 0u;
            v149 = 0u;
            v146 = 0u;
            v147 = 0u;
            v101 = v100;
            v102 = [v101 countByEnumeratingWithState:&v146 objects:v175 count:16];
            if (v102)
            {
              v103 = *v147;
              do
              {
                for (j = 0; j != v102; j = j + 1)
                {
                  if (*v147 != v103)
                  {
                    objc_enumerationMutation(v101);
                  }

                  v105 = *(*(&v146 + 1) + 8 * j);
                  v106 = [v105 recordID];
                  [v97 setObject:v105 forKeyedSubscript:v106];
                }

                v102 = [v101 countByEnumeratingWithState:&v146 objects:v175 count:16];
              }

              while (v102);
            }

            v107 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:v101 recordIDsToDelete:0];
            [v107 setAtomic:1];
            [v107 setLongLived:0];
            v108 = [v107 configuration];
            [v108 setIsCloudKitSupportOperation:1];

            [v107 setQualityOfService:25];
            v144[0] = _NSConcreteStackBlock;
            v144[1] = 3221225472;
            v144[2] = sub_1001D7A80;
            v144[3] = &unk_100344548;
            v109 = v135;
            v145 = v109;
            [v107 setPerRecordSaveBlock:v144];
            objc_initWeak(&location, val);
            v136[0] = _NSConcreteStackBlock;
            v136[1] = 3221225472;
            v136[2] = sub_1001D7BEC;
            v136[3] = &unk_100344598;
            objc_copyWeak(&v142, &location);
            v137 = v109;
            v141 = buf;
            v138 = v96;
            v110 = v97;
            v139 = v110;
            v111 = v130;
            v140 = v111;
            [v107 setModifyRecordsCompletionBlock:v136];
            v112 = [(CKKSHealTLKSharesOperation *)val ckOperations];
            [v107 linearDependencies:v112];

            v113 = [(CKKSHealTLKSharesOperation *)val setResultStateOperation];
            [v113 addDependency:v111];

            v114 = [(CKKSHealTLKSharesOperation *)val deps];
            v115 = [v114 ckdatabase];
            [v115 addOperation:v107];

            objc_destroyWeak(&v142);
            objc_destroyWeak(&location);
          }

          _Block_object_dispose(buf, 8);
          v116 = 0;
        }

        else
        {
          v119 = v74;
          v120 = [v135 zoneID];
          v121 = [v120 zoneName];
          v122 = sub_100019104(@"ckksshare", v121);

          if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v119;
            _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "New shares won't resolve the share issue; erroring to avoid infinite loops: %@", buf, 0xCu);
          }

          [v135 setViewKeyHierarchyState:@"error"];
          v116 = v119;
        }
      }

      else
      {
        v117 = [v135 zoneID];
        v118 = [v117 zoneName];
        v116 = sub_100019104(@"ckksshare", v118);

        if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "Don't believe we need to change any TLKShares, stopping", buf, 2u);
        }
      }

LABEL_76:
    }

    v12 = v131;
    goto LABEL_78;
  }

  [v135 setViewKeyHierarchyState:@"unhealthy"];
  v10 = [v135 zoneID];
  v11 = [v10 zoneName];
  v12 = sub_100019104(@"ckksshare", v11);

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "couldn't load current keys: can't fix TLK shares", buf, 2u);
  }

LABEL_78:

  _Block_object_dispose(&v169, 8);
}

- (void)groupStart
{
  objc_initWeak(&location, self);
  v2 = [(CKKSHealTLKSharesOperation *)self deps];
  v3 = [v2 syncingPolicy];
  v4 = [v3 isInheritedAccount];

  if (v4)
  {
    v5 = sub_100006274("ckksshare");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Account is inherited, bailing out of healing TLKShares", buf, 2u);
    }

    v6 = [(CKKSHealTLKSharesOperation *)self intendedState];
    [(CKKSHealTLKSharesOperation *)self setNextState:v6];
  }

  else
  {
    v7 = [(CKKSHealTLKSharesOperation *)self deps];
    v8 = [v7 overallLaunch];
    [v8 addEvent:@"heal-tlk-shares-begin"];

    v9 = [AAFAnalyticsEventSecurity alloc];
    v10 = [(CKKSHealTLKSharesOperation *)self deps];
    v11 = [v10 activeAccount];
    v12 = [v11 altDSID];
    v13 = [(CKKSHealTLKSharesOperation *)self deps];
    v14 = [v13 sendMetric];
    v15 = [v9 initWithCKKSMetrics:&__NSDictionary0__struct altDSID:v12 eventName:kSecurityRTCEventNameHealTLKShares testsAreEnabled:0 category:kSecurityRTCEventCategoryAccountDataAccessRecovery sendMetric:v14];

    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1001D8630;
    v43[3] = &unk_1003444E8;
    objc_copyWeak(&v45, &location);
    v36 = v15;
    v44 = v36;
    v16 = [CKKSResultOperation named:@"determine-next-state" withBlockTakingSelf:v43];
    [(CKKSHealTLKSharesOperation *)self setSetResultStateOperation:v16];

    v17 = [(CKKSHealTLKSharesOperation *)self deps];
    v37 = [v17 currentTrustStates];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v18 = [(CKKSHealTLKSharesOperation *)self deps];
    v19 = [v18 activeManagedViews];

    v20 = 0;
    v21 = [v19 countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v21)
    {
      v22 = *v40;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v40 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v39 + 1) + 8 * i);
          v25 = [v24 viewKeyHierarchyState];
          v26 = [v25 isEqualToString:@"ready"];

          if (v26)
          {
            [(CKKSHealTLKSharesOperation *)self checkAndHealTLKShares:v24 currentTrustStates:v37];
            v20 = (v20 + 1);
          }

          else
          {
            v27 = [v24 zoneID];
            v28 = [v27 zoneName];
            v29 = sub_100019104(@"ckksshare", v28);

            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v50 = v24;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "View key state is %@; not checking TLK share validity", buf, 0xCu);
            }
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v39 objects:v51 count:16];
      }

      while (v21);
    }

    v47 = kSecurityRTCFieldNumViews;
    v30 = [NSNumber numberWithInt:v20];
    v48 = v30;
    v31 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    [v36 addMetrics:v31];

    if ([(CKKSHealTLKSharesOperation *)self failedDueToLockState])
    {
      v32 = [[OctagonPendingFlag alloc] initWithFlag:@"key_process_requested" conditions:1];
      v33 = [(CKKSHealTLKSharesOperation *)self deps];
      v34 = [v33 flagHandler];
      [v34 handlePendingFlag:v32];
    }

    v35 = [(CKKSHealTLKSharesOperation *)self setResultStateOperation];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v35];

    objc_destroyWeak(&v45);
    v6 = v36;
  }

  objc_destroyWeak(&location);
}

- (CKKSHealTLKSharesOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = CKKSHealTLKSharesOperation;
  v12 = [(CKKSGroupOperation *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong((v12 + 150), a3);
    objc_storeStrong((v13 + 142), a5);
    objc_storeStrong((v13 + 134), a4);
    v13[128] = 0;
    v13[129] = 0;
    v13[130] = 0;
    v14 = +[NSHashTable weakObjectsHashTable];
    v15 = *(v13 + 158);
    *(v13 + 158) = v14;
  }

  return v13;
}

+ (id)createMissingKeyShares:(id)a3 peers:(id)a4 databaseProvider:(id)a5 altDSID:(id)a6 sendMetric:(BOOL)a7 error:(id *)a8
{
  v66 = a7;
  v12 = a3;
  v13 = a4;
  v14 = v12;
  v15 = v13;
  v16 = a5;
  v17 = a6;
  v18 = [v14 tlk];
  v19 = [v14 zoneID];
  v20 = [v19 ownerName];
  v74 = 0;
  v21 = [v18 ensureKeyLoadedForContextID:v20 cache:0 error:&v74];
  v22 = v74;

  v63 = v21;
  if (v21)
  {
    v73 = v22;
    v23 = [a1 filterTrustedPeers:v15 missingTLKSharesFor:v14 databaseProvider:v16 altDSID:v17 sendMetric:v66 error:&v73];
    v67 = v73;

    v24 = v15;
    if (v23)
    {
      v57 = v17;
      v58 = v16;
      v62 = +[NSMutableSet set];
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v56 = v23;
      obj = v23;
      v65 = [obj countByEnumeratingWithState:&v69 objects:v81 count:16];
      if (v65)
      {
        v64 = *v70;
        v61 = v14;
        while (2)
        {
          for (i = 0; i != v65; i = i + 1)
          {
            if (*v70 != v64)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v69 + 1) + 8 * i);
            v27 = [v26 publicEncryptionKey];

            v28 = [v14 tlk];
            v29 = [v28 zoneName];
            v30 = sub_100019104(@"ckksshare", v29);

            v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
            if (v27)
            {
              if (v31)
              {
                v32 = [v14 tlk];
                v33 = [v24 currentSelfPeers];
                v34 = [v33 currentSelf];
                *buf = 138412802;
                v76 = v32;
                v77 = 2112;
                v78 = v34;
                v79 = 2112;
                v80 = v26;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Creating share of %@ as %@ for %@", buf, 0x20u);
              }

              v35 = [v14 tlk];
              v36 = [v35 contextID];
              v37 = v24;
              v38 = [v24 currentSelfPeers];
              v39 = [v38 currentSelf];
              v68 = v67;
              v30 = [CKKSTLKShareRecord share:v63 contextID:v36 as:v39 to:v26 epoch:-1 poisoned:0 error:&v68];
              v40 = v68;

              if (v40)
              {
                v51 = [v61 tlk];
                v52 = [v51 zoneName];
                v53 = sub_100019104(@"ckksshare", v52);

                if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v76 = v26;
                  v77 = 2112;
                  v78 = v40;
                  _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Couldn't create new share for %@: %@", buf, 0x16u);
                }

                v24 = v37;
                if (a8)
                {
                  v54 = v40;
                  *a8 = v40;
                }

                v42 = 0;
                v67 = v40;
                v14 = v61;
                v41 = v62;
                goto LABEL_31;
              }

              [v62 addObject:v30];
              v67 = 0;
              v14 = v61;
              v24 = v37;
            }

            else if (v31)
            {
              *buf = 138412290;
              v76 = v26;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "No need to make TLK for %@; they don't have any encryption keys", buf, 0xCu);
            }
          }

          v65 = [obj countByEnumeratingWithState:&v69 objects:v81 count:16];
          if (v65)
          {
            continue;
          }

          break;
        }
      }

      v41 = v62;
      v42 = v62;
LABEL_31:

      v17 = v57;
      v16 = v58;
      v23 = v56;
    }

    else
    {
      v47 = v15;
      v48 = [v14 tlk];
      v49 = [v48 zoneName];
      v50 = sub_100019104(@"ckksshare", v49);

      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v76 = v67;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Unable to find peers missing TLKShares: %@", buf, 0xCu);
      }

      v42 = 0;
      if (a8)
      {
        *a8 = v67;
      }

      v24 = v47;
    }

    v22 = v67;
  }

  else
  {
    v43 = [v14 tlk];
    v44 = [v43 zoneName];
    v45 = sub_100019104(@"ckksshare", v44);

    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v76 = v22;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "TLK not loaded; cannot make shares for peers: %@", buf, 0xCu);
    }

    v24 = v15;
    if (a8)
    {
      v46 = v22;
      v42 = 0;
      *a8 = v22;
    }

    else
    {
      v42 = 0;
    }
  }

  return v42;
}

@end