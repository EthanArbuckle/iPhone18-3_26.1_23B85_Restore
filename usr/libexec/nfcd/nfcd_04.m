id sub_10007E604(id *a1, void *a2, void *a3)
{
  v187 = a2;
  v192 = a1;
  if (!a1)
  {
    v118 = 0;
    goto LABEL_98;
  }

  v5 = a1[5];
  if (![v5 length])
  {

    goto LABEL_86;
  }

  v6 = [v192[6] length];

  if (!v6)
  {
LABEL_86:
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v120 = Logger;
      Class = object_getClass(v192);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v192);
      Name = sel_getName("performRequests:responses:");
      v124 = 45;
      if (isMetaClass)
      {
        v124 = 43;
      }

      v120(3, "%c[%{public}s %{public}s]:%i Select OSE failed", v124, ClassName, Name, 295);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v125 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
    {
      v126 = object_getClass(v192);
      if (class_isMetaClass(v126))
      {
        v127 = 43;
      }

      else
      {
        v127 = 45;
      }

      *buf = 67109890;
      *&buf[4] = v127;
      *v210 = 2082;
      *&v210[2] = object_getClassName(v192);
      *&v210[10] = 2082;
      *&v210[12] = sel_getName("performRequests:responses:");
      *&v210[20] = 1024;
      *&v210[22] = 295;
      _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Select OSE failed", buf, 0x22u);
    }

    v128 = [NSError alloc];
    v115 = [NSString stringWithUTF8String:"nfcd"];
    v207[0] = NSLocalizedDescriptionKey;
    v186 = [NSString stringWithUTF8String:"Not found"];
    v208[0] = v186;
    v208[1] = &off_100330960;
    v207[1] = @"Line";
    v207[2] = @"Method";
    v129 = [[NSString alloc] initWithFormat:@"%s", sel_getName("performRequests:responses:")];
    v208[2] = v129;
    v207[3] = NSDebugDescriptionErrorKey;
    v130 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("performRequests:responses:"), 296];
    v208[3] = v130;
    v131 = [NSDictionary dictionaryWithObjects:v208 forKeys:v207 count:4];
    v132 = v128;
    v133 = v115;
    v134 = 65;
    goto LABEL_96;
  }

  if ((v192[1] & 0xC) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v136 = NFLogGetLogger();
    if (v136)
    {
      v137 = v136;
      v138 = object_getClass(v192);
      v139 = class_isMetaClass(v138);
      v140 = object_getClassName(v192);
      v170 = sel_getName("performRequests:responses:");
      v141 = 45;
      if (v139)
      {
        v141 = 43;
      }

      v137(3, "%c[%{public}s %{public}s]:%i Remote does not support VAS", v141, v140, v170, 300);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v142 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
    {
      v143 = object_getClass(v192);
      if (class_isMetaClass(v143))
      {
        v144 = 43;
      }

      else
      {
        v144 = 45;
      }

      *buf = 67109890;
      *&buf[4] = v144;
      *v210 = 2082;
      *&v210[2] = object_getClassName(v192);
      *&v210[10] = 2082;
      *&v210[12] = sel_getName("performRequests:responses:");
      *&v210[20] = 1024;
      *&v210[22] = 300;
      _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Remote does not support VAS", buf, 0x22u);
    }

    v145 = [NSError alloc];
    v115 = [NSString stringWithUTF8String:"nfcd"];
    v205[0] = NSLocalizedDescriptionKey;
    v186 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v206[0] = v186;
    v206[1] = &off_100330978;
    v205[1] = @"Line";
    v205[2] = @"Method";
    v129 = [[NSString alloc] initWithFormat:@"%s", sel_getName("performRequests:responses:")];
    v206[2] = v129;
    v205[3] = NSDebugDescriptionErrorKey;
    v130 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("performRequests:responses:"), 301];
    v206[3] = v130;
    v131 = [NSDictionary dictionaryWithObjects:v206 forKeys:v205 count:4];
    v132 = v145;
    v133 = v115;
    v134 = 14;
LABEL_96:
    v118 = [v132 initWithDomain:v133 code:v134 userInfo:v131];

    goto LABEL_97;
  }

  v176 = a3;
  v186 = objc_opt_new();
  v7 = [v187 count];
  if (!v7)
  {
LABEL_83:
    v115 = 0;
    v118 = 0;
    if (v176)
    {
      *v176 = v186;
    }

    goto LABEL_97;
  }

  v8 = v7;
  v9 = 0;
  while (1)
  {
    v10 = [v187 objectAtIndex:v9];
    v11 = [[NFVASRequest alloc] initWithDictionary:v10];
    v12 = [(NFVASRequest *)v11 terminalProtocol];
    v13 = [v12 unsignedCharValue];

    v199 = -13696;
    v200 = 1;
    v201 = v13;
    v202 = 0;
    v198 = 0;
    v197 = 0;
    v196 = 16917151;
    v195 = 32;
    v194 = 9631;
    v14 = [[NSMutableData alloc] initWithBytes:&v196 length:5];
    [v14 appendBytes:&v194 length:3];
    v15 = [(NFVASRequest *)v11 merchantId];
    v16 = [v15 dataUsingEncoding:4];
    v17 = malloc_type_calloc(1uLL, 0x20uLL, 0x100004077774924uLL);
    v190 = v14;
    v191 = v10;
    v188 = v8;
    v189 = v16;
    if (!v17)
    {
      v22 = [NSError alloc];
      v23 = [NSString stringWithUTF8String:"nfcd"];
      v213 = NSLocalizedDescriptionKey;
      v21 = [NSString stringWithUTF8String:"No resources"];
      *buf = v21;
      *v210 = &off_100330900;
      v214 = @"Line";
      v215 = @"Method";
      v24 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_getVAS:lastInSequence:error:")];
      *&v210[8] = v24;
      v216 = NSDebugDescriptionErrorKey;
      v25 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_getVAS:lastInSequence:error:"), 190];
      *&v210[16] = v25;
      v26 = [NSDictionary dictionaryWithObjects:buf forKeys:&v213 count:4];
      v27 = [v22 initWithDomain:v23 code:34 userInfo:v26];
      v28 = v27;
      v29 = 0;
      goto LABEL_81;
    }

    v18 = v17;
    CC_SHA256([v16 bytes], objc_msgSend(v16, "length"), v17);
    [v14 appendBytes:v18 length:32];
    free(v18);
    v19 = [(NFVASRequest *)v11 signupUrl];
    v183 = v19;
    if (v19)
    {
      v20 = [v19 absoluteString];
      v21 = [v20 dataUsingEncoding:4];
    }

    else
    {
      v21 = 0;
    }

    v30 = [(NFVASRequest *)v11 terminalProtocol];
    v31 = [v30 unsignedCharValue];

    v184 = v15;
    if (v31 == 1)
    {
      v32 = [(NFVASRequest *)v11 terminalCap];
      v33 = [v32 unsignedCharValue];

      if (v33 == 1)
      {
        v34 = 1;
      }

      else
      {
        v34 = 2;
      }

      if (!v33)
      {
        v34 = 0;
      }

      *&buf[3] = 0;
      *buf = 272543;
      LODWORD(v213) = 272031;
      WORD2(v213) = 0;
      BYTE6(v213) = v34 | ((v8 != 1) << 7);
      LODWORD(__buf) = 0;
      arc4random_buf(&__buf, 4uLL);
      *&buf[3] = bswap32(__buf);
      [v14 appendBytes:buf length:7];
      [v14 appendBytes:&v213 length:7];
    }

    else if (![v21 length])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v79 = NFLogGetLogger();
      if (v79)
      {
        v80 = v79;
        v81 = object_getClass(v192);
        v82 = class_isMetaClass(v81);
        v83 = object_getClassName(v192);
        v167 = sel_getName("_getVAS:lastInSequence:error:");
        v84 = 45;
        if (v82)
        {
          v84 = 43;
        }

        v80(3, "%c[%{public}s %{public}s]:%i URL not present.  URL is mandatory!", v84, v83, v167, 223);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v85 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        v86 = object_getClass(v192);
        if (class_isMetaClass(v86))
        {
          v87 = 43;
        }

        else
        {
          v87 = 45;
        }

        v88 = object_getClassName(v192);
        v89 = sel_getName("_getVAS:lastInSequence:error:");
        *buf = 67109890;
        *&buf[4] = v87;
        *v210 = 2082;
        *&v210[2] = v88;
        *&v210[10] = 2082;
        *&v210[12] = v89;
        *&v210[20] = 1024;
        *&v210[22] = 223;
        _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i URL not present.  URL is mandatory!", buf, 0x22u);
      }

      v75 = [NSError alloc];
      v24 = [NSString stringWithUTF8String:"nfcd"];
      v213 = NSLocalizedDescriptionKey;
      v25 = [NSString stringWithUTF8String:"Invalid Parameter"];
      *buf = v25;
      *v210 = &off_100330918;
      v214 = @"Line";
      v215 = @"Method";
      v26 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_getVAS:lastInSequence:error:")];
      *&v210[8] = v26;
      v216 = NSDebugDescriptionErrorKey;
      v76 = [NSString alloc];
      v77 = sel_getName("_getVAS:lastInSequence:error:");
      v78 = 224;
      goto LABEL_61;
    }

    if (v21)
    {
      if ([v21 length] < 0x41)
      {
        *buf = 10655;
        buf[2] = [v21 length];
        [v14 appendBytes:buf length:3];
        [v14 appendData:v21];
        goto LABEL_23;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v64 = NFLogGetLogger();
      if (v64)
      {
        v65 = v64;
        v66 = object_getClass(v192);
        v67 = class_isMetaClass(v66);
        v68 = object_getClassName(v192);
        v166 = sel_getName("_getVAS:lastInSequence:error:");
        v69 = 45;
        if (v67)
        {
          v69 = 43;
        }

        v65(3, "%c[%{public}s %{public}s]:%i URL length is greater than 64bytes!", v69, v68, v166, 232);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v70 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        v71 = object_getClass(v192);
        if (class_isMetaClass(v71))
        {
          v72 = 43;
        }

        else
        {
          v72 = 45;
        }

        v73 = object_getClassName(v192);
        v74 = sel_getName("_getVAS:lastInSequence:error:");
        *buf = 67109890;
        *&buf[4] = v72;
        *v210 = 2082;
        *&v210[2] = v73;
        *&v210[10] = 2082;
        *&v210[12] = v74;
        *&v210[20] = 1024;
        *&v210[22] = 232;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i URL length is greater than 64bytes!", buf, 0x22u);
      }

      v75 = [NSError alloc];
      v24 = [NSString stringWithUTF8String:"nfcd"];
      v213 = NSLocalizedDescriptionKey;
      v25 = [NSString stringWithUTF8String:"Invalid Parameter"];
      *buf = v25;
      *v210 = &off_100330930;
      v214 = @"Line";
      v215 = @"Method";
      v26 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_getVAS:lastInSequence:error:")];
      *&v210[8] = v26;
      v216 = NSDebugDescriptionErrorKey;
      v76 = [NSString alloc];
      v77 = sel_getName("_getVAS:lastInSequence:error:");
      v78 = 233;
LABEL_61:
      v90 = [v76 initWithFormat:@"%s:%d", v77, v78];
      *&v210[16] = v90;
      v91 = [NSDictionary dictionaryWithObjects:buf forKeys:&v213 count:4];
      v27 = [v75 initWithDomain:v24 code:10 userInfo:v91];
      v92 = v27;

      v29 = 0;
      v15 = v184;
LABEL_80:
      v23 = v183;
      goto LABEL_81;
    }

LABEL_23:
    v202 = [v14 length];
    v24 = [[NSMutableData alloc] initWithBytes:&v199 length:5];
    [v24 appendData:v14];
    [v24 appendBytes:&v198 length:1];
    v35 = v192[4];
    v36 = v192[2];
    v37 = v192[3];
    __buf = 0;
    v38 = v36;
    v39 = v35;
    v26 = sub_1001960B0(v39, v24, v38, &__buf);
    v25 = __buf;

    if ([v26 length] >= 2 && !v25)
    {
      v40 = [NFResponseAPDU responseWithData:v26];
      v29 = objc_opt_new();
      v41 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v40 status]);
      [v29 setStatusCode:v41];

      if ([v40 status] == 36864)
      {
        v42 = [(NFVASRequest *)v11 terminalProtocol];
        v43 = [v42 unsignedCharValue];

        if (v43 == 1)
        {
          v44 = [v26 subdataWithRange:{0, objc_msgSend(v26, "length") - 2}];
          v45 = [NFTLV TLVWithData:v44];

          if ([v45 tag] == 112)
          {
            v179 = v45;
            v46 = [v45 childWithTag:40743];
            v47 = v46;
            if (v46)
            {
              v48 = [v46 value];
            }

            else
            {
              v48 = objc_opt_new();
            }

            v98 = v48;
            [v29 setVasData:v48];

            v99 = [v179 childWithTag:40746];

            v178 = v99;
            if (v99)
            {
              v100 = [v99 value];
            }

            else
            {
              v100 = objc_opt_new();
            }

            v101 = v100;
            [v29 setToken:v100];

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v102 = NFLogGetLogger();
            v182 = v21;
            if (v102)
            {
              v103 = v102;
              v104 = object_getClass(v192);
              v174 = class_isMetaClass(v104);
              v172 = object_getClassName(v192);
              v105 = sel_getName("_getVAS:lastInSequence:error:");
              v106 = [v29 vasData];
              v107 = [v29 token];
              v168 = v105;
              v15 = v184;
              v108 = 45;
              if (v174)
              {
                v108 = 43;
              }

              v103(6, "%c[%{public}s %{public}s]:%i Rx Data: %{public}@  Rx token:%{public}@", v108, v172, v168, 283, v106, v107);

              v21 = v182;
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v109 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
            {
              v110 = object_getClass(v192);
              if (class_isMetaClass(v110))
              {
                v111 = 43;
              }

              else
              {
                v111 = 45;
              }

              v175 = v111;
              v173 = object_getClassName(v192);
              v112 = sel_getName("_getVAS:lastInSequence:error:");
              v113 = [v29 vasData];
              v114 = [v29 token];
              *buf = 67110402;
              *&buf[4] = v175;
              *v210 = 2082;
              *&v210[2] = v173;
              *&v210[10] = 2082;
              *&v210[12] = v112;
              v21 = v182;
              *&v210[20] = 1024;
              *&v210[22] = 283;
              *&v210[26] = 2114;
              *&v210[28] = v113;
              v211 = 2114;
              v212 = v114;
              _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Rx Data: %{public}@  Rx token:%{public}@", buf, 0x36u);

              v15 = v184;
            }

            v45 = v179;
          }
        }
      }

      v27 = 0;
      v25 = 0;
      goto LABEL_80;
    }

    v181 = v21;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v49 = NFLogGetLogger();
    if (v49)
    {
      v50 = v49;
      v51 = object_getClass(v192);
      v52 = class_isMetaClass(v51);
      v53 = object_getClassName(v192);
      v54 = sel_getName("_getVAS:lastInSequence:error:");
      v55 = [v25 description];
      v165 = v53;
      v56 = 45;
      if (v52)
      {
        v56 = 43;
      }

      v15 = v184;
      v50(3, "%c[%{public}s %{public}s]:%i Transceive error: %{public}@", v56, v165, v54, 254, v55);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v57 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v58 = object_getClass(v192);
      if (class_isMetaClass(v58))
      {
        v59 = 43;
      }

      else
      {
        v59 = 45;
      }

      v60 = object_getClassName(v192);
      v61 = sel_getName("_getVAS:lastInSequence:error:");
      v62 = [v25 description];
      *buf = 67110146;
      *&buf[4] = v59;
      v15 = v184;
      *v210 = 2082;
      *&v210[2] = v60;
      *&v210[10] = 2082;
      *&v210[12] = v61;
      *&v210[20] = 1024;
      *&v210[22] = 254;
      *&v210[26] = 2114;
      *&v210[28] = v62;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Transceive error: %{public}@", buf, 0x2Cu);
    }

    if ([v25 code] == 64)
    {
      v63 = v25;
      v29 = 0;
      v27 = v25;
    }

    else
    {
      v180 = [NSError alloc];
      v93 = [NSString stringWithUTF8String:"nfcd"];
      v213 = NSLocalizedDescriptionKey;
      v185 = [NSString stringWithUTF8String:"Tag Error"];
      *buf = v185;
      *v210 = v25;
      v214 = NSUnderlyingErrorKey;
      v215 = @"Line";
      *&v210[8] = &off_100330948;
      v216 = @"Method";
      v177 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_getVAS:lastInSequence:error:")];
      *&v210[16] = v177;
      v217 = NSDebugDescriptionErrorKey;
      v94 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_getVAS:lastInSequence:error:"), 256];
      *&v210[24] = v94;
      v95 = [NSDictionary dictionaryWithObjects:buf forKeys:&v213 count:5];
      v96 = v93;
      v27 = [v180 initWithDomain:v93 code:29 userInfo:v95];
      v97 = v27;

      v29 = 0;
    }

    v23 = v183;
    v21 = v181;
LABEL_81:

    v115 = v27;
    [v29 setRequest:v11];
    v116 = [NSNumber numberWithUnsignedChar:*(v192 + 8)];
    [v29 setMobileCapabilities:v116];

    if (v115)
    {
      break;
    }

    v117 = [v29 asDictionary];
    [v186 addObject:v117];

    ++v9;
    v8 = v188 - 1;
    if (v188 == 1)
    {
      goto LABEL_83;
    }
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v146 = NFLogGetLogger();
  if (v146)
  {
    v147 = v146;
    v148 = object_getClass(v192);
    v149 = class_isMetaClass(v148);
    v150 = object_getClassName(v192);
    v171 = sel_getName("performRequests:responses:");
    v151 = 45;
    if (v149)
    {
      v151 = 43;
    }

    v147(3, "%c[%{public}s %{public}s]:%i GetVasData failed", v151, v150, v171, 317);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v152 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
  {
    v153 = object_getClass(v192);
    if (class_isMetaClass(v153))
    {
      v154 = 43;
    }

    else
    {
      v154 = 45;
    }

    v155 = object_getClassName(v192);
    v156 = sel_getName("performRequests:responses:");
    *buf = 67109890;
    *&buf[4] = v154;
    *v210 = 2082;
    *&v210[2] = v155;
    *&v210[10] = 2082;
    *&v210[12] = v156;
    *&v210[20] = 1024;
    *&v210[22] = 317;
    _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i GetVasData failed", buf, 0x22u);
  }

  v157 = [NSError alloc];
  v158 = [NSString stringWithUTF8String:"nfcd"];
  v159 = [v115 code];
  v203[0] = NSLocalizedDescriptionKey;
  if ([v115 code] > 75)
  {
    v160 = 76;
  }

  else
  {
    v160 = [v115 code];
  }

  v161 = [NSString stringWithUTF8String:off_100317028[v160]];
  v204[0] = v161;
  v204[1] = v115;
  v203[1] = NSUnderlyingErrorKey;
  v203[2] = @"Line";
  v204[2] = &off_100330990;
  v203[3] = @"Method";
  v162 = [[NSString alloc] initWithFormat:@"%s", sel_getName("performRequests:responses:")];
  v204[3] = v162;
  v203[4] = NSDebugDescriptionErrorKey;
  v163 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("performRequests:responses:"), 318];
  v204[4] = v163;
  v164 = [NSDictionary dictionaryWithObjects:v204 forKeys:v203 count:5];
  v118 = [v157 initWithDomain:v158 code:v159 userInfo:v164];

LABEL_97:
LABEL_98:

  return v118;
}

void sub_10007FEB0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

void sub_10007FEC0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

id sub_10007FF38(uint64_t a1, void *a2, int a3, int a4, void *a5)
{
  v9 = a5;
  v10 = a2;
  objc_opt_self();
  v11 = objc_opt_new();
  v12 = v11;
  if (v11)
  {
    objc_storeStrong((v11 + 16), a2);

    *(v12 + 8) = a3;
    objc_storeStrong((v12 + 24), a5);

    *(v12 + 12) = a4;
  }

  else
  {
  }

  return v12;
}

void sub_100080C70(uint64_t a1)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v2 = *(a1 + 32);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100080EE0;
  v17[3] = &unk_1003157C0;
  v17[4] = v2;
  v17[5] = &v18;
  os_unfair_lock_lock(v2 + 47);
  sub_100080EE0(v17);
  os_unfair_lock_unlock(v2 + 47);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v4 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 40));
    if (*(v19 + 24))
    {
      v9 = "Y";
    }

    else
    {
      v9 = "N";
    }

    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v4(5, "%c[%{public}s %{public}s]:%i Assertion timer expired; connected=%{public}s", v10, ClassName, Name, 127, v9);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
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
    if (*(v19 + 24))
    {
      v16 = "Y";
    }

    else
    {
      v16 = "N";
    }

    *buf = 67110146;
    v23 = v13;
    v24 = 2082;
    v25 = v14;
    v26 = 2082;
    v27 = v15;
    v28 = 1024;
    v29 = 127;
    v30 = 2082;
    v31 = v16;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Assertion timer expired; connected=%{public}s", buf, 0x2Cu);
  }

  if ((v19[3] & 1) == 0)
  {
    [*(a1 + 32) _didLoseTarget:0 suspendAssertion:0];
  }

  _Block_object_dispose(&v18, 8);
}

void sub_100080EE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 200);
  *(v2 + 200) = 0;

  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 185);
}

uint64_t sub_100080F30(uint64_t a1)
{
  v2 = [[NSDate alloc] initWithTimeIntervalSinceNow:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 200);
  *(v3 + 200) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_100081090(uint64_t a1)
{
  *(*(a1 + 32) + 185) = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 200);
  *(v2 + 200) = 0;

  [*(*(a1 + 32) + 192) stopTimer];
  v4 = *(a1 + 32);
  v5 = *(v4 + 192);
  *(v4 + 192) = 0;
}

id sub_100081164(void *a1, char a2, void *a3, int a4)
{
  v7 = a3;
  v8 = v7;
  if (a1)
  {
    if (a2)
    {
      v9 = [v7 length];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      v11 = Logger;
      if (v9)
      {
        if (Logger)
        {
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("_initialRoutingConfigWithEmulation:ecp:pollDurationInMS:");
          v15 = 45;
          if (isMetaClass)
          {
            v15 = 43;
          }

          v11(6, "%c[%{public}s %{public}s]:%i ECP broadcast enabled", v15, ClassName, Name, 183);
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

          *buf = 67109890;
          v32 = v18;
          v33 = 2082;
          v34 = object_getClassName(a1);
          v35 = 2082;
          v36 = sel_getName("_initialRoutingConfigWithEmulation:ecp:pollDurationInMS:");
          v37 = 1024;
          v38 = 183;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ECP broadcast enabled", buf, 0x22u);
        }

        v19 = sub_10004BE6C(NFRoutingConfig, v8, 0, 1, a4);
      }

      else
      {
        if (Logger)
        {
          v20 = object_getClass(a1);
          v21 = class_isMetaClass(v20);
          v22 = object_getClassName(a1);
          v29 = sel_getName("_initialRoutingConfigWithEmulation:ecp:pollDurationInMS:");
          v23 = 45;
          if (v21)
          {
            v23 = 43;
          }

          v11(6, "%c[%{public}s %{public}s]:%i HCE+FD enabled", v23, v22, v29, 190);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v24 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = object_getClass(a1);
          if (class_isMetaClass(v25))
          {
            v26 = 43;
          }

          else
          {
            v26 = 45;
          }

          *buf = 67109890;
          v32 = v26;
          v33 = 2082;
          v34 = object_getClassName(a1);
          v35 = 2082;
          v36 = sel_getName("_initialRoutingConfigWithEmulation:ecp:pollDurationInMS:");
          v37 = 1024;
          v38 = 190;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i HCE+FD enabled", buf, 0x22u);
        }

        v19 = sub_10004BDE4(NFRoutingConfig, 1);
      }
    }

    else
    {
      v30.receiver = a1;
      v30.super_class = _NFHCESession;
      v19 = objc_msgSendSuper2(&v30, "initialRoutingConfig");
    }

    a1 = v19;
  }

  return a1;
}

void sub_100082528(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v4 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 64));
    v9 = [*(a1 + 32) clientName];
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v4(6, "%c[%{public}s %{public}s]:%i %{public}@", v10, ClassName, Name, 340, v9);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
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
    v15 = sel_getName(*(a1 + 64));
    v16 = [*(a1 + 32) clientName];
    *buf = 67110146;
    v57 = v13;
    v58 = 2082;
    v59 = v14;
    v60 = 2082;
    v61 = v15;
    v62 = 1024;
    v63 = 340;
    v64 = 2114;
    v65 = v16;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v37 = +[_NFHardwareManager sharedHardwareManager];
    v38 = [v37 setRoutingConfig:*(a1 + 40)];

    v33 = sub_1001AE20C();
    sub_1001AEDB0(v33, v39);
    v40 = *(a1 + 48);
    if (v40)
    {
      (*(v40 + 16))(v40, 0);
    }

    v41 = NFLogGetLogger();
    if (v41)
    {
      v42 = v41;
      v43 = object_getClass(WeakRetained);
      v44 = class_isMetaClass(v43);
      v45 = object_getClassName(WeakRetained);
      v46 = sel_getName(*(a1 + 64));
      v47 = [*(a1 + 32) clientName];
      v48 = 45;
      if (v44)
      {
        v48 = 43;
      }

      v42(6, "%c[%{public}s %{public}s]:%i NFC emulation mode terminated: %@", v48, v45, v46, 351, v47);
    }

    v34 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v49 = object_getClass(WeakRetained);
      if (class_isMetaClass(v49))
      {
        v50 = 43;
      }

      else
      {
        v50 = 45;
      }

      v51 = object_getClassName(WeakRetained);
      v52 = sel_getName(*(a1 + 64));
      v53 = [*(a1 + 32) clientName];
      *buf = 67110146;
      v57 = v50;
      v58 = 2082;
      v59 = v51;
      v60 = 2082;
      v61 = v52;
      v62 = 1024;
      v63 = 351;
      v64 = 2112;
      v65 = v53;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC emulation mode terminated: %@", buf, 0x2Cu);
    }

    goto LABEL_24;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v17 = NFLogGetLogger();
  if (v17)
  {
    v18 = v17;
    v19 = object_getClass(*(a1 + 32));
    v20 = class_isMetaClass(v19);
    v21 = object_getClassName(*(a1 + 32));
    v22 = sel_getName(*(a1 + 64));
    v23 = [*(a1 + 32) sessionUID];
    v24 = 45;
    if (v20)
    {
      v24 = 43;
    }

    v18(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v24, v21, v22, 342, v23);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v25 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v26))
    {
      v27 = 43;
    }

    else
    {
      v27 = 45;
    }

    v28 = object_getClassName(*(a1 + 32));
    v29 = sel_getName(*(a1 + 64));
    v30 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v57 = v27;
    v58 = 2082;
    v59 = v28;
    v60 = 2082;
    v61 = v29;
    v62 = 1024;
    v63 = 342;
    v64 = 2114;
    v65 = v30;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v31 = *(a1 + 48);
  if (v31)
  {
    v32 = [NSError alloc];
    v33 = [NSString stringWithUTF8String:"nfcd"];
    v54 = NSLocalizedDescriptionKey;
    v34 = [NSString stringWithUTF8String:"Session not active"];
    v55 = v34;
    v35 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v36 = [v32 initWithDomain:v33 code:54 userInfo:v35];
    (*(v31 + 16))(v31, v36);

LABEL_24:
  }
}

void sub_100082CF0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 length];
  if (!a3 && v6)
  {
    if ([*(a1 + 32) validateReceivedAPDU:v5])
    {
      v7 = [*(a1 + 32) remoteObject];
      [v7 didReceiveAPDU:v5];
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v9 = Logger;
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 40));
        v12 = 45;
        if (isMetaClass)
        {
          v12 = 43;
        }

        v9(3, "%c[%{public}s %{public}s]:%i APDU disallowed: %{public}@", v12, ClassName, Name, 389, v5);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
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
        v17 = sel_getName(*(a1 + 40));
        *buf = 67110146;
        v21 = v15;
        v22 = 2082;
        v23 = v16;
        v24 = 2082;
        v25 = v17;
        v26 = 1024;
        v27 = 389;
        v28 = 2114;
        v29 = v5;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i APDU disallowed: %{public}@", buf, 0x2Cu);
      }
    }
  }
}

void sub_100083378(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v8(3, "%c[%{public}s %{public}s]:%i error=%{public}@", v11, ClassName, Name, 424, v6);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
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
      v16 = sel_getName(*(a1 + 40));
      *buf = 67110146;
      v20 = v14;
      v21 = 2082;
      v22 = v15;
      v23 = 2082;
      v24 = v16;
      v25 = 1024;
      v26 = 424;
      v27 = 2114;
      v28 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i error=%{public}@", buf, 0x2Cu);
    }
  }

  else
  {
    v12 = +[_NFHardwareManager sharedHardwareManager];
    sub_1001DE960(&v12->isa, *(a1 + 32), 1, 0, v5, 1);
  }
}

void *sub_10008365C(void *result)
{
  v1 = result[4];
  if (*(v1 + 185) == 1)
  {
    *(*(result[5] + 8) + 24) = 1;
    v1 = result[4];
  }

  *(v1 + 185) = 0;
  *(*(result[6] + 8) + 24) = *(result[4] + 200) != 0;
  return result;
}

void *sub_100083820(void *result)
{
  v1 = result[4];
  if (*(v1 + 185) == 1)
  {
    *(*(result[5] + 8) + 24) = 1;
    v1 = result[4];
  }

  *(v1 + 185) = 0;
  *(*(result[6] + 8) + 24) = *(result[4] + 200) != 0;
  return result;
}

void sub_100084154(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    v8 = [*(a1 + 32) clientName];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 514, v8);
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
    v14 = sel_getName(*(a1 + 56));
    v15 = [*(a1 + 32) clientName];
    *buf = 67110146;
    *v123 = v12;
    *&v123[4] = 2082;
    *&v123[6] = v13;
    v124 = 2082;
    v125 = v14;
    v126 = 1024;
    v127 = 514;
    v128 = 2114;
    v129 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFLogGetLogger();
  if (v16)
  {
    v17 = v16;
    v18 = object_getClass(*(a1 + 32));
    v19 = class_isMetaClass(v18);
    v20 = object_getClassName(*(a1 + 32));
    v21 = sel_getName(*(a1 + 56));
    v22 = 45;
    if (v19)
    {
      v22 = 43;
    }

    v17(6, "%c[%{public}s %{public}s]:%i %{public}@", v22, v20, v21, 515, *(a1 + 40));
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v23 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
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
    v27 = sel_getName(*(a1 + 56));
    v28 = *(a1 + 40);
    *buf = 67110146;
    *v123 = v25;
    *&v123[4] = 2082;
    *&v123[6] = v26;
    v124 = 2082;
    v125 = v27;
    v126 = 1024;
    v127 = 515;
    v128 = 2114;
    v129 = v28;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v49 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([*(a1 + 40) length])
      {
        v50 = *(a1 + 32);
        v113[0] = _NSConcreteStackBlock;
        v113[1] = 3221225472;
        v113[2] = sub_100084F58;
        v113[3] = &unk_100317310;
        v113[4] = v50;
        os_unfair_lock_lock(v50 + 47);
        v45 = sub_100084F58(v113);
        os_unfair_lock_unlock(v50 + 47);
        if (v45)
        {
          (*(*(a1 + 48) + 16))();
        }

        else
        {
          v81 = NFSharedSignpostLog();
          if (os_signpost_enabled(v81))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v81, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_WRITE", &unk_1002E8B7A, buf, 2u);
          }

          v82 = [*(*(a1 + 32) + 176) sendAPDU:*(a1 + 40)];
          v83 = NFSharedSignpostLog();
          if (os_signpost_enabled(v83))
          {
            v84 = [*(a1 + 40) length];
            v85 = *(a1 + 64);
            *buf = 134349568;
            *v123 = v84;
            *&v123[8] = 1026;
            *&v123[10] = v82;
            v124 = 1026;
            LODWORD(v125) = v85;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v83, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_WRITE", "len=%{public,signpost.description:attribute}lu, status=%{public,signpost.description:attribute}d, readOnCompletion=%{public,signpost.description:attribute}d", buf, 0x18u);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v86 = NFLogGetLogger();
          if (v86)
          {
            v87 = v86;
            v88 = object_getClass(*(a1 + 32));
            v89 = class_isMetaClass(v88);
            v107 = object_getClassName(*(a1 + 32));
            v110 = sel_getName(*(a1 + 56));
            v90 = 45;
            if (v89)
            {
              v90 = 43;
            }

            v87(6, "%c[%{public}s %{public}s]:%i isSent: %d", v90, v107, v110, 546, v82);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v91 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
          {
            v92 = object_getClass(*(a1 + 32));
            if (class_isMetaClass(v92))
            {
              v93 = 43;
            }

            else
            {
              v93 = 45;
            }

            v94 = object_getClassName(*(a1 + 32));
            v95 = sel_getName(*(a1 + 56));
            *buf = 67110146;
            *v123 = v93;
            *&v123[4] = 2082;
            *&v123[6] = v94;
            v124 = 2082;
            v125 = v95;
            v126 = 1024;
            v127 = 546;
            v128 = 1024;
            LODWORD(v129) = v82;
            _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i isSent: %d", buf, 0x28u);
          }

          if (v82)
          {
            v96 = *(*(a1 + 32) + 208);
            v97 = [*(a1 + 40) length];
            if (v96)
            {
              *(v96 + 8) += v97;
            }

            v98 = *(*(a1 + 32) + 208);
            if (v98)
            {
              ++*(v98 + 24);
            }

            (*(*(a1 + 48) + 16))();
            if (*(a1 + 64) == 1)
            {
              objc_initWeak(buf, *(a1 + 32));
              v99 = *(a1 + 32);
              v111[0] = _NSConcreteStackBlock;
              v111[1] = 3221225472;
              v111[2] = sub_100085080;
              v111[3] = &unk_100317338;
              objc_copyWeak(v112, buf);
              v100 = *(a1 + 56);
              v111[4] = *(a1 + 32);
              v112[1] = v100;
              [v99 _asyncReadWithCompletion:v111];
              objc_destroyWeak(v112);
              objc_destroyWeak(buf);
            }
          }

          else
          {
            v101 = *(a1 + 48);
            v102 = [NSError alloc];
            v103 = [NSString stringWithUTF8String:"nfcd"];
            v114 = NSLocalizedDescriptionKey;
            v104 = [NSString stringWithUTF8String:"Tag Error"];
            v115 = v104;
            v105 = [NSDictionary dictionaryWithObjects:&v115 forKeys:&v114 count:1];
            v106 = [v102 initWithDomain:v103 code:29 userInfo:v105];
            (*(v101 + 16))(v101, v106);
          }
        }

        goto LABEL_34;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v68 = NFLogGetLogger();
      if (v68)
      {
        v69 = v68;
        v70 = object_getClass(*(a1 + 32));
        v71 = class_isMetaClass(v70);
        v72 = object_getClassName(*(a1 + 32));
        v109 = sel_getName(*(a1 + 56));
        v73 = 45;
        if (v71)
        {
          v73 = 43;
        }

        v69(3, "%c[%{public}s %{public}s]:%i Zero length data", v73, v72, v109, 526);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v74 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        v75 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v75))
        {
          v76 = 43;
        }

        else
        {
          v76 = 45;
        }

        v77 = object_getClassName(*(a1 + 32));
        v78 = sel_getName(*(a1 + 56));
        *buf = 67109890;
        *v123 = v76;
        *&v123[4] = 2082;
        *&v123[6] = v77;
        v124 = 2082;
        v125 = v78;
        v126 = 1024;
        v127 = 526;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Zero length data", buf, 0x22u);
      }

      v62 = *(a1 + 48);
      v63 = [NSError alloc];
      v45 = [NSString stringWithUTF8String:"nfcd"];
      v116[0] = NSLocalizedDescriptionKey;
      v46 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v117[0] = v46;
      v117[1] = &off_1003309D8;
      v116[1] = @"Line";
      v116[2] = @"Method";
      v64 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v117[2] = v64;
      v116[3] = NSDebugDescriptionErrorKey;
      v65 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 527];
      v117[3] = v65;
      v66 = v117;
      v67 = v116;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v51 = NFLogGetLogger();
      if (v51)
      {
        v52 = v51;
        v53 = object_getClass(*(a1 + 32));
        v54 = class_isMetaClass(v53);
        v55 = object_getClassName(*(a1 + 32));
        v108 = sel_getName(*(a1 + 56));
        v56 = 45;
        if (v54)
        {
          v56 = 43;
        }

        v52(3, "%c[%{public}s %{public}s]:%i Invalid data", v56, v55, v108, 520);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v57 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        v58 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v58))
        {
          v59 = 43;
        }

        else
        {
          v59 = 45;
        }

        v60 = object_getClassName(*(a1 + 32));
        v61 = sel_getName(*(a1 + 56));
        *buf = 67109890;
        *v123 = v59;
        *&v123[4] = 2082;
        *&v123[6] = v60;
        v124 = 2082;
        v125 = v61;
        v126 = 1024;
        v127 = 520;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid data", buf, 0x22u);
      }

      v62 = *(a1 + 48);
      v63 = [NSError alloc];
      v45 = [NSString stringWithUTF8String:"nfcd"];
      v118[0] = NSLocalizedDescriptionKey;
      v46 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v119[0] = v46;
      v119[1] = &off_1003309C0;
      v118[1] = @"Line";
      v118[2] = @"Method";
      v64 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v119[2] = v64;
      v118[3] = NSDebugDescriptionErrorKey;
      v65 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 521];
      v119[3] = v65;
      v66 = v119;
      v67 = v118;
    }

    v79 = [NSDictionary dictionaryWithObjects:v66 forKeys:v67 count:4];
    v80 = [v63 initWithDomain:v45 code:10 userInfo:v79];
    (*(v62 + 16))(v62, v80);

LABEL_33:
LABEL_34:

    return;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v29 = NFLogGetLogger();
  if (v29)
  {
    v30 = v29;
    v31 = object_getClass(*(a1 + 32));
    v32 = class_isMetaClass(v31);
    v33 = object_getClassName(*(a1 + 32));
    v34 = sel_getName(*(a1 + 56));
    v35 = [*(a1 + 32) sessionUID];
    v36 = 45;
    if (v32)
    {
      v36 = 43;
    }

    v30(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v36, v33, v34, 517, v35);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v37 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
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
    v41 = sel_getName(*(a1 + 56));
    v42 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    *v123 = v39;
    *&v123[4] = 2082;
    *&v123[6] = v40;
    v124 = 2082;
    v125 = v41;
    v126 = 1024;
    v127 = 517;
    v128 = 2114;
    v129 = v42;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v43 = *(a1 + 48);
  if (v43)
  {
    v44 = [NSError alloc];
    v45 = [NSString stringWithUTF8String:"nfcd"];
    v120 = NSLocalizedDescriptionKey;
    v46 = [NSString stringWithUTF8String:"Session not active"];
    v121 = v46;
    v47 = [NSDictionary dictionaryWithObjects:&v121 forKeys:&v120 count:1];
    v48 = [v44 initWithDomain:v45 code:54 userInfo:v47];
    (*(v43 + 16))(v43, v48);

    goto LABEL_33;
  }
}

id sub_100084F58(uint64_t a1)
{
  if (*(*(a1 + 32) + 184) == 1)
  {
    v1 = [NSError alloc];
    v2 = [NSString stringWithUTF8String:"nfcd"];
    v7 = NSLocalizedDescriptionKey;
    v3 = [NSString stringWithUTF8String:"Pending"];
    v8 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v5 = [v1 initWithDomain:v2 code:1 userInfo:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_100085080(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = [*(a1 + 32) validateReceivedAPDU:v6];
    if (v6)
    {
      if (v4)
      {
        v5 = [WeakRetained remoteObject];
        [v5 didReceiveAPDU:v6];
      }
    }
  }
}

void sub_1000851DC(uint64_t a1)
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
    v8 = [*(a1 + 32) clientName];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 583, v8);
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
    v15 = [*(a1 + 32) clientName];
    *buf = 67110146;
    *&buf[4] = v12;
    *&buf[8] = 2082;
    *&buf[10] = v13;
    *&buf[18] = 2082;
    *&buf[20] = v14;
    v56 = 1024;
    v57 = 583;
    v58 = 2114;
    v59 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v36 = *(a1 + 32);
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_100085914;
    v52[3] = &unk_100317310;
    v52[4] = v36;
    os_unfair_lock_lock(v36 + 47);
    v32 = sub_100085914(v52);
    os_unfair_lock_unlock(v36 + 47);
    if (v32)
    {
      (*(*(a1 + 40) + 16))();
      sub_10000A6F0(*(*(a1 + 32) + 208), v32);
      goto LABEL_25;
    }

    v37 = NFSharedSignpostLog();
    if (os_signpost_enabled(v37))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_READ", &unk_1002E8B7A, buf, 2u);
    }

    v38 = *(*(a1 + 32) + 176);
    v51 = 0;
    v33 = [v38 readApduAndReturnError:&v51];
    v39 = v51;
    if (!v39)
    {
      if ([v33 length])
      {
        v40 = *(*(a1 + 32) + 208);
        v41 = [v33 length];
        if (v40)
        {
          *(v40 + 16) += v41;
          *(v40 + 40) = 1;
        }
      }
    }

    v42 = NFSharedSignpostLog();
    if (os_signpost_enabled(v42))
    {
      v43 = [v33 length];
      *buf = 134349312;
      *&buf[4] = v43;
      *&buf[12] = 1026;
      *&buf[14] = v39 == 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_READ", "len=%{public,signpost.description:attribute}lu, status=%{public,signpost.description:attribute}d", buf, 0x12u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 0;
    v44 = *(a1 + 32);
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100085A44;
    v48[3] = &unk_100317388;
    v48[4] = v44;
    v34 = v39;
    v49 = v34;
    v50 = buf;
    os_unfair_lock_lock(v44 + 47);
    sub_100085A44(v48);
    os_unfair_lock_unlock(v44 + 47);
    (*(*(a1 + 40) + 16))();
    sub_10000A6F0(*(*(a1 + 32) + 208), v34);
    if (*(*&buf[8] + 24) == 1)
    {
      v45 = [*(a1 + 32) remoteObject];
      [v45 didDisconnectFromReader];
    }

    v46 = NFSharedSignpostLog();
    if (os_signpost_enabled(v46))
    {
      *v47 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_TARGET_LOST", "onRead", v47, 2u);
    }

    _Block_object_dispose(buf, 8);
LABEL_24:

LABEL_25:
    return;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFLogGetLogger();
  if (v16)
  {
    v17 = v16;
    v18 = object_getClass(*(a1 + 32));
    v19 = class_isMetaClass(v18);
    v20 = object_getClassName(*(a1 + 32));
    v21 = sel_getName(*(a1 + 48));
    v22 = [*(a1 + 32) sessionUID];
    v23 = 45;
    if (v19)
    {
      v23 = 43;
    }

    v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 585, v22);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v24 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
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
    v28 = sel_getName(*(a1 + 48));
    v29 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    *&buf[4] = v26;
    *&buf[8] = 2082;
    *&buf[10] = v27;
    *&buf[18] = 2082;
    *&buf[20] = v28;
    v56 = 1024;
    v57 = 585;
    v58 = 2114;
    v59 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v30 = *(a1 + 40);
  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v53 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v54 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v35 = [v31 initWithDomain:v32 code:54 userInfo:v34];
    (*(v30 + 16))(v30, 0, v35);

    goto LABEL_24;
  }
}

id sub_100085914(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 184) == 1)
  {
    v2 = [NSError alloc];
    v3 = [NSString stringWithUTF8String:"nfcd"];
    v8 = NSLocalizedDescriptionKey;
    v4 = [NSString stringWithUTF8String:"Pending"];
    v9 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v6 = [v2 initWithDomain:v3 code:1 userInfo:v5];
  }

  else
  {
    v6 = 0;
    *(v1 + 184) = 1;
  }

  return v6;
}

id sub_100085A44(id result)
{
  *(*(result + 4) + 184) = 0;
  if (*(*(result + 4) + 185) == 1)
  {
    v1 = result;
    result = [*(result + 5) code];
    if (result == 28 || (result = [*(v1 + 5) code], result == 62))
    {
      *(*(*(v1 + 6) + 8) + 24) = 1;
      *(*(v1 + 4) + 185) = 0;
    }
  }

  return result;
}

void sub_100085B94(uint64_t a1)
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
    v8 = [*(a1 + 32) clientName];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 643, v8);
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
    v15 = [*(a1 + 32) clientName];
    *buf = 67110146;
    v39 = v12;
    v40 = 2082;
    v41 = v13;
    v42 = 2082;
    v43 = v14;
    v44 = 1024;
    v45 = 643;
    v46 = 2114;
    v47 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if (![*(a1 + 32) didStart] || (objc_msgSend(*(a1 + 32), "isSuspended") & 1) != 0 || objc_msgSend(*(a1 + 32), "didEnd"))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v17 = v16;
      v18 = object_getClass(*(a1 + 32));
      v19 = class_isMetaClass(v18);
      v20 = object_getClassName(*(a1 + 32));
      v21 = sel_getName(*(a1 + 48));
      v22 = [*(a1 + 32) sessionUID];
      v23 = 45;
      if (v19)
      {
        v23 = 43;
      }

      v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 645, v22);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
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
      v28 = sel_getName(*(a1 + 48));
      v29 = [*(a1 + 32) sessionUID];
      *buf = 67110146;
      v39 = v26;
      v40 = 2082;
      v41 = v27;
      v42 = 2082;
      v43 = v28;
      v44 = 1024;
      v45 = 645;
      v46 = 2114;
      v47 = v29;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v30 = *(a1 + 40);
    if (v30)
    {
      v31 = [NSError alloc];
      v32 = [NSString stringWithUTF8String:"nfcd"];
      v36 = NSLocalizedDescriptionKey;
      v33 = [NSString stringWithUTF8String:"Session not active"];
      v37 = v33;
      v34 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v35 = [v31 initWithDomain:v32 code:54 userInfo:v34];
      (*(v30 + 16))(v30, 0, v35);
    }
  }

  else
  {
    [*(a1 + 32) _asyncReadWithCompletion:*(a1 + 40)];
  }
}

id sub_1000863CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 184) == 1)
  {
    v2 = [NSError alloc];
    v3 = [NSString stringWithUTF8String:"nfcd"];
    v8 = NSLocalizedDescriptionKey;
    v4 = [NSString stringWithUTF8String:"Pending"];
    v9 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v6 = [v2 initWithDomain:v3 code:1 userInfo:v5];
  }

  else
  {
    v6 = 0;
    *(v1 + 184) = 1;
  }

  return v6;
}

void sub_1000864FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100086810;
  v18[3] = &unk_100315F30;
  v18[4] = v7;
  os_unfair_lock_lock(v7 + 47);
  sub_100086810(v18);
  os_unfair_lock_unlock(v7 + 47);
  v8 = NFSharedSignpostLog();
  if (os_signpost_enabled(v8))
  {
    v9 = [v5 length];
    v10 = "ERROR";
    if (!v6)
    {
      v10 = "SUCCESS";
    }

    *buf = 134349314;
    *&buf[4] = v9;
    *&buf[12] = 2082;
    *&buf[14] = v10;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_READ", "len=%{public,signpost.description:attribute}lu, status=%{public,signpost.description:attribute}s", buf, 0x16u);
  }

  if (!v6)
  {
    if ([v5 length])
    {
      v11 = *(*(a1 + 32) + 208);
      v12 = [v5 length];
      if (v11)
      {
        *(v11 + 16) += v12;
        *(v11 + 40) = 1;
      }
    }
  }

  (*(*(a1 + 40) + 16))();
  sub_10000A6F0(*(*(a1 + 32) + 208), v6);
  if (v6 && ([v6 code] == 28 || objc_msgSend(v6, "code") == 62))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v20 = 0;
    v13 = *(a1 + 32);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100086824;
    v17[3] = &unk_1003157C0;
    v17[4] = v13;
    v17[5] = buf;
    os_unfair_lock_lock(v13 + 47);
    sub_100086824(v17);
    os_unfair_lock_unlock(v13 + 47);
    if (*(*&buf[8] + 24) == 1)
    {
      v14 = [*(a1 + 32) remoteObject];
      [v14 didDisconnectFromReader];
    }

    v15 = NFSharedSignpostLog();
    if (os_signpost_enabled(v15))
    {
      *v16 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TAG_SESSION_TARGET_LOST", "onRead", v16, 2u);
    }

    _Block_object_dispose(buf, 8);
  }
}

uint64_t sub_100086824(uint64_t result)
{
  if (*(*(result + 32) + 185) == 1)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    *(*(result + 32) + 185) = 0;
  }

  return result;
}

void sub_100086950(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    v8 = [*(a1 + 32) clientName];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 712, v8);
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
    v14 = sel_getName(*(a1 + 56));
    v15 = [*(a1 + 32) clientName];
    *buf = 67110146;
    *&buf[4] = v12;
    *v130 = 2082;
    *&v130[2] = v13;
    *&v130[10] = 2082;
    *&v130[12] = v14;
    *&v130[20] = 1024;
    *&v130[22] = 712;
    *&v130[26] = 2114;
    *&v130[28] = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v36 = +[_NFHardwareManager sharedHardwareManager];
    v32 = [v36 lastKnownRoutingConfig];

    if ([v32 hostMode] != 2)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v59 = NFLogGetLogger();
      if (v59)
      {
        v60 = v59;
        v61 = object_getClass(*(a1 + 32));
        v62 = class_isMetaClass(v61);
        v63 = object_getClassName(*(a1 + 32));
        v116 = sel_getName(*(a1 + 56));
        v64 = 45;
        if (v62)
        {
          v64 = 43;
        }

        v60(3, "%c[%{public}s %{public}s]:%i Emulation has not started", v64, v63, v116, 718);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v65 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v66 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v66))
        {
          v67 = 43;
        }

        else
        {
          v67 = 45;
        }

        v68 = object_getClassName(*(a1 + 32));
        v69 = sel_getName(*(a1 + 56));
        *buf = 67109890;
        *&buf[4] = v67;
        *v130 = 2082;
        *&v130[2] = v68;
        *&v130[10] = 2082;
        *&v130[12] = v69;
        *&v130[20] = 1024;
        *&v130[22] = 718;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Emulation has not started", buf, 0x22u);
      }

      v70 = *(a1 + 48);
      v71 = [NSError alloc];
      v72 = [NSString stringWithUTF8String:"nfcd"];
      v133[0] = NSLocalizedDescriptionKey;
      v73 = [NSString stringWithUTF8String:"Invalid State"];
      v134[0] = v73;
      v134[1] = &off_1003309F0;
      v133[1] = @"Line";
      v133[2] = @"Method";
      v74 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v134[2] = v74;
      v133[3] = NSDebugDescriptionErrorKey;
      v75 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 719];
      v134[3] = v75;
      v76 = [NSDictionary dictionaryWithObjects:v134 forKeys:v133 count:4];
      v77 = v71;
      v78 = v72;
      v79 = 12;
LABEL_86:
      v114 = [v77 initWithDomain:v78 code:v79 userInfo:v76];
      (*(v70 + 16))(v70, v114);

      goto LABEL_24;
    }

    [*(a1 + 40) doubleValue];
    v38 = v37;
    v39 = 2.0;
    if (!NFIsInternalBuild())
    {
LABEL_61:
      if (v38 >= 0.0 && v38 <= v39)
      {
        *buf = 0;
        *v130 = buf;
        *&v130[8] = 0x3032000000;
        *&v130[16] = sub_100006A2C;
        *&v130[24] = sub_100087708;
        *&v130[32] = 0;
        v88 = *(a1 + 32);
        v120[0] = _NSConcreteStackBlock;
        v120[1] = 3221225472;
        v120[2] = sub_100087710;
        v120[3] = &unk_1003161D8;
        v120[4] = v88;
        v120[5] = buf;
        os_unfair_lock_lock(v88 + 47);
        sub_100087710(v120);
        os_unfair_lock_unlock(v88 + 47);
        v89 = [[NSDate alloc] initWithTimeIntervalSinceNow:v38];
        v90 = v89;
        if (!*(*v130 + 40) || [v89 compare:?] == 1)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v91 = NFLogGetLogger();
          if (v91)
          {
            v92 = v91;
            v93 = object_getClass(*(a1 + 32));
            v94 = class_isMetaClass(v93);
            v95 = object_getClassName(*(a1 + 32));
            v118 = sel_getName(*(a1 + 56));
            v96 = 45;
            if (v94)
            {
              v96 = 43;
            }

            v92(5, "%c[%{public}s %{public}s]:%i Renew timer", v96, v95, v118, 753);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v97 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
          {
            v98 = object_getClass(*(a1 + 32));
            if (class_isMetaClass(v98))
            {
              v99 = 43;
            }

            else
            {
              v99 = 45;
            }

            v100 = object_getClassName(*(a1 + 32));
            v101 = sel_getName(*(a1 + 56));
            *v121 = 67109890;
            v122 = v99;
            v123 = 2082;
            v124 = v100;
            v125 = 2082;
            v126 = v101;
            v127 = 1024;
            v128 = 753;
            _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Renew timer", v121, 0x22u);
          }

          [*(a1 + 32) _syncStartAssertionTimer:v38];
        }

        (*(*(a1 + 48) + 16))();

        _Block_object_dispose(buf, 8);
        goto LABEL_24;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v102 = NFLogGetLogger();
      if (v102)
      {
        v103 = v102;
        v104 = object_getClass(*(a1 + 32));
        v105 = class_isMetaClass(v104);
        v106 = object_getClassName(*(a1 + 32));
        v119 = sel_getName(*(a1 + 56));
        v107 = 45;
        if (v105)
        {
          v107 = 43;
        }

        v103(3, "%c[%{public}s %{public}s]:%i Invalid interval: %f", v107, v106, v119, 740, *&v38);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v108 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
      {
        v109 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v109))
        {
          v110 = 43;
        }

        else
        {
          v110 = 45;
        }

        v111 = object_getClassName(*(a1 + 32));
        v112 = sel_getName(*(a1 + 56));
        *buf = 67110146;
        *&buf[4] = v110;
        *v130 = 2082;
        *&v130[2] = v111;
        *&v130[10] = 2082;
        *&v130[12] = v112;
        *&v130[20] = 1024;
        *&v130[22] = 740;
        *&v130[26] = 2048;
        *&v130[28] = v38;
        _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid interval: %f", buf, 0x2Cu);
      }

      v70 = *(a1 + 48);
      v113 = [NSError alloc];
      v72 = [NSString stringWithUTF8String:"nfcd"];
      v131[0] = NSLocalizedDescriptionKey;
      v73 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v132[0] = v73;
      v132[1] = &off_100330A08;
      v131[1] = @"Line";
      v131[2] = @"Method";
      v74 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v132[2] = v74;
      v131[3] = NSDebugDescriptionErrorKey;
      v75 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 741];
      v132[3] = v75;
      v76 = [NSDictionary dictionaryWithObjects:v132 forKeys:v131 count:4];
      v77 = v113;
      v78 = v72;
      v79 = 10;
      goto LABEL_86;
    }

    v40 = +[NSUserDefaults standardUserDefaults];
    v41 = [v40 objectForKey:@"MaxEmuAssertionTime"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_60:

      goto LABEL_61;
    }

    [v41 floatValue];
    v43 = v42;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v44 = NFLogGetLogger();
    v45 = v44;
    if (v43 >= 2.0)
    {
      v39 = v43;
      if (v44)
      {
        v80 = object_getClass(*(a1 + 32));
        v81 = class_isMetaClass(v80);
        v82 = object_getClassName(*(a1 + 32));
        v117 = sel_getName(*(a1 + 56));
        v83 = 45;
        if (v81)
        {
          v83 = 43;
        }

        v45(6, "%c[%{public}s %{public}s]:%i Max assert interval override=%f", v83, v82, v117, 734, *&v39);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v50 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_59;
      }

      v84 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v84))
      {
        v85 = 43;
      }

      else
      {
        v85 = 45;
      }

      v86 = object_getClassName(*(a1 + 32));
      v87 = sel_getName(*(a1 + 56));
      *buf = 67110146;
      *&buf[4] = v85;
      *v130 = 2082;
      *&v130[2] = v86;
      *&v130[10] = 2082;
      *&v130[12] = v87;
      *&v130[20] = 1024;
      *&v130[22] = 734;
      *&v130[26] = 2048;
      *&v130[28] = v39;
      v55 = "%c[%{public}s %{public}s]:%i Max assert interval override=%f";
      v56 = v50;
      v57 = OS_LOG_TYPE_DEFAULT;
      v58 = 44;
    }

    else
    {
      if (v44)
      {
        v46 = object_getClass(*(a1 + 32));
        v47 = class_isMetaClass(v46);
        v48 = object_getClassName(*(a1 + 32));
        v115 = sel_getName(*(a1 + 56));
        v49 = 45;
        if (v47)
        {
          v49 = 43;
        }

        v45(4, "%c[%{public}s %{public}s]:%i Invalid max asssert interval override; revert to default", v49, v48, v115, 731);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v50 = NFSharedLogGetLogger();
      v39 = 2.0;
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_59;
      }

      v51 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v51))
      {
        v52 = 43;
      }

      else
      {
        v52 = 45;
      }

      v53 = object_getClassName(*(a1 + 32));
      v54 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      *&buf[4] = v52;
      *v130 = 2082;
      *&v130[2] = v53;
      *&v130[10] = 2082;
      *&v130[12] = v54;
      *&v130[20] = 1024;
      *&v130[22] = 731;
      v55 = "%c[%{public}s %{public}s]:%i Invalid max asssert interval override; revert to default";
      v56 = v50;
      v57 = OS_LOG_TYPE_ERROR;
      v58 = 34;
    }

    _os_log_impl(&_mh_execute_header, v56, v57, v55, buf, v58);
LABEL_59:

    goto LABEL_60;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFLogGetLogger();
  if (v16)
  {
    v17 = v16;
    v18 = object_getClass(*(a1 + 32));
    v19 = class_isMetaClass(v18);
    v20 = object_getClassName(*(a1 + 32));
    v21 = sel_getName(*(a1 + 56));
    v22 = [*(a1 + 32) sessionUID];
    v23 = 45;
    if (v19)
    {
      v23 = 43;
    }

    v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 714, v22);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v24 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
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
    v28 = sel_getName(*(a1 + 56));
    v29 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    *&buf[4] = v26;
    *v130 = 2082;
    *&v130[2] = v27;
    *&v130[10] = 2082;
    *&v130[12] = v28;
    *&v130[20] = 1024;
    *&v130[22] = 714;
    *&v130[26] = 2114;
    *&v130[28] = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v30 = *(a1 + 48);
  if (v30)
  {
    v31 = [NSError alloc];
    v32 = [NSString stringWithUTF8String:"nfcd"];
    v135 = NSLocalizedDescriptionKey;
    v33 = [NSString stringWithUTF8String:"Session not active"];
    v136 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v136 forKeys:&v135 count:1];
    v35 = [v31 initWithDomain:v32 code:54 userInfo:v34];
    (*(v30 + 16))(v30, v35);

LABEL_24:
  }
}

void sub_1000877FC(uint64_t a1)
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
    v8 = [*(a1 + 32) clientName];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 764, v8);
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
    v15 = [*(a1 + 32) clientName];
    *buf = 67110146;
    v30 = v12;
    v31 = 2082;
    v32 = v13;
    v33 = 2082;
    v34 = v14;
    v35 = 1024;
    v36 = 764;
    v37 = 2114;
    v38 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  v16 = NFSharedSignpostLog();
  if (os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SESSION_RESUME_FROM_WAITING_ON_FIELD", &unk_1002E8B7A, buf, 2u);
  }

  if ([*(a1 + 32) disableAutoStartOnField])
  {
    v17 = +[_NFHardwareManager sharedHardwareManager];
    v18 = [*(a1 + 32) sessionResumeField];
    sub_1001DD9C8(v17, v18, *(a1 + 32));

    [*(a1 + 32) setSessionResumeField:0];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v19 = *(a1 + 40);
    v20 = [NSError alloc];
    v21 = [NSString stringWithUTF8String:"nfcd"];
    v27[0] = NSLocalizedDescriptionKey;
    v22 = [NSString stringWithUTF8String:"Invalid State"];
    v28[0] = v22;
    v28[1] = &off_100330A20;
    v27[1] = @"Line";
    v27[2] = @"Method";
    v23 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v28[2] = v23;
    v27[3] = NSDebugDescriptionErrorKey;
    v24 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 769];
    v28[3] = v24;
    v25 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:4];
    v26 = [v20 initWithDomain:v21 code:12 userInfo:v25];
    (*(v19 + 16))(v19, v26);
  }
}

void sub_100087C7C(uint64_t a1)
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
    v8 = [*(a1 + 32) clientName];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@", v9, ClassName, Name, 784, v8);
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
    v14 = sel_getName(*(a1 + 40));
    v15 = [*(a1 + 32) clientName];
    *buf = 67110146;
    v31 = v12;
    v32 = 2082;
    v33 = v13;
    v34 = 2082;
    v35 = v14;
    v36 = 1024;
    v37 = 784;
    v38 = 2114;
    v39 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
  }

  if (![*(a1 + 32) didStart] || (objc_msgSend(*(a1 + 32), "isSuspended") & 1) != 0 || objc_msgSend(*(a1 + 32), "didEnd"))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v17 = v16;
      v18 = object_getClass(*(a1 + 32));
      v19 = class_isMetaClass(v18);
      v20 = object_getClassName(*(a1 + 32));
      v21 = sel_getName(*(a1 + 40));
      v22 = [*(a1 + 32) sessionUID];
      v23 = 45;
      if (v19)
      {
        v23 = 43;
      }

      v17(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v23, v20, v21, 786, v22);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
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
      v29 = [*(a1 + 32) sessionUID];
      *buf = 67110146;
      v31 = v26;
      v32 = 2082;
      v33 = v27;
      v34 = 2082;
      v35 = v28;
      v36 = 1024;
      v37 = 786;
      v38 = 2114;
      v39 = v29;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }
  }

  else
  {
    [*(*(a1 + 32) + 176) restartDiscovery];
  }
}

id sub_100088308(id *a1)
{
  v2 = [[NSData alloc] initWithBytes:&unk_100296D48 length:12];
  v137 = 0;
  v3 = sub_100158A6C(a1, v2, &v137);
  v4 = v137;

  if ([v3 status] == 36864)
  {
    v5 = [[NSData alloc] initWithBytes:&unk_100296D5C length:11];
    v138 = 0;
    v6 = sub_100158334(a1, 128, 160, 128, 0, v5, &v138);
    v7 = v138;

    if ([v6 status] == 27270)
    {
      v8 = 0;
      byte_10035D990 = 1;
LABEL_83:

      if (v8)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v112 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("selectSURFApplet");
          v115 = 45;
          if (isMetaClass)
          {
            v115 = 43;
          }

          v112(3, "%c[%{public}s %{public}s]:%i Could not retrieve SURF slot : %{public}@", v115, ClassName, Name, 54, v8);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v23 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v116 = object_getClass(a1);
          if (class_isMetaClass(v116))
          {
            v117 = 43;
          }

          else
          {
            v117 = 45;
          }

          v118 = object_getClassName(a1);
          v119 = sel_getName("selectSURFApplet");
          *buf = 67110146;
          *&buf[4] = v117;
          v143 = 2082;
          v144 = v118;
          v145 = 2082;
          v146 = v119;
          v147 = 1024;
          v148 = 54;
          v149 = 2114;
          v150[0] = v8;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not retrieve SURF slot : %{public}@", buf, 0x2Cu);
        }

        goto LABEL_93;
      }

      v4 = 0;
      goto LABEL_95;
    }

    if ([v6 status] != 36864)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v47 = NFLogGetLogger();
      if (v47)
      {
        v48 = v47;
        v49 = object_getClass(a1);
        v50 = class_isMetaClass(v49);
        v51 = v7;
        v52 = object_getClassName(a1);
        v53 = sel_getName("getSurfSlot");
        v133 = [v6 status];
        v54 = 45;
        if (v50)
        {
          v54 = 43;
        }

        v125 = v52;
        v7 = v51;
        v48(3, "%c[%{public}s %{public}s]:%i Failed to list keys inside applet : 0x%04x / %{public}@", v54, v125, v53, 95, v133, v51);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v55 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v56 = object_getClass(a1);
        if (class_isMetaClass(v56))
        {
          v57 = 43;
        }

        else
        {
          v57 = 45;
        }

        v58 = object_getClassName(a1);
        v59 = sel_getName("getSurfSlot");
        v60 = [v6 status];
        *buf = 67110402;
        *&buf[4] = v57;
        v143 = 2082;
        v144 = v58;
        v145 = 2082;
        v146 = v59;
        v147 = 1024;
        v148 = 95;
        v149 = 1024;
        LODWORD(v150[0]) = v60;
        WORD2(v150[0]) = 2114;
        *(v150 + 6) = v7;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to list keys inside applet : 0x%04x / %{public}@", buf, 0x32u);
      }

      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v72 = [NSError alloc];
        v73 = [NSString stringWithUTF8String:"nfcd"];
        v141 = NSLocalizedDescriptionKey;
        v74 = [NSString stringWithUTF8String:"Command Error"];
        *buf = v74;
        v75 = [NSDictionary dictionaryWithObjects:buf forKeys:&v141 count:1];
        v8 = [v72 initWithDomain:v73 code:16 userInfo:v75];

        v7 = 0;
      }

      goto LABEL_83;
    }

    v135 = v7;
    v26 = [v6 response];
    v27 = [NFTLV TLVWithData:v26];

    v134 = v27;
    if (!v27)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v61 = NFLogGetLogger();
      if (v61)
      {
        v62 = v61;
        v63 = object_getClass(a1);
        v64 = class_isMetaClass(v63);
        v65 = object_getClassName(a1);
        v128 = sel_getName("getSurfSlot");
        v66 = 45;
        if (v64)
        {
          v66 = 43;
        }

        v62(3, "%c[%{public}s %{public}s]:%i Failed to list keys, expected top level TLV", v66, v65, v128, 102);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v67 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        v68 = object_getClass(a1);
        if (class_isMetaClass(v68))
        {
          v69 = 43;
        }

        else
        {
          v69 = 45;
        }

        v70 = object_getClassName(a1);
        v71 = sel_getName("getSurfSlot");
        *buf = 67109890;
        *&buf[4] = v69;
        v143 = 2082;
        v144 = v70;
        v145 = 2082;
        v146 = v71;
        v147 = 1024;
        v148 = 102;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to list keys, expected top level TLV", buf, 0x22u);
      }

      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v86 = [NSError alloc];
        v87 = [NSString stringWithUTF8String:"nfcd"];
        v141 = NSLocalizedDescriptionKey;
        v88 = [NSString stringWithUTF8String:"Command Error"];
        *buf = v88;
        v89 = [NSDictionary dictionaryWithObjects:buf forKeys:&v141 count:1];
        v8 = [v86 initWithDomain:v87 code:16 userInfo:v89];

        v7 = 0;
      }

      v90 = 0;
      goto LABEL_82;
    }

    v28 = [v27 value];
    v29 = [NFTLV TLVsWithData:v28];

    if ([v29 count] == 2)
    {
      v30 = [v29 objectAtIndex:1];
      v31 = [v30 value];
      v32 = [NFTLV TLVsWithData:v31];

      if ([v32 count])
      {
        if ([v32 count] != 1)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v95 = NFLogGetLogger();
          if (v95)
          {
            v96 = v95;
            v97 = object_getClass(a1);
            v98 = v32;
            v99 = class_isMetaClass(v97);
            v100 = object_getClassName(a1);
            v130 = sel_getName("getSurfSlot");
            v101 = !v99;
            v32 = v98;
            v102 = 45;
            if (!v101)
            {
              v102 = 43;
            }

            v96(3, "%c[%{public}s %{public}s]:%i Expecting 1 key at most", v102, v100, v130, 122);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v103 = NFSharedLogGetLogger();
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

            v106 = v32;
            v107 = object_getClassName(a1);
            v108 = sel_getName("getSurfSlot");
            *buf = 67109890;
            *&buf[4] = v105;
            v143 = 2082;
            v144 = v107;
            v32 = v106;
            v145 = 2082;
            v146 = v108;
            v147 = 1024;
            v148 = 122;
            _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Expecting 1 key at most", buf, 0x22u);
          }

          if (v7)
          {
            v8 = v7;
            v29 = v32;
          }

          else
          {
            v121 = [NSError alloc];
            sel = v32;
            v122 = [NSString stringWithUTF8String:"nfcd"];
            v141 = NSLocalizedDescriptionKey;
            v123 = [NSString stringWithUTF8String:"Command Error"];
            *buf = v123;
            v124 = [NSDictionary dictionaryWithObjects:buf forKeys:&v141 count:1];
            v8 = [v121 initWithDomain:v122 code:16 userInfo:v124];

            v29 = sel;
          }

          goto LABEL_81;
        }

        v33 = [v32 objectAtIndex:0];
        v34 = [v33 value];
        v29 = [NFTLV TLVsWithData:v34];

        if ([v29 count] <= 1)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v35 = NFLogGetLogger();
          if (v35)
          {
            v36 = v35;
            v37 = object_getClass(a1);
            v38 = class_isMetaClass(v37);
            v39 = object_getClassName(a1);
            v127 = sel_getName("getSurfSlot");
            v40 = 45;
            if (v38)
            {
              v40 = 43;
            }

            v36(3, "%c[%{public}s %{public}s]:%i Expecting at least two TLVs for KeyInSlot", v40, v39, v127, 129);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v41 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_63;
          }

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
          v45 = sel_getName("getSurfSlot");
          *buf = 67109890;
          *&buf[4] = v43;
          v143 = 2082;
          v144 = v44;
          v145 = 2082;
          v146 = v45;
          v147 = 1024;
          v148 = 129;
          v46 = "%c[%{public}s %{public}s]:%i Expecting at least two TLVs for KeyInSlot";
LABEL_62:
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, v46, buf, 0x22u);
LABEL_63:

          v7 = v135;
          if (v135)
          {
            v8 = v135;
          }

          else
          {
            v91 = [NSError alloc];
            v92 = [NSString stringWithUTF8String:"nfcd"];
            v141 = NSLocalizedDescriptionKey;
            v93 = [NSString stringWithUTF8String:"Command Error"];
            *buf = v93;
            v94 = [NSDictionary dictionaryWithObjects:buf forKeys:&v141 count:1];
            v8 = [v91 initWithDomain:v92 code:16 userInfo:v94];

            v7 = 0;
          }

          goto LABEL_81;
        }

        v109 = [v29 objectAtIndex:1];
        v110 = [v109 value];
        byte_10035D990 = *([v110 bytes] + 1);

        v8 = 0;
      }

      else
      {
        v8 = 0;
        byte_10035D990 = 0;
        v29 = v32;
      }

LABEL_81:
      v90 = v134;

LABEL_82:
      goto LABEL_83;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v76 = NFLogGetLogger();
    if (v76)
    {
      v77 = v76;
      v78 = object_getClass(a1);
      v79 = class_isMetaClass(v78);
      v80 = object_getClassName(a1);
      v129 = sel_getName("getSurfSlot");
      v81 = 45;
      if (v79)
      {
        v81 = 43;
      }

      v77(3, "%c[%{public}s %{public}s]:%i Failed to list keys, expected version and sequence TLVs", v81, v80, v129, 109);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v41 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_63;
    }

    v82 = object_getClass(a1);
    if (class_isMetaClass(v82))
    {
      v83 = 43;
    }

    else
    {
      v83 = 45;
    }

    v84 = object_getClassName(a1);
    v85 = sel_getName("getSurfSlot");
    *buf = 67109890;
    *&buf[4] = v83;
    v143 = 2082;
    v144 = v84;
    v145 = 2082;
    v146 = v85;
    v147 = 1024;
    v148 = 109;
    v46 = "%c[%{public}s %{public}s]:%i Failed to list keys, expected version and sequence TLVs";
    goto LABEL_62;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v9 = NFLogGetLogger();
  if (v9)
  {
    v10 = v9;
    v11 = object_getClass(a1);
    v12 = class_isMetaClass(v11);
    v13 = object_getClassName(a1);
    v14 = sel_getName("selectSURFApplet");
    v132 = [v3 status];
    v15 = 45;
    if (v12)
    {
      v15 = 43;
    }

    v10(3, "%c[%{public}s %{public}s]:%i Failed to select applet: 0x%04x / %{public}@", v15, v13, v14, 47, v132, v4);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v16 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
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
    v20 = sel_getName("selectSURFApplet");
    v21 = [v3 status];
    *buf = 67110402;
    *&buf[4] = v18;
    v143 = 2082;
    v144 = v19;
    v145 = 2082;
    v146 = v20;
    v147 = 1024;
    v148 = 47;
    v149 = 1024;
    LODWORD(v150[0]) = v21;
    WORD2(v150[0]) = 2114;
    *(v150 + 6) = v4;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select applet: 0x%04x / %{public}@", buf, 0x32u);
  }

  if (!v4)
  {
    v22 = [NSError alloc];
    v23 = [NSString stringWithUTF8String:"nfcd"];
    v139 = NSLocalizedDescriptionKey;
    v24 = [NSString stringWithUTF8String:"Command Error"];
    v140 = v24;
    v25 = [NSDictionary dictionaryWithObjects:&v140 forKeys:&v139 count:1];
    v8 = [v22 initWithDomain:v23 code:16 userInfo:v25];

LABEL_93:
    v4 = v8;
  }

LABEL_95:

  return v4;
}

void sub_100089210(id *a1)
{
  if (a1)
  {
    v2 = [[NSData alloc] initWithBytes:&unk_100296D54 length:8];
    v19 = 0;
    v3 = sub_100158A6C(a1, v2, &v19);
    v4 = v19;

    if ([v3 status] != 36864)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v6 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("deselectSURFApplet");
        v18 = [v3 status];
        v11 = 45;
        if (isMetaClass)
        {
          v11 = 43;
        }

        v6(3, "%c[%{public}s %{public}s]:%i Failed to deselect applet: 0x%04x / %{public}@", v11, ClassName, Name, 67, v18, v4);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = object_getClass(a1);
        if (class_isMetaClass(v13))
        {
          v14 = 43;
        }

        else
        {
          v14 = 45;
        }

        v15 = object_getClassName(a1);
        v16 = sel_getName("deselectSURFApplet");
        v17 = [v3 status];
        *buf = 67110402;
        v21 = v14;
        v22 = 2082;
        v23 = v15;
        v24 = 2082;
        v25 = v16;
        v26 = 1024;
        v27 = 67;
        v28 = 1024;
        v29 = v17;
        v30 = 2114;
        v31 = v4;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to deselect applet: 0x%04x / %{public}@", buf, 0x32u);
      }
    }
  }
}

id sub_10008943C(void *a1, unsigned int a2, void *a3)
{
  if (a1)
  {
    v3 = __rev16(a2);
    v4 = [NFTLV TLVWithTag:2 unsignedChar:1];
    v48[0] = v4;
    v5 = [NFTLV TLVWithTag:2 unsignedShort:416];
    v48[1] = v5;
    v6 = [NFTLV TLVWithTag:2 unsignedChar:1];
    v47[0] = v6;
    v7 = [NFTLV TLVWithTag:4 unsignedShort:v3];
    v47[1] = v7;
    v8 = [NSArray arrayWithObjects:v47 count:2];
    v9 = [NFTLV TLVWithTag:48 children:v8];
    v10 = [v9 asData];
    v11 = [NFTLV TLVWithTag:4 value:v10];
    v48[2] = v11;
    v12 = [NSArray arrayWithObjects:v48 count:3];
    v13 = [NFTLV TLVWithTag:48 children:v12];
    v34 = [v13 asData];

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v15 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("deleteKeyCommandWithSlot:error:");
      v20 = byte_10035D990;
      v21 = [v34 NF_asHexString];
      v22 = 45;
      if (isMetaClass)
      {
        v22 = 43;
      }

      v15(6, "%c[%{public}s %{public}s]:%i Using non-legacy delete command slot %d : %{public}@", v22, ClassName, Name, 175, v20, v21);
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

      v26 = object_getClassName(a1);
      v27 = sel_getName("deleteKeyCommandWithSlot:error:");
      v28 = byte_10035D990;
      v29 = [v34 NF_asHexString];
      *buf = 67110402;
      v36 = v25;
      v37 = 2082;
      v38 = v26;
      v39 = 2082;
      v40 = v27;
      v41 = 1024;
      v42 = 175;
      v43 = 1024;
      v44 = v28;
      v45 = 2114;
      v46 = v29;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Using non-legacy delete command slot %d : %{public}@", buf, 0x32u);
    }

    v30 = sub_100158334(a1, 128, 160, 128, 0, v34, a3);
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

NSErrorUserInfoKey sub_1000897C4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = +[NFCALogger sharedCALogger];
    v7 = [v6 getTimestamp];

    v8 = sub_100088308(a1);
    if (v8)
    {
      v9 = v8;
      v303[0] = &off_100330A38;
      v302[0] = @"peerPaymentEnrollmentErrorStep";
      v302[1] = @"peerPaymentEnrollmentErrorCode";
      v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 code]);
      v303[1] = v10;
      v302[2] = @"peerPaymentEnrollmentStartTime";
      v11 = [NSNumber numberWithUnsignedLongLong:v7];
      v303[2] = v11;
      v12 = [NSDictionary dictionaryWithObjects:v303 forKeys:v302 count:3];

      sub_1002087CC(NFPeerPaymentAndPurpleTrustCALogger, v12);
      v13 = v9;
      v14 = v13;
LABEL_164:

      goto LABEL_165;
    }

    v272 = 0;
    v12 = sub_10008943C(a1, byte_10035D990, &v272);
    v13 = v272;
    if (v12 && ([v12 status] == 36864 || objc_msgSend(v12, "status") == 27272))
    {
      v15 = objc_opt_new();
      if ([v5 length] == 32)
      {
        v250 = a3;
        v253 = v5;
        v16 = [NFTLV TLVWithTag:24352 value:v5];
        [v15 addObject:v16];

        v271 = 256;
        v17 = [[NSData alloc] initWithBytes:&v271 length:2];
        v18 = [NFTLV TLVWithTag:81 value:v17];
        [v15 addObject:v18];

        v270 = 257;
        v19 = [[NSData alloc] initWithBytes:&v270 length:2];
        v20 = [NFTLV TLVWithTag:82 value:v19];
        [v15 addObject:v20];

        v268 = 513;
        v269 = 4;
        v21 = [[NSData alloc] initWithBytes:&v268 length:3];
        v22 = [NFTLV TLVWithTag:85 value:v21];
        [v15 addObject:v22];

        v267 = -65536;
        v23 = [[NSData alloc] initWithBytes:&v267 length:4];
        v24 = [NFTLV TLVWithTag:87 value:v23];
        [v15 addObject:v24];

        v25 = [NFTLV TLVWithTag:32551 children:v15];
        v254 = [v25 asData];

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v27 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          v31 = a1;
          Name = sel_getName("performPeerPaymentEnrollment:response:");
          v33 = [NFTLV TLVWithTag:32551 children:v15];
          v235 = Name;
          a1 = v31;
          v34 = 45;
          if (isMetaClass)
          {
            v34 = 43;
          }

          v27(6, "%c[%{public}s %{public}s]:%i keygenDGI = %{public}@", v34, ClassName, v235, 303, v33);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v35 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = object_getClass(a1);
          v37 = v7;
          v38 = v12;
          if (class_isMetaClass(v36))
          {
            v39 = 43;
          }

          else
          {
            v39 = 45;
          }

          v40 = object_getClassName(a1);
          v41 = sel_getName("performPeerPaymentEnrollment:response:");
          [NFTLV TLVWithTag:32551 children:v15];
          v43 = v42 = a1;
          *buf = 67110146;
          *&buf[4] = v39;
          v12 = v38;
          v7 = v37;
          v294 = 2082;
          v295 = v40;
          v296 = 2082;
          v297 = v41;
          v298 = 1024;
          v299 = 303;
          v300 = 2114;
          *v301 = v43;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i keygenDGI = %{public}@", buf, 0x2Cu);

          a1 = v42;
        }

        v273 = 0;
        v44 = sub_100158334(a1, 128, 193, 0, byte_10035D990, v254, &v273);
        v45 = v273;
        v262 = a1;
        if (v44)
        {
          if ([v44 status] == 36864)
          {
            v46 = [v44 response];
            v47 = [v46 length];

            if (v47 > 0xA8)
            {
              v115 = [v44 response];
              v138 = v115;
              v64 = 0;
              goto LABEL_103;
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v48 = NFLogGetLogger();
            if (v48)
            {
              v49 = v48;
              v50 = object_getClass(a1);
              v248 = class_isMetaClass(v50);
              v255 = object_getClassName(a1);
              v51 = sel_getName("sendCreateKey:response:");
              v52 = [v44 response];
              v243 = [v52 length];
              v53 = 45;
              if (v248)
              {
                v53 = 43;
              }

              v49(3, "%c[%{public}s %{public}s]:%i Invalid response size to create key: %lu bytes", v53, v255, v51, 201, v243);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v54 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              v55 = object_getClass(v262);
              if (class_isMetaClass(v55))
              {
                v56 = 43;
              }

              else
              {
                v56 = 45;
              }

              v256 = object_getClassName(v262);
              v57 = sel_getName("sendCreateKey:response:");
              v58 = [v44 response];
              v59 = [v58 length];
              *buf = 67110146;
              *&buf[4] = v56;
              v294 = 2082;
              v295 = v256;
              v296 = 2082;
              v297 = v57;
              v298 = 1024;
              v299 = 201;
              v300 = 2048;
              *v301 = v59;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid response size to create key: %lu bytes", buf, 0x2Cu);
            }

            v257 = [NSError alloc];
            v60 = [NSString stringWithUTF8String:"nfcd"];
            v305 = NSLocalizedDescriptionKey;
            v61 = [NSString stringWithUTF8String:"Command Error"];
            *buf = v61;
            v62 = [NSDictionary dictionaryWithObjects:buf forKeys:&v305 count:1];
            v63 = v60;
            v64 = [v257 initWithDomain:v60 code:16 userInfo:v62];

            goto LABEL_80;
          }

          v249 = v7;
          v260 = objc_opt_new();
          v116 = v45;
          while (1)
          {
            if (([v44 status] & 0xFF00) != 0x6100)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v141 = NFLogGetLogger();
              if (v141)
              {
                v142 = v141;
                v143 = object_getClass(a1);
                v144 = class_isMetaClass(v143);
                v145 = object_getClassName(a1);
                v146 = sel_getName("sendCreateKey:response:");
                v246 = [v44 status];
                v147 = 45;
                if (v144)
                {
                  v147 = 43;
                }

                v142(3, "%c[%{public}s %{public}s]:%i Failed to create key: 0x%04x", v147, v145, v146, 239, v246);
              }

              v148 = v12;
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v149 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
              {
                v150 = object_getClass(v262);
                if (class_isMetaClass(v150))
                {
                  v151 = 43;
                }

                else
                {
                  v151 = 45;
                }

                v152 = object_getClassName(v262);
                v153 = sel_getName("sendCreateKey:response:");
                v154 = [v44 status];
                *buf = 67110146;
                *&buf[4] = v151;
                v294 = 2082;
                v295 = v152;
                v296 = 2082;
                v297 = v153;
                v298 = 1024;
                v299 = 239;
                v300 = 1024;
                *v301 = v154;
                _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to create key: 0x%04x", buf, 0x28u);
              }

              v155 = [NSError alloc];
              v156 = [NSString stringWithUTF8String:"nfcd"];
              v304 = NSLocalizedDescriptionKey;
              v157 = [NSString stringWithUTF8String:"Command Error"];
              *buf = v157;
              v158 = [NSDictionary dictionaryWithObjects:buf forKeys:&v304 count:1];
              v64 = [v155 initWithDomain:v156 code:16 userInfo:v158];

              v115 = 0;
              v44 = v260;
              v45 = v116;
              v12 = v148;
              goto LABEL_102;
            }

            v117 = [v44 response];
            [v260 appendData:v117];

            v118 = [v44 status];
            v305 = v116;
            v119 = sub_10015837C(a1, 128, 192, 0, 0, 0, v118, 0, &v305);
            v45 = v305;

            if (!v119)
            {
              break;
            }

            v44 = v119;
            v116 = v45;
            if ([v119 status] == 36864)
            {
              v120 = [v119 response];
              v44 = v260;
              [v260 appendData:v120];

              if ([v260 length] <= 0xA8)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v121 = NFLogGetLogger();
                if (v121)
                {
                  v122 = v121;
                  v123 = object_getClass(a1);
                  v124 = class_isMetaClass(v123);
                  v125 = object_getClassName(a1);
                  v126 = sel_getName("sendCreateKey:response:");
                  v245 = [v260 length];
                  v127 = 45;
                  if (v124)
                  {
                    v127 = 43;
                  }

                  v122(3, "%c[%{public}s %{public}s]:%i Invalid response size to create key: %lu bytes", v127, v125, v126, 230, v245);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v128 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
                {
                  v129 = object_getClass(v262);
                  if (class_isMetaClass(v129))
                  {
                    v130 = 43;
                  }

                  else
                  {
                    v130 = 45;
                  }

                  v131 = object_getClassName(v262);
                  v132 = sel_getName("sendCreateKey:response:");
                  v133 = [v260 length];
                  *buf = 67110146;
                  *&buf[4] = v130;
                  v294 = 2082;
                  v295 = v131;
                  v296 = 2082;
                  v297 = v132;
                  v298 = 1024;
                  v299 = 230;
                  v300 = 2048;
                  *v301 = v133;
                  _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid response size to create key: %lu bytes", buf, 0x2Cu);
                }

                v251 = [NSError alloc];
                v134 = [NSString stringWithUTF8String:"nfcd"];
                v304 = NSLocalizedDescriptionKey;
                v135 = [NSString stringWithUTF8String:"Command Error"];
                *buf = v135;
                v136 = [NSDictionary dictionaryWithObjects:buf forKeys:&v304 count:1];
                v137 = v134;
                v64 = [v251 initWithDomain:v134 code:16 userInfo:v136];

                v115 = 0;
                v44 = v260;
                goto LABEL_103;
              }

              v169 = v260;

              v64 = 0;
              v115 = v260;
LABEL_102:
              v7 = v249;
              goto LABEL_103;
            }
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v159 = NFLogGetLogger();
          if (v159)
          {
            v160 = v159;
            v161 = object_getClass(a1);
            v162 = class_isMetaClass(v161);
            v231 = object_getClassName(a1);
            v239 = sel_getName("sendCreateKey:response:");
            v163 = 45;
            if (v162)
            {
              v163 = 43;
            }

            v160(3, "%c[%{public}s %{public}s]:%i Command failed : %{public}@", v163, v231, v239, 223, v45);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v164 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
          {
            v165 = object_getClass(a1);
            if (class_isMetaClass(v165))
            {
              v166 = 43;
            }

            else
            {
              v166 = 45;
            }

            v167 = object_getClassName(a1);
            v168 = sel_getName("sendCreateKey:response:");
            *buf = 67110146;
            *&buf[4] = v166;
            v294 = 2082;
            v295 = v167;
            v296 = 2082;
            v297 = v168;
            v298 = 1024;
            v299 = 223;
            v300 = 2114;
            *v301 = v45;
            _os_log_impl(&_mh_execute_header, v164, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Command failed : %{public}@", buf, 0x2Cu);
          }

          v45 = v45;
          v115 = 0;
          v44 = v260;
          v64 = v45;
LABEL_103:

          v45 = v64;
          a1 = v262;
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v104 = NFLogGetLogger();
          if (v104)
          {
            v105 = v104;
            v106 = object_getClass(a1);
            v107 = class_isMetaClass(v106);
            v108 = object_getClassName(a1);
            v238 = sel_getName("sendCreateKey:response:");
            v109 = 45;
            if (v107)
            {
              v109 = 43;
            }

            v105(3, "%c[%{public}s %{public}s]:%i Failed to create key - no response", v109, v108, v238, 196);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v110 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
          {
            v111 = object_getClass(a1);
            if (class_isMetaClass(v111))
            {
              v112 = 43;
            }

            else
            {
              v112 = 45;
            }

            v259 = v112;
            v113 = object_getClassName(a1);
            v114 = sel_getName("sendCreateKey:response:");
            *buf = 67109890;
            *&buf[4] = v259;
            v294 = 2082;
            v295 = v113;
            v296 = 2082;
            v297 = v114;
            v298 = 1024;
            v299 = 196;
            _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to create key - no response", buf, 0x22u);
          }

          if (!v45)
          {
            v139 = [NSError alloc];
            v45 = [NSString stringWithUTF8String:"nfcd"];
            v305 = NSLocalizedDescriptionKey;
            v44 = [NSString stringWithUTF8String:"Command Error"];
            *buf = v44;
            v140 = [NSDictionary dictionaryWithObjects:buf forKeys:&v305 count:1];
            v64 = [v139 initWithDomain:v45 code:16 userInfo:v140];

LABEL_80:
            v115 = 0;
            goto LABEL_103;
          }

          v115 = 0;
        }

        v170 = v115;

        if (v45 || !v170)
        {
          v207 = v170;
          v284[0] = &off_100330A98;
          v283[0] = @"peerPaymentEnrollmentErrorStep";
          v283[1] = @"peerPaymentEnrollmentErrorCode";
          v208 = [NSNumber numberWithInteger:[(NSString *)v45 code]];
          v284[1] = v208;
          v283[2] = @"peerPaymentEnrollmentStartTime";
          v209 = [NSNumber numberWithUnsignedLongLong:v7];
          v284[2] = v209;
          v96 = [NSDictionary dictionaryWithObjects:v284 forKeys:v283 count:3];

          sub_1002087CC(NFPeerPaymentAndPurpleTrustCALogger, v96);
          v93 = v254;
          if (v45)
          {
            v13 = v45;
            v14 = v13;
          }

          else
          {
            v210 = [NSError alloc];
            [NSString stringWithUTF8String:"nfcd"];
            v212 = v211 = v15;
            v281 = NSLocalizedDescriptionKey;
            v213 = [NSString stringWithUTF8String:"Unknown Error"];
            v282 = v213;
            [NSDictionary dictionaryWithObjects:&v282 forKeys:&v281 count:1];
            v215 = v214 = v96;
            v14 = [v210 initWithDomain:v212 code:6 userInfo:v215];

            v96 = v214;
            v15 = v211;
            v93 = v254;
            v13 = 0;
          }

          v5 = v253;
          v98 = v207;
        }

        else
        {
          v247 = v170;
          v171 = [NFTLV TLVsWithData:v170];
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v172 = NFLogGetLogger();
          v173 = v172;
          v93 = v254;
          v252 = v171;
          if (v171)
          {
            v5 = v253;
            if (v172)
            {
              v174 = object_getClass(a1);
              v175 = class_isMetaClass(v174);
              v232 = object_getClassName(a1);
              v240 = sel_getName("performPeerPaymentEnrollment:response:");
              v176 = 45;
              if (v175)
              {
                v176 = 43;
              }

              v173(6, "%c[%{public}s %{public}s]:%i rTLVs = %{public}@", v176, v232, v240, 327, v171);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v177 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
            {
              v178 = object_getClass(a1);
              if (class_isMetaClass(v178))
              {
                v179 = 43;
              }

              else
              {
                v179 = 45;
              }

              v180 = object_getClassName(a1);
              v181 = sel_getName("performPeerPaymentEnrollment:response:");
              *buf = 67110146;
              *&buf[4] = v179;
              v294 = 2082;
              v295 = v180;
              v296 = 2082;
              v297 = v181;
              v298 = 1024;
              v299 = 327;
              v300 = 2114;
              *v301 = v252;
              _os_log_impl(&_mh_execute_header, v177, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i rTLVs = %{public}@", buf, 0x2Cu);
            }

            v182 = [[NSMutableArray alloc] initWithArray:v15];
            if (v182)
            {
              v261 = v15;
              v265 = 0u;
              v266 = 0u;
              v263 = 0u;
              v264 = 0u;
              v183 = v252;
              v184 = [v183 countByEnumeratingWithState:&v263 objects:v276 count:16];
              if (v184)
              {
                v185 = v184;
                v186 = *v264;
                do
                {
                  for (i = 0; i != v185; i = i + 1)
                  {
                    if (*v264 != v186)
                    {
                      objc_enumerationMutation(v183);
                    }

                    v188 = *(*(&v263 + 1) + 8 * i);
                    v189 = [v188 tag];
                    if (v189 - 65 <= 0x18 && ((1 << (v189 - 65)) & 0x1000007) != 0 || v189 == 32585 || v189 == 24375)
                    {
                      [v182 addObject:v188];
                    }
                  }

                  v185 = [v183 countByEnumeratingWithState:&v263 objects:v276 count:16];
                }

                while (v185);
              }

              v5 = v253;
              v93 = v254;
              v15 = v261;
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v193 = NFLogGetLogger();
            if (v193)
            {
              v194 = v193;
              v195 = object_getClass(v262);
              v196 = class_isMetaClass(v195);
              v233 = object_getClassName(v262);
              v241 = sel_getName("performPeerPaymentEnrollment:response:");
              v197 = 45;
              if (v196)
              {
                v197 = 43;
              }

              v5 = v253;
              v194(6, "%c[%{public}s %{public}s]:%i preSURFCertificate = %{public}@", v197, v233, v241, 348, v182);
            }

            v198 = v15;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v199 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
            {
              v200 = object_getClass(v262);
              if (class_isMetaClass(v200))
              {
                v201 = 43;
              }

              else
              {
                v201 = 45;
              }

              v202 = object_getClassName(v262);
              v203 = sel_getName("performPeerPaymentEnrollment:response:");
              *buf = 67110146;
              *&buf[4] = v201;
              v294 = 2082;
              v295 = v202;
              v296 = 2082;
              v297 = v203;
              v298 = 1024;
              v299 = 348;
              v300 = 2114;
              *v301 = v182;
              _os_log_impl(&_mh_execute_header, v199, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i preSURFCertificate = %{public}@", buf, 0x2Cu);
            }

            v204 = [NFTLV TLVWithTag:32545 children:v182];
            *v250 = [v204 asData];

            v274[0] = @"peerPaymentEnrollmentErrorStep";
            v274[1] = @"peerPaymentEnrollmentErrorCode";
            v275[0] = &off_100330AE0;
            v275[1] = &off_100330AF8;
            v274[2] = @"peerPaymentEnrollmentStartTime";
            v205 = [NSNumber numberWithUnsignedLongLong:v7];
            v275[2] = v205;
            v206 = [NSDictionary dictionaryWithObjects:v275 forKeys:v274 count:3];

            sub_1002087CC(NFPeerPaymentAndPurpleTrustCALogger, v206);
            v14 = 0;
          }

          else
          {
            if (v172)
            {
              v216 = object_getClass(a1);
              v217 = class_isMetaClass(v216);
              v218 = a1;
              v219 = object_getClassName(a1);
              v242 = sel_getName("performPeerPaymentEnrollment:response:");
              v220 = 45;
              if (v217)
              {
                v220 = 43;
              }

              v234 = v219;
              a1 = v218;
              v173(3, "%c[%{public}s %{public}s]:%i Failed to parse TLV from create key response", v220, v234, v242, 318);
            }

            v198 = v15;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v221 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v221, OS_LOG_TYPE_ERROR))
            {
              v222 = object_getClass(a1);
              if (class_isMetaClass(v222))
              {
                v223 = 43;
              }

              else
              {
                v223 = 45;
              }

              v224 = object_getClassName(a1);
              v225 = sel_getName("performPeerPaymentEnrollment:response:");
              *buf = 67109890;
              *&buf[4] = v223;
              v294 = 2082;
              v295 = v224;
              v296 = 2082;
              v297 = v225;
              v298 = 1024;
              v299 = 318;
              _os_log_impl(&_mh_execute_header, v221, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to parse TLV from create key response", buf, 0x22u);
            }

            v279[0] = @"peerPaymentEnrollmentErrorStep";
            v279[1] = @"peerPaymentEnrollmentErrorCode";
            v280[0] = &off_100330AB0;
            v280[1] = &off_100330AC8;
            v279[2] = @"peerPaymentEnrollmentStartTime";
            v226 = [NSNumber numberWithUnsignedLongLong:v7];
            v280[2] = v226;
            v182 = [NSDictionary dictionaryWithObjects:v280 forKeys:v279 count:3];

            sub_1002087CC(NFPeerPaymentAndPurpleTrustCALogger, v182);
            v227 = [NSError alloc];
            v206 = [NSString stringWithUTF8String:"nfcd"];
            v277 = NSLocalizedDescriptionKey;
            v228 = [NSString stringWithUTF8String:"Decoding Error"];
            v278 = v228;
            v229 = [NSDictionary dictionaryWithObjects:&v278 forKeys:&v277 count:1];
            v14 = [v227 initWithDomain:v206 code:23 userInfo:v229];

            v5 = v253;
            v93 = v254;
          }

          v13 = 0;
          v15 = v198;
          v98 = v247;
          v96 = v252;
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v81 = NFLogGetLogger();
        if (v81)
        {
          v82 = v81;
          v83 = object_getClass(a1);
          v84 = class_isMetaClass(v83);
          v85 = object_getClassName(a1);
          v237 = sel_getName("performPeerPaymentEnrollment:response:");
          v86 = 45;
          if (v84)
          {
            v86 = 43;
          }

          v82(3, "%c[%{public}s %{public}s]:%i Invalid length for auth token", v86, v85, v237, 282);
        }

        v258 = v15;
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
          v91 = sel_getName("performPeerPaymentEnrollment:response:");
          *buf = 67109890;
          *&buf[4] = v89;
          v294 = 2082;
          v295 = v90;
          v296 = 2082;
          v297 = v91;
          v298 = 1024;
          v299 = 282;
          _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid length for auth token", buf, 0x22u);
        }

        v287[0] = @"peerPaymentEnrollmentErrorStep";
        v287[1] = @"peerPaymentEnrollmentErrorCode";
        v288[0] = &off_100330A68;
        v288[1] = &off_100330A80;
        v287[2] = @"peerPaymentEnrollmentStartTime";
        v92 = [NSNumber numberWithUnsignedLongLong:v7];
        v288[2] = v92;
        v93 = [NSDictionary dictionaryWithObjects:v288 forKeys:v287 count:3];

        sub_1002087CC(NFPeerPaymentAndPurpleTrustCALogger, v93);
        v94 = [NSError alloc];
        v95 = [NSString stringWithUTF8String:"nfcd"];
        v285 = NSLocalizedDescriptionKey;
        v96 = [NSString stringWithUTF8String:"Invalid Parameter"];
        v286 = v96;
        v97 = [NSDictionary dictionaryWithObjects:&v286 forKeys:&v285 count:1];
        v98 = v95;
        v14 = [v94 initWithDomain:v95 code:10 userInfo:v97];

        v15 = v258;
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v65 = NFLogGetLogger();
      if (v65)
      {
        v66 = v65;
        v67 = object_getClass(a1);
        v68 = class_isMetaClass(v67);
        v69 = object_getClassName(a1);
        v70 = a1;
        v71 = sel_getName("performPeerPaymentEnrollment:response:");
        v244 = [v12 status];
        v236 = v71;
        a1 = v70;
        v72 = 45;
        if (v68)
        {
          v72 = 43;
        }

        v66(3, "%c[%{public}s %{public}s]:%i Failed to delete existing key : 0x%x / %{public}@", v72, v69, v236, 265, v244, v13);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v73 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        v74 = object_getClass(a1);
        if (class_isMetaClass(v74))
        {
          v75 = 43;
        }

        else
        {
          v75 = 45;
        }

        v76 = object_getClassName(a1);
        v77 = sel_getName("performPeerPaymentEnrollment:response:");
        v78 = [v12 status];
        *buf = 67110402;
        *&buf[4] = v75;
        v294 = 2082;
        v295 = v76;
        v296 = 2082;
        v297 = v77;
        v298 = 1024;
        v299 = 265;
        v300 = 1024;
        *v301 = v78;
        *&v301[4] = 2114;
        *&v301[6] = v13;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to delete existing key : 0x%x / %{public}@", buf, 0x32u);
      }

      v292[0] = &off_100330A50;
      v291[0] = @"peerPaymentEnrollmentErrorStep";
      v291[1] = @"peerPaymentEnrollmentErrorCode";
      v79 = [NSNumber numberWithInteger:[(NSString *)v13 code]];
      v292[1] = v79;
      v291[2] = @"peerPaymentEnrollmentStartTime";
      v80 = [NSNumber numberWithUnsignedLongLong:v7];
      v292[2] = v80;
      v15 = [NSDictionary dictionaryWithObjects:v292 forKeys:v291 count:3];

      sub_1002087CC(NFPeerPaymentAndPurpleTrustCALogger, v15);
      if (v13)
      {
        v13 = v13;
        v14 = v13;
      }

      else
      {
        v99 = [NSError alloc];
        v100 = [NSString stringWithUTF8String:"nfcd"];
        v289 = NSLocalizedDescriptionKey;
        [NSString stringWithUTF8String:"Command Error"];
        v102 = v101 = v15;
        v290 = v102;
        v103 = [NSDictionary dictionaryWithObjects:&v290 forKeys:&v289 count:1];
        v14 = [v99 initWithDomain:v100 code:16 userInfo:v103];

        v15 = v101;
        v13 = 0;
      }
    }

    goto LABEL_164;
  }

  v14 = 0;
LABEL_165:

  return v14;
}

void *sub_10008B5BC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v235 = 0;
  v232 = objc_opt_new();
  if (!v232)
  {
    if (a3)
    {
      v38 = [NSError alloc];
      v28 = [NSString stringWithUTF8String:"nfcd"];
      v272 = NSLocalizedDescriptionKey;
      v35 = [NSString stringWithUTF8String:"No resources"];
      v273 = v35;
      v39 = [NSDictionary dictionaryWithObjects:&v273 forKeys:&v272 count:1];
      *a3 = [v38 initWithDomain:v28 code:34 userInfo:v39];

      v232 = 0;
LABEL_101:
      a3 = 0;
      goto LABEL_102;
    }

    v232 = 0;
    goto LABEL_106;
  }

  v6 = [v5 appleTransactionHash];
  v7 = [NSData NF_dataWithHexString:v6];
  v8 = [v7 length];

  if (v8 != 32)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v41 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      v45 = v5;
      Name = sel_getName("createSURFSpecificInput:error:");
      v47 = a3;
      [v45 appleTransactionHash];
      v49 = v48 = a1;
      v50 = [NSData NF_dataWithHexString:v49];
      v226 = [v50 length];
      v217 = Name;
      v5 = v45;
      v51 = 45;
      if (isMetaClass)
      {
        v51 = 43;
      }

      v41(3, "%c[%{public}s %{public}s]:%i Invalid apple transaction hash length : %d", v51, ClassName, v217, 378, v226);

      a3 = v47;
      a1 = v48;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v52 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
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
      v56 = sel_getName("createSURFSpecificInput:error:");
      v57 = [v5 appleTransactionHash];
      v58 = [NSData NF_dataWithHexString:v57];
      *buf = 67110146;
      v263 = v54;
      v264 = 2082;
      v265 = v55;
      v266 = 2082;
      v267 = v56;
      v268 = 1024;
      v269 = 378;
      v270 = 1024;
      v271 = [v58 length];
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid apple transaction hash length : %d", buf, 0x28u);
    }

    if (!a3)
    {
      goto LABEL_106;
    }

    v59 = [NSError alloc];
    v28 = [NSString stringWithUTF8String:"nfcd"];
    v260 = NSLocalizedDescriptionKey;
    v35 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v261 = v35;
    v60 = &v261;
    v61 = &v260;
    goto LABEL_40;
  }

  v231 = a1;
  v9 = [v5 publicTransactionHash];
  v10 = [NSData NF_dataWithHexString:v9];
  v11 = [v10 length];

  if (v11 != 32)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v62 = NFLogGetLogger();
    v63 = v231;
    if (v62)
    {
      v64 = v62;
      v65 = object_getClass(v231);
      v66 = class_isMetaClass(v65);
      v67 = object_getClassName(v231);
      v68 = sel_getName("createSURFSpecificInput:error:");
      v69 = v5;
      [v5 publicTransactionHash];
      v71 = v70 = a3;
      v72 = [NSData NF_dataWithHexString:v71];
      v227 = [v72 length];
      v73 = !v66;
      v63 = v231;
      v74 = 45;
      if (!v73)
      {
        v74 = 43;
      }

      v64(3, "%c[%{public}s %{public}s]:%i Invalid public transaction hash length : %d", v74, v67, v68, 383, v227);

      v5 = v69;
      a3 = v70;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v75 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      v76 = object_getClass(v63);
      if (class_isMetaClass(v76))
      {
        v77 = 43;
      }

      else
      {
        v77 = 45;
      }

      v78 = object_getClassName(v63);
      v79 = sel_getName("createSURFSpecificInput:error:");
      v80 = [v5 publicTransactionHash];
      v81 = [NSData NF_dataWithHexString:v80];
      *buf = 67110146;
      v263 = v77;
      v264 = 2082;
      v265 = v78;
      v266 = 2082;
      v267 = v79;
      v268 = 1024;
      v269 = 383;
      v270 = 1024;
      v271 = [v81 length];
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid public transaction hash length : %d", buf, 0x28u);
    }

    if (!a3)
    {
      goto LABEL_106;
    }

    v59 = [NSError alloc];
    v28 = [NSString stringWithUTF8String:"nfcd"];
    v258 = NSLocalizedDescriptionKey;
    v35 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v259 = v35;
    v60 = &v259;
    v61 = &v258;
LABEL_40:
    v82 = [NSDictionary dictionaryWithObjects:v60 forKeys:v61 count:1];
    *a3 = [v59 initWithDomain:v28 code:10 userInfo:v82];
LABEL_100:

    goto LABEL_101;
  }

  v12 = a3;
  v13 = [v5 appleTransactionHash];
  v14 = [NSData NF_dataWithHexString:v13];
  v15 = [NFTLV TLVWithTag:145 value:v14];

  if (!v15)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v83 = NFLogGetLogger();
    if (v83)
    {
      v84 = v83;
      v85 = object_getClass(v231);
      v86 = class_isMetaClass(v85);
      v87 = object_getClassName(v231);
      v218 = sel_getName("createSURFSpecificInput:error:");
      v88 = 45;
      if (v86)
      {
        v88 = 43;
      }

      v84(3, "%c[%{public}s %{public}s]:%i Invalid parameter", v88, v87, v218, 389);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v89 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      v90 = object_getClass(v231);
      if (class_isMetaClass(v90))
      {
        v91 = 43;
      }

      else
      {
        v91 = 45;
      }

      *buf = 67109890;
      v263 = v91;
      v264 = 2082;
      v265 = object_getClassName(v231);
      v266 = 2082;
      v267 = sel_getName("createSURFSpecificInput:error:");
      v268 = 1024;
      v269 = 389;
      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid parameter", buf, 0x22u);
    }

    if (!a3)
    {
      goto LABEL_105;
    }

    v92 = [NSError alloc];
    v28 = [NSString stringWithUTF8String:"nfcd"];
    v256 = NSLocalizedDescriptionKey;
    v35 = [NSString stringWithUTF8String:"No resources"];
    v257 = v35;
    v93 = &v257;
    v94 = &v256;
    goto LABEL_64;
  }

  [v232 addObject:v15];
  v16 = [v5 publicTransactionHash];
  [NSData NF_dataWithHexString:v16];
  v18 = v17 = v5;
  v19 = [NFTLV TLVWithTag:146 value:v18];

  if (!v19)
  {
    v5 = v17;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v95 = NFLogGetLogger();
    if (v95)
    {
      v96 = v95;
      v97 = object_getClass(v231);
      v98 = class_isMetaClass(v97);
      v99 = object_getClassName(v231);
      v219 = sel_getName("createSURFSpecificInput:error:");
      v100 = 45;
      if (v98)
      {
        v100 = 43;
      }

      v96(3, "%c[%{public}s %{public}s]:%i Invalid parameter", v100, v99, v219, 392);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v101 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      v102 = object_getClass(v231);
      if (class_isMetaClass(v102))
      {
        v103 = 43;
      }

      else
      {
        v103 = 45;
      }

      *buf = 67109890;
      v263 = v103;
      v264 = 2082;
      v265 = object_getClassName(v231);
      v266 = 2082;
      v267 = sel_getName("createSURFSpecificInput:error:");
      v268 = 1024;
      v269 = 392;
      _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid parameter", buf, 0x22u);
    }

    if (!a3)
    {
      goto LABEL_105;
    }

    v92 = [NSError alloc];
    v28 = [NSString stringWithUTF8String:"nfcd"];
    v254 = NSLocalizedDescriptionKey;
    v35 = [NSString stringWithUTF8String:"No resources"];
    v255 = v35;
    v93 = &v255;
    v94 = &v254;
LABEL_64:
    v82 = [NSDictionary dictionaryWithObjects:v93 forKeys:v94 count:1];
    v104 = v92;
    v105 = v28;
    v106 = 34;
LABEL_99:
    *a3 = [v104 initWithDomain:v105 code:v106 userInfo:v82];
    goto LABEL_100;
  }

  [v232 addObject:v19];
  v20 = [v17 transactionCurrency];
  v21 = sub_1001D88E0(NFECommercePaymentRequestEncoder, v20, &v235);

  if (!v21)
  {
    v5 = v17;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v107 = NFLogGetLogger();
    if (v107)
    {
      v108 = v107;
      v109 = object_getClass(v231);
      v110 = class_isMetaClass(v109);
      v111 = object_getClassName(v231);
      v220 = sel_getName("createSURFSpecificInput:error:");
      v112 = 45;
      if (v110)
      {
        v112 = 43;
      }

      v108(3, "%c[%{public}s %{public}s]:%i Invalid parameter", v112, v111, v220, 395);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v113 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
    {
      v114 = object_getClass(v231);
      if (class_isMetaClass(v114))
      {
        v115 = 43;
      }

      else
      {
        v115 = 45;
      }

      v116 = object_getClassName(v231);
      v117 = sel_getName("createSURFSpecificInput:error:");
      *buf = 67109890;
      v263 = v115;
      v264 = 2082;
      v265 = v116;
      v266 = 2082;
      v267 = v117;
      v268 = 1024;
      v269 = 395;
      _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid parameter", buf, 0x22u);
    }

    if (a3)
    {
      v118 = [NSError alloc];
      v28 = [NSString stringWithUTF8String:"nfcd"];
      v252 = NSLocalizedDescriptionKey;
      v35 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v253 = v35;
      v119 = &v253;
      v120 = &v252;
LABEL_98:
      v82 = [NSDictionary dictionaryWithObjects:v119 forKeys:v120 count:1];
      v104 = v118;
      v105 = v28;
      v106 = 10;
      goto LABEL_99;
    }

LABEL_105:
    a3 = 0;
LABEL_106:
    v34 = 0;
    goto LABEL_107;
  }

  [v232 addObject:v21];
  v22 = [v17 transactionAmount];
  v23 = sub_1001D8E10(NFECommercePaymentRequestEncoder, v22, v235);

  if (!v23)
  {
    v5 = v17;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v121 = NFLogGetLogger();
    if (v121)
    {
      v122 = v121;
      v123 = object_getClass(v231);
      v124 = class_isMetaClass(v123);
      v125 = object_getClassName(v231);
      v221 = sel_getName("createSURFSpecificInput:error:");
      v126 = 45;
      if (v124)
      {
        v126 = 43;
      }

      v122(3, "%c[%{public}s %{public}s]:%i Invalid parameter", v126, v125, v221, 398);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v127 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
    {
      v128 = object_getClass(v231);
      if (class_isMetaClass(v128))
      {
        v129 = 43;
      }

      else
      {
        v129 = 45;
      }

      v130 = object_getClassName(v231);
      v131 = sel_getName("createSURFSpecificInput:error:");
      *buf = 67109890;
      v263 = v129;
      v264 = 2082;
      v265 = v130;
      v266 = 2082;
      v267 = v131;
      v268 = 1024;
      v269 = 398;
      _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid parameter", buf, 0x22u);
    }

    if (a3)
    {
      v118 = [NSError alloc];
      v28 = [NSString stringWithUTF8String:"nfcd"];
      v250 = NSLocalizedDescriptionKey;
      v35 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v251 = v35;
      v119 = &v251;
      v120 = &v250;
      goto LABEL_98;
    }

    goto LABEL_105;
  }

  [v232 addObject:v23];
  v24 = [v17 transactionDate];
  v25 = sub_1001D8074(NFECommercePaymentRequestEncoder, v24);

  if (!v25)
  {
    v5 = v17;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v132 = NFLogGetLogger();
    if (v132)
    {
      v133 = v132;
      v134 = object_getClass(v231);
      v135 = class_isMetaClass(v134);
      v136 = object_getClassName(v231);
      v222 = sel_getName("createSURFSpecificInput:error:");
      v137 = 45;
      if (v135)
      {
        v137 = 43;
      }

      v133(3, "%c[%{public}s %{public}s]:%i Invalid parameter", v137, v136, v222, 401);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v138 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
    {
      v139 = object_getClass(v231);
      if (class_isMetaClass(v139))
      {
        v140 = 43;
      }

      else
      {
        v140 = 45;
      }

      v141 = object_getClassName(v231);
      v142 = sel_getName("createSURFSpecificInput:error:");
      *buf = 67109890;
      v263 = v140;
      v264 = 2082;
      v265 = v141;
      v266 = 2082;
      v267 = v142;
      v268 = 1024;
      v269 = 401;
      _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid parameter", buf, 0x22u);
    }

    if (a3)
    {
      v118 = [NSError alloc];
      v28 = [NSString stringWithUTF8String:"nfcd"];
      v248 = NSLocalizedDescriptionKey;
      v35 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v249 = v35;
      v119 = &v249;
      v120 = &v248;
      goto LABEL_98;
    }

    goto LABEL_105;
  }

  v230 = a3;
  [v232 addObject:v25];
  v26 = [v17 transactionCountry];
  a3 = sub_1001D8388(NFECommercePaymentRequestEncoder, v26);

  v5 = v17;
  if (a3)
  {
    [v232 addObject:a3];
    v27 = [NFTLV TLVWithTag:148 children:v232];
    if (v27)
    {
      v28 = v27;
      v229 = v17;
      v29 = objc_opt_new();

      v234 = 0;
      v30 = [[NSData alloc] initWithBytes:&v234 length:1];
      v31 = [NFTLV TLVWithTag:144 value:v30];

      if (!v31)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v159 = NFLogGetLogger();
        v34 = v12;
        if (v159)
        {
          v160 = v159;
          v161 = object_getClass(v231);
          v162 = class_isMetaClass(v161);
          v163 = object_getClassName(v231);
          v224 = sel_getName("createSURFSpecificInput:error:");
          v164 = 45;
          if (v162)
          {
            v164 = 43;
          }

          v160(3, "%c[%{public}s %{public}s]:%i Invalid parameter", v164, v163, v224, 418);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v165 = NFSharedLogGetLogger();
        v5 = v17;
        if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
        {
          v166 = object_getClass(v231);
          if (class_isMetaClass(v166))
          {
            v167 = 43;
          }

          else
          {
            v167 = 45;
          }

          v168 = object_getClassName(v231);
          v169 = sel_getName("createSURFSpecificInput:error:");
          *buf = 67109890;
          v263 = v167;
          v264 = 2082;
          v265 = v168;
          v266 = 2082;
          v267 = v169;
          v268 = 1024;
          v269 = 418;
          _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid parameter", buf, 0x22u);
        }

        if (!v230)
        {
          a3 = 0;
          v232 = v29;
          goto LABEL_104;
        }

        v170 = [NSError alloc];
        v35 = [NSString stringWithUTF8String:"nfcd"];
        v242 = NSLocalizedDescriptionKey;
        v171 = [NSString stringWithUTF8String:"No resources"];
        v243 = v171;
        v172 = [NSDictionary dictionaryWithObjects:&v243 forKeys:&v242 count:1];
        *v230 = [v170 initWithDomain:v35 code:34 userInfo:v172];

        a3 = 0;
        v34 = 0;
LABEL_134:
        v232 = v29;
        goto LABEL_103;
      }

      [v29 addObject:v31];
      v32 = [v17 nonce];
      v33 = [v32 length];

      v34 = v230;
      if (v33 == 4)
      {
        v233 = 0;
        v35 = [[NSMutableData alloc] initWithBytes:&v233 length:4];
        v36 = [v17 nonce];
        [v35 appendData:v36];

        v37 = v231;
        if (v35)
        {
          a3 = [NFTLV TLVWithTag:145 value:v35];

          if (a3)
          {
            [v29 addObject:a3];
            [v29 addObject:v28];
            v34 = [NFTLV TLVWithTag:32525 children:v29];
            v232 = v29;
LABEL_153:
            v5 = v229;
            goto LABEL_103;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v199 = NFLogGetLogger();
          v5 = v17;
          if (v199)
          {
            v200 = v199;
            v201 = object_getClass(v231);
            v202 = class_isMetaClass(v201);
            v203 = v29;
            v204 = object_getClassName(v231);
            v225 = sel_getName("createSURFSpecificInput:error:");
            v73 = !v202;
            v37 = v231;
            v205 = 45;
            if (!v73)
            {
              v205 = 43;
            }

            v216 = v204;
            v29 = v203;
            v200(3, "%c[%{public}s %{public}s]:%i Invalid parameter", v205, v216, v225, 435);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v206 = NFSharedLogGetLogger();
          v34 = v230;
          if (os_log_type_enabled(v206, OS_LOG_TYPE_ERROR))
          {
            v207 = object_getClass(v37);
            if (class_isMetaClass(v207))
            {
              v208 = 43;
            }

            else
            {
              v208 = 45;
            }

            v209 = object_getClassName(v37);
            v210 = sel_getName("createSURFSpecificInput:error:");
            *buf = 67109890;
            v263 = v208;
            v264 = 2082;
            v265 = v209;
            v266 = 2082;
            v267 = v210;
            v268 = 1024;
            v269 = 435;
            _os_log_impl(&_mh_execute_header, v206, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid parameter", buf, 0x22u);
          }

          if (v230)
          {
            v211 = [NSError alloc];
            v212 = [NSString stringWithUTF8String:"nfcd"];
            v236 = NSLocalizedDescriptionKey;
            v213 = [NSString stringWithUTF8String:"No resources"];
            v237 = v213;
            [NSDictionary dictionaryWithObjects:&v237 forKeys:&v236 count:1];
            v215 = v214 = v29;
            *v230 = [v211 initWithDomain:v212 code:34 userInfo:v215];

            a3 = 0;
            v34 = 0;
            v232 = v214;
            goto LABEL_103;
          }

          a3 = 0;
          goto LABEL_134;
        }

        if (v230)
        {
          v194 = [NSError alloc];
          v195 = [NSString stringWithUTF8String:"nfcd"];
          v238 = NSLocalizedDescriptionKey;
          v196 = [NSString stringWithUTF8String:"No resources"];
          v239 = v196;
          [NSDictionary dictionaryWithObjects:&v239 forKeys:&v238 count:1];
          v198 = v197 = v29;
          *v230 = [v194 initWithDomain:v195 code:34 userInfo:v198];

          v35 = 0;
          v34 = 0;
          v232 = v197;
          goto LABEL_152;
        }

        v35 = 0;
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v173 = NFLogGetLogger();
        v174 = v231;
        if (v173)
        {
          v175 = v173;
          v176 = object_getClass(v231);
          v177 = class_isMetaClass(v176);
          v178 = object_getClassName(v231);
          v179 = sel_getName("createSURFSpecificInput:error:");
          [v17 nonce];
          v181 = v180 = v29;
          v228 = [v181 length];
          v34 = v230;
          v73 = !v177;
          v174 = v231;
          v182 = 45;
          if (!v73)
          {
            v182 = 43;
          }

          v175(3, "%c[%{public}s %{public}s]:%i Invalid nonce length : %d", v182, v178, v179, 422, v228);

          v29 = v180;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v183 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v183, OS_LOG_TYPE_ERROR))
        {
          v184 = object_getClass(v174);
          if (class_isMetaClass(v184))
          {
            v185 = 43;
          }

          else
          {
            v185 = 45;
          }

          v186 = object_getClassName(v174);
          v187 = sel_getName("createSURFSpecificInput:error:");
          [v229 nonce];
          v189 = v188 = v29;
          v190 = [v189 length];
          *buf = 67110146;
          v263 = v185;
          v264 = 2082;
          v265 = v186;
          v266 = 2082;
          v267 = v187;
          v268 = 1024;
          v269 = 422;
          v270 = 1024;
          v271 = v190;
          _os_log_impl(&_mh_execute_header, v183, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid nonce length : %d", buf, 0x28u);

          v29 = v188;
        }

        if (!v34)
        {
          v232 = v29;
          a3 = v31;
          v5 = v229;
          goto LABEL_104;
        }

        v191 = [NSError alloc];
        v35 = [NSString stringWithUTF8String:"nfcd"];
        v240 = NSLocalizedDescriptionKey;
        v192 = [NSString stringWithUTF8String:"Invalid Parameter"];
        v241 = v192;
        v193 = [NSDictionary dictionaryWithObjects:&v241 forKeys:&v240 count:1];
        *v34 = [v191 initWithDomain:v35 code:10 userInfo:v193];

        v34 = 0;
      }

      v232 = v29;
LABEL_152:
      a3 = v31;
      goto LABEL_153;
    }

    v34 = v12;
    if (!v12)
    {
      v28 = 0;
      goto LABEL_104;
    }

    v156 = [NSError alloc];
    v35 = [NSString stringWithUTF8String:"nfcd"];
    v244 = NSLocalizedDescriptionKey;
    v157 = [NSString stringWithUTF8String:"No resources"];
    v245 = v157;
    v158 = [NSDictionary dictionaryWithObjects:&v245 forKeys:&v244 count:1];
    *v230 = [v156 initWithDomain:v35 code:34 userInfo:v158];

    v28 = 0;
LABEL_102:
    v34 = 0;
LABEL_103:

LABEL_104:
    goto LABEL_107;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v144 = NFLogGetLogger();
  if (v144)
  {
    v145 = v144;
    v146 = object_getClass(v231);
    v147 = class_isMetaClass(v146);
    v148 = object_getClassName(v231);
    v223 = sel_getName("createSURFSpecificInput:error:");
    v149 = 45;
    if (v147)
    {
      v149 = 43;
    }

    v145(3, "%c[%{public}s %{public}s]:%i Invalid parameter", v149, v148, v223, 404);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v150 = NFSharedLogGetLogger();
  v34 = v12;
  if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
  {
    v151 = object_getClass(v231);
    if (class_isMetaClass(v151))
    {
      v152 = 43;
    }

    else
    {
      v152 = 45;
    }

    v153 = object_getClassName(v231);
    v154 = sel_getName("createSURFSpecificInput:error:");
    *buf = 67109890;
    v263 = v152;
    v264 = 2082;
    v265 = v153;
    v266 = 2082;
    v267 = v154;
    v268 = 1024;
    v269 = 404;
    _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid parameter", buf, 0x22u);
  }

  if (v230)
  {
    v155 = [NSError alloc];
    v28 = [NSString stringWithUTF8String:"nfcd"];
    v246 = NSLocalizedDescriptionKey;
    v35 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v247 = v35;
    v82 = [NSDictionary dictionaryWithObjects:&v247 forKeys:&v246 count:1];
    *v230 = [v155 initWithDomain:v28 code:10 userInfo:v82];
    goto LABEL_100;
  }

  a3 = 0;
LABEL_107:

  return v34;
}

NSObject *sub_10008D160(void *a1, void *a2, unsigned int a3, void *a4, void *a5, void *a6, void *a7, NSObject *a8)
{
  v15 = a2;
  v193 = a4;
  v191 = a5;
  v16 = a6;
  v17 = a7;
  v194 = objc_opt_new();
  v18 = objc_opt_new();
  v190 = v15;
  v192 = v16;
  if (v18)
  {
    v19 = v18;
    v186 = a3;
    v189 = v17;
    v195 = byte_10035D990;
    v20 = [[NSData alloc] initWithBytes:&v195 length:1];
    v21 = [NFTLV TLVWithTag:196 value:v20];
    [v19 addObject:v21];

    v22 = [v15 transferRequest];
    v187 = a8;
    v188 = a1;
    v23 = sub_10008B5BC(a1, v22, a8);

    if (!v23)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v51 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("getSEPPKSURFPaymentRequest:uid:authorization:hostChallenge:cardChallenge:cryptogram:error:");
        v55 = 45;
        if (isMetaClass)
        {
          v55 = 43;
        }

        v51(3, "%c[%{public}s %{public}s]:%i Failed to create SURF specific input", v55, ClassName, Name, 515);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v56 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v57 = object_getClass(a1);
        if (class_isMetaClass(v57))
        {
          v58 = 43;
        }

        else
        {
          v58 = 45;
        }

        v59 = object_getClassName(a1);
        v60 = sel_getName("getSEPPKSURFPaymentRequest:uid:authorization:hostChallenge:cardChallenge:cryptogram:error:");
        *buf = 67109890;
        *&buf[4] = v58;
        v201 = 2082;
        v202 = v59;
        v203 = 2082;
        v204 = v60;
        v205 = 1024;
        v206 = 515;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to create SURF specific input", buf, 0x22u);
      }

      a8 = 0;
      v49 = 0;
      v46 = v19;
      v35 = v193;
      goto LABEL_120;
    }

    [v19 addObject:v23];
    v24 = [NFTLV TLVWithTag:239 children:v19];

    v25 = objc_opt_new();
    v26 = [[NSData alloc] initWithBytes:&unk_100296D48 length:12];
    v27 = [NFTLV TLVWithTag:79 value:v26];
    [v25 addObject:v27];

    [v25 addObject:v24];
    v185 = v25;
    v28 = [NFTLV TLVWithTag:228 children:v25];

    v29 = [v28 asData];
    [v194 appendData:v29];

    v30 = [v15 topUpRequest];

    if (v30)
    {
      v31 = [v15 topUpRequest];
      v32 = sub_1001D99C8(NFECommercePaymentRequestEncoder, v31, 0, a8);
      if (v32)
      {
        v33 = [NFTLV TLVWithTag:230 value:v32];
        if (v33)
        {
          v34 = v33;
          a8 = v34;
          v35 = v193;
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v71 = NFLogGetLogger();
          if (v71)
          {
            v72 = v71;
            v73 = object_getClass(v188);
            v74 = class_isMetaClass(v73);
            v75 = object_getClassName(v188);
            v176 = sel_getName("createOsloSpecificInput:error:");
            v76 = 45;
            if (v74)
            {
              v76 = 43;
            }

            v72(3, "%c[%{public}s %{public}s]:%i Failed to create TLV.", v76, v75, v176, 455);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v77 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
          {
            v78 = object_getClass(v188);
            if (class_isMetaClass(v78))
            {
              v79 = 43;
            }

            else
            {
              v79 = 45;
            }

            v80 = object_getClassName(v188);
            v81 = sel_getName("createOsloSpecificInput:error:");
            *buf = 67109890;
            *&buf[4] = v79;
            v201 = 2082;
            v202 = v80;
            v203 = 2082;
            v204 = v81;
            v205 = 1024;
            v206 = 455;
            _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to create TLV.", buf, 0x22u);
          }

          if (a8)
          {
            v82 = [NSError alloc];
            v83 = [NSString stringWithUTF8String:"nfcd"];
            v213 = NSLocalizedDescriptionKey;
            v84 = [NSString stringWithUTF8String:"No resources"];
            *buf = v84;
            v85 = [NSDictionary dictionaryWithObjects:buf forKeys:&v213 count:1];
            a8->isa = [v82 initWithDomain:v83 code:34 userInfo:v85];

            v35 = v193;
            v34 = 0;
            a8 = 0;
          }

          else
          {
            v34 = 0;
            v35 = v193;
          }
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v61 = NFLogGetLogger();
        v35 = v193;
        if (v61)
        {
          v62 = v61;
          v63 = object_getClass(v188);
          v64 = class_isMetaClass(v63);
          v65 = object_getClassName(v188);
          v175 = sel_getName("createOsloSpecificInput:error:");
          v66 = 45;
          if (v64)
          {
            v66 = 43;
          }

          v62(3, "%c[%{public}s %{public}s]:%i Failed to create TLV from input.", v66, v65, v175, 449);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v34 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v67 = object_getClass(v188);
          if (class_isMetaClass(v67))
          {
            v68 = 43;
          }

          else
          {
            v68 = 45;
          }

          v69 = object_getClassName(v188);
          v70 = sel_getName("createOsloSpecificInput:error:");
          *buf = 67109890;
          *&buf[4] = v68;
          v201 = 2082;
          v202 = v69;
          v203 = 2082;
          v204 = v70;
          v205 = 1024;
          v206 = 449;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to create TLV from input.", buf, 0x22u);
        }

        a8 = 0;
      }

      if (!a8)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v97 = NFLogGetLogger();
        v17 = v189;
        if (v97)
        {
          v98 = v97;
          v99 = object_getClass(v188);
          v100 = class_isMetaClass(v99);
          v101 = object_getClassName(v188);
          v177 = sel_getName("getSEPPKSURFPaymentRequest:uid:authorization:hostChallenge:cardChallenge:cryptogram:error:");
          v102 = 45;
          if (v100)
          {
            v102 = 43;
          }

          v98(3, "%c[%{public}s %{public}s]:%i Failed to create Oslo specific input", v102, v101, v177, 534);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v56 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v103 = object_getClass(v188);
          if (class_isMetaClass(v103))
          {
            v104 = 43;
          }

          else
          {
            v104 = 45;
          }

          v105 = object_getClassName(v188);
          v106 = sel_getName("getSEPPKSURFPaymentRequest:uid:authorization:hostChallenge:cardChallenge:cryptogram:error:");
          *buf = 67109890;
          *&buf[4] = v104;
          v201 = 2082;
          v202 = v105;
          v203 = 2082;
          v204 = v106;
          v205 = 1024;
          v206 = 534;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to create Oslo specific input", buf, 0x22u);
        }

        a8 = 0;
        goto LABEL_79;
      }

      v86 = [a8 asData];
      [v194 appendData:v86];

      v17 = v189;
    }

    else
    {
      a8 = v28;
      v35 = v193;
    }

    kdebug_trace();
    v87 = NFSharedSignpostLog();
    if (os_signpost_enabled(v87))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v87, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "acmGetOlsoType in", buf, 2u);
    }

    v88 = sub_10022B9AC(NFSSEWrapper, v35);
    kdebug_trace();
    v89 = NFSharedSignpostLog();
    if (os_signpost_enabled(v89))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v89, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "acmGetOlsoType out", buf, 2u);
    }

    v90 = v88 == 4;
    v91 = 1;
    if (v88 == 2 || v88 == 4 || (v91 = 0, v90 = v88 == 3, v88 == 1) || v88 == 3)
    {
LABEL_60:
      v184 = v90;
      v92 = v194;
      v93 = [v92 length];
      v197 = 849024;
      v196 = 0;
      v94 = objc_opt_new();
      [v94 appendBytes:&v197 length:4];
      if (v93 > 0xFF)
      {
        if (v93 >> 16)
        {
          if (v187)
          {
            v183 = v91;
            v107 = [NSError alloc];
            v108 = [NSString stringWithUTF8String:"nfcd"];
            v213 = NSLocalizedDescriptionKey;
            v109 = [NSString stringWithUTF8String:"Invalid Parameter"];
            *buf = v109;
            v110 = [NSDictionary dictionaryWithObjects:buf forKeys:&v213 count:1];
            v111 = v107;
            v91 = v183;
            v187->isa = [v111 initWithDomain:v108 code:10 userInfo:v110];
          }

          v56 = 0;
LABEL_83:

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v112 = NFLogGetLogger();
          v113 = v112;
          if (v56)
          {
            v114 = v91;
            if (v112)
            {
              v115 = object_getClass(v188);
              v116 = class_isMetaClass(v115);
              v170 = object_getClassName(v188);
              v178 = sel_getName("getSEPPKSURFPaymentRequest:uid:authorization:hostChallenge:cardChallenge:cryptogram:error:");
              v117 = 45;
              if (v116)
              {
                v117 = 43;
              }

              v113(6, "%c[%{public}s %{public}s]:%i Sending data to be signed : %{public}@", v117, v170, v178, 569, v56);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v118 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
            {
              v119 = object_getClass(v188);
              if (class_isMetaClass(v119))
              {
                v120 = 43;
              }

              else
              {
                v120 = 45;
              }

              v121 = object_getClassName(v188);
              v122 = sel_getName("getSEPPKSURFPaymentRequest:uid:authorization:hostChallenge:cardChallenge:cryptogram:error:");
              *buf = 67110146;
              *&buf[4] = v120;
              v201 = 2082;
              v202 = v121;
              v203 = 2082;
              v204 = v122;
              v205 = 1024;
              v206 = 569;
              v207 = 2114;
              v208 = v56;
              _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Sending data to be signed : %{public}@", buf, 0x2Cu);
            }

            kdebug_trace();
            v123 = NFSharedSignpostLog();
            if (os_signpost_enabled(v123))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v123, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "authorizeAndSign in", buf, 2u);
            }

            v124 = [v188 serialNumberAsData];
            v17 = v189;
            v49 = sub_10022C208(NFSSEWrapper, 3, v56, v186, v193, v124, v114, v184, v191, v192, v189, 0, 0, 0, 0);

            kdebug_trace();
            v125 = NFSharedSignpostLog();
            if (os_signpost_enabled(v125))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v125, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "authorizeAndSign out", buf, 2u);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v126 = NFLogGetLogger();
            v127 = v126;
            if (!v49)
            {
              if (v126)
              {
                v145 = object_getClass(v188);
                v146 = class_isMetaClass(v145);
                v147 = object_getClassName(v188);
                v181 = sel_getName("getSEPPKSURFPaymentRequest:uid:authorization:hostChallenge:cardChallenge:cryptogram:error:");
                v148 = 45;
                if (v146)
                {
                  v148 = 43;
                }

                v127(3, "%c[%{public}s %{public}s]:%i Failed to get signed data.", v148, v147, v181, 592);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v149 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
              {
                v150 = object_getClass(v188);
                if (class_isMetaClass(v150))
                {
                  v151 = 43;
                }

                else
                {
                  v151 = 45;
                }

                v152 = object_getClassName(v188);
                v153 = sel_getName("getSEPPKSURFPaymentRequest:uid:authorization:hostChallenge:cardChallenge:cryptogram:error:");
                *buf = 67109890;
                *&buf[4] = v151;
                v201 = 2082;
                v202 = v152;
                v203 = 2082;
                v204 = v153;
                v205 = 1024;
                v206 = 592;
                _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get signed data.", buf, 0x22u);
              }

              v35 = v193;
              if (!v187)
              {
                v49 = 0;
                v46 = v185;
                goto LABEL_120;
              }

              v154 = [NSError alloc];
              v131 = [NSString stringWithUTF8String:"nfcd"];
              v198 = NSLocalizedDescriptionKey;
              v155 = [NSString stringWithUTF8String:"Unexpected Result"];
              v199 = v155;
              v156 = [NSDictionary dictionaryWithObjects:&v199 forKeys:&v198 count:1];
              v187->isa = [v154 initWithDomain:v131 code:13 userInfo:v156];

              v49 = 0;
              v46 = v185;
              goto LABEL_119;
            }

            if (v126)
            {
              v128 = object_getClass(v188);
              v129 = class_isMetaClass(v128);
              v171 = object_getClassName(v188);
              v179 = sel_getName("getSEPPKSURFPaymentRequest:uid:authorization:hostChallenge:cardChallenge:cryptogram:error:");
              v130 = 45;
              if (v129)
              {
                v130 = 43;
              }

              v127(6, "%c[%{public}s %{public}s]:%i Signed data is %{public}@.", v130, v171, v179, 595, v49);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v131 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
            {
              v132 = object_getClass(v188);
              if (class_isMetaClass(v132))
              {
                v133 = 43;
              }

              else
              {
                v133 = 45;
              }

              v134 = object_getClassName(v188);
              v135 = sel_getName("getSEPPKSURFPaymentRequest:uid:authorization:hostChallenge:cardChallenge:cryptogram:error:");
              *buf = 67110146;
              *&buf[4] = v133;
              v201 = 2082;
              v202 = v134;
              v203 = 2082;
              v204 = v135;
              v205 = 1024;
              v206 = 595;
              v207 = 2114;
              v208 = v49;
              _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Signed data is %{public}@.", buf, 0x2Cu);
            }

            v35 = v193;
          }

          else
          {
            if (v112)
            {
              v136 = object_getClass(v188);
              v137 = class_isMetaClass(v136);
              v138 = object_getClassName(v188);
              v180 = sel_getName("getSEPPKSURFPaymentRequest:uid:authorization:hostChallenge:cardChallenge:cryptogram:error:");
              v139 = 45;
              if (v137)
              {
                v139 = 43;
              }

              v113(3, "%c[%{public}s %{public}s]:%i Failed to create APDU", v139, v138, v180, 565);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v131 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
            {
              v140 = object_getClass(v188);
              if (class_isMetaClass(v140))
              {
                v141 = 43;
              }

              else
              {
                v141 = 45;
              }

              v142 = object_getClassName(v188);
              v143 = sel_getName("getSEPPKSURFPaymentRequest:uid:authorization:hostChallenge:cardChallenge:cryptogram:error:");
              *buf = 67109890;
              *&buf[4] = v141;
              v201 = 2082;
              v202 = v142;
              v203 = 2082;
              v204 = v143;
              v205 = 1024;
              v206 = 565;
              _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to create APDU", buf, 0x22u);
            }

            v49 = 0;
            v35 = v193;
            v17 = v189;
          }

          v46 = v185;
LABEL_119:

          goto LABEL_120;
        }

        buf[0] = 0;
        buf[1] = BYTE1(v93);
        buf[2] = v93;
        v95 = v94;
        v96 = 3;
      }

      else
      {
        buf[0] = v93;
        v95 = v94;
        v96 = 1;
      }

      [v95 appendBytes:buf length:v96];
      [v94 appendData:v92];
      [v94 appendBytes:&v196 length:1];
      v56 = v94;
      goto LABEL_83;
    }

    if (v88 == 5)
    {
      v91 = 0;
      v90 = 1;
      goto LABEL_60;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v157 = NFLogGetLogger();
    if (v157)
    {
      v158 = v157;
      v159 = object_getClass(v188);
      v160 = class_isMetaClass(v159);
      v172 = object_getClassName(v188);
      v182 = sel_getName("getSEPPKSURFPaymentRequest:uid:authorization:hostChallenge:cardChallenge:cryptogram:error:");
      v161 = 45;
      if (v160)
      {
        v161 = 43;
      }

      v158(3, "%c[%{public}s %{public}s]:%i Unknown transaction type: %d", v161, v172, v182, 558, v88);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v162 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
    {
      v163 = object_getClass(v188);
      if (class_isMetaClass(v163))
      {
        v164 = 43;
      }

      else
      {
        v164 = 45;
      }

      v165 = object_getClassName(v188);
      v166 = sel_getName("getSEPPKSURFPaymentRequest:uid:authorization:hostChallenge:cardChallenge:cryptogram:error:");
      *buf = 67110146;
      *&buf[4] = v164;
      v201 = 2082;
      v202 = v165;
      v203 = 2082;
      v204 = v166;
      v205 = 1024;
      v206 = 558;
      v207 = 1024;
      LODWORD(v208) = v88;
      _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unknown transaction type: %d", buf, 0x28u);
    }

    if (!v187)
    {
      v49 = 0;
      v46 = v185;
      goto LABEL_121;
    }

    v167 = [NSError alloc];
    v56 = [NSString stringWithUTF8String:"nfcd"];
    v209 = NSLocalizedDescriptionKey;
    v168 = [NSString stringWithUTF8String:"Unexpected Result"];
    v210 = v168;
    v169 = [NSDictionary dictionaryWithObjects:&v210 forKeys:&v209 count:1];
    v187->isa = [v167 initWithDomain:v56 code:13 userInfo:v169];

LABEL_79:
    v49 = 0;
    v46 = v185;
LABEL_120:

LABEL_121:
    goto LABEL_122;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v36 = NFLogGetLogger();
  if (v36)
  {
    v37 = v36;
    v38 = object_getClass(a1);
    v39 = class_isMetaClass(v38);
    v40 = object_getClassName(a1);
    v173 = sel_getName("getSEPPKSURFPaymentRequest:uid:authorization:hostChallenge:cardChallenge:cryptogram:error:");
    v41 = 45;
    if (v39)
    {
      v41 = 43;
    }

    v37(3, "%c[%{public}s %{public}s]:%i Failed to create TLV children", v41, v40, v173, 505);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v42 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    v43 = object_getClass(a1);
    if (class_isMetaClass(v43))
    {
      v44 = 43;
    }

    else
    {
      v44 = 45;
    }

    *buf = 67109890;
    *&buf[4] = v44;
    v201 = 2082;
    v202 = object_getClassName(a1);
    v203 = 2082;
    v204 = sel_getName("getSEPPKSURFPaymentRequest:uid:authorization:hostChallenge:cardChallenge:cryptogram:error:");
    v205 = 1024;
    v206 = 505;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to create TLV children", buf, 0x22u);
  }

  v35 = v193;
  if (!a8)
  {
    v49 = 0;
    goto LABEL_123;
  }

  v45 = [NSError alloc];
  v46 = [NSString stringWithUTF8String:"nfcd"];
  v211 = NSLocalizedDescriptionKey;
  v47 = [NSString stringWithUTF8String:"No resources"];
  v212 = v47;
  v48 = [NSDictionary dictionaryWithObjects:&v212 forKeys:&v211 count:1];
  a8->isa = [v45 initWithDomain:v46 code:34 userInfo:v48];

  v49 = 0;
LABEL_122:

LABEL_123:

  return v49;
}

uint64_t sub_10008E72C(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 bytes];
  if ([v5 length] > 3)
  {
    if (v6[3] == 3)
    {
      a3 = 4;
    }

    else
    {
      a3 = v6[3];
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("getUserVerification:error:");
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v8(3, "%c[%{public}s %{public}s]:%i Signed data is too small, unable to get user verification", v12, ClassName, Name, 608);
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
      v25 = v15;
      v26 = 2082;
      v27 = object_getClassName(a1);
      v28 = 2082;
      v29 = sel_getName("getUserVerification:error:");
      v30 = 1024;
      v31 = 608;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Signed data is too small, unable to get user verification", buf, 0x22u);
    }

    if (a3)
    {
      v16 = [NSError alloc];
      v17 = [NSString stringWithUTF8String:"nfcd"];
      v22 = NSLocalizedDescriptionKey;
      v18 = [NSString stringWithUTF8String:"Unexpected Result"];
      v23 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      *a3 = [v16 initWithDomain:v17 code:13 userInfo:v19];

      a3 = 0;
    }
  }

  return a3;
}

id sub_10008E9A4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v81 = a1;
  v6 = sub_1001579EC(a1, v5, 0, a3);
  if (!v6)
  {
    if (!a3 || *a3)
    {
      v8 = 0;
      goto LABEL_73;
    }

    v30 = a3;
    v31 = [NSError alloc];
    v7 = [NSString stringWithUTF8String:"nfcd"];
    v105 = NSLocalizedDescriptionKey;
    v32 = [NSString stringWithUTF8String:"No resources"];
    v106 = v32;
    v33 = [NSDictionary dictionaryWithObjects:&v106 forKeys:&v105 count:1];
    *v30 = [v31 initWithDomain:v7 code:34 userInfo:v33];

    goto LABEL_37;
  }

  v7 = [NFResponseAPDU responseWithData:v6];
  if ([v7 status] != 36864)
  {
    v9 = [v7 status];
    if ((v9 & 0xFFF0) == 0x69F0)
    {
      v9 = [v7 decodeUnderlyingAppletError:0];
    }

    if (v9 == 27272)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v11 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("sendSEPPKSURFPaymentRequest:error:");
        v15 = 45;
        if (isMetaClass)
        {
          v15 = 43;
        }

        v11(3, "%c[%{public}s %{public}s]:%i Failed to send payment request : not registered", v15, ClassName, Name, 654);
      }

      v80 = v5;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v16 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
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

        *buf = 67109890;
        v93 = v18;
        v94 = 2082;
        v95 = object_getClassName(v81);
        v96 = 2082;
        v97 = sel_getName("sendSEPPKSURFPaymentRequest:error:");
        v98 = 1024;
        v99 = 654;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to send payment request : not registered", buf, 0x22u);
      }

      v79 = a3;

      v87 = 0;
      v19 = sub_100257A4C(v81, &v87);
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      obj = v87;
      v20 = [obj countByEnumeratingWithState:&v83 objects:v104 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = 0;
        v23 = *v84;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v84 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v83 + 1) + 8 * i);
            v26 = [v25 identifierAsData];
            v27 = [[NSData alloc] initWithBytes:&unk_100296D48 length:12];
            v28 = [v26 isEqualToData:v27];

            if (v28)
            {
              v29 = v25;

              v22 = v29;
            }
          }

          v21 = [obj countByEnumeratingWithState:&v83 objects:v104 count:16];
        }

        while (v21);
      }

      else
      {
        v22 = 0;
      }

      if ([v22 lifecycleState] == 7 || objc_msgSend(v22, "lifecycleState") == 15)
      {
        v5 = v80;
        if (v79 && !*v79)
        {
          v34 = [NSError alloc];
          v35 = [NSString stringWithUTF8String:"nfcd"];
          v102 = NSLocalizedDescriptionKey;
          v36 = [NSString stringWithUTF8String:"Not registered"];
          v103 = v36;
          v37 = [NSDictionary dictionaryWithObjects:&v103 forKeys:&v102 count:1];
          *v79 = [v34 initWithDomain:v35 code:42 userInfo:v37];
        }

LABEL_37:
        v8 = 0;
        goto LABEL_72;
      }

      v5 = v80;
      a3 = v79;
    }

    v38 = objc_opt_new();
    while (1)
    {
      if (([v7 status] & 0xFF00) != 0x6100)
      {
        v40 = v7;
        if (a3 && !*a3)
        {
          v42 = [NSError alloc];
          v43 = [NSString stringWithUTF8String:"nfcd"];
          v88 = NSLocalizedDescriptionKey;
          v44 = [NSString stringWithUTF8String:"Command Error"];
          v89 = v44;
          v45 = [NSDictionary dictionaryWithObjects:&v89 forKeys:&v88 count:1];
          *a3 = [v42 initWithDomain:v43 code:16 userInfo:v45];
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v46 = NFLogGetLogger();
        if (v46)
        {
          v47 = v46;
          v48 = object_getClass(v81);
          v49 = class_isMetaClass(v48);
          v50 = object_getClassName(v81);
          v51 = sel_getName("sendSEPPKSURFPaymentRequest:error:");
          v78 = [v40 status];
          v52 = 45;
          if (v49)
          {
            v52 = 43;
          }

          v47(3, "%c[%{public}s %{public}s]:%i Failed to send payment request: 0x%04x", v52, v50, v51, 699, v78);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v53 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = object_getClass(v81);
          if (class_isMetaClass(v54))
          {
            v55 = 43;
          }

          else
          {
            v55 = 45;
          }

          v56 = object_getClassName(v81);
          v57 = sel_getName("sendSEPPKSURFPaymentRequest:error:");
          v58 = [v40 status];
          *buf = 67110146;
          v93 = v55;
          v94 = 2082;
          v95 = v56;
          v96 = 2082;
          v97 = v57;
          v98 = 1024;
          v99 = 699;
          v100 = 1024;
          LODWORD(v101) = v58;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to send payment request: 0x%04x", buf, 0x28u);
        }

        v8 = 0;
        goto LABEL_57;
      }

      v39 = [v7 response];
      [v38 appendData:v39];

      v40 = sub_10015837C(v81, 128, 192, 0, 0, 0, [v7 status], 0, a3);

      if (!v40)
      {
        break;
      }

      v7 = v40;
      if ([v40 status] == 36864)
      {
        v41 = [v40 response];
        [v38 appendData:v41];

        v8 = v38;
LABEL_57:
        v7 = v40;
        goto LABEL_71;
      }
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v59 = NFLogGetLogger();
    if (v59)
    {
      v60 = v59;
      v61 = object_getClass(v81);
      v62 = class_isMetaClass(v61);
      v63 = object_getClassName(v81);
      v64 = sel_getName("sendSEPPKSURFPaymentRequest:error:");
      v65 = 45;
      if (v62)
      {
        v65 = 43;
      }

      v60(3, "%c[%{public}s %{public}s]:%i Command failed : %{public}@", v65, v63, v64, 686, *a3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v66 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      v67 = object_getClass(v81);
      if (class_isMetaClass(v67))
      {
        v68 = 43;
      }

      else
      {
        v68 = 45;
      }

      v69 = object_getClassName(v81);
      v70 = sel_getName("sendSEPPKSURFPaymentRequest:error:");
      v71 = *a3;
      *buf = 67110146;
      v93 = v68;
      v94 = 2082;
      v95 = v69;
      v96 = 2082;
      v97 = v70;
      v98 = 1024;
      v99 = 686;
      v100 = 2114;
      v101 = v71;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Command failed : %{public}@", buf, 0x2Cu);
    }

    else
    {

      if (!a3)
      {
        goto LABEL_70;
      }
    }

    if (!*a3)
    {
      v72 = [NSError alloc];
      v73 = [NSString stringWithUTF8String:"nfcd"];
      v90 = NSLocalizedDescriptionKey;
      v74 = [NSString stringWithUTF8String:"Command Error"];
      v91 = v74;
      v75 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
      *a3 = [v72 initWithDomain:v73 code:16 userInfo:v75];
    }

LABEL_70:
    v7 = 0;
    v8 = 0;
LABEL_71:

    goto LABEL_72;
  }

  v8 = [v7 response];
LABEL_72:

LABEL_73:

  return v8;
}

id sub_10008F3AC(void *a1, void *a2, void *a3, char a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = objc_opt_new();
  v11 = [NFTLV TLVsWithData:v9];
  v12 = v11;
  if (!v11)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v56 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("createSURFToken:from:userVerification:error:");
      v59 = 45;
      if (isMetaClass)
      {
        v59 = 43;
      }

      v56(3, "%c[%{public}s %{public}s]:%i Failed to create TLV from payment request: %{public}@", v59, ClassName, Name, 722, 0);
    }

    v96 = v9;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v60 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
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
      v64 = sel_getName("createSURFToken:from:userVerification:error:");
      buf = 67110146;
      v124 = v62;
      v125 = 2082;
      v126 = v63;
      v127 = 2082;
      v128 = v64;
      v129 = 1024;
      v130 = 722;
      v131 = 2114;
      v132 = 0;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to create TLV from payment request: %{public}@", &buf, 0x2Cu);
    }

    if (!a5)
    {
      v23 = 0;
      v24 = 0;
      v37 = 0;
      goto LABEL_75;
    }

    v94 = 0;
    v95 = v10;
    v65 = [NSError alloc];
    v33 = [NSString stringWithUTF8String:"nfcd"];
    v121 = NSLocalizedDescriptionKey;
    v93 = [NSString stringWithUTF8String:"Unknown Error"];
    v122 = v93;
    v34 = [NSDictionary dictionaryWithObjects:&v122 forKeys:&v121 count:1];
    v66 = [v65 initWithDomain:v33 code:6 userInfo:v34];
    v23 = 0;
    v24 = 0;
    v67 = a5;
    a5 = 0;
    v37 = 0;
    *v67 = v66;
    goto LABEL_73;
  }

  v92 = a4;
  v94 = v11;
  v95 = v10;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v103 objects:v120 count:16];
  if (!v14)
  {
LABEL_10:

LABEL_32:
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v43 = NFLogGetLogger();
    if (v43)
    {
      v44 = v43;
      v45 = object_getClass(a1);
      v46 = class_isMetaClass(v45);
      v84 = object_getClassName(a1);
      v87 = sel_getName("createSURFToken:from:userVerification:error:");
      v47 = 45;
      if (v46)
      {
        v47 = 43;
      }

      v44(3, "%c[%{public}s %{public}s]:%i Failed to find TLV_SURF_CRS_SMURF_TOKEN in %{public}@", v47, v84, v87, 735, v9);
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
      v52 = sel_getName("createSURFToken:from:userVerification:error:");
      buf = 67110146;
      v124 = v50;
      v125 = 2082;
      v126 = v51;
      v127 = 2082;
      v128 = v52;
      v129 = 1024;
      v130 = 735;
      v131 = 2114;
      v132 = v9;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to find TLV_SURF_CRS_SMURF_TOKEN in %{public}@", &buf, 0x2Cu);
    }

    if (!a5)
    {
      v19 = 0;
      v33 = 0;
      v23 = 0;
      v24 = 0;
LABEL_55:
      v37 = 0;
      goto LABEL_74;
    }

    v96 = v9;
    v53 = [NSError alloc];
    v34 = [NSString stringWithUTF8String:"nfcd"];
    v118 = NSLocalizedDescriptionKey;
    v39 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v119 = v39;
    v40 = [NSDictionary dictionaryWithObjects:&v119 forKeys:&v118 count:1];
    v54 = [v53 initWithDomain:v34 code:10 userInfo:v40];
    v93 = 0;
    v33 = 0;
    v23 = 0;
    v24 = 0;
LABEL_70:
    v79 = a5;
    a5 = 0;
    *v79 = v54;
    goto LABEL_71;
  }

  v15 = v14;
  v16 = *v104;
LABEL_4:
  v17 = 0;
  while (1)
  {
    if (*v104 != v16)
    {
      objc_enumerationMutation(v13);
    }

    v18 = *(*(&v103 + 1) + 8 * v17);
    if ([v18 tag] == 234)
    {
      break;
    }

    if (v15 == ++v17)
    {
      v15 = [v13 countByEnumeratingWithState:&v103 objects:v120 count:16];
      if (v15)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v19 = v18;

  if (!v19)
  {
    goto LABEL_32;
  }

  v91 = v8;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v20 = [v19 children];
  v21 = [v20 countByEnumeratingWithState:&v99 objects:v117 count:16];
  v96 = v9;
  v93 = v19;
  if (!v21)
  {

    v24 = 0;
    v23 = 0;
    goto LABEL_59;
  }

  v22 = v21;
  v90 = a5;
  v23 = 0;
  v24 = 0;
  v25 = *v100;
  do
  {
    for (i = 0; i != v22; i = i + 1)
    {
      if (*v100 != v25)
      {
        objc_enumerationMutation(v20);
      }

      v27 = *(*(&v99 + 1) + 8 * i);
      if ([v27 tag] == 150)
      {
        v28 = v27;

        v24 = v28;
      }

      if ([v27 tag] == 24375)
      {
        v29 = v27;

        v23 = v29;
      }
    }

    v22 = [v20 countByEnumeratingWithState:&v99 objects:v117 count:16];
  }

  while (v22);

  if (!v24)
  {
    a5 = v90;
    goto LABEL_59;
  }

  v9 = v96;
  a5 = v90;
  if (!v23)
  {
LABEL_59:
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v68 = NFLogGetLogger();
    if (v68)
    {
      v69 = v68;
      v70 = object_getClass(a1);
      v71 = class_isMetaClass(v70);
      v86 = object_getClassName(a1);
      v89 = sel_getName("createSURFToken:from:userVerification:error:");
      v72 = 45;
      if (v71)
      {
        v72 = 43;
      }

      v69(3, "%c[%{public}s %{public}s]:%i Failed to get current counter or signature: %{public}@", v72, v86, v89, 749, v13);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v73 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      v74 = object_getClass(a1);
      if (class_isMetaClass(v74))
      {
        v75 = 43;
      }

      else
      {
        v75 = 45;
      }

      v76 = object_getClassName(a1);
      v77 = sel_getName("createSURFToken:from:userVerification:error:");
      buf = 67110146;
      v124 = v75;
      v125 = 2082;
      v126 = v76;
      v127 = 2082;
      v128 = v77;
      v129 = 1024;
      v130 = 749;
      v131 = 2114;
      v132 = v13;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get current counter or signature: %{public}@", &buf, 0x2Cu);
    }

    v8 = v91;
    if (a5)
    {
      v78 = [NSError alloc];
      v34 = [NSString stringWithUTF8String:"nfcd"];
      v115 = NSLocalizedDescriptionKey;
      v39 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v116 = v39;
      v40 = [NSDictionary dictionaryWithObjects:&v116 forKeys:&v115 count:1];
      v54 = [v78 initWithDomain:v34 code:10 userInfo:v40];
      v33 = 0;
      goto LABEL_70;
    }

    v33 = 0;
    v37 = 0;
    v9 = v96;
    goto LABEL_74;
  }

  v8 = v91;
  v30 = sub_10008B5BC(a1, v91, v90);
  a5 = v30;
  if (!v30)
  {
LABEL_81:
    v33 = 0;
    goto LABEL_55;
  }

  v31 = [v30 children];
  [v95 addObjectsFromArray:v31];

  [v95 addObject:v24];
  v98 = v92;
  v32 = [[NSData alloc] initWithBytes:&v98 length:1];
  v33 = [NFTLV TLVWithTag:151 value:v32];

  if (!v33)
  {
    if (v90)
    {
      v81 = [NSError alloc];
      v34 = [NSString stringWithUTF8String:"nfcd"];
      v113 = NSLocalizedDescriptionKey;
      v39 = [NSString stringWithUTF8String:"No resources"];
      v114 = v39;
      v40 = [NSDictionary dictionaryWithObjects:&v114 forKeys:&v113 count:1];
      v33 = 0;
      *v90 = [v81 initWithDomain:v34 code:34 userInfo:v40];
      goto LABEL_71;
    }

    goto LABEL_81;
  }

  [v95 addObject:v33];
  v34 = [NFTLV TLVWithTag:32525 children:v95];
  if (v34)
  {
    v35 = [[NSMutableArray alloc] initWithObjects:{v34, v23, 0}];

    if (v35)
    {
      v36 = [NFTLV TLVWithTag:234 children:v35];
      v37 = [v36 asData];

      if (!v90 || v37)
      {
        v95 = v35;
        goto LABEL_73;
      }

      v38 = [NSError alloc];
      v39 = [NSString stringWithUTF8String:"nfcd"];
      v107 = NSLocalizedDescriptionKey;
      v40 = [NSString stringWithUTF8String:"No resources"];
      v108 = v40;
      v41 = [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1];
      v42 = [v38 initWithDomain:v39 code:34 userInfo:v41];
      v95 = v35;
    }

    else
    {
      if (!v90)
      {
        v95 = 0;
        goto LABEL_72;
      }

      v83 = [NSError alloc];
      v39 = [NSString stringWithUTF8String:"nfcd"];
      v109 = NSLocalizedDescriptionKey;
      v40 = [NSString stringWithUTF8String:"No resources"];
      v110 = v40;
      v41 = [NSDictionary dictionaryWithObjects:&v110 forKeys:&v109 count:1];
      v42 = [v83 initWithDomain:v39 code:34 userInfo:v41];
      v95 = 0;
    }
  }

  else
  {
    if (!v90)
    {
      v34 = 0;
      goto LABEL_72;
    }

    v82 = [NSError alloc];
    v39 = [NSString stringWithUTF8String:"nfcd"];
    v111 = NSLocalizedDescriptionKey;
    v40 = [NSString stringWithUTF8String:"No resources"];
    v112 = v40;
    v41 = [NSDictionary dictionaryWithObjects:&v112 forKeys:&v111 count:1];
    v42 = [v82 initWithDomain:v39 code:34 userInfo:v41];
  }

  *v90 = v42;

  v8 = v91;
LABEL_71:

LABEL_72:
  v37 = 0;
LABEL_73:

  v9 = v96;
  v19 = v93;
LABEL_74:

  v12 = v94;
  v10 = v95;
LABEL_75:

  return v37;
}

void *sub_10009004C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = [NFTLV TLVsWithData:a2];
  v8 = v7;
  if (v7)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v34;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v33 + 1) + 8 * i);
          if ([v14 tag] == 235)
          {
            v15 = [v14 childWithTag:225];
            v16 = v15;
            if (a3 && v15)
            {
              v17 = [v15 childWithTag:130];
              v18 = v17;
              if (v17)
              {
                v19 = [v17 value];
                *a3 = [v19 NF_asHexString];
              }
            }

            a4 = [v14 asData];
            goto LABEL_28;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    a4 = 0;
    goto LABEL_29;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v21 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    Name = sel_getName("createOsloToken:transactionID:error:");
    v24 = 45;
    if (isMetaClass)
    {
      v24 = 43;
    }

    v21(3, "%c[%{public}s %{public}s]:%i Failed to create TLV from payment request: %{public}@", v24, ClassName, Name, 801, 0);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v25 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = object_getClass(a1);
    if (class_isMetaClass(v26))
    {
      v27 = 43;
    }

    else
    {
      v27 = 45;
    }

    *buf = 67110146;
    v41 = v27;
    v42 = 2082;
    v43 = object_getClassName(a1);
    v44 = 2082;
    v45 = sel_getName("createOsloToken:transactionID:error:");
    v46 = 1024;
    v47 = 801;
    v48 = 2114;
    v49 = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to create TLV from payment request: %{public}@", buf, 0x2Cu);
  }

  if (a4)
  {
    v28 = [NSError alloc];
    v9 = [NSString stringWithUTF8String:"nfcd"];
    v38 = NSLocalizedDescriptionKey;
    v16 = [NSString stringWithUTF8String:"Unknown Error"];
    v39 = v16;
    v29 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    *a4 = [v28 initWithDomain:v9 code:6 userInfo:v29];

    a4 = 0;
LABEL_28:

LABEL_29:
  }

  return a4;
}

objc_class *sub_1000903E0(void *a1, void *a2, unsigned int a3, void *a4, NFPeerPaymentResponse **a5)
{
  v220 = a2;
  v9 = a4;
  if (a1)
  {
    v10 = +[NFCALogger sharedCALogger];
    v11 = [v10 getTimestamp];

    v12 = [v9 transferRequest];
    if (v12 && (v13 = v12, [v9 topUpRequest], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14))
    {
      v15 = 3;
    }

    else
    {
      v16 = [v9 transferRequest];

      if (v16)
      {
        v15 = 1;
      }

      else
      {
        v17 = [v9 topUpRequest];
        v18 = v17 != 0;

        v15 = (2 * v18);
      }
    }

    v229 = 0;
    v19 = sub_10022B0E8(NFSSEWrapper, &v229);
    v20 = v229;
    v21 = v20;
    if (!v20 || v19)
    {
      v219 = v9;
      v38 = v20;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v40 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("performPeerPayment:uid:request:response:");
        v44 = 45;
        if (isMetaClass)
        {
          v44 = 43;
        }

        v40(3, "%c[%{public}s %{public}s]:%i Failed to get host challenge", v44, ClassName, Name, 845);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v45 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = object_getClass(a1);
        if (class_isMetaClass(v46))
        {
          v47 = 43;
        }

        else
        {
          v47 = 45;
        }

        v48 = object_getClassName(a1);
        v49 = sel_getName("performPeerPayment:uid:request:response:");
        *buf = 67109890;
        v255 = v47;
        v256 = 2082;
        v257 = v48;
        v258 = 2082;
        v259 = v49;
        v260 = 1024;
        v261 = 845;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get host challenge", buf, 0x22u);
      }

      v50 = [NSError alloc];
      v51 = [NSString stringWithUTF8String:"nfcd"];
      if (v19)
      {
        v266 = NSLocalizedDescriptionKey;
        if (v19 >= 0x4C)
        {
          v52 = 76;
        }

        else
        {
          v52 = v19;
        }

        v53 = [NSString stringWithUTF8String:off_1003173D0[v52]];
        v267 = v53;
        v54 = [NSDictionary dictionaryWithObjects:&v267 forKeys:&v266 count:1];
        v55 = v50;
        v56 = v51;
        v57 = v19;
      }

      else
      {
        v268 = NSLocalizedDescriptionKey;
        v53 = [NSString stringWithUTF8String:"Unknown Error"];
        v269 = v53;
        v54 = [NSDictionary dictionaryWithObjects:&v269 forKeys:&v268 count:1];
        v55 = v50;
        v56 = v51;
        v57 = 6;
      }

      v58 = [v55 initWithDomain:v56 code:v57 userInfo:v54];

      v264[0] = @"peerPaymentRequestType";
      v59 = [NSNumber numberWithUnsignedInt:v15];
      v265[0] = v59;
      v265[1] = &off_100330A38;
      v264[1] = @"peerPaymentRequestErrorStep";
      v264[2] = @"peerPaymentRequestErrorCode";
      v60 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v58 code]);
      v265[2] = v60;
      v264[3] = @"peerPaymentRequestStartTime";
      v61 = [NSNumber numberWithUnsignedLongLong:v11];
      v265[3] = v61;
      v62 = v265;
      v63 = v264;
      goto LABEL_37;
    }

    v22 = sub_100088308(a1);
    if (v22)
    {
      v23 = v22;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFLogGetLogger();
      if (v24)
      {
        v25 = v24;
        v26 = object_getClass(a1);
        v27 = class_isMetaClass(v26);
        v196 = object_getClassName(a1);
        v199 = sel_getName("performPeerPayment:uid:request:response:");
        v28 = 45;
        if (v27)
        {
          v28 = 43;
        }

        v25(3, "%c[%{public}s %{public}s]:%i Failed to initialize SURF applet : %{public}@", v28, v196, v199, 859, v23);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v29 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = object_getClass(a1);
        v31 = v9;
        v32 = v21;
        if (class_isMetaClass(v30))
        {
          v33 = 43;
        }

        else
        {
          v33 = 45;
        }

        v34 = object_getClassName(a1);
        v35 = sel_getName("performPeerPayment:uid:request:response:");
        *buf = 67110146;
        v255 = v33;
        v21 = v32;
        v9 = v31;
        v256 = 2082;
        v257 = v34;
        v258 = 2082;
        v259 = v35;
        v260 = 1024;
        v261 = 859;
        v262 = 2114;
        v263 = v23;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to initialize SURF applet : %{public}@", buf, 0x2Cu);
      }

      v36 = v23;
      v37 = v36;
      goto LABEL_39;
    }

    v228 = 0;
    v66 = sub_1001599F4(a1, &v228);
    v67 = v228;
    v219 = v9;
    if (v67)
    {
      v58 = v67;
      v38 = v21;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v68 = NFLogGetLogger();
      if (v68)
      {
        v69 = v68;
        v70 = object_getClass(a1);
        v71 = class_isMetaClass(v70);
        v197 = object_getClassName(a1);
        v201 = sel_getName("performPeerPayment:uid:request:response:");
        v72 = 45;
        if (v71)
        {
          v72 = 43;
        }

        v69(3, "%c[%{public}s %{public}s]:%i Failed to select CRS: %{public}@", v72, v197, v201, 867, v58);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v73 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        v74 = object_getClass(a1);
        if (class_isMetaClass(v74))
        {
          v75 = 43;
        }

        else
        {
          v75 = 45;
        }

        v76 = object_getClassName(a1);
        v77 = sel_getName("performPeerPayment:uid:request:response:");
        *buf = 67110146;
        v255 = v75;
        v256 = 2082;
        v257 = v76;
        v258 = 2082;
        v259 = v77;
        v260 = 1024;
        v261 = 867;
        v262 = 2114;
        v263 = v58;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select CRS: %{public}@", buf, 0x2Cu);
      }

      v252[0] = @"peerPaymentRequestType";
      v59 = [NSNumber numberWithUnsignedInt:v15];
      v253[0] = v59;
      v253[1] = &off_100330A50;
      v252[1] = @"peerPaymentRequestErrorStep";
      v252[2] = @"peerPaymentRequestErrorCode";
      v60 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v58 code]);
      v253[2] = v60;
      v252[3] = @"peerPaymentRequestStartTime";
      v61 = [NSNumber numberWithUnsignedLongLong:v11];
      v253[3] = v61;
      v62 = v253;
      v63 = v252;
LABEL_37:
      v64 = [NSDictionary dictionaryWithObjects:v62 forKeys:v63 count:4];

      sub_1002089AC(NFPeerPaymentAndPurpleTrustCALogger, v64);
      v36 = v58;

      v37 = v36;
      v21 = v38;
LABEL_38:
      v9 = v219;
LABEL_39:

      goto LABEL_40;
    }

    v227 = 0;
    v78 = sub_1000B7A20(a1, v21, &v227);
    v79 = v227;
    v80 = v79;
    if (v78)
    {
      v217 = v79;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v81 = NFLogGetLogger();
      if (v81)
      {
        v82 = v81;
        v83 = object_getClass(a1);
        v84 = class_isMetaClass(v83);
        v198 = object_getClassName(a1);
        v202 = sel_getName("performPeerPayment:uid:request:response:");
        v85 = 45;
        if (v84)
        {
          v85 = 43;
        }

        v82(3, "%c[%{public}s %{public}s]:%i Failed to auth with CRS applet : 0x%x", v85, v198, v202, 882, v78);
      }

      v86 = v21;
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
        v91 = sel_getName("performPeerPayment:uid:request:response:");
        *buf = 67110146;
        v255 = v89;
        v256 = 2082;
        v257 = v90;
        v258 = 2082;
        v259 = v91;
        v260 = 1024;
        v261 = 882;
        v262 = 1024;
        LODWORD(v263) = v78;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to auth with CRS applet : 0x%x", buf, 0x28u);
      }

      v250[0] = @"peerPaymentRequestType";
      v92 = [NSNumber numberWithUnsignedInt:v15];
      v251[0] = v92;
      v251[1] = &off_100330A98;
      v250[1] = @"peerPaymentRequestErrorStep";
      v250[2] = @"peerPaymentRequestErrorCode";
      v93 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [0 code]);
      v251[2] = v93;
      v250[3] = @"peerPaymentRequestStartTime";
      v94 = [NSNumber numberWithUnsignedLongLong:v11];
      v251[3] = v94;
      v95 = [NSDictionary dictionaryWithObjects:v251 forKeys:v250 count:4];

      sub_1002089AC(NFPeerPaymentAndPurpleTrustCALogger, v95);
      v96 = [NSError alloc];
      v97 = [NSString stringWithUTF8String:"nfcd"];
      v98 = v78;
      v248 = NSLocalizedDescriptionKey;
      if (v78 >= 0x4C)
      {
        v99 = 76;
      }

      else
      {
        v99 = v78;
      }

      v100 = [NSString stringWithUTF8String:off_1003173D0[v99]];
      v249 = v100;
      v101 = [NSDictionary dictionaryWithObjects:&v249 forKeys:&v248 count:1];
      v37 = [v96 initWithDomain:v97 code:v98 userInfo:v101];
    }

    else
    {
      if ([v79 length] > 0xF)
      {
        v117 = [v80 subdataWithRange:{0, 8}];
        v118 = [v80 subdataWithRange:{8, 8}];
        v216 = v117;
        if (v117 && v118)
        {
          v226.isa = 0;
          v215 = v118;
          v119 = sub_10008D160(a1, v9, a3, v220, v21, v117, v118, &v226);
          v120 = v226.isa;
          v121 = v120;
          if (v119)
          {
            v225 = v120;
            sub_10008E9A4(a1, v119, &v225);
            v213 = v119;
            v123 = v122 = v121;
            v210 = v225;

            v214 = v123;
            if (v123)
            {
              v218 = v80;
              v100 = v213;
              v224 = v210;
              v208 = sub_10008E72C(a1, v213, &v224);
              v124 = v224;

              if (v124)
              {
                v236[0] = @"peerPaymentRequestType";
                v125 = [NSNumber numberWithUnsignedInt:v15];
                v237[0] = v125;
                v237[1] = &off_100330AE0;
                v236[1] = @"peerPaymentRequestErrorStep";
                v236[2] = @"peerPaymentRequestErrorCode";
                v126 = [NSNumber numberWithInteger:[(objc_class *)v124 code]];
                v237[2] = v126;
                v236[3] = @"peerPaymentRequestStartTime";
                v127 = [NSNumber numberWithUnsignedLongLong:v11];
                v237[3] = v127;
                v128 = [NSDictionary dictionaryWithObjects:v237 forKeys:v236 count:4];

                sub_1002089AC(NFPeerPaymentAndPurpleTrustCALogger, v128);
                v36 = v124;
                v37 = v36;
                v95 = v216;
                v116 = v218;
                v129 = v214;
                v97 = v215;
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v144 = NFLogGetLogger();
                if (v144)
                {
                  v145 = v144;
                  v146 = object_getClass(a1);
                  v147 = class_isMetaClass(v146);
                  v211 = object_getClassName(a1);
                  v148 = sel_getName("performPeerPayment:uid:request:response:");
                  v149 = 45;
                  if (v147)
                  {
                    v149 = 43;
                  }

                  v145(6, "%c[%{public}s %{public}s]:%i User verification (PT spec bitmask) 0x%x", v149, v211, v148, 945, v208);
                }

                v207 = v21;
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v150 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
                {
                  v151 = object_getClass(a1);
                  if (class_isMetaClass(v151))
                  {
                    v152 = 43;
                  }

                  else
                  {
                    v152 = 45;
                  }

                  v153 = object_getClassName(a1);
                  v154 = sel_getName("performPeerPayment:uid:request:response:");
                  *buf = 67110146;
                  v255 = v152;
                  v256 = 2082;
                  v257 = v153;
                  v258 = 2082;
                  v259 = v154;
                  v260 = 1024;
                  v261 = 945;
                  v262 = 1024;
                  LODWORD(v263) = v208;
                  _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i User verification (PT spec bitmask) 0x%x", buf, 0x28u);
                }

                v212 = objc_opt_new();
                v155 = [v9 transferRequest];
                v223 = 0;
                v156 = sub_10008F3AC(a1, v155, v214, v208, &v223);
                v157 = v223;

                v206 = v156;
                if (v156)
                {
                  [v212 appendData:v156];
                  v221 = v157;
                  v222 = 0;
                  v158 = v157;
                  v205 = sub_10009004C(a1, v214, &v222, &v221);
                  v209 = v222;
                  v36 = v221;

                  if (v36)
                  {
                    v232[0] = @"peerPaymentRequestType";
                    v159 = [NSNumber numberWithUnsignedInt:v15];
                    v233[0] = v159;
                    v233[1] = &off_100330B28;
                    v232[1] = @"peerPaymentRequestErrorStep";
                    v232[2] = @"peerPaymentRequestErrorCode";
                    v160 = [NSNumber numberWithInteger:[(objc_class *)v36 code]];
                    v233[2] = v160;
                    v232[3] = @"peerPaymentRequestStartTime";
                    v161 = [NSNumber numberWithUnsignedLongLong:v11];
                    v233[3] = v161;
                    v162 = [NSDictionary dictionaryWithObjects:v233 forKeys:v232 count:4];

                    sub_1002089AC(NFPeerPaymentAndPurpleTrustCALogger, v162);
                    v37 = v36;
                    v21 = v207;
                    v116 = v218;
                  }

                  else
                  {
                    if (v205)
                    {
                      [v212 appendData:?];
                    }

                    v162 = objc_opt_new();
                    v171 = [a1 rsaCertificate];

                    v21 = v207;
                    if (v171)
                    {
                      v172 = [a1 rsaCertificate];
                      [v162 setObject:v172 forKeyedSubscript:@"RSA"];
                    }

                    v173 = [a1 eccCertificate];

                    if (v173)
                    {
                      v174 = [a1 eccCertificate];
                      [v162 setObject:v174 forKeyedSubscript:@"ECDSA"];
                    }

                    v175 = [a1 eckaCertificate];

                    if (v175)
                    {
                      v176 = [a1 eckaCertificate];
                      [v162 setObject:v176 forKeyedSubscript:@"ECKA"];
                    }

                    v177 = [a1 eccCertificate];

                    if (v177)
                    {
                      v178 = [a1 eccCertificate];
                      [v162 setObject:v178 forKeyedSubscript:@"ECC"];
                    }

                    v179 = objc_opt_new();
                    [v179 setObject:v212 forKeyedSubscript:@"transactionData"];
                    [v179 setObject:v162 forKeyedSubscript:@"certificates"];
                    if (v209)
                    {
                      [v179 setObject:v209 forKeyedSubscript:@"transactionIdentifier"];
                    }

                    v180 = [[NFPeerPaymentResponse alloc] initWithDictionary:v179];
                    *a5 = v180;
                    v116 = v218;
                    if (v180)
                    {
                      v37 = 0;
                    }

                    else
                    {
                      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                      v181 = NFLogGetLogger();
                      if (v181)
                      {
                        v182 = v181;
                        v183 = object_getClass(a1);
                        v184 = class_isMetaClass(v183);
                        v185 = object_getClassName(a1);
                        v203 = sel_getName("performPeerPayment:uid:request:response:");
                        v186 = 45;
                        if (v184)
                        {
                          v186 = 43;
                        }

                        v182(3, "%c[%{public}s %{public}s]:%i Failed to create response", v186, v185, v203, 990);
                      }

                      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                      v187 = NFSharedLogGetLogger();
                      if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
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
                        v191 = sel_getName("performPeerPayment:uid:request:response:");
                        *buf = 67109890;
                        v255 = v189;
                        v256 = 2082;
                        v257 = v190;
                        v258 = 2082;
                        v259 = v191;
                        v260 = 1024;
                        v261 = 990;
                        _os_log_impl(&_mh_execute_header, v187, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to create response", buf, 0x22u);
                      }

                      v192 = [NSError alloc];
                      v193 = [NSString stringWithUTF8String:"nfcd"];
                      v230 = NSLocalizedDescriptionKey;
                      v194 = [NSString stringWithUTF8String:"No resources"];
                      v231 = v194;
                      v195 = [NSDictionary dictionaryWithObjects:&v231 forKeys:&v230 count:1];
                      v37 = [v192 initWithDomain:v193 code:34 userInfo:v195];

                      v21 = v207;
                      v116 = v218;
                    }
                  }

                  v97 = v215;
                  v95 = v216;
                }

                else
                {
                  v234[0] = @"peerPaymentRequestType";
                  v167 = [NSNumber numberWithUnsignedInt:v15];
                  v235[0] = v167;
                  v235[1] = &off_100330B10;
                  v234[1] = @"peerPaymentRequestErrorStep";
                  v234[2] = @"peerPaymentRequestErrorCode";
                  v168 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v157 code]);
                  v235[2] = v168;
                  v234[3] = @"peerPaymentRequestStartTime";
                  v169 = [NSNumber numberWithUnsignedLongLong:v11];
                  v235[3] = v169;
                  v170 = [NSDictionary dictionaryWithObjects:v235 forKeys:v234 count:4];

                  v209 = v170;
                  sub_1002089AC(NFPeerPaymentAndPurpleTrustCALogger, v170);
                  v36 = v157;
                  v37 = v36;
                  v21 = v207;
                  v95 = v216;
                  v116 = v218;
                  v97 = v215;
                }

                v129 = v214;
                v128 = v212;
              }
            }

            else
            {
              v238[0] = @"peerPaymentRequestType";
              v140 = [NSNumber numberWithUnsignedInt:v15];
              v239[0] = v140;
              v239[1] = &off_100330A68;
              v238[1] = @"peerPaymentRequestErrorStep";
              v238[2] = @"peerPaymentRequestErrorCode";
              v141 = v80;
              v142 = [NSNumber numberWithInteger:[(objc_class *)v210 code]];
              v239[2] = v142;
              v238[3] = @"peerPaymentRequestStartTime";
              v143 = [NSNumber numberWithUnsignedLongLong:v11];
              v239[3] = v143;
              v128 = [NSDictionary dictionaryWithObjects:v239 forKeys:v238 count:4];

              v116 = v141;
              sub_1002089AC(NFPeerPaymentAndPurpleTrustCALogger, v128);
              v36 = v210;
              v37 = v36;
              v97 = v215;
              v95 = v216;
              v100 = v213;
              v129 = 0;
            }
          }

          else
          {
            v134 = v80;
            v135 = v21;
            v242[0] = @"peerPaymentRequestType";
            v136 = [NSNumber numberWithUnsignedInt:v15];
            v243[0] = v136;
            v243[1] = &off_100330AB0;
            v242[1] = @"peerPaymentRequestErrorStep";
            v242[2] = @"peerPaymentRequestErrorCode";
            v137 = [NSNumber numberWithInteger:[(objc_class *)v121 code]];
            v243[2] = v137;
            v242[3] = @"peerPaymentRequestStartTime";
            v138 = [NSNumber numberWithUnsignedLongLong:v11];
            v243[3] = v138;
            v139 = [NSDictionary dictionaryWithObjects:v243 forKeys:v242 count:4];

            v129 = v139;
            sub_1002089AC(NFPeerPaymentAndPurpleTrustCALogger, v139);
            if (v121)
            {
              v36 = v121;
              v100 = 0;
              v37 = v36;
            }

            else
            {
              v163 = [NSError alloc];
              v164 = [NSString stringWithUTF8String:"nfcd"];
              v240 = NSLocalizedDescriptionKey;
              v165 = [NSString stringWithUTF8String:"Unknown Error"];
              v241 = v165;
              v166 = [NSDictionary dictionaryWithObjects:&v241 forKeys:&v240 count:1];
              v37 = [v163 initWithDomain:v164 code:6 userInfo:v166];

              v100 = 0;
              v36 = 0;
            }

            v21 = v135;
            v116 = v134;
            v97 = v215;
            v95 = v216;
          }
        }

        else
        {
          v97 = v118;
          v130 = v80;
          v131 = [NSError alloc];
          v100 = [NSString stringWithUTF8String:"nfcd"];
          v244 = NSLocalizedDescriptionKey;
          v129 = [NSString stringWithUTF8String:"Command Error"];
          v245 = v129;
          v132 = [NSDictionary dictionaryWithObjects:&v245 forKeys:&v244 count:1];
          v133 = v131;
          v116 = v130;
          v37 = [v133 initWithDomain:v100 code:16 userInfo:v132];

          v36 = 0;
          v95 = v216;
        }

        goto LABEL_80;
      }

      v217 = v80;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v102 = NFLogGetLogger();
      if (v102)
      {
        v103 = v102;
        v104 = object_getClass(a1);
        v105 = class_isMetaClass(v104);
        v106 = object_getClassName(a1);
        v107 = sel_getName("performPeerPayment:uid:request:response:");
        v204 = [v217 length];
        v108 = 45;
        if (v105)
        {
          v108 = 43;
        }

        v103(3, "%c[%{public}s %{public}s]:%i Initialize auth response too small: %lu", v108, v106, v107, 893, v204);
      }

      v86 = v21;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v109 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
      {
        v110 = object_getClass(a1);
        if (class_isMetaClass(v110))
        {
          v111 = 43;
        }

        else
        {
          v111 = 45;
        }

        v112 = object_getClassName(a1);
        v113 = sel_getName("performPeerPayment:uid:request:response:");
        v114 = [v217 length];
        *buf = 67110146;
        v255 = v111;
        v256 = 2082;
        v257 = v112;
        v258 = 2082;
        v259 = v113;
        v260 = 1024;
        v261 = 893;
        v262 = 2048;
        v263 = v114;
        _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Initialize auth response too small: %lu", buf, 0x2Cu);
      }

      v115 = [NSError alloc];
      v95 = [NSString stringWithUTF8String:"nfcd"];
      v246 = NSLocalizedDescriptionKey;
      v97 = [NSString stringWithUTF8String:"Command Error"];
      v247 = v97;
      v100 = [NSDictionary dictionaryWithObjects:&v247 forKeys:&v246 count:1];
      v37 = [v115 initWithDomain:v95 code:16 userInfo:v100];
    }

    v36 = 0;
    v21 = v86;
    v116 = v217;
LABEL_80:

    goto LABEL_38;
  }

  v37 = 0;
LABEL_40:

  return v37;
}

id *sub_100091D2C(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_100088308(a1);
    if (v2)
    {
      v3 = v2;
      v1 = v3;
    }

    else
    {
      v24 = 0;
      v4 = sub_10008943C(v1, byte_10035D990, &v24);
      v3 = v24;
      if (v4 && [v4 status] == 36864)
      {
        v1 = 0;
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v6 = Logger;
          Class = object_getClass(v1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(v1);
          Name = sel_getName("deleteKey");
          v23 = [v4 status];
          v11 = 45;
          if (isMetaClass)
          {
            v11 = 43;
          }

          v6(3, "%c[%{public}s %{public}s]:%i Failed to delete: 0x%04x / %{public}@", v11, ClassName, Name, 1006, v23, v3);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v12 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = object_getClass(v1);
          if (class_isMetaClass(v13))
          {
            v14 = 43;
          }

          else
          {
            v14 = 45;
          }

          v15 = object_getClassName(v1);
          v16 = sel_getName("deleteKey");
          v17 = [v4 status];
          *buf = 67110402;
          v28 = v14;
          v29 = 2082;
          v30 = v15;
          v31 = 2082;
          v32 = v16;
          v33 = 1024;
          v34 = 1006;
          v35 = 1024;
          v36 = v17;
          v37 = 2114;
          v38 = v3;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to delete: 0x%04x / %{public}@", buf, 0x32u);
        }

        if (v3)
        {
          v1 = v3;
        }

        else
        {
          v18 = [NSError alloc];
          v19 = [NSString stringWithUTF8String:"nfcd"];
          v25 = NSLocalizedDescriptionKey;
          v20 = [NSString stringWithUTF8String:"Command Error"];
          v26 = v20;
          v21 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          v1 = [v18 initWithDomain:v19 code:16 userInfo:v21];
        }
      }
    }
  }

  return v1;
}

id *sub_100092024(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_100158F70(a1, 254, 0xDF31u);
    v3 = v2;
    if (v2 && [v2 length] > 1)
    {
      v1 = (bswap32(*[v3 bytes]) >> 16);
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v5 = Logger;
        Class = object_getClass(v1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v1);
        Name = sel_getName("getUpdateCounter");
        v9 = 45;
        if (isMetaClass)
        {
          v9 = 43;
        }

        v5(3, "%c[%{public}s %{public}s]:%i Failed to get update info", v9, ClassName, Name, 21);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v10 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = object_getClass(v1);
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
        v18 = object_getClassName(v1);
        v19 = 2082;
        v20 = sel_getName("getUpdateCounter");
        v21 = 1024;
        v22 = 21;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get update info", buf, 0x22u);
      }

      v1 = 0;
    }
  }

  return v1;
}

id sub_100092208(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_opt_new();
    v3 = [v1 handle];
    v4 = [v3 info];
    v5 = [v4 rsaCertificate];
    if (v5)
    {
    }

    else
    {
      v6 = [v1 handle];
      v7 = [v6 info];
      v8 = [v7 ecdsaCertificate];

      if (v8)
      {
LABEL_6:
        v9 = [v1 handle];
        v10 = [v9 info];
        v11 = [v10 rsaCertificate];
        if (!v11)
        {
          v11 = [v1 handle];
          v12 = [v11 info];
          v13 = [v12 ecdsaCertificate];
          if (!v13)
          {
            v100 = [v1 handle];
            v101 = [v100 info];
            v102 = [v101 eckaCertificate];

            if (!v102)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              Logger = NFLogGetLogger();
              if (Logger)
              {
                v104 = Logger;
                Class = object_getClass(v1);
                isMetaClass = class_isMetaClass(Class);
                ClassName = object_getClassName(v1);
                Name = sel_getName("getCertificates");
                v108 = 45;
                if (isMetaClass)
                {
                  v108 = 43;
                }

                v104(4, "%c[%{public}s %{public}s]:%i Failed to retrieve certificates !", v108, ClassName, Name, 61);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v109 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
              {
                v110 = object_getClass(v1);
                if (class_isMetaClass(v110))
                {
                  v111 = 43;
                }

                else
                {
                  v111 = 45;
                }

                *buf = 67109890;
                v118 = v111;
                v119 = 2082;
                v120 = object_getClassName(v1);
                v121 = 2082;
                v122 = sel_getName("getCertificates");
                v123 = 1024;
                v124 = 61;
                _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to retrieve certificates !", buf, 0x22u);
              }

              v1 = 0;
              goto LABEL_51;
            }

LABEL_10:
            v14 = [v1 handle];
            v15 = [v14 info];
            v16 = [v15 rsaCertificate];

            if (v16)
            {
              v17 = [v1 handle];
              v18 = [v17 info];
              v19 = [v18 rsaCertificate];
              v20 = [NSData NF_dataWithHexString:v19];

              if (v20)
              {
                v21 = [v1 handle];
                v22 = [v21 info];
                v23 = [v22 rsaCertificate];
                v24 = [NSData NF_dataWithHexString:v23];
                [v2 setObject:v24 forKey:@"RSA"];
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v25 = NFLogGetLogger();
                if (v25)
                {
                  v26 = v25;
                  v27 = object_getClass(v1);
                  v28 = class_isMetaClass(v27);
                  v29 = object_getClassName(v1);
                  v30 = sel_getName("getCertificates");
                  v31 = [v1 handle];
                  v32 = [v31 info];
                  v33 = [v32 rsaCertificate];
                  v113 = [v33 UTF8String];
                  v34 = 45;
                  if (v28)
                  {
                    v34 = 43;
                  }

                  v26(3, "%c[%{public}s %{public}s]:%i Failed to decrypt RSA cert : %s", v34, v29, v30, 42, v113);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v35 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  v36 = object_getClass(v1);
                  if (class_isMetaClass(v36))
                  {
                    v37 = 43;
                  }

                  else
                  {
                    v37 = 45;
                  }

                  v38 = object_getClassName(v1);
                  v39 = sel_getName("getCertificates");
                  v40 = [v1 handle];
                  v41 = [v40 info];
                  v42 = [v41 rsaCertificate];
                  *buf = 67110146;
                  v118 = v37;
                  v119 = 2082;
                  v120 = v38;
                  v121 = 2082;
                  v122 = v39;
                  v123 = 1024;
                  v124 = 42;
                  v125 = 2080;
                  v126 = [v42 UTF8String];
                  _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to decrypt RSA cert : %s", buf, 0x2Cu);
                }
              }
            }

            v43 = [v1 handle];
            v44 = [v43 info];
            v45 = [v44 ecdsaCertificate];

            if (v45)
            {
              v46 = [v1 handle];
              v47 = [v46 info];
              v48 = [v47 ecdsaCertificate];
              v49 = [NSData NF_dataWithHexString:v48];

              if (v49)
              {
                v50 = [v1 handle];
                v51 = [v50 info];
                v52 = [v51 ecdsaCertificate];
                v53 = [NSData NF_dataWithHexString:v52];
                [v2 setObject:v53 forKey:@"ECDSA"];
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v54 = NFLogGetLogger();
                if (v54)
                {
                  v55 = v54;
                  v56 = object_getClass(v1);
                  v57 = class_isMetaClass(v56);
                  v116 = object_getClassName(v1);
                  v58 = sel_getName("getCertificates");
                  v59 = [v1 handle];
                  v60 = [v59 info];
                  v61 = [v60 ecdsaCertificate];
                  v114 = [v61 UTF8String];
                  v62 = 45;
                  if (v57)
                  {
                    v62 = 43;
                  }

                  v55(3, "%c[%{public}s %{public}s]:%i Failed to decrypt ECDSA cert : %s", v62, v116, v58, 49, v114);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v50 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                {
                  v63 = object_getClass(v1);
                  if (class_isMetaClass(v63))
                  {
                    v64 = 43;
                  }

                  else
                  {
                    v64 = 45;
                  }

                  v65 = object_getClassName(v1);
                  v66 = sel_getName("getCertificates");
                  v67 = [v1 handle];
                  v68 = [v67 info];
                  v69 = [v68 ecdsaCertificate];
                  v70 = [v69 UTF8String];
                  *buf = 67110146;
                  v118 = v64;
                  v119 = 2082;
                  v120 = v65;
                  v121 = 2082;
                  v122 = v66;
                  v123 = 1024;
                  v124 = 49;
                  v125 = 2080;
                  v126 = v70;
                  _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to decrypt ECDSA cert : %s", buf, 0x2Cu);
                }
              }
            }

            v71 = [v1 handle];
            v72 = [v71 info];
            v73 = [v72 eckaCertificate];

            if (!v73)
            {
              goto LABEL_50;
            }

            v74 = [v1 handle];
            v75 = [v74 info];
            v76 = [v75 eckaCertificate];
            v77 = [NSData NF_dataWithHexString:v76];

            if (v77)
            {
              v78 = [v1 handle];
              v79 = [v78 info];
              v80 = [v79 eckaCertificate];
              v81 = [NSData NF_dataWithHexString:v80];
              [v2 setObject:v81 forKey:@"ECKA"];
            }

            else
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v82 = NFLogGetLogger();
              if (v82)
              {
                v83 = v82;
                v84 = object_getClass(v1);
                v85 = class_isMetaClass(v84);
                v86 = object_getClassName(v1);
                v87 = sel_getName("getCertificates");
                v88 = [v1 handle];
                v89 = [v88 info];
                v90 = [v89 eckaCertificate];
                v115 = [v90 UTF8String];
                v91 = 45;
                if (v85)
                {
                  v91 = 43;
                }

                v83(3, "%c[%{public}s %{public}s]:%i Failed to decrypt ECKA cert : %s", v91, v86, v87, 56, v115);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v78 = NFSharedLogGetLogger();
              if (!os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_49;
              }

              v92 = object_getClass(v1);
              if (class_isMetaClass(v92))
              {
                v93 = 43;
              }

              else
              {
                v93 = 45;
              }

              v94 = object_getClassName(v1);
              v95 = sel_getName("getCertificates");
              v79 = [v1 handle];
              v96 = [v79 info];
              v97 = [v96 eckaCertificate];
              v98 = [v97 UTF8String];
              *buf = 67110146;
              v118 = v93;
              v119 = 2082;
              v120 = v94;
              v121 = 2082;
              v122 = v95;
              v123 = 1024;
              v124 = 56;
              v125 = 2080;
              v126 = v98;
              _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to decrypt ECKA cert : %s", buf, 0x2Cu);
            }

LABEL_49:
LABEL_50:
            v1 = v2;
LABEL_51:

            goto LABEL_52;
          }
        }

        goto LABEL_10;
      }

      v3 = [v1 delegate];
      [v3 updateSeInfo:v1];
    }

    goto LABEL_6;
  }

LABEL_52:

  return v1;
}

BOOL sub_100092D68(id *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 1;
  while (1)
  {
    v5 = v4;
    v6 = *(&unk_100296D68 + v3);
    v7 = sub_100158F70(a1, 254, *(&unk_100296D68 + v3));
    v53 = v7 != 0;
    v54 = v7;
    if (v7)
    {
      break;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("getAvailableMemory:");
      if (isMetaClass)
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      v9(4, "%c[%{public}s %{public}s]:%i Failed to get memory info with subtag:0x%x", v12, ClassName, Name, 75, v6);
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

      v16 = object_getClassName(a1);
      v17 = sel_getName("getAvailableMemory:");
      *buf = 67110146;
      v62 = v15;
      v63 = 2082;
      v64 = v16;
      v65 = 2082;
      v66 = v17;
      v67 = 1024;
      v68 = 75;
      v69 = 1024;
      v70 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get memory info with subtag:0x%x", buf, 0x28u);
    }

    v4 = 0;
    v3 = 1;
    if ((v5 & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v18 = NFLogGetLogger();
      if (v18)
      {
        v19 = v18;
        v20 = object_getClass(a1);
        v21 = class_isMetaClass(v20);
        v22 = object_getClassName(a1);
        v51 = sel_getName("getAvailableMemory:");
        v23 = 45;
        if (v21)
        {
          v23 = 43;
        }

        v19(3, "%c[%{public}s %{public}s]:%i Failed to get memory info", v23, v22, v51, 79);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = object_getClass(a1);
        if (class_isMetaClass(v25))
        {
          v26 = 43;
        }

        else
        {
          v26 = 45;
        }

        v27 = object_getClassName(a1);
        v28 = sel_getName("getAvailableMemory:");
        *buf = 67109890;
        v62 = v26;
        v63 = 2082;
        v64 = v27;
        v65 = 2082;
        v66 = v28;
        v67 = 1024;
        v68 = 79;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get memory info", buf, 0x22u);
      }

      goto LABEL_55;
    }
  }

  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v24 = [NFTLV TLVsWithData:v7];
  v29 = [v24 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v57;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v57 != v31)
        {
          objc_enumerationMutation(v24);
        }

        v33 = *(*(&v56 + 1) + 8 * i);
        switch([v33 tag])
        {
          case 0u:
            *a2 = [v33 valueAsUnsignedLong];
            break;
          case 1u:
            *(a2 + 4) = [v33 valueAsUnsignedLong];
            break;
          case 2u:
            *(a2 + 8) = [v33 valueAsUnsignedLong];
            break;
          case 3u:
            *(a2 + 12) = [v33 valueAsUnsignedLong];
            break;
          case 4u:
            *(a2 + 16) = [v33 valueAsUnsignedLong];
            break;
          case 5u:
            *(a2 + 20) = [v33 valueAsUnsignedLong];
            break;
          case 6u:
            *(a2 + 24) = [v33 valueAsUnsignedLong];
            break;
          case 0xBu:
            continue;
          case 0xCu:
            *(a2 + 28) = [v33 valueAsUnsignedLong];
            break;
          case 0xDu:
            *(a2 + 32) = [v33 valueAsUnsignedLong];
            break;
          case 0xEu:
            *(a2 + 36) = [v33 valueAsUnsignedLong];
            break;
          case 0xFu:
            *(a2 + 40) = [v33 valueAsUnsignedLong];
            break;
          case 0x10u:
            *(a2 + 44) = [v33 valueAsUnsignedLong];
            break;
          case 0x11u:
            *(a2 + 48) = [v33 valueAsUnsignedLong];
            break;
          default:
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v34 = NFLogGetLogger();
            if (v34)
            {
              v35 = v34;
              v36 = object_getClass(a1);
              v37 = class_isMetaClass(v36);
              v38 = object_getClassName(a1);
              v39 = sel_getName("getAvailableMemory:");
              v52 = [v33 tag];
              v40 = 45;
              if (v37)
              {
                v40 = 43;
              }

              v35(4, "%c[%{public}s %{public}s]:%i Unknown tag 0x%x", v40, v38, v39, 145, v52);
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
              v45 = sel_getName("getAvailableMemory:");
              v46 = [v33 tag];
              *buf = 67110146;
              v62 = v43;
              v63 = 2082;
              v64 = v44;
              v65 = 2082;
              v66 = v45;
              v67 = 1024;
              v68 = 145;
              v69 = 1024;
              v70 = v46;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unknown tag 0x%x", buf, 0x28u);
            }

            break;
        }
      }

      v30 = [v24 countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v30);
  }

LABEL_55:
  v47 = v53;

  return v47;
}

id sub_1000933A8(id *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = sub_100158334(a1, 0, 136, 240, a3, a2, 0);
    v5 = v4;
    if (v4)
    {
      if ([v4 status] == 36864)
      {
        v6 = [v5 response];
LABEL_25:

        goto LABEL_26;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v20 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("signChallenge:authenticationType:");
        v30 = [v5 status];
        v25 = 45;
        if (isMetaClass)
        {
          v25 = 43;
        }

        v20(3, "%c[%{public}s %{public}s]:%i Returned error: 0x%04x", v25, ClassName, Name, 169, v30);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_24:

        v6 = 0;
        goto LABEL_25;
      }

      v26 = object_getClass(a1);
      if (class_isMetaClass(v26))
      {
        v27 = 43;
      }

      else
      {
        v27 = 45;
      }

      *buf = 67110146;
      v32 = v27;
      v33 = 2082;
      v34 = object_getClassName(a1);
      v35 = 2082;
      v36 = sel_getName("signChallenge:authenticationType:");
      v37 = 1024;
      v38 = 169;
      v39 = 1024;
      v40 = [v5 status];
      v16 = "%c[%{public}s %{public}s]:%i Returned error: 0x%04x";
      v17 = v13;
      v18 = 40;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v7 = NFLogGetLogger();
      if (v7)
      {
        v8 = v7;
        v9 = object_getClass(a1);
        v10 = class_isMetaClass(v9);
        v11 = object_getClassName(a1);
        v29 = sel_getName("signChallenge:authenticationType:");
        v12 = 45;
        if (v10)
        {
          v12 = 43;
        }

        v8(3, "%c[%{public}s %{public}s]:%i Command failed", v12, v11, v29, 165);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

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
      v32 = v15;
      v33 = 2082;
      v34 = object_getClassName(a1);
      v35 = 2082;
      v36 = sel_getName("signChallenge:authenticationType:");
      v37 = 1024;
      v38 = 165;
      v16 = "%c[%{public}s %{public}s]:%i Command failed";
      v17 = v13;
      v18 = 34;
    }

    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
    goto LABEL_24;
  }

  v6 = 0;
LABEL_26:

  return v6;
}

void sub_1000936E0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  v4 = [a1 driverWrapper];
  if (v4)
  {
    v5 = v4[173];

    if (v5)
    {
      if ((*(a1 + 362) & 1) == a2)
      {
        return;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v7 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("requestFieldDetectKeepAlive:");
        v12 = 45;
        if (isMetaClass)
        {
          v12 = 43;
        }

        v7(6, "%c[%{public}s %{public}s]:%i enable: %d, current=%d", v12, ClassName, Name, 37, a2, *(a1 + 362) & 1);
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
        v17 = sel_getName("requestFieldDetectKeepAlive:");
        v18 = *(a1 + 362) & 1;
        *buf = 67110402;
        v68 = v15;
        v69 = 2082;
        v70 = v16;
        v71 = 2082;
        v72 = v17;
        v73 = 1024;
        v74 = 37;
        v75 = 1024;
        LODWORD(v76[0]) = a2;
        WORD2(v76[0]) = 1024;
        *(v76 + 6) = v18;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i enable: %d, current=%d", buf, 0x2Eu);
      }

      v19 = [a1 driverWrapper];
      v20 = v19;
      if (a2)
      {
        v21 = sub_10021A4A0(v19, @"Field Detect", 1uLL);

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v22 = NFLogGetLogger();
        v23 = v22;
        if (v21)
        {
          if (v22)
          {
            v24 = object_getClass(a1);
            v25 = class_isMetaClass(v24);
            v62 = object_getClassName(a1);
            v63 = sel_getName("requestFieldDetectKeepAlive:");
            v26 = 45;
            if (v25)
            {
              v26 = 43;
            }

            v23(3, "%c[%{public}s %{public}s]:%i Failed to open session : %@", v26, v62, v63, 41, v21);
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
            v31 = sel_getName("requestFieldDetectKeepAlive:");
            *buf = 67110146;
            v68 = v29;
            v69 = 2082;
            v70 = v30;
            v71 = 2082;
            v72 = v31;
            v73 = 1024;
            v74 = 41;
            v75 = 2112;
            v76[0] = v21;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@", buf, 0x2Cu);
          }

          return;
        }

        if (v22)
        {
          v44 = object_getClass(a1);
          v45 = class_isMetaClass(v44);
          v46 = object_getClassName(a1);
          v65 = sel_getName("requestFieldDetectKeepAlive:");
          v47 = 45;
          if (v45)
          {
            v47 = 43;
          }

          v23(6, "%c[%{public}s %{public}s]:%i creating NFCD keep alive transaction for Field Detect", v47, v46, v65, 46);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v48 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
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
          v52 = sel_getName("requestFieldDetectKeepAlive:");
          *buf = 67109890;
          v68 = v50;
          v69 = 2082;
          v70 = v51;
          v71 = 2082;
          v72 = v52;
          v73 = 1024;
          v74 = 46;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i creating NFCD keep alive transaction for Field Detect", buf, 0x22u);
        }

        v43 = os_transaction_create();
        objc_storeStrong((a1 + 272), v43);
      }

      else
      {
        sub_10021CC94(v19, @"Field Detect");

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v32 = NFLogGetLogger();
        if (v32)
        {
          v33 = v32;
          v34 = object_getClass(a1);
          v35 = class_isMetaClass(v34);
          v36 = object_getClassName(a1);
          v64 = sel_getName("requestFieldDetectKeepAlive:");
          v37 = 45;
          if (v35)
          {
            v37 = 43;
          }

          v33(6, "%c[%{public}s %{public}s]:%i releasing NFCD keep alive transaction for Field Detect", v37, v36, v64, 51);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v38 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = object_getClass(a1);
          if (class_isMetaClass(v39))
          {
            v40 = 43;
          }

          else
          {
            v40 = 45;
          }

          v41 = object_getClassName(a1);
          v42 = sel_getName("requestFieldDetectKeepAlive:");
          *buf = 67109890;
          v68 = v40;
          v69 = 2082;
          v70 = v41;
          v71 = 2082;
          v72 = v42;
          v73 = 1024;
          v74 = 51;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i releasing NFCD keep alive transaction for Field Detect", buf, 0x22u);
        }

        v43 = *(a1 + 272);
        *(a1 + 272) = 0;
      }

      *(a1 + 362) = a2;
      return;
    }
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v53 = NFLogGetLogger();
  if (v53)
  {
    v54 = v53;
    v55 = object_getClass(a1);
    v56 = class_isMetaClass(v55);
    v57 = object_getClassName(a1);
    v66 = sel_getName("requestFieldDetectKeepAlive:");
    v58 = 45;
    if (v56)
    {
      v58 = 43;
    }

    v54(4, "%c[%{public}s %{public}s]:%i Device does not have antenna", v58, v57, v66, 28);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v59 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
  {
    v60 = object_getClass(a1);
    if (class_isMetaClass(v60))
    {
      v61 = 43;
    }

    else
    {
      v61 = 45;
    }

    *buf = 67109890;
    v68 = v61;
    v69 = 2082;
    v70 = object_getClassName(a1);
    v71 = 2082;
    v72 = sel_getName("requestFieldDetectKeepAlive:");
    v73 = 1024;
    v74 = 28;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Device does not have antenna", buf, 0x22u);
  }
}