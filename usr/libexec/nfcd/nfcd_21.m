id sub_10025B74C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 length];
  if (v5 == [v4 length])
  {
    v6 = [v3 mutableCopy];
    v7 = [v4 mutableCopy];
    if ([v6 length])
    {
      v8 = 0;
      do
      {
        if ([v7 length])
        {
          v9 = 0;
          while (1)
          {
            v10 = *([v6 mutableBytes] + v8);
            if (v10 == *([v7 mutableBytes] + v9))
            {
              break;
            }

            if ([v7 length] <= ++v9)
            {
              goto LABEL_10;
            }
          }

          *([v6 mutableBytes] + v8) = 0;
          *([v7 mutableBytes] + v9) = 0;
        }

LABEL_10:
        ++v8;
      }

      while ([v6 length] > v8);
    }

    v11 = [v6 isEqual:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id sub_10025B888(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, unsigned int a7)
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v258 = v12;
  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v18 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:");
      v22 = 43;
      if (!isMetaClass)
      {
        v22 = 45;
      }

      v18(6, "%c[%{public}s %{public}s]:%i setup key %{public}@ with contactless TC %{public}@ ; wired TC %{public}@", v22, ClassName, Name, 1125, v14, v12, v13);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = object_getClass(a1);
      if (class_isMetaClass(v24))
      {
        v25 = 43;
      }

      else
      {
        v25 = 45;
      }

      *buf = 67110658;
      v290 = v25;
      v291 = 2082;
      v292 = object_getClassName(a1);
      v293 = 2082;
      v294 = sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:");
      v295 = 1024;
      v296 = 1125;
      v297 = 2114;
      v298 = v14;
      v299 = 2114;
      v300 = v12;
      v301 = 2114;
      v302 = v13;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i setup key %{public}@ with contactless TC %{public}@ ; wired TC %{public}@", buf, 0x40u);
    }

    v259 = v16;
    v260 = v14;
    if (v12)
    {
      v265 = 0;
      v26 = v15;
      v27 = sub_100259B8C(a1, 1, v14, v15, &v265);
      v28 = v265;
      if (v28)
      {
        v29 = v28;
        v256 = v13;
        v253 = [NSError alloc];
        v30 = v29;
        v31 = [NSString stringWithUTF8String:"nfcd"];
        v32 = [v29 code];
        v287[0] = NSLocalizedDescriptionKey;
        if ([v29 code]> 75)
        {
          v33 = 76;
        }

        else
        {
          v33 = [v29 code];
        }

        v40 = [NSString stringWithUTF8String:off_10031CED8[v33]];
        v288[0] = v40;
        v288[1] = v29;
        v287[1] = NSUnderlyingErrorKey;
        v287[2] = @"Line";
        v288[2] = &off_100336F78;
        v287[3] = @"Method";
        v41 = [[NSString alloc] initWithFormat:@"%s", sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:")];
        v288[3] = v41;
        v287[4] = NSDebugDescriptionErrorKey;
        v42 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:"), 1134];
        v288[4] = v42;
        v43 = [NSDictionary dictionaryWithObjects:v288 forKeys:v287 count:5];
        v44 = [v253 initWithDomain:v31 code:v32 userInfo:v43];

LABEL_54:
        v13 = v256;
        v15 = v26;
        v16 = v259;
        v14 = v260;
LABEL_141:

        goto LABEL_142;
      }

      v34 = sub_10025B74C(v12, v27) ^ 1;

      v15 = v26;
      v16 = v259;
      if (!v13)
      {
        goto LABEL_20;
      }
    }

    else
    {
      LOBYTE(v34) = 0;
      if (!v13)
      {
LABEL_20:
        LOBYTE(v39) = 0;
        goto LABEL_24;
      }
    }

    v264 = 0;
    v26 = v15;
    v27 = sub_100259B8C(a1, 0, v14, v15, &v264);
    v35 = v264;
    if (v35)
    {
      v36 = v35;
      v256 = v13;
      v254 = [NSError alloc];
      v31 = [NSString stringWithUTF8String:"nfcd"];
      v37 = [v36 code];
      v285[0] = NSLocalizedDescriptionKey;
      v30 = v36;
      if ([v36 code]> 75)
      {
        v38 = 76;
      }

      else
      {
        v38 = [v36 code];
      }

      v40 = [NSString stringWithUTF8String:off_10031CED8[v38]];
      v286[0] = v40;
      v286[1] = v36;
      v285[1] = NSUnderlyingErrorKey;
      v285[2] = @"Line";
      v286[2] = &off_100336F90;
      v285[3] = @"Method";
      v41 = [[NSString alloc] initWithFormat:@"%s", sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:")];
      v286[3] = v41;
      v285[4] = NSDebugDescriptionErrorKey;
      v81 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:"), 1142];
      v286[4] = v81;
      v82 = [NSDictionary dictionaryWithObjects:v286 forKeys:v285 count:5];
      v44 = [v254 initWithDomain:v31 code:v37 userInfo:v82];

      goto LABEL_54;
    }

    v39 = sub_10025B74C(v13, v27) ^ 1;

    v15 = v26;
    v16 = v259;
LABEL_24:
    v45 = v34 | v39;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v46 = NFLogGetLogger();
    v47 = v46;
    if ((v45 & 1) == 0)
    {
      if (v46)
      {
        v73 = object_getClass(a1);
        v74 = class_isMetaClass(v73);
        v75 = object_getClassName(a1);
        v236 = sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:");
        v76 = 45;
        if (v74)
        {
          v76 = 43;
        }

        v232 = v75;
        v14 = v260;
        v47(6, "%c[%{public}s %{public}s]:%i TC already set - bailing", v76, v232, v236, 1148);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v30 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v77 = object_getClass(a1);
        if (class_isMetaClass(v77))
        {
          v78 = 43;
        }

        else
        {
          v78 = 45;
        }

        v79 = object_getClassName(a1);
        v80 = sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:");
        *buf = 67109890;
        v290 = v78;
        v291 = 2082;
        v292 = v79;
        v293 = 2082;
        v294 = v80;
        v295 = 1024;
        v296 = 1148;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i TC already set - bailing", buf, 0x22u);
      }

      v44 = 0;
      goto LABEL_141;
    }

    if (v46)
    {
      v48 = object_getClass(a1);
      v49 = class_isMetaClass(v48);
      v50 = object_getClassName(a1);
      v235 = sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:");
      v51 = 45;
      if (v49)
      {
        v51 = 43;
      }

      v231 = v50;
      v14 = v260;
      v47(6, "%c[%{public}s %{public}s]:%i TC are not set - changing", v51, v231, v235, 1152);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v52 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = object_getClass(a1);
      if (class_isMetaClass(v53))
      {
        v54 = 43;
      }

      else
      {
        v54 = 45;
      }

      v55 = object_getClassName(a1);
      v56 = sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:");
      *buf = 67109890;
      v290 = v54;
      v14 = v260;
      v291 = 2082;
      v292 = v55;
      v293 = 2082;
      v294 = v56;
      v295 = 1024;
      v296 = 1152;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i TC are not set - changing", buf, 0x22u);
    }

    v57 = [NSData NF_dataWithHexString:v14];
    v58 = [v15 identifier];
    v59 = sub_10025D930(a1, v58);
    v257 = v13;
    v250 = v57;
    v251 = v15;
    if (v16 && v59)
    {
      v60 = sub_10017F010(a1, v15, 0);

      if (v60 >= 5)
      {
        v244 = v12;
        v243 = v13;
        v248 = v57;
        v61 = v16;
        v62 = v15;
        v63 = objc_opt_new();
        v266 = 0;
        v64 = sub_1001F6428(a1, v61, v62, &v266);

        v242 = v266;
        if (v64)
        {
          v241 = v64;
          [v63 appendData:v64];
          v65 = [NFTLV TLVWithTag:80 value:v248];
          v66 = [v65 asData];
          [v63 appendData:v66];

          if (v12)
          {
            v67 = [NFTLV TLVWithTag:132 value:v244];

            v68 = [v67 asData];
            [v63 appendData:v68];

            v65 = v67;
          }

          v69 = v13;
          if (v13)
          {
            v70 = [NFTLV TLVWithTag:133 value:v243];

            v71 = [v70 asData];
            v72 = v63;
            [v63 appendData:v71];

            v65 = v70;
          }

          else
          {
            v72 = v63;
          }

          v143 = +[NFCommandAPDU buildAPDUHeaderWithClass:instruction:p1:p2:len:useExtendedLength:](NFCommandAPDU, "buildAPDUHeaderWithClass:instruction:p1:p2:len:useExtendedLength:", 128, 126, 0, 0, [v72 length], 1);
          [v143 appendData:v72];
          v144 = [NFCommandAPDU appendExpectedLength:0 usingExtendedLength:1 toAPDU:v143];

          v64 = v241;
          if (v144)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v148 = NFLogGetLogger();
            if (v148)
            {
              v149 = v148;
              v150 = object_getClass(a1);
              v151 = class_isMetaClass(v150);
              v152 = object_getClassName(a1);
              v238 = sel_getName("generateCommandForOperationApproval:wiredTransactionCodes:onApplet:authorization:endpointID:error:");
              v132 = !v151;
              v64 = v241;
              v153 = 45;
              if (!v132)
              {
                v153 = 43;
              }

              v149(3, "%c[%{public}s %{public}s]:%i Failed to add Le to command", v153, v152, v238, 1112);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v154 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
            {
              v155 = object_getClass(a1);
              if (class_isMetaClass(v155))
              {
                v156 = 43;
              }

              else
              {
                v156 = 45;
              }

              v157 = object_getClassName(a1);
              v158 = sel_getName("generateCommandForOperationApproval:wiredTransactionCodes:onApplet:authorization:endpointID:error:");
              *buf = 67109890;
              v290 = v156;
              v291 = 2082;
              v292 = v157;
              v64 = v241;
              v293 = 2082;
              v294 = v158;
              v295 = 1024;
              v296 = 1112;
              _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to add Le to command", buf, 0x22u);
            }
          }

          v141 = 0;
          v16 = v259;
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v127 = NFLogGetLogger();
          if (v127)
          {
            v128 = v127;
            v129 = object_getClass(a1);
            v130 = class_isMetaClass(v129);
            v131 = object_getClassName(a1);
            v237 = sel_getName("generateCommandForOperationApproval:wiredTransactionCodes:onApplet:authorization:endpointID:error:");
            v132 = !v130;
            v64 = 0;
            v133 = 45;
            if (!v132)
            {
              v133 = 43;
            }

            v128(3, "%c[%{public}s %{public}s]:%i Failed in Operation Approval", v133, v131, v237, 1068);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v134 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
          {
            v135 = object_getClass(a1);
            if (class_isMetaClass(v135))
            {
              v136 = 43;
            }

            else
            {
              v136 = 45;
            }

            v137 = v64;
            v138 = object_getClassName(a1);
            v139 = sel_getName("generateCommandForOperationApproval:wiredTransactionCodes:onApplet:authorization:endpointID:error:");
            *buf = 67109890;
            v290 = v136;
            v291 = 2082;
            v292 = v138;
            v64 = v137;
            v293 = 2082;
            v294 = v139;
            v295 = 1024;
            v296 = 1068;
            _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed in Operation Approval", buf, 0x22u);
          }

          v69 = v13;

          v140 = NFSharedSignpostLog();
          if (os_signpost_enabled(v140))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v140, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "OPERATION_APPROVAL_FAILED", &unk_1002E8B7A, buf, 2u);
          }

          v141 = v242;
          v142 = v242;
          v143 = 0;
          v144 = v242;
        }

        v102 = v141;
        v94 = [NSMutableData dataWithData:v143];

        v245 = @"Operation Approval Data";
        v13 = v69;
        v15 = v251;
        goto LABEL_110;
      }
    }

    else
    {
    }

    v83 = v12;
    v84 = v13;
    v85 = v57;
    v86 = objc_opt_new();
    v87 = [NFTLV TLVWithTag:80 value:v85];

    v88 = [v87 asData];
    [v86 appendData:v88];

    if (v12)
    {
      v89 = [NFTLV TLVWithTag:132 value:v83];

      v90 = [v89 asData];
      [v86 appendData:v90];

      v87 = v89;
    }

    if (v13)
    {
      v91 = [NFTLV TLVWithTag:133 value:v84];

      v92 = [v91 asData];
      [v86 appendData:v92];

      v87 = v91;
    }

    *buf = 32384;
    LOBYTE(v290) = [v86 length];
    v93 = [NSMutableData dataWithBytes:buf length:5];
    [v93 appendData:v86];

    v94 = [NSMutableData dataWithData:v93];

    v16 = v259;
    if (v259 && (sub_1001FC4EC(a1, v94, v15, 1, v259, a7), (v95 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v96 = v95;
      v249 = v94;
      v97 = [NSError alloc];
      v98 = [NSString stringWithUTF8String:"nfcd"];
      v99 = [v96 code];
      v283[0] = NSLocalizedDescriptionKey;
      if ([v96 code]> 75)
      {
        v100 = 76;
      }

      else
      {
        v100 = [v96 code];
      }

      v120 = [NSString stringWithUTF8String:off_10031CED8[v100]];
      v284[0] = v120;
      v255 = v96;
      v284[1] = v96;
      v283[1] = NSUnderlyingErrorKey;
      v283[2] = @"Line";
      v284[2] = &off_100336FA8;
      v283[3] = @"Method";
      v121 = [[NSString alloc] initWithFormat:@"%s", sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:")];
      v284[3] = v121;
      v283[4] = NSDebugDescriptionErrorKey;
      v122 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:"), 1184];
      v284[4] = v122;
      v123 = [NSDictionary dictionaryWithObjects:v284 forKeys:v283 count:5];
      v124 = v97;
      v125 = v98;
      v126 = v99;
    }

    else
    {
      v263 = 0;
      v101 = sub_100159994(a1, v15, &v263);
      v255 = v263;
      if (v101)
      {
        v262 = 0;
        [v94 appendBytes:&v262 length:1];
        v245 = @"Opaque Data";
        v102 = v255;
LABEL_110:
        v261 = v102;
        v249 = v94;
        v159 = sub_1001579EC(a1, v94, 0, &v261);
        v160 = v261;

        v161 = [NFResponseAPDU responseWithData:v159];

        if (v160)
        {
          v246 = v161;
          v255 = v160;
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v162 = NFLogGetLogger();
          if (v162)
          {
            v163 = v162;
            v164 = object_getClass(a1);
            v165 = class_isMetaClass(v164);
            v166 = object_getClassName(a1);
            v167 = sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:");
            v168 = [v15 identifier];
            v169 = 45;
            if (v165)
            {
              v169 = 43;
            }

            v163(3, "%c[%{public}s %{public}s]:%i SETUP_ENDPOINT to %{public}@ failed: %{public}@", v169, v166, v167, 1202, v168, v255);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v170 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
          {
            v171 = object_getClass(a1);
            if (class_isMetaClass(v171))
            {
              v172 = 43;
            }

            else
            {
              v172 = 45;
            }

            v173 = object_getClassName(a1);
            v174 = sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:");
            v175 = [v15 identifier];
            *buf = 67110402;
            v290 = v172;
            v291 = 2082;
            v292 = v173;
            v293 = 2082;
            v294 = v174;
            v295 = 1024;
            v296 = 1202;
            v297 = 2114;
            v298 = v175;
            v299 = 2114;
            v300 = v255;
            _os_log_impl(&_mh_execute_header, v170, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i SETUP_ENDPOINT to %{public}@ failed: %{public}@", buf, 0x36u);
          }

          v176 = [v15 identifier];
          v177 = [NSString stringWithFormat:@"Applet AID: %@, keyID: %@", v176, v260];
          v277[0] = @"Applet Identifier";
          v178 = [v15 identifier];
          v277[1] = @"FailureKey";
          v278[0] = v178;
          v278[1] = @"ttrContactless";
          v179 = [NSDictionary dictionaryWithObjects:v278 forKeys:v277 count:2];
          sub_100199A24(NFBugCapture, @"Failed to set endpoint transaction codes", v177, v179);

          if (v246)
          {
            v180 = [v246 status];
          }

          else
          {
            v180 = 0;
          }

          [NFExceptionsCALogger postAnalyticsContactlessErrorsEvent:2 status:v180 error:v255];
          v193 = [NSError alloc];
          v98 = [NSString stringWithUTF8String:"nfcd"];
          v194 = [v255 code];
          v275[0] = NSLocalizedDescriptionKey;
          if ([v255 code]> 75)
          {
            v195 = 76;
          }

          else
          {
            v195 = [v255 code];
          }

          v120 = [NSString stringWithUTF8String:off_10031CED8[v195]];
          v276[0] = v120;
          v276[1] = v255;
          v275[1] = NSUnderlyingErrorKey;
          v275[2] = @"Line";
          v276[2] = &off_100336FD8;
          v275[3] = @"Method";
          v121 = [[NSString alloc] initWithFormat:@"%s", sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:")];
          v276[3] = v121;
          v275[4] = NSDebugDescriptionErrorKey;
          v196 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:"), 1210];
          v276[4] = v196;
          v197 = [NSDictionary dictionaryWithObjects:v276 forKeys:v275 count:5];
          v44 = [v193 initWithDomain:v98 code:v194 userInfo:v197];

          v147 = v246;
          goto LABEL_139;
        }

        v147 = v161;
        if ([v161 status] == 28181)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v181 = NFLogGetLogger();
          if (v181)
          {
            v182 = v181;
            v183 = object_getClass(a1);
            v184 = class_isMetaClass(v183);
            v185 = object_getClassName(a1);
            v239 = sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:");
            v186 = 45;
            if (v184)
            {
              v186 = 43;
            }

            v182(5, "%c[%{public}s %{public}s]:%i Endpoint not found", v186, v185, v239, 1214);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v187 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
          {
            v188 = object_getClass(a1);
            if (class_isMetaClass(v188))
            {
              v189 = 43;
            }

            else
            {
              v189 = 45;
            }

            v190 = object_getClassName(a1);
            v191 = sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:");
            *buf = 67109890;
            v290 = v189;
            v291 = 2082;
            v292 = v190;
            v293 = 2082;
            v294 = v191;
            v295 = 1024;
            v296 = 1214;
            _os_log_impl(&_mh_execute_header, v187, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Endpoint not found", buf, 0x22u);
          }

          v192 = [NSError alloc];
          v98 = [NSString stringWithUTF8String:"nfcd"];
          v273 = NSLocalizedDescriptionKey;
          v120 = [NSString stringWithUTF8String:"Not found"];
          v274 = v120;
          v121 = [NSDictionary dictionaryWithObjects:&v274 forKeys:&v273 count:1];
          v44 = [v192 initWithDomain:v98 code:65 userInfo:v121];
          goto LABEL_133;
        }

        v14 = v260;
        if ([v161 status] == 36864)
        {
          v255 = 0;
          v44 = 0;
          goto LABEL_140;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v199 = NFLogGetLogger();
        if (v199)
        {
          v200 = v199;
          v201 = object_getClass(a1);
          v202 = class_isMetaClass(v201);
          v203 = object_getClassName(a1);
          v204 = sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:");
          v240 = [v147 status];
          v205 = 45;
          if (v202)
          {
            v205 = 43;
          }

          v233 = v203;
          v14 = v260;
          v200(3, "%c[%{public}s %{public}s]:%i Failed to execute %@, resp: 0x%04X", v205, v233, v204, 1220, v245, v240);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v206 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v206, OS_LOG_TYPE_ERROR))
        {
          v207 = object_getClass(a1);
          if (class_isMetaClass(v207))
          {
            v208 = 43;
          }

          else
          {
            v208 = 45;
          }

          v209 = object_getClassName(a1);
          v210 = sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:");
          v211 = [v147 status];
          *buf = 67110402;
          v290 = v208;
          v291 = 2082;
          v292 = v209;
          v293 = 2082;
          v294 = v210;
          v14 = v260;
          v295 = 1024;
          v296 = 1220;
          v297 = 2112;
          v298 = v245;
          v299 = 1024;
          LODWORD(v300) = v211;
          _os_log_impl(&_mh_execute_header, v206, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to execute %@, resp: 0x%04X", buf, 0x32u);
        }

        if ([v147 status] == 26880)
        {
          v212 = NSLocalizedDescriptionKey;
          v213 = NSDebugDescriptionErrorKey;
        }

        else
        {
          v247 = v147;
          v214 = [v147 status];
          v215 = [NSError alloc];
          v216 = [NSString stringWithUTF8String:"nfcd"];
          v271[0] = NSLocalizedDescriptionKey;
          v217 = [NSString stringWithUTF8String:"Command Error"];
          v272[0] = v217;
          v272[1] = &off_100336FF0;
          v271[1] = @"Line";
          v271[2] = @"Method";
          v218 = [[NSString alloc] initWithFormat:@"%s", sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:")];
          v272[2] = v218;
          v213 = NSDebugDescriptionErrorKey;
          v271[3] = NSDebugDescriptionErrorKey;
          v219 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:"), 1224];
          v272[3] = v219;
          [NSDictionary dictionaryWithObjects:v272 forKeys:v271 count:4];
          v221 = v220 = v14;
          v222 = [v215 initWithDomain:v216 code:16 userInfo:v221];
          [NFExceptionsCALogger postAnalyticsContactlessErrorsEvent:2 status:v214 error:v222];

          v223 = [v251 identifier];
          v224 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Applet AID: %@, keyID: %@, Response: 0x%04X", v223, v220, [v247 status]);
          v269[0] = @"Applet Identifier";
          v225 = [v251 identifier];
          v270[0] = v225;
          v269[1] = @"Response";
          v226 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%04X", [v247 status]);
          v269[2] = @"FailureKey";
          v270[1] = v226;
          v270[2] = @"ttrContactless";
          v227 = [NSDictionary dictionaryWithObjects:v270 forKeys:v269 count:3];
          sub_100199A24(NFBugCapture, @"Failed to set endpoint transaction codes", v224, v227);

          v212 = NSLocalizedDescriptionKey;
          v147 = v247;
        }

        v228 = [NSError alloc];
        v98 = [NSString stringWithUTF8String:"nfcd"];
        v267[0] = v212;
        v120 = [NSString stringWithUTF8String:"Command Error"];
        v268[0] = v120;
        v268[1] = &off_100337008;
        v267[1] = @"Line";
        v267[2] = @"Method";
        v121 = [[NSString alloc] initWithFormat:@"%s", sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:")];
        v268[2] = v121;
        v267[3] = v213;
        v229 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:"), 1231];
        v268[3] = v229;
        v230 = [NSDictionary dictionaryWithObjects:v268 forKeys:v267 count:4];
        v44 = [v228 initWithDomain:v98 code:16 userInfo:v230];

        v255 = 0;
        v16 = v259;
LABEL_139:

        v13 = v257;
        v14 = v260;
        v15 = v251;
LABEL_140:

        v30 = v255;
        goto LABEL_141;
      }

      v249 = v94;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v103 = NFLogGetLogger();
      if (v103)
      {
        v104 = v103;
        v105 = object_getClass(a1);
        v106 = class_isMetaClass(v105);
        v107 = object_getClassName(a1);
        v108 = sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:");
        v109 = [v15 identifier];
        v110 = 45;
        if (v106)
        {
          v110 = 43;
        }

        v104(3, "%c[%{public}s %{public}s]:%i Failed to select %{public}@", v110, v107, v108, 1190, v109);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v111 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
        v112 = object_getClass(a1);
        if (class_isMetaClass(v112))
        {
          v113 = 43;
        }

        else
        {
          v113 = 45;
        }

        v114 = object_getClassName(a1);
        v115 = sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:");
        v116 = [v15 identifier];
        *buf = 67110146;
        v290 = v113;
        v291 = 2082;
        v292 = v114;
        v293 = 2082;
        v294 = v115;
        v295 = 1024;
        v296 = 1190;
        v297 = 2114;
        v298 = v116;
        _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select %{public}@", buf, 0x2Cu);
      }

      v117 = [NSError alloc];
      v98 = [NSString stringWithUTF8String:"nfcd"];
      if (!v255)
      {
        v279[0] = NSLocalizedDescriptionKey;
        v120 = [NSString stringWithUTF8String:"Stack Error"];
        v280[0] = v120;
        v280[1] = &off_100336FC0;
        v279[1] = @"Line";
        v279[2] = @"Method";
        v121 = [[NSString alloc] initWithFormat:@"%s", sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:")];
        v280[2] = v121;
        v279[3] = NSDebugDescriptionErrorKey;
        v145 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:"), 1191];
        v280[3] = v145;
        v146 = [NSDictionary dictionaryWithObjects:v280 forKeys:v279 count:4];
        v44 = [v117 initWithDomain:v98 code:15 userInfo:v146];

        v147 = 0;
LABEL_133:
        v255 = 0;
        goto LABEL_139;
      }

      v118 = [v255 code];
      v281[0] = NSLocalizedDescriptionKey;
      if ([v255 code]> 75)
      {
        v119 = 76;
      }

      else
      {
        v119 = [v255 code];
      }

      v120 = [NSString stringWithUTF8String:off_10031CED8[v119]];
      v282[0] = v120;
      v282[1] = v255;
      v281[1] = NSUnderlyingErrorKey;
      v281[2] = @"Line";
      v282[2] = &off_100336FC0;
      v281[3] = @"Method";
      v121 = [[NSString alloc] initWithFormat:@"%s", sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:")];
      v282[3] = v121;
      v281[4] = NSDebugDescriptionErrorKey;
      v122 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("setupContactlessTransactionCodes:wiredTransactionCodes:forIdentifier:onApplet:authorization:uid:"), 1191];
      v282[4] = v122;
      v123 = [NSDictionary dictionaryWithObjects:v282 forKeys:v281 count:5];
      v124 = v117;
      v125 = v98;
      v126 = v118;
    }

    v44 = [v124 initWithDomain:v125 code:v126 userInfo:v123];

    v147 = 0;
    goto LABEL_139;
  }

  v44 = 0;
LABEL_142:

  return v44;
}

uint64_t sub_10025D930(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [[NSData alloc] initWithBytes:&unk_100297D71 length:13];
    v5 = [v4 NF_asHexString];

    v6 = [[NSData alloc] initWithBytes:&unk_100297D7E length:7];
    v7 = [v6 NF_asHexString];

    v8 = [[NSData alloc] initWithBytes:&unk_100297D85 length:7];
    v9 = [v8 NF_asHexString];

    v10 = [[NSData alloc] initWithBytes:&unk_100297D8C length:9];
    v11 = [v10 NF_asHexString];

    if ([v3 hasPrefix:v7] & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", v9) & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", v5))
    {
      v12 = 1;
    }

    else
    {
      v12 = [v3 hasPrefix:v11];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id sub_10025DA88(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v177 = a4;
  if (!a1)
  {
    goto LABEL_117;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v9 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    Name = sel_getName("activateKeys:forIdentifiers:onApplet:");
    if (a2)
    {
      v14 = &stru_10031EA18;
    }

    else
    {
      v14 = @"de";
    }

    v149 = v14;
    v15 = 45;
    if (isMetaClass)
    {
      v15 = 43;
    }

    v9(6, "%c[%{public}s %{public}s]:%i Temporary %{public}@activation for keys %{public}@", v15, ClassName, Name, 1263, v149, v7);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = object_getClass(a1);
    if (class_isMetaClass(v17))
    {
      v18 = 43;
    }

    else
    {
      v18 = 45;
    }

    v19 = object_getClassName(a1);
    v20 = sel_getName("activateKeys:forIdentifiers:onApplet:");
    *buf = 67110402;
    if (a2)
    {
      v21 = &stru_10031EA18;
    }

    else
    {
      v21 = @"de";
    }

    v214 = v18;
    v215 = 2082;
    v216 = v19;
    v217 = 2082;
    v218 = v20;
    v219 = 1024;
    v220 = 1263;
    v221 = 2114;
    v222 = v21;
    v223 = 2114;
    v224 = v7;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Temporary %{public}@activation for keys %{public}@", buf, 0x36u);
  }

  v178 = 0;
  v22 = sub_100159994(a1, v177, &v178);
  v23 = v178;
  if ((v22 & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v29 = NFLogGetLogger();
    if (v29)
    {
      v30 = v29;
      v31 = object_getClass(a1);
      v32 = class_isMetaClass(v31);
      v33 = object_getClassName(a1);
      v34 = sel_getName("activateKeys:forIdentifiers:onApplet:");
      v35 = [v177 identifier];
      v36 = 45;
      if (v32)
      {
        v36 = 43;
      }

      v30(3, "%c[%{public}s %{public}s]:%i Failed to select %{public}@", v36, v33, v34, 1268, v35);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = object_getClass(a1);
      if (class_isMetaClass(v38))
      {
        v39 = 43;
      }

      else
      {
        v39 = 45;
      }

      v40 = object_getClassName(a1);
      v41 = sel_getName("activateKeys:forIdentifiers:onApplet:");
      v42 = [v177 identifier];
      *buf = 67110146;
      v214 = v39;
      v215 = 2082;
      v216 = v40;
      v217 = 2082;
      v218 = v41;
      v219 = 1024;
      v220 = 1268;
      v221 = 2114;
      v222 = v42;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select %{public}@", buf, 0x2Cu);
    }

    v43 = [NSError alloc];
    v44 = [NSString stringWithUTF8String:"nfcd"];
    if (v23)
    {
      v45 = [v23 code];
      v192[0] = NSLocalizedDescriptionKey;
      v46 = v7;
      if ([v23 code] > 75)
      {
        v47 = 76;
      }

      else
      {
        v47 = [v23 code];
      }

      v49 = [NSString stringWithUTF8String:off_10031CED8[v47]];
      v193[0] = v49;
      v193[1] = v23;
      v192[1] = NSUnderlyingErrorKey;
      v192[2] = @"Line";
      v193[2] = &off_100337020;
      v192[3] = @"Method";
      v50 = [[NSString alloc] initWithFormat:@"%s", sel_getName("activateKeys:forIdentifiers:onApplet:")];
      v193[3] = v50;
      v192[4] = NSDebugDescriptionErrorKey;
      v51 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("activateKeys:forIdentifiers:onApplet:"), 1269];
      v193[4] = v51;
      v53 = [NSDictionary dictionaryWithObjects:v193 forKeys:v192 count:5];
      v52 = [v43 initWithDomain:v44 code:v45 userInfo:v53];

      v26 = v44;
      v7 = v46;
    }

    else
    {
      v190[0] = NSLocalizedDescriptionKey;
      v26 = [NSString stringWithUTF8String:"Stack Error"];
      v191[0] = v26;
      v191[1] = &off_100337020;
      v190[1] = @"Line";
      v190[2] = @"Method";
      v49 = [[NSString alloc] initWithFormat:@"%s", sel_getName("activateKeys:forIdentifiers:onApplet:")];
      v191[2] = v49;
      v190[3] = NSDebugDescriptionErrorKey;
      v50 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("activateKeys:forIdentifiers:onApplet:"), 1269];
      v191[3] = v50;
      v51 = [NSDictionary dictionaryWithObjects:v191 forKeys:v190 count:4];
      v52 = [v43 initWithDomain:v44 code:15 userInfo:v51];
      v23 = v44;
    }

LABEL_66:

    goto LABEL_67;
  }

  if (!v7 || ![(__CFString *)v7 count])
  {
    v24 = sub_100258BD0(a1, a2);

    if (!v24)
    {
      goto LABEL_117;
    }

    v25 = [NSError alloc];
    v26 = [NSString stringWithUTF8String:"nfcd"];
    v27 = [v24 code];
    v188[0] = NSLocalizedDescriptionKey;
    v172 = v7;
    if ([v24 code] > 75)
    {
      v48 = 76;
    }

    else
    {
      v48 = [v24 code];
    }

    v49 = [NSString stringWithUTF8String:off_10031CED8[v48]];
    v189[0] = v49;
    v189[1] = v24;
    v188[1] = NSUnderlyingErrorKey;
    v188[2] = @"Line";
    v189[2] = &off_100337038;
    v188[3] = @"Method";
    v50 = [[NSString alloc] initWithFormat:@"%s", sel_getName("activateKeys:forIdentifiers:onApplet:")];
    v189[3] = v50;
    v188[4] = NSDebugDescriptionErrorKey;
    v51 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("activateKeys:forIdentifiers:onApplet:"), 1275];
    v189[4] = v51;
    v54 = v189;
    v55 = v188;
LABEL_65:
    v79 = [NSDictionary dictionaryWithObjects:v54 forKeys:v55 count:5];
    v52 = [v25 initWithDomain:v26 code:v27 userInfo:v79];

    v23 = v24;
    v7 = v172;
    goto LABEL_66;
  }

  v24 = sub_100258BD0(a1, 0);

  if (v24)
  {
    v25 = [NSError alloc];
    v26 = [NSString stringWithUTF8String:"nfcd"];
    v27 = [v24 code];
    v186[0] = NSLocalizedDescriptionKey;
    v172 = v7;
    if ([v24 code] > 75)
    {
      v28 = 76;
    }

    else
    {
      v28 = [v24 code];
    }

    v49 = [NSString stringWithUTF8String:off_10031CED8[v28]];
    v187[0] = v49;
    v187[1] = v24;
    v186[1] = NSUnderlyingErrorKey;
    v186[2] = @"Line";
    v187[2] = &off_100337050;
    v186[3] = @"Method";
    v50 = [[NSString alloc] initWithFormat:@"%s", sel_getName("activateKeys:forIdentifiers:onApplet:")];
    v187[3] = v50;
    v186[4] = NSDebugDescriptionErrorKey;
    v51 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("activateKeys:forIdentifiers:onApplet:"), 1281];
    v187[4] = v51;
    v54 = v187;
    v55 = v186;
    goto LABEL_65;
  }

  if (!a2)
  {
    goto LABEL_117;
  }

  v56 = v7;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v57 = NFLogGetLogger();
  if (v57)
  {
    v58 = v57;
    v59 = object_getClass(a1);
    v60 = class_isMetaClass(v59);
    v146 = object_getClassName(a1);
    v147 = sel_getName("_setupEndpoints:activate:");
    v61 = 43;
    if (!v60)
    {
      v61 = 45;
    }

    v58(6, "%c[%{public}s %{public}s]:%i %{public}@ %{public}@activation for endpoints %{public}@", v61, v146, v147, 869, @"temporary", &stru_10031EA18, v56);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v62 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    v63 = object_getClass(a1);
    if (class_isMetaClass(v63))
    {
      v64 = 43;
    }

    else
    {
      v64 = 45;
    }

    v65 = object_getClassName(a1);
    v66 = sel_getName("_setupEndpoints:activate:");
    *buf = 67110658;
    v214 = v64;
    v215 = 2082;
    v216 = v65;
    v217 = 2082;
    v218 = v66;
    v219 = 1024;
    v220 = 869;
    v221 = 2114;
    v222 = @"temporary";
    v223 = 2114;
    v224 = &stru_10031EA18;
    v225 = 2114;
    v226 = v56;
    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ %{public}@activation for endpoints %{public}@", buf, 0x40u);
  }

  v67 = [NFTLV TLVWithTag:131 unsignedChar:1];
  v171 = [v67 asData];
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  obj = v56;
  v68 = [(__CFString *)obj countByEnumeratingWithState:&v180 objects:buf count:16];
  if (!v68)
  {
    v71 = 0;
    v70 = 0;
    v23 = 0;
    goto LABEL_114;
  }

  v69 = v68;
  v70 = 0;
  v71 = 0;
  v166 = *v181;
  v173 = v7;
  v164 = v67;
  while (2)
  {
    v72 = 0;
    v73 = v70;
    v74 = v71;
    do
    {
      if (*v181 != v166)
      {
        objc_enumerationMutation(obj);
      }

      v75 = *(*(&v180 + 1) + 8 * v72);
      v76 = [NSData NF_dataWithHexString:v75];
      v77 = [[NSMutableData alloc] initWithCapacity:{objc_msgSend(v76, "length") + 7}];
      v175 = v76;
      v174 = [NFTLV TLVWithTag:80 value:v76];
      v78 = [v174 asData];
      [v77 appendData:v78];

      [v77 appendData:v171];
      v179 = v73;
      v71 = sub_100158334(a1, 128, 126, 0, 0, v77, &v179);
      v176 = v179;

      if (!v71)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v81 = NFLogGetLogger();
        if (v81)
        {
          v82 = v81;
          v83 = object_getClass(a1);
          v84 = class_isMetaClass(v83);
          v85 = object_getClassName(a1);
          v148 = sel_getName("_setupEndpoints:activate:");
          v86 = 45;
          if (v84)
          {
            v86 = 43;
          }

          v82(3, "%c[%{public}s %{public}s]:%i Command (%02X) failed; error: %{public}@", v86, v85, v148, 892, 126, v176);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v87 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
        {
          v88 = object_getClass(a1);
          if (class_isMetaClass(v88))
          {
            v89 = 43;
          }

          else
          {
            v89 = 45;
          }

          v90 = object_getClassName(a1);
          v91 = sel_getName("_setupEndpoints:activate:");
          *v209 = 67110402;
          *&v209[4] = v89;
          *v210 = 2082;
          *&v210[2] = v90;
          *&v210[10] = 2082;
          *&v210[12] = v91;
          *&v210[20] = 1024;
          *&v210[22] = 892;
          *&v210[26] = 1024;
          *&v210[28] = 126;
          v211 = 2114;
          v212 = v176;
          _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Command (%02X) failed; error: %{public}@", v209, 0x32u);
        }

        v92 = [NSString stringWithFormat:@"No Response from SE for endpoint keyID: %@", v75];
        sub_100199A24(NFBugCapture, @"Unable to set endpoint visibility", v92, &off_10033A098);

        v93 = [NSError alloc];
        v94 = [NSString stringWithUTF8String:"nfcd"];
        if (v176)
        {
          v161 = v93;
          v157 = [v176 code];
          v204 = NSLocalizedDescriptionKey;
          v95 = v94;
          if ([v176 code] > 75)
          {
            v96 = 76;
          }

          else
          {
            v96 = [v176 code];
          }

          v7 = v173;
          v67 = v164;
          v152 = [NSString stringWithUTF8String:off_10031CED8[v96]];
          *v209 = v152;
          *v210 = v176;
          v205 = NSUnderlyingErrorKey;
          v206 = @"Line";
          *&v210[8] = &off_100336EA0;
          v207 = @"Method";
          v123 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_setupEndpoints:activate:")];
          *&v210[16] = v123;
          v208 = NSDebugDescriptionErrorKey;
          v124 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_setupEndpoints:activate:"), 899];
          *&v210[24] = v124;
          v125 = [NSDictionary dictionaryWithObjects:v209 forKeys:&v204 count:5];
          v126 = [v161 initWithDomain:v95 code:v157 userInfo:v125];
          [NFExceptionsCALogger postAnalyticsContactlessErrorsEvent:0 status:0 error:v126];

          v127 = [NSError alloc];
          v159 = [NSString stringWithUTF8String:"nfcd"];
          v128 = [v176 code];
          v194 = NSLocalizedDescriptionKey;
          v153 = v128;
          if ([v176 code] > 75)
          {
            v129 = 76;
          }

          else
          {
            v129 = [v176 code];
          }

          v130 = v175;
          v170 = [NSString stringWithUTF8String:off_10031CED8[v129]];
          v199 = v170;
          v200 = v176;
          v195 = NSUnderlyingErrorKey;
          v196 = @"Line";
          v201 = &off_100336ED0;
          v197 = @"Method";
          v163 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_setupEndpoints:activate:")];
          v202 = v163;
          v198 = NSDebugDescriptionErrorKey;
          v121 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_setupEndpoints:activate:"), 901];
          v203 = v121;
          v122 = [NSDictionary dictionaryWithObjects:&v199 forKeys:&v194 count:5];
          v120 = v159;
          v23 = [v127 initWithDomain:v159 code:v153 userInfo:v122];
          goto LABEL_113;
        }

        v204 = NSLocalizedDescriptionKey;
        v169 = [NSString stringWithUTF8String:"Command Error"];
        *v209 = v169;
        *v210 = &off_100336EB8;
        v205 = @"Line";
        v206 = @"Method";
        v112 = v93;
        v113 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_setupEndpoints:activate:")];
        *&v210[8] = v113;
        v207 = NSDebugDescriptionErrorKey;
        v114 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_setupEndpoints:activate:"), 900];
        *&v210[16] = v114;
        v115 = [NSDictionary dictionaryWithObjects:v209 forKeys:&v204 count:4];
        v116 = v94;
        v117 = [v112 initWithDomain:v94 code:16 userInfo:v115];
        [NFExceptionsCALogger postAnalyticsContactlessErrorsEvent:0 status:0 error:v117];

        v118 = [NSError alloc];
        v119 = [NSString stringWithUTF8String:"nfcd"];
        v194 = NSLocalizedDescriptionKey;
        v170 = [NSString stringWithUTF8String:"Command Error"];
        v199 = v170;
        v200 = &off_100336ED0;
        v195 = @"Line";
        v196 = @"Method";
        v163 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_setupEndpoints:activate:")];
        v201 = v163;
        v197 = NSDebugDescriptionErrorKey;
        v120 = v119;
        v121 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_setupEndpoints:activate:"), 901];
        v202 = v121;
        v122 = [NSDictionary dictionaryWithObjects:&v199 forKeys:&v194 count:4];
        v23 = [v118 initWithDomain:v120 code:16 userInfo:v122];
        v176 = 0;
        v7 = v173;
        v67 = v164;
LABEL_112:
        v130 = v175;
LABEL_113:

        v70 = v176;
        goto LABEL_114;
      }

      if ([v71 status] != 36864)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v97 = NFLogGetLogger();
        if (v97)
        {
          v98 = v97;
          v99 = object_getClass(a1);
          v100 = class_isMetaClass(v99);
          v101 = object_getClassName(a1);
          v167 = sel_getName("_setupEndpoints:activate:");
          v150 = [v71 status];
          v102 = 45;
          if (v100)
          {
            v102 = 43;
          }

          v98(3, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", v102, v101, v167, 904, v150);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v103 = NFSharedLogGetLogger();
        v7 = v173;
        v67 = v164;
        if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
        {
          v104 = object_getClass(a1);
          if (class_isMetaClass(v104))
          {
            v105 = 43;
          }

          else
          {
            v105 = 45;
          }

          v168 = object_getClassName(a1);
          v106 = sel_getName("_setupEndpoints:activate:");
          v107 = [v71 status];
          *v209 = 67110146;
          *&v209[4] = v105;
          *v210 = 2082;
          *&v210[2] = v168;
          *&v210[10] = 2082;
          *&v210[12] = v106;
          *&v210[20] = 1024;
          *&v210[22] = 904;
          *&v210[26] = 1024;
          *&v210[28] = v107;
          _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", v209, 0x28u);
        }

        if ([v71 status] != 26880)
        {
          v162 = [v71 status];
          v108 = [NSError alloc];
          v109 = [NSString stringWithUTF8String:"nfcd"];
          v110 = v109;
          v158 = v108;
          if (v176)
          {
            v154 = v109;
            v151 = [v176 code];
            v204 = NSLocalizedDescriptionKey;
            if ([v176 code] > 75)
            {
              v111 = 76;
            }

            else
            {
              v111 = [v176 code];
            }

            v156 = [NSString stringWithUTF8String:off_10031CED8[v111]];
            *v209 = v156;
            *v210 = v176;
            v205 = NSUnderlyingErrorKey;
            v206 = @"Line";
            *&v210[8] = &off_100336EE8;
            v207 = @"Method";
            v155 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_setupEndpoints:activate:")];
            *&v210[16] = v155;
            v208 = NSDebugDescriptionErrorKey;
            v131 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_setupEndpoints:activate:"), 909];
            *&v210[24] = v131;
            v132 = [NSDictionary dictionaryWithObjects:v209 forKeys:&v204 count:5];
            v133 = v158;
            v135 = v151;
            v110 = v154;
            v134 = v154;
          }

          else
          {
            v204 = NSLocalizedDescriptionKey;
            v156 = [NSString stringWithUTF8String:"Command Error"];
            *v209 = v156;
            *v210 = &off_100336F00;
            v205 = @"Line";
            v206 = @"Method";
            v155 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_setupEndpoints:activate:")];
            *&v210[8] = v155;
            v207 = NSDebugDescriptionErrorKey;
            v131 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_setupEndpoints:activate:"), 910];
            *&v210[16] = v131;
            v132 = [NSDictionary dictionaryWithObjects:v209 forKeys:&v204 count:4];
            v133 = v158;
            v134 = v110;
            v135 = 16;
          }

          v136 = [v133 initWithDomain:v134 code:v135 userInfo:v132];
          [NFExceptionsCALogger postAnalyticsContactlessErrorsEvent:0 status:v162 error:v136];

          v137 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Non-9000 Response from SE for endpoint keyID: %@, Response: 0x%04X", v75, [v71 status]);
          sub_100199A24(NFBugCapture, @"Unable to set endpoint visibility", v137, &off_10033A0C0);
        }

        v138 = [NSError alloc];
        v120 = [NSString stringWithUTF8String:"nfcd"];
        if (v176)
        {
          v160 = v138;
          v139 = [v176 code];
          v194 = NSLocalizedDescriptionKey;
          if ([v176 code] > 75)
          {
            v140 = 76;
          }

          else
          {
            v140 = [v176 code];
          }

          v170 = [NSString stringWithUTF8String:off_10031CED8[v140]];
          v199 = v170;
          v200 = v176;
          v195 = NSUnderlyingErrorKey;
          v196 = @"Line";
          v201 = &off_100336F18;
          v197 = @"Method";
          v163 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_setupEndpoints:activate:")];
          v202 = v163;
          v198 = NSDebugDescriptionErrorKey;
          v121 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_setupEndpoints:activate:"), 917];
          v203 = v121;
          v122 = [NSDictionary dictionaryWithObjects:&v199 forKeys:&v194 count:5];
          v23 = [v160 initWithDomain:v120 code:v139 userInfo:v122];
        }

        else
        {
          v194 = NSLocalizedDescriptionKey;
          v170 = [NSString stringWithUTF8String:"Command Error"];
          v199 = v170;
          v200 = &off_100336F18;
          v195 = @"Line";
          v196 = @"Method";
          v163 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_setupEndpoints:activate:")];
          v201 = v163;
          v197 = NSDebugDescriptionErrorKey;
          v121 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_setupEndpoints:activate:"), 917];
          v202 = v121;
          v122 = [NSDictionary dictionaryWithObjects:&v199 forKeys:&v194 count:4];
          v23 = [v138 initWithDomain:v120 code:16 userInfo:v122];
          v176 = 0;
        }

        goto LABEL_112;
      }

      v72 = v72 + 1;
      v70 = v176;
      v73 = v176;
      v74 = v71;
    }

    while (v69 != v72);
    v69 = [(__CFString *)obj countByEnumeratingWithState:&v180 objects:buf count:16];
    v23 = 0;
    v7 = v173;
    v67 = v164;
    if (v69)
    {
      continue;
    }

    break;
  }

LABEL_114:

  if (v23)
  {
    v141 = [NSError alloc];
    v26 = [NSString stringWithUTF8String:"nfcd"];
    v142 = [v23 code];
    v184[0] = NSLocalizedDescriptionKey;
    v143 = v7;
    if ([v23 code] > 75)
    {
      v144 = 76;
    }

    else
    {
      v144 = [v23 code];
    }

    v49 = [NSString stringWithUTF8String:off_10031CED8[v144]];
    v185[0] = v49;
    v185[1] = v23;
    v184[1] = NSUnderlyingErrorKey;
    v184[2] = @"Line";
    v185[2] = &off_100337068;
    v184[3] = @"Method";
    v50 = [[NSString alloc] initWithFormat:@"%s", sel_getName("activateKeys:forIdentifiers:onApplet:")];
    v185[3] = v50;
    v184[4] = NSDebugDescriptionErrorKey;
    v51 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("activateKeys:forIdentifiers:onApplet:"), 1285];
    v185[4] = v51;
    v145 = [NSDictionary dictionaryWithObjects:v185 forKeys:v184 count:5];
    v52 = [v141 initWithDomain:v26 code:v142 userInfo:v145];

    v7 = v143;
    goto LABEL_66;
  }

LABEL_117:
  v52 = 0;
LABEL_67:

  return v52;
}

id sub_10025F700(void *a1, void *a2)
{
  v3 = a2;
  v97 = v3;
  if (a1)
  {
    v4 = v3;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("resetVolatileConfigOnApplet:");
      v11 = [v4 identifier];
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v6(6, "%c[%{public}s %{public}s]:%i resetting keys on %{public}@", v12, ClassName, Name, 1293, v11);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = object_getClass(a1);
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      v16 = object_getClassName(a1);
      v17 = sel_getName("resetVolatileConfigOnApplet:");
      v18 = [v4 identifier];
      *buf = 67110146;
      *&buf[4] = v15;
      *v110 = 2082;
      *&v110[2] = v16;
      *&v110[10] = 2082;
      *&v110[12] = v17;
      *&v110[20] = 1024;
      *&v110[22] = 1293;
      *&v110[26] = 2114;
      *&v110[28] = v18;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i resetting keys on %{public}@", buf, 0x2Cu);
    }

    v98 = 0;
    v19 = sub_100159994(a1, v4, &v98);
    v20 = v98;
    if ((v19 & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v25 = NFLogGetLogger();
      if (v25)
      {
        v26 = v25;
        v27 = object_getClass(a1);
        v28 = class_isMetaClass(v27);
        v29 = object_getClassName(a1);
        v30 = sel_getName("resetVolatileConfigOnApplet:");
        v31 = [v4 identifier];
        v32 = 45;
        if (v28)
        {
          v32 = 43;
        }

        v26(3, "%c[%{public}s %{public}s]:%i Failed to select %{public}@", v32, v29, v30, 1298, v31);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v33 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = object_getClass(a1);
        if (class_isMetaClass(v34))
        {
          v35 = 43;
        }

        else
        {
          v35 = 45;
        }

        v36 = object_getClassName(a1);
        v37 = sel_getName("resetVolatileConfigOnApplet:");
        v38 = [v4 identifier];
        *buf = 67110146;
        *&buf[4] = v35;
        *v110 = 2082;
        *&v110[2] = v36;
        *&v110[10] = 2082;
        *&v110[12] = v37;
        *&v110[20] = 1024;
        *&v110[22] = 1298;
        *&v110[26] = 2114;
        *&v110[28] = v38;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select %{public}@", buf, 0x2Cu);
      }

      v39 = [NSError alloc];
      v22 = [NSString stringWithUTF8String:"nfcd"];
      if (v20)
      {
        v40 = [v20 code];
        v102[0] = NSLocalizedDescriptionKey;
        if ([v20 code] > 75)
        {
          v41 = 76;
        }

        else
        {
          v41 = [v20 code];
        }

        v75 = [NSString stringWithUTF8String:off_10031CED8[v41]];
        v103[0] = v75;
        v103[1] = v20;
        v102[1] = NSUnderlyingErrorKey;
        v102[2] = @"Line";
        v103[2] = &off_100337080;
        v102[3] = @"Method";
        v76 = [[NSString alloc] initWithFormat:@"%s", sel_getName("resetVolatileConfigOnApplet:")];
        v103[3] = v76;
        v102[4] = NSDebugDescriptionErrorKey;
        v77 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("resetVolatileConfigOnApplet:"), 1299];
        v103[4] = v77;
        v78 = [NSDictionary dictionaryWithObjects:v103 forKeys:v102 count:5];
        v24 = [v39 initWithDomain:v22 code:v40 userInfo:v78];
      }

      else
      {
        v100[0] = NSLocalizedDescriptionKey;
        v57 = [NSString stringWithUTF8String:"Stack Error"];
        v101[0] = v57;
        v101[1] = &off_100337080;
        v100[1] = @"Line";
        v100[2] = @"Method";
        v58 = [[NSString alloc] initWithFormat:@"%s", sel_getName("resetVolatileConfigOnApplet:")];
        v101[2] = v58;
        v100[3] = NSDebugDescriptionErrorKey;
        v59 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("resetVolatileConfigOnApplet:"), 1299];
        v101[3] = v59;
        v60 = [NSDictionary dictionaryWithObjects:v101 forKeys:v100 count:4];
        v24 = [v39 initWithDomain:v22 code:15 userInfo:v60];
      }

      goto LABEL_64;
    }

    v96 = [NFTLV TLVWithTag:144 value:0];
    v21 = [v96 asData];
    v99 = 0;
    v22 = sub_100158334(a1, 128, 52, 0, 0, v21, &v99);
    v23 = v99;

    if (v22)
    {
      if ([v22 status] == 36864)
      {
        v24 = 0;
LABEL_63:

LABEL_64:
        goto LABEL_65;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v61 = NFLogGetLogger();
      if (v61)
      {
        v62 = v61;
        v63 = object_getClass(a1);
        v64 = class_isMetaClass(v63);
        v65 = object_getClassName(a1);
        v66 = sel_getName("_resetVolatileVisibilityOnAllEndpoints");
        v94 = [v22 status];
        v67 = 45;
        if (v64)
        {
          v67 = 43;
        }

        v62(3, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", v67, v65, v66, 815, v94);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v68 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        v69 = object_getClass(a1);
        if (class_isMetaClass(v69))
        {
          v70 = 43;
        }

        else
        {
          v70 = 45;
        }

        v71 = object_getClassName(a1);
        v72 = sel_getName("_resetVolatileVisibilityOnAllEndpoints");
        v73 = [v22 status];
        *buf = 67110146;
        *&buf[4] = v70;
        *v110 = 2082;
        *&v110[2] = v71;
        *&v110[10] = 2082;
        *&v110[12] = v72;
        *&v110[20] = 1024;
        *&v110[22] = 815;
        *&v110[26] = 1024;
        *&v110[28] = v73;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", buf, 0x28u);
      }

      v53 = [NSError alloc];
      v54 = [NSString stringWithUTF8String:"nfcd"];
      if (v23)
      {
        v95 = v53;
        v55 = [v23 code];
        v104 = NSLocalizedDescriptionKey;
        if ([v23 code] > 75)
        {
          v74 = 76;
        }

        else
        {
          v74 = [v23 code];
        }

        v79 = [NSString stringWithUTF8String:off_10031CED8[v74]];
        *buf = v79;
        *v110 = v23;
        v105 = NSUnderlyingErrorKey;
        v106 = @"Line";
        *&v110[8] = &off_100336DF8;
        v107 = @"Method";
        v80 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_resetVolatileVisibilityOnAllEndpoints")];
        *&v110[16] = v80;
        v108 = NSDebugDescriptionErrorKey;
        v84 = [NSString alloc];
        v85 = sel_getName("_resetVolatileVisibilityOnAllEndpoints");
        v86 = 817;
LABEL_61:
        v87 = [v84 initWithFormat:@"%s:%d", v85, v86];
        *&v110[24] = v87;
        v88 = [NSDictionary dictionaryWithObjects:buf forKeys:&v104 count:5];
        v89 = v95;
        v90 = v54;
        v91 = v55;
        goto LABEL_62;
      }

      v104 = NSLocalizedDescriptionKey;
      v79 = [NSString stringWithUTF8String:"Command Error"];
      *buf = v79;
      *v110 = &off_100336DF8;
      v105 = @"Line";
      v106 = @"Method";
      v80 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_resetVolatileVisibilityOnAllEndpoints")];
      *&v110[8] = v80;
      v107 = NSDebugDescriptionErrorKey;
      v81 = [NSString alloc];
      v82 = sel_getName("_resetVolatileVisibilityOnAllEndpoints");
      v83 = 817;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v42 = NFLogGetLogger();
      if (v42)
      {
        v43 = v42;
        v44 = object_getClass(a1);
        v45 = class_isMetaClass(v44);
        v46 = object_getClassName(a1);
        v93 = sel_getName("_resetVolatileVisibilityOnAllEndpoints");
        v47 = 45;
        if (v45)
        {
          v47 = 43;
        }

        v43(3, "%c[%{public}s %{public}s]:%i Command (%02X) failed; error: %{public}@", v47, v46, v93, 811, 52, v23);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v48 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 = object_getClass(a1);
        if (class_isMetaClass(v49))
        {
          v50 = 43;
        }

        else
        {
          v50 = 45;
        }

        v51 = object_getClassName(a1);
        v52 = sel_getName("_resetVolatileVisibilityOnAllEndpoints");
        *buf = 67110402;
        *&buf[4] = v50;
        *v110 = 2082;
        *&v110[2] = v51;
        *&v110[10] = 2082;
        *&v110[12] = v52;
        *&v110[20] = 1024;
        *&v110[22] = 811;
        *&v110[26] = 1024;
        *&v110[28] = 52;
        *&v110[32] = 2114;
        *&v110[34] = v23;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Command (%02X) failed; error: %{public}@", buf, 0x32u);
      }

      v53 = [NSError alloc];
      v54 = [NSString stringWithUTF8String:"nfcd"];
      if (v23)
      {
        v95 = v53;
        v55 = [v23 code];
        v104 = NSLocalizedDescriptionKey;
        if ([v23 code] > 75)
        {
          v56 = 76;
        }

        else
        {
          v56 = [v23 code];
        }

        v79 = [NSString stringWithUTF8String:off_10031CED8[v56]];
        *buf = v79;
        *v110 = v23;
        v105 = NSUnderlyingErrorKey;
        v106 = @"Line";
        *&v110[8] = &off_100336DE0;
        v107 = @"Method";
        v80 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_resetVolatileVisibilityOnAllEndpoints")];
        *&v110[16] = v80;
        v108 = NSDebugDescriptionErrorKey;
        v84 = [NSString alloc];
        v85 = sel_getName("_resetVolatileVisibilityOnAllEndpoints");
        v86 = 812;
        goto LABEL_61;
      }

      v104 = NSLocalizedDescriptionKey;
      v79 = [NSString stringWithUTF8String:"Command Error"];
      *buf = v79;
      *v110 = &off_100336DE0;
      v105 = @"Line";
      v106 = @"Method";
      v80 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_resetVolatileVisibilityOnAllEndpoints")];
      *&v110[8] = v80;
      v107 = NSDebugDescriptionErrorKey;
      v81 = [NSString alloc];
      v82 = sel_getName("_resetVolatileVisibilityOnAllEndpoints");
      v83 = 812;
    }

    v87 = [v81 initWithFormat:@"%s:%d", v82, v83];
    *&v110[16] = v87;
    v88 = [NSDictionary dictionaryWithObjects:buf forKeys:&v104 count:4];
    v89 = v53;
    v90 = v54;
    v91 = 16;
LABEL_62:
    v24 = [v89 initWithDomain:v90 code:v91 userInfo:v88];

    goto LABEL_63;
  }

  v24 = 0;
LABEL_65:

  return v24;
}

id *sub_10026044C(id *a1, void *a2, void *a3, int a4)
{
  if (a1)
  {
    a1 = sub_10025A988(a1, a2, a3, a4, 0);
    v4 = vars8;
  }

  return a1;
}

void sub_100260480(void *a1)
{
  v1 = a1;
  v2 = [NSSet alloc];
  v3 = objc_opt_class();
  v12 = [v2 initWithObjects:{v3, objc_opt_class(), 0}];
  v4 = [NSSet alloc];
  v5 = objc_opt_class();
  v6 = [v4 initWithObjects:{v5, objc_opt_class(), 0}];
  [v1 setClasses:v6 forSelector:"startTNEPDeviceWithServices:optionalRecords:callback:" argumentIndex:0 ofReply:0];

  [v1 setClasses:v12 forSelector:"startTNEPDeviceWithServices:optionalRecords:callback:" argumentIndex:1 ofReply:0];
  v7 = [NSSet alloc];
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  [v1 setClasses:v9 forSelector:"tnepTagDeviceSendNDEFMessage:callback:" argumentIndex:0 ofReply:0];

  v10 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  [v1 setClasses:v10 forSelector:"tnepReaderSend:callback:" argumentIndex:0 ofReply:0];

  v11 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  [v1 setClasses:v11 forSelector:"tnepReaderSend:callback:" argumentIndex:0 ofReply:1];
}

void sub_100260674(void *a1)
{
  v1 = a1;
  v2 = [NSSet alloc];
  v3 = objc_opt_class();
  v5 = [v2 initWithObjects:{v3, objc_opt_class(), 0}];
  [v1 setClasses:v5 forSelector:"tnepTagDeviceSelected:respondHandler:" argumentIndex:1 ofReply:1];
  v4 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  [v1 setClasses:v4 forSelector:"tnepTagDeviceNDEFMessageReceived:" argumentIndex:0 ofReply:0];
}

NSXPCInterface *sub_10026076C()
{
  objc_opt_self();

  return [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFCCardSessionInterface];
}

NSXPCInterface *sub_1002607A4()
{
  objc_opt_self();

  return [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFCCardSessionCallbackInterface];
}

id sub_1002607E8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (!a1)
  {
    goto LABEL_30;
  }

  if (v5)
  {
    v55 = a3;
    v7 = [v5 identifier];
    v8 = [v6 packageIdentifier];
    v9 = [v6 moduleIdentifier];
    v57 = 0;
    v10 = [AppletTranslator getAppletStateAndHistory:v7 withPackage:v8 withModule:v9 withTransceiver:a1 withError:&v57];
    v11 = v57;

    v12 = [v10 objectForKey:@"didError"];
    if ([v12 BOOLValue])
    {
      v13 = [v6 identifier];
      v14 = [v6 packageIdentifier];
      v15 = [NSString stringWithFormat:@"Applet AID: %@, Applet PID: %@", v13, v14];
      v58[0] = @"Applet Identifier";
      v16 = [v6 identifier];
      v58[1] = @"FailureKey";
      v59[0] = v16;
      v59[1] = @"ttrATL";
      [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:2];
      v17 = v10;
      v19 = v18 = v12;
      sub_100199B74(NFBugCapture, @"Error while getting Applet State from ATL", v15, v19);

      v12 = v18;
      v10 = v17;

      v20 = [v6 identifier];
      [NFExceptionsCALogger postAnalyticsATLFailureEvent:0 aid:v20 error:v11];
    }

    if (v11 && [v11 code] == 5)
    {
      v54 = v12;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v22 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("getATLAppletState:error:");
        v26 = 45;
        if (isMetaClass)
        {
          v26 = 43;
        }

        v22(4, "%c[%{public}s %{public}s]:%i Applet is badly behaved, needs to be powercycled", v26, ClassName, Name, 54);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v27 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = object_getClass(a1);
        if (class_isMetaClass(v28))
        {
          v29 = 43;
        }

        else
        {
          v29 = 45;
        }

        v30 = object_getClassName(a1);
        v31 = sel_getName("getATLAppletState:error:");
        *buf = 67109890;
        v63 = v29;
        v64 = 2082;
        v65 = v30;
        v66 = 2082;
        v67 = v31;
        v68 = 1024;
        v69 = 54;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Applet is badly behaved, needs to be powercycled", buf, 0x22u);
      }

      v32 = sub_10015C818(a1);

      if (v32 && [v32 code])
      {
        v11 = v32;
      }

      else
      {

        v46 = [v6 identifier];
        v47 = [v6 packageIdentifier];
        v48 = [v6 moduleIdentifier];
        v56 = 0;
        v49 = [AppletTranslator getAppletStateAndHistory:v46 withPackage:v47 withModule:v48 withTransceiver:a1 withError:&v56];
        v11 = v56;

        v10 = v49;
      }

      v12 = v54;
    }

    if (v55)
    {
      v50 = v11;
      *v55 = v11;
    }

    goto LABEL_35;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v33 = NFLogGetLogger();
  if (v33)
  {
    v34 = v33;
    v35 = object_getClass(a1);
    v36 = class_isMetaClass(v35);
    v37 = object_getClassName(a1);
    v53 = sel_getName("getATLAppletState:error:");
    v38 = 45;
    if (v36)
    {
      v38 = 43;
    }

    v34(3, "%c[%{public}s %{public}s]:%i Failed to find applet", v38, v37, v53, 29);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v39 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    v40 = object_getClass(a1);
    if (class_isMetaClass(v40))
    {
      v41 = 43;
    }

    else
    {
      v41 = 45;
    }

    *buf = 67109890;
    v63 = v41;
    v64 = 2082;
    v65 = object_getClassName(a1);
    v66 = 2082;
    v67 = sel_getName("getATLAppletState:error:");
    v68 = 1024;
    v69 = 29;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to find applet", buf, 0x22u);
  }

  if (!a3)
  {
LABEL_30:
    v10 = 0;
    goto LABEL_36;
  }

  v42 = [NSError alloc];
  v11 = [NSString stringWithUTF8String:"nfcd"];
  v60[0] = NSLocalizedDescriptionKey;
  v12 = [NSString stringWithUTF8String:"Invalid Parameter"];
  v61[0] = v12;
  v61[1] = &off_1003370F8;
  v60[1] = @"Line";
  v60[2] = @"Method";
  v43 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getATLAppletState:error:")];
  v61[2] = v43;
  v60[3] = NSDebugDescriptionErrorKey;
  v44 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getATLAppletState:error:"), 30];
  v61[3] = v44;
  v45 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:4];
  *a3 = [v42 initWithDomain:v11 code:10 userInfo:v45];

  v10 = 0;
LABEL_35:

LABEL_36:

  return v10;
}

id sub_100260EA4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (v5)
    {
      v7 = [v5 identifier];
      v8 = [v6 packageIdentifier];
      v9 = [v6 moduleIdentifier];
      v41 = 0;
      v10 = [AppletTranslator GetAppletProperties:v7 withPackage:v8 withModule:v9 withTransceiver:a1 withError:&v41];
      v11 = v41;

      if (v11)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v13 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("getATLAppletProperties:error:");
          v16 = 45;
          if (isMetaClass)
          {
            v16 = 43;
          }

          v13(4, "%c[%{public}s %{public}s]:%i Could not get the Applet properties... %{public}@", v16, ClassName, Name, 87, v11);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v17 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = object_getClass(a1);
          if (class_isMetaClass(v18))
          {
            v19 = 43;
          }

          else
          {
            v19 = 45;
          }

          v20 = object_getClassName(a1);
          v21 = sel_getName("getATLAppletProperties:error:");
          *buf = 67110146;
          v43 = v19;
          v44 = 2082;
          v45 = v20;
          v46 = 2082;
          v47 = v21;
          v48 = 1024;
          v49 = 87;
          v50 = 2114;
          v51 = v11;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not get the Applet properties... %{public}@", buf, 0x2Cu);
        }
      }

      if (a3)
      {
        v22 = v11;
        *a3 = v11;
      }

      goto LABEL_27;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFLogGetLogger();
    if (v23)
    {
      v24 = v23;
      v25 = object_getClass(a1);
      v26 = class_isMetaClass(v25);
      v27 = object_getClassName(a1);
      v40 = sel_getName("getATLAppletProperties:error:");
      v28 = 45;
      if (v26)
      {
        v28 = 43;
      }

      v24(3, "%c[%{public}s %{public}s]:%i Failed to find applet", v28, v27, v40, 75);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v29 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = object_getClass(a1);
      if (class_isMetaClass(v30))
      {
        v31 = 43;
      }

      else
      {
        v31 = 45;
      }

      *buf = 67109890;
      v43 = v31;
      v44 = 2082;
      v45 = object_getClassName(a1);
      v46 = 2082;
      v47 = sel_getName("getATLAppletProperties:error:");
      v48 = 1024;
      v49 = 75;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to find applet", buf, 0x22u);
    }

    if (a3)
    {
      v32 = [NSError alloc];
      v11 = [NSString stringWithUTF8String:"nfcd"];
      v52[0] = NSLocalizedDescriptionKey;
      v33 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v53[0] = v33;
      v53[1] = &off_100337110;
      v52[1] = @"Line";
      v52[2] = @"Method";
      v34 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getATLAppletProperties:error:")];
      v53[2] = v34;
      v52[3] = NSDebugDescriptionErrorKey;
      v35 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getATLAppletProperties:error:"), 76];
      v53[3] = v35;
      v36 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:4];
      *a3 = [v32 initWithDomain:v11 code:10 userInfo:v36];

      v10 = 0;
LABEL_27:

      goto LABEL_28;
    }
  }

  v10 = 0;
LABEL_28:

  return v10;
}

id sub_100261364(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (v5)
    {
      v7 = [v5 identifier];
      v8 = [v6 packageIdentifier];
      v9 = [v6 moduleIdentifier];
      v49 = 0;
      v10 = [AppletTranslator getServiceProviderData:v7 withPackage:v8 withModule:v9 withTransceiver:a1 withError:&v49];
      v11 = v49;

      if (v11)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v13 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("getATLServiceProviderDataForAID:error:");
          v16 = 45;
          if (isMetaClass)
          {
            v16 = 43;
          }

          v13(4, "%c[%{public}s %{public}s]:%i Could not get service provider data... %{public}@", v16, ClassName, Name, 121, v11);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v17 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = object_getClass(a1);
          if (class_isMetaClass(v18))
          {
            v19 = 43;
          }

          else
          {
            v19 = 45;
          }

          v20 = object_getClassName(a1);
          v21 = sel_getName("getATLServiceProviderDataForAID:error:");
          *buf = 67110146;
          v51 = v19;
          v52 = 2082;
          v53 = v20;
          v54 = 2082;
          v55 = v21;
          v56 = 1024;
          v57 = 121;
          v58 = 2114;
          v59 = v11;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not get service provider data... %{public}@", buf, 0x2Cu);
        }
      }

      if (a3)
      {
        v22 = v11;
        *a3 = v11;
      }

      goto LABEL_27;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFLogGetLogger();
    if (v23)
    {
      v24 = v23;
      v25 = object_getClass(a1);
      v26 = class_isMetaClass(v25);
      v27 = object_getClassName(a1);
      v47 = sel_getName("getATLServiceProviderDataForAID:error:");
      v28 = 45;
      if (v26)
      {
        v28 = 43;
      }

      v24(3, "%c[%{public}s %{public}s]:%i Failed to find applet", v28, v27, v47, 99);
    }

    v48 = a3;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v29 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = object_getClass(a1);
      if (class_isMetaClass(v30))
      {
        v31 = 43;
      }

      else
      {
        v31 = 45;
      }

      *buf = 67109890;
      v51 = v31;
      v52 = 2082;
      v53 = object_getClassName(a1);
      v54 = 2082;
      v55 = sel_getName("getATLServiceProviderDataForAID:error:");
      v56 = 1024;
      v57 = 99;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to find applet", buf, 0x22u);
    }

    sub_100199B74(NFBugCapture, @"Error while getting Applet Properties", @"Applet AID: nil, Applet PID: nil", &off_10033A0E8);
    v32 = [NSError alloc];
    v33 = [NSString stringWithUTF8String:"nfcd"];
    v62[0] = NSLocalizedDescriptionKey;
    v34 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v63[0] = v34;
    v63[1] = &off_100337128;
    v62[1] = @"Line";
    v62[2] = @"Method";
    v35 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getATLServiceProviderDataForAID:error:")];
    v63[2] = v35;
    v62[3] = NSDebugDescriptionErrorKey;
    v36 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getATLServiceProviderDataForAID:error:"), 108];
    v63[3] = v36;
    v37 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:4];
    v38 = [v32 initWithDomain:v33 code:10 userInfo:v37];
    [NFExceptionsCALogger postAnalyticsATLFailureEvent:1 aid:0 error:v38];

    if (a3)
    {
      v39 = [NSError alloc];
      v11 = [NSString stringWithUTF8String:"nfcd"];
      v60[0] = NSLocalizedDescriptionKey;
      v40 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v61[0] = v40;
      v61[1] = &off_100337140;
      v60[1] = @"Line";
      v60[2] = @"Method";
      v41 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getATLServiceProviderDataForAID:error:")];
      v61[2] = v41;
      v60[3] = NSDebugDescriptionErrorKey;
      v42 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getATLServiceProviderDataForAID:error:"), 110];
      v61[3] = v42;
      v43 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:4];
      *v48 = [v39 initWithDomain:v11 code:10 userInfo:v43];

      v10 = 0;
LABEL_27:

      goto LABEL_28;
    }
  }

  v10 = 0;
LABEL_28:

  return v10;
}

id sub_100261998(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v51 = v10;
  if (a1)
  {
    if (v9)
    {
      v12 = a5;
      v13 = [v9 identifier];
      v14 = [v9 packageIdentifier];
      v15 = [v9 moduleIdentifier];
      v52 = 0;
      v16 = [AppletTranslator getServiceProviderData:v13 withPackage:v14 withModule:v15 withPublicKey:v10 withEncryptionScheme:v11 withTransceiver:a1 withError:&v52];
      v17 = v52;

      if (v17)
      {
        v50 = v11;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v19 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("getATLServiceProviderDataForAID:publicKey:scheme:error:");
          v22 = 45;
          if (isMetaClass)
          {
            v22 = 43;
          }

          v19(4, "%c[%{public}s %{public}s]:%i Could not get service provider data with privacy scheme... %{public}@", v22, ClassName, Name, 150, v17);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v23 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = object_getClass(a1);
          if (class_isMetaClass(v24))
          {
            v25 = 43;
          }

          else
          {
            v25 = 45;
          }

          v26 = object_getClassName(a1);
          v27 = sel_getName("getATLServiceProviderDataForAID:publicKey:scheme:error:");
          *buf = 67110146;
          v54 = v25;
          v55 = 2082;
          v56 = v26;
          v57 = 2082;
          v58 = v27;
          v59 = 1024;
          v60 = 150;
          v61 = 2114;
          v62 = v17;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not get service provider data with privacy scheme... %{public}@", buf, 0x2Cu);
        }

        v11 = v50;
      }

      if (v12)
      {
        v28 = v17;
        *v12 = v17;
      }

      goto LABEL_27;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v29 = NFLogGetLogger();
    if (v29)
    {
      v30 = v29;
      v31 = object_getClass(a1);
      v32 = class_isMetaClass(v31);
      v33 = a5;
      v34 = object_getClassName(a1);
      v49 = sel_getName("getATLServiceProviderDataForAID:publicKey:scheme:error:");
      v35 = 45;
      if (v32)
      {
        v35 = 43;
      }

      v47 = v34;
      a5 = v33;
      v30(3, "%c[%{public}s %{public}s]:%i Failed to find applet", v35, v47, v49, 136);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v36 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = object_getClass(a1);
      if (class_isMetaClass(v37))
      {
        v38 = 43;
      }

      else
      {
        v38 = 45;
      }

      *buf = 67109890;
      v54 = v38;
      v55 = 2082;
      v56 = object_getClassName(a1);
      v57 = 2082;
      v58 = sel_getName("getATLServiceProviderDataForAID:publicKey:scheme:error:");
      v59 = 1024;
      v60 = 136;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to find applet", buf, 0x22u);
    }

    if (a5)
    {
      v39 = [NSError alloc];
      v17 = [NSString stringWithUTF8String:"nfcd"];
      v63[0] = NSLocalizedDescriptionKey;
      v40 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v64[0] = v40;
      v64[1] = &off_100337158;
      v63[1] = @"Line";
      v63[2] = @"Method";
      v41 = a5;
      v42 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getATLServiceProviderDataForAID:publicKey:scheme:error:")];
      v64[2] = v42;
      v63[3] = NSDebugDescriptionErrorKey;
      v43 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getATLServiceProviderDataForAID:publicKey:scheme:error:"), 137];
      v64[3] = v43;
      v44 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:4];
      *v41 = [v39 initWithDomain:v17 code:10 userInfo:v44];

      v16 = 0;
LABEL_27:

      goto LABEL_28;
    }
  }

  v16 = 0;
LABEL_28:

  return v16;
}

id sub_100261EA4(void *a1)
{
  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("reConfigureApplets");
      v7 = 45;
      if (isMetaClass)
      {
        v7 = 43;
      }

      v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 161);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = object_getClass(a1);
      if (class_isMetaClass(v9))
      {
        v10 = 43;
      }

      else
      {
        v10 = 45;
      }

      *buf = 67109890;
      v97 = v10;
      v98 = 2082;
      v99 = object_getClassName(a1);
      v100 = 2082;
      v101 = sel_getName("reConfigureApplets");
      v102 = 1024;
      v103 = 161;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
    }

    v88 = 0;
    v11 = sub_1002543BC(a1, &v88);
    v12 = v88;
    if (v11)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFLogGetLogger();
      if (v13)
      {
        v14 = v13;
        v15 = object_getClass(a1);
        v16 = class_isMetaClass(v15);
        v75 = object_getClassName(a1);
        v78 = sel_getName("reConfigureApplets");
        v17 = 45;
        if (v16)
        {
          v17 = 43;
        }

        v14(3, "%c[%{public}s %{public}s]:%i Failed to pull applets : %{public}@", v17, v75, v78, 166, v11);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v18 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = object_getClass(a1);
        if (class_isMetaClass(v19))
        {
          v20 = 43;
        }

        else
        {
          v20 = 45;
        }

        v21 = object_getClassName(a1);
        v22 = sel_getName("reConfigureApplets");
        *buf = 67110146;
        v97 = v20;
        v98 = 2082;
        v99 = v21;
        v100 = 2082;
        v101 = v22;
        v102 = 1024;
        v103 = 166;
        v104 = 2114;
        v105 = v11;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to pull applets : %{public}@", buf, 0x2Cu);
      }

      v23 = [NSError alloc];
      v24 = [NSString stringWithUTF8String:"nfcd"];
      v25 = [v11 code];
      v94[0] = NSLocalizedDescriptionKey;
      if ([v11 code] > 75)
      {
        v26 = 76;
      }

      else
      {
        v26 = [v11 code];
      }

      v33 = [NSString stringWithUTF8String:off_10031D190[v26]];
      v95[0] = v33;
      v95[1] = v11;
      v94[1] = NSUnderlyingErrorKey;
      v94[2] = @"Line";
      v95[2] = &off_100337170;
      v94[3] = @"Method";
      v48 = [[NSString alloc] initWithFormat:@"%s", sel_getName("reConfigureApplets")];
      v95[3] = v48;
      v94[4] = NSDebugDescriptionErrorKey;
      v49 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("reConfigureApplets"), 167];
      v95[4] = v49;
      v50 = [NSDictionary dictionaryWithObjects:v95 forKeys:v94 count:5];
      v47 = [v23 initWithDomain:v24 code:v25 userInfo:v50];
    }

    else
    {
      v24 = objc_opt_new();
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v27 = v12;
      v28 = [v27 countByEnumeratingWithState:&v84 objects:v93 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v85;
        do
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v85 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = [*(*(&v84 + 1) + 8 * i) asDictionary];
            [v24 addObject:v32];
          }

          v29 = [v27 countByEnumeratingWithState:&v84 objects:v93 count:16];
        }

        while (v29);
      }

      v83 = 0;
      v33 = sub_10015A724(a1, &v83);
      v11 = v83;
      if (v33)
      {
        v34 = [a1 serialNumberAsData];
        v82 = v11;
        [AppletTranslator appletCacheUpdated:v24 serialNumber:v34 isdSequenceCounter:v33 transceiver:a1 error:&v82];
        v35 = v82;

        if (v35)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v36 = NFLogGetLogger();
          if (v36)
          {
            v37 = v36;
            v38 = object_getClass(a1);
            v39 = class_isMetaClass(v38);
            v76 = object_getClassName(a1);
            v79 = sel_getName("reConfigureApplets");
            v40 = 45;
            if (v39)
            {
              v40 = 43;
            }

            v37(3, "%c[%{public}s %{public}s]:%i ATL failed to reconfigure : %{public}@", v40, v76, v79, 187, v35);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v41 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = object_getClass(a1);
            if (class_isMetaClass(v42))
            {
              v43 = 43;
            }

            else
            {
              v43 = 45;
            }

            v44 = object_getClassName(a1);
            v45 = sel_getName("reConfigureApplets");
            *buf = 67110146;
            v97 = v43;
            v98 = 2082;
            v99 = v44;
            v100 = 2082;
            v101 = v45;
            v102 = 1024;
            v103 = 187;
            v104 = 2114;
            v105 = v35;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i ATL failed to reconfigure : %{public}@", buf, 0x2Cu);
          }

          v46 = [NSString stringWithFormat:@"ATL failed to reconfigure : %@", v35];
          sub_100199B74(NFBugCapture, @"ATL failed to reconfigure", v46, &off_10033A110);

          [NFExceptionsCALogger postAnalyticsATLFailureEvent:2 aid:0 error:v35];
          v11 = v35;
          v47 = v11;
        }

        else
        {
          v11 = 0;
          v47 = 0;
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v52 = NFLogGetLogger();
        if (v52)
        {
          v53 = v52;
          v54 = object_getClass(a1);
          v55 = class_isMetaClass(v54);
          v56 = object_getClassName(a1);
          v80 = sel_getName("reConfigureApplets");
          v57 = 45;
          if (v55)
          {
            v57 = 43;
          }

          v53(3, "%c[%{public}s %{public}s]:%i Failed to get ISD counter", v57, v56, v80, 177);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v58 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v59 = object_getClass(a1);
          if (class_isMetaClass(v59))
          {
            v60 = 43;
          }

          else
          {
            v60 = 45;
          }

          v61 = object_getClassName(a1);
          v62 = sel_getName("reConfigureApplets");
          *buf = 67109890;
          v97 = v60;
          v98 = 2082;
          v99 = v61;
          v100 = 2082;
          v101 = v62;
          v102 = 1024;
          v103 = 177;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get ISD counter", buf, 0x22u);
        }

        v63 = [NSError alloc];
        v64 = [NSString stringWithUTF8String:"nfcd"];
        if (v11)
        {
          v81 = [v11 code];
          v91[0] = NSLocalizedDescriptionKey;
          v65 = v63;
          if ([v11 code] > 75)
          {
            v66 = 76;
          }

          else
          {
            v66 = [v11 code];
          }

          v71 = [NSString stringWithUTF8String:off_10031D190[v66]];
          v92[0] = v71;
          v92[1] = v11;
          v91[1] = NSUnderlyingErrorKey;
          v91[2] = @"Line";
          v92[2] = &off_100337188;
          v91[3] = @"Method";
          v72 = [[NSString alloc] initWithFormat:@"%s", sel_getName("reConfigureApplets")];
          v92[3] = v72;
          v91[4] = NSDebugDescriptionErrorKey;
          v73 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("reConfigureApplets"), 178];
          v92[4] = v73;
          v74 = [NSDictionary dictionaryWithObjects:v92 forKeys:v91 count:5];
          v47 = [v65 initWithDomain:v64 code:v81 userInfo:v74];

          v33 = 0;
        }

        else
        {
          v89[0] = NSLocalizedDescriptionKey;
          v67 = [NSString stringWithUTF8String:"Unknown Error"];
          v90[0] = v67;
          v90[1] = &off_100337188;
          v89[1] = @"Line";
          v89[2] = @"Method";
          v68 = [[NSString alloc] initWithFormat:@"%s", sel_getName("reConfigureApplets")];
          v90[2] = v68;
          v89[3] = NSDebugDescriptionErrorKey;
          v69 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("reConfigureApplets"), 178];
          v90[3] = v69;
          v70 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:4];
          v47 = [v63 initWithDomain:v64 code:6 userInfo:v70];

          v33 = 0;
          v11 = 0;
        }
      }
    }
  }

  else
  {
    v47 = 0;
  }

  return v47;
}

id sub_1002629A4(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    if ([v5 isTypeF])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v8 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("setPlasticCardMode:forApplet:");
        v12 = 45;
        if (isMetaClass)
        {
          v12 = 43;
        }

        v8(6, "%c[%{public}s %{public}s]:%i Applet is typeF, skipping", v12, ClassName, Name, 207);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = object_getClass(a1);
        if (class_isMetaClass(v14))
        {
          v15 = 43;
        }

        else
        {
          v15 = 45;
        }

        *buf = 67109890;
        v44 = v15;
        v45 = 2082;
        v46 = object_getClassName(a1);
        v47 = 2082;
        v48 = sel_getName("setPlasticCardMode:forApplet:");
        v49 = 1024;
        v50 = 207;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Applet is typeF, skipping", buf, 0x22u);
      }

      v16 = 0;
    }

    else
    {
      v17 = [v6 identifier];
      v18 = [v6 packageIdentifier];
      v19 = [v6 moduleIdentifier];
      v20 = [a1 serialNumberAsData];
      v40 = 0;
      [AppletTranslator setPlasticCardMode:a2 withApplet:v17 withPackage:v18 withModule:v19 serialNumber:v20 transceiver:a1 error:&v40];
      v16 = v40;

      if (!v16)
      {
        goto LABEL_25;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v21 = NFLogGetLogger();
      if (v21)
      {
        v22 = v21;
        v23 = object_getClass(a1);
        v24 = class_isMetaClass(v23);
        v25 = object_getClassName(a1);
        v39 = sel_getName("setPlasticCardMode:forApplet:");
        v26 = 45;
        if (v24)
        {
          v26 = 43;
        }

        v22(3, "%c[%{public}s %{public}s]:%i ATL failed to configure plastic card mode : enable=%d %{public}@", v26, v25, v39, 222, a2, v16);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v27 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = object_getClass(a1);
        if (class_isMetaClass(v28))
        {
          v29 = 43;
        }

        else
        {
          v29 = 45;
        }

        v30 = object_getClassName(a1);
        v31 = sel_getName("setPlasticCardMode:forApplet:");
        *buf = 67110402;
        v44 = v29;
        v45 = 2082;
        v46 = v30;
        v47 = 2082;
        v48 = v31;
        v49 = 1024;
        v50 = 222;
        v51 = 1024;
        v52 = a2;
        v53 = 2114;
        v54 = v16;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i ATL failed to configure plastic card mode : enable=%d %{public}@", buf, 0x32u);
      }

      v32 = [v6 identifier];
      v33 = [v6 packageIdentifier];
      v34 = [NSString stringWithFormat:@"Applet AID: %@, Applet PID: %@", v32, v33];
      v41[0] = @"Applet Identifier";
      v35 = [v6 identifier];
      v42[0] = v35;
      v42[1] = @"Other Bug";
      v41[1] = @"Classification";
      v41[2] = @"FailureKey";
      v42[2] = @"ttrPlastic";
      v36 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:3];
      sub_100199B74(NFBugCapture, @"ATL failed to configure plastic card mode", v34, v36);

      v13 = [v6 identifier];
      [NFExceptionsCALogger postAnalyticsATLFailureEvent:3 aid:v13 error:v16];
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_25:

  return v16;
}

id sub_100262E4C(void *a1, void *a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v8 = a2;
  v9 = a3;
  v80 = v8;
  if (a1)
  {
    if ([v8 count] == 1 && (objc_msgSend(a1, "activeApplet"), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v11 = v10;
      v12 = v9;
      v13 = [a1 activeApplet];
      v14 = [v13 identifierAsData];
      v15 = [v14 length];

      if (v15)
      {
        v16 = [v8 objectAtIndexedSubscript:0];
        v17 = [v16 objectForKeyedSubscript:@"appletIdentifier"];
        v18 = [v16 objectForKeyedSubscript:@"expressEnabled"];
        v19 = [v18 BOOLValue];

        if (v19)
        {
          v20 = [a1 activeApplet];
          v21 = [v20 identifierAsData];
          v22 = [v21 NF_asHexString];
          v82 = [v22 isEqualToString:v17];
        }

        else
        {
          v82 = 0;
        }
      }

      else
      {
        v82 = 0;
      }

      v9 = v12;
    }

    else
    {
      v82 = 0;
    }

    v23 = &selRef_new;
    v24 = [a1 activeApplet];
    v25 = v24 != 0;
    v79 = v24;

    v90 = v25;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v26 = v8;
    v27 = [v26 countByEnumeratingWithState:&v86 objects:v102 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = v9;
      v30 = *v87;
      while (2)
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v87 != v30)
          {
            objc_enumerationMutation(v26);
          }

          v32 = [*(*(&v86 + 1) + 8 * i) objectForKeyedSubscript:@"expressEnabled"];
          v33 = [v32 BOOLValue];

          if (v33)
          {
            v34 = 1;
            goto LABEL_22;
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v86 objects:v102 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }

      v34 = 0;
LABEL_22:
      v9 = v29;
      v23 = &selRef_new;
    }

    else
    {
      v34 = 0;
    }

    sel = v23[432];

    if (a5)
    {
      *a5 = 0;
    }

    v35 = [v9 allObjects];
    v85 = 0;
    v36 = [AppletTranslator configureSEWithPassInformation:v26 transceiver:a1 limitedToPassUniqueIdentifiers:v35 seHasActivatedApplets:&v90 skipAllActivations:v82 useLegacyBehavior:a4 error:&v85];
    v37 = v85;

    if (v37 && [v37 code] == 5)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v39 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName(sel);
        v43 = 45;
        if (isMetaClass)
        {
          v43 = 43;
        }

        v39(4, "%c[%{public}s %{public}s]:%i Applet is badly behaved, needs to be powercycled", v43, ClassName, Name, 279);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v44 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = object_getClass(a1);
        if (class_isMetaClass(v45))
        {
          v46 = 43;
        }

        else
        {
          v46 = 45;
        }

        v47 = object_getClassName(a1);
        v48 = sel_getName(sel);
        *buf = 67109890;
        v92 = v46;
        v93 = 2082;
        v94 = v47;
        v95 = 2082;
        v96 = v48;
        v97 = 1024;
        v98 = 279;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Applet is badly behaved, needs to be powercycled", buf, 0x22u);
      }

      v49 = sub_10015C818(a1);

      if (v49 && [v49 code])
      {
        v37 = v49;
      }

      else
      {

        v50 = [v9 allObjects];
        v84 = 0;
        v36 = [AppletTranslator configureSEWithPassInformation:v26 transceiver:a1 limitedToPassUniqueIdentifiers:v50 seHasActivatedApplets:&v90 skipAllActivations:v82 useLegacyBehavior:a4 error:&v84];
        v37 = v84;
      }
    }

    if ((v34 | v90))
    {
      v51 = objc_opt_new();
      [a1 setActiveApplet:v51];
    }

    else
    {
      [a1 setActiveApplet:0];
    }

    if (v37)
    {
      v52 = 0;
    }

    else
    {
      v52 = v36;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v53 = NFLogGetLogger();
    v54 = v53;
    if (v52)
    {
      if (v53)
      {
        v55 = object_getClass(a1);
        v56 = class_isMetaClass(v55);
        v57 = object_getClassName(a1);
        v58 = sel_getName(sel);
        v59 = 43;
        if (!v56)
        {
          v59 = 45;
        }

        v54(6, "%c[%{public}s %{public}s]:%i Successfully configured ATL for Express. Skipped %d Dirty before %d after %d", v59, v57, v58, 310, v82, v79 != 0, v90);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v60 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = object_getClass(a1);
        if (class_isMetaClass(v61))
        {
          v62 = 43;
        }

        else
        {
          v62 = 45;
        }

        v63 = object_getClassName(a1);
        v64 = sel_getName(sel);
        *buf = 67110658;
        v92 = v62;
        v93 = 2082;
        v94 = v63;
        v95 = 2082;
        v96 = v64;
        v97 = 1024;
        v98 = 310;
        v99 = 1024;
        *v100 = v82;
        *&v100[4] = 1024;
        *&v100[6] = v79 != 0;
        *v101 = 1024;
        *&v101[2] = v90;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Successfully configured ATL for Express. Skipped %d Dirty before %d after %d", buf, 0x34u);
      }

      v65 = 0;
    }

    else
    {
      if (v53)
      {
        v66 = object_getClass(a1);
        v67 = class_isMetaClass(v66);
        v68 = object_getClassName(a1);
        v78 = sel_getName(sel);
        v69 = 45;
        if (v67)
        {
          v69 = 43;
        }

        v54(3, "%c[%{public}s %{public}s]:%i Error : failed to configure SE pass information : %{public}@, useLegacyBehavior=%{public}d", v69, v68, v78, 296, v37, a4);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v70 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        v71 = object_getClass(a1);
        if (class_isMetaClass(v71))
        {
          v72 = 43;
        }

        else
        {
          v72 = 45;
        }

        v73 = object_getClassName(a1);
        v74 = sel_getName(sel);
        *buf = 67110402;
        v92 = v72;
        v93 = 2082;
        v94 = v73;
        v95 = 2082;
        v96 = v74;
        v97 = 1024;
        v98 = 296;
        v99 = 2114;
        *v100 = v37;
        *&v100[8] = 1026;
        *v101 = a4;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error : failed to configure SE pass information : %{public}@, useLegacyBehavior=%{public}d", buf, 0x32u);
      }

      if (v37)
      {
        v75 = [v37 localizedDescription];
        v60 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Error: %@, Code: %ld", v75, [v37 code]);
      }

      else
      {
        v60 = @"No response from ATL";
      }

      sub_100199B74(NFBugCapture, @"Failed to configure SE Express info", v60, &off_10033A138);
      [NFExceptionsCALogger postAnalyticsATLFailureEvent:4 aid:0 error:v37];
      v65 = v37;
    }
  }

  else
  {
    v65 = 0;
  }

  return v65;
}

uint64_t sub_10026369C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [[NSData alloc] initWithBytes:&unk_100297DAB length:10];
    v5 = [v4 NF_asHexString];
    v25[0] = v5;
    v6 = [[NSData alloc] initWithBytes:&unk_100297DB5 length:8];
    v7 = [v6 NF_asHexString];
    v25[1] = v7;
    v8 = [[NSData alloc] initWithBytes:&unk_100297DBD length:12];
    v9 = [v8 NF_asHexString];
    v25[2] = v9;
    v10 = [[NSData alloc] initWithBytes:&unk_100297DC9 length:10];
    v11 = [v10 NF_asHexString];
    v25[3] = v11;
    v12 = [NSArray arrayWithObjects:v25 count:4];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = *v21;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v20 + 1) + 8 * i);
          v18 = [v3 moduleIdentifier];
          LOBYTE(v17) = [v18 isEqualToString:v17];

          if (v17)
          {
            v14 = 1;
            goto LABEL_12;
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id sub_1002638D0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = objc_opt_self();
  v36 = 0;
  v6 = [AppletTranslator checkSEExpressAppletCompatibilityWithPassInformation:v4 error:&v36];

  v7 = v36;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v11 = Logger;
      Class = object_getClass(v5);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v5);
      Name = sel_getName("checkSEExpressPassCompatibility:error:");
      v14 = 45;
      if (isMetaClass)
      {
        v14 = 43;
      }

      v11(3, "%c[%{public}s %{public}s]:%i Error : failed to check SE Express Compatibility : %{public}@", v14, ClassName, Name, 339, v8);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = object_getClass(v5);
      if (class_isMetaClass(v16))
      {
        v17 = 43;
      }

      else
      {
        v17 = 45;
      }

      v18 = object_getClassName(v5);
      v19 = sel_getName("checkSEExpressPassCompatibility:error:");
      *buf = 67110146;
      v42 = v17;
      v43 = 2082;
      v44 = v18;
      v45 = 2082;
      v46 = v19;
      v47 = 1024;
      v48 = 339;
      v49 = 2114;
      v50 = v8;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error : failed to check SE Express Compatibility : %{public}@", buf, 0x2Cu);
    }

    if (v8)
    {
      v20 = [v8 localizedDescription];
      v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Error: %@, Code: %ld", v20, [v8 code]);

      sub_100199B74(NFBugCapture, @"Failed to check SE Express compatibility", v21, &off_10033A160);
      [NFExceptionsCALogger postAnalyticsATLFailureEvent:5 aid:0 error:v8];
      if (a3)
      {
        v22 = v8;
        *a3 = v8;
      }
    }

    else
    {
      v21 = @"No response received";
      sub_100199B74(NFBugCapture, @"Failed to check SE Express compatibility", @"No response received", &off_10033A160);
      v23 = [NSError alloc];
      v24 = [NSString stringWithUTF8String:"nfcd"];
      v39 = NSLocalizedDescriptionKey;
      v25 = [NSString stringWithUTF8String:"Unexpected Result"];
      v40 = v25;
      v26 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v27 = [v23 initWithDomain:v24 code:13 userInfo:v26];
      [NFExceptionsCALogger postAnalyticsATLFailureEvent:5 aid:0 error:v27];

      if (a3)
      {
        v28 = [NSError alloc];
        v29 = [NSString stringWithUTF8String:"nfcd"];
        v37 = NSLocalizedDescriptionKey;
        v30 = [NSString stringWithUTF8String:"Unexpected Result"];
        v38 = v30;
        v31 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        v32 = [v28 initWithDomain:v29 code:13 userInfo:v31];
        *a3 = v32;

        v21 = @"No response received";
      }
    }
  }

  return v6;
}

id sub_100263CFC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = objc_opt_self();
  v6 = +[_NFHardwareManager sharedHardwareManager];
  v7 = v6;
  if (v6)
  {
    v8 = [*(v6 + 128) walletDomain];
    if (v8 <= 4)
    {
      v9 = 0x19u >> v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v39 = 0;
  v10 = [AppletTranslator checkSEExpressAppletCompatibilityWithPassInformation:v4 useLegacyBehavior:v9 & 1 error:&v39];

  v11 = v39;
  v12 = v11;
  if (!v10 || v11)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v14 = Logger;
      Class = object_getClass(v5);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v5);
      Name = sel_getName("validateSEExpressPassCompatibility:outError:");
      v17 = 45;
      if (isMetaClass)
      {
        v17 = 43;
      }

      v14(3, "%c[%{public}s %{public}s]:%i Error : failed to check SE Express Compatibility : %{public}@", v17, ClassName, Name, 369, v12);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = object_getClass(v5);
      if (class_isMetaClass(v19))
      {
        v20 = 43;
      }

      else
      {
        v20 = 45;
      }

      v21 = object_getClassName(v5);
      v22 = sel_getName("validateSEExpressPassCompatibility:outError:");
      *buf = 67110146;
      v45 = v20;
      v46 = 2082;
      v47 = v21;
      v48 = 2082;
      v49 = v22;
      v50 = 1024;
      v51 = 369;
      v52 = 2114;
      v53 = v12;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error : failed to check SE Express Compatibility : %{public}@", buf, 0x2Cu);
    }

    if (v12)
    {
      v23 = [v12 localizedDescription];
      v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Error: %@, Code: %ld", v23, [v12 code]);

      sub_100199B74(NFBugCapture, @"Failed to check SE Express compatibility", v24, &off_10033A188);
      [NFExceptionsCALogger postAnalyticsATLFailureEvent:5 aid:0 error:v12];
      if (a3)
      {
        v25 = v12;
        *a3 = v12;
      }
    }

    else
    {
      v24 = @"No response received";
      sub_100199B74(NFBugCapture, @"Failed to check SE Express compatibility", @"No response received", &off_10033A188);
      v26 = [NSError alloc];
      v27 = [NSString stringWithUTF8String:"nfcd"];
      v42 = NSLocalizedDescriptionKey;
      v28 = [NSString stringWithUTF8String:"Unexpected Result"];
      v43 = v28;
      v29 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v30 = [v26 initWithDomain:v27 code:13 userInfo:v29];
      [NFExceptionsCALogger postAnalyticsATLFailureEvent:5 aid:0 error:v30];

      if (a3)
      {
        v31 = [NSError alloc];
        v32 = [NSString stringWithUTF8String:"nfcd"];
        v40 = NSLocalizedDescriptionKey;
        v33 = [NSString stringWithUTF8String:"Unexpected Result"];
        v41 = v33;
        v34 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        v35 = [v31 initWithDomain:v32 code:13 userInfo:v34];
        *a3 = v35;

        v24 = @"No response received";
      }
    }
  }

  return v10;
}

id sub_100264164(uint64_t a1, uint64_t a2)
{
  objc_opt_self();

  return [AppletTranslator getCurrentInMetroStatus:a2];
}

id sub_1002641A4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = [v5 identifier];
    v8 = [v6 packageIdentifier];
    v9 = [v6 moduleIdentifier];
    v29 = 0;
    v10 = [AppletTranslator processEndOfTransaction:v7 withPackage:v8 withModule:v9 withTransceiver:a1 withError:&v29];
    v11 = v29;

    if (v11)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v13 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("processEndOfFelicaTransactionForApplet:error:");
        v16 = 45;
        if (isMetaClass)
        {
          v16 = 43;
        }

        v13(3, "%c[%{public}s %{public}s]:%i Error : failed to process End of Transaction : %{public}@", v16, ClassName, Name, 404, v11);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = object_getClass(a1);
        if (class_isMetaClass(v18))
        {
          v19 = 43;
        }

        else
        {
          v19 = 45;
        }

        v20 = object_getClassName(a1);
        v21 = sel_getName("processEndOfFelicaTransactionForApplet:error:");
        *buf = 67110146;
        v31 = v19;
        v32 = 2082;
        v33 = v20;
        v34 = 2082;
        v35 = v21;
        v36 = 1024;
        v37 = 404;
        v38 = 2114;
        v39 = v11;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error : failed to process End of Transaction : %{public}@", buf, 0x2Cu);
      }

      v22 = [v11 localizedDescription];
      v23 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Error: %@, Code: %ld", v22, [v11 code]);
      sub_100199B74(NFBugCapture, @"Error while processing end of transaction", v23, 0);

      v24 = [v6 identifier];
      [NFExceptionsCALogger postAnalyticsATLFailureEvent:6 aid:v24 error:v11];

      if (a3)
      {
        v25 = v11;
        *a3 = v11;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_10026449C()
{
  objc_opt_self();

  return +[AppletTranslator cleanup];
}

id *sub_1002644CC(id *a1, void *a2, void *a3, void *a4, unint64_t a5)
{
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v19.receiver = a1;
    v19.super_class = NFTNEPHandler;
    v11 = objc_msgSendSuper2(&v19, "init");
    a1 = v11;
    if (v11)
    {
      v11[2] = a2;
      objc_storeWeak(v11 + 5, v9);
      v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v13 = dispatch_queue_create("com.apple.nfcd.tnepHandler", v12);
      v14 = a1[3];
      a1[3] = v13;

      dispatch_queue_set_specific(a1[3], kNFLOG_DISPATCH_SPECIFIC_KEY, 0, 0);
      objc_storeStrong(a1 + 11, a4);
      v15 = [[NSMutableData alloc] initWithLength:2050];
      v16 = a1[10];
      a1[10] = v15;

      v17 = 0xEEEEB0B5B2B2EEEELL;
      if (a5)
      {
        v17 = a5;
      }

      a1[13] = v17;
    }
  }

  return a1;
}

void sub_1002645F8(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a1)
  {
    v4 = *(a1 + 56);
    *(a1 + 56) = 0;

    objc_storeStrong((a1 + 56), a2);
    *(a1 + 8) = 0;
    sub_1002684F8(a1);
    sub_1002688DC(a1, @"HCE_TagDeviceHandlingStart");
  }
}

void sub_100264684(id *a1, void *a2)
{
  v4 = a2;
  if (!a1)
  {
    goto LABEL_128;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    Name = sel_getName("handleDeviceTag:");
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(6, "%c[%{public}s %{public}s]:%i ", v10, ClassName, Name, 120);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(a1);
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    *buf = 67109890;
    *&buf[4] = v13;
    *v181 = 2082;
    *&v181[2] = object_getClassName(a1);
    *&v181[10] = 2082;
    *&v181[12] = sel_getName("handleDeviceTag:");
    *&v181[20] = 1024;
    *&v181[22] = 120;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  v167[0] = 0;
  v167[1] = 0;
  v168 = 0;
  v14 = a1[11];
  v166 = 0;
  v15 = v14;
  v16 = sub_1001916A4(v15, v4, v167, &v166);
  v17 = v166;
  v18 = v168;

  if (!v16 || (v18 & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v124 = NFLogGetLogger();
    if (v124)
    {
      v125 = v124;
      v126 = object_getClass(a1);
      v127 = class_isMetaClass(v126);
      v128 = object_getClassName(a1);
      v129 = sel_getName("handleDeviceTag:");
      v130 = 45;
      if (v127)
      {
        v130 = 43;
      }

      v125(4, "%c[%{public}s %{public}s]:%i NDEF capability query failed: %{public}@, readable=%d", v130, v128, v129, 127, v17, v168);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v131 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
    {
      v132 = object_getClass(a1);
      if (class_isMetaClass(v132))
      {
        v133 = 43;
      }

      else
      {
        v133 = 45;
      }

      v134 = object_getClassName(a1);
      v135 = sel_getName("handleDeviceTag:");
      *buf = 67110402;
      *&buf[4] = v133;
      *v181 = 2082;
      *&v181[2] = v134;
      *&v181[10] = 2082;
      *&v181[12] = v135;
      *&v181[20] = 1024;
      *&v181[22] = 127;
      *&v181[26] = 2114;
      *&v181[28] = v17;
      *&v181[36] = 1024;
      *&v181[38] = v168;
      _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i NDEF capability query failed: %{public}@, readable=%d", buf, 0x32u);
    }

    sub_10021E364(a1[11]);
    goto LABEL_127;
  }

  v165 = v17;
  v19 = sub_10026571C(a1, v4, &v165);
  v20 = v165;

  if (!v19 || v20)
  {
    if (v20 && [v20 code] == 47)
    {
      goto LABEL_126;
    }

    sub_10021E364(a1[11]);
  }

  obj = a2;
  v21 = v19;
  v22 = v4;
  v164 = [[NSData alloc] initWithBytes:"TpHs" length:2];
  v163 = [[NSData alloc] initWithBytes:"Hs" length:2];
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v23 = [v21 records];
  v24 = [v23 countByEnumeratingWithState:&v169 objects:v177 count:16];
  if (!v24)
  {
LABEL_124:

    goto LABEL_125;
  }

  v25 = v24;
  v155 = v22;
  v156 = v21;
  v152 = v20;
  v153 = v19;
  v154 = v4;
  v160 = 0;
  sel = 0;
  v26 = *v170;
  do
  {
    for (i = 0; i != v25; i = i + 1)
    {
      if (*v170 != v26)
      {
        objc_enumerationMutation(v23);
      }

      v28 = *(*(&v169 + 1) + 8 * i);
      v29 = [v28 payload];
      v30 = [v29 length];

      if (v30 > 1)
      {
        if ([v28 typeNameFormat] != 1)
        {
          continue;
        }

        v42 = [v28 type];
        v43 = [v42 isEqual:v164];

        if (v43)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v44 = NFLogGetLogger();
          if (v44)
          {
            v45 = v44;
            v46 = object_getClass(a1);
            v47 = class_isMetaClass(v46);
            v48 = object_getClassName(a1);
            v145 = sel_getName("_processNdefRead:tag:");
            v49 = 45;
            if (v47)
            {
              v49 = 43;
            }

            v45(6, "%c[%{public}s %{public}s]:%i Negotiated Handover Exchange identified.", v49, v48, v145, 943);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v37 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v50 = object_getClass(a1);
            if (class_isMetaClass(v50))
            {
              v51 = 43;
            }

            else
            {
              v51 = 45;
            }

            v52 = object_getClassName(a1);
            v53 = sel_getName("_processNdefRead:tag:");
            *buf = 67109890;
            *&buf[4] = v51;
            *v181 = 2082;
            *&v181[2] = v52;
            *&v181[10] = 2082;
            *&v181[12] = v53;
            *&v181[20] = 1024;
            *&v181[22] = 943;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Negotiated Handover Exchange identified.", buf, 0x22u);
          }

          sel = 1;
        }

        else
        {
          v54 = [v28 type];
          v55 = [v54 isEqual:v163];

          if (!v55)
          {
            continue;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v56 = NFLogGetLogger();
          if (v56)
          {
            v57 = v56;
            v58 = object_getClass(a1);
            v59 = class_isMetaClass(v58);
            v60 = object_getClassName(a1);
            v146 = sel_getName("_processNdefRead:tag:");
            v61 = 45;
            if (v59)
            {
              v61 = 43;
            }

            v57(6, "%c[%{public}s %{public}s]:%i Static Handover Exchange identified.", v61, v60, v146, 946);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v37 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v62 = object_getClass(a1);
            if (class_isMetaClass(v62))
            {
              v63 = 43;
            }

            else
            {
              v63 = 45;
            }

            v64 = object_getClassName(a1);
            v65 = sel_getName("_processNdefRead:tag:");
            *buf = 67109890;
            *&buf[4] = v63;
            *v181 = 2082;
            *&v181[2] = v64;
            *&v181[10] = 2082;
            *&v181[12] = v65;
            *&v181[20] = 1024;
            *&v181[22] = 946;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Static Handover Exchange identified.", buf, 0x22u);
          }

          v160 = 1;
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v31 = NFLogGetLogger();
        if (v31)
        {
          v32 = v31;
          v33 = object_getClass(a1);
          v34 = class_isMetaClass(v33);
          v35 = object_getClassName(a1);
          v144 = sel_getName("_processNdefRead:tag:");
          v36 = 45;
          if (v34)
          {
            v36 = 43;
          }

          v32(4, "%c[%{public}s %{public}s]:%i Invalid Service Parameter record; ignore", v36, v35, v144, 937);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v37 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = object_getClass(a1);
          if (class_isMetaClass(v38))
          {
            v39 = 43;
          }

          else
          {
            v39 = 45;
          }

          v40 = object_getClassName(a1);
          v41 = sel_getName("_processNdefRead:tag:");
          *buf = 67109890;
          *&buf[4] = v39;
          *v181 = 2082;
          *&v181[2] = v40;
          *&v181[10] = 2082;
          *&v181[12] = v41;
          *&v181[20] = 1024;
          *&v181[22] = 937;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid Service Parameter record; ignore", buf, 0x22u);
        }
      }
    }

    v25 = [v23 countByEnumeratingWithState:&v169 objects:v177 count:16];
  }

  while (v25);

  if ((sel & 1) == 0)
  {
    v19 = v153;
    v4 = v154;
    v20 = v152;
    v21 = v156;
    if ((v160 & 1) == 0)
    {
      goto LABEL_125;
    }

    v23 = v156;
    v136 = v22;
    if (v153)
    {
      v137 = a1;
      objc_sync_enter(v137);
      objc_storeStrong(v137 + 12, obj);
      objc_sync_exit(v137);

      v138 = NFSharedSignpostLog();
      v139 = v138;
      v140 = v137[13];
      if (v140 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v138))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v139, OS_SIGNPOST_EVENT, v140, "StaticNFC_Reader_EngagementDiscovered", &unk_1002E8B7A, buf, 2u);
      }

      v141 = v137[3];
      *buf = _NSConcreteStackBlock;
      *v181 = 3221225472;
      *&v181[8] = sub_10026B8AC;
      *&v181[16] = &unk_100315FA8;
      *&v181[24] = v137;
      *&v181[32] = v23;
      dispatch_async(v141, buf);
    }

    goto LABEL_124;
  }

  v66 = v156;
  v150 = v22;
  v67 = [[NSData alloc] initWithBytes:"TpHs" length:2];
  v157 = objc_opt_new();
  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  v176 = 0u;
  v151 = v66;
  v68 = [v66 records];
  v69 = [v68 countByEnumeratingWithState:&v173 objects:buf count:16];
  if (!v69)
  {
    goto LABEL_101;
  }

  v70 = v69;
  v71 = *v174;
  obja = v68;
  v161 = v67;
  while (2)
  {
    v72 = 0;
    while (2)
    {
      if (*v174 != v71)
      {
        objc_enumerationMutation(v68);
      }

      v73 = *(*(&v173 + 1) + 8 * v72);
      if ([v73 typeNameFormat] == 1)
      {
        v74 = [v73 type];
        v75 = [v74 isEqual:v67];

        if (v75)
        {
          v76 = [v73 payload];
          v77 = [v76 length];

          if (v77 > 1)
          {
            v90 = [v73 payload];
            v91 = [v90 bytes];

            v92 = *(v91 + 1);
            v93 = [v73 payload];
            v94 = [v93 length] - 7;

            if (v94 == v92)
            {
              v95 = [NSString alloc];
              v96 = [v73 payload];
              v97 = [v96 subdataWithRange:{2, v92}];
              v84 = [v95 initWithData:v97 encoding:1];

              v98 = [NFTNEPService serviceWithURI:v84 minWaitTime:v92[v91 + 3] maxWaitTimeExtension:v92[v91 + 4] maxMessageSize:bswap32(*&v92[v91 + 5]) >> 16];
              [a1[9] addObject:v98];
              [v157 addObject:v84];
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v99 = NFLogGetLogger();
              if (v99)
              {
                v100 = v99;
                v101 = object_getClass(a1);
                v102 = class_isMetaClass(v101);
                v142 = object_getClassName(a1);
                v148 = sel_getName("_processNegotiatedNdefRead:tag:");
                v103 = 45;
                if (v102)
                {
                  v103 = 43;
                }

                v100(6, "%c[%{public}s %{public}s]:%i Found TNEP service: %{public}@", v103, v142, v148, 894, v98);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v104 = NFSharedLogGetLogger();
              v68 = obja;
              if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
              {
                v105 = object_getClass(a1);
                if (class_isMetaClass(v105))
                {
                  v106 = 43;
                }

                else
                {
                  v106 = 45;
                }

                v107 = object_getClassName(a1);
                v108 = sel_getName("_processNegotiatedNdefRead:tag:");
                *block = 67110146;
                *&block[4] = v106;
                *v179 = 2082;
                *&v179[2] = v107;
                *&v179[10] = 2082;
                *&v179[12] = v108;
                *&v179[20] = 1024;
                *&v179[22] = 894;
                *&v179[26] = 2114;
                *&v179[28] = v98;
                _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Found TNEP service: %{public}@", block, 0x2Cu);
              }

              v67 = v161;
            }

            else
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v109 = NFLogGetLogger();
              if (v109)
              {
                v110 = v109;
                v111 = object_getClass(a1);
                v112 = class_isMetaClass(v111);
                v113 = object_getClassName(a1);
                v149 = sel_getName("_processNegotiatedNdefRead:tag:");
                v114 = 45;
                if (v112)
                {
                  v114 = 43;
                }

                v110(4, "%c[%{public}s %{public}s]:%i Invalid Service Parameter record; ignore", v114, v113, v149, 881);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v84 = NFSharedLogGetLogger();
              v68 = obja;
              v67 = v161;
              if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
              {
                v115 = object_getClass(a1);
                if (class_isMetaClass(v115))
                {
                  v116 = 43;
                }

                else
                {
                  v116 = 45;
                }

                v117 = object_getClassName(a1);
                v118 = sel_getName("_processNegotiatedNdefRead:tag:");
                *block = 67109890;
                *&block[4] = v116;
                *v179 = 2082;
                *&v179[2] = v117;
                *&v179[10] = 2082;
                *&v179[12] = v118;
                *&v179[20] = 1024;
                *&v179[22] = 881;
                v89 = v84;
LABEL_97:
                _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid Service Parameter record; ignore", block, 0x22u);
              }
            }
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v78 = NFLogGetLogger();
            if (v78)
            {
              v79 = v78;
              v80 = object_getClass(a1);
              v81 = class_isMetaClass(v80);
              v82 = object_getClassName(a1);
              v147 = sel_getName("_processNegotiatedNdefRead:tag:");
              v83 = 45;
              if (v81)
              {
                v83 = 43;
              }

              v79(4, "%c[%{public}s %{public}s]:%i Invalid Service Parameter record; ignore", v83, v82, v147, 874);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v84 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
            {
              v85 = object_getClass(a1);
              if (class_isMetaClass(v85))
              {
                v86 = 43;
              }

              else
              {
                v86 = 45;
              }

              v87 = object_getClassName(a1);
              v88 = sel_getName("_processNegotiatedNdefRead:tag:");
              *block = 67109890;
              *&block[4] = v86;
              *v179 = 2082;
              *&v179[2] = v87;
              *&v179[10] = 2082;
              *&v179[12] = v88;
              *&v179[20] = 1024;
              *&v179[22] = 874;
              v89 = v84;
              goto LABEL_97;
            }
          }
        }
      }

      if (v70 != ++v72)
      {
        continue;
      }

      break;
    }

    v70 = [v68 countByEnumeratingWithState:&v173 objects:buf count:16];
    if (v70)
    {
      continue;
    }

    break;
  }

LABEL_101:

  v19 = v153;
  v4 = v154;
  v20 = v152;
  if ([v157 count])
  {
    v119 = a1;
    objc_sync_enter(v119);
    sub_1002684E0(v119, v150);
    objc_sync_exit(v119);

    v120 = NFSharedSignpostLog();
    v121 = v120;
    v122 = v119[13];
    if (v122 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v120))
    {
      *block = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v121, OS_SIGNPOST_EVENT, v122, "TNEP_Reader_DiscoveredServices", &unk_1002E8B7A, block, 2u);
    }

    v123 = v119[3];
    *block = _NSConcreteStackBlock;
    *v179 = 3221225472;
    *&v179[8] = sub_10026B84C;
    *&v179[16] = &unk_100315FA8;
    *&v179[24] = v119;
    *&v179[32] = v157;
    dispatch_async(v123, block);
  }

  v22 = v155;
  v21 = v156;
LABEL_125:

LABEL_126:
  v17 = v20;
LABEL_127:

LABEL_128:
}

void *sub_10026571C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (!a1)
  {
    goto LABEL_18;
  }

  v6 = a1[11];
  if (!v6)
  {
    v26 = 0;
    goto LABEL_17;
  }

  if (([*(v6 + 56) readerModeProtectionActive] & 1) == 0)
  {
    v26 = a1[11];
LABEL_17:
    a1 = sub_100193E90(v26, v5, a3);
    goto LABEL_18;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v8 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    Name = sel_getName("_readNdefFromTag:outError:");
    v12 = 45;
    if (isMetaClass)
    {
      v12 = 43;
    }

    v8(4, "%c[%{public}s %{public}s]:%i Reader protection active", v12, ClassName, Name, 963);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v13 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = object_getClass(a1);
    if (class_isMetaClass(v14))
    {
      v15 = 43;
    }

    else
    {
      v15 = 45;
    }

    *buf = 67109890;
    v34 = v15;
    v35 = 2082;
    v36 = object_getClassName(a1);
    v37 = 2082;
    v38 = sel_getName("_readNdefFromTag:outError:");
    v39 = 1024;
    v40 = 963;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Reader protection active", buf, 0x22u);
  }

  v16 = [NSError alloc];
  v17 = [NSString stringWithUTF8String:"nfcd"];
  v31[0] = NSLocalizedDescriptionKey;
  v18 = [NSString stringWithUTF8String:"Reader mode temporarily disabled"];
  v32[0] = v18;
  v32[1] = &off_1003371B8;
  v31[1] = @"Line";
  v31[2] = @"Method";
  v19 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_readNdefFromTag:outError:")];
  v32[2] = v19;
  v31[3] = NSDebugDescriptionErrorKey;
  v20 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_readNdefFromTag:outError:"), 964];
  v32[3] = v20;
  v21 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:4];
  v22 = [v16 initWithDomain:v17 code:47 userInfo:v21];

  if (a3)
  {
    v23 = v22;
    *a3 = v22;
  }

  v24 = a1[3];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10026B90C;
  block[3] = &unk_100315FA8;
  block[4] = a1;
  v30 = v22;
  v25 = v22;
  dispatch_async(v24, block);

  a1 = 0;
LABEL_18:

  return a1;
}

void sub_100265DBC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 72), a2);
  }
}

void sub_100265DCC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

void sub_100266264(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError alloc];
  v3 = [NSString stringWithUTF8String:"nfcd"];
  v7 = NSLocalizedDescriptionKey;
  v4 = [NSString stringWithUTF8String:"Invalid State"];
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v6 = [v2 initWithDomain:v3 code:12 userInfo:v5];
  (*(v1 + 16))(v1, v6);
}

BOOL sub_10026637C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 80);
  v5 = a2;
  objc_sync_enter(v4);
  v6 = [v5 asData];

  v7 = [v6 length];
  if (v7)
  {
    v8 = *(a1 + 80);
    [v8 resetBytesInRange:{0, objc_msgSend(v8, "length")}];

    v9 = *(a1 + 80);
    [v9 replaceBytesInRange:2 withBytes:objc_msgSend(v6 length:{"length"), objc_msgSend(v6, "bytes"), objc_msgSend(v6, "length")}];

    v10 = [*(a1 + 80) mutableBytes];
    *v10 = [v6 length] >> 8;
    v10[1] = [v6 length];
  }

  objc_sync_exit(v4);
  return v7 != 0;
}

void sub_100266A74(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError alloc];
  v3 = [NSString stringWithUTF8String:"nfcd"];
  v7 = NSLocalizedDescriptionKey;
  v4 = [NSString stringWithUTF8String:"TNEP invalid service"];
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v6 = [v2 initWithDomain:v3 code:59 userInfo:v5];
  (*(v1 + 16))(v1, v6);
}

void sub_100266B8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = NFSharedSignpostLog();
  v8 = v7;
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 104);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v11 = *(a1 + 40);
      *buf = 138412546;
      *v62 = v11;
      *&v62[8] = 2112;
      *&v62[10] = v6;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v10, "TNEP_Reader_Select", "service=%@  error=%@", buf, 0x16u);
    }
  }

  if (v6)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v13 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 64));
      v16 = 45;
      if (isMetaClass)
      {
        v16 = 43;
      }

      v13(3, "%c[%{public}s %{public}s]:%i %{public}@", v16, ClassName, Name, 215, v6);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v18))
      {
        v19 = 43;
      }

      else
      {
        v19 = 45;
      }

      v20 = object_getClassName(*(a1 + 32));
      v21 = sel_getName(*(a1 + 64));
      *buf = 67110146;
      *v62 = v19;
      *&v62[4] = 2082;
      *&v62[6] = v20;
      *&v62[14] = 2082;
      *&v62[16] = v21;
      v63 = 1024;
      v64 = 215;
      v65 = 2114;
      v66 = v6;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v22 = *(a1 + 32);
    v23 = v5;
    if (v22)
    {
      v24 = [[NSData alloc] initWithBytes:"TeTsTpHs" length:2];
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v25 = [v23 records];
      v26 = [v25 countByEnumeratingWithState:&v53 objects:buf count:16];
      if (v26)
      {
        v27 = v26;
        v51 = v23;
        v52 = v5;
        v28 = *v54;
        do
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v54 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v53 + 1) + 8 * i);
            if ([v30 typeNameFormat] == 1)
            {
              v31 = [v30 type];
              if ([v31 isEqualToData:v24])
              {
                v32 = [v30 payload];
                v33 = [v32 length];

                if (v33 == 1)
                {
                  v22 = [v30 payload];
                  v34 = [v22 bytes];

                  LODWORD(v22) = *v34;
                  v35 = 1;
                  goto LABEL_30;
                }
              }

              else
              {
              }
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v53 objects:buf count:16];
        }

        while (v27);
        LODWORD(v22) = 0;
        v35 = 0;
LABEL_30:
        v23 = v51;
        v5 = v52;
      }

      else
      {
        LODWORD(v22) = 0;
        v35 = 0;
      }
    }

    else
    {
      v35 = 0;
    }

    v36 = *(a1 + 32);
    objc_sync_enter(v36);
    if (v35)
    {
      sub_10007FEC0(*(a1 + 32), *(a1 + 48));
      objc_sync_exit(v36);

      if (v22)
      {
        v37 = [[NSError alloc] initWithDomain:@"tnep.reader" code:v22 userInfo:0];
        v38 = *(a1 + 56);
        v39 = [NSError alloc];
        v40 = [NSString stringWithUTF8String:"nfcd"];
        v59 = NSUnderlyingErrorKey;
        v60 = v37;
        v41 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        v42 = [v39 initWithDomain:v40 code:61 userInfo:v41];
        (*(v38 + 16))(v38, v42);
      }

      else
      {
        (*(*(a1 + 56) + 16))();
      }
    }

    else
    {
      sub_10007FEC0(*(a1 + 32), 0);
      objc_sync_exit(v36);

      v43 = *(a1 + 56);
      v44 = [NSError alloc];
      v45 = [NSString stringWithUTF8String:"nfcd"];
      v57 = NSLocalizedDescriptionKey;
      v46 = [NSString stringWithUTF8String:"TNEP invalid service"];
      v58 = v46;
      v47 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      v48 = [v44 initWithDomain:v45 code:59 userInfo:v47];
      (*(v43 + 16))(v43, v48);
    }

    v6 = 0;
  }
}

void sub_100267134(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (a1)
  {
    v62 = v8;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v11 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_changeService:select:completionHandler:");
      v16 = [v7 uri];
      v17 = 45;
      if (isMetaClass)
      {
        v17 = 43;
      }

      v11(6, "%c[%{public}s %{public}s]:%i svc:%{public}@   select:%d", v17, ClassName, Name, 816, v16, a3);
    }

    v63 = v7;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = object_getClass(a1);
      if (class_isMetaClass(v19))
      {
        v20 = 43;
      }

      else
      {
        v20 = 45;
      }

      v21 = object_getClassName(a1);
      v22 = sel_getName("_changeService:select:completionHandler:");
      v23 = [v63 uri];
      *buf = 67110402;
      v77 = v20;
      v78 = 2082;
      v79 = v21;
      v80 = 2082;
      v81 = v22;
      v82 = 1024;
      v83 = 816;
      v84 = 2114;
      v85 = v23;
      v86 = 1024;
      v87 = a3;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i svc:%{public}@   select:%d", buf, 0x32u);
    }

    v24 = *(a1 + 88);
    if (v24 && [*(v24 + 56) readerModeProtectionActive])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v25 = NFLogGetLogger();
      if (v25)
      {
        v26 = v25;
        v27 = object_getClass(a1);
        v28 = class_isMetaClass(v27);
        v29 = object_getClassName(a1);
        v61 = sel_getName("_changeService:select:completionHandler:");
        v30 = 45;
        if (v28)
        {
          v30 = 43;
        }

        v26(4, "%c[%{public}s %{public}s]:%i Reader protection active", v30, v29, v61, 819);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = object_getClass(a1);
        if (class_isMetaClass(v32))
        {
          v33 = 43;
        }

        else
        {
          v33 = 45;
        }

        v34 = object_getClassName(a1);
        v35 = sel_getName("_changeService:select:completionHandler:");
        *buf = 67109890;
        v77 = v33;
        v78 = 2082;
        v79 = v34;
        v80 = 2082;
        v81 = v35;
        v82 = 1024;
        v83 = 819;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Reader protection active", buf, 0x22u);
      }

      v36 = [NSError alloc];
      v37 = [NSString stringWithUTF8String:"nfcd"];
      v74 = NSLocalizedDescriptionKey;
      v38 = [NSString stringWithUTF8String:"Reader mode temporarily disabled"];
      v75 = v38;
      v39 = [NSDictionary dictionaryWithObjects:&v75 forKeys:&v74 count:1];
      v40 = [v36 initWithDomain:v37 code:47 userInfo:v39];

      WeakRetained = objc_loadWeakRetained((a1 + 40));
      [WeakRetained tnepReaderServicesAborted:v40];

      v42 = *(a1 + 24);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10026B700;
      block[3] = &unk_10031B170;
      v9 = v62;
      v72 = v40;
      v73 = v62;
      v43 = v40;
      dispatch_async(v42, block);

      v7 = v63;
    }

    else
    {
      v43 = [[NSData alloc] initWithBytes:"TsTpHs" length:2];
      v7 = v63;
      v44 = [v63 uri];
      v45 = [v44 length];

      v70 = v45;
      v46 = [[NSMutableData alloc] initWithBytes:&v70 length:1];
      if (v70)
      {
        v47 = [v63 uri];
        v48 = [v47 dataUsingEncoding:1];
        [v46 appendData:v48];
      }

      *buf = 0;
      v49 = objc_opt_new();
      v50 = +[NFNdefRecordInternal recordsWithTNF:type:identifier:payload:chunkSize:outError:](NFNdefRecordInternal, "recordsWithTNF:type:identifier:payload:chunkSize:outError:", 1, v43, v49, v46, [v46 length] + 1, buf);

      if (*buf)
      {
        v51 = *(a1 + 24);
        v68[0] = _NSConcreteStackBlock;
        v68[1] = 3221225472;
        v68[2] = sub_10026B718;
        v68[3] = &unk_100318A90;
        v9 = v62;
        v69 = v62;
        dispatch_async(v51, v68);
        v52 = v69;
      }

      else
      {
        v52 = objc_opt_new();
        [v52 addRecordArray:v50];
        v9 = v62;
        if (a3)
        {
          sub_10026809C(a1, v52, v63, v62);
        }

        else
        {
          v54 = *(a1 + 88);
          v53 = *(a1 + 96);
          v67 = 0;
          v55 = v53;
          v56 = v54;
          v7 = v63;
          v57 = v56;
          sub_100193F64(v56, v52, v55, 0, &v67);
          v58 = v67;

          v59 = *(a1 + 24);
          v64[0] = _NSConcreteStackBlock;
          v64[1] = 3221225472;
          v64[2] = sub_10026B834;
          v64[3] = &unk_10031B170;
          v65 = v58;
          v66 = v62;
          v60 = v58;
          dispatch_async(v59, v64);
        }
      }
    }
  }
}

void sub_100267A5C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = NFSharedSignpostLog();
  v6 = v5;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 104);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *buf = 138412290;
      v20 = v4;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, v8, "TNEP_Reader_Deselect", "error=%@", buf, 0xCu);
    }
  }

  v9 = *(a1 + 32);
  objc_sync_enter(v9);
  sub_10007FEC0(*(a1 + 32), 0);
  objc_sync_exit(v9);

  if (v4)
  {
    if ([v4 code] != 47)
    {
      v10 = [NSError alloc];
      v11 = [NSString stringWithUTF8String:"nfcd"];
      v17[0] = NSLocalizedDescriptionKey;
      v12 = [NSString stringWithUTF8String:"TNEP service specific error"];
      v18[0] = v12;
      v18[1] = v4;
      v17[1] = NSUnderlyingErrorKey;
      v17[2] = @"Line";
      v18[2] = &off_1003371A0;
      v17[3] = @"Method";
      v13 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
      v18[3] = v13;
      v17[4] = NSDebugDescriptionErrorKey;
      v14 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 259];
      v18[4] = v14;
      v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:5];
      v16 = [v10 initWithDomain:v11 code:61 userInfo:v15];

      v4 = v16;
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100267E4C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = NFSharedSignpostLog();
  v8 = v7;
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 104);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 138412290;
      *v25 = v6;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v10, "TNEP_Reader_Send", "error=%@", buf, 0xCu);
    }
  }

  if (v6)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v12 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v17 = 45;
      if (isMetaClass)
      {
        v17 = 43;
      }

      v12(3, "%c[%{public}s %{public}s]:%i Error sending msg=%{public}@\nerror=%{public}@", v17, ClassName, Name, 278, *(a1 + 40), v6);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v19))
      {
        v20 = 43;
      }

      else
      {
        v20 = 45;
      }

      v21 = object_getClassName(*(a1 + 32));
      v22 = sel_getName(*(a1 + 56));
      v23 = *(a1 + 40);
      *buf = 67110402;
      *v25 = v20;
      *&v25[4] = 2082;
      *&v25[6] = v21;
      v26 = 2082;
      v27 = v22;
      v28 = 1024;
      v29 = 278;
      v30 = 2114;
      v31 = v23;
      v32 = 2114;
      v33 = v6;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error sending msg=%{public}@\nerror=%{public}@", buf, 0x36u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10026809C(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a1)
  {
    v38 = v9;
    v11 = v7;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v13 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_transmitMessage:toService:completionHandler:");
      v18 = [v8 uri];
      v19 = 45;
      if (isMetaClass)
      {
        v19 = 43;
      }

      v13(6, "%c[%{public}s %{public}s]:%i %{public}@", v19, ClassName, Name, 786, v18);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = object_getClass(a1);
      if (class_isMetaClass(v21))
      {
        v22 = 43;
      }

      else
      {
        v22 = 45;
      }

      v23 = object_getClassName(a1);
      v24 = sel_getName("_transmitMessage:toService:completionHandler:");
      v25 = [v8 uri];
      *buf = 67110146;
      v49 = v22;
      v50 = 2082;
      v51 = v23;
      v52 = 2082;
      v53 = v24;
      v54 = 1024;
      v55 = 786;
      v56 = 2114;
      v57 = v25;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
    }

    v26 = a1[11];
    if (v26)
    {
      if ([*(v26 + 56) readerModeProtectionActive])
      {
        v27 = a1[3];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10026B2F0;
        block[3] = &unk_100316050;
        block[4] = a1;
        v47 = "_transmitMessage:toService:completionHandler:";
        v10 = v38;
        v46 = v38;
        dispatch_async(v27, block);

        goto LABEL_22;
      }

      v28 = a1[11];
    }

    else
    {
      v28 = 0;
    }

    v29 = a1[12];
    v44 = 0;
    v30 = v29;
    v31 = v28;
    v7 = v11;
    sub_100193F64(v31, v11, v30, 0, &v44);
    v32 = v44;

    if (v32)
    {
      v33 = a1[3];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_10026B550;
      v39[3] = &unk_10031B580;
      v39[4] = a1;
      v43 = "_transmitMessage:toService:completionHandler:";
      v40 = v11;
      v41 = v32;
      v10 = v38;
      v42 = v38;
      dispatch_async(v33, v39);
    }

    else
    {
      v34 = v8;
      v35 = [v34 minWaitTime];
      if (v35 >= 4)
      {
        v36 = 1000000 * (1 << ((v35 >> 2) - 1));
      }

      else
      {
        v36 = 0;
      }

      v37 = [v34 maxWaitTimeExtension];
      v10 = v38;
      sub_10026AB9C(a1, v36, (v37 + 1), v38);
    }
  }

LABEL_22:
}

void sub_1002684E0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 96), a2);
  }
}

void sub_1002684F8(uint64_t a1)
{
  v31 = objc_opt_new();
  [v31 addRecordArray:*(a1 + 64)];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = *(a1 + 72);
  v32 = [obj countByEnumeratingWithState:&v36 objects:v50 count:16];
  if (v32)
  {
    v30 = *v37;
    do
    {
      for (i = 0; i != v32; i = i + 1)
      {
        if (*v37 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v36 + 1) + 8 * i);
        v33 = 16;
        v4 = [v3 uri];
        v34 = [v4 length];
        memset(v35, 0, sizeof(v35));

        v5 = [[NSMutableData alloc] initWithBytes:&v33 length:2];
        v6 = [v3 uri];
        v7 = [v6 dataUsingEncoding:4];
        [v5 appendData:v7];

        v33 = 0;
        v34 = [v3 minWaitTime];
        v35[0] = [v3 maxWaitTimeExtension] & 0xF;
        v8 = [v3 maxMessageSize];
        if (v8 >= 0x800)
        {
          v9 = 2048;
        }

        else
        {
          v9 = v8;
        }

        *&v35[1] = __rev16(v9);
        [v5 appendBytes:&v33 length:5];
        v10 = [NFNdefRecordInternal alloc];
        v11 = [@"Tp" dataUsingEncoding:4];
        v12 = [v10 initWithHeader:17 type:v11 identifier:0 payload:v5];

        [v31 addRecord:v12];
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v14 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("_generateInitialServiceReadyMessage");
          v19 = [v3 uri];
          v28 = [v19 UTF8String];
          v20 = 45;
          if (isMetaClass)
          {
            v20 = 43;
          }

          v14(6, "%c[%{public}s %{public}s]:%i service=%s", v20, ClassName, Name, 380, v28);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v21 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = object_getClass(a1);
          if (class_isMetaClass(v22))
          {
            v23 = 43;
          }

          else
          {
            v23 = 45;
          }

          v24 = object_getClassName(a1);
          v25 = sel_getName("_generateInitialServiceReadyMessage");
          v26 = [v3 uri];
          v27 = [v26 UTF8String];
          *buf = 67110146;
          v41 = v23;
          v42 = 2082;
          v43 = v24;
          v44 = 2082;
          v45 = v25;
          v46 = 1024;
          v47 = 380;
          v48 = 2080;
          v49 = v27;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i service=%s", buf, 0x2Cu);
        }
      }

      v32 = [obj countByEnumeratingWithState:&v36 objects:v50 count:16];
    }

    while (v32);
  }

  sub_10026637C(a1, v31);
}

void sub_1002688DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100269CE4;
    block[3] = &unk_100315F80;
    block[4] = a1;
    v7 = v3;
    v8 = "_hceReadForPurpose:";
    dispatch_async(v5, block);
  }
}

uint64_t sub_10026898C(uint64_t a1)
{
  v2 = *(a1 + 80);
  objc_sync_enter(v2);
  v3 = [*(a1 + 80) bytes];
  v4 = __rev16(*v3);
  if (v4)
  {
    v5 = [[NFNdefMessageInternal alloc] initWithBytes:v3 + 1 length:v4];
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 9);
      *(a1 + 9) = 0;
      v8 = [v5 records];
      v9 = [v8 count];

      if (v9 != 1)
      {
        v47 = 1;
        if (!v7)
        {
          goto LABEL_57;
        }

        goto LABEL_52;
      }

      v145 = v7;
      v146 = v6;
      v147 = v2;
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      obj = [v6 records];
      v10 = [obj countByEnumeratingWithState:&v157 objects:v165 count:16];
      if (!v10)
      {
        goto LABEL_37;
      }

      v11 = v10;
      v12 = *v158;
LABEL_6:
      v13 = 0;
      while (1)
      {
        if (*v158 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v157 + 1) + 8 * v13);
        if ([v14 typeNameFormat] != 1)
        {
          goto LABEL_35;
        }

        v15 = [v14 type];
        v16 = [@"Ts" dataUsingEncoding:4];
        v17 = [v15 isEqualToData:v16];

        if (!v17)
        {
          goto LABEL_35;
        }

        v18 = [v14 payload];
        v19 = [v18 bytes];

        v20 = [v14 payload];
        v21 = [v20 length];

        if (v21)
        {
          if (!v19 || (v22 = *v19, !*v19))
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v99 = Logger;
              Class = object_getClass(a1);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(a1);
              Name = sel_getName("_checkTagMemoryUpdate");
              v103 = 45;
              if (isMetaClass)
              {
                v103 = 43;
              }

              v99(6, "%c[%{public}s %{public}s]:%i TNEP Deselect", v103, ClassName, Name, 424);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v104 = NFSharedLogGetLogger();
            v6 = v146;
            v2 = v147;
            if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
            {
              v105 = object_getClass(a1);
              if (class_isMetaClass(v105))
              {
                v106 = 43;
              }

              else
              {
                v106 = 45;
              }

              v107 = object_getClassName(a1);
              v108 = sel_getName("_checkTagMemoryUpdate");
              *buf = 67109890;
              v167 = v106;
              v168 = 2082;
              v169 = v107;
              v170 = 2082;
              v171 = v108;
              v172 = 1024;
              v173 = 424;
              _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i TNEP Deselect", buf, 0x22u);
            }

            v109 = NFSharedSignpostLog();
            v110 = v109;
            v111 = *(a1 + 104);
            if (v111 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v109))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v110, OS_SIGNPOST_EVENT, v111, "TNEP_TagDevice_Deselect", "NoServiceName", buf, 2u);
            }

            *(a1 + 8) = 0;
            sub_1002684F8(a1);
            WeakRetained = objc_loadWeakRetained((a1 + 40));
            [WeakRetained tnepTagDeviceDeselected:0];

            v161 = 1;
LABEL_123:

            goto LABEL_93;
          }

          v23 = [v14 payload];
          v24 = [v23 length] - 1;

          if (v24 == v22)
          {
            v113 = [NSString alloc];
            v114 = [v14 payload];
            v115 = [v14 payload];
            v116 = [v114 subdataWithRange:{1, objc_msgSend(v115, "length") - 1}];
            v117 = [v113 initWithData:v116 encoding:4];

            v155 = 0u;
            v156 = 0u;
            v153 = 0u;
            v154 = 0u;
            v118 = *(a1 + 72);
            v119 = [v118 countByEnumeratingWithState:&v153 objects:v164 count:16];
            if (v119)
            {
              v120 = v119;
              v121 = *v154;
              while (2)
              {
                for (i = 0; i != v120; i = i + 1)
                {
                  if (*v154 != v121)
                  {
                    objc_enumerationMutation(v118);
                  }

                  v123 = *(*(&v153 + 1) + 8 * i);
                  v124 = [v123 uri];
                  v125 = [v124 isEqualToString:v117];

                  if (v125)
                  {
                    if (*(a1 + 8) == 1)
                    {
                      v135 = objc_loadWeakRetained((a1 + 40));
                      [v135 tnepTagDeviceDeselected:0];
                    }

                    v136 = objc_loadWeakRetained((a1 + 40));
                    v149[0] = _NSConcreteStackBlock;
                    v149[1] = 3221225472;
                    v149[2] = sub_1002698E4;
                    v149[3] = &unk_10031D450;
                    v149[4] = a1;
                    v152 = "_checkTagMemoryUpdate";
                    v150 = v117;
                    v151 = v123;
                    [v136 tnepTagDeviceSelected:v150 respondHandler:v149];

                    v161 = 0;
                    goto LABEL_122;
                  }
                }

                v120 = [v118 countByEnumeratingWithState:&v153 objects:v164 count:16];
                if (v120)
                {
                  continue;
                }

                break;
              }
            }

            v126 = NFSharedSignpostLog();
            v127 = v126;
            v128 = *(a1 + 104);
            if (v128 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v126))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v127, OS_SIGNPOST_EVENT, v128, "TNEP_TagDevice_Deselect", "InvalidServiceName", buf, 2u);
            }

            *(a1 + 8) = 0;
            sub_1002684F8(a1);
            v129 = objc_loadWeakRetained((a1 + 40));
            v130 = [NSError alloc];
            v131 = [NSString stringWithUTF8String:"nfcd"];
            v162 = NSLocalizedDescriptionKey;
            v132 = [NSString stringWithUTF8String:"TNEP invalid service"];
            v163 = v132;
            v133 = [NSDictionary dictionaryWithObjects:&v163 forKeys:&v162 count:1];
            v134 = [v130 initWithDomain:v131 code:59 userInfo:v133];
            [v129 tnepTagDeviceDeselected:v134];

            v161 = 1;
LABEL_122:
            v6 = v146;
            v2 = v147;

            goto LABEL_123;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v25 = NFLogGetLogger();
          if (v25)
          {
            v26 = v25;
            v27 = object_getClass(a1);
            v28 = class_isMetaClass(v27);
            v29 = object_getClassName(a1);
            v138 = sel_getName("_checkTagMemoryUpdate");
            v30 = 45;
            if (v28)
            {
              v30 = 43;
            }

            v26(4, "%c[%{public}s %{public}s]:%i Invalid Ts record", v30, v29, v138, 431);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v31 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_34;
          }

          v32 = object_getClass(a1);
          if (class_isMetaClass(v32))
          {
            v33 = 43;
          }

          else
          {
            v33 = 45;
          }

          v34 = object_getClassName(a1);
          v35 = sel_getName("_checkTagMemoryUpdate");
          *buf = 67109890;
          v167 = v33;
          v168 = 2082;
          v169 = v34;
          v170 = 2082;
          v171 = v35;
          v172 = 1024;
          v173 = 431;
          v36 = v31;
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v37 = NFLogGetLogger();
          if (v37)
          {
            v38 = v37;
            v39 = object_getClass(a1);
            v40 = class_isMetaClass(v39);
            v41 = object_getClassName(a1);
            v139 = sel_getName("_checkTagMemoryUpdate");
            v42 = 45;
            if (v40)
            {
              v42 = 43;
            }

            v38(4, "%c[%{public}s %{public}s]:%i Invalid Ts record", v42, v41, v139, 417);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v31 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_34;
          }

          v43 = object_getClass(a1);
          if (class_isMetaClass(v43))
          {
            v44 = 43;
          }

          else
          {
            v44 = 45;
          }

          v45 = object_getClassName(a1);
          v46 = sel_getName("_checkTagMemoryUpdate");
          *buf = 67109890;
          v167 = v44;
          v168 = 2082;
          v169 = v45;
          v170 = 2082;
          v171 = v46;
          v172 = 1024;
          v173 = 417;
          v36 = v31;
        }

        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid Ts record", buf, 0x22u);
LABEL_34:

LABEL_35:
        if (v11 == ++v13)
        {
          v11 = [obj countByEnumeratingWithState:&v157 objects:v165 count:16];
          if (v11)
          {
            goto LABEL_6;
          }

LABEL_37:

          v47 = 1;
          v6 = v146;
          v2 = v147;
          if ((v145 & 1) == 0)
          {
LABEL_57:
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v58 = NFLogGetLogger();
            if (v58)
            {
              v59 = v58;
              v60 = object_getClass(a1);
              v61 = class_isMetaClass(v60);
              v62 = object_getClassName(a1);
              v141 = sel_getName("_checkTagMemoryUpdate");
              v63 = 45;
              if (v61)
              {
                v63 = 43;
              }

              v59(6, "%c[%{public}s %{public}s]:%i Write completed", v63, v62, v141, 473);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v64 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              v65 = object_getClass(a1);
              if (class_isMetaClass(v65))
              {
                v66 = 43;
              }

              else
              {
                v66 = 45;
              }

              v67 = object_getClassName(a1);
              v68 = sel_getName("_checkTagMemoryUpdate");
              *buf = 67109890;
              v167 = v66;
              v168 = 2082;
              v169 = v67;
              v170 = 2082;
              v171 = v68;
              v172 = 1024;
              v173 = 473;
              _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Write completed", buf, 0x22u);
            }

            if (*(a1 + 8) == 1)
            {
              if (v47)
              {
                v69 = NFSharedSignpostLog();
                v70 = v69;
                v71 = *(a1 + 104);
                if (v71 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v69))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&_mh_execute_header, v70, OS_SIGNPOST_EVENT, v71, "TNEP_TagDevice_MsgReceived", &unk_1002E8B7A, buf, 2u);
                }

                v72 = objc_loadWeakRetained((a1 + 40));
                [v72 tnepTagDeviceNDEFMessageReceived:v6];

                v73 = *(a1 + 80);
                [v73 resetBytesInRange:{0, objc_msgSend(v73, "length")}];
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v85 = NFLogGetLogger();
                if (v85)
                {
                  v86 = v85;
                  v87 = object_getClass(a1);
                  v88 = class_isMetaClass(v87);
                  v89 = object_getClassName(a1);
                  v143 = sel_getName("_checkTagMemoryUpdate");
                  v90 = 45;
                  if (v88)
                  {
                    v90 = 43;
                  }

                  v86(3, "%c[%{public}s %{public}s]:%i Dropping invalid message received in TNEP select state", v90, v89, v143, 482);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v91 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
                {
                  v92 = object_getClass(a1);
                  if (class_isMetaClass(v92))
                  {
                    v93 = 43;
                  }

                  else
                  {
                    v93 = 45;
                  }

                  v94 = object_getClassName(a1);
                  v95 = sel_getName("_checkTagMemoryUpdate");
                  *buf = 67109890;
                  v167 = v93;
                  v168 = 2082;
                  v169 = v94;
                  v170 = 2082;
                  v171 = v95;
                  v172 = 1024;
                  v173 = 482;
                  _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Dropping invalid message received in TNEP select state", buf, 0x22u);
                }

                v96 = *(a1 + 80);
                [v96 resetBytesInRange:{0, objc_msgSend(v96, "length")}];

                *buf = 1536;
                [*(a1 + 80) replaceBytesInRange:0 withBytes:2 length:{buf, 2}];
                [*(a1 + 80) replaceBytesInRange:2 withBytes:6 length:{&unk_100297DD7, 6}];
              }
            }

            else
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v74 = NFLogGetLogger();
              if (v74)
              {
                v75 = v74;
                v76 = object_getClass(a1);
                v77 = class_isMetaClass(v76);
                v78 = object_getClassName(a1);
                v142 = sel_getName("_checkTagMemoryUpdate");
                v79 = 45;
                if (v77)
                {
                  v79 = 43;
                }

                v75(4, "%c[%{public}s %{public}s]:%i Reset to TNEP initial state due to invalid message recevied", v79, v78, v142, 493);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v80 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
              {
                v81 = object_getClass(a1);
                if (class_isMetaClass(v81))
                {
                  v82 = 43;
                }

                else
                {
                  v82 = 45;
                }

                v83 = object_getClassName(a1);
                v84 = sel_getName("_checkTagMemoryUpdate");
                *buf = 67109890;
                v167 = v82;
                v168 = 2082;
                v169 = v83;
                v170 = 2082;
                v171 = v84;
                v172 = 1024;
                v173 = 493;
                _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Reset to TNEP initial state due to invalid message recevied", buf, 0x22u);
              }

              sub_1002684F8(a1);
            }

            goto LABEL_92;
          }

LABEL_52:
          if (v4)
          {
            v57 = v47;
          }

          else
          {
            v57 = 0;
          }

          if ((v57 & 1) != 0 || (*(a1 + 9) & 1) == 0)
          {
            goto LABEL_57;
          }

          goto LABEL_92;
        }
      }
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v48 = NFLogGetLogger();
    if (v48)
    {
      v49 = v48;
      v50 = object_getClass(a1);
      v51 = class_isMetaClass(v50);
      v137 = object_getClassName(a1);
      v140 = sel_getName("_checkTagMemoryUpdate");
      v52 = 45;
      if (v51)
      {
        v52 = 43;
      }

      v49(4, "%c[%{public}s %{public}s]:%i Invalid NDEF message, NLEN=%d", v52, v137, v140, 402, v4);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v53 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = object_getClass(a1);
      if (class_isMetaClass(v54))
      {
        v55 = 43;
      }

      else
      {
        v55 = 45;
      }

      *buf = 67110146;
      v167 = v55;
      v168 = 2082;
      v169 = object_getClassName(a1);
      v170 = 2082;
      v171 = sel_getName("_checkTagMemoryUpdate");
      v172 = 1024;
      v173 = 402;
      v174 = 1024;
      v175 = v4;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid NDEF message, NLEN=%d", buf, 0x28u);
    }
  }

  v6 = 0;
  v56 = *(a1 + 9);
  *(a1 + 9) = v4 == 0;
  if (v56)
  {
    v47 = 0;
    goto LABEL_52;
  }

LABEL_92:
  v161 = 1;
LABEL_93:

  objc_sync_exit(v2);
  return v161;
}

void sub_1002698E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    v12 = 43;
    if (!isMetaClass)
    {
      v12 = 45;
    }

    v7(6, "%c[%{public}s %{public}s]:%i Activated (%{public}@),status=0x%lx,optionalRecs=%{public}@", v12, ClassName, Name, 448, *(a1 + 40), a2, v5);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v13 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v14))
    {
      v15 = 43;
    }

    else
    {
      v15 = 45;
    }

    v16 = object_getClassName(*(a1 + 32));
    v17 = sel_getName(*(a1 + 56));
    v18 = *(a1 + 40);
    *buf = 67110658;
    *v41 = v15;
    *&v41[4] = 2082;
    *&v41[6] = v16;
    *&v41[14] = 2082;
    *&v41[16] = v17;
    v42 = 1024;
    v43 = 448;
    v44 = 2114;
    v45 = v18;
    v46 = 2048;
    v47 = a2;
    v48 = 2114;
    v49 = v5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Activated (%{public}@),status=0x%lx,optionalRecs=%{public}@", buf, 0x40u);
  }

  v19 = NFSharedSignpostLog();
  v20 = v19;
  v21 = *(a1 + 32);
  if (v21)
  {
    v22 = *(v21 + 104);
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      v23 = *(a1 + 48);
      *buf = 138412546;
      *v41 = v23;
      *&v41[8] = 2048;
      *&v41[10] = a2;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_BEGIN, v22, "TNEP_TagDevice_Select", "service=%@, status=%ld", buf, 0x16u);
    }
  }

  v24 = *(a1 + 32);
  if (v24)
  {
    v25 = v5;
    v26 = v5;
    v27 = objc_opt_new();
    v28 = a2;
    buf[0] = a2;
    v29 = [NFNdefRecordInternal alloc];
    v30 = [@"Te" dataUsingEncoding:4];
    v31 = [[NSData alloc] initWithBytes:buf length:1];
    v32 = [v29 initWithHeader:17 type:v30 identifier:0 payload:v31];

    [v27 addRecord:v32];
    [v27 addRecordArray:v26];

    if (sub_10026637C(v24, v27))
    {
      *(v24 + 8) = 1;
    }

    v33 = *(v24 + 56);
    v34 = [[NSData alloc] initWithBytes:&unk_100297DD5 length:2];
    [v33 sendAPDU:v34];

    sub_1002688DC(v24, @"TNEP_ActivateService");
    a2 = v28;
    v5 = v25;
  }

  v35 = NFSharedSignpostLog();
  v36 = v35;
  v37 = *(a1 + 32);
  if (v37)
  {
    v38 = *(v37 + 104);
    if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
    {
      v39 = *(a1 + 48);
      *buf = 138412546;
      *v41 = v39;
      *&v41[8] = 2048;
      *&v41[10] = a2;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_INTERVAL_END, v38, "TNEP_TagDevice_Select", "service=%@, status=%ld", buf, 0x16u);
    }
  }
}

void sub_100269CE4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 112);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 32);
      v7 = v6 ? *(v6 + 112) : 0;
      v8 = [v7 isEqualToString:*(a1 + 40)];

      if ((v8 & 1) == 0)
      {
        v9 = NFSharedSignpostLog();
        v10 = v9;
        v11 = *(a1 + 32);
        if (v11)
        {
          v12 = *(v11 + 104);
          if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
          {
            v13 = *(a1 + 40);
            *buf = 138412290;
            *v130 = v13;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v12, "TNEP_HCE_Read", "%@", buf, 0xCu);
          }
        }

        sub_10026AB8C(*(a1 + 32), 0);
      }
    }

    v14 = *(a1 + 32);
    if (v14 && *(v14 + 112))
    {
      goto LABEL_18;
    }
  }

  else
  {
    v14 = 0;
  }

  sub_10026AB8C(v14, *(a1 + 40));
  v15 = NFSharedSignpostLog();
  v16 = v15;
  v17 = *(a1 + 32);
  if (v17)
  {
    v18 = *(v17 + 104);
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v19 = *(a1 + 40);
      *buf = 138412290;
      *v130 = v19;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, v18, "TNEP_HCE_Read", "%@", buf, 0xCu);
    }
  }

  v14 = *(a1 + 32);
  if (v14)
  {
LABEL_18:
    v20 = *(v14 + 56);
    goto LABEL_19;
  }

  v20 = 0;
LABEL_19:
  v128 = 0;
  v21 = v20;
  v22 = [v21 readApduAndReturnError:&v128];
  v23 = v128;

  if (v22)
  {
    v24 = *(a1 + 32);
    v25 = v22;
    v26 = v25;
    if (!v24)
    {
      v28 = 0;
LABEL_24:

      if ([v28 length])
      {
        v29 = *(a1 + 32);
        if (v29)
        {
          v30 = *(v29 + 56);
        }

        else
        {
          v30 = 0;
        }

        [v30 sendAPDU:v28];
        sub_1002688DC(*(a1 + 32), *(a1 + 40));
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v56 = Logger;
          Class = object_getClass(*(a1 + 32));
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(*(a1 + 32));
          Name = sel_getName(*(a1 + 48));
          v60 = 45;
          if (isMetaClass)
          {
            v60 = 43;
          }

          v56(6, "%c[%{public}s %{public}s]:%i read complete", v60, ClassName, Name, 696);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v61 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          v62 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v62))
          {
            v63 = 43;
          }

          else
          {
            v63 = 45;
          }

          v64 = object_getClassName(*(a1 + 32));
          v65 = sel_getName(*(a1 + 48));
          *buf = 67109890;
          *v130 = v63;
          *&v130[4] = 2082;
          *&v130[6] = v64;
          v131 = 2082;
          v132 = v65;
          v133 = 1024;
          v134 = 696;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i read complete", buf, 0x22u);
        }

        sub_10026AB8C(*(a1 + 32), 0);
        v66 = NFSharedSignpostLog();
        v67 = v66;
        v68 = *(a1 + 32);
        if (v68)
        {
          v69 = *(v68 + 104);
          if (v69 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
          {
            v70 = *(a1 + 40);
            *buf = 138412290;
            *v130 = v70;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v67, OS_SIGNPOST_INTERVAL_END, v69, "TNEP_HCE_Read", "%@", buf, 0xCu);
          }
        }
      }

      goto LABEL_66;
    }

    if ([v25 length] <= 3 || (v27 = objc_msgSend(v26, "bytes"), *v27))
    {
      v28 = [[NSData alloc] initWithBytes:&unk_100297DD3 length:2];
      goto LABEL_24;
    }

    v71 = v27;
    v127 = v2;
    v72 = v27[1];
    v73 = v27[2];
    v74 = v27[3];
    if ([v26 length] < 5)
    {
      v75 = 0;
    }

    else
    {
      v75 = v71[4];
    }

    switch(v72)
    {
      case 0xD6:
        if (*(v24 + 48) != 2)
        {
          goto LABEL_99;
        }

        if ([v26 length] > 4)
        {
          if ([v26 length] > 0x104)
          {
            if (v75)
            {
              break;
            }

            v75 = __rev16(*(v71 + 5));
            if (!v75 || [v26 length] != (v75 + 7))
            {
              break;
            }

            v92 = 7;
          }

          else
          {
            if (!v75 || [v26 length] != (v75 + 5))
            {
              break;
            }

            v92 = 5;
          }

          v111 = v74 | (v73 << 8);
          if (v75 + v111 <= [*(v24 + 80) length])
          {
            v116 = [v26 subdataWithRange:{v92, v75}];
            v117 = *(v24 + 80);
            v118 = v116;
            v119 = v117;
            [v119 replaceBytesInRange:v111 withBytes:v75 length:{objc_msgSend(v116, "bytes"), objc_msgSend(v116, "length")}];

            if (v111 > 1 || ([*(v24 + 80) bytes], sub_10026898C(v24)))
            {
              v120 = NFSharedSignpostLog();
              v121 = v120;
              v122 = *(v24 + 104);
              if (v122 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v120))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v121, OS_SIGNPOST_EVENT, v122, "TNEP_TagDevice_UpdatedMemory", "NDEF", buf, 2u);
              }

              v28 = [[NSData alloc] initWithBytes:&unk_100297DD5 length:2];
            }

            else
            {
              v28 = 0;
            }

            v2 = v127;

            goto LABEL_24;
          }
        }

        break;
      case 0xB0:
        if ([v26 length] == 5)
        {
          v84 = v71[4];
        }

        else
        {
          if ([v26 length] != 7 || v71[4])
          {
            break;
          }

          v84 = __rev16(*(v71 + 5));
        }

        v85 = v74 | (v73 << 8);
        v86 = *(v24 + 48);
        if (v86 == 2)
        {
          if (v84)
          {
            v109 = v84;
          }

          else
          {
            v109 = 512;
          }

          v28 = [[NSMutableData alloc] initWithLength:v109];
          if ([*(v24 + 80) length] > v85)
          {
            if ([*(v24 + 80) length] < (v109 + v85))
            {
              LODWORD(v109) = [*(v24 + 80) length] - v85;
            }

            -[NSObject replaceBytesInRange:withBytes:](v28, "replaceBytesInRange:withBytes:", 0, v109, [*(v24 + 80) bytes] + v85);
          }

          [v28 appendBytes:&unk_100297DD5 length:2];
          v110 = NFSharedSignpostLog();
          v89 = v110;
          v90 = *(v24 + 104);
          if (v90 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v110))
          {
            goto LABEL_154;
          }

          *buf = 0;
          v91 = "NDEF";
LABEL_131:
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v89, OS_SIGNPOST_EVENT, v90, "TNEP_TagDevice_ReadBinaryCmd", v91, buf, 2u);
LABEL_154:

          goto LABEL_145;
        }

        if (v86 != 3)
        {
          goto LABEL_99;
        }

        if (v84)
        {
          v87 = v84;
        }

        else
        {
          v87 = 15;
        }

        if ((v87 + v85) < 0x10)
        {
          v28 = [[NSMutableData alloc] initWithBytes:&unk_100297DEC + v85 length:v87];
          [v28 appendBytes:&unk_100297DD5 length:2];
          v88 = NFSharedSignpostLog();
          v89 = v88;
          v90 = *(v24 + 104);
          if (v90 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v88))
          {
            goto LABEL_154;
          }

          *buf = 0;
          v91 = "CC";
          goto LABEL_131;
        }

        break;
      case 0xA4:
        if (v73 == 4 && !v74 && v75 == 7)
        {
          if ([v26 length] >= 0xB)
          {
            v76 = [v26 subdataWithRange:{5, 7}];
            v77 = [[NSData alloc] initWithBytes:&unk_100297DDD length:7];
            v78 = [v76 isEqualToData:v77];

            if (v78)
            {
              v79 = NFSharedSignpostLog();
              v80 = v79;
              v81 = *(v24 + 104);
              if (v81 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v79))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v80, OS_SIGNPOST_EVENT, v81, "TNEP_TagDevice_SelectCmd", "NDEFApp", buf, 2u);
              }

              *(v24 + 48) = 1;
              v82 = [NSData alloc];
              v83 = &unk_100297DD5;
              goto LABEL_144;
            }
          }

          goto LABEL_143;
        }

        if (!v73 && v74 == 12 && v75 == 2 && [v26 length] >= 6)
        {
          v89 = [v26 subdataWithRange:{5, 2}];
          v103 = [[NSData alloc] initWithBytes:&unk_100297DE4 length:2];
          v104 = [v89 isEqualToData:v103];

          if (v104)
          {
            v105 = NFSharedSignpostLog();
            v106 = v105;
            v107 = *(v24 + 104);
            if (v107 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v105))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v106, OS_SIGNPOST_EVENT, v107, "TNEP_TagDevice_SelectCmd", "CC", buf, 2u);
            }

            v108 = 3;
            goto LABEL_153;
          }

          v112 = [[NSData alloc] initWithBytes:&unk_100297DE6 length:2];
          v113 = [v89 isEqualToData:v112];

          if (v113)
          {
            v114 = NFSharedSignpostLog();
            v106 = v114;
            v115 = *(v24 + 104);
            if (v115 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v114))
            {
              *buf = 0;
              v108 = 2;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v106, OS_SIGNPOST_EVENT, v115, "TNEP_TagDevice_SelectCmd", "NDEF", buf, 2u);
            }

            else
            {
              v108 = 2;
            }

LABEL_153:

            *(v24 + 48) = v108;
            v28 = [[NSData alloc] initWithBytes:&unk_100297DD5 length:2];
            goto LABEL_154;
          }
        }

LABEL_143:
        *(v24 + 48) = 0;
        v82 = [NSData alloc];
        v83 = &unk_100297DE8;
        goto LABEL_144;
      default:
LABEL_99:
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v93 = NFLogGetLogger();
        if (v93)
        {
          v94 = v93;
          v95 = object_getClass(v24);
          v96 = class_isMetaClass(v95);
          v123 = object_getClassName(v24);
          v126 = sel_getName("_parseAPDU:");
          v97 = 45;
          if (v96)
          {
            v97 = 43;
          }

          v94(4, "%c[%{public}s %{public}s]:%i Unsupported command; CMD=0x%x", v97, v123, v126, 643, v72);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v98 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          v99 = object_getClass(v24);
          if (class_isMetaClass(v99))
          {
            v100 = 43;
          }

          else
          {
            v100 = 45;
          }

          v101 = object_getClassName(v24);
          v102 = sel_getName("_parseAPDU:");
          *buf = 67110146;
          *v130 = v100;
          *&v130[4] = 2082;
          *&v130[6] = v101;
          v131 = 2082;
          v132 = v102;
          v133 = 1024;
          v134 = 643;
          v135 = 1024;
          v136 = v72;
          _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unsupported command; CMD=0x%x", buf, 0x28u);
        }

        v82 = [NSData alloc];
        v83 = &unk_100297DD3;
        goto LABEL_144;
    }

    v82 = [NSData alloc];
    v83 = &unk_100297DEA;
LABEL_144:
    v28 = [v82 initWithBytes:v83 length:2];
LABEL_145:
    v2 = v127;
    goto LABEL_24;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v31 = NFLogGetLogger();
  if (v31)
  {
    v32 = v31;
    v33 = object_getClass(*(a1 + 32));
    v34 = class_isMetaClass(v33);
    v35 = object_getClassName(*(a1 + 32));
    v124 = sel_getName(*(a1 + 48));
    v36 = 45;
    if (v34)
    {
      v36 = 43;
    }

    v32(6, "%c[%{public}s %{public}s]:%i Connection lost, read complete", v36, v35, v124, 671);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v37 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v38))
    {
      v39 = 43;
    }

    else
    {
      v39 = 45;
    }

    v40 = object_getClassName(*(a1 + 32));
    v41 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    *v130 = v39;
    *&v130[4] = 2082;
    *&v130[6] = v40;
    v131 = 2082;
    v132 = v41;
    v133 = 1024;
    v134 = 671;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Connection lost, read complete", buf, 0x22u);
  }

  v42 = *(a1 + 32);
  if (!v42)
  {
    goto LABEL_162;
  }

  if (*(v42 + 8) == 1)
  {
    v43 = NFSharedSignpostLog();
    v44 = v43;
    v45 = *(a1 + 32);
    if (v45)
    {
      v46 = *(v45 + 104);
      if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_EVENT, v46, "TNEP_TagDevice_Deselect", "ConnectionLost", buf, 2u);
      }
    }

    v47 = *(a1 + 32);
    v48 = v47 ? objc_loadWeakRetained((v47 + 40)) : 0;
    [v48 tnepTagDeviceDeselected:v23];

    v42 = *(a1 + 32);
    if (!v42)
    {
      goto LABEL_162;
    }
  }

  *(v42 + 8) = 0;
  v49 = *(a1 + 32);
  if (v49)
  {
    objc_storeStrong((v49 + 56), 0);
    v50 = *(a1 + 32);
  }

  else
  {
LABEL_162:
    v50 = 0;
  }

  sub_10026AB8C(v50, 0);
  v51 = NFSharedSignpostLog();
  v28 = v51;
  v52 = *(a1 + 32);
  if (v52)
  {
    v53 = *(v52 + 104);
    if (v53 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
    {
      v54 = *(a1 + 40);
      *buf = 138412290;
      *v130 = v54;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_END, v53, "TNEP_HCE_Read", "%@", buf, 0xCu);
    }
  }

LABEL_66:

  objc_autoreleasePoolPop(v2);
}

void sub_10026AB8C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 112), a2);
  }
}

void sub_10026AB9C(dispatch_queue_t *a1, int64_t a2, int a3, void *a4)
{
  v7 = a4;
  v8 = v7;
  if (a1)
  {
    if (a3)
    {
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10026AEA0;
      v26[3] = &unk_10031D478;
      v26[4] = a1;
      v28 = "_receiveWithWaitTime:timeExtension:completionHandler:";
      v27 = v7;
      v29 = a2;
      v30 = a3;
      v9 = objc_retainBlock(v26);
      if (a2)
      {
        v10 = dispatch_time(0, a2);
        dispatch_after(v10, a1[3], v9);
      }

      else
      {
        dispatch_async(a1[3], v9);
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v12 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_receiveWithWaitTime:timeExtension:completionHandler:");
        v16 = 45;
        if (isMetaClass)
        {
          v16 = 43;
        }

        v12(4, "%c[%{public}s %{public}s]:%i Timeout", v16, ClassName, Name, 749);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = object_getClass(a1);
        if (class_isMetaClass(v18))
        {
          v19 = 43;
        }

        else
        {
          v19 = 45;
        }

        *buf = 67109890;
        v34 = v19;
        v35 = 2082;
        v36 = object_getClassName(a1);
        v37 = 2082;
        v38 = sel_getName("_receiveWithWaitTime:timeExtension:completionHandler:");
        v39 = 1024;
        v40 = 749;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Timeout", buf, 0x22u);
      }

      v20 = [NSError alloc];
      v21 = [NSString stringWithUTF8String:"nfcd"];
      v31 = NSLocalizedDescriptionKey;
      v22 = [NSString stringWithUTF8String:"Timeout"];
      v32 = v22;
      v23 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v24 = [v20 initWithDomain:v21 code:5 userInfo:v23];
      (v8)[2](v8, 0, v24);
    }
  }
}

void sub_10026AEA0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_33;
  }

  v3 = v2[11];
  if (!v3)
  {
    goto LABEL_17;
  }

  if ([*(v3 + 56) readerModeProtectionActive])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v5(4, "%c[%{public}s %{public}s]:%i Reader protection active", v9, ClassName, Name, 756);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      v13 = object_getClassName(*(a1 + 32));
      v14 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v42 = v12;
      v43 = 2082;
      v44 = v13;
      v45 = 2082;
      v46 = v14;
      v47 = 1024;
      v48 = 756;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Reader protection active", buf, 0x22u);
    }

    v15 = [NSError alloc];
    v16 = [NSString stringWithUTF8String:"nfcd"];
    v53 = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithUTF8String:"Reader mode temporarily disabled"];
    v54 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v19 = [v15 initWithDomain:v16 code:47 userInfo:v18];

    v20 = *(a1 + 32);
    if (v20)
    {
      WeakRetained = objc_loadWeakRetained((v20 + 40));
    }

    else
    {
      WeakRetained = 0;
    }

    [WeakRetained tnepReaderServicesAborted:v19];

    (*(*(a1 + 40) + 16))();
    goto LABEL_32;
  }

  v2 = *(a1 + 32);
  if (v2)
  {
LABEL_17:
    v22 = v2[12];
  }

  else
  {
LABEL_33:
    v22 = 0;
  }

  v40 = 0;
  v23 = v22;
  v24 = sub_10026571C(v2, v23, &v40);
  v19 = v40;

  if (!v24 || v19)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFLogGetLogger();
    if (v25)
    {
      v26 = v25;
      v27 = object_getClass(*(a1 + 32));
      v28 = class_isMetaClass(v27);
      v29 = object_getClassName(*(a1 + 32));
      v30 = sel_getName(*(a1 + 48));
      v31 = 45;
      if (v28)
      {
        v31 = 43;
      }

      v26(6, "%c[%{public}s %{public}s]:%i Retry in %ld, N=%d", v31, v29, v30, 766, *(a1 + 56), *(a1 + 64));
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v32 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v33))
      {
        v34 = 43;
      }

      else
      {
        v34 = 45;
      }

      v35 = object_getClassName(*(a1 + 32));
      v36 = sel_getName(*(a1 + 48));
      v37 = *(a1 + 56);
      v38 = *(a1 + 64);
      *buf = 67110402;
      v42 = v34;
      v43 = 2082;
      v44 = v35;
      v45 = 2082;
      v46 = v36;
      v47 = 1024;
      v48 = 766;
      v49 = 2048;
      v50 = v37;
      v51 = 1024;
      v52 = v38;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Retry in %ld, N=%d", buf, 0x32u);
    }

    sub_10026AB9C(*(a1 + 32), *(a1 + 56), (*(a1 + 64) - 1), *(a1 + 40));
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

LABEL_32:
}

void sub_10026B2F0(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v7 = 45;
    if (isMetaClass)
    {
      v7 = 43;
    }

    v3(4, "%c[%{public}s %{public}s]:%i Reader protection active", v7, ClassName, Name, 790);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v9))
    {
      v10 = 43;
    }

    else
    {
      v10 = 45;
    }

    v11 = object_getClassName(*(a1 + 32));
    v12 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v24 = v10;
    v25 = 2082;
    v26 = v11;
    v27 = 2082;
    v28 = v12;
    v29 = 1024;
    v30 = 790;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Reader protection active", buf, 0x22u);
  }

  v13 = [NSError alloc];
  v14 = [NSString stringWithUTF8String:"nfcd"];
  v21 = NSLocalizedDescriptionKey;
  v15 = [NSString stringWithUTF8String:"Reader mode temporarily disabled"];
  v22 = v15;
  v16 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v17 = [v13 initWithDomain:v14 code:47 userInfo:v16];

  v18 = *(a1 + 32);
  if (v18)
  {
    WeakRetained = objc_loadWeakRetained((v18 + 40));
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained tnepReaderServicesAborted:v17];

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_10026B550(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 64));
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v3(3, "%c[%{public}s %{public}s]:%i NDEF write failed: %{public}@  error:%{public}@", v8, ClassName, Name, 802, *(a1 + 40), *(a1 + 48));
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v10))
    {
      v11 = 43;
    }

    else
    {
      v11 = 45;
    }

    v12 = object_getClassName(*(a1 + 32));
    v13 = sel_getName(*(a1 + 64));
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    *buf = 67110402;
    v19 = v11;
    v20 = 2082;
    v21 = v12;
    v22 = 2082;
    v23 = v13;
    v24 = 1024;
    v25 = 802;
    v26 = 2114;
    v27 = v14;
    v28 = 2114;
    v29 = v15;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i NDEF write failed: %{public}@  error:%{public}@", buf, 0x36u);
  }

  v16 = *(a1 + 48);
  return (*(*(a1 + 56) + 16))();
}

void sub_10026B718(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError alloc];
  v3 = [NSString stringWithUTF8String:"nfcd"];
  v7 = NSLocalizedDescriptionKey;
  v4 = [NSString stringWithUTF8String:"No resources"];
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v6 = [v2 initWithDomain:v3 code:34 userInfo:v5];
  (*(v1 + 16))(v1, 0, v6);
}

void sub_10026B84C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 40));
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = WeakRetained;
  [WeakRetained tnepReaderServicesDiscovered:*(a1 + 40)];
}

void sub_10026B8AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 40));
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = WeakRetained;
  [WeakRetained staticReaderEngagementDiscovered:*(a1 + 40)];
}

void sub_10026B90C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 40));
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = WeakRetained;
  [WeakRetained tnepReaderServicesAborted:*(a1 + 40)];
}

void sub_1002703B8(id a1)
{
  v1 = objc_alloc_init(_NFACHardwareManager);
  v2 = qword_10035DB70;
  qword_10035DB70 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_100270FC4(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100271070;
  v5[3] = &unk_1003161D8;
  v5[4] = v1;
  v5[5] = &v6;
  dispatch_async_and_wait(v2, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id sub_100271070(uint64_t a1)
{
  result = [*(a1 + 32) dumpState];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1002710A4(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 40));
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Launched by %s", v8, ClassName, Name, 199, string);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v10))
    {
      v11 = 43;
    }

    else
    {
      v11 = 45;
    }

    v12 = object_getClassName(*(a1 + 32));
    v13 = sel_getName(*(a1 + 40));
    *buf = 67110146;
    v48 = v11;
    v49 = 2082;
    v50 = v12;
    v51 = 2082;
    v52 = v13;
    v53 = 1024;
    v54 = 199;
    v55 = 2080;
    v56 = string;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Launched by %s", buf, 0x2Cu);
  }

  if (!strcmp(string, "fury.spmi.activity"))
  {
    v14 = mach_absolute_time();
    info = 0;
    v15 = mach_timebase_info(&info);
    denom = info.denom;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFLogGetLogger();
    v18 = v17;
    if (v15 || !denom)
    {
      if (v17)
      {
        v32 = object_getClass(*(a1 + 32));
        v33 = class_isMetaClass(v32);
        v34 = object_getClassName(*(a1 + 32));
        v44 = sel_getName(*(a1 + 40));
        v35 = 45;
        if (v33)
        {
          v35 = 43;
        }

        v18(6, "%c[%{public}s %{public}s]:%i Fury SPMI activity", v35, v34, v44, 208);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      v36 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v36))
      {
        v37 = 43;
      }

      else
      {
        v37 = 45;
      }

      v38 = object_getClassName(*(a1 + 32));
      v39 = sel_getName(*(a1 + 40));
      *buf = 67109890;
      v48 = v37;
      v49 = 2082;
      v50 = v38;
      v51 = 2082;
      v52 = v39;
      v53 = 1024;
      v54 = 208;
      v29 = "%c[%{public}s %{public}s]:%i Fury SPMI activity";
      v30 = v24;
      v31 = 34;
    }

    else
    {
      if (v17)
      {
        v19 = object_getClass(*(a1 + 32));
        v20 = class_isMetaClass(v19);
        v21 = object_getClassName(*(a1 + 32));
        v22 = sel_getName(*(a1 + 40));
        v23 = 45;
        if (v20)
        {
          v23 = 43;
        }

        v18(6, "%c[%{public}s %{public}s]:%i Fury SPMI activity (%llu)", v23, v21, v22, 205, v14 * info.numer / info.denom);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      v25 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v25))
      {
        v26 = 43;
      }

      else
      {
        v26 = 45;
      }

      v27 = object_getClassName(*(a1 + 32));
      v28 = sel_getName(*(a1 + 40));
      *buf = 67110146;
      v48 = v26;
      v49 = 2082;
      v50 = v27;
      v51 = 2082;
      v52 = v28;
      v53 = 1024;
      v54 = 205;
      v55 = 2048;
      v56 = v14 * info.numer / info.denom;
      v29 = "%c[%{public}s %{public}s]:%i Fury SPMI activity (%llu)";
      v30 = v24;
      v31 = 44;
    }

    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v29, buf, v31);
LABEL_32:

    v40 = *(a1 + 32);
    v41 = *(v40 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100271510;
    block[3] = &unk_100315F30;
    block[4] = v40;
    dispatch_async(v41, block);
  }
}

void sub_100271518(uint64_t a1)
{
  v2 = sub_10020E4DC();
  sub_10020F8A8(v2);

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v4 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 40));
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v4(6, "%c[%{public}s %{public}s]:%i nfcacd coreanalytics event ready", v8, ClassName, Name, 221);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v10))
    {
      v11 = 43;
    }

    else
    {
      v11 = 45;
    }

    v12 = object_getClassName(*(a1 + 32));
    v13 = sel_getName(*(a1 + 40));
    *buf = 67109890;
    v16 = v11;
    v17 = 2082;
    v18 = v12;
    v19 = 2082;
    v20 = v13;
    v21 = 1024;
    v22 = 221;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i nfcacd coreanalytics event ready", buf, 0x22u);
  }
}

void sub_1002724C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 8) & 1) == 0)
  {
    [*(v1 + 72) allowSleep];
    v3 = NFSharedSignpostLog();
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "powerObserverSystemWillSleep: not running; allowing to sleep", &unk_1002E8B7A, buf, 2u);
    }

    goto LABEL_17;
  }

  v3 = *(v1 + 48);
  objc_sync_enter(v3);
  if (*(*(a1 + 32) + 64))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v10 = [*(*(a1 + 32) + 64) clientName];
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i Invalidating active session for %{public}@ due to sleep", v11, ClassName, Name, 345, v10);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(*(a1 + 32));
      v16 = sel_getName(*(a1 + 48));
      v17 = [*(*(a1 + 32) + 64) clientName];
      *buf = 67110146;
      v22 = v14;
      v23 = 2082;
      v24 = v15;
      v25 = 2082;
      v26 = v16;
      v27 = 1024;
      v28 = 345;
      v29 = 2114;
      v30 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Invalidating active session for %{public}@ due to sleep", buf, 0x2Cu);
    }

    v18 = [*(*(a1 + 32) + 64) connection];
    [v18 invalidate];

    v19 = NFSharedSignpostLog();
    if (os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "powerObserverSystemWillSleep: session in progress; preventing sleep", &unk_1002E8B7A, buf, 2u);
    }

    objc_sync_exit(v3);
LABEL_17:

    return;
  }

  objc_sync_exit(v3);

  v20 = NFSharedSignpostLog();
  if (os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "powerObserverSystemWillSleep: allowing to sleep", &unk_1002E8B7A, buf, 2u);
  }

  [*(a1 + 40) allowSleep];
}

void *sub_100272A28(void *result)
{
  v2 = result[4];
  if (*(v2 + 8) == 1)
  {
    v3 = result;
    v4 = *(v2 + 48);
    objc_sync_enter(v4);
    *(v3[4] + 104) = 0;
    objc_sync_exit(v4);

    v5 = v3[4];

    return [v5 maybeStartNextSession];
  }

  return result;
}

void sub_100273044(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NFCACD_GET_INFO", &unk_1002E8B7A, buf, 2u);
  }

  v3 = [*(a1 + 32) _getInfo];
  v4 = NFSharedSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFCACD_GET_INFO", &unk_1002E8B7A, v5, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1002731DC(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NFCACD_GET_DIE_ID", &unk_1002E8B7A, buf, 2u);
  }

  *buf = 0;
  v10 = buf;
  v11 = 0x3032000000;
  v12 = sub_100006B6C;
  v13 = sub_100273384;
  v14 = 0;
  v3 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10027338C;
  v8[3] = &unk_10031D540;
  v8[4] = v3;
  v8[5] = buf;
  v4 = [v3 _executeWithDriverSessionSync:@"GetDieId" block:v8];
  v5 = NFSharedSignpostLog();
  if (os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFCACD_GET_DIE_ID", &unk_1002E8B7A, v7, 2u);
  }

  v6 = *(v10 + 5);
  (*(*(a1 + 40) + 16))();

  _Block_object_dispose(buf, 8);
}

id sub_10027338C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) getDieID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = 0;
  }

  else
  {
    v6 = [NSError alloc];
    v7 = [NSString stringWithUTF8String:"nfcd"];
    v11 = NSLocalizedDescriptionKey;
    v8 = [NSString stringWithUTF8String:"Stack Error"];
    v12 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v5 = [v6 initWithDomain:v7 code:15 userInfo:v9];
  }

  return v5;
}

void sub_10027356C(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NFCACD_GET_POWER_COUNTERS", &unk_1002E8B7A, buf, 2u);
  }

  *buf = 0;
  v10 = buf;
  v11 = 0x3032000000;
  v12 = sub_100006B6C;
  v13 = sub_100273384;
  v14 = 0;
  v3 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100273714;
  v8[3] = &unk_10031D540;
  v8[4] = v3;
  v8[5] = buf;
  v4 = [v3 _executeWithDriverSessionSync:@"GetPowerCounters" block:v8];
  v5 = NFSharedSignpostLog();
  if (os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFCACD_GET_POWER_COUNTERS", &unk_1002E8B7A, v7, 2u);
  }

  v6 = *(v10 + 5);
  (*(*(a1 + 40) + 16))();

  _Block_object_dispose(buf, 8);
}

id sub_100273714(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 88);
  v3 = *(v1 + 8);
  obj = *(v3 + 40);
  v4 = [v2 getPowerCounters:&obj];
  objc_storeStrong((v3 + 40), obj);

  return v4;
}

void sub_100273814(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NFCACD_GET_RF_SETTINGS", &unk_1002E8B7A, buf, 2u);
  }

  *buf = 0;
  v10 = buf;
  v11 = 0x3032000000;
  v12 = sub_100006B6C;
  v13 = sub_100273384;
  v14 = 0;
  v3 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002739BC;
  v8[3] = &unk_10031D540;
  v8[4] = v3;
  v8[5] = buf;
  v4 = [v3 _executeWithDriverSessionSync:@"GetRfSettings" block:v8];
  v5 = NFSharedSignpostLog();
  if (os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFCACD_GET_RF_SETTINGS", &unk_1002E8B7A, v7, 2u);
  }

  v6 = *(v10 + 5);
  (*(*(a1 + 40) + 16))();

  _Block_object_dispose(buf, 8);
}

id sub_1002739BC(uint64_t a1)
{
  v2 = objc_opt_new();
  if ([*(*(a1 + 32) + 88) getRFSettings:v2])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
    v3 = 0;
  }

  else
  {
    v4 = [NSError alloc];
    v5 = [NSString stringWithUTF8String:"nfcd"];
    v9 = NSLocalizedDescriptionKey;
    v6 = [NSString stringWithUTF8String:"Stack Error"];
    v10 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v3 = [v4 initWithDomain:v5 code:15 userInfo:v7];
  }

  return v3;
}

void sub_100273BBC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) enableMultiTag:*(a1 + 48)];
  (*(v1 + 16))(v1, v2);
}

id sub_100274384(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 != 1)
  {
    [v3[11] clearMultiTagPollingState];
    [*(*(a1 + 32) + 88) closeSession:@"MultiTagSession"];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v9(6, "%c[%{public}s %{public}s]:%i releaseing multitag transaction", v13, ClassName, Name, 553);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v15))
      {
        v16 = 43;
      }

      else
      {
        v16 = 45;
      }

      v17 = object_getClassName(*(a1 + 32));
      v18 = sel_getName(*(a1 + 40));
      *buf = 67109890;
      v59 = v16;
      v60 = 2082;
      v61 = v17;
      v62 = 2082;
      v63 = v18;
      v64 = 1024;
      v65 = 553;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i releaseing multitag transaction", buf, 0x22u);
    }

    v19 = *(a1 + 32);
    v7 = *(v19 + 128);
    *(v19 + 128) = 0;
    goto LABEL_14;
  }

  v4 = [v3 openSession:@"MultiTagSession"];
  if (v4 == 1)
  {
    v5 = os_transaction_create();
    v6 = *(a1 + 32);
    v7 = *(v6 + 128);
    *(v6 + 128) = v5;
LABEL_14:

LABEL_15:
    *(*(a1 + 32) + 106) = *(a1 + 48);
    v20 = *(a1 + 32);
    v21 = *(v20 + 152);
    *(v20 + 152) = 0;

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v23 = v22;
      v24 = object_getClass(*(a1 + 32));
      v25 = class_isMetaClass(v24);
      v26 = object_getClassName(*(a1 + 32));
      v27 = sel_getName(*(a1 + 40));
      v28 = 45;
      if (v25)
      {
        v28 = 43;
      }

      v23(6, "%c[%{public}s %{public}s]:%i Multitag state: %d", v28, v26, v27, 560, *(a1 + 48));
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v29 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v30))
      {
        v31 = 43;
      }

      else
      {
        v31 = 45;
      }

      v32 = object_getClassName(*(a1 + 32));
      v33 = sel_getName(*(a1 + 40));
      v34 = *(a1 + 48);
      *buf = 67110146;
      v59 = v31;
      v60 = 2082;
      v61 = v32;
      v62 = 2082;
      v63 = v33;
      v64 = 1024;
      v65 = 560;
      v66 = 1024;
      LODWORD(v67) = v34;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Multitag state: %d", buf, 0x28u);
    }

    v35 = [*(a1 + 32) _getDefaults];
    [v35 setBool:*(*(a1 + 32) + 106) forKey:@"MultiTagDetectionOn"];
    [v35 synchronize];

    [*(a1 + 32) maybeStartNextSession];
    v36 = 0;
    goto LABEL_25;
  }

  v38 = v4;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v39 = NFLogGetLogger();
  if (v39)
  {
    v40 = v39;
    v41 = object_getClass(*(a1 + 32));
    v42 = class_isMetaClass(v41);
    v53 = object_getClassName(*(a1 + 32));
    v55 = sel_getName(*(a1 + 40));
    v43 = 45;
    if (v42)
    {
      v43 = 43;
    }

    v40(3, "%c[%{public}s %{public}s]:%i Failed to open session; hwState=%lu", v43, v53, v55, 538, v38);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v44 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    v45 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v45))
    {
      v46 = 43;
    }

    else
    {
      v46 = 45;
    }

    v47 = object_getClassName(*(a1 + 32));
    v48 = sel_getName(*(a1 + 40));
    *buf = 67110146;
    v59 = v46;
    v60 = 2082;
    v61 = v47;
    v62 = 2082;
    v63 = v48;
    v64 = 1024;
    v65 = 538;
    v66 = 2048;
    v67 = v38;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session; hwState=%lu", buf, 0x2Cu);
  }

  v49 = [NSError alloc];
  v50 = [NSString stringWithUTF8String:"nfcd"];
  v56 = NSLocalizedDescriptionKey;
  v51 = [NSString stringWithUTF8String:"Unknown Error"];
  v57 = v51;
  v52 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
  v36 = [v49 initWithDomain:v50 code:6 userInfo:v52];

  if (!v36)
  {
    goto LABEL_15;
  }

LABEL_25:

  return v36;
}

void sub_100274974(uint64_t a1)
{
  if (*(a1 + 56) == *(*(a1 + 32) + 105))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v3(6, "%c[%{public}s %{public}s]:%i LPCD is already set to: %d", v8, ClassName, Name, 583, *(a1 + 56));
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      v12 = object_getClassName(*(a1 + 32));
      v13 = sel_getName(*(a1 + 48));
      v14 = *(a1 + 56);
      *buf = 67110146;
      v23 = v11;
      v24 = 2082;
      v25 = v12;
      v26 = 2082;
      v27 = v13;
      v28 = 1024;
      v29 = 583;
      v30 = 1024;
      v31 = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i LPCD is already set to: %d", buf, 0x28u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v15 = NFSharedSignpostLog();
    if (os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NFCACD_ENABLE_LPCD", &unk_1002E8B7A, buf, 2u);
    }

    v16 = *(a1 + 32);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100274C5C;
    v20[3] = &unk_10031D590;
    v21 = *(a1 + 56);
    v17 = *(a1 + 48);
    v20[4] = v16;
    v20[5] = v17;
    v18 = [v16 _executeWithDriverSessionSync:@"enableLPCD" block:v20];
    v19 = NFSharedSignpostLog();
    if (os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFCACD_ENABLE_LPCD", &unk_1002E8B7A, buf, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_100274C5C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = [v3 openSession:@"LpcdSession"];
    if (v4 != 1)
    {
      v5 = v4;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v7 = Logger;
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 40));
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v7(3, "%c[%{public}s %{public}s]:%i Failed to open session; hwState=%lu", v10, ClassName, Name, 598, v5);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v12))
        {
          v13 = 43;
        }

        else
        {
          v13 = 45;
        }

        v14 = object_getClassName(*(a1 + 32));
        v15 = sel_getName(*(a1 + 40));
        *buf = 67110146;
        v40 = v13;
        v41 = 2082;
        v42 = v14;
        v43 = 2082;
        v44 = v15;
        v45 = 1024;
        v46 = 598;
        v47 = 2048;
        v48 = v5;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session; hwState=%lu", buf, 0x2Cu);
      }
    }

    v16 = os_transaction_create();
    v17 = *(a1 + 32);
    v18 = *(v17 + 120);
    *(v17 + 120) = v16;

    v19 = 1;
  }

  else
  {
    [v3[11] closeSession:@"LpcdSession"];
    v20 = *(a1 + 32);
    v21 = *(v20 + 120);
    *(v20 + 120) = 0;

    v19 = 0;
  }

  *(*(a1 + 32) + 105) = v19;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v22 = NFLogGetLogger();
  if (v22)
  {
    v23 = v22;
    v24 = object_getClass(*(a1 + 32));
    v25 = class_isMetaClass(v24);
    v26 = object_getClassName(*(a1 + 32));
    v27 = sel_getName(*(a1 + 40));
    v28 = 45;
    if (v25)
    {
      v28 = 43;
    }

    v23(6, "%c[%{public}s %{public}s]:%i enabled: %d", v28, v26, v27, 611, *(a1 + 48));
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v29 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v30))
    {
      v31 = 43;
    }

    else
    {
      v31 = 45;
    }

    v32 = object_getClassName(*(a1 + 32));
    v33 = sel_getName(*(a1 + 40));
    v34 = *(a1 + 48);
    *buf = 67110146;
    v40 = v31;
    v41 = 2082;
    v42 = v32;
    v43 = 2082;
    v44 = v33;
    v45 = 1024;
    v46 = 611;
    v47 = 1024;
    LODWORD(v48) = v34;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i enabled: %d", buf, 0x28u);
  }

  v35 = [*(a1 + 32) _getDefaults];
  [v35 setBool:*(*(a1 + 32) + 105) forKey:@"LpcdAlwaysOn"];
  [v35 synchronize];

  [*(a1 + 32) maybeStartNextSession];
  return 0;
}

void sub_100275068(void *a1)
{
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NFCACD_GET_LAST_DETECTED_TAGS", &unk_1002E8B7A, buf, 2u);
  }

  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  *buf = 0;
  v11 = buf;
  v12 = 0x3032000000;
  v13 = sub_100006B6C;
  v14 = sub_100273384;
  v15 = 0;
  v3 = a1[4];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10027523C;
  v9[3] = &unk_10031D5B8;
  v9[4] = v3;
  v9[5] = buf;
  v4 = a1[6];
  v9[6] = v16;
  v9[7] = v4;
  v5 = [v3 _executeWithDriverSessionSync:@"getLastDetectedTags" block:v9];
  v6 = NFSharedSignpostLog();
  if (os_signpost_enabled(v6))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFCACD_GET_LAST_DETECTED_TAGS", &unk_1002E8B7A, v8, 2u);
  }

  v7 = *(v11 + 5);
  (*(a1[5] + 16))();

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v16, 8);
}

id sub_10027523C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  v3 = *(*(a1 + 48) + 8);
  v35 = 0;
  v4 = [v2 queryMultiTagState:v3 + 24 error:&v35];
  v5 = v35;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v9 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    v14 = 45;
    if (isMetaClass)
    {
      v14 = 43;
    }

    v9(6, "%c[%{public}s %{public}s]:%i enabled : %d  error: %{public}@", v14, ClassName, Name, 641, *(*(*(a1 + 48) + 8) + 24), v5);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v16))
    {
      v17 = 43;
    }

    else
    {
      v17 = 45;
    }

    v18 = object_getClassName(*(a1 + 32));
    v19 = sel_getName(*(a1 + 56));
    v20 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67110402;
    v37 = v17;
    v38 = 2082;
    v39 = v18;
    v40 = 2082;
    v41 = v19;
    v42 = 1024;
    v43 = 641;
    v44 = 1024;
    LODWORD(v45[0]) = v20;
    WORD2(v45[0]) = 2114;
    *(v45 + 6) = v5;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i enabled : %d  error: %{public}@", buf, 0x32u);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v21 = NFLogGetLogger();
  if (v21)
  {
    v22 = v21;
    v23 = object_getClass(*(a1 + 32));
    v24 = class_isMetaClass(v23);
    v25 = object_getClassName(*(a1 + 32));
    v26 = sel_getName(*(a1 + 56));
    v27 = 45;
    if (v24)
    {
      v27 = 43;
    }

    v22(6, "%c[%{public}s %{public}s]:%i %{public}@", v27, v25, v26, 642, *(*(*(a1 + 40) + 8) + 40));
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v28 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v29))
    {
      v30 = 43;
    }

    else
    {
      v30 = 45;
    }

    v31 = object_getClassName(*(a1 + 32));
    v32 = sel_getName(*(a1 + 56));
    v33 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 67110146;
    v37 = v30;
    v38 = 2082;
    v39 = v31;
    v40 = 2082;
    v41 = v32;
    v42 = 1024;
    v43 = 642;
    v44 = 2114;
    v45[0] = v33;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    objc_storeStrong((*(a1 + 32) + 152), *(*(*(a1 + 40) + 8) + 40));
  }

  return v5;
}

uint64_t sub_10027564C(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFCACD_GET_MULTI_TAG_STATE", &unk_1002E8B7A, buf, 2u);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v4 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v4(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 661, *(*(a1 + 32) + 152));
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 48));
    v15 = *(*(a1 + 32) + 152);
    *buf = 67110146;
    v19 = v12;
    v20 = 2082;
    v21 = v13;
    v22 = 2082;
    v23 = v14;
    v24 = 1024;
    v25 = 661;
    v26 = 2114;
    v27 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  v16 = *(*(a1 + 32) + 152);
  return (*(*(a1 + 40) + 16))();
}

void sub_100275B24(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NFCACD_CLEAR_MULTI_TAG_STATE", &unk_1002E8B7A, buf, 2u);
  }

  v3 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100275C74;
  v6[3] = &unk_100317310;
  v6[4] = v3;
  v4 = [v3 _executeWithDriverSessionSync:@"clearMultiTagState" block:v6];
  v5 = NFSharedSignpostLog();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFCACD_CLEAR_MULTI_TAG_STATE", &unk_1002E8B7A, buf, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

id sub_100275C74(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) clearMultiTagPollingState];
  v3 = *(a1 + 32);
  v4 = *(v3 + 152);
  *(v3 + 152) = 0;

  v5 = 0;
  if ((v2 & 1) == 0)
  {
    v6 = [NSError alloc];
    v7 = [NSString stringWithUTF8String:"nfcd"];
    v11 = NSLocalizedDescriptionKey;
    v8 = [NSString stringWithUTF8String:"Unknown Error"];
    v12 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v5 = [v6 initWithDomain:v7 code:6 userInfo:v9];
  }

  return v5;
}

void sub_100276820(uint64_t a1)
{
  v2 = [*(a1 + 32) openSession:@"Shutdown preparation"];
  if (v2 == 1)
  {
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) _unloadService];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v4 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v4(6, "%c[%{public}s %{public}s]:%i stop now but leave HW on", v8, ClassName, Name, 871);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      v12 = object_getClassName(*(a1 + 32));
      v13 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v41 = v11;
      v42 = 2082;
      v43 = v12;
      v44 = 2082;
      v45 = v13;
      v46 = 1024;
      v47 = 871;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i stop now but leave HW on", buf, 0x22u);
    }

    [*(*(a1 + 32) + 88) stopNowAndLeveHWEnabled:*(a1 + 56)];
    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100276C24;
    block[3] = &unk_100315F58;
    v16 = *(a1 + 48);
    block[4] = v14;
    block[5] = v16;
    dispatch_async(v15, block);
  }

  else
  {
    v17 = v2;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFLogGetLogger();
    if (v18)
    {
      v19 = v18;
      v20 = object_getClass(*(a1 + 32));
      v21 = class_isMetaClass(v20);
      v34 = object_getClassName(*(a1 + 32));
      v36 = sel_getName(*(a1 + 48));
      v22 = 45;
      if (v21)
      {
        v22 = 43;
      }

      v19(3, "%c[%{public}s %{public}s]:%i Failed to open session; hwState=%lu", v22, v34, v36, 865, v17);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v24))
      {
        v25 = 43;
      }

      else
      {
        v25 = 45;
      }

      v26 = object_getClassName(*(a1 + 32));
      v27 = sel_getName(*(a1 + 48));
      *buf = 67110146;
      v41 = v25;
      v42 = 2082;
      v43 = v26;
      v44 = 2082;
      v45 = v27;
      v46 = 1024;
      v47 = 865;
      v48 = 2048;
      v49 = v17;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session; hwState=%lu", buf, 0x2Cu);
    }

    v28 = *(a1 + 40);
    v29 = [NSError alloc];
    v30 = [NSString stringWithUTF8String:"nfcd"];
    v38 = NSLocalizedDescriptionKey;
    v31 = [NSString stringWithUTF8String:"Unknown Error"];
    v39 = v31;
    v32 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v33 = [v29 initWithDomain:v30 code:6 userInfo:v32];
    (*(v28 + 16))(v28, v33);
  }
}

void sub_100276C24(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 40));
    v7 = 45;
    if (isMetaClass)
    {
      v7 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i exiting now...", v7, ClassName, Name, 875);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v9))
    {
      v10 = 43;
    }

    else
    {
      v10 = 45;
    }

    v11 = object_getClassName(*(a1 + 32));
    v12 = sel_getName(*(a1 + 40));
    *buf = 67109890;
    v15 = v10;
    v16 = 2082;
    v17 = v11;
    v18 = 2082;
    v19 = v12;
    v20 = 1024;
    v21 = 875;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i exiting now...", buf, 0x22u);
  }

  exit(0);
}

id sub_100277570(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  v3 = sub_10004C268();
  v4 = [v2 setRouting:v3];

  v5 = *(*(a1 + 32) + 88);
  v28 = 0;
  v6 = [v5 getControllerInfo:&v28];
  v7 = v28;
  v8 = 0;
  if ((v6 & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v10 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v14 = 45;
      if (isMetaClass)
      {
        v14 = 43;
      }

      v10(3, "%c[%{public}s %{public}s]:%i Failed to get controller info", v14, ClassName, Name, 953);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v16))
      {
        v17 = 43;
      }

      else
      {
        v17 = 45;
      }

      v18 = object_getClassName(*(a1 + 32));
      v19 = sel_getName(*(a1 + 40));
      *buf = 67109890;
      v32 = v17;
      v33 = 2082;
      v34 = v18;
      v35 = 2082;
      v36 = v19;
      v37 = 1024;
      v38 = 953;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get controller info", buf, 0x22u);
    }

    v20 = [NSError alloc];
    v21 = [NSString stringWithUTF8String:"nfcd"];
    v29 = NSLocalizedDescriptionKey;
    v22 = [NSString stringWithUTF8String:"Stack Error"];
    v30 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v8 = [v20 initWithDomain:v21 code:15 userInfo:v23];
  }

  v24 = *(a1 + 32);
  v25 = *(v24 + 144);
  *(v24 + 144) = v7;

  return v8;
}

void sub_1002780F8(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v7 = 45;
    if (isMetaClass)
    {
      v7 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i Releasing queued sessions", v7, ClassName, Name, 1045);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v9))
    {
      v10 = 43;
    }

    else
    {
      v10 = 45;
    }

    v11 = object_getClassName(*(a1 + 32));
    v12 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v42 = v10;
    v43 = 2082;
    v44 = v11;
    v45 = 2082;
    v46 = v12;
    v47 = 1024;
    v48 = 1045;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Releasing queued sessions", buf, 0x22u);
  }

  v13 = *(*(a1 + 32) + 48);
  objc_sync_enter(v13);
  v14 = [*(a1 + 40) NF_userInfo];
  v15 = [v14 objectForKeyedSubscript:@"ProxyObjects"];

  v16 = [v15 copy];
  objc_sync_exit(v13);

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v37;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(a1 + 32) _dequeueSession:*(*(&v36 + 1) + 8 * i) startNextSession:1];
      }

      v19 = [v17 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v19);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v22 = NFLogGetLogger();
  if (v22)
  {
    v23 = v22;
    v24 = object_getClass(*(a1 + 32));
    v25 = class_isMetaClass(v24);
    v26 = object_getClassName(*(a1 + 32));
    v35 = sel_getName(*(a1 + 48));
    v27 = 45;
    if (v25)
    {
      v27 = 43;
    }

    v23(6, "%c[%{public}s %{public}s]:%i removing xpc connection from list", v27, v26, v35, 1056, v36);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v28 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v29))
    {
      v30 = 43;
    }

    else
    {
      v30 = 45;
    }

    v31 = object_getClassName(*(a1 + 32));
    v32 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v42 = v30;
    v43 = 2082;
    v44 = v31;
    v45 = 2082;
    v46 = v32;
    v47 = 1024;
    v48 = 1056;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i removing xpc connection from list", buf, 0x22u);
  }

  v33 = *(*(a1 + 32) + 40);
  objc_sync_enter(v33);
  [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
  objc_sync_exit(v33);
}