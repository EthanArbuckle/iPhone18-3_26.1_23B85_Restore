@interface NFRemoteAdminSession
- (BOOL)_openSessionWithTimeout:(unint64_t)a3;
- (BOOL)performRequest;
- (NFRemoteAdminSession)init;
- (unint64_t)run;
- (unsigned)_deactiveAllAppletsOnSE:(id)a3;
- (void)_postProcessNotification:(id)a3 executionStatus:(BOOL)a4 regionIdentifier:(id)a5;
- (void)_preprocessNotification:(id)a3 withTaskID:(id)a4;
- (void)abort:(int64_t)a3;
- (void)processAppletChanged:(id)a3 regionIdentifier:(id)a4;
- (void)processAppletsDeleted:(id)a3 regionIdentifier:(id)a4;
@end

@implementation NFRemoteAdminSession

- (NFRemoteAdminSession)init
{
  v6.receiver = self;
  v6.super_class = NFRemoteAdminSession;
  v2 = [(NFRemoteAdminSession *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    endMetric = v2->_endMetric;
    v2->_endMetric = v3;

    v2->_allocateSESession = 1;
  }

  return v2;
}

- (void)abort:(int64_t)a3
{
  v5 = self;
  objc_sync_enter(v5);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(v5);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(v5);
    Name = sel_getName(a2);
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i Aborting (%u)...", v10, ClassName, Name, 88, a3);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(v5);
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    *buf = 67110146;
    v17 = v13;
    v18 = 2082;
    v19 = object_getClassName(v5);
    v20 = 2082;
    v21 = sel_getName(a2);
    v22 = 1024;
    v23 = 88;
    v24 = 1024;
    v25 = a3;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Aborting (%u)...", buf, 0x28u);
  }

  v5->_abort = a3;
  [(NFRemoteAdminConnection *)v5->_connection disconnect];
  objc_sync_exit(v5);
}

- (void)_preprocessNotification:(id)a3 withTaskID:(id)a4
{
  v275 = a3;
  v276 = a4;
  v274 = [v275 NF_arrayForKey:@"mfdListPreExecution"];
  if ([(__CFString *)v274 count])
  {
    v5 = objc_opt_new();
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

        v7(6, "%c[%{public}s %{public}s]:%i [TSM] MFD list: %@", v10, ClassName, Name, 110, v274);
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
        v310 = v13;
        v311 = 2082;
        v312 = object_getClassName(self);
        v313 = 2082;
        v314 = sel_getName(a2);
        v315 = 1024;
        v316 = 110;
        v317 = 2112;
        v318 = v274;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] MFD list: %@", buf, 0x2Cu);
      }
    }

    v283 = v5;
    v304 = 0u;
    v305 = 0u;
    v302 = 0u;
    v303 = 0u;
    v14 = v274;
    v15 = [(__CFString *)v14 countByEnumeratingWithState:&v302 objects:v321 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v303;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v303 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v302 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [(NFSecureElementManagerSession *)self->_seSession appletWithIdentifier:v19];
            if (v20)
            {
              [v283 addObject:v20];
              if (byte_10005BAB0 == 1)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v21 = NFLogGetLogger();
                if (v21)
                {
                  v22 = v21;
                  v23 = object_getClass(self);
                  v24 = class_isMetaClass(v23);
                  v251 = object_getClassName(self);
                  v257 = sel_getName(a2);
                  v25 = 45;
                  if (v24)
                  {
                    v25 = 43;
                  }

                  v22(6, "%c[%{public}s %{public}s]:%i [TSM] Deleting applet: %@", v25, v251, v257, 120, v19);
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
                  v310 = v28;
                  v311 = 2082;
                  v312 = v29;
                  v313 = 2082;
                  v314 = v30;
                  v315 = 1024;
                  v316 = 120;
                  v317 = 2112;
                  v318 = v19;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Deleting applet: %@", buf, 0x2Cu);
                }
              }
            }
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v31 = NFLogGetLogger();
            if (v31)
            {
              v32 = v31;
              v33 = object_getClass(self);
              v34 = class_isMetaClass(v33);
              v35 = object_getClassName(self);
              v36 = sel_getName(a2);
              v268 = objc_opt_class();
              v37 = 45;
              if (v34)
              {
                v37 = 43;
              }

              v32(3, "%c[%{public}s %{public}s]:%i %{public}@ Expected String, got %{public}@", v37, v35, v36, 114, @"mfdListPreExecution", v268);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v20 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v38 = object_getClass(self);
              if (class_isMetaClass(v38))
              {
                v39 = 43;
              }

              else
              {
                v39 = 45;
              }

              v40 = object_getClassName(self);
              v41 = sel_getName(a2);
              v42 = objc_opt_class();
              *buf = 67110402;
              v310 = v39;
              v311 = 2082;
              v312 = v40;
              v313 = 2082;
              v314 = v41;
              v315 = 1024;
              v316 = 114;
              v317 = 2114;
              v318 = @"mfdListPreExecution";
              v319 = 2114;
              v320 = v42;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@ Expected String, got %{public}@", buf, 0x36u);
            }
          }
        }

        v16 = [(__CFString *)v14 countByEnumeratingWithState:&v302 objects:v321 count:16];
      }

      while (v16);
    }

    if ([v283 count])
    {
      [(NFSecureElementManagerSession *)self->_seSession deleteApplets:v283 queueServerConnection:0];
    }
  }

  v43 = [v275 NF_arrayForKey:@"PTDeleteKeyIdsPreExecution"];
  if ([(__CFString *)v43 count]&& byte_10005BAB0 == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v44 = NFLogGetLogger();
    if (v44)
    {
      v45 = v44;
      v46 = object_getClass(self);
      v47 = class_isMetaClass(v46);
      v252 = object_getClassName(self);
      v258 = sel_getName(a2);
      v48 = 45;
      if (v47)
      {
        v48 = 43;
      }

      v45(6, "%c[%{public}s %{public}s]:%i [TSM] PT Keys to delete: %@", v48, v252, v258, 131, v43);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v49 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = object_getClass(self);
      if (class_isMetaClass(v50))
      {
        v51 = 43;
      }

      else
      {
        v51 = 45;
      }

      v52 = object_getClassName(self);
      v53 = sel_getName(a2);
      *buf = 67110146;
      v310 = v51;
      v311 = 2082;
      v312 = v52;
      v313 = 2082;
      v314 = v53;
      v315 = 1024;
      v316 = 131;
      v317 = 2112;
      v318 = v43;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] PT Keys to delete: %@", buf, 0x2Cu);
    }
  }

  v300 = 0u;
  v301 = 0u;
  v298 = 0u;
  v299 = 0u;
  obj = v43;
  v54 = [(__CFString *)obj countByEnumeratingWithState:&v298 objects:v308 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v299;
    do
    {
      for (j = 0; j != v55; j = j + 1)
      {
        if (*v299 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v58 = *(*(&v298 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          seSession = self->_seSession;
          v60 = self->_targetSEID;
          v297 = 0;
          LODWORD(seSession) = SESEndPointDeleteWithSession();
          v61 = 0;

          v62 = 0;
          if (seSession)
          {
            v63 = v61 == 0;
          }

          else
          {
            v63 = 0;
          }

          if (!v63)
          {
            if (byte_10005BAB0 == 1)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v64 = NFLogGetLogger();
              if (v64)
              {
                v65 = v64;
                v66 = object_getClass(self);
                v67 = class_isMetaClass(v66);
                v68 = object_getClassName(self);
                v259 = sel_getName(a2);
                if (v67)
                {
                  v69 = 43;
                }

                else
                {
                  v69 = 45;
                }

                v65(6, "%c[%{public}s %{public}s]:%i [TSM] Failed to delete key with identifier %@ : %@", v69, v68, v259, 140, v58, v61);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v70 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
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
                *buf = 67110402;
                v310 = v72;
                v311 = 2082;
                v312 = v73;
                v313 = 2082;
                v314 = v74;
                v315 = 1024;
                v316 = 140;
                v317 = 2112;
                v318 = v58;
                v319 = 2112;
                v320 = v61;
                _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Failed to delete key with identifier %@ : %@", buf, 0x36u);
              }
            }

            v62 = v61;
          }
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v75 = NFLogGetLogger();
          if (v75)
          {
            v76 = v75;
            v77 = object_getClass(self);
            v78 = class_isMetaClass(v77);
            v79 = object_getClassName(self);
            v80 = sel_getName(a2);
            v269 = objc_opt_class();
            if (v78)
            {
              v81 = 43;
            }

            else
            {
              v81 = 45;
            }

            v76(3, "%c[%{public}s %{public}s]:%i %{public}@ Expected String, got %{public}@", v81, v79, v80, 134, @"PTDeleteKeyIdsPreExecution", v269);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v62 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            v82 = object_getClass(self);
            if (class_isMetaClass(v82))
            {
              v83 = 43;
            }

            else
            {
              v83 = 45;
            }

            v84 = object_getClassName(self);
            v85 = sel_getName(a2);
            v86 = objc_opt_class();
            *buf = 67110402;
            v310 = v83;
            v311 = 2082;
            v312 = v84;
            v313 = 2082;
            v314 = v85;
            v315 = 1024;
            v316 = 134;
            v317 = 2114;
            v318 = @"PTDeleteKeyIdsPreExecution";
            v319 = 2114;
            v320 = v86;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@ Expected String, got %{public}@", buf, 0x36u);
          }
        }
      }

      v55 = [(__CFString *)obj countByEnumeratingWithState:&v298 objects:v308 count:16];
    }

    while (v55);
  }

  v87 = [v275 NF_arrayForKey:@"PTTerminateKeyIdsPreExecution"];
  if ([(__CFString *)v87 count]&& byte_10005BAB0 == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v88 = NFLogGetLogger();
    if (v88)
    {
      v89 = v88;
      v90 = object_getClass(self);
      v91 = class_isMetaClass(v90);
      v253 = object_getClassName(self);
      v260 = sel_getName(a2);
      v92 = 45;
      if (v91)
      {
        v92 = 43;
      }

      v89(6, "%c[%{public}s %{public}s]:%i [TSM] PT Keys to terminate: %@", v92, v253, v260, 145, v87);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v93 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
    {
      v94 = object_getClass(self);
      if (class_isMetaClass(v94))
      {
        v95 = 43;
      }

      else
      {
        v95 = 45;
      }

      v96 = object_getClassName(self);
      v97 = sel_getName(a2);
      *buf = 67110146;
      v310 = v95;
      v311 = 2082;
      v312 = v96;
      v313 = 2082;
      v314 = v97;
      v315 = 1024;
      v316 = 145;
      v317 = 2112;
      v318 = v87;
      _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] PT Keys to terminate: %@", buf, 0x2Cu);
    }
  }

  v296 = 0u;
  v294 = 0u;
  v295 = 0u;
  v293 = 0u;
  v98 = v87;
  v99 = [(__CFString *)v98 countByEnumeratingWithState:&v293 objects:v307 count:16];
  v277 = v98;
  if (v99)
  {
    v100 = v99;
    v101 = *v294;
    do
    {
      for (k = 0; k != v100; k = k + 1)
      {
        if (*v294 != v101)
        {
          objc_enumerationMutation(v98);
        }

        v103 = *(*(&v293 + 1) + 8 * k);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v104 = [v103 objectForKeyedSubscript:@"keyId"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v105 = [v103 NF_stringForKey:@"remoteTerminationRequest"];
            v106 = [v103 objectForKey:@"remoteTerminationRequest"];

            if (v106)
            {
              v107 = v105 == 0;
            }

            else
            {
              v107 = 0;
            }

            if (v107)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v145 = NFLogGetLogger();
              if (v145)
              {
                v146 = v145;
                v147 = object_getClass(self);
                v148 = class_isMetaClass(v147);
                v149 = object_getClassName(self);
                v150 = sel_getName(a2);
                v272 = objc_opt_class();
                v262 = v150;
                v98 = v277;
                v151 = 45;
                if (v148)
                {
                  v151 = 43;
                }

                v146(3, "%c[%{public}s %{public}s]:%i %{public}@ Expected String, got %{public}@", v151, v149, v262, 162, @"remoteTerminationRequest", v272);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v109 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
              {
                v152 = object_getClass(self);
                if (class_isMetaClass(v152))
                {
                  v153 = 43;
                }

                else
                {
                  v153 = 45;
                }

                v154 = object_getClassName(self);
                v155 = sel_getName(a2);
                v156 = objc_opt_class();
                *buf = 67110402;
                v310 = v153;
                v311 = 2082;
                v312 = v154;
                v313 = 2082;
                v314 = v155;
                v315 = 1024;
                v316 = 162;
                v317 = 2114;
                v318 = @"remoteTerminationRequest";
                v319 = 2114;
                v320 = v156;
                _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@ Expected String, got %{public}@", buf, 0x36u);
              }
            }

            else
            {
              v108 = [NSData NF_dataWithHexString:v105];
              v109 = v108;
              if (!v105 || v108)
              {
                v157 = self->_seSession;
                targetSEID = self->_targetSEID;
                v292 = 0;
                v159 = targetSEID;
                v160 = SESEndPointRemoteTerminationRequestFromTSM();
                v161 = 0;

                if (!v160 || (v116 = 0, v161))
                {
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v162 = NFLogGetLogger();
                  if (v162)
                  {
                    v163 = v162;
                    v164 = object_getClass(self);
                    v165 = class_isMetaClass(v164);
                    v166 = object_getClassName(self);
                    v263 = sel_getName(a2);
                    v167 = 45;
                    if (v165)
                    {
                      v167 = 43;
                    }

                    v163(3, "%c[%{public}s %{public}s]:%i Failed to terminate key with identifier %{public}@ : %{public}@", v167, v166, v263, 179, v104, v161);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v168 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
                  {
                    v169 = object_getClass(self);
                    if (class_isMetaClass(v169))
                    {
                      v170 = 43;
                    }

                    else
                    {
                      v170 = 45;
                    }

                    v171 = object_getClassName(self);
                    v172 = sel_getName(a2);
                    *buf = 67110402;
                    v310 = v170;
                    v311 = 2082;
                    v312 = v171;
                    v313 = 2082;
                    v314 = v172;
                    v315 = 1024;
                    v316 = 179;
                    v317 = 2114;
                    v318 = v104;
                    v319 = 2114;
                    v320 = v161;
                    _os_log_impl(&_mh_execute_header, v168, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to terminate key with identifier %{public}@ : %{public}@", buf, 0x36u);
                  }

                  v116 = v161;
                }
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v110 = NFLogGetLogger();
                if (v110)
                {
                  v111 = v110;
                  v112 = object_getClass(self);
                  v113 = class_isMetaClass(v112);
                  v114 = object_getClassName(self);
                  v261 = sel_getName(a2);
                  v115 = 45;
                  if (v113)
                  {
                    v115 = 43;
                  }

                  v111(3, "%c[%{public}s %{public}s]:%i %{public}@ Got non-nil RTR but it wasn't hex-encoded : %{public}@", v115, v114, v261, 167, @"remoteTerminationRequest", v105);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v116 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
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
                  v120 = sel_getName(a2);
                  *buf = 67110402;
                  v310 = v118;
                  v311 = 2082;
                  v312 = v119;
                  v313 = 2082;
                  v314 = v120;
                  v315 = 1024;
                  v316 = 167;
                  v317 = 2114;
                  v318 = @"remoteTerminationRequest";
                  v319 = 2114;
                  v320 = v105;
                  _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@ Got non-nil RTR but it wasn't hex-encoded : %{public}@", buf, 0x36u);
                }
              }

              v98 = v277;
            }
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v133 = NFLogGetLogger();
            if (v133)
            {
              v134 = v133;
              v135 = object_getClass(self);
              v136 = class_isMetaClass(v135);
              v137 = object_getClassName(self);
              v138 = sel_getName(a2);
              v271 = objc_opt_class();
              v139 = 45;
              if (v136)
              {
                v139 = 43;
              }

              v134(3, "%c[%{public}s %{public}s]:%i %{public}@ Expected String, got %{public}@", v139, v137, v138, 154, @"keyId", v271);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v105 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
            {
              v140 = object_getClass(self);
              if (class_isMetaClass(v140))
              {
                v141 = 43;
              }

              else
              {
                v141 = 45;
              }

              v142 = object_getClassName(self);
              v143 = sel_getName(a2);
              v144 = objc_opt_class();
              *buf = 67110402;
              v310 = v141;
              v311 = 2082;
              v312 = v142;
              v313 = 2082;
              v314 = v143;
              v315 = 1024;
              v316 = 154;
              v317 = 2114;
              v318 = @"keyId";
              v319 = 2114;
              v320 = v144;
              _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@ Expected String, got %{public}@", buf, 0x36u);
            }
          }
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v121 = NFLogGetLogger();
          if (v121)
          {
            v122 = v121;
            v123 = object_getClass(self);
            v124 = class_isMetaClass(v123);
            v125 = object_getClassName(self);
            v126 = sel_getName(a2);
            v270 = objc_opt_class();
            v127 = 45;
            if (v124)
            {
              v127 = 43;
            }

            v122(3, "%c[%{public}s %{public}s]:%i %{public}@ Expected Dictionary, got %{public}@", v127, v125, v126, 148, @"PTTerminateKeyIdsPreExecution", v270);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v104 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
          {
            v128 = object_getClass(self);
            if (class_isMetaClass(v128))
            {
              v129 = 43;
            }

            else
            {
              v129 = 45;
            }

            v130 = object_getClassName(self);
            v131 = sel_getName(a2);
            v132 = objc_opt_class();
            *buf = 67110402;
            v310 = v129;
            v311 = 2082;
            v312 = v130;
            v313 = 2082;
            v314 = v131;
            v315 = 1024;
            v316 = 148;
            v317 = 2114;
            v318 = @"PTTerminateKeyIdsPreExecution";
            v319 = 2114;
            v320 = v132;
            _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@ Expected Dictionary, got %{public}@", buf, 0x36u);
          }
        }
      }

      v100 = [(__CFString *)v98 countByEnumeratingWithState:&v293 objects:v307 count:16];
    }

    while (v100);
  }

  v173 = [v275 NF_arrayForKey:@"FiDOKeyRevokeList"];
  if ([(__CFString *)v173 count]&& byte_10005BAB0 == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v174 = NFLogGetLogger();
    if (v174)
    {
      v175 = v174;
      v176 = object_getClass(self);
      v177 = class_isMetaClass(v176);
      v254 = object_getClassName(self);
      v264 = sel_getName(a2);
      v178 = 45;
      if (v177)
      {
        v178 = 43;
      }

      v175(6, "%c[%{public}s %{public}s]:%i [TSM] Revoking FiDO Keys %@", v178, v254, v264, 186, v173);
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
      v183 = sel_getName(a2);
      *buf = 67110146;
      v310 = v181;
      v311 = 2082;
      v312 = v182;
      v313 = 2082;
      v314 = v183;
      v315 = 1024;
      v316 = 186;
      v317 = 2112;
      v318 = v173;
      _os_log_impl(&_mh_execute_header, v179, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Revoking FiDO Keys %@", buf, 0x2Cu);
    }
  }

  v290 = 0u;
  v291 = 0u;
  v288 = 0u;
  v289 = 0u;
  v184 = v173;
  v284 = [(__CFString *)v184 countByEnumeratingWithState:&v288 objects:v306 count:16];
  if (v284)
  {
    v185 = *v289;
    v278 = v184;
    v281 = *v289;
    do
    {
      for (m = 0; m != v284; m = m + 1)
      {
        if (*v289 != v185)
        {
          objc_enumerationMutation(v184);
        }

        v187 = *(*(&v288 + 1) + 8 * m);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v188 = [(__CFString *)v187 NF_stringForKey:@"relyingParty"];
          v189 = [(__CFString *)v187 NF_stringForKey:@"rpAccountHash"];
          v190 = [(__CFString *)v187 NF_stringForKey:@"keyHash"];
          v191 = [NSData NF_dataWithHexString:v190];
          v192 = v191;
          if (v188)
          {
            v193 = v189 == 0;
          }

          else
          {
            v193 = 1;
          }

          if (v193 || v191 == 0)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v195 = NFLogGetLogger();
            if (v195)
            {
              v196 = v195;
              v197 = object_getClass(self);
              v279 = v192;
              v198 = v189;
              v199 = v184;
              v200 = v190;
              v201 = class_isMetaClass(v197);
              v255 = object_getClassName(self);
              v265 = sel_getName(a2);
              v63 = !v201;
              v190 = v200;
              v184 = v199;
              v189 = v198;
              v192 = v279;
              v202 = 45;
              if (!v63)
              {
                v202 = 43;
              }

              v196(3, "%c[%{public}s %{public}s]:%i Invalid FiDO Key Revoke directive %{public}@", v202, v255, v265, 198, v187);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v219 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v219, OS_LOG_TYPE_ERROR))
            {
              v203 = object_getClass(self);
              if (class_isMetaClass(v203))
              {
                v204 = 43;
              }

              else
              {
                v204 = 45;
              }

              v205 = object_getClassName(self);
              v206 = sel_getName(a2);
              *buf = 67110146;
              v310 = v204;
              v311 = 2082;
              v312 = v205;
              v313 = 2082;
              v314 = v206;
              v315 = 1024;
              v316 = 198;
              v317 = 2114;
              v318 = v187;
              _os_log_impl(&_mh_execute_header, v219, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid FiDO Key Revoke directive %{public}@", buf, 0x2Cu);
            }
          }

          else
          {
            v280 = v190;
            v219 = [SEFidoKeySearchParameters withRelyingParty:v188 relyingPartyAccountHash:v189 fidoKeyHash:v191];
            v220 = +[SEFidoKeyService shared];
            v221 = self->_seSession;
            v222 = self->_targetSEID;
            v287 = 0;
            v223 = [v220 deleteFidoKeyFor:v219 usingSession:v221 withSessionSEID:v222 error:&v287];
            v224 = v287;

            if (v223)
            {
              v225 = v224 == 0;
            }

            else
            {
              v225 = 0;
            }

            if (!v225)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v226 = NFLogGetLogger();
              if (v226)
              {
                v227 = v226;
                v228 = object_getClass(self);
                v229 = class_isMetaClass(v228);
                v230 = object_getClassName(self);
                v266 = sel_getName(a2);
                v231 = 45;
                if (v229)
                {
                  v231 = 43;
                }

                v227(3, "%c[%{public}s %{public}s]:%i Failed to revoke FiDO Key %{public}@ : %{public}@", v231, v230, v266, 211, v187, v224);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v232 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v232, OS_LOG_TYPE_ERROR))
              {
                v233 = object_getClass(self);
                if (class_isMetaClass(v233))
                {
                  v234 = 43;
                }

                else
                {
                  v234 = 45;
                }

                v235 = object_getClassName(self);
                v236 = sel_getName(a2);
                *buf = 67110402;
                v310 = v234;
                v311 = 2082;
                v312 = v235;
                v313 = 2082;
                v314 = v236;
                v315 = 1024;
                v316 = 211;
                v317 = 2114;
                v318 = v187;
                v319 = 2114;
                v320 = v224;
                _os_log_impl(&_mh_execute_header, v232, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to revoke FiDO Key %{public}@ : %{public}@", buf, 0x36u);
              }
            }

            v184 = v278;
            v190 = v280;
          }

          v185 = v281;
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v207 = NFLogGetLogger();
          if (v207)
          {
            v208 = v207;
            v209 = object_getClass(self);
            v210 = class_isMetaClass(v209);
            v211 = object_getClassName(self);
            v212 = sel_getName(a2);
            v273 = objc_opt_class();
            v213 = 45;
            if (v210)
            {
              v213 = 43;
            }

            v208(3, "%c[%{public}s %{public}s]:%i Element in %{public}@ Expected Dictionary, got %{public}@", v213, v211, v212, 189, @"FiDOKeyRevokeList", v273);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v188 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v188, OS_LOG_TYPE_ERROR))
          {
            v214 = object_getClass(self);
            if (class_isMetaClass(v214))
            {
              v215 = 43;
            }

            else
            {
              v215 = 45;
            }

            v216 = object_getClassName(self);
            v217 = sel_getName(a2);
            v218 = objc_opt_class();
            *buf = 67110402;
            v310 = v215;
            v311 = 2082;
            v312 = v216;
            v313 = 2082;
            v314 = v217;
            v315 = 1024;
            v316 = 189;
            v317 = 2114;
            v318 = @"FiDOKeyRevokeList";
            v319 = 2114;
            v320 = v218;
            _os_log_impl(&_mh_execute_header, v188, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Element in %{public}@ Expected Dictionary, got %{public}@", buf, 0x36u);
          }
        }
      }

      v284 = [(__CFString *)v184 countByEnumeratingWithState:&v288 objects:v306 count:16];
    }

    while (v284);
  }

  v237 = [v275 NF_numberForKey:@"spManagedStart"];
  if (v237)
  {
    if (byte_10005BAB0 == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v238 = NFLogGetLogger();
      if (v238)
      {
        v239 = v238;
        v240 = object_getClass(self);
        v241 = class_isMetaClass(v240);
        v242 = object_getClassName(self);
        v267 = sel_getName(a2);
        v243 = 45;
        if (v241)
        {
          v243 = 43;
        }

        v239(6, "%c[%{public}s %{public}s]:%i [TSM] SP managed script start", v243, v242, v267, 218);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v244 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v244, OS_LOG_TYPE_DEFAULT))
      {
        v245 = object_getClass(self);
        if (class_isMetaClass(v245))
        {
          v246 = 43;
        }

        else
        {
          v246 = 45;
        }

        v247 = object_getClassName(self);
        v248 = sel_getName(a2);
        *buf = 67109890;
        v310 = v246;
        v311 = 2082;
        v312 = v247;
        v313 = 2082;
        v314 = v248;
        v315 = 1024;
        v316 = 218;
        _os_log_impl(&_mh_execute_header, v244, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] SP managed script start", buf, 0x22u);
      }
    }

    v249 = [v237 BOOLValue];
    self->_spManagedScript = v249;
    if (v249)
    {
      self->_notifySPInstallScriptStart = 1;
    }
  }
}

- (void)_postProcessNotification:(id)a3 executionStatus:(BOOL)a4 regionIdentifier:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [v8 NF_stringForKey:@"type"];
  v11 = v10;
  if (v10)
  {
    if ([v10 isEqualToString:@"restrictedModeExited"] && v6)
    {
      [(NFSecureElementManagerSession *)self->_seSession didExitRestrictedMode:self->_targetSEID];
      [(NSMutableDictionary *)self->_endMetric setObject:&__kCFBooleanTrue forKeyedSubscript:@"restrictedModeExit"];
    }

    else if ([v11 isEqualToString:@"cleanupPerformed"])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v22 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v26 = 45;
        if (isMetaClass)
        {
          v26 = 43;
        }

        v22(6, "%c[%{public}s %{public}s]:%i CleanupPerformed", v26, ClassName, Name, 242);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v27 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
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
        v89 = v29;
        v90 = 2082;
        v91 = object_getClassName(self);
        v92 = 2082;
        v93 = sel_getName(a2);
        v94 = 1024;
        v95 = 242;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i CleanupPerformed", buf, 0x22u);
      }

      seSession = self->_seSession;
      targetSEID = self->_targetSEID;
      v32 = SESEndPointAppletCleanup();
      if (v32)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v33 = NFLogGetLogger();
        if (v33)
        {
          v34 = v33;
          v35 = object_getClass(self);
          v36 = class_isMetaClass(v35);
          v73 = object_getClassName(self);
          v76 = sel_getName(a2);
          v37 = 45;
          if (v36)
          {
            v37 = 43;
          }

          v34(3, "%c[%{public}s %{public}s]:%i SESEndPointAppletCleanup failed: %@", v37, v73, v76, 245, v32);
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
          v89 = v40;
          v90 = 2082;
          v91 = v41;
          v92 = 2082;
          v93 = v42;
          v94 = 1024;
          v95 = 245;
          v96 = 2112;
          v97 = v32;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i SESEndPointAppletCleanup failed: %@", buf, 0x2Cu);
        }
      }
    }

    else if ([v11 isEqualToString:@"appletChanged"])
    {
      v18 = [v8 NF_stringForKey:@"aid"];
      if ([v18 length])
      {
        v43 = [NSData NF_dataWithHexString:v18];
        if (v43)
        {
          [(NSMutableDictionary *)self->_endMetric setObject:v43 forKeyedSubscript:@"aid"];
        }

        if (v6)
        {
          [(NFRemoteAdminSession *)self processAppletChanged:v18 regionIdentifier:v9];
        }
      }

      v79 = v9;
      v80 = v8;
      v44 = [v8 NF_arrayForKey:@"aids"];
      v45 = objc_opt_new();
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      obj = v44;
      v46 = [obj countByEnumeratingWithState:&v83 objects:v87 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v84;
        while (2)
        {
          for (i = 0; i != v47; i = i + 1)
          {
            if (*v84 != v48)
            {
              objc_enumerationMutation(obj);
            }

            v50 = *(*(&v83 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v62 = NFLogGetLogger();
              if (v62)
              {
                v63 = v62;
                v64 = object_getClass(self);
                v65 = class_isMetaClass(v64);
                v66 = object_getClassName(self);
                v78 = sel_getName(a2);
                v67 = 45;
                if (v65)
                {
                  v67 = 43;
                }

                v63(3, "%c[%{public}s %{public}s]:%i target AID is not NSString!", v67, v66, v78, 268);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v68 = NFSharedLogGetLogger();
              v8 = v80;
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
                v72 = sel_getName(a2);
                *buf = 67109890;
                v89 = v70;
                v90 = 2082;
                v91 = v71;
                v92 = 2082;
                v93 = v72;
                v94 = 1024;
                v95 = 268;
                _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i target AID is not NSString!", buf, 0x22u);
              }

              v9 = v79;
              goto LABEL_68;
            }

            [v45 addObject:v50];
          }

          v47 = [obj countByEnumeratingWithState:&v83 objects:v87 count:16];
          if (v47)
          {
            continue;
          }

          break;
        }
      }

      v9 = v79;
      if ([v45 count] && v6)
      {
        [(NFRemoteAdminSession *)self processAppletsDeleted:v45 regionIdentifier:v79];
      }

      v8 = v80;
    }

    v18 = [v8 NF_numberForKey:@"mfdAllPostExecution"];
    if ([v18 BOOLValue])
    {
      if (byte_10005BAB0 == 1)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v51 = NFLogGetLogger();
        if (v51)
        {
          v52 = v51;
          v53 = object_getClass(self);
          v54 = class_isMetaClass(v53);
          v55 = object_getClassName(self);
          v77 = sel_getName(a2);
          v56 = 45;
          if (v54)
          {
            v56 = 43;
          }

          v52(6, "%c[%{public}s %{public}s]:%i [TSM] Deleting all applets", v56, v55, v77, 282);
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
          v61 = sel_getName(a2);
          *buf = 67109890;
          v89 = v59;
          v90 = 2082;
          v91 = v60;
          v92 = 2082;
          v93 = v61;
          v94 = 1024;
          v95 = 282;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Deleting all applets", buf, 0x22u);
        }
      }

      [(NFSecureElementManagerSession *)self->_seSession deleteAllApplets:0];
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFLogGetLogger();
    if (v12)
    {
      v13 = v12;
      v14 = object_getClass(self);
      v15 = class_isMetaClass(v14);
      v16 = object_getClassName(self);
      v74 = sel_getName(a2);
      v17 = 45;
      if (v15)
      {
        v17 = 43;
      }

      v13(3, "%c[%{public}s %{public}s]:%i Missing notification type", v17, v16, v74, 231);
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
      v89 = v20;
      v90 = 2082;
      v91 = object_getClassName(self);
      v92 = 2082;
      v93 = sel_getName(a2);
      v94 = 1024;
      v95 = 231;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing notification type", buf, 0x22u);
    }
  }

LABEL_68:
}

- (void)processAppletChanged:(id)a3 regionIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100033310();
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v11 = Logger;
    v30 = v8;
    Class = object_getClass(self);
    if (class_isMetaClass(Class))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    ClassName = object_getClassName(self);
    v15 = a2;
    Name = sel_getName(a2);
    v17 = v9;
    if (self)
    {
      serverState = self->_serverState;
    }

    else
    {
      serverState = 0;
    }

    v19 = serverState;
    v20 = [(NFRemoteAdminState *)v19 serverIdentifier];
    v11(6, "%c[%{public}s %{public}s]:%i updating aid %{public}@ with topic %{public}@", v13, ClassName, Name, 292, v7, v20);

    v9 = v17;
    v8 = v30;
    a2 = v15;
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
    if (self)
    {
      v26 = self->_serverState;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;
    v28 = [(NFRemoteAdminState *)v27 serverIdentifier];
    *buf = 67110402;
    v32 = v23;
    v33 = 2082;
    v34 = v24;
    v35 = 2082;
    v36 = v25;
    v37 = 1024;
    v38 = 292;
    v39 = 2114;
    v40 = v7;
    v41 = 2114;
    v42 = v28;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i updating aid %{public}@ with topic %{public}@", buf, 0x36u);
  }

  sub_1000369D4(v9, v8, v7);
  if (self)
  {
    delegate = self->_delegate;
  }

  else
  {
    delegate = 0;
  }

  [(NFRemoteAdminSessionDelegate *)delegate handleAppletStateChange:v7];
}

- (void)processAppletsDeleted:(id)a3 regionIdentifier:(id)a4
{
  v6 = a3;
  v33 = a4;
  v32 = sub_100033310();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v35 objects:v51 count:16];
  if (v7)
  {
    v8 = v7;
    v31 = *v36;
    do
    {
      v9 = 0;
      do
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v35 + 1) + 8 * v9);
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v12 = Logger;
          Class = object_getClass(self);
          if (class_isMetaClass(Class))
          {
            v14 = 43;
          }

          else
          {
            v14 = 45;
          }

          ClassName = object_getClassName(self);
          Name = sel_getName(a2);
          if (self)
          {
            serverState = self->_serverState;
          }

          else
          {
            serverState = 0;
          }

          v18 = serverState;
          v19 = [(NFRemoteAdminState *)v18 serverIdentifier];
          v12(6, "%c[%{public}s %{public}s]:%i updating aid %{public}@ with topic %{public}@", v14, ClassName, Name, 304, v10, v19);
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
          if (self)
          {
            v25 = self->_serverState;
          }

          else
          {
            v25 = 0;
          }

          v26 = v25;
          v27 = [(NFRemoteAdminState *)v26 serverIdentifier];
          *buf = 67110402;
          v40 = v22;
          v41 = 2082;
          v42 = v23;
          v43 = 2082;
          v44 = v24;
          v45 = 1024;
          v46 = 304;
          v47 = 2114;
          v48 = v10;
          v49 = 2114;
          v50 = v27;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i updating aid %{public}@ with topic %{public}@", buf, 0x36u);
        }

        sub_1000369D4(v32, v33, v10);
        v9 = v9 + 1;
      }

      while (v8 != v9);
      v28 = [obj countByEnumeratingWithState:&v35 objects:v51 count:16];
      v8 = v28;
    }

    while (v28);
  }

  if (self)
  {
    delegate = self->_delegate;
  }

  else
  {
    delegate = 0;
  }

  [(NFRemoteAdminSessionDelegate *)delegate handleAppletsDeleted:obj];
}

- (BOOL)performRequest
{
  v3 = sub_100033310();
  if (self)
  {
    serverState = self->_serverState;
  }

  else
  {
    serverState = 0;
  }

  v5 = serverState;
  v6 = [(NFRemoteAdminState *)v5 serverIdentifier];
  v7 = sub_100037C1C(v3, v6, self->_seSession);

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  v9 = Logger;
  if (v7)
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

      v9(6, "%c[%{public}s %{public}s]:%i Performing request", v13, ClassName, Name, 321);
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
      v312 = v16;
      v313 = 2082;
      v314 = object_getClassName(self);
      v315 = 2082;
      v316 = sel_getName(a2);
      v317 = 1024;
      v318 = 321;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Performing request", buf, 0x22u);
    }

    v17 = objc_opt_new();
    v18 = objc_opt_new();
    connection = self->_connection;
    v20 = self->_serverState;
    v21 = [(NFRemoteAdminState *)v20 httpHeaderInfo];
    v22 = [(NFRemoteAdminConnection *)connection performRequest:@"get_pending_commands" body:v7 header:v21 response:v17 responseHeader:v18 httpStatus:0 duration:0 sessionError:0];

    if ((v22 | 8) == 0x19 || ([(NFRemoteAdminState *)self->_serverState setHttpHeaderInfo:v18], v22 == 18))
    {
      [NFExceptionsCALogger postAnalyticsTSMConnectivityException:v22];
    }

    abort = self->_abort;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFLogGetLogger();
    v25 = v24;
    if (abort)
    {
      if (v24)
      {
        v26 = object_getClass(self);
        v27 = class_isMetaClass(v26);
        v28 = object_getClassName(self);
        v269 = sel_getName(a2);
        v29 = 45;
        if (v27)
        {
          v29 = 43;
        }

        v25(6, "%c[%{public}s %{public}s]:%i Aborted...", v29, v28, v269, 344);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v30 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
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
        *buf = 67109890;
        v312 = v32;
        v313 = 2082;
        v314 = v33;
        v315 = 2082;
        v316 = v34;
        v317 = 1024;
        v318 = 344;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Aborted...", buf, 0x22u);
      }

      v35 = 0;
      v36 = 1;
    }

    else
    {
      if (!v22)
      {
        if (v24)
        {
          v54 = object_getClass(self);
          v55 = class_isMetaClass(v54);
          v56 = object_getClassName(self);
          v272 = sel_getName(a2);
          v57 = 45;
          if (v55)
          {
            v57 = 43;
          }

          v25(6, "%c[%{public}s %{public}s]:%i Request sent success", v57, v56, v272, 380);
        }

        v296 = v17;
        v297 = v18;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v58 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v59 = object_getClass(self);
          if (class_isMetaClass(v59))
          {
            v60 = 43;
          }

          else
          {
            v60 = 45;
          }

          v61 = object_getClassName(self);
          v62 = sel_getName(a2);
          *buf = 67109890;
          v312 = v60;
          v313 = 2082;
          v314 = v61;
          v315 = 2082;
          v316 = v62;
          v317 = 1024;
          v318 = 380;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Request sent success", buf, 0x22u);
        }

        v299 = self;
        [(NFRemoteAdminState *)self->_serverState setUnsentScriptResponse:0];
        v295 = v7;
        [v7 objectForKeyedSubscript:@"SEStateInformation"];
        obj = v298 = v3;
        if (obj)
        {
          v307 = 0u;
          v308 = 0u;
          v305 = 0u;
          v306 = 0u;
          v63 = [obj countByEnumeratingWithState:&v305 objects:v310 count:16];
          if (v63)
          {
            v64 = v63;
            v65 = *v306;
            do
            {
              for (i = 0; i != v64; i = i + 1)
              {
                if (*v306 != v65)
                {
                  objc_enumerationMutation(obj);
                }

                v67 = *(*(&v305 + 1) + 8 * i);
                v68 = [v67 objectForKeyedSubscript:@"secureElementType"];
                v69 = [v67 objectForKeyedSubscript:@"osUpdateInfo"];

                if (v69 && [v68 isEqualToString:@"JCOP"])
                {
                  if (byte_10005BAB0 == 1)
                  {
                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v70 = NFLogGetLogger();
                    if (v70)
                    {
                      v71 = v70;
                      v72 = object_getClass(v299);
                      v73 = class_isMetaClass(v72);
                      v74 = object_getClassName(v299);
                      v273 = sel_getName(a2);
                      v75 = 45;
                      if (v73)
                      {
                        v75 = 43;
                      }

                      v264 = v74;
                      v3 = v298;
                      v71(6, "%c[%{public}s %{public}s]:%i [TSM] Clearing JCOP update info", v75, v264, v273, 391);
                    }

                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v76 = NFSharedLogGetLogger();
                    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                    {
                      v77 = object_getClass(v299);
                      if (class_isMetaClass(v77))
                      {
                        v78 = 43;
                      }

                      else
                      {
                        v78 = 45;
                      }

                      v79 = object_getClassName(v299);
                      v80 = sel_getName(a2);
                      *buf = 67109890;
                      v312 = v78;
                      v3 = v298;
                      v313 = 2082;
                      v314 = v79;
                      v315 = 2082;
                      v316 = v80;
                      v317 = 1024;
                      v318 = 391;
                      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Clearing JCOP update info", buf, 0x22u);
                    }
                  }

                  sub_100036DA0(v3, 0);
                }

                v81 = [v67 objectForKeyedSubscript:@"jsblCounterChanged"];

                if (v81)
                {
                  if (byte_10005BAB0 == 1)
                  {
                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v82 = NFLogGetLogger();
                    if (v82)
                    {
                      v83 = v82;
                      v84 = object_getClass(v299);
                      v85 = class_isMetaClass(v84);
                      v86 = object_getClassName(v299);
                      v274 = sel_getName(a2);
                      v87 = 45;
                      if (v85)
                      {
                        v87 = 43;
                      }

                      v83(6, "%c[%{public}s %{public}s]:%i [TSM] Clearing JCOP update info", v87, v86, v274, 397);
                    }

                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v88 = NFSharedLogGetLogger();
                    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
                    {
                      v89 = object_getClass(v299);
                      if (class_isMetaClass(v89))
                      {
                        v90 = 43;
                      }

                      else
                      {
                        v90 = 45;
                      }

                      v91 = object_getClassName(v299);
                      v92 = sel_getName(a2);
                      *buf = 67109890;
                      v312 = v90;
                      v313 = 2082;
                      v314 = v91;
                      v315 = 2082;
                      v316 = v92;
                      v317 = 1024;
                      v318 = 397;
                      _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Clearing JCOP update info", buf, 0x22u);
                    }
                  }

                  sub_100036DA0(v3, 0);
                }
              }

              v64 = [obj countByEnumeratingWithState:&v305 objects:v310 count:16];
            }

            while (v64);
          }
        }

        v7 = v295;
        v93 = [v295 objectForKeyedSubscript:@"jsblCounterChanged"];

        v94 = v299;
        if (v93)
        {
          if (byte_10005BAB0 == 1)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v95 = NFLogGetLogger();
            if (v95)
            {
              v96 = v95;
              v97 = object_getClass(v299);
              v98 = class_isMetaClass(v97);
              v99 = object_getClassName(v299);
              v275 = sel_getName(a2);
              v100 = 45;
              if (v98)
              {
                v100 = 43;
              }

              v96(6, "%c[%{public}s %{public}s]:%i [TSM] Clearing JCOP update info", v100, v99, v275, 404);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v101 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
            {
              v102 = object_getClass(v299);
              if (class_isMetaClass(v102))
              {
                v103 = 43;
              }

              else
              {
                v103 = 45;
              }

              v104 = object_getClassName(v299);
              v105 = sel_getName(a2);
              *buf = 67109890;
              v312 = v103;
              v313 = 2082;
              v314 = v104;
              v315 = 2082;
              v316 = v105;
              v317 = 1024;
              v318 = 404;
              _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Clearing JCOP update info", buf, 0x22u);
            }
          }

          sub_100036DA0(v3, 0);
        }

        sub_10003707C(v3, 0);
        sub_1000377D4(v3);
        v18 = v297;
        if (v299)
        {
          [(NFRemoteAdminState *)v299->_serverState save];
          v106 = v17;
          v107 = v295;
          v108 = v3;
          if ([v106 count])
          {
            v289 = v108;
            v291 = [v106 NF_dictionaryForKey:@"kNotification"];
            v109 = [v106 objectForKeyedSubscript:@"kStartNewSession"];
            v292 = [v109 BOOLValue];

            v294 = [v106 NF_stringForKey:@"kTaskId"];
            sela = [v106 NF_stringForKey:@"targetSEID"];
            v110 = [v106 objectForKeyedSubscript:@"kVersion"];
            v111 = [v110 integerValue];

            v112 = [v107 objectForKeyedSubscript:@"kVersion"];
            v113 = [v112 integerValue];

            if (v111 != v113)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v114 = NFLogGetLogger();
              if (v114)
              {
                v115 = v114;
                v116 = object_getClass(v299);
                v117 = class_isMetaClass(v116);
                v118 = object_getClassName(v299);
                v119 = sel_getName("_processServerResponse:originalRequest:storage:");
                v120 = [NSNumber numberWithInteger:v113];
                v121 = [NSNumber numberWithInteger:v111];
                v276 = v119;
                v18 = v297;
                v122 = 45;
                if (v117)
                {
                  v122 = 43;
                }

                v115(4, "%c[%{public}s %{public}s]:%i Protocol version mismatch, expected=%{public}@, rcv=%{public}@", v122, v118, v276, 492, v120, v121);

                v3 = v298;
                v7 = v295;
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v123 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
              {
                v124 = object_getClass(v299);
                if (class_isMetaClass(v124))
                {
                  v125 = 43;
                }

                else
                {
                  v125 = 45;
                }

                v126 = object_getClassName(v299);
                v127 = sel_getName("_processServerResponse:originalRequest:storage:");
                v128 = [NSNumber numberWithInteger:v113];
                v129 = [NSNumber numberWithInteger:v111];
                *buf = 67110402;
                v312 = v125;
                v18 = v297;
                v313 = 2082;
                v314 = v126;
                v315 = 2082;
                v316 = v127;
                v317 = 1024;
                v318 = 492;
                v319 = 2114;
                v320 = v128;
                v321 = 2114;
                *v322 = v129;
                _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Protocol version mismatch, expected=%{public}@, rcv=%{public}@", buf, 0x36u);
              }

              v94 = v299;
            }

            v130 = sela;
            v131 = [NSData NF_dataWithHexString:sela];

            if (!v131)
            {

              v130 = 0;
            }

            v132 = v291;
            selb = v130;
            if ((v130 != 0) | v292 & 1)
            {
              objc_storeStrong(&v94->_targetSEID, v130);
              if (v291 && v294)
              {
                [(NFRemoteAdminSession *)v94 _preprocessNotification:v291 withTaskID:v294];
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v179 = NFLogGetLogger();
                if (v179)
                {
                  v180 = v179;
                  v181 = object_getClass(v94);
                  v182 = class_isMetaClass(v181);
                  v183 = object_getClassName(v94);
                  v280 = sel_getName("_processServerResponse:originalRequest:storage:");
                  v243 = !v182;
                  v130 = selb;
                  v184 = 45;
                  if (!v243)
                  {
                    v184 = 43;
                  }

                  v180(4, "%c[%{public}s %{public}s]:%i Invalid notification and task id", v184, v183, v280, 513);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v185 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
                {
                  v186 = object_getClass(v94);
                  if (class_isMetaClass(v186))
                  {
                    v187 = 43;
                  }

                  else
                  {
                    v187 = 45;
                  }

                  v188 = object_getClassName(v94);
                  v189 = sel_getName("_processServerResponse:originalRequest:storage:");
                  *buf = 67109890;
                  v312 = v187;
                  v313 = 2082;
                  v314 = v188;
                  v130 = selb;
                  v315 = 2082;
                  v316 = v189;
                  v317 = 1024;
                  v318 = 513;
                  _os_log_impl(&_mh_execute_header, v185, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid notification and task id", buf, 0x22u);
                }
              }

              if (v292)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v190 = NFLogGetLogger();
                if (v190)
                {
                  v191 = v190;
                  v192 = object_getClass(v94);
                  v193 = class_isMetaClass(v192);
                  v194 = object_getClassName(v94);
                  v281 = sel_getName("_processServerResponse:originalRequest:storage:");
                  v243 = !v193;
                  v130 = selb;
                  v195 = 45;
                  if (!v243)
                  {
                    v195 = 43;
                  }

                  v191(6, "%c[%{public}s %{public}s]:%i New session requested", v195, v194, v281, 518);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v196 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
                {
                  v197 = object_getClass(v94);
                  if (class_isMetaClass(v197))
                  {
                    v198 = 43;
                  }

                  else
                  {
                    v198 = 45;
                  }

                  v199 = object_getClassName(v94);
                  v200 = sel_getName("_processServerResponse:originalRequest:storage:");
                  *buf = 67109890;
                  v312 = v198;
                  v313 = 2082;
                  v314 = v199;
                  v130 = selb;
                  v315 = 2082;
                  v316 = v200;
                  v317 = 1024;
                  v318 = 518;
                  _os_log_impl(&_mh_execute_header, v196, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i New session requested", buf, 0x22u);
                }

                v94->_spManagedScript = 0;
                v35 = 1;
              }

              else
              {
                v293 = [v106 NF_dictionaryForKey:@"redirectRequest"];
                if ([v293 count])
                {
                  v201 = sub_1000389D0(v289, v294);
                  if (v201)
                  {
                    v202 = v201;
                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v203 = NFLogGetLogger();
                    if (v203)
                    {
                      v204 = v203;
                      v205 = object_getClass(v94);
                      v206 = class_isMetaClass(v205);
                      v207 = object_getClassName(v94);
                      v282 = sel_getName("_processServerResponse:originalRequest:storage:");
                      v208 = 45;
                      if (v206)
                      {
                        v208 = 43;
                      }

                      v266 = v207;
                      v132 = v291;
                      v204(6, "%c[%{public}s %{public}s]:%i Redirect request is aready in queue", v208, v266, v282, 530);
                    }

                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v209 = NFSharedLogGetLogger();
                    if (os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
                    {
                      v210 = object_getClass(v94);
                      if (class_isMetaClass(v210))
                      {
                        v211 = 43;
                      }

                      else
                      {
                        v211 = 45;
                      }

                      v212 = object_getClassName(v94);
                      v213 = sel_getName("_processServerResponse:originalRequest:storage:");
                      *buf = 67109890;
                      v312 = v211;
                      v132 = v291;
                      v313 = 2082;
                      v314 = v212;
                      v315 = 2082;
                      v316 = v213;
                      v317 = 1024;
                      v318 = 530;
                      _os_log_impl(&_mh_execute_header, v209, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Redirect request is aready in queue", buf, 0x22u);
                    }

                    [(NFRemoteAdminState *)v202 setPendingImmediateRetry:1];
                    [(NFRemoteAdminRedirectState *)v202 save];
                  }

                  else
                  {
                    v300 = [NFRemoteAdminRedirectState alloc];
                    v247 = [(NFRemoteAdminConnection *)v94->_connection urlString];
                    v248 = [(NFRemoteAdminState *)v94->_serverState serverIdentifier];
                    v202 = [(NFRemoteAdminRedirectState *)v300 initWithDictionary:v106 sourceURL:v247 originator:v248];

                    v249 = [(NFRemoteAdminState *)v94->_serverState httpHeaderInfo];
                    [(NFRemoteAdminState *)v202 setHttpHeaderInfo:v249];

                    sub_1000388F0(v289, v202);
                  }

                  v94->_returnCode = 11;

                  v35 = 0;
                }

                else
                {
                  v214 = [NFSecureElement embeddedSecureElementWithError:0];
                  v215 = [v214 serialNumber];
                  v216 = [v215 caseInsensitiveCompare:v94->_targetSEID];

                  if (!v216)
                  {
                    [(NFRemoteAdminSession *)v94 _deactiveAllAppletsOnSE:v94->_targetSEID];
                  }

                  v217 = v106;
                  v218 = [v217 NF_dictionaryForKey:@"kNotification"];
                  v219 = [v217 NF_stringForKey:@"kBatchId"];
                  v220 = [v217 NF_stringForKey:@"kTaskId"];
                  v221 = objc_opt_new();
                  [v221 setSeid:v94->_targetSEID];
                  [v221 setIncludeAPDUDuration:1];
                  [v221 setDisableCompletionNotification:v94->_spManagedScript];
                  v222 = objc_opt_new();
                  v223 = [NSNumber numberWithInteger:2];
                  [v222 setObject:v223 forKeyedSubscript:@"kVersion"];

                  if (v219)
                  {
                    [v222 setObject:v219 forKeyedSubscript:@"kBatchId"];
                  }

                  if (v220)
                  {
                    [v222 setObject:v220 forKeyedSubscript:@"kTaskId"];
                  }

                  v287 = v219;
                  targetSEID = v299->_targetSEID;
                  if (targetSEID)
                  {
                    [v222 setObject:targetSEID forKeyedSubscript:@"targetSEID"];
                  }

                  v225 = objc_opt_new();
                  [v222 setObject:v225 forKeyedSubscript:@"kCommandsResponse"];

                  [v222 setObject:@"UnexpectedInterruption" forKeyedSubscript:@"clientIncompleteReason"];
                  v226 = [NSNumber numberWithBool:1];
                  [v222 setObject:v226 forKeyedSubscript:@"incompletedExecution"];

                  [(NFRemoteAdminState *)v299->_serverState setUnsentScriptResponse:v222];
                  v288 = v218;
                  v227 = [v218 NF_stringForKey:@"type"];
                  [v221 setToSystemOS:{objc_msgSend(v227, "isEqualToString:", @"restrictedModeExited"}];
                  seSession = v299->_seSession;
                  v309 = 0;
                  v290 = [(NFSecureElementManagerSession *)seSession runScript:v217 parameters:v221 outputResults:&v309];
                  v229 = v309;
                  [(NFRemoteAdminState *)v299->_serverState setUnsentScriptResponse:v229];
                  [(NFRemoteAdminState *)v299->_serverState save];
                  v230 = [v221 outFinalSWStatus];
                  v231 = [NSNumber numberWithUnsignedInteger:v230];
                  [(NSMutableDictionary *)v299->_endMetric setObject:v231 forKeyedSubscript:@"status"];

                  v7 = v295;
                  if (byte_10005BAB0 == 1)
                  {
                    v286 = v220;
                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v232 = NFLogGetLogger();
                    if (v232)
                    {
                      v233 = v232;
                      v234 = object_getClass(v299);
                      v235 = class_isMetaClass(v234);
                      v236 = object_getClassName(v299);
                      v283 = sel_getName("_executeScript:");
                      v237 = 45;
                      if (v235)
                      {
                        v237 = 43;
                      }

                      v267 = v236;
                      v7 = v295;
                      v233(6, "%c[%{public}s %{public}s]:%i [TSM] Execution result=%ld, lastAPDUStatus=0x%lx", v237, v267, v283, 467, v290, v230);
                    }

                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v238 = NFSharedLogGetLogger();
                    if (os_log_type_enabled(v238, OS_LOG_TYPE_DEFAULT))
                    {
                      v239 = object_getClass(v299);
                      if (class_isMetaClass(v239))
                      {
                        v240 = 43;
                      }

                      else
                      {
                        v240 = 45;
                      }

                      v241 = object_getClassName(v299);
                      v242 = sel_getName("_executeScript:");
                      *buf = 67110402;
                      v312 = v240;
                      v7 = v295;
                      v313 = 2082;
                      v314 = v241;
                      v315 = 2082;
                      v316 = v242;
                      v317 = 1024;
                      v318 = 467;
                      v319 = 2048;
                      v320 = v290;
                      v321 = 2048;
                      *v322 = v230;
                      _os_log_impl(&_mh_execute_header, v238, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Execution result=%ld, lastAPDUStatus=0x%lx", buf, 0x36u);
                    }

                    v220 = v286;
                  }

                  if (v291)
                  {
                    if (v290)
                    {
                      v243 = 0;
                    }

                    else
                    {
                      v243 = v230 == 36864;
                    }

                    v244 = v243;
                    v245 = [(NFRemoteAdminState *)v299->_serverState serverIdentifier];
                    [(NFRemoteAdminSession *)v299 _postProcessNotification:v291 executionStatus:v244 regionIdentifier:v245];
                  }

                  v246 = [(NFRemoteAdminState *)v299->_serverState unsentScriptResponse];

                  v18 = v297;
                  v3 = v298;
                  v17 = v296;
                  if (v246)
                  {
                    [(NFSecureElementManagerSession *)v299->_seSession refreshSecureElement:v299->_targetSEID];
                    v35 = 1;
                  }

                  else
                  {
                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v250 = NFLogGetLogger();
                    if (v250)
                    {
                      v251 = v250;
                      v252 = object_getClass(v299);
                      v253 = class_isMetaClass(v252);
                      v254 = object_getClassName(v299);
                      v284 = sel_getName("_processServerResponse:originalRequest:storage:");
                      v255 = 45;
                      if (v253)
                      {
                        v255 = 43;
                      }

                      v251(3, "%c[%{public}s %{public}s]:%i C-APDU execution failure", v255, v254, v284, 560);
                    }

                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v256 = NFSharedLogGetLogger();
                    if (os_log_type_enabled(v256, OS_LOG_TYPE_ERROR))
                    {
                      v257 = object_getClass(v299);
                      if (class_isMetaClass(v257))
                      {
                        v258 = 43;
                      }

                      else
                      {
                        v258 = 45;
                      }

                      v259 = object_getClassName(v299);
                      v260 = sel_getName("_processServerResponse:originalRequest:storage:");
                      *buf = 67109890;
                      v312 = v258;
                      v313 = 2082;
                      v314 = v259;
                      v315 = 2082;
                      v316 = v260;
                      v317 = 1024;
                      v318 = 560;
                      _os_log_impl(&_mh_execute_header, v256, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i C-APDU execution failure", buf, 0x22u);
                    }

                    v35 = 0;
                    v299->_returnCode = 4;
                  }

                  v132 = v291;
                }

                v130 = selb;
              }
            }

            else
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v168 = NFLogGetLogger();
              if (v168)
              {
                v169 = v168;
                v170 = object_getClass(v94);
                v171 = class_isMetaClass(v170);
                v172 = object_getClassName(v94);
                v279 = sel_getName("_processServerResponse:originalRequest:storage:");
                v243 = !v171;
                v130 = selb;
                v173 = 45;
                if (!v243)
                {
                  v173 = 43;
                }

                v169(3, "%c[%{public}s %{public}s]:%i Missing target SEID.  Halt TSM script execution", v173, v172, v279, 501);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v174 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
              {
                v175 = object_getClass(v94);
                if (class_isMetaClass(v175))
                {
                  v176 = 43;
                }

                else
                {
                  v176 = 45;
                }

                v177 = object_getClassName(v94);
                v178 = sel_getName("_processServerResponse:originalRequest:storage:");
                *buf = 67109890;
                v312 = v176;
                v313 = 2082;
                v314 = v177;
                v130 = selb;
                v315 = 2082;
                v316 = v178;
                v317 = 1024;
                v318 = 501;
                _os_log_impl(&_mh_execute_header, v174, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing target SEID.  Halt TSM script execution", buf, 0x22u);
              }

              v35 = 0;
              v94->_returnCode = 4;
            }
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v157 = NFLogGetLogger();
            if (v157)
            {
              v158 = v157;
              v159 = object_getClass(v299);
              v160 = class_isMetaClass(v159);
              v161 = object_getClassName(v299);
              v278 = sel_getName("_processServerResponse:originalRequest:storage:");
              v162 = 45;
              if (v160)
              {
                v162 = 43;
              }

              v158(6, "%c[%{public}s %{public}s]:%i no further action required", v162, v161, v278, 477);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v163 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
            {
              v164 = object_getClass(v299);
              if (class_isMetaClass(v164))
              {
                v165 = 43;
              }

              else
              {
                v165 = 45;
              }

              v166 = object_getClassName(v299);
              v167 = sel_getName("_processServerResponse:originalRequest:storage:");
              *buf = 67109890;
              v312 = v165;
              v313 = 2082;
              v314 = v166;
              v315 = 2082;
              v316 = v167;
              v317 = 1024;
              v318 = 477;
              _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i no further action required", buf, 0x22u);
            }

            v35 = 0;
            v299->_returnCode = 0;
          }
        }

        else
        {
          [0 save];
          v261 = v17;
          v262 = v295;
          v263 = v3;
          v35 = 0;
        }

        goto LABEL_27;
      }

      if (v22 == 3)
      {
        if (v24)
        {
          v45 = object_getClass(self);
          v46 = class_isMetaClass(v45);
          v47 = object_getClassName(self);
          v271 = sel_getName(a2);
          v48 = 45;
          if (v46)
          {
            v48 = 43;
          }

          v25(6, "%c[%{public}s %{public}s]:%i Session abort", v48, v47, v271, 351);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v49 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = object_getClass(self);
          if (class_isMetaClass(v50))
          {
            v51 = 43;
          }

          else
          {
            v51 = 45;
          }

          v52 = object_getClassName(self);
          v53 = sel_getName(a2);
          *buf = 67109890;
          v312 = v51;
          v313 = 2082;
          v314 = v52;
          v315 = 2082;
          v316 = v53;
          v317 = 1024;
          v318 = 351;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Session abort", buf, 0x22u);
        }

        [(NFRemoteAdminState *)self->_serverState setUnsentScriptResponse:0];
        [(NFRemoteAdminState *)self->_serverState save];
        v35 = 1;
        goto LABEL_27;
      }

      if (v24)
      {
        v133 = object_getClass(self);
        v134 = class_isMetaClass(v133);
        v265 = object_getClassName(self);
        v277 = sel_getName(a2);
        v135 = 45;
        if (v134)
        {
          v135 = 43;
        }

        v25(4, "%c[%{public}s %{public}s]:%i Request sent failed, status=%d", v135, v265, v277, 363, v22);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v136 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
      {
        v137 = object_getClass(self);
        if (class_isMetaClass(v137))
        {
          v138 = 43;
        }

        else
        {
          v138 = 45;
        }

        v139 = object_getClassName(self);
        v140 = sel_getName(a2);
        *buf = 67110146;
        v312 = v138;
        v313 = 2082;
        v314 = v139;
        v315 = 2082;
        v316 = v140;
        v317 = 1024;
        v318 = 363;
        v319 = 1024;
        LODWORD(v320) = v22;
        _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Request sent failed, status=%d", buf, 0x28u);
      }

      if (v22 != 25)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v141 = NFLogGetLogger();
        if (v141)
        {
          v142 = v141;
          v143 = object_getClass(self);
          v144 = class_isMetaClass(v143);
          v145 = object_getClassName(self);
          v146 = sel_getName(a2);
          if (v22 >= 0x4C)
          {
            v147 = 76;
          }

          else
          {
            v147 = v22;
          }

          v285 = off_100054D30[v147];
          v148 = 43;
          if (!v144)
          {
            v148 = 45;
          }

          v142(3, "%c[%{public}s %{public}s]:%i %@ err=%d %s", v148, v145, v146, 365, @"Returned", v22, v285);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v149 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
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
          v153 = sel_getName(a2);
          if (v22 >= 0x4C)
          {
            v154 = 76;
          }

          else
          {
            v154 = v22;
          }

          v155 = off_100054D30[v154];
          *buf = 67110658;
          v312 = v151;
          v313 = 2082;
          v314 = v152;
          v315 = 2082;
          v316 = v153;
          v317 = 1024;
          v318 = 365;
          v319 = 2112;
          v320 = @"Returned";
          v321 = 1024;
          *v322 = v22;
          *&v322[4] = 2080;
          *&v322[6] = v155;
          _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@ err=%d %s", buf, 0x3Cu);
        }

        v35 = 0;
        if ((v22 - 19) > 1)
        {
          v156 = 4;
        }

        else
        {
          v156 = 3;
        }

        self->_returnCode = v156;
        goto LABEL_27;
      }

      v35 = 0;
      v36 = 2;
    }

    self->_returnCode = v36;
LABEL_27:

    goto LABEL_38;
  }

  if (Logger)
  {
    v37 = object_getClass(self);
    v38 = class_isMetaClass(v37);
    v39 = object_getClassName(self);
    v270 = sel_getName(a2);
    v40 = 45;
    if (v38)
    {
      v40 = 43;
    }

    v9(3, "%c[%{public}s %{public}s]:%i Failed to get next request", v40, v39, v270, 316);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v41 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
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

    *buf = 67109890;
    v312 = v43;
    v313 = 2082;
    v314 = object_getClassName(self);
    v315 = 2082;
    v316 = sel_getName(a2);
    v317 = 1024;
    v318 = 316;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get next request", buf, 0x22u);
  }

  v35 = 0;
  self->_returnCode = 4;
LABEL_38:

  return v35;
}

- (BOOL)_openSessionWithTimeout:(unint64_t)a3
{
  if (self->_allocateSESession)
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = sub_1000325E0;
    v44 = sub_1000325F0;
    v45 = &stru_100055408;
    v6 = sub_100016628();
    sub_10001B3A4(v6);

    v7 = dispatch_semaphore_create(0);
    v8 = +[NFHardwareManager sharedHardwareManager];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000325F8;
    v35[3] = &unk_100054FA0;
    v37 = &v40;
    v38 = &v46;
    v35[4] = self;
    v39 = a2;
    v9 = v7;
    v36 = v9;
    v10 = [v8 startSecureElementManagerSessionWithPriority:v35];

    v11 = 60 * a3;
    if (60 * a3 <= 1)
    {
      v11 = 1;
    }

    if (a3 == -1)
    {
      v12 = -1;
    }

    else
    {
      v12 = v11;
    }

    v13 = 119;
    do
    {
      v14 = v12 - v13;
      if (v12 >= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v12;
      }

      if (v12 < v13)
      {
        v14 = 0;
      }

      if (v12 == -1)
      {
        v12 = -1;
      }

      else
      {
        v13 = v15;
        v12 = v14;
      }

      v16 = dispatch_time(0, 1000000000 * v13);
      v17 = dispatch_semaphore_wait(v9, v16);
      v18 = sub_100016628();
      sub_10001B3FC(v18);
    }

    while (v12 && v17);
    v19 = v41[5];
    objc_sync_enter(v19);
    if (v17)
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

        v21(4, "%c[%{public}s %{public}s]:%i Timeout waiting for nfcd session to start", v25, ClassName, Name, 628);
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
        v51 = v28;
        v52 = 2082;
        v53 = v29;
        v54 = 2082;
        v55 = v30;
        v56 = 1024;
        v57 = 628;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Timeout waiting for nfcd session to start", buf, 0x22u);
      }

      *(v47 + 24) = 1;
      [v10 endSessionWithCompletion:&stru_100054FC0];
      seSession = self->_seSession;
      self->_seSession = 0;
    }

    objc_sync_exit(v19);

    v32 = sub_100016628();
    sub_10001B350(v32);

    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(&v46, 8);
  }

  return self->_seSession != 0;
}

- (unsigned)_deactiveAllAppletsOnSE:(id)a3
{
  v5 = a3;
  v6 = objc_opt_new();
  [v6 setSeid:v5];

  [v6 setDeactivateAllApps:1];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v8 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v13 = [v6 seid];
    v14 = 45;
    if (isMetaClass)
    {
      v14 = 43;
    }

    v8(6, "%c[%{public}s %{public}s]:%i Deactivating all applets on SEID:%{public}@", v14, ClassName, Name, 646, v13);
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
    v20 = [v6 seid];
    *buf = 67110146;
    v25 = v17;
    v26 = 2082;
    v27 = v18;
    v28 = 2082;
    v29 = v19;
    v30 = 1024;
    v31 = 646;
    v32 = 2114;
    v33 = v20;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Deactivating all applets on SEID:%{public}@", buf, 0x2Cu);
  }

  seSession = self->_seSession;
  v22 = objc_opt_new();
  LODWORD(seSession) = [(NFSecureElementManagerSession *)seSession runScript:v22 parameters:v6 outputResults:0];

  return seSession;
}

- (unint64_t)run
{
  if (!self->_serverURL)
  {
    return 5;
  }

  v4 = self;
  objc_sync_enter(v4);
  if (v4->_abort)
  {
    objc_sync_exit(v4);

    return 1;
  }

  v82 = 0;
  v6 = [NFSecureElement embeddedSecureElementWithError:&v82];
  v7 = v82;
  if (!v6 || ([v6 available] & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v17 = Logger;
      Class = object_getClass(v4);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v4);
      Name = sel_getName(a2);
      v20 = 45;
      if (isMetaClass)
      {
        v20 = 43;
      }

      v17(3, "%c[%{public}s %{public}s]:%i eSE unavailable, aborting.  Error = %{public}@", v20, ClassName, Name, 667, v7);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v21 = object_getClass(v4);
      if (class_isMetaClass(v21))
      {
        v22 = 43;
      }

      else
      {
        v22 = 45;
      }

      v23 = object_getClassName(v4);
      v24 = sel_getName(a2);
      *buf = 67110146;
      v84 = v22;
      v85 = 2082;
      v86 = v23;
      v87 = 2082;
      v88 = v24;
      v89 = 1024;
      v90 = 667;
      v91 = 2114;
      v92 = v7;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i eSE unavailable, aborting.  Error = %{public}@", buf, 0x2Cu);
    }

    v5 = 1;
    goto LABEL_41;
  }

  v8 = [v6 serialNumber];
  objc_storeStrong(&v4->_targetSEID, v8);

  if (!v4->_targetSEID)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFLogGetLogger();
    if (v25)
    {
      v26 = v25;
      v27 = object_getClass(v4);
      v28 = class_isMetaClass(v27);
      v29 = object_getClassName(v4);
      v78 = sel_getName(a2);
      v30 = 45;
      if (v28)
      {
        v30 = 43;
      }

      v26(3, "%c[%{public}s %{public}s]:%i Missing SEID", v30, v29, v78, 673);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    v31 = object_getClass(v4);
    if (class_isMetaClass(v31))
    {
      v32 = 43;
    }

    else
    {
      v32 = 45;
    }

    v33 = object_getClassName(v4);
    v34 = sel_getName(a2);
    *buf = 67109890;
    v84 = v32;
    v85 = 2082;
    v86 = v33;
    v87 = 2082;
    v88 = v34;
    v89 = 1024;
    v90 = 673;
    v35 = "%c[%{public}s %{public}s]:%i Missing SEID";
LABEL_39:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v35, buf, 0x22u);
    goto LABEL_40;
  }

  v5 = [NFRemoteAdminConnectionHTTP alloc];
  v9 = [(NSURL *)self->_serverURL URLByAppendingPathComponent:@"v2"];
  v10 = v4->_targetSEID;
  v11 = [NFSecureElement embeddedSecureElementWithError:0];
  v12 = [v5 initWithURL:v9 SEID:v10 showProprietaryHeaders:1 disableEVTrustValidation:{objc_msgSend(v11, "isProductionSigned") ^ 1}];
  connection = v4->_connection;
  v4->_connection = v12;

  v14 = v4->_connection;
  if (!v14)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v36 = NFLogGetLogger();
    if (v36)
    {
      v37 = v36;
      v38 = object_getClass(v4);
      v39 = class_isMetaClass(v38);
      v40 = object_getClassName(v4);
      v79 = sel_getName(a2);
      v41 = 45;
      if (v39)
      {
        v41 = 43;
      }

      v37(3, "%c[%{public}s %{public}s]:%i Failed to create connection", v41, v40, v79, 683);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    v42 = object_getClass(v4);
    if (class_isMetaClass(v42))
    {
      v43 = 43;
    }

    else
    {
      v43 = 45;
    }

    v44 = object_getClassName(v4);
    v45 = sel_getName(a2);
    *buf = 67109890;
    v84 = v43;
    v85 = 2082;
    v86 = v44;
    v87 = 2082;
    v88 = v45;
    v89 = 1024;
    v90 = 683;
    v35 = "%c[%{public}s %{public}s]:%i Failed to create connection";
    goto LABEL_39;
  }

  if ([(NFRemoteAdminConnection *)v14 connect])
  {
    v15 = v4->_connection;
    v4->_connection = 0;
LABEL_40:
    v5 = 4;
LABEL_41:

    v46 = 0;
    goto LABEL_42;
  }

  v46 = 1;
LABEL_42:

  objc_sync_exit(v4);
  if (v46)
  {
    if ([(NFRemoteAdminSession *)v4 _openSessionWithTimeout:-1]&& v4->_seSession)
    {
      *&v4->_spManagedScript = 0;
      v47 = 201;
      while (1)
      {
        v48 = objc_autoreleasePoolPush();
        if (v4->_abort)
        {
          break;
        }

        if (![(NFRemoteAdminSession *)v4 performRequest])
        {
          goto LABEL_70;
        }

        objc_autoreleasePoolPop(v48);
        if (--v47 <= 1)
        {
          goto LABEL_71;
        }
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v60 = NFLogGetLogger();
      if (v60)
      {
        v61 = v60;
        v62 = object_getClass(v4);
        v63 = class_isMetaClass(v62);
        v64 = object_getClassName(v4);
        v81 = sel_getName(a2);
        v65 = 45;
        if (v63)
        {
          v65 = 43;
        }

        v61(5, "%c[%{public}s %{public}s]:%i Aborted: system shutting down", v65, v64, v81, 712);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v66 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v67 = object_getClass(v4);
        if (class_isMetaClass(v67))
        {
          v68 = 43;
        }

        else
        {
          v68 = 45;
        }

        v69 = object_getClassName(v4);
        v70 = sel_getName(a2);
        *buf = 67109890;
        v84 = v68;
        v85 = 2082;
        v86 = v69;
        v87 = 2082;
        v88 = v70;
        v89 = 1024;
        v90 = 712;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Aborted: system shutting down", buf, 0x22u);
      }

      v4->_returnCode = 1;
LABEL_70:
      objc_autoreleasePoolPop(v48);
LABEL_71:
      if (v4->_allocateSESession)
      {
        [(NFSecureElementManagerSession *)v4->_seSession endSessionWithCompletion:&stru_100054FE0];
      }

      [(NFRemoteAdminConnection *)v4->_connection disconnect];
      if (v4->_notifySPInstallScriptStart)
      {
        v71 = sub_100016628();
        v72 = v71;
        if (v71)
        {
          v73 = *(v71 + 224);
        }

        else
        {
          v73 = 0;
        }

        v74 = v73;
        [v74 sendXpcNotificationEventWithDictionary:&off_1000575E8];
      }

      return v4->_returnCode;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v49 = NFLogGetLogger();
      if (v49)
      {
        v50 = v49;
        v51 = object_getClass(v4);
        v52 = class_isMetaClass(v51);
        v53 = object_getClassName(v4);
        v80 = sel_getName(a2);
        v54 = 45;
        if (v52)
        {
          v54 = 43;
        }

        v50(3, "%c[%{public}s %{public}s]:%i Failed to open SE session", v54, v53, v80, 699);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v55 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v56 = object_getClass(v4);
        if (class_isMetaClass(v56))
        {
          v57 = 43;
        }

        else
        {
          v57 = 45;
        }

        v58 = object_getClassName(v4);
        v59 = sel_getName(a2);
        *buf = 67109890;
        v84 = v57;
        v85 = 2082;
        v86 = v58;
        v87 = 2082;
        v88 = v59;
        v89 = 1024;
        v90 = 699;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open SE session", buf, 0x22u);
      }

      [(NFRemoteAdminConnection *)v4->_connection disconnect];
      return 4;
    }
  }

  return v5;
}

@end