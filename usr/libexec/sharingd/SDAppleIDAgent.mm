@interface SDAppleIDAgent
+ (id)sharedAgent;
- (BOOL)_isCertificateBlocklisted:(id)blocklisted;
- (BOOL)eduModeEnabled;
- (SDAppleIDAgent)init;
- (__SecIdentity)_copyIdentityForAppleID:(id)d;
- (__SecIdentity)copyIdentityForAppleID:(id)d;
- (id)_detailedDescription;
- (id)_statusInfo;
- (id)accountForAppleID:(id)d;
- (id)accountStatusForAppleID:(id)d;
- (id)detailedDescription;
- (id)myAccount;
- (id)statusInfo;
- (id)validationRecordInfoForAppleID:(id)d;
- (id)verifiedIdentityForCertificateChain:(id)chain emailOrPhone:(id)phone error:(id *)error;
- (id)verifiedIdentityForEmailOrPhone:(id)phone;
- (int)_ensureEduModeDevicesAreCleanedUp;
- (int)_performKeyVerificationForIdentity:(id)identity;
- (int)_performKeychainCount;
- (int64_t)_accountState;
- (unint64_t)_keychainCleanupTag;
- (void)_activate;
- (void)_addObservers;
- (void)_altDSIDLookupWithEmails:(id)emails phoneNumbers:(id)numbers completion:(id)completion;
- (void)_checkIfAppleIDCertificateChainIsValidForIdentity:(id)identity completion:(id)completion;
- (void)_cleanUpAccount:(id)account;
- (void)_clearAccount;
- (void)_clearIdentityState:(id)state;
- (void)_ensurePeriodicVerifyTimerStarted;
- (void)_ensurePeriodicVerifyTimerStopped;
- (void)_ensurePushStarted;
- (void)_ensurePushStopped;
- (void)_ensureThrottledRetryTimerStartedWithSuggestedDelay:(unint64_t)delay;
- (void)_ensureThrottledRetryTimerStopped;
- (void)_handleAccountIdentifierValidationRecordMismatch;
- (void)_handleAltDSIDLookupResponse:(id)response requestError:(id)error serverTask:(id)task completion:(id)completion;
- (void)_handleAppleIDChangedNotification;
- (void)_handleAppleIDSignedInNotification;
- (void)_handleAppleIDSignedOutNotification;
- (void)_handleCertificateStatusUpdate:(int64_t)update forAppleID:(id)d;
- (void)_handleFindPersonResponse:(id)response forRequest:(id)request emailOrPhone:(id)phone withError:(id)error queue:(id)queue completion:(id)completion;
- (void)_handleInfoResponse:(id)response forAppleID:(id)d infoRequest:(id)request certificateSerialNumber:(id)number withError:(id)error completion:(id)completion;
- (void)_handleKeyBagFirstUnlockNotification;
- (void)_handleKeyVerificationFailure;
- (void)_handlePeriodicVerifyTimerFired;
- (void)_handleReceivedCertificateToken:(id)token privateKeyPersistentReference:(id)reference forAppleID:(id)d;
- (void)_handleReceivedIdentity:(id)identity forAppleID:(id)d identityRequest:(id)request withError:(id)error completion:(id)completion;
- (void)_handleServerTaskCompletionWithError:(id)error;
- (void)_handleThrottledRetryTimerFired;
- (void)_handleUILockStatusChange;
- (void)_handleUILockStatusChangedNotification;
- (void)_invalidate;
- (void)_performOtherTaskWithInfo:(id)info completion:(id)completion;
- (void)_performServerTaskWithInfo:(id)info completion:(id)completion;
- (void)_personInfoWithEmailOrPhone:(id)phone queue:(id)queue completion:(id)completion;
- (void)_prefsChanged;
- (void)_removeObservers;
- (void)_requestIdentityForAppleID:(id)d certificateToken:(id)token privateKeyPersistentReference:(id)reference withCompletion:(id)completion;
- (void)_requestInfoForAppleID:(id)d completion:(id)completion;
- (void)_setMetaInfoValue:(id)value forKey:(id)key;
- (void)_update;
- (void)_updateAppleID;
- (void)_updateMyInfo;
- (void)_verifyState;
- (void)_verifyStateWithDelay:(double)delay;
- (void)activate;
- (void)altDSIDLookupWithEmails:(id)emails phoneNumbers:(id)numbers completion:(id)completion;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)dealloc;
- (void)handleAppleIDChangedNotification;
- (void)handleAppleIDSignedInNotification;
- (void)handleAppleIDSignedOutNotification;
- (void)handleKeyBagFirstUnlockNotification;
- (void)handleUILockStatusChangedNotification;
- (void)invalidate;
- (void)personInfoWithEmailOrPhone:(id)phone queue:(id)queue completion:(id)completion;
- (void)prefsChanged;
- (void)queryVerifiedIdentityForEmailOrPhone:(id)phone queue:(id)queue completion:(id)completion;
- (void)requestWithInfo:(id)info completion:(id)completion;
- (void)verifiedIdentityForEmailOrPhone:(id)phone queue:(id)queue completion:(id)completion;
@end

@implementation SDAppleIDAgent

+ (id)sharedAgent
{
  if (qword_10098A190 != -1)
  {
    sub_1001E5050();
  }

  v3 = gSDAppleIDAgent;

  return v3;
}

- (id)myAccount
{
  if (self->_appleID)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v4 = [(SDAppleIDAgent *)selfCopy _accountForAppleID:self->_appleID];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)detailedDescription
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _detailedDescription = [(SDAppleIDAgent *)selfCopy _detailedDescription];
  objc_sync_exit(selfCopy);

  return _detailedDescription;
}

- (id)_detailedDescription
{
  NSAppendPrintF();
  v131 = 0;
  creationDate = self->_creationDate;
  NSAppendPrintF();
  v3 = v131;

  self->_agentEnabled;
  NSAppendPrintF();
  v4 = v3;

  pushEnvironment = self->_pushEnvironment;
  NSAppendPrintF();
  v5 = v4;

  if ([(SDAppleIDAgent *)self eduModeEnabled])
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  v94 = v6;
  NSAppendPrintF();
  v7 = v5;

  if (self->_agentEnabled)
  {
    v8 = [(SDAppleIDDatabaseManager *)self->_dbManager accountForAppleID:self->_appleID, v94];
    identity = [v8 identity];
    appleID = self->_appleID;
    NSAppendPrintF();
    v10 = v7;

    contactInfo = [v8 contactInfo];
    firstName = [contactInfo firstName];
    NSAppendPrintF();
    v12 = v10;

    contactInfo2 = [v8 contactInfo];
    lastName = [contactInfo2 lastName];
    NSAppendPrintF();
    v14 = v12;

    altDSID = [v8 altDSID];
    NSAppendPrintF();
    v15 = v14;

    validationRecord = [v8 validationRecord];
    data = [validationRecord data];
    if (data)
    {
      v18 = "yes";
    }

    else
    {
      v18 = "no";
    }

    v99 = v18;
    NSAppendPrintF();
    v19 = v15;

    validationRecord2 = [v8 validationRecord];
    altDSID2 = [validationRecord2 altDSID];
    NSAppendPrintF();
    v21 = v19;

    validationRecord3 = [v8 validationRecord];
    validStartDate = [validationRecord3 validStartDate];
    NSAppendPrintF();
    v23 = v21;

    validationRecord4 = [v8 validationRecord];
    suggestedValidDuration = [validationRecord4 suggestedValidDuration];
    NSAppendPrintF();
    v25 = v23;

    validationRecord5 = [v8 validationRecord];
    nextCheckDate = [validationRecord5 nextCheckDate];
    NSAppendPrintF();
    v27 = v25;

    validationRecord6 = [v8 validationRecord];
    if ([validationRecord6 needsUpdate])
    {
      v29 = "yes";
    }

    else
    {
      v29 = "no";
    }

    v104 = v29;
    NSAppendPrintF();
    v30 = v27;

    validationRecord7 = [v8 validationRecord];
    if ([validationRecord7 isInvalid])
    {
      v32 = "yes";
    }

    else
    {
      v32 = "no";
    }

    v105 = v32;
    NSAppendPrintF();
    v33 = v30;

    contactInfo3 = [v8 contactInfo];
    validatedEmailAddresses = [contactInfo3 validatedEmailAddresses];
    v106 = [validatedEmailAddresses componentsJoinedByString:{@", "}];
    NSAppendPrintF();
    v36 = v33;

    validationRecord8 = [v8 validationRecord];
    validatedEmailHashes = [validationRecord8 validatedEmailHashes];
    v107 = SFShortHashArrayDescription();
    NSAppendPrintF();
    v39 = v36;

    contactInfo4 = [v8 contactInfo];
    validatedPhoneNumbers = [contactInfo4 validatedPhoneNumbers];
    v108 = [validatedPhoneNumbers componentsJoinedByString:{@", "}];
    NSAppendPrintF();
    accountIdentifier2 = v39;

    validationRecord9 = [v8 validationRecord];
    validatedPhoneHashes = [validationRecord9 validatedPhoneHashes];
    v109 = SFShortHashArrayDescription();
    NSAppendPrintF();
    v45 = accountIdentifier2;

    privateKeyPersistentReference = [v8 privateKeyPersistentReference];
    v47 = "yes";
    if (!privateKeyPersistentReference)
    {
      v47 = "no";
    }

    v110 = v47;
    NSAppendPrintF();
    v48 = v45;

    privateKeyPersistentReference2 = [identity privateKeyPersistentReference];
    if (privateKeyPersistentReference2)
    {
      v50 = "yes";
    }

    else
    {
      v50 = "no";
    }

    v111 = v50;
    NSAppendPrintF();
    v51 = v48;

    certificatePersistentReference = [identity certificatePersistentReference];
    if (certificatePersistentReference)
    {
      v53 = "yes";
    }

    else
    {
      v53 = "no";
    }

    v112 = v53;
    NSAppendPrintF();
    v54 = v51;

    accountIdentifier = [identity accountIdentifier];
    NSAppendPrintF();
    v55 = v54;

    certificateExpirationDate = [identity certificateExpirationDate];
    NSAppendPrintF();
    v56 = v55;

    serialNumber = [identity serialNumber];
    NSAppendPrintF();
    v57 = v56;

    certificateToken = [v8 certificateToken];
    NSAppendPrintF();
    v58 = v57;

    validationRecord10 = [v8 validationRecord];

    if (validationRecord10 && identity)
    {
      validationRecord11 = [v8 validationRecord];
      altDSID3 = [validationRecord11 altDSID];

      if (altDSID3)
      {
        accountIdentifier2 = [identity accountIdentifier];
        if ([accountIdentifier2 hasSuffix:altDSID3])
        {
          v62 = "yes";
        }

        else
        {
          v62 = "no";
        }

        v117 = v62;
        NSAppendPrintF();
        v63 = v58;

        v58 = accountIdentifier2;
      }

      else
      {
        NSAppendPrintF();
        v63 = v58;
      }

      v58 = v63;
    }

    intermediateCertificatePersistentReference = [identity intermediateCertificatePersistentReference];
    if (intermediateCertificatePersistentReference)
    {
      v65 = "yes";
    }

    else
    {
      v65 = "no";
    }

    v118 = v65;
    NSAppendPrintF();
    v66 = v58;

    intermediateCertificateExpirationDate = [identity intermediateCertificateExpirationDate];
    NSAppendPrintF();
    v67 = v66;

    intermediateCertificateSerialNumber = [identity intermediateCertificateSerialNumber];
    NSAppendPrintF();
    v68 = v67;

    certificatePersistentReference2 = [identity certificatePersistentReference];
    if (certificatePersistentReference2)
    {
      accountIdentifier2 = [identity privateKeyPersistentReference];
      if (accountIdentifier2)
      {
        v70 = "yes";
      }

      else
      {
        v70 = "no";
      }
    }

    else
    {
      v70 = "no";
    }

    v121 = v70;
    NSAppendPrintF();
    v71 = v68;

    if (certificatePersistentReference2)
    {
    }

    if ([identity isInvalid])
    {
      v72 = "yes";
    }

    else
    {
      v72 = "no";
    }

    v122 = v72;
    NSAppendPrintF();
    v73 = v71;

    if ([identity needsRenewal])
    {
      v74 = "yes";
    }

    else
    {
      v74 = "no";
    }

    v123 = v74;
    NSAppendPrintF();
    v75 = v73;

    v76 = +[SDStatusMonitor sharedMonitor];
    if ([v76 deviceWasUnlockedOnce])
    {
      v77 = "yes";
    }

    else
    {
      v77 = "no";
    }

    v124 = v77;
    NSAppendPrintF();
    v78 = v75;

    if ([(SDAppleIDAgent *)self _wasOldAgentIdentityQueried])
    {
      v79 = "yes";
    }

    else
    {
      v79 = "no";
    }

    v125 = v79;
    NSAppendPrintF();
    v80 = v78;

    [(SDAppleIDAgent *)self _metaInfoValueForKey:@"OldAgentIdentityWasUsed", v125];
    v81 = CFGetInt64();
    if (v81)
    {
      v82 = "yes";
    }

    else
    {
      v82 = "no";
    }

    v126 = v82;
    NSAppendPrintF();
    v83 = v80;

    if (v81)
    {
      v126 = [(SDAppleIDAgent *)self _metaInfoValueForKey:@"OldAgentCertificateSN", v126];
      NSAppendPrintF();
      v84 = v83;

      v83 = v84;
    }

    v1262 = [(SDAppleIDAgent *)self _metaInfoValueForKey:@"LastSignInDate", v126];
    NSAppendPrintF();
    v85 = v83;

    v127 = [(SDAppleIDAgent *)self _metaInfoValueForKey:@"LastSignOutDate", v1262];
    NSAppendPrintF();
    v86 = v85;

    v128 = [(SDAppleIDAgent *)self _metaInfoValueForKey:@"LastSignOutAppleID", v127];
    NSAppendPrintF();
    v87 = v86;

    v129 = [(SDAppleIDAgent *)self _metaInfoValueForKey:@"LastAllGoodDate", v128];
    NSAppendPrintF();
    v88 = v87;

    _accountState = [(SDAppleIDAgent *)self _accountState];
    if (_accountState <= 0xE)
    {
      v90 = *(&off_1008D39E8 + _accountState);
    }

    NSAppendPrintF();
    v7 = v88;
  }

  return v7;
}

- (BOOL)eduModeEnabled
{
  if (qword_10098A188 != -1)
  {
    sub_1001E3D44();
  }

  return byte_10098A180;
}

- (int64_t)_accountState
{
  p_appleID = &self->_appleID;
  if (!self->_appleID)
  {
    if (dword_100972850 <= 50 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      sub_100022B5C();
    }

    v10 = 0;
    v7 = 0;
    v18 = 13;
    goto LABEL_15;
  }

  v4 = +[SDStatusMonitor sharedMonitor];
  deviceWasUnlockedOnce = [v4 deviceWasUnlockedOnce];

  if ((deviceWasUnlockedOnce & 1) == 0)
  {
    if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3D58();
    }

    v10 = 0;
    v7 = 0;
    v18 = 14;
    goto LABEL_15;
  }

  v6 = [(SDAppleIDAgent *)self _accountForAppleID:self->_appleID];
  if (!v6)
  {
    if (dword_100972850 <= 60 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E410C(p_appleID);
    }

    v10 = 0;
    v7 = 0;
    v18 = 9;
    goto LABEL_15;
  }

  v7 = v6;
  altDSID = [v6 altDSID];

  if (!altDSID)
  {
    if (dword_100972850 <= 60 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E40CC(p_appleID);
    }

    goto LABEL_50;
  }

  identity = [v7 identity];
  if (!identity)
  {
    if (self->_identityRequest)
    {
      if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E404C(p_appleID);
      }

      v10 = 0;
      v18 = 4;
      goto LABEL_15;
    }

    if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E408C(p_appleID);
    }

LABEL_50:
    v10 = 0;
    v18 = 10;
    goto LABEL_15;
  }

  v10 = identity;
  copyCertificate = [identity copyCertificate];
  if (copyCertificate)
  {
    v12 = copyCertificate;
    copyIntermediateCertificate = [v10 copyIntermediateCertificate];
    if (!copyIntermediateCertificate)
    {
      sub_1001E3F78(v12);
      v18 = 12;
      goto LABEL_15;
    }

    v14 = copyIntermediateCertificate;
    copyPrivateKey = [v10 copyPrivateKey];
    if (copyPrivateKey)
    {
      if ([v10 certificateExpired])
      {
        sub_1001E3E7C(&v20);
      }

      else if ([v10 isInvalid])
      {
        sub_1001E3DF8(p_appleID, &v20);
      }

      else
      {
        validationRecord = [v7 validationRecord];
        isInvalid = [validationRecord isInvalid];

        if (!isInvalid)
        {
          v18 = 1;
          goto LABEL_13;
        }

        sub_1001E3D74(p_appleID, &v20);
      }
    }

    else
    {
      sub_1001E3EF4(p_appleID, &v20);
    }

    v18 = v20;
LABEL_13:
    CFRelease(v12);
    CFRelease(v14);
    if (copyPrivateKey)
    {
      CFRelease(copyPrivateKey);
    }

    goto LABEL_15;
  }

  if (dword_100972850 <= 60 && (dword_100972850 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E400C(p_appleID);
  }

  v18 = 6;
LABEL_15:

  return v18;
}

- (void)handleUILockStatusChangedNotification
{
  obj = self;
  objc_sync_enter(obj);
  [(SDAppleIDAgent *)obj _handleUILockStatusChangedNotification];
  objc_sync_exit(obj);
}

- (void)_handleUILockStatusChangedNotification
{
  if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
  {
    sub_100023564();
  }

  [(SDAppleIDAgent *)self _handleUILockStatusChange];
}

- (void)_handleUILockStatusChange
{
  if (self->_agentEnabled)
  {
    v3 = +[SDStatusMonitor sharedMonitor];
    deviceWasUnlockedOnce = [v3 deviceWasUnlockedOnce];

    if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (deviceWasUnlockedOnce)
    {
      if (self->_throttledRetryTimer)
      {
        if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
        {

          LogPrintF();
        }
      }

      else
      {

        [(SDAppleIDAgent *)self _verifyState];
      }
    }
  }
}

- (void)_verifyState
{
  if (!self->_agentEnabled)
  {
LABEL_77:
    metaInfo = 0;
    goto LABEL_78;
  }

  sub_100023FA8();
  if (v5 ^ v6 | v4 && (v3 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v7 = +[SDStatusMonitor sharedMonitor];
  deviceWasUnlockedOnce = [v7 deviceWasUnlockedOnce];

  if ((deviceWasUnlockedOnce & 1) == 0)
  {
    sub_100023FA8();
    if (v5 ^ v6 | v4 && (v49 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_77;
  }

  if (self->_dbManager)
  {
    metaInfo = 0;
  }

  else
  {
    v10 = +[SDAppleIDDatabaseManager sharedManager];
    dbManager = self->_dbManager;
    self->_dbManager = v10;

    metaInfo = [(SDAppleIDDatabaseManager *)self->_dbManager metaInfo];
    v12 = +[NSMutableDictionary dictionary];
    agentMetaInfo = self->_agentMetaInfo;
    self->_agentMetaInfo = v12;

    v14 = self->_agentMetaInfo;
    if (!v14)
    {
LABEL_78:
      v16 = 0;
      goto LABEL_75;
    }

    if (metaInfo)
    {
      [(NSMutableDictionary *)v14 addEntriesFromDictionary:metaInfo];
    }
  }

  [(SDAppleIDAgent *)self _updateAppleID];
  if (!self->_appleID)
  {
    sub_100023FA8();
    if (!(v5 ^ v6 | v4) || v50 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_78;
    }

LABEL_53:
    LogPrintF();
    goto LABEL_78;
  }

  v15 = [(SDAppleIDDatabaseManager *)self->_dbManager accountForAppleID:?];
  if (!v15)
  {
    [(SDAppleIDDatabaseManager *)self->_dbManager addAppleID:self->_appleID];
    v15 = [(SDAppleIDDatabaseManager *)self->_dbManager accountForAppleID:self->_appleID];
    if (!v15)
    {
      sub_100023FA8();
      if (!(v5 ^ v6 | v4) || v51 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_78;
      }

      appleID = self->_appleID;
      goto LABEL_53;
    }
  }

  v16 = v15;
  [(SDAppleIDAgent *)self _cleanUpAccount:v15];
  identity = [v16 identity];

  if (!identity)
  {
    sub_100023FA8();
    if (v5 ^ v6 | v4 && (v52 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v43 = self->_appleID;
    certificateToken = [v16 certificateToken];
    privateKeyPersistentReference = [v16 privateKeyPersistentReference];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_1001E014C;
    v61[3] = &unk_1008CDF90;
    v61[4] = self;
    v46 = v61;
    goto LABEL_37;
  }

  identity2 = [v16 identity];
  if ([identity2 isInvalid])
  {

LABEL_19:
    sub_100023FA8();
    if (v5 ^ v6 | v4 && (v21 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v43 = self->_appleID;
    certificateToken = [v16 certificateToken];
    privateKeyPersistentReference = [v16 privateKeyPersistentReference];
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_1001E01CC;
    v60[3] = &unk_1008CDF90;
    v60[4] = self;
    v46 = v60;
LABEL_37:
    [(SDAppleIDAgent *)self _requestIdentityForAppleID:v43 certificateToken:certificateToken privateKeyPersistentReference:privateKeyPersistentReference withCompletion:v46];

    goto LABEL_75;
  }

  identity3 = [v16 identity];
  needsRenewal = [identity3 needsRenewal];

  if (needsRenewal)
  {
    goto LABEL_19;
  }

  identity4 = [v16 identity];
  v23 = [(SDAppleIDAgent *)self _performKeyVerificationForIdentity:identity4];

  if (!v23)
  {
    [(SDAppleIDAgent *)self _performKeychainCount];
    validationRecord = [v16 validationRecord];

    if (!validationRecord)
    {
      sub_100023FA8();
      if (v5 ^ v6 | v4 && (v54 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v47 = self->_appleID;
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_1001E024C;
      v59[3] = &unk_1008CDF90;
      v59[4] = self;
      v48 = v59;
      goto LABEL_40;
    }

    validationRecord2 = [v16 validationRecord];
    if ([validationRecord2 needsUpdate])
    {

LABEL_27:
      sub_100023FA8();
      if (v5 ^ v6 | v4 && (v28 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v47 = self->_appleID;
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_1001E02CC;
      v58[3] = &unk_1008CDF90;
      v58[4] = self;
      v48 = v58;
LABEL_40:
      [(SDAppleIDAgent *)self _requestInfoForAppleID:v47 completion:v48];
      goto LABEL_75;
    }

    validationRecord3 = [v16 validationRecord];
    isInvalid = [validationRecord3 isInvalid];

    if (isInvalid)
    {
      goto LABEL_27;
    }

    identity5 = [v16 identity];
    accountIdentifier = [identity5 accountIdentifier];
    if (accountIdentifier)
    {
      v31 = accountIdentifier;
      validationRecord4 = [v16 validationRecord];
      altDSID = [validationRecord4 altDSID];
      if (altDSID)
      {
        v34 = altDSID;
        [v16 identity];
        v35 = v57 = metaInfo;
        accountIdentifier2 = [v35 accountIdentifier];
        validationRecord5 = [v16 validationRecord];
        [validationRecord5 altDSID];
        v38 = v56 = identity5;
        v39 = [accountIdentifier2 hasSuffix:v38];

        metaInfo = v57;
        if (v39)
        {
          validationRecord6 = [v16 validationRecord];
          data = [validationRecord6 data];
          dispatchQueue = self->_dispatchQueue;
          v16 = v16;
          SFAppleIDParseValidationRecordData();

          goto LABEL_75;
        }

        goto LABEL_70;
      }
    }

LABEL_70:
    if (dword_100972850 <= 60 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(SDAppleIDAgent *)self _handleAccountIdentifierValidationRecordMismatch];
    goto LABEL_75;
  }

  sub_100023FA8();
  if (v5 ^ v6 | v4 && (v53 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [(SDAppleIDAgent *)self _handleKeyVerificationFailure];
LABEL_75:
}

- (void)_updateAppleID
{
  v3 = +[SDStatusMonitor sharedMonitor];
  obj = [v3 myAppleID];

  p_appleID = &self->_appleID;
  appleID = self->_appleID;
  if (appleID)
  {
    v6 = 1;
  }

  else
  {
    v6 = obj == 0;
  }

  if (!v6 || ![(NSString *)appleID isEqualToString:?])
  {
    if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      v7 = *p_appleID;
      LogPrintF();
    }

    if (*p_appleID)
    {
      [(SDAppleIDAgent *)self _clearAccount];
    }

    objc_storeStrong(&self->_appleID, obj);
  }

  _objc_release_x2();
}

- (SDAppleIDAgent)init
{
  v13.receiver = self;
  v13.super_class = SDAppleIDAgent;
  v2 = [(SDAppleIDAgent *)&v13 init];
  if (v2)
  {
    v3 = +[NSDate date];
    creationDate = v2->_creationDate;
    v2->_creationDate = v3;

    v5 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v5;

    v7 = +[NSMutableArray array];
    findPersonRequests = v2->_findPersonRequests;
    v2->_findPersonRequests = v7;

    v9 = [NSSet setWithArray:&off_100910298];
    blocklistedCertificateDigests = v2->_blocklistedCertificateDigests;
    v2->_blocklistedCertificateDigests = v9;

    pushEnvironment = v2->_pushEnvironment;
    v2->_pushEnvironment = @"production";
  }

  return v2;
}

- (void)dealloc
{
  if (self->_pushConnection)
  {
    sub_1001E3D2C();
    sub_1001DBC1C(v2);
  }

  else
  {
    v3.receiver = self;
    v3.super_class = SDAppleIDAgent;
    [(SDAppleIDAgent *)&v3 dealloc];
  }
}

- (void)_activate
{
  if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E414C();
  }

  [(SDAppleIDAgent *)self _prefsChanged];
  [(SDAppleIDAgent *)self _addObservers];
  [(SDAppleIDAgent *)self _ensurePushStarted];
  [(SDAppleIDAgent *)self _ensurePeriodicVerifyTimerStarted];

  [(SDAppleIDAgent *)self _ensureEduModeDevicesAreCleanedUp];
}

- (void)_addObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"handleAppleIDSignedInNotification" name:@"com.apple.sharingd.AppleAccountSignIn" object:0];
  [v3 addObserver:self selector:"handleAppleIDSignedOutNotification" name:@"com.apple.sharingd.AppleAccountSignOut" object:0];
  [v3 addObserver:self selector:"handleAppleIDChangedNotification" name:@"com.apple.sharingd.AppleIDChanged" object:0];
  [v3 addObserver:self selector:"handleUILockStatusChangedNotification" name:@"com.apple.sharingd.UILockStatusChanged" object:0];
  [v3 addObserver:self selector:"handleKeyBagFirstUnlockNotification" name:@"com.apple.sharingd.KeyBagFirstUnlock" object:0];
}

- (void)_invalidate
{
  [(SDAppleIDAgent *)self _removeObservers];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_findPersonRequests;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v16 + 1) + 8 * i) invalidate];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_findPersonRequests removeAllObjects];
  identityRequest = self->_identityRequest;
  if (identityRequest)
  {
    [(SDAppleIDIdentityRequest *)identityRequest invalidate];
    v9 = self->_identityRequest;
    self->_identityRequest = 0;
  }

  infoRequest = self->_infoRequest;
  if (infoRequest)
  {
    [(SDAppleIDServerTask *)infoRequest invalidate];
    v11 = self->_infoRequest;
    self->_infoRequest = 0;
  }

  testIdentityRequest = self->_testIdentityRequest;
  if (testIdentityRequest)
  {
    [(SDAppleIDIdentityRequest *)testIdentityRequest invalidate];
    v13 = self->_testIdentityRequest;
    self->_testIdentityRequest = 0;

    if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E4168();
    }
  }

  [(SDAppleIDAgent *)self _ensurePushStopped];
  [(SDAppleIDAgent *)self _ensurePeriodicVerifyTimerStopped];
  [(SDAppleIDAgent *)self _ensureThrottledRetryTimerStopped];
  task = self->_task;
  if (task)
  {
    [(SDAppleIDServerTask *)task invalidate];
    v15 = self->_task;
    self->_task = 0;

    if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E419C();
    }
  }
}

- (void)_clearAccount
{
  identityRequest = self->_identityRequest;
  if (identityRequest)
  {
    [(SDAppleIDIdentityRequest *)identityRequest invalidate];
    v4 = self->_identityRequest;
    self->_identityRequest = 0;
  }

  infoRequest = self->_infoRequest;
  if (infoRequest)
  {
    [(SDAppleIDServerTask *)infoRequest invalidate];
    v6 = self->_infoRequest;
    self->_infoRequest = 0;
  }

  [(SDAppleIDDatabaseManager *)self->_dbManager removeAppleID:self->_appleID];
  [(SDAppleIDDatabaseManager *)self->_dbManager clearPersonInfoCache];
  [(SDAppleIDAgent *)self _ensureThrottledRetryTimerStopped];

  sub_1001BB994();
}

- (__SecIdentity)_copyIdentityForAppleID:(id)d
{
  v3 = [(SDAppleIDDatabaseManager *)self->_dbManager identityForAppleID:d];
  copyIdentity = [v3 copyIdentity];

  return copyIdentity;
}

- (void)_ensurePushStarted
{
  if (!self->_pushConnection)
  {
    if (self->_agentEnabled)
    {
      v3 = [(NSString *)self->_pushEnvironment isEqualToString:@"production"];
      v4 = &off_1009728C8;
      if (!v3)
      {
        v4 = &off_1009728D0;
      }

      v5 = (*v4)();
      v6 = [objc_alloc(off_1009728D8()) initWithEnvironmentName:v5 namedDelegatePort:@"com.apple.coreservices.appleid.aps" queue:self->_dispatchQueue];
      pushConnection = self->_pushConnection;
      self->_pushConnection = v6;

      [(APSConnection *)self->_pushConnection setDelegate:self];
      v8 = self->_pushConnection;
      v10 = @"com.apple.idmsauthagent";
      v9 = [NSArray arrayWithObjects:&v10 count:1];
      [(APSConnection *)v8 setEnabledTopics:v9];

      [(APSConnection *)self->_pushConnection requestTokenForTopic:@"com.apple.idmsauthagent" identifier:0];
      if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E4230();
      }
    }

    else
    {
      sub_1001E41D0();
    }
  }
}

- (void)_checkIfAppleIDCertificateChainIsValidForIdentity:(id)identity completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  if (identityCopy)
  {
    v8 = 201203;
    copyCertificate = [identityCopy copyCertificate];
    copyIntermediateCertificate = [identityCopy copyIntermediateCertificate];
    v11 = copyIntermediateCertificate;
    if (copyCertificate)
    {
      if (copyIntermediateCertificate)
      {
        v24[0] = copyCertificate;
        v24[1] = copyIntermediateCertificate;
        v12 = [NSArray arrayWithObjects:v24 count:2];
        dispatchQueue = self->_dispatchQueue;
        v18 = _NSConcreteStackBlock;
        v19 = 3221225472;
        v20 = sub_1001DC420;
        v21 = &unk_1008D3700;
        selfCopy = self;
        v23 = completionCopy;
        SFAppleIDVerifyCertificateChain();

LABEL_5:
        CFRelease(copyCertificate);
        goto LABEL_6;
      }

      v8 = 201222;
    }
  }

  else
  {
    copyCertificate = 0;
    v11 = 0;
    v8 = -6705;
  }

  if (completionCopy)
  {
    v14 = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001DC494;
    block[3] = &unk_1008D0BE0;
    v16 = completionCopy;
    v17 = v8;
    dispatch_async(v14, block);
  }

  if (copyCertificate)
  {
    goto LABEL_5;
  }

LABEL_6:
  if (v11)
  {
    CFRelease(v11);
  }
}

- (BOOL)_isCertificateBlocklisted:(id)blocklisted
{
  copyCertificate = [blocklisted copyCertificate];
  if (copyCertificate)
  {
    v5 = SecCertificateCopyIssuerSHA256Digest();
    CFRelease(copyCertificate);
    if (v5)
    {
      v6 = objc_opt_new();
      bytes = [v5 bytes];
      if ([v5 length])
      {
        v8 = 0;
        do
        {
          [v6 appendFormat:@"%02x", bytes[v8++]];
        }

        while (v8 < [v5 length]);
      }

      if ([v6 length] <= 0xF)
      {
        v9 = v6;
      }

      else
      {
        v9 = [v6 substringToIndex:16];
      }

      copyCertificate = v9;

      if (copyCertificate && [(NSSet *)self->_blocklistedCertificateDigests containsObject:copyCertificate])
      {
        if (dword_100972850 <= 50 && (dword_100972850 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E4270();
        }

        v10 = 1;
        goto LABEL_21;
      }
    }

    else
    {
      copyCertificate = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  if (dword_100972850 <= 50 && (dword_100972850 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E42B0();
  }

  v10 = 0;
LABEL_21:

  return v10;
}

- (void)_ensurePushStopped
{
  pushConnection = self->_pushConnection;
  if (pushConnection)
  {
    [(APSConnection *)pushConnection shutdown];
    [(APSConnection *)self->_pushConnection setDelegate:0];
    v4 = self->_pushConnection;
    self->_pushConnection = 0;

    if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E4430();
    }
  }
}

- (void)_handleAccountIdentifierValidationRecordMismatch
{
  if (self->_appleID)
  {
    [(SDAppleIDAgent *)self _setCurrentAppleIDIdentity:0];
    [(SDAppleIDAgent *)self _setCurrentAppleIDContactInfo:0 validationRecord:0];

    [(SDAppleIDAgent *)self _verifyStateWithDelay:30.0];
  }

  else
  {
    sub_1001E444C();
  }
}

- (void)_handleAppleIDChangedNotification
{
  if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E44AC();
  }

  [(SDAppleIDAgent *)self _verifyStateWithDelay:15.0];
}

- (void)_handleCertificateStatusUpdate:(int64_t)update forAppleID:(id)d
{
  dCopy = d;
  if (([dCopy isEqualToString:self->_appleID] & 1) == 0)
  {
    sub_1001E44C8(dCopy, &v11);
LABEL_28:
    v7 = v11;
    goto LABEL_18;
  }

  v6 = [(SDAppleIDDatabaseManager *)self->_dbManager accountForAppleID:dCopy];
  if (!v6)
  {
    sub_1001E463C(dCopy, &v11);
    goto LABEL_28;
  }

  v7 = v6;
  if (update > 2)
  {
    if ((update - 3) >= 3)
    {
LABEL_21:
      if (dword_100972850 <= 60 && (dword_100972850 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E45DC(update);
      }

      goto LABEL_18;
    }

    v8 = 0;
  }

  else
  {
    if (update)
    {
      if (update == 1)
      {
        goto LABEL_18;
      }

      if (update == 2)
      {
        if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E4548();
        }

        goto LABEL_18;
      }

      goto LABEL_21;
    }

    v8 = +[AKURLBag sharedBag];
    [v8 IDMSEnvironment];
    altDSID = [v7 altDSID];
    SFMetricsLogUnexpectedEvent();
  }

  if (dword_100972850 <= 60 && (dword_100972850 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E4590(update);
  }

  [(SDAppleIDAgent *)self _setCurrentAppleIDIdentity:0];

LABEL_18:
}

- (void)_handleAltDSIDLookupResponse:(id)response requestError:(id)error serverTask:(id)task completion:(id)completion
{
  responseCopy = response;
  errorCopy = error;
  taskCopy = task;
  completionCopy = completion;
  if (dword_100972850 > 30 || dword_100972850 == -1 && !_LogCategory_Initialize())
  {
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_1001E46BC();
  if (completionCopy)
  {
LABEL_5:
    completionCopy[2](completionCopy, responseCopy, errorCopy);
  }

LABEL_6:
  [taskCopy invalidate];
  [(NSMutableArray *)self->_altDSIDRequests removeObject:taskCopy];
}

- (void)_handleInfoResponse:(id)response forAppleID:(id)d infoRequest:(id)request certificateSerialNumber:(id)number withError:(id)error completion:(id)completion
{
  responseCopy = response;
  dCopy = d;
  requestCopy = request;
  numberCopy = number;
  errorCopy = error;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v37 = requestCopy;
  if (!dCopy)
  {
    goto LABEL_40;
  }

  if (errorCopy)
  {
    v27 = errorCopy;
    v20 = 0;
LABEL_36:
    v22 = 0;
LABEL_37:
    v24 = 0;
    goto LABEL_12;
  }

  if (!responseCopy)
  {
LABEL_40:
    sub_1001E47EC();
    v20 = 0;
    v22 = 0;
    goto LABEL_46;
  }

  if (self->_infoRequest != requestCopy)
  {
    if (dword_100972850 <= 60 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E46FC();
    }

    v20 = 0;
    v22 = 0;
    v27 = 0;
    goto LABEL_37;
  }

  if (!numberCopy || ([numberCopy isEqualToString:&stru_1008EFBD0] & 1) != 0)
  {
    v20 = 0;
    goto LABEL_8;
  }

  CFStringGetTypeID();
  v29 = CFDictionaryGetTypedValue();
  v20 = v29;
  if (v29 && ([v29 isEqualToString:numberCopy] & 1) == 0)
  {
    if (dword_100972850 <= 60 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      v35 = v20;
      v36 = numberCopy;
      LogPrintF();
    }

    v41 = NSLocalizedDescriptionKey;
    v31 = [NSString stringWithUTF8String:DebugGetErrorString()];
    v32 = v31;
    v33 = @"?";
    if (v31)
    {
      v33 = v31;
    }

    v42 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1, v35, v36];
    v27 = [NSError errorWithDomain:NSOSStatusErrorDomain code:201207 userInfo:v34];

    goto LABEL_36;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (Int64Ranged << 32)
  {
    v21 = Int64Ranged;
    goto LABEL_9;
  }

  if (dword_100972850 <= 60 && (dword_100972850 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E4718();
  }

LABEL_8:
  v21 = 0;
LABEL_9:
  [(SDAppleIDAgent *)self _handleCertificateStatusUpdate:v21 forAppleID:dCopy];
  v22 = [[SFAppleIDContactInfo alloc] initWithDictionary:responseCopy];
  if (v22)
  {
    v23 = [[SFAppleIDValidationRecord alloc] initWithDictionary:responseCopy];
    v24 = v23;
    if (v23)
    {
      data = [v23 data];
      dispatchQueue = self->_dispatchQueue;
      v38 = dCopy;
      v24 = v24;
      v22 = v22;
      v39 = completionCopy;
      errorCopy = 0;
      SFAppleIDParseValidationRecordData();

      v27 = 0;
      goto LABEL_12;
    }

    sub_1001E4734();
    goto LABEL_48;
  }

  sub_1001E4734();
LABEL_46:
  v24 = 0;
LABEL_48:
  v27 = v40;
LABEL_12:
  [(SDAppleIDServerTask *)self->_infoRequest invalidate];
  infoRequest = self->_infoRequest;
  self->_infoRequest = 0;

  if (v27)
  {
    if (dword_100972850 <= 90 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E48A4();
      if (!completionCopy)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (completionCopy)
    {
LABEL_17:
      (*(completionCopy + 2))(completionCopy, v27);
    }
  }

LABEL_18:
}

- (void)_handleKeyBagFirstUnlockNotification
{
  if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E48E4();
  }

  [(SDAppleIDAgent *)self _handleUILockStatusChange];
}

- (void)_handleKeyVerificationFailure
{
  if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E4900();
  }

  [(SDAppleIDAgent *)self _setCurrentAppleIDIdentity:0];
  [(SDAppleIDAgent *)self _setCurrentAppleIDContactInfo:0 validationRecord:0];

  [(SDAppleIDAgent *)self _verifyStateWithDelay:30.0];
}

- (void)_clearIdentityState:(id)state
{
  stateCopy = state;
  v4 = [(SDAppleIDDatabaseManager *)self->_dbManager accountForAppleID:self->_appleID];
  v5 = v4;
  if (v4)
  {
    identity = [v4 identity];

    if (identity)
    {
      identity2 = [v5 identity];
      v8 = [identity2 isEqual:stateCopy];

      if (v8)
      {
        [(SDAppleIDAgent *)self _setCurrentAppleIDIdentity:0];
        [(SDAppleIDAgent *)self _verifyState];
      }
    }

    else
    {
      sub_1001E491C(&self->_appleID);
    }
  }

  else
  {
    sub_1001E499C(&self->_appleID);
  }
}

- (void)_handleReceivedIdentity:(id)identity forAppleID:(id)d identityRequest:(id)request withError:(id)error completion:(id)completion
{
  identityCopy = identity;
  dCopy = d;
  requestCopy = request;
  errorCopy = error;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (errorCopy)
  {
    v17 = errorCopy;
  }

  else
  {
    if (identityCopy)
    {
      if ([dCopy isEqualToString:self->_appleID])
      {
        if (self->_identityRequest == requestCopy)
        {
          [(SDAppleIDDatabaseManager *)self->_dbManager setCertificateToken:0 privateKeyPersistentReference:0 forAppleID:dCopy];
          [(SDAppleIDAgent *)self _setCurrentAppleIDIdentity:identityCopy];
          v17 = 0;
          goto LABEL_6;
        }

        sub_1001E4AD4(&v19);
      }

      else
      {
        sub_1001E4A1C();
      }
    }

    else
    {
      sub_1001E47EC();
    }

    v17 = v19;
  }

LABEL_6:
  [(SDAppleIDIdentityRequest *)self->_identityRequest invalidate];
  identityRequest = self->_identityRequest;
  self->_identityRequest = 0;

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v17);
  }
}

- (void)_handlePeriodicVerifyTimerFired
{
  if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E4B48();
  }

  if (self->_throttledRetryTimer)
  {
    sub_1001E4B64();
  }

  else
  {

    [(SDAppleIDAgent *)self _verifyState];
  }
}

- (void)_handleThrottledRetryTimerFired
{
  if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E4BC4();
  }

  [(SDAppleIDAgent *)self _ensureThrottledRetryTimerStopped];

  [(SDAppleIDAgent *)self _verifyState];
}

- (unint64_t)_keychainCleanupTag
{
  [(SDAppleIDAgent *)self _metaInfoValueForKey:@"KeychainCleanupTag"];

  return CFGetInt64();
}

- (int)_performKeyVerificationForIdentity:(id)identity
{
  identityCopy = identity;
  if (identityCopy)
  {
    v5 = [(SDAppleIDAgent *)self _metaInfoValueForKey:@"LastKeyVerificationDate"];
    v6 = +[NSDate date];
    v7 = v6;
    if (v5 && ([v6 timeIntervalSinceDate:v5], v8 <= 86400.0))
    {
      if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E4BE0();
      }

      verifyKeys = 0;
    }

    else
    {
      mach_absolute_time();
      verifyKeys = [identityCopy verifyKeys];
      mach_absolute_time();
      if (verifyKeys)
      {
        if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E4C20();
        }

        altDSID = [identityCopy altDSID];
        SFMetricsLogUnexpectedEvent();
      }

      v16[0] = &off_10090BF10;
      v15[0] = @"operation";
      v15[1] = @"durationMs";
      v11 = [NSNumber numberWithUnsignedLongLong:UpTicksToMilliseconds()];
      v16[1] = v11;
      v15[2] = @"success";
      v12 = [NSNumber numberWithInt:verifyKeys == 0];
      v16[2] = v12;
      v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
      SFMetricsLog();

      [(SDAppleIDAgent *)self _setMetaInfoValue:v7 forKey:@"LastKeyVerificationDate"];
    }
  }

  else
  {
    if (dword_100972850 <= 60 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E4C60();
    }

    verifyKeys = 0;
    v5 = 0;
    v7 = 0;
  }

  return verifyKeys;
}

- (void)_performOtherTaskWithInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v8 = [infoCopy objectForKeyedSubscript:@"requestType"];
  if (![v8 isEqualToString:@"createAndFetchCert"])
  {
    if ([v8 isEqualToString:@"triggerPush"])
    {
      if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E4D10();
      }

      dispatchQueue = self->_dispatchQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001DE1C0;
      block[3] = &unk_1008CE708;
      block[4] = self;
      v37 = completionCopy;
      dispatch_async(dispatchQueue, block);
      v18 = v37;
    }

    else if ([v8 isEqualToString:@"triggerVerify"])
    {
      if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E4CF4();
      }

      [(SDAppleIDAgent *)self _handlePeriodicVerifyTimerFired];
      if (!completionCopy)
      {
        goto LABEL_25;
      }

      v19 = self->_dispatchQueue;
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_1001DE228;
      v34[3] = &unk_1008D08E0;
      v35 = completionCopy;
      dispatch_async(v19, v34);
      v18 = v35;
    }

    else
    {
      if (![v8 isEqualToString:@"removeAppleID"])
      {
        if ([v8 isEqualToString:@"setMetaInfo"])
        {
          if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
          {
            sub_1001E4CBC();
          }

          v21 = [infoCopy objectForKeyedSubscript:@"key"];
          if (v21)
          {
            v16 = v21;
            v15 = [infoCopy objectForKeyedSubscript:@"value"];
            v22 = +[NSNull null];
            v23 = [v15 isEqual:v22];

            if (v23)
            {

              v15 = 0;
            }

            [(SDAppleIDAgent *)self _setMetaInfoValue:v15 forKey:v16];
            if (completionCopy)
            {
              v24 = self->_dispatchQueue;
              v30[0] = _NSConcreteStackBlock;
              v30[1] = 3221225472;
              v30[2] = sub_1001DE260;
              v30[3] = &unk_1008D08E0;
              v31 = completionCopy;
              dispatch_async(v24, v30);
            }

            goto LABEL_26;
          }
        }

        else if (dword_100972850 <= 90 && (dword_100972850 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E4C7C();
        }

        v9 = 0;
LABEL_41:
        v25 = -6705;
        if (!completionCopy)
        {
LABEL_43:
          v15 = 0;
          v16 = 0;
          v14 = 0;
          goto LABEL_27;
        }

LABEL_42:
        v26 = self->_dispatchQueue;
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_1001DE27C;
        v27[3] = &unk_1008D0BE0;
        v28 = completionCopy;
        v29 = v25;
        dispatch_async(v26, v27);

        goto LABEL_43;
      }

      if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E4CD8();
      }

      [(SDAppleIDAgent *)self _clearAccount];
      if (!completionCopy)
      {
LABEL_25:
        v15 = 0;
        v16 = 0;
LABEL_26:
        v14 = 0;
        v9 = 0;
        goto LABEL_27;
      }

      v20 = self->_dispatchQueue;
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1001DE244;
      v32[3] = &unk_1008D08E0;
      v33 = completionCopy;
      dispatch_async(v20, v32);
      v18 = v33;
    }

    goto LABEL_25;
  }

  v9 = [infoCopy objectForKeyedSubscript:@"appleID"];
  if (!v9)
  {
    goto LABEL_41;
  }

  p_testIdentityRequest = &self->_testIdentityRequest;
  testIdentityRequest = self->_testIdentityRequest;
  if (testIdentityRequest)
  {
    [(SDAppleIDIdentityRequest *)testIdentityRequest invalidate];
    v12 = *p_testIdentityRequest;
    *p_testIdentityRequest = 0;
  }

  v13 = [[SDAppleIDIdentityRequest alloc] initWithAppleID:v9];
  if (!v13)
  {
    v25 = -6728;
    if (!completionCopy)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v14 = v13;
  [(SDAppleIDIdentityRequest *)v13 setDispatchQueue:self->_dispatchQueue];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1001DE124;
  v38[3] = &unk_1008D3750;
  v38[4] = self;
  v39 = completionCopy;
  [(SDAppleIDIdentityRequest *)v14 setResponseHandler:v38];
  objc_storeStrong(&self->_testIdentityRequest, v14);
  [(SDAppleIDIdentityRequest *)self->_testIdentityRequest activate];

  v15 = 0;
  v16 = 0;
LABEL_27:
}

- (void)_performServerTaskWithInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v42 = infoCopy;
  v43 = [infoCopy objectForKeyedSubscript:@"requestType"];
  if ([v43 isEqualToString:@"createCert"])
  {
    v7 = [infoCopy objectForKeyedSubscript:@"appleID"];
    if (v7)
    {
      v8 = dispatch_semaphore_create(0);
      if (v8)
      {
        v9 = v8;
        v10 = dispatch_get_global_queue(0, 0);
        v52[2] = _NSConcreteStackBlock;
        v52[3] = 3221225472;
        v52[4] = sub_1001DED4C;
        v52[5] = &unk_1008D3778;
        v52[7] = &v61;
        v52[8] = &v57;
        v52[9] = &v53;
        v11 = v9;
        v52[6] = v11;
        SFAppleIDCreateKeyPair();

        v12 = dispatch_time(0, 15000000000);
        if (dispatch_semaphore_wait(v11, v12))
        {
          if (dword_100972850 <= 50 && (dword_100972850 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          goto LABEL_6;
        }

        v13 = v62;
        if (*(v62 + 6))
        {
LABEL_6:
          v39 = 0;
          v40 = 0;
          v37 = 0;
          v38 = 0;
          v14 = 0;
          v15 = 0;
          v41 = 0;
          v16 = 0;
LABEL_24:
          v20 = 0;
          v18 = 0;
          goto LABEL_36;
        }

        if (v54[3] && v58[3])
        {
          v52[1] = 0;
          v24 = SFAppleIDCreateCertificateRequestPEMStringForKeyPair();
          v25 = 0;
          v16 = v25;
          v13 = v62;
          *(v62 + 6) = v24;
          if (v24)
          {
            v39 = 0;
            v40 = 0;
            v37 = 0;
            v38 = 0;
            v14 = 0;
            v15 = 0;
            v41 = 0;
            goto LABEL_24;
          }

          if (v25)
          {
            v69 = @"csr";
            v70 = v25;
            v14 = [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
            v39 = 0;
            v40 = 0;
            v37 = 0;
            v38 = 0;
            v19 = 0;
            v15 = 0;
            v41 = 0;
            v20 = 0;
LABEL_32:
            v18 = 0;
            goto LABEL_33;
          }

          v39 = 0;
          v40 = 0;
          v37 = 0;
          v38 = 0;
          v14 = 0;
          v15 = 0;
          v41 = 0;
        }

        else
        {
          v39 = 0;
          v40 = 0;
          v37 = 0;
          v38 = 0;
          v14 = 0;
          v15 = 0;
          v41 = 0;
          v16 = 0;
        }

        v20 = 0;
        v18 = 0;
        goto LABEL_64;
      }

      v39 = 0;
      v40 = 0;
      v37 = 0;
      v38 = 0;
      v14 = 0;
      v11 = 0;
      v15 = 0;
      v41 = 0;
      v16 = 0;
      v20 = 0;
      v18 = 0;
      v13 = v62;
      v36 = -6728;
LABEL_53:
      *(v13 + 6) = v36;
      goto LABEL_36;
    }

    goto LABEL_57;
  }

  if (![v43 isEqualToString:@"fetchCert"])
  {
    if ([v43 isEqualToString:@"getMyInfo"])
    {
      v7 = [infoCopy objectForKeyedSubscript:@"appleID"];
      if (v7)
      {
        v20 = [infoCopy objectForKeyedSubscript:@"certificateSN"];
        v21 = [infoCopy objectForKeyedSubscript:@"vrid"];
        v15 = v21;
        if (v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = &stru_1008EFBD0;
        }

        v65[0] = @"serialNumber";
        v65[1] = @"clientAidvrId";
        if (v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = &stru_1008EFBD0;
        }

        v66[0] = v22;
        v66[1] = v23;
        v19 = 2;
        v14 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:2];
        v39 = 0;
        v40 = 0;
        v37 = 0;
        v38 = 0;
        v11 = 0;
        v41 = 0;
        v16 = 0;
        goto LABEL_32;
      }

      goto LABEL_57;
    }

    if ([v43 isEqualToString:@"findPerson"])
    {
      v41 = [infoCopy objectForKeyedSubscript:@"emails"];
      v26 = [infoCopy objectForKeyedSubscript:@"phones"];
      v40 = v26;
      if (__PAIR128__(v41, v26) != 0)
      {
        v39 = +[NSMutableDictionary dictionary];
        if (v41)
        {
          v52[0] = 0;
          v27 = sub_100004E00(v41, 0, v52);
          v28 = v52[0];
          v13 = v62;
          *(v62 + 6) = v27;
          v38 = v28;
          if (v27)
          {
            v37 = 0;
LABEL_48:
            v14 = 0;
            v11 = 0;
            v15 = 0;
            v16 = 0;
            v20 = 0;
            v18 = 0;
            v7 = 0;
            goto LABEL_36;
          }

          if (!v28)
          {
            v37 = 0;
            v38 = 0;
            goto LABEL_71;
          }

          [v39 setObject:v28 forKeyedSubscript:@"emails"];
        }

        else
        {
          v38 = 0;
        }

        if (!v40)
        {
          v37 = 0;
LABEL_56:
          v7 = self->_appleID;
          v14 = v39;
          v11 = 0;
          v15 = 0;
          v16 = 0;
          v20 = 0;
          v18 = 0;
          v19 = 3;
          v39 = v14;
          goto LABEL_33;
        }

        v51 = 0;
        v34 = sub_100004E00(v40, 0, &v51);
        v35 = v51;
        v13 = v62;
        *(v62 + 6) = v34;
        v37 = v35;
        if (v34)
        {
          goto LABEL_48;
        }

        if (v35)
        {
          [v39 setObject:v35 forKeyedSubscript:@"phones"];
          goto LABEL_56;
        }

        v37 = 0;
LABEL_71:
        v14 = 0;
        v11 = 0;
        v15 = 0;
        v16 = 0;
        v20 = 0;
        v18 = 0;
        v7 = 0;
LABEL_64:
        v36 = -6762;
        goto LABEL_53;
      }
    }

    else if (dword_100972850 <= 90 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v39 = 0;
    v40 = 0;
    v37 = 0;
    v38 = 0;
    v14 = 0;
    v11 = 0;
    v15 = 0;
    v41 = 0;
    v16 = 0;
    v20 = 0;
    v18 = 0;
    v7 = 0;
LABEL_52:
    v13 = v62;
    v36 = -6705;
    goto LABEL_53;
  }

  v7 = [infoCopy objectForKeyedSubscript:@"appleID"];
  if (!v7)
  {
LABEL_57:
    v39 = 0;
    v40 = 0;
    v37 = 0;
    v38 = 0;
    v14 = 0;
    v11 = 0;
    v15 = 0;
    v41 = 0;
    v16 = 0;
    v20 = 0;
    v18 = 0;
    goto LABEL_52;
  }

  v17 = [infoCopy objectForKeyedSubscript:@"certificateToken"];
  v18 = v17;
  if (!v17)
  {
    v39 = 0;
    v40 = 0;
    v37 = 0;
    v38 = 0;
    v14 = 0;
    v11 = 0;
    v15 = 0;
    v41 = 0;
    v16 = 0;
    v20 = 0;
    goto LABEL_52;
  }

  v67 = @"certificateToken";
  v68 = v17;
  v19 = 1;
  v14 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  v11 = 0;
  v15 = 0;
  v41 = 0;
  v16 = 0;
  v20 = 0;
LABEL_33:
  task = self->_task;
  if (task)
  {
    [(SDAppleIDServerTask *)task invalidate];
    v30 = self->_task;
    self->_task = 0;
  }

  v31 = [[SDAppleIDServerTask alloc] initWithType:v19 appleID:v7 info:v14];
  v32 = self->_task;
  self->_task = v31;

  [(SDAppleIDServerTask *)self->_task setDispatchQueue:self->_dispatchQueue];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_1001E3688;
  v48[3] = &unk_1008D37A0;
  v48[4] = self;
  v50 = v19;
  v49 = completionCopy;
  [(SDAppleIDServerTask *)self->_task setResponseHandler:v48];

  [(SDAppleIDServerTask *)self->_task activate];
  *(v62 + 6) = 0;
LABEL_36:
  if (completionCopy && *(v62 + 6))
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001DED78;
    block[3] = &unk_1008D0BB8;
    v46 = completionCopy;
    v47 = &v61;
    dispatch_async(dispatchQueue, block);
  }

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);

  _Block_object_dispose(&v61, 8);
}

- (void)_altDSIDLookupWithEmails:(id)emails phoneNumbers:(id)numbers completion:(id)completion
{
  emailsCopy = emails;
  numbersCopy = numbers;
  completionCopy = completion;
  if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
  {
    v17 = emailsCopy;
    v18 = numbersCopy;
    LogPrintF();
  }

  if (emailsCopy)
  {
    v11 = emailsCopy;
  }

  else
  {
    v11 = &__NSArray0__struct;
  }

  v22[0] = @"emails";
  v22[1] = @"phones";
  if (numbersCopy)
  {
    v12 = numbersCopy;
  }

  else
  {
    v12 = &__NSArray0__struct;
  }

  v23[0] = v11;
  v23[1] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2, v17, v18];
  v14 = [[SDAppleIDServerTask alloc] initWithType:4 appleID:self->_appleID info:v13];
  [(SDAppleIDServerTask *)v14 setDispatchQueue:self->_dispatchQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001DF0EC;
  v19[3] = &unk_1008D37C8;
  v19[4] = self;
  v20 = v14;
  v21 = completionCopy;
  v15 = completionCopy;
  v16 = v14;
  [(SDAppleIDServerTask *)v16 setResponseHandler:v19];
  [(NSMutableArray *)self->_altDSIDRequests addObject:v16];
  [(SDAppleIDServerTask *)v16 activate];
}

- (void)_prefsChanged
{
  if ([(SDAppleIDAgent *)self eduModeEnabled])
  {
    if (dword_100972850 <= 40 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E4D2C();
    }

    v3 = 0;
  }

  else
  {
    v3 = CFPrefs_GetInt64() != 0;
  }

  if (self->_agentEnabled != v3)
  {
    if (dword_100972850 <= 40 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E4D4C();
    }

    self->_agentEnabled = v3;
    *&self->_updatePush = 257;
  }

  v4 = CFPrefs_GetInt64() != 0;
  if (self->_linkIdentityEnabled != v4)
  {
    if (dword_100972850 <= 40 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E4DA8();
    }

    self->_linkIdentityEnabled = v4;
    self->_updatePeriodicVerifyTimer = 1;
  }

  CFStringGetTypeID();
  v5 = CFPrefs_CopyTypedValue();
  lowercaseString = [v5 lowercaseString];

  if (([(__CFString *)lowercaseString isEqualToString:@"production"]& 1) == 0 && ([(__CFString *)lowercaseString isEqualToString:@"development"]& 1) == 0)
  {

    lowercaseString = @"production";
  }

  if (([(__CFString *)lowercaseString isEqualToString:self->_pushEnvironment]& 1) == 0)
  {
    if (dword_100972850 <= 40 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      pushEnvironment = self->_pushEnvironment;
      v8 = lowercaseString;
      LogPrintF();
    }

    objc_storeStrong(&self->_pushEnvironment, lowercaseString);
    self->_updatePush = 1;
  }

  [(SDAppleIDAgent *)self _update:pushEnvironment];
}

- (void)_removeObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)_requestInfoForAppleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (!dCopy)
  {
    sub_1001E4ED4(&v31);
LABEL_22:
    v9 = 0;
    serialNumber = 0;
    v16 = 0;
    identifier = 0;
    goto LABEL_24;
  }

  if (self->_infoRequest)
  {
    sub_1001E4E04(dword_100972850 < 31, dword_100972850, &v31);
    goto LABEL_22;
  }

  if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E4E94();
  }

  v8 = [(SDAppleIDDatabaseManager *)self->_dbManager accountForAppleID:dCopy];
  v9 = v8;
  if (v8)
  {
    identity = [v8 identity];
    serialNumber = [identity serialNumber];

    validationRecord = [v9 validationRecord];
    identifier = [validationRecord identifier];
  }

  else
  {
    serialNumber = 0;
    identifier = 0;
  }

  if (serialNumber)
  {
    v14 = serialNumber;
  }

  else
  {
    v14 = &stru_1008EFBD0;
  }

  v32[0] = @"serialNumber";
  v32[1] = @"clientAidvrId";
  if (identifier)
  {
    v15 = identifier;
  }

  else
  {
    v15 = &stru_1008EFBD0;
  }

  v33[0] = v14;
  v33[1] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
  v17 = [[SDAppleIDServerTask alloc] initWithType:2 appleID:dCopy info:v16];
  [(SDAppleIDServerTask *)v17 setDispatchQueue:self->_dispatchQueue];
  if (v17)
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1001DF9C0;
    v26[3] = &unk_1008D37F0;
    v26[4] = self;
    v27 = dCopy;
    v18 = v17;
    v28 = v18;
    serialNumber = serialNumber;
    v29 = serialNumber;
    v30 = completionCopy;
    [(SDAppleIDServerTask *)v18 setResponseHandler:v26];

    infoRequest = self->_infoRequest;
    self->_infoRequest = v18;
    v20 = v18;

    [(SDAppleIDServerTask *)self->_infoRequest activate];
    v21 = 0;
LABEL_17:

    goto LABEL_18;
  }

  sub_1001E4734();
LABEL_24:
  v21 = v31;
  if (completionCopy && v31)
  {
    dispatchQueue = self->_dispatchQueue;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1001DFA64;
    v23[3] = &unk_1008CF578;
    v25 = completionCopy;
    v21 = v21;
    v24 = v21;
    dispatch_async(dispatchQueue, v23);

    v20 = v25;
    goto LABEL_17;
  }

LABEL_18:
}

- (void)_requestIdentityForAppleID:(id)d certificateToken:(id)token privateKeyPersistentReference:(id)reference withCompletion:(id)completion
{
  dCopy = d;
  tokenCopy = token;
  referenceCopy = reference;
  completionCopy = completion;
  if (dCopy)
  {
    if (!self->_identityRequest)
    {
      if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
      {
        v14 = "yes";
        if (!referenceCopy)
        {
          v14 = "no";
        }

        v30 = dCopy;
        v31 = tokenCopy;
        v32 = v14;
        LogPrintF();
      }

      v15 = [SDAppleIDIdentityRequest alloc];
      if (tokenCopy && referenceCopy)
      {
        v16 = [(SDAppleIDIdentityRequest *)v15 initWithAppleID:dCopy certificateToken:tokenCopy privateKeyPersistentReference:referenceCopy];
      }

      else
      {
        v16 = [(SDAppleIDIdentityRequest *)v15 initWithAppleID:dCopy, v30, v31, v32];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_1001DFEE4;
        v40[3] = &unk_1008D3818;
        v40[4] = self;
        v41 = dCopy;
        [(SDAppleIDIdentityRequest *)v16 setCertificateTokenHandler:v40];
      }

      [(SDAppleIDIdentityRequest *)v16 setDispatchQueue:self->_dispatchQueue, v30, v31, v32];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1001DFF80;
      v36[3] = &unk_1008D3840;
      v36[4] = self;
      v37 = dCopy;
      v17 = v16;
      v38 = v17;
      v39 = completionCopy;
      [(SDAppleIDIdentityRequest *)v17 setResponseHandler:v36];

      identityRequest = self->_identityRequest;
      self->_identityRequest = v17;
      v19 = v17;

      [(SDAppleIDIdentityRequest *)self->_identityRequest activate];
      v20 = 0;
      goto LABEL_14;
    }

    if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E4F1C();
    }

    v42 = NSLocalizedDescriptionKey;
    v27 = [NSString stringWithUTF8String:DebugGetErrorString()];
    v22 = v27;
    v28 = @"?";
    if (v27)
    {
      v28 = v27;
    }

    v43 = v28;
    v24 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v25 = NSOSStatusErrorDomain;
    v26 = 201224;
  }

  else
  {
    v44 = NSLocalizedDescriptionKey;
    v21 = [NSString stringWithUTF8String:DebugGetErrorString()];
    v22 = v21;
    v23 = @"?";
    if (v21)
    {
      v23 = v21;
    }

    v45 = v23;
    v24 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v25 = NSOSStatusErrorDomain;
    v26 = -6705;
  }

  v20 = [NSError errorWithDomain:v25 code:v26 userInfo:v24];

  if (completionCopy && v20)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001E0020;
    block[3] = &unk_1008CF578;
    v35 = completionCopy;
    v20 = v20;
    v34 = v20;
    dispatch_async(dispatchQueue, block);

    v19 = v35;
LABEL_14:
  }
}

- (void)_setMetaInfoValue:(id)value forKey:(id)key
{
  [(NSMutableDictionary *)self->_agentMetaInfo setObject:value forKeyedSubscript:key];
  agentMetaInfo = self->_agentMetaInfo;
  dbManager = self->_dbManager;

  [(SDAppleIDDatabaseManager *)dbManager setMetaInfo:agentMetaInfo];
}

- (void)_update
{
  if (self->_updatePush)
  {
    [(SDAppleIDAgent *)self _ensurePushStopped];
    [(SDAppleIDAgent *)self _ensurePushStarted];
    self->_updatePush = 0;
  }

  if (self->_updatePeriodicVerifyTimer)
  {
    [(SDAppleIDAgent *)self _ensurePeriodicVerifyTimerStopped];
    [(SDAppleIDAgent *)self _ensurePeriodicVerifyTimerStarted];
    self->_updatePeriodicVerifyTimer = 0;
  }
}

- (void)_updateMyInfo
{
  if (self->_appleID)
  {
    [(SDAppleIDAgent *)self _setCurrentAppleIDContactInfo:0 validationRecord:0];

    [(SDAppleIDAgent *)self _verifyState];
  }

  else
  {
    sub_1001E4F38();
  }
}

- (void)_verifyStateWithDelay:(double)delay
{
  v4 = dispatch_time(0, (delay * 1000000000.0));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E0934;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_after(v4, &_dispatch_main_q, block);
}

- (id)accountForAppleID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(SDAppleIDAgent *)selfCopy _accountForAppleID:dCopy];
  objc_sync_exit(selfCopy);

  if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v6;
}

- (id)accountStatusForAppleID:(id)d
{
  selfCopy = self;
  dCopy = d;
  objc_sync_enter(selfCopy);
  v6 = selfCopy->_appleID;
  objc_sync_exit(selfCopy);

  v7 = [(NSString *)v6 isEqualToString:dCopy];
  if (v7)
  {
    statusInfo = [(SDAppleIDAgent *)selfCopy statusInfo];
  }

  else
  {
    statusInfo = 0;
  }

  return statusInfo;
}

- (void)activate
{
  obj = self;
  objc_sync_enter(obj);
  [(SDAppleIDAgent *)obj _activate];
  objc_sync_exit(obj);
}

- (id)verifiedIdentityForEmailOrPhone:(id)phone
{
  phoneCopy = phone;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1001E0E84;
  v18 = sub_1001E0E94;
  v19 = 0;
  v5 = dispatch_semaphore_create(0);
  if (v5)
  {
    v6 = dispatch_get_global_queue(2, 0);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001E0E9C;
    v11[3] = &unk_1008D38E0;
    v13 = &v14;
    v7 = v5;
    v12 = v7;
    [(SDAppleIDAgent *)self verifiedIdentityForEmailOrPhone:phoneCopy queue:v6 completion:v11];

    v8 = dispatch_time(0, 15000000000);
    if (dispatch_semaphore_wait(v7, v8))
    {
      if (dword_100972850 <= 50 && (dword_100972850 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }
  }

  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (id)verifiedIdentityForCertificateChain:(id)chain emailOrPhone:(id)phone error:(id *)error
{
  chainCopy = chain;
  phoneCopy = phone;
  if (![chainCopy count])
  {
    v15 = NSOSStatusErrorDomain;
    v38 = NSLocalizedDescriptionKey;
    v16 = [NSString stringWithUTF8String:DebugGetErrorString()];
    v17 = v16;
    v18 = @"?";
    if (v16)
    {
      v18 = v16;
    }

    v39 = v18;
    v19 = &v39;
    v20 = &v38;
    goto LABEL_16;
  }

  if (!phoneCopy)
  {
    v15 = NSOSStatusErrorDomain;
    v36 = NSLocalizedDescriptionKey;
    v21 = [NSString stringWithUTF8String:DebugGetErrorString()];
    v17 = v21;
    v22 = @"?";
    if (v21)
    {
      v22 = v21;
    }

    v37 = v22;
    v19 = &v37;
    v20 = &v36;
LABEL_16:
    v23 = [NSDictionary dictionaryWithObjects:v19 forKeys:v20 count:1];
    v24 = v15;
    v25 = -6705;
    goto LABEL_21;
  }

  if ((SFAppleIDVerifyCertificateChainSync() & 1) == 0)
  {
    v12 = 0;
    v13 = 0;
    v11 = 0;
    goto LABEL_7;
  }

  v9 = [chainCopy objectAtIndexedSubscript:0];

  if (v9)
  {
    v10 = SFAppleIDCommonNameForCertificate();
    v11 = 0;
    if (!v10)
    {
      v12 = [[SDAppleIDVerifiedIdentity alloc] initWithAccountIdentifier:v11 emailOrPhone:phoneCopy];
      v13 = 0;
      goto LABEL_7;
    }

    v28 = v10;
    v32 = NSLocalizedDescriptionKey;
    v29 = [NSString stringWithUTF8String:DebugGetErrorString()];
    v17 = v29;
    v30 = @"?";
    if (v29)
    {
      v30 = v29;
    }

    v33 = v30;
    v23 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v13 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v28 userInfo:v23];
    goto LABEL_25;
  }

  v34 = NSLocalizedDescriptionKey;
  v26 = [NSString stringWithUTF8String:DebugGetErrorString()];
  v17 = v26;
  v27 = @"?";
  if (v26)
  {
    v27 = v26;
  }

  v35 = v27;
  v23 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v24 = NSOSStatusErrorDomain;
  v25 = -6762;
LABEL_21:
  v13 = [NSError errorWithDomain:v24 code:v25 userInfo:v23];
  v11 = 0;
LABEL_25:

  v12 = 0;
  if (error && v13)
  {
    v31 = v13;
    v12 = 0;
    *error = v13;
  }

LABEL_7:

  return v12;
}

- (__SecIdentity)copyIdentityForAppleID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(SDAppleIDAgent *)selfCopy _copyIdentityForAppleID:dCopy];
  objc_sync_exit(selfCopy);

  if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v6;
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  [(SDAppleIDAgent *)obj _invalidate];
  objc_sync_exit(obj);
}

- (void)personInfoWithEmailOrPhone:(id)phone queue:(id)queue completion:(id)completion
{
  phoneCopy = phone;
  queueCopy = queue;
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SDAppleIDAgent *)selfCopy _personInfoWithEmailOrPhone:phoneCopy queue:queueCopy completion:completionCopy];
  objc_sync_exit(selfCopy);
}

- (void)altDSIDLookupWithEmails:(id)emails phoneNumbers:(id)numbers completion:(id)completion
{
  emailsCopy = emails;
  numbersCopy = numbers;
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SDAppleIDAgent *)selfCopy _altDSIDLookupWithEmails:emailsCopy phoneNumbers:numbersCopy completion:completionCopy];
  objc_sync_exit(selfCopy);
}

- (void)prefsChanged
{
  obj = self;
  objc_sync_enter(obj);
  [(SDAppleIDAgent *)obj _prefsChanged];
  objc_sync_exit(obj);
}

- (void)requestWithInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [infoCopy objectForKeyedSubscript:@"requestType"];
  if (([v8 isEqualToString:@"createCert"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"fetchCert") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"getMyInfo") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"findPerson"))
  {
    [(SDAppleIDAgent *)selfCopy _performServerTaskWithInfo:infoCopy completion:completionCopy];
  }

  else
  {
    [(SDAppleIDAgent *)selfCopy _performOtherTaskWithInfo:infoCopy completion:completionCopy];
  }

  objc_sync_exit(selfCopy);
}

- (id)statusInfo
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _statusInfo = [(SDAppleIDAgent *)selfCopy _statusInfo];
  objc_sync_exit(selfCopy);

  return _statusInfo;
}

- (id)validationRecordInfoForAppleID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = +[NSMutableDictionary dictionary];
  if (v6)
  {
    v7 = [(SDAppleIDAgent *)selfCopy _accountForAppleID:dCopy];
    validationRecord = [v7 validationRecord];
    data = [validationRecord data];
    [v6 setValue:data forKey:@"AppleIDAccountValidationRecordData"];

    v10 = v6;
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (void)handleAppleIDChangedNotification
{
  obj = self;
  objc_sync_enter(obj);
  [(SDAppleIDAgent *)obj _handleAppleIDChangedNotification];
  objc_sync_exit(obj);
}

- (void)handleAppleIDSignedInNotification
{
  obj = self;
  objc_sync_enter(obj);
  [(SDAppleIDAgent *)obj _handleAppleIDSignedInNotification];
  objc_sync_exit(obj);
}

- (void)handleAppleIDSignedOutNotification
{
  obj = self;
  objc_sync_enter(obj);
  [(SDAppleIDAgent *)obj _handleAppleIDSignedOutNotification];
  objc_sync_exit(obj);
}

- (void)handleKeyBagFirstUnlockNotification
{
  obj = self;
  objc_sync_enter(obj);
  [(SDAppleIDAgent *)obj _handleKeyBagFirstUnlockNotification];
  objc_sync_exit(obj);
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  connectionCopy = connection;
  tokenCopy = token;
  topicCopy = topic;
  identifierCopy = identifier;
  v13 = _os_activity_create(&_mh_execute_header, "Sharing/SDAppleIDAgent/didReceiveToken", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v13, &state);
  if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  os_activity_scope_leave(&state);
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  connectionCopy = connection;
  tokenCopy = token;
  v7 = _os_activity_create(&_mh_execute_header, "Sharing/SDAppleIDAgent/didReceivePublicToken", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  os_activity_scope_leave(&state);
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  v8 = _os_activity_create(&_mh_execute_header, "Sharing/SDAppleIDAgent/didReceiveIncomingMessage", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100972850 <= 50 && (dword_100972850 != -1 || _LogCategory_Initialize()))
  {
    topic = [messageCopy topic];
    LogPrintF();
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SDAppleIDAgent *)selfCopy _updateMyInfo];
  objc_sync_exit(selfCopy);

  os_activity_scope_leave(&state);
}

- (void)_cleanUpAccount:(id)account
{
  accountCopy = account;
  v13 = accountCopy;
  if (accountCopy)
  {
    certificateToken = [accountCopy certificateToken];

    if (certificateToken)
    {
      certificateTokenCreationDate = [v13 certificateTokenCreationDate];
      certificateToken = [certificateTokenCreationDate dateByAddingTimeInterval:259200.0];

      certificateTokenCreationDate2 = [v13 certificateTokenCreationDate];
      if (!certificateTokenCreationDate2 || (v8 = certificateTokenCreationDate2, +[NSDate date](NSDate, "date"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 compare:certificateToken], v9, v8, v10 == 1))
      {
        if (dword_100972850 <= 60 && (dword_100972850 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        [v13 setCertificateToken:0];
        [v13 setPrivateKeyPersistentReference:0];
        dbManager = self->_dbManager;
        appleID = [v13 appleID];
        [(SDAppleIDDatabaseManager *)dbManager setCertificateToken:0 privateKeyPersistentReference:0 forAppleID:appleID];
      }
    }
  }

  else
  {
    certificateToken = 0;
  }
}

- (int)_ensureEduModeDevicesAreCleanedUp
{
  if ([(SDAppleIDAgent *)self eduModeEnabled])
  {
    v3 = self->_appleID;
    if (![(SDAppleIDAgent *)self _keychainCleanupTag])
    {
      v4 = dispatch_get_global_queue(0, 0);
      sub_100019E40();
      v7 = 3221225472;
      v8 = sub_1001DC64C;
      v9 = &unk_1008CF8F0;
      v12 = 0;
      v3 = v3;
      v10 = v3;
      selfCopy = self;
      dispatch_async(v4, block);
    }
  }

  else
  {
    v3 = 0;
  }

  return 0;
}

- (void)_ensurePeriodicVerifyTimerStarted
{
  if (!self->_periodicVerifyTimer)
  {
    if (self->_agentEnabled)
    {
      dispatchQueue = self->_dispatchQueue;
      sub_1001E23D8();
      v8 = dispatch_source_create(v4, v5, v6, v7);
      periodicVerifyTimer = self->_periodicVerifyTimer;
      self->_periodicVerifyTimer = v8;

      v10 = self->_periodicVerifyTimer;
      sub_100019E40();
      v14 = 3221225472;
      v15 = sub_1001DC7B0;
      v16 = &unk_1008CDEA0;
      selfCopy = self;
      dispatch_source_set_event_handler(v11, handler);
      v12 = self->_periodicVerifyTimer;
      SFDispatchTimerSet();
      dispatch_resume(self->_periodicVerifyTimer);
      if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {

      LogPrintF();
    }
  }
}

- (void)_ensurePeriodicVerifyTimerStopped
{
  periodicVerifyTimer = self->_periodicVerifyTimer;
  if (periodicVerifyTimer)
  {
    v4 = periodicVerifyTimer;
    dispatch_source_cancel(v4);
    v5 = self->_periodicVerifyTimer;
    self->_periodicVerifyTimer = 0;

    if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {

      LogPrintF();
    }
  }
}

- (void)_ensureThrottledRetryTimerStartedWithSuggestedDelay:(unint64_t)delay
{
  if (self->_throttledRetryTimer)
  {
    if (dword_100972850 > 30 || dword_100972850 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_26;
    }

LABEL_22:
    LogPrintF();
LABEL_26:
    v6 = 0;
    v4 = 0;
    goto LABEL_16;
  }

  if (!self->_agentEnabled)
  {
    if (dword_100972850 > 30 || dword_100972850 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (delay)
  {
    if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v6 = 0;
    v4 = 0;
  }

  else
  {
    sub_1001BBA14();
    v4 = +[NSDate date];
    v5 = sub_1001BBB9C();
    v6 = v5;
    if (!v4 || !v5)
    {
      goto LABEL_16;
    }

    [sub_1001E2428() timeIntervalSinceDate:?];
  }

  dispatchQueue = self->_dispatchQueue;
  sub_1001E23D8();
  v12 = dispatch_source_create(v8, v9, v10, v11);
  throttledRetryTimer = self->_throttledRetryTimer;
  self->_throttledRetryTimer = v12;

  v14 = self->_throttledRetryTimer;
  sub_100019E40();
  v18 = 3221225472;
  v19 = sub_1001DC820;
  v20 = &unk_1008CDEA0;
  selfCopy = self;
  dispatch_source_set_event_handler(v15, handler);
  v16 = self->_throttledRetryTimer;
  SFDispatchTimerSet();
  dispatch_resume(self->_throttledRetryTimer);
  if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_16:
}

- (void)_ensureThrottledRetryTimerStopped
{
  throttledRetryTimer = self->_throttledRetryTimer;
  if (throttledRetryTimer)
  {
    v4 = throttledRetryTimer;
    dispatch_source_cancel(v4);
    v5 = self->_throttledRetryTimer;
    self->_throttledRetryTimer = 0;

    if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {

      LogPrintF();
    }
  }
}

- (void)_handleAppleIDSignedInNotification
{
  if (self->_agentEnabled)
  {
    v8 = v2;
    if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v7 = [NSDate date:v3];
    [sub_1001E2428() _setMetaInfoValue:? forKey:?];

    [(SDAppleIDAgent *)self _updateAppleID];
    sub_1001BB994();

    [(SDAppleIDAgent *)self _verifyStateWithDelay:15.0];
  }
}

- (void)_handleAppleIDSignedOutNotification
{
  if (self->_agentEnabled)
  {
    v9 = v2;
    if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v7 = [NSDate date:v3];
    [sub_1001E2428() _setMetaInfoValue:? forKey:?];

    [(SDAppleIDAgent *)self _setMetaInfoValue:self->_appleID forKey:@"LastSignOutAppleID"];
    [(SDAppleIDAgent *)self _clearAccount];
    appleID = self->_appleID;
    self->_appleID = 0;

    [(SDAppleIDAgent *)self _verifyState];
  }
}

- (void)_handleFindPersonResponse:(id)response forRequest:(id)request emailOrPhone:(id)phone withError:(id)error queue:(id)queue completion:(id)completion
{
  responseCopy = response;
  phoneCopy = phone;
  errorCopy = error;
  completionCopy = completion;
  requestCopy = request;
  dispatch_assert_queue_V2(queue);
  selfCopy = self;
  v39 = completionCopy;
  if (!completionCopy)
  {
    v19 = 0;
    v20 = 0;
LABEL_30:
    v40 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_16;
  }

  if (errorCopy)
  {
    v20 = errorCopy;
    v19 = 0;
    LODWORD(completionCopy) = 0;
    goto LABEL_30;
  }

  v19 = 0;
  LODWORD(completionCopy) = -6762;
  v20 = 0;
  if (responseCopy)
  {
    v40 = 0;
    v21 = 0;
    v22 = 0;
    if (phoneCopy)
    {
      v22 = [NSMutableDictionary dictionaryWithDictionary:responseCopy];
      CFStringGetTypeID();
      v23 = CFDictionaryGetTypedValue();
      v44 = phoneCopy;
      v24 = [NSArray arrayWithObjects:&v44 count:1];
      v41 = 0;
      LODWORD(completionCopy) = sub_100004E00(v24, 1, &v41);
      v19 = v41;

      v40 = v23;
      if (completionCopy)
      {
        v20 = 0;
        v21 = 0;
      }

      else if (v19 && [v19 count] == 1)
      {
        firstObject = [v19 firstObject];
        v26 = [v23 isEqualToString:firstObject];

        if (v26)
        {
          [v22 setObject:phoneCopy forKeyedSubscript:@"MatchedValue"];
          v27 = [[SFAppleIDPersonInfo alloc] initWithDictionary:v22];
          if (v27)
          {
            LODWORD(completionCopy) = 0;
          }

          else
          {
            LODWORD(completionCopy) = -6762;
          }

          v20 = 0;
          if (v27)
          {
            v21 = v27;
          }

          else
          {
            v21 = 0;
          }
        }

        else
        {
          if (dword_100972850 <= 60 && (dword_100972850 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v20 = 0;
          v21 = 0;
          LODWORD(completionCopy) = -6712;
        }
      }

      else
      {
        v20 = 0;
        v21 = 0;
        LODWORD(completionCopy) = -6762;
      }
    }
  }

  else
  {
    v40 = 0;
    v21 = 0;
    v22 = 0;
  }

LABEL_16:
  [requestCopy invalidate];
  [(NSMutableArray *)selfCopy->_findPersonRequests removeObject:requestCopy];

  if (completionCopy)
  {
    v36 = responseCopy;
    v38 = errorCopy;
    v28 = completionCopy;
    v42 = NSLocalizedDescriptionKey;
    v29 = v22;
    v30 = phoneCopy;
    sub_1001E23D8();
    v31 = [NSString stringWithUTF8String:DebugGetErrorString()];
    v32 = v31;
    v33 = @"?";
    if (v31)
    {
      v33 = v31;
    }

    v43 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v35 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v28 userInfo:v34];

    phoneCopy = v30;
    v22 = v29;
    v20 = v35;
    responseCopy = v36;
    errorCopy = v38;
  }

  if (v20 && dword_100972850 <= 90 && (dword_100972850 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v39)
  {
    (v39)[2](v39, v21, v20);
  }
}

- (void)_handleServerTaskCompletionWithError:(id)error
{
  errorCopy = error;
  v4 = +[NSDate date];
  [(SDAppleIDDatabaseManager *)self->_dbManager setLastConnectionDate:v4];
  v5 = errorCopy;
  if (errorCopy)
  {
    if (dword_100972850 <= 60)
    {
      if (dword_100972850 != -1 || (v6 = _LogCategory_Initialize(), v5 = errorCopy, v6))
      {
        v9 = v5;
        LogPrintF();
      }
    }

    if (NSErrorToOSStatus() != -6723 && NSErrorToOSStatus() != 201224 && NSErrorToOSStatus() != 201225 && NSErrorToOSStatus() != 201226 && NSErrorToOSStatus() != 201229)
    {
      if (NSErrorToOSStatus() == 201215)
      {
        sub_100267564(self->_appleID);
      }

      userInfo = [errorCopy userInfo];
      Int64 = CFDictionaryGetInt64();

      [(SDAppleIDAgent *)self _ensureThrottledRetryTimerStartedWithSuggestedDelay:Int64];
    }
  }

  else
  {
    [(SDAppleIDDatabaseManager *)self->_dbManager setLastSuccessfulConnectionDate:v4];
    sub_1001BB994();
    [(SDAppleIDAgent *)self _verifyState];
  }
}

- (void)_handleReceivedCertificateToken:(id)token privateKeyPersistentReference:(id)reference forAppleID:(id)d
{
  tokenCopy = token;
  referenceCopy = reference;
  dCopy = d;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (referenceCopy && tokenCopy && dCopy)
  {
    [(SDAppleIDDatabaseManager *)self->_dbManager setCertificateToken:tokenCopy privateKeyPersistentReference:referenceCopy forAppleID:dCopy];
    sub_1001BB994();
  }
}

- (int)_performKeychainCount
{
  v3 = [(SDAppleIDAgent *)self _metaInfoValueForKey:@"LastKeychainCountDate"];
  v4 = +[NSDate date];
  v5 = v4;
  if (v3)
  {
    [v4 timeIntervalSinceDate:v3];
    if (v6 <= 259200.0)
    {
LABEL_14:
      v7 = 0;
      goto LABEL_15;
    }
  }

  mach_absolute_time();
  v7 = SFAppleIDCertificateAndKeyCounts();
  mach_absolute_time();
  if (!v7)
  {
    v17[0] = @"certCount";
    v8 = [NSNumber numberWithUnsignedInteger:0];
    v18[0] = v8;
    v17[1] = @"privKeyCount";
    v9 = [NSNumber numberWithUnsignedInteger:0];
    v18[1] = v9;
    v17[2] = @"pubKeyCount";
    v10 = [NSNumber numberWithUnsignedInteger:0];
    v18[2] = v10;
    v17[3] = @"latencyMs";
    v11 = [NSNumber numberWithInt:UpTicksToMilliseconds()];
    v18[3] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4];
    SFMetricsLog();

    if (dword_100972850 <= 30 && (dword_100972850 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
      [(SDAppleIDAgent *)self _setMetaInfoValue:v5 forKey:@"LastKeychainCountDate", 0, 0, 0];
    }

    else
    {
      [(SDAppleIDAgent *)self _setMetaInfoValue:v5 forKey:@"LastKeychainCountDate", v14, v15, v16];
    }

    goto LABEL_14;
  }

  if (dword_100972850 <= 60 && (dword_100972850 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_15:

  return v7;
}

- (void)_personInfoWithEmailOrPhone:(id)phone queue:(id)queue completion:(id)completion
{
  phoneCopy = phone;
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    v12 = self->_dispatchQueue;
    if (v12)
    {
      if (phoneCopy)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v23 = +[NSAssertionHandler currentHandler];
      [v23 handleFailureInMethod:a2 object:self file:@"SDAppleIDAgent.m" lineNumber:1853 description:@"inQueue and _dispatchQueue both nil."];

      v12 = 0;
      if (phoneCopy)
      {
        goto LABEL_6;
      }
    }

LABEL_20:
    v13 = 0;
    if (!completionCopy)
    {
      v17 = 0;
      v16 = 0;
      goto LABEL_18;
    }

    v15 = -6705;
    v17 = 0;
    v16 = 0;
    goto LABEL_10;
  }

  v12 = queueCopy;
  if (!phoneCopy)
  {
    goto LABEL_20;
  }

LABEL_6:
  if (!completionCopy)
  {
    v13 = 0;
    v17 = 0;
    v16 = 0;
    goto LABEL_18;
  }

  v13 = +[NSMutableDictionary dictionary];
  if (v13)
  {
    v33 = phoneCopy;
    v14 = [NSArray arrayWithObjects:&v33 count:1];
    v32 = 0;
    v15 = sub_100004E00(v14, 0, &v32);
    v16 = v32;

    if (v15)
    {
      v17 = 0;
    }

    else
    {
      if (v16 && [v16 count] == 1)
      {
        v19 = [phoneCopy containsString:@"@"];
        v20 = @"phones";
        if (v19)
        {
          v20 = @"emails";
        }

        v17 = v20;
        [v13 setObject:v16 forKeyedSubscript:v17];
        v21 = [[SDAppleIDServerTask alloc] initWithType:3 appleID:self->_appleID info:v13];
        if (v21)
        {
          v22 = v21;
          [(SDAppleIDServerTask *)v21 setDispatchQueue:v12];
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_1001DF18C;
          v27[3] = &unk_1008D37F0;
          v27[4] = self;
          v18 = v22;
          v28 = v18;
          v29 = phoneCopy;
          v30 = v12;
          v31 = completionCopy;
          [(SDAppleIDServerTask *)v18 setResponseHandler:v27];

          [(NSMutableArray *)self->_findPersonRequests addObject:v18];
          [(SDAppleIDServerTask *)v18 activate];
          goto LABEL_17;
        }
      }

      else
      {
        v17 = 0;
      }

      v15 = -6762;
    }
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v15 = -6728;
  }

LABEL_10:
  sub_1000089E8();
  v24[1] = 3221225472;
  v24[2] = sub_1001DF230;
  v24[3] = &unk_1008D0BE0;
  v25 = completionCopy;
  v26 = v15;
  dispatch_async(v12, v24);

  v18 = 0;
LABEL_17:

  v13 = v18;
LABEL_18:
}

- (id)_statusInfo
{
  v3 = +[NSMutableDictionary dictionary];
  if (v3)
  {
    statusInfo = [(SDAppleIDDatabaseManager *)self->_dbManager statusInfo];
    [v3 addEntriesFromDictionary:statusInfo];

    v5 = [NSNumber numberWithInteger:[(SDAppleIDAgent *)self _accountState]];
    [v3 setObject:v5 forKeyedSubscript:@"AccountState"];

    _detailedDescription = [(SDAppleIDAgent *)self _detailedDescription];
    [sub_1001E2428() setObject:? forKeyedSubscript:?];

    v7 = v3;
  }

  return v3;
}

- (void)verifiedIdentityForEmailOrPhone:(id)phone queue:(id)queue completion:(id)completion
{
  phoneCopy = phone;
  queueCopy = queue;
  completionCopy = completion;
  v11 = completionCopy;
  dispatchQueue = queueCopy;
  if (!queueCopy)
  {
    dispatchQueue = self->_dispatchQueue;
  }

  if (completionCopy)
  {
    sub_1000089E8();
    v14 = phoneCopy;
    v15 = v11;
    v13 = dispatchQueue;
    [sub_1001E2404() queryVerifiedIdentityForEmailOrPhone:? queue:? completion:?];
  }
}

- (void)queryVerifiedIdentityForEmailOrPhone:(id)phone queue:(id)queue completion:(id)completion
{
  phoneCopy = phone;
  queueCopy = queue;
  completionCopy = completion;
  v11 = completionCopy;
  dispatchQueue = queueCopy;
  if (!queueCopy)
  {
    dispatchQueue = self->_dispatchQueue;
  }

  if (completionCopy)
  {
    sub_1000089E8();
    v14 = phoneCopy;
    v15 = v11;
    v13 = dispatchQueue;
    [sub_1001E2404() personInfoWithEmailOrPhone:? queue:? completion:?];
  }
}

@end