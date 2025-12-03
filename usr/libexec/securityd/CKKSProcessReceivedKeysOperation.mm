@interface CKKSProcessReceivedKeysOperation
- (CKKSProcessReceivedKeysOperation)initWithDependencies:(id)dependencies allowFullRefetchResult:(BOOL)result intendedState:(id)state errorState:(id)errorState;
- (id)checkExistingKeyHierarchy:(id)hierarchy zoneID:(id)d currentTrustStates:(id)states error:(id *)error;
- (id)processRemoteKeys:(id)keys viewState:(id)state currentTrustStates:(id)states error:(id *)error;
- (void)main;
@end

@implementation CKKSProcessReceivedKeysOperation

- (id)checkExistingKeyHierarchy:(id)hierarchy zoneID:(id)d currentTrustStates:(id)states error:(id *)error
{
  hierarchyCopy = hierarchy;
  dCopy = d;
  statesCopy = states;
  error = [hierarchyCopy error];
  if (error)
  {
    v14 = error;
    error2 = [hierarchyCopy error];
    domain = [error2 domain];
    if ([domain isEqual:@"securityd"])
    {
      error3 = [hierarchyCopy error];
      code = [error3 code];

      if (code == -25300)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    zoneName = [dCopy zoneName];
    v20 = sub_100019104(@"ckkskey", zoneName);

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      error4 = [hierarchyCopy error];
      *buf = 138412290;
      v117 = error4;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Error examining existing key hierarchy: %@", buf, 0xCu);
    }
  }

LABEL_9:
  currentTLKPointer = [hierarchyCopy currentTLKPointer];
  if (currentTLKPointer || ([hierarchyCopy currentClassAPointer], (currentTLKPointer = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_12:
    deps = [(CKKSProcessReceivedKeysOperation *)self deps];
    v111 = 0;
    v24 = [deps considerSelfTrusted:statesCopy error:&v111];
    v25 = v111;

    if ((v24 & 1) != 0 || !v25)
    {
      if (v24)
      {
LABEL_19:
        v31 = [hierarchyCopy tlk];
        if (v31)
        {
          v32 = v31;
          classA = [hierarchyCopy classA];
          if (classA)
          {
            v34 = classA;
            classC = [hierarchyCopy classC];

            if (classC)
            {
              v36 = [hierarchyCopy tlk];
              v110 = 0;
              v37 = [v36 loadKeyMaterialFromKeychain:&v110];
              v38 = v110;

              if ((v37 & 1) == 0)
              {
                if (v38)
                {
                  deps2 = [(CKKSProcessReceivedKeysOperation *)self deps];
                  lockStateTracker = [deps2 lockStateTracker];
                  v41 = [lockStateTracker isLockedError:v38];

                  if ((v41 & 1) == 0)
                  {
                    zoneName2 = [dCopy zoneName];
                    v93 = sub_100019104(@"ckkskey", zoneName2);

                    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
                    {
                      v94 = [hierarchyCopy tlk];
                      *buf = 138412546;
                      v117 = v94;
                      v118 = 2112;
                      v119 = v38;
                      _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_ERROR, "Error loading TLK(%@): %@", buf, 0x16u);
                    }

                    if (error)
                    {
                      v95 = v38;
                      *error = v38;
                    }

                    v67 = @"unhealthy";
                    v96 = @"unhealthy";
                    goto LABEL_72;
                  }
                }

                zoneName3 = [dCopy zoneName];
                v43 = sub_100019104(@"ckkskey", zoneName3);

                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  v44 = [hierarchyCopy tlk];
                  *buf = 138412546;
                  v117 = v44;
                  v118 = 2112;
                  v119 = v38;
                  _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Soft error loading TLK(%@), maybe locked: %@", buf, 0x16u);
                }
              }

              classA2 = [hierarchyCopy classA];
              v109 = 0;
              v46 = [classA2 loadKeyMaterialFromKeychain:&v109];
              v47 = v109;

              if ((v46 & 1) == 0)
              {
                if (v47)
                {
                  deps3 = [(CKKSProcessReceivedKeysOperation *)self deps];
                  lockStateTracker2 = [deps3 lockStateTracker];
                  v50 = [lockStateTracker2 isLockedError:v47];

                  if ((v50 & 1) == 0)
                  {
                    zoneName4 = [dCopy zoneName];
                    v98 = sub_100019104(@"ckkskey", zoneName4);

                    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
                    {
                      classA3 = [hierarchyCopy classA];
                      *buf = 138412546;
                      v117 = classA3;
                      v118 = 2112;
                      v119 = v47;
                      _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "Error loading classA key(%@): %@", buf, 0x16u);
                    }

                    if (error)
                    {
                      v100 = v47;
                      *error = v47;
                    }

                    v67 = @"unhealthy";
                    v101 = @"unhealthy";
                    goto LABEL_71;
                  }
                }

                zoneName5 = [dCopy zoneName];
                v52 = sub_100019104(@"ckkskey", zoneName5);

                if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                {
                  classA4 = [hierarchyCopy classA];
                  *buf = 138412546;
                  v117 = classA4;
                  v118 = 2112;
                  v119 = v47;
                  _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Soft error loading classA key(%@), maybe locked: %@", buf, 0x16u);
                }
              }

              classC2 = [hierarchyCopy classC];
              v108 = 0;
              v55 = [classC2 loadKeyMaterialFromKeychain:&v108];
              v56 = v108;

              if ((v55 & 1) == 0)
              {
                zoneName6 = [dCopy zoneName];
                v82 = sub_100019104(@"ckkskey", zoneName6);

                if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                {
                  classC3 = [hierarchyCopy classC];
                  *buf = 138412546;
                  v117 = classC3;
                  v118 = 2112;
                  v119 = v56;
                  _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "Error loading classC(%@): %@", buf, 0x16u);
                }

                if (error)
                {
                  v84 = v56;
                  *error = v56;
                }

                v67 = @"unhealthy";
                v85 = @"unhealthy";
                goto LABEL_70;
              }

              v105 = v56;
              v106 = v47;
              v107 = v38;
              classA5 = [hierarchyCopy classA];
              parentKeyUUID = [classA5 parentKeyUUID];
              v59 = [hierarchyCopy tlk];
              uuid = [v59 uuid];
              v61 = [parentKeyUUID isEqualToString:uuid];

              if (v61)
              {
                classC4 = [hierarchyCopy classC];
                parentKeyUUID2 = [classC4 parentKeyUUID];
                v64 = [hierarchyCopy tlk];
                uuid2 = [v64 uuid];
                v66 = [parentKeyUUID2 isEqualToString:uuid2];

                if (v66)
                {
                  v67 = @"ready";
                  v68 = @"ready";
                  v47 = v106;
                  v38 = v107;
                  v56 = v105;
LABEL_70:

LABEL_71:
LABEL_72:

                  goto LABEL_56;
                }

                v112 = NSLocalizedDescriptionKey;
                v113 = @"Current class C key does not wrap to current TLK";
                v102 = [NSDictionary dictionaryWithObjects:&v113 forKeys:&v112 count:1];
                v87 = [NSError errorWithDomain:@"CKKSServerExtensionErrorDomain" code:9 userInfo:v102];

                zoneName7 = [dCopy zoneName];
                v104 = sub_100019104(@"ckkskey", zoneName7);

                v56 = v105;
                if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v117 = v87;
                  _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_ERROR, "Key hierarchy unhealthy: %@", buf, 0xCu);
                }

                v47 = v106;
                v38 = v107;
                if (!error)
                {
LABEL_69:
                  v67 = @"unhealthy";
                  v91 = @"unhealthy";

                  goto LABEL_70;
                }
              }

              else
              {
                v114 = NSLocalizedDescriptionKey;
                v115 = @"Current class A key does not wrap to current TLK";
                v86 = [NSDictionary dictionaryWithObjects:&v115 forKeys:&v114 count:1];
                v87 = [NSError errorWithDomain:@"CKKSServerExtensionErrorDomain" code:9 userInfo:v86];

                zoneName8 = [dCopy zoneName];
                v89 = sub_100019104(@"ckkskey", zoneName8);

                if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v117 = v87;
                  _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "Key hierarchy unhealthy: %@", buf, 0xCu);
                }

                v47 = v106;
                v38 = v107;
                v56 = v105;
                if (!error)
                {
                  goto LABEL_69;
                }
              }

              v90 = v87;
              *error = v87;
              goto LABEL_69;
            }
          }

          else
          {
          }
        }

        zoneName9 = [dCopy zoneName];
        v77 = sub_100019104(@"ckkskey", zoneName9);

        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v117 = hierarchyCopy;
          _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "Error examining existing key hierarchy (missing at least one key): %@", buf, 0xCu);
        }

        if (error)
        {
          *error = [hierarchyCopy error];
        }

        v67 = @"unhealthy";
LABEL_55:
        v79 = v67;
LABEL_56:

        goto LABEL_57;
      }
    }

    else
    {
      deps4 = [(CKKSProcessReceivedKeysOperation *)self deps];
      lockStateTracker3 = [deps4 lockStateTracker];
      v28 = [lockStateTracker3 isLockedError:v25];

      if (v28)
      {
        zoneName10 = [dCopy zoneName];
        v30 = sub_100019104(@"ckkskey", zoneName10);

        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v117 = v25;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Trust system reports device locked: %@", buf, 0xCu);
        }

        v25 = 0;
        goto LABEL_19;
      }
    }

    zoneName11 = [dCopy zoneName];
    v70 = sub_100019104(@"ckkskey", zoneName11);

    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v117 = v25;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Not proceeding due to trust system failure: %@", buf, 0xCu);
    }

    if (error)
    {
      if (v25)
      {
        v71 = v25;
        *error = v25;
      }

      else
      {
        v78 = [NSError errorWithDomain:@"CKKSErrorDomain" code:52 description:@"No trust states available"];
        *error = v78;
      }
    }

    v67 = @"waitfortrust";
    goto LABEL_55;
  }

  currentClassCPointer = [hierarchyCopy currentClassCPointer];

  if (currentClassCPointer)
  {
    goto LABEL_12;
  }

  zoneName12 = [dCopy zoneName];
  v74 = sub_100019104(@"ckkskey", zoneName12);

  if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v117 = hierarchyCopy;
    _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "No existing key hierarchy (missing all CKPs): %@", buf, 0xCu);
  }

  v67 = @"waitfortlkcreation";
  v75 = @"waitfortlkcreation";
LABEL_57:

  return v67;
}

- (id)processRemoteKeys:(id)keys viewState:(id)state currentTrustStates:(id)states error:(id *)error
{
  keysCopy = keys;
  stateCopy = state;
  statesCopy = states;
  contextID = [stateCopy contextID];
  zoneID = [stateCopy zoneID];
  zoneName = [zoneID zoneName];
  v12 = sub_100019104(@"ckkskey", zoneName);

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v221 = keysCopy;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "remote keys: %@", buf, 0xCu);
  }

  zoneID2 = [stateCopy zoneID];
  v216 = 0;
  v14 = [CKKSCurrentKeyPointer tryFromDatabase:@"tlk" contextID:contextID zoneID:zoneID2 error:&v216];
  v15 = v216;

  zoneID3 = [stateCopy zoneID];
  v215 = v15;
  v184 = [CKKSCurrentKeyPointer tryFromDatabase:@"classA" contextID:contextID zoneID:zoneID3 error:&v215];
  v17 = v215;

  zoneID4 = [stateCopy zoneID];
  v214 = v17;
  v189 = [CKKSCurrentKeyPointer tryFromDatabase:@"classC" contextID:contextID zoneID:zoneID4 error:&v214];
  v19 = v214;

  currentKeyUUID = [v14 currentKeyUUID];
  v21 = contextID;
  if (currentKeyUUID)
  {
    currentKeyUUID2 = [v14 currentKeyUUID];
    zoneID5 = [stateCopy zoneID];
    v213 = v19;
    v188 = [CKKSKey tryFromDatabaseAnyState:currentKeyUUID2 contextID:contextID zoneID:zoneID5 error:&v213];
    v24 = v213;

    v19 = v24;
  }

  else
  {
    v188 = 0;
  }

  v25 = v14;

  v26 = v184;
  currentKeyUUID3 = [v184 currentKeyUUID];
  if (currentKeyUUID3)
  {
    currentKeyUUID4 = [v184 currentKeyUUID];
    zoneID6 = [stateCopy zoneID];
    v212 = v19;
    v187 = [CKKSKey tryFromDatabaseAnyState:currentKeyUUID4 contextID:v21 zoneID:zoneID6 error:&v212];
    v30 = v212;

    v19 = v30;
  }

  else
  {
    v187 = 0;
  }

  v31 = v189;
  currentKeyUUID5 = [v189 currentKeyUUID];
  if (currentKeyUUID5)
  {
    currentKeyUUID6 = [v189 currentKeyUUID];
    zoneID7 = [stateCopy zoneID];
    v211 = v19;
    v185 = [CKKSKey tryFromDatabaseAnyState:currentKeyUUID6 contextID:v21 zoneID:zoneID7 error:&v211];
    v35 = v211;

    v31 = v189;
    v19 = v35;
  }

  else
  {
    v185 = 0;
  }

  if (!v25)
  {
    goto LABEL_51;
  }

  if (!v184)
  {
    goto LABEL_51;
  }

  if (!v31)
  {
    goto LABEL_51;
  }

  currentKeyUUID7 = [v25 currentKeyUUID];
  if (!currentKeyUUID7)
  {
    goto LABEL_51;
  }

  v37 = currentKeyUUID7;
  currentKeyUUID8 = [v184 currentKeyUUID];
  if (!currentKeyUUID8)
  {

LABEL_51:
    zoneID8 = [stateCopy zoneID];
    zoneName2 = [zoneID8 zoneName];
    v72 = sub_100019104(@"ckkskey", zoneName2);

    if (!os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
LABEL_54:

      if (error)
      {
        v76 = v19;
        *error = v19;
      }

      v77 = @"unhealthy";
      v78 = @"unhealthy";
      v60 = 0;
      v79 = 0;
      goto LABEL_57;
    }

    *buf = 138413314;
    v221 = v25;
    v222 = 2112;
    v223 = v184;
    v224 = 2112;
    v225 = v31;
    v226 = 2112;
    v227 = v19;
    v228 = 2112;
    v229 = v19;
    v73 = "no current pointer for some keyclass: tlk:%@ a:%@ c:%@ %@ %@";
    v74 = v72;
    v75 = 52;
LABEL_53:
    _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, v73, buf, v75);
    goto LABEL_54;
  }

  v39 = currentKeyUUID8;
  currentKeyUUID9 = [v31 currentKeyUUID];

  if (!currentKeyUUID9 || !v188 || !v187 || !v185)
  {
    goto LABEL_51;
  }

  v180 = stateCopy;
  v209 = 0u;
  v210 = 0u;
  v207 = 0u;
  v208 = 0u;
  v41 = keysCopy;
  v42 = [v41 countByEnumeratingWithState:&v207 objects:v219 count:16];
  if (!v42)
  {

LABEL_66:
    stateCopy = v180;
    zoneID9 = [v180 zoneID];
    zoneName3 = [zoneID9 zoneName];
    v72 = sub_100019104(@"ckkskey", zoneName3);

    v31 = v189;
    if (!os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }

    *buf = 138412290;
    v221 = v25;
    v73 = "couldn't find active TLK: %@";
    v74 = v72;
    v75 = 12;
    goto LABEL_53;
  }

  v43 = v42;
  v179 = v21;
  v190 = 0;
  v44 = *v208;
  do
  {
    for (i = 0; i != v43; i = i + 1)
    {
      if (*v208 != v44)
      {
        objc_enumerationMutation(v41);
      }

      v46 = *(*(&v207 + 1) + 8 * i);
      uuid = [v46 uuid];
      v48 = v25;
      currentKeyUUID10 = [v25 currentKeyUUID];
      v50 = [uuid isEqualToString:currentKeyUUID10];

      if (v50)
      {
        if (![v46 wrapsSelf])
        {
          parentKeyUUID = [v46 parentKeyUUID];
          v82 = [NSString stringWithFormat:@"current TLK doesn't wrap itself: %@ %@", v46, parentKeyUUID];
          v83 = [NSError errorWithDomain:@"CKKSErrorDomain" code:18 description:v82 underlying:v19];

          zoneID10 = [v180 zoneID];
          zoneName4 = [zoneID10 zoneName];
          v86 = sub_100019104(@"ckkskey", zoneName4);

          if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v221 = v83;
            _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "Proposed TLK doesn't wrap self: %@", buf, 0xCu);
          }

          v21 = v179;
          v25 = v48;
          v26 = v184;
          if (error)
          {
            v87 = v83;
            *error = v83;
          }

          v77 = @"unhealthy";
          v88 = @"unhealthy";

          v60 = 0;
          stateCopy = v180;
          v31 = v189;
          v79 = v190;
          goto LABEL_57;
        }

        v51 = v46;

        v190 = v51;
      }

      v25 = v48;
    }

    v43 = [v41 countByEnumeratingWithState:&v207 objects:v219 count:16];
  }

  while (v43);

  v21 = v179;
  v26 = v184;
  if (!v190)
  {
    goto LABEL_66;
  }

  v206 = v19;
  v52 = [v190 validTLK:&v206];
  v177 = v206;

  v31 = v189;
  if ((v52 & 1) == 0)
  {
    zoneID11 = [v180 zoneID];
    zoneName5 = [zoneID11 zoneName];
    v93 = sub_100019104(@"ckkskey", zoneName5);

    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v221 = v190;
      v222 = 2112;
      v223 = v177;
      _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_ERROR, "CKKS claims %@ is not a valid TLK: %@", buf, 0x16u);
    }

    v94 = [NSError errorWithDomain:@"CKKSErrorDomain" code:34 description:@"invalid TLK from CloudKit" underlying:v177];
    v95 = v94;
    v25 = v48;
    if (error)
    {
      v96 = v94;
      *error = v95;
    }

    v77 = @"error";
    v97 = @"error";

    v60 = 0;
    v19 = v177;
    stateCopy = v180;
    v79 = v190;
    goto LABEL_57;
  }

  v205 = 0;
  v53 = [v190 tlkMaterialPresentOrRecoverableViaTLKShareForContextID:v179 forTrustStates:statesCopy error:&v205];
  v54 = v205;
  v170 = v54;
  if ((v53 & 1) == 0)
  {
    v98 = v54;
    deps = [(CKKSProcessReceivedKeysOperation *)self deps];
    lockStateTracker = [deps lockStateTracker];
    v101 = [lockStateTracker isLockedError:v98];

    zoneID12 = [v180 zoneID];
    zoneName6 = [zoneID12 zoneName];
    v104 = sub_100019104(@"ckkskey", zoneName6);

    v105 = os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT);
    v106 = v98;
    if (v101)
    {
      v25 = v48;
      if (v105)
      {
        *buf = 138412290;
        v221 = v190;
        _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "Received a TLK(%@), but keybag appears to be locked. Entering a waiting state.", buf, 0xCu);
      }

      stateCopy = v180;
      if (error)
      {
        v107 = v106;
        *error = v106;
      }

      v77 = @"waitforunlock";
      v108 = @"waitforunlock";
    }

    else
    {
      v109 = v98;
      if (v105)
      {
        *buf = 138412546;
        v221 = v190;
        v222 = 2112;
        v223 = v177;
        _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "Received a TLK(%@) which we don't have in the local keychain: %@", buf, 0x16u);
      }

      deps2 = [(CKKSProcessReceivedKeysOperation *)self deps];
      v204 = 0;
      v111 = [deps2 considerSelfTrusted:statesCopy error:&v204];
      v112 = v204;

      if (v111)
      {
        v25 = v48;
        if (error)
        {
          v113 = v109;
          *error = v109;
        }

        v114 = &off_100344488;
      }

      else
      {
        zoneID13 = [v180 zoneID];
        zoneName7 = [zoneID13 zoneName];
        v141 = sub_100019104(@"ckkskey", zoneName7);

        if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v221 = v112;
          _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "Not proceeding due to trust system failure: %@", buf, 0xCu);
        }

        if (error)
        {
          if (v112)
          {
            v142 = v112;
            *error = v112;
          }

          else
          {
            v168 = [NSError errorWithDomain:@"CKKSErrorDomain" code:52 description:@"No trust states available"];
            *error = v168;
          }
        }

        v114 = off_100344508;
        v25 = v48;
      }

      stateCopy = v180;
      v77 = *v114;
    }

    v60 = 0;
    goto LABEL_146;
  }

  v202 = 0u;
  v203 = 0u;
  v200 = 0u;
  v201 = 0u;
  obj = v41;
  v55 = [obj countByEnumeratingWithState:&v200 objects:v218 count:16];
  if (!v55)
  {
    v57 = 0;
    goto LABEL_86;
  }

  v56 = v55;
  v57 = 0;
  v174 = *v201;
  do
  {
    for (j = 0; j != v56; j = j + 1)
    {
      if (*v201 != v174)
      {
        objc_enumerationMutation(obj);
      }

      v59 = *(*(&v200 + 1) + 8 * j);
      if (v59 == v190)
      {
        continue;
      }

      v199 = 0;
      v60 = [v59 topKeyInAnyState:&v199];
      v61 = v199;

      if (v61)
      {
        v176 = v61;
LABEL_115:
        v31 = v189;
        zoneID14 = [v180 zoneID];
        zoneName8 = [zoneID14 zoneName];
        v153 = sub_100019104(@"ckkskey", zoneName8);

        if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v221 = v59;
          v222 = 2112;
          v223 = v177;
          _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_ERROR, "new key %@ is orphaned (%@)", buf, 0x16u);
        }

        v25 = v48;
        if (!error)
        {
          v156 = &off_100344510;
          stateCopy = v180;
          goto LABEL_144;
        }

        v154 = [NSString stringWithFormat:@"orphaned key(%@) in hierarchy", v60];
        v155 = v176;
        *error = [NSError errorWithDomain:@"CKKSErrorDomain" code:33 description:v154 underlying:v176];

        v156 = &off_100344510;
        stateCopy = v180;
LABEL_145:
        v77 = *v156;

        goto LABEL_146;
      }

      uuid2 = [v60 uuid];
      uuid3 = [v190 uuid];
      v64 = [uuid2 isEqual:uuid3];

      if ((v64 & 1) == 0)
      {
        v176 = 0;
        goto LABEL_115;
      }

      v198 = 0;
      v65 = [v59 unwrapViaKeyHierarchy:&v198];
      v66 = v198;

      if (!v65 || v66)
      {
        v176 = v66;
        if (v66 && (-[CKKSProcessReceivedKeysOperation deps](self, "deps"), v157 = objc_claimAutoreleasedReturnValue(), [v157 lockStateTracker], v158 = objc_claimAutoreleasedReturnValue(), v159 = objc_msgSend(v158, "isLockedError:", v176), v158, v157, v159))
        {
          zoneID15 = [v180 zoneID];
          zoneName9 = [zoneID15 zoneName];
          v162 = sub_100019104(@"ckkskey", zoneName9);

          if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v221 = v59;
            _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_DEFAULT, "Couldn't unwrap new key (%@), but keybag appears to be locked. Entering waitforunlock.", buf, 0xCu);
          }

          if (error)
          {
            v155 = v176;
            v163 = v176;
            *error = v176;
            v156 = off_100344480;
            goto LABEL_130;
          }

          v156 = off_100344480;
LABEL_143:
          v25 = v48;
          v21 = v179;
          stateCopy = v180;
          v26 = v184;
          v31 = v189;
LABEL_144:
          v155 = v176;
        }

        else
        {
          zoneID16 = [v180 zoneID];
          zoneName10 = [zoneID16 zoneName];
          v166 = sub_100019104(@"ckkskey", zoneName10);

          if (os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v221 = v60;
            v222 = 2112;
            v223 = v176;
            _os_log_impl(&_mh_execute_header, v166, OS_LOG_TYPE_ERROR, "new key %@ claims to wrap to TLK, but we can't unwrap it: %@", buf, 0x16u);
          }

          if (!error)
          {
            v156 = &off_100344510;
            goto LABEL_143;
          }

          v155 = v176;
          v176 = [NSString stringWithFormat:@"unwrappable key(%@) in hierarchy: %@", v60, v176];
          *error = [NSError errorWithDomain:@"CKKSErrorDomain" code:33 description:v176 underlying:v177];

          v156 = &off_100344510;
LABEL_130:
          v25 = v48;
          v21 = v179;
          stateCopy = v180;
          v26 = v184;
          v31 = v189;
        }

        goto LABEL_145;
      }

      zoneID17 = [v180 zoneID];
      zoneName11 = [zoneID17 zoneName];
      v69 = sub_100019104(@"ckkskey", zoneName11);

      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v221 = v59;
        v222 = 2112;
        v223 = v190;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "New key %@ wraps to tlk %@", buf, 0x16u);
      }

      v57 = v60;
    }

    v56 = [obj countByEnumeratingWithState:&v200 objects:v218 count:16];
  }

  while (v56);
LABEL_86:
  v169 = v57;

  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  v171 = obj;
  v115 = [v171 countByEnumeratingWithState:&v194 objects:v217 count:16];
  v116 = v177;
  v175 = v115;
  if (!v115)
  {
    goto LABEL_99;
  }

  v117 = *v195;
  v118 = v177;
  while (2)
  {
    v119 = 0;
    while (2)
    {
      if (*v195 != v117)
      {
        objc_enumerationMutation(v171);
      }

      v120 = *(*(&v194 + 1) + 8 * v119);
      [v120 setState:@"local"];
      uuid4 = [v120 uuid];
      currentKeyUUID11 = [v184 currentKeyUUID];
      if ([uuid4 isEqualToString:currentKeyUUID11])
      {

        goto LABEL_94;
      }

      [v120 uuid];
      v123 = v178 = v120;
      [v189 currentKeyUUID];
      v125 = v124 = v117;
      obja = [v123 isEqualToString:v125];

      v117 = v124;
      v120 = v178;

      if (obja)
      {
LABEL_94:
        v193 = v118;
        v126 = &v193;
        [v120 saveToDatabaseAsOnlyCurrentKeyForClassAndState:&v193];
      }

      else
      {
        v192 = v118;
        v126 = &v192;
        [v178 saveToDatabase:&v192];
      }

      v127 = *v126;

      v191 = v127;
      [v120 saveKeyMaterialToKeychain:&v191];
      v128 = v191;

      if (v128)
      {
        v143 = v120;
        deps3 = [(CKKSProcessReceivedKeysOperation *)self deps];
        lockStateTracker2 = [deps3 lockStateTracker];
        v146 = [lockStateTracker2 isLockedError:v128];

        zoneID18 = [v180 zoneID];
        zoneName12 = [zoneID18 zoneName];
        v149 = sub_100019104(@"ckkskey", zoneName12);

        v177 = v128;
        if (v146)
        {
          if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v221 = v143;
            v222 = 2112;
            v223 = v128;
            _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_DEFAULT, "Couldn't save newly local key %@ keychain, due to lock state. Entering a waiting state; %@", buf, 0x16u);
          }

          v150 = off_100344480;
        }

        else
        {
          if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v221 = v143;
            v222 = 2112;
            v223 = v128;
            _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_ERROR, "couldn't save newly local key %@ to database: %@", buf, 0x16u);
          }

          v150 = &off_100344510;
        }

        v25 = v48;
        v31 = v189;
        if (error)
        {
          *error = v177;
        }

        v77 = *v150;

        v60 = v169;
        stateCopy = v180;
        goto LABEL_146;
      }

      v118 = 0;
      if (v175 != ++v119)
      {
        continue;
      }

      break;
    }

    v129 = [v171 countByEnumeratingWithState:&v194 objects:v217 count:16];
    v118 = 0;
    v116 = 0;
    v175 = v129;
    if (v129)
    {
      continue;
    }

    break;
  }

LABEL_99:
  v177 = v116;

  deps4 = [(CKKSProcessReceivedKeysOperation *)self deps];
  savedTLKNotifier = [deps4 savedTLKNotifier];

  zoneID19 = [v180 zoneID];
  zoneName13 = [zoneID19 zoneName];
  v134 = sub_100019104(@"ckkstlk", zoneName13);

  if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v221 = savedTLKNotifier;
    _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "triggering new TLK notification: %@", buf, 0xCu);
  }

  [savedTLKNotifier trigger];
  zoneID20 = [v180 zoneID];
  zoneName14 = [zoneID20 zoneName];
  v137 = sub_100019104(@"ckkskey", zoneName14);

  if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "Accepted new key hierarchy", buf, 2u);
  }

  v77 = @"ready";
  v138 = @"ready";

  v60 = v169;
  v25 = v48;
  v21 = v179;
  stateCopy = v180;
  v26 = v184;
  v31 = v189;
LABEL_146:
  v79 = v190;

  v19 = v177;
LABEL_57:

  return v77;
}

- (void)main
{
  deps = [(CKKSProcessReceivedKeysOperation *)self deps];
  databaseProvider = [deps databaseProvider];

  deps2 = [(CKKSProcessReceivedKeysOperation *)self deps];
  currentTrustStates = [deps2 currentTrustStates];

  v4 = [AAFAnalyticsEventSecurity alloc];
  v94 = kSecurityRTCFieldNumViews;
  deps3 = [(CKKSProcessReceivedKeysOperation *)self deps];
  activeManagedViews = [deps3 activeManagedViews];
  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [activeManagedViews count]);
  v95 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v95 forKeys:&v94 count:1];
  deps4 = [(CKKSProcessReceivedKeysOperation *)self deps];
  activeAccount = [deps4 activeAccount];
  altDSID = [activeAccount altDSID];
  deps5 = [(CKKSProcessReceivedKeysOperation *)self deps];
  sendMetric = [deps5 sendMetric];
  v50 = [v4 initWithCKKSMetrics:v8 altDSID:altDSID eventName:kSecurityRTCEventNameProcessReceivedKeys testsAreEnabled:0 category:kSecurityRTCEventCategoryAccountDataAccessRecovery sendMetric:sendMetric];

  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 1;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  deps6 = [(CKKSProcessReceivedKeysOperation *)self deps];
  obj = [deps6 activeManagedViews];

  v15 = [obj countByEnumeratingWithState:&v75 objects:v93 count:16];
  if (v15)
  {
    v47 = *v76;
    *&v16 = 138412546;
    v45 = v16;
    do
    {
      v17 = 0;
      do
      {
        if (*v76 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v75 + 1) + 8 * v17);
        v69 = 0;
        v70 = &v69;
        v71 = 0x3032000000;
        v72 = sub_1001D1728;
        v73 = sub_1001D1738;
        v74 = 0;
        v67[0] = 0;
        v67[1] = v67;
        v67[2] = 0x3032000000;
        v67[3] = sub_1001D1728;
        v67[4] = sub_1001D1738;
        v68 = 0;
        v61 = 0;
        v62 = &v61;
        v63 = 0x3032000000;
        v64 = sub_1001D1728;
        v65 = sub_1001D1738;
        v66 = 0;
        v53[0] = _NSConcreteStackBlock;
        v53[1] = 3221225472;
        v53[2] = sub_1001D1740;
        v53[3] = &unk_100344460;
        v53[4] = self;
        v53[5] = v18;
        v56 = &v83;
        v19 = v50;
        v54 = v19;
        v57 = &v79;
        v58 = &v69;
        v20 = currentTrustStates;
        v55 = v20;
        v59 = v67;
        v60 = &v61;
        [databaseProvider dispatchSyncWithSQLTransaction:v53];
        v21 = v70[5];
        if (!v21 || [v21 isEqualToString:@"ready"])
        {
          zoneID = [v18 zoneID];
          zoneName = [zoneID zoneName];
          v24 = sub_100019104(@"ckkskey", zoneName);

          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Checking consistency of key hierarchy", buf, 2u);
          }

          v25 = v62[5];
          zoneID2 = [v18 zoneID];
          v52 = 0;
          v27 = [(CKKSProcessReceivedKeysOperation *)self checkExistingKeyHierarchy:v25 zoneID:zoneID2 currentTrustStates:v20 error:&v52];
          v28 = v52;
          v29 = v70[5];
          v70[5] = v27;

          [v19 populateUnderlyingErrorsStartingWithRootError:v28];
          zoneID3 = [v18 zoneID];
          zoneName2 = [zoneID3 zoneName];
          v32 = sub_100019104(@"ckkskey", zoneName2);

          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = v70[5];
            *buf = v45;
            v90 = v33;
            v91 = 2112;
            v92 = v28;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Key hierarchy is '%@' (error: %@)", buf, 0x16u);
          }
        }

        [v18 setViewKeyHierarchyState:{v70[5], v45}];

        _Block_object_dispose(&v61, 8);
        _Block_object_dispose(v67, 8);

        _Block_object_dispose(&v69, 8);
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [obj countByEnumeratingWithState:&v75 objects:v93 count:16];
    }

    while (v15);
  }

  deps7 = [(CKKSProcessReceivedKeysOperation *)self deps];
  activeManagedViews2 = [deps7 activeManagedViews];
  if ([activeManagedViews2 count])
  {
    v36 = *(v80 + 6);
    deps8 = [(CKKSProcessReceivedKeysOperation *)self deps];
    activeManagedViews3 = [deps8 activeManagedViews];
    v39 = [activeManagedViews3 count];

    v40 = v36 / v39;
  }

  else
  {
    v40 = 0;
  }

  v87[0] = kSecurityRTCFieldAvgRemoteKeys;
  v41 = [NSNumber numberWithInt:v40];
  v87[1] = kSecurityRTCFieldTotalRemoteKeys;
  v88[0] = v41;
  v42 = [NSNumber numberWithInt:*(v80 + 6)];
  v88[1] = v42;
  v43 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:2];
  [v50 addMetrics:v43];

  [v50 sendMetricWithResult:*(v84 + 24) error:0];
  intendedState = [(CKKSProcessReceivedKeysOperation *)self intendedState];
  [(CKKSProcessReceivedKeysOperation *)self setNextState:intendedState];

  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v83, 8);
}

- (CKKSProcessReceivedKeysOperation)initWithDependencies:(id)dependencies allowFullRefetchResult:(BOOL)result intendedState:(id)state errorState:(id)errorState
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  v17.receiver = self;
  v17.super_class = CKKSProcessReceivedKeysOperation;
  v14 = [(CKKSResultOperation *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_deps, dependencies);
    v15->_allowFullRefetchResult = result;
    objc_storeStrong(&v15->_intendedState, state);
    objc_storeStrong(&v15->_nextState, errorState);
  }

  return v15;
}

@end