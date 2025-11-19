@interface SOSAccountTrustClassic
+ (id)trustClassic;
- (BOOL)activeValidInCircle:(id)a3 err:(__CFError *)a4;
- (BOOL)addEscrowToPeerInfo:(__OpaqueSOSFullPeerInfo *)a3 err:(__CFError *)a4;
- (BOOL)addiCloudIdentity:(__OpaqueSOSCircle *)a3 key:(__SecKey *)a4 err:(__CFError *)a5;
- (BOOL)checkForRings:(__CFError *)a3;
- (BOOL)checkForSponsorshipTrust:(__OpaqueSOSCircle *)a3;
- (BOOL)cleanupAfterPeer:(id)a3 circleTransport:(id)a4 seconds:(unint64_t)a5 circle:(__OpaqueSOSCircle *)a6 cleanupPeer:(__OpaqueSOSPeerInfo *)a7 err:(__CFError *)a8;
- (BOOL)cleanupRetirementTickets:(id)a3 circle:(__OpaqueSOSCircle *)a4 time:(unint64_t)a5 err:(__CFError *)a6;
- (BOOL)clearValueFromExpansion:(__CFString *)a3 err:(__CFError *)a4;
- (BOOL)clientPing:(id)a3;
- (BOOL)ensureExpansion:(__CFError *)a3;
- (BOOL)ensureFullPeerAvailable:(id)a3 err:(__CFError *)a4;
- (BOOL)fixICloudIdentities:(id)a3 circle:(__OpaqueSOSCircle *)a4;
- (BOOL)forEachRing:(id)a3;
- (BOOL)fullPeerInfoVerify:(__SecKey *)a3 err:(__CFError *)a4;
- (BOOL)ghostBustingOK:(__OpaqueSOSCircle *)a3 updatingTo:(__OpaqueSOSCircle *)a4;
- (BOOL)handleUpdateCircle:(__OpaqueSOSCircle *)a3 transport:(id)a4 update:(BOOL)a5 err:(__CFError *)a6;
- (BOOL)handleUpdateRing:(id)a3 prospectiveRing:(__OpaqueSOSRing *)a4 transport:(id)a5 userPublicKey:(__SecKey *)a6 writeUpdate:(BOOL)a7 err:(__CFError *)a8;
- (BOOL)hasCircle:(__CFError *)a3;
- (BOOL)hasFullPeerInfo:(__CFError *)a3;
- (BOOL)haveConfirmedOctagonKeys;
- (BOOL)isAccountIdentity:(__OpaqueSOSPeerInfo *)a3 err:(__CFError *)a4;
- (BOOL)isInCircleOnly:(__CFError *)a3;
- (BOOL)isLockedError:(id)a3;
- (BOOL)isMyPeerActive:(__CFError *)a3;
- (BOOL)isSyncingV0;
- (BOOL)joinCircle:(id)a3 userKey:(__SecKey *)a4 useCloudPeer:(BOOL)a5 err:(__CFError *)a6;
- (BOOL)leaveCircle:(id)a3 err:(__CFError *)a4;
- (BOOL)leaveCircleWithAccount:(id)a3 err:(__CFError *)a4;
- (BOOL)matchOTUserViewSettings:(id)a3 userViewsEnabled:(BOOL)a4 err:(__CFError *)a5;
- (BOOL)modifyCircle:(id)a3 err:(__CFError *)a4 action:(id)a5;
- (BOOL)peerSignatureUpdate:(__SecKey *)a3 err:(__CFError *)a4;
- (BOOL)postDebugScope:(id)a3 scope:(void *)a4 err:(__CFError *)a5;
- (BOOL)removeIncompleteiCloudIdentities:(__OpaqueSOSCircle *)a3 privKey:(__SecKey *)a4 err:(__CFError *)a5;
- (BOOL)requestSyncWithAllPeers:(id)a3 key:(__SecKey *)a4 err:(__CFError *)a5;
- (BOOL)resetAccountToEmpty:(id)a3 transport:(id)a4 err:(__CFError *)a5;
- (BOOL)resetAllRings:(id)a3 err:(__CFError *)a4;
- (BOOL)resetCircleToOffering:(id)a3 userKey:(__SecKey *)a4 err:(__CFError *)a5;
- (BOOL)resetRing:(id)a3 ringName:(__CFString *)a4 err:(__CFError *)a5;
- (BOOL)resetToOffering:(id)a3 key:(__SecKey *)a4 err:(__CFError *)a5;
- (BOOL)setRing:(__OpaqueSOSRing *)a3 ringName:(__CFString *)a4 err:(__CFError *)a5;
- (BOOL)setValueInExpansion:(__CFString *)a3 value:(void *)a4 err:(__CFError *)a5;
- (BOOL)updateFullPeerInfo:(id)a3 minimum:(__CFSet *)a4 excluded:(__CFSet *)a5;
- (BOOL)updateGestalt:(id)a3 newGestalt:(__CFDictionary *)a4;
- (BOOL)updatePeerInfo:(id)a3 description:(__CFString *)a4 err:(__CFError *)a5 update:(id)a6;
- (BOOL)updateV2Dictionary:(id)a3 v2:(__CFDictionary *)a4;
- (BOOL)updateViewSets:(id)a3 enabled:(__CFSet *)MutableCopy disabled:(__CFSet *)a5;
- (BOOL)upgradeiCloudIdentity:(__OpaqueSOSCircle *)a3 privKey:(__SecKey *)a4;
- (BOOL)valueSetContainsValue:(__CFString *)a3 value:(void *)a4;
- (SOSAccountTrustClassic)init;
- (__CFArray)copyPeersToListenTo:(__SecKey *)a3 err:(__CFError *)a4;
- (__CFArray)copySortedPeerArray:(__CFError *)a3 action:(id)a4;
- (__CFDictionary)getRings:(__CFError *)a3;
- (__CFSet)copyPeerSetForView:(__CFString *)a3;
- (__CFSet)copyPeerSetMatching:(id)a3;
- (__CFSet)copyPreApprovedHSA2Info;
- (__CFSet)syncWithPeers:(id)a3 peerIDs:(__CFSet *)a4 err:(__CFError *)a5;
- (__OpaqueSOSCircle)ensureCircle:(id)a3 name:(__CFString *)a4 err:(__CFError *)a5;
- (__OpaqueSOSCircle)getCircle:(__CFError *)a3;
- (__OpaqueSOSEngine)getDataSourceEngine:(SOSDataSourceFactory *)a3;
- (__OpaqueSOSFullPeerInfo)CopyAccountIdentityPeerInfo;
- (__OpaqueSOSFullPeerInfo)getMyFullPeerInfo;
- (__OpaqueSOSPeerInfo)copyPeerWithID:(__CFString *)a3 err:(__CFError *)a4;
- (__OpaqueSOSRing)copyRing:(__CFString *)a3 err:(__CFError *)a4;
- (__SecKey)copyDeviceKey:(__CFError *)a3;
- (__SecKey)copyPublicKeyForPeer:(__CFString *)a3 err:(__CFError *)a4;
- (char)encodeToDER:(id)a3 err:(id *)a4 start:(const char *)a5 end:(char *)a6;
- (id)iCloudCheckEventHandle:(id)a3;
- (id)iCloudCleanerHandle:(id)a3;
- (int)getCircleStatusOnly:(__CFError *)a3;
- (int)thisDeviceStatusInCircle:(__OpaqueSOSCircle *)a3 peer:(__OpaqueSOSPeerInfo *)a4;
- (int)updateView:(id)a3 name:(__CFString *)a4 code:(int)a5 err:(__CFError *)a6;
- (int)viewStatus:(id)a3 name:(__CFString *)a4 err:(__CFError *)a5;
- (unint64_t)getDEREncodedSize:(id)a3 err:(id *)a4;
- (void)addRingDictionary;
- (void)addSyncablePeerBlock:(id)a3 dsName:(__CFString *)a4 change:(id)a5;
- (void)ensureOctagonPeerKeys:(id)a3;
- (void)forEachCirclePeerExceptMe:(id)a3;
- (void)generationSignatureUpdateWith:(id)a3 key:(__SecKey *)a4;
- (void)getValueFromExpansion:(__CFString *)a3 err:(__CFError *)a4;
- (void)pendEnableViewSet:(__CFSet *)a3;
- (void)purgeIdentity;
- (void)removeInvalidApplications:(__OpaqueSOSCircle *)a3 userPublic:(__SecKey *)a4;
- (void)resetRingDictionary;
- (void)setRings:(__CFDictionary *)a3;
- (void)valueSubtractFrom:(__CFString *)a3 valuesToSubtract:(__CFSet *)a4;
- (void)valueUnionWith:(__CFString *)a3 valuesToUnion:(__CFSet *)a4;
@end

@implementation SOSAccountTrustClassic

- (BOOL)cleanupAfterPeer:(id)a3 circleTransport:(id)a4 seconds:(unint64_t)a5 circle:(__OpaqueSOSCircle *)a6 cleanupPeer:(__OpaqueSOSPeerInfo *)a7 err:(__CFError *)a8
{
  v10 = a3;
  v11 = a4;
  v12 = [(SOSAccountTrust *)self peerInfo];
  if (![(SOSAccountTrust *)self fullPeerInfo]|| !v12)
  {
    SOSErrorCreate();
    goto LABEL_27;
  }

  [(SOSAccountTrust *)self peerInfo];
  if (!SOSCircleHasActivePeer())
  {
LABEL_27:
    v22 = 1;
    goto LABEL_25;
  }

  PeerID = SOSPeerInfoGetPeerID();
  Name = SOSCircleGetName();
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  Value = CFDictionaryGetValue(Mutable, Name);
  if (!Value || (v17 = Value, v18 = CFGetTypeID(Value), v18 != CFArrayGetTypeID()))
  {
    v17 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    CFDictionarySetValue(Mutable, Name, v17);
    if (v17)
    {
      CFRelease(v17);
    }
  }

  CFArrayAppendValue(v17, PeerID);
  cf = 0;
  v19 = [v10 SOSTransportMessageCleanupAfterPeerMessages:v10 peers:Mutable err:&cf];
  if ((v19 & 1) == 0)
  {
    v20 = sub_100006274("account");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = PeerID;
      v29 = 2112;
      v30 = cf;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Failed to cleanup after peer %@ messages: %@", buf, 0x16u);
    }
  }

  v21 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v21);
  }

  if ((v19 & SOSPeerInfoRetireRetirementTicket()) != 1)
  {
    goto LABEL_20;
  }

  if (([v11 expireRetirementRecords:Mutable err:&cf] & 1) == 0)
  {
    v23 = sub_100006274("account");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = PeerID;
      v29 = 2112;
      v30 = cf;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Failed to cleanup after peer %@ retirement: %@", buf, 0x16u);
    }

LABEL_20:
    v22 = 0;
    goto LABEL_21;
  }

  v22 = 1;
LABEL_21:
  v24 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v24);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_25:

  return v22;
}

- (BOOL)cleanupRetirementTickets:(id)a3 circle:(__OpaqueSOSCircle *)a4 time:(unint64_t)a5 err:(__CFError *)a6
{
  v10 = a3;
  MutableForSOSPeerInfosByID = CFSetCreateMutableForSOSPeerInfosByID();
  v12 = [(SOSAccountTrust *)self retirees];
  context[0] = _NSConcreteStackBlock;
  context[1] = 3221225472;
  context[2] = sub_100219D7C;
  context[3] = &unk_100345688;
  context[4] = a5;
  context[5] = a4;
  context[6] = MutableForSOSPeerInfosByID;
  CFSetApplyFunction(v12, sub_100219E58, context);

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100219DF8;
  v26[3] = &unk_100345A78;
  v26[4] = self;
  v26[5] = Mutable;
  CFSetApplyFunction(MutableForSOSPeerInfosByID, sub_100219E58, v26);
  if (MutableForSOSPeerInfosByID)
  {
    CFRelease(MutableForSOSPeerInfosByID);
  }

  Name = SOSCircleGetName();
  v22 = sub_10001104C(kCFAllocatorDefault, v15, v16, v17, v18, v19, v20, v21, Name, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v23 = [v10 circle_transport];
  v24 = [v23 expireRetirementRecords:v22 err:a6];

  if (v22)
  {
    CFRelease(v22);
  }

  return v24;
}

- (BOOL)resetRing:(id)a3 ringName:(__CFString *)a4 err:(__CFError *)a5
{
  v8 = a3;
  v9 = [(SOSAccountTrustClassic *)self copyRing:a4 err:a5];
  v10 = sub_100258BCC(v9);
  v11 = sub_10022B5A0(a4, 0, v10, a5);
  if (v11)
  {
    CFDictionaryGetValue(v9->var2, @"Generation");
    v12 = SOSGenerationCreateWithBaseline();
    if (v12)
    {
      v13 = v12;
      CFDictionarySetValue(*(v11 + 24), @"Generation", v12);
      CFRelease(v13);
    }
  }

  v14 = [(SOSAccountTrust *)self fullPeerInfo];
  v15 = sub_100258DA0(v9);
  sub_1002155F8(v11, v14, v15, a5);
  if (v11)
  {
    if (v9)
    {
      CFRelease(v9);
    }

    v16 = v8;
    if (sub_100218428(v16))
    {
      v17 = [v16 trust];
      v18 = [v16 circle_transport];
      v19 = [v17 handleUpdateRing:v16 prospectiveRing:v11 transport:v18 userPublicKey:objc_msgSend(v16 writeUpdate:"accountKey") err:{1, a5}];
    }

    else
    {
      v19 = 0;
    }

    v9 = v11;
  }

  else
  {
    v19 = 0;
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  CFRelease(v9);
  LOBYTE(v11) = v19;
LABEL_11:

  return v11;
}

- (__CFDictionary)getRings:(__CFError *)a3
{
  v5 = [(SOSAccountTrust *)self expansion];
  v6 = [v5 objectForKey:@"trusted_rings"];

  if (v6)
  {
    return v6;
  }

  [(SOSAccountTrustClassic *)self addRingDictionary];

  return [(SOSAccountTrustClassic *)self getRings:a3];
}

- (__OpaqueSOSRing)copyRing:(__CFString *)a3 err:(__CFError *)a4
{
  v5 = [(SOSAccountTrustClassic *)self getRings:a4];
  if (!v5)
  {
    SOSCreateError();
    return 0;
  }

  Value = CFDictionaryGetValue(v5, a3);
  if (!Value)
  {
    SOSCreateErrorWithFormat();
    return 0;
  }

  return sub_100228868(0, Value);
}

- (BOOL)handleUpdateRing:(id)a3 prospectiveRing:(__OpaqueSOSRing *)a4 transport:(id)a5 userPublicKey:(__SecKey *)a6 writeUpdate:(BOOL)a7 err:(__CFError *)a8
{
  v8 = a7;
  v116 = a3;
  v114 = a5;
  if (v8)
  {
    v13 = "local";
  }

  else
  {
    v13 = "remote";
  }

  v14 = sub_100258BCC(a4);
  v15 = sub_100258BCC(a4);
  if (v14 != 1 && v15 != 5)
  {
    v16 = sub_100006274("ring");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "start:[%s] halt processing invalid ring", buf, 0xCu);
    }

    v17 = 0;
    goto LABEL_256;
  }

  v102 = v15;
  v103 = v13;
  v18 = [(SOSAccountTrust *)self fullPeerInfo];
  PeerInfo = SOSFullPeerInfoGetPeerInfo();
  PeerID = SOSPeerInfoGetPeerID();
  v110 = SOSFullPeerInfoCopyDeviceKey();
  v112 = SOSFullPeerInfoCopyPubKey();
  v21 = 0;
  v108 = v8;
  cf1 = PeerID;
  v104 = PeerInfo;
  if (v18 && PeerInfo && PeerID)
  {
    v21 = [(SOSAccountTrustClassic *)self isInCircleOnly:0];
  }

  v107 = sub_1002585C4(a4->var2);
  [(SOSAccountTrust *)self trustedCircle];
  v105 = SOSCircleCopyPeers();
  cf = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  MutableForSOSPeerInfosByID = CFSetCreateMutableForSOSPeerInfosByID();
  Value = CFDictionaryGetValue(a4->var1, @"LastModifier");
  v109 = MutableForSOSPeerInfosByID;
  if (Value)
  {
    v24 = Value;
    if (CFStringGetLength(Value) > 8)
    {
      v125.location = 0;
      v125.length = 8;
      Copy = CFStringCreateWithSubstring(kCFAllocatorDefault, v24, v125);
    }

    else
    {
      Copy = CFStringCreateCopy(kCFAllocatorDefault, v24);
    }

    v26 = Copy;
  }

  else
  {
    v26 = 0;
  }

  v27 = sub_100006274("ring");
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = v103;
    *&buf[12] = 2112;
    *&buf[14] = v26;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "start:[%s] modifier: %@", buf, 0x16u);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  v113 = [(SOSAccountTrustClassic *)self copyRing:v107 err:0];
  if (v108)
  {
    goto LABEL_36;
  }

  v28 = CFDictionaryGetValue(a4->var1, @"LastModifier");
  if (cf1 && v28)
  {
    if (!CFEqual(cf1, v28))
    {
      goto LABEL_36;
    }
  }

  else if (cf1 != v28)
  {
    goto LABEL_36;
  }

  if (a4 && v113)
  {
    if (CFEqual(v113, a4))
    {
LABEL_32:
      v29 = sub_100006274("ring");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Ceasing ring handling for an echo of our own posted ring", buf, 2u);
      }

      goto LABEL_56;
    }
  }

  else if (v113 == a4)
  {
    goto LABEL_32;
  }

LABEL_36:
  if (!sub_100218428(v116))
  {
    goto LABEL_271;
  }

  if (!v112 || !v110 || !a4->var1 || !a4->var2 || !a4->var3 || !a4->var4)
  {
    SOSCreateError();
    goto LABEL_271;
  }

  if (![(SOSAccountTrustClassic *)self checkForRings:a8])
  {
LABEL_271:
    Instance = 0;
    v17 = 0;
    goto LABEL_242;
  }

  if (v14 != 1)
  {
    Instance = 0;
    if (v21)
    {
      goto LABEL_54;
    }

LABEL_57:
    v17 = 1;
    goto LABEL_242;
  }

  v117 = 0;
  v118 = &v117;
  v119 = 0x2020000000;
  v120 = 0;
  v30 = sub_10022B838(a4);
  v31 = v30;
  if (v30)
  {
    if (CFSetGetCount(v30) == 1)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10022B8A8;
      v122 = &unk_1003462B0;
      v123 = &v117;
      v124 = 0;
      CFSetApplyFunction(v31, sub_10022B928, buf);
    }
  }

  else
  {
    SOSCreateError();
  }

  v33 = v118[3];
  _Block_object_dispose(&v117, 8);
  if (!v33 || !SOSPeerInfoIsViewPermitted() || (v21 & SOSPeerInfoHasBackupKey() & 1) == 0)
  {
LABEL_56:
    Instance = 0;
    goto LABEL_57;
  }

LABEL_54:
  sub_100257F8C();
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = CFDictionaryCreateMutableCopy(0, 0, a4->var1);
  *(Instance + 24) = CFDictionaryCreateMutableCopy(0, 0, a4->var2);
  *(Instance + 32) = CFDictionaryCreateMutableCopy(0, 0, a4->var3);
  *(Instance + 40) = CFDictionaryCreateMutableCopy(0, 0, a4->var4);
  v34 = v113;
  if (v113)
  {
    v101 = !sub_100259778(v113, v112, 0);
  }

  else
  {
    CFRetain(Instance);
    v101 = 1;
    v34 = Instance;
  }

  sub_100217A94(v34);
  sub_100217A94(Instance);
  v113 = v34;
  v35 = sub_100258BCC(v34);
  v36 = sub_100258BCC(Instance);
  if (v35 > 5)
  {
    goto LABEL_110;
  }

  v37 = v35;
  if (v35 - 5 > 0xFFFFFFFFFFFFFFFCLL || v36 > 5 || v36 - 5 > 0xFFFFFFFFFFFFFFFCLL || v35 != v36)
  {
    goto LABEL_110;
  }

  v38 = sub_100006274("ring");
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = *off_100346038[v37];
    *buf = 136315138;
    *&buf[4] = v39;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "concordance trust (%s)", buf, 0xCu);
  }

  v40 = sub_100006274("ring");
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v113;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "    knownRing: %@", buf, 0xCu);
  }

  v41 = sub_100006274("ring");
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = Instance;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, " proposedRing: %@", buf, 0xCu);
  }

  v42 = SOSCopyIDOfKeyWithLength();
  v43 = SOSCopyIDOfKeyWithLength();
  if (cf1)
  {
    if (CFStringGetLength(cf1) > 8)
    {
      v126.location = 0;
      v126.length = 8;
      v44 = CFStringCreateWithSubstring(kCFAllocatorDefault, cf1, v126);
    }

    else
    {
      v44 = CFStringCreateCopy(kCFAllocatorDefault, cf1);
    }

    v45 = v44;
  }

  else
  {
    v45 = 0;
  }

  v46 = sub_100006274("ring");
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = v42;
    *&buf[12] = 2112;
    *&buf[14] = v43;
    *&buf[22] = 2112;
    v122 = v45;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "knownkey: %@ userkey: %@ myPeerID: %@", buf, 0x20u);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  v47 = off_100346038[v37][10];
  if (!v47)
  {
LABEL_110:
    v52 = sub_100006274("SecError");
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "##### Bad Error Return from ConcordanceTrust", buf, 2u);
    }

    v49 = 5;
    v50 = @"Bad Error Return from ConcordanceTrust";
    goto LABEL_113;
  }

  v48 = (v47)(v18, v105, v113, Instance, a6, a6, cf1, a8);
  if (v48 > 4)
  {
    if (v48 > 8)
    {
      switch(v48)
      {
        case 9:
          if (v101)
          {
            v49 = 5;
          }

          else
          {
            v49 = 3;
          }

          v50 = @"Invalid Ring Membership";
          goto LABEL_113;
        case 10:
          v49 = 4;
          v50 = @"Incorrect membership for me";
          goto LABEL_113;
        case 11:
          v49 = 2;
          v50 = @"This peer shouldn't be in this ring since it isn't in view";
          goto LABEL_113;
      }
    }

    else
    {
      if ((v48 - 5) < 2)
      {
        if (v101)
        {
          v49 = 0;
        }

        else
        {
          v49 = 3;
        }

        v50 = @"Bad Signature";
        goto LABEL_113;
      }

      if (v48 == 7)
      {
        v51 = sub_100006274("signing");
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "##### No trusted peer signature found, accepting hoping for concordance later", buf, 2u);
        }

        v49 = 0;
        v50 = @"No trusted peer signature";
        goto LABEL_113;
      }
    }

    goto LABEL_110;
  }

  if (v48 <= 1)
  {
    if (!v48)
    {
      v49 = 1;
      v50 = @"Trusted";
      goto LABEL_113;
    }

    if (v48 == 1)
    {
      if (v101)
      {
        v49 = 5;
      }

      else
      {
        v49 = 3;
      }

      v50 = @"Generation Old";
      goto LABEL_113;
    }

    goto LABEL_110;
  }

  if (v48 == 2)
  {
    if (v101)
    {
      v49 = 0;
    }

    else
    {
      v49 = 3;
    }

    v50 = @"No User Signature";
  }

  else if (v48 == 3)
  {
    v100 = sub_100006274("SecError");
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "##### No User Public Key Available, this shouldn't ever happen!!!", buf, 2u);
    }

    v49 = 5;
    v50 = @"No User Public Key Available";
  }

  else
  {
    v49 = 2;
    v50 = @"No trusted peer left";
  }

LABEL_113:
  v53 = sub_100006274("ring");
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v54 = off_100345C78[v49];
    *buf = 136315650;
    *&buf[4] = v54;
    if (v101)
    {
      v55 = "untrusted";
    }

    else
    {
      v55 = "trusted";
    }

    *&buf[12] = 2112;
    *&buf[14] = v50;
    *&buf[22] = 2080;
    v122 = v55;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Decided on action [%s] based on concordance state [%@] and [%s] ring.", buf, 0x20u);
  }

  if (v49 == 5)
  {
    goto LABEL_57;
  }

  if (v49 == 2)
  {
    v62 = 0;
    goto LABEL_176;
  }

  v56 = sub_100258F04(Instance);
  if (!CFSetGetCount(v56))
  {
    v57 = sub_100006274("ring");
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "changing state to accept - we have a reset ring", buf, 2u);
    }

    v49 = 0;
    if (!v56)
    {
      goto LABEL_131;
    }

LABEL_130:
    CFRelease(v56);
    goto LABEL_131;
  }

  [(SOSAccountTrust *)self trustedCircle];
  if (v14 == 1)
  {
    SOSCircleForEachBackupCapablePeerForView();
  }

  else
  {
    SOSCircleForEachValidSyncingPeer();
  }

  if (CFEqual(cf, v56))
  {
    if (!v56)
    {
      goto LABEL_131;
    }

    goto LABEL_130;
  }

  v67 = sub_100006274("ring");
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "mismatch between filteredPeerIDs and ringPeerIDSet, fixing ring and gensigning", buf, 2u);
  }

  v68 = sub_100006274("ring");
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = cf;
    _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "filteredPeerIDs %@", buf, 0xCu);
  }

  v69 = sub_100006274("ring");
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v56;
    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "  ringPeerIDSet %@", buf, 0xCu);
  }

  sub_100258E40(Instance, cf);
  CFDictionaryRemoveAllValues(*(Instance + 32));
  v49 = 1;
  if (v56)
  {
    goto LABEL_130;
  }

LABEL_131:
  if (v49 != 1)
  {
    v62 = 0;
    goto LABEL_174;
  }

  if (CFSetGetCount(cf) <= 0 || v14 != 1 || !SOSPeerInfoHasBackupKey())
  {
    v62 = 0;
    goto LABEL_144;
  }

  v58 = sub_10022BC48(kCFAllocatorDefault, v116, 0);
  v59 = sub_10022BA3C(Instance);
  if (!v59)
  {
    v60 = sub_100006274("ring");
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Backup ring contains no BSKB", buf, 2u);
    }
  }

  if ((SOSBSKBAllPeersBackupKeysAreInKeyBag() & 1) == 0)
  {
    v87 = sub_100006274("ring");
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "BSKB is missing some backup keys", buf, 2u);
    }

    if (SOSBSKBHasThisRecoveryKey())
    {
      goto LABEL_211;
    }

    goto LABEL_208;
  }

  if ((SOSBSKBHasThisRecoveryKey() & 1) == 0)
  {
LABEL_208:
    v88 = sub_100006274("ring");
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "BSKB is missing recovery key", buf, 2u);
    }

    goto LABEL_211;
  }

  if (v59)
  {
    v61 = 0;
    v62 = 0;
    goto LABEL_226;
  }

LABEL_211:
  v117 = 0;
  v89 = sub_10022B838(Instance);
  v90 = sub_100006274("ring");
  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "Need to fix BSKB - this will prompt a gensign", buf, 2u);
  }

  if (v58)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, bskbRkbgPrefix, v58);
    v92 = SOSBackupSliceKeyBagCreateWithAdditionalKeys();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    v92 = SOSBackupSliceKeyBagCreate();
  }

  v93 = sub_10022B940(Instance, v18, v89, v92, &v117);
  if ((v93 & 1) == 0)
  {
    v94 = sub_100006274("ring");
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v117;
      _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "Couldn't fix BSKB (%@)", buf, 0xCu);
    }
  }

  CFDictionaryRemoveAllValues(*(Instance + 32));
  sub_10022B614(Instance, v18, a8);
  v95 = v117;
  if (v117)
  {
    v117 = 0;
    CFRelease(v95);
  }

  if (v92)
  {
    CFRelease(v92);
  }

  v61 = v93 ^ 1;
  v62 = Instance;
LABEL_226:
  if (v58)
  {
    CFRelease(v58);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  if (v61)
  {
    goto LABEL_231;
  }

LABEL_144:
  SOSFullPeerInfoGetPeerInfo();
  v63 = SOSPeerInfoCopyPubKey();
  if (v63)
  {
    sub_100217A94(Instance);
    v64 = sub_100258BCC(Instance);
    if (v64 > 5 || v64 - 5 >= 0xFFFFFFFFFFFFFFFDLL)
    {
      SOSCreateError();
      CFRelease(v63);
    }

    else
    {
      v65 = sub_100259778(Instance, v63, 0);
      CFRelease(v63);
      if (v65)
      {
        v66 = sub_100006274("ring");
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Already concur with newRing", buf, 2u);
        }

        goto LABEL_176;
      }
    }
  }

  v117 = 0;
  if (!v18)
  {
    goto LABEL_169;
  }

  sub_100217A94(Instance);
  v70 = sub_100258BCC(Instance);
  if (v70 > 5 || v70 - 5 >= 0xFFFFFFFFFFFFFFFDLL)
  {
    SOSCreateError();
LABEL_169:
    v72 = sub_100006274("ring");
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v117;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Failed to concordance sign, error: %@", buf, 0xCu);
    }

    v49 = 5;
    goto LABEL_172;
  }

  v71 = off_100346038[v70][9];
  if (v71 && !(v71)(Instance, v18, &v117))
  {
    goto LABEL_169;
  }

  v72 = sub_100006274("ring");
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "concordance signed", buf, 2u);
  }

  v49 = 0;
  v62 = Instance;
LABEL_172:

  if (v117)
  {
    CFRelease(v117);
  }

LABEL_174:
  if (v49 == 3)
  {
    v80 = sub_100258E88(v113, cf1);
    v81 = sub_100006274("ring");
    v82 = os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT);
    if (v80)
    {
      if (v82)
      {
        *buf = 138412290;
        *&buf[4] = Instance;
        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Rejecting: %@", buf, 0xCu);
      }

      v83 = sub_100006274("ring");
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v113;
        _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "   RePush: %@", buf, 0xCu);
      }

      v84 = v113;
      goto LABEL_233;
    }

    if (v82)
    {
      *buf = 138412290;
      *&buf[4] = Instance;
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Rejecting: %@", buf, 0xCu);
    }

    v85 = sub_100006274("ring");
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Have no old ring - would reset", buf, 2u);
    }

    goto LABEL_231;
  }

  if (!v49)
  {
LABEL_176:
    v73 = v104;
    if (v102 == 5 && (v108 & 1) == 0)
    {
      v74 = sub_1002595AC(Instance);
      v75 = sub_100006274("ring");
      v76 = os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT);
      if (v74)
      {
        v77 = v104;
        if (v76)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Reset ring for recovery from remote peer", buf, 2u);
        }

        v78 = SOSRKNullKey();
        v79 = sub_10023873C(kCFAllocatorDefault, v116, v78, a8);
        sub_10022BAB4(v116, v79, a8);
      }

      else
      {
        v77 = v104;
        if (v76)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "normal ring recovery key harvest", buf, 2u);
        }

        sub_100217A94(Instance);
        if (!sub_100217C1C(Instance) || (v86 = sub_10022B78C(Instance, 0)) == 0)
        {
          sub_10022BAB4(v116, 0, a8);
          if (v104)
          {
LABEL_201:
            if (sub_100258D04(Instance, cf1))
            {
              sub_100258D54(Instance, cf1);
            }
          }

LABEL_203:
          [(SOSAccountTrustClassic *)self setRing:Instance ringName:v107 err:a8];
          [v116 setCircle_rings_retirements_need_attention:1];
          v84 = Instance;
          if (v108)
          {
LABEL_233:
            v96 = sub_100006274("ring");
            if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = v103;
              *&buf[12] = 2112;
              *&buf[14] = v84;
              _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "Pushing:[%s] %@", buf, 0x16u);
            }

            v97 = sub_100228578(v84, a8);
            if (v97)
            {
              v17 = [v114 kvsRingPostRing:sub_1002585C4(v84[3]) ring:v97 err:a8];
            }

            else
            {
              v17 = 0;
            }

            v98 = sub_100006274("ring");
            if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "Setting account.key_interests_need_updating to true in handleUpdateRing", buf, 2u);
            }

            [v116 setKey_interests_need_updating:1];
            if (v97)
            {
              CFRelease(v97);
            }

            goto LABEL_242;
          }

          v17 = (v62 == 0) & ~v108;
          goto LABEL_232;
        }

        v79 = sub_100238AFC(kCFAllocatorDefault, v86, 0);
        sub_10022BAB4(v116, v79, a8);
      }

      v73 = v77;
      if (v79)
      {
        CFRelease(v79);
      }
    }

    if (v73)
    {
      goto LABEL_201;
    }

    goto LABEL_203;
  }

LABEL_231:
  v17 = 0;
LABEL_232:
  v84 = v62;
  if (v62)
  {
    goto LABEL_233;
  }

LABEL_242:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v109)
  {
    CFRelease(v109);
  }

  if (v113)
  {
    CFRelease(v113);
  }

  if (Instance)
  {
    CFRelease(Instance);
  }

  if (v105)
  {
    CFRelease(v105);
  }

  if (v112)
  {
    CFRelease(v112);
  }

  if (v110)
  {
    CFRelease(v110);
  }

LABEL_256:

  return v17;
}

- (BOOL)setRing:(__OpaqueSOSRing *)a3 ringName:(__CFString *)a4 err:(__CFError *)a5
{
  if (a3)
  {
    v8 = [(SOSAccountTrustClassic *)self getRings:0];
    if (v8)
    {
      v9 = v8;
      v10 = sub_100228578(a3, a5);
      if (v10)
      {
        v11 = v10;
        CFDictionarySetValue(v9, a4, v10);
        CFRelease(v11);
        LOBYTE(v10) = 1;
      }
    }

    else
    {
      SOSCreateError();
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)checkForRings:(__CFError *)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v4 = [(SOSAccountTrustClassic *)self getRings:0];
  if (v4 && (v5 = CFGetTypeID(v4), v5 == CFDictionaryGetTypeID()))
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100223684;
    v8[3] = &unk_100345C58;
    v8[4] = &v9;
    [(SOSAccountTrustClassic *)self forEachRing:v8];
    v6 = *(v10 + 24);
  }

  else
  {
    SOSCreateError();
    v6 = 0;
    *(v10 + 24) = 0;
  }

  _Block_object_dispose(&v9, 8);
  return v6 & 1;
}

- (void)setRings:(__CFDictionary *)a3
{
  v4 = [(SOSAccountTrust *)self expansion];
  [v4 setObject:a3 forKey:@"trusted_rings"];
}

- (BOOL)resetAccountToEmpty:(id)a3 transport:(id)a4 err:(__CFError *)a5
{
  v8 = a3;
  v9 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  cf = 0;
  v10 = [(SOSAccountTrustClassic *)self resetAllRings:v8 err:&cf];
  *(v23 + 24) &= v10;
  if (cf)
  {
    v11 = sub_100006274("SecError");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = cf;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "reset all rings error: %@", buf, 0xCu);
    }

    v12 = cf;
    if (a5)
    {
      *a5 = cf;
    }

    else if (cf)
    {
      cf = 0;
      CFRelease(v12);
    }
  }

  [(SOSAccountTrust *)self setFullPeerInfo:0];
  [(SOSAccountTrust *)self setDepartureCode:2];
  v13 = sub_100006274("circleOps");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Reset Rings to empty by client request", buf, 2u);
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100223A9C;
  v20[3] = &unk_100345C30;
  v20[4] = &v22;
  v20[5] = a5;
  v14 = [(SOSAccountTrustClassic *)self modifyCircle:v9 err:a5 action:v20];
  v15 = v14 & v23[3];
  *(v23 + 24) = v15;
  if (v15)
  {
    notify_post(kSOSCCCircleOctagonKeysChangedNotification);
  }

  else
  {
    v16 = sub_100006274("SecError");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (a5)
      {
        v17 = *a5;
      }

      else
      {
        v17 = 0;
      }

      *buf = 138412290;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "error: %@", buf, 0xCu);
    }
  }

  v18 = *(v23 + 24);
  _Block_object_dispose(&v22, 8);

  return v18 & 1;
}

- (BOOL)resetAllRings:(id)a3 err:(__CFError *)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  v8 = Mutable;
  if (Mutable)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100223C80;
    v15[3] = &unk_100345BE0;
    v15[4] = Mutable;
    [(SOSAccountTrustClassic *)self forEachRing:v15];
    context[0] = _NSConcreteStackBlock;
    context[1] = 3221225472;
    context[2] = sub_100223CA0;
    context[3] = &unk_100345C08;
    v13 = &v16;
    context[4] = self;
    v12 = v6;
    v14 = a4;
    CFSetApplyFunction(v8, sub_100223CFC, context);
    CFRelease(v8);
    v9 = *(v17 + 24);
  }

  else
  {
    v9 = *(v17 + 24);
  }

  _Block_object_dispose(&v16, 8);

  return v9 & 1;
}

- (BOOL)forEachRing:(id)a3
{
  v4 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  v5 = [(SOSAccountTrustClassic *)self getRings:0];
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v7 = Mutable;
  if (!v5)
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    goto LABEL_8;
  }

  if (!Mutable)
  {
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100223F84;
  v13 = &unk_100345BC0;
  v15 = v26;
  v16 = v25;
  v21 = Mutable;
  v17 = v24;
  v18 = v23;
  v14 = v4;
  v19 = v22;
  v20 = &v27;
  CFDictionaryApplyFunction(v5, sub_100224100, &v10);
  if (*(v28 + 24) == 1)
  {
    [(SOSAccountTrustClassic *)self setRings:v7, v10, v11, v12, v13];
  }

  CFRelease(v7);

  v8 = 1;
LABEL_9:
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v27, 8);

  return v8;
}

- (BOOL)updateV2Dictionary:(id)a3 v2:(__CFDictionary *)a4
{
  v6 = a3;
  if (a4)
  {
    [(SOSAccountTrustClassic *)self setValueInExpansion:@"v2dictionary" value:a4 err:0];
    if ([(SOSAccountTrust *)self trustedCircle])
    {
      if ([(SOSAccountTrust *)self fullPeerInfo])
      {
        [(SOSAccountTrust *)self fullPeerInfo];
        if (SOSFullPeerInfoUpdateV2Dictionary())
        {
          v7 = [v6 circle_transport];
          v9[0] = _NSConcreteStackBlock;
          v9[1] = 3221225472;
          v9[2] = sub_100224228;
          v9[3] = &unk_1003477D0;
          v10 = v6;
          [(SOSAccountTrustClassic *)self modifyCircle:v7 err:0 action:v9];
        }
      }
    }
  }

  return 1;
}

- (void)pendEnableViewSet:(__CFSet *)a3
{
  if (CFSetGetValue(a3, kSOSViewKeychainV0))
  {
    v5 = sub_100006274("viewChange");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Warning, attempting to Add KeychainV0", v6, 2u);
    }
  }

  [(SOSAccountTrustClassic *)self valueUnionWith:@"pendingEnableViews" valuesToUnion:a3];
  [(SOSAccountTrustClassic *)self valueSubtractFrom:@"pendingDisableViews" valuesToSubtract:a3];
}

- (void)valueSubtractFrom:(__CFString *)a3 valuesToSubtract:(__CFSet *)a4
{
  v7 = [(SOSAccountTrustClassic *)self getValueFromExpansion:a3 err:0];
  if (v7)
  {
    v8 = v7;
    v9 = CFGetTypeID(v7);
    if (v9 == CFSetGetTypeID())
    {
      MutableCopy = CFSetCreateMutableCopy(kCFAllocatorDefault, 0, v8);
      context[0] = _NSConcreteStackBlock;
      context[1] = 3221225472;
      context[2] = sub_100224480;
      context[3] = &unk_1003477F0;
      context[4] = MutableCopy;
      CFSetApplyFunction(a4, sub_100223CFC, context);
      [(SOSAccountTrustClassic *)self setValueInExpansion:a3 value:MutableCopy err:0];
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }
    }
  }
}

- (void)valueUnionWith:(__CFString *)a3 valuesToUnion:(__CFSet *)a4
{
  MutableCopy = CFSetCreateMutableCopy(kCFAllocatorDefault, 0, a4);
  v7 = [(SOSAccountTrustClassic *)self getValueFromExpansion:a3 err:0];
  if (v7)
  {
    v8 = v7;
    v9 = CFGetTypeID(v7);
    if (v9 == CFSetGetTypeID())
    {
      context[0] = _NSConcreteStackBlock;
      context[1] = 3221225472;
      context[2] = sub_100224590;
      context[3] = &unk_1003477F0;
      context[4] = MutableCopy;
      CFSetApplyFunction(v8, sub_100223CFC, context);
    }
  }

  [(SOSAccountTrustClassic *)self setValueInExpansion:a3 value:MutableCopy err:0];
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }
}

- (BOOL)valueSetContainsValue:(__CFString *)a3 value:(void *)a4
{
  v5 = [(SOSAccountTrustClassic *)self getValueFromExpansion:a3 err:0];
  if (v5)
  {
    v6 = v5;
    v7 = CFGetTypeID(v5);
    LOBYTE(v5) = v7 == CFSetGetTypeID() && CFSetContainsValue(v6, a4) != 0;
  }

  return v5;
}

- (BOOL)setValueInExpansion:(__CFString *)a3 value:(void *)a4 err:(__CFError *)a5
{
  if (a4)
  {
    v8 = [(SOSAccountTrustClassic *)self ensureExpansion:a5];
    if (v8)
    {
      v9 = [(SOSAccountTrust *)self expansion];
      [v9 setObject:a4 forKey:a3];

      LOBYTE(v8) = 1;
    }
  }

  else
  {

    LOBYTE(v8) = [(SOSAccountTrustClassic *)self clearValueFromExpansion:a3 err:a5];
  }

  return v8;
}

- (BOOL)clearValueFromExpansion:(__CFString *)a3 err:(__CFError *)a4
{
  v6 = [(SOSAccountTrustClassic *)self ensureExpansion:a4];
  if (v6)
  {
    v7 = [(SOSAccountTrust *)self expansion];
    [v7 removeObjectForKey:a3];
  }

  return v6;
}

- (BOOL)ensureExpansion:(__CFError *)a3
{
  v5 = [(SOSAccountTrust *)self expansion];

  if (!v5)
  {
    v6 = +[NSMutableDictionary dictionary];
    [(SOSAccountTrust *)self setExpansion:v6];
  }

  v7 = [(SOSAccountTrust *)self expansion];
  v8 = sub_100087F00(v7, a3, @"Can't Alloc Account Expansion dictionary");

  return v8;
}

- (void)getValueFromExpansion:(__CFString *)a3 err:(__CFError *)a4
{
  v6 = [(SOSAccountTrust *)self expansion:a3];

  if (!v6)
  {
    return 0;
  }

  v7 = [(SOSAccountTrust *)self expansion];
  v8 = [v7 objectForKey:a3];

  return v8;
}

- (void)resetRingDictionary
{
  v3 = [(SOSAccountTrust *)self expansion];

  if (v3)
  {
    v5 = +[NSMutableDictionary dictionary];
    v4 = [(SOSAccountTrust *)self expansion];
    [v4 setObject:v5 forKey:@"trusted_rings"];
  }
}

- (void)addRingDictionary
{
  v3 = [(SOSAccountTrust *)self expansion];

  if (v3)
  {
    v4 = [(SOSAccountTrust *)self expansion];
    v5 = [v4 valueForKey:@"trusted_rings"];

    if (!v5)
    {
      v7 = +[NSMutableDictionary dictionary];
      v6 = [(SOSAccountTrust *)self expansion];
      [v6 setObject:v7 forKey:@"trusted_rings"];
    }
  }
}

- (BOOL)clientPing:(id)a3
{
  v4 = a3;
  if ([(SOSAccountTrust *)self trustedCircle])
  {
    if ([(SOSAccountTrust *)self fullPeerInfo])
    {
      [(SOSAccountTrust *)self fullPeerInfo];
      if (SOSFullPeerInfoPing())
      {
        v5 = [v4 circle_transport];
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 3221225472;
        v7[2] = sub_100224E24;
        v7[3] = &unk_1003477D0;
        v7[4] = self;
        [(SOSAccountTrustClassic *)self modifyCircle:v5 err:0 action:v7];
      }
    }
  }

  return 1;
}

- (BOOL)removeIncompleteiCloudIdentities:(__OpaqueSOSCircle *)a3 privKey:(__SecKey *)a4 err:(__CFError *)a5
{
  Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  [(SOSAccountTrust *)self trustedCircle];
  SOSCircleForEachActivePeer();
  Count = CFSetGetCount(Mutable);
  if (Count >= 1)
  {
    [(SOSAccountTrust *)self trustedCircle];
    [(SOSAccountTrust *)self fullPeerInfo];
    SOSCircleRemovePeers();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Count > 0;
}

- (__SecKey)copyDeviceKey:(__CFError *)a3
{
  if ([(SOSAccountTrust *)self fullPeerInfo])
  {
    [(SOSAccountTrust *)self fullPeerInfo];

    return SOSFullPeerInfoCopyDeviceKey();
  }

  else
  {
    SOSErrorCreate();
    return 0;
  }
}

- (BOOL)postDebugScope:(id)a3 scope:(void *)a4 err:(__CFError *)a5
{
  if (a3)
  {
    return [a3 kvssendDebugInfo:@"Scope" debug:a4 err:a5];
  }

  else
  {
    return 0;
  }
}

- (__OpaqueSOSEngine)getDataSourceEngine:(SOSDataSourceFactory *)a3
{
  if (![(SOSAccountTrust *)self trustedCircle])
  {
    v7 = sub_100006274("engine");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Tried to set dataSourceEngine with no circle", v9, 2u);
    }

    return 0;
  }

  [(SOSAccountTrust *)self trustedCircle];
  Name = SOSCircleGetName();
  if (a3)
  {
    v6 = (a3->var1)(a3, Name, 0);
    if (v6)
    {
      a3 = *v6;
      (*(v6 + 72))(v6, 0);
      return a3;
    }

    return 0;
  }

  return a3;
}

- (BOOL)isSyncingV0
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100225260;
  v4[3] = &unk_100345E50;
  v4[4] = &v5;
  [(SOSAccountTrustClassic *)self forEachCirclePeerExceptMe:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)requestSyncWithAllPeers:(id)a3 key:(__SecKey *)a4 err:(__CFError *)a5
{
  v7 = a3;
  v8 = [v7 account];
  v9 = [v8 isInCircle:a5];

  if (v9)
  {
    v10 = +[NSMutableSet set];
    [(SOSAccountTrust *)self trustedCircle];
    v13 = v10;
    v11 = v10;
    SOSCircleForEachValidSyncingPeer();
    [v7 requestSyncWithPeers:v11];
  }

  return v9;
}

- (__CFSet)syncWithPeers:(id)a3 peerIDs:(__CFSet *)a4 err:(__CFError *)a5
{
  v8 = a3;
  v9 = [v8 account];
  if ([v9 isInCircle:a5])
  {
    Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
    v11 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
    if ([v9 peerInfo])
    {
      PeerID = SOSPeerInfoGetPeerID();
      MutableCopy = CFSetCreateMutableCopy(kCFAllocatorDefault, 0, a4);
      CFSetRemoveValue(MutableCopy, PeerID);
      context[0] = _NSConcreteStackBlock;
      context[1] = 3221225472;
      context[2] = sub_100225608;
      context[3] = &unk_100345E00;
      context[4] = self;
      v17 = v9;
      v18 = v11;
      v19 = Mutable;
      CFSetApplyFunction(MutableCopy, sub_100225814, context);
      v14 = sub_100216108(v8, v11);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10022580C;
      v20[3] = &unk_1003477F0;
      v20[4] = Mutable;
      CFSetApplyFunction(v14, sub_100225814, v20);
      if (v14)
      {
        CFRelease(v14);
      }

      sub_100215E08(v8);
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }

    else if (v11)
    {
      CFRelease(v11);
    }
  }

  else
  {
    Mutable = CFSetCreateMutableCopy(kCFAllocatorDefault, 0, a4);
  }

  return Mutable;
}

- (char)encodeToDER:(id)a3 err:(id *)a4 start:(const char *)a5 end:(char *)a6
{
  v21 = 0;
  v7 = a3;
  v19 = [v7 gestalt];
  [(SOSAccountTrust *)self trustedCircle];
  v18 = [(SOSAccountTrust *)self fullPeerInfo];
  [(SOSAccountTrust *)self departureCode];
  v8 = [v7 accountKeyIsTrusted];
  v9 = [v7 accountKey];
  v10 = [v7 previousAccountKey];
  v11 = [v7 accountKeyDerivationParameters];
  v12 = [(SOSAccountTrust *)self retirees];
  v13 = [v7 backup_key];

  v14 = [(SOSAccountTrust *)self expansion];
  sub_10000E1FC(v14, &v21, 0);
  if (v13)
  {
    sub_10001263C(v13, &v21);
  }

  SOSPeerInfoSetEncodeToArrayDER();
  der_encode_data_or_null();
  sub_100216D80(v10);
  sub_100216D80(v9);
  v22 = v8;
  ccder_encode_body();
  ccder_encode_tl();
  ccder_encode_uint64();
  if (v18)
  {
    SOSFullPeerInfoEncodeToDER();
  }

  else
  {
    ccder_encode_tl();
  }

  SOSCircleEncodeToDER();
  sub_10000E1FC(v19, &v21, 0);
  ccder_encode_uint64();
  v15 = ccder_encode_constructed_tl();

  v16 = v21;
  if (a4 && v21)
  {
    *a4 = v21;
  }

  else if (v21)
  {
    v21 = 0;
    CFRelease(v16);
  }

  return v15;
}

- (unint64_t)getDEREncodedSize:(id)a3 err:(id *)a4
{
  v5 = a3;
  v27 = 0;
  if (!ccder_sizeof_uint64())
  {
    goto LABEL_19;
  }

  v7 = [v5 gestalt];
  v8 = sub_10000E078(v7, &v27);

  v26 = v8;
  if (!v8)
  {
    goto LABEL_19;
  }

  [(SOSAccountTrust *)self trustedCircle];
  DEREncodedSize = SOSCircleGetDEREncodedSize();
  if (!DEREncodedSize)
  {
    goto LABEL_19;
  }

  v9 = [(SOSAccountTrust *)self fullPeerInfo]? SOSFullPeerInfoGetDEREncodedSize() : ccder_sizeof();
  v24 = v9;
  if (!v9)
  {
    goto LABEL_19;
  }

  [(SOSAccountTrust *)self departureCode];
  v23 = ccder_sizeof_uint64();
  if (!v23)
  {
    goto LABEL_19;
  }

  [v5 accountKeyIsTrusted];
  if (!ccder_sizeof())
  {
    goto LABEL_19;
  }

  if (!sub_100216D24([v5 accountKey]))
  {
    goto LABEL_19;
  }

  if (!sub_100216D24([v5 previousAccountKey]))
  {
    goto LABEL_19;
  }

  v10 = [v5 accountKeyDerivationParameters];
  v11 = der_sizeof_data_or_null();

  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = [(SOSAccountTrust *)self retirees];
  DEREncodedArraySize = SOSPeerInfoSetGetDEREncodedArraySize();

  if (!DEREncodedArraySize)
  {
    goto LABEL_19;
  }

  v14 = [v5 backup_key];
  v15 = v14;
  if (v14)
  {
    CFDataGetLength(v14);
    ccder_sizeof_raw_octet_string();
  }

  v16 = [(SOSAccountTrust *)self expansion];
  v17 = sub_10000E078(v16, &v27);

  if (v17)
  {
    v18 = ccder_sizeof();
  }

  else
  {
LABEL_19:
    sub_1000111B4(-1, @"com.apple.security.cfder.error", 0, &v27, v6, @"don't know how to encode", a4, v23, v24, DEREncodedSize, v26);
    v20 = v27;
    if (v22 && v27)
    {
      v18 = 0;
      *v22 = v27;
    }

    else
    {
      if (v27)
      {
        v27 = 0;
        CFRelease(v20);
      }

      v18 = 0;
    }
  }

  return v18;
}

- (__CFArray)copySortedPeerArray:(__CFError *)a3 action:(id)a4
{
  v5 = a4;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v5[2](v5, [(SOSAccountTrust *)self trustedCircle], Mutable);

  CFArrayOfSOSPeerInfosSortByID();
  return Mutable;
}

- (BOOL)addEscrowToPeerInfo:(__OpaqueSOSFullPeerInfo *)a3 err:(__CFError *)a4
{
  [(SOSAccountTrustClassic *)self getValueFromExpansion:@"EscrowRecord" err:?];

  return SOSFullPeerInfoReplaceEscrowRecords();
}

- (BOOL)addiCloudIdentity:(__OpaqueSOSCircle *)a3 key:(__SecKey *)a4 err:(__CFError *)a5
{
  v7 = sub_100219E70(256, @"Cloud Identity", kSecAttrAccessibleWhenUnlocked, kCFBooleanTrue, a5);
  if (!v7)
  {
    sub_1000103CC(-108, a5, @"Can't generate keypair for icloud identity");
    return 0;
  }

  v15 = v7;
  v16 = sub_10001104C(kCFAllocatorDefault, v8, v9, v10, v11, v12, v13, v14, kPIUserDefinedDeviceNameKey, @"iCloud");
  if (!v16)
  {
    sub_1000103CC(-108, a5, @"Can't allocate gestalt");
LABEL_18:
    CFRelease(v15);
    return 0;
  }

  v17 = v16;
  CloudIdentity = SOSPeerInfoCreateCloudIdentity();
  if (!CloudIdentity)
  {
    CFRelease(v17);
    goto LABEL_18;
  }

  v26 = CloudIdentity;
  v27 = sub_10001104C(kCFAllocatorDefault, v19, v20, v21, v22, v23, v24, v25, kSecClass, kSecClassKey);
  PeerID = SOSPeerInfoGetPeerID();
  v29 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Cloud Identity - '%@'", PeerID);
  v37 = sub_10001104C(kCFAllocatorDefault, v30, v31, v32, v33, v34, v35, v36, kSecAttrLabel, v29);
  v38 = SecItemUpdate(v27, v37);
  sub_1000103CC(v38, a5, @"Couldn't update name");
  if (v29)
  {
    CFRelease(v29);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  CFRelease(v17);
  CFRelease(v15);
  v39 = SOSFullPeerInfoCreateCloudIdentity();
  CFRelease(v26);
  if (!v39)
  {
    return 0;
  }

  if (SOSCircleRequestAdmission())
  {
    [(SOSAccountTrust *)self fullPeerInfo];
    SOSFullPeerInfoGetPeerInfo();
    v40 = SOSCircleAcceptRequest();
  }

  else
  {
    v40 = 0;
  }

  CFRelease(v39);
  return v40;
}

- (__CFSet)copyPreApprovedHSA2Info
{
  v2 = [(SOSAccountTrustClassic *)self getValueFromExpansion:@"HSAPreApprovedPeer" err:0];
  if (v2)
  {

    return CFSetCreateMutableCopy(0, 0, v2);
  }

  else
  {

    return CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
  }
}

- (BOOL)upgradeiCloudIdentity:(__OpaqueSOSCircle *)a3 privKey:(__SecKey *)a4
{
  v4 = SOSCircleCopyiCloudFullPeerInfoRef();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (SOSFullPeerInfoUpgradeSignatures())
  {
    SOSFullPeerInfoGetPeerInfo();
    updated = SOSCircleUpdatePeerInfo();
  }

  else
  {
    updated = 0;
  }

  CFRelease(v5);
  return updated;
}

- (void)removeInvalidApplications:(__OpaqueSOSCircle *)a3 userPublic:(__SecKey *)a4
{
  context[5] = _NSConcreteStackBlock;
  context[6] = 3221225472;
  context[7] = sub_100226268;
  context[8] = &unk_100346890;
  context[9] = a4;
  MutableForSOSPeerInfosByID = CFSetCreateMutableForSOSPeerInfosByID();
  SOSCircleForEachApplicant();
  context[0] = _NSConcreteStackBlock;
  context[1] = 3221225472;
  context[2] = sub_1002262C4;
  context[3] = &unk_1003477F0;
  context[4] = a3;
  CFSetApplyFunction(MutableForSOSPeerInfosByID, sub_100225814, context);
}

- (BOOL)updatePeerInfo:(id)a3 description:(__CFString *)a4 err:(__CFError *)a5 update:(id)a6
{
  v10 = a3;
  v11 = a6;
  if (![(SOSAccountTrust *)self fullPeerInfo])
  {
    goto LABEL_5;
  }

  if (!v11[2](v11, [(SOSAccountTrust *)self fullPeerInfo], a5))
  {
    v12 = 0;
    goto LABEL_7;
  }

  if ([(SOSAccountTrustClassic *)self hasCircle:0])
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1002263E0;
    v14[3] = &unk_1003467B0;
    v14[4] = self;
    v14[5] = a4;
    v12 = [(SOSAccountTrustClassic *)self modifyCircle:v10 err:a5 action:v14];
  }

  else
  {
LABEL_5:
    v12 = 1;
  }

LABEL_7:

  return v12;
}

- (BOOL)peerSignatureUpdate:(__SecKey *)a3 err:(__CFError *)a4
{
  v5 = [(SOSAccountTrust *)self fullPeerInfo];
  if (v5)
  {
    [(SOSAccountTrust *)self fullPeerInfo];

    LOBYTE(v5) = SOSFullPeerInfoUpgradeSignatures();
  }

  return v5;
}

- (__CFArray)copyPeersToListenTo:(__SecKey *)a3 err:(__CFError *)a4
{
  PeerID = [(SOSAccountTrust *)self peerInfo];
  if (PeerID)
  {
    PeerID = SOSPeerInfoGetPeerID();
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002265B4;
  v9[3] = &unk_100345DD8;
  v9[4] = PeerID;
  v9[5] = a3;
  return [(SOSAccountTrustClassic *)self copySortedPeerArray:a4 action:v9];
}

- (__CFSet)copyPeerSetMatching:(id)a3
{
  v4 = a3;
  MutableForSOSPeerInfosByID = CFSetCreateMutableForSOSPeerInfosByID();
  if ([(SOSAccountTrust *)self trustedCircle])
  {
    [(SOSAccountTrust *)self trustedCircle];
    v7 = v4;
    SOSCircleForEachPeer();
  }

  return MutableForSOSPeerInfosByID;
}

- (BOOL)isAccountIdentity:(__OpaqueSOSPeerInfo *)a3 err:(__CFError *)a4
{
  v5 = [(SOSAccountTrust *)self peerInfo:a3];
  if (a3 && v5)
  {
    return CFEqual(a3, v5) != 0;
  }

  else
  {
    return v5 == a3;
  }
}

- (__OpaqueSOSPeerInfo)copyPeerWithID:(__CFString *)a3 err:(__CFError *)a4
{
  result = [(SOSAccountTrust *)self trustedCircle];
  if (result)
  {
    [(SOSAccountTrust *)self trustedCircle];

    return SOSCircleCopyPeerWithID();
  }

  return result;
}

- (__SecKey)copyPublicKeyForPeer:(__CFString *)a3 err:(__CFError *)a4
{
  if ([(SOSAccountTrust *)self trustedCircle])
  {
    [(SOSAccountTrust *)self trustedCircle];
    v5 = SOSCircleCopyPeerWithID();
    if (v5)
    {
      v6 = v5;
      v7 = SOSPeerInfoCopyPubKey();
      CFRelease(v6);
      return v7;
    }
  }

  else
  {
    SOSErrorCreate();
  }

  return 0;
}

- (__CFSet)copyPeerSetForView:(__CFString *)a3
{
  MutableForSOSPeerInfosByID = CFSetCreateMutableForSOSPeerInfosByID();
  if ([(SOSAccountTrust *)self trustedCircle])
  {
    [(SOSAccountTrust *)self trustedCircle];
    SOSCircleForEachPeer();
  }

  return MutableForSOSPeerInfosByID;
}

- (void)addSyncablePeerBlock:(id)a3 dsName:(__CFString *)a4 change:(id)a5
{
  v8 = a5;
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = [a3 account];
  if (a4)
  {
    CFRetain(a4);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100226BC0;
  v13[3] = &unk_100345D98;
  v15 = a4;
  v13[4] = self;
  v14 = v8;
  v10 = objc_retainBlock(v13);
  sub_10020EE4C(v9, v10);
  MutableForSOSPeerInfosByID = CFSetCreateMutableForSOSPeerInfosByID();
  if ([(SOSAccountTrust *)self trustedCircle])
  {
    [(SOSAccountTrust *)self trustedCircle];
    Name = SOSCircleGetName();
    if (!a4 || !Name)
    {
      if (Name != a4)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (CFEqual(a4, Name))
    {
LABEL_8:
      (v10[2])(v10, v9, [(SOSAccountTrust *)self trustedCircle], MutableForSOSPeerInfosByID, MutableForSOSPeerInfosByID, MutableForSOSPeerInfosByID, MutableForSOSPeerInfosByID);
    }
  }

LABEL_9:
  if (MutableForSOSPeerInfosByID)
  {
    CFRelease(MutableForSOSPeerInfosByID);
  }

LABEL_12:
}

- (BOOL)updateViewSets:(id)a3 enabled:(__CFSet *)MutableCopy disabled:(__CFSet *)a5
{
  v8 = a3;
  if (MutableCopy)
  {
    MutableCopy = CFSetCreateMutableCopy(kCFAllocatorDefault, 0, MutableCopy);
  }

  if (a5)
  {
    a5 = CFSetCreateMutableCopy(kCFAllocatorDefault, 0, a5);
  }

  sub_100227484(@"Enabled", MutableCopy);
  sub_100227484(@"Disabled", a5);
  if (![(SOSAccountTrust *)self trustedCircle])
  {
    v18 = sub_100006274("views");
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_42;
    }

    *buf = 0;
    v19 = "Attempt to set viewsets with no trusted circle";
LABEL_41:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 2u);
    goto LABEL_42;
  }

  if (![(SOSAccountTrust *)self fullPeerInfo])
  {
    v18 = sub_100006274("views");
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_42;
    }

    *buf = 0;
    v19 = "Attempt to set viewsets with no fullPeerInfo";
    goto LABEL_41;
  }

  if (MutableCopy | a5)
  {
    SOSFullPeerInfoGetPeerInfo();
    Copy = SOSPeerInfoCreateCopy();
    if (Copy)
    {
      v10 = Copy;
      IsCurrent = SOSPeerInfoVersionIsCurrent();
      if ((IsCurrent & 1) == 0)
      {
        cf = 0;
        if ((SOSPeerInfoUpdateToV2() & 1) == 0)
        {
          v21 = sub_100006274("views");
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v26 = cf;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Unable to update peer to V2- can't update views: %@", buf, 0xCu);
          }

          goto LABEL_48;
        }

        v12 = sub_100006274("V2update");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updating PeerInfo to V2 within SOSAccountUpdateViewSets", buf, 2u);
        }
      }

      sub_100085CC8(MutableCopy, &stru_100345D50);
      sub_100085CC8(a5, &stru_100345D70);
      if (sub_100227590(v8, MutableCopy, 1))
      {
        if (sub_100227590(v8, a5, 2))
        {
          v13 = IsCurrent ^ 1;
          if (MutableCopy)
          {
            v13 |= SOSViewSetEnable();
          }

          if (a5)
          {
            if (((v13 | SOSViewSetDisable()) & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          else if (!v13)
          {
            goto LABEL_25;
          }

          if (SOSFullPeerInfoUpdateToThisPeer())
          {
            v14 = [v8 circle_transport];
            v23[0] = _NSConcreteStackBlock;
            v23[1] = 3221225472;
            v23[2] = sub_100227624;
            v23[3] = &unk_1003477D0;
            v23[4] = self;
            v15 = [(SOSAccountTrustClassic *)self modifyCircle:v14 err:0 action:v23];

            if (v15)
            {
              sub_10021398C(v8);
            }
          }

LABEL_25:
          v16 = 1;
          if (!MutableCopy)
          {
LABEL_27:
            if (a5)
            {
              CFRelease(a5);
            }

            if (v10)
            {
              CFRelease(v10);
            }

            goto LABEL_31;
          }

LABEL_26:
          CFRelease(MutableCopy);
          goto LABEL_27;
        }

        v21 = sub_100006274("viewChange");
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_48;
        }

        *buf = 0;
        v22 = "Bad view change (disable) with kSOSViewKeychainV0";
      }

      else
      {
        v21 = sub_100006274("viewChange");
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
LABEL_48:

LABEL_49:
          v16 = 0;
          if (!MutableCopy)
          {
            goto LABEL_27;
          }

          goto LABEL_26;
        }

        *buf = 0;
        v22 = "Bad view change (enable) with kSOSViewKeychainV0";
      }

      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 2u);
      goto LABEL_48;
    }

    v18 = sub_100006274("views");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v19 = "Couldn't copy PeerInfoRef";
      goto LABEL_41;
    }

LABEL_42:

    v10 = 0;
    goto LABEL_49;
  }

  v20 = sub_100006274("views");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No work to do", buf, 2u);
  }

  v16 = 0;
LABEL_31:

  return v16;
}

- (BOOL)matchOTUserViewSettings:(id)a3 userViewsEnabled:(BOOL)a4 err:(__CFError *)a5
{
  v6 = a4;
  v8 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  UserVisibleSet = SOSViewsGetUserVisibleSet();
  if ([v8 isInCircle:a5])
  {
    context[0] = _NSConcreteStackBlock;
    context[1] = 3221225472;
    context[2] = sub_100227B08;
    context[3] = &unk_100345D30;
    v16 = v8;
    v17 = &v24;
    v18 = &v20;
    v19 = a5;
    CFSetApplyFunction(UserVisibleSet, sub_100225814, context);
  }

  if (!v6)
  {
    if (*(v21 + 24) == 1)
    {
      v10 = sub_100006274("circleChange");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Disabling User Visible Views to match OT Settings", v14, 2u);
      }

      v11 = 0;
      goto LABEL_12;
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  if (*(v25 + 24) != 1)
  {
    goto LABEL_13;
  }

  v10 = sub_100006274("circleChange");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Enabling User Visible Views to match OT Settings", v14, 2u);
  }

  v11 = UserVisibleSet;
  UserVisibleSet = 0;
LABEL_12:

  v12 = [(SOSAccountTrustClassic *)self updateViewSets:v8 enabled:v11 disabled:UserVisibleSet];
LABEL_14:
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

- (int)viewStatus:(id)a3 name:(__CFString *)a4 err:(__CFError *)a5
{
  v8 = a3;
  if (!sub_100218428(v8) || ![(SOSAccountTrust *)self trustedCircle]|| ![(SOSAccountTrust *)self fullPeerInfo]|| ![(SOSAccountTrustClassic *)self activeValidInCircle:v8 err:a5])
  {
    SOSCreateError();
    v9 = 0;
    goto LABEL_19;
  }

  if (![(SOSAccountTrustClassic *)self valueSetContainsValue:@"pendingEnableViews" value:a4])
  {
    if ([(SOSAccountTrustClassic *)self valueSetContainsValue:@"pendingDisableViews" value:a4])
    {
      v9 = 2;
LABEL_9:
      if (a4 && kSOSViewKeychainV0)
      {
        if (!CFEqual(a4, kSOSViewKeychainV0))
        {
LABEL_14:
          if (!SOSViewsIsV0Subview())
          {
            goto LABEL_19;
          }
        }
      }

      else if (kSOSViewKeychainV0 != a4)
      {
        goto LABEL_14;
      }

      v10 = [v8 trust];
      v11 = [v10 isSyncingV0];

      if (!v11)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    [(SOSAccountTrust *)self fullPeerInfo];
    v9 = SOSFullPeerInfoViewStatus();
    if (v9 != 1)
    {
      goto LABEL_9;
    }
  }

LABEL_16:
  [(SOSAccountTrust *)self trustedCircle];
  [(SOSAccountTrust *)self peerInfo];
  if (SOSCircleHasApplicant())
  {
    v9 = 5;
  }

  else
  {
    v9 = 1;
  }

LABEL_19:

  return v9;
}

- (BOOL)activeValidInCircle:(id)a3 err:(__CFError *)a4
{
  v6 = a3;
  v7 = [(SOSAccountTrust *)self trustedCircle];
  [(SOSAccountTrust *)self fullPeerInfo];
  PeerInfo = SOSFullPeerInfoGetPeerInfo();
  v9 = sub_100218428(v6);

  return _SOSCircleHasActiveValidPeer(v7, PeerInfo, v9, a4);
}

- (int)updateView:(id)a3 name:(__CFString *)a4 code:(int)a5 err:(__CFError *)a6
{
  v10 = a3;
  v11 = sub_100220920(v10);
  v12 = SOSViewCopyViewSet();
  if (![(SOSAccountTrust *)self trustedCircle]|| ![(SOSAccountTrust *)self fullPeerInfo])
  {
    SOSCreateError();
    goto LABEL_46;
  }

  if ((a5 - 3) < 0xFFFFFFFE || ([v10 trust], v13 = objc_claimAutoreleasedReturnValue(), updated = objc_msgSend(v13, "viewStatus:name:err:", v10, a4, a6), v13, (updated - 3) < 0xFFFFFFFE))
  {
LABEL_46:
    updated = 0;
    if (!v12)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (a4 && kSOSViewKeychainV0)
  {
    if (CFEqual(a4, kSOSViewKeychainV0))
    {
      goto LABEL_8;
    }
  }

  else if (kSOSViewKeychainV0 == a4)
  {
LABEL_8:
    if (sub_10021EC74(v10))
    {
      updated = a5 == 2;
    }

    else
    {
      updated = 2 * (a5 == 1);
    }

    if (!v12)
    {
      goto LABEL_42;
    }

LABEL_41:
    CFRelease(v12);
    goto LABEL_42;
  }

  v15 = [v10 trust];
  if ([v15 isSyncingV0])
  {
    IsV0Subview = SOSViewsIsV0Subview();

    if (IsV0Subview)
    {
      updated = 1;
      if (!v12)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }
  }

  else
  {
  }

  Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  CFSetAddValue(Mutable, a4);
  if (a5 == 1 && updated == 2)
  {
    if (v11)
    {
      [(SOSAccountTrust *)self fullPeerInfo];
      updated = SOSFullPeerInfoUpdateViews();
      v18 = updated == 1;
      goto LABEL_29;
    }

    [(SOSAccountTrustClassic *)self pendEnableViewSet:Mutable];
    goto LABEL_35;
  }

  v19 = 0;
  if (a5 != 2 || updated != 1)
  {
LABEL_36:
    if (!Mutable)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v12 && CFSetContainsValue(v12, a4))
  {
LABEL_35:
    v19 = 0;
    updated = 1;
    goto LABEL_36;
  }

  if (!v11)
  {
    v22 = v10;
    v23 = [v22 trust];
    [v23 valueUnionWith:@"pendingDisableViews" valuesToUnion:Mutable];

    v24 = [v22 trust];

    [v24 valueSubtractFrom:@"pendingEnableViews" valuesToSubtract:Mutable];
    v19 = 0;
    updated = 2;
    if (!Mutable)
    {
      goto LABEL_38;
    }

LABEL_37:
    CFRelease(Mutable);
    goto LABEL_38;
  }

  [(SOSAccountTrust *)self fullPeerInfo];
  updated = SOSFullPeerInfoUpdateViews();
  v18 = updated == 2;
LABEL_29:
  v19 = v18;
  if (Mutable)
  {
    goto LABEL_37;
  }

LABEL_38:
  if (v19)
  {
    v20 = [v10 circle_transport];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1002280EC;
    v25[3] = &unk_1003477D0;
    v25[4] = self;
    [(SOSAccountTrustClassic *)self modifyCircle:v20 err:0 action:v25];
  }

  if (v12)
  {
    goto LABEL_41;
  }

LABEL_42:

  return updated;
}

- (BOOL)updateGestalt:(id)a3 newGestalt:(__CFDictionary *)a4
{
  v6 = a3;
  v7 = [v6 gestalt];
  v8 = v7;
  if (a4 && v7)
  {
    v9 = CFEqual(a4, v7);

    if (v9)
    {
LABEL_4:
      v10 = 0;
      goto LABEL_11;
    }
  }

  else
  {

    if (v8 == a4)
    {
      goto LABEL_4;
    }
  }

  if ([(SOSAccountTrust *)self trustedCircle])
  {
    if ([(SOSAccountTrust *)self fullPeerInfo])
    {
      [(SOSAccountTrust *)self fullPeerInfo];
      if (SOSFullPeerInfoUpdateGestalt())
      {
        v11 = [v6 circle_transport];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_1002282D8;
        v14[3] = &unk_1003477D0;
        v14[4] = self;
        [(SOSAccountTrustClassic *)self modifyCircle:v11 err:0 action:v14];
      }
    }
  }

  v12 = [[NSDictionary alloc] initWithDictionary:a4];
  [v6 setGestalt:v12];

  v10 = 1;
LABEL_11:

  return v10;
}

- (SOSAccountTrustClassic)init
{
  v6.receiver = self;
  v6.super_class = SOSAccountTrustClassic;
  v2 = [(SOSAccountTrust *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableSet set];
    [(SOSAccountTrust *)v2 setRetirees:v3];

    [(SOSAccountTrust *)v2 setFullPeerInfo:0];
    [(SOSAccountTrust *)v2 setTrustedCircle:0];
    [(SOSAccountTrust *)v2 setDepartureCode:0];
    v4 = +[NSMutableDictionary dictionary];
    [(SOSAccountTrust *)v2 setExpansion:v4];

    [(SOSAccountTrustClassic *)v2 addRingDictionary];
  }

  return v2;
}

+ (id)trustClassic
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (BOOL)joinCircle:(id)a3 userKey:(__SecKey *)a4 useCloudPeer:(BOOL)a5 err:(__CFError *)a6
{
  v7 = a5;
  v10 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100239204;
  v24 = sub_100239214;
  v25 = [v10 account];
  if ([(SOSAccountTrust *)self trustedCircle])
  {
    if ([(SOSAccountTrustClassic *)self ensureFullPeerAvailable:v21[5] err:a6])
    {
      [(SOSAccountTrust *)self trustedCircle];
      if (SOSCircleCountPeers() && !sub_100232DC8(v21[5]))
      {
        [(SOSAccountTrustClassic *)self setValueInExpansion:@"unsynced" value:kCFBooleanTrue err:0];
        if (v7)
        {
          [(SOSAccountTrust *)self trustedCircle];
          v27[3] = SOSCircleCopyiCloudFullPeerInfoRef();
        }

        v13 = [v21[5] circle_transport];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_10023921C;
        v18[3] = &unk_100346828;
        v18[4] = self;
        v18[5] = &v30;
        v18[8] = a6;
        v18[9] = a4;
        v18[6] = &v20;
        v18[7] = &v26;
        [(SOSAccountTrustClassic *)self modifyCircle:v13 err:a6 action:v18];

        if (v7 || sub_100220920(v21[5]))
        {
          AllCurrent = SOSViewsGetAllCurrent();
          sub_100220C6C(v10, AllCurrent);
        }
      }

      else
      {
        v11 = sub_100006274("resetToOffering");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Resetting circle to offering since there are no peers", buf, 2u);
        }

        v12 = [(SOSAccountTrustClassic *)self resetCircleToOffering:v10 userKey:a4 err:a6];
        *(v31 + 24) = v12;
      }
    }
  }

  else
  {
    SOSCreateErrorWithFormat();
  }

  v15 = v27[3];
  if (v15)
  {
    v27[3] = 0;
    CFRelease(v15);
  }

  v16 = *(v31 + 24);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  return v16;
}

- (BOOL)resetCircleToOffering:(id)a3 userKey:(__SecKey *)a4 err:(__CFError *)a5
{
  v8 = a3;
  v9 = [v8 account];
  if ([(SOSAccountTrustClassic *)self hasCircle:a5]&& [(SOSAccountTrustClassic *)self ensureFullPeerAvailable:v9 err:a5])
  {
    [(SOSAccountTrustClassic *)self resetAllRings:v9 err:a5];
    v10 = [v9 circle_transport];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100239568;
    v15[3] = &unk_1003467D8;
    v17 = a4;
    v18 = a5;
    v15[4] = self;
    v11 = v9;
    v16 = v11;
    [(SOSAccountTrustClassic *)self modifyCircle:v10 err:a5 action:v15];

    sub_100220520(v11);
    AllCurrent = SOSViewsGetAllCurrent();
    sub_100220C6C(v8, AllCurrent);
    notify_post(kSOSCCCircleOctagonKeysChangedNotification);

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)resetToOffering:(id)a3 key:(__SecKey *)a4 err:(__CFError *)a5
{
  v8 = a3;
  [(SOSAccountTrustClassic *)self purgeIdentity];
  v9 = sub_100006274("resetToOffering");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Resetting circle to offering by request from client", v12, 2u);
  }

  if (a4)
  {
    v10 = [(SOSAccountTrustClassic *)self resetCircleToOffering:v8 userKey:a4 err:a5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)leaveCircle:(id)a3 err:(__CFError *)a4
{
  v6 = a3;
  v7 = sub_100006274("circleOps");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Leaving circle by client request", buf, 2u);
  }

  v8 = [v6 circle_transport];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1002398DC;
  v15 = &unk_1003467B0;
  v16 = v6;
  v17 = a4;
  v9 = v6;
  v10 = [(SOSAccountTrustClassic *)self modifyCircle:v8 err:a4 action:&v12];

  [v9 setBackup_key:{0, v12, v13, v14, v15}];
  [(SOSAccountTrust *)self setDepartureCode:2];

  return v10;
}

- (BOOL)leaveCircleWithAccount:(id)a3 err:(__CFError *)a4
{
  v6 = a3;
  v7 = sub_100006274("circleOps");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "leaveCircleWithAccount: Leaving circle by client request", buf, 2u);
  }

  v8 = [v6 circle_transport];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100239A08;
  v15 = &unk_1003467B0;
  v16 = v6;
  v17 = a4;
  v9 = v6;
  v10 = [(SOSAccountTrustClassic *)self modifyCircle:v8 err:a4 action:&v12];

  [(SOSAccountTrust *)self setDepartureCode:2, v12, v13, v14, v15];
  return v10;
}

- (void)forEachCirclePeerExceptMe:(id)a3
{
  v4 = a3;
  if ([(SOSAccountTrust *)self trustedCircle]&& [(SOSAccountTrust *)self peerInfo])
  {
    v5 = [(SOSAccountTrust *)self peerID];
    [(SOSAccountTrust *)self trustedCircle];
    v7 = v5;
    v8 = v4;
    v6 = v5;
    SOSCircleForEachPeer();
  }
}

- (void)generationSignatureUpdateWith:(id)a3 key:(__SecKey *)a4
{
  v6 = a3;
  v7 = [v6 trust];
  if ([v7 trustedCircle] && (sub_10021A328(v6) & 1) != 0)
  {
    v8 = [v6 trust];
    [v8 trustedCircle];
    [v6 accountKey];
    v9 = SOSCircleVerify();

    if (v9)
    {
      v10 = sub_100006274("updatingGenSignature");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "no change to userKey - skipping gensign", buf, 2u);
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

  if ([(SOSAccountTrust *)self trustedCircle]&& [(SOSAccountTrust *)self fullPeerInfo])
  {
    v11 = [v6 circle_transport];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100239CFC;
    v12[3] = &unk_100346760;
    v13 = v6;
    v14 = self;
    v15 = a4;
    [(SOSAccountTrustClassic *)self modifyCircle:v11 err:0 action:v12];

    v10 = v13;
LABEL_10:
  }
}

- (BOOL)fixICloudIdentities:(id)a3 circle:(__OpaqueSOSCircle *)a4
{
  v6 = a3;
  v7 = SOSCircleCopyiCloudFullPeerInfoRef();
  if (v7)
  {
    CFRelease(v7);
LABEL_21:
    LOBYTE(v13) = 0;
    goto LABEL_22;
  }

  sub_100217E5C(v6);
  if (!sub_100217CE0(v6) && !sub_100218648(v6, 0))
  {
    v15 = +[SOSAnalytics logger];
    v16 = v15;
    v17 = &off_100365690;
    goto LABEL_20;
  }

  v8 = sub_100217CE0(v6);
  if (!v8)
  {
    v15 = +[SOSAnalytics logger];
    v16 = v15;
    v17 = &off_100365668;
LABEL_20:
    [v15 logHardFailureForEventNamed:@"iCloudIdentityFix" withAttributes:v17];

    goto LABEL_21;
  }

  v9 = v8;
  v10 = [(SOSAccountTrustClassic *)self iCloudCleanerHandle:v6];
  if ([v10 checkDate])
  {
    v11 = [v6 trust];
    [v11 fullPeerInfo];
    Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
    cf[0] = _NSConcreteStackBlock;
    cf[1] = 3221225472;
    cf[2] = sub_10020F320;
    cf[3] = &unk_100346068;
    cf[4] = Mutable;
    SOSCircleForEachActivePeer();
    if (CFSetGetCount(Mutable) >= 1)
    {
      SOSCircleRemovePeers();
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    [v10 followup];
  }

  cf[0] = 0;
  v13 = [(SOSAccountTrustClassic *)self addiCloudIdentity:a4 key:v9 err:cf];
  if (v13)
  {
    [v6 setNotifyBackupOnExit:1];
    v14 = +[SOSAnalytics logger];
    [v14 logSuccessForEventNamed:@"iCloudIdentityFix"];
  }

  else
  {
    v14 = +[SOSAnalytics logger];
    [v14 logResultForEvent:@"iCloudIdentityFix" hardFailure:1 result:cf[0]];
  }

  v18 = cf[0];
  if (cf[0])
  {
    cf[0] = 0;
    CFRelease(v18);
  }

LABEL_22:
  return v13;
}

- (BOOL)modifyCircle:(id)a3 err:(__CFError *)a4 action:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (![(SOSAccountTrust *)self trustedCircle])
  {
    SOSErrorCreate();
    goto LABEL_8;
  }

  [(SOSAccountTrust *)self trustedCircle];
  v10 = SOSCircleCopyCircle();
  if (!v10)
  {
LABEL_8:
    v12 = 0;
    goto LABEL_6;
  }

  v11 = v10;
  if (v9[2](v9, v10))
  {
    v12 = [(SOSAccountTrustClassic *)self updateCircle:v8 newCircle:v11 err:a4];
  }

  else
  {
    v12 = 1;
  }

  CFRelease(v11);
LABEL_6:

  return v12;
}

- (BOOL)handleUpdateCircle:(__OpaqueSOSCircle *)a3 transport:(id)a4 update:(BOOL)a5 err:(__CFError *)a6
{
  v7 = a5;
  v10 = a4;
  v11 = v10;
  v12 = "remote";
  if (v7)
  {
    v12 = "local";
  }

  v111 = v12;
  v13 = [v10 getAccount];
  v14 = sub_100006274("signing");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = v111;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "start:[%s]", buf, 0xCu);
  }

  if (![v13 accountKey] || (objc_msgSend(v13, "accountKeyIsTrusted") & 1) == 0)
  {
    SOSCreateError();
LABEL_14:
    LOBYTE(v16) = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v19 = sub_100006274("SecError");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "##### Can't update to a NULL circle ######", buf, 2u);
    }

    goto LABEL_21;
  }

  if ((v7 & 1) == 0 && [(SOSAccountTrustClassic *)self checkForSponsorshipTrust:a3])
  {
    _os_activity_initiate(&_mh_execute_header, "CloudCircle EnsurePeerRegistration", OS_ACTIVITY_FLAG_DEFAULT, &stru_100346EA8);
    v15 = sub_100006274("circleop");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Setting key_interests_need_updating to true in handleUpdateCircle", buf, 2u);
    }

    [v13 setKey_interests_need_updating:1];
    [v13 sosEvaluateIfNeeded];
    LOBYTE(v16) = 1;
    goto LABEL_15;
  }

  SOSCircleGetName();
  v18 = [(SOSAccountTrust *)self trustedCircle];
  cf = v18;
  if (!v18)
  {
    SOSCreateErrorWithFormat();
    v19 = sub_100006274("SecError");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "##### Can't replace circle - we don't care about it ######", buf, 2u);
    }

LABEL_21:

    goto LABEL_14;
  }

  v105 = CFGetTypeID(v18);
  TypeID = SOSCircleGetTypeID();
  if (v105 == TypeID)
  {
    v103 = 0;
  }

  else
  {
    v103 = SOSCircleCreate();
    cf = v103;
  }

  v20 = v13;
  v21 = [v20 trust];
  v22 = [v21 retirees];
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_10020ECA0;
  v123 = &unk_100344FA8;
  *&v124 = v22;
  *(&v124 + 1) = v20;
  v125 = a3;
  v23 = v20;
  v24 = v22;
  SOSCircleForEachRetiredPeer();

  v108 = v23;
  v109 = SOSCircleCopyCircle();
  if ([v108 peerInfo])
  {
    HasApplicant = SOSCircleHasApplicant();
  }

  else
  {
    HasApplicant = 0;
  }

  v26 = [v108 trust];
  v27 = [v26 retirees];
  v28 = v27;
  if (v109)
  {
    v112 = 0;
    v113 = &v112;
    v114 = 0x2020000000;
    LOBYTE(v115) = 0;
    if (v27)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10020EDE4;
      v123 = &unk_1003462B0;
      *&v124 = &v112;
      *(&v124 + 1) = v109;
      CFSetApplyFunction(v27, sub_100204A84, buf);
      if ((*(v113 + 24) & 1) != 0 && !SOSCircleCountPeers())
      {
        v29 = sub_100217CE0(v108);
        if (HasApplicant)
        {
          v30 = v29;
          if (!v29)
          {
            goto LABEL_44;
          }

          v31 = sub_100006274("resetToOffering");
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *v118 = 0;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Reset to offering with last retirement and me as applicant", v118, 2u);
          }

          [v108 fullPeerInfo];
          if (SOSCircleResetToOffering() && ([v108 trust], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "addiCloudIdentity:key:err:", v109, v30, a6), v32, (v33 & 1) != 0))
          {
            [v108 setNotifyBackupOnExit:1];
          }

          else
          {
LABEL_44:
            CFRelease(v109);
            v109 = 0;
          }
        }

        else
        {
          v34 = sub_100006274("circleOps");
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *v118 = 0;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Reset to empty with last retirement", v118, 2u);
          }

          SOSCircleResetToEmpty();
        }
      }
    }

    _Block_object_dispose(&v112, 8);
  }

  else
  {
    v109 = 0;
  }

  if (!v109)
  {
    goto LABEL_14;
  }

  v102 = [(SOSAccountTrust *)self fullPeerInfo];
  cf2 = SOSFullPeerInfoGetPeerInfo();
  PeerID = SOSPeerInfoGetPeerID();
  v36 = @"No Peer";
  if (PeerID)
  {
    v36 = PeerID;
  }

  v100 = v36;
  if (cf2)
  {
    v7 |= SOSCircleUpdatePeerInfo();
  }

  [v108 accountKey];
  if (SOSCircleVerify())
  {
    v37 = [v108 accountKey];
LABEL_56:
    v38 = v37;
    goto LABEL_58;
  }

  if ([v108 previousAccountKey])
  {
    [v108 previousAccountKey];
    if (SOSCircleVerify())
    {
      v37 = [v108 previousAccountKey];
      goto LABEL_56;
    }
  }

  v38 = 0;
LABEL_58:
  v40 = v105 == TypeID && v38 != 0;
  [v108 accountKey];
  v41 = SOSCircleConcordanceTrust();
  if (v41 > 3)
  {
    if ((v41 - 5) < 2)
    {
      if (v40)
      {
        v43 = 3;
      }

      else
      {
        v43 = 0;
      }

      v99 = 1;
      v44 = @"Bad Signature";
    }

    else
    {
      if (v41 != 4)
      {
        if (v41 == 7)
        {
          v42 = sub_100006274("signing");
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "##### No trusted peer signature found, accepting hoping for concordance later", buf, 2u);
          }

          v43 = 0;
          v99 = 1;
          v44 = @"No trusted peer signature";
          goto LABEL_88;
        }

        goto LABEL_244;
      }

      v43 = 2;
      v99 = 4;
      v44 = @"No trusted peer left";
    }

    goto LABEL_88;
  }

  if (v41 > 1)
  {
    if (v41 != 2)
    {
      v98 = sub_100006274("SecError");
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "##### No User Public Key Available, this shouldn't ever happen!!!", buf, 2u);
      }

LABEL_246:

      abort();
    }

    if (v40)
    {
      v43 = 3;
    }

    else
    {
      v43 = 0;
    }

    v99 = 1;
    v44 = @"No User Signature";
    goto LABEL_88;
  }

  if (v41)
  {
    if (v41 != 1)
    {
LABEL_244:
      v98 = sub_100006274("SecError");
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "##### Bad Error Return from ConcordanceTrust", buf, 2u);
      }

      goto LABEL_246;
    }

    if (v40)
    {
      v43 = 3;
    }

    else
    {
      v43 = 4;
    }

    v99 = 1;
    v44 = @"Generation Old";
LABEL_88:
    v101 = v44;
    goto LABEL_89;
  }

  v99 = 1;
  v101 = @"Trusted";
  v43 = 1;
LABEL_89:
  v45 = sub_100006274("signing");
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = off_100346730[v43];
    *buf = 136315906;
    *&buf[4] = v46;
    v47 = "trusted";
    *&buf[12] = 2112;
    if (!v40)
    {
      v47 = "untrusted";
    }

    *&buf[14] = v101;
    *&buf[22] = 2080;
    v123 = v47;
    LOWORD(v124) = 2112;
    *(&v124 + 2) = v100;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Decided on action [%s] based on concordance state [%@] and [%s] circle.  My PeerID is %@", buf, 0x2Au);
  }

  LOBYTE(v16) = 1;
  if (v43 <= 1)
  {
    if (!v43)
    {
LABEL_129:
      v106 = 0;
      goto LABEL_130;
    }

    if (!cf2 || !SOSCircleHasPeer())
    {
      v56 = sub_100006274("signing");
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Not countersigning, not in new circle", buf, 2u);
      }

      v57 = [v108 trust];
      [v57 resetRingDictionary];

      goto LABEL_129;
    }

    if (SOSCircleVerifyPeerSigned())
    {
      v48 = sub_100006274("signing");
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Already concur with the new circle", buf, 2u);
      }

      goto LABEL_129;
    }

    v112 = 0;
    if (v102 && SOSCircleConcordanceSign())
    {
      v77 = sub_100006274("signing");
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Concurred with new circle", buf, 2u);
      }

      v106 = v109;
    }

    else
    {
      v77 = sub_100006274("SecError");
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v112;
        _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Failed to concurrence sign, error: %@", buf, 0xCu);
      }

      v106 = 0;
      LOBYTE(v16) = 0;
    }

    if (v112)
    {
      CFRelease(v112);
    }

LABEL_130:
    *v118 = 0;
    v119 = v118;
    v120 = 0x2020000000;
    v121 = 0;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10023BB48;
    v123 = &unk_100346850;
    v59 = cf;
    *&v124 = v118;
    *(&v124 + 1) = v109;
    SOSCircleForEachPeer();
    v112 = _NSConcreteStackBlock;
    v113 = 3221225472;
    v114 = sub_10023BBDC;
    v115 = &unk_100346850;
    v116 = v118;
    v117 = cf;
    SOSCircleForEachPeer();
    v60 = v119[24];
    _Block_object_dispose(v118, 8);
    if (v60 == 1)
    {
      v61 = sub_100006274("circleOps");
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Sending kSOSCCCircleOctagonKeysChangedNotification", buf, 2u);
      }

      notify_post(kSOSCCCircleOctagonKeysChangedNotification);
      v59 = cf;
    }

    if (!cf2)
    {
      v69 = 1;
LABEL_194:
      if (v59)
      {
        CFRetain(cf);
      }

      [v108 setPreviousAccountKey:{objc_msgSend(v108, "accountKey")}];
      v81 = sub_100006274("signing");
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v101;
        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "%@, Accepting new circle", buf, 0xCu);
      }

      [(SOSAccountTrust *)self setTrustedCircle:v109];
      [v108 sosEvaluateIfNeeded];
      if ((v69 & 1) == 0)
      {
        if ([v108 accountKeyIsTrusted] && SOSCircleHasApplicant() && SOSCircleCountPeers() >= 1 && (SOSCircleHasPeer() & 1) == 0 && (SOSCircleHasApplicant() & 1) == 0)
        {
          v82 = sub_100006274("signing");
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "requesting readmission to new circle", buf, 2u);
          }

          [v108 accountKey];
          LOBYTE(v7) = SOSCircleRequestReadmission() | v7;
        }

        if (SOSCircleHasActivePeer())
        {
          v83 = [v108 trust];
          [v83 cleanupRetirementTickets:v108 circle:cf time:86400 err:0];
        }
      }

      v84 = v108;
      [v84 setCircle_rings_retirements_need_attention:1];
      v85 = SOSCircleCopyPeers();
      v86 = SOSCircleCopyPeers();
      v87 = SOSCircleCopyApplicants();
      v88 = SOSCircleCopyApplicants();
      v89 = [v84 peerInfo];
      if (v89 && CFSetContainsValue(v86, v89))
      {
        sub_100228C18(v84, @"EscrowRecord", kCFNull, 0);
      }

      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100220090;
      v123 = &unk_100345A28;
      *(&v124 + 1) = v87;
      v125 = v88;
      v90 = v84;
      *&v124 = v90;
      v126 = v109;
      sub_100220144(v85, v86, buf);
      if (v87)
      {
        CFRelease(v87);
      }

      if (v88)
      {
        CFRelease(v88);
      }

      if (v85)
      {
        CFRelease(v85);
      }

      if (v86)
      {
        CFRelease(v86);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      v91 = v109;
      if ((v7 & 1) == 0)
      {
        v91 = v106;
      }

      cf = v91;
      v92 = sub_100006274("circleop");
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "Setting key_interests_need_updating to true in handleUpdateCircle", buf, 2u);
      }

      [v90 setKey_interests_need_updating:1];
LABEL_227:
      if (cf)
      {
        v93 = sub_100006274("signing");
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = v111;
          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Pushing:[%s]", buf, 0xCu);
        }

        v94 = SOSCircleCopyEncodedData();
        if (v94)
        {
          [v108 setCircle_rings_retirements_need_attention:1];
          v95 = [v11 postCircle:SOSCircleGetName() circleData:v94 err:a6];
          CFRelease(v94);
          LOBYTE(v16) = v16 & v95;
        }

        else
        {
          LOBYTE(v16) = 0;
        }
      }

      goto LABEL_233;
    }

    if (SOSCircleHasActivePeer() && (SOSCircleHasPeer() & 1) == 0)
    {
      if (![(SOSAccountTrustClassic *)self hasLeft])
      {
        [(SOSAccountTrust *)self setDepartureCode:3];
      }

      v62 = sub_100006274("circleOps");
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v63 = [(SOSAccountTrust *)self departureCode];
        *buf = 67109120;
        *&buf[4] = v63;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Member of old circle but not of new circle (%d)", buf, 8u);
      }

      [v108 accountKey];
      SOSCircleLogState();
      [v108 accountKey];
      SOSCircleLogState();
    }

    if (SOSCircleHasActivePeer() && (SOSCircleCountPeers() != 1 || (SOSCircleHasPeer() & 1) == 0) && (SOSCircleHasPeer() & 1) == 0 && (SOSCircleHasApplicant() & 1) == 0)
    {
      v74 = sub_100006274("circle");
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        v75 = SOSPeerInfoGetPeerID();
        Name = SOSCircleGetName();
        *buf = 138412546;
        *&buf[4] = v75;
        *&buf[12] = 2112;
        *&buf[14] = Name;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Purging my peer (ID: %@) for circle '%@'!!!", buf, 0x16u);
      }

      [(SOSAccountTrustClassic *)self purgeIdentity];
      goto LABEL_168;
    }

    if (SOSCircleHasRejectedApplicant())
    {
      v64 = SOSCircleCopyRejectedApplicant();
      v65 = v64;
      if (v64)
      {
        if (CFEqual(v64, cf2))
        {
          [v108 accountKey];
          if (SOSPeerInfoApplicationVerify())
          {
            v66 = sub_100006274("circle");
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              v67 = SOSPeerInfoGetPeerID();
              v68 = SOSCircleGetName();
              *buf = 138412546;
              *&buf[4] = v67;
              *&buf[12] = 2112;
              *&buf[14] = v68;
              _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Rejected, Purging my applicant peer (ID: %@) for circle '%@'", buf, 0x16u);
            }

            debugDumpCircle();
            debugDumpCircle();
            [(SOSAccountTrustClassic *)self purgeIdentity];
            CFRelease(v65);
LABEL_168:
            v69 = 1;
LABEL_193:
            v59 = cf;
            goto LABEL_194;
          }
        }
      }

      v70 = sub_100006274("circle");
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        v71 = SOSPeerInfoGetPeerID();
        v72 = SOSCircleGetName();
        *buf = 138412546;
        *&buf[4] = v71;
        *&buf[12] = 2112;
        *&buf[14] = v72;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Rejected, Reapplying (ID: %@) for circle '%@'", buf, 0x16u);
      }

      debugDumpCircle();
      debugDumpCircle();
      [v108 accountKey];
      SOSCircleRequestReadmission();
      if (v65)
      {
        CFRelease(v65);
      }

      LOBYTE(v7) = 1;
    }

    if (![v108 accountKeyIsTrusted] || !SOSCircleHasPeer())
    {
LABEL_192:
      v69 = 0;
      goto LABEL_193;
    }

    v73 = [(SOSAccountTrustClassic *)self iCloudCheckEventHandle:v108];
    if (![v73 checkDate])
    {
LABEL_191:

      goto LABEL_192;
    }

    if (v7)
    {
      LOBYTE(v7) = 1;
LABEL_190:
      [v73 followup];
      goto LABEL_191;
    }

    v7 = [(SOSAccountTrustClassic *)self fixICloudIdentities:v108 circle:v109];
    v78 = sub_100006274("circleOps");
    v79 = os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v79)
      {
        *buf = 0;
        v80 = "Fixed iCloud Identity in circle";
LABEL_188:
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, v80, buf, 2u);
      }
    }

    else if (v79)
    {
      *buf = 0;
      v80 = "Failed to fix broken icloud identity";
      goto LABEL_188;
    }

    goto LABEL_190;
  }

  if (v43 == 3)
  {
    if (v105 != TypeID || !cf2 || !SOSCircleHasActivePeer())
    {
      v55 = sub_100006274("canary");
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v101;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%@, Rejecting: new circle Have no old circle - would reset", buf, 0xCu);
      }

      goto LABEL_233;
    }

    v54 = sub_100006274("signing");
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v101;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%@, Rejecting new circle, re-publishing old circle", buf, 0xCu);
    }

    [(SOSAccountTrust *)self setTrustedCircle:cf];
    [v108 sosEvaluateIfNeeded];
    goto LABEL_227;
  }

  if (v43 == 2)
  {
    if (!cf2 || !SOSCircleHasPeer())
    {
      v58 = sub_100006274("signing");
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "We are not in this circle, but we need to update account with it", buf, 2u);
      }

      debugDumpCircle();
      debugDumpCircle();
      debugDumpCircle();
      goto LABEL_129;
    }

    v49 = sub_100006274("account");
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = cf2;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Leaving circle with peer %@", buf, 0xCu);
    }

    debugDumpCircle();
    debugDumpCircle();
    debugDumpCircle();
    v50 = sub_100006274("account");
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = [v108 accountKey];
      v52 = [v108 previousAccountKey];
      *buf = 138412802;
      *&buf[4] = v51;
      *&buf[12] = 2112;
      *&buf[14] = v52;
      *&buf[22] = 2112;
      v123 = v38;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Key state: accountKey %@, previousAccountKey %@, old_circle_key %@", buf, 0x20u);
    }

    v16 = sub_10020EED0(v108, v109);
    if (v16)
    {
      v53 = sub_100006274("circleOps");
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Leaving circle by newcircle state", buf, 2u);
      }

      v106 = v109;
    }

    else
    {
      v53 = sub_100006274("signing");
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Can't leave circle, but dumping identities", buf, 2u);
      }

      v106 = 0;
    }

    [(SOSAccountTrust *)self setDepartureCode:v99];
    cf2 = 0;
    goto LABEL_130;
  }

LABEL_233:
  CFRelease(v109);
  if (v103)
  {
    CFRelease(v103);
  }

  v96 = v16 ^ 1;
  if (!a6)
  {
    v96 = 1;
  }

  if ((v96 & 1) == 0)
  {
    v97 = *a6;
    if (*a6)
    {
      *a6 = 0;
      CFRelease(v97);
    }
  }

  [v108 sosEvaluateIfNeeded];
LABEL_15:

  return v16;
}

- (id)iCloudCleanerHandle:(id)a3
{
  v3 = a3;
  v4 = [SOSIntervalEvent alloc];
  v5 = [v3 settings];

  v6 = [(SOSIntervalEvent *)v4 initWithDefaults:v5 dateDescription:@"iCloudCleanerCheck" earliest:432000.0 latest:604800.0];

  return v6;
}

- (id)iCloudCheckEventHandle:(id)a3
{
  v3 = a3;
  v4 = [SOSIntervalEvent alloc];
  v5 = [v3 settings];

  v6 = [(SOSIntervalEvent *)v4 initWithDefaults:v5 dateDescription:@"iCloudIDCheck" earliest:86400.0 latest:129600.0];

  return v6;
}

- (BOOL)checkForSponsorshipTrust:(__OpaqueSOSCircle *)a3
{
  v5 = [(SOSAccountTrust *)self trustedCircle];
  if (!a3 || !v5)
  {
    if (v5 != a3)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (CFEqual(v5, a3))
  {
    return 0;
  }

LABEL_6:
  [(SOSAccountTrust *)self fullPeerInfo];
  v6 = SOSFullPeerInfoCopyPubKey();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (SOSCircleVerify() && ([(SOSAccountTrust *)self trustedCircle], SOSCircleIsOlderGeneration()))
  {
    [(SOSAccountTrust *)self setTrustedCircle:a3];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v7);
  return v8;
}

- (BOOL)ghostBustingOK:(__OpaqueSOSCircle *)a3 updatingTo:(__OpaqueSOSCircle *)a4
{
  if (![(SOSAccountTrust *)self fullPeerInfo]|| !SOSFullPeerInfoGetPeerInfo() || (SOSCircleHasPeer() & 1) == 0 && !SOSCircleHasApplicant())
  {
    return 0;
  }

  PeerID = SOSPeerInfoGetPeerID();
  v5 = SOSCircleCopyAllSignatures();
  CountOfKey = CFDictionaryGetCountOfKey(v5, PeerID);
  Count = CFDictionaryGetCount(v5);
  HasPeer = SOSCircleHasPeer();
  v9 = Count - 2 > 1;
  if (!CountOfKey)
  {
    v9 = 1;
  }

  v10 = (HasPeer & 1) != 0 || v9;
  if (v5)
  {
    CFRelease(v5);
  }

  return v10;
}

- (__OpaqueSOSCircle)ensureCircle:(id)a3 name:(__CFString *)a4 err:(__CFError *)a5
{
  v6 = a3;
  if (![(SOSAccountTrust *)self trustedCircle])
  {
    v7 = SOSCircleCreate();
    [(SOSAccountTrust *)self setTrustedCircle:v7];
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = sub_100006274("circleop");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting key_interests_need_updating to true in ensureCircle", v11, 2u);
    }

    [v6 setKey_interests_need_updating:1];
  }

  [(SOSAccountTrust *)self trustedCircle];
  v9 = [(SOSAccountTrust *)self trustedCircle];

  return v9;
}

- (__OpaqueSOSCircle)getCircle:(__CFError *)a3
{
  v3 = [(SOSAccountTrust *)self trustedCircle];
  v4 = v3;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    if (v5 == CFNullGetTypeID())
    {
      SOSCreateError();
      return 0;
    }
  }

  return v4;
}

- (int)getCircleStatusOnly:(__CFError *)a3
{
  v4 = [(SOSAccountTrust *)self trustedCircle];
  v5 = [(SOSAccountTrust *)self peerInfo];

  return [(SOSAccountTrustClassic *)self thisDeviceStatusInCircle:v4 peer:v5];
}

- (int)thisDeviceStatusInCircle:(__OpaqueSOSCircle *)a3 peer:(__OpaqueSOSPeerInfo *)a4
{
  if (!a3)
  {
    return 1;
  }

  if (!SOSCircleCountPeers())
  {
    return 3;
  }

  if (!a4 || (SOSPeerInfoIsRetirementTicket() & 1) != 0)
  {
    return 1;
  }

  if (SOSCircleHasPeer())
  {
    return 0;
  }

  if ((SOSCircleHasApplicant() & 1) == 0)
  {
    return 1;
  }

  return 2;
}

- (BOOL)hasCircle:(__CFError *)a3
{
  if (![(SOSAccountTrust *)self trustedCircle])
  {
    SOSCreateErrorWithFormat();
  }

  return [(SOSAccountTrust *)self trustedCircle]!= 0;
}

- (BOOL)isInCircleOnly:(__CFError *)a3
{
  v3 = [(SOSAccountTrustClassic *)self getCircleStatusOnly:?];
  if (v3)
  {
    SOSErrorCreate();
  }

  return v3 == 0;
}

- (void)purgeIdentity
{
  if ([(SOSAccountTrust *)self fullPeerInfo])
  {
    [(SOSAccountTrust *)self fullPeerInfo];
    if ((SOSFullPeerInfoPurgePersistentKey() & 1) == 0)
    {
      v3 = sub_100006274("SecWarning");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v5 = [(SOSAccountTrust *)self fullPeerInfo];
        v6 = 2112;
        v7 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Couldn't purge persistent keys for %@ [%@]", buf, 0x16u);
      }
    }

    [(SOSAccountTrust *)self setFullPeerInfo:0];
  }
}

- (BOOL)isMyPeerActive:(__CFError *)a3
{
  v4 = [(SOSAccountTrust *)self peerInfo];
  if (v4)
  {
    [(SOSAccountTrust *)self trustedCircle];
    [(SOSAccountTrust *)self peerInfo];

    LOBYTE(v4) = SOSCircleHasActivePeer();
  }

  return v4;
}

- (BOOL)ensureFullPeerAvailable:(id)a3 err:(__CFError *)a4
{
  v6 = a3;
  if (![(SOSAccountTrust *)self trustedCircle])
  {
    SOSCreateErrorWithFormat();
    goto LABEL_64;
  }

  if (![(SOSAccountTrust *)self fullPeerInfo]|| ([(SOSAccountTrust *)self fullPeerInfo], (SOSFullPeerInfoPrivKeyExists() & 1) == 0))
  {
    if ([(SOSAccountTrust *)self fullPeerInfo])
    {
      v7 = sub_100006274("circleOps");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FullPeerInfo has no matching private key - resetting FPI and attendant keys", &buf, 2u);
      }

      fullPeerInfo = self->super.fullPeerInfo;
      if (fullPeerInfo)
      {
        self->super.fullPeerInfo = 0;
        CFRelease(fullPeerInfo);
      }

      peerInfo = self->super.peerInfo;
      if (peerInfo)
      {
        self->super.peerInfo = 0;
        CFRelease(peerInfo);
      }

      cachedOctagonSigningKey = self->super._cachedOctagonSigningKey;
      if (cachedOctagonSigningKey)
      {
        self->super._cachedOctagonSigningKey = 0;
        CFRelease(cachedOctagonSigningKey);
      }

      cachedOctagonEncryptionKey = self->super._cachedOctagonEncryptionKey;
      if (cachedOctagonEncryptionKey)
      {
        self->super._cachedOctagonEncryptionKey = 0;
        CFRelease(cachedOctagonEncryptionKey);
      }
    }

    cf = a4;
    [(SOSAccountTrust *)self trustedCircle];
    Name = SOSCircleGetName();
    v13 = [v6 gestalt];
    v14 = SOSPeerGestaltGetName();
    v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"ID for %@-%@", v14, Name);

    v49 = [(SOSAccountTrustClassic *)self randomPermanentFullECKey:256 name:v15 error:0];
    v16 = [@"Octagon Peer Signing " stringByAppendingString:v15];
    if ([v6 octagonSigningFullKeyRef])
    {
      v17 = [v6 octagonSigningFullKeyRef];
      v18 = v17;
      if (v17)
      {
        CFRetain(v17);
      }
    }

    else
    {
      v18 = [(SOSAccountTrustClassic *)self randomPermanentFullECKey:384 name:v16 error:0];
    }

    v19 = [@"Octagon Peer Encryption " stringByAppendingString:v15];

    v48 = v19;
    if ([v6 octagonEncryptionFullKeyRef])
    {
      v20 = [v6 octagonEncryptionFullKeyRef];
      v21 = v20;
      if (!v20)
      {
        v24 = 0;
        v22 = v49 != 0;
        v23 = v18 != 0;
        goto LABEL_50;
      }

      CFRetain(v20);
    }

    else
    {
      v21 = [(SOSAccountTrustClassic *)self randomPermanentFullECKey:384 name:v19 error:0];
    }

    v22 = v49 != 0;
    v23 = v18 != 0;
    v24 = v21 != 0;
    if (v49 && v18 && v21)
    {
      v42 = v15;
      v25 = SOSViewCopyViewSet();
      v26 = SOSViewCopyViewSet();
      v27 = SOSViewCopyViewSet();
      v28 = SOSViewCopyViewSet();
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v51 = sub_10025CEA8;
      v52 = &unk_1003477F0;
      v44 = v27;
      theSet = v26;
      v53 = v26;
      CFSetApplyFunction(v27, sub_10025CEB0, &buf);
      Count = CFSetGetCount(v25);
      if (!Count)
      {
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v51 = sub_10025CEA8;
        v52 = &unk_1003477F0;
        v53 = v25;
        CFSetApplyFunction(v26, sub_10025CEB0, &buf);
      }

      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v51 = sub_10025CEA8;
      v52 = &unk_1003477F0;
      v53 = v25;
      v43 = v28;
      CFSetApplyFunction(v28, sub_10025CEB0, &buf);
      [(SOSAccountTrust *)self setFullPeerInfo:0];
      v29 = [v6 gestalt];
      v30 = [v6 backup_key];
      v40 = cf;
      cfa = v25;
      v31 = SOSFullPeerInfoCreateWithViews();

      [(SOSAccountTrust *)self setFullPeerInfo:v31, v40];
      v32 = SOSFullPeerInfoCopyPubKey();
      [v6 setPeerPublicKey:v32];
      if (v32)
      {
        CFRelease(v32);
      }

      v33 = v48;
      v15 = v42;
      if (![v6 peerPublicKey])
      {
        v34 = sub_100006274("circleOp");
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Failed to copy peer public key for account object", &buf, 2u);
        }
      }

      if (v31)
      {
        CFRelease(v31);
      }

      if ([(SOSAccountTrustClassic *)self getValueFromExpansion:@"v2dictionary" err:0])
      {
        [(SOSAccountTrust *)self fullPeerInfo];
        SOSFullPeerInfoUpdateV2Dictionary();
      }

      if (Count)
      {
        [(SOSAccountTrustClassic *)self pendEnableViewSet:theSet];
        [(SOSAccountTrustClassic *)self setValueInExpansion:@"unsynced" value:kCFBooleanTrue err:0];
      }

      if (cfa)
      {
        CFRelease(cfa);
      }

      if (v43)
      {
        CFRelease(v43);
      }

      if (theSet)
      {
        CFRelease(theSet);
      }

      if (v44)
      {
        CFRelease(v44);
      }

      CFRelease(v49);
      CFRelease(v18);
      goto LABEL_60;
    }

LABEL_50:
    v35 = sub_100006274("SecError");
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    v37 = cf;
    if (v36)
    {
      if (cf)
      {
        v37 = *cf;
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v37;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "No full_key: %@:", &buf, 0xCu);
    }

    if (v22)
    {
      CFRelease(v49);
      if (!v23)
      {
LABEL_59:
        v33 = v48;
        if (!v24)
        {
LABEL_61:
          if (v15)
          {
            CFRelease(v15);
          }

          goto LABEL_64;
        }

LABEL_60:
        CFRelease(v21);
        goto LABEL_61;
      }
    }

    else if (!v23)
    {
      goto LABEL_59;
    }

    CFRelease(v18);
    goto LABEL_59;
  }

LABEL_64:
  v38 = [(SOSAccountTrust *)self fullPeerInfo]!= 0;

  return v38;
}

- (void)ensureOctagonPeerKeys:(id)a3
{
  v4 = a3;
  if ([(SOSAccountTrustClassic *)self haveConfirmedOctagonKeys])
  {
    goto LABEL_75;
  }

  err = 0;
  [(SOSAccountTrust *)self fullPeerInfo];
  v5 = SOSFullPeerInfoCopyOctagonSigningKey();
  if (v5)
  {
    v6 = sub_100006274("circleChange");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Already have Octagon signing key", buf, 2u);
    }

    cachedOctagonSigningKey = self->super._cachedOctagonSigningKey;
    if (cachedOctagonSigningKey)
    {
      self->super._cachedOctagonSigningKey = 0;
      CFRelease(cachedOctagonSigningKey);
    }

    v8 = SecKeyCopyPublicKey(v5);
    self->super._cachedOctagonSigningKey = v8;
    sub_100256F40(v8, kSOSInternalAccessGroup);
  }

  else
  {
    if (![(SOSAccountTrustClassic *)self isLockedError:err])
    {
      v9 = sub_100006274("SecError");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = err;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "error is too scary, not creating new Octagon signing key: %@", buf, 0xCu);
      }

      v10 = +[SOSAnalytics logger];
      [v10 logResultForEvent:@"SOSCheckOctagonSigningKey" hardFailure:1 result:err];
    }

    v5 = 0;
  }

  v11 = 0;
  v12 = 0;
  v13 = err;
  if (err)
  {
    err = 0;
    CFRelease(v13);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v14 = err;
  if (err)
  {
    err = 0;
    CFRelease(v14);
  }

  [(SOSAccountTrust *)self fullPeerInfo];
  v15 = SOSFullPeerInfoCopyOctagonEncryptionKey();
  if (err && ![(SOSAccountTrustClassic *)self isLockedError:?])
  {
    v16 = sub_100006274("SecError");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = err;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "circleChange: Error fetching Octagon encryption key: %@", buf, 0xCu);
    }
  }

  if (!v15)
  {
    if (!err)
    {
      goto LABEL_54;
    }

    Domain = CFErrorGetDomain(err);
    if (Domain && kCFErrorDomainOSStatus)
    {
      if (!CFEqual(Domain, kCFErrorDomainOSStatus))
      {
LABEL_37:
        v21 = CFErrorGetDomain(err);
        if (kCFErrorDomainOSStatus && v21)
        {
          if (!CFEqual(v21, kCFErrorDomainOSStatus))
          {
LABEL_43:
            v22 = CFErrorGetDomain(err);
            if (kCFErrorDomainOSStatus && v22)
            {
              if (!CFEqual(v22, kCFErrorDomainOSStatus))
              {
                goto LABEL_54;
              }
            }

            else if (v22 != kCFErrorDomainOSStatus)
            {
              goto LABEL_54;
            }

            if (CFErrorGetCode(err) == -50)
            {
              goto LABEL_49;
            }

LABEL_54:
            if (![(SOSAccountTrustClassic *)self isLockedError:err])
            {
              v29 = sub_100006274("SecError");
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v37 = err;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "error is too scary, not creating new Octagon encryption key: %@", buf, 0xCu);
              }

              v30 = +[SOSAnalytics logger];
              [v30 logResultForEvent:@"SOSCheckOctagonEncryptionKey" hardFailure:1 result:err];
            }

            v15 = 0;
            goto LABEL_68;
          }
        }

        else if (v21 != kCFErrorDomainOSStatus)
        {
          goto LABEL_43;
        }

        if (CFErrorGetCode(err) != -26275)
        {
          goto LABEL_43;
        }

LABEL_49:
        [(SOSAccountTrust *)self trustedCircle];
        v23 = [NSString stringWithFormat:@"Octagon Peer Encryption ID for %@", SOSCircleGetName()];

        cf = 0;
        v24 = [(SOSAccountTrustClassic *)self randomPermanentFullECKey:384 name:v23 error:&cf];
        v15 = v24;
        if (cf || !v24)
        {
          v25 = sub_100006274("SecError");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v37 = cf;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "circleChange: Error creating Octagon encryption key: %@", buf, 0xCu);
          }

          goto LABEL_65;
        }

        [(SOSAccountTrust *)self fullPeerInfo];
        SOSFullPeerInfoUpdateOctagonEncryptionKey();
        if (cf)
        {
          v25 = sub_100006274("SecError");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v37 = cf;
            v26 = "circleChange: Error upgrading Octagon encryption key: %@";
            v27 = v25;
            v28 = 12;
LABEL_63:
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
          }
        }

        else
        {
          v25 = sub_100006274("circleChange");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v26 = "Successfully created new Octagon encryption key";
            v27 = v25;
            v28 = 2;
            goto LABEL_63;
          }
        }

        v11 = 1;
LABEL_65:

        v31 = cf;
        if (cf)
        {
          cf = 0;
          CFRelease(v31);
        }

        v12 = v23;
        goto LABEL_68;
      }
    }

    else if (Domain != kCFErrorDomainOSStatus)
    {
      goto LABEL_37;
    }

    if (CFErrorGetCode(err) == -25300)
    {
      goto LABEL_49;
    }

    goto LABEL_37;
  }

  v17 = sub_100006274("circleChange");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Already have Octagon encryption key", buf, 2u);
  }

  cachedOctagonEncryptionKey = self->super._cachedOctagonEncryptionKey;
  if (cachedOctagonEncryptionKey)
  {
    self->super._cachedOctagonEncryptionKey = 0;
    CFRelease(cachedOctagonEncryptionKey);
  }

  v19 = SecKeyCopyPublicKey(v15);
  self->super._cachedOctagonEncryptionKey = v19;
  sub_100256F40(v19, kSOSInternalAccessGroup);
LABEL_68:
  v32 = err;
  if (err)
  {
    err = 0;
    CFRelease(v32);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v11)
  {
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10025D7CC;
    v33[3] = &unk_1003477D0;
    v33[4] = self;
    [(SOSAccountTrustClassic *)self modifyCircle:v4 err:0 action:v33];
  }

LABEL_75:
}

- (BOOL)haveConfirmedOctagonKeys
{
  [(SOSAccountTrust *)self fullPeerInfo];
  v3 = SOSFullPeerInfoCopyOctagonPublicSigningKey();
  if ([(SOSAccountTrust *)self cachedOctagonSigningKey])
  {
    v4 = [(SOSAccountTrust *)self cachedOctagonSigningKey];
    if (v3 && v4)
    {
      if (CFEqual(v3, v4))
      {
LABEL_5:
        v5 = 1;
        goto LABEL_10;
      }
    }

    else if (v3 == v4)
    {
      goto LABEL_5;
    }
  }

  v6 = sub_100006274("SecError");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "circleChange: No extant octagon signing key", buf, 2u);
  }

  v5 = 0;
LABEL_10:
  [(SOSAccountTrust *)self fullPeerInfo];
  v7 = SOSFullPeerInfoCopyOctagonPublicEncryptionKey();
  if ([(SOSAccountTrust *)self cachedOctagonEncryptionKey])
  {
    v8 = [(SOSAccountTrust *)self cachedOctagonEncryptionKey];
    if (v7 && v8)
    {
      if (CFEqual(v7, v8))
      {
        goto LABEL_14;
      }
    }

    else if (v7 == v8)
    {
LABEL_14:
      v9 = 1;
      if (!v3)
      {
        goto LABEL_21;
      }

LABEL_20:
      CFRelease(v3);
      goto LABEL_21;
    }
  }

  v10 = sub_100006274("SecError");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "circleChange: No extant octagon encryption key", v12, 2u);
  }

  v9 = 0;
  if (v3)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (v7)
  {
    CFRelease(v7);
  }

  return v5 & v9;
}

- (__OpaqueSOSFullPeerInfo)CopyAccountIdentityPeerInfo
{
  v2 = [(SOSAccountTrust *)self fullPeerInfo];

  return _SOSFullPeerInfoCopyFullPeerInfo(v2);
}

- (BOOL)hasFullPeerInfo:(__CFError *)a3
{
  v4 = [(SOSAccountTrustClassic *)self hasCircle:?];
  if (v4)
  {
    if ([(SOSAccountTrust *)self fullPeerInfo])
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      SOSCreateErrorWithFormat();
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (BOOL)fullPeerInfoVerify:(__SecKey *)a3 err:(__CFError *)a4
{
  if (![(SOSAccountTrust *)self fullPeerInfo])
  {
    return 0;
  }

  PublicFromPrivate = SecKeyCreatePublicFromPrivate();
  [(SOSAccountTrust *)self peerInfo];
  v6 = SOSPeerInfoApplicationVerify();
  if (PublicFromPrivate)
  {
    CFRelease(PublicFromPrivate);
  }

  return v6;
}

- (__OpaqueSOSFullPeerInfo)getMyFullPeerInfo
{
  result = [(SOSAccountTrust *)self trustedCircle];
  if (result)
  {

    return [(SOSAccountTrust *)self fullPeerInfo];
  }

  return result;
}

- (BOOL)updateFullPeerInfo:(id)a3 minimum:(__CFSet *)a4 excluded:(__CFSet *)a5
{
  v6 = a3;
  if ([(SOSAccountTrust *)self trustedCircle])
  {
    if ([(SOSAccountTrust *)self fullPeerInfo])
    {
      [(SOSAccountTrust *)self fullPeerInfo];
      if (SOSFullPeerInfoUpdateToCurrent())
      {
        v7 = [v6 circle_transport];
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_10025DBEC;
        v9[3] = &unk_1003477D0;
        v9[4] = self;
        [(SOSAccountTrustClassic *)self modifyCircle:v7 err:0 action:v9];
      }
    }
  }

  return 1;
}

- (BOOL)isLockedError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:kCFErrorDomainOSStatus])
    {
      v6 = [v4 code] == -25308;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end