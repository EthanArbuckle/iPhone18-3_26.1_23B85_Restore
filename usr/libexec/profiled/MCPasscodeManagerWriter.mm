@interface MCPasscodeManagerWriter
+ (BOOL)didPasscodePolicyChangeWithOldRestrictions:(id)restrictions newRestrictions:(id)newRestrictions;
+ (id)sharedManager;
- (BOOL)changePasscodeWithOldPasscodeContext:(id)context newPasscodeContext:(id)passcodeContext skipRecovery:(BOOL)recovery senderBundleID:(id)d outError:(id *)error;
- (BOOL)changePasscodeWithRecoveryPasscodeContext:(id)context newPasscodeContext:(id)passcodeContext skipRecovery:(BOOL)recovery senderBundleID:(id)d outError:(id *)error;
- (BOOL)clearPasscodeWithEscrowKeybagData:(id)data secretContext:(id)context senderBundleID:(id)d outError:(id *)error;
- (BOOL)clearRecoveryPasscodeOpaqueDataWithOutError:(id *)error;
- (BOOL)isPasscodeRecoveryRestricted;
- (id)_setPublicPasscodeDict:(id)dict;
- (id)clearRecoveryPasscode;
- (id)processPasscodeChangeWithOldPascodeGeneration:(id)generation oldPublicDict:(id)dict newPasscodeGeneration:(id)passcodeGeneration newPublicDict:(id)publicDict newPasscodeWasSet:(BOOL)set;
- (void)_sendPasscodeChangedNotification;
- (void)_setPrivatePasscodeDict:(id)dict;
- (void)clearPasscodeHistory;
- (void)migratePasscodeMetadata;
- (void)updatePasscodeHistoryWithOldPasscodeContext:(id)context oldPasscodeExists:(BOOL)exists oldPasscodeLength:(unint64_t)length newPrivateDictionary:(id)dictionary;
@end

@implementation MCPasscodeManagerWriter

+ (id)sharedManager
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___MCPasscodeManagerWriter;
  v2 = objc_msgSendSuper2(&v4, "sharedManager");

  return v2;
}

- (id)_setPublicPasscodeDict:(id)dict
{
  v3 = [NSPropertyListSerialization dataWithPropertyList:dict format:200 options:0 error:0];
  v4 = +[UMUserManager sharedManager];
  currentUser = [v4 currentUser];
  v12 = 0;
  [v4 setKeybagOpaqueDataForUser:currentUser withOpaqueData:v3 withError:&v12];
  v6 = v12;
  if (v6)
  {
    v7 = MCPasscodeErrorDomain;
    v8 = MCErrorArray();
    v9 = [NSError MCErrorWithDomain:v7 code:5023 descriptionArray:v8 underlyingError:v6 errorType:MCErrorTypeFatal, 0];

    if (v9)
    {
      v10 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to set opaque passcode data: (%{public}@)", buf, 0xCu);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_setPrivatePasscodeDict:(id)dict
{
  if (dict)
  {
    v4 = [NSPropertyListSerialization dataWithPropertyList:dict format:200 options:0 error:0];
    v5 = v4;
    if (v4)
    {
      LOBYTE(v8) = 0;
      v9 = v4;
      v4 = [MCKeychain setData:v4 forService:kMCServiceName account:kMCPrivateAccountName label:0 description:0 access:kSecAttrAccessibleWhenUnlockedThisDeviceOnly useSystemKeychain:v8 outError:0];
      v5 = v9;
    }

    _objc_release_x1(v4, v5);
  }

  else
  {
    v6 = kMCServiceName;
    v7 = kMCPrivateAccountName;

    [MCKeychain removeItemForService:v6 account:v7 label:0 description:0 useSystemKeychain:0 group:0];
  }
}

- (void)_sendPasscodeChangedNotification
{
  v2 = GSSendAppPreferencesChanged();

  _MCSendPasscodeChangedNotification(v2);
}

- (BOOL)isPasscodeRecoveryRestricted
{
  if (!MCKeybagMementoSupported())
  {
    return 1;
  }

  v2 = +[MCRestrictionManager sharedManager];
  v3 = ([v2 isBoolSettingLockedDownByRestrictions:MCFeaturePasscodeRecoveryAllowed] & 1) != 0 || !+[MCRestrictionManager mayChangePasscode](MCRestrictionManager, "mayChangePasscode") || objc_msgSend(v2, "effectiveRestrictedBoolForSetting:", MCFeatureLockdownModeAllowed) == 1;

  return v3;
}

- (BOOL)changePasscodeWithOldPasscodeContext:(id)context newPasscodeContext:(id)passcodeContext skipRecovery:(BOOL)recovery senderBundleID:(id)d outError:(id *)error
{
  recoveryCopy = recovery;
  contextCopy = context;
  passcodeContextCopy = passcodeContext;
  dCopy = d;
  if ((+[MCRestrictionManager mayChangePasscode]& 1) != 0)
  {
    if ((+[MCPasscodeManager isDeviceUnlocked](MCPasscodeManager, "isDeviceUnlocked") & 1) != 0 || (+[MCPasscodeManager deviceLockedError], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v125 = 0;
      v16 = [MCExtractablePasscodeContextWrapper contextWrapperFromExternalizedContext:contextCopy outError:&v125];
      v15 = v125;
      if (v15)
      {
        goto LABEL_79;
      }

      v124 = 0;
      v17 = [MCExtractablePasscodeContextWrapper contextWrapperFromExternalizedContext:passcodeContextCopy outError:&v124];
      v15 = v124;
      if (v15)
      {
LABEL_78:

LABEL_79:
        if (!error)
        {
          goto LABEL_82;
        }

        goto LABEL_80;
      }

      v119 = recoveryCopy;
      v120 = v16;
      passcodeExists = [v16 passcodeExists];
      passcodeExists2 = [v17 passcodeExists];
      v123 = 0;
      v20 = [(MCPasscodeManagerWriter *)self _privatePasscodeDictWithOutError:&v123];
      v15 = v123;
      if (v15)
      {
LABEL_77:

        v16 = v120;
        goto LABEL_78;
      }

      v118 = passcodeExists2;
      v109 = passcodeExists;
      v100 = v17;
      v21 = +[MDMCloudConfiguration sharedConfiguration];
      v117 = v20;
      if ([v21 userMode] == 1)
      {
        v22 = +[UMUserManager sharedManager];
        v23 = [v22 isSharedIPad] ^ 1;
      }

      else
      {
        v23 = 1;
      }

      v26 = v119;

      HasSEP = MCGestaltHasSEP();
      _currentPublicPasscodeDict = [(MCPasscodeManagerWriter *)self _currentPublicPasscodeDict];
      mCMutableDeepCopy = [_currentPublicPasscodeDict MCMutableDeepCopy];
      v29 = mCMutableDeepCopy;
      if (mCMutableDeepCopy)
      {
        v30 = mCMutableDeepCopy;
      }

      else
      {
        v30 = objc_opt_new();
      }

      v121 = v30;
      v31 = HasSEP & v23;

      mCMutableDeepCopy2 = [v117 MCMutableDeepCopy];
      v33 = mCMutableDeepCopy2;
      if (mCMutableDeepCopy2)
      {
        v34 = mCMutableDeepCopy2;
      }

      else
      {
        v34 = objc_opt_new();
      }

      v35 = v34;
      v36 = v109;

      v104 = [MCPasscodeManagerWriter characteristicsDictionaryFromPasscodeContext:passcodeContextCopy];
      v99 = [MCPasscodeManagerWriter unlockScreenTypeForPasscodeCharacteristics:"unlockScreenTypeForPasscodeCharacteristics:outSimplePasscodeType:" outSimplePasscodeType:?];
      v116 = v35;
      if (v31)
      {
        v37 = MCKeybagCurrentPasscodeGeneration();
        if (v37)
        {
          v38 = v109;
        }

        else
        {
          v38 = 0;
        }

        v108 = v37;
        if (v38 == 1)
        {
          stringValue = [v37 stringValue];
          v113 = stringValue;
          if (v121)
          {
            v40 = [v121 objectForKeyedSubscript:stringValue];

            if (!v40)
            {
              v41 = [(MCPasscodeManagerWriter *)self _fixUpPublicPasscodeDict:_currentPublicPasscodeDict];
              mCMutableDeepCopy3 = [v41 MCMutableDeepCopy];

              v121 = mCMutableDeepCopy3;
            }
          }

          else
          {
            v121 = 0;
          }

          v110 = kMCPrivatePasscodeCharacteristicsKey;
          v45 = [v35 objectForKeyedSubscript:?];
          v46 = v45;
          if (v45)
          {
            v47 = [v45 objectForKeyedSubscript:v113];

            if (!v47)
            {
              v48 = [(MCPasscodeManagerWriter *)self _fixUpPasscodeCharacteristics:v46];
              mCMutableDeepCopy4 = [v48 MCMutableDeepCopy];

              [v35 setObject:mCMutableDeepCopy4 forKeyedSubscript:v110];
            }
          }

          v36 = v109;
        }

        v49 = v118;
        if (!v118)
        {
LABEL_42:
          v98 = v49 ^ 1;
          v115 = [NSPropertyListSerialization dataWithPropertyList:v121 format:200 options:0 error:0];
          v96 = MCKeybagMementoBlobExists();
          v103 = MCKeybagMementoSupported();
          isPasscodeRecoveryRestricted = [(MCPasscodeManagerWriter *)self isPasscodeRecoveryRestricted];
          if (v31)
          {
            MCKeybagClearPasscodeGenerationCaches();
            MCSendClearPasscodeGenerationCachesNotification();
          }

          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v62 = Mutable;
          if ((v103 & v36) == 1)
          {
            v63 = &kCFBooleanTrue;
            v95 = isPasscodeRecoveryRestricted | v26 | v98;
            if (v95)
            {
              v63 = &kCFBooleanFalse;
            }

            CFDictionaryAddValue(Mutable, @"OverrideMemento", *v63);
          }

          else
          {
            v95 = 1;
          }

          v64 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v127 = v62;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Changing passcode with options: %@", buf, 0xCu);
          }

          v112 = MKBKeyBagChangeSystemSecretWithACM();
          if (v31)
          {
            MCKeybagClearPasscodeGenerationCaches();
            MCSendClearPasscodeGenerationCachesNotification();
            v65 = MCKeybagCurrentPasscodeGeneration();
            if (v118)
            {
              v94 = MCKeybagMementoPasscodeGeneration();
              v66 = objc_opt_new();
              v67 = objc_opt_new();
              v68 = v67;
              v69 = v121;
              v106 = v65;
              if (v65)
              {
                v93 = v67;
                stringValue2 = [v65 stringValue];
                v71 = [v121 objectForKeyedSubscript:stringValue2];
                [v66 setObject:v71 forKeyedSubscript:stringValue2];

                v92 = [v35 objectForKeyedSubscript:kMCPrivatePasscodeCharacteristicsKey];
                v72 = [v92 objectForKeyedSubscript:stringValue2];
                [v93 setObject:v72 forKeyedSubscript:stringValue2];

                v65 = v106;
                v68 = v93;
              }

              if (v94)
              {
                stringValue3 = [v94 stringValue];
                v74 = [v121 objectForKeyedSubscript:stringValue3];
                [v66 setObject:v74 forKeyedSubscript:stringValue3];

                v69 = v121;
                v65 = v106;
              }

              [v116 setObject:v68 forKeyedSubscript:kMCPrivatePasscodeCharacteristicsKey];
              v35 = v116;
              goto LABEL_63;
            }
          }

          else
          {
            if (v118)
            {
              v75 = [NSNumber numberWithUnsignedInt:v99];
              v66 = v121;
              [v121 setObject:v75 forKeyedSubscript:kMCPublicPasscodeKeyboardTypeKey];

              v76 = [NSNumber numberWithInt:0xFFFFFFFFLL];
              [v121 setObject:v76 forKeyedSubscript:kMCPublicPasscodeSimpleTypeKey];

              v77 = objc_opt_new();
              [v121 setObject:v77 forKeyedSubscript:kMCPublicPasscodeCreationDateKey];

              [v35 setObject:v104 forKeyedSubscript:kMCPrivatePasscodeCharacteristicsKey];
              v65 = 0;
              goto LABEL_63;
            }

            v65 = 0;
          }

          v78 = v121;
          if (([(MCPasscodeManagerWriter *)self isPasscodeSet]& 1) != 0)
          {
LABEL_64:
            v81 = _MCLogObjects[0];
            v122 = v78;
            v107 = v65;
            if (v112)
            {
              if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                LODWORD(v127) = v112;
                _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "Failed to set new passcode. Result: %d", buf, 8u);
              }

              v82 = MCPasscodeErrorDomain;
              v83 = [NSNumber numberWithInt:v112];
              v84 = MCErrorArray();
              v15 = [NSError MCErrorWithDomain:v82 code:5014 descriptionArray:v84 errorType:MCErrorTypeFatal, v83, 0];

              v85 = _currentPublicPasscodeDict;
              v86 = v116;
            }

            else
            {
              if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Passcode has been changed.", buf, 2u);
              }

              selfCopy = self;
              v85 = _currentPublicPasscodeDict;
              v83 = [(MCPasscodeManagerWriter *)selfCopy processPasscodeChangeWithOldPascodeGeneration:v108 oldPublicDict:_currentPublicPasscodeDict newPasscodeGeneration:v65 newPublicDict:v78 newPasscodeWasSet:v118];
              if (v83)
              {
                v88 = _MCLogObjects[0];
                if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v127 = v83;
                  _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "Failed to process passcode change. Error: %{public}@", buf, 0xCu);
                }
              }

              BYTE1(v91) = v119;
              LOBYTE(v91) = isPasscodeRecoveryRestricted;
              [MCPasscodeAnalytics sendPasscodeChangedEventWithChangeType:0 oldPasscodeExists:v109 isClearingPasscode:v98 newPasscodeUnlockScreenType:v99 newPasscodeSimpleType:0xFFFFFFFFLL passcodeRecoverySupported:v103 passcodeRecoveryRestricted:v91 recoverySkipped:dCopy senderBundleID:?];
              v86 = v116;
              if ((v96 & v95) == 1)
              {
                [MCPasscodeAnalytics sendRecoveryPasscodeClearedEventWithReason:0];
              }

              v15 = 0;
            }

            v17 = v100;
            v20 = v117;
            goto LABEL_77;
          }

          v35 = v116;
          [v116 setObject:0 forKeyedSubscript:kMCPrivatePasscodeCharacteristicsKey];
          v66 = 0;
LABEL_63:
          v79 = [(MCPasscodeManagerWriter *)self _setPublicPasscodeDict:v66];
          [(MCPasscodeManagerWriter *)self _setPrivatePasscodeDict:v35];
          v80 = +[MCRestrictionManagerWriter sharedManager];
          [v80 clearAllPasscodeComplianceCaches];

          v78 = v66;
          goto LABEL_64;
        }

        -[MCPasscodeManagerWriter updatePasscodeHistoryWithOldPasscodeContext:oldPasscodeExists:oldPasscodeLength:newPrivateDictionary:](self, "updatePasscodeHistoryWithOldPasscodeContext:oldPasscodeExists:oldPasscodeLength:newPrivateDictionary:", contextCopy, v36, [v120 passcodeLength], v35);
        v105 = v31;
        if (v108)
        {
          v50 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v108 unsignedIntegerValue] + 1);
        }

        else
        {
          v50 = &off_1001272A0;
        }

        stringValue4 = [v50 stringValue];
        v52 = kMCPrivatePasscodeCharacteristicsKey;
        v53 = [v35 objectForKeyedSubscript:?];
        v54 = v53;
        v114 = v50;
        if (v53)
        {
          v55 = v53;
        }

        else
        {
          v55 = objc_opt_new();
        }

        v56 = v55;
        v111 = v55;

        [v56 setObject:v104 forKeyedSubscript:stringValue4];
        [v35 setObject:v56 forKeyedSubscript:v52];
        [(MCPasscodeManagerWriter *)self _setPrivatePasscodeDict:v35];
        v128[0] = kMCPublicPasscodeKeyboardTypeKey;
        v57 = [NSNumber numberWithUnsignedInt:v99];
        v129[0] = v57;
        v128[1] = kMCPublicPasscodeSimpleTypeKey;
        v58 = [NSNumber numberWithInt:0xFFFFFFFFLL];
        v129[1] = v58;
        v128[2] = kMCPublicPasscodeCreationDateKey;
        v36 = +[NSDate date];
        v129[2] = v36;
        v59 = [NSDictionary dictionaryWithObjects:v129 forKeys:v128 count:3];

        [v121 setObject:v59 forKeyedSubscript:stringValue4];
        v35 = v116;
        v60 = [(MCPasscodeManagerWriter *)self _setPublicPasscodeDict:v121];

        LODWORD(v36) = v109;
        v44 = v114;
        v26 = v119;
        v31 = v105;
      }

      else
      {
        v43 = [(MCPasscodeManagerWriter *)self _setPublicPasscodeDict:0];
        v44 = [v35 mutableCopy];
        [v44 setObject:0 forKeyedSubscript:kMCPrivatePasscodeCharacteristicsKey];
        [(MCPasscodeManagerWriter *)self _setPrivatePasscodeDict:v44];
        v108 = 0;
      }

      v49 = v118;
      goto LABEL_42;
    }
  }

  else
  {
    v24 = MCPasscodeErrorDomain;
    v25 = MCErrorArray();
    v15 = [NSError MCErrorWithDomain:v24 code:5014 descriptionArray:v25 errorType:MCErrorTypeFatal, 0];
  }

  if (!error)
  {
    goto LABEL_82;
  }

LABEL_80:
  if (v15)
  {
    v89 = v15;
    *error = v15;
  }

LABEL_82:

  return v15 == 0;
}

- (BOOL)changePasscodeWithRecoveryPasscodeContext:(id)context newPasscodeContext:(id)passcodeContext skipRecovery:(BOOL)recovery senderBundleID:(id)d outError:(id *)error
{
  recoveryCopy = recovery;
  contextCopy = context;
  passcodeContextCopy = passcodeContext;
  dCopy = d;
  if (MCKeybagMementoSupported())
  {
    if ((+[MCRestrictionManager mayChangePasscode]& 1) != 0)
    {
      v108 = 0;
      v15 = [MCExtractablePasscodeContextWrapper contextWrapperFromExternalizedContext:contextCopy outError:&v108];
      v16 = v108;
      if (v16)
      {
        goto LABEL_91;
      }

      v107 = 0;
      v17 = [MCExtractablePasscodeContextWrapper contextWrapperFromExternalizedContext:passcodeContextCopy outError:&v107];
      v16 = v107;
      if (v16)
      {
LABEL_90:

LABEL_91:
        if (!error)
        {
          goto LABEL_94;
        }

        goto LABEL_92;
      }

      passcodeExists = [v15 passcodeExists];
      if ([(MCPasscodeManagerWriter *)self isPasscodeRecoveryRestricted]|| (MCKeybagMementoBlobExists() & passcodeExists & 1) == 0)
      {
        v26 = MCPasscodeErrorDomain;
        v27 = MCErrorArray();
        v16 = [NSError MCErrorWithDomain:v26 code:5014 descriptionArray:v27 errorType:MCErrorTypeFatal, 0];
LABEL_89:

        goto LABEL_90;
      }

      passcodeExists2 = [v17 passcodeExists];
      _currentPublicPasscodeDict = [(MCPasscodeManagerWriter *)self _currentPublicPasscodeDict];
      mCMutableDeepCopy = [_currentPublicPasscodeDict MCMutableDeepCopy];
      v20 = mCMutableDeepCopy;
      if (mCMutableDeepCopy)
      {
        v21 = mCMutableDeepCopy;
      }

      else
      {
        v21 = objc_opt_new();
      }

      v100 = v21;

      [MCPasscodeManagerWriter characteristicsDictionaryFromPasscodeContext:passcodeContextCopy];
      v93 = v106 = -1;
      v88 = [MCPasscodeManagerWriter unlockScreenTypeForPasscodeCharacteristics:"unlockScreenTypeForPasscodeCharacteristics:outSimplePasscodeType:" outSimplePasscodeType:?];
      v28 = +[MDMCloudConfiguration sharedConfiguration];
      v92 = v17;
      if ([v28 userMode] == 1)
      {
        v29 = +[UMUserManager sharedManager];
        v30 = [v29 isSharedIPad] ^ 1;
      }

      else
      {
        v30 = 1;
      }

      v94 = MCGestaltHasSEP() & v30;
      if (v94 == 1)
      {
        v98 = MCKeybagCurrentPasscodeGeneration();
        stringValue = [v98 stringValue];
        v32 = stringValue;
        v33 = v100;
        if (v100)
        {
          if (stringValue)
          {
            v34 = [v100 objectForKeyedSubscript:stringValue];

            if (!v34)
            {
              v35 = [(MCPasscodeManagerWriter *)self _fixUpPublicPasscodeDict:_currentPublicPasscodeDict];
              mCMutableDeepCopy2 = [v35 MCMutableDeepCopy];

              v33 = mCMutableDeepCopy2;
            }
          }
        }

        if (passcodeExists2)
        {
          v101 = v33;
          v95 = v32;
          if (v98)
          {
            v36 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v98 unsignedIntegerValue] + 1);
          }

          else
          {
            v36 = &off_1001272A0;
          }

          v90 = v36;
          stringValue2 = [v36 stringValue];
          v113[0] = kMCPublicPasscodeKeyboardTypeKey;
          v84 = [NSNumber numberWithUnsignedInt:v88];
          v114[0] = v84;
          v113[1] = kMCPublicPasscodeSimpleTypeKey;
          v38 = [NSNumber numberWithInt:v106];
          v114[1] = v38;
          v113[2] = kMCPublicPasscodeCreationDateKey;
          v39 = +[NSDate date];
          v114[2] = v39;
          v40 = [NSDictionary dictionaryWithObjects:v114 forKeys:v113 count:3];

          v33 = v101;
          [v101 setObject:v40 forKeyedSubscript:stringValue2];
          v41 = [(MCPasscodeManagerWriter *)self _setPublicPasscodeDict:v101];

          v32 = v95;
        }
      }

      else
      {
        v37 = [(MCPasscodeManagerWriter *)self _setPublicPasscodeDict:0];
        v98 = 0;
        v33 = v100;
      }

      v102 = v33;
      v42 = [NSPropertyListSerialization dataWithPropertyList:v33 format:200 options:0 error:0];
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionaryAddValue(Mutable, @"UseMementoBlob", kCFBooleanTrue);
      if ((!recoveryCopy & passcodeExists2) != 0)
      {
        v44 = kCFBooleanTrue;
      }

      else
      {
        v44 = kCFBooleanFalse;
      }

      CFDictionaryAddValue(Mutable, @"OverrideMemento", v44);
      v91 = v42;
      if (v94)
      {
        MCKeybagClearPasscodeGenerationCaches();
        MCSendClearPasscodeGenerationCachesNotification();
        v45 = MKBKeyBagChangeSystemSecretWithACM();
        MCKeybagClearPasscodeGenerationCaches();
        MCSendClearPasscodeGenerationCachesNotification();
        v46 = MCKeybagCurrentPasscodeGeneration();
        v96 = v46;
        if (passcodeExists2)
        {
          v47 = v46;
          v85 = v45;
          v48 = MCKeybagMementoPasscodeGeneration();
          v49 = objc_opt_new();
          if (v47)
          {
            stringValue3 = [v47 stringValue];
            v80 = [v102 objectForKeyedSubscript:stringValue3];
            [v49 setObject:v80 forKeyedSubscript:stringValue3];
          }

          v50 = v102;
          if (v48)
          {
            stringValue4 = [v48 stringValue];
            v82 = [v102 objectForKeyedSubscript:?];
            [v49 setObject:v82 forKeyedSubscript:stringValue4];

            v50 = v102;
          }

          v52 = v85;
          goto LABEL_47;
        }

        v52 = v45;
      }

      else
      {
        v52 = MKBKeyBagChangeSystemSecretWithACM();
        if (passcodeExists2)
        {
          v49 = v102;
          v53 = [NSNumber numberWithUnsignedInt:v88];
          [v102 setObject:v53 forKeyedSubscript:kMCPublicPasscodeKeyboardTypeKey];

          v54 = [NSNumber numberWithInt:v106];
          [v102 setObject:v54 forKeyedSubscript:kMCPublicPasscodeSimpleTypeKey];

          v48 = objc_opt_new();
          [v102 setObject:v48 forKeyedSubscript:kMCPublicPasscodeCreationDateKey];
          v96 = 0;
          goto LABEL_47;
        }

        v96 = 0;
      }

      if (([(MCPasscodeManagerWriter *)self isPasscodeSet]& 1) != 0)
      {
        v49 = v102;
        goto LABEL_48;
      }

      v49 = 0;
      v48 = v102;
LABEL_47:

      v55 = [(MCPasscodeManagerWriter *)self _setPublicPasscodeDict:v49];
LABEL_48:
      v56 = _MCLogObjects[0];
      v103 = v49;
      if (v52)
      {
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v112) = v52;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Failed to set new passcode with recovery passcode. Result: %d", buf, 8u);
        }

        v57 = MCPasscodeErrorDomain;
        v58 = [NSNumber numberWithInt:v52];
        v59 = MCErrorArray();
        v16 = [NSError MCErrorWithDomain:v57 code:5014 descriptionArray:v59 errorType:MCErrorTypeFatal, v58, 0];

        goto LABEL_87;
      }

      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Passcode has been changed.", buf, 2u);
      }

      v105 = 0;
      v60 = [(MCPasscodeManagerWriter *)self unlockDeviceWithPasscodeContext:passcodeContextCopy outError:&v105];
      v61 = v105;
      v58 = v61;
      if ((v60 & 1) == 0)
      {
        v63 = _MCLogObjects[0];
        v27 = _currentPublicPasscodeDict;
        v64 = v91;
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v112 = v58;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "Failed to unlock device with new passcode. Error: %{public}@", buf, 0xCu);
        }

        v16 = 0;
        goto LABEL_88;
      }

      if (v61)
      {
LABEL_86:
        v16 = 0;
LABEL_87:
        v27 = _currentPublicPasscodeDict;
        v64 = v91;
LABEL_88:

        v17 = v92;
        goto LABEL_89;
      }

      if ((+[MCPasscodeManager isDeviceUnlocked]& 1) == 0)
      {
        v62 = +[MCPasscodeManager deviceLockedError];
        if (v62)
        {
          v58 = v62;
          goto LABEL_86;
        }
      }

      v104 = 0;
      v86 = [(MCPasscodeManagerWriter *)self _privatePasscodeDictWithOutError:&v104];
      v65 = v104;
      if (v65)
      {
        v58 = v65;
        v66 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v112 = v58;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "Failed to retrieve private passcode data. Error: %{public}@", buf, 0xCu);
        }

        goto LABEL_85;
      }

      if ((+[MCPasscodeManager isDeviceUnlocked]& 1) == 0)
      {
        v58 = +[MCPasscodeManager deviceLockedError];
        if (v58)
        {
LABEL_85:

          goto LABEL_86;
        }
      }

      mCMutableDeepCopy3 = [v86 MCMutableDeepCopy];
      v68 = mCMutableDeepCopy3;
      if (mCMutableDeepCopy3)
      {
        v69 = mCMutableDeepCopy3;
      }

      else
      {
        v69 = objc_opt_new();
      }

      v83 = v69;

      if (passcodeExists2)
      {
        if (v94)
        {
          if (v96)
          {
            stringValue5 = [v96 stringValue];
            v109 = stringValue5;
            v110 = v93;
            v71 = [NSDictionary dictionaryWithObjects:&v110 forKeys:&v109 count:1];
            [v83 setObject:v71 forKeyedSubscript:kMCPrivatePasscodeCharacteristicsKey];
          }

          goto LABEL_78;
        }

        v72 = kMCPrivatePasscodeCharacteristicsKey;
        v73 = v83;
        v74 = v93;
      }

      else
      {
        if (([(MCPasscodeManagerWriter *)self isPasscodeSet]& 1) != 0)
        {
          goto LABEL_79;
        }

        v72 = kMCPrivatePasscodeCharacteristicsKey;
        v73 = v83;
        v74 = 0;
      }

      [v73 setObject:v74 forKeyedSubscript:v72];
LABEL_78:
      [(MCPasscodeManagerWriter *)self _setPrivatePasscodeDict:v83];
      v75 = +[MCRestrictionManagerWriter sharedManager];
      [v75 clearAllPasscodeComplianceCaches];

LABEL_79:
      v58 = [(MCPasscodeManagerWriter *)self processPasscodeChangeWithOldPascodeGeneration:v98 oldPublicDict:_currentPublicPasscodeDict newPasscodeGeneration:v96 newPublicDict:v103 newPasscodeWasSet:passcodeExists2];
      if (v58)
      {
        v76 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v112 = v58;
          _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "Failed to process passcode change. Error: %{public}@", buf, 0xCu);
        }
      }

      BYTE1(v79) = recoveryCopy;
      LOBYTE(v79) = 0;
      [MCPasscodeAnalytics sendPasscodeChangedEventWithChangeType:1 oldPasscodeExists:1 isClearingPasscode:passcodeExists2 ^ 1 newPasscodeUnlockScreenType:v88 newPasscodeSimpleType:v106 passcodeRecoverySupported:1 passcodeRecoveryRestricted:v79 recoverySkipped:dCopy senderBundleID:?];
      if ((!recoveryCopy & passcodeExists2 & 1) == 0)
      {
        [MCPasscodeAnalytics sendRecoveryPasscodeClearedEventWithReason:1];
      }

      goto LABEL_85;
    }

    v25 = MCPasscodeErrorDomain;
    v23 = MCErrorArray();
    v16 = [NSError MCErrorWithDomain:v25 code:5014 descriptionArray:v23 errorType:MCErrorTypeFatal, 0];
  }

  else
  {
    v22 = MCPasscodeErrorDomain;
    v23 = MCErrorArray();
    v24 = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:0, 0];
    v16 = [NSError MCErrorWithDomain:v22 code:5014 descriptionArray:v23 underlyingError:v24 errorType:MCErrorTypeFatal];
  }

  if (!error)
  {
    goto LABEL_94;
  }

LABEL_92:
  if (v16)
  {
    v77 = v16;
    *error = v16;
  }

LABEL_94:

  return v16 == 0;
}

- (BOOL)clearPasscodeWithEscrowKeybagData:(id)data secretContext:(id)context senderBundleID:(id)d outError:(id *)error
{
  dataCopy = data;
  contextCopy = context;
  dCopy = d;
  v35 = MCKeybagMementoBlobExists();
  v12 = +[MDMCloudConfiguration sharedConfiguration];
  if ([v12 userMode] == 1)
  {
    v13 = +[UMUserManager sharedManager];
    v14 = [v13 isSharedIPad] ^ 1;
  }

  else
  {
    v14 = 1;
  }

  if (MCGestaltHasSEP() && (v14 & 1) != 0)
  {
    MCKeybagClearPasscodeGenerationCaches();
    MCSendClearPasscodeGenerationCachesNotification();
    v15 = MKBKeyBagChangeSystemSecretWithEscrowWithACM();
    MCKeybagClearPasscodeGenerationCaches();
    MCSendClearPasscodeGenerationCachesNotification();
  }

  else
  {
    v15 = MKBKeyBagChangeSystemSecretWithEscrowWithACM();
  }

  v16 = +[MCRestrictionManagerWriter sharedManager];
  if (([(MCPasscodeManagerWriter *)self isPasscodeSet]& 1) != 0)
  {
    v17 = 0;
  }

  else
  {
    v37 = 0;
    v18 = [(MCPasscodeManagerWriter *)self _privatePasscodeDictWithOutError:&v37];
    v17 = v37;
    mCMutableDeepCopy = [v18 MCMutableDeepCopy];
    v20 = mCMutableDeepCopy;
    if (mCMutableDeepCopy)
    {
      v21 = mCMutableDeepCopy;
    }

    else
    {
      v21 = objc_opt_new();
    }

    v22 = v21;

    [v22 setObject:0 forKeyedSubscript:kMCPrivatePasscodeCharacteristicsKey];
    v23 = [(MCPasscodeManagerWriter *)self _setPublicPasscodeDict:0];
    [(MCPasscodeManagerWriter *)self _setPrivatePasscodeDict:v22];
    [v16 clearAllPasscodeComplianceCaches];
  }

  v24 = _MCLogObjects[0];
  if (v15)
  {
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v39 = v15;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to clear passcode. Result: %d", buf, 8u);
    }

    v25 = MCPasscodeErrorDomain;
    v26 = [NSNumber numberWithInt:v15];
    v27 = MCErrorArray();
    v28 = [NSError MCErrorWithDomain:v25 code:5013 descriptionArray:v27 errorType:MCErrorTypeFatal, v26, 0];

    v17 = v28;
    v29 = dCopy;
  }

  else
  {
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Passcode cleared.", buf, 2u);
    }

    [v16 recomputeEffectiveUserSettings];
    [v16 recomputeNagMetadata];
    [v16 notifyClientsToRecomputeCompliance];
    [(MCPasscodeManagerWriter *)self performSelectorOnMainThread:"_sendPasscodeChangedNotification" withObject:0 waitUntilDone:0];
    v30 = MCKeybagMementoSupported();
    isPasscodeRecoveryRestricted = [(MCPasscodeManagerWriter *)self isPasscodeRecoveryRestricted];
    v29 = dCopy;
    LOWORD(v34) = isPasscodeRecoveryRestricted;
    [MCPasscodeAnalytics sendPasscodeChangedEventWithChangeType:2 oldPasscodeExists:1 isClearingPasscode:1 newPasscodeUnlockScreenType:2 newPasscodeSimpleType:0xFFFFFFFFLL passcodeRecoverySupported:v30 passcodeRecoveryRestricted:v34 recoverySkipped:dCopy senderBundleID:?];
    if (v35)
    {
      [MCPasscodeAnalytics sendRecoveryPasscodeClearedEventWithReason:2];
    }
  }

  if (error && v17)
  {
    v32 = v17;
    *error = v17;
  }

  return v17 == 0;
}

+ (BOOL)didPasscodePolicyChangeWithOldRestrictions:(id)restrictions newRestrictions:(id)newRestrictions
{
  restrictionsCopy = restrictions;
  newRestrictionsCopy = newRestrictions;
  if (([MCRestrictionManager restrictedBool:MCFeatureSimplePasscodeAllowed changedBetweenOldRestrictions:restrictionsCopy andNewRestrictions:newRestrictionsCopy]& 1) != 0 || ([MCRestrictionManager restrictedBool:MCFeaturePasscodeRequired changedBetweenOldRestrictions:restrictionsCopy andNewRestrictions:newRestrictionsCopy]& 1) != 0 || ([MCRestrictionManager restrictedBool:MCFeatureAlphanumericPasscodeRequired changedBetweenOldRestrictions:restrictionsCopy andNewRestrictions:newRestrictionsCopy]& 1) != 0 || ([MCRestrictionManager restrictedValue:MCFeatureMinimumPasscodeLength changedBetweenOldRestrictions:restrictionsCopy andNewRestrictions:newRestrictionsCopy]& 1) != 0 || ([MCRestrictionManager restrictedValue:MCFeaturePasscodeHistoryCount changedBetweenOldRestrictions:restrictionsCopy andNewRestrictions:newRestrictionsCopy]& 1) != 0 || ([MCRestrictionManager restrictedValue:MCFeatureMaximumFailedPasscodeAttempts changedBetweenOldRestrictions:restrictionsCopy andNewRestrictions:newRestrictionsCopy]& 1) != 0 || ([MCRestrictionManager restrictedValue:MCFeaturePasscodeMinimumComplexChars changedBetweenOldRestrictions:restrictionsCopy andNewRestrictions:newRestrictionsCopy]& 1) != 0 || ([MCRestrictionManager restrictedValue:MCFeatureMaximumPasscodeAgeDays changedBetweenOldRestrictions:restrictionsCopy andNewRestrictions:newRestrictionsCopy]& 1) != 0 || (v7 = [MCPasscodeManager unlockScreenTypeForPasscodeCharacteristics:restrictionsCopy], v7 != [MCPasscodeManager unlockScreenTypeForPasscodeCharacteristics:newRestrictionsCopy]) || ([MCRestrictionManager restrictedValue:MCFeatureAutoLockTime changedBetweenOldRestrictions:restrictionsCopy andNewRestrictions:newRestrictionsCopy]& 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = [MCRestrictionManager restrictedValue:MCFeaturePasscodeLockGraceTime changedBetweenOldRestrictions:restrictionsCopy andNewRestrictions:newRestrictionsCopy];
  }

  return v8;
}

- (void)updatePasscodeHistoryWithOldPasscodeContext:(id)context oldPasscodeExists:(BOOL)exists oldPasscodeLength:(unint64_t)length newPrivateDictionary:(id)dictionary
{
  existsCopy = exists;
  contextCopy = context;
  dictionaryCopy = dictionary;
  v11 = +[MCRestrictionManager sharedManager];
  v12 = [v11 valueForFeature:MCFeaturePasscodeHistoryCount];

  if ([v12 unsignedIntValue])
  {
    if (existsCopy)
    {
      v13 = kMCPrivatePasscodeHistoryKey;
      v14 = [dictionaryCopy objectForKeyedSubscript:kMCPrivatePasscodeHistoryKey];
      v15 = [v14 mutableCopy];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = objc_opt_new();
      }

      v19 = v17;

      v20 = CCCalibratePBKDF(2u, length, 4uLL, 3u, 0x20uLL, 0x64u);
      v21 = kMCPrivatePasscodeHistoryMaxIterationsKey;
      v22 = [dictionaryCopy objectForKeyedSubscript:kMCPrivatePasscodeHistoryMaxIterationsKey];
      unsignedIntValue = [v22 unsignedIntValue];

      if (v20 <= unsignedIntValue)
      {
        v24 = unsignedIntValue;
      }

      else
      {
        v24 = v20;
      }

      if (v24 <= 0x2710)
      {
        v25 = 10000;
      }

      else
      {
        v25 = v24;
      }

      v26 = [NSNumber numberWithUnsignedInt:v25];
      [dictionaryCopy setObject:v26 forKeyedSubscript:v21];

      v27 = +[MCPasscodeManagerWriter generateSalt];
      v28 = [MCPasscodeManagerWriter hashForPasscodeContext:contextCopy usingMethod:3 salt:v27 customIterations:v25];
      v35[0] = kMCPrivatePasscodeHistoryHashKey;
      v35[1] = kMCPrivatePasscodeHistorySaltKey;
      v36[0] = v28;
      v36[1] = v27;
      v36[2] = &off_1001272B8;
      v35[2] = kMCPrivatePasscodeHistoryHashMethodKey;
      v35[3] = kMCPrivatePasscodeHistoryIterationsKey;
      v29 = [NSNumber numberWithUnsignedInt:v25];
      v36[3] = v29;
      v30 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:4];

      firstObject = [v19 firstObject];
      v32 = [firstObject isEqualToDictionary:v30];

      if ((v32 & 1) == 0)
      {
        [v19 insertObject:v30 atIndex:0];
      }

      if ([v19 count] >= 0x65)
      {
        [v19 removeObjectsInRange:{100, objc_msgSend(v19, "count") - 100}];
      }

      v33 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Old passcode added to history", v34, 2u);
      }

      [dictionaryCopy setObject:v19 forKeyedSubscript:v13];
    }
  }

  else
  {
    v18 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Passcode history removed", v34, 2u);
    }

    [dictionaryCopy setObject:0 forKeyedSubscript:kMCPrivatePasscodeHistoryKey];
  }
}

- (void)clearPasscodeHistory
{
  if ((+[MCPasscodeManager isDeviceUnlocked]& 1) == 0)
  {
    v3 = +[MCPasscodeManager deviceLockedError];
    if (v3)
    {
LABEL_5:
      v6 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v21 = v3;
        v7 = "Unable to clear passcode history. Error: %{public}@";
        v8 = v6;
        v9 = OS_LOG_TYPE_ERROR;
        v10 = 12;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v8, v9, v7, buf, v10);
        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v19 = 0;
  v3 = [(MCPasscodeManagerWriter *)self _privatePasscodeDictWithOutError:&v19];
  v4 = v19;
  if (v4)
  {
    v5 = v4;

    v3 = v5;
    goto LABEL_5;
  }

  v11 = kMCPrivatePasscodeHistoryKey;
  v12 = [v3 objectForKeyedSubscript:kMCPrivatePasscodeHistoryKey];

  if (!v12)
  {
    v16 = _MCLogObjects[0];
    if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v7 = "Passcode history already cleared";
    v8 = v16;
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 2;
    goto LABEL_7;
  }

  mCMutableDeepCopy = [v3 MCMutableDeepCopy];
  v14 = mCMutableDeepCopy;
  if (mCMutableDeepCopy)
  {
    v15 = mCMutableDeepCopy;
  }

  else
  {
    v15 = objc_opt_new();
  }

  v17 = v15;

  [v17 setObject:0 forKeyedSubscript:v11];
  [(MCPasscodeManagerWriter *)self _setPrivatePasscodeDict:v17];
  v18 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Passcode history cleared", buf, 2u);
  }

LABEL_17:
}

- (id)clearRecoveryPasscode
{
  v7 = 0;
  [(MCPasscodeManagerWriter *)self clearRecoveryPasscodeOpaqueDataWithOutError:&v7];
  v2 = v7;
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MCKeybagClearMementoBlob();
  }

  v5 = v4;

  return v5;
}

- (BOOL)clearRecoveryPasscodeOpaqueDataWithOutError:(id *)error
{
  _currentPublicPasscodeDict = [(MCPasscodeManagerWriter *)self _currentPublicPasscodeDict];
  if (_currentPublicPasscodeDict)
  {
    v6 = MCKeybagMementoPasscodeGeneration();
    if (v6)
    {
      v7 = [(MCPasscodeManagerWriter *)self _filterPublicPasscodeDict:_currentPublicPasscodeDict forGeneration:v6];
      if (v7)
      {
        mCMutableDeepCopy = [_currentPublicPasscodeDict MCMutableDeepCopy];
        stringValue = [v6 stringValue];
        [mCMutableDeepCopy setObject:0 forKeyedSubscript:stringValue];
        v10 = [(MCPasscodeManagerWriter *)self _setPublicPasscodeDict:mCMutableDeepCopy];
        v11 = v10 == 0;
        if (error && v10)
        {
          v10 = v10;
          *error = v10;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)processPasscodeChangeWithOldPascodeGeneration:(id)generation oldPublicDict:(id)dict newPasscodeGeneration:(id)passcodeGeneration newPublicDict:(id)publicDict newPasscodeWasSet:(BOOL)set
{
  dictCopy = dict;
  publicDictCopy = publicDict;
  passcodeGenerationCopy = passcodeGeneration;
  generationCopy = generation;
  v15 = +[MCRestrictionManagerWriter sharedManager];
  [v15 recomputeNagMetadata];
  [v15 notifyClientsToRecomputeCompliance];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008E43C;
  block[3] = &unk_10011B688;
  selfCopy = self;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  v16 = +[MDMCloudConfiguration sharedConfiguration];
  if ([v16 userMode] == 1)
  {
    v17 = +[UMUserManager sharedManager];
    isSharedIPad = [v17 isSharedIPad];
  }

  else
  {
    isSharedIPad = 0;
  }

  HasSEP = MCGestaltHasSEP();
  stringValue = [generationCopy stringValue];

  stringValue2 = [passcodeGenerationCopy stringValue];

  v44 = dictCopy;
  if (!HasSEP || isSharedIPad)
  {
    v36 = kMCPublicPasscodeKeyboardTypeKey;
    v24 = [dictCopy objectForKeyedSubscript:kMCPublicPasscodeKeyboardTypeKey];
    v35 = [publicDictCopy objectForKeyedSubscript:v36];
    v37 = kMCPublicPasscodeSimpleTypeKey;
    v28 = [dictCopy objectForKeyedSubscript:kMCPublicPasscodeSimpleTypeKey];
    v34 = [publicDictCopy objectForKeyedSubscript:v37];
    if (isSharedIPad)
    {
      [MCPasscodeManagerWriter setCurrentEphemeralUserPasscodeTypeFromUnlockScreenType:[(MCPasscodeManagerWriter *)selfCopy unlockScreenTypeWithPublicPasscodeDict:publicDictCopy isRecovery:0 deviceHandle:0 simplePasscodeType:v41], [(MCPasscodeManagerWriter *)selfCopy unlockSimplePasscodeTypeWithPublicPasscodeDict:publicDictCopy isRecovery:0 deviceHandle:0]];
    }
  }

  else
  {
    v22 = [dictCopy objectForKeyedSubscript:stringValue];
    v23 = kMCPublicPasscodeKeyboardTypeKey;
    v24 = [v22 objectForKeyedSubscript:kMCPublicPasscodeKeyboardTypeKey];

    v25 = [publicDictCopy objectForKeyedSubscript:stringValue2];
    v42 = [v25 objectForKeyedSubscript:v23];

    v26 = [dictCopy objectForKeyedSubscript:stringValue];
    v27 = kMCPublicPasscodeSimpleTypeKey;
    v28 = [v26 objectForKeyedSubscript:kMCPublicPasscodeSimpleTypeKey];

    [publicDictCopy objectForKeyedSubscript:stringValue2];
    v29 = publicDictCopy;
    v30 = stringValue2;
    v31 = stringValue;
    v33 = v32 = v15;
    v34 = [v33 objectForKeyedSubscript:v27];

    v15 = v32;
    stringValue = v31;
    stringValue2 = v30;
    publicDictCopy = v29;
    v35 = v42;
  }

  if (!v24 || (v38 = [v24 intValue], v38 != objc_msgSend(v35, "intValue")) || !v28 || (v39 = objc_msgSend(v28, "intValue"), v39 != objc_msgSend(v34, "intValue")))
  {
    MCSendUnlockScreenTypeDidChangeNotification();
  }

  return 0;
}

- (void)migratePasscodeMetadata
{
  if ([(MCPasscodeManagerWriter *)self isPasscodeSet])
  {
    v3 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Updating passcode metadata...", buf, 2u);
    }

    if ((+[MCPasscodeManager isDeviceUnlocked]& 1) == 0)
    {
      v4 = +[MCPasscodeManager deviceLockedError];
      if (v4)
      {
        goto LABEL_28;
      }
    }

    v21 = 0;
    v5 = [(MCPasscodeManagerWriter *)self _privatePasscodeDictWithOutError:&v21];
    v4 = v21;
    if (!v4 && v5)
    {
      v6 = kMCPrivatePasscodeCharacteristicsKey;
      v7 = [v5 objectForKeyedSubscript:kMCPrivatePasscodeCharacteristicsKey];
      if (v7)
      {
        _currentPublicPasscodeDict = [(MCPasscodeManagerWriter *)self _currentPublicPasscodeDict];
        if (_currentPublicPasscodeDict)
        {
          v9 = MCKeybagCurrentPasscodeGeneration();
          v10 = v9;
          if (v9)
          {
            stringValue = [v9 stringValue];
            v12 = [_currentPublicPasscodeDict objectForKeyedSubscript:stringValue];

            if (v12)
            {
              goto LABEL_12;
            }

            v18 = _MCLogObjects[0];
            if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Migrating public data...", buf, 2u);
            }

            v19 = [(MCPasscodeManagerWriter *)self _fixUpPublicPasscodeDict:_currentPublicPasscodeDict];
            v4 = [(MCPasscodeManagerWriter *)self _setPublicPasscodeDict:v19];

            if (!v4)
            {
LABEL_12:
              v13 = [v7 objectForKeyedSubscript:stringValue];

              if (!v13)
              {
                v14 = _MCLogObjects[0];
                if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Migrating private data...", buf, 2u);
                }

                v15 = [(MCPasscodeManagerWriter *)self _fixUpPasscodeCharacteristics:v7];
                mCMutableDeepCopy = [v5 MCMutableDeepCopy];
                [mCMutableDeepCopy setObject:v15 forKeyedSubscript:v6];
                [(MCPasscodeManagerWriter *)self _setPrivatePasscodeDict:mCMutableDeepCopy];
                v17 = +[MCRestrictionManagerWriter sharedManager];
                [v17 clearAllPasscodeComplianceCaches];
                [v17 recomputeNagMetadata];
              }

              v4 = 0;
            }
          }

          else
          {
            v4 = 0;
          }
        }

        else
        {
          v4 = 0;
        }
      }

      else
      {
        v4 = 0;
      }
    }

    if (v4)
    {
LABEL_28:
      v20 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v23 = v4;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Unable to migrate passcode metadata. Error: %{public}@", buf, 0xCu);
      }
    }
  }
}

@end