@interface RPIdentityDaemon
+ (id)sharedIdentityDaemon;
- (BOOL)_removeSameAccountIdentityWithIDSIdentifier:(id)a3 error:(id *)a4;
- (BOOL)_stationaryDevice;
- (BOOL)diagnosticCommand:(id)a3 params:(id)a4;
- (BOOL)removeIdentity:(id)a3 error:(id *)a4;
- (BOOL)saveIdentity:(id)a3 error:(id *)a4;
- (BOOL)saveIdentityWithIDSDeviceID:(id)a3 message:(id)a4 error:(id *)a5;
- (RPIdentityDaemon)init;
- (__SecKey)_sepGenerateSelfPrivateKey;
- (__SecKey)_sepLoadSelfPrivateKey;
- (id)_dedupeSameAccountDeviceIdentities:(id)a3;
- (id)_identitiesOfType:(int)a3 error:(id *)a4;
- (id)descriptionWithLevel:(int)a3;
- (id)getIdentitiesWithFlags:(unsigned int)a3;
- (id)identityOfSelfAndReturnError:(id *)a3;
- (id)identityOfTemporarySelfAndReturnError:(id *)a3;
- (id)resolveIdentitiesForBonjourDevice:(id)a3 typeFlags:(unsigned int)a4;
- (id)resolveIdentityForBonjourDevice:(id)a3 typeFlags:(unsigned int)a4;
- (id)resolveIdentityForNearFieldMessagePayload:(id)a3;
- (id)resolveIdentityForSignature:(id)a3 data:(id)a4 typeFlags:(unsigned int)a5 error:(id *)a6;
- (id)resolveIdentityForTempAuthTagData:(id)a3 bluetoothAddressData:(id)a4;
- (id)sameAccountDeviceIDs;
- (unint64_t)featureFlagsForIdentityMatchingIDSDeviceIdentifier:(id)a3;
- (unsigned)_updateSelfIdentityPrivate:(id)a3 create:(BOOL)a4;
- (unsigned)_updateSelfIdentityPublic:(id)a3 privateIdentity:(id)a4;
- (unsigned)resolveIdentityTypesForSignature:(id)a3 data:(id)a4 typeFlags:(unsigned int)a5;
- (void)_activate;
- (void)_ensureStarted;
- (void)_ensureStopped;
- (void)_enumerateIdentitiesWithFlag:(unsigned int)a3 usingBlock:(id)a4;
- (void)_invalidate;
- (void)_invalidated;
- (void)_loadSelfIdentity:(BOOL)a3;
- (void)_loadTemporarySelfIdentity;
- (void)_postIdentitiesChangedNotification;
- (void)_pruneStaleAdHocPairedDeviceIdentities;
- (void)_removeSelfIdentityPublicWithPrivateIdentity:(id)a3;
- (void)_saveSelfIdentityPrivate:(id)a3;
- (void)_saveSelfIdentityPublicWithPrivateIdentity:(id)a3 force:(BOOL)a4;
- (void)_sepRemoveSelfPrivateKey:(__SecKey *)a3;
- (void)_triggerKeychainRefetch;
- (void)_update;
- (void)_updatePairedDeviceIdentities;
- (void)_updateSameAccountIdentities;
- (void)activate;
- (void)addOrUpdateAdHocPairedIdentity:(id)a3;
- (void)addSelfIdentityInfoToMessage:(id)a3 flags:(unsigned int)a4;
- (void)addSessionPairedIdentity:(id)a3;
- (void)addSharedHomeIdentityWithRPMessage:(id)a3;
- (void)daemonInfoChanged:(unint64_t)a3;
- (void)getPairedIdentityWithCompletion:(id)a3;
- (void)getPairingIdentityFromHomeWithAccessory:(id)a3 completion:(id)a4;
- (void)invalidate;
- (void)isContactValidForIdentity:(id)a3 completionBlock:(id)a4;
- (void)prefsChanged;
- (void)regenerateSelfIdentity:(id)a3;
- (void)regenerateTemporarySelfIdentity;
- (void)removeAdHocPairedIdentityWithIdentifier:(id)a3;
- (void)removeAllAdHocPairedIdentities;
- (void)removeSessionPairedIdentityWithIdentifier:(id)a3;
- (void)resolvableAccessoriesUpdated:(id)a3;
- (void)setHomeKitIdentity:(id)a3;
- (void)updateSessionPairedIdentity:(id)a3;
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
      v6 = [v5 dateAdded];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 dateByAddingTimeInterval:604800.0];
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
  v2 = self;
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
  v5 = v2->_sameAccountDeviceIdentities;
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
        v12 = v2;
        v13 = v2->_sameAccountDeviceIdentities;
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
                  v2 = v12;
                  if (dword_1001D3F50 != -1 || _LogCategory_Initialize())
                  {
                    sub_10011C090();
                  }
                }

                else
                {
                  v2 = v12;
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
          v2 = v12;
        }

        else
        {
          v2 = v12;
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
  v21 = v2->_sameAccountDeviceIdentities;
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
  if (!v2->_sameAccountDeviceIdentities)
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
  v31 = [(RPIdentityDaemon *)v2 _dedupeSameAccountDeviceIdentities:obj, v34, v35, v36, v37];
  sameAccountDeviceIdentities = v2->_sameAccountDeviceIdentities;
  v2->_sameAccountDeviceIdentities = v31;

  if (v30)
  {
    v33 = +[RPDaemon sharedDaemon];
    [v33 postDaemonInfoChanges:8];

    [(RPIdentityDaemon *)v2 _postIdentitiesChangedNotification];
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

- (id)descriptionWithLevel:(int)a3
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
  v9 = [(RPIdentityDaemon *)self identityOfTemporarySelfAndReturnError:v179, v103];
  v10 = v179[0];

  v123 = v9;
  if (v9)
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
  v126 = self;
  v12 = self->_sameAccountDeviceIdentities;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v173 objects:v190 count:16, v104];
  if (v13)
  {
    v14 = v13;
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

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v173 objects:v190 count:16, v105];
    }

    while (v14);
  }

  v172[0] = v10;
  v19 = self;
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
      v19 = self;
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
  v29 = [(RPIdentityDaemon *)v19 identitiesOfType:4 error:v167];
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
      v19 = self;
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
  v38 = [(RPIdentityDaemon *)v19 identitiesOfType:5 error:v162];
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
      v19 = self;
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
  v47 = [(RPIdentityDaemon *)v19 identitiesOfType:6 error:v157];
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
      v19 = self;
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
  v56 = [(RPIdentityDaemon *)v19 identitiesOfType:8 error:v152];
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
      v19 = self;
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
  v65 = [(RPIdentityDaemon *)v19 identitiesOfType:9 error:v147];
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
      v19 = self;
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
  v74 = [(RPIdentityDaemon *)v19 identitiesOfType:12 error:v142];
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
      v19 = v126;
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
  v83 = [(RPIdentityDaemon *)v19 identitiesOfType:13 error:v137];
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
      v19 = v126;
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
  v92 = [(RPIdentityDaemon *)v19 identitiesOfType:15 error:v132];
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

- (void)daemonInfoChanged:(unint64_t)a3
{
  v3 = a3;
  if ((a3 & 0x10) != 0)
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
    if ((v3 & 0x40) == 0)
    {
LABEL_3:
      if ((v3 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_14:
      [(RPIdentityDaemon *)self _updateSameAccountIdentities];
      if ((v3 & 0x20000) == 0)
      {
        return;
      }

      goto LABEL_15;
    }
  }

  else if ((a3 & 0x40) == 0)
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
  if (v3)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((v3 & 0x20000) == 0)
  {
    return;
  }

LABEL_15:
  v7 = [(RPIdentity *)self->_selfIdentityCache idsDeviceID];

  if (v7)
  {
    v8 = self->_selfIdentityCache;

    [(RPIdentityDaemon *)self _saveSelfIdentityPublicWithPrivateIdentity:v8 force:0];
  }
}

- (BOOL)diagnosticCommand:(id)a3 params:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([v6 isEqual:@"KeychainRefetch"])
  {
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011ACA0();
    }

    [(RPIdentityDaemon *)self _triggerKeychainRefetch];
    goto LABEL_29;
  }

  if ([v6 isEqual:@"SelfIdentityLoad"])
  {
    [(RPIdentityDaemon *)self _loadSelfIdentity:0];
LABEL_29:
    LOBYTE(v8) = 1;
    goto LABEL_30;
  }

  if ([v6 isEqual:@"SelfIdentitySave"])
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

  if ([v6 isEqual:@"SelfIdentityRemove"])
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

  if (![v6 isEqual:@"SelfIdentityRotate"])
  {
    if ([v6 isEqual:@"SameAccountIdentityRemove"])
    {
      v8 = [v7 objectForKey:@"idsIdentifier"];
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

- (void)regenerateSelfIdentity:(id)a3
{
  v4 = a3;
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

- (void)setHomeKitIdentity:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  homeKitIdentity = self->_homeKitIdentity;
  self->_homeKitIdentity = v4;
}

- (void)resolvableAccessoriesUpdated:(id)a3
{
  v4 = a3;
  v41 = self;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v42 = objc_alloc_init(NSMutableArray);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v5 = v4;
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
        v11 = [v10 uniqueIdentifier];
        v12 = [v11 UUIDString];

        if (v12)
        {
          v13 = [v10 device];
          v14 = [v13 rapportIRK];
          v15 = [v14 data];

          if ([v15 length])
          {
            v16 = [v10 home];
            v17 = [v16 currentUser];
            if (!v17 || ([v16 homeAccessControlForUser:v17], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isOwner"), v18, (v19 & 1) == 0))
            {
              v46 = v17;
              v47 = v15;
              v48 = v12;
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v20 = [v16 users];
              v21 = [v20 countByEnumeratingWithState:&v53 objects:v62 count:16];
              if (v21)
              {
                v22 = *v54;
LABEL_12:
                v23 = 0;
                while (1)
                {
                  if (*v54 != v22)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v24 = *(*(&v53 + 1) + 8 * v23);
                  v25 = [v16 homeAccessControlForUser:v24];
                  v26 = [v25 isOwner];

                  if (v26)
                  {
                    break;
                  }

                  if (v21 == ++v23)
                  {
                    v21 = [v20 countByEnumeratingWithState:&v53 objects:v62 count:16];
                    if (v21)
                    {
                      goto LABEL_12;
                    }

                    v27 = 0;
                    v8 = v43;
                    v7 = v44;
                    goto LABEL_29;
                  }
                }

                v27 = [v24 userID];
                v21 = [v24 uniqueIdentifier];

                if (!v27)
                {
                  v8 = v43;
                  v7 = v44;
                  goto LABEL_31;
                }

                v20 = objc_alloc_init(RPIdentity);
                [v20 setAccountID:v27];
                [v20 setDeviceIRKData:v47];
                [v20 setHomeKitUserIdentifier:v21];
                [v20 setIdentifier:v48];
                [v20 setIdsDeviceID:v48];
                v28 = [v10 name];
                [v20 setName:v28];

                [v20 setType:9];
                v29 = [v10 homePodVariant];
                v30 = @"AudioAccessory1,1";
                v8 = v43;
                v7 = v44;
                if (v29 == 1 || (v31 = [v10 homePodVariant], v30 = @"AudioAccessory5,1", v31 == 2) || (v32 = objc_msgSend(v10, "homePodVariant", @"AudioAccessory5,1"), v30 = @"AudioAccessory6,1", v32 == 3))
                {
                  [v20 setModel:v30];
                }

                [v42 addObject:v20];
                if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
                {
                  sub_10011AEB4();
                }
              }

              else
              {
                v27 = 0;
              }

LABEL_29:

LABEL_31:
              v15 = v47;
              v12 = v48;
              v17 = v46;
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
  p_isa = &v41->super.isa;
  v34 = v41->_sharedHomeExtraDeviceIdentities;
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

        [v42 addObject:{*(*(&v49 + 1) + 8 * v38), v41}];
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

- (id)resolveIdentitiesForBonjourDevice:(id)a3 typeFlags:(unsigned int)a4
{
  v6 = a3;
  v7 = 0;
  if (a4)
  {
    do
    {
      v8 = a4 & -a4;
      if (!v8)
      {
        break;
      }

      v9 = [(RPIdentityDaemon *)self resolveIdentityForBonjourDevice:v6 typeFlags:a4 & -a4];
      if (v9)
      {
        if (!v7)
        {
          v7 = objc_alloc_init(NSMutableArray);
        }

        [v7 addObject:v9];
      }

      v10 = v8 == a4;
      a4 ^= v8;
    }

    while (!v10);
  }

  return v7;
}

- (id)resolveIdentityForBonjourDevice:(id)a3 typeFlags:(unsigned int)a4
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) != 0)
  {
    v6 = [v5 txtDictionary];
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

- (id)resolveIdentityForSignature:(id)a3 data:(id)a4 typeFlags:(unsigned int)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  if ((v7 & 2) != 0 && self->_prefOwnerResolve)
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
          if ([v17 verifySignature:v10 data:v11 error:0])
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

  if ((v7 & 8) != 0 && self->_prefFamilyResolve)
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
          if ([v17 verifySignature:v10 data:v11 error:0])
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

  if ((v7 & 0x20) != 0 && self->_prefFriendResolve)
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
          if ([v17 verifySignature:v10 data:v11 error:0])
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

  if ((v7 & 0x400) != 0)
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
          if ([v17 verifySignature:v10 data:v11 error:0])
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

  if ((v7 & 0x80) != 0 && self->_prefPairedResolve)
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
          if ([v17 verifySignature:v10 data:v11 error:0])
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

  if ((v7 & 0x800) != 0)
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
          if ([v17 verifySignature:v10 data:v11 error:0])
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

  if ((v7 & 0x4000) != 0)
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
          if ([v43 verifySignature:v10 data:v11 error:0])
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
    if (a6)
    {
      goto LABEL_79;
    }
  }

  else if (a6)
  {
LABEL_79:
    RPErrorF();
    *a6 = v44 = 0;
    goto LABEL_108;
  }

  v44 = 0;
LABEL_108:

  return v44;
}

- (unsigned)resolveIdentityTypesForSignature:(id)a3 data:(id)a4 typeFlags:(unsigned int)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ((v5 & 2) == 0 || !self->_prefOwnerResolve)
  {
    LODWORD(v11) = 0;
    if ((v5 & 8) == 0)
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

        if ([*(*(&v62 + 1) + 8 * i) verifySignature:v8 data:v9 error:0])
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

  if ((v5 & 8) != 0)
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

            if ([*(*(&v58 + 1) + 8 * j) verifySignature:v8 data:v9 error:0])
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
  if ((v5 & 0x20) != 0 && self->_prefFriendResolve)
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

          if ([*(*(&v54 + 1) + 8 * k) verifySignature:v8 data:v9 error:0])
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

  if ((v5 & 0x400) != 0)
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

          if ([*(*(&v50 + 1) + 8 * m) verifySignature:v8 data:v9 error:0])
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

    if ((v5 & 0x800) == 0)
    {
LABEL_43:
      if ((v5 & 0x4000) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_67;
    }
  }

  else if ((v5 & 0x800) == 0)
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

        if ([*(*(&v46 + 1) + 8 * n) verifySignature:v8 data:v9 error:0])
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

  if ((v5 & 0x4000) != 0)
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
          if ([v39 verifySignature:v8 data:v9 error:&v41])
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

- (id)resolveIdentityForTempAuthTagData:(id)a3 bluetoothAddressData:(id)a4
{
  v6 = a3;
  v7 = a4;
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
        if ([v12 verifyAuthTag:v6 data:v7 type:2 error:0])
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

- (id)resolveIdentityForNearFieldMessagePayload:(id)a3
{
  v4 = a3;
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
  v5 = v4;
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
    v10 = [v19[5] firstObject];
    v9 = v25[5];
    v25[5] = v10;
  }

  v11 = v25[5];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v11;
}

- (void)isContactValidForIdentity:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if (v6 && ([v6 contactID], (v8 = objc_claimAutoreleasedReturnValue()) != 0) && (v9 = objc_msgSend(v6, "type"), v8, v9 == 6))
  {
    v10 = [v6 contactID];
    v11 = objc_alloc_init(off_1001D3FD0[0]());
    [v11 setContactIdentifier:v10];
    v12 = objc_alloc_init(off_1001D3FD8[0]());
    [v12 setDispatchQueue:self->_dispatchQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10006B3A8;
    v15[3] = &unk_1001ACE40;
    v13 = v12;
    v16 = v13;
    v17 = v6;
    v14 = v11;
    v18 = v14;
    v19 = self;
    v21 = &v22;
    v20 = v7;
    [v13 findContact:v14 completion:v15];
  }

  else
  {
    (*(v7 + 2))(v7, *(v23 + 24));
  }

  _Block_object_dispose(&v22, 8);
}

- (id)_identitiesOfType:(int)a3 error:(id *)a4
{
  v6 = a3 - 1;
  if ((a3 - 1) >= 0xF || ((0x48FFu >> v6) & 1) == 0)
  {
    v11 = RPErrorF();
    if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011B81C();
      if (!a4)
      {
        goto LABEL_12;
      }
    }

    else if (!a4)
    {
LABEL_12:

      goto LABEL_13;
    }

    v12 = v11;
    *a4 = v11;
    goto LABEL_12;
  }

  v8 = off_1001ACFF0[v6];
  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) == 0)
  {
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011B85C();
      if (a4)
      {
        goto LABEL_21;
      }
    }

    else if (a4)
    {
LABEL_21:
      RPErrorF();
      *a4 = v13 = 0;
      goto LABEL_14;
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  if (a3 == 12 || a3 == 2)
  {
    v9 = +[RPCloudDaemon sharedCloudDaemon];
    v70 = [v9 idsDeviceIDSelf];

    v10 = 3;
  }

  else
  {
    v70 = 0;
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
    v68 = self;
    v71 = a3;
    v22 = 0;
    v73 = kSecAttrViewHintHome;
    while (1)
    {
      v23 = [v74 objectAtIndexedSubscript:{v22, v60, v61, v62, v63}];
      v24 = v23;
      v72 = v23;
      if (v71 != 2)
      {
        goto LABEL_49;
      }

      v25 = [v23 viewHint];
      v26 = [v25 isEqual:v73];

      if (v26)
      {
        goto LABEL_49;
      }

      v66 = v19;
      v27 = [v24 identifier];
      v28 = [v24 type];
      v29 = [v24 metadata];
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
      v32 = [v31 viewHint];
      v33 = [v32 isEqual:v73];

      if (!v33)
      {
        goto LABEL_46;
      }

      v34 = [v31 identifier];
      v35 = v27;
      v36 = v35;
      if (v34 == v35)
      {
      }

      else
      {
        if ((v27 == 0) == (v34 != 0))
        {

LABEL_46:
          goto LABEL_47;
        }

        v37 = [v34 isEqual:v35];

        if (!v37)
        {
          goto LABEL_46;
        }
      }

      v38 = [v31 type];
      v39 = v28;
      v40 = v39;
      if (v38 == v39)
      {
      }

      else
      {
        if ((v28 == 0) == (v38 != 0))
        {

          goto LABEL_46;
        }

        v41 = [v38 isEqual:v39];

        if (!v41)
        {
          goto LABEL_46;
        }
      }

      v42 = [0 metadata];
      v43 = CFDictionaryGetInt64Ranged();

      if (Int64Ranged > v43)
      {
        [(RPIdentityDaemon *)v68 _triggerKeychainRefetch];
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
        v48 = [v47 localDeviceInfo];
        v49 = [v48 accountID];

        if (v49)
        {
          v50 = [v44 accountID];

          if (!v50)
          {
            [v44 setAccountID:v49];
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
        v51 = [v44 idsDeviceID];
        v52 = v51;
        if (!v70 || !v51 || [v51 caseInsensitiveCompare:v70])
        {
          v53 = +[RPCloudDaemon sharedCloudDaemon];
          v54 = [v53 idsDeviceMap];
          v55 = [v54 objectForKeyedSubscript:v52];

          if (v55)
          {
            v56 = [v55 modelIdentifier];
            if (v56)
            {
              [v44 setModel:v56];
            }

            v57 = [v55 name];
            if (v57)
            {
              [v44 setName:v57];
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

  if (a4)
  {
    v46 = v19;
    v59 = v19;
    v13 = 0;
    *a4 = v19;
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

- (id)getIdentitiesWithFlags:(unsigned int)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  if (v3)
  {
    v5 = +[RPIdentityDaemon sharedIdentityDaemon];
    v6 = [v5 identityOfSelfAndReturnError:0];

    if (v6)
    {
      [v4 addObject:v6];
    }

    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = +[RPIdentityDaemon sharedIdentityDaemon];
  v8 = [v7 identitiesOfType:2 error:0];

  if (v8)
  {
    [v4 addObjectsFromArray:v8];
  }

  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
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

  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
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

  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
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

  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x100) == 0)
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

  if ((v3 & 0x100) == 0)
  {
LABEL_8:
    if ((v3 & 0x400) == 0)
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

  if ((v3 & 0x400) == 0)
  {
LABEL_9:
    if ((v3 & 0x40) == 0)
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

  if ((v3 & 0x40) == 0)
  {
LABEL_10:
    if ((v3 & 0x80) == 0)
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

  if ((v3 & 0x80) == 0)
  {
LABEL_11:
    if ((v3 & 0x800) == 0)
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

  if ((v3 & 0x800) == 0)
  {
LABEL_12:
    if ((v3 & 0x2000) == 0)
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

  if ((v3 & 0x2000) == 0)
  {
LABEL_13:
    if ((v3 & 0x4000) == 0)
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

  if ((v3 & 0x4000) != 0)
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

  v6 = [(RPIdentity *)self->_selfIdentityCache idsDeviceID];

  if (v6)
  {
    v7 = [(RPIdentity *)self->_selfIdentityCache idsDeviceID];
    [v5 addObject:v7];
  }

  v8 = [v5 copy];

  return v8;
}

- (id)identityOfSelfAndReturnError:(id *)a3
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
      if (a3)
      {
        goto LABEL_9;
      }
    }

    else if (a3)
    {
LABEL_9:
      RPErrorF();
      *a3 = v5 = 0;
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

  else if (a3)
  {
    *a3 = RPErrorF();
  }

LABEL_15:

  return v5;
}

- (id)identityOfTemporarySelfAndReturnError:(id *)a3
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = self->_temporarySelfIdentityCache;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else if (a3)
  {
    *a3 = RPErrorF();
  }

  return v6;
}

- (unint64_t)featureFlagsForIdentityMatchingIDSDeviceIdentifier:(id)a3
{
  v4 = a3;
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
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v17 = v5;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v13 idsDeviceID];
        v15 = [v14 isEqualToString:v4];

        if (v15)
        {
          v10 = [v13 featureFlags];
          goto LABEL_11;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

LABEL_11:
    v5 = v17;
  }

  return v10;
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

- (void)getPairedIdentityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CUPairingManager);
  [v5 setDispatchQueue:self->_dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006CCC0;
  v7[3] = &unk_1001ACE90;
  v7[4] = v5;
  v8 = v4;
  v6 = v4;
  [v5 getPairingIdentityWithOptions:134 completion:v7];
}

- (void)getPairingIdentityFromHomeWithAccessory:(id)a3 completion:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
  v7 = [v6 rpHomeKitManager];

  if (v7)
  {
    [v7 getPairingIdentityFromHomeWithAccessory:v9 completionHandler:v5];
  }

  else
  {
    v8 = RPErrorF();
    v5[2](v5, 0, v8);
  }
}

- (void)addSelfIdentityInfoToMessage:(id)a3 flags:(unsigned int)a4
{
  v4 = a4;
  v6 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v21 = 0;
  v7 = [(RPIdentityDaemon *)self identityOfSelfAndReturnError:&v21];
  v8 = v21;
  if (v7)
  {
    v9 = [v7 deviceIRKData];
    if (v9)
    {
      [v6 setObject:v9 forKeyedSubscript:@"_dIRK"];
    }

    v10 = [v7 edPKData];
    if (v10)
    {
      [v6 setObject:v10 forKeyedSubscript:@"_edPK"];
    }

    if (v4)
    {
      v19 = [v7 featureFlags] & 0xF8;
      if (v19)
      {
        v20 = [NSNumber numberWithUnsignedLongLong:v19];
        [v6 setObject:v20 forKeyedSubscript:@"_ff"];
      }

      else
      {
        [v6 setObject:&off_1001B7F48 forKeyedSubscript:@"_ff"];
      }

      [v6 setObject:@"?" forKeyedSubscript:@"model"];
      [v6 setObject:@"?" forKeyedSubscript:@"model"];
    }

    else
    {
      v11 = [v7 btIRKData];
      if (v11)
      {
        [v6 setObject:v11 forKeyedSubscript:@"_bIRK"];
      }

      v12 = [v7 btAddress];
      if (v12)
      {
        [v6 setObject:v12 forKeyedSubscript:@"_bAdd"];
      }

      v13 = [v7 featureFlags];
      if (v13)
      {
        v14 = [NSNumber numberWithUnsignedLongLong:v13];
        [v6 setObject:v14 forKeyedSubscript:@"_ff"];
      }

      v15 = [v6 objectForKeyedSubscript:@"model"];

      if (!v15)
      {
        v16 = GestaltCopyAnswer();
        if (v16)
        {
          [v6 setObject:v16 forKeyedSubscript:@"model"];
        }
      }

      v17 = [v6 objectForKeyedSubscript:@"name"];

      if (!v17)
      {
        v18 = GestaltCopyAnswer();
        if (v18)
        {
          [v6 setObject:v18 forKeyedSubscript:@"name"];
        }
      }
    }
  }

  else if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011B934();
  }
}

- (BOOL)removeIdentity:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 type];
  if (v7 > 0x10)
  {
    v8 = "?";
  }

  else
  {
    v8 = off_1001AD0E0[v7];
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
      if (a4)
      {
        goto LABEL_20;
      }
    }

    else if (a4)
    {
LABEL_20:
      RPErrorF();
      *a4 = v17 = 0;
      goto LABEL_34;
    }

    v17 = 0;
    goto LABEL_34;
  }

  v10 = [v6 type];
  if (v10 == 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = 6;
  }

  if (v10 == 2)
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
  v14 = [v6 identifier];
  [v13 setIdentifier:v14];

  [v13 setSyncType:v12];
  v15 = [v6 type] - 1;
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

    if (a4)
    {
      v20 = v19;
      *a4 = v19;
    }
  }

LABEL_34:
  return v17;
}

- (BOOL)saveIdentity:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 type];
  if (v7 > 0x10)
  {
    v8 = "?";
  }

  else
  {
    v8 = off_1001AD0E0[v7];
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
      if (a4)
      {
        goto LABEL_19;
      }
    }

    else if (a4)
    {
LABEL_19:
      RPErrorF();
      *a4 = LOBYTE(v14) = 0;
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
  v11 = [v10 updateWithRPIdentity:v6 revisionUpdate:1 error:&v17];
  v12 = v17;
  if (v11)
  {
    if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (a4)
    {
      v15 = v12;
      LOBYTE(v14) = 0;
      *a4 = v12;
    }

    else
    {
      LOBYTE(v14) = 0;
    }
  }

  else
  {
    v13 = objc_alloc_init(CUKeychainManager);
    v14 = [v13 addOrUpdateOrReAddItem:v10 logCategory:&dword_1001D3F50 logLabel:v9 error:a4];
    if (v14)
    {
      if ([v6 type] == 2)
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

- (BOOL)saveIdentityWithIDSDeviceID:(id)a3 message:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
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
      v15 = [v14 identifier];
      v16 = [v15 isEqual:v7];

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
    [v17 setIdentifier:v7];
    [v17 setType:2];
    v18 = 1;
  }

  if ([v17 updateWithRPMessage:v8 error:0])
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  v20 = [v17 idsDeviceID];
  v21 = v7;
  v22 = v21;
  if (v20 == v21)
  {

    if (!v19)
    {
      goto LABEL_22;
    }

LABEL_25:
    v24 = [(RPIdentityDaemon *)self saveIdentity:v17 error:a5];
    goto LABEL_26;
  }

  if ((v21 == 0) == (v20 != 0))
  {

    goto LABEL_24;
  }

  v23 = [v20 isEqual:v21];

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

- (void)removeSessionPairedIdentityWithIdentifier:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006DC48;
  v7[3] = &unk_1001AB488;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)updateSessionPairedIdentity:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];

  if (v5)
  {
    dispatchQueue = self->_dispatchQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10006DF24;
    v7[3] = &unk_1001AB488;
    v7[4] = self;
    v8 = v4;
    dispatch_async(dispatchQueue, v7);
  }

  else if (dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011BB70();
  }
}

- (id)_dedupeSameAccountDeviceIdentities:(id)a3
{
  v3 = a3;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10006E728;
  v21[3] = &unk_1001ACE68;
  v4 = objc_opt_new();
  v22 = v4;
  [v3 enumerateObjectsUsingBlock:v21];
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
    v9 = [v7 allValues];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10006E90C;
    v16 = &unk_1001ACF08;
    v10 = v8;
    v17 = v10;
    [v9 enumerateObjectsUsingBlock:&v13];

    v11 = [v10 copy];
  }

  else
  {
    if (dword_1001D3F50 <= 30 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
    {
      sub_10011BC70();
    }

    v11 = v3;
  }

  return v11;
}

- (void)removeAdHocPairedIdentityWithIdentifier:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006EC40;
  v7[3] = &unk_1001AB488;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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
      v4 = [v3 initWithFormat:@"com.apple.security.view-change.%@", kSecAttrViewHintHome];
      v5 = [v4 UTF8String];
      dispatchQueue = self->_dispatchQueue;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10006F2B8;
      handler[3] = &unk_1001AAFE8;
      handler[4] = self;
      notify_register_dispatch(v5, &self->_homeViewChangeToken, dispatchQueue, handler);
      [(RPIdentityDaemon *)self _updateSameAccountIdentities];
    }

    if (self->_homeViewReadyToken == -1)
    {
      v7 = [NSString alloc];
      v8 = [v7 initWithFormat:@"com.apple.security.view-ready.%@", kSecAttrViewHintHome];
      v9 = [v8 UTF8String];
      v10 = self->_dispatchQueue;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10006F334;
      v13[3] = &unk_1001AAFE8;
      v13[4] = self;
      notify_register_dispatch(v9, &self->_homeViewReadyToken, v10, v13);
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

- (BOOL)_removeSameAccountIdentityWithIDSIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
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
    if (a4)
    {
LABEL_6:
      v12 = v9;
      *a4 = v9;
      v11 = v10;
    }
  }

  else
  {
    v25 = v7;
    v26 = a4;
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
          v21 = [v20 idsDeviceID];
          v22 = [v21 isEqualToString:v6];

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
    a4 = v26;

    v11 = v10;
    if (v26)
    {
      goto LABEL_6;
    }
  }

  return v11;
}

- (void)_loadSelfIdentity:(BOOL)a3
{
  v3 = a3;
  if (!+[RPIdentity _sepBackedIdentityEnabled])
  {
    v6 = 0;
    goto LABEL_11;
  }

  v5 = [(RPIdentity *)self->_selfIdentityCache sepPrivateKey];
  if (v5)
  {
    v6 = v5;
    CFRetain(v5);
    if (!v3)
    {
LABEL_9:
      if (v6)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v6 = [(RPIdentityDaemon *)self _sepLoadSelfPrivateKey];
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  [(RPIdentityDaemon *)self _sepRemoveSelfPrivateKey:v6];
  CFRelease(v6);
LABEL_10:
  v6 = [(RPIdentityDaemon *)self _sepGenerateSelfPrivateKey];
LABEL_11:
  if (!v3)
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
      v15 = [v12 updateWithSEPPrivateKey:v6];
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
  [v12 updateWithSEPPrivateKey:v6];
LABEL_38:
  if (v6)
  {
    CFRelease(v6);
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

- (void)_saveSelfIdentityPrivate:(id)a3
{
  v3 = a3;
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
  v5 = [v4 updateWithRPIdentity:v3 revisionUpdate:1 error:&v10];
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

- (void)_saveSelfIdentityPublicWithPrivateIdentity:(id)a3 force:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 idsDeviceID];
  if (v6)
  {
    v7 = objc_alloc_init(CUKeychainItem);
    [v7 setAccessGroup:@"com.apple.rapport"];
    [v7 setIdentifier:v6];
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

      v14 = [(RPIdentityDaemon *)self _updateSelfIdentityPublic:v12 privateIdentity:v5];
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
        [v12 setIdentifier:v6];
        [v12 setType:2];
        [v12 setSource:1];
        [(RPIdentityDaemon *)self _updateSelfIdentityPublic:v12 privateIdentity:v5];
        v14 = 2048;
        v13 = v11;
LABEL_24:
        if (v4)
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

- (void)_removeSelfIdentityPublicWithPrivateIdentity:(id)a3
{
  v4 = [a3 idsDeviceID];
  if (v4)
  {
    v5 = objc_alloc_init(CUKeychainItem);
    [v5 setAccessGroup:@"com.apple.rapport"];
    [v5 setIdentifier:v4];
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

      v5 = [(NSUUID *)self->_adHocPairingIdentifier UUIDString];
      [(RPIdentity *)self->_temporarySelfIdentityCache setIdentifier:v5];
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

- (unsigned)_updateSelfIdentityPrivate:(id)a3 create:(BOOL)a4
{
  v6 = a3;
  v7 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
  v8 = [v7 localDeviceInfo];
  v9 = [v8 accountAltDSID];

  if (v9 && ([v6 accountAltDSID], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    [v6 setAccountAltDSID:v9];
    v11 = 0x2000000;
  }

  else
  {
    v11 = 0;
  }

  v12 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
  v13 = [v12 localDeviceInfo];
  v14 = [v13 accountID];

  if (v14)
  {
    v15 = [v6 accountID];

    if (!v15)
    {
      [v6 setAccountID:v14];
      v11 |= 0x2000u;
    }
  }

  v16 = [v6 idsDeviceID];
  v17 = +[RPCloudDaemon sharedCloudDaemon];
  v18 = [v17 idsDeviceIDSelf];

  if (!v18)
  {
LABEL_16:
    v28 = [v6 deviceIRKData];
    v29 = [v28 length];

    if (v29 != 16)
    {
      v30 = NSRandomData();
      [v6 setDeviceIRKData:v30];

      v11 |= 4u;
    }

    v31 = [v6 edPKData];
    if ([v31 length] == 32)
    {
      v32 = [v6 edSKData];
      if ([v32 length] == 32)
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
      [v6 setEdPKData:v34];

      v35 = [[NSData alloc] initWithBytes:v55 length:32];
      [v6 setEdSKData:v35];

      v11 |= 0x18u;
    }

LABEL_25:
    v36 = [v6 featureFlags];
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

    if (v46 && v46 != v36)
    {
      [v6 setFeatureFlags:?];
      v11 |= 0x400u;
    }

    if ([(RPIdentityDaemon *)self _stationaryDevice])
    {
      v47 = [v6 btIRKData];
      if ([v47 length] == 16)
      {
        v48 = [v6 btAddress];
        v49 = [v48 length];

        if (v49 == 7)
        {
          goto LABEL_56;
        }
      }

      else
      {
      }

      v50 = [(CBPeripheralManager *)self->_peripheralManager getNonConnectableIdentity];
      v51 = [v50 objectForKeyedSubscript:@"kCBMsgArgIdentityIRK"];
      [v6 setBtIRKData:v51];

      v52 = [v50 objectForKeyedSubscript:@"kCBMsgArgIdentityAddress"];
      [v6 setBtAddress:v52];

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

  v19 = v18;
  v20 = a4;
  v54 = v14;
  v21 = v9;
  v22 = self;
  v23 = v19;
  v24 = v19;
  v25 = v16;
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
      self = v22;
      v9 = v21;
      v14 = v54;
      v18 = v23;
      goto LABEL_16;
    }

    if (v20)
    {
LABEL_13:
      [v6 setIdsDeviceID:v24];
      v11 |= 0x40u;
      goto LABEL_15;
    }
  }

  else
  {

    if (a4)
    {
      goto LABEL_13;
    }
  }

  if (dword_1001D3F50 > 60)
  {
    v11 = 1;
    v9 = v21;
    v14 = v54;
    v18 = v23;
  }

  else
  {
    v9 = v21;
    v18 = v23;
    if (dword_1001D3F50 != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }

    v11 = 1;
    v14 = v54;
  }

LABEL_63:

  return v11;
}

- (unsigned)_updateSelfIdentityPublic:(id)a3 privateIdentity:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
  v8 = [v7 localDeviceInfo];

  v9 = [v8 accountAltDSID];
  if (v9 && ([v5 accountAltDSID], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    [v5 setAccountAltDSID:v9];
    v11 = 0x2000000;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v8 accountID];
  if (v12)
  {
    v13 = [v5 accountID];

    if (!v13)
    {
      [v5 setAccountID:v12];
      v11 |= 0x2000u;
    }
  }

  v14 = [v6 deviceIRKData];
  if (v14)
  {
    v15 = [v5 deviceIRKData];
    v16 = v14;
    v17 = v16;
    if (v15 == v16)
    {

      goto LABEL_16;
    }

    if (v15)
    {
      v18 = [v15 isEqual:v16];

      if (v18)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    [v5 setDeviceIRKData:v17];
    v11 |= 4u;
  }

LABEL_16:
  v19 = [v6 edPKData];
  v67 = v19;
  if (v19)
  {
    v20 = v19;
    v21 = [v5 edPKData];
    v22 = v20;
    v23 = v22;
    if (v21 == v22)
    {
    }

    else
    {
      if (v21)
      {
        v24 = [v21 isEqual:v22];

        if (v24)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }

      [v5 setEdPKData:v23];
      v11 |= 8u;
    }
  }

LABEL_24:
  v25 = [v6 featureFlags];
  if (v25)
  {
    v26 = v25;
    if ([v5 featureFlags] != v25)
    {
      [v5 setFeatureFlags:v26];
      v11 |= 0x400u;
    }
  }

  v27 = [v8 mediaRemoteIdentifier];
  v66 = v27;
  if ([v27 length])
  {
    v28 = [v5 mediaRemoteID];
    v29 = v27;
    v30 = v29;
    if (v28 == v29)
    {

      goto LABEL_35;
    }

    if ((v29 == 0) == (v28 != 0))
    {
    }

    else
    {
      v31 = [v28 isEqual:v29];

      if (v31)
      {
        goto LABEL_35;
      }
    }

    [v5 setMediaRemoteID:v30];
    v11 |= 0x10000u;
  }

LABEL_35:
  v32 = [v8 mediaRouteIdentifier];
  v65 = v32;
  if (![v32 length])
  {
    goto LABEL_43;
  }

  v33 = [v5 mediaRouteID];
  v34 = v32;
  v35 = v34;
  if (v33 == v34)
  {

    goto LABEL_43;
  }

  if ((v34 == 0) == (v33 != 0))
  {

    goto LABEL_42;
  }

  v36 = [v33 isEqual:v34];

  if ((v36 & 1) == 0)
  {
LABEL_42:
    [v5 setMediaRouteID:v35];
    v11 |= 0x20000u;
  }

LABEL_43:
  v69 = v12;
  v37 = GestaltCopyAnswer();
  v64 = v37;
  if (!v37)
  {
    goto LABEL_51;
  }

  v38 = v37;
  v39 = [v5 model];
  v40 = v38;
  v41 = v40;
  if (v39 == v40)
  {

    goto LABEL_51;
  }

  if (!v39)
  {

    goto LABEL_50;
  }

  v42 = [v39 isEqual:v40];

  if ((v42 & 1) == 0)
  {
LABEL_50:
    [v5 setModel:v41];
    v11 |= 0x80u;
  }

LABEL_51:
  v68 = v14;
  v43 = GestaltCopyAnswer();
  if (!v43)
  {
    goto LABEL_59;
  }

  v44 = [v5 name];
  v45 = v43;
  v46 = v45;
  if (v44 == v45)
  {

    goto LABEL_59;
  }

  if (!v44)
  {

    goto LABEL_58;
  }

  v47 = [v44 isEqual:v45];

  if ((v47 & 1) == 0)
  {
LABEL_58:
    [v5 setName:v46];
    v11 |= 0x100u;
  }

LABEL_59:
  v48 = [v6 btIRKData];
  if (!v48)
  {
    goto LABEL_68;
  }

  v49 = v11;
  v50 = [v5 btIRKData];
  v51 = v48;
  v52 = v51;
  if (v50 == v51)
  {

    goto LABEL_65;
  }

  if (v50)
  {
    v53 = [v50 isEqual:v51];

    if ((v53 & 1) == 0)
    {
      goto LABEL_67;
    }

LABEL_65:
    v11 = v49;
    goto LABEL_68;
  }

LABEL_67:
  [v5 setBtIRKData:v52];
  v11 = v49 | 0x400000;
LABEL_68:
  v54 = [v6 btAddress];
  if (v54)
  {
    v55 = v11;
    v56 = [v5 btAddress];
    v57 = v54;
    v58 = v57;
    if (v56 != v57)
    {
      v63 = v9;
      v59 = v6;
      v60 = v8;
      if (v56)
      {
        v61 = [v56 isEqual:v57];

        if (v61)
        {
          v8 = v60;
          v6 = v59;
          v9 = v63;
LABEL_74:
          v11 = v55;
          goto LABEL_77;
        }
      }

      else
      {
      }

      [v5 setBtAddress:v58];
      v11 = v55 | 0x800000;
      v8 = v60;
      v6 = v59;
      v9 = v63;
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

- (void)_sepRemoveSelfPrivateKey:(__SecKey *)a3
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
  v8[3] = a3;
  v5 = a3;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];

  if (SecItemDelete(v6) && dword_1001D3F50 <= 90 && (dword_1001D3F50 != -1 || _LogCategory_Initialize()))
  {
    sub_10011C79C();
  }
}

- (void)_enumerateIdentitiesWithFlag:(unsigned int)a3 usingBlock:(id)a4
{
  v4 = a3;
  v6 = a4;
  v72 = 0;
  if ((v4 & 2) != 0)
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

        v6[2](v6, *(*(&v68 + 1) + 8 * v11), &v72);
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

  if ((v4 & 0x100) != 0)
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

        v6[2](v6, *(*(&v64 + 1) + 8 * v15), &v72);
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

  if ((v4 & 8) != 0)
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

        v6[2](v6, *(*(&v60 + 1) + 8 * v19), &v72);
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

  if ((v4 & 0x20) != 0)
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

        v6[2](v6, *(*(&v56 + 1) + 8 * v23), &v72);
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

  if ((v4 & 0x400) != 0)
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

        v6[2](v6, *(*(&v52 + 1) + 8 * v27), &v72);
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

  if ((v4 & 0x80) != 0)
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

        v6[2](v6, *(*(&v48 + 1) + 8 * v31), &v72);
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

  if ((v4 & 0x800) != 0)
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

        v6[2](v6, *(*(&v44 + 1) + 8 * v35), &v72);
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

  if ((v4 & 0x4000) != 0)
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

        v6[2](v6, *(*(&v40 + 1) + 8 * v39), &v72);
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

- (void)addSharedHomeIdentityWithRPMessage:(id)a3
{
  v4 = a3;
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
        v12 = [v11 identifier];
        v13 = [v12 isEqual:v5];

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

      [v14 updateWithRPMessage:v4 error:0];
    }

    else
    {
LABEL_10:

LABEL_13:
      v14 = objc_alloc_init(RPIdentity);
      [v14 setIdentifier:v5];
      [v14 setType:9];
      [v14 updateWithRPMessage:v4 error:0];
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
    v38 = self;
    v18 = self->_sharedHomeDeviceIdentities;
    v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v40;
LABEL_18:
      v22 = v4;
      v23 = 0;
      while (1)
      {
        if (*v40 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v39 + 1) + 8 * v23);
        v25 = [v24 identifier];
        v26 = [v25 isEqual:v5];

        if (v26)
        {
          break;
        }

        if (v20 == ++v23)
        {
          v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
          v4 = v22;
          if (v20)
          {
            goto LABEL_18;
          }

          goto LABEL_24;
        }
      }

      v27 = v24;

      v4 = v22;
      if (!v27)
      {
        goto LABEL_30;
      }

      v28 = [v27 updateWithRPMessage:v22 error:0];
      v29 = v38;
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
      v29 = v38;
      sharedHomeDeviceIdentities = v38->_sharedHomeDeviceIdentities;
      if (!sharedHomeDeviceIdentities)
      {
        v32 = objc_alloc_init(NSMutableArray);
        v33 = v38->_sharedHomeDeviceIdentities;
        v38->_sharedHomeDeviceIdentities = v32;

        sharedHomeDeviceIdentities = v38->_sharedHomeDeviceIdentities;
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

- (void)addSessionPairedIdentity:(id)a3
{
  v5 = a3;
  if (v5)
  {
    sub_100003DA4();
    v6[1] = 3221225472;
    v6[2] = sub_10006D9B4;
    v6[3] = &unk_1001AB488;
    v6[4] = self;
    v7 = v5;
    dispatch_async(v3, v6);
  }
}

- (void)addOrUpdateAdHocPairedIdentity:(id)a3
{
  v5 = a3;
  if (v5)
  {
    sub_100003DA4();
    v6[1] = 3221225472;
    v6[2] = sub_10006E188;
    v6[3] = &unk_1001AB488;
    v7 = v5;
    v8 = self;
    dispatch_async(v3, v6);
  }
}

@end