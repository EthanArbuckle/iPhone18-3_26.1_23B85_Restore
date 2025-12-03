@interface NESMPathControllerSession
- (BOOL)handleUpdateConfiguration:(id)configuration;
- (NESMPathControllerSession)initWithConfiguration:(id)configuration andServer:(id)server;
- (void)dealloc;
- (void)didStartTrackingNOI:(id)i;
- (void)didStopTrackingAllNOIs:(id)is;
- (void)didStopTrackingNOI:(id)i;
- (void)handleChangeEventForFallbackInterfaces:(id)interfaces;
- (void)handleInstalledAppsChanged;
- (void)handleNetworkConfigurationChange:(int64_t)change;
- (void)handleNetworkDetectionNotification:(int)notification;
- (void)handleStartMessage:(id)message;
- (void)install;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)uninstall;
@end

@implementation NESMPathControllerSession

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (self)
  {
    Property = objc_getProperty(self, v11, 392, 1);
  }

  else
  {
    Property = 0;
  }

  if (Property == objectCopy && [pathCopy isEqualToString:@"status"])
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v62 = pathCopy;
      if (self)
      {
        v63 = objc_getProperty(self, v15, 392, 1);
      }

      else
      {
        v63 = 0;
      }

      status = [v63 status];
      v65 = @"Invalid";
      if (status == 2)
      {
        v65 = @"Not Available";
      }

      if (status == 1)
      {
        v65 = @"Available";
      }

      v66 = v65;
      *buf = 138412290;
      *v180 = v66;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Roaming status changed to %@", buf, 0xCu);

      pathCopy = v62;
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  server = [(NESMSession *)self server];
  if (server == objectCopy)
  {
    if ([pathCopy isEqualToString:@"primaryCellularInterface"])
    {
    }

    else
    {
      v18 = [pathCopy isEqualToString:@"primaryPhysicalInterface"];

      if ((v18 & 1) == 0)
      {
        v166 = 0;
        goto LABEL_84;
      }
    }

    v20 = [pathCopy isEqualToString:@"primaryCellularInterface"];
    v21 = ne_log_obj();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
    if (v20)
    {
      if (!v22)
      {
        goto LABEL_17;
      }

      server2 = [(NESMSession *)self server];
      primaryCellularInterface = [server2 primaryCellularInterface];
      *buf = 138412290;
      *v180 = primaryCellularInterface;
      v25 = "Primary cellular interface changed to %@";
    }

    else
    {
      if (!v22)
      {
        goto LABEL_17;
      }

      server2 = [(NESMSession *)self server];
      primaryCellularInterface = [server2 primaryPhysicalInterface];
      *buf = 138412290;
      *v180 = primaryCellularInterface;
      v25 = "Primary physical interface changed to %@";
    }

    _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, v25, buf, 0xCu);

LABEL_17:
    v169 = v16;
    v163 = objectCopy;
    v165 = changeCopy;

    server3 = [(NESMSession *)self server];
    primaryCellularInterface2 = [server3 primaryCellularInterface];
    v28 = &selRef_temporaryAllowMulticastNetworkName;
    if (primaryCellularInterface2)
    {
      v29 = primaryCellularInterface2;
      server4 = [(NESMSession *)self server];
      primaryCellularInterface3 = [server4 primaryCellularInterface];
      [primaryCellularInterface3 interfaceName];
      v33 = v32 = self;
      server5 = [(NESMSession *)v32 server];
      primaryPhysicalInterface = [server5 primaryPhysicalInterface];
      [primaryPhysicalInterface interfaceName];
      v36 = v158 = pathCopy;
      v37 = [v33 isEqualToString:v36];

      pathCopy = v158;
      v28 = &selRef_temporaryAllowMulticastNetworkName;

      self = v32;
      v39 = buf;
      if ((v37 & 1) == 0)
      {
        server6 = [(NESMSession *)v32 server];
        server = [server6 primaryCellularInterface];

        server7 = [(NESMSession *)v32 server];
        primaryPhysicalInterface2 = [server7 primaryPhysicalInterface];

        if (server)
        {
          changeCopy = v165;
          v28 = &selRef_temporaryAllowMulticastNetworkName;
          if (!v32)
          {
            v16 = 1;
            objectCopy = v163;
            goto LABEL_80;
          }

          v43 = objc_getProperty(v32, v38, 432, 1);
          v16 = v169;
          if (v43)
          {
            v44 = v43;
            v156 = 0;
            goto LABEL_30;
          }

          v166 = 1;
        }

        else
        {
          changeCopy = v165;
          v28 = &selRef_temporaryAllowMulticastNetworkName;
          server = 0;
          if (!v32)
          {
            if (primaryPhysicalInterface2)
            {
              pathCopy = v158;
              self = 0;
              v16 = 1;
              objectCopy = v163;
              changeCopy = v165;
              goto LABEL_80;
            }

            v166 = 0;
            primaryPhysicalInterface2 = 0;
            pathCopy = v158;
            self = 0;
            objectCopy = v163;
            changeCopy = v165;
            v16 = v169;
LABEL_82:

            goto LABEL_83;
          }

          v166 = 0;
          v16 = v169;
        }

LABEL_25:
        v45 = objc_getProperty(self, v38, *(v28 + 723), 1);
        server5 = v45;
        if (server != v45)
        {

          if ((v166 & 1) == 0)
          {
LABEL_59:
            v16 = 1;
            objectCopy = v163;
LABEL_79:
            objc_setProperty_atomic(self, v46, server, *(v28 + 723));
            objc_setProperty_atomic(self, v67, primaryPhysicalInterface2, 440);
LABEL_80:
            v68 = ne_log_obj();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
            {
              if (self)
              {
                v79 = objc_getProperty(self, v69, *(v28 + 723), 1);
              }

              else
              {
                v79 = 0;
              }

              interfaceName = [v79 interfaceName];
              if (self)
              {
                v82 = objc_getProperty(self, v80, 440, 1);
              }

              else
              {
                v82 = 0;
              }

              interfaceName2 = [v82 interfaceName];
              *buf = 138412546;
              *v180 = interfaceName;
              *&v180[8] = 2112;
              v181 = interfaceName2;
              _os_log_debug_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEBUG, "Fallback interface set to %@ from %@", buf, 0x16u);
            }

            v166 = 1;
            goto LABEL_82;
          }

          goto LABEL_27;
        }

        v44 = 0;
        v156 = 1;
        if (!v166)
        {
          v161 = primaryPhysicalInterface2;
          selfCopy3 = self;
          v155 = 0;
          goto LABEL_40;
        }

LABEL_30:
        v161 = primaryPhysicalInterface2;
        v47 = objc_getProperty(self, v38, *(v28 + 723), 1);
        if (v47)
        {
          v167 = v44;
          v154 = v47;
          interfaceName3 = [server interfaceName];
          HIDWORD(v155) = 1;
          v50 = objc_getProperty(self, v49, *(v28 + 723), 1);
          primaryPhysicalInterface2 = [v50 interfaceName];
          if ([interfaceName3 isEqualToString:primaryPhysicalInterface2])
          {

            if (v156)
            {
            }

            objectCopy = v163;
            changeCopy = v165;
            primaryPhysicalInterface2 = v161;
            goto LABEL_77;
          }

          v152 = v50;
          v153 = interfaceName3;
          selfCopy3 = self;
          LODWORD(v155) = 1;
          changeCopy = v165;
          v44 = v167;
        }

        else
        {
          v155 = 0x100000000;
          selfCopy3 = self;
          v154 = 0;
        }

LABEL_40:
        v168 = v44;
        if (v161)
        {
          v52 = objc_getProperty(selfCopy3, v38, 440, 1);
          if (v52)
          {
            v53 = v52;
            v159 = pathCopy;
            v54 = 0;
LABEL_48:
            v58 = selfCopy3;
            if (objc_getProperty(selfCopy3, v38, 440, 1))
            {
              interfaceName4 = [(uint8_t *)v161 interfaceName];
              v57 = v58;
              v61 = [objc_getProperty(v58 v60];
              v56 = [interfaceName4 isEqualToString:v61];
            }

            else
            {
              v57 = selfCopy3;
              v56 = 0;
            }

            changeCopy = v165;
            v28 = &selRef_temporaryAllowMulticastNetworkName;
            if (v54)
            {
            }

            pathCopy = v159;
LABEL_55:

            self = v57;
            v16 = v169;
            if (v155)
            {
              goto LABEL_56;
            }

            goto LABEL_71;
          }
        }

        self = selfCopy3;
        v55 = objc_getProperty(selfCopy3, v38, 440, 1);
        v39 = v55;
        v56 = v161 != v55;
        if (v161 == v55)
        {
          if (v161)
          {
            v159 = pathCopy;
            v53 = 0;
            v54 = 1;
            goto LABEL_48;
          }
        }

        else
        {

          if (v161)
          {
            v57 = selfCopy3;
            v53 = 0;
            v56 = 1;
            v28 = &selRef_temporaryAllowMulticastNetworkName;
            goto LABEL_55;
          }
        }

        v161 = 0;
        v28 = &selRef_temporaryAllowMulticastNetworkName;
        if (v155)
        {
LABEL_56:

          if ((v155 & 0x100000000) == 0)
          {
LABEL_57:
            primaryPhysicalInterface2 = v161;
            if (v156)
            {

              if (v56)
              {
                goto LABEL_59;
              }

              goto LABEL_74;
            }

            objectCopy = v163;
            if (v56)
            {
              v16 = 1;
              goto LABEL_79;
            }

LABEL_101:
            v166 = 0;
            goto LABEL_82;
          }

          goto LABEL_72;
        }

LABEL_71:
        if (!HIDWORD(v155))
        {
          goto LABEL_57;
        }

LABEL_72:

        primaryPhysicalInterface2 = v161;
        if ((v156 & 1) == 0)
        {

          objectCopy = v163;
          if ((v56 & 1) == 0)
          {
            goto LABEL_101;
          }

LABEL_77:
          if (!objc_getProperty(self, v46, *(v28 + 723), 1))
          {
            v16 = 1;
          }

          goto LABEL_79;
        }

        if ((v56 & 1) == 0)
        {
LABEL_74:
          v166 = 0;
LABEL_75:
          objectCopy = v163;
          goto LABEL_82;
        }

LABEL_27:
        objectCopy = v163;
        goto LABEL_77;
      }
    }

    else
    {

      v39 = buf;
    }

    v166 = 0;
    primaryPhysicalInterface2 = 0;
    server = 0;
    changeCopy = v165;
    v16 = v169;
    if (!self)
    {
      server = 0;
      goto LABEL_75;
    }

    goto LABEL_25;
  }

  v166 = 0;
LABEL_83:

LABEL_84:
  if (self)
  {
    v70 = objc_getProperty(self, v19, 520, 1);
  }

  else
  {
    v70 = 0;
  }

  v71 = &selRef_temporaryAllowMulticastNetworkName;
  v170 = v16;
  if (v70 == objectCopy && [pathCopy isEqualToString:@"considerAlternateUpdate"])
  {
    if (self)
    {
      v72 = objc_getProperty(self, v19, 520, 1);
    }

    else
    {
      v72 = 0;
    }

    considerAlternateUpdate = [v72 considerAlternateUpdate];
    v74 = ne_log_obj();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v180 = considerAlternateUpdate;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Consider alternate update, new advice: %@", buf, 0xCu);
    }

    applications = [considerAlternateUpdate applications];
    level = [considerAlternateUpdate level];
    v157 = considerAlternateUpdate;
    if (self)
    {
      if (self->_level == level)
      {
        goto LABEL_122;
      }

      self->_level = level;
      if (level == 2)
      {
        if (self->_fallbackEnabled)
        {
          if (!self->_weakFallback)
          {
            goto LABEL_122;
          }
        }

        else
        {
          v92 = changeCopy;
          v93 = ne_log_obj();
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Begin strong fallback advisory", buf, 2u);
          }

          v94 = [NSString alloc];
          configuration = [(NESMSession *)self configuration];
          identifier = [configuration identifier];
          v97 = [v94 initWithFormat:@"com.apple.nesessionmanager.strongFallback.%@", identifier];

          [v97 UTF8String];
          v98 = os_transaction_create();
          objc_setProperty_atomic(self, v99, v98, 424);

          v170 = 1;
          changeCopy = v92;
        }

        v78 = 0;
        self->_fallbackEnabled = 1;
        goto LABEL_121;
      }

      if (level == 1)
      {
        if (self->_fallbackEnabled)
        {
          if (self->_weakFallback)
          {
            goto LABEL_122;
          }
        }

        else
        {
          v84 = changeCopy;
          v85 = ne_log_obj();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Begin weak fallback advisory", buf, 2u);
          }

          v86 = [NSString alloc];
          configuration2 = [(NESMSession *)self configuration];
          identifier2 = [configuration2 identifier];
          v89 = [v86 initWithFormat:@"com.apple.nesessionmanager.weakFallback.%@", identifier2];

          [v89 UTF8String];
          v90 = os_transaction_create();
          objc_setProperty_atomic(self, v91, v90, 424);

          v170 = 1;
          changeCopy = v84;
        }

        v78 = 1;
        self->_fallbackEnabled = 1;
        goto LABEL_121;
      }

      if (level)
      {
LABEL_122:
        v100 = applications;
        v102 = objc_getProperty(self, v101, 512, 1);
        if (v102)
        {
          v104 = v102;
          v105 = objc_getProperty(self, v103, 520, 1);
          if (v105)
          {
            v107 = v105;
            v108 = objc_getProperty(self, v106, 472, 1);

            if (v108)
            {
              v164 = objectCopy;
              v109 = +[NSMutableSet set];
              v173 = 0u;
              v174 = 0u;
              v175 = 0u;
              v176 = 0u;
              v110 = v100;
              v111 = [v110 countByEnumeratingWithState:&v173 objects:buf count:16];
              if (v111)
              {
                v112 = v111;
                v113 = v109;
                v160 = pathCopy;
                v114 = 0;
                v115 = *v174;
                do
                {
                  for (i = 0; i != v112; i = i + 1)
                  {
                    if (*v174 != v115)
                    {
                      objc_enumerationMutation(v110);
                    }

                    v117 = *(*(&v173 + 1) + 8 * i);
                    bundleIdentifier = [v117 bundleIdentifier];
                    if (bundleIdentifier)
                    {
                      [v113 addObject:bundleIdentifier];
                      if ([v117 state] == 2 && (objc_msgSend(objc_getProperty(self, v119, 456, 1), "containsObject:", bundleIdentifier) & 1) == 0)
                      {
                        v114 = 1;
                        [objc_getProperty(self v120];
                      }

                      else if ([v117 state] == 1 && objc_msgSend(objc_getProperty(self, v121, 456, 1), "containsObject:", bundleIdentifier))
                      {
                        v114 = 1;
                        [objc_getProperty(self v122];
                      }

                      if ([v117 state] == 1 && (objc_msgSend(objc_getProperty(self, v123, 464, 1), "containsObject:", bundleIdentifier) & 1) == 0)
                      {
                        v114 = 1;
                        [objc_getProperty(self v124];
                      }

                      else if ([v117 state] == 2 && objc_msgSend(objc_getProperty(self, v125, 464, 1), "containsObject:", bundleIdentifier))
                      {
                        v114 = 1;
                        [objc_getProperty(self v126];
                      }
                    }
                  }

                  v112 = [v110 countByEnumeratingWithState:&v173 objects:buf count:16];
                }

                while (v112);

                v128 = v157;
                pathCopy = v160;
                objectCopy = v164;
                v109 = v113;
                v129 = &selRef_temporaryAllowMulticastNetworkName;
                if (v114)
                {
                  v130 = ne_log_obj();
                  if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
                  {
                    v149 = objc_getProperty(self, v131, 456, 1);
                    *v177 = 138412290;
                    selfCopy5 = v149;
                    _os_log_debug_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEBUG, "Foreground apps changed to %@", v177, 0xCu);
                  }

                  v132 = ne_log_obj();
                  if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
                  {
                    v150 = objc_getProperty(self, v133, 464, 1);
                    *v177 = 138412290;
                    selfCopy5 = v150;
                    _os_log_debug_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEBUG, "Background running apps changed to %@", v177, 0xCu);
                  }

                  v134 = ne_log_obj();
                  if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
                  {
                    *v177 = 138412290;
                    selfCopy5 = self;
                    _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "%@: Updating policies on app state change", v177, 0xCu);
                  }

                  sub_1000A83A0(self, 1, 0);
                }
              }

              else
              {

                objectCopy = v164;
                v128 = v157;
                v129 = &selRef_temporaryAllowMulticastNetworkName;
              }

              v71 = &selRef_temporaryAllowMulticastNetworkName;
              if (([objc_getProperty(self v127] & 1) == 0)
              {
                objc_setProperty_atomic(self, v135, v109, *(v129 + 736));
                v136 = ne_log_obj();
                if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
                {
                  v148 = objc_getProperty(self, v137, *(v129 + 736), 1);
                  *v177 = 138412290;
                  selfCopy5 = v148;
                  _os_log_debug_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEBUG, "Fallback allowed apps changed to %@", v177, 0xCu);
                }

                v138 = ne_log_obj();
                if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
                {
                  *v177 = 138412290;
                  selfCopy5 = self;
                  _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "%@: Updating policies on fallback app change", v177, 0xCu);
                }

                sub_1000A83A0(self, 1, 0);
              }

              goto LABEL_164;
            }
          }

          else
          {
          }
        }

        v71 = &selRef_temporaryAllowMulticastNetworkName;
LABEL_155:
        v128 = v157;
LABEL_164:

        goto LABEL_165;
      }
    }

    else if (!level)
    {
      v151 = applications;
      goto LABEL_155;
    }

    if (self->_fallbackEnabled)
    {
      v76 = ne_log_obj();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "End fallback advisory", buf, 2u);
      }

      objc_setProperty_atomic(self, v77, 0, 424);
      v78 = 0;
      self->_fallbackEnabled = 0;
      v170 = 1;
LABEL_121:
      self->_weakFallback = v78;
      v166 = 1;
      goto LABEL_122;
    }

    goto LABEL_122;
  }

LABEL_165:
  v139 = *(v71 + 721);
  v140 = 3;
  if ((*(&self->super.super.isa + v139) & 1) == 0)
  {
    if ([objc_getProperty(self v19])
    {
      v140 = 3;
    }

    else
    {
      v140 = 1;
    }
  }

  v141 = ne_log_obj();
  if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
  {
    v142 = ne_session_status_to_string();
    v143 = *(&self->super.super.isa + v139);
    v144 = [objc_getProperty(self v144];
    *buf = 138413058;
    *v180 = self;
    *&v180[8] = 2080;
    v181 = v142;
    v182 = 1024;
    v183 = v143;
    v184 = 1024;
    v185 = v144;
    _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "Will update session %@ status to %s (fallback %u non-default %u)", buf, 0x22u);
  }

  queue = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AB154;
  block[3] = &unk_1000EB338;
  block[4] = self;
  v172 = v140;
  dispatch_async(queue, block);

  if ((v166 | v170) == 1)
  {
    v147 = ne_log_obj();
    if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v180 = v170;
      *&v180[4] = 1024;
      *&v180[6] = v166;
      _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEFAULT, "Updating on KVO change, policies=%d, agent=%d", buf, 0xEu);
    }

    sub_1000A83A0(self, v170, v166);
  }
}

- (void)handleChangeEventForFallbackInterfaces:(id)interfaces
{
  interfacesCopy = interfaces;
  queue = [(NESMSession *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AB2D8;
  v7[3] = &unk_1000EB198;
  v7[4] = self;
  v8 = interfacesCopy;
  v6 = interfacesCopy;
  dispatch_async(queue, v7);
}

- (void)dealloc
{
  [(NESMPathControllerSession *)self uninstall];
  v3.receiver = self;
  v3.super_class = NESMPathControllerSession;
  [(NESMSession *)&v3 dealloc];
}

- (void)uninstall
{
  if (self)
  {
    sub_1000A94A8(self, a2);
    self->_policyInstallAttemptCount = 0;
    sub_1000AB668(self, v3);
    if (self->_watchingFallbackNotifications)
    {
      sub_1000AB754(self, v4);
    }
  }

  policySession = [(NESMSession *)self policySession];
  sub_100030CC4(policySession);

  [(NESMSession *)self setStatus:1];
}

- (void)install
{
  if (self)
  {
    if (self->_needsRoamingMonitor)
    {
      if (!objc_getProperty(self, a2, 392, 1))
      {
        v3 = objc_alloc_init(NWNetworkDescription);
        [v3 setRoamingPreference:1];
        v4 = objc_alloc_init(NWParameters);
        [v4 setRequiredInterfaceType:2];
        v5 = [NWMonitor monitorWithNetworkDescription:v3 endpoint:0 parameters:v4];
        objc_setProperty_atomic(self, v6, v5, 392);

        if (objc_getProperty(self, v7, 392, 1))
        {
          v9 = objc_getProperty(self, v8, 416, 1);
          if (v9)
          {
          }

          else if (sub_1000AC420(self, 1))
          {
            v12 = ne_log_obj();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(handler) = 0;
              _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Begin roaming monitor transaction", &handler, 2u);
            }

            v13 = [NSString alloc];
            configuration = [(NESMSession *)self configuration];
            identifier = [configuration identifier];
            v16 = [v13 initWithFormat:@"com.apple.nesessionmanager.RoamingMonitor.%@", identifier];

            [v16 UTF8String];
            v17 = os_transaction_create();
            objc_setProperty_atomic(self, v18, v17, 416);
          }

          [objc_getProperty(self v10];
        }

        else
        {
          v11 = ne_log_obj();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            LOWORD(handler) = 0;
            _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Roaming monitor creation failed", &handler, 2u);
          }
        }
      }
    }

    else
    {
      sub_1000AB668(self, a2);
    }

    watchingFallbackNotifications = self->_watchingFallbackNotifications;
    if (self->_needsFallbackNotifications)
    {
      if (!self->_watchingFallbackNotifications)
      {
        v20 = +[NSMutableArray array];
        objc_setProperty_atomic(self, v21, v20, 456);

        v22 = +[NSMutableArray array];
        objc_setProperty_atomic(self, v23, v22, 464);

        v24 = +[NSMutableSet set];
        objc_setProperty_atomic(self, v25, v24, 472);

        v26 = +[NSMutableDictionary dictionary];
        objc_setProperty_atomic(self, v27, v26, 480);

        self->_fallbackInUseToken = -1;
        queue = [(NESMSession *)self queue];
        v29 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);

        v30 = dispatch_time(0, -1);
        dispatch_source_set_timer(v29, v30, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
        *&handler = _NSConcreteStackBlock;
        *(&handler + 1) = 3221225472;
        v48 = sub_1000AC418;
        v49 = &unk_1000EB1C0;
        selfCopy = self;
        dispatch_source_set_event_handler(v29, &handler);
        dispatch_resume(v29);
        objc_setProperty_atomic(self, v31, v29, 488);

        v32 = objc_alloc_init(off_1000FD220());
        objc_setProperty_atomic(self, v33, v32, 512);

        if (objc_getProperty(self, v34, 512, 1))
        {
          v36 = objc_getProperty(self, v35, 512, 1);
          queue2 = [(NESMSession *)self queue];
          [v36 setQueue:queue2];

          [objc_getProperty(self v38];
          [objc_getProperty(self v39];
        }

        else
        {
          v40 = ne_log_obj();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            LOWORD(handler) = 0;
            _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "NWNetworkOfInterestManager alloc failed", &handler, 2u);
          }
        }

        server = [(NESMSession *)self server];
        [server addObserver:self forKeyPath:@"primaryCellularInterface" options:5 context:0];

        server2 = [(NESMSession *)self server];
        [server2 addObserver:self forKeyPath:@"primaryPhysicalInterface" options:5 context:0];

        self->_watchingFallbackNotifications = 1;
      }
    }

    else if (self->_watchingFallbackNotifications)
    {
      sub_1000AB754(self, a2);
    }
  }

  sub_1000ABF54(self, a2);
  v43 = ne_log_obj();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(handler) = 138412290;
    *(&handler + 4) = self;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%@: Updating policies and agent on install", &handler, 0xCu);
  }

  if (self)
  {
    sub_1000A94A8(self, v44);
    self->_policyInstallAttemptCount = 0;
    sub_1000A83A0(self, 1, 1);
    Property = objc_getProperty(self, v45, 368, 1);
  }

  else
  {
    Property = 0;
  }

  if (([Property hasNonDefaultRules] & 1) != 0 || ne_session_fallback_advisory())
  {
    [(NESMSession *)self setStatus:3];
  }

  [(NESMSession *)self sendConfigurationChangeHandledNotification];
}

- (void)didStopTrackingAllNOIs:(id)is
{
  isCopy = is;
  v5 = ne_log_large_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = isCopy;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "didStopTrackingAllNOIs %@", &v10, 0xCu);
  }

  if (self)
  {
    if ([isCopy containsObject:{objc_getProperty(self, v6, 520, 1)}])
    {
      [objc_getProperty(self v7];
      objc_setProperty_atomic(self, v8, 0, 520);
    }

    if (objc_getProperty(self, v7, 512, 1))
    {
      [objc_getProperty(self v9];
    }
  }

  else if ([isCopy containsObject:0])
  {
    [0 removeObserver:0 forKeyPath:@"considerAlternateUpdate"];
  }
}

- (void)didStopTrackingNOI:(id)i
{
  iCopy = i;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = iCopy;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "didStopTrackingNOI %@", &v9, 0xCu);
  }

  if (self)
  {
    if (objc_getProperty(self, v6, 520, 1) == iCopy)
    {
      [objc_getProperty(self v7];
      objc_setProperty_atomic(self, v8, 0, 520);
    }
  }

  else if (!iCopy)
  {
    [0 removeObserver:0 forKeyPath:@"considerAlternateUpdate"];
  }
}

- (void)didStartTrackingNOI:(id)i
{
  iCopy = i;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = iCopy;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "didStartTrackingNOI %@", &v10, 0xCu);
  }

  if (self)
  {
    v7 = objc_getProperty(self, v6, 520, 1);
    v9 = v7;
    if (v7)
    {
      [v7 removeObserver:self forKeyPath:@"considerAlternateUpdate"];
    }

    objc_setProperty_atomic(self, v8, iCopy, 520);
  }

  [iCopy addObserver:self forKeyPath:@"considerAlternateUpdate" options:5 context:0];
}

- (void)handleInstalledAppsChanged
{
  queue = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ACA30;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handleNetworkConfigurationChange:(int64_t)change
{
  queue = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ACC64;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handleNetworkDetectionNotification:(int)notification
{
  if (notification <= 5)
  {
    v10 = v3;
    v11 = v4;
    if (((1 << notification) & 0x2A) != 0)
    {
      queue = [(NESMSession *)self queue];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000ACD70;
      v8[3] = &unk_1000EB338;
      v8[4] = self;
      notificationCopy = notification;
      dispatch_async(queue, v8);
    }
  }
}

- (BOOL)handleUpdateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (configurationCopy && (v13.receiver = self, v13.super_class = NESMPathControllerSession, [(NESMSession *)&v13 handleUpdateConfiguration:configurationCopy]))
  {
    pathController = [configurationCopy pathController];
    v7 = pathController;
    if (self)
    {
      objc_setProperty_atomic(self, v6, pathController, 368);

      self->_needsRoamingMonitor = sub_1000AC420(self, 0);
      self->_needsFallbackNotifications = sub_1000ACF88(self, v8);
      sub_1000AD084(self, v9);
    }

    else
    {
    }

    server = [(NESMSession *)self server];
    [server requestInstallForSession:self withParentSession:0 exclusive:0];

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)handleStartMessage:(id)message
{
  v5.receiver = self;
  v5.super_class = NESMPathControllerSession;
  [(NESMSession *)&v5 handleStartMessage:message];
  server = [(NESMSession *)self server];
  [server requestInstallForSession:self withParentSession:0 exclusive:0];
}

- (NESMPathControllerSession)initWithConfiguration:(id)configuration andServer:(id)server
{
  configurationCopy = configuration;
  v17.receiver = self;
  v17.super_class = NESMPathControllerSession;
  v7 = [(NESMSession *)&v17 initWithConfiguration:configurationCopy andServer:server];
  v8 = v7;
  if (v7)
  {
    v7->_level = 0;
    pathController = [configurationCopy pathController];
    controllerConfiguration = v8->_controllerConfiguration;
    v8->_controllerConfiguration = pathController;

    v8->_needsRoamingMonitor = sub_1000AC420(v8, 0);
    v8->_needsFallbackNotifications = sub_1000ACF88(v8, v11);
    sub_1000AD084(v8, v12);
    v13 = [NESMPolicySession alloc];
    identifier = [configurationCopy identifier];
    grade = [configurationCopy grade];
    if (v13)
    {
      v13 = sub_100033D18(&v13->super.isa, identifier, 5, grade, 1, 1);
    }

    [(NESMSession *)v8 setPolicySession:v13];

    sub_10008E79C(v8);
  }

  return v8;
}

@end