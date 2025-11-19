@interface SESEndpointAndKeyXPCServer
+ (id)createServer;
+ (id)createServerWithMachServiceName:(id)a3 storagePath:(id)a4;
- (BOOL)_deleteLoadedKey:(id)a3 instanceAID:(id)a4 loadedKey:(id)a5 error:(id *)a6;
- (BOOL)_preWarmAlishaInternal:(id)a3 handle:(id)a4 proximityChipInfo:(id)a5 manufactuer:(id)a6 clientName:(id)a7 error:(id *)a8;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)_aclForFidoAttestingKey;
- (id)_applyConfidentialMailboxContents:(id *)a3 secureElement:(id)a4 instanceAID:(id)a5 keyIdentifier:(id)a6;
- (id)_applyPrivateMailboxContents:(id *)a3 secureElement:(id)a4 instanceAID:(id)a5 keyIdentifier:(id)a6;
- (id)_cleanupAppletsWithNoEndpoints:(id)a3 handle:(id)a4;
- (id)_createEndPointCA:(id)a3 handle:(id)a4 clientName:(id)a5 identifier:(id)a6 subjectIdentifier:(id)a7 forEndPointType:(int64_t)a8 error:(id *)a9;
- (id)_createKey:(id)a3 acl:(id)a4 error:(id *)a5;
- (id)_createSynchronizableKey:(id)a3 extractedACLs:(id)a4 error:(id *)a5;
- (id)_ensureCAExistsAndValid:(id)a3 clientName:(id)a4 secureElement:(id)a5 handle:(id)a6 forEndPointType:(int64_t)a7 error:(id *)a8;
- (id)_getBAACertificatesForKey:(id)a3 key:(id)a4 subjectIdentifier:(id)a5 nonce:(id)a6 OIDs:(id)a7 validityInterval:(id)a8 error:(id *)a9;
- (id)_getEndPointAndValidateAccess:(id)a3 identifier:(id)a4 clientInfo:(id)a5 outEndPointEntity:(id *)a6 outEndPoint:(id *)a7;
- (id)_renewEndPointCAIfExpired:(id)a3 secureElement:(id)a4 forEndPointType:(int64_t)a5 handle:(id)a6;
- (id)findAndLoadKey:(id)a3 secureElement:(id)a4 error:(id *)a5;
- (id)getEncryptedCarOEMProprietaryData:(id)a3 withEndpointEntity:(id)a4 withSecureElement:(id)a5;
- (id)getKeyHandle:(id)a3 key:(id)a4 error:(id *)a5;
- (id)getOccupiedLegacyKeySlots:(id *)a3;
- (id)getUsableKeySlot:(id)a3;
- (id)getUsableLegacyKeySlot:(id)a3 outError:(id *)a4;
- (id)initializeRAMRepresentation:(id)a3;
- (id)revokeRemoteTerminationRequestEndPoints:(id)a3 handle:(id)a4 identifier:(id)a5 taskID:(id)a6 clientInfo:(id)a7 outError:(id *)a8;
- (os_state_data_s)_dumpState;
- (unint64_t)_existsDuplicateInDatabase:(id)a3 withIdentifier:(id)a4 orReaderIdentifier:(id)a5 outError:(id *)a6;
- (void)addEndpointId:(id)a3 withUuid:(id)a4 reply:(id)a5;
- (void)addInvitationWithId:(id)a3 data:(id)a4 reply:(id)a5;
- (void)authorizeEndPointWithProxy:(id)a3 version:(unsigned __int8)a4 identifier:(id)a5 externalCA:(id)a6 instanceCA:(id)a7 endpointCertificate:(id)a8 encryptionKeyAttestation:(id)a9 bindingAttestation:(id)a10 bindingAttestationToken:(id)a11 confidentialDataOffset:(unsigned __int16)a12 confidentialDataLength:(unsigned __int16)a13 metaData:(id)a14 authorizationID:(id)a15 reply:(id)a16;
- (void)carKeyDowngradeVersionSetting:(id)a3 brand:(id)a4 uuid:(id)a5 reply:(id)a6;
- (void)checkKeyValidity:(id)a3 completion:(id)a4;
- (void)checkMultipleFidoKeyPresence:(id)a3 usingProxy:(id)a4 callback:(id)a5;
- (void)cleanupAppletsWithNoEndpoints:(id)a3 completion:(id)a4;
- (void)cleanupAppletsWithNoEndpoints:(id)a3 reply:(id)a4;
- (void)configureEndpointWithProxy:(id)a3 identifier:(id)a4 privateData:(id)a5 confidentialData:(id)a6 contactlessVolatileVisibility:(id)a7 contactlessPersistentVisibility:(id)a8 wiredVolatileVisibility:(id)a9 wiredPersistentVisibility:(id)a10 keySlot:(id)a11 nfcExpressOnlyInLPM:(id)a12 reply:(id)a13;
- (void)convertEndpointWithProxy:(id)a3 keyIdentifier:(id)a4 notBeforeDate:(id)a5 reply:(id)a6;
- (void)createAlishaEndpointWithProxy:(id)a3 identifier:(id)a4 authorityIdentifier:(id)a5 subjectIdentifier:(id)a6 configuration:(id)a7 readerIdentifier:(id)a8 readerPublicKey:(id)a9 readerInformation:(id)a10 startDate:(id)a11 endDate:(id)a12 keyIdentifier:(id)a13 authorizedKeys:(id)a14 confidentialMailBoxSize:(id)a15 privateMailBoxSize:(id)a16 reply:(id)a17;
- (void)createCertificateForKeyData:(id)a3 withKeyData:(id)a4 subjectIdentifier:(id)a5 authorityIdentifier:(id)a6 laExternalizedContext:(id)a7 nonce:(id)a8 OIDs:(id)a9 reply:(id)a10;
- (void)createEncryptionKeyEndPointWithProxy:(id)a3 identifier:(id)a4 reply:(id)a5;
- (void)createEndPointAuthorizationID:(id)a3 userAuth:(id)a4 reply:(id)a5;
- (void)createFiDOKeyForRelyingParty:(id)a3 relyingPartyAccountHash:(id)a4 challenge:(id)a5 usingProxy:(id)a6 callback:(id)a7;
- (void)createHydraEndpointWithProxy:(id)a3 serverParams:(id)a4 reply:(id)a5;
- (void)createLocalEndpointWithProxy:(id)a3 readerIdentifier:(id)a4 readerPublicKey:(id)a5 reply:(id)a6;
- (void)createLyonEndpointWithProxy:(id)a3 readerGroupIdentifier:(id)a4 readerPublicKey:(id)a5 homeUUID:(id)a6 privateMailboxSize:(id)a7 reply:(id)a8;
- (void)createLyonHydraEndpointWithProxy:(id)a3 serverParams:(id)a4 reply:(id)a5;
- (void)createPTAttestation:(id)a3 keyData:(id)a4 subjectIdentifier:(id)a5 nonce:(id)a6 OIDs:(id)a7 reply:(id)a8;
- (void)createPrivacyKeyForGroupIdentifier:(id)a3 withOptions:(id)a4 completion:(id)a5;
- (void)createSEABAASCertificate:(id)a3 subjectIdentifier:(id)a4 nonce:(id)a5 OIDs:(id)a6 validityInterval:(id)a7 reply:(id)a8;
- (void)createSEKey:(id)a3 extractedACLs:(id)a4 reply:(id)a5;
- (void)createSELegacyKey:(id)a3 subjectIdentifier:(id)a4 metaData:(id)a5 localValidationList:(id)a6 reply:(id)a7;
- (void)databaseServiceWithProxy:(id)a3 isReconcileRequired:(BOOL)a4 reason:(id)a5 reply:(id)a6;
- (void)decryptPayload:(id)a3 withGroupIdentifier:(id)a4 completion:(id)a5;
- (void)decryptWithSEKey:(id)a3 cipherText:(id)a4 publicKey:(id)a5 algorithm:(id)a6 laExternalizedContext:(id)a7 sharedInfo:(id)a8 authenticationData:(id)a9 authenticationTag:(id)a10 reply:(id)a11;
- (void)deleteEndPointAuthorizationID:(id)a3 reply:(id)a4;
- (void)deleteEndPointWithProxy:(id)a3 identifier:(id)a4 mustBeTerminated:(BOOL)a5 reply:(id)a6;
- (void)deleteEndPointWithPublicKey:(id)a3 reply:(id)a4;
- (void)deleteEndPointWithPublicKeyIdentifier:(id)a3 reply:(id)a4;
- (void)deleteEndpointIdWithUuid:(id)a3 reply:(id)a4;
- (void)deleteFiDOKeyFor:(id)a3 usingProxy:(id)a4 callback:(id)a5;
- (void)deleteInvitationWithId:(id)a3 reply:(id)a4;
- (void)deletePrivacyKey:(id)a3 completion:(id)a4;
- (void)deleteSEKey:(id)a3 keyData:(id)a4 reply:(id)a5;
- (void)deleteSELegacyKey:(id)a3 keySlot:(id)a4 reply:(id)a5;
- (void)designateKey:(id)a3 designation:(id)a4 handoffToken:(id)a5 completion:(id)a6;
- (void)encryptPayload:(id)a3 encryptionScheme:(id)a4 recipientPublicKey:(id)a5 completion:(id)a6;
- (void)encryptWithSEKey:(id)a3 plainText:(id)a4 publicKey:(id)a5 algorithm:(id)a6 laExternalizedContext:(id)a7 sharedInfo:(id)a8 authenticationData:(id)a9 reply:(id)a10;
- (void)endPointAction:(id)a3 proxy:(id)a4 clientInfo:(id)a5 reason:(id)a6 reply:(id)a7;
- (void)endPointDBAction:(id)a3 clientInfo:(id)a4 reason:(id)a5 reply:(id)a6;
- (void)endPointServiceAvailableWithProxy:(id)a3 reason:(id)a4 reply:(id)a5;
- (void)findAndAttest:(id)a3 challenge:(id)a4 usingProxy:(id)a5 callback:(id)a6;
- (void)fixEndpointSignatureCertificatePK:(id)a3;
- (void)getCASDCertificate:(id)a3 reply:(id)a4;
- (void)getEndpointBindingAttestationRequestWithProxy:(id)a3 authorityIdentifier:(id)a4 reply:(id)a5;
- (void)getEndpointIdWithUuid:(id)a3 reply:(id)a4;
- (void)getEndpoints:(id)a3 completion:(id)a4;
- (void)getInvitationWithId:(id)a3 reply:(id)a4;
- (void)getInvitations:(id)a3;
- (void)getPrivateDataWithProxy:(id)a3 identifier:(id)a4 privateDataOffset:(unsigned __int16)a5 privateDataLength:(unsigned __int16)a6 reply:(id)a7;
- (void)getSELegacyKeyOccupiedSlots:(id)a3 reply:(id)a4;
- (void)getSESEndpointTSMDictionary:(id)a3 reply:(id)a4;
- (void)getSESKeySupportedFeatures:(id)a3;
- (void)getSupportedAliroVersionsWithReply:(id)a3;
- (void)handleMFDNotification:(id)a3;
- (void)isCarKeySupported:(id)a3 brand:(id)a4 uuid:(id)a5 reply:(id)a6;
- (void)isSharingEnabledForManufacturer:(id)a3 brand:(id)a4 uuid:(id)a5 reply:(id)a6;
- (void)keyOperation:(id)a3 handoffToken:(id)a4 keyData:(id)a5 reason:(id)a6 reply:(id)a7;
- (void)keyServiceAvailable:(id)a3 handoffToken:(id)a4 reason:(id)a5 reply:(id)a6;
- (void)legacyKeyServiceAvailable:(id)a3 reason:(id)a4 reply:(id)a5;
- (void)listEndPointAuthorizations:(id)a3;
- (void)listEndPointContainers:(id)a3 reply:(id)a4;
- (void)notifyEndpointTracked:(id)a3 reply:(id)a4;
- (void)notifyPassAdded:(id)a3 reply:(id)a4;
- (void)onFirstUnlock;
- (void)preAuthorizeEndpointWithProxy:(id)a3 keyIdentifier:(id)a4 bindingAttestation:(id)a5 reply:(id)a6;
- (void)preWarmAlisha:(id)a3 reply:(id)a4;
- (void)privacyDecryptDataWithEndPoint:(id)a3 data:(id)a4 ephemeralPublicKey:(id)a5 reply:(id)a6;
- (void)privacyDecryptDataWithKeyPair:(id)a3 secretKey:(id)a4 data:(id)a5 ephemeralPublicKey:(id)a6 reply:(id)a7;
- (void)privacyEncryptDataWithEndPoint:(id)a3 data:(id)a4 reply:(id)a5;
- (void)privacyEncryptDataWithManufacturer:(id)a3 environment:(id)a4 region:(id)a5 data:(id)a6 reply:(id)a7;
- (void)privacyKeysForGroupIdentifier:(id)a3 keyIdentifier:(id)a4 completion:(id)a5;
- (void)proximityAndEndpointService:(id)a3 reason:(id)a4 completion:(id)a5;
- (void)remoteTerminationRequestWithProxy:(id)a3 remoteTerminationRequest:(id)a4 publicKeyIdentifier:(id)a5 taskID:(id)a6 reply:(id)a7;
- (void)removeDesignation:(int64_t)a3 completion:(id)a4;
- (void)revokeEndPointWithIdentifier:(id)a3 nonce:(id)a4 metaData:(id)a5 reply:(id)a6;
- (void)rewrapWithSEKey:(id)a3 cipherText:(id)a4 publicKey:(id)a5 decryptAlgorithm:(id)a6 decryptSharedInfo:(id)a7 encryptAlgorithm:(id)a8 encryptSharedInfo:(id)a9 certificate:(id)a10 laExternalizedContext:(id)a11 decryptAuthenticationData:(id)a12 decryptAuthenticationTag:(id)a13 encryptAuthenticationData:(id)a14 reply:(id)a15;
- (void)secureElementService:(id)a3 reply:(id)a4;
- (void)sendDeviceIntentWithConfidence:(id)a3 keyIdentifier:(id)a4 reply:(id)a5;
- (void)setConfidentialDataEndPointWithIdentifier:(id)a3 senderEphemeralPublicKey:(id)a4 encryptedData:(id)a5 offset:(unsigned __int16)a6 reply:(id)a7;
- (void)setDesignation:(id)a3 designation:(int64_t)a4 handoffToken:(id)a5 completion:(id)a6;
- (void)setPrivateDataWithProxy:(id)a3 identifier:(id)a4 privateData:(id)a5 privateDataOffset:(unsigned __int16)a6 reply:(id)a7;
- (void)sharedSecretWithSEKey:(id)a3 keyData:(id)a4 publicKey:(id)a5 algorithm:(id)a6 laExternalizedContext:(id)a7 reply:(id)a8;
- (void)signMultipleWithFidoKeysFor:(id)a3 challenges:(id)a4 forEndpointIdentifiers:(id)a5 externalizedAuth:(id)a6 usingProxy:(id)a7 callback:(id)a8;
- (void)signPrecomputedDigest:(id)a3 keyData:(id)a4 digest:(id)a5 algorithm:(id)a6 laExternalizedContext:(id)a7 reply:(id)a8;
- (void)signPrecomputedWithSELegacyKey:(id)a3 keySlot:(id)a4 metaData:(id)a5 authorization:(id)a6 authorizationType:(id)a7 reply:(id)a8;
- (void)signWithSEKey:(id)a3 keyData:(id)a4 data:(id)a5 algorithm:(id)a6 laExternalizedContext:(id)a7 reply:(id)a8;
- (void)signWithSELegacyKey:(id)a3 keySlot:(id)a4 challenge:(id)a5 metaData:(id)a6 authorization:(id)a7 reply:(id)a8;
- (void)signatureISO18013WithEndPointIdentifier:(id)a3 toBeSigned:(id)a4 reply:(id)a5;
- (void)signatureWithEndPointIdentifier:(id)a3 metaDataHash:(id)a4 authorization:(id)a5 reply:(id)a6;
- (void)start;
- (void)triggerHeadUnitPairing:(id)a3 data:(id)a4 reply:(id)a5;
- (void)updateACLForSEKey:(id)a3 extractedACLs:(id)a4 laExternalizedContext:(id)a5 reply:(id)a6;
- (void)updateEndpoint:(id)a3 reply:(id)a4;
- (void)updateHydraMailboxesWithProxy:(id)a3 identifier:(id)a4 encryptedSEBlob:(id)a5 reply:(id)a6;
- (void)updateLyonCredentialDocumentStatusWithProxy:(id)a3 endpointIdentifier:(id)a4 accessDocumentPresent:(BOOL)a5 accessDocumentSignedTimestamp:(id)a6 revocationDocumentPresent:(BOOL)a7 revocationDocumentSignedTimestamp:(id)a8 reply:(id)a9;
- (void)verifyWithFidoKeyFor:(id)a3 signedChallenge:(id)a4 usingProxy:(id)a5 callback:(id)a6;
@end

@implementation SESEndpointAndKeyXPCServer

- (id)initializeRAMRepresentation:(id)a3
{
  v4 = a3;
  v5 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(v5);

  v6 = SESDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "initializeRAMRepresentation", buf, 2u);
  }

  v7 = [(SESEndpointAndKeyXPCServer *)self instanceRepresentations];

  if (v7)
  {
    v8 = 0;
    goto LABEL_51;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000039BC;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  if (qword_10050CBE0 != -1)
  {
    dispatch_once(&qword_10050CBE0, block);
  }

  v70 = 0;
  v9 = [_TtC10seserviced35SESKeyDesignationStorageCoordinator getAndReturnError:&v70];
  v10 = v70;
  v11 = v10;
  if (!v9 || v10)
  {
    v8 = SESEnsureError();
  }

  else
  {
    v49 = self;
    v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [&off_1004DC668 count]);
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v52 = [&off_1004DC668 countByEnumeratingWithState:&v66 objects:v75 count:16];
    if (!v52)
    {
      goto LABEL_46;
    }

    v51 = *v67;
    v50 = v12;
    v54 = v4;
LABEL_11:
    v13 = 0;
LABEL_12:
    if (*v67 != v51)
    {
      objc_enumerationMutation(&off_1004DC668);
    }

    v14 = *(*(&v66 + 1) + 8 * v13);
    v58 = [[InstanceRepresentation alloc] initWithAID:v14];
    v56 = v14;
    v15 = [v14 hexStringAsData];
    v65 = 0;
    v16 = sub_10002E084(v4, v15, &v65);
    v17 = v65;

    if (!v17)
    {
      v53 = v13;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      obj = v16;
      p_vtable = SESDatabaseTransaction.vtable;
      v60 = [obj countByEnumeratingWithState:&v61 objects:v74 count:16];
      if (!v60)
      {
        goto LABEL_44;
      }

      v59 = *v62;
      while (1)
      {
        for (i = 0; i != v60; i = i + 1)
        {
          if (*v62 != v59)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v61 + 1) + 8 * i);
          v21 = [p_vtable + 207 withKeyData:v20 state:2];
          v22 = v21;
          if (v21)
          {
            if ([v21 number] < 2)
            {
              v23 = 4;
              goto LABEL_23;
            }

            if ([v22 number] >= 2 && objc_msgSend(v22, "number") <= 0xF)
            {
              v23 = 6;
LABEL_23:
              [v22 setState:v23];
            }

            v24 = [v22 number];
            v25 = [(InstanceRepresentation *)v58 keys];
            v26 = [v25 count];

            if (v26 <= v24)
            {
              v42 = [v56 hexStringAsData];
              v28 = sub_100030394(v4, v42, [v22 number]);

              v43 = SESDefaultLogObject();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                v44 = [v22 number];
                v45 = [v20 asHexString];
                *buf = 67109378;
                *v73 = v44;
                *&v73[4] = 2112;
                *&v73[6] = v45;
                _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Out of range keySlot number %u from blob %@", buf, 0x12u);
              }

              v41 = SESDefaultLogObject();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *v73 = v28;
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Cleaned up with error: %@", buf, 0xCu);
              }
            }

            else
            {
              v27 = [v22 keyIdentifier];
              v28 = [v9 findKeyWithKeyIdentifier:v27];

              if (v28)
              {
                [v22 setDesignation:{objc_msgSend(v28, "designation")}];
                v29 = [v28 slotNumber];
                if (v29 != [v22 number])
                {
                  v30 = SESDefaultLogObject();
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
                  {
                    v31 = [v28 designation];
                    *buf = 138412546;
                    *v73 = v22;
                    *&v73[8] = 1024;
                    *&v73[10] = v31;
                    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_FAULT, "Inconsistent state on SE %@ in designation slot %d", buf, 0x12u);
                  }

                  v32 = [v56 hexStringAsData];
                  v55 = [v22 number];
                  v33 = [v22 keyIdentifier];
                  v34 = [v28 assetACL];
                  v35 = [v28 assetACLAttestation];
                  v37 = sub_1003AF3C4(v4, v36);
                  if ([v37 type] <= 3)
                  {
                    v38 = 1;
                  }

                  else
                  {
                    v38 = 2;
                  }

                  v39 = [v22 designation];
                  v40 = v38;
                  v4 = v54;
                  [v9 designateKeyWithAid:v32 slotNumber:v55 keyIdentifier:v33 assetACL:v34 assetACLAttestation:v35 operationApprovalVersion:v40 designation:v39];

                  p_vtable = (SESDatabaseTransaction + 24);
                }
              }

              v41 = [(InstanceRepresentation *)v58 keys];
              -[NSObject setObject:atIndexedSubscript:](v41, "setObject:atIndexedSubscript:", v22, [v22 number]);
            }
          }
        }

        v60 = [obj countByEnumeratingWithState:&v61 objects:v74 count:16];
        if (!v60)
        {
LABEL_44:

          v12 = v50;
          [v50 addObject:v58];

          v13 = v53 + 1;
          if ((v53 + 1) == v52)
          {
            v52 = [&off_1004DC668 countByEnumeratingWithState:&v66 objects:v75 count:16];
            if (!v52)
            {
LABEL_46:
              [v9 commit];
              [(SESEndpointAndKeyXPCServer *)v49 setInstanceRepresentations:v12];
              v46 = [(SESEndpointAndKeyXPCServer *)v49 messageQueue];
              os_state_add_handler();

              v8 = 0;
              goto LABEL_49;
            }

            goto LABEL_11;
          }

          goto LABEL_12;
        }
      }
    }

    v47 = SESDefaultLogObject();
    v8 = SESCreateAndLogError();

LABEL_49:
    v11 = 0;
  }

LABEL_51:

  return v8;
}

- (void)handleMFDNotification:(id)a3
{
  v4 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003AEC;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(v4, block);
}

- (os_state_data_s)_dumpState
{
  v3 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(SESEndpointAndKeyXPCServer *)self instanceRepresentations];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 keys];
        v12 = [v11 filterMap:&stru_1004C0940];

        v13 = [v10 AID];
        [v4 setObject:v12 forKeyedSubscript:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = sub_100015DA0("seskeyxpc.state", v4);
  return v14;
}

- (void)keyServiceAvailable:(id)a3 handoffToken:(id)a4 reason:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = SESDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 67240448;
    v27 = v10 != 0;
    v28 = 1026;
    v29 = v11 != 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "KeyServiceAvailable proxy %{public}d token %{public}d", buf, 0xEu);
  }

  v15 = +[NSXPCConnection currentConnection];
  v16 = sub_100035A18(SESClientInfo, v15);

  if (sub_1003AD244(v16))
  {
    v17 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003F64;
    block[3] = &unk_1004C09B8;
    v21 = v10;
    v22 = v11;
    v23 = v12;
    v24 = self;
    v25 = v13;
    dispatch_async(v17, block);

    v18 = v21;
  }

  else
  {
    v18 = SESDefaultLogObject();
    v19 = SESCreateAndLogError();
    (*(v13 + 2))(v13, 0, v19);
  }
}

- (void)legacyKeyServiceAvailable:(id)a3 reason:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 67240192;
    v23 = v8 != 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "legacyKeyServiceAvailable proxy %{public}d", buf, 8u);
  }

  v12 = +[NSXPCConnection currentConnection];
  v13 = sub_100035A18(SESClientInfo, v12);

  if (sub_1003AD258(v13))
  {
    v14 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000043FC;
    v17[3] = &unk_1004C09E0;
    v18 = v8;
    v19 = v9;
    v20 = self;
    v21 = v10;
    dispatch_async(v14, v17);

    v15 = v18;
  }

  else
  {
    v15 = SESDefaultLogObject();
    v16 = SESCreateAndLogError();
    (*(v10 + 2))(v10, 0, v16);
  }
}

- (void)keyOperation:(id)a3 handoffToken:(id)a4 keyData:(id)a5 reason:(id)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v23 = 0;
  v16 = [PTClassicKey withData:a5 error:&v23];
  v17 = v23;
  v18 = v17;
  if (v16)
  {
    v19 = v17 == 0;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000047F4;
    v20[3] = &unk_1004C0A08;
    v22 = v15;
    v20[4] = self;
    v21 = v16;
    [(SESEndpointAndKeyXPCServer *)self keyServiceAvailable:v12 handoffToken:v13 reason:v14 reply:v20];
  }

  else
  {
    (*(v15 + 2))(v15, 0, 0, v17);
  }
}

- (id)getUsableKeySlot:(id)a3
{
  v4 = a3;
  v5 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(SESEndpointAndKeyXPCServer *)self instanceRepresentations];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100004BC0;
  v22[3] = &unk_1004C0A30;
  v7 = v4;
  v23 = v7;
  v8 = [v6 find:v22];

  if (v8)
  {
    v9 = [v8 keys];
    v10 = [v9 find:&stru_1004C0A70];

    if (v10)
    {
      v11 = SESDefaultLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = [v10 number];
        *buf = 67109120;
        LODWORD(v25) = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Returning empty keySlot %u", buf, 8u);
      }

      v13 = v10;
      v14 = v13;
    }

    else
    {
      v15 = [v8 keys];
      v16 = [v15 filter:&stru_1004C0A90];

      if (v16)
      {
        v17 = [v16 randomElement];
        v18 = SESDefaultLogObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v19 = [v17 number];
          *buf = 67109120;
          LODWORD(v25) = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Returning occupied keySlot %u", buf, 8u);
        }

        v13 = v17;
      }

      else
      {
        v20 = SESDefaultLogObject();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Went through all slots, NONE OF THEM are free or occupied?!", buf, 2u);
        }

        v13 = 0;
      }

      v14 = v13;
    }
  }

  else
  {
    v13 = SESDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Couldn't find AID %@", buf, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

- (id)getUsableLegacyKeySlot:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(SESEndpointAndKeyXPCServer *)self instanceRepresentations];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100004ED4;
  v18[3] = &unk_1004C0A30;
  v9 = v6;
  v19 = v9;
  v10 = [v8 find:v18];

  if (v10)
  {
    v11 = [v10 keys];
    v12 = [v11 find:&stru_1004C0AB0];

    if (v12)
    {
      v13 = SESDefaultLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = [v12 number];
        *buf = 67109120;
        v21 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Returning empty keySlot %u", buf, 8u);
      }

      v12 = v12;
      v15 = v12;
    }

    else
    {
      if (a4)
      {
        v16 = SESDefaultLogObject();
        *a4 = SESCreateAndLogError();
      }

      v15 = 0;
    }

    goto LABEL_11;
  }

  if (a4)
  {
    v12 = SESDefaultLogObject();
    SESCreateAndLogError();
    *a4 = v15 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (id)getOccupiedLegacyKeySlots:(id *)a3
{
  v5 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(SESEndpointAndKeyXPCServer *)self instanceRepresentations];
  v7 = [v6 find:&stru_1004C0AF0];

  if (v7)
  {
    v8 = [v7 keys];
    v9 = [v8 filterMap:&stru_1004C0B30];
LABEL_5:

    goto LABEL_6;
  }

  if (a3)
  {
    v8 = SESDefaultLogObject();
    SESCreateAndLogError();
    *a3 = v9 = 0;
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (id)getKeyHandle:(id)a3 key:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(v10);

  v11 = [(SESEndpointAndKeyXPCServer *)self instanceRepresentations];
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_1000058F4;
  v62[3] = &unk_1004C0A30;
  v63 = @"A000000704C0000000000002";
  v12 = [v11 find:v62];

  if (v12)
  {
    v13 = [@"A000000704C0000000000002" hexStringAsData];
    v14 = sub_10002FFE8(v8, v13);

    v15 = SESDefaultLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = [v9 isExportedData];
      v17 = [v9 keyIdentifier];
      v18 = [v17 asHexString];
      *buf = 67109634;
      *v65 = v14;
      *&v65[4] = 1024;
      *&v65[6] = v16;
      *v66 = 2112;
      *&v66[2] = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "PTCVersion %d isExportedData %d keyIdentifier %@", buf, 0x18u);
    }

    v19 = [v12 keys];
    if (v14 < 2)
    {
      v20 = v60;
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v21 = sub_10000599C;
    }

    else
    {
      v20 = v61;
      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v21 = sub_100005938;
    }

    v20[2] = v21;
    v20[3] = &unk_1004C0B58;
    v24 = v9;
    v20[4] = v24;
    v22 = [v19 find:v20];

    if (v22)
    {
      v25 = SESDefaultLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *v65 = v24;
        *&v65[8] = 2112;
        *v66 = v22;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Found already-loaded %@ in %@", buf, 0x16u);
      }

      goto LABEL_14;
    }

    v27 = [(SESEndpointAndKeyXPCServer *)self getUsableKeySlot:@"A000000704C0000000000002"];
    if (v27)
    {
      v22 = v27;
      v28 = SESDefaultLogObject();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = [v24 keyNumber];
        v30 = [v22 number];
        v31 = [v24 isExportedData];
        *buf = 67109632;
        *v65 = v29;
        *&v65[4] = 1024;
        *&v65[6] = v30;
        *v66 = 1024;
        *&v66[2] = v31;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Loading key with number 0x%x in slot %u (exported %d)", buf, 0x14u);
      }

      if (![v24 isExportedData])
      {
        v44 = [@"A000000704C0000000000002" hexStringAsData];
        v45 = sub_100034304(v8, v44, v24, [v22 number]);

        if (!v45)
        {
          goto LABEL_38;
        }

        v46 = [@"A000000704C0000000000002" hexStringAsData];
        v47 = sub_100030394(v8, v46, [v22 number]);

        [v22 resetToEmpty];
        if (a5)
        {
          v48 = v45;
          *a5 = v45;
        }

LABEL_47:
        v23 = 0;
        goto LABEL_15;
      }

      v32 = +[_TtC10seserviced16SEKeySyncManager singleton];
      v33 = [v24 keyData];
      v59 = 0;
      v34 = [v32 haveAvailableTLKForEncryptedData:v33 secureElement:v8 error:&v59];
      v35 = v59;

      if (![v34 BOOLValue] || v35)
      {
        if (!a5)
        {
LABEL_46:

          goto LABEL_47;
        }

        v49 = SESDefaultLogObject();
        v50 = SESCreateAndLogError();
      }

      else
      {
        v56 = v34;
        v36 = [@"A000000704C0000000000002" hexStringAsData];
        v37 = sub_10002FFE8(v8, v36);

        if (v37 <= 3 && (([@"A000000704C0000000000002" hexStringAsData], v38 = objc_claimAutoreleasedReturnValue(), v58 = 0, v39 = sub_100035698(v8, v38, objc_msgSend(v22, "number"), &v58), v35 = v58, v38, !v39) || v35))
        {
          v53 = [@"A000000704C0000000000002" hexStringAsData];
          v54 = sub_100030394(v8, v53, [v22 number]);

          [v22 resetToEmpty];
          if (!a5)
          {
            v34 = v56;
            goto LABEL_46;
          }

          v49 = SESDefaultLogObject();
          v50 = SESCreateAndLogError();
          v34 = v56;
        }

        else
        {
          v55 = v32;
          v40 = [@"A000000704C0000000000002" hexStringAsData];
          v41 = [v22 number];
          v42 = [v24 keyData];
          v57 = 0;
          v43 = sub_1000347E4(v8, v40, v41, v42, &v57);
          v35 = v57;

          if (v43 && !v35)
          {

LABEL_38:
            [v22 didLoadKey:v24];
LABEL_14:
            v23 = [LoadedKeySlot withKeySlot:v22 key:v24];
            goto LABEL_15;
          }

          v51 = [@"A000000704C0000000000002" hexStringAsData];
          v52 = sub_100030394(v8, v51, [v22 number]);

          [v22 resetToEmpty];
          v34 = v56;
          if (!a5)
          {
            v32 = v55;
            goto LABEL_46;
          }

          v49 = SESDefaultLogObject();
          v50 = SESCreateAndLogError();
          v32 = v55;
        }
      }

      *a5 = v50;

      goto LABEL_46;
    }

    if (a5)
    {
      v22 = SESDefaultLogObject();
      goto LABEL_8;
    }
  }

  else if (a5)
  {
    v22 = SESDefaultLogObject();
LABEL_8:
    SESCreateAndLogError();
    *a5 = v23 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v23 = 0;
LABEL_16:

  return v23;
}

- (id)findAndLoadKey:(id)a3 secureElement:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[_TtC10seserviced16SEFidoKeyManager singleton];
  v11 = [v9 relyingParty];
  v12 = [v9 relyingPartyAccountHash];
  v13 = [v9 fidoKeyHash];

  v29 = 0;
  v14 = [v10 findKeyForRelyingParty:v11 relyingPartyAccountHash:v12 fidoKeyHash:v13 secureElement:v8 error:&v29];
  v15 = v29;

  if (v14)
  {
    v28 = v15;
    v16 = [PTClassicKey withData:v14 error:&v28];
    v17 = v28;

    if (!v16 || v17)
    {
      v22 = +[_TtC10seserviced12SEFidoEvents keyDecodeError];
      [v10 reportCAEvent:v22];

      if (a5)
      {
        v23 = v17;
        v20 = 0;
        *a5 = v17;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v27 = 0;
      v18 = [(SESEndpointAndKeyXPCServer *)self getKeyHandle:v8 key:v16 error:&v27];
      v19 = v27;
      v17 = v19;
      if (!v18 || v19)
      {
        v24 = +[_TtC10seserviced12SEFidoEvents unspecifiedError];
        [v10 reportCAEvent:v24];

        if (a5)
        {
          v25 = v17;
          v20 = 0;
          *a5 = v17;
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = v18;
      }
    }

    v15 = v17;
  }

  else if (a5)
  {
    v21 = v15;
    v20 = 0;
    *a5 = v15;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)createSELegacyKey:(id)a3 subjectIdentifier:(id)a4 metaData:(id)a5 localValidationList:(id)a6 reply:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a3;
  v17 = SESDefaultLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v18 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) createSELegacyKey:subjectIdentifier:metaData:localValidationList:reply:]"];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100005DA8;
  v23[3] = &unk_1004C0B80;
  v26 = v14;
  v27 = v15;
  v23[4] = self;
  v24 = v12;
  v25 = v13;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  v22 = v15;
  [(SESEndpointAndKeyXPCServer *)self legacyKeyServiceAvailable:v16 reason:v18 reply:v23];
}

- (void)deleteSELegacyKey:(id)a3 keySlot:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v12 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) deleteSELegacyKey:keySlot:reply:]"];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000061AC;
  v15[3] = &unk_1004C0A08;
  v17 = self;
  v18 = v9;
  v16 = v8;
  v13 = v8;
  v14 = v9;
  [(SESEndpointAndKeyXPCServer *)self legacyKeyServiceAvailable:v10 reason:v12 reply:v15];
}

- (void)signWithSELegacyKey:(id)a3 keySlot:(id)a4 challenge:(id)a5 metaData:(id)a6 authorization:(id)a7 reply:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a3;
  v20 = SESDefaultLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v21 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) signWithSELegacyKey:keySlot:challenge:metaData:authorization:reply:]"];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10000666C;
  v27[3] = &unk_1004C0B80;
  v31 = v17;
  v32 = v18;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v22 = v17;
  v23 = v16;
  v24 = v15;
  v25 = v14;
  v26 = v18;
  [(SESEndpointAndKeyXPCServer *)self legacyKeyServiceAvailable:v19 reason:v21 reply:v27];
}

- (void)signPrecomputedWithSELegacyKey:(id)a3 keySlot:(id)a4 metaData:(id)a5 authorization:(id)a6 authorizationType:(id)a7 reply:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a3;
  v20 = SESDefaultLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v21 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) signPrecomputedWithSELegacyKey:keySlot:metaData:authorization:authorizationType:reply:]"];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100006914;
  v27[3] = &unk_1004C0B80;
  v31 = v17;
  v32 = v18;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v22 = v17;
  v23 = v16;
  v24 = v15;
  v25 = v14;
  v26 = v18;
  [(SESEndpointAndKeyXPCServer *)self legacyKeyServiceAvailable:v19 reason:v21 reply:v27];
}

- (void)getSELegacyKeyOccupiedSlots:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = SESDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v9 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) getSELegacyKeyOccupiedSlots:reply:]"];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100006B38;
  v11[3] = &unk_1004C0BC8;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [(SESEndpointAndKeyXPCServer *)self legacyKeyServiceAvailable:v7 reason:v9 reply:v11];
}

- (void)createSEKey:(id)a3 extractedACLs:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) createSEKey:extractedACLs:reply:]"];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100006CDC;
  v14[3] = &unk_1004C0A08;
  v16 = self;
  v17 = v9;
  v15 = v8;
  v12 = v8;
  v13 = v9;
  [(SESEndpointAndKeyXPCServer *)self keyServiceAvailable:v10 reason:v11 reply:v14];
}

- (id)_createSynchronizableKey:(id)a3 extractedACLs:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = SESDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "_createSynchronizableKey", buf, 2u);
  }

  v11 = +[_TtC10seserviced16SEKeySyncManager singleton];
  v12 = [v11 ptcViewName];
  v13 = [v11 getAvailableTLKForViewName:v12 secureElement:v8];

  if (v13)
  {
    *buf = 0;
    v45 = buf;
    v46 = 0x3032000000;
    v47 = sub_100007324;
    v48 = sub_100007334;
    v49 = 0;
    obj = 0;
    v14 = [(SESEndpointAndKeyXPCServer *)self _createKey:v8 acl:v9 error:&obj];
    objc_storeStrong(&v49, obj);
    if (v14 && !*(v45 + 5))
    {
      v42 = 0;
      if (!ACMContextCreate(&v42))
      {
        v18 = v42;
        if (v42)
        {
          v36 = 0;
          v37 = &v36;
          v38 = 0x3032000000;
          v39 = sub_100007324;
          v40 = sub_100007334;
          v41 = 0;
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_10000733C;
          v30[3] = &unk_1004C0BF0;
          v34 = &v36;
          v29 = v8;
          v31 = v29;
          v19 = v14;
          v32 = v19;
          v33 = v13;
          v35 = buf;
          ACMContextGetExternalForm(v18, v30);
          ACMContextDelete(v42, 1);
          v42 = 0;
          v20 = v37[5];
          if (v20 && !*(v45 + 5))
          {
            v16 = v20;
          }

          else
          {
            v21 = SESDefaultLogObject();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v22 = [v19 slot];
              v23 = [v22 number];
              v24 = *(v45 + 5);
              *v50 = 67109378;
              v51 = v23;
              v52 = 2112;
              v53 = v24;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to export key, deleting it from slot %d (%@)", v50, 0x12u);
            }

            v25 = [@"A000000704C0000000000002" hexStringAsData];
            [(SESEndpointAndKeyXPCServer *)self _deleteLoadedKey:v29 instanceAID:v25 loadedKey:v19 error:0];

            if (a5)
            {
              v26 = SESDefaultLogObject();
              *a5 = SESCreateAndLogError();
            }

            v16 = 0;
          }

          _Block_object_dispose(&v36, 8);
          goto LABEL_25;
        }
      }

      if (a5)
      {
        v27 = SESDefaultLogObject();
        *a5 = SESCreateAndLogError();
      }
    }

    else if (a5)
    {
      v15 = *(v45 + 5);
      SESEnsureError();
      *a5 = v16 = 0;
LABEL_25:

      _Block_object_dispose(buf, 8);
      goto LABEL_26;
    }

    v16 = 0;
    goto LABEL_25;
  }

  if (a5)
  {
    v17 = SESDefaultLogObject();
    *a5 = SESCreateAndLogError();
  }

  v16 = 0;
LABEL_26:

  return v16;
}

- (void)deleteSEKey:(id)a3 keyData:(id)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "", buf, 2u);
  }

  v12 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) deleteSEKey:keyData:reply:]"];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100007550;
  v14[3] = &unk_1004C0C18;
  v14[4] = self;
  v15 = v8;
  v13 = v8;
  [(SESEndpointAndKeyXPCServer *)self keyOperation:v10 keyData:v9 reason:v12 reply:v14];
}

- (void)signWithSEKey:(id)a3 keyData:(id)a4 data:(id)a5 algorithm:(id)a6 laExternalizedContext:(id)a7 reply:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v15 && v16 && v17 && v18)
  {
    v20 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) signWithSEKey:keyData:data:algorithm:laExternalizedContext:reply:]"];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100007814;
    v23[3] = &unk_1004C0C40;
    v27 = v19;
    v24 = v18;
    v25 = v16;
    v26 = v17;
    [(SESEndpointAndKeyXPCServer *)self keyOperation:v14 keyData:v15 reason:v20 reply:v23];
  }

  else
  {
    v21 = SESDefaultLogObject();
    v22 = SESCreateAndLogError();
    (*(v19 + 2))(v19, 0, v22);
  }
}

- (void)signPrecomputedDigest:(id)a3 keyData:(id)a4 digest:(id)a5 algorithm:(id)a6 laExternalizedContext:(id)a7 reply:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v15 && v16 && v17 && v18)
  {
    v20 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) signPrecomputedDigest:keyData:digest:algorithm:laExternalizedContext:reply:]"];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100007BA4;
    v23[3] = &unk_1004C0C40;
    v27 = v19;
    v24 = v18;
    v25 = v16;
    v26 = v17;
    [(SESEndpointAndKeyXPCServer *)self keyOperation:v14 keyData:v15 reason:v20 reply:v23];
  }

  else
  {
    v21 = SESDefaultLogObject();
    v22 = SESCreateAndLogError();
    (*(v19 + 2))(v19, 0, v22);
  }
}

- (void)sharedSecretWithSEKey:(id)a3 keyData:(id)a4 publicKey:(id)a5 algorithm:(id)a6 laExternalizedContext:(id)a7 reply:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = SESDefaultLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "", buf, 2u);
  }

  if (v15 && v16 && v17 && v18)
  {
    v21 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) sharedSecretWithSEKey:keyData:publicKey:algorithm:laExternalizedContext:reply:]"];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100007F74;
    v24[3] = &unk_1004C0C40;
    v28 = v19;
    v25 = v18;
    v26 = v16;
    v27 = v17;
    [(SESEndpointAndKeyXPCServer *)self keyOperation:v14 keyData:v15 reason:v21 reply:v24];

    v22 = v28;
  }

  else
  {
    v22 = SESDefaultLogObject();
    v23 = SESCreateAndLogError();
    (*(v19 + 2))(v19, 0, v23);
  }
}

- (void)encryptWithSEKey:(id)a3 plainText:(id)a4 publicKey:(id)a5 algorithm:(id)a6 laExternalizedContext:(id)a7 sharedInfo:(id)a8 authenticationData:(id)a9 reply:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = SESDefaultLogObject();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "", buf, 2u);
  }

  if (v16 && v17 && v19 && v20)
  {
    v25 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) encryptWithSEKey:plainText:publicKey:algorithm:laExternalizedContext:sharedInfo:authenticationData:reply:]"];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10000839C;
    v28[3] = &unk_1004C0C68;
    v35 = v23;
    v29 = v20;
    v30 = v17;
    v31 = v18;
    v32 = v21;
    v33 = v19;
    v34 = v22;
    [(SESEndpointAndKeyXPCServer *)self keyOperation:0 keyData:v16 reason:v25 reply:v28];

    v26 = v35;
  }

  else
  {
    v26 = SESDefaultLogObject();
    v27 = SESCreateAndLogError();
    (*(v23 + 2))(v23, 0, 0, v27);
  }
}

- (void)decryptWithSEKey:(id)a3 cipherText:(id)a4 publicKey:(id)a5 algorithm:(id)a6 laExternalizedContext:(id)a7 sharedInfo:(id)a8 authenticationData:(id)a9 authenticationTag:(id)a10 reply:(id)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = SESDefaultLogObject();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  if (v16 && v17 && v19 && v20)
  {
    v26 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) decryptWithSEKey:cipherText:publicKey:algorithm:laExternalizedContext:sharedInfo:authenticationData:authenticationTag:reply:]"];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10000885C;
    v38[3] = &unk_1004C0C90;
    v46 = v24;
    v39 = v20;
    v40 = v17;
    v41 = v18;
    v42 = v21;
    v43 = v19;
    v44 = v22;
    v45 = v23;
    [(SESEndpointAndKeyXPCServer *)self keyOperation:0 keyData:v16 reason:v26 reply:v38];

    v27 = v46;
  }

  else
  {
    v27 = SESDefaultLogObject();
    SESCreateAndLogError();
    v37 = v19;
    v28 = v20;
    v29 = v17;
    v30 = v16;
    v31 = v23;
    v32 = v22;
    v33 = v21;
    v35 = v34 = v18;
    (*(v24 + 2))(v24, 0, v35);

    v18 = v34;
    v21 = v33;
    v22 = v32;
    v23 = v31;
    v16 = v30;
    v17 = v29;
    v20 = v28;
    v19 = v37;
  }
}

- (void)rewrapWithSEKey:(id)a3 cipherText:(id)a4 publicKey:(id)a5 decryptAlgorithm:(id)a6 decryptSharedInfo:(id)a7 encryptAlgorithm:(id)a8 encryptSharedInfo:(id)a9 certificate:(id)a10 laExternalizedContext:(id)a11 decryptAuthenticationData:(id)a12 decryptAuthenticationTag:(id)a13 encryptAuthenticationData:(id)a14 reply:(id)a15
{
  v49 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v48 = a7;
  v23 = a8;
  v47 = a9;
  v24 = a10;
  v25 = a11;
  v45 = a12;
  v26 = a13;
  v27 = a14;
  v28 = a15;
  v29 = SESDefaultLogObject();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v46 = v27;

  v43 = v25;
  v44 = v22;
  v42 = v20;
  if (v49 && (v30 = v20) != 0 && v21 && v22 && v23 && v24 && v25)
  {
    v41 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) rewrapWithSEKey:cipherText:publicKey:decryptAlgorithm:decryptSharedInfo:encryptAlgorithm:encryptSharedInfo:certificate:laExternalizedContext:decryptAuthenticationData:decryptAuthenticationTag:encryptAuthenticationData:reply:]"];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100008DAC;
    v50[3] = &unk_1004C0CB8;
    v31 = v28;
    v62 = v28;
    v51 = v25;
    v52 = v30;
    v53 = v21;
    v32 = v22;
    v33 = v24;
    v34 = v48;
    v54 = v48;
    v55 = v45;
    v56 = v26;
    v57 = v32;
    v35 = v45;
    v36 = v47;
    v58 = v47;
    v37 = v46;
    v59 = v46;
    v60 = v23;
    v61 = v33;
    [(SESEndpointAndKeyXPCServer *)self keyOperation:0 keyData:v49 reason:v41 reply:v50];

    v38 = v62;
  }

  else
  {
    v38 = SESDefaultLogObject();
    SESCreateAndLogError();
    v39 = v33 = v24;
    v31 = v28;
    (*(v28 + 2))(v28, 0, 0, v39);

    v36 = v47;
    v34 = v48;
    v35 = v45;
    v37 = v46;
  }
}

- (void)createPTAttestation:(id)a3 keyData:(id)a4 subjectIdentifier:(id)a5 nonce:(id)a6 OIDs:(id)a7 reply:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = +[NSXPCConnection currentConnection];
  v21 = sub_100035A18(SESClientInfo, v20);

  if ((sub_1003AD26C(v21) & 1) == 0)
  {
    v24 = SESDefaultLogObject();
LABEL_9:
    v25 = SESCreateAndLogError();
    v19[2](v19, 0, v25);

    goto LABEL_10;
  }

  v22 = SESDefaultLogObject();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  if (!v15 || !v16)
  {
    v24 = SESDefaultLogObject();
    goto LABEL_9;
  }

  v23 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) createPTAttestation:keyData:subjectIdentifier:nonce:OIDs:reply:]"];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100009240;
  v26[3] = &unk_1004C0C40;
  v30 = v19;
  v27 = v18;
  v28 = v16;
  v29 = v17;
  [(SESEndpointAndKeyXPCServer *)self keyOperation:v14 keyData:v15 reason:v23 reply:v26];

LABEL_10:
}

- (void)getCASDCertificate:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSXPCConnection currentConnection];
  v9 = sub_100035A18(SESClientInfo, v8);

  if (sub_1003AD26C(v9))
  {
    v10 = SESDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "", buf, 2u);
    }

    v11 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) getCASDCertificate:reply:]"];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100009790;
    v14[3] = &unk_1004C0CE0;
    v15 = v7;
    [(SESEndpointAndKeyXPCServer *)self keyServiceAvailable:v6 reason:v11 reply:v14];
  }

  else
  {
    v12 = SESDefaultLogObject();
    v13 = SESCreateAndLogError();
    (*(v7 + 2))(v7, 0, v13);
  }
}

- (void)createSEABAASCertificate:(id)a3 subjectIdentifier:(id)a4 nonce:(id)a5 OIDs:(id)a6 validityInterval:(id)a7 reply:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = SESDefaultLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "createSEABAASCertificate", buf, 2u);
  }

  if (v14)
  {
    v21 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) createSEABAASCertificate:subjectIdentifier:nonce:OIDs:validityInterval:reply:]"];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100009AC0;
    v24[3] = &unk_1004C0D08;
    v29 = v19;
    v24[4] = self;
    v25 = v15;
    v26 = v16;
    v27 = v17;
    v28 = v18;
    [(SESEndpointAndKeyXPCServer *)self keyOperation:0 keyData:v14 reason:v21 reply:v24];

    v22 = v29;
  }

  else
  {
    v22 = SESDefaultLogObject();
    v23 = SESCreateAndLogError();
    (*(v19 + 2))(v19, 0, v23);
  }
}

- (id)_getBAACertificatesForKey:(id)a3 key:(id)a4 subjectIdentifier:(id)a5 nonce:(id)a6 OIDs:(id)a7 validityInterval:(id)a8 error:(id *)a9
{
  v44 = a3;
  v15 = a4;
  v45 = a5;
  v46 = a6;
  v16 = a7;
  v43 = a8;
  v17 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(v17);

  v18 = SESDefaultLogObject();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [v15 slot];
    v20 = [v19 number];
    v21 = [v15 key];
    *buf = 67109376;
    v54 = v20;
    v55 = 1024;
    v56 = [v21 keyNumber];
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "_getBAACertificatesForKey Attest with slot %u key 0x%x", buf, 0xEu);
  }

  v22 = +[NSMutableData data];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v23 = v16;
  v24 = [v23 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v49;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v49 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v48 + 1) + 8 * i);
        if ([v28 isEqualToString:@"1.2.840.113635.100.6.65.16"])
        {
          v29 = 16;
        }

        else if ([v28 isEqualToString:@"1.2.840.113635.100.6.65.17"])
        {
          v29 = 17;
        }

        else
        {
          if (![v28 isEqualToString:@"1.2.840.113635.100.6.65.19"])
          {
            continue;
          }

          v29 = 19;
        }

        [v22 appendU8:v29];
      }

      v25 = [v23 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v25);
  }

  v30 = [@"A000000704C0000000000002" hexStringAsData];
  v47 = 0;
  v31 = v45;
  v32 = v46;
  v33 = sub_100032E80(v44, v30, v15, v45, v22, v46, 1, &v47);
  v34 = v47;

  v42 = v15;
  if (!v33 || v34)
  {
    if (a9)
    {
      SESEnsureError();
      *a9 = v40 = 0;
    }

    else
    {
      v40 = 0;
    }

    v39 = v43;
  }

  else
  {
    v35 = +[SEABAAManager sharedManager];
    v37 = sub_1003AF3C4(v44, v36);
    v38 = [v37 casdCertificate];
    v39 = v43;
    v40 = [v35 PerformSEABAAWithAttestation:v33 casdCertificate:v38 nonce:v46 OIDs:v23 validityInterval:v43 error:a9];

    v31 = v45;
    v32 = v46;
  }

  return v40;
}

- (void)getSESKeySupportedFeatures:(id)a3
{
  v4 = a3;
  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "getSESKeySupportedFeatures", buf, 2u);
  }

  v6 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) getSESKeySupportedFeatures:]"];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000A064;
  v8[3] = &unk_1004C0CE0;
  v9 = v4;
  v7 = v4;
  [(SESEndpointAndKeyXPCServer *)self keyServiceAvailable:0 reason:v6 reply:v8];
}

- (void)createCertificateForKeyData:(id)a3 withKeyData:(id)a4 subjectIdentifier:(id)a5 authorityIdentifier:(id)a6 laExternalizedContext:(id)a7 nonce:(id)a8 OIDs:(id)a9 reply:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = SESDefaultLogObject();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  if (v16 && v17 && v18 && v19 && v20)
  {
    v33 = self;
    v34 = v21;
    v45 = 0;
    v25 = [PTClassicKey withData:v16 error:&v45];
    v26 = v45;
    v27 = v26;
    if (!v25 || v26)
    {
      v23[2](v23, 0, v26);
    }

    else
    {
      v44 = 0;
      v28 = [PTClassicKey withData:v17 error:&v44];
      v29 = v44;
      v27 = v29;
      if (!v28 || v29)
      {
        v23[2](v23, 0, v29);
        v30 = v28;
        v21 = v34;
      }

      else
      {
        v32 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) createCertificateForKeyData:withKeyData:subjectIdentifier:authorityIdentifier:laExternalizedContext:nonce:OIDs:reply:]"];
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_10000A524;
        v35[3] = &unk_1004C0D30;
        v43 = v23;
        v35[4] = v33;
        v36 = v25;
        v37 = v28;
        v38 = v22;
        v39 = v20;
        v40 = v18;
        v41 = v19;
        v31 = v28;
        v21 = v34;
        v42 = v34;
        [(SESEndpointAndKeyXPCServer *)v33 keyServiceAvailable:0 reason:v32 reply:v35];

        v30 = v31;
      }
    }
  }

  else
  {
    v27 = SESDefaultLogObject();
    v25 = SESCreateAndLogError();
    v23[2](v23, 0, v25);
  }
}

- (void)updateACLForSEKey:(id)a3 extractedACLs:(id)a4 laExternalizedContext:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10 && v11 && v12)
  {
    v14 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) updateACLForSEKey:extractedACLs:laExternalizedContext:reply:]"];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000AA70;
    v17[3] = &unk_1004C0D58;
    v20 = v13;
    v18 = v12;
    v19 = v11;
    [(SESEndpointAndKeyXPCServer *)self keyOperation:0 keyData:v10 reason:v14 reply:v17];
  }

  else
  {
    v15 = SESDefaultLogObject();
    v16 = SESCreateAndLogError();
    (*(v13 + 2))(v13, 0, v16);
  }
}

- (void)checkKeyValidity:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_semaphore_create(0);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v9 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) checkKeyValidity:completion:]"];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000AE9C;
  v11[3] = &unk_1004C0D80;
  v13 = &v14;
  v10 = v8;
  v12 = v10;
  [(SESEndpointAndKeyXPCServer *)self keyOperation:0 keyData:v6 reason:v9 reply:v11];

  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v7[2](v7, *(v15 + 24));

  _Block_object_dispose(&v14, 8);
}

- (void)designateKey:(id)a3 designation:(id)a4 handoffToken:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = SESDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412546;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "designateKey %@ %@", &v16, 0x16u);
  }

  v15 = [v11 integerValue];
  if (v10)
  {
    [(SESEndpointAndKeyXPCServer *)self setDesignation:v10 designation:v15 handoffToken:v12 completion:v13];
  }

  else
  {
    [(SESEndpointAndKeyXPCServer *)self removeDesignation:v15 completion:v13];
  }
}

- (void)setDesignation:(id)a3 designation:(int64_t)a4 handoffToken:(id)a5 completion:(id)a6
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000B0A8;
  v11[3] = &unk_1004C0DA8;
  v12 = a6;
  v13 = a4;
  v10 = v12;
  [(SESEndpointAndKeyXPCServer *)self keyOperation:0 handoffToken:a5 keyData:a3 reason:@"designateKey" reply:v11];
}

- (void)removeDesignation:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  if (!a3)
  {
    v8 = SESDefaultLogObject();
    v10 = SESCreateAndLogError();
    v6[2](v6, 0, v10);
LABEL_6:

    goto LABEL_7;
  }

  v7 = +[NSXPCConnection currentConnection];
  v8 = sub_100035A18(SESClientInfo, v7);

  if ((sub_1003AD244(v8) & 1) == 0)
  {
    v10 = SESDefaultLogObject();
    v11 = SESCreateAndLogError();
    v6[2](v6, 0, v11);

    goto LABEL_6;
  }

  v9 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B600;
  block[3] = &unk_1004C0DD0;
  v13 = v6;
  v14 = a3;
  block[4] = self;
  dispatch_async(v9, block);

LABEL_7:
}

- (void)createFiDOKeyForRelyingParty:(id)a3 relyingPartyAccountHash:(id)a4 challenge:(id)a5 usingProxy:(id)a6 callback:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = SESDefaultLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v18 = +[_TtC10seserviced16SEFidoKeyManager singleton];
  v19 = +[NSXPCConnection currentConnection];
  v20 = sub_100035A18(SESClientInfo, v19);

  if ((sub_1003AD280(v20) & 1) != 0 && v12 && v13 && v14)
  {
    v21 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) createFiDOKeyForRelyingParty:relyingPartyAccountHash:challenge:usingProxy:callback:]"];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10000BB2C;
    v25[3] = &unk_1004C0DF8;
    v26 = v18;
    v31 = v16;
    v27 = self;
    v28 = v12;
    v29 = v13;
    v30 = v14;
    [(SESEndpointAndKeyXPCServer *)self keyServiceAvailable:v15 reason:v21 reply:v25];

    v22 = v26;
  }

  else
  {
    v23 = +[_TtC10seserviced12SEFidoEvents callerError];
    [v18 reportCAEvent:v23];

    v22 = SESDefaultLogObject();
    v24 = SESCreateAndLogError();
    (*(v16 + 2))(v16, 0, v24);
  }
}

- (id)_aclForFidoAttestingKey
{
  v2 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleAfterFirstUnlock, 0, 0);
  SecAccessControlSetConstraints();

  return v2;
}

- (id)_createKey:(id)a3 acl:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(v10);

  v11 = [(SESEndpointAndKeyXPCServer *)self getUsableKeySlot:@"A000000704C0000000000002"];
  if (v11)
  {
    v12 = SESDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      LODWORD(v32) = [v11 number];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Creating key in slot %u", buf, 8u);
    }

    v13 = [@"A000000704C0000000000002" hexStringAsData];
    v30 = 0;
    v14 = sub_10002F8AC(v8, v13, [v11 number], v9, &v30);
    v15 = v30;

    if (!v14 || v15)
    {
      [v11 resetToEmpty];
      v22 = [@"A000000704C0000000000002" hexStringAsData];
      v23 = sub_100030394(v8, v22, [v11 number]);

      if (a5)
      {
        SESEnsureError();
        *a5 = v18 = 0;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v29 = 0;
      v16 = [PTClassicKey withData:v14 error:&v29];
      v17 = v29;
      v15 = v17;
      if (!v16 || v17)
      {
        v24 = SESDefaultLogObject();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = [v11 number];
          *buf = 67109120;
          LODWORD(v32) = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to create key object, resetting and deleting slot %d", buf, 8u);
        }

        [v11 resetToEmpty];
        v26 = [@"A000000704C0000000000002" hexStringAsData];
        v27 = sub_100030394(v8, v26, [v11 number]);

        if (a5)
        {
          SESEnsureError();
          *a5 = v18 = 0;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        [v11 didLoadKey:v16];
        v18 = [LoadedKeySlot withKeySlot:v11 key:v16];
        v19 = SESDefaultLogObject();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v11 number];
          *buf = 138412546;
          v32 = v16;
          v33 = 1024;
          v34 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Created key %@ in slot %u", buf, 0x12u);
        }
      }
    }
  }

  else
  {
    if (a5)
    {
      v21 = SESDefaultLogObject();
      *a5 = SESCreateAndLogError();
    }

    v18 = 0;
  }

  return v18;
}

- (BOOL)_deleteLoadedKey:(id)a3 instanceAID:(id)a4 loadedKey:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(v13);

  v14 = SESDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [v10 key];
    v16 = [v10 slot];
    v25 = 138412546;
    v26 = v15;
    v27 = 1024;
    v28 = [v16 number];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Deleting key %@ in slot %d", &v25, 0x12u);
  }

  v17 = [v10 slot];
  v18 = sub_100030394(v12, v11, [v17 number]);

  v19 = [v10 slot];
  [v19 resetToEmpty];

  v20 = [_TtC10seserviced35SESKeyDesignationStorageCoordinator getAndReturnError:0];
  v21 = [v10 key];
  v22 = [v21 keyIdentifier];
  [v20 removeDesignationWithKeyIdentifier:v22];

  if (a6)
  {
    v23 = v18;
    *a6 = v18;
  }

  return v18 == 0;
}

- (void)checkMultipleFidoKeyPresence:(id)a3 usingProxy:(id)a4 callback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v12 = +[_TtC10seserviced16SEFidoKeyManager singleton];
  v13 = +[NSXPCConnection currentConnection];
  v14 = sub_100035A18(SESClientInfo, v13);

  if ((sub_1003AD280(v14) & 1) != 0 && v8)
  {
    v15 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) checkMultipleFidoKeyPresence:usingProxy:callback:]"];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10000CE64;
    v19[3] = &unk_1004C0E20;
    v20 = v12;
    v22 = v10;
    v21 = v8;
    [(SESEndpointAndKeyXPCServer *)self keyServiceAvailable:v9 reason:v15 reply:v19];

    v16 = v20;
  }

  else
  {
    v17 = +[_TtC10seserviced12SEFidoEvents callerError];
    [v12 reportCAEvent:v17];

    v16 = SESDefaultLogObject();
    v18 = SESCreateAndLogError();
    (*(v10 + 2))(v10, 0, v18);
  }
}

- (void)findAndAttest:(id)a3 challenge:(id)a4 usingProxy:(id)a5 callback:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = +[_TtC10seserviced16SEFidoKeyManager singleton];
  v15 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) findAndAttest:challenge:usingProxy:callback:]"];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000D2F0;
  v20[3] = &unk_1004C0E48;
  v24 = v11;
  v25 = v12;
  v21 = v14;
  v22 = self;
  v23 = v10;
  v16 = v11;
  v17 = v10;
  v18 = v12;
  v19 = v14;
  [(SESEndpointAndKeyXPCServer *)self keyServiceAvailable:v13 reason:v15 reply:v20];
}

- (void)signMultipleWithFidoKeysFor:(id)a3 challenges:(id)a4 forEndpointIdentifiers:(id)a5 externalizedAuth:(id)a6 usingProxy:(id)a7 callback:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = SESDefaultLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v21 = +[_TtC10seserviced16SEFidoKeyManager singleton];
  v22 = +[NSXPCConnection currentConnection];
  v23 = sub_100035A18(SESClientInfo, v22);

  if ((sub_1003AD280(v23) & 1) != 0 && v14 && v15 && v17 && (v24 = [v14 count], v24 == objc_msgSend(v15, "count")) && (!v16 || (v25 = objc_msgSend(v15, "count"), v25 == objc_msgSend(v16, "count"))))
  {
    v26 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) signMultipleWithFidoKeysFor:challenges:forEndpointIdentifiers:externalizedAuth:usingProxy:callback:]"];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10000D9E0;
    v30[3] = &unk_1004C0E70;
    v31 = v21;
    v37 = v19;
    v32 = v14;
    v33 = v15;
    v34 = self;
    v35 = v16;
    v36 = v17;
    [(SESEndpointAndKeyXPCServer *)self keyServiceAvailable:v18 reason:v26 reply:v30];

    v27 = v31;
  }

  else
  {
    v28 = +[_TtC10seserviced12SEFidoEvents callerError];
    [v21 reportCAEvent:v28];

    v27 = SESDefaultLogObject();
    v29 = SESCreateAndLogError();
    (*(v19 + 2))(v19, 0, v29);
  }
}

- (void)verifyWithFidoKeyFor:(id)a3 signedChallenge:(id)a4 usingProxy:(id)a5 callback:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = SESDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v15 = +[_TtC10seserviced16SEFidoKeyManager singleton];
  v16 = +[NSXPCConnection currentConnection];
  v17 = sub_100035A18(SESClientInfo, v16);

  if ((sub_1003AD280(v17) & 1) != 0 && v10 && v11)
  {
    v18 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) verifyWithFidoKeyFor:signedChallenge:usingProxy:callback:]"];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10000E1C0;
    v22[3] = &unk_1004C0E98;
    v23 = v15;
    v26 = v13;
    v24 = v10;
    v25 = v11;
    [(SESEndpointAndKeyXPCServer *)self keyServiceAvailable:v12 reason:v18 reply:v22];

    v19 = v23;
  }

  else
  {
    v20 = +[_TtC10seserviced12SEFidoEvents callerError];
    [v15 reportCAEvent:v20];

    v19 = SESDefaultLogObject();
    v21 = SESCreateAndLogError();
    (*(v13 + 2))(v13, &off_1004DC8E8, v21);
  }
}

- (void)deleteFiDOKeyFor:(id)a3 usingProxy:(id)a4 callback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v12 = +[NSXPCConnection currentConnection];
  v13 = sub_100035A18(SESClientInfo, v12);

  if ((sub_1003AD280(v13) & 1) != 0 && v8)
  {
    v14 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) deleteFiDOKeyFor:usingProxy:callback:]"];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000E7C4;
    v17[3] = &unk_1004C0BC8;
    v19 = v10;
    v18 = v8;
    [(SESEndpointAndKeyXPCServer *)self keyServiceAvailable:v9 reason:v14 reply:v17];

    v15 = v19;
  }

  else
  {
    v15 = SESDefaultLogObject();
    v16 = SESCreateAndLogError();
    (*(v10 + 2))(v10, 0, v16);
  }
}

- (void)createPrivacyKeyForGroupIdentifier:(id)a3 withOptions:(id)a4 completion:(id)a5
{
  v13 = a3;
  v7 = a4;
  v8 = a5;
  v9 = +[NSXPCConnection currentConnection];
  v10 = sub_100035A18(SESClientInfo, v9);

  if ((sub_1003AD294(v10) & 1) != 0 && v13)
  {
    [_TtC10seserviced27SESPrivacyKeyImplementation createPrivacyKeyWithGroupIdentifier:v13 options:v7 completion:v8];
  }

  else
  {
    v11 = SESDefaultLogObject();
    v12 = SESCreateAndLogError();
    v8[2](v8, 0, v12);
  }
}

- (void)privacyKeysForGroupIdentifier:(id)a3 keyIdentifier:(id)a4 completion:(id)a5
{
  v13 = a3;
  v7 = a4;
  v8 = a5;
  v9 = +[NSXPCConnection currentConnection];
  v10 = sub_100035A18(SESClientInfo, v9);

  if ((sub_1003AD294(v10) & 1) != 0 && v13)
  {
    [_TtC10seserviced27SESPrivacyKeyImplementation getPrivacyKeyWithGroupIdentifier:v13 keyIdentifier:v7 completion:v8];
  }

  else
  {
    v11 = SESDefaultLogObject();
    v12 = SESCreateAndLogError();
    v8[2](v8, 0, v12);
  }
}

- (void)deletePrivacyKey:(id)a3 completion:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = +[NSXPCConnection currentConnection];
  v7 = sub_100035A18(SESClientInfo, v6);

  if ((sub_1003AD294(v7) & 1) != 0 && v10)
  {
    [_TtC10seserviced27SESPrivacyKeyImplementation deletePrivacyKey:v10 completion:v5];
  }

  else
  {
    v8 = SESDefaultLogObject();
    v9 = SESCreateAndLogError();
    v5[2](v5, 0, v9);
  }
}

- (void)decryptPayload:(id)a3 withGroupIdentifier:(id)a4 completion:(id)a5
{
  v13 = a3;
  v7 = a4;
  v8 = a5;
  v9 = +[NSXPCConnection currentConnection];
  v10 = sub_100035A18(SESClientInfo, v9);

  if ((sub_1003AD294(v10) & 1) != 0 && v13 && v7)
  {
    [SESPrivacyKeyImplementation decryptPayload:"decryptPayload:groupIdentifier:completion:" groupIdentifier:? completion:?];
  }

  else
  {
    v11 = SESDefaultLogObject();
    v12 = SESCreateAndLogError();
    v8[2](v8, 0, v12);
  }
}

- (void)encryptPayload:(id)a3 encryptionScheme:(id)a4 recipientPublicKey:(id)a5 completion:(id)a6
{
  v16 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = +[NSXPCConnection currentConnection];
  v13 = sub_100035A18(SESClientInfo, v12);

  if ((sub_1003AD294(v13) & 1) != 0 && v16 && v9 && v10)
  {
    [SESPrivacyKeyImplementation encryptPayload:"encryptPayload:scheme:recipientPublicKey:completion:" scheme:? recipientPublicKey:? completion:?];
  }

  else
  {
    v14 = SESDefaultLogObject();
    v15 = SESCreateAndLogError();
    v11[2](v11, 0, v15);
  }
}

- (void)endPointServiceAvailableWithProxy:(id)a3 reason:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v12 = [(SESEndpointAndKeyXPCServer *)self database];

  if (!v12)
  {
    v14 = SESDefaultLogObject();
    v15 = SESCreateAndLogError();
    (*(v10 + 2))(v10, 0, 0, v15);

    if (v8)
    {
      goto LABEL_5;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_5:
  v13 = sub_100050E34(SEProxyAdapter, v8);
LABEL_8:
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100017B58;
  v17[3] = &unk_1004C0990;
  v17[4] = self;
  v18 = v10;
  v16 = v10;
  sub_100055378(SecureElementManager, v13, 0, v9, v17);
}

- (void)proximityAndEndpointService:(id)a3 reason:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100017E98;
  v15[3] = &unk_1004C1700;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [SESProximityChip cacheProximityChipData:v11 completion:v15];
}

- (void)databaseServiceWithProxy:(id)a3 isReconcileRequired:(BOOL)a4 reason:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = SESDefaultLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v14 = [(SESEndpointAndKeyXPCServer *)self database];

  if (!v14)
  {
    v15 = SESDefaultLogObject();
    v16 = SESCreateAndLogError();
    v12[2](v12, 0, v16);
  }

  v17 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018200;
  block[3] = &unk_1004C1778;
  v25 = a4;
  block[4] = self;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v18 = v11;
  v19 = v10;
  v20 = v12;
  dispatch_async(v17, block);
}

- (void)secureElementService:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = SESDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100018668;
  v10[3] = &unk_1004C0990;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  sub_1003AF710(SecureElementManager, v7, v10);
}

- (void)endPointAction:(id)a3 proxy:(id)a4 clientInfo:(id)a5 reason:(id)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (sub_1003AD208(v14) & 1) != 0 || (sub_1003AD230(v14))
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000189CC;
    v19[3] = &unk_1004C17A0;
    v22 = v16;
    v19[4] = self;
    v20 = v12;
    v21 = v14;
    [(SESEndpointAndKeyXPCServer *)self endPointServiceAvailableWithProxy:v13 reason:v15 reply:v19];
  }

  else
  {
    v17 = SESDefaultLogObject();
    v18 = SESCreateAndLogError();
    (*(v16 + 2))(v16, 0, 0, 0, 0, v18);
  }
}

- (void)endPointDBAction:(id)a3 clientInfo:(id)a4 reason:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (sub_1003AD208(v11) & 1) != 0 || (sub_1003AD230(v11))
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100018C44;
    v16[3] = &unk_1004C17C8;
    v19 = v13;
    v16[4] = self;
    v17 = v10;
    v18 = v11;
    [(SESEndpointAndKeyXPCServer *)self databaseServiceWithProxy:0 isReconcileRequired:0 reason:v12 reply:v16];
  }

  else
  {
    v14 = SESDefaultLogObject();
    v15 = SESCreateAndLogError();
    (*(v13 + 2))(v13, 0, 0, 0, v15);
  }
}

- (id)_getEndPointAndValidateAccess:(id)a3 identifier:(id)a4 clientInfo:(id)a5 outEndPointEntity:(id *)a6 outEndPoint:(id *)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a3;
  v15 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(v15);

  v32 = 0;
  v16 = sub_10003C954(SESEndpointDatabase, v14, &v32);

  v17 = v32;
  if (v17)
  {
    v18 = v17;
    v19 = v18;
  }

  else
  {
    v29[1] = _NSConcreteStackBlock;
    v29[2] = 3221225472;
    v29[3] = sub_100018F54;
    v29[4] = &unk_1004C17F0;
    v30 = v12;
    v20 = v13;
    v31 = v20;
    v21 = Find();
    if (v21)
    {
      v29[0] = 0;
      v22 = sub_10003CCA4(SESEndpointDatabase, v21, v29);
      v23 = v29[0];
      v18 = v23;
      if (v23 || !v22)
      {
        v18 = v23;
        v19 = v18;
      }

      else
      {
        v24 = v22;
        *a7 = v22;
        v25 = v21;
        v19 = 0;
        *a6 = v21;
      }
    }

    else
    {
      v22 = SESDefaultLogObject();
      v28 = sub_1003AD1F4(v20, v26);
      v19 = SESCreateAndLogError();

      v18 = 0;
    }
  }

  return v19;
}

- (void)preWarmAlisha:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SESDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v9 = +[NSXPCConnection currentConnection];
  v10 = sub_100035A18(SESClientInfo, v9);

  if (sub_1003AD208(v10) & 1) != 0 || (sub_1003AD230(v10))
  {
    v11 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) preWarmAlisha:reply:]"];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000192C4;
    v14[3] = &unk_1004C1818;
    v17 = v7;
    v14[4] = self;
    v15 = v6;
    v16 = v10;
    [(SESEndpointAndKeyXPCServer *)self proximityAndEndpointService:0 reason:v11 completion:v14];

    v12 = v17;
  }

  else
  {
    v12 = SESDefaultLogObject();
    v13 = SESCreateAndLogError();
    (*(v7 + 2))(v7, v13);
  }
}

- (BOOL)_preWarmAlishaInternal:(id)a3 handle:(id)a4 proximityChipInfo:(id)a5 manufactuer:(id)a6 clientName:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(v19);

  v20 = [v16 isSupported];
  v21 = SESDefaultLogObject();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v32 = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Prewarming Alisha (Sunsprite is to be SLAM'd %d)", buf, 8u);
  }

  buf[0] = 0;
  v22 = sub_100013800(v14, v20 | 8, buf, v16);
  if (v22)
  {
    goto LABEL_7;
  }

  if (buf[0] == 1)
  {
    v23 = [(SESEndpointAndKeyXPCServer *)self database];
    v24 = sub_1003AC964(v23, v14, 1);

    if (v24)
    {
      goto LABEL_8;
    }
  }

  v22 = sub_100050120(v14);
  if (v22)
  {
    goto LABEL_7;
  }

  if (v20)
  {
    v22 = sub_100014918(v14, 1, v16);
    if (v22)
    {
LABEL_7:
      v24 = v22;
      goto LABEL_8;
    }

    v28 = +[_TtC10seserviced3DSK queue];
    dispatch_async(v28, &stru_1004C1838);
  }

  if (!v17)
  {
    v24 = 0;
    v26 = 1;
    goto LABEL_11;
  }

  v30 = 0;
  v26 = 1;
  v29 = [(SESEndpointAndKeyXPCServer *)self _ensureCAExistsAndValid:v17 clientName:v18 secureElement:v14 handle:v15 forEndPointType:1 error:&v30];
  v24 = v30;
  if (!v24)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (a8)
  {
    v25 = v24;
    v26 = 0;
    *a8 = v24;
  }

  else
  {
    v26 = 0;
  }

LABEL_11:

  return v26;
}

- (id)_createEndPointCA:(id)a3 handle:(id)a4 clientName:(id)a5 identifier:(id)a6 subjectIdentifier:(id)a7 forEndPointType:(int64_t)a8 error:(id *)a9
{
  v40 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v41 = a7;
  v18 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(v18);

  v19 = SESDefaultLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v17;
    *&buf[12] = 2112;
    *&buf[14] = v41;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "_createEndPointCA identifier %@ subjectIdentifier %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v70 = sub_100019DE8;
  v71 = sub_100019DF8;
  v72 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = sub_100019DE8;
  v65 = sub_100019DF8;
  v66 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = sub_100019DE8;
  v59 = sub_100019DF8;
  obj = 0;
  v20 = sub_1000431F8(SESEndpointDatabase, v17, v16, v15, &obj);
  objc_storeStrong(&v72, obj);
  v60 = v20;
  v21 = *(*&buf[8] + 40);
  if (v21)
  {
    if (a9)
    {
      v22 = 0;
      *a9 = v21;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v56[5])
  {
    if (a9)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if ([v41 length] >= 0x1F)
  {
    if (a9)
    {
LABEL_11:
      v23 = SESDefaultLogObject();
      *a9 = SESCreateAndLogError();
    }

LABEL_12:
    v22 = 0;
    goto LABEL_13;
  }

  v25 = *&buf[8];
  v53 = *(*&buf[8] + 40);
  v26 = sub_100043874(v40, a8, &v53);
  objc_storeStrong((v25 + 40), v53);
  v27 = (*&buf[8] + 40);
  if (!*(*&buf[8] + 40))
  {
    v52 = 0;
    v28 = sub_1000598B8(SESEndpointDatabase, v26, v15, &v52);
    objc_storeStrong(v27, v52);
    if (*(*&buf[8] + 40) || !v28)
    {
      if (!a9)
      {
        v22 = 0;
        goto LABEL_37;
      }

      v39 = SESDefaultLogObject();
      SESCreateAndLogError();
      *a9 = v22 = 0;
    }

    else
    {
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_100019E00;
      v42[3] = &unk_1004C1860;
      v48 = &v55;
      v43 = v17;
      v29 = v28;
      v44 = v29;
      v45 = v16;
      v49 = buf;
      v50 = &v61;
      v30 = v40;
      v46 = v30;
      v31 = v41;
      v47 = v31;
      v51 = a8;
      sub_1003AD2A8(v15, v42);
      if (*(*&buf[8] + 40) && v62[5])
      {
        v32 = SESDefaultLogObject();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *v67 = 0;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "CA creation failed and requires cleanup ...", v67, 2u);
        }

        v33 = [v29 identifier];
        v34 = [v33 hexStringAsData];
        v35 = sub_100046048(v30, v34, v31);

        if (v35)
        {
          v36 = SESDefaultLogObject();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *v67 = 138412290;
            v68 = v35;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Failed to clean up EPCA : %@", v67, 0xCu);
          }
        }

        v37 = v62[5];
        v62[5] = 0;

        v38 = v56[5];
        v56[5] = 0;
      }

      if (a9)
      {
        *a9 = *(*&buf[8] + 40);
      }

      v22 = v56[5];

      v39 = v43;
    }

LABEL_37:
    goto LABEL_38;
  }

  if (a9)
  {
    v28 = SESDefaultLogObject();
    SESCreateAndLogError();
    *a9 = v22 = 0;
    goto LABEL_37;
  }

  v22 = 0;
LABEL_38:

LABEL_13:
  _Block_object_dispose(&v55, 8);

  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(buf, 8);

  return v22;
}

- (void)cleanupAppletsWithNoEndpoints:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSXPCConnection currentConnection];
  v9 = sub_100035A18(SESClientInfo, v8);

  if (sub_1003AD208(v9) & 1) != 0 || (sub_1003AD230(v9))
  {
    v10 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) cleanupAppletsWithNoEndpoints:reply:]"];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001A834;
    v13[3] = &unk_1004C18F0;
    v13[4] = self;
    v14 = v7;
    [(SESEndpointAndKeyXPCServer *)self endPointServiceAvailableWithProxy:v6 reason:v10 reply:v13];
  }

  else
  {
    v11 = SESDefaultLogObject();
    v12 = SESCreateAndLogError();
    (*(v7 + 2))(v7, 0, v12);
  }
}

- (id)_cleanupAppletsWithNoEndpoints:(id)a3 handle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(v8);

  v22 = 0;
  v9 = sub_10003C954(SESEndpointDatabase, v7, &v22);

  v10 = v22;
  if (v10 || !v9)
  {
    v14 = SESEnsureError();
  }

  else
  {
    v11 = [v9 count];
    v10 = SESDefaultLogObject();
    v12 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v11)
    {
      if (v12)
      {
        v13 = [v9 count];
        *buf = 134217984;
        v24 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%lu endpoints found, skipping cleanup", buf, 0xCu);
      }

      v14 = 0;
    }

    else
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "No endpoints found, deleting unused Applets", buf, 2u);
      }

      v15 = sub_1003AAA98(v6, "SLAMDeleteCopernicusAndSunsprite");
      if (v15)
      {
        v16 = SESDefaultLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v24 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to delete applets %@", buf, 0xCu);
        }
      }

      v17 = [@"A000000809434343444B417631" hexStringAsData];
      v21 = v15;
      sub_100044F68(v6, v17, 1, &v21);
      v14 = v21;

      v18 = [(SESEndpointAndKeyXPCServer *)self database];
      v19 = sub_1003AC964(v18, v6, 1);

      v10 = sub_10005FC78();
      sub_100060C88(v10, v6);
    }
  }

  return v14;
}

- (id)_renewEndPointCAIfExpired:(id)a3 secureElement:(id)a4 forEndPointType:(int64_t)a5 handle:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(v13);

  v40 = 0;
  v14 = sub_100043738(SESEndpointDatabase, v10, &v40);
  v15 = v40;
  if (v15 || v14)
  {
    v18 = v15;
    v19 = v18;
    goto LABEL_21;
  }

  v39 = 0;
  v16 = sub_1000433C4(SESEndpointDatabase, v10, &v39);
  v17 = v39;
  if (!v17)
  {
    v20 = SESDefaultLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [v10 identifier];
      *buf = 138412546;
      v45 = v21;
      v46 = 1024;
      v47 = a5;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Renewing expired SEEndPointCA %@ with type %d", buf, 0x12u);
    }

    v22 = +[SEABAAManager sharedManager];
    v37 = v16;
    v23 = [v16 secureElementAttestation];
    v25 = sub_1003AF3C4(v11, v24);
    v26 = [v25 casdCertificate];
    v38 = 0;
    v27 = [v22 PerformSEABAAWithAttestation:v23 casdCertificate:v26 nonce:0 OIDs:0 validityInterval:0 error:&v38];
    v18 = v38;

    if (v18)
    {
      v19 = v18;
      v28 = v27;
LABEL_10:
      v16 = v37;
LABEL_19:

      goto LABEL_20;
    }

    if (a5 == 5 || a5 == 2)
    {
      v28 = v27;
      v31 = sub_1003AAA6C(v27);
      v41[0] = v31;
      v32 = sub_1003AAA78(v27);
      v41[1] = v32;
      v33 = [NSArray arrayWithObjects:v41 count:2];
      v16 = v37;
      [v37 setCertificates:v33];
    }

    else
    {
      v28 = v27;
      if (a5 != 1)
      {
        v35 = SESDefaultLogObject();
        v19 = SESCreateAndLogError();

        goto LABEL_10;
      }

      v16 = v37;
      v29 = [v37 certificates];
      v30 = [v29 count];

      if (v30 == 1)
      {
        v31 = sub_1003AAA78(v28);
        v43 = v31;
        v32 = [NSArray arrayWithObjects:&v43 count:1];
        [v37 setCertificates:v32];
LABEL_18:

        v19 = sub_1000434A0(SESEndpointDatabase, v10, v16, v12);
        goto LABEL_19;
      }

      v31 = [v37 certificates];
      v32 = [v31 objectAtIndexedSubscript:0];
      v42[0] = v32;
      v33 = sub_1003AAA78(v28);
      v42[1] = v33;
      v36 = [NSArray arrayWithObjects:v42 count:2];
      [v37 setCertificates:v36];
    }

    goto LABEL_18;
  }

  v18 = v17;
  v19 = v18;
LABEL_20:

LABEL_21:

  return v19;
}

- (void)createAlishaEndpointWithProxy:(id)a3 identifier:(id)a4 authorityIdentifier:(id)a5 subjectIdentifier:(id)a6 configuration:(id)a7 readerIdentifier:(id)a8 readerPublicKey:(id)a9 readerInformation:(id)a10 startDate:(id)a11 endDate:(id)a12 keyIdentifier:(id)a13 authorizedKeys:(id)a14 confidentialMailBoxSize:(id)a15 privateMailBoxSize:(id)a16 reply:(id)a17
{
  v40 = a3;
  v22 = a4;
  v49 = a5;
  v48 = a6;
  v47 = a7;
  v23 = a8;
  v24 = v22;
  v46 = a9;
  v25 = a10;
  v26 = a11;
  v45 = a12;
  v44 = a13;
  v43 = a14;
  v42 = a15;
  v41 = a16;
  v27 = a17;
  v28 = SESDefaultLogObject();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v69 = v22;
    v70 = 2112;
    v71 = v49;
    v72 = 2112;
    v73 = v48;
    v74 = 2112;
    v75 = v23;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "identifier %@ __authorityIdentifier %@ subjectIdentifier %@ readerIdentifier %@", buf, 0x2Au);
  }

  v29 = +[NSXPCConnection currentConnection];
  v30 = sub_100035A18(SESClientInfo, v29);

  if ((!sub_1003AD208(v30) || (sub_1003AD21C(v30) & 1) == 0) && (sub_1003AD230(v30) & 1) == 0)
  {
    v31 = SESDefaultLogObject();
LABEL_11:
    v32 = SESCreateAndLogError();
    v27[2](v27, 0, v32);
    goto LABEL_17;
  }

  if ([v23 length] != 8)
  {
    v31 = SESDefaultLogObject();
    [v23 length];
    goto LABEL_11;
  }

  v31 = [v25 componentsSeparatedByString:@"."];
  v37 = v26;
  if ([v31 count] > 2)
  {
    v32 = [v31 objectAtIndexedSubscript:2];
    if ([v32 length] == 3)
    {
      v34 = [v32 substringWithRange:{2, 1}];
      v36 = [v32 substringToIndex:2];

      v39 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) createAlishaEndpointWithProxy:identifier:authorityIdentifier:subjectIdentifier:configuration:readerIdentifier:readerPublicKey:readerInformation:startDate:endDate:keyIdentifier:authorizedKeys:confidentialMailBoxSize:privateMailBoxSize:reply:]"];
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_10001B574;
      v50[3] = &unk_1004C1940;
      v67 = v27;
      v51 = v49;
      v52 = v30;
      v53 = self;
      v54 = v24;
      v55 = v23;
      v56 = v34;
      v32 = v36;
      v57 = v32;
      v58 = v48;
      v59 = v47;
      v60 = v46;
      v61 = v37;
      v62 = v45;
      v63 = v44;
      v64 = v43;
      v65 = v42;
      v66 = v41;
      v33 = v34;
      [(SESEndpointAndKeyXPCServer *)self proximityAndEndpointService:v40 reason:v39 completion:v50];

      v35 = v67;
    }

    else
    {
      v33 = SESDefaultLogObject();
      v35 = SESCreateAndLogError();
      v27[2](v27, 0, v35);
    }
  }

  else
  {
    v32 = SESDefaultLogObject();
    v33 = SESCreateAndLogError();
    v27[2](v27, 0, v33);
  }

  v26 = v37;
LABEL_17:
}

- (void)createHydraEndpointWithProxy:(id)a3 serverParams:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSXPCConnection currentConnection];
  v12 = sub_100035A18(SESClientInfo, v11);

  if (sub_1003AD208(v12) && (sub_1003AD21C(v12) & 1) != 0 || (sub_1003AD230(v12) & 1) != 0)
  {
    v49 = self;
    v50 = v8;
    v13 = SESDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v69 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v14 = [v9 objectForKeyedSubscript:@"readerIdentifier"];
    v15 = [v14 hexStringAsData];

    v16 = [v9 objectForKeyedSubscript:@"readerCAPublicKey"];
    v17 = [v16 hexStringAsData];

    v18 = [v9 objectForKeyedSubscript:@"readerCAMaxDepth"];
    v19 = [v9 objectForKeyedSubscript:@"mailboxInfo"];
    v20 = [v19 objectForKeyedSubscript:@"confMailboxSize"];
    v47 = [v20 unsignedIntValue];

    v21 = [v19 objectForKeyedSubscript:@"confMailboxOffset"];
    v45 = [v21 unsignedIntValue];

    v22 = [v19 objectForKeyedSubscript:@"confMailboxLength"];
    v44 = [v22 unsignedIntValue];

    v23 = [v19 objectForKeyedSubscript:@"privMailboxSize"];
    v43 = [v23 unsignedIntValue];

    v24 = [v19 objectForKeyedSubscript:@"privMailboxOffset"];
    v25 = [v24 unsignedIntValue];

    v26 = [v19 objectForKeyedSubscript:@"privMailboxLength"];
    v27 = [v26 unsignedIntValue];

    if (!v15 || !v17)
    {
      v31 = SESDefaultLogObject();
      v32 = [v9 allKeys];
      v33 = SESCreateAndLogError();
      v10[2](v10, 0, v33);

LABEL_21:
      v8 = v50;
      goto LABEL_22;
    }

    if (!v18)
    {
      v18 = &off_1004DC900;
    }

    if ([v15 length] == 8)
    {
      if ([v17 length] == 64)
      {
        v28 = [NSMutableData dataWithCapacity:65];
        [v28 appendU8:4];
        [v28 appendData:v17];

        v17 = v28;
        goto LABEL_18;
      }

      if ([v17 length] == 65)
      {
LABEL_18:
        if (![v18 unsignedIntValue] || objc_msgSend(v18, "unsignedIntValue") == 1)
        {
          [NSData randomData:4];
          v34 = v42 = v25;
          v31 = [v34 asHexString];

          [v15 asHexString];
          v35 = v41 = v27;
          v39 = [NSString stringWithFormat:@"HY-%@-%@", v35, v31];

          v36 = [v15 asHexString];
          v38 = [NSString stringWithFormat:@"HYCA-%@-%@", v36, v31];

          v37 = +[SEEndPointConfiguration hydraDefaults];
          v40 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) createHydraEndpointWithProxy:serverParams:reply:]"];
          v51[0] = _NSConcreteStackBlock;
          v51[1] = 3221225472;
          v51[2] = sub_10001CF10;
          v51[3] = &unk_1004C1990;
          v61 = v10;
          v51[4] = v49;
          v52 = v38;
          v53 = v12;
          v54 = v39;
          v55 = v37;
          v56 = v15;
          v17 = v17;
          v57 = v17;
          v58 = @"20000101000000Z";
          v59 = @"99991231235959Z";
          v62 = v47;
          v63 = v43;
          v18 = v18;
          v60 = v18;
          v64 = v41;
          v65 = v42;
          v66 = v44;
          v67 = v45;
          v48 = v37;
          v46 = v39;
          v32 = v38;
          [(SESEndpointAndKeyXPCServer *)v49 proximityAndEndpointService:v50 reason:v40 completion:v51];

          goto LABEL_21;
        }

        v31 = SESDefaultLogObject();
        [v18 unsignedIntValue];
        goto LABEL_16;
      }

      v31 = SESDefaultLogObject();
      [v17 length];
    }

    else
    {
      v31 = SESDefaultLogObject();
      [v15 length];
    }

LABEL_16:
    v32 = SESCreateAndLogError();
    v10[2](v10, 0, v32);
    goto LABEL_21;
  }

  v29 = SESDefaultLogObject();
  v30 = SESCreateAndLogError();
  v10[2](v10, 0, v30);

LABEL_22:
}

- (void)createLocalEndpointWithProxy:(id)a3 readerIdentifier:(id)a4 readerPublicKey:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[NSXPCConnection currentConnection];
  v15 = sub_100035A18(SESClientInfo, v14);

  if ((!sub_1003AD208(v15) || (sub_1003AD21C(v15) & 1) == 0) && (sub_1003AD230(v15) & 1) == 0)
  {
    v23 = SESDefaultLogObject();
LABEL_8:
    v24 = SESCreateAndLogError();
    v13[2](v13, 0, v24);

    goto LABEL_9;
  }

  if ([v11 length] != 8)
  {
    v23 = SESDefaultLogObject();
    [v11 length];
    goto LABEL_8;
  }

  v16 = [NSData randomData:4];
  v17 = [v16 asHexString];
  v18 = [NSString stringWithFormat:@"HOME-%@", v17];

  v19 = +[SEEndPointConfiguration homeDefaults];
  v20 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) createLocalEndpointWithProxy:readerIdentifier:readerPublicKey:reply:]"];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10001DE7C;
  v25[3] = &unk_1004C19E0;
  v34 = v13;
  v25[4] = self;
  v26 = @"HOME";
  v27 = v15;
  v28 = v18;
  v29 = v19;
  v30 = v11;
  v31 = v12;
  v32 = @"20000101000000Z";
  v33 = @"99991231235959Z";
  v21 = v19;
  v22 = v18;
  [(SESEndpointAndKeyXPCServer *)self proximityAndEndpointService:v10 reason:v20 completion:v25];

LABEL_9:
}

- (void)createLyonEndpointWithProxy:(id)a3 readerGroupIdentifier:(id)a4 readerPublicKey:(id)a5 homeUUID:(id)a6 privateMailboxSize:(id)a7 reply:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = +[NSXPCConnection currentConnection];
  v21 = sub_100035A18(SESClientInfo, v20);

  if ((!sub_1003AD208(v21) || (sub_1003AD21C(v21) & 1) == 0) && (sub_1003AD230(v21) & 1) == 0)
  {
    v31 = SESDefaultLogObject();
LABEL_8:
    v32 = SESCreateAndLogError();
    v19[2](v19, 0, v32);

    goto LABEL_9;
  }

  if ([v15 length] != 16)
  {
    v31 = SESDefaultLogObject();
    [v15 length];
    goto LABEL_8;
  }

  [NSData randomData:4];
  v22 = v34 = v14;
  [v22 asHexString];
  v33 = self;
  v23 = v18;
  v25 = v24 = v16;
  v26 = [NSString stringWithFormat:@"LYON-%@", v25];

  v16 = v24;
  v18 = v23;

  v27 = +[SEEndPointConfiguration lyonHomeDefaults];
  v28 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) createLyonEndpointWithProxy:readerGroupIdentifier:readerPublicKey:homeUUID:privateMailboxSize:reply:]"];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10001EB4C;
  v35[3] = &unk_1004C1A50;
  v46 = v19;
  v35[4] = v33;
  v36 = @"LYON";
  v37 = v21;
  v38 = v26;
  v39 = v27;
  v40 = v15;
  v41 = v16;
  v42 = @"20000101000000Z";
  v43 = @"99991231235959Z";
  v44 = v23;
  v45 = v17;
  v29 = v27;
  v30 = v26;
  [(SESEndpointAndKeyXPCServer *)v33 proximityAndEndpointService:v34 reason:v28 completion:v35];

  v14 = v34;
LABEL_9:
}

- (void)createLyonHydraEndpointWithProxy:(id)a3 serverParams:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSXPCConnection currentConnection];
  v12 = sub_100035A18(SESClientInfo, v11);

  if (sub_1003AD208(v12) && (sub_1003AD21C(v12) & 1) != 0 || (sub_1003AD230(v12) & 1) != 0)
  {
    v48 = self;
    v13 = SESDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v68 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "createLyonHydraEndpointWithProxy w/ params %@", buf, 0xCu);
    }

    v14 = [v9 objectForKeyedSubscript:@"readerGroupIdentifier"];
    v15 = [v14 hexStringAsData];

    v16 = [v9 objectForKeyedSubscript:@"readerGroupPublicKey"];
    v17 = [v16 hexStringAsData];

    v18 = [v9 objectForKeyedSubscript:@"readerCAMaxDepth"];
    v19 = [v9 objectForKeyedSubscript:@"privMailboxSize"];
    v46 = [v19 unsignedIntValue];

    v20 = [v9 objectForKeyedSubscript:@"privMailboxOffset"];
    v44 = [v20 unsignedIntValue];

    v21 = [v9 objectForKeyedSubscript:@"privMailboxLength"];
    v42 = [v21 unsignedIntValue];

    v22 = [v9 objectForKeyedSubscript:@"option1"];
    v23 = [v9 objectForKeyedSubscript:@"enableSSO"];
    v24 = v23;
    v25 = v22 || [v23 BOOLValue];
    v26 = v8;
    v49 = v24;
    v50 = v22;
    if (v15 && v17 && v18)
    {
      v41 = v25;
      if ([v15 length] == 16)
      {
        if ([v17 length] == 64)
        {
          v27 = [NSMutableData dataWithCapacity:65];
          [v27 appendU8:4];
          [v27 appendData:v17];

          v17 = v27;
        }

        else if ([v17 length] != 65)
        {
          v30 = v18;
          v31 = SESDefaultLogObject();
          [v17 length];
          goto LABEL_27;
        }

        v40 = v18;
        if ([v18 unsignedIntValue] >= 2)
        {
          v31 = SESDefaultLogObject();
          v30 = v40;
          [v40 unsignedIntValue];
LABEL_27:
          v32 = SESCreateAndLogError();
          v10[2](v10, 0, v32);
          goto LABEL_19;
        }

        v34 = [NSData randomData:4];
        v31 = [v34 asHexString];

        v35 = [v15 subdataWithRange:{0, 8}];
        v32 = [v35 asHexString];

        v39 = [NSString stringWithFormat:@"LY-%@-%@", v32, v31];
        v37 = [NSString stringWithFormat:@"LYCA-%@-%@", v32, v31];
        v36 = +[SEEndPointConfiguration lyonHydraDefaults];
        v8 = v26;
        v38 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) createLyonHydraEndpointWithProxy:serverParams:reply:]"];
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_100020040;
        v51[3] = &unk_1004C1AA0;
        v62 = v10;
        v51[4] = v48;
        v52 = v37;
        v53 = v12;
        v54 = v39;
        v55 = v36;
        v56 = v9;
        v66 = v41;
        v57 = v15;
        v17 = v17;
        v58 = v17;
        v59 = @"20000101000000Z";
        v60 = @"99991231235959Z";
        v63 = v46;
        v30 = v40;
        v61 = v40;
        v64 = v42;
        v65 = v44;
        v47 = v36;
        v45 = v39;
        v43 = v37;
        [(SESEndpointAndKeyXPCServer *)v48 proximityAndEndpointService:v26 reason:v38 completion:v51];

LABEL_19:
        goto LABEL_20;
      }

      v30 = v18;
      v31 = SESDefaultLogObject();
      [v15 length];
      v32 = SESCreateAndLogError();
      v10[2](v10, 0, v32);
    }

    else
    {
      v30 = v18;
      v31 = SESDefaultLogObject();
      v32 = [v9 allKeys];
      v33 = SESCreateAndLogError();
      v10[2](v10, 0, v33);
    }

    v8 = v26;
    goto LABEL_19;
  }

  v28 = SESDefaultLogObject();
  v29 = SESCreateAndLogError();
  v10[2](v10, 0, v29);

LABEL_20:
}

- (unint64_t)_existsDuplicateInDatabase:(id)a3 withIdentifier:(id)a4 orReaderIdentifier:(id)a5 outError:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [v9 endPoints];
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_100020FB4;
  v26 = &unk_1004C1AC8;
  v14 = v9;
  v27 = v14;
  v15 = v10;
  v28 = v15;
  v16 = v11;
  v29 = v16;
  v17 = Find();
  if (!v17 || !SESInternalVariant())
  {
    goto LABEL_8;
  }

  v18 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
  if (![v18 BOOLForKey:@"debug.allow.duplicate.endpoints"])
  {

LABEL_8:
    v20 = v17 != 0;
    goto LABEL_9;
  }

  v19 = SESDefaultLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Allowing duplicate endPoint because of internal debug pref", v22, 2u);
  }

  v20 = 0;
LABEL_9:

  return v20;
}

- (id)_ensureCAExistsAndValid:(id)a3 clientName:(id)a4 secureElement:(id)a5 handle:(id)a6 forEndPointType:(int64_t)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(v18);

  v34 = 0;
  v19 = sub_1000431F8(SESEndpointDatabase, v14, v15, v17, &v34);
  v20 = v34;
  if (v20)
  {
    v21 = v20;
    if (a8)
    {
LABEL_3:
      v22 = v21;
      v23 = 0;
      *a8 = v21;
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v24 = SESDefaultLogObject();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v36 = v14;
    v37 = 1024;
    v38 = v19 != 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Ensuring CA for %@ -- existing? %d", buf, 0x12u);
  }

  if (!v19)
  {
    v33 = 0;
    v29 = [(SESEndpointAndKeyXPCServer *)self _createEndPointCA:v16 handle:v17 clientName:v15 identifier:v14 subjectIdentifier:v14 forEndPointType:a7 error:&v33];
    v30 = v33;
    v21 = v30;
    if (a8)
    {
      v31 = v30;
      *a8 = v21;
    }

    v28 = v29;
    v19 = v28;
    goto LABEL_18;
  }

  if ((a7 - 3) <= 1 || ([(SESEndpointAndKeyXPCServer *)self _renewEndPointCAIfExpired:v19 secureElement:v16 forEndPointType:a7 handle:v17], (v25 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_14:
    v28 = v19;
    v19 = v28;
    v21 = 0;
LABEL_18:
    v23 = v28;
    goto LABEL_22;
  }

  v21 = v25;
  if (SESInternalVariant())
  {
    v26 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
    if ([v26 BOOLForKey:@"debug.allow.cert.failure"])
    {
      v27 = SESDefaultLogObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Allowing bogus/expired cert for internal debug", buf, 2u);
      }

      goto LABEL_14;
    }
  }

  if (a8)
  {
    goto LABEL_3;
  }

LABEL_21:
  v23 = 0;
LABEL_22:

  return v23;
}

- (void)configureEndpointWithProxy:(id)a3 identifier:(id)a4 privateData:(id)a5 confidentialData:(id)a6 contactlessVolatileVisibility:(id)a7 contactlessPersistentVisibility:(id)a8 wiredVolatileVisibility:(id)a9 wiredPersistentVisibility:(id)a10 keySlot:(id)a11 nfcExpressOnlyInLPM:(id)a12 reply:(id)a13
{
  v42 = a4;
  v40 = a5;
  v39 = a6;
  v37 = a7;
  v36 = a8;
  v33 = a9;
  v18 = a10;
  v31 = a11;
  v29 = a12;
  v19 = a13;
  v35 = a3;
  v20 = SESDefaultLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v54 = v42;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v28 = +[NSXPCConnection currentConnection];
  v21 = sub_100035A18(SESClientInfo, v28);
  v22 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) configureEndpointWithProxy:identifier:privateData:confidentialData:contactlessVolatileVisibility:contactlessPersistentVisibility:wiredVolatileVisibility:wiredPersistentVisibility:keySlot:nfcExpressOnlyInLPM:reply:]"];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10002169C;
  v43[3] = &unk_1004C1AF0;
  v44 = v40;
  v45 = v39;
  v46 = v36;
  v47 = v37;
  v48 = v18;
  v49 = v33;
  v50 = v31;
  v51 = v29;
  v52 = v19;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v23 = v18;
  v38 = v37;
  v24 = v36;
  v25 = v39;
  v26 = v40;
  v27 = v19;
  [(SESEndpointAndKeyXPCServer *)self endPointAction:v42 proxy:v35 clientInfo:v21 reason:v22 reply:v43];
}

- (id)getEncryptedCarOEMProprietaryData:(id)a3 withEndpointEntity:(id)a4 withSecureElement:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 carOEMProprietaryData];

  if (v10)
  {
    v11 = [v7 carOEMProprietaryData];
    goto LABEL_26;
  }

  v12 = [v8 privacyEncryptionPK];
  if (!v12)
  {
    v19 = SESDefaultLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v29 = "Missing server privacy public key";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v29, buf, 2u);
    }

LABEL_24:
    v11 = 0;
    goto LABEL_25;
  }

  v13 = [v7 mailboxMapping];

  if (!v13)
  {
    v19 = SESDefaultLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v29 = "Missing mailbox mapping";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v14 = [v8 instance];
  v15 = [v14 identifier];
  v16 = [v15 hexStringAsData];
  v17 = [v7 publicKeyIdentifier];
  v47 = 0;
  v18 = sub_100046338(v9, v16, v17, 0, 1, &v47);
  v19 = v47;

  if (v19 || [v18 length] != 1)
  {
    v24 = SESDefaultLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v30 = [v18 asHexString];
      *buf = 138412546;
      *v49 = v30;
      *&v49[8] = 2112;
      *&v49[10] = v19;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to retrieve private mailbox first byte %@ error %@", buf, 0x16u);
    }
  }

  else
  {
    v20 = [v18 u8:0];
    v21 = [KmlMailboxMappingData alloc];
    v22 = [v7 mailboxMapping];
    if (v20 == 128)
    {
      v23 = 768;
    }

    else
    {
      v23 = 256;
    }

    v24 = [v21 initWithData:v22 preferredVersion:v23];

    v25 = [v24 vehicleProprietaryDataOffset];
    v26 = [v24 keyAttestationStartOffset];
    if (!v25 || (v27 = v26) == 0)
    {
      v28 = SESDefaultLogObject();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v32 = [v7 mailboxMapping];
        v33 = [v32 asHexString];
        *buf = 138412290;
        *v49 = v33;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to retrieve private mailbox offsets %@", buf, 0xCu);
      }

      goto LABEL_31;
    }

    if (v26 < v25)
    {
      v28 = SESDefaultLogObject();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *v49 = v25;
        *&v49[4] = 1024;
        *&v49[6] = v27;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Invalid private mailbox offsets car OEM data %d key attestation %d", buf, 0xEu);
      }

LABEL_31:
      v19 = 0;
      v11 = 0;
LABEL_32:

      goto LABEL_20;
    }

    if (v26 != v25)
    {
      v34 = (v26 - v25);
      v44 = [v8 instance];
      v42 = [v44 identifier];
      v35 = [v42 hexStringAsData];
      v36 = [v7 publicKeyIdentifier];
      v46 = 0;
      v41 = v34;
      v28 = sub_100046338(v9, v35, v36, v25, v34, &v46);
      v19 = v46;

      if (v19)
      {
        v37 = SESDefaultLogObject();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v49 = v19;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to retrieve car OEM proprietary data %@", buf, 0xCu);
        }
      }

      else
      {
        if ([v28 length]== v41)
        {
          v19 = encryptPrivacyData();
          v45 = 0;
          v37 = 0;
          if (v19)
          {
            v38 = SESDefaultLogObject();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v49 = v19;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to encrypt private mailbox data %@", buf, 0xCu);
            }

            v39 = v38;
            v11 = 0;
          }

          else
          {
            v43 = [v12 ses_sha256];
            v11 = [SEEndPointPrivacyEncryptResponse responseWithCipherText:v37 ephemeralPublicKeyData:v45 receiverPublicKeyHash:v43];
            v39 = v43;
          }

          goto LABEL_48;
        }

        v37 = SESDefaultLogObject();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v40 = [v28 length];
          *buf = 67109376;
          *v49 = v41;
          *&v49[4] = 2048;
          *&v49[6] = v40;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Incorrect proprietary data length expected %hu read %lu", buf, 0x12u);
        }

        v19 = 0;
      }

      v11 = 0;
LABEL_48:

      goto LABEL_32;
    }

    v19 = 0;
  }

  v11 = 0;
LABEL_20:

LABEL_25:
LABEL_26:

  return v11;
}

- (void)updateLyonCredentialDocumentStatusWithProxy:(id)a3 endpointIdentifier:(id)a4 accessDocumentPresent:(BOOL)a5 accessDocumentSignedTimestamp:(id)a6 revocationDocumentPresent:(BOOL)a7 revocationDocumentSignedTimestamp:(id)a8 reply:(id)a9
{
  v15 = a4;
  v16 = a6;
  v17 = a8;
  v18 = a9;
  v19 = a3;
  v20 = SESDefaultLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v34 = v15;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v21 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) updateLyonCredentialDocumentStatusWithProxy:endpointIdentifier:accessDocumentPresent:accessDocumentSignedTimestamp:revocationDocumentPresent:revocationDocumentSignedTimestamp:reply:]"];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100022114;
  v26[3] = &unk_1004C1B18;
  v31 = a5;
  v32 = a7;
  v27 = v16;
  v28 = v17;
  v29 = v15;
  v30 = v18;
  v22 = v15;
  v23 = v17;
  v24 = v16;
  v25 = v18;
  [(SESEndpointAndKeyXPCServer *)self endPointServiceAvailableWithProxy:v19 reason:v21 reply:v26];
}

- (void)revokeEndPointWithIdentifier:(id)a3 nonce:(id)a4 metaData:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = SESDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v15 = +[NSXPCConnection currentConnection];
  v16 = sub_100035A18(SESClientInfo, v15);
  v17 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) revokeEndPointWithIdentifier:nonce:metaData:reply:]"];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000226C0;
  v21[3] = &unk_1004C1B40;
  v21[4] = self;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v18 = v12;
  v19 = v11;
  v20 = v13;
  [(SESEndpointAndKeyXPCServer *)self endPointAction:v10 clientInfo:v16 reason:v17 reply:v21];
}

- (void)signatureWithEndPointIdentifier:(id)a3 metaDataHash:(id)a4 authorization:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = SESDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v15 = +[NSXPCConnection currentConnection];
  v16 = sub_100035A18(SESClientInfo, v15);
  v17 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) signatureWithEndPointIdentifier:metaDataHash:authorization:reply:]"];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100022CE4;
  v22[3] = &unk_1004C1B40;
  v23 = v11;
  v24 = v12;
  v25 = v10;
  v26 = v13;
  v18 = v10;
  v19 = v12;
  v20 = v11;
  v21 = v13;
  [(SESEndpointAndKeyXPCServer *)self endPointAction:v18 clientInfo:v16 reason:v17 reply:v22];
}

- (void)signatureISO18013WithEndPointIdentifier:(id)a3 toBeSigned:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v12 = +[NSXPCConnection currentConnection];
  v13 = sub_100035A18(SESClientInfo, v12);
  v14 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) signatureISO18013WithEndPointIdentifier:toBeSigned:reply:]"];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100023074;
  v18[3] = &unk_1004C1B68;
  v20 = v8;
  v21 = v10;
  v19 = v9;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  [(SESEndpointAndKeyXPCServer *)self endPointAction:v15 clientInfo:v13 reason:v14 reply:v18];
}

- (void)setPrivateDataWithProxy:(id)a3 identifier:(id)a4 privateData:(id)a5 privateDataOffset:(unsigned __int16)a6 reply:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = a3;
  v16 = SESDefaultLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v27 = v12;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v17 = +[NSXPCConnection currentConnection];
  v18 = sub_100035A18(SESClientInfo, v17);

  v19 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) setPrivateDataWithProxy:identifier:privateData:privateDataOffset:reply:]"];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10002340C;
  v22[3] = &unk_1004C1B90;
  v25 = a6;
  v23 = v13;
  v24 = v14;
  v20 = v13;
  v21 = v14;
  [(SESEndpointAndKeyXPCServer *)self endPointAction:v12 proxy:v15 clientInfo:v18 reason:v19 reply:v22];
}

- (void)updateEndpoint:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SESDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 publicKeyIdentifier];
    v10 = [v9 asHexString];
    *buf = 138412290;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "updateEndpoint %@", buf, 0xCu);
  }

  v11 = +[NSXPCConnection currentConnection];
  v12 = sub_100035A18(SESClientInfo, v11);

  v13 = [v6 publicKeyIdentifier];
  v14 = [v13 asHexString];
  v15 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) updateEndpoint:reply:]"];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100023890;
  v18[3] = &unk_1004C1BB8;
  v19 = v6;
  v20 = v7;
  v16 = v6;
  v17 = v7;
  [(SESEndpointAndKeyXPCServer *)self endPointDBAction:v14 clientInfo:v12 reason:v15 reply:v18];
}

- (void)getPrivateDataWithProxy:(id)a3 identifier:(id)a4 privateDataOffset:(unsigned __int16)a5 privateDataLength:(unsigned __int16)a6 reply:(id)a7
{
  v12 = a4;
  v13 = a7;
  v14 = a3;
  v15 = SESDefaultLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v16 = +[NSXPCConnection currentConnection];
  v17 = sub_100035A18(SESClientInfo, v16);

  v18 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) getPrivateDataWithProxy:identifier:privateDataOffset:privateDataLength:reply:]"];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100023C14;
  v20[3] = &unk_1004C1BE0;
  v21 = v13;
  v22 = a5;
  v23 = a6;
  v19 = v13;
  [(SESEndpointAndKeyXPCServer *)self endPointAction:v12 proxy:v14 clientInfo:v17 reason:v18 reply:v20];
}

- (void)createEncryptionKeyEndPointWithProxy:(id)a3 identifier:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v12 = +[NSXPCConnection currentConnection];
  v13 = sub_100035A18(SESClientInfo, v12);

  v14 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) createEncryptionKeyEndPointWithProxy:identifier:reply:]"];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100024050;
  v16[3] = &unk_1004C1C08;
  v17 = v9;
  v15 = v9;
  [(SESEndpointAndKeyXPCServer *)self endPointAction:v8 proxy:v10 clientInfo:v13 reason:v14 reply:v16];
}

- (void)setConfidentialDataEndPointWithIdentifier:(id)a3 senderEphemeralPublicKey:(id)a4 encryptedData:(id)a5 offset:(unsigned __int16)a6 reply:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = a3;
  v16 = +[NSXPCConnection currentConnection];
  v17 = sub_100035A18(SESClientInfo, v16);

  v18 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) setConfidentialDataEndPointWithIdentifier:senderEphemeralPublicKey:encryptedData:offset:reply:]"];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100024310;
  v22[3] = &unk_1004C1C30;
  v24 = v13;
  v25 = v14;
  v23 = v12;
  v26 = a6;
  v19 = v13;
  v20 = v12;
  v21 = v14;
  [(SESEndpointAndKeyXPCServer *)self endPointAction:v15 clientInfo:v17 reason:v18 reply:v22];
}

- (void)updateHydraMailboxesWithProxy:(id)a3 identifier:(id)a4 encryptedSEBlob:(id)a5 reply:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = SESDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v15 = +[NSXPCConnection currentConnection];
  v16 = sub_100035A18(SESClientInfo, v15);

  v17 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) updateHydraMailboxesWithProxy:identifier:encryptedSEBlob:reply:]"];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002468C;
  v21[3] = &unk_1004C1B40;
  v22 = v11;
  v23 = self;
  v24 = v10;
  v25 = v12;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  [(SESEndpointAndKeyXPCServer *)self endPointAction:v18 proxy:v13 clientInfo:v16 reason:v17 reply:v21];
}

- (id)_applyPrivateMailboxContents:(id *)a3 secureElement:(id)a4 instanceAID:(id)a5 keyIdentifier:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v14 = 0u;
  DERParseSequenceSpecContent();
  v11 = SESDefaultLogObject();
  v12 = SESCreateAndLogError();

  return v12;
}

- (id)_applyConfidentialMailboxContents:(id *)a3 secureElement:(id)a4 instanceAID:(id)a5 keyIdentifier:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v14 = 0u;
  v15 = 0u;
  DERParseSequenceSpecContent();
  v11 = SESDefaultLogObject();
  v12 = SESCreateAndLogError();

  return v12;
}

- (void)createEndPointAuthorizationID:(id)a3 userAuth:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@ %@", buf, 0x16u);
  }

  if (v8 && v9)
  {
    v12 = +[NSXPCConnection currentConnection];
    v13 = sub_100035A18(SESClientInfo, v12);

    v14 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) createEndPointAuthorizationID:userAuth:reply:]"];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000251F0;
    v16[3] = &unk_1004C1B68;
    v19 = v10;
    v17 = v8;
    v18 = v9;
    [(SESEndpointAndKeyXPCServer *)self endPointAction:v17 clientInfo:v13 reason:v14 reply:v16];

    v15 = v19;
  }

  else
  {
    v13 = SESDefaultLogObject();
    v15 = SESCreateAndLogError();
    (*(v10 + 2))(v10, 0, v15);
  }
}

- (void)listEndPointAuthorizations:(id)a3
{
  v4 = a3;
  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v6 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) listEndPointAuthorizations:]"];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100025448;
  v8[3] = &unk_1004C0CE0;
  v9 = v4;
  v7 = v4;
  [(SESEndpointAndKeyXPCServer *)self secureElementService:v6 reply:v8];
}

- (void)deleteEndPointAuthorizationID:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SESDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v9 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) deleteEndPointAuthorizationID:reply:]"];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002567C;
  v12[3] = &unk_1004C0BC8;
  v13 = v6;
  v14 = v7;
  v10 = v6;
  v11 = v7;
  [(SESEndpointAndKeyXPCServer *)self secureElementService:v9 reply:v12];
}

- (void)preAuthorizeEndpointWithProxy:(id)a3 keyIdentifier:(id)a4 bindingAttestation:(id)a5 reply:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = SESDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v26 = v13 != 0;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "preAuthorizeEndpointWithProxy %d keyIdentifier %@", buf, 0x12u);
  }

  v15 = +[NSXPCConnection currentConnection];
  v16 = sub_100035A18(SESClientInfo, v15);

  v17 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) preAuthorizeEndpointWithProxy:keyIdentifier:bindingAttestation:reply:]"];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100025960;
  v21[3] = &unk_1004C1B68;
  v23 = v11;
  v24 = v12;
  v22 = v10;
  v18 = v11;
  v19 = v10;
  v20 = v12;
  [(SESEndpointAndKeyXPCServer *)self endPointAction:v19 proxy:v13 clientInfo:v16 reason:v17 reply:v21];
}

- (void)authorizeEndPointWithProxy:(id)a3 version:(unsigned __int8)a4 identifier:(id)a5 externalCA:(id)a6 instanceCA:(id)a7 endpointCertificate:(id)a8 encryptionKeyAttestation:(id)a9 bindingAttestation:(id)a10 bindingAttestationToken:(id)a11 confidentialDataOffset:(unsigned __int16)a12 confidentialDataLength:(unsigned __int16)a13 metaData:(id)a14 authorizationID:(id)a15 reply:(id)a16
{
  v46 = a5;
  v43 = a6;
  v40 = a7;
  v44 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a14;
  v24 = a15;
  v25 = a16;
  v26 = a3;
  v27 = SESDefaultLogObject();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v61 = v26 != 0;
    v62 = 2112;
    v63 = v46;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "authorizeEndPointWithProxy %d keyIdentifier %@", buf, 0x12u);
  }

  +[NSXPCConnection currentConnection];
  v28 = v37 = v26;
  v36 = sub_100035A18(SESClientInfo, v28);

  v29 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) authorizeEndPointWithProxy:version:identifier:externalCA:instanceCA:endpointCertificate:encryptionKeyAttestation:bindingAttestation:bindingAttestationToken:confidentialDataOffset:confidentialDataLength:metaData:authorizationID:reply:]"];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100025D88;
  v47[3] = &unk_1004C1C80;
  v55 = v24;
  v56 = v25;
  v57 = a13;
  v58 = a12;
  v48 = v44;
  v49 = v21;
  v59 = a4;
  v50 = v22;
  v51 = v43;
  v52 = v40;
  v53 = v20;
  v54 = v23;
  v42 = v24;
  v39 = v23;
  v38 = v20;
  v30 = v40;
  v31 = v43;
  v32 = v22;
  v33 = v21;
  v34 = v44;
  v35 = v25;
  [(SESEndpointAndKeyXPCServer *)self endPointAction:v46 proxy:v37 clientInfo:v36 reason:v29 reply:v47];
}

- (void)privacyDecryptDataWithEndPoint:(id)a3 data:(id)a4 ephemeralPublicKey:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = SESDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v15 = +[NSXPCConnection currentConnection];
  v16 = sub_100035A18(SESClientInfo, v15);

  v17 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) privacyDecryptDataWithEndPoint:data:ephemeralPublicKey:reply:]"];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002639C;
  v21[3] = &unk_1004C1CA8;
  v23 = v12;
  v24 = v13;
  v22 = v11;
  v18 = v12;
  v19 = v11;
  v20 = v13;
  [(SESEndpointAndKeyXPCServer *)self endPointDBAction:v10 clientInfo:v16 reason:v17 reply:v21];
}

- (void)privacyDecryptDataWithKeyPair:(id)a3 secretKey:(id)a4 data:(id)a5 ephemeralPublicKey:(id)a6 reply:(id)a7
{
  v11 = a3;
  v12 = a4;
  v28 = a5;
  v13 = a6;
  v14 = a7;
  v15 = SESDefaultLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v16 = +[NSXPCConnection currentConnection];
  v17 = sub_100035A18(SESClientInfo, v16);

  if (sub_1003AD208(v17) & 1) != 0 || (sub_1003AD230(v17))
  {
    v27 = v11;
    v18 = [v11 mutableCopy];
    v19 = v12;
    [v18 appendData:v12];
    v30[0] = kSecAttrKeyClass;
    v30[1] = kSecAttrKeyType;
    v31[0] = kSecAttrKeyClassPrivate;
    v31[1] = kSecAttrKeyTypeECSECPrimeRandom;
    v30[2] = kSecAttrKeySizeInBits;
    v31[2] = &off_1004DC930;
    v20 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:3];
    *buf = 0;
    v21 = SecKeyCreateWithData(v18, v20, buf);
    v22 = v21;
    v23 = *buf;
    if (*buf || !v21)
    {
      v25 = SESDefaultLogObject();
      v26 = SESCreateAndLogError();
      v14[2](v14, 0, v26);

      v24 = v28;
    }

    else
    {
      v24 = v28;
      v23 = decryptPrivacyData();
      v25 = 0;
      (v14)[2](v14, v25, v23);
    }

    v11 = v27;
    v12 = v19;
  }

  else
  {
    v18 = SESDefaultLogObject();
    v20 = SESCreateAndLogError();
    v14[2](v14, 0, v20);
    v24 = v28;
  }
}

- (void)privacyEncryptDataWithEndPoint:(id)a3 data:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v12 = +[NSXPCConnection currentConnection];
  v13 = sub_100035A18(SESClientInfo, v12);

  v14 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) privacyEncryptDataWithEndPoint:data:reply:]"];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100026AFC;
  v18[3] = &unk_1004C1CA8;
  v20 = v9;
  v21 = v10;
  v19 = v8;
  v15 = v9;
  v16 = v8;
  v17 = v10;
  [(SESEndpointAndKeyXPCServer *)self endPointDBAction:v16 clientInfo:v13 reason:v14 reply:v18];
}

- (void)privacyEncryptDataWithManufacturer:(id)a3 environment:(id)a4 region:(id)a5 data:(id)a6 reply:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = SESDefaultLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v31 = v11;
    v32 = 2112;
    v33 = v12;
    v34 = 2112;
    v35 = v13;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@ %@ %@", buf, 0x20u);
  }

  v17 = +[NSXPCConnection currentConnection];
  v18 = sub_100035A18(SESClientInfo, v17);

  if (sub_1003AD208(v18) & 1) != 0 || (sub_1003AD230(v18))
  {
    v19 = objc_opt_new();
    v29 = 0;
    v20 = [v19 getEncryptionCertificateFor:v11 environment:v12 region:v13 error:&v29];
    v21 = v29;
    if (v21)
    {
      v22 = v21;
      v15[2](v15, 0, v21);
    }

    else
    {
      v28 = v14;
      v23 = getCertificatePublicKey();
      if (v23)
      {
        v22 = encryptPrivacyData();
        v24 = 0;
        v27 = 0;
        if (v22)
        {
          v15[2](v15, 0, v22);
        }

        else
        {
          v26 = [v23 ses_sha256];
          v25 = [SEEndPointPrivacyEncryptResponse responseWithCipherText:v27 ephemeralPublicKeyData:v24 receiverPublicKeyHash:v26];
          (v15)[2](v15, v25, 0);
        }
      }

      else
      {
        v27 = SESDefaultLogObject();
        v24 = SESCreateAndLogError();
        v15[2](v15, 0, v24);
        v22 = 0;
      }

      v14 = v28;
    }
  }

  else
  {
    v19 = SESDefaultLogObject();
    v22 = SESCreateAndLogError();
    v15[2](v15, 0, v22);
  }
}

- (void)deleteEndPointWithPublicKey:(id)a3 reply:(id)a4
{
  v4 = a4;
  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "", v7, 2u);
  }

  v6 = [NSError errorWithDomain:@"seserviced" code:-1 userInfo:0];
  v4[2](v4, 0, v6);
}

- (void)deleteEndPointWithPublicKeyIdentifier:(id)a3 reply:(id)a4
{
  v4 = a4;
  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "", v7, 2u);
  }

  v6 = [NSError errorWithDomain:@"seserviced" code:-1 userInfo:0];
  v4[2](v4, 0, v6);
}

- (void)deleteEndPointWithProxy:(id)a3 identifier:(id)a4 mustBeTerminated:(BOOL)a5 reply:(id)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a6;
  v12 = a3;
  v13 = SESDefaultLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v27 = v10;
    v28 = 1024;
    v29 = v12 != 0;
    v30 = 1024;
    v31 = v7;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[deleteEndPointWithProxy] identifier %@ proxy %d mustBeTerminated %d", buf, 0x18u);
  }

  v14 = +[NSXPCConnection currentConnection];
  v15 = sub_100035A18(SESClientInfo, v14);

  v16 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) deleteEndPointWithProxy:identifier:mustBeTerminated:reply:]"];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100027374;
  v20[3] = &unk_1004C1CD0;
  v25 = v7;
  v21 = v10;
  v22 = self;
  v23 = v15;
  v24 = v11;
  v17 = v15;
  v18 = v10;
  v19 = v11;
  [(SESEndpointAndKeyXPCServer *)self endPointAction:v18 proxy:v12 clientInfo:v17 reason:v16 reply:v20];
}

- (void)remoteTerminationRequestWithProxy:(id)a3 remoteTerminationRequest:(id)a4 publicKeyIdentifier:(id)a5 taskID:(id)a6 reply:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a3;
  v17 = +[NSXPCConnection currentConnection];
  v18 = sub_100035A18(SESClientInfo, v17);

  v19 = SESDefaultLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v21 = sub_1003AD1F4(v18, v20);
    *buf = 138413058;
    v36 = v13;
    v37 = 2112;
    v38 = v21;
    v39 = 2112;
    v40 = v14;
    v41 = 1024;
    v42 = v12 != 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "key %@ client %@ task %@ hasRTR %d", buf, 0x26u);
  }

  v22 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) remoteTerminationRequestWithProxy:remoteTerminationRequest:publicKeyIdentifier:taskID:reply:]"];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100027AA4;
  v28[3] = &unk_1004C1CF8;
  v29 = v13;
  v30 = v12;
  v31 = self;
  v32 = v14;
  v33 = v18;
  v34 = v15;
  v23 = v18;
  v24 = v14;
  v25 = v12;
  v26 = v13;
  v27 = v15;
  [(SESEndpointAndKeyXPCServer *)self endPointAction:v26 proxy:v16 clientInfo:v23 reason:v22 reply:v28];
}

- (id)revokeRemoteTerminationRequestEndPoints:(id)a3 handle:(id)a4 identifier:(id)a5 taskID:(id)a6 clientInfo:(id)a7 outError:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v52 = a6;
  v17 = a7;
  v18 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(v18);

  v19 = [v16 asHexString];
  v54 = 0;
  v55 = 0;
  v20 = [(SESEndpointAndKeyXPCServer *)self _getEndPointAndValidateAccess:v15 identifier:v19 clientInfo:v17 outEndPointEntity:&v55 outEndPoint:&v54];

  v21 = v55;
  v22 = v54;

  if (!v20 && v22 && v21)
  {
    v23 = [v22 revocationAttestation];

    if (!v23)
    {
      v48 = v16;
      v49 = v15;
      v51 = [v22 readerInfo];
      v31 = [v22 bleAddress];
      v32 = 3;
      if (!v31)
      {
        v32 = 1;
      }

      v47 = v32;

      v33 = [(SESEndpointAndKeyXPCServer *)self getEncryptedCarOEMProprietaryData:v22 withEndpointEntity:v21 withSecureElement:v14];
      [v22 setCarOEMProprietaryData:v33];

      v27 = [NSData randomData:16];
      v34 = [v21 instance];
      [v34 identifier];
      v36 = v35 = v14;
      v37 = [v36 hexStringAsData];
      v38 = [v22 publicKeyIdentifier];
      v53 = 0;
      v50 = v35;
      v39 = sub_10004993C(v35, v37, v38, v27, 0, &v53);
      v20 = v53;

      if (v20 || !v39)
      {
        if (a8)
        {
          v42 = SESDefaultLogObject();
          v43 = [v22 publicKeyIdentifier];
          v46 = [v43 asHexString];
          *a8 = SESCreateAndLogError();
        }

        sub_10004CE08(SESDAnalyticsLogger, 2, v51, v47, 3);
        v29 = 0;
        v15 = v49;
        v14 = v50;
        v16 = v48;
        v30 = v52;
      }

      else
      {
        [v22 setRevocationAttestation:?];
        v15 = v49;
        v30 = v52;
        if (v52)
        {
          [v22 setTerminatedByTaskID:v52];
        }

        v20 = sub_10003D080(SESEndpointDatabase, v21, v22, v49);
        v14 = v50;
        v16 = v48;
        if (v20)
        {
          v40 = SESDefaultLogObject();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v57 = v20;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Failed to updated db? %@", buf, 0xCu);
          }

          v41 = 4;
        }

        else
        {
          v41 = 0;
        }

        [_TtC10seserviced13EndpointStore removeWithEndpoint:v22];
        sub_10004CE08(SESDAnalyticsLogger, 2, v51, v47, v41);
        v29 = v39;
      }

      v26 = v51;
      goto LABEL_31;
    }

    if (a8)
    {
      v24 = SESDefaultLogObject();
      v25 = [v22 publicKeyIdentifier];
      v45 = [v25 asHexString];
      *a8 = SESCreateAndLogError();
    }

    v26 = [v22 readerInfo];
    v27 = [v22 bleAddress];
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 1;
    }

    sub_10004CE08(SESDAnalyticsLogger, 2, v26, v28, 2);
    v20 = 0;
    v29 = 0;
  }

  else
  {
    if (!a8)
    {
      v29 = 0;
      v30 = v52;
      goto LABEL_32;
    }

    v26 = SESDefaultLogObject();
    v27 = [v16 asHexString];
    SESCreateAndLogError();
    *a8 = v29 = 0;
  }

  v30 = v52;
LABEL_31:

LABEL_32:

  return v29;
}

- (void)getInvitations:(id)a3
{
  v4 = a3;
  v5 = +[NSXPCConnection currentConnection];
  v6 = sub_100035A18(SESClientInfo, v5);

  if (sub_1003AD208(v6))
  {
    v7 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) getInvitations:]"];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100028724;
    v10[3] = &unk_1004C16B0;
    v12 = v4;
    v11 = v6;
    [(SESEndpointAndKeyXPCServer *)self databaseServiceWithProxy:0 isReconcileRequired:0 reason:v7 reply:v10];
  }

  else
  {
    v8 = SESDefaultLogObject();
    v9 = SESCreateAndLogError();
    (*(v4 + 2))(v4, 0, v9);
  }
}

- (void)getInvitationWithId:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSXPCConnection currentConnection];
  v9 = sub_100035A18(SESClientInfo, v8);

  if (sub_1003AD208(v9))
  {
    v10 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) getInvitationWithId:reply:]"];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100028A48;
    v13[3] = &unk_1004C1D20;
    v16 = v7;
    v14 = v6;
    v15 = v9;
    [(SESEndpointAndKeyXPCServer *)self databaseServiceWithProxy:0 isReconcileRequired:0 reason:v10 reply:v13];
  }

  else
  {
    v11 = SESDefaultLogObject();
    v12 = SESCreateAndLogError();
    (*(v7 + 2))(v7, 0, v12);
  }
}

- (void)addInvitationWithId:(id)a3 data:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSXPCConnection currentConnection];
  v12 = sub_100035A18(SESClientInfo, v11);

  if (sub_1003AD208(v12))
  {
    v13 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) addInvitationWithId:data:reply:]"];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100028D98;
    v16[3] = &unk_1004C17C8;
    v20 = v10;
    v17 = v8;
    v18 = v9;
    v19 = v12;
    [(SESEndpointAndKeyXPCServer *)self databaseServiceWithProxy:0 isReconcileRequired:0 reason:v13 reply:v16];
  }

  else
  {
    v14 = SESDefaultLogObject();
    v15 = SESCreateAndLogError();
    (*(v10 + 2))(v10, 0, v15);
  }
}

- (void)deleteInvitationWithId:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSXPCConnection currentConnection];
  v9 = sub_100035A18(SESClientInfo, v8);

  if (sub_1003AD208(v9))
  {
    v10 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) deleteInvitationWithId:reply:]"];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10002905C;
    v13[3] = &unk_1004C1D20;
    v16 = v7;
    v14 = v6;
    v15 = v9;
    [(SESEndpointAndKeyXPCServer *)self databaseServiceWithProxy:0 isReconcileRequired:0 reason:v10 reply:v13];
  }

  else
  {
    v11 = SESDefaultLogObject();
    v12 = SESCreateAndLogError();
    (*(v7 + 2))(v7, 0, v12);
  }
}

- (void)getEndpointIdWithUuid:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSXPCConnection currentConnection];
  v9 = sub_100035A18(SESClientInfo, v8);

  if (sub_1003AD208(v9))
  {
    v10 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) getEndpointIdWithUuid:reply:]"];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100029310;
    v13[3] = &unk_1004C1D20;
    v16 = v7;
    v14 = v6;
    v15 = v9;
    [(SESEndpointAndKeyXPCServer *)self databaseServiceWithProxy:0 isReconcileRequired:0 reason:v10 reply:v13];
  }

  else
  {
    v11 = SESDefaultLogObject();
    v12 = SESCreateAndLogError();
    (*(v7 + 2))(v7, 0, v12);
  }
}

- (void)addEndpointId:(id)a3 withUuid:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSXPCConnection currentConnection];
  v12 = sub_100035A18(SESClientInfo, v11);

  if (sub_1003AD208(v12))
  {
    v13 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) addEndpointId:withUuid:reply:]"];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100029658;
    v16[3] = &unk_1004C17C8;
    v20 = v10;
    v17 = v8;
    v18 = v9;
    v19 = v12;
    [(SESEndpointAndKeyXPCServer *)self databaseServiceWithProxy:0 isReconcileRequired:0 reason:v13 reply:v16];
  }

  else
  {
    v14 = SESDefaultLogObject();
    v15 = SESCreateAndLogError();
    (*(v10 + 2))(v10, 0, v15);
  }
}

- (void)deleteEndpointIdWithUuid:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSXPCConnection currentConnection];
  v9 = sub_100035A18(SESClientInfo, v8);

  if (sub_1003AD208(v9))
  {
    v10 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) deleteEndpointIdWithUuid:reply:]"];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10002991C;
    v13[3] = &unk_1004C1D20;
    v16 = v7;
    v14 = v6;
    v15 = v9;
    [(SESEndpointAndKeyXPCServer *)self databaseServiceWithProxy:0 isReconcileRequired:0 reason:v10 reply:v13];
  }

  else
  {
    v11 = SESDefaultLogObject();
    v12 = SESCreateAndLogError();
    (*(v7 + 2))(v7, 0, v12);
  }
}

- (void)getEndpointBindingAttestationRequestWithProxy:(id)a3 authorityIdentifier:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSXPCConnection currentConnection];
  v12 = sub_100035A18(SESClientInfo, v11);

  if (sub_1003AD208(v12) & 1) != 0 || (sub_1003AD230(v12))
  {
    v13 = SESDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v21 = v8 != 0;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "getEndpointBindingAttestationRequestWithProxy %d authorityIdentifier %@", buf, 0x12u);
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100029C5C;
    v16[3] = &unk_1004C1D48;
    v19 = v10;
    v17 = v9;
    v18 = v12;
    [(SESEndpointAndKeyXPCServer *)self endPointServiceAvailableWithProxy:v8 reason:@"getEndpointBindingAttestationRequestWithProxy" reply:v16];
  }

  else
  {
    v14 = SESDefaultLogObject();
    v15 = SESCreateAndLogError();
    (*(v10 + 2))(v10, 0, v15);
  }
}

- (void)listEndPointContainers:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SESDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v9 = +[NSXPCConnection currentConnection];
  v10 = sub_100035A18(SESClientInfo, v9);

  if (sub_1003AD208(v10) & 1) != 0 || (sub_1003AD230(v10))
  {
    v11 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) listEndPointContainers:reply:]"];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002A0D8;
    v14[3] = &unk_1004C1D70;
    v15 = v7;
    [(SESEndpointAndKeyXPCServer *)self endPointServiceAvailableWithProxy:v6 reason:v11 reply:v14];

    v12 = v15;
  }

  else
  {
    v12 = SESDefaultLogObject();
    v13 = SESCreateAndLogError();
    (*(v7 + 2))(v7, 0, v13);
  }
}

- (void)isCarKeySupported:(id)a3 brand:(id)a4 uuid:(id)a5 reply:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = SESDefaultLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v14 = +[NSXPCConnection currentConnection];
  v15 = sub_100035A18(SESClientInfo, v14);

  if ((sub_1003AD208(v15) & 1) == 0 && (sub_1003AD230(v15) & 1) == 0)
  {
    v19 = SESDefaultLogObject();
    v21 = SESCreateAndLogError();
    v12[2](v12, 0, v21);
    goto LABEL_13;
  }

  v16 = objc_opt_new();
  v17 = v16;
  if (v10 && v11)
  {
    v23 = 0;
    v18 = [v16 BOOLValueForSetting:8 manufacturer:v9 brand:v10 uuid:v11 error:&v23];
    v19 = v23;
    v20 = [v18 BOOLValue];
  }

  else
  {
    v22 = 0;
    v20 = [v16 isDCKConfigurationAvailableFor:v9 error:&v22];
    v19 = v22;
  }

  +[_TtC10seserviced15SESAssetManager syncMobileAssetUserInitiated];
  if (!v19)
  {
    v21 = [NSNumber numberWithBool:v20];
    (v12)[2](v12, v21, 0);
LABEL_13:

    goto LABEL_14;
  }

  v12[2](v12, 0, v19);
LABEL_14:
}

- (void)getSESEndpointTSMDictionary:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SESDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002A780;
  v11[3] = &unk_1004C1DD8;
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v9 = v6;
  v10 = v7;
  [(SESEndpointAndKeyXPCServer *)self listEndPointsWithProxy:v9 mandatoryReconciliation:1 reply:v11];
}

- (void)isSharingEnabledForManufacturer:(id)a3 brand:(id)a4 uuid:(id)a5 reply:(id)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a6;
  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v16 = 138412546;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@ - %@", &v16, 0x16u);
  }

  v12 = +[NSXPCConnection currentConnection];
  v13 = sub_100035A18(SESClientInfo, v12);

  if (sub_1003AD208(v13) & 1) != 0 || (sub_1003AD230(v13))
  {
    +[_TtC10seserviced15SESAssetManager syncMobileAssetUserInitiated];
    v14 = [NSNumber numberWithBool:1];
    v10[2](v10, v14, 0);
  }

  else
  {
    v14 = SESDefaultLogObject();
    v15 = SESCreateAndLogError();
    (v10)[2](v10, 0, v15);
  }
}

- (void)carKeyDowngradeVersionSetting:(id)a3 brand:(id)a4 uuid:(id)a5 reply:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = SESDefaultLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%@ - %@", buf, 0x16u);
  }

  v14 = +[NSXPCConnection currentConnection];
  v15 = sub_100035A18(SESClientInfo, v14);

  if ((sub_1003AD208(v15) & 1) == 0 && (sub_1003AD230(v15) & 1) == 0)
  {
    v18 = SESDefaultLogObject();
    v20 = SESCreateAndLogError();
    v12[2](v12, 0, v20);

    goto LABEL_12;
  }

  if (!v9)
  {
    +[_TtC10seserviced15SESAssetManager syncMobileAssetUserInitiated];
    v19 = 0;
    goto LABEL_9;
  }

  v16 = objc_opt_new();
  v21 = 0;
  v17 = [v16 BOOLValueForSetting:2 manufacturer:v9 brand:v10 uuid:v11 error:&v21];
  v18 = v21;
  v19 = [v17 BOOLValue];

  +[_TtC10seserviced15SESAssetManager syncMobileAssetUserInitiated];
  if (!v18)
  {
LABEL_9:
    v18 = [NSNumber numberWithBool:v19];
    (v12)[2](v12, v18, 0);
    goto LABEL_12;
  }

  v12[2](v12, 0, v18);
LABEL_12:
}

- (void)convertEndpointWithProxy:(id)a3 keyIdentifier:(id)a4 notBeforeDate:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = SESDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [v12 asHexString];
    *buf = 138412546;
    v26 = v11;
    v27 = 2112;
    v28 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "convertEndpointWithProxy %@ notBeforeDate %@", buf, 0x16u);
  }

  v16 = +[NSXPCConnection currentConnection];
  v17 = sub_100035A18(SESClientInfo, v16);

  if ((sub_1003AD208(v17) & 1) == 0 && (sub_1003AD230(v17) & 1) == 0)
  {
    v19 = SESDefaultLogObject();
LABEL_10:
    v20 = SESCreateAndLogError();
    v13[2](v13, 0, v20);

    goto LABEL_11;
  }

  if ([v12 length] != 13 && objc_msgSend(v12, "length") != 15)
  {
    v19 = SESDefaultLogObject();
    [v12 length];
    goto LABEL_10;
  }

  v18 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) convertEndpointWithProxy:keyIdentifier:notBeforeDate:reply:]"];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002B9A0;
  v21[3] = &unk_1004C1B68;
  v24 = v13;
  v22 = v11;
  v23 = v12;
  [(SESEndpointAndKeyXPCServer *)self endPointAction:v22 proxy:v10 clientInfo:v17 reason:v18 reply:v21];

  v19 = v24;
LABEL_11:
}

- (void)triggerHeadUnitPairing:(id)a3 data:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = SESDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v16[0] = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "", v16, 2u);
  }

  v11 = +[NSXPCConnection currentConnection];
  v12 = sub_100035A18(SESClientInfo, v11);

  if ((sub_1003AD208(v12) & 1) != 0 || (sub_1003AD230(v12)) && v7)
  {
    v13 = +[_TtC10seserviced14AlishaExternal shared];
    [v13 triggerHeadUnitPairingWith:v8 keyIdentifier:v7];

    v9[2](v9, 1, 0);
  }

  else
  {
    v14 = SESDefaultLogObject();
    v15 = SESCreateAndLogError();
    (v9)[2](v9, 0, v15);
  }
}

- (void)sendDeviceIntentWithConfidence:(id)a3 keyIdentifier:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = SESDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v11 = +[NSXPCConnection currentConnection];
  v12 = sub_100035A18(SESClientInfo, v11);

  if (sub_1003AD208(v12) & 1) != 0 || (sub_1003AD230(v12))
  {
    if (v7 && v8)
    {
      if ([v7 unsignedIntValue] < 3)
      {
        v15 = +[_TtC10seserviced14AlishaExternal shared];
        [v15 sendDeviceIntentFor:v8];

        v9[2](v9, 1, 0);
        goto LABEL_13;
      }

      v13 = SESDefaultLogObject();
      [v7 unsignedIntValue];
    }

    else
    {
      v13 = SESDefaultLogObject();
    }
  }

  else
  {
    v13 = SESDefaultLogObject();
  }

  v14 = SESCreateAndLogError();
  (v9)[2](v9, 0, v14);

LABEL_13:
}

- (void)notifyEndpointTracked:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = SESDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v5 asHexString];
    v14 = 138412290;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Tracking completed for key %@", &v14, 0xCu);
  }

  v9 = +[NSXPCConnection currentConnection];
  v10 = sub_100035A18(SESClientInfo, v9);

  if (sub_1003AD208(v10) & 1) != 0 || (sub_1003AD230(v10))
  {
    v11 = +[_TtC10seserviced14AlishaExternal shared];
    [v11 onTrackingCompleteFor:v5];

    v6[2](v6, 1, 0);
  }

  else
  {
    v12 = SESDefaultLogObject();
    v13 = SESCreateAndLogError();
    (v6)[2](v6, 0, v13);
  }
}

- (void)notifyPassAdded:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = SESDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v5 asHexString];
    v15 = 138412290;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Pass added for key %@", &v15, 0xCu);
  }

  v9 = +[NSXPCConnection currentConnection];
  v10 = sub_100035A18(SESClientInfo, v9);

  if (sub_1003AD208(v10) & 1) != 0 || (sub_1003AD230(v10))
  {
    v11 = +[_TtC10seserviced21AlishaPairingExternal shared];
    [v11 onPassAddedFor:v5];

    v12 = +[_SESSessionManager sessionManager];
    [v12 didCreateKey:v5];

    v6[2](v6, 1, 0);
  }

  else
  {
    v13 = SESDefaultLogObject();
    v14 = SESCreateAndLogError();
    (v6)[2](v6, 0, v14);
  }
}

- (void)getSupportedAliroVersionsWithReply:(id)a3
{
  v4 = a3;
  v6 = +[_TtC10seserviced12LyonExternal shared];
  v5 = [v6 getSupportedAliroVersions];
  (*(a3 + 2))(v4, v5, 0);
}

- (void)getEndpoints:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C778;
  block[3] = &unk_1004C0F68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)cleanupAppletsWithNoEndpoints:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002CB8C;
  block[3] = &unk_1004C0F68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

+ (id)createServer
{
  v2 = sub_1003AD3E8([SESEndpointAndKeyXPCServer alloc], @"com.apple.seserviced", @"/private/var/mobile/Library/SecureElementService/");
  v3 = qword_10050CC30;
  qword_10050CC30 = v2;

  v4 = qword_10050CC30;

  return v4;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [(__CFString *)v5 processIdentifier];
  v7 = [(__CFString *)v5 valueForEntitlement:@"application-identifier"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v33 = self;
    v8 = SESDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v43 = v7;
      v44 = 2112;
      v45 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Added connection from %@ (%@)", buf, 0x16u);
    }

    v40[0] = &off_1004DC9A8;
    v9 = [NSNumber numberWithInt:v6];
    v40[1] = &off_1004DC9C0;
    v41[0] = v9;
    v41[1] = v7;
    v10 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];
    [(__CFString *)v5 setUserInfo:v10];

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000367F0;
    v37[3] = &unk_1004C2258;
    v39 = v6;
    v11 = v7;
    v38 = v11;
    [(__CFString *)v5 setInvalidationHandler:v37];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000368A8;
    v34[3] = &unk_1004C2258;
    v36 = v6;
    v35 = v11;
    [(__CFString *)v5 setInterruptionHandler:v34];
    v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SEEndpointAndKeyXPCInterface];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [NSSet setWithObjects:v13, v14, v15, objc_opt_class(), 0];
    [v12 setClasses:v16 forSelector:? argumentIndex:? ofReply:?];

    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [NSSet setWithObjects:v17, v18, v19, objc_opt_class(), 0];
    [v12 setClasses:v20 forSelector:? argumentIndex:? ofReply:?];

    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [NSSet setWithObjects:v21, v22, objc_opt_class(), 0];
    [v12 setClasses:v23 forSelector:"verifyWithFidoKeyFor:signedChallenge:usingProxy:callback:" argumentIndex:0 ofReply:0];

    v24 = objc_opt_class();
    v25 = [NSSet setWithObjects:v24, objc_opt_class(), 0];
    v26 = 1;
    [v12 setClasses:v25 forSelector:"createPrivacyKeyForGroupIdentifier:withOptions:completion:" argumentIndex:0 ofReply:1];

    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = [NSSet setWithObjects:v27, v28, objc_opt_class(), 0];
    [v12 setClasses:v29 forSelector:"privacyKeysForGroupIdentifier:keyIdentifier:completion:" argumentIndex:0 ofReply:1];

    [v12 setClass:objc_opt_class() forSelector:"deletePrivacyKey:completion:" argumentIndex:0 ofReply:0];
    v30 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SEProxyInterface];
    [v12 setInterface:v30 forSelector:"listEndPointsWithProxy:mandatoryReconciliation:reply:" argumentIndex:0 ofReply:0];
    [v12 setInterface:v30 forSelector:"cleanupAppletsWithNoEndpoints:reply:" argumentIndex:0 ofReply:0];
    [v12 setInterface:v30 forSelector:"remoteTerminationRequestWithProxy:remoteTerminationRequest:publicKeyIdentifier:taskID:reply:" argumentIndex:0 ofReply:0];
    [v12 setInterface:v30 forSelector:"deleteEndPointWithProxy:identifier:mustBeTerminated:reply:" argumentIndex:0 ofReply:0];
    [v12 setInterface:v30 forSelector:"createAlishaEndpointWithProxy:identifier:authorityIdentifier:subjectIdentifier:configuration:readerIdentifier:readerPublicKey:readerInformation:startDate:endDate:keyIdentifier:authorizedKeys:confidentialMailBoxSize:privateMailBoxSize:reply:" argumentIndex:0 ofReply:0];
    [v12 setInterface:v30 forSelector:"createHydraEndpointWithProxy:serverParams:reply:" argumentIndex:0 ofReply:0];
    [v12 setInterface:v30 forSelector:"createLyonHydraEndpointWithProxy:serverParams:reply:" argumentIndex:0 ofReply:0];
    [v12 setInterface:v30 forSelector:"createEncryptionKeyEndPointWithProxy:identifier:reply:" argumentIndex:0 ofReply:0];
    [v12 setInterface:v30 forSelector:"updateHydraMailboxesWithProxy:identifier:encryptedSEBlob:reply:" argumentIndex:0 ofReply:0];
    [v12 setInterface:v30 forSelector:"createLocalEndpointWithProxy:readerIdentifier:readerPublicKey:reply:" argumentIndex:0 ofReply:0];
    [v12 setInterface:v30 forSelector:"createLyonEndpointWithProxy:readerGroupIdentifier:readerPublicKey:homeUUID:privateMailboxSize:reply:" argumentIndex:0 ofReply:0];
    [v12 setInterface:v30 forSelector:"updateLyonCredentialDocumentStatusWithProxy:endpointIdentifier:accessDocumentPresent:accessDocumentSignedTimestamp:revocationDocumentPresent:revocationDocumentSignedTimestamp:reply:" argumentIndex:0 ofReply:0];
    [v12 setInterface:v30 forSelector:"configureEndpointWithProxy:identifier:privateData:confidentialData:contactlessVolatileVisibility:contactlessPersistentVisibility:wiredVolatileVisibility:wiredPersistentVisibility:keySlot:nfcExpressOnlyInLPM:reply:" argumentIndex:0 ofReply:0];
    [v12 setInterface:v30 forSelector:"signWithSEKey:keyData:data:algorithm:laExternalizedContext:reply:" argumentIndex:0 ofReply:0];
    [v12 setInterface:v30 forSelector:"signPrecomputedDigest:keyData:digest:algorithm:laExternalizedContext:reply:" argumentIndex:0 ofReply:0];
    [v12 setInterface:v30 forSelector:"sharedSecretWithSEKey:keyData:publicKey:algorithm:laExternalizedContext:reply:" argumentIndex:0 ofReply:0];
    [v12 setInterface:v30 forSelector:"createPTAttestation:keyData:subjectIdentifier:nonce:OIDs:reply:" argumentIndex:0 ofReply:0];
    [v12 setInterface:v30 forSelector:"createSEKey:extractedACLs:reply:" argumentIndex:0 ofReply:0];
    [v12 setInterface:v30 forSelector:"deleteSEKey:keyData:reply:" argumentIndex:0 ofReply:0];
    [v12 setInterface:v30 forSelector:"getSESEndpointTSMDictionary:reply:" argumentIndex:0 ofReply:0];
    [v12 setInterface:v30 forSelector:"listEndPointContainers:reply:" argumentIndex:0 ofReply:0];
    [v12 setInterface:v30 forSelector:"setPrivateDataWithProxy:identifier:privateData:privateDataOffset:reply:" argumentIndex:0 ofReply:0];
    [v12 setInterface:v30 forSelector:"getPrivateDataWithProxy:identifier:privateDataOffset:privateDataLength:reply:" argumentIndex:0 ofReply:0];
    [v12 setInterface:v30 forSelector:"convertEndpointWithProxy:keyIdentifier:notBeforeDate:reply:" argumentIndex:0 ofReply:0];
    [v12 setInterface:v30 forSelector:"createFiDOKeyForRelyingParty:relyingPartyAccountHash:challenge:usingProxy:callback:" argumentIndex:3 ofReply:0];
    [v12 setInterface:v30 forSelector:"findAndAttest:challenge:usingProxy:callback:" argumentIndex:2 ofReply:0];
    [v12 setInterface:v30 forSelector:"deleteFiDOKeyFor:usingProxy:callback:" argumentIndex:1 ofReply:0];
    [v12 setInterface:v30 forSelector:"checkMultipleFidoKeyPresence:usingProxy:callback:" argumentIndex:1 ofReply:0];
    [v12 setInterface:v30 forSelector:"signMultipleWithFidoKeysFor:challenges:forEndpointIdentifiers:externalizedAuth:usingProxy:callback:" argumentIndex:4 ofReply:0];
    [v12 setInterface:v30 forSelector:"verifyWithFidoKeyFor:signedChallenge:usingProxy:callback:" argumentIndex:2 ofReply:0];
    [v12 setInterface:v30 forSelector:"getEndpointBindingAttestationRequestWithProxy:authorityIdentifier:reply:" argumentIndex:0 ofReply:0];
    [v12 setInterface:v30 forSelector:"preAuthorizeEndpointWithProxy:keyIdentifier:bindingAttestation:reply:" argumentIndex:0 ofReply:0];
    [v12 setInterface:v30 forSelector:"authorizeEndPointWithProxy:version:identifier:externalCA:instanceCA:endpointCertificate:encryptionKeyAttestation:bindingAttestation:bindingAttestationToken:confidentialDataOffset:confidentialDataLength:metaData:authorizationID:reply:" argumentIndex:0 ofReply:0];
    [v12 setInterface:v30 forSelector:"signPrecomputedWithSELegacyKey:keySlot:metaData:authorization:authorizationType:reply:" argumentIndex:0 ofReply:0];
    [(__CFString *)v5 setExportedInterface:v12];
    [(__CFString *)v5 setExportedObject:v33];
    [(__CFString *)v5 resume];

    v31 = v38;
  }

  else
  {
    v31 = SESDefaultLogObject();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v43 = @"application-identifier";
      v44 = 2112;
      v45 = v7;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Missing or wrong type entitlement %@ : %@", buf, 0x16u);
    }

    v26 = 0;
  }

  return v26;
}

- (void)start
{
  v3 = SESDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Starting seserviced XPC server ", v4, 2u);
  }

  [(SESEndpointAndKeyXPCServer *)self resume];
}

- (void)onFirstUnlock
{
  v3 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100036B68;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_sync(v3, block);

  v4 = +[_TtC10seserviced3DSK queue];
  dispatch_async(v4, &stru_1004C22C8);

  if (([SESBootUUID isFirstLaunchAfterBootForKey:@"applet.personalization.last.check.uuid"]& 1) != 0)
  {
    v5 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100037044;
    v7[3] = &unk_1004C2340;
    v7[4] = self;
    [SESProximityChip cacheProximityChipData:v5 completion:v7];
  }

  else
  {
    v6 = SESDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Skipping applet personalization", buf, 2u);
    }

    sub_100036F74();
  }
}

- (void)fixEndpointSignatureCertificatePK:(id)a3
{
  v4 = a3;
  v5 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
  if (([v6 BOOLForKey:@"SignatureCertificatePKsHaveBeenFixed"] & 1) == 0)
  {
    v7 = SESDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Fixing signature certificate PKs", buf, 2u);
    }

    *buf = 0;
    v25 = buf;
    v26 = 0x3032000000;
    v27 = sub_100042BB8;
    v28 = sub_100042BC8;
    v29 = 0;
    obj = 0;
    v8 = sub_1000598B8(SESEndpointDatabase, @"A000000809434343444B417631", v4, &obj);
    objc_storeStrong(&v29, obj);
    if (*(v25 + 5))
    {
      v9 = SESDefaultLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *(v25 + 5);
        *v30 = 138412290;
        v31 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to get instance entity %@", v30, 0xCu);
      }
    }

    else
    {
      v11 = objc_opt_new();
      [v8 endPoints];
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_100042BD0;
      v12 = v19 = &unk_1004C2930;
      v20 = v12;
      v9 = v11;
      v21 = v9;
      v22 = buf;
      sub_1003AD2A8(v4, &v16);
      if (*(v25 + 5))
      {
        v13 = SESDefaultLogObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = *(v25 + 5);
          *v30 = 138412290;
          v31 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to fix signature certificate PKs %@", v30, 0xCu);
        }
      }

      else
      {
        v15 = SESDefaultLogObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Signature certificate PKs have been fixed", v30, 2u);
        }

        [v6 setBool:1 forKey:{@"SignatureCertificatePKsHaveBeenFixed", v16, v17, v18, v19, v20}];
      }
    }

    _Block_object_dispose(buf, 8);
  }
}

+ (id)createServerWithMachServiceName:(id)a3 storagePath:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = sub_1003AD3E8([SESEndpointAndKeyXPCServer alloc], v6, v5);

  v8 = qword_10050CC30;
  qword_10050CC30 = v7;

  v9 = qword_10050CC30;

  return v9;
}

@end