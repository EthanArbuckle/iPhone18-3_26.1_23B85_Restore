void sub_1000291A4(uint64_t a1, int a2)
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) vendor];
    v6 = v5;
    v7 = @"failed";
    if (a2)
    {
      v7 = @"succeeded";
    }

    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Token fetch for Proxied Content[%@] %@", &v8, 0x16u);
  }
}

void sub_10002928C(uint64_t a1, int a2)
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) vendor];
    v6 = v5;
    v7 = @"failed";
    if (a2)
    {
      v7 = @"succeeded";
    }

    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Token fetch for Proxied Content[%@] %@", &v8, 0x16u);
  }
}

void sub_100029374(id *a1)
{
  if (a1)
  {
    v2 = a1[17];

    if (v2)
    {
      v3 = a1[43];

      if (!v3)
      {
        v4 = objc_alloc_init(NSMutableArray);
        v5 = a1[43];
        a1[43] = v4;
      }

      v291 = 0u;
      v290 = 0u;
      v289 = 0u;
      v288 = 0u;
      v6 = a1[43];
      v7 = [v6 countByEnumeratingWithState:&v288 objects:v313 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v289;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v289 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [*(*(&v288 + 1) + 8 * i) setDelegate:a1];
          }

          v8 = [v6 countByEnumeratingWithState:&v288 objects:v313 count:16];
        }

        while (v8);
      }

      v11 = objc_alloc_init(NSMutableSet);
      v175 = objc_alloc_init(NSMutableDictionary);
      v284 = 0u;
      v285 = 0u;
      v286 = 0u;
      v287 = 0u;
      v181 = a1;
      v12 = a1[17];
      v13 = [v12 countByEnumeratingWithState:&v284 objects:v312 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v285;
        do
        {
          for (j = 0; j != v14; j = j + 1)
          {
            if (*v285 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v284 + 1) + 8 * j);
            v280 = 0u;
            v281 = 0u;
            v282 = 0u;
            v283 = 0u;
            v18 = [v17 obliviousTargets];
            v19 = [v18 countByEnumeratingWithState:&v280 objects:v311 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v281;
              do
              {
                for (k = 0; k != v20; k = k + 1)
                {
                  if (*v281 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v23 = [*(*(&v280 + 1) + 8 * k) targetHost];
                  [v11 addObject:v23];
                }

                v20 = [v18 countByEnumeratingWithState:&v280 objects:v311 count:16];
              }

              while (v20);
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v284 objects:v312 count:16];
        }

        while (v14);
      }

      v278 = 0u;
      v279 = 0u;
      v276 = 0u;
      v277 = 0u;
      obj = v11;
      v24 = v181;
      v168 = [obj countByEnumeratingWithState:&v276 objects:v310 count:16];
      if (v168)
      {
        v25 = NEPolicySession_ptr;
        v167 = *v277;
        do
        {
          v26 = 0;
          do
          {
            if (*v277 != v167)
            {
              v27 = v26;
              objc_enumerationMutation(obj);
              v26 = v27;
            }

            v169 = v26;
            v28 = *(*(&v276 + 1) + 8 * v26);
            v272 = 0u;
            v273 = 0u;
            v274 = 0u;
            v275 = 0u;
            v29 = v24[17];
            v205 = v28;
            v185 = [v29 countByEnumeratingWithState:&v272 objects:v309 count:16];
            if (v185)
            {
              v202 = 0;
              v30 = *v273;
              v193 = v29;
              v182 = *v273;
              do
              {
                v31 = 0;
                do
                {
                  if (*v273 != v30)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v189 = v31;
                  v32 = *(*(&v272 + 1) + 8 * v31);
                  v268 = 0u;
                  v269 = 0u;
                  v270 = 0u;
                  v271 = 0u;
                  v213 = [v32 obliviousTargets];
                  v33 = [v213 countByEnumeratingWithState:&v268 objects:v308 count:16];
                  if (v33)
                  {
                    v34 = v33;
                    v35 = *v269;
                    v197 = *v269;
                    while (2)
                    {
                      v36 = 0;
                      v208 = v34;
                      do
                      {
                        if (*v269 != v35)
                        {
                          objc_enumerationMutation(v213);
                        }

                        v37 = *(*(&v268 + 1) + 8 * v36);
                        v38 = [v37 targetHost];
                        v39 = [v38 isEqualToString:v28];

                        if (v39)
                        {
                          v40 = [v24 overridePreferredObliviousProxy];
                          if (v40)
                          {
                            v41 = v40;
                            v42 = v24;
                            v43 = [v37 proxyIndex];
                            v44 = v42[11];
                            if ([v44 count] <= v43)
                            {

                              v24 = v42;
                              v28 = v205;
                            }

                            else
                            {
                              v45 = [v42 overridePreferredObliviousProxy];
                              v46 = v42[11];
                              v47 = [v46 objectAtIndex:{objc_msgSend(v37, "proxyIndex")}];
                              v48 = [v47 proxyURL];
                              v49 = [v45 isEqualToString:v48];

                              v25 = NEPolicySession_ptr;
                              v24 = v42;
                              v28 = v205;
                              if (v49)
                              {
                                [v175 setObject:v37 forKeyedSubscript:v205];
                                v53 = nplog_obj();
                                if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
                                {
                                  *buf = 138412546;
                                  v305 = v37;
                                  v306 = 2112;
                                  v307 = v205;
                                  _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "Selected preferred oblivious target config %@ for %@", buf, 0x16u);
                                }

                                goto LABEL_122;
                              }
                            }
                          }

                          v50 = v24[18];
                          v51 = [v25[30] numberWithUnsignedInt:{objc_msgSend(v37, "proxyIndex")}];
                          v52 = [v50 containsObject:v51];

                          v202 |= v52 ^ 1;
                          v35 = v197;
                          v34 = v208;
                        }

                        v36 = v36 + 1;
                      }

                      while (v34 != v36);
                      v34 = [v213 countByEnumeratingWithState:&v268 objects:v308 count:16];
                      if (v34)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v31 = v189 + 1;
                  v29 = v193;
                  v30 = v182;
                }

                while ((v189 + 1) != v185);
                v185 = [v193 countByEnumeratingWithState:&v272 objects:v309 count:16];
              }

              while (v185);
            }

            else
            {
              v202 = 0;
            }

            v266 = 0u;
            v267 = 0u;
            v264 = 0u;
            v265 = 0u;
            v55 = v24[17];
            v173 = [v55 countByEnumeratingWithState:&v264 objects:v303 count:16];
            if (v173)
            {
              v183 = 0;
              v198 = 0;
              v170 = *v265;
              v171 = v55;
              do
              {
                v56 = 0;
                do
                {
                  if (*v265 != v170)
                  {
                    objc_enumerationMutation(v55);
                  }

                  v178 = v56;
                  v57 = *(*(&v264 + 1) + 8 * v56);
                  v260 = 0u;
                  v261 = 0u;
                  v262 = 0u;
                  v263 = 0u;
                  v194 = v57;
                  v214 = [v57 obliviousTargets];
                  v58 = [v214 countByEnumeratingWithState:&v260 objects:v302 count:16];
                  if (v58)
                  {
                    v59 = v58;
                    v60 = *v261;
                    v209 = *v261;
                    do
                    {
                      for (m = 0; m != v59; m = m + 1)
                      {
                        if (*v261 != v60)
                        {
                          objc_enumerationMutation(v214);
                        }

                        v62 = *(*(&v260 + 1) + 8 * m);
                        v63 = [v62 targetHost];
                        v64 = [v63 isEqualToString:v28];

                        if (v64)
                        {
                          if (_os_feature_enabled_impl() && [v194 obliviousHTTPType] == 2 && (WeakRetained = objc_loadWeakRetained(v24 + 10), v66 = objc_msgSend(WeakRetained, "usesDefaultConfigurationServer"), WeakRetained, v66))
                          {
                            v67 = [v62 proxyIndex];
                            v68 = v24[11];
                            v69 = [v68 count];

                            if (v69 <= v67)
                            {
                              v74 = 0;
                            }

                            else
                            {
                              v70 = v24[11];
                              v71 = [v70 objectAtIndex:{objc_msgSend(v62, "proxyIndex")}];

                              v190 = v71;
                              v72 = [v71 proxyURL];
                              v73 = [NSURL URLWithString:v72];

                              v186 = v73;
                              v74 = [v73 host];
                              v75 = [NSSet setWithObjects:@"cloudflare.com", @"fastly-edge.com", @"akamaized.net", 0];
                              v256 = 0u;
                              v257 = 0u;
                              v258 = 0u;
                              v259 = 0u;
                              v76 = v75;
                              v77 = [v76 countByEnumeratingWithState:&v256 objects:v301 count:16];
                              if (v77)
                              {
                                v78 = v77;
                                v79 = *v257;
                                while (2)
                                {
                                  for (n = 0; n != v78; n = n + 1)
                                  {
                                    if (*v257 != v79)
                                    {
                                      objc_enumerationMutation(v76);
                                    }

                                    v81 = *(*(&v256 + 1) + 8 * n);
                                    if (([v74 isEqualToString:v81] & 1) == 0)
                                    {
                                      v82 = [NSString stringWithFormat:@".%@", v81];
                                      v83 = [v74 hasSuffix:v82];

                                      if ((v83 & 1) == 0)
                                      {
                                        continue;
                                      }
                                    }

                                    v24 = v181;
                                    v25 = NEPolicySession_ptr;
                                    goto LABEL_87;
                                  }

                                  v78 = [v76 countByEnumeratingWithState:&v256 objects:v301 count:16];
                                  v28 = v205;
                                  v60 = v209;
                                  if (v78)
                                  {
                                    continue;
                                  }

                                  break;
                                }
                              }

                              v24 = v181;
                            }

                            v84 = nplog_obj();
                            if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 138412546;
                              v305 = v28;
                              v306 = 2112;
                              v307 = v74;
                              _os_log_error_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "Oblivious target %@ has proxy %@ not in the approved list", buf, 0x16u);
                            }

                            v183 = 1;
                            v25 = NEPolicySession_ptr;
                          }

                          else
                          {
LABEL_87:
                            v85 = v24[18];
                            v86 = [v25[30] numberWithUnsignedInt:{objc_msgSend(v62, "proxyIndex")}];
                            v87 = [v85 containsObject:v86] & v202;

                            if ((v87 & 1) == 0)
                            {
                              v198 += [v62 weight];
                            }

                            v28 = v205;
                            v60 = v209;
                          }
                        }
                      }

                      v59 = [v214 countByEnumeratingWithState:&v260 objects:v302 count:16];
                    }

                    while (v59);
                  }

                  v56 = v178 + 1;
                  v55 = v171;
                }

                while (v178 + 1 != v173);
                v173 = [v171 countByEnumeratingWithState:&v264 objects:v303 count:16];
              }

              while (v173);

              v88 = v198;
              if (((v198 == 0) & v183) != 0)
              {
                v89 = nplog_obj();
                if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v305 = v28;
                  _os_log_error_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "Oblivious target %@ has no proxies in the approved list, ignoring", buf, 0xCu);
                }

                goto LABEL_123;
              }
            }

            else
            {

              v88 = 0;
            }

            do
            {
              v90 = arc4random_uniform(v88 + 1);
              v91 = v90;
            }

            while (v88 && !v90);
            v254 = 0u;
            v255 = 0u;
            v252 = 0u;
            v253 = 0u;
            v89 = v24[17];
            v210 = [v89 countByEnumeratingWithState:&v252 objects:v300 count:16];
            if (v210)
            {
              v193 = v89;
              v92 = 0;
              v93 = *v253;
              v199 = *v253;
              do
              {
                v94 = 0;
                do
                {
                  if (*v253 != v93)
                  {
                    objc_enumerationMutation(v193);
                  }

                  v215 = v94;
                  v95 = *(*(&v252 + 1) + 8 * v94);
                  v248 = 0u;
                  v249 = 0u;
                  v250 = 0u;
                  v251 = 0u;
                  v96 = [v95 obliviousTargets];
                  v97 = [v96 countByEnumeratingWithState:&v248 objects:v299 count:16];
                  if (v97)
                  {
                    v98 = v97;
                    v99 = *v249;
                    while (2)
                    {
                      for (ii = 0; ii != v98; ii = ii + 1)
                      {
                        if (*v249 != v99)
                        {
                          objc_enumerationMutation(v96);
                        }

                        v101 = *(*(&v248 + 1) + 8 * ii);
                        v102 = [v101 targetHost];
                        v103 = [v102 isEqualToString:v205];

                        if (v103)
                        {
                          v104 = v181[18];
                          v105 = [v25[30] numberWithUnsignedInt:{objc_msgSend(v101, "proxyIndex")}];
                          v106 = [v104 containsObject:v105] & v202;

                          if (v106)
                          {
                            v25 = NEPolicySession_ptr;
                          }

                          else
                          {
                            v92 += [v101 weight];
                            v25 = NEPolicySession_ptr;
                            if (v91 <= v92)
                            {
                              [v175 setObject:v101 forKeyedSubscript:v205];
                              v107 = nplog_obj();
                              if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
                              {
                                *buf = 138412546;
                                v305 = v101;
                                v306 = 2112;
                                v307 = v205;
                                _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_INFO, "Selected oblivious target config %@ for %@", buf, 0x16u);
                              }

                              v24 = v181;
                              goto LABEL_122;
                            }
                          }
                        }
                      }

                      v98 = [v96 countByEnumeratingWithState:&v248 objects:v299 count:16];
                      if (v98)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v94 = v215 + 1;
                  v24 = v181;
                  v93 = v199;
                }

                while ((v215 + 1) != v210);
                v210 = [v193 countByEnumeratingWithState:&v252 objects:v300 count:16];
              }

              while (v210);
LABEL_122:
              v89 = v193;
            }

LABEL_123:

            v26 = v169 + 1;
          }

          while ((v169 + 1) != v168);
          v168 = [obj countByEnumeratingWithState:&v276 objects:v310 count:16];
        }

        while (v168);
      }

      v184 = objc_alloc_init(NSMutableArray);
      v244 = 0u;
      v245 = 0u;
      v246 = 0u;
      v247 = 0u;
      v172 = v24[17];
      v176 = [v172 countByEnumeratingWithState:&v244 objects:v298 count:16];
      if (v176)
      {
        v174 = *v245;
        do
        {
          v108 = 0;
          do
          {
            if (*v245 != v174)
            {
              objc_enumerationMutation(v172);
            }

            v179 = v108;
            v109 = *(*(&v244 + 1) + 8 * v108);
            v240 = 0u;
            v241 = 0u;
            v242 = 0u;
            v243 = 0u;
            v187 = [v109 obliviousTargets];
            v211 = [v187 countByEnumeratingWithState:&v240 objects:v297 count:16];
            if (v211)
            {
              v206 = *v241;
              do
              {
                v110 = 0;
                do
                {
                  if (*v241 != v206)
                  {
                    objc_enumerationMutation(v187);
                  }

                  v216 = v110;
                  v111 = *(*(&v240 + 1) + 8 * v110);
                  v236 = 0u;
                  v237 = 0u;
                  v238 = 0u;
                  v239 = 0u;
                  v112 = v181[43];
                  v113 = [v112 countByEnumeratingWithState:&v236 objects:v296 count:16];
                  if (v113)
                  {
                    v114 = v113;
                    v115 = *v237;
                    do
                    {
                      for (jj = 0; jj != v114; jj = jj + 1)
                      {
                        if (*v237 != v115)
                        {
                          objc_enumerationMutation(v112);
                        }

                        v117 = *(*(&v236 + 1) + 8 * jj);
                        v118 = [v117 obliviousConfig];
                        v119 = [v109 obliviousHTTPConfig];
                        if ([v118 isEqualToData:v119])
                        {
                          v120 = [v117 obliviousTarget];
                          v121 = [v120 isEqual:v111];

                          if (v121)
                          {
                            goto LABEL_149;
                          }
                        }

                        else
                        {
                        }
                      }

                      v114 = [v112 countByEnumeratingWithState:&v236 objects:v296 count:16];
                    }

                    while (v114);
                  }

                  v122 = [v111 targetHost];
                  v112 = [v175 objectForKeyedSubscript:v122];

                  if (!v112 || [v112 isEqual:v111])
                  {
                    v123 = v181[11];
                    v203 = [v123 objectAtIndex:{objc_msgSend(v111, "proxyIndex")}];

                    v200 = sub_100025A90(v181, v203);
                    v195 = [NSPObliviousPath alloc];
                    v191 = [v109 obliviousHTTPConfig];
                    v124 = [v109 obliviousHTTPType];
                    v125 = [v109 transparencyKeyBundle];
                    v126 = [v109 transparencyProof];
                    v127 = v181[46];
                    v128 = [NPUtilities copyCurrentNetworkCharacteristicsForPath:v127];
                    LOBYTE(v165) = 0;
                    v129 = [(NSPObliviousPath *)v195 initWithDelegate:v181 obliviousConfig:v191 obliviousHTTPType:v124 transparencyKeyBundle:v125 transparencyProof:v126 obliviousTarget:v111 proxyInfo:v200 allowFailOpen:v165 networkCharacteristics:v128];

                    [v184 addObject:v129];
                  }

LABEL_149:

                  v110 = v216 + 1;
                  v24 = v181;
                }

                while ((v216 + 1) != v211);
                v211 = [v187 countByEnumeratingWithState:&v240 objects:v297 count:16];
              }

              while (v211);
            }

            v108 = v179 + 1;
          }

          while (v179 + 1 != v176);
          v176 = [v172 countByEnumeratingWithState:&v244 objects:v298 count:16];
        }

        while (v176);
      }

      v130 = v24[43];
      [v130 addObjectsFromArray:v184];

      v177 = objc_alloc_init(NSMutableArray);
      v232 = 0u;
      v233 = 0u;
      v234 = 0u;
      v235 = 0u;
      v180 = v24[43];
      v192 = [v180 countByEnumeratingWithState:&v232 objects:v295 count:16];
      if (v192)
      {
        v188 = *v233;
        do
        {
          v131 = 0;
          do
          {
            if (*v233 != v188)
            {
              objc_enumerationMutation(v180);
            }

            v212 = v131;
            v132 = *(*(&v232 + 1) + 8 * v131);
            v228 = 0u;
            v229 = 0u;
            v230 = 0u;
            v231 = 0u;
            v133 = v24[17];
            v201 = [v133 countByEnumeratingWithState:&v228 objects:v294 count:16];
            if (v201)
            {
              v134 = *v229;
              v207 = v133;
              v196 = *v229;
              do
              {
                v135 = 0;
                do
                {
                  if (*v229 != v134)
                  {
                    objc_enumerationMutation(v133);
                  }

                  v204 = v135;
                  v136 = *(*(&v228 + 1) + 8 * v135);
                  v224 = 0u;
                  v225 = 0u;
                  v226 = 0u;
                  v227 = 0u;
                  v217 = [v136 obliviousTargets];
                  v137 = [v217 countByEnumeratingWithState:&v224 objects:v293 count:16];
                  if (v137)
                  {
                    v138 = v137;
                    v139 = *v225;
                    do
                    {
                      for (kk = 0; kk != v138; kk = kk + 1)
                      {
                        if (*v225 != v139)
                        {
                          objc_enumerationMutation(v217);
                        }

                        v141 = *(*(&v224 + 1) + 8 * kk);
                        v142 = [v136 obliviousHTTPConfig];
                        v143 = [v132 obliviousConfig];
                        if ([v142 isEqualToData:v143])
                        {
                          v144 = [v132 obliviousTarget];
                          v145 = [v141 isEqual:v144];

                          if (v145)
                          {
                            v146 = [v141 targetHost];
                            v147 = [v175 objectForKeyedSubscript:v146];

                            if (v147)
                            {
                              v148 = [v147 isEqual:v141];

                              if (v148)
                              {

                                v24 = v181;
                                goto LABEL_179;
                              }
                            }
                          }
                        }

                        else
                        {
                        }
                      }

                      v138 = [v217 countByEnumeratingWithState:&v224 objects:v293 count:16];
                    }

                    while (v138);
                  }

                  v135 = v204 + 1;
                  v24 = v181;
                  v133 = v207;
                  v134 = v196;
                }

                while ((v204 + 1) != v201);
                v201 = [v207 countByEnumeratingWithState:&v228 objects:v294 count:16];
              }

              while (v201);
            }

            [v132 removeProxyAgents];
            [v177 addObject:v132];
LABEL_179:
            v131 = v212 + 1;
          }

          while ((v212 + 1) != v192);
          v192 = [v180 countByEnumeratingWithState:&v232 objects:v295 count:16];
        }

        while (v192);
      }

      v149 = v24[43];
      [v149 removeObjectsInArray:v177];

      v222 = 0u;
      v223 = 0u;
      v220 = 0u;
      v221 = 0u;
      v150 = v24[43];
      v151 = [v150 countByEnumeratingWithState:&v220 objects:v292 count:16];
      if (v151)
      {
        v152 = v151;
        v153 = *v221;
        do
        {
          v154 = 0;
          do
          {
            if (*v221 != v153)
            {
              objc_enumerationMutation(v150);
            }

            v155 = *(*(&v220 + 1) + 8 * v154);
            [v155 resetStats];
            [v155 resetError];
            if ([v155 pathReady])
            {
              v156 = nplog_obj();
              if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
              {
                v157 = [v155 shortName];
                *buf = 138412290;
                v305 = v157;
                _os_log_impl(&_mh_execute_header, v156, OS_LOG_TYPE_DEFAULT, "Setting up oblivious path (%@)", buf, 0xCu);
              }

              [v155 setupProxyAgentsForceUpdateDelegate:1];
            }

            else
            {
              v158 = [v155 proxyInfo];
              v159 = v158;
              if (v158)
              {
                v160 = *(v158 + 24);
              }

              else
              {
                v160 = 0;
              }

              v161 = v160;

              v162 = [v155 proxyInfo];
              v218[0] = _NSConcreteStackBlock;
              v218[1] = 3221225472;
              v218[2] = sub_10002AA1C;
              v218[3] = &unk_100109910;
              v163 = v161;
              v219 = v163;
              sub_1000058A8(v162, v218);
            }

            v154 = v154 + 1;
          }

          while (v152 != v154);
          v164 = [v150 countByEnumeratingWithState:&v220 objects:v292 count:16];
          v152 = v164;
        }

        while (v164);
      }

      sub_100025F60(v181);
      [v181 updateUserEventAgentData];
    }
  }
}

void sub_10002AA1C(uint64_t a1, int a2)
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) vendor];
    v6 = v5;
    v7 = @"failed";
    if (a2)
    {
      v7 = @"succeeded";
    }

    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Token fetch for Oblivious[%@] %@", &v8, 0x16u);
  }
}

void sub_10002C968(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak(&STACK[0x320]);
  _Unwind_Resume(a1);
}

void sub_10002DB60(uint64_t a1, int a2)
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = v5[3];
    }

    v6 = v5;
    v7 = [v6 vendor];
    v8 = v7;
    v9 = @"failed";
    if (a2)
    {
      v9 = @"succesfully";
    }

    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Token for %@ fetched %@", &v10, 0x16u);
  }
}

void sub_10002DC5C(uint64_t a1, int a2)
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = v5[3];
    }

    v6 = v5;
    v7 = [v6 vendor];
    v8 = v7;
    v9 = @"failed";
    if (a2)
    {
      v9 = @"succesfully";
    }

    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Token for %@ fetched %@", &v10, 0x16u);
  }
}

void sub_10002DD58(uint64_t a1, int a2)
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = v5[3];
    }

    v6 = v5;
    v7 = [v6 vendor];
    v8 = v7;
    v9 = @"failed";
    if (a2)
    {
      v9 = @"succesfully";
    }

    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Token for %@ fetched %@", &v10, 0x16u);
  }
}

void sub_10002DE54(uint64_t a1, int a2)
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = v5[3];
    }

    v6 = v5;
    v7 = [v6 vendor];
    v8 = v7;
    v9 = @"failed";
    if (a2)
    {
      v9 = @"succesfully";
    }

    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Token for %@ fetched %@", &v10, 0x16u);
  }
}

void sub_10002DF50(uint64_t a1, int a2)
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = v5[3];
    }

    v6 = v5;
    v7 = [v6 vendor];
    v8 = v7;
    v9 = @"failed";
    if (a2)
    {
      v9 = @"succesfully";
    }

    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Token for %@ fetched %@", &v10, 0x16u);
  }
}

void sub_10002E04C(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 224);
    if (v2)
    {
      if ([v2 proxyPathReady])
      {
        v3 = nplog_obj();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          v4 = *(a1 + 224);
          v5 = [v4 ingressProxy];
          v6 = v5;
          if (v5)
          {
            v7 = *(v5 + 24);
          }

          else
          {
            v7 = 0;
          }

          v8 = v7;
          v9 = [v8 vendor];
          v10 = *(a1 + 224);
          v11 = [v10 egressProxy];
          v12 = v11;
          if (v11)
          {
            v13 = *(v11 + 24);
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;
          v15 = [v14 vendor];
          *buf = 138412546;
          v158 = v9;
          v159 = 2112;
          v160 = v15;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting quic proxy path (%@-%@)", buf, 0x16u);
        }

        sub_10002664C(a1);
      }

      else
      {
        v16 = *(a1 + 224);
        v17 = [v16 ingressProxy];
        v18 = v17;
        if (v17)
        {
          v19 = *(v17 + 24);
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;

        v21 = *(a1 + 224);
        v22 = [v21 egressProxy];
        v23 = v22;
        if (v22)
        {
          v24 = *(v22 + 24);
        }

        else
        {
          v24 = 0;
        }

        v25 = v24;

        v26 = *(a1 + 224);
        v27 = [v26 ingressProxy];
        v146[0] = _NSConcreteStackBlock;
        v146[1] = 3221225472;
        v146[2] = sub_10002EC24;
        v146[3] = &unk_100109910;

        v147 = v20;
        v28 = v20;
        sub_1000058A8(v27, v146);

        v29 = *(a1 + 224);
        v30 = [v29 egressProxy];
        v144[0] = _NSConcreteStackBlock;
        v144[1] = 3221225472;
        v144[2] = sub_10002ED0C;
        v144[3] = &unk_100109910;

        v145 = v25;
        v31 = v25;
        sub_1000058A8(v30, v144);
      }
    }

    v32 = *(a1 + 232);
    if (v32)
    {
      if ([v32 proxyPathReady])
      {
        v33 = nplog_obj();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *(a1 + 232);
          v35 = [v34 ingressProxy];
          v36 = v35;
          if (v35)
          {
            v37 = *(v35 + 24);
          }

          else
          {
            v37 = 0;
          }

          v38 = v37;
          v39 = [v38 vendor];
          v40 = *(a1 + 232);
          v41 = [v40 egressProxy];
          v42 = v41;
          if (v41)
          {
            v43 = *(v41 + 24);
          }

          else
          {
            v43 = 0;
          }

          v44 = v43;
          v45 = [v44 vendor];
          *buf = 138412546;
          v158 = v39;
          v159 = 2112;
          v160 = v45;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Setting fallback proxy path (%@-%@)", buf, 0x16u);
        }

        sub_100027D78(a1);
      }

      else
      {
        v46 = *(a1 + 232);
        v47 = [v46 ingressProxy];
        v48 = v47;
        if (v47)
        {
          v49 = *(v47 + 24);
        }

        else
        {
          v49 = 0;
        }

        v50 = v49;

        v51 = *(a1 + 232);
        v52 = [v51 egressProxy];
        v53 = v52;
        if (v52)
        {
          v54 = *(v52 + 24);
        }

        else
        {
          v54 = 0;
        }

        v55 = v54;

        v56 = *(a1 + 232);
        v57 = [v56 ingressProxy];
        v142[0] = _NSConcreteStackBlock;
        v142[1] = 3221225472;
        v142[2] = sub_10002EDF4;
        v142[3] = &unk_100109910;

        v143 = v50;
        v58 = v50;
        sub_1000058A8(v57, v142);

        v59 = *(a1 + 232);
        v60 = [v59 egressProxy];
        v140[0] = _NSConcreteStackBlock;
        v140[1] = 3221225472;
        v140[2] = sub_10002EEDC;
        v140[3] = &unk_100109910;

        v141 = v55;
        v61 = v55;
        sub_1000058A8(v60, v140);
      }
    }

    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v62 = *(a1 + 312);
    v63 = [v62 countByEnumeratingWithState:&v136 objects:v156 count:16];
    if (v63)
    {
      v64 = v63;
      v65 = *v137;
      do
      {
        for (i = 0; i != v64; i = i + 1)
        {
          if (*v137 != v65)
          {
            objc_enumerationMutation(v62);
          }

          v67 = *(*(&v136 + 1) + 8 * i);
          v68 = [*(a1 + 312) objectForKeyedSubscript:v67];
          if ([v68 proxyPathReady])
          {
            sub_100027570(a1, v67);
          }
        }

        v64 = [v62 countByEnumeratingWithState:&v136 objects:v156 count:16];
      }

      while (v64);
    }

    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v69 = *(a1 + 336);
    v123 = [v69 countByEnumeratingWithState:&v132 objects:v155 count:16];
    if (v123)
    {
      v70 = *v133;
      v121 = v69;
      v122 = *v133;
      do
      {
        v71 = 0;
        do
        {
          if (*v133 != v70)
          {
            objc_enumerationMutation(v69);
          }

          v72 = *(*(&v132 + 1) + 8 * v71);
          v73 = [*(a1 + 336) objectForKeyedSubscript:v72];
          if (v73)
          {
            v74 = *(a1 + 368);
            v75 = [v74 interface];
            v76 = [v75 interfaceName];
            v77 = [v72 isEqualToString:v76];

            if (v77)
            {
              v78 = v72;
              v79 = v73;
              if (([a1 forceFallback] & 1) == 0)
              {
                if (v78)
                {
                  v151 = 0u;
                  v152 = 0u;
                  v149 = 0u;
                  v150 = 0u;
                  v80 = *(a1 + 88);
                  v81 = [v80 countByEnumeratingWithState:&v149 objects:buf count:16];
                  if (v81)
                  {
                    v82 = v81;
                    v83 = *v150;
LABEL_50:
                    v84 = 0;
                    while (1)
                    {
                      if (*v150 != v83)
                      {
                        objc_enumerationMutation(v80);
                      }

                      v85 = *(*(&v149 + 1) + 8 * v84);
                      if ([v85 proxyHop] == 2 || objc_msgSend(v85, "proxyHop") == 3)
                      {
                        break;
                      }

                      if (v82 == ++v84)
                      {
                        v82 = [v80 countByEnumeratingWithState:&v149 objects:buf count:16];
                        if (v82)
                        {
                          goto LABEL_50;
                        }

                        goto LABEL_57;
                      }
                    }

                    v86 = v85;

                    if (!v86)
                    {
                      goto LABEL_64;
                    }

                    v87 = sub_100025A90(a1, v79);
                    v118 = v86;
                    v117 = sub_100025A90(a1, v86);
                    v119 = [NSPQuicProxyPath alloc];
                    v120 = v79;
                    v116 = [v79 supportsFallback];
                    v88 = *(a1 + 13) ^ 1;
                    v89 = *(a1 + 15);
                    v90 = *(a1 + 400);
                    v91 = *(a1 + 368);
                    v92 = v90;
                    v93 = [NPUtilities copyCurrentNetworkCharacteristicsForPath:v91];
                    BYTE2(v115) = v89;
                    BYTE1(v115) = v88;
                    LOBYTE(v115) = 0;
                    v94 = [NSPQuicProxyPath initWithDelegate:v119 ingressProxy:"initWithDelegate:ingressProxy:egressProxy:proxyPathWeight:allowFallback:fallbackToQUIC:forceFallback:allowFailOpen:geohashSharingEnabled:configEpoch:networkCharacteristics:" egressProxy:a1 proxyPathWeight:v87 allowFallback:v117 fallbackToQUIC:0 forceFallback:v116 allowFailOpen:1 geohashSharingEnabled:v115 configEpoch:v92 networkCharacteristics:v93];

                    v95 = *(a1 + 328);
                    if (!v95)
                    {
                      v96 = objc_alloc_init(NSMutableDictionary);
                      v97 = *(a1 + 328);
                      *(a1 + 328) = v96;

                      v95 = *(a1 + 328);
                    }

                    [v95 setObject:v94 forKey:v78];
                    v98 = [*(a1 + 336) objectForKey:v78];

                    if (v98)
                    {
                      [*(a1 + 336) removeObjectForKey:v78];
                    }

                    v79 = v120;
                    v99 = [v120 vendor];
                    v100 = [NSString stringWithFormat:@"Agent_%@_%@", v78, v99];

                    [(NSPQuicProxyPath *)v94 setupNetworkSpecificMultiHopProxyRegistrations:v100];
                    [(NSPProxyPath *)v94 resetStats];
                    [(NSPProxyPath *)v94 resetError];
                    ++*(a1 + 544);
                    [NPUtilities postNotification:@"com.apple.networkserviceproxy.privacy-proxy-path-changed" value:?];

                    v69 = v121;
                    v101 = v118;
                  }

                  else
                  {
LABEL_57:

LABEL_64:
                    v101 = nplog_obj();
                    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
                    {
                      *v148 = 0;
                      _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "Could not find a suitable egress proxy", v148, 2u);
                    }

                    v69 = v121;
                  }
                }

                else
                {
                  v101 = nplog_obj();
                  if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 136315138;
                    v158 = "[NSPPrivacyProxyAgentManager setupNetworkSpecificQUICProxyPathFor:andIngress:]";
                    _os_log_fault_impl(&_mh_execute_header, v101, OS_LOG_TYPE_FAULT, "%s called with null networkPath", buf, 0xCu);
                  }
                }
              }

              v70 = v122;
            }
          }

          v71 = v71 + 1;
        }

        while (v71 != v123);
        v102 = [v69 countByEnumeratingWithState:&v132 objects:v155 count:16];
        v123 = v102;
      }

      while (v102);
    }

    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v103 = *(a1 + 320);
    v104 = [v103 countByEnumeratingWithState:&v128 objects:v154 count:16];
    if (v104)
    {
      v105 = v104;
      v106 = *v129;
      do
      {
        for (j = 0; j != v105; j = j + 1)
        {
          if (*v129 != v106)
          {
            objc_enumerationMutation(v103);
          }

          v108 = *(*(&v128 + 1) + 8 * j);
          if ([v108 pathReady])
          {
            [v108 setupProxyAgentsForceUpdateDelegate:0];
          }
        }

        v105 = [v103 countByEnumeratingWithState:&v128 objects:v154 count:16];
      }

      while (v105);
    }

    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v109 = *(a1 + 344);
    v110 = [v109 countByEnumeratingWithState:&v124 objects:v153 count:16];
    if (v110)
    {
      v111 = v110;
      v112 = *v125;
      do
      {
        for (k = 0; k != v111; k = k + 1)
        {
          if (*v125 != v112)
          {
            objc_enumerationMutation(v109);
          }

          v114 = *(*(&v124 + 1) + 8 * k);
          if ([v114 pathReady])
          {
            [v114 setupProxyAgentsForceUpdateDelegate:0];
          }
        }

        v111 = [v109 countByEnumeratingWithState:&v124 objects:v153 count:16];
      }

      while (v111);
    }

    sub_100025F60(a1);
    [a1 updateUserEventAgentData];
    sub_100026CD4(a1);
  }
}

void sub_10002EC24(uint64_t a1, int a2)
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) vendor];
    v6 = v5;
    v7 = @"failed";
    if (a2)
    {
      v7 = @"succeeded";
    }

    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Token fetch for Quic[%@] %@", &v8, 0x16u);
  }
}

void sub_10002ED0C(uint64_t a1, int a2)
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) vendor];
    v6 = v5;
    v7 = @"failed";
    if (a2)
    {
      v7 = @"succeeded";
    }

    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Token fetch for Quic[%@] %@", &v8, 0x16u);
  }
}

void sub_10002EDF4(uint64_t a1, int a2)
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) vendor];
    v6 = v5;
    v7 = @"failed";
    if (a2)
    {
      v7 = @"succeeded";
    }

    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Token fetch for Fallback[%@] %@", &v8, 0x16u);
  }
}

void sub_10002EEDC(uint64_t a1, int a2)
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) vendor];
    v6 = v5;
    v7 = @"failed";
    if (a2)
    {
      v7 = @"succeeded";
    }

    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Token fetch for Fallback[%@] %@", &v8, 0x16u);
  }
}

void sub_10002EFC4(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 200);
    if (v2)
    {
    }

    else if ((*(a1 + 17) & 1) == 0)
    {
      v3 = nplog_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "set token replenish timer", buf, 2u);
      }

      v4 = NPGetInternalQueue();
      v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v4);
      v6 = *(a1 + 200);
      *(a1 + 200) = v5;

      v7 = *(a1 + 200);
      if (v7)
      {
        v8 = v7;
        v9 = dispatch_time(0, 60000000000);
        dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);

        objc_initWeak(buf, a1);
        v10 = *(a1 + 200);
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_10002F174;
        handler[3] = &unk_100109538;
        v11 = v10;
        objc_copyWeak(&v13, buf);
        dispatch_source_set_event_handler(v11, handler);

        dispatch_resume(*(a1 + 200));
        objc_destroyWeak(&v13);
        objc_destroyWeak(buf);
      }
    }
  }
}

void sub_10002F174(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v44) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Replenish timer fired", &v44, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_source_cancel(WeakRetained[25]);
    v5 = v4[25];
    v4[25] = 0;

    v6 = v4[26];
    if (v6 && (v7 = v6, [v4[26] ingressProxy], v8 = objc_claimAutoreleasedReturnValue(), v9 = sub_1000071A0(v8), v8, v7, !v9))
    {
      v22 = [v4[26] ingressProxy];
      v23 = nplog_obj();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_29;
      }

      v24 = v4[26];
      v31 = [v24 ingressProxy];
      v26 = v31;
      if (v31)
      {
        v32 = *(v31 + 24);
      }

      else
      {
        v32 = 0;
      }

      v28 = v32;
      v29 = [v28 proxyURL];
      v44 = 138412290;
      v45 = v29;
      v30 = "Ingress quic proxy %@ has 0 tokens";
    }

    else
    {
      v10 = v4[27];
      if (v10 && (v11 = v10, [v4[27] ingressProxy], v12 = objc_claimAutoreleasedReturnValue(), v13 = sub_1000071A0(v12), v12, v11, !v13))
      {
        v22 = [v4[27] ingressProxy];
        v23 = nplog_obj();
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_29;
        }

        v24 = v4[27];
        v33 = [v24 ingressProxy];
        v26 = v33;
        if (v33)
        {
          v34 = *(v33 + 24);
        }

        else
        {
          v34 = 0;
        }

        v28 = v34;
        v29 = [v28 proxyURL];
        v44 = 138412290;
        v45 = v29;
        v30 = "Ingress fallback proxy %@ has 0 tokens";
      }

      else
      {
        v14 = v4[26];
        if (v14 && (v15 = v14, [v4[26] egressProxy], v16 = objc_claimAutoreleasedReturnValue(), v17 = sub_1000071A0(v16), v16, v15, !v17))
        {
          v22 = [v4[26] egressProxy];
          v23 = nplog_obj();
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_29;
          }

          v24 = v4[26];
          v35 = [v24 ingressProxy];
          v26 = v35;
          if (v35)
          {
            v36 = *(v35 + 24);
          }

          else
          {
            v36 = 0;
          }

          v28 = v36;
          v29 = [v28 proxyURL];
          v44 = 138412290;
          v45 = v29;
          v30 = "Egress quic proxy %@ has 0 tokens";
        }

        else
        {
          v18 = v4[27];
          if (!v18)
          {
            goto LABEL_33;
          }

          v19 = v18;
          v20 = [v4[27] egressProxy];
          v21 = sub_1000071A0(v20);

          if (v21)
          {
            goto LABEL_33;
          }

          v22 = [v4[27] egressProxy];
          v23 = nplog_obj();
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_29;
          }

          v24 = v4[27];
          v25 = [v24 egressProxy];
          v26 = v25;
          if (v25)
          {
            v27 = *(v25 + 24);
          }

          else
          {
            v27 = 0;
          }

          v28 = v27;
          v29 = [v28 proxyURL];
          v44 = 138412290;
          v45 = v29;
          v30 = "Egress fallback proxy %@ has 0 tokens";
        }
      }
    }

    _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, v30, &v44, 0xCu);

LABEL_29:
    if (v22)
    {
      v37 = v22;
      if ((*(v4 + 17) & 1) == 0)
      {
        v38 = objc_alloc_init(NSPOutageReasonStats);
        v39 = v4[64];
        v4[64] = &v38->super.super;

        v40 = [(dispatch_source_t *)v4 tierString];
        [v4[64] setTierType:v40];

        [v4[64] setOutageReasonType:@"Token"];
        [v4[64] setOutageReasonSubType:@"TokenFetchFailure"];
        v41 = v37[3];
        v42 = [v41 proxyURL];
        [v4[64] setTokenProxy:v42];
      }

      *(v4 + 17) = 1;
      v43 = objc_loadWeakRetained(v4 + 10);
      [v43 tokenFetchOutage];

      [(dispatch_source_t *)v4 updateUserEventAgentData];
    }
  }

LABEL_33:
}

void sub_10002FBD0(void *a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (a1)
  {
    v5 = objc_alloc_init(NSPSwitchEgressProxyStats);
    v6 = [a1 tierString];
    [(NSPSwitchEgressProxyStats *)v5 setTierType:v6];

    v7 = [v8[3] vendor];
    [(NSPSwitchEgressProxyStats *)v5 setVendor:v7];

    [(NSPSwitchEgressProxyStats *)v5 setPrimaryProxy:a3 ^ 1];
    [(NSPSwitchEgressProxyStats *)v5 setFallbackProxy:a3];
    [(NSPProxyAnalytics *)v5 sendAnalytics];
  }
}

void sub_10003018C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_1000301B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 10);
    v4 = v3;
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 24);
    }

    else
    {
      v6 = 0;
    }

    [v3 badTokenInfoForProxy:v6];
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_1000304D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_1000304FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = objc_loadWeakRetained(WeakRetained + 10);
    [v2 tokenIssuanceLimitReached];
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

id sub_10003074C(void *a1)
{
  v1 = a1;
  v2 = [v1 host];
  v3 = [NSMutableString stringWithString:v2];
  v4 = [v1 port];

  if (v4)
  {
    v5 = [v1 port];
    [v3 appendFormat:@".%@", v5];
  }

  return v3;
}

void sub_10003326C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1 && (*(a1 + 16) & 1) == 0)
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3032000000;
    v10[3] = sub_100001F14;
    v10[4] = sub_100005818;
    v11 = os_transaction_create();
    objc_initWeak(&location, a1);
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000333E4;
    v7[3] = &unk_1001099D0;
    objc_copyWeak(&v8, &location);
    v7[4] = v10;
    [WeakRetained checkPrivacyProxyConnectivityOnInterface:v5 proxyConnectivityCheckType:a3 completionHandler:v7];

    *(a1 + 16) = 1;
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
    _Block_object_dispose(v10, 8);
  }
}

void sub_1000333BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_1000333E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    WeakRetained[16] = 0;
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
  v5 = WeakRetained;
}

void sub_100033448(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc_init(NSPOutageReasonStats);
    v5 = a1[63];
    a1[63] = v4;

    v6 = [a1 tierString];
    [a1[63] setTierType:v6];

    [a1[63] setOutageReasonType:@"Proxy"];
    [a1[63] setOutageReasonSubType:v3];
    v7 = a1[26];
    v8 = [v7 ingressProxy];
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 24);
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = [v11 proxyURL];
    [a1[63] setPrimaryIngressProxy:v12];

    v13 = a1[26];
    v14 = [v13 egressProxy];
    v15 = v14;
    if (v14)
    {
      v16 = *(v14 + 24);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v18 = [v17 proxyURL];
    [a1[63] setPrimaryEgressProxy:v18];

    v19 = a1[27];
    v20 = [v19 ingressProxy];
    v21 = v20;
    if (v20)
    {
      v22 = *(v20 + 24);
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;
    v24 = [v23 tcpProxyFqdn];
    [a1[63] setFallbackIngressProxy:v24];

    v25 = a1[27];
    v26 = [v25 egressProxy];
    v27 = v26;
    if (v26)
    {
      v28 = *(v26 + 24);
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;
    v30 = [v29 tcpProxyFqdn];
    [a1[63] setFallbackEgressProxy:v30];
  }

  else
  {
    v31 = nplog_obj();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      v32 = 136315138;
      v33 = "[NSPPrivacyProxyAgentManager setProxyOutageReason:]";
      _os_log_fault_impl(&_mh_execute_header, v31, OS_LOG_TYPE_FAULT, "%s called with null outageReasonSubType", &v32, 0xCu);
    }
  }
}

void sub_1000336DC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 520))
  {
    v3 = nplog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 520);
      v5 = @"Unknown";
      if (v4 == 2)
      {
        v5 = @"DNS";
      }

      if (v4 == 1)
      {
        v6 = @"Proxy";
      }

      else
      {
        v6 = v5;
      }

      v7 = v6;
      v23 = 138412290;
      v24 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Already probing for %@", &v23, 0xCu);
    }
  }

  else
  {
    *(a1 + 520) = a2;
    v9 = +[NSDate now];
    objc_storeStrong((a1 + 272), v9);

    v10 = nplog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 520);
      v12 = @"Unknown";
      if (v11 == 2)
      {
        v12 = @"DNS";
      }

      if (v11 == 1)
      {
        v13 = @"Proxy";
      }

      else
      {
        v13 = v12;
      }

      v14 = v13;
      v23 = 138412290;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Start probing[%@]", &v23, 0xCu);
    }

    v15 = [NSPProber alloc];
    v16 = *(a1 + 20);
    v17 = *(a1 + 368);
    if (a2 == 1)
    {
      v18 = sub_10001B78C(&v15->super.isa, a1, @"Proxy", v16, v17, 1);
      objc_storeStrong((a1 + 240), v18);

      sub_10001B858(*(a1 + 240));
      sub_10001CF54(*(a1 + 240));
      v19 = [NSPProber alloc];
      v20 = *(a1 + 20);
      v21 = *(a1 + 368);
      v22 = sub_10001B78C(&v19->super.isa, a1, @"Direct", v20, v21, 0);
      objc_storeStrong((a1 + 248), v22);
    }

    else
    {
      v22 = sub_10001B78C(&v15->super.isa, a1, @"Direct", v16, v17, 0);
      objc_storeStrong((a1 + 248), v22);
    }

    sub_10001B858(*(a1 + 248));
    sub_10001CF54(*(a1 + 248));
  }
}

void sub_100034040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100034060(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 80));
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained refreshProxyInfo:12];

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void sub_100037520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100037540(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 80));
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained refreshProxyInfo:11];

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void sub_100037C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100037C38(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (!*(v2 + 264) || ((v3 = objc_loadWeakRetained((v2 + 80)), v4 = v3, (v5 = *(a1 + 32)) == 0) ? (v6 = 0) : (v6 = *(v5 + 264)), [v3 reportPrivacyProxySuccessOnInterface:v6], v4, (v2 = *(a1 + 32)) != 0)))
  {
    WeakRetained = objc_loadWeakRetained((v2 + 80));
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained proxyConnectivityActive];

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_1000391F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100039214(uint64_t a1)
{
  xdict = xpc_dictionary_create(0, 0, 0);
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 timeIntervalSinceReferenceDate];
    v4 = v3;
  }

  else
  {
    v4 = -1;
  }

  xpc_dictionary_set_int64(xdict, "TokenFetchDate", v4);
  if (*(a1 + 48))
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  xpc_dictionary_set_int64(xdict, "TokenFetchOnNetworkChange", v5);
  xpc_set_event();
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_1000393C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000393E0(uint64_t a1)
{
  xdict = xpc_dictionary_create(0, 0, 0);
  v2 = *(a1 + 32);
  if (v2 && (v3 = *(v2 + 240)) != 0 && (v4 = v3[10], v3, v4))
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 240);
      v7 = v6;
      if (v6)
      {
        v6 = v6[10];
      }
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    [v6 timeIntervalSinceReferenceDate];
    xpc_dictionary_set_int64(xdict, "ProxyPathProber", v8);
  }

  else
  {
    xpc_dictionary_set_int64(xdict, "ProxyPathProber", -1);
  }

  v9 = *(a1 + 32);
  if (v9 && (v10 = *(v9 + 240)) != 0 && (v11 = v10[9], v10, (v11 & 1) != 0))
  {
    v12 = 1;
  }

  else
  {
    v12 = -1;
  }

  xpc_dictionary_set_int64(xdict, "ProxyPathProbeOnNetworkChange", v12);
  v13 = *(a1 + 32);
  if (v13 && (v14 = *(v13 + 248)) != 0 && (v15 = v14[10], v14, v15))
  {
    v16 = *(a1 + 32);
    if (v16)
    {
      v17 = *(v16 + 248);
      v18 = v17;
      if (v17)
      {
        v17 = v17[10];
      }
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    [v17 timeIntervalSinceReferenceDate];
    xpc_dictionary_set_int64(xdict, "DirectPathProber", v19);
  }

  else
  {
    xpc_dictionary_set_int64(xdict, "DirectPathProber", -1);
  }

  v20 = *(a1 + 32);
  if (v20 && (v21 = *(v20 + 248)) != 0 && (v22 = v21[9], v21, (v22 & 1) != 0))
  {
    v23 = 1;
  }

  else
  {
    v23 = -1;
  }

  xpc_dictionary_set_int64(xdict, "DirectPathProbeOnNetworkChange", v23);
  xpc_set_event();
  v24 = *(*(a1 + 40) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = 0;
}

uint64_t sub_100039760(uint64_t a1, void *a2)
{
  if (a2 && nw_array_get_count())
  {
    v3 = nw_array_get_object_at_index();
    address = nw_endpoint_get_address(v3);
    v5 = nw_endpoint_copy_address_string(v3);
    if (!v5)
    {
LABEL_12:

      goto LABEL_13;
    }

    v6 = v5;
    sa_family = address->sa_family;
    if (sa_family == 30)
    {
      v8 = [NSString stringWithUTF8String:v5];
      v9 = [NPUtilities createMaskedIPv6Address:v8 prefix:56];
    }

    else
    {
      if (sa_family != 2)
      {
LABEL_9:
        v11 = *(a1 + 32);
        if (v11)
        {
          v12 = *(v11 + 536);
        }

        else
        {
          v12 = 0;
        }

        [*(a1 + 40) setTokenServerAddress:v12];
        [*(a1 + 40) sendAnalytics];
        free(v6);
        goto LABEL_12;
      }

      v8 = [NSString stringWithUTF8String:v5];
      v9 = [NPUtilities createMaskedIPv4Address:v8 prefix:24];
    }

    v10 = v9;
    sub_100023ED0(*(a1 + 32), v9);

    goto LABEL_9;
  }

LABEL_13:

  return _objc_release_x1();
}

id sub_10003A2EC()
{
  if (qword_1001296F0 != -1)
  {
    dispatch_once(&qword_1001296F0, &stru_100109B58);
  }

  v1 = qword_1001296E8;

  return v1;
}

uint64_t sub_10003A340(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = sub_10003A2EC();
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 arrayForKey:@"AppleLanguages"];

  if (v7 || (os_unfair_lock_lock(&unk_1001296E0), v7 = [0 copy], os_unfair_lock_unlock(&unk_1001296E0), v7))
  {
    v8 = sub_10003A2EC();
    v9 = [v8 localizations];
    v10 = [NSBundle preferredLocalizationsFromArray:v9 forPreferences:v7];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v5 localizations];
  v12 = [NSBundle preferredLocalizationsFromArray:v11 forPreferences:v10];

  [v12 firstObject];
  if (qword_1001296F8 != -1)
  {
    dispatch_once(&qword_1001296F8, &stru_100109B78);
  }

  v13 = CFBundleCopyLocalizedStringForLocalization();

  return v13;
}

uint64_t sub_10003A4DC(void *a1)
{
  v1 = a1;
  if (!qword_100129708)
  {
    v10 = 0;
    v4 = +[NSFileManager defaultManager];
    v5 = [v4 fileExistsAtPath:@"/System/Library/PrivateFrameworks/UIKitCore.framework" isDirectory:&v10];
    v6 = v10;

    if (v5)
    {
      if (v6)
      {
        v7 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/UIKitCore.framework"];
        v8 = qword_100129708;
        qword_100129708 = v7;

        if (qword_100129708)
        {
          [qword_100129708 load];
          qword_100129710 = [qword_100129708 classNamed:@"UIDevice"];
          v9 = nplog_obj();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v12 = "NSPResourcesGetUIDeviceClass";
            v13 = 2112;
            v14 = qword_100129708;
            v15 = 2112;
            v16 = qword_100129710;
            _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s: bundle %@ class %@", buf, 0x20u);
          }
        }
      }
    }
  }

  v2 = [qword_100129710 modelSpecificLocalizedStringKeyForKey:v1];

  return v2;
}

uint64_t sub_10003A674(void *a1)
{
  v1 = a1;
  v2 = sub_10003A2EC();
  v3 = [v2 URLForResource:v1 withExtension:@"png"];

  return v3;
}

void sub_10003A6D0(id a1)
{
  qword_1001296E8 = [[NSBundle alloc] initWithPath:@"/System/Library/PrivateFrameworks/NetworkServiceProxy.framework"];

  _objc_release_x1();
}

void sub_10003A718(id a1)
{
  v1 = CFURLCreateFromFileSystemRepresentation(kCFAllocatorDefault, "/System/Library/PrivateFrameworks/NetworkServiceProxy.framework", 63, 0);
  qword_100129700 = CFBundleCreate(kCFAllocatorDefault, v1);

  CFRelease(v1);
}

void sub_10003B000(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[NSPEventsPredictor alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

id *sub_10003B554(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = NSPToken;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 3, a2);
    }
  }

  return a1;
}

void sub_10003B8A4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

id sub_10003BF04(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if (!v2)
  {
    v16 = 0;
LABEL_8:
    v17 = v16;

    v18 = [v2 issuerName];
    v6 = v18;
    if (v17)
    {
      if (v2)
      {
        Property = objc_getProperty(v2, v19, 64, 1);
      }

      else
      {
        Property = 0;
      }

      v21 = Property;
      v5 = [NSString stringWithFormat:@"%@-%@", v6, v21];
    }

    else
    {
      v5 = [NSString stringWithFormat:@"%@", v18];
    }

    goto LABEL_13;
  }

  if ([v2 tokenType] != 58796)
  {
    v16 = objc_getProperty(v2, v3, 64, 1);
    goto LABEL_8;
  }

  v4 = [v2 issuerName];
  v5 = [NSString stringWithFormat:@"arc-%@", v4];

  v6 = [v2 challengeData];
  v8 = objc_getProperty(v2, v7, 64, 1);

  if (v8)
  {
    v10 = objc_getProperty(v2, v9, 64, 1);
    v11 = [v5 stringByAppendingFormat:@"-%@", v10];

    v5 = v11;
  }

  v12 = [v2 credentialContext];

  if (v12)
  {
    v13 = [v2 credentialContext];
    v14 = [v13 base64EncodedStringWithOptions:0];
    v15 = [v5 stringByAppendingFormat:@"-%@", v14];

    v5 = v15;
  }

LABEL_13:

  return v5;
}

id sub_10003C13C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [NPUtilities copyDataFromKeychainWithIdentifier:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.Tokens" accountName:v2];

  if (v3)
  {
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = [NSSet setWithObjects:v4, v5, objc_opt_class(), 0];
    v12 = 0;
    v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v6 fromData:v3 error:&v12];
    v8 = v12;

    if (!v7 || v8)
    {
      v10 = nplog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v14 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "unarchivedObjectOfClass for token array failed with error: %@", buf, 0xCu);
      }

      v9 = 0;
    }

    else
    {
      v9 = v7;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_10003C2DC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [NPUtilities copyDataFromKeychainWithIdentifier:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.OneTimeTokens" accountName:v2];

  if (v3)
  {
    v4 = objc_opt_class();
    v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
    v11 = 0;
    v6 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v5 fromData:v3 error:&v11];
    v7 = v11;

    if (!v6 || v7)
    {
      v9 = nplog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "unarchivedObjectOfClass for token array failed with error: %@", buf, 0xCu);
      }

      v8 = 0;
    }

    else
    {
      v8 = v6;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_10003C460(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v12 = 0;
  v6 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v12];
  v7 = v12;
  v8 = nplog_obj();
  v9 = v8;
  if (v6)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = [v4 count];
      *buf = 134218242;
      v14 = v11;
      v15 = 2112;
      v16 = v5;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Saving %lu private access tokens for %@ in the keychain", buf, 0x16u);
    }

    [NPUtilities saveDataToKeychain:v6 withIdentifier:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.Tokens" accountName:v5];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "archivedDataWithRootObject for token array failed with error: %@", buf, 0xCu);
    }
  }
}

void sub_10003C5FC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v25 = 0;
  v6 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v25];
  v7 = v25;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v4;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v22;
      do
      {
        v16 = 0;
        do
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v21 + 1) + 8 * v16);
          if (v17)
          {
            v18 = *(v17 + 8);
          }

          else
          {
            v18 = 0;
          }

          v14 += [v18 count];
          v16 = v16 + 1;
        }

        while (v13 != v16);
        v19 = [v11 countByEnumeratingWithState:&v21 objects:v28 count:16];
        v13 = v19;
      }

      while (v19);
    }

    else
    {
      v14 = 0;
    }

    v20 = nplog_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109378;
      LODWORD(v27[0]) = v14;
      WORD2(v27[0]) = 2112;
      *(v27 + 6) = v5;
      _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Saving %u private access tokens for %@ in the keychain", buf, 0x12u);
    }

    [NPUtilities saveDataToKeychain:v6 withIdentifier:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.OneTimeTokens" accountName:v5];
  }

  else
  {
    v10 = nplog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27[0] = v8;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "archivedDataWithRootObject for token array failed with error: %@", buf, 0xCu);
    }
  }
}

void sub_10003C858(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = nplog_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Clearing private access tokens for %@ in the keychain", &v4, 0xCu);
  }

  [NPUtilities removeDataFromKeychainWithIdentifier:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.Tokens" accountName:v2];
}

void sub_10003C92C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = nplog_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Clearing long lived tokens for %@ in the keychain", &v4, 0xCu);
  }

  [NPUtilities removeDataFromKeychainWithIdentifier:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.LongLivedTokens" accountName:v2];
}

void sub_10003CA00(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = nplog_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Clearing one-time tokens for %@ in the keychain", &v4, 0xCu);
  }

  [NPUtilities removeDataFromKeychainWithIdentifier:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.OneTimeTokens" accountName:v2];
}

id sub_10003CAD4(uint64_t a1, void *a2, void *a3, _DWORD *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_self();
  if (v6)
  {
    v9 = v8;
    v10 = sub_10003BF04(NSPPrivateAccessTokenCache, v6);
    v11 = sub_10003C13C(NSPPrivateAccessTokenCache, v10);
    if (![v11 count])
    {
      v15 = 0;
LABEL_35:

      goto LABEL_36;
    }

    v12 = [NSMutableArray arrayWithArray:v11];
    sub_10003CF24(v9, v12);
    if (![v12 count])
    {
      sub_10003C460(NSPPrivateAccessTokenCache, v12, v10);
      v15 = 0;
LABEL_34:

      goto LABEL_35;
    }

    v13 = [v12 firstObject];
    objc_opt_class();
    v29 = a4;
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = 0;
        goto LABEL_28;
      }

      if (v13)
      {
        v16 = v13[1];
      }

      else
      {
        v16 = 0;
      }

      v14 = [v16 firstObject];
    }

    v17 = v14;
    if (v14)
    {
      if ([v7 count])
      {
        v27 = v13;
        v28 = v7;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v18 = v7;
        v19 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v31;
          while (2)
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v31 != v21)
              {
                objc_enumerationMutation(v18);
              }

              if (sub_1000B3ED0(NSPPrivateAccessTokenResponse, v17, *(*(&v30 + 1) + 8 * i)))
              {

                v13 = v27;
                v7 = v28;
                goto LABEL_27;
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        v23 = nplog_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = v10;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Cached token from keychain for %@ has non-matching key, flushing tokens", buf, 0xCu);
        }

        sub_10003C858(NSPPrivateAccessTokenCache, v10);
        v15 = 0;
        v13 = v27;
        v7 = v28;
        goto LABEL_33;
      }

LABEL_27:
      if (!sub_1000B4078(NSPPrivateAccessTokenResponse, v17, v6))
      {
        v26 = nplog_obj();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = v10;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Cached token from keychain for %@ has non-matching challenge, flushing tokens", buf, 0xCu);
        }

        sub_10003C858(NSPPrivateAccessTokenCache, v10);
        v15 = 0;
        goto LABEL_33;
      }
    }

LABEL_28:
    [v12 removeObjectAtIndex:0];
    if (v29)
    {
      *v29 = [v12 count];
    }

    sub_10003C460(NSPPrivateAccessTokenCache, v12, v10);
    v24 = nplog_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v36 = v10;
      _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Received cached token from keychain for %@", buf, 0xCu);
    }

    v17 = v17;
    v15 = v17;
LABEL_33:

    goto LABEL_34;
  }

  v10 = nplog_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v36 = "+[NSPPrivateAccessTokenCache copyTokenFromCacheForChallenge:tokenKeys:tokensRemaining:]";
    _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "%s called with null challenge", buf, 0xCu);
  }

  v15 = 0;
LABEL_36:

  return v15;
}

void sub_10003CF24(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_self();
  v33 = objc_alloc_init(NSMutableArray);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v39;
    v31 = *v39;
    do
    {
      v8 = 0;
      v32 = v6;
      do
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v38 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v11 = v10;
          if (v10)
          {
            v12 = v10[3];
            v13 = v12 != 0;
            if (!v12 || (v2 = v11[3], [v2 timeIntervalSinceNow], v14 > 0.0))
            {
              v15 = v11[2];
              goto LABEL_11;
            }

LABEL_24:
            [v33 addObject:v11];
          }

          else
          {
            v12 = 0;
            v13 = 0;
            v15 = 0;
LABEL_11:
            v16 = v15;
            if ([v16 count])
            {
              if (v11)
              {
                v17 = v11[2];
              }

              else
              {
                v17 = 0;
              }

              v18 = v4;
              v19 = v17;
              v20 = [v19 count];
              v21 = v2;
              if (v11)
              {
                v22 = v11[1];
              }

              else
              {
                v22 = 0;
              }

              v23 = [v22 count];

              if (v13)
              {

                v24 = v20 >= v23;
                v2 = v21;
                v7 = v31;
              }

              else
              {

                v24 = v20 >= v23;
                v7 = v31;
                v2 = v21;
              }

              v4 = v18;
              v6 = v32;
              if (!v24)
              {
                goto LABEL_24;
              }
            }

            else
            {

              if (v13)
              {
              }
            }
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v25 = [v4 countByEnumeratingWithState:&v38 objects:v43 count:16];
      v6 = v25;
    }

    while (v25);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v26 = v33;
  v27 = [v26 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v35;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v35 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [v4 removeObject:*(*(&v34 + 1) + 8 * i)];
      }

      v28 = [v26 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v28);
  }
}

void sub_10003D214(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = a3;
  v6 = a4;
  v7 = a2;
  v8 = objc_opt_self();
  v9 = sub_10003BF04(NSPPrivateAccessTokenCache, v7);

  v10 = sub_10003C13C(NSPPrivateAccessTokenCache, v9);
  if (![v10 count])
  {
    v11 = +[NSMutableArray array];
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    [v11 addObject:v18];
    goto LABEL_8;
  }

  v11 = [NSMutableArray arrayWithArray:v10];
  sub_10003CF24(v8, v11);
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_3:
  v12 = sub_10003B554([NSPToken alloc], v6);
  v13 = objc_alloc_init(NSMutableArray);
  sub_10000A4F0(v12, v13);

  if (v12)
  {
    v14 = v12[1];
  }

  else
  {
    v14 = 0;
  }

  [v14 addObject:v18];
  [v11 addObject:v12];

LABEL_8:
  objc_opt_self();
  v15 = [NPUtilities totalDataInKeychainWithIdentifier:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.Tokens"];
  v16 = nplog_obj();
  v17 = v16;
  if (v15 < 0x186A1)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v20 = v15;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Keychain tokens total %zu bytes, not flushing keychain", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Keychain tokens total %zu bytes, flushing keychain", buf, 0xCu);
    }

    [NPUtilities removeDataFromKeychainWithIdentifier:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.Tokens"];
  }

  sub_10003C460(NSPPrivateAccessTokenCache, v11, v9);
}

id sub_10003D498(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  objc_opt_self();
  if (a3)
  {
    v5 = @"com.apple.NetworkServiceProxy.AuxiliaryAuth.Attester";
  }

  else
  {
    v5 = @"com.apple.NetworkServiceProxy.AuxiliaryAuth.Origin";
  }

  v6 = [NPUtilities copyDataFromKeychainWithIdentifier:v5 accountName:v4];

  if (v6)
  {
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v7, v8, objc_opt_class(), 0];
    v15 = 0;
    v10 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v9 fromData:v6 error:&v15];
    v11 = v15;

    if (!v10 || v11)
    {
      v13 = nplog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "unarchivedObjectOfClass for auxiliary auth info array failed with error: %@", buf, 0xCu);
      }

      v12 = 0;
    }

    else
    {
      v12 = v10;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id sub_10003D64C(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  v5 = objc_opt_self();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = sub_10003D498(v5, v4, a3);
  v7 = [v6 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  v9 = *v39;
  do
  {
    v10 = 0;
    do
    {
      if (*v39 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v38 + 1) + 8 * v10);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v33 = v4;

        v12 = objc_alloc_init(NSMutableArray);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v32 = v6;
        v13 = v6;
        v14 = [v13 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (!v14)
        {
          goto LABEL_28;
        }

        v15 = v14;
        v16 = *v35;
        while (1)
        {
          v17 = 0;
          do
          {
            if (*v35 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v34 + 1) + 8 * v17);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v12 addObject:v18];
              goto LABEL_26;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = v18;
              v21 = v19;
              if (!v19)
              {
                goto LABEL_25;
              }

              v22 = objc_getProperty(v19, v20, 8, 1);
              if (!v22)
              {
                goto LABEL_25;
              }

              v24 = v22;
              v25 = objc_getProperty(v21, v23, 16, 1);
              if (v25)
              {
                v27 = v25;
                [objc_getProperty(v21 v26];
                v29 = v28;

                if (v29 <= 0.0)
                {
                  goto LABEL_25;
                }
              }

              else
              {
              }

              [v12 addObject:{objc_getProperty(v21, v30, 8, 1)}];
LABEL_25:
            }

LABEL_26:
            v17 = v17 + 1;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (!v15)
          {
LABEL_28:

            v6 = v32;
            v4 = v33;
            goto LABEL_29;
          }
        }
      }

      v10 = v10 + 1;
    }

    while (v8 != v10);
    v8 = [v6 countByEnumeratingWithState:&v38 objects:v43 count:16];
  }

  while (v8);
LABEL_9:

  v12 = v6;
LABEL_29:

  return v12;
}

void sub_10003D924(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  objc_opt_self();
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Clearing auxiliary auth info for %@ in the keychain", &v7, 0xCu);
  }

  if (a3)
  {
    v6 = @"com.apple.NetworkServiceProxy.AuxiliaryAuth.Attester";
  }

  else
  {
    v6 = @"com.apple.NetworkServiceProxy.AuxiliaryAuth.Origin";
  }

  [NPUtilities removeDataFromKeychainWithIdentifier:v6 accountName:v4];
}

void sub_10003DA14(uint64_t a1, void *a2, void *a3, int a4)
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  v29 = 0;
  v8 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v29];
  v9 = v29;
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    v12 = nplog_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v10;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "archivedDataWithRootObject for auxiliary auth info array failed with error: %@", buf, 0xCu);
    }

    goto LABEL_29;
  }

  v24 = v9;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (!v14)
  {
    v16 = 0;
    goto LABEL_23;
  }

  v15 = v14;
  v16 = 0;
  v17 = *v26;
  do
  {
    for (i = 0; i != v15; i = i + 1)
    {
      if (*v26 != v17)
      {
        objc_enumerationMutation(v13);
      }

      Property = *(*(&v25 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_17;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (Property)
        {
          Property = objc_getProperty(Property, v20, 8, 1);
        }

LABEL_17:
        v21 = Property;
        goto LABEL_19;
      }

      v21 = 0;
LABEL_19:
      v16 = &v16[[v21 contentListsCount]];
    }

    v15 = [v13 countByEnumeratingWithState:&v25 objects:v34 count:16];
  }

  while (v15);
LABEL_23:

  v22 = nplog_obj();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    v31 = v16;
    v32 = 2112;
    v33 = v7;
    _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Saving %lu auxiliary auth info entries for %@ in the keychain", buf, 0x16u);
  }

  if (a4)
  {
    v23 = @"com.apple.NetworkServiceProxy.AuxiliaryAuth.Attester";
  }

  else
  {
    v23 = @"com.apple.NetworkServiceProxy.AuxiliaryAuth.Origin";
  }

  [NPUtilities saveDataToKeychain:v8 withIdentifier:v23 accountName:v7];
  v10 = v24;
LABEL_29:
}

void sub_10003DCEC(uint64_t a1, int a2)
{
  objc_opt_self();
  v3 = @"com.apple.NetworkServiceProxy.AuxiliaryAuth.Origin";
  if (a2)
  {
    v3 = @"com.apple.NetworkServiceProxy.AuxiliaryAuth.Attester";
  }

  v4 = v3;
  v5 = [NPUtilities totalDataInKeychainWithIdentifier:v4];
  v6 = nplog_obj();
  v7 = v6;
  if (v5 < 0x186A1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = 134217984;
      v9 = v5;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Keychain auxiliary auth data total %zu bytes, not flushing keychain", &v8, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Keychain auxiliary auth data total %zu bytes, flushing keychain", &v8, 0xCu);
    }

    [NPUtilities removeDataFromKeychainWithIdentifier:v4];
  }
}

void sub_10003DE3C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc_init(NSMutableArray);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      v8 = 0;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v27 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v12 = v10;
          if (v10)
          {
            v13 = objc_getProperty(v10, v11, 16, 1);
            if (v13)
            {
              v15 = v13;
              [objc_getProperty(v12 v14];
              v17 = v16;

              if (v17 <= 0.0)
              {
                [v3 addObject:v12];
              }
            }
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v6);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v18 = v3;
  v19 = [v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v24;
    do
    {
      v22 = 0;
      do
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [v4 removeObject:{*(*(&v23 + 1) + 8 * v22), v23}];
        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v20);
  }
}

void sub_10003E06C(uint64_t a1, void *a2, unsigned int a3, void *a4, void *a5, void *a6, int a7)
{
  v40 = a2;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_opt_self();
  v15 = sub_10003D498(NSPPrivateAccessTokenCache, v11, a7);
  v16 = [v15 mutableCopy];

  sub_10003DE3C(v14, v16);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v18)
  {
    v19 = v18;
    v37 = v11;
    v38 = a7;
    v39 = 0;
    v20 = *v43;
    while (1)
    {
      v21 = 0;
      do
      {
        if (*v43 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v42 + 1) + 8 * v21);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v13)
          {
            v23 = 0;
            goto LABEL_24;
          }

          v23 = v22;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v22)
            {
              v25 = objc_getProperty(v22, v24, 16, 1);
              Property = objc_getProperty(v22, v26, 8, 1);
            }

            else
            {
              v25 = 0;
              Property = 0;
            }

            v23 = Property;
            if (v13)
            {
              if (!v25 || ([v25 isEqual:v13] & 1) == 0)
              {
LABEL_23:

                goto LABEL_24;
              }
            }

            else if (v25)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v23 = 0;
          }
        }

        v25 = [v23 label];
        if (![v25 isEqualToString:v12])
        {
          goto LABEL_23;
        }

        v28 = [v23 authType];

        if (v28 == a3)
        {
          [v23 addContentList:v40];
          v39 = 1;
        }

LABEL_24:

        v21 = v21 + 1;
      }

      while (v19 != v21);
      v29 = [v17 countByEnumeratingWithState:&v42 objects:v47 count:16];
      v19 = v29;
      if (!v29)
      {

        a7 = v38;
        v11 = v37;
        if (v39)
        {
          goto LABEL_41;
        }

        goto LABEL_31;
      }
    }
  }

LABEL_31:
  if (![v17 count])
  {
    v30 = +[NSMutableArray array];

    v17 = v30;
  }

  v31 = objc_alloc_init(NSPPrivacyProxyAuxiliaryAuthInfo);
  [v31 setAuthType:a3];
  [v31 setLabel:v12];
  [v31 addContentList:v40];
  if (v13)
  {
    v32 = [NSPAuxiliaryAuthInfo alloc];
    v33 = v13;
    if (v32 && (v46.receiver = v32, v46.super_class = NSPAuxiliaryAuthInfo, (v34 = objc_msgSendSuper2(&v46, "init")) != 0))
    {
      v35 = v34;
      objc_storeStrong(v34 + 2, a6);

      objc_setProperty_atomic(v35, v36, v31, 8);
    }

    else
    {

      v35 = 0;
    }

    [v17 addObject:v35];
  }

  else
  {
    [v17 addObject:v31];
  }

LABEL_41:
  sub_10003DA14(NSPPrivateAccessTokenCache, v17, v11, a7);
  sub_10003DCEC(NSPPrivateAccessTokenCache, a7);
}

id sub_10003E43C(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v8 = a3;
  v40 = a4;
  v9 = objc_opt_self();
  v10 = sub_10003D498(NSPPrivateAccessTokenCache, v8, a5);
  v11 = [v10 mutableCopy];

  sub_10003DE3C(v9, v11);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = v13;
  v15 = *v46;
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v46 != v15)
      {
        objc_enumerationMutation(v12);
      }

      Property = *(*(&v45 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (Property)
        {
          Property = objc_getProperty(Property, v18, 8, 1);
        }

LABEL_10:
        v19 = Property;
        goto LABEL_12;
      }

      v19 = 0;
LABEL_12:
      v20 = [v19 label];
      if ([v20 isEqualToString:v40])
      {
        v21 = [v19 authType];

        if (v21 == a2)
        {
          v22 = [v19 contentLists];
          v23 = [v22 count];

          if (v23)
          {
            v24 = [v19 contentLists];
            v25 = [v24 firstObject];

            v26 = [v19 contentLists];
            [v26 removeObjectAtIndex:0];

            goto LABEL_20;
          }
        }
      }

      else
      {
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v45 objects:v50 count:16];
  }

  while (v14);
LABEL_19:
  v25 = 0;
LABEL_20:

  if ([v12 count])
  {
    v39 = v25;
    v27 = objc_alloc_init(NSMutableArray);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v28 = v12;
    v29 = [v28 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (!v29)
    {
      goto LABEL_36;
    }

    v30 = v29;
    v31 = *v42;
    while (1)
    {
      for (j = 0; j != v30; j = j + 1)
      {
        if (*v42 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v41 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v33)
          {
            v33 = objc_getProperty(v33, v34, 8, 1);
          }

LABEL_30:
          v35 = v33;
          goto LABEL_32;
        }

        v35 = 0;
LABEL_32:
        v36 = [v35 contentLists];
        v37 = [v36 count];

        if (v37)
        {
          [v27 addObject:v35];
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (!v30)
      {
LABEL_36:

        v25 = v39;
        goto LABEL_38;
      }
    }
  }

  v27 = v12;
LABEL_38:
  if ([v27 count])
  {
    sub_10003DA14(NSPPrivateAccessTokenCache, v27, v8, a5);
  }

  else
  {
    sub_10003D924(NSPPrivateAccessTokenCache, v8, a5);
  }

  sub_10003DCEC(NSPPrivateAccessTokenCache, a5);

  return v25;
}

id sub_10003E848(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (v4)
  {
    v6 = sub_10003BF04(NSPPrivateAccessTokenCache, v4);
    objc_opt_self();
    v7 = [NPUtilities copyDataFromKeychainWithIdentifier:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.LongLivedTokens" accountName:v6];

    if (!v7)
    {
      v11 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v8 = [NSSet setWithObjects:objc_opt_class(), 0];
    v18 = 0;
    v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v8 fromData:v7 error:&v18];
    v10 = v18;

    if (!v9 || v10)
    {
      v12 = nplog_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v20 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "unarchivedObjectOfClass for token data failed with error: %@", buf, 0xCu);
      }

      v11 = 0;
    }

    else
    {
      v11 = v9;
    }

    if (!v11)
    {
LABEL_23:
      v7 = 0;
      goto LABEL_24;
    }

    if (v5 && !sub_1000B3ED0(NSPPrivateAccessTokenResponse, v11, v5))
    {
      v15 = nplog_obj();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
LABEL_22:

        sub_10003C92C(NSPPrivateAccessTokenCache, v6);
        goto LABEL_23;
      }

      *buf = 138412290;
      v20 = v6;
      v16 = "Cached long-lived token from keychain for %@ has non-matching key, flushing tokens";
    }

    else
    {
      v13 = sub_1000B4078(NSPPrivateAccessTokenResponse, v11, v4);
      v14 = nplog_obj();
      v15 = v14;
      if (v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v20 = v6;
          _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Received cached long-lived token from keychain for %@", buf, 0xCu);
        }

        v11 = v11;
        v7 = v11;
        goto LABEL_24;
      }

      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 138412290;
      v20 = v6;
      v16 = "Cached long-lived token from keychain for %@ has non-matching challenge, flushing tokens";
    }

    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
    goto LABEL_22;
  }

  v6 = nplog_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v20 = "+[NSPPrivateAccessTokenCache copyLongLivedTokenFromCacheForChallenge:tokenKey:]";
    _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%s called with null challenge", buf, 0xCu);
  }

  v7 = 0;
LABEL_25:

  return v7;
}

void sub_10003EBA8(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = sub_10003BF04(NSPPrivateAccessTokenCache, v5);

  v13 = 0;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v13];

  v8 = v13;
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    objc_opt_self();
    [NPUtilities removeDataFromKeychainWithIdentifier:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.OneTimeTokens"];
    v12 = nplog_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Saving long-lived token for %@ in the keychain", buf, 0xCu);
    }

    [NPUtilities saveDataToKeychain:v7 withIdentifier:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.LongLivedTokens" accountName:v6];
  }

  else
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v9;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "archivedDataWithRootObject for token data failed with error: %@", buf, 0xCu);
    }
  }
}

id *sub_10003ED70(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (v4)
  {
    v6 = sub_10003BF04(NSPPrivateAccessTokenCache, v4);
    objc_opt_self();
    v7 = [NPUtilities copyDataFromKeychainWithIdentifier:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.Credentials" accountName:v6];

    if (!v7)
    {
      v11 = 0;
LABEL_25:

      goto LABEL_26;
    }

    v8 = [NSSet setWithObjects:objc_opt_class(), 0];
    v24 = 0;
    v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v8 fromData:v7 error:&v24];
    v10 = v24;

    if (!v9 || v10)
    {
      v12 = nplog_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v26 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "unarchivedObjectOfClass for credential data failed with error: %@", buf, 0xCu);
      }

      v11 = 0;
    }

    else
    {
      v11 = v9;
    }

    if (!v11)
    {
LABEL_24:
      v7 = 0;
      goto LABEL_25;
    }

    v13 = v11[1];
    if (v13 && (v14 = v13, [v11[1] timeIntervalSinceNow], v16 = v15, v14, v16 <= 0.0))
    {
      v21 = nplog_obj();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
LABEL_23:

        [NPUtilities removeDataFromKeychainWithIdentifier:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.Credentials" accountName:v6];
        goto LABEL_24;
      }

      *buf = 138412290;
      v26 = v6;
      v22 = "Cached credential from keychain for %@ has expired, flushing";
    }

    else
    {
      v17 = v11[3];
      if (!v17 || (v18 = v17, v19 = [v11[3] isEqualToData:v5], v18, (v19 & 1) != 0))
      {
        v20 = nplog_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v26 = v6;
          _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Received cached credential from keychain for %@", buf, 0xCu);
        }

        v11 = v11;
        v7 = v11;
        goto LABEL_25;
      }

      v21 = nplog_obj();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      *buf = 138412290;
      v26 = v6;
      v22 = "Cached credential from keychain for %@ non-matching key ID, flushing";
    }

    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
    goto LABEL_23;
  }

  v6 = nplog_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v26 = "+[NSPPrivateAccessTokenCache copyCredentialDataFromCacheForChallenge:keyID:]";
    _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%s called with null challenge", buf, 0xCu);
  }

  v7 = 0;
LABEL_26:

  return v7;
}

void sub_10003F108(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  objc_opt_self();
  v12 = sub_10003BF04(NSPPrivateAccessTokenCache, v11);

  v13 = [NSPCachedCredential alloc];
  v14 = v9;
  if (v13)
  {
    v21.receiver = v13;
    v21.super_class = NSPCachedCredential;
    v15 = objc_msgSendSuper2(&v21, "init");
    v13 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_expirationDate, a4);
    }
  }

  sub_10003B8A4(v13, v10);
  sub_100006B14(v13, v8);

  v20 = 0;
  v16 = [NSKeyedArchiver archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v20];
  v17 = v20;
  v18 = nplog_obj();
  v19 = v18;
  if (!v16 || v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v21.receiver) = 138412290;
      *(&v21.receiver + 4) = v17;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "archivedDataWithRootObject for credential data failed with error: %@", &v21, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v21.receiver) = 138412290;
      *(&v21.receiver + 4) = v12;
      _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Saving credential for %@ in the keychain", &v21, 0xCu);
    }

    [NPUtilities saveDataToKeychain:v16 withIdentifier:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.Credentials" accountName:v12];
  }
}

void sub_10003F344(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_10003BF04(NSPPrivateAccessTokenCache, v2);

  [NPUtilities removeDataFromKeychainWithIdentifier:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.Credentials" accountName:v3];
}

id sub_10003F3C4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, _DWORD *a6, void *a7)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = objc_opt_self();
  if (v11)
  {
    v16 = v15;
    v17 = sub_10003BF04(NSPPrivateAccessTokenCache, v11);
    v18 = sub_10003C2DC(NSPPrivateAccessTokenCache, v17);
    v19 = [v18 mutableCopy];

    v20 = v19;
    sub_10003CF24(v16, v19);
    if (![v19 count])
    {
      v49 = 0;
LABEL_68:

      goto LABEL_69;
    }

    v21 = [v19 firstObject];
    v22 = v21;
    if (v21)
    {
      v21 = v21[1];
    }

    v66 = [v21 firstObject];
    if (v22)
    {
      v23 = v22[2];
    }

    else
    {
      v23 = 0;
    }

    v24 = v22;
    v25 = v23;
    v65 = [v25 firstObject];

    v26 = v24;
    if (v24)
    {
      v27 = v24[4];
    }

    else
    {
      v27 = 0;
    }

    v64 = v27;
    v63 = v24;
    if (!v66)
    {
      goto LABEL_22;
    }

    if (v12 && !sub_1000B3ED0(NSPPrivateAccessTokenResponse, v66, v12))
    {
      v28 = nplog_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v72 = v17;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Cached one-time token from keychain for %@ has non-matching key, but not expired. Returning token.", buf, 0xCu);
      }
    }

    if (!sub_1000B4078(NSPPrivateAccessTokenResponse, v66, v11))
    {
      v50 = nplog_obj();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v72 = v17;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Cached one-time token from keychain for %@ has non-matching challenge, flushing tokens", buf, 0xCu);
      }

      sub_10003CA00(NSPPrivateAccessTokenCache, v17);
      v49 = 0;
      goto LABEL_66;
    }

    if (v64)
    {
      v29 = sub_10003BF04(NSPPrivateAccessTokenCache, v13);
      if (([v64 isEqualToString:v29] & 1) == 0)
      {
        v51 = v20;
        v52 = nplog_obj();
        if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
LABEL_65:

          sub_10003CA00(NSPPrivateAccessTokenCache, v17);
          v49 = 0;
          v20 = v51;
LABEL_66:
          v48 = v66;
LABEL_67:

          goto LABEL_68;
        }

        *buf = 138412290;
        v72 = v17;
        v53 = "Cached one-time token from keychain for %@ has non-matching long-lived token challenge, flushing one-time tokens";
        v54 = v52;
        v55 = 12;
LABEL_74:
        _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, v53, buf, v55);
        goto LABEL_65;
      }
    }

    v30 = sub_10003E848(NSPPrivateAccessTokenCache, v13, 0);
    v29 = v30;
    if (v30 && ([v30 isEqualToData:v14] & 1) != 0)
    {

      v26 = v24;
LABEL_22:
      if (v26)
      {
        v31 = v26[1];
      }

      else
      {
        v31 = 0;
      }

      [v31 removeObjectAtIndex:0];
      if (v65)
      {
        if (v26)
        {
          v32 = v26[2];
        }

        else
        {
          v32 = 0;
        }

        [v32 removeObjectAtIndex:0];
      }

      if (v26)
      {
        v33 = v26[1];
      }

      else
      {
        v33 = 0;
      }

      if (![v33 count])
      {
        [v20 removeObjectAtIndex:0];
      }

      if (a6)
      {
        v59 = v17;
        v60 = v13;
        v61 = v11;
        *a6 = 0;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v58 = v20;
        v34 = v20;
        v35 = [v34 countByEnumeratingWithState:&v67 objects:v75 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v68;
          do
          {
            v38 = 0;
            do
            {
              if (*v68 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v39 = *(*(&v67 + 1) + 8 * v38);
              if (v39)
              {
                v40 = *(v39 + 8);
              }

              else
              {
                v40 = 0;
              }

              if ([v40 count])
              {
                v41 = v39 ? *(v39 + 8) : 0;
                v42 = [v41 firstObject];
                v43 = sub_1000B3ED0(NSPPrivateAccessTokenResponse, v42, v12);

                if (v43)
                {
                  if (v39)
                  {
                    v44 = *(v39 + 8);
                  }

                  else
                  {
                    v44 = 0;
                  }

                  v45 = v44;
                  *a6 += [v45 count];
                }
              }

              v38 = v38 + 1;
            }

            while (v36 != v38);
            v46 = [v34 countByEnumeratingWithState:&v67 objects:v75 count:16];
            v36 = v46;
          }

          while (v46);
        }

        v13 = v60;
        v11 = v61;
        v20 = v58;
        v17 = v59;
      }

      sub_10003C5FC(NSPPrivateAccessTokenCache, v20, v17);
      v47 = nplog_obj();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        v57 = " with salt";
        if (!v65)
        {
          v57 = "";
        }

        *buf = 136446466;
        v72 = v57;
        v73 = 2112;
        v74 = v17;
        _os_log_debug_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "Received cached one-time token%{public}s from keychain for %@", buf, 0x16u);
      }

      v48 = v66;
      if (a7)
      {
        *a7 = v65;
      }

      v49 = v66;
      goto LABEL_67;
    }

    v51 = v20;
    v52 = nplog_obj();
    if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_65;
    }

    *buf = 0;
    v53 = "Matching long-lived token not found in the cache, flushing one-time tokens";
    v54 = v52;
    v55 = 2;
    goto LABEL_74;
  }

  v17 = nplog_obj();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v72 = "+[NSPPrivateAccessTokenCache copyOneTimeTokenFromCacheForChallenge:tokenKey:longLivedTokenChallenge:longLivedToken:tokensRemaining:outSalt:]";
    _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "%s called with null challenge", buf, 0xCu);
  }

  v49 = 0;
LABEL_69:

  return v49;
}

void sub_10003FA38(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = objc_opt_self();
  if ([v15 count])
  {
    v22 = sub_10003E848(NSPPrivateAccessTokenCache, v19, 0);
    v23 = v22;
    if (v22 && ([v22 isEqualToData:v20]& 1) != 0)
    {
      v57 = v23;
      v58 = v20;
      v59 = v19;
      v61 = v17;
      v62 = v16;
      v63 = v14;
      v64 = v15;
      v56 = sub_10003BF04(NSPPrivateAccessTokenCache, v14);
      v24 = sub_10003C2DC(NSPPrivateAccessTokenCache, v56);
      v25 = [v24 mutableCopy];

      sub_10003CF24(v21, v25);
      v26 = v25;
      v60 = v18;
      v27 = v18;
      objc_opt_self();
      v28 = objc_alloc_init(NSMutableArray);
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v29 = v26;
      v30 = [v29 countByEnumeratingWithState:&v69 objects:buf count:16];
      if (!v30)
      {
        goto LABEL_23;
      }

      v31 = v30;
      v32 = *v70;
      while (1)
      {
        v33 = 0;
        do
        {
          if (*v70 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v69 + 1) + 8 * v33);
          if (v34)
          {
            v35 = *(v34 + 8);
          }

          else
          {
            v35 = 0;
          }

          v36 = v35;
          if (![v36 count])
          {

LABEL_17:
            [v28 addObject:v34];
            goto LABEL_18;
          }

          if (v34)
          {
            v37 = *(v34 + 8);
          }

          else
          {
            v37 = 0;
          }

          v38 = [v37 firstObject];
          v39 = sub_1000B3ED0(NSPPrivateAccessTokenResponse, v38, v27);

          if (!v39)
          {
            goto LABEL_17;
          }

LABEL_18:
          v33 = v33 + 1;
        }

        while (v31 != v33);
        v40 = [v29 countByEnumeratingWithState:&v69 objects:buf count:16];
        v31 = v40;
        if (!v40)
        {
LABEL_23:

          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v41 = v28;
          v42 = [v41 countByEnumeratingWithState:&v65 objects:v73 count:16];
          v19 = v59;
          if (v42)
          {
            v43 = v42;
            v44 = *v66;
            do
            {
              for (i = 0; i != v43; i = i + 1)
              {
                if (*v66 != v44)
                {
                  objc_enumerationMutation(v41);
                }

                [v29 removeObject:*(*(&v65 + 1) + 8 * i)];
              }

              v43 = [v41 countByEnumeratingWithState:&v65 objects:v73 count:16];
            }

            while (v43);
          }

          v16 = v62;
          if (!v29)
          {
            v29 = objc_alloc_init(NSMutableArray);
          }

          v17 = v61;
          if (!v61 || ([v61 timeIntervalSinceNow], v46 < 0.0))
          {
            v47 = [[NSDate alloc] initWithTimeIntervalSinceNow:86400.0];

            v17 = v47;
          }

          v14 = v63;
          v48 = sub_10003B554([NSPToken alloc], v17);
          v49 = [NSMutableArray arrayWithArray:v64];
          sub_10000A4F0(v48, v49);

          v50 = [NSMutableArray arrayWithArray:v62];
          sub_10003B8A4(v48, v50);

          v51 = sub_10003BF04(NSPPrivateAccessTokenCache, v59);
          sub_10001B680(v48, v51);

          [v29 addObject:v48];
          objc_opt_self();
          v52 = [NPUtilities totalDataInKeychainWithIdentifier:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.OneTimeTokens"];
          v53 = nplog_obj();
          v54 = v53;
          if (v52 < 0x186A1)
          {
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134217984;
              v75 = v52;
              _os_log_debug_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "Keychain one-time tokens total %zu bytes, not flushing keychain", buf, 0xCu);
            }
          }

          else
          {
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v75 = v52;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Keychain one-time tokens total %zu bytes, flushing keychain", buf, 0xCu);
            }

            [NPUtilities removeDataFromKeychainWithIdentifier:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.OneTimeTokens"];
          }

          sub_10003C5FC(NSPPrivateAccessTokenCache, v29, v56);

          v15 = v64;
          v18 = v60;
          v23 = v57;
          v20 = v58;
          goto LABEL_46;
        }
      }
    }

    v55 = nplog_obj();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Matching long-lived token not found in the cache, not adding one-time token", buf, 2u);
    }
  }

  else
  {
    v23 = nplog_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v75 = "+[NSPPrivateAccessTokenCache addOneTimeTokensToCacheForChallenge:tokens:salts:expirationTime:tokenKey:longLivedTokenChallenge:longLivedToken:]";
      _os_log_fault_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "%s called with null (tokens.count > 0)", buf, 0xCu);
    }
  }

LABEL_46:
}

void sub_10004001C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_10003BF04(NSPPrivateAccessTokenCache, v2);

  sub_10003CA00(NSPPrivateAccessTokenCache, v3);
}

uint64_t sub_100040090(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = [v4 issuerName];
  v7 = [v4 originNames];
  v8 = [v7 count];

  if (v5 && v8 >= 2)
  {
    v9 = [v4 originNames];
    v10 = [v9 containsObject:v5];

    if (v10)
    {
      v85 = v6;
      v86 = v4;
      v84 = v5;
      v87 = v5;
LABEL_7:
      v83 = 0;
      goto LABEL_8;
    }

    v45 = nplog_obj();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v70 = [v4 originNames];
      *buf = 138412546;
      v128 = v5;
      v129 = 2112;
      v130 = v70;
      _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Failed to find origin name %@ in %@", buf, 0x16u);
    }
  }

  else
  {
    v11 = [v4 originName];
    if (v11)
    {
      v86 = v4;
      v87 = v11;
      v84 = v5;
      v85 = v6;
      goto LABEL_7;
    }

    if (![v4 typeRequiresOriginName])
    {
      v84 = v5;
      v85 = v6;
      v86 = v4;
      v87 = 0;
      v83 = 1;
LABEL_8:
      v12 = +[NSDate now];
      v13 = objc_alloc_init(NSMutableArray);
      v114 = 0u;
      v115 = 0u;
      v116 = 0u;
      v117 = 0u;
      v14 = qword_100129718;
      v15 = [v14 countByEnumeratingWithState:&v114 objects:v126 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v115;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v115 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v114 + 1) + 8 * i);
            v20 = [qword_100129718 objectForKeyedSubscript:v19];
            v21 = [v20 objectForKeyedSubscript:@"Time"];
            [v12 timeIntervalSinceDate:v21];
            if (v22 >= 21600.0)
            {
              [v13 addObject:v19];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v114 objects:v126 count:16];
        }

        while (v16);
      }

      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v23 = v13;
      v24 = [v23 countByEnumeratingWithState:&v110 objects:v125 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v111;
        do
        {
          for (j = 0; j != v25; j = j + 1)
          {
            if (*v111 != v26)
            {
              objc_enumerationMutation(v23);
            }

            [qword_100129718 setObject:0 forKeyedSubscript:*(*(&v110 + 1) + 8 * j)];
          }

          v25 = [v23 countByEnumeratingWithState:&v110 objects:v125 count:16];
        }

        while (v25);
      }

      v89 = objc_alloc_init(NSMutableArray);
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      obj = qword_100129720;
      v28 = [obj countByEnumeratingWithState:&v106 objects:v124 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v107;
        do
        {
          for (k = 0; k != v29; k = k + 1)
          {
            if (*v107 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v32 = *(*(&v106 + 1) + 8 * k);
            v33 = [qword_100129720 objectForKeyedSubscript:v32];
            v102 = 0u;
            v103 = 0u;
            v104 = 0u;
            v105 = 0u;
            v34 = [v33 countByEnumeratingWithState:&v102 objects:v123 count:16];
            if (!v34)
            {
              goto LABEL_37;
            }

            v35 = v34;
            v36 = 0;
            v37 = *v103;
            do
            {
              for (m = 0; m != v35; m = m + 1)
              {
                if (*v103 != v37)
                {
                  objc_enumerationMutation(v33);
                }

                [v12 timeIntervalSinceDate:*(*(&v102 + 1) + 8 * m)];
                v36 |= v39 < 300.0;
              }

              v35 = [v33 countByEnumeratingWithState:&v102 objects:v123 count:16];
            }

            while (v35);
            if ((v36 & 1) == 0)
            {
LABEL_37:
              [v89 addObject:v32];
            }
          }

          v29 = [obj countByEnumeratingWithState:&v106 objects:v124 count:16];
        }

        while (v29);
      }

      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v40 = v89;
      v41 = [v40 countByEnumeratingWithState:&v98 objects:v122 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v99;
        do
        {
          for (n = 0; n != v42; n = n + 1)
          {
            if (*v99 != v43)
            {
              objc_enumerationMutation(v40);
            }

            [qword_100129718 setObject:0 forKeyedSubscript:*(*(&v98 + 1) + 8 * n)];
          }

          v42 = [v40 countByEnumeratingWithState:&v98 objects:v122 count:16];
        }

        while (v42);
      }

      v45 = v87;
      if ([v86 tokenType] != 3)
      {
LABEL_55:
        if ((v83 & 1) == 0)
        {
          v57 = qword_100129720;
          if (!qword_100129720)
          {
            v58 = objc_alloc_init(NSMutableDictionary);
            v59 = qword_100129720;
            qword_100129720 = v58;

            v57 = qword_100129720;
          }

          v60 = [v57 objectForKeyedSubscript:v87];
          v61 = objc_alloc_init(NSMutableArray);
          if (v60)
          {
            v96 = 0u;
            v97 = 0u;
            v94 = 0u;
            v95 = 0u;
            v50 = v60;
            v62 = [v50 countByEnumeratingWithState:&v94 objects:v119 count:16];
            if (v62)
            {
              v63 = v62;
              v64 = *v95;
              do
              {
                for (ii = 0; ii != v63; ii = ii + 1)
                {
                  if (*v95 != v64)
                  {
                    objc_enumerationMutation(v50);
                  }

                  v66 = *(*(&v94 + 1) + 8 * ii);
                  [v12 timeIntervalSinceDate:v66];
                  if (v67 < 300.0)
                  {
                    [v61 addObject:v66];
                  }
                }

                v63 = [v50 countByEnumeratingWithState:&v94 objects:v119 count:16];
              }

              while (v63);
            }

            v45 = v87;
            if ([v61 count] >= 0xA)
            {
              [qword_100129720 setObject:v61 forKeyedSubscript:v87];

              v68 = nplog_obj();
              if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                v69 = "Origin rate exceeded, rejecting request";
LABEL_100:
                _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, v69, buf, 2u);
                goto LABEL_96;
              }

              goto LABEL_96;
            }
          }

          [v61 addObject:v12];
          [qword_100129720 setObject:v61 forKeyedSubscript:v45];
        }

        v71 = qword_100129728;
        v72 = objc_alloc_init(NSMutableArray);
        if (!v71)
        {
          goto LABEL_88;
        }

        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v73 = qword_100129728;
        v74 = [v73 countByEnumeratingWithState:&v90 objects:v118 count:16];
        if (v74)
        {
          v75 = v74;
          v76 = *v91;
          do
          {
            for (jj = 0; jj != v75; jj = jj + 1)
            {
              if (*v91 != v76)
              {
                objc_enumerationMutation(v73);
              }

              v78 = *(*(&v90 + 1) + 8 * jj);
              [v12 timeIntervalSinceDate:v78];
              if (v79 < 60.0)
              {
                [v72 addObject:v78];
              }
            }

            v75 = [v73 countByEnumeratingWithState:&v90 objects:v118 count:16];
          }

          while (v75);
        }

        if ([v72 count] > 9)
        {
          v80 = qword_100129728;
          qword_100129728 = v72;

          v50 = nplog_obj();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Overall token rate exceeded, rejecting request", buf, 2u);
          }

          v81 = 0;
        }

        else
        {
LABEL_88:
          [v72 addObject:v12];
          v50 = qword_100129728;
          qword_100129728 = v72;
          v81 = 1;
        }

        v45 = v87;
        goto LABEL_97;
      }

      v46 = qword_100129718;
      if (!qword_100129718)
      {
        v47 = objc_alloc_init(NSMutableDictionary);
        v48 = qword_100129718;
        qword_100129718 = v47;

        v46 = qword_100129718;
      }

      v49 = [v46 objectForKeyedSubscript:v87];
      v50 = v49;
      if (v49)
      {
        v51 = [v49 objectForKeyedSubscript:@"Issuer"];
        v52 = [v51 isEqualToString:v85];

        if (v52)
        {
LABEL_54:

          goto LABEL_55;
        }

        v53 = [v50 objectForKeyedSubscript:@"Time"];
        [v12 timeIntervalSinceDate:v53];
        v55 = v54;

        if (v55 < 21600.0)
        {
          v68 = nplog_obj();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v69 = "Issuer name changed, rejecting request";
            goto LABEL_100;
          }

LABEL_96:

          v81 = 0;
LABEL_97:

          v6 = v85;
          v4 = v86;
          v5 = v84;
          goto LABEL_98;
        }
      }

      v120[0] = @"Issuer";
      v120[1] = @"Time";
      v121[0] = v85;
      v121[1] = v12;
      v56 = [NSDictionary dictionaryWithObjects:v121 forKeys:v120 count:2];
      [qword_100129718 setObject:v56 forKeyedSubscript:v87];

      goto LABEL_54;
    }

    v45 = nplog_obj();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Failed to find origin name in challenge", buf, 2u);
    }
  }

  v81 = 0;
LABEL_98:

  return v81;
}

id *sub_100040AA0(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = NSPPrivacyProxyConfigAgent;
    v10 = objc_msgSendSuper2(&v12, "init");
    a1 = v10;
    if (v10)
    {
      [v10 setActive:1];
      [a1 setKernelActivated:0];
      [a1 setUserActivated:0];
      [a1 setVoluntary:1];
      [a1 setAgentUUID:v8];
      [a1 setAgentDescription:v9];
      objc_storeWeak(a1 + 7, v7);
    }
  }

  return a1;
}

void sub_100040BD0(id a1)
{
  qword_100129730 = [NSString stringWithUTF8String:nw_proxy_config_get_agent_domain()];

  _objc_release_x1();
}

void sub_100040C6C(id a1)
{
  qword_100129740 = [NSString stringWithUTF8String:nw_proxy_config_get_privacy_proxy_agent_type()];

  _objc_release_x1();
}

id *sub_100040F74(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = NSPPrivacyProxyTokenAgent;
    v10 = objc_msgSendSuper2(&v12, "init");
    a1 = v10;
    if (v10)
    {
      [v10 setActive:1];
      [a1 setKernelActivated:0];
      [a1 setUserActivated:0];
      [a1 setVoluntary:0];
      [a1 setAgentUUID:v8];
      [a1 setAgentDescription:v9];
      objc_storeWeak(a1 + 4, v7);
    }
  }

  return a1;
}

void sub_100041238(id a1)
{
  qword_100129750 = [NSString stringWithUTF8String:nw_proxy_config_get_system_privacy_proxy_agent_type()];

  _objc_release_x1();
}

void sub_10004136C(uint64_t a1, int a2)
{
  if (a1)
  {
    v4 = NPGetInternalQueue();
    dispatch_assert_queue_V2(v4);

    v5 = *(a1 + 8);
    if (a2)
    {
      if (!v5)
      {
        v6 = mrc_dns_proxy_parameters_create();
        if (v6)
        {
          v9 = if_nametoindex("lo0");
          mrc_dns_proxy_parameters_add_input_interface();
          v10 = mrc_dns_proxy_create();
          v11 = *(a1 + 8);
          *(a1 + 8) = v10;

          v13 = *(a1 + 8);
          mrc_dns_proxy_set_event_handler();
          v14 = *(a1 + 8);
          v15 = NPGetInternalQueue();
          mrc_dns_proxy_set_queue();

          v16 = *(a1 + 8);
          mrc_dns_proxy_activate();
          v12 = nplog_obj();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v18 = v9;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "DNS proxy request to start on lo0 (index %d)", buf, 8u);
          }
        }

        else
        {
          v12 = nplog_obj();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v18 = 0;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to create DNS proxy parameters - %d", buf, 8u);
          }
        }

        goto LABEL_17;
      }

      v6 = nplog_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "DNS proxy already running, not starting again";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
      }
    }

    else
    {
      if (!v5)
      {
        v6 = nplog_obj();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "DNS proxy not stopping because it was not running", buf, 2u);
        }

        goto LABEL_17;
      }

      mrc_dns_proxy_invalidate();
      v8 = *(a1 + 8);
      *(a1 + 8) = 0;

      v6 = nplog_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "DNS proxy request to stop";
        goto LABEL_9;
      }
    }

LABEL_17:
  }
}

uint64_t sub_100041640(uint64_t result)
{
  if (result)
  {
    if (qword_100129768 != -1)
    {
      dispatch_once(&qword_100129768, &stru_100109C20);
    }

    return byte_100129760;
  }

  return result;
}

void sub_10004168C(id a1)
{
  getpid();
  if (!sandbox_check())
  {
    byte_100129760 = 1;
  }
}

void sub_1000416E4(id a1, int a2, int a3)
{
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if ((a2 + 1) > 3)
    {
      v6 = "<INVALID EVENT>";
    }

    else
    {
      v6 = off_100109C80[a2 + 1];
    }

    v7 = 136315394;
    v8 = v6;
    v9 = 1024;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DNS proxy event handler got %s event (error %d)", &v7, 0x12u);
  }
}

void sub_1000417D0(void *a1, void *a2, void *a3, int a4, uint64_t a5)
{
  v7 = a2;
  v8 = a3;
  if (a1 && v7 && (a5 & 0xC) != 4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (v9 = v7, objc_opt_class(), v10 = objc_opt_isKindOfClass(), v9, (v10))
    {
      v11 = v7;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v13 = ")}";
      }

      else
      {
        v13 = ")";
      }

      v14 = "{(";
      if ((isKindOfClass & 1) == 0)
      {
        v14 = "(";
      }

      v15 = 4 * a4;
      [a1 appendFormat:@"\n%*s%@ = %s", (4 * a4 + 4), " ", v8, v14];
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v16 = v11;
      v17 = [v16 countByEnumeratingWithState:&v71 objects:v76 count:16];
      if (v17)
      {
        v18 = v17;
        v61 = (v15 + 4);
        v63 = v13;
        v58 = v7;
        v19 = (v15 + 8);
        v20 = *v72;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v72 != v20)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v71 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              v23 = [v22 descriptionWithIndent:(a4 + 2) options:a5];
              [a1 appendFormat:@"\n%*s{%@", v19, " ", v23];

              [a1 appendFormat:@"\n%*s}, ", v19, " ", v55];
            }

            else
            {
              v24 = v22;
              objc_opt_class();
              if (v24 && (v25 = objc_opt_isKindOfClass(), v24, (a5 & 3) == 3) && (v25 & 1) != 0)
              {
                [a1 appendFormat:@"\n%*s<%lu-char-str>, ", v19, " ", objc_msgSend(v24, "length")];
              }

              else
              {
                v26 = [v24 description];
                [a1 appendFormat:@"\n%*s%@, ", v19, " ", v26];
              }
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v71 objects:v76 count:16];
        }

        while (v18);

        [a1 appendFormat:@"\n%*s", v61, " "];
        v7 = v58;
        v13 = v63;
      }

      else
      {
      }

      [a1 appendFormat:@"%s", v13];
    }

    else
    {
      v27 = v9;
      objc_opt_class();
      v28 = objc_opt_isKindOfClass();

      if ((v28 & 1) == 0)
      {
        v47 = v27;
        objc_opt_class();
        v48 = objc_opt_isKindOfClass();

        if (v48)
        {
          v49 = [v47 UUIDString];
          [a1 appendFormat:@"\n%*s%@ = %@", (4 * a4 + 4), " ", v8, v49];
        }

        else
        {
          if (sub_100041F90(v47))
          {
            if ((~a5 & 3) != 0)
            {
              [a1 appendFormat:@"\n%*s%@ = %@", (4 * a4 + 4), " ", v8, v47];
            }

            else
            {
              [a1 appendFormat:@"\n%*s%@ = <%lu-char-str>", (4 * a4 + 4), " ", v8, objc_msgSend(v47, "length")];
            }

            goto LABEL_28;
          }

          if (sub_100041FD8(v47))
          {
            v50 = v47;
            v51 = [v50 length];
            v52 = [v50 description];

            [a1 appendFormat:@"\n%*s%@ = %u:%@", (4 * a4 + 4), " ", v8, v51, v52];
            goto LABEL_28;
          }

          v49 = v47;
          if (objc_opt_respondsToSelector())
          {
            v53 = [v49 descriptionWithIndent:? options:?];
            [a1 appendFormat:@"\n%*s%@ = {%@", (4 * (a4 + 1)), " ", v8, v53];

            [a1 appendFormat:@"\n%*s}", (4 * (a4 + 1)), " ", v56, v57];
          }

          else
          {
            v54 = [v49 description];
            [a1 appendFormat:@"\n%*s%@ = %@", (4 * a4 + 4), " ", v8, v54];
          }
        }

        goto LABEL_28;
      }

      v29 = v27;
      v30 = " ";
      [a1 appendFormat:@"\n%*s%@ = {", (4 * a4 + 4), " ", v8];
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v31 = v29;
      v32 = [v31 countByEnumeratingWithState:&v67 objects:v75 count:16];
      if (v32)
      {
        v33 = v32;
        v59 = v7;
        v60 = v8;
        v34 = (4 * a4 + 8);
        v35 = *v68;
        v64 = v31;
        v62 = *v68;
        do
        {
          for (j = 0; j != v33; j = j + 1)
          {
            if (*v68 != v35)
            {
              objc_enumerationMutation(v31);
            }

            v37 = *(*(&v67 + 1) + 8 * j);
            v38 = [v31 objectForKeyedSubscript:v37];
            if (objc_opt_respondsToSelector())
            {
              v39 = [v38 descriptionWithIndent:(a4 + 2) options:a5];
              [a1 appendFormat:@"\n%*s%@ = {%@", v34, v30, v37, v39];

              [a1 appendFormat:@"\n%*s}, ", v34, v30];
            }

            else
            {
              v40 = v34;
              v41 = v33;
              v42 = v30;
              v43 = v38;
              objc_opt_class();
              if (v43 && (v44 = objc_opt_isKindOfClass(), v43, (a5 & 3) == 3) && (v44 & 1) != 0)
              {
                v45 = [v43 length];
                v30 = v42;
                v34 = v40;
                [a1 appendFormat:@"\n%*s%@ = <%lu-char-str>", v40, v42, v37, v45];
              }

              else
              {
                v46 = [v43 description];
                v30 = v42;
                v34 = v40;
                [a1 appendFormat:@"\n%*s%@ = %@", v40, v42, v37, v46];
              }

              v33 = v41;
              v35 = v62;
              v31 = v64;
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v67 objects:v75 count:16];
        }

        while (v33);

        [a1 appendFormat:@"\n%*s", (4 * a4 + 4), v30];
        v7 = v59;
        v8 = v60;
      }

      else
      {
      }

      [a1 appendString:@"}"];
    }
  }

LABEL_28:
}

uint64_t sub_100041F90(void *a1)
{
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t sub_100041FD8(void *a1)
{
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id sub_100042020(id result, int a2, uint64_t a3, int a4, char a5)
{
  if (result && (a5 & 0xC) != 4)
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    return [result appendFormat:@"\n%*s%@ = %@", (4 * a4 + 4), " ", a3, v7, v5, v6];
  }

  return result;
}

id sub_10004208C(id result, uint64_t a2, uint64_t a3, int a4, char a5)
{
  if (result)
  {
    if ((a5 & 0xC) != 4)
    {
      return [result appendFormat:@"\n%*s%@ = %lld", (4 * a4 + 4), " ", a3, a2, v5, v6];
    }
  }

  return result;
}

NSObject *sub_1000420E0(NSObject *a1, void *a2, void *a3, int a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (!a1)
  {
    goto LABEL_11;
  }

  if (!v11)
  {
    v17 = nplog_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v31 = "[NSPPrivacyProxyNetworkRegistration initWithAgentUUID:name:systemAgentType:agentDescription:delegate:]";
      v26 = "%s called with null agentUUID";
LABEL_16:
      _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, v26, buf, 0xCu);
    }

LABEL_21:

    v17 = a1;
    a1 = 0;
    goto LABEL_10;
  }

  if (!v13)
  {
    v17 = nplog_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v31 = "[NSPPrivacyProxyNetworkRegistration initWithAgentUUID:name:systemAgentType:agentDescription:delegate:]";
      v26 = "%s called with null agentDescription";
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v29.receiver = a1;
  v29.super_class = NSPPrivacyProxyNetworkRegistration;
  a1 = [&v29 init];
  if (a1)
  {
    v15 = sub_100053E68();
    v17 = sub_100074784(v15, v16);

    objc_storeWeak(&a1[1].isa, v14);
    if (a4)
    {
      v18 = &off_100108C88;
    }

    else
    {
      v18 = off_100108C80;
    }

    v19 = *v18;
    v20 = objc_opt_class();
    v21 = sub_100040AA0(objc_alloc(*v18), a1, v11, v13);
    isa = a1[2].isa;
    a1[2].isa = v21;

    v23 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:v20 session:v17];
    v24 = a1[3].isa;
    a1[3].isa = v23;

    if (a1[2].isa)
    {
      if (a1[3].isa)
      {
LABEL_10:

        goto LABEL_11;
      }

      v27 = nplog_obj();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_20;
      }

      *buf = 136315138;
      v31 = "[NSPPrivacyProxyNetworkRegistration initWithAgentUUID:name:systemAgentType:agentDescription:delegate:]";
      v28 = "%s called with null _proxyConfigAgentRegistration";
    }

    else
    {
      v27 = nplog_obj();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
LABEL_20:

        goto LABEL_21;
      }

      *buf = 136315138;
      v31 = "[NSPPrivacyProxyNetworkRegistration initWithAgentUUID:name:systemAgentType:agentDescription:delegate:]";
      v28 = "%s called with null _proxyConfigAgent";
    }

    _os_log_fault_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, v28, buf, 0xCu);
    goto LABEL_20;
  }

LABEL_11:

  return a1;
}

id *sub_1000423BC(id *a1)
{
  if (a1)
  {
    a1 = [a1[2] agentDescription];
    v1 = vars8;
  }

  return a1;
}

void sub_1000423F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      if ([*(a1 + 24) isRegistered])
      {
        [*(a1 + 24) addToken:v4];
      }
    }

    else
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        v6 = 136315138;
        v7 = "[NSPPrivacyProxyNetworkRegistration addResumableSessionData:]";
        _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "%s called with null resumableSessionData", &v6, 0xCu);
      }
    }
  }
}

void *sub_1000424D0(void *result, uint64_t a2)
{
  if (result)
  {
    result = result[3];
    if (result)
    {
      return [result setLowWaterMark:a2];
    }
  }

  return result;
}

void sub_1000425FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004261C(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) agentDescription];
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Resumable session low water mark hit for %@ agent", &v11, 0xCu);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((v4 + 8));
  }

  else
  {
    WeakRetained = 0;
  }

  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = objc_loadWeakRetained((v7 + 8));
    }

    else
    {
      v8 = 0;
    }

    [v8 resumableSessionLowWaterMarkReached];
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

void sub_100042894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000428AC(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 64);
    v4 = [*(a1 + 32) agentDescription];
    v10[0] = 67109378;
    v10[1] = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Received error %d for %@ agent", v10, 0x12u);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((v5 + 8));
    v7 = *(a1 + 40);
  }

  else
  {
    v7 = 0;
    WeakRetained = 0;
  }

  [WeakRetained reportErrorForNetworkRegistration:v7 error:*(a1 + 64) withOptions:*(a1 + 48)];

  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_1000429C8(id *a1)
{
  if (!a1[3])
  {
    v15 = nplog_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v37 = 136315138;
    v38 = "[NSPPrivacyProxyNetworkRegistration resetProxyAgent]";
    v36 = "%s called with null self.proxyConfigAgentRegistration";
LABEL_34:
    _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, v36, &v37, 0xCu);
    goto LABEL_25;
  }

  v2 = a1[2];
  if (!v2)
  {
    v15 = nplog_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v37 = 136315138;
    v38 = "[NSPPrivacyProxyNetworkRegistration resetProxyAgent]";
    v36 = "%s called with null self.proxyConfigAgent";
    goto LABEL_34;
  }

  [v2 setActive:1];
  [a1[2] setVoluntary:0];
  [a1[2] setUserActivated:0];
  [a1[2] setKernelActivated:0];
  v3 = a1[2];
  v5 = a1[4];
  if (v3)
  {
    objc_setProperty_atomic(v3, v4, v5, 32);
  }

  v6 = a1[2];
  v8 = a1[5];
  if (v6)
  {
    objc_setProperty_atomic(v6, v7, v8, 40);
  }

  v9 = [a1[3] isRegistered];
  v11 = a1[2];
  v10 = a1[3];
  if (v9)
  {
    v12 = v10;
    v13 = [v12 updateNetworkAgent:v11];

    v14 = nplog_obj();
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = a1[2];
        v17 = [v16 agentDescription];
        v18 = a1[2];
        v19 = [v18 agentUUID];
        Property = a1[2];
        v22 = Property;
        if (Property)
        {
          Property = objc_getProperty(Property, v21, 40, 1);
        }

        v23 = Property;
        v37 = 138412802;
        v38 = v17;
        v39 = 2112;
        v40 = v19;
        v41 = 2112;
        v42 = v23;
        v24 = "Updated %@ proxy agent (%@) with hash %@";
LABEL_18:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v24, &v37, 0x20u);
LABEL_19:

        goto LABEL_25;
      }

      goto LABEL_25;
    }

    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v16 = a1[2];
    v17 = [v16 agentDescription];
    v18 = a1[2];
    v19 = [v18 agentUUID];
    v31 = a1[2];
    v22 = v31;
    if (v31)
    {
      v31 = objc_getProperty(v31, v32, 40, 1);
    }

    v23 = v31;
    v37 = 138412802;
    v38 = v17;
    v39 = 2112;
    v40 = v19;
    v41 = 2112;
    v42 = v23;
    v33 = "Failed to update %@ proxy agent (%@) with hash %@";
LABEL_29:
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v33, &v37, 0x20u);
    goto LABEL_19;
  }

  [v10 setRegisteredNetworkAgent:a1[2] fileDescriptor:0xFFFFFFFFLL];
  [a1[3] unregisterNetworkAgent];
  v25 = a1[2];
  v26 = a1[3];
  v27 = [v26 registerNetworkAgent:v25];

  v28 = nplog_obj();
  v15 = v28;
  if ((v27 & 1) == 0)
  {
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v16 = a1[2];
    v17 = [v16 agentDescription];
    v18 = a1[2];
    v19 = [v18 agentUUID];
    v34 = a1[2];
    v22 = v34;
    if (v34)
    {
      v34 = objc_getProperty(v34, v35, 40, 1);
    }

    v23 = v34;
    v37 = 138412802;
    v38 = v17;
    v39 = 2112;
    v40 = v19;
    v41 = 2112;
    v42 = v23;
    v33 = "Failed to register %@ proxy agent (%@) with hash %@";
    goto LABEL_29;
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v16 = a1[2];
    v17 = [v16 agentDescription];
    v18 = a1[2];
    v19 = [v18 agentUUID];
    v29 = a1[2];
    v22 = v29;
    if (v29)
    {
      v29 = objc_getProperty(v29, v30, 40, 1);
    }

    v23 = v29;
    v37 = 138412802;
    v38 = v17;
    v39 = 2112;
    v40 = v19;
    v41 = 2112;
    v42 = v23;
    v24 = "Registered %@ proxy agent (%@) with hash %@";
    goto LABEL_18;
  }

LABEL_25:
}

id *sub_100042E8C(id *result)
{
  if (result)
  {
    v1 = result;
    result = [result[3] isRegistered];
    if (result)
    {
      v2 = nplog_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = v1[2];
        v4 = [v3 agentUUID];
        v5 = 138412290;
        v6 = v4;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Un-registering proxy agent with UUID %@", &v5, 0xCu);
      }

      return [v1[3] unregisterNetworkAgent];
    }
  }

  return result;
}

id sub_100042F70(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 32);
    if (v1 && (v2 = malloc_type_malloc(0x20uLL, 0xD12AC5B9uLL)) != 0)
    {
      v3 = v2;
      CC_SHA256([v1 bytes], objc_msgSend(v1, "length"), v2);
      v4 = [NSData dataWithBytes:v3 length:16];
      free(v3);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

NSObject *sub_100043094(NSObject *result, void *a2, void *a3)
{
  if (result)
  {
    return sub_1000420E0(result, a2, 0, 1, @"MultiHop", a3);
  }

  return result;
}

uint64_t sub_1000430B4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, char a10, char a11, char a12, char a13, char a14, char a15, void *a16, void *a17, uint64_t a18, void *a19, char a20, char a21, void *a22, char a23, void *a24, void *a25, void *a26, char a27, void *a28)
{
  v120 = a2;
  v34 = a3;
  v119 = a4;
  v118 = a5;
  v117 = a6;
  v116 = a7;
  v115 = a8;
  v114 = a9;
  v35 = a16;
  v36 = a17;
  v121 = a19;
  v37 = a22;
  v113 = a24;
  v112 = a25;
  v38 = a26;
  v39 = a28;
  v106 = v34;
  if (!a1)
  {
    v98 = 0;
    v40 = v120;
    v77 = v121;
    goto LABEL_99;
  }

  v40 = v120;
  if (!v120)
  {
    log = nplog_obj();
    if (!os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
    {
LABEL_103:
      v98 = 0;
      v77 = v121;
      goto LABEL_98;
    }

    *buf = 136315138;
    *&buf[4] = "[NSPPrivacyProxyMultiHopNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopNextHopsArray:secondProxyHopNextHopsArray:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:firstProxyHopUsesX25519:secondProxyHopUsesX25519:firstProxyHopUsesPQTLS:secondProxyHopUsesPQTLS:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:fallbackAgentUUID:shouldFailOpen:allowGeohash:geohashOverride:enableDNSFilteringHint:preferredPathPatterns:alternateAgentUUIDs:fallbackProxyConfigHash:fallbackSupportsUDPProxying:configEpoch:]";
    v100 = "%s called with null firstHopProxyURL";
LABEL_122:
    _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, v100, buf, 0xCu);
    goto LABEL_103;
  }

  if (!v34)
  {
    log = nplog_obj();
    if (!os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_103;
    }

    *buf = 136315138;
    *&buf[4] = "[NSPPrivacyProxyMultiHopNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopNextHopsArray:secondProxyHopNextHopsArray:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:firstProxyHopUsesX25519:secondProxyHopUsesX25519:firstProxyHopUsesPQTLS:secondProxyHopUsesPQTLS:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:fallbackAgentUUID:shouldFailOpen:allowGeohash:geohashOverride:enableDNSFilteringHint:preferredPathPatterns:alternateAgentUUIDs:fallbackProxyConfigHash:fallbackSupportsUDPProxying:configEpoch:]";
    v100 = "%s called with null secondHopProxyURL";
    goto LABEL_122;
  }

  v104 = v37;
  v105 = v38;
  v41 = [v120 UTF8String];
  v42 = [v34 UTF8String];
  url = nw_endpoint_create_url(v41);
  v44 = nw_endpoint_create_url(v42);
  v45 = v44;
  log = url;
  if (!url)
  {
    v110 = nplog_obj();
    if (os_log_type_enabled(v110, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NSPPrivacyProxyMultiHopNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopNextHopsArray:secondProxyHopNextHopsArray:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:firstProxyHopUsesX25519:secondProxyHopUsesX25519:firstProxyHopUsesPQTLS:secondProxyHopUsesPQTLS:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:fallbackAgentUUID:shouldFailOpen:allowGeohash:geohashOverride:enableDNSFilteringHint:preferredPathPatterns:alternateAgentUUIDs:fallbackProxyConfigHash:fallbackSupportsUDPProxying:configEpoch:]";
      _os_log_fault_impl(&_mh_execute_header, v110, OS_LOG_TYPE_FAULT, "%s called with null firstHopProxyEndpoint", buf, 0xCu);
    }

    v98 = 0;
    v38 = v105;
    goto LABEL_110;
  }

  if (!v44)
  {
    v110 = nplog_obj();
    v38 = v105;
    if (os_log_type_enabled(v110, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NSPPrivacyProxyMultiHopNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopNextHopsArray:secondProxyHopNextHopsArray:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:firstProxyHopUsesX25519:secondProxyHopUsesX25519:firstProxyHopUsesPQTLS:secondProxyHopUsesPQTLS:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:fallbackAgentUUID:shouldFailOpen:allowGeohash:geohashOverride:enableDNSFilteringHint:preferredPathPatterns:alternateAgentUUIDs:fallbackProxyConfigHash:fallbackSupportsUDPProxying:configEpoch:]";
      _os_log_fault_impl(&_mh_execute_header, v110, OS_LOG_TYPE_FAULT, "%s called with null secondHopProxyEndpoint", buf, 0xCu);
    }

    v98 = 0;
LABEL_110:
    v37 = v104;
    v77 = v121;
    goto LABEL_97;
  }

  masque = nw_proxy_hop_create_masque();
  v47 = nw_proxy_hop_create_masque();
  v48 = v47;
  v110 = masque;
  if (!masque)
  {
    v80 = nplog_obj();
    v37 = v104;
    if (!os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_114;
    }

    *buf = 136315138;
    *&buf[4] = "[NSPPrivacyProxyMultiHopNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopNextHopsArray:secondProxyHopNextHopsArray:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:firstProxyHopUsesX25519:secondProxyHopUsesX25519:firstProxyHopUsesPQTLS:secondProxyHopUsesPQTLS:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:fallbackAgentUUID:shouldFailOpen:allowGeohash:geohashOverride:enableDNSFilteringHint:preferredPathPatterns:alternateAgentUUIDs:fallbackProxyConfigHash:fallbackSupportsUDPProxying:configEpoch:]";
    v101 = "%s called with null firstHopProxy";
LABEL_124:
    _os_log_fault_impl(&_mh_execute_header, v80, OS_LOG_TYPE_FAULT, v101, buf, 0xCu);
    goto LABEL_114;
  }

  if (v47)
  {
    v49 = masque;
    v50 = v117;
    if (([v50 isEqualToString:@"RFC9298"] & 1) == 0)
    {
      [v50 isEqualToString:@"draft-12"];
    }

    nw_proxy_hop_set_masque_version();

    v51 = v48;
    v52 = v116;
    if (([v52 isEqualToString:@"RFC9298"] & 1) == 0)
    {
      [v52 isEqualToString:@"draft-12"];
    }

    nw_proxy_hop_set_masque_version();

    if (a10)
    {
      nw_proxy_hop_set_supports_resumption();
    }

    if (a11)
    {
      nw_proxy_hop_set_supports_resumption();
    }

    if (a12)
    {
      nw_proxy_hop_set_use_x25519();
    }

    if (a13)
    {
      nw_proxy_hop_set_use_x25519();
    }

    v109 = v36;
    if (a14)
    {
      nw_proxy_hop_set_use_pqtls();
    }

    v103 = v48;
    v108 = v35;
    if (a15)
    {
      nw_proxy_hop_set_use_pqtls();
    }

    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v53 = v115;
    v54 = [v53 countByEnumeratingWithState:&v142 objects:v152 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v143;
      do
      {
        for (i = 0; i != v55; i = i + 1)
        {
          if (*v143 != v56)
          {
            objc_enumerationMutation(v53);
          }

          v58 = sub_100043D98(*(*(&v142 + 1) + 8 * i));
          if (v58)
          {
            nw_proxy_hop_add_next_hop_host();
          }
        }

        v55 = [v53 countByEnumeratingWithState:&v142 objects:v152 count:16];
      }

      while (v55);
    }

    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v59 = v114;
    v60 = [v59 countByEnumeratingWithState:&v138 objects:v151 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v139;
      do
      {
        for (j = 0; j != v61; j = j + 1)
        {
          if (*v139 != v62)
          {
            objc_enumerationMutation(v59);
          }

          v64 = sub_100043D98(*(*(&v138 + 1) + 8 * j));
          if (v64)
          {
            nw_proxy_hop_add_next_hop_host();
          }
        }

        v61 = [v59 countByEnumeratingWithState:&v138 objects:v151 count:16];
      }

      while (v61);
    }

    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v65 = v119;
    v66 = [v65 countByEnumeratingWithState:&v134 objects:v150 count:16];
    if (v66)
    {
      v67 = v66;
      v68 = *v135;
      do
      {
        for (k = 0; k != v67; k = k + 1)
        {
          if (*v135 != v68)
          {
            objc_enumerationMutation(v65);
          }

          v70 = *(*(&v134 + 1) + 8 * k);
          if ([v70 length])
          {
            [v70 bytes];
            [v70 length];
            nw_proxy_hop_add_server_raw_public_key();
          }
        }

        v67 = [v65 countByEnumeratingWithState:&v134 objects:v150 count:16];
      }

      while (v67);
    }

    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v71 = v118;
    v72 = [v71 countByEnumeratingWithState:&v130 objects:v149 count:16];
    if (v72)
    {
      v73 = v72;
      v74 = *v131;
      do
      {
        for (m = 0; m != v73; m = m + 1)
        {
          if (*v131 != v74)
          {
            objc_enumerationMutation(v71);
          }

          v76 = *(*(&v130 + 1) + 8 * m);
          if ([v76 length])
          {
            [v76 bytes];
            [v76 length];
            nw_proxy_hop_add_server_raw_public_key();
          }
        }

        v73 = [v71 countByEnumeratingWithState:&v130 objects:v149 count:16];
      }

      while (v73);
    }

    v35 = v108;
    if (v108)
    {
      *buf = 0uLL;
      [v108 getUUIDBytes:buf];
      nw_proxy_hop_add_token_header();
    }

    if (v109)
    {
      *buf = 0uLL;
      [v109 getUUIDBytes:buf];
      nw_proxy_hop_add_token_header();
    }

    v77 = v121;
    v37 = v104;
    if (a21)
    {
      if (!os_variant_has_internal_diagnostics() || ![v104 length] || (+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@", v104), v78 = objc_claimAutoreleasedReturnValue(), v79 = objc_msgSend(v78, "UTF8String"), v78, v37 = v104, v77 = v121, v79))
      {
        nw_proxy_hop_add_extra_header();
      }
    }

    if (a23)
    {
      nw_proxy_hop_add_extra_header();
    }

    if (a27)
    {
      nw_proxy_hop_supports_udp_proxying_over_http2();
    }

    v80 = nw_array_create();
    if (v80)
    {
      v81 = v37;
      nw_array_append();
      nw_array_append();
      default_privacy_proxy = nw_proxy_config_create_default_privacy_proxy();
      if (default_privacy_proxy)
      {
        v83 = default_privacy_proxy;
        if (v121)
        {
          *buf = 0uLL;
          [v121 getUUIDBytes:buf];
          nw_proxy_config_set_fallback_proxy_agent();
        }

        nw_proxy_config_set_is_privacy_proxy();
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v84 = v113;
        v85 = [v84 countByEnumeratingWithState:&v126 objects:v147 count:16];
        if (v85)
        {
          v86 = v85;
          v87 = *v127;
          do
          {
            for (n = 0; n != v86; n = n + 1)
            {
              if (*v127 != v87)
              {
                objc_enumerationMutation(v84);
              }

              [*(*(&v126 + 1) + 8 * n) UTF8String];
              nw_proxy_config_add_preferred_domain();
            }

            v86 = [v84 countByEnumeratingWithState:&v126 objects:v147 count:16];
          }

          while (v86);
        }

        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v89 = v112;
        v90 = [v89 countByEnumeratingWithState:&v122 objects:v146 count:16];
        if (v90)
        {
          v91 = v90;
          v92 = *v123;
          do
          {
            for (ii = 0; ii != v91; ii = ii + 1)
            {
              if (*v123 != v92)
              {
                objc_enumerationMutation(v89);
              }

              v94 = *(*(&v122 + 1) + 8 * ii);
              *buf = 0uLL;
              [v94 getUUIDBytes:buf];
              nw_proxy_config_add_alternate_agent();
            }

            v91 = [v89 countByEnumeratingWithState:&v122 objects:v146 count:16];
          }

          while (v91);
        }

        if (v39)
        {
          v95 = v83;
          [v39 unsignedShortValue];
          nw_proxy_config_set_epoch();
        }

        v96 = nw_proxy_config_copy_agent_data();
        v97 = *(a1 + 32);
        *(a1 + 32) = v96;

        objc_storeStrong((a1 + 40), a26);
        sub_1000429C8(a1);
        v98 = 1;
      }

      else
      {
        v102 = nplog_obj();
        if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[NSPPrivacyProxyMultiHopNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopNextHopsArray:secondProxyHopNextHopsArray:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:firstProxyHopUsesX25519:secondProxyHopUsesX25519:firstProxyHopUsesPQTLS:secondProxyHopUsesPQTLS:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:fallbackAgentUUID:shouldFailOpen:allowGeohash:geohashOverride:enableDNSFilteringHint:preferredPathPatterns:alternateAgentUUIDs:fallbackProxyConfigHash:fallbackSupportsUDPProxying:configEpoch:]";
          _os_log_fault_impl(&_mh_execute_header, v102, OS_LOG_TYPE_FAULT, "%s called with null proxyConfiguration", buf, 0xCu);
        }

        v83 = 0;
        v98 = 0;
      }

      v37 = v81;
      v77 = v121;
      v48 = v103;
      v35 = v108;
    }

    else
    {
      v83 = nplog_obj();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[NSPPrivacyProxyMultiHopNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopNextHopsArray:secondProxyHopNextHopsArray:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:firstProxyHopUsesX25519:secondProxyHopUsesX25519:firstProxyHopUsesPQTLS:secondProxyHopUsesPQTLS:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:fallbackAgentUUID:shouldFailOpen:allowGeohash:geohashOverride:enableDNSFilteringHint:preferredPathPatterns:alternateAgentUUIDs:fallbackProxyConfigHash:fallbackSupportsUDPProxying:configEpoch:]";
        _os_log_fault_impl(&_mh_execute_header, v83, OS_LOG_TYPE_FAULT, "%s called with null proxyHopArray", buf, 0xCu);
      }

      v98 = 0;
      v48 = v103;
    }

    v36 = v109;

    v40 = v120;
    goto LABEL_96;
  }

  v80 = nplog_obj();
  v37 = v104;
  if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[NSPPrivacyProxyMultiHopNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopNextHopsArray:secondProxyHopNextHopsArray:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:firstProxyHopUsesX25519:secondProxyHopUsesX25519:firstProxyHopUsesPQTLS:secondProxyHopUsesPQTLS:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:fallbackAgentUUID:shouldFailOpen:allowGeohash:geohashOverride:enableDNSFilteringHint:preferredPathPatterns:alternateAgentUUIDs:fallbackProxyConfigHash:fallbackSupportsUDPProxying:configEpoch:]";
    v101 = "%s called with null secondHopProxy";
    goto LABEL_124;
  }

LABEL_114:
  v98 = 0;
  v77 = v121;
LABEL_96:

  v38 = v105;
LABEL_97:

LABEL_98:
LABEL_99:

  return v98;
}

nw_endpoint_t sub_100043D98(void *a1)
{
  v1 = a1;
  if ([v1 containsString:@":"])
  {
    v2 = [v1 componentsSeparatedByString:@":"];
    if ([v2 count] == 2)
    {
      v3 = [v2 firstObject];
      v4 = [v2 lastObject];
      host = nw_endpoint_create_host([v3 UTF8String], objc_msgSend(v4, "UTF8String"));
    }

    else
    {
      host = nw_endpoint_create_host([v1 UTF8String], "443");
    }
  }

  else
  {
    host = 0;
  }

  return host;
}

NSObject *sub_100043E7C(NSObject *result, void *a2, void *a3)
{
  if (result)
  {
    return sub_1000420E0(result, a2, 0, 0, @"SingleHop", a3);
  }

  return result;
}

uint64_t sub_100043E9C(uint64_t a1, void *a2, void *a3, void *a4, int a5, int a6, int a7, void *a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13)
{
  v19 = a2;
  v20 = a3;
  v55 = a4;
  v52 = a8;
  v21 = a10;
  obj = a12;
  v22 = a12;
  v54 = a13;
  if (!a1)
  {
    v44 = 0;
    v23 = v19;
    v37 = v52;
    v25 = v54;
    goto LABEL_35;
  }

  v23 = v19;
  if (!v19)
  {
    log = nplog_obj();
    v25 = v54;
    if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NSPPrivacyProxySingleHopNetworkRegistration setProxyAgentConfiguration:proxyKeyArray:proxyVersion:supportsResumption:usesX25519:usesPQTLS:tokenAgentUUID:proxyHopUsesStandardToken:fallbackAgentUUID:shouldFailOpen:fallbackProxyConfigHash:configEpoch:]";
      _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s called with null proxyURL", &buf, 0xCu);
    }

    v44 = 0;
    v37 = v52;
    goto LABEL_34;
  }

  url = nw_endpoint_create_url([v19 UTF8String]);
  v25 = v54;
  log = url;
  if (!url)
  {
    v51 = nplog_obj();
    v37 = v52;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NSPPrivacyProxySingleHopNetworkRegistration setProxyAgentConfiguration:proxyKeyArray:proxyVersion:supportsResumption:usesX25519:usesPQTLS:tokenAgentUUID:proxyHopUsesStandardToken:fallbackAgentUUID:shouldFailOpen:fallbackProxyConfigHash:configEpoch:]";
      _os_log_fault_impl(&_mh_execute_header, v51, OS_LOG_TYPE_FAULT, "%s called with null proxyHopEndpoint", &buf, 0xCu);
    }

    v44 = 0;
    goto LABEL_33;
  }

  masque = nw_proxy_hop_create_masque();
  v51 = masque;
  if (!masque)
  {
    v38 = nplog_obj();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NSPPrivacyProxySingleHopNetworkRegistration setProxyAgentConfiguration:proxyKeyArray:proxyVersion:supportsResumption:usesX25519:usesPQTLS:tokenAgentUUID:proxyHopUsesStandardToken:fallbackAgentUUID:shouldFailOpen:fallbackProxyConfigHash:configEpoch:]";
      _os_log_fault_impl(&_mh_execute_header, v38, OS_LOG_TYPE_FAULT, "%s called with null proxyHop", &buf, 0xCu);
    }

    v44 = 0;
    v37 = v52;
    goto LABEL_32;
  }

  v47 = v22;
  v27 = masque;
  v28 = v55;
  if (([v28 isEqualToString:@"RFC9298"] & 1) == 0)
  {
    [v28 isEqualToString:@"draft-12"];
  }

  nw_proxy_hop_set_masque_version();

  if (a5)
  {
    nw_proxy_hop_set_supports_resumption();
  }

  if (a6)
  {
    nw_proxy_hop_set_use_x25519();
  }

  v50 = v21;
  v29 = v23;
  if (a7)
  {
    nw_proxy_hop_set_use_pqtls();
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v30 = v20;
  v31 = v20;
  v32 = [v31 countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v57;
    do
    {
      for (i = 0; i != v33; i = i + 1)
      {
        if (*v57 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v56 + 1) + 8 * i);
        if ([v36 length])
        {
          [v36 bytes];
          [v36 length];
          nw_proxy_hop_add_server_raw_public_key();
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v33);
  }

  v37 = v52;
  if (v52)
  {
    buf = 0uLL;
    [v52 getUUIDBytes:&buf];
    nw_proxy_hop_add_token_header();
  }

  v38 = nw_array_create();
  if (v38)
  {
    nw_array_append();
    default_privacy_proxy = nw_proxy_config_create_default_privacy_proxy();
    v23 = v29;
    if (default_privacy_proxy)
    {
      v40 = default_privacy_proxy;
      v20 = v30;
      v21 = v50;
      if (v50)
      {
        buf = 0uLL;
        [v50 getUUIDBytes:&buf];
        nw_proxy_config_set_fallback_proxy_agent();
      }

      nw_proxy_config_set_is_privacy_proxy();
      v25 = v54;
      if (v54)
      {
        v41 = v40;
        [v54 unsignedShortValue];
        nw_proxy_config_set_epoch();
      }

      v42 = nw_proxy_config_copy_agent_data();
      v43 = *(a1 + 32);
      *(a1 + 32) = v42;

      objc_storeStrong((a1 + 40), obj);
      sub_1000429C8(a1);
      v44 = 1;
      goto LABEL_31;
    }

    v46 = nplog_obj();
    v20 = v30;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NSPPrivacyProxySingleHopNetworkRegistration setProxyAgentConfiguration:proxyKeyArray:proxyVersion:supportsResumption:usesX25519:usesPQTLS:tokenAgentUUID:proxyHopUsesStandardToken:fallbackAgentUUID:shouldFailOpen:fallbackProxyConfigHash:configEpoch:]";
      _os_log_fault_impl(&_mh_execute_header, v46, OS_LOG_TYPE_FAULT, "%s called with null proxyConfiguration", &buf, 0xCu);
    }

    v40 = 0;
    v44 = 0;
  }

  else
  {
    v40 = nplog_obj();
    v23 = v29;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NSPPrivacyProxySingleHopNetworkRegistration setProxyAgentConfiguration:proxyKeyArray:proxyVersion:supportsResumption:usesX25519:usesPQTLS:tokenAgentUUID:proxyHopUsesStandardToken:fallbackAgentUUID:shouldFailOpen:fallbackProxyConfigHash:configEpoch:]";
      _os_log_fault_impl(&_mh_execute_header, v40, OS_LOG_TYPE_FAULT, "%s called with null proxyHopArray", &buf, 0xCu);
    }

    v44 = 0;
    v20 = v30;
  }

  v21 = v50;
  v25 = v54;
LABEL_31:

  v22 = v47;
LABEL_32:

LABEL_33:
LABEL_34:

LABEL_35:
  return v44;
}

NSObject *sub_100044458(NSObject *a1, void *a2, void *a3, void *a4)
{
  v4 = a1;
  if (a1)
  {
    v7 = a4;
    v8 = a3;
    v9 = a2;
    v10 = [NSString stringWithFormat:@"ObliviousHop-%@", v8];
    v11 = sub_1000420E0(v4, v9, v8, 0, v10, v7);

    v4 = v11;
  }

  return v4;
}

uint64_t sub_100044518(uint64_t a1, void *a2, void *a3, void *a4, int a5, int a6, int a7, void *a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, unsigned int a14, void *a15)
{
  v20 = a2;
  v21 = a3;
  v57 = a4;
  v56 = a8;
  v22 = a10;
  v23 = a12;
  v24 = a13;
  v53 = a15;
  v49 = a1;
  v55 = v21;
  if (!a1)
  {
    v39 = 0;
    v43 = v56;
    v25 = v22;
    v36 = v53;
    goto LABEL_45;
  }

  if (!v20)
  {
    v44 = nplog_obj();
    v25 = v22;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NSPPrivacyProxyObliviousHopsNetworkRegistration setProxyAgentConfiguration:proxyKeyArray:proxyVersion:supportsResumption:usesX25519:usesPQTLS:tokenAgentUUID:proxyHopUsesStandardToken:fallbackAgentUUID:shouldFailOpen:obliviousConfig:obliviousPath:obliviousHTTPType:fallbackProxyConfigHash:]";
      v46 = "%s called with null proxyURL";
      goto LABEL_65;
    }

LABEL_51:
    v39 = 0;
    v43 = v56;
    v36 = v53;
    goto LABEL_44;
  }

  v25 = v22;
  if (!v23)
  {
    v44 = nplog_obj();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NSPPrivacyProxyObliviousHopsNetworkRegistration setProxyAgentConfiguration:proxyKeyArray:proxyVersion:supportsResumption:usesX25519:usesPQTLS:tokenAgentUUID:proxyHopUsesStandardToken:fallbackAgentUUID:shouldFailOpen:obliviousConfig:obliviousPath:obliviousHTTPType:fallbackProxyConfigHash:]";
      v46 = "%s called with null obliviousConfig";
      goto LABEL_65;
    }

    goto LABEL_51;
  }

  if (!v24)
  {
    v44 = nplog_obj();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_51;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[NSPPrivacyProxyObliviousHopsNetworkRegistration setProxyAgentConfiguration:proxyKeyArray:proxyVersion:supportsResumption:usesX25519:usesPQTLS:tokenAgentUUID:proxyHopUsesStandardToken:fallbackAgentUUID:shouldFailOpen:obliviousConfig:obliviousPath:obliviousHTTPType:fallbackProxyConfigHash:]";
    v46 = "%s called with null obliviousPath";
LABEL_65:
    _os_log_fault_impl(&_mh_execute_header, v44, OS_LOG_TYPE_FAULT, v46, &buf, 0xCu);
    goto LABEL_51;
  }

  v54 = v24;
  url = nw_endpoint_create_url([v20 UTF8String]);
  if (!url)
  {
    v27 = nplog_obj();
    v43 = v56;
    v36 = v53;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NSPPrivacyProxyObliviousHopsNetworkRegistration setProxyAgentConfiguration:proxyKeyArray:proxyVersion:supportsResumption:usesX25519:usesPQTLS:tokenAgentUUID:proxyHopUsesStandardToken:fallbackAgentUUID:shouldFailOpen:obliviousConfig:obliviousPath:obliviousHTTPType:fallbackProxyConfigHash:]";
      _os_log_fault_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, "%s called with null proxyHopEndpoint", &buf, 0xCu);
    }

    v39 = 0;
    goto LABEL_43;
  }

  masque = nw_proxy_hop_create_masque();
  if (!masque)
  {
    v47 = nplog_obj();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NSPPrivacyProxyObliviousHopsNetworkRegistration setProxyAgentConfiguration:proxyKeyArray:proxyVersion:supportsResumption:usesX25519:usesPQTLS:tokenAgentUUID:proxyHopUsesStandardToken:fallbackAgentUUID:shouldFailOpen:obliviousConfig:obliviousPath:obliviousHTTPType:fallbackProxyConfigHash:]";
      _os_log_fault_impl(&_mh_execute_header, v47, OS_LOG_TYPE_FAULT, "%s called with null proxyHop", &buf, 0xCu);
    }

    v27 = 0;
    v39 = 0;
    v43 = v56;
    v36 = v53;
    goto LABEL_43;
  }

  v27 = masque;
  v28 = v57;
  if (([v28 isEqualToString:@"RFC9298"] & 1) == 0)
  {
    [v28 isEqualToString:@"draft-12"];
  }

  nw_proxy_hop_set_masque_version();

  if (a5)
  {
    nw_proxy_hop_set_supports_resumption();
    if (!a6)
    {
LABEL_11:
      if (!a7)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if (!a6)
  {
    goto LABEL_11;
  }

  nw_proxy_hop_set_use_x25519();
  if (a7)
  {
LABEL_12:
    nw_proxy_hop_set_use_pqtls();
  }

LABEL_13:
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v29 = v21;
  v30 = [v29 countByEnumeratingWithState:&v58 objects:v63 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v59;
    do
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v59 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v58 + 1) + 8 * i);
        if ([v34 length])
        {
          [v34 bytes];
          [v34 length];
          nw_proxy_hop_add_server_raw_public_key();
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v58 objects:v63 count:16];
    }

    while (v31);
  }

  if (v56)
  {
    buf = 0uLL;
    [v56 getUUIDBytes:&buf];
    nw_proxy_hop_add_token_header();
  }

  v25 = v22;
  if (a14 > 1)
  {
    v36 = v53;
    if (a14 != 2)
    {
LABEL_39:
      v42 = nplog_obj();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[NSPPrivacyProxyObliviousHopsNetworkRegistration setProxyAgentConfiguration:proxyKeyArray:proxyVersion:supportsResumption:usesX25519:usesPQTLS:tokenAgentUUID:proxyHopUsesStandardToken:fallbackAgentUUID:shouldFailOpen:obliviousConfig:obliviousPath:obliviousHTTPType:fallbackProxyConfigHash:]";
        _os_log_fault_impl(&_mh_execute_header, v42, OS_LOG_TYPE_FAULT, "%s called with null obliviousHop", &buf, 0xCu);
      }

      v39 = 0;
      goto LABEL_42;
    }

    [v23 bytes];
    [v23 length];
    [v54 UTF8String];
    oblivious_http_with_context = nw_proxy_hop_create_oblivious_http_with_context();
  }

  else
  {
    [v23 bytes];
    [v23 length];
    [v54 UTF8String];
    oblivious_http_with_context = nw_proxy_hop_create_oblivious_http();
    v36 = v53;
    if (a14 == 1)
    {
      nw_proxy_hop_set_enable_chunked_oblivious_http();
    }
  }

  if (!oblivious_http_with_context)
  {
    goto LABEL_39;
  }

  v37 = nw_array_create();
  if (v37)
  {
    nw_array_append();
    nw_array_append();
    default_privacy_proxy = nw_proxy_config_create_default_privacy_proxy();
    if (default_privacy_proxy)
    {
      if (v25)
      {
        buf = 0uLL;
        [v25 getUUIDBytes:&buf];
        nw_proxy_config_set_fallback_proxy_agent();
      }

      v39 = 1;
      nw_proxy_config_set_is_privacy_proxy();
      v40 = nw_proxy_config_copy_agent_data();
      v41 = *(v49 + 32);
      *(v49 + 32) = v40;

      objc_storeStrong((v49 + 40), a15);
      sub_1000429C8(v49);
      goto LABEL_38;
    }

    v48 = nplog_obj();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NSPPrivacyProxyObliviousHopsNetworkRegistration setProxyAgentConfiguration:proxyKeyArray:proxyVersion:supportsResumption:usesX25519:usesPQTLS:tokenAgentUUID:proxyHopUsesStandardToken:fallbackAgentUUID:shouldFailOpen:obliviousConfig:obliviousPath:obliviousHTTPType:fallbackProxyConfigHash:]";
      _os_log_fault_impl(&_mh_execute_header, v48, OS_LOG_TYPE_FAULT, "%s called with null proxyConfiguration", &buf, 0xCu);
    }
  }

  else
  {
    default_privacy_proxy = nplog_obj();
    if (os_log_type_enabled(default_privacy_proxy, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NSPPrivacyProxyObliviousHopsNetworkRegistration setProxyAgentConfiguration:proxyKeyArray:proxyVersion:supportsResumption:usesX25519:usesPQTLS:tokenAgentUUID:proxyHopUsesStandardToken:fallbackAgentUUID:shouldFailOpen:obliviousConfig:obliviousPath:obliviousHTTPType:fallbackProxyConfigHash:]";
      _os_log_fault_impl(&_mh_execute_header, default_privacy_proxy, OS_LOG_TYPE_FAULT, "%s called with null proxyHopArray", &buf, 0xCu);
    }
  }

  v39 = 0;
LABEL_38:

LABEL_42:
  v43 = v56;
LABEL_43:

  v24 = v54;
  v44 = url;
LABEL_44:

LABEL_45:
  return v39;
}

NSObject *sub_100044C54(NSObject *result, void *a2, void *a3)
{
  if (result)
  {
    return sub_1000420E0(result, a2, 0, 1, @"MultiHopFallback", a3);
  }

  return result;
}

uint64_t sub_100044C74(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, char a10, char a11, char a12, char a13, char a14, char a15, void *a16, void *a17, __int16 a18, char a19, char a20, void *a21, char a22, char a23, void *a24)
{
  v102 = a2;
  v31 = a3;
  v101 = a4;
  v100 = a5;
  v32 = a6;
  v33 = a7;
  v99 = a8;
  v98 = a9;
  v97 = a16;
  v96 = a17;
  v95 = a21;
  v34 = a24;
  v94 = a1;
  if (!a1)
  {
    v82 = 0;
    v35 = v102;
    goto LABEL_82;
  }

  v35 = v102;
  if (!v102)
  {
    url = nplog_obj();
    if (!os_log_type_enabled(url, OS_LOG_TYPE_FAULT))
    {
LABEL_86:
      v82 = 0;
      goto LABEL_81;
    }

    *buf = 136315138;
    *&buf[4] = "[NSPPrivacyProxyMultiHopFallbackNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopNextHopsArray:secondProxyHopNextHopsArray:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:firstProxyHopUsesX25519:secondProxyHopUsesX25519:firstProxyHopUsesPQTLS:secondProxyHopUsesPQTLS:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:shouldFailOpen:allowGeohash:geohashOverride:enableDNSFilteringHint:fallbackSupportsUDPProxying:configEpoch:]";
    v84 = "%s called with null firstHopProxyURL";
LABEL_102:
    _os_log_fault_impl(&_mh_execute_header, url, OS_LOG_TYPE_FAULT, v84, buf, 0xCu);
    goto LABEL_86;
  }

  if (!v31)
  {
    url = nplog_obj();
    if (!os_log_type_enabled(url, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_86;
    }

    *buf = 136315138;
    *&buf[4] = "[NSPPrivacyProxyMultiHopFallbackNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopNextHopsArray:secondProxyHopNextHopsArray:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:firstProxyHopUsesX25519:secondProxyHopUsesX25519:firstProxyHopUsesPQTLS:secondProxyHopUsesPQTLS:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:shouldFailOpen:allowGeohash:geohashOverride:enableDNSFilteringHint:fallbackSupportsUDPProxying:configEpoch:]";
    v84 = "%s called with null secondHopProxyURL";
    goto LABEL_102;
  }

  v36 = [v102 UTF8String];
  v37 = [v31 UTF8String];
  url = nw_endpoint_create_url(v36);
  v39 = nw_endpoint_create_url(v37);
  v40 = v39;
  v93 = v31;
  if (!url)
  {
    masque = nplog_obj();
    if (!os_log_type_enabled(masque, OS_LOG_TYPE_FAULT))
    {
LABEL_90:
      v82 = 0;
      goto LABEL_80;
    }

    *buf = 136315138;
    *&buf[4] = "[NSPPrivacyProxyMultiHopFallbackNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopNextHopsArray:secondProxyHopNextHopsArray:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:firstProxyHopUsesX25519:secondProxyHopUsesX25519:firstProxyHopUsesPQTLS:secondProxyHopUsesPQTLS:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:shouldFailOpen:allowGeohash:geohashOverride:enableDNSFilteringHint:fallbackSupportsUDPProxying:configEpoch:]";
    v85 = "%s called with null firstHopProxyEndpoint";
LABEL_104:
    _os_log_fault_impl(&_mh_execute_header, masque, OS_LOG_TYPE_FAULT, v85, buf, 0xCu);
    goto LABEL_90;
  }

  if (!v39)
  {
    masque = nplog_obj();
    if (!os_log_type_enabled(masque, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_90;
    }

    *buf = 136315138;
    *&buf[4] = "[NSPPrivacyProxyMultiHopFallbackNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopNextHopsArray:secondProxyHopNextHopsArray:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:firstProxyHopUsesX25519:secondProxyHopUsesX25519:firstProxyHopUsesPQTLS:secondProxyHopUsesPQTLS:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:shouldFailOpen:allowGeohash:geohashOverride:enableDNSFilteringHint:fallbackSupportsUDPProxying:configEpoch:]";
    v85 = "%s called with null secondHopProxyEndpoint";
    goto LABEL_104;
  }

  masque = nw_proxy_hop_create_masque();
  v42 = nw_proxy_hop_create_masque();
  v43 = v42;
  v92 = v33;
  if (!masque)
  {
    v76 = nplog_obj();
    if (!os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_94;
    }

    *buf = 136315138;
    *&buf[4] = "[NSPPrivacyProxyMultiHopFallbackNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopNextHopsArray:secondProxyHopNextHopsArray:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:firstProxyHopUsesX25519:secondProxyHopUsesX25519:firstProxyHopUsesPQTLS:secondProxyHopUsesPQTLS:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:shouldFailOpen:allowGeohash:geohashOverride:enableDNSFilteringHint:fallbackSupportsUDPProxying:configEpoch:]";
    v86 = "%s called with null firstHopProxy";
LABEL_106:
    _os_log_fault_impl(&_mh_execute_header, v76, OS_LOG_TYPE_FAULT, v86, buf, 0xCu);
    goto LABEL_94;
  }

  if (v42)
  {
    v89 = v40;
    v90 = url;
    v44 = masque;
    v45 = v32;
    v91 = v34;
    if (([v45 isEqualToString:@"RFC9298"] & 1) == 0)
    {
      [v45 isEqualToString:@"draft-12"];
    }

    nw_proxy_hop_set_masque_version();

    v46 = v43;
    v47 = v33;
    if (([v47 isEqualToString:@"RFC9298"] & 1) == 0)
    {
      [v47 isEqualToString:@"draft-12"];
    }

    nw_proxy_hop_set_masque_version();

    if (a10)
    {
      nw_proxy_hop_set_supports_resumption();
    }

    if (a11)
    {
      nw_proxy_hop_set_supports_resumption();
    }

    if (a12)
    {
      nw_proxy_hop_set_use_x25519();
    }

    v88 = v43;
    if (a13)
    {
      nw_proxy_hop_set_use_x25519();
    }

    v48 = masque;
    if (a14)
    {
      nw_proxy_hop_set_use_pqtls();
    }

    v49 = v32;
    if (a15)
    {
      nw_proxy_hop_set_use_pqtls();
    }

    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v50 = v99;
    v51 = [v50 countByEnumeratingWithState:&v115 objects:v123 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v116;
      do
      {
        for (i = 0; i != v52; i = i + 1)
        {
          if (*v116 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = sub_100043D98(*(*(&v115 + 1) + 8 * i));
          if (v55)
          {
            nw_proxy_hop_add_next_hop_host();
          }
        }

        v52 = [v50 countByEnumeratingWithState:&v115 objects:v123 count:16];
      }

      while (v52);
    }

    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v56 = v98;
    v57 = [v56 countByEnumeratingWithState:&v111 objects:v122 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v112;
      do
      {
        for (j = 0; j != v58; j = j + 1)
        {
          if (*v112 != v59)
          {
            objc_enumerationMutation(v56);
          }

          v61 = sub_100043D98(*(*(&v111 + 1) + 8 * j));
          if (v61)
          {
            nw_proxy_hop_add_next_hop_host();
          }
        }

        v58 = [v56 countByEnumeratingWithState:&v111 objects:v122 count:16];
      }

      while (v58);
    }

    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v62 = v101;
    v63 = [v62 countByEnumeratingWithState:&v107 objects:v121 count:16];
    if (v63)
    {
      v64 = v63;
      v65 = *v108;
      do
      {
        for (k = 0; k != v64; k = k + 1)
        {
          if (*v108 != v65)
          {
            objc_enumerationMutation(v62);
          }

          v67 = *(*(&v107 + 1) + 8 * k);
          if ([v67 length])
          {
            [v67 bytes];
            [v67 length];
            nw_proxy_hop_add_server_raw_public_key();
          }
        }

        v64 = [v62 countByEnumeratingWithState:&v107 objects:v121 count:16];
      }

      while (v64);
    }

    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v68 = v100;
    v69 = [v68 countByEnumeratingWithState:&v103 objects:v120 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = *v104;
      do
      {
        for (m = 0; m != v70; m = m + 1)
        {
          if (*v104 != v71)
          {
            objc_enumerationMutation(v68);
          }

          v73 = *(*(&v103 + 1) + 8 * m);
          if ([v73 length])
          {
            [v73 bytes];
            [v73 length];
            nw_proxy_hop_add_server_raw_public_key();
          }
        }

        v70 = [v68 countByEnumeratingWithState:&v103 objects:v120 count:16];
      }

      while (v70);
    }

    if (v97)
    {
      *buf = 0uLL;
      [v97 getUUIDBytes:buf];
      nw_proxy_hop_add_token_header();
    }

    v32 = v49;
    if (v96)
    {
      *buf = 0uLL;
      [v96 getUUIDBytes:buf];
      nw_proxy_hop_add_token_header();
    }

    masque = v48;
    v43 = v88;
    if (a20)
    {
      if (!os_variant_has_internal_diagnostics() || ![v95 length] || (+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@", v95), v74 = objc_claimAutoreleasedReturnValue(), v75 = objc_msgSend(v74, "UTF8String"), v74, v75))
      {
        nw_proxy_hop_add_extra_header();
      }
    }

    if (a22)
    {
      nw_proxy_hop_add_extra_header();
    }

    v76 = nw_array_create();
    if (v76)
    {
      nw_array_append();
      nw_array_append();
      if (a23)
      {
        nw_proxy_hop_supports_udp_proxying_over_http2();
      }

      fallback_privacy_proxy = nw_proxy_config_create_fallback_privacy_proxy();
      v35 = v102;
      v34 = v91;
      if (fallback_privacy_proxy)
      {
        v78 = fallback_privacy_proxy;
        nw_proxy_config_set_is_privacy_proxy();
        if (v91)
        {
          v79 = v78;
          [v91 unsignedShortValue];
          nw_proxy_config_set_epoch();
        }

        v80 = nw_proxy_config_copy_agent_data();
        v81 = *(v94 + 32);
        *(v94 + 32) = v80;

        sub_1000429C8(v94);
        v82 = 1;
      }

      else
      {
        v87 = nplog_obj();
        if (os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[NSPPrivacyProxyMultiHopFallbackNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopNextHopsArray:secondProxyHopNextHopsArray:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:firstProxyHopUsesX25519:secondProxyHopUsesX25519:firstProxyHopUsesPQTLS:secondProxyHopUsesPQTLS:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:shouldFailOpen:allowGeohash:geohashOverride:enableDNSFilteringHint:fallbackSupportsUDPProxying:configEpoch:]";
          _os_log_fault_impl(&_mh_execute_header, v87, OS_LOG_TYPE_FAULT, "%s called with null proxyConfiguration", buf, 0xCu);
        }

        v78 = 0;
        v82 = 0;
      }
    }

    else
    {
      v78 = nplog_obj();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[NSPPrivacyProxyMultiHopFallbackNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopNextHopsArray:secondProxyHopNextHopsArray:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:firstProxyHopUsesX25519:secondProxyHopUsesX25519:firstProxyHopUsesPQTLS:secondProxyHopUsesPQTLS:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:shouldFailOpen:allowGeohash:geohashOverride:enableDNSFilteringHint:fallbackSupportsUDPProxying:configEpoch:]";
        _os_log_fault_impl(&_mh_execute_header, v78, OS_LOG_TYPE_FAULT, "%s called with null proxyHopArray", buf, 0xCu);
      }

      v82 = 0;
      v35 = v102;
      v34 = v91;
    }

    v40 = v89;
    url = v90;
    goto LABEL_79;
  }

  v76 = nplog_obj();
  if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[NSPPrivacyProxyMultiHopFallbackNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopNextHopsArray:secondProxyHopNextHopsArray:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:firstProxyHopUsesX25519:secondProxyHopUsesX25519:firstProxyHopUsesPQTLS:secondProxyHopUsesPQTLS:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:shouldFailOpen:allowGeohash:geohashOverride:enableDNSFilteringHint:fallbackSupportsUDPProxying:configEpoch:]";
    v86 = "%s called with null secondHopProxy";
    goto LABEL_106;
  }

LABEL_94:
  v82 = 0;
LABEL_79:

  v33 = v92;
LABEL_80:

  v31 = v93;
LABEL_81:

LABEL_82:
  return v82;
}

NSObject *sub_1000456FC(NSObject *result, void *a2, void *a3)
{
  if (result)
  {
    return sub_1000420E0(result, a2, 0, 0, @"SingleHopFallback", a3);
  }

  return result;
}

uint64_t sub_10004571C(uint64_t a1, void *a2, void *a3, void *a4, int a5, int a6, int a7, void *a8, uint64_t a9, void *a10)
{
  v17 = a2;
  v47 = a3;
  v18 = a4;
  v19 = a8;
  v20 = a10;
  if (a1)
  {
    if (v17)
    {
      url = nw_endpoint_create_url([v17 UTF8String]);
      if (url)
      {
        masque = nw_proxy_hop_create_masque();
        v23 = masque;
        if (masque)
        {
          v44 = v19;
          v46 = v17;
          v24 = masque;
          v25 = v18;
          if (([v25 isEqualToString:@"RFC9298"] & 1) == 0)
          {
            [v25 isEqualToString:@"draft-12"];
          }

          v43 = v23;
          nw_proxy_hop_set_masque_version();

          if (a5)
          {
            nw_proxy_hop_set_supports_resumption();
          }

          v26 = url;
          v45 = v20;
          if (a6)
          {
            nw_proxy_hop_set_use_x25519();
          }

          v27 = v18;
          if (a7)
          {
            nw_proxy_hop_set_use_pqtls();
          }

          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v28 = v47;
          v29 = [v28 countByEnumeratingWithState:&v48 objects:v53 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v49;
            do
            {
              for (i = 0; i != v30; i = i + 1)
              {
                if (*v49 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = *(*(&v48 + 1) + 8 * i);
                if ([v33 length])
                {
                  [v33 bytes];
                  [v33 length];
                  nw_proxy_hop_add_server_raw_public_key();
                }
              }

              v30 = [v28 countByEnumeratingWithState:&v48 objects:v53 count:16];
            }

            while (v30);
          }

          v19 = v44;
          if (v44)
          {
            buf = 0uLL;
            [v44 getUUIDBytes:&buf];
            nw_proxy_hop_add_token_header();
          }

          v34 = nw_array_create();
          v18 = v27;
          if (v34)
          {
            nw_array_append();
            fallback_privacy_proxy = nw_proxy_config_create_fallback_privacy_proxy();
            url = v26;
            if (fallback_privacy_proxy)
            {
              v36 = fallback_privacy_proxy;
              nw_proxy_config_set_is_privacy_proxy();
              v20 = v45;
              v17 = v46;
              v23 = v43;
              if (v45)
              {
                v37 = v36;
                [v45 unsignedShortValue];
                nw_proxy_config_set_epoch();
              }

              v38 = nw_proxy_config_copy_agent_data();
              v39 = *(a1 + 32);
              *(a1 + 32) = v38;

              sub_1000429C8(a1);
              v40 = 1;
            }

            else
            {
              v42 = nplog_obj();
              v20 = v45;
              v17 = v46;
              v23 = v43;
              if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
              {
                LODWORD(buf) = 136315138;
                *(&buf + 4) = "[NSPPrivacyProxySingleHopFallbackNetworkRegistration setProxyAgentConfiguration:proxyKeyArray:proxyVersion:supportsResumption:usesX25519:usesPQTLS:tokenAgentUUID:proxyHopUsesStandardToken:shouldFailOpen:configEpoch:]";
                _os_log_fault_impl(&_mh_execute_header, v42, OS_LOG_TYPE_FAULT, "%s called with null proxyConfiguration", &buf, 0xCu);
              }

              v36 = 0;
              v40 = 0;
            }
          }

          else
          {
            v36 = nplog_obj();
            url = v26;
            if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
            {
              LODWORD(buf) = 136315138;
              *(&buf + 4) = "[NSPPrivacyProxySingleHopFallbackNetworkRegistration setProxyAgentConfiguration:proxyKeyArray:proxyVersion:supportsResumption:usesX25519:usesPQTLS:tokenAgentUUID:proxyHopUsesStandardToken:shouldFailOpen:configEpoch:]";
              _os_log_fault_impl(&_mh_execute_header, v36, OS_LOG_TYPE_FAULT, "%s called with null proxyHopArray", &buf, 0xCu);
            }

            v40 = 0;
            v20 = v45;
            v17 = v46;
            v23 = v43;
          }
        }

        else
        {
          v34 = nplog_obj();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            LODWORD(buf) = 136315138;
            *(&buf + 4) = "[NSPPrivacyProxySingleHopFallbackNetworkRegistration setProxyAgentConfiguration:proxyKeyArray:proxyVersion:supportsResumption:usesX25519:usesPQTLS:tokenAgentUUID:proxyHopUsesStandardToken:shouldFailOpen:configEpoch:]";
            _os_log_fault_impl(&_mh_execute_header, v34, OS_LOG_TYPE_FAULT, "%s called with null proxyHop", &buf, 0xCu);
          }

          v40 = 0;
        }
      }

      else
      {
        v23 = nplog_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "[NSPPrivacyProxySingleHopFallbackNetworkRegistration setProxyAgentConfiguration:proxyKeyArray:proxyVersion:supportsResumption:usesX25519:usesPQTLS:tokenAgentUUID:proxyHopUsesStandardToken:shouldFailOpen:configEpoch:]";
          _os_log_fault_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "%s called with null proxyHopEndpoint", &buf, 0xCu);
        }

        v40 = 0;
      }
    }

    else
    {
      url = nplog_obj();
      if (os_log_type_enabled(url, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[NSPPrivacyProxySingleHopFallbackNetworkRegistration setProxyAgentConfiguration:proxyKeyArray:proxyVersion:supportsResumption:usesX25519:usesPQTLS:tokenAgentUUID:proxyHopUsesStandardToken:shouldFailOpen:configEpoch:]";
        _os_log_fault_impl(&_mh_execute_header, url, OS_LOG_TYPE_FAULT, "%s called with null proxyURL", &buf, 0xCu);
      }

      v40 = 0;
    }
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

NSObject *sub_100045C5C(NSObject *a1, void *a2, void *a3, void *a4)
{
  v4 = a1;
  if (a1)
  {
    v7 = a4;
    v8 = a3;
    v9 = a2;
    v10 = [NSString stringWithFormat:@"ObliviousHopFallback-%@", v8];
    v11 = sub_1000420E0(v4, v9, v8, 0, v10, v7);

    v4 = v11;
  }

  return v4;
}

uint64_t sub_100045D1C(uint64_t a1, void *a2, void *a3, void *a4, int a5, int a6, int a7, void *a8, uint64_t a9, void *a10, void *a11, unsigned int a12)
{
  v19 = a2;
  v20 = a3;
  v51 = a4;
  v50 = a8;
  v21 = a10;
  v22 = a11;
  v23 = v22;
  if (!a1)
  {
    v38 = 0;
    v42 = v50;
    goto LABEL_44;
  }

  if (!v19)
  {
    url = nplog_obj();
    if (os_log_type_enabled(url, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NSPPrivacyProxyObliviousHopsFallbackNetworkRegistration setProxyAgentConfiguration:proxyKeyArray:proxyVersion:supportsResumption:usesX25519:usesPQTLS:tokenAgentUUID:proxyHopUsesStandardToken:shouldFailOpen:obliviousConfig:obliviousPath:obliviousHTTPType:]";
      v44 = "%s called with null proxyURL";
      goto LABEL_64;
    }

LABEL_50:
    v38 = 0;
    v42 = v50;
    goto LABEL_43;
  }

  if (!v21)
  {
    url = nplog_obj();
    if (os_log_type_enabled(url, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NSPPrivacyProxyObliviousHopsFallbackNetworkRegistration setProxyAgentConfiguration:proxyKeyArray:proxyVersion:supportsResumption:usesX25519:usesPQTLS:tokenAgentUUID:proxyHopUsesStandardToken:shouldFailOpen:obliviousConfig:obliviousPath:obliviousHTTPType:]";
      v44 = "%s called with null obliviousConfig";
      goto LABEL_64;
    }

    goto LABEL_50;
  }

  if (!v22)
  {
    url = nplog_obj();
    if (!os_log_type_enabled(url, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_50;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[NSPPrivacyProxyObliviousHopsFallbackNetworkRegistration setProxyAgentConfiguration:proxyKeyArray:proxyVersion:supportsResumption:usesX25519:usesPQTLS:tokenAgentUUID:proxyHopUsesStandardToken:shouldFailOpen:obliviousConfig:obliviousPath:obliviousHTTPType:]";
    v44 = "%s called with null obliviousPath";
LABEL_64:
    _os_log_fault_impl(&_mh_execute_header, url, OS_LOG_TYPE_FAULT, v44, &buf, 0xCu);
    goto LABEL_50;
  }

  v47 = a1;
  url = nw_endpoint_create_url([v19 UTF8String]);
  v49 = v19;
  if (!url)
  {
    v26 = nplog_obj();
    v42 = v50;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NSPPrivacyProxyObliviousHopsFallbackNetworkRegistration setProxyAgentConfiguration:proxyKeyArray:proxyVersion:supportsResumption:usesX25519:usesPQTLS:tokenAgentUUID:proxyHopUsesStandardToken:shouldFailOpen:obliviousConfig:obliviousPath:obliviousHTTPType:]";
      _os_log_fault_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "%s called with null proxyHopEndpoint", &buf, 0xCu);
    }

    v38 = 0;
    goto LABEL_42;
  }

  masque = nw_proxy_hop_create_masque();
  if (!masque)
  {
    v45 = nplog_obj();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NSPPrivacyProxyObliviousHopsFallbackNetworkRegistration setProxyAgentConfiguration:proxyKeyArray:proxyVersion:supportsResumption:usesX25519:usesPQTLS:tokenAgentUUID:proxyHopUsesStandardToken:shouldFailOpen:obliviousConfig:obliviousPath:obliviousHTTPType:]";
      _os_log_fault_impl(&_mh_execute_header, v45, OS_LOG_TYPE_FAULT, "%s called with null proxyHop", &buf, 0xCu);
    }

    v26 = 0;
    goto LABEL_40;
  }

  v26 = masque;
  v27 = v51;
  if (([v27 isEqualToString:@"RFC9298"] & 1) == 0)
  {
    [v27 isEqualToString:@"draft-12"];
  }

  nw_proxy_hop_set_masque_version();

  if (a5)
  {
    nw_proxy_hop_set_supports_resumption();
  }

  if (a6)
  {
    nw_proxy_hop_set_use_x25519();
  }

  v48 = url;
  if (a7)
  {
    nw_proxy_hop_set_use_pqtls();
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v28 = v20;
  v29 = v20;
  v30 = [v29 countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v53;
    do
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v53 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v52 + 1) + 8 * i);
        if ([v34 length])
        {
          [v34 bytes];
          [v34 length];
          nw_proxy_hop_add_server_raw_public_key();
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v31);
  }

  if (v50)
  {
    buf = 0uLL;
    [v50 getUUIDBytes:&buf];
    nw_proxy_hop_add_token_header();
  }

  if (a12 > 1)
  {
    v20 = v28;
    url = v48;
    if (a12 != 2 || ([v21 bytes], objc_msgSend(v21, "length"), objc_msgSend(v23, "UTF8String"), (oblivious_http_with_context = nw_proxy_hop_create_oblivious_http_with_context()) == 0))
    {
LABEL_37:
      v41 = nplog_obj();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[NSPPrivacyProxyObliviousHopsFallbackNetworkRegistration setProxyAgentConfiguration:proxyKeyArray:proxyVersion:supportsResumption:usesX25519:usesPQTLS:tokenAgentUUID:proxyHopUsesStandardToken:shouldFailOpen:obliviousConfig:obliviousPath:obliviousHTTPType:]";
        _os_log_fault_impl(&_mh_execute_header, v41, OS_LOG_TYPE_FAULT, "%s called with null obliviousHop", &buf, 0xCu);
      }

LABEL_40:
      v38 = 0;
      goto LABEL_41;
    }
  }

  else
  {
    [v21 bytes];
    [v21 length];
    [v23 UTF8String];
    oblivious_http_with_context = nw_proxy_hop_create_oblivious_http();
    if (a12 == 1)
    {
      nw_proxy_hop_set_enable_chunked_oblivious_http();
    }

    v20 = v28;
    url = v48;
    if (!oblivious_http_with_context)
    {
      goto LABEL_37;
    }
  }

  v36 = nw_array_create();
  if (!v36)
  {
    fallback_privacy_proxy = nplog_obj();
    if (os_log_type_enabled(fallback_privacy_proxy, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NSPPrivacyProxyObliviousHopsFallbackNetworkRegistration setProxyAgentConfiguration:proxyKeyArray:proxyVersion:supportsResumption:usesX25519:usesPQTLS:tokenAgentUUID:proxyHopUsesStandardToken:shouldFailOpen:obliviousConfig:obliviousPath:obliviousHTTPType:]";
      _os_log_fault_impl(&_mh_execute_header, fallback_privacy_proxy, OS_LOG_TYPE_FAULT, "%s called with null proxyHopArray", &buf, 0xCu);
    }

    goto LABEL_62;
  }

  nw_array_append();
  nw_array_append();
  fallback_privacy_proxy = nw_proxy_config_create_fallback_privacy_proxy();
  if (!fallback_privacy_proxy)
  {
    v46 = nplog_obj();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NSPPrivacyProxyObliviousHopsFallbackNetworkRegistration setProxyAgentConfiguration:proxyKeyArray:proxyVersion:supportsResumption:usesX25519:usesPQTLS:tokenAgentUUID:proxyHopUsesStandardToken:shouldFailOpen:obliviousConfig:obliviousPath:obliviousHTTPType:]";
      _os_log_fault_impl(&_mh_execute_header, v46, OS_LOG_TYPE_FAULT, "%s called with null proxyConfiguration", &buf, 0xCu);
    }

LABEL_62:
    v38 = 0;
    goto LABEL_36;
  }

  v38 = 1;
  nw_proxy_config_set_is_privacy_proxy();
  v39 = nw_proxy_config_copy_agent_data();
  v40 = *(v47 + 32);
  *(v47 + 32) = v39;

  sub_1000429C8(v47);
LABEL_36:

LABEL_41:
  v42 = v50;
LABEL_42:

  v19 = v49;
LABEL_43:

LABEL_44:
  return v38;
}

NSObject *sub_1000463D8(NSObject *a1, void *a2, uint64_t a3, void *a4)
{
  v4 = a1;
  if (a1)
  {
    v7 = a4;
    v8 = a2;
    v9 = [NSString stringWithFormat:@"ProxiedContent-%@", a3];
    v10 = sub_1000420E0(v4, v8, 0, 0, v9, v7);

    v4 = v10;
  }

  return v4;
}

BOOL sub_10004648C(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, int a8, char a9, char a10, char a11, void *a12, void *a13, uint64_t a14, void *a15, void *a16, void *a17, char a18)
{
  v86 = a2;
  v85 = a3;
  v88 = a4;
  v81 = a5;
  v87 = a6;
  v80 = a7;
  v24 = a12;
  v79 = a13;
  v84 = a15;
  v83 = a16;
  obj = a17;
  self = a1;
  v78 = a17;
  if (!a1)
  {
    v51 = 0;
    v27 = v85;
    v25 = v86;
    goto LABEL_78;
  }

  v25 = v86;
  if (!v86)
  {
    url = nplog_obj();
    v27 = v85;
    if (os_log_type_enabled(url, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NSPPrivacyProxyProxiedContentNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:firstProxyHopUsesPQTLS:secondProxyHopUsesPQTLS:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:resolvedAddresses:fallbackAgentUUID:fallbackProxyConfigHash:isPrivacyProxy:]";
      _os_log_fault_impl(&_mh_execute_header, url, OS_LOG_TYPE_FAULT, "%s called with null firstHopProxyURL", buf, 0xCu);
    }

    v51 = 0;
    goto LABEL_77;
  }

  url = nw_endpoint_create_url([v86 UTF8String]);
  v27 = v85;
  if (!url)
  {
    v69 = nplog_obj();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NSPPrivacyProxyProxiedContentNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:firstProxyHopUsesPQTLS:secondProxyHopUsesPQTLS:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:resolvedAddresses:fallbackAgentUUID:fallbackProxyConfigHash:isPrivacyProxy:]";
      _os_log_fault_impl(&_mh_execute_header, v69, OS_LOG_TYPE_FAULT, "%s called with null firstHopProxyEndpoint", buf, 0xCu);
    }

    v51 = 0;
    goto LABEL_76;
  }

  masque = nw_proxy_hop_create_masque();
  v75 = masque;
  if (!masque)
  {
    v43 = nplog_obj();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NSPPrivacyProxyProxiedContentNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:firstProxyHopUsesPQTLS:secondProxyHopUsesPQTLS:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:resolvedAddresses:fallbackAgentUUID:fallbackProxyConfigHash:isPrivacyProxy:]";
      _os_log_fault_impl(&_mh_execute_header, v43, OS_LOG_TYPE_FAULT, "%s called with null firstHopProxy", buf, 0xCu);
    }

    v51 = 0;
    goto LABEL_75;
  }

  v29 = masque;
  v30 = v87;
  if (([v30 isEqualToString:@"RFC9298"] & 1) == 0)
  {
    [v30 isEqualToString:{@"draft-12", a17}];
  }

  nw_proxy_hop_set_masque_version();

  if (a8)
  {
    nw_proxy_hop_set_supports_resumption();
    *buf = 0uLL;
    v31 = [a1[2] agentUUID];
    [v31 getUUIDBytes:buf];

    nw_proxy_hop_set_resumable_session_agent();
  }

  nw_proxy_hop_set_supports_l4s();
  if (a10)
  {
    nw_proxy_hop_set_use_pqtls();
  }

  else
  {
    nw_proxy_hop_set_use_x25519();
  }

  v32 = CFPreferencesCopyAppValue(@"NSPEnableMultipath", kCFPreferencesCurrentApplication);
  v33 = v24;
  if (!v32 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    if (v85)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

  v34 = [v32 BOOLValue];
  v35 = nplog_obj();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    *&buf[4] = v34;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Detected enable multipath in preferences file: %{public}d", buf, 8u);
  }

  if (v34)
  {
    nw_proxy_hop_set_enable_multipath();
  }

  if (!v85)
  {
LABEL_38:
    nw_proxy_hop_add_extra_header();
  }

LABEL_19:
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v36 = v88;
  v37 = [v36 countByEnumeratingWithState:&v97 objects:v103 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v98;
    do
    {
      for (i = 0; i != v38; i = i + 1)
      {
        if (*v98 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v97 + 1) + 8 * i);
        if ([v41 length])
        {
          [v41 bytes];
          [v41 length];
          nw_proxy_hop_add_server_raw_public_key();
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v97 objects:v103 count:16];
    }

    while (v38);
  }

  v24 = v33;
  if (v33)
  {
    *buf = 0uLL;
    [v33 getUUIDBytes:buf];
    nw_proxy_hop_add_token_header();
  }

  v42 = nw_array_create();
  if (v42)
  {
    v43 = v42;
    nw_array_append();
    if (!v85)
    {
LABEL_61:
      default_privacy_proxy = nw_proxy_config_create_default_privacy_proxy();
      v51 = default_privacy_proxy != 0;
      if (default_privacy_proxy)
      {
        if (v83)
        {
          *buf = 0uLL;
          [v83 getUUIDBytes:buf];
          nw_proxy_config_set_fallback_proxy_agent();
        }

        nw_proxy_config_set_is_privacy_proxy();
        if (!a18)
        {
          nw_proxy_config_set_use_fast_fallback();
        }

        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v60 = v84;
        v61 = [v60 countByEnumeratingWithState:&v89 objects:v101 count:16];
        if (v61)
        {
          v62 = v61;
          v63 = *v90;
          do
          {
            for (j = 0; j != v62; j = j + 1)
            {
              if (*v90 != v63)
              {
                objc_enumerationMutation(v60);
              }

              [*(*(&v89 + 1) + 8 * j) UTF8String];
              nw_endpoint_get_port(url);
              host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
              nw_proxy_config_add_resolved_endpoint();
            }

            v62 = [v60 countByEnumeratingWithState:&v89 objects:v101 count:16];
          }

          while (v62);
        }

        objc_setProperty_atomic(self, v66, default_privacy_proxy, 48);
        v67 = nw_proxy_config_copy_agent_data();
        v68 = self[4];
        self[4] = v67;

        objc_storeStrong(self + 5, obj);
        sub_1000429C8(self);
        v24 = v33;
      }

      else
      {
        v72 = nplog_obj();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[NSPPrivacyProxyProxiedContentNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:firstProxyHopUsesPQTLS:secondProxyHopUsesPQTLS:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:resolvedAddresses:fallbackAgentUUID:fallbackProxyConfigHash:isPrivacyProxy:]";
          _os_log_fault_impl(&_mh_execute_header, v72, OS_LOG_TYPE_FAULT, "%s called with null proxyConfiguration", buf, 0xCu);
        }
      }

      v25 = v86;

      v27 = v85;
      goto LABEL_75;
    }

    v44 = [v85 UTF8String];
    if (v44 && (v45 = nw_endpoint_create_url(v44)) != 0)
    {
      v46 = v45;
      v47 = nw_proxy_hop_create_masque();
      if (v47)
      {
        v77 = v46;
        v48 = v47;
        v49 = v80;
        if (([v49 isEqualToString:@"RFC9298"] & 1) == 0)
        {
          [v49 isEqualToString:@"draft-12"];
        }

        nw_proxy_hop_set_masque_version();

        if (a9)
        {
          nw_proxy_hop_set_supports_resumption();
          *buf = 0uLL;
          v52 = [self[2] agentUUID];
          [v52 getUUIDBytes:buf];

          nw_proxy_hop_set_resumable_session_agent();
        }

        nw_proxy_hop_set_supports_l4s();
        if (a11)
        {
          nw_proxy_hop_set_use_pqtls();
        }

        else
        {
          nw_proxy_hop_set_use_x25519();
        }

        nw_proxy_hop_add_extra_header();
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v53 = v81;
        v54 = [v53 countByEnumeratingWithState:&v93 objects:v102 count:16];
        if (v54)
        {
          v55 = v54;
          v56 = *v94;
          do
          {
            for (k = 0; k != v55; k = k + 1)
            {
              if (*v94 != v56)
              {
                objc_enumerationMutation(v53);
              }

              v58 = *(*(&v93 + 1) + 8 * k);
              if ([v58 length])
              {
                [v58 bytes];
                [v58 length];
                nw_proxy_hop_add_server_raw_public_key();
              }
            }

            v55 = [v53 countByEnumeratingWithState:&v93 objects:v102 count:16];
          }

          while (v55);
        }

        if (v79)
        {
          *buf = 0uLL;
          [v79 getUUIDBytes:buf];
          nw_proxy_hop_add_token_header();
        }

        nw_array_append();

        v24 = v33;
        goto LABEL_61;
      }

      v73 = nplog_obj();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[NSPPrivacyProxyProxiedContentNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:firstProxyHopUsesPQTLS:secondProxyHopUsesPQTLS:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:resolvedAddresses:fallbackAgentUUID:fallbackProxyConfigHash:isPrivacyProxy:]";
        _os_log_fault_impl(&_mh_execute_header, v73, OS_LOG_TYPE_FAULT, "%s called with null secondHopProxy", buf, 0xCu);
      }
    }

    else
    {
      v50 = nplog_obj();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[NSPPrivacyProxyProxiedContentNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:firstProxyHopUsesPQTLS:secondProxyHopUsesPQTLS:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:resolvedAddresses:fallbackAgentUUID:fallbackProxyConfigHash:isPrivacyProxy:]";
        _os_log_fault_impl(&_mh_execute_header, v50, OS_LOG_TYPE_FAULT, "%s called with null secondHopProxyEndpoint", buf, 0xCu);
      }
    }
  }

  else
  {
    v71 = nplog_obj();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NSPPrivacyProxyProxiedContentNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:firstProxyHopUsesPQTLS:secondProxyHopUsesPQTLS:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:resolvedAddresses:fallbackAgentUUID:fallbackProxyConfigHash:isPrivacyProxy:]";
      _os_log_fault_impl(&_mh_execute_header, v71, OS_LOG_TYPE_FAULT, "%s called with null proxyHopArray", buf, 0xCu);
    }

    v43 = 0;
  }

  v51 = 0;
  v25 = v86;
LABEL_75:

  v69 = v75;
LABEL_76:

LABEL_77:
LABEL_78:

  return v51;
}

NSObject *sub_100046F60(NSObject *a1, void *a2, uint64_t a3, void *a4)
{
  v4 = a1;
  if (a1)
  {
    v7 = a4;
    v8 = a2;
    v9 = [NSString stringWithFormat:@"ProxiedContentFallback-%@", a3];
    v10 = sub_1000420E0(v4, v8, 0, 0, v9, v7);

    v4 = v10;
  }

  return v4;
}

BOOL sub_100047014(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, int a8, char a9, void *a10, void *a11, __int16 a12, char a13)
{
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v68 = a5;
  v23 = a6;
  v67 = a7;
  v24 = a10;
  v66 = a11;
  if (!a1)
  {
    v45 = 0;
    goto LABEL_57;
  }

  if (!v20)
  {
    url = nplog_obj();
    if (os_log_type_enabled(url, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NSPPrivacyProxyProxiedContentFallbackNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:isPrivacyProxy:]";
      _os_log_fault_impl(&_mh_execute_header, url, OS_LOG_TYPE_FAULT, "%s called with null firstHopProxyURL", buf, 0xCu);
    }

    v45 = 0;
    goto LABEL_56;
  }

  url = nw_endpoint_create_url([v20 UTF8String]);
  if (!url)
  {
    v27 = nplog_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NSPPrivacyProxyProxiedContentFallbackNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:isPrivacyProxy:]";
      _os_log_fault_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, "%s called with null firstHopProxyEndpoint", buf, 0xCu);
    }

    v45 = 0;
    goto LABEL_55;
  }

  masque = nw_proxy_hop_create_masque();
  v27 = masque;
  v62 = v23;
  if (!masque)
  {
    v37 = nplog_obj();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NSPPrivacyProxyProxiedContentFallbackNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:isPrivacyProxy:]";
      _os_log_fault_impl(&_mh_execute_header, v37, OS_LOG_TYPE_FAULT, "%s called with null firstHopProxy", buf, 0xCu);
    }

    v45 = 0;
    goto LABEL_54;
  }

  v60 = masque;
  v61 = url;
  v63 = v24;
  v28 = masque;
  v29 = v23;
  if (([v29 isEqualToString:@"RFC9298"] & 1) == 0)
  {
    [v29 isEqualToString:@"draft-12"];
  }

  nw_proxy_hop_set_masque_version();

  if (a8)
  {
    nw_proxy_hop_set_supports_resumption();
  }

  nw_proxy_hop_set_supports_l4s();
  v64 = v21;
  if (!v21)
  {
    nw_proxy_hop_add_extra_header();
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v65 = v22;
  v30 = v22;
  v31 = [v30 countByEnumeratingWithState:&v73 objects:v79 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v74;
    do
    {
      for (i = 0; i != v32; i = i + 1)
      {
        if (*v74 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v73 + 1) + 8 * i);
        if ([v35 length])
        {
          [v35 bytes];
          [v35 length];
          nw_proxy_hop_add_server_raw_public_key();
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v73 objects:v79 count:16];
    }

    while (v32);
  }

  v24 = v63;
  if (v63)
  {
    *buf = 0uLL;
    [v63 getUUIDBytes:buf];
    nw_proxy_hop_add_token_header();
  }

  v36 = nw_array_create();
  v21 = v64;
  if (!v36)
  {
    v56 = nplog_obj();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NSPPrivacyProxyProxiedContentFallbackNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:isPrivacyProxy:]";
      _os_log_fault_impl(&_mh_execute_header, v56, OS_LOG_TYPE_FAULT, "%s called with null proxyHopArray", buf, 0xCu);
    }

    v37 = 0;
    v45 = 0;
    v22 = v65;
    goto LABEL_53;
  }

  v37 = v36;
  nw_array_append();
  v22 = v65;
  if (!v64)
  {
    goto LABEL_48;
  }

  v38 = [v64 UTF8String];
  if (v38 && (v39 = nw_endpoint_create_url(v38)) != 0)
  {
    v40 = v39;
    v41 = nw_proxy_hop_create_masque();
    if (v41)
    {
      v42 = v41;
      v43 = v67;
      if (([v43 isEqualToString:@"RFC9298"] & 1) == 0)
      {
        [v43 isEqualToString:@"draft-12"];
      }

      v59 = v20;
      nw_proxy_hop_set_masque_version();

      if (a9)
      {
        nw_proxy_hop_set_supports_resumption();
      }

      nw_proxy_hop_set_supports_l4s();
      nw_proxy_hop_add_extra_header();
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v46 = v68;
      v47 = [v46 countByEnumeratingWithState:&v69 objects:v77 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v70;
        do
        {
          for (j = 0; j != v48; j = j + 1)
          {
            if (*v70 != v49)
            {
              objc_enumerationMutation(v46);
            }

            v51 = *(*(&v69 + 1) + 8 * j);
            if ([v51 length])
            {
              [v51 bytes];
              [v51 length];
              nw_proxy_hop_add_server_raw_public_key();
            }
          }

          v48 = [v46 countByEnumeratingWithState:&v69 objects:v77 count:16];
        }

        while (v48);
      }

      if (v66)
      {
        *buf = 0uLL;
        [v66 getUUIDBytes:buf];
        nw_proxy_hop_add_token_header();
      }

      nw_array_append();

      v20 = v59;
      v21 = v64;
      v22 = v65;
      v24 = v63;
LABEL_48:
      fallback_privacy_proxy = nw_proxy_config_create_fallback_privacy_proxy();
      v45 = fallback_privacy_proxy != 0;
      if (fallback_privacy_proxy)
      {
        nw_proxy_config_set_is_privacy_proxy();
        if (!a13)
        {
          nw_proxy_config_set_use_fast_fallback();
        }

        v53 = nw_proxy_config_copy_agent_data();
        v54 = *(a1 + 32);
        *(a1 + 32) = v53;

        sub_1000429C8(a1);
      }

      else
      {
        v57 = nplog_obj();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[NSPPrivacyProxyProxiedContentFallbackNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:isPrivacyProxy:]";
          _os_log_fault_impl(&_mh_execute_header, v57, OS_LOG_TYPE_FAULT, "%s called with null proxyConfiguration", buf, 0xCu);
        }
      }

      goto LABEL_53;
    }

    v58 = nplog_obj();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NSPPrivacyProxyProxiedContentFallbackNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:isPrivacyProxy:]";
      _os_log_fault_impl(&_mh_execute_header, v58, OS_LOG_TYPE_FAULT, "%s called with null secondHopProxy", buf, 0xCu);
    }
  }

  else
  {
    v44 = nplog_obj();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NSPPrivacyProxyProxiedContentFallbackNetworkRegistration setProxyAgentConfiguration:secondProxyHopURL:firstProxyHopKeyArray:secondProxyHopKeyArray:firstProxyHopVersion:secondProxyHopVersion:firstProxyHopSupportsResumption:secondProxyHopSupportsResumption:ingressTokenAgentUUID:egressTokenAgentUUID:firstProxyHopUsesStandardToken:secondProxyHopUsesStandardToken:isPrivacyProxy:]";
      _os_log_fault_impl(&_mh_execute_header, v44, OS_LOG_TYPE_FAULT, "%s called with null secondHopProxyEndpoint", buf, 0xCu);
    }
  }

  v45 = 0;
LABEL_53:
  v27 = v60;
  url = v61;
LABEL_54:

  v23 = v62;
LABEL_55:

LABEL_56:
LABEL_57:

  return v45;
}

void sub_100047EDC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[NSPEventsDenormalizer alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

id *sub_100048314(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = NSPPvDConfigurationFetcher;
    a1 = objc_msgSendSuper2(&v15, "init");
    if (a1)
    {
      v7 = objc_alloc_init(NSOperationQueue);
      v8 = a1[2];
      a1[2] = v7;

      v9 = NPGetInternalQueue();
      [a1[2] setUnderlyingQueue:v9];

      v10 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
      [v10 setWaitsForConnectivity:1];
      v11 = a1[2];
      v12 = [NSURLSession sessionWithConfiguration:v10 delegate:a1 delegateQueue:v11];
      v13 = a1[1];
      a1[1] = v12;

      objc_storeWeak(a1 + 3, v5);
      objc_storeWeak(a1 + 4, v6);
    }
  }

  return a1;
}

void sub_1000490B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000490D8(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v8 localizedDescription];
      v11 = a1[4];
      *buf = 138543618;
      v28 = v10;
      v29 = 2112;
      v30 = v11;
      v12 = "Fetching proxy configuration resulted in error: %{public}@ with url: %@";
      v13 = v9;
      v14 = 22;
      goto LABEL_4;
    }
  }

  else
  {
    v15 = [a3 statusCode];
    v16 = v15;
    if (v7 && v15 == 200)
    {
      v26 = 0;
      v17 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v26];
      v9 = v26;
      v18 = *(a1[6] + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      if (!*(*(a1[6] + 8) + 40))
      {
        v20 = nplog_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v25 = a1[4];
          *buf = 138412546;
          v28 = v9;
          v29 = 2112;
          v30 = v25;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Fetching proxy configuration resulted in malformed JSON object: %@ with url: %@", buf, 0x16u);
        }

        v21 = *(*(a1[6] + 8) + 40);
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = nplog_obj();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }

        v24 = a1[4];
        *buf = 138412290;
        v28 = v24;
        v12 = "Fetching proxy configuration resulted in JSON object that is not a dictionary with url: %@";
        v13 = v10;
        v14 = 12;
LABEL_4:
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
LABEL_13:
      }
    }

    else
    {
      v9 = nplog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v23 = a1[4];
        *buf = 134218242;
        v28 = v16;
        v29 = 2112;
        v30 = v23;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Fetching proxy configuration resulted in unexpected response: %ld with url: %@", buf, 0x16u);
      }
    }
  }

  v22 = *(*(a1[6] + 8) + 40);
  (*(a1[5] + 16))();
}