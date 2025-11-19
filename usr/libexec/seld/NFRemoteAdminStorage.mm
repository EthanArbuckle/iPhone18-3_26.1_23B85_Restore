@interface NFRemoteAdminStorage
- (NFRemoteAdminStorage)init;
@end

@implementation NFRemoteAdminStorage

- (NFRemoteAdminStorage)init
{
  v215.receiver = self;
  v215.super_class = NFRemoteAdminStorage;
  v2 = [(NFRemoteAdminStorage *)&v215 init];
  if (v2)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    ud = v2->_ud;
    v2->_ud = v3;

    v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm"];
    v6 = [v5 stringForKey:@"TrustedServiceManagerURL"];
    if ([v6 length])
    {
      v216 = @"com.apple.seld";
      v217 = v6;
      v7 = [NSDictionary dictionaryWithObjects:&v217 forKeys:&v216 count:1];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v9 = Logger;
        Class = object_getClass(v2);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v2);
        Name = sel_getName("_importLegacyRegistration");
        v12 = 45;
        if (isMetaClass)
        {
          v12 = 43;
        }

        v9(5, "%c[%{public}s %{public}s]:%i Importing pre-multihoming config: %{public}@", v12, ClassName, Name, 247, v7);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = object_getClass(v2);
        if (class_isMetaClass(v14))
        {
          v15 = 43;
        }

        else
        {
          v15 = 45;
        }

        v16 = object_getClassName(v2);
        v17 = sel_getName("_importLegacyRegistration");
        *buf = 67110146;
        *&buf[4] = v15;
        *v225 = 2082;
        *&v225[2] = v16;
        *&v225[10] = 2082;
        *&v225[12] = v17;
        *&v225[20] = 1024;
        *&v225[22] = 247;
        *&v225[26] = 2114;
        *&v225[28] = v7;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Importing pre-multihoming config: %{public}@", buf, 0x2Cu);
      }

      v18 = [v7 allKeys];
      v19 = [v18 lastObject];
      sub_100035CA4(v2, v7, v19);

      [v5 removeObjectForKey:@"TrustedServiceManagerURL"];
    }

    else
    {
      v7 = 0;
    }

    v20 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm.tsmreg"];
    p_isa = &v2->super.isa;
    if ([v20 BOOLForKey:@"ForwardMigrationComplete"])
    {
      v21 = v7;
    }

    else
    {
      v21 = [v20 dictionaryForKey:@"RsptUrls"];

      if (v21)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v22 = NFLogGetLogger();
        if (v22)
        {
          v23 = v22;
          v24 = object_getClass(v2);
          v25 = class_isMetaClass(v24);
          v180 = object_getClassName(v2);
          v192 = sel_getName("_importLegacyRegistration");
          v26 = 45;
          if (v25)
          {
            v26 = 43;
          }

          v23(5, "%c[%{public}s %{public}s]:%i Importing post-multihoming config: %{public}@", v26, v180, v192, 260, v21);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v27 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = object_getClass(v2);
          if (class_isMetaClass(v28))
          {
            v29 = 43;
          }

          else
          {
            v29 = 45;
          }

          v30 = object_getClassName(v2);
          v31 = sel_getName("_importLegacyRegistration");
          *buf = 67110146;
          *&buf[4] = v29;
          *v225 = 2082;
          *&v225[2] = v30;
          *&v225[10] = 2082;
          *&v225[12] = v31;
          *&v225[20] = 1024;
          *&v225[22] = 260;
          *&v225[26] = 2114;
          *&v225[28] = v21;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Importing post-multihoming config: %{public}@", buf, 0x2Cu);
        }

        v32 = [v21 allKeys];
        v33 = [v32 lastObject];
        sub_100035CA4(v2, v21, v33);

        v34 = [v20 dictionaryForKey:@"AidTopicMap"];
        *v218 = 0;
        *v219 = v218;
        *&v219[8] = 0x2020000000;
        v219[16] = 1;
        *buf = _NSConcreteStackBlock;
        *v225 = 3221225472;
        *&v225[8] = sub_100036520;
        *&v225[16] = &unk_100055050;
        *&v225[32] = v218;
        v226 = "_importLegacyRegistration";
        *&v225[24] = v2;
        [v34 enumerateKeysAndObjectsUsingBlock:buf];
        if (*(*v219 + 24) == 1 && [v34 count])
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v35 = NFLogGetLogger();
          if (v35)
          {
            v36 = v35;
            v37 = object_getClass(v2);
            v38 = class_isMetaClass(v37);
            v181 = object_getClassName(p_isa);
            v193 = sel_getName("_importLegacyRegistration");
            v39 = !v38;
            v2 = p_isa;
            v40 = 45;
            if (!v39)
            {
              v40 = 43;
            }

            v36(5, "%c[%{public}s %{public}s]:%i Importing post-multihoming map: %{public}@", v40, v181, v193, 279, v34);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v41 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = object_getClass(v2);
            if (class_isMetaClass(v42))
            {
              v43 = 43;
            }

            else
            {
              v43 = 45;
            }

            v44 = object_getClassName(v2);
            v45 = sel_getName("_importLegacyRegistration");
            *v227 = 67110146;
            *&v227[4] = v43;
            *&v227[8] = 2082;
            *&v227[10] = v44;
            *&v227[18] = 2082;
            *&v227[20] = v45;
            *&v227[28] = 1024;
            *&v227[30] = 279;
            *&v227[34] = 2114;
            *&v227[36] = v34;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Importing post-multihoming map: %{public}@", v227, 0x2Cu);
          }

          [(NSMutableDictionary *)v2->_serversForApplets removeAllObjects];
          [(NSMutableDictionary *)v2->_serversForApplets addEntriesFromDictionary:v34];
          [(NSUserDefaults *)v2->_ud setObject:v2->_serversForApplets forKey:@"ServersForApplets"];
        }

        _Block_object_dispose(v218, 8);
      }

      [(NSUserDefaults *)v2->_ud synchronize];
      [v20 setBool:1 forKey:@"ForwardMigrationComplete"];
      [v20 synchronize];
    }

    v46 = [(NSUserDefaults *)v2->_ud dictionaryForKey:@"RegistrationInfo"];

    if (v46)
    {
      v47 = [(NSUserDefaults *)v2->_ud stringForKey:@"PrimaryRegionTopic"];

      if (!v47)
      {
        v48 = [v46 allKeys];
        v49 = [v48 lastObject];

        objc_opt_class();
        LOBYTE(v48) = objc_opt_isKindOfClass();
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v50 = NFLogGetLogger();
        v51 = v50;
        if (v48)
        {
          if (v50)
          {
            v52 = object_getClass(v2);
            v53 = class_isMetaClass(v52);
            v182 = object_getClassName(v2);
            v194 = sel_getName("_importLegacyRegistration");
            v54 = 45;
            if (v53)
            {
              v54 = 43;
            }

            v2 = p_isa;
            v51(5, "%c[%{public}s %{public}s]:%i Found server registration but missing primary topic assignment, assuming %{public}@ as primary.", v54, v182, v194, 296, v49);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v55 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = object_getClass(v2);
            if (class_isMetaClass(v56))
            {
              v57 = 43;
            }

            else
            {
              v57 = 45;
            }

            v58 = object_getClassName(v2);
            v59 = sel_getName("_importLegacyRegistration");
            *v227 = 67110146;
            *&v227[4] = v57;
            *&v227[8] = 2082;
            *&v227[10] = v58;
            *&v227[18] = 2082;
            *&v227[20] = v59;
            *&v227[28] = 1024;
            *&v227[30] = 296;
            *&v227[34] = 2114;
            *&v227[36] = v49;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Found server registration but missing primary topic assignment, assuming %{public}@ as primary.", v227, 0x2Cu);
          }

          [(NSUserDefaults *)v2->_ud setObject:v49 forKey:@"PrimaryRegionTopic"];
        }

        else
        {
          if (v50)
          {
            v60 = object_getClass(v2);
            v61 = class_isMetaClass(v60);
            v62 = object_getClassName(v2);
            v63 = sel_getName("_importLegacyRegistration");
            v202 = objc_opt_class();
            v183 = v62;
            v64 = 45;
            if (v61)
            {
              v64 = 43;
            }

            v2 = p_isa;
            v51(4, "%c[%{public}s %{public}s]:%i Invalid topic: %{public}@", v64, v183, v63, 299, v202);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v65 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            v66 = object_getClass(v2);
            if (class_isMetaClass(v66))
            {
              v67 = 43;
            }

            else
            {
              v67 = 45;
            }

            v68 = object_getClassName(v2);
            v69 = sel_getName("_importLegacyRegistration");
            v70 = objc_opt_class();
            *v227 = 67110146;
            *&v227[4] = v67;
            *&v227[8] = 2082;
            *&v227[10] = v68;
            *&v227[18] = 2082;
            *&v227[20] = v69;
            *&v227[28] = 1024;
            *&v227[30] = 299;
            *&v227[34] = 2114;
            *&v227[36] = v70;
            _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid topic: %{public}@", v227, 0x2Cu);
          }
        }
      }
    }

    v71 = [(NSUserDefaults *)v2->_ud dictionaryForKey:@"ServersForApplets"];
    v72 = [v71 mutableCopy];
    v73 = v72;
    v207 = v71;
    if (v72)
    {
      v74 = v72;
    }

    else
    {
      v74 = objc_alloc_init(NSMutableDictionary);
    }

    serversForApplets = v2->_serversForApplets;
    v2->_serversForApplets = v74;

    v76 = [(NSUserDefaults *)v2->_ud dataForKey:@"ServerStates"];
    if (v76)
    {
      v77 = [NSSet alloc];
      v78 = objc_opt_class();
      v79 = objc_opt_class();
      v80 = [v77 initWithObjects:{v78, v79, objc_opt_class(), 0}];
      v214 = 0;
      v81 = v76;
      v82 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v80 fromData:v76 error:&v214];
      v83 = v214;
      if (v83)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v84 = NFLogGetLogger();
        if (v84)
        {
          v85 = v84;
          v86 = object_getClass(v2);
          v87 = class_isMetaClass(v86);
          v184 = object_getClassName(v2);
          v195 = sel_getName(a2);
          v88 = 45;
          if (v87)
          {
            v88 = 43;
          }

          v85(3, "%c[%{public}s %{public}s]:%i unarchive failed:%{public}@", v88, v184, v195, 76, v83);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v89 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
        {
          v90 = object_getClass(v2);
          if (class_isMetaClass(v90))
          {
            v91 = 43;
          }

          else
          {
            v91 = 45;
          }

          v92 = object_getClassName(v2);
          v93 = sel_getName(a2);
          *buf = 67110146;
          *&buf[4] = v91;
          *v225 = 2082;
          *&v225[2] = v92;
          *&v225[10] = 2082;
          *&v225[12] = v93;
          *&v225[20] = 1024;
          *&v225[22] = 76;
          *&v225[26] = 2114;
          *&v225[28] = v83;
          _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i unarchive failed:%{public}@", buf, 0x2Cu);
        }
      }

      v94 = objc_alloc_init(NSMutableDictionary);
      serverStates = v2->_serverStates;
      v2->_serverStates = v94;

      if (v82)
      {
        v211[0] = _NSConcreteStackBlock;
        v211[1] = 3221225472;
        v211[2] = sub_1000349CC;
        v211[3] = &unk_100055028;
        v96 = v2;
        v212 = v96;
        v213 = a2;
        [v82 enumerateKeysAndObjectsUsingBlock:v211];
        sub_100034D24(v96);
        v97 = v212;
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v99 = NFLogGetLogger();
        if (v99)
        {
          v100 = v99;
          v101 = object_getClass(v2);
          v102 = class_isMetaClass(v101);
          v185 = object_getClassName(v2);
          v196 = sel_getName(a2);
          v103 = 45;
          if (v102)
          {
            v103 = 43;
          }

          v100(3, "%c[%{public}s %{public}s]:%i Invalid data or decode failed: %{public}@", v103, v185, v196, 95, v83);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v97 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
        {
          v104 = object_getClass(v2);
          if (class_isMetaClass(v104))
          {
            v105 = 43;
          }

          else
          {
            v105 = 45;
          }

          v106 = object_getClassName(v2);
          v107 = sel_getName(a2);
          *buf = 67110146;
          *&buf[4] = v105;
          *v225 = 2082;
          *&v225[2] = v106;
          *&v225[10] = 2082;
          *&v225[12] = v107;
          *&v225[20] = 1024;
          *&v225[22] = 95;
          *&v225[26] = 2114;
          *&v225[28] = v83;
          _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid data or decode failed: %{public}@", buf, 0x2Cu);
        }
      }
    }

    else
    {
      v81 = 0;
      v98 = objc_alloc_init(NSMutableDictionary);
      v83 = 0;
      v82 = v2->_serverStates;
      v2->_serverStates = v98;
    }

    v108 = [(NSUserDefaults *)v2->_ud dataForKey:@"RedirectStates"];
    if (v108)
    {
      v109 = [NSSet alloc];
      v110 = objc_opt_class();
      v111 = objc_opt_class();
      v205 = [v109 initWithObjects:{v110, v111, objc_opt_class(), 0}];
      v112 = [NSKeyedUnarchiver unarchivedObjectOfClasses:"unarchivedObjectOfClasses:fromData:error:" fromData:? error:?];
      v113 = v83;

      v83 = v113;
      v206 = v112;
      if (v113)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v114 = NFLogGetLogger();
        if (v114)
        {
          v115 = v114;
          v116 = object_getClass(v2);
          v117 = class_isMetaClass(v116);
          v186 = object_getClassName(v2);
          v197 = sel_getName(a2);
          v118 = 45;
          if (v117)
          {
            v118 = 43;
          }

          v115(3, "%c[%{public}s %{public}s]:%i unarchive failed:%{public}@", v118, v186, v197, 114, v83);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v119 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
        {
          v120 = object_getClass(v2);
          if (class_isMetaClass(v120))
          {
            v121 = 43;
          }

          else
          {
            v121 = 45;
          }

          v122 = object_getClassName(v2);
          v123 = sel_getName(a2);
          *buf = 67110146;
          *&buf[4] = v121;
          *v225 = 2082;
          *&v225[2] = v122;
          *&v225[10] = 2082;
          *&v225[12] = v123;
          *&v225[20] = 1024;
          *&v225[22] = 114;
          *&v225[26] = 2114;
          *&v225[28] = v83;
          _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i unarchive failed:%{public}@", buf, 0x2Cu);
        }

        v112 = v206;
      }

      if (v112)
      {
        v203 = v81;
        v204 = v108;
        v124 = [(NSMutableArray *)v112 mutableCopy];
        redirectStates = v2->_redirectStates;
        v2->_redirectStates = v124;

        sela = objc_opt_new();
        v228 = 0u;
        memset(v227, 0, sizeof(v227));
        v126 = v2->_redirectStates;
        v127 = [(NSMutableArray *)v126 countByEnumeratingWithState:v227 objects:buf count:16];
        if (v127)
        {
          v128 = v127;
          v129 = **&v227[16];
          do
          {
            for (i = 0; i != v128; i = i + 1)
            {
              if (**&v227[16] != v129)
              {
                objc_enumerationMutation(v126);
              }

              v131 = *(*&v227[8] + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v131 step] != 2)
              {
                v132 = v131;
                v133 = [v132 step];
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v134 = NFLogGetLogger();
                v135 = v134;
                if (v133 == 1)
                {
                  if (v134)
                  {
                    v136 = object_getClass(p_isa);
                    v137 = class_isMetaClass(v136);
                    v187 = object_getClassName(p_isa);
                    v198 = sel_getName("_fixupRedirectState");
                    v138 = 45;
                    if (v137)
                    {
                      v138 = 43;
                    }

                    v135(5, "%c[%{public}s %{public}s]:%i State interrupted in progress - moving to error state: %{public}@", v138, v187, v198, 208, v132);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v139 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
                  {
                    v140 = object_getClass(p_isa);
                    if (class_isMetaClass(v140))
                    {
                      v141 = 43;
                    }

                    else
                    {
                      v141 = 45;
                    }

                    v142 = object_getClassName(p_isa);
                    v143 = sel_getName("_fixupRedirectState");
                    *v218 = 67110146;
                    *&v218[4] = v141;
                    *v219 = 2082;
                    *&v219[2] = v142;
                    *&v219[10] = 2082;
                    *&v219[12] = v143;
                    v220 = 1024;
                    v221 = 208;
                    v222 = 2114;
                    v223 = v132;
                    _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i State interrupted in progress - moving to error state: %{public}@", v218, 0x2Cu);
                  }

                  [v132 setIncompleteReason:@"NetworkError"];
                  [v132 incrementStep];
                }

                else
                {
                  if (v134)
                  {
                    v144 = object_getClass(p_isa);
                    v145 = class_isMetaClass(v144);
                    v188 = object_getClassName(p_isa);
                    v199 = sel_getName("_fixupRedirectState");
                    v146 = 45;
                    if (v145)
                    {
                      v146 = 43;
                    }

                    v135(5, "%c[%{public}s %{public}s]:%i redirect request found in bad state, removing: %{public}@", v146, v188, v199, 213, v132);
                  }

                  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                  v147 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
                  {
                    v148 = object_getClass(p_isa);
                    if (class_isMetaClass(v148))
                    {
                      v149 = 43;
                    }

                    else
                    {
                      v149 = 45;
                    }

                    v150 = object_getClassName(p_isa);
                    v151 = sel_getName("_fixupRedirectState");
                    *v218 = 67110146;
                    *&v218[4] = v149;
                    *v219 = 2082;
                    *&v219[2] = v150;
                    *&v219[10] = 2082;
                    *&v219[12] = v151;
                    v220 = 1024;
                    v221 = 213;
                    v222 = 2114;
                    v223 = v132;
                    _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i redirect request found in bad state, removing: %{public}@", v218, 0x2Cu);
                  }

                  [sela addObject:v132];
                }
              }
            }

            v128 = [(NSMutableArray *)v126 countByEnumeratingWithState:v227 objects:buf count:16];
          }

          while (v128);
        }

        v2 = p_isa;
        v152 = v207;
        v108 = v204;
        if ([sela count])
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v153 = NFLogGetLogger();
          if (v153)
          {
            v154 = v153;
            v155 = object_getClass(p_isa);
            v156 = class_isMetaClass(v155);
            v157 = object_getClassName(p_isa);
            v200 = sel_getName("_fixupRedirectState");
            v158 = 45;
            if (v156)
            {
              v158 = 43;
            }

            v189 = v157;
            v108 = v204;
            v154(6, "%c[%{public}s %{public}s]:%i Removing invalid reader state entries", v158, v189, v200, 220);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v159 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
          {
            v160 = object_getClass(p_isa);
            if (class_isMetaClass(v160))
            {
              v161 = 43;
            }

            else
            {
              v161 = 45;
            }

            v162 = object_getClassName(p_isa);
            v163 = sel_getName("_fixupRedirectState");
            *v218 = 67109890;
            *&v218[4] = v161;
            *v219 = 2082;
            *&v219[2] = v162;
            *&v219[10] = 2082;
            *&v219[12] = v163;
            v220 = 1024;
            v221 = 220;
            _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Removing invalid reader state entries", v218, 0x22u);
          }

          [p_isa[4] removeObjectsInArray:sela];
          sub_100035A3C(p_isa);
        }

        v81 = v203;
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v166 = NFLogGetLogger();
        if (v166)
        {
          v167 = v166;
          v168 = object_getClass(v2);
          v169 = class_isMetaClass(v168);
          v190 = object_getClassName(v2);
          v201 = sel_getName(a2);
          v170 = 45;
          if (v169)
          {
            v170 = 43;
          }

          v167(3, "%c[%{public}s %{public}s]:%i Invalid data or decode failed: %{public}@", v170, v190, v201, 122, v83);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v171 = NFSharedLogGetLogger();
        v152 = v207;
        if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
        {
          v172 = object_getClass(v2);
          if (class_isMetaClass(v172))
          {
            v173 = 43;
          }

          else
          {
            v173 = 45;
          }

          v174 = object_getClassName(v2);
          v175 = sel_getName(a2);
          *buf = 67110146;
          *&buf[4] = v173;
          *v225 = 2082;
          *&v225[2] = v174;
          *&v225[10] = 2082;
          *&v225[12] = v175;
          *&v225[20] = 1024;
          *&v225[22] = 122;
          *&v225[26] = 2114;
          *&v225[28] = v83;
          _os_log_impl(&_mh_execute_header, v171, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid data or decode failed: %{public}@", buf, 0x2Cu);
        }

        v176 = objc_opt_new();
        v177 = v2->_redirectStates;
        v2->_redirectStates = v176;
      }

      v165 = v206;
    }

    else
    {
      v164 = objc_opt_new();
      v165 = v2->_redirectStates;
      v2->_redirectStates = v164;
      v152 = v207;
    }

    [(NSUserDefaults *)v2->_ud removeObjectForKey:@"JCOPUpdateInfo"];
    [(NSUserDefaults *)v2->_ud removeObjectForKey:@"SEOSUpdateInfo"];
  }

  return v2;
}

@end