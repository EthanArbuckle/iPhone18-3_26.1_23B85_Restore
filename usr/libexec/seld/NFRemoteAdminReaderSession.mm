@interface NFRemoteAdminReaderSession
- (BOOL)_closeSession;
- (BOOL)_executePreCheckScripts:(id)scripts;
- (BOOL)_preValidateCardForMercury;
- (BOOL)_validateCard;
- (BOOL)_validateCardForFelica;
- (BOOL)_validateCardForMercury:(id)mercury;
- (BOOL)_validateCardForMiFare:(id)fare;
- (BOOL)reconnectTag;
- (BOOL)startNewSession;
- (id)_gatherCardStateInfo;
- (id)_getRequireServiceV1List;
- (id)_getSessionSystemCode;
- (id)connectTagWithTimeout:(unint64_t)timeout;
- (id)getNextRequest;
- (id)sessionCardServiceInfo;
- (unint64_t)_doFinalTSMCheckIn;
- (unint64_t)_doInitialRequest;
- (unint64_t)_doReaderModeRedirect;
- (unint64_t)_openSession;
- (unint64_t)_performReaderModeRequest;
- (unint64_t)executeScript:(id)script;
- (unint64_t)run;
- (unsigned)_generateRandomNumber:(unsigned int)number endingWith:(unsigned int)with;
- (unsigned)targetTagType;
- (void)_checkForMercuryIngestion;
- (void)_fireCardIngestionStatus:(unint64_t)status;
- (void)_restoreRFSettingForCathayIngestion;
- (void)_restoreRFSettingForMercuryIngestion;
- (void)abort:(int64_t)abort;
- (void)processNotification:(id)notification;
- (void)readerSession:(id)session didDetectTags:(id)tags;
- (void)readerSessionDidEndUnexpectedly:(id)unexpectedly reason:(id)reason;
@end

@implementation NFRemoteAdminReaderSession

- (id)sessionCardServiceInfo
{
  redirectState = [(NFRemoteAdminRedirectSession *)self redirectState];
  requestInfo = [redirectState requestInfo];

  cardServiceInfo = [requestInfo cardServiceInfo];

  return cardServiceInfo;
}

- (unsigned)targetTagType
{
  sessionCardServiceInfo = [(NFRemoteAdminReaderSession *)self sessionCardServiceInfo];
  v5 = [sessionCardServiceInfo objectForKeyedSubscript:@"version"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && ([sessionCardServiceInfo objectForKeyedSubscript:@"version"], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "intValue"), v7, v8 >= 3))
  {
    v10 = [sessionCardServiceInfo NF_stringForKey:@"technology"];
    if ([v10 length])
    {
      v9 = [v10 containsString:@"A"];
      if ([v10 containsString:@"B"])
      {
        v9 |= 2u;
      }

      if ([v10 containsString:@"F"])
      {
        v9 |= 4u;
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
        v16 = 45;
        if (isMetaClass)
        {
          v16 = 43;
        }

        v12(4, "%c[%{public}s %{public}s]:%i Missing technology field.  Forcing TypeA", v16, ClassName, Name, 105);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
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

        *buf = 67109890;
        v23 = v19;
        v24 = 2082;
        v25 = object_getClassName(self);
        v26 = 2082;
        v27 = sel_getName(a2);
        v28 = 1024;
        v29 = 105;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing technology field.  Forcing TypeA", buf, 0x22u);
      }

      v9 = 1;
    }
  }

  else
  {
    v9 = 4;
  }

  return v9;
}

- (unsigned)_generateRandomNumber:(unsigned int)number endingWith:(unsigned int)with
{
  numberCopy = with;
  if (number <= with)
  {
    numberCopy2 = with;
    numberCopy = number;
  }

  else
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
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v9(4, "%c[%{public}s %{public}s]:%i startingNumber > endingNumber. Swaping them!", v13, ClassName, Name, 115);
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

      *buf = 67109890;
      v21 = v16;
      v22 = 2082;
      v23 = object_getClassName(self);
      v24 = 2082;
      v25 = sel_getName(a2);
      v26 = 1024;
      v27 = 115;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i startingNumber > endingNumber. Swaping them!", buf, 0x22u);
    }

    numberCopy2 = number;
  }

  return arc4random_uniform(numberCopy2 - numberCopy) + numberCopy;
}

- (id)_gatherCardStateInfo
{
  selfCopy = self;
  sessionCardServiceInfo = [(NFRemoteAdminReaderSession *)self sessionCardServiceInfo];
  v4 = sessionCardServiceInfo;
  p_isa = &selfCopy->super.super.isa;
  if (selfCopy->_cardValidationStatus == 14)
  {
    v5 = [sessionCardServiceInfo NF_arrayForKey:@"areaCodeList"];
    v6 = [v4 NF_arrayForKey:@"blockDataList"];
    v7 = [v4 objectForKeyedSubscript:@"cardServiceId"];

    if (v7)
    {
      v8 = [v4 objectForKeyedSubscript:@"cardServiceId"];
      [p_isa[10] setObject:v8 forKeyedSubscript:@"cardServiceId"];

      selfCopy = p_isa;
    }

    readerSession = selfCopy->_readerSession;
    _getSessionSystemCode = [(NFRemoteAdminReaderSession *)selfCopy _getSessionSystemCode];
    [(NFReaderSession *)readerSession felicaStateForSystemCode:_getSessionSystemCode withRequestService:v5 withBlockReadList:v6 performSearchServiceCode:0];
    v12 = v11 = selfCopy;

    v11->_cardValidationStatus = 0;
    goto LABEL_118;
  }

  v13 = objc_opt_new();
  v14 = [v4 NF_arrayForKey:@"stateGenerationScript"];
  v15 = [v4 valueForKey:@"stateGenerationScript"];

  if (v15 && !v14)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v17 = Logger;
      Class = object_getClass(selfCopy);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(selfCopy);
      Name = sel_getName(a2);
      v21 = 45;
      if (isMetaClass)
      {
        v21 = 43;
      }

      v17(3, "%c[%{public}s %{public}s]:%i Invalid Command APDU. Bailing out now.", v21, ClassName, Name, 156);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = object_getClass(selfCopy);
      if (class_isMetaClass(v23))
      {
        v24 = 43;
      }

      else
      {
        v24 = 45;
      }

      *buf = 67109890;
      v194 = v24;
      v195 = 2082;
      v196 = object_getClassName(selfCopy);
      v197 = 2082;
      v198 = sel_getName(a2);
      v199 = 1024;
      v200 = 156;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid Command APDU. Bailing out now.", buf, 0x22u);
    }

    selfCopy->_cardValidationStatus = 4;
    v25 = 0;
LABEL_117:

    v12 = 0;
    goto LABEL_118;
  }

  if (![v14 count])
  {
    v26 = v14;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFLogGetLogger();
    if (v27)
    {
      v28 = v27;
      v29 = object_getClass(selfCopy);
      v30 = class_isMetaClass(v29);
      v31 = object_getClassName(selfCopy);
      v161 = sel_getName(a2);
      v32 = 45;
      if (v30)
      {
        v32 = 43;
      }

      v28(4, "%c[%{public}s %{public}s]:%i Script is empty", v32, v31, v161, 160);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v33 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = object_getClass(selfCopy);
      if (class_isMetaClass(v34))
      {
        v35 = 43;
      }

      else
      {
        v35 = 45;
      }

      *buf = 67109890;
      v194 = v35;
      v195 = 2082;
      v196 = object_getClassName(selfCopy);
      v197 = 2082;
      v198 = sel_getName(a2);
      v199 = 1024;
      v200 = 160;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Script is empty", buf, 0x22u);
    }

    v14 = v26;
  }

  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  v36 = v14;
  v37 = [v36 countByEnumeratingWithState:&v185 objects:v208 count:16];
  if (!v37)
  {
    goto LABEL_95;
  }

  v38 = *v186;
  v174 = v14;
  v175 = v13;
  v172 = v4;
  v173 = v36;
  v169 = *v186;
  while (2)
  {
    v39 = 0;
    v170 = v37;
    do
    {
      if (*v186 != v38)
      {
        v40 = v39;
        objc_enumerationMutation(v36);
        v39 = v40;
      }

      v171 = v39;
      v41 = *(*(&v185 + 1) + 8 * v39);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v42 = NFLogGetLogger();
        if (v42)
        {
          v43 = v42;
          v44 = object_getClass(selfCopy);
          v45 = class_isMetaClass(v44);
          v46 = object_getClassName(selfCopy);
          v47 = sel_getName(a2);
          v165 = objc_opt_class();
          v48 = 45;
          if (v45)
          {
            v48 = 43;
          }

          v43(3, "%c[%{public}s %{public}s]:%i Skipping invalid entry %{public}@", v48, v46, v47, 167, v165);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v49 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v50 = object_getClass(selfCopy);
          if (class_isMetaClass(v50))
          {
            v51 = 43;
          }

          else
          {
            v51 = 45;
          }

          v52 = object_getClassName(selfCopy);
          v53 = sel_getName(a2);
          v54 = objc_opt_class();
          *buf = 67110146;
          v194 = v51;
          v195 = 2082;
          v196 = v52;
          v197 = 2082;
          v198 = v53;
          v199 = 1024;
          v200 = 167;
          v201 = 2114;
          v202 = v54;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Skipping invalid entry %{public}@", buf, 0x2Cu);
        }
      }

      v180 = [v41 NF_stringForKey:@"command"];
      if (!v180)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v134 = NFLogGetLogger();
        if (v134)
        {
          v135 = v134;
          v136 = object_getClass(selfCopy);
          v137 = class_isMetaClass(v136);
          v138 = object_getClassName(selfCopy);
          v163 = sel_getName(a2);
          v139 = 45;
          if (v137)
          {
            v139 = 43;
          }

          v135(3, "%c[%{public}s %{public}s]:%i Invalid Command APDU. Bailing out now.", v139, v138, v163, 172);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v140 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
        {
          v141 = object_getClass(selfCopy);
          if (class_isMetaClass(v141))
          {
            v142 = 43;
          }

          else
          {
            v142 = 45;
          }

          v143 = object_getClassName(selfCopy);
          v144 = sel_getName(a2);
          *buf = 67109890;
          v194 = v142;
          v195 = 2082;
          v196 = v143;
          v197 = 2082;
          v198 = v144;
          v199 = 1024;
          v200 = 172;
          _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid Command APDU. Bailing out now.", buf, 0x22u);
        }

        selfCopy->_cardValidationStatus = 4;
        goto LABEL_141;
      }

      v55 = [v41 NF_arrayForKey:@"commandModifier"];
      v181 = 0u;
      v182 = 0u;
      v183 = 0u;
      v184 = 0u;
      obj = v55;
      v56 = [obj countByEnumeratingWithState:&v181 objects:v207 count:16];
      if (v56)
      {
        v57 = v56;
        v58 = *v182;
        v176 = *v182;
        while (2)
        {
          for (i = 0; i != v57; i = i + 1)
          {
            if (*v182 != v58)
            {
              objc_enumerationMutation(obj);
            }

            v60 = *(*(&v181 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v61 = [v60 NF_dictionaryForKey:@"random"];
              if ([v61 count])
              {
                v62 = [v61 NF_numberForKey:@"length"];

                v63 = v62 == 0;
                if (v62)
                {
                  v64 = [v61 objectForKey:@"length"];
                  integerValue = [v64 integerValue];
                }

                else
                {
                  integerValue = 0;
                }

                v78 = [v61 NF_numberForKey:@"offset"];

                if (v78)
                {
                  v79 = [v61 objectForKey:@"offset"];
                  integerValue2 = [v79 integerValue];

                  if ((integerValue2 & 0x8000000000000000) != 0)
                  {
                    v81 = [v180 length] + integerValue2;
                    if (v81 < 0)
                    {
                      goto LABEL_105;
                    }
                  }

                  else
                  {
                    v81 = integerValue2;
                  }
                }

                else
                {
                  v81 = 0;
                  integerValue2 = 0;
                  v63 = 1;
                }

                if (&integerValue[v81] > [v180 length])
                {
LABEL_105:
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v121 = NFLogGetLogger();
                  v108 = v180;
                  if (v121)
                  {
                    v122 = v121;
                    v123 = object_getClass(selfCopy);
                    v124 = class_isMetaClass(v123);
                    v125 = object_getClassName(selfCopy);
                    v126 = sel_getName(a2);
                    v168 = [v180 length];
                    v158 = v125;
                    v127 = 43;
                    if (!v124)
                    {
                      v127 = 45;
                    }

                    selfCopy = p_isa;
                    v122(3, "%c[%{public}s %{public}s]:%i Validation Error: Invalid commandModificaiton length or offset: startingOffset = %ld, length = %ld, [theStateGenerationScriptApdus length] = %lu", v127, v158, v126, 238, v81, integerValue, v168);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v115 = NFSharedLogGetLogger();
                  v4 = v172;
                  if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
                  {
                    v128 = object_getClass(selfCopy);
                    if (class_isMetaClass(v128))
                    {
                      v129 = 43;
                    }

                    else
                    {
                      v129 = 45;
                    }

                    v130 = object_getClassName(selfCopy);
                    v131 = sel_getName(a2);
                    v132 = [v180 length];
                    *buf = 67110658;
                    v194 = v129;
                    v195 = 2082;
                    v196 = v130;
                    v197 = 2082;
                    v198 = v131;
                    selfCopy = p_isa;
                    v199 = 1024;
                    v200 = 238;
                    v201 = 2048;
                    v202 = v81;
                    v203 = 2048;
                    v204 = integerValue;
                    v205 = 2048;
                    v206 = v132;
LABEL_114:
                    _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Validation Error: Invalid commandModificaiton length or offset: startingOffset = %ld, length = %ld, [theStateGenerationScriptApdus length] = %lu", buf, 0x40u);
                  }

LABEL_115:
                  v36 = v173;
                  v25 = v174;

                  selfCopy->_cardValidationStatus = 4;
                  goto LABEL_116;
                }

                v82 = [v61 NF_numberForKey:@"min"];

                if (v82)
                {
                  v83 = [v61 objectForKey:@"min"];
                  intValue = [v83 intValue];
                }

                else
                {
                  intValue = 0;
                  v63 = 1;
                }

                v85 = [v61 NF_numberForKey:@"max"];

                if (!v85 || (-[NSObject objectForKey:](v61, "objectForKey:", @"max"), v86 = objc_claimAutoreleasedReturnValue(), v87 = [v86 intValue], v86, selfCopy = p_isa, v63))
                {
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v107 = NFLogGetLogger();
                  v108 = v180;
                  if (v107)
                  {
                    v109 = v107;
                    v110 = object_getClass(selfCopy);
                    v111 = class_isMetaClass(v110);
                    v112 = object_getClassName(selfCopy);
                    v113 = sel_getName(a2);
                    v167 = [v180 length];
                    v157 = v112;
                    v114 = 43;
                    if (!v111)
                    {
                      v114 = 45;
                    }

                    selfCopy = p_isa;
                    v109(3, "%c[%{public}s %{public}s]:%i Validation Error: Invalid commandModificaiton length or offset: startingOffset = %ld, length = %ld, [theStateGenerationScriptApdus length] = %lu", v114, v157, v113, 227, v81, integerValue, v167);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v115 = NFSharedLogGetLogger();
                  v4 = v172;
                  if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
                  {
                    v116 = object_getClass(selfCopy);
                    if (class_isMetaClass(v116))
                    {
                      v117 = 43;
                    }

                    else
                    {
                      v117 = 45;
                    }

                    v118 = object_getClassName(selfCopy);
                    v119 = sel_getName(a2);
                    v120 = [v180 length];
                    *buf = 67110658;
                    v194 = v117;
                    v195 = 2082;
                    v196 = v118;
                    v197 = 2082;
                    v198 = v119;
                    selfCopy = p_isa;
                    v199 = 1024;
                    v200 = 227;
                    v201 = 2048;
                    v202 = v81;
                    v203 = 2048;
                    v204 = integerValue;
                    v205 = 2048;
                    v206 = v120;
                    goto LABEL_114;
                  }

                  goto LABEL_115;
                }

                v88 = [[NSString alloc] initWithFormat:@"%04X", objc_msgSend(p_isa, "_generateRandomNumber:endingWith:", intValue, v87)];
                v89 = [v180 stringByReplacingCharactersInRange:integerValue2 withString:{integerValue, v88}];

                v180 = v89;
                v58 = v176;
              }
            }

            else
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v66 = NFLogGetLogger();
              if (v66)
              {
                v67 = v66;
                v68 = object_getClass(selfCopy);
                v69 = class_isMetaClass(v68);
                v70 = object_getClassName(selfCopy);
                v71 = sel_getName(a2);
                v166 = objc_opt_class();
                v72 = 45;
                if (v69)
                {
                  v72 = 43;
                }

                v67(3, "%c[%{public}s %{public}s]:%i Element expected to be Dictionary, got %{public}@", v72, v70, v71, 184, v166);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v61 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
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
                v77 = objc_opt_class();
                *buf = 67110146;
                v194 = v74;
                v195 = 2082;
                v196 = v75;
                v197 = 2082;
                v198 = v76;
                v199 = 1024;
                v200 = 184;
                v201 = 2114;
                v202 = v77;
                _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Element expected to be Dictionary, got %{public}@", buf, 0x2Cu);
              }
            }
          }

          v57 = [obj countByEnumeratingWithState:&v181 objects:v207 count:16];
          if (v57)
          {
            continue;
          }

          break;
        }
      }

      v90 = [NSData NF_dataWithHexString:v180];
      if (![v90 length])
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v145 = NFLogGetLogger();
        v4 = v172;
        if (v145)
        {
          v146 = v145;
          v147 = object_getClass(selfCopy);
          v148 = class_isMetaClass(v147);
          v149 = object_getClassName(selfCopy);
          v164 = sel_getName(a2);
          v150 = 45;
          if (v148)
          {
            v150 = 43;
          }

          v159 = v149;
          selfCopy = p_isa;
          v146(3, "%c[%{public}s %{public}s]:%i Invalid Command APDU. Bailing out now.", v150, v159, v164, 247);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v151 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
        {
          v152 = object_getClass(selfCopy);
          if (class_isMetaClass(v152))
          {
            v153 = 43;
          }

          else
          {
            v153 = 45;
          }

          v154 = object_getClassName(selfCopy);
          v155 = sel_getName(a2);
          *buf = 67109890;
          v194 = v153;
          v195 = 2082;
          v196 = v154;
          v197 = 2082;
          v198 = v155;
          v199 = 1024;
          v200 = 247;
          _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid Command APDU. Bailing out now.", buf, 0x22u);
        }

        selfCopy->_cardValidationStatus = 4;
LABEL_141:
        v36 = v173;
        v25 = v174;
LABEL_116:

        v13 = v175;
        goto LABEL_117;
      }

      v91 = [(NFReaderSession *)selfCopy->_readerSession transceive:v90];
      nF_asHexString = [v91 NF_asHexString];
      v93 = nF_asHexString;
      v4 = v172;
      if (nF_asHexString)
      {
        v94 = v180;
        if (v180)
        {
          v191[0] = @"command";
          v191[1] = @"response";
          v192[0] = v180;
          v192[1] = nF_asHexString;
          v95 = [NSDictionary dictionaryWithObjects:v192 forKeys:v191 count:2];
          [v175 addObject:v95];
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v96 = NFLogGetLogger();
        if (v96)
        {
          v97 = v96;
          v98 = object_getClass(selfCopy);
          v99 = class_isMetaClass(v98);
          v100 = object_getClassName(selfCopy);
          v162 = sel_getName(a2);
          v101 = 45;
          if (v99)
          {
            v101 = 43;
          }

          v156 = v100;
          selfCopy = p_isa;
          v97(3, "%c[%{public}s %{public}s]:%i Invalid Response APDU. Bailing out now.", v101, v156, v162, 255);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v102 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
        {
          v103 = object_getClass(selfCopy);
          if (class_isMetaClass(v103))
          {
            v104 = 43;
          }

          else
          {
            v104 = 45;
          }

          v105 = object_getClassName(selfCopy);
          v106 = sel_getName(a2);
          *buf = 67109890;
          v194 = v104;
          v195 = 2082;
          v196 = v105;
          v197 = 2082;
          v198 = v106;
          v199 = 1024;
          v200 = 255;
          _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid Response APDU. Bailing out now.", buf, 0x22u);
        }

        selfCopy->_cardValidationStatus = 5;
        v94 = v180;
      }

      v36 = v173;
      v25 = v174;
      if (!v93)
      {
        goto LABEL_116;
      }

      v39 = v171 + 1;
      v13 = v175;
      v38 = v169;
    }

    while ((v171 + 1) != v170);
    v37 = [v173 countByEnumeratingWithState:&v185 objects:v208 count:16];
    if (v37)
    {
      continue;
    }

    break;
  }

LABEL_95:

  v189 = @"data";
  v190 = v13;
  v12 = [NSDictionary dictionaryWithObjects:&v190 forKeys:&v189 count:1];

LABEL_118:

  return v12;
}

- (BOOL)_validateCardForFelica
{
  if ([(NFTag *)self->_tag technology]!= 4)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v24 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      technology = [(NFTag *)self->_tag technology];
      v29 = 45;
      if (isMetaClass)
      {
        v29 = 43;
      }

      v24(4, "%c[%{public}s %{public}s]:%i Unsupported tag, technology=%d", v29, ClassName, Name, 280, technology);
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

      v33 = object_getClassName(self);
      v34 = sel_getName(a2);
      technology2 = [(NFTag *)self->_tag technology];
      *buf = 67110146;
      v101 = v32;
      v102 = 2082;
      v103 = v33;
      v104 = 2082;
      v105 = v34;
      v106 = 1024;
      v107 = 280;
      v108 = 1024;
      v109 = technology2;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unsupported tag, technology=%d", buf, 0x28u);
    }

    v21 = 0;
    self->_cardValidationStatus = 2;
    return v21;
  }

  _getSessionSystemCode = [(NFRemoteAdminReaderSession *)self _getSessionSystemCode];
  if (!_getSessionSystemCode)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v46 = NFLogGetLogger();
    if (v46)
    {
      v47 = v46;
      v48 = object_getClass(self);
      v49 = class_isMetaClass(v48);
      v50 = object_getClassName(self);
      v75 = sel_getName(a2);
      v51 = 45;
      if (v49)
      {
        v51 = 43;
      }

      v47(4, "%c[%{public}s %{public}s]:%i Missing system code definition", v51, v50, v75, 287);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v52 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
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
      *buf = 67109890;
      v101 = v54;
      v102 = 2082;
      v103 = v55;
      v104 = 2082;
      v105 = v56;
      v106 = 1024;
      v107 = 287;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing system code definition", buf, 0x22u);
    }

    v21 = 0;
    v22 = 10;
    goto LABEL_52;
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  allSystemCodes = [(NFTag *)self->_tag allSystemCodes];
  v6 = [allSystemCodes countByEnumeratingWithState:&v93 objects:v99 count:16];
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = v6;
  v8 = *v94;
  while (2)
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v94 != v8)
      {
        objc_enumerationMutation(allSystemCodes);
      }

      if ([*(*(&v93 + 1) + 8 * i) isEqualToData:_getSessionSystemCode])
      {

        v36 = [NSData NF_dataWithHexString:@"FFFF"];
        _getRequireServiceV1List = [(NFRemoteAdminReaderSession *)self _getRequireServiceV1List];
        if (![_getRequireServiceV1List count])
        {
LABEL_67:
          self->_cardValidationStatus = 14;
          v21 = 1;
LABEL_79:

          goto LABEL_80;
        }

        readerSession = self->_readerSession;
        v92 = 0;
        v39 = [(NFReaderSession *)readerSession felicaRequestService:_getRequireServiceV1List error:&v92];
        v40 = v92;
        if (v40)
        {
LABEL_54:
          v57 = self->_readerSession;
          v87 = v40;
          v58 = [(NFReaderSession *)v57 felicaRequestService:_getRequireServiceV1List forSystemCode:_getSessionSystemCode error:&v87];
          v59 = v87;

          if (v59)
          {
            self->_cardValidationStatus = 12;
LABEL_78:

            v21 = 0;
            goto LABEL_79;
          }

          v81 = _getRequireServiceV1List;
          v82 = v39;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v80 = v58;
          v41 = v58;
          v60 = [v41 countByEnumeratingWithState:&v83 objects:v97 count:16];
          if (v60)
          {
            v61 = v60;
            v62 = *v84;
            while (2)
            {
              for (j = 0; j != v61; j = j + 1)
              {
                if (*v84 != v62)
                {
                  objc_enumerationMutation(v41);
                }

                if ([*(*(&v83 + 1) + 8 * j) isEqualToData:v36])
                {
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v64 = NFLogGetLogger();
                  if (v64)
                  {
                    v65 = v64;
                    v66 = object_getClass(self);
                    v78 = class_isMetaClass(v66);
                    v67 = object_getClassName(self);
                    v76 = sel_getName(a2);
                    v68 = 45;
                    if (v78)
                    {
                      v68 = 43;
                    }

                    v65(4, "%c[%{public}s %{public}s]:%i Require service not found", v68, v67, v76, 336);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v69 = NFSharedLogGetLogger();
                  v58 = v80;
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

                    v79 = object_getClassName(self);
                    v72 = sel_getName(a2);
                    *buf = 67109890;
                    v101 = v71;
                    v102 = 2082;
                    v103 = v79;
                    v104 = 2082;
                    v105 = v72;
                    v106 = 1024;
                    v107 = 336;
                    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Require service not found", buf, 0x22u);
                  }

                  self->_cardValidationStatus = 13;
                  _getRequireServiceV1List = v81;
                  v39 = v82;
                  goto LABEL_78;
                }
              }

              v61 = [v41 countByEnumeratingWithState:&v83 objects:v97 count:16];
              if (v61)
              {
                continue;
              }

              break;
            }
          }
        }

        else
        {
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v82 = v39;
          v41 = v39;
          v42 = [v41 countByEnumeratingWithState:&v88 objects:v98 count:16];
          if (!v42)
          {
LABEL_66:

            goto LABEL_67;
          }

          v43 = v42;
          v81 = _getRequireServiceV1List;
          v44 = *v89;
          while (2)
          {
            for (k = 0; k != v43; k = k + 1)
            {
              if (*v89 != v44)
              {
                objc_enumerationMutation(v41);
              }

              if ([*(*(&v88 + 1) + 8 * k) isEqualToData:v36])
              {

                _getRequireServiceV1List = v81;
                v39 = v82;
                goto LABEL_54;
              }
            }

            v43 = [v41 countByEnumeratingWithState:&v88 objects:v98 count:16];
            if (v43)
            {
              continue;
            }

            break;
          }
        }

        _getRequireServiceV1List = v81;
        goto LABEL_66;
      }
    }

    v7 = [allSystemCodes countByEnumeratingWithState:&v93 objects:v99 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_11:

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFLogGetLogger();
  if (v10)
  {
    v11 = v10;
    v12 = object_getClass(self);
    v13 = class_isMetaClass(v12);
    v14 = object_getClassName(self);
    v74 = sel_getName(a2);
    v15 = 45;
    if (v13)
    {
      v15 = 43;
    }

    v11(4, "%c[%{public}s %{public}s]:%i Card system code mismatch for the session", v15, v14, v74, 301);
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

    v19 = object_getClassName(self);
    v20 = sel_getName(a2);
    *buf = 67109890;
    v101 = v18;
    v102 = 2082;
    v103 = v19;
    v104 = 2082;
    v105 = v20;
    v106 = 1024;
    v107 = 301;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Card system code mismatch for the session", buf, 0x22u);
  }

  v21 = 0;
  v22 = 11;
LABEL_52:
  self->_cardValidationStatus = v22;
LABEL_80:

  return v21;
}

- (BOOL)_executePreCheckScripts:(id)scripts
{
  scriptsCopy = scripts;
  v6 = [scriptsCopy NF_arrayForKey:@"validateCardScript"];
  v7 = [scriptsCopy valueForKey:@"validateCardScript"];

  if (v7 && !v6)
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
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v9(3, "%c[%{public}s %{public}s]:%i Invalid check script", v13, ClassName, Name, 356);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

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
    v152 = v16;
    v153 = 2082;
    v154 = object_getClassName(self);
    v155 = 2082;
    v156 = sel_getName(a2);
    v157 = 1024;
    v158 = 356;
    v17 = "%c[%{public}s %{public}s]:%i Invalid check script";
    goto LABEL_22;
  }

  if ([v6 count])
  {
    goto LABEL_24;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v18 = NFLogGetLogger();
  if (v18)
  {
    v19 = v18;
    v20 = object_getClass(self);
    v21 = class_isMetaClass(v20);
    v22 = object_getClassName(self);
    v125 = sel_getName(a2);
    v23 = 45;
    if (v21)
    {
      v23 = 43;
    }

    v19(4, "%c[%{public}s %{public}s]:%i Script is empty", v23, v22, v125, 358);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
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

    *buf = 67109890;
    v152 = v25;
    v153 = 2082;
    v154 = object_getClassName(self);
    v155 = 2082;
    v156 = sel_getName(a2);
    v157 = 1024;
    v158 = 358;
    v17 = "%c[%{public}s %{public}s]:%i Script is empty";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v17, buf, 0x22u);
  }

LABEL_23:

LABEL_24:
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v26 = v6;
  v140 = [v26 countByEnumeratingWithState:&v147 objects:v166 count:16];
  if (!v140)
  {
    v60 = 1;
    goto LABEL_98;
  }

  v141 = *v148;
  v138 = v26;
  sel = a2;
  v134 = scriptsCopy;
  selfCopy = self;
LABEL_26:
  v27 = 0;
LABEL_27:
  if (*v148 != v141)
  {
    objc_enumerationMutation(v26);
  }

  v28 = *(*(&v147 + 1) + 8 * v27);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v47 = NFLogGetLogger();
    if (v47)
    {
      v48 = v47;
      v49 = object_getClass(self);
      v50 = class_isMetaClass(v49);
      v51 = object_getClassName(self);
      v52 = sel_getName(a2);
      v130 = objc_opt_class();
      v126 = v52;
      a2 = sel;
      v53 = 45;
      if (v50)
      {
        v53 = 43;
      }

      v48(3, "%c[%{public}s %{public}s]:%i Invalid element type in array, got %{public}@", v53, v51, v126, 363, v130);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v29 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
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

      v56 = v29;
      v57 = object_getClassName(self);
      v58 = sel_getName(a2);
      v59 = objc_opt_class();
      *buf = 67110146;
      v152 = v55;
      v26 = v138;
      v153 = 2082;
      v154 = v57;
      v29 = v56;
      v155 = 2082;
      v156 = v58;
      v157 = 1024;
      v158 = 363;
      v159 = 2114;
      v160 = v59;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid element type in array, got %{public}@", buf, 0x2Cu);
    }

    goto LABEL_60;
  }

  v29 = [v28 NF_stringForKey:@"command"];
  v30 = [NSData NF_dataWithHexString:v29];
  if (![v30 length])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v101 = NFLogGetLogger();
    if (v101)
    {
      v102 = v101;
      v103 = object_getClass(self);
      v104 = class_isMetaClass(v103);
      v122 = object_getClassName(self);
      v128 = sel_getName(a2);
      v105 = 45;
      if (v104)
      {
        v105 = 43;
      }

      v26 = v138;
      v102(3, "%c[%{public}s %{public}s]:%i Validation Error: Invalid command apdu %{public}@. Bailing out", v105, v122, v128, 372, v30);
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
      v110 = sel_getName(a2);
      *buf = 67110146;
      v152 = v108;
      v26 = v138;
      v153 = 2082;
      v154 = v109;
      v155 = 2082;
      v156 = v110;
      v157 = 1024;
      v158 = 372;
      v159 = 2114;
      v160 = v30;
      _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Validation Error: Invalid command apdu %{public}@. Bailing out", buf, 0x2Cu);
    }

    self->_cardValidationStatus = 4;
    goto LABEL_97;
  }

  v137 = v30;
  v31 = [(NFReaderSession *)self->_readerSession transceive:v30];
  if (v31)
  {
    v136 = v31;
    nF_asHexString = [v31 NF_asHexString];
    v33 = [v28 NF_arrayForKey:@"filter"];
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    obj = v33;
    v34 = [obj countByEnumeratingWithState:&v143 objects:v165 count:16];
    if (!v34)
    {
      goto LABEL_50;
    }

    v35 = v34;
    v36 = *v144;
    v133 = v29;
LABEL_34:
    v37 = 0;
    while (1)
    {
      if (*v144 != v36)
      {
        objc_enumerationMutation(obj);
      }

      v38 = *(*(&v143 + 1) + 8 * v37);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      integerValue = [v38 NF_numberForKey:@"length"];

      if (integerValue)
      {
        v40 = [v38 objectForKey:@"length"];
        integerValue = [v40 integerValue];
      }

      integerValue2 = [v38 NF_numberForKey:@"offset"];

      if (integerValue2)
      {
        v42 = [v38 objectForKey:@"offset"];
        integerValue2 = [v42 integerValue];
      }

      v43 = [v38 NF_arrayForKey:@"value"];
      v44 = [v43 valueForKey:@"uppercaseString"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v44 = 0;
      }

      if (integerValue2 < 0 && (integerValue2 += [nF_asHexString length], integerValue2 < 0) || &integerValue[integerValue2] > objc_msgSend(nF_asHexString, "length"))
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v61 = NFLogGetLogger();
        if (v61)
        {
          v62 = v61;
          v63 = object_getClass(selfCopy);
          v64 = class_isMetaClass(v63);
          v65 = object_getClassName(selfCopy);
          v66 = sel_getName(sel);
          v132 = [nF_asHexString length];
          v67 = 43;
          if (!v64)
          {
            v67 = 45;
          }

          v62(3, "%c[%{public}s %{public}s]:%i Validation Error: Invalid filter length or offset: startingOffset = %ld, length = %ld, [rResponse length] = %lu", v67, v65, v66, 436, integerValue2, integerValue, v132);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v68 = NFSharedLogGetLogger();
        v69 = selfCopy;
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          v70 = object_getClass(selfCopy);
          if (class_isMetaClass(v70))
          {
            v71 = 43;
          }

          else
          {
            v71 = 45;
          }

          v72 = object_getClassName(selfCopy);
          v73 = sel_getName(sel);
          v74 = [nF_asHexString length];
          *buf = 67110658;
          v152 = v71;
          v153 = 2082;
          v154 = v72;
          v155 = 2082;
          v156 = v73;
          v69 = selfCopy;
          v157 = 1024;
          v158 = 436;
          v159 = 2048;
          v160 = integerValue2;
          v161 = 2048;
          v162 = integerValue;
          v163 = 2048;
          v164 = v74;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Validation Error: Invalid filter length or offset: startingOffset = %ld, length = %ld, [rResponse length] = %lu", buf, 0x40u);
        }

        v69->_cardValidationStatus = 6;
LABEL_94:

LABEL_95:
        v29 = v133;
        scriptsCopy = v134;
        v26 = v138;
        goto LABEL_96;
      }

      v45 = [nF_asHexString substringWithRange:{integerValue2, integerValue}];
      uppercaseString = [v45 uppercaseString];

      if (([v44 containsObject:uppercaseString] & 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v89 = NFLogGetLogger();
        if (v89)
        {
          v90 = v89;
          v91 = object_getClass(selfCopy);
          v92 = class_isMetaClass(v91);
          v93 = object_getClassName(selfCopy);
          v127 = sel_getName(sel);
          v94 = 45;
          if (v92)
          {
            v94 = 43;
          }

          v90(3, "%c[%{public}s %{public}s]:%i Validation Error: retrieved Value not found in the allowed list", v94, v93, v127, 429);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v95 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
        {
          v96 = object_getClass(selfCopy);
          if (class_isMetaClass(v96))
          {
            v97 = 43;
          }

          else
          {
            v97 = 45;
          }

          v98 = object_getClassName(selfCopy);
          v99 = sel_getName(sel);
          *buf = 67109890;
          v152 = v97;
          v153 = 2082;
          v154 = v98;
          v155 = 2082;
          v156 = v99;
          v157 = 1024;
          v158 = 429;
          _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Validation Error: retrieved Value not found in the allowed list", buf, 0x22u);
        }

        selfCopy->_cardValidationStatus = 3;
        goto LABEL_94;
      }

      if (v35 == ++v37)
      {
        v35 = [obj countByEnumeratingWithState:&v143 objects:v165 count:16];
        v26 = v138;
        v29 = v133;
        if (v35)
        {
          goto LABEL_34;
        }

LABEL_50:

        scriptsCopy = v134;
        self = selfCopy;
        a2 = sel;
LABEL_60:

        if (++v27 == v140)
        {
          v60 = 1;
          v140 = [v26 countByEnumeratingWithState:&v147 objects:v166 count:16];
          if (!v140)
          {
            goto LABEL_98;
          }

          goto LABEL_26;
        }

        goto LABEL_27;
      }
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v75 = NFLogGetLogger();
    if (v75)
    {
      v76 = v75;
      v77 = object_getClass(selfCopy);
      v78 = class_isMetaClass(v77);
      v79 = object_getClassName(selfCopy);
      v80 = sel_getName(sel);
      v131 = objc_opt_class();
      v81 = 45;
      if (v78)
      {
        v81 = 43;
      }

      v76(3, "%c[%{public}s %{public}s]:%i Invalid type in de-serialization %{public}@", v81, v79, v80, 392, v131);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v82 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      v83 = object_getClass(selfCopy);
      if (class_isMetaClass(v83))
      {
        v84 = 43;
      }

      else
      {
        v84 = 45;
      }

      v85 = object_getClassName(selfCopy);
      v86 = sel_getName(sel);
      v87 = objc_opt_class();
      *buf = 67110146;
      v152 = v84;
      v153 = 2082;
      v154 = v85;
      v155 = 2082;
      v156 = v86;
      v157 = 1024;
      v158 = 392;
      v159 = 2114;
      v160 = v87;
      v88 = v87;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid type in de-serialization %{public}@", buf, 0x2Cu);
    }

    selfCopy->_cardValidationStatus = 9;
    goto LABEL_95;
  }

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

    v123 = v115;
    v26 = v138;
    v112(3, "%c[%{public}s %{public}s]:%i Invalid Response APDU. Bailing out now.", v116, v123, v129, 379);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v117 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
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
    v152 = v119;
    v26 = v138;
    v153 = 2082;
    v154 = v120;
    v155 = 2082;
    v156 = v121;
    v157 = 1024;
    v158 = 379;
    _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid Response APDU. Bailing out now.", buf, 0x22u);
  }

  self->_cardValidationStatus = 5;
LABEL_96:
  v30 = v137;
LABEL_97:

  v60 = 0;
LABEL_98:

  return v60;
}

- (BOOL)_validateCardForMercury:(id)mercury
{
  mercuryCopy = mercury;
  v6 = [mercuryCopy NF_stringForKey:@"technology"];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &stru_100055408;
  }

  if (([(NFTag *)self->_tag technology]& 1) != 0)
  {
    v8 = @"A";
  }

  else if (([(NFTag *)self->_tag technology]& 2) != 0)
  {
    v8 = @"B";
  }

  else if (([(NFTag *)self->_tag technology]& 4) != 0)
  {
    v8 = @"F";
  }

  else
  {
    v8 = &stru_100055408;
  }

  v9 = [(__CFString *)v7 containsString:v8];
  if (v9)
  {
    if (![(NFRemoteAdminReaderSession *)self _executePreCheckScripts:mercuryCopy])
    {
      v9 = 0;
      goto LABEL_26;
    }

    v10 = 0;
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
      v16 = 45;
      if (isMetaClass)
      {
        v16 = 43;
      }

      v12(3, "%c[%{public}s %{public}s]:%i Server supplied technology %{public}@ does not match with the Tag Technology %{public}@. Exiting now!", v16, ClassName, Name, 463, v7, v8);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
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

      *buf = 67110402;
      v23 = v19;
      v24 = 2082;
      v25 = object_getClassName(self);
      v26 = 2082;
      v27 = sel_getName(a2);
      v28 = 1024;
      v29 = 463;
      v30 = 2114;
      v31 = v7;
      v32 = 2114;
      v33 = v8;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Server supplied technology %{public}@ does not match with the Tag Technology %{public}@. Exiting now!", buf, 0x36u);
    }

    v10 = 2;
  }

  self->_cardValidationStatus = v10;
LABEL_26:

  return v9;
}

- (BOOL)_validateCardForMiFare:(id)fare
{
  fareCopy = fare;
  v5 = [fareCopy NF_stringForKey:@"technology"];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v5 = &stru_100055408;
    }
  }

  if (([(NFTag *)self->_tag technology]& 1) != 0)
  {
    v6 = @"A";
  }

  else
  {
    v6 = &stru_100055408;
  }

  v71 = v5;
  if (([(__CFString *)v5 containsString:v6]& 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v23 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v27 = 45;
      if (isMetaClass)
      {
        v27 = 43;
      }

      v64 = ClassName;
      v5 = v71;
      v23(3, "%c[%{public}s %{public}s]:%i Server supplied technology %{public}@ does not match with the Tag Technology %{public}@. Exiting now!", v27, v64, Name, 492, v71, v6);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
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

      *buf = 67110402;
      v81 = v30;
      v82 = 2082;
      v83 = object_getClassName(self);
      v84 = 2082;
      v85 = sel_getName(a2);
      v86 = 1024;
      v87 = 492;
      v88 = 2114;
      v89 = v5;
      v90 = 2114;
      v91 = v6;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Server supplied technology %{public}@ does not match with the Tag Technology %{public}@. Exiting now!", buf, 0x36u);
    }

    v31 = 0;
    self->_cardValidationStatus = 2;
    goto LABEL_66;
  }

  v7 = [fareCopy NF_arrayForKey:@"tagType"];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v8 = NFLogGetLogger();
  v70 = fareCopy;
  if (v8)
  {
    v9 = v8;
    v10 = object_getClass(self);
    v11 = class_isMetaClass(v10);
    v12 = object_getClassName(self);
    v13 = sel_getName(a2);
    type = [(NFTag *)self->_tag type];
    v14 = 45;
    if (v11)
    {
      v14 = 43;
    }

    v9(6, "%c[%{public}s %{public}s]:%i Tag Type %d found", v14, v12, v13, 499, type);
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
    type2 = [(NFTag *)self->_tag type];
    *buf = 67110146;
    v81 = v17;
    v82 = 2082;
    v83 = v18;
    v84 = 2082;
    v85 = v19;
    v86 = 1024;
    v87 = 499;
    v88 = 1024;
    LODWORD(v89) = type2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Tag Type %d found", buf, 0x28u);
  }

  if ([(NFTag *)self->_tag type]== 15)
  {
    v21 = @"MiFarePlus";
  }

  else
  {
    type3 = [(NFTag *)self->_tag type];
    v21 = @"Unknown";
    if (type3 == 16)
    {
      v21 = @"DesFire";
    }
  }

  v72 = v21;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = v7;
  v33 = [obj countByEnumeratingWithState:&v75 objects:v79 count:16];
  if (!v33)
  {
LABEL_51:

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v51 = NFLogGetLogger();
    if (v51)
    {
      v52 = v51;
      v53 = object_getClass(self);
      v54 = class_isMetaClass(v53);
      v65 = object_getClassName(self);
      v67 = sel_getName(a2);
      v55 = 45;
      if (v54)
      {
        v55 = 43;
      }

      v52(6, "%c[%{public}s %{public}s]:%i Unsupported Tag Type %{public}@ found", v55, v65, v67, 521, v72);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v56 = NFSharedLogGetLogger();
    v5 = v71;
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
      *buf = 67110146;
      v81 = v58;
      v82 = 2082;
      v83 = v59;
      v84 = 2082;
      v85 = v60;
      v86 = 1024;
      v87 = 521;
      v88 = 2114;
      v89 = v72;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Unsupported Tag Type %{public}@ found", buf, 0x2Cu);
    }

    v31 = 0;
    v61 = 15;
    fareCopy = v70;
LABEL_63:
    self->_cardValidationStatus = v61;
    goto LABEL_65;
  }

  v34 = v33;
  v35 = *v76;
LABEL_33:
  v36 = 0;
  while (1)
  {
    if (*v76 != v35)
    {
      objc_enumerationMutation(obj);
    }

    v37 = *(*(&v75 + 1) + 8 * v36);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v38 = NFLogGetLogger();
      if (v38)
      {
        v39 = v38;
        v40 = object_getClass(self);
        v41 = class_isMetaClass(v40);
        v42 = object_getClassName(self);
        v43 = sel_getName(a2);
        v69 = objc_opt_class();
        v44 = 45;
        if (v41)
        {
          v44 = 43;
        }

        v39(3, "%c[%{public}s %{public}s]:%i Invalid type string, got %{public}@", v44, v42, v43, 513, v69);
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
        v50 = objc_opt_class();
        *buf = 67110146;
        v81 = v47;
        v82 = 2082;
        v83 = v48;
        v84 = 2082;
        v85 = v49;
        v86 = 1024;
        v87 = 513;
        v88 = 2114;
        v89 = v50;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid type string, got %{public}@", buf, 0x2Cu);
      }

      goto LABEL_49;
    }

    if (![v37 caseInsensitiveCompare:v72])
    {
      break;
    }

LABEL_49:
    if (v34 == ++v36)
    {
      v34 = [obj countByEnumeratingWithState:&v75 objects:v79 count:16];
      if (v34)
      {
        goto LABEL_33;
      }

      goto LABEL_51;
    }
  }

  fareCopy = v70;
  if ([(NFRemoteAdminReaderSession *)self _executePreCheckScripts:v70])
  {
    v61 = 0;
    v31 = 1;
    v5 = v71;
    goto LABEL_63;
  }

  v31 = 0;
  v5 = v71;
LABEL_65:

LABEL_66:
  return v31;
}

- (BOOL)_validateCard
{
  if (self->_readerSession)
  {
    sessionCardServiceInfo = [(NFRemoteAdminReaderSession *)self sessionCardServiceInfo];
    v5 = [sessionCardServiceInfo objectForKeyedSubscript:@"version"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) != 0 && ([sessionCardServiceInfo objectForKeyedSubscript:@"version"], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "intValue"), v7, v8 > 2))
    {
      if (v8 == 4)
      {
        _validateCardForFelica = [(NFRemoteAdminReaderSession *)self _validateCardForMiFare:sessionCardServiceInfo];
      }

      else
      {
        if (v8 != 3)
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
            v25 = 45;
            if (isMetaClass)
            {
              v25 = 43;
            }

            v22(3, "%c[%{public}s %{public}s]:%i cardServiceInfo.version: %d is > 4. Invalid version.", v25, ClassName, Name, 570, v8);
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

            *buf = 67110146;
            v33 = v28;
            v34 = 2082;
            v35 = object_getClassName(self);
            v36 = 2082;
            v37 = sel_getName(a2);
            v38 = 1024;
            v39 = 570;
            v40 = 1024;
            v41 = v8;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i cardServiceInfo.version: %d is > 4. Invalid version.", buf, 0x28u);
          }

          v10 = 0;
          goto LABEL_6;
        }

        _validateCardForFelica = [(NFRemoteAdminReaderSession *)self _validateCardForMercury:sessionCardServiceInfo];
      }
    }

    else
    {
      _validateCardForFelica = [(NFRemoteAdminReaderSession *)self _validateCardForFelica];
    }

    v10 = _validateCardForFelica;
LABEL_6:

    return v10;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFLogGetLogger();
  if (v11)
  {
    v12 = v11;
    v13 = object_getClass(self);
    v14 = class_isMetaClass(v13);
    v15 = object_getClassName(self);
    v30 = sel_getName(a2);
    v16 = 45;
    if (v14)
    {
      v16 = 43;
    }

    v12(3, "%c[%{public}s %{public}s]:%i Reader Session does not exist. Exiting now!", v16, v15, v30, 544);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v17 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
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

    *buf = 67109890;
    v33 = v19;
    v34 = 2082;
    v35 = object_getClassName(self);
    v36 = 2082;
    v37 = sel_getName(a2);
    v38 = 1024;
    v39 = 544;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Reader Session does not exist. Exiting now!", buf, 0x22u);
  }

  v10 = 0;
  self->_cardValidationStatus = 8;
  return v10;
}

- (id)_getRequireServiceV1List
{
  sessionCardServiceInfo = [(NFRemoteAdminReaderSession *)self sessionCardServiceInfo];
  v4 = [sessionCardServiceInfo NF_arrayForKey:@"requiredServicesV1"];
  if (v4 || ([sessionCardServiceInfo NF_arrayForKey:@"areaCodeList"], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v46 = sessionCardServiceInfo;
    v48 = objc_opt_new();
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v49 objects:v63 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
      v11 = *v50;
      for (i = *v50; ; i = *v50)
      {
        if (i != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v49 + 1) + 8 * v9);
        v14 = v10[175];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 length] == 4)
        {
          v15 = [NSData NF_dataWithHexString:v13];
          if (v15)
          {
            [v48 addObject:v15];
          }

          else
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
              v35 = 45;
              if (isMetaClass)
              {
                v35 = 43;
              }

              v31(4, "%c[%{public}s %{public}s]:%i Node data is null", v35, ClassName, Name, 597);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v36 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
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
              v40 = sel_getName(a2);
              *buf = 67109890;
              v54 = v38;
              v10 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
              v55 = 2082;
              v56 = v39;
              v57 = 2082;
              v58 = v40;
              v59 = 1024;
              v60 = 597;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Node data is null", buf, 0x22u);
            }
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *buf = __rev16([v13 unsignedShortValue]);
            v16 = [[NSData alloc] initWithBytes:buf length:2];
            [v48 addObject:v16];
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v17 = NFLogGetLogger();
            if (v17)
            {
              v18 = v17;
              v19 = object_getClass(self);
              v20 = class_isMetaClass(v19);
              v21 = object_getClassName(self);
              v22 = sel_getName(a2);
              v45 = object_getClass(v13);
              v43 = v22;
              v10 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
              v23 = 45;
              if (v20)
              {
                v23 = 43;
              }

              v18(3, "%c[%{public}s %{public}s]:%i Unexpected type, %{public}@", v23, v21, v43, 603, v45);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v16 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
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
              v28 = object_getClass(v13);
              *buf = 67110146;
              v54 = v25;
              v55 = 2082;
              v56 = v26;
              v57 = 2082;
              v58 = v27;
              v10 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
              v59 = 1024;
              v60 = 603;
              v61 = 2114;
              v62 = v28;
              v29 = v28;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected type, %{public}@", buf, 0x2Cu);
            }
          }
        }

        if (++v9 >= v8)
        {
          v41 = [v6 countByEnumeratingWithState:&v49 objects:v63 count:16];
          if (!v41)
          {
            break;
          }

          v8 = v41;
          v9 = 0;
        }
      }
    }

    sessionCardServiceInfo = v46;
  }

  else
  {
    v48 = objc_opt_new();
  }

  return v48;
}

- (id)_getSessionSystemCode
{
  sessionCardServiceInfo = [(NFRemoteAdminReaderSession *)self sessionCardServiceInfo];
  v5 = [sessionCardServiceInfo objectForKeyedSubscript:@"systemCode"];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [NSData NF_dataWithHexString:v5];
LABEL_6:
      v7 = v6;
      goto LABEL_18;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *buf = __rev16([v5 unsignedShortValue]);
      v6 = [[NSData alloc] initWithBytes:buf length:2];
      goto LABEL_6;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v20 = object_getClass(v5);
      v14 = 45;
      if (isMetaClass)
      {
        v14 = 43;
      }

      v9(3, "%c[%{public}s %{public}s]:%i Unexpected type, %{public}@", v14, ClassName, Name, 625, v20);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
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

      *buf = 67110146;
      v22 = v17;
      v23 = 2082;
      v24 = object_getClassName(self);
      v25 = 2082;
      v26 = sel_getName(a2);
      v27 = 1024;
      v28 = 625;
      v29 = 2114;
      v30 = object_getClass(v5);
      v18 = v30;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected type, %{public}@", buf, 0x2Cu);
    }
  }

  v7 = 0;
LABEL_18:

  return v7;
}

- (void)abort:(int64_t)abort
{
  v19.receiver = self;
  v19.super_class = NFRemoteAdminReaderSession;
  [(NFRemoteAdminRedirectSession *)&v19 abort:?];
  dispatch_semaphore_signal(self->_sessionStartSem);
  [(NFRemoteAdminReaderSession *)self _fireCardIngestionStatus:5];
  dispatch_semaphore_signal(self->_tagSem);
  redirectState = [(NFRemoteAdminRedirectSession *)self redirectState];
  v6 = redirectState;
  if (abort == 6)
  {
    cardIngestionStatus = 7;
    self->_cardIngestionStatus = 7;
  }

  else
  {
    cardIngestionStatus = self->_cardIngestionStatus;
    if (cardIngestionStatus == -1)
    {
      cardIngestionStatus = 1;
    }
  }

  stateUpdateOnSessionEndedCallback = [redirectState stateUpdateOnSessionEndedCallback];

  if (stateUpdateOnSessionEndedCallback)
  {
    stateUpdateOnSessionEndedCallback2 = [v6 stateUpdateOnSessionEndedCallback];
    (stateUpdateOnSessionEndedCallback2)[2](stateUpdateOnSessionEndedCallback2, v6, cardIngestionStatus);

    [v6 setStateUpdateOnSessionEndedCallback:0];
  }

  v10 = [NSMutableDictionary alloc];
  v11 = [NSNumber numberWithUnsignedInt:[(NFRemoteAdminReaderSession *)self targetTagType]];
  v12 = [NSNumber numberWithUnsignedInteger:self->_cardValidationStatus];
  v13 = [v10 initWithObjectsAndKeys:{&off_1000572E8, @"state", v11, @"technology", v12, @"cardValidationStatus", 0}];

  if (self->_cardIngestionStatus != -1)
  {
    v14 = [NSNumber numberWithUnsignedInteger:?];
    [v13 setObject:v14 forKeyedSubscript:@"sessionStatus"];
  }

  redirectState2 = [(NFRemoteAdminRedirectSession *)self redirectState];
  spStatusCode = [redirectState2 spStatusCode];

  if (spStatusCode)
  {
    redirectState3 = [(NFRemoteAdminRedirectSession *)self redirectState];
    spStatusCode2 = [redirectState3 spStatusCode];
    [v13 setObject:spStatusCode2 forKey:@"spStatus"];
  }

  [NFReaderModeCardIngestionCALogger postAnalyticsReaderModeCardIngestionSession:v13 prepOnly:0];
}

- (void)_fireCardIngestionStatus:(unint64_t)status
{
  if (self)
  {
    delegate = self->_delegate;
  }

  if (objc_opt_respondsToSelector())
  {
    if (self)
    {
      v6 = self->_delegate;
    }

    else
    {
      v6 = 0;
    }

    [(NFRemoteAdminSessionDelegate *)v6 handleCardIngestionStatus:status];
  }
}

- (void)processNotification:(id)notification
{
  v22.receiver = self;
  v22.super_class = NFRemoteAdminReaderSession;
  notificationCopy = notification;
  [(NFRemoteAdminRedirectSession *)&v22 processNotification:notificationCopy];
  v6 = [notificationCopy NF_stringForKey:@"tokenValue"];

  if ([v6 length])
  {
    if (self)
    {
      delegate = self->_delegate;
    }

    if (objc_opt_respondsToSelector())
    {
      if (self)
      {
        v8 = self->_delegate;
      }

      else
      {
        v8 = 0;
      }

      [(NFRemoteAdminSessionDelegate *)v8 handleCardSessionToken:v6];
    }
  }

  else
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

      v10(3, "%c[%{public}s %{public}s]:%i Invalid token, %{public}@", v13, ClassName, Name, 683, v6);
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
      v24 = v16;
      v25 = 2082;
      v26 = v17;
      v27 = 2082;
      v28 = v18;
      v29 = 1024;
      v30 = 683;
      v31 = 2114;
      v32 = v6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid token, %{public}@", buf, 0x2Cu);
    }
  }

  redirectState = [(NFRemoteAdminRedirectSession *)self redirectState];
  [redirectState setNotification:0];
}

- (id)getNextRequest
{
  sessionCardServiceInfo = [(NFRemoteAdminReaderSession *)self sessionCardServiceInfo];
  v4 = [sessionCardServiceInfo objectForKeyedSubscript:@"version"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = 2;
  if (isKindOfClass)
  {
    v7 = [sessionCardServiceInfo objectForKeyedSubscript:@"version"];
    intValue = [v7 intValue];

    if (intValue <= 3)
    {
      v6 = 2;
    }

    else
    {
      v6 = intValue;
    }

    v9 = intValue == 4;
  }

  else
  {
    v9 = 0;
  }

  redirectState = [(NFRemoteAdminRedirectSession *)self redirectState];
  step = [redirectState step];

  redirectState2 = [(NFRemoteAdminRedirectSession *)self redirectState];
  v13 = redirectState2;
  if (!step)
  {
    redirectResponse = objc_opt_new();
    v17 = [NSNumber numberWithInteger:v6];
    [redirectResponse setObject:v17 forKeyedSubscript:@"kVersion"];

    parameters = [v13 parameters];
    if (parameters)
    {
      parameters2 = [v13 parameters];
      [redirectResponse setObject:parameters2 forKeyedSubscript:@"readerModeParameters"];
    }

    else
    {
      [redirectResponse setObject:&__NSDictionary0__struct forKeyedSubscript:@"readerModeParameters"];
    }

    goto LABEL_16;
  }

  step2 = [redirectState2 step];

  redirectState3 = [(NFRemoteAdminRedirectSession *)self redirectState];
  v13 = redirectState3;
  if (step2 == 2)
  {
    redirectResponse = [redirectState3 redirectResponse];
LABEL_16:

    goto LABEL_17;
  }

  unsentScriptResponse = [redirectState3 unsentScriptResponse];

  if (unsentScriptResponse)
  {
    redirectState4 = [(NFRemoteAdminRedirectSession *)self redirectState];
    redirectResponse = [redirectState4 unsentScriptResponse];
  }

  else
  {
    redirectResponse = objc_opt_new();
    v23 = [NSNumber numberWithInteger:v6];
    [redirectResponse setObject:v23 forKeyedSubscript:@"kVersion"];

    redirectState5 = [(NFRemoteAdminRedirectSession *)self redirectState];
    forwardDataToSP = [redirectState5 forwardDataToSP];

    if (forwardDataToSP)
    {
      redirectState6 = [(NFRemoteAdminRedirectSession *)self redirectState];
      forwardDataToSP2 = [redirectState6 forwardDataToSP];
      [redirectResponse setObject:forwardDataToSP2 forKeyedSubscript:@"forwardData"];
    }

    v28 = objc_opt_new();
    [v28 setObject:@"external" forKeyedSubscript:@"secureElementType"];
    cardContents = self->_cardContents;
    if (cardContents)
    {
      [v28 setObject:cardContents forKeyedSubscript:@"cardContents"];
    }

    if (v9)
    {
      tagID = [(NFTag *)self->_tag tagID];
      nF_asHexString = [tagID NF_asHexString];

      v32 = [(NFTag *)self->_tag sak];
      nF_asHexString2 = [v32 NF_asHexString];

      atqa = [(NFTag *)self->_tag atqa];
      nF_asHexString3 = [atqa NF_asHexString];

      historicalBytes = [(NFTag *)self->_tag historicalBytes];
      nF_asHexString4 = [historicalBytes NF_asHexString];

      if (nF_asHexString && nF_asHexString2 && nF_asHexString3 && nF_asHexString4)
      {
        v39[0] = @"UID";
        v39[1] = @"SAK";
        v40[0] = nF_asHexString;
        v40[1] = nF_asHexString2;
        v39[2] = @"ATQA";
        v39[3] = @"historicalBytes";
        v40[2] = nF_asHexString3;
        v40[3] = nF_asHexString4;
        v38 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:4];
        [v28 setObject:v38 forKeyedSubscript:@"cardTypeAParams"];
      }
    }

    [redirectResponse setObject:v28 forKeyedSubscript:@"SEStateInfo"];
  }

LABEL_17:

  return redirectResponse;
}

- (unint64_t)executeScript:(id)script
{
  scriptCopy = script;
  if (![(NFRemoteAdminRedirectSession *)self aborted])
  {
    [(NFRemoteAdminReaderSession *)self _fireCardIngestionStatus:4];
    v16 = objc_opt_new();
    if (!v16)
    {
      v57 = +[NSAssertionHandler currentHandler];
      [v57 handleFailureInMethod:a2 object:self file:@"NFRemoteAdminReaderSession.m" lineNumber:777 description:@"Out of resources"];
    }

    readerSession = self->_readerSession;
    v62 = 0;
    v18 = [(NFReaderSession *)readerSession runScript:scriptCopy parameters:v16 results:&v62];
    v12 = v62;
    [(NFRemoteAdminRedirectSession *)self setRedirectStepError:v18];
    redirectState = [(NFRemoteAdminRedirectSession *)self redirectState];
    [redirectState setUnsentScriptResponse:v12];

    redirectState2 = [(NFRemoteAdminRedirectSession *)self redirectState];
    performanceMetrics = [redirectState2 performanceMetrics];
    [v16 outTotalAPDUExecutionDuration];
    v23 = v22;
    [performanceMetrics totalAPDUTime];
    [performanceMetrics setTotalAPDUTime:v23 + v24];

    if (v12)
    {
      if ([(NFRemoteAdminRedirectSession *)self redirectStepError]== 28 || [(NFRemoteAdminRedirectSession *)self redirectStepError]== 29)
      {
        [(NFRemoteAdminReaderSession *)self _fireCardIngestionStatus:7];
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v26 = Logger;
          Class = object_getClass(self);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(self);
          Name = sel_getName(a2);
          v30 = 45;
          if (isMetaClass)
          {
            v30 = 43;
          }

          v26(3, "%c[%{public}s %{public}s]:%i C-APDU execution failure", v30, ClassName, Name, 790);
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
          v35 = sel_getName(a2);
          *buf = 67109890;
          v64 = v33;
          v65 = 2082;
          v66 = v34;
          v67 = 2082;
          v68 = v35;
          v69 = 1024;
          v70 = 790;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i C-APDU execution failure", buf, 0x22u);
        }

        v15 = 6;
      }

      else if ([(NFRemoteAdminRedirectSession *)self redirectStepError]== 3)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v37 = NFLogGetLogger();
        if (v37)
        {
          v38 = v37;
          v39 = object_getClass(self);
          v40 = class_isMetaClass(v39);
          v41 = object_getClassName(self);
          v60 = sel_getName(a2);
          v42 = 45;
          if (v40)
          {
            v42 = 43;
          }

          v38(3, "%c[%{public}s %{public}s]:%i Reader session aborted", v42, v41, v60, 792);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v31 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
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
          v64 = v44;
          v65 = 2082;
          v66 = v45;
          v67 = 2082;
          v68 = v46;
          v69 = 1024;
          v70 = 792;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Reader session aborted", buf, 0x22u);
        }

        v15 = 1;
      }

      else
      {
        if ([(NFRemoteAdminRedirectSession *)self redirectStepError]!= 47)
        {
          v15 = 6;
          goto LABEL_29;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v47 = NFLogGetLogger();
        if (v47)
        {
          v48 = v47;
          v49 = object_getClass(self);
          v50 = class_isMetaClass(v49);
          v51 = object_getClassName(self);
          v61 = sel_getName(a2);
          v52 = 45;
          if (v50)
          {
            v52 = 43;
          }

          v48(3, "%c[%{public}s %{public}s]:%i Reader protection mode enabled", v52, v51, v61, 795);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v31 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
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
          *buf = 67109890;
          v64 = v54;
          v65 = 2082;
          v66 = v55;
          v67 = 2082;
          v68 = v56;
          v69 = 1024;
          v70 = 795;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Reader protection mode enabled", buf, 0x22u);
        }

        v15 = 13;
      }
    }

    else
    {
      v15 = 5;
    }

LABEL_29:

    goto LABEL_30;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v6 = NFLogGetLogger();
  if (v6)
  {
    v7 = v6;
    v8 = object_getClass(self);
    v9 = class_isMetaClass(v8);
    v10 = object_getClassName(self);
    v58 = sel_getName(a2);
    v11 = 45;
    if (v9)
    {
      v11 = 43;
    }

    v7(3, "%c[%{public}s %{public}s]:%i Reader session aborted", v11, v10, v58, 767);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
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
    v64 = v14;
    v65 = 2082;
    v66 = object_getClassName(self);
    v67 = 2082;
    v68 = sel_getName(a2);
    v69 = 1024;
    v70 = 767;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Reader session aborted", buf, 0x22u);
  }

  v15 = 1;
LABEL_30:

  return v15;
}

- (BOOL)startNewSession
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

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 805);
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
    v16 = v12;
    v17 = 2082;
    v18 = object_getClassName(self);
    v19 = 2082;
    v20 = sel_getName(a2);
    v21 = 1024;
    v22 = 805;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  return [(NFRemoteAdminReaderSession *)self reconnectTag];
}

- (void)_restoreRFSettingForCathayIngestion
{
  v4 = dispatch_semaphore_create(0);
  v5 = +[NFHardwareManager sharedHardwareManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006834;
  v7[3] = &unk_100054690;
  v8 = v4;
  v9 = a2;
  v7[4] = self;
  v6 = v4;
  [v5 configureReaderModeRFForTransitPartner:0 transitPartner:2 callback:v7];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  self->_cathayIngestionSessionInProgress = 0;
}

- (BOOL)_preValidateCardForMercury
{
  v3 = NFGetProductType();
  if (v3 <= 9 && ((1 << v3) & 0x206) != 0)
  {
    sessionCardServiceInfo = [(NFRemoteAdminReaderSession *)self sessionCardServiceInfo];
    v5 = [sessionCardServiceInfo objectForKeyedSubscript:@"version"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [sessionCardServiceInfo objectForKeyedSubscript:@"version"];
      intValue = [v7 intValue];

      if (intValue == 3)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

- (void)_restoreRFSettingForMercuryIngestion
{
  v4 = dispatch_semaphore_create(0);
  v5 = +[NFHardwareManager sharedHardwareManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006B8C;
  v7[3] = &unk_100054690;
  v8 = v4;
  v9 = a2;
  v7[4] = self;
  v6 = v4;
  [v5 configureReaderModeRFForTransitPartner:0 transitPartner:1 callback:v7];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  self->_mercuryIngestionSessionInProgress = 0;
}

- (void)_checkForMercuryIngestion
{
  if ([(NFRemoteAdminReaderSession *)self _preValidateCardForMercury])
  {
    if (self->_mercuryIngestionSessionInProgress)
    {
      [(NFRemoteAdminReaderSession *)self _restoreRFSettingForMercuryIngestion];
    }

    v4 = dispatch_semaphore_create(0);
    v5 = +[NFHardwareManager sharedHardwareManager];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100006E44;
    v7[3] = &unk_100054690;
    v8 = v4;
    v9 = a2;
    v7[4] = self;
    v6 = v4;
    [v5 configureReaderModeRFForTransitPartner:1 transitPartner:1 callback:v7];

    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    self->_mercuryIngestionSessionInProgress = 1;
  }

  else
  {
    self->_mercuryIngestionSessionInProgress = 0;
  }
}

- (unint64_t)_openSession
{
  if (!self->_readerSession)
  {
    [(NFRemoteAdminReaderSession *)self _checkForMercuryIngestion];
    v107 = 0;
    v108 = &v107;
    v109 = 0x3032000000;
    v110 = sub_100007B68;
    v111 = sub_100007B78;
    v112 = 0;
    v5 = +[NFHardwareManager sharedHardwareManager];
    v106[0] = _NSConcreteStackBlock;
    v106[1] = 3221225472;
    v106[2] = sub_100007B80;
    v106[3] = &unk_1000546B8;
    v106[5] = &v107;
    v106[6] = a2;
    v106[4] = self;
    v6 = [v5 startReaderSession:v106];

    dispatch_semaphore_wait(self->_sessionStartSem, 0xFFFFFFFFFFFFFFFFLL);
    v7 = v108[5];
    if (v7)
    {
      if ([v7 code] == 47)
      {
        v105.receiver = self;
        v105.super_class = NFRemoteAdminReaderSession;
        [(NFRemoteAdminRedirectSession *)&v105 abort:6];
      }

      v8 = &stru_1000546D8;
      goto LABEL_9;
    }

    if ([(NFRemoteAdminRedirectSession *)self aborted])
    {
      v8 = &stru_1000546F8;
LABEL_9:
      [v6 endSessionWithCompletion:v8];
LABEL_10:
      v2 = 5;
LABEL_11:

      _Block_object_dispose(&v107, 8);
      return v2;
    }

    objc_storeStrong(&self->_readerSession, v6);
    [(NFReaderSession *)self->_readerSession setDelegate:self];
    if (!self->_readerSession)
    {
      goto LABEL_10;
    }

    [(NFRemoteAdminReaderSession *)self _fireCardIngestionStatus:10];
    if (self->_sessionUUID)
    {
      v10 = +[NFCALogger sharedCALogger];
      self->_sessionStartTime = [v10 getTimestamp];

      v123 = @"sessionStartTime";
      v11 = +[NSDate now];
      v124 = v11;
      v12 = [NSDictionary dictionaryWithObjects:&v124 forKeys:&v123 count:1];

      [NFReaderModeCardIngestionCALogger postAnalyticsReaderModeCardIngestionSession:v12 prepOnly:1];
    }

    sessionCardServiceInfo = [(NFRemoteAdminReaderSession *)self sessionCardServiceInfo];
    v14 = [sessionCardServiceInfo objectForKeyedSubscript:@"version"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v16 = [sessionCardServiceInfo objectForKeyedSubscript:@"version"];
      intValue = [v16 intValue];

      if (intValue == 3)
      {
        skipMifareClassification = [(NFReaderSession *)self->_readerSession skipMifareClassification];
      }
    }

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

      v20(6, "%c[%{public}s %{public}s]:%i Waiting for tag", v24, ClassName, Name, 982);
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
      *buf = 67109890;
      v114 = v27;
      v115 = 2082;
      v116 = v28;
      v117 = 2082;
      v118 = v29;
      v119 = 1024;
      v120 = 982;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Waiting for tag", buf, 0x22u);
    }

    redirectState = [(NFRemoteAdminRedirectSession *)self redirectState];
    requestInfo = [redirectState requestInfo];
    maxDetectionTimeout = [requestInfo maxDetectionTimeout];

    v33 = [(NFRemoteAdminReaderSession *)self connectTagWithTimeout:maxDetectionTimeout];
    v34 = v108[5];
    v108[5] = v33;

    if (v108[5])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v35 = NFLogGetLogger();
      if (v35)
      {
        v36 = v35;
        v37 = object_getClass(self);
        v38 = class_isMetaClass(v37);
        v39 = object_getClassName(self);
        v40 = sel_getName(a2);
        v41 = 45;
        if (v38)
        {
          v41 = 43;
        }

        v36(3, "%c[%{public}s %{public}s]:%i Failed to connect a tag : %@", v41, v39, v40, 986, v108[5]);
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
        v47 = v108[5];
        *buf = 67110146;
        v114 = v44;
        v115 = 2082;
        v116 = v45;
        v117 = 2082;
        v118 = v46;
        v119 = 1024;
        v120 = 986;
        v121 = 2112;
        v122 = v47;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to connect a tag : %@", buf, 0x2Cu);
      }

      [(NFRemoteAdminReaderSession *)self _closeSession];
      if ([v108[5] code] == 47)
      {
        v2 = 13;
      }

      else
      {
        v2 = 6;
      }

LABEL_92:
      [(NFRemoteAdminReaderSession *)self _fireCardIngestionStatus:v2];

      goto LABEL_11;
    }

    if ([(NFRemoteAdminReaderSession *)self _validateCard])
    {
      v48 = [sessionCardServiceInfo objectForKeyedSubscript:@"cardServiceId"];

      if (v48)
      {
        v49 = [sessionCardServiceInfo objectForKeyedSubscript:@"cardServiceId"];
        [(NSMutableDictionary *)self->_cardContents setObject:v49 forKeyedSubscript:@"cardServiceId"];
      }

      _gatherCardStateInfo = [(NFRemoteAdminReaderSession *)self _gatherCardStateInfo];
      if (_gatherCardStateInfo)
      {
        [(NSMutableDictionary *)self->_cardContents addEntriesFromDictionary:_gatherCardStateInfo];
LABEL_46:

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
            v56 = sel_getName(a2);
            v57 = 45;
            if (v54)
            {
              v57 = 43;
            }

            v52(6, "%c[%{public}s %{public}s]:%i [TSM] connected tag: %@", v57, v55, v56, 1030, self->_tag);
          }

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
            tag = self->_tag;
            *buf = 67110146;
            v114 = v60;
            v115 = 2082;
            v116 = v61;
            v117 = 2082;
            v118 = v62;
            v119 = 1024;
            v120 = 1030;
            v121 = 2112;
            v122 = tag;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] connected tag: %@", buf, 0x2Cu);
          }
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v64 = NFLogGetLogger();
        if (v64)
        {
          v65 = v64;
          v66 = object_getClass(self);
          v67 = class_isMetaClass(v66);
          v68 = object_getClassName(self);
          v104 = sel_getName(a2);
          v69 = 45;
          if (v67)
          {
            v69 = 43;
          }

          v65(6, "%c[%{public}s %{public}s]:%i connected tag", v69, v68, v104, 1031);
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
          *buf = 67109890;
          v114 = v72;
          v115 = 2082;
          v116 = v73;
          v117 = 2082;
          v118 = v74;
          v119 = 1024;
          v120 = 1031;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i connected tag", buf, 0x22u);
        }

        v2 = 2;
        goto LABEL_92;
      }

      if (!self->_cardValidationStatus)
      {
        goto LABEL_46;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v75 = NFLogGetLogger();
      if (v75)
      {
        v76 = v75;
        v77 = object_getClass(self);
        v78 = class_isMetaClass(v77);
        v79 = object_getClassName(self);
        v80 = sel_getName(a2);
        v81 = 45;
        if (v78)
        {
          v81 = 43;
        }

        v76(3, "%c[%{public}s %{public}s]:%i returnStatus of stateInfo: %lu", v81, v79, v80, 1009, self->_cardValidationStatus);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v82 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
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
        cardValidationStatus = self->_cardValidationStatus;
        *buf = 67110146;
        v114 = v84;
        v115 = 2082;
        v116 = v85;
        v117 = 2082;
        v118 = v86;
        v119 = 1024;
        v120 = 1009;
        v121 = 2048;
        v122 = cardValidationStatus;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i returnStatus of stateInfo: %lu", buf, 0x2Cu);
      }
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v88 = NFLogGetLogger();
    if (v88)
    {
      v89 = v88;
      v90 = object_getClass(self);
      v91 = class_isMetaClass(v90);
      v92 = object_getClassName(self);
      v93 = sel_getName(a2);
      v94 = 45;
      if (v91)
      {
        v94 = 43;
      }

      v89(3, "%c[%{public}s %{public}s]:%i _validateCard Failed with status %lu", v94, v92, v93, 1015, self->_cardValidationStatus);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v95 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
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
      v99 = sel_getName(a2);
      v100 = self->_cardValidationStatus;
      *buf = 67110146;
      v114 = v97;
      v115 = 2082;
      v116 = v98;
      v117 = 2082;
      v118 = v99;
      v119 = 1024;
      v120 = 1015;
      v121 = 2048;
      v122 = v100;
      _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i _validateCard Failed with status %lu", buf, 0x2Cu);
    }

    [(NFRemoteAdminReaderSession *)self _closeSession];
    v101 = self->_cardValidationStatus;
    v102 = 9;
    if (v101 == 5)
    {
      v102 = 7;
    }

    if (v101 == 4)
    {
      v2 = 12;
    }

    else
    {
      v2 = v102;
    }

    goto LABEL_92;
  }

  return 2;
}

- (BOOL)_closeSession
{
  readerSession = self->_readerSession;
  if (readerSession)
  {
    if (self->_tag)
    {
      [(NFReaderSession *)self->_readerSession disconnectTag];
      v4 = self->_readerSession;
    }

    else
    {
      v4 = self->_readerSession;
    }

    [(NFReaderSession *)v4 stopPolling];
    [(NFReaderSession *)self->_readerSession endSessionWithCompletion:&stru_100054718];
    v5 = self->_readerSession;
    self->_readerSession = 0;

    if (self->_cathayIngestionSessionInProgress)
    {
      [(NFRemoteAdminReaderSession *)self _restoreRFSettingForCathayIngestion];
    }

    if (self->_mercuryIngestionSessionInProgress)
    {
      [(NFRemoteAdminReaderSession *)self _restoreRFSettingForMercuryIngestion];
    }

    if (self->_sessionUUID)
    {
      v9 = @"sessionEndTime";
      v6 = +[NSDate now];
      v10 = v6;
      v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];

      [NFReaderModeCardIngestionCALogger postAnalyticsReaderModeCardIngestionSession:v7 prepOnly:1];
    }
  }

  return readerSession != 0;
}

- (void)readerSession:(id)session didDetectTags:(id)tags
{
  tagsCopy = tags;
  if ([tagsCopy count])
  {
    v7 = [tagsCopy objectAtIndex:0];
    tag = self->_tag;
    self->_tag = v7;

    if (byte_10005BAB0 == 1)
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
        v15 = 45;
        if (isMetaClass)
        {
          v15 = 43;
        }

        v10(6, "%c[%{public}s %{public}s]:%i [TSM] Detected tag: %@", v15, ClassName, Name, 1079, self->_tag);
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

        v19 = object_getClassName(self);
        v20 = sel_getName(a2);
        v21 = self->_tag;
        *buf = 67110146;
        v59 = v18;
        v60 = 2082;
        v61 = v19;
        v62 = 2082;
        v63 = v20;
        v64 = 1024;
        v65 = 1079;
        v66 = 2112;
        v67 = v21;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Detected tag: %@", buf, 0x2Cu);
      }
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v23 = v22;
      v24 = object_getClass(self);
      v25 = class_isMetaClass(v24);
      v26 = object_getClassName(self);
      v56 = sel_getName(a2);
      v27 = 45;
      if (v25)
      {
        v27 = 43;
      }

      v23(6, "%c[%{public}s %{public}s]:%i Detected tag", v27, v26, v56, 1080);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
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
      *buf = 67109890;
      v59 = v30;
      v60 = 2082;
      v61 = v31;
      v62 = 2082;
      v63 = v32;
      v64 = 1024;
      v65 = 1080;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Detected tag", buf, 0x22u);
    }

    if (([(NFReaderSession *)self->_readerSession connectTag:self->_tag]& 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v33 = NFLogGetLogger();
      if (v33)
      {
        v34 = v33;
        v35 = object_getClass(self);
        v36 = class_isMetaClass(v35);
        v37 = object_getClassName(self);
        v38 = sel_getName(a2);
        v39 = 45;
        if (v36)
        {
          v39 = 43;
        }

        v34(3, "%c[%{public}s %{public}s]:%i Failed to connect tag: %{public}@", v39, v37, v38, 1082, self->_tag);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v40 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
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
        v44 = sel_getName(a2);
        v45 = self->_tag;
        *buf = 67110146;
        v59 = v42;
        v60 = 2082;
        v61 = v43;
        v62 = 2082;
        v63 = v44;
        v64 = 1024;
        v65 = 1082;
        v66 = 2114;
        v67 = v45;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to connect tag: %{public}@", buf, 0x2Cu);
      }

      v46 = self->_tag;
      self->_tag = 0;
    }

    dispatch_semaphore_signal(self->_tagSem);
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v47 = NFLogGetLogger();
    if (v47)
    {
      v48 = v47;
      v49 = object_getClass(self);
      v50 = class_isMetaClass(v49);
      v51 = object_getClassName(self);
      v57 = sel_getName(a2);
      v52 = 45;
      if (v50)
      {
        v52 = 43;
      }

      v48(3, "%c[%{public}s %{public}s]:%i No tags found", v52, v51, v57, 1092);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v53 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
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

      *buf = 67109890;
      v59 = v55;
      v60 = 2082;
      v61 = object_getClassName(self);
      v62 = 2082;
      v63 = sel_getName(a2);
      v64 = 1024;
      v65 = 1092;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No tags found", buf, 0x22u);
    }
  }
}

- (void)readerSessionDidEndUnexpectedly:(id)unexpectedly reason:(id)reason
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  reasonCopy = reason;
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

    v9(3, "%c[%{public}s %{public}s]:%i Lost reader session", v13, ClassName, Name, 1097);
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

    *buf = 67109890;
    v21 = v16;
    v22 = 2082;
    v23 = object_getClassName(self);
    v24 = 2082;
    v25 = sel_getName(a2);
    v26 = 1024;
    v27 = 1097;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Lost reader session", buf, 0x22u);
  }

  code = [reasonCopy code];
  if (code == 47)
  {
    v18 = 6;
  }

  else
  {
    v18 = 2;
  }

  [(NFRemoteAdminReaderSession *)self abort:v18];
}

- (id)connectTagWithTimeout:(unint64_t)timeout
{
  redirectState = [(NFRemoteAdminRedirectSession *)self redirectState];
  v56 = a2;
  v57 = redirectState;
  if (redirectState)
  {
    parameters = [redirectState parameters];
    v8 = [parameters objectForKeyedSubscript:@"technology"];

    uppercaseString = [v8 uppercaseString];
  }

  else
  {
    uppercaseString = 0;
  }

  sessionCardServiceInfo = [(NFRemoteAdminReaderSession *)self sessionCardServiceInfo];
  v11 = [sessionCardServiceInfo objectForKeyedSubscript:@"version"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v13 = [sessionCardServiceInfo objectForKeyedSubscript:@"version"];
    intValue = [v13 intValue];
  }

  else
  {
    intValue = 0;
  }

  v15 = 0;
  timeoutCopy = timeout;
  do
  {
    if (intValue == 2)
    {
      readerSession = self->_readerSession;
      v60 = v15;
      v18 = &v60;
      v19 = &v60;
      v20 = 4;
      goto LABEL_13;
    }

    if (intValue == 3 && [uppercaseString containsString:@"A"])
    {
      readerSession = self->_readerSession;
      v59 = v15;
      v18 = &v59;
      v19 = &v59;
      v20 = 1;
LABEL_13:
      [(NFReaderSession *)readerSession startPollingForTechnology:v20 error:v19];
      goto LABEL_15;
    }

    v21 = self->_readerSession;
    v58 = v15;
    v18 = &v58;
    [(NFReaderSession *)v21 startPollingWithError:&v58];
LABEL_15:
    v22 = *v18;

    if ([(__CFString *)v22 code]== 47)
    {
      sleep(1u);
      timeoutCopy -= 1000;
    }

    v23 = [(__CFString *)v22 code]!= 47 || timeoutCopy <= 0;
    v15 = v22;
  }

  while (!v23);
  if (timeout)
  {
    v24 = dispatch_time(0, 1000000 * (timeoutCopy & ~(timeoutCopy >> 63)));
  }

  else
  {
    v24 = -1;
  }

  if (dispatch_semaphore_wait(self->_tagSem, v24) || !self->_tag)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v26 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(v56);
      if (v22)
      {
        v31 = v22;
      }

      else
      {
        v31 = @"Timeout";
      }

      v32 = 45;
      if (isMetaClass)
      {
        v32 = 43;
      }

      v26(3, "%c[%{public}s %{public}s]:%i Failed to connect a tag : %@", v32, ClassName, Name, 1156, v31);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v33 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
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
      v37 = sel_getName(v56);
      *buf = 67110146;
      if (v22)
      {
        v38 = v22;
      }

      else
      {
        v38 = @"Timeout";
      }

      v64 = v35;
      v65 = 2082;
      v66 = v36;
      v67 = 2082;
      v68 = v37;
      v69 = 1024;
      v70 = 1156;
      v71 = 2112;
      v72 = v38;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to connect a tag : %@", buf, 0x2Cu);
    }

    if (v22)
    {
      v39 = v22;
    }

    else
    {
      v51 = [NSError alloc];
      v52 = [NSString stringWithUTF8String:"seld"];
      v61 = NSLocalizedDescriptionKey;
      v62 = @"Timeout";
      v53 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      v39 = [v51 initWithDomain:v52 code:5 userInfo:v53];
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v40 = NFLogGetLogger();
    if (v40)
    {
      v41 = v40;
      v42 = object_getClass(self);
      v43 = class_isMetaClass(v42);
      v44 = object_getClassName(self);
      v55 = sel_getName(v56);
      v45 = 45;
      if (v43)
      {
        v45 = 43;
      }

      v41(6, "%c[%{public}s %{public}s]:%i Tag found", v45, v44, v55, 1159);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v46 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
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
      v50 = sel_getName(v56);
      *buf = 67109890;
      v64 = v48;
      v65 = 2082;
      v66 = v49;
      v67 = 2082;
      v68 = v50;
      v69 = 1024;
      v70 = 1159;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Tag found", buf, 0x22u);
    }

    v39 = 0;
  }

  return v39;
}

- (BOOL)reconnectTag
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

    v5(6, "%c[%{public}s %{public}s]:%i Disconnecting tag", v9, ClassName, Name, 1166);
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
    v31 = v12;
    v32 = 2082;
    v33 = object_getClassName(self);
    v34 = 2082;
    v35 = sel_getName(a2);
    v36 = 1024;
    v37 = 1166;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Disconnecting tag", buf, 0x22u);
  }

  [(NFReaderSession *)self->_readerSession disconnectTag];
  [(NFReaderSession *)self->_readerSession stopPolling];
  tag = self->_tag;
  self->_tag = 0;

  usleep(0xC350u);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v14 = NFLogGetLogger();
  if (v14)
  {
    v15 = v14;
    v16 = object_getClass(self);
    v17 = class_isMetaClass(v16);
    v18 = object_getClassName(self);
    v29 = sel_getName(a2);
    v19 = 45;
    if (v17)
    {
      v19 = 43;
    }

    v15(6, "%c[%{public}s %{public}s]:%i Connecting tag", v19, v18, v29, 1175);
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
    v31 = v22;
    v32 = 2082;
    v33 = v23;
    v34 = 2082;
    v35 = v24;
    v36 = 1024;
    v37 = 1175;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Connecting tag", buf, 0x22u);
  }

  v25 = [(NFRemoteAdminReaderSession *)self connectTagWithTimeout:1000];
  v26 = v25 == 0;

  return v26;
}

- (unint64_t)_performReaderModeRequest
{
  v4 = objc_autoreleasePoolPush();
  getNextRequest = [(NFRemoteAdminReaderSession *)self getNextRequest];
  if ([getNextRequest count])
  {
    v79 = v4;
    [(NFRemoteAdminReaderSession *)self _fireCardIngestionStatus:3];
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    v80 = 0;
    v8 = [(NFRemoteAdminRedirectSession *)self executeHttpRequest:getNextRequest httpHeader:0 response:v6 responseHeader:v7 duration:0 sessionError:&v80];
    v9 = v80;
    redirectState = [(NFRemoteAdminRedirectSession *)self redirectState];
    performanceMetrics = [redirectState performanceMetrics];
    v78 = v9;
    [performanceMetrics setNsUrlSessionError:v9];

    if (v8)
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

        v13(3, "%c[%{public}s %{public}s]:%i HTTP Request failed", v17, ClassName, Name, 1220);
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
        v82 = v20;
        v83 = 2082;
        v84 = v21;
        v85 = 2082;
        v86 = v22;
        v87 = 1024;
        v88 = 1220;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i HTTP Request failed", buf, 0x22u);
      }
    }

    else
    {
      v18 = [v6 NF_dictionaryForKey:@"redirectRequest"];
      if ([v18 count])
      {
        if (byte_10005BAB0 == 1)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v31 = NFLogGetLogger();
          if (v31)
          {
            v32 = v31;
            v33 = object_getClass(self);
            v34 = class_isMetaClass(v33);
            v72 = object_getClassName(self);
            v75 = sel_getName(a2);
            v35 = 45;
            if (v34)
            {
              v35 = 43;
            }

            v32(6, "%c[%{public}s %{public}s]:%i [TSM] Received redirect information: %@", v35, v72, v75, 1206, v18);
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
            v40 = sel_getName(a2);
            *buf = 67110146;
            v82 = v38;
            v83 = 2082;
            v84 = v39;
            v85 = 2082;
            v86 = v40;
            v87 = 1024;
            v88 = 1206;
            v89 = 2112;
            v90 = v18;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Received redirect information: %@", buf, 0x2Cu);
          }
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v41 = NFLogGetLogger();
        if (v41)
        {
          v42 = v41;
          v43 = object_getClass(self);
          v44 = class_isMetaClass(v43);
          v45 = object_getClassName(self);
          v76 = sel_getName(a2);
          v46 = 45;
          if (v44)
          {
            v46 = 43;
          }

          v42(6, "%c[%{public}s %{public}s]:%i Received redirect information", v46, v45, v76, 1207);
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
          v51 = sel_getName(a2);
          *buf = 67109890;
          v82 = v49;
          v83 = 2082;
          v84 = v50;
          v85 = 2082;
          v86 = v51;
          v87 = 1024;
          v88 = 1207;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Received redirect information", buf, 0x22u);
        }

        v52 = [v6 NF_stringForKey:@"kBatchId"];
        redirectState2 = [(NFRemoteAdminRedirectSession *)self redirectState];
        [redirectState2 setBatchId:v52];

        v54 = [v6 NF_stringForKey:@"kTaskId"];
        redirectState3 = [(NFRemoteAdminRedirectSession *)self redirectState];
        [redirectState3 setTaskId:v54];

        v56 = [v18 NF_stringForKey:@"targetURL"];
        redirectState4 = [(NFRemoteAdminRedirectSession *)self redirectState];
        [redirectState4 setRedirectUrl:v56];

        v58 = [v18 NF_dictionaryForKey:@"forwardData"];
        redirectState5 = [(NFRemoteAdminRedirectSession *)self redirectState];
        [redirectState5 setForwardDataToSP:v58];

        redirectState6 = [(NFRemoteAdminRedirectSession *)self redirectState];
        [redirectState6 setHttpHeaderInfo:v7];
        v8 = 0;
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v61 = NFLogGetLogger();
        if (v61)
        {
          v62 = v61;
          v63 = object_getClass(self);
          v64 = class_isMetaClass(v63);
          v65 = object_getClassName(self);
          v77 = sel_getName(a2);
          v66 = 45;
          if (v64)
          {
            v66 = 43;
          }

          v62(3, "%c[%{public}s %{public}s]:%i Failed to receive redirect info for reader mode request", v66, v65, v77, 1215);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        redirectState6 = NFSharedLogGetLogger();
        if (os_log_type_enabled(redirectState6, OS_LOG_TYPE_ERROR))
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
          v70 = sel_getName(a2);
          *buf = 67109890;
          v82 = v68;
          v83 = 2082;
          v84 = v69;
          v85 = 2082;
          v86 = v70;
          v87 = 1024;
          v88 = 1215;
          _os_log_impl(&_mh_execute_header, redirectState6, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to receive redirect info for reader mode request", buf, 0x22u);
        }

        v8 = 5;
      }
    }

    v4 = v79;
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
      v74 = sel_getName(a2);
      v28 = 45;
      if (v26)
      {
        v28 = 43;
      }

      v24(3, "%c[%{public}s %{public}s]:%i Failed to get next request", v28, v27, v74, 1189);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
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

      *buf = 67109890;
      v82 = v30;
      v83 = 2082;
      v84 = object_getClassName(self);
      v85 = 2082;
      v86 = sel_getName(a2);
      v87 = 1024;
      v88 = 1189;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get next request", buf, 0x22u);
    }

    v8 = 3;
  }

  objc_autoreleasePoolPop(v4);
  return v8;
}

- (unint64_t)run
{
  v123 = 0;
  v4 = [NFSecureElement embeddedSecureElementWithError:&v123];
  v5 = v123;
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

      v10(3, "%c[%{public}s %{public}s]:%i eSE unavailable, aborting.  Error - %{public}@", v13, ClassName, Name, 1233, v5);
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
      v127 = v16;
      v128 = 2082;
      v129 = v17;
      v130 = 2082;
      v131 = v18;
      v132 = 1024;
      v133 = 1233;
      v134 = 2114;
      v135 = v5;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i eSE unavailable, aborting.  Error - %{public}@", buf, 0x2Cu);
    }

    [(NFRemoteAdminReaderSession *)self _fireCardIngestionStatus:5];
    redirectState = [(NFRemoteAdminRedirectSession *)self redirectState];
    [redirectState setStep:3];

    redirectState2 = [(NFRemoteAdminRedirectSession *)self redirectState];
    [redirectState2 save];
    _doInitialRequest = 1;
    goto LABEL_15;
  }

  redirectState3 = [(NFRemoteAdminRedirectSession *)self redirectState];
  step = [redirectState3 step];

  if (step)
  {
    _doInitialRequest = 0;
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v23 = v22;
      v24 = object_getClass(self);
      v25 = class_isMetaClass(v24);
      v26 = object_getClassName(self);
      v118 = sel_getName(a2);
      v27 = 45;
      if (v25)
      {
        v27 = 43;
      }

      v23(6, "%c[%{public}s %{public}s]:%i initiating reader mode request", v27, v26, v118, 1245);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
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
      *buf = 67109890;
      v127 = v30;
      v128 = 2082;
      v129 = v31;
      v130 = 2082;
      v131 = v32;
      v132 = 1024;
      v133 = 1245;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i initiating reader mode request", buf, 0x22u);
    }

    _doInitialRequest = [(NFRemoteAdminReaderSession *)self _doInitialRequest];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v33 = NFLogGetLogger();
    if (v33)
    {
      v34 = v33;
      v35 = object_getClass(self);
      v36 = class_isMetaClass(v35);
      v115 = object_getClassName(self);
      v119 = sel_getName(a2);
      v37 = 45;
      if (v36)
      {
        v37 = 43;
      }

      v34(6, "%c[%{public}s %{public}s]:%i Result = 0x%04x", v37, v115, v119, 1247, _doInitialRequest);
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
      *buf = 67110146;
      v127 = v40;
      v128 = 2082;
      v129 = v41;
      v130 = 2082;
      v131 = v42;
      v132 = 1024;
      v133 = 1247;
      v134 = 1024;
      LODWORD(v135) = _doInitialRequest;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Result = 0x%04x", buf, 0x28u);
    }

    v124[0] = @"state";
    v124[1] = @"technology";
    v125[0] = &off_100057300;
    v43 = [NSNumber numberWithUnsignedInt:[(NFRemoteAdminReaderSession *)self targetTagType]];
    v125[1] = v43;
    v44 = [NSDictionary dictionaryWithObjects:v125 forKeys:v124 count:2];

    [NFReaderModeCardIngestionCALogger postAnalyticsReaderModeCardIngestionSession:v44 prepOnly:1];
  }

  redirectState4 = [(NFRemoteAdminRedirectSession *)self redirectState];
  step2 = [redirectState4 step];

  if (self && step2 == 3 && _doInitialRequest == 2)
  {
    self->_cardIngestionStatus = 2;
  }

  redirectState5 = [(NFRemoteAdminRedirectSession *)self redirectState];
  step3 = [redirectState5 step];

  if (step3 == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v49 = NFLogGetLogger();
    if (v49)
    {
      v50 = v49;
      v51 = object_getClass(self);
      v52 = class_isMetaClass(v51);
      v53 = object_getClassName(self);
      v120 = sel_getName(a2);
      v54 = 45;
      if (v52)
      {
        v54 = 43;
      }

      v50(6, "%c[%{public}s %{public}s]:%i Performing reader mode redirect", v54, v53, v120, 1264);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v55 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
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
      *buf = 67109890;
      v127 = v57;
      v128 = 2082;
      v129 = v58;
      v130 = 2082;
      v131 = v59;
      v132 = 1024;
      v133 = 1264;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Performing reader mode redirect", buf, 0x22u);
    }

    _doReaderModeRedirect = [(NFRemoteAdminReaderSession *)self _doReaderModeRedirect];
    if (self)
    {
      self->_cardIngestionStatus = _doReaderModeRedirect;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v61 = NFLogGetLogger();
    if (v61)
    {
      v62 = v61;
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
      if (self)
      {
        cardIngestionStatus_low = LODWORD(self->_cardIngestionStatus);
      }

      else
      {
        cardIngestionStatus_low = 0;
      }

      v62(6, "%c[%{public}s %{public}s]:%i Result = 0x%04x", v64, v65, v66, 1266, cardIngestionStatus_low);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v68 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
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
      if (self)
      {
        cardIngestionStatus = self->_cardIngestionStatus;
      }

      else
      {
        cardIngestionStatus = 0;
      }

      *buf = 67110146;
      v127 = v70;
      v128 = 2082;
      v129 = v71;
      v130 = 2082;
      v131 = v72;
      v132 = 1024;
      v133 = 1266;
      v134 = 1024;
      LODWORD(v135) = cardIngestionStatus;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Result = 0x%04x", buf, 0x28u);
    }

    v74 = [NSMutableDictionary alloc];
    v75 = [NSNumber numberWithUnsignedInt:[(NFRemoteAdminReaderSession *)self targetTagType]];
    v76 = [NSNumber numberWithUnsignedInteger:self->_cardValidationStatus];
    v77 = [v74 initWithObjectsAndKeys:{&off_100057318, @"state", v75, @"technology", v76, @"cardValidationStatus", 0}];

    if (self->_cardIngestionStatus != -1)
    {
      v78 = [NSNumber numberWithUnsignedInteger:?];
      [v77 setObject:v78 forKeyedSubscript:@"sessionStatus"];
    }

    redirectState6 = [(NFRemoteAdminRedirectSession *)self redirectState];
    spStatusCode = [redirectState6 spStatusCode];

    if (spStatusCode)
    {
      redirectState7 = [(NFRemoteAdminRedirectSession *)self redirectState];
      spStatusCode2 = [redirectState7 spStatusCode];
      [v77 setObject:spStatusCode2 forKey:@"spStatus"];
    }

    [NFReaderModeCardIngestionCALogger postAnalyticsReaderModeCardIngestionSession:v77 prepOnly:1];
  }

  redirectState8 = [(NFRemoteAdminRedirectSession *)self redirectState];
  step4 = [redirectState8 step];

  if (step4 == 2)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v85 = NFLogGetLogger();
    if (v85)
    {
      v86 = v85;
      v87 = object_getClass(self);
      v88 = class_isMetaClass(v87);
      v89 = object_getClassName(self);
      v121 = sel_getName(a2);
      v90 = 45;
      if (v88)
      {
        v90 = 43;
      }

      v86(6, "%c[%{public}s %{public}s]:%i Performing post-redirect TSM check in", v90, v89, v121, 1286);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v91 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      v92 = object_getClass(self);
      if (class_isMetaClass(v92))
      {
        v93 = 43;
      }

      else
      {
        v93 = 45;
      }

      v94 = object_getClassName(self);
      v95 = sel_getName(a2);
      *buf = 67109890;
      v127 = v93;
      v128 = 2082;
      v129 = v94;
      v130 = 2082;
      v131 = v95;
      v132 = 1024;
      v133 = 1286;
      _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Performing post-redirect TSM check in", buf, 0x22u);
    }

    _doInitialRequest = [(NFRemoteAdminReaderSession *)self _doFinalTSMCheckIn];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v96 = NFLogGetLogger();
    if (v96)
    {
      v97 = v96;
      v98 = object_getClass(self);
      v99 = class_isMetaClass(v98);
      v116 = object_getClassName(self);
      v122 = sel_getName(a2);
      v100 = 45;
      if (v99)
      {
        v100 = 43;
      }

      v97(6, "%c[%{public}s %{public}s]:%i Result = 0x%04x", v100, v116, v122, 1288, _doInitialRequest);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v101 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
    {
      v102 = object_getClass(self);
      if (class_isMetaClass(v102))
      {
        v103 = 43;
      }

      else
      {
        v103 = 45;
      }

      v104 = object_getClassName(self);
      v105 = sel_getName(a2);
      *buf = 67110146;
      v127 = v103;
      v128 = 2082;
      v129 = v104;
      v130 = 2082;
      v131 = v105;
      v132 = 1024;
      v133 = 1288;
      v134 = 1024;
      LODWORD(v135) = _doInitialRequest;
      _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Result = 0x%04x", buf, 0x28u);
    }

    v106 = [NSMutableDictionary alloc];
    v107 = [NSNumber numberWithUnsignedInt:[(NFRemoteAdminReaderSession *)self targetTagType]];
    v108 = [NSNumber numberWithUnsignedInteger:self->_cardValidationStatus];
    redirectState2 = [v106 initWithObjectsAndKeys:{&off_100057330, @"state", v107, @"technology", v108, @"cardValidationStatus", 0}];

    if (self->_cardIngestionStatus != -1)
    {
      v109 = [NSNumber numberWithUnsignedInteger:?];
      [redirectState2 setObject:v109 forKeyedSubscript:@"sessionStatus"];
    }

    redirectState9 = [(NFRemoteAdminRedirectSession *)self redirectState];
    spStatusCode3 = [redirectState9 spStatusCode];

    if (spStatusCode3)
    {
      redirectState10 = [(NFRemoteAdminRedirectSession *)self redirectState];
      spStatusCode4 = [redirectState10 spStatusCode];
      [redirectState2 setObject:spStatusCode4 forKey:@"spStatus"];
    }

    [NFReaderModeCardIngestionCALogger postAnalyticsReaderModeCardIngestionSession:redirectState2 prepOnly:0];
LABEL_15:
  }

  return _doInitialRequest;
}

- (unint64_t)_doInitialRequest
{
  if (byte_10005BAB0 == 1)
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

      v5(6, "%c[%{public}s %{public}s]:%i [TSM] initiating reader mode request", v9, ClassName, Name, 1311);
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
      v138 = v12;
      v139 = 2082;
      v140 = object_getClassName(self);
      v141 = 2082;
      v142 = sel_getName(a2);
      v143 = 1024;
      v144 = 1311;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] initiating reader mode request", buf, 0x22u);
    }
  }

  if ([(NFRemoteAdminRedirectSession *)self aborted])
  {
    if (![(NFRemoteAdminRedirectSession *)self aborted])
    {
      _performReaderModeRequest = 5;
LABEL_95:
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v91 = NFLogGetLogger();
      if (v91)
      {
        v92 = v91;
        v93 = object_getClass(self);
        v94 = class_isMetaClass(v93);
        v127 = object_getClassName(self);
        v134 = sel_getName(a2);
        v95 = 45;
        if (v94)
        {
          v95 = 43;
        }

        v92(3, "%c[%{public}s %{public}s]:%i Failed to perform initial reader mode request with TSM, status=0x%lx", v95, v127, v134, 1365, _performReaderModeRequest);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v96 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        v97 = object_getClass(self);
        if (class_isMetaClass(v97))
        {
          v98 = 43;
        }

        else
        {
          v98 = 45;
        }

        v99 = object_getClassName(self);
        v100 = sel_getName(a2);
        *buf = 67110146;
        v138 = v98;
        v139 = 2082;
        v140 = v99;
        v141 = 2082;
        v142 = v100;
        v143 = 1024;
        v144 = 1365;
        v145 = 2048;
        v146 = _performReaderModeRequest;
        _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to perform initial reader mode request with TSM, status=0x%lx", buf, 0x2Cu);
      }

      redirectState = [(NFRemoteAdminRedirectSession *)self redirectState];
      [redirectState setStep:3];
      v79 = 2;
      goto LABEL_105;
    }

    goto LABEL_72;
  }

  v14 = 0;
  v15 = 5;
  do
  {
    connection = [(NFRemoteAdminRedirectSession *)self connection];

    if (!connection)
    {
      if (byte_10005BAB0 == 1)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v17 = NFLogGetLogger();
        if (v17)
        {
          v18 = v17;
          v19 = object_getClass(self);
          v20 = class_isMetaClass(v19);
          v21 = object_getClassName(self);
          v129 = sel_getName(a2);
          if (v20)
          {
            v22 = 43;
          }

          else
          {
            v22 = 45;
          }

          v18(6, "%c[%{public}s %{public}s]:%i [TSM] Opening connection to TSM", v22, v21, v129, 1317);
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
          *buf = 67109890;
          v138 = v25;
          v139 = 2082;
          v140 = v26;
          v141 = 2082;
          v142 = v27;
          v143 = 1024;
          v144 = 1317;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Opening connection to TSM", buf, 0x22u);
        }
      }

      redirectState2 = [(NFRemoteAdminRedirectSession *)self redirectState];
      sourceUrl = [redirectState2 sourceUrl];
      v30 = [(NFRemoteAdminRedirectSession *)self openConnection:sourceUrl];

      if ((v30 & 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v31 = NFLogGetLogger();
        if (v31)
        {
          v32 = v31;
          v33 = object_getClass(self);
          v34 = class_isMetaClass(v33);
          v35 = object_getClassName(self);
          v130 = sel_getName(a2);
          if (v34)
          {
            v36 = 43;
          }

          else
          {
            v36 = 45;
          }

          v32(3, "%c[%{public}s %{public}s]:%i Failed to open connection to TSM", v36, v35, v130, 1320);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v37 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
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
          *buf = 67109890;
          v138 = v39;
          v139 = 2082;
          v140 = v40;
          v141 = 2082;
          v142 = v41;
          v143 = 1024;
          v144 = 1320;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open connection to TSM", buf, 0x22u);
        }

        v15 = 3;
      }
    }

    connection2 = [(NFRemoteAdminRedirectSession *)self connection];

    _performReaderModeRequest = v15;
    if (connection2)
    {
      _performReaderModeRequest = [(NFRemoteAdminReaderSession *)self _performReaderModeRequest];
    }

    if (v14 <= 2 && _performReaderModeRequest == 3)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v43 = NFLogGetLogger();
      if (v43)
      {
        v44 = v43;
        v45 = object_getClass(self);
        v46 = class_isMetaClass(v45);
        v47 = object_getClassName(self);
        v48 = sel_getName(a2);
        if (v46)
        {
          v49 = 43;
        }

        else
        {
          v49 = 45;
        }

        v44(5, "%c[%{public}s %{public}s]:%i Performing short retry in %d seconds", v49, v47, v48, 1332, dword_100040800[v14]);
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
        v55 = dword_100040800[v14];
        *buf = 67110146;
        v138 = v52;
        v139 = 2082;
        v140 = v53;
        v141 = 2082;
        v142 = v54;
        v143 = 1024;
        v144 = 1332;
        v145 = 1024;
        LODWORD(v146) = v55;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Performing short retry in %d seconds", buf, 0x28u);
      }

      sleep(dword_100040800[v14++]);
      _performReaderModeRequest = 6;
    }

    if (v14 >= 3)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v56 = NFLogGetLogger();
      if (v56)
      {
        v57 = v56;
        v58 = object_getClass(self);
        v59 = class_isMetaClass(v58);
        v60 = object_getClassName(self);
        v131 = sel_getName(a2);
        if (v59)
        {
          v61 = 43;
        }

        else
        {
          v61 = 45;
        }

        v57(5, "%c[%{public}s %{public}s]:%i Short retries expired", v61, v60, v131, 1337);
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
        v138 = v64;
        v139 = 2082;
        v140 = v65;
        v141 = 2082;
        v142 = v66;
        v143 = 1024;
        v144 = 1337;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Short retries expired", buf, 0x22u);
      }
    }

    if (_performReaderModeRequest != 6)
    {
      break;
    }

    v15 = 6;
  }

  while (![(NFRemoteAdminRedirectSession *)self aborted]);
  [(NFRemoteAdminRedirectSession *)self closeConnection];
  if ([(NFRemoteAdminRedirectSession *)self aborted])
  {
    if (!_performReaderModeRequest)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v103 = NFLogGetLogger();
      if (v103)
      {
        v104 = v103;
        v105 = object_getClass(self);
        v106 = class_isMetaClass(v105);
        v107 = object_getClassName(self);
        v135 = sel_getName(a2);
        v108 = 45;
        if (v106)
        {
          v108 = 43;
        }

        v104(6, "%c[%{public}s %{public}s]:%i Abort with checkin", v108, v107, v135, 1348);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v109 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
      {
        v110 = object_getClass(self);
        if (class_isMetaClass(v110))
        {
          v111 = 43;
        }

        else
        {
          v111 = 45;
        }

        v112 = object_getClassName(self);
        v113 = sel_getName(a2);
        *buf = 67109890;
        v138 = v111;
        v139 = 2082;
        v140 = v112;
        v141 = 2082;
        v142 = v113;
        v143 = 1024;
        v144 = 1348;
        _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Abort with checkin", buf, 0x22u);
      }

      redirectState3 = [(NFRemoteAdminRedirectSession *)self redirectState];
      [redirectState3 setStep:2];

      redirectState = [[NSString alloc] initWithFormat:@"%@(reason=%d)", @"Cancel", -[NFRemoteAdminRedirectSession abortedReason](self, "abortedReason")];
      redirectState4 = [(NFRemoteAdminRedirectSession *)self redirectState];
      [redirectState4 setIncompleteReason:redirectState];

      goto LABEL_82;
    }

LABEL_72:
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v67 = NFLogGetLogger();
    if (v67)
    {
      v68 = v67;
      v69 = object_getClass(self);
      v70 = class_isMetaClass(v69);
      v71 = object_getClassName(self);
      v132 = sel_getName(a2);
      v72 = 45;
      if (v70)
      {
        v72 = 43;
      }

      v68(6, "%c[%{public}s %{public}s]:%i Abort", v72, v71, v132, 1353);
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
      v77 = sel_getName(a2);
      *buf = 67109890;
      v138 = v75;
      v139 = 2082;
      v140 = v76;
      v141 = 2082;
      v142 = v77;
      v143 = 1024;
      v144 = 1353;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Abort", buf, 0x22u);
    }

    redirectState = [(NFRemoteAdminRedirectSession *)self redirectState];
    [redirectState setStep:3];
LABEL_82:
    v79 = 1;
    goto LABEL_105;
  }

  if (_performReaderModeRequest == 8)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v116 = NFLogGetLogger();
    if (v116)
    {
      v117 = v116;
      v118 = object_getClass(self);
      v119 = class_isMetaClass(v118);
      v120 = object_getClassName(self);
      v136 = sel_getName(a2);
      v121 = 45;
      if (v119)
      {
        v121 = 43;
      }

      v117(6, "%c[%{public}s %{public}s]:%i device not registered", v121, v120, v136, 1361);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v122 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
    {
      v123 = object_getClass(self);
      if (class_isMetaClass(v123))
      {
        v124 = 43;
      }

      else
      {
        v124 = 45;
      }

      v125 = object_getClassName(self);
      v126 = sel_getName(a2);
      *buf = 67109890;
      v138 = v124;
      v139 = 2082;
      v140 = v125;
      v141 = 2082;
      v142 = v126;
      v143 = 1024;
      v144 = 1361;
      _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i device not registered", buf, 0x22u);
    }

    redirectState = [(NFRemoteAdminRedirectSession *)self redirectState];
    [redirectState setStep:3];
    v79 = 8;
  }

  else
  {
    if (_performReaderModeRequest)
    {
      goto LABEL_95;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v80 = NFLogGetLogger();
    if (v80)
    {
      v81 = v80;
      v82 = object_getClass(self);
      v83 = class_isMetaClass(v82);
      v84 = object_getClassName(self);
      v133 = sel_getName(a2);
      v85 = 45;
      if (v83)
      {
        v85 = 43;
      }

      v81(6, "%c[%{public}s %{public}s]:%i advancing to InProgress step", v85, v84, v133, 1358);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v86 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      v87 = object_getClass(self);
      if (class_isMetaClass(v87))
      {
        v88 = 43;
      }

      else
      {
        v88 = 45;
      }

      v89 = object_getClassName(self);
      v90 = sel_getName(a2);
      *buf = 67109890;
      v138 = v88;
      v139 = 2082;
      v140 = v89;
      v141 = 2082;
      v142 = v90;
      v143 = 1024;
      v144 = 1358;
      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i advancing to InProgress step", buf, 0x22u);
    }

    redirectState = [(NFRemoteAdminRedirectSession *)self redirectState];
    [redirectState incrementStep];
    v79 = 0;
  }

LABEL_105:

  redirectState5 = [(NFRemoteAdminRedirectSession *)self redirectState];
  [redirectState5 save];

  return v79;
}

- (unint64_t)_doReaderModeRedirect
{
  if (byte_10005BAB0 == 1)
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

      v5(6, "%c[%{public}s %{public}s]:%i [TSM] Performing reader mode redirect", v9, ClassName, Name, 1381);
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
      v171 = v12;
      v172 = 2082;
      v173 = object_getClassName(self);
      v174 = 2082;
      v175 = sel_getName(a2);
      v176 = 1024;
      v177 = 1381;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Performing reader mode redirect", buf, 0x22u);
    }
  }

  mach_continuous_time();
  if ([(NFRemoteAdminRedirectSession *)self aborted])
  {
    v13 = 0;
    v14 = 5;
    goto LABEL_14;
  }

  if (byte_10005BAB0 == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v36 = NFLogGetLogger();
    if (v36)
    {
      v37 = v36;
      v38 = object_getClass(self);
      v39 = class_isMetaClass(v38);
      v40 = object_getClassName(self);
      v161 = sel_getName(a2);
      v41 = 45;
      if (v39)
      {
        v41 = 43;
      }

      v37(6, "%c[%{public}s %{public}s]:%i [TSM] Opening reader session", v41, v40, v161, 1385);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v42 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
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
      v171 = v44;
      v172 = 2082;
      v173 = v45;
      v174 = 2082;
      v175 = v46;
      v176 = 1024;
      v177 = 1385;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Opening reader session", buf, 0x22u);
    }
  }

  _openSession = [(NFRemoteAdminReaderSession *)self _openSession];
  v14 = _openSession;
  v13 = 0;
  if (_openSession > 8)
  {
    switch(_openSession)
    {
      case 9:
        goto LABEL_14;
      case 12:
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v81 = NFLogGetLogger();
        if (v81)
        {
          v82 = v81;
          v83 = object_getClass(self);
          v84 = class_isMetaClass(v83);
          v85 = object_getClassName(self);
          v165 = sel_getName(a2);
          v86 = 45;
          if (v84)
          {
            v86 = 43;
          }

          v82(3, "%c[%{public}s %{public}s]:%i Bad Command APDU", v86, v85, v165, 1422);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v87 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
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
          v91 = sel_getName(a2);
          *buf = 67109890;
          v171 = v89;
          v172 = 2082;
          v173 = v90;
          v174 = 2082;
          v175 = v91;
          v176 = 1024;
          v177 = 1422;
          _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Bad Command APDU", buf, 0x22u);
        }

        v13 = 0;
        v14 = 10;
        goto LABEL_14;
      case 13:
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v48 = NFLogGetLogger();
        if (v48)
        {
          v49 = v48;
          v50 = object_getClass(self);
          v51 = class_isMetaClass(v50);
          v52 = object_getClassName(self);
          v162 = sel_getName(a2);
          v53 = 45;
          if (v51)
          {
            v53 = 43;
          }

          v49(6, "%c[%{public}s %{public}s]:%i Failed due to thermal protection", v53, v52, v162, 1427);
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
          *buf = 67109890;
          v171 = v56;
          v172 = 2082;
          v173 = v57;
          v174 = 2082;
          v175 = v58;
          v176 = 1024;
          v177 = 1427;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Failed due to thermal protection", buf, 0x22u);
        }

        v13 = 0;
        v14 = 13;
        goto LABEL_14;
    }

LABEL_72:
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v70 = NFLogGetLogger();
    if (v70)
    {
      v71 = v70;
      v72 = object_getClass(self);
      v73 = class_isMetaClass(v72);
      v74 = object_getClassName(self);
      v164 = sel_getName(a2);
      v75 = 45;
      if (v73)
      {
        v75 = 43;
      }

      v71(3, "%c[%{public}s %{public}s]:%i Failed to start reader session", v75, v74, v164, 1430);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v76 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
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
      v171 = v78;
      v172 = 2082;
      v173 = v79;
      v174 = 2082;
      v175 = v80;
      v176 = 1024;
      v177 = 1430;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to start reader session", buf, 0x22u);
    }

    v13 = 0;
    v14 = 7;
    goto LABEL_14;
  }

  if (_openSession != 2)
  {
    if (_openSession == 5)
    {
      goto LABEL_14;
    }

    goto LABEL_72;
  }

  v92 = 0;
  LOBYTE(v13) = 0;
  while (1)
  {
    if ((v13 & 1) == 0)
    {
      redirectState = [(NFRemoteAdminRedirectSession *)self redirectState];
      redirectUrl = [redirectState redirectUrl];
      v95 = [(NFRemoteAdminRedirectSession *)self openConnection:redirectUrl];

      if ((v95 & 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v97 = NFLogGetLogger();
        if (v97)
        {
          v98 = v97;
          v99 = object_getClass(self);
          v100 = class_isMetaClass(v99);
          v101 = object_getClassName(self);
          v166 = sel_getName(a2);
          v102 = 45;
          if (v100)
          {
            v102 = 43;
          }

          v98(3, "%c[%{public}s %{public}s]:%i Failed to open connection to SP-TSM", v102, v101, v166, 1394);
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
          v171 = v105;
          v172 = 2082;
          v173 = v106;
          v174 = 2082;
          v175 = v107;
          v176 = 1024;
          v177 = 1394;
          _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open connection to SP-TSM", buf, 0x22u);
        }

        v13 = 0;
        v14 = 3;
        goto LABEL_109;
      }
    }

    [(NFRemoteAdminReaderSession *)self _fireCardIngestionStatus:8];
    performRedirect = [(NFRemoteAdminRedirectSession *)self performRedirect];
    v13 = 1;
    if (performRedirect != 6)
    {
      break;
    }

    v92 = 0;
LABEL_122:
    if ([(NFRemoteAdminRedirectSession *)self aborted])
    {
      v14 = 6;
      goto LABEL_14;
    }
  }

  v14 = performRedirect;
  if (performRedirect == 1)
  {
    [(NFRemoteAdminRedirectSession *)self setRedirectStepError:3];
    v13 = 1;
    goto LABEL_14;
  }

LABEL_109:
  aborted = [(NFRemoteAdminRedirectSession *)self aborted];
  if (v14 == 3 && !aborted && v92 <= 2)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v109 = NFLogGetLogger();
    if (v109)
    {
      v110 = v109;
      v111 = object_getClass(self);
      v112 = class_isMetaClass(v111);
      v113 = object_getClassName(self);
      v114 = sel_getName(a2);
      v115 = 45;
      if (v112)
      {
        v115 = 43;
      }

      v110(6, "%c[%{public}s %{public}s]:%i Performing short retry in %d seconds", v115, v113, v114, 1410, dword_100040800[v92]);
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
      v120 = sel_getName(a2);
      v121 = dword_100040800[v92];
      *buf = 67110146;
      v171 = v118;
      v172 = 2082;
      v173 = v119;
      v174 = 2082;
      v175 = v120;
      v176 = 1024;
      v177 = 1410;
      v178 = 1024;
      LODWORD(v179) = v121;
      _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Performing short retry in %d seconds", buf, 0x28u);
    }

    sleep(dword_100040800[v92++]);
    goto LABEL_122;
  }

  if (v14 == 3 && v92 == 3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v124 = NFLogGetLogger();
    if (v124)
    {
      v125 = v124;
      v126 = object_getClass(self);
      v127 = class_isMetaClass(v126);
      v128 = object_getClassName(self);
      v167 = sel_getName(a2);
      v129 = 45;
      if (v127)
      {
        v129 = 43;
      }

      v125(6, "%c[%{public}s %{public}s]:%i Short retries expired", v129, v128, v167, 1417);
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
      v134 = sel_getName(a2);
      *buf = 67109890;
      v171 = v132;
      v172 = 2082;
      v173 = v133;
      v174 = 2082;
      v175 = v134;
      v176 = 1024;
      v177 = 1417;
      _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Short retries expired", buf, 0x22u);
    }

    v14 = 3;
  }

LABEL_14:
  if ([(NFRemoteAdminRedirectSession *)self redirectStepError]== 3 || [(NFRemoteAdminRedirectSession *)self aborted])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFLogGetLogger();
    if (v15)
    {
      v16 = v15;
      v17 = object_getClass(self);
      v18 = class_isMetaClass(v17);
      v19 = object_getClassName(self);
      v160 = sel_getName(a2);
      v20 = 45;
      if (v18)
      {
        v20 = 43;
      }

      v16(6, "%c[%{public}s %{public}s]:%i aborted", v20, v19, v160, 1436);
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
      *buf = 67109890;
      v171 = v23;
      v172 = 2082;
      v173 = v24;
      v174 = 2082;
      v175 = v25;
      v176 = 1024;
      v177 = 1436;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i aborted", buf, 0x22u);
    }

    if ([(NFRemoteAdminRedirectSession *)self abortedReason]== 6)
    {
      v14 = 7;
    }

    else
    {
      v14 = 1;
    }

    redirectState3 = [[NSString alloc] initWithFormat:@"%@(reason=%d)", @"Cancel", -[NFRemoteAdminRedirectSession abortedReason](self, "abortedReason")];
    redirectState2 = [(NFRemoteAdminRedirectSession *)self redirectState];
    [redirectState2 setIncompleteReason:redirectState3];

    goto LABEL_29;
  }

  if (v14)
  {
    if (v14 == 7)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v59 = NFLogGetLogger();
      if (v59)
      {
        v60 = v59;
        v61 = object_getClass(self);
        v62 = class_isMetaClass(v61);
        v63 = object_getClassName(self);
        v163 = sel_getName(a2);
        v64 = 45;
        if (v62)
        {
          v64 = 43;
        }

        v60(6, "%c[%{public}s %{public}s]:%i tag unavailable", v64, v63, v163, 1447);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v65 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
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
        v171 = v67;
        v172 = 2082;
        v173 = v68;
        v174 = 2082;
        v175 = v69;
        v176 = 1024;
        v177 = 1447;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i tag unavailable", buf, 0x22u);
      }

      redirectState3 = [(NFRemoteAdminRedirectSession *)self redirectState];
      [redirectState3 setIncompleteReason:@"CardNotFound"];
      v14 = 3;
LABEL_29:

      goto LABEL_30;
    }

    if ([(NFRemoteAdminRedirectSession *)self redirectStepError]== 29)
    {
      redirectState4 = [(NFRemoteAdminRedirectSession *)self redirectState];
      redirectState3 = redirectState4;
      v123 = @"ReaderTransceiveError";
LABEL_126:
      [redirectState4 setIncompleteReason:v123];
      v14 = 5;
      goto LABEL_29;
    }

    switch(v14)
    {
      case 0xDuLL:
        redirectState4 = [(NFRemoteAdminRedirectSession *)self redirectState];
        redirectState3 = redirectState4;
        v123 = @"ReaderModeProtection";
        goto LABEL_126;
      case 0xAuLL:
        redirectState3 = [(NFRemoteAdminRedirectSession *)self redirectState];
        [redirectState3 setIncompleteReason:@"CommandError"];
        v14 = 6;
        goto LABEL_29;
      case 9uLL:
        redirectState3 = [(NFRemoteAdminRedirectSession *)self redirectState];
        [redirectState3 setIncompleteReason:@"UnsupportedCardFound"];
        v14 = 4;
        goto LABEL_29;
    }

    if (!v13 || v14 <= 0xF && ((1 << v14) & 0x811C) != 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v135 = NFLogGetLogger();
      if (v135)
      {
        v136 = v135;
        v137 = object_getClass(self);
        v138 = class_isMetaClass(v137);
        v157 = object_getClassName(self);
        v168 = sel_getName(a2);
        v139 = 45;
        if (v138)
        {
          v139 = 43;
        }

        v136(3, "%c[%{public}s %{public}s]:%i ingestion failed, status=0x%lx", v139, v157, v168, 1472, v14);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v140 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
      {
        v141 = object_getClass(self);
        if (class_isMetaClass(v141))
        {
          v142 = 43;
        }

        else
        {
          v142 = 45;
        }

        v143 = object_getClassName(self);
        v144 = sel_getName(a2);
        *buf = 67110146;
        v171 = v142;
        v172 = 2082;
        v173 = v143;
        v174 = 2082;
        v175 = v144;
        v176 = 1024;
        v177 = 1472;
        v178 = 2048;
        v179 = v14;
        _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i ingestion failed, status=0x%lx", buf, 0x2Cu);
      }

      if (v14 != 8)
      {
        redirectState3 = [(NFRemoteAdminRedirectSession *)self redirectState];
        [redirectState3 setIncompleteReason:@"NetworkError"];
        v14 = 2;
        goto LABEL_29;
      }

      v14 = 2;
      goto LABEL_30;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v145 = NFLogGetLogger();
    if (v145)
    {
      v146 = v145;
      v147 = object_getClass(self);
      v148 = class_isMetaClass(v147);
      v158 = object_getClassName(self);
      v169 = sel_getName(a2);
      v149 = 45;
      if (v148)
      {
        v149 = 43;
      }

      v146(3, "%c[%{public}s %{public}s]:%i ingestion failed, status=0x%lx", v149, v158, v169, 1479, v14);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v150 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
    {
      v151 = object_getClass(self);
      if (class_isMetaClass(v151))
      {
        v152 = 43;
      }

      else
      {
        v152 = 45;
      }

      v153 = object_getClassName(self);
      v154 = sel_getName(a2);
      *buf = 67110146;
      v171 = v152;
      v172 = 2082;
      v173 = v153;
      v174 = 2082;
      v175 = v154;
      v176 = 1024;
      v177 = 1479;
      v178 = 2048;
      v179 = v14;
      _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i ingestion failed, status=0x%lx", buf, 0x2Cu);
    }

    v155 = [[NSString alloc] initWithFormat:@"Unknown error:%d", -[NFRemoteAdminRedirectSession redirectStepError](self, "redirectStepError")];
    redirectState5 = [(NFRemoteAdminRedirectSession *)self redirectState];
    [redirectState5 setIncompleteReason:v155];

    v14 = -1;
LABEL_31:
    [(NFRemoteAdminRedirectSession *)self closeConnection];
  }

  else
  {
LABEL_30:
    if (v13)
    {
      goto LABEL_31;
    }
  }

  [(NFRemoteAdminReaderSession *)self _closeSession];
  redirectState6 = [(NFRemoteAdminRedirectSession *)self redirectState];
  performanceMetrics = [redirectState6 performanceMetrics];
  mach_continuous_time();
  v30 = GetElapsedTimeInMillisecondsFromMachTime() / 1000.0;
  [performanceMetrics totalSessionTime];
  [performanceMetrics setTotalSessionTime:v31 + v30];

  redirectState7 = [(NFRemoteAdminRedirectSession *)self redirectState];
  [redirectState7 clearRetryInterval];

  redirectState8 = [(NFRemoteAdminRedirectSession *)self redirectState];
  [redirectState8 incrementStep];

  redirectState9 = [(NFRemoteAdminRedirectSession *)self redirectState];
  [redirectState9 save];

  return v14;
}

- (unint64_t)_doFinalTSMCheckIn
{
  if (byte_10005BAB0 == 1)
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

      v5(6, "%c[%{public}s %{public}s]:%i [TSM] Performing final TSM checkin", v9, ClassName, Name, 1504);
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
      v113 = v12;
      v114 = 2082;
      v115 = object_getClassName(self);
      v116 = 2082;
      v117 = sel_getName(a2);
      v118 = 1024;
      v119 = 1504;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Performing final TSM checkin", buf, 0x22u);
    }
  }

  v13 = 0;
  performCheckIn = 5;
  while (1)
  {
    connection = [(NFRemoteAdminRedirectSession *)self connection];

    if (!connection)
    {
      if (byte_10005BAB0 == 1)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v16 = NFLogGetLogger();
        if (v16)
        {
          v17 = v16;
          v18 = object_getClass(self);
          v19 = class_isMetaClass(v18);
          v20 = object_getClassName(self);
          v106 = sel_getName(a2);
          v21 = 45;
          if (v19)
          {
            v21 = 43;
          }

          v17(6, "%c[%{public}s %{public}s]:%i [TSM] Opening connection to TSM", v21, v20, v106, 1510);
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
          *buf = 67109890;
          v113 = v24;
          v114 = 2082;
          v115 = v25;
          v116 = 2082;
          v117 = v26;
          v118 = 1024;
          v119 = 1510;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Opening connection to TSM", buf, 0x22u);
        }
      }

      redirectState = [(NFRemoteAdminRedirectSession *)self redirectState];
      sourceUrl = [redirectState sourceUrl];
      v29 = [(NFRemoteAdminRedirectSession *)self openConnection:sourceUrl];

      if ((v29 & 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v30 = NFLogGetLogger();
        if (v30)
        {
          v31 = v30;
          v32 = object_getClass(self);
          v33 = class_isMetaClass(v32);
          v34 = object_getClassName(self);
          v107 = sel_getName(a2);
          v35 = 45;
          if (v33)
          {
            v35 = 43;
          }

          v31(3, "%c[%{public}s %{public}s]:%i Failed to open connection", v35, v34, v107, 1513);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v36 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
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
          v40 = sel_getName(a2);
          *buf = 67109890;
          v113 = v38;
          v114 = 2082;
          v115 = v39;
          v116 = 2082;
          v117 = v40;
          v118 = 1024;
          v119 = 1513;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open connection", buf, 0x22u);
        }

        performCheckIn = 3;
      }
    }

    connection2 = [(NFRemoteAdminRedirectSession *)self connection];

    if (connection2)
    {
      performCheckIn = [(NFRemoteAdminRedirectSession *)self performCheckIn];
      if (!performCheckIn)
      {
        if (v13 <= 2)
        {
          [(NFRemoteAdminRedirectSession *)self closeConnection];
          redirectState2 = [(NFRemoteAdminRedirectSession *)self redirectState];
          [redirectState2 incrementStep];

          performCheckIn = [(NFRemoteAdminRedirectSession *)self aborted];
          goto LABEL_104;
        }

LABEL_78:
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v79 = NFLogGetLogger();
        if (v79)
        {
          v80 = v79;
          v81 = object_getClass(self);
          v82 = class_isMetaClass(v81);
          v83 = object_getClassName(self);
          v110 = sel_getName(a2);
          v84 = 45;
          if (v82)
          {
            v84 = 43;
          }

          v80(5, "%c[%{public}s %{public}s]:%i Short retries expired", v84, v83, v110, 1537);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v73 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_88;
        }

        v85 = object_getClass(self);
        if (class_isMetaClass(v85))
        {
          v86 = 43;
        }

        else
        {
          v86 = 45;
        }

        v87 = object_getClassName(self);
        v88 = sel_getName(a2);
        *buf = 67109890;
        v113 = v86;
        v114 = 2082;
        v115 = v87;
        v116 = 2082;
        v117 = v88;
        v118 = 1024;
        v119 = 1537;
        v78 = "%c[%{public}s %{public}s]:%i Short retries expired";
        goto LABEL_87;
      }
    }

    if ([(NFRemoteAdminRedirectSession *)self aborted])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v67 = NFLogGetLogger();
      if (v67)
      {
        v68 = v67;
        v69 = object_getClass(self);
        v70 = class_isMetaClass(v69);
        v71 = object_getClassName(self);
        v109 = sel_getName(a2);
        v72 = 45;
        if (v70)
        {
          v72 = 43;
        }

        v68(5, "%c[%{public}s %{public}s]:%i Checkin failed and abort was requested; try again later", v72, v71, v109, 1524);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v73 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_88;
      }

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
      v77 = sel_getName(a2);
      *buf = 67109890;
      v113 = v75;
      v114 = 2082;
      v115 = v76;
      v116 = 2082;
      v117 = v77;
      v118 = 1024;
      v119 = 1524;
      v78 = "%c[%{public}s %{public}s]:%i Checkin failed and abort was requested; try again later";
LABEL_87:
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, v78, buf, 0x22u);
LABEL_88:

      [(NFRemoteAdminRedirectSession *)self closeConnection];
      goto LABEL_89;
    }

    if (performCheckIn != 3 || v13 > 2)
    {
      break;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v42 = NFLogGetLogger();
    if (v42)
    {
      v43 = v42;
      v44 = object_getClass(self);
      v45 = class_isMetaClass(v44);
      v46 = object_getClassName(self);
      v47 = sel_getName(a2);
      v48 = 45;
      if (v45)
      {
        v48 = 43;
      }

      v43(6, "%c[%{public}s %{public}s]:%i Performing short retry in %d seconds", v48, v46, v47, 1530, dword_100040800[v13]);
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
      v54 = dword_100040800[v13];
      *buf = 67110146;
      v113 = v51;
      v114 = 2082;
      v115 = v52;
      v116 = 2082;
      v117 = v53;
      v118 = 1024;
      v119 = 1530;
      v120 = 1024;
      v121 = v54;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Performing short retry in %d seconds", buf, 0x28u);
    }

    sleep(dword_100040800[v13++]);
LABEL_53:
    performCheckIn = 6;
    if ([(NFRemoteAdminRedirectSession *)self aborted])
    {
      [(NFRemoteAdminRedirectSession *)self closeConnection];
      performCheckIn = 6;
      goto LABEL_55;
    }
  }

  if (v13 > 2)
  {
    goto LABEL_78;
  }

  if (performCheckIn == 6)
  {
    goto LABEL_53;
  }

  [(NFRemoteAdminRedirectSession *)self closeConnection];
  if (performCheckIn == 8)
  {
    goto LABEL_102;
  }

  if (performCheckIn != 4)
  {
LABEL_55:
    if ([(NFRemoteAdminRedirectSession *)self aborted])
    {
      if (byte_10005BAB0 == 1)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v55 = NFLogGetLogger();
        if (v55)
        {
          v56 = v55;
          v57 = object_getClass(self);
          v58 = class_isMetaClass(v57);
          v59 = object_getClassName(self);
          v108 = sel_getName(a2);
          v60 = 45;
          if (v58)
          {
            v60 = 43;
          }

          v56(6, "%c[%{public}s %{public}s]:%i [TSM] Checkin failed and abort was requested; try again later", v60, v59, v108, 1562);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v61 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
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
          v113 = v63;
          v114 = 2082;
          v115 = v64;
          v116 = 2082;
          v117 = v65;
          v118 = 1024;
          v119 = 1562;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Checkin failed and abort was requested; try again later", buf, 0x22u);
        }
      }

      redirectState3 = [(NFRemoteAdminRedirectSession *)self redirectState];
      [redirectState3 incrementLongRetry];

      performCheckIn = 1;
      goto LABEL_104;
    }

LABEL_102:
    redirectState4 = [(NFRemoteAdminRedirectSession *)self redirectState];
    [redirectState4 incrementStep];

    goto LABEL_104;
  }

LABEL_89:
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v89 = NFLogGetLogger();
  if (v89)
  {
    v90 = v89;
    v91 = object_getClass(self);
    v92 = class_isMetaClass(v91);
    v93 = object_getClassName(self);
    v111 = sel_getName(a2);
    v94 = 45;
    if (v92)
    {
      v94 = 43;
    }

    v90(6, "%c[%{public}s %{public}s]:%i Incrementing long retry for TSM checkin", v94, v93, v111, 1547);
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
    v99 = sel_getName(a2);
    *buf = 67109890;
    v113 = v97;
    v114 = 2082;
    v115 = v98;
    v116 = 2082;
    v117 = v99;
    v118 = 1024;
    v119 = 1547;
    _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Incrementing long retry for TSM checkin", buf, 0x22u);
  }

  redirectState5 = [(NFRemoteAdminRedirectSession *)self redirectState];
  [redirectState5 incrementLongRetry];

  performCheckIn = 4;
LABEL_104:
  redirectState6 = [(NFRemoteAdminRedirectSession *)self redirectState];
  [redirectState6 save];

  return performCheckIn;
}

@end