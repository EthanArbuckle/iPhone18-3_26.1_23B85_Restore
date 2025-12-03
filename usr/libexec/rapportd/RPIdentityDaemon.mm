@interface RPIdentityDaemon
+ (id)sharedIdentityDaemon;
- (BOOL)_removeSameAccountIdentityWithIDSIdentifier:(id)identifier error:(id *)error;
- (BOOL)_stationaryDevice;
- (BOOL)diagnosticCommand:(id)command params:(id)params;
- (BOOL)removeIdentity:(id)identity error:(id *)error;
- (BOOL)saveIdentity:(id)identity error:(id *)error;
- (BOOL)saveIdentityWithIDSDeviceID:(id)d message:(id)message error:(id *)error;
- (RPIdentityDaemon)init;
- (__SecKey)_sepGenerateSelfPrivateKey;
- (__SecKey)_sepLoadSelfPrivateKey;
- (id)_dedupeSameAccountDeviceIdentities:(id)identities;
- (id)_identitiesOfType:(int)type error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (id)getIdentitiesWithFlags:(unsigned int)flags;
- (id)identityOfSelfAndReturnError:(id *)error;
- (id)identityOfTemporarySelfAndReturnError:(id *)error;
- (id)resolveIdentitiesForBonjourDevice:(id)device typeFlags:(unsigned int)flags;
- (id)resolveIdentityForBonjourDevice:(id)device typeFlags:(unsigned int)flags;
- (id)resolveIdentityForNearFieldMessagePayload:(id)payload;
- (id)resolveIdentityForSignature:(id)signature data:(id)data typeFlags:(unsigned int)flags error:(id *)error;
- (id)resolveIdentityForTempAuthTagData:(id)data bluetoothAddressData:(id)addressData;
- (id)sameAccountDeviceIDs;
- (unint64_t)featureFlagsForIdentityMatchingIDSDeviceIdentifier:(id)identifier;
- (unsigned)_updateSelfIdentityPrivate:(id)private create:(BOOL)create;
- (unsigned)_updateSelfIdentityPublic:(id)public privateIdentity:(id)identity;
- (unsigned)resolveIdentityTypesForSignature:(id)signature data:(id)data typeFlags:(unsigned int)flags;
- (void)_activate;
- (void)_ensureStarted;
- (void)_ensureStopped;
- (void)_enumerateIdentitiesWithFlag:(unsigned int)flag usingBlock:(id)block;
- (void)_invalidate;
- (void)_invalidated;
- (void)_loadSelfIdentity:(BOOL)identity;
- (void)_loadTemporarySelfIdentity;
- (void)_postIdentitiesChangedNotification;
- (void)_pruneStaleAdHocPairedDeviceIdentities;
- (void)_removeSelfIdentityPublicWithPrivateIdentity:(id)identity;
- (void)_saveSelfIdentityPrivate:(id)private;
- (void)_saveSelfIdentityPublicWithPrivateIdentity:(id)identity force:(BOOL)force;
- (void)_sepRemoveSelfPrivateKey:(__SecKey *)key;
- (void)_triggerKeychainRefetch;
- (void)_update;
- (void)_updatePairedDeviceIdentities;
- (void)_updateSameAccountIdentities;
- (void)activate;
- (void)addOrUpdateAdHocPairedIdentity:(id)identity;
- (void)addSelfIdentityInfoToMessage:(id)message flags:(unsigned int)flags;
- (void)addSessionPairedIdentity:(id)identity;
- (void)addSharedHomeIdentityWithRPMessage:(id)message;
- (void)daemonInfoChanged:(unint64_t)changed;
- (void)getPairedIdentityWithCompletion:(id)completion;
- (void)getPairingIdentityFromHomeWithAccessory:(id)accessory completion:(id)completion;
- (void)invalidate;
- (void)isContactValidForIdentity:(id)identity completionBlock:(id)block;
- (void)prefsChanged;
- (void)regenerateSelfIdentity:(id)identity;
- (void)regenerateTemporarySelfIdentity;
- (void)removeAdHocPairedIdentityWithIdentifier:(id)identifier;
- (void)removeAllAdHocPairedIdentities;
- (void)removeSessionPairedIdentityWithIdentifier:(id)identifier;
- (void)resolvableAccessoriesUpdated:(id)updated;
- (void)setHomeKitIdentity:(id)identity;
- (void)updateSessionPairedIdentity:(id)identity;
@end

@implementation RPIdentityDaemon

+ (id)sharedIdentityDaemon
{
  if (qword_1001D6268 != -1)
  {
    sub_10000E0B8();
  }

  v3 = qword_1001D6260;

  return v3;
}

- (void)_pruneStaleAdHocPairedDeviceIdentities
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = +[NSDate now];
  if ([(NSMutableArray *)self->_adHocPairedDeviceIdentities count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSMutableArray *)self->_adHocPairedDeviceIdentities objectAtIndexedSubscript:v4];
      dateAdded = [v5 dateAdded];
      v7 = dateAdded;
      if (dateAdded)
      {
        v8 = [dateAdded dateByAddingTimeInterval:604800.0];
        v9 = [v8 earlierDate:v3];

        if (v9 == v8)
        {
          if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
          {
            sub_10011BCC0();
          }

          v13 = 0;
          [(RPIdentityDaemon *)self removeIdentity:v5 error:&v13];
          v10 = v13;
          if (v10 && dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
          {
            v11 = v5;
            v12 = v10;
            LogPrintF();
          }

          [(NSMutableArray *)self->_adHocPairedDeviceIdentities removeObject:v5, v11, v12];
          --v4;
        }
      }

      ++v4;
    }

    while (v4 < [(NSMutableArray *)self->_adHocPairedDeviceIdentities count]);
  }
}

- (void)_updateSameAccountIdentities
{
  selfCopy = self;
  v60 = 0;
  v3 = [(RPIdentityDaemon *)self _identitiesOfType:2 error:&v60];
  v4 = v60;
  if (v4)
  {
    if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011C050();
    }

    goto LABEL_83;
  }

  v38 = v3;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v5 = selfCopy->_sameAccountDeviceIdentities;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v57;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v57 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v56 + 1) + 8 * i) setPresent:0];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v56 objects:v64 count:16];
    }

    while (v7);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v38;
  v43 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (v43)
  {
    v40 = 0;
    v41 = 0;
    v42 = *v53;
    do
    {
      for (j = 0; j != v43; j = j + 1)
      {
        if (*v53 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v52 + 1) + 8 * j);
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v12 = selfCopy;
        v13 = selfCopy->_sameAccountDeviceIdentities;
        v14 = [(NSArray *)v13 countByEnumeratingWithState:&v48 objects:v62 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v49;
          while (2)
          {
            for (k = 0; k != v15; k = k + 1)
            {
              if (*v49 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v48 + 1) + 8 * k);
              v19 = [v18 compareWithRPIdentity:v11];
              if ((v19 & 0x220) == 0)
              {
                v20 = v19;
                [v18 setPresent:1];
                if (v20 && (v40 = (v40 + 1), dword_1001D3F50 <= 30))
                {
                  selfCopy = v12;
                  if (dword_1001D3F50 != -1 || _LogCategory_Initialize())
                  {
                    sub_10011C090();
                  }
                }

                else
                {
                  selfCopy = v12;
                }

                goto LABEL_38;
              }
            }

            v15 = [(NSArray *)v13 countByEnumeratingWithState:&v48 objects:v62 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v41 = (v41 + 1);
        if (dword_1001D3F50 > 30)
        {
          selfCopy = v12;
        }

        else
        {
          selfCopy = v12;
          if (dword_1001D3F50 != -1 || _LogCategory_Initialize())
          {
            sub_10011C0D0();
          }
        }

LABEL_38:
        ;
      }

      v43 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
    }

    while (v43);
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v21 = selfCopy->_sameAccountDeviceIdentities;
  v22 = [(NSArray *)v21 countByEnumeratingWithState:&v44 objects:v61 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = 0;
    v25 = *v45;
    do
    {
      v26 = 0;
      do
      {
        if (*v45 != v25)
        {
          objc_enumerationMutation(v21);
        }

        if (([*(*(&v44 + 1) + 8 * v26) present] & 1) == 0)
        {
          v24 = (v24 + 1);
          if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
          {
            sub_10011C110();
          }
        }

        v26 = v26 + 1;
      }

      while (v23 != v26);
      v27 = [(NSArray *)v21 countByEnumeratingWithState:&v44 objects:v61 count:16];
      v23 = v27;
    }

    while (v27);
  }

  else
  {
    v24 = 0;
  }

  v30 = v41 > 0 || v40 > 0 || v24 > 0;
  v3 = v38;
  if (!selfCopy->_sameAccountDeviceIdentities)
  {
    v4 = 0;
    if (dword_1001D3F50 > 30 || dword_1001D3F50 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_81;
    }

LABEL_73:
    v36 = v40;
    v37 = v24;
    v34 = [obj count];
    v35 = v41;
    LogPrintF();
    goto LABEL_81;
  }

  v4 = 0;
  if (!v30)
  {
    if (dword_1001D3F50 <= 10 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011C150(obj);
    }

    goto LABEL_81;
  }

  if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_73;
  }

LABEL_81:
  v31 = [(RPIdentityDaemon *)selfCopy _dedupeSameAccountDeviceIdentities:obj, v34, v35, v36, v37];
  sameAccountDeviceIdentities = selfCopy->_sameAccountDeviceIdentities;
  selfCopy->_sameAccountDeviceIdentities = v31;

  if (v30)
  {
    v33 = +[RPDaemon sharedDaemon];
    [v33 postDaemonInfoChanges:8];

    [(RPIdentityDaemon *)selfCopy _postIdentitiesChangedNotification];
  }

LABEL_83:
}

- (RPIdentityDaemon)init
{
  v16.receiver = self;
  v16.super_class = RPIdentityDaemon;
  v2 = [(RPIdentityDaemon *)&v16 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    *&v3->_homeViewChangeToken = -1;
    v3->_pairedDevicesNotifier = -1;
    v3->_userIdentitiesChanged = 1;
    v4 = objc_alloc(off_1001D3FC0[0]());
    dispatchQueue = v3->_dispatchQueue;
    v6 = off_1001D3FC8();
    v17 = v6;
    v18 = &__kCFBooleanTrue;
    v7 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v8 = [v4 initWithDelegate:0 queue:dispatchQueue options:v7];
    peripheralManager = v3->_peripheralManager;
    v3->_peripheralManager = v8;

    v10 = +[NSUUID UUID];
    sessionPairingIdentifier = v3->_sessionPairingIdentifier;
    v3->_sessionPairingIdentifier = v10;

    v12 = +[NSUUID UUID];
    adHocPairingIdentifier = v3->_adHocPairingIdentifier;
    v3->_adHocPairingIdentifier = v12;

    v14 = v3;
  }

  return v3;
}

- (id)descriptionWithLevel:(int)level
{
  v180[1] = 0;
  NSAppendPrintF();
  v4 = 0;
  v180[0] = 0;
  v5 = [(RPIdentityDaemon *)self identityOfSelfAndReturnError:v180];
  v6 = v180[0];
  v7 = v6;
  v124 = v5;
  if (v5)
  {
    v179[2] = v4;
    v103 = CUDescriptionWithLevel();
    NSAppendPrintF();
    v8 = v4;

    v4 = v103;
  }

  else
  {
    v179[1] = v4;
    v103 = v6;
    NSAppendPrintF();
    v8 = v4;
  }

  v179[0] = v7;
  v103 = [(RPIdentityDaemon *)self identityOfTemporarySelfAndReturnError:v179, v103];
  v10 = v179[0];

  v123 = v103;
  if (v103)
  {
    v178 = v8;
    v104 = CUDescriptionWithLevel();
    NSAppendPrintF();
    v11 = v8;

    v8 = v104;
  }

  else
  {
    v177 = v8;
    v104 = v10;
    NSAppendPrintF();
    v11 = v8;
  }

  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  selfCopy = self;
  v12 = self->_sameAccountDeviceIdentities;
  v104 = [(NSArray *)v12 countByEnumeratingWithState:&v173 objects:v190 count:16, v104];
  if (v104)
  {
    v105 = v104;
    v15 = *v174;
    do
    {
      v16 = 0;
      v17 = v11;
      do
      {
        if (*v174 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v173 + 1) + 8 * v16);
        v172[1] = v17;
        v105 = CUDescriptionWithLevel();
        NSAppendPrintF();
        v11 = v17;

        v16 = v16 + 1;
        v17 = v11;
      }

      while (v105 != v16);
      v105 = [(NSArray *)v12 countByEnumeratingWithState:&v173 objects:v190 count:16, v105];
    }

    while (v105);
  }

  v172[0] = v10;
  selfCopy8 = self;
  v20 = [(RPIdentityDaemon *)self identitiesOfType:3 error:v172];
  v21 = v172[0];

  v122 = v20;
  if (v20)
  {
    v170 = 0u;
    v171 = 0u;
    v168 = 0u;
    v169 = 0u;
    v22 = v20;
    v23 = [v22 countByEnumeratingWithState:&v168 objects:v189 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v169;
      do
      {
        v26 = 0;
        v27 = v11;
        do
        {
          if (*v169 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v28 = *(*(&v168 + 1) + 8 * v26);
          v167[2] = v27;
          v106 = CUDescriptionWithLevel();
          NSAppendPrintF();
          v11 = v27;

          v26 = v26 + 1;
          v27 = v11;
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v168 objects:v189 count:{16, v106}];
      }

      while (v24);
      selfCopy8 = self;
    }
  }

  else
  {
    v167[1] = v11;
    NSAppendPrintF();
    v22 = v11;
    v11 = v11;
  }

  v167[0] = v21;
  v29 = [(RPIdentityDaemon *)selfCopy8 identitiesOfType:4 error:v167];
  v30 = v167[0];

  v121 = v29;
  if (v29)
  {
    v165 = 0u;
    v166 = 0u;
    v163 = 0u;
    v164 = 0u;
    v31 = v29;
    v32 = [v31 countByEnumeratingWithState:&v163 objects:v188 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v164;
      do
      {
        v35 = 0;
        v36 = v11;
        do
        {
          if (*v164 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v37 = *(*(&v163 + 1) + 8 * v35);
          v162[2] = v36;
          v107 = CUDescriptionWithLevel();
          NSAppendPrintF();
          v11 = v36;

          v35 = v35 + 1;
          v36 = v11;
        }

        while (v33 != v35);
        v33 = [v31 countByEnumeratingWithState:&v163 objects:v188 count:{16, v107}];
      }

      while (v33);
      selfCopy8 = self;
    }
  }

  else
  {
    v162[1] = v11;
    NSAppendPrintF();
    v31 = v11;
    v11 = v11;
  }

  v162[0] = v30;
  v38 = [(RPIdentityDaemon *)selfCopy8 identitiesOfType:5 error:v162];
  v39 = v162[0];

  v120 = v38;
  if (v38)
  {
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v40 = v38;
    v41 = [v40 countByEnumeratingWithState:&v158 objects:v187 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v159;
      do
      {
        v44 = 0;
        v45 = v11;
        do
        {
          if (*v159 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v46 = *(*(&v158 + 1) + 8 * v44);
          v157[2] = v45;
          v108 = CUDescriptionWithLevel();
          NSAppendPrintF();
          v11 = v45;

          v44 = v44 + 1;
          v45 = v11;
        }

        while (v42 != v44);
        v42 = [v40 countByEnumeratingWithState:&v158 objects:v187 count:{16, v108}];
      }

      while (v42);
      selfCopy8 = self;
    }
  }

  else
  {
    v157[1] = v11;
    NSAppendPrintF();
    v40 = v11;
    v11 = v11;
  }

  v157[0] = v39;
  v47 = [(RPIdentityDaemon *)selfCopy8 identitiesOfType:6 error:v157];
  v48 = v157[0];

  v119 = v47;
  if (v47)
  {
    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    v49 = v47;
    v50 = [v49 countByEnumeratingWithState:&v153 objects:v186 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v154;
      do
      {
        v53 = 0;
        v54 = v11;
        do
        {
          if (*v154 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v55 = *(*(&v153 + 1) + 8 * v53);
          v152[2] = v54;
          v109 = CUDescriptionWithLevel();
          NSAppendPrintF();
          v11 = v54;

          v53 = v53 + 1;
          v54 = v11;
        }

        while (v51 != v53);
        v51 = [v49 countByEnumeratingWithState:&v153 objects:v186 count:{16, v109}];
      }

      while (v51);
      selfCopy8 = self;
    }
  }

  else
  {
    v152[1] = v11;
    NSAppendPrintF();
    v49 = v11;
    v11 = v11;
  }

  v152[0] = v48;
  v56 = [(RPIdentityDaemon *)selfCopy8 identitiesOfType:8 error:v152];
  v57 = v152[0];

  v118 = v56;
  if (v56)
  {
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v58 = v56;
    v59 = [v58 countByEnumeratingWithState:&v148 objects:v185 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v149;
      do
      {
        v62 = 0;
        v63 = v11;
        do
        {
          if (*v149 != v61)
          {
            objc_enumerationMutation(v58);
          }

          v64 = *(*(&v148 + 1) + 8 * v62);
          v147[2] = v63;
          v110 = CUDescriptionWithLevel();
          NSAppendPrintF();
          v11 = v63;

          v62 = v62 + 1;
          v63 = v11;
        }

        while (v60 != v62);
        v60 = [v58 countByEnumeratingWithState:&v148 objects:v185 count:{16, v110}];
      }

      while (v60);
      selfCopy8 = self;
    }
  }

  else
  {
    v147[1] = v11;
    NSAppendPrintF();
    v58 = v11;
    v11 = v11;
  }

  v147[0] = v57;
  v65 = [(RPIdentityDaemon *)selfCopy8 identitiesOfType:9 error:v147];
  v66 = v147[0];

  v117 = v65;
  if (v65)
  {
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v67 = v65;
    v68 = [v67 countByEnumeratingWithState:&v143 objects:v184 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = *v144;
      do
      {
        v71 = 0;
        v72 = v11;
        do
        {
          if (*v144 != v70)
          {
            objc_enumerationMutation(v67);
          }

          v73 = *(*(&v143 + 1) + 8 * v71);
          v142[2] = v72;
          v111 = CUDescriptionWithLevel();
          NSAppendPrintF();
          v11 = v72;

          v71 = v71 + 1;
          v72 = v11;
        }

        while (v69 != v71);
        v69 = [v67 countByEnumeratingWithState:&v143 objects:v184 count:{16, v111}];
      }

      while (v69);
      selfCopy8 = self;
    }
  }

  else
  {
    v142[1] = v11;
    NSAppendPrintF();
    v67 = v11;
    v11 = v11;
  }

  v142[0] = v66;
  v74 = [(RPIdentityDaemon *)selfCopy8 identitiesOfType:12 error:v142];
  v75 = v142[0];

  v125 = v74;
  if (v74)
  {
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v76 = v74;
    v77 = [v76 countByEnumeratingWithState:&v138 objects:v183 count:16];
    if (v77)
    {
      v78 = v77;
      v79 = *v139;
      do
      {
        v80 = 0;
        v81 = v11;
        do
        {
          if (*v139 != v79)
          {
            objc_enumerationMutation(v76);
          }

          v82 = *(*(&v138 + 1) + 8 * v80);
          v137[2] = v81;
          v112 = CUDescriptionWithLevel();
          NSAppendPrintF();
          v11 = v81;

          v80 = v80 + 1;
          v81 = v11;
        }

        while (v78 != v80);
        v78 = [v76 countByEnumeratingWithState:&v138 objects:v183 count:{16, v112}];
      }

      while (v78);
      v74 = v125;
      selfCopy8 = selfCopy;
    }
  }

  else
  {
    v137[1] = v11;
    NSAppendPrintF();
    v76 = v11;
    v11 = v11;
  }

  v137[0] = v75;
  v83 = [(RPIdentityDaemon *)selfCopy8 identitiesOfType:13 error:v137];
  v84 = v137[0];

  if (v83)
  {
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v85 = v83;
    v86 = [v85 countByEnumeratingWithState:&v133 objects:v182 count:16];
    if (v86)
    {
      v87 = v86;
      v115 = v83;
      v88 = *v134;
      do
      {
        v89 = 0;
        v90 = v11;
        do
        {
          if (*v134 != v88)
          {
            objc_enumerationMutation(v85);
          }

          v91 = *(*(&v133 + 1) + 8 * v89);
          v132[2] = v90;
          v113 = CUDescriptionWithLevel();
          NSAppendPrintF();
          v11 = v90;

          v89 = v89 + 1;
          v90 = v11;
        }

        while (v87 != v89);
        v87 = [v85 countByEnumeratingWithState:&v133 objects:v182 count:{16, v113}];
      }

      while (v87);
      v74 = v125;
      selfCopy8 = selfCopy;
      v83 = v115;
    }
  }

  else
  {
    v132[1] = v11;
    NSAppendPrintF();
    v85 = v11;
    v11 = v11;
  }

  v132[0] = v84;
  v92 = [(RPIdentityDaemon *)selfCopy8 identitiesOfType:15 error:v132];
  v93 = v132[0];

  if (v92)
  {
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v94 = v92;
    v95 = [v94 countByEnumeratingWithState:&v128 objects:v181 count:16];
    if (v95)
    {
      v96 = v95;
      v127 = v93;
      v116 = v83;
      v97 = *v129;
      do
      {
        v98 = 0;
        v99 = v11;
        do
        {
          if (*v129 != v97)
          {
            objc_enumerationMutation(v94);
          }

          v100 = *(*(&v128 + 1) + 8 * v98);
          v114 = CUDescriptionWithLevel();
          NSAppendPrintF();
          v11 = v99;

          v98 = v98 + 1;
          v99 = v11;
        }

        while (v96 != v98);
        v96 = [v94 countByEnumeratingWithState:&v128 objects:v181 count:{16, v114}];
      }

      while (v96);
      v74 = v125;
      v93 = v127;
      v83 = v116;
    }
  }

  else
  {
    NSAppendPrintF();
    v94 = v11;
    v11 = v11;
  }

  v101 = v11;
  return v11;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000680DC;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011AB64();
  }

  if (!self->_systemMonitor)
  {
    v3 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v3;

    [(CUSystemMonitor *)self->_systemMonitor setDispatchQueue:self->_dispatchQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100068214;
    v7[3] = &unk_1001AA970;
    v7[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setFirstUnlockHandler:v7];
    v5 = self->_systemMonitor;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10006821C;
    v6[3] = &unk_1001AA970;
    v6[4] = self;
    [(CUSystemMonitor *)v5 activateWithCompletion:v6];
  }

  [(RPIdentityDaemon *)self prefsChanged];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100068298;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled)
  {
    v9 = v2;
    self->_invalidateCalled = 1;
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011AB80();
    }

    [(CUSystemMonitor *)self->_systemMonitor invalidate:v3];
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = 0;

    peripheralManager = self->_peripheralManager;
    self->_peripheralManager = 0;

    [(RPIdentityDaemon *)self _ensureStopped];

    [(RPIdentityDaemon *)self _invalidated];
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    self->_invalidateDone = 1;
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011AB9C();
    }
  }
}

- (void)daemonInfoChanged:(unint64_t)changed
{
  changedCopy = changed;
  if ((changed & 0x10) != 0)
  {
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011ABB8();
    }

    [(RPIdentityDaemon *)self _ensureStopped];
    v5 = +[RPDaemon sharedDaemon];
    [v5 postDaemonInfoChanges:8];

    notify_post("com.apple.rapport.identitiesChanged");
    [(RPIdentityDaemon *)self _update];
    if ((changedCopy & 0x40) == 0)
    {
LABEL_3:
      if ((changedCopy & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_14:
      [(RPIdentityDaemon *)self _updateSameAccountIdentities];
      if ((changedCopy & 0x20000) == 0)
      {
        return;
      }

      goto LABEL_15;
    }
  }

  else if ((changed & 0x40) == 0)
  {
    goto LABEL_3;
  }

  if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011ABD4();
  }

  selfIdentityCache = self->_selfIdentityCache;
  self->_selfIdentityCache = 0;

  [(RPIdentityDaemon *)self _loadSelfIdentity:0];
  [(RPIdentityDaemon *)self _updateSameAccountIdentities];
  if (changedCopy)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((changedCopy & 0x20000) == 0)
  {
    return;
  }

LABEL_15:
  idsDeviceID = [(RPIdentity *)self->_selfIdentityCache idsDeviceID];

  if (idsDeviceID)
  {
    v8 = self->_selfIdentityCache;

    [(RPIdentityDaemon *)self _saveSelfIdentityPublicWithPrivateIdentity:v8 force:0];
  }
}

- (BOOL)diagnosticCommand:(id)command params:(id)params
{
  commandCopy = command;
  paramsCopy = params;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([commandCopy isEqual:@"KeychainRefetch"])
  {
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011ACA0();
    }

    [(RPIdentityDaemon *)self _triggerKeychainRefetch];
    goto LABEL_29;
  }

  if ([commandCopy isEqual:@"SelfIdentityLoad"])
  {
    [(RPIdentityDaemon *)self _loadSelfIdentity:0];
LABEL_29:
    LOBYTE(v8) = 1;
    goto LABEL_30;
  }

  if ([commandCopy isEqual:@"SelfIdentitySave"])
  {
    v8 = self->_selfIdentityCache;
    if (v8)
    {
      if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
      {
        sub_10011AC68();
      }

      [(RPIdentityDaemon *)self _saveSelfIdentityPrivate:v8];
      [(RPIdentityDaemon *)self _saveSelfIdentityPublicWithPrivateIdentity:v8 force:1];
    }

    else if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011AC84();
    }

    goto LABEL_28;
  }

  if ([commandCopy isEqual:@"SelfIdentityRemove"])
  {
    v8 = self->_selfIdentityCache;
    if (v8)
    {
      if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
      {
        sub_10011AC4C();
      }

      [(RPIdentityDaemon *)self _removeSelfIdentityPublicWithPrivateIdentity:v8];
    }

    goto LABEL_28;
  }

  if (![commandCopy isEqual:@"SelfIdentityRotate"])
  {
    if ([commandCopy isEqual:@"SameAccountIdentityRemove"])
    {
      v8 = [paramsCopy objectForKey:@"idsIdentifier"];
      if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
      {
        sub_10011ABF0();
        if (!v8)
        {
          goto LABEL_30;
        }
      }

      else if (!v8)
      {
        goto LABEL_30;
      }

      v13 = 0;
      v10 = [(RPIdentityDaemon *)self _removeSameAccountIdentityWithIDSIdentifier:v8 error:&v13];
      v11 = v13;
      v12 = v11;
      if (v10)
      {

LABEL_28:
        goto LABEL_29;
      }

      if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    LOBYTE(v8) = 0;
    goto LABEL_30;
  }

  if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011AC30();
  }

  LOBYTE(v8) = 1;
  [(RPIdentityDaemon *)self _loadSelfIdentity:1];
LABEL_30:

  return v8;
}

- (void)prefsChanged
{
  v3 = CFPrefs_GetInt64() != 0;
  if (self->_prefFamilyResolve != v3)
  {
    if (dword_1001D3F50 <= 40 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011ACBC();
    }

    self->_prefFamilyResolve = v3;
  }

  v4 = CFPrefs_GetInt64() != 0;
  if (self->_prefFriendResolve != v4)
  {
    if (dword_1001D3F50 <= 40 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011AD14();
    }

    self->_prefFriendResolve = v4;
  }

  v5 = CFPrefs_GetInt64() != 0;
  if (self->_prefOwnerResolve != v5)
  {
    if (dword_1001D3F50 <= 40 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011AD6C();
    }

    self->_prefOwnerResolve = v5;
  }

  v6 = CFPrefs_GetInt64() != 0;
  if (self->_prefPairedResolve != v6)
  {
    if (dword_1001D3F50 <= 40 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011ADC4();
    }

    self->_prefPairedResolve = v6;
  }

  v7 = CFPrefs_GetInt64() != 0;
  if (self->_prefSharedHomeResolve != v7)
  {
    if (dword_1001D3F50 <= 40 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011AE1C();
    }

    self->_prefSharedHomeResolve = v7;
  }

  [(RPIdentityDaemon *)self _update];
}

- (void)regenerateSelfIdentity:(id)identity
{
  identityCopy = identity;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011AE74();
  }

  [(RPIdentityDaemon *)self _loadSelfIdentity:1];
  [(RPIdentityDaemon *)self removeAllAdHocPairedIdentities];
}

- (void)_update
{
  [(RPIdentityDaemon *)self _ensureStarted];

  [(RPIdentityDaemon *)self _pruneStaleAdHocPairedDeviceIdentities];
}

- (void)setHomeKitIdentity:(id)identity
{
  identityCopy = identity;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  homeKitIdentity = self->_homeKitIdentity;
  self->_homeKitIdentity = identityCopy;
}

- (void)resolvableAccessoriesUpdated:(id)updated
{
  updatedCopy = updated;
  selfCopy = self;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v42 = objc_alloc_init(NSMutableArray);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v5 = updatedCopy;
  v6 = [v5 countByEnumeratingWithState:&v57 objects:v63 count:16];
  obj = v5;
  if (v6)
  {
    v7 = v6;
    v8 = *v58;
    v43 = *v58;
    do
    {
      v9 = 0;
      v44 = v7;
      do
      {
        if (*v58 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v57 + 1) + 8 * v9);
        uniqueIdentifier = [v10 uniqueIdentifier];
        uUIDString = [uniqueIdentifier UUIDString];

        if (uUIDString)
        {
          device = [v10 device];
          rapportIRK = [device rapportIRK];
          data = [rapportIRK data];

          if ([data length])
          {
            home = [v10 home];
            currentUser = [home currentUser];
            if (!currentUser || ([home homeAccessControlForUser:currentUser], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isOwner"), v18, (v19 & 1) == 0))
            {
              v46 = currentUser;
              v47 = data;
              v48 = uUIDString;
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              users = [home users];
              uniqueIdentifier2 = [users countByEnumeratingWithState:&v53 objects:v62 count:16];
              if (uniqueIdentifier2)
              {
                v22 = *v54;
LABEL_12:
                v23 = 0;
                while (1)
                {
                  if (*v54 != v22)
                  {
                    objc_enumerationMutation(users);
                  }

                  v24 = *(*(&v53 + 1) + 8 * v23);
                  v25 = [home homeAccessControlForUser:v24];
                  isOwner = [v25 isOwner];

                  if (isOwner)
                  {
                    break;
                  }

                  if (uniqueIdentifier2 == ++v23)
                  {
                    uniqueIdentifier2 = [users countByEnumeratingWithState:&v53 objects:v62 count:16];
                    if (uniqueIdentifier2)
                    {
                      goto LABEL_12;
                    }

                    userID = 0;
                    v8 = v43;
                    v7 = v44;
                    goto LABEL_29;
                  }
                }

                userID = [v24 userID];
                uniqueIdentifier2 = [v24 uniqueIdentifier];

                if (!userID)
                {
                  v8 = v43;
                  v7 = v44;
                  goto LABEL_31;
                }

                users = objc_alloc_init(RPIdentity);
                [users setAccountID:userID];
                [users setDeviceIRKData:v47];
                [users setHomeKitUserIdentifier:uniqueIdentifier2];
                [users setIdentifier:v48];
                [users setIdsDeviceID:v48];
                name = [v10 name];
                [users setName:name];

                [users setType:9];
                homePodVariant = [v10 homePodVariant];
                v30 = @"AudioAccessory1,1";
                v8 = v43;
                v7 = v44;
                if (homePodVariant == 1 || (v31 = [v10 homePodVariant], v30 = @"AudioAccessory5,1", v31 == 2) || (v32 = objc_msgSend(v10, "homePodVariant", @"AudioAccessory5,1"), v30 = @"AudioAccessory6,1", v32 == 3))
                {
                  [users setModel:v30];
                }

                [v42 addObject:users];
                if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
                {
                  sub_10011AEB4();
                }
              }

              else
              {
                userID = 0;
              }

LABEL_29:

LABEL_31:
              data = v47;
              uUIDString = v48;
              currentUser = v46;
            }
          }
        }

        v9 = v9 + 1;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v7);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  p_isa = &selfCopy->super.isa;
  v34 = selfCopy->_sharedHomeExtraDeviceIdentities;
  v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v50;
    do
    {
      v38 = 0;
      do
      {
        if (*v50 != v37)
        {
          objc_enumerationMutation(v34);
        }

        [v42 addObject:{*(*(&v49 + 1) + 8 * v38), selfCopy}];
        if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
        {
          sub_10011AEF4();
        }

        v38 = v38 + 1;
      }

      while (v36 != v38);
      v39 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v49 objects:v61 count:16];
      v36 = v39;
    }

    while (v39);
  }

  objc_storeStrong(p_isa + 11, v42);
  if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011AF34(v42);
  }

  v40 = +[RPDaemon sharedDaemon];
  [v40 postDaemonInfoChanges:512];

  [p_isa _postIdentitiesChangedNotification];
}

- (id)resolveIdentitiesForBonjourDevice:(id)device typeFlags:(unsigned int)flags
{
  deviceCopy = device;
  v7 = 0;
  if (flags)
  {
    do
    {
      v8 = flags & -flags;
      if (!v8)
      {
        break;
      }

      v9 = [(RPIdentityDaemon *)self resolveIdentityForBonjourDevice:deviceCopy typeFlags:flags & -flags];
      if (v9)
      {
        if (!v7)
        {
          v7 = objc_alloc_init(NSMutableArray);
        }

        [v7 addObject:v9];
      }

      v10 = v8 == flags;
      flags ^= v8;
    }

    while (!v10);
  }

  return v7;
}

- (id)resolveIdentityForBonjourDevice:(id)device typeFlags:(unsigned int)flags
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) != 0)
  {
    txtDictionary = [deviceCopy txtDictionary];
    CFDictionaryGetHardwareAddress();
    CFDictionaryGetData();
    if (dword_1001D3F50 <= 20 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011AFF4();
    }
  }

  else if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011AF78();
  }

  return 0;
}

- (id)resolveIdentityForSignature:(id)signature data:(id)data typeFlags:(unsigned int)flags error:(id *)error
{
  flagsCopy = flags;
  signatureCopy = signature;
  dataCopy = data;
  if ((flagsCopy & 2) != 0 && self->_prefOwnerResolve)
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v12 = self->_sameAccountDeviceIdentities;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v70 objects:v80 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v71;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v71 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v70 + 1) + 8 * i);
          if ([v17 verifySignature:signatureCopy data:dataCopy error:0])
          {
            if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
            {
              sub_10011B370();
            }

LABEL_107:
            v44 = v17;

            goto LABEL_108;
          }
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v70 objects:v80 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }
  }

  if ((flagsCopy & 8) != 0 && self->_prefFamilyResolve)
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v12 = [(RPIdentityDaemon *)self identitiesOfType:4 error:0];
    v18 = [(NSArray *)v12 countByEnumeratingWithState:&v66 objects:v79 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v67;
      while (2)
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v67 != v20)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v66 + 1) + 8 * j);
          if ([v17 verifySignature:signatureCopy data:dataCopy error:0])
          {
            if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
            {
              sub_10011B3B0();
            }

            goto LABEL_107;
          }
        }

        v19 = [(NSArray *)v12 countByEnumeratingWithState:&v66 objects:v79 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }
  }

  if ((flagsCopy & 0x20) != 0 && self->_prefFriendResolve)
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v12 = [(RPIdentityDaemon *)self identitiesOfType:6 error:0];
    v22 = [(NSArray *)v12 countByEnumeratingWithState:&v62 objects:v78 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v63;
      while (2)
      {
        for (k = 0; k != v23; k = k + 1)
        {
          if (*v63 != v24)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v62 + 1) + 8 * k);
          if ([v17 verifySignature:signatureCopy data:dataCopy error:0])
          {
            if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
            {
              sub_10011B3F0();
            }

            goto LABEL_107;
          }
        }

        v23 = [(NSArray *)v12 countByEnumeratingWithState:&v62 objects:v78 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }
  }

  if ((flagsCopy & 0x400) != 0)
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v12 = [(RPIdentityDaemon *)self identitiesOfType:12 error:0];
    v26 = [(NSArray *)v12 countByEnumeratingWithState:&v58 objects:v77 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v59;
      while (2)
      {
        for (m = 0; m != v27; m = m + 1)
        {
          if (*v59 != v28)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v58 + 1) + 8 * m);
          if ([v17 verifySignature:signatureCopy data:dataCopy error:0])
          {
            if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
            {
              sub_10011B430();
            }

            goto LABEL_107;
          }
        }

        v27 = [(NSArray *)v12 countByEnumeratingWithState:&v58 objects:v77 count:16];
        if (v27)
        {
          continue;
        }

        break;
      }
    }
  }

  if ((flagsCopy & 0x80) != 0 && self->_prefPairedResolve)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v12 = [(RPIdentityDaemon *)self identitiesOfType:8 error:0];
    v30 = [(NSArray *)v12 countByEnumeratingWithState:&v54 objects:v76 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v55;
      while (2)
      {
        for (n = 0; n != v31; n = n + 1)
        {
          if (*v55 != v32)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v54 + 1) + 8 * n);
          if ([v17 verifySignature:signatureCopy data:dataCopy error:0])
          {
            if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
            {
              sub_10011B470();
            }

            goto LABEL_107;
          }
        }

        v31 = [(NSArray *)v12 countByEnumeratingWithState:&v54 objects:v76 count:16];
        if (v31)
        {
          continue;
        }

        break;
      }
    }
  }

  if ((flagsCopy & 0x800) != 0)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v12 = [(RPIdentityDaemon *)self identitiesOfType:13 error:0];
    v34 = [(NSArray *)v12 countByEnumeratingWithState:&v50 objects:v75 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v51;
      while (2)
      {
        for (ii = 0; ii != v35; ii = ii + 1)
        {
          if (*v51 != v36)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v50 + 1) + 8 * ii);
          if ([v17 verifySignature:signatureCopy data:dataCopy error:0])
          {
            if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
            {
              sub_10011B4B0();
            }

            goto LABEL_107;
          }
        }

        v35 = [(NSArray *)v12 countByEnumeratingWithState:&v50 objects:v75 count:16];
        if (v35)
        {
          continue;
        }

        break;
      }
    }
  }

  if ((flagsCopy & 0x4000) != 0)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v38 = [(RPIdentityDaemon *)self identitiesOfType:15 error:0, 0];
    v39 = [v38 countByEnumeratingWithState:&v46 objects:v74 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v47;
      while (2)
      {
        for (jj = 0; jj != v40; jj = jj + 1)
        {
          if (*v47 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v46 + 1) + 8 * jj);
          if ([v43 verifySignature:signatureCopy data:dataCopy error:0])
          {
            if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
            {
              sub_10011B4F0();
            }

            v44 = v43;

            goto LABEL_108;
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v46 objects:v74 count:16];
        if (v40)
        {
          continue;
        }

        break;
      }
    }
  }

  if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011B530();
    if (error)
    {
      goto LABEL_79;
    }
  }

  else if (error)
  {
LABEL_79:
    RPErrorF();
    *error = v44 = 0;
    goto LABEL_108;
  }

  v44 = 0;
LABEL_108:

  return v44;
}

- (unsigned)resolveIdentityTypesForSignature:(id)signature data:(id)data typeFlags:(unsigned int)flags
{
  flagsCopy = flags;
  signatureCopy = signature;
  dataCopy = data;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ((flagsCopy & 2) == 0 || !self->_prefOwnerResolve)
  {
    LODWORD(v11) = 0;
    if ((flagsCopy & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v10 = self->_sameAccountDeviceIdentities;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v62 objects:v71 count:16];
  if (v11)
  {
    v12 = *v63;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v63 != v12)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v62 + 1) + 8 * i) verifySignature:signatureCopy data:dataCopy error:0])
        {
          LODWORD(v11) = 2;
          goto LABEL_15;
        }
      }

      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v62 objects:v71 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  if ((flagsCopy & 8) != 0)
  {
LABEL_16:
    if (self->_prefFamilyResolve)
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v14 = [(RPIdentityDaemon *)self identitiesOfType:4 error:0];
      v15 = [v14 countByEnumeratingWithState:&v58 objects:v70 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v59;
        while (2)
        {
          for (j = 0; j != v16; j = j + 1)
          {
            if (*v59 != v17)
            {
              objc_enumerationMutation(v14);
            }

            if ([*(*(&v58 + 1) + 8 * j) verifySignature:signatureCopy data:dataCopy error:0])
            {
              LODWORD(v11) = v11 | 8;
              goto LABEL_27;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v58 objects:v70 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

LABEL_27:
    }
  }

LABEL_28:
  if ((flagsCopy & 0x20) != 0 && self->_prefFriendResolve)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v19 = [(RPIdentityDaemon *)self identitiesOfType:6 error:0];
    v20 = [v19 countByEnumeratingWithState:&v54 objects:v69 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v55;
      while (2)
      {
        for (k = 0; k != v21; k = k + 1)
        {
          if (*v55 != v22)
          {
            objc_enumerationMutation(v19);
          }

          if ([*(*(&v54 + 1) + 8 * k) verifySignature:signatureCopy data:dataCopy error:0])
          {
            LODWORD(v11) = v11 | 0x20;
            goto LABEL_40;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v54 objects:v69 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_40:
  }

  if ((flagsCopy & 0x400) != 0)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v24 = [(RPIdentityDaemon *)self identitiesOfType:12 error:0];
    v25 = [v24 countByEnumeratingWithState:&v50 objects:v68 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v51;
      while (2)
      {
        for (m = 0; m != v26; m = m + 1)
        {
          if (*v51 != v27)
          {
            objc_enumerationMutation(v24);
          }

          if ([*(*(&v50 + 1) + 8 * m) verifySignature:signatureCopy data:dataCopy error:0])
          {
            LODWORD(v11) = v11 | 0x400;
            goto LABEL_55;
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v50 objects:v68 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

LABEL_55:

    if ((flagsCopy & 0x800) == 0)
    {
LABEL_43:
      if ((flagsCopy & 0x4000) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_67;
    }
  }

  else if ((flagsCopy & 0x800) == 0)
  {
    goto LABEL_43;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v29 = [(RPIdentityDaemon *)self identitiesOfType:13 error:0];
  v30 = [v29 countByEnumeratingWithState:&v46 objects:v67 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v47;
    while (2)
    {
      for (n = 0; n != v31; n = n + 1)
      {
        if (*v47 != v32)
        {
          objc_enumerationMutation(v29);
        }

        if ([*(*(&v46 + 1) + 8 * n) verifySignature:signatureCopy data:dataCopy error:0])
        {
          LODWORD(v11) = v11 | 0x800;
          goto LABEL_66;
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v46 objects:v67 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

LABEL_66:

  if ((flagsCopy & 0x4000) != 0)
  {
LABEL_67:
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v34 = [(RPIdentityDaemon *)self identitiesOfType:15 error:0];
    v35 = [v34 countByEnumeratingWithState:&v42 objects:v66 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v43;
      while (2)
      {
        for (ii = 0; ii != v36; ii = ii + 1)
        {
          if (*v43 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v42 + 1) + 8 * ii);
          v41 = 0;
          if ([v39 verifySignature:signatureCopy data:dataCopy error:&v41])
          {
            LODWORD(v11) = v11 | 0x4000;
            goto LABEL_77;
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v42 objects:v66 count:16];
        if (v36)
        {
          continue;
        }

        break;
      }
    }

LABEL_77:
  }

LABEL_78:
  if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011B578();
  }

  return v11;
}

- (id)resolveIdentityForTempAuthTagData:(id)data bluetoothAddressData:(id)addressData
{
  dataCopy = data;
  addressDataCopy = addressData;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(RPIdentityDaemon *)self identitiesOfType:15 error:0, 0];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 verifyAuthTag:dataCopy data:addressDataCopy type:2 error:0])
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (id)resolveIdentityForNearFieldMessagePayload:(id)payload
{
  payloadCopy = payload;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1000029FC;
  v28 = sub_100003194;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000029FC;
  v22 = sub_100003194;
  v23 = +[NSMutableArray array];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10006AE6C;
  v14[3] = &unk_1001ACDF0;
  v5 = payloadCopy;
  v15 = v5;
  v16 = &v24;
  v17 = &v18;
  [(RPIdentityDaemon *)self _enumerateIdentitiesWithFlag:19882 usingBlock:v14];
  if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    v13 = v25[5];
    [v19[5] count];
    LogPrintF();
  }

  v6 = v25;
  v7 = v25[5];
  if (v7)
  {
    v8 = v7;
    v9 = v6[5];
    v6[5] = v8;
  }

  else
  {
    firstObject = [v19[5] firstObject];
    v9 = v25[5];
    v25[5] = firstObject;
  }

  v11 = v25[5];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v11;
}

- (void)isContactValidForIdentity:(id)identity completionBlock:(id)block
{
  identityCopy = identity;
  blockCopy = block;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if (identityCopy && ([identityCopy contactID], (v8 = objc_claimAutoreleasedReturnValue()) != 0) && (v9 = objc_msgSend(identityCopy, "type"), v8, v9 == 6))
  {
    contactID = [identityCopy contactID];
    v11 = objc_alloc_init(off_1001D3FD0[0]());
    [v11 setContactIdentifier:contactID];
    v12 = objc_alloc_init(off_1001D3FD8[0]());
    [v12 setDispatchQueue:self->_dispatchQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10006B3A8;
    v15[3] = &unk_1001ACE40;
    v13 = v12;
    v16 = v13;
    v17 = identityCopy;
    v14 = v11;
    v18 = v14;
    selfCopy = self;
    v21 = &v22;
    v20 = blockCopy;
    [v13 findContact:v14 completion:v15];
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, *(v23 + 24));
  }

  _Block_object_dispose(&v22, 8);
}

- (id)_identitiesOfType:(int)type error:(id *)error
{
  v6 = type - 1;
  if ((type - 1) >= 0xF || ((0x48FFu >> v6) & 1) == 0)
  {
    v11 = RPErrorF();
    if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011B81C();
      if (!error)
      {
        goto LABEL_12;
      }
    }

    else if (!error)
    {
LABEL_12:

      goto LABEL_13;
    }

    v12 = v11;
    *error = v11;
    goto LABEL_12;
  }

  v8 = off_1001ACFF0[v6];
  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) == 0)
  {
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011B85C();
      if (error)
      {
        goto LABEL_21;
      }
    }

    else if (error)
    {
LABEL_21:
      RPErrorF();
      *error = v13 = 0;
      goto LABEL_14;
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  if (type == 12 || type == 2)
  {
    v9 = +[RPCloudDaemon sharedCloudDaemon];
    idsDeviceIDSelf = [v9 idsDeviceIDSelf];

    v10 = 3;
  }

  else
  {
    idsDeviceIDSelf = 0;
    v10 = 1;
  }

  v15 = objc_alloc_init(CUKeychainItem);
  [v15 setAccessGroup:@"com.apple.rapport"];
  [v15 setSyncType:v10];
  [v15 setType:v8];
  v16 = objc_alloc_init(CUKeychainManager);
  v76 = 0;
  v17 = [v16 copyItemsMatchingItem:v15 flags:1 error:&v76];
  v18 = v76;
  v19 = v18;
  v74 = v17;
  if (v17 || [v18 code] == -25300)
  {
    v64 = v16;
    v65 = v15;
    v67 = objc_alloc_init(NSMutableArray);
    v20 = [v17 count];
    if (!v20)
    {
      v46 = v19;
      goto LABEL_81;
    }

    v21 = v20;
    selfCopy = self;
    typeCopy = type;
    v22 = 0;
    v73 = kSecAttrViewHintHome;
    while (1)
    {
      v23 = [v74 objectAtIndexedSubscript:{v22, v60, v61, v62, v63}];
      v24 = v23;
      v72 = v23;
      if (typeCopy != 2)
      {
        goto LABEL_49;
      }

      viewHint = [v23 viewHint];
      v26 = [viewHint isEqual:v73];

      if (v26)
      {
        goto LABEL_49;
      }

      v66 = v19;
      identifier = [v24 identifier];
      type = [v24 type];
      metadata = [v24 metadata];
      Int64Ranged = CFDictionaryGetInt64Ranged();

      v30 = 0;
      while (v22 == v30)
      {
LABEL_47:
        if (v21 == ++v30)
        {

          v24 = v72;
          v19 = v66;
          goto LABEL_49;
        }
      }

      v31 = [v74 objectAtIndexedSubscript:v30];
      viewHint2 = [v31 viewHint];
      v33 = [viewHint2 isEqual:v73];

      if (!v33)
      {
        goto LABEL_46;
      }

      identifier2 = [v31 identifier];
      v35 = identifier;
      v36 = v35;
      if (identifier2 == v35)
      {
      }

      else
      {
        if ((identifier == 0) == (identifier2 != 0))
        {

LABEL_46:
          goto LABEL_47;
        }

        v37 = [identifier2 isEqual:v35];

        if (!v37)
        {
          goto LABEL_46;
        }
      }

      type2 = [v31 type];
      v39 = type;
      v40 = v39;
      if (type2 == v39)
      {
      }

      else
      {
        if ((type == 0) == (type2 != 0))
        {

          goto LABEL_46;
        }

        v41 = [type2 isEqual:v39];

        if (!v41)
        {
          goto LABEL_46;
        }
      }

      metadata2 = [0 metadata];
      v43 = CFDictionaryGetInt64Ranged();

      if (Int64Ranged > v43)
      {
        [(RPIdentityDaemon *)selfCopy _triggerKeychainRefetch];
        goto LABEL_46;
      }

      v58 = v31;
      v24 = v72;
      if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
      {
        v62 = Int64Ranged;
        v63 = v43;
        v60 = v72;
        v61 = v58;
        LogPrintF();
      }

      v19 = v66;
      if (v58)
      {
        v46 = v66;
        goto LABEL_72;
      }

LABEL_49:
      v44 = objc_alloc_init(RPIdentity);
      v75 = v19;
      v45 = [v44 updateWithKeychainItem:v24 error:&v75];
      v46 = v75;

      if ([v44 type] == 2 || objc_msgSend(v44, "type") == 1)
      {
        v47 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
        localDeviceInfo = [v47 localDeviceInfo];
        accountID = [localDeviceInfo accountID];

        if (accountID)
        {
          accountID2 = [v44 accountID];

          if (!accountID2)
          {
            [v44 setAccountID:accountID];
          }
        }

        v24 = v72;
      }

      if (v45)
      {
        if (dword_1001D3F50 <= 60 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
        {
          v60 = v24;
          v61 = v46;
          LogPrintF();
        }
      }

      else
      {
        idsDeviceID = [v44 idsDeviceID];
        v52 = idsDeviceID;
        if (!idsDeviceIDSelf || !idsDeviceID || [idsDeviceID caseInsensitiveCompare:idsDeviceIDSelf])
        {
          v53 = +[RPCloudDaemon sharedCloudDaemon];
          idsDeviceMap = [v53 idsDeviceMap];
          v55 = [idsDeviceMap objectForKeyedSubscript:v52];

          if (v55)
          {
            modelIdentifier = [v55 modelIdentifier];
            if (modelIdentifier)
            {
              [v44 setModel:modelIdentifier];
            }

            name = [v55 name];
            if (name)
            {
              [v44 setName:name];
            }
          }

          [v67 addObject:v44];
          v24 = v72;
        }
      }

      v19 = v46;
LABEL_72:

      if (++v22 == v21)
      {
LABEL_81:
        v13 = [v67 copy];

        v16 = v64;
        v15 = v65;
        goto LABEL_82;
      }
    }
  }

  if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (error)
  {
    v46 = v19;
    v59 = v19;
    v13 = 0;
    *error = v19;
  }

  else
  {
    v13 = 0;
    v46 = v19;
  }

LABEL_82:

LABEL_14:

  return v13;
}

- (id)getIdentitiesWithFlags:(unsigned int)flags
{
  flagsCopy = flags;
  v4 = objc_alloc_init(NSMutableArray);
  if (flagsCopy)
  {
    v5 = +[RPIdentityDaemon sharedIdentityDaemon];
    v6 = [v5 identityOfSelfAndReturnError:0];

    if (v6)
    {
      [v4 addObject:v6];
    }

    if ((flagsCopy & 2) == 0)
    {
LABEL_3:
      if ((flagsCopy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((flagsCopy & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = +[RPIdentityDaemon sharedIdentityDaemon];
  v8 = [v7 identitiesOfType:2 error:0];

  if (v8)
  {
    [v4 addObjectsFromArray:v8];
  }

  if ((flagsCopy & 4) == 0)
  {
LABEL_4:
    if ((flagsCopy & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_21:
  v9 = +[RPIdentityDaemon sharedIdentityDaemon];
  v10 = [v9 identitiesOfType:3 error:0];

  if (v10)
  {
    [v4 addObjectsFromArray:v10];
  }

  if ((flagsCopy & 8) == 0)
  {
LABEL_5:
    if ((flagsCopy & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_24:
  v11 = +[RPIdentityDaemon sharedIdentityDaemon];
  v12 = [v11 identitiesOfType:4 error:0];

  if (v12)
  {
    [v4 addObjectsFromArray:v12];
  }

  if ((flagsCopy & 0x10) == 0)
  {
LABEL_6:
    if ((flagsCopy & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_27:
  v13 = +[RPIdentityDaemon sharedIdentityDaemon];
  v14 = [v13 identitiesOfType:5 error:0];

  if (v14)
  {
    [v4 addObjectsFromArray:v14];
  }

  if ((flagsCopy & 0x20) == 0)
  {
LABEL_7:
    if ((flagsCopy & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_30:
  v15 = +[RPIdentityDaemon sharedIdentityDaemon];
  v16 = [v15 identitiesOfType:6 error:0];

  if (v16)
  {
    [v4 addObjectsFromArray:v16];
  }

  if ((flagsCopy & 0x100) == 0)
  {
LABEL_8:
    if ((flagsCopy & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_33:
  v17 = +[RPIdentityDaemon sharedIdentityDaemon];
  v18 = [v17 identitiesOfType:9 error:0];

  if (v18)
  {
    [v4 addObjectsFromArray:v18];
  }

  if ((flagsCopy & 0x400) == 0)
  {
LABEL_9:
    if ((flagsCopy & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_36:
  v19 = +[RPIdentityDaemon sharedIdentityDaemon];
  v20 = [v19 identitiesOfType:12 error:0];

  if (v20)
  {
    [v4 addObjectsFromArray:v20];
    if (dword_1001D3F50 < 31 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011B878(v20);
    }
  }

  if ((flagsCopy & 0x40) == 0)
  {
LABEL_10:
    if ((flagsCopy & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_41:
  v21 = +[RPIdentityDaemon sharedIdentityDaemon];
  v22 = [v21 identitiesOfType:7 error:0];

  if (v22)
  {
    [v4 addObjectsFromArray:v22];
  }

  if ((flagsCopy & 0x80) == 0)
  {
LABEL_11:
    if ((flagsCopy & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_44:
  v23 = +[RPIdentityDaemon sharedIdentityDaemon];
  v24 = [v23 identitiesOfType:8 error:0];

  if (v24)
  {
    [v4 addObjectsFromArray:v24];
  }

  if ((flagsCopy & 0x800) == 0)
  {
LABEL_12:
    if ((flagsCopy & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_47:
  v25 = +[RPIdentityDaemon sharedIdentityDaemon];
  v26 = [v25 identitiesOfType:13 error:0];

  if (v26)
  {
    [v4 addObjectsFromArray:v26];
  }

  if ((flagsCopy & 0x2000) == 0)
  {
LABEL_13:
    if ((flagsCopy & 0x4000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_53;
  }

LABEL_50:
  v27 = +[RPIdentityDaemon sharedIdentityDaemon];
  v28 = [v27 identityOfTemporarySelfAndReturnError:0];

  if (v28)
  {
    [v4 addObject:v28];
  }

  if ((flagsCopy & 0x4000) != 0)
  {
LABEL_53:
    v29 = +[RPIdentityDaemon sharedIdentityDaemon];
    v30 = [v29 identitiesOfType:15 error:0];

    if (v30)
    {
      [v4 addObjectsFromArray:v30];
    }
  }

LABEL_56:

  return v4;
}

- (id)sameAccountDeviceIDs
{
  v3 = objc_opt_new();
  v4 = [(RPIdentityDaemon *)self identitiesOfType:2 error:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006C734;
  v10[3] = &unk_1001ACE68;
  v5 = v3;
  v11 = v5;
  [v4 enumerateObjectsUsingBlock:v10];

  idsDeviceID = [(RPIdentity *)self->_selfIdentityCache idsDeviceID];

  if (idsDeviceID)
  {
    idsDeviceID2 = [(RPIdentity *)self->_selfIdentityCache idsDeviceID];
    [v5 addObject:idsDeviceID2];
  }

  v8 = [v5 copy];

  return v8;
}

- (id)identityOfSelfAndReturnError:(id *)error
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = self->_selfIdentityCache;
  if (v5)
  {
    goto LABEL_15;
  }

  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) == 0)
  {
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011B8BC();
      if (error)
      {
        goto LABEL_9;
      }
    }

    else if (error)
    {
LABEL_9:
      RPErrorF();
      *error = v5 = 0;
      goto LABEL_15;
    }

    v5 = 0;
    goto LABEL_15;
  }

  [(RPIdentityDaemon *)self _loadSelfIdentity:0];
  v6 = self->_selfIdentityCache;
  v5 = v6;
  if (v6)
  {
    v7 = v6;
  }

  else if (error)
  {
    *error = RPErrorF();
  }

LABEL_15:

  return v5;
}

- (id)identityOfTemporarySelfAndReturnError:(id *)error
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = self->_temporarySelfIdentityCache;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else if (error)
  {
    *error = RPErrorF();
  }

  return v6;
}

- (unint64_t)featureFlagsForIdentityMatchingIDSDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = [(RPIdentityDaemon *)self identitiesOfType:4 error:0];
  v6 = [(RPIdentityDaemon *)self identitiesOfType:6 error:0];
  v7 = [(RPIdentityDaemon *)self identitiesOfType:2 error:0];
  v8 = [[NSMutableArray alloc] initWithArray:v5];
  [v8 addObjectsFromArray:v6];
  [v8 addObjectsFromArray:v7];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v8;
  featureFlags = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (featureFlags)
  {
    v17 = v5;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != featureFlags; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        idsDeviceID = [v13 idsDeviceID];
        v15 = [idsDeviceID isEqualToString:identifierCopy];

        if (v15)
        {
          featureFlags = [v13 featureFlags];
          goto LABEL_11;
        }
      }

      featureFlags = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (featureFlags)
      {
        continue;
      }

      break;
    }

LABEL_11:
    v5 = v17;
  }

  return featureFlags;
}

- (void)regenerateTemporarySelfIdentity
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006CB80;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)getPairedIdentityWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(CUPairingManager);
  [v5 setDispatchQueue:self->_dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006CCC0;
  v7[3] = &unk_1001ACE90;
  v7[4] = v5;
  v8 = completionCopy;
  v6 = completionCopy;
  [v5 getPairingIdentityWithOptions:134 completion:v7];
}

- (void)getPairingIdentityFromHomeWithAccessory:(id)accessory completion:(id)completion
{
  accessoryCopy = accessory;
  completionCopy = completion;
  v6 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
  rpHomeKitManager = [v6 rpHomeKitManager];

  if (rpHomeKitManager)
  {
    [rpHomeKitManager getPairingIdentityFromHomeWithAccessory:accessoryCopy completionHandler:completionCopy];
  }

  else
  {
    v8 = RPErrorF();
    completionCopy[2](completionCopy, 0, v8);
  }
}

- (void)addSelfIdentityInfoToMessage:(id)message flags:(unsigned int)flags
{
  flagsCopy = flags;
  messageCopy = message;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v21 = 0;
  v7 = [(RPIdentityDaemon *)self identityOfSelfAndReturnError:&v21];
  v8 = v21;
  if (v7)
  {
    deviceIRKData = [v7 deviceIRKData];
    if (deviceIRKData)
    {
      [messageCopy setObject:deviceIRKData forKeyedSubscript:@"_dIRK"];
    }

    edPKData = [v7 edPKData];
    if (edPKData)
    {
      [messageCopy setObject:edPKData forKeyedSubscript:@"_edPK"];
    }

    if (flagsCopy)
    {
      v19 = [v7 featureFlags] & 0xF8;
      if (v19)
      {
        v20 = [NSNumber numberWithUnsignedLongLong:v19];
        [messageCopy setObject:v20 forKeyedSubscript:@"_ff"];
      }

      else
      {
        [messageCopy setObject:&off_1001B7F48 forKeyedSubscript:@"_ff"];
      }

      [messageCopy setObject:@"?" forKeyedSubscript:@"model"];
      [messageCopy setObject:@"?" forKeyedSubscript:@"model"];
    }

    else
    {
      btIRKData = [v7 btIRKData];
      if (btIRKData)
      {
        [messageCopy setObject:btIRKData forKeyedSubscript:@"_bIRK"];
      }

      btAddress = [v7 btAddress];
      if (btAddress)
      {
        [messageCopy setObject:btAddress forKeyedSubscript:@"_bAdd"];
      }

      featureFlags = [v7 featureFlags];
      if (featureFlags)
      {
        v14 = [NSNumber numberWithUnsignedLongLong:featureFlags];
        [messageCopy setObject:v14 forKeyedSubscript:@"_ff"];
      }

      v15 = [messageCopy objectForKeyedSubscript:@"model"];

      if (!v15)
      {
        v16 = GestaltCopyAnswer();
        if (v16)
        {
          [messageCopy setObject:v16 forKeyedSubscript:@"model"];
        }
      }

      v17 = [messageCopy objectForKeyedSubscript:@"name"];

      if (!v17)
      {
        v18 = GestaltCopyAnswer();
        if (v18)
        {
          [messageCopy setObject:v18 forKeyedSubscript:@"name"];
        }
      }
    }
  }

  else if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011B934();
  }
}

- (BOOL)removeIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  type = [identityCopy type];
  if (type > 0x10)
  {
    v8 = "?";
  }

  else
  {
    v8 = off_1001AD0E0[type];
  }

  v9 = [NSString stringWithUTF8String:v8];
  if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011B974();
  }

  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) == 0)
  {
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011B9B4();
      if (error)
      {
        goto LABEL_20;
      }
    }

    else if (error)
    {
LABEL_20:
      RPErrorF();
      *error = v17 = 0;
      goto LABEL_34;
    }

    v17 = 0;
    goto LABEL_34;
  }

  type2 = [identityCopy type];
  if (type2 == 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = 6;
  }

  if (type2 == 2)
  {
    v12 = 3;
  }

  else
  {
    v12 = 1;
  }

  v13 = objc_alloc_init(CUKeychainItem);
  [v13 setAccessGroup:@"com.apple.rapport"];
  [v13 setAccessibleType:v11];
  identifier = [identityCopy identifier];
  [v13 setIdentifier:identifier];

  [v13 setSyncType:v12];
  v15 = [identityCopy type] - 1;
  if (v15 > 0xE)
  {
    v16 = 0;
  }

  else
  {
    v16 = off_1001AD068[v15];
  }

  [v13 setType:v16];
  v18 = objc_alloc_init(CUKeychainManager);
  v22 = 0;
  v17 = [v18 removeItemMatchingItem:v13 error:&v22];
  v19 = v22;
  if (v17)
  {
    [(RPIdentityDaemon *)self _postIdentitiesChangedNotification];
  }

  else
  {
    if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (error)
    {
      v20 = v19;
      *error = v19;
    }
  }

LABEL_34:
  return v17;
}

- (BOOL)saveIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  type = [identityCopy type];
  if (type > 0x10)
  {
    v8 = "?";
  }

  else
  {
    v8 = off_1001AD0E0[type];
  }

  v9 = [NSString stringWithUTF8String:v8];
  if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011B9F4();
  }

  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) == 0)
  {
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011BA34();
      if (error)
      {
        goto LABEL_19;
      }
    }

    else if (error)
    {
LABEL_19:
      RPErrorF();
      *error = LOBYTE(v14) = 0;
      goto LABEL_33;
    }

    LOBYTE(v14) = 0;
    goto LABEL_33;
  }

  v10 = objc_alloc_init(CUKeychainItem);
  [v10 setAccessGroup:@"com.apple.rapport"];
  [v10 setAccessibleType:6];
  [v10 setInvisible:1];
  [v10 setSyncType:1];
  v17 = 0;
  v11 = [v10 updateWithRPIdentity:identityCopy revisionUpdate:1 error:&v17];
  v12 = v17;
  if (v11)
  {
    if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (error)
    {
      v15 = v12;
      LOBYTE(v14) = 0;
      *error = v12;
    }

    else
    {
      LOBYTE(v14) = 0;
    }
  }

  else
  {
    v13 = objc_alloc_init(CUKeychainManager);
    v14 = [v13 addOrUpdateOrReAddItem:v10 logCategory:&dword_1001D3F50 logLabel:v9 error:error];
    if (v14)
    {
      if ([identityCopy type] == 2)
      {
        if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
        {
          sub_10011BA74();
        }

        [(RPIdentityDaemon *)self _updateSameAccountIdentities];
      }

      else
      {
        [(RPIdentityDaemon *)self _postIdentitiesChangedNotification];
      }
    }
  }

LABEL_33:
  return v14;
}

- (BOOL)saveIdentityWithIDSDeviceID:(id)d message:(id)message error:(id *)error
{
  dCopy = d;
  messageCopy = message;
  [(RPIdentityDaemon *)self identitiesOfType:2 error:0];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v30 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v28 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v27 + 1) + 8 * v13);
      identifier = [v14 identifier];
      v16 = [identifier isEqual:dCopy];

      if (v16)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v17 = v14;

    if (!v17)
    {
      goto LABEL_12;
    }

    v18 = 0;
  }

  else
  {
LABEL_9:

LABEL_12:
    v17 = objc_alloc_init(RPIdentity);
    [v17 setIdentifier:dCopy];
    [v17 setType:2];
    v18 = 1;
  }

  if ([v17 updateWithRPMessage:messageCopy error:0])
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  idsDeviceID = [v17 idsDeviceID];
  v21 = dCopy;
  v22 = v21;
  if (idsDeviceID == v21)
  {

    if (!v19)
    {
      goto LABEL_22;
    }

LABEL_25:
    v24 = [(RPIdentityDaemon *)self saveIdentity:v17 error:error];
    goto LABEL_26;
  }

  if ((v21 == 0) == (idsDeviceID != 0))
  {

    goto LABEL_24;
  }

  v23 = [idsDeviceID isEqual:v21];

  if ((v23 & 1) == 0)
  {
LABEL_24:
    [v17 setIdsDeviceID:v22];
    goto LABEL_25;
  }

  if (v19)
  {
    goto LABEL_25;
  }

LABEL_22:
  v24 = 1;
LABEL_26:

  return v24;
}

- (void)removeSessionPairedIdentityWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006DC48;
  v7[3] = &unk_1001AB488;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)updateSessionPairedIdentity:(id)identity
{
  identityCopy = identity;
  identifier = [identityCopy identifier];

  if (identifier)
  {
    dispatchQueue = self->_dispatchQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10006DF24;
    v7[3] = &unk_1001AB488;
    v7[4] = self;
    v8 = identityCopy;
    dispatch_async(dispatchQueue, v7);
  }

  else if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011BB70();
  }
}

- (id)_dedupeSameAccountDeviceIdentities:(id)identities
{
  identitiesCopy = identities;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10006E728;
  v21[3] = &unk_1001ACE68;
  v4 = objc_opt_new();
  v22 = v4;
  [identitiesCopy enumerateObjectsUsingBlock:v21];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10006E850;
  v18[3] = &unk_1001ACEB8;
  v7 = v5;
  v19 = v7;
  v8 = v6;
  v20 = v8;
  [v4 enumerateKeysAndObjectsUsingBlock:v18];
  if ([v7 count])
  {
    allValues = [v7 allValues];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10006E90C;
    v16 = &unk_1001ACF08;
    v10 = v8;
    v17 = v10;
    [allValues enumerateObjectsUsingBlock:&v13];

    v11 = [v10 copy];
  }

  else
  {
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011BC70();
    }

    v11 = identitiesCopy;
  }

  return v11;
}

- (void)removeAdHocPairedIdentityWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006EC40;
  v7[3] = &unk_1001AB488;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)removeAllAdHocPairedIdentities
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006EF10;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_ensureStarted
{
  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) != 0)
  {
    if (self->_homeViewChangeToken == -1)
    {
      if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
      {
        sub_10011BDA0();
      }

      v3 = [NSString alloc];
      kSecAttrViewHintHome = [v3 initWithFormat:@"com.apple.security.view-change.%@", kSecAttrViewHintHome];
      uTF8String = [kSecAttrViewHintHome UTF8String];
      dispatchQueue = self->_dispatchQueue;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10006F2B8;
      handler[3] = &unk_1001AAFE8;
      handler[4] = self;
      notify_register_dispatch(uTF8String, &self->_homeViewChangeToken, dispatchQueue, handler);
      [(RPIdentityDaemon *)self _updateSameAccountIdentities];
    }

    if (self->_homeViewReadyToken == -1)
    {
      v7 = [NSString alloc];
      kSecAttrViewHintHome2 = [v7 initWithFormat:@"com.apple.security.view-ready.%@", kSecAttrViewHintHome];
      uTF8String2 = [kSecAttrViewHintHome2 UTF8String];
      v10 = self->_dispatchQueue;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10006F334;
      v13[3] = &unk_1001AAFE8;
      v13[4] = self;
      notify_register_dispatch(uTF8String2, &self->_homeViewReadyToken, v10, v13);
    }

    if (self->_pairedDevicesNotifier == -1)
    {
      v11 = self->_dispatchQueue;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10006F3BC;
      v12[3] = &unk_1001AAFE8;
      v12[4] = self;
      notify_register_dispatch("com.apple.pairing.peerChanged", &self->_pairedDevicesNotifier, v11, v12);
      [(RPIdentityDaemon *)self _updatePairedDeviceIdentities];
    }

    if (!self->_selfIdentityCache)
    {
      [(RPIdentityDaemon *)self _loadSelfIdentity:0];
    }

    if (!self->_temporarySelfIdentityCache)
    {
      [(RPIdentityDaemon *)self _loadTemporarySelfIdentity];
    }
  }

  else if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011BD84();
  }
}

- (void)_ensureStopped
{
  homeViewChangeToken = self->_homeViewChangeToken;
  if (homeViewChangeToken != -1)
  {
    if (dword_1001D3F50 > 30)
    {
      goto LABEL_6;
    }

    if (dword_1001D3F50 != -1 || _LogCategory_Initialize())
    {
      sub_10011BE10();
    }

    homeViewChangeToken = self->_homeViewChangeToken;
    if (homeViewChangeToken != -1)
    {
LABEL_6:
      notify_cancel(homeViewChangeToken);
      self->_homeViewChangeToken = -1;
    }
  }

  homeViewReadyToken = self->_homeViewReadyToken;
  if (homeViewReadyToken != -1)
  {
    if (dword_1001D3F50 > 30)
    {
      goto LABEL_12;
    }

    if (dword_1001D3F50 != -1 || _LogCategory_Initialize())
    {
      sub_10011BE2C();
    }

    homeViewReadyToken = self->_homeViewReadyToken;
    if (homeViewReadyToken != -1)
    {
LABEL_12:
      notify_cancel(homeViewReadyToken);
      self->_homeViewReadyToken = -1;
    }
  }

  [(CUCoalescer *)self->_identitiesChangedCoalescer invalidate];
  identitiesChangedCoalescer = self->_identitiesChangedCoalescer;
  self->_identitiesChangedCoalescer = 0;

  pairedDeviceIdentities = self->_pairedDeviceIdentities;
  self->_pairedDeviceIdentities = 0;

  pairedDevicesNotifier = self->_pairedDevicesNotifier;
  if (pairedDevicesNotifier != -1)
  {
    notify_cancel(pairedDevicesNotifier);
    self->_pairedDevicesNotifier = -1;
  }

  sameAccountDeviceIdentities = self->_sameAccountDeviceIdentities;
  self->_sameAccountDeviceIdentities = 0;

  sharedHomeDeviceIdentities = self->_sharedHomeDeviceIdentities;
  self->_sharedHomeDeviceIdentities = 0;

  sharedHomeExtraDeviceIdentities = self->_sharedHomeExtraDeviceIdentities;
  self->_sharedHomeExtraDeviceIdentities = 0;

  sharedTVUserDeviceIdentities = self->_sharedTVUserDeviceIdentities;
  self->_sharedTVUserDeviceIdentities = 0;

  adHocPairedDeviceIdentities = self->_adHocPairedDeviceIdentities;
  self->_adHocPairedDeviceIdentities = 0;

  selfIdentityCache = self->_selfIdentityCache;
  self->_selfIdentityCache = 0;

  temporarySelfIdentityCache = self->_temporarySelfIdentityCache;
  self->_temporarySelfIdentityCache = 0;

  temporarySelfIdentityTimer = self->_temporarySelfIdentityTimer;
  if (temporarySelfIdentityTimer)
  {
    v17 = temporarySelfIdentityTimer;
    dispatch_source_cancel(v17);
    v16 = self->_temporarySelfIdentityTimer;
    self->_temporarySelfIdentityTimer = 0;
  }
}

- (void)_postIdentitiesChangedNotification
{
  identitiesChangedCoalescer = self->_identitiesChangedCoalescer;
  if (!identitiesChangedCoalescer)
  {
    v4 = objc_alloc_init(CUCoalescer);
    v5 = self->_identitiesChangedCoalescer;
    self->_identitiesChangedCoalescer = v4;

    [(CUCoalescer *)self->_identitiesChangedCoalescer setDispatchQueue:self->_dispatchQueue];
    [(CUCoalescer *)self->_identitiesChangedCoalescer setMinDelay:0.3];
    [(CUCoalescer *)self->_identitiesChangedCoalescer setMaxDelay:1.0];
    [(CUCoalescer *)self->_identitiesChangedCoalescer setActionHandler:&stru_1001ACF28];
    identitiesChangedCoalescer = self->_identitiesChangedCoalescer;
  }

  [(CUCoalescer *)identitiesChangedCoalescer trigger];
}

- (void)_triggerKeychainRefetch
{
  v3 = mach_absolute_time();
  keychainRefetchTicks = self->_keychainRefetchTicks;
  if (UpTicksToSeconds() >> 5 > 0x2A2)
  {
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011BE90();
    }

    self->_keychainRefetchTicks = v3;
    v7 = 0;
    v5 = [CKKSControl controlObject:&v7];
    v6 = v7;
    if (v5)
    {
      [v5 rpcFetchAndProcessChanges:kSecAttrViewHintHome reply:&stru_1001ACF48];
    }

    else if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011BEAC();
    }
  }

  else if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011BEEC();
  }
}

- (void)_updatePairedDeviceIdentities
{
  if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011BF74();
  }

  v3 = objc_alloc_init(CUPairingManager);
  [v3 setDispatchQueue:self->_dispatchQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006F954;
  v4[3] = &unk_1001ACF70;
  v4[4] = v3;
  v4[5] = self;
  [v3 getPairedPeersWithOptions:134 completion:v4];
}

- (BOOL)_removeSameAccountIdentityWithIDSIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v32 = 0;
  v7 = [(RPIdentityDaemon *)self _identitiesOfType:2 error:&v32];
  v8 = v32;
  if (v8)
  {
    v9 = v8;
    if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011C194();
    }

    v10 = 0;
    v11 = 0;
    if (error)
    {
LABEL_6:
      v12 = v9;
      *error = v9;
      v11 = v10;
    }
  }

  else
  {
    v25 = v7;
    errorCopy = error;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = v7;
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v29;
      do
      {
        v19 = 0;
        do
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v28 + 1) + 8 * v19);
          idsDeviceID = [v20 idsDeviceID];
          v22 = [idsDeviceID isEqualToString:identifierCopy];

          if (v22)
          {
            v27 = v17;
            v23 = [(RPIdentityDaemon *)self removeIdentity:v20 error:&v27];
            v9 = v27;

            if (v23)
            {
              v10 = 1;
              v17 = v14;
              goto LABEL_30;
            }

            if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
            {
              sub_10011C1D4();
            }

            v17 = v9;
          }

          v19 = v19 + 1;
        }

        while (v16 != v19);
        v24 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
        v16 = v24;
      }

      while (v24);
    }

    else
    {
      v17 = 0;
    }

    if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011C214();
    }

    v9 = RPErrorF();
    v10 = 0;
LABEL_30:
    v7 = v25;
    error = errorCopy;

    v11 = v10;
    if (errorCopy)
    {
      goto LABEL_6;
    }
  }

  return v11;
}

- (void)_loadSelfIdentity:(BOOL)identity
{
  identityCopy = identity;
  if (!+[RPIdentity _sepBackedIdentityEnabled])
  {
    _sepLoadSelfPrivateKey = 0;
    goto LABEL_11;
  }

  sepPrivateKey = [(RPIdentity *)self->_selfIdentityCache sepPrivateKey];
  if (sepPrivateKey)
  {
    _sepLoadSelfPrivateKey = sepPrivateKey;
    CFRetain(sepPrivateKey);
    if (!identityCopy)
    {
LABEL_9:
      if (_sepLoadSelfPrivateKey)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else
  {
    _sepLoadSelfPrivateKey = [(RPIdentityDaemon *)self _sepLoadSelfPrivateKey];
    if (!identityCopy)
    {
      goto LABEL_9;
    }
  }

  if (!_sepLoadSelfPrivateKey)
  {
    goto LABEL_9;
  }

  [(RPIdentityDaemon *)self _sepRemoveSelfPrivateKey:_sepLoadSelfPrivateKey];
  CFRelease(_sepLoadSelfPrivateKey);
LABEL_10:
  _sepLoadSelfPrivateKey = [(RPIdentityDaemon *)self _sepGenerateSelfPrivateKey];
LABEL_11:
  if (!identityCopy)
  {
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011C248();
    }

    v7 = objc_alloc_init(CUKeychainItem);
    [v7 setAccessGroup:@"com.apple.rapport"];
    [v7 setIdentifier:@"SelfIdentity"];
    [v7 setSyncType:1];
    [v7 setType:@"RPIdentity-Self"];
    v8 = objc_alloc_init(CUKeychainManager);
    v20 = 0;
    v9 = [v8 copyItemMatchingItem:v7 flags:1 error:&v20];
    v10 = v20;
    v11 = v10;
    if (v9)
    {
      v12 = objc_alloc_init(RPIdentity);
      v19 = v11;
      [v12 updateWithKeychainItem:v9 error:&v19];
      v13 = v19;

      if (v13 && dword_1001D3F50 <= 60 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
      {
        sub_10011C264();
      }

      v14 = [(RPIdentityDaemon *)self _updateSelfIdentityPrivate:v12 create:0];
      v15 = [v12 updateWithSEPPrivateKey:_sepLoadSelfPrivateKey];
      if (v15 & 1 | v14 & 1)
      {

        v12 = 0;
      }

      else if (!(v15 & 0xFBFFFFFF | v14))
      {
        if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
        {
          sub_10011C2A4();
        }

        v16 = 0;
        goto LABEL_33;
      }

      v16 = 1;
      goto LABEL_33;
    }

    if ([v10 code] != -25300 && dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011C2D8();
    }

    v12 = 0;
    v16 = 0;
    v13 = v11;
LABEL_33:

    if (v12)
    {
      goto LABEL_38;
    }
  }

  if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011C318();
  }

  v12 = objc_alloc_init(RPIdentity);
  [v12 setIdentifier:@"SelfIdentity"];
  v16 = 1;
  [v12 setType:1];
  [v12 setSource:1];
  [(RPIdentityDaemon *)self _updateSelfIdentityPrivate:v12 create:1];
  [v12 updateWithSEPPrivateKey:_sepLoadSelfPrivateKey];
LABEL_38:
  if (_sepLoadSelfPrivateKey)
  {
    CFRelease(_sepLoadSelfPrivateKey);
  }

  if (v16)
  {
    objc_storeStrong(&self->_selfIdentityCache, v12);
    [(RPIdentityDaemon *)self _saveSelfIdentityPrivate:v12];
    [(RPIdentityDaemon *)self _saveSelfIdentityPublicWithPrivateIdentity:v12 force:0];
LABEL_43:
    v18 = +[RPDaemon sharedDaemon];
    [v18 postDaemonInfoChanges:4];

    [(RPIdentityDaemon *)self _postIdentitiesChangedNotification];
    [(RPIdentityDaemon *)self _update];
    goto LABEL_44;
  }

  selfIdentityCache = self->_selfIdentityCache;
  objc_storeStrong(&self->_selfIdentityCache, v12);
  [(RPIdentityDaemon *)self _saveSelfIdentityPublicWithPrivateIdentity:v12 force:0];
  if (!selfIdentityCache)
  {
    goto LABEL_43;
  }

LABEL_44:
}

- (void)_saveSelfIdentityPrivate:(id)private
{
  privateCopy = private;
  if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011C34C();
  }

  v4 = objc_alloc_init(CUKeychainItem);
  [v4 setAccessGroup:@"com.apple.rapport"];
  [v4 setAccessibleType:6];
  [v4 setInvisible:1];
  [v4 setSyncType:1];
  v10 = 0;
  v5 = [v4 updateWithRPIdentity:privateCopy revisionUpdate:1 error:&v10];
  v6 = v10;
  if (v5)
  {
    if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v8 = v6;
  }

  else
  {
    v7 = objc_alloc_init(CUKeychainManager);
    v9 = v6;
    [v7 addOrUpdateOrReAddItem:v4 logCategory:&dword_1001D3F50 logLabel:@"SelfIdentity private" error:&v9];
    v8 = v9;

    if (v8)
    {
      if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011C38C();
    }
  }
}

- (void)_saveSelfIdentityPublicWithPrivateIdentity:(id)identity force:(BOOL)force
{
  forceCopy = force;
  identityCopy = identity;
  idsDeviceID = [identityCopy idsDeviceID];
  if (idsDeviceID)
  {
    v7 = objc_alloc_init(CUKeychainItem);
    [v7 setAccessGroup:@"com.apple.rapport"];
    [v7 setIdentifier:idsDeviceID];
    [v7 setSyncType:2];
    [v7 setType:@"RPIdentity-SameAccountDevice"];
    v8 = kSecAttrViewHintHome;
    [v7 setViewHint:kSecAttrViewHintHome];
    v26 = 0;
    v21 = objc_alloc_init(CUKeychainManager);
    v9 = [v21 copyItemMatchingItem:v7 flags:1 error:&v26];
    v10 = v26;
    v11 = v10;
    if (v9)
    {
      v12 = objc_alloc_init(RPIdentity);
      v25 = v11;
      [v12 updateWithKeychainItem:v9 error:&v25];
      v13 = v25;

      if (v13 && dword_1001D3F50 <= 60 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
      {
        sub_10011C3C0();
      }

      v14 = [(RPIdentityDaemon *)self _updateSelfIdentityPublic:v12 privateIdentity:identityCopy];
      if (v14)
      {

        v11 = v13;
      }

      else
      {
        v11 = v13;
        if (v12)
        {
          goto LABEL_24;
        }
      }
    }

    else if ([v10 code] != -25300)
    {
      if (dword_1001D3F50 > 90)
      {
LABEL_23:
        v12 = objc_alloc_init(RPIdentity);
        [v12 setIdentifier:idsDeviceID];
        [v12 setType:2];
        [v12 setSource:1];
        [(RPIdentityDaemon *)self _updateSelfIdentityPublic:v12 privateIdentity:identityCopy];
        v14 = 2048;
        v13 = v11;
LABEL_24:
        if (forceCopy)
        {
          v15 = v14 | 0x1000;
        }

        else
        {
          v15 = v14;
        }

        if (!v15)
        {
          if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
          {
            sub_10011C4BC();
          }

          goto LABEL_49;
        }

        v16 = objc_alloc_init(CUKeychainItem);
        [v16 setAccessGroup:@"com.apple.rapport"];
        [v16 setAccessibleType:2];
        [v16 setInvisible:1];
        [v16 setSyncType:2];
        [v16 setViewHint:v8];
        v24 = v13;
        v17 = [v16 updateWithRPIdentity:v12 revisionUpdate:1 error:&v24];
        v18 = v24;

        if (v17)
        {
          if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          goto LABEL_48;
        }

        v23 = 0;
        [v21 addOrUpdateOrReAddItem:v16 logCategory:&dword_1001D3F50 logLabel:@"SelfIdentity public" error:&v23];
        v18 = v23;
        if (v18)
        {
          if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
            [(RPIdentityDaemon *)self _updateSameAccountIdentities:v16];
LABEL_48:

            v13 = v18;
LABEL_49:

            goto LABEL_50;
          }
        }

        else if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
        {
          sub_10011C474();
        }

        [(RPIdentityDaemon *)self _updateSameAccountIdentities:v19];
        goto LABEL_48;
      }

      if (dword_1001D3F50 != -1 || _LogCategory_Initialize())
      {
        sub_10011C400();
      }
    }

    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011C440();
    }

    goto LABEL_23;
  }

  if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011C4F0();
  }

LABEL_50:
}

- (void)_removeSelfIdentityPublicWithPrivateIdentity:(id)identity
{
  idsDeviceID = [identity idsDeviceID];
  if (idsDeviceID)
  {
    v5 = objc_alloc_init(CUKeychainItem);
    [v5 setAccessGroup:@"com.apple.rapport"];
    [v5 setIdentifier:idsDeviceID];
    [v5 setSyncType:2];
    [v5 setType:@"RPIdentity-SameAccountDevice"];
    [v5 setViewHint:kSecAttrViewHintHome];
    v6 = objc_alloc_init(CUKeychainManager);
    v8 = 0;
    [v6 removeItemMatchingItem:v5 error:&v8];
    v7 = v8;
    if ([v7 code] == -25300)
    {
      if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
      {
        sub_10011C54C();
      }
    }

    else if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011C50C();
    }

    [(RPIdentityDaemon *)self _updateSameAccountIdentities];
  }

  else if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011C5A4();
  }
}

- (void)_loadTemporarySelfIdentity
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (_os_feature_enabled_impl())
  {
    if (!self->_temporarySelfIdentityCache)
    {
      if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
      {
        sub_10011C5C0();
      }

      v3 = [[RPIdentity alloc] initWithType:14];
      temporarySelfIdentityCache = self->_temporarySelfIdentityCache;
      self->_temporarySelfIdentityCache = v3;

      uUIDString = [(NSUUID *)self->_adHocPairingIdentifier UUIDString];
      [(RPIdentity *)self->_temporarySelfIdentityCache setIdentifier:uUIDString];
    }

    v6 = NSRandomData();
    [(RPIdentity *)self->_temporarySelfIdentityCache setDeviceIRKData:v6];

    p_adHocPairedDeviceIdentities = &self->_adHocPairedDeviceIdentities;
    if ([(NSMutableArray *)self->_adHocPairedDeviceIdentities count])
    {
      if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
      {
        sub_10011C5DC(&self->_adHocPairedDeviceIdentities);
      }

      v8 = *p_adHocPairedDeviceIdentities;
      *p_adHocPairedDeviceIdentities = 0;

      v9 = +[RPDaemon sharedDaemon];
      [v9 postDaemonInfoChanges:0x4000];
    }

    temporarySelfIdentityTimer = self->_temporarySelfIdentityTimer;
    if (temporarySelfIdentityTimer)
    {
      v11 = temporarySelfIdentityTimer;
      dispatch_source_cancel(v11);
      v12 = self->_temporarySelfIdentityTimer;
      self->_temporarySelfIdentityTimer = 0;
    }

    v13 = +[NSDate date];
    v14 = +[NSCalendar currentCalendar];
    v15 = [v14 startOfDayForDate:v13];

    v16 = +[NSCalendar currentCalendar];
    v17 = [v16 dateByAddingUnit:16 value:1 toDate:v15 options:0];

    if (v17)
    {
      v18 = +[NSCalendar currentCalendar];
      v19 = [v18 startOfDayForDate:v17];

      [v19 timeIntervalSinceDate:v13];
    }

    else if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011C624();
    }

    v20 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    v21 = self->_temporarySelfIdentityTimer;
    self->_temporarySelfIdentityTimer = v20;
    v22 = v20;

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100070D5C;
    v23[3] = &unk_1001AB488;
    v23[4] = v22;
    v23[5] = self;
    dispatch_source_set_event_handler(v22, v23);
    CUDispatchTimerSetEx();
    dispatch_activate(v22);
    [(RPIdentityDaemon *)self _postIdentitiesChangedNotification];
  }
}

- (BOOL)_stationaryDevice
{
  DeviceClass = GestaltGetDeviceClass();
  v3 = sub_10001BA9C(DeviceClass);
  v4 = GestaltCopyAnswer();
  if ([v4 containsString:@"Mac"])
  {
    v5 = MGGetBoolAnswer() ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v6 = v3 | v5;

  return v6 & 1;
}

- (unsigned)_updateSelfIdentityPrivate:(id)private create:(BOOL)create
{
  privateCopy = private;
  v7 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
  localDeviceInfo = [v7 localDeviceInfo];
  accountAltDSID = [localDeviceInfo accountAltDSID];

  if (accountAltDSID && ([privateCopy accountAltDSID], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    [privateCopy setAccountAltDSID:accountAltDSID];
    v11 = 0x2000000;
  }

  else
  {
    v11 = 0;
  }

  v12 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
  localDeviceInfo2 = [v12 localDeviceInfo];
  accountID = [localDeviceInfo2 accountID];

  if (accountID)
  {
    accountID2 = [privateCopy accountID];

    if (!accountID2)
    {
      [privateCopy setAccountID:accountID];
      v11 |= 0x2000u;
    }
  }

  idsDeviceID = [privateCopy idsDeviceID];
  v17 = +[RPCloudDaemon sharedCloudDaemon];
  idsDeviceIDSelf = [v17 idsDeviceIDSelf];

  if (!idsDeviceIDSelf)
  {
LABEL_16:
    deviceIRKData = [privateCopy deviceIRKData];
    v29 = [deviceIRKData length];

    if (v29 != 16)
    {
      v30 = NSRandomData();
      [privateCopy setDeviceIRKData:v30];

      v11 |= 4u;
    }

    edPKData = [privateCopy edPKData];
    if ([edPKData length] == 32)
    {
      edSKData = [privateCopy edSKData];
      if ([edSKData length] == 32)
      {

        goto LABEL_25;
      }

      v33 = +[RPIdentity _sepBackedIdentityEnabled];
    }

    else
    {
      v33 = +[RPIdentity _sepBackedIdentityEnabled];
    }

    if ((v33 & 1) == 0)
    {
      cced25519_make_key_pair_compat();
      v34 = [[NSData alloc] initWithBytes:v56 length:32];
      [privateCopy setEdPKData:v34];

      v35 = [[NSData alloc] initWithBytes:v55 length:32];
      [privateCopy setEdSKData:v35];

      v11 |= 0x18u;
    }

LABEL_25:
    featureFlags = [privateCopy featureFlags];
    DeviceClass = GestaltGetDeviceClass();
    v38 = DeviceClass & 0xFFFFFFFD;
    v41 = DeviceClass == 2 || DeviceClass == 100 || v38 == 1;
    v42 = DeviceClass - 1 < 3 || DeviceClass == 100;
    if (DeviceClass <= 6 && ((1 << DeviceClass) & 0x4E) != 0 || DeviceClass == 100)
    {
      v42 |= 2uLL;
    }

    v43 = v42 | 0x40;
    if (DeviceClass == 11)
    {
      v41 = 1;
    }

    else
    {
      v43 = v42;
    }

    if (v38 == 1)
    {
      v44 = v43 | 0x80;
    }

    else
    {
      v44 = v43;
    }

    v45 = v44 | 0x18;
    if (v41)
    {
      v46 = v45;
    }

    else
    {
      v46 = v42;
    }

    if (v46 && v46 != featureFlags)
    {
      [privateCopy setFeatureFlags:?];
      v11 |= 0x400u;
    }

    if ([(RPIdentityDaemon *)self _stationaryDevice])
    {
      btIRKData = [privateCopy btIRKData];
      if ([btIRKData length] == 16)
      {
        btAddress = [privateCopy btAddress];
        v49 = [btAddress length];

        if (v49 == 7)
        {
          goto LABEL_56;
        }
      }

      else
      {
      }

      getNonConnectableIdentity = [(CBPeripheralManager *)self->_peripheralManager getNonConnectableIdentity];
      v51 = [getNonConnectableIdentity objectForKeyedSubscript:@"kCBMsgArgIdentityIRK"];
      [privateCopy setBtIRKData:v51];

      v52 = [getNonConnectableIdentity objectForKeyedSubscript:@"kCBMsgArgIdentityAddress"];
      [privateCopy setBtAddress:v52];

      v11 |= 0xC00000u;
LABEL_60:
      if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
      {
        sub_10011C65C();
      }

      goto LABEL_63;
    }

LABEL_56:
    if (!v11)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v19 = idsDeviceIDSelf;
  createCopy = create;
  v54 = accountID;
  v21 = accountAltDSID;
  selfCopy = self;
  v23 = v19;
  v24 = v19;
  v25 = idsDeviceID;
  v26 = v25;
  if (v24 == v25)
  {

    goto LABEL_15;
  }

  if (v25)
  {
    v27 = [v24 isEqual:v25];

    if (v27)
    {
LABEL_15:
      self = selfCopy;
      accountAltDSID = v21;
      accountID = v54;
      idsDeviceIDSelf = v23;
      goto LABEL_16;
    }

    if (createCopy)
    {
LABEL_13:
      [privateCopy setIdsDeviceID:v24];
      v11 |= 0x40u;
      goto LABEL_15;
    }
  }

  else
  {

    if (create)
    {
      goto LABEL_13;
    }
  }

  if (dword_1001D3F50 > 60)
  {
    v11 = 1;
    accountAltDSID = v21;
    accountID = v54;
    idsDeviceIDSelf = v23;
  }

  else
  {
    accountAltDSID = v21;
    idsDeviceIDSelf = v23;
    if (dword_1001D3F50 != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }

    v11 = 1;
    accountID = v54;
  }

LABEL_63:

  return v11;
}

- (unsigned)_updateSelfIdentityPublic:(id)public privateIdentity:(id)identity
{
  publicCopy = public;
  identityCopy = identity;
  v7 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
  localDeviceInfo = [v7 localDeviceInfo];

  accountAltDSID = [localDeviceInfo accountAltDSID];
  if (accountAltDSID && ([publicCopy accountAltDSID], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    [publicCopy setAccountAltDSID:accountAltDSID];
    v11 = 0x2000000;
  }

  else
  {
    v11 = 0;
  }

  accountID = [localDeviceInfo accountID];
  if (accountID)
  {
    accountID2 = [publicCopy accountID];

    if (!accountID2)
    {
      [publicCopy setAccountID:accountID];
      v11 |= 0x2000u;
    }
  }

  deviceIRKData = [identityCopy deviceIRKData];
  if (deviceIRKData)
  {
    deviceIRKData2 = [publicCopy deviceIRKData];
    v16 = deviceIRKData;
    v17 = v16;
    if (deviceIRKData2 == v16)
    {

      goto LABEL_16;
    }

    if (deviceIRKData2)
    {
      v18 = [deviceIRKData2 isEqual:v16];

      if (v18)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    [publicCopy setDeviceIRKData:v17];
    v11 |= 4u;
  }

LABEL_16:
  edPKData = [identityCopy edPKData];
  v67 = edPKData;
  if (edPKData)
  {
    v20 = edPKData;
    edPKData2 = [publicCopy edPKData];
    v22 = v20;
    v23 = v22;
    if (edPKData2 == v22)
    {
    }

    else
    {
      if (edPKData2)
      {
        v24 = [edPKData2 isEqual:v22];

        if (v24)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }

      [publicCopy setEdPKData:v23];
      v11 |= 8u;
    }
  }

LABEL_24:
  featureFlags = [identityCopy featureFlags];
  if (featureFlags)
  {
    v26 = featureFlags;
    if ([publicCopy featureFlags] != featureFlags)
    {
      [publicCopy setFeatureFlags:v26];
      v11 |= 0x400u;
    }
  }

  mediaRemoteIdentifier = [localDeviceInfo mediaRemoteIdentifier];
  v66 = mediaRemoteIdentifier;
  if ([mediaRemoteIdentifier length])
  {
    mediaRemoteID = [publicCopy mediaRemoteID];
    v29 = mediaRemoteIdentifier;
    v30 = v29;
    if (mediaRemoteID == v29)
    {

      goto LABEL_35;
    }

    if ((v29 == 0) == (mediaRemoteID != 0))
    {
    }

    else
    {
      v31 = [mediaRemoteID isEqual:v29];

      if (v31)
      {
        goto LABEL_35;
      }
    }

    [publicCopy setMediaRemoteID:v30];
    v11 |= 0x10000u;
  }

LABEL_35:
  mediaRouteIdentifier = [localDeviceInfo mediaRouteIdentifier];
  v65 = mediaRouteIdentifier;
  if (![mediaRouteIdentifier length])
  {
    goto LABEL_43;
  }

  mediaRouteID = [publicCopy mediaRouteID];
  v34 = mediaRouteIdentifier;
  v35 = v34;
  if (mediaRouteID == v34)
  {

    goto LABEL_43;
  }

  if ((v34 == 0) == (mediaRouteID != 0))
  {

    goto LABEL_42;
  }

  v36 = [mediaRouteID isEqual:v34];

  if ((v36 & 1) == 0)
  {
LABEL_42:
    [publicCopy setMediaRouteID:v35];
    v11 |= 0x20000u;
  }

LABEL_43:
  v69 = accountID;
  v37 = GestaltCopyAnswer();
  v64 = v37;
  if (!v37)
  {
    goto LABEL_51;
  }

  v38 = v37;
  model = [publicCopy model];
  v40 = v38;
  v41 = v40;
  if (model == v40)
  {

    goto LABEL_51;
  }

  if (!model)
  {

    goto LABEL_50;
  }

  v42 = [model isEqual:v40];

  if ((v42 & 1) == 0)
  {
LABEL_50:
    [publicCopy setModel:v41];
    v11 |= 0x80u;
  }

LABEL_51:
  v68 = deviceIRKData;
  v43 = GestaltCopyAnswer();
  if (!v43)
  {
    goto LABEL_59;
  }

  name = [publicCopy name];
  v45 = v43;
  v46 = v45;
  if (name == v45)
  {

    goto LABEL_59;
  }

  if (!name)
  {

    goto LABEL_58;
  }

  v47 = [name isEqual:v45];

  if ((v47 & 1) == 0)
  {
LABEL_58:
    [publicCopy setName:v46];
    v11 |= 0x100u;
  }

LABEL_59:
  btIRKData = [identityCopy btIRKData];
  if (!btIRKData)
  {
    goto LABEL_68;
  }

  v49 = v11;
  btIRKData2 = [publicCopy btIRKData];
  v51 = btIRKData;
  v52 = v51;
  if (btIRKData2 == v51)
  {

    goto LABEL_65;
  }

  if (btIRKData2)
  {
    v53 = [btIRKData2 isEqual:v51];

    if ((v53 & 1) == 0)
    {
      goto LABEL_67;
    }

LABEL_65:
    v11 = v49;
    goto LABEL_68;
  }

LABEL_67:
  [publicCopy setBtIRKData:v52];
  v11 = v49 | 0x400000;
LABEL_68:
  btAddress = [identityCopy btAddress];
  if (btAddress)
  {
    v55 = v11;
    btAddress2 = [publicCopy btAddress];
    v57 = btAddress;
    v58 = v57;
    if (btAddress2 != v57)
    {
      v63 = accountAltDSID;
      v59 = identityCopy;
      v60 = localDeviceInfo;
      if (btAddress2)
      {
        v61 = [btAddress2 isEqual:v57];

        if (v61)
        {
          localDeviceInfo = v60;
          identityCopy = v59;
          accountAltDSID = v63;
LABEL_74:
          v11 = v55;
          goto LABEL_77;
        }
      }

      else
      {
      }

      [publicCopy setBtAddress:v58];
      v11 = v55 | 0x800000;
      localDeviceInfo = v60;
      identityCopy = v59;
      accountAltDSID = v63;
      goto LABEL_77;
    }

    goto LABEL_74;
  }

LABEL_77:

  return v11;
}

- (__SecKey)_sepLoadSelfPrivateKey
{
  if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011C6A4();
  }

  v7[0] = kSecClass;
  v7[1] = kSecAttrKeyType;
  v8[0] = kSecClassKey;
  v8[1] = kSecAttrKeyTypeEd25519;
  v7[2] = kSecAttrAccessGroup;
  v7[3] = kSecAttrApplicationTag;
  v8[2] = @"com.apple.rapport";
  v8[3] = @"com.apple.rapport.SelfSEPIdentity";
  v7[4] = kSecReturnRef;
  v8[4] = &__kCFBooleanTrue;
  v2 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:5];
  v6 = 0;
  v3 = SecItemCopyMatching(v2, &v6);
  if (!v6 && v3 && dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011C6C0();
  }

  v4 = v6;

  return v4;
}

- (__SecKey)_sepGenerateSelfPrivateKey
{
  if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011C700();
  }

  v2 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, 0x40000000uLL, 0);
  v11[0] = kSecAttrKeyType;
  v11[1] = kSecAttrKeySizeInBits;
  v12[0] = kSecAttrKeyTypeEd25519;
  v12[1] = &off_1001B7F60;
  v12[2] = kSecAttrTokenIDSecureEnclave;
  v11[2] = kSecAttrTokenID;
  v11[3] = kSecPrivateKeyAttrs;
  v9[0] = kSecAttrIsPermanent;
  v9[1] = kSecAttrAccessControl;
  v10[0] = &__kCFBooleanTrue;
  v10[1] = v2;
  v9[2] = kSecAttrAccessGroup;
  v9[3] = kSecAttrApplicationTag;
  v10[2] = @"com.apple.rapport";
  v10[3] = @"com.apple.rapport.SelfSEPIdentity";
  v3 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];
  v12[3] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];

  v8 = 0;
  v5 = SecKeyCreateRandomKey(v4, &v8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (!v5)
  {
    v6 = v8;
    if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011C71C();
    }
  }

  return v5;
}

- (void)_sepRemoveSelfPrivateKey:(__SecKey *)key
{
  if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011C75C();
  }

  v4 = kSecValueRef;
  v7[0] = kSecClass;
  v7[1] = kSecAttrAccessGroup;
  v8[0] = kSecClassKey;
  v8[1] = @"com.apple.rapport";
  v7[2] = kSecAttrApplicationTag;
  v7[3] = v4;
  v8[2] = @"com.apple.rapport.SelfSEPIdentity";
  v8[3] = key;
  keyCopy = key;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];

  if (SecItemDelete(v6) && dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011C79C();
  }
}

- (void)_enumerateIdentitiesWithFlag:(unsigned int)flag usingBlock:(id)block
{
  flagCopy = flag;
  blockCopy = block;
  v72 = 0;
  if ((flagCopy & 2) != 0)
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v7 = self->_sameAccountDeviceIdentities;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v68 objects:v80 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v69;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v69 != v10)
        {
          objc_enumerationMutation(v7);
        }

        blockCopy[2](blockCopy, *(*(&v68 + 1) + 8 * v11), &v72);
        if (v72)
        {
          goto LABEL_80;
        }

        if (v9 == ++v11)
        {
          v9 = [(NSArray *)v7 countByEnumeratingWithState:&v68 objects:v80 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  if ((flagCopy & 0x100) != 0)
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v7 = [(RPIdentityDaemon *)self identitiesOfType:9 error:0];
    v12 = [(NSArray *)v7 countByEnumeratingWithState:&v64 objects:v79 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v65;
LABEL_14:
      v15 = 0;
      while (1)
      {
        if (*v65 != v14)
        {
          objc_enumerationMutation(v7);
        }

        blockCopy[2](blockCopy, *(*(&v64 + 1) + 8 * v15), &v72);
        if (v72)
        {
          goto LABEL_80;
        }

        if (v13 == ++v15)
        {
          v13 = [(NSArray *)v7 countByEnumeratingWithState:&v64 objects:v79 count:16];
          if (v13)
          {
            goto LABEL_14;
          }

          break;
        }
      }
    }
  }

  if ((flagCopy & 8) != 0)
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v7 = [(RPIdentityDaemon *)self identitiesOfType:4 error:0];
    v16 = [(NSArray *)v7 countByEnumeratingWithState:&v60 objects:v78 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v61;
LABEL_24:
      v19 = 0;
      while (1)
      {
        if (*v61 != v18)
        {
          objc_enumerationMutation(v7);
        }

        blockCopy[2](blockCopy, *(*(&v60 + 1) + 8 * v19), &v72);
        if (v72)
        {
          goto LABEL_80;
        }

        if (v17 == ++v19)
        {
          v17 = [(NSArray *)v7 countByEnumeratingWithState:&v60 objects:v78 count:16];
          if (v17)
          {
            goto LABEL_24;
          }

          break;
        }
      }
    }
  }

  if ((flagCopy & 0x20) != 0)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v7 = [(RPIdentityDaemon *)self identitiesOfType:6 error:0];
    v20 = [(NSArray *)v7 countByEnumeratingWithState:&v56 objects:v77 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v57;
LABEL_34:
      v23 = 0;
      while (1)
      {
        if (*v57 != v22)
        {
          objc_enumerationMutation(v7);
        }

        blockCopy[2](blockCopy, *(*(&v56 + 1) + 8 * v23), &v72);
        if (v72)
        {
          goto LABEL_80;
        }

        if (v21 == ++v23)
        {
          v21 = [(NSArray *)v7 countByEnumeratingWithState:&v56 objects:v77 count:16];
          if (v21)
          {
            goto LABEL_34;
          }

          break;
        }
      }
    }
  }

  if ((flagCopy & 0x400) != 0)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v7 = [(RPIdentityDaemon *)self identitiesOfType:12 error:0];
    v24 = [(NSArray *)v7 countByEnumeratingWithState:&v52 objects:v76 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v53;
LABEL_44:
      v27 = 0;
      while (1)
      {
        if (*v53 != v26)
        {
          objc_enumerationMutation(v7);
        }

        blockCopy[2](blockCopy, *(*(&v52 + 1) + 8 * v27), &v72);
        if (v72)
        {
          goto LABEL_80;
        }

        if (v25 == ++v27)
        {
          v25 = [(NSArray *)v7 countByEnumeratingWithState:&v52 objects:v76 count:16];
          if (v25)
          {
            goto LABEL_44;
          }

          break;
        }
      }
    }
  }

  if ((flagCopy & 0x80) != 0)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v7 = [(RPIdentityDaemon *)self identitiesOfType:8 error:0];
    v28 = [(NSArray *)v7 countByEnumeratingWithState:&v48 objects:v75 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v49;
LABEL_54:
      v31 = 0;
      while (1)
      {
        if (*v49 != v30)
        {
          objc_enumerationMutation(v7);
        }

        blockCopy[2](blockCopy, *(*(&v48 + 1) + 8 * v31), &v72);
        if (v72)
        {
          goto LABEL_80;
        }

        if (v29 == ++v31)
        {
          v29 = [(NSArray *)v7 countByEnumeratingWithState:&v48 objects:v75 count:16];
          if (v29)
          {
            goto LABEL_54;
          }

          break;
        }
      }
    }
  }

  if ((flagCopy & 0x800) != 0)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v7 = [(RPIdentityDaemon *)self identitiesOfType:13 error:0];
    v32 = [(NSArray *)v7 countByEnumeratingWithState:&v44 objects:v74 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v45;
LABEL_64:
      v35 = 0;
      while (1)
      {
        if (*v45 != v34)
        {
          objc_enumerationMutation(v7);
        }

        blockCopy[2](blockCopy, *(*(&v44 + 1) + 8 * v35), &v72);
        if (v72)
        {
          goto LABEL_80;
        }

        if (v33 == ++v35)
        {
          v33 = [(NSArray *)v7 countByEnumeratingWithState:&v44 objects:v74 count:16];
          if (v33)
          {
            goto LABEL_64;
          }

          break;
        }
      }
    }
  }

  if ((flagCopy & 0x4000) != 0)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v7 = [(RPIdentityDaemon *)self identitiesOfType:15 error:0, 0];
    v36 = [(NSArray *)v7 countByEnumeratingWithState:&v40 objects:v73 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v41;
LABEL_74:
      v39 = 0;
      while (1)
      {
        if (*v41 != v38)
        {
          objc_enumerationMutation(v7);
        }

        blockCopy[2](blockCopy, *(*(&v40 + 1) + 8 * v39), &v72);
        if (v72)
        {
          break;
        }

        if (v37 == ++v39)
        {
          v37 = [(NSArray *)v7 countByEnumeratingWithState:&v40 objects:v73 count:16];
          if (v37)
          {
            goto LABEL_74;
          }

          break;
        }
      }
    }

LABEL_80:
  }
}

- (void)addSharedHomeIdentityWithRPMessage:(id)message
{
  messageCopy = message;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  CFStringGetTypeID();
  v5 = CFDictionaryGetTypedValue();
  if (v5)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v6 = self->_sharedHomeExtraDeviceIdentities;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v44;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v43 + 1) + 8 * v10);
        identifier = [v11 identifier];
        v13 = [identifier isEqual:v5];

        if (v13)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v43 objects:v48 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v14 = v11;

      if (!v14)
      {
        goto LABEL_13;
      }

      [v14 updateWithRPMessage:messageCopy error:0];
    }

    else
    {
LABEL_10:

LABEL_13:
      v14 = objc_alloc_init(RPIdentity);
      [v14 setIdentifier:v5];
      [v14 setType:9];
      [v14 updateWithRPMessage:messageCopy error:0];
      sharedHomeExtraDeviceIdentities = self->_sharedHomeExtraDeviceIdentities;
      if (!sharedHomeExtraDeviceIdentities)
      {
        v16 = objc_alloc_init(NSMutableArray);
        v17 = self->_sharedHomeExtraDeviceIdentities;
        self->_sharedHomeExtraDeviceIdentities = v16;

        sharedHomeExtraDeviceIdentities = self->_sharedHomeExtraDeviceIdentities;
      }

      [(NSMutableArray *)sharedHomeExtraDeviceIdentities addObject:v14];
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    selfCopy = self;
    v18 = self->_sharedHomeDeviceIdentities;
    v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v40;
LABEL_18:
      v22 = messageCopy;
      v23 = 0;
      while (1)
      {
        if (*v40 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v39 + 1) + 8 * v23);
        identifier2 = [v24 identifier];
        v26 = [identifier2 isEqual:v5];

        if (v26)
        {
          break;
        }

        if (v20 == ++v23)
        {
          v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
          messageCopy = v22;
          if (v20)
          {
            goto LABEL_18;
          }

          goto LABEL_24;
        }
      }

      v27 = v24;

      messageCopy = v22;
      if (!v27)
      {
        goto LABEL_30;
      }

      v28 = [v27 updateWithRPMessage:v22 error:0];
      v29 = selfCopy;
      if (v28)
      {
        if (dword_1001D3F50 <= 30)
        {
          v30 = v28;
          if (dword_1001D3F50 != -1 || _LogCategory_Initialize())
          {
            v36 = v30;
            v37 = &unk_1001487B7;
            v35 = v14;
            LogPrintF();
          }
        }

        goto LABEL_37;
      }
    }

    else
    {
LABEL_24:

LABEL_30:
      v29 = selfCopy;
      sharedHomeDeviceIdentities = selfCopy->_sharedHomeDeviceIdentities;
      if (!sharedHomeDeviceIdentities)
      {
        v32 = objc_alloc_init(NSMutableArray);
        v33 = selfCopy->_sharedHomeDeviceIdentities;
        selfCopy->_sharedHomeDeviceIdentities = v32;

        sharedHomeDeviceIdentities = selfCopy->_sharedHomeDeviceIdentities;
      }

      [(NSMutableArray *)sharedHomeDeviceIdentities addObject:v14];
      if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
      {
        v35 = v14;
        LogPrintF();
      }

      v27 = 0;
LABEL_37:
      v34 = [RPDaemon sharedDaemon:v35];
      [v34 postDaemonInfoChanges:512];

      [(RPIdentityDaemon *)v29 _postIdentitiesChangedNotification];
    }
  }
}

- (void)addSessionPairedIdentity:(id)identity
{
  identityCopy = identity;
  if (identityCopy)
  {
    sub_100003DA4();
    v6[1] = 3221225472;
    v6[2] = sub_10006D9B4;
    v6[3] = &unk_1001AB488;
    v6[4] = self;
    v7 = identityCopy;
    dispatch_async(v3, v6);
  }
}

- (void)addOrUpdateAdHocPairedIdentity:(id)identity
{
  identityCopy = identity;
  if (identityCopy)
  {
    sub_100003DA4();
    v6[1] = 3221225472;
    v6[2] = sub_10006E188;
    v6[3] = &unk_1001AB488;
    v7 = identityCopy;
    selfCopy = self;
    dispatch_async(v3, v6);
  }
}

@end