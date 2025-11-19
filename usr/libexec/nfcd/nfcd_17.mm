NSObject *sub_1001FC4EC(id *a1, void *a2, void *a3, uint64_t a4, void *a5, unsigned int a6)
{
  v11 = a2;
  v12 = a3;
  v202 = a5;
  if (a1)
  {
    v209 = 0;
    v13 = sub_1001599F4(a1, &v209);
    v14 = v209;
    if (v14)
    {
      v15 = v14;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v17 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_authorizeAppletTransaction:forApplet:authType:authorization:uid:");
        v20 = 45;
        if (isMetaClass)
        {
          v20 = 43;
        }

        v17(3, "%c[%{public}s %{public}s]:%i Failed to select CRS: %{public}@", v20, ClassName, Name, 982, v15);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v21 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
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
        v25 = sel_getName("_authorizeAppletTransaction:forApplet:authType:authorization:uid:");
        *buf = 67110146;
        v231 = v23;
        v232 = 2082;
        v233 = v24;
        v234 = 2082;
        v235 = v25;
        v236 = 1024;
        v237 = 982;
        v238 = 2114;
        v239 = v15;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select CRS: %{public}@", buf, 0x2Cu);
      }

      goto LABEL_116;
    }

    if ([v13 status] != 36864)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v66 = NFLogGetLogger();
      if (v66)
      {
        v67 = v66;
        v68 = object_getClass(a1);
        v69 = class_isMetaClass(v68);
        v70 = v12;
        v71 = v11;
        v72 = object_getClassName(a1);
        v73 = sel_getName("_authorizeAppletTransaction:forApplet:authType:authorization:uid:");
        v180 = [v13 status];
        v173 = v72;
        v74 = 45;
        if (v69)
        {
          v74 = 43;
        }

        v11 = v71;
        v12 = v70;
        v67(3, "%c[%{public}s %{public}s]:%i Failed to select CRS, status=%x", v74, v173, v73, 986, v180);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v75 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        v76 = object_getClass(a1);
        if (class_isMetaClass(v76))
        {
          v77 = 43;
        }

        else
        {
          v77 = 45;
        }

        v78 = object_getClassName(a1);
        v79 = sel_getName("_authorizeAppletTransaction:forApplet:authType:authorization:uid:");
        v80 = [v13 status];
        *buf = 67110146;
        v231 = v77;
        v232 = 2082;
        v233 = v78;
        v234 = 2082;
        v235 = v79;
        v236 = 1024;
        v237 = 986;
        v238 = 1024;
        LODWORD(v239) = v80;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select CRS, status=%x", buf, 0x28u);
      }

      v81 = [NSError alloc];
      v21 = [NSString stringWithUTF8String:"nfcd"];
      v228 = NSLocalizedDescriptionKey;
      v82 = [NSString stringWithUTF8String:"Command Error"];
      v229 = v82;
      v83 = [NSDictionary dictionaryWithObjects:&v229 forKeys:&v228 count:1];
      v15 = [v81 initWithDomain:v21 code:16 userInfo:v83];

      goto LABEL_116;
    }

    v198 = v13;
    v26 = [[NSMutableData alloc] initWithLength:32];
    v201 = v11;
    CC_SHA256([v11 bytes], objc_msgSend(v11, "length"), objc_msgSend(v26, "mutableBytes"));
    v27 = objc_opt_new();
    v200 = v12;
    v28 = [v12 identifierAsData];
    v29 = [NFTLV TLVWithTag:79 value:v28];
    [v27 addObject:v29];

    v30 = objc_opt_new();
    v31 = [NFTLV TLVWithTag:2 unsignedChar:a4];
    [v30 addObject:v31];

    v199 = v26;
    v32 = [NFTLV TLVWithTag:4 value:v26];
    [v30 addObject:v32];

    v191 = v30;
    v190 = [NFTLV TLVWithTag:48 children:v30];
    v33 = [v190 asData];
    v34 = [NFTLV TLVWithTag:239 value:v33];

    [v27 addObject:v34];
    v197 = v27;
    v35 = [NFTLV TLVWithTag:228 children:v27];
    v36 = [v35 asData];
    v207 = 849024;
    v208 = [v36 length];
    v206 = 0;
    v37 = [[NSMutableData alloc] initWithCapacity:{objc_msgSend(v36, "length") + 6}];
    [v37 appendBytes:&v207 length:5];
    [v37 appendData:v36];
    [v37 appendBytes:&v206 length:1];
    v205 = 0;
    v38 = sub_10022B0E8(NFSSEWrapper, &v205);
    v39 = v205;
    v195 = v35;
    v196 = v34;
    v193 = v37;
    v194 = v36;
    v192 = v39;
    if (!v39 || v38)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v84 = NFLogGetLogger();
      if (v84)
      {
        v85 = v84;
        v86 = object_getClass(a1);
        v87 = class_isMetaClass(v86);
        v88 = object_getClassName(a1);
        v176 = sel_getName("_authorizeAppletTransaction:forApplet:authType:authorization:uid:");
        v89 = 45;
        if (v87)
        {
          v89 = 43;
        }

        v85(3, "%c[%{public}s %{public}s]:%i Failed to get host challenge", v89, v88, v176, 1040);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v90 = NFSharedLogGetLogger();
      v12 = v200;
      if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        v91 = object_getClass(a1);
        if (class_isMetaClass(v91))
        {
          v92 = 43;
        }

        else
        {
          v92 = 45;
        }

        v93 = object_getClassName(a1);
        v94 = sel_getName("_authorizeAppletTransaction:forApplet:authType:authorization:uid:");
        *buf = 67109890;
        v231 = v92;
        v232 = 2082;
        v233 = v93;
        v234 = 2082;
        v235 = v94;
        v236 = 1024;
        v237 = 1040;
        _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get host challenge", buf, 0x22u);
      }

      v95 = [NSError alloc];
      v96 = [NSString stringWithUTF8String:"nfcd"];
      if (v38)
      {
        v224 = NSLocalizedDescriptionKey;
        if (v38 >= 0x4C)
        {
          v97 = 76;
        }

        else
        {
          v97 = v38;
        }

        v98 = [NSString stringWithUTF8String:off_10031B938[v97]];
        v225 = v98;
        v99 = [NSDictionary dictionaryWithObjects:&v225 forKeys:&v224 count:1];
        v100 = v95;
        v101 = v96;
        v102 = v38;
      }

      else
      {
        v226 = NSLocalizedDescriptionKey;
        v98 = [NSString stringWithUTF8String:"Unknown Error"];
        v227 = v98;
        v99 = [NSDictionary dictionaryWithObjects:&v227 forKeys:&v226 count:1];
        v100 = v95;
        v101 = v96;
        v102 = 6;
      }

      v15 = [v100 initWithDomain:v101 code:v102 userInfo:v99];
      v103 = v96;
      v21 = 0;
      v104 = v199;
      v105 = v197;
      v65 = v190;
      v106 = v191;
      goto LABEL_115;
    }

    v40 = v39;
    v183 = a6;
    v204 = 0;
    v41 = sub_1000B7A20(a1, v39, &v204);
    v42 = v204;
    v189 = v42;
    if (v41)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v43 = NFLogGetLogger();
      if (v43)
      {
        v44 = v43;
        v45 = object_getClass(a1);
        v184 = class_isMetaClass(v45);
        v186 = object_getClassName(a1);
        v182 = sel_getName("_authorizeAppletTransaction:forApplet:authType:authorization:uid:");
        v46 = [NSError alloc];
        v47 = [NSString stringWithUTF8String:"nfcd"];
        v222 = NSLocalizedDescriptionKey;
        if (v41 >= 0x4C)
        {
          v48 = 76;
        }

        else
        {
          v48 = v41;
        }

        v49 = [NSString stringWithUTF8String:off_10031B938[v48]];
        v223 = v49;
        v50 = [NSDictionary dictionaryWithObjects:&v223 forKeys:&v222 count:1];
        v51 = [v46 initWithDomain:v47 code:v41 userInfo:v50];
        v52 = 45;
        if (v184)
        {
          v52 = 43;
        }

        v44(3, "%c[%{public}s %{public}s]:%i Failed to authenticate to CRS %{public}@", v52, v186, v182, 1051, v51);
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

        v187 = v55;
        v185 = object_getClassName(a1);
        v56 = sel_getName("_authorizeAppletTransaction:forApplet:authType:authorization:uid:");
        v57 = [NSError alloc];
        v58 = [NSString stringWithUTF8String:"nfcd"];
        v59 = v41;
        v60 = NSLocalizedDescriptionKey;
        v220 = NSLocalizedDescriptionKey;
        if (v41 >= 0x4C)
        {
          v61 = 76;
        }

        else
        {
          v61 = v41;
        }

        v62 = [NSString stringWithUTF8String:off_10031B938[v61]];
        v221 = v62;
        v63 = [NSDictionary dictionaryWithObjects:&v221 forKeys:&v220 count:1];
        v64 = [v57 initWithDomain:v58 code:v59 userInfo:v63];
        *buf = 67110146;
        v231 = v187;
        v232 = 2082;
        v233 = v185;
        v234 = 2082;
        v235 = v56;
        v236 = 1024;
        v237 = 1051;
        v238 = 2114;
        v239 = v64;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to authenticate to CRS %{public}@", buf, 0x2Cu);

        v65 = v190;
      }

      else
      {
        v60 = NSLocalizedDescriptionKey;
        v59 = v41;
        if (v41 >= 0x4C)
        {
          v61 = 76;
        }

        else
        {
          v61 = v41;
        }

        v65 = v190;
      }

      v124 = [NSError alloc];
      v125 = [NSString stringWithUTF8String:"nfcd"];
      v218 = v60;
      v188 = [NSString stringWithUTF8String:off_10031B938[v61]];
      v219 = v188;
      v123 = [NSDictionary dictionaryWithObjects:&v219 forKeys:&v218 count:1];
      v98 = v125;
      v15 = [v124 initWithDomain:v125 code:v59 userInfo:v123];
      v21 = 0;
      v104 = v199;
      v12 = v200;
      v105 = v197;
      v106 = v191;
      goto LABEL_114;
    }

    v107 = v42;
    if ([v42 length] <= 0xF)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v108 = NFLogGetLogger();
      if (v108)
      {
        v109 = v108;
        v110 = object_getClass(a1);
        v111 = class_isMetaClass(v110);
        v112 = object_getClassName(a1);
        v113 = sel_getName("_authorizeAppletTransaction:forApplet:authType:authorization:uid:");
        v181 = [v107 length];
        v114 = 45;
        if (v111)
        {
          v114 = 43;
        }

        v109(3, "%c[%{public}s %{public}s]:%i Initialize auth response too small: %lu", v114, v112, v113, 1056, v181);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v115 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
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
        v119 = sel_getName("_authorizeAppletTransaction:forApplet:authType:authorization:uid:");
        v120 = [v107 length];
        *buf = 67110146;
        v231 = v117;
        v232 = 2082;
        v233 = v118;
        v234 = 2082;
        v235 = v119;
        v236 = 1024;
        v237 = 1056;
        v238 = 2048;
        v239 = v120;
        _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Initialize auth response too small: %lu", buf, 0x2Cu);
      }

      v121 = [NSError alloc];
      v122 = [NSString stringWithUTF8String:"nfcd"];
      v216 = NSLocalizedDescriptionKey;
      v188 = [NSString stringWithUTF8String:"Command Error"];
      v217 = v188;
      v123 = [NSDictionary dictionaryWithObjects:&v217 forKeys:&v216 count:1];
      v98 = v122;
      v15 = [v121 initWithDomain:v122 code:16 userInfo:v123];
      v21 = 0;
      v104 = v199;
      v12 = v200;
      v105 = v197;
      goto LABEL_113;
    }

    v98 = [v107 subdataWithRange:{0, 8}];
    v126 = [v107 subdataWithRange:{8, 8}];
    v188 = v126;
    if (v98 && (v127 = v126) != 0)
    {
      v128 = [a1 serialNumberAsData];
      v123 = sub_10022C208(NFSSEWrapper, 6, v37, v183, v202, v128, 0, 0, v40, v98, v127, 0, 0, 0, 0);

      if (v123)
      {
        v203 = 0;
        v129 = sub_1001579EC(a1, v123, 0, &v203);
        v130 = v203;
        v131 = [NFResponseAPDU responseWithData:v129];

        if (v130)
        {
          v132 = v131;
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v133 = NFLogGetLogger();
          if (v133)
          {
            v134 = v133;
            v135 = object_getClass(a1);
            v136 = class_isMetaClass(v135);
            v174 = object_getClassName(a1);
            v177 = sel_getName("_authorizeAppletTransaction:forApplet:authType:authorization:uid:");
            v137 = 45;
            if (v136)
            {
              v137 = 43;
            }

            v134(3, "%c[%{public}s %{public}s]:%i signed authorized opaque to CRS failed: %{public}@", v137, v174, v177, 1094, v130);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v138 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
          {
            v139 = object_getClass(a1);
            if (class_isMetaClass(v139))
            {
              v140 = 43;
            }

            else
            {
              v140 = 45;
            }

            v141 = object_getClassName(a1);
            v142 = sel_getName("_authorizeAppletTransaction:forApplet:authType:authorization:uid:");
            *buf = 67110146;
            v231 = v140;
            v232 = 2082;
            v233 = v141;
            v234 = 2082;
            v235 = v142;
            v236 = 1024;
            v237 = 1094;
            v238 = 2114;
            v239 = v130;
            _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i signed authorized opaque to CRS failed: %{public}@", buf, 0x2Cu);
          }

          v21 = v130;
          v15 = v21;
          goto LABEL_112;
        }

        v132 = v131;
        if ([v131 status] == 36864)
        {
          v21 = 0;
          v15 = 0;
LABEL_112:
          v104 = v199;
          v12 = v200;
          v105 = v197;

LABEL_113:
          v65 = v190;
          v106 = v191;
LABEL_114:

          v99 = v188;
          v103 = v189;
LABEL_115:

          v11 = v201;
          v13 = v198;
LABEL_116:

          goto LABEL_117;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v158 = NFLogGetLogger();
        if (v158)
        {
          v159 = v158;
          v160 = object_getClass(a1);
          v161 = class_isMetaClass(v160);
          v162 = object_getClassName(a1);
          v179 = sel_getName("_authorizeAppletTransaction:forApplet:authType:authorization:uid:");
          v163 = 45;
          if (v161)
          {
            v163 = 43;
          }

          v159(3, "%c[%{public}s %{public}s]:%i Failed to execute opaque data, expecting RAPDU", v163, v162, v179, 1098);
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
          v168 = sel_getName("_authorizeAppletTransaction:forApplet:authType:authorization:uid:");
          *buf = 67109890;
          v231 = v166;
          v232 = 2082;
          v233 = v167;
          v234 = 2082;
          v235 = v168;
          v236 = 1024;
          v237 = 1098;
          _os_log_impl(&_mh_execute_header, v164, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to execute opaque data, expecting RAPDU", buf, 0x22u);
        }

        v169 = [NSError alloc];
        v155 = [NSString stringWithUTF8String:"nfcd"];
        v210 = NSLocalizedDescriptionKey;
        v157 = [NSString stringWithUTF8String:"Command Error"];
        v211 = v157;
        v170 = [NSDictionary dictionaryWithObjects:&v211 forKeys:&v210 count:1];
        v15 = [v169 initWithDomain:v155 code:16 userInfo:v170];
      }

      else
      {
        v156 = [NSError alloc];
        v132 = [NSString stringWithUTF8String:"nfcd"];
        v212 = NSLocalizedDescriptionKey;
        v155 = [NSString stringWithUTF8String:"Security Violation"];
        v213 = v155;
        v157 = [NSDictionary dictionaryWithObjects:&v213 forKeys:&v212 count:1];
        v15 = [v156 initWithDomain:v132 code:8 userInfo:v157];
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v143 = NFLogGetLogger();
      if (v143)
      {
        v144 = v143;
        v145 = object_getClass(a1);
        v146 = class_isMetaClass(v145);
        v147 = object_getClassName(a1);
        v178 = sel_getName("_authorizeAppletTransaction:forApplet:authType:authorization:uid:");
        v148 = 45;
        if (v146)
        {
          v148 = 43;
        }

        v144(3, "%c[%{public}s %{public}s]:%i Failed to get cardChallenge and cardCryptogram from CRS", v148, v147, v178, 1064);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v149 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
      {
        v150 = object_getClass(a1);
        if (class_isMetaClass(v150))
        {
          v151 = 43;
        }

        else
        {
          v151 = 45;
        }

        v152 = object_getClassName(a1);
        v153 = sel_getName("_authorizeAppletTransaction:forApplet:authType:authorization:uid:");
        *buf = 67109890;
        v231 = v151;
        v232 = 2082;
        v233 = v152;
        v234 = 2082;
        v235 = v153;
        v236 = 1024;
        v237 = 1064;
        _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get cardChallenge and cardCryptogram from CRS", buf, 0x22u);
      }

      v154 = [NSError alloc];
      v123 = [NSString stringWithUTF8String:"nfcd"];
      v214 = NSLocalizedDescriptionKey;
      v132 = [NSString stringWithUTF8String:"Command Error"];
      v215 = v132;
      v155 = [NSDictionary dictionaryWithObjects:&v215 forKeys:&v214 count:1];
      v15 = [v154 initWithDomain:v123 code:16 userInfo:v155];
    }

    v21 = 0;
    goto LABEL_112;
  }

  v15 = 0;
LABEL_117:

  return v15;
}

uint64_t sub_1001FD9E0(id *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v174 = 0;
  v4 = sub_1001599F4(a1, &v174);
  v5 = v174;
  v6 = v5;
  if (v5)
  {
    if ([v5 code])
    {
      v7 = [v6 code];
    }

    else
    {
      v7 = 16;
    }

    goto LABEL_52;
  }

  if ((sub_1000B6574(a1, 0) & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_effaceAuthorization:");
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v9(4, "%c[%{public}s %{public}s]:%i Failed to mark-all-for-delete", v13, ClassName, Name, 1129);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = object_getClass(a1);
      if (class_isMetaClass(v15))
      {
        v16 = 43;
      }

      else
      {
        v16 = 45;
      }

      v17 = object_getClassName(a1);
      v18 = sel_getName("_effaceAuthorization:");
      *buf = 67109890;
      v176 = v16;
      v177 = 2082;
      v178 = v17;
      v179 = 2082;
      v180 = v18;
      v181 = 1024;
      v182 = 1129;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to mark-all-for-delete", buf, 0x22u);
    }
  }

  objc_opt_self();
  v19 = byte_10035DB90;
  kdebug_trace();
  v20 = NFSharedSignpostLog();
  if (os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "sseResetAuthRandom in", buf, 2u);
  }

  v21 = [a1 serialNumberAsData];
  v172 = 0;
  v173 = 0;
  v7 = sub_10022A938(NFSSEWrapper, v21, a2, &v173, &v172, v19);
  v22 = v173;
  v23 = v172;

  kdebug_trace();
  v24 = NFSharedSignpostLog();
  if (os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "sseResetAuthRandom out", buf, 2u);
  }

  if (v7)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFLogGetLogger();
    if (v25)
    {
      v26 = v25;
      v27 = object_getClass(a1);
      v28 = class_isMetaClass(v27);
      v29 = object_getClassName(a1);
      v159 = sel_getName("_effaceAuthorization:");
      v30 = 45;
      if (v28)
      {
        v30 = 43;
      }

      v26(3, "%c[%{public}s %{public}s]:%i Failed to reset auth random", v30, v29, v159, 1144);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v31 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_51;
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
    v35 = sel_getName("_effaceAuthorization:");
    *buf = 67109890;
    v176 = v33;
    v177 = 2082;
    v178 = v34;
    v179 = 2082;
    v180 = v35;
    v181 = 1024;
    v182 = 1144;
    v36 = "%c[%{public}s %{public}s]:%i Failed to reset auth random";
    v37 = v31;
    v38 = 34;
    goto LABEL_50;
  }

  if (v19)
  {
    v39 = sub_1000B6A7C(a1, v22, v23);
  }

  else
  {
    v39 = sub_1000B6F74(a1, v22, v23);
  }

  v7 = v39;
  if (!v39)
  {
    kdebug_trace();
    v55 = NFSharedSignpostLog();
    if (os_signpost_enabled(v55))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v55, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "sseGetHostChallenge in", buf, 2u);
    }

    v171 = 0;
    v56 = sub_10022B0E8(NFSSEWrapper, &v171);
    v31 = v171;
    kdebug_trace();
    v57 = NFSharedSignpostLog();
    if (os_signpost_enabled(v57))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v57, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "sseGetHostChallenge out", buf, 2u);
    }

    if (!v31 || v56)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v74 = NFLogGetLogger();
      if (v74)
      {
        v75 = v74;
        v76 = object_getClass(a1);
        v77 = class_isMetaClass(v76);
        v78 = object_getClassName(a1);
        v160 = sel_getName("_effaceAuthorization:");
        v79 = 45;
        if (v77)
        {
          v79 = 43;
        }

        v75(3, "%c[%{public}s %{public}s]:%i Failed to get host challenge", v79, v78, v160, 1167);
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
        v84 = sel_getName("_effaceAuthorization:");
        *buf = 67109890;
        v176 = v82;
        v177 = 2082;
        v178 = v83;
        v179 = 2082;
        v180 = v84;
        v181 = 1024;
        v182 = 1167;
        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get host challenge", buf, 0x22u);
      }

      if (v56)
      {
        v7 = v56;
      }

      else
      {
        v7 = 6;
      }

      goto LABEL_51;
    }

    if ([v31 length]!= 8)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v85 = NFLogGetLogger();
      if (v85)
      {
        v86 = v85;
        v87 = object_getClass(a1);
        v88 = class_isMetaClass(v87);
        v89 = object_getClassName(a1);
        v90 = sel_getName("_effaceAuthorization:");
        v162 = [v31 length];
        v91 = 45;
        if (v88)
        {
          v91 = 43;
        }

        v86(3, "%c[%{public}s %{public}s]:%i Invalid host challenge length: %lu", v91, v89, v90, 1173, v162);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v92 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        v93 = object_getClass(a1);
        if (class_isMetaClass(v93))
        {
          v94 = 43;
        }

        else
        {
          v94 = 45;
        }

        v95 = object_getClassName(a1);
        v96 = sel_getName("_effaceAuthorization:");
        v97 = [v31 length];
        *buf = 67110146;
        v176 = v94;
        v177 = 2082;
        v178 = v95;
        v179 = 2082;
        v180 = v96;
        v181 = 1024;
        v182 = 1173;
        v183 = 2048;
        v184 = v97;
        _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid host challenge length: %lu", buf, 0x2Cu);
      }

      v7 = 13;
      goto LABEL_51;
    }

    v170 = 0;
    v7 = sub_1000B7A20(a1, v31, &v170);
    v58 = v170;
    v167 = v58;
    if (v7)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v59 = NFLogGetLogger();
      if (v59)
      {
        v60 = v59;
        v61 = object_getClass(a1);
        v62 = class_isMetaClass(v61);
        v63 = object_getClassName(a1);
        v64 = sel_getName("_effaceAuthorization:");
        if (v7 >= 0x4C)
        {
          v65 = 76;
        }

        else
        {
          v65 = v7;
        }

        v165 = off_10031B938[v65];
        v66 = 43;
        if (!v62)
        {
          v66 = 45;
        }

        v60(3, "%c[%{public}s %{public}s]:%i %@ err=%d %s", v66, v63, v64, 1181, @"Failed to authenticate", v7, v165);
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
        v71 = sel_getName("_effaceAuthorization:");
        if (v7 >= 0x4C)
        {
          v72 = 76;
        }

        else
        {
          v72 = v7;
        }

        v73 = off_10031B938[v72];
        *buf = 67110658;
        v176 = v69;
        v177 = 2082;
        v178 = v70;
        v179 = 2082;
        v180 = v71;
        v181 = 1024;
        v182 = 1181;
        v183 = 2112;
        v184 = @"Failed to authenticate";
        v185 = 1024;
        v186 = v7;
        v187 = 2080;
        v188 = v73;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@ err=%d %s", buf, 0x3Cu);
      }

      goto LABEL_153;
    }

    if ([v58 length] != 16)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v117 = NFLogGetLogger();
      if (v117)
      {
        v118 = v117;
        v119 = object_getClass(a1);
        v120 = class_isMetaClass(v119);
        v121 = object_getClassName(a1);
        v122 = sel_getName("_effaceAuthorization:");
        v163 = [v167 length];
        v123 = 45;
        if (v120)
        {
          v123 = 43;
        }

        v118(3, "%c[%{public}s %{public}s]:%i Invalid authenticate response length: %lu", v123, v121, v122, 1185, v163);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v124 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
      {
        v125 = object_getClass(a1);
        if (class_isMetaClass(v125))
        {
          v126 = 43;
        }

        else
        {
          v126 = 45;
        }

        v127 = object_getClassName(a1);
        v128 = sel_getName("_effaceAuthorization:");
        v129 = [v167 length];
        *buf = 67110146;
        v176 = v126;
        v177 = 2082;
        v178 = v127;
        v179 = 2082;
        v180 = v128;
        v181 = 1024;
        v182 = 1185;
        v183 = 2048;
        v184 = v129;
        _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid authenticate response length: %lu", buf, 0x2Cu);
      }

      v7 = 13;
      goto LABEL_153;
    }

    v169 = 0;
    kdebug_trace();
    v98 = NFSharedSignpostLog();
    if (os_signpost_enabled(v98))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v98, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "sseGetAuthorizationTimeout in", buf, 2u);
    }

    v99 = [a1 serialNumberAsData];
    v168 = v23;
    v100 = sub_10022AE54(NFSSEWrapper, v99, a2, v31, v167, &v169, &v168);
    v101 = v168;

    kdebug_trace();
    v102 = NFSharedSignpostLog();
    if (os_signpost_enabled(v102))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v102, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "sseGetAuthorizationTimeout out", buf, 2u);
    }

    if (v100)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v103 = NFLogGetLogger();
      if (v103)
      {
        v104 = v103;
        v105 = object_getClass(a1);
        v106 = class_isMetaClass(v105);
        v107 = object_getClassName(a1);
        v161 = sel_getName("_effaceAuthorization:");
        v108 = 45;
        if (v106)
        {
          v108 = 43;
        }

        v104(4, "%c[%{public}s %{public}s]:%i Failed to get auth timeout", v108, v107, v161, 1203);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v109 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_151;
      }

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
      v113 = sel_getName("_effaceAuthorization:");
      *buf = 67109890;
      v176 = v111;
      v177 = 2082;
      v178 = v112;
      v179 = 2082;
      v180 = v113;
      v181 = 1024;
      v182 = 1203;
      v114 = "%c[%{public}s %{public}s]:%i Failed to get auth timeout";
      v115 = v109;
      v116 = 34;
    }

    else
    {
      v130 = sub_1000B74A4(a1, v169, v31, v101);
      if (!v130)
      {
LABEL_152:
        v7 = 0;
        v23 = v101;
LABEL_153:

        goto LABEL_51;
      }

      v131 = v130;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v132 = NFLogGetLogger();
      if (v132)
      {
        v133 = v132;
        v134 = object_getClass(a1);
        v135 = class_isMetaClass(v134);
        v136 = object_getClassName(a1);
        v137 = sel_getName("_effaceAuthorization:");
        v138 = 45;
        if (v135)
        {
          v138 = 43;
        }

        v133(4, "%c[%{public}s %{public}s]:%i Failed to set auth timeout = %d", v138, v136, v137, 1212, v169);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v139 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
      {
        v140 = object_getClass(a1);
        if (class_isMetaClass(v140))
        {
          v141 = 43;
        }

        else
        {
          v141 = 45;
        }

        v142 = object_getClassName(a1);
        v143 = sel_getName("_effaceAuthorization:");
        *buf = 67110146;
        v176 = v141;
        v177 = 2082;
        v178 = v142;
        v179 = 2082;
        v180 = v143;
        v181 = 1024;
        v182 = 1212;
        v183 = 1024;
        LODWORD(v184) = v169;
        _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set auth timeout = %d", buf, 0x28u);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v144 = NFLogGetLogger();
      if (v144)
      {
        v145 = v144;
        v146 = object_getClass(a1);
        v147 = class_isMetaClass(v146);
        v148 = object_getClassName(a1);
        v149 = sel_getName("_effaceAuthorization:");
        if (v131 >= 0x4C)
        {
          v150 = 76;
        }

        else
        {
          v150 = v131;
        }

        v166 = off_10031B938[v150];
        v151 = 43;
        if (!v147)
        {
          v151 = 45;
        }

        v145(3, "%c[%{public}s %{public}s]:%i %@ err=%d %s", v151, v148, v149, 1213, @"Returned", v131, v166);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v109 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
      {
LABEL_151:

        goto LABEL_152;
      }

      v152 = object_getClass(a1);
      if (class_isMetaClass(v152))
      {
        v153 = 43;
      }

      else
      {
        v153 = 45;
      }

      v154 = object_getClassName(a1);
      v155 = sel_getName("_effaceAuthorization:");
      if (v131 >= 0x4C)
      {
        v156 = 76;
      }

      else
      {
        v156 = v131;
      }

      v157 = off_10031B938[v156];
      *buf = 67110658;
      v176 = v153;
      v177 = 2082;
      v178 = v154;
      v179 = 2082;
      v180 = v155;
      v181 = 1024;
      v182 = 1213;
      v183 = 2112;
      v184 = @"Returned";
      v185 = 1024;
      v186 = v131;
      v187 = 2080;
      v188 = v157;
      v114 = "%c[%{public}s %{public}s]:%i %@ err=%d %s";
      v115 = v109;
      v116 = 60;
    }

    _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_ERROR, v114, buf, v116);
    goto LABEL_151;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v40 = NFLogGetLogger();
  if (v40)
  {
    v41 = v40;
    v42 = object_getClass(a1);
    v43 = class_isMetaClass(v42);
    v44 = object_getClassName(a1);
    v45 = sel_getName("_effaceAuthorization:");
    if (v7 >= 0x4C)
    {
      v46 = 76;
    }

    else
    {
      v46 = v7;
    }

    v164 = off_10031B938[v46];
    v47 = 43;
    if (!v43)
    {
      v47 = 45;
    }

    v41(3, "%c[%{public}s %{public}s]:%i %@ err=%d %s", v47, v44, v45, 1155, @"Failed to set auth random", v7, v164);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v31 = NFSharedLogGetLogger();
  if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_51;
  }

  v48 = object_getClass(a1);
  if (class_isMetaClass(v48))
  {
    v49 = 43;
  }

  else
  {
    v49 = 45;
  }

  v50 = object_getClassName(a1);
  v51 = sel_getName("_effaceAuthorization:");
  if (v7 >= 0x4C)
  {
    v52 = 76;
  }

  else
  {
    v52 = v7;
  }

  v53 = off_10031B938[v52];
  *buf = 67110658;
  v176 = v49;
  v177 = 2082;
  v178 = v50;
  v179 = 2082;
  v180 = v51;
  v181 = 1024;
  v182 = 1155;
  v183 = 2112;
  v184 = @"Failed to set auth random";
  v185 = 1024;
  v186 = v7;
  v187 = 2080;
  v188 = v53;
  v36 = "%c[%{public}s %{public}s]:%i %@ err=%d %s";
  v37 = v31;
  v38 = 60;
LABEL_50:
  _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, v36, buf, v38);
LABEL_51:

LABEL_52:
  return v7;
}

uint64_t sub_1001FEB84(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = v7;
  if (!a1)
  {
    v27 = 0;
    goto LABEL_65;
  }

  if (!v7)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v20 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("signChallenge:authenticationType:value:");
      v24 = 45;
      if (isMetaClass)
      {
        v24 = 43;
      }

      v20(3, "%c[%{public}s %{public}s]:%i Invalid challenge string", v24, ClassName, Name, 1229);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

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
    v76 = v26;
    v77 = 2082;
    v78 = object_getClassName(a1);
    v79 = 2082;
    v80 = sel_getName("signChallenge:authenticationType:value:");
    v81 = 1024;
    v82 = 1229;
    v18 = "%c[%{public}s %{public}s]:%i Invalid challenge string";
    goto LABEL_22;
  }

  if ([v7 length] < 0xB1)
  {
    v28 = [[NSData alloc] initWithBytes:&unk_100297BA0 length:12];
    v74 = 0;
    v29 = sub_100158A6C(a1, v28, &v74);
    v15 = v74;

    if (v29)
    {
      if ([v29 status] == 36864)
      {
        v30 = sub_1000933A8(a1, v8, a3);
        v31 = v30;
        if (v30)
        {
          v32 = v30;
          v27 = 0;
          *a4 = v31;
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v56 = NFLogGetLogger();
          if (v56)
          {
            v57 = v56;
            v58 = object_getClass(a1);
            v59 = class_isMetaClass(v58);
            v60 = object_getClassName(a1);
            v72 = sel_getName("signChallenge:authenticationType:value:");
            v61 = 45;
            if (v59)
            {
              v61 = 43;
            }

            v57(3, "%c[%{public}s %{public}s]:%i Failed to get signature", v61, v60, v72, 1255);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v62 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
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
            v66 = sel_getName("signChallenge:authenticationType:value:");
            *buf = 67109890;
            v76 = v64;
            v77 = 2082;
            v78 = v65;
            v79 = 2082;
            v80 = v66;
            v81 = 1024;
            v82 = 1255;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get signature", buf, 0x22u);
          }

          v27 = 16;
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v43 = NFLogGetLogger();
        if (v43)
        {
          v44 = v43;
          v45 = object_getClass(a1);
          v46 = class_isMetaClass(v45);
          v47 = object_getClassName(a1);
          v48 = sel_getName("signChallenge:authenticationType:value:");
          v73 = [v29 status];
          v49 = 45;
          if (v46)
          {
            v49 = 43;
          }

          v44(3, "%c[%{public}s %{public}s]:%i Failed to select CASD: 0x%04x", v49, v47, v48, 1245, v73);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v50 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v51 = object_getClass(a1);
          if (class_isMetaClass(v51))
          {
            v52 = 43;
          }

          else
          {
            v52 = 45;
          }

          v53 = object_getClassName(a1);
          v54 = sel_getName("signChallenge:authenticationType:value:");
          v55 = [v29 status];
          *buf = 67110146;
          v76 = v52;
          v77 = 2082;
          v78 = v53;
          v79 = 2082;
          v80 = v54;
          v81 = 1024;
          v82 = 1245;
          v83 = 1024;
          LODWORD(v84) = v55;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select CASD: 0x%04x", buf, 0x28u);
        }

        if ([v29 status] == 26277)
        {
          v27 = 24;
        }

        else
        {
          v27 = 16;
        }
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v33 = NFLogGetLogger();
      if (v33)
      {
        v34 = v33;
        v35 = object_getClass(a1);
        v36 = class_isMetaClass(v35);
        v68 = object_getClassName(a1);
        v71 = sel_getName("signChallenge:authenticationType:value:");
        v37 = 45;
        if (v36)
        {
          v37 = 43;
        }

        v34(3, "%c[%{public}s %{public}s]:%i Failed to select CRS: %{public}@", v37, v68, v71, 1241, v15);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v38 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
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
        v42 = sel_getName("signChallenge:authenticationType:value:");
        *buf = 67110146;
        v76 = v40;
        v77 = 2082;
        v78 = v41;
        v79 = 2082;
        v80 = v42;
        v81 = 1024;
        v82 = 1241;
        v83 = 2114;
        v84 = v15;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select CRS: %{public}@", buf, 0x2Cu);
      }

      if ([v15 code])
      {
        v27 = [v15 code];
      }

      else
      {
        v27 = 16;
      }
    }

    goto LABEL_64;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v9 = NFLogGetLogger();
  if (v9)
  {
    v10 = v9;
    v11 = object_getClass(a1);
    v12 = class_isMetaClass(v11);
    v13 = object_getClassName(a1);
    v69 = sel_getName("signChallenge:authenticationType:value:");
    v14 = 45;
    if (v12)
    {
      v14 = 43;
    }

    v10(3, "%c[%{public}s %{public}s]:%i challenge for signing is too large", v14, v13, v69, 1233);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = object_getClass(a1);
    if (class_isMetaClass(v16))
    {
      v17 = 43;
    }

    else
    {
      v17 = 45;
    }

    *buf = 67109890;
    v76 = v17;
    v77 = 2082;
    v78 = object_getClassName(a1);
    v79 = 2082;
    v80 = sel_getName("signChallenge:authenticationType:value:");
    v81 = 1024;
    v82 = 1233;
    v18 = "%c[%{public}s %{public}s]:%i challenge for signing is too large";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v18, buf, 0x22u);
  }

LABEL_23:
  v27 = 10;
LABEL_64:

LABEL_65:
  return v27;
}

id *sub_1001FF2B8(id *a1, void *a2, void *a3)
{
  v3 = a1;
  if (a1)
  {
    if (a2 && a3)
    {
      v43 = 0;
      v6 = [a1 serialNumberAsData];
      v7 = sub_10022CE54(NFSSEWrapper, &v43, v6);
      v8 = v43;

      if (v7)
      {
        v9 = v7;
LABEL_31:
        v3 = v9;

        v8 = v3;
        goto LABEL_32;
      }

      if ([v8 length] > 0xF)
      {
        v42 = 0;
        v37 = sub_1001599F4(v3, &v42);
        v38 = v42;
        if (!v38)
        {
          v38 = sub_1000BA8CC(v3, v8, a3);
          if (!v38)
          {
            [v8 subdataWithRange:{0, objc_msgSend(v8, "length") - 16}];
            *a2 = v3 = 0;
            goto LABEL_32;
          }
        }

        v9 = v38;
        goto LABEL_31;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v23 = Logger;
        Class = object_getClass(v3);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v3);
        Name = sel_getName("getPlatformData:withSignature:");
        v41 = [v8 length];
        v28 = 45;
        if (isMetaClass)
        {
          v28 = 43;
        }

        v23(3, "%c[%{public}s %{public}s]:%i Invalid platform data length %lu", v28, ClassName, Name, 1280, v41);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v29 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = object_getClass(v3);
        if (class_isMetaClass(v30))
        {
          v31 = 43;
        }

        else
        {
          v31 = 45;
        }

        v32 = object_getClassName(v3);
        v33 = sel_getName("getPlatformData:withSignature:");
        v34 = [v8 length];
        *buf = 67110146;
        v47 = v31;
        v48 = 2082;
        v49 = v32;
        v50 = 2082;
        v51 = v33;
        v52 = 1024;
        v53 = 1280;
        v54 = 2048;
        v55 = v34;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid platform data length %lu", buf, 0x2Cu);
      }

      v35 = [NSError alloc];
      v20 = [NSString stringWithUTF8String:"nfcd"];
      v44 = NSLocalizedDescriptionKey;
      v21 = [NSString stringWithUTF8String:"Unexpected Result"];
      v45 = v21;
      v36 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v3 = [v35 initWithDomain:v20 code:13 userInfo:v36];
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v10 = NFLogGetLogger();
      if (v10)
      {
        v11 = v10;
        v12 = object_getClass(v3);
        v13 = class_isMetaClass(v12);
        v14 = object_getClassName(v3);
        v40 = sel_getName("getPlatformData:withSignature:");
        v15 = 45;
        if (v13)
        {
          v15 = 43;
        }

        v11(3, "%c[%{public}s %{public}s]:%i Invalid parameter", v15, v14, v40, 1269);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v16 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = object_getClass(v3);
        if (class_isMetaClass(v17))
        {
          v18 = 43;
        }

        else
        {
          v18 = 45;
        }

        *buf = 67109890;
        v47 = v18;
        v48 = 2082;
        v49 = object_getClassName(v3);
        v50 = 2082;
        v51 = sel_getName("getPlatformData:withSignature:");
        v52 = 1024;
        v53 = 1269;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid parameter", buf, 0x22u);
      }

      v19 = [NSError alloc];
      v8 = [NSString stringWithUTF8String:"nfcd"];
      v56 = NSLocalizedDescriptionKey;
      v20 = [NSString stringWithUTF8String:"Invalid Parameter"];
      v57 = v20;
      v21 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v3 = [v19 initWithDomain:v8 code:10 userInfo:v21];
    }

LABEL_32:
  }

  return v3;
}

uint64_t sub_1001FF7BC(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(a1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(a1);
    Name = sel_getName("_validateSEAndSEPPairing:");
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Validating pairing for uid %d", v8, ClassName, Name, 1304, a2);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = object_getClass(a1);
    if (class_isMetaClass(v10))
    {
      v11 = 43;
    }

    else
    {
      v11 = 45;
    }

    *buf = 67110146;
    v109 = v11;
    v110 = 2082;
    v111 = object_getClassName(a1);
    v112 = 2082;
    v113 = sel_getName("_validateSEAndSEPPairing:");
    v114 = 1024;
    v115 = 1304;
    v116 = 1024;
    LODWORD(v117) = a2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Validating pairing for uid %d", buf, 0x28u);
  }

  kdebug_trace();
  v12 = NFSharedSignpostLog();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "sseGetHostChallenge in", buf, 2u);
  }

  v107 = 0;
  v13 = sub_10022B0E8(NFSSEWrapper, &v107);
  v14 = v107;
  kdebug_trace();
  v15 = NFSharedSignpostLog();
  if (os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "sseGetHostChallenge out", buf, 2u);
  }

  if (!v14 || v13)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFLogGetLogger();
    if (v20)
    {
      v21 = v20;
      v22 = object_getClass(a1);
      v23 = class_isMetaClass(v22);
      v24 = object_getClassName(a1);
      v96 = sel_getName("_validateSEAndSEPPairing:");
      v25 = 45;
      if (v23)
      {
        v25 = 43;
      }

      v21(3, "%c[%{public}s %{public}s]:%i Failed to get host challenge", v25, v24, v96, 1314);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = object_getClass(a1);
      if (class_isMetaClass(v27))
      {
        v28 = 43;
      }

      else
      {
        v28 = 45;
      }

      v29 = object_getClassName(a1);
      v30 = sel_getName("_validateSEAndSEPPairing:");
      *buf = 67109890;
      v109 = v28;
      v110 = 2082;
      v111 = v29;
      v112 = 2082;
      v113 = v30;
      v114 = 1024;
      v115 = 1314;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get host challenge", buf, 0x22u);
    }

    if (v13)
    {
      v19 = v13;
    }

    else
    {
      v19 = 6;
    }
  }

  else if ([v14 length] == 8)
  {
    v106 = 0;
    v16 = sub_1001599F4(a1, &v106);
    v17 = v106;
    v18 = v17;
    if (v17)
    {
      if ([v17 code])
      {
        v19 = [v18 code];
      }

      else
      {
        v19 = 16;
      }
    }

    else
    {
      v105 = 0;
      v19 = sub_1000B7A20(a1, v14, &v105);
      v44 = v105;
      v45 = v44;
      if (v19)
      {
        v101 = v44;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v46 = NFLogGetLogger();
        if (v46)
        {
          v47 = v46;
          v48 = object_getClass(a1);
          v49 = class_isMetaClass(v48);
          v50 = object_getClassName(a1);
          v51 = sel_getName("_validateSEAndSEPPairing:");
          if (v19 >= 0x4C)
          {
            v52 = 76;
          }

          else
          {
            v52 = v19;
          }

          v100 = off_10031B938[v52];
          v53 = 43;
          if (!v49)
          {
            v53 = 45;
          }

          v47(3, "%c[%{public}s %{public}s]:%i %@ err=%d %s", v53, v50, v51, 1332, @"Failed to authenticate", v19, v100);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v54 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v55 = object_getClass(a1);
          if (class_isMetaClass(v55))
          {
            v56 = 43;
          }

          else
          {
            v56 = 45;
          }

          v57 = object_getClassName(a1);
          v58 = sel_getName("_validateSEAndSEPPairing:");
          if (v19 >= 0x4C)
          {
            v59 = 76;
          }

          else
          {
            v59 = v19;
          }

          v60 = off_10031B938[v59];
          *buf = 67110658;
          v109 = v56;
          v110 = 2082;
          v111 = v57;
          v112 = 2082;
          v113 = v58;
          v114 = 1024;
          v115 = 1332;
          v116 = 2112;
          v117 = @"Failed to authenticate";
          v118 = 1024;
          v119 = v19;
          v120 = 2080;
          v121 = v60;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@ err=%d %s", buf, 0x3Cu);
        }

        v45 = v101;
      }

      else if ([v44 length] == 16)
      {
        v104 = 0;
        kdebug_trace();
        v61 = NFSharedSignpostLog();
        if (os_signpost_enabled(v61))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v61, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "sseGetAuthorizationTimeout in", buf, 2u);
        }

        v62 = [a1 serialNumberAsData];
        v103 = 0;
        v19 = sub_10022AE54(NFSSEWrapper, v62, a2, v14, v45, &v104, &v103);
        v63 = v103;

        kdebug_trace();
        v64 = NFSharedSignpostLog();
        if (os_signpost_enabled(v64))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v64, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "sseGetAuthorizationTimeout out", buf, 2u);
        }

        if (v19)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v65 = NFLogGetLogger();
          if (v65)
          {
            v66 = v65;
            v67 = object_getClass(a1);
            v68 = class_isMetaClass(v67);
            v102 = v63;
            v69 = object_getClassName(a1);
            v97 = sel_getName("_validateSEAndSEPPairing:");
            v70 = 45;
            if (v68)
            {
              v70 = 43;
            }

            v94 = v69;
            v63 = v102;
            v66(3, "%c[%{public}s %{public}s]:%i Failed to validate challenge response", v70, v94, v97, 1355);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v71 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            v72 = object_getClass(a1);
            v73 = v63;
            v74 = v45;
            if (class_isMetaClass(v72))
            {
              v75 = 43;
            }

            else
            {
              v75 = 45;
            }

            v76 = object_getClassName(a1);
            v77 = sel_getName("_validateSEAndSEPPairing:");
            *buf = 67109890;
            v109 = v75;
            v45 = v74;
            v63 = v73;
            v110 = 2082;
            v111 = v76;
            v112 = 2082;
            v113 = v77;
            v114 = 1024;
            v115 = 1355;
            _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to validate challenge response", buf, 0x22u);
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
          v83 = sel_getName("_validateSEAndSEPPairing:");
          v99 = [v45 length];
          v84 = 45;
          if (v81)
          {
            v84 = 43;
          }

          v79(3, "%c[%{public}s %{public}s]:%i Invalid authenticate response length: %lu", v84, v82, v83, 1336, v99);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v85 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          v86 = object_getClass(a1);
          v87 = v45;
          if (class_isMetaClass(v86))
          {
            v88 = 43;
          }

          else
          {
            v88 = 45;
          }

          v89 = object_getClassName(a1);
          v90 = sel_getName("_validateSEAndSEPPairing:");
          v91 = [v87 length];
          *buf = 67110146;
          v109 = v88;
          v45 = v87;
          v110 = 2082;
          v111 = v89;
          v112 = 2082;
          v113 = v90;
          v114 = 1024;
          v115 = 1336;
          v116 = 2048;
          v117 = v91;
          _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid authenticate response length: %lu", buf, 0x2Cu);
        }

        v19 = 13;
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
      v33 = object_getClass(a1);
      v34 = class_isMetaClass(v33);
      v35 = object_getClassName(a1);
      v36 = sel_getName("_validateSEAndSEPPairing:");
      v98 = [v14 length];
      v37 = 45;
      if (v34)
      {
        v37 = 43;
      }

      v32(3, "%c[%{public}s %{public}s]:%i Invalid host challenge length: %lu", v37, v35, v36, 1318, v98);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v38 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
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
      v42 = sel_getName("_validateSEAndSEPPairing:");
      v43 = [v14 length];
      *buf = 67110146;
      v109 = v40;
      v110 = 2082;
      v111 = v41;
      v112 = 2082;
      v113 = v42;
      v114 = 1024;
      v115 = 1318;
      v116 = 2048;
      v117 = v43;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid host challenge length: %lu", buf, 0x2Cu);
    }

    v19 = 13;
  }

  return v19;
}

id sub_10020029C(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = sub_100200318(a1);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 code];
  }

  else
  {
    v6 = sub_1001FF7BC(a1, a2);
    if (!v6)
    {
      [a1 storePairedState];
    }
  }

  return v6;
}

id sub_100200318(void *a1)
{
  if (a1)
  {
    v2 = [a1 serialNumberAsData];
    if ([a1 upgradeChecked])
    {
      v3 = 0;
LABEL_187:

      goto LABEL_188;
    }

    if (!sub_10015C898(a1))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v22 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("upgradeAuthRandom");
        v26 = 45;
        if (isMetaClass)
        {
          v26 = 43;
        }

        v22(6, "%c[%{public}s %{public}s]:%i JCOP doesn't support entanglement", v26, ClassName, Name, 1789);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v27 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v28 = object_getClass(a1);
      if (class_isMetaClass(v28))
      {
        v29 = 43;
      }

      else
      {
        v29 = 45;
      }

      *buf = 67109890;
      v363 = v29;
      v364 = 2082;
      v365 = object_getClassName(a1);
      v366 = 2082;
      v367 = sel_getName("upgradeAuthRandom");
      v368 = 1024;
      v369 = 1789;
      v30 = "%c[%{public}s %{public}s]:%i JCOP doesn't support entanglement";
      goto LABEL_27;
    }

    v331 = 0;
    v4 = sub_100229BB0(NFSSEWrapper, &v331);
    v5 = v331;
    v6 = v5;
    if (!v4 || v5)
    {
      if (v5 && [v5 code] == 41)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v33 = NFLogGetLogger();
        if (v33)
        {
          v34 = v33;
          v35 = object_getClass(a1);
          v36 = class_isMetaClass(v35);
          v37 = object_getClassName(a1);
          v304 = sel_getName("upgradeAuthRandom");
          v38 = 45;
          if (v36)
          {
            v38 = 43;
          }

          v34(6, "%c[%{public}s %{public}s]:%i SSE isn't ready", v38, v37, v304, 1795);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v39 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
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

          v42 = object_getClassName(a1);
          v43 = sel_getName("upgradeAuthRandom");
          *buf = 67109890;
          v363 = v41;
          v364 = 2082;
          v365 = v42;
          v366 = 2082;
          v367 = v43;
          v368 = 1024;
          v369 = 1795;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i SSE isn't ready", buf, 0x22u);
        }

        goto LABEL_185;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v44 = NFLogGetLogger();
      if (v44)
      {
        v45 = v44;
        v46 = object_getClass(a1);
        v47 = class_isMetaClass(v46);
        v300 = object_getClassName(a1);
        v305 = sel_getName("upgradeAuthRandom");
        v48 = 45;
        if (v47)
        {
          v48 = 43;
        }

        v45(6, "%c[%{public}s %{public}s]:%i SSE doesn't support entanglement : %{public}@", v48, v300, v305, 1798, v6);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v49 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
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
        v53 = sel_getName("upgradeAuthRandom");
        *buf = 67110146;
        v363 = v51;
        v364 = 2082;
        v365 = v52;
        v366 = 2082;
        v367 = v53;
        v368 = 1024;
        v369 = 1798;
        v370 = 2114;
        v371 = v6;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i SSE doesn't support entanglement : %{public}@", buf, 0x2Cu);
      }

      v31 = 0;
      v32 = 0;
LABEL_53:
      [a1 setUpgradeChecked:1];
LABEL_186:
      v3 = v6;

      goto LABEL_187;
    }

    v333 = 0;
    v7 = sub_1001599F4(a1, &v333);
    v8 = v333;
    if (v8)
    {
      v9 = v8;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v10 = NFLogGetLogger();
      if (v10)
      {
        v11 = v10;
        v12 = object_getClass(a1);
        v13 = class_isMetaClass(v12);
        v299 = object_getClassName(a1);
        v302 = sel_getName("_getAuthRandomFlagFromCRS:");
        v14 = 45;
        if (v13)
        {
          v14 = 43;
        }

        v11(3, "%c[%{public}s %{public}s]:%i Failed to select CRS: %{public}@", v14, v299, v302, 1701, v9);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = object_getClass(a1);
        if (class_isMetaClass(v16))
        {
          v17 = 43;
        }

        else
        {
          v17 = 45;
        }

        v18 = object_getClassName(a1);
        v19 = sel_getName("_getAuthRandomFlagFromCRS:");
        *buf = 67110146;
        v363 = v17;
        v364 = 2082;
        v365 = v18;
        v366 = 2082;
        v367 = v19;
        v368 = 1024;
        v369 = 1701;
        v370 = 2114;
        v371 = v9;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select CRS: %{public}@", buf, 0x2Cu);
      }

      v20 = v9;
      goto LABEL_171;
    }

    if (v7)
    {
      if ([v7 status] != 36864)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v86 = NFLogGetLogger();
        if (v86)
        {
          v87 = v86;
          v88 = object_getClass(a1);
          v89 = class_isMetaClass(v88);
          v90 = object_getClassName(a1);
          v91 = sel_getName("_getAuthRandomFlagFromCRS:");
          v319 = [v7 status];
          v92 = 45;
          if (v89)
          {
            v92 = 43;
          }

          v87(3, "%c[%{public}s %{public}s]:%i Failed to select CRS, expecting 0x9000, got 0x%x", v92, v90, v91, 1709, v319);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v93 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
        {
          v94 = object_getClass(a1);
          if (class_isMetaClass(v94))
          {
            v95 = 43;
          }

          else
          {
            v95 = 45;
          }

          v96 = object_getClassName(a1);
          v97 = sel_getName("_getAuthRandomFlagFromCRS:");
          v98 = [v7 status];
          *buf = 67110146;
          v363 = v95;
          v364 = 2082;
          v365 = v96;
          v366 = 2082;
          v367 = v97;
          v368 = 1024;
          v369 = 1709;
          v370 = 1024;
          LODWORD(v371) = v98;
          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select CRS, expecting 0x9000, got 0x%x", buf, 0x28u);
        }

        v325 = [NSError alloc];
        v80 = [NSString stringWithUTF8String:"nfcd"];
        v356[0] = NSLocalizedDescriptionKey;
        v99 = [NSString stringWithUTF8String:"Command Error"];
        v357[0] = v99;
        v357[1] = &off_100335C58;
        v356[1] = @"Line";
        v356[2] = @"Method";
        v82 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_getAuthRandomFlagFromCRS:")];
        v357[2] = v82;
        v356[3] = NSDebugDescriptionErrorKey;
        v85 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_getAuthRandomFlagFromCRS:"), 1710];
        v357[3] = v85;
        v100 = [NSDictionary dictionaryWithObjects:v357 forKeys:v356 count:4];
        v20 = [v325 initWithDomain:v80 code:16 userInfo:v100];

        v81 = v99;
        goto LABEL_170;
      }

      v332 = 0;
      v54 = sub_100158A28(a1, 128, 220, 0, &v332);
      v55 = v332;

      if (v55)
      {
        v324 = v54;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v56 = NFLogGetLogger();
        if (v56)
        {
          v57 = v56;
          v58 = object_getClass(a1);
          v59 = class_isMetaClass(v58);
          v301 = object_getClassName(a1);
          v306 = sel_getName("_getAuthRandomFlagFromCRS:");
          v60 = 45;
          if (v59)
          {
            v60 = 43;
          }

          v57(3, "%c[%{public}s %{public}s]:%i Failed to get flag: %{public}@", v60, v301, v306, 1715, v55);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v61 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
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
          v65 = sel_getName("_getAuthRandomFlagFromCRS:");
          *buf = 67110146;
          v363 = v63;
          v364 = 2082;
          v365 = v64;
          v366 = 2082;
          v367 = v65;
          v368 = 1024;
          v369 = 1715;
          v370 = 2114;
          v371 = v55;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get flag: %{public}@", buf, 0x2Cu);
        }

        v322 = [NSError alloc];
        v66 = [NSString stringWithUTF8String:"nfcd"];
        v321 = [v55 code];
        v354[0] = NSLocalizedDescriptionKey;
        if ([v55 code] > 75)
        {
          v67 = 76;
        }

        else
        {
          v67 = [v55 code];
        }

        v82 = [NSString stringWithUTF8String:off_10031B938[v67]];
        v355[0] = v82;
        v355[1] = v55;
        v354[1] = NSUnderlyingErrorKey;
        v354[2] = @"Line";
        v355[2] = &off_100335C70;
        v354[3] = @"Method";
        v85 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_getAuthRandomFlagFromCRS:")];
        v355[3] = v85;
        v354[4] = NSDebugDescriptionErrorKey;
        v118 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_getAuthRandomFlagFromCRS:"), 1716];
        v355[4] = v118;
        v119 = [NSDictionary dictionaryWithObjects:v355 forKeys:v354 count:5];
        v20 = [v322 initWithDomain:v66 code:v321 userInfo:v119];

        v81 = v66;
        v80 = v324;
        v7 = v55;
        goto LABEL_170;
      }

      if (v54)
      {
        v326 = v54;
        if ([v54 status] == 36864)
        {
          v101 = [v54 response];
          v102 = [v101 length];

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v103 = NFLogGetLogger();
          v104 = v103;
          if (v102 > 2)
          {
            if (v103)
            {
              v149 = object_getClass(a1);
              v150 = class_isMetaClass(v149);
              v151 = object_getClassName(a1);
              v152 = sel_getName("_getAuthRandomFlagFromCRS:");
              v153 = [v326 response];
              v154 = 45;
              if (v150)
              {
                v154 = 43;
              }

              v104(6, "%c[%{public}s %{public}s]:%i Auth random flag = %{public}@", v154, v151, v152, 1732, v153);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v155 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
            {
              v156 = object_getClass(a1);
              if (class_isMetaClass(v156))
              {
                v157 = 43;
              }

              else
              {
                v157 = 45;
              }

              v158 = object_getClassName(a1);
              v159 = sel_getName("_getAuthRandomFlagFromCRS:");
              v160 = [v326 response];
              *buf = 67110146;
              v363 = v157;
              v364 = 2082;
              v365 = v158;
              v366 = 2082;
              v367 = v159;
              v368 = 1024;
              v369 = 1732;
              v370 = 2114;
              v371 = v160;
              _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Auth random flag = %{public}@", buf, 0x2Cu);
            }

            v161 = [v326 response];
            v162 = [v161 bytes];

            if (*v162 == 220)
            {
              v163 = v162[2];

              if (v163 == 90)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v164 = NFLogGetLogger();
                if (v164)
                {
                  v165 = v164;
                  v166 = object_getClass(a1);
                  v167 = class_isMetaClass(v166);
                  v168 = object_getClassName(a1);
                  v310 = sel_getName("upgradeAuthRandom");
                  v169 = 45;
                  if (v167)
                  {
                    v169 = 43;
                  }

                  v165(6, "%c[%{public}s %{public}s]:%i Already entangled, telling SSE", v169, v168, v310, 1813);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v170 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
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
                  v174 = sel_getName("upgradeAuthRandom");
                  *buf = 67109890;
                  v363 = v172;
                  v364 = 2082;
                  v365 = v173;
                  v366 = 2082;
                  v367 = v174;
                  v368 = 1024;
                  v369 = 1813;
                  _os_log_impl(&_mh_execute_header, v170, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Already entangled, telling SSE", buf, 0x22u);
                }

                v175 = sub_10022A230(NFSSEWrapper, 1);
                if (v175)
                {
                  v176 = v175;
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v177 = NFLogGetLogger();
                  if (v177)
                  {
                    v178 = v177;
                    v179 = object_getClass(a1);
                    v180 = class_isMetaClass(v179);
                    v181 = object_getClassName(a1);
                    v311 = sel_getName("upgradeAuthRandom");
                    v182 = 45;
                    if (v180)
                    {
                      v182 = 43;
                    }

                    v178(3, "%c[%{public}s %{public}s]:%i Failed to set auth random", v182, v181, v311, 1816);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v183 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v183, OS_LOG_TYPE_ERROR))
                  {
                    v184 = object_getClass(a1);
                    if (class_isMetaClass(v184))
                    {
                      v185 = 43;
                    }

                    else
                    {
                      v185 = 45;
                    }

                    v186 = object_getClassName(a1);
                    v187 = sel_getName("upgradeAuthRandom");
                    *buf = 67109890;
                    v363 = v185;
                    v364 = 2082;
                    v365 = v186;
                    v366 = 2082;
                    v367 = v187;
                    v368 = 1024;
                    v369 = 1816;
                    _os_log_impl(&_mh_execute_header, v183, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set auth random", buf, 0x22u);
                  }

                  v188 = [NSError alloc];
                  v189 = [NSString stringWithUTF8String:"nfcd"];
                  v190 = v176;
                  v340[0] = NSLocalizedDescriptionKey;
                  if (v176 >= 0x4C)
                  {
                    v191 = 76;
                  }

                  else
                  {
                    v191 = v176;
                  }

                  v192 = [NSString stringWithUTF8String:off_10031B938[v191]];
                  v341[0] = v192;
                  v341[1] = &off_100335D60;
                  v340[1] = @"Line";
                  v340[2] = @"Method";
                  v193 = [[NSString alloc] initWithFormat:@"%s", sel_getName("upgradeAuthRandom")];
                  v341[2] = v193;
                  v340[3] = NSDebugDescriptionErrorKey;
                  v194 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("upgradeAuthRandom"), 1817];
                  v341[3] = v194;
                  v195 = [NSDictionary dictionaryWithObjects:v341 forKeys:v340 count:4];
                  v6 = [v188 initWithDomain:v189 code:v190 userInfo:v195];

                  goto LABEL_184;
                }

                sub_10015C944();
                goto LABEL_29;
              }

LABEL_191:
              if (sub_1001FF7BC(a1, 0xFFFFFFFFLL))
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v226 = NFLogGetLogger();
                if (v226)
                {
                  v227 = v226;
                  v228 = object_getClass(a1);
                  v229 = class_isMetaClass(v228);
                  v230 = object_getClassName(a1);
                  v314 = sel_getName("upgradeAuthRandom");
                  v231 = 45;
                  if (v229)
                  {
                    v231 = 43;
                  }

                  v227(6, "%c[%{public}s %{public}s]:%i Not paired", v231, v230, v314, 1827);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v27 = NFSharedLogGetLogger();
                if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_28;
                }

                v232 = object_getClass(a1);
                if (class_isMetaClass(v232))
                {
                  v233 = 43;
                }

                else
                {
                  v233 = 45;
                }

                v234 = object_getClassName(a1);
                v235 = sel_getName("upgradeAuthRandom");
                *buf = 67109890;
                v363 = v233;
                v364 = 2082;
                v365 = v234;
                v366 = 2082;
                v367 = v235;
                v368 = 1024;
                v369 = 1827;
                v30 = "%c[%{public}s %{public}s]:%i Not paired";
LABEL_27:
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v30, buf, 0x22u);
LABEL_28:

LABEL_29:
                v31 = 0;
                v32 = 0;
LABEL_30:
                v6 = 0;
                goto LABEL_53;
              }

              v329 = 0;
              v330 = 0;
              v236 = sub_10022A9B0(NFSSEWrapper, v2, 0xFFFFFFFFLL, &v330, &v329, 1, 1);
              v31 = v330;
              v32 = v329;
              if (v236)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v237 = NFLogGetLogger();
                if (v237)
                {
                  v238 = v237;
                  v239 = object_getClass(a1);
                  v240 = class_isMetaClass(v239);
                  v241 = object_getClassName(a1);
                  v315 = sel_getName("upgradeAuthRandom");
                  v242 = 45;
                  if (v240)
                  {
                    v242 = 43;
                  }

                  v238(3, "%c[%{public}s %{public}s]:%i Failed to get auth random", v242, v241, v315, 1834);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v243 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v243, OS_LOG_TYPE_ERROR))
                {
                  v244 = object_getClass(a1);
                  if (class_isMetaClass(v244))
                  {
                    v245 = 43;
                  }

                  else
                  {
                    v245 = 45;
                  }

                  v246 = object_getClassName(a1);
                  v247 = sel_getName("upgradeAuthRandom");
                  *buf = 67109890;
                  v363 = v245;
                  v364 = 2082;
                  v365 = v246;
                  v366 = 2082;
                  v367 = v247;
                  v368 = 1024;
                  v369 = 1834;
                  _os_log_impl(&_mh_execute_header, v243, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get auth random", buf, 0x22u);
                }

                v327 = [NSError alloc];
                v248 = [NSString stringWithUTF8String:"nfcd"];
                v249 = v236;
                v338[0] = NSLocalizedDescriptionKey;
                if (v236 >= 0x4C)
                {
                  v250 = 76;
                }

                else
                {
                  v250 = v236;
                }

                v251 = [NSString stringWithUTF8String:off_10031B938[v250]];
                v339[0] = v251;
                v339[1] = &off_100335D78;
                v338[1] = @"Line";
                v338[2] = @"Method";
                v252 = [[NSString alloc] initWithFormat:@"%s", sel_getName("upgradeAuthRandom")];
                v339[2] = v252;
                v338[3] = NSDebugDescriptionErrorKey;
                v253 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("upgradeAuthRandom"), 1835];
                v339[3] = v253;
                v254 = v339;
                v255 = v338;
              }

              else
              {
                v257 = [a1 handle];
                [v257 redactLogging:1];

                v258 = sub_1002059D0(a1, v31, v32);
                v259 = [a1 handle];
                [v259 redactLogging:0];

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v260 = NFLogGetLogger();
                v261 = v260;
                if (v258)
                {
                  if (v260)
                  {
                    v262 = object_getClass(a1);
                    v263 = class_isMetaClass(v262);
                    v264 = object_getClassName(a1);
                    v316 = sel_getName("upgradeAuthRandom");
                    v265 = 45;
                    if (v263)
                    {
                      v265 = 43;
                    }

                    v261(3, "%c[%{public}s %{public}s]:%i Failed to set CRS auth random", v265, v264, v316, 1844);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v266 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v266, OS_LOG_TYPE_ERROR))
                  {
                    v267 = object_getClass(a1);
                    if (class_isMetaClass(v267))
                    {
                      v268 = 43;
                    }

                    else
                    {
                      v268 = 45;
                    }

                    v269 = object_getClassName(a1);
                    v270 = sel_getName("upgradeAuthRandom");
                    *buf = 67109890;
                    v363 = v268;
                    v364 = 2082;
                    v365 = v269;
                    v366 = 2082;
                    v367 = v270;
                    v368 = 1024;
                    v369 = 1844;
                    _os_log_impl(&_mh_execute_header, v266, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set CRS auth random", buf, 0x22u);
                  }

                  v328 = [NSError alloc];
                  v248 = [NSString stringWithUTF8String:"nfcd"];
                  v323 = [v258 code];
                  v336[0] = NSLocalizedDescriptionKey;
                  if ([v258 code] > 75)
                  {
                    v271 = 76;
                  }

                  else
                  {
                    v271 = [v258 code];
                  }

                  v295 = [NSString stringWithUTF8String:off_10031B938[v271]];
                  v337[0] = v295;
                  v337[1] = v258;
                  v336[1] = NSUnderlyingErrorKey;
                  v336[2] = @"Line";
                  v337[2] = &off_100335D90;
                  v336[3] = @"Method";
                  v296 = [[NSString alloc] initWithFormat:@"%s", sel_getName("upgradeAuthRandom")];
                  v337[3] = v296;
                  v336[4] = NSDebugDescriptionErrorKey;
                  v297 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("upgradeAuthRandom"), 1845];
                  v337[4] = v297;
                  v298 = [NSDictionary dictionaryWithObjects:v337 forKeys:v336 count:5];
                  v6 = [v328 initWithDomain:v248 code:v323 userInfo:v298];

                  goto LABEL_253;
                }

                if (v260)
                {
                  v272 = object_getClass(a1);
                  v273 = class_isMetaClass(v272);
                  v274 = object_getClassName(a1);
                  v317 = sel_getName("upgradeAuthRandom");
                  v275 = 45;
                  if (v273)
                  {
                    v275 = 43;
                  }

                  v261(6, "%c[%{public}s %{public}s]:%i Entanglement success, telling SSE", v275, v274, v317, 1849);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v276 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v276, OS_LOG_TYPE_DEFAULT))
                {
                  v277 = object_getClass(a1);
                  if (class_isMetaClass(v277))
                  {
                    v278 = 43;
                  }

                  else
                  {
                    v278 = 45;
                  }

                  v279 = object_getClassName(a1);
                  v280 = sel_getName("upgradeAuthRandom");
                  *buf = 67109890;
                  v363 = v278;
                  v364 = 2082;
                  v365 = v279;
                  v366 = 2082;
                  v367 = v280;
                  v368 = 1024;
                  v369 = 1849;
                  _os_log_impl(&_mh_execute_header, v276, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Entanglement success, telling SSE", buf, 0x22u);
                }

                v281 = sub_10022A230(NFSSEWrapper, 1);
                if (!v281)
                {
                  sub_10015C944();
                  goto LABEL_30;
                }

                v282 = v281;
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v283 = NFLogGetLogger();
                if (v283)
                {
                  v284 = v283;
                  v285 = object_getClass(a1);
                  v286 = class_isMetaClass(v285);
                  v287 = object_getClassName(a1);
                  v318 = sel_getName("upgradeAuthRandom");
                  v288 = 45;
                  if (v286)
                  {
                    v288 = 43;
                  }

                  v284(3, "%c[%{public}s %{public}s]:%i Failed to set auth random", v288, v287, v318, 1853);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v289 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v289, OS_LOG_TYPE_ERROR))
                {
                  v290 = object_getClass(a1);
                  if (class_isMetaClass(v290))
                  {
                    v291 = 43;
                  }

                  else
                  {
                    v291 = 45;
                  }

                  v292 = object_getClassName(a1);
                  v293 = sel_getName("upgradeAuthRandom");
                  *buf = 67109890;
                  v363 = v291;
                  v364 = 2082;
                  v365 = v292;
                  v366 = 2082;
                  v367 = v293;
                  v368 = 1024;
                  v369 = 1853;
                  _os_log_impl(&_mh_execute_header, v289, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set auth random", buf, 0x22u);
                }

                v327 = [NSError alloc];
                v248 = [NSString stringWithUTF8String:"nfcd"];
                v249 = v282;
                v334[0] = NSLocalizedDescriptionKey;
                if (v282 >= 0x4C)
                {
                  v294 = 76;
                }

                else
                {
                  v294 = v282;
                }

                v251 = [NSString stringWithUTF8String:off_10031B938[v294]];
                v335[0] = v251;
                v335[1] = &off_100335DA8;
                v334[1] = @"Line";
                v334[2] = @"Method";
                v252 = [[NSString alloc] initWithFormat:@"%s", sel_getName("upgradeAuthRandom")];
                v335[2] = v252;
                v334[3] = NSDebugDescriptionErrorKey;
                v253 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("upgradeAuthRandom"), 1854];
                v335[3] = v253;
                v254 = v335;
                v255 = v334;
              }

              v256 = [NSDictionary dictionaryWithObjects:v254 forKeys:v255 count:4];
              v6 = [v327 initWithDomain:v248 code:v249 userInfo:v256];

LABEL_253:
              goto LABEL_186;
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v196 = NFLogGetLogger();
            if (v196)
            {
              v197 = v196;
              v198 = object_getClass(a1);
              v199 = class_isMetaClass(v198);
              v200 = object_getClassName(a1);
              v312 = sel_getName("_getAuthRandomFlagFromCRS:");
              v201 = 45;
              if (v199)
              {
                v201 = 43;
              }

              v197(3, "%c[%{public}s %{public}s]:%i Unexpected instruction.", v201, v200, v312, 1735);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v202 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v202, OS_LOG_TYPE_ERROR))
            {
              v203 = object_getClass(a1);
              if (class_isMetaClass(v203))
              {
                v204 = 43;
              }

              else
              {
                v204 = 45;
              }

              v205 = object_getClassName(a1);
              v206 = sel_getName("_getAuthRandomFlagFromCRS:");
              *buf = 67109890;
              v363 = v204;
              v364 = 2082;
              v365 = v205;
              v366 = 2082;
              v367 = v206;
              v368 = 1024;
              v369 = 1735;
              _os_log_impl(&_mh_execute_header, v202, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected instruction.", buf, 0x22u);
            }

            v114 = [NSError alloc];
            v80 = [NSString stringWithUTF8String:"nfcd"];
            v344[0] = NSLocalizedDescriptionKey;
            v115 = [NSString stringWithUTF8String:"Unexpected Result"];
            v345[0] = v115;
            v345[1] = &off_100335CD0;
            v344[1] = @"Line";
            v344[2] = @"Method";
            v82 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_getAuthRandomFlagFromCRS:")];
            v345[2] = v82;
            v344[3] = NSDebugDescriptionErrorKey;
            v85 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_getAuthRandomFlagFromCRS:"), 1736];
            v345[3] = v85;
            v116 = v345;
            v117 = v344;
          }

          else
          {
            if (v103)
            {
              v105 = object_getClass(a1);
              v106 = class_isMetaClass(v105);
              v107 = object_getClassName(a1);
              v308 = sel_getName("_getAuthRandomFlagFromCRS:");
              v108 = 45;
              if (v106)
              {
                v108 = 43;
              }

              v104(3, "%c[%{public}s %{public}s]:%i Invalid response size", v108, v107, v308, 1728);
            }

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
              v113 = sel_getName("_getAuthRandomFlagFromCRS:");
              *buf = 67109890;
              v363 = v111;
              v364 = 2082;
              v365 = v112;
              v366 = 2082;
              v367 = v113;
              v368 = 1024;
              v369 = 1728;
              _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid response size", buf, 0x22u);
            }

            v114 = [NSError alloc];
            v80 = [NSString stringWithUTF8String:"nfcd"];
            v346[0] = NSLocalizedDescriptionKey;
            v115 = [NSString stringWithUTF8String:"Unexpected Result"];
            v347[0] = v115;
            v347[1] = &off_100335CB8;
            v346[1] = @"Line";
            v346[2] = @"Method";
            v82 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_getAuthRandomFlagFromCRS:")];
            v347[2] = v82;
            v346[3] = NSDebugDescriptionErrorKey;
            v85 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_getAuthRandomFlagFromCRS:"), 1729];
            v347[3] = v85;
            v116 = v347;
            v117 = v346;
          }

          v145 = [NSDictionary dictionaryWithObjects:v116 forKeys:v117 count:4];
          v146 = v114;
          v147 = v80;
          v148 = 13;
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v131 = NFLogGetLogger();
          if (v131)
          {
            v132 = v131;
            v133 = object_getClass(a1);
            v134 = class_isMetaClass(v133);
            v135 = object_getClassName(a1);
            v136 = sel_getName("_getAuthRandomFlagFromCRS:");
            v320 = [v326 status];
            v137 = 45;
            if (v134)
            {
              v137 = 43;
            }

            v132(3, "%c[%{public}s %{public}s]:%i Failed to get flag, expecting 0x9000, got 0x%x", v137, v135, v136, 1723, v320);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v138 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
          {
            v139 = object_getClass(a1);
            if (class_isMetaClass(v139))
            {
              v140 = 43;
            }

            else
            {
              v140 = 45;
            }

            v141 = object_getClassName(a1);
            v142 = sel_getName("_getAuthRandomFlagFromCRS:");
            v143 = [v326 status];
            *buf = 67110146;
            v363 = v140;
            v364 = 2082;
            v365 = v141;
            v366 = 2082;
            v367 = v142;
            v368 = 1024;
            v369 = 1723;
            v370 = 1024;
            LODWORD(v371) = v143;
            _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get flag, expecting 0x9000, got 0x%x", buf, 0x28u);
          }

          v144 = [NSError alloc];
          v80 = [NSString stringWithUTF8String:"nfcd"];
          v348[0] = NSLocalizedDescriptionKey;
          v115 = [NSString stringWithUTF8String:"Command Error"];
          v349[0] = v115;
          v349[1] = &off_100335CA0;
          v348[1] = @"Line";
          v348[2] = @"Method";
          v82 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_getAuthRandomFlagFromCRS:")];
          v349[2] = v82;
          v348[3] = NSDebugDescriptionErrorKey;
          v85 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_getAuthRandomFlagFromCRS:"), 1724];
          v349[3] = v85;
          v145 = [NSDictionary dictionaryWithObjects:v349 forKeys:v348 count:4];
          v146 = v144;
          v147 = v80;
          v148 = 16;
        }

        v20 = [v146 initWithDomain:v147 code:v148 userInfo:v145];

        v81 = v115;
        v7 = v326;
LABEL_170:

        if (v20)
        {
LABEL_171:
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v207 = NFLogGetLogger();
          if (v207)
          {
            v208 = v207;
            v209 = object_getClass(a1);
            v210 = class_isMetaClass(v209);
            v211 = object_getClassName(a1);
            v313 = sel_getName("upgradeAuthRandom");
            v212 = 45;
            if (v210)
            {
              v212 = 43;
            }

            v208(3, "%c[%{public}s %{public}s]:%i Failed to get flag", v212, v211, v313, 1805);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v213 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
          {
            v214 = object_getClass(a1);
            if (class_isMetaClass(v214))
            {
              v215 = 43;
            }

            else
            {
              v215 = 45;
            }

            v216 = object_getClassName(a1);
            v217 = sel_getName("upgradeAuthRandom");
            *buf = 67109890;
            v363 = v215;
            v364 = 2082;
            v365 = v216;
            v366 = 2082;
            v367 = v217;
            v368 = 1024;
            v369 = 1805;
            _os_log_impl(&_mh_execute_header, v213, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get flag", buf, 0x22u);
          }

          v218 = [NSError alloc];
          v189 = [NSString stringWithUTF8String:"nfcd"];
          v219 = [v20 code];
          v342[0] = NSLocalizedDescriptionKey;
          if ([v20 code] > 75)
          {
            v220 = 76;
          }

          else
          {
            v220 = [v20 code];
          }

          v221 = [NSString stringWithUTF8String:off_10031B938[v220]];
          v343[0] = v221;
          v343[1] = v20;
          v342[1] = NSUnderlyingErrorKey;
          v342[2] = @"Line";
          v343[2] = &off_100335D48;
          v342[3] = @"Method";
          v222 = [[NSString alloc] initWithFormat:@"%s", sel_getName("upgradeAuthRandom")];
          v343[3] = v222;
          v342[4] = NSDebugDescriptionErrorKey;
          v223 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("upgradeAuthRandom"), 1806];
          v343[4] = v223;
          v224 = [NSDictionary dictionaryWithObjects:v343 forKeys:v342 count:5];
          v6 = [v218 initWithDomain:v189 code:v219 userInfo:v224];

LABEL_184:
LABEL_185:
          v31 = 0;
          v32 = 0;
          goto LABEL_186;
        }

        goto LABEL_191;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v120 = NFLogGetLogger();
      if (v120)
      {
        v121 = v120;
        v122 = object_getClass(a1);
        v123 = class_isMetaClass(v122);
        v124 = object_getClassName(a1);
        v309 = sel_getName("_getAuthRandomFlagFromCRS:");
        v125 = 45;
        if (v123)
        {
          v125 = 43;
        }

        v121(3, "%c[%{public}s %{public}s]:%i Failed to get flag, expecting RAPDU", v125, v124, v309, 1719);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v126 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
      {
        v127 = object_getClass(a1);
        if (class_isMetaClass(v127))
        {
          v128 = 43;
        }

        else
        {
          v128 = 45;
        }

        v129 = object_getClassName(a1);
        v130 = sel_getName("_getAuthRandomFlagFromCRS:");
        *buf = 67109890;
        v363 = v128;
        v364 = 2082;
        v365 = v129;
        v366 = 2082;
        v367 = v130;
        v368 = 1024;
        v369 = 1719;
        _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get flag, expecting RAPDU", buf, 0x22u);
      }

      v79 = [NSError alloc];
      v7 = [NSString stringWithUTF8String:"nfcd"];
      v350[0] = NSLocalizedDescriptionKey;
      v80 = [NSString stringWithUTF8String:"Command Error"];
      v351[0] = v80;
      v351[1] = &off_100335C88;
      v350[1] = @"Line";
      v350[2] = @"Method";
      v352 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_getAuthRandomFlagFromCRS:")];
      v350[3] = NSDebugDescriptionErrorKey;
      v81 = v352;
      v82 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_getAuthRandomFlagFromCRS:"), 1720];
      v353 = v82;
      v83 = v351;
      v84 = v350;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v68 = NFLogGetLogger();
      if (v68)
      {
        v69 = v68;
        v70 = object_getClass(a1);
        v71 = class_isMetaClass(v70);
        v72 = object_getClassName(a1);
        v307 = sel_getName("_getAuthRandomFlagFromCRS:");
        v73 = 45;
        if (v71)
        {
          v73 = 43;
        }

        v69(3, "%c[%{public}s %{public}s]:%i Failed to select CRS, expecting RAPDU", v73, v72, v307, 1705);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v74 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        v75 = object_getClass(a1);
        if (class_isMetaClass(v75))
        {
          v76 = 43;
        }

        else
        {
          v76 = 45;
        }

        v77 = object_getClassName(a1);
        v78 = sel_getName("_getAuthRandomFlagFromCRS:");
        *buf = 67109890;
        v363 = v76;
        v364 = 2082;
        v365 = v77;
        v366 = 2082;
        v367 = v78;
        v368 = 1024;
        v369 = 1705;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select CRS, expecting RAPDU", buf, 0x22u);
      }

      v79 = [NSError alloc];
      v7 = [NSString stringWithUTF8String:"nfcd"];
      v358[0] = NSLocalizedDescriptionKey;
      v80 = [NSString stringWithUTF8String:"Command Error"];
      v359[0] = v80;
      v359[1] = &off_100335C40;
      v358[1] = @"Line";
      v358[2] = @"Method";
      v360 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_getAuthRandomFlagFromCRS:")];
      v358[3] = NSDebugDescriptionErrorKey;
      v81 = v360;
      v82 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_getAuthRandomFlagFromCRS:"), 1706];
      v361 = v82;
      v83 = v359;
      v84 = v358;
    }

    v85 = [NSDictionary dictionaryWithObjects:v83 forKeys:v84 count:4];
    v20 = [v79 initWithDomain:v7 code:16 userInfo:v85];
    goto LABEL_170;
  }

  v3 = 0;
LABEL_188:

  return v3;
}

uint64_t sub_100202BC4(void *a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  kdebug_trace();
  v6 = NFSharedSignpostLog();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "sseGetHostChallenge in", buf, 2u);
  }

  v78 = 0;
  v7 = sub_10022B0E8(NFSSEWrapper, &v78);
  v8 = v78;
  kdebug_trace();
  v9 = NFSharedSignpostLog();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "sseGetHostChallenge out", buf, 2u);
  }

  if (!v8 || v7)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v16 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_getCryptogram:challengeResponse:");
      v20 = 45;
      if (isMetaClass)
      {
        v20 = 43;
      }

      v16(3, "%c[%{public}s %{public}s]:%i Failed to get host challenge", v20, ClassName, Name, 1389);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
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
      v25 = sel_getName("_getCryptogram:challengeResponse:");
      *buf = 67109890;
      v80 = v23;
      v81 = 2082;
      v82 = v24;
      v83 = 2082;
      v84 = v25;
      v85 = 1024;
      v86 = 1389;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get host challenge", buf, 0x22u);
    }

    if (v7)
    {
      v14 = v7;
    }

    else
    {
      v14 = 6;
    }
  }

  else if ([v8 length] == 8)
  {
    v10 = v8;
    *a2 = v8;
    v77 = 0;
    v11 = sub_1001599F4(a1, &v77);
    v12 = v77;
    v13 = v12;
    if (v12)
    {
      if ([v12 code])
      {
        v14 = [v13 code];
      }

      else
      {
        v14 = 16;
      }
    }

    else
    {
      v76 = 0;
      v14 = sub_1000B7A20(a1, v8, &v76);
      v39 = v76;
      v40 = v39;
      if (v14)
      {
        v75 = v39;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v41 = NFLogGetLogger();
        if (v41)
        {
          v42 = v41;
          v43 = object_getClass(a1);
          v44 = class_isMetaClass(v43);
          v45 = object_getClassName(a1);
          v46 = sel_getName("_getCryptogram:challengeResponse:");
          if (v14 >= 0x4C)
          {
            v47 = 76;
          }

          else
          {
            v47 = v14;
          }

          v74 = off_10031B938[v47];
          v48 = 43;
          if (!v44)
          {
            v48 = 45;
          }

          v42(3, "%c[%{public}s %{public}s]:%i %@ err=%d %s", v48, v45, v46, 1408, @"Failed to authenticate", v14, v74);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v49 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
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
          v53 = sel_getName("_getCryptogram:challengeResponse:");
          if (v14 >= 0x4C)
          {
            v54 = 76;
          }

          else
          {
            v54 = v14;
          }

          v55 = off_10031B938[v54];
          *buf = 67110658;
          v80 = v51;
          v81 = 2082;
          v82 = v52;
          v83 = 2082;
          v84 = v53;
          v85 = 1024;
          v86 = 1408;
          v87 = 2112;
          v88 = @"Failed to authenticate";
          v89 = 1024;
          v90 = v14;
          v91 = 2080;
          v92 = v55;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@ err=%d %s", buf, 0x3Cu);
        }

        v40 = v75;
      }

      else if ([v39 length] == 16)
      {
        v56 = v40;
        v14 = 0;
        *a3 = v40;
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v57 = NFLogGetLogger();
        if (v57)
        {
          v58 = v57;
          v59 = object_getClass(a1);
          v60 = class_isMetaClass(v59);
          v61 = object_getClassName(a1);
          v62 = sel_getName("_getCryptogram:challengeResponse:");
          v73 = [v40 length];
          v63 = 45;
          if (v60)
          {
            v63 = 43;
          }

          v58(3, "%c[%{public}s %{public}s]:%i Invalid authenticate response length: %lu", v63, v61, v62, 1412, v73);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v64 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
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
          v68 = sel_getName("_getCryptogram:challengeResponse:");
          v69 = [v40 length];
          *buf = 67110146;
          v80 = v66;
          v81 = 2082;
          v82 = v67;
          v83 = 2082;
          v84 = v68;
          v85 = 1024;
          v86 = 1412;
          v87 = 2048;
          v88 = v69;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid authenticate response length: %lu", buf, 0x2Cu);
        }

        v14 = 13;
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
      v28 = object_getClass(a1);
      v29 = class_isMetaClass(v28);
      v30 = object_getClassName(a1);
      v31 = sel_getName("_getCryptogram:challengeResponse:");
      v72 = [v8 length];
      v32 = 45;
      if (v29)
      {
        v32 = 43;
      }

      v27(3, "%c[%{public}s %{public}s]:%i Invalid host challenge length: %lu", v32, v30, v31, 1393, v72);
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
      v37 = sel_getName("_getCryptogram:challengeResponse:");
      v38 = [v8 length];
      *buf = 67110146;
      v80 = v35;
      v81 = 2082;
      v82 = v36;
      v83 = 2082;
      v84 = v37;
      v85 = 1024;
      v86 = 1393;
      v87 = 2048;
      v88 = v38;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid host challenge length: %lu", buf, 0x2Cu);
    }

    v14 = 13;
  }

  return v14;
}

uint64_t sub_100203358(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  v135 = a1;
  if (a1)
  {
    if (!v5)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v20 = Logger;
        Class = object_getClass(v135);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v135);
        Name = sel_getName("signChallengeWithOSVersion:signature:");
        v24 = 45;
        if (isMetaClass)
        {
          v24 = 43;
        }

        v20(3, "%c[%{public}s %{public}s]:%i Invalid challenge string", v24, ClassName, Name, 1497);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      v25 = object_getClass(v135);
      if (class_isMetaClass(v25))
      {
        v26 = 43;
      }

      else
      {
        v26 = 45;
      }

      *buf = 67109890;
      v153 = v26;
      v154 = 2082;
      v155 = object_getClassName(v135);
      v156 = 2082;
      v157 = sel_getName("signChallengeWithOSVersion:signature:");
      v158 = 1024;
      v159 = 1497;
      v16 = "%c[%{public}s %{public}s]:%i Invalid challenge string";
      v17 = v13;
      v18 = 34;
      goto LABEL_22;
    }

    if ([v5 length] >= 0x41)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v7 = NFLogGetLogger();
      if (v7)
      {
        v8 = v7;
        v9 = object_getClass(v135);
        v10 = class_isMetaClass(v9);
        v11 = object_getClassName(v135);
        v118 = sel_getName("signChallengeWithOSVersion:signature:");
        v12 = 45;
        if (v10)
        {
          v12 = 43;
        }

        v8(3, "%c[%{public}s %{public}s]:%i challenge for signing is too large: Max = %d", v12, v11, v118, 1502, 64);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      v14 = object_getClass(v135);
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      *buf = 67110146;
      v153 = v15;
      v154 = 2082;
      v155 = object_getClassName(v135);
      v156 = 2082;
      v157 = sel_getName("signChallengeWithOSVersion:signature:");
      v158 = 1024;
      v159 = 1502;
      v160 = 1024;
      LODWORD(v161) = 64;
      v16 = "%c[%{public}s %{public}s]:%i challenge for signing is too large: Max = %d";
      v17 = v13;
      v18 = 40;
LABEL_22:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
LABEL_23:
      a1 = 10;
LABEL_103:

      goto LABEL_104;
    }

    v27 = [[NSData alloc] initWithBytes:&unk_100297BA0 length:12];
    v136 = 0;
    v28 = sub_100158A6C(v135, v27, &v136);
    v13 = v136;

    if (v28)
    {
      if ([v28 status] == 36864)
      {
        v29 = [NFTLV TLVWithTag:40759 value:v6];
        v30 = [v29 asData];

        v141 = 836706527;
        v31 = [[NSData alloc] initWithBytes:&v141 length:4];
        v32 = [NFTLV TLVWithTag:92 value:v31];
        v33 = [v32 asData];

        v34 = [[NSMutableData alloc] initWithCapacity:{objc_msgSend(v30, "length") + objc_msgSend(v33, "length")}];
        v132 = v30;
        [v34 appendData:v30];
        v131 = v33;
        [v34 appendData:v33];
        v130 = v34;
        v35 = sub_100158A28(v135, 128, 257, v34, 0);
        v133 = v28;
        if ([v35 status] == 36864)
        {
          v127 = a3;
          v128 = v13;
          v129 = v6;
          v36 = objc_opt_new();
          v37 = [v35 response];
          [v36 setObject:v37 forKey:@"SignedResponse"];

          v126 = v35;
          v38 = [v35 response];
          v39 = [NFTLV TLVsWithData:v38];

          v139 = 0u;
          v140 = 0u;
          v137 = 0u;
          v138 = 0u;
          v40 = v39;
          v41 = [v40 countByEnumeratingWithState:&v137 objects:buf count:16];
          if (!v41)
          {
            goto LABEL_54;
          }

          v42 = v41;
          v43 = *v138;
          v134 = v36;
          while (1)
          {
            for (i = 0; i != v42; i = i + 1)
            {
              if (*v138 != v43)
              {
                objc_enumerationMutation(v40);
              }

              v45 = *(*(&v137 + 1) + 8 * i);
              v46 = [v45 tag];
              if (v46 > 57119)
              {
                if (v46 == 57137)
                {
                  v63 = [v45 value];
                  v50 = [v63 NF_asHexString];

                  v64 = [v50 substringWithRange:0, 4];
                  [v36 setObject:v64 forKey:@"jsblSequenceCounter"];
                }

                else if (v46 == 57120)
                {
                  v48 = [NSString alloc];
                  v49 = [v45 value];
                  v50 = [v48 initWithData:v49 encoding:4];

                  [v36 setObject:v50 forKey:@"kPlatformId"];
                }

                else
                {
LABEL_41:
                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v51 = NFLogGetLogger();
                  if (v51)
                  {
                    v52 = v51;
                    v53 = object_getClass(v135);
                    v54 = class_isMetaClass(v53);
                    v55 = object_getClassName(v135);
                    v56 = sel_getName("_signChallengeWithOSVersionComet:");
                    v123 = [v45 tag];
                    v47 = !v54;
                    v36 = v134;
                    v57 = 45;
                    if (!v47)
                    {
                      v57 = 43;
                    }

                    v52(3, "%c[%{public}s %{public}s]:%i Unexpected tag found, %d", v57, v55, v56, 1478, v123);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v50 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                  {
                    v58 = object_getClass(v135);
                    if (class_isMetaClass(v58))
                    {
                      v59 = 43;
                    }

                    else
                    {
                      v59 = 45;
                    }

                    v60 = object_getClassName(v135);
                    v61 = sel_getName("_signChallengeWithOSVersionComet:");
                    v62 = [v45 tag];
                    *v142 = 67110146;
                    v143 = v59;
                    v36 = v134;
                    v144 = 2082;
                    v145 = v60;
                    v146 = 2082;
                    v147 = v61;
                    v148 = 1024;
                    v149 = 1478;
                    v150 = 1024;
                    v151 = v62;
                    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected tag found, %d", v142, 0x28u);
                  }
                }

                continue;
              }

              v47 = v46 == 133 || v46 == 24375;
              if (!v47)
              {
                goto LABEL_41;
              }
            }

            v42 = [v40 countByEnumeratingWithState:&v137 objects:buf count:16];
            if (!v42)
            {
LABEL_54:

              v13 = v128;
              v6 = v129;
              a3 = v127;
              v65 = v132;
              v35 = v126;
              goto LABEL_88;
            }
          }
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v89 = NFLogGetLogger();
        if (v89)
        {
          v90 = v89;
          v91 = object_getClass(v135);
          v92 = class_isMetaClass(v91);
          v93 = object_getClassName(v135);
          v94 = a3;
          v95 = sel_getName("_signChallengeWithOSVersionComet:");
          v125 = [v35 status];
          v121 = v95;
          a3 = v94;
          v96 = 45;
          if (v92)
          {
            v96 = 43;
          }

          v90(3, "%c[%{public}s %{public}s]:%i Unable to obtain Authenticated GET DATA 0x%x", v96, v93, v121, 1446, v125);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v40 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v97 = object_getClass(v135);
          if (class_isMetaClass(v97))
          {
            v98 = 43;
          }

          else
          {
            v98 = 45;
          }

          v99 = object_getClassName(v135);
          v100 = sel_getName("_signChallengeWithOSVersionComet:");
          v101 = [v35 status];
          *buf = 67110146;
          v153 = v98;
          v154 = 2082;
          v155 = v99;
          v156 = 2082;
          v157 = v100;
          v158 = 1024;
          v159 = 1446;
          v160 = 1024;
          LODWORD(v161) = v101;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unable to obtain Authenticated GET DATA 0x%x", buf, 0x28u);
        }

        v36 = 0;
        v65 = v132;
LABEL_88:

        if (v36)
        {
          v102 = v36;
          a1 = 0;
          *a3 = v36;
          v28 = v133;
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v103 = NFLogGetLogger();
          v28 = v133;
          if (v103)
          {
            v104 = v103;
            v105 = object_getClass(v135);
            v106 = class_isMetaClass(v105);
            v107 = object_getClassName(v135);
            v122 = sel_getName("signChallengeWithOSVersion:signature:");
            v108 = 45;
            if (v106)
            {
              v108 = 43;
            }

            v117 = v107;
            v36 = 0;
            v104(3, "%c[%{public}s %{public}s]:%i Failed to get signature", v108, v117, v122, 1524);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v109 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
          {
            v110 = object_getClass(v135);
            v111 = v36;
            if (class_isMetaClass(v110))
            {
              v112 = 43;
            }

            else
            {
              v112 = 45;
            }

            v113 = object_getClassName(v135);
            v114 = sel_getName("signChallengeWithOSVersion:signature:");
            *buf = 67109890;
            v153 = v112;
            v36 = v111;
            v154 = 2082;
            v155 = v113;
            v156 = 2082;
            v157 = v114;
            v158 = 1024;
            v159 = 1524;
            _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get signature", buf, 0x22u);
          }

          a1 = 16;
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v76 = NFLogGetLogger();
        if (v76)
        {
          v77 = v76;
          v78 = object_getClass(v135);
          v79 = class_isMetaClass(v78);
          v80 = object_getClassName(v135);
          v81 = sel_getName("signChallengeWithOSVersion:signature:");
          v124 = [v28 status];
          v82 = 45;
          if (v79)
          {
            v82 = 43;
          }

          v77(3, "%c[%{public}s %{public}s]:%i Failed to select CASD: 0x%04x", v82, v80, v81, 1514, v124);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v83 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          v84 = object_getClass(v135);
          if (class_isMetaClass(v84))
          {
            v85 = 43;
          }

          else
          {
            v85 = 45;
          }

          v86 = object_getClassName(v135);
          v87 = sel_getName("signChallengeWithOSVersion:signature:");
          v88 = [v28 status];
          *buf = 67110146;
          v153 = v85;
          v154 = 2082;
          v155 = v86;
          v156 = 2082;
          v157 = v87;
          v158 = 1024;
          v159 = 1514;
          v160 = 1024;
          LODWORD(v161) = v88;
          _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select CASD: 0x%04x", buf, 0x28u);
        }

        if ([v28 status] == 26277)
        {
          a1 = 24;
        }

        else
        {
          a1 = 16;
        }
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v66 = NFLogGetLogger();
      if (v66)
      {
        v67 = v66;
        v68 = object_getClass(v135);
        v69 = class_isMetaClass(v68);
        v116 = object_getClassName(v135);
        v120 = sel_getName("signChallengeWithOSVersion:signature:");
        v70 = 45;
        if (v69)
        {
          v70 = 43;
        }

        v67(3, "%c[%{public}s %{public}s]:%i Failed to select CRS: %{public}@", v70, v116, v120, 1510, v13);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v71 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        v72 = object_getClass(v135);
        if (class_isMetaClass(v72))
        {
          v73 = 43;
        }

        else
        {
          v73 = 45;
        }

        v74 = object_getClassName(v135);
        v75 = sel_getName("signChallengeWithOSVersion:signature:");
        *buf = 67110146;
        v153 = v73;
        v154 = 2082;
        v155 = v74;
        v156 = 2082;
        v157 = v75;
        v158 = 1024;
        v159 = 1510;
        v160 = 2114;
        v161 = v13;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select CRS: %{public}@", buf, 0x2Cu);
      }

      if ([v13 code])
      {
        a1 = [v13 code];
      }

      else
      {
        a1 = 16;
      }
    }

    goto LABEL_103;
  }

LABEL_104:

  return a1;
}

uint64_t sub_1002040C4(void *a1, int a2, unsigned int a3, void *a4, void *a5)
{
  v8 = a4;
  v189 = a5;
  if (!a1)
  {
    v29 = 0;
    v10 = v8;
    goto LABEL_154;
  }

  v9 = [v8 count];
  v10 = v8;
  if (v9)
  {
    v177 = a3;
    v11 = 0;
    if (v9 >= 0xC)
    {
      v12 = 12;
    }

    else
    {
      v12 = v9;
    }

    v187 = v8;
    do
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v14 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("requireTransientAuth:uid:applets:authorization:");
        v18 = 45;
        if (isMetaClass)
        {
          v18 = 43;
        }

        v14(6, "%c[%{public}s %{public}s]:%i Disabling transient authorization on %u:%u applets", v18, ClassName, Name, 1629, v11, v12);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v19 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = object_getClass(a1);
        if (class_isMetaClass(v20))
        {
          v21 = 43;
        }

        else
        {
          v21 = 45;
        }

        v22 = object_getClassName(a1);
        v23 = sel_getName("requireTransientAuth:uid:applets:authorization:");
        *buf = 67110402;
        v196 = v21;
        v197 = 2082;
        v198 = v22;
        v199 = 2082;
        v200 = v23;
        v201 = 1024;
        v202 = 1629;
        v203 = 1024;
        *v204 = v11;
        *&v204[4] = 1024;
        *&v204[6] = v12;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Disabling transient authorization on %u:%u applets", buf, 0x2Eu);
      }

      v24 = [v10 subarrayWithRange:{v11, v12}];
      v25 = v189;
      v194 = 0;
      v26 = sub_1001599F4(a1, &v194);
      v27 = v194;
      v28 = v27;
      if (v27)
      {
        if ([v27 code])
        {
          v29 = [v28 code];
        }

        else
        {
          v29 = 16;
        }
      }

      else
      {
        if (a2)
        {
          v29 = sub_1000BA000(a1, 1, v24, 0);
          goto LABEL_147;
        }

        if (v189)
        {
          kdebug_trace();
          v29 = NFSharedSignpostLog();
          if (os_signpost_enabled(v29))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "sseGetHostChallenge in", buf, 2u);
          }

          v193 = 0;
          LODWORD(v29) = sub_10022B0E8(NFSSEWrapper, &v193);
          v30 = v193;
          kdebug_trace();
          v31 = NFSharedSignpostLog();
          if (os_signpost_enabled(v31))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "sseGetHostChallenge out", buf, 2u);
          }

          if (!v30 || v29)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v61 = NFLogGetLogger();
            if (v61)
            {
              v62 = v61;
              v63 = object_getClass(a1);
              v64 = class_isMetaClass(v63);
              v181 = v29;
              v29 = v25;
              v65 = v30;
              v66 = object_getClassName(a1);
              v166 = sel_getName("_requireTransientAuth:uid:applets:authorization:");
              v67 = 45;
              if (v64)
              {
                v67 = 43;
              }

              v158 = v66;
              v30 = v65;
              v25 = v29;
              LODWORD(v29) = v181;
              v62(3, "%c[%{public}s %{public}s]:%i Failed to get host challenge", v67, v158, v166, 1562);
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

              v182 = v70;
              v71 = v29;
              v29 = v25;
              v72 = v30;
              v73 = object_getClassName(a1);
              v74 = sel_getName("_requireTransientAuth:uid:applets:authorization:");
              *buf = 67109890;
              v196 = v182;
              v197 = 2082;
              v198 = v73;
              v30 = v72;
              v25 = v29;
              LODWORD(v29) = v71;
              v199 = 2082;
              v200 = v74;
              v201 = 1024;
              v202 = 1562;
              _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get host challenge", buf, 0x22u);
            }

            if (v29)
            {
              v29 = v29;
            }

            else
            {
              v29 = 6;
            }

            v10 = v187;
          }

          else if ([v30 length] == 8)
          {
            v192 = 0;
            v29 = sub_1000B7A20(a1, v30, &v192);
            v32 = v192;
            v178 = v32;
            if (v29)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v33 = NFLogGetLogger();
              if (v33)
              {
                v34 = v33;
                v35 = object_getClass(a1);
                v179 = v30;
                v36 = class_isMetaClass(v35);
                v37 = object_getClassName(a1);
                v38 = sel_getName("_requireTransientAuth:uid:applets:authorization:");
                if (v29 >= 0x4C)
                {
                  v39 = 76;
                }

                else
                {
                  v39 = v29;
                }

                v172 = off_10031B938[v39];
                v156 = v37;
                v40 = !v36;
                v30 = v179;
                v10 = v187;
                v41 = 45;
                if (!v40)
                {
                  v41 = 43;
                }

                v34(3, "%c[%{public}s %{public}s]:%i %@ err=%d %s", v41, v156, v38, 1574, @"Failed to authenticate", v29, v172);
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

                v180 = v25;
                v45 = v30;
                v46 = object_getClassName(a1);
                v47 = sel_getName("_requireTransientAuth:uid:applets:authorization:");
                if (v29 >= 0x4C)
                {
                  v48 = 76;
                }

                else
                {
                  v48 = v29;
                }

                v49 = off_10031B938[v48];
                *buf = 67110658;
                v196 = v44;
                v197 = 2082;
                v198 = v46;
                v30 = v45;
                v25 = v180;
                v10 = v187;
                v199 = 2082;
                v200 = v47;
                v201 = 1024;
                v202 = 1574;
                v203 = 2112;
                *v204 = @"Failed to authenticate";
                *&v204[8] = 1024;
                v205 = v29;
                v206 = 2080;
                v207 = v49;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@ err=%d %s", buf, 0x3Cu);
              }

              goto LABEL_145;
            }

            if ([v32 length] == 16)
            {
              v184 = v30;
              v191 = 0;
              kdebug_trace();
              v88 = NFSharedSignpostLog();
              if (os_signpost_enabled(v88))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v88, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "sseAuthorize out", buf, 2u);
              }

              v89 = [a1 serialNumberAsData];
              v190 = 0;
              v176 = sub_10022B2D0(NFSSEWrapper, 6, v25, v89, v177, v30, v178, &v191, &v190, 0, 0, 0, 0);
              v175 = v190;

              kdebug_trace();
              v90 = NFSharedSignpostLog();
              if (os_signpost_enabled(v90))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v90, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NFSSEWRAPPER_CALL", "sseAuthorize out", buf, 2u);
              }

              v10 = v187;
              if (v176)
              {
                if ([v176 length] == 8)
                {
                  v29 = sub_1000BA000(a1, 0, v24, v176);
                  if (v29 >= 2)
                  {
                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v91 = NFLogGetLogger();
                    if (v91)
                    {
                      v92 = v91;
                      v93 = object_getClass(a1);
                      v94 = class_isMetaClass(v93);
                      v159 = object_getClassName(a1);
                      v167 = sel_getName("_requireTransientAuth:uid:applets:authorization:");
                      v40 = !v94;
                      v30 = v184;
                      v10 = v187;
                      v95 = 45;
                      if (!v40)
                      {
                        v95 = 43;
                      }

                      v92(3, "%c[%{public}s %{public}s]:%i Failed to disable transient auth requirement for applets %{public}@", v95, v159, v167, 1614, v24);
                    }

                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v96 = NFSharedLogGetLogger();
                    if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
                    {
                      v97 = object_getClass(a1);
                      if (class_isMetaClass(v97))
                      {
                        v98 = 43;
                      }

                      else
                      {
                        v98 = 45;
                      }

                      v99 = object_getClassName(a1);
                      v100 = sel_getName("_requireTransientAuth:uid:applets:authorization:");
                      *buf = 67110146;
                      v196 = v98;
                      v197 = 2082;
                      v198 = v99;
                      v30 = v184;
                      v10 = v187;
                      v199 = 2082;
                      v200 = v100;
                      v201 = 1024;
                      v202 = 1614;
                      v203 = 2114;
                      *v204 = v24;
                      _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to disable transient auth requirement for applets %{public}@", buf, 0x2Cu);
                    }

                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v101 = NFLogGetLogger();
                    if (v101)
                    {
                      v102 = v101;
                      v103 = object_getClass(a1);
                      v104 = class_isMetaClass(v103);
                      v105 = object_getClassName(a1);
                      v106 = sel_getName("_requireTransientAuth:uid:applets:authorization:");
                      if (v29 >= 0x4C)
                      {
                        v107 = 76;
                      }

                      else
                      {
                        v107 = v29;
                      }

                      v173 = off_10031B938[v107];
                      v160 = v105;
                      v40 = !v104;
                      v30 = v184;
                      v10 = v187;
                      v108 = 45;
                      if (!v40)
                      {
                        v108 = 43;
                      }

                      v102(3, "%c[%{public}s %{public}s]:%i %@ err=%d %s", v108, v160, v106, 1615, @"Returned", v29, v173);
                    }

                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    log = NFSharedLogGetLogger();
                    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                    {
                      v109 = object_getClass(a1);
                      if (class_isMetaClass(v109))
                      {
                        v110 = 43;
                      }

                      else
                      {
                        v110 = 45;
                      }

                      v111 = object_getClassName(a1);
                      v112 = sel_getName("_requireTransientAuth:uid:applets:authorization:");
                      if (v29 >= 0x4C)
                      {
                        v113 = 76;
                      }

                      else
                      {
                        v113 = v29;
                      }

                      v114 = off_10031B938[v113];
                      *buf = 67110658;
                      v196 = v110;
                      v197 = 2082;
                      v198 = v111;
                      v30 = v184;
                      v10 = v187;
                      v199 = 2082;
                      v200 = v112;
                      v201 = 1024;
                      v202 = 1615;
                      v203 = 2112;
                      *v204 = @"Returned";
                      *&v204[8] = 1024;
                      v205 = v29;
                      v206 = 2080;
                      v207 = v114;
                      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@ err=%d %s", buf, 0x3Cu);
                    }

                    goto LABEL_142;
                  }

LABEL_144:

                  goto LABEL_145;
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v141 = NFLogGetLogger();
                if (v141)
                {
                  v142 = v141;
                  v143 = object_getClass(a1);
                  v144 = class_isMetaClass(v143);
                  v145 = object_getClassName(a1);
                  v146 = sel_getName("_requireTransientAuth:uid:applets:authorization:");
                  v171 = [v176 length];
                  v147 = 45;
                  if (v144)
                  {
                    v147 = 43;
                  }

                  v163 = v145;
                  v30 = v184;
                  v10 = v187;
                  v142(3, "%c[%{public}s %{public}s]:%i Invalid cryptogram length: %lu", v147, v163, v146, 1608, v171);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                log = NFSharedLogGetLogger();
                if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                {
                  v148 = object_getClass(a1);
                  if (class_isMetaClass(v148))
                  {
                    v149 = 43;
                  }

                  else
                  {
                    v149 = 45;
                  }

                  v150 = object_getClassName(a1);
                  v151 = sel_getName("_requireTransientAuth:uid:applets:authorization:");
                  v152 = [v176 length];
                  *buf = 67110146;
                  v196 = v149;
                  v197 = 2082;
                  v198 = v150;
                  v199 = 2082;
                  v200 = v151;
                  v30 = v184;
                  v10 = v187;
                  v201 = 1024;
                  v202 = 1608;
                  v203 = 2048;
                  *v204 = v152;
                  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid cryptogram length: %lu", buf, 0x2Cu);
                }

                v29 = 13;
LABEL_142:
                v140 = log;
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v129 = NFLogGetLogger();
                if (v129)
                {
                  v130 = v129;
                  v131 = object_getClass(a1);
                  v132 = class_isMetaClass(v131);
                  v133 = object_getClassName(a1);
                  v168 = sel_getName("_requireTransientAuth:uid:applets:authorization:");
                  v134 = 45;
                  if (v132)
                  {
                    v134 = 43;
                  }

                  v162 = v133;
                  v30 = v184;
                  v10 = v187;
                  v130(3, "%c[%{public}s %{public}s]:%i Failed to generate cryptogram", v134, v162, v168, 1604);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v135 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
                {
                  v136 = object_getClass(a1);
                  if (class_isMetaClass(v136))
                  {
                    v137 = 43;
                  }

                  else
                  {
                    v137 = 45;
                  }

                  v138 = object_getClassName(a1);
                  v139 = sel_getName("_requireTransientAuth:uid:applets:authorization:");
                  *buf = 67109890;
                  v196 = v137;
                  v197 = 2082;
                  v198 = v138;
                  v30 = v184;
                  v10 = v187;
                  v199 = 2082;
                  v200 = v139;
                  v201 = 1024;
                  v202 = 1604;
                  _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to generate cryptogram", buf, 0x22u);
                }

                v140 = v135;
                v29 = 8;
              }

              goto LABEL_144;
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v115 = NFLogGetLogger();
            if (v115)
            {
              v116 = v115;
              v117 = object_getClass(a1);
              v185 = v30;
              v118 = class_isMetaClass(v117);
              v119 = object_getClassName(a1);
              v120 = sel_getName("_requireTransientAuth:uid:applets:authorization:");
              v170 = [v178 length];
              v121 = 45;
              if (v118)
              {
                v121 = 43;
              }

              v161 = v119;
              v30 = v185;
              v10 = v187;
              v116(3, "%c[%{public}s %{public}s]:%i Invalid authenticate response length: %lu", v121, v161, v120, 1578, v170);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v122 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
            {
              v123 = object_getClass(a1);
              if (class_isMetaClass(v123))
              {
                v124 = 43;
              }

              else
              {
                v124 = 45;
              }

              v186 = v25;
              v125 = v30;
              v126 = object_getClassName(a1);
              v127 = sel_getName("_requireTransientAuth:uid:applets:authorization:");
              v128 = [v178 length];
              *buf = 67110146;
              v196 = v124;
              v197 = 2082;
              v198 = v126;
              v30 = v125;
              v199 = 2082;
              v200 = v127;
              v25 = v186;
              v10 = v187;
              v201 = 1024;
              v202 = 1578;
              v203 = 2048;
              *v204 = v128;
              _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid authenticate response length: %lu", buf, 0x2Cu);
            }

            v29 = 13;
LABEL_145:
          }

          else
          {
            v183 = v30;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v75 = NFLogGetLogger();
            if (v75)
            {
              v76 = v75;
              v77 = object_getClass(a1);
              v78 = class_isMetaClass(v77);
              v79 = object_getClassName(a1);
              v80 = sel_getName("_requireTransientAuth:uid:applets:authorization:");
              v169 = [v183 length];
              v81 = 45;
              if (v78)
              {
                v81 = 43;
              }

              v76(3, "%c[%{public}s %{public}s]:%i Invalid host challenge length: %lu", v81, v79, v80, 1566, v169);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v82 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
            {
              v83 = object_getClass(a1);
              if (class_isMetaClass(v83))
              {
                v84 = 43;
              }

              else
              {
                v84 = 45;
              }

              v85 = object_getClassName(a1);
              v86 = sel_getName("_requireTransientAuth:uid:applets:authorization:");
              v87 = [v183 length];
              *buf = 67110146;
              v196 = v84;
              v197 = 2082;
              v198 = v85;
              v199 = 2082;
              v200 = v86;
              v201 = 1024;
              v202 = 1566;
              v203 = 2048;
              *v204 = v87;
              _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid host challenge length: %lu", buf, 0x2Cu);
            }

            v29 = 13;
            v30 = v183;
            v10 = v187;
          }

          goto LABEL_147;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v50 = NFLogGetLogger();
        if (v50)
        {
          v51 = v50;
          v52 = object_getClass(a1);
          v53 = class_isMetaClass(v52);
          v54 = object_getClassName(a1);
          v165 = sel_getName("_requireTransientAuth:uid:applets:authorization:");
          v55 = 45;
          if (v53)
          {
            v55 = 43;
          }

          v157 = v54;
          v10 = v187;
          v51(3, "%c[%{public}s %{public}s]:%i Missing SSE handle", v55, v157, v165, 1550);
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
          v60 = sel_getName("_requireTransientAuth:uid:applets:authorization:");
          *buf = 67109890;
          v196 = v58;
          v197 = 2082;
          v198 = v59;
          v10 = v187;
          v199 = 2082;
          v200 = v60;
          v201 = 1024;
          v202 = 1550;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Missing SSE handle", buf, 0x22u);
        }

        v29 = 9;
      }

LABEL_147:

      if (v29)
      {

        goto LABEL_154;
      }

      v11 += v12;
      v153 = [v10 count];
      v154 = v153;
      if ((v153 - v11) >= 0xC)
      {
        v12 = 12;
      }

      else
      {
        v12 = v153 - v11;
      }
    }

    while (v154 != v11);
  }

  v29 = 0;
LABEL_154:

  return v29;
}

uint64_t sub_100205314(void *a1, void *a2, unsigned int a3, _BYTE *a4)
{
  v7 = a2;
  if (a1)
  {
    v80 = 0;
    v8 = sub_1002543BC(a1, &v80);
    v9 = v80;
    if (v8)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v11 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("restoreTransientAuthForAllAppletsExcept:uid:updated:");
        v14 = 45;
        if (isMetaClass)
        {
          v14 = 43;
        }

        v11(3, "%c[%{public}s %{public}s]:%i getApplets failed - %{public}@", v14, ClassName, Name, 1647, v8);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = object_getClass(a1);
        if (class_isMetaClass(v16))
        {
          v17 = 43;
        }

        else
        {
          v17 = 45;
        }

        v18 = object_getClassName(a1);
        v19 = sel_getName("restoreTransientAuthForAllAppletsExcept:uid:updated:");
        *buf = 67110146;
        v82 = v17;
        v83 = 2082;
        v84 = v18;
        v85 = 2082;
        v86 = v19;
        v87 = 1024;
        v88 = 1647;
        v89 = 2114;
        v90 = v8;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i getApplets failed - %{public}@", buf, 0x2Cu);
      }

      v20 = 6;
    }

    else
    {
      v65 = a3;
      v66 = a4;
      v15 = objc_opt_new();
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v67 = v9;
      v21 = v9;
      v22 = [v21 countByEnumeratingWithState:&v76 objects:v94 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v77;
        v69 = v7;
        v70 = v15;
        v71 = a1;
        v68 = v21;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v77 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v76 + 1) + 8 * i);
            if ([v26 authTransientConfigurable] && (objc_msgSend(v26, "authTransientSupport") & 1) == 0 && (objc_msgSend(v26, "isGPLocked") & 1) == 0 && objc_msgSend(v26, "lifecycleState") == 15)
            {
              v74 = 0u;
              v75 = 0u;
              v72 = 0u;
              v73 = 0u;
              v27 = v7;
              v28 = [v27 countByEnumeratingWithState:&v72 objects:v93 count:16];
              if (v28)
              {
                v29 = v28;
                v30 = *v73;
                while (2)
                {
                  for (j = 0; j != v29; j = j + 1)
                  {
                    if (*v73 != v30)
                    {
                      objc_enumerationMutation(v27);
                    }

                    v32 = *(*(&v72 + 1) + 8 * j);
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                      v49 = NFLogGetLogger();
                      if (v49)
                      {
                        v50 = v49;
                        v51 = object_getClass(v71);
                        v52 = class_isMetaClass(v51);
                        v53 = object_getClassName(v71);
                        v64 = sel_getName("restoreTransientAuthForAllAppletsExcept:uid:updated:");
                        v54 = 45;
                        if (v52)
                        {
                          v54 = 43;
                        }

                        v50(3, "%c[%{public}s %{public}s]:%i aids provided are not of NSString class", v54, v53, v64, 1664);
                      }

                      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                      v55 = NFSharedLogGetLogger();
                      v7 = v69;
                      v15 = v70;
                      v9 = v67;
                      v8 = 0;
                      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                      {
                        v56 = object_getClass(v71);
                        if (class_isMetaClass(v56))
                        {
                          v57 = 43;
                        }

                        else
                        {
                          v57 = 45;
                        }

                        v58 = object_getClassName(v71);
                        v59 = sel_getName("restoreTransientAuthForAllAppletsExcept:uid:updated:");
                        *buf = 67109890;
                        v82 = v57;
                        v83 = 2082;
                        v84 = v58;
                        v85 = 2082;
                        v86 = v59;
                        v87 = 1024;
                        v88 = 1664;
                        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i aids provided are not of NSString class", buf, 0x22u);
                      }

                      v20 = 10;
                      goto LABEL_60;
                    }

                    v33 = [v26 identifier];
                    v34 = [v32 caseInsensitiveCompare:v33];

                    if (!v34)
                    {

                      v7 = v69;
                      v15 = v70;
                      a1 = v71;
                      v21 = v68;
                      goto LABEL_33;
                    }
                  }

                  v29 = [v27 countByEnumeratingWithState:&v72 objects:v93 count:16];
                  v21 = v68;
                  v7 = v69;
                  if (v29)
                  {
                    continue;
                  }

                  break;
                }
              }

              v15 = v70;
              [v70 addObject:v26];
              a1 = v71;
            }

LABEL_33:
            ;
          }

          v23 = [v21 countByEnumeratingWithState:&v76 objects:v94 count:16];
        }

        while (v23);
      }

      if ([v15 count])
      {
        v35 = sub_1002040C4(a1, 1, v65, v15, 0);
        v8 = 0;
        if (v35)
        {
          v36 = v35;
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v37 = NFLogGetLogger();
          if (v37)
          {
            v38 = v37;
            v39 = object_getClass(a1);
            v40 = class_isMetaClass(v39);
            v41 = object_getClassName(a1);
            v63 = sel_getName("restoreTransientAuthForAllAppletsExcept:uid:updated:");
            v42 = 45;
            if (v40)
            {
              v42 = 43;
            }

            v38(4, "%c[%{public}s %{public}s]:%i Failed to restore transient auth to applets %{public}@ : %d", v42, v41, v63, 1682, v15, v36);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v43 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v44 = object_getClass(a1);
            if (class_isMetaClass(v44))
            {
              v45 = 43;
            }

            else
            {
              v45 = 45;
            }

            v46 = object_getClassName(a1);
            v47 = sel_getName("restoreTransientAuthForAllAppletsExcept:uid:updated:");
            *buf = 67110402;
            v82 = v45;
            v83 = 2082;
            v84 = v46;
            v85 = 2082;
            v86 = v47;
            v87 = 1024;
            v88 = 1682;
            v89 = 2114;
            v90 = v15;
            v91 = 1024;
            v92 = v36;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to restore transient auth to applets %{public}@ : %d", buf, 0x32u);
          }
        }

        v48 = sub_100255A90(a1, v15);
        v9 = v67;
        v20 = 0;
        if (v66)
        {
          *v66 = 1;
        }
      }

      else
      {
        v20 = 0;
        v9 = v67;
        v8 = 0;
      }
    }

LABEL_60:
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

id sub_1002059D0(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v68 = 0;
  v7 = sub_1001599F4(a1, &v68);
  v8 = v68;
  v67 = v5;
  if (v8)
  {
    v9 = v8;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v11 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_sendTokenToCRS:mac:");
      v14 = 45;
      if (isMetaClass)
      {
        v14 = 43;
      }

      v11(3, "%c[%{public}s %{public}s]:%i Failed to select CRS: %{public}@", v14, ClassName, Name, 1752, v9);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = object_getClass(a1);
      if (class_isMetaClass(v16))
      {
        v17 = 43;
      }

      else
      {
        v17 = 45;
      }

      v18 = object_getClassName(a1);
      v19 = sel_getName("_sendTokenToCRS:mac:");
      *buf = 67110146;
      v78 = v17;
      v79 = 2082;
      v80 = v18;
      v81 = 2082;
      v82 = v19;
      v83 = 1024;
      v84 = 1752;
      v85 = 2114;
      v86 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select CRS: %{public}@", buf, 0x2Cu);
    }

    v20 = [NSError alloc];
    v21 = [NSString stringWithUTF8String:"nfcd"];
    v22 = [v9 code];
    v75[0] = NSLocalizedDescriptionKey;
    if ([v9 code] > 75)
    {
      v23 = 76;
    }

    else
    {
      v23 = [v9 code];
    }

    v29 = [NSString stringWithUTF8String:off_10031B938[v23]];
    v76[0] = v29;
    v76[1] = v9;
    v75[1] = NSUnderlyingErrorKey;
    v75[2] = @"Line";
    v76[2] = &off_100335CE8;
    v75[3] = @"Method";
    v30 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sendTokenToCRS:mac:")];
    v76[3] = v30;
    v75[4] = NSDebugDescriptionErrorKey;
    v31 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sendTokenToCRS:mac:"), 1753];
    v76[4] = v31;
    v35 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:5];
    v36 = [v20 initWithDomain:v21 code:v22 userInfo:v35];

    goto LABEL_44;
  }

  if (!v7)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFLogGetLogger();
    if (v37)
    {
      v38 = v37;
      v39 = object_getClass(a1);
      v40 = class_isMetaClass(v39);
      v41 = object_getClassName(a1);
      v65 = sel_getName("_sendTokenToCRS:mac:");
      v42 = 45;
      if (v40)
      {
        v42 = 43;
      }

      v38(3, "%c[%{public}s %{public}s]:%i Failed to select CRS, expecting RAPDU", v42, v41, v65, 1756);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v43 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = object_getClass(a1);
      if (class_isMetaClass(v44))
      {
        v45 = 43;
      }

      else
      {
        v45 = 45;
      }

      v46 = object_getClassName(a1);
      v47 = sel_getName("_sendTokenToCRS:mac:");
      *buf = 67109890;
      v78 = v45;
      v79 = 2082;
      v80 = v46;
      v81 = 2082;
      v82 = v47;
      v83 = 1024;
      v84 = 1756;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select CRS, expecting RAPDU", buf, 0x22u);
    }

    v48 = [NSError alloc];
    v9 = [NSString stringWithUTF8String:"nfcd"];
    v73[0] = NSLocalizedDescriptionKey;
    v21 = [NSString stringWithUTF8String:"Command Error"];
    v74[0] = v21;
    v74[1] = &off_100335D00;
    v73[1] = @"Line";
    v73[2] = @"Method";
    v29 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sendTokenToCRS:mac:")];
    v74[2] = v29;
    v73[3] = NSDebugDescriptionErrorKey;
    v30 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sendTokenToCRS:mac:"), 1757];
    v74[3] = v30;
    v49 = v74;
    v50 = v73;
    goto LABEL_42;
  }

  if ([v7 status] != 36864)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v51 = NFLogGetLogger();
    if (v51)
    {
      v52 = v51;
      v53 = object_getClass(a1);
      v54 = class_isMetaClass(v53);
      v55 = object_getClassName(a1);
      v66 = sel_getName("_sendTokenToCRS:mac:");
      v56 = 45;
      if (v54)
      {
        v56 = 43;
      }

      v52(3, "%c[%{public}s %{public}s]:%i Failed to select CRS, expecting0x9000", v56, v55, v66, 1760);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v57 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v58 = object_getClass(a1);
      if (class_isMetaClass(v58))
      {
        v59 = 43;
      }

      else
      {
        v59 = 45;
      }

      v60 = object_getClassName(a1);
      v61 = sel_getName("_sendTokenToCRS:mac:");
      *buf = 67109890;
      v78 = v59;
      v79 = 2082;
      v80 = v60;
      v81 = 2082;
      v82 = v61;
      v83 = 1024;
      v84 = 1760;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select CRS, expecting0x9000", buf, 0x22u);
    }

    v48 = [NSError alloc];
    v9 = [NSString stringWithUTF8String:"nfcd"];
    v71[0] = NSLocalizedDescriptionKey;
    v21 = [NSString stringWithUTF8String:"Command Error"];
    v72[0] = v21;
    v72[1] = &off_100335D18;
    v71[1] = @"Line";
    v71[2] = @"Method";
    v29 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sendTokenToCRS:mac:")];
    v72[2] = v29;
    v71[3] = NSDebugDescriptionErrorKey;
    v30 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sendTokenToCRS:mac:"), 1761];
    v72[3] = v30;
    v49 = v72;
    v50 = v71;
LABEL_42:
    v31 = [NSDictionary dictionaryWithObjects:v49 forKeys:v50 count:4];
    v32 = v48;
    v33 = v9;
    v34 = 16;
LABEL_43:
    v36 = [v32 initWithDomain:v33 code:v34 userInfo:v31];
LABEL_44:

    v5 = v67;
    goto LABEL_45;
  }

  v24 = sub_1000B6A7C(a1, v5, v6);
  if (v24)
  {
    v25 = v24;
    v26 = [NSError alloc];
    v9 = [NSString stringWithUTF8String:"nfcd"];
    v27 = v25;
    v69[0] = NSLocalizedDescriptionKey;
    if (v25 >= 0x4C)
    {
      v28 = 76;
    }

    else
    {
      v28 = v25;
    }

    v21 = [NSString stringWithUTF8String:off_10031B938[v28]];
    v70[0] = v21;
    v70[1] = &off_100335D30;
    v69[1] = @"Line";
    v69[2] = @"Method";
    v29 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sendTokenToCRS:mac:")];
    v70[2] = v29;
    v69[3] = NSDebugDescriptionErrorKey;
    v30 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sendTokenToCRS:mac:"), 1766];
    v70[3] = v30;
    v31 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:4];
    v32 = v26;
    v33 = v9;
    v34 = v27;
    goto LABEL_43;
  }

  v36 = 0;
LABEL_45:

  return v36;
}

id *sub_10020630C(id *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v9 = 0;
    v4 = sub_1001599F4(a1, &v9);
    v5 = v9;
    v6 = v5;
    if (v5)
    {
      if (a2)
      {
        v7 = v5;
        v2 = 0;
        *a2 = v6;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = sub_1001F7688(v2, a2);
    }
  }

  return v2;
}

uint64_t sub_100206668(uint64_t result, uint64_t a2, char a3, _BYTE *a4)
{
  if ((a3 & 0x10) == 0)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  *a4 = 1;
  return result;
}

BOOL sub_100206688(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 length];
  if (v7 <= [*(a1 + 32) length])
  {
    v9 = *(a1 + 32);
    if (*(a1 + 40) == 1)
    {
      v10 = [v6 length];
      v11 = [*(a1 + 32) length];
      v12 = *(a1 + 32);
      if (v10 == v11)
      {
        v13 = v12;
      }

      else
      {
        v13 = [v12 substringToIndex:{objc_msgSend(v6, "length")}];
      }

      v14 = v13;

      v9 = v14;
    }

    v8 = [v9 compare:v6 options:11] == 0;
  }

  else
  {
    v8 = 0;
    *a4 = 1;
  }

  return v8;
}

void sub_100206C84(_BYTE *a1)
{
  if (a1)
  {
    objc_opt_self();
    a1[14] = MKBGetDeviceLockState() - 1 < 2;
    if (a1[12] != 1 || (a1[13] & 1) == 0)
    {
      valuePtr = 0;
      v2 = MKBGetDeviceLockStateInfo();
      if (v2)
      {
        v3 = v2;
        Value = CFDictionaryGetValue(v2, kMKBInfoBagState);
        if (Value && (v5 = Value, TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(v5)))
        {
          v7 = CFNumberGetValue(v5, kCFNumberSInt32Type, &valuePtr);
          CFRelease(v3);
          if (v7)
          {
            v8 = (valuePtr & 0x2000) == 0;
            v9 = (~valuePtr & 0xA000) == 0;
            v10 = (valuePtr & 6) == 0;
            a1[12] = (valuePtr & 6) != 0;
            v11 = !v10 && v8;
            a1[13] = v9 || v11;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              if ((valuePtr & 0x2000) != 0)
              {
                v13 = &stru_10031EA18;
              }

              else
              {
                v13 = @" not";
              }

              Logger(6, "%s:%i Keybag is%@ SE entangled, state is 0x%x", "[NFKeyBag _updateFirstUnlockStatus]", 93, v13, valuePtr);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v14 = NFSharedLogGetLogger();
            if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_31;
            }

            if ((valuePtr & 0x2000) != 0)
            {
              v15 = &stru_10031EA18;
            }

            else
            {
              v15 = @" not";
            }

            *buf = 136446978;
            v25 = "[NFKeyBag _updateFirstUnlockStatus]";
            v26 = 1024;
            v27 = 93;
            v28 = 2112;
            v29 = v15;
            v30 = 1024;
            v31 = valuePtr;
            v16 = "%{public}s:%i Keybag is%@ SE entangled, state is 0x%x";
            v17 = v14;
            v18 = OS_LOG_TYPE_DEFAULT;
            v19 = 34;
LABEL_30:
            _os_log_impl(&_mh_execute_header, v17, v18, v16, buf, v19);
LABEL_31:

            return;
          }
        }

        else
        {
          CFRelease(v3);
        }
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v20 = NFLogGetLogger();
      if (v20)
      {
        v20(3, "%s:%i Failed to query unlock state", "GetKeybagState", 39);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v21 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v25 = "GetKeybagState";
        v26 = 1024;
        v27 = 39;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to query unlock state", buf, 0x12u);
      }

      *(a1 + 6) = 257;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v22 = NFLogGetLogger();
      if (v22)
      {
        v22(3, "%s:%i Error getting device unlock state", "[NFKeyBag _updateFirstUnlockStatus]", 102);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v14 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      *buf = 136446466;
      v25 = "[NFKeyBag _updateFirstUnlockStatus]";
      v26 = 1024;
      v27 = 102;
      v16 = "%{public}s:%i Error getting device unlock state";
      v17 = v14;
      v18 = OS_LOG_TYPE_ERROR;
      v19 = 18;
      goto LABEL_30;
    }
  }
}

void sub_100206FF0(void *a1)
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
      Name = sel_getName("_lockStateChanged");
      v7 = 45;
      if (isMetaClass)
      {
        v7 = 43;
      }

      v3(6, "%c[%{public}s %{public}s]:%i ", v7, ClassName, Name, 141);
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
      v31 = v10;
      v32 = 2082;
      v33 = object_getClassName(a1);
      v34 = 2082;
      v35 = sel_getName("_lockStateChanged");
      v36 = 1024;
      v37 = 141;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
    }

    v11 = a1;
    objc_sync_enter(v11);
    sub_100206C84(v11);
    v12 = *(v11 + 14);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v14 = v13;
      v15 = object_getClass(v11);
      v16 = class_isMetaClass(v15);
      v17 = object_getClassName(v11);
      v18 = sel_getName("_lockStateChanged");
      v19 = 43;
      if (!v16)
      {
        v19 = 45;
      }

      v14(6, "%c[%{public}s %{public}s]:%i locked=%d beenUnlocked=%d beenSEUnlocked=%d", v19, v17, v18, 154, *(v11 + 14), *(v11 + 12), *(v11 + 13));
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = object_getClass(v11);
      if (class_isMetaClass(v21))
      {
        v22 = 43;
      }

      else
      {
        v22 = 45;
      }

      v23 = object_getClassName(v11);
      v24 = sel_getName("_lockStateChanged");
      v25 = *(v11 + 14);
      v26 = *(v11 + 12);
      v27 = *(v11 + 13);
      *buf = 67110658;
      v31 = v22;
      v32 = 2082;
      v33 = v23;
      v34 = 2082;
      v35 = v24;
      v36 = 1024;
      v37 = 154;
      v38 = 1024;
      v39 = v25;
      v40 = 1024;
      v41 = v26;
      v42 = 1024;
      v43 = v27;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i locked=%d beenUnlocked=%d beenSEUnlocked=%d", buf, 0x34u);
    }

    v28 = objc_retainBlock(v11[2]);
    objc_sync_exit(v11);

    if (v28)
    {
      v28[2](v28, v12);
    }
  }
}

void sub_100207314(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = a1;
    objc_sync_enter(v7);
    v8 = objc_retainBlock(v6);
    v9 = *(v7 + 2);
    *(v7 + 2) = v8;

    objc_sync_exit(v7);
    if (v7[2] == -1)
    {
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100207404;
      handler[3] = &unk_10031BBF8;
      handler[4] = v7;
      notify_register_dispatch("com.apple.mobile.keybagd.lock_status", v7 + 2, v5, handler);
      sub_100206FF0(v7);
    }
  }
}

void sub_100207404(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "Lock state changed", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(v2, &v3);
  os_activity_scope_leave(&v3);

  sub_100206FF0(*(a1 + 32));
}

void sub_100207470(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = *(v1 + 2);
    *(v1 + 2) = 0;

    objc_sync_exit(v1);
    if ((v1[2] & 0x80000000) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v4 = Logger;
        Class = object_getClass(v1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v1);
        Name = sel_getName("unregisterStateChange");
        v8 = 45;
        if (isMetaClass)
        {
          v8 = 43;
        }

        v4(6, "%c[%{public}s %{public}s]:%i Clearing mkb notification", v8, ClassName, Name, 188);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v9 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = object_getClass(v1);
        if (class_isMetaClass(v10))
        {
          v11 = 43;
        }

        else
        {
          v11 = 45;
        }

        *buf = 67109890;
        v14 = v11;
        v15 = 2082;
        v16 = object_getClassName(v1);
        v17 = 2082;
        v18 = sel_getName("unregisterStateChange");
        v19 = 1024;
        v20 = 188;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Clearing mkb notification", buf, 0x22u);
      }

      notify_cancel(v1[2]);
      v1[2] = -1;
    }
  }
}

uint64_t sub_100207630(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = v1[14];
    objc_sync_exit(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

BOOL sub_100207B18(void *a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && !a2)
  {
    v4 = @"CN";
    v6 = sub_10027E6DC(v5);
    v8 = *(v7 + 4032);
    v9 = sub_10027E6B8(v6);
    v11 = *(v10 + 4024);
    v12 = v12 || v11 == 0;
    if (!v12)
    {
      v13 = sub_10027E4B0(v9);
      if (v13 || (v13 = sub_10027E484(v14)) != 0)
      {
        v15 = v13;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v17 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("_isLastKnownCountryCode:");
          v20 = 45;
          if (isMetaClass)
          {
            v20 = 43;
          }

          v17(6, "%c[%{public}s %{public}s]:%i CountryCode is %{public}@\n", v20, ClassName, Name, 39, v15);
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

          *buf = 67110146;
          v38 = v23;
          v39 = 2082;
          v40 = object_getClassName(a1);
          v41 = 2082;
          v42 = sel_getName("_isLastKnownCountryCode:");
          v43 = 1024;
          v44 = 39;
          v45 = 2114;
          v46 = v15;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i CountryCode is %{public}@\n", buf, 0x2Cu);
        }

        v2 = [@"CN" caseInsensitiveCompare:v15] == 0;
        CFRelease(v15);
        goto LABEL_21;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v25 = NFLogGetLogger();
      if (v25)
      {
        v26 = v25;
        v27 = object_getClass(a1);
        v28 = class_isMetaClass(v27);
        v29 = object_getClassName(a1);
        v36 = sel_getName("_isLastKnownCountryCode:");
        v30 = 45;
        if (v28)
        {
          v30 = 43;
        }

        v26(6, "%c[%{public}s %{public}s]:%i CountryCode is NULL", v30, v29, v36, 46);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
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

        *buf = 67109890;
        v38 = v33;
        v39 = 2082;
        v40 = object_getClassName(a1);
        v41 = 2082;
        v42 = sel_getName("_isLastKnownCountryCode:");
        v43 = 1024;
        v44 = 46;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i CountryCode is NULL", buf, 0x22u);
      }
    }

    v2 = 0;
LABEL_21:
  }

  return v2;
}

id *sub_100207E50(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = NFScreenStateMonitor;
    v5 = objc_msgSendSuper2(&v9, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      objc_storeWeak(a1 + 2, 0);
      v6 = a1[3];
      a1[3] = 0;

      v7 = a1[4];
      a1[4] = 0;

      a1[5] = 0;
      *(a1 + 12) = -1;
    }
  }

  return a1;
}

void sub_100207EF8(id *a1, void *a2)
{
  obj = a2;
  if (a1 && (NFIsDarwinOS() & 1) == 0)
  {
    objc_storeWeak(a1 + 2, obj);
    if (obj)
    {
      sub_100207F98(a1, v3);
      sub_1002081F8(a1);
    }

    else
    {
      [a1[4] setTransitionHandler:0];
      v4 = a1[4];
      a1[4] = 0;

      [a1[3] invalidate];
      sub_100208428(a1);
    }
  }
}

void sub_100207F98(uint64_t a1, double a2)
{
  if (a1 && !*(a1 + 32))
  {
    sub_10027E868(a2);
    v5 = *(v3 + 4056);
    if (objc_opt_class() && (sub_10027E844(v6), v7 = *(v2 + 4048), objc_opt_class()))
    {
      v8 = [*(v3 + 4056) configurationForDefaultMainDisplayMonitor];
      v9 = *(a1 + 32);
      *(a1 + 32) = v8;

      objc_initWeak(&location, a1);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100001D40;
      v22[3] = &unk_10031BC48;
      objc_copyWeak(&v23, &location);
      [*(a1 + 32) setTransitionHandler:v22];
      v10 = [*(v2 + 4048) monitorWithConfiguration:*(a1 + 32)];
      v11 = *(a1 + 24);
      *(a1 + 24) = v10;

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v13 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_registerFromFrontboardServices");
        v17 = 45;
        if (isMetaClass)
        {
          v17 = 43;
        }

        v13(3, "%c[%{public}s %{public}s]:%i FrontBoardServices is not available.", v17, ClassName, Name, 103);
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

        LODWORD(location) = 67109890;
        HIDWORD(location) = v20;
        v25 = 2082;
        v26 = object_getClassName(a1);
        v27 = 2082;
        v28 = sel_getName("_registerFromFrontboardServices");
        v29 = 1024;
        v30 = 103;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i FrontBoardServices is not available.", &location, 0x22u);
      }
    }
  }
}

void sub_1002081F8(uint64_t a1)
{
  if (a1 && NFIsInternalBuild())
  {
    objc_initWeak(&location, a1);
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100208474;
    v18 = &unk_100316C78;
    objc_copyWeak(&v19, &location);
    v2 = objc_retainBlock(&v15);
    if (notify_register_dispatch("com.apple.stockholm.bg.tag.detect.state", (a1 + 48), *(a1 + 8), v2))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v4 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_registerBGTagDetectOverrideNotifications");
        v8 = 45;
        if (isMetaClass)
        {
          v8 = 43;
        }

        v4(4, "%c[%{public}s %{public}s]:%i Fail to register for bg tag detect state change", v8, ClassName, Name, 147, v15, v16, v17, v18);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v9 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = object_getClass(a1);
        if (class_isMetaClass(v10))
        {
          v11 = 43;
        }

        else
        {
          v11 = 45;
        }

        v12 = object_getClassName(a1);
        v13 = sel_getName("_registerBGTagDetectOverrideNotifications");
        *buf = 67109890;
        v22 = v11;
        v23 = 2082;
        v24 = v12;
        v25 = 2082;
        v26 = v13;
        v27 = 1024;
        v28 = 147;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Fail to register for bg tag detect state change", buf, 0x22u);
      }
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

uint64_t sub_100208428(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 48);
    if (result != -1)
    {
      result = notify_is_valid_token(result);
      if (result)
      {
        result = notify_cancel(*(v1 + 48));
      }

      *(v1 + 48) = -1;
    }
  }

  return result;
}

void sub_100208474(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    state64 = 0;
    if (!notify_get_state(a2, &state64))
    {
      v4 = state64;
      if (state64 == 1)
      {
        v5 = "screen on update";
      }

      else
      {
        v5 = "screen off update";
      }

      v6 = _os_activity_create(&_mh_execute_header, v5, &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      os_activity_scope_enter(v6, &state);
      os_activity_scope_leave(&state);

      v7 = objc_loadWeakRetained(WeakRetained + 2);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v9 = objc_loadWeakRetained(WeakRetained + 2);
        [v9 didScreenStateChange:v4 == 1];
      }
    }
  }
}

void sub_1002085BC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = +[NFCALogger sharedCALogger];
  v13[0] = @"operationType";
  v4 = [v2 objectForKey:@"purpleTrustOperationType"];
  v5 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 unsignedIntValue]);
  v14[0] = v5;
  v13[1] = @"errorStep";
  v6 = [v2 objectForKey:@"purpleTrustOperationErrorStep"];
  v7 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v6 unsignedIntValue]);
  v14[1] = v7;
  v13[2] = @"awdErrorCode";
  v8 = [v2 objectForKey:@"purpleTrustOperationCAErrorCode"];
  v9 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v8 unsignedIntValue]);
  v14[2] = v9;
  v13[3] = @"errorCode";
  v10 = [v2 objectForKey:@"purpleTrustOperationErrorCode"];

  v11 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v10 unsignedIntValue]);
  v14[3] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];
  [v3 postCAEventFor:@"com.apple.nfcd.purpleTrustOperationEvent" eventInput:v12];
}

void sub_1002087CC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = +[NFCALogger sharedCALogger];
  v4 = [v3 getTimestamp];

  v5 = +[NFCALogger sharedCALogger];
  v13[0] = @"errorStep";
  v6 = [v2 objectForKey:@"peerPaymentEnrollmentErrorStep"];
  v7 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v6 unsignedIntValue]);
  v14[0] = v7;
  v13[1] = @"errorCode";
  v8 = [v2 objectForKey:@"peerPaymentEnrollmentErrorCode"];
  v9 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v8 unsignedIntValue]);
  v14[1] = v9;
  v13[2] = @"duration";
  v10 = [v2 objectForKey:@"peerPaymentEnrollmentStartTime"];

  v11 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v4 - [v10 unsignedLongLongValue]);
  v14[2] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
  [v5 postCAEventFor:@"com.apple.nfcd.peerPaymentEnrolledEvent" eventInput:v12];
}

void sub_1002089AC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = +[NFCALogger sharedCALogger];
  v14 = [v3 getTimestamp];

  v4 = +[NFCALogger sharedCALogger];
  v15[0] = @"type";
  v5 = [v2 objectForKey:@"peerPaymentRequestType"];
  v6 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v5 unsignedIntValue]);
  v16[0] = v6;
  v15[1] = @"errorStep";
  v7 = [v2 objectForKey:@"peerPaymentRequestErrorStep"];
  v8 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v7 unsignedIntValue]);
  v16[1] = v8;
  v15[2] = @"errorCode";
  v9 = [v2 objectForKey:@"peerPaymentRequestErrorCode"];
  v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v9 unsignedIntValue]);
  v16[2] = v10;
  v15[3] = @"duration";
  v11 = [v2 objectForKey:@"peerPaymentRequestStartTime"];

  v12 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v14 - [v11 unsignedLongLongValue]);
  v16[3] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];
  [v4 postCAEventFor:@"com.apple.nfcd.peerPaymentRequestEvent" eventInput:v13];
}

void sub_1002092D4(uint64_t a1)
{
  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v22 = [*(a1 + 32) _getSecureElementWrapperForSEID:*(a1 + 40)];
    if (v22)
    {
      v18 = v22;
      v23 = *(a1 + 64);
      v40 = 0;
      v20 = sub_100096634(v22, v23, &v40);
      v19 = v40;
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v25 = Logger;
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 56));
        v29 = 45;
        if (isMetaClass)
        {
          v29 = 43;
        }

        v25(3, "%c[%{public}s %{public}s]:%i Invalid secure element", v29, ClassName, Name, 72);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v30 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v31))
        {
          v32 = 43;
        }

        else
        {
          v32 = 45;
        }

        v33 = object_getClassName(*(a1 + 32));
        v34 = sel_getName(*(a1 + 56));
        *buf = 67109890;
        v46 = v32;
        v47 = 2082;
        v48 = v33;
        v49 = 2082;
        v50 = v34;
        v51 = 1024;
        v52 = 72;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid secure element", buf, 0x22u);
      }

      v35 = *(a1 + 48);
      v36 = [NSError alloc];
      v19 = [NSString stringWithUTF8String:"nfcd"];
      v41 = NSLocalizedDescriptionKey;
      v20 = [NSString stringWithUTF8String:"Stack Error"];
      v42 = v20;
      v37 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v38 = [v36 initWithDomain:v19 code:15 userInfo:v37];
      (*(v35 + 16))(v35, 0, v38);

      v18 = 0;
    }

    goto LABEL_15;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v2 = NFLogGetLogger();
  if (v2)
  {
    v3 = v2;
    v4 = object_getClass(*(a1 + 32));
    v5 = class_isMetaClass(v4);
    v6 = object_getClassName(*(a1 + 32));
    v7 = sel_getName(*(a1 + 56));
    v8 = [*(a1 + 32) sessionUID];
    v9 = 45;
    if (v5)
    {
      v9 = 43;
    }

    v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, v6, v7, 65, v8);
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
    v14 = sel_getName(*(a1 + 56));
    v15 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v46 = v12;
    v47 = 2082;
    v48 = v13;
    v49 = 2082;
    v50 = v14;
    v51 = 1024;
    v52 = 65;
    v53 = 2114;
    v54 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v43 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Session not active"];
    v44 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
    (*(v16 + 16))(v16, 0, v21);

LABEL_15:
  }
}

void sub_1002098A4(uint64_t a1)
{
  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v22 = [*(a1 + 32) _getSecureElementWrapperForSEID:*(a1 + 40)];
    if (v22)
    {
      v18 = v22;
      v23 = *(a1 + 48);
      v24 = sub_10009B324(v22, *(a1 + 64));
      (*(v23 + 16))(v23, v24);
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v26 = Logger;
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 56));
        v30 = 45;
        if (isMetaClass)
        {
          v30 = 43;
        }

        v26(3, "%c[%{public}s %{public}s]:%i Invalid secure element", v30, ClassName, Name, 94);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v32))
        {
          v33 = 43;
        }

        else
        {
          v33 = 45;
        }

        v34 = object_getClassName(*(a1 + 32));
        v35 = sel_getName(*(a1 + 56));
        *buf = 67109890;
        v48 = v33;
        v49 = 2082;
        v50 = v34;
        v51 = 2082;
        v52 = v35;
        v53 = 1024;
        v54 = 94;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid secure element", buf, 0x22u);
      }

      v36 = *(a1 + 48);
      v37 = [NSError alloc];
      v38 = [NSString stringWithUTF8String:"nfcd"];
      v43 = NSLocalizedDescriptionKey;
      v39 = [NSString stringWithUTF8String:"Stack Error"];
      v44 = v39;
      v40 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v41 = [v37 initWithDomain:v38 code:15 userInfo:v40];
      (*(v36 + 16))(v36, v41);

      v18 = 0;
    }

    goto LABEL_15;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v2 = NFLogGetLogger();
  if (v2)
  {
    v3 = v2;
    v4 = object_getClass(*(a1 + 32));
    v5 = class_isMetaClass(v4);
    v6 = object_getClassName(*(a1 + 32));
    v7 = sel_getName(*(a1 + 56));
    v8 = [*(a1 + 32) sessionUID];
    v9 = 45;
    if (v5)
    {
      v9 = 43;
    }

    v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, v6, v7, 89, v8);
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
    v14 = sel_getName(*(a1 + 56));
    v15 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v48 = v12;
    v49 = 2082;
    v50 = v13;
    v51 = 2082;
    v52 = v14;
    v53 = 1024;
    v54 = 89;
    v55 = 2114;
    v56 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v45 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Session not active"];
    v46 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
    (*(v16 + 16))(v16, v21);

LABEL_15:
  }
}

void sub_100209E34(uint64_t a1)
{
  v2 = objc_opt_new();
  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v19 = [*(a1 + 32) embeddedSecureElementWrapper];

    if (v19)
    {
      v23 = objc_opt_new();
      buf[0] = 0;
      v24 = [*(a1 + 32) embeddedSecureElementWrapper];
      v25 = sub_10009DEA8(v24);

      if (v25)
      {
        v26 = [NSNumber numberWithBool:buf[0]];
        [v23 setValue:v26 forKey:@"HasACLog"];
      }

      v27 = [*(a1 + 32) embeddedSecureElementWrapper];
      v31 = 0;
      v28 = sub_10009D15C(v27, &v31);
      v19 = v31;

      if (v28)
      {
        [v23 setValue:v28 forKey:@"ACLog"];
      }

      v29 = [*(a1 + 32) embeddedSecureElementWrapper];
      v30 = [v29 systemOSSerialNumber];
      [v2 setValue:v23 forKey:v30];
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_15;
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
    v9 = [*(a1 + 32) sessionUID];
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v4(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v10, ClassName, Name, 110, v9);
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
    v15 = sel_getName(*(a1 + 48));
    v16 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v35 = v13;
    v36 = 2082;
    v37 = v14;
    v38 = 2082;
    v39 = v15;
    v40 = 1024;
    v41 = 110;
    v42 = 2114;
    v43 = v16;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    v18 = [NSError alloc];
    v19 = [NSString stringWithUTF8String:"nfcd"];
    v32 = NSLocalizedDescriptionKey;
    v20 = [NSString stringWithUTF8String:"Session not active"];
    v33 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v22 = [v18 initWithDomain:v19 code:54 userInfo:v21];
    (*(v17 + 16))(v17, v22, 0);

LABEL_15:
  }
}

void sub_10020A2F8(uint64_t a1)
{
  if (![*(a1 + 32) didStart] || (objc_msgSend(*(a1 + 32), "isSuspended") & 1) != 0 || objc_msgSend(*(a1 + 32), "didEnd"))
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
      v8 = [*(a1 + 32) sessionUID];
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 136, v8);
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
      v15 = [*(a1 + 32) sessionUID];
      *buf = 67110146;
      *&buf[4] = v12;
      *v67 = 2082;
      *&v67[2] = v13;
      *&v67[10] = 2082;
      *&v67[12] = v14;
      *&v67[20] = 1024;
      *&v67[22] = 136;
      *&v67[26] = 2114;
      *&v67[28] = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 40);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v70 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v71 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
      (*(v16 + 16))(v16, v21);
    }
  }

  else if (NFIsInternalBuild())
  {
    *buf = 0;
    *v67 = buf;
    *&v67[8] = 0x3032000000;
    *&v67[16] = sub_100006B4C;
    *&v67[24] = sub_10020A9B0;
    *&v67[32] = 0;
    v22 = +[_NFHardwareManager sharedHardwareManager];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_10020A9B8;
    v56[3] = &unk_10031BC70;
    v56[4] = *(a1 + 32);
    v56[5] = buf;
    v57 = *(a1 + 56);
    v23 = sub_10004C224(NFRoutingConfig, 0);
    v24 = sub_1000E6BE4(v22, v56, @"enable SMB logging", v23);

    if ((v24 & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v25 = NFLogGetLogger();
      if (v25)
      {
        v26 = v25;
        v27 = object_getClass(*(a1 + 32));
        v28 = class_isMetaClass(v27);
        v29 = object_getClassName(*(a1 + 32));
        v54 = sel_getName(*(a1 + 48));
        v30 = 45;
        if (v28)
        {
          v30 = 43;
        }

        v26(3, "%c[%{public}s %{public}s]:%i Failed to enable SMB log", v30, v29, v54, 152);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v32))
        {
          v33 = 43;
        }

        else
        {
          v33 = 45;
        }

        v34 = object_getClassName(*(a1 + 32));
        v35 = sel_getName(*(a1 + 48));
        *v58 = 67109890;
        v59 = v33;
        v60 = 2082;
        v61 = v34;
        v62 = 2082;
        v63 = v35;
        v64 = 1024;
        v65 = 152;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to enable SMB log", v58, 0x22u);
      }
    }

    v36 = *(*v67 + 40);
    (*(*(a1 + 40) + 16))();
    _Block_object_dispose(buf, 8);
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFLogGetLogger();
    if (v37)
    {
      v38 = v37;
      v39 = object_getClass(*(a1 + 32));
      v40 = class_isMetaClass(v39);
      v41 = object_getClassName(*(a1 + 32));
      v55 = sel_getName(*(a1 + 48));
      v42 = 45;
      if (v40)
      {
        v42 = 43;
      }

      v38(4, "%c[%{public}s %{public}s]:%i Not an internal build", v42, v41, v55, 139);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v43 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v44))
      {
        v45 = 43;
      }

      else
      {
        v45 = 45;
      }

      v46 = object_getClassName(*(a1 + 32));
      v47 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      *&buf[4] = v45;
      *v67 = 2082;
      *&v67[2] = v46;
      *&v67[10] = 2082;
      *&v67[12] = v47;
      *&v67[20] = 1024;
      *&v67[22] = 139;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Not an internal build", buf, 0x22u);
    }

    v48 = *(a1 + 40);
    v49 = [NSError alloc];
    v50 = [NSString stringWithUTF8String:"nfcd"];
    v68 = NSLocalizedDescriptionKey;
    v51 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v69 = v51;
    v52 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
    v53 = [v49 initWithDomain:v50 code:14 userInfo:v52];
    (*(v48 + 16))(v48, v53);
  }
}

BOOL sub_10020A9B8(uint64_t a1)
{
  v2 = [*(a1 + 32) driverWrapper];
  v3 = sub_1001EC3CC(v2, *(a1 + 48));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(*(a1 + 40) + 8) + 40) == 0;
}

void sub_10020AAF0(uint64_t a1)
{
  if (![*(a1 + 32) didStart] || (objc_msgSend(*(a1 + 32), "isSuspended") & 1) != 0 || objc_msgSend(*(a1 + 32), "didEnd"))
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
      v8 = [*(a1 + 32) sessionUID];
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 161, v8);
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
      v15 = [*(a1 + 32) sessionUID];
      *buf = 67110146;
      v75 = v12;
      v76 = 2082;
      v77 = v13;
      v78 = 2082;
      v79 = v14;
      v80 = 1024;
      v81 = 161;
      v82 = 2114;
      v83 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 40);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v72 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v73 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1];
      v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
      (*(v16 + 16))(v16, v21, 0);
    }
  }

  else if (NFIsInternalBuild())
  {
    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v67 = 0;
    v22 = +[_NFHardwareManager sharedHardwareManager];
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_10020B27C;
    v63[3] = &unk_100318710;
    v63[4] = *(a1 + 32);
    v63[5] = &v64;
    v23 = sub_10004C224(NFRoutingConfig, 0);
    v24 = sub_1000E6BE4(v22, v63, @"getting SMB log", v23);

    if (v24)
    {
      if (v65[3])
      {
        v25 = [NSData alloc];
        v26 = [v25 initWithBytes:*v65[3] length:*(v65[3] + 8)];
        v27 = v65[3];
        NFDataRelease();
      }

      else
      {
        v26 = 0;
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v45 = NFLogGetLogger();
      if (v45)
      {
        v46 = v45;
        v47 = object_getClass(*(a1 + 32));
        v48 = class_isMetaClass(v47);
        v49 = object_getClassName(*(a1 + 32));
        v62 = sel_getName(*(a1 + 48));
        v50 = 45;
        if (v48)
        {
          v50 = 43;
        }

        v46(3, "%c[%{public}s %{public}s]:%i Failed to get SMB log", v50, v49, v62, 177);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v51 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v52))
        {
          v53 = 43;
        }

        else
        {
          v53 = 45;
        }

        v54 = object_getClassName(*(a1 + 32));
        v55 = sel_getName(*(a1 + 48));
        *buf = 67109890;
        v75 = v53;
        v76 = 2082;
        v77 = v54;
        v78 = 2082;
        v79 = v55;
        v80 = 1024;
        v81 = 177;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get SMB log", buf, 0x22u);
      }

      v56 = *(a1 + 40);
      v57 = [NSError alloc];
      v26 = [NSString stringWithUTF8String:"nfcd"];
      v68 = NSLocalizedDescriptionKey;
      v58 = [NSString stringWithUTF8String:"Stack Error"];
      v69 = v58;
      v59 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
      v60 = [v57 initWithDomain:v26 code:15 userInfo:v59];
      (*(v56 + 16))(v56, v60, 0);
    }

    _Block_object_dispose(&v64, 8);
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFLogGetLogger();
    if (v28)
    {
      v29 = v28;
      v30 = object_getClass(*(a1 + 32));
      v31 = class_isMetaClass(v30);
      v32 = object_getClassName(*(a1 + 32));
      v61 = sel_getName(*(a1 + 48));
      v33 = 45;
      if (v31)
      {
        v33 = 43;
      }

      v29(4, "%c[%{public}s %{public}s]:%i Not an internal build", v33, v32, v61, 164);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v34 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v35))
      {
        v36 = 43;
      }

      else
      {
        v36 = 45;
      }

      v37 = object_getClassName(*(a1 + 32));
      v38 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v75 = v36;
      v76 = 2082;
      v77 = v37;
      v78 = 2082;
      v79 = v38;
      v80 = 1024;
      v81 = 164;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Not an internal build", buf, 0x22u);
    }

    v39 = *(a1 + 40);
    v40 = [NSError alloc];
    v41 = [NSString stringWithUTF8String:"nfcd"];
    v70 = NSLocalizedDescriptionKey;
    v42 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v71 = v42;
    v43 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    v44 = [v40 initWithDomain:v41 code:14 userInfo:v43];
    (*(v39 + 16))(v39, v44, 0);
  }
}

BOOL sub_10020B27C(uint64_t a1)
{
  v2 = [*(a1 + 32) driverWrapper];
  *(*(*(a1 + 40) + 8) + 24) = sub_1001EC5FC(v2);

  return *(*(*(a1 + 40) + 8) + 24) != 0;
}

void sub_10020B39C(uint64_t a1)
{
  v2 = sub_1002217FC(*(*(a1 + 32) + 176));
  (*(*(a1 + 40) + 16))();
}

void sub_10020C578(uint64_t a1, int a2)
{
  if (a1 && NFIsInternalBuild() && *(a1 + 304) >= 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    v5 = Logger;
    if (a2)
    {
      if (Logger)
      {
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_enablePowerCountersLogging:");
        v9 = 45;
        if (isMetaClass)
        {
          v9 = 43;
        }

        v5(6, "%c[%{public}s %{public}s]:%i Enabling power counters timer", v9, ClassName, Name, 124);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v10 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = object_getClass(a1);
        if (class_isMetaClass(v11))
        {
          v12 = 43;
        }

        else
        {
          v12 = 45;
        }

        LODWORD(buf) = 67109890;
        HIDWORD(buf) = v12;
        v40 = 2082;
        v41 = object_getClassName(a1);
        v42 = 2082;
        v43 = sel_getName("_enablePowerCountersLogging:");
        v44 = 1024;
        v45 = 124;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Enabling power counters timer", &buf, 0x22u);
      }

      v13 = *(a1 + 216);
      *(a1 + 360) = 1;
      v14 = v13;

      if (!v14)
      {
        v15 = NSHomeDirectory();
        v16 = [NSString stringWithFormat:@"%@/Library/Logs/nfcd_lpcd_false-detect.plist", v15];

        v17 = [NSURL fileURLWithPath:v16];
        objc_storeStrong((a1 + 216), v17);
      }

      v18 = *(a1 + 144);

      if (!v18)
      {
        objc_initWeak(&buf, a1);
        v19 = [NFTimer alloc];
        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = sub_10020CA24;
        v37[3] = &unk_1003183C0;
        objc_copyWeak(&v38, &buf);
        v37[4] = a1;
        v20 = *(a1 + 240);
        v21 = [v19 initWithCallback:v37 queue:v20];
        v22 = *(a1 + 144);
        *(a1 + 144) = v21;

        objc_destroyWeak(&v38);
        objc_destroyWeak(&buf);
      }

      v23 = *(a1 + 144);
      [v23 stopTimer];

      v24 = *(a1 + 144);
      [v24 startTimer:*(a1 + 304) leeway:0.5];
    }

    else
    {
      if (Logger)
      {
        v25 = object_getClass(a1);
        v26 = class_isMetaClass(v25);
        v27 = object_getClassName(a1);
        v34 = sel_getName("_enablePowerCountersLogging:");
        v28 = 45;
        if (v26)
        {
          v28 = 43;
        }

        v5(6, "%c[%{public}s %{public}s]:%i Disabling power counters timer", v28, v27, v34, 149);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v29 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
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

        LODWORD(buf) = 67109890;
        HIDWORD(buf) = v31;
        v40 = 2082;
        v41 = object_getClassName(a1);
        v42 = 2082;
        v43 = sel_getName("_enablePowerCountersLogging:");
        v44 = 1024;
        v45 = 149;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Disabling power counters timer", &buf, 0x22u);
      }

      v24 = *(a1 + 144);
      [v24 stopTimer];
    }

    v32 = *(a1 + 240);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10020CAFC;
    block[3] = &unk_100315EB8;
    block[4] = a1;
    v36 = a2;
    dispatch_async(v32, block);
  }
}

void sub_10020CA24(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "com.apple.nfcd.hw.counter.powerTimer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v2, &v11);
  os_activity_scope_leave(&v11);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained updateAllPowerCounters];
    v6 = v4[18];
    [v6 stopTimer];

    v7 = v4[18];
    v8 = v7;
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = *(v9 + 304);
    }

    else
    {
      v10 = 0.0;
    }

    [v7 startTimer:v10 leeway:0.5];
  }
}

id sub_10020CAFC(uint64_t a1)
{
  result = [*(a1 + 32) updateAllPowerCounters];
  if ((*(a1 + 40) & 1) == 0)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      *(v3 + 360) = 0;
    }
  }

  return result;
}

id sub_10020D030(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 driverWrapper];
    v39 = 0;
    v3 = sub_1001E8F2C(v2, &v39);
    v4 = v39;

    v34 = v3;
    if (v4)
    {
      if (v3 && [v3 code] != 45)
      {
        v25 = [NSError alloc];
        v20 = [NSString stringWithUTF8String:"nfcd"];
        v26 = [v3 code];
        v41[0] = NSLocalizedDescriptionKey;
        if ([v3 code] > 75)
        {
          v27 = 76;
        }

        else
        {
          v27 = [v3 code];
        }

        v19 = [NSString stringWithUTF8String:(&off_10031BC90)[v27]];
        v42[0] = v19;
        v42[1] = v3;
        v41[1] = NSUnderlyingErrorKey;
        v41[2] = @"Line";
        v42[2] = &off_100335E50;
        v41[3] = @"Method";
        v28 = [[NSString alloc] initWithFormat:@"%s", sel_getName("updateAllWriteCounters")];
        v42[3] = v28;
        v41[4] = NSDebugDescriptionErrorKey;
        v29 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("updateAllWriteCounters"), 233];
        v42[4] = v29;
        v30 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:5];
        v1 = [v25 initWithDomain:v20 code:v26 userInfo:v30];
      }

      else
      {
        v33 = v4;
        v5 = [NSDictionary dictionaryWithObject:v4 forKey:@"NFCC Write Counters"];
        obj = objc_getProperty(v1, v6, 176, 1);
        objc_sync_enter(obj);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v8 = objc_getProperty(v1, v7, 176, 1);
        v9 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v36;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v36 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v35 + 1) + 8 * i);
              v14 = [v13 NF_userInfo];
              v15 = [v14 objectForKeyedSubscript:@"flashWriteCounters"];

              if (v15)
              {
                v16 = v34 && [v34 code] == 45;
                v17 = [v1 combineFlashWriteCounters:v15 with:v5 overflow:v16];

                if (v17)
                {
                  v18 = [v13 NF_userInfo];
                  [v18 setObject:v17 forKeyedSubscript:@"flashWriteCounters"];
                }
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
          }

          while (v10);
        }

        v19 = obj;
        objc_sync_exit(obj);
        v1 = 0;
        v4 = v33;
        v20 = v5;
      }
    }

    else
    {
      v21 = [NSError alloc];
      v20 = [NSString stringWithUTF8String:"nfcd"];
      v43[0] = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Stack Error"];
      v44[0] = v19;
      v44[1] = &off_100335E38;
      v43[1] = @"Line";
      v43[2] = @"Method";
      v22 = [[NSString alloc] initWithFormat:@"%s", sel_getName("updateAllWriteCounters")];
      v44[2] = v22;
      v43[3] = NSDebugDescriptionErrorKey;
      v23 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("updateAllWriteCounters"), 230];
      v44[3] = v23;
      v24 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:4];
      v1 = [v21 initWithDomain:v20 code:15 userInfo:v24];
    }
  }

  return v1;
}

id sub_10020E4DC()
{
  objc_opt_self();
  if (qword_10035DAD0 != -1)
  {
    dispatch_once(&qword_10035DAD0, &stru_10031BEF8);
  }

  v0 = qword_10035DAC8;

  return v0;
}

void sub_10020E534(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10035DAC8;
  qword_10035DAC8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10020E7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v14[0] = @"status";
    v8 = [NSNumber numberWithUnsignedInt:?];
    v15[0] = v8;
    v14[1] = @"stackLoadTime";
    v9 = [NSNumber numberWithUnsignedInt:a2];
    v15[1] = v9;
    v14[2] = @"nfcControllerType";
    v10 = [NSNumber numberWithUnsignedInt:a4];
    v15[2] = v10;
    v14[3] = @"unlockedSinceBoot";
    v11 = [NSNumber numberWithBool:a5];
    v15[3] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];

    v13 = v12;
    AnalyticsSendEventLazy();
  }
}

id sub_10020E970(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a2 == 3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    if (a2 == 8)
    {
      v9 = 3;
    }

    else
    {
      v9 = v8;
    }

    v17[0] = @"tagType";
    v10 = [NSNumber numberWithUnsignedInt:v9];
    v18[0] = v10;
    v17[1] = @"operation";
    v11 = [NSNumber numberWithUnsignedInt:a3];
    v18[1] = v11;
    v17[2] = @"duration";
    v12 = [NSNumber numberWithUnsignedLongLong:a4];
    v18[2] = v12;
    v17[3] = @"status";
    v13 = [NSNumber numberWithInteger:a5];
    v18[3] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4];

    v15 = v14;
    AnalyticsSendEventLazy();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id sub_10020EB44(void *a1, void *a2, void *a3, unsigned int a4)
{
  v7 = a2;
  v97 = a3;
  v99 = v7;
  v104 = a1;
  if (a1)
  {
    v96 = a4;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v109 objects:v118 count:16];
    if (v8)
    {
      v9 = v8;
      v101 = 0;
      v103 = 0;
      v10 = 0;
      v11 = *v110;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v110 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v109 + 1) + 8 * i);
          if ([v13 type] == 8)
          {
            v10 = (v10 + 1);
          }

          else if ([v13 isSilent] && objc_msgSend(v13, "silentType") == 2)
          {
            LODWORD(v103) = v103 + 1;
          }

          else if ([v13 isSilent] && objc_msgSend(v13, "silentType") == 3)
          {
            ++v101;
          }

          else if ([v13 type] == 3)
          {
            ++HIDWORD(v103);
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v15 = Logger;
              Class = object_getClass(v104);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(v104);
              Name = sel_getName("postCAFuryTagDetectionEvent:previousTags:rfError:");
              v18 = 45;
              if (isMetaClass)
              {
                v18 = 43;
              }

              v7 = v99;
              v15(3, "%c[%{public}s %{public}s]:%i Unknown tag found in new list %{public}@", v18, ClassName, Name, 176, v13);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v19 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = object_getClass(v104);
              if (class_isMetaClass(v20))
              {
                v21 = 43;
              }

              else
              {
                v21 = 45;
              }

              v22 = object_getClassName(v104);
              v23 = sel_getName("postCAFuryTagDetectionEvent:previousTags:rfError:");
              *buf = 67110146;
              *&buf[4] = v21;
              v7 = v99;
              *v120 = 2082;
              *&v120[2] = v22;
              *&v120[10] = 2082;
              *&v120[12] = v23;
              *&v120[20] = 1024;
              *&v120[22] = 176;
              *&v120[26] = 2114;
              *&v120[28] = v13;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unknown tag found in new list %{public}@", buf, 0x2Cu);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v109 objects:v118 count:16];
      }

      while (v9);
    }

    else
    {
      v101 = 0;
      v103 = 0;
      v10 = 0;
    }

    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v24 = v97;
    v25 = [v24 countByEnumeratingWithState:&v105 objects:v117 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = 0;
      v28 = 0;
      v102 = 0;
      v100 = 0;
      v29 = *v106;
      v98 = v24;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v106 != v29)
          {
            objc_enumerationMutation(v24);
          }

          v31 = *(*(&v105 + 1) + 8 * j);
          if ([v31 type] == 8)
          {
            ++v28;
          }

          else if ([v31 isSilent] && objc_msgSend(v31, "silentType") == 2)
          {
            ++v102;
          }

          else if ([v31 isSilent] && objc_msgSend(v31, "silentType") == 3)
          {
            ++v100;
          }

          else if ([v31 type] == 3)
          {
            v27 = (v27 + 1);
          }

          else
          {
            v32 = v10;
            v33 = v27;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v34 = NFLogGetLogger();
            if (v34)
            {
              v35 = v34;
              v36 = object_getClass(v104);
              v37 = class_isMetaClass(v36);
              v92 = object_getClassName(v104);
              v94 = sel_getName("postCAFuryTagDetectionEvent:previousTags:rfError:");
              v38 = 45;
              if (v37)
              {
                v38 = 43;
              }

              v35(3, "%c[%{public}s %{public}s]:%i Unknown tag found in old list %{public}@", v38, v92, v94, 199, v31);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v39 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v40 = object_getClass(v104);
              if (class_isMetaClass(v40))
              {
                v41 = 43;
              }

              else
              {
                v41 = 45;
              }

              v42 = object_getClassName(v104);
              v43 = sel_getName("postCAFuryTagDetectionEvent:previousTags:rfError:");
              *buf = 67110146;
              *&buf[4] = v41;
              *v120 = 2082;
              *&v120[2] = v42;
              *&v120[10] = 2082;
              *&v120[12] = v43;
              *&v120[20] = 1024;
              *&v120[22] = 199;
              *&v120[26] = 2114;
              *&v120[28] = v31;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unknown tag found in old list %{public}@", buf, 0x2Cu);
            }

            v27 = v33;
            v10 = v32;
            v24 = v98;
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v105 objects:v117 count:16];
      }

      while (v26);
    }

    else
    {
      LODWORD(v27) = 0;
      v28 = 0;
      v102 = 0;
      v100 = 0;
    }

    if (v27 == HIDWORD(v103))
    {
      v44 = v103;
      if (v28 == v10)
      {
        v45 = v101;
        v46 = v101 - v100;
        v47 = v100 - v101;
        if (v100 > v101)
        {
          v46 = 0;
        }

        else
        {
          v47 = 0;
        }

        if (v100 > v101)
        {
          v48 = 2;
        }

        else
        {
          v48 = 1;
        }

        if (v100 == v101)
        {
          v47 = 0;
          v46 = 0;
          v48 = 0;
          v49 = 1;
        }

        else
        {
          v49 = 5;
        }

        v50 = v103 - v102;
        v51 = v102 - v103;
        if (v102 > v103)
        {
          v50 = 0;
        }

        else
        {
          v51 = 0;
        }

        if (v102 > v103)
        {
          v52 = 2;
        }

        else
        {
          v52 = 1;
        }

        if (v102 == v103)
        {
          v53 = v47;
        }

        else
        {
          v53 = v51;
        }

        if (v102 == v103)
        {
          v54 = v46;
        }

        else
        {
          v54 = v50;
        }

        if (v102 == v103)
        {
          v55 = v48;
        }

        else
        {
          v55 = v52;
        }

        if (v102 == v103)
        {
          v56 = v49;
        }

        else
        {
          v56 = 4;
        }

        v57 = HIDWORD(v103);
        if (v10)
        {
          goto LABEL_116;
        }
      }

      else
      {
        if (v28 > v10)
        {
          v53 = v28 - v10;
        }

        else
        {
          v53 = 0;
        }

        if (v28 > v10)
        {
          v54 = 0;
        }

        else
        {
          v54 = v10 - v28;
        }

        if (v28 > v10)
        {
          v55 = 2;
        }

        else
        {
          v55 = 1;
        }

        v56 = 3;
        v57 = HIDWORD(v103);
        v45 = v101;
        if (v10)
        {
          goto LABEL_116;
        }
      }
    }

    else
    {
      if (v27 > HIDWORD(v103))
      {
        v53 = (v27 - HIDWORD(v103));
      }

      else
      {
        v53 = 0;
      }

      if (v27 > HIDWORD(v103))
      {
        v54 = 0;
      }

      else
      {
        v54 = (HIDWORD(v103) - v27);
      }

      if (v27 > HIDWORD(v103))
      {
        v55 = 2;
      }

      else
      {
        v55 = 1;
      }

      v56 = 2;
      v57 = HIDWORD(v103);
      v45 = v101;
      v44 = v103;
      if (v10)
      {
        goto LABEL_116;
      }
    }

    if (!v57 && !v44 && !v45)
    {
      v58 = 1;
LABEL_192:
      v115[0] = @"tagType";
      v77 = [NSNumber numberWithUnsignedInt:v56];
      v116[0] = v77;
      v115[1] = @"operation";
      v78 = [NSNumber numberWithUnsignedInt:v55];
      v116[1] = v78;
      v115[2] = @"multiTagState";
      v79 = [NSNumber numberWithUnsignedInt:v58];
      v116[2] = v79;
      v115[3] = @"rfErrorOccured";
      v80 = [NSNumber numberWithBool:v96];
      v116[3] = v80;
      v81 = [NSDictionary dictionaryWithObjects:v116 forKeys:v115 count:4];

      v113[0] = @"NFMultiTagState";
      v82 = [NSNumber numberWithUnsignedInt:v58];
      v114[0] = v82;
      v113[1] = @"totalDailyTagsAdded";
      v83 = [NSNumber numberWithInt:v54];
      v114[1] = v83;
      v113[2] = @"totalDailyTagsRemoved";
      v84 = [NSNumber numberWithInt:v53];
      v114[2] = v84;
      v85 = [NSDictionary dictionaryWithObjects:v114 forKeys:v113 count:3];

      v86 = v85;
      v87 = v104[2];
      *buf = _NSConcreteStackBlock;
      *v120 = 3221225472;
      *&v120[8] = sub_10020FBC0;
      *&v120[16] = &unk_100315B38;
      *&v120[24] = v104;
      v88 = v86;
      *&v120[32] = v88;
      v121 = 0;
      dispatch_async(v87, buf);

      v89 = v81;
      AnalyticsSendEventLazy();

      goto LABEL_193;
    }

LABEL_116:
    if (v10 != 1 || v57 || v44 || v45)
    {
      if (v10 || v57 != 1 || v44 || v45)
      {
        if (v10 != 1 || v57 != 1 || v44 || v45)
        {
          if (v10 || v57 != 2 || v44 || v45)
          {
            v60 = v44 == 1 && v45 == 0;
            if (v10)
            {
              v61 = 0;
            }

            else
            {
              v61 = v60;
            }

            if (!v61 || v57)
            {
              if (v45 != 1 || v10 | v44 || v57)
              {
                if (v57 != 1)
                {
                  LOBYTE(v61) = 0;
                }

                if (v61)
                {
                  v58 = 8;
                }

                else
                {
                  v62 = !v60;
                  if (v10 != 1)
                  {
                    v62 = 1;
                  }

                  if ((v62 & 1) != 0 || v57)
                  {
                    if (v45 != 1 || v44 != 1 || v10 || v57)
                    {
                      v63 = v45 == 1 && v44 == 0;
                      v64 = v63;
                      if (v63 && !v10 && v57 == 1)
                      {
                        v58 = 11;
                      }

                      else
                      {
                        v65 = v64 ^ 1;
                        if (v10 != 1)
                        {
                          v65 = 1;
                        }

                        if ((v65 & 1) != 0 || v57)
                        {
                          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                          v66 = NFLogGetLogger();
                          if (v66)
                          {
                            v67 = v66;
                            v68 = object_getClass(v104);
                            v69 = class_isMetaClass(v68);
                            v70 = object_getClassName(v104);
                            v95 = sel_getName("postCAFuryTagDetectionEvent:previousTags:rfError:");
                            v71 = 45;
                            if (v69)
                            {
                              v71 = 43;
                            }

                            v67(3, "%c[%{public}s %{public}s]:%i multiTag : Invalid tag configuration", v71, v70, v95, 313);
                          }

                          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                          v72 = NFSharedLogGetLogger();
                          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
                          {
                            v73 = object_getClass(v104);
                            if (class_isMetaClass(v73))
                            {
                              v74 = 43;
                            }

                            else
                            {
                              v74 = 45;
                            }

                            v75 = object_getClassName(v104);
                            v76 = sel_getName("postCAFuryTagDetectionEvent:previousTags:rfError:");
                            *buf = 67109890;
                            *&buf[4] = v74;
                            *v120 = 2082;
                            *&v120[2] = v75;
                            *&v120[10] = 2082;
                            *&v120[12] = v76;
                            *&v120[20] = 1024;
                            *&v120[22] = 313;
                            _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i multiTag : Invalid tag configuration", buf, 0x22u);
                          }

                          v58 = 13;
                        }

                        else
                        {
                          v58 = 12;
                        }
                      }
                    }

                    else
                    {
                      v58 = 10;
                    }
                  }

                  else
                  {
                    v58 = 9;
                  }
                }
              }

              else
              {
                v58 = 7;
              }
            }

            else
            {
              v58 = 6;
            }
          }

          else
          {
            v58 = 5;
          }
        }

        else
        {
          v58 = 4;
        }
      }

      else
      {
        v58 = 2;
      }
    }

    else
    {
      v58 = 3;
    }

    goto LABEL_192;
  }

  v89 = 0;
LABEL_193:

  return v89;
}

void sub_10020F704(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 16);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10020F7AC;
    v6[3] = &unk_100315FA8;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_10020F7AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 40);
    v7 = @"totalDailyFalseDetectionCount";
    v8 = v2;
    v3 = v2;
    v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10020FAB0;
    v5[3] = &unk_10031BF48;
    v6 = 0;
    v5[4] = v1;
    [v4 enumerateKeysAndObjectsUsingBlock:v5];
  }
}

void sub_10020F8A8(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10020F924;
    block[3] = &unk_100315F30;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

void sub_10020F924(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [*(v1 + 8) objectForKey:@"totalDailyTagsAdded"];
    v3 = [*(v1 + 8) objectForKey:@"totalDailyTagsRemoved"];
    v4 = [*(v1 + 8) objectForKey:@"totalDailyFalseDetectionCount"];
    v5 = v4;
    v6 = &off_100335EC8;
    if (v2)
    {
      v7 = v2;
    }

    else
    {
      v7 = &off_100335EC8;
    }

    v12[0] = @"totalDailyTagsAdded";
    v12[1] = @"totalDailyTagsRemoved";
    if (v3)
    {
      v8 = v3;
    }

    else
    {
      v8 = &off_100335EC8;
    }

    v13[0] = v7;
    v13[1] = v8;
    v12[2] = @"totalDailyFalseDetectionCount";
    if (v4)
    {
      v6 = v4;
    }

    v13[2] = v6;
    v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10020FAB0;
    v10[3] = &unk_10031BF48;
    v11 = 1;
    v10[4] = v1;
    [v9 enumerateKeysAndObjectsUsingBlock:v10];
    AnalyticsSendEvent();
  }
}

void sub_10020FAB0(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  if (*(a1 + 40))
  {
    [v6 setObject:&off_100335EC8 forKey:v10];
  }

  else
  {
    v7 = [v6 objectForKey:v10];
    if (v7)
    {
      if ([v5 integerValue])
      {
        v8 = *(*(a1 + 32) + 8);
        v9 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v7 longValue] + objc_msgSend(v5, "longValue"));
        [v8 setObject:v9 forKey:v10];
      }
    }

    else
    {
      [*(*(a1 + 32) + 8) setObject:v5 forKey:v10];
    }
  }
}

void *sub_10020FBC0(void *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = result[5];
    v3 = *(result + 48);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10020FAB0;
    v4[3] = &unk_10031BF48;
    v5 = v3;
    v4[4] = v1;
    return [v2 enumerateKeysAndObjectsUsingBlock:v4];
  }

  return result;
}

void sub_10020FC48(uint64_t a1, void *a2)
{
  if (a1)
  {
    v5 = a2;
    v6 = &off_100335EE0;
    v2 = a2;
    v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
    v4 = +[NFCALogger sharedCALogger];

    [v4 postCAEventFor:@"com.apple.fury.exceptionStatisticsEvent" eventInput:v3];
  }
}

id sub_10020FD54(void *a1)
{
  v2 = objc_opt_new();
  v3 = a1;
  objc_sync_enter(v3);
  [v2 setObject:*(v3 + 2) forKeyedSubscript:@"Key"];
  [v2 setObject:*(v3 + 3) forKeyedSubscript:@"Recovered build"];
  v4 = [NSNumber numberWithUnsignedInteger:*(v3 + 5)];
  [v2 setObject:v4 forKeyedSubscript:@"Retry count"];

  v5 = *(v3 + 6);
  if (v5 > 2)
  {
    v6 = @"???? ERROR !!!!";
  }

  else
  {
    v6 = *(&off_10031BFD0 + v5);
  }

  [v2 setObject:v6 forKeyedSubscript:@"Recovery state"];
  v7 = [NSNumber numberWithBool:v3[8]];
  [v2 setObject:v7 forKeyedSubscript:@"In progress"];

  v8 = [*(v3 + 4) description];
  [v2 setObject:v8 forKeyedSubscript:@"Last attempt"];

  objc_sync_exit(v3);
  v9 = [[NSDictionary alloc] initWithDictionary:v2];

  return v9;
}

void sub_10020FEB4(uint64_t a1)
{
  if (a1)
  {
    v9 = +[NSUserDefaults standardUserDefaults];
    v2 = [v9 objectForKey:*(a1 + 16)];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 mutableCopy];
    }

    else
    {
      v4 = objc_opt_new();
    }

    v5 = v4;
    if (*(a1 + 48) == 1)
    {
      [v4 setObject:&off_100335EF8 forKey:@"RecoveryNeeded"];
    }

    else
    {
      [v4 removeObjectForKey:@"RecoveryNeeded"];
    }

    v6 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
    [v5 setObject:v6 forKey:@"RecoveryAttempts"];

    v7 = [NSNumber numberWithBool:*(a1 + 8)];
    [v5 setObject:v7 forKey:@"RecoveryInProgress"];

    v8 = *(a1 + 24);
    if (v8)
    {
      [v5 setObject:v8 forKey:@"RecoveredBuild"];
    }

    [v9 setObject:v5 forKey:*(a1 + 16)];
  }
}

void sub_100210010(void *a1)
{
  if (a1)
  {
    v2 = NFBuildVersion();
    if (v2)
    {
      v3 = a1[3];
      if (!v3 || ([v3 isEqualToString:v2] & 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v5 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("computeToleratedFailure");
          v10 = 45;
          if (isMetaClass)
          {
            v10 = 43;
          }

          v5(6, "%c[%{public}s %{public}s]:%i Marking restore needed for %@", v10, ClassName, Name, 276, a1[2]);
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

          v14 = object_getClassName(a1);
          v15 = sel_getName("computeToleratedFailure");
          v16 = a1[2];
          *buf = 67110146;
          v18 = v13;
          v19 = 2082;
          v20 = v14;
          v21 = 2082;
          v22 = v15;
          v23 = 1024;
          v24 = 276;
          v25 = 2112;
          v26 = v16;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Marking restore needed for %@", buf, 0x2Cu);
        }

        a1[6] = 1;
      }
    }
  }
}

void sub_1002101E8(uint64_t a1)
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
      Name = sel_getName("restoreStarted");
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v3(6, "%c[%{public}s %{public}s]:%i Marking restore started for %@ at retry %lu", v8, ClassName, Name, 284, *(a1 + 16), *(a1 + 40));
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = object_getClass(a1);
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      v12 = object_getClassName(a1);
      v13 = sel_getName("restoreStarted");
      v14 = *(a1 + 16);
      v15 = *(a1 + 40);
      *buf = 67110402;
      *v21 = v11;
      *&v21[4] = 2082;
      *&v21[6] = v12;
      v22 = 2082;
      v23 = v13;
      v24 = 1024;
      v25 = 284;
      v26 = 2112;
      v27 = v14;
      v28 = 2048;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Marking restore started for %@ at retry %lu", buf, 0x36u);
    }

    ++*(a1 + 40);
    v16 = +[NSDate now];
    v17 = *(a1 + 32);
    *(a1 + 32) = v16;

    *(a1 + 8) = 1;
    v18 = NFSharedSignpostLog();
    if (os_signpost_enabled(v18))
    {
      v19 = *(a1 + 40);
      *buf = 134217984;
      *v21 = v19;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "RESTORE_NFCC", "fail-forward; retryIndex=%lu", buf, 0xCu);
    }
  }
}

void sub_100210430(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("restoreCompleteWithStatus:");
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i Marking restore completed for %@ status %@", v10, ClassName, Name, 297, *(a1 + 16), v3);
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

      v14 = object_getClassName(a1);
      v15 = sel_getName("restoreCompleteWithStatus:");
      v16 = *(a1 + 16);
      *buf = 67110402;
      v21 = v13;
      v22 = 2082;
      v23 = v14;
      v24 = 2082;
      v25 = v15;
      v26 = 1024;
      v27 = 297;
      v28 = 2112;
      v29 = v16;
      v30 = 2112;
      v31 = v3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Marking restore completed for %@ status %@", buf, 0x36u);
    }

    *(a1 + 8) = 0;
    v17 = NFSharedSignpostLog();
    v18 = os_signpost_enabled(v17);
    if (v3)
    {
      if (v18)
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RESTORE_NFCC", "restore failure", buf, 2u);
      }
    }

    else
    {
      if (v18)
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RESTORE_NFCC", "success", buf, 2u);
      }

      *(a1 + 48) = 2;
      v19 = NFBuildVersion();
      v17 = *(a1 + 24);
      *(a1 + 24) = v19;
    }

    sub_10020FEB4(a1);
  }
}

double sub_1002106B0(void *a1)
{
  if (!NFIsInternalBuild() || a1[7] == -1)
  {
    v16 = a1[5];
    if (v16 > 0xD)
    {
      return 86400.0;
    }

    else
    {
      return dword_100297BC0[v16];
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_nextRetryBackoff");
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v3(4, "%c[%{public}s %{public}s]:%i Hardcoded retry value of %lld", v8, ClassName, Name, 317, a1[7]);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = object_getClass(a1);
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      v12 = object_getClassName(a1);
      v13 = sel_getName("_nextRetryBackoff");
      v14 = a1[7];
      *buf = 67110146;
      v18 = v11;
      v19 = 2082;
      v20 = v12;
      v21 = 2082;
      v22 = v13;
      v23 = 1024;
      v24 = 317;
      v25 = 2048;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Hardcoded retry value of %lld", buf, 0x2Cu);
    }

    return a1[7];
  }
}

BOOL sub_100210894(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = +[NSDate now];
  [v2 timeIntervalSinceDate:a1[4]];
  v4 = v3;

  v5 = sub_1002106B0(a1);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  v7 = Logger;
  v8 = v4 > v5;
  if (v4 <= v5)
  {
    if (Logger)
    {
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("canRetry");
      v27 = sub_1002106B0(a1);
      v22 = 45;
      if (isMetaClass)
      {
        v22 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i Cannot retry : interval = %f, next backoff = %f", v22, ClassName, Name, 338, *&v4, *&v27);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v23 = object_getClass(a1);
    if (class_isMetaClass(v23))
    {
      v24 = 43;
    }

    else
    {
      v24 = 45;
    }

    *buf = 67110402;
    v29 = v24;
    v30 = 2082;
    v31 = object_getClassName(a1);
    v32 = 2082;
    v33 = sel_getName("canRetry");
    v34 = 1024;
    v35 = 338;
    v36 = 2048;
    v37 = v4;
    v38 = 2048;
    v39 = sub_1002106B0(a1);
    v17 = "%c[%{public}s %{public}s]:%i Cannot retry : interval = %f, next backoff = %f";
  }

  else
  {
    if (Logger)
    {
      v9 = object_getClass(a1);
      v10 = class_isMetaClass(v9);
      v11 = object_getClassName(a1);
      v12 = sel_getName("canRetry");
      v26 = sub_1002106B0(a1);
      v13 = 45;
      if (v10)
      {
        v13 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i Can retry : interval = %f, next backoff = %f", v13, v11, v12, 335, *&v4, *&v26);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v15 = object_getClass(a1);
    if (class_isMetaClass(v15))
    {
      v16 = 43;
    }

    else
    {
      v16 = 45;
    }

    *buf = 67110402;
    v29 = v16;
    v30 = 2082;
    v31 = object_getClassName(a1);
    v32 = 2082;
    v33 = sel_getName("canRetry");
    v34 = 1024;
    v35 = 335;
    v36 = 2048;
    v37 = v4;
    v38 = 2048;
    v39 = sub_1002106B0(a1);
    v17 = "%c[%{public}s %{public}s]:%i Can retry : interval = %f, next backoff = %f";
  }

  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v17, buf, 0x36u);
LABEL_22:

  return v8;
}