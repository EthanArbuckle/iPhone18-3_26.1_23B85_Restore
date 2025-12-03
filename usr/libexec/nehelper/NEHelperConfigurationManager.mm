@interface NEHelperConfigurationManager
- (NEHelperConfigurationManager)initWithFirstMessage:(id)message;
- (OS_dispatch_queue)handlerQueue;
- (void)handleMessage:(id)message;
@end

@implementation NEHelperConfigurationManager

- (void)handleMessage:(id)message
{
  messageCopy = message;
  int64 = xpc_dictionary_get_int64(messageCopy, "config-operation");
  if (!int64)
  {
    v11 = 0;
    string = 0;
    goto LABEL_18;
  }

  v6 = int64;
  string = xpc_dictionary_get_string(messageCopy, "config-plugin-type");
  if (string)
  {
    string = [[NSString alloc] initWithCString:string encoding:4];
  }

  if (!self || !self->_entitled)
  {
LABEL_17:
    sub_10000BA0C(NEHelperServer, messageCopy, 10, 0);
    v11 = 0;
    goto LABEL_18;
  }

  if (v6 == 5 && !self->_superEntitled)
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v276 = 138412290;
      *&v276[4] = objc_getProperty(self, v18, 72, 1);
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Rejecting fetch-identities operation from non-super-entitled app %@", v276, 0xCu);
    }

    goto LABEL_17;
  }

  if (string)
  {
    v9 = [[NSArray alloc] initWithObjects:{string, 0}];
    [objc_getProperty(self v10];
  }

  else
  {
    [objc_getProperty(self v7];
  }

  v12 = [NSDictionary alloc];
  v11 = [v12 initWithDictionary:{objc_getProperty(self, v13, 64, 1)}];
  switch(v6)
  {
    case 1:
      v14 = +[NEConfigurationManager sharedManagerForAllUsers];
      Property = objc_getProperty(self, v15, 40, 1);
      v274[0] = _NSConcreteStackBlock;
      v274[1] = 3221225472;
      v274[2] = sub_1000140A0;
      v274[3] = &unk_10003D270;
      v275 = messageCopy;
      [v14 loadIndexWithFilter:v11 completionQueue:Property handler:v274];

      goto LABEL_18;
    case 2:
      v47 = xpc_dictionary_get_value(messageCopy, "config-ids-data");
      v48 = v47;
      if (v47 && xpc_get_type(v47) == &_xpc_type_data)
      {
        v49 = [NSKeyedUnarchiver alloc];
        bytes_ptr = xpc_data_get_bytes_ptr(v48);
        v51 = [NSData dataWithBytesNoCopy:bytes_ptr length:xpc_data_get_length(v48) freeWhenDone:0];
        v52 = [v49 initForReadingFromData:v51 error:0];

        v53 = objc_opt_class();
        v54 = [NSSet setWithObjects:v53, objc_opt_class(), 0];
        v55 = [v52 decodeObjectOfClasses:v54 forKey:@"config-identifiers"];

        v56 = isa_nsarray();
        v57 = ne_log_obj();
        v58 = v57;
        if (v56)
        {
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            *v276 = 138412546;
            *&v276[4] = objc_getProperty(self, v59, 72, 1);
            *&v276[12] = 2112;
            *&v276[14] = v55;
            _os_log_debug_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEBUG, "%@ fetching configs with IDs: %@", v276, 0x16u);
          }

          v60 = +[NEConfigurationManager sharedManagerForAllUsers];
          v62 = objc_getProperty(self, v61, 40, 1);
          v272[0] = _NSConcreteStackBlock;
          v272[1] = 3221225472;
          v272[2] = sub_100014194;
          v272[3] = &unk_10003D298;
          v273 = messageCopy;
          [v60 loadConfigurations:v55 withFilter:v11 completionQueue:v62 completionHandler:v272];
        }

        else
        {
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            *v276 = 138412546;
            *&v276[4] = objc_getProperty(self, v138, 72, 1);
            *&v276[12] = 2112;
            *&v276[14] = v55;
            _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "%@ Received invalid config IDs: %@", v276, 0x16u);
          }

          sub_10000BA0C(NEHelperServer, messageCopy, 0, 0);
        }
      }

      goto LABEL_18;
    case 3:
      length = 0;
      data = xpc_dictionary_get_data(messageCopy, "config-data", &length);
      v270 = 0;
      v35 = xpc_dictionary_get_data(messageCopy, "config-signature", &v270);
      if (length > 0x80000)
      {
        v37 = ne_log_obj();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v142 = objc_getProperty(self, v38, 72, 1);
          *v276 = 138412546;
          *&v276[4] = v142;
          *&v276[12] = 2048;
          *&v276[14] = length;
          _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%@ configuration is too large: %lu", v276, 0x16u);
        }

        sub_10000BA0C(NEHelperServer, messageCopy, 2, 0);
        goto LABEL_18;
      }

      v97 = v35;
      v98 = 0;
      if (data && length)
      {
        v99 = [NSKeyedUnarchiver alloc];
        v100 = [NSData dataWithBytesNoCopy:data length:length freeWhenDone:0];
        v101 = [v99 initForReadingFromData:v100 error:0];

        v98 = [v101 decodeObjectOfClass:objc_opt_class() forKey:@"config-object"];
      }

      if (!v97 || !v270)
      {
        if (self->_appGroupEntitled)
        {
          goto LABEL_103;
        }

        v103 = 0;
LABEL_121:
        if (![objc_getProperty(self v36] || !objc_getProperty(self, v128, 48, 1))
        {
          goto LABEL_125;
        }

        appVPN = +[NEConfigurationManager sharedManagerForAllUsers];
        v130 = objc_getProperty(self, v129, 32, 1);
        [appVPN addGroups:v130 forApp:{objc_getProperty(self, v131, 48, 1)}];

LABEL_124:
        goto LABEL_125;
      }

      v102 = [NSData dataWithBytes:v97 length:?];
      v103 = v102;
      if (!self->_appGroupEntitled)
      {
        goto LABEL_121;
      }

      if (!v102)
      {
LABEL_103:
        v115 = ne_log_obj();
        if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
        {
          v167 = objc_getProperty(self, v116, 72, 1);
          *v276 = 138412290;
          *&v276[4] = v167;
          _os_log_error_impl(&_mh_execute_header, v115, OS_LOG_TYPE_ERROR, "%@ cannot create new configurations because it is only app group entitled", v276, 0xCu);
        }

        sub_10000BA0C(NEHelperServer, messageCopy, 10, 0);
        goto LABEL_18;
      }

      appVPN = [v98 VPN];
      if (appVPN)
      {
        goto LABEL_124;
      }

      appVPN = [v98 appVPN];
      if (appVPN)
      {
        goto LABEL_124;
      }

      appVPN = [v98 contentFilter];
      if (appVPN)
      {
        goto LABEL_124;
      }

      appVPN = [v98 dnsProxy];
      if (appVPN)
      {
        goto LABEL_124;
      }

      relay = [v98 relay];
      v106 = relay == 0;

      if (v106)
      {
        v107 = ne_log_obj();
        if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
        {
          name = [v98 name];
          *v276 = 138412290;
          *&v276[4] = name;
          _os_log_error_impl(&_mh_execute_header, v107, OS_LOG_TYPE_ERROR, "Configuration type of %@ does not allow modification by app group entitled apps", v276, 0xCu);
        }

        sub_10000BA0C(NEHelperServer, messageCopy, 10, 0);
        goto LABEL_18;
      }

LABEL_125:
      if (!v98)
      {
        v136 = ne_log_obj();
        if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
        {
          v181 = objc_getProperty(self, v137, 72, 1);
          *v276 = 138412290;
          *&v276[4] = v181;
          _os_log_error_impl(&_mh_execute_header, v136, OS_LOG_TYPE_ERROR, "%@ cannot save a configuration, no configuration provided", v276, 0xCu);
        }

        sub_10000BA0C(NEHelperServer, messageCopy, 8, 0);
        goto LABEL_18;
      }

      pluginType = [v98 pluginType];
      v133 = pluginType;
      if (string)
      {
        if (!pluginType || ([pluginType isEqualToString:string] & 1) == 0)
        {
          v134 = ne_log_obj();
          if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
          {
            v186 = objc_getProperty(self, v135, 72, 1);
            *v276 = 138412802;
            *&v276[4] = v186;
            *&v276[12] = 2112;
            *&v276[14] = v133;
            *&v276[22] = 2112;
            v277 = string;
            _os_log_error_impl(&_mh_execute_header, v134, OS_LOG_TYPE_ERROR, "%@ trying to save a configuration with a bad plugin type (%@), plugin type for this client is %@", v276, 0x20u);
          }

LABEL_250:

          sub_10000BA0C(NEHelperServer, messageCopy, 10, 0);
          goto LABEL_18;
        }
      }

      else if (!pluginType)
      {
        v236 = 1;
        goto LABEL_154;
      }

      if (!self->_hasProviderPermission)
      {
        v134 = ne_log_obj();
        if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
        {
          v201 = objc_getProperty(self, v139, 72, 1);
          *v276 = 138412290;
          *&v276[4] = v201;
          _os_log_error_impl(&_mh_execute_header, v134, OS_LOG_TYPE_ERROR, "%@ is not allowed to save provider-based configurations", v276, 0xCu);
        }

        goto LABEL_250;
      }

      v236 = 0;
LABEL_154:
      contentFilter = [v98 contentFilter];
      v144 = contentFilter == 0;

      if (v144)
      {
        goto LABEL_168;
      }

      v146 = objc_getProperty(self, v145, 48, 1);
      v147 = sub_10001438C(NEHelperConfigurationManager, v146);
      self->_isCurrentAllowedContentFilterApp = v147;
      if (v147)
      {
        goto LABEL_168;
      }

      if (!v103 && !self->_isDevelopment && objc_getProperty(self, v148, 48, 1))
      {
        v149 = ne_log_obj();
        if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
        {
          v217 = objc_getProperty(self, v150, 72, 1);
          v219 = objc_getProperty(self, v218, 72, 1);
          *v276 = 138412546;
          *&v276[4] = v217;
          *&v276[12] = 2112;
          *&v276[14] = v219;
          _os_log_error_impl(&_mh_execute_header, v149, OS_LOG_TYPE_ERROR, "%@ trying to create a content filter configuration through an app. Creating a content filter configuration is only allowed through profile in production version of %@.", v276, 0x16u);
        }

        sub_10000BA0C(NEHelperServer, messageCopy, 10, 0);
        goto LABEL_18;
      }

      if (!objc_opt_class() || (+[MCProfileConnection sharedConnection](MCProfileConnection, "sharedConnection"), v151 = objc_claimAutoreleasedReturnValue(), v152 = [v151 isSupervised], v151, (v152 & 1) == 0))
      {
        externalIdentifier = [v98 externalIdentifier];
        v154 = externalIdentifier == 0;

        if (v154)
        {
          if (!self->_isDevelopment || !objc_getProperty(self, v155, 48, 1))
          {
            v134 = ne_log_obj();
            if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
            {
              v216 = objc_getProperty(self, v187, 72, 1);
              *v276 = 138412290;
              *&v276[4] = v216;
              _os_log_error_impl(&_mh_execute_header, v134, OS_LOG_TYPE_ERROR, "%@ trying to save a content filter configuration on an unsupervised device", v276, 0xCu);
            }

            goto LABEL_250;
          }

          v184 = ne_log_obj();
          if (os_log_type_enabled(v184, OS_LOG_TYPE_ERROR))
          {
            v224 = objc_getProperty(self, v185, 72, 1);
            v226 = objc_getProperty(self, v225, 72, 1);
            *v276 = 138412546;
            *&v276[4] = v224;
            *&v276[12] = 2112;
            *&v276[14] = v226;
            _os_log_error_impl(&_mh_execute_header, v184, OS_LOG_TYPE_ERROR, "Warning: allowing creation/modification of a content filter configuration on non-supervised device because the requesting app (%@) is a development version. This will not be allowed for the production version of %@", v276, 0x16u);
          }
        }
      }

      if (self->_superEntitled || ([v98 externalIdentifier], (v156 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_msgSend(v98, "payloadInfo"), v157 = objc_claimAutoreleasedReturnValue(), v233 = objc_msgSend(v157, "profileSource") == 2, v157, v156, v233))
      {
LABEL_168:
        dnsProxy = [v98 dnsProxy];
        if (dnsProxy)
        {
          v159 = [v98 grade] == 2;

          if (!v159)
          {
            payloadInfo = [v98 payloadInfo];
            v161 = payloadInfo == 0;

            if (v161)
            {
              if (!self->_isDevelopment && !self->_platformEntitled)
              {
                v134 = ne_log_obj();
                if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
                {
                  v221 = objc_getProperty(self, v210, 72, 1);
                  v223 = objc_getProperty(self, v222, 72, 1);
                  *v276 = 138412546;
                  *&v276[4] = v221;
                  *&v276[12] = 2112;
                  *&v276[14] = v223;
                  _os_log_error_impl(&_mh_execute_header, v134, OS_LOG_TYPE_ERROR, "The production version of %@ is not allowed to create DNS proxy configurations. Use MDM to create DNS Proxy configurations for the production version of %@.", v276, 0x16u);
                }

                goto LABEL_250;
              }
            }

            else if (!v103)
            {
              if (!self->_platformEntitled || ([v98 payloadInfo], v162 = objc_claimAutoreleasedReturnValue(), v163 = objc_msgSend(v162, "profileSource") == 2, v162, !v163))
              {
                v164 = ne_log_obj();
                if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
                {
                  *v276 = 0;
                  _os_log_error_impl(&_mh_execute_header, v164, OS_LOG_TYPE_ERROR, "DNS Proxy configurations can only be created via MDM", v276, 2u);
                }

                sub_10000BA0C(NEHelperServer, messageCopy, 21, 0);
                goto LABEL_18;
              }
            }
          }
        }

        dnsSettings = [v98 dnsSettings];
        if (dnsSettings)
        {
          v170 = [v98 grade] == 1;

          if (v170)
          {
            if (objc_getProperty(self, v168, 48, 1))
            {
              v134 = ne_log_obj();
              if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
              {
                v214 = objc_getProperty(self, v171, 72, 1);
                *v276 = 138412290;
                *&v276[4] = v214;
                _os_log_error_impl(&_mh_execute_header, v134, OS_LOG_TYPE_ERROR, "%@ trying to create an enterprise DNS Settings configuration through an app. Creating an enterprise DNS Settings configuration is only allowed through profile.", v276, 0xCu);
              }

              goto LABEL_250;
            }
          }
        }

        if (objc_getProperty(self, v168, 48, 1))
        {
          [v98 setApplicationIdentifier:{objc_getProperty(self, v172, 48, 1)}];
          [v98 setApplication:{objc_getProperty(self, v173, 48, 1)}];
          v175 = [NELaunchServices bundleProxyForIdentifier:objc_getProperty(self uid:v174 plugins:48, 1), self->_userUID, 0];
          v176 = v175;
          if (v175)
          {
            name2 = [v175 name];
            [v98 setApplicationName:name2];
          }
        }

        if (self->_superEntitled)
        {
LABEL_224:
          if (self->_superEntitled)
          {
            goto LABEL_227;
          }

          dnsSettings2 = [v98 dnsSettings];
          if (dnsSettings2)
          {

            goto LABEL_227;
          }

          contentFilter2 = [v98 contentFilter];
          if (contentFilter2)
          {
            v196 = string != 0;
          }

          else
          {
            v196 = 0;
          }

          if (!v196)
          {
            urlFilter = [v98 urlFilter];
            v199 = urlFilter;
            v200 = string == 0;
            if (!urlFilter)
            {
              v200 = 1;
            }

            if (v200)
            {
              v211 = objc_getProperty(self, v198, 48, 1);
              v212 = v236;
              if (!v211)
              {
                v212 = 1;
              }

              if (v212)
              {
                v213 = v211 == 0;
              }

              else
              {
                v213 = [NETunnelProviderProtocol isLegacyPluginType:v133];
              }

              if (v213)
              {
LABEL_227:
                if ((v236 & 1) == 0)
                {
                  appVPN2 = [v98 appVPN];
                  if (appVPN2 || ([v98 contentFilter], (appVPN2 = objc_claimAutoreleasedReturnValue()) != 0))
                  {
                  }

                  else
                  {
                    dnsProxy2 = [v98 dnsProxy];
                    v205 = dnsProxy2 == 0;

                    if (v205)
                    {
                      goto LABEL_232;
                    }
                  }

                  sub_100014540(NEHelperConfigurationManager, v133, v98);
                }

LABEL_232:
                v190 = +[NEConfigurationManager sharedManagerForAllUsers];
                v192 = objc_getProperty(self, v191, 56, 1);
                v194 = objc_getProperty(self, v193, 40, 1);
                v268[0] = _NSConcreteStackBlock;
                v268[1] = 3221225472;
                v268[2] = sub_1000149A8;
                v268[3] = &unk_10003D2C0;
                v269 = messageCopy;
                [v190 saveConfigurationToDisk:v98 currentSignature:v103 userUUID:v192 isUpgrade:0 completionQueue:v194 completionHandler:v268];

                goto LABEL_18;
              }

LABEL_242:
              sub_1000143FC(self, v98, v11, v103, messageCopy);

              goto LABEL_18;
            }
          }

          goto LABEL_242;
        }

        v234 = [v98 VPN];
        if (v234)
        {
          v232 = 0;
        }

        else
        {
          appVPN3 = [v98 appVPN];
          if (appVPN3)
          {
            v232 = 0;
          }

          else
          {
            alwaysOnVPN = [v98 alwaysOnVPN];
            if (!alwaysOnVPN)
            {
              goto LABEL_224;
            }

            appVPN3 = 0;
            v232 = 1;
          }
        }

        payloadInfo2 = [v98 payloadInfo];
        if ([payloadInfo2 profileSource] == 2)
        {

          v179 = 0;
          if (v232)
          {
            goto LABEL_200;
          }
        }

        else
        {
          v180 = +[MCProfileConnection sharedConnection];
          if ([v180 isVPNCreationAllowed])
          {

            v179 = 0;
          }

          else
          {
            v229 = +[MCProfileConnection sharedConnection];
            v228 = [v229 isAppManaged:{objc_getProperty(self, v182, 80, 1)}];

            v179 = v228 ^ 1;
          }

          if (v232)
          {
LABEL_200:

            if (!v234)
            {
              goto LABEL_201;
            }

            goto LABEL_208;
          }
        }

        if (!v234)
        {
LABEL_201:

          if ((v179 & 1) == 0)
          {
            goto LABEL_224;
          }

LABEL_209:
          v134 = ne_log_obj();
          if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
          {
            v215 = objc_getProperty(self, v183, 72, 1);
            *v276 = 138412290;
            *&v276[4] = v215;
            _os_log_error_impl(&_mh_execute_header, v134, OS_LOG_TYPE_ERROR, "%@ cannot save configuration, vpn creation from app is restricted", v276, 0xCu);
          }

          goto LABEL_250;
        }

LABEL_208:

        if (!v179)
        {
          goto LABEL_224;
        }

        goto LABEL_209;
      }

      v202 = ne_log_obj();
      if (os_log_type_enabled(v202, OS_LOG_TYPE_ERROR))
      {
        v220 = objc_getProperty(self, v203, 72, 1);
        *v276 = 138412290;
        *&v276[4] = v220;
        _os_log_error_impl(&_mh_execute_header, v202, OS_LOG_TYPE_ERROR, "%@ perApp content filter configuration can only be created via MDM", v276, 0xCu);
      }

      sub_10000BA0C(NEHelperServer, messageCopy, 21, 0);
LABEL_18:

      return;
    case 4:
      if (self->_appGroupEntitled)
      {
        v78 = ne_log_obj();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          *v276 = 138412290;
          *&v276[4] = objc_getProperty(self, v79, 72, 1);
          _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "%@ is not allowed to remove configurations because it is only app group entitled", v276, 0xCu);
        }

        sub_10000BA0C(NEHelperServer, messageCopy, 10, 0);
      }

      else
      {
        uuid = xpc_dictionary_get_uuid(messageCopy, "config-identifier");
        if (!uuid)
        {
          goto LABEL_107;
        }

        v90 = [[NSUUID alloc] initWithUUIDBytes:uuid];
        v91 = ne_log_obj();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
        {
          *v276 = 138412546;
          *&v276[4] = objc_getProperty(self, v92, 72, 1);
          *&v276[12] = 2112;
          *&v276[14] = v90;
          _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_INFO, "%@ is removing configuration %@", v276, 0x16u);
        }

        v93 = +[NEConfigurationManager sharedManagerForAllUsers];
        v95 = objc_getProperty(self, v94, 40, 1);
        v264[0] = _NSConcreteStackBlock;
        v264[1] = 3221225472;
        v264[2] = sub_1000149F8;
        v264[3] = &unk_10003D310;
        v264[4] = self;
        v267 = 0;
        v265 = messageCopy;
        v266 = v90;
        v96 = v90;
        [v93 loadConfigurationWithID:v96 withCompletionQueue:v95 handler:v264];
      }

      goto LABEL_18;
    case 5:
      *v276 = 0;
      v80 = xpc_dictionary_get_data(messageCopy, "identity-reference", v276);
      v82 = objc_getProperty(self, v81, 48, 1);
      if (v82)
      {
      }

      else if (!self->_appGroupEntitled)
      {
        if (v80)
        {
          v111 = [NSData dataWithBytesNoCopy:v80 length:*v276 freeWhenDone:0];
        }

        else
        {
          v111 = 0;
        }

        v112 = [NEIdentityKeychainItem copyIdentities:v111 fromDomain:0];
        if (v112)
        {
          v113 = _CFXPCCreateXPCObjectFromCFObject();
        }

        else
        {
          v113 = 0;
        }

        v114 = 0;
LABEL_98:
        sub_10000BA0C(NEHelperServer, messageCopy, v114, v113);

        goto LABEL_18;
      }

      v111 = 0;
      v112 = 0;
      v113 = 0;
      v114 = 10;
      goto LABEL_98;
    case 6:
      if (!self->_platformEntitled)
      {
        v87 = messageCopy;
        v88 = 10;
        goto LABEL_108;
      }

      sub_100014D60(self, messageCopy);
      goto LABEL_18;
    case 7:
      if (!self->_superEntitled)
      {
        goto LABEL_107;
      }

      v63 = xpc_dictionary_get_uuid(messageCopy, "config-identifier");
      if (!v63)
      {
        goto LABEL_107;
      }

      v64 = [[NSUUID alloc] initWithUUIDBytes:v63];
      v65 = sub_100014F10(NEHelperPendingOperation, v64);
      v67 = v65;
      if (!v65 || v65[2] != 3)
      {

LABEL_107:
        v87 = messageCopy;
        v88 = 8;
        goto LABEL_108;
      }

      v68 = [objc_getProperty(v65 v66];

      if (!v68)
      {
        v140 = [objc_getProperty(v67 v69];

        if (!v140)
        {
          v141 = [objc_getProperty(v67 v141];

          if (!v141)
          {
            [objc_getProperty(v67 v166];
          }
        }
      }

      v206 = NEResourcesCopyLocalizedNSString();
      v208 = objc_getProperty(self, v207, 40, 1);
      v261[0] = _NSConcreteStackBlock;
      v261[1] = 3221225472;
      v261[2] = sub_100015048;
      v261[3] = &unk_10003D360;
      v261[4] = self;
      v262 = v67;
      v263 = messageCopy;
      v209 = v67;
      [NEUserNotification promptForLocalAuthenticationWithReason:v206 completionQueue:v208 completionHandler:v261];

      goto LABEL_18;
    case 8:
      v70 = xpc_dictionary_get_string(messageCopy, "client-name");
      if (v70)
      {
        v71 = sub_1000016DC();
        v72 = [NSString stringWithUTF8String:v70];
        v73 = sub_10000E1B0(v71, v72);

        *v276 = 0;
        *&v276[8] = v276;
        *&v276[16] = 0x3032000000;
        v277 = sub_1000151DC;
        v278 = sub_100015208;
        v279 = 0;
        v257[0] = _NSConcreteStackBlock;
        v257[1] = 3221225472;
        v257[2] = sub_100015210;
        v257[3] = &unk_10003D3B0;
        selfCopy = self;
        v260 = v276;
        v258 = messageCopy;
        v74 = objc_retainBlock(v257);
        v75 = objc_retainBlock(v74);
        v76 = *(*&v276[8] + 40);
        *(*&v276[8] + 40) = v75;

        (v74[2])(v74, v73, 0);
        _Block_object_dispose(v276, 8);
      }

      else
      {
        v87 = messageCopy;
        v88 = 22;
LABEL_108:
        sub_10000BA0C(NEHelperServer, v87, v88, 0);
      }

      goto LABEL_18;
    case 9:
      v83 = xpc_dictionary_get_string(messageCopy, "config-plugin-type");
      if (v83)
      {
        v84 = [NSString stringWithUTF8String:v83];
        v85 = sub_1000153AC(v84);

        if (isa_nsdictionary())
        {
          v86 = _CFXPCCreateXPCObjectFromCFObject();
        }

        else
        {
          v86 = 0;
        }
      }

      else
      {
        v86 = 0;
      }

      sub_10000BA0C(NEHelperServer, messageCopy, 0, v86);

      goto LABEL_18;
    case 11:
      sub_100014E38(self, messageCopy);
      goto LABEL_18;
    case 13:
      v22 = xpc_dictionary_get_value(messageCopy, "config-ids");
      v23 = +[NEConfigurationManager sharedManagerForAllUsers];
      v25 = objc_getProperty(self, v24, 40, 1);
      v247[0] = _NSConcreteStackBlock;
      v247[1] = 3221225472;
      v247[2] = sub_10001612C;
      v247[3] = &unk_10003D4C8;
      v248 = messageCopy;
      [v23 syncConfigurationsWithSC:v22 completionQueue:v25 completionHandler:v247];

      goto LABEL_18;
    case 14:
      v39 = xpc_dictionary_get_uuid(messageCopy, "config-identifier");
      if (v39)
      {
        v40 = v39;
        v41 = xpc_dictionary_get_BOOL(messageCopy, "enabled");
        v42 = [[NSUUID alloc] initWithUUIDBytes:v40];
        v43 = +[NEConfigurationManager sharedManagerForAllUsers];
        v45 = objc_getProperty(self, v44, 40, 1);
        v242[0] = _NSConcreteStackBlock;
        v242[1] = 3221225472;
        v242[2] = sub_100016148;
        v242[3] = &unk_10003D518;
        v243 = v42;
        v244 = messageCopy;
        selfCopy2 = self;
        v246 = v41;
        v46 = v42;
        [v43 loadIndexWithFilter:v11 completionQueue:v45 handler:v242];

        goto LABEL_18;
      }

      v110 = ne_log_obj();
      if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
      {
        *v276 = 0;
        _os_log_error_impl(&_mh_execute_header, v110, OS_LOG_TYPE_ERROR, "Invalid configuration ID", v276, 2u);
      }

      goto LABEL_90;
    case 15:
      v26 = xpc_dictionary_get_string(messageCopy, "app-bundle-id");
      v27 = xpc_dictionary_get_BOOL(messageCopy, "enable-required");
      if (v26)
      {
        v28 = v27;
        v29 = [NSString stringWithUTF8String:v26];
        v30 = +[NEConfigurationManager sharedManagerForAllUsers];
        v32 = objc_getProperty(self, v31, 40, 1);
        v237[0] = _NSConcreteStackBlock;
        v237[1] = 3221225472;
        v237[2] = sub_100016350;
        v237[3] = &unk_10003D540;
        v241 = v28;
        v238 = v29;
        selfCopy3 = self;
        v240 = messageCopy;
        v33 = v29;
        [v30 loadConfigurations:0 withFilter:0 completionQueue:v32 completionHandler:v237];
      }

      else
      {
        v110 = ne_log_obj();
        if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
        {
          *v276 = 0;
          _os_log_error_impl(&_mh_execute_header, v110, OS_LOG_TYPE_ERROR, "Failed to check config, invalid bundle ID", v276, 2u);
        }

LABEL_90:

        sub_10000BA0C(NEHelperServer, messageCopy, 22, 0);
      }

      goto LABEL_18;
    case 16:
      v19 = xpc_dictionary_get_string(messageCopy, "bundle-id");
      v20 = xpc_dictionary_get_int64(messageCopy, "pid");
      v21 = xpc_dictionary_get_uuid(messageCopy, "uuid");
      if (v21)
      {
        v235 = [[NSUUID alloc] initWithUUIDBytes:v21];
      }

      else
      {
        v235 = 0;
      }

      if (!v19 && !v20)
      {
        v108 = ne_log_obj();
        if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
        {
          *v276 = 0;
          _os_log_error_impl(&_mh_execute_header, v108, OS_LOG_TYPE_ERROR, "Failed to get bundle ID or PID from message", v276, 2u);
        }

LABEL_82:

        sub_10000BA0C(NEHelperServer, messageCopy, 22, 0);
        goto LABEL_119;
      }

      if (v19)
      {
        v109 = [NSString stringWithUTF8String:v19];
        if (!v109)
        {
          v108 = ne_log_obj();
          if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
          {
            *v276 = 136315138;
            *&v276[4] = v19;
            _os_log_error_impl(&_mh_execute_header, v108, OS_LOG_TYPE_ERROR, "Failed to convert BundleID for message (bundle_id: %s)", v276, 0xCu);
          }

          goto LABEL_82;
        }
      }

      else
      {
        v109 = 0;
      }

      v117 = xpc_dictionary_get_string(messageCopy, "query");
      if (v117)
      {
        v118 = v117;
        v119 = [NSString stringWithUTF8String:v117];
        if (v119)
        {
          goto LABEL_118;
        }

        v120 = ne_log_obj();
        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
        {
          *v276 = 136315138;
          *&v276[4] = v118;
          v121 = "Failed to convert query (query_string: %s)";
          v122 = v120;
          v123 = 12;
LABEL_180:
          _os_log_debug_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEBUG, v121, v276, v123);
        }
      }

      else
      {
        v120 = ne_log_obj();
        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
        {
          *v276 = 0;
          v121 = "No query string in message";
          v122 = v120;
          v123 = 2;
          goto LABEL_180;
        }
      }

      v119 = 0;
LABEL_118:
      v124 = xpc_dictionary_get_BOOL(messageCopy, "has-entitlement");
      v125 = sub_1000155F4();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001564C;
      block[3] = &unk_10003D4A0;
      v250 = v109;
      v251 = messageCopy;
      selfCopy4 = self;
      v255 = v20;
      v253 = v235;
      v254 = v119;
      v256 = v124;
      v126 = v119;
      v127 = v109;
      dispatch_async(v125, block);

LABEL_119:
      goto LABEL_18;
    case 17:
      v77 = xpc_dictionary_get_BOOL(messageCopy, "reset-all");
      sub_1000154E4(NEHelperConfigurationManager, v77, 0, 0);
      goto LABEL_18;
    default:
      goto LABEL_18;
  }
}

- (OS_dispatch_queue)handlerQueue
{
  if (self)
  {
    self = objc_getProperty(self, a2, 40, 1);
    v2 = vars8;
  }

  return self;
}

- (NEHelperConfigurationManager)initWithFirstMessage:(id)message
{
  messageCopy = message;
  v86.receiver = self;
  v86.super_class = NEHelperConfigurationManager;
  v5 = [(NEHelperConfigurationManager *)&v86 init];
  if (!v5)
  {
LABEL_86:
    v37 = v5;
    goto LABEL_87;
  }

  v6 = xpc_dictionary_get_remote_connection(messageCopy);
  pid = xpc_connection_get_pid(v6);
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("NEHelperConfigurationManager", v8);
  queue = v5->_queue;
  v5->_queue = v9;

  *&v5->_entitled = 0;
  v5->_netExtensionEntitlement = 0;
  v11 = NECopyUserUUIDFromXPCEUID();
  userUUID = v5->_userUUID;
  v5->_userUUID = v11;

  v5->_userUID = xpc_connection_get_euid(v6);
  v5->_hasProviderPermission = 0;
  v13 = NECopySigningIdentifierForXPCMessage();
  bundleID = v5->_bundleID;
  v5->_bundleID = v13;

  v15 = xpc_dictionary_get_value(messageCopy, "preferred-languages");
  v16 = v15;
  if (v15 && xpc_get_type(v15) == &_xpc_type_array && xpc_array_get_count(v16))
  {
    v17 = _CFXPCCreateCFObjectFromXPCObject();
    NEResourcesSetPreferredLanguages();
  }

  if (v5->_bundleID)
  {
    if (xpc_connection_is_extension())
    {
      v18 = v5->_bundleID;
      if (v18)
      {
        v19 = v18;
        v20 = ne_log_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v88 = v19;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Client is an extension with bundle identifier %@", buf, 0xCu);
        }

        v21 = [LSPlugInKitProxy pluginKitProxyForIdentifier:v19];
        containingBundle = [v21 containingBundle];
        bundleIdentifier = [containingBundle bundleIdentifier];
        v24 = v5->_bundleID;
        v5->_bundleID = bundleIdentifier;

        v25 = ne_log_obj();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = v5->_bundleID;
          *buf = 138412290;
          v88 = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Containing app for extension is %@", buf, 0xCu);
        }
      }
    }

    if (proc_name(pid, buffer, 0x40u) <= 0)
    {
      snprintf(buffer, 0x40uLL, "%d", pid);
    }

    v27 = [NSString stringWithUTF8String:buffer];
    clientName = v5->_clientName;
    v5->_clientName = v27;

    v29 = xpc_connection_copy_entitlement_value();
    v30 = v29;
    if (v29)
    {
      if (xpc_get_type(v29) == &_xpc_type_array)
      {
        if (xpc_array_get_count(v30))
        {
          string = xpc_array_get_string(v30, 0);
          if (string)
          {
            v47 = string;
            v48 = strlen(string);
            if (!strncmp(v47, "allow-vpn", v48))
            {
              objc_storeStrong(&v5->_applicationID, v5->_bundleID);
              v5->_entitled = 1;
            }
          }
        }
      }
    }

    v31 = xpc_connection_copy_entitlement_value();

    if (v31 && xpc_get_type(v31) == &_xpc_type_array && xpc_array_get_count(v31))
    {
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v49 = _CFXPCCreateCFObjectFromXPCObject();
      v50 = [v49 countByEnumeratingWithState:&v82 objects:v98 count:16];
      v32 = v49;
      if (v50)
      {
        v51 = v50;
        v52 = *v83;
        while (2)
        {
          for (i = 0; i != v51; i = i + 1)
          {
            if (*v83 != v52)
            {
              objc_enumerationMutation(v49);
            }

            v54 = *(*(&v82 + 1) + 8 * i);
            if ((isa_nsstring() & 1) == 0)
            {

              v32 = 0;
              goto LABEL_56;
            }
          }

          v51 = [v49 countByEnumeratingWithState:&v82 objects:v98 count:16];
          if (v51)
          {
            continue;
          }

          break;
        }

        v32 = v49;
      }

LABEL_56:
    }

    else
    {
      v32 = 0;
    }

    v33 = xpc_connection_copy_entitlement_value();

    v34 = NEGetEntitlement();
    v77 = v32;
    if (v34)
    {
      v35 = v34;
      objc_storeStrong(&v5->_applicationID, v5->_bundleID);
      v5->_entitled = 1;
      v5->_netExtensionEntitlement = v35;
      v5->_hasProviderPermission = 1;
      if ((v35 & 4) != 0)
      {
        v5->_isCurrentAllowedContentFilterApp = sub_10001438C(NEHelperConfigurationManager, v5->_applicationID);
      }

      if (xpc_connection_is_extension())
      {
        v5->_appGroupEntitled = 1;
      }

      else
      {
        objc_storeStrong(&v5->_appGroups, v32);
      }
    }

    else if (!v5->_entitled && [v32 count])
    {
      v38 = +[NEConfigurationManager sharedManagerForAllUsers];
      v39 = [v38 copyAppGroupMapDidChange:0];

      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v40 = v32;
      v41 = [v40 countByEnumeratingWithState:&v78 objects:v97 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v79;
        while (2)
        {
          for (j = 0; j != v42; j = j + 1)
          {
            if (*v79 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = [v39 objectForKeyedSubscript:*(*(&v78 + 1) + 8 * j)];
            if (v45)
            {
              applicationID = v5->_applicationID;
              v5->_applicationID = v45;

              v5->_entitled = 1;
              v5->_hasProviderPermission = 1;
              v5->_appGroupEntitled = 1;
              goto LABEL_58;
            }
          }

          v42 = [v40 countByEnumeratingWithState:&v78 objects:v97 count:16];
          if (v42)
          {
            continue;
          }

          break;
        }
      }

LABEL_58:
    }

    v56 = xpc_connection_copy_entitlement_value();
    v57 = v56;
    if (v56)
    {
      v5->_entitled = 1;
      v5->_hasProviderPermission = 1;
      v5->_platformEntitled = 1;
      if (xpc_get_type(v56) == &_xpc_type_string)
      {
        string_ptr = xpc_string_get_string_ptr(v57);
        if (!strcmp(string_ptr, "super"))
        {
          v5->_superEntitled = 1;
        }
      }

      if (xpc_dictionary_get_BOOL(messageCopy, "no-app-filter"))
      {
        v59 = v5->_applicationID;
        v5->_applicationID = 0;
      }

      v5->_appGroupEntitled = 0;
    }

    v60 = xpc_connection_copy_entitlement_value();
    v61 = v60;
    if (v60 && xpc_get_type(v60) == &_xpc_type_BOOL && xpc_BOOL_get_value(v61))
    {
      v5->_spiEntitled = 1;
    }

    v62 = xpc_connection_copy_entitlement_value();
    v63 = v62;
    v64 = v62 && xpc_get_type(v62) == &_xpc_type_BOOL && xpc_BOOL_get_value(v63);
    v5->_isDevelopment = v64;
    v65 = xpc_connection_copy_entitlement_value();
    v66 = v65;
    if (v65 && xpc_get_type(v65) == &_xpc_type_BOOL && xpc_BOOL_get_value(v66))
    {
      v5->_isTestClient = 1;
    }

    v67 = objc_alloc_init(NSMutableDictionary);
    filter = v5->_filter;
    v5->_filter = v67;

    if (!xpc_dictionary_get_BOOL(messageCopy, "no-app-filter"))
    {
      [(NSMutableDictionary *)v5->_filter setObject:v5->_userUUID forKeyedSubscript:@"user-uuid"];
    }

    v69 = v5->_applicationID;
    if (v69)
    {
      [(NSMutableDictionary *)v5->_filter setObject:v69 forKeyedSubscript:@"application-id"];
    }

    v70 = ne_log_obj();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      v71 = v5->_clientName;
      v72 = v5->_bundleID;
      v73 = v5->_applicationID;
      entitled = v5->_entitled;
      hasProviderPermission = v5->_hasProviderPermission;
      *buf = 138413314;
      v88 = v71;
      v89 = 2112;
      v90 = v72;
      v91 = 2112;
      v92 = v73;
      v93 = 1024;
      v94 = entitled;
      v95 = 1024;
      v96 = hasProviderPermission;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "Created a new configuration delegate with name = %@, bundleID = %@, applicationID = %@, entitled = %d, hasProviderPermission = %d", buf, 0x2Cu);
    }

    goto LABEL_86;
  }

  v36 = ne_log_obj();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Operation failed, client is not signed", buf, 2u);
  }

  v37 = 0;
LABEL_87:

  return v37;
}

@end