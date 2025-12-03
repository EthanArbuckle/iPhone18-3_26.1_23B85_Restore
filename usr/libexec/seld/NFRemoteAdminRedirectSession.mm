@interface NFRemoteAdminRedirectSession
- (BOOL)aborted;
- (BOOL)closeSession;
- (BOOL)openConnection:(id)connection;
- (BOOL)openSession;
- (NFRemoteAdminRedirectSession)init;
- (NFRemoteAdminRedirectSession)initWithState:(id)state oneTimeConnection:(BOOL)connection secureElementManagerSession:(id)session;
- (id)getNextRequest;
- (int64_t)abortedReason;
- (unint64_t)executeHttpRequest:(id)request httpHeader:(id)header response:(id)response responseHeader:(id)responseHeader duration:(double *)duration sessionError:(id *)error;
- (unint64_t)executeScript:(id)script;
- (unint64_t)performCheckIn;
- (unint64_t)performRedirect;
- (unint64_t)run;
- (void)abort:(int64_t)abort;
- (void)closeConnection;
- (void)processNotification:(id)notification;
@end

@implementation NFRemoteAdminRedirectSession

- (NFRemoteAdminRedirectSession)init
{
  v3.receiver = self;
  v3.super_class = NFRemoteAdminRedirectSession;
  return [(NFRemoteAdminRedirectSession *)&v3 init];
}

- (NFRemoteAdminRedirectSession)initWithState:(id)state oneTimeConnection:(BOOL)connection secureElementManagerSession:(id)session
{
  stateCopy = state;
  sessionCopy = session;
  v15.receiver = self;
  v15.super_class = NFRemoteAdminRedirectSession;
  v11 = [(NFRemoteAdminRedirectSession *)&v15 init];
  if (v11)
  {
    seid = [stateCopy seid];
    targetSEID = v11->_targetSEID;
    v11->_targetSEID = seid;

    objc_storeStrong(&v11->_redirectState, state);
    objc_storeStrong(&v11->_seSession, session);
    v11->_allocateSESession = sessionCopy == 0;
    v11->_oneTimeConnection = connection;
  }

  return v11;
}

- (void)abort:(int64_t)abort
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(selfCopy);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(selfCopy);
    Name = sel_getName(a2);
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i Aborting...", v11, ClassName, Name, 67);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(selfCopy);
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    *buf = 67109890;
    v18 = v14;
    v19 = 2082;
    v20 = object_getClassName(selfCopy);
    v21 = 2082;
    v22 = sel_getName(a2);
    v23 = 1024;
    v24 = 67;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Aborting...", buf, 0x22u);
  }

  selfCopy->_abort = abort;
  if (selfCopy->_allocateSESession)
  {
    [(NFSecureElementManagerSession *)selfCopy->_seSession endSessionWithCompletion:&stru_100054758];
  }

  connection = [(NFRemoteAdminRedirectSession *)selfCopy connection];
  [connection disconnect];

  objc_sync_exit(selfCopy);
}

- (BOOL)aborted
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_abort > 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (int64_t)abortedReason
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  abort = selfCopy->_abort;
  objc_sync_exit(selfCopy);

  return abort;
}

- (void)processNotification:(id)notification
{
  notificationCopy = notification;
  redirectState = [(NFRemoteAdminRedirectSession *)self redirectState];
  [redirectState setNotification:notificationCopy];
}

- (id)getNextRequest
{
  p_isa = &self->super.isa;
  redirectState = [(NFRemoteAdminRedirectSession *)self redirectState];
  step = [redirectState step];

  redirectState2 = [p_isa redirectState];
  v7 = redirectState2;
  if (step == 2)
  {
    p_isa = [redirectState2 redirectResponse];

    goto LABEL_91;
  }

  unsentScriptResponse = [redirectState2 unsentScriptResponse];

  redirectState3 = [p_isa redirectState];
  v10 = redirectState3;
  if (unsentScriptResponse)
  {
    p_isa = [redirectState3 unsentScriptResponse];

    goto LABEL_91;
  }

  whitelistedInstances = [redirectState3 whitelistedInstances];

  v12 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
  v13 = objc_opt_new();
  redirectState4 = [p_isa redirectState];
  version = [redirectState4 version];
  if (version)
  {
    redirectState5 = [p_isa redirectState];
    version2 = [redirectState5 version];
    [v13 setObject:version2 forKeyedSubscript:@"version"];
  }

  else
  {
    [v13 setObject:&off_100057348 forKeyedSubscript:@"version"];
  }

  if (whitelistedInstances)
  {
    [v13 setObject:whitelistedInstances forKeyedSubscript:@"whitelistedInstances"];
  }

  v18 = p_isa[1];
  if (v18)
  {
    v111 = 0;
  }

  else
  {
    v19 = p_isa[2];
    v116 = 0;
    v20 = [v19 stateInformationWithRedirectInfo:v13 error:&v116];
    v111 = v116;
    v21 = p_isa[1];
    p_isa[1] = v20;

    v18 = p_isa[1];
    if (!v18)
    {
LABEL_23:
      v32 = v13;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v34 = Logger;
        Class = object_getClass(p_isa);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(p_isa);
        Name = sel_getName(a2);
        if (v111)
        {
          v39 = v111;
        }

        else
        {
          v39 = &stru_100055408;
        }

        v40 = 45;
        if (isMetaClass)
        {
          v40 = 43;
        }

        v34(3, "%c[%{public}s %{public}s]:%i Failed to query state information %{public}@", v40, ClassName, Name, 164, v39);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v41 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = object_getClass(p_isa);
        if (class_isMetaClass(v42))
        {
          v43 = 43;
        }

        else
        {
          v43 = 45;
        }

        v44 = object_getClassName(p_isa);
        v45 = sel_getName(a2);
        v46 = v111;
        *buf = 67110146;
        if (!v111)
        {
          v46 = &stru_100055408;
        }

        v119 = v43;
        v120 = 2082;
        v121 = v44;
        v122 = 2082;
        v123 = v45;
        v124 = 1024;
        v125 = 164;
        v126 = 2114;
        v127 = v46;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to query state information %{public}@", buf, 0x2Cu);
      }

      p_isa = 0;
      v13 = v32;
      goto LABEL_90;
    }
  }

  if (![v18 count])
  {
    goto LABEL_23;
  }

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v22 = p_isa[1];
  v23 = [v22 countByEnumeratingWithState:&v112 objects:v117 count:16];
  v110 = v13;
  if (v23)
  {
    v24 = v23;
    sel = whitelistedInstances;
    v25 = *v113;
    while (2)
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v113 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v112 + 1) + 8 * i);
        v28 = [v27 NF_stringForKey:@"SEID"];
        targetSEID = [p_isa targetSEID];
        v30 = [v28 isEqualToString:targetSEID];

        if (v30)
        {
          v31 = v27;

          goto LABEL_39;
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v112 objects:v117 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }

    v31 = 0;
LABEL_39:

    v41 = v31;
    whitelistedInstances = sel;
    v13 = v110;
    v12 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
    if (!p_isa)
    {
      goto LABEL_89;
    }
  }

  else
  {

    v41 = 0;
  }

  v47 = v12[198];
  v48 = objc_opt_new();
  if (v41)
  {
    v49 = whitelistedInstances;
    redirectState6 = [p_isa redirectState];
    version3 = [redirectState6 version];
    if (version3)
    {
      redirectState7 = [p_isa redirectState];
      version4 = [redirectState7 version];
      [v48 setObject:version4 forKeyedSubscript:@"kVersion"];
    }

    else
    {
      [v48 setObject:&off_100057348 forKeyedSubscript:@"kVersion"];
    }

    redirectState8 = [p_isa redirectState];
    forwardDataToSP = [redirectState8 forwardDataToSP];
    if (forwardDataToSP)
    {
      redirectState9 = [p_isa redirectState];
      forwardDataToSP2 = [redirectState9 forwardDataToSP];
      [v48 setObject:forwardDataToSP2 forKeyedSubscript:@"forwardData"];
    }

    else
    {
      [v48 setObject:&__NSDictionary0__struct forKeyedSubscript:@"forwardData"];
    }

    v71 = v12[198];
    v72 = objc_opt_new();
    [v72 setObject:@"internal" forKeyedSubscript:@"secureElementType"];
    targetSEID2 = [p_isa targetSEID];

    if (targetSEID2)
    {
      targetSEID3 = [p_isa targetSEID];
      [v72 setObject:targetSEID3 forKeyedSubscript:@"SEID"];

      v75 = [v41 NF_dictionaryForKey:@"casdCertificate"];
      if (v75)
      {
        [v72 setObject:v75 forKeyedSubscript:@"casdCertificate"];
        redirectState10 = [p_isa redirectState];
        version5 = [redirectState10 version];
        intValue = [version5 intValue];

        if (intValue == 4)
        {
          v79 = [v41 NF_arrayForKey:@"protocolV4Containers"];
          if ([v79 count])
          {
            [v72 setObject:v79 forKeyedSubscript:@"containers"];
          }
        }

        v80 = [[NSDictionary alloc] initWithDictionary:v72];
        [v48 setObject:v80 forKeyedSubscript:@"SEStateInfo"];

        v81 = [[NSDictionary alloc] initWithDictionary:v48];
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v93 = NFLogGetLogger();
        if (v93)
        {
          v94 = v93;
          v95 = object_getClass(p_isa);
          v96 = class_isMetaClass(v95);
          v97 = object_getClassName(p_isa);
          v108 = sel_getName("_generateRequestForSEState:");
          v98 = 45;
          if (v96)
          {
            v98 = 43;
          }

          v94(3, "%c[%{public}s %{public}s]:%i Missing CASD certificate", v98, v97, v108, 117);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v99 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
        {
          v100 = object_getClass(p_isa);
          if (class_isMetaClass(v100))
          {
            v101 = 43;
          }

          else
          {
            v101 = 45;
          }

          v102 = object_getClassName(p_isa);
          v103 = sel_getName("_generateRequestForSEState:");
          *buf = 67109890;
          v119 = v101;
          v120 = 2082;
          v121 = v102;
          v122 = 2082;
          v123 = v103;
          v124 = 1024;
          v125 = 117;
          _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing CASD certificate", buf, 0x22u);
        }

        v81 = objc_opt_new();
      }

      p_isa = v81;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v82 = NFLogGetLogger();
      if (v82)
      {
        v83 = v82;
        v84 = object_getClass(p_isa);
        v85 = class_isMetaClass(v84);
        v86 = object_getClassName(p_isa);
        v107 = sel_getName("_generateRequestForSEState:");
        v87 = 45;
        if (v85)
        {
          v87 = 43;
        }

        v83(3, "%c[%{public}s %{public}s]:%i Invalid SEID", v87, v86, v107, 111);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v88 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        v89 = object_getClass(p_isa);
        if (class_isMetaClass(v89))
        {
          v90 = 43;
        }

        else
        {
          v90 = 45;
        }

        v91 = object_getClassName(p_isa);
        v92 = sel_getName("_generateRequestForSEState:");
        *buf = 67109890;
        v119 = v90;
        v120 = 2082;
        v121 = v91;
        v122 = 2082;
        v123 = v92;
        v124 = 1024;
        v125 = 111;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid SEID", buf, 0x22u);
      }

      p_isa = objc_opt_new();
    }

    whitelistedInstances = v49;
    v13 = v110;
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v54 = NFLogGetLogger();
    if (v54)
    {
      v55 = v54;
      v56 = object_getClass(p_isa);
      v57 = class_isMetaClass(v56);
      v58 = v13;
      v59 = whitelistedInstances;
      v60 = object_getClassName(p_isa);
      v106 = sel_getName("_generateRequestForSEState:");
      v61 = 45;
      if (v57)
      {
        v61 = 43;
      }

      v105 = v60;
      whitelistedInstances = v59;
      v13 = v58;
      v55(3, "%c[%{public}s %{public}s]:%i Failed to find STATE!!!!", v61, v105, v106, 101);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v62 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v63 = object_getClass(p_isa);
      if (class_isMetaClass(v63))
      {
        v64 = 43;
      }

      else
      {
        v64 = 45;
      }

      v65 = object_getClassName(p_isa);
      v66 = sel_getName("_generateRequestForSEState:");
      *buf = 67109890;
      v119 = v64;
      v120 = 2082;
      v121 = v65;
      v122 = 2082;
      v123 = v66;
      v124 = 1024;
      v125 = 101;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to find STATE!!!!", buf, 0x22u);
    }

    p_isa = [[NSDictionary alloc] initWithDictionary:v48];
  }

LABEL_89:
LABEL_90:

LABEL_91:

  return p_isa;
}

- (unint64_t)executeScript:(id)script
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  scriptCopy = script;
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

    v8(6, "%c[%{public}s %{public}s]:%i Executing TSM script", v12, ClassName, Name, 187);
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

    *buf = 67109890;
    v123 = v15;
    v124 = 2082;
    v125 = object_getClassName(self);
    v126 = 2082;
    v127 = sel_getName(a2);
    v128 = 1024;
    v129 = 187;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Executing TSM script", buf, 0x22u);
  }

  v16 = objc_opt_new();
  if (!v16)
  {
    v113 = +[NSAssertionHandler currentHandler];
    [v113 handleFailureInMethod:a2 object:self file:@"NFRemoteAdminRedirectSession.m" lineNumber:191 description:@"Out of resources"];
  }

  redirectState = [(NFRemoteAdminRedirectSession *)self redirectState];
  [v16 setCheckAIDAllowList:{objc_msgSend(redirectState, "step") == 1}];

  targetSEID = [(NFRemoteAdminRedirectSession *)self targetSEID];
  [v16 setSeid:targetSEID];

  redirectState2 = [(NFRemoteAdminRedirectSession *)self redirectState];
  whitelistedInstances = [redirectState2 whitelistedInstances];
  [v16 setAIDAllowList:whitelistedInstances];

  [v16 setInitialSelectBeforeRun:self->_performInitialAIDSelectFromWhitelist];
  seSession = self->_seSession;
  v121 = 0;
  LODWORD(redirectState2) = [(NFSecureElementManagerSession *)seSession runScript:scriptCopy parameters:v16 outputResults:&v121];

  v22 = v121;
  self->_redirectStepError = redirectState2;
  self->_performInitialAIDSelectFromWhitelist = 0;
  redirectState3 = [(NFRemoteAdminRedirectSession *)self redirectState];
  [redirectState3 setUnsentScriptResponse:v22];

  redirectState4 = [(NFRemoteAdminRedirectSession *)self redirectState];
  performanceMetrics = [redirectState4 performanceMetrics];
  [v16 outTotalAPDUExecutionDuration];
  v27 = v26;
  [performanceMetrics totalAPDUTime];
  [performanceMetrics setTotalAPDUTime:v27 + v28];

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v29 = NFLogGetLogger();
  if (v29)
  {
    v30 = v29;
    v31 = object_getClass(self);
    v32 = class_isMetaClass(v31);
    v114 = object_getClassName(self);
    v116 = sel_getName(a2);
    v33 = 45;
    if (v32)
    {
      v33 = 43;
    }

    v30(6, "%c[%{public}s %{public}s]:%i scriptResults = %{public}@", v33, v114, v116, 209, v22);
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
    *buf = 67110146;
    v123 = v36;
    v124 = 2082;
    v125 = v37;
    v126 = 2082;
    v127 = v38;
    v128 = 1024;
    v129 = 209;
    v130 = 2114;
    v131 = v22;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i scriptResults = %{public}@", buf, 0x2Cu);
  }

  if ([v16 outIncompleteExecution])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v39 = NFLogGetLogger();
    if (v39)
    {
      v40 = v39;
      v41 = object_getClass(self);
      v42 = class_isMetaClass(v41);
      v43 = object_getClassName(self);
      v117 = sel_getName(a2);
      v44 = 45;
      if (v42)
      {
        v44 = 43;
      }

      v40(5, "%c[%{public}s %{public}s]:%i Incomplete script execution", v44, v43, v117, 212);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v45 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_42;
    }

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
    v123 = v47;
    v124 = 2082;
    v125 = v48;
    v126 = 2082;
    v127 = v49;
    v128 = 1024;
    v129 = 212;
    v50 = "%c[%{public}s %{public}s]:%i Incomplete script execution";
    v51 = v45;
    v52 = 34;
LABEL_41:
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, v50, buf, v52);
LABEL_42:
    v65 = 6;
    goto LABEL_56;
  }

  if ([v16 outFailureResponseDetected])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v53 = NFLogGetLogger();
    if (v53)
    {
      v54 = v53;
      v55 = object_getClass(self);
      v56 = class_isMetaClass(v55);
      v57 = object_getClassName(self);
      v58 = sel_getName(a2);
      outFinalSWStatus = [v16 outFinalSWStatus];
      v59 = 45;
      if (v56)
      {
        v59 = 43;
      }

      v54(5, "%c[%{public}s %{public}s]:%i Failure response detected: 0x%lX", v59, v57, v58, 216, outFinalSWStatus);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v45 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_42;
    }

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
    outFinalSWStatus2 = [v16 outFinalSWStatus];
    *buf = 67110146;
    v123 = v61;
    v124 = 2082;
    v125 = v62;
    v126 = 2082;
    v127 = v63;
    v128 = 1024;
    v129 = 216;
    v130 = 2048;
    v131 = outFinalSWStatus2;
    v50 = "%c[%{public}s %{public}s]:%i Failure response detected: 0x%lX";
    v51 = v45;
    v52 = 44;
    goto LABEL_41;
  }

  redirectStepError = self->_redirectStepError;
  if (redirectStepError == 3 || redirectStepError == 15 || [(NFRemoteAdminRedirectSession *)self aborted])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v67 = NFLogGetLogger();
    if (v67)
    {
      v68 = v67;
      v69 = object_getClass(self);
      v70 = class_isMetaClass(v69);
      v71 = object_getClassName(self);
      v118 = sel_getName(a2);
      v72 = 45;
      if (v70)
      {
        v72 = 43;
      }

      v68(3, "%c[%{public}s %{public}s]:%i Aborting redirect step.", v72, v71, v118, 221);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v45 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v73 = object_getClass(self);
      if (class_isMetaClass(v73))
      {
        v74 = 43;
      }

      else
      {
        v74 = 45;
      }

      v75 = object_getClassName(self);
      v76 = sel_getName(a2);
      *buf = 67109890;
      v123 = v74;
      v124 = 2082;
      v125 = v75;
      v126 = 2082;
      v127 = v76;
      v128 = 1024;
      v129 = 221;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Aborting redirect step.", buf, 0x22u);
    }

    v65 = 1;
  }

  else
  {
    v78 = self->_redirectStepError;
    if (v78)
    {
      if (v78 == 7)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v79 = NFLogGetLogger();
        if (v79)
        {
          v80 = v79;
          v81 = object_getClass(self);
          v82 = class_isMetaClass(v81);
          v83 = object_getClassName(self);
          v84 = sel_getName(a2);
          v85 = 45;
          if (v82)
          {
            v85 = 43;
          }

          v80(4, "%c[%{public}s %{public}s]:%i Redirect step was not successful (_redirectStepError=%u).", v85, v83, v84, 224, self->_redirectStepError);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v45 = NFSharedLogGetLogger();
        v65 = 16;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
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
          v89 = sel_getName(a2);
          v90 = self->_redirectStepError;
          *buf = 67110146;
          v123 = v87;
          v124 = 2082;
          v125 = v88;
          v126 = 2082;
          v127 = v89;
          v128 = 1024;
          v129 = 224;
          v130 = 1024;
          LODWORD(v131) = v90;
          v65 = 16;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Redirect step was not successful (_redirectStepError=%u).", buf, 0x28u);
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v91 = NFLogGetLogger();
        if (v91)
        {
          v92 = v91;
          v93 = object_getClass(self);
          v94 = class_isMetaClass(v93);
          v95 = object_getClassName(self);
          v96 = sel_getName(a2);
          v97 = 45;
          if (v94)
          {
            v97 = 43;
          }

          v92(4, "%c[%{public}s %{public}s]:%i Redirect step was not successful (_redirectStepError=%u).", v97, v95, v96, 227, self->_redirectStepError);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v45 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v98 = object_getClass(self);
          if (class_isMetaClass(v98))
          {
            v99 = 43;
          }

          else
          {
            v99 = 45;
          }

          v100 = object_getClassName(self);
          v101 = sel_getName(a2);
          v102 = self->_redirectStepError;
          *buf = 67110146;
          v123 = v99;
          v124 = 2082;
          v125 = v100;
          v126 = 2082;
          v127 = v101;
          v128 = 1024;
          v129 = 227;
          v130 = 1024;
          LODWORD(v131) = v102;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Redirect step was not successful (_redirectStepError=%u).", buf, 0x28u);
        }

        v65 = 10;
      }
    }

    else
    {
      if (v22)
      {
        v65 = 6;
        goto LABEL_57;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v103 = NFLogGetLogger();
      if (v103)
      {
        v104 = v103;
        v105 = object_getClass(self);
        v106 = class_isMetaClass(v105);
        v107 = object_getClassName(self);
        v119 = sel_getName(a2);
        v108 = 45;
        if (v106)
        {
          v108 = 43;
        }

        v104(3, "%c[%{public}s %{public}s]:%i C-APDU execution failure", v108, v107, v119, 230);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v45 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v109 = object_getClass(self);
        if (class_isMetaClass(v109))
        {
          v110 = 43;
        }

        else
        {
          v110 = 45;
        }

        v111 = object_getClassName(self);
        v112 = sel_getName(a2);
        *buf = 67109890;
        v123 = v110;
        v124 = 2082;
        v125 = v111;
        v126 = 2082;
        v127 = v112;
        v128 = 1024;
        v129 = 230;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i C-APDU execution failure", buf, 0x22u);
      }

      v65 = 4;
    }
  }

LABEL_56:

LABEL_57:
  return v65;
}

- (unint64_t)executeHttpRequest:(id)request httpHeader:(id)header response:(id)response responseHeader:(id)responseHeader duration:(double *)duration sessionError:(id *)error
{
  v86 = 0;
  responseHeaderCopy = responseHeader;
  responseCopy = response;
  headerCopy = header;
  requestCopy = request;
  connection = [(NFRemoteAdminRedirectSession *)self connection];
  v20 = [connection performRequest:0 body:requestCopy header:headerCopy response:responseCopy responseHeader:responseHeaderCopy httpStatus:&v86 duration:duration sessionError:error];

  redirectState = [(NFRemoteAdminRedirectSession *)self redirectState];
  step = [redirectState step];

  if (step == 1)
  {
    if ((v20 & 0xFFFFFFF7) == 0x11)
    {
      redirectState2 = [(NFRemoteAdminRedirectSession *)self redirectState];
      [redirectState2 setHttpStatus:0];
    }

    else
    {
      redirectState2 = [NSNumber numberWithInteger:v86];
      redirectState3 = [(NFRemoteAdminRedirectSession *)self redirectState];
      [redirectState3 setHttpStatus:redirectState2];
    }
  }

  if (v20 <= 0x19 && ((1 << v20) & 0x2060000) != 0)
  {
    [NFExceptionsCALogger postAnalyticsTSMConnectivityException:v20];
  }

  if (v86 == 412)
  {
    redirectState4 = [(NFRemoteAdminRedirectSession *)self redirectState];
    [redirectState4 setUnsentScriptResponse:0];

    return 6;
  }

  if (!v20)
  {
    return 8 * (v86 == 404);
  }

  if ((v20 - 19) <= 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v28 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v32 = 45;
      if (isMetaClass)
      {
        v32 = 43;
      }

      v28(6, "%c[%{public}s %{public}s]:%i Server error", v32, ClassName, Name, 283);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v33 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v34 = object_getClass(self);
    if (class_isMetaClass(v34))
    {
      v35 = 43;
    }

    else
    {
      v35 = 45;
    }

    v36 = object_getClassName(self);
    v37 = sel_getName(a2);
    *buf = 67109890;
    v88 = v35;
    v89 = 2082;
    v90 = v36;
    v91 = 2082;
    v92 = v37;
    v93 = 1024;
    v94 = 283;
    v38 = "%c[%{public}s %{public}s]:%i Server error";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v38, buf, 0x22u);
LABEL_23:

    return 3;
  }

  if (v20 == 17)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v50 = NFLogGetLogger();
    if (v50)
    {
      v51 = v50;
      v52 = object_getClass(self);
      v53 = class_isMetaClass(v52);
      v54 = object_getClassName(self);
      v83 = sel_getName(a2);
      v55 = 45;
      if (v53)
      {
        v55 = 43;
      }

      v51(6, "%c[%{public}s %{public}s]:%i Network client error", v55, v54, v83, 292);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v56 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = object_getClass(self);
      if (class_isMetaClass(v57))
      {
        v58 = 43;
      }

      else
      {
        v58 = 45;
      }

      v59 = object_getClassName(self);
      v60 = sel_getName(a2);
      *buf = 67109890;
      v88 = v58;
      v89 = 2082;
      v90 = v59;
      v91 = 2082;
      v92 = v60;
      v93 = 1024;
      v94 = 292;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Network client error", buf, 0x22u);
    }

    return 15;
  }

  else if (v20 == 25)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v39 = NFLogGetLogger();
    if (v39)
    {
      v40 = v39;
      v41 = object_getClass(self);
      v42 = class_isMetaClass(v41);
      v43 = object_getClassName(self);
      v82 = sel_getName(a2);
      v44 = 45;
      if (v42)
      {
        v44 = 43;
      }

      v40(6, "%c[%{public}s %{public}s]:%i Network Unavailable", v44, v43, v82, 288);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v45 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
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
      v88 = v47;
      v89 = 2082;
      v90 = v48;
      v91 = 2082;
      v92 = v49;
      v93 = 1024;
      v94 = 288;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Network Unavailable", buf, 0x22u);
    }

    return 2;
  }

  else
  {
    oneTimeConnection = self->_oneTimeConnection;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v62 = NFLogGetLogger();
    v63 = v62;
    if (oneTimeConnection)
    {
      if (v62)
      {
        v64 = object_getClass(self);
        v65 = class_isMetaClass(v64);
        v66 = object_getClassName(self);
        v84 = sel_getName(a2);
        v67 = 45;
        if (v65)
        {
          v67 = 43;
        }

        v63(6, "%c[%{public}s %{public}s]:%i Other error, short retry only", v67, v66, v84, 298);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v33 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
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

      v70 = object_getClassName(self);
      v71 = sel_getName(a2);
      *buf = 67109890;
      v88 = v69;
      v89 = 2082;
      v90 = v70;
      v91 = 2082;
      v92 = v71;
      v93 = 1024;
      v94 = 298;
      v38 = "%c[%{public}s %{public}s]:%i Other error, short retry only";
      goto LABEL_22;
    }

    if (v62)
    {
      v72 = object_getClass(self);
      v73 = class_isMetaClass(v72);
      v74 = object_getClassName(self);
      v85 = sel_getName(a2);
      v75 = 45;
      if (v73)
      {
        v75 = 43;
      }

      v63(6, "%c[%{public}s %{public}s]:%i Other error", v75, v74, v85, 301);
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
      v80 = sel_getName(a2);
      *buf = 67109890;
      v88 = v78;
      v89 = 2082;
      v90 = v79;
      v91 = 2082;
      v92 = v80;
      v93 = 1024;
      v94 = 301;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Other error", buf, 0x22u);
    }

    return 4;
  }
}

- (unint64_t)performRedirect
{
  if ([(NFRemoteAdminRedirectSession *)self aborted])
  {
    return 1;
  }

  v5 = objc_autoreleasePoolPush();
  getNextRequest = [(NFRemoteAdminRedirectSession *)self getNextRequest];
  if (getNextRequest)
  {
    v7 = objc_opt_new();
    v115 = 0;
    v116 = 0.0;
    v4 = [(NFRemoteAdminRedirectSession *)self executeHttpRequest:getNextRequest httpHeader:0 response:v7 responseHeader:0 duration:&v116 sessionError:&v115];
    v8 = v115;
    redirectState = [(NFRemoteAdminRedirectSession *)self redirectState];
    performanceMetrics = [redirectState performanceMetrics];
    [performanceMetrics setNsUrlSessionError:v8];

    if (v4)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v12 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        v15 = v5;
        v16 = v7;
        v17 = getNextRequest;
        v18 = v8;
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v20 = 45;
        if (isMetaClass)
        {
          v20 = 43;
        }

        v104 = ClassName;
        v8 = v18;
        getNextRequest = v17;
        v7 = v16;
        v5 = v15;
        v12(6, "%c[%{public}s %{public}s]:%i HTTP failed, status=0x%lx", v20, v104, Name, 419, v4);
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

        v24 = object_getClassName(self);
        v25 = sel_getName(a2);
        *buf = 67110146;
        v118 = v23;
        v119 = 2082;
        v120 = v24;
        v121 = 2082;
        v122 = v25;
        v123 = 1024;
        v124 = 419;
        v125 = 2048;
        v126 = v4;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i HTTP failed, status=0x%lx", buf, 0x2Cu);
      }

      if (v4 != 2)
      {
        sub_10000F0FC(self, 0, v116);
      }
    }

    else
    {
      redirectState2 = [(NFRemoteAdminRedirectSession *)self redirectState];
      [redirectState2 setUnsentScriptResponse:0];

      sub_10000F0FC(self, [v7 count]!= 0, v116);
      v35 = v7;
      v36 = v35;
      if (self)
      {
        if ([v35 count])
        {
          v113 = v8;
          v37 = [v36 objectForKeyedSubscript:@"kVersion"];
          integerValue = [v37 integerValue];

          v114 = v5;
          if (integerValue != 2)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v39 = NFLogGetLogger();
            if (v39)
            {
              v40 = v39;
              v41 = object_getClass(self);
              v42 = class_isMetaClass(v41);
              v43 = object_getClassName(self);
              v44 = sel_getName("_processRedirectCommands:");
              v45 = [NSNumber numberWithInteger:integerValue];
              v46 = 45;
              if (v42)
              {
                v46 = 43;
              }

              v40(6, "%c[%{public}s %{public}s]:%i Protocol version = %{public}@", v46, v43, v44, 337, v45);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v47 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
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
              v51 = sel_getName("_processRedirectCommands:");
              v52 = [NSNumber numberWithInteger:integerValue];
              *buf = 67110146;
              v118 = v49;
              v119 = 2082;
              v120 = v50;
              v121 = 2082;
              v122 = v51;
              v123 = 1024;
              v124 = 337;
              v125 = 2114;
              v126 = v52;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Protocol version = %{public}@", buf, 0x2Cu);
            }
          }

          v53 = [v36 NF_numberForKey:@"SPStatusCode"];
          if (v53)
          {
            redirectState3 = [(NFRemoteAdminRedirectSession *)self redirectState];
            [redirectState3 setSpStatusCode:v53];
          }

          else
          {
            v69 = [v36 NF_stringForKey:@"SPStatusCode"];
            redirectState3 = v69;
            if (v69)
            {
              v70 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v69 integerValue]);
              redirectState4 = [(NFRemoteAdminRedirectSession *)self redirectState];
              [redirectState4 setSpStatusCode:v70];
            }

            else
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v72 = NFLogGetLogger();
              if (v72)
              {
                v73 = v72;
                v74 = object_getClass(self);
                v75 = class_isMetaClass(v74);
                v76 = object_getClassName(self);
                v111 = sel_getName("_processRedirectCommands:");
                v77 = 45;
                if (v75)
                {
                  v77 = 43;
                }

                v106 = v76;
                v53 = 0;
                v73(6, "%c[%{public}s %{public}s]:%i SPStatusCode not available", v77, v106, v111, 350);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v70 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
              {
                v78 = object_getClass(self);
                v79 = v53;
                if (class_isMetaClass(v78))
                {
                  v80 = 43;
                }

                else
                {
                  v80 = 45;
                }

                v81 = object_getClassName(self);
                v82 = sel_getName("_processRedirectCommands:");
                *buf = 67109890;
                v118 = v80;
                v53 = v79;
                v119 = 2082;
                v120 = v81;
                v121 = 2082;
                v122 = v82;
                v123 = 1024;
                v124 = 350;
                _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i SPStatusCode not available", buf, 0x22u);
              }
            }
          }

          v83 = [v36 NF_numberForKey:@"kStartNewSession"];
          v84 = v83;
          if (v83 && [v83 BOOLValue] && !-[NFRemoteAdminRedirectSession startNewSession](self, "startNewSession"))
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v85 = NFLogGetLogger();
            if (v85)
            {
              v86 = v85;
              v87 = object_getClass(self);
              v88 = class_isMetaClass(v87);
              v89 = v53;
              v90 = object_getClassName(self);
              v112 = sel_getName("_processRedirectCommands:");
              v91 = 45;
              if (v88)
              {
                v91 = 43;
              }

              v107 = v90;
              v53 = v89;
              v86(3, "%c[%{public}s %{public}s]:%i Failed to restart session", v91, v107, v112, 362);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v92 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
            {
              v93 = object_getClass(self);
              v94 = v53;
              if (class_isMetaClass(v93))
              {
                v95 = 43;
              }

              else
              {
                v95 = 45;
              }

              v96 = object_getClassName(self);
              v97 = sel_getName("_processRedirectCommands:");
              *buf = 67109890;
              v118 = v95;
              v53 = v94;
              v119 = 2082;
              v120 = v96;
              v121 = 2082;
              v122 = v97;
              v123 = 1024;
              v124 = 362;
              _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to restart session", buf, 0x22u);
            }
          }

          v98 = [v36 NF_dictionaryForKey:@"forwardData"];
          if (v98)
          {
            redirectState5 = [(NFRemoteAdminRedirectSession *)self redirectState];
            [redirectState5 setForwardDataToSMP:v98];
          }

          v100 = [v36 NF_arrayForKey:@"kCommands"];
          if (![v100 count] || (v101 = -[NFRemoteAdminRedirectSession executeScript:](self, "executeScript:", v36), v101 == 6) || (v4 = v101) == 0)
          {
            v102 = [v36 NF_dictionaryForKey:@"kNotification"];
            if (v102)
            {
              [(NFRemoteAdminRedirectSession *)self processNotification:v102];
            }

            if ([v100 count])
            {
              v4 = 6;
            }

            else
            {
              v4 = 0;
            }
          }

          v8 = v113;
          v5 = v114;
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v55 = NFLogGetLogger();
          if (v55)
          {
            v56 = v55;
            v57 = object_getClass(self);
            v58 = class_isMetaClass(v57);
            v59 = v7;
            v60 = getNextRequest;
            v61 = v8;
            v62 = object_getClassName(self);
            v110 = sel_getName("_processRedirectCommands:");
            v63 = 45;
            if (v58)
            {
              v63 = 43;
            }

            v105 = v62;
            v8 = v61;
            getNextRequest = v60;
            v7 = v59;
            v56(6, "%c[%{public}s %{public}s]:%i no further action required", v63, v105, v110, 330);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v53 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            v64 = object_getClass(self);
            v65 = v53;
            if (class_isMetaClass(v64))
            {
              v66 = 43;
            }

            else
            {
              v66 = 45;
            }

            v67 = object_getClassName(self);
            v68 = sel_getName("_processRedirectCommands:");
            *buf = 67109890;
            v118 = v66;
            v53 = v65;
            v119 = 2082;
            v120 = v67;
            v121 = 2082;
            v122 = v68;
            v123 = 1024;
            v124 = 330;
            _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i no further action required", buf, 0x22u);
          }

          v4 = 0;
        }
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v26 = NFLogGetLogger();
    if (v26)
    {
      v27 = v26;
      v28 = object_getClass(self);
      v29 = class_isMetaClass(v28);
      v30 = object_getClassName(self);
      v109 = sel_getName(a2);
      v31 = 45;
      if (v29)
      {
        v31 = 43;
      }

      v27(3, "%c[%{public}s %{public}s]:%i Failed to get next request", v31, v30, v109, 404);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
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

      *buf = 67109890;
      v118 = v33;
      v119 = 2082;
      v120 = object_getClassName(self);
      v121 = 2082;
      v122 = sel_getName(a2);
      v123 = 1024;
      v124 = 404;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get next request", buf, 0x22u);
    }

    v4 = 3;
  }

  objc_autoreleasePoolPop(v5);
  return v4;
}

- (unint64_t)performCheckIn
{
  v4 = objc_autoreleasePoolPush();
  getNextRequest = [(NFRemoteAdminRedirectSession *)self getNextRequest];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  v7 = Logger;
  if (getNextRequest)
  {
    if (Logger)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i Sending redirect result to TSM", v11, ClassName, Name, 448);
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

      *buf = 67109890;
      v46 = v14;
      v47 = 2082;
      v48 = object_getClassName(self);
      v49 = 2082;
      v50 = sel_getName(a2);
      v51 = 1024;
      v52 = 448;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Sending redirect result to TSM", buf, 0x22u);
    }

    v15 = objc_opt_new();
    redirectState = [(NFRemoteAdminRedirectSession *)self redirectState];
    httpHeaderInfo = [redirectState httpHeaderInfo];
    v44 = 0;
    v18 = [(NFRemoteAdminRedirectSession *)self executeHttpRequest:getNextRequest httpHeader:httpHeaderInfo response:v15 responseHeader:0 duration:0 sessionError:&v44];
    v19 = v44;

    v20 = [v15 NF_numberForKey:@"kStartNewSession"];
    if ([v20 BOOLValue])
    {
      v21 = sub_100033310();
      serverIdentifier = [(NFRemoteAdminState *)self->_redirectState serverIdentifier];
      v23 = sub_100037550(v21, serverIdentifier);

      [v23 setPendingImmediateRetry:1];
      [v23 save];
      v18 = 12;
    }

    else
    {
      if (v18 <= 0xC && ((1 << v18) & 0x1011) != 0)
      {
        goto LABEL_26;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFLogGetLogger();
      if (v31)
      {
        v32 = v31;
        v33 = object_getClass(self);
        v42 = class_isMetaClass(v33);
        v43 = object_getClassName(self);
        v34 = sel_getName(a2);
        v35 = 45;
        if (v42)
        {
          v35 = 43;
        }

        v32(3, "%c[%{public}s %{public}s]:%i Failed to post redirect result to TSM, status=0x%lx", v35, v43, v34, 463, v18);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v23 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
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
        *buf = 67110146;
        v46 = v37;
        v47 = 2082;
        v48 = v38;
        v49 = 2082;
        v50 = v39;
        v51 = 1024;
        v52 = 463;
        v53 = 2048;
        v54 = v18;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to post redirect result to TSM, status=0x%lx", buf, 0x2Cu);
      }
    }

LABEL_26:
    goto LABEL_27;
  }

  if (Logger)
  {
    v24 = object_getClass(self);
    v25 = class_isMetaClass(v24);
    v26 = object_getClassName(self);
    v41 = sel_getName(a2);
    v27 = 45;
    if (v25)
    {
      v27 = 43;
    }

    v7(3, "%c[%{public}s %{public}s]:%i Failed to get next request", v27, v26, v41, 444);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v28 = object_getClass(self);
    if (class_isMetaClass(v28))
    {
      v29 = 43;
    }

    else
    {
      v29 = 45;
    }

    *buf = 67109890;
    v46 = v29;
    v47 = 2082;
    v48 = object_getClassName(self);
    v49 = 2082;
    v50 = sel_getName(a2);
    v51 = 1024;
    v52 = 444;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get next request", buf, 0x22u);
  }

  v18 = 3;
LABEL_27:

  objc_autoreleasePoolPop(v4);
  return v18;
}

- (unint64_t)run
{
  v252 = 0;
  v4 = [NFSecureElement embeddedSecureElementWithError:&v252];
  v5 = v252;
  if (!v4 || ([v4 available] & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v10 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v10(3, "%c[%{public}s %{public}s]:%i eSE unavailable, aborting.  Error - %{public}@", v13, ClassName, Name, 656, v5);
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
      v255 = v16;
      v256 = 2082;
      v257 = v17;
      v258 = 2082;
      v259 = v18;
      v260 = 1024;
      v261 = 656;
      v262 = 2114;
      v263 = v5;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i eSE unavailable, aborting.  Error - %{public}@", buf, 0x2Cu);
    }

    redirectState = [(NFRemoteAdminRedirectSession *)self redirectState];
    [redirectState setStep:3];

    v8 = 1;
    goto LABEL_15;
  }

  redirectState2 = [(NFRemoteAdminRedirectSession *)self redirectState];
  step = [redirectState2 step];

  v251 = v5;
  if (step)
  {
    v8 = 0;
  }

  else
  {
    if (self)
    {
      v253 = 0;
      v22 = [NFSecureElement embeddedSecureElementWithError:&v253];
      v23 = v253;
      serialNumber = [v22 serialNumber];
      if (serialNumber)
      {
        targetSEID = [(NFRemoteAdminRedirectSession *)self targetSEID];
        v26 = [targetSEID caseInsensitiveCompare:serialNumber];

        if (v26)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v27 = NFLogGetLogger();
          if (v27)
          {
            v28 = v27;
            v29 = object_getClass(self);
            v30 = class_isMetaClass(v29);
            v31 = object_getClassName(self);
            v32 = v23;
            v33 = sel_getName("_redirectStart");
            targetSEID2 = [(NFRemoteAdminRedirectSession *)self targetSEID];
            v238 = v33;
            v23 = v32;
            v35 = 45;
            if (v30)
            {
              v35 = 43;
            }

            v28(5, "%c[%{public}s %{public}s]:%i Invalid target SEID:%{public}@", v35, v31, v238, 484, targetSEID2);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v36 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = object_getClass(self);
            if (class_isMetaClass(v37))
            {
              v38 = 43;
            }

            else
            {
              v38 = 45;
            }

            v39 = object_getClassName(self);
            v40 = v23;
            v41 = sel_getName("_redirectStart");
            targetSEID3 = [(NFRemoteAdminRedirectSession *)self targetSEID];
            *buf = 67110146;
            v255 = v38;
            v256 = 2082;
            v257 = v39;
            v258 = 2082;
            v259 = v41;
            v23 = v40;
            v260 = 1024;
            v261 = 484;
            v262 = 2114;
            v263 = targetSEID3;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Invalid target SEID:%{public}@", buf, 0x2Cu);
          }

          redirectState3 = [(NFRemoteAdminRedirectSession *)self redirectState];
          [redirectState3 setStep:2];

          redirectState4 = [(NFRemoteAdminRedirectSession *)self redirectState];
          [redirectState4 setIncompleteReason:@"ScriptExecutionError"];
        }

        else
        {
          redirectState4 = [(NFRemoteAdminRedirectSession *)self redirectState];
          [redirectState4 setStep:1];
        }

        redirectState5 = [(NFRemoteAdminRedirectSession *)self redirectState];
        [redirectState5 save];
        v8 = 0;
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v45 = NFLogGetLogger();
        if (v45)
        {
          v46 = v45;
          v47 = object_getClass(self);
          v48 = class_isMetaClass(v47);
          v234 = object_getClassName(self);
          v239 = sel_getName("_redirectStart");
          v49 = 45;
          if (v48)
          {
            v49 = 43;
          }

          v46(3, "%c[%{public}s %{public}s]:%i Missing primary SEID (error - %{public}@", v49, v234, v239, 478, v23);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        redirectState5 = NFSharedLogGetLogger();
        if (os_log_type_enabled(redirectState5, OS_LOG_TYPE_ERROR))
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
          v54 = sel_getName("_redirectStart");
          *buf = 67110146;
          v255 = v52;
          v256 = 2082;
          v257 = v53;
          v258 = 2082;
          v259 = v54;
          v260 = 1024;
          v261 = 478;
          v262 = 2114;
          v263 = v23;
          _os_log_impl(&_mh_execute_header, redirectState5, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing primary SEID (error - %{public}@", buf, 0x2Cu);
        }

        v8 = 4;
      }
    }

    else
    {
      v8 = 0;
    }

    v5 = v251;
  }

  redirectState6 = [(NFRemoteAdminRedirectSession *)self redirectState];
  step2 = [redirectState6 step];

  if (step2 != 1)
  {
    goto LABEL_126;
  }

  if (self)
  {
    self->_performInitialAIDSelectFromWhitelist = 1;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v57 = NFLogGetLogger();
    if (v57)
    {
      v58 = v57;
      v59 = object_getClass(self);
      v60 = class_isMetaClass(v59);
      v61 = object_getClassName(self);
      v240 = sel_getName("_redirectInProgress");
      v62 = 45;
      if (v60)
      {
        v62 = 43;
      }

      v58(6, "%c[%{public}s %{public}s]:%i Communicating with SP-TSM", v62, v61, v240, 531);
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
      v67 = sel_getName("_redirectInProgress");
      *buf = 67109890;
      v255 = v65;
      v256 = 2082;
      v257 = v66;
      v258 = 2082;
      v259 = v67;
      v260 = 1024;
      v261 = 531;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Communicating with SP-TSM", buf, 0x22u);
    }

    mach_continuous_time();
    if ([(NFRemoteAdminRedirectSession *)self openSession])
    {
      redirectState7 = [(NFRemoteAdminRedirectSession *)self redirectState];
      redirectUrl = [redirectState7 redirectUrl];
      v70 = [(NFRemoteAdminRedirectSession *)self openConnection:redirectUrl];

      if (v70)
      {
        if (![(NFRemoteAdminRedirectSession *)self aborted])
        {
          v71 = 0;
          do
          {
            performRedirect = [(NFRemoteAdminRedirectSession *)self performRedirect];
            if (performRedirect == 6)
            {
              v71 = 0;
            }

            else
            {
              v73 = performRedirect;
              v74 = performRedirect == 15 || performRedirect == 3;
              if (!v74 || v71 > 2)
              {
                goto LABEL_100;
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v75 = NFLogGetLogger();
              if (v75)
              {
                v76 = v75;
                v77 = object_getClass(self);
                v78 = class_isMetaClass(v77);
                v79 = object_getClassName(self);
                v80 = sel_getName("_redirectInProgress");
                v81 = 45;
                if (v78)
                {
                  v81 = 43;
                }

                v76(6, "%c[%{public}s %{public}s]:%i Retrying in %d seconds", v81, v79, v80, 546, dword_10004080C[v71]);
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
                v86 = sel_getName("_redirectInProgress");
                v87 = dword_10004080C[v71];
                *buf = 67110146;
                v255 = v84;
                v256 = 2082;
                v257 = v85;
                v258 = 2082;
                v259 = v86;
                v260 = 1024;
                v261 = 546;
                v262 = 1024;
                LODWORD(v263) = v87;
                _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Retrying in %d seconds", buf, 0x28u);
              }

              sleep(dword_10004080C[v71++]);
            }
          }

          while (![(NFRemoteAdminRedirectSession *)self aborted]);
        }

        v73 = 6;
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v100 = NFLogGetLogger();
        if (v100)
        {
          v101 = v100;
          v102 = object_getClass(self);
          v103 = class_isMetaClass(v102);
          v104 = object_getClassName(self);
          v242 = sel_getName("_redirectInProgress");
          v105 = 45;
          if (v103)
          {
            v105 = 43;
          }

          v101(3, "%c[%{public}s %{public}s]:%i Failed to open connection", v105, v104, v242, 535);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v106 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
        {
          v107 = object_getClass(self);
          if (class_isMetaClass(v107))
          {
            v108 = 43;
          }

          else
          {
            v108 = 45;
          }

          v109 = object_getClassName(self);
          v110 = sel_getName("_redirectInProgress");
          *buf = 67109890;
          v255 = v108;
          v256 = 2082;
          v257 = v109;
          v258 = 2082;
          v259 = v110;
          v260 = 1024;
          v261 = 535;
          _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open connection", buf, 0x22u);
        }

        v73 = 2;
      }

LABEL_100:
      if ([(NFRemoteAdminRedirectSession *)self aborted])
      {
        v8 = 1;
      }

      else
      {
        v8 = v73;
      }

      sub_100010298(self, v8);
      [(NFRemoteAdminRedirectSession *)self closeConnection];
      [(NFRemoteAdminRedirectSession *)self closeSession];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v111 = NFLogGetLogger();
      if (v111)
      {
        v112 = v111;
        v113 = object_getClass(self);
        v114 = class_isMetaClass(v113);
        v235 = object_getClassName(self);
        v243 = sel_getName("_redirectInProgress");
        v115 = 45;
        if (v114)
        {
          v115 = 43;
        }

        v112(6, "%c[%{public}s %{public}s]:%i Redirect processing completed: %d", v115, v235, v243, 560, v8);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v116 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        v117 = object_getClass(self);
        if (class_isMetaClass(v117))
        {
          v118 = 43;
        }

        else
        {
          v118 = 45;
        }

        v119 = object_getClassName(self);
        v120 = sel_getName("_redirectInProgress");
        *buf = 67110146;
        v255 = v118;
        v256 = 2082;
        v257 = v119;
        v258 = 2082;
        v259 = v120;
        v260 = 1024;
        v261 = 560;
        v262 = 1024;
        LODWORD(v263) = v8;
        _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Redirect processing completed: %d", buf, 0x28u);
      }
    }

    else
    {
      aborted = [(NFRemoteAdminRedirectSession *)self aborted];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v89 = NFLogGetLogger();
      v90 = v89;
      if (!aborted)
      {
        if (v89)
        {
          v122 = object_getClass(self);
          v123 = class_isMetaClass(v122);
          v124 = object_getClassName(self);
          v244 = sel_getName("_redirectInProgress");
          v125 = 45;
          if (v123)
          {
            v125 = 43;
          }

          v90(3, "%c[%{public}s %{public}s]:%i Failed to open SE wired mode", v125, v124, v244, 566);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v126 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
        {
          v127 = object_getClass(self);
          if (class_isMetaClass(v127))
          {
            v128 = 43;
          }

          else
          {
            v128 = 45;
          }

          v129 = object_getClassName(self);
          v130 = sel_getName("_redirectInProgress");
          *buf = 67109890;
          v255 = v128;
          v256 = 2082;
          v257 = v129;
          v258 = 2082;
          v259 = v130;
          v260 = 1024;
          v261 = 566;
          _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open SE wired mode", buf, 0x22u);
        }

        v121 = 0;
        v8 = 14;
        goto LABEL_124;
      }

      if (v89)
      {
        v91 = object_getClass(self);
        v92 = class_isMetaClass(v91);
        v93 = object_getClassName(self);
        v241 = sel_getName("_redirectInProgress");
        v94 = 45;
        if (v92)
        {
          v94 = 43;
        }

        v90(6, "%c[%{public}s %{public}s]:%i Aborted", v94, v93, v241, 562);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v95 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        v96 = object_getClass(self);
        if (class_isMetaClass(v96))
        {
          v97 = 43;
        }

        else
        {
          v97 = 45;
        }

        v98 = object_getClassName(self);
        v99 = sel_getName("_redirectInProgress");
        *buf = 67109890;
        v255 = v97;
        v256 = 2082;
        v257 = v98;
        v258 = 2082;
        v259 = v99;
        v260 = 1024;
        v261 = 562;
        _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Aborted", buf, 0x22u);
      }

      v8 = 1;
      sub_100010298(self, 1);
    }

    v121 = 1;
LABEL_124:
    v5 = v251;
    redirectState8 = [(NFRemoteAdminRedirectSession *)self redirectState];
    performanceMetrics = [redirectState8 performanceMetrics];
    mach_continuous_time();
    v133 = GetElapsedTimeInMillisecondsFromMachTime() / 1000.0;
    [performanceMetrics totalSessionTime];
    [performanceMetrics setTotalSessionTime:v134 + v133];

    if (v121)
    {
      redirectState9 = [(NFRemoteAdminRedirectSession *)self redirectState];
      [redirectState9 incrementStep];

      redirectState10 = [(NFRemoteAdminRedirectSession *)self redirectState];
      [redirectState10 clearRetryInterval];

      redirectState11 = [(NFRemoteAdminRedirectSession *)self redirectState];
      [redirectState11 save];
    }

    goto LABEL_126;
  }

  v8 = 0;
LABEL_126:
  redirectState12 = [(NFRemoteAdminRedirectSession *)self redirectState];
  step3 = [redirectState12 step];

  if (step3 != 2)
  {
    goto LABEL_16;
  }

  if (!self)
  {
    v8 = 0;
    goto LABEL_16;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v140 = NFLogGetLogger();
  if (v140)
  {
    v141 = v140;
    v142 = object_getClass(self);
    v143 = class_isMetaClass(v142);
    v144 = object_getClassName(self);
    v245 = sel_getName("_redirectCheckIn");
    v145 = 45;
    if (v143)
    {
      v145 = 43;
    }

    v141(6, "%c[%{public}s %{public}s]:%i Performing post-redirect TSM check in", v145, v144, v245, 608);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v146 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
  {
    v147 = object_getClass(self);
    if (class_isMetaClass(v147))
    {
      v148 = 43;
    }

    else
    {
      v148 = 45;
    }

    v149 = object_getClassName(self);
    v150 = sel_getName("_redirectCheckIn");
    *buf = 67109890;
    v255 = v148;
    v256 = 2082;
    v257 = v149;
    v258 = 2082;
    v259 = v150;
    v260 = 1024;
    v261 = 608;
    _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Performing post-redirect TSM check in", buf, 0x22u);
  }

  v151 = 0;
  v152 = 0;
  v8 = 4;
  do
  {
    if (v152 & 1) != 0 || (-[NFRemoteAdminRedirectSession redirectState](self, "redirectState"), v153 = objc_claimAutoreleasedReturnValue(), [v153 sourceUrl], v154 = objc_claimAutoreleasedReturnValue(), v155 = -[NFRemoteAdminRedirectSession openConnection:](self, "openConnection:", v154), v154, v153, (v155))
    {
      performCheckIn = [(NFRemoteAdminRedirectSession *)self performCheckIn];
      v152 = 1;
      if (performCheckIn == 6)
      {
        continue;
      }

      if (performCheckIn != 3)
      {
        v8 = performCheckIn;
        goto LABEL_172;
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v157 = NFLogGetLogger();
      if (v157)
      {
        v158 = v157;
        v159 = object_getClass(self);
        v160 = class_isMetaClass(v159);
        v161 = object_getClassName(self);
        v246 = sel_getName("_redirectCheckIn");
        v162 = 45;
        if (v160)
        {
          v162 = 43;
        }

        v158(3, "%c[%{public}s %{public}s]:%i Failed to open connection", v162, v161, v246, 615);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v163 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
      {
        v164 = object_getClass(self);
        if (class_isMetaClass(v164))
        {
          v165 = 43;
        }

        else
        {
          v165 = 45;
        }

        v166 = object_getClassName(self);
        v167 = sel_getName("_redirectCheckIn");
        *buf = 67109890;
        v255 = v165;
        v256 = 2082;
        v257 = v166;
        v258 = 2082;
        v259 = v167;
        v260 = 1024;
        v261 = 615;
        _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open connection", buf, 0x22u);
      }

      redirectState13 = [(NFRemoteAdminRedirectSession *)self redirectState];
      retryInterval = [redirectState13 retryInterval];
      v170 = retryInterval;
      if (retryInterval)
      {
        v171 = *(retryInterval + 16);
      }

      else
      {
        v171 = 0;
      }

      v172 = v171;

      if (v172)
      {
        goto LABEL_172;
      }

      v152 = 0;
    }

    redirectState14 = [(NFRemoteAdminRedirectSession *)self redirectState];
    [redirectState14 clearRetryInterval];

    if (v151 > 2)
    {
      goto LABEL_172;
    }

    if (byte_10005BAB0 == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v174 = NFLogGetLogger();
      if (v174)
      {
        v175 = v174;
        v176 = object_getClass(self);
        v177 = class_isMetaClass(v176);
        v178 = object_getClassName(self);
        v179 = sel_getName("_redirectCheckIn");
        v180 = 45;
        if (v177)
        {
          v180 = 43;
        }

        v175(6, "%c[%{public}s %{public}s]:%i [TSM] Retrying in %d seconds", v180, v178, v179, 630, dword_10004080C[v151]);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v181 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
      {
        v182 = object_getClass(self);
        if (class_isMetaClass(v182))
        {
          v183 = 43;
        }

        else
        {
          v183 = 45;
        }

        v184 = object_getClassName(self);
        v185 = sel_getName("_redirectCheckIn");
        v186 = dword_10004080C[v151];
        *buf = 67110146;
        v255 = v183;
        v256 = 2082;
        v257 = v184;
        v258 = 2082;
        v259 = v185;
        v260 = 1024;
        v261 = 630;
        v262 = 1024;
        LODWORD(v263) = v186;
        _os_log_impl(&_mh_execute_header, v181, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Retrying in %d seconds", buf, 0x28u);
      }
    }

    sleep(dword_10004080C[v151++]);
  }

  while (![(NFRemoteAdminRedirectSession *)self aborted]);
  v8 = 6;
LABEL_172:
  v187 = __ROR8__(v8, 2);
  v5 = v251;
  if (v187 > 1)
  {
    if (v187 == 2)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v222 = NFLogGetLogger();
      if (v222)
      {
        v223 = v222;
        v224 = object_getClass(self);
        v225 = class_isMetaClass(v224);
        v226 = object_getClassName(self);
        v250 = sel_getName("_processRedirectCheckInResult:");
        v227 = 45;
        if (v225)
        {
          v227 = 43;
        }

        v223(6, "%c[%{public}s %{public}s]:%i Device not registered", v227, v226, v250, 589);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v228 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v228, OS_LOG_TYPE_DEFAULT))
      {
        v229 = object_getClass(self);
        if (class_isMetaClass(v229))
        {
          v230 = 43;
        }

        else
        {
          v230 = 45;
        }

        v231 = object_getClassName(self);
        v232 = sel_getName("_processRedirectCheckInResult:");
        *buf = 67109890;
        v255 = v230;
        v256 = 2082;
        v257 = v231;
        v258 = 2082;
        v259 = v232;
        v260 = 1024;
        v261 = 589;
        _os_log_impl(&_mh_execute_header, v228, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Device not registered", buf, 0x22u);
      }

      redirectState15 = [(NFRemoteAdminRedirectSession *)self redirectState];
      [redirectState15 incrementStep];
      v8 = 8;
      goto LABEL_218;
    }

    if (v187 != 3)
    {
      goto LABEL_197;
    }

LABEL_187:
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v200 = NFLogGetLogger();
    if (v200)
    {
      v201 = v200;
      v202 = object_getClass(self);
      v203 = class_isMetaClass(v202);
      v204 = object_getClassName(self);
      v248 = sel_getName("_processRedirectCheckInResult:");
      v205 = 45;
      if (v203)
      {
        v205 = 43;
      }

      v236 = v204;
      v5 = v251;
      v201(6, "%c[%{public}s %{public}s]:%i Redirect check in completed", v205, v236, v248, 586);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v206 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v206, OS_LOG_TYPE_DEFAULT))
    {
      v207 = object_getClass(self);
      if (class_isMetaClass(v207))
      {
        v208 = 43;
      }

      else
      {
        v208 = 45;
      }

      v209 = object_getClassName(self);
      v210 = sel_getName("_processRedirectCheckInResult:");
      *buf = 67109890;
      v255 = v208;
      v256 = 2082;
      v257 = v209;
      v258 = 2082;
      v259 = v210;
      v260 = 1024;
      v261 = 586;
      _os_log_impl(&_mh_execute_header, v206, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Redirect check in completed", buf, 0x22u);
    }

    redirectState15 = [(NFRemoteAdminRedirectSession *)self redirectState];
    [redirectState15 incrementStep];
LABEL_218:

    goto LABEL_219;
  }

  if (!v187)
  {
    goto LABEL_187;
  }

  if (v187 == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v188 = NFLogGetLogger();
    if (v188)
    {
      v189 = v188;
      v190 = object_getClass(self);
      v191 = class_isMetaClass(v190);
      v192 = object_getClassName(self);
      v247 = sel_getName("_processRedirectCheckInResult:");
      v193 = 45;
      if (v191)
      {
        v193 = 43;
      }

      v189(6, "%c[%{public}s %{public}s]:%i Redirect check in - long retry", v193, v192, v247, 592);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v194 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT))
    {
      v195 = object_getClass(self);
      if (class_isMetaClass(v195))
      {
        v196 = 43;
      }

      else
      {
        v196 = 45;
      }

      v197 = object_getClassName(self);
      v198 = sel_getName("_processRedirectCheckInResult:");
      *buf = 67109890;
      v255 = v196;
      v256 = 2082;
      v257 = v197;
      v258 = 2082;
      v259 = v198;
      v260 = 1024;
      v261 = 592;
      _os_log_impl(&_mh_execute_header, v194, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Redirect check in - long retry", buf, 0x22u);
    }

    redirectState15 = [(NFRemoteAdminRedirectSession *)self redirectState];
    [redirectState15 incrementLongRetry];
    v8 = 4;
    goto LABEL_218;
  }

LABEL_197:
  if ([(NFRemoteAdminRedirectSession *)self aborted])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v211 = NFLogGetLogger();
    if (v211)
    {
      v212 = v211;
      v213 = object_getClass(self);
      v214 = class_isMetaClass(v213);
      v215 = object_getClassName(self);
      v249 = sel_getName("_processRedirectCheckInResult:");
      v216 = 45;
      if (v214)
      {
        v216 = 43;
      }

      v212(6, "%c[%{public}s %{public}s]:%i Abort check in", v216, v215, v249, 595);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v217 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v217, OS_LOG_TYPE_DEFAULT))
    {
      v218 = object_getClass(self);
      if (class_isMetaClass(v218))
      {
        v219 = 43;
      }

      else
      {
        v219 = 45;
      }

      v220 = object_getClassName(self);
      v221 = sel_getName("_processRedirectCheckInResult:");
      *buf = 67109890;
      v255 = v219;
      v256 = 2082;
      v257 = v220;
      v258 = 2082;
      v259 = v221;
      v260 = 1024;
      v261 = 595;
      _os_log_impl(&_mh_execute_header, v217, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Abort check in", buf, 0x22u);
    }

    redirectState15 = [(NFRemoteAdminRedirectSession *)self redirectState];
    [redirectState15 incrementStep];
    v8 = 1;
    goto LABEL_218;
  }

LABEL_219:
  [(NFRemoteAdminRedirectSession *)self closeConnection];
LABEL_15:
  redirectState16 = [(NFRemoteAdminRedirectSession *)self redirectState];
  [redirectState16 save];

LABEL_16:
  return v8;
}

- (BOOL)openSession
{
  if (self->_seSession)
  {
    return 1;
  }

  v19 = v2;
  v20 = v3;
  v7 = sub_100016628();
  sub_10001B3A4(v7);

  v8 = dispatch_semaphore_create(0);
  v9 = +[NFHardwareManager sharedHardwareManager];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100012094;
  v16[3] = &unk_100054780;
  v16[4] = self;
  v18 = a2;
  v10 = v8;
  v17 = v10;
  v11 = [v9 startSecureElementManagerSessionWithPriority:v16];

  do
  {
    if ([(NFRemoteAdminRedirectSession *)self aborted])
    {
      break;
    }

    v12 = dispatch_time(0, 119000000000);
    v13 = dispatch_semaphore_wait(v10, v12);
    v14 = sub_100016628();
    sub_10001B3FC(v14);
  }

  while (v13);
  v15 = sub_100016628();
  sub_10001B350(v15);

  if ([(NFRemoteAdminRedirectSession *)self aborted])
  {
    [v11 endSessionWithCompletion:&stru_1000547A0];

    return 0;
  }

  else
  {

    return self->_seSession != 0;
  }
}

- (BOOL)closeSession
{
  seSession = self->_seSession;
  if (seSession && self->_allocateSESession)
  {
    [(NFSecureElementManagerSession *)seSession endSessionWithCompletion:&stru_1000547C0, v2, v3];
  }

  return 1;
}

- (BOOL)openConnection:(id)connection
{
  connectionCopy = connection;
  if (byte_10005BAB0 == 1)
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
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i [TSM] %@", v10, ClassName, Name, 741, connectionCopy);
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
      v62 = v13;
      v63 = 2082;
      v64 = object_getClassName(self);
      v65 = 2082;
      v66 = sel_getName(a2);
      v67 = 1024;
      v68 = 741;
      v69 = 2112;
      v70 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] %@", buf, 0x2Cu);
    }
  }

  v14 = [NSURL URLWithString:connectionCopy];
  if (!v14)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v35 = NFLogGetLogger();
    if (v35)
    {
      v36 = v35;
      v37 = object_getClass(self);
      v38 = class_isMetaClass(v37);
      v57 = object_getClassName(self);
      v59 = sel_getName(a2);
      v39 = 45;
      if (v38)
      {
        v39 = 43;
      }

      v36(3, "%c[%{public}s %{public}s]:%i Invalid URL string: %{public}@", v39, v57, v59, 745, connectionCopy);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v33 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
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
      v43 = sel_getName(a2);
      *buf = 67110146;
      v62 = v41;
      v63 = 2082;
      v64 = v42;
      v65 = 2082;
      v66 = v43;
      v67 = 1024;
      v68 = 745;
      v69 = 2114;
      v70 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid URL string: %{public}@", buf, 0x2Cu);
    }

    goto LABEL_46;
  }

  if (byte_10005BAB0 == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFLogGetLogger();
    if (v15)
    {
      v16 = v15;
      v17 = object_getClass(self);
      v18 = class_isMetaClass(v17);
      v19 = object_getClassName(self);
      v20 = sel_getName(a2);
      absoluteString = [v14 absoluteString];
      v22 = 45;
      if (v18)
      {
        v22 = 43;
      }

      v16(6, "%c[%{public}s %{public}s]:%i [TSM] url: %@", v22, v19, v20, 749, absoluteString);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
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
      absoluteString2 = [v14 absoluteString];
      *buf = 67110146;
      v62 = v25;
      v63 = 2082;
      v64 = v26;
      v65 = 2082;
      v66 = v27;
      v67 = 1024;
      v68 = 749;
      v69 = 2112;
      v70 = absoluteString2;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] url: %@", buf, 0x2Cu);
    }
  }

  v29 = [NFRemoteAdminConnectionHTTP alloc];
  redirectState = [(NFRemoteAdminRedirectSession *)self redirectState];
  v31 = [redirectState step] != 1;
  v32 = [NFSecureElement embeddedSecureElementWithError:0];
  v33 = -[NFRemoteAdminConnectionHTTP initWithURL:SEID:showProprietaryHeaders:disableEVTrustValidation:](v29, "initWithURL:SEID:showProprietaryHeaders:disableEVTrustValidation:", v14, 0, v31, [v32 isProductionSigned] ^ 1);

  if (!v33)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v44 = NFLogGetLogger();
    if (v44)
    {
      v45 = v44;
      v46 = object_getClass(self);
      v47 = class_isMetaClass(v46);
      v48 = object_getClassName(self);
      v60 = sel_getName(a2);
      v49 = 45;
      if (v47)
      {
        v49 = 43;
      }

      v45(3, "%c[%{public}s %{public}s]:%i Failed to create connection", v49, v48, v60, 757);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v50 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
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
      v62 = v52;
      v63 = 2082;
      v64 = v53;
      v65 = 2082;
      v66 = v54;
      v67 = 1024;
      v68 = 757;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to create connection", buf, 0x22u);
    }

    v33 = 0;
    goto LABEL_46;
  }

  if ([v33 connect])
  {
LABEL_46:
    v34 = 0;
    goto LABEL_47;
  }

  [(NFRemoteAdminRedirectSession *)self setConnection:v33];
  v34 = 1;
LABEL_47:

  return v34;
}

- (void)closeConnection
{
  connection = [(NFRemoteAdminRedirectSession *)self connection];

  if (connection)
  {
    connection2 = [(NFRemoteAdminRedirectSession *)self connection];
    [connection2 disconnect];

    [(NFRemoteAdminRedirectSession *)self setConnection:0];
  }
}

@end