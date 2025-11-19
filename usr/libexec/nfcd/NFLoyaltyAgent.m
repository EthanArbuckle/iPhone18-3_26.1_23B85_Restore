@interface NFLoyaltyAgent
- (NFLoyaltyAgent)init;
- (id)getTransactionEvent;
- (id)handleAPDU:(id)a3;
- (id)handleSelect:(id)a3;
- (void)authorize:(id)a3 withToken:(id)a4;
- (void)handleDeselect;
@end

@implementation NFLoyaltyAgent

- (NFLoyaltyAgent)init
{
  v6.receiver = self;
  v6.super_class = NFLoyaltyAgent;
  v2 = [(NFLoyaltyAgent *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    sessionData = v2->_sessionData;
    v2->_sessionData = v3;

    v2->_mobileCaps = 30;
    v2->_state = 0;
    v2->_lastStatus = -28672;
  }

  return v2;
}

- (id)getTransactionEvent
{
  v3 = [NFValueAddedServiceTransaction alloc];
  v4 = sub_100064004(self);
  v5 = [(NFValueAddedServiceTransaction *)v3 initWithDictionary:v4];

  return v5;
}

- (void)authorize:(id)a3 withToken:(id)a4
{
  v11 = a3;
  v6 = a4;
  sessionData = self->_sessionData;
  if (v11)
  {
    [(NSMutableDictionary *)self->_sessionData setObject:v11 forKey:@"PassData"];
  }

  else
  {
    v8 = objc_opt_new();
    [(NSMutableDictionary *)sessionData setObject:v8 forKey:@"PassData"];
  }

  v9 = self->_sessionData;
  if (v6)
  {
    [(NSMutableDictionary *)v9 setObject:v6 forKey:@"Token"];
  }

  else
  {
    v10 = objc_opt_new();
    [(NSMutableDictionary *)v9 setObject:v10 forKey:@"Token"];
  }
}

- (id)handleSelect:(id)a3
{
  v4 = a3;
  if (sub_10006640C(self, v4))
  {
    self->_state = 0;
    [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_1003393C8];
    v5 = sub_100063A94(self, v4);
    v6 = [NFResponseAPDU responseWithData:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)handleAPDU:(id)a3
{
  v5 = a3;
  self->_lastStatus = -28672;
  if (sub_10006640C(self, v5))
  {
    self->_state = 0;
    v6 = sub_100063A94(self, v5);
    v7 = [NFResponseAPDU responseWithData:v6];

    goto LABEL_139;
  }

  if (![v5 isGetVasDataCommand])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v72 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v76 = 45;
      if (isMetaClass)
      {
        v76 = 43;
      }

      v72(4, "%c[%{public}s %{public}s]:%i Unrecognized VAS command", v76, ClassName, Name, 655);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v77 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
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

      *buf = 67109890;
      v192 = v79;
      v193 = 2082;
      v194 = object_getClassName(self);
      v195 = 2082;
      v196 = sel_getName(a2);
      v197 = 1024;
      v198 = 655;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unrecognized VAS command", buf, 0x22u);
    }

    *buf = -32406;
    v80 = [[NSData alloc] initWithBytes:buf length:2];
    goto LABEL_138;
  }

  [(NSMutableDictionary *)self->_sessionData removeObjectsForKeys:&off_100338FA0];
  self->_state = 1;
  v8 = v5;
  v9 = sub_1000643D8(self, v8);
  self->_lastStatus = v9;
  if (v9 != 36864)
  {
    v81 = v9;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v82 = NFLogGetLogger();
    if (v82)
    {
      v83 = v82;
      v84 = object_getClass(self);
      v85 = class_isMetaClass(v84);
      v86 = object_getClassName(self);
      v167 = sel_getName("_handleGetVasData:");
      v87 = 45;
      if (v85)
      {
        v87 = 43;
      }

      v83(3, "%c[%{public}s %{public}s]:%i Get Vas Data request validation failed", v87, v86, v167, 436);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v88 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
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

      *buf = 67109890;
      v192 = v90;
      v193 = 2082;
      v194 = object_getClassName(self);
      v195 = 2082;
      v196 = sel_getName("_handleGetVasData:");
      v197 = 1024;
      v198 = 436;
      _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Get Vas Data request validation failed", buf, 0x22u);
    }

    v91 = objc_opt_new();
    v92 = v91;
    if (v91)
    {
      *buf = __rev16(v81);
      [v91 appendBytes:buf length:2];
    }

    self->_state = 4;
    lastStatus = self->_lastStatus;
    goto LABEL_136;
  }

  if ([v8 p2])
  {
    if ([v8 p2] != 1)
    {
      v92 = 0;
      goto LABEL_135;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFLogGetLogger();
    if (v10)
    {
      v11 = v10;
      v12 = object_getClass(self);
      v13 = class_isMetaClass(v12);
      v14 = object_getClassName(self);
      v15 = sel_getName("_handleGetVasData:");
      v16 = sub_100064004(self);
      v17 = 45;
      if (v13)
      {
        v17 = 43;
      }

      v11(6, "%c[%{public}s %{public}s]:%i Get Vas Data requested: %{public}@", v17, v14, v15, 457, v16);
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
      v22 = sel_getName("_handleGetVasData:");
      v23 = sub_100064004(self);
      *buf = 67110146;
      v192 = v20;
      v193 = 2082;
      v194 = v21;
      v195 = 2082;
      v196 = v22;
      v197 = 1024;
      v198 = 457;
      v199 = 2114;
      v200 = v23;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Get Vas Data requested: %{public}@", buf, 0x2Cu);
    }

    v24 = [(NSMutableDictionary *)self->_sessionData objectForKey:@"MerchantId"];
    v176 = [(NSMutableDictionary *)self->_sessionData objectForKey:@"Filter"];
    v177 = [(NSMutableDictionary *)self->_sessionData objectForKey:@"FilterType"];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFLogGetLogger();
    if (v25)
    {
      v26 = v25;
      v27 = object_getClass(self);
      v28 = class_isMetaClass(v27);
      v159 = object_getClassName(self);
      v163 = sel_getName("_lookupHostCardForRequest");
      v29 = 45;
      if (v28)
      {
        v29 = 43;
      }

      v26(6, "%c[%{public}s %{public}s]:%i Requested merchant id = %{public}@", v29, v159, v163, 392, v24);
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
      v34 = sel_getName("_lookupHostCardForRequest");
      *buf = 67110146;
      v192 = v32;
      v193 = 2082;
      v194 = v33;
      v195 = 2082;
      v196 = v34;
      v197 = 1024;
      v198 = 392;
      v199 = 2114;
      v200 = v24;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Requested merchant id = %{public}@", buf, 0x2Cu);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v35 = NFLogGetLogger();
    if (v35)
    {
      v36 = v35;
      v37 = object_getClass(self);
      v38 = class_isMetaClass(v37);
      v39 = object_getClassName(self);
      v164 = sel_getName("_lookupHostCardForRequest");
      v40 = 45;
      if (v38)
      {
        v40 = 43;
      }

      v36(6, "%c[%{public}s %{public}s]:%i Filter %{public}@  FilterType %{public}@", v40, v39, v164, 393, v176, v177);
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
      v45 = sel_getName("_lookupHostCardForRequest");
      *buf = 67110402;
      v192 = v43;
      v193 = 2082;
      v194 = v44;
      v195 = 2082;
      v196 = v45;
      v197 = 1024;
      v198 = 393;
      v199 = 2114;
      v200 = v176;
      v201 = 2114;
      v202 = v177;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Filter %{public}@  FilterType %{public}@", buf, 0x36u);
    }

    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
    v46 = self->_cardInfo;
    v47 = [(NSArray *)v46 countByEnumeratingWithState:&v179 objects:buf count:16];
    v175 = v24;
    v48 = v177;
    if (v47)
    {
      v49 = v47;
      v172 = v8;
      v50 = *v180;
      if (v176)
      {
        v51 = v177 == 0;
      }

      else
      {
        v51 = 1;
      }

      v52 = !v51;
      v174 = v52;
      while (2)
      {
        for (i = 0; i != v49; i = i + 1)
        {
          if (*v180 != v50)
          {
            objc_enumerationMutation(v46);
          }

          v54 = *(*(&v179 + 1) + 8 * i);
          v55 = [v54 identifier];
          v56 = [v24 isEqualToData:v55];

          if (v56)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v57 = NFLogGetLogger();
            if (v57)
            {
              v58 = v57;
              v59 = object_getClass(self);
              v60 = class_isMetaClass(v59);
              v61 = object_getClassName(self);
              v165 = sel_getName("_lookupHostCardForRequest");
              v62 = 45;
              if (v60)
              {
                v62 = 43;
              }

              v160 = v61;
              v24 = v175;
              v58(6, "%c[%{public}s %{public}s]:%i merchant id match", v62, v160, v165, 398);
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
              v67 = sel_getName("_lookupHostCardForRequest");
              *v183 = 67109890;
              v184 = v65;
              v185 = 2082;
              v186 = v66;
              v24 = v175;
              v187 = 2082;
              v188 = v67;
              v189 = 1024;
              v190 = 398;
              _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i merchant id match", v183, 0x22u);
            }

            if (!v174)
            {
LABEL_90:
              v70 = v54;
              goto LABEL_91;
            }

            if ([v177 intValue] == 1)
            {
              v68 = [v176 intValue];
              if (v68 == [v54 type])
              {
                goto LABEL_90;
              }
            }

            else
            {
              if ([v177 intValue] != 2)
              {
                goto LABEL_90;
              }

              v69 = [v176 intValue];
              if (([v54 type] & v69) != 0)
              {
                goto LABEL_90;
              }
            }
          }
        }

        v49 = [(NSArray *)v46 countByEnumeratingWithState:&v179 objects:buf count:16];
        if (v49)
        {
          continue;
        }

        break;
      }

      v70 = 0;
LABEL_91:
      v8 = v172;
      v48 = v177;
    }

    else
    {
      v70 = 0;
    }

    if (self->_cardInfo)
    {
      if (v70)
      {
        v97 = [v70 userInterventionRequired];
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v98 = NFLogGetLogger();
        v99 = v98;
        if (!v97)
        {
          if (v98)
          {
            v136 = object_getClass(self);
            v137 = class_isMetaClass(v136);
            v162 = object_getClassName(self);
            v171 = sel_getName("_handleGetVasData:");
            v138 = 45;
            if (v137)
            {
              v138 = 43;
            }

            v99(6, "%c[%{public}s %{public}s]:%i Found HostCard for transaction: %{public}@", v138, v162, v171, 484, v70);
          }

          v173 = v8;
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v139 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
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
            v143 = sel_getName("_handleGetVasData:");
            *buf = 67110146;
            v192 = v141;
            v193 = 2082;
            v194 = v142;
            v195 = 2082;
            v196 = v143;
            v197 = 1024;
            v198 = 484;
            v199 = 2114;
            v200 = v70;
            _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Found HostCard for transaction: %{public}@", buf, 0x2Cu);
          }

          v144 = [v70 data];
          v145 = [v70 token];
          [(NFLoyaltyAgent *)self authorize:v144 withToken:v145];

          v146 = [(NSMutableDictionary *)self->_sessionData objectForKey:@"PassData"];
          sel = [v146 length];
          v147 = v146;
          v148 = objc_opt_new();
          v149 = [(NSMutableDictionary *)self->_sessionData objectForKey:@"Token"];
          v150 = [NFTLV TLVWithTag:40746 value:v149];
          [v148 addObject:v150];
          v151 = [v147 length];
          v152 = [v147 bytes];

          if (v151)
          {
            if (v151 >= 0x80)
            {
              v153 = 128;
            }

            else
            {
              v153 = v151;
            }

            v154 = [[NSData alloc] initWithBytes:v152 length:v153];

            v155 = [NFTLV TLVWithTag:40743 value:v154];

            [v148 addObject:v155];
            v150 = v155;
            v149 = v154;
          }

          else
          {
            v153 = 0;
          }

          v156 = [NFTLV TLVWithTag:112 children:v148];

          v157 = [v156 asMutableData];
          v92 = v157;
          if (sel == v153)
          {
            v8 = v173;
            if (v157)
            {
              *buf = 144;
              [v157 appendBytes:buf length:2];
            }

            v158 = 3;
          }

          else
          {
            v8 = v173;
            if (v157)
            {
              *buf = __rev16((sel - v153) | 0x6100);
              [v157 appendBytes:buf length:2];
            }

            v158 = 2;
          }

          self->_state = v158;

          goto LABEL_134;
        }

        if (v98)
        {
          v100 = object_getClass(self);
          v101 = class_isMetaClass(v100);
          v161 = object_getClassName(self);
          v168 = sel_getName("_handleGetVasData:");
          v102 = 45;
          if (v101)
          {
            v102 = 43;
          }

          v99(6, "%c[%{public}s %{public}s]:%i HostCard requires user intervention: %{public}@", v102, v161, v168, 477, v70);
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
          v107 = sel_getName("_handleGetVasData:");
          *buf = 67110146;
          v192 = v105;
          v193 = 2082;
          v194 = v106;
          v195 = 2082;
          v196 = v107;
          v197 = 1024;
          v198 = 477;
          v199 = 2114;
          v200 = v70;
          _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i HostCard requires user intervention: %{public}@", buf, 0x2Cu);
        }

        v108 = objc_opt_new();
        v92 = v108;
        if (v108)
        {
          *buf = -31639;
          [v108 appendBytes:buf length:2];
        }

        v109 = 27012;
LABEL_133:
        self->_lastStatus = v109;
        self->_state = 4;
LABEL_134:

        goto LABEL_135;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v124 = NFLogGetLogger();
      if (v124)
      {
        v125 = v124;
        v126 = object_getClass(self);
        v127 = class_isMetaClass(v126);
        v128 = object_getClassName(self);
        v170 = sel_getName("_handleGetVasData:");
        v129 = 45;
        if (v127)
        {
          v129 = 43;
        }

        v125(6, "%c[%{public}s %{public}s]:%i No matching loyalty card found", v129, v128, v170, 489);
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
        v134 = sel_getName("_handleGetVasData:");
        *buf = 67109890;
        v192 = v132;
        v193 = 2082;
        v194 = v133;
        v195 = 2082;
        v196 = v134;
        v197 = 1024;
        v198 = 489;
        _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No matching loyalty card found", buf, 0x22u);
      }

      v92 = objc_opt_new();
      if (!v92)
      {
LABEL_132:
        v109 = 27267;
        goto LABEL_133;
      }
    }

    else
    {
      v110 = [(NSMutableDictionary *)self->_sessionData objectForKey:@"LastRequest"];
      v111 = [v110 BOOLValue];

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v112 = NFLogGetLogger();
      if (v112)
      {
        v113 = v112;
        v114 = object_getClass(self);
        v115 = class_isMetaClass(v114);
        v116 = object_getClassName(self);
        v169 = sel_getName("_handleGetVasData:");
        v117 = 45;
        if (v115)
        {
          v117 = 43;
        }

        v113(6, "%c[%{public}s %{public}s]:%i No loyalty cards authorized", v117, v116, v169, 464);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v118 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
      {
        v119 = object_getClass(self);
        if (class_isMetaClass(v119))
        {
          v120 = 43;
        }

        else
        {
          v120 = 45;
        }

        v121 = object_getClassName(self);
        v122 = sel_getName("_handleGetVasData:");
        *buf = 67109890;
        v192 = v120;
        v193 = 2082;
        v194 = v121;
        v195 = 2082;
        v196 = v122;
        v197 = 1024;
        v198 = 464;
        _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No loyalty cards authorized", buf, 0x22u);
      }

      v123 = objc_opt_new();
      v92 = v123;
      if (v111)
      {
        if (v123)
        {
          *buf = -30878;
          [v123 appendBytes:buf length:2];
        }

        v109 = 25223;
        goto LABEL_133;
      }

      if (!v123)
      {
        goto LABEL_132;
      }
    }

    *buf = -31894;
    [v92 appendBytes:buf length:2];
    goto LABEL_132;
  }

  sessionData = self->_sessionData;
  v95 = [NSNumber numberWithShort:1];
  [(NSMutableDictionary *)sessionData setObject:v95 forKey:@"TerminalMode"];

  v96 = objc_opt_new();
  v92 = v96;
  if (v96)
  {
    *buf = 144;
    [v96 appendBytes:buf length:2];
  }

  self->_state = 3;
  [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_1003393A0];
LABEL_135:
  lastStatus = self->_lastStatus;
  if (lastStatus != 36864)
  {
LABEL_136:
    [NFExceptionsCALogger postAnalyticsVASTransactionException:1 withSWStatus:lastStatus];
  }

  v80 = v92;

LABEL_138:
  v7 = [NFResponseAPDU responseWithData:v80];

LABEL_139:

  return v7;
}

- (void)handleDeselect
{
  if (self->_state == 3)
  {
    [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_1003393F0];
  }

  self->_state = 0;
  self->_isSelected = 0;
}

@end