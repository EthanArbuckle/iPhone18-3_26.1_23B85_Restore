@interface SESEndpointAndKeyXPCServer
+ (id)createServer;
+ (id)createServerWithMachServiceName:(id)name storagePath:(id)path;
- (BOOL)_deleteLoadedKey:(id)key instanceAID:(id)d loadedKey:(id)loadedKey error:(id *)error;
- (BOOL)_preWarmAlishaInternal:(id)internal handle:(id)handle proximityChipInfo:(id)info manufactuer:(id)manufactuer clientName:(id)name error:(id *)error;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_aclForFidoAttestingKey;
- (id)_applyConfidentialMailboxContents:(id *)contents secureElement:(id)element instanceAID:(id)d keyIdentifier:(id)identifier;
- (id)_applyPrivateMailboxContents:(id *)contents secureElement:(id)element instanceAID:(id)d keyIdentifier:(id)identifier;
- (id)_cleanupAppletsWithNoEndpoints:(id)endpoints handle:(id)handle;
- (id)_createEndPointCA:(id)a handle:(id)handle clientName:(id)name identifier:(id)identifier subjectIdentifier:(id)subjectIdentifier forEndPointType:(int64_t)type error:(id *)error;
- (id)_createKey:(id)key acl:(id)acl error:(id *)error;
- (id)_createSynchronizableKey:(id)key extractedACLs:(id)ls error:(id *)error;
- (id)_ensureCAExistsAndValid:(id)valid clientName:(id)name secureElement:(id)element handle:(id)handle forEndPointType:(int64_t)type error:(id *)error;
- (id)_getBAACertificatesForKey:(id)key key:(id)a4 subjectIdentifier:(id)identifier nonce:(id)nonce OIDs:(id)ds validityInterval:(id)interval error:(id *)error;
- (id)_getEndPointAndValidateAccess:(id)access identifier:(id)identifier clientInfo:(id)info outEndPointEntity:(id *)entity outEndPoint:(id *)point;
- (id)_renewEndPointCAIfExpired:(id)expired secureElement:(id)element forEndPointType:(int64_t)type handle:(id)handle;
- (id)findAndLoadKey:(id)key secureElement:(id)element error:(id *)error;
- (id)getEncryptedCarOEMProprietaryData:(id)data withEndpointEntity:(id)entity withSecureElement:(id)element;
- (id)getKeyHandle:(id)handle key:(id)key error:(id *)error;
- (id)getOccupiedLegacyKeySlots:(id *)slots;
- (id)getUsableKeySlot:(id)slot;
- (id)getUsableLegacyKeySlot:(id)slot outError:(id *)error;
- (id)initializeRAMRepresentation:(id)representation;
- (id)revokeRemoteTerminationRequestEndPoints:(id)points handle:(id)handle identifier:(id)identifier taskID:(id)d clientInfo:(id)info outError:(id *)error;
- (os_state_data_s)_dumpState;
- (unint64_t)_existsDuplicateInDatabase:(id)database withIdentifier:(id)identifier orReaderIdentifier:(id)readerIdentifier outError:(id *)error;
- (void)addEndpointId:(id)id withUuid:(id)uuid reply:(id)reply;
- (void)addInvitationWithId:(id)id data:(id)data reply:(id)reply;
- (void)authorizeEndPointWithProxy:(id)proxy version:(unsigned __int8)version identifier:(id)identifier externalCA:(id)a instanceCA:(id)cA endpointCertificate:(id)certificate encryptionKeyAttestation:(id)attestation bindingAttestation:(id)self0 bindingAttestationToken:(id)self1 confidentialDataOffset:(unsigned __int16)self2 confidentialDataLength:(unsigned __int16)self3 metaData:(id)self4 authorizationID:(id)self5 reply:(id)self6;
- (void)carKeyDowngradeVersionSetting:(id)setting brand:(id)brand uuid:(id)uuid reply:(id)reply;
- (void)checkKeyValidity:(id)validity completion:(id)completion;
- (void)checkMultipleFidoKeyPresence:(id)presence usingProxy:(id)proxy callback:(id)callback;
- (void)cleanupAppletsWithNoEndpoints:(id)endpoints completion:(id)completion;
- (void)cleanupAppletsWithNoEndpoints:(id)endpoints reply:(id)reply;
- (void)configureEndpointWithProxy:(id)proxy identifier:(id)identifier privateData:(id)data confidentialData:(id)confidentialData contactlessVolatileVisibility:(id)visibility contactlessPersistentVisibility:(id)persistentVisibility wiredVolatileVisibility:(id)volatileVisibility wiredPersistentVisibility:(id)self0 keySlot:(id)self1 nfcExpressOnlyInLPM:(id)self2 reply:(id)self3;
- (void)convertEndpointWithProxy:(id)proxy keyIdentifier:(id)identifier notBeforeDate:(id)date reply:(id)reply;
- (void)createAlishaEndpointWithProxy:(id)proxy identifier:(id)identifier authorityIdentifier:(id)authorityIdentifier subjectIdentifier:(id)subjectIdentifier configuration:(id)configuration readerIdentifier:(id)readerIdentifier readerPublicKey:(id)key readerInformation:(id)self0 startDate:(id)self1 endDate:(id)self2 keyIdentifier:(id)self3 authorizedKeys:(id)self4 confidentialMailBoxSize:(id)self5 privateMailBoxSize:(id)self6 reply:(id)self7;
- (void)createCertificateForKeyData:(id)data withKeyData:(id)keyData subjectIdentifier:(id)identifier authorityIdentifier:(id)authorityIdentifier laExternalizedContext:(id)context nonce:(id)nonce OIDs:(id)ds reply:(id)self0;
- (void)createEncryptionKeyEndPointWithProxy:(id)proxy identifier:(id)identifier reply:(id)reply;
- (void)createEndPointAuthorizationID:(id)d userAuth:(id)auth reply:(id)reply;
- (void)createFiDOKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash challenge:(id)challenge usingProxy:(id)proxy callback:(id)callback;
- (void)createHydraEndpointWithProxy:(id)proxy serverParams:(id)params reply:(id)reply;
- (void)createLocalEndpointWithProxy:(id)proxy readerIdentifier:(id)identifier readerPublicKey:(id)key reply:(id)reply;
- (void)createLyonEndpointWithProxy:(id)proxy readerGroupIdentifier:(id)identifier readerPublicKey:(id)key homeUUID:(id)d privateMailboxSize:(id)size reply:(id)reply;
- (void)createLyonHydraEndpointWithProxy:(id)proxy serverParams:(id)params reply:(id)reply;
- (void)createPTAttestation:(id)attestation keyData:(id)data subjectIdentifier:(id)identifier nonce:(id)nonce OIDs:(id)ds reply:(id)reply;
- (void)createPrivacyKeyForGroupIdentifier:(id)identifier withOptions:(id)options completion:(id)completion;
- (void)createSEABAASCertificate:(id)certificate subjectIdentifier:(id)identifier nonce:(id)nonce OIDs:(id)ds validityInterval:(id)interval reply:(id)reply;
- (void)createSEKey:(id)key extractedACLs:(id)ls reply:(id)reply;
- (void)createSELegacyKey:(id)key subjectIdentifier:(id)identifier metaData:(id)data localValidationList:(id)list reply:(id)reply;
- (void)databaseServiceWithProxy:(id)proxy isReconcileRequired:(BOOL)required reason:(id)reason reply:(id)reply;
- (void)decryptPayload:(id)payload withGroupIdentifier:(id)identifier completion:(id)completion;
- (void)decryptWithSEKey:(id)key cipherText:(id)text publicKey:(id)publicKey algorithm:(id)algorithm laExternalizedContext:(id)context sharedInfo:(id)info authenticationData:(id)data authenticationTag:(id)self0 reply:(id)self1;
- (void)deleteEndPointAuthorizationID:(id)d reply:(id)reply;
- (void)deleteEndPointWithProxy:(id)proxy identifier:(id)identifier mustBeTerminated:(BOOL)terminated reply:(id)reply;
- (void)deleteEndPointWithPublicKey:(id)key reply:(id)reply;
- (void)deleteEndPointWithPublicKeyIdentifier:(id)identifier reply:(id)reply;
- (void)deleteEndpointIdWithUuid:(id)uuid reply:(id)reply;
- (void)deleteFiDOKeyFor:(id)for usingProxy:(id)proxy callback:(id)callback;
- (void)deleteInvitationWithId:(id)id reply:(id)reply;
- (void)deletePrivacyKey:(id)key completion:(id)completion;
- (void)deleteSEKey:(id)key keyData:(id)data reply:(id)reply;
- (void)deleteSELegacyKey:(id)key keySlot:(id)slot reply:(id)reply;
- (void)designateKey:(id)key designation:(id)designation handoffToken:(id)token completion:(id)completion;
- (void)encryptPayload:(id)payload encryptionScheme:(id)scheme recipientPublicKey:(id)key completion:(id)completion;
- (void)encryptWithSEKey:(id)key plainText:(id)text publicKey:(id)publicKey algorithm:(id)algorithm laExternalizedContext:(id)context sharedInfo:(id)info authenticationData:(id)data reply:(id)self0;
- (void)endPointAction:(id)action proxy:(id)proxy clientInfo:(id)info reason:(id)reason reply:(id)reply;
- (void)endPointDBAction:(id)action clientInfo:(id)info reason:(id)reason reply:(id)reply;
- (void)endPointServiceAvailableWithProxy:(id)proxy reason:(id)reason reply:(id)reply;
- (void)findAndAttest:(id)attest challenge:(id)challenge usingProxy:(id)proxy callback:(id)callback;
- (void)fixEndpointSignatureCertificatePK:(id)k;
- (void)getCASDCertificate:(id)certificate reply:(id)reply;
- (void)getEndpointBindingAttestationRequestWithProxy:(id)proxy authorityIdentifier:(id)identifier reply:(id)reply;
- (void)getEndpointIdWithUuid:(id)uuid reply:(id)reply;
- (void)getEndpoints:(id)endpoints completion:(id)completion;
- (void)getInvitationWithId:(id)id reply:(id)reply;
- (void)getInvitations:(id)invitations;
- (void)getPrivateDataWithProxy:(id)proxy identifier:(id)identifier privateDataOffset:(unsigned __int16)offset privateDataLength:(unsigned __int16)length reply:(id)reply;
- (void)getSELegacyKeyOccupiedSlots:(id)slots reply:(id)reply;
- (void)getSESEndpointTSMDictionary:(id)dictionary reply:(id)reply;
- (void)getSESKeySupportedFeatures:(id)features;
- (void)getSupportedAliroVersionsWithReply:(id)reply;
- (void)handleMFDNotification:(id)notification;
- (void)isCarKeySupported:(id)supported brand:(id)brand uuid:(id)uuid reply:(id)reply;
- (void)isSharingEnabledForManufacturer:(id)manufacturer brand:(id)brand uuid:(id)uuid reply:(id)reply;
- (void)keyOperation:(id)operation handoffToken:(id)token keyData:(id)data reason:(id)reason reply:(id)reply;
- (void)keyServiceAvailable:(id)available handoffToken:(id)token reason:(id)reason reply:(id)reply;
- (void)legacyKeyServiceAvailable:(id)available reason:(id)reason reply:(id)reply;
- (void)listEndPointAuthorizations:(id)authorizations;
- (void)listEndPointContainers:(id)containers reply:(id)reply;
- (void)notifyEndpointTracked:(id)tracked reply:(id)reply;
- (void)notifyPassAdded:(id)added reply:(id)reply;
- (void)onFirstUnlock;
- (void)preAuthorizeEndpointWithProxy:(id)proxy keyIdentifier:(id)identifier bindingAttestation:(id)attestation reply:(id)reply;
- (void)preWarmAlisha:(id)alisha reply:(id)reply;
- (void)privacyDecryptDataWithEndPoint:(id)point data:(id)data ephemeralPublicKey:(id)key reply:(id)reply;
- (void)privacyDecryptDataWithKeyPair:(id)pair secretKey:(id)key data:(id)data ephemeralPublicKey:(id)publicKey reply:(id)reply;
- (void)privacyEncryptDataWithEndPoint:(id)point data:(id)data reply:(id)reply;
- (void)privacyEncryptDataWithManufacturer:(id)manufacturer environment:(id)environment region:(id)region data:(id)data reply:(id)reply;
- (void)privacyKeysForGroupIdentifier:(id)identifier keyIdentifier:(id)keyIdentifier completion:(id)completion;
- (void)proximityAndEndpointService:(id)service reason:(id)reason completion:(id)completion;
- (void)remoteTerminationRequestWithProxy:(id)proxy remoteTerminationRequest:(id)request publicKeyIdentifier:(id)identifier taskID:(id)d reply:(id)reply;
- (void)removeDesignation:(int64_t)designation completion:(id)completion;
- (void)revokeEndPointWithIdentifier:(id)identifier nonce:(id)nonce metaData:(id)data reply:(id)reply;
- (void)rewrapWithSEKey:(id)key cipherText:(id)text publicKey:(id)publicKey decryptAlgorithm:(id)algorithm decryptSharedInfo:(id)info encryptAlgorithm:(id)encryptAlgorithm encryptSharedInfo:(id)sharedInfo certificate:(id)self0 laExternalizedContext:(id)self1 decryptAuthenticationData:(id)self2 decryptAuthenticationTag:(id)self3 encryptAuthenticationData:(id)self4 reply:(id)self5;
- (void)secureElementService:(id)service reply:(id)reply;
- (void)sendDeviceIntentWithConfidence:(id)confidence keyIdentifier:(id)identifier reply:(id)reply;
- (void)setConfidentialDataEndPointWithIdentifier:(id)identifier senderEphemeralPublicKey:(id)key encryptedData:(id)data offset:(unsigned __int16)offset reply:(id)reply;
- (void)setDesignation:(id)designation designation:(int64_t)a4 handoffToken:(id)token completion:(id)completion;
- (void)setPrivateDataWithProxy:(id)proxy identifier:(id)identifier privateData:(id)data privateDataOffset:(unsigned __int16)offset reply:(id)reply;
- (void)sharedSecretWithSEKey:(id)key keyData:(id)data publicKey:(id)publicKey algorithm:(id)algorithm laExternalizedContext:(id)context reply:(id)reply;
- (void)signMultipleWithFidoKeysFor:(id)for challenges:(id)challenges forEndpointIdentifiers:(id)identifiers externalizedAuth:(id)auth usingProxy:(id)proxy callback:(id)callback;
- (void)signPrecomputedDigest:(id)digest keyData:(id)data digest:(id)a5 algorithm:(id)algorithm laExternalizedContext:(id)context reply:(id)reply;
- (void)signPrecomputedWithSELegacyKey:(id)key keySlot:(id)slot metaData:(id)data authorization:(id)authorization authorizationType:(id)type reply:(id)reply;
- (void)signWithSEKey:(id)key keyData:(id)data data:(id)a5 algorithm:(id)algorithm laExternalizedContext:(id)context reply:(id)reply;
- (void)signWithSELegacyKey:(id)key keySlot:(id)slot challenge:(id)challenge metaData:(id)data authorization:(id)authorization reply:(id)reply;
- (void)signatureISO18013WithEndPointIdentifier:(id)identifier toBeSigned:(id)signed reply:(id)reply;
- (void)signatureWithEndPointIdentifier:(id)identifier metaDataHash:(id)hash authorization:(id)authorization reply:(id)reply;
- (void)start;
- (void)triggerHeadUnitPairing:(id)pairing data:(id)data reply:(id)reply;
- (void)updateACLForSEKey:(id)key extractedACLs:(id)ls laExternalizedContext:(id)context reply:(id)reply;
- (void)updateEndpoint:(id)endpoint reply:(id)reply;
- (void)updateHydraMailboxesWithProxy:(id)proxy identifier:(id)identifier encryptedSEBlob:(id)blob reply:(id)reply;
- (void)updateLyonCredentialDocumentStatusWithProxy:(id)proxy endpointIdentifier:(id)identifier accessDocumentPresent:(BOOL)present accessDocumentSignedTimestamp:(id)timestamp revocationDocumentPresent:(BOOL)documentPresent revocationDocumentSignedTimestamp:(id)signedTimestamp reply:(id)reply;
- (void)verifyWithFidoKeyFor:(id)for signedChallenge:(id)challenge usingProxy:(id)proxy callback:(id)callback;
@end

@implementation SESEndpointAndKeyXPCServer

- (id)initializeRAMRepresentation:(id)representation
{
  representationCopy = representation;
  messageQueue = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(messageQueue);

  v6 = SESDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "initializeRAMRepresentation", buf, 2u);
  }

  instanceRepresentations = [(SESEndpointAndKeyXPCServer *)self instanceRepresentations];

  if (instanceRepresentations)
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
    selfCopy = self;
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
    v54 = representationCopy;
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
    hexStringAsData = [v14 hexStringAsData];
    v65 = 0;
    v16 = sub_10002E084(representationCopy, hexStringAsData, &v65);
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

            number = [v22 number];
            keys = [(InstanceRepresentation *)v58 keys];
            v26 = [keys count];

            if (v26 <= number)
            {
              hexStringAsData2 = [v56 hexStringAsData];
              v28 = sub_100030394(representationCopy, hexStringAsData2, [v22 number]);

              v43 = SESDefaultLogObject();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                number2 = [v22 number];
                asHexString = [v20 asHexString];
                *buf = 67109378;
                *v73 = number2;
                *&v73[4] = 2112;
                *&v73[6] = asHexString;
                _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Out of range keySlot number %u from blob %@", buf, 0x12u);
              }

              keys2 = SESDefaultLogObject();
              if (os_log_type_enabled(keys2, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *v73 = v28;
                _os_log_impl(&_mh_execute_header, keys2, OS_LOG_TYPE_ERROR, "Cleaned up with error: %@", buf, 0xCu);
              }
            }

            else
            {
              keyIdentifier = [v22 keyIdentifier];
              v28 = [v9 findKeyWithKeyIdentifier:keyIdentifier];

              if (v28)
              {
                [v22 setDesignation:{objc_msgSend(v28, "designation")}];
                slotNumber = [v28 slotNumber];
                if (slotNumber != [v22 number])
                {
                  v30 = SESDefaultLogObject();
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
                  {
                    designation = [v28 designation];
                    *buf = 138412546;
                    *v73 = v22;
                    *&v73[8] = 1024;
                    *&v73[10] = designation;
                    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_FAULT, "Inconsistent state on SE %@ in designation slot %d", buf, 0x12u);
                  }

                  hexStringAsData3 = [v56 hexStringAsData];
                  number3 = [v22 number];
                  keyIdentifier2 = [v22 keyIdentifier];
                  assetACL = [v28 assetACL];
                  assetACLAttestation = [v28 assetACLAttestation];
                  v37 = sub_1003AF3C4(representationCopy, v36);
                  if ([v37 type] <= 3)
                  {
                    v38 = 1;
                  }

                  else
                  {
                    v38 = 2;
                  }

                  designation2 = [v22 designation];
                  v40 = v38;
                  representationCopy = v54;
                  [v9 designateKeyWithAid:hexStringAsData3 slotNumber:number3 keyIdentifier:keyIdentifier2 assetACL:assetACL assetACLAttestation:assetACLAttestation operationApprovalVersion:v40 designation:designation2];

                  p_vtable = (SESDatabaseTransaction + 24);
                }
              }

              keys2 = [(InstanceRepresentation *)v58 keys];
              -[NSObject setObject:atIndexedSubscript:](keys2, "setObject:atIndexedSubscript:", v22, [v22 number]);
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
              [(SESEndpointAndKeyXPCServer *)selfCopy setInstanceRepresentations:v12];
              messageQueue2 = [(SESEndpointAndKeyXPCServer *)selfCopy messageQueue];
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

- (void)handleMFDNotification:(id)notification
{
  messageQueue = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003AEC;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_async(messageQueue, block);
}

- (os_state_data_s)_dumpState
{
  messageQueue = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(messageQueue);

  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  instanceRepresentations = [(SESEndpointAndKeyXPCServer *)self instanceRepresentations];
  v6 = [instanceRepresentations countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(instanceRepresentations);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        keys = [v10 keys];
        v12 = [keys filterMap:&stru_1004C0940];

        v13 = [v10 AID];
        [v4 setObject:v12 forKeyedSubscript:v13];
      }

      v7 = [instanceRepresentations countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = sub_100015DA0("seskeyxpc.state", v4);
  return v14;
}

- (void)keyServiceAvailable:(id)available handoffToken:(id)token reason:(id)reason reply:(id)reply
{
  availableCopy = available;
  tokenCopy = token;
  reasonCopy = reason;
  replyCopy = reply;
  v14 = SESDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 67240448;
    v27 = availableCopy != 0;
    v28 = 1026;
    v29 = tokenCopy != 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "KeyServiceAvailable proxy %{public}d token %{public}d", buf, 0xEu);
  }

  v15 = +[NSXPCConnection currentConnection];
  v16 = sub_100035A18(SESClientInfo, v15);

  if (sub_1003AD244(v16))
  {
    messageQueue = [(SESEndpointAndKeyXPCServer *)self messageQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003F64;
    block[3] = &unk_1004C09B8;
    v21 = availableCopy;
    v22 = tokenCopy;
    v23 = reasonCopy;
    selfCopy = self;
    v25 = replyCopy;
    dispatch_async(messageQueue, block);

    v18 = v21;
  }

  else
  {
    v18 = SESDefaultLogObject();
    v19 = SESCreateAndLogError();
    (*(replyCopy + 2))(replyCopy, 0, v19);
  }
}

- (void)legacyKeyServiceAvailable:(id)available reason:(id)reason reply:(id)reply
{
  availableCopy = available;
  reasonCopy = reason;
  replyCopy = reply;
  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 67240192;
    v23 = availableCopy != 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "legacyKeyServiceAvailable proxy %{public}d", buf, 8u);
  }

  v12 = +[NSXPCConnection currentConnection];
  v13 = sub_100035A18(SESClientInfo, v12);

  if (sub_1003AD258(v13))
  {
    messageQueue = [(SESEndpointAndKeyXPCServer *)self messageQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000043FC;
    v17[3] = &unk_1004C09E0;
    v18 = availableCopy;
    v19 = reasonCopy;
    selfCopy = self;
    v21 = replyCopy;
    dispatch_async(messageQueue, v17);

    v15 = v18;
  }

  else
  {
    v15 = SESDefaultLogObject();
    v16 = SESCreateAndLogError();
    (*(replyCopy + 2))(replyCopy, 0, v16);
  }
}

- (void)keyOperation:(id)operation handoffToken:(id)token keyData:(id)data reason:(id)reason reply:(id)reply
{
  operationCopy = operation;
  tokenCopy = token;
  reasonCopy = reason;
  replyCopy = reply;
  v23 = 0;
  v16 = [PTClassicKey withData:data error:&v23];
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
    v22 = replyCopy;
    v20[4] = self;
    v21 = v16;
    [(SESEndpointAndKeyXPCServer *)self keyServiceAvailable:operationCopy handoffToken:tokenCopy reason:reasonCopy reply:v20];
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 0, 0, v17);
  }
}

- (id)getUsableKeySlot:(id)slot
{
  slotCopy = slot;
  messageQueue = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(messageQueue);

  instanceRepresentations = [(SESEndpointAndKeyXPCServer *)self instanceRepresentations];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100004BC0;
  v22[3] = &unk_1004C0A30;
  v7 = slotCopy;
  v23 = v7;
  v8 = [instanceRepresentations find:v22];

  if (v8)
  {
    keys = [v8 keys];
    v10 = [keys find:&stru_1004C0A70];

    if (v10)
    {
      v11 = SESDefaultLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        number = [v10 number];
        *buf = 67109120;
        LODWORD(v25) = number;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Returning empty keySlot %u", buf, 8u);
      }

      v13 = v10;
      v14 = v13;
    }

    else
    {
      keys2 = [v8 keys];
      v16 = [keys2 filter:&stru_1004C0A90];

      if (v16)
      {
        randomElement = [v16 randomElement];
        v18 = SESDefaultLogObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          number2 = [randomElement number];
          *buf = 67109120;
          LODWORD(v25) = number2;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Returning occupied keySlot %u", buf, 8u);
        }

        v13 = randomElement;
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

- (id)getUsableLegacyKeySlot:(id)slot outError:(id *)error
{
  slotCopy = slot;
  messageQueue = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(messageQueue);

  instanceRepresentations = [(SESEndpointAndKeyXPCServer *)self instanceRepresentations];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100004ED4;
  v18[3] = &unk_1004C0A30;
  v9 = slotCopy;
  v19 = v9;
  v10 = [instanceRepresentations find:v18];

  if (v10)
  {
    keys = [v10 keys];
    v12 = [keys find:&stru_1004C0AB0];

    if (v12)
    {
      v13 = SESDefaultLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        number = [v12 number];
        *buf = 67109120;
        v21 = number;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Returning empty keySlot %u", buf, 8u);
      }

      v12 = v12;
      v15 = v12;
    }

    else
    {
      if (error)
      {
        v16 = SESDefaultLogObject();
        *error = SESCreateAndLogError();
      }

      v15 = 0;
    }

    goto LABEL_11;
  }

  if (error)
  {
    v12 = SESDefaultLogObject();
    SESCreateAndLogError();
    *error = v15 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (id)getOccupiedLegacyKeySlots:(id *)slots
{
  messageQueue = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(messageQueue);

  instanceRepresentations = [(SESEndpointAndKeyXPCServer *)self instanceRepresentations];
  v7 = [instanceRepresentations find:&stru_1004C0AF0];

  if (v7)
  {
    keys = [v7 keys];
    v9 = [keys filterMap:&stru_1004C0B30];
LABEL_5:

    goto LABEL_6;
  }

  if (slots)
  {
    keys = SESDefaultLogObject();
    SESCreateAndLogError();
    *slots = v9 = 0;
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (id)getKeyHandle:(id)handle key:(id)key error:(id *)error
{
  handleCopy = handle;
  keyCopy = key;
  messageQueue = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(messageQueue);

  instanceRepresentations = [(SESEndpointAndKeyXPCServer *)self instanceRepresentations];
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_1000058F4;
  v62[3] = &unk_1004C0A30;
  v63 = @"A000000704C0000000000002";
  v12 = [instanceRepresentations find:v62];

  if (v12)
  {
    hexStringAsData = [@"A000000704C0000000000002" hexStringAsData];
    v14 = sub_10002FFE8(handleCopy, hexStringAsData);

    v15 = SESDefaultLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      isExportedData = [keyCopy isExportedData];
      keyIdentifier = [keyCopy keyIdentifier];
      asHexString = [keyIdentifier asHexString];
      *buf = 67109634;
      *v65 = v14;
      *&v65[4] = 1024;
      *&v65[6] = isExportedData;
      *v66 = 2112;
      *&v66[2] = asHexString;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "PTCVersion %d isExportedData %d keyIdentifier %@", buf, 0x18u);
    }

    keys = [v12 keys];
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
    v24 = keyCopy;
    v20[4] = v24;
    v22 = [keys find:v20];

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
        keyNumber = [v24 keyNumber];
        number = [v22 number];
        isExportedData2 = [v24 isExportedData];
        *buf = 67109632;
        *v65 = keyNumber;
        *&v65[4] = 1024;
        *&v65[6] = number;
        *v66 = 1024;
        *&v66[2] = isExportedData2;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Loading key with number 0x%x in slot %u (exported %d)", buf, 0x14u);
      }

      if (![v24 isExportedData])
      {
        hexStringAsData2 = [@"A000000704C0000000000002" hexStringAsData];
        v45 = sub_100034304(handleCopy, hexStringAsData2, v24, [v22 number]);

        if (!v45)
        {
          goto LABEL_38;
        }

        hexStringAsData3 = [@"A000000704C0000000000002" hexStringAsData];
        v47 = sub_100030394(handleCopy, hexStringAsData3, [v22 number]);

        [v22 resetToEmpty];
        if (error)
        {
          v48 = v45;
          *error = v45;
        }

LABEL_47:
        v23 = 0;
        goto LABEL_15;
      }

      v32 = +[_TtC10seserviced16SEKeySyncManager singleton];
      keyData = [v24 keyData];
      v59 = 0;
      v34 = [v32 haveAvailableTLKForEncryptedData:keyData secureElement:handleCopy error:&v59];
      v35 = v59;

      if (![v34 BOOLValue] || v35)
      {
        if (!error)
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
        hexStringAsData4 = [@"A000000704C0000000000002" hexStringAsData];
        v37 = sub_10002FFE8(handleCopy, hexStringAsData4);

        if (v37 <= 3 && (([@"A000000704C0000000000002" hexStringAsData], v38 = objc_claimAutoreleasedReturnValue(), v58 = 0, v39 = sub_100035698(handleCopy, v38, objc_msgSend(v22, "number"), &v58), v35 = v58, v38, !v39) || v35))
        {
          hexStringAsData5 = [@"A000000704C0000000000002" hexStringAsData];
          v54 = sub_100030394(handleCopy, hexStringAsData5, [v22 number]);

          [v22 resetToEmpty];
          if (!error)
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
          hexStringAsData6 = [@"A000000704C0000000000002" hexStringAsData];
          number2 = [v22 number];
          keyData2 = [v24 keyData];
          v57 = 0;
          v43 = sub_1000347E4(handleCopy, hexStringAsData6, number2, keyData2, &v57);
          v35 = v57;

          if (v43 && !v35)
          {

LABEL_38:
            [v22 didLoadKey:v24];
LABEL_14:
            v23 = [LoadedKeySlot withKeySlot:v22 key:v24];
            goto LABEL_15;
          }

          hexStringAsData7 = [@"A000000704C0000000000002" hexStringAsData];
          v52 = sub_100030394(handleCopy, hexStringAsData7, [v22 number]);

          [v22 resetToEmpty];
          v34 = v56;
          if (!error)
          {
            v32 = v55;
            goto LABEL_46;
          }

          v49 = SESDefaultLogObject();
          v50 = SESCreateAndLogError();
          v32 = v55;
        }
      }

      *error = v50;

      goto LABEL_46;
    }

    if (error)
    {
      v22 = SESDefaultLogObject();
      goto LABEL_8;
    }
  }

  else if (error)
  {
    v22 = SESDefaultLogObject();
LABEL_8:
    SESCreateAndLogError();
    *error = v23 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v23 = 0;
LABEL_16:

  return v23;
}

- (id)findAndLoadKey:(id)key secureElement:(id)element error:(id *)error
{
  elementCopy = element;
  keyCopy = key;
  v10 = +[_TtC10seserviced16SEFidoKeyManager singleton];
  relyingParty = [keyCopy relyingParty];
  relyingPartyAccountHash = [keyCopy relyingPartyAccountHash];
  fidoKeyHash = [keyCopy fidoKeyHash];

  v29 = 0;
  v14 = [v10 findKeyForRelyingParty:relyingParty relyingPartyAccountHash:relyingPartyAccountHash fidoKeyHash:fidoKeyHash secureElement:elementCopy error:&v29];
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

      if (error)
      {
        v23 = v17;
        v20 = 0;
        *error = v17;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v27 = 0;
      v18 = [(SESEndpointAndKeyXPCServer *)self getKeyHandle:elementCopy key:v16 error:&v27];
      v19 = v27;
      v17 = v19;
      if (!v18 || v19)
      {
        v24 = +[_TtC10seserviced12SEFidoEvents unspecifiedError];
        [v10 reportCAEvent:v24];

        if (error)
        {
          v25 = v17;
          v20 = 0;
          *error = v17;
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

  else if (error)
  {
    v21 = v15;
    v20 = 0;
    *error = v15;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)createSELegacyKey:(id)key subjectIdentifier:(id)identifier metaData:(id)data localValidationList:(id)list reply:(id)reply
{
  identifierCopy = identifier;
  dataCopy = data;
  listCopy = list;
  replyCopy = reply;
  keyCopy = key;
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
  v26 = listCopy;
  v27 = replyCopy;
  v23[4] = self;
  v24 = identifierCopy;
  v25 = dataCopy;
  v19 = listCopy;
  v20 = dataCopy;
  v21 = identifierCopy;
  v22 = replyCopy;
  [(SESEndpointAndKeyXPCServer *)self legacyKeyServiceAvailable:keyCopy reason:v18 reply:v23];
}

- (void)deleteSELegacyKey:(id)key keySlot:(id)slot reply:(id)reply
{
  slotCopy = slot;
  replyCopy = reply;
  keyCopy = key;
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
  selfCopy = self;
  v18 = replyCopy;
  v16 = slotCopy;
  v13 = slotCopy;
  v14 = replyCopy;
  [(SESEndpointAndKeyXPCServer *)self legacyKeyServiceAvailable:keyCopy reason:v12 reply:v15];
}

- (void)signWithSELegacyKey:(id)key keySlot:(id)slot challenge:(id)challenge metaData:(id)data authorization:(id)authorization reply:(id)reply
{
  slotCopy = slot;
  challengeCopy = challenge;
  dataCopy = data;
  authorizationCopy = authorization;
  replyCopy = reply;
  keyCopy = key;
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
  v31 = authorizationCopy;
  v32 = replyCopy;
  v28 = slotCopy;
  v29 = challengeCopy;
  v30 = dataCopy;
  v22 = authorizationCopy;
  v23 = dataCopy;
  v24 = challengeCopy;
  v25 = slotCopy;
  v26 = replyCopy;
  [(SESEndpointAndKeyXPCServer *)self legacyKeyServiceAvailable:keyCopy reason:v21 reply:v27];
}

- (void)signPrecomputedWithSELegacyKey:(id)key keySlot:(id)slot metaData:(id)data authorization:(id)authorization authorizationType:(id)type reply:(id)reply
{
  slotCopy = slot;
  dataCopy = data;
  authorizationCopy = authorization;
  typeCopy = type;
  replyCopy = reply;
  keyCopy = key;
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
  v31 = typeCopy;
  v32 = replyCopy;
  v28 = slotCopy;
  v29 = dataCopy;
  v30 = authorizationCopy;
  v22 = typeCopy;
  v23 = authorizationCopy;
  v24 = dataCopy;
  v25 = slotCopy;
  v26 = replyCopy;
  [(SESEndpointAndKeyXPCServer *)self legacyKeyServiceAvailable:keyCopy reason:v21 reply:v27];
}

- (void)getSELegacyKeyOccupiedSlots:(id)slots reply:(id)reply
{
  replyCopy = reply;
  slotsCopy = slots;
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
  v12 = replyCopy;
  v10 = replyCopy;
  [(SESEndpointAndKeyXPCServer *)self legacyKeyServiceAvailable:slotsCopy reason:v9 reply:v11];
}

- (void)createSEKey:(id)key extractedACLs:(id)ls reply:(id)reply
{
  lsCopy = ls;
  replyCopy = reply;
  keyCopy = key;
  v11 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) createSEKey:extractedACLs:reply:]"];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100006CDC;
  v14[3] = &unk_1004C0A08;
  selfCopy = self;
  v17 = replyCopy;
  v15 = lsCopy;
  v12 = lsCopy;
  v13 = replyCopy;
  [(SESEndpointAndKeyXPCServer *)self keyServiceAvailable:keyCopy reason:v11 reply:v14];
}

- (id)_createSynchronizableKey:(id)key extractedACLs:(id)ls error:(id *)error
{
  keyCopy = key;
  lsCopy = ls;
  v10 = SESDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "_createSynchronizableKey", buf, 2u);
  }

  v11 = +[_TtC10seserviced16SEKeySyncManager singleton];
  ptcViewName = [v11 ptcViewName];
  v13 = [v11 getAvailableTLKForViewName:ptcViewName secureElement:keyCopy];

  if (v13)
  {
    *buf = 0;
    v45 = buf;
    v46 = 0x3032000000;
    v47 = sub_100007324;
    v48 = sub_100007334;
    v49 = 0;
    obj = 0;
    v14 = [(SESEndpointAndKeyXPCServer *)self _createKey:keyCopy acl:lsCopy error:&obj];
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
          v29 = keyCopy;
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
              slot = [v19 slot];
              number = [slot number];
              v24 = *(v45 + 5);
              *v50 = 67109378;
              v51 = number;
              v52 = 2112;
              v53 = v24;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to export key, deleting it from slot %d (%@)", v50, 0x12u);
            }

            hexStringAsData = [@"A000000704C0000000000002" hexStringAsData];
            [(SESEndpointAndKeyXPCServer *)self _deleteLoadedKey:v29 instanceAID:hexStringAsData loadedKey:v19 error:0];

            if (error)
            {
              v26 = SESDefaultLogObject();
              *error = SESCreateAndLogError();
            }

            v16 = 0;
          }

          _Block_object_dispose(&v36, 8);
          goto LABEL_25;
        }
      }

      if (error)
      {
        v27 = SESDefaultLogObject();
        *error = SESCreateAndLogError();
      }
    }

    else if (error)
    {
      v15 = *(v45 + 5);
      SESEnsureError();
      *error = v16 = 0;
LABEL_25:

      _Block_object_dispose(buf, 8);
      goto LABEL_26;
    }

    v16 = 0;
    goto LABEL_25;
  }

  if (error)
  {
    v17 = SESDefaultLogObject();
    *error = SESCreateAndLogError();
  }

  v16 = 0;
LABEL_26:

  return v16;
}

- (void)deleteSEKey:(id)key keyData:(id)data reply:(id)reply
{
  replyCopy = reply;
  dataCopy = data;
  keyCopy = key;
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
  v15 = replyCopy;
  v13 = replyCopy;
  [(SESEndpointAndKeyXPCServer *)self keyOperation:keyCopy keyData:dataCopy reason:v12 reply:v14];
}

- (void)signWithSEKey:(id)key keyData:(id)data data:(id)a5 algorithm:(id)algorithm laExternalizedContext:(id)context reply:(id)reply
{
  keyCopy = key;
  dataCopy = data;
  v16 = a5;
  algorithmCopy = algorithm;
  contextCopy = context;
  replyCopy = reply;
  if (dataCopy && v16 && algorithmCopy && contextCopy)
  {
    v20 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) signWithSEKey:keyData:data:algorithm:laExternalizedContext:reply:]"];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100007814;
    v23[3] = &unk_1004C0C40;
    v27 = replyCopy;
    v24 = contextCopy;
    v25 = v16;
    v26 = algorithmCopy;
    [(SESEndpointAndKeyXPCServer *)self keyOperation:keyCopy keyData:dataCopy reason:v20 reply:v23];
  }

  else
  {
    v21 = SESDefaultLogObject();
    v22 = SESCreateAndLogError();
    (*(replyCopy + 2))(replyCopy, 0, v22);
  }
}

- (void)signPrecomputedDigest:(id)digest keyData:(id)data digest:(id)a5 algorithm:(id)algorithm laExternalizedContext:(id)context reply:(id)reply
{
  digestCopy = digest;
  dataCopy = data;
  v16 = a5;
  algorithmCopy = algorithm;
  contextCopy = context;
  replyCopy = reply;
  if (dataCopy && v16 && algorithmCopy && contextCopy)
  {
    v20 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) signPrecomputedDigest:keyData:digest:algorithm:laExternalizedContext:reply:]"];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100007BA4;
    v23[3] = &unk_1004C0C40;
    v27 = replyCopy;
    v24 = contextCopy;
    v25 = v16;
    v26 = algorithmCopy;
    [(SESEndpointAndKeyXPCServer *)self keyOperation:digestCopy keyData:dataCopy reason:v20 reply:v23];
  }

  else
  {
    v21 = SESDefaultLogObject();
    v22 = SESCreateAndLogError();
    (*(replyCopy + 2))(replyCopy, 0, v22);
  }
}

- (void)sharedSecretWithSEKey:(id)key keyData:(id)data publicKey:(id)publicKey algorithm:(id)algorithm laExternalizedContext:(id)context reply:(id)reply
{
  keyCopy = key;
  dataCopy = data;
  publicKeyCopy = publicKey;
  algorithmCopy = algorithm;
  contextCopy = context;
  replyCopy = reply;
  v20 = SESDefaultLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "", buf, 2u);
  }

  if (dataCopy && publicKeyCopy && algorithmCopy && contextCopy)
  {
    v21 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) sharedSecretWithSEKey:keyData:publicKey:algorithm:laExternalizedContext:reply:]"];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100007F74;
    v24[3] = &unk_1004C0C40;
    v28 = replyCopy;
    v25 = contextCopy;
    v26 = publicKeyCopy;
    v27 = algorithmCopy;
    [(SESEndpointAndKeyXPCServer *)self keyOperation:keyCopy keyData:dataCopy reason:v21 reply:v24];

    v22 = v28;
  }

  else
  {
    v22 = SESDefaultLogObject();
    v23 = SESCreateAndLogError();
    (*(replyCopy + 2))(replyCopy, 0, v23);
  }
}

- (void)encryptWithSEKey:(id)key plainText:(id)text publicKey:(id)publicKey algorithm:(id)algorithm laExternalizedContext:(id)context sharedInfo:(id)info authenticationData:(id)data reply:(id)self0
{
  keyCopy = key;
  textCopy = text;
  publicKeyCopy = publicKey;
  algorithmCopy = algorithm;
  contextCopy = context;
  infoCopy = info;
  dataCopy = data;
  replyCopy = reply;
  v24 = SESDefaultLogObject();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "", buf, 2u);
  }

  if (keyCopy && textCopy && algorithmCopy && contextCopy)
  {
    v25 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) encryptWithSEKey:plainText:publicKey:algorithm:laExternalizedContext:sharedInfo:authenticationData:reply:]"];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10000839C;
    v28[3] = &unk_1004C0C68;
    v35 = replyCopy;
    v29 = contextCopy;
    v30 = textCopy;
    v31 = publicKeyCopy;
    v32 = infoCopy;
    v33 = algorithmCopy;
    v34 = dataCopy;
    [(SESEndpointAndKeyXPCServer *)self keyOperation:0 keyData:keyCopy reason:v25 reply:v28];

    v26 = v35;
  }

  else
  {
    v26 = SESDefaultLogObject();
    v27 = SESCreateAndLogError();
    (*(replyCopy + 2))(replyCopy, 0, 0, v27);
  }
}

- (void)decryptWithSEKey:(id)key cipherText:(id)text publicKey:(id)publicKey algorithm:(id)algorithm laExternalizedContext:(id)context sharedInfo:(id)info authenticationData:(id)data authenticationTag:(id)self0 reply:(id)self1
{
  keyCopy = key;
  textCopy = text;
  publicKeyCopy = publicKey;
  algorithmCopy = algorithm;
  contextCopy = context;
  infoCopy = info;
  dataCopy = data;
  tagCopy = tag;
  replyCopy = reply;
  v25 = SESDefaultLogObject();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  if (keyCopy && textCopy && algorithmCopy && contextCopy)
  {
    v26 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) decryptWithSEKey:cipherText:publicKey:algorithm:laExternalizedContext:sharedInfo:authenticationData:authenticationTag:reply:]"];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10000885C;
    v38[3] = &unk_1004C0C90;
    v46 = replyCopy;
    v39 = contextCopy;
    v40 = textCopy;
    v41 = publicKeyCopy;
    v42 = infoCopy;
    v43 = algorithmCopy;
    v44 = dataCopy;
    v45 = tagCopy;
    [(SESEndpointAndKeyXPCServer *)self keyOperation:0 keyData:keyCopy reason:v26 reply:v38];

    v27 = v46;
  }

  else
  {
    v27 = SESDefaultLogObject();
    SESCreateAndLogError();
    v37 = algorithmCopy;
    v28 = contextCopy;
    v29 = textCopy;
    v30 = keyCopy;
    v31 = tagCopy;
    v32 = dataCopy;
    v33 = infoCopy;
    v35 = v34 = publicKeyCopy;
    (*(replyCopy + 2))(replyCopy, 0, v35);

    publicKeyCopy = v34;
    infoCopy = v33;
    dataCopy = v32;
    tagCopy = v31;
    keyCopy = v30;
    textCopy = v29;
    contextCopy = v28;
    algorithmCopy = v37;
  }
}

- (void)rewrapWithSEKey:(id)key cipherText:(id)text publicKey:(id)publicKey decryptAlgorithm:(id)algorithm decryptSharedInfo:(id)info encryptAlgorithm:(id)encryptAlgorithm encryptSharedInfo:(id)sharedInfo certificate:(id)self0 laExternalizedContext:(id)self1 decryptAuthenticationData:(id)self2 decryptAuthenticationTag:(id)self3 encryptAuthenticationData:(id)self4 reply:(id)self5
{
  keyCopy = key;
  textCopy = text;
  publicKeyCopy = publicKey;
  algorithmCopy = algorithm;
  infoCopy = info;
  encryptAlgorithmCopy = encryptAlgorithm;
  sharedInfoCopy = sharedInfo;
  certificateCopy = certificate;
  contextCopy = context;
  dataCopy = data;
  tagCopy = tag;
  authenticationDataCopy = authenticationData;
  replyCopy = reply;
  v29 = SESDefaultLogObject();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v46 = authenticationDataCopy;

  v43 = contextCopy;
  v44 = algorithmCopy;
  v42 = textCopy;
  if (keyCopy && (v30 = textCopy) != 0 && publicKeyCopy && algorithmCopy && encryptAlgorithmCopy && certificateCopy && contextCopy)
  {
    v41 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) rewrapWithSEKey:cipherText:publicKey:decryptAlgorithm:decryptSharedInfo:encryptAlgorithm:encryptSharedInfo:certificate:laExternalizedContext:decryptAuthenticationData:decryptAuthenticationTag:encryptAuthenticationData:reply:]"];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100008DAC;
    v50[3] = &unk_1004C0CB8;
    v31 = replyCopy;
    v62 = replyCopy;
    v51 = contextCopy;
    v52 = v30;
    v53 = publicKeyCopy;
    v32 = algorithmCopy;
    v33 = certificateCopy;
    v34 = infoCopy;
    v54 = infoCopy;
    v55 = dataCopy;
    v56 = tagCopy;
    v57 = v32;
    v35 = dataCopy;
    v36 = sharedInfoCopy;
    v58 = sharedInfoCopy;
    v37 = v46;
    v59 = v46;
    v60 = encryptAlgorithmCopy;
    v61 = v33;
    [(SESEndpointAndKeyXPCServer *)self keyOperation:0 keyData:keyCopy reason:v41 reply:v50];

    v38 = v62;
  }

  else
  {
    v38 = SESDefaultLogObject();
    SESCreateAndLogError();
    v39 = v33 = certificateCopy;
    v31 = replyCopy;
    (*(replyCopy + 2))(replyCopy, 0, 0, v39);

    v36 = sharedInfoCopy;
    v34 = infoCopy;
    v35 = dataCopy;
    v37 = v46;
  }
}

- (void)createPTAttestation:(id)attestation keyData:(id)data subjectIdentifier:(id)identifier nonce:(id)nonce OIDs:(id)ds reply:(id)reply
{
  attestationCopy = attestation;
  dataCopy = data;
  identifierCopy = identifier;
  nonceCopy = nonce;
  dsCopy = ds;
  replyCopy = reply;
  v20 = +[NSXPCConnection currentConnection];
  v21 = sub_100035A18(SESClientInfo, v20);

  if ((sub_1003AD26C(v21) & 1) == 0)
  {
    v24 = SESDefaultLogObject();
LABEL_9:
    v25 = SESCreateAndLogError();
    replyCopy[2](replyCopy, 0, v25);

    goto LABEL_10;
  }

  v22 = SESDefaultLogObject();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  if (!dataCopy || !identifierCopy)
  {
    v24 = SESDefaultLogObject();
    goto LABEL_9;
  }

  v23 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) createPTAttestation:keyData:subjectIdentifier:nonce:OIDs:reply:]"];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100009240;
  v26[3] = &unk_1004C0C40;
  v30 = replyCopy;
  v27 = dsCopy;
  v28 = identifierCopy;
  v29 = nonceCopy;
  [(SESEndpointAndKeyXPCServer *)self keyOperation:attestationCopy keyData:dataCopy reason:v23 reply:v26];

LABEL_10:
}

- (void)getCASDCertificate:(id)certificate reply:(id)reply
{
  certificateCopy = certificate;
  replyCopy = reply;
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
    v15 = replyCopy;
    [(SESEndpointAndKeyXPCServer *)self keyServiceAvailable:certificateCopy reason:v11 reply:v14];
  }

  else
  {
    v12 = SESDefaultLogObject();
    v13 = SESCreateAndLogError();
    (*(replyCopy + 2))(replyCopy, 0, v13);
  }
}

- (void)createSEABAASCertificate:(id)certificate subjectIdentifier:(id)identifier nonce:(id)nonce OIDs:(id)ds validityInterval:(id)interval reply:(id)reply
{
  certificateCopy = certificate;
  identifierCopy = identifier;
  nonceCopy = nonce;
  dsCopy = ds;
  intervalCopy = interval;
  replyCopy = reply;
  v20 = SESDefaultLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "createSEABAASCertificate", buf, 2u);
  }

  if (certificateCopy)
  {
    v21 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) createSEABAASCertificate:subjectIdentifier:nonce:OIDs:validityInterval:reply:]"];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100009AC0;
    v24[3] = &unk_1004C0D08;
    v29 = replyCopy;
    v24[4] = self;
    v25 = identifierCopy;
    v26 = nonceCopy;
    v27 = dsCopy;
    v28 = intervalCopy;
    [(SESEndpointAndKeyXPCServer *)self keyOperation:0 keyData:certificateCopy reason:v21 reply:v24];

    v22 = v29;
  }

  else
  {
    v22 = SESDefaultLogObject();
    v23 = SESCreateAndLogError();
    (*(replyCopy + 2))(replyCopy, 0, v23);
  }
}

- (id)_getBAACertificatesForKey:(id)key key:(id)a4 subjectIdentifier:(id)identifier nonce:(id)nonce OIDs:(id)ds validityInterval:(id)interval error:(id *)error
{
  keyCopy = key;
  v15 = a4;
  identifierCopy = identifier;
  nonceCopy = nonce;
  dsCopy = ds;
  intervalCopy = interval;
  messageQueue = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(messageQueue);

  v18 = SESDefaultLogObject();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    slot = [v15 slot];
    number = [slot number];
    v21 = [v15 key];
    *buf = 67109376;
    v54 = number;
    v55 = 1024;
    keyNumber = [v21 keyNumber];
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "_getBAACertificatesForKey Attest with slot %u key 0x%x", buf, 0xEu);
  }

  v22 = +[NSMutableData data];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v23 = dsCopy;
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

  hexStringAsData = [@"A000000704C0000000000002" hexStringAsData];
  v47 = 0;
  v31 = identifierCopy;
  v32 = nonceCopy;
  v33 = sub_100032E80(keyCopy, hexStringAsData, v15, identifierCopy, v22, nonceCopy, 1, &v47);
  v34 = v47;

  v42 = v15;
  if (!v33 || v34)
  {
    if (error)
    {
      SESEnsureError();
      *error = v40 = 0;
    }

    else
    {
      v40 = 0;
    }

    v39 = intervalCopy;
  }

  else
  {
    v35 = +[SEABAAManager sharedManager];
    v37 = sub_1003AF3C4(keyCopy, v36);
    casdCertificate = [v37 casdCertificate];
    v39 = intervalCopy;
    v40 = [v35 PerformSEABAAWithAttestation:v33 casdCertificate:casdCertificate nonce:nonceCopy OIDs:v23 validityInterval:intervalCopy error:error];

    v31 = identifierCopy;
    v32 = nonceCopy;
  }

  return v40;
}

- (void)getSESKeySupportedFeatures:(id)features
{
  featuresCopy = features;
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
  v9 = featuresCopy;
  v7 = featuresCopy;
  [(SESEndpointAndKeyXPCServer *)self keyServiceAvailable:0 reason:v6 reply:v8];
}

- (void)createCertificateForKeyData:(id)data withKeyData:(id)keyData subjectIdentifier:(id)identifier authorityIdentifier:(id)authorityIdentifier laExternalizedContext:(id)context nonce:(id)nonce OIDs:(id)ds reply:(id)self0
{
  dataCopy = data;
  keyDataCopy = keyData;
  identifierCopy = identifier;
  authorityIdentifierCopy = authorityIdentifier;
  contextCopy = context;
  nonceCopy = nonce;
  dsCopy = ds;
  replyCopy = reply;
  v24 = SESDefaultLogObject();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  if (dataCopy && keyDataCopy && identifierCopy && authorityIdentifierCopy && contextCopy)
  {
    selfCopy = self;
    v34 = nonceCopy;
    v45 = 0;
    v25 = [PTClassicKey withData:dataCopy error:&v45];
    v26 = v45;
    v27 = v26;
    if (!v25 || v26)
    {
      replyCopy[2](replyCopy, 0, v26);
    }

    else
    {
      v44 = 0;
      v28 = [PTClassicKey withData:keyDataCopy error:&v44];
      v29 = v44;
      v27 = v29;
      if (!v28 || v29)
      {
        replyCopy[2](replyCopy, 0, v29);
        v30 = v28;
        nonceCopy = v34;
      }

      else
      {
        v32 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) createCertificateForKeyData:withKeyData:subjectIdentifier:authorityIdentifier:laExternalizedContext:nonce:OIDs:reply:]"];
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_10000A524;
        v35[3] = &unk_1004C0D30;
        v43 = replyCopy;
        v35[4] = selfCopy;
        v36 = v25;
        v37 = v28;
        v38 = dsCopy;
        v39 = contextCopy;
        v40 = identifierCopy;
        v41 = authorityIdentifierCopy;
        v31 = v28;
        nonceCopy = v34;
        v42 = v34;
        [(SESEndpointAndKeyXPCServer *)selfCopy keyServiceAvailable:0 reason:v32 reply:v35];

        v30 = v31;
      }
    }
  }

  else
  {
    v27 = SESDefaultLogObject();
    v25 = SESCreateAndLogError();
    replyCopy[2](replyCopy, 0, v25);
  }
}

- (void)updateACLForSEKey:(id)key extractedACLs:(id)ls laExternalizedContext:(id)context reply:(id)reply
{
  keyCopy = key;
  lsCopy = ls;
  contextCopy = context;
  replyCopy = reply;
  if (keyCopy && lsCopy && contextCopy)
  {
    v14 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) updateACLForSEKey:extractedACLs:laExternalizedContext:reply:]"];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000AA70;
    v17[3] = &unk_1004C0D58;
    v20 = replyCopy;
    v18 = contextCopy;
    v19 = lsCopy;
    [(SESEndpointAndKeyXPCServer *)self keyOperation:0 keyData:keyCopy reason:v14 reply:v17];
  }

  else
  {
    v15 = SESDefaultLogObject();
    v16 = SESCreateAndLogError();
    (*(replyCopy + 2))(replyCopy, 0, v16);
  }
}

- (void)checkKeyValidity:(id)validity completion:(id)completion
{
  validityCopy = validity;
  completionCopy = completion;
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
  [(SESEndpointAndKeyXPCServer *)self keyOperation:0 keyData:validityCopy reason:v9 reply:v11];

  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  completionCopy[2](completionCopy, *(v15 + 24));

  _Block_object_dispose(&v14, 8);
}

- (void)designateKey:(id)key designation:(id)designation handoffToken:(id)token completion:(id)completion
{
  keyCopy = key;
  designationCopy = designation;
  tokenCopy = token;
  completionCopy = completion;
  v14 = SESDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412546;
    v17 = keyCopy;
    v18 = 2112;
    v19 = designationCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "designateKey %@ %@", &v16, 0x16u);
  }

  integerValue = [designationCopy integerValue];
  if (keyCopy)
  {
    [(SESEndpointAndKeyXPCServer *)self setDesignation:keyCopy designation:integerValue handoffToken:tokenCopy completion:completionCopy];
  }

  else
  {
    [(SESEndpointAndKeyXPCServer *)self removeDesignation:integerValue completion:completionCopy];
  }
}

- (void)setDesignation:(id)designation designation:(int64_t)a4 handoffToken:(id)token completion:(id)completion
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000B0A8;
  v11[3] = &unk_1004C0DA8;
  completionCopy = completion;
  v13 = a4;
  v10 = completionCopy;
  [(SESEndpointAndKeyXPCServer *)self keyOperation:0 handoffToken:token keyData:designation reason:@"designateKey" reply:v11];
}

- (void)removeDesignation:(int64_t)designation completion:(id)completion
{
  completionCopy = completion;
  if (!designation)
  {
    v8 = SESDefaultLogObject();
    v10 = SESCreateAndLogError();
    completionCopy[2](completionCopy, 0, v10);
LABEL_6:

    goto LABEL_7;
  }

  v7 = +[NSXPCConnection currentConnection];
  v8 = sub_100035A18(SESClientInfo, v7);

  if ((sub_1003AD244(v8) & 1) == 0)
  {
    v10 = SESDefaultLogObject();
    v11 = SESCreateAndLogError();
    completionCopy[2](completionCopy, 0, v11);

    goto LABEL_6;
  }

  messageQueue = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B600;
  block[3] = &unk_1004C0DD0;
  v13 = completionCopy;
  designationCopy = designation;
  block[4] = self;
  dispatch_async(messageQueue, block);

LABEL_7:
}

- (void)createFiDOKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash challenge:(id)challenge usingProxy:(id)proxy callback:(id)callback
{
  partyCopy = party;
  hashCopy = hash;
  challengeCopy = challenge;
  proxyCopy = proxy;
  callbackCopy = callback;
  v17 = SESDefaultLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v18 = +[_TtC10seserviced16SEFidoKeyManager singleton];
  v19 = +[NSXPCConnection currentConnection];
  v20 = sub_100035A18(SESClientInfo, v19);

  if ((sub_1003AD280(v20) & 1) != 0 && partyCopy && hashCopy && challengeCopy)
  {
    v21 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) createFiDOKeyForRelyingParty:relyingPartyAccountHash:challenge:usingProxy:callback:]"];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10000BB2C;
    v25[3] = &unk_1004C0DF8;
    v26 = v18;
    v31 = callbackCopy;
    selfCopy = self;
    v28 = partyCopy;
    v29 = hashCopy;
    v30 = challengeCopy;
    [(SESEndpointAndKeyXPCServer *)self keyServiceAvailable:proxyCopy reason:v21 reply:v25];

    v22 = v26;
  }

  else
  {
    v23 = +[_TtC10seserviced12SEFidoEvents callerError];
    [v18 reportCAEvent:v23];

    v22 = SESDefaultLogObject();
    v24 = SESCreateAndLogError();
    (*(callbackCopy + 2))(callbackCopy, 0, v24);
  }
}

- (id)_aclForFidoAttestingKey
{
  v2 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleAfterFirstUnlock, 0, 0);
  SecAccessControlSetConstraints();

  return v2;
}

- (id)_createKey:(id)key acl:(id)acl error:(id *)error
{
  keyCopy = key;
  aclCopy = acl;
  messageQueue = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(messageQueue);

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

    hexStringAsData = [@"A000000704C0000000000002" hexStringAsData];
    v30 = 0;
    v14 = sub_10002F8AC(keyCopy, hexStringAsData, [v11 number], aclCopy, &v30);
    v15 = v30;

    if (!v14 || v15)
    {
      [v11 resetToEmpty];
      hexStringAsData2 = [@"A000000704C0000000000002" hexStringAsData];
      v23 = sub_100030394(keyCopy, hexStringAsData2, [v11 number]);

      if (error)
      {
        SESEnsureError();
        *error = v18 = 0;
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
          number = [v11 number];
          *buf = 67109120;
          LODWORD(v32) = number;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to create key object, resetting and deleting slot %d", buf, 8u);
        }

        [v11 resetToEmpty];
        hexStringAsData3 = [@"A000000704C0000000000002" hexStringAsData];
        v27 = sub_100030394(keyCopy, hexStringAsData3, [v11 number]);

        if (error)
        {
          SESEnsureError();
          *error = v18 = 0;
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
          number2 = [v11 number];
          *buf = 138412546;
          v32 = v16;
          v33 = 1024;
          v34 = number2;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Created key %@ in slot %u", buf, 0x12u);
        }
      }
    }
  }

  else
  {
    if (error)
    {
      v21 = SESDefaultLogObject();
      *error = SESCreateAndLogError();
    }

    v18 = 0;
  }

  return v18;
}

- (BOOL)_deleteLoadedKey:(id)key instanceAID:(id)d loadedKey:(id)loadedKey error:(id *)error
{
  loadedKeyCopy = loadedKey;
  dCopy = d;
  keyCopy = key;
  messageQueue = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(messageQueue);

  v14 = SESDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [loadedKeyCopy key];
    slot = [loadedKeyCopy slot];
    v25 = 138412546;
    v26 = v15;
    v27 = 1024;
    number = [slot number];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Deleting key %@ in slot %d", &v25, 0x12u);
  }

  slot2 = [loadedKeyCopy slot];
  v18 = sub_100030394(keyCopy, dCopy, [slot2 number]);

  slot3 = [loadedKeyCopy slot];
  [slot3 resetToEmpty];

  v20 = [_TtC10seserviced35SESKeyDesignationStorageCoordinator getAndReturnError:0];
  v21 = [loadedKeyCopy key];
  keyIdentifier = [v21 keyIdentifier];
  [v20 removeDesignationWithKeyIdentifier:keyIdentifier];

  if (error)
  {
    v23 = v18;
    *error = v18;
  }

  return v18 == 0;
}

- (void)checkMultipleFidoKeyPresence:(id)presence usingProxy:(id)proxy callback:(id)callback
{
  presenceCopy = presence;
  proxyCopy = proxy;
  callbackCopy = callback;
  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v12 = +[_TtC10seserviced16SEFidoKeyManager singleton];
  v13 = +[NSXPCConnection currentConnection];
  v14 = sub_100035A18(SESClientInfo, v13);

  if ((sub_1003AD280(v14) & 1) != 0 && presenceCopy)
  {
    v15 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) checkMultipleFidoKeyPresence:usingProxy:callback:]"];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10000CE64;
    v19[3] = &unk_1004C0E20;
    v20 = v12;
    v22 = callbackCopy;
    v21 = presenceCopy;
    [(SESEndpointAndKeyXPCServer *)self keyServiceAvailable:proxyCopy reason:v15 reply:v19];

    v16 = v20;
  }

  else
  {
    v17 = +[_TtC10seserviced12SEFidoEvents callerError];
    [v12 reportCAEvent:v17];

    v16 = SESDefaultLogObject();
    v18 = SESCreateAndLogError();
    (*(callbackCopy + 2))(callbackCopy, 0, v18);
  }
}

- (void)findAndAttest:(id)attest challenge:(id)challenge usingProxy:(id)proxy callback:(id)callback
{
  attestCopy = attest;
  challengeCopy = challenge;
  callbackCopy = callback;
  proxyCopy = proxy;
  v14 = +[_TtC10seserviced16SEFidoKeyManager singleton];
  v15 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) findAndAttest:challenge:usingProxy:callback:]"];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000D2F0;
  v20[3] = &unk_1004C0E48;
  v24 = challengeCopy;
  v25 = callbackCopy;
  v21 = v14;
  selfCopy = self;
  v23 = attestCopy;
  v16 = challengeCopy;
  v17 = attestCopy;
  v18 = callbackCopy;
  v19 = v14;
  [(SESEndpointAndKeyXPCServer *)self keyServiceAvailable:proxyCopy reason:v15 reply:v20];
}

- (void)signMultipleWithFidoKeysFor:(id)for challenges:(id)challenges forEndpointIdentifiers:(id)identifiers externalizedAuth:(id)auth usingProxy:(id)proxy callback:(id)callback
{
  forCopy = for;
  challengesCopy = challenges;
  identifiersCopy = identifiers;
  authCopy = auth;
  proxyCopy = proxy;
  callbackCopy = callback;
  v20 = SESDefaultLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v21 = +[_TtC10seserviced16SEFidoKeyManager singleton];
  v22 = +[NSXPCConnection currentConnection];
  v23 = sub_100035A18(SESClientInfo, v22);

  if ((sub_1003AD280(v23) & 1) != 0 && forCopy && challengesCopy && authCopy && (v24 = [forCopy count], v24 == objc_msgSend(challengesCopy, "count")) && (!identifiersCopy || (v25 = objc_msgSend(challengesCopy, "count"), v25 == objc_msgSend(identifiersCopy, "count"))))
  {
    v26 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) signMultipleWithFidoKeysFor:challenges:forEndpointIdentifiers:externalizedAuth:usingProxy:callback:]"];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10000D9E0;
    v30[3] = &unk_1004C0E70;
    v31 = v21;
    v37 = callbackCopy;
    v32 = forCopy;
    v33 = challengesCopy;
    selfCopy = self;
    v35 = identifiersCopy;
    v36 = authCopy;
    [(SESEndpointAndKeyXPCServer *)self keyServiceAvailable:proxyCopy reason:v26 reply:v30];

    v27 = v31;
  }

  else
  {
    v28 = +[_TtC10seserviced12SEFidoEvents callerError];
    [v21 reportCAEvent:v28];

    v27 = SESDefaultLogObject();
    v29 = SESCreateAndLogError();
    (*(callbackCopy + 2))(callbackCopy, 0, v29);
  }
}

- (void)verifyWithFidoKeyFor:(id)for signedChallenge:(id)challenge usingProxy:(id)proxy callback:(id)callback
{
  forCopy = for;
  challengeCopy = challenge;
  proxyCopy = proxy;
  callbackCopy = callback;
  v14 = SESDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v15 = +[_TtC10seserviced16SEFidoKeyManager singleton];
  v16 = +[NSXPCConnection currentConnection];
  v17 = sub_100035A18(SESClientInfo, v16);

  if ((sub_1003AD280(v17) & 1) != 0 && forCopy && challengeCopy)
  {
    v18 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) verifyWithFidoKeyFor:signedChallenge:usingProxy:callback:]"];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10000E1C0;
    v22[3] = &unk_1004C0E98;
    v23 = v15;
    v26 = callbackCopy;
    v24 = forCopy;
    v25 = challengeCopy;
    [(SESEndpointAndKeyXPCServer *)self keyServiceAvailable:proxyCopy reason:v18 reply:v22];

    v19 = v23;
  }

  else
  {
    v20 = +[_TtC10seserviced12SEFidoEvents callerError];
    [v15 reportCAEvent:v20];

    v19 = SESDefaultLogObject();
    v21 = SESCreateAndLogError();
    (*(callbackCopy + 2))(callbackCopy, &off_1004DC8E8, v21);
  }
}

- (void)deleteFiDOKeyFor:(id)for usingProxy:(id)proxy callback:(id)callback
{
  forCopy = for;
  proxyCopy = proxy;
  callbackCopy = callback;
  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  v12 = +[NSXPCConnection currentConnection];
  v13 = sub_100035A18(SESClientInfo, v12);

  if ((sub_1003AD280(v13) & 1) != 0 && forCopy)
  {
    v14 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEKeyXPC) deleteFiDOKeyFor:usingProxy:callback:]"];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000E7C4;
    v17[3] = &unk_1004C0BC8;
    v19 = callbackCopy;
    v18 = forCopy;
    [(SESEndpointAndKeyXPCServer *)self keyServiceAvailable:proxyCopy reason:v14 reply:v17];

    v15 = v19;
  }

  else
  {
    v15 = SESDefaultLogObject();
    v16 = SESCreateAndLogError();
    (*(callbackCopy + 2))(callbackCopy, 0, v16);
  }
}

- (void)createPrivacyKeyForGroupIdentifier:(id)identifier withOptions:(id)options completion:(id)completion
{
  identifierCopy = identifier;
  optionsCopy = options;
  completionCopy = completion;
  v9 = +[NSXPCConnection currentConnection];
  v10 = sub_100035A18(SESClientInfo, v9);

  if ((sub_1003AD294(v10) & 1) != 0 && identifierCopy)
  {
    [_TtC10seserviced27SESPrivacyKeyImplementation createPrivacyKeyWithGroupIdentifier:identifierCopy options:optionsCopy completion:completionCopy];
  }

  else
  {
    v11 = SESDefaultLogObject();
    v12 = SESCreateAndLogError();
    completionCopy[2](completionCopy, 0, v12);
  }
}

- (void)privacyKeysForGroupIdentifier:(id)identifier keyIdentifier:(id)keyIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  keyIdentifierCopy = keyIdentifier;
  completionCopy = completion;
  v9 = +[NSXPCConnection currentConnection];
  v10 = sub_100035A18(SESClientInfo, v9);

  if ((sub_1003AD294(v10) & 1) != 0 && identifierCopy)
  {
    [_TtC10seserviced27SESPrivacyKeyImplementation getPrivacyKeyWithGroupIdentifier:identifierCopy keyIdentifier:keyIdentifierCopy completion:completionCopy];
  }

  else
  {
    v11 = SESDefaultLogObject();
    v12 = SESCreateAndLogError();
    completionCopy[2](completionCopy, 0, v12);
  }
}

- (void)deletePrivacyKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  v6 = +[NSXPCConnection currentConnection];
  v7 = sub_100035A18(SESClientInfo, v6);

  if ((sub_1003AD294(v7) & 1) != 0 && keyCopy)
  {
    [_TtC10seserviced27SESPrivacyKeyImplementation deletePrivacyKey:keyCopy completion:completionCopy];
  }

  else
  {
    v8 = SESDefaultLogObject();
    v9 = SESCreateAndLogError();
    completionCopy[2](completionCopy, 0, v9);
  }
}

- (void)decryptPayload:(id)payload withGroupIdentifier:(id)identifier completion:(id)completion
{
  payloadCopy = payload;
  identifierCopy = identifier;
  completionCopy = completion;
  v9 = +[NSXPCConnection currentConnection];
  v10 = sub_100035A18(SESClientInfo, v9);

  if ((sub_1003AD294(v10) & 1) != 0 && payloadCopy && identifierCopy)
  {
    [SESPrivacyKeyImplementation decryptPayload:"decryptPayload:groupIdentifier:completion:" groupIdentifier:? completion:?];
  }

  else
  {
    v11 = SESDefaultLogObject();
    v12 = SESCreateAndLogError();
    completionCopy[2](completionCopy, 0, v12);
  }
}

- (void)encryptPayload:(id)payload encryptionScheme:(id)scheme recipientPublicKey:(id)key completion:(id)completion
{
  payloadCopy = payload;
  schemeCopy = scheme;
  keyCopy = key;
  completionCopy = completion;
  v12 = +[NSXPCConnection currentConnection];
  v13 = sub_100035A18(SESClientInfo, v12);

  if ((sub_1003AD294(v13) & 1) != 0 && payloadCopy && schemeCopy && keyCopy)
  {
    [SESPrivacyKeyImplementation encryptPayload:"encryptPayload:scheme:recipientPublicKey:completion:" scheme:? recipientPublicKey:? completion:?];
  }

  else
  {
    v14 = SESDefaultLogObject();
    v15 = SESCreateAndLogError();
    completionCopy[2](completionCopy, 0, v15);
  }
}

- (void)endPointServiceAvailableWithProxy:(id)proxy reason:(id)reason reply:(id)reply
{
  proxyCopy = proxy;
  reasonCopy = reason;
  replyCopy = reply;
  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  database = [(SESEndpointAndKeyXPCServer *)self database];

  if (!database)
  {
    v14 = SESDefaultLogObject();
    v15 = SESCreateAndLogError();
    (*(replyCopy + 2))(replyCopy, 0, 0, v15);

    if (proxyCopy)
    {
      goto LABEL_5;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  if (!proxyCopy)
  {
    goto LABEL_7;
  }

LABEL_5:
  v13 = sub_100050E34(SEProxyAdapter, proxyCopy);
LABEL_8:
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100017B58;
  v17[3] = &unk_1004C0990;
  v17[4] = self;
  v18 = replyCopy;
  v16 = replyCopy;
  sub_100055378(SecureElementManager, v13, 0, reasonCopy, v17);
}

- (void)proximityAndEndpointService:(id)service reason:(id)reason completion:(id)completion
{
  serviceCopy = service;
  reasonCopy = reason;
  completionCopy = completion;
  messageQueue = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100017E98;
  v15[3] = &unk_1004C1700;
  v15[4] = self;
  v16 = serviceCopy;
  v17 = reasonCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = reasonCopy;
  v14 = serviceCopy;
  [SESProximityChip cacheProximityChipData:messageQueue completion:v15];
}

- (void)databaseServiceWithProxy:(id)proxy isReconcileRequired:(BOOL)required reason:(id)reason reply:(id)reply
{
  proxyCopy = proxy;
  reasonCopy = reason;
  replyCopy = reply;
  v13 = SESDefaultLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "", buf, 2u);
  }

  database = [(SESEndpointAndKeyXPCServer *)self database];

  if (!database)
  {
    v15 = SESDefaultLogObject();
    v16 = SESCreateAndLogError();
    replyCopy[2](replyCopy, 0, v16);
  }

  messageQueue = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018200;
  block[3] = &unk_1004C1778;
  requiredCopy = required;
  block[4] = self;
  v22 = proxyCopy;
  v23 = reasonCopy;
  v24 = replyCopy;
  v18 = reasonCopy;
  v19 = proxyCopy;
  v20 = replyCopy;
  dispatch_async(messageQueue, block);
}

- (void)secureElementService:(id)service reply:(id)reply
{
  replyCopy = reply;
  serviceCopy = service;
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
  v11 = replyCopy;
  v9 = replyCopy;
  sub_1003AF710(SecureElementManager, serviceCopy, v10);
}

- (void)endPointAction:(id)action proxy:(id)proxy clientInfo:(id)info reason:(id)reason reply:(id)reply
{
  actionCopy = action;
  proxyCopy = proxy;
  infoCopy = info;
  reasonCopy = reason;
  replyCopy = reply;
  if (sub_1003AD208(infoCopy) & 1) != 0 || (sub_1003AD230(infoCopy))
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000189CC;
    v19[3] = &unk_1004C17A0;
    v22 = replyCopy;
    v19[4] = self;
    v20 = actionCopy;
    v21 = infoCopy;
    [(SESEndpointAndKeyXPCServer *)self endPointServiceAvailableWithProxy:proxyCopy reason:reasonCopy reply:v19];
  }

  else
  {
    v17 = SESDefaultLogObject();
    v18 = SESCreateAndLogError();
    (*(replyCopy + 2))(replyCopy, 0, 0, 0, 0, v18);
  }
}

- (void)endPointDBAction:(id)action clientInfo:(id)info reason:(id)reason reply:(id)reply
{
  actionCopy = action;
  infoCopy = info;
  reasonCopy = reason;
  replyCopy = reply;
  if (sub_1003AD208(infoCopy) & 1) != 0 || (sub_1003AD230(infoCopy))
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100018C44;
    v16[3] = &unk_1004C17C8;
    v19 = replyCopy;
    v16[4] = self;
    v17 = actionCopy;
    v18 = infoCopy;
    [(SESEndpointAndKeyXPCServer *)self databaseServiceWithProxy:0 isReconcileRequired:0 reason:reasonCopy reply:v16];
  }

  else
  {
    v14 = SESDefaultLogObject();
    v15 = SESCreateAndLogError();
    (*(replyCopy + 2))(replyCopy, 0, 0, 0, v15);
  }
}

- (id)_getEndPointAndValidateAccess:(id)access identifier:(id)identifier clientInfo:(id)info outEndPointEntity:(id *)entity outEndPoint:(id *)point
{
  identifierCopy = identifier;
  infoCopy = info;
  accessCopy = access;
  messageQueue = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(messageQueue);

  v32 = 0;
  v16 = sub_10003C954(SESEndpointDatabase, accessCopy, &v32);

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
    v30 = identifierCopy;
    v20 = infoCopy;
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
        *point = v22;
        v25 = v21;
        v19 = 0;
        *entity = v21;
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

- (void)preWarmAlisha:(id)alisha reply:(id)reply
{
  alishaCopy = alisha;
  replyCopy = reply;
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
    v17 = replyCopy;
    v14[4] = self;
    v15 = alishaCopy;
    v16 = v10;
    [(SESEndpointAndKeyXPCServer *)self proximityAndEndpointService:0 reason:v11 completion:v14];

    v12 = v17;
  }

  else
  {
    v12 = SESDefaultLogObject();
    v13 = SESCreateAndLogError();
    (*(replyCopy + 2))(replyCopy, v13);
  }
}

- (BOOL)_preWarmAlishaInternal:(id)internal handle:(id)handle proximityChipInfo:(id)info manufactuer:(id)manufactuer clientName:(id)name error:(id *)error
{
  internalCopy = internal;
  handleCopy = handle;
  infoCopy = info;
  manufactuerCopy = manufactuer;
  nameCopy = name;
  messageQueue = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(messageQueue);

  isSupported = [infoCopy isSupported];
  v21 = SESDefaultLogObject();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v32 = isSupported;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Prewarming Alisha (Sunsprite is to be SLAM'd %d)", buf, 8u);
  }

  buf[0] = 0;
  v22 = sub_100013800(internalCopy, isSupported | 8, buf, infoCopy);
  if (v22)
  {
    goto LABEL_7;
  }

  if (buf[0] == 1)
  {
    database = [(SESEndpointAndKeyXPCServer *)self database];
    v24 = sub_1003AC964(database, internalCopy, 1);

    if (v24)
    {
      goto LABEL_8;
    }
  }

  v22 = sub_100050120(internalCopy);
  if (v22)
  {
    goto LABEL_7;
  }

  if (isSupported)
  {
    v22 = sub_100014918(internalCopy, 1, infoCopy);
    if (v22)
    {
LABEL_7:
      v24 = v22;
      goto LABEL_8;
    }

    v28 = +[_TtC10seserviced3DSK queue];
    dispatch_async(v28, &stru_1004C1838);
  }

  if (!manufactuerCopy)
  {
    v24 = 0;
    v26 = 1;
    goto LABEL_11;
  }

  v30 = 0;
  v26 = 1;
  v29 = [(SESEndpointAndKeyXPCServer *)self _ensureCAExistsAndValid:manufactuerCopy clientName:nameCopy secureElement:internalCopy handle:handleCopy forEndPointType:1 error:&v30];
  v24 = v30;
  if (!v24)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (error)
  {
    v25 = v24;
    v26 = 0;
    *error = v24;
  }

  else
  {
    v26 = 0;
  }

LABEL_11:

  return v26;
}

- (id)_createEndPointCA:(id)a handle:(id)handle clientName:(id)name identifier:(id)identifier subjectIdentifier:(id)subjectIdentifier forEndPointType:(int64_t)type error:(id *)error
{
  aCopy = a;
  handleCopy = handle;
  nameCopy = name;
  identifierCopy = identifier;
  subjectIdentifierCopy = subjectIdentifier;
  messageQueue = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(messageQueue);

  v19 = SESDefaultLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = identifierCopy;
    *&buf[12] = 2112;
    *&buf[14] = subjectIdentifierCopy;
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
  v20 = sub_1000431F8(SESEndpointDatabase, identifierCopy, nameCopy, handleCopy, &obj);
  objc_storeStrong(&v72, obj);
  v60 = v20;
  v21 = *(*&buf[8] + 40);
  if (v21)
  {
    if (error)
    {
      v22 = 0;
      *error = v21;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v56[5])
  {
    if (error)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if ([subjectIdentifierCopy length] >= 0x1F)
  {
    if (error)
    {
LABEL_11:
      v23 = SESDefaultLogObject();
      *error = SESCreateAndLogError();
    }

LABEL_12:
    v22 = 0;
    goto LABEL_13;
  }

  v25 = *&buf[8];
  v53 = *(*&buf[8] + 40);
  v26 = sub_100043874(aCopy, type, &v53);
  objc_storeStrong((v25 + 40), v53);
  v27 = (*&buf[8] + 40);
  if (!*(*&buf[8] + 40))
  {
    v52 = 0;
    v28 = sub_1000598B8(SESEndpointDatabase, v26, handleCopy, &v52);
    objc_storeStrong(v27, v52);
    if (*(*&buf[8] + 40) || !v28)
    {
      if (!error)
      {
        v22 = 0;
        goto LABEL_37;
      }

      v39 = SESDefaultLogObject();
      SESCreateAndLogError();
      *error = v22 = 0;
    }

    else
    {
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_100019E00;
      v42[3] = &unk_1004C1860;
      v48 = &v55;
      v43 = identifierCopy;
      v29 = v28;
      v44 = v29;
      v45 = nameCopy;
      v49 = buf;
      v50 = &v61;
      v30 = aCopy;
      v46 = v30;
      v31 = subjectIdentifierCopy;
      v47 = v31;
      typeCopy = type;
      sub_1003AD2A8(handleCopy, v42);
      if (*(*&buf[8] + 40) && v62[5])
      {
        v32 = SESDefaultLogObject();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *v67 = 0;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "CA creation failed and requires cleanup ...", v67, 2u);
        }

        identifier = [v29 identifier];
        hexStringAsData = [identifier hexStringAsData];
        v35 = sub_100046048(v30, hexStringAsData, v31);

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

      if (error)
      {
        *error = *(*&buf[8] + 40);
      }

      v22 = v56[5];

      v39 = v43;
    }

LABEL_37:
    goto LABEL_38;
  }

  if (error)
  {
    v28 = SESDefaultLogObject();
    SESCreateAndLogError();
    *error = v22 = 0;
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

- (void)cleanupAppletsWithNoEndpoints:(id)endpoints reply:(id)reply
{
  endpointsCopy = endpoints;
  replyCopy = reply;
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
    v14 = replyCopy;
    [(SESEndpointAndKeyXPCServer *)self endPointServiceAvailableWithProxy:endpointsCopy reason:v10 reply:v13];
  }

  else
  {
    v11 = SESDefaultLogObject();
    v12 = SESCreateAndLogError();
    (*(replyCopy + 2))(replyCopy, 0, v12);
  }
}

- (id)_cleanupAppletsWithNoEndpoints:(id)endpoints handle:(id)handle
{
  endpointsCopy = endpoints;
  handleCopy = handle;
  messageQueue = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(messageQueue);

  v22 = 0;
  v9 = sub_10003C954(SESEndpointDatabase, handleCopy, &v22);

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

      v15 = sub_1003AAA98(endpointsCopy, "SLAMDeleteCopernicusAndSunsprite");
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

      hexStringAsData = [@"A000000809434343444B417631" hexStringAsData];
      v21 = v15;
      sub_100044F68(endpointsCopy, hexStringAsData, 1, &v21);
      v14 = v21;

      database = [(SESEndpointAndKeyXPCServer *)self database];
      v19 = sub_1003AC964(database, endpointsCopy, 1);

      v10 = sub_10005FC78();
      sub_100060C88(v10, endpointsCopy);
    }
  }

  return v14;
}

- (id)_renewEndPointCAIfExpired:(id)expired secureElement:(id)element forEndPointType:(int64_t)type handle:(id)handle
{
  expiredCopy = expired;
  elementCopy = element;
  handleCopy = handle;
  messageQueue = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(messageQueue);

  v40 = 0;
  v14 = sub_100043738(SESEndpointDatabase, expiredCopy, &v40);
  v15 = v40;
  if (v15 || v14)
  {
    v18 = v15;
    v19 = v18;
    goto LABEL_21;
  }

  v39 = 0;
  v16 = sub_1000433C4(SESEndpointDatabase, expiredCopy, &v39);
  v17 = v39;
  if (!v17)
  {
    v20 = SESDefaultLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      identifier = [expiredCopy identifier];
      *buf = 138412546;
      v45 = identifier;
      v46 = 1024;
      typeCopy = type;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Renewing expired SEEndPointCA %@ with type %d", buf, 0x12u);
    }

    v22 = +[SEABAAManager sharedManager];
    v37 = v16;
    secureElementAttestation = [v16 secureElementAttestation];
    v25 = sub_1003AF3C4(elementCopy, v24);
    casdCertificate = [v25 casdCertificate];
    v38 = 0;
    v27 = [v22 PerformSEABAAWithAttestation:secureElementAttestation casdCertificate:casdCertificate nonce:0 OIDs:0 validityInterval:0 error:&v38];
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

    if (type == 5 || type == 2)
    {
      v28 = v27;
      certificates2 = sub_1003AAA6C(v27);
      v41[0] = certificates2;
      v32 = sub_1003AAA78(v27);
      v41[1] = v32;
      v33 = [NSArray arrayWithObjects:v41 count:2];
      v16 = v37;
      [v37 setCertificates:v33];
    }

    else
    {
      v28 = v27;
      if (type != 1)
      {
        v35 = SESDefaultLogObject();
        v19 = SESCreateAndLogError();

        goto LABEL_10;
      }

      v16 = v37;
      certificates = [v37 certificates];
      v30 = [certificates count];

      if (v30 == 1)
      {
        certificates2 = sub_1003AAA78(v28);
        v43 = certificates2;
        v32 = [NSArray arrayWithObjects:&v43 count:1];
        [v37 setCertificates:v32];
LABEL_18:

        v19 = sub_1000434A0(SESEndpointDatabase, expiredCopy, v16, handleCopy);
        goto LABEL_19;
      }

      certificates2 = [v37 certificates];
      v32 = [certificates2 objectAtIndexedSubscript:0];
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

- (void)createAlishaEndpointWithProxy:(id)proxy identifier:(id)identifier authorityIdentifier:(id)authorityIdentifier subjectIdentifier:(id)subjectIdentifier configuration:(id)configuration readerIdentifier:(id)readerIdentifier readerPublicKey:(id)key readerInformation:(id)self0 startDate:(id)self1 endDate:(id)self2 keyIdentifier:(id)self3 authorizedKeys:(id)self4 confidentialMailBoxSize:(id)self5 privateMailBoxSize:(id)self6 reply:(id)self7
{
  proxyCopy = proxy;
  identifierCopy = identifier;
  authorityIdentifierCopy = authorityIdentifier;
  subjectIdentifierCopy = subjectIdentifier;
  configurationCopy = configuration;
  readerIdentifierCopy = readerIdentifier;
  v24 = identifierCopy;
  keyCopy = key;
  informationCopy = information;
  dateCopy = date;
  endDateCopy = endDate;
  keyIdentifierCopy = keyIdentifier;
  keysCopy = keys;
  sizeCopy = size;
  boxSizeCopy = boxSize;
  replyCopy = reply;
  v28 = SESDefaultLogObject();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v69 = identifierCopy;
    v70 = 2112;
    v71 = authorityIdentifierCopy;
    v72 = 2112;
    v73 = subjectIdentifierCopy;
    v74 = 2112;
    v75 = readerIdentifierCopy;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "identifier %@ __authorityIdentifier %@ subjectIdentifier %@ readerIdentifier %@", buf, 0x2Au);
  }

  v29 = +[NSXPCConnection currentConnection];
  v30 = sub_100035A18(SESClientInfo, v29);

  if ((!sub_1003AD208(v30) || (sub_1003AD21C(v30) & 1) == 0) && (sub_1003AD230(v30) & 1) == 0)
  {
    v31 = SESDefaultLogObject();
LABEL_11:
    v32 = SESCreateAndLogError();
    replyCopy[2](replyCopy, 0, v32);
    goto LABEL_17;
  }

  if ([readerIdentifierCopy length] != 8)
  {
    v31 = SESDefaultLogObject();
    [readerIdentifierCopy length];
    goto LABEL_11;
  }

  v31 = [informationCopy componentsSeparatedByString:@"."];
  v37 = dateCopy;
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
      v67 = replyCopy;
      v51 = authorityIdentifierCopy;
      v52 = v30;
      selfCopy = self;
      v54 = v24;
      v55 = readerIdentifierCopy;
      v56 = v34;
      v32 = v36;
      v57 = v32;
      v58 = subjectIdentifierCopy;
      v59 = configurationCopy;
      v60 = keyCopy;
      v61 = v37;
      v62 = endDateCopy;
      v63 = keyIdentifierCopy;
      v64 = keysCopy;
      v65 = sizeCopy;
      v66 = boxSizeCopy;
      v33 = v34;
      [(SESEndpointAndKeyXPCServer *)self proximityAndEndpointService:proxyCopy reason:v39 completion:v50];

      v35 = v67;
    }

    else
    {
      v33 = SESDefaultLogObject();
      v35 = SESCreateAndLogError();
      replyCopy[2](replyCopy, 0, v35);
    }
  }

  else
  {
    v32 = SESDefaultLogObject();
    v33 = SESCreateAndLogError();
    replyCopy[2](replyCopy, 0, v33);
  }

  dateCopy = v37;
LABEL_17:
}

- (void)createHydraEndpointWithProxy:(id)proxy serverParams:(id)params reply:(id)reply
{
  proxyCopy = proxy;
  paramsCopy = params;
  replyCopy = reply;
  v11 = +[NSXPCConnection currentConnection];
  v12 = sub_100035A18(SESClientInfo, v11);

  if (sub_1003AD208(v12) && (sub_1003AD21C(v12) & 1) != 0 || (sub_1003AD230(v12) & 1) != 0)
  {
    selfCopy = self;
    v50 = proxyCopy;
    v13 = SESDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v69 = paramsCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v14 = [paramsCopy objectForKeyedSubscript:@"readerIdentifier"];
    hexStringAsData = [v14 hexStringAsData];

    v16 = [paramsCopy objectForKeyedSubscript:@"readerCAPublicKey"];
    hexStringAsData2 = [v16 hexStringAsData];

    v18 = [paramsCopy objectForKeyedSubscript:@"readerCAMaxDepth"];
    v19 = [paramsCopy objectForKeyedSubscript:@"mailboxInfo"];
    v20 = [v19 objectForKeyedSubscript:@"confMailboxSize"];
    unsignedIntValue = [v20 unsignedIntValue];

    v21 = [v19 objectForKeyedSubscript:@"confMailboxOffset"];
    unsignedIntValue2 = [v21 unsignedIntValue];

    v22 = [v19 objectForKeyedSubscript:@"confMailboxLength"];
    unsignedIntValue3 = [v22 unsignedIntValue];

    v23 = [v19 objectForKeyedSubscript:@"privMailboxSize"];
    unsignedIntValue4 = [v23 unsignedIntValue];

    v24 = [v19 objectForKeyedSubscript:@"privMailboxOffset"];
    unsignedIntValue5 = [v24 unsignedIntValue];

    v26 = [v19 objectForKeyedSubscript:@"privMailboxLength"];
    unsignedIntValue6 = [v26 unsignedIntValue];

    if (!hexStringAsData || !hexStringAsData2)
    {
      asHexString = SESDefaultLogObject();
      allKeys = [paramsCopy allKeys];
      v33 = SESCreateAndLogError();
      replyCopy[2](replyCopy, 0, v33);

LABEL_21:
      proxyCopy = v50;
      goto LABEL_22;
    }

    if (!v18)
    {
      v18 = &off_1004DC900;
    }

    if ([hexStringAsData length] == 8)
    {
      if ([hexStringAsData2 length] == 64)
      {
        v28 = [NSMutableData dataWithCapacity:65];
        [v28 appendU8:4];
        [v28 appendData:hexStringAsData2];

        hexStringAsData2 = v28;
        goto LABEL_18;
      }

      if ([hexStringAsData2 length] == 65)
      {
LABEL_18:
        if (![v18 unsignedIntValue] || objc_msgSend(v18, "unsignedIntValue") == 1)
        {
          [NSData randomData:4];
          v34 = v42 = unsignedIntValue5;
          asHexString = [v34 asHexString];

          [hexStringAsData asHexString];
          v35 = v41 = unsignedIntValue6;
          v39 = [NSString stringWithFormat:@"HY-%@-%@", v35, asHexString];

          asHexString2 = [hexStringAsData asHexString];
          v38 = [NSString stringWithFormat:@"HYCA-%@-%@", asHexString2, asHexString];

          v37 = +[SEEndPointConfiguration hydraDefaults];
          v40 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) createHydraEndpointWithProxy:serverParams:reply:]"];
          v51[0] = _NSConcreteStackBlock;
          v51[1] = 3221225472;
          v51[2] = sub_10001CF10;
          v51[3] = &unk_1004C1990;
          v61 = replyCopy;
          v51[4] = selfCopy;
          v52 = v38;
          v53 = v12;
          v54 = v39;
          v55 = v37;
          v56 = hexStringAsData;
          hexStringAsData2 = hexStringAsData2;
          v57 = hexStringAsData2;
          v58 = @"20000101000000Z";
          v59 = @"99991231235959Z";
          v62 = unsignedIntValue;
          v63 = unsignedIntValue4;
          v18 = v18;
          v60 = v18;
          v64 = v41;
          v65 = v42;
          v66 = unsignedIntValue3;
          v67 = unsignedIntValue2;
          v48 = v37;
          v46 = v39;
          allKeys = v38;
          [(SESEndpointAndKeyXPCServer *)selfCopy proximityAndEndpointService:v50 reason:v40 completion:v51];

          goto LABEL_21;
        }

        asHexString = SESDefaultLogObject();
        [v18 unsignedIntValue];
        goto LABEL_16;
      }

      asHexString = SESDefaultLogObject();
      [hexStringAsData2 length];
    }

    else
    {
      asHexString = SESDefaultLogObject();
      [hexStringAsData length];
    }

LABEL_16:
    allKeys = SESCreateAndLogError();
    replyCopy[2](replyCopy, 0, allKeys);
    goto LABEL_21;
  }

  v29 = SESDefaultLogObject();
  v30 = SESCreateAndLogError();
  replyCopy[2](replyCopy, 0, v30);

LABEL_22:
}

- (void)createLocalEndpointWithProxy:(id)proxy readerIdentifier:(id)identifier readerPublicKey:(id)key reply:(id)reply
{
  proxyCopy = proxy;
  identifierCopy = identifier;
  keyCopy = key;
  replyCopy = reply;
  v14 = +[NSXPCConnection currentConnection];
  v15 = sub_100035A18(SESClientInfo, v14);

  if ((!sub_1003AD208(v15) || (sub_1003AD21C(v15) & 1) == 0) && (sub_1003AD230(v15) & 1) == 0)
  {
    v23 = SESDefaultLogObject();
LABEL_8:
    v24 = SESCreateAndLogError();
    replyCopy[2](replyCopy, 0, v24);

    goto LABEL_9;
  }

  if ([identifierCopy length] != 8)
  {
    v23 = SESDefaultLogObject();
    [identifierCopy length];
    goto LABEL_8;
  }

  v16 = [NSData randomData:4];
  asHexString = [v16 asHexString];
  v18 = [NSString stringWithFormat:@"HOME-%@", asHexString];

  v19 = +[SEEndPointConfiguration homeDefaults];
  v20 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) createLocalEndpointWithProxy:readerIdentifier:readerPublicKey:reply:]"];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10001DE7C;
  v25[3] = &unk_1004C19E0;
  v34 = replyCopy;
  v25[4] = self;
  v26 = @"HOME";
  v27 = v15;
  v28 = v18;
  v29 = v19;
  v30 = identifierCopy;
  v31 = keyCopy;
  v32 = @"20000101000000Z";
  v33 = @"99991231235959Z";
  v21 = v19;
  v22 = v18;
  [(SESEndpointAndKeyXPCServer *)self proximityAndEndpointService:proxyCopy reason:v20 completion:v25];

LABEL_9:
}

- (void)createLyonEndpointWithProxy:(id)proxy readerGroupIdentifier:(id)identifier readerPublicKey:(id)key homeUUID:(id)d privateMailboxSize:(id)size reply:(id)reply
{
  proxyCopy = proxy;
  identifierCopy = identifier;
  keyCopy = key;
  dCopy = d;
  sizeCopy = size;
  replyCopy = reply;
  v20 = +[NSXPCConnection currentConnection];
  v21 = sub_100035A18(SESClientInfo, v20);

  if ((!sub_1003AD208(v21) || (sub_1003AD21C(v21) & 1) == 0) && (sub_1003AD230(v21) & 1) == 0)
  {
    v31 = SESDefaultLogObject();
LABEL_8:
    v32 = SESCreateAndLogError();
    replyCopy[2](replyCopy, 0, v32);

    goto LABEL_9;
  }

  if ([identifierCopy length] != 16)
  {
    v31 = SESDefaultLogObject();
    [identifierCopy length];
    goto LABEL_8;
  }

  [NSData randomData:4];
  v22 = v34 = proxyCopy;
  [v22 asHexString];
  selfCopy = self;
  v23 = sizeCopy;
  v25 = v24 = keyCopy;
  v26 = [NSString stringWithFormat:@"LYON-%@", v25];

  keyCopy = v24;
  sizeCopy = v23;

  v27 = +[SEEndPointConfiguration lyonHomeDefaults];
  v28 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) createLyonEndpointWithProxy:readerGroupIdentifier:readerPublicKey:homeUUID:privateMailboxSize:reply:]"];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10001EB4C;
  v35[3] = &unk_1004C1A50;
  v46 = replyCopy;
  v35[4] = selfCopy;
  v36 = @"LYON";
  v37 = v21;
  v38 = v26;
  v39 = v27;
  v40 = identifierCopy;
  v41 = keyCopy;
  v42 = @"20000101000000Z";
  v43 = @"99991231235959Z";
  v44 = v23;
  v45 = dCopy;
  v29 = v27;
  v30 = v26;
  [(SESEndpointAndKeyXPCServer *)selfCopy proximityAndEndpointService:v34 reason:v28 completion:v35];

  proxyCopy = v34;
LABEL_9:
}

- (void)createLyonHydraEndpointWithProxy:(id)proxy serverParams:(id)params reply:(id)reply
{
  proxyCopy = proxy;
  paramsCopy = params;
  replyCopy = reply;
  v11 = +[NSXPCConnection currentConnection];
  v12 = sub_100035A18(SESClientInfo, v11);

  if (sub_1003AD208(v12) && (sub_1003AD21C(v12) & 1) != 0 || (sub_1003AD230(v12) & 1) != 0)
  {
    selfCopy = self;
    v13 = SESDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v68 = paramsCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "createLyonHydraEndpointWithProxy w/ params %@", buf, 0xCu);
    }

    v14 = [paramsCopy objectForKeyedSubscript:@"readerGroupIdentifier"];
    hexStringAsData = [v14 hexStringAsData];

    v16 = [paramsCopy objectForKeyedSubscript:@"readerGroupPublicKey"];
    hexStringAsData2 = [v16 hexStringAsData];

    v18 = [paramsCopy objectForKeyedSubscript:@"readerCAMaxDepth"];
    v19 = [paramsCopy objectForKeyedSubscript:@"privMailboxSize"];
    unsignedIntValue = [v19 unsignedIntValue];

    v20 = [paramsCopy objectForKeyedSubscript:@"privMailboxOffset"];
    unsignedIntValue2 = [v20 unsignedIntValue];

    v21 = [paramsCopy objectForKeyedSubscript:@"privMailboxLength"];
    unsignedIntValue3 = [v21 unsignedIntValue];

    v22 = [paramsCopy objectForKeyedSubscript:@"option1"];
    v23 = [paramsCopy objectForKeyedSubscript:@"enableSSO"];
    v24 = v23;
    v25 = v22 || [v23 BOOLValue];
    v26 = proxyCopy;
    v49 = v24;
    v50 = v22;
    if (hexStringAsData && hexStringAsData2 && v18)
    {
      v41 = v25;
      if ([hexStringAsData length] == 16)
      {
        if ([hexStringAsData2 length] == 64)
        {
          v27 = [NSMutableData dataWithCapacity:65];
          [v27 appendU8:4];
          [v27 appendData:hexStringAsData2];

          hexStringAsData2 = v27;
        }

        else if ([hexStringAsData2 length] != 65)
        {
          v30 = v18;
          asHexString = SESDefaultLogObject();
          [hexStringAsData2 length];
          goto LABEL_27;
        }

        v40 = v18;
        if ([v18 unsignedIntValue] >= 2)
        {
          asHexString = SESDefaultLogObject();
          v30 = v40;
          [v40 unsignedIntValue];
LABEL_27:
          asHexString2 = SESCreateAndLogError();
          replyCopy[2](replyCopy, 0, asHexString2);
          goto LABEL_19;
        }

        v34 = [NSData randomData:4];
        asHexString = [v34 asHexString];

        v35 = [hexStringAsData subdataWithRange:{0, 8}];
        asHexString2 = [v35 asHexString];

        v39 = [NSString stringWithFormat:@"LY-%@-%@", asHexString2, asHexString];
        v37 = [NSString stringWithFormat:@"LYCA-%@-%@", asHexString2, asHexString];
        v36 = +[SEEndPointConfiguration lyonHydraDefaults];
        proxyCopy = v26;
        v38 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) createLyonHydraEndpointWithProxy:serverParams:reply:]"];
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_100020040;
        v51[3] = &unk_1004C1AA0;
        v62 = replyCopy;
        v51[4] = selfCopy;
        v52 = v37;
        v53 = v12;
        v54 = v39;
        v55 = v36;
        v56 = paramsCopy;
        v66 = v41;
        v57 = hexStringAsData;
        hexStringAsData2 = hexStringAsData2;
        v58 = hexStringAsData2;
        v59 = @"20000101000000Z";
        v60 = @"99991231235959Z";
        v63 = unsignedIntValue;
        v30 = v40;
        v61 = v40;
        v64 = unsignedIntValue3;
        v65 = unsignedIntValue2;
        v47 = v36;
        v45 = v39;
        v43 = v37;
        [(SESEndpointAndKeyXPCServer *)selfCopy proximityAndEndpointService:v26 reason:v38 completion:v51];

LABEL_19:
        goto LABEL_20;
      }

      v30 = v18;
      asHexString = SESDefaultLogObject();
      [hexStringAsData length];
      asHexString2 = SESCreateAndLogError();
      replyCopy[2](replyCopy, 0, asHexString2);
    }

    else
    {
      v30 = v18;
      asHexString = SESDefaultLogObject();
      asHexString2 = [paramsCopy allKeys];
      v33 = SESCreateAndLogError();
      replyCopy[2](replyCopy, 0, v33);
    }

    proxyCopy = v26;
    goto LABEL_19;
  }

  v28 = SESDefaultLogObject();
  v29 = SESCreateAndLogError();
  replyCopy[2](replyCopy, 0, v29);

LABEL_20:
}

- (unint64_t)_existsDuplicateInDatabase:(id)database withIdentifier:(id)identifier orReaderIdentifier:(id)readerIdentifier outError:(id *)error
{
  databaseCopy = database;
  identifierCopy = identifier;
  readerIdentifierCopy = readerIdentifier;
  messageQueue = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(messageQueue);

  endPoints = [databaseCopy endPoints];
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_100020FB4;
  v26 = &unk_1004C1AC8;
  v14 = databaseCopy;
  v27 = v14;
  v15 = identifierCopy;
  v28 = v15;
  v16 = readerIdentifierCopy;
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

- (id)_ensureCAExistsAndValid:(id)valid clientName:(id)name secureElement:(id)element handle:(id)handle forEndPointType:(int64_t)type error:(id *)error
{
  validCopy = valid;
  nameCopy = name;
  elementCopy = element;
  handleCopy = handle;
  messageQueue = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(messageQueue);

  v34 = 0;
  v19 = sub_1000431F8(SESEndpointDatabase, validCopy, nameCopy, handleCopy, &v34);
  v20 = v34;
  if (v20)
  {
    v21 = v20;
    if (error)
    {
LABEL_3:
      v22 = v21;
      v23 = 0;
      *error = v21;
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v24 = SESDefaultLogObject();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v36 = validCopy;
    v37 = 1024;
    v38 = v19 != 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Ensuring CA for %@ -- existing? %d", buf, 0x12u);
  }

  if (!v19)
  {
    v33 = 0;
    v29 = [(SESEndpointAndKeyXPCServer *)self _createEndPointCA:elementCopy handle:handleCopy clientName:nameCopy identifier:validCopy subjectIdentifier:validCopy forEndPointType:type error:&v33];
    v30 = v33;
    v21 = v30;
    if (error)
    {
      v31 = v30;
      *error = v21;
    }

    v28 = v29;
    v19 = v28;
    goto LABEL_18;
  }

  if ((type - 3) <= 1 || ([(SESEndpointAndKeyXPCServer *)self _renewEndPointCAIfExpired:v19 secureElement:elementCopy forEndPointType:type handle:handleCopy], (v25 = objc_claimAutoreleasedReturnValue()) == 0))
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

  if (error)
  {
    goto LABEL_3;
  }

LABEL_21:
  v23 = 0;
LABEL_22:

  return v23;
}

- (void)configureEndpointWithProxy:(id)proxy identifier:(id)identifier privateData:(id)data confidentialData:(id)confidentialData contactlessVolatileVisibility:(id)visibility contactlessPersistentVisibility:(id)persistentVisibility wiredVolatileVisibility:(id)volatileVisibility wiredPersistentVisibility:(id)self0 keySlot:(id)self1 nfcExpressOnlyInLPM:(id)self2 reply:(id)self3
{
  identifierCopy = identifier;
  dataCopy = data;
  confidentialDataCopy = confidentialData;
  visibilityCopy = visibility;
  persistentVisibilityCopy = persistentVisibility;
  volatileVisibilityCopy = volatileVisibility;
  wiredPersistentVisibilityCopy = wiredPersistentVisibility;
  slotCopy = slot;
  mCopy = m;
  replyCopy = reply;
  proxyCopy = proxy;
  v20 = SESDefaultLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v54 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v28 = +[NSXPCConnection currentConnection];
  v21 = sub_100035A18(SESClientInfo, v28);
  v22 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) configureEndpointWithProxy:identifier:privateData:confidentialData:contactlessVolatileVisibility:contactlessPersistentVisibility:wiredVolatileVisibility:wiredPersistentVisibility:keySlot:nfcExpressOnlyInLPM:reply:]"];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10002169C;
  v43[3] = &unk_1004C1AF0;
  v44 = dataCopy;
  v45 = confidentialDataCopy;
  v46 = persistentVisibilityCopy;
  v47 = visibilityCopy;
  v48 = wiredPersistentVisibilityCopy;
  v49 = volatileVisibilityCopy;
  v50 = slotCopy;
  v51 = mCopy;
  v52 = replyCopy;
  v30 = mCopy;
  v32 = slotCopy;
  v34 = volatileVisibilityCopy;
  v23 = wiredPersistentVisibilityCopy;
  v38 = visibilityCopy;
  v24 = persistentVisibilityCopy;
  v25 = confidentialDataCopy;
  v26 = dataCopy;
  v27 = replyCopy;
  [(SESEndpointAndKeyXPCServer *)self endPointAction:identifierCopy proxy:proxyCopy clientInfo:v21 reason:v22 reply:v43];
}

- (id)getEncryptedCarOEMProprietaryData:(id)data withEndpointEntity:(id)entity withSecureElement:(id)element
{
  dataCopy = data;
  entityCopy = entity;
  elementCopy = element;
  carOEMProprietaryData = [dataCopy carOEMProprietaryData];

  if (carOEMProprietaryData)
  {
    carOEMProprietaryData2 = [dataCopy carOEMProprietaryData];
    goto LABEL_26;
  }

  privacyEncryptionPK = [entityCopy privacyEncryptionPK];
  if (!privacyEncryptionPK)
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
    carOEMProprietaryData2 = 0;
    goto LABEL_25;
  }

  mailboxMapping = [dataCopy mailboxMapping];

  if (!mailboxMapping)
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

  instance = [entityCopy instance];
  identifier = [instance identifier];
  hexStringAsData = [identifier hexStringAsData];
  publicKeyIdentifier = [dataCopy publicKeyIdentifier];
  v47 = 0;
  v18 = sub_100046338(elementCopy, hexStringAsData, publicKeyIdentifier, 0, 1, &v47);
  v19 = v47;

  if (v19 || [v18 length] != 1)
  {
    v24 = SESDefaultLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      asHexString = [v18 asHexString];
      *buf = 138412546;
      *v49 = asHexString;
      *&v49[8] = 2112;
      *&v49[10] = v19;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to retrieve private mailbox first byte %@ error %@", buf, 0x16u);
    }
  }

  else
  {
    v20 = [v18 u8:0];
    v21 = [KmlMailboxMappingData alloc];
    mailboxMapping2 = [dataCopy mailboxMapping];
    if (v20 == 128)
    {
      v23 = 768;
    }

    else
    {
      v23 = 256;
    }

    v24 = [v21 initWithData:mailboxMapping2 preferredVersion:v23];

    vehicleProprietaryDataOffset = [v24 vehicleProprietaryDataOffset];
    keyAttestationStartOffset = [v24 keyAttestationStartOffset];
    if (!vehicleProprietaryDataOffset || (v27 = keyAttestationStartOffset) == 0)
    {
      v28 = SESDefaultLogObject();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        mailboxMapping3 = [dataCopy mailboxMapping];
        asHexString2 = [mailboxMapping3 asHexString];
        *buf = 138412290;
        *v49 = asHexString2;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to retrieve private mailbox offsets %@", buf, 0xCu);
      }

      goto LABEL_31;
    }

    if (keyAttestationStartOffset < vehicleProprietaryDataOffset)
    {
      v28 = SESDefaultLogObject();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *v49 = vehicleProprietaryDataOffset;
        *&v49[4] = 1024;
        *&v49[6] = v27;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Invalid private mailbox offsets car OEM data %d key attestation %d", buf, 0xEu);
      }

LABEL_31:
      v19 = 0;
      carOEMProprietaryData2 = 0;
LABEL_32:

      goto LABEL_20;
    }

    if (keyAttestationStartOffset != vehicleProprietaryDataOffset)
    {
      v34 = (keyAttestationStartOffset - vehicleProprietaryDataOffset);
      instance2 = [entityCopy instance];
      identifier2 = [instance2 identifier];
      hexStringAsData2 = [identifier2 hexStringAsData];
      publicKeyIdentifier2 = [dataCopy publicKeyIdentifier];
      v46 = 0;
      v41 = v34;
      v28 = sub_100046338(elementCopy, hexStringAsData2, publicKeyIdentifier2, vehicleProprietaryDataOffset, v34, &v46);
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
            carOEMProprietaryData2 = 0;
          }

          else
          {
            ses_sha256 = [privacyEncryptionPK ses_sha256];
            carOEMProprietaryData2 = [SEEndPointPrivacyEncryptResponse responseWithCipherText:v37 ephemeralPublicKeyData:v45 receiverPublicKeyHash:ses_sha256];
            v39 = ses_sha256;
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

      carOEMProprietaryData2 = 0;
LABEL_48:

      goto LABEL_32;
    }

    v19 = 0;
  }

  carOEMProprietaryData2 = 0;
LABEL_20:

LABEL_25:
LABEL_26:

  return carOEMProprietaryData2;
}

- (void)updateLyonCredentialDocumentStatusWithProxy:(id)proxy endpointIdentifier:(id)identifier accessDocumentPresent:(BOOL)present accessDocumentSignedTimestamp:(id)timestamp revocationDocumentPresent:(BOOL)documentPresent revocationDocumentSignedTimestamp:(id)signedTimestamp reply:(id)reply
{
  identifierCopy = identifier;
  timestampCopy = timestamp;
  signedTimestampCopy = signedTimestamp;
  replyCopy = reply;
  proxyCopy = proxy;
  v20 = SESDefaultLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v34 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v21 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) updateLyonCredentialDocumentStatusWithProxy:endpointIdentifier:accessDocumentPresent:accessDocumentSignedTimestamp:revocationDocumentPresent:revocationDocumentSignedTimestamp:reply:]"];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100022114;
  v26[3] = &unk_1004C1B18;
  presentCopy = present;
  documentPresentCopy = documentPresent;
  v27 = timestampCopy;
  v28 = signedTimestampCopy;
  v29 = identifierCopy;
  v30 = replyCopy;
  v22 = identifierCopy;
  v23 = signedTimestampCopy;
  v24 = timestampCopy;
  v25 = replyCopy;
  [(SESEndpointAndKeyXPCServer *)self endPointServiceAvailableWithProxy:proxyCopy reason:v21 reply:v26];
}

- (void)revokeEndPointWithIdentifier:(id)identifier nonce:(id)nonce metaData:(id)data reply:(id)reply
{
  identifierCopy = identifier;
  nonceCopy = nonce;
  dataCopy = data;
  replyCopy = reply;
  v14 = SESDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = identifierCopy;
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
  v22 = nonceCopy;
  v23 = dataCopy;
  v24 = replyCopy;
  v18 = dataCopy;
  v19 = nonceCopy;
  v20 = replyCopy;
  [(SESEndpointAndKeyXPCServer *)self endPointAction:identifierCopy clientInfo:v16 reason:v17 reply:v21];
}

- (void)signatureWithEndPointIdentifier:(id)identifier metaDataHash:(id)hash authorization:(id)authorization reply:(id)reply
{
  identifierCopy = identifier;
  hashCopy = hash;
  authorizationCopy = authorization;
  replyCopy = reply;
  v14 = SESDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v28 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v15 = +[NSXPCConnection currentConnection];
  v16 = sub_100035A18(SESClientInfo, v15);
  v17 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) signatureWithEndPointIdentifier:metaDataHash:authorization:reply:]"];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100022CE4;
  v22[3] = &unk_1004C1B40;
  v23 = hashCopy;
  v24 = authorizationCopy;
  v25 = identifierCopy;
  v26 = replyCopy;
  v18 = identifierCopy;
  v19 = authorizationCopy;
  v20 = hashCopy;
  v21 = replyCopy;
  [(SESEndpointAndKeyXPCServer *)self endPointAction:v18 clientInfo:v16 reason:v17 reply:v22];
}

- (void)signatureISO18013WithEndPointIdentifier:(id)identifier toBeSigned:(id)signed reply:(id)reply
{
  identifierCopy = identifier;
  signedCopy = signed;
  replyCopy = reply;
  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v12 = +[NSXPCConnection currentConnection];
  v13 = sub_100035A18(SESClientInfo, v12);
  v14 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) signatureISO18013WithEndPointIdentifier:toBeSigned:reply:]"];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100023074;
  v18[3] = &unk_1004C1B68;
  v20 = identifierCopy;
  v21 = replyCopy;
  v19 = signedCopy;
  v15 = identifierCopy;
  v16 = signedCopy;
  v17 = replyCopy;
  [(SESEndpointAndKeyXPCServer *)self endPointAction:v15 clientInfo:v13 reason:v14 reply:v18];
}

- (void)setPrivateDataWithProxy:(id)proxy identifier:(id)identifier privateData:(id)data privateDataOffset:(unsigned __int16)offset reply:(id)reply
{
  identifierCopy = identifier;
  dataCopy = data;
  replyCopy = reply;
  proxyCopy = proxy;
  v16 = SESDefaultLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v27 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v17 = +[NSXPCConnection currentConnection];
  v18 = sub_100035A18(SESClientInfo, v17);

  v19 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) setPrivateDataWithProxy:identifier:privateData:privateDataOffset:reply:]"];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10002340C;
  v22[3] = &unk_1004C1B90;
  offsetCopy = offset;
  v23 = dataCopy;
  v24 = replyCopy;
  v20 = dataCopy;
  v21 = replyCopy;
  [(SESEndpointAndKeyXPCServer *)self endPointAction:identifierCopy proxy:proxyCopy clientInfo:v18 reason:v19 reply:v22];
}

- (void)updateEndpoint:(id)endpoint reply:(id)reply
{
  endpointCopy = endpoint;
  replyCopy = reply;
  v8 = SESDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    publicKeyIdentifier = [endpointCopy publicKeyIdentifier];
    asHexString = [publicKeyIdentifier asHexString];
    *buf = 138412290;
    v22 = asHexString;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "updateEndpoint %@", buf, 0xCu);
  }

  v11 = +[NSXPCConnection currentConnection];
  v12 = sub_100035A18(SESClientInfo, v11);

  publicKeyIdentifier2 = [endpointCopy publicKeyIdentifier];
  asHexString2 = [publicKeyIdentifier2 asHexString];
  v15 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) updateEndpoint:reply:]"];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100023890;
  v18[3] = &unk_1004C1BB8;
  v19 = endpointCopy;
  v20 = replyCopy;
  v16 = endpointCopy;
  v17 = replyCopy;
  [(SESEndpointAndKeyXPCServer *)self endPointDBAction:asHexString2 clientInfo:v12 reason:v15 reply:v18];
}

- (void)getPrivateDataWithProxy:(id)proxy identifier:(id)identifier privateDataOffset:(unsigned __int16)offset privateDataLength:(unsigned __int16)length reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  proxyCopy = proxy;
  v15 = SESDefaultLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v16 = +[NSXPCConnection currentConnection];
  v17 = sub_100035A18(SESClientInfo, v16);

  v18 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) getPrivateDataWithProxy:identifier:privateDataOffset:privateDataLength:reply:]"];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100023C14;
  v20[3] = &unk_1004C1BE0;
  v21 = replyCopy;
  offsetCopy = offset;
  lengthCopy = length;
  v19 = replyCopy;
  [(SESEndpointAndKeyXPCServer *)self endPointAction:identifierCopy proxy:proxyCopy clientInfo:v17 reason:v18 reply:v20];
}

- (void)createEncryptionKeyEndPointWithProxy:(id)proxy identifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  proxyCopy = proxy;
  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v12 = +[NSXPCConnection currentConnection];
  v13 = sub_100035A18(SESClientInfo, v12);

  v14 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) createEncryptionKeyEndPointWithProxy:identifier:reply:]"];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100024050;
  v16[3] = &unk_1004C1C08;
  v17 = replyCopy;
  v15 = replyCopy;
  [(SESEndpointAndKeyXPCServer *)self endPointAction:identifierCopy proxy:proxyCopy clientInfo:v13 reason:v14 reply:v16];
}

- (void)setConfidentialDataEndPointWithIdentifier:(id)identifier senderEphemeralPublicKey:(id)key encryptedData:(id)data offset:(unsigned __int16)offset reply:(id)reply
{
  keyCopy = key;
  dataCopy = data;
  replyCopy = reply;
  identifierCopy = identifier;
  v16 = +[NSXPCConnection currentConnection];
  v17 = sub_100035A18(SESClientInfo, v16);

  v18 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) setConfidentialDataEndPointWithIdentifier:senderEphemeralPublicKey:encryptedData:offset:reply:]"];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100024310;
  v22[3] = &unk_1004C1C30;
  v24 = dataCopy;
  v25 = replyCopy;
  v23 = keyCopy;
  offsetCopy = offset;
  v19 = dataCopy;
  v20 = keyCopy;
  v21 = replyCopy;
  [(SESEndpointAndKeyXPCServer *)self endPointAction:identifierCopy clientInfo:v17 reason:v18 reply:v22];
}

- (void)updateHydraMailboxesWithProxy:(id)proxy identifier:(id)identifier encryptedSEBlob:(id)blob reply:(id)reply
{
  identifierCopy = identifier;
  blobCopy = blob;
  replyCopy = reply;
  proxyCopy = proxy;
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
  v22 = blobCopy;
  selfCopy = self;
  v24 = identifierCopy;
  v25 = replyCopy;
  v18 = identifierCopy;
  v19 = blobCopy;
  v20 = replyCopy;
  [(SESEndpointAndKeyXPCServer *)self endPointAction:v18 proxy:proxyCopy clientInfo:v16 reason:v17 reply:v21];
}

- (id)_applyPrivateMailboxContents:(id *)contents secureElement:(id)element instanceAID:(id)d keyIdentifier:(id)identifier
{
  elementCopy = element;
  dCopy = d;
  identifierCopy = identifier;
  v14 = 0u;
  DERParseSequenceSpecContent();
  v11 = SESDefaultLogObject();
  v12 = SESCreateAndLogError();

  return v12;
}

- (id)_applyConfidentialMailboxContents:(id *)contents secureElement:(id)element instanceAID:(id)d keyIdentifier:(id)identifier
{
  elementCopy = element;
  dCopy = d;
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  DERParseSequenceSpecContent();
  v11 = SESDefaultLogObject();
  v12 = SESCreateAndLogError();

  return v12;
}

- (void)createEndPointAuthorizationID:(id)d userAuth:(id)auth reply:(id)reply
{
  dCopy = d;
  authCopy = auth;
  replyCopy = reply;
  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v21 = dCopy;
    v22 = 2112;
    v23 = authCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@ %@", buf, 0x16u);
  }

  if (dCopy && authCopy)
  {
    v12 = +[NSXPCConnection currentConnection];
    v13 = sub_100035A18(SESClientInfo, v12);

    v14 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) createEndPointAuthorizationID:userAuth:reply:]"];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000251F0;
    v16[3] = &unk_1004C1B68;
    v19 = replyCopy;
    v17 = dCopy;
    v18 = authCopy;
    [(SESEndpointAndKeyXPCServer *)self endPointAction:v17 clientInfo:v13 reason:v14 reply:v16];

    v15 = v19;
  }

  else
  {
    v13 = SESDefaultLogObject();
    v15 = SESCreateAndLogError();
    (*(replyCopy + 2))(replyCopy, 0, v15);
  }
}

- (void)listEndPointAuthorizations:(id)authorizations
{
  authorizationsCopy = authorizations;
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
  v9 = authorizationsCopy;
  v7 = authorizationsCopy;
  [(SESEndpointAndKeyXPCServer *)self secureElementService:v6 reply:v8];
}

- (void)deleteEndPointAuthorizationID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v8 = SESDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v9 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) deleteEndPointAuthorizationID:reply:]"];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002567C;
  v12[3] = &unk_1004C0BC8;
  v13 = dCopy;
  v14 = replyCopy;
  v10 = dCopy;
  v11 = replyCopy;
  [(SESEndpointAndKeyXPCServer *)self secureElementService:v9 reply:v12];
}

- (void)preAuthorizeEndpointWithProxy:(id)proxy keyIdentifier:(id)identifier bindingAttestation:(id)attestation reply:(id)reply
{
  identifierCopy = identifier;
  attestationCopy = attestation;
  replyCopy = reply;
  proxyCopy = proxy;
  v14 = SESDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v26 = proxyCopy != 0;
    v27 = 2112;
    v28 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "preAuthorizeEndpointWithProxy %d keyIdentifier %@", buf, 0x12u);
  }

  v15 = +[NSXPCConnection currentConnection];
  v16 = sub_100035A18(SESClientInfo, v15);

  v17 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) preAuthorizeEndpointWithProxy:keyIdentifier:bindingAttestation:reply:]"];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100025960;
  v21[3] = &unk_1004C1B68;
  v23 = attestationCopy;
  v24 = replyCopy;
  v22 = identifierCopy;
  v18 = attestationCopy;
  v19 = identifierCopy;
  v20 = replyCopy;
  [(SESEndpointAndKeyXPCServer *)self endPointAction:v19 proxy:proxyCopy clientInfo:v16 reason:v17 reply:v21];
}

- (void)authorizeEndPointWithProxy:(id)proxy version:(unsigned __int8)version identifier:(id)identifier externalCA:(id)a instanceCA:(id)cA endpointCertificate:(id)certificate encryptionKeyAttestation:(id)attestation bindingAttestation:(id)self0 bindingAttestationToken:(id)self1 confidentialDataOffset:(unsigned __int16)self2 confidentialDataLength:(unsigned __int16)self3 metaData:(id)self4 authorizationID:(id)self5 reply:(id)self6
{
  identifierCopy = identifier;
  aCopy = a;
  cACopy = cA;
  certificateCopy = certificate;
  attestationCopy = attestation;
  bindingAttestationCopy = bindingAttestation;
  tokenCopy = token;
  dataCopy = data;
  dCopy = d;
  replyCopy = reply;
  proxyCopy = proxy;
  v27 = SESDefaultLogObject();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v61 = proxyCopy != 0;
    v62 = 2112;
    v63 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "authorizeEndPointWithProxy %d keyIdentifier %@", buf, 0x12u);
  }

  +[NSXPCConnection currentConnection];
  v28 = v37 = proxyCopy;
  v36 = sub_100035A18(SESClientInfo, v28);

  v29 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) authorizeEndPointWithProxy:version:identifier:externalCA:instanceCA:endpointCertificate:encryptionKeyAttestation:bindingAttestation:bindingAttestationToken:confidentialDataOffset:confidentialDataLength:metaData:authorizationID:reply:]"];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100025D88;
  v47[3] = &unk_1004C1C80;
  v55 = dCopy;
  v56 = replyCopy;
  lengthCopy = length;
  offsetCopy = offset;
  v48 = certificateCopy;
  v49 = bindingAttestationCopy;
  versionCopy = version;
  v50 = tokenCopy;
  v51 = aCopy;
  v52 = cACopy;
  v53 = attestationCopy;
  v54 = dataCopy;
  v42 = dCopy;
  v39 = dataCopy;
  v38 = attestationCopy;
  v30 = cACopy;
  v31 = aCopy;
  v32 = tokenCopy;
  v33 = bindingAttestationCopy;
  v34 = certificateCopy;
  v35 = replyCopy;
  [(SESEndpointAndKeyXPCServer *)self endPointAction:identifierCopy proxy:v37 clientInfo:v36 reason:v29 reply:v47];
}

- (void)privacyDecryptDataWithEndPoint:(id)point data:(id)data ephemeralPublicKey:(id)key reply:(id)reply
{
  pointCopy = point;
  dataCopy = data;
  keyCopy = key;
  replyCopy = reply;
  v14 = SESDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = pointCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v15 = +[NSXPCConnection currentConnection];
  v16 = sub_100035A18(SESClientInfo, v15);

  v17 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) privacyDecryptDataWithEndPoint:data:ephemeralPublicKey:reply:]"];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002639C;
  v21[3] = &unk_1004C1CA8;
  v23 = keyCopy;
  v24 = replyCopy;
  v22 = dataCopy;
  v18 = keyCopy;
  v19 = dataCopy;
  v20 = replyCopy;
  [(SESEndpointAndKeyXPCServer *)self endPointDBAction:pointCopy clientInfo:v16 reason:v17 reply:v21];
}

- (void)privacyDecryptDataWithKeyPair:(id)pair secretKey:(id)key data:(id)data ephemeralPublicKey:(id)publicKey reply:(id)reply
{
  pairCopy = pair;
  keyCopy = key;
  dataCopy = data;
  publicKeyCopy = publicKey;
  replyCopy = reply;
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
    v27 = pairCopy;
    v18 = [pairCopy mutableCopy];
    v19 = keyCopy;
    [v18 appendData:keyCopy];
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
      replyCopy[2](replyCopy, 0, v26);

      v24 = dataCopy;
    }

    else
    {
      v24 = dataCopy;
      v23 = decryptPrivacyData();
      v25 = 0;
      (replyCopy)[2](replyCopy, v25, v23);
    }

    pairCopy = v27;
    keyCopy = v19;
  }

  else
  {
    v18 = SESDefaultLogObject();
    v20 = SESCreateAndLogError();
    replyCopy[2](replyCopy, 0, v20);
    v24 = dataCopy;
  }
}

- (void)privacyEncryptDataWithEndPoint:(id)point data:(id)data reply:(id)reply
{
  pointCopy = point;
  dataCopy = data;
  replyCopy = reply;
  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = pointCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v12 = +[NSXPCConnection currentConnection];
  v13 = sub_100035A18(SESClientInfo, v12);

  v14 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) privacyEncryptDataWithEndPoint:data:reply:]"];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100026AFC;
  v18[3] = &unk_1004C1CA8;
  v20 = dataCopy;
  v21 = replyCopy;
  v19 = pointCopy;
  v15 = dataCopy;
  v16 = pointCopy;
  v17 = replyCopy;
  [(SESEndpointAndKeyXPCServer *)self endPointDBAction:v16 clientInfo:v13 reason:v14 reply:v18];
}

- (void)privacyEncryptDataWithManufacturer:(id)manufacturer environment:(id)environment region:(id)region data:(id)data reply:(id)reply
{
  manufacturerCopy = manufacturer;
  environmentCopy = environment;
  regionCopy = region;
  dataCopy = data;
  replyCopy = reply;
  v16 = SESDefaultLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v31 = manufacturerCopy;
    v32 = 2112;
    v33 = environmentCopy;
    v34 = 2112;
    v35 = regionCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@ %@ %@", buf, 0x20u);
  }

  v17 = +[NSXPCConnection currentConnection];
  v18 = sub_100035A18(SESClientInfo, v17);

  if (sub_1003AD208(v18) & 1) != 0 || (sub_1003AD230(v18))
  {
    v19 = objc_opt_new();
    v29 = 0;
    v20 = [v19 getEncryptionCertificateFor:manufacturerCopy environment:environmentCopy region:regionCopy error:&v29];
    v21 = v29;
    if (v21)
    {
      v22 = v21;
      replyCopy[2](replyCopy, 0, v21);
    }

    else
    {
      v28 = dataCopy;
      v23 = getCertificatePublicKey();
      if (v23)
      {
        v22 = encryptPrivacyData();
        v24 = 0;
        v27 = 0;
        if (v22)
        {
          replyCopy[2](replyCopy, 0, v22);
        }

        else
        {
          ses_sha256 = [v23 ses_sha256];
          v25 = [SEEndPointPrivacyEncryptResponse responseWithCipherText:v27 ephemeralPublicKeyData:v24 receiverPublicKeyHash:ses_sha256];
          (replyCopy)[2](replyCopy, v25, 0);
        }
      }

      else
      {
        v27 = SESDefaultLogObject();
        v24 = SESCreateAndLogError();
        replyCopy[2](replyCopy, 0, v24);
        v22 = 0;
      }

      dataCopy = v28;
    }
  }

  else
  {
    v19 = SESDefaultLogObject();
    v22 = SESCreateAndLogError();
    replyCopy[2](replyCopy, 0, v22);
  }
}

- (void)deleteEndPointWithPublicKey:(id)key reply:(id)reply
{
  replyCopy = reply;
  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "", v7, 2u);
  }

  v6 = [NSError errorWithDomain:@"seserviced" code:-1 userInfo:0];
  replyCopy[2](replyCopy, 0, v6);
}

- (void)deleteEndPointWithPublicKeyIdentifier:(id)identifier reply:(id)reply
{
  replyCopy = reply;
  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "", v7, 2u);
  }

  v6 = [NSError errorWithDomain:@"seserviced" code:-1 userInfo:0];
  replyCopy[2](replyCopy, 0, v6);
}

- (void)deleteEndPointWithProxy:(id)proxy identifier:(id)identifier mustBeTerminated:(BOOL)terminated reply:(id)reply
{
  terminatedCopy = terminated;
  identifierCopy = identifier;
  replyCopy = reply;
  proxyCopy = proxy;
  v13 = SESDefaultLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v27 = identifierCopy;
    v28 = 1024;
    v29 = proxyCopy != 0;
    v30 = 1024;
    v31 = terminatedCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[deleteEndPointWithProxy] identifier %@ proxy %d mustBeTerminated %d", buf, 0x18u);
  }

  v14 = +[NSXPCConnection currentConnection];
  v15 = sub_100035A18(SESClientInfo, v14);

  v16 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) deleteEndPointWithProxy:identifier:mustBeTerminated:reply:]"];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100027374;
  v20[3] = &unk_1004C1CD0;
  v25 = terminatedCopy;
  v21 = identifierCopy;
  selfCopy = self;
  v23 = v15;
  v24 = replyCopy;
  v17 = v15;
  v18 = identifierCopy;
  v19 = replyCopy;
  [(SESEndpointAndKeyXPCServer *)self endPointAction:v18 proxy:proxyCopy clientInfo:v17 reason:v16 reply:v20];
}

- (void)remoteTerminationRequestWithProxy:(id)proxy remoteTerminationRequest:(id)request publicKeyIdentifier:(id)identifier taskID:(id)d reply:(id)reply
{
  requestCopy = request;
  identifierCopy = identifier;
  dCopy = d;
  replyCopy = reply;
  proxyCopy = proxy;
  v17 = +[NSXPCConnection currentConnection];
  v18 = sub_100035A18(SESClientInfo, v17);

  v19 = SESDefaultLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v21 = sub_1003AD1F4(v18, v20);
    *buf = 138413058;
    v36 = identifierCopy;
    v37 = 2112;
    v38 = v21;
    v39 = 2112;
    v40 = dCopy;
    v41 = 1024;
    v42 = requestCopy != 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "key %@ client %@ task %@ hasRTR %d", buf, 0x26u);
  }

  v22 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) remoteTerminationRequestWithProxy:remoteTerminationRequest:publicKeyIdentifier:taskID:reply:]"];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100027AA4;
  v28[3] = &unk_1004C1CF8;
  v29 = identifierCopy;
  v30 = requestCopy;
  selfCopy = self;
  v32 = dCopy;
  v33 = v18;
  v34 = replyCopy;
  v23 = v18;
  v24 = dCopy;
  v25 = requestCopy;
  v26 = identifierCopy;
  v27 = replyCopy;
  [(SESEndpointAndKeyXPCServer *)self endPointAction:v26 proxy:proxyCopy clientInfo:v23 reason:v22 reply:v28];
}

- (id)revokeRemoteTerminationRequestEndPoints:(id)points handle:(id)handle identifier:(id)identifier taskID:(id)d clientInfo:(id)info outError:(id *)error
{
  pointsCopy = points;
  handleCopy = handle;
  identifierCopy = identifier;
  dCopy = d;
  infoCopy = info;
  messageQueue = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(messageQueue);

  asHexString = [identifierCopy asHexString];
  v54 = 0;
  v55 = 0;
  v20 = [(SESEndpointAndKeyXPCServer *)self _getEndPointAndValidateAccess:handleCopy identifier:asHexString clientInfo:infoCopy outEndPointEntity:&v55 outEndPoint:&v54];

  v21 = v55;
  v22 = v54;

  if (!v20 && v22 && v21)
  {
    revocationAttestation = [v22 revocationAttestation];

    if (!revocationAttestation)
    {
      v48 = identifierCopy;
      v49 = handleCopy;
      readerInfo = [v22 readerInfo];
      bleAddress = [v22 bleAddress];
      v32 = 3;
      if (!bleAddress)
      {
        v32 = 1;
      }

      v47 = v32;

      v33 = [(SESEndpointAndKeyXPCServer *)self getEncryptedCarOEMProprietaryData:v22 withEndpointEntity:v21 withSecureElement:pointsCopy];
      [v22 setCarOEMProprietaryData:v33];

      bleAddress2 = [NSData randomData:16];
      instance = [v21 instance];
      [instance identifier];
      v36 = v35 = pointsCopy;
      hexStringAsData = [v36 hexStringAsData];
      publicKeyIdentifier = [v22 publicKeyIdentifier];
      v53 = 0;
      v50 = v35;
      v39 = sub_10004993C(v35, hexStringAsData, publicKeyIdentifier, bleAddress2, 0, &v53);
      v20 = v53;

      if (v20 || !v39)
      {
        if (error)
        {
          v42 = SESDefaultLogObject();
          publicKeyIdentifier2 = [v22 publicKeyIdentifier];
          asHexString2 = [publicKeyIdentifier2 asHexString];
          *error = SESCreateAndLogError();
        }

        sub_10004CE08(SESDAnalyticsLogger, 2, readerInfo, v47, 3);
        v29 = 0;
        handleCopy = v49;
        pointsCopy = v50;
        identifierCopy = v48;
        v30 = dCopy;
      }

      else
      {
        [v22 setRevocationAttestation:?];
        handleCopy = v49;
        v30 = dCopy;
        if (dCopy)
        {
          [v22 setTerminatedByTaskID:dCopy];
        }

        v20 = sub_10003D080(SESEndpointDatabase, v21, v22, v49);
        pointsCopy = v50;
        identifierCopy = v48;
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
        sub_10004CE08(SESDAnalyticsLogger, 2, readerInfo, v47, v41);
        v29 = v39;
      }

      readerInfo2 = readerInfo;
      goto LABEL_31;
    }

    if (error)
    {
      v24 = SESDefaultLogObject();
      publicKeyIdentifier3 = [v22 publicKeyIdentifier];
      asHexString3 = [publicKeyIdentifier3 asHexString];
      *error = SESCreateAndLogError();
    }

    readerInfo2 = [v22 readerInfo];
    bleAddress2 = [v22 bleAddress];
    if (bleAddress2)
    {
      v28 = 3;
    }

    else
    {
      v28 = 1;
    }

    sub_10004CE08(SESDAnalyticsLogger, 2, readerInfo2, v28, 2);
    v20 = 0;
    v29 = 0;
  }

  else
  {
    if (!error)
    {
      v29 = 0;
      v30 = dCopy;
      goto LABEL_32;
    }

    readerInfo2 = SESDefaultLogObject();
    bleAddress2 = [identifierCopy asHexString];
    SESCreateAndLogError();
    *error = v29 = 0;
  }

  v30 = dCopy;
LABEL_31:

LABEL_32:

  return v29;
}

- (void)getInvitations:(id)invitations
{
  invitationsCopy = invitations;
  v5 = +[NSXPCConnection currentConnection];
  v6 = sub_100035A18(SESClientInfo, v5);

  if (sub_1003AD208(v6))
  {
    v7 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) getInvitations:]"];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100028724;
    v10[3] = &unk_1004C16B0;
    v12 = invitationsCopy;
    v11 = v6;
    [(SESEndpointAndKeyXPCServer *)self databaseServiceWithProxy:0 isReconcileRequired:0 reason:v7 reply:v10];
  }

  else
  {
    v8 = SESDefaultLogObject();
    v9 = SESCreateAndLogError();
    (*(invitationsCopy + 2))(invitationsCopy, 0, v9);
  }
}

- (void)getInvitationWithId:(id)id reply:(id)reply
{
  idCopy = id;
  replyCopy = reply;
  v8 = +[NSXPCConnection currentConnection];
  v9 = sub_100035A18(SESClientInfo, v8);

  if (sub_1003AD208(v9))
  {
    v10 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) getInvitationWithId:reply:]"];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100028A48;
    v13[3] = &unk_1004C1D20;
    v16 = replyCopy;
    v14 = idCopy;
    v15 = v9;
    [(SESEndpointAndKeyXPCServer *)self databaseServiceWithProxy:0 isReconcileRequired:0 reason:v10 reply:v13];
  }

  else
  {
    v11 = SESDefaultLogObject();
    v12 = SESCreateAndLogError();
    (*(replyCopy + 2))(replyCopy, 0, v12);
  }
}

- (void)addInvitationWithId:(id)id data:(id)data reply:(id)reply
{
  idCopy = id;
  dataCopy = data;
  replyCopy = reply;
  v11 = +[NSXPCConnection currentConnection];
  v12 = sub_100035A18(SESClientInfo, v11);

  if (sub_1003AD208(v12))
  {
    v13 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) addInvitationWithId:data:reply:]"];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100028D98;
    v16[3] = &unk_1004C17C8;
    v20 = replyCopy;
    v17 = idCopy;
    v18 = dataCopy;
    v19 = v12;
    [(SESEndpointAndKeyXPCServer *)self databaseServiceWithProxy:0 isReconcileRequired:0 reason:v13 reply:v16];
  }

  else
  {
    v14 = SESDefaultLogObject();
    v15 = SESCreateAndLogError();
    (*(replyCopy + 2))(replyCopy, 0, v15);
  }
}

- (void)deleteInvitationWithId:(id)id reply:(id)reply
{
  idCopy = id;
  replyCopy = reply;
  v8 = +[NSXPCConnection currentConnection];
  v9 = sub_100035A18(SESClientInfo, v8);

  if (sub_1003AD208(v9))
  {
    v10 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) deleteInvitationWithId:reply:]"];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10002905C;
    v13[3] = &unk_1004C1D20;
    v16 = replyCopy;
    v14 = idCopy;
    v15 = v9;
    [(SESEndpointAndKeyXPCServer *)self databaseServiceWithProxy:0 isReconcileRequired:0 reason:v10 reply:v13];
  }

  else
  {
    v11 = SESDefaultLogObject();
    v12 = SESCreateAndLogError();
    (*(replyCopy + 2))(replyCopy, 0, v12);
  }
}

- (void)getEndpointIdWithUuid:(id)uuid reply:(id)reply
{
  uuidCopy = uuid;
  replyCopy = reply;
  v8 = +[NSXPCConnection currentConnection];
  v9 = sub_100035A18(SESClientInfo, v8);

  if (sub_1003AD208(v9))
  {
    v10 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) getEndpointIdWithUuid:reply:]"];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100029310;
    v13[3] = &unk_1004C1D20;
    v16 = replyCopy;
    v14 = uuidCopy;
    v15 = v9;
    [(SESEndpointAndKeyXPCServer *)self databaseServiceWithProxy:0 isReconcileRequired:0 reason:v10 reply:v13];
  }

  else
  {
    v11 = SESDefaultLogObject();
    v12 = SESCreateAndLogError();
    (*(replyCopy + 2))(replyCopy, 0, v12);
  }
}

- (void)addEndpointId:(id)id withUuid:(id)uuid reply:(id)reply
{
  idCopy = id;
  uuidCopy = uuid;
  replyCopy = reply;
  v11 = +[NSXPCConnection currentConnection];
  v12 = sub_100035A18(SESClientInfo, v11);

  if (sub_1003AD208(v12))
  {
    v13 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) addEndpointId:withUuid:reply:]"];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100029658;
    v16[3] = &unk_1004C17C8;
    v20 = replyCopy;
    v17 = idCopy;
    v18 = uuidCopy;
    v19 = v12;
    [(SESEndpointAndKeyXPCServer *)self databaseServiceWithProxy:0 isReconcileRequired:0 reason:v13 reply:v16];
  }

  else
  {
    v14 = SESDefaultLogObject();
    v15 = SESCreateAndLogError();
    (*(replyCopy + 2))(replyCopy, 0, v15);
  }
}

- (void)deleteEndpointIdWithUuid:(id)uuid reply:(id)reply
{
  uuidCopy = uuid;
  replyCopy = reply;
  v8 = +[NSXPCConnection currentConnection];
  v9 = sub_100035A18(SESClientInfo, v8);

  if (sub_1003AD208(v9))
  {
    v10 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) deleteEndpointIdWithUuid:reply:]"];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10002991C;
    v13[3] = &unk_1004C1D20;
    v16 = replyCopy;
    v14 = uuidCopy;
    v15 = v9;
    [(SESEndpointAndKeyXPCServer *)self databaseServiceWithProxy:0 isReconcileRequired:0 reason:v10 reply:v13];
  }

  else
  {
    v11 = SESDefaultLogObject();
    v12 = SESCreateAndLogError();
    (*(replyCopy + 2))(replyCopy, 0, v12);
  }
}

- (void)getEndpointBindingAttestationRequestWithProxy:(id)proxy authorityIdentifier:(id)identifier reply:(id)reply
{
  proxyCopy = proxy;
  identifierCopy = identifier;
  replyCopy = reply;
  v11 = +[NSXPCConnection currentConnection];
  v12 = sub_100035A18(SESClientInfo, v11);

  if (sub_1003AD208(v12) & 1) != 0 || (sub_1003AD230(v12))
  {
    v13 = SESDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v21 = proxyCopy != 0;
      v22 = 2112;
      v23 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "getEndpointBindingAttestationRequestWithProxy %d authorityIdentifier %@", buf, 0x12u);
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100029C5C;
    v16[3] = &unk_1004C1D48;
    v19 = replyCopy;
    v17 = identifierCopy;
    v18 = v12;
    [(SESEndpointAndKeyXPCServer *)self endPointServiceAvailableWithProxy:proxyCopy reason:@"getEndpointBindingAttestationRequestWithProxy" reply:v16];
  }

  else
  {
    v14 = SESDefaultLogObject();
    v15 = SESCreateAndLogError();
    (*(replyCopy + 2))(replyCopy, 0, v15);
  }
}

- (void)listEndPointContainers:(id)containers reply:(id)reply
{
  containersCopy = containers;
  replyCopy = reply;
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
    v15 = replyCopy;
    [(SESEndpointAndKeyXPCServer *)self endPointServiceAvailableWithProxy:containersCopy reason:v11 reply:v14];

    v12 = v15;
  }

  else
  {
    v12 = SESDefaultLogObject();
    v13 = SESCreateAndLogError();
    (*(replyCopy + 2))(replyCopy, 0, v13);
  }
}

- (void)isCarKeySupported:(id)supported brand:(id)brand uuid:(id)uuid reply:(id)reply
{
  supportedCopy = supported;
  brandCopy = brand;
  uuidCopy = uuid;
  replyCopy = reply;
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
    replyCopy[2](replyCopy, 0, v21);
    goto LABEL_13;
  }

  v16 = objc_opt_new();
  v17 = v16;
  if (brandCopy && uuidCopy)
  {
    v23 = 0;
    v18 = [v16 BOOLValueForSetting:8 manufacturer:supportedCopy brand:brandCopy uuid:uuidCopy error:&v23];
    v19 = v23;
    bOOLValue = [v18 BOOLValue];
  }

  else
  {
    v22 = 0;
    bOOLValue = [v16 isDCKConfigurationAvailableFor:supportedCopy error:&v22];
    v19 = v22;
  }

  +[_TtC10seserviced15SESAssetManager syncMobileAssetUserInitiated];
  if (!v19)
  {
    v21 = [NSNumber numberWithBool:bOOLValue];
    (replyCopy)[2](replyCopy, v21, 0);
LABEL_13:

    goto LABEL_14;
  }

  replyCopy[2](replyCopy, 0, v19);
LABEL_14:
}

- (void)getSESEndpointTSMDictionary:(id)dictionary reply:(id)reply
{
  dictionaryCopy = dictionary;
  replyCopy = reply;
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
  v12 = dictionaryCopy;
  v13 = replyCopy;
  v11[4] = self;
  v9 = dictionaryCopy;
  v10 = replyCopy;
  [(SESEndpointAndKeyXPCServer *)self listEndPointsWithProxy:v9 mandatoryReconciliation:1 reply:v11];
}

- (void)isSharingEnabledForManufacturer:(id)manufacturer brand:(id)brand uuid:(id)uuid reply:(id)reply
{
  manufacturerCopy = manufacturer;
  brandCopy = brand;
  replyCopy = reply;
  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v16 = 138412546;
    v17 = manufacturerCopy;
    v18 = 2112;
    v19 = brandCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@ - %@", &v16, 0x16u);
  }

  v12 = +[NSXPCConnection currentConnection];
  v13 = sub_100035A18(SESClientInfo, v12);

  if (sub_1003AD208(v13) & 1) != 0 || (sub_1003AD230(v13))
  {
    +[_TtC10seserviced15SESAssetManager syncMobileAssetUserInitiated];
    v14 = [NSNumber numberWithBool:1];
    replyCopy[2](replyCopy, v14, 0);
  }

  else
  {
    v14 = SESDefaultLogObject();
    v15 = SESCreateAndLogError();
    (replyCopy)[2](replyCopy, 0, v15);
  }
}

- (void)carKeyDowngradeVersionSetting:(id)setting brand:(id)brand uuid:(id)uuid reply:(id)reply
{
  settingCopy = setting;
  brandCopy = brand;
  uuidCopy = uuid;
  replyCopy = reply;
  v13 = SESDefaultLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v23 = settingCopy;
    v24 = 2112;
    v25 = brandCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%@ - %@", buf, 0x16u);
  }

  v14 = +[NSXPCConnection currentConnection];
  v15 = sub_100035A18(SESClientInfo, v14);

  if ((sub_1003AD208(v15) & 1) == 0 && (sub_1003AD230(v15) & 1) == 0)
  {
    v18 = SESDefaultLogObject();
    v20 = SESCreateAndLogError();
    replyCopy[2](replyCopy, 0, v20);

    goto LABEL_12;
  }

  if (!settingCopy)
  {
    +[_TtC10seserviced15SESAssetManager syncMobileAssetUserInitiated];
    bOOLValue = 0;
    goto LABEL_9;
  }

  v16 = objc_opt_new();
  v21 = 0;
  v17 = [v16 BOOLValueForSetting:2 manufacturer:settingCopy brand:brandCopy uuid:uuidCopy error:&v21];
  v18 = v21;
  bOOLValue = [v17 BOOLValue];

  +[_TtC10seserviced15SESAssetManager syncMobileAssetUserInitiated];
  if (!v18)
  {
LABEL_9:
    v18 = [NSNumber numberWithBool:bOOLValue];
    (replyCopy)[2](replyCopy, v18, 0);
    goto LABEL_12;
  }

  replyCopy[2](replyCopy, 0, v18);
LABEL_12:
}

- (void)convertEndpointWithProxy:(id)proxy keyIdentifier:(id)identifier notBeforeDate:(id)date reply:(id)reply
{
  proxyCopy = proxy;
  identifierCopy = identifier;
  dateCopy = date;
  replyCopy = reply;
  v14 = SESDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    asHexString = [dateCopy asHexString];
    *buf = 138412546;
    v26 = identifierCopy;
    v27 = 2112;
    v28 = asHexString;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "convertEndpointWithProxy %@ notBeforeDate %@", buf, 0x16u);
  }

  v16 = +[NSXPCConnection currentConnection];
  v17 = sub_100035A18(SESClientInfo, v16);

  if ((sub_1003AD208(v17) & 1) == 0 && (sub_1003AD230(v17) & 1) == 0)
  {
    v19 = SESDefaultLogObject();
LABEL_10:
    v20 = SESCreateAndLogError();
    replyCopy[2](replyCopy, 0, v20);

    goto LABEL_11;
  }

  if ([dateCopy length] != 13 && objc_msgSend(dateCopy, "length") != 15)
  {
    v19 = SESDefaultLogObject();
    [dateCopy length];
    goto LABEL_10;
  }

  v18 = [NSString stringWithUTF8String:"[SESEndpointAndKeyXPCServer(SEEndPointXPC) convertEndpointWithProxy:keyIdentifier:notBeforeDate:reply:]"];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002B9A0;
  v21[3] = &unk_1004C1B68;
  v24 = replyCopy;
  v22 = identifierCopy;
  v23 = dateCopy;
  [(SESEndpointAndKeyXPCServer *)self endPointAction:v22 proxy:proxyCopy clientInfo:v17 reason:v18 reply:v21];

  v19 = v24;
LABEL_11:
}

- (void)triggerHeadUnitPairing:(id)pairing data:(id)data reply:(id)reply
{
  pairingCopy = pairing;
  dataCopy = data;
  replyCopy = reply;
  v10 = SESDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v16[0] = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "", v16, 2u);
  }

  v11 = +[NSXPCConnection currentConnection];
  v12 = sub_100035A18(SESClientInfo, v11);

  if ((sub_1003AD208(v12) & 1) != 0 || (sub_1003AD230(v12)) && pairingCopy)
  {
    v13 = +[_TtC10seserviced14AlishaExternal shared];
    [v13 triggerHeadUnitPairingWith:dataCopy keyIdentifier:pairingCopy];

    replyCopy[2](replyCopy, 1, 0);
  }

  else
  {
    v14 = SESDefaultLogObject();
    v15 = SESCreateAndLogError();
    (replyCopy)[2](replyCopy, 0, v15);
  }
}

- (void)sendDeviceIntentWithConfidence:(id)confidence keyIdentifier:(id)identifier reply:(id)reply
{
  confidenceCopy = confidence;
  identifierCopy = identifier;
  replyCopy = reply;
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
    if (confidenceCopy && identifierCopy)
    {
      if ([confidenceCopy unsignedIntValue] < 3)
      {
        v15 = +[_TtC10seserviced14AlishaExternal shared];
        [v15 sendDeviceIntentFor:identifierCopy];

        replyCopy[2](replyCopy, 1, 0);
        goto LABEL_13;
      }

      v13 = SESDefaultLogObject();
      [confidenceCopy unsignedIntValue];
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
  (replyCopy)[2](replyCopy, 0, v14);

LABEL_13:
}

- (void)notifyEndpointTracked:(id)tracked reply:(id)reply
{
  trackedCopy = tracked;
  replyCopy = reply;
  v7 = SESDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    asHexString = [trackedCopy asHexString];
    v14 = 138412290;
    v15 = asHexString;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Tracking completed for key %@", &v14, 0xCu);
  }

  v9 = +[NSXPCConnection currentConnection];
  v10 = sub_100035A18(SESClientInfo, v9);

  if (sub_1003AD208(v10) & 1) != 0 || (sub_1003AD230(v10))
  {
    v11 = +[_TtC10seserviced14AlishaExternal shared];
    [v11 onTrackingCompleteFor:trackedCopy];

    replyCopy[2](replyCopy, 1, 0);
  }

  else
  {
    v12 = SESDefaultLogObject();
    v13 = SESCreateAndLogError();
    (replyCopy)[2](replyCopy, 0, v13);
  }
}

- (void)notifyPassAdded:(id)added reply:(id)reply
{
  addedCopy = added;
  replyCopy = reply;
  v7 = SESDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    asHexString = [addedCopy asHexString];
    v15 = 138412290;
    v16 = asHexString;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Pass added for key %@", &v15, 0xCu);
  }

  v9 = +[NSXPCConnection currentConnection];
  v10 = sub_100035A18(SESClientInfo, v9);

  if (sub_1003AD208(v10) & 1) != 0 || (sub_1003AD230(v10))
  {
    v11 = +[_TtC10seserviced21AlishaPairingExternal shared];
    [v11 onPassAddedFor:addedCopy];

    v12 = +[_SESSessionManager sessionManager];
    [v12 didCreateKey:addedCopy];

    replyCopy[2](replyCopy, 1, 0);
  }

  else
  {
    v13 = SESDefaultLogObject();
    v14 = SESCreateAndLogError();
    (replyCopy)[2](replyCopy, 0, v14);
  }
}

- (void)getSupportedAliroVersionsWithReply:(id)reply
{
  replyCopy = reply;
  v6 = +[_TtC10seserviced12LyonExternal shared];
  getSupportedAliroVersions = [v6 getSupportedAliroVersions];
  (*(reply + 2))(replyCopy, getSupportedAliroVersions, 0);
}

- (void)getEndpoints:(id)endpoints completion:(id)completion
{
  endpointsCopy = endpoints;
  completionCopy = completion;
  messageQueue = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C778;
  block[3] = &unk_1004C0F68;
  block[4] = self;
  v12 = endpointsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = endpointsCopy;
  dispatch_async(messageQueue, block);
}

- (void)cleanupAppletsWithNoEndpoints:(id)endpoints completion:(id)completion
{
  endpointsCopy = endpoints;
  completionCopy = completion;
  messageQueue = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002CB8C;
  block[3] = &unk_1004C0F68;
  block[4] = self;
  v12 = endpointsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = endpointsCopy;
  dispatch_async(messageQueue, block);
}

+ (id)createServer
{
  v2 = sub_1003AD3E8([SESEndpointAndKeyXPCServer alloc], @"com.apple.seserviced", @"/private/var/mobile/Library/SecureElementService/");
  v3 = qword_10050CC30;
  qword_10050CC30 = v2;

  v4 = qword_10050CC30;

  return v4;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  processIdentifier = [(__CFString *)connectionCopy processIdentifier];
  v7 = [(__CFString *)connectionCopy valueForEntitlement:@"application-identifier"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    selfCopy = self;
    v8 = SESDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v43 = v7;
      v44 = 2112;
      v45 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Added connection from %@ (%@)", buf, 0x16u);
    }

    v40[0] = &off_1004DC9A8;
    v9 = [NSNumber numberWithInt:processIdentifier];
    v40[1] = &off_1004DC9C0;
    v41[0] = v9;
    v41[1] = v7;
    v10 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];
    [(__CFString *)connectionCopy setUserInfo:v10];

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000367F0;
    v37[3] = &unk_1004C2258;
    v39 = processIdentifier;
    v11 = v7;
    v38 = v11;
    [(__CFString *)connectionCopy setInvalidationHandler:v37];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000368A8;
    v34[3] = &unk_1004C2258;
    v36 = processIdentifier;
    v35 = v11;
    [(__CFString *)connectionCopy setInterruptionHandler:v34];
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
    [(__CFString *)connectionCopy setExportedInterface:v12];
    [(__CFString *)connectionCopy setExportedObject:selfCopy];
    [(__CFString *)connectionCopy resume];

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
  messageQueue = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100036B68;
  block[3] = &unk_1004C08D8;
  block[4] = self;
  dispatch_sync(messageQueue, block);

  v4 = +[_TtC10seserviced3DSK queue];
  dispatch_async(v4, &stru_1004C22C8);

  if (([SESBootUUID isFirstLaunchAfterBootForKey:@"applet.personalization.last.check.uuid"]& 1) != 0)
  {
    messageQueue2 = [(SESEndpointAndKeyXPCServer *)self messageQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100037044;
    v7[3] = &unk_1004C2340;
    v7[4] = self;
    [SESProximityChip cacheProximityChipData:messageQueue2 completion:v7];
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

- (void)fixEndpointSignatureCertificatePK:(id)k
{
  kCopy = k;
  messageQueue = [(SESEndpointAndKeyXPCServer *)self messageQueue];
  dispatch_assert_queue_V2(messageQueue);

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
    v8 = sub_1000598B8(SESEndpointDatabase, @"A000000809434343444B417631", kCopy, &obj);
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
      sub_1003AD2A8(kCopy, &v16);
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

+ (id)createServerWithMachServiceName:(id)name storagePath:(id)path
{
  pathCopy = path;
  nameCopy = name;
  v7 = sub_1003AD3E8([SESEndpointAndKeyXPCServer alloc], nameCopy, pathCopy);

  v8 = qword_10050CC30;
  qword_10050CC30 = v7;

  v9 = qword_10050CC30;

  return v9;
}

@end