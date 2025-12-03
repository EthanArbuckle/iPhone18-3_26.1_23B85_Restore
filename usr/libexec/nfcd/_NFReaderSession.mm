@interface _NFReaderSession
- (BOOL)_findAppFromSet:(id)set tag:(id)tag foundApp:(id *)app outError:(id *)error;
- (BOOL)_getKeyVersionForNodes:(id)nodes;
- (BOOL)_isAIDStringValid:(id)valid;
- (BOOL)_isFelicaPollingCommand:(id)command systemCode:(id *)code;
- (BOOL)_isPayloadConnectionHandover:(id)handover;
- (BOOL)_mifareCheck:(id)check;
- (BOOL)_processRawTagsForCoreNFC:(id)c requireDiscoveryRestart:(BOOL *)restart supportedTags:(id)tags caEvents:(id)events outError:(id *)error outConnectedTagIndex:(unint64_t *)index;
- (BOOL)_processRawTagsForInternalSession:(id)session supportedTags:(id)tags outError:(id *)error;
- (BOOL)_processRawTagsForNDEF:(id)f ndefMessages:(id)messages supportedTags:(id)tags caEvents:(id)events outError:(id *)error;
- (BOOL)_readEFCardAccessFromTag:(id)tag buffer:(id)buffer outError:(id *)error;
- (BOOL)_requiresMifareUpdate:(id)update;
- (BOOL)_requiresTypeFUpdate:(id)update;
- (BOOL)_selectFromTag:(id)tag aid:(id)aid resolvedAid:(id *)resolvedAid error:(id *)error;
- (BOOL)_selectMFFromTag:(id)tag outError:(id *)error;
- (BOOL)_updateFelicaTagInfo:(id)info outError:(id *)error;
- (BOOL)_updateMifareTagInfo:(id)info outError:(id *)error;
- (BOOL)_validateMifareAPDU:(id)u response:(id)response;
- (BOOL)activateTag:(id)tag outError:(id *)error;
- (BOOL)isPRCIDSupported:(id)supported;
- (BOOL)isPaceSupported:(id)supported;
- (BOOL)resume;
- (BOOL)selectPRCIDApp:(id)app fromTag:(id)tag resolvedAid:(id *)aid outError:(id *)error;
- (BOOL)selectPaceApp:(id)app fromTag:(id)tag outError:(id *)error;
- (BOOL)selectPaceApp:(id)app fromTag:(id)tag resolvedAid:(id *)aid outError:(id *)error;
- (BOOL)suspendWithInfo:(id)info;
- (BOOL)validateAID:(id)d withSelectResponse:(id)response outRealAid:(id *)aid;
- (BOOL)validateSystemCode:(id)code;
- (BOOL)willStartSession;
- (NFSystemPowerConsumptionMonitor)powerConsumptionReporter;
- (_NFDriverTagDiscoveryNtf)_getTagNotificationConfig;
- (_NFReaderSession)initWithRemoteObject:(id)object workQueue:(id)queue whitelist:(id)whitelist serviceType:(unint64_t)type showSharingUI:(unint64_t)i coreNFCSessionType:(unint64_t)sessionType scanText:(id)text;
- (id)_RequestService:(id)service;
- (id)_RequestService:(id)service forSystemCode:(id)code;
- (id)_activateAppOnConnect:(id)connect;
- (id)_generate7816AidList:(id)list;
- (id)_getApplicationNameFromFciTemplate:(id)template;
- (id)_getFCITemplate:(id)template;
- (id)_getIDMFromFelicaTagForCoreNFC:(id)c systemCode:(id)code outError:(id *)error;
- (id)_getIDMFromTag:(id)tag systemCode:(id)code outIdm:(id *)idm outPmm:(id *)pmm;
- (id)_getNodeList;
- (id)_getSystemCodeListFromTag:(id)tag outError:(id *)error;
- (id)_getSystemInfo:(id)info outError:(id *)error;
- (id)_performType4AppSelect:(id)select tag:(id)tag;
- (id)_processFelicaTagForCoreNFC:(id)c outError:(id *)error;
- (id)_processISO14443TagForCoreNFC:(id)c tagIsConnected:(BOOL *)connected outError:(id *)error;
- (id)_processISO15693TagForCoreNFC:(id)c outError:(id *)error;
- (id)_processIso14Tag:(id)tag connected:(BOOL *)connected appFound:(id *)found updatedTag:(id *)updatedTag;
- (id)_processMifareTag:(id)tag connected:(BOOL *)connected isMifare:(BOOL *)mifare;
- (id)_processNDEFTagForCoreNFC:(id)c outError:(id *)error;
- (id)_readFromTag:(id)tag offset:(unsigned __int16)offset outError:(id *)error;
- (id)_readNdefMessageFromTag:(id)tag rawLength:(unint64_t *)length error:(id *)error;
- (id)_selectTag:(id)tag aid:(id)aid p1:(unsigned __int8)p1 p2:(unsigned __int8)p2 shortLe:(char)le error:(id *)error;
- (id)_wildcardPollSystemCodeForTag:(id)tag outError:(id *)error;
- (id)detectPaceAppOnTag:(id)tag appFound:(id *)found;
- (id)getPermissible7816AppsFromInfoPlist:(id)plist;
- (id)getPermissibleFelicaSystemCodeFromInfoPlist:(id)plist;
- (int64_t)validateAID:(id)d allowsPrefixMatch:(BOOL)match;
- (unint64_t)_extractCardAccessLengthFromTag:(id)tag outError:(id *)error;
- (unsigned)_getTagTypeFromTag:(id)tag;
- (unsigned)_queryMifareType:(id)type outError:(id *)error;
- (unsigned)_refreshNdefTagConnection;
- (unsigned)_validateAPDU:(id)u outCheckFciResponse:(BOOL *)response;
- (unsigned)_validateFelicaCommand:(id)command;
- (unsigned)_validateISO15693Packet:(id)packet;
- (void)_sync_connect:(id)_sync_connect completion:(id)completion;
- (void)_sync_execRemoteAdminScript:(id)script completion:(id)completion;
- (void)_sync_felicaStateForSystemCode:(id)code withRequestService:(id)service performSearchServiceCode:(BOOL)serviceCode completion:(id)completion;
- (void)_sync_restartPolling:(id)polling;
- (void)_sync_setECPPayload:(id)payload completion:(id)completion;
- (void)_sync_startPollingForNDEFMessagesWithSessionConfig:(unint64_t)config completion:(id)completion;
- (void)_sync_startPollingForTags:(unint64_t)tags sessionConfig:(unint64_t)config completion:(id)completion;
- (void)_sync_startPollingWithConfig:(id)config validatedAIDList:(id)list completion:(id)completion;
- (void)_sync_stopPolling:(id)polling;
- (void)_sync_transceive:(id)_sync_transceive completion:(id)completion;
- (void)_tagRemovalDetect:(id)detect;
- (void)_updateReaderSettingsBasedOnConfig:(unint64_t)config;
- (void)activateUIControllerWithCompletion:(id)completion;
- (void)checkNdefSupportWithCompletion:(id)completion;
- (void)checkPresenceWithCompletion:(id)completion;
- (void)cleanup;
- (void)cleanupUI;
- (void)clearUIControllerInvalidationHandler;
- (void)configurePollingProfile:(int64_t)profile completion:(id)completion;
- (void)connect:(id)connect completion:(id)completion;
- (void)coreDuetActivityRevoked;
- (void)didStartSession:(id)session;
- (void)disconnectWithCardRemoval:(BOOL)removal completion:(id)completion;
- (void)enableContinuousWave:(BOOL)wave withFrequencySweep:(BOOL)sweep completion:(id)completion;
- (void)execRemoteAdminScript:(id)script completion:(id)completion;
- (void)expectedAllowedReaderTimeWithCompletion:(id)completion;
- (void)felicaRequestService:(id)service completion:(id)completion;
- (void)felicaRequestService:(id)service forSystemCode:(id)code completion:(id)completion;
- (void)felicaStateForSystemCode:(id)code withRequestService:(id)service performSearchServiceCode:(BOOL)serviceCode completion:(id)completion;
- (void)formatNdefWithKey:(id)key completion:(id)completion;
- (void)handleFilteredFieldNotification:(id)notification;
- (void)handleReaderBurnoutCleared;
- (void)handleReaderBurnoutTimer;
- (void)handleRemoteTagsDetected:(id)detected;
- (void)handleXPCInvalidation;
- (void)ndefReadWithCompletion:(id)completion;
- (void)ndefWrite:(id)write completion:(id)completion;
- (void)performVAS:(id)s completion:(id)completion;
- (void)restartPollingWithCompletion:(id)completion;
- (void)setECPPayload:(id)payload completion:(id)completion;
- (void)setUiInvalidationHandler:(id)handler;
- (void)skipMifareClassificationWithCompletion:(id)completion;
- (void)startPollingForNDEFMessagesWithSessionConfig:(unint64_t)config completion:(id)completion;
- (void)startPollingForTags:(unint64_t)tags sessionConfig:(unint64_t)config completion:(id)completion;
- (void)startPollingWithConfig:(id)config completion:(id)completion;
- (void)stopPollingWithCompletion:(id)completion;
- (void)transceive:(id)transceive completion:(id)completion;
- (void)updateSharingUIScanText:(id)text completion:(id)completion;
- (void)updateSharingUIStateOnInvalidation:(int64_t)invalidation completion:(id)completion;
- (void)writeProtectNDEFTagWithCompletion:(id)completion;
@end

@implementation _NFReaderSession

- (BOOL)isPRCIDSupported:(id)supported
{
  nF_asHexString = [supported NF_asHexString];
  v4 = [nF_asHexString isEqualToString:@"F049442E43484E"];

  return v4;
}

- (BOOL)selectPRCIDApp:(id)app fromTag:(id)tag resolvedAid:(id *)aid outError:(id *)error
{
  appCopy = app;
  tagCopy = tag;
  if ([appCopy length] > 0xFF)
  {
    goto LABEL_12;
  }

  v13 = tagCopy;
  if ([v13 type] != 5)
  {

    goto LABEL_12;
  }

  errorCopy = error;
  sel = a2;
  *buf = 0;
  tagB = [v13 tagB];
  pupi = [tagB pupi];
  v16 = [[NSData alloc] initWithBytes:buf length:4];
  v17 = [pupi isEqualToData:v16];

  if (!v17)
  {
LABEL_12:
    v30 = 0;
    goto LABEL_13;
  }

  nF_asHexString = [appCopy NF_asHexString];
  v19 = [nF_asHexString isEqualToString:@"F049442E43484E"];

  if ((v19 & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v33 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(sel);
      v37 = 45;
      if (isMetaClass)
      {
        v37 = 43;
      }

      v33(3, "%c[%{public}s %{public}s]:%i Unexpected AID value", v37, ClassName, Name, 39);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v38 = NFSharedLogGetLogger();
    v39 = errorCopy;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v40 = object_getClass(self);
      if (class_isMetaClass(v40))
      {
        v41 = 43;
      }

      else
      {
        v41 = 45;
      }

      v42 = object_getClassName(self);
      v43 = sel_getName(sel);
      *buf = 67109890;
      *&buf[4] = v41;
      v159 = 2082;
      v160 = v42;
      v161 = 2082;
      v162 = v43;
      v163 = 1024;
      v164 = 39;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected AID value", buf, 0x22u);
    }

    if (!errorCopy)
    {
      goto LABEL_12;
    }

    v44 = [NSError alloc];
    v45 = [NSString stringWithUTF8String:"nfcd"];
    v156[0] = NSLocalizedDescriptionKey;
    v46 = [NSString stringWithUTF8String:"Invalid State"];
    v157[0] = v46;
    v157[1] = &off_100331E78;
    v156[1] = @"Line";
    v156[2] = @"Method";
    v47 = [[NSString alloc] initWithFormat:@"%s", sel_getName(sel)];
    v157[2] = v47;
    v156[3] = NSDebugDescriptionErrorKey;
    v48 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(sel), 40];
    v157[3] = v48;
    v49 = v157;
    v50 = v156;
LABEL_36:
    [NSDictionary dictionaryWithObjects:v49 forKeys:v50 count:4];
    v63 = v62 = appCopy;
    *v39 = [v44 initWithDomain:v45 code:12 userInfo:v63];

    appCopy = v62;
    goto LABEL_12;
  }

  v123 = tagCopy;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v51 = NFLogGetLogger();
    if (v51)
    {
      v52 = v51;
      v53 = object_getClass(self);
      v54 = class_isMetaClass(v53);
      v55 = object_getClassName(self);
      v109 = sel_getName(sel);
      v56 = 45;
      if (v54)
      {
        v56 = 43;
      }

      v52(3, "%c[%{public}s %{public}s]:%i Unable to read NFC settings from ATL", v56, v55, v109, 46);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v57 = NFSharedLogGetLogger();
    v39 = errorCopy;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v58 = object_getClass(self);
      if (class_isMetaClass(v58))
      {
        v59 = 43;
      }

      else
      {
        v59 = 45;
      }

      v60 = object_getClassName(self);
      v61 = sel_getName(sel);
      *buf = 67109890;
      *&buf[4] = v59;
      v159 = 2082;
      v160 = v60;
      v161 = 2082;
      v162 = v61;
      v163 = 1024;
      v164 = 46;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unable to read NFC settings from ATL", buf, 0x22u);
    }

    if (!errorCopy)
    {
      goto LABEL_12;
    }

    v44 = [NSError alloc];
    v45 = [NSString stringWithUTF8String:"nfcd"];
    v154[0] = NSLocalizedDescriptionKey;
    v46 = [NSString stringWithUTF8String:"Invalid State"];
    v155[0] = v46;
    v155[1] = &off_100331E90;
    v154[1] = @"Line";
    v154[2] = @"Method";
    v47 = [[NSString alloc] initWithFormat:@"%s", sel_getName(sel)];
    v155[2] = v47;
    v154[3] = NSDebugDescriptionErrorKey;
    v48 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(sel), 47];
    v155[3] = v48;
    v49 = v155;
    v50 = v154;
    goto LABEL_36;
  }

  LOBYTE(v159) = 8;
  *buf = 0x10800000000001DLL;
  driverWrapper = [(_NFReaderSession *)self driverWrapper];
  v21 = [[NSData alloc] initWithBytes:buf length:9];
  whitelistChecker = [(_NFReaderSession *)self whitelistChecker];
  [whitelistChecker sessionTimeLimit];
  v137 = 0;
  v23 = sub_1001960B0(driverWrapper, v21, v13, &v137);
  v24 = v137;

  v122 = v24;
  if (!v24)
  {
    v64 = v23;
    if (![v23 length])
    {
      if (errorCopy)
      {
        v91 = [NSError alloc];
        v92 = v23;
        v93 = [NSString stringWithUTF8String:"nfcd"];
        v146[0] = NSLocalizedDescriptionKey;
        v76 = [NSString stringWithUTF8String:"Tag Error"];
        v147[0] = v76;
        v147[1] = &off_100331ED8;
        v146[1] = @"Line";
        v146[2] = @"Method";
        v148 = [[NSString alloc] initWithFormat:@"%s", sel_getName(sel)];
        v146[3] = NSDebugDescriptionErrorKey;
        v77 = v148;
        v64 = v92;
        v78 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(sel), 68];
        v149 = v78;
        v94 = [NSDictionary dictionaryWithObjects:v147 forKeys:v146 count:4];
        *errorCopy = [v91 initWithDomain:v93 code:29 userInfo:v94];
        v27 = v93;

        v122 = 0;
        v30 = 0;
        tagCopy = v123;
        goto LABEL_91;
      }

      v122 = 0;
      v30 = 0;
      goto LABEL_92;
    }

    v65 = +[AppletTranslator getNFCSettings];
    v66 = objc_opt_new();
    v112 = v65;
    v67 = [v65 objectForKeyedSubscript:@"PRCID_SELECT_APP_LIST"];
    v111 = v67;
    if (v67 && (v68 = v67, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v69 = v68;
      v70 = [v69 countByEnumeratingWithState:&v133 objects:v145 count:16];
      if (v70)
      {
        v71 = v70;
        v118 = appCopy;
        v72 = *v134;
        do
        {
          for (i = 0; i != v71; i = i + 1)
          {
            if (*v134 != v72)
            {
              objc_enumerationMutation(v69);
            }

            v74 = *(*(&v133 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v75 = [NSData NF_dataWithHexString:v74];
              [v66 addObject:v75];
            }
          }

          v71 = [v69 countByEnumeratingWithState:&v133 objects:v145 count:16];
        }

        while (v71);
        tagCopy = v123;
        appCopy = v118;
      }
    }

    else
    {
      v69 = [[NSData alloc] initWithBytes:&unk_100297776 length:2];
      [v66 addObject:v69];
    }

    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v78 = v66;
    v116 = [v78 countByEnumeratingWithState:&v129 objects:v144 count:16];
    if (!v116)
    {
      v64 = v23;
      goto LABEL_70;
    }

    v119 = *v130;
    v64 = v23;
    obj = v78;
LABEL_55:
    v83 = 0;
    v84 = v64;
    v85 = appCopy;
    while (1)
    {
      if (*v130 != v119)
      {
        objc_enumerationMutation(obj);
      }

      appCopy = *(*(&v129 + 1) + 8 * v83);

      v127 = 41984;
      v128 = [appCopy length];
      v86 = [[NSMutableData alloc] initWithBytes:&v127 length:5];
      [v86 appendData:appCopy];
      driverWrapper2 = [(_NFReaderSession *)self driverWrapper];
      whitelistChecker2 = [(_NFReaderSession *)self whitelistChecker];
      [whitelistChecker2 sessionTimeLimit];
      v126 = 0;
      v121 = v86;
      v64 = sub_1001960B0(driverWrapper2, v86, v13, &v126);
      v89 = v126;

      v122 = v89;
      if (v89)
      {
        break;
      }

      if (![v64 length])
      {
        tagCopy = v123;
        v95 = errorCopy;
        if (errorCopy)
        {
          v114 = v64;
          v120 = appCopy;
          v98 = [NSError alloc];
          v99 = [NSString stringWithUTF8String:"nfcd"];
          v138[0] = NSLocalizedDescriptionKey;
          v100 = [NSString stringWithUTF8String:"Tag Error"];
          v139[0] = v100;
          v139[1] = &off_100331F20;
          v138[1] = @"Line";
          v138[2] = @"Method";
          v101 = [[NSString alloc] initWithFormat:@"%s", sel_getName(sel)];
          v139[2] = v101;
          v138[3] = NSDebugDescriptionErrorKey;
          v102 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(sel), 106];
          v139[3] = v102;
          v103 = [NSDictionary dictionaryWithObjects:v139 forKeys:v138 count:4];
          v104 = v98;
          v96 = v99;
          v105 = v99;
          goto LABEL_84;
        }

        v122 = 0;
LABEL_89:
        v27 = v112;

        v30 = 0;
        v78 = obj;
        v76 = obj;
        goto LABEL_90;
      }

      v90 = [NFResponseAPDU responseWithData:v64];
      tagCopy = v123;
      if ([v90 status] == 36864)
      {
        if (aid)
        {
          *aid = [NSData NF_dataWithHexString:@"F049442E43484E"];
        }

        v122 = 0;
        v30 = 1;
        v78 = obj;
        goto LABEL_81;
      }

      v83 = v83 + 1;
      v84 = v64;
      v85 = appCopy;
      if (v116 == v83)
      {
        v78 = obj;
        v116 = [obj countByEnumeratingWithState:&v129 objects:v144 count:16];
        if (v116)
        {
          goto LABEL_55;
        }

LABEL_70:

        v122 = 0;
        appCopy = 0;
        v30 = 0;
LABEL_81:
        v76 = v78;
        v27 = v112;
LABEL_90:
        v77 = v111;
LABEL_91:

        goto LABEL_92;
      }
    }

    if ([v89 code] == 64)
    {
      tagCopy = v123;
      v95 = errorCopy;
      if (!errorCopy)
      {
        goto LABEL_89;
      }

      v120 = appCopy;
      v117 = [NSError alloc];
      v96 = [NSString stringWithUTF8String:"nfcd"];
      code = [v89 code];
      v142[0] = NSLocalizedDescriptionKey;
      v114 = v64;
      if ([v89 code] > 75)
      {
        code2 = 76;
      }

      else
      {
        code2 = [v89 code];
      }

      v100 = [NSString stringWithUTF8String:off_100318E18[code2]];
      v143[0] = v100;
      v143[1] = v89;
      v142[1] = NSUnderlyingErrorKey;
      v142[2] = @"Line";
      v143[2] = &off_100331EF0;
      v142[3] = @"Method";
      v101 = [[NSString alloc] initWithFormat:@"%s", sel_getName(sel)];
      v143[3] = v101;
      v142[4] = NSDebugDescriptionErrorKey;
      v102 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(sel), 100];
      v143[4] = v102;
      v103 = [NSDictionary dictionaryWithObjects:v143 forKeys:v142 count:5];
      v104 = v117;
      v105 = v96;
      v107 = code;
    }

    else
    {
      tagCopy = v123;
      v95 = errorCopy;
      if (!errorCopy)
      {
        goto LABEL_89;
      }

      v114 = v64;
      v120 = appCopy;
      v106 = [NSError alloc];
      v96 = [NSString stringWithUTF8String:"nfcd"];
      v140[0] = NSLocalizedDescriptionKey;
      v100 = [NSString stringWithUTF8String:"Tag Error"];
      v141[0] = v100;
      v141[1] = v89;
      v140[1] = NSUnderlyingErrorKey;
      v140[2] = @"Line";
      v141[2] = &off_100331F08;
      v140[3] = @"Method";
      v101 = [[NSString alloc] initWithFormat:@"%s", sel_getName(sel)];
      v141[3] = v101;
      v140[4] = NSDebugDescriptionErrorKey;
      v102 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(sel), 102];
      v141[4] = v102;
      v103 = [NSDictionary dictionaryWithObjects:v141 forKeys:v140 count:5];
      v104 = v106;
      v105 = v96;
LABEL_84:
      v107 = 29;
    }

    *v95 = [v104 initWithDomain:v105 code:v107 userInfo:v103];

    appCopy = v120;
    v64 = v114;
    goto LABEL_89;
  }

  if (errorCopy)
  {
    v113 = v23;
    code3 = [v24 code];
    v26 = [NSError alloc];
    v27 = [NSString stringWithUTF8String:"nfcd"];
    if (code3 == 64)
    {
      code4 = [v122 code];
      v152[0] = NSLocalizedDescriptionKey;
      if ([v122 code] > 75)
      {
        code5 = 76;
      }

      else
      {
        code5 = [v122 code];
      }

      v76 = [NSString stringWithUTF8String:off_100318E18[code5]];
      v153[0] = v76;
      v153[1] = v122;
      v152[1] = NSUnderlyingErrorKey;
      v152[2] = @"Line";
      v153[2] = &off_100331EA8;
      v152[3] = @"Method";
      v77 = [[NSString alloc] initWithFormat:@"%s", sel_getName(sel)];
      v153[3] = v77;
      v152[4] = NSDebugDescriptionErrorKey;
      v78 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(sel), 63];
      v153[4] = v78;
      v79 = [NSDictionary dictionaryWithObjects:v153 forKeys:v152 count:5];
      v80 = v26;
      v81 = v27;
      v82 = code4;
    }

    else
    {
      v150[0] = NSLocalizedDescriptionKey;
      v76 = [NSString stringWithUTF8String:"Tag Error"];
      v151[0] = v76;
      v151[1] = v122;
      v150[1] = NSUnderlyingErrorKey;
      v150[2] = @"Line";
      v151[2] = &off_100331EC0;
      v150[3] = @"Method";
      v77 = [[NSString alloc] initWithFormat:@"%s", sel_getName(sel)];
      v151[3] = v77;
      v150[4] = NSDebugDescriptionErrorKey;
      v78 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(sel), 65];
      v151[4] = v78;
      v79 = [NSDictionary dictionaryWithObjects:v151 forKeys:v150 count:5];
      v80 = v26;
      v81 = v27;
      v82 = 29;
    }

    *errorCopy = [v80 initWithDomain:v81 code:v82 userInfo:v79];

    v30 = 0;
    v64 = v113;
    goto LABEL_91;
  }

  v30 = 0;
  v64 = v23;
LABEL_92:

LABEL_13:
  return v30;
}

- (BOOL)activateTag:(id)tag outError:(id *)error
{
  tagCopy = tag;
  v8 = [[NSData alloc] initWithBytes:&qword_10029776D length:9];
  driverWrapper = [(_NFReaderSession *)self driverWrapper];
  whitelistChecker = [(_NFReaderSession *)self whitelistChecker];
  [whitelistChecker sessionTimeLimit];
  v31 = 0;
  v11 = sub_1001960B0(driverWrapper, v8, tagCopy, &v31);

  v12 = v31;
  if (v12)
  {
    if (error)
    {
      code = [v12 code];
      v14 = [NSError alloc];
      v15 = [NSString stringWithUTF8String:"nfcd"];
      if (code == 64)
      {
        code2 = [v12 code];
        v38[0] = NSLocalizedDescriptionKey;
        if ([v12 code] > 75)
        {
          code3 = 76;
        }

        else
        {
          code3 = [v12 code];
        }

        v19 = [NSString stringWithUTF8String:off_100318E18[code3]];
        v39[0] = v19;
        v39[1] = v12;
        v38[1] = NSUnderlyingErrorKey;
        v38[2] = @"Line";
        v39[2] = &off_100331F38;
        v38[3] = @"Method";
        v20 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v39[3] = v20;
        v38[4] = NSDebugDescriptionErrorKey;
        v21 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 138];
        v39[4] = v21;
        v25 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:5];
        v26 = v14;
        v27 = v15;
        v28 = code2;
        goto LABEL_17;
      }

      v36[0] = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Tag Error"];
      v37[0] = v19;
      v37[1] = v12;
      v36[1] = NSUnderlyingErrorKey;
      v36[2] = @"Line";
      v37[2] = &off_100331F50;
      v36[3] = @"Method";
      v20 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v37[3] = v20;
      v36[4] = NSDebugDescriptionErrorKey;
      v21 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 140];
      v37[4] = v21;
      v22 = v37;
      v23 = v36;
      v24 = 5;
LABEL_14:
      v25 = [NSDictionary dictionaryWithObjects:v22 forKeys:v23 count:v24];
      v26 = v14;
      v27 = v15;
      v28 = 29;
LABEL_17:
      *error = [v26 initWithDomain:v27 code:v28 userInfo:v25];
    }

LABEL_18:
    v18 = 0;
    goto LABEL_19;
  }

  if (![v11 length])
  {
    if (!error)
    {
      goto LABEL_18;
    }

    v14 = [NSError alloc];
    v15 = [NSString stringWithUTF8String:"nfcd"];
    v34[0] = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Tag Error"];
    v35[0] = v19;
    v35[1] = &off_100331F68;
    v34[1] = @"Line";
    v34[2] = @"Method";
    v20 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v35[2] = v20;
    v34[3] = NSDebugDescriptionErrorKey;
    v21 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 143];
    v35[3] = v21;
    v22 = v35;
    v23 = v34;
LABEL_13:
    v24 = 4;
    goto LABEL_14;
  }

  v17 = *[v11 bytes];
  v18 = v17 == 8;
  if (error && v17 != 8)
  {
    v14 = [NSError alloc];
    v15 = [NSString stringWithUTF8String:"nfcd"];
    v32[0] = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Tag Error"];
    v33[0] = v19;
    v33[1] = &off_100331F80;
    v32[1] = @"Line";
    v32[2] = @"Method";
    v20 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v33[2] = v20;
    v32[3] = NSDebugDescriptionErrorKey;
    v21 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 152];
    v33[3] = v21;
    v22 = v33;
    v23 = v32;
    goto LABEL_13;
  }

LABEL_19:

  return v18;
}

- (id)getPermissible7816AppsFromInfoPlist:(id)plist
{
  plistCopy = plist;
  v130 = objc_opt_new();
  v6 = [plistCopy objectForKey:@"com.apple.developer.nfc.readersession.iso7816.select-identifiers"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v128 = v6;
      v129 = plistCopy;
      v133 = 0u;
      v134 = 0u;
      v135 = 0u;
      v136 = 0u;
      obj = v6;
      v7 = [obj countByEnumeratingWithState:&v133 objects:v137 count:16];
      if (!v7)
      {
        goto LABEL_129;
      }

      v8 = v7;
      v9 = *v134;
      v10 = NFExpressConfig;
      v131 = a2;
      while (1)
      {
        v11 = 0;
        do
        {
          if (*v134 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v133 + 1) + 8 * v11);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v27 = Logger;
              Class = object_getClass(self);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(self);
              Name = sel_getName(a2);
              v30 = 45;
              if (isMetaClass)
              {
                v30 = 43;
              }

              v27(5, "%c[%{public}s %{public}s]:%i Invalid identifier type: %{public}@", v30, ClassName, Name, 81, v12);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v13 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v31 = object_getClass(self);
              if (class_isMetaClass(v31))
              {
                v32 = 43;
              }

              else
              {
                v32 = 45;
              }

              v33 = object_getClassName(self);
              v34 = sel_getName(a2);
              *buf = 67110146;
              v139 = v32;
              v140 = 2082;
              v141 = v33;
              v142 = 2082;
              v143 = v34;
              v144 = 1024;
              v145 = 81;
              v146 = 2114;
              v147 = v12;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Invalid identifier type: %{public}@", buf, 0x2Cu);
            }

            goto LABEL_76;
          }

          v13 = v12;
          if (self)
          {
            v14 = NFSharedSignpostLog();
            if (os_signpost_enabled(v14))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_validateInfoPlistSelectIdentifier", &unk_1002E8B7A, buf, 2u);
            }

            if ([v13 lengthOfBytesUsingEncoding:4]- 33 <= 0xFFFFFFFFFFFFFFDFLL)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v15 = NFLogGetLogger();
              if (v15)
              {
                v16 = v15;
                v17 = object_getClass(self);
                v18 = class_isMetaClass(v17);
                v110 = object_getClassName(self);
                v119 = sel_getName("_validateInfoPlistSelectIdentifier:");
                v19 = 45;
                if (v18)
                {
                  v19 = 43;
                }

                v16(5, "%c[%{public}s %{public}s]:%i Invalid AID length: %{public}@", v19, v110, v119, 167, v13);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v20 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                v21 = object_getClass(self);
                if (class_isMetaClass(v21))
                {
                  v22 = 43;
                }

                else
                {
                  v22 = 45;
                }

                v23 = object_getClassName(self);
                v24 = sel_getName("_validateInfoPlistSelectIdentifier:");
                *buf = 67110146;
                v139 = v22;
                v140 = 2082;
                v141 = v23;
                v142 = 2082;
                v143 = v24;
                v144 = 1024;
                v145 = 167;
                v146 = 2114;
                v147 = v13;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Invalid AID length: %{public}@", buf, 0x2Cu);
              }

              v25 = NFSharedSignpostLog();
              if (os_signpost_enabled(v25))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_validateInfoPlistSelectIdentifier", &unk_1002E8B7A, buf, 2u);
              }

              goto LABEL_75;
            }

            uppercaseString = [v13 uppercaseString];

            if ([&v10[97] findAID:uppercaseString filterType:3])
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v36 = NFLogGetLogger();
              if (v36)
              {
                v37 = v36;
                v38 = object_getClass(self);
                v39 = class_isMetaClass(v38);
                v112 = object_getClassName(self);
                v121 = sel_getName("_validateInfoPlistSelectIdentifier:");
                v40 = 45;
                if (v39)
                {
                  v40 = 43;
                }

                a2 = v131;
                v37(5, "%c[%{public}s %{public}s]:%i PACE app identifier: %{public}@", v40, v112, v121, 177, uppercaseString);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v41 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                v42 = object_getClass(self);
                if (class_isMetaClass(v42))
                {
                  v43 = 43;
                }

                else
                {
                  v43 = 45;
                }

                v44 = object_getClassName(self);
                v45 = sel_getName("_validateInfoPlistSelectIdentifier:");
                *buf = 67110146;
                v139 = v43;
                a2 = v131;
                v140 = 2082;
                v141 = v44;
                v142 = 2082;
                v143 = v45;
                v144 = 1024;
                v145 = 177;
                v146 = 2114;
                v147 = uppercaseString;
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i PACE app identifier: %{public}@", buf, 0x2Cu);
              }

              v46 = NFSharedSignpostLog();
              if (os_signpost_enabled(v46))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_validateInfoPlistSelectIdentifier", &unk_1002E8B7A, buf, 2u);
              }

              v47 = 2;
              goto LABEL_73;
            }

            if ([&v10[97] findAID:uppercaseString filterType:4])
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v48 = NFLogGetLogger();
              if (v48)
              {
                v49 = v48;
                v50 = object_getClass(self);
                v51 = class_isMetaClass(v50);
                v113 = object_getClassName(self);
                v122 = sel_getName("_validateInfoPlistSelectIdentifier:");
                v52 = 45;
                if (v51)
                {
                  v52 = 43;
                }

                v49(5, "%c[%{public}s %{public}s]:%i PRCID app identifier: %{public}@", v52, v113, v122, 184, uppercaseString);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v53 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
              {
                v54 = object_getClass(self);
                if (class_isMetaClass(v54))
                {
                  v55 = 43;
                }

                else
                {
                  v55 = 45;
                }

                v56 = object_getClassName(self);
                v57 = sel_getName("_validateInfoPlistSelectIdentifier:");
                *buf = 67110146;
                v139 = v55;
                v140 = 2082;
                v141 = v56;
                v142 = 2082;
                v143 = v57;
                v144 = 1024;
                v145 = 184;
                v146 = 2114;
                v147 = uppercaseString;
                _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i PRCID app identifier: %{public}@", buf, 0x2Cu);
              }

              v46 = NFSharedSignpostLog();
              if (os_signpost_enabled(v46))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_validateInfoPlistSelectIdentifier", &unk_1002E8B7A, buf, 2u);
              }

              v47 = 3;
LABEL_72:
              a2 = v131;
LABEL_73:

              if (![(_NFReaderSession *)self _isAIDStringValid:v13])
              {
                goto LABEL_77;
              }

              v13 = [NSData NF_dataWithHexString:v13];
              v25 = [NF7816App appWithAid:v13 type:v47];
              [v130 addObject:v25];
              goto LABEL_75;
            }

            if ([(_NFReaderSession *)self sessionType]== 5)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v58 = NFLogGetLogger();
              if (v58)
              {
                v59 = v58;
                v60 = object_getClass(self);
                v61 = class_isMetaClass(v60);
                v114 = object_getClassName(self);
                v123 = sel_getName("_validateInfoPlistSelectIdentifier:");
                v62 = 45;
                if (v61)
                {
                  v62 = 43;
                }

                v59(5, "%c[%{public}s %{public}s]:%i Tag payment reader requested identifier: %{public}@", v62, v114, v123, 190, uppercaseString);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v63 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
              {
                v64 = object_getClass(self);
                if (class_isMetaClass(v64))
                {
                  v65 = 43;
                }

                else
                {
                  v65 = 45;
                }

                v66 = object_getClassName(self);
                v67 = sel_getName("_validateInfoPlistSelectIdentifier:");
                *buf = 67110146;
                v139 = v65;
                v140 = 2082;
                v141 = v66;
                v142 = 2082;
                v143 = v67;
                v144 = 1024;
                v145 = 190;
                v146 = 2114;
                v147 = uppercaseString;
                _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Tag payment reader requested identifier: %{public}@", buf, 0x2Cu);
              }

              v46 = NFSharedSignpostLog();
              if (os_signpost_enabled(v46))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_validateInfoPlistSelectIdentifier", &unk_1002E8B7A, buf, 2u);
              }

              v47 = 1;
              goto LABEL_72;
            }

            if ([&v10[97] findAID:uppercaseString filterType:0])
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v68 = NFLogGetLogger();
              if (v68)
              {
                v69 = v68;
                v70 = object_getClass(self);
                v71 = class_isMetaClass(v70);
                v115 = object_getClassName(self);
                v124 = sel_getName("_validateInfoPlistSelectIdentifier:");
                v72 = 45;
                if (v71)
                {
                  v72 = 43;
                }

                v69(5, "%c[%{public}s %{public}s]:%i Non-permissible identifier: %{public}@", v72, v115, v124, 197, uppercaseString);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v73 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
              {
                v74 = object_getClass(self);
                if (class_isMetaClass(v74))
                {
                  v75 = 43;
                }

                else
                {
                  v75 = 45;
                }

                v76 = object_getClassName(self);
                v77 = sel_getName("_validateInfoPlistSelectIdentifier:");
                *buf = 67110146;
                v139 = v75;
                v140 = 2082;
                v141 = v76;
                v142 = 2082;
                v143 = v77;
                v144 = 1024;
                v145 = 197;
                v146 = 2114;
                v147 = uppercaseString;
                _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Non-permissible identifier: %{public}@", buf, 0x2Cu);
              }

              v25 = NFSharedSignpostLog();
              if (os_signpost_enabled(v25))
              {
                goto LABEL_114;
              }

LABEL_115:
              v13 = uppercaseString;
LABEL_75:

              goto LABEL_76;
            }

            if ([&v10[97] findAID:uppercaseString filterType:1])
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v78 = NFLogGetLogger();
              if (v78)
              {
                v79 = v78;
                v80 = object_getClass(self);
                v81 = class_isMetaClass(v80);
                v116 = object_getClassName(self);
                v125 = sel_getName("_validateInfoPlistSelectIdentifier:");
                v82 = 45;
                if (v81)
                {
                  v82 = 43;
                }

                v79(5, "%c[%{public}s %{public}s]:%i Non-permissible identifier: %{public}@", v82, v116, v125, 203, uppercaseString);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v83 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
              {
                v84 = object_getClass(self);
                if (class_isMetaClass(v84))
                {
                  v85 = 43;
                }

                else
                {
                  v85 = 45;
                }

                v86 = object_getClassName(self);
                v87 = sel_getName("_validateInfoPlistSelectIdentifier:");
                *buf = 67110146;
                v139 = v85;
                v140 = 2082;
                v141 = v86;
                v142 = 2082;
                v143 = v87;
                v144 = 1024;
                v145 = 203;
                v146 = 2114;
                v147 = uppercaseString;
                _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Non-permissible identifier: %{public}@", buf, 0x2Cu);
              }

              v25 = NFSharedSignpostLog();
              if (!os_signpost_enabled(v25))
              {
                goto LABEL_115;
              }
            }

            else
            {
              v88 = [&v10[97] findAID:uppercaseString filterType:2];
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v89 = NFLogGetLogger();
              v90 = v89;
              if (!v88)
              {
                if (v89)
                {
                  v99 = object_getClass(self);
                  v100 = class_isMetaClass(v99);
                  v101 = object_getClassName(self);
                  v127 = sel_getName("_validateInfoPlistSelectIdentifier:");
                  v102 = 45;
                  if (v100)
                  {
                    v102 = 43;
                  }

                  v118 = v101;
                  a2 = v131;
                  v90(5, "%c[%{public}s %{public}s]:%i Regular", v102, v118, v127, 216);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v103 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                {
                  v104 = object_getClass(self);
                  if (class_isMetaClass(v104))
                  {
                    v105 = 43;
                  }

                  else
                  {
                    v105 = 45;
                  }

                  v106 = object_getClassName(self);
                  v107 = sel_getName("_validateInfoPlistSelectIdentifier:");
                  *buf = 67109890;
                  v139 = v105;
                  a2 = v131;
                  v140 = 2082;
                  v141 = v106;
                  v142 = 2082;
                  v143 = v107;
                  v144 = 1024;
                  v145 = 216;
                  _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Regular", buf, 0x22u);
                }

                v46 = NFSharedSignpostLog();
                if (os_signpost_enabled(v46))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_validateInfoPlistSelectIdentifier", &unk_1002E8B7A, buf, 2u);
                }

                v47 = 1;
                goto LABEL_73;
              }

              if (v89)
              {
                v91 = object_getClass(self);
                v92 = class_isMetaClass(v91);
                v117 = object_getClassName(self);
                v126 = sel_getName("_validateInfoPlistSelectIdentifier:");
                v93 = 45;
                if (v92)
                {
                  v93 = 43;
                }

                v90(5, "%c[%{public}s %{public}s]:%i Non-permissible identifier: %{public}@", v93, v117, v126, 210, uppercaseString);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v94 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
              {
                v95 = object_getClass(self);
                if (class_isMetaClass(v95))
                {
                  v96 = 43;
                }

                else
                {
                  v96 = 45;
                }

                v97 = object_getClassName(self);
                v98 = sel_getName("_validateInfoPlistSelectIdentifier:");
                *buf = 67110146;
                v139 = v96;
                v140 = 2082;
                v141 = v97;
                v142 = 2082;
                v143 = v98;
                v144 = 1024;
                v145 = 210;
                v146 = 2114;
                v147 = uppercaseString;
                _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Non-permissible identifier: %{public}@", buf, 0x2Cu);
              }

              v25 = NFSharedSignpostLog();
              if (!os_signpost_enabled(v25))
              {
                goto LABEL_115;
              }
            }

LABEL_114:
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_validateInfoPlistSelectIdentifier", &unk_1002E8B7A, buf, 2u);
            goto LABEL_115;
          }

LABEL_76:

LABEL_77:
          v11 = v11 + 1;
          v10 = NFExpressConfig;
        }

        while (v8 != v11);
        v108 = [obj countByEnumeratingWithState:&v133 objects:v137 count:16];
        v8 = v108;
        if (!v108)
        {
LABEL_129:

          v6 = v128;
          plistCopy = v129;
          break;
        }
      }
    }
  }

  return v130;
}

- (id)getPermissibleFelicaSystemCodeFromInfoPlist:(id)plist
{
  plistCopy = plist;
  v53 = objc_opt_new();
  v6 = [plistCopy objectForKeyedSubscript:@"com.apple.developer.nfc.readersession.felica.systemcodes"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v51 = v6;
    v52 = plistCopy;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v55 objects:v69 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v56;
      do
      {
        v10 = 0;
        do
        {
          if (*v56 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v55 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
            if (([v12 length]& 1) == 0 && [v12 length]== 4 && [v12 compare:@"FF" options:1 range:0, 2]&& [v12 compare:@"FF" options:1 range:2, 2])
            {
              v13 = [NSData NF_dataWithHexString:v12];
              if (v13)
              {
                v14 = v13;
                [v53 addObject:v13];
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                Logger = NFLogGetLogger();
                if (Logger)
                {
                  v34 = Logger;
                  Class = object_getClass(self);
                  isMetaClass = class_isMetaClass(Class);
                  ClassName = object_getClassName(self);
                  Name = sel_getName(a2);
                  v37 = 45;
                  if (isMetaClass)
                  {
                    v37 = 43;
                  }

                  v34(3, "%c[%{public}s %{public}s]:%i Invalid AID entry: %{public}@", v37, ClassName, Name, 123, 0);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v38 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  v39 = object_getClass(self);
                  if (class_isMetaClass(v39))
                  {
                    v40 = 43;
                  }

                  else
                  {
                    v40 = 45;
                  }

                  v41 = object_getClassName(self);
                  v42 = sel_getName(a2);
                  *buf = 67110146;
                  v60 = v40;
                  v61 = 2082;
                  v62 = v41;
                  v63 = 2082;
                  v64 = v42;
                  v65 = 1024;
                  v66 = 123;
                  v67 = 2114;
                  v68 = 0;
                  _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid AID entry: %{public}@", buf, 0x2Cu);
                }

                v14 = 0;
              }
            }

            else
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v24 = NFLogGetLogger();
              if (v24)
              {
                v25 = v24;
                v26 = object_getClass(self);
                v27 = class_isMetaClass(v26);
                v46 = object_getClassName(self);
                v49 = sel_getName(a2);
                v28 = 45;
                if (v27)
                {
                  v28 = 43;
                }

                v25(3, "%c[%{public}s %{public}s]:%i Invalid system code entry: %{public}@", v28, v46, v49, 115, v12);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v14 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                v29 = object_getClass(self);
                if (class_isMetaClass(v29))
                {
                  v30 = 43;
                }

                else
                {
                  v30 = 45;
                }

                v31 = object_getClassName(self);
                v32 = sel_getName(a2);
                *buf = 67110146;
                v60 = v30;
                v61 = 2082;
                v62 = v31;
                v63 = 2082;
                v64 = v32;
                v65 = 1024;
                v66 = 115;
                v67 = 2114;
                v68 = v12;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid system code entry: %{public}@", buf, 0x2Cu);
              }
            }
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v15 = NFLogGetLogger();
            if (v15)
            {
              v16 = v15;
              v17 = object_getClass(self);
              v18 = class_isMetaClass(v17);
              v45 = object_getClassName(self);
              v48 = sel_getName(a2);
              v19 = 45;
              if (v18)
              {
                v19 = 43;
              }

              v16(5, "%c[%{public}s %{public}s]:%i Invalid identifier type: %{public}@", v19, v45, v48, 104, v11);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v12 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v20 = object_getClass(self);
              if (class_isMetaClass(v20))
              {
                v21 = 43;
              }

              else
              {
                v21 = 45;
              }

              v22 = object_getClassName(self);
              v23 = sel_getName(a2);
              *buf = 67110146;
              v60 = v21;
              v61 = 2082;
              v62 = v22;
              v63 = 2082;
              v64 = v23;
              v65 = 1024;
              v66 = 104;
              v67 = 2114;
              v68 = v11;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Invalid identifier type: %{public}@", buf, 0x2Cu);
            }
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v43 = [obj countByEnumeratingWithState:&v55 objects:v69 count:16];
        v8 = v43;
      }

      while (v43);
    }

    v6 = v51;
    plistCopy = v52;
  }

  return v53;
}

- (BOOL)_isAIDStringValid:(id)valid
{
  validCopy = valid;
  v6 = [NSCharacterSet characterSetWithCharactersInString:@"0123456789ABCDEF"];
  uppercaseString = [validCopy uppercaseString];

  if ([uppercaseString length] <= 9)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v9(5, "%c[%{public}s %{public}s]:%i Identifier string does not meet the minimum required length, %{public}@", v12, ClassName, Name, 140, uppercaseString);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    v14 = object_getClass(self);
    if (class_isMetaClass(v14))
    {
      v15 = 43;
    }

    else
    {
      v15 = 45;
    }

    *buf = 67110146;
    v41 = v15;
    v42 = 2082;
    v43 = object_getClassName(self);
    v44 = 2082;
    v45 = sel_getName(a2);
    v46 = 1024;
    v47 = 140;
    v48 = 2114;
    v49 = uppercaseString;
    v16 = "%c[%{public}s %{public}s]:%i Identifier string does not meet the minimum required length, %{public}@";
LABEL_36:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v16, buf, 0x2Cu);
LABEL_37:

    v25 = 0;
    goto LABEL_38;
  }

  if ([uppercaseString length] >= 0x21)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v18 = v17;
      v19 = object_getClass(self);
      v20 = class_isMetaClass(v19);
      v35 = object_getClassName(self);
      v38 = sel_getName(a2);
      v21 = 45;
      if (v20)
      {
        v21 = 43;
      }

      v18(5, "%c[%{public}s %{public}s]:%i Identifier string exceeds the maximum length, %{public}@", v21, v35, v38, 143, uppercaseString);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    v22 = object_getClass(self);
    if (class_isMetaClass(v22))
    {
      v23 = 43;
    }

    else
    {
      v23 = 45;
    }

    *buf = 67110146;
    v41 = v23;
    v42 = 2082;
    v43 = object_getClassName(self);
    v44 = 2082;
    v45 = sel_getName(a2);
    v46 = 1024;
    v47 = 143;
    v48 = 2114;
    v49 = uppercaseString;
    v16 = "%c[%{public}s %{public}s]:%i Identifier string exceeds the maximum length, %{public}@";
    goto LABEL_36;
  }

  if ([uppercaseString length])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v26 = NFLogGetLogger();
    if (v26)
    {
      v27 = v26;
      v28 = object_getClass(self);
      v29 = class_isMetaClass(v28);
      v36 = object_getClassName(self);
      v39 = sel_getName(a2);
      v30 = 45;
      if (v29)
      {
        v30 = 43;
      }

      v27(5, "%c[%{public}s %{public}s]:%i Invalid AID entry: %{public}@", v30, v36, v39, 146, uppercaseString);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    v31 = object_getClass(self);
    if (class_isMetaClass(v31))
    {
      v32 = 43;
    }

    else
    {
      v32 = 45;
    }

    *buf = 67110146;
    v41 = v32;
    v42 = 2082;
    v43 = object_getClassName(self);
    v44 = 2082;
    v45 = sel_getName(a2);
    v46 = 1024;
    v47 = 146;
    v48 = 2114;
    v49 = uppercaseString;
    v16 = "%c[%{public}s %{public}s]:%i Invalid AID entry: %{public}@";
    goto LABEL_36;
  }

  if ([uppercaseString length])
  {
    v24 = 0;
    do
    {
      v25 = [v6 characterIsMember:{objc_msgSend(uppercaseString, "characterAtIndex:", v24)}];
      if ((v25 & 1) == 0)
      {
        break;
      }

      ++v24;
    }

    while (v24 < [uppercaseString length]);
  }

  else
  {
    v25 = 1;
  }

LABEL_38:

  return v25;
}

- (int64_t)validateAID:(id)d allowsPrefixMatch:(BOOL)match
{
  matchCopy = match;
  dCopy = d;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  iso7816AppList = [(_NFReaderSession *)self iso7816AppList];
  type = [iso7816AppList countByEnumeratingWithState:&v120 objects:v124 count:16];
  selfCopy = self;
  if (!type)
  {
    v21 = 0;
    goto LABEL_18;
  }

  v9 = *v121;
  while (2)
  {
    for (i = 0; i != type; ++i)
    {
      if (*v121 != v9)
      {
        objc_enumerationMutation(iso7816AppList);
      }

      v11 = *(*(&v120 + 1) + 8 * i);
      v12 = [v11 aid];
      v13 = [v12 isEqualToData:dCopy];

      if (v13)
      {
        type = [v11 type];
        goto LABEL_15;
      }

      if (matchCopy)
      {
        v14 = [dCopy length];
        v15 = [v11 aid];
        v16 = [v15 length];

        if (v14 > v16)
        {
          v17 = [v11 aid];
          v18 = [dCopy subdataWithRange:{0, objc_msgSend(v17, "length")}];

          v19 = [v11 aid];
          v20 = [v19 isEqualToData:v18];

          if (!v20)
          {

            continue;
          }

          type = [v11 type];

LABEL_15:
          v21 = 1;
          goto LABEL_16;
        }
      }
    }

    type = [iso7816AppList countByEnumeratingWithState:&v120 objects:v124 count:16];
    if (type)
    {
      continue;
    }

    break;
  }

  v21 = 0;
LABEL_16:
  self = selfCopy;
LABEL_18:

  nF_asHexString = [dCopy NF_asHexString];
  if (![(_NFReaderSession *)self _isAIDStringValid:nF_asHexString]|| (([(_NFReaderSession *)self sessionType]== 5) & ~v21) != 0)
  {
LABEL_119:
    type = 0;
    goto LABEL_120;
  }

  v23 = nF_asHexString;
  v24 = v23;
  v117 = v23;
  if (!self)
  {

    if ((v21 & 1) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_120;
  }

  v25 = NFSharedSignpostLog();
  if (os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "isIdentifierPermissible", &unk_1002E8B7A, buf, 2u);
  }

  uppercaseString = [v24 uppercaseString];

  if (![NFATLMobileSettings findAID:uppercaseString filterType:3])
  {
    if ([NFATLMobileSettings findAID:uppercaseString filterType:4])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v41 = Logger;
        Class = object_getClass(selfCopy);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(selfCopy);
        Name = sel_getName("_isIdentifierPermissible:");
        v44 = 45;
        if (isMetaClass)
        {
          v44 = 43;
        }

        v41(5, "%c[%{public}s %{public}s]:%i PRCID app identifier: %{public}@", v44, ClassName, Name, 235, uppercaseString);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v45 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = object_getClass(selfCopy);
        if (class_isMetaClass(v46))
        {
          v47 = 43;
        }

        else
        {
          v47 = 45;
        }

        v48 = object_getClassName(selfCopy);
        v49 = sel_getName("_isIdentifierPermissible:");
        *buf = 67110146;
        v126 = v47;
        v127 = 2082;
        v128 = v48;
        v129 = 2082;
        v130 = v49;
        v131 = 1024;
        v132 = 235;
        v133 = 2114;
        v134 = uppercaseString;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i PRCID app identifier: %{public}@", buf, 0x2Cu);
      }

      v37 = NFSharedSignpostLog();
      if (os_signpost_enabled(v37))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "isIdentifierPermissible", &unk_1002E8B7A, buf, 2u);
      }

      v39 = 0;
      v50 = 1;
      v38 = 3;
      goto LABEL_102;
    }

    if ([(_NFReaderSession *)self sessionType]== 5)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v51 = NFLogGetLogger();
      if (v51)
      {
        v52 = v51;
        v53 = object_getClass(selfCopy);
        v54 = class_isMetaClass(v53);
        v105 = object_getClassName(selfCopy);
        v112 = sel_getName("_isIdentifierPermissible:");
        v55 = 45;
        if (v54)
        {
          v55 = 43;
        }

        v52(5, "%c[%{public}s %{public}s]:%i Tag payment reader requested identifier: %{public}@", v55, v105, v112, 241, uppercaseString);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v56 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = object_getClass(selfCopy);
        if (class_isMetaClass(v57))
        {
          v58 = 43;
        }

        else
        {
          v58 = 45;
        }

        v59 = object_getClassName(selfCopy);
        v60 = sel_getName("_isIdentifierPermissible:");
        *buf = 67110146;
        v126 = v58;
        v127 = 2082;
        v128 = v59;
        v129 = 2082;
        v130 = v60;
        v131 = 1024;
        v132 = 241;
        v133 = 2114;
        v134 = uppercaseString;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Tag payment reader requested identifier: %{public}@", buf, 0x2Cu);
      }

      v37 = NFSharedSignpostLog();
      if (os_signpost_enabled(v37))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "isIdentifierPermissible", &unk_1002E8B7A, buf, 2u);
        v39 = 0;
        v38 = 1;
        v50 = 1;
      }

      else
      {
        v39 = 0;
        v50 = 1;
        v38 = 1;
      }

      goto LABEL_102;
    }

    if ([NFATLMobileSettings findAID:uppercaseString filterType:0])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v61 = NFLogGetLogger();
      if (v61)
      {
        v62 = v61;
        v63 = object_getClass(selfCopy);
        v64 = class_isMetaClass(v63);
        v106 = object_getClassName(selfCopy);
        v113 = sel_getName("_isIdentifierPermissible:");
        v65 = 45;
        if (v64)
        {
          v65 = 43;
        }

        v62(5, "%c[%{public}s %{public}s]:%i Non-permissible identifier: %{public}@", v65, v106, v113, 249, uppercaseString);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v66 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v67 = object_getClass(selfCopy);
        if (class_isMetaClass(v67))
        {
          v68 = 43;
        }

        else
        {
          v68 = 45;
        }

        v69 = object_getClassName(selfCopy);
        v70 = sel_getName("_isIdentifierPermissible:");
        *buf = 67110146;
        v126 = v68;
        v127 = 2082;
        v128 = v69;
        v129 = 2082;
        v130 = v70;
        v131 = 1024;
        v132 = 249;
        v133 = 2114;
        v134 = uppercaseString;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Non-permissible identifier: %{public}@", buf, 0x2Cu);
      }

      v37 = NFSharedSignpostLog();
      if (os_signpost_enabled(v37))
      {
        *buf = 0;
LABEL_99:
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "isIdentifierPermissible", &unk_1002E8B7A, buf, 2u);
      }
    }

    else
    {
      if (![NFATLMobileSettings findAID:uppercaseString filterType:1])
      {
        if (![NFATLMobileSettings findAID:uppercaseString filterType:2])
        {
          v37 = NFSharedSignpostLog();
          if (os_signpost_enabled(v37))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "isIdentifierPermissible", &unk_1002E8B7A, buf, 2u);
          }

          v39 = 0;
          v50 = 0;
          v38 = 0;
          goto LABEL_102;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v81 = NFLogGetLogger();
        if (v81)
        {
          v82 = v81;
          v83 = object_getClass(selfCopy);
          v84 = class_isMetaClass(v83);
          v108 = object_getClassName(selfCopy);
          v115 = sel_getName("_isIdentifierPermissible:");
          v85 = 45;
          if (v84)
          {
            v85 = 43;
          }

          v82(5, "%c[%{public}s %{public}s]:%i Non-permissible identifier: %{public}@", v85, v108, v115, 262, uppercaseString);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v86 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
        {
          v87 = object_getClass(selfCopy);
          if (class_isMetaClass(v87))
          {
            v88 = 43;
          }

          else
          {
            v88 = 45;
          }

          v89 = object_getClassName(selfCopy);
          v90 = sel_getName("_isIdentifierPermissible:");
          *buf = 67110146;
          v126 = v88;
          v127 = 2082;
          v128 = v89;
          v129 = 2082;
          v130 = v90;
          v131 = 1024;
          v132 = 262;
          v133 = 2114;
          v134 = uppercaseString;
          _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Non-permissible identifier: %{public}@", buf, 0x2Cu);
        }

        v37 = NFSharedSignpostLog();
        if (!os_signpost_enabled(v37))
        {
          goto LABEL_100;
        }

        *buf = 0;
        goto LABEL_99;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v71 = NFLogGetLogger();
      if (v71)
      {
        v72 = v71;
        v73 = object_getClass(selfCopy);
        v74 = class_isMetaClass(v73);
        v107 = object_getClassName(selfCopy);
        v114 = sel_getName("_isIdentifierPermissible:");
        v75 = 45;
        if (v74)
        {
          v75 = 43;
        }

        v72(5, "%c[%{public}s %{public}s]:%i Non-permissible identifier: %{public}@", v75, v107, v114, 255, uppercaseString);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v76 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        v77 = object_getClass(selfCopy);
        if (class_isMetaClass(v77))
        {
          v78 = 43;
        }

        else
        {
          v78 = 45;
        }

        v79 = object_getClassName(selfCopy);
        v80 = sel_getName("_isIdentifierPermissible:");
        *buf = 67110146;
        v126 = v78;
        v127 = 2082;
        v128 = v79;
        v129 = 2082;
        v130 = v80;
        v131 = 1024;
        v132 = 255;
        v133 = 2114;
        v134 = uppercaseString;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Non-permissible identifier: %{public}@", buf, 0x2Cu);
      }

      v37 = NFSharedSignpostLog();
      if (os_signpost_enabled(v37))
      {
        *buf = 0;
        goto LABEL_99;
      }
    }

LABEL_100:
    v39 = 1;
    v38 = 4;
LABEL_101:
    v50 = 1;
    goto LABEL_102;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v27 = NFLogGetLogger();
  if (v27)
  {
    v28 = v27;
    v29 = object_getClass(selfCopy);
    v30 = class_isMetaClass(v29);
    v103 = object_getClassName(selfCopy);
    v110 = sel_getName("_isIdentifierPermissible:");
    v31 = 45;
    if (v30)
    {
      v31 = 43;
    }

    v28(5, "%c[%{public}s %{public}s]:%i PACE app identifier: %{public}@", v31, v103, v110, 228, uppercaseString);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v32 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = object_getClass(selfCopy);
    if (class_isMetaClass(v33))
    {
      v34 = 43;
    }

    else
    {
      v34 = 45;
    }

    v35 = object_getClassName(selfCopy);
    v36 = sel_getName("_isIdentifierPermissible:");
    *buf = 67110146;
    v126 = v34;
    v127 = 2082;
    v128 = v35;
    v129 = 2082;
    v130 = v36;
    v131 = 1024;
    v132 = 228;
    v133 = 2114;
    v134 = uppercaseString;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i PACE app identifier: %{public}@", buf, 0x2Cu);
  }

  v37 = NFSharedSignpostLog();
  if (os_signpost_enabled(v37))
  {
    *buf = 0;
    v38 = 2;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "isIdentifierPermissible", &unk_1002E8B7A, buf, 2u);
    v39 = 0;
    goto LABEL_101;
  }

  v39 = 0;
  v50 = 1;
  v38 = 2;
LABEL_102:

  if (v21)
  {
    v91 = type;
  }

  else
  {
    v91 = v38;
  }

  if (v39)
  {
    type = 4;
  }

  else
  {
    type = v91;
  }

  if ((((v39 | v21) | v50) & 1) == 0)
  {
LABEL_109:
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v92 = NFLogGetLogger();
    if (v92)
    {
      v93 = v92;
      v94 = object_getClass(selfCopy);
      v95 = class_isMetaClass(v94);
      v109 = object_getClassName(selfCopy);
      v116 = sel_getName(a2);
      v96 = 45;
      if (v95)
      {
        v96 = 43;
      }

      v93(5, "%c[%{public}s %{public}s]:%i Non-permissible identifier: %{public}@", v96, v109, v116, 317, v117);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v97 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      v98 = object_getClass(selfCopy);
      if (class_isMetaClass(v98))
      {
        v99 = 43;
      }

      else
      {
        v99 = 45;
      }

      v100 = object_getClassName(selfCopy);
      v101 = sel_getName(a2);
      *buf = 67110146;
      v126 = v99;
      v127 = 2082;
      v128 = v100;
      v129 = 2082;
      v130 = v101;
      v131 = 1024;
      v132 = 317;
      v133 = 2114;
      v134 = v117;
      _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Non-permissible identifier: %{public}@", buf, 0x2Cu);
    }

    goto LABEL_119;
  }

LABEL_120:

  return type;
}

- (BOOL)validateSystemCode:(id)code
{
  codeCopy = code;
  feliCaSystemCodeList = [(_NFReaderSession *)self feliCaSystemCodeList];
  v6 = [feliCaSystemCodeList containsObject:codeCopy];

  return v6;
}

- (id)_getFCITemplate:(id)template
{
  v3 = [NFTLV TLVWithData:template];
  v4 = v3;
  if (v3)
  {
    if ([v3 tag] == 111)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)_getApplicationNameFromFciTemplate:(id)template
{
  v3 = [template childWithTag:132];
  v4 = v3;
  if (v3 && ([v3 value], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, v6))
  {
    value = [v4 value];
  }

  else
  {
    value = 0;
  }

  return value;
}

- (BOOL)validateAID:(id)d withSelectResponse:(id)response outRealAid:(id *)aid
{
  dCopy = d;
  responseCopy = response;
  if ([dCopy length] > 4)
  {
    if ([responseCopy length] >= 2)
    {
      v20 = [NFResponseAPDU responseWithData:responseCopy];
      if ([v20 status] == 36864 && (objc_msgSend(v20, "response"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "length"), v21, v22))
      {
        response = [v20 response];
        v24 = [(_NFReaderSession *)self _getFCITemplate:response];
        v25 = [(_NFReaderSession *)self _getApplicationNameFromFciTemplate:v24];
        if ([v25 length])
        {
          if (aid)
          {
            v26 = v25;
            *aid = v25;
          }

          v19 = ([(_NFReaderSession *)self validateAID:v25 allowsPrefixMatch:1]& 0xFFFFFFFFFFFFFFFBLL) != 0;
        }

        else
        {
          v19 = 1;
        }
      }

      else
      {
        v19 = 1;
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v12 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v15 = 45;
      if (isMetaClass)
      {
        v15 = 43;
      }

      v12(3, "%c[%{public}s %{public}s]:%i Incorrect length aid=%{public}@", v15, ClassName, Name, 350, dCopy);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = object_getClass(self);
      if (class_isMetaClass(v17))
      {
        v18 = 43;
      }

      else
      {
        v18 = 45;
      }

      *buf = 67110146;
      v31 = v18;
      v32 = 2082;
      v33 = object_getClassName(self);
      v34 = 2082;
      v35 = sel_getName(a2);
      v36 = 1024;
      v37 = 350;
      v38 = 2114;
      v39 = dCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Incorrect length aid=%{public}@", buf, 0x2Cu);
    }

    v19 = 0;
  }

  return v19;
}

- (_NFReaderSession)initWithRemoteObject:(id)object workQueue:(id)queue whitelist:(id)whitelist serviceType:(unint64_t)type showSharingUI:(unint64_t)i coreNFCSessionType:(unint64_t)sessionType scanText:(id)text
{
  objectCopy = object;
  queueCopy = queue;
  whitelistCopy = whitelist;
  textCopy = text;
  if ([whitelistCopy internalAccess])
  {
    allowBackgroundedSession = [whitelistCopy allowBackgroundedSession];
  }

  else
  {
    allowBackgroundedSession = 0;
  }

  v36.receiver = self;
  v36.super_class = _NFReaderSession;
  v20 = [(_NFXPCSession *)&v36 initWithRemoteObject:objectCopy workQueue:queueCopy allowsBackgroundMode:allowBackgroundedSession];
  if (v20)
  {
    v21 = [whitelistCopy copy];
    tagWhiteList = v20->_tagWhiteList;
    v20->_tagWhiteList = v21;

    v20->_uiStateOnInvalidation = 0;
    v20->_sharingUIMode = i;
    objc_storeStrong(&v20->_initialScanText, text);
    v23 = +[NFCALogger sharedCALogger];
    generateUUID = [v23 generateUUID];
    sessionUUID = v20->_sessionUUID;
    v20->_sessionUUID = generateUUID;

    v20->_sessionType = sessionType;
    v20->_exitReason = 0;
    v20->_serviceType = type;
    getAppInfoDictionary = [whitelistCopy getAppInfoDictionary];
    v27 = [(_NFReaderSession *)v20 _generate7816AidList:getAppInfoDictionary];
    iso7816AppList = v20->_iso7816AppList;
    v20->_iso7816AppList = v27;

    v29 = [NSMutableArray alloc];
    v30 = [(_NFReaderSession *)v20 getPermissibleFelicaSystemCodeFromInfoPlist:getAppInfoDictionary];
    v31 = [v29 initWithArray:v30];
    feliCaSystemCodeList = v20->_feliCaSystemCodeList;
    v20->_feliCaSystemCodeList = v31;

    v33 = objc_opt_new();
    nonstandard7816TagsFound = v20->_nonstandard7816TagsFound;
    v20->_nonstandard7816TagsFound = v33;

    v20->_continuousWaveState = 0;
  }

  return v20;
}

- (id)_generate7816AidList:(id)list
{
  listCopy = list;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  trustedISO7816AidList = [(NFServiceWhitelistChecker *)self->_tagWhiteList trustedISO7816AidList];
  v7 = [trustedISO7816AidList countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(trustedISO7816AidList);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if (![(_NFReaderSession *)self isPRCIDSupported:v11])
        {
          if ([(_NFReaderSession *)self isPaceSupported:v11])
          {
            v12 = 2;
          }

          else
          {
            v12 = 1;
          }

          v13 = [NF7816App appWithAid:v11 type:v12];
          if (v13)
          {
            [v5 addObject:v13];
          }
        }
      }

      v8 = [trustedISO7816AidList countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [(_NFReaderSession *)self getPermissible7816AppsFromInfoPlist:listCopy];
  [v5 addObjectsFromArray:v14];

  return v5;
}

- (void)setUiInvalidationHandler:(id)handler
{
  v4 = objc_retainBlock(handler);
  uiInvalidationHandler = self->_uiInvalidationHandler;
  self->_uiInvalidationHandler = v4;

  _objc_release_x1(v4, uiInvalidationHandler);
}

- (void)clearUIControllerInvalidationHandler
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    sessionUID = [(_NFSession *)self sessionUID];
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Clearing Invalidation Handler on session %@", v11, ClassName, Name, 187, sessionUID);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(self);
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    v15 = object_getClassName(self);
    v16 = sel_getName(a2);
    sessionUID2 = [(_NFSession *)self sessionUID];
    *buf = 67110146;
    v21 = v14;
    v22 = 2082;
    v23 = v15;
    v24 = 2082;
    v25 = v16;
    v26 = 1024;
    v27 = 187;
    v28 = 2112;
    v29 = sessionUID2;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Clearing Invalidation Handler on session %@", buf, 0x2Cu);
  }

  uiInvalidationHandler = self->_uiInvalidationHandler;
  self->_uiInvalidationHandler = 0;

  [(NFUIService *)self->_uiService coreNFCUISetInvalidationHandler:0];
  [(NFUIService *)self->_uiService disconnect];
  uiService = self->_uiService;
  self->_uiService = 0;

  self->_uiControllerStarted = 0;
}

- (void)activateUIControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self->_uiService && self->_uiInvalidationHandler)
  {
    selfCopy = self;
    remoteObject = [(_NFXPCSession *)selfCopy remoteObject];
    uiService = self->_uiService;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1001B14C8;
    v21[3] = &unk_10031B558;
    v9 = selfCopy;
    v22 = v9;
    v23 = v9;
    v24 = remoteObject;
    v25 = a2;
    v10 = remoteObject;
    [(NFUIService *)uiService coreNFCUISetInvalidationHandler:v21];
    v11 = self->_uiService;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001B1DC0;
    v16[3] = &unk_10031B5A8;
    v20 = a2;
    v17 = v9;
    v18 = v9;
    v19 = completionCopy;
    v12 = v9;
    [(NFUIService *)v11 coreNFCUIActivateWithCompletion:v16];

    v13 = v22;
  }

  else
  {
    v14 = [NSError alloc];
    v10 = [NSString stringWithUTF8String:"nfcd"];
    v26 = NSLocalizedDescriptionKey;
    v12 = [NSString stringWithUTF8String:"Unexpected Result"];
    v27 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v15 = [v14 initWithDomain:v10 code:13 userInfo:v13];
    (*(completionCopy + 2))(completionCopy, v15);
  }
}

- (BOOL)willStartSession
{
  sub_10026449C();
  if (self->_sharingUIMode)
  {
    v3 = objc_opt_new();
    uiService = self->_uiService;
    self->_uiService = v3;

    sessionUID = [(_NFSession *)self sessionUID];
    [(NFUIService *)self->_uiService setDebugContext:sessionUID];

    sharingUIMode = self->_sharingUIMode;
    switch(sharingUIMode)
    {
      case 3uLL:
        [(NFUIService *)self->_uiService coreNFCUISetMode:1];
        self->_uiStateOnInvalidation = 1;
        goto LABEL_9;
      case 2uLL:
        v7 = self->_uiService;
        v8 = 2;
        break;
      case 1uLL:
        v7 = self->_uiService;
        v8 = 1;
        break;
      default:
LABEL_9:
        [(NFUIService *)self->_uiService coreNFCUISetScanText:self->_initialScanText];
        goto LABEL_10;
    }

    [(NFUIService *)v7 coreNFCUISetMode:v8];
    goto LABEL_9;
  }

LABEL_10:
  v10.receiver = self;
  v10.super_class = _NFReaderSession;
  return [(_NFSession *)&v10 willStartSession];
}

- (void)didStartSession:(id)session
{
  sessionCopy = session;
  v59.receiver = self;
  v59.super_class = _NFReaderSession;
  [(_NFXPCSession *)&v59 didStartSession:sessionCopy];
  if (sessionCopy)
  {
    remoteObject = [(_NFXPCSession *)self remoteObject];
    [remoteObject didStartSession:sessionCopy];
  }

  else
  {
    remoteObject = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm"];
    if ([remoteObject BOOLForKey:@"skipMifareDetection"])
    {
      self->_skipMifareClassification = 1;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v8 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v12 = 45;
        if (isMetaClass)
        {
          v12 = 43;
        }

        v8(5, "%c[%{public}s %{public}s]:%i Defaults disabling MIFARE detection", v12, ClassName, Name, 334);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = object_getClass(self);
        if (class_isMetaClass(v14))
        {
          v15 = 43;
        }

        else
        {
          v15 = 45;
        }

        v16 = object_getClassName(self);
        v17 = sel_getName(a2);
        LODWORD(buf) = 67109890;
        HIDWORD(buf) = v15;
        v61 = 2082;
        v62 = v16;
        v63 = 2082;
        v64 = v17;
        v65 = 1024;
        v66 = 334;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Defaults disabling MIFARE detection", &buf, 0x22u);
      }
    }

    if ([(_NFReaderSession *)self timeLimitedSession])
    {
      objc_initWeak(&buf, self);
      v18 = [NFTimer alloc];
      v54 = _NSConcreteStackBlock;
      v55 = 3221225472;
      v56 = sub_1001B2A80;
      v57 = &unk_100316610;
      objc_copyWeak(v58, &buf);
      v58[1] = a2;
      workQueue = [(_NFSession *)self workQueue];
      v20 = [v18 initWithCallback:&v54 queue:workQueue];
      sessionTimer = self->_sessionTimer;
      self->_sessionTimer = v20;

      v22 = self->_sessionTimer;
      [(NFServiceWhitelistChecker *)self->_tagWhiteList sessionTimeLimit];
      [NFTimer startTimer:v22 leeway:"startTimer:leeway:"];
      objc_destroyWeak(v58);
      objc_destroyWeak(&buf);
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v23 = NFLogGetLogger();
      if (v23)
      {
        v24 = v23;
        v25 = object_getClass(self);
        v26 = class_isMetaClass(v25);
        v27 = object_getClassName(self);
        v52 = sel_getName(a2);
        v28 = 45;
        if (v26)
        {
          v28 = 43;
        }

        v24(5, "%c[%{public}s %{public}s]:%i Session is not time limited!", v28, v27, v52, 360);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v29 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = object_getClass(self);
        if (class_isMetaClass(v30))
        {
          v31 = 43;
        }

        else
        {
          v31 = 45;
        }

        v32 = object_getClassName(self);
        v33 = sel_getName(a2);
        LODWORD(buf) = 67109890;
        HIDWORD(buf) = v31;
        v61 = 2082;
        v62 = v32;
        v63 = 2082;
        v64 = v33;
        v65 = 1024;
        v66 = 360;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Session is not time limited!", &buf, 0x22u);
      }
    }

    remoteObject2 = [(_NFXPCSession *)self remoteObject];
    [remoteObject2 didStartSession:0];

    if (self->_sessionType == 5)
    {
      connection = [(_NFXPCSession *)self connection];
      nF_userInfo = [connection NF_userInfo];

      nF_asHexString2 = [nF_userInfo objectForKey:@"BundleIdentifier"];
      if (![(__CFString *)nF_asHexString2 length])
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v38 = NFLogGetLogger();
        if (v38)
        {
          v39 = v38;
          v40 = object_getClass(self);
          v41 = class_isMetaClass(v40);
          v42 = object_getClassName(self);
          v53 = sel_getName(a2);
          v43 = 45;
          if (v41)
          {
            v43 = 43;
          }

          v39(3, "%c[%{public}s %{public}s]:%i Unexpected bundleID value", v43, v42, v53, 369, v54, v55, v56, v57);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v44 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = object_getClass(self);
          if (class_isMetaClass(v45))
          {
            v46 = 43;
          }

          else
          {
            v46 = 45;
          }

          v47 = object_getClassName(self);
          v48 = sel_getName(a2);
          LODWORD(buf) = 67109890;
          HIDWORD(buf) = v46;
          v61 = 2082;
          v62 = v47;
          v63 = 2082;
          v64 = v48;
          v65 = 1024;
          v66 = 369;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected bundleID value", &buf, 0x22u);
        }

        nF_asHexString2 = &stru_10031EA18;
      }

      v49 = sub_10024DC10();
      nF_asHexString = [(NSData *)self->_sessionUUID NF_asHexString];
      sub_10024E4B4(v49, nF_asHexString, self->_sessionType, nF_asHexString2);
    }

    else
    {
      nF_userInfo = sub_10024DC10();
      nF_asHexString2 = [(NSData *)self->_sessionUUID NF_asHexString];
      sub_10024E4B4(nF_userInfo, nF_asHexString2, self->_sessionType, &stru_10031EA18);
    }
  }
}

- (void)cleanupUI
{
  if (self->_uiControllerStarted)
  {
    v3 = NFSharedSignpostLog();
    if (os_signpost_enabled(v3))
    {
      uiStateOnInvalidation = self->_uiStateOnInvalidation;
      v6 = 134349056;
      v7 = uiStateOnInvalidation;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UIControllerInvalidation", "state=%{public,signpost.description:attribute}ld", &v6, 0xCu);
    }

    if (self->_sharingUIMode == 3 && !self->_clientRequestConnect && self->_uiStateOnInvalidation != 2)
    {
      goto LABEL_11;
    }

    v5 = self->_uiStateOnInvalidation;
    if (v5 != 1)
    {
      if (v5 != 2)
      {
LABEL_11:
        [(NFUIService *)self->_uiService coreNFCUIInvalidate];
        return;
      }

      v5 = 0;
    }

    [(NFUIService *)self->_uiService coreNFCUITagScannedCount:v5];
    goto LABEL_11;
  }
}

- (void)cleanup
{
  v4 = NFSharedSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "cleanup", "_NFReaderSession", buf, 2u);
  }

  if ([(_NFSession *)self needsCleanup]&& ![(_NFSession *)self isSuspended])
  {
    v5 = +[_NFHardwareManager sharedHardwareManager];
    v6 = sub_1001262B4(v5);
    v7 = sub_10024DC10();
    if (v7)
    {
      v7[166] = self->_serviceType == 2;
    }

    currentTag = self->_currentTag;
    if (currentTag)
    {
      sub_10019117C(self->_driverWrapper, currentTag, 0);
      if ([(NFTag *)self->_currentTag type])
      {
        type = [(NFTag *)self->_currentTag type];
      }

      else
      {
        type = sub_10019093C(self->_driverWrapper, self->_currentTag);
      }

      v10 = type;
      v11 = sub_10024DC10();
      sub_10024DD78(v11, self->_currentTag, v10);

      v12 = self->_currentTag;
      self->_currentTag = 0;
    }

    v13 = sub_10024DC10();
    sub_10024E568(v13, self->_exitReason);

    if (self->_continuousWaveState)
    {
      v14 = sub_1001EBF94(self->_driverWrapper, 0);
      self->_continuousWaveState = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_powerConsumptionReporter);
    sub_1001AF894(WeakRetained, self);

    [v5 notifyReaderModeActivityEnd];
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v17 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      clientName = [(_NFXPCSession *)self clientName];
      v23 = 45;
      if (isMetaClass)
      {
        v23 = 43;
      }

      v17(6, "%c[%{public}s %{public}s]:%i NFC Reader mode terminated: %@", v23, ClassName, Name, 439, clientName);
    }

    v24 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = object_getClass(self);
      if (class_isMetaClass(v25))
      {
        v26 = 43;
      }

      else
      {
        v26 = 45;
      }

      v27 = object_getClassName(self);
      v28 = sel_getName(a2);
      clientName2 = [(_NFXPCSession *)self clientName];
      *buf = 67110146;
      v61 = v26;
      v62 = 2082;
      v63 = v27;
      v64 = 2082;
      v65 = v28;
      v66 = 1024;
      v67 = 439;
      v68 = 2112;
      v69 = clientName2;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC Reader mode terminated: %@", buf, 0x2Cu);
    }

    v30 = sub_10004C224(NFRoutingConfig, 0);
    v31 = [v5 setRoutingConfig:v30];

    if (self->_didSetFelicaSystemCode)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v32 = NFLogGetLogger();
      if (v32)
      {
        v33 = v32;
        v34 = object_getClass(self);
        v35 = class_isMetaClass(v34);
        v36 = object_getClassName(self);
        v57 = sel_getName(a2);
        v37 = 45;
        if (v35)
        {
          v37 = 43;
        }

        v33(6, "%c[%{public}s %{public}s]:%i Restoring Felica system code to default value", v37, v36, v57, 446);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v38 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = object_getClass(self);
        if (class_isMetaClass(v39))
        {
          v40 = 43;
        }

        else
        {
          v40 = 45;
        }

        v41 = object_getClassName(self);
        v42 = sel_getName(a2);
        *buf = 67109890;
        v61 = v40;
        v62 = 2082;
        v63 = v41;
        v64 = 2082;
        v65 = v42;
        v66 = 1024;
        v67 = 446;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Restoring Felica system code to default value", buf, 0x22u);
      }

      sub_1001E10D8(self->_driverWrapper);
      self->_didSetFelicaSystemCode = 0;
    }

    ecpPayload = self->_ecpPayload;
    self->_ecpPayload = 0;

    self->_isConnectionHandover = 0;
    if ([(NFServiceWhitelistChecker *)self->_tagWhiteList pollingProfileUpdate]&& self->_pollingProfile)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v44 = NFLogGetLogger();
      if (v44)
      {
        v45 = v44;
        v46 = object_getClass(self);
        v47 = class_isMetaClass(v46);
        v48 = object_getClassName(self);
        v58 = sel_getName(a2);
        v49 = 45;
        if (v47)
        {
          v49 = 43;
        }

        v45(6, "%c[%{public}s %{public}s]:%i Reset default", v49, v48, v58, 456);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v50 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = object_getClass(self);
        if (class_isMetaClass(v51))
        {
          v52 = 43;
        }

        else
        {
          v52 = 45;
        }

        v53 = object_getClassName(self);
        v54 = sel_getName(a2);
        *buf = 67109890;
        v61 = v52;
        v62 = 2082;
        v63 = v53;
        v64 = 2082;
        v65 = v54;
        v66 = 1024;
        v67 = 456;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Reset default", buf, 0x22u);
      }

      sub_1001E0E20(self->_driverWrapper);
    }

    [(_NFReaderSession *)self cleanupUI];
    [(NFTimer *)self->_sessionTimer stopTimer];
    if (v6)
    {
      v55 = NFSharedSignpostLog();
      if (os_signpost_enabled(v55))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v55, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Polling", &unk_1002E8B7A, buf, 2u);
      }
    }
  }

  v59.receiver = self;
  v59.super_class = _NFReaderSession;
  [(_NFSession *)&v59 cleanup];
  v56 = NFSharedSignpostLog();
  if (os_signpost_enabled(v56))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v56, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "cleanup", "_NFReaderSession", buf, 2u);
  }
}

- (void)coreDuetActivityRevoked
{
  v6.receiver = self;
  v6.super_class = _NFReaderSession;
  workQueue = [(_NFSession *)&v6 workQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001B3788;
  v5[3] = &unk_100315F58;
  v5[4] = self;
  v5[5] = a2;
  dispatch_async(workQueue, v5);
}

- (void)handleRemoteTagsDetected:(id)detected
{
  detectedCopy = detected;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v6(6, "%c[%{public}s %{public}s]:%i tags: %{public}@", v9, ClassName, Name, 501, detectedCopy);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(self);
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    *buf = 67110146;
    v142 = v12;
    v143 = 2082;
    v144 = object_getClassName(self);
    v145 = 2082;
    v146 = sel_getName(a2);
    v147 = 1024;
    v148 = 501;
    v149 = 2114;
    v150 = detectedCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i tags: %{public}@", buf, 0x2Cu);
  }

  sel = a2;

  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v15 = objc_opt_new();
  v137 = 0;
  v136 = 0x7FFFFFFFFFFFFFFFLL;
  v124 = v14;
  if (!self->_didExtendSessionTimeout && [(_NFReaderSession *)self timeLimitedSession])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v17 = v16;
      v18 = object_getClass(self);
      v19 = class_isMetaClass(v18);
      v20 = object_getClassName(self);
      v115 = sel_getName(sel);
      v21 = 45;
      if (v19)
      {
        v21 = 43;
      }

      v109 = v20;
      v14 = v124;
      v17(6, "%c[%{public}s %{public}s]:%i Resetting the session time limit because tags detected", v21, v109, v115, 514);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = object_getClass(self);
      if (class_isMetaClass(v23))
      {
        v24 = 43;
      }

      else
      {
        v24 = 45;
      }

      v25 = object_getClassName(self);
      v26 = sel_getName(sel);
      *buf = 67109890;
      v142 = v24;
      v143 = 2082;
      v144 = v25;
      v145 = 2082;
      v146 = v26;
      v147 = 1024;
      v148 = 514;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Resetting the session time limit because tags detected", buf, 0x22u);
    }

    self->_didExtendSessionTimeout = 1;
    sessionTimer = self->_sessionTimer;
    [(NFServiceWhitelistChecker *)self->_tagWhiteList sessionTimeLimit];
    [NFTimer startTimer:"startTimer:leeway:" leeway:?];
  }

  v28 = sub_10024DC10();
  sub_10024EAA4(v28);

  v29 = +[_NFHardwareManager sharedHardwareManager];
  [v29 notifyReaderModeActivityStart];

  if ([(_NFReaderSession *)self _isCoreNFCSession]|| ![(NFServiceWhitelistChecker *)self->_tagWhiteList internalAccess])
  {
    if ((self->_pollOption & 2) != 0 && [(NFServiceWhitelistChecker *)self->_tagWhiteList nfcNDEFReaderAccess]&& (self->_sessionConfig & 0x10) == 0)
    {
      v134 = 0;
      [(_NFReaderSession *)self _processRawTagsForNDEF:detectedCopy ndefMessages:v14 supportedTags:v13 caEvents:v15 outError:&v134];
      v126 = v134;
      LODWORD(v30) = [v14 count] != 0;
      v122 = 1;
      goto LABEL_32;
    }

    v133 = 0;
    [(_NFReaderSession *)self _processRawTagsForCoreNFC:detectedCopy requireDiscoveryRestart:&v137 supportedTags:v13 caEvents:v15 outError:&v133 outConnectedTagIndex:&v136];
    v126 = v133;
    if ([v13 count])
    {
      v122 = 0;
      LODWORD(v30) = (LOBYTE(self->_pollOption) >> 1) & 1;
      goto LABEL_32;
    }
  }

  else
  {
    v135 = 0;
    [(_NFReaderSession *)self _processRawTagsForInternalSession:detectedCopy supportedTags:v13 outError:&v135];
    v126 = v135;
  }

  v122 = 0;
  LODWORD(v30) = 0;
LABEL_32:
  v137 = [v126 code] == 51;
  v31 = NFSharedSignpostLog();
  if (os_signpost_enabled(v31))
  {
    v32 = [v13 count] != 0;
    *buf = 67240448;
    v142 = v30;
    v143 = 1026;
    LODWORD(v144) = v32;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "handleRemoteTagsDetected", "didDetectNDEF=%{public,signpost.description:attribute}u didDetectTags=%{public,signpost.description:attribute}u", buf, 0xEu);
  }

  if (v30)
  {
    if ([v14 count])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v33 = NFLogGetLogger();
      if (v33)
      {
        v34 = v33;
        v35 = object_getClass(self);
        v36 = class_isMetaClass(v35);
        v37 = v15;
        v38 = object_getClassName(self);
        v39 = sel_getName(sel);
        v118 = [v124 count];
        v110 = v38;
        v40 = 45;
        if (v36)
        {
          v40 = 43;
        }

        v15 = v37;
        v34(6, "%c[%{public}s %{public}s]:%i %lu NDEF messages found", v40, v110, v39, 559, v118);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v41 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v124;
        goto LABEL_61;
      }

      v42 = object_getClass(self);
      v43 = v30;
      v30 = v15;
      if (class_isMetaClass(v42))
      {
        v44 = 43;
      }

      else
      {
        v44 = 45;
      }

      v45 = object_getClassName(self);
      v46 = sel_getName(sel);
      v14 = v124;
      v47 = [v124 count];
      *buf = 67110146;
      v142 = v44;
      v15 = v30;
      LOBYTE(v30) = v43;
      v143 = 2082;
      v144 = v45;
      v145 = 2082;
      v146 = v46;
      v147 = 1024;
      v148 = 559;
      v149 = 2048;
      v150 = v47;
      v48 = "%c[%{public}s %{public}s]:%i %lu NDEF messages found";
      v49 = v41;
      v50 = OS_LOG_TYPE_DEFAULT;
      v51 = 44;
    }

    else
    {
      v52 = [v13 count];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v53 = NFLogGetLogger();
      v54 = v53;
      if (v52)
      {
        v121 = v15;
        if (v53)
        {
          v55 = object_getClass(self);
          v56 = class_isMetaClass(v55);
          v57 = object_getClassName(self);
          v58 = sel_getName(sel);
          v119 = [v13 count];
          v111 = v57;
          v59 = 45;
          if (v56)
          {
            v59 = 43;
          }

          v14 = v124;
          v54(6, "%c[%{public}s %{public}s]:%i %lu NDEF tags found", v59, v111, v58, 561, v119);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v41 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v60 = object_getClass(self);
          if (class_isMetaClass(v60))
          {
            v61 = 43;
          }

          else
          {
            v61 = 45;
          }

          v62 = object_getClassName(self);
          v63 = sel_getName(sel);
          v64 = [v13 count];
          *buf = 67110146;
          v142 = v61;
          v14 = v124;
          v143 = 2082;
          v144 = v62;
          v145 = 2082;
          v146 = v63;
          v147 = 1024;
          v148 = 561;
          v149 = 2048;
          v150 = v64;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %lu NDEF tags found", buf, 0x2Cu);
        }

        v15 = v121;
        goto LABEL_61;
      }

      if (v53)
      {
        v100 = object_getClass(self);
        v101 = class_isMetaClass(v100);
        v102 = object_getClassName(self);
        v117 = sel_getName(sel);
        v103 = 45;
        if (v101)
        {
          v103 = 43;
        }

        v113 = v102;
        v14 = v124;
        v54(3, "%c[%{public}s %{public}s]:%i Unexpected state", v103, v113, v117, 563);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v41 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_61;
      }

      v104 = object_getClass(self);
      if (class_isMetaClass(v104))
      {
        v105 = 43;
      }

      else
      {
        v105 = 45;
      }

      v106 = object_getClassName(self);
      v107 = sel_getName(sel);
      *buf = 67109890;
      v142 = v105;
      v14 = v124;
      v143 = 2082;
      v144 = v106;
      v145 = 2082;
      v146 = v107;
      v147 = 1024;
      v148 = 563;
      v48 = "%c[%{public}s %{public}s]:%i Unexpected state";
      v49 = v41;
      v50 = OS_LOG_TYPE_ERROR;
      v51 = 34;
    }

    _os_log_impl(&_mh_execute_header, v49, v50, v48, buf, v51);
LABEL_61:

    remoteObject = [(_NFXPCSession *)self remoteObject];
    v66 = [[NSArray alloc] initWithArray:v14];
    v67 = v136;
    v131[0] = _NSConcreteStackBlock;
    v131[1] = 3221225472;
    v131[2] = sub_1001B4810;
    v131[3] = &unk_10031B5D0;
    v131[4] = self;
    v132 = v14;
    [remoteObject didDetectNDEFMessages:v66 fromTags:v13 connectedTagIndex:v67 updateUICallback:v131];

    goto LABEL_72;
  }

  if ([v13 count] && !v137)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v68 = NFLogGetLogger();
    if (v68)
    {
      v69 = v68;
      v70 = object_getClass(self);
      v71 = class_isMetaClass(v70);
      v72 = object_getClassName(self);
      v73 = v30;
      v30 = v15;
      v74 = sel_getName(sel);
      v120 = [v13 count];
      v116 = v74;
      v15 = v30;
      LOBYTE(v30) = v73;
      v75 = 45;
      if (v71)
      {
        v75 = 43;
      }

      v112 = v72;
      v14 = v124;
      v69(6, "%c[%{public}s %{public}s]:%i %lu tags found", v75, v112, v116, 576, v120);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v76 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      v77 = object_getClass(self);
      if (class_isMetaClass(v77))
      {
        v78 = 43;
      }

      else
      {
        v78 = 45;
      }

      v79 = object_getClassName(self);
      v80 = sel_getName(sel);
      v81 = [v13 count];
      *buf = 67110146;
      v142 = v78;
      v14 = v124;
      v143 = 2082;
      v144 = v79;
      v145 = 2082;
      v146 = v80;
      v147 = 1024;
      v148 = 576;
      v149 = 2048;
      v150 = v81;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %lu tags found", buf, 0x2Cu);
    }

    remoteObject2 = [(_NFXPCSession *)self remoteObject];
    v83 = [v13 copy];
    [remoteObject2 didDetectTags:v83 connectedTagIndex:v136];
  }

  else
  {
    v122 = 1;
  }

LABEL_72:
  if (self->_currentTag)
  {
    v84 = sub_10024DC10();
    sub_10024DCA4(v84, self->_currentTag);

    if (self->_isConnectionHandover)
    {
      v85 = sub_10024DC10();
      if (v85)
      {
        v85[165] = 1;
      }
    }
  }

  if (v126 && [v126 code] == 64)
  {
    [(_NFXPCSession *)self endSession:0];
    remoteObject3 = [(_NFXPCSession *)self remoteObject];
    v87 = [NSError alloc];
    v88 = [NSString stringWithUTF8String:"nfcd"];
    v139 = NSLocalizedDescriptionKey;
    v89 = [NSString stringWithUTF8String:"Reader mode prohibit timer"];
    v140 = v89;
    v90 = [NSDictionary dictionaryWithObjects:&v140 forKeys:&v139 count:1];
    v91 = [v87 initWithDomain:v88 code:64 userInfo:v90];
    [remoteObject3 didTerminate:v91];

    v14 = v124;
    firstObject = sub_10024DC10();
    sub_10024E3FC(firstObject, v126);
LABEL_84:

    goto LABEL_85;
  }

  if (v137)
  {
    sub_10021E364(self->_driverWrapper);
  }

  else if (v122)
  {
    firstObject = [detectedCopy firstObject];
    [(_NFReaderSession *)self _tagRemovalDetect:firstObject];
    goto LABEL_84;
  }

LABEL_85:
  if ((v30 & 1) == 0 && ![v13 count])
  {
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v93 = detectedCopy;
    v94 = [v93 countByEnumeratingWithState:&v127 objects:v138 count:16];
    if (v94)
    {
      v95 = v94;
      v96 = *v128;
      do
      {
        for (i = 0; i != v95; i = i + 1)
        {
          if (*v128 != v96)
          {
            objc_enumerationMutation(v93);
          }

          v98 = *(*(&v127 + 1) + 8 * i);
          v99 = sub_10024DC10();
          sub_10024E2D4(v99, v98);
        }

        v95 = [v93 countByEnumeratingWithState:&v127 objects:v138 count:16];
      }

      while (v95);
    }

    v14 = v124;
  }
}

- (void)handleReaderBurnoutTimer
{
  workQueue = [(_NFSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (self->_currentTag)
  {
    v4 = sub_10024DC10();
    if (v4)
    {
      v4[163] = 1;
    }
  }

  v5 = [(_NFReaderSession *)self _disconnectWithCardRemoval:0];
  self->_exitReason = 1;
  self->_uiStateOnInvalidation = 0;
  v6 = NFSharedSignpostLog();
  if (os_signpost_enabled(v6))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "handleReaderBurnoutTimer", &unk_1002E8B7A, v13, 2u);
  }

  [(_NFXPCSession *)self endSession:0];
  remoteObject = [(_NFXPCSession *)self remoteObject];
  v8 = [NSError alloc];
  v9 = [NSString stringWithUTF8String:"nfcd"];
  v14 = NSLocalizedDescriptionKey;
  v10 = [NSString stringWithUTF8String:"Reader mode temporarily disabled"];
  v15 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v12 = [v8 initWithDomain:v9 code:47 userInfo:v11];
  [remoteObject didTerminate:v12];
}

- (void)handleReaderBurnoutCleared
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Warning : message received - session should be gone.", v9, ClassName, Name, 630);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(self);
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    *buf = 67109890;
    v15 = v12;
    v16 = 2082;
    v17 = object_getClassName(self);
    v18 = 2082;
    v19 = sel_getName(a2);
    v20 = 1024;
    v21 = 630;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Warning : message received - session should be gone.", buf, 0x22u);
  }
}

- (void)handleFilteredFieldNotification:(id)notification
{
  notificationCopy = notification;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i %{public}@", v10, ClassName, Name, 645, notificationCopy);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(self);
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    *buf = 67110146;
    v66 = v13;
    v67 = 2082;
    v68 = object_getClassName(self);
    v69 = 2082;
    v70 = sel_getName(a2);
    v71 = 1024;
    v72 = 645;
    v73 = 2114;
    v74 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([(_NFReaderSession *)self _isCoreNFCSession])
  {
    if ([notificationCopy notificationType] == 2)
    {
      remoteObject = notificationCopy;
      sessionConfig = self->_sessionConfig;
      terminalMode = [remoteObject terminalMode];
      if ((sessionConfig & 8) != 0)
      {
        if (terminalMode == 4 && [remoteObject terminalType] == 15)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v39 = NFLogGetLogger();
          if (v39)
          {
            v40 = v39;
            v41 = object_getClass(self);
            v42 = class_isMetaClass(v41);
            v43 = object_getClassName(self);
            v63 = sel_getName(a2);
            v44 = 45;
            if (v42)
            {
              v44 = 43;
            }

            v40(5, "%c[%{public}s %{public}s]:%i Ignoring non ECP/VAS/Payment reader field", v44, v43, v63, 652);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v23 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_60;
          }

          v45 = object_getClass(self);
          if (class_isMetaClass(v45))
          {
            v46 = 43;
          }

          else
          {
            v46 = 45;
          }

          v47 = object_getClassName(self);
          v48 = sel_getName(a2);
          *buf = 67109890;
          v66 = v46;
          v67 = 2082;
          v68 = v47;
          v69 = 2082;
          v70 = v48;
          v71 = 1024;
          v72 = 652;
          v28 = "%c[%{public}s %{public}s]:%i Ignoring non ECP/VAS/Payment reader field";
          goto LABEL_59;
        }
      }

      else if (terminalMode == 4 && [remoteObject terminalType] == 15)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v17 = NFLogGetLogger();
        if (v17)
        {
          v18 = v17;
          v19 = object_getClass(self);
          v20 = class_isMetaClass(v19);
          v21 = object_getClassName(self);
          v61 = sel_getName(a2);
          v22 = 45;
          if (v20)
          {
            v22 = 43;
          }

          v18(5, "%c[%{public}s %{public}s]:%i Ignore Other field", v22, v21, v61, 660);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v23 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_60;
        }

        v24 = object_getClass(self);
        if (class_isMetaClass(v24))
        {
          v25 = 43;
        }

        else
        {
          v25 = 45;
        }

        v26 = object_getClassName(self);
        v27 = sel_getName(a2);
        *buf = 67109890;
        v66 = v25;
        v67 = 2082;
        v68 = v26;
        v69 = 2082;
        v70 = v27;
        v71 = 1024;
        v72 = 660;
        v28 = "%c[%{public}s %{public}s]:%i Ignore Other field";
LABEL_59:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v28, buf, 0x22u);
LABEL_60:

        goto LABEL_61;
      }
    }

    else
    {
      if ([notificationCopy notificationType] != 3)
      {
LABEL_49:
        remoteObject = [(_NFXPCSession *)self remoteObject];
        [remoteObject didDetectExternalReader];
        goto LABEL_61;
      }

      remoteObject = notificationCopy;
      if ([remoteObject chFieldType] != 1)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v49 = NFLogGetLogger();
        if (v49)
        {
          v50 = v49;
          v51 = object_getClass(self);
          v52 = class_isMetaClass(v51);
          v53 = object_getClassName(self);
          v64 = sel_getName(a2);
          v54 = 45;
          if (v52)
          {
            v54 = 43;
          }

          v50(5, "%c[%{public}s %{public}s]:%i Ignore CH field", v54, v53, v64, 667);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v23 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_60;
        }

        v55 = object_getClass(self);
        if (class_isMetaClass(v55))
        {
          v56 = 43;
        }

        else
        {
          v56 = 45;
        }

        v57 = object_getClassName(self);
        v58 = sel_getName(a2);
        *buf = 67109890;
        v66 = v56;
        v67 = 2082;
        v68 = v57;
        v69 = 2082;
        v70 = v58;
        v71 = 1024;
        v72 = 667;
        v28 = "%c[%{public}s %{public}s]:%i Ignore CH field";
        goto LABEL_59;
      }

      if ([remoteObject category] == 9)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v29 = NFLogGetLogger();
        if (v29)
        {
          v30 = v29;
          v31 = object_getClass(self);
          v32 = class_isMetaClass(v31);
          v33 = object_getClassName(self);
          v62 = sel_getName(a2);
          v34 = 45;
          if (v32)
          {
            v34 = 43;
          }

          v30(5, "%c[%{public}s %{public}s]:%i Ignore suppression field", v34, v33, v62, 672);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v23 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_60;
        }

        v35 = object_getClass(self);
        if (class_isMetaClass(v35))
        {
          v36 = 43;
        }

        else
        {
          v36 = 45;
        }

        v37 = object_getClassName(self);
        v38 = sel_getName(a2);
        *buf = 67109890;
        v66 = v36;
        v67 = 2082;
        v68 = v37;
        v69 = 2082;
        v70 = v38;
        v71 = 1024;
        v72 = 672;
        v28 = "%c[%{public}s %{public}s]:%i Ignore suppression field";
        goto LABEL_59;
      }
    }

    goto LABEL_49;
  }

  remoteObject = [(_NFXPCSession *)self remoteObject];
  [remoteObject didDetectExternalReaderWithNotification:notificationCopy];
LABEL_61:
}

- (void)handleXPCInvalidation
{
  self->_exitReason = 2;
  currentTag = self->_currentTag;
  self->_currentTag = 0;
  _objc_release_x1();
}

- (id)_activateAppOnConnect:(id)connect
{
  connectCopy = connect;
  type = [connectCopy type];
  type2 = [connectCopy type];
  type3 = [connectCopy type];
  if ((type == 3 || type2 == 6) && (self->_pollOption & 8) != 0)
  {
    if (type == 3)
    {
      [connectCopy tagA];
    }

    else
    {
      [connectCopy tagB];
    }
    v19 = ;
    selectedAID = [v19 selectedAID];

    v21 = [(_NFReaderSession *)self _performType4AppSelect:selectedAID tag:connectCopy];
    if (v21)
    {
      v22 = v21;

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (type3 != 7 || (self->_pollOption & 0x10) == 0)
  {
LABEL_16:
    v22 = 0;
    goto LABEL_17;
  }

  tagF = [connectCopy tagF];
  systemCode = [tagF SystemCode];
  v11 = [(_NFReaderSession *)self validateSystemCode:systemCode];

  if (v11)
  {
    tagF2 = [connectCopy tagF];
    systemCode2 = [tagF2 SystemCode];
    v64 = 0;
    v14 = [(_NFReaderSession *)self _getIDMFromTag:connectCopy systemCode:systemCode2 outIdm:&v64 outPmm:0];
    v15 = v64;

    if (v14 || ([connectCopy tagF], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "IDm"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v15, "isEqual:", v17), v17, v16, (v18 & 1) != 0))
    {

      goto LABEL_16;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v47 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      nF_asHexString = [v15 NF_asHexString];
      v53 = 45;
      if (isMetaClass)
      {
        v53 = 43;
      }

      v47(6, "%c[%{public}s %{public}s]:%i IDm of requested tag (%{public}@) does not match physical card", v53, ClassName, Name, 717, nF_asHexString);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v54 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = object_getClass(self);
      if (class_isMetaClass(v55))
      {
        v56 = 43;
      }

      else
      {
        v56 = 45;
      }

      v57 = object_getClassName(self);
      v58 = sel_getName(a2);
      nF_asHexString2 = [v15 NF_asHexString];
      *buf = 67110146;
      v70 = v56;
      v71 = 2082;
      v72 = v57;
      v73 = 2082;
      v74 = v58;
      v75 = 1024;
      v76 = 717;
      v77 = 2114;
      v78 = nF_asHexString2;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i IDm of requested tag (%{public}@) does not match physical card", buf, 0x2Cu);
    }

    v60 = [NSError alloc];
    v61 = [NSString stringWithUTF8String:"nfcd"];
    v65 = NSLocalizedDescriptionKey;
    v62 = [NSString stringWithUTF8String:"Tag Not Found"];
    v66 = v62;
    v63 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v22 = [v60 initWithDomain:v61 code:28 userInfo:v63];
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFLogGetLogger();
    if (v24)
    {
      v25 = v24;
      v26 = object_getClass(self);
      v27 = class_isMetaClass(v26);
      v28 = object_getClassName(self);
      v29 = sel_getName(a2);
      tagF3 = [connectCopy tagF];
      systemCode3 = [tagF3 SystemCode];
      nF_asHexString3 = [systemCode3 NF_asHexString];
      v33 = 45;
      if (v27)
      {
        v33 = 43;
      }

      v25(6, "%c[%{public}s %{public}s]:%i Service code (%{public}@) not in the whitelist", v33, v28, v29, 709, nF_asHexString3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v34 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = object_getClass(self);
      if (class_isMetaClass(v35))
      {
        v36 = 43;
      }

      else
      {
        v36 = 45;
      }

      v37 = object_getClassName(self);
      v38 = sel_getName(a2);
      tagF4 = [connectCopy tagF];
      systemCode4 = [tagF4 SystemCode];
      nF_asHexString4 = [systemCode4 NF_asHexString];
      *buf = 67110146;
      v70 = v36;
      v71 = 2082;
      v72 = v37;
      v73 = 2082;
      v74 = v38;
      v75 = 1024;
      v76 = 709;
      v77 = 2114;
      v78 = nF_asHexString4;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Service code (%{public}@) not in the whitelist", buf, 0x2Cu);
    }

    v42 = [NSError alloc];
    v43 = [NSString stringWithUTF8String:"nfcd"];
    v67 = NSLocalizedDescriptionKey;
    v44 = [NSString stringWithUTF8String:"Not entitled"];
    v68 = v44;
    v45 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
    v22 = [v42 initWithDomain:v43 code:32 userInfo:v45];
  }

LABEL_17:

  return v22;
}

- (id)_performType4AppSelect:(id)select tag:(id)tag
{
  selectCopy = select;
  tagCopy = tag;
  v9 = [(_NFReaderSession *)self validateAID:selectCopy allowsPrefixMatch:0];
  if (v9 == 4)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v11 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      [selectCopy NF_asHexString];
      v17 = v16 = a2;
      v18 = 45;
      if (isMetaClass)
      {
        v18 = 43;
      }

      v11(6, "%c[%{public}s %{public}s]:%i Application (%{public}@) not in the allowedlist", v18, ClassName, Name, 731, v17);

      a2 = v16;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = object_getClass(self);
      if (class_isMetaClass(v20))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      v22 = object_getClassName(self);
      v23 = sel_getName(a2);
      nF_asHexString = [selectCopy NF_asHexString];
      *buf = 67110146;
      v112 = v21;
      v113 = 2082;
      v114 = v22;
      v115 = 2082;
      v116 = v23;
      v117 = 1024;
      v118 = 731;
      v119 = 2114;
      v120 = nF_asHexString;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Application (%{public}@) not in the allowedlist", buf, 0x2Cu);
    }

    v25 = [NSError alloc];
    v26 = [NSString stringWithUTF8String:"nfcd"];
    v109 = NSLocalizedDescriptionKey;
    v27 = [NSString stringWithUTF8String:"Not entitled"];
    v110 = v27;
    v28 = [NSDictionary dictionaryWithObjects:&v110 forKeys:&v109 count:1];
    v29 = v25;
LABEL_60:
    v53 = [v29 initWithDomain:v26 code:32 userInfo:v28];

    goto LABEL_61;
  }

  integerValue = v9;
  selfCopy = self;
  if (![(NSMutableArray *)self->_nonstandard7816TagsFound count])
  {
LABEL_48:
    if ((integerValue & 0xFFFFFFFFFFFFFFFBLL) != 0)
    {
      v99 = 0;
      [(_NFReaderSession *)self _selectFromTag:tagCopy aid:selectCopy resolvedAid:0 error:&v99];
      v53 = v99;
      goto LABEL_61;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v64 = NFLogGetLogger();
    if (v64)
    {
      v65 = v64;
      v66 = object_getClass(selfCopy);
      v67 = class_isMetaClass(v66);
      v68 = object_getClassName(selfCopy);
      v69 = sel_getName(a2);
      nF_asHexString2 = [selectCopy NF_asHexString];
      v71 = 45;
      if (v67)
      {
        v71 = 43;
      }

      v65(6, "%c[%{public}s %{public}s]:%i Application (%{public}@) not in the allowedlist", v71, v68, v69, 768, nF_asHexString2);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v72 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      v73 = object_getClass(selfCopy);
      if (class_isMetaClass(v73))
      {
        v74 = 43;
      }

      else
      {
        v74 = 45;
      }

      v75 = object_getClassName(selfCopy);
      v76 = sel_getName(a2);
      nF_asHexString3 = [selectCopy NF_asHexString];
      *buf = 67110146;
      v112 = v74;
      v113 = 2082;
      v114 = v75;
      v115 = 2082;
      v116 = v76;
      v117 = 1024;
      v118 = 768;
      v119 = 2114;
      v120 = nF_asHexString3;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Application (%{public}@) not in the allowedlist", buf, 0x2Cu);
    }

    v78 = [NSError alloc];
    v26 = [NSString stringWithUTF8String:"nfcd"];
    v106 = NSLocalizedDescriptionKey;
    v27 = [NSString stringWithUTF8String:"Not entitled"];
    v107 = v27;
    v28 = [NSDictionary dictionaryWithObjects:&v107 forKeys:&v106 count:1];
    v29 = v78;
    goto LABEL_60;
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = self->_nonstandard7816TagsFound;
  v31 = [(NSMutableArray *)obj countByEnumeratingWithState:&v102 objects:v108 count:16];
  if (!v31)
  {
LABEL_47:

    goto LABEL_48;
  }

  v32 = v31;
  v95 = a2;
  v96 = selectCopy;
  v33 = *v103;
LABEL_15:
  v34 = 0;
  while (1)
  {
    if (*v103 != v33)
    {
      objc_enumerationMutation(obj);
    }

    v35 = *(*(&v102 + 1) + 8 * v34);
    v36 = [tagCopy UID];
    v37 = [v35 objectForKeyedSubscript:@"uid"];
    v38 = [v36 isEqualToData:v37];

    if (v38)
    {
      break;
    }

    if (v32 == ++v34)
    {
      v32 = [(NSMutableArray *)obj countByEnumeratingWithState:&v102 objects:v108 count:16];
      if (v32)
      {
        goto LABEL_15;
      }

      a2 = v95;
      selectCopy = v96;
      goto LABEL_46;
    }
  }

  v39 = [v35 objectForKeyedSubscript:@"type"];
  integerValue = [v39 integerValue];

  selectCopy = v96;
  if (integerValue == 3)
  {
    v100 = 0;
    v52 = [(_NFReaderSession *)selfCopy selectPRCIDApp:v96 fromTag:tagCopy resolvedAid:0 outError:&v100];
    v41 = v100;
    if ((v52 & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v80 = NFLogGetLogger();
      if (v80)
      {
        v81 = v80;
        v82 = object_getClass(selfCopy);
        v83 = class_isMetaClass(v82);
        v91 = object_getClassName(selfCopy);
        v94 = sel_getName(v95);
        v84 = 45;
        if (v83)
        {
          v84 = 43;
        }

        v81(3, "%c[%{public}s %{public}s]:%i %{public}@", v84, v91, v94, 755, v41);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v47 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_74;
      }

      v85 = object_getClass(selfCopy);
      if (class_isMetaClass(v85))
      {
        v86 = 43;
      }

      else
      {
        v86 = 45;
      }

      v87 = object_getClassName(selfCopy);
      v88 = sel_getName(v95);
      *buf = 67110146;
      v112 = v86;
      v113 = 2082;
      v114 = v87;
      v115 = 2082;
      v116 = v88;
      v117 = 1024;
      v118 = 755;
      v119 = 2114;
      v120 = v41;
      goto LABEL_73;
    }
  }

  else
  {
    a2 = v95;
    if (integerValue != 2)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v54 = NFLogGetLogger();
      if (v54)
      {
        v55 = v54;
        v56 = object_getClass(selfCopy);
        v57 = class_isMetaClass(v56);
        v90 = object_getClassName(selfCopy);
        v93 = sel_getName(v95);
        v58 = 45;
        if (v57)
        {
          v58 = 43;
        }

        v55(4, "%c[%{public}s %{public}s]:%i Unexpected tag type found: %{public}@", v58, v90, v93, 761, tagCopy);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v59 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v60 = object_getClass(selfCopy);
        if (class_isMetaClass(v60))
        {
          v61 = 43;
        }

        else
        {
          v61 = 45;
        }

        v62 = object_getClassName(selfCopy);
        v63 = sel_getName(v95);
        *buf = 67110146;
        v112 = v61;
        v113 = 2082;
        v114 = v62;
        v115 = 2082;
        v116 = v63;
        v117 = 1024;
        v118 = 761;
        v119 = 2114;
        v120 = tagCopy;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected tag type found: %{public}@", buf, 0x2Cu);
      }

LABEL_46:
      self = selfCopy;
      goto LABEL_47;
    }

    v101 = 0;
    v40 = [(_NFReaderSession *)selfCopy selectPaceApp:v96 fromTag:tagCopy outError:&v101];
    v41 = v101;
    if ((v40 & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v42 = NFLogGetLogger();
      if (v42)
      {
        v43 = v42;
        v44 = object_getClass(selfCopy);
        v45 = class_isMetaClass(v44);
        v89 = object_getClassName(selfCopy);
        v92 = sel_getName(v95);
        v46 = 45;
        if (v45)
        {
          v46 = 43;
        }

        v43(3, "%c[%{public}s %{public}s]:%i %{public}@", v46, v89, v92, 749, v41);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v47 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_74;
      }

      v48 = object_getClass(selfCopy);
      if (class_isMetaClass(v48))
      {
        v49 = 43;
      }

      else
      {
        v49 = 45;
      }

      v50 = object_getClassName(selfCopy);
      v51 = sel_getName(v95);
      *buf = 67110146;
      v112 = v49;
      v113 = 2082;
      v114 = v50;
      v115 = 2082;
      v116 = v51;
      v117 = 1024;
      v118 = 749;
      v119 = 2114;
      v120 = v41;
LABEL_73:
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
LABEL_74:

      v41 = v41;
      v53 = v41;
      goto LABEL_75;
    }
  }

  v53 = 0;
LABEL_75:

LABEL_61:

  return v53;
}

- (void)_sync_connect:(id)_sync_connect completion:(id)completion
{
  obj = _sync_connect;
  _sync_connectCopy = _sync_connect;
  completionCopy = completion;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  sel = a2;
  if (Logger)
  {
    v8 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    clientName = [(_NFXPCSession *)self clientName];
    connection = [(_NFXPCSession *)self connection];
    processIdentifier = [connection processIdentifier];
    sessionUID = [(_NFSession *)self sessionUID];
    v85 = processIdentifier;
    a2 = sel;
    v17 = 43;
    if (!isMetaClass)
    {
      v17 = 45;
    }

    v8(6, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", v17, ClassName, Name, 779, clientName, v85, sessionUID, obj);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v18 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = object_getClass(self);
    if (class_isMetaClass(v19))
    {
      v20 = 43;
    }

    else
    {
      v20 = 45;
    }

    v21 = object_getClassName(self);
    v22 = sel_getName(a2);
    clientName2 = [(_NFXPCSession *)self clientName];
    connection2 = [(_NFXPCSession *)self connection];
    processIdentifier2 = [connection2 processIdentifier];
    sessionUID2 = [(_NFSession *)self sessionUID];
    *buf = 67110658;
    v98 = v20;
    v99 = 2082;
    v100 = v21;
    v101 = 2082;
    v102 = v22;
    v103 = 1024;
    v104 = 779;
    v105 = 2114;
    v106 = clientName2;
    v107 = 1024;
    v108 = processIdentifier2;
    v109 = 2114;
    v110 = sessionUID2;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", buf, 0x3Cu);
  }

  pollOption = self->_pollOption;
  if ((pollOption & 2) == 0)
  {
    nfcNDEFReaderAccess = 0;
    if ((pollOption & 8) != 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    nfcTagReaderAccess2 = 0;
    nfcTagReaderAccess = 0;
    goto LABEL_16;
  }

  nfcNDEFReaderAccess = [(NFServiceWhitelistChecker *)self->_tagWhiteList nfcNDEFReaderAccess];
  pollOption = self->_pollOption;
  if ((pollOption & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  nfcTagReaderAccess = [(NFServiceWhitelistChecker *)self->_tagWhiteList nfcTagReaderAccess];
  pollOption = self->_pollOption;
  if ((pollOption & 8) == 0)
  {
    nfcTagReaderAccess2 = 0;
    goto LABEL_16;
  }

  nfcTagReaderAccess2 = [(NFServiceWhitelistChecker *)self->_tagWhiteList nfcTagReaderAccess];
  pollOption = self->_pollOption;
  if ((pollOption & 8) == 0)
  {
LABEL_16:
    nfcVASReaderAccess = 0;
    if ((pollOption & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  nfcVASReaderAccess = [(NFServiceWhitelistChecker *)self->_tagWhiteList nfcVASReaderAccess];
  pollOption = self->_pollOption;
  if ((pollOption & 0x10) == 0)
  {
LABEL_17:
    nfcTagReaderAccess3 = 0;
    if ((pollOption & 4) != 0)
    {
      goto LABEL_18;
    }

LABEL_23:
    nfcISO15693ReaderAccess = 0;
    goto LABEL_25;
  }

LABEL_22:
  nfcTagReaderAccess3 = [(NFServiceWhitelistChecker *)self->_tagWhiteList nfcTagReaderAccess];
  if ((self->_pollOption & 4) == 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  if (([(NFServiceWhitelistChecker *)self->_tagWhiteList nfcTagReaderAccess]& 1) != 0)
  {
    nfcISO15693ReaderAccess = 1;
  }

  else
  {
    nfcISO15693ReaderAccess = [(NFServiceWhitelistChecker *)self->_tagWhiteList nfcISO15693ReaderAccess];
  }

LABEL_25:
  if (([(NFServiceWhitelistChecker *)self->_tagWhiteList internalAccess]| nfcNDEFReaderAccess | nfcTagReaderAccess | nfcTagReaderAccess2 | nfcVASReaderAccess | nfcTagReaderAccess3) & 1) != 0 || (nfcISO15693ReaderAccess)
  {
    v53 = _sync_connectCopy;
    v52 = completionCopy;
    if (self->_currentTag && [_sync_connectCopy isEqualToNFTag:?])
    {
      self->_clientRequestConnect = 1;
      self->_uiStateOnInvalidation = 1;
      (*(completionCopy + 2))(completionCopy, _sync_connectCopy, 0);
    }

    else
    {
      v54 = sub_10024DC10();
      sub_10024DCA4(v54, _sync_connectCopy);

      if (self->_isConnectionHandover)
      {
        v55 = sub_10024DC10();
        if (v55)
        {
          v55[165] = 1;
        }

        [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_100339BE8];
      }

      v56 = sub_10024DC10();
      if (v56)
      {
        v56[166] = self->_serviceType == 2;
      }

      driverWrapper = self->_driverWrapper;
      v90 = 0;
      v58 = sub_100190BD0(driverWrapper, _sync_connectCopy, &v90);
      v59 = v90;
      if (v58)
      {
        v60 = [NSError alloc];
        v61 = [NSString stringWithUTF8String:"nfcd"];
        v62 = v58;
        v93[0] = NSLocalizedDescriptionKey;
        if (v58 >= 0x4C)
        {
          v63 = 76;
        }

        else
        {
          v63 = v58;
        }

        v64 = [NSString stringWithUTF8String:off_10031B2E8[v63]];
        v94[0] = v64;
        v94[1] = &off_100333A08;
        v93[1] = @"Line";
        v93[2] = @"Method";
        v65 = [[NSString alloc] initWithFormat:@"%s", sel_getName(sel)];
        v94[2] = v65;
        v93[3] = NSDebugDescriptionErrorKey;
        v66 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(sel), 822];
        v94[3] = v66;
        v67 = [NSDictionary dictionaryWithObjects:v94 forKeys:v93 count:4];
        v68 = [v60 initWithDomain:v61 code:v62 userInfo:v67];
        (*(completionCopy + 2))(completionCopy, 0, v68);

        v69 = 0;
      }

      else if ((self->_sessionConfig & 2) != 0 && ([(_NFReaderSession *)self _activateAppOnConnect:_sync_connectCopy], (v70 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v69 = v70;
        (*(completionCopy + 2))(completionCopy, 0, v70);
        +[NFExceptionsCALogger postAnalyticsReaderModeExceptionForType:tagType:rfFrameInterface:withErrorCode:](NFExceptionsCALogger, "postAnalyticsReaderModeExceptionForType:tagType:rfFrameInterface:withErrorCode:", 1, -[_NFReaderSession _getTagTypeFromTag:](self, "_getTagTypeFromTag:", _sync_connectCopy), (self->_pollingConfig >> 12) & 1, [v69 code]);
        sub_10022F438(NFDailyStatisticsCALogger, @"readerModeConnectErrorCount");
        v71 = sub_10024DC10();
        sub_10024E3FC(v71, v69);

        if ([_sync_connectCopy type])
        {
          type = [_sync_connectCopy type];
        }

        else
        {
          type = sub_10019093C(self->_driverWrapper, _sync_connectCopy);
        }

        v73 = type;
        v74 = sub_10024DC10();
        sub_10024DD78(v74, _sync_connectCopy, v73);

        domain = [v69 domain];
        v76 = [NSString stringWithUTF8String:"nfcd"];
        if ([domain isEqualToString:v76])
        {
          code = [v69 code];

          if (code == 32)
          {
            [(_NFXPCSession *)self endSession:0];
            remoteObject = [(_NFXPCSession *)self remoteObject];
            v79 = [NSError alloc];
            v80 = [NSString stringWithUTF8String:"nfcd"];
            v91 = NSLocalizedDescriptionKey;
            v81 = [NSString stringWithUTF8String:"Not entitled"];
            v92 = v81;
            v82 = [NSDictionary dictionaryWithObjects:&v92 forKeys:&v91 count:1];
            v83 = [v79 initWithDomain:v80 code:32 userInfo:v82];
            [remoteObject didTerminate:v83];
          }
        }

        else
        {
        }
      }

      else
      {
        objc_storeStrong(&self->_currentTag, obj);
        (*(completionCopy + 2))(completionCopy, v59, 0);
        v69 = 0;
        self->_clientRequestConnect = 1;
        self->_uiStateOnInvalidation = 1;
      }

      v53 = _sync_connectCopy;
      v52 = completionCopy;
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v34 = NFLogGetLogger();
    if (v34)
    {
      v35 = v34;
      v36 = object_getClass(self);
      v37 = class_isMetaClass(v36);
      v38 = object_getClassName(self);
      v84 = sel_getName(sel);
      v39 = 45;
      if (v37)
      {
        v39 = 43;
      }

      v35(6, "%c[%{public}s %{public}s]:%i Missing required entitlements", v39, v38, v84, 792);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v40 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = object_getClass(self);
      if (class_isMetaClass(v41))
      {
        v42 = 43;
      }

      else
      {
        v42 = 45;
      }

      v43 = object_getClassName(self);
      v44 = sel_getName(sel);
      *buf = 67109890;
      v98 = v42;
      v99 = 2082;
      v100 = v43;
      v101 = 2082;
      v102 = v44;
      v103 = 1024;
      v104 = 792;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Missing required entitlements", buf, 0x22u);
    }

    v45 = [NSError alloc];
    v46 = [NSString stringWithUTF8String:"nfcd"];
    v95[0] = NSLocalizedDescriptionKey;
    v47 = [NSString stringWithUTF8String:"Not entitled"];
    v96[0] = v47;
    v96[1] = &off_1003339D8;
    v95[1] = @"Line";
    v95[2] = @"Method";
    v48 = [[NSString alloc] initWithFormat:@"%s", sel_getName(sel)];
    v96[2] = v48;
    v95[3] = NSDebugDescriptionErrorKey;
    v49 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(sel), 793];
    v96[3] = v49;
    v50 = [NSDictionary dictionaryWithObjects:v96 forKeys:v95 count:4];
    v51 = [v45 initWithDomain:v46 code:32 userInfo:v50];

    v52 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, v51);
    v53 = _sync_connectCopy;
    +[NFExceptionsCALogger postAnalyticsReaderModeExceptionForType:tagType:rfFrameInterface:withErrorCode:](NFExceptionsCALogger, "postAnalyticsReaderModeExceptionForType:tagType:rfFrameInterface:withErrorCode:", 1, -[_NFReaderSession _getTagTypeFromTag:](self, "_getTagTypeFromTag:", _sync_connectCopy), (self->_pollingConfig >> 12) & 1, [v51 code]);
  }
}

- (void)connect:(id)connect completion:(id)completion
{
  connectCopy = connect;
  completionCopy = completion;
  v16.receiver = self;
  v16.super_class = _NFReaderSession;
  workQueue = [(_NFSession *)&v16 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001B6F54;
  v12[3] = &unk_1003165E8;
  v14 = completionCopy;
  v15 = a2;
  v12[4] = self;
  v13 = connectCopy;
  v10 = connectCopy;
  v11 = completionCopy;
  dispatch_async(workQueue, v12);
}

- (void)disconnectWithCardRemoval:(BOOL)removal completion:(id)completion
{
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = _NFReaderSession;
  workQueue = [(_NFSession *)&v14 workQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001B76B4;
  v10[3] = &unk_100316FA0;
  v11 = completionCopy;
  v12 = a2;
  v10[4] = self;
  removalCopy = removal;
  v9 = completionCopy;
  dispatch_async(workQueue, v10);
}

- (void)_sync_transceive:(id)_sync_transceive completion:(id)completion
{
  _sync_transceiveCopy = _sync_transceive;
  completionCopy = completion;
  v9 = _sync_transceiveCopy;
  _isCoreNFCSession = [(_NFReaderSession *)self _isCoreNFCSession];
  tagWhiteList = self->_tagWhiteList;
  if (_isCoreNFCSession)
  {
    if (([(NFServiceWhitelistChecker *)tagWhiteList nfcTagReaderAccess]& 1) == 0 && ([(NFServiceWhitelistChecker *)self->_tagWhiteList nfcISO15693ReaderAccess]& 1) == 0 && ([(NFServiceWhitelistChecker *)self->_tagWhiteList nfcVASReaderAccess]& 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else if (([(NFServiceWhitelistChecker *)tagWhiteList internalAccess]& 1) == 0)
  {
LABEL_5:
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v13 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v17 = 45;
      if (isMetaClass)
      {
        v17 = 43;
      }

      v13(3, "%c[%{public}s %{public}s]:%i Invalid entitlement configuration.", v17, ClassName, Name, 935);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = object_getClass(self);
      if (class_isMetaClass(v19))
      {
        v20 = 43;
      }

      else
      {
        v20 = 45;
      }

      *buf = 67109890;
      *v94 = v20;
      *&v94[4] = 2082;
      *&v94[6] = object_getClassName(self);
      *&v94[14] = 2082;
      *&v94[16] = sel_getName(a2);
      v95 = 1024;
      v96 = 935;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid entitlement configuration.", buf, 0x22u);
    }

    v21 = [NSError alloc];
    v22 = [NSString stringWithUTF8String:"nfcd"];
    v101 = NSLocalizedDescriptionKey;
    v23 = [NSString stringWithUTF8String:"Not entitled"];
    v102 = v23;
    v24 = [NSDictionary dictionaryWithObjects:&v102 forKeys:&v101 count:1];
    v25 = [v21 initWithDomain:v22 code:32 userInfo:v24];

    completionCopy[2](completionCopy, self->_currentTag, 0, v25);
    +[NFExceptionsCALogger postAnalyticsReaderModeExceptionForType:tagType:rfFrameInterface:withErrorCode:](NFExceptionsCALogger, "postAnalyticsReaderModeExceptionForType:tagType:rfFrameInterface:withErrorCode:", 3, -[_NFReaderSession _getTagTypeFromTag:](self, "_getTagTypeFromTag:", self->_currentTag), (self->_pollingConfig >> 12) & 1, [v25 code]);
    sub_10022F438(NFDailyStatisticsCALogger, @"readerModeTransceiveErrorCount");
    goto LABEL_80;
  }

  v90 = 0;
  sessionPollConfig = self->_sessionPollConfig;
  if (sessionPollConfig)
  {
    v27 = [(NFReaderSessionPollConfig *)sessionPollConfig type]== 2;
  }

  else
  {
    v27 = 0;
  }

  if ([(_NFReaderSession *)self _isCoreNFCSession]|| v27)
  {
    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_1001B8768;
    v88[3] = &unk_10031B5F8;
    v88[4] = self;
    v89 = completionCopy;
    v28 = objc_retainBlock(v88);
    if ([(NFTag *)self->_currentTag type]== 8)
    {
      v29 = [(_NFReaderSession *)self _validateISO15693Packet:v9];
      if (v29)
      {
LABEL_23:
        (v28[2])(v28, v29);
LABEL_28:

        v25 = 0;
        goto LABEL_80;
      }
    }

    else if ([(NFTag *)self->_currentTag type]== 3 || [(NFTag *)self->_currentTag type]== 6)
    {
      v30 = [[NFCommandAPDU alloc] initWithData:v9];
      v31 = [(_NFReaderSession *)self _validateAPDU:v30 outCheckFciResponse:&v90];
      if (v31)
      {
        (v28[2])(v28, v31);

        goto LABEL_28;
      }
    }

    else if ([(NFTag *)self->_currentTag type]== 7)
    {
      v29 = [(_NFReaderSession *)self _validateFelicaCommand:v9];
      if (v29)
      {
        goto LABEL_23;
      }
    }
  }

  if (self->_currentTag)
  {
    sel = a2;
    v32 = NFSharedSignpostLog();
    if (os_signpost_enabled(v32))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "TRANSCEIVE", &unk_1002E8B7A, buf, 2u);
    }

    driverWrapper = self->_driverWrapper;
    currentTag = self->_currentTag;
    [(NFServiceWhitelistChecker *)self->_tagWhiteList sessionTimeLimit];
    v87 = 0;
    v35 = sub_1001960B0(driverWrapper, v9, currentTag, &v87);
    v25 = v87;
    v36 = NFSharedSignpostLog();
    if (os_signpost_enabled(v36))
    {
      v37 = [v9 length];
      v38 = [v35 length];
      *buf = 134349312;
      *v94 = v37;
      *&v94[8] = 2050;
      *&v94[10] = v38;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "TRANSCEIVE", "send=%{public,signpost.description:attribute}lu, receive=%{public,signpost.description:attribute}lu", buf, 0x16u);
    }

    code = [v25 code];
    if (v9)
    {
      v40 = [v9 length];
      if (v35)
      {
LABEL_40:
        v41 = [v35 length];
LABEL_53:
        v57 = sub_10024DC10();
        if (v57 && *(v57 + 40))
        {
          ++*(v57 + 24);
          v58 = &v41[*(v57 + 16)];
          *(v57 + 8) += v40;
          *(v57 + 16) = v58;
        }

        if (([(NFServiceWhitelistChecker *)self->_tagWhiteList internalAccess]& 1) == 0 && [(NFTag *)self->_currentTag type]== 7)
        {
          v86 = 0;
          v59 = [(_NFReaderSession *)self _isFelicaPollingCommand:v9 systemCode:&v86];
          v60 = v86;
          if (v59 && [v35 length] >= 0x12)
          {
            v61 = [[NFTagInternal alloc] initWithNFTag:self->_currentTag];
            [v61 _setSystemCode:v60];
            v62 = [v35 subdataWithRange:{2, 8}];
            [v61 _setIDm:v62];

            v63 = [v35 subdataWithRange:{10, 8}];
            [v61 _setPMm:v63];

            v64 = self->_currentTag;
            self->_currentTag = v61;
          }
        }

        if (code != 64)
        {
          if ([(NFTag *)self->_currentTag type]== 15 || [(NFTag *)self->_currentTag type]== 16)
          {
            if (![(_NFReaderSession *)self _validateMifareAPDU:v9 response:v35])
            {
LABEL_66:
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v65 = NFLogGetLogger();
              if (v65)
              {
                v66 = v65;
                v67 = object_getClass(self);
                v68 = class_isMetaClass(v67);
                v81 = object_getClassName(self);
                v84 = sel_getName(sel);
                v69 = 45;
                if (v68)
                {
                  v69 = 43;
                }

                v66(3, "%c[%{public}s %{public}s]:%i Invalid AID selection: %{public}@, forcing disconnect", v69, v81, v84, 1046, v9);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v70 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                v71 = object_getClass(self);
                if (class_isMetaClass(v71))
                {
                  v72 = 43;
                }

                else
                {
                  v72 = 45;
                }

                v73 = object_getClassName(self);
                v74 = sel_getName(sel);
                *buf = 67110146;
                *v94 = v72;
                *&v94[4] = 2082;
                *&v94[6] = v73;
                *&v94[14] = 2082;
                *&v94[16] = v74;
                v95 = 1024;
                v96 = 1046;
                v97 = 2114;
                v98 = v9;
                _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid AID selection: %{public}@, forcing disconnect", buf, 0x2Cu);
              }

              v75 = [(_NFReaderSession *)self _disconnectWithCardRemoval:0];
              v76 = [NSError alloc];
              v77 = [NSString stringWithUTF8String:"nfcd"];
              v91 = NSLocalizedDescriptionKey;
              v78 = [NSString stringWithUTF8String:"Not entitled"];
              v92 = v78;
              v79 = [NSDictionary dictionaryWithObjects:&v92 forKeys:&v91 count:1];
              v80 = [v76 initWithDomain:v77 code:32 userInfo:v79];
              completionCopy[2](completionCopy, 0, 0, v80);

              [NFExceptionsCALogger postAnalyticsReaderModeExceptionForType:3 tagType:[(_NFReaderSession *)self _getTagTypeFromTag:self->_currentTag] rfFrameInterface:(self->_pollingConfig >> 12) & 1 withErrorCode:8];
              sub_10022F438(NFDailyStatisticsCALogger, @"readerModeTransceiveErrorCount");
              goto LABEL_79;
            }
          }

          else if (v90 == 1 && ![(_NFReaderSession *)self validateAID:v9 withSelectResponse:v35 outRealAid:0])
          {
            goto LABEL_66;
          }
        }

        (completionCopy)[2](completionCopy, self->_currentTag, v35, v25);
LABEL_79:

        goto LABEL_80;
      }
    }

    else
    {
      v40 = 0;
      if (v35)
      {
        goto LABEL_40;
      }
    }

    v41 = 0;
    goto LABEL_53;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v42 = NFLogGetLogger();
  if (v42)
  {
    v43 = v42;
    v44 = object_getClass(self);
    v45 = class_isMetaClass(v44);
    v46 = object_getClassName(self);
    v83 = sel_getName(a2);
    v47 = 45;
    if (v45)
    {
      v47 = 43;
    }

    v43(3, "%c[%{public}s %{public}s]:%i No tag is connected", v47, v46, v83, 1006);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v48 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    v49 = object_getClass(self);
    if (class_isMetaClass(v49))
    {
      v50 = 43;
    }

    else
    {
      v50 = 45;
    }

    v51 = object_getClassName(self);
    v52 = sel_getName(a2);
    *buf = 67109890;
    *v94 = v50;
    *&v94[4] = 2082;
    *&v94[6] = v51;
    *&v94[14] = 2082;
    *&v94[16] = v52;
    v95 = 1024;
    v96 = 1006;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No tag is connected", buf, 0x22u);
  }

  v53 = [NSError alloc];
  v54 = [NSString stringWithUTF8String:"nfcd"];
  v99 = NSLocalizedDescriptionKey;
  v55 = [NSString stringWithUTF8String:"Tag Not Found"];
  v100 = v55;
  v56 = [NSDictionary dictionaryWithObjects:&v100 forKeys:&v99 count:1];
  v25 = [v53 initWithDomain:v54 code:28 userInfo:v56];

  completionCopy[2](completionCopy, self->_currentTag, 0, v25);
LABEL_80:
}

- (void)transceive:(id)transceive completion:(id)completion
{
  transceiveCopy = transceive;
  completionCopy = completion;
  v16.receiver = self;
  v16.super_class = _NFReaderSession;
  workQueue = [(_NFSession *)&v16 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001B8AF0;
  v12[3] = &unk_1003165E8;
  v14 = completionCopy;
  v15 = a2;
  v12[4] = self;
  v13 = transceiveCopy;
  v10 = transceiveCopy;
  v11 = completionCopy;
  dispatch_async(workQueue, v12);
}

- (void)checkNdefSupportWithCompletion:(id)completion
{
  completionCopy = completion;
  v11.receiver = self;
  v11.super_class = _NFReaderSession;
  workQueue = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B8EB8;
  block[3] = &unk_100316050;
  v9 = completionCopy;
  v10 = a2;
  block[4] = self;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)ndefReadWithCompletion:(id)completion
{
  completionCopy = completion;
  v11.receiver = self;
  v11.super_class = _NFReaderSession;
  workQueue = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B9648;
  block[3] = &unk_100316050;
  v9 = completionCopy;
  v10 = a2;
  block[4] = self;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)ndefWrite:(id)write completion:(id)completion
{
  writeCopy = write;
  completionCopy = completion;
  v16.receiver = self;
  v16.super_class = _NFReaderSession;
  workQueue = [(_NFSession *)&v16 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001BA3AC;
  v12[3] = &unk_1003165E8;
  v14 = completionCopy;
  v15 = a2;
  v12[4] = self;
  v13 = writeCopy;
  v10 = writeCopy;
  v11 = completionCopy;
  dispatch_async(workQueue, v12);
}

- (void)formatNdefWithKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  v16.receiver = self;
  v16.super_class = _NFReaderSession;
  workQueue = [(_NFSession *)&v16 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001BB1E0;
  v12[3] = &unk_1003165E8;
  v14 = completionCopy;
  v15 = a2;
  v12[4] = self;
  v13 = keyCopy;
  v10 = keyCopy;
  v11 = completionCopy;
  dispatch_async(workQueue, v12);
}

- (void)checkPresenceWithCompletion:(id)completion
{
  completionCopy = completion;
  v11.receiver = self;
  v11.super_class = _NFReaderSession;
  workQueue = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BBA88;
  block[3] = &unk_100316050;
  v9 = completionCopy;
  v10 = a2;
  block[4] = self;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)_updateReaderSettingsBasedOnConfig:(unint64_t)config
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_iso7816AppList;
  v5 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v9 + 1) + 8 * i) type] == 3)
        {
          self->_sessionConfig |= 0x100uLL;
        }
      }

      v6 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_sync_startPollingForTags:(unint64_t)tags sessionConfig:(unint64_t)config completion:(id)completion
{
  completionCopy = completion;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  tagsCopy = tags;
  if (Logger)
  {
    v9 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    configCopy = config;
    ClassName = object_getClassName(self);
    v14 = a2;
    Name = sel_getName(a2);
    clientName = [(_NFXPCSession *)self clientName];
    connection = [(_NFXPCSession *)self connection];
    processIdentifier = [connection processIdentifier];
    sessionUID = [(_NFSession *)self sessionUID];
    v123 = Name;
    a2 = v14;
    v20 = 43;
    if (!isMetaClass)
    {
      v20 = 45;
    }

    v122 = ClassName;
    config = configCopy;
    tags = tagsCopy;
    v9(6, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", v20, v122, v123, 1284, clientName, processIdentifier, sessionUID);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v21 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = object_getClass(self);
    if (class_isMetaClass(v22))
    {
      v23 = 43;
    }

    else
    {
      v23 = 45;
    }

    v130 = v23;
    v24 = object_getClassName(self);
    v25 = sel_getName(a2);
    clientName2 = [(_NFXPCSession *)self clientName];
    connection2 = [(_NFXPCSession *)self connection];
    processIdentifier2 = [connection2 processIdentifier];
    [(_NFSession *)self sessionUID];
    v30 = v29 = config;
    *buf = 67110658;
    v151 = v130;
    v152 = 2082;
    v153 = v24;
    v154 = 2082;
    v155 = v25;
    v156 = 1024;
    v157 = 1284;
    v158 = 2114;
    v159 = clientName2;
    v160 = 1024;
    v161 = processIdentifier2;
    v162 = 2114;
    v163 = v30;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", buf, 0x3Cu);

    config = v29;
    tags = tagsCopy;
  }

  self->_pollingConfig = 0;
  if (config & 0xFFFFFFFFFFFFF380 | tags & 0xFFFFFFFFFFFFFFC2)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v31 = NFLogGetLogger();
    if (v31)
    {
      v32 = v31;
      v33 = object_getClass(self);
      v34 = class_isMetaClass(v33);
      v35 = object_getClassName(self);
      v124 = sel_getName(a2);
      v36 = 45;
      if (v34)
      {
        v36 = 43;
      }

      v32(4, "%c[%{public}s %{public}s]:%i Invalid parameters", v36, v35, v124, 1291);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFSharedLogGetLogger();
    v38 = completionCopy;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v39 = object_getClass(self);
      if (class_isMetaClass(v39))
      {
        v40 = 43;
      }

      else
      {
        v40 = 45;
      }

      v41 = object_getClassName(self);
      v42 = sel_getName(a2);
      *buf = 67109890;
      v151 = v40;
      v152 = 2082;
      v153 = v41;
      v154 = 2082;
      v155 = v42;
      v156 = 1024;
      v157 = 1291;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid parameters", buf, 0x22u);
    }

    v43 = [NSError alloc];
    v44 = [NSString stringWithUTF8String:"nfcd"];
    v148 = NSLocalizedDescriptionKey;
    v45 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v149 = v45;
    v46 = &v149;
    v47 = &v148;
LABEL_21:
    v48 = [NSDictionary dictionaryWithObjects:v46 forKeys:v47 count:1];
    v49 = v43;
    v50 = v44;
    v51 = 10;
LABEL_22:
    v52 = [v49 initWithDomain:v50 code:v51 userInfo:v48];
    (v38)[2](v38, v52);

    goto LABEL_111;
  }

  sessionType = self->_sessionType;
  v54 = sessionType == 5;
  _isCoreNFCSession = [(_NFReaderSession *)self _isCoreNFCSession];
  if ((tags & 1) != 0 && (_isCoreNFCSession & 1) == 0 && [(NFServiceWhitelistChecker *)self->_tagWhiteList internalAccess])
  {
    self->_pollingConfig = 15;
    if (tags >= 0x20)
    {
      self->_skipMifareClassification = 1;
    }

    ecpPayload = self->_ecpPayload;
    if (self->_pollingProfile == 4)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v57 = NFLogGetLogger();
      v58 = v57;
      if (ecpPayload)
      {
        if (v57)
        {
          v59 = object_getClass(self);
          v60 = class_isMetaClass(v59);
          v61 = object_getClassName(self);
          v125 = sel_getName(a2);
          v62 = 45;
          if (v60)
          {
            v62 = 43;
          }

          v58(6, "%c[%{public}s %{public}s]:%i Can't use ECP and non ecp profile", v62, v61, v125, 1309);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v63 = NFSharedLogGetLogger();
        v38 = completionCopy;
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v64 = object_getClass(self);
          if (class_isMetaClass(v64))
          {
            v65 = 43;
          }

          else
          {
            v65 = 45;
          }

          v66 = object_getClassName(self);
          v67 = sel_getName(a2);
          *buf = 67109890;
          v151 = v65;
          v152 = 2082;
          v153 = v66;
          v154 = 2082;
          v155 = v67;
          v156 = 1024;
          v157 = 1309;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Can't use ECP and non ecp profile", buf, 0x22u);
        }

        v43 = [NSError alloc];
        v44 = [NSString stringWithUTF8String:"nfcd"];
        v146 = NSLocalizedDescriptionKey;
        v45 = [NSString stringWithUTF8String:"Invalid Parameter"];
        v147 = v45;
        v46 = &v147;
        v47 = &v146;
        goto LABEL_21;
      }

      if (v57)
      {
        v84 = object_getClass(self);
        v85 = class_isMetaClass(v84);
        v86 = object_getClassName(self);
        v127 = sel_getName(a2);
        v87 = 45;
        if (v85)
        {
          v87 = 43;
        }

        v58(6, "%c[%{public}s %{public}s]:%i Using non ecp polling", v87, v86, v127, 1313);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v88 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        v89 = object_getClass(self);
        if (class_isMetaClass(v89))
        {
          v90 = 43;
        }

        else
        {
          v90 = 45;
        }

        v91 = object_getClassName(self);
        v92 = sel_getName(a2);
        *buf = 67109890;
        v151 = v90;
        v152 = 2082;
        v153 = v91;
        v154 = 2082;
        v155 = v92;
        v156 = 1024;
        v157 = 1313;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Using non ecp polling", buf, 0x22u);
      }

      pollingProfile = self->_pollingProfile;
      sub_1001E0E20(self->_driverWrapper);
    }

    else if (ecpPayload)
    {
      self->_pollingConfig = 31;
      v69 = 1;
LABEL_94:
      v70 = 0;
      self->_sessionConfig = config | 1;
      goto LABEL_95;
    }

    v69 = 0;
    goto LABEL_94;
  }

  if (![(_NFReaderSession *)self _isCoreNFCSession])
  {
    v69 = 0;
    v70 = 0;
    goto LABEL_95;
  }

  if ((tags & 4) != 0 && ((config & 0x20) != 0 && ([(NFServiceWhitelistChecker *)self->_tagWhiteList nfcISO15693ReaderAccess]& 1) != 0 || [(NFServiceWhitelistChecker *)self->_tagWhiteList nfcTagReaderAccess]))
  {
    self->_pollingConfig |= 8u;
  }

  if ((config & 0x400) != 0)
  {
    nfcTagReaderPACEPollingAllow = [(NFServiceWhitelistChecker *)self->_tagWhiteList nfcTagReaderPACEPollingAllow];
    if ((tags & 8) == 0)
    {
      goto LABEL_53;
    }

LABEL_51:
    if (([(NFServiceWhitelistChecker *)self->_tagWhiteList nfcTagReaderAccess]& nfcTagReaderPACEPollingAllow) == 1)
    {
      self->_pollingConfig |= 3u;
    }

    goto LABEL_53;
  }

  nfcTagReaderPACEPollingAllow = 1;
  if ((tags & 8) != 0)
  {
    goto LABEL_51;
  }

LABEL_53:
  if ((tags & 0x10) != 0 && [(NFServiceWhitelistChecker *)self->_tagWhiteList nfcTagReaderAccess])
  {
    if (![(NSMutableArray *)self->_feliCaSystemCodeList count])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v111 = NFLogGetLogger();
      if (v111)
      {
        v112 = v111;
        v113 = object_getClass(self);
        v114 = class_isMetaClass(v113);
        v115 = object_getClassName(self);
        v129 = sel_getName(a2);
        v116 = 45;
        if (v114)
        {
          v116 = 43;
        }

        v112(6, "%c[%{public}s %{public}s]:%i com.apple.developer.nfc.readersession.felica.systemcodes must contain at least 1 valid entry", v116, v115, v129, 1342);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v117 = NFSharedLogGetLogger();
      v38 = completionCopy;
      if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
      {
        v118 = object_getClass(self);
        if (class_isMetaClass(v118))
        {
          v119 = 43;
        }

        else
        {
          v119 = 45;
        }

        v120 = object_getClassName(self);
        v121 = sel_getName(a2);
        *buf = 67109890;
        v151 = v119;
        v152 = 2082;
        v153 = v120;
        v154 = 2082;
        v155 = v121;
        v156 = 1024;
        v157 = 1342;
        _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i com.apple.developer.nfc.readersession.felica.systemcodes must contain at least 1 valid entry", buf, 0x22u);
      }

      v107 = [NSError alloc];
      v44 = [NSString stringWithUTF8String:"nfcd"];
      v144 = NSLocalizedDescriptionKey;
      v45 = [NSString stringWithUTF8String:"Not entitled"];
      v145 = v45;
      v108 = &v145;
      v109 = &v144;
      goto LABEL_108;
    }

    self->_pollingConfig |= 4u;
  }

  self->_sessionConfig = config;
  [(_NFReaderSession *)self _updateReaderSettingsBasedOnConfig:tags];
  v71 = (tags & 8) != 0 || tags == 1;
  if (v71 && sessionType != 5)
  {
    self->_pollingConfig |= 0x10u;
  }

  v70 = 0;
  v72 = 4 * (sessionType == 5);
  if ((tags & 8) != 0 && sessionType != 5)
  {
    if ((self->_sessionConfig & 8) != 0 && (([(NFServiceWhitelistChecker *)self->_tagWhiteList internalAccess]& 1) != 0 || [(NFServiceWhitelistChecker *)self->_tagWhiteList nfcVASReaderAccess]))
    {
      self->_pollingConfig |= 0x10u;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v73 = NFLogGetLogger();
      if (v73)
      {
        v74 = v73;
        v75 = object_getClass(self);
        v76 = class_isMetaClass(v75);
        v77 = object_getClassName(self);
        v126 = sel_getName(a2);
        v78 = 45;
        if (v76)
        {
          v78 = 43;
        }

        v74(6, "%c[%{public}s %{public}s]:%i Enabling VAS polling", v78, v77, v126, 1369);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v79 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        v80 = object_getClass(self);
        if (class_isMetaClass(v80))
        {
          v81 = 43;
        }

        else
        {
          v81 = 45;
        }

        v82 = object_getClassName(self);
        v83 = sel_getName(a2);
        *buf = 67109890;
        v151 = v81;
        v152 = 2082;
        v153 = v82;
        v154 = 2082;
        v155 = v83;
        v156 = 1024;
        v157 = 1369;
        _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Enabling VAS polling", buf, 0x22u);
      }

      v72 = 0;
      v70 = 1;
    }

    else
    {
      v72 = 0;
      v70 = 0;
    }
  }

  self->_pollingProfile = v72;
  sub_1001E0E20(self->_driverWrapper);
  v69 = 0;
LABEL_95:
  if (!self->_pollingConfig)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v96 = NFLogGetLogger();
    if (v96)
    {
      v97 = v96;
      v98 = object_getClass(self);
      v99 = class_isMetaClass(v98);
      v100 = object_getClassName(self);
      v128 = sel_getName(a2);
      v101 = 45;
      if (v99)
      {
        v101 = 43;
      }

      v97(6, "%c[%{public}s %{public}s]:%i Missing required entitlements", v101, v100, v128, 1387);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v102 = NFSharedLogGetLogger();
    v38 = completionCopy;
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
    {
      v103 = object_getClass(self);
      if (class_isMetaClass(v103))
      {
        v104 = 43;
      }

      else
      {
        v104 = 45;
      }

      v105 = object_getClassName(self);
      v106 = sel_getName(a2);
      *buf = 67109890;
      v151 = v104;
      v152 = 2082;
      v153 = v105;
      v154 = 2082;
      v155 = v106;
      v156 = 1024;
      v157 = 1387;
      _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Missing required entitlements", buf, 0x22u);
    }

    v107 = [NSError alloc];
    v44 = [NSString stringWithUTF8String:"nfcd"];
    v142 = NSLocalizedDescriptionKey;
    v45 = [NSString stringWithUTF8String:"Not entitled"];
    v143 = v45;
    v108 = &v143;
    v109 = &v142;
LABEL_108:
    v48 = [NSDictionary dictionaryWithObjects:v108 forKeys:v109 count:1];
    v49 = v107;
    v50 = v44;
    v51 = 32;
    goto LABEL_22;
  }

  v138[0] = _NSConcreteStackBlock;
  v138[1] = 3221225472;
  v138[2] = sub_1001BD450;
  v138[3] = &unk_10031B620;
  v138[4] = self;
  v138[5] = a2;
  v139 = v54;
  v140 = v70;
  v141 = v69;
  v138[6] = tags;
  v138[7] = config;
  v94 = objc_retainBlock(v138);
  v95 = v94;
  if (self->_uiService)
  {
    v134[0] = _NSConcreteStackBlock;
    v134[1] = 3221225472;
    v134[2] = sub_1001BD9F4;
    v134[3] = &unk_100316548;
    v134[4] = self;
    v137 = a2;
    v38 = completionCopy;
    v135 = completionCopy;
    v136 = v95;
    [(_NFReaderSession *)self activateUIControllerWithCompletion:v134];
  }

  else
  {
    v110 = (v94[2])(v94);
    v38 = completionCopy;
    (*(completionCopy + 2))(completionCopy, v110);
  }

LABEL_111:
}

- (void)_sync_setECPPayload:(id)payload completion:(id)completion
{
  payloadCopy = payload;
  completionCopy = completion;
  if ([payloadCopy length])
  {
    objc_storeStrong(&self->_ecpPayload, payload);
    self->_isConnectionHandover = [(_NFReaderSession *)self _isPayloadConnectionHandover:payloadCopy];
  }

  else
  {
    ecpPayload = self->_ecpPayload;
    self->_ecpPayload = 0;

    self->_isConnectionHandover = 0;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v11 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    if (self->_ecpPayload)
    {
      v16 = "VAS ECP set";
    }

    else
    {
      v16 = "VAS ECP not set";
    }

    v17 = 45;
    if (isMetaClass)
    {
      v17 = 43;
    }

    v11(6, "%c[%{public}s %{public}s]:%i %s", v17, ClassName, Name, 1468, v16);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v18 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = object_getClass(self);
    if (class_isMetaClass(v19))
    {
      v20 = 43;
    }

    else
    {
      v20 = 45;
    }

    v21 = object_getClassName(self);
    v22 = sel_getName(a2);
    v23 = "VAS ECP not set";
    if (self->_ecpPayload)
    {
      v23 = "VAS ECP set";
    }

    *buf = 67110146;
    v26 = v20;
    v27 = 2082;
    v28 = v21;
    v29 = 2082;
    v30 = v22;
    v31 = 1024;
    v32 = 1468;
    v33 = 2080;
    v34 = v23;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %s", buf, 0x2Cu);
  }

  completionCopy[2](completionCopy, 0);
}

- (void)setECPPayload:(id)payload completion:(id)completion
{
  payloadCopy = payload;
  completionCopy = completion;
  v16.receiver = self;
  v16.super_class = _NFReaderSession;
  workQueue = [(_NFSession *)&v16 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001BDFC8;
  v12[3] = &unk_1003165E8;
  v14 = completionCopy;
  v15 = a2;
  v12[4] = self;
  v13 = payloadCopy;
  v10 = payloadCopy;
  v11 = completionCopy;
  dispatch_async(workQueue, v12);
}

- (BOOL)_isPayloadConnectionHandover:(id)handover
{
  bytes = [handover bytes];
  v4 = *bytes == 106 && bytes[1] == 2;
  v5 = bytes[3] == 5 && !bytes[4] && bytes[5] == 1;
  return v4 && v5;
}

- (void)startPollingForTags:(unint64_t)tags sessionConfig:(unint64_t)config completion:(id)completion
{
  completionCopy = completion;
  v17.receiver = self;
  v17.super_class = _NFReaderSession;
  workQueue = [(_NFSession *)&v17 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BE408;
  block[3] = &unk_10031B648;
  block[4] = self;
  v13 = completionCopy;
  v14 = a2;
  tagsCopy = tags;
  configCopy = config;
  v11 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)skipMifareClassificationWithCompletion:(id)completion
{
  completionCopy = completion;
  v11.receiver = self;
  v11.super_class = _NFReaderSession;
  workQueue = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BE7C8;
  block[3] = &unk_100316050;
  v9 = completionCopy;
  v10 = a2;
  block[4] = self;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)startPollingWithConfig:(id)config completion:(id)completion
{
  configCopy = config;
  completionCopy = completion;
  if ([configCopy type] != 2)
  {
    v22 = 0;
    goto LABEL_13;
  }

  v9 = configCopy;
  appletIdentifiers = [v9 appletIdentifiers];
  v11 = [appletIdentifiers count];

  if (v11)
  {
    v62 = completionCopy;
    v12 = [NSMutableArray alloc];
    appletIdentifiers2 = [v9 appletIdentifiers];
    v14 = [v12 initWithCapacity:{objc_msgSend(appletIdentifiers2, "count")}];

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    appletIdentifiers3 = [v9 appletIdentifiers];
    v16 = [appletIdentifiers3 countByEnumeratingWithState:&v69 objects:v77 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v70;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v70 != v18)
          {
            objc_enumerationMutation(appletIdentifiers3);
          }

          nF_asHexString = [*(*(&v69 + 1) + 8 * i) NF_asHexString];
          [v14 addObject:nF_asHexString];
        }

        v17 = [appletIdentifiers3 countByEnumeratingWithState:&v69 objects:v77 count:16];
      }

      while (v17);
    }

    v75 = @"com.apple.developer.nfc.readersession.iso7816.select-identifiers";
    v76 = v14;
    v21 = [NSDictionary dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    v22 = [(_NFReaderSession *)self _generate7816AidList:v21];

    if ([v22 count])
    {

      completionCopy = v62;
LABEL_13:
      v68.receiver = self;
      v68.super_class = _NFReaderSession;
      workQueue = [(_NFSession *)&v68 workQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001BF360;
      block[3] = &unk_1003165C0;
      block[4] = self;
      v67 = a2;
      v66 = completionCopy;
      v64 = configCopy;
      v65 = v22;
      v9 = v22;
      dispatch_async(workQueue, block);

      goto LABEL_34;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v41 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v45 = 45;
      if (isMetaClass)
      {
        v45 = 43;
      }

      v41(3, "%c[%{public}s %{public}s]:%i No valid AIDs input found", v45, ClassName, Name, 1544);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v46 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = object_getClass(self);
      if (class_isMetaClass(v47))
      {
        v48 = 43;
      }

      else
      {
        v48 = 45;
      }

      v49 = object_getClassName(self);
      v50 = sel_getName(a2);
      *buf = 67109890;
      v81 = v48;
      v82 = 2082;
      v83 = v49;
      v84 = 2082;
      v85 = v50;
      v86 = 1024;
      v87 = 1544;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No valid AIDs input found", buf, 0x22u);
    }

    v51 = [NSError alloc];
    v52 = [NSString stringWithUTF8String:"nfcd"];
    v73[0] = NSLocalizedDescriptionKey;
    v61 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v74[0] = v61;
    v74[1] = &off_100333A98;
    v73[1] = @"Line";
    v73[2] = @"Method";
    v53 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v74[2] = v53;
    v73[3] = NSDebugDescriptionErrorKey;
    1545 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 1545];
    v74[3] = 1545;
    v55 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:4];
    v56 = v51;
    v57 = v52;
    v58 = [v56 initWithDomain:v52 code:10 userInfo:v55];
    v62[2](v62, v58);

    completionCopy = v62;
    v9 = v22;
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFLogGetLogger();
    if (v24)
    {
      v25 = v24;
      v26 = object_getClass(self);
      v27 = class_isMetaClass(v26);
      v28 = object_getClassName(self);
      v59 = sel_getName(a2);
      v29 = 45;
      if (v27)
      {
        v29 = 43;
      }

      v25(3, "%c[%{public}s %{public}s]:%i Missing required AIDs", v29, v28, v59, 1531);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v30 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = object_getClass(self);
      if (class_isMetaClass(v31))
      {
        v32 = 43;
      }

      else
      {
        v32 = 45;
      }

      *buf = 67109890;
      v81 = v32;
      v82 = 2082;
      v83 = object_getClassName(self);
      v84 = 2082;
      v85 = sel_getName(a2);
      v86 = 1024;
      v87 = 1531;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing required AIDs", buf, 0x22u);
    }

    v33 = [NSError alloc];
    v34 = [NSString stringWithUTF8String:"nfcd"];
    v78[0] = NSLocalizedDescriptionKey;
    v35 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v79[0] = v35;
    v79[1] = &off_100333A80;
    v78[1] = @"Line";
    v78[2] = @"Method";
    v36 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v79[2] = v36;
    v78[3] = NSDebugDescriptionErrorKey;
    1532 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 1532];
    v79[3] = 1532;
    v38 = [NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:4];
    v39 = [v33 initWithDomain:v34 code:10 userInfo:v38];
    completionCopy[2](completionCopy, v39);
  }

LABEL_34:
}

- (void)_sync_startPollingWithConfig:(id)config validatedAIDList:(id)list completion:(id)completion
{
  configCopy = config;
  obj = list;
  listCopy = list;
  completionCopy = completion;
  v10 = NFIsInternalBuild();
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  v12 = Logger;
  sel = a2;
  if (v10)
  {
    if (Logger)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      clientName = [(_NFXPCSession *)self clientName];
      connection = [(_NFXPCSession *)self connection];
      processIdentifier = [connection processIdentifier];
      sessionUID = [(_NFSession *)self sessionUID];
      v213 = processIdentifier;
      a2 = sel;
      v21 = 43;
      if (!isMetaClass)
      {
        v21 = 45;
      }

      v12(6, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@, config=%{public}@", v21, ClassName, Name, 1568, clientName, v213, sessionUID, configCopy, obj);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = object_getClass(self);
      if (class_isMetaClass(v23))
      {
        v24 = 43;
      }

      else
      {
        v24 = 45;
      }

      v25 = object_getClassName(self);
      v26 = sel_getName(a2);
      clientName2 = [(_NFXPCSession *)self clientName];
      connection2 = [(_NFXPCSession *)self connection];
      processIdentifier2 = [connection2 processIdentifier];
      sessionUID2 = [(_NFSession *)self sessionUID];
      *buf = 67110914;
      v235 = v24;
      v236 = 2082;
      v237 = v25;
      v238 = 2082;
      v239 = v26;
      v240 = 1024;
      v241 = 1568;
      v242 = 2114;
      v243 = clientName2;
      v244 = 1024;
      v245 = processIdentifier2;
      v246 = 2114;
      v247 = sessionUID2;
      v248 = 2114;
      v249 = configCopy;
      v31 = "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@, config=%{public}@";
      v32 = v22;
      v33 = 70;
LABEL_20:
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
    }
  }

  else
  {
    if (Logger)
    {
      v34 = object_getClass(self);
      v35 = class_isMetaClass(v34);
      v36 = object_getClassName(self);
      v37 = sel_getName(a2);
      clientName3 = [(_NFXPCSession *)self clientName];
      connection3 = [(_NFXPCSession *)self connection];
      processIdentifier3 = [connection3 processIdentifier];
      sessionUID3 = [(_NFSession *)self sessionUID];
      v42 = 43;
      if (!v35)
      {
        v42 = 45;
      }

      v12(6, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", v42, v36, v37, 1571, clientName3, processIdentifier3, sessionUID3);

      a2 = sel;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v43 = object_getClass(self);
      if (class_isMetaClass(v43))
      {
        v44 = 43;
      }

      else
      {
        v44 = 45;
      }

      v45 = object_getClassName(self);
      v46 = sel_getName(a2);
      clientName2 = [(_NFXPCSession *)self clientName];
      connection2 = [(_NFXPCSession *)self connection];
      processIdentifier4 = [connection2 processIdentifier];
      sessionUID2 = [(_NFSession *)self sessionUID];
      *buf = 67110658;
      v235 = v44;
      v236 = 2082;
      v237 = v45;
      v238 = 2082;
      v239 = v46;
      v240 = 1024;
      v241 = 1571;
      v242 = 2114;
      v243 = clientName2;
      v244 = 1024;
      v245 = processIdentifier4;
      v246 = 2114;
      v247 = sessionUID2;
      v31 = "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@";
      v32 = v22;
      v33 = 60;
      goto LABEL_20;
    }
  }

  if (([(NFServiceWhitelistChecker *)self->_tagWhiteList internalAccess]& 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v51 = NFLogGetLogger();
    v48 = configCopy;
    if (v51)
    {
      v52 = v51;
      v53 = object_getClass(self);
      v54 = class_isMetaClass(v53);
      v55 = object_getClassName(self);
      v204 = sel_getName(sel);
      v56 = 45;
      if (v54)
      {
        v56 = 43;
      }

      v52(6, "%c[%{public}s %{public}s]:%i Missing required entitlements", v56, v55, v204, 1575);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v57 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = object_getClass(self);
      if (class_isMetaClass(v58))
      {
        v59 = 43;
      }

      else
      {
        v59 = 45;
      }

      v60 = object_getClassName(self);
      v61 = sel_getName(sel);
      *buf = 67109890;
      v235 = v59;
      v236 = 2082;
      v237 = v60;
      v238 = 2082;
      v239 = v61;
      v240 = 1024;
      v241 = 1575;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Missing required entitlements", buf, 0x22u);
    }

    v62 = [NSError alloc];
    v50 = [NSString stringWithUTF8String:"nfcd"];
    v232 = NSLocalizedDescriptionKey;
    v63 = [NSString stringWithUTF8String:"Not entitled"];
    v233 = v63;
    v64 = [NSDictionary dictionaryWithObjects:&v233 forKeys:&v232 count:1];
    v65 = [v62 initWithDomain:v50 code:32 userInfo:v64];
    v66 = completionCopy;
    (*(completionCopy + 2))(completionCopy, v65);

    goto LABEL_77;
  }

  objc_storeStrong(&self->_sessionPollConfig, config);
  v48 = configCopy;
  v49 = [configCopy ecp];
  if (v49)
  {
    v50 = v49;
    if ([(NSData *)v49 length])
    {
      self->_isConnectionHandover = [(_NFReaderSession *)self _isPayloadConnectionHandover:v50];
    }

    else
    {

      v50 = 0;
      self->_isConnectionHandover = 0;
    }
  }

  else
  {
    ecpPayload = self->_ecpPayload;
    if (ecpPayload)
    {
      v50 = ecpPayload;
      [(NFReaderSessionPollConfig *)self->_sessionPollConfig setEcp:self->_ecpPayload];
    }

    else
    {
      v50 = 0;
    }
  }

  if (([configCopy skipMifareClassify] & 1) != 0 || !self->_skipMifareClassification)
  {
    self->_skipMifareClassification = [configCopy skipMifareClassify];
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v68 = NFLogGetLogger();
    if (v68)
    {
      v69 = v68;
      v70 = object_getClass(self);
      v71 = class_isMetaClass(v70);
      v72 = object_getClassName(self);
      v205 = sel_getName(sel);
      v73 = 45;
      if (v71)
      {
        v73 = 43;
      }

      v69(5, "%c[%{public}s %{public}s]:%i Skipping MIFARE classification due to previous override", v73, v72, v205, 1597);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v74 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      v75 = object_getClass(self);
      if (class_isMetaClass(v75))
      {
        v76 = 43;
      }

      else
      {
        v76 = 45;
      }

      v77 = object_getClassName(self);
      v78 = sel_getName(sel);
      *buf = 67109890;
      v235 = v76;
      v236 = 2082;
      v237 = v77;
      v238 = 2082;
      v239 = v78;
      v240 = 1024;
      v241 = 1597;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Skipping MIFARE classification due to previous override", buf, 0x22u);
    }
  }

  if ([configCopy fieldDetect])
  {
    v79 = 2;
  }

  else
  {
    v79 = 0;
  }

  typeFSystemCode = [configCopy typeFSystemCode];

  if (typeFSystemCode)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v81 = NFLogGetLogger();
    if (v81)
    {
      v82 = v81;
      v83 = object_getClass(self);
      v84 = class_isMetaClass(v83);
      v85 = object_getClassName(self);
      v86 = sel_getName(sel);
      typeFSystemCode2 = [configCopy typeFSystemCode];
      unsignedShortValue = [typeFSystemCode2 unsignedShortValue];
      v88 = 45;
      if (v84)
      {
        v88 = 43;
      }

      v82(6, "%c[%{public}s %{public}s]:%i Setting system code to 0x%04X", v88, v85, v86, 1605, unsignedShortValue);

      v48 = configCopy;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v89 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      v90 = object_getClass(self);
      if (class_isMetaClass(v90))
      {
        v91 = 43;
      }

      else
      {
        v91 = 45;
      }

      v92 = object_getClassName(self);
      v93 = sel_getName(sel);
      typeFSystemCode3 = [configCopy typeFSystemCode];
      unsignedShortValue2 = [typeFSystemCode3 unsignedShortValue];
      *buf = 67110146;
      v235 = v91;
      v48 = configCopy;
      v236 = 2082;
      v237 = v92;
      v238 = 2082;
      v239 = v93;
      v240 = 1024;
      v241 = 1605;
      v242 = 1024;
      LODWORD(v243) = unsignedShortValue2;
      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Setting system code to 0x%04X", buf, 0x28u);
    }

    v96 = +[_NFHardwareManager sharedHardwareManager];
    v97 = sub_10004C224(NFRoutingConfig, 0);
    v98 = [v96 setRoutingConfig:v97];

    driverWrapper = self->_driverWrapper;
    typeFSystemCode4 = [v48 typeFSystemCode];
    [typeFSystemCode4 unsignedShortValue];
    self->_didSetFelicaSystemCode = sub_1001E10D8(driverWrapper);

    if (!self->_didSetFelicaSystemCode)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v101 = NFLogGetLogger();
      if (v101)
      {
        v102 = v101;
        v103 = object_getClass(self);
        v104 = class_isMetaClass(v103);
        v105 = object_getClassName(self);
        v206 = sel_getName(sel);
        v106 = 45;
        if (v104)
        {
          v106 = 43;
        }

        v102(3, "%c[%{public}s %{public}s]:%i Unable to set system code", v106, v105, v206, 1610);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v107 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        v108 = object_getClass(self);
        if (class_isMetaClass(v108))
        {
          v109 = 43;
        }

        else
        {
          v109 = 45;
        }

        v110 = object_getClassName(self);
        v111 = sel_getName(sel);
        *buf = 67109890;
        v235 = v109;
        v236 = 2082;
        v237 = v110;
        v238 = 2082;
        v239 = v111;
        v240 = 1024;
        v241 = 1610;
        _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unable to set system code", buf, 0x22u);
      }

      v112 = [NSError alloc];
      v113 = [NSString stringWithUTF8String:"nfcd"];
      v230 = NSLocalizedDescriptionKey;
      v114 = [NSString stringWithUTF8String:"Unexpected Result"];
      v231 = v114;
      v115 = [NSDictionary dictionaryWithObjects:&v231 forKeys:&v230 count:1];
      v116 = v112;
      v117 = v113;
      v118 = 13;
LABEL_76:
      v119 = [v116 initWithDomain:v117 code:v118 userInfo:v115];
      (*(completionCopy + 2))(completionCopy, v119);

      v66 = completionCopy;
LABEL_77:
      v120 = listCopy;
      goto LABEL_156;
    }
  }

  else
  {
    self->_didSetFelicaSystemCode = 0;
  }

  if ([v48 type] == 2)
  {
    appletIdentifiers = [v48 appletIdentifiers];

    if (appletIdentifiers)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v122 = NFLogGetLogger();
      if (v122)
      {
        v123 = v122;
        v124 = object_getClass(self);
        v125 = class_isMetaClass(v124);
        v126 = object_getClassName(self);
        v127 = sel_getName(sel);
        appletIdentifiers2 = [v48 appletIdentifiers];
        v129 = 45;
        if (v125)
        {
          v129 = 43;
        }

        v123(6, "%c[%{public}s %{public}s]:%i aidList=%{public}@", v129, v126, v127, 1619, appletIdentifiers2);

        v48 = configCopy;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v130 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
      {
        v131 = object_getClass(self);
        if (class_isMetaClass(v131))
        {
          v132 = 43;
        }

        else
        {
          v132 = 45;
        }

        v133 = object_getClassName(self);
        v134 = sel_getName(sel);
        appletIdentifiers3 = [configCopy appletIdentifiers];
        *buf = 67110146;
        v235 = v132;
        v48 = configCopy;
        v236 = 2082;
        v237 = v133;
        v238 = 2082;
        v239 = v134;
        v240 = 1024;
        v241 = 1619;
        v242 = 2114;
        v243 = appletIdentifiers3;
        _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i aidList=%{public}@", buf, 0x2Cu);
      }
    }
  }

  v136 = 1;
  self->_pollOption = 1;
  if ([v48 type] != 1)
  {
    objc_storeStrong(&self->_iso7816AppList, obj);
    v136 = 0;
  }

  self->_sessionConfig = v136;
  WeakRetained = objc_loadWeakRetained(&self->_powerConsumptionReporter);
  sub_1001B0320(WeakRetained, self);

  v138 = +[_NFHardwareManager sharedHardwareManager];
  [v138 notifyReaderModeActivityEnd];

  self->_pollingConfig = 0;
  if ([v48 technology])
  {
    self->_pollingConfig |= 1u;
  }

  if (([v48 technology] & 2) != 0)
  {
    self->_pollingConfig |= 2u;
  }

  if (([v48 technology] & 4) != 0)
  {
    self->_pollingConfig |= 4u;
  }

  if (([v48 technology] & 0x10) != 0)
  {
    self->_pollingConfig |= 8u;
  }

  if (v50)
  {
    self->_pollingConfig |= 0x10u;
  }

  if ([(NFServiceWhitelistChecker *)self->_tagWhiteList pollingProfileUpdate])
  {
    pollingProfile = self->_pollingProfile;
    if (pollingProfile > 1)
    {
      if (pollingProfile == 2)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v163 = NFLogGetLogger();
        if (v163)
        {
          v164 = v163;
          v165 = object_getClass(self);
          v166 = class_isMetaClass(v165);
          v167 = object_getClassName(self);
          v209 = sel_getName(sel);
          v168 = 45;
          if (v166)
          {
            v168 = 43;
          }

          v164(6, "%c[%{public}s %{public}s]:%i Forcing TRANSAC_B", v168, v167, v209, 1655);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v169 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
        {
          v170 = object_getClass(self);
          if (class_isMetaClass(v170))
          {
            v171 = 43;
          }

          else
          {
            v171 = 45;
          }

          v172 = object_getClassName(self);
          v173 = sel_getName(sel);
          *buf = 67109890;
          v235 = v171;
          v236 = 2082;
          v237 = v172;
          v238 = 2082;
          v239 = v173;
          v240 = 1024;
          v241 = 1655;
          _os_log_impl(&_mh_execute_header, v169, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Forcing TRANSAC_B", buf, 0x22u);
        }

        v140 = 2;
        self->_pollingConfig = 2;
        goto LABEL_141;
      }

      if (pollingProfile == 3)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v141 = NFLogGetLogger();
        if (v141)
        {
          v142 = v141;
          v143 = object_getClass(self);
          v144 = class_isMetaClass(v143);
          v145 = object_getClassName(self);
          v207 = sel_getName(sel);
          v146 = 45;
          if (v144)
          {
            v146 = 43;
          }

          v142(6, "%c[%{public}s %{public}s]:%i Forcing TRANSAC_A", v146, v145, v207, 1659);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v147 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
        {
          v148 = object_getClass(self);
          if (class_isMetaClass(v148))
          {
            v149 = 43;
          }

          else
          {
            v149 = 45;
          }

          v150 = object_getClassName(self);
          v151 = sel_getName(sel);
          *buf = 67109890;
          v235 = v149;
          v236 = 2082;
          v237 = v150;
          v238 = 2082;
          v239 = v151;
          v240 = 1024;
          v241 = 1659;
          _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Forcing TRANSAC_A", buf, 0x22u);
        }

        v140 = 3;
        goto LABEL_141;
      }
    }

    else
    {
      if (!pollingProfile)
      {
LABEL_151:
        v184 = +[_NFHardwareManager sharedHardwareManager];
        v185 = sub_10004C224(NFRoutingConfig, 0);
        v186 = [v184 setRoutingConfig:v185];

        sub_1001E0E20(self->_driverWrapper);
        goto LABEL_152;
      }

      if (pollingProfile == 1)
      {
        if ((self->_pollingConfig & 0x13) == 0)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v191 = NFLogGetLogger();
          if (v191)
          {
            v192 = v191;
            v193 = object_getClass(self);
            v194 = class_isMetaClass(v193);
            v195 = object_getClassName(self);
            v211 = sel_getName(sel);
            v196 = 45;
            if (v194)
            {
              v196 = 43;
            }

            v192(3, "%c[%{public}s %{public}s]:%i Invalid technology for the specific polling profile", v196, v195, v211, 1649);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v197 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v197, OS_LOG_TYPE_ERROR))
          {
            v198 = object_getClass(self);
            if (class_isMetaClass(v198))
            {
              v199 = 43;
            }

            else
            {
              v199 = 45;
            }

            v200 = object_getClassName(self);
            v201 = sel_getName(sel);
            *buf = 67109890;
            v235 = v199;
            v236 = 2082;
            v237 = v200;
            v238 = 2082;
            v239 = v201;
            v240 = 1024;
            v241 = 1649;
            _os_log_impl(&_mh_execute_header, v197, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid technology for the specific polling profile", buf, 0x22u);
          }

          v202 = [NSError alloc];
          v113 = [NSString stringWithUTF8String:"nfcd"];
          v228 = NSLocalizedDescriptionKey;
          v114 = [NSString stringWithUTF8String:"Invalid Parameter"];
          v229 = v114;
          v115 = [NSDictionary dictionaryWithObjects:&v229 forKeys:&v228 count:1];
          v116 = v202;
          v117 = v113;
          v118 = 10;
          goto LABEL_76;
        }

        v140 = 1;
        goto LABEL_141;
      }
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v152 = NFLogGetLogger();
    if (v152)
    {
      v153 = v152;
      v154 = object_getClass(self);
      v155 = class_isMetaClass(v154);
      v156 = object_getClassName(self);
      v208 = sel_getName(sel);
      v157 = 45;
      if (v155)
      {
        v157 = 43;
      }

      v153(6, "%c[%{public}s %{public}s]:%i Forcing No ECP", v157, v156, v208, 1662);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v158 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
    {
      v159 = object_getClass(self);
      if (class_isMetaClass(v159))
      {
        v160 = 43;
      }

      else
      {
        v160 = 45;
      }

      v161 = object_getClassName(self);
      v162 = sel_getName(sel);
      *buf = 67109890;
      v235 = v160;
      v236 = 2082;
      v237 = v161;
      v238 = 2082;
      v239 = v162;
      v240 = 1024;
      v241 = 1662;
      _os_log_impl(&_mh_execute_header, v158, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Forcing No ECP", buf, 0x22u);
    }

    v140 = 4;
LABEL_141:
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v174 = NFLogGetLogger();
    if (v174)
    {
      v175 = v174;
      v176 = object_getClass(self);
      v177 = class_isMetaClass(v176);
      v203 = object_getClassName(self);
      v210 = sel_getName(sel);
      v178 = 45;
      if (v177)
      {
        v178 = 43;
      }

      v175(6, "%c[%{public}s %{public}s]:%i pollingProfile=%u", v178, v203, v210, 1666, v140);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v179 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
    {
      v180 = object_getClass(self);
      if (class_isMetaClass(v180))
      {
        v181 = 43;
      }

      else
      {
        v181 = 45;
      }

      v182 = object_getClassName(self);
      v183 = sel_getName(sel);
      *buf = 67110146;
      v235 = v181;
      v236 = 2082;
      v237 = v182;
      v238 = 2082;
      v239 = v183;
      v240 = 1024;
      v241 = 1666;
      v242 = 1024;
      LODWORD(v243) = v140;
      _os_log_impl(&_mh_execute_header, v179, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i pollingProfile=%u", buf, 0x28u);
    }

    goto LABEL_151;
  }

LABEL_152:
  v223[0] = _NSConcreteStackBlock;
  v223[1] = 3221225472;
  v223[2] = sub_1001C0D48;
  v223[3] = &unk_10031B670;
  v223[4] = self;
  v226 = sel;
  v224 = v48;
  v227 = v79;
  v50 = v50;
  v225 = v50;
  v187 = objc_retainBlock(v223);
  v188 = v187;
  if (self->_uiService)
  {
    v219[0] = _NSConcreteStackBlock;
    v219[1] = 3221225472;
    v219[2] = sub_1001C11F8;
    v219[3] = &unk_100316548;
    v219[4] = self;
    v222 = sel;
    v220 = completionCopy;
    v221 = v188;
    selfCopy = self;
    v66 = completionCopy;
    [(_NFReaderSession *)selfCopy activateUIControllerWithCompletion:v219];
  }

  else
  {
    v190 = (v187[2])(v187);
    v66 = completionCopy;
    (*(completionCopy + 2))(completionCopy, v190);
  }

  v120 = listCopy;

LABEL_156:
}

- (void)startPollingForNDEFMessagesWithSessionConfig:(unint64_t)config completion:(id)completion
{
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = _NFReaderSession;
  workQueue = [(_NFSession *)&v14 workQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001C1558;
  v10[3] = &unk_1003169E0;
  v10[4] = self;
  v11 = completionCopy;
  v12 = a2;
  configCopy = config;
  v9 = completionCopy;
  dispatch_async(workQueue, v10);
}

- (void)_sync_startPollingForNDEFMessagesWithSessionConfig:(unint64_t)config completion:(id)completion
{
  completionCopy = completion;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    [(_NFXPCSession *)self clientName];
    v13 = v12 = a2;
    connection = [(_NFXPCSession *)self connection];
    processIdentifier = [connection processIdentifier];
    sessionUID = [(_NFSession *)self sessionUID];
    v17 = 43;
    if (!isMetaClass)
    {
      v17 = 45;
    }

    v7(6, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", v17, ClassName, Name, 1730, v13, processIdentifier, sessionUID);

    a2 = v12;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v18 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = object_getClass(self);
    if (class_isMetaClass(v19))
    {
      v20 = 43;
    }

    else
    {
      v20 = 45;
    }

    v21 = object_getClassName(self);
    v22 = sel_getName(a2);
    [(_NFXPCSession *)self clientName];
    v23 = v47 = a2;
    connection2 = [(_NFXPCSession *)self connection];
    processIdentifier2 = [connection2 processIdentifier];
    sessionUID2 = [(_NFSession *)self sessionUID];
    *buf = 67110658;
    v58 = v20;
    v59 = 2082;
    v60 = v21;
    v61 = 2082;
    v62 = v22;
    v63 = 1024;
    v64 = 1730;
    v65 = 2114;
    v66 = v23;
    v67 = 1024;
    v68 = processIdentifier2;
    v69 = 2114;
    v70 = sessionUID2;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", buf, 0x3Cu);

    a2 = v47;
  }

  if (([(NFServiceWhitelistChecker *)self->_tagWhiteList nfcNDEFReaderAccess]& 1) != 0)
  {
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_1001C1DD4;
    v54[3] = &unk_10031B698;
    v54[4] = self;
    v54[5] = a2;
    v54[6] = config;
    v27 = objc_retainBlock(v54);
    if ([(_NFReaderSession *)self _isCoreNFCSession]&& self->_uiService)
    {
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_1001C233C;
      v50[3] = &unk_100316548;
      v50[4] = self;
      v53 = a2;
      v28 = completionCopy;
      v51 = completionCopy;
      v52 = v27;
      [(_NFReaderSession *)self activateUIControllerWithCompletion:v50];
    }

    else
    {
      v45 = (v27[2])(v27);
      v28 = completionCopy;
      (*(completionCopy + 2))(completionCopy, v45);
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v29 = NFLogGetLogger();
    if (v29)
    {
      v30 = v29;
      v31 = object_getClass(self);
      v32 = class_isMetaClass(v31);
      v33 = object_getClassName(self);
      v46 = sel_getName(a2);
      v34 = 45;
      if (v32)
      {
        v34 = 43;
      }

      v30(6, "%c[%{public}s %{public}s]:%i Missing required entitlements", v34, v33, v46, 1734);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v35 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = object_getClass(self);
      if (class_isMetaClass(v36))
      {
        v37 = 43;
      }

      else
      {
        v37 = 45;
      }

      v38 = object_getClassName(self);
      v39 = sel_getName(a2);
      *buf = 67109890;
      v58 = v37;
      v59 = 2082;
      v60 = v38;
      v61 = 2082;
      v62 = v39;
      v63 = 1024;
      v64 = 1734;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Missing required entitlements", buf, 0x22u);
    }

    v40 = [NSError alloc];
    v41 = [NSString stringWithUTF8String:"nfcd"];
    v55 = NSLocalizedDescriptionKey;
    v42 = [NSString stringWithUTF8String:"Not entitled"];
    v56 = v42;
    v43 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v44 = [v40 initWithDomain:v41 code:32 userInfo:v43];
    v28 = completionCopy;
    (*(completionCopy + 2))(completionCopy, v44);
  }
}

- (void)stopPollingWithCompletion:(id)completion
{
  completionCopy = completion;
  v11.receiver = self;
  v11.super_class = _NFReaderSession;
  workQueue = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C2690;
  block[3] = &unk_100316050;
  v9 = completionCopy;
  v10 = a2;
  block[4] = self;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)_sync_stopPolling:(id)polling
{
  pollingCopy = polling;
  v5 = sub_10024DC10();
  sub_10024EAA4(v5);

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    v10 = a2;
    Name = sel_getName(a2);
    clientName = [(_NFXPCSession *)self clientName];
    connection = [(_NFXPCSession *)self connection];
    processIdentifier = [connection processIdentifier];
    sessionUID = [(_NFSession *)self sessionUID];
    v51 = processIdentifier;
    a2 = v10;
    v16 = 43;
    if (!isMetaClass)
    {
      v16 = 45;
    }

    v7(6, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", v16, ClassName, Name, 1807, clientName, v51, sessionUID);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v17 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = object_getClass(self);
    if (class_isMetaClass(v18))
    {
      v19 = 43;
    }

    else
    {
      v19 = 45;
    }

    v20 = object_getClassName(self);
    v21 = sel_getName(a2);
    clientName2 = [(_NFXPCSession *)self clientName];
    connection2 = [(_NFXPCSession *)self connection];
    processIdentifier2 = [connection2 processIdentifier];
    sessionUID2 = [(_NFSession *)self sessionUID];
    *buf = 67110658;
    v57 = v19;
    v58 = 2082;
    v59 = v20;
    v60 = 2082;
    v61 = v21;
    v62 = 1024;
    v63 = 1807;
    v64 = 2114;
    v65 = clientName2;
    v66 = 1024;
    v67 = processIdentifier2;
    v68 = 2114;
    v69 = sessionUID2;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", buf, 0x3Cu);
  }

  currentTag = self->_currentTag;
  self->_currentTag = 0;

  sessionPollConfig = self->_sessionPollConfig;
  self->_sessionPollConfig = 0;

  [(NSMutableArray *)self->_nonstandard7816TagsFound removeAllObjects];
  v28 = +[_NFHardwareManager sharedHardwareManager];
  v29 = sub_10004C144();
  v30 = [v28 setRoutingConfig:v29];

  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v54 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Stack Error"];
    v55 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v35 = [v31 initWithDomain:v32 code:15 userInfo:v34];
    pollingCopy[2](pollingCopy, v35);
  }

  else
  {
    pollingCopy[2](pollingCopy, 0);
    v36 = NFLogGetLogger();
    if (v36)
    {
      v37 = v36;
      v38 = object_getClass(self);
      v39 = class_isMetaClass(v38);
      v40 = object_getClassName(self);
      v41 = sel_getName(a2);
      clientName3 = [(_NFXPCSession *)self clientName];
      v43 = 45;
      if (v39)
      {
        v43 = 43;
      }

      v37(6, "%c[%{public}s %{public}s]:%i NFC Reader mode terminated: %@", v43, v40, v41, 1815, clientName3);
    }

    v44 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = object_getClass(self);
      if (class_isMetaClass(v45))
      {
        v46 = 43;
      }

      else
      {
        v46 = 45;
      }

      v47 = object_getClassName(self);
      v48 = sel_getName(a2);
      clientName4 = [(_NFXPCSession *)self clientName];
      *buf = 67110146;
      v57 = v46;
      v58 = 2082;
      v59 = v47;
      v60 = 2082;
      v61 = v48;
      v62 = 1024;
      v63 = 1815;
      v64 = 2112;
      v65 = clientName4;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC Reader mode terminated: %@", buf, 0x2Cu);
    }

    v32 = NFSharedSignpostLog();
    if (os_signpost_enabled(v32))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Polling", &unk_1002E8B7A, buf, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_powerConsumptionReporter);
  sub_1001AF894(WeakRetained, self);
}

- (void)restartPollingWithCompletion:(id)completion
{
  completionCopy = completion;
  v11.receiver = self;
  v11.super_class = _NFReaderSession;
  workQueue = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C2FCC;
  block[3] = &unk_100316050;
  v9 = completionCopy;
  v10 = a2;
  block[4] = self;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)_sync_restartPolling:(id)polling
{
  pollingCopy = polling;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    clientName = [(_NFXPCSession *)self clientName];
    connection = [(_NFXPCSession *)self connection];
    v13 = pollingCopy;
    processIdentifier = [connection processIdentifier];
    sessionUID = [(_NFSession *)self sessionUID];
    v36 = processIdentifier;
    pollingCopy = v13;
    v16 = 43;
    if (!isMetaClass)
    {
      v16 = 45;
    }

    v7(6, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", v16, ClassName, Name, 1835, clientName, v36, sessionUID);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v17 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = object_getClass(self);
    if (class_isMetaClass(v18))
    {
      v19 = 43;
    }

    else
    {
      v19 = 45;
    }

    v20 = object_getClassName(self);
    v21 = sel_getName(a2);
    clientName2 = [(_NFXPCSession *)self clientName];
    connection2 = [(_NFXPCSession *)self connection];
    processIdentifier2 = [connection2 processIdentifier];
    sessionUID2 = [(_NFSession *)self sessionUID];
    *buf = 67110658;
    v41 = v19;
    v42 = 2082;
    v43 = v20;
    v44 = 2082;
    v45 = v21;
    v46 = 1024;
    v47 = 1835;
    v48 = 2114;
    v49 = clientName2;
    v50 = 1024;
    v51 = processIdentifier2;
    v52 = 2114;
    v53 = sessionUID2;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", buf, 0x3Cu);
  }

  if ([(_NFReaderSession *)self _isCoreNFCSession])
  {
    currentTag = self->_currentTag;
    self->_currentTag = 0;

    [(NSMutableArray *)self->_nonstandard7816TagsFound removeAllObjects];
    v27 = +[_NFHardwareManager sharedHardwareManager];
    v28 = sub_10004C144();
    v29 = [v27 setRoutingConfig:v28];

    if (!v29)
    {
      if ((self->_sessionConfig & 0x100) != 0)
      {
        pollingConfig = self->_pollingConfig;
        if ((pollingConfig & 0x1000) != 0)
        {
          self->_pollingConfig = pollingConfig & 0xFFFFEFFF;
          driverWrapper = self->_driverWrapper;
          [(_NFReaderSession *)self _getTagNotificationConfig];
          sub_1001E0DA4(driverWrapper);
        }
      }

      v32 = sub_10004C61C(NFRoutingConfig, 2);
      v33 = +[_NFHardwareManager sharedHardwareManager];
      v29 = [v33 setRoutingConfig:v32];
      goto LABEL_19;
    }
  }

  else
  {
    if ((sub_10021E364(self->_driverWrapper) & 1) == 0)
    {
      v34 = [NSError alloc];
      v32 = [NSString stringWithUTF8String:"nfcd"];
      v38 = NSLocalizedDescriptionKey;
      v33 = [NSString stringWithUTF8String:"Stack Error"];
      v39 = v33;
      v35 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v29 = [v34 initWithDomain:v32 code:15 userInfo:v35];

LABEL_19:
      goto LABEL_20;
    }

    v29 = 0;
  }

LABEL_20:
  pollingCopy[2](pollingCopy, v29);
}

- (void)execRemoteAdminScript:(id)script completion:(id)completion
{
  scriptCopy = script;
  completionCopy = completion;
  v16.receiver = self;
  v16.super_class = _NFReaderSession;
  workQueue = [(_NFSession *)&v16 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001C37E4;
  v12[3] = &unk_1003165E8;
  v14 = completionCopy;
  v15 = a2;
  v12[4] = self;
  v13 = scriptCopy;
  v10 = scriptCopy;
  v11 = completionCopy;
  dispatch_async(workQueue, v12);
}

- (void)_sync_execRemoteAdminScript:(id)script completion:(id)completion
{
  scriptCopy = script;
  completionCopy = completion;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v8 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    v12 = a2;
    Name = sel_getName(a2);
    clientName = [(_NFXPCSession *)self clientName];
    connection = [(_NFXPCSession *)self connection];
    processIdentifier = [connection processIdentifier];
    sessionUID = [(_NFSession *)self sessionUID];
    v222 = Name;
    a2 = v12;
    v18 = 43;
    if (!isMetaClass)
    {
      v18 = 45;
    }

    v8(6, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", v18, ClassName, v222, 1881, clientName, processIdentifier, sessionUID);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v19 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = object_getClass(self);
    if (class_isMetaClass(v20))
    {
      v21 = 43;
    }

    else
    {
      v21 = 45;
    }

    v22 = object_getClassName(self);
    v23 = a2;
    v24 = sel_getName(a2);
    clientName2 = [(_NFXPCSession *)self clientName];
    connection2 = [(_NFXPCSession *)self connection];
    processIdentifier2 = [connection2 processIdentifier];
    sessionUID2 = [(_NFSession *)self sessionUID];
    *buf = 67110658;
    v280 = v21;
    v281 = 2082;
    v282 = v22;
    v283 = 2082;
    v284 = v24;
    a2 = v23;
    v285 = 1024;
    v286 = 1881;
    v287 = 2114;
    v288 = clientName2;
    v289 = 1024;
    *v290 = processIdentifier2;
    *&v290[4] = 2114;
    *&v290[6] = sessionUID2;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", buf, 0x3Cu);
  }

  v29 = NFSharedSignpostLog();
  if (os_signpost_enabled(v29))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "execRemoteAdminScript", &unk_1002E8B7A, buf, 2u);
  }

  v30 = [scriptCopy objectForKey:@"kBatchId"];
  v31 = [scriptCopy objectForKey:@"kCommands"];
  v32 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
  if (!v30 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v97 = NFLogGetLogger();
    if (v97)
    {
      v98 = v97;
      v99 = object_getClass(self);
      v100 = class_isMetaClass(v99);
      v101 = object_getClassName(self);
      v225 = sel_getName(a2);
      v102 = 45;
      if (v100)
      {
        v102 = 43;
      }

      v98(3, "%c[%{public}s %{public}s]:%i Missing batch ID", v102, v101, v225, 1889);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v103 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      v104 = object_getClass(self);
      if (class_isMetaClass(v104))
      {
        v105 = 43;
      }

      else
      {
        v105 = 45;
      }

      v106 = object_getClassName(self);
      v107 = sel_getName(a2);
      *buf = 67109890;
      v280 = v105;
      v281 = 2082;
      v282 = v106;
      v283 = 2082;
      v284 = v107;
      v285 = 1024;
      v286 = 1889;
      _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing batch ID", buf, 0x22u);
    }

    v108 = NFSharedSignpostLog();
    if (os_signpost_enabled(v108))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v108, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "execRemoteAdminScript", &unk_1002E8B7A, buf, 2u);
    }

    v109 = [NSError alloc];
    v110 = [NSString stringWithUTF8String:"nfcd"];
    v277 = NSLocalizedDescriptionKey;
    v111 = [NSString stringWithUTF8String:"Missing Parameter"];
    v278 = v111;
    v112 = &v278;
    v113 = &v277;
    goto LABEL_109;
  }

  if (!v31 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v114 = NFLogGetLogger();
    if (v114)
    {
      v115 = v114;
      v116 = object_getClass(self);
      v117 = class_isMetaClass(v116);
      v118 = object_getClassName(self);
      v226 = sel_getName(a2);
      v119 = 45;
      if (v117)
      {
        v119 = 43;
      }

      v115(3, "%c[%{public}s %{public}s]:%i Missing commands", v119, v118, v226, 1897);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v120 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
    {
      v121 = object_getClass(self);
      if (class_isMetaClass(v121))
      {
        v122 = 43;
      }

      else
      {
        v122 = 45;
      }

      v123 = object_getClassName(self);
      v124 = sel_getName(a2);
      *buf = 67109890;
      v280 = v122;
      v281 = 2082;
      v282 = v123;
      v283 = 2082;
      v284 = v124;
      v285 = 1024;
      v286 = 1897;
      _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing commands", buf, 0x22u);
    }

    v125 = NFSharedSignpostLog();
    if (os_signpost_enabled(v125))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v125, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "execRemoteAdminScript", &unk_1002E8B7A, buf, 2u);
    }

    v109 = [NSError alloc];
    v110 = [NSString stringWithUTF8String:"nfcd"];
    v275 = NSLocalizedDescriptionKey;
    v111 = [NSString stringWithUTF8String:"Missing Parameter"];
    v276 = v111;
    v112 = &v276;
    v113 = &v275;
LABEL_109:
    v126 = [NSDictionary dictionaryWithObjects:v112 forKeys:v113 count:1];
    v127 = [v109 initWithDomain:v110 code:9 userInfo:v126];
    v128 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, 0, v127, 0.0);
    v250 = 0;
    goto LABEL_110;
  }

  v33 = [scriptCopy objectForKey:@"kTaskId"];
  objc_opt_class();
  v237 = v33;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v129 = NFLogGetLogger();
    if (v129)
    {
      v130 = v129;
      v131 = object_getClass(self);
      v132 = class_isMetaClass(v131);
      v133 = object_getClassName(self);
      v227 = sel_getName(a2);
      v134 = 45;
      if (v132)
      {
        v134 = 43;
      }

      v130(3, "%c[%{public}s %{public}s]:%i Invalide parameter type : Task ID", v134, v133, v227, 1906);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v135 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
    {
      v136 = object_getClass(self);
      if (class_isMetaClass(v136))
      {
        v137 = 43;
      }

      else
      {
        v137 = 45;
      }

      v138 = object_getClassName(self);
      v139 = sel_getName(a2);
      *buf = 67109890;
      v280 = v137;
      v281 = 2082;
      v282 = v138;
      v283 = 2082;
      v284 = v139;
      v285 = 1024;
      v286 = 1906;
      _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalide parameter type : Task ID", buf, 0x22u);
    }

    v140 = NFSharedSignpostLog();
    if (os_signpost_enabled(v140))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v140, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "execRemoteAdminScript", &unk_1002E8B7A, buf, 2u);
    }

    v141 = [NSError alloc];
    v111 = [NSString stringWithUTF8String:"nfcd"];
    v273 = NSLocalizedDescriptionKey;
    v126 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v274 = v126;
    v127 = [NSDictionary dictionaryWithObjects:&v274 forKeys:&v273 count:1];
    v142 = [v141 initWithDomain:v111 code:10 userInfo:v127];
    v128 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, 0, v142, 0.0);

    v250 = 0;
    v110 = v237;
    goto LABEL_110;
  }

  v234 = objc_opt_new();
  v252 = 0u;
  v253 = 0u;
  v254 = 0u;
  v255 = 0u;
  obj = v31;
  v233 = v31;
  v235 = [obj countByEnumeratingWithState:&v252 objects:v272 count:16];
  v238 = v30;
  if (!v235)
  {
    v250 = 0;
    v34 = 0;
    goto LABEL_178;
  }

  v250 = 0;
  v34 = 0;
  v236 = *v253;
  sel = a2;
  while (2)
  {
    v35 = 0;
    do
    {
      if (*v253 != v236)
      {
        objc_enumerationMutation(obj);
      }

      v36 = *(*(&v252 + 1) + 8 * v35);
      objc_opt_class();
      v37 = v34;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v143 = NFLogGetLogger();
        if (v143)
        {
          v144 = v143;
          v145 = object_getClass(self);
          v146 = class_isMetaClass(v145);
          v147 = object_getClassName(self);
          v228 = sel_getName(sel);
          v148 = 45;
          if (v146)
          {
            v148 = 43;
          }

          v144(5, "%c[%{public}s %{public}s]:%i Invalid parameter - expecting dictionary", v148, v147, v228, 1918);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v149 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
        {
          v150 = object_getClass(self);
          if (class_isMetaClass(v150))
          {
            v151 = 43;
          }

          else
          {
            v151 = 45;
          }

          v152 = object_getClassName(self);
          v153 = sel_getName(sel);
          *buf = 67109890;
          v280 = v151;
          v281 = 2082;
          v282 = v152;
          v283 = 2082;
          v284 = v153;
          v285 = 1024;
          v286 = 1918;
          _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Invalid parameter - expecting dictionary", buf, 0x22u);
        }

        v154 = [NSError alloc];
        v155 = [v32[475] stringWithUTF8String:"nfcd"];
        v270 = NSLocalizedDescriptionKey;
        v40 = [v32[475] stringWithUTF8String:"Invalid Parameter"];
        v271 = v40;
        v156 = [NSDictionary dictionaryWithObjects:&v271 forKeys:&v270 count:1];
        v157 = v154;
        v158 = v155;
        v159 = 10;
        goto LABEL_145;
      }

      if ([(_NFSession *)self didEnd])
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v160 = NFLogGetLogger();
        if (v160)
        {
          v161 = v160;
          v162 = object_getClass(self);
          v163 = class_isMetaClass(v162);
          v164 = object_getClassName(self);
          v229 = sel_getName(sel);
          v165 = 45;
          if (v163)
          {
            v165 = 43;
          }

          v161(5, "%c[%{public}s %{public}s]:%i Aborted", v165, v164, v229, 1925);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v166 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
        {
          v167 = object_getClass(self);
          if (class_isMetaClass(v167))
          {
            v168 = 43;
          }

          else
          {
            v168 = 45;
          }

          v169 = object_getClassName(self);
          v170 = sel_getName(sel);
          *buf = 67109890;
          v280 = v168;
          v281 = 2082;
          v282 = v169;
          v283 = 2082;
          v284 = v170;
          v285 = 1024;
          v286 = 1925;
          _os_log_impl(&_mh_execute_header, v166, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Aborted", buf, 0x22u);
        }

        v171 = [NSError alloc];
        v155 = [v32[475] stringWithUTF8String:"nfcd"];
        v268 = NSLocalizedDescriptionKey;
        v40 = [v32[475] stringWithUTF8String:"Aborted"];
        v269 = v40;
        v156 = [NSDictionary dictionaryWithObjects:&v269 forKeys:&v268 count:1];
        v157 = v171;
        v158 = v155;
        v159 = 3;
        goto LABEL_145;
      }

      if (!self->_currentTag)
      {
        v172 = [NSError alloc];
        v155 = [v32[475] stringWithUTF8String:"nfcd"];
        v266 = NSLocalizedDescriptionKey;
        v40 = [v32[475] stringWithUTF8String:"Tag Not Found"];
        v267 = v40;
        v156 = [NSDictionary dictionaryWithObjects:&v267 forKeys:&v266 count:1];
        v157 = v172;
        v158 = v155;
        v159 = 28;
LABEL_145:
        v173 = [v157 initWithDomain:v158 code:v159 userInfo:v156];
LABEL_177:

        v250 = v173;
        v34 = v37;
        goto LABEL_178;
      }

      v38 = [v36 objectForKey:@"kMessageName"];
      v39 = v32[475];
      objc_opt_class();
      v245 = v38;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v174 = NFLogGetLogger();
        if (v174)
        {
          v175 = v174;
          v176 = object_getClass(self);
          v177 = class_isMetaClass(v176);
          v178 = object_getClassName(self);
          v230 = sel_getName(sel);
          v179 = 45;
          if (v177)
          {
            v179 = 43;
          }

          v175(5, "%c[%{public}s %{public}s]:%i Invalid parameter - expecting String name", v179, v178, v230, 1938);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v180 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v180, OS_LOG_TYPE_DEFAULT))
        {
          v181 = object_getClass(self);
          if (class_isMetaClass(v181))
          {
            v182 = 43;
          }

          else
          {
            v182 = 45;
          }

          v183 = object_getClassName(self);
          v184 = sel_getName(sel);
          *buf = 67109890;
          v280 = v182;
          v281 = 2082;
          v282 = v183;
          v283 = 2082;
          v284 = v184;
          v285 = 1024;
          v286 = 1938;
          _os_log_impl(&_mh_execute_header, v180, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Invalid parameter - expecting String name", buf, 0x22u);
        }

        v185 = [NSError alloc];
        v40 = [v32[475] stringWithUTF8String:"nfcd"];
        v264 = NSLocalizedDescriptionKey;
        v156 = [v32[475] stringWithUTF8String:"Invalid Parameter"];
        v265 = v156;
        v186 = [NSDictionary dictionaryWithObjects:&v265 forKeys:&v264 count:1];
        v173 = [v185 initWithDomain:v40 code:10 userInfo:v186];

        goto LABEL_176;
      }

      v241 = v36;
      v242 = v35;
      v40 = [v36 objectForKey:@"kData"];
      v41 = v32[475];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v187 = NFLogGetLogger();
        if (v187)
        {
          v188 = v187;
          v189 = object_getClass(self);
          v190 = class_isMetaClass(v189);
          v191 = object_getClassName(self);
          v231 = sel_getName(sel);
          v192 = 45;
          if (v190)
          {
            v192 = 43;
          }

          v188(5, "%c[%{public}s %{public}s]:%i Invalid parameter - expecting String capdu", v192, v191, v231, 1947);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v193 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
        {
          v194 = object_getClass(self);
          if (class_isMetaClass(v194))
          {
            v195 = 43;
          }

          else
          {
            v195 = 45;
          }

          v196 = object_getClassName(self);
          v197 = sel_getName(sel);
          *buf = 67109890;
          v280 = v195;
          v281 = 2082;
          v282 = v196;
          v283 = 2082;
          v284 = v197;
          v285 = 1024;
          v286 = 1947;
          _os_log_impl(&_mh_execute_header, v193, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Invalid parameter - expecting String capdu", buf, 0x22u);
        }

        v198 = [NSError alloc];
        v156 = [v32[475] stringWithUTF8String:"nfcd"];
        v262 = NSLocalizedDescriptionKey;
        v186 = [v32[475] stringWithUTF8String:"Invalid Parameter"];
        v263 = v186;
        v199 = [NSDictionary dictionaryWithObjects:&v263 forKeys:&v262 count:1];
        v173 = [v198 initWithDomain:v156 code:10 userInfo:v199];

        goto LABEL_176;
      }

      if (([(NFTag *)self->_currentTag technology]& 4) != 0)
      {
        v42 = [objc_alloc(v32[475]) initWithFormat:@"%02X%@", (objc_msgSend(v40, "lengthOfBytesUsingEncoding:", 4) >> 1) + 1, v40];

        v40 = v42;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v43 = NFLogGetLogger();
      if (v43)
      {
        v44 = v43;
        v45 = object_getClass(self);
        v46 = class_isMetaClass(v45);
        v219 = object_getClassName(self);
        v223 = sel_getName(sel);
        v47 = 45;
        if (v46)
        {
          v47 = 43;
        }

        v44(6, "%c[%{public}s %{public}s]:%i C-APDU > %{public}@", v47, v219, v223, 1959, v40);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v48 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = object_getClass(self);
        if (class_isMetaClass(v49))
        {
          v50 = 43;
        }

        else
        {
          v50 = 45;
        }

        v51 = object_getClassName(self);
        v52 = sel_getName(sel);
        *buf = 67110146;
        v280 = v50;
        v34 = v37;
        v281 = 2082;
        v282 = v51;
        v283 = 2082;
        v284 = v52;
        v285 = 1024;
        v286 = 1959;
        v287 = 2114;
        v288 = v40;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i C-APDU > %{public}@", buf, 0x2Cu);
      }

      v247 = [NSData NF_dataWithHexString:v40];
      if (!v247)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v200 = NFLogGetLogger();
        if (v200)
        {
          v201 = v200;
          v202 = object_getClass(self);
          v203 = class_isMetaClass(v202);
          v221 = object_getClassName(self);
          v232 = sel_getName(sel);
          v204 = 45;
          if (v203)
          {
            v204 = 43;
          }

          v201(3, "%c[%{public}s %{public}s]:%i Invalid C-APDU %{public}@", v204, v221, v232, 1962, v245);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v205 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v205, OS_LOG_TYPE_ERROR))
        {
          v206 = object_getClass(self);
          if (class_isMetaClass(v206))
          {
            v207 = 43;
          }

          else
          {
            v207 = 45;
          }

          v208 = object_getClassName(self);
          v209 = sel_getName(sel);
          *buf = 67110146;
          v280 = v207;
          v281 = 2082;
          v282 = v208;
          v283 = 2082;
          v284 = v209;
          v285 = 1024;
          v286 = 1962;
          v287 = 2114;
          v288 = v245;
          _os_log_impl(&_mh_execute_header, v205, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid C-APDU %{public}@", buf, 0x2Cu);
        }

        v210 = [NSError alloc];
        v186 = [v32[475] stringWithUTF8String:"nfcd"];
        v260 = NSLocalizedDescriptionKey;
        v211 = [v32[475] stringWithUTF8String:"Decoding Error"];
        v261 = v211;
        v212 = [NSDictionary dictionaryWithObjects:&v261 forKeys:&v260 count:1];
        v173 = [v210 initWithDomain:v186 code:23 userInfo:v212];

        v156 = 0;
LABEL_176:
        v250 = v186;
        v155 = v245;
        goto LABEL_177;
      }

      v240 = v40;
      v53 = 0;
      v54 = -4;
      while (!__CFADD__(v54++, 1))
      {
        mach_continuous_time();
        driverWrapper = self->_driverWrapper;
        currentTag = self->_currentTag;
        [(NFServiceWhitelistChecker *)self->_tagWhiteList sessionTimeLimit];
        v251 = v250;
        v58 = sub_1001960B0(driverWrapper, v247, currentTag, &v251);
        v59 = v251;

        mach_continuous_time();
        v34 += GetElapsedTimeInMillisecondsFromMachTime();
        if (!v59)
        {
          v30 = v238;
          goto LABEL_67;
        }

        v250 = v59;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v60 = NFLogGetLogger();
        if (v60)
        {
          v61 = v60;
          v62 = object_getClass(self);
          if (class_isMetaClass(v62))
          {
            v63 = 43;
          }

          else
          {
            v63 = 45;
          }

          v64 = object_getClassName(self);
          v65 = sel_getName(sel);
          v66 = v65;
          if (v245)
          {
            v61(3, "%c[%{public}s %{public}s]:%i Failed to execute C-APDU %{public}@, error %{public}@", v63, v64, v65, 1982, v245, v250);
          }

          else
          {
            v67 = [v247 description];
            v61(3, "%c[%{public}s %{public}s]:%i Failed to execute C-APDU %{public}@, error %{public}@", v63, v64, v66, 1982, v67, v250);
          }
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v68 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          v69 = object_getClass(self);
          if (class_isMetaClass(v69))
          {
            v70 = 43;
          }

          else
          {
            v70 = 45;
          }

          v71 = object_getClassName(self);
          v72 = sel_getName(sel);
          v73 = v245;
          if (!v245)
          {
            v243 = [v247 description];
            v73 = v243;
          }

          *buf = 67110402;
          v280 = v70;
          v281 = 2082;
          v282 = v71;
          v283 = 2082;
          v284 = v72;
          v285 = 1024;
          v286 = 1982;
          v287 = 2114;
          v288 = v73;
          v289 = 2114;
          *v290 = v250;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to execute C-APDU %{public}@, error %{public}@", buf, 0x36u);
          if (!v245)
          {
          }
        }

        userInfo = [v250 userInfo];
        v75 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

        code = [v250 code];
        v77 = 0;
        if ([v250 code] == 29 && v75)
        {
          v77 = [v75 code] == 20;
        }

        v53 = v58;
        if (code != 28)
        {
          v53 = v58;
          if (!v77)
          {
            v78 = 0;
            v30 = v238;
            goto LABEL_81;
          }
        }
      }

      v30 = v238;
      if (v250)
      {
        v78 = 0;
        v58 = v53;
        goto LABEL_81;
      }

      v58 = v53;
LABEL_67:
      v79 = v241;
      nF_asHexString = [v58 NF_asHexString];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v81 = NFLogGetLogger();
      if (v81)
      {
        v82 = v81;
        v83 = object_getClass(self);
        v84 = class_isMetaClass(v83);
        v220 = object_getClassName(self);
        v224 = sel_getName(sel);
        v85 = !v84;
        v79 = v241;
        v86 = 45;
        if (!v85)
        {
          v86 = 43;
        }

        v82(6, "%c[%{public}s %{public}s]:%i R-APDU < %{public}@", v86, v220, v224, 1999, nF_asHexString);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v87 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
      {
        v88 = object_getClass(self);
        if (class_isMetaClass(v88))
        {
          v89 = 43;
        }

        else
        {
          v89 = 45;
        }

        v90 = object_getClassName(self);
        v91 = sel_getName(sel);
        *buf = 67110146;
        v280 = v89;
        v281 = 2082;
        v282 = v90;
        v79 = v241;
        v283 = 2082;
        v284 = v91;
        v285 = 1024;
        v286 = 1999;
        v287 = 2114;
        v288 = nF_asHexString;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i R-APDU < %{public}@", buf, 0x2Cu);
      }

      if (([(NFTag *)self->_currentTag technology]& 4) != 0)
      {
        v92 = [nF_asHexString substringFromIndex:2];

        nF_asHexString = v92;
      }

      v258[0] = @"kData";
      v258[1] = @"kMessageId";
      v259[0] = nF_asHexString;
      v93 = [v79 objectForKeyedSubscript:?];
      v259[1] = v93;
      v94 = [NSDictionary dictionaryWithObjects:v259 forKeys:v258 count:2];
      v95 = [NSMutableDictionary dictionaryWithDictionary:v94];

      if (v245)
      {
        v96 = [v245 stringByAppendingString:@"_RESP"];
        [v95 setObject:v96 forKeyedSubscript:@"kMessageName"];
      }

      [v234 addObject:v95];

      v250 = 0;
      v78 = 1;
LABEL_81:

      if (!v78)
      {
        goto LABEL_178;
      }

      v35 = v242 + 1;
      v32 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
    }

    while ((v242 + 1) != v235);
    v235 = [obj countByEnumeratingWithState:&v252 objects:v272 count:16];
    if (v235)
    {
      continue;
    }

    break;
  }

LABEL_178:

  v126 = [scriptCopy objectForKeyedSubscript:@"kVersion"];
  v248 = v34;
  if (v126)
  {
    objc_opt_class();
    v128 = completionCopy;
    v110 = v237;
    if ((objc_opt_isKindOfClass() & 1) != 0 || [v126 integerValue] < 3)
    {
      integerValue = 2;
    }

    else
    {
      integerValue = [v126 integerValue];
    }
  }

  else
  {
    integerValue = 2;
    v128 = completionCopy;
    v110 = v237;
  }

  v214 = [NSMutableDictionary alloc];
  v256[0] = @"kVersion";
  v215 = [NSNumber numberWithInteger:integerValue];
  v257[0] = v215;
  v257[1] = v30;
  v256[1] = @"kBatchId";
  v256[2] = @"kTaskId";
  v256[3] = @"kCommandsResponse";
  v257[2] = v110;
  v257[3] = v234;
  v216 = [NSDictionary dictionaryWithObjects:v257 forKeys:v256 count:4];
  v127 = [v214 initWithDictionary:v216];

  v111 = v234;
  v217 = [v234 count];
  if (v217 != [obj count])
  {
    [v127 setValue:&__kCFBooleanTrue forKey:@"incompletedExecution"];
  }

  v218 = NFSharedSignpostLog();
  v31 = v233;
  if (os_signpost_enabled(v218))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v218, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "execRemoteAdminScript", &unk_1002E8B7A, buf, 2u);
  }

  (v128)[2](v128, v127, 0, v250, v248 / 1000.0);
  v30 = v238;
LABEL_110:
}

- (void)felicaStateForSystemCode:(id)code withRequestService:(id)service performSearchServiceCode:(BOOL)serviceCode completion:(id)completion
{
  codeCopy = code;
  serviceCopy = service;
  completionCopy = completion;
  v24.receiver = self;
  v24.super_class = _NFReaderSession;
  workQueue = [(_NFSession *)&v24 workQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001C58D0;
  v18[3] = &unk_10031B6C0;
  v21 = completionCopy;
  v22 = a2;
  v18[4] = self;
  v19 = codeCopy;
  v20 = serviceCopy;
  serviceCodeCopy = serviceCode;
  v15 = serviceCopy;
  v16 = codeCopy;
  v17 = completionCopy;
  dispatch_async(workQueue, v18);
}

- (void)_sync_felicaStateForSystemCode:(id)code withRequestService:(id)service performSearchServiceCode:(BOOL)serviceCode completion:(id)completion
{
  serviceCodeCopy = serviceCode;
  codeCopy = code;
  serviceCopy = service;
  completionCopy = completion;
  currentTag = self->_currentTag;
  if (currentTag && ([(NFTag *)currentTag tagF], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
  {
    tagF = [(NFTag *)self->_currentTag tagF];
    v17 = tagF;
    if (!serviceCodeCopy)
    {
      v82 = serviceCopy;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      allSystemCodes = [tagF allSystemCodes];
      v27 = [allSystemCodes countByEnumeratingWithState:&v86 objects:v108 count:16];
      if (v27)
      {
        v28 = v27;
        v78 = completionCopy;
        v79 = v17;
        v29 = *v87;
        while (2)
        {
          for (i = 0; i != v28; i = i + 1)
          {
            if (*v87 != v29)
            {
              objc_enumerationMutation(allSystemCodes);
            }

            v31 = *(*(&v86 + 1) + 8 * i);
            if ([v31 isEqualToData:codeCopy])
            {
              v32 = objc_opt_new();
              nF_asHexString = [v31 NF_asHexString];
              v81 = v32;
              [v32 setObject:nF_asHexString forKeyedSubscript:@"systemCode"];

              v34 = self->_currentTag;
              v84 = 0;
              v85 = 0;
              v35 = [(_NFReaderSession *)self _getIDMFromTag:v34 systemCode:v31 outIdm:&v85 outPmm:&v84];
              v36 = v85;
              v37 = v84;
              v77 = v35;
              if (v35)
              {
                v17 = v79;
                v38 = [v79 IDm];
                v39 = v36;
                v36 = v38;

                v40 = [v79 PMm];
                v41 = v37;
                v37 = v40;

                serviceCopy = v82;
              }

              else
              {
                serviceCopy = v82;
                v17 = v79;
              }

              v75 = v36;
              nF_asHexString2 = [v36 NF_asHexString];
              [v81 setObject:nF_asHexString2 forKeyedSubscript:@"idm"];

              v76 = v37;
              nF_asHexString3 = [v37 NF_asHexString];
              [v81 setObject:nF_asHexString3 forKeyedSubscript:@"pmm"];

              v51 = [(_NFReaderSession *)self _RequestService:serviceCopy forSystemCode:codeCopy];
              v52 = [v51 count];
              if (v52 == [serviceCopy count])
              {
                v53 = objc_opt_new();
                if ([v51 count])
                {
                  v54 = 0;
                  do
                  {
                    v55 = [NSDictionary alloc];
                    v56 = [serviceCopy objectAtIndex:v54];
                    nF_asHexString4 = [v56 NF_asHexString];
                    v58 = [v51 objectAtIndex:v54];
                    nF_asHexString5 = [v58 NF_asHexString];
                    v60 = [v55 initWithObjectsAndKeys:{nF_asHexString4, @"areaCode", nF_asHexString5, @"keyVersion", 0}];
                    [v53 addObject:v60];

                    serviceCopy = v82;
                    ++v54;
                  }

                  while ([v51 count] > v54);
                }

                [v81 setObject:v53 forKeyedSubscript:@"areaCodeList"];
                completionCopy = v78;
                (v78)[2](v78, v81, 0);
                v17 = v79;
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                Logger = NFLogGetLogger();
                if (Logger)
                {
                  v62 = Logger;
                  Class = object_getClass(self);
                  isMetaClass = class_isMetaClass(Class);
                  ClassName = object_getClassName(self);
                  Name = sel_getName(a2);
                  v64 = 45;
                  if (isMetaClass)
                  {
                    v64 = 43;
                  }

                  v62(3, "%c[%{public}s %{public}s]:%i Failed to get areaCodeList, stopping", v64, ClassName, Name, 2110);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v65 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                {
                  v66 = object_getClass(self);
                  if (class_isMetaClass(v66))
                  {
                    v67 = 43;
                  }

                  else
                  {
                    v67 = 45;
                  }

                  v68 = object_getClassName(self);
                  v69 = sel_getName(a2);
                  *buf = 67109890;
                  v101 = v67;
                  v102 = 2082;
                  v103 = v68;
                  v104 = 2082;
                  v105 = v69;
                  v106 = 1024;
                  v107 = 2110;
                  _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get areaCodeList, stopping", buf, 0x22u);
                }

                v70 = [NSError alloc];
                v53 = [NSString stringWithUTF8String:"nfcd"];
                v98 = NSLocalizedDescriptionKey;
                v71 = [NSString stringWithUTF8String:"Unexpected Result"];
                v99 = v71;
                v72 = [NSDictionary dictionaryWithObjects:&v99 forKeys:&v98 count:1];
                v73 = [v70 initWithDomain:v53 code:13 userInfo:v72];
                v78[2](v78, 0, v73);

                completionCopy = v78;
              }

              v25 = v81;
              goto LABEL_50;
            }
          }

          v28 = [allSystemCodes countByEnumeratingWithState:&v86 objects:v108 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }

        serviceCopy = v82;
        completionCopy = v78;
        v17 = v79;
      }

      goto LABEL_32;
    }

    if (codeCopy)
    {
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      allSystemCodes2 = [tagF allSystemCodes];
      v19 = [allSystemCodes2 countByEnumeratingWithState:&v91 objects:v109 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v92;
        while (2)
        {
          for (j = 0; j != v20; j = j + 1)
          {
            if (*v92 != v21)
            {
              objc_enumerationMutation(allSystemCodes2);
            }

            if ([*(*(&v91 + 1) + 8 * j) isEqualToData:codeCopy])
            {
              v90 = 0;
              v42 = &v90;
              v43 = &v90;
              selfCopy2 = self;
              v45 = codeCopy;
              goto LABEL_28;
            }
          }

          v20 = [allSystemCodes2 countByEnumeratingWithState:&v91 objects:v109 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      allSystemCodes = 0;
      goto LABEL_32;
    }

    allSystemCodes2 = [tagF SystemCode];
    v95 = 0;
    v42 = &v95;
    v43 = &v95;
    selfCopy2 = self;
    v45 = allSystemCodes2;
LABEL_28:
    allSystemCodes = [(_NFReaderSession *)selfCopy2 _getSystemInfo:v45 outError:v43];
    v25 = *v42;

    if (!allSystemCodes)
    {
      allSystemCodes = v25;
LABEL_32:

      v46 = [NSError alloc];
      allSystemCodes = [NSString stringWithUTF8String:"nfcd"];
      v96 = NSLocalizedDescriptionKey;
      v25 = [NSString stringWithUTF8String:"Tag Not Found"];
      v97 = v25;
      v47 = [NSDictionary dictionaryWithObjects:&v97 forKeys:&v96 count:1];
      v48 = [v46 initWithDomain:allSystemCodes code:28 userInfo:v47];
      completionCopy[2](completionCopy, 0, v48);

      goto LABEL_50;
    }

    (completionCopy)[2](completionCopy, allSystemCodes, v25);
  }

  else
  {
    v24 = [NSError alloc];
    v17 = [NSString stringWithUTF8String:"nfcd"];
    v110 = NSLocalizedDescriptionKey;
    allSystemCodes = [NSString stringWithUTF8String:"Invalid State"];
    v111 = allSystemCodes;
    v25 = [NSDictionary dictionaryWithObjects:&v111 forKeys:&v110 count:1];
    v26 = [v24 initWithDomain:v17 code:12 userInfo:v25];
    completionCopy[2](completionCopy, 0, v26);
  }

LABEL_50:
}

- (void)updateSharingUIScanText:(id)text completion:(id)completion
{
  textCopy = text;
  completionCopy = completion;
  v16.receiver = self;
  v16.super_class = _NFReaderSession;
  workQueue = [(_NFSession *)&v16 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001C6548;
  v12[3] = &unk_1003165E8;
  v14 = completionCopy;
  v15 = a2;
  v12[4] = self;
  v13 = textCopy;
  v10 = textCopy;
  v11 = completionCopy;
  dispatch_async(workQueue, v12);
}

- (void)updateSharingUIStateOnInvalidation:(int64_t)invalidation completion:(id)completion
{
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = _NFReaderSession;
  workQueue = [(_NFSession *)&v14 workQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001C6930;
  v10[3] = &unk_1003169E0;
  v10[4] = self;
  v11 = completionCopy;
  v12 = a2;
  invalidationCopy = invalidation;
  v9 = completionCopy;
  dispatch_async(workQueue, v10);
}

- (void)felicaRequestService:(id)service completion:(id)completion
{
  serviceCopy = service;
  completionCopy = completion;
  v16.receiver = self;
  v16.super_class = _NFReaderSession;
  workQueue = [(_NFSession *)&v16 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001C6D34;
  v12[3] = &unk_1003165E8;
  v14 = completionCopy;
  v15 = a2;
  v12[4] = self;
  v13 = serviceCopy;
  v10 = serviceCopy;
  v11 = completionCopy;
  dispatch_async(workQueue, v12);
}

- (void)felicaRequestService:(id)service forSystemCode:(id)code completion:(id)completion
{
  serviceCopy = service;
  codeCopy = code;
  completionCopy = completion;
  v21.receiver = self;
  v21.super_class = _NFReaderSession;
  workQueue = [(_NFSession *)&v21 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C71F8;
  block[3] = &unk_1003165C0;
  v19 = completionCopy;
  v20 = a2;
  block[4] = self;
  v17 = serviceCopy;
  v18 = codeCopy;
  v13 = codeCopy;
  v14 = serviceCopy;
  v15 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)writeProtectNDEFTagWithCompletion:(id)completion
{
  completionCopy = completion;
  v11.receiver = self;
  v11.super_class = _NFReaderSession;
  workQueue = [(_NFSession *)&v11 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C7674;
  block[3] = &unk_100316050;
  v9 = completionCopy;
  v10 = a2;
  block[4] = self;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)performVAS:(id)s completion:(id)completion
{
  sCopy = s;
  completionCopy = completion;
  v16.receiver = self;
  v16.super_class = _NFReaderSession;
  workQueue = [(_NFSession *)&v16 workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001C7D4C;
  v12[3] = &unk_1003165E8;
  v14 = completionCopy;
  v15 = a2;
  v12[4] = self;
  v13 = sCopy;
  v10 = sCopy;
  v11 = completionCopy;
  dispatch_async(workQueue, v12);
}

- (void)configurePollingProfile:(int64_t)profile completion:(id)completion
{
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = _NFReaderSession;
  workQueue = [(_NFSession *)&v14 workQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001C89C4;
  v10[3] = &unk_1003169E0;
  v10[4] = self;
  v11 = completionCopy;
  v12 = a2;
  profileCopy = profile;
  v9 = completionCopy;
  dispatch_async(workQueue, v10);
}

- (void)enableContinuousWave:(BOOL)wave withFrequencySweep:(BOOL)sweep completion:(id)completion
{
  completionCopy = completion;
  if (![(_NFSession *)self didStart]|| [(_NFSession *)self isSuspended]|| [(_NFSession *)self didEnd])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v11 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      sessionUID = [(_NFSession *)self sessionUID];
      v17 = 45;
      if (isMetaClass)
      {
        v17 = 43;
      }

      v11(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v17, ClassName, Name, 2306, sessionUID);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = object_getClass(self);
      if (class_isMetaClass(v19))
      {
        v20 = 43;
      }

      else
      {
        v20 = 45;
      }

      v21 = object_getClassName(self);
      v22 = sel_getName(a2);
      sessionUID2 = [(_NFSession *)self sessionUID];
      *buf = 67110146;
      v39 = v20;
      v40 = 2082;
      v41 = v21;
      v42 = 2082;
      v43 = v22;
      v44 = 1024;
      v45 = 2306;
      v46 = 2114;
      v47 = sessionUID2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    if (completionCopy)
    {
      v24 = [NSError alloc];
      v25 = [NSString stringWithUTF8String:"nfcd"];
      v36 = NSLocalizedDescriptionKey;
      v26 = [NSString stringWithUTF8String:"Session not active"];
      v37 = v26;
      v27 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v28 = [v24 initWithDomain:v25 code:54 userInfo:v27];
      completionCopy[2](completionCopy, v28);
    }
  }

  else
  {
    v35.receiver = self;
    v35.super_class = _NFReaderSession;
    workQueue = [(_NFSession *)&v35 workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C9480;
    block[3] = &unk_1003166D8;
    block[4] = self;
    v32 = a2;
    v31 = completionCopy;
    waveCopy = wave;
    sweepCopy = sweep;
    dispatch_async(workQueue, block);
  }
}

- (void)expectedAllowedReaderTimeWithCompletion:(id)completion
{
  completionCopy = completion;
  if (![(_NFSession *)self didStart]|| [(_NFSession *)self isSuspended]|| [(_NFSession *)self didEnd])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      sessionUID = [(_NFSession *)self sessionUID];
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v13, ClassName, Name, 2337, sessionUID);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = object_getClass(self);
      if (class_isMetaClass(v15))
      {
        v16 = 43;
      }

      else
      {
        v16 = 45;
      }

      v17 = object_getClassName(self);
      v18 = sel_getName(a2);
      sessionUID2 = [(_NFSession *)self sessionUID];
      *buf = 67110146;
      v33 = v16;
      v34 = 2082;
      v35 = v17;
      v36 = 2082;
      v37 = v18;
      v38 = 1024;
      v39 = 2337;
      v40 = 2114;
      v41 = sessionUID2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    if (completionCopy)
    {
      v20 = [NSError alloc];
      v21 = [NSString stringWithUTF8String:"nfcd"];
      v30 = NSLocalizedDescriptionKey;
      v22 = [NSString stringWithUTF8String:"Session not active"];
      v31 = v22;
      v23 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v24 = [v20 initWithDomain:v21 code:54 userInfo:v23];
      completionCopy[2](completionCopy, v24, 0.0);
    }
  }

  else
  {
    v29.receiver = self;
    v29.super_class = _NFReaderSession;
    workQueue = [(_NFSession *)&v29 workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C9E60;
    block[3] = &unk_100316050;
    block[4] = self;
    v28 = a2;
    v27 = completionCopy;
    dispatch_async(workQueue, block);
  }
}

- (BOOL)suspendWithInfo:(id)info
{
  infoCopy = info;
  v18.receiver = self;
  v18.super_class = _NFReaderSession;
  v5 = [(_NFXPCSession *)&v18 suspendWithInfo:infoCopy];
  if (v5)
  {
    currentTag = self->_currentTag;
    if (currentTag)
    {
      sub_10019117C(self->_driverWrapper, currentTag, 0);
      v7 = self->_currentTag;
      self->_currentTag = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_powerConsumptionReporter);
    sub_1001AF894(WeakRetained, self);

    v9 = +[_NFHardwareManager sharedHardwareManager];
    [v9 notifyReaderModeActivityEnd];

    self->_pollingConfig = 0;
    if (self->_continuousWaveState)
    {
      v10 = sub_1001EBF94(self->_driverWrapper, 0);
    }

    v11 = [infoCopy NF_numberForKey:@"ReasonCode"];
    suspendOnFieldList = [(_NFSession *)self suspendOnFieldList];
    if ([suspendOnFieldList count] && v11 && objc_msgSend(v11, "integerValue") == 2)
    {
      v13 = sub_10000431C(&self->_driverWrapper->super.isa);
      wantsReader = [v13 wantsReader];

      if (!wantsReader)
      {
LABEL_12:
        [(_NFReaderSession *)self cleanupUI];

        goto LABEL_13;
      }

      suspendOnFieldList = +[_NFHardwareManager sharedHardwareManager];
      v15 = sub_10004C144();
      v16 = [suspendOnFieldList setRoutingConfig:v15];
    }

    goto LABEL_12;
  }

LABEL_13:

  return v5;
}

- (BOOL)resume
{
  v35.receiver = self;
  v35.super_class = _NFReaderSession;
  resume = [(_NFXPCSession *)&v35 resume];
  if (resume)
  {
    continuousWaveState = self->_continuousWaveState;
    if (continuousWaveState)
    {
      v6 = +[_NFHardwareManager sharedHardwareManager];
      v7 = sub_10004C224(NFRoutingConfig, 0);
      v8 = [v6 setRoutingConfig:v7];

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      v10 = Logger;
      if (v8)
      {
        if (Logger)
        {
          Class = object_getClass(self);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(self);
          Name = sel_getName(a2);
          v13 = 45;
          if (isMetaClass)
          {
            v13 = 43;
          }

          v10(3, "%c[%{public}s %{public}s]:%i Failed to resume Continuous Wave - %{public}@", v13, ClassName, Name, 2406, v8);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v14 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = object_getClass(self);
          if (class_isMetaClass(v15))
          {
            v16 = 43;
          }

          else
          {
            v16 = 45;
          }

          v17 = object_getClassName(self);
          v18 = sel_getName(a2);
          *buf = 67110146;
          v37 = v16;
          v38 = 2082;
          v39 = v17;
          v40 = 2082;
          v41 = v18;
          v42 = 1024;
          v43 = 2406;
          v44 = 2114;
          v45 = v8;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to resume Continuous Wave - %{public}@", buf, 0x2Cu);
        }
      }

      else
      {
        if (Logger)
        {
          v19 = object_getClass(self);
          v20 = class_isMetaClass(v19);
          v21 = object_getClassName(self);
          v22 = sel_getName(a2);
          if (continuousWaveState == 2)
          {
            v23 = "with";
          }

          else
          {
            v23 = "without";
          }

          v24 = 45;
          if (v20)
          {
            v24 = 43;
          }

          v10(6, "%c[%{public}s %{public}s]:%i Resuming ContinuousWave %s freq sweep", v24, v21, v22, 2408, v23);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v25 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = object_getClass(self);
          if (class_isMetaClass(v26))
          {
            v27 = 43;
          }

          else
          {
            v27 = 45;
          }

          v28 = object_getClassName(self);
          v29 = sel_getName(a2);
          *buf = 67110146;
          v30 = "with";
          if (continuousWaveState != 2)
          {
            v30 = "without";
          }

          v37 = v27;
          v38 = 2082;
          v39 = v28;
          v40 = 2082;
          v41 = v29;
          v42 = 1024;
          v43 = 2408;
          v44 = 2080;
          v45 = v30;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Resuming ContinuousWave %s freq sweep", buf, 0x2Cu);
        }

        v31 = sub_1001EBF94(self->_driverWrapper, 1);
      }
    }
  }

  return resume;
}

- (void)_tagRemovalDetect:(id)detect
{
  detectCopy = detect;
  v5 = +[_NFHardwareManager sharedHardwareManager];
  controllerInfo = [v5 controllerInfo];
  siliconName = [controllerInfo siliconName];

  if (siliconName >= 7)
  {
    v8 = NFSharedSignpostLog();
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "tagRemovalDetect", &unk_1002E8B7A, buf, 2u);
    }

    driverWrapper = self->_driverWrapper;
    if (driverWrapper)
    {
      v10 = sub_100190BD0(driverWrapper, detectCopy, 0);
      if (v10)
      {
        goto LABEL_8;
      }

      driverWrapper = self->_driverWrapper;
    }

    v10 = sub_10019117C(driverWrapper, detectCopy, 1);
LABEL_8:
    if (v10 != 51)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v11 = self->_driverWrapper;
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = sub_100190BD0(v11, detectCopy, 0);
  if (v12 == 51)
  {
LABEL_14:
    sub_10021E364(self->_driverWrapper);
    goto LABEL_15;
  }

  if (!v12)
  {
LABEL_13:
    objc_initWeak(&location, self);
    *buf = 0;
    v27 = buf;
    v28 = 0x3032000000;
    v29 = sub_100006B0C;
    v30 = sub_1001CABA4;
    v31 = detectCopy;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_100006B0C;
    v24 = sub_1001CABA4;
    v25 = 0;
    v13 = [NFTimer alloc];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001CABAC;
    v18[3] = &unk_10031B6E8;
    objc_copyWeak(&v19, &location);
    v18[4] = buf;
    v18[5] = &v20;
    v17.receiver = self;
    v17.super_class = _NFReaderSession;
    workQueue = [(_NFSession *)&v17 workQueue];
    v15 = [v13 initWithCallback:v18 queue:workQueue];
    v16 = v21[5];
    v21[5] = v15;

    [v21[5] startTimer:0.5];
    _Block_object_dispose(&v20, 8);

    objc_destroyWeak(&v19);
    _Block_object_dispose(buf, 8);

    objc_destroyWeak(&location);
  }

LABEL_15:
}

- (unsigned)_getTagTypeFromTag:(id)tag
{
  type = [tag type];
  if (type > 0x10)
  {
    return 0;
  }

  else
  {
    return dword_1002979FC[type];
  }
}

- (_NFDriverTagDiscoveryNtf)_getTagNotificationConfig
{
  if ([(_NFReaderSession *)self _isCoreNFCSession]&& self->_sessionType == 5)
  {
    return 48;
  }

  else if ((self->_sessionConfig & 4) != 0)
  {
    return 1790;
  }

  else
  {
    return 1791;
  }
}

- (BOOL)_processRawTagsForInternalSession:(id)session supportedTags:(id)tags outError:(id *)error
{
  sessionCopy = session;
  tagsCopy = tags;
  v11 = tagsCopy;
  if ((self->_pollingProfile - 1) <= 2)
  {
    [tagsCopy addObjectsFromArray:sessionCopy];
    v12 = 1;
    goto LABEL_45;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v13 = sessionCopy;
  v14 = [v13 countByEnumeratingWithState:&v53 objects:v63 count:16];
  v12 = 1;
  if (!v14)
  {
    goto LABEL_44;
  }

  v15 = v14;
  sel = a2;
  v49 = sessionCopy;
  v16 = *v54;
  v50 = v11;
LABEL_5:
  v17 = 0;
  while (1)
  {
    if (*v54 != v16)
    {
      objc_enumerationMutation(v13);
    }

    v18 = *(*(&v53 + 1) + 8 * v17);
    if ([v18 type])
    {
      if ([v18 type] != 10)
      {
        break;
      }
    }

LABEL_35:
    if (v15 == ++v17)
    {
      v15 = [v13 countByEnumeratingWithState:&v53 objects:v63 count:16];
      if (v15)
      {
        goto LABEL_5;
      }

LABEL_37:
      v12 = 1;
      goto LABEL_43;
    }
  }

  if (![(_NFReaderSession *)self _requiresTypeFUpdate:v18]&& ![(_NFReaderSession *)self _requiresMifareUpdate:v18])
  {
    sessionPollConfig = self->_sessionPollConfig;
    if (sessionPollConfig && [(NFReaderSessionPollConfig *)sessionPollConfig type]== 2)
    {
      appletIdentifiers = [(NFReaderSessionPollConfig *)self->_sessionPollConfig appletIdentifiers];
      if ([appletIdentifiers count])
      {
        if ([v18 type] != 3)
        {
          type = [v18 type];

          v11 = v50;
          if (type == 6)
          {
            goto LABEL_47;
          }

          goto LABEL_32;
        }

LABEL_47:
        v52 = 0;
        v51 = 0;
        v39 = [(_NFReaderSession *)self _processIso14Tag:v18 connected:&v52 appFound:&v51 updatedTag:0];
        v40 = v51;
        if (v52 == 1 && sub_10019117C(self->_driverWrapper, v18, 0) == 51)
        {
          if (error)
          {
            v47 = [NSError alloc];
            v41 = [NSString stringWithUTF8String:"nfcd"];
            v57[0] = NSLocalizedDescriptionKey;
            v45 = [NSString stringWithUTF8String:"RF Deactivated"];
            v58[0] = v45;
            v58[1] = &off_100333B10;
            v57[1] = @"Line";
            v57[2] = @"Method";
            v42 = [[NSString alloc] initWithFormat:@"%s", sel_getName(sel)];
            v58[2] = v42;
            v57[3] = NSDebugDescriptionErrorKey;
            2583 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(sel), 2583];
            v58[3] = 2583;
            v44 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:4];
            *error = [v47 initWithDomain:v41 code:51 userInfo:v44];

            v12 = 0;
            sessionCopy = v49;
            goto LABEL_54;
          }

          v12 = 0;
        }

        else
        {
          v12 = 0;
          if (!v39)
          {
            sessionCopy = v49;
            if (!v40)
            {
LABEL_57:

LABEL_41:
              v11 = v50;
              goto LABEL_44;
            }

            v41 = [[NFTagInternal alloc] initWithNFTag:v18];
            [v41 _setSelectedAID:v40];
            [v50 addObject:v41];
            v12 = 1;
LABEL_54:

            goto LABEL_57;
          }
        }

        sessionCopy = v49;
        goto LABEL_57;
      }

      v11 = v50;
    }

LABEL_32:
    [v11 addObject:v18];
LABEL_33:
    if ([v11 count] && (self->_sessionConfig & 0x40) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  driverWrapper = self->_driverWrapper;
  if (driverWrapper)
  {
    v20 = sub_100190BD0(driverWrapper, v18, 0);
    if (v20 - 35 <= 0x1D && ((1 << (v20 - 35)) & 0x20010001) != 0)
    {
      if (error)
      {
        v25 = v20;
        v46 = [NSError alloc];
        v26 = [NSString stringWithUTF8String:"nfcd"];
        v27 = v25;
        v61[0] = NSLocalizedDescriptionKey;
        v28 = [NSString stringWithUTF8String:off_10031B2E8[v25]];
        v62[0] = v28;
        v62[1] = &off_100333AE0;
        v61[1] = @"Line";
        v61[2] = @"Method";
        v29 = [[NSString alloc] initWithFormat:@"%s", sel_getName(sel)];
        v62[2] = v29;
        v61[3] = NSDebugDescriptionErrorKey;
        2555 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(sel), 2555];
        v62[3] = 2555;
        v31 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:4];
        *error = [v46 initWithDomain:v26 code:v27 userInfo:v31];
      }

      v12 = 0;
      sessionCopy = v49;
      goto LABEL_41;
    }
  }

  v11 = v50;
  if ([(_NFReaderSession *)self _updateFelicaTagInfo:v18 outError:error]&& [(_NFReaderSession *)self _updateMifareTagInfo:v18 outError:error])
  {
    [v50 addObject:v18];
  }

  if ([*error code] == 51 || objc_msgSend(*error, "code") == 64)
  {
    goto LABEL_42;
  }

  if (sub_10019117C(self->_driverWrapper, v18, 0) != 51)
  {
    goto LABEL_33;
  }

  v32 = [NSError alloc];
  v33 = [NSString stringWithUTF8String:"nfcd"];
  v59[0] = NSLocalizedDescriptionKey;
  v34 = [NSString stringWithUTF8String:"RF Deactivated"];
  v60[0] = v34;
  v60[1] = &off_100333AF8;
  v59[1] = @"Line";
  v59[2] = @"Method";
  v35 = [[NSString alloc] initWithFormat:@"%s", sel_getName(sel)];
  v60[2] = v35;
  v59[3] = NSDebugDescriptionErrorKey;
  2569 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(sel), 2569];
  v60[3] = 2569;
  v37 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:4];
  *error = [v32 initWithDomain:v33 code:51 userInfo:v37];

  v11 = v50;
LABEL_42:
  v12 = 0;
LABEL_43:
  sessionCopy = v49;
LABEL_44:

LABEL_45:
  return v12;
}

- (BOOL)_processRawTagsForNDEF:(id)f ndefMessages:(id)messages supportedTags:(id)tags caEvents:(id)events outError:(id *)error
{
  fCopy = f;
  messagesCopy = messages;
  tagsCopy = tags;
  eventsCopy = events;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v13 = fCopy;
  v14 = [v13 countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (!v14)
  {
    v37 = 0;
    v38 = v13;
    errorCopy3 = error;
    goto LABEL_53;
  }

  v15 = v14;
  sel = a2;
  v60 = 0;
  v16 = 0;
  v17 = *v67;
  v61 = v13;
  while (2)
  {
    for (i = 0; i != v15; i = i + 1)
    {
      if (*v67 != v17)
      {
        objc_enumerationMutation(v13);
      }

      v19 = *(*(&v66 + 1) + 8 * i);
      if ([v19 type] && objc_msgSend(v19, "type") != 10)
      {
        driverWrapper = self->_driverWrapper;
        if (driverWrapper)
        {
          v21 = sub_100190BD0(driverWrapper, v19, 0);
          v22 = v21;
          switch(v21)
          {
            case '@':
              goto LABEL_43;
            case '3':
              goto LABEL_48;
            case '#':
LABEL_43:
              v40 = [NSError alloc];
              v41 = [NSString stringWithUTF8String:"nfcd"];
              v42 = v22;
              v72[0] = NSLocalizedDescriptionKey;
              v43 = [NSString stringWithUTF8String:off_10031B2E8[v22]];
              v73[0] = v43;
              v73[1] = &off_100333B28;
              v72[1] = @"Line";
              v72[2] = @"Method";
              v44 = [[NSString alloc] initWithFormat:@"%s", sel_getName(sel)];
              v73[2] = v44;
              v72[3] = NSDebugDescriptionErrorKey;
              2664 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(sel), 2664];
              v73[3] = 2664;
              v46 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:4];
              v47 = [v40 initWithDomain:v41 code:v42 userInfo:v46];

              v13 = v61;
              v16 = v47;
              goto LABEL_51;
          }
        }

        v65 = v16;
        [(_NFReaderSession *)self _updateFelicaTagInfo:v19 outError:&v65];
        v23 = v65;

        if (v23)
        {
          if ([v23 code] == 51)
          {
            v16 = v23;
LABEL_48:
            v13 = v61;
            goto LABEL_49;
          }

          if ([v23 code] == 64)
          {
            v13 = v61;

            v16 = v23;
            goto LABEL_51;
          }
        }

        v24 = sub_10024DC10();
        sub_10024DCA4(v24, v19);

        v63 = v23;
        v64 = 0;
        v25 = [(_NFReaderSession *)self _readNdefMessageFromTag:v19 rawLength:&v64 error:&v63];
        v16 = v63;

        if (v25)
        {
          v26 = v16 == 0;
        }

        else
        {
          v26 = 0;
        }

        v27 = v26;
        if (v16 && [v16 code] == 64)
        {
LABEL_44:

          v13 = v61;
          goto LABEL_45;
        }

        v62 = v27;
        if (v25)
        {
          asData = [v25 asData];
          v29 = [asData length];

          v30 = sub_10024DC10();
          sub_10024E250(v30, v29);
        }

        v31 = sub_10019117C(self->_driverWrapper, v19, 0);
        if ([v19 type])
        {
          type = [v19 type];
        }

        else
        {
          type = sub_10019093C(self->_driverWrapper, v19);
        }

        v33 = type;
        v34 = sub_10024DC10();
        if (v34)
        {
          v34[166] = self->_serviceType == 2;
        }

        v35 = sub_10024DC10();
        sub_10024DD78(v35, v19, v33);

        v60 = v31 == 51;
        v13 = v61;
        if (v25)
        {
          [messagesCopy addObject:v25];
          v36 = [[NFTagInternal alloc] initWithNFTagForUIDOnly:v19];
          if (v36)
          {
            [tagsCopy addObject:v36];
          }

          if (v62)
          {
            if ((self->_sessionConfig & 0x40) != 0 || v31 == 51)
            {
              goto LABEL_44;
            }

            goto LABEL_38;
          }
        }

        if (v31 != 51)
        {
LABEL_38:

          continue;
        }

LABEL_49:
        errorCopy3 = error;
        goto LABEL_52;
      }
    }

    v15 = [v13 countByEnumeratingWithState:&v66 objects:v74 count:16];
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_45:

LABEL_51:
  errorCopy3 = error;
  if (!v60)
  {
    goto LABEL_54;
  }

LABEL_52:
  v48 = [NSError alloc];
  v38 = [NSString stringWithUTF8String:"nfcd"];
  v70[0] = NSLocalizedDescriptionKey;
  v49 = [NSString stringWithUTF8String:"RF Deactivated"];
  v71[0] = v49;
  v71[1] = &off_100333B40;
  v70[1] = @"Line";
  v70[2] = @"Method";
  v50 = [[NSString alloc] initWithFormat:@"%s", sel_getName(sel)];
  v71[2] = v50;
  v70[3] = NSDebugDescriptionErrorKey;
  2717 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(sel), 2717];
  v71[3] = 2717;
  v52 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:4];
  v37 = [v48 initWithDomain:v38 code:51 userInfo:v52];

  v13 = v61;
LABEL_53:

  v16 = v37;
LABEL_54:
  if (errorCopy3)
  {
    v53 = v16;
    *errorCopy3 = v16;
  }

  return v16 == 0;
}

- (BOOL)_processRawTagsForCoreNFC:(id)c requireDiscoveryRestart:(BOOL *)restart supportedTags:(id)tags caEvents:(id)events outError:(id *)error outConnectedTagIndex:(unint64_t *)index
{
  cCopy = c;
  tagsCopy = tags;
  eventsCopy = events;
  if (error)
  {
    *error = 0;
  }

  v96 = eventsCopy;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v14 = cCopy;
  v15 = [v14 countByEnumeratingWithState:&v105 objects:v123 count:16];
  v99 = v14;
  if (!v15)
  {
    v17 = 0;
    goto LABEL_80;
  }

  v16 = v15;
  errorCopy = error;
  v17 = 0;
  v18 = *v106;
  while (2)
  {
    for (i = 0; i != v16; i = i + 1)
    {
      if (*v106 != v18)
      {
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v105 + 1) + 8 * i);
      if (![v20 type] || objc_msgSend(v20, "type") == 10)
      {
        continue;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v22 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v25 = 45;
        if (isMetaClass)
        {
          v25 = 43;
        }

        v22(6, "%c[%{public}s %{public}s]:%i tag: %{public}@", v25, ClassName, Name, 2741, v20);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v26 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = object_getClass(self);
        if (class_isMetaClass(v27))
        {
          v28 = 43;
        }

        else
        {
          v28 = 45;
        }

        v29 = object_getClassName(self);
        v30 = sel_getName(a2);
        *buf = 67110146;
        v114 = v28;
        v14 = v99;
        v115 = 2082;
        v116 = v29;
        v117 = 2082;
        v118 = v30;
        v119 = 1024;
        v120 = 2741;
        v121 = 2114;
        v122 = v20;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i tag: %{public}@", buf, 0x2Cu);
      }

      if (v17)
      {
        v31 = sub_10019117C(self->_driverWrapper, v17, 0);
        if (v31)
        {
          if (v31 == 51)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v71 = NFLogGetLogger();
            if (v71)
            {
              v72 = v71;
              v73 = object_getClass(self);
              v74 = class_isMetaClass(v73);
              v75 = object_getClassName(self);
              v94 = sel_getName(a2);
              v76 = 45;
              if (v74)
              {
                v76 = 43;
              }

              v72(6, "%c[%{public}s %{public}s]:%i Tag deactivated", v76, v75, v94, 2748);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v77 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
            {
              v78 = object_getClass(self);
              if (class_isMetaClass(v78))
              {
                v79 = 43;
              }

              else
              {
                v79 = 45;
              }

              v80 = object_getClassName(self);
              v81 = sel_getName(a2);
              *buf = 67109890;
              v114 = v79;
              v115 = 2082;
              v116 = v80;
              v117 = 2082;
              v118 = v81;
              v119 = 1024;
              v120 = 2748;
              _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Tag deactivated", buf, 0x22u);
            }

            if (errorCopy)
            {
              v82 = [NSError alloc];
              v83 = [NSString stringWithUTF8String:"nfcd"];
              v111[0] = NSLocalizedDescriptionKey;
              v84 = [NSString stringWithUTF8String:"RF Deactivated"];
              v112[0] = v84;
              v112[1] = &off_100333B58;
              v111[1] = @"Line";
              v111[2] = @"Method";
              v85 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
              v112[2] = v85;
              v111[3] = NSDebugDescriptionErrorKey;
              2749 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 2749];
              v112[3] = 2749;
              v87 = [NSDictionary dictionaryWithObjects:v112 forKeys:v111 count:4];
              *errorCopy = [v82 initWithDomain:v83 code:51 userInfo:v87];
            }

            goto LABEL_110;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v32 = NFLogGetLogger();
          if (v32)
          {
            v33 = v32;
            v34 = object_getClass(self);
            v35 = class_isMetaClass(v34);
            v36 = object_getClassName(self);
            v92 = sel_getName(a2);
            v37 = 45;
            if (v35)
            {
              v37 = 43;
            }

            v33(3, "%c[%{public}s %{public}s]:%i Failed to disconnect tag", v37, v36, v92, 2753);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v38 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = object_getClass(self);
            if (class_isMetaClass(v39))
            {
              v40 = 43;
            }

            else
            {
              v40 = 45;
            }

            v41 = object_getClassName(self);
            v42 = sel_getName(a2);
            *buf = 67109890;
            v114 = v40;
            v14 = v99;
            v115 = 2082;
            v116 = v41;
            v117 = 2082;
            v118 = v42;
            v119 = 1024;
            v120 = 2753;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to disconnect tag", buf, 0x22u);
          }
        }
      }

      buf[0] = 0;
      pollOption = self->_pollOption;
      if ((pollOption & 4) != 0)
      {
        if ([v20 type] == 8)
        {
          v104 = 0;
          v44 = [(_NFReaderSession *)self _processISO15693TagForCoreNFC:v20 outError:&v104];
          v45 = v104;
          goto LABEL_61;
        }

        pollOption = self->_pollOption;
      }

      if ((pollOption & 8) != 0 && -[NFServiceWhitelistChecker nfcTagReaderAccess](self->_tagWhiteList, "nfcTagReaderAccess") && ([v20 type] == 3 || objc_msgSend(v20, "type") == 6 || objc_msgSend(v20, "type") == 2 || objc_msgSend(v20, "type") == 5 || objc_msgSend(v20, "type") == 9) && (self->_sessionConfig & 8) == 0)
      {
        v103 = 0;
        v44 = [(_NFReaderSession *)self _processISO14443TagForCoreNFC:v20 tagIsConnected:buf outError:&v103];
        v46 = v103;
        if (!v44)
        {
          goto LABEL_73;
        }

        goto LABEL_62;
      }

      if ((self->_pollOption & 0x10) != 0 && -[NFServiceWhitelistChecker nfcTagReaderAccess](self->_tagWhiteList, "nfcTagReaderAccess") && [v20 type] == 7)
      {
        v102 = 0;
        v44 = [(_NFReaderSession *)self _processFelicaTagForCoreNFC:v20 outError:&v102];
        v45 = v102;
        goto LABEL_61;
      }

      if ((self->_pollOption & 8) == 0 || !-[NFServiceWhitelistChecker nfcVASReaderAccess](self->_tagWhiteList, "nfcVASReaderAccess") || [v20 type] != 3 && objc_msgSend(v20, "type") != 6 || (self->_sessionConfig & 8) == 0)
      {
        if ((self->_pollOption & 2) == 0 || ![(NFServiceWhitelistChecker *)self->_tagWhiteList nfcNDEFReaderAccess]|| (self->_sessionConfig & 0x10) == 0)
        {
          v44 = 0;
          v17 = 0;
LABEL_74:

          continue;
        }

        v101 = 0;
        v44 = [(_NFReaderSession *)self _processNDEFTagForCoreNFC:v20 outError:&v101];
        v45 = v101;
LABEL_61:
        v46 = v45;
        buf[0] = v44 != 0;
        if (!v44)
        {
          goto LABEL_73;
        }

        goto LABEL_62;
      }

      v50 = [NFTagInternal alloc];
      v109[0] = @"type";
      v51 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v20 type]);
      v110[0] = v51;
      v109[1] = @"technology";
      v52 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v20 technology]);
      v110[1] = v52;
      v109[2] = @"UID";
      v53 = [v20 UID];
      v110[2] = v53;
      v54 = [NSDictionary dictionaryWithObjects:v110 forKeys:v109 count:3];
      v44 = [v50 initWithDictionary:v54];

      v14 = v99;
      v46 = 0;
      if (!v44)
      {
LABEL_73:
        v17 = 0;
        if (!v46)
        {
          goto LABEL_74;
        }

        goto LABEL_67;
      }

LABEL_62:
      if (buf[0])
      {
        v47 = v44;
      }

      else
      {
        v47 = 0;
      }

      v17 = v47;
      [tagsCopy addObject:v44];
      if ((self->_sessionConfig & 0x40) != 0)
      {

        goto LABEL_80;
      }

      if (!v46)
      {
        goto LABEL_74;
      }

LABEL_67:
      if ([v46 code] == 51)
      {
        if (errorCopy)
        {
LABEL_97:
          v70 = v46;
          *errorCopy = v46;
        }

LABEL_110:
        v69 = 0;
        v68 = v96;
        goto LABEL_111;
      }

      code = [v46 code];
      v49 = code;
      if (errorCopy && code == 64)
      {
        goto LABEL_97;
      }

      if (v49 == 64)
      {
        goto LABEL_110;
      }
    }

    v16 = [v14 countByEnumeratingWithState:&v105 objects:v123 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_80:

  if (![tagsCopy count])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v56 = NFLogGetLogger();
    if (v56)
    {
      v57 = v56;
      v58 = object_getClass(self);
      v59 = class_isMetaClass(v58);
      v60 = object_getClassName(self);
      v93 = sel_getName(a2);
      v61 = 45;
      if (v59)
      {
        v61 = 43;
      }

      v90 = v60;
      v14 = v99;
      v57(6, "%c[%{public}s %{public}s]:%i No supported tag found", v61, v90, v93, 2813);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v62 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = object_getClass(self);
      if (class_isMetaClass(v63))
      {
        v64 = 43;
      }

      else
      {
        v64 = 45;
      }

      v65 = object_getClassName(self);
      v66 = sel_getName(a2);
      *buf = 67109890;
      v114 = v64;
      v115 = 2082;
      v116 = v65;
      v117 = 2082;
      v118 = v66;
      v119 = 1024;
      v120 = 2813;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No supported tag found", buf, 0x22u);
    }

    goto LABEL_94;
  }

  if (!v17)
  {
    currentTag = self->_currentTag;
    self->_currentTag = 0;

LABEL_94:
    v55 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_95;
  }

  self->_uiStateOnInvalidation = 1;
  objc_storeStrong(&self->_currentTag, v17);
  v55 = [tagsCopy indexOfObject:v17];
LABEL_95:
  v68 = v96;
  *index = v55;
  v69 = 1;
LABEL_111:

  return v69;
}

- (id)_processISO15693TagForCoreNFC:(id)c outError:(id *)error
{
  cCopy = c;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v9 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v13 = 45;
    if (isMetaClass)
    {
      v13 = 43;
    }

    v9(6, "%c[%{public}s %{public}s]:%i ", v13, ClassName, Name, 2830);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = object_getClass(self);
    if (class_isMetaClass(v15))
    {
      v16 = 43;
    }

    else
    {
      v16 = 45;
    }

    *buf = 67109890;
    v92 = v16;
    v93 = 2082;
    v94 = object_getClassName(self);
    v95 = 2082;
    v96 = sel_getName(a2);
    v97 = 1024;
    v98 = 2830;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  driverWrapper = self->_driverWrapper;
  if (!driverWrapper || (v18 = sub_100190BD0(driverWrapper, cCopy, 0)) == 0)
  {
    tagWhiteList = self->_tagWhiteList;
    if ((self->_sessionConfig & 0x20) == 0)
    {
      if ([(NFServiceWhitelistChecker *)tagWhiteList nfcTagReaderAccess])
      {
        errorCopy2 = error;
        v29 = [NFTagInternal alloc];
        v85[0] = @"type";
        v30 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [cCopy type]);
        v86[0] = v30;
        v85[1] = @"technology";
        v31 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [cCopy technology]);
        v86[1] = v31;
        v85[2] = @"identifier";
        tagID = [cCopy tagID];
        v86[2] = tagID;
        v85[3] = @"UID";
        v33 = [cCopy UID];
        v86[3] = v33;
        v34 = v86;
        v35 = v85;
        goto LABEL_40;
      }

LABEL_41:
      v62 = sub_10019117C(self->_driverWrapper, cCopy, 0);
      if (!v62)
      {
        goto LABEL_57;
      }

      v63 = v62;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v64 = NFLogGetLogger();
      if (v64)
      {
        v65 = v64;
        v66 = object_getClass(self);
        v67 = class_isMetaClass(v66);
        v68 = object_getClassName(self);
        v81 = sel_getName(a2);
        v69 = 45;
        if (v67)
        {
          v69 = 43;
        }

        v65(3, "%c[%{public}s %{public}s]:%i Failed to disconnect tag", v69, v68, v81, 2866);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v70 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        v71 = object_getClass(self);
        if (class_isMetaClass(v71))
        {
          v72 = 43;
        }

        else
        {
          v72 = 45;
        }

        v73 = object_getClassName(self);
        v74 = sel_getName(a2);
        *buf = 67109890;
        v92 = v72;
        v93 = 2082;
        v94 = v73;
        v95 = 2082;
        v96 = v74;
        v97 = 1024;
        v98 = 2866;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to disconnect tag", buf, 0x22u);
      }

      if (!error)
      {
        goto LABEL_57;
      }

      v20 = [NSError alloc];
      v21 = [NSString stringWithUTF8String:"nfcd"];
      v22 = v63;
      v83[0] = NSLocalizedDescriptionKey;
      if (v63 >= 0x4C)
      {
        v75 = 76;
      }

      else
      {
        v75 = v63;
      }

      v23 = [NSString stringWithUTF8String:off_10031B2E8[v75]];
      v84[0] = v23;
      v84[1] = &off_100333B88;
      v83[1] = @"Line";
      v83[2] = @"Method";
      v24 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v84[2] = v24;
      v83[3] = NSDebugDescriptionErrorKey;
      2867 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 2867];
      v84[3] = 2867;
      v26 = v84;
      v27 = v83;
      goto LABEL_56;
    }

    if ([(NFServiceWhitelistChecker *)tagWhiteList nfcISO15693ReaderAccess])
    {
      v36 = self->_tagWhiteList;
      tagID2 = [cCopy tagID];
      LODWORD(v36) = [(NFServiceWhitelistChecker *)v36 validateISO15693TagAcesssWithUID:tagID2];

      if (!v36)
      {
        errorCopy2 = error;
        v29 = [NFTagInternal alloc];
        v87[0] = @"type";
        v30 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [cCopy type]);
        v88[0] = v30;
        v87[1] = @"technology";
        v31 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [cCopy technology]);
        v88[1] = v31;
        v87[2] = @"identifier";
        tagID = [cCopy tagID];
        v88[2] = tagID;
        v87[3] = @"UID";
        v33 = [cCopy UID];
        v88[3] = v33;
        v34 = v88;
        v35 = v87;
LABEL_40:
        v60 = [NSDictionary dictionaryWithObjects:v34 forKeys:v35 count:4];
        v61 = [v29 initWithDictionary:v60];

        error = errorCopy2;
        if (v61)
        {
          goto LABEL_58;
        }

        goto LABEL_41;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v38 = NFLogGetLogger();
      if (v38)
      {
        v39 = v38;
        v40 = object_getClass(self);
        v41 = class_isMetaClass(v40);
        v42 = object_getClassName(self);
        v79 = sel_getName(a2);
        v43 = 45;
        if (v41)
        {
          v43 = 43;
        }

        v39(3, "%c[%{public}s %{public}s]:%i Tag and entitlement value do not match", v43, v42, v79, 2850);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v44 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

      v45 = object_getClass(self);
      if (class_isMetaClass(v45))
      {
        v46 = 43;
      }

      else
      {
        v46 = 45;
      }

      v47 = object_getClassName(self);
      v48 = sel_getName(a2);
      *buf = 67109890;
      v92 = v46;
      v93 = 2082;
      v94 = v47;
      v95 = 2082;
      v96 = v48;
      v97 = 1024;
      v98 = 2850;
      v49 = "%c[%{public}s %{public}s]:%i Tag and entitlement value do not match";
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v50 = NFLogGetLogger();
      if (v50)
      {
        v51 = v50;
        v52 = object_getClass(self);
        v53 = class_isMetaClass(v52);
        v54 = object_getClassName(self);
        v80 = sel_getName(a2);
        v55 = 45;
        if (v53)
        {
          v55 = 43;
        }

        v51(3, "%c[%{public}s %{public}s]:%i Missing required entitlement for NFCISO15693ReaderSession", v55, v54, v80, 2853);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v44 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

      v56 = object_getClass(self);
      if (class_isMetaClass(v56))
      {
        v57 = 43;
      }

      else
      {
        v57 = 45;
      }

      v58 = object_getClassName(self);
      v59 = sel_getName(a2);
      *buf = 67109890;
      v92 = v57;
      v93 = 2082;
      v94 = v58;
      v95 = 2082;
      v96 = v59;
      v97 = 1024;
      v98 = 2853;
      v49 = "%c[%{public}s %{public}s]:%i Missing required entitlement for NFCISO15693ReaderSession";
    }

    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, v49, buf, 0x22u);
LABEL_38:

    goto LABEL_41;
  }

  if (error)
  {
    v19 = v18;
    v20 = [NSError alloc];
    v21 = [NSString stringWithUTF8String:"nfcd"];
    v22 = v19;
    v89[0] = NSLocalizedDescriptionKey;
    v23 = [NSString stringWithUTF8String:off_10031B2E8[v19]];
    v90[0] = v23;
    v90[1] = &off_100333B70;
    v89[1] = @"Line";
    v89[2] = @"Method";
    v24 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v90[2] = v24;
    v89[3] = NSDebugDescriptionErrorKey;
    2867 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 2834];
    v90[3] = 2867;
    v26 = v90;
    v27 = v89;
LABEL_56:
    v76 = [NSDictionary dictionaryWithObjects:v26 forKeys:v27 count:4];
    *error = [v20 initWithDomain:v21 code:v22 userInfo:v76];
  }

LABEL_57:
  v61 = 0;
LABEL_58:

  return v61;
}

- (id)_processIso14Tag:(id)tag connected:(BOOL *)connected appFound:(id *)found updatedTag:(id *)updatedTag
{
  tagCopy = tag;
  if (connected)
  {
    *connected = 0;
  }

  v11 = self->_iso7816AppList;
  if ((self->_sessionConfig & 0x100) == 0)
  {
    v12 = 0;
LABEL_42:
    v65 = sub_100190BD0(self->_driverWrapper, tagCopy, updatedTag);
    if (v65 - 35 <= 0x1D && ((1 << (v65 - 35)) & 0x20010001) != 0)
    {
      v67 = v65;
      v68 = [NSError alloc];
      v49 = [NSString stringWithUTF8String:"nfcd"];
      v69 = v67;
      v97[0] = NSLocalizedDescriptionKey;
      v70 = [NSString stringWithUTF8String:off_10031B2E8[v67]];
      v98[0] = v70;
      v98[1] = &off_100333BA0;
      v97[1] = @"Line";
      v97[2] = @"Method";
      v71 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v98[2] = v71;
      v97[3] = NSDebugDescriptionErrorKey;
      2914 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 2914];
      v98[3] = 2914;
      v73 = [NSDictionary dictionaryWithObjects:v98 forKeys:v97 count:4];
      v34 = [v68 initWithDomain:v49 code:v69 userInfo:v73];

      goto LABEL_47;
    }

    if (connected)
    {
      *connected = 1;
    }

    if ((v12 & 1) != 0 || (self->_sessionConfig & 0x400) == 0)
    {
      v94 = 0;
      [(_NFReaderSession *)self _findAppFromSet:v11 tag:tagCopy foundApp:found outError:&v94];
      v75 = v94;
LABEL_56:
      v34 = v75;
      goto LABEL_48;
    }

    if ([tagCopy type] == 3 || objc_msgSend(tagCopy, "type") == 6)
    {
      v75 = [(_NFReaderSession *)self detectPaceAppOnTag:tagCopy appFound:found];
      goto LABEL_56;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v77 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v81 = 45;
      if (isMetaClass)
      {
        v81 = 43;
      }

      v77(6, "%c[%{public}s %{public}s]:%i Only ISODEP tag supports PACE", v81, ClassName, Name, 2924);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v82 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      v83 = object_getClass(self);
      if (class_isMetaClass(v83))
      {
        v84 = 43;
      }

      else
      {
        v84 = 45;
      }

      v85 = object_getClassName(self);
      v86 = sel_getName(a2);
      *buf = 67109890;
      v104 = v84;
      v105 = 2082;
      v106 = v85;
      v107 = 2082;
      v108 = v86;
      v109 = 1024;
      v110 = 2924;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Only ISODEP tag supports PACE", buf, 0x22u);
    }

    v87 = [NSError alloc];
    v49 = [NSString stringWithUTF8String:"nfcd"];
    v95 = NSLocalizedDescriptionKey;
    v50 = [NSString stringWithUTF8String:"Tag Not Found"];
    v96 = v50;
    v51 = [NSDictionary dictionaryWithObjects:&v96 forKeys:&v95 count:1];
    v52 = v87;
    v53 = v49;
    v54 = 28;
LABEL_30:
    v34 = [v52 initWithDomain:v53 code:v54 userInfo:v51];

LABEL_47:
    goto LABEL_48;
  }

  if ([tagCopy type] != 5)
  {
    goto LABEL_18;
  }

  *buf = 0;
  tagB = [tagCopy tagB];
  pupi = [tagB pupi];
  v92 = v11;
  v15 = [[NSData alloc] initWithBytes:buf length:4];
  v16 = [pupi isEqualToData:v15];

  v11 = v92;
  if (!v16)
  {
LABEL_18:
    if ((self->_pollingConfig & 0x1000) != 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v36 = NFLogGetLogger();
      if (v36)
      {
        v37 = v36;
        v38 = object_getClass(self);
        v39 = class_isMetaClass(v38);
        v40 = object_getClassName(self);
        v89 = sel_getName(a2);
        v41 = 45;
        if (v39)
        {
          v41 = 43;
        }

        v37(4, "%c[%{public}s %{public}s]:%i Expected a different tag type.  Removing RF frame from polling config.", v41, v40, v89, 2898);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v42 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = object_getClass(self);
        if (class_isMetaClass(v43))
        {
          v44 = 43;
        }

        else
        {
          v44 = 45;
        }

        v45 = object_getClassName(self);
        v46 = sel_getName(a2);
        *buf = 67109890;
        v104 = v44;
        v105 = 2082;
        v106 = v45;
        v107 = 2082;
        v108 = v46;
        v109 = 1024;
        v110 = 2898;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Expected a different tag type.  Removing RF frame from polling config.", buf, 0x22u);
      }

      self->_pollingConfig &= ~0x1000u;
      driverWrapper = self->_driverWrapper;
      [(_NFReaderSession *)self _getTagNotificationConfig];
      sub_1001E0DA4(driverWrapper);
      v48 = [NSError alloc];
      v49 = [NSString stringWithUTF8String:"nfcd"];
      v99 = NSLocalizedDescriptionKey;
      v50 = [NSString stringWithUTF8String:"RF Deactivated"];
      v100 = v50;
      v51 = [NSDictionary dictionaryWithObjects:&v100 forKeys:&v99 count:1];
      v52 = v48;
      v53 = v49;
      v54 = 51;
      goto LABEL_30;
    }

    v12 = 0;
    v35 = &stru_10031B748;
    goto LABEL_41;
  }

  pollingConfig = self->_pollingConfig;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v18 = NFLogGetLogger();
  v19 = v18;
  if ((pollingConfig & 0x1000) != 0)
  {
    if (v18)
    {
      v55 = object_getClass(self);
      v56 = class_isMetaClass(v55);
      v57 = object_getClassName(self);
      v90 = sel_getName(a2);
      v58 = 45;
      if (v56)
      {
        v58 = 43;
      }

      v19(5, "%c[%{public}s %{public}s]:%i Found zeros PUPI tag", v58, v57, v90, 2890);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v59 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = object_getClass(self);
      if (class_isMetaClass(v60))
      {
        v61 = 43;
      }

      else
      {
        v61 = 45;
      }

      v62 = object_getClassName(self);
      v63 = sel_getName(a2);
      *buf = 67109890;
      v104 = v61;
      v105 = 2082;
      v106 = v62;
      v107 = 2082;
      v108 = v63;
      v109 = 1024;
      v110 = 2890;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Found zeros PUPI tag", buf, 0x22u);
    }

    v12 = 1;
    v35 = &stru_10031B728;
    v11 = v92;
LABEL_41:
    v64 = [NSPredicate predicateWithBlock:v35];
    [(NSMutableOrderedSet *)v11 filterUsingPredicate:v64];

    goto LABEL_42;
  }

  if (v18)
  {
    v20 = object_getClass(self);
    v21 = class_isMetaClass(v20);
    v22 = object_getClassName(self);
    v88 = sel_getName(a2);
    v23 = 45;
    if (v21)
    {
      v23 = 43;
    }

    v19(5, "%c[%{public}s %{public}s]:%i Switching to RF frame", v23, v22, v88, 2884);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v24 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = object_getClass(self);
    if (class_isMetaClass(v25))
    {
      v26 = 43;
    }

    else
    {
      v26 = 45;
    }

    v27 = object_getClassName(self);
    v28 = sel_getName(a2);
    *buf = 67109890;
    v104 = v26;
    v105 = 2082;
    v106 = v27;
    v107 = 2082;
    v108 = v28;
    v109 = 1024;
    v110 = 2884;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Switching to RF frame", buf, 0x22u);
  }

  self->_pollingConfig |= 0x1000u;
  v29 = self->_driverWrapper;
  [(_NFReaderSession *)self _getTagNotificationConfig];
  sub_1001E0DA4(v29);
  v30 = [NSError alloc];
  v31 = [NSString stringWithUTF8String:"nfcd"];
  v101 = NSLocalizedDescriptionKey;
  v32 = [NSString stringWithUTF8String:"RF Deactivated"];
  v102 = v32;
  v33 = [NSDictionary dictionaryWithObjects:&v102 forKeys:&v101 count:1];
  v34 = [v30 initWithDomain:v31 code:51 userInfo:v33];

  v11 = v92;
LABEL_48:

  return v34;
}

- (id)_processMifareTag:(id)tag connected:(BOOL *)connected isMifare:(BOOL *)mifare
{
  tagCopy = tag;
  if (*connected)
  {
    v10 = sub_10019117C(self->_driverWrapper, tagCopy, 0);
    *connected = 0;
    if (v10)
    {
      v11 = v10;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v13 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v17 = 45;
        if (isMetaClass)
        {
          v17 = 43;
        }

        v13(3, "%c[%{public}s %{public}s]:%i Failed to disconnect tag", v17, ClassName, Name, 2945);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v18 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = object_getClass(self);
        if (class_isMetaClass(v19))
        {
          v20 = 43;
        }

        else
        {
          v20 = 45;
        }

        *buf = 67109890;
        v66 = v20;
        v67 = 2082;
        v68 = object_getClassName(self);
        v69 = 2082;
        v70 = sel_getName(a2);
        v71 = 1024;
        v72 = 2945;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to disconnect tag", buf, 0x22u);
      }

      v21 = [NSError alloc];
      v22 = [NSString stringWithUTF8String:"nfcd"];
      v23 = v11;
      v77[0] = NSLocalizedDescriptionKey;
      if (v11 >= 0x4C)
      {
        v24 = 76;
      }

      else
      {
        v24 = v11;
      }

      v25 = [NSString stringWithUTF8String:off_10031B2E8[v24]];
      v78[0] = v25;
      v78[1] = &off_100333BB8;
      v77[1] = @"Line";
      v77[2] = @"Method";
      v26 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v78[2] = v26;
      v77[3] = NSDebugDescriptionErrorKey;
      2946 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 2946];
      v78[3] = 2946;
      v28 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:4];
      v29 = [v21 initWithDomain:v22 code:v23 userInfo:v28];

LABEL_34:
      goto LABEL_35;
    }
  }

  driverWrapper = self->_driverWrapper;
  if (driverWrapper)
  {
    v31 = sub_100190BD0(driverWrapper, tagCopy, 0);
    if (v31)
    {
      LODWORD(v32) = v31;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v33 = NFLogGetLogger();
      if (v33)
      {
        v34 = v33;
        v35 = object_getClass(self);
        v36 = class_isMetaClass(v35);
        v37 = object_getClassName(self);
        v62 = sel_getName(a2);
        v38 = 45;
        if (v36)
        {
          v38 = 43;
        }

        v34(3, "%c[%{public}s %{public}s]:%i Failed to reconnect tag after check", v38, v37, v62, 2953);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v39 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = object_getClass(self);
        if (class_isMetaClass(v40))
        {
          v41 = 43;
        }

        else
        {
          v41 = 45;
        }

        *buf = 67109890;
        v66 = v41;
        v67 = 2082;
        v68 = object_getClassName(self);
        v69 = 2082;
        v70 = sel_getName(a2);
        v71 = 1024;
        v72 = 2953;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to reconnect tag after check", buf, 0x22u);
      }

      *connected = 0;
      v42 = [NSError alloc];
      v22 = [NSString stringWithUTF8String:"nfcd"];
      if (v32 == 35 || v32 == 64)
      {
        v32 = v32;
      }

      else
      {
        v32 = 51;
      }

      v75[0] = NSLocalizedDescriptionKey;
      v25 = [NSString stringWithUTF8String:off_10031B2E8[v32]];
      v76[0] = v25;
      v76[1] = &off_100333BD0;
      v75[1] = @"Line";
      v75[2] = @"Method";
      v44 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v76[2] = v44;
      v75[3] = NSDebugDescriptionErrorKey;
      2958 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 2958];
      v76[3] = 2958;
      v46 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:4];
      v29 = [v42 initWithDomain:v22 code:v32 userInfo:v46];

      goto LABEL_34;
    }
  }

  *connected = 1;
  v64 = 0;
  v48 = [(_NFReaderSession *)self _queryMifareType:tagCopy outError:&v64];
  v49 = v64;
  v22 = v49;
  if (v49 && [v49 code])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v50 = NFLogGetLogger();
    if (v50)
    {
      v51 = v50;
      v52 = object_getClass(self);
      v53 = class_isMetaClass(v52);
      v60 = object_getClassName(self);
      v63 = sel_getName(a2);
      v54 = 45;
      if (v53)
      {
        v54 = 43;
      }

      v51(4, "%c[%{public}s %{public}s]:%i Failed to query for MiFare tag.  Will assume it isnt one - error=%{public}@", v54, v60, v63, 2966, v22);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v55 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v56 = object_getClass(self);
      if (class_isMetaClass(v56))
      {
        v57 = 43;
      }

      else
      {
        v57 = 45;
      }

      v58 = object_getClassName(self);
      v59 = sel_getName(a2);
      *buf = 67110146;
      v66 = v57;
      v67 = 2082;
      v68 = v58;
      v69 = 2082;
      v70 = v59;
      v71 = 1024;
      v72 = 2966;
      v73 = 2114;
      v74 = v22;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to query for MiFare tag.  Will assume it isnt one - error=%{public}@", buf, 0x2Cu);
    }

    if ([v22 code] != 51)
    {
      sub_10019117C(self->_driverWrapper, tagCopy, 0);
      *connected = 0;
    }

    v22 = v22;
    v29 = v22;
  }

  else if (v48)
  {
    [tagCopy _setType:v48];
    v29 = 0;
    if (v48 <= 0x10 && ((1 << v48) & 0x1C200) != 0)
    {
      v29 = 0;
      *mifare = 1;
    }
  }

  else
  {
    v29 = 0;
  }

LABEL_35:

  return v29;
}

- (id)_processISO14443TagForCoreNFC:(id)c tagIsConnected:(BOOL *)connected outError:(id *)error
{
  cCopy = c;
  v94 = 0;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v11 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v15 = 45;
    if (isMetaClass)
    {
      v15 = 43;
    }

    v11(6, "%c[%{public}s %{public}s]:%i ", v15, ClassName, Name, 2995);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = object_getClass(self);
    if (class_isMetaClass(v17))
    {
      v18 = 43;
    }

    else
    {
      v18 = 45;
    }

    *buf = 67109890;
    v100 = v18;
    v101 = 2082;
    v102 = object_getClassName(self);
    v103 = 2082;
    v104 = sel_getName(a2);
    v105 = 1024;
    v106 = 2995;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  *connected = 0;
  sessionConfig = self->_sessionConfig;
  if ([cCopy type] == 9 && -[_NFReaderSession _isCoreNFCSession](self, "_isCoreNFCSession") && self->_sessionType == 5)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFLogGetLogger();
    if (v20)
    {
      v21 = v20;
      v22 = object_getClass(self);
      v23 = class_isMetaClass(v22);
      v24 = object_getClassName(self);
      v83 = sel_getName(a2);
      v25 = 45;
      if (v23)
      {
        v25 = 43;
      }

      v21(6, "%c[%{public}s %{public}s]:%i MIFARE is not supported in payment tag reader session", v25, v24, v83, 3001);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = object_getClass(self);
      if (class_isMetaClass(v27))
      {
        v28 = 43;
      }

      else
      {
        v28 = 45;
      }

      v29 = object_getClassName(self);
      v30 = sel_getName(a2);
      *buf = 67109890;
      v100 = v28;
      v101 = 2082;
      v102 = v29;
      v103 = 2082;
      v104 = v30;
      v105 = 1024;
      v106 = 3001;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i MIFARE is not supported in payment tag reader session", buf, 0x22u);
    }

LABEL_28:
    v35 = 0;
    goto LABEL_67;
  }

  if ([cCopy type] == 9)
  {
    v26 = 0;
  }

  else
  {
    v92 = 0;
    v93 = 0;
    v31 = [(_NFReaderSession *)self _processIso14Tag:cCopy connected:connected appFound:&v93 updatedTag:&v92];
    v26 = v93;
    v32 = v92;
    v33 = v32;
    if (v31)
    {
      if (error)
      {
        v34 = v31;
        *error = v31;
      }

      goto LABEL_28;
    }

    if (v32)
    {
      v36 = v32;

      cCopy = v36;
    }

    if (v26)
    {
      goto LABEL_40;
    }
  }

  if ((sessionConfig & 0x400) == 0)
  {
    if (!self->_skipMifareClassification && (self->_pollOption & 0x20) == 0 && ([cCopy type] == 3 || objc_msgSend(cCopy, "type") == 9))
    {
      v37 = [(_NFReaderSession *)self _processMifareTag:cCopy connected:connected isMifare:&v94];
      if (v37)
      {
        if (error)
        {
          v37 = v37;
          v35 = 0;
          *error = v37;
        }

        else
        {
          v35 = 0;
        }

        v26 = v37;
        goto LABEL_67;
      }
    }

LABEL_47:
    if (v94 == 1)
    {
      v91 = v26;
      v46 = [NFTagInternal alloc];
      v97[0] = @"type";
      connectedCopy = connected;
      v47 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [cCopy type]);
      v98[0] = v47;
      v97[1] = @"technology";
      +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [cCopy technology]);
      v48 = v86 = error;
      v98[1] = v48;
      v97[2] = @"identifier";
      [cCopy tagID];
      v50 = v49 = a2;
      v98[2] = v50;
      v97[3] = @"UID";
      v51 = [cCopy UID];
      v98[3] = v51;
      v97[4] = @"historicalBytes";
      historicalBytes = [cCopy historicalBytes];
      v98[4] = historicalBytes;
      v53 = [NSDictionary dictionaryWithObjects:v98 forKeys:v97 count:5];
      v35 = [v46 initWithDictionary:v53];

      connected = connectedCopy;
      a2 = v49;

      error = v86;
      goto LABEL_50;
    }

LABEL_49:
    v91 = v26;
    v35 = 0;
    if (!*connected)
    {
LABEL_66:
      v26 = v91;
      goto LABEL_67;
    }

LABEL_50:
    v54 = sub_10019117C(self->_driverWrapper, cCopy, 0);
    if (v54)
    {
      v55 = v54;
      errorCopy = error;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v57 = NFLogGetLogger();
      if (v57)
      {
        v58 = v57;
        v59 = object_getClass(self);
        v60 = class_isMetaClass(v59);
        v61 = object_getClassName(self);
        v84 = sel_getName(a2);
        v62 = 45;
        if (v60)
        {
          v62 = 43;
        }

        v58(3, "%c[%{public}s %{public}s]:%i Failed to disconnect tag", v62, v61, v84, 3055);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v63 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v64 = object_getClass(self);
        if (class_isMetaClass(v64))
        {
          v65 = 43;
        }

        else
        {
          v65 = 45;
        }

        v66 = object_getClassName(self);
        v67 = sel_getName(a2);
        *buf = 67109890;
        v100 = v65;
        v101 = 2082;
        v102 = v66;
        v103 = 2082;
        v104 = v67;
        v105 = 1024;
        v106 = 3055;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to disconnect tag", buf, 0x22u);
      }

      if (errorCopy)
      {
        v68 = errorCopy;
        v90 = [NSError alloc];
        v69 = [NSString stringWithUTF8String:"nfcd"];
        connectedCopy2 = connected;
        v71 = a2;
        v87 = v55;
        v95[0] = NSLocalizedDescriptionKey;
        if (v55 >= 0x4C)
        {
          v72 = 76;
        }

        else
        {
          v72 = v55;
        }

        v73 = [NSString stringWithUTF8String:off_10031B2E8[v72]];
        v96[0] = v73;
        v96[1] = &off_100333BE8;
        v95[1] = @"Line";
        v95[2] = @"Method";
        v74 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v75 = v68;
        v76 = v74;
        v96[2] = v74;
        v95[3] = NSDebugDescriptionErrorKey;
        v77 = [NSString alloc];
        v78 = v71;
        connected = connectedCopy2;
        3056 = [v77 initWithFormat:@"%s:%d", sel_getName(v78), 3056];
        v96[3] = 3056;
        v80 = [NSDictionary dictionaryWithObjects:v96 forKeys:v95 count:4];
        *v75 = [v90 initWithDomain:v69 code:v87 userInfo:v80];
      }
    }

    *connected = 0;
    goto LABEL_66;
  }

LABEL_40:
  if (!v26)
  {
    goto LABEL_47;
  }

  errorCopy2 = error;
  connectedCopy3 = connected;
  v38 = a2;
  v39 = [NSMutableDictionary alloc];
  v40 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [cCopy type]);
  v41 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [cCopy technology]);
  tagID = [cCopy tagID];
  v43 = [cCopy UID];
  v44 = [v39 initWithObjectsAndKeys:{v40, @"type", v41, @"technology", tagID, @"identifier", v43, @"UID", 0}];

  [v44 setObject:v26 forKey:@"selectedAID"];
  if ([cCopy type] == 3 || objc_msgSend(cCopy, "type") == 2 || objc_msgSend(cCopy, "type") == 1)
  {
    historicalBytes2 = [cCopy historicalBytes];
    [v44 setObject:historicalBytes2 forKey:@"historicalBytes"];
  }

  v35 = [[NFTagInternal alloc] initWithDictionary:v44];

  a2 = v38;
  error = errorCopy2;
  connected = connectedCopy3;
  if (!v35)
  {
    goto LABEL_49;
  }

LABEL_67:

  return v35;
}

- (id)_processFelicaTagForCoreNFC:(id)c outError:(id *)error
{
  cCopy = c;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v9 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v13 = 45;
    if (isMetaClass)
    {
      v13 = 43;
    }

    v9(6, "%c[%{public}s %{public}s]:%i ", v13, ClassName, Name, 3065);
  }

  errorCopy = error;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = object_getClass(self);
    if (class_isMetaClass(v15))
    {
      v16 = 43;
    }

    else
    {
      v16 = 45;
    }

    *buf = 67109890;
    v159 = v16;
    v160 = 2082;
    v161 = object_getClassName(self);
    v162 = 2082;
    v163 = sel_getName(a2);
    v164 = 1024;
    v165 = 3065;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  driverWrapper = self->_driverWrapper;
  if (driverWrapper)
  {
    v18 = sub_100190BD0(driverWrapper, cCopy, 0);
    if (v18)
    {
      v19 = v18;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v20 = NFLogGetLogger();
      if (v20)
      {
        v21 = v20;
        v22 = object_getClass(self);
        v23 = class_isMetaClass(v22);
        v24 = object_getClassName(self);
        v118 = sel_getName(a2);
        v25 = 45;
        if (v23)
        {
          v25 = 43;
        }

        v21(3, "%c[%{public}s %{public}s]:%i Failed to connect tag", v25, v24, v118, 3069);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v26 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = object_getClass(self);
        if (class_isMetaClass(v27))
        {
          v28 = 43;
        }

        else
        {
          v28 = 45;
        }

        v29 = object_getClassName(self);
        v30 = sel_getName(a2);
        *buf = 67109890;
        v159 = v28;
        v160 = 2082;
        v161 = v29;
        v162 = 2082;
        v163 = v30;
        v164 = 1024;
        v165 = 3069;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to connect tag", buf, 0x22u);
      }

      if (!errorCopy)
      {
        v52 = 0;
        goto LABEL_90;
      }

      v31 = [NSError alloc];
      v32 = [NSString stringWithUTF8String:"nfcd"];
      v33 = v19;
      v156[0] = NSLocalizedDescriptionKey;
      v34 = [NSString stringWithUTF8String:off_10031B2E8[v19]];
      v157[0] = v34;
      v157[1] = &off_100333C00;
      v156[1] = @"Line";
      v156[2] = @"Method";
      v35 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v157[2] = v35;
      v156[3] = NSDebugDescriptionErrorKey;
      3070 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 3070];
      v157[3] = 3070;
      v37 = [NSDictionary dictionaryWithObjects:v157 forKeys:v156 count:4];
      *errorCopy = [v31 initWithDomain:v32 code:v33 userInfo:v37];

      goto LABEL_87;
    }
  }

  v145 = 0;
  [(_NFReaderSession *)self _updateFelicaTagInfo:cCopy outError:&v145];
  v38 = v145;
  v32 = v38;
  selfCopy = self;
  if (!v38 || [v38 code] != 51 && objc_msgSend(v32, "code") != 64)
  {
    v144 = v32;
    [(_NFReaderSession *)self _wildcardPollSystemCodeForTag:cCopy outError:&v144];
    v54 = v53 = self;
    v55 = v144;

    v121 = v54;
    if (v54)
    {
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v56 = v53->_feliCaSystemCodeList;
      v57 = [(NSMutableArray *)v56 countByEnumeratingWithState:&v140 objects:v153 count:16];
      v32 = v55;
      if (v57)
      {
        v58 = v57;
        v59 = *v141;
LABEL_42:
        v60 = 0;
        while (1)
        {
          if (*v141 != v59)
          {
            objc_enumerationMutation(v56);
          }

          if ([*(*(&v140 + 1) + 8 * v60) isEqual:v54])
          {
            break;
          }

          if (v58 == ++v60)
          {
            v58 = [(NSMutableArray *)v56 countByEnumeratingWithState:&v140 objects:v153 count:16];
            if (v58)
            {
              goto LABEL_42;
            }

            goto LABEL_48;
          }
        }

        if (v32)
        {
          goto LABEL_50;
        }

        v139 = 0;
        v68 = [(_NFReaderSession *)selfCopy _getIDMFromFelicaTagForCoreNFC:cCopy systemCode:v54 outError:&v139];
        v106 = v139;
        v32 = v106;
        if (error)
        {
          if (v106)
          {
            v124 = cCopy;
            v107 = [NSError alloc];
            v108 = [NSString stringWithUTF8String:"nfcd"];
            code = [v32 code];
            v151[0] = NSLocalizedDescriptionKey;
            v132 = code;
            v110 = a2;
            if ([v32 code] > 75)
            {
              code2 = 76;
            }

            else
            {
              code2 = [v32 code];
            }

            v112 = [NSString stringWithUTF8String:off_10031B2E8[code2]];
            v152[0] = v112;
            v152[1] = v32;
            v151[1] = NSUnderlyingErrorKey;
            v151[2] = @"Line";
            v152[2] = &off_100333C30;
            v151[3] = @"Method";
            v113 = [[NSString alloc] initWithFormat:@"%s", sel_getName(v110)];
            v152[3] = v113;
            v151[4] = NSDebugDescriptionErrorKey;
            3103 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(v110), 3103];
            v152[4] = 3103;
            v115 = [NSDictionary dictionaryWithObjects:v152 forKeys:v151 count:5];
            v116 = [v107 initWithDomain:v108 code:v132 userInfo:v115];
            *error = v116;

            a2 = v110;
            cCopy = v124;
          }

          else
          {
            *error = 0;
          }
        }

        v53 = selfCopy;
        if (v68)
        {
          goto LABEL_83;
        }
      }

      else
      {
LABEL_48:

LABEL_50:
        v53 = selfCopy;
      }
    }

    else
    {
      v32 = v55;
    }

    sel = a2;
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    obj = v53->_feliCaSystemCodeList;
    v61 = [(NSMutableArray *)obj countByEnumeratingWithState:&v135 objects:v150 count:16];
    if (v61)
    {
      v62 = v61;
      v63 = *v136;
      v64 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
      v122 = *v136;
      v123 = cCopy;
LABEL_54:
      v65 = 0;
      v66 = v32;
      v125 = v62;
      while (1)
      {
        if (*v136 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v67 = *(*(&v135 + 1) + 8 * v65);
        v134 = v66;
        v68 = [(_NFReaderSession *)v53 _getIDMFromFelicaTagForCoreNFC:cCopy systemCode:v67 outError:&v134];
        v32 = v134;

        if (error)
        {
          if (v32)
          {
            v69 = [NSError alloc];
            v70 = [v64[475] stringWithUTF8String:"nfcd"];
            code3 = [v32 code];
            v148[0] = NSLocalizedDescriptionKey;
            v72 = v64[475];
            v130 = v68;
            if ([v32 code] > 75)
            {
              code4 = 76;
            }

            else
            {
              code4 = [v32 code];
            }

            v74 = [v72 stringWithUTF8String:off_10031B2E8[code4]];
            v149[0] = v74;
            v149[1] = v32;
            v148[1] = NSUnderlyingErrorKey;
            v148[2] = @"Line";
            v149[2] = &off_100333C48;
            v148[3] = @"Method";
            v75 = [objc_alloc(v64[475]) initWithFormat:@"%s", sel_getName(sel)];
            v149[3] = v75;
            v148[4] = NSDebugDescriptionErrorKey;
            v76 = objc_alloc(v64[475]);
            v77 = v64;
            v78 = v32;
            3113 = [v76 initWithFormat:@"%s:%d", sel_getName(sel), 3113];
            v149[4] = 3113;
            v80 = [NSDictionary dictionaryWithObjects:v149 forKeys:v148 count:5];
            v81 = [v69 initWithDomain:v70 code:code3 userInfo:v80];
            error = errorCopy;
            *errorCopy = v81;

            v32 = v78;
            v64 = v77;

            cCopy = v123;
            v62 = v125;
            v53 = selfCopy;
            v63 = v122;
            v68 = v130;
          }

          else
          {
            *error = 0;
          }
        }

        if (v68)
        {
          break;
        }

        v65 = v65 + 1;
        v66 = v32;
        if (v62 == v65)
        {
          v62 = [(NSMutableArray *)obj countByEnumeratingWithState:&v135 objects:v150 count:16];
          if (v62)
          {
            goto LABEL_54;
          }

          goto LABEL_67;
        }
      }
    }

    else
    {
LABEL_67:

      v82 = sub_10019117C(v53->_driverWrapper, cCopy, 0);
      if (!v82)
      {
        v68 = 0;
        goto LABEL_83;
      }

      v83 = v82;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v84 = NFLogGetLogger();
      if (v84)
      {
        v85 = v84;
        v86 = object_getClass(v53);
        v87 = class_isMetaClass(v86);
        v88 = object_getClassName(v53);
        v120 = sel_getName(sel);
        v89 = 45;
        if (v87)
        {
          v89 = 43;
        }

        v85(3, "%c[%{public}s %{public}s]:%i Failed to disconnect tag", v89, v88, v120, 3124);
      }

      v131 = v32;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v90 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        v91 = object_getClass(v53);
        if (class_isMetaClass(v91))
        {
          v92 = 43;
        }

        else
        {
          v92 = 45;
        }

        v93 = object_getClassName(v53);
        v94 = sel_getName(sel);
        *buf = 67109890;
        v159 = v92;
        v160 = 2082;
        v161 = v93;
        v162 = 2082;
        v163 = v94;
        v164 = 1024;
        v165 = 3124;
        _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to disconnect tag", buf, 0x22u);
      }

      if (!error)
      {
        v68 = 0;
        goto LABEL_83;
      }

      v95 = [NSError alloc];
      v96 = [NSString stringWithUTF8String:"nfcd"];
      v146[0] = NSLocalizedDescriptionKey;
      if (v83 >= 0x4C)
      {
        v97 = 76;
      }

      else
      {
        v97 = v83;
      }

      v98 = [NSString stringWithUTF8String:off_10031B2E8[v97]];
      v147[0] = v98;
      v147[1] = &off_100333C60;
      v146[1] = @"Line";
      v146[2] = @"Method";
      v99 = [[NSString alloc] initWithFormat:@"%s", sel_getName(sel)];
      v147[2] = v99;
      v146[3] = NSDebugDescriptionErrorKey;
      3125 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(sel), 3125];
      v147[3] = 3125;
      v101 = [NSDictionary dictionaryWithObjects:v147 forKeys:v146 count:4];
      obj = v96;
      *errorCopy = [v95 initWithDomain:v96 code:v83 userInfo:v101];

      v68 = 0;
      v32 = v131;
    }

LABEL_83:
    v34 = v68;
    v52 = v34;
    v35 = v121;
LABEL_88:

    goto LABEL_89;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v39 = NFLogGetLogger();
  if (v39)
  {
    v40 = v39;
    v41 = object_getClass(self);
    v42 = class_isMetaClass(v41);
    v43 = object_getClassName(self);
    v119 = sel_getName(a2);
    v44 = 45;
    if (v42)
    {
      v44 = 43;
    }

    v40(3, "%c[%{public}s %{public}s]:%i Tag deactivated or failed to retrieve info", v44, v43, v119, 3080);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v45 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    v46 = object_getClass(self);
    if (class_isMetaClass(v46))
    {
      v47 = 43;
    }

    else
    {
      v47 = 45;
    }

    v48 = object_getClassName(self);
    v49 = sel_getName(a2);
    *buf = 67109890;
    v159 = v47;
    v160 = 2082;
    v161 = v48;
    v162 = 2082;
    v163 = v49;
    v164 = 1024;
    v165 = 3080;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Tag deactivated or failed to retrieve info", buf, 0x22u);
  }

  if (error)
  {
    v129 = [NSError alloc];
    v34 = [NSString stringWithUTF8String:"nfcd"];
    code5 = [v32 code];
    v154[0] = NSLocalizedDescriptionKey;
    if ([v32 code] > 75)
    {
      code6 = 76;
    }

    else
    {
      code6 = [v32 code];
    }

    v35 = [NSString stringWithUTF8String:off_10031B2E8[code6]];
    v155[0] = v35;
    v155[1] = v32;
    v154[1] = NSUnderlyingErrorKey;
    v154[2] = @"Line";
    v155[2] = &off_100333C18;
    v154[3] = @"Method";
    v102 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v155[3] = v102;
    v154[4] = NSDebugDescriptionErrorKey;
    3081 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 3081];
    v155[4] = 3081;
    v104 = [NSDictionary dictionaryWithObjects:v155 forKeys:v154 count:5];
    *errorCopy = [v129 initWithDomain:v34 code:code5 userInfo:v104];

LABEL_87:
    v52 = 0;
    goto LABEL_88;
  }

  v52 = 0;
LABEL_89:

LABEL_90:

  return v52;
}

- (id)_getIDMFromFelicaTagForCoreNFC:(id)c systemCode:(id)code outError:(id *)error
{
  cCopy = c;
  codeCopy = code;
  v38 = 0;
  v39 = 0;
  v11 = [(_NFReaderSession *)self _getIDMFromTag:cCopy systemCode:codeCopy outIdm:&v39 outPmm:&v38];
  v12 = v39;
  v13 = v38;
  v14 = v13;
  if (!v11 && v13 && v12)
  {
    v15 = [NFTagInternal alloc];
    v48[0] = @"type";
    v16 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [cCopy type]);
    v49[0] = v16;
    v48[1] = @"technology";
    v17 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [cCopy technology]);
    v49[1] = v17;
    v49[2] = v12;
    v48[2] = @"identifier";
    v48[3] = @"PMm";
    v49[3] = v14;
    v48[4] = @"UID";
    v18 = [cCopy UID];
    v48[5] = @"SystemCode";
    v49[4] = v18;
    v49[5] = codeCopy;
    v19 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:6];
    v20 = [v15 initWithDictionary:v19];
  }

  else
  {
    sel = a2;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v22 = Logger;
      Class = object_getClass(self);
      errorCopy = error;
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(sel);
      v27 = !isMetaClass;
      error = errorCopy;
      v28 = 45;
      if (!v27)
      {
        v28 = 43;
      }

      v22(3, "%c[%{public}s %{public}s]:%i Failed to read IDM info", v28, ClassName, Name, 3147);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v29 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = object_getClass(self);
      if (class_isMetaClass(v30))
      {
        v31 = 43;
      }

      else
      {
        v31 = 45;
      }

      v32 = object_getClassName(self);
      v33 = sel_getName(sel);
      *buf = 67109890;
      v41 = v31;
      v42 = 2082;
      v43 = v32;
      v44 = 2082;
      v45 = v33;
      v46 = 1024;
      v47 = 3147;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to read IDM info", buf, 0x22u);
    }

    if (error)
    {
      v34 = v11;
      v20 = 0;
      *error = v11;
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (id)_processNDEFTagForCoreNFC:(id)c outError:(id *)error
{
  cCopy = c;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v9 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v13 = 45;
    if (isMetaClass)
    {
      v13 = 43;
    }

    v9(6, "%c[%{public}s %{public}s]:%i ", v13, ClassName, Name, 3156);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = object_getClass(self);
    if (class_isMetaClass(v15))
    {
      v16 = 43;
    }

    else
    {
      v16 = 45;
    }

    *buf = 67109890;
    v101 = v16;
    v102 = 2082;
    v103 = object_getClassName(self);
    v104 = 2082;
    v105 = sel_getName(a2);
    v106 = 1024;
    v107 = 3156;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  driverWrapper = self->_driverWrapper;
  if (!driverWrapper || (v18 = sub_100190BD0(driverWrapper, cCopy, 0)) == 0)
  {
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v90 = 0;
    [(_NFReaderSession *)self _updateFelicaTagInfo:cCopy outError:&v90];
    v40 = v90;
    v41 = v40;
    if (v40 && ([v40 code] == 51 || objc_msgSend(v41, "code") == 64))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v42 = NFLogGetLogger();
      if (v42)
      {
        v43 = v42;
        v44 = object_getClass(self);
        v45 = class_isMetaClass(v44);
        v46 = object_getClassName(self);
        v86 = sel_getName(a2);
        v47 = 45;
        if (v45)
        {
          v47 = 43;
        }

        v43(3, "%c[%{public}s %{public}s]:%i Tag deactivated or failed to retrieve info", v47, v46, v86, 3172);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v48 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 = object_getClass(self);
        if (class_isMetaClass(v49))
        {
          v50 = 43;
        }

        else
        {
          v50 = 45;
        }

        v51 = object_getClassName(self);
        v52 = sel_getName(a2);
        *buf = 67109890;
        v101 = v50;
        v102 = 2082;
        v103 = v51;
        v104 = 2082;
        v105 = v52;
        v106 = 1024;
        v107 = 3172;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Tag deactivated or failed to retrieve info", buf, 0x22u);
      }

      if (!error)
      {
        goto LABEL_69;
      }

      errorCopy3 = error;
      v53 = [NSError alloc];
      v54 = [NSString stringWithUTF8String:"nfcd"];
      code = [v41 code];
      v96[0] = NSLocalizedDescriptionKey;
      if ([v41 code] > 75)
      {
        code2 = 76;
      }

      else
      {
        code2 = [v41 code];
      }

      v59 = [NSString stringWithUTF8String:off_10031B2E8[code2]];
      v97[0] = v59;
      v97[1] = v41;
      v96[1] = NSUnderlyingErrorKey;
      v96[2] = @"Line";
      v97[2] = &off_100333C90;
      v96[3] = @"Method";
      v60 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v97[3] = v60;
      v96[4] = NSDebugDescriptionErrorKey;
      3173 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 3173];
      v97[4] = 3173;
      v62 = v97;
      v63 = v96;
      v64 = 5;
LABEL_68:
      v81 = [NSDictionary dictionaryWithObjects:v62 forKeys:v63 count:v64];
      *errorCopy3 = [v53 initWithDomain:v54 code:code userInfo:v81];

LABEL_69:
      v39 = 0;
LABEL_70:

      goto LABEL_71;
    }

    v57 = sub_10024DC10();
    sub_10024DCA4(v57, cCopy);

    if (!sub_1001916A4(self->_driverWrapper, cCopy, &v91, error))
    {
LABEL_53:
      v65 = sub_10019117C(self->_driverWrapper, cCopy, 0);
      if (!v65)
      {
        goto LABEL_69;
      }

      v66 = v65;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v67 = NFLogGetLogger();
      if (v67)
      {
        v68 = v67;
        v69 = object_getClass(self);
        v70 = class_isMetaClass(v69);
        v89 = v66;
        v71 = v41;
        errorCopy2 = error;
        v73 = object_getClassName(self);
        v87 = sel_getName(a2);
        v74 = 45;
        if (v70)
        {
          v74 = 43;
        }

        v83 = v73;
        error = errorCopy2;
        v41 = v71;
        v66 = v89;
        v68(3, "%c[%{public}s %{public}s]:%i Failed to disconnect tag", v74, v83, v87, 3202);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v75 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        v76 = object_getClass(self);
        if (class_isMetaClass(v76))
        {
          v77 = 43;
        }

        else
        {
          v77 = 45;
        }

        v78 = object_getClassName(self);
        v79 = sel_getName(a2);
        *buf = 67109890;
        v101 = v77;
        v102 = 2082;
        v103 = v78;
        v104 = 2082;
        v105 = v79;
        v106 = 1024;
        v107 = 3202;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to disconnect tag", buf, 0x22u);
      }

      if (!error)
      {
        goto LABEL_69;
      }

      errorCopy3 = error;
      v53 = [NSError alloc];
      v54 = [NSString stringWithUTF8String:"nfcd"];
      code = v66;
      v94[0] = NSLocalizedDescriptionKey;
      if (v66 >= 0x4C)
      {
        v80 = 76;
      }

      else
      {
        v80 = v66;
      }

      v59 = [NSString stringWithUTF8String:off_10031B2E8[v80]];
      v95[0] = v59;
      v95[1] = &off_100333CA8;
      v94[1] = @"Line";
      v94[2] = @"Method";
      v60 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v95[2] = v60;
      v94[3] = NSDebugDescriptionErrorKey;
      3173 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 3203];
      v95[3] = 3173;
      v62 = v95;
      v63 = v94;
      v64 = 4;
      goto LABEL_68;
    }

    if (v91)
    {
      if (v93)
      {
        if ((v93 & 0x100) != 0)
        {
          v58 = 4;
        }

        else
        {
          v58 = 3;
        }

        goto LABEL_51;
      }
    }

    else if (v93)
    {
      if ((v93 & 0x100) != 0)
      {
        v58 = 2;
      }

      else
      {
        v58 = 3;
      }

LABEL_51:
      [cCopy _setNDEFAvailability:v58];
      [cCopy _setNDEFContainerSize:v92];
      [cCopy _setNDEFMessageSize:v91];
      if (v58)
      {
        v39 = [[NFTagInternal alloc] initWithNFTagForUIDOnly:cCopy];
        if (v39)
        {
          goto LABEL_70;
        }
      }

      goto LABEL_53;
    }

    v58 = 0;
    goto LABEL_51;
  }

  v19 = v18;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v20 = NFLogGetLogger();
  if (v20)
  {
    v21 = v20;
    v22 = object_getClass(self);
    v23 = class_isMetaClass(v22);
    v24 = object_getClassName(self);
    v85 = sel_getName(a2);
    v25 = 45;
    if (v23)
    {
      v25 = 43;
    }

    v21(3, "%c[%{public}s %{public}s]:%i Failed to connect tag", v25, v24, v85, 3160);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v26 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = object_getClass(self);
    if (class_isMetaClass(v27))
    {
      v28 = 43;
    }

    else
    {
      v28 = 45;
    }

    v29 = object_getClassName(self);
    v30 = sel_getName(a2);
    *buf = 67109890;
    v101 = v28;
    v102 = 2082;
    v103 = v29;
    v104 = 2082;
    v105 = v30;
    v106 = 1024;
    v107 = 3160;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to connect tag", buf, 0x22u);
  }

  if (error)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v33 = v19;
    v98[0] = NSLocalizedDescriptionKey;
    v34 = [NSString stringWithUTF8String:off_10031B2E8[v19]];
    v99[0] = v34;
    v99[1] = &off_100333C78;
    v98[1] = @"Line";
    v98[2] = @"Method";
    v35 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v99[2] = v35;
    v98[3] = NSDebugDescriptionErrorKey;
    errorCopy4 = error;
    3161 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 3161];
    v99[3] = 3161;
    v38 = [NSDictionary dictionaryWithObjects:v99 forKeys:v98 count:4];
    *errorCopy4 = [v31 initWithDomain:v32 code:v33 userInfo:v38];
  }

  v39 = 0;
LABEL_71:

  return v39;
}

- (id)_getNodeList
{
  selfCopy2 = self;
  v52 = objc_opt_new();
  v3 = 0;
  while (1)
  {
    v54[0] = v3;
    v54[1] = 0;
    v4 = [[NSMutableData alloc] initWithBytes:&unk_1002979EE length:2];
    currentTag = [(_NFReaderSession *)selfCopy2 currentTag];
    tagID = [currentTag tagID];
    [v4 appendData:tagID];

    [v4 appendBytes:v54 length:2];
    driverWrapper = [(_NFReaderSession *)selfCopy2 driverWrapper];
    currentTag2 = [(_NFReaderSession *)selfCopy2 currentTag];
    whitelistChecker = [(_NFReaderSession *)selfCopy2 whitelistChecker];
    [whitelistChecker sessionTimeLimit];
    v53 = 0;
    v10 = sub_1001960B0(driverWrapper, v4, currentTag2, &v53);
    v11 = v53;

    if (v11 || !v10)
    {
      break;
    }

    if (![v10 length])
    {
      v11 = 0;
      break;
    }

    bytes = [v10 bytes];
    v13 = bytes[5];
    if (v13 == 0xFFFF)
    {

LABEL_26:
      v34 = v52;
      if ([(_NFReaderSession *)selfCopy2 _getKeyVersionForNodes:v52])
      {
        allValues = [v52 allValues];
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v36 = Logger;
          Class = object_getClass(selfCopy2);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(selfCopy2);
          Name = sel_getName(a2);
          v40 = 45;
          if (isMetaClass)
          {
            v40 = 43;
          }

          v36(3, "%c[%{public}s %{public}s]:%i Failed to get key version for nodes", v40, ClassName, Name, 3268);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v41 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = object_getClass(selfCopy2);
          if (class_isMetaClass(v42))
          {
            v43 = 43;
          }

          else
          {
            v43 = 45;
          }

          v44 = object_getClassName(selfCopy2);
          v45 = sel_getName(a2);
          *buf = 67109890;
          v56 = v43;
          v57 = 2082;
          v58 = v44;
          v59 = 2082;
          v60 = v45;
          v61 = 1024;
          v62 = 3268;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get key version for nodes", buf, 0x22u);
        }

        allValues = 0;
      }

      goto LABEL_38;
    }

    v14 = bytes;
    if ([v10 length] == 12)
    {
      v15 = objc_opt_new();
      v16 = [[NSString alloc] initWithFormat:@"%04X", __rev16(v13)];
      v17 = v15;
      v18 = v16;
      v19 = @"areaCode";
LABEL_10:
      [v17 setObject:v18 forKeyedSubscript:v19];

      v21 = [NSNumber numberWithUnsignedShort:v13];
      [v52 setObject:v15 forKey:v21];

      goto LABEL_11;
    }

    if ([v10 length] == 14)
    {
      v15 = objc_opt_new();
      v20 = [[NSString alloc] initWithFormat:@"%04X", __rev16(v13)];
      [v15 setObject:v20 forKeyedSubscript:@"areaCode"];

      selfCopy2 = self;
      v16 = [[NSString alloc] initWithFormat:@"%04X", __rev16(v14[6])];
      v17 = v15;
      v18 = v16;
      v19 = @"endServiceCode";
      goto LABEL_10;
    }

LABEL_11:

    if (v3++ >= 0xFE)
    {
      goto LABEL_26;
    }
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v23 = NFLogGetLogger();
  if (v23)
  {
    v24 = v23;
    v25 = object_getClass(selfCopy2);
    v26 = class_isMetaClass(v25);
    v47 = object_getClassName(selfCopy2);
    v48 = sel_getName(a2);
    v27 = 45;
    if (v26)
    {
      v27 = 43;
    }

    v24(3, "%c[%{public}s %{public}s]:%i Failed to search service codes, error %{public}@", v27, v47, v48, 3239, v11);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v28 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = object_getClass(selfCopy2);
    if (class_isMetaClass(v29))
    {
      v30 = 43;
    }

    else
    {
      v30 = 45;
    }

    v31 = object_getClassName(selfCopy2);
    v32 = sel_getName(a2);
    *buf = 67110146;
    v56 = v30;
    v57 = 2082;
    v58 = v31;
    v59 = 2082;
    v60 = v32;
    v61 = 1024;
    v62 = 3239;
    v63 = 2114;
    v64 = v11;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to search service codes, error %{public}@", buf, 0x2Cu);
  }

  allValues = 0;
  v34 = v52;
LABEL_38:

  return allValues;
}

- (BOOL)_getKeyVersionForNodes:(id)nodes
{
  nodesCopy = nodes;
  v91 = 0;
  v5 = objc_opt_new();
  v81 = nodesCopy;
  [nodesCopy allKeys];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v6 = v90 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v87 objects:v102 count:16];
  v82 = v6;
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v88;
    v71 = a2;
    v72 = *v88;
    while (2)
    {
      v11 = 0;
      v73 = v8;
      do
      {
        if (*v88 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v87 + 1) + 8 * v11);
        if (!v5)
        {
          v5 = objc_opt_new();
        }

        v86[0] = [v12 unsignedShortValue];
        v86[1] = [v12 unsignedShortValue] >> 8;
        [v5 appendBytes:v86 length:2];
        if (++v91 >= 0x1Eu)
        {
          v77 = v11;
          v13 = objc_opt_new();
          v85 = 2;
          [v13 appendBytes:&v85 length:1];
          currentTag = [(_NFReaderSession *)self currentTag];
          tagID = [currentTag tagID];
          [v13 appendData:tagID];

          [v13 appendBytes:&v91 length:1];
          [v13 appendData:v5];
          v85 = [v13 length] + 1;
          v16 = [[NSMutableData alloc] initWithBytes:&v85 length:1];
          [v16 appendData:v13];
          driverWrapper = [(_NFReaderSession *)self driverWrapper];
          currentTag2 = [(_NFReaderSession *)self currentTag];
          whitelistChecker = [(_NFReaderSession *)self whitelistChecker];
          [whitelistChecker sessionTimeLimit];
          v84 = 0;
          v80 = v16;
          v20 = sub_1001960B0(driverWrapper, v16, currentTag2, &v84);
          v21 = v84;

          v78 = v20;
          if (v21 || !v20)
          {
            goto LABEL_31;
          }

          if (![v20 length])
          {
            v21 = 0;
LABEL_31:
            v57 = v21;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v59 = Logger;
              Class = object_getClass(self);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(self);
              Name = sel_getName(v71);
              v62 = 45;
              if (isMetaClass)
              {
                v62 = 43;
              }

              v59(3, "%c[%{public}s %{public}s]:%i Failed to get key versions, error %{public}@", v62, ClassName, Name, 3312, v21);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v63 = NFSharedLogGetLogger();
            v45 = v81;
            if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              v64 = object_getClass(self);
              if (class_isMetaClass(v64))
              {
                v65 = 43;
              }

              else
              {
                v65 = 45;
              }

              v66 = object_getClassName(self);
              v67 = sel_getName(v71);
              *buf = 67110146;
              v93 = v65;
              v94 = 2082;
              v95 = v66;
              v96 = 2082;
              v97 = v67;
              v98 = 1024;
              v99 = 3312;
              v100 = 2114;
              v101 = v21;
              _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get key versions, error %{public}@", buf, 0x2Cu);
            }

            v56 = 0;
            v34 = v6;
            v42 = v57;
            goto LABEL_42;
          }

          v75 = v5;
          bytes = [v20 bytes];
          v23 = bytes[10];
          if (bytes[10])
          {
            v24 = 0;
            v25 = (bytes + 11);
            do
            {
              v26 = (v9 + 1);
              v27 = *v25++;
              v28 = v9;
              v9 = v23;
              v29 = [v82 objectAtIndex:v28];
              unsignedShortValue = [v29 unsignedShortValue];

              v31 = [NSNumber numberWithUnsignedShort:unsignedShortValue];
              v32 = [v81 objectForKey:v31];

              v33 = [[NSString alloc] initWithFormat:@"%04X", __rev16(v27)];
              [v32 setObject:v33 forKeyedSubscript:@"keyVersion"];

              v23 = v9;
              ++v24;
              LODWORD(v9) = v26;
            }

            while (v24 < v23);
          }

          else
          {
            v26 = v9;
          }

          v91 = 0;
          v5 = objc_opt_new();

          v9 = v26;
          v6 = v82;
          v10 = v72;
          v8 = v73;
          v11 = v77;
        }

        v11 = v11 + 1;
      }

      while (v11 != v8);
      v8 = [v6 countByEnumeratingWithState:&v87 objects:v102 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v91)
  {
    v34 = objc_opt_new();
    buf[0] = 2;
    [v34 appendBytes:buf length:1];
    currentTag3 = [(_NFReaderSession *)self currentTag];
    tagID2 = [currentTag3 tagID];
    [v34 appendData:tagID2];

    [v34 appendBytes:&v91 length:1];
    [v34 appendData:v5];
    buf[0] = [v34 length] + 1;
    v37 = [[NSMutableData alloc] initWithBytes:buf length:1];
    [v37 appendData:v34];
    driverWrapper2 = [(_NFReaderSession *)self driverWrapper];
    currentTag4 = [(_NFReaderSession *)self currentTag];
    whitelistChecker2 = [(_NFReaderSession *)self whitelistChecker];
    [whitelistChecker2 sessionTimeLimit];
    v83 = 0;
    v41 = sub_1001960B0(driverWrapper2, v37, currentTag4, &v83);
    v42 = v83;

    if (!v42 && v41 && [v41 length])
    {
      v76 = v5;
      v79 = v41;
      bytes2 = [v41 bytes];
      v44 = bytes2[10];
      v45 = v81;
      if (bytes2[10])
      {
        v46 = 0;
        v47 = (bytes2 + 11);
        v48 = v9;
        do
        {
          v49 = v48 + 1;
          v50 = *v47++;
          v51 = [v6 objectAtIndex:v48];
          unsignedShortValue2 = [v51 unsignedShortValue];

          v53 = [NSNumber numberWithUnsignedShort:unsignedShortValue2];
          v54 = [v81 objectForKey:v53];

          v55 = [[NSString alloc] initWithFormat:@"%04X", __rev16(v50)];
          [v54 setObject:v55 forKeyedSubscript:@"keyVersion"];

          v6 = v82;
          ++v46;
          v48 = v49;
        }

        while (v46 < v44);
      }

      v91 = 0;

      v42 = 0;
      v56 = 1;
      v5 = v76;
    }

    else
    {

      v56 = 0;
      v45 = v81;
    }

LABEL_42:
  }

  else
  {
    v42 = 0;
    v56 = 1;
    v45 = v81;
  }

  return v56;
}

- (id)_wildcardPollSystemCodeForTag:(id)tag outError:(id *)error
{
  v30 = 1;
  v29 = -65530;
  tagCopy = tag;
  v8 = [[NSData alloc] initWithBytes:&v29 length:6];
  driverWrapper = [(_NFReaderSession *)self driverWrapper];
  whitelistChecker = [(_NFReaderSession *)self whitelistChecker];
  [whitelistChecker sessionTimeLimit];
  v28 = 0;
  v11 = sub_1001960B0(driverWrapper, v8, tagCopy, &v28);

  v12 = v28;
  if (v12 || [v11 length] != 20)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v15 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v19 = 45;
      if (isMetaClass)
      {
        v19 = 43;
      }

      v15(5, "%c[%{public}s %{public}s]:%i Unable to identify tag's system code", v19, ClassName, Name, 3393);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = object_getClass(self);
      if (class_isMetaClass(v21))
      {
        v22 = 43;
      }

      else
      {
        v22 = 45;
      }

      v23 = object_getClassName(self);
      v24 = sel_getName(a2);
      *buf = 67109890;
      v32 = v22;
      v33 = 2082;
      v34 = v23;
      v35 = 2082;
      v36 = v24;
      v37 = 1024;
      v38 = 3393;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Unable to identify tag's system code", buf, 0x22u);
    }

    v13 = 0;
    if (error && v12)
    {
      v25 = v12;
      v13 = 0;
      *error = v12;
    }
  }

  else
  {
    v13 = [[NSData alloc] initWithBytes:objc_msgSend(v11 length:{"bytes") + 18, 2}];
  }

  return v13;
}

- (id)_getSystemCodeListFromTag:(id)tag outError:(id *)error
{
  tagCopy = tag;
  v8 = objc_opt_new();
  v46 = 10;
  v9 = [[NSMutableData alloc] initWithBytes:&v46 length:1];
  v46 = 12;
  [v9 appendBytes:&v46 length:1];
  tagID = [tagCopy tagID];
  [v9 appendData:tagID];

  driverWrapper = [(_NFReaderSession *)self driverWrapper];
  whitelistChecker = [(_NFReaderSession *)self whitelistChecker];
  [whitelistChecker sessionTimeLimit];
  v45 = 0;
  v13 = sub_1001960B0(driverWrapper, v9, tagCopy, &v45);
  v14 = v45;

  v43 = v13;
  if ([v14 code] == 64)
  {
    if (!error)
    {
      v21 = v14;
      goto LABEL_25;
    }

    v15 = [NSError alloc];
    v40 = [NSString stringWithUTF8String:"nfcd"];
    code = [v14 code];
    v49[0] = NSLocalizedDescriptionKey;
    errorCopy2 = error;
    v38 = v15;
    if ([v14 code] > 75)
    {
      code2 = 76;
    }

    else
    {
      code2 = [v14 code];
    }

    v30 = [NSString stringWithUTF8String:off_10031B2E8[code2]];
    v50[0] = v30;
    v50[1] = v14;
    v49[1] = NSUnderlyingErrorKey;
    v49[2] = @"Line";
    v50[2] = &off_100333CC0;
    v49[3] = @"Method";
    v31 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v50[3] = v31;
    v49[4] = NSDebugDescriptionErrorKey;
    3424 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 3424];
    v50[4] = 3424;
    v33 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:5];
    v34 = v40;
    v35 = [v38 initWithDomain:v40 code:code userInfo:v33];
    v21 = v14;
    goto LABEL_24;
  }

  if (v14 || [v13 length] < 0xB)
  {
    v44 = v14;
    v26 = [(_NFReaderSession *)self _wildcardPollSystemCodeForTag:tagCopy outError:&v44];
    v21 = v44;

    if (v26)
    {
      [v8 addObject:v26];
    }

    if (error && v21)
    {
      v27 = [NSError alloc];
      v41 = [NSString stringWithUTF8String:"nfcd"];
      code3 = [v21 code];
      v47[0] = NSLocalizedDescriptionKey;
      errorCopy2 = error;
      v39 = v27;
      if ([v21 code] > 75)
      {
        code4 = 76;
      }

      else
      {
        code4 = [v21 code];
      }

      v30 = [NSString stringWithUTF8String:off_10031B2E8[code4]];
      v48[0] = v30;
      v48[1] = v21;
      v47[1] = NSUnderlyingErrorKey;
      v47[2] = @"Line";
      v48[2] = &off_100333CD8;
      v47[3] = @"Method";
      v31 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v48[3] = v31;
      v47[4] = NSDebugDescriptionErrorKey;
      3424 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 3450];
      v48[4] = 3424;
      v33 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:5];
      v34 = v41;
      v35 = [v39 initWithDomain:v41 code:code3 userInfo:v33];
LABEL_24:
      *errorCopy2 = v35;
    }
  }

  else
  {
    bytes = [v13 bytes];
    v18 = bytes[10];
    bytes2 = [v13 bytes];
    v20 = [v13 length];
    v21 = 0;
    if (v18)
    {
      v22 = &v20[bytes2];
      if ((bytes + 12) < &v20[bytes2])
      {
        v23 = (bytes + 11);
        do
        {
          v24 = [[NSData alloc] initWithBytes:v23 length:2];
          [v8 addObject:v24];

          v21 = 0;
          if (!--v18)
          {
            break;
          }

          v25 = v23 + 3;
          v23 += 2;
        }

        while (v25 < v22);
      }
    }
  }

LABEL_25:

  return v8;
}

- (id)_RequestService:(id)service
{
  serviceCopy = service;
  if ([serviceCopy count])
  {
    v46 = 0;
    v6 = [[NSMutableData alloc] initWithBytes:&v46 length:1];
    v46 = 2;
    [v6 appendBytes:&v46 length:1];
    currentTag = [(_NFReaderSession *)self currentTag];
    tagID = [currentTag tagID];
    [v6 appendData:tagID];

    v46 = [serviceCopy count];
    [v6 appendBytes:&v46 length:1];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v9 = serviceCopy;
    v10 = [v9 countByEnumeratingWithState:&v42 objects:v59 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v43;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v43 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [v6 appendData:*(*(&v42 + 1) + 8 * i)];
        }

        v11 = [v9 countByEnumeratingWithState:&v42 objects:v59 count:16];
      }

      while (v11);
    }

    v46 = [v6 length];
    [v6 replaceBytesInRange:0 withBytes:1 length:{&v46, 1}];
    driverWrapper = [(_NFReaderSession *)self driverWrapper];
    currentTag2 = [(_NFReaderSession *)self currentTag];
    whitelistChecker = [(_NFReaderSession *)self whitelistChecker];
    [whitelistChecker sessionTimeLimit];
    v41 = 0;
    v17 = sub_1001960E8(driverWrapper, v6, currentTag2, 2u, &v41);
    v18 = v41;

    if (v18)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v20 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v24 = 45;
        if (isMetaClass)
        {
          v24 = 43;
        }

        v20(3, "%c[%{public}s %{public}s]:%i Failed to request service with %d retries: %@", v24, ClassName, Name, 3488, 2, v18);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v25 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = object_getClass(self);
        if (class_isMetaClass(v26))
        {
          v27 = 43;
        }

        else
        {
          v27 = 45;
        }

        v28 = object_getClassName(self);
        v29 = sel_getName(a2);
        *buf = 67110402;
        v48 = v27;
        v49 = 2082;
        v50 = v28;
        v51 = 2082;
        v52 = v29;
        v53 = 1024;
        v54 = 3488;
        v55 = 1024;
        v56 = 2;
        v57 = 2112;
        v58 = v18;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to request service with %d retries: %@", buf, 0x32u);
      }

      v30 = objc_opt_new();
    }

    else
    {
      v30 = objc_opt_new();
      if ([v17 length] >= 0xB)
      {
        bytes = [v17 bytes];
        v32 = bytes[10];
        bytes2 = [v17 bytes];
        v34 = [v17 length];
        if (v32)
        {
          v35 = &v34[bytes2];
          if ((bytes + 12) < &v34[bytes2])
          {
            v36 = (bytes + 11);
            do
            {
              v37 = [[NSData alloc] initWithBytes:v36 length:2];
              [v30 addObject:v37];

              if (!--v32)
              {
                break;
              }

              v38 = v36 + 3;
              v36 += 2;
            }

            while (v38 < v35);
          }
        }
      }
    }
  }

  else
  {
    v30 = objc_opt_new();
  }

  return v30;
}

- (id)_RequestService:(id)service forSystemCode:(id)code
{
  serviceCopy = service;
  codeCopy = code;
  if ([codeCopy length] == 2)
  {
    if ([serviceCopy count])
    {
      currentTag = [(_NFReaderSession *)self currentTag];
      v66 = 0;
      v10 = [(_NFReaderSession *)self _getIDMFromTag:currentTag systemCode:codeCopy outIdm:&v66 outPmm:0];
      v11 = v66;

      if (v10)
      {
        currentTag2 = [(_NFReaderSession *)self currentTag];
        tagID = [currentTag2 tagID];

        v11 = tagID;
      }

      v57 = a2;
      v65 = 0;
      v14 = [[NSMutableData alloc] initWithBytes:&v65 length:1];
      v65 = 2;
      [v14 appendBytes:&v65 length:1];
      v58 = v11;
      [v14 appendData:v11];
      v65 = [serviceCopy count];
      [v14 appendBytes:&v65 length:1];
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v15 = serviceCopy;
      v16 = [v15 countByEnumeratingWithState:&v61 objects:v79 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v62;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v62 != v18)
            {
              objc_enumerationMutation(v15);
            }

            [v14 appendData:*(*(&v61 + 1) + 8 * i)];
          }

          v17 = [v15 countByEnumeratingWithState:&v61 objects:v79 count:16];
        }

        while (v17);
      }

      v65 = [v14 length];
      [v14 replaceBytesInRange:0 withBytes:1 length:{&v65, 1}];
      driverWrapper = [(_NFReaderSession *)self driverWrapper];
      currentTag3 = [(_NFReaderSession *)self currentTag];
      whitelistChecker = [(_NFReaderSession *)self whitelistChecker];
      [whitelistChecker sessionTimeLimit];
      v60 = v10;
      v23 = sub_1001960E8(driverWrapper, v14, currentTag3, 2u, &v60);
      v24 = v60;

      v59 = v24;
      if (v24)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v26 = Logger;
          Class = object_getClass(self);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(self);
          Name = sel_getName(v57);
          v30 = 45;
          if (isMetaClass)
          {
            v30 = 43;
          }

          v26(3, "%c[%{public}s %{public}s]:%i Failed to request service with %d retries: %@", v30, ClassName, Name, 3558, 2, v24);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v31 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = object_getClass(self);
          if (class_isMetaClass(v32))
          {
            v33 = 43;
          }

          else
          {
            v33 = 45;
          }

          v34 = object_getClassName(self);
          v35 = sel_getName(v57);
          *buf = 67110402;
          v68 = v33;
          v69 = 2082;
          v70 = v34;
          v71 = 2082;
          v72 = v35;
          v73 = 1024;
          v74 = 3558;
          v75 = 1024;
          v76 = 2;
          v77 = 2112;
          v78 = v24;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to request service with %d retries: %@", buf, 0x32u);
        }

        v36 = objc_opt_new();
      }

      else
      {
        v36 = objc_opt_new();
        if ([v23 length] >= 0xC)
        {
          bytes = [v23 bytes];
          v47 = bytes[10];
          bytes2 = [v23 bytes];
          v49 = [v23 length];
          if (v47)
          {
            v50 = v49 + bytes2;
            if ((bytes + 12) < v50)
            {
              v51 = (bytes + 11);
              do
              {
                v52 = [[NSData alloc] initWithBytes:v51 length:2];
                [v36 addObject:v52];

                if (!--v47)
                {
                  break;
                }

                v53 = (v51 + 3);
                v51 += 2;
              }

              while (v53 < v50);
            }
          }
        }
      }
    }

    else
    {
      v36 = objc_opt_new();
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFLogGetLogger();
    if (v37)
    {
      v38 = v37;
      v39 = object_getClass(self);
      v40 = class_isMetaClass(v39);
      v41 = object_getClassName(self);
      v56 = sel_getName(a2);
      v42 = 45;
      if (v40)
      {
        v42 = 43;
      }

      v38(3, "%c[%{public}s %{public}s]:%i Invalid systemCode. ", v42, v41, v56, 3513);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v43 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = object_getClass(self);
      if (class_isMetaClass(v44))
      {
        v45 = 43;
      }

      else
      {
        v45 = 45;
      }

      *buf = 67109890;
      v68 = v45;
      v69 = 2082;
      v70 = object_getClassName(self);
      v71 = 2082;
      v72 = sel_getName(a2);
      v73 = 1024;
      v74 = 3513;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid systemCode. ", buf, 0x22u);
    }

    v36 = 0;
  }

  return v36;
}

- (id)_getIDMFromTag:(id)tag systemCode:(id)code outIdm:(id *)idm outPmm:(id *)pmm
{
  tagCopy = tag;
  codeCopy = code;
  v43 = tagCopy;
  if ([codeCopy length] == 2)
  {
    pmmCopy = pmm;
    if ([(_NFReaderSession *)self _isCoreNFCSession])
    {
      v13 = 0;
    }

    else
    {
      v13 = 2;
    }

    bytes = [codeCopy bytes];
    v45 = 6;
    v46 = *bytes;
    v47 = bytes[1];
    v48 = 0;
    driverWrapper = [(_NFReaderSession *)self driverWrapper];
    v16 = [[NSData alloc] initWithBytes:&v45 length:6];
    whitelistChecker = [(_NFReaderSession *)self whitelistChecker];
    [whitelistChecker sessionTimeLimit];
    v44 = 0;
    v18 = sub_1001960E8(driverWrapper, v16, tagCopy, v13, &v44);
    v19 = v44;

    if (v19)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v21 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v25 = 45;
        if (isMetaClass)
        {
          v25 = 43;
        }

        v21(3, "%c[%{public}s %{public}s]:%i Failed to get IDM and PMM with %d retries: %@", v25, ClassName, Name, 3606, v13, v19);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v26 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = object_getClass(self);
        if (class_isMetaClass(v27))
        {
          v28 = 43;
        }

        else
        {
          v28 = 45;
        }

        v29 = object_getClassName(self);
        v30 = sel_getName(a2);
        *buf = 67110402;
        v52 = v28;
        v53 = 2082;
        v54 = v29;
        v55 = 2082;
        v56 = v30;
        v57 = 1024;
        v58 = 3606;
        v59 = 1024;
        v60 = v13;
        v61 = 2112;
        v62 = v19;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get IDM and PMM with %d retries: %@", buf, 0x32u);
      }

      v31 = v19;
    }

    else
    {
      bytes2 = [v18 bytes];
      if ([v18 length] == 18 && *bytes2 == 18 && bytes2[1] == 1)
      {
        if (idm)
        {
          *idm = [v18 subdataWithRange:{2, 8}];
        }

        if (pmmCopy)
        {
          [v18 subdataWithRange:{10, 8}];
          *pmmCopy = v31 = 0;
        }

        else
        {
          v31 = 0;
        }
      }

      else
      {
        v36 = [NSError alloc];
        v37 = [NSString stringWithUTF8String:"nfcd"];
        v49 = NSLocalizedDescriptionKey;
        v38 = [NSString stringWithUTF8String:"Unexpected Result"];
        v50 = v38;
        v39 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        v31 = [v36 initWithDomain:v37 code:13 userInfo:v39];
      }
    }
  }

  else
  {
    v32 = [NSError alloc];
    v19 = [NSString stringWithUTF8String:"nfcd"];
    v63 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v64 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    v31 = [v32 initWithDomain:v19 code:10 userInfo:v34];
  }

  return v31;
}

- (id)_getSystemInfo:(id)info outError:(id *)error
{
  infoCopy = info;
  if ([infoCopy length])
  {
    v48 = 1;
    v47 = 6;
    bytes = [infoCopy bytes];
    v9 = *bytes;
    BYTE2(v47) = *bytes;
    v10 = bytes[1];
    HIBYTE(v47) = bytes[1];
    v11 = [[NSData alloc] initWithBytes:&v47 length:6];
    driverWrapper = [(_NFReaderSession *)self driverWrapper];
    currentTag = [(_NFReaderSession *)self currentTag];
    whitelistChecker = [(_NFReaderSession *)self whitelistChecker];
    [whitelistChecker sessionTimeLimit];
    v46 = 0;
    v43 = v11;
    v42 = sub_1001960B0(driverWrapper, v11, currentTag, &v46);
    v15 = v46;

    if (v15)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v17 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v20 = 45;
        if (isMetaClass)
        {
          v20 = 43;
        }

        v17(3, "%c[%{public}s %{public}s]:%i System switch error: %{public}@", v20, ClassName, Name, 3647, v15);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v21 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = object_getClass(self);
        if (class_isMetaClass(v22))
        {
          v23 = 43;
        }

        else
        {
          v23 = 45;
        }

        v24 = object_getClassName(self);
        v25 = sel_getName(a2);
        *buf = 67110146;
        v50 = v23;
        v51 = 2082;
        v52 = v24;
        v53 = 2082;
        v54 = v25;
        v55 = 1024;
        v56 = 3647;
        v57 = 2114;
        v58 = v15;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i System switch error: %{public}@", buf, 0x2Cu);
      }

      if (error)
      {
        v26 = v15;
        v27 = 0;
        *error = v15;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      _getNodeList = [(_NFReaderSession *)self _getNodeList];
      if (_getNodeList)
      {
        v27 = objc_opt_new();
        v29 = [[NSString alloc] initWithFormat:@"%04x", v10 | (v9 << 8)];
        [v27 setObject:v29 forKeyedSubscript:@"systemCode"];

        currentTag2 = [(_NFReaderSession *)self currentTag];
        v44 = 0;
        v45 = 0;
        v15 = [(_NFReaderSession *)self _getIDMFromTag:currentTag2 systemCode:infoCopy outIdm:&v45 outPmm:&v44];
        v31 = v45;
        v32 = v44;

        if (v15)
        {
          currentTag3 = [(_NFReaderSession *)self currentTag];
          tagF = [currentTag3 tagF];
          v35 = [tagF IDm];

          currentTag4 = [(_NFReaderSession *)self currentTag];
          tagF2 = [currentTag4 tagF];
          v38 = [tagF2 PMm];

          v31 = v35;
          v32 = v38;
        }

        [v27 setObject:v31 forKeyedSubscript:@"idm"];
        [v27 setObject:v32 forKeyedSubscript:@"pmm"];
        [v27 setObject:_getNodeList forKeyedSubscript:@"areaCodeList"];
      }

      else
      {
        v15 = 0;
        v27 = 0;
      }
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (BOOL)_isFelicaPollingCommand:(id)command systemCode:(id *)code
{
  commandCopy = command;
  bytes = [commandCopy bytes];
  if (bytes && (v7 = bytes, v8 = *bytes, [commandCopy length] == v8) && !v7[1])
  {
    if (code)
    {
      *code = [commandCopy subdataWithRange:{2, 2}];
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unsigned)_validateFelicaCommand:(id)command
{
  commandCopy = command;
  bytes = [commandCopy bytes];
  v7 = *bytes;
  if ([commandCopy length] == v7)
  {
    v8 = bytes[1];
    if (bytes[1])
    {
      HIDWORD(v10) = v8 - 2;
      LODWORD(v10) = v8 - 2;
      v9 = v10 >> 1;
      v11 = v9 > 0x20;
      v12 = (1 << v9) & 0x1F90001BFLL;
      if (!v11 && v12 != 0)
      {
        if ([commandCopy length] <= 8)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v15 = Logger;
            Class = object_getClass(self);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(self);
            Name = sel_getName(a2);
            v18 = 45;
            if (isMetaClass)
            {
              v18 = 43;
            }

            v15(3, "%c[%{public}s %{public}s]:%i Invalid minimum length, packet: %{public}@", v18, ClassName, Name, 3728, commandCopy);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v19 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_50;
          }

          v20 = object_getClass(self);
          if (class_isMetaClass(v20))
          {
            v21 = 43;
          }

          else
          {
            v21 = 45;
          }

          *buf = 67110146;
          v61 = v21;
          v62 = 2082;
          v63 = object_getClassName(self);
          v64 = 2082;
          v65 = sel_getName(a2);
          v66 = 1024;
          v67 = 3728;
          v68 = 2114;
          v69 = commandCopy;
          v22 = "%c[%{public}s %{public}s]:%i Invalid minimum length, packet: %{public}@";
LABEL_49:
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v22, buf, 0x2Cu);
LABEL_50:
          v32 = 10;
LABEL_51:

          goto LABEL_52;
        }

        currentTag = [(_NFReaderSession *)self currentTag];
        tagID = [currentTag tagID];
        v35 = [commandCopy subdataWithRange:{2, 8}];
        v36 = [tagID isEqualToData:v35];

        if ((v36 & 1) == 0)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v44 = NFLogGetLogger();
          if (v44)
          {
            v45 = v44;
            v46 = object_getClass(self);
            v47 = class_isMetaClass(v46);
            v55 = object_getClassName(self);
            v59 = sel_getName(a2);
            v48 = 45;
            if (v47)
            {
              v48 = 43;
            }

            v45(3, "%c[%{public}s %{public}s]:%i Invalid IDM, packet: %{public}@", v48, v55, v59, 3733, commandCopy);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v19 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_50;
          }

          v49 = object_getClass(self);
          if (class_isMetaClass(v49))
          {
            v50 = 43;
          }

          else
          {
            v50 = 45;
          }

          *buf = 67110146;
          v61 = v50;
          v62 = 2082;
          v63 = object_getClassName(self);
          v64 = 2082;
          v65 = sel_getName(a2);
          v66 = 1024;
          v67 = 3733;
          v68 = 2114;
          v69 = commandCopy;
          v22 = "%c[%{public}s %{public}s]:%i Invalid IDM, packet: %{public}@";
          goto LABEL_49;
        }
      }
    }

    else
    {
      if ([commandCopy length] != 6)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v37 = NFLogGetLogger();
        if (v37)
        {
          v38 = v37;
          v39 = object_getClass(self);
          v40 = class_isMetaClass(v39);
          v54 = object_getClassName(self);
          v58 = sel_getName(a2);
          v41 = 45;
          if (v40)
          {
            v41 = 43;
          }

          v38(3, "%c[%{public}s %{public}s]:%i Invalid length, packet: %{public}@", v41, v54, v58, 3701, commandCopy);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v19 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }

        v42 = object_getClass(self);
        if (class_isMetaClass(v42))
        {
          v43 = 43;
        }

        else
        {
          v43 = 45;
        }

        *buf = 67110146;
        v61 = v43;
        v62 = 2082;
        v63 = object_getClassName(self);
        v64 = 2082;
        v65 = sel_getName(a2);
        v66 = 1024;
        v67 = 3701;
        v68 = 2114;
        v69 = commandCopy;
        v22 = "%c[%{public}s %{public}s]:%i Invalid length, packet: %{public}@";
        goto LABEL_49;
      }

      v23 = [commandCopy subdataWithRange:{2, 2}];
      v24 = [(_NFReaderSession *)self validateSystemCode:v23];

      if ((v24 & 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v25 = NFLogGetLogger();
        if (v25)
        {
          v26 = v25;
          v27 = object_getClass(self);
          v28 = class_isMetaClass(v27);
          v53 = object_getClassName(self);
          v57 = sel_getName(a2);
          v29 = 45;
          if (v28)
          {
            v29 = 43;
          }

          v26(3, "%c[%{public}s %{public}s]:%i Invalid system code, packet: %{public}@", v29, v53, v57, 3706, commandCopy);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v19 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v30 = object_getClass(self);
          if (class_isMetaClass(v30))
          {
            v31 = 43;
          }

          else
          {
            v31 = 45;
          }

          *buf = 67110146;
          v61 = v31;
          v62 = 2082;
          v63 = object_getClassName(self);
          v64 = 2082;
          v65 = sel_getName(a2);
          v66 = 1024;
          v67 = 3706;
          v68 = 2114;
          v69 = commandCopy;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid system code, packet: %{public}@", buf, 0x2Cu);
        }

        v32 = 32;
        goto LABEL_51;
      }
    }
  }

  v32 = 0;
LABEL_52:

  return v32;
}

- (BOOL)_requiresTypeFUpdate:(id)update
{
  updateCopy = update;
  if (([(_NFReaderSession *)self sessionConfig]& 1) != 0)
  {
    v5 = ([updateCopy technology] >> 2) & 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_updateFelicaTagInfo:(id)info outError:(id *)error
{
  infoCopy = info;
  if ([(_NFReaderSession *)self _requiresTypeFUpdate:infoCopy])
  {
    v7 = [(_NFReaderSession *)self _getSystemCodeListFromTag:infoCopy outError:error];
    if ([v7 count])
    {
      [infoCopy _setSystemCodes:v7];
      firstObject = [v7 firstObject];
      [infoCopy _setSystemCode:firstObject];
    }

    if (error)
    {
      LOBYTE(error) = *error == 0;
    }
  }

  else
  {
    LOBYTE(error) = 1;
  }

  return error;
}

- (unsigned)_refreshNdefTagConnection
{
  v3 = sub_10019093C(self->_driverWrapper, self->_currentTag);
  if (v3 > 9 || ((1 << v3) & 0x248) == 0)
  {
    LODWORD(driverWrapper) = 0;
  }

  else
  {
    LODWORD(driverWrapper) = sub_10019117C(self->_driverWrapper, self->_currentTag, 0);
    if (!driverWrapper)
    {
      driverWrapper = self->_driverWrapper;
      if (driverWrapper)
      {
        currentTag = self->_currentTag;

        LODWORD(driverWrapper) = sub_100190BD0(driverWrapper, currentTag, 0);
      }
    }
  }

  return driverWrapper;
}

- (id)_readNdefMessageFromTag:(id)tag rawLength:(unint64_t *)length error:(id *)error
{
  tagCopy = tag;
  if (error)
  {
    *error = 0;
  }

  driverWrapper = self->_driverWrapper;
  if (driverWrapper)
  {
    v11 = sub_100190BD0(driverWrapper, tagCopy, 0);
    if (v11)
    {
      if (!error)
      {
        goto LABEL_50;
      }

      LODWORD(v12) = v11;
      v13 = v11 & 0x6F;
      v14 = [NSError alloc];
      v15 = [NSString stringWithUTF8String:"nfcd"];
      if (v13 == 35 || v12 == 64)
      {
        v12 = v12;
      }

      else
      {
        v12 = 21;
      }

      v40[0] = NSLocalizedDescriptionKey;
      v17 = [NSString stringWithUTF8String:off_10031B2E8[v12]];
      v41[0] = v17;
      v41[1] = &off_100333CF0;
      v40[1] = @"Line";
      v40[2] = @"Method";
      v18 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v41[2] = v18;
      v40[3] = NSDebugDescriptionErrorKey;
      3790 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 3790];
      v41[3] = 3790;
      v20 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:4];
      *error = [v14 initWithDomain:v15 code:v12 userInfo:v20];

      goto LABEL_48;
    }

    driverWrapper = self->_driverWrapper;
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  if (!sub_1001916A4(driverWrapper, tagCopy, &v35, error))
  {
    v15 = 0;
    v21 = 0;
    goto LABEL_37;
  }

  if (v37 == 1)
  {
    v15 = sub_100192C04(self->_driverWrapper, tagCopy, v35, error);
  }

  else
  {
    v15 = 0;
  }

  if (!error || !v35)
  {
    if (!v35)
    {
      goto LABEL_22;
    }

LABEL_26:
    v22 = 0;
    goto LABEL_28;
  }

  if ([*error code] != 49)
  {
    goto LABEL_26;
  }

LABEL_22:
  if (v37 != 1 || (v37 & 0x100) == 0)
  {
    v22 = 1;
LABEL_28:
    if (v37 == 1)
    {
      if (BYTE1(v37))
      {
        v21 = 4;
      }

      else
      {
        v21 = 3;
      }

      if (v22)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v21 = 1;
      if (v22)
      {
        goto LABEL_33;
      }
    }

    v23 = v35;
    goto LABEL_36;
  }

  v21 = 2;
LABEL_33:
  v23 = 0;
LABEL_36:
  [tagCopy _setNDEFMessageSize:v23];
  [tagCopy _setNDEFContainerSize:v36];
LABEL_37:
  [tagCopy _setNDEFAvailability:v21];
  if (!error || [*error code] != 51)
  {
    v24 = sub_10019117C(self->_driverWrapper, tagCopy, 0);
    if (error)
    {
      v25 = v24;
      if (v24)
      {
        v34 = [NSError alloc];
        v26 = [NSString stringWithUTF8String:"nfcd"];
        v27 = v25;
        v38[0] = NSLocalizedDescriptionKey;
        if (v25 >= 0x4C)
        {
          v28 = 76;
        }

        else
        {
          v28 = v25;
        }

        v29 = [NSString stringWithUTF8String:off_10031B2E8[v28]];
        v39[0] = v29;
        v39[1] = &off_100333D08;
        v38[1] = @"Line";
        v38[2] = @"Method";
        v30 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v39[2] = v30;
        v38[3] = NSDebugDescriptionErrorKey;
        3824 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 3824];
        v39[3] = 3824;
        v32 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:4];
        *error = [v34 initWithDomain:v26 code:v27 userInfo:v32];
      }
    }
  }

  if (v15)
  {
    error = [[NFNdefMessageInternal alloc] initWithBytes:objc_msgSend(v15 length:{"bytes"), objc_msgSend(v15, "length")}];
    if (length)
    {
      *length = [v15 length];
    }

    goto LABEL_49;
  }

LABEL_48:
  error = 0;
LABEL_49:

LABEL_50:

  return error;
}

- (BOOL)_selectFromTag:(id)tag aid:(id)aid resolvedAid:(id *)resolvedAid error:(id *)error
{
  tagCopy = tag;
  aidCopy = aid;
  if (error)
  {
    *error = 0;
  }

  v72 = 0;
  v13 = [(_NFReaderSession *)self _selectTag:tagCopy aid:aidCopy p1:4 p2:0 shortLe:0 error:&v72];
  v14 = v72;
  v15 = v14;
  if (!v13 || v14)
  {
    v66 = tagCopy;
    v67 = aidCopy;
    if (v14)
    {
      code = [v14 code];
      v21 = [NSError alloc];
      v22 = [NSString stringWithUTF8String:"nfcd"];
      v61 = v21;
      resolvedAidCopy3 = resolvedAid;
      if (code == 64)
      {
        code2 = [v15 code];
        v83[0] = NSLocalizedDescriptionKey;
        if ([v15 code] > 75)
        {
          code3 = 76;
        }

        else
        {
          code3 = [v15 code];
        }

        v47 = [NSString stringWithUTF8String:off_10031B2E8[code3]];
        v84[0] = v47;
        v84[1] = v15;
        v83[1] = NSUnderlyingErrorKey;
        v83[2] = @"Line";
        v84[2] = &off_100333D20;
        v83[3] = @"Method";
        v48 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v84[3] = v48;
        v83[4] = NSDebugDescriptionErrorKey;
        3852 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 3852];
        v84[4] = 3852;
        v50 = [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:5];
        v19 = [v61 initWithDomain:v22 code:code2 userInfo:v50];

        v17 = 0;
        goto LABEL_27;
      }

      v81[0] = NSLocalizedDescriptionKey;
      v36 = [NSString stringWithUTF8String:"Tag Error"];
      v82[0] = v36;
      v82[1] = v15;
      v81[1] = NSUnderlyingErrorKey;
      v81[2] = @"Line";
      v82[2] = &off_100333D38;
      v81[3] = @"Method";
      v37 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v82[3] = v37;
      v81[4] = NSDebugDescriptionErrorKey;
      3854 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 3854];
      v82[4] = 3854;
      v39 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:5];
      v19 = [v61 initWithDomain:v22 code:29 userInfo:v39];

      v35 = resolvedAidCopy3;
    }

    else
    {
      v62 = [NSError alloc];
      v22 = [NSString stringWithUTF8String:"nfcd"];
      v79[0] = NSLocalizedDescriptionKey;
      v30 = [NSString stringWithUTF8String:"Tag Error"];
      v80[0] = v30;
      v80[1] = &off_100333D50;
      v79[1] = @"Line";
      v79[2] = @"Method";
      resolvedAidCopy2 = resolvedAid;
      v32 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v80[2] = v32;
      v79[3] = NSDebugDescriptionErrorKey;
      3857 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 3857];
      v80[3] = 3857;
      v34 = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:4];
      v19 = [v62 initWithDomain:v22 code:29 userInfo:v34];

      v35 = resolvedAidCopy2;
    }

    v17 = 0;
    aidCopy = v67;
    if (!v35)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  resolvedAidCopy3 = resolvedAid;
  if ([v13 length] < 2)
  {
    v66 = tagCopy;
    v24 = [NSError alloc];
    v68 = aidCopy;
    v25 = [NSString stringWithUTF8String:"nfcd"];
    v73[0] = NSLocalizedDescriptionKey;
    v26 = [NSString stringWithUTF8String:"Tag Error"];
    v74[0] = v26;
    v74[1] = &off_100333D98;
    v73[1] = @"Line";
    v73[2] = @"Method";
    v27 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v74[2] = v27;
    v73[3] = NSDebugDescriptionErrorKey;
    3876 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 3876];
    v74[3] = 3876;
    v29 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:4];
    v19 = [v24 initWithDomain:v25 code:29 userInfo:v29];

    aidCopy = v68;
    v17 = 0;
    goto LABEL_27;
  }

  v71 = 0;
  v16 = [(_NFReaderSession *)self validateAID:aidCopy withSelectResponse:v13 outRealAid:&v71];
  v17 = v71;
  if (v16)
  {
    bytes = [v13 bytes];
    v66 = tagCopy;
    if (*&bytes[[v13 length] - 2] == 144)
    {
      if (!v17)
      {
        v17 = aidCopy;
      }

      v19 = 0;
    }

    else
    {
      v64 = [NSError alloc];
      v70 = aidCopy;
      v51 = [NSString stringWithUTF8String:"nfcd"];
      v75[0] = NSLocalizedDescriptionKey;
      v52 = [NSString stringWithUTF8String:"Tag Not Found"];
      v76[0] = v52;
      v76[1] = &off_100333D80;
      v75[1] = @"Line";
      v75[2] = @"Method";
      v53 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v76[2] = v53;
      v75[3] = NSDebugDescriptionErrorKey;
      3871 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 3871];
      v76[3] = 3871;
      v55 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:4];
      v19 = [v64 initWithDomain:v51 code:28 userInfo:v55];

      aidCopy = v70;
    }

LABEL_27:
    v35 = resolvedAidCopy3;
    if (!resolvedAidCopy3)
    {
LABEL_29:
      tagCopy = v66;
      if (error)
      {
        v57 = v19;
        *error = v19;
      }

      v46 = v19 == 0;
      goto LABEL_32;
    }

LABEL_28:
    v56 = v17;
    *v35 = v17;
    goto LABEL_29;
  }

  if (error)
  {
    v63 = [NSError alloc];
    v69 = aidCopy;
    v60 = [NSString stringWithUTF8String:"nfcd"];
    v77[0] = NSLocalizedDescriptionKey;
    v40 = [NSString stringWithUTF8String:"Security Violation"];
    v78[0] = v40;
    v78[1] = &off_100333D68;
    v77[1] = @"Line";
    v77[2] = @"Method";
    v41 = tagCopy;
    v42 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v78[2] = v42;
    v77[3] = NSDebugDescriptionErrorKey;
    3863 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 3863];
    v78[3] = 3863;
    v44 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:4];
    *error = [v63 initWithDomain:v60 code:8 userInfo:v44];

    aidCopy = v69;
    tagCopy = v41;
  }

  if (resolvedAidCopy3)
  {
    v45 = v17;
    v19 = 0;
    v46 = 0;
    *resolvedAidCopy3 = v17;
  }

  else
  {
    v19 = 0;
    v46 = 0;
  }

LABEL_32:

  return v46;
}

- (id)_selectTag:(id)tag aid:(id)aid p1:(unsigned __int8)p1 p2:(unsigned __int8)p2 shortLe:(char)le error:(id *)error
{
  leCopy = le;
  if (error)
  {
    *error = 0;
  }

  v38 = -23552;
  p1Copy = p1;
  p2Copy = p2;
  aidCopy = aid;
  tagCopy = tag;
  v41 = [aidCopy length];
  v15 = [[NSMutableData alloc] initWithBytes:&v38 length:5];
  [v15 appendData:aidCopy];

  if ((leCopy & 0x80000000) == 0)
  {
    v37 = leCopy;
    [v15 appendBytes:&v37 length:1];
  }

  driverWrapper = [(_NFReaderSession *)self driverWrapper];
  whitelistChecker = [(_NFReaderSession *)self whitelistChecker];
  [whitelistChecker sessionTimeLimit];
  v36 = 0;
  v18 = sub_1001960B0(driverWrapper, v15, tagCopy, &v36);

  v19 = v36;
  if (error && (!v18 || v19))
  {
    if (v19)
    {
      code = [v19 code];
      v21 = [NSError alloc];
      v22 = [NSString stringWithUTF8String:"nfcd"];
      if (code == 64)
      {
        code2 = [v19 code];
        v46[0] = NSLocalizedDescriptionKey;
        if ([v19 code] > 75)
        {
          code3 = 76;
        }

        else
        {
          code3 = [v19 code];
        }

        v24 = [NSString stringWithUTF8String:off_10031B2E8[code3]];
        v47[0] = v24;
        v47[1] = v19;
        v46[1] = NSUnderlyingErrorKey;
        v46[2] = @"Line";
        v47[2] = &off_100333DB0;
        v46[3] = @"Method";
        v25 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v47[3] = v25;
        v46[4] = NSDebugDescriptionErrorKey;
        3913 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 3913];
        v47[4] = 3913;
        v30 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:5];
        v31 = v21;
        v32 = v22;
        v33 = code2;
        goto LABEL_17;
      }

      v44[0] = NSLocalizedDescriptionKey;
      v24 = [NSString stringWithUTF8String:"Tag Error"];
      v45[0] = v24;
      v45[1] = v19;
      v44[1] = NSUnderlyingErrorKey;
      v44[2] = @"Line";
      v45[2] = &off_100333DC8;
      v44[3] = @"Method";
      v25 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v45[3] = v25;
      v44[4] = NSDebugDescriptionErrorKey;
      3913 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 3915];
      v45[4] = 3913;
      v27 = v45;
      v28 = v44;
      v29 = 5;
    }

    else
    {
      v21 = [NSError alloc];
      v22 = [NSString stringWithUTF8String:"nfcd"];
      v42[0] = NSLocalizedDescriptionKey;
      v24 = [NSString stringWithUTF8String:"Tag Error"];
      v43[0] = v24;
      v43[1] = &off_100333DE0;
      v42[1] = @"Line";
      v42[2] = @"Method";
      v25 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v43[2] = v25;
      v42[3] = NSDebugDescriptionErrorKey;
      3913 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 3918];
      v43[3] = 3913;
      v27 = v43;
      v28 = v42;
      v29 = 4;
    }

    v30 = [NSDictionary dictionaryWithObjects:v27 forKeys:v28 count:v29];
    v31 = v21;
    v32 = v22;
    v33 = 29;
LABEL_17:
    *error = [v31 initWithDomain:v32 code:v33 userInfo:v30];
  }

  return v18;
}

- (unsigned)_validateAPDU:(id)u outCheckFciResponse:(BOOL *)response
{
  uCopy = u;
  if (!uCopy)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v31 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v36 = [0 description];
      v37 = 45;
      if (isMetaClass)
      {
        v37 = 43;
      }

      v31(3, "%c[%{public}s %{public}s]:%i Invalid APDU: %{public}@", v37, ClassName, Name, 3930, v36);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v38 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_69;
    }

    v39 = object_getClass(self);
    if (class_isMetaClass(v39))
    {
      v40 = 43;
    }

    else
    {
      v40 = 45;
    }

    v41 = object_getClassName(self);
    v42 = sel_getName(a2);
    v43 = [0 description];
    *buf = 67110146;
    v124 = v40;
    v125 = 2082;
    v126 = v41;
    v127 = 2082;
    v128 = v42;
    v129 = 1024;
    v130 = 3930;
    v131 = 2114;
    v132 = v43;
    v44 = "%c[%{public}s %{public}s]:%i Invalid APDU: %{public}@";
    goto LABEL_67;
  }

  sessionConfig = [(_NFReaderSession *)self sessionConfig];
  clss = [uCopy clss];
  v10 = clss;
  if ((sessionConfig & 8) != 0)
  {
    if (clss || [uCopy instruction] != 164)
    {
      if ([uCopy clss] == 128 && objc_msgSend(uCopy, "instruction") == 202)
      {
        if ([uCopy p1] == 1)
        {
          if (![uCopy p2] || objc_msgSend(uCopy, "p2") == 1)
          {
            goto LABEL_90;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v57 = NFLogGetLogger();
          if (v57)
          {
            v58 = v57;
            v59 = object_getClass(self);
            v60 = class_isMetaClass(v59);
            v61 = object_getClassName(self);
            v62 = sel_getName(a2);
            v63 = [uCopy description];
            v64 = 45;
            if (v60)
            {
              v64 = 43;
            }

            v58(3, "%c[%{public}s %{public}s]:%i Invalid P2 parameter: %{public}@", v64, v61, v62, 3958, v63);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v38 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_69;
          }

          v65 = object_getClass(self);
          if (class_isMetaClass(v65))
          {
            v66 = 43;
          }

          else
          {
            v66 = 45;
          }

          v67 = object_getClassName(self);
          v68 = sel_getName(a2);
          v43 = [uCopy description];
          *buf = 67110146;
          v124 = v66;
          v125 = 2082;
          v126 = v67;
          v127 = 2082;
          v128 = v68;
          v129 = 1024;
          v130 = 3958;
          v131 = 2114;
          v132 = v43;
          v44 = "%c[%{public}s %{public}s]:%i Invalid P2 parameter: %{public}@";
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v81 = NFLogGetLogger();
          if (v81)
          {
            v82 = v81;
            v83 = object_getClass(self);
            v84 = class_isMetaClass(v83);
            v85 = object_getClassName(self);
            v86 = sel_getName(a2);
            v87 = [uCopy description];
            v88 = 45;
            if (v84)
            {
              v88 = 43;
            }

            v82(3, "%c[%{public}s %{public}s]:%i Invalid P1 parameter: %{public}@", v88, v85, v86, 3954, v87);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v38 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_69;
          }

          v89 = object_getClass(self);
          if (class_isMetaClass(v89))
          {
            v90 = 43;
          }

          else
          {
            v90 = 45;
          }

          v91 = object_getClassName(self);
          v92 = sel_getName(a2);
          v43 = [uCopy description];
          *buf = 67110146;
          v124 = v90;
          v125 = 2082;
          v126 = v91;
          v127 = 2082;
          v128 = v92;
          v129 = 1024;
          v130 = 3954;
          v131 = 2114;
          v132 = v43;
          v44 = "%c[%{public}s %{public}s]:%i Invalid P1 parameter: %{public}@";
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v69 = NFLogGetLogger();
        if (v69)
        {
          v70 = v69;
          v71 = object_getClass(self);
          v72 = class_isMetaClass(v71);
          v73 = object_getClassName(self);
          v74 = sel_getName(a2);
          v75 = [uCopy description];
          v76 = 45;
          if (v72)
          {
            v76 = 43;
          }

          v70(3, "%c[%{public}s %{public}s]:%i Invalid APDU: %{public}@", v76, v73, v74, 3962, v75);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v38 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_69;
        }

        v77 = object_getClass(self);
        if (class_isMetaClass(v77))
        {
          v78 = 43;
        }

        else
        {
          v78 = 45;
        }

        v79 = object_getClassName(self);
        v80 = sel_getName(a2);
        v43 = [uCopy description];
        *buf = 67110146;
        v124 = v78;
        v125 = 2082;
        v126 = v79;
        v127 = 2082;
        v128 = v80;
        v129 = 1024;
        v130 = 3962;
        v131 = 2114;
        v132 = v43;
        v44 = "%c[%{public}s %{public}s]:%i Invalid APDU: %{public}@";
      }
    }

    else
    {
      if ([uCopy p1] == 4)
      {
        if ([uCopy p2])
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v45 = NFLogGetLogger();
          if (v45)
          {
            v46 = v45;
            v47 = object_getClass(self);
            v48 = class_isMetaClass(v47);
            v49 = object_getClassName(self);
            v50 = sel_getName(a2);
            v51 = [uCopy description];
            v52 = 45;
            if (v48)
            {
              v52 = 43;
            }

            v46(3, "%c[%{public}s %{public}s]:%i Invalid P2 parameter: %{public}@", v52, v49, v50, 3941, v51);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v38 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_69;
          }

          v53 = object_getClass(self);
          if (class_isMetaClass(v53))
          {
            v54 = 43;
          }

          else
          {
            v54 = 45;
          }

          v55 = object_getClassName(self);
          v56 = sel_getName(a2);
          v43 = [uCopy description];
          *buf = 67110146;
          v124 = v54;
          v125 = 2082;
          v126 = v55;
          v127 = 2082;
          v128 = v56;
          v129 = 1024;
          v130 = 3941;
          v131 = 2114;
          v132 = v43;
          v44 = "%c[%{public}s %{public}s]:%i Invalid P2 parameter: %{public}@";
          goto LABEL_67;
        }

        v122 = 12592;
        v121 = *"OSE.VAS.01";
        v38 = [[NSData alloc] initWithBytes:&v121 length:10];
        payload = [uCopy payload];
        v106 = [payload isEqualToData:v38];

        if ((v106 & 1) == 0)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v108 = NFLogGetLogger();
          if (v108)
          {
            v109 = v108;
            v110 = object_getClass(self);
            v111 = class_isMetaClass(v110);
            v112 = object_getClassName(self);
            v113 = sel_getName(a2);
            v114 = [uCopy description];
            v115 = 45;
            if (v111)
            {
              v115 = 43;
            }

            v109(3, "%c[%{public}s %{public}s]:%i Invalid AID for selection: %{public}@", v115, v112, v113, 3949, v114);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v43 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v116 = object_getClass(self);
            if (class_isMetaClass(v116))
            {
              v117 = 43;
            }

            else
            {
              v117 = 45;
            }

            v118 = object_getClassName(self);
            v119 = sel_getName(a2);
            v120 = [uCopy description];
            *buf = 67110146;
            v124 = v117;
            v125 = 2082;
            v126 = v118;
            v127 = 2082;
            v128 = v119;
            v129 = 1024;
            v130 = 3949;
            v131 = 2114;
            v132 = v120;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid AID for selection: %{public}@", buf, 0x2Cu);
          }

          goto LABEL_68;
        }

LABEL_90:
        v29 = 0;
        goto LABEL_91;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v93 = NFLogGetLogger();
      if (v93)
      {
        v94 = v93;
        v95 = object_getClass(self);
        v96 = class_isMetaClass(v95);
        v97 = object_getClassName(self);
        v98 = sel_getName(a2);
        v99 = [uCopy description];
        v100 = 45;
        if (v96)
        {
          v100 = 43;
        }

        v94(3, "%c[%{public}s %{public}s]:%i Invalid P1 parameter: %{public}@", v100, v97, v98, 3937, v99);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v38 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_69;
      }

      v101 = object_getClass(self);
      if (class_isMetaClass(v101))
      {
        v102 = 43;
      }

      else
      {
        v102 = 45;
      }

      v103 = object_getClassName(self);
      v104 = sel_getName(a2);
      v43 = [uCopy description];
      *buf = 67110146;
      v124 = v102;
      v125 = 2082;
      v126 = v103;
      v127 = 2082;
      v128 = v104;
      v129 = 1024;
      v130 = 3937;
      v131 = 2114;
      v132 = v43;
      v44 = "%c[%{public}s %{public}s]:%i Invalid P1 parameter: %{public}@";
    }

LABEL_67:
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, v44, buf, 0x2Cu);
LABEL_68:

LABEL_69:
    v29 = 10;
    goto LABEL_91;
  }

  clss2 = [uCopy clss];
  if ((v10 & 0x40) != 0)
  {
    v12 = 32;
  }

  else
  {
    v12 = 12;
  }

  if ((clss2 & v12) != 0 || [uCopy instruction] != 164 || objc_msgSend(uCopy, "p1") != 4)
  {
    goto LABEL_90;
  }

  if (response)
  {
    *response = ([uCopy p2] & 0xC) == 0;
  }

  payload2 = [uCopy payload];
  v14 = [(_NFReaderSession *)self validateAID:payload2 allowsPrefixMatch:0];

  if ((v14 & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    goto LABEL_90;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v15 = NFLogGetLogger();
  if (v15)
  {
    v16 = v15;
    v17 = object_getClass(self);
    v18 = class_isMetaClass(v17);
    v19 = object_getClassName(self);
    v20 = sel_getName(a2);
    v21 = [uCopy description];
    v22 = 45;
    if (v18)
    {
      v22 = 43;
    }

    v16(3, "%c[%{public}s %{public}s]:%i Invalid AID selection: %{public}@", v22, v19, v20, 3990, v21);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v23 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = object_getClass(self);
    if (class_isMetaClass(v24))
    {
      v25 = 43;
    }

    else
    {
      v25 = 45;
    }

    v26 = object_getClassName(self);
    v27 = sel_getName(a2);
    v28 = [uCopy description];
    *buf = 67110146;
    v124 = v25;
    v125 = 2082;
    v126 = v26;
    v127 = 2082;
    v128 = v27;
    v129 = 1024;
    v130 = 3990;
    v131 = 2114;
    v132 = v28;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid AID selection: %{public}@", buf, 0x2Cu);
  }

  v29 = 32;
LABEL_91:

  return v29;
}

- (BOOL)_findAppFromSet:(id)set tag:(id)tag foundApp:(id *)app outError:(id *)error
{
  setCopy = set;
  tagCopy = tag;
  if (![setCopy count] || objc_msgSend(tagCopy, "type") == 14 || objc_msgSend(tagCopy, "type") == 13 || objc_msgSend(tagCopy, "type") == 9)
  {
    LOBYTE(v13) = 0;
    goto LABEL_6;
  }

  sel = a2;
  errorCopy = error;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = setCopy;
  v15 = [obj countByEnumeratingWithState:&v76 objects:v94 count:16];
  v13 = v15 != 0;
  selfCopy = self;
  if (!v15)
  {
    v23 = 0;
LABEL_34:

    goto LABEL_40;
  }

  v16 = v15;
  appCopy = app;
  v17 = 0;
  v67 = *v77;
LABEL_9:
  v18 = 0;
  while (1)
  {
    if (*v77 != v67)
    {
      objc_enumerationMutation(obj);
    }

    v19 = *(*(&v76 + 1) + 8 * v18);
    if ([v19 type] == 2)
    {
      break;
    }

    if ([v19 type] == 3)
    {
      v24 = [v19 aid];
      v72 = 0;
      v73 = v17;
      v25 = [(_NFReaderSession *)self selectPRCIDApp:v24 fromTag:tagCopy resolvedAid:&v73 outError:&v72];
      v22 = v73;

      v23 = v72;
      if (v25)
      {
        nonstandard7816TagsFound = selfCopy->_nonstandard7816TagsFound;
        v90[0] = @"type";
        v90[1] = @"uid";
        v91[0] = &off_100333E10;
        v33 = [tagCopy UID];
        v91[1] = v33;
        v35 = [NSDictionary dictionaryWithObjects:v91 forKeys:v90 count:2];
        [(NSMutableArray *)nonstandard7816TagsFound addObject:v35];

        goto LABEL_38;
      }

      goto LABEL_17;
    }

    if ([v19 type] == 1)
    {
      v26 = [v19 aid];
      v70 = 0;
      v71 = v17;
      v27 = [(_NFReaderSession *)self _selectFromTag:tagCopy aid:v26 resolvedAid:&v71 error:&v70];
      v22 = v71;

      v23 = v70;
      if (v27 && !v23)
      {
        v13 = 1;
        goto LABEL_32;
      }

      if (v27)
      {
        app = appCopy;
        goto LABEL_34;
      }

      v17 = 0;
      goto LABEL_18;
    }

    v23 = 0;
LABEL_19:
    if ([v23 code]== 51 || [v23 code]== 64)
    {
      goto LABEL_31;
    }

    if (v16 == ++v18)
    {
      v28 = [obj countByEnumeratingWithState:&v76 objects:v94 count:16];
      v16 = v28;
      if (!v28)
      {
        v23 = 0;
LABEL_31:
        v13 = 0;
        v22 = v17;
LABEL_32:
        app = appCopy;
        goto LABEL_39;
      }

      goto LABEL_9;
    }
  }

  v20 = [v19 aid];
  v74 = 0;
  v75 = v17;
  v21 = [(_NFReaderSession *)self selectPaceApp:v20 fromTag:tagCopy resolvedAid:&v75 outError:&v74];
  v22 = v75;

  v23 = v74;
  if (!v21)
  {
LABEL_17:
    v17 = v22;
LABEL_18:
    self = selfCopy;
    goto LABEL_19;
  }

  v29 = selfCopy->_nonstandard7816TagsFound;
  v93[0] = &off_100333DF8;
  v92[0] = @"type";
  v92[1] = @"uid";
  v30 = [tagCopy UID];
  v93[1] = v30;
  v31 = [NSDictionary dictionaryWithObjects:v93 forKeys:v92 count:2];
  [(NSMutableArray *)v29 addObject:v31];

  v32 = sub_10024DC10();
  v33 = v32;
  if (v32)
  {
    *(v32 + 164) = 1;
  }

LABEL_38:
  app = appCopy;

  v13 = 1;
LABEL_39:

  v36 = v23;
  if (v22)
  {
    goto LABEL_52;
  }

LABEL_40:
  if ([v23 code]== 28)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v38 = Logger;
      Class = object_getClass(selfCopy);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(selfCopy);
      Name = sel_getName(sel);
      v42 = 45;
      if (isMetaClass)
      {
        v42 = 43;
      }

      v38(6, "%c[%{public}s %{public}s]:%i Application(s) not found", v42, ClassName, Name, 4047);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v43 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = object_getClass(selfCopy);
      if (class_isMetaClass(v44))
      {
        v45 = 43;
      }

      else
      {
        v45 = 45;
      }

      v46 = object_getClassName(selfCopy);
      v47 = sel_getName(sel);
      *buf = 67109890;
      v81 = v45;
      v82 = 2082;
      v83 = v46;
      v84 = 2082;
      v85 = v47;
      v86 = 1024;
      v87 = 4047;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Application(s) not found", buf, 0x22u);
    }

    v22 = 0;
    v36 = 0;
    goto LABEL_63;
  }

  v22 = 0;
  v36 = v23;
LABEL_52:
  if (v13)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v48 = NFLogGetLogger();
    if (v48)
    {
      v49 = v48;
      v50 = object_getClass(selfCopy);
      v51 = class_isMetaClass(v50);
      v68 = object_getClassName(selfCopy);
      v52 = sel_getName(sel);
      nF_asHexString = [v22 NF_asHexString];
      v54 = 45;
      if (v51)
      {
        v54 = 43;
      }

      v49(6, "%c[%{public}s %{public}s]:%i Found app: %{public}@", v54, v68, v52, 4050, nF_asHexString);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v55 = object_getClass(selfCopy);
      if (class_isMetaClass(v55))
      {
        v56 = 43;
      }

      else
      {
        v56 = 45;
      }

      v57 = object_getClassName(selfCopy);
      v58 = sel_getName(sel);
      nF_asHexString2 = [v22 NF_asHexString];
      *buf = 67110146;
      v81 = v56;
      v82 = 2082;
      v83 = v57;
      v84 = 2082;
      v85 = v58;
      v86 = 1024;
      v87 = 4050;
      v88 = 2114;
      v89 = nF_asHexString2;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Found app: %{public}@", buf, 0x2Cu);
    }

    LOBYTE(v13) = 1;
LABEL_63:
  }

  if (errorCopy)
  {
    v60 = v36;
    *errorCopy = v36;
  }

  if (app)
  {
    v61 = v22;
    *app = v22;
  }

LABEL_6:
  return v13;
}

- (unsigned)_validateISO15693Packet:(id)packet
{
  packetCopy = packet;
  bytes = [packetCopy bytes];
  if ([packetCopy length] < 2)
  {
LABEL_2:
    v7 = 0;
    goto LABEL_146;
  }

  v8 = *bytes;
  v9 = bytes[1];
  v10 = bytes[2];
  v11 = 8 * ((*bytes & 0x24) == 32);
  switch(bytes[1])
  {
    case 1:
      whitelistChecker = [(_NFReaderSession *)self whitelistChecker];
      nfcISO15693ReaderAccess = [whitelistChecker nfcISO15693ReaderAccess];

      if (nfcISO15693ReaderAccess)
      {
        v7 = 0;
      }

      else
      {
        v7 = 32;
      }

      goto LABEL_146;
    case 2:
    case 37:
      if ([packetCopy length] == 10)
      {
        goto LABEL_132;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v57 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v60 = 45;
        if (isMetaClass)
        {
          v60 = 43;
        }

        v57(3, "%c[%{public}s %{public}s]:%i Invalid packet length ,packet: %{public}@", v60, ClassName, Name, 4125, packetCopy);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_145;
      }

      v61 = object_getClass(self);
      if (class_isMetaClass(v61))
      {
        v62 = 43;
      }

      else
      {
        v62 = 45;
      }

      *buf = 67110146;
      v144 = v62;
      v145 = 2082;
      v146 = object_getClassName(self);
      v147 = 2082;
      v148 = sel_getName(a2);
      v149 = 1024;
      v150 = 4125;
      v151 = 2114;
      *v152 = packetCopy;
      v20 = "%c[%{public}s %{public}s]:%i Invalid packet length ,packet: %{public}@";
      goto LABEL_118;
    case 32:
    case 34:
    case 39:
    case 41:
      if ([packetCopy length] == (v11 | 3))
      {
        goto LABEL_132;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v35 = NFLogGetLogger();
      if (v35)
      {
        v36 = v35;
        v37 = object_getClass(self);
        v38 = class_isMetaClass(v37);
        v122 = object_getClassName(self);
        v133 = sel_getName(a2);
        v39 = 45;
        if (v38)
        {
          v39 = 43;
        }

        v36(3, "%c[%{public}s %{public}s]:%i Invalid packet length ,packet: %{public}@", v39, v122, v133, 4159, packetCopy);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_145;
      }

      v40 = object_getClass(self);
      if (class_isMetaClass(v40))
      {
        v41 = 43;
      }

      else
      {
        v41 = 45;
      }

      *buf = 67110146;
      v144 = v41;
      v145 = 2082;
      v146 = object_getClassName(self);
      v147 = 2082;
      v148 = sel_getName(a2);
      v149 = 1024;
      v150 = 4159;
      v151 = 2114;
      *v152 = packetCopy;
      v20 = "%c[%{public}s %{public}s]:%i Invalid packet length ,packet: %{public}@";
      goto LABEL_118;
    case 33:
    case 53:
    case 54:
    case 57:
      if ([packetCopy length] >= (v11 | 3uLL))
      {
        goto LABEL_132;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v28 = NFLogGetLogger();
      if (v28)
      {
        v29 = v28;
        v30 = object_getClass(self);
        v31 = class_isMetaClass(v30);
        v121 = object_getClassName(self);
        v132 = sel_getName(a2);
        v32 = 45;
        if (v31)
        {
          v32 = 43;
        }

        v29(3, "%c[%{public}s %{public}s]:%i Invalid packet length ,packet: %{public}@", v32, v121, v132, 4171, packetCopy);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_145;
      }

      v33 = object_getClass(self);
      if (class_isMetaClass(v33))
      {
        v34 = 43;
      }

      else
      {
        v34 = 45;
      }

      *buf = 67110146;
      v144 = v34;
      v145 = 2082;
      v146 = object_getClassName(self);
      v147 = 2082;
      v148 = sel_getName(a2);
      v149 = 1024;
      v150 = 4171;
      v151 = 2114;
      *v152 = packetCopy;
      v20 = "%c[%{public}s %{public}s]:%i Invalid packet length ,packet: %{public}@";
      goto LABEL_118;
    case 35:
    case 44:
    case 45:
    case 48:
    case 50:
      if ([packetCopy length] == (v11 | 4))
      {
        goto LABEL_132;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v12 = NFLogGetLogger();
      if (v12)
      {
        v13 = v12;
        v14 = object_getClass(self);
        v15 = class_isMetaClass(v14);
        v119 = object_getClassName(self);
        v130 = sel_getName(a2);
        v16 = 45;
        if (v15)
        {
          v16 = 43;
        }

        v13(3, "%c[%{public}s %{public}s]:%i Invalid packet length ,packet: %{public}@", v16, v119, v130, 4184, packetCopy);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_145;
      }

      v18 = object_getClass(self);
      if (class_isMetaClass(v18))
      {
        v19 = 43;
      }

      else
      {
        v19 = 45;
      }

      *buf = 67110146;
      v144 = v19;
      v145 = 2082;
      v146 = object_getClassName(self);
      v147 = 2082;
      v148 = sel_getName(a2);
      v149 = 1024;
      v150 = 4184;
      v151 = 2114;
      *v152 = packetCopy;
      v20 = "%c[%{public}s %{public}s]:%i Invalid packet length ,packet: %{public}@";
      goto LABEL_118;
    case 36:
    case 49:
    case 56:
      if ([packetCopy length] >= (v11 | 4uLL))
      {
        goto LABEL_132;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v42 = NFLogGetLogger();
      if (v42)
      {
        v43 = v42;
        v44 = object_getClass(self);
        v45 = class_isMetaClass(v44);
        v123 = object_getClassName(self);
        v134 = sel_getName(a2);
        v46 = 45;
        if (v45)
        {
          v46 = 43;
        }

        v43(3, "%c[%{public}s %{public}s]:%i Invalid packet length ,packet: %{public}@", v46, v123, v134, 4195, packetCopy);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_145;
      }

      v47 = object_getClass(self);
      if (class_isMetaClass(v47))
      {
        v48 = 43;
      }

      else
      {
        v48 = 45;
      }

      *buf = 67110146;
      v144 = v48;
      v145 = 2082;
      v146 = object_getClassName(self);
      v147 = 2082;
      v148 = sel_getName(a2);
      v149 = 1024;
      v150 = 4195;
      v151 = 2114;
      *v152 = packetCopy;
      v20 = "%c[%{public}s %{public}s]:%i Invalid packet length ,packet: %{public}@";
      goto LABEL_118;
    case 38:
    case 40:
    case 42:
    case 43:
    case 58:
      if ([packetCopy length] == (v11 | 2))
      {
        goto LABEL_132;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v21 = NFLogGetLogger();
      if (v21)
      {
        v22 = v21;
        v23 = object_getClass(self);
        v24 = class_isMetaClass(v23);
        v120 = object_getClassName(self);
        v131 = sel_getName(a2);
        v25 = 45;
        if (v24)
        {
          v25 = 43;
        }

        v22(3, "%c[%{public}s %{public}s]:%i Invalid packet length ,packet: %{public}@", v25, v120, v131, 4138, packetCopy);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_145;
      }

      v26 = object_getClass(self);
      if (class_isMetaClass(v26))
      {
        v27 = 43;
      }

      else
      {
        v27 = 45;
      }

      *buf = 67110146;
      v144 = v27;
      v145 = 2082;
      v146 = object_getClassName(self);
      v147 = 2082;
      v148 = sel_getName(a2);
      v149 = 1024;
      v150 = 4138;
      v151 = 2114;
      *v152 = packetCopy;
      v20 = "%c[%{public}s %{public}s]:%i Invalid packet length ,packet: %{public}@";
      goto LABEL_118;
    case 51:
    case 60:
    case 61:
      if ([packetCopy length] == (v11 | 6))
      {
        goto LABEL_132;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v49 = NFLogGetLogger();
      if (v49)
      {
        v50 = v49;
        v51 = object_getClass(self);
        v52 = class_isMetaClass(v51);
        v124 = object_getClassName(self);
        v135 = sel_getName(a2);
        v53 = 45;
        if (v52)
        {
          v53 = 43;
        }

        v50(3, "%c[%{public}s %{public}s]:%i Invalid packet length ,packet: %{public}@", v53, v124, v135, 4206, packetCopy);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_145;
      }

      v54 = object_getClass(self);
      if (class_isMetaClass(v54))
      {
        v55 = 43;
      }

      else
      {
        v55 = 45;
      }

      *buf = 67110146;
      v144 = v55;
      v145 = 2082;
      v146 = object_getClassName(self);
      v147 = 2082;
      v148 = sel_getName(a2);
      v149 = 1024;
      v150 = 4206;
      v151 = 2114;
      *v152 = packetCopy;
      v20 = "%c[%{public}s %{public}s]:%i Invalid packet length ,packet: %{public}@";
      goto LABEL_118;
    case 52:
      if ([packetCopy length] >= (v11 | 6uLL))
      {
        goto LABEL_132;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v89 = NFLogGetLogger();
      if (v89)
      {
        v90 = v89;
        v91 = object_getClass(self);
        v92 = class_isMetaClass(v91);
        v128 = object_getClassName(self);
        v140 = sel_getName(a2);
        v93 = 45;
        if (v92)
        {
          v93 = 43;
        }

        v90(3, "%c[%{public}s %{public}s]:%i Invalid packet length ,packet: %{public}@", v93, v128, v140, 4215, packetCopy);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_145;
      }

      v94 = object_getClass(self);
      if (class_isMetaClass(v94))
      {
        v95 = 43;
      }

      else
      {
        v95 = 45;
      }

      *buf = 67110146;
      v144 = v95;
      v145 = 2082;
      v146 = object_getClassName(self);
      v147 = 2082;
      v148 = sel_getName(a2);
      v149 = 1024;
      v150 = 4215;
      v151 = 2114;
      *v152 = packetCopy;
      v20 = "%c[%{public}s %{public}s]:%i Invalid packet length ,packet: %{public}@";
      goto LABEL_118;
    case 55:
      if ([packetCopy length] >= (v11 | 2uLL))
      {
        goto LABEL_132;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v63 = NFLogGetLogger();
      if (v63)
      {
        v64 = v63;
        v65 = object_getClass(self);
        v66 = class_isMetaClass(v65);
        v126 = object_getClassName(self);
        v137 = sel_getName(a2);
        v67 = 45;
        if (v66)
        {
          v67 = 43;
        }

        v64(3, "%c[%{public}s %{public}s]:%i Invalid packet length ,packet: %{public}@", v67, v126, v137, 4147, packetCopy);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_145;
      }

      v68 = object_getClass(self);
      if (class_isMetaClass(v68))
      {
        v69 = 43;
      }

      else
      {
        v69 = 45;
      }

      *buf = 67110146;
      v144 = v69;
      v145 = 2082;
      v146 = object_getClassName(self);
      v147 = 2082;
      v148 = sel_getName(a2);
      v149 = 1024;
      v150 = 4147;
      v151 = 2114;
      *v152 = packetCopy;
      v20 = "%c[%{public}s %{public}s]:%i Invalid packet length ,packet: %{public}@";
      goto LABEL_118;
    case 59:
      if ([packetCopy length] == (v11 | 3) || objc_msgSend(packetCopy, "length") == (v11 | 4))
      {
        goto LABEL_132;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v70 = NFLogGetLogger();
      if (v70)
      {
        v71 = v70;
        v72 = object_getClass(self);
        v73 = class_isMetaClass(v72);
        v127 = object_getClassName(self);
        v138 = sel_getName(a2);
        v74 = 45;
        if (v73)
        {
          v74 = 43;
        }

        v71(3, "%c[%{public}s %{public}s]:%i Invalid packet length ,packet: %{public}@", v74, v127, v138, 4230, packetCopy);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_145;
      }

      v75 = object_getClass(self);
      if (class_isMetaClass(v75))
      {
        v76 = 43;
      }

      else
      {
        v76 = 45;
      }

      *buf = 67110146;
      v144 = v76;
      v145 = 2082;
      v146 = object_getClassName(self);
      v147 = 2082;
      v148 = sel_getName(a2);
      v149 = 1024;
      v150 = 4230;
      v151 = 2114;
      *v152 = packetCopy;
      v20 = "%c[%{public}s %{public}s]:%i Invalid packet length ,packet: %{public}@";
LABEL_118:
      v87 = v17;
      v88 = 44;
      goto LABEL_119;
    default:
      if ((v9 - 224) <= 0xFFFFFFBF)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v79 = NFLogGetLogger();
        if (v79)
        {
          v80 = v79;
          v81 = object_getClass(self);
          v82 = class_isMetaClass(v81);
          v83 = object_getClassName(self);
          v139 = sel_getName(a2);
          v84 = 45;
          if (v82)
          {
            v84 = 43;
          }

          v80(3, "%c[%{public}s %{public}s]:%i Invalid custom command code: 0x%X ,packet: %{public}@", v84, v83, v139, 4238, v9, packetCopy);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v17 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v85 = object_getClass(self);
          if (class_isMetaClass(v85))
          {
            v86 = 43;
          }

          else
          {
            v86 = 45;
          }

          *buf = 67110402;
          v144 = v86;
          v145 = 2082;
          v146 = object_getClassName(self);
          v147 = 2082;
          v148 = sel_getName(a2);
          v149 = 1024;
          v150 = 4238;
          v151 = 1024;
          *v152 = v9;
          *&v152[4] = 2114;
          *&v152[6] = packetCopy;
          v20 = "%c[%{public}s %{public}s]:%i Invalid custom command code: 0x%X ,packet: %{public}@";
          v87 = v17;
          v88 = 50;
LABEL_119:
          _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, v20, buf, v88);
        }

LABEL_145:

        v7 = 10;
        goto LABEL_146;
      }

      if (-[_NFReaderSession sessionType](self, "sessionType") != 2 || (-[_NFReaderSession whitelistChecker](self, "whitelistChecker"), v96 = objc_claimAutoreleasedReturnValue(), v97 = [v96 validateISO15693TagAccessWithManufacturerCode:v10], v96, !v97))
      {
LABEL_132:
        if ((v8 & 0x20) == 0)
        {
          goto LABEL_2;
        }

        v17 = [[NSData alloc] initWithBytes:bytes + 2 length:8];
        currentTag = [(_NFReaderSession *)self currentTag];
        tagID = [currentTag tagID];
        v108 = [tagID isEqual:v17];

        if (v108)
        {

          goto LABEL_2;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v109 = NFLogGetLogger();
        if (v109)
        {
          v110 = v109;
          v111 = object_getClass(self);
          v112 = class_isMetaClass(v111);
          v113 = object_getClassName(self);
          v142 = sel_getName(a2);
          v114 = 45;
          if (v112)
          {
            v114 = 43;
          }

          v110(3, "%c[%{public}s %{public}s]:%i Invalid tag ID: %{public}@, packet: %{public}@", v114, v113, v142, 4250, v17, packetCopy);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v115 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
        {
          v116 = object_getClass(self);
          if (class_isMetaClass(v116))
          {
            v117 = 43;
          }

          else
          {
            v117 = 45;
          }

          *buf = 67110402;
          v144 = v117;
          v145 = 2082;
          v146 = object_getClassName(self);
          v147 = 2082;
          v148 = sel_getName(a2);
          v149 = 1024;
          v150 = 4250;
          v151 = 2114;
          *v152 = v17;
          *&v152[8] = 2114;
          *&v152[10] = packetCopy;
          _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid tag ID: %{public}@, packet: %{public}@", buf, 0x36u);
        }

        goto LABEL_145;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v98 = NFLogGetLogger();
      if (v98)
      {
        v99 = v98;
        v100 = object_getClass(self);
        v101 = class_isMetaClass(v100);
        v129 = object_getClassName(self);
        v141 = sel_getName(a2);
        v102 = 45;
        if (v101)
        {
          v102 = 43;
        }

        v99(3, "%c[%{public}s %{public}s]:%i Invalid manufacturer code, packet: %{public}@", v102, v129, v141, 4241, packetCopy);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v103 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
      {
        v104 = object_getClass(self);
        if (class_isMetaClass(v104))
        {
          v105 = 43;
        }

        else
        {
          v105 = 45;
        }

        *buf = 67110146;
        v144 = v105;
        v145 = 2082;
        v146 = object_getClassName(self);
        v147 = 2082;
        v148 = sel_getName(a2);
        v149 = 1024;
        v150 = 4241;
        v151 = 2114;
        *v152 = packetCopy;
        _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid manufacturer code, packet: %{public}@", buf, 0x2Cu);
      }

      v7 = 32;
LABEL_146:

      return v7;
  }
}

- (BOOL)_mifareCheck:(id)check
{
  checkCopy = check;
  driverWrapper = [(_NFReaderSession *)self driverWrapper];
  if (!driverWrapper || (v6 = driverWrapper, v7 = sub_100190BD0(driverWrapper, checkCopy, 0), v6, !v7))
  {
    v21 = 96;
    while (1)
    {
      driverWrapper2 = [(_NFReaderSession *)self driverWrapper];
      v10 = [[NSData alloc] initWithBytes:&v21 length:1];
      whitelistChecker = [(_NFReaderSession *)self whitelistChecker];
      [whitelistChecker sessionTimeLimit];
      v20 = 0;
      v12 = sub_1001960B0(driverWrapper2, v10, checkCopy, &v20);
      v13 = v20;

      if (v13 || ![v12 length])
      {
        goto LABEL_22;
      }

      v14 = *[v12 bytes];
      if (v14 != 175)
      {
        break;
      }

      v21 = -81;
    }

    v8 = 1;
    if (v14 <= 125)
    {
      v15 = v14 > 0x1E;
      v16 = (1 << v14) & 0x40001901;
      if (!v15 && v16 != 0)
      {
        goto LABEL_23;
      }

LABEL_22:
      v8 = 0;
      goto LABEL_23;
    }

    if (v14 > 201)
    {
      if (v14 != 202 && v14 != 238)
      {
        goto LABEL_22;
      }
    }

    else if (v14 != 126 && v14 != 144)
    {
      goto LABEL_22;
    }

LABEL_23:

    driverWrapper3 = [(_NFReaderSession *)self driverWrapper];
    sub_10019117C(driverWrapper3, checkCopy, 0);

    goto LABEL_24;
  }

  v8 = 0;
LABEL_24:

  return v8;
}

- (unsigned)_queryMifareType:(id)type outError:(id *)error
{
  typeCopy = type;
  if ([(_NFReaderSession *)self skipMifareClassification]|| (self->_pollOption & 0x20) != 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v11 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v15 = 45;
      if (isMetaClass)
      {
        v15 = 43;
      }

      v11(6, "%c[%{public}s %{public}s]:%i Skipping mifare classification", v15, ClassName, Name, 4299);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = object_getClass(self);
      if (class_isMetaClass(v17))
      {
        v18 = 43;
      }

      else
      {
        v18 = 45;
      }

      *buf = 67109890;
      v22 = v18;
      v23 = 2082;
      v24 = object_getClassName(self);
      v25 = 2082;
      v26 = sel_getName(a2);
      v27 = 1024;
      v28 = 4299;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Skipping mifare classification", buf, 0x22u);
    }

    goto LABEL_16;
  }

  if ([typeCopy type] != 9 && objc_msgSend(typeCopy, "type") != 3)
  {
LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  driverWrapper = [(_NFReaderSession *)self driverWrapper];
  v9 = sub_100192220(driverWrapper, typeCopy, error);

LABEL_17:
  return v9;
}

- (BOOL)_validateMifareAPDU:(id)u response:(id)response
{
  responseCopy = response;
  uCopy = u;
  v8 = [[NFCommandAPDU alloc] initWithData:uCopy];

  if (v8 && [v8 clss] != 144 && objc_msgSend(v8, "instruction") == 164 && objc_msgSend(v8, "p1") == 4)
  {
    payload = [v8 payload];
    v10 = [(_NFReaderSession *)self validateAID:payload withSelectResponse:responseCopy outRealAid:0];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)_requiresMifareUpdate:(id)update
{
  updateCopy = update;
  v5 = ([updateCopy type] == 3 || objc_msgSend(updateCopy, "type") == 9) && !self->_skipMifareClassification;

  return v5;
}

- (BOOL)_updateMifareTagInfo:(id)info outError:(id *)error
{
  infoCopy = info;
  if ([(_NFReaderSession *)self _requiresMifareUpdate:infoCopy])
  {
    v25 = 0;
    v8 = [(_NFReaderSession *)self _queryMifareType:infoCopy outError:&v25];
    v9 = v25;
    if ((v8 - 13) < 4 || v8 == 9)
    {
      [infoCopy _setType:v8];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v11 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v14 = 45;
        if (isMetaClass)
        {
          v14 = 43;
        }

        v11(6, "%c[%{public}s %{public}s]:%i Resetting tag to %{public}@", v14, ClassName, Name, 4350, infoCopy);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = object_getClass(self);
        if (class_isMetaClass(v16))
        {
          v17 = 43;
        }

        else
        {
          v17 = 45;
        }

        v18 = object_getClassName(self);
        v19 = sel_getName(a2);
        *buf = 67110146;
        v27 = v17;
        v28 = 2082;
        v29 = v18;
        v30 = 2082;
        v31 = v19;
        v32 = 1024;
        v33 = 4350;
        v34 = 2114;
        v35 = infoCopy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Resetting tag to %{public}@", buf, 0x2Cu);
      }
    }

    if (error)
    {
      v20 = v9;
      *error = v9;
    }

    v21 = [v9 code] != 51 && objc_msgSend(v9, "code") != 64;
  }

  else
  {
    v21 = 1;
  }

  return v21;
}

- (NFSystemPowerConsumptionMonitor)powerConsumptionReporter
{
  WeakRetained = objc_loadWeakRetained(&self->_powerConsumptionReporter);

  return WeakRetained;
}

- (id)_readFromTag:(id)tag offset:(unsigned __int16)offset outError:(id *)error
{
  v31 = -20480;
  v32 = HIBYTE(offset);
  offsetCopy = offset;
  v34 = 0;
  tagCopy = tag;
  v9 = [[NSData alloc] initWithBytes:&v31 length:5];
  driverWrapper = [(_NFReaderSession *)self driverWrapper];
  whitelistChecker = [(_NFReaderSession *)self whitelistChecker];
  [whitelistChecker sessionTimeLimit];
  v30 = 0;
  v12 = sub_1001960B0(driverWrapper, v9, tagCopy, &v30);

  v13 = v30;
  if (error && !v12)
  {
    if (v13)
    {
      code = [v13 code];
      v15 = [NSError alloc];
      v16 = [NSString stringWithUTF8String:"nfcd"];
      if (code == 64)
      {
        code2 = [v13 code];
        v39[0] = NSLocalizedDescriptionKey;
        if ([v13 code] > 75)
        {
          code3 = 76;
        }

        else
        {
          code3 = [v13 code];
        }

        v18 = [NSString stringWithUTF8String:off_10031C018[code3]];
        v40[0] = v18;
        v40[1] = v13;
        v39[1] = NSUnderlyingErrorKey;
        v39[2] = @"Line";
        v40[2] = &off_100335F10;
        v39[3] = @"Method";
        v19 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v40[3] = v19;
        v39[4] = NSDebugDescriptionErrorKey;
        v20 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 112];
        v40[4] = v20;
        v24 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:5];
        v25 = v15;
        v26 = v16;
        v27 = code2;
        goto LABEL_12;
      }

      v37[0] = NSLocalizedDescriptionKey;
      v18 = [NSString stringWithUTF8String:"Tag Error"];
      v38[0] = v18;
      v38[1] = v13;
      v37[1] = NSUnderlyingErrorKey;
      v37[2] = @"Line";
      v38[2] = &off_100335F28;
      v37[3] = @"Method";
      v19 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v38[3] = v19;
      v37[4] = NSDebugDescriptionErrorKey;
      v20 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 114];
      v38[4] = v20;
      v21 = v38;
      v22 = v37;
      v23 = 5;
    }

    else
    {
      v15 = [NSError alloc];
      v16 = [NSString stringWithUTF8String:"nfcd"];
      v35[0] = NSLocalizedDescriptionKey;
      v18 = [NSString stringWithUTF8String:"Tag Error"];
      v36[0] = v18;
      v36[1] = &off_100335F40;
      v35[1] = @"Line";
      v35[2] = @"Method";
      v19 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v36[2] = v19;
      v35[3] = NSDebugDescriptionErrorKey;
      v20 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 117];
      v36[3] = v20;
      v21 = v36;
      v22 = v35;
      v23 = 4;
    }

    v24 = [NSDictionary dictionaryWithObjects:v21 forKeys:v22 count:v23];
    v25 = v15;
    v26 = v16;
    v27 = 29;
LABEL_12:
    *error = [v25 initWithDomain:v26 code:v27 userInfo:v24];
  }

  return v12;
}

- (unint64_t)_extractCardAccessLengthFromTag:(id)tag outError:(id *)error
{
  tagCopy = tag;
  v84 = 4;
  v83 = 45056;
  v8 = [[NSData alloc] initWithBytes:&v83 length:5];
  driverWrapper = [(_NFReaderSession *)self driverWrapper];
  whitelistChecker = [(_NFReaderSession *)self whitelistChecker];
  [whitelistChecker sessionTimeLimit];
  v82 = 0;
  v11 = sub_1001960B0(driverWrapper, v8, tagCopy, &v82);
  v12 = v82;

  v81 = v12;
  if (v12 || (sub_100216084(v11) & 1) == 0)
  {
    v16 = v8;
    v17 = tagCopy;
    v18 = v11;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v20 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      errorCopy = error;
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v25 = 45;
      if (isMetaClass)
      {
        v25 = 43;
      }

      v76 = ClassName;
      error = errorCopy;
      v20(4, "%c[%{public}s %{public}s]:%i CardAccess access failed", v25, v76, Name, 138);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = object_getClass(self);
      if (class_isMetaClass(v27))
      {
        v28 = 43;
      }

      else
      {
        v28 = 45;
      }

      v29 = object_getClassName(self);
      v30 = sel_getName(a2);
      *buf = 67109890;
      v92 = v28;
      v93 = 2082;
      v94 = v29;
      v95 = 2082;
      v96 = v30;
      v97 = 1024;
      v98 = 138;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i CardAccess access failed", buf, 0x22u);
    }

    v11 = v18;
    if (!error)
    {
      v15 = 0;
LABEL_34:
      tagCopy = v17;
      v8 = v16;
      goto LABEL_35;
    }

    v31 = v81;
    if (v81)
    {
      v32 = v81;
      v15 = 0;
      *error = v81;
    }

    else
    {
      v33 = [NSError alloc];
      v34 = [NSString stringWithUTF8String:"nfcd"];
      v89[0] = NSLocalizedDescriptionKey;
      v35 = [NSString stringWithUTF8String:"Command Error"];
      v90[0] = v35;
      v90[1] = &off_100335F58;
      v89[1] = @"Line";
      v89[2] = @"Method";
      errorCopy2 = error;
      v37 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v90[2] = v37;
      v89[3] = NSDebugDescriptionErrorKey;
      v38 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 139];
      v90[3] = v38;
      v39 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:4];
      v40 = [v33 initWithDomain:v34 code:16 userInfo:v39];
      *errorCopy2 = v40;
      v11 = v18;

      v31 = 0;
      v15 = 0;
    }

    tagCopy = v17;
    v8 = v16;
  }

  else
  {
    bytes = [v11 bytes];
    if (*bytes != 49)
    {
      v16 = v8;
      v17 = tagCopy;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v41 = NFLogGetLogger();
      if (v41)
      {
        v42 = v41;
        v43 = object_getClass(self);
        v44 = class_isMetaClass(v43);
        v45 = object_getClassName(self);
        v78 = sel_getName(a2);
        v46 = 45;
        if (v44)
        {
          v46 = 43;
        }

        v42(4, "%c[%{public}s %{public}s]:%i Set not found", v46, v45, v78, 149);
      }

      v47 = v11;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v48 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 = object_getClass(self);
        if (class_isMetaClass(v49))
        {
          v50 = 43;
        }

        else
        {
          v50 = 45;
        }

        v51 = object_getClassName(self);
        v52 = sel_getName(a2);
        *buf = 67109890;
        v92 = v50;
        v93 = 2082;
        v94 = v51;
        v95 = 2082;
        v96 = v52;
        v97 = 1024;
        v98 = 149;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Set not found", buf, 0x22u);
      }

      errorCopy4 = error;
      if (!error)
      {
        goto LABEL_33;
      }

      v80 = [NSError alloc];
      v54 = [NSString stringWithUTF8String:"nfcd"];
      v87[0] = NSLocalizedDescriptionKey;
      v55 = [NSString stringWithUTF8String:"Command Error"];
      v88[0] = v55;
      v88[1] = &off_100335F70;
      v87[1] = @"Line";
      v87[2] = @"Method";
      v56 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v88[2] = v56;
      v87[3] = NSDebugDescriptionErrorKey;
      v57 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 150];
      v88[3] = v57;
      v58 = v88;
      v59 = v87;
      goto LABEL_32;
    }

    v14 = bytes[1];
    if ((bytes[1] & 0x80000000) == 0)
    {
      v15 = v14 + 2;
LABEL_35:
      v31 = v81;
      goto LABEL_36;
    }

    v62 = v14 & 0x7F;
    if (v62 >= 3)
    {
      v16 = v8;
      v17 = tagCopy;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v63 = NFLogGetLogger();
      if (v63)
      {
        v64 = v63;
        v65 = object_getClass(self);
        v66 = class_isMetaClass(v65);
        v67 = object_getClassName(self);
        v79 = sel_getName(a2);
        v68 = 45;
        if (v66)
        {
          v68 = 43;
        }

        v64(4, "%c[%{public}s %{public}s]:%i Unexpected length", v68, v67, v79, 162);
      }

      v47 = v11;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v69 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        v70 = object_getClass(self);
        if (class_isMetaClass(v70))
        {
          v71 = 43;
        }

        else
        {
          v71 = 45;
        }

        v72 = object_getClassName(self);
        v73 = sel_getName(a2);
        *buf = 67109890;
        v92 = v71;
        v93 = 2082;
        v94 = v72;
        v95 = 2082;
        v96 = v73;
        v97 = 1024;
        v98 = 162;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected length", buf, 0x22u);
      }

      errorCopy4 = error;
      if (!error)
      {
        goto LABEL_33;
      }

      v80 = [NSError alloc];
      v54 = [NSString stringWithUTF8String:"nfcd"];
      v85[0] = NSLocalizedDescriptionKey;
      v55 = [NSString stringWithUTF8String:"Command Error"];
      v86[0] = v55;
      v86[1] = &off_100335F88;
      v85[1] = @"Line";
      v85[2] = @"Method";
      v56 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v86[2] = v56;
      v85[3] = NSDebugDescriptionErrorKey;
      v57 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 163];
      v86[3] = v57;
      v58 = v86;
      v59 = v85;
LABEL_32:
      v60 = [NSDictionary dictionaryWithObjects:v58 forKeys:v59 count:4];
      *errorCopy4 = [v80 initWithDomain:v54 code:16 userInfo:v60];

LABEL_33:
      v15 = 0;
      v11 = v47;
      goto LABEL_34;
    }

    v74 = 0;
    if (v62)
    {
      v75 = v62;
      v31 = 0;
      do
      {
        v74 = bytes[2] | (v74 << 8);
        --v75;
      }

      while (v75);
    }

    else
    {
      v31 = 0;
    }

    v15 = v62 + v74 + 2;
  }

LABEL_36:

  return v15;
}

- (BOOL)_selectMFFromTag:(id)tag outError:(id *)error
{
  tagCopy = tag;
  v8 = [[NSData alloc] initWithBytes:&unk_100297BF8 length:2];
  v33 = 0;
  v9 = [(_NFReaderSession *)self _selectTag:tagCopy aid:v8 p1:0 p2:12 shortLe:0xFFFFFFFFLL error:&v33];

  v10 = v33;
  if (v10 || (sub_100216084(v9) & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v13 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v17 = 45;
      if (isMetaClass)
      {
        v17 = 43;
      }

      v13(4, "%c[%{public}s %{public}s]:%i SELECT MF failed", v17, ClassName, Name, 184);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = object_getClass(self);
      if (class_isMetaClass(v19))
      {
        v20 = 43;
      }

      else
      {
        v20 = 45;
      }

      v21 = object_getClassName(self);
      v22 = sel_getName(a2);
      *buf = 67109890;
      v37 = v20;
      v38 = 2082;
      v39 = v21;
      v40 = 2082;
      v41 = v22;
      v42 = 1024;
      v43 = 184;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i SELECT MF failed", buf, 0x22u);
    }

    if (error)
    {
      if (v10)
      {
        v23 = v10;
        v11 = 0;
        *error = v10;
        goto LABEL_18;
      }

      v24 = [NSError alloc];
      v25 = [NSString stringWithUTF8String:"nfcd"];
      v34[0] = NSLocalizedDescriptionKey;
      v26 = [NSString stringWithUTF8String:"Command Error"];
      v35[0] = v26;
      v35[1] = &off_100335FA0;
      v34[1] = @"Line";
      v34[2] = @"Method";
      v27 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v35[2] = v27;
      v34[3] = NSDebugDescriptionErrorKey;
      v28 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 185];
      v35[3] = v28;
      v29 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:4];
      v30 = [v24 initWithDomain:v25 code:16 userInfo:v29];
      *error = v30;
    }

    v11 = 0;
    goto LABEL_18;
  }

  v11 = 1;
LABEL_18:

  return v11;
}

- (BOOL)_readEFCardAccessFromTag:(id)tag buffer:(id)buffer outError:(id *)error
{
  tagCopy = tag;
  bufferCopy = buffer;
  v95 = 0;
  v11 = [(_NFReaderSession *)self _selectEF:284 p2:0 tag:tagCopy outResponse:&v95 outError:error];
  v12 = v95;
  v13 = v12;
  v14 = 0;
  if (!v11)
  {
    goto LABEL_73;
  }

  v92 = v12;
  v15 = [NFTLV TLVWithData:?];
  v16 = v15;
  sel = a2;
  if (!v15 || [v15 tag] != 111 && objc_msgSend(v16, "tag") != 98 || (objc_msgSend(v16, "children"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "count"), v17, !v18))
  {

LABEL_22:
    v94 = 0;
    v37 = [(_NFReaderSession *)self _extractCardAccessLengthFromTag:tagCopy outError:&v94];
    v38 = v94;
    if (v38)
    {
      v39 = v38;
      if (error)
      {
        v40 = v38;
        v14 = 0;
        *error = v39;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_72;
    }

    v91 = v13;
    if (v37 <= 1)
    {
      j = 1;
    }

    else
    {
      j = v37;
    }

    goto LABEL_37;
  }

  errorCopy = error;
  v86 = bufferCopy;
  v91 = v13;
  v88 = tagCopy;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  children = [v16 children];
  v20 = [children countByEnumeratingWithState:&v96 objects:buf count:16];
  if (v20)
  {
    v21 = v20;
    j = 0;
    v23 = *v97;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v97 != v23)
        {
          objc_enumerationMutation(children);
        }

        v25 = *(*(&v96 + 1) + 8 * i);
        if ([v25 tag] == 131)
        {
          value = [v25 value];
          v27 = [value length];

          if (v27 == 2)
          {
            value2 = [v25 value];
            v29 = *[value2 bytes];
          }
        }

        if ([v25 tag] == 128)
        {
          value3 = [v25 value];
          v31 = [value3 length];

          if (v31)
          {
            value4 = [v25 value];
            bytes = [value4 bytes];

            value5 = [v25 value];
            v35 = [value5 length];

            for (j = 0; v35; --v35)
            {
              v36 = *bytes++;
              j = v36 | (j << 8);
            }
          }
        }
      }

      v21 = [children countByEnumeratingWithState:&v96 objects:buf count:16];
    }

    while (v21);
  }

  else
  {
    j = 0;
  }

  bufferCopy = v86;
  tagCopy = v88;
  v13 = v91;
  error = errorCopy;
  if (!j)
  {
    goto LABEL_22;
  }

  if (j >= 0x10000)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i File size > UINT16_MAX; apply limit", "[_NFReaderSession(PACE) _readEFCardAccessFromTag:buffer:outError:]", 244);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v42 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *v103 = "[_NFReaderSession(PACE) _readEFCardAccessFromTag:buffer:outError:]";
      *&v103[8] = 1024;
      *&v103[10] = 244;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%{public}s:%i File size > UINT16_MAX; apply limit", buf, 0x12u);
    }

    j = 0xFFFFLL;
  }

LABEL_37:
  errorCopy2 = error;
  v44 = 0;
  while (1)
  {
    v93 = 0;
    v45 = [(_NFReaderSession *)self _readFromTag:tagCopy offset:v44 outError:&v93];
    v46 = v93;
    v39 = v46;
    if (v46)
    {
      if (errorCopy2)
      {
        v50 = v46;
        *errorCopy2 = v39;
      }

      goto LABEL_49;
    }

    if ((sub_100216084(v45) & 1) == 0)
    {
      if (errorCopy2)
      {
        v51 = errorCopy2;
        v87 = bufferCopy;
        v52 = [NSError alloc];
        v53 = [NSString stringWithUTF8String:"nfcd"];
        v100[0] = NSLocalizedDescriptionKey;
        [NSString stringWithUTF8String:"Command Error"];
        v54 = v89 = tagCopy;
        v101[0] = v54;
        v101[1] = &off_100335FD0;
        v100[1] = @"Line";
        v100[2] = @"Method";
        v55 = [[NSString alloc] initWithFormat:@"%s", sel_getName(sel)];
        v101[2] = v55;
        v100[3] = NSDebugDescriptionErrorKey;
        v56 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(sel), 255];
        v101[3] = v56;
        v57 = [NSDictionary dictionaryWithObjects:v101 forKeys:v100 count:4];
        v58 = v52;
        bufferCopy = v87;
        v59 = [v58 initWithDomain:v53 code:16 userInfo:v57];
        *v51 = v59;

        tagCopy = v89;
      }

LABEL_49:

      v14 = 0;
      goto LABEL_71;
    }

    v47 = [v45 length];
    v48 = (v47 - 2);
    if (v47 == 2)
    {
      break;
    }

    [bufferCopy appendBytes:objc_msgSend(v45 length:{"bytes"), v48}];
    v49 = j >= v48;
    j -= v48;
    if (!v49)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v72 = NFLogGetLogger();
      if (v72)
      {
        v73 = v72;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(sel);
        v77 = 45;
        if (isMetaClass)
        {
          v77 = 43;
        }

        v73(4, "%c[%{public}s %{public}s]:%i Excess data returned from tag", v77, ClassName, Name, 266);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v66 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v78 = object_getClass(self);
        if (class_isMetaClass(v78))
        {
          v79 = 43;
        }

        else
        {
          v79 = 45;
        }

        v80 = object_getClassName(self);
        v81 = sel_getName(sel);
        *buf = 67109890;
        *v103 = v79;
        *&v103[4] = 2082;
        *&v103[6] = v80;
        v104 = 2082;
        v105 = v81;
        v106 = 1024;
        v107 = 266;
        v71 = "%c[%{public}s %{public}s]:%i Excess data returned from tag";
        goto LABEL_68;
      }

      goto LABEL_69;
    }

    v44 += v48;

    if (!j)
    {
      goto LABEL_70;
    }
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v60 = NFLogGetLogger();
  if (v60)
  {
    v61 = v60;
    v62 = object_getClass(self);
    v63 = class_isMetaClass(v62);
    v64 = object_getClassName(self);
    v83 = sel_getName(sel);
    v65 = 45;
    if (v63)
    {
      v65 = 43;
    }

    v61(4, "%c[%{public}s %{public}s]:%i error: missing data", v65, v64, v83, 261);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v66 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
  {
    v67 = object_getClass(self);
    if (class_isMetaClass(v67))
    {
      v68 = 43;
    }

    else
    {
      v68 = 45;
    }

    v69 = object_getClassName(self);
    v70 = sel_getName(sel);
    *buf = 67109890;
    *v103 = v68;
    *&v103[4] = 2082;
    *&v103[6] = v69;
    v104 = 2082;
    v105 = v70;
    v106 = 1024;
    v107 = 261;
    v71 = "%c[%{public}s %{public}s]:%i error: missing data";
LABEL_68:
    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, v71, buf, 0x22u);
  }

LABEL_69:

LABEL_70:
  v39 = 0;
  v14 = 1;
LABEL_71:
  v13 = v91;
LABEL_72:

LABEL_73:
  return v14;
}

- (BOOL)isPaceSupported:(id)supported
{
  nF_asHexString = [supported NF_asHexString];
  if (nF_asHexString)
  {
    v4 = [NFATLMobileSettings findAID:nF_asHexString filterType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)selectPaceApp:(id)app fromTag:(id)tag resolvedAid:(id *)aid outError:(id *)error
{
  appCopy = app;
  tagCopy = tag;
  if (aid)
  {
    *aid = 0;
  }

  v125 = 0;
  v13 = [(_NFReaderSession *)self _selectTag:tagCopy aid:appCopy p1:4 p2:12 shortLe:0xFFFFFFFFLL error:&v125];
  v14 = v125;
  v15 = v14;
  if (!v13 || v14)
  {
    goto LABEL_45;
  }

  v16 = sub_100217D44(v13, 0);
  if (v16 == 27266)
  {
    v15 = 0;
    goto LABEL_47;
  }

  if (v16 == 36864)
  {
    if (aid)
    {
      v17 = appCopy;
      v15 = 0;
      *aid = appCopy;
    }

    else
    {
      v15 = 0;
    }

    v52 = 1;
    goto LABEL_94;
  }

  v124 = 0;
  [(_NFReaderSession *)self _selectMFFromTag:tagCopy outError:&v124];
  v18 = v124;
  v15 = v18;
  if (v18)
  {
    if ([v18 code] != 28)
    {
LABEL_45:
      if (error)
      {
        v53 = v15;
        v52 = 0;
        *error = v15;
        goto LABEL_94;
      }

LABEL_47:
      v52 = 0;
      goto LABEL_94;
    }
  }

  errorCopy = error;
  v123 = v15;
  v19 = [(_NFReaderSession *)self _selectEF:12032 tag:tagCopy outError:&v123];
  v20 = v123;

  if (v19)
  {
    v122 = v20;
    v21 = [(_NFReaderSession *)self _readFromTag:tagCopy offset:0 outError:&v122];
    v15 = v122;

    v110 = v21;
    if (v15 || (sub_100216084(v21) & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v56 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v60 = 45;
        if (isMetaClass)
        {
          v60 = 43;
        }

        v56(4, "%c[%{public}s %{public}s]:%i Read EF.DIR failed", v60, ClassName, Name, 324);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v61 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v62 = object_getClass(self);
        if (class_isMetaClass(v62))
        {
          v63 = 43;
        }

        else
        {
          v63 = 45;
        }

        v64 = object_getClassName(self);
        v65 = sel_getName(a2);
        *buf = 67109890;
        v133 = v63;
        v134 = 2082;
        v135 = v64;
        v136 = 2082;
        v137 = v65;
        v138 = 1024;
        v139 = 324;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Read EF.DIR failed", buf, 0x22u);
      }

      if (errorCopy)
      {
        v13 = v110;
        if (v15)
        {
          v66 = v15;
          v52 = 0;
          *errorCopy = v15;
          goto LABEL_94;
        }

        v67 = [NSError alloc];
        v68 = [NSString stringWithUTF8String:"nfcd"];
        v130[0] = NSLocalizedDescriptionKey;
        v69 = [NSString stringWithUTF8String:"Command Error"];
        v131[0] = v69;
        v131[1] = &off_100335FE8;
        v130[1] = @"Line";
        v130[2] = @"Method";
        v70 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v131[2] = v70;
        v130[3] = NSDebugDescriptionErrorKey;
        v71 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 325];
        v131[3] = v71;
        v72 = [NSDictionary dictionaryWithObjects:v131 forKeys:v130 count:4];
        v73 = [v67 initWithDomain:v68 code:16 userInfo:v72];
        *errorCopy = v73;

        v15 = 0;
      }

      v52 = 0;
      v13 = v110;
      goto LABEL_94;
    }

    v22 = [v21 subdataWithRange:{0, objc_msgSend(v21, "length") - 2}];
    v23 = [NFTLV TLVsWithData:v22];

    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    obj = v23;
    v24 = [obj countByEnumeratingWithState:&v118 objects:v129 count:16];
    sel = a2;
    v107 = tagCopy;
    if (!v24)
    {
      goto LABEL_35;
    }

    v25 = v24;
    v26 = *v119;
    v104 = *v119;
    while (2)
    {
      v27 = 0;
      v105 = v25;
      while (2)
      {
        if (*v119 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v118 + 1) + 8 * v27);
        if ([v28 tag] != 97)
        {
          goto LABEL_33;
        }

        [v28 children];
        v29 = v108 = v27;
        v30 = [v29 count];

        v27 = v108;
        if (!v30)
        {
          goto LABEL_33;
        }

        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        children = [v28 children];
        v32 = [children countByEnumeratingWithState:&v114 objects:v128 count:16];
        if (!v32)
        {
          goto LABEL_32;
        }

        v33 = v32;
        v34 = *v115;
        while (2)
        {
          for (i = 0; i != v33; i = i + 1)
          {
            if (*v115 != v34)
            {
              objc_enumerationMutation(children);
            }

            v36 = *(*(&v114 + 1) + 8 * i);
            if ([v36 tag] == 79)
            {
              value = [v36 value];
              v38 = [value length];

              if (v38)
              {
                value2 = [v36 value];
                v40 = [appCopy isEqualToData:value2];

                if (v40)
                {

                  v113 = 0;
                  tagCopy = v107;
                  v74 = [(_NFReaderSession *)self _selectEF:284 tag:v107 outError:&v113];
                  v75 = v113;
                  v15 = v75;
                  if (v74)
                  {
                    v112 = v75;
                    v13 = [(_NFReaderSession *)self _readFromTag:v107 offset:0 outError:&v112];
                    v76 = v112;

                    if (v76 || (sub_100216084(v13) & 1) == 0)
                    {
                      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                      v78 = NFLogGetLogger();
                      if (v78)
                      {
                        v79 = v78;
                        v80 = object_getClass(self);
                        v81 = class_isMetaClass(v80);
                        v82 = v13;
                        v83 = object_getClassName(self);
                        v103 = sel_getName(sel);
                        v84 = 45;
                        if (v81)
                        {
                          v84 = 43;
                        }

                        v100 = v83;
                        v13 = v82;
                        v79(4, "%c[%{public}s %{public}s]:%i Read EF.CardAccess failed", v84, v100, v103, 361);
                      }

                      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                      v85 = NFSharedLogGetLogger();
                      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                      {
                        v86 = object_getClass(self);
                        if (class_isMetaClass(v86))
                        {
                          v87 = 43;
                        }

                        else
                        {
                          v87 = 45;
                        }

                        v88 = object_getClassName(self);
                        v89 = sel_getName(sel);
                        *buf = 67109890;
                        v133 = v87;
                        v134 = 2082;
                        v135 = v88;
                        v136 = 2082;
                        v137 = v89;
                        v138 = 1024;
                        v139 = 361;
                        _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Read EF.CardAccess failed", buf, 0x22u);
                      }

                      if (errorCopy)
                      {
                        if (!v76)
                        {
                          v91 = [NSError alloc];
                          v92 = [NSString stringWithUTF8String:"nfcd"];
                          v126[0] = NSLocalizedDescriptionKey;
                          v93 = [NSString stringWithUTF8String:"Command Error"];
                          v127[0] = v93;
                          v127[1] = &off_100336000;
                          v126[1] = @"Line";
                          v126[2] = @"Method";
                          v94 = v13;
                          v95 = [[NSString alloc] initWithFormat:@"%s", sel_getName(sel)];
                          v127[2] = v95;
                          v126[3] = NSDebugDescriptionErrorKey;
                          v96 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(sel), 362];
                          v127[3] = v96;
                          v97 = [NSDictionary dictionaryWithObjects:v127 forKeys:v126 count:4];
                          v98 = [v91 initWithDomain:v92 code:16 userInfo:v97];
                          *errorCopy = v98;

                          v15 = 0;
                          v52 = 0;
                          v13 = v94;
                          goto LABEL_93;
                        }

                        v90 = v76;
                        v52 = 0;
                        *errorCopy = v76;
                      }

                      else
                      {
                        v52 = 0;
                      }

                      v15 = v76;
                      goto LABEL_93;
                    }

                    v15 = 0;
                    if (aid)
                    {
                      *aid = [[NSData alloc] initWithBytes:&unk_100297BF8 length:2];
                    }

                    v52 = 1;
                  }

                  else
                  {
                    if (errorCopy)
                    {
                      v77 = v75;
                      v52 = 0;
                      *errorCopy = v15;
                    }

                    else
                    {
                      v52 = 0;
                    }

                    v13 = v110;
                  }

                  goto LABEL_93;
                }
              }
            }
          }

          v33 = [children countByEnumeratingWithState:&v114 objects:v128 count:16];
          if (v33)
          {
            continue;
          }

          break;
        }

LABEL_32:

        v21 = v110;
        v26 = v104;
        v25 = v105;
        v27 = v108;
LABEL_33:
        if (++v27 != v25)
        {
          continue;
        }

        break;
      }

      v25 = [obj countByEnumeratingWithState:&v118 objects:v129 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }

LABEL_35:
    v13 = v21;

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v41 = NFLogGetLogger();
    if (v41)
    {
      v42 = v41;
      v43 = object_getClass(self);
      v44 = class_isMetaClass(v43);
      v45 = object_getClassName(self);
      v101 = sel_getName(sel);
      v46 = 45;
      if (v44)
      {
        v46 = 43;
      }

      v42(4, "%c[%{public}s %{public}s]:%i Requested app not found in EF.DIR", v46, v45, v101, 348);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v47 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = object_getClass(self);
      if (class_isMetaClass(v48))
      {
        v49 = 43;
      }

      else
      {
        v49 = 45;
      }

      v50 = object_getClassName(self);
      v51 = sel_getName(sel);
      *buf = 67109890;
      v133 = v49;
      v134 = 2082;
      v135 = v50;
      v136 = 2082;
      v137 = v51;
      v138 = 1024;
      v139 = 348;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Requested app not found in EF.DIR", buf, 0x22u);
    }

    v15 = 0;
    v52 = 0;
    tagCopy = v107;
LABEL_93:
  }

  else
  {
    if (errorCopy)
    {
      v54 = v20;
      v52 = 0;
      *errorCopy = v20;
    }

    else
    {
      v52 = 0;
    }

    v15 = v20;
  }

LABEL_94:

  return v52;
}

- (BOOL)selectPaceApp:(id)app fromTag:(id)tag outError:(id *)error
{
  tagCopy = tag;
  appCopy = app;
  v11 = [[NSData alloc] initWithBytes:&unk_100297BF8 length:2];
  if ([appCopy isEqualToData:v11])
  {
    v32 = 0;
    v12 = &v32;
    v13 = &v32;
    selfCopy2 = self;
    v15 = tagCopy;
    v16 = appCopy;
    v17 = 0;
  }

  else
  {
    v31 = 0;
    v12 = &v31;
    v13 = &v31;
    selfCopy2 = self;
    v15 = tagCopy;
    v16 = appCopy;
    v17 = 4;
  }

  v18 = [(_NFReaderSession *)selfCopy2 _selectTag:v15 aid:v16 p1:v17 p2:12 shortLe:0xFFFFFFFFLL error:v13];

  v19 = *v12;
  v20 = v19;
  if (!v18 || v19 || (sub_100216084(v18) & 1) == 0)
  {
    if (error)
    {
      if (v20)
      {
        v22 = v20;
        v21 = 0;
        *error = v20;
        goto LABEL_13;
      }

      v23 = [NSError alloc];
      v24 = [NSString stringWithUTF8String:"nfcd"];
      v33[0] = NSLocalizedDescriptionKey;
      v25 = [NSString stringWithUTF8String:"Command Error"];
      v34[0] = v25;
      v34[1] = &off_100336018;
      v33[1] = @"Line";
      v33[2] = @"Method";
      v26 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v34[2] = v26;
      v33[3] = NSDebugDescriptionErrorKey;
      v27 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 384];
      v34[3] = v27;
      v28 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:4];
      v29 = [v23 initWithDomain:v24 code:16 userInfo:v28];
      *error = v29;
    }

    v21 = 0;
    goto LABEL_13;
  }

  v21 = 1;
LABEL_13:

  return v21;
}

- (id)detectPaceAppOnTag:(id)tag appFound:(id *)found
{
  tagCopy = tag;
  v50 = 0;
  v8 = [(_NFReaderSession *)self _selectMFFromTag:tagCopy outError:&v50];
  v9 = v50;
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    v28 = v9;
LABEL_16:
    v15 = v28;
    v27 = v28;
    goto LABEL_34;
  }

  v49 = v9;
  v11 = [(_NFReaderSession *)self _selectEF:284 tag:tagCopy outError:&v49];
  v12 = v49;

  if ((v11 & 1) == 0)
  {
    v28 = v12;
    goto LABEL_16;
  }

  v13 = objc_opt_new();
  v48 = v12;
  v14 = [(_NFReaderSession *)self _readEFCardAccessFromTag:tagCopy buffer:v13 outError:&v48];
  v15 = v48;

  if (v14)
  {
    sub_1002358D0(SecurityInfo, v13);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v16 = v47 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v44 objects:v61 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v45;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v45 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v44 + 1) + 8 * i);
          if (!v21 || *(v21 + 8) <= 1uLL)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v30 = Logger;
              Class = object_getClass(self);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(self);
              Name = sel_getName(a2);
              v34 = 45;
              if (isMetaClass)
              {
                v34 = 43;
              }

              v30(6, "%c[%{public}s %{public}s]:%i PACE tag found!", v34, ClassName, Name, 417);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v35 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v36 = object_getClass(self);
              if (class_isMetaClass(v36))
              {
                v37 = 43;
              }

              else
              {
                v37 = 45;
              }

              v38 = object_getClassName(self);
              v39 = sel_getName(a2);
              *buf = 67109890;
              v54 = v37;
              v55 = 2082;
              v56 = v38;
              v57 = 2082;
              v58 = v39;
              v59 = 1024;
              v60 = 417;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i PACE tag found!", buf, 0x22u);
            }

            v40 = sub_10024DC10();
            if (v40)
            {
              v40[164] = 1;
            }

            v27 = 0;
            if (found)
            {
              *found = [[NSData alloc] initWithBytes:&unk_100297BF8 length:2];
            }

            v22 = v16;
            goto LABEL_32;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v44 objects:v61 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v43 = [NSError alloc];
    v22 = [NSString stringWithUTF8String:"nfcd"];
    v51[0] = NSLocalizedDescriptionKey;
    v23 = [NSString stringWithUTF8String:"Tag Not Found"];
    v52[0] = v23;
    v52[1] = &off_100336030;
    v51[1] = @"Line";
    v51[2] = @"Method";
    v24 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v52[2] = v24;
    v51[3] = NSDebugDescriptionErrorKey;
    v25 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 425];
    v52[3] = v25;
    v26 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:4];
    v27 = [v43 initWithDomain:v22 code:28 userInfo:v26];

LABEL_32:
  }

  else
  {
    v27 = v15;
  }

LABEL_34:

  return v27;
}

@end