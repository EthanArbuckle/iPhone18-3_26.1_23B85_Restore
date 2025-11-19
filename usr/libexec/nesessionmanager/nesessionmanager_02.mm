uint64_t sub_10003ABF8(uint64_t a1, void *a2, unsigned int a3, void *a4, void *a5, void *a6, unsigned int *a7)
{
  v103 = a2;
  v12 = a4;
  v102 = a5;
  v101 = a6;
  if (a1)
  {
    v13 = +[NEProcessInfo copyDNSUUIDs];
    if (v13)
    {
      v14 = [NEProcessInfo copyUUIDsForExecutable:@"/usr/libexec/securityd"];
      if (v14)
      {
        v96 = v12;
        v15 = ne_log_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Adding DNS policies for securityd", buf, 2u);
        }

        v134 = 0u;
        v135 = 0u;
        v132 = 0u;
        v133 = 0u;
        v94 = v14;
        v16 = v14;
        v95 = v16;
        v87 = [v16 countByEnumeratingWithState:&v132 objects:v144 count:16];
        v97 = v13;
        if (v87)
        {
          v17 = *v133;
          v83 = *v133;
          do
          {
            v18 = 0;
            do
            {
              if (*v133 != v17)
              {
                objc_enumerationMutation(v16);
              }

              v90 = v18;
              v19 = *(*(&v132 + 1) + 8 * v18);
              v128 = 0u;
              v129 = 0u;
              v130 = 0u;
              v131 = 0u;
              obj = v13;
              v20 = [obj countByEnumeratingWithState:&v128 objects:v143 count:16];
              if (v20)
              {
                v21 = v20;
                v22 = *v129;
                while (2)
                {
                  for (i = 0; i != v21; i = i + 1)
                  {
                    if (*v129 != v22)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v24 = *(*(&v128 + 1) + 8 * i);
                    v25 = objc_alloc_init(NSMutableArray);
                    v26 = [NEPolicyCondition effectiveApplication:v19];
                    [v25 addObject:v26];

                    v27 = [NEPolicyCondition realApplication:v24];
                    [v25 addObject:v27];

                    v28 = +[NEPolicyCondition allInterfaces];
                    [v25 addObject:v28];

                    v29 = +[NEPolicyCondition entitlement];
                    [v25 addObject:v29];

                    v30 = [[NEPolicy alloc] initWithOrder:*a7 result:v102 conditions:v25];
                    LODWORD(v24) = sub_100033A90(v103, v30, v101);

                    if (!v24)
                    {
LABEL_79:
                      v12 = v96;
                      v13 = v97;
                      v14 = v94;
                      v47 = v95;
LABEL_80:

                      v78 = 0;
                      goto LABEL_81;
                    }

                    ++*a7;
                  }

                  v21 = [obj countByEnumeratingWithState:&v128 objects:v143 count:16];
                  if (v21)
                  {
                    continue;
                  }

                  break;
                }
              }

              v18 = v90 + 1;
              v13 = v97;
              v16 = v95;
              v17 = v83;
            }

            while ((v90 + 1) != v87);
            v87 = [v95 countByEnumeratingWithState:&v132 objects:v144 count:16];
          }

          while (v87);
        }

        v31 = ne_log_obj();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Adding securityd policies for neagent", buf, 2u);
        }

        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v32 = v12;
        v88 = [v32 countByEnumeratingWithState:&v124 objects:v142 count:16];
        if (v88)
        {
          v33 = *v125;
          v91 = v32;
          v84 = *v125;
          do
          {
            v34 = 0;
            do
            {
              if (*v125 != v33)
              {
                objc_enumerationMutation(v32);
              }

              v35 = *(*(&v124 + 1) + 8 * v34);
              v120 = 0u;
              v121 = 0u;
              v122 = 0u;
              v123 = 0u;
              obj = v16;
              v36 = [obj countByEnumeratingWithState:&v120 objects:v141 count:16];
              if (v36)
              {
                v37 = v36;
                v38 = *v121;
                while (2)
                {
                  for (j = 0; j != v37; j = j + 1)
                  {
                    if (*v121 != v38)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v40 = *(*(&v120 + 1) + 8 * j);
                    v25 = objc_alloc_init(NSMutableArray);
                    v41 = [NEPolicyCondition effectiveApplication:v35];
                    [v25 addObject:v41];

                    v42 = [NEPolicyCondition effectivePID:a3];
                    [v25 addObject:v42];

                    v43 = +[NEPolicyCondition entitlement];
                    [v25 addObject:v43];

                    v44 = [NEPolicyCondition realApplication:v40];
                    [v25 addObject:v44];

                    v45 = +[NEPolicyCondition allInterfaces];
                    [v25 addObject:v45];

                    v46 = [[NEPolicy alloc] initWithOrder:*a7 result:v102 conditions:v25];
                    LODWORD(v43) = sub_100033A90(v103, v46, v101);

                    if (!v43)
                    {
                      v47 = v91;
                      v14 = v94;
                      v12 = v96;
                      v13 = v97;
                      goto LABEL_80;
                    }

                    ++*a7;
                  }

                  v37 = [obj countByEnumeratingWithState:&v120 objects:v141 count:16];
                  if (v37)
                  {
                    continue;
                  }

                  break;
                }
              }

              v34 = v34 + 1;
              v32 = v91;
              v16 = v95;
              v12 = v96;
              v33 = v84;
            }

            while (v34 != v88);
            v88 = [v91 countByEnumeratingWithState:&v124 objects:v142 count:16];
          }

          while (v88);
        }

        v47 = [NEProcessInfo copyUUIDsForExecutable:@"/usr/libexec/trustd"];
        if (v47)
        {
          v92 = v32;
          v48 = ne_log_obj();
          v13 = v97;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "Adding DNS policies for trustd", buf, 2u);
          }

          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
          v49 = v47;
          v85 = [v49 countByEnumeratingWithState:&v116 objects:v140 count:16];
          v89 = v49;
          if (v85)
          {
            v50 = *v117;
            v95 = v47;
            v81 = *v117;
            do
            {
              v51 = 0;
              do
              {
                if (*v117 != v50)
                {
                  objc_enumerationMutation(v49);
                }

                obja = v51;
                v52 = *(*(&v116 + 1) + 8 * v51);
                v112 = 0u;
                v113 = 0u;
                v114 = 0u;
                v115 = 0u;
                v25 = v13;
                v53 = [v25 countByEnumeratingWithState:&v112 objects:v139 count:16];
                if (v53)
                {
                  v54 = v53;
                  v55 = *v113;
                  while (2)
                  {
                    for (k = 0; k != v54; k = k + 1)
                    {
                      if (*v113 != v55)
                      {
                        objc_enumerationMutation(v25);
                      }

                      v57 = *(*(&v112 + 1) + 8 * k);
                      v58 = objc_alloc_init(NSMutableArray);
                      v59 = [NEPolicyCondition effectiveApplication:v52];
                      [v58 addObject:v59];

                      v60 = [NEPolicyCondition realApplication:v57];
                      [v58 addObject:v60];

                      v61 = +[NEPolicyCondition allInterfaces];
                      [v58 addObject:v61];

                      v62 = +[NEPolicyCondition entitlement];
                      [v58 addObject:v62];

                      v63 = [[NEPolicy alloc] initWithOrder:*a7 result:v102 conditions:v58];
                      LODWORD(v59) = sub_100033A90(v103, v63, v101);

                      if (!v59)
                      {
                        obj = v89;
LABEL_78:

                        goto LABEL_79;
                      }

                      ++*a7;
                    }

                    v54 = [v25 countByEnumeratingWithState:&v112 objects:v139 count:16];
                    if (v54)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v51 = obja + 1;
                v49 = v89;
                v12 = v96;
                v13 = v97;
                v47 = v95;
                v50 = v81;
              }

              while (obja + 1 != v85);
              v85 = [v89 countByEnumeratingWithState:&v116 objects:v140 count:16];
            }

            while (v85);
          }

          v64 = ne_log_obj();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEBUG, "Adding trustd policies for neagent", buf, 2u);
          }

          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          obj = v92;
          v82 = [obj countByEnumeratingWithState:&v108 objects:v138 count:16];
          if (v82)
          {
            v95 = v47;
            v65 = *v109;
            v80 = *v109;
            while (2)
            {
              v66 = 0;
              do
              {
                if (*v109 != v65)
                {
                  objc_enumerationMutation(obj);
                }

                v86 = v66;
                v93 = *(*(&v108 + 1) + 8 * v66);
                v104 = 0u;
                v105 = 0u;
                v106 = 0u;
                v107 = 0u;
                v25 = v49;
                v67 = [v25 countByEnumeratingWithState:&v104 objects:v137 count:16];
                if (v67)
                {
                  v68 = v67;
                  v69 = *v105;
LABEL_65:
                  v70 = 0;
                  while (1)
                  {
                    if (*v105 != v69)
                    {
                      objc_enumerationMutation(v25);
                    }

                    v71 = *(*(&v104 + 1) + 8 * v70);
                    v58 = objc_alloc_init(NSMutableArray);
                    v72 = [NEPolicyCondition effectiveApplication:v93];
                    [v58 addObject:v72];

                    v73 = [NEPolicyCondition effectivePID:a3];
                    [v58 addObject:v73];

                    v74 = +[NEPolicyCondition entitlement];
                    [v58 addObject:v74];

                    v75 = [NEPolicyCondition realApplication:v71];
                    [v58 addObject:v75];

                    v76 = +[NEPolicyCondition allInterfaces];
                    [v58 addObject:v76];

                    v77 = [[NEPolicy alloc] initWithOrder:*a7 result:v102 conditions:v58];
                    LODWORD(v74) = sub_100033A90(v103, v77, v101);

                    if (!v74)
                    {
                      goto LABEL_78;
                    }

                    ++*a7;

                    if (v68 == ++v70)
                    {
                      v68 = [v25 countByEnumeratingWithState:&v104 objects:v137 count:16];
                      if (v68)
                      {
                        goto LABEL_65;
                      }

                      break;
                    }
                  }
                }

                v66 = v86 + 1;
                v12 = v96;
                v49 = v89;
                v65 = v80;
              }

              while ((v86 + 1) != v82);
              v78 = 1;
              v82 = [obj countByEnumeratingWithState:&v108 objects:v138 count:16];
              if (v82)
              {
                continue;
              }

              break;
            }

            v13 = v97;
            v14 = v94;
            v47 = v95;
          }

          else
          {
            v78 = 1;
            v14 = v94;
          }

LABEL_81:
        }

        else
        {
          v78 = 0;
          v13 = v97;
          v14 = v94;
        }
      }

      else
      {
        v78 = 0;
      }
    }

    else
    {
      v78 = 0;
    }
  }

  else
  {
    v78 = 0;
  }

  return v78;
}

uint64_t sub_10003B744(uint64_t a1, void *a2)
{
  v32 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    Property = objc_getProperty(v4, v3, 136, 1);
  }

  else
  {
    Property = 0;
  }

  sub_100031D58(v32, Property);
  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = objc_getProperty(v7, v6, 136, 1);
  }

  v31 = v7;
  v8 = sub_100033F68(*(a1 + 32));
  v9 = [NEPolicyResult netAgentUUID:*(a1 + 40)];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v30 = a1;
  v10 = *(a1 + 48);
  v11 = [v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v34;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v33 + 1) + 8 * i);
        if ([v16 length])
        {
          v17 = [NEPolicyCondition domain:v16];
          v18 = [NEPolicy alloc];
          v42 = v17;
          v13 = 1;
          v19 = [NSArray arrayWithObjects:&v42 count:1];
          v20 = [v18 initWithOrder:(v8 + 10) result:v9 conditions:v19];

          sub_100033A90(v32, v20, v31);
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  if (*(v30 + 64) == 1 && (v13 & 1) == 0)
  {
    v21 = [[NEPolicy alloc] initWithOrder:(v8 + 10) result:v9 conditions:&__NSArray0__struct];
    sub_100033A90(v32, v21, v31);
  }

  v22 = [NEPolicyCondition scopedInterface:*(v30 + 56)];
  v23 = [NEPolicy alloc];
  v41 = v22;
  v24 = [NSArray arrayWithObjects:&v41 count:1];
  v25 = [v23 initWithOrder:(v8 + 10) result:v9 conditions:v24];

  sub_100033A90(v32, v25, v31);
  v26 = sub_100031EB4(v32);
  if (v26)
  {
    v27 = ne_log_large_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v29 = *(v30 + 56);
      *buf = 138412546;
      v38 = v29;
      v39 = 2112;
      v40 = v31;
      _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "DNS Policy IDs added for %@: %@", buf, 0x16u);
    }
  }

  return v26;
}

uint64_t sub_10003BA9C(uint64_t a1, void *a2)
{
  v4 = a2;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 80, 1);
  }

  v6 = Property;
  v7 = ne_log_large_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v73 = *(a1 + 40);
    *buf = 138412546;
    v84 = v73;
    v85 = 2112;
    v86 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Tunnel data Policy IDs to be removed %@: %@", buf, 0x16u);
  }

  sub_100031D58(v4, v6);
  v9 = *(a1 + 32);
  if (v9 && objc_getProperty(v9, v8, 16, 1))
  {
    v10 = *(a1 + 32);
    v82 = sub_100033F68(v10) + 100;
    if (*(a1 + 56) == 1)
    {
      if (v4)
      {
        v12 = objc_getProperty(v4, v11, 16, 1);
        v10 = *(a1 + 32);
      }

      else
      {
        v12 = 0;
      }

      if (v10)
      {
        v13 = 18000;
      }

      else
      {
        v13 = 0;
      }

      v14 = sub_10006197C(v12, &v82, v13, 200, v6);
      v15 = ne_log_obj();
      v16 = v15;
      if (v14)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v84 = "[NESMPolicySession setTunnelDataPoliciesForInterfaceName:outgoingInterfaceName:hasDNS:hasProxy:hasExcludeLocalNetworks:hasExcludeCellularServices:hasExcludeDeviceCommunication:]_block_invoke";
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s: VPN addLocalNetworksExceptionWithOrder succeeded for PrivilegedTunnel priority", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v84 = "[NESMPolicySession setTunnelDataPoliciesForInterfaceName:outgoingInterfaceName:hasDNS:hasProxy:hasExcludeLocalNetworks:hasExcludeCellularServices:hasExcludeDeviceCommunication:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s: VPN addLocalNetworksExceptionWithOrder failed for PrivilegedTunnel priority", buf, 0xCu);
      }
    }

    if (*(a1 + 57) == 1)
    {
      if (v4)
      {
        v18 = objc_getProperty(v4, v11, 16, 1);
      }

      else
      {
        v18 = 0;
      }

      if (*(a1 + 32))
      {
        v19 = 18000;
      }

      else
      {
        v19 = 0;
      }

      v20 = sub_100061E40(v18, &v82, v19, 200, v6);
      v21 = ne_log_obj();
      v22 = v21;
      if (v20)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v84 = "[NESMPolicySession setTunnelDataPoliciesForInterfaceName:outgoingInterfaceName:hasDNS:hasProxy:hasExcludeLocalNetworks:hasExcludeCellularServices:hasExcludeDeviceCommunication:]_block_invoke";
          _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%s: VPN addDeviceCommunicationExceptionWithOrder succeeded for PrivilegedTunnel priority", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v84 = "[NESMPolicySession setTunnelDataPoliciesForInterfaceName:outgoingInterfaceName:hasDNS:hasProxy:hasExcludeLocalNetworks:hasExcludeCellularServices:hasExcludeDeviceCommunication:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s: VPN addDeviceCommunicationExceptionWithOrder failed for PrivilegedTunnel priority", buf, 0xCu);
      }
    }

    if (v4)
    {
      v23 = objc_getProperty(v4, v11, 16, 1);
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;
    v25 = [NEPolicyResult skipWithOrder:0];
    v26 = sub_10005F888(v24, &v82, v25, v6);

    v27 = ne_log_obj();
    v28 = v27;
    if (v26)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v84 = "[NESMPolicySession setTunnelDataPoliciesForInterfaceName:outgoingInterfaceName:hasDNS:hasProxy:hasExcludeLocalNetworks:hasExcludeCellularServices:hasExcludeDeviceCommunication:]_block_invoke";
        _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "%s: VPN addPolicyICMPv6WithOrder succeeded for PrivilegedTunnel priority", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v84 = "[NESMPolicySession setTunnelDataPoliciesForInterfaceName:outgoingInterfaceName:hasDNS:hasProxy:hasExcludeLocalNetworks:hasExcludeCellularServices:hasExcludeDeviceCommunication:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s: Failed to add icmpv6 exception for data", buf, 0xCu);
    }

    if (*(a1 + 58) == 1)
    {
      if (v4)
      {
        v30 = objc_getProperty(v4, v29, 16, 1);
      }

      else
      {
        v30 = 0;
      }

      v31 = sub_100060C48(v30, &v82, 1, 0, 0, v6);
      v32 = ne_log_obj();
      v33 = v32;
      if (v31)
      {
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v84 = "[NESMPolicySession setTunnelDataPoliciesForInterfaceName:outgoingInterfaceName:hasDNS:hasProxy:hasExcludeLocalNetworks:hasExcludeCellularServices:hasExcludeDeviceCommunication:]_block_invoke";
          _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "%s: VPN addVoiceMailExceptionWithOrder succeeded for PrivilegedTunnel priority", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v84 = "[NESMPolicySession setTunnelDataPoliciesForInterfaceName:outgoingInterfaceName:hasDNS:hasProxy:hasExcludeLocalNetworks:hasExcludeCellularServices:hasExcludeDeviceCommunication:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s: Failed to add VoiceMail exception for data", buf, 0xCu);
      }

      if (v4)
      {
        v35 = objc_getProperty(v4, v34, 16, 1);
      }

      else
      {
        v35 = 0;
      }

      v36 = sub_100063400(v35, &v82, 1, *(a1 + 48), 0, v6);
      v37 = ne_log_obj();
      v38 = v37;
      if (v36)
      {
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v84 = "[NESMPolicySession setTunnelDataPoliciesForInterfaceName:outgoingInterfaceName:hasDNS:hasProxy:hasExcludeLocalNetworks:hasExcludeCellularServices:hasExcludeDeviceCommunication:]_block_invoke";
          _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "%s: VPN addCellularServicesExceptionDataWithOrder succeeded for PrivilegedTunnel priority", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v84 = "[NESMPolicySession setTunnelDataPoliciesForInterfaceName:outgoingInterfaceName:hasDNS:hasProxy:hasExcludeLocalNetworks:hasExcludeCellularServices:hasExcludeDeviceCommunication:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%s: Failed to add CellularServices exception for data", buf, 0xCu);
      }
    }

    if (*(a1 + 56))
    {
      v39 = 0;
    }

    else
    {
      v39 = &off_1000EE4E0;
    }

    v41 = v39;
    if (v4)
    {
      v42 = objc_getProperty(v4, v40, 16, 1);
    }

    else
    {
      v42 = 0;
    }

    v43 = v82;
    v44 = v42;
    v45 = [NEPolicyResult skipWithOrder:0];
    sub_100064C40(v44, v43, v41, v45, v6);

    if (*(a1 + 59) == 1)
    {
      v46 = sub_100039DEC(*(a1 + 32), *(a1 + 40), @"ProxyAgent");
    }

    else
    {
      v46 = 0;
    }

    if (*(a1 + 60) == 1)
    {
      v47 = sub_100039DEC(*(a1 + 32), *(a1 + 40), @"DNSAgent");
      v48 = v47;
      if (v47)
      {
        v47 = [NEPolicyResult netAgentUUID:v47];
      }
    }

    else
    {
      v47 = 0;
      v48 = 0;
    }

    v79 = v46;
    v80 = v47;
    v76 = v48;
    v77 = v41;
    v49 = v6;
    if (v46)
    {
      v81 = [NEPolicyResult netAgentUUID:v46];
    }

    else
    {
      v81 = 0;
    }

    v50 = sub_100033F68(*(a1 + 32));
    v51 = [NEPolicyResult tunnelIPToInterfaceName:*(a1 + 40) secondaryResultType:1];
    v52 = [NEPolicyResult scopeSocketToInterfaceName:*(a1 + 40)];
    v53 = sub_100033F68(*(a1 + 32));
    v54 = [NEPolicyCondition scopedInterface:*(a1 + 40)];
    v92 = v54;
    v55 = [NSArray arrayWithObjects:&v92 count:1];

    v78 = v51;
    v56 = [[NEPolicy alloc] initWithOrder:(v53 + 350) result:v51 conditions:v55];
    v6 = v49;
    LODWORD(v54) = sub_100033A90(v4, v56, v49);

    if (v54)
    {
      v57 = sub_100033F68(*(a1 + 32));
      v58 = +[NEPolicyCondition allInterfaces];
      v91 = v58;
      v59 = [NSArray arrayWithObjects:&v91 count:1];

      v60 = [[NEPolicy alloc] initWithOrder:(v57 + 400) result:v52 conditions:v59];
      LODWORD(v58) = sub_100033A90(v4, v60, v49);

      if (v58)
      {
        if (v80)
        {
          v75 = [NEPolicy alloc];
          v61 = +[NEPolicyCondition allInterfaces];
          v90 = v61;
          v62 = [NSArray arrayWithObjects:&v90 count:1];
          v63 = [v75 initWithOrder:(v50 + 10) result:v80 conditions:v62];
          sub_100033A90(v4, v63, v49);
        }

        v64 = v81;
        if (v81)
        {
          v65 = [NEPolicy alloc];
          v66 = +[NEPolicyCondition allInterfaces];
          v89 = v66;
          v67 = [NSArray arrayWithObjects:&v89 count:1];
          v68 = [v65 initWithOrder:(v50 + 20) result:v81 conditions:v67];
          sub_100033A90(v4, v68, v49);

          v64 = v81;
        }

        if (sub_100031EB4(v4))
        {
          v69 = ne_log_large_obj();
          v70 = v77;
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
          {
            v74 = *(a1 + 48);
            *buf = 136315650;
            v84 = "[NESMPolicySession setTunnelDataPoliciesForInterfaceName:outgoingInterfaceName:hasDNS:hasProxy:hasExcludeLocalNetworks:hasExcludeCellularServices:hasExcludeDeviceCommunication:]_block_invoke";
            v85 = 2112;
            v86 = v74;
            v87 = 2112;
            v88 = v49;
            _os_log_debug_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "%s: tunnel data Policy IDs added %@: %@", buf, 0x20u);
          }

          v17 = 1;
          v71 = v76;
        }

        else
        {
          v17 = 0;
          v71 = v76;
          v70 = v77;
        }
      }

      else
      {
        v17 = 0;
        v71 = v76;
        v70 = v77;
        v64 = v81;
      }
    }

    else
    {
      v17 = 0;
      v59 = v55;
      v71 = v76;
      v70 = v77;
      v64 = v81;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t sub_10003C500(uint64_t a1, void *a2)
{
  v82 = a2;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 80, 1);
  }

  v5 = Property;
  v6 = ne_log_large_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v69 = *(a1 + 40);
    *buf = 138412546;
    v104 = v69;
    v105 = 2112;
    v106 = v5;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Tunnel data Policy IDs to be removed %@: %@", buf, 0x16u);
  }

  sub_100031D58(v82, v5);
  v8 = *(a1 + 32);
  if (v8 && objc_getProperty(v8, v7, 16, 1))
  {
    v9 = sub_100033F68(*(a1 + 32)) + 200;
    v10 = *(a1 + 48);
    v80 = a1;
    v81 = v5;
    if (v10)
    {
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      obj = v10;
      v77 = [obj countByEnumeratingWithState:&v91 objects:v102 count:16];
      if (v77)
      {
        v75 = *v92;
        v11 = kSCPropNetIPv4RouteDestinationAddress;
        v73 = kSCPropNetIPv4RouteSubnetMask;
        v71 = kSCPropNetIPv6RouteDestinationAddress;
LABEL_10:
        v12 = 0;
        while (1)
        {
          if (*v92 != v75)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v91 + 1) + 8 * v12);
          v14 = [v13 valueForKey:v11];

          if (v14)
          {
            v15 = [v13 objectForKeyedSubscript:v11];
            v16 = [NWAddressEndpoint endpointWithHostname:v15 port:@"0"];
            v17 = [v13 objectForKeyedSubscript:v73];
            v18 = NEGetPrefixForIPv4NetmaskString();
          }

          else
          {
            v15 = [v13 objectForKeyedSubscript:v71];
            v16 = [NWAddressEndpoint endpointWithHostname:v15 port:@"0"];
            v18 = NEGetIntFromDictionary();
          }

          v19 = [NEPolicyCondition flowRemoteAddress:v16 prefix:v18];
          v20 = [NEPolicyCondition scopedInterface:*(a1 + 56)];
          v101[0] = v20;
          v21 = +[NEPolicyCondition fallbackTraffic];
          v101[1] = v21;
          v101[2] = v19;
          v22 = [NSArray arrayWithObjects:v101 count:3];

          v23 = [NEPolicyResult scopeSocketToInterfaceName:*(a1 + 56)];
          v24 = [[NEPolicy alloc] initWithOrder:v9 result:v23 conditions:v22];
          v25 = sub_100033A90(v82, v24, v81);

          if (!v25)
          {
            goto LABEL_54;
          }

          v9 = (v9 + 1);
          v12 = v12 + 1;
          a1 = v80;
          if (v77 == v12)
          {
            v77 = [obj countByEnumeratingWithState:&v91 objects:v102 count:16];
            if (v77)
            {
              goto LABEL_10;
            }

            break;
          }
        }
      }

      v5 = v81;
    }

    obj = [NEPolicyResult scopeSocketToInterfaceName:*(a1 + 40)];
    if ((*(a1 + 80) & 1) == 0)
    {
      v26 = *(a1 + 64);
      if (v26)
      {
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v78 = v26;
        v27 = [v78 countByEnumeratingWithState:&v87 objects:v100 count:16];
        if (v27)
        {
          v28 = v27;
          v76 = *v88;
          v29 = kSCPropNetIPv4RouteDestinationAddress;
          v74 = kSCPropNetIPv4RouteSubnetMask;
          v72 = kSCPropNetIPv6RouteDestinationAddress;
          while (2)
          {
            for (i = 0; i != v28; i = i + 1)
            {
              if (*v88 != v76)
              {
                objc_enumerationMutation(v78);
              }

              v31 = *(*(&v87 + 1) + 8 * i);
              v32 = [v31 valueForKey:v29];

              if (v32)
              {
                v33 = [v31 objectForKeyedSubscript:v29];
                v34 = [NWAddressEndpoint endpointWithHostname:v33 port:@"0"];
                v35 = [v31 objectForKeyedSubscript:v74];
                v36 = NEGetPrefixForIPv4NetmaskString();
              }

              else
              {
                v33 = [v31 objectForKeyedSubscript:v72];
                v34 = [NWAddressEndpoint endpointWithHostname:v33 port:@"0"];
                v36 = NEGetIntFromDictionary();
              }

              v37 = [NEPolicyCondition flowRemoteAddress:v34 prefix:v36];
              v38 = [NEPolicyCondition scopedInterface:*(v80 + 56)];
              v99[0] = v38;
              v39 = +[NEPolicyCondition fallbackTraffic];
              v99[1] = v39;
              v99[2] = v37;
              v40 = [NSArray arrayWithObjects:v99 count:3];

              v41 = [[NEPolicy alloc] initWithOrder:v9 result:obj conditions:v40];
              LODWORD(v39) = sub_100033A90(v82, v41, v81);

              if (!v39)
              {
LABEL_57:
                v67 = 0;
                v5 = v81;
                goto LABEL_58;
              }

              v9 = (v9 + 1);
            }

            v28 = [v78 countByEnumeratingWithState:&v87 objects:v100 count:16];
            if (v28)
            {
              continue;
            }

            break;
          }
        }

        v42 = +[NEPolicyCondition flowRemoteAddressEmpty];
        [v42 setNegative:1];
        a1 = v80;
        v43 = [NEPolicyCondition scopedInterface:*(v80 + 56)];
        v98[0] = v43;
        v44 = +[NEPolicyCondition fallbackTraffic];
        v98[1] = v44;
        v98[2] = v42;
        v45 = [NSArray arrayWithObjects:v98 count:3];

        v46 = [NEPolicy alloc];
        v47 = [NEPolicyResult scopeSocketToInterfaceName:*(v80 + 56)];
        v48 = [v46 initWithOrder:v9 result:v47 conditions:v45];
        v49 = sub_100033A90(v82, v48, v81);

        if (!v49)
        {
LABEL_54:
          v67 = 0;
          v5 = v81;
LABEL_59:

          goto LABEL_60;
        }

        v9 = (v9 + 1);
        v5 = v81;
      }
    }

    v50 = *(a1 + 72);
    if (v50)
    {
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v78 = v50;
      v51 = [v78 countByEnumeratingWithState:&v83 objects:v97 count:16];
      if (v51)
      {
        v52 = v51;
        v53 = *v84;
        while (2)
        {
          for (j = 0; j != v52; j = j + 1)
          {
            if (*v84 != v53)
            {
              objc_enumerationMutation(v78);
            }

            v55 = *(*(&v83 + 1) + 8 * j);
            v56 = [NSCharacterSet characterSetWithCharactersInString:@"*."];
            v57 = [v55 stringByTrimmingCharactersInSet:v56];
            if (v57)
            {
              v58 = [NEPolicyCondition domain:v57];
              v59 = [NEPolicyCondition scopedInterface:*(v80 + 56)];
              v96[0] = v59;
              v60 = +[NEPolicyCondition fallbackTraffic];
              v96[1] = v60;
              v96[2] = v58;
              v61 = [NSArray arrayWithObjects:v96 count:3];

              v62 = [[NEPolicy alloc] initWithOrder:v9 result:obj conditions:v61];
              LODWORD(v60) = sub_100033A90(v82, v62, v81);

              if (!v60)
              {

                goto LABEL_57;
              }

              v9 = (v9 + 1);
            }
          }

          v52 = [v78 countByEnumeratingWithState:&v83 objects:v97 count:16];
          if (v52)
          {
            continue;
          }

          break;
        }
      }

      a1 = v80;
      v5 = v81;
    }

    if (*(a1 + 80) == 1)
    {
      v63 = [NEPolicyCondition scopedInterface:*(a1 + 56)];
      v95[0] = v63;
      v64 = +[NEPolicyCondition fallbackTraffic];
      v95[1] = v64;
      v65 = [NSArray arrayWithObjects:v95 count:2];

      v66 = [[NEPolicy alloc] initWithOrder:v9 result:obj conditions:v65];
      LODWORD(v64) = sub_100033A90(v82, v66, v5);

      if (!v64)
      {
        goto LABEL_55;
      }
    }

    if (sub_100031EB4(v82))
    {
      v78 = ne_log_large_obj();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
      {
        v70 = *(a1 + 40);
        *buf = 138412546;
        v104 = v70;
        v105 = 2112;
        v106 = v5;
        _os_log_debug_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEBUG, "tunnel data Policy IDs added %@: %@", buf, 0x16u);
      }

      v67 = 1;
LABEL_58:
    }

    else
    {
LABEL_55:
      v67 = 0;
    }

    goto LABEL_59;
  }

  v67 = 0;
LABEL_60:

  return v67;
}

uint64_t sub_10003CECC(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, char a9)
{
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  if (a1)
  {
    if (isa_nsstring() && isa_nsstring() && *(a1 + 8) == 1)
    {
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10003D08C;
      v24[3] = &unk_1000E9F40;
      v24[4] = a1;
      v25 = v16;
      v32 = a9;
      v26 = v18;
      v27 = v17;
      v28 = v21;
      v29 = v22;
      v30 = v19;
      v31 = v20;
      a1 = sub_100031500(NESMPolicyMasterSession, v24);
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

uint64_t sub_10003D08C(uint64_t a1, void *a2)
{
  v4 = a2;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 80, 1);
  }

  v6 = Property;
  v7 = ne_log_large_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v110 = *(a1 + 40);
    *buf = 138412546;
    v192 = v110;
    v193 = 2112;
    v194 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Route Enforcement Policy IDs to be removed %@: %@", buf, 0x16u);
  }

  sub_100031D58(v4, v6);
  v9 = *(a1 + 32);
  if (!v9 || !objc_getProperty(v9, v8, 16, 1))
  {
    v28 = 0;
    goto LABEL_105;
  }

  v10 = sub_100033F68(*(a1 + 32));
  v173 = v10 + 200;
  v152 = +[NEPolicyCondition allInterfaces];
  v151 = [NEPolicyResult skipWithOrder:(v10 + 265)];
  if (*(a1 + 96) == 1)
  {
    v12 = v4 ? objc_getProperty(v4, v11, 16, 1) : 0;
    if ((sub_10006197C(v12, &v173, (v10 + 265), 200, v6) & 1) == 0)
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v192 = "[NESMPolicySession setTunnelRouteEnforecementPoliciesForInterfaceName:outgoingInterfaceName:agentPIDs:includeIPv4Routes:includeIPv6Routes:excludeIPv4Routes:excludeIPv6Routes:hasExcludeLocalNetworks:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: VPN addLocalNetworksExceptionWithOrder failed for PrivilegedTunnel priority", buf, 0xCu);
      }

      goto LABEL_89;
    }
  }

  v145 = v6;
  v137 = v10;
  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v138 = a1;
  v13 = *(a1 + 48);
  v14 = [v13 countByEnumeratingWithState:&v169 objects:v190 count:16];
  v15 = CTBundle_ptr;
  v16 = CTBundle_ptr;
  if (v14)
  {
    v17 = v14;
    v18 = 0;
    v19 = *v170;
    v6 = v145;
    while (1)
    {
      v20 = 0;
      v21 = v18;
      do
      {
        if (*v170 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v22 = *(*(&v169 + 1) + 8 * v20);
        v189[0] = v152;
        v23 = +[NEPolicyCondition effectivePID:](NEPolicyCondition, "effectivePID:", [v22 intValue]);
        v189[1] = v23;
        v18 = [NSArray arrayWithObjects:v189 count:2];

        v24 = objc_alloc(v16[43]);
        v25 = v173;
        v26 = [v24 initWithOrder:v173 result:v151 conditions:v18];
        v27 = sub_100033A90(v4, v26, v145);

        if (!v27)
        {
          v29 = ne_log_obj();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v192 = "[NESMPolicySession setTunnelRouteEnforecementPoliciesForInterfaceName:outgoingInterfaceName:agentPIDs:includeIPv4Routes:includeIPv6Routes:excludeIPv4Routes:excludeIPv6Routes:hasExcludeLocalNetworks:]_block_invoke";
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s: VPN adding tunnel agent skip policy failed", buf, 0xCu);
          }

LABEL_89:
          v28 = 0;
          goto LABEL_104;
        }

        v20 = v20 + 1;
        v21 = v18;
        v16 = CTBundle_ptr;
      }

      while (v17 != v20);
      v17 = [v13 countByEnumeratingWithState:&v169 objects:v190 count:16];
      if (!v17)
      {

        v15 = CTBundle_ptr;
        goto LABEL_25;
      }
    }
  }

  v25 = v173;
LABEL_25:

  v173 = v25 + 1;
  v30 = +[NEPolicyCondition fallbackTraffic];
  v188[0] = v152;
  v188[1] = v30;
  v18 = [v15[176] arrayWithObjects:v188 count:2];
  v31 = [objc_alloc(v16[43]) initWithOrder:v25 + 1 result:v151 conditions:v18];
  v6 = v145;
  v32 = sub_100033A90(v4, v31, v145);

  if (!v32)
  {
    log = ne_log_obj();
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v192 = "[NESMPolicySession setTunnelRouteEnforecementPoliciesForInterfaceName:outgoingInterfaceName:agentPIDs:includeIPv4Routes:includeIPv6Routes:excludeIPv4Routes:excludeIPv6Routes:hasExcludeLocalNetworks:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: VPN adding fallback traffic skip policy failed", buf, 0xCu);
    }

    v28 = 0;
    goto LABEL_103;
  }

  v173 = v25 + 2;
  if (v4)
  {
    v34 = objc_getProperty(v4, v33, 16, 1);
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;
  v36 = [NEPolicyResult skipWithOrder:0];
  v37 = sub_10005F888(v35, &v173, v36, v145);

  if (!v37)
  {
    v39 = ne_log_obj();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Failed to add icmpv6 exception for data", buf, 2u);
    }
  }

  ++v173;
  if (v4)
  {
    v40 = objc_getProperty(v4, v38, 16, 1);
  }

  else
  {
    v40 = 0;
  }

  if ((sub_100063400(v40, &v173, 1, *(v138 + 56), 0, v145) & 1) == 0)
  {
    v41 = ne_log_obj();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v192 = "[NESMPolicySession setTunnelRouteEnforecementPoliciesForInterfaceName:outgoingInterfaceName:agentPIDs:includeIPv4Routes:includeIPv6Routes:excludeIPv4Routes:excludeIPv6Routes:hasExcludeLocalNetworks:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%s: Failed to add CellularServices exception for data", buf, 0xCu);
    }
  }

  v135 = v30;
  v173 = v137 + 250;
  log = [NEPolicyCondition scopedInterface:*(v138 + 56)];
  v146 = [NEPolicyResult scopeSocketToInterfaceName:*(v138 + 56)];
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  obj = *(v138 + 64);
  v42 = [obj countByEnumeratingWithState:&v165 objects:v187 count:16];
  v150 = v4;
  if (v42)
  {
    v43 = v42;
    v44 = *v166;
    v139 = *v166;
    do
    {
      v45 = 0;
      v142 = v43;
      do
      {
        if (*v166 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v46 = *(*(&v165 + 1) + 8 * v45);
        if ([v46 isDefaultRoute])
        {
          v4 = v150;
        }

        else
        {
          v47 = [v46 destinationAddress];
          v48 = [NWAddressEndpoint endpointWithHostname:v47 port:@"0"];

          v49 = [v46 destinationSubnetMask];
          LOBYTE(v47) = NEGetPrefixForIPv4NetmaskString();

          v149 = v48;
          v50 = [NEPolicyCondition flowRemoteAddress:v48 prefix:v47];
          v186[0] = v50;
          v186[1] = v152;
          v51 = [NSArray arrayWithObjects:v186 count:2];

          v52 = objc_alloc(v16[43]);
          v53 = v16;
          v54 = v173;
          v55 = [v52 initWithOrder:v173 result:v146 conditions:v51];
          LOBYTE(v48) = sub_100033A90(v150, v55, v145);

          if ((v48 & 1) == 0)
          {
            v74 = v50;
            v111 = ne_log_obj();
            if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v192 = "[NESMPolicySession setTunnelRouteEnforecementPoliciesForInterfaceName:outgoingInterfaceName:agentPIDs:includeIPv4Routes:includeIPv6Routes:excludeIPv4Routes:excludeIPv6Routes:hasExcludeLocalNetworks:]_block_invoke";
              v112 = "%s: VPN adding excluded IPv4 route policy failed";
              goto LABEL_136;
            }

            goto LABEL_98;
          }

          v185[0] = v50;
          v185[1] = log;
          v18 = [NSArray arrayWithObjects:v185 count:2];

          v56 = [objc_alloc(v53[43]) initWithOrder:v54 + 1 result:v151 conditions:v18];
          v57 = sub_100033A90(v150, v56, v145);

          if (!v57)
          {
            v74 = v50;
            v111 = ne_log_obj();
            if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v192 = "[NESMPolicySession setTunnelRouteEnforecementPoliciesForInterfaceName:outgoingInterfaceName:agentPIDs:includeIPv4Routes:includeIPv6Routes:excludeIPv4Routes:excludeIPv6Routes:hasExcludeLocalNetworks:]_block_invoke";
              v113 = "%s: VPN adding excluded IPv4 route skip policy failed";
              goto LABEL_138;
            }

            goto LABEL_100;
          }

          v16 = CTBundle_ptr;
          v4 = v150;
          v44 = v139;
          v43 = v142;
        }

        v45 = v45 + 1;
      }

      while (v43 != v45);
      v43 = [obj countByEnumeratingWithState:&v165 objects:v187 count:16];
    }

    while (v43);
  }

  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  obj = *(v138 + 72);
  v58 = [obj countByEnumeratingWithState:&v161 objects:v184 count:16];
  if (!v58)
  {
    goto LABEL_62;
  }

  v59 = v58;
  v60 = *v162;
  v140 = *v162;
  do
  {
    v61 = 0;
    v143 = v59;
    do
    {
      if (*v162 != v60)
      {
        objc_enumerationMutation(obj);
      }

      v62 = *(*(&v161 + 1) + 8 * v61);
      if ([v62 isDefaultRoute])
      {
        v16 = CTBundle_ptr;
        v4 = v150;
        goto LABEL_60;
      }

      v63 = [v62 destinationAddress];
      v64 = [NWAddressEndpoint endpointWithHostname:v63 port:@"0"];

      v65 = [v62 destinationNetworkPrefixLength];
      v66 = [v65 unsignedCharValue];

      v149 = v64;
      v67 = [NEPolicyCondition flowRemoteAddress:v64 prefix:v66];
      v183[0] = v67;
      v183[1] = v152;
      v51 = [NSArray arrayWithObjects:v183 count:2];

      v68 = [NEPolicy alloc];
      v69 = v173;
      v70 = [v68 initWithOrder:v173 result:v146 conditions:v51];
      v71 = sub_100033A90(v150, v70, v145);

      if (!v71)
      {
        v74 = v67;
        v111 = ne_log_obj();
        if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v192 = "[NESMPolicySession setTunnelRouteEnforecementPoliciesForInterfaceName:outgoingInterfaceName:agentPIDs:includeIPv4Routes:includeIPv6Routes:excludeIPv4Routes:excludeIPv6Routes:hasExcludeLocalNetworks:]_block_invoke";
          v112 = "%s: VPN adding excluded IPv6 route policy failed";
LABEL_136:
          _os_log_error_impl(&_mh_execute_header, v111, OS_LOG_TYPE_ERROR, v112, buf, 0xCu);
        }

LABEL_98:
        v28 = 0;
        v30 = v135;
        v6 = v145;
LABEL_101:
        v4 = v150;
        goto LABEL_102;
      }

      v182[0] = v67;
      v182[1] = log;
      v18 = [NSArray arrayWithObjects:v182 count:2];

      v72 = [[NEPolicy alloc] initWithOrder:v69 + 1 result:v151 conditions:v18];
      v73 = sub_100033A90(v150, v72, v145);

      if (!v73)
      {
        v74 = v67;
        v111 = ne_log_obj();
        if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v192 = "[NESMPolicySession setTunnelRouteEnforecementPoliciesForInterfaceName:outgoingInterfaceName:agentPIDs:includeIPv4Routes:includeIPv6Routes:excludeIPv4Routes:excludeIPv6Routes:hasExcludeLocalNetworks:]_block_invoke";
          v113 = "%s: VPN adding excluded IPv6 route skip policy failed";
LABEL_138:
          _os_log_error_impl(&_mh_execute_header, v111, OS_LOG_TYPE_ERROR, v113, buf, 0xCu);
        }

LABEL_100:
        v28 = 0;
        v51 = v18;
        v30 = v135;
        goto LABEL_101;
      }

      v16 = CTBundle_ptr;
      v4 = v150;
      v60 = v140;
      v59 = v143;
LABEL_60:
      v61 = v61 + 1;
    }

    while (v59 != v61);
    v59 = [obj countByEnumeratingWithState:&v161 objects:v184 count:16];
  }

  while (v59);
LABEL_62:

  v173 = v137 + 255;
  obj = [NEPolicyCondition scopedInterface:*(v138 + 40)];
  v149 = [NEPolicyResult scopeSocketToInterfaceName:*(v138 + 40)];
  v74 = [NEPolicyResult tunnelIPToInterfaceName:*(v138 + 40) secondaryResultType:1];
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v75 = *(v138 + 80);
  v76 = [v75 countByEnumeratingWithState:&v157 objects:v181 count:16];
  v141 = v74;
  v130 = v76;
  if (!v76)
  {
    goto LABEL_74;
  }

  v77 = *v158;
  v78 = v76;
  v136 = v75;
  v131 = *v158;
  while (2)
  {
    v79 = 0;
    v133 = v78;
    while (2)
    {
      if (*v158 != v77)
      {
        objc_enumerationMutation(v75);
      }

      v80 = *(*(&v157 + 1) + 8 * v79);
      if ([v80 isDefaultRoute])
      {
        v4 = v150;
        goto LABEL_72;
      }

      v81 = [v80 destinationAddress];
      v82 = [NWAddressEndpoint endpointWithHostname:v81 port:@"0"];

      v83 = [v80 destinationSubnetMask];
      v84 = NEGetPrefixForIPv4NetmaskString();

      v144 = v82;
      v85 = [NEPolicyCondition flowRemoteAddress:v82 prefix:v84];
      v180[0] = v85;
      v180[1] = obj;
      v51 = [NSArray arrayWithObjects:v180 count:2];

      v86 = objc_alloc(v16[43]);
      v87 = v16;
      v88 = v173;
      v89 = [v86 initWithOrder:v173 result:v74 conditions:v51];
      v90 = sub_100033A90(v150, v89, v145);

      if (!v90)
      {
        v115 = ne_log_obj();
        if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v192 = "[NESMPolicySession setTunnelRouteEnforecementPoliciesForInterfaceName:outgoingInterfaceName:agentPIDs:includeIPv4Routes:includeIPv6Routes:excludeIPv4Routes:excludeIPv6Routes:hasExcludeLocalNetworks:]_block_invoke";
          v116 = "%s: VPN adding included IPv4 route pass policy failed";
          goto LABEL_140;
        }

LABEL_121:
        v30 = v135;
        v111 = v136;
        v6 = v145;
        v4 = v150;
        v74 = v141;
        goto LABEL_122;
      }

      v179[0] = v85;
      v179[1] = v152;
      v18 = [NSArray arrayWithObjects:v179 count:2];

      v91 = [objc_alloc(v87[43]) initWithOrder:v88 + 1 result:v149 conditions:v18];
      v92 = sub_100033A90(v150, v91, v145);

      if (!v92)
      {
        v115 = ne_log_obj();
        v74 = v141;
        v111 = v136;
        if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v192 = "[NESMPolicySession setTunnelRouteEnforecementPoliciesForInterfaceName:outgoingInterfaceName:agentPIDs:includeIPv4Routes:includeIPv6Routes:excludeIPv4Routes:excludeIPv6Routes:hasExcludeLocalNetworks:]_block_invoke";
          _os_log_error_impl(&_mh_execute_header, v115, OS_LOG_TYPE_ERROR, "%s: VPN adding included IPv4 route socket scoping policy failed", buf, 0xCu);
        }

        v51 = v18;
        v30 = v135;
        v4 = v150;
LABEL_122:
        v127 = v144;
LABEL_123:

        goto LABEL_124;
      }

      v16 = CTBundle_ptr;
      v4 = v150;
      v74 = v141;
      v75 = v136;
      v77 = v131;
      v78 = v133;
LABEL_72:
      if (v78 != ++v79)
      {
        continue;
      }

      break;
    }

    v78 = [v75 countByEnumeratingWithState:&v157 objects:v181 count:16];
    if (v78)
    {
      continue;
    }

    break;
  }

LABEL_74:

  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  v93 = *(v138 + 88);
  v94 = [v93 countByEnumeratingWithState:&v153 objects:v178 count:16];
  if (v94)
  {
    v95 = v94;
    v96 = *v154;
    v136 = v93;
    v132 = *v154;
LABEL_76:
    v97 = 0;
    v134 = v95;
    while (1)
    {
      if (*v154 != v96)
      {
        objc_enumerationMutation(v93);
      }

      v98 = *(*(&v153 + 1) + 8 * v97);
      if ([v98 isDefaultRoute])
      {
        v4 = v150;
      }

      else
      {
        v99 = [v98 destinationAddress];
        v100 = [NWAddressEndpoint endpointWithHostname:v99 port:@"0"];

        v101 = [v98 destinationNetworkPrefixLength];
        v102 = [v101 unsignedCharValue];

        v144 = v100;
        v85 = [NEPolicyCondition flowRemoteAddress:v100 prefix:v102];
        v177[0] = v85;
        v177[1] = obj;
        v51 = [NSArray arrayWithObjects:v177 count:2];

        v103 = objc_alloc(v16[43]);
        v104 = v16;
        v105 = v173;
        v106 = [v103 initWithOrder:v173 result:v74 conditions:v51];
        v107 = sub_100033A90(v150, v106, v145);

        if (!v107)
        {
          v115 = ne_log_obj();
          if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_121;
          }

          *buf = 136315138;
          v192 = "[NESMPolicySession setTunnelRouteEnforecementPoliciesForInterfaceName:outgoingInterfaceName:agentPIDs:includeIPv4Routes:includeIPv6Routes:excludeIPv4Routes:excludeIPv6Routes:hasExcludeLocalNetworks:]_block_invoke";
          v116 = "%s: VPN adding included IPv6 route pass policy failed";
LABEL_140:
          _os_log_error_impl(&_mh_execute_header, v115, OS_LOG_TYPE_ERROR, v116, buf, 0xCu);
          goto LABEL_121;
        }

        v176[0] = v85;
        v176[1] = v152;
        v18 = [NSArray arrayWithObjects:v176 count:2];

        v108 = [objc_alloc(v104[43]) initWithOrder:v105 + 1 result:v149 conditions:v18];
        v109 = sub_100033A90(v150, v108, v145);

        if (!v109)
        {
          v115 = ne_log_obj();
          v74 = v141;
          v127 = v100;
          v111 = v136;
          if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v192 = "[NESMPolicySession setTunnelRouteEnforecementPoliciesForInterfaceName:outgoingInterfaceName:agentPIDs:includeIPv4Routes:includeIPv6Routes:excludeIPv4Routes:excludeIPv6Routes:hasExcludeLocalNetworks:]_block_invoke";
            _os_log_error_impl(&_mh_execute_header, v115, OS_LOG_TYPE_ERROR, "%s: VPN adding included IPv6 route socket scoping policy failed", buf, 0xCu);
          }

          v51 = v18;
          v30 = v135;
          v4 = v150;
          goto LABEL_123;
        }

        v16 = CTBundle_ptr;
        v4 = v150;
        v74 = v141;
        v93 = v136;
        v96 = v132;
        v95 = v134;
      }

      if (v95 == ++v97)
      {
        v95 = [v93 countByEnumeratingWithState:&v153 objects:v178 count:16];
        if (v95)
        {
          goto LABEL_76;
        }

        v30 = v135;
        goto LABEL_112;
      }
    }
  }

  v30 = v135;
  if (v130)
  {
LABEL_112:
    v173 = v137 + 260;
    v111 = +[NEPolicyCondition flowRemoteAddressEmpty];
    [v111 setNegative:1];
    v117 = [NEPolicyRouteRule routeRuleWithAction:2 forInterfaceName:*(v138 + 40)];
    v175 = v117;
    v118 = [NSArray arrayWithObjects:&v175 count:1];

    v174[0] = v111;
    v174[1] = v152;
    v51 = [NSArray arrayWithObjects:v174 count:2];

    v119 = objc_alloc(v16[43]);
    v120 = v173;
    v121 = [NEPolicyResult routeRules:v118];
    v123 = [v119 initWithOrder:v120 result:v121 conditions:v51];
    v124 = *(v138 + 32);
    if (v124)
    {
      v125 = objc_getProperty(v124, v122, 48, 1);
    }

    else
    {
      v125 = 0;
    }

    v6 = v145;
    v74 = v141;
    v126 = sub_100033A90(v4, v123, v125);

    if (v126)
    {

      v18 = v51;
      goto LABEL_116;
    }

    v128 = ne_log_obj();
    if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v192 = "[NESMPolicySession setTunnelRouteEnforecementPoliciesForInterfaceName:outgoingInterfaceName:agentPIDs:includeIPv4Routes:includeIPv6Routes:excludeIPv4Routes:excludeIPv6Routes:hasExcludeLocalNetworks:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v128, OS_LOG_TYPE_ERROR, "%s: VPN adding interface default deny policy failed", buf, 0xCu);
    }

LABEL_124:
    v28 = 0;
  }

  else
  {
LABEL_116:
    if (sub_100031EB4(v4))
    {
      v111 = ne_log_large_obj();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
      {
        v129 = *(v138 + 40);
        *buf = 138412546;
        v192 = v129;
        v193 = 2112;
        v194 = v6;
        _os_log_debug_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEBUG, "Route Enforcement Policy IDs added %@: %@", buf, 0x16u);
      }

      v28 = 1;
    }

    else
    {
      v111 = ne_log_obj();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v192 = "[NESMPolicySession setTunnelRouteEnforecementPoliciesForInterfaceName:outgoingInterfaceName:agentPIDs:includeIPv4Routes:includeIPv6Routes:excludeIPv4Routes:excludeIPv6Routes:hasExcludeLocalNetworks:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v111, OS_LOG_TYPE_ERROR, "%s: VPN applying added policies failed", buf, 0xCu);
      }

      v28 = 0;
    }

    v51 = v18;
  }

LABEL_102:

  v18 = v51;
LABEL_103:

LABEL_104:
LABEL_105:

  return v28;
}

BOOL sub_10003E574(_DWORD *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = 0;
  if (a1 && v5)
  {
    if (a1[2] == 4)
    {
      if (!v6)
      {
        v7 = objc_alloc_init(NSMutableArray);
        v9 = +[NEPolicyCondition allInterfaces];
        [v7 addObject:v9];
      }

      v10 = [NEPolicy alloc];
      v11 = [NEPolicyResult passWithFlags:1];
      v12 = [v10 initWithOrder:100 result:v11 conditions:v7];
      Property = objc_getProperty(a1, v13, 56, 1);
      v8 = sub_1000319D0(v5, v12, Property);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

uint64_t sub_10003E688(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ne_log_large_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 48, 1);
    }

    *buf = 136315394;
    v141 = "[NESMPolicySession setPolicyForContentFilterControlUnit:providerProcessIdentity:uid:settings:limitToProcess:perApp:disableEncryptedDNSSettings:]_block_invoke";
    v142 = 2112;
    v143 = Property;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s: Policy IDs to be removed: %@", buf, 0x16u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = objc_getProperty(v7, v6, 48, 1);
  }

  else
  {
    v8 = 0;
  }

  sub_100031D58(v3, v8);
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = objc_getProperty(v10, v9, 56, 1);
  }

  else
  {
    v11 = 0;
  }

  sub_100032AF0(v3, v11);
  v12 = *(a1 + 72);
  if (v3)
  {
    *(v3 + 8) = v12;
  }

  v13 = v12 & 0x1FFFFFFF;
  if ((v12 & 0x1FFFFFFF) < 2)
  {
    v16 = 0;
  }

  else
  {
    v14 = 0;
    do
    {
      ++v14;
      v15 = v13 > 3;
      v13 >>= 1;
    }

    while (v15);
    v16 = 1010 * v14;
  }

  v17 = sub_100033F68(*(a1 + 32)) + v16;
  v108 = [NEPolicyResult filterWithControlUnit:v12];
  v106 = +[NEPolicyResult drop];
  v112 = v17;
  v113 = [NEPolicyResult skipWithOrder:v17 + 1010];
  v111 = v3;
  if (*(a1 + 80))
  {
LABEL_14:
    v18 = +[NSMutableArray array];
    v19 = NEResourcesCopyContentFilterExclusionList();
    if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v20 = ne_log_large_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v102 = *(a1 + 32);
        if (v102)
        {
          v102 = objc_getProperty(v102, v21, 48, 1);
        }

        *buf = 138412290;
        v141 = v102;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Content filter exclusion list not found: %@", buf, 0xCu);
      }

      v19 = &off_1000EE1E0;
    }

    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    obj = v19;
    v22 = [obj countByEnumeratingWithState:&v129 objects:v137 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v130;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v130 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v129 + 1) + 8 * i);
          v27 = [NEProcessInfo copyUUIDsForExecutable:v26];
          v28 = v27;
          if (v27 && [v27 count] || (v29 = +[NEProcessInfo copyUUIDsForBundleID:uid:](NEProcessInfo, "copyUUIDsForBundleID:uid:", v26, *(a1 + 76)), v28, (v28 = v29) != 0))
          {
            if ([v28 count])
            {
              [v18 addObjectsFromArray:v28];
            }
          }
        }

        v23 = [obj countByEnumeratingWithState:&v129 objects:v137 count:16];
      }

      while (v23);
    }

    v114 = a1;

    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v110 = v18;
    v30 = [v110 countByEnumeratingWithState:&v125 objects:v136 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v126;
      do
      {
        v33 = 0;
        do
        {
          if (*v126 != v32)
          {
            objc_enumerationMutation(v110);
          }

          v34 = [NEPolicyCondition effectiveApplication:*(*(&v125 + 1) + 8 * v33)];
          v135[0] = v34;
          v35 = +[NEPolicyCondition platformBinary];
          v135[1] = v35;
          v36 = +[NEPolicyCondition allInterfaces];
          v135[2] = v36;
          v37 = [NSArray arrayWithObjects:v135 count:3];

          v39 = [[NEPolicy alloc] initWithOrder:v112 result:v113 conditions:v37];
          v40 = *(a1 + 32);
          if (v40)
          {
            v41 = objc_getProperty(v40, v38, 48, 1);
          }

          else
          {
            v41 = 0;
          }

          sub_100033A90(v111, v39, v41);

          v33 = v33 + 1;
        }

        while (v31 != v33);
        v42 = [v110 countByEnumeratingWithState:&v125 objects:v136 count:16];
        v31 = v42;
      }

      while (v42);
    }

    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v105 = [*(a1 + 56) rules];
    v43 = [v105 countByEnumeratingWithState:&v121 objects:v134 count:16];
    if (v43)
    {
      v44 = v43;
      v107 = *v122;
      v45 = 2;
      v46 = v111;
LABEL_43:
      v47 = 0;
      if (v45 <= 0x3EA)
      {
        v48 = 1002 - v45;
      }

      else
      {
        v48 = 0;
      }

      while (1)
      {
        if (*v122 != v107)
        {
          objc_enumerationMutation(v105);
        }

        if (v48 == v47)
        {
          break;
        }

        v49 = *(*(&v121 + 1) + 8 * v47);
        v50 = v108;
        v51 = [v49 action];
        v52 = v113;
        if (v51 == 1 || (v53 = [v49 action], v52 = v106, v53 == 2))
        {
          v54 = v52;

          v50 = v54;
        }

        v55 = *(v114 + 32);
        v56 = [v49 networkRule];
        v57 = [v49 networkRule];
        sub_10003F2D8(v55, v56, [v57 matchProtocol], v111, v50, v112 + v45, 0);

        ++v45;
        v58 = [v49 networkRule];
        [v58 appliesToLoopback];

        if (v44 == ++v47)
        {
          v44 = [v105 countByEnumeratingWithState:&v121 objects:v134 count:16];
          if (v44)
          {
            goto LABEL_43;
          }

          break;
        }
      }
    }

    else
    {
      v45 = 2;
      v46 = v111;
    }

    v67 = [NEPolicyCondition uid:0];
    [v67 setNegative:1];
    v133 = v67;
    v68 = [NSArray arrayWithObjects:&v133 count:1];
    v69 = v108;
    v70 = *(v114 + 56);
    if (v70)
    {
      v71 = [v70 defaultAction];
      v72 = v113;
      if (v71 == 1 || (v73 = [*(v114 + 56) defaultAction], v72 = v106, v73 == 2))
      {
        v74 = v72;

        v69 = v74;
      }
    }

    v75 = *(v114 + 64);
    v76 = ne_log_obj();
    v77 = os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG);
    if (v75)
    {
      if (v77)
      {
        *buf = 136315138;
        v141 = "[NESMPolicySession setPolicyForContentFilterControlUnit:providerProcessIdentity:uid:settings:limitToProcess:perApp:disableEncryptedDNSSettings:]_block_invoke";
        _os_log_debug_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEBUG, "%s: Installing perApp Content Filter policies", buf, 0xCu);
      }

      v78 = *(v114 + 32);
      v79 = [*(v114 + 64) appRules];
      v115[0] = _NSConcreteStackBlock;
      v115[1] = 3221225472;
      v115[2] = sub_10003FA1C;
      v115[3] = &unk_1000E9F68;
      v80 = v68;
      v81 = *(v114 + 32);
      v116 = v80;
      v117 = v81;
      v118 = v46;
      v120 = v45 + v112;
      v119 = v69;
      sub_100037370(v78, v79, 0, 0, 0, 0, v118, v115, 0);
    }

    else
    {
      if (v77)
      {
        *buf = 136315138;
        v141 = "[NESMPolicySession setPolicyForContentFilterControlUnit:providerProcessIdentity:uid:settings:limitToProcess:perApp:disableEncryptedDNSSettings:]_block_invoke";
        _os_log_debug_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEBUG, "%s: Installing system-wide Content Filter policies", buf, 0xCu);
      }

      if (!sub_10003E574(*(v114 + 32), v46, 0))
      {
        v84 = ne_log_obj();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "Failed to install content filter pass policies", buf, 2u);
        }

        v3 = 0;
        goto LABEL_87;
      }

      v87 = [[NEPolicy alloc] initWithOrder:v45 + v112 result:v69 conditions:v68];
      v88 = *(v114 + 32);
      if (v88)
      {
        v89 = objc_getProperty(v88, v86, 48, 1);
      }

      else
      {
        v89 = 0;
      }

      v90 = sub_100033A90(v46, v87, v89);

      if (!v90)
      {
LABEL_79:
        v3 = 0;
LABEL_88:

        goto LABEL_89;
      }
    }

    if (sub_100031EB4(v46))
    {
      v82 = ne_log_obj();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
      {
        v103 = *(v114 + 32);
        if (v103)
        {
          v103 = objc_getProperty(v103, v83, 48, 1);
        }

        *buf = 136315394;
        v141 = "[NESMPolicySession setPolicyForContentFilterControlUnit:providerProcessIdentity:uid:settings:limitToProcess:perApp:disableEncryptedDNSSettings:]_block_invoke";
        v142 = 2112;
        v143 = v103;
        _os_log_debug_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEBUG, "%s: Policy IDs added: %@", buf, 0x16u);
      }

      v84 = ne_log_obj();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
      {
        v104 = *(v114 + 32);
        if (v104)
        {
          v104 = objc_getProperty(v104, v85, 56, 1);
        }

        *buf = 136315394;
        v141 = "[NESMPolicySession setPolicyForContentFilterControlUnit:providerProcessIdentity:uid:settings:limitToProcess:perApp:disableEncryptedDNSSettings:]_block_invoke";
        v142 = 2112;
        v143 = v104;
        _os_log_debug_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEBUG, "%s: Policy IDs added at Low priority: %@", buf, 0x16u);
      }

      v3 = 1;
LABEL_87:

      goto LABEL_88;
    }

    goto LABEL_79;
  }

  v59 = *(a1 + 40);
  if (!v59)
  {
    v91 = *(a1 + 48);
    if (v91)
    {
      v92 = +[NEPolicyCondition effectivePID:version:](NEPolicyCondition, "effectivePID:version:", [v91 pid], objc_msgSend(*(a1 + 48), "pidVersion"));
      v138[0] = v92;
      v93 = +[NEPolicyCondition delegateIsPlatformBinary];
      v138[1] = v93;
      v94 = +[NEPolicyCondition allInterfaces];
      v138[2] = v94;
      v95 = [NSArray arrayWithObjects:v138 count:3];

      v97 = [[NEPolicy alloc] initWithOrder:v112 result:v113 conditions:v95];
      v98 = *(a1 + 32);
      if (v98)
      {
        v99 = objc_getProperty(v98, v96, 48, 1);
      }

      else
      {
        v99 = 0;
      }

      sub_100033A90(v3, v97, v99);
    }

    goto LABEL_14;
  }

  v60 = +[NEPolicyCondition effectivePID:version:](NEPolicyCondition, "effectivePID:version:", [v59 pid], objc_msgSend(*(a1 + 40), "pidVersion"));
  v139[0] = v60;
  v61 = +[NEPolicyCondition allInterfaces];
  v139[1] = v61;
  v62 = [NSArray arrayWithObjects:v139 count:2];

  v110 = v62;
  v64 = [[NEPolicy alloc] initWithOrder:v112 result:v108 conditions:v62];
  v65 = *(a1 + 32);
  if (v65)
  {
    v66 = objc_getProperty(v65, v63, 48, 1);
  }

  else
  {
    v66 = 0;
  }

  sub_100033A90(v3, v64, v66);

  if (v3)
  {
    sub_10003331C(v3, *(a1 + 32), 1);
    v3 = sub_100031EB4(v3);
  }

LABEL_89:

  return v3;
}

void sub_10003F2D8(void *a1, void *a2, uint64_t a3, void *a4, void *a5, unsigned int a6, int a7)
{
  v90 = a2;
  v12 = a4;
  v13 = a5;
  if (a1)
  {
    v14 = objc_alloc_init(NSMutableArray);
    v15 = +[NEPolicyCondition allInterfaces];
    [v14 addObject:v15];

    if (a3 == 1)
    {
      v16 = 6;
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_7;
      }

      v16 = 17;
    }

    v17 = [NEPolicyCondition ipProtocol:v16];
    [v14 addObject:v17];

LABEL_7:
    v88 = v12;
    v18 = a7;
    v19 = [v90 matchDirection];
    if (v19 == 2)
    {
      v20 = +[NEPolicyCondition isInbound];
      [v20 setNegative:1];
    }

    else
    {
      if (v19 != 1)
      {
LABEL_12:
        v21 = [v90 matchRemoteHostOrNetworkEndpoint];
        v87 = a3;
        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = v21;
        v23 = [v90 matchRemoteHostOrNetworkEndpoint];
        v24 = v13;
        type = nw_endpoint_get_type(v23);

        v26 = type == nw_endpoint_type_host;
        v13 = v24;
        if (v26)
        {
          v27 = [v90 matchRemoteHostOrNetworkEndpoint];
          v28 = [NSString stringWithUTF8String:nw_endpoint_get_hostname(v27)];
          v29 = [NEPolicyCondition domain:v28];
          [v14 addObject:v29];

          v30 = [v90 matchRemoteHostOrNetworkEndpoint];
          port = nw_endpoint_get_port(v30);

          if (port)
          {
            v32 = [NSNumber numberWithUnsignedShort:port];
            v33 = [v32 stringValue];
            v34 = [NWAddressEndpoint endpointWithHostname:@"0.0.0.0" port:v33];
            v35 = [NEPolicyCondition flowRemoteAddress:v34 prefix:0];
            v36 = [v14 arrayByAddingObject:v35];

            v37 = [NSNumber numberWithUnsignedShort:port];
            v38 = [v37 stringValue];
            v39 = [NWAddressEndpoint endpointWithHostname:@"::" port:v38];
            v40 = [NEPolicyCondition flowRemoteAddress:v39 prefix:0];
            v41 = [v14 arrayByAddingObject:v40];

            v13 = v24;
            v42 = [[NEPolicy alloc] initWithOrder:a6 result:v24 conditions:v36];
            Property = objc_getProperty(a1, v43, 48, 1);
            sub_100033A90(v88, v42, Property);

            v45 = [[NEPolicy alloc] initWithOrder:a6 result:v24 conditions:v41];
            v47 = objc_getProperty(a1, v46, 48, 1);
            sub_100033A90(v88, v45, v47);

            v12 = v88;
            goto LABEL_33;
          }

          v70 = [NEPolicy alloc];
          v71 = a6;
          v13 = v24;
          v72 = v24;
        }

        else
        {
LABEL_17:
          v48 = [v90 matchRemoteHostOrNetworkEndpoint];
          if (v48)
          {
            v49 = v48;
            v50 = [v90 matchRemoteHostOrNetworkEndpoint];
            v51 = nw_endpoint_get_type(v50);

            if (v51 == nw_endpoint_type_address)
            {
              v52 = [v90 matchRemoteHostOrNetworkEndpoint];
              address = nw_endpoint_get_address(v52);

              v54 = [v90 matchRemotePrefix];
              v55 = v54;
              if (v54 == 0x7FFFFFFFFFFFFFFFLL)
              {
                if (address->sa_family == 30)
                {
                  v55 = 0x80;
                }

                else
                {
                  v55 = 32;
                }
              }

              v56 = [v90 matchRemoteHostOrNetworkEndpoint];
              v57 = [NWEndpoint endpointWithCEndpoint:v56];
              v58 = [NEPolicyCondition flowRemoteAddress:v57 prefix:v55];
              [v14 addObject:v58];

              NEIsWildcardAddress();
            }
          }

          v59 = [v90 matchLocalNetworkEndpoint];
          if (v59)
          {
            v60 = v59;
            v61 = [v90 matchLocalNetworkEndpoint];
            v62 = nw_endpoint_get_type(v61);

            if (v62 == nw_endpoint_type_address)
            {
              v63 = [v90 matchLocalNetworkEndpoint];
              v64 = nw_endpoint_get_address(v63);

              v65 = [v90 matchLocalPrefix];
              v66 = v65;
              if (v65 == 0x7FFFFFFFFFFFFFFFLL)
              {
                if (v64->sa_family == 30)
                {
                  v66 = 0x80;
                }

                else
                {
                  v66 = 32;
                }
              }

              v67 = [v90 matchLocalNetworkEndpoint];
              v68 = [NWEndpoint endpointWithCEndpoint:v67];
              v69 = [NEPolicyCondition flowLocalAddress:v68 prefix:v66];
              [v14 addObject:v69];

              NEIsWildcardAddress();
            }
          }

          v70 = [NEPolicy alloc];
          v71 = a6;
          v72 = v13;
        }

        v36 = [v70 initWithOrder:v71 result:v72 conditions:{v14, v87}];
        v74 = objc_getProperty(a1, v73, 48, 1);
        v12 = v88;
        sub_100033A90(v88, v36, v74);
LABEL_33:

        if (!v18)
        {
LABEL_42:

          goto LABEL_43;
        }

        v75 = [v90 matchRemoteHostOrNetworkEndpoint];
        if (!v75 || (v76 = v75, [v90 matchRemoteHostOrNetworkEndpoint], v77 = objc_claimAutoreleasedReturnValue(), v78 = nw_endpoint_get_port(v77), v77, v76, !v78))
        {
          v79 = v14;
          if (!v79)
          {
LABEL_41:

            goto LABEL_42;
          }

LABEL_40:
          v83 = objc_getProperty(a1, v82, 56, 1);
          sub_100033920(v12, v79, v83);
          goto LABEL_41;
        }

        v79 = objc_alloc_init(NSMutableArray);
        v80 = +[NEPolicyCondition allInterfaces];
        [v79 addObject:v80];

        if (v87 == 1)
        {
          v81 = 6;
        }

        else
        {
          if (v87 != 2)
          {
            goto LABEL_49;
          }

          v81 = 17;
        }

        v84 = [NEPolicyCondition ipProtocol:v81, v87];
        [v79 addObject:v84];

LABEL_49:
        v85 = [v90 matchRemoteHostOrNetworkEndpoint];
        v86 = [NEPolicyCondition schemeUsingPort:nw_endpoint_get_port(v85)];
        [v79 addObject:v86];

        if (!v79)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      v20 = +[NEPolicyCondition isInbound];
    }

    [v14 addObject:v20];

    goto LABEL_12;
  }

LABEL_43:
}

void sub_10003FA1C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 mutableCopy];
  v6 = [v5 arrayByAddingObjectsFromArray:v4];

  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315394;
    v15 = "[NESMPolicySession setPolicyForContentFilterControlUnit:providerProcessIdentity:uid:settings:limitToProcess:perApp:disableEncryptedDNSSettings:]_block_invoke";
    v16 = 2112;
    v17 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s: Installing perApp Content Filter policy %@", &v14, 0x16u);
  }

  if (!sub_10003E574(*(a1 + 40), *(a1 + 48), v6))
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to install content filter pass policies", &v14, 2u);
    }
  }

  v9 = *(a1 + 48);
  v11 = [[NEPolicy alloc] initWithOrder:*(a1 + 64) result:*(a1 + 56) conditions:v6];
  v12 = *(a1 + 40);
  if (v12)
  {
    Property = objc_getProperty(v12, v10, 48, 1);
  }

  else
  {
    Property = 0;
  }

  sub_100033A90(v9, v11, Property);
}

uint64_t sub_10003FBC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ne_log_large_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 152, 1);
    }

    *buf = 136315394;
    v22 = "[NESMPolicySession setPerAppDropPolicy:]_block_invoke";
    v23 = 2112;
    v24 = Property;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s: Policy IDs to be removed: %@", buf, 0x16u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = objc_getProperty(v7, v6, 152, 1);
  }

  else
  {
    v8 = 0;
  }

  sub_100032AF0(v3, v8);
  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) appRules];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10003FDE4;
  v18[3] = &unk_1000E9D98;
  v11 = v3;
  v12 = *(a1 + 32);
  v19 = v11;
  v20 = v12;
  sub_100037370(v9, v10, 0, 0, 0, 0, v11, v18, 0);

  v13 = ne_log_obj();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 32);
    if (v17)
    {
      v17 = objc_getProperty(v17, v14, 152, 1);
    }

    *buf = 136315394;
    v22 = "[NESMPolicySession setPerAppDropPolicy:]_block_invoke";
    v23 = 2112;
    v24 = v17;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s: Policy IDs added at Low priority: %@", buf, 0x16u);
  }

  return 1;
}

void sub_10003FDE4(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315394;
    v15 = "[NESMPolicySession setPerAppDropPolicy:]_block_invoke";
    v16 = 2112;
    v17 = v5;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s: Installing perApp drop policy %@", &v14, 0x16u);
  }

  if ((a3 & 1) == 0)
  {
    v7 = *(a1 + 32);
    v8 = [NEPolicy alloc];
    v9 = +[NEPolicyResult drop];
    v11 = [v8 initWithOrder:10000 result:v9 conditions:v5];
    v12 = *(a1 + 40);
    if (v12)
    {
      Property = objc_getProperty(v12, v10, 152, 1);
    }

    else
    {
      Property = 0;
    }

    sub_1000319D0(v7, v11, Property);
  }
}

id sub_10003FF38(id result, const char *a2)
{
  if (result)
  {
    v2 = result;
    result = [objc_getProperty(result a2];
    if (result)
    {
      v3 = ne_log_large_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v7 = "[NESMPolicySession removePerAppDropPolicy]";
        v8 = 2112;
        Property = objc_getProperty(v2, v4, 152, 1);
        _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s: policy IDs to be removed: %@", buf, 0x16u);
      }

      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_100040074;
      v5[3] = &unk_1000E9C98;
      v5[4] = v2;
      return sub_100031500(NESMPolicyMasterSession, v5);
    }
  }

  return result;
}

uint64_t sub_100040074(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v3, 152, 1);
  }

  else
  {
    Property = 0;
  }

  if (sub_100032AF0(v4, Property))
  {
    v7 = sub_100031EB4(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1000400E4(uint64_t a1, void *a2)
{
  v42 = a2;
  v3 = ne_log_large_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 144, 1);
    }

    *buf = 136315394;
    v55 = "[NESMPolicySession setDefaultDropExclusionPolicy]_block_invoke";
    v56 = 2112;
    v57 = Property;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s: Policy IDs to be removed: %@", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = objc_getProperty(v6, v5, 144, 1);
  }

  else
  {
    v7 = 0;
  }

  sub_100032AF0(v42, v7);
  v40 = +[NSMutableArray array];
  v8 = NEResourcesCopyContentFilterDefaultDropExclusionList();
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v39 = v8;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v48;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v48 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v47 + 1) + 8 * i);
          v15 = [NEProcessInfo copyUUIDsForExecutable:v14, v39];
          v16 = v15;
          if (v15 && [v15 count])
          {
            if ([v16 count])
            {
              [v40 addObjectsFromArray:v16];
            }
          }

          else
          {
            v17 = ne_log_obj();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v55 = "[NESMPolicySession setDefaultDropExclusionPolicy]_block_invoke";
              v56 = 2112;
              v57 = v14;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s: Failed to resolve path %@ to Mach-o UUIDs", buf, 0x16u);
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v11);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v40;
    v18 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v44;
      do
      {
        v21 = 0;
        do
        {
          if (*v44 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = [NEPolicyCondition effectiveApplication:*(*(&v43 + 1) + 8 * v21), v39];
          v51[0] = v22;
          v23 = +[NEPolicyCondition platformBinary];
          v51[1] = v23;
          v24 = +[NEPolicyCondition allInterfaces];
          v51[2] = v24;
          v25 = [NSArray arrayWithObjects:v51 count:3];

          v26 = [NEPolicy alloc];
          v27 = [NEPolicyResult passWithFlags:1];
          v28 = [v26 initWithOrder:101 result:v27 conditions:v25];

          v30 = *(a1 + 32);
          if (v30)
          {
            v31 = objc_getProperty(v30, v29, 144, 1);
          }

          else
          {
            v31 = 0;
          }

          sub_1000319D0(v42, v28, v31);

          v21 = v21 + 1;
        }

        while (v19 != v21);
        v32 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
        v19 = v32;
      }

      while (v32);
    }

    v33 = ne_log_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v38 = *(a1 + 32);
      v8 = v39;
      if (v38)
      {
        v38 = objc_getProperty(v38, v34, 144, 1);
      }

      *buf = 136315394;
      v55 = "[NESMPolicySession setDefaultDropExclusionPolicy]_block_invoke";
      v56 = 2112;
      v57 = v38;
      _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "%s: Policy IDs added at Low priority: %@", buf, 0x16u);
      v35 = 1;
    }

    else
    {
      v35 = 1;
      v8 = v39;
    }
  }

  else
  {
    v33 = ne_log_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v55 = "[NESMPolicySession setDefaultDropExclusionPolicy]_block_invoke";
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s: Content filter exclusion list not found", buf, 0xCu);
    }

    v35 = 0;
  }

  return v35;
}

id sub_10004060C(id result, const char *a2)
{
  if (result)
  {
    v2 = result;
    result = [objc_getProperty(result a2];
    if (result)
    {
      v3 = ne_log_large_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v7 = "[NESMPolicySession removeDefaultDropExclusionPolicy]";
        v8 = 2112;
        Property = objc_getProperty(v2, v4, 144, 1);
        _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s: policy IDs to be removed: %@", buf, 0x16u);
      }

      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_100040748;
      v5[3] = &unk_1000E9C98;
      v5[4] = v2;
      return sub_100031500(NESMPolicyMasterSession, v5);
    }
  }

  return result;
}

uint64_t sub_100040748(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v3, 144, 1);
  }

  else
  {
    Property = 0;
  }

  if (sub_100032AF0(v4, Property))
  {
    v7 = sub_100031EB4(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_1000407B8(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a2;
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [v2 matchSigningIdentifier];
  v5 = [v2 matchPath];

  [v4 UTF8String];
  [v5 UTF8String];
  v6 = NEHelperCacheCopyAppUUIDMappingForUIDExtended();
  v7 = v6;
  if (v6 && xpc_get_type(v6) == &_xpc_type_array)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_1000408F8;
    applier[3] = &unk_1000EB040;
    v10 = v3;
    xpc_array_apply(v7, applier);
  }

  return v3;
}

uint64_t sub_1000408F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4 && xpc_get_type(v4) == &_xpc_type_uuid)
  {
    v6 = *(a1 + 32);
    v7 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v5)];
    [v6 addObject:v7];
  }

  return 1;
}

void sub_100040988(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && [v3 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = v4;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = sub_1000407B8(a1, v10);
          if (![v11 count])
          {
            v12 = ne_log_obj();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v13 = [v10 matchSigningIdentifier];
              *buf = 138412290;
              v20 = v13;
              _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "No Mach-O UUIDs found for app rule %@", buf, 0xCu);
            }
          }

          [v10 setCachedMachOUUIDs:v11];
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v7);
    }

    v4 = v14;
  }
}

void sub_100040B4C(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  if (a1 && isa_nsarray() && *(a1 + 8) == 1)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100040C40;
    v9[3] = &unk_1000E9FB8;
    v9[4] = a1;
    v10 = v8;
    v11 = v7;
    v12 = a4;
    sub_100031500(NESMPolicyMasterSession, v9);
  }
}

uint64_t sub_100040C40(uint64_t a1, void *a2)
{
  v93 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    Property = objc_getProperty(v3, v2, 48, 1);
  }

  else
  {
    Property = 0;
  }

  sub_100031D58(v93, Property);
  v5 = [NEPolicyResult scopeSocketToInterfaceName:*(a1 + 40)];
  v6 = sub_100033F68(*(a1 + 32));
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  obj = *(a1 + 48);
  v78 = [obj countByEnumeratingWithState:&v122 objects:v137 count:16];
  if (v78)
  {
    v77 = *v123;
    do
    {
      v7 = 0;
      do
      {
        if (*v123 != v77)
        {
          objc_enumerationMutation(obj);
        }

        v79 = v7;
        v8 = *(*(&v122 + 1) + 8 * v7);
        v82 = objc_alloc_init(NSMutableArray);
        v9 = objc_alloc_init(NSMutableArray);
        v10 = objc_alloc_init(NSMutableArray);
        v11 = *(a1 + 56);
        v80 = sub_1000407B8(*(a1 + 32), v8);
        v87 = v10;
        if (isa_nsarray())
        {
          v120 = 0u;
          v121 = 0u;
          v118 = 0u;
          v119 = 0u;
          v12 = v80;
          v13 = [v12 countByEnumeratingWithState:&v118 objects:v136 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v119;
            do
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v119 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = [NEPolicyCondition effectiveApplication:*(*(&v118 + 1) + 8 * i)];
                [v82 addObject:v17];
              }

              v14 = [v12 countByEnumeratingWithState:&v118 objects:v136 count:16];
            }

            while (v14);
          }

          v10 = v87;
        }

        if ([v82 count])
        {
          v18 = [v8 matchDomains];
          v19 = isa_nsarray();

          if (v19)
          {
            v116 = 0u;
            v117 = 0u;
            v114 = 0u;
            v115 = 0u;
            v20 = [v8 matchDomains];
            v21 = [v20 countByEnumeratingWithState:&v114 objects:v135 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v115;
              do
              {
                for (j = 0; j != v22; j = j + 1)
                {
                  if (*v115 != v23)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v25 = [NEPolicyCondition domain:*(*(&v114 + 1) + 8 * j)];
                  [v9 addObject:v25];
                }

                v22 = [v20 countByEnumeratingWithState:&v114 objects:v135 count:16];
              }

              while (v22);
            }

            v10 = v87;
          }

          v26 = [v8 matchAccountIdentifiers];
          v27 = isa_nsarray();

          if (v27)
          {
            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v28 = [v8 matchAccountIdentifiers];
            v29 = [v28 countByEnumeratingWithState:&v110 objects:v134 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v111;
              do
              {
                for (k = 0; k != v30; k = k + 1)
                {
                  if (*v111 != v31)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v33 = [NEPolicyCondition accountIdentifier:*(*(&v110 + 1) + 8 * k)];
                  [v10 addObject:v33];
                }

                v30 = [v28 countByEnumeratingWithState:&v110 objects:v134 count:16];
              }

              while (v30);
            }
          }

          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v81 = v82;
          v84 = [v81 countByEnumeratingWithState:&v106 objects:v133 count:16];
          if (v84)
          {
            v83 = *v107;
            v86 = v9;
            do
            {
              v34 = 0;
              do
              {
                if (*v107 != v83)
                {
                  objc_enumerationMutation(v81);
                }

                v85 = v34;
                v35 = *(*(&v106 + 1) + 8 * v34);
                if ([v86 count])
                {
                  v104 = 0u;
                  v105 = 0u;
                  v102 = 0u;
                  v103 = 0u;
                  v90 = v86;
                  v36 = [v90 countByEnumeratingWithState:&v102 objects:v132 count:16];
                  if (v36)
                  {
                    v37 = v36;
                    v38 = *v103;
                    v88 = *v103;
                    do
                    {
                      v39 = 0;
                      v89 = v37;
                      do
                      {
                        if (*v103 != v38)
                        {
                          objc_enumerationMutation(v90);
                        }

                        v40 = *(*(&v102 + 1) + 8 * v39);
                        if ([v10 count])
                        {
                          v100 = 0u;
                          v101 = 0u;
                          v98 = 0u;
                          v99 = 0u;
                          v41 = v10;
                          v42 = [v41 countByEnumeratingWithState:&v98 objects:v131 count:16];
                          if (v42)
                          {
                            v43 = v42;
                            v91 = v39;
                            v44 = *v99;
                            do
                            {
                              v45 = 0;
                              do
                              {
                                if (*v99 != v44)
                                {
                                  objc_enumerationMutation(v41);
                                }

                                v46 = *(*(&v98 + 1) + 8 * v45);
                                v130[0] = v35;
                                v130[1] = v40;
                                v130[2] = v46;
                                v47 = [NSArray arrayWithObjects:v130 count:3];
                                v49 = [[NEPolicy alloc] initWithOrder:(v6 + 100) result:v5 conditions:v47];
                                v50 = *(a1 + 32);
                                if (v50)
                                {
                                  v51 = objc_getProperty(v50, v48, 48, 1);
                                }

                                else
                                {
                                  v51 = 0;
                                }

                                sub_100033A90(v93, v49, v51);

                                v45 = v45 + 1;
                              }

                              while (v43 != v45);
                              v52 = [v41 countByEnumeratingWithState:&v98 objects:v131 count:16];
                              v43 = v52;
                            }

                            while (v52);
                            v10 = v87;
                            v38 = v88;
                            v37 = v89;
                            v39 = v91;
                          }
                        }

                        else
                        {
                          v129[0] = v35;
                          v129[1] = v40;
                          v41 = [NSArray arrayWithObjects:v129 count:2];
                          v54 = [[NEPolicy alloc] initWithOrder:(v6 + 100) result:v5 conditions:v41];
                          v55 = *(a1 + 32);
                          if (v55)
                          {
                            v56 = objc_getProperty(v55, v53, 48, 1);
                          }

                          else
                          {
                            v56 = 0;
                          }

                          sub_100033A90(v93, v54, v56);
                        }

                        v39 = v39 + 1;
                      }

                      while (v39 != v37);
                      v57 = [v90 countByEnumeratingWithState:&v102 objects:v132 count:16];
                      v37 = v57;
                    }

                    while (v57);
                  }

LABEL_80:
                  v34 = v85;
                  v9 = v86;
                  goto LABEL_81;
                }

                if ([v10 count])
                {
                  v96 = 0u;
                  v97 = 0u;
                  v94 = 0u;
                  v95 = 0u;
                  v90 = v10;
                  v58 = [v90 countByEnumeratingWithState:&v94 objects:v128 count:16];
                  if (v58)
                  {
                    v59 = v58;
                    v60 = *v95;
                    do
                    {
                      v61 = 0;
                      do
                      {
                        if (*v95 != v60)
                        {
                          objc_enumerationMutation(v90);
                        }

                        v62 = *(*(&v94 + 1) + 8 * v61);
                        v127[0] = v35;
                        v127[1] = v62;
                        v63 = [NSArray arrayWithObjects:v127 count:2];
                        v65 = [[NEPolicy alloc] initWithOrder:(v6 + 100) result:v5 conditions:v63];
                        v66 = *(a1 + 32);
                        if (v66)
                        {
                          v67 = objc_getProperty(v66, v64, 48, 1);
                        }

                        else
                        {
                          v67 = 0;
                        }

                        sub_100033A90(v93, v65, v67);

                        v61 = v61 + 1;
                      }

                      while (v59 != v61);
                      v68 = [v90 countByEnumeratingWithState:&v94 objects:v128 count:16];
                      v59 = v68;
                    }

                    while (v68);
                  }

                  goto LABEL_80;
                }

                v126 = v35;
                v90 = [NSArray arrayWithObjects:&v126 count:1];
                v70 = [[NEPolicy alloc] initWithOrder:(v6 + 100) result:v5 conditions:v90];
                v71 = *(a1 + 32);
                if (v71)
                {
                  v72 = objc_getProperty(v71, v69, 48, 1);
                }

                else
                {
                  v72 = 0;
                }

                v9 = v86;
                sub_100033A90(v93, v70, v72);

LABEL_81:
                v34 = v34 + 1;
              }

              while (v34 != v84);
              v73 = [v81 countByEnumeratingWithState:&v106 objects:v133 count:16];
              v84 = v73;
            }

            while (v73);
          }
        }

        v7 = v79 + 1;
      }

      while ((v79 + 1) != v78);
      v78 = [obj countByEnumeratingWithState:&v122 objects:v137 count:16];
    }

    while (v78);
  }

  v74 = sub_100031EB4(v93);
  return v74;
}

uint64_t sub_100041508(uint64_t a1, void *a2)
{
  v96 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    Property = objc_getProperty(v3, v2, 48, 1);
  }

  else
  {
    Property = 0;
  }

  sub_100031D58(v96, Property);
  v94 = [NEPolicyResult scopeSocketToInterfaceName:*(a1 + 40)];
  v5 = sub_100033F68(*(a1 + 32));
  v93 = +[NEPolicyCondition fallbackTraffic];
  v6 = [NEPolicyCondition scopedInterface:*(a1 + 40)];
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  obj = *(a1 + 48);
  v79 = [obj countByEnumeratingWithState:&v125 objects:v140 count:16];
  if (v79)
  {
    v78 = *v126;
    do
    {
      v7 = 0;
      do
      {
        if (*v126 != v78)
        {
          objc_enumerationMutation(obj);
        }

        v80 = v7;
        v8 = *(*(&v125 + 1) + 8 * v7);
        v83 = objc_alloc_init(NSMutableArray);
        v87 = objc_alloc_init(NSMutableArray);
        v9 = objc_alloc_init(NSMutableArray);
        v10 = *(a1 + 56);
        v81 = sub_1000407B8(*(a1 + 32), v8);
        if (isa_nsarray())
        {
          v123 = 0u;
          v124 = 0u;
          v121 = 0u;
          v122 = 0u;
          v11 = v81;
          v12 = [v11 countByEnumeratingWithState:&v121 objects:v139 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v122;
            do
            {
              for (i = 0; i != v13; i = i + 1)
              {
                if (*v122 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = [NEPolicyCondition effectiveApplication:*(*(&v121 + 1) + 8 * i)];
                [v83 addObject:v16];
              }

              v13 = [v11 countByEnumeratingWithState:&v121 objects:v139 count:16];
            }

            while (v13);
          }
        }

        v17 = v87;
        if ([v83 count])
        {
          v18 = [v8 matchDomains];
          v19 = isa_nsarray();

          if (v19)
          {
            v119 = 0u;
            v120 = 0u;
            v117 = 0u;
            v118 = 0u;
            v20 = [v8 matchDomains];
            v21 = [v20 countByEnumeratingWithState:&v117 objects:v138 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v118;
              do
              {
                for (j = 0; j != v22; j = j + 1)
                {
                  if (*v118 != v23)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v25 = [NEPolicyCondition domain:*(*(&v117 + 1) + 8 * j)];
                  [v87 addObject:v25];
                }

                v22 = [v20 countByEnumeratingWithState:&v117 objects:v138 count:16];
              }

              while (v22);
            }

            v17 = v87;
          }

          v26 = [v8 matchAccountIdentifiers];
          v27 = isa_nsarray();

          if (v27)
          {
            v115 = 0u;
            v116 = 0u;
            v113 = 0u;
            v114 = 0u;
            v28 = [v8 matchAccountIdentifiers];
            v29 = [v28 countByEnumeratingWithState:&v113 objects:v137 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v114;
              do
              {
                for (k = 0; k != v30; k = k + 1)
                {
                  if (*v114 != v31)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v33 = [NEPolicyCondition accountIdentifier:*(*(&v113 + 1) + 8 * k)];
                  [v9 addObject:v33];
                }

                v30 = [v28 countByEnumeratingWithState:&v113 objects:v137 count:16];
              }

              while (v30);
            }

            v17 = v87;
          }

          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v82 = v83;
          v85 = [v82 countByEnumeratingWithState:&v109 objects:v136 count:16];
          if (v85)
          {
            v84 = *v110;
            v88 = v9;
            do
            {
              v34 = 0;
              do
              {
                if (*v110 != v84)
                {
                  v35 = v34;
                  objc_enumerationMutation(v82);
                  v34 = v35;
                }

                v86 = v34;
                v36 = *(*(&v109 + 1) + 8 * v34);
                if ([v87 count])
                {
                  v107 = 0u;
                  v108 = 0u;
                  v105 = 0u;
                  v106 = 0u;
                  v91 = v87;
                  v37 = [v91 countByEnumeratingWithState:&v105 objects:v135 count:16];
                  if (v37)
                  {
                    v38 = v37;
                    v39 = *v106;
                    v89 = *v106;
                    do
                    {
                      v40 = 0;
                      v90 = v38;
                      do
                      {
                        if (*v106 != v39)
                        {
                          objc_enumerationMutation(v91);
                        }

                        v41 = *(*(&v105 + 1) + 8 * v40);
                        if ([v9 count])
                        {
                          v92 = v40;
                          v103 = 0u;
                          v104 = 0u;
                          v101 = 0u;
                          v102 = 0u;
                          v42 = v9;
                          v43 = [v42 countByEnumeratingWithState:&v101 objects:v134 count:16];
                          if (v43)
                          {
                            v44 = v43;
                            v45 = *v102;
                            do
                            {
                              v46 = 0;
                              do
                              {
                                if (*v102 != v45)
                                {
                                  objc_enumerationMutation(v42);
                                }

                                v47 = *(*(&v101 + 1) + 8 * v46);
                                v133[0] = v93;
                                v133[1] = v36;
                                v133[2] = v41;
                                v133[3] = v47;
                                v133[4] = v6;
                                v48 = [NSArray arrayWithObjects:v133 count:5];
                                v50 = [[NEPolicy alloc] initWithOrder:(v5 + 100) result:v94 conditions:v48];
                                v51 = *(a1 + 32);
                                if (v51)
                                {
                                  v52 = objc_getProperty(v51, v49, 48, 1);
                                }

                                else
                                {
                                  v52 = 0;
                                }

                                sub_100033A90(v96, v50, v52);

                                v46 = v46 + 1;
                              }

                              while (v44 != v46);
                              v53 = [v42 countByEnumeratingWithState:&v101 objects:v134 count:16];
                              v44 = v53;
                            }

                            while (v53);
                            v9 = v88;
                            v39 = v89;
                            v38 = v90;
                          }

                          v40 = v92;
                        }

                        else
                        {
                          v132[0] = v93;
                          v132[1] = v36;
                          v132[2] = v41;
                          v132[3] = v6;
                          v42 = [NSArray arrayWithObjects:v132 count:4];
                          v55 = [[NEPolicy alloc] initWithOrder:(v5 + 100) result:v94 conditions:v42];
                          v56 = *(a1 + 32);
                          if (v56)
                          {
                            v57 = objc_getProperty(v56, v54, 48, 1);
                          }

                          else
                          {
                            v57 = 0;
                          }

                          sub_100033A90(v96, v55, v57);
                        }

                        v40 = v40 + 1;
                      }

                      while (v40 != v38);
                      v58 = [v91 countByEnumeratingWithState:&v105 objects:v135 count:16];
                      v38 = v58;
                    }

                    while (v58);
                  }

LABEL_81:
                  v17 = v87;
                  goto LABEL_82;
                }

                if ([v9 count])
                {
                  v99 = 0u;
                  v100 = 0u;
                  v97 = 0u;
                  v98 = 0u;
                  v91 = v9;
                  v59 = [v91 countByEnumeratingWithState:&v97 objects:v131 count:16];
                  if (v59)
                  {
                    v60 = v59;
                    v61 = *v98;
                    do
                    {
                      v62 = 0;
                      do
                      {
                        if (*v98 != v61)
                        {
                          objc_enumerationMutation(v91);
                        }

                        v63 = *(*(&v97 + 1) + 8 * v62);
                        v130[0] = v93;
                        v130[1] = v36;
                        v130[2] = v63;
                        v130[3] = v6;
                        v64 = [NSArray arrayWithObjects:v130 count:4];
                        v66 = [[NEPolicy alloc] initWithOrder:(v5 + 100) result:v94 conditions:v64];
                        v67 = *(a1 + 32);
                        if (v67)
                        {
                          v68 = objc_getProperty(v67, v65, 48, 1);
                        }

                        else
                        {
                          v68 = 0;
                        }

                        sub_100033A90(v96, v66, v68);

                        v62 = v62 + 1;
                      }

                      while (v60 != v62);
                      v69 = [v91 countByEnumeratingWithState:&v97 objects:v131 count:16];
                      v60 = v69;
                    }

                    while (v69);
                  }

                  goto LABEL_81;
                }

                v129[0] = v93;
                v129[1] = v36;
                v129[2] = v6;
                v91 = [NSArray arrayWithObjects:v129 count:3];
                v71 = [[NEPolicy alloc] initWithOrder:(v5 + 100) result:v94 conditions:v91];
                v72 = *(a1 + 32);
                if (v72)
                {
                  v73 = objc_getProperty(v72, v70, 48, 1);
                }

                else
                {
                  v73 = 0;
                }

                v17 = v87;
                sub_100033A90(v96, v71, v73);

LABEL_82:
                v34 = v86 + 1;
              }

              while ((v86 + 1) != v85);
              v74 = [v82 countByEnumeratingWithState:&v109 objects:v136 count:16];
              v85 = v74;
            }

            while (v74);
          }
        }

        v7 = v80 + 1;
      }

      while ((v80 + 1) != v79);
      v79 = [obj countByEnumeratingWithState:&v125 objects:v140 count:16];
    }

    while (v79);
  }

  v75 = sub_100031EB4(v96);
  return v75;
}

id sub_100041E40(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    v5 = a3;
    v6 = [[NSString alloc] initWithFormat:@"%@-@%u", v5, a2];

    v7 = [v6 UTF8String];
    v8 = strlen(v7);
    CC_SHA256(v7, v8, md);
    v3 = [[NSUUID alloc] initWithUUIDBytes:md];
  }

  return v3;
}

uint64_t sub_100041F28(uint64_t a1, void *a2, void *a3, void *a4, char a5, char a6, char a7, void *a8, void *a9)
{
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a8;
  v20 = a9;
  if (a1 && ([v16 count] || objc_msgSend(v19, "count")) && *(a1 + 8) == 2)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000420B4;
    v23[3] = &unk_1000EA008;
    v24 = v17;
    v25 = a1;
    v30 = a6;
    v31 = a5;
    v32 = a7;
    v26 = v19;
    v27 = v18;
    v28 = v16;
    v29 = v20;
    v21 = sub_100031500(NESMPolicyMasterSession, v23);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

uint64_t sub_1000420B4(uint64_t a1, void *a2)
{
  v80 = a2;
  v3 = ne_log_large_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v65 = *(a1 + 32);
    Property = *(a1 + 40);
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 48, 1);
    }

    buffer[0] = 138412546;
    *&buffer[1] = v65;
    LOWORD(buffer[3]) = 2112;
    *(&buffer[3] + 2) = Property;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Policy IDs to be removed for %@: %@", buffer, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = objc_getProperty(v6, v5, 48, 1);
  }

  else
  {
    v7 = 0;
  }

  sub_100031D58(v80, v7);
  if (*(a1 + 80) == 1)
  {
    v8 = sub_100039DEC(*(a1 + 40), *(a1 + 32), @"ProxyAgent");
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 81) == 1)
  {
    v9 = sub_100039DEC(*(a1 + 40), *(a1 + 32), @"DNSAgent");
  }

  else
  {
    v9 = 0;
  }

  v78 = +[NEPolicyCondition allInterfaces];
  if (v9)
  {
    v10 = [NEPolicyResult netAgentUUID:v9];
    if (v8)
    {
LABEL_12:
      v11 = [NEPolicyResult netAgentUUID:v8];
      goto LABEL_15;
    }
  }

  else
  {
    v10 = 0;
    if (v8)
    {
      goto LABEL_12;
    }
  }

  v11 = 0;
LABEL_15:
  v73 = v9;
  v74 = v8;
  v70 = v11;
  v71 = v10;
  if (*(a1 + 82))
  {
    v68 = 0;
LABEL_18:
    v76 = 0;
    goto LABEL_20;
  }

  v68 = [NEPolicyResult scopeSocketToInterfaceName:*(a1 + 32)];
  if (*(a1 + 82))
  {
    goto LABEL_18;
  }

  v76 = [NEPolicyResult tunnelIPToInterfaceName:*(a1 + 32) secondaryResultType:0];
LABEL_20:
  v79 = [NEPolicyResult skipWithOrder:sub_100033F68(*(a1 + 40)) + 250];
  v75 = vaddq_s32(vdupq_n_s32(sub_100033F68(*(a1 + 40))), xmmword_1000C2CF0);
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v82 = a1;
  v12 = *(a1 + 48);
  v13 = [v12 countByEnumeratingWithState:&v99 objects:v111 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v100;
    do
    {
      v16 = 0;
      do
      {
        if (*v100 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v99 + 1) + 8 * v16);
        if (isa_nsstring())
        {
          v18 = [NSCharacterSet characterSetWithCharactersInString:@"*."];
          v19 = [v17 stringByTrimmingCharactersInSet:v18];
          if ([v19 length])
          {
            v110[0] = v78;
            v20 = [NEPolicyCondition domain:v19];
            v110[1] = v20;
            v21 = [NSArray arrayWithObjects:v110 count:2];

            v23 = [[NEPolicy alloc] initWithOrder:v75.u32[1] result:v76 conditions:v21];
            v24 = *(a1 + 40);
            if (v24)
            {
              v25 = objc_getProperty(v24, v22, 48, 1);
            }

            else
            {
              v25 = 0;
            }

            sub_100033A90(v80, v23, v25);
          }
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v26 = [v12 countByEnumeratingWithState:&v99 objects:v111 count:16];
      v14 = v26;
    }

    while (v26);
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v27 = *(a1 + 56);
  v28 = [v27 countByEnumeratingWithState:&v95 objects:v109 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = 0;
    v31 = *v96;
    do
    {
      v32 = 0;
      do
      {
        if (*v96 != v31)
        {
          objc_enumerationMutation(v27);
        }

        v33 = *(*(&v95 + 1) + 8 * v32);
        v108 = 0;
        v107 = 0u;
        memset(buffer, 0, sizeof(buffer));
        if (proc_pidinfo([v33 intValue], 17, 1uLL, buffer, 56) == 56)
        {
          v34 = [[NSUUID alloc] initWithUUIDBytes:buffer];
          if (!v30)
          {
            v30 = objc_alloc_init(NSMutableArray);
          }

          [v30 addObject:v34];
          v35 = +[NEPolicyCondition effectivePID:](NEPolicyCondition, "effectivePID:", [v33 intValue]);
          v105[0] = v35;
          v36 = [NEPolicyCondition effectiveApplication:v34];
          v105[1] = v36;
          v37 = +[NEPolicyCondition allInterfaces];
          v105[2] = v37;
          v38 = [NSArray arrayWithObjects:v105 count:3];

          v40 = [[NEPolicy alloc] initWithOrder:sub_100033F68(v82[5]) + 150 result:v79 conditions:v38];
          v41 = v82[5];
          if (v41)
          {
            v42 = objc_getProperty(v41, v39, 48, 1);
          }

          else
          {
            v42 = 0;
          }

          sub_100033A90(v80, v40, v42);
        }

        v32 = v32 + 1;
      }

      while (v29 != v32);
      v43 = [v27 countByEnumeratingWithState:&v95 objects:v109 count:16];
      v29 = v43;
    }

    while (v43);
  }

  else
  {
    v30 = 0;
  }

  v44 = v82[5];
  v46 = v82[8];
  v45 = v82[9];
  v87[0] = _NSConcreteStackBlock;
  v87[1] = 3221225472;
  v87[2] = sub_1000429B0;
  v87[3] = &unk_1000E9FE0;
  v69 = v68;
  v88 = v69;
  v47 = v80;
  v48 = v82[5];
  v89 = v47;
  v90 = v48;
  v77 = v76;
  v91 = v77;
  v81 = v71;
  v92 = v81;
  v72 = v70;
  v93 = v72;
  v94 = v75;
  v83[0] = _NSConcreteStackBlock;
  v83[1] = 3221225472;
  v83[2] = sub_100042BF4;
  v83[3] = &unk_1000E9E28;
  v49 = v47;
  v50 = v82[5];
  v84 = v49;
  v85 = v50;
  v51 = v79;
  v86 = v51;
  sub_100037370(v44, v46, 1, 1, v30, v45, v49, v87, v83);
  v52 = [NEPolicyRouteRule routeRuleWithAction:2 forInterfaceName:v82[4]];
  v104 = v52;
  v53 = [NSArray arrayWithObjects:&v104 count:1];

  LODWORD(v52) = sub_100033F68(v82[5]);
  v54 = [NEPolicyResult routeRules:v53];
  v103 = v78;
  v55 = [NSArray arrayWithObjects:&v103 count:1];
  v57 = [[NEPolicy alloc] initWithOrder:(v52 + 200) result:v54 conditions:v55];
  v58 = v82[5];
  if (v58)
  {
    v59 = objc_getProperty(v58, v56, 48, 1);
  }

  else
  {
    v59 = 0;
  }

  sub_100033A90(v49, v57, v59);

  v60 = sub_100031EB4(v49);
  v61 = ne_log_large_obj();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
  {
    v67 = v82[4];
    v66 = v82[5];
    if (v66)
    {
      v66 = objc_getProperty(v66, v62, 48, 1);
    }

    buffer[0] = 138412546;
    *&buffer[1] = v67;
    LOWORD(buffer[3]) = 2112;
    *(&buffer[3] + 2) = v66;
    _os_log_debug_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEBUG, "Policy IDs added for %@: %@", buffer, 0x16u);
  }

  return v60;
}

void sub_1000429B0(uint64_t a1, void *a2, char a3)
{
  v32 = a2;
  if (a3)
  {
    v5 = *(a1 + 40);
    v6 = [NEPolicy alloc];
    v7 = sub_100033F68(*(a1 + 48));
    v8 = [NEPolicyResult skipWithOrder:(v7 + 250)];
    v10 = [v6 initWithOrder:(v7 + 150) result:v8 conditions:v32];
    v11 = *(a1 + 48);
    if (v11)
    {
      Property = objc_getProperty(v11, v9, 48, 1);
    }

    else
    {
      Property = 0;
    }

    sub_100033A90(v5, v10, Property);

LABEL_21:
    goto LABEL_22;
  }

  if (*(a1 + 32))
  {
    v13 = *(a1 + 40);
    v15 = [[NEPolicy alloc] initWithOrder:*(a1 + 80) result:*(a1 + 32) conditions:v32];
    v16 = *(a1 + 48);
    if (v16)
    {
      v17 = objc_getProperty(v16, v14, 48, 1);
    }

    else
    {
      v17 = 0;
    }

    sub_100033A90(v13, v15, v17);
  }

  if (*(a1 + 56))
  {
    v18 = *(a1 + 40);
    v20 = [[NEPolicy alloc] initWithOrder:*(a1 + 84) result:*(a1 + 56) conditions:v32];
    v21 = *(a1 + 48);
    if (v21)
    {
      v22 = objc_getProperty(v21, v19, 48, 1);
    }

    else
    {
      v22 = 0;
    }

    sub_100033A90(v18, v20, v22);
  }

  if (*(a1 + 64))
  {
    v23 = *(a1 + 40);
    v25 = [[NEPolicy alloc] initWithOrder:*(a1 + 88) result:*(a1 + 64) conditions:v32];
    v26 = *(a1 + 48);
    if (v26)
    {
      v27 = objc_getProperty(v26, v24, 48, 1);
    }

    else
    {
      v27 = 0;
    }

    sub_100033A90(v23, v25, v27);
  }

  if (*(a1 + 72))
  {
    v28 = *(a1 + 40);
    v8 = [[NEPolicy alloc] initWithOrder:*(a1 + 92) result:*(a1 + 72) conditions:v32];
    v30 = *(a1 + 48);
    if (v30)
    {
      v31 = objc_getProperty(v30, v29, 48, 1);
    }

    else
    {
      v31 = 0;
    }

    sub_100033A90(v28, v8, v31);
    goto LABEL_21;
  }

LABEL_22:
}

void sub_100042BF4(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v8 = [[NEPolicy alloc] initWithOrder:sub_100033F68(a1[5]) + 5 result:a1[6] conditions:v4];

  v6 = a1[5];
  if (v6)
  {
    Property = objc_getProperty(v6, v5, 48, 1);
  }

  else
  {
    Property = 0;
  }

  sub_100033A90(v3, v8, Property);
}

uint64_t sub_100042CA8(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [NWAddressEndpoint endpointWithHostname:@"224.0.0.0" port:@"0"];
  v2 = [NEPolicyCondition remoteAddress:v1 prefix:4];

  v3 = [NWAddressEndpoint endpointWithHostname:@"ff00::" port:@"0"];
  v4 = [NEPolicyCondition remoteAddress:v3 prefix:8];

  v5 = [NWAddressEndpoint endpointWithHostname:@"255.255.255.255" port:@"0"];
  v6 = [NEPolicyCondition remoteAddress:v5 prefix:32];

  v7 = [NWAddressEndpoint endpointWithHostname:@"224.0.0.0" port:@"0"];
  v8 = [NEPolicyCondition localAddress:v7 prefix:4];

  v9 = [NWAddressEndpoint endpointWithHostname:@"ff00::" port:@"0"];
  v10 = [NEPolicyCondition localAddress:v9 prefix:8];

  v11 = [NWAddressEndpoint endpointWithHostname:@"255.255.255.255" port:@"0"];
  v12 = [NEPolicyCondition localAddress:v11 prefix:32];

  v15[0] = v2;
  v15[1] = v4;
  v15[2] = v6;
  v15[3] = v8;
  v15[4] = v10;
  v15[5] = v12;
  v13 = [NSArray arrayWithObjects:v15 count:6];

  return v13;
}

BOOL sub_100042EE0(void *a1, void *a2, int a3, void *a4, unsigned int a5, void *a6, _BYTE *a7, void *a8, void *a9)
{
  v13 = a2;
  v14 = a4;
  v257 = a6;
  v233 = a8;
  v231 = v13;
  v232 = a9;
  v258 = v14;
  if (!a1)
  {
    v219 = 0;
    goto LABEL_113;
  }

  v15 = [v13 multicastPreferenceSet];
  v16 = [v13 matchSigningIdentifier];
  v17 = [v16 isEqualToString:@"PathRuleDefaultNonSystemIdentifier"];

  v229 = v17;
  self = a1;
  v235 = v15;
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    v228 = 0;
LABEL_31:
    v230 = 1;
    goto LABEL_32;
  }

  [v13 isIdentifierExternal];
  v20 = sub_1000407B8(a1, v13);
  v21 = [v20 count];
  v230 = v21 != 0;
  v22 = ne_log_obj();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  v228 = v20;
  if (v21)
  {
    if (v23)
    {
      v24 = [v13 matchSigningIdentifier];
      *buf = 138412546;
      v328 = v24;
      v329 = 2112;
      v330 = v20;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "UUID: Found for %@: %@", buf, 0x16u);
    }

    v25 = [v13 matchDomains];
    v26 = isa_nsarray();

    if (v26)
    {
      v19 = objc_alloc_init(NSMutableArray);
      v287 = 0u;
      v288 = 0u;
      v289 = 0u;
      v290 = 0u;
      v27 = [v13 matchDomains];
      v28 = [v27 countByEnumeratingWithState:&v287 objects:v326 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v288;
        do
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v288 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = [NEPolicyCondition domain:*(*(&v287 + 1) + 8 * i)];
            [v19 addObject:v32];
          }

          v29 = [v27 countByEnumeratingWithState:&v287 objects:v326 count:16];
        }

        while (v29);
      }

      v13 = v231;
    }

    else
    {
      v19 = 0;
    }

    v34 = [v13 matchAccountIdentifiers];
    v35 = isa_nsarray();

    if (!v35)
    {
      v18 = 0;
      goto LABEL_31;
    }

    v36 = objc_alloc_init(NSMutableArray);
    v283 = 0u;
    v284 = 0u;
    v285 = 0u;
    v286 = 0u;
    v22 = [v13 matchAccountIdentifiers];
    v37 = [v22 countByEnumeratingWithState:&v283 objects:v325 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v284;
      do
      {
        for (j = 0; j != v38; j = j + 1)
        {
          if (*v284 != v39)
          {
            objc_enumerationMutation(v22);
          }

          v41 = [NEPolicyCondition accountIdentifier:*(*(&v283 + 1) + 8 * j)];
          [v36 addObject:v41];
        }

        v38 = [v22 countByEnumeratingWithState:&v283 objects:v325 count:16];
      }

      while (v38);
    }

    v18 = v36;
    a1 = self;
  }

  else
  {
    if (v23)
    {
      v33 = [v13 matchSigningIdentifier];
      *buf = 138412290;
      v328 = v33;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "UUID: Failed to find UUIDs for %@", buf, 0xCu);
    }

    v18 = 0;
    v19 = 0;
  }

LABEL_32:
  v239 = v19;
  v42 = +[NEPolicyCondition allInterfaces];
  v43 = CTBundle_ptr;
  v255 = v42;
  if ((*a7 & 1) == 0)
  {
    v250 = sub_100042CA8(a1);
    v44 = +[NEPolicyCondition localNetworks];
    v45 = [NEPolicyCondition ipProtocol:0];
    [v45 setNegative:1];
    v46 = +[NEPolicyCondition isSystemProxyConnection];
    [v46 setNegative:1];
    v47 = [NEPolicyResult dropWithFlags:1];
    v248 = [NEPolicyResult dropWithFlags:3];
    v324[0] = v42;
    v222 = v46;
    v223 = v45;
    v324[1] = v45;
    v324[2] = v46;
    v224 = v44;
    v324[3] = v44;
    v48 = [NSArray arrayWithObjects:v324 count:4];
    v246 = v47;
    v49 = [[NEPolicy alloc] initWithOrder:18090 result:v47 conditions:v48];
    Property = objc_getProperty(a1, v50, 48, 1);
    sub_100033A90(v14, v49, Property);

    v52 = [[NEPolicy alloc] initWithOrder:18104 result:v248 conditions:v48];
    v54 = objc_getProperty(a1, v53, 48, 1);
    sub_100033A90(v14, v52, v54);

    v281 = 0u;
    v282 = 0u;
    v279 = 0u;
    v280 = 0u;
    obj = v250;
    v55 = [obj countByEnumeratingWithState:&v279 objects:v323 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v280;
      do
      {
        for (k = 0; k != v56; k = k + 1)
        {
          if (*v280 != v57)
          {
            objc_enumerationMutation(obj);
          }

          v59 = *(*(&v279 + 1) + 8 * k);
          v322[0] = v42;
          v322[1] = v59;
          v60 = [NSArray arrayWithObjects:v322 count:2];
          v61 = [[NEPolicy alloc] initWithOrder:18092 result:v246 conditions:v60];
          v63 = objc_getProperty(a1, v62, 48, 1);
          sub_100033A90(v14, v61, v63);

          v64 = [[NEPolicy alloc] initWithOrder:18106 result:v248 conditions:v60];
          v66 = objc_getProperty(a1, v65, 48, 1);
          sub_100033A90(v14, v64, v66);
        }

        v56 = [obj countByEnumeratingWithState:&v279 objects:v323 count:16];
      }

      while (v56);
    }

    v67 = [NEPolicyResult netAgentUUID:v232];
    v68 = [NEPolicy alloc];
    v321 = v42;
    v69 = [NSArray arrayWithObjects:&v321 count:1];
    v70 = [v68 initWithOrder:18092 result:v67 conditions:v69];
    v72 = objc_getProperty(a1, v71, 48, 1);
    sub_100033A90(v14, v70, v72);

    v73 = [NEPolicy alloc];
    v320 = v42;
    v74 = [NSArray arrayWithObjects:&v320 count:1];
    v221 = v67;
    v75 = [v73 initWithOrder:18106 result:v67 conditions:v74];
    v77 = objc_getProperty(a1, v76, 48, 1);
    sub_100033A90(v14, v75, v77);

    v78 = [NEPolicy alloc];
    v79 = [NEPolicyResult skipWithOrder:18120];
    v319 = v42;
    v80 = [NSArray arrayWithObjects:&v319 count:1];
    v81 = [v78 initWithOrder:18075 result:v79 conditions:v80];
    v83 = objc_getProperty(a1, v82, 48, 1);
    sub_100033A90(v14, v81, v83);

    if (ne_session_applications_have_local_network_entitlements())
    {
      v84 = [NEPolicy alloc];
      v85 = [NEPolicyResult skipWithOrder:18120];
      v318[0] = v42;
      v86 = [NEPolicyCondition customEntitlement:@"com.apple.developer.media-device-discovery-extension"];
      v318[1] = v86;
      v87 = [NSArray arrayWithObjects:v318 count:2];
      v88 = [v84 initWithOrder:18085 result:v85 conditions:v87];
      v90 = objc_getProperty(self, v89, 48, 1);
      sub_100033A90(v14, v88, v90);

      v91 = [NEPolicy alloc];
      v92 = [NEPolicyResult skipWithOrder:18120];
      v317[0] = v42;
      v93 = [NEPolicyCondition customEntitlement:@"com.apple.developer.media-device-discovery-extension"];
      v317[1] = v93;
      v94 = [NSArray arrayWithObjects:v317 count:2];
      v95 = [v91 initWithOrder:18099 result:v92 conditions:v94];
      v97 = objc_getProperty(self, v96, 48, 1);
      sub_100033A90(v14, v95, v97);

      v98 = [NEPolicy alloc];
      v99 = [NEPolicyResult skipWithOrder:18120];
      v316[0] = v42;
      v100 = [NEPolicyCondition customEntitlement:@"com.apple.developer.wifi-aware"];
      v316[1] = v100;
      v101 = [NSArray arrayWithObjects:v316 count:2];
      v102 = [v98 initWithOrder:18085 result:v99 conditions:v101];
      v104 = objc_getProperty(self, v103, 48, 1);
      sub_100033A90(v14, v102, v104);

      v105 = [NEPolicy alloc];
      v106 = [NEPolicyResult skipWithOrder:18120];
      v315[0] = v42;
      v107 = [NEPolicyCondition customEntitlement:@"com.apple.developer.wifi-aware"];
      v315[1] = v107;
      v108 = [NSArray arrayWithObjects:v315 count:2];
      v109 = [v105 initWithOrder:18099 result:v106 conditions:v108];
      v111 = objc_getProperty(self, v110, 48, 1);
      sub_100033A90(v14, v109, v111);

      a1 = self;
    }

    v226 = +[NEPolicyCondition isListener];
    v225 = +[NEPolicyCondition isInbound];
    v227 = +[NEPolicyCondition hasSignedResult];
    v112 = [NEPolicy alloc];
    v113 = [NEPolicyResult skipWithOrder:18091];
    v314[0] = v226;
    v314[1] = v42;
    v114 = [NSArray arrayWithObjects:v314 count:2];
    v115 = [v112 initWithOrder:18085 result:v113 conditions:v114];
    v117 = objc_getProperty(a1, v116, 48, 1);
    sub_100033A90(v14, v115, v117);

    v118 = [NEPolicy alloc];
    v119 = [NEPolicyResult skipWithOrder:18091];
    v313[0] = v225;
    v313[1] = v42;
    v120 = [NSArray arrayWithObjects:v313 count:2];
    v121 = [v118 initWithOrder:18085 result:v119 conditions:v120];
    v123 = objc_getProperty(a1, v122, 48, 1);
    sub_100033A90(v14, v121, v123);

    v124 = [NEPolicy alloc];
    v125 = [NEPolicyResult skipWithOrder:18091];
    v312[0] = v227;
    v312[1] = v42;
    v126 = [NSArray arrayWithObjects:v312 count:2];
    v127 = [v124 initWithOrder:18085 result:v125 conditions:v126];
    v129 = objc_getProperty(a1, v128, 48, 1);
    sub_100033A90(v14, v127, v129);

    v130 = [NEPolicy alloc];
    v131 = [NEPolicyResult skipWithOrder:18105];
    v311[0] = v226;
    v311[1] = v42;
    v132 = [NSArray arrayWithObjects:v311 count:2];
    v133 = [v130 initWithOrder:18099 result:v131 conditions:v132];
    v135 = objc_getProperty(a1, v134, 48, 1);
    sub_100033A90(v14, v133, v135);

    v136 = [NEPolicy alloc];
    v137 = [NEPolicyResult skipWithOrder:18105];
    v310[0] = v225;
    v310[1] = v42;
    v138 = [NSArray arrayWithObjects:v310 count:2];
    v139 = [v136 initWithOrder:18099 result:v137 conditions:v138];
    v141 = objc_getProperty(a1, v140, 48, 1);
    sub_100033A90(v14, v139, v141);

    v142 = [NEPolicy alloc];
    v143 = [NEPolicyResult skipWithOrder:18105];
    v309[0] = v227;
    v309[1] = v42;
    v144 = [NSArray arrayWithObjects:v309 count:2];
    v145 = [v142 initWithOrder:18099 result:v143 conditions:v144];
    v147 = objc_getProperty(a1, v146, 48, 1);
    sub_100033A90(v14, v145, v147);

    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v240 = v233;
    v251 = [v240 countByEnumeratingWithState:&v275 objects:v308 count:16];
    if (v251)
    {
      v244 = *v276;
      do
      {
        for (m = 0; m != v251; m = m + 1)
        {
          if (*v276 != v244)
          {
            objc_enumerationMutation(v240);
          }

          v149 = *(*(&v275 + 1) + 8 * m);
          buf[0] = 0;
          [v149 UTF8String];
          address_from_string = nw_endpoint_create_address_from_string();
          if (address_from_string)
          {
            v151 = [NWAddressEndpoint endpointWithCEndpoint:address_from_string];
            v152 = [NEPolicyCondition remoteAddress:v151 prefix:buf[0]];
            v153 = [NEPolicy alloc];
            v154 = [NEPolicyResult skipWithOrder:18091];
            v307[0] = v152;
            v307[1] = v255;
            v155 = [NSArray arrayWithObjects:v307 count:2];
            v156 = [v153 initWithOrder:18085 result:v154 conditions:v155];
            v158 = objc_getProperty(self, v157, 48, 1);
            sub_100033A90(v14, v156, v158);

            v159 = [NEPolicy alloc];
            v160 = [NEPolicyResult skipWithOrder:18105];
            v306[0] = v152;
            v306[1] = v255;
            v161 = [NSArray arrayWithObjects:v306 count:2];
            v162 = [v159 initWithOrder:18099 result:v160 conditions:v161];
            v164 = objc_getProperty(self, v163, 48, 1);
            sub_100033A90(v14, v162, v164);
          }
        }

        v251 = [v240 countByEnumeratingWithState:&v275 objects:v308 count:16];
      }

      while (v251);
    }

    *a7 = 1;
    v42 = v255;
    v43 = CTBundle_ptr;
  }

  if (v235)
  {
    v165 = 18094;
  }

  else
  {
    v165 = 18080;
  }

  if (a3)
  {
    v166 = v165;
  }

  else
  {
    v166 = 18120;
  }

  v167 = [NEPolicyResult skipWithOrder:v166];
  v271 = 0u;
  v272 = 0u;
  v273 = 0u;
  v274 = 0u;
  v236 = v228;
  v245 = v18;
  v241 = [v236 countByEnumeratingWithState:&v271 objects:v305 count:16];
  if (v241)
  {
    v238 = *v272;
    do
    {
      v168 = 0;
      do
      {
        if (*v272 != v238)
        {
          objc_enumerationMutation(v236);
        }

        obja = v168;
        v169 = *(*(&v271 + 1) + 8 * v168);
        v170 = [NEPolicyCondition effectiveApplication:v169];
        v171 = [NEPolicyCondition realApplication:v169];
        if ([v239 count])
        {
          v269 = 0u;
          v270 = 0u;
          v267 = 0u;
          v268 = 0u;
          v172 = v239;
          v252 = [v172 countByEnumeratingWithState:&v267 objects:v304 count:16];
          if (v252)
          {
            v247 = v172;
            v249 = *v268;
            do
            {
              v173 = 0;
              do
              {
                if (*v268 != v249)
                {
                  objc_enumerationMutation(v172);
                }

                selfa = v173;
                v174 = *(*(&v267 + 1) + 8 * v173);
                if ([v18 count])
                {
                  v265 = 0u;
                  v266 = 0u;
                  v263 = 0u;
                  v264 = 0u;
                  v175 = v18;
                  v176 = [v175 countByEnumeratingWithState:&v263 objects:v303 count:16];
                  if (v176)
                  {
                    v177 = v176;
                    v178 = *v264;
                    do
                    {
                      for (n = 0; n != v177; n = n + 1)
                      {
                        if (*v264 != v178)
                        {
                          objc_enumerationMutation(v175);
                        }

                        v180 = *(*(&v263 + 1) + 8 * n);
                        if (a3)
                        {
                          v302[0] = v170;
                          v302[1] = v171;
                          v302[2] = v174;
                          v302[3] = v180;
                          v302[4] = v255;
                          v181 = v43[176];
                          v182 = v302;
                          v183 = 5;
                        }

                        else
                        {
                          v301[0] = v170;
                          v301[1] = v174;
                          v301[2] = v180;
                          v301[3] = v255;
                          v181 = v43[176];
                          v182 = v301;
                          v183 = 4;
                        }

                        v184 = [v181 arrayWithObjects:v182 count:v183];
                        v185 = [[NEPolicy alloc] initWithOrder:18070 result:v167 conditions:v184];
                        sub_100033A90(v258, v185, v257);

                        v43 = CTBundle_ptr;
                      }

                      v177 = [v175 countByEnumeratingWithState:&v263 objects:v303 count:16];
                    }

                    while (v177);
                    v14 = v258;
                    v18 = v245;
                  }

                  v172 = v247;
                }

                else
                {
                  if (a3)
                  {
                    v300[0] = v170;
                    v300[1] = v171;
                    v300[2] = v174;
                    v300[3] = v255;
                    v186 = v43[176];
                    v187 = v300;
                    v188 = 4;
                  }

                  else
                  {
                    v299[0] = v170;
                    v299[1] = v174;
                    v299[2] = v255;
                    v186 = v43[176];
                    v187 = v299;
                    v188 = 3;
                  }

                  v175 = [v186 arrayWithObjects:v187 count:v188];
                  v189 = [[NEPolicy alloc] initWithOrder:18070 result:v167 conditions:v175];
                  sub_100033A90(v14, v189, v257);
                }

                v173 = selfa + 1;
              }

              while (selfa + 1 != v252);
              v252 = [v172 countByEnumeratingWithState:&v267 objects:v304 count:16];
            }

            while (v252);
            v42 = v255;
          }
        }

        else if ([v18 count])
        {
          v261 = 0u;
          v262 = 0u;
          v259 = 0u;
          v260 = 0u;
          v172 = v18;
          v190 = [v172 countByEnumeratingWithState:&v259 objects:v298 count:16];
          if (v190)
          {
            v191 = v190;
            v192 = v42;
            v193 = *v260;
            do
            {
              for (ii = 0; ii != v191; ii = ii + 1)
              {
                if (*v260 != v193)
                {
                  objc_enumerationMutation(v172);
                }

                v195 = v172;
                v196 = *(*(&v259 + 1) + 8 * ii);
                if (a3)
                {
                  v297[0] = v170;
                  v297[1] = v171;
                  v297[2] = v196;
                  v297[3] = v192;
                  v197 = v297;
                  v198 = 4;
                }

                else
                {
                  v296[0] = v170;
                  v296[1] = v196;
                  v296[2] = v192;
                  v197 = v296;
                  v198 = 3;
                }

                v199 = [NSArray arrayWithObjects:v197 count:v198];
                v200 = [[NEPolicy alloc] initWithOrder:18070 result:v167 conditions:v199];
                sub_100033A90(v258, v200, v257);

                v172 = v195;
              }

              v191 = [v195 countByEnumeratingWithState:&v259 objects:v298 count:16];
            }

            while (v191);
            v18 = v245;
            v43 = CTBundle_ptr;
            v42 = v192;
            v14 = v258;
          }

          else
          {
            v43 = CTBundle_ptr;
          }
        }

        else
        {
          if (a3)
          {
            v295[0] = v170;
            v295[1] = v171;
            v295[2] = v42;
            v201 = v43[176];
            v202 = v295;
            v203 = 3;
          }

          else
          {
            v294[0] = v170;
            v294[1] = v42;
            v201 = v43[176];
            v202 = v294;
            v203 = 2;
          }

          v172 = [v201 arrayWithObjects:v202 count:v203];
          v204 = [[NEPolicy alloc] initWithOrder:18070 result:v167 conditions:v172];
          sub_100033A90(v14, v204, v257);
        }

        v168 = obja + 1;
      }

      while (obja + 1 != v241);
      v241 = [v236 countByEnumeratingWithState:&v271 objects:v305 count:16];
    }

    while (v241);
  }

  v205 = a3;
  if (!a5)
  {
    v205 = 0;
  }

  if ((v205 & v229) == 1)
  {
    v206 = [NEPolicy alloc];
    v207 = [NEPolicyResult skipWithOrder:18120];
    v293[0] = v42;
    +[NEPolicyCondition delegateIsPlatformBinary];
    v209 = v208 = v43;
    v293[1] = v209;
    v210 = [v208[176] arrayWithObjects:v293 count:2];
    v211 = [v206 initWithOrder:18072 result:v207 conditions:v210];
    sub_100033A90(v258, v211, v257);

    v212 = +[NEPolicyCondition flowRemoteAddressEmpty];
    [v212 setNegative:1];
    v213 = [NEPolicyCondition effectivePID:0];
    [v213 setNegative:1];
    v214 = [NEPolicyCondition uid:a5];
    v215 = [NEPolicy alloc];
    v216 = [NEPolicyResult skipWithOrder:18080];
    v292[0] = v42;
    v292[1] = v212;
    v292[2] = v213;
    v292[3] = v214;
    v217 = [v208[176] arrayWithObjects:v292 count:4];
    v218 = [v215 initWithOrder:18074 result:v216 conditions:v217];
    v18 = v245;
    sub_100033A90(v258, v218, v257);
  }

  v291 = v230;

  v219 = v291;
LABEL_113:

  return v219;
}

uint64_t sub_1000446AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ne_log_large_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 48, 1);
    }

    v344 = Property;
    if (v3)
    {
      v345 = objc_getProperty(v3, v343, 32, 1);
    }

    else
    {
      v345 = 0;
    }

    v346 = v345;
    *buf = 138412546;
    v475 = v344;
    v476 = 2112;
    v477 = v346;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Policy IDs to be removed: %@ and %@", buf, 0x16u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = objc_getProperty(v7, v6, 48, 1);
  }

  v8 = v7;
  sub_100031D58(v3, v8);

  if (v3)
  {
    v10 = objc_getProperty(v3, v9, 32, 1);
    sub_100031D58(v3, v10);
  }

  else
  {
    v10 = 0;
  }

  v382 = sub_100033F68(*(a1 + 32));
  v379 = [NEPolicyResult skipWithOrder:(v382 + 130)];
  v378 = +[NEPolicyCondition allInterfaces];
  v12 = *(a1 + 32);
  if (v12)
  {
    v12 = objc_getProperty(v12, v11, 184, 1);
  }

  v13 = v12;
  v14 = [v13 allKeys];
  v349 = [v14 mutableCopy];

  v16 = *(a1 + 32);
  if (v16)
  {
    v16 = objc_getProperty(v16, v15, 192, 1);
  }

  v17 = v16;
  v18 = [v17 allKeys];
  v348 = [v18 mutableCopy];

  v20 = *(a1 + 32);
  if (v20)
  {
    v20 = objc_getProperty(v20, v19, 200, 1);
  }

  v21 = v20;
  v22 = [v21 allKeys];
  v347 = [v22 mutableCopy];

  v448 = 0;
  v444 = 0u;
  v445 = 0u;
  v446 = 0u;
  v447 = 0u;
  v23 = *(a1 + 40);
  v24 = [v23 countByEnumeratingWithState:&v444 objects:v473 count:16];
  v381 = v3;
  if (v24)
  {
    v25 = v24;
    v26 = *v445;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v445 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v444 + 1) + 8 * i);
        v29 = [v28 matchSigningIdentifier];
        if ([v29 isEqualToString:@"PathRuleDefaultNonSystemIdentifier"])
        {
          v30 = [v28 denyMulticast];

          if (v30)
          {
            v350 = 1;
            goto LABEL_24;
          }
        }

        else
        {
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v444 objects:v473 count:16];
    }

    while (v25);
    v350 = 0;
LABEL_24:
    v3 = v381;
  }

  else
  {
    v350 = 0;
  }

  v443 = 0u;
  v442 = 0u;
  v441 = 0u;
  v440 = 0u;
  obj = *(a1 + 40);
  v380 = a1;
  v354 = [obj countByEnumeratingWithState:&v440 objects:v472 count:16];
  if (v354)
  {
    v353 = *v441;
    do
    {
      v31 = 0;
      do
      {
        if (*v441 != v353)
        {
          objc_enumerationMutation(obj);
        }

        v355 = v31;
        v32 = *(*(&v440 + 1) + 8 * v31);
        v33 = [v32 matchSigningIdentifier];
        v34 = [v32 matchSigningIdentifier];
        v35 = [v34 isEqualToString:@"PathRuleDefaultIdentifier"];

        v356 = v33;
        if (v35)
        {
          v36 = [*(a1 + 48) objectForKeyedSubscript:v33];
          if (isa_nsarray())
          {
            v37 = [NEPolicyResult routeRules:v36];
            v471 = v378;
            v38 = [NSArray arrayWithObjects:&v471 count:1];
            v40 = [[NEPolicy alloc] initWithOrder:(v382 + 120) result:v37 conditions:v38];
            v41 = *(a1 + 32);
            if (v41)
            {
              v41 = objc_getProperty(v41, v39, 48, 1);
            }

            v42 = v41;
            sub_100033A90(v3, v40, v42);
          }

          goto LABEL_198;
        }

        v43 = [v32 matchSigningIdentifier];
        v44 = [v43 isEqualToString:@"PathRuleDefaultNonSystemIdentifier"];

        if (!v44)
        {
          v36 = objc_alloc_init(NSMutableArray);
          v361 = objc_alloc_init(NSMutableArray);
          v48 = objc_alloc_init(NSMutableArray);
          v49 = *(a1 + 32);
          [v32 isIdentifierExternal];
          v50 = *(a1 + 104);
          v352 = sub_1000407B8(v49, v32);
          if (![v32 denyMulticast])
          {
            goto LABEL_45;
          }

          v52 = [v32 temporaryAllowMulticastNetworkName];
          if (v52)
          {
            v53 = v52;
            v54 = [v32 temporaryAllowMulticastNetworkName];
            v55 = [v54 isEqualToString:*(a1 + 72)];

            if (v55)
            {
LABEL_45:
              if (v350)
              {
                v56 = *(a1 + 32);
                if (v56)
                {
                  v56 = objc_getProperty(v56, v51, 200, 1);
                }

                v57 = v56;
                v58 = [v57 objectForKeyedSubscript:v33];

                v59 = *(a1 + 32);
                [v32 isIdentifierExternal];
                v60 = *(a1 + 104);
                v61 = sub_1000407B8(v59, v32);
                v62 = [v58 count];
                v63 = ne_log_obj();
                v64 = os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG);
                if (v62)
                {
                  if (v64)
                  {
                    v183 = [v32 matchSigningIdentifier];
                    *buf = 138412546;
                    v475 = v183;
                    v476 = 2112;
                    v477 = v58;
                    _os_log_debug_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEBUG, "Policy IDs already present for %@: %@", buf, 0x16u);
                  }

                  [v347 removeObject:v33];
                  v66 = *(a1 + 32);
                  if (v66)
                  {
                    v66 = objc_getProperty(v66, v65, 208, 1);
                  }

                  v67 = v66;
                  v63 = [v67 objectForKeyedSubscript:v33];

                  if (([v63 isEqualToArray:v61]& 1) != 0)
                  {
                    v68 = v58;
                    v3 = v381;
                    goto LABEL_102;
                  }

                  v97 = ne_log_obj();
                  if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
                  {
                    [v32 matchSigningIdentifier];
                    v185 = v184 = v61;
                    *buf = 138412546;
                    v475 = v185;
                    v476 = 2112;
                    v477 = v58;
                    _os_log_debug_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEBUG, "Allow Policy IDs to be removed for %@: %@", buf, 0x16u);

                    v61 = v184;
                  }

                  sub_100031D58(v381, v58);
                }

                else if (v64)
                {
                  v88 = [v32 matchSigningIdentifier];
                  *buf = 138412546;
                  v475 = v88;
                  v476 = 2112;
                  v477 = v58;
                  _os_log_debug_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEBUG, "Policy IDs not present for %@: %@", buf, 0x16u);
                }

                v68 = objc_alloc_init(NSMutableArray);
                v99 = *(a1 + 32);
                if (v99)
                {
                  v99 = objc_getProperty(v99, v98, 200, 1);
                }

                v3 = v381;
                v100 = v99;
                [v100 setObject:v68 forKeyedSubscript:v356];

                v102 = *(a1 + 32);
                if (v102)
                {
                  v102 = objc_getProperty(v102, v101, 208, 1);
                }

                v103 = v102;
                [v103 setObject:v61 forKeyedSubscript:v356];

                if (!sub_100042EE0(*(a1 + 32), v32, 0, v381, *(a1 + 104), v68, &v448, *(a1 + 56), *(a1 + 64)))
                {
                  v104 = *(a1 + 96);
                  if (v104)
                  {
                    *v104 = 1;
                  }
                }

                v63 = ne_log_obj();
                if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  v475 = v356;
                  v476 = 2112;
                  v477 = v68;
                  _os_log_debug_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEBUG, "Allow Policy IDs added for %@: %@", buf, 0x16u);
                }

LABEL_102:

                v33 = v356;
              }

              if ([v32 denyAll])
              {
                v105 = ne_log_obj();
                if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v475 = v356;
                  _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "Adding drop policy for %@", buf, 0xCu);
                }

                v106 = +[NEPolicyResult drop];
                v107 = v361;
                if (!v106)
                {
                  goto LABEL_197;
                }

LABEL_114:
                if (isa_nsarray())
                {
                  v439 = 0u;
                  v438 = 0u;
                  v437 = 0u;
                  v436 = 0u;
                  v109 = v352;
                  v110 = [v109 countByEnumeratingWithState:&v436 objects:v470 count:16];
                  if (v110)
                  {
                    v111 = v110;
                    v112 = *v437;
                    do
                    {
                      for (j = 0; j != v111; j = j + 1)
                      {
                        if (*v437 != v112)
                        {
                          objc_enumerationMutation(v109);
                        }

                        v114 = [NEPolicyCondition effectiveApplication:*(*(&v436 + 1) + 8 * j)];
                        [v36 addObject:v114];
                      }

                      v111 = [v109 countByEnumeratingWithState:&v436 objects:v470 count:16];
                    }

                    while (v111);
                  }

                  v3 = v381;
                  v107 = v361;
                }

                if ([v36 count])
                {
                  v115 = [v32 matchDomains];
                  v116 = isa_nsarray();

                  if (v116)
                  {
                    v435 = 0u;
                    v434 = 0u;
                    v433 = 0u;
                    v432 = 0u;
                    v117 = [v32 matchDomains];
                    v118 = [v117 countByEnumeratingWithState:&v432 objects:v469 count:16];
                    if (v118)
                    {
                      v119 = v118;
                      v120 = *v433;
                      do
                      {
                        for (k = 0; k != v119; k = k + 1)
                        {
                          if (*v433 != v120)
                          {
                            objc_enumerationMutation(v117);
                          }

                          v122 = [NEPolicyCondition domain:*(*(&v432 + 1) + 8 * k)];
                          [v361 addObject:v122];
                        }

                        v119 = [v117 countByEnumeratingWithState:&v432 objects:v469 count:16];
                      }

                      while (v119);
                    }

                    v3 = v381;
                    v107 = v361;
                  }

                  v123 = [v32 matchAccountIdentifiers];
                  v124 = isa_nsarray();

                  if (v124)
                  {
                    v431 = 0u;
                    v429 = 0u;
                    v430 = 0u;
                    v428 = 0u;
                    v125 = [v32 matchAccountIdentifiers];
                    v126 = [v125 countByEnumeratingWithState:&v428 objects:v468 count:16];
                    if (v126)
                    {
                      v127 = v126;
                      v128 = *v429;
                      do
                      {
                        for (m = 0; m != v127; m = m + 1)
                        {
                          if (*v429 != v128)
                          {
                            objc_enumerationMutation(v125);
                          }

                          v130 = [NEPolicyCondition accountIdentifier:*(*(&v428 + 1) + 8 * m)];
                          [v48 addObject:v130];
                        }

                        v127 = [v125 countByEnumeratingWithState:&v428 objects:v468 count:16];
                      }

                      while (v127);
                    }

                    v107 = v361;
                  }

                  v426 = 0u;
                  v427 = 0u;
                  v424 = 0u;
                  v425 = 0u;
                  v357 = v36;
                  v359 = [v357 countByEnumeratingWithState:&v424 objects:v467 count:16];
                  if (v359)
                  {
                    v358 = *v425;
                    v363 = v48;
                    do
                    {
                      v131 = 0;
                      do
                      {
                        if (*v425 != v358)
                        {
                          v132 = v131;
                          objc_enumerationMutation(v357);
                          v131 = v132;
                        }

                        v360 = v131;
                        v133 = *(*(&v424 + 1) + 8 * v131);
                        if ([v361 count])
                        {
                          v422 = 0u;
                          v423 = 0u;
                          v420 = 0u;
                          v421 = 0u;
                          v365 = v361;
                          v371 = [v365 countByEnumeratingWithState:&v420 objects:v466 count:16];
                          if (v371)
                          {
                            v368 = *v421;
                            do
                            {
                              for (n = 0; n != v371; n = n + 1)
                              {
                                if (*v421 != v368)
                                {
                                  objc_enumerationMutation(v365);
                                }

                                v135 = *(*(&v420 + 1) + 8 * n);
                                if ([v48 count])
                                {
                                  v375 = n;
                                  v418 = 0u;
                                  v419 = 0u;
                                  v416 = 0u;
                                  v417 = 0u;
                                  v136 = v48;
                                  v137 = [v136 countByEnumeratingWithState:&v416 objects:v465 count:16];
                                  if (v137)
                                  {
                                    v138 = v137;
                                    v139 = *v417;
                                    do
                                    {
                                      for (ii = 0; ii != v138; ii = ii + 1)
                                      {
                                        if (*v417 != v139)
                                        {
                                          objc_enumerationMutation(v136);
                                        }

                                        v141 = *(*(&v416 + 1) + 8 * ii);
                                        v464[0] = v133;
                                        v464[1] = v135;
                                        v464[2] = v141;
                                        v464[3] = v378;
                                        v142 = [NSArray arrayWithObjects:v464 count:4];
                                        v144 = [[NEPolicy alloc] initWithOrder:(v382 + 100) result:v106 conditions:v142];
                                        v145 = *(v380 + 32);
                                        if (v145)
                                        {
                                          v145 = objc_getProperty(v145, v143, 48, 1);
                                        }

                                        v146 = v145;
                                        sub_100033A90(v381, v144, v146);

                                        v148 = [[NEPolicy alloc] initWithOrder:(v382 + 110) result:v379 conditions:v142];
                                        v149 = *(v380 + 32);
                                        if (v149)
                                        {
                                          v149 = objc_getProperty(v149, v147, 48, 1);
                                        }

                                        v150 = v149;
                                        sub_100033A90(v381, v148, v150);
                                      }

                                      v138 = [v136 countByEnumeratingWithState:&v416 objects:v465 count:16];
                                    }

                                    while (v138);
                                    a1 = v380;
                                    v3 = v381;
                                    v48 = v363;
                                  }

                                  n = v375;
                                }

                                else
                                {
                                  v463[0] = v133;
                                  v463[1] = v135;
                                  v463[2] = v378;
                                  v136 = [NSArray arrayWithObjects:v463 count:3];
                                  v152 = [[NEPolicy alloc] initWithOrder:(v382 + 100) result:v106 conditions:v136];
                                  v153 = *(a1 + 32);
                                  if (v153)
                                  {
                                    v153 = objc_getProperty(v153, v151, 48, 1);
                                  }

                                  v154 = v153;
                                  sub_100033A90(v3, v152, v154);

                                  v156 = [[NEPolicy alloc] initWithOrder:(v382 + 110) result:v379 conditions:v136];
                                  v157 = *(a1 + 32);
                                  if (v157)
                                  {
                                    v157 = objc_getProperty(v157, v155, 48, 1);
                                  }

                                  v158 = v157;
                                  sub_100033A90(v3, v156, v158);
                                }
                              }

                              v371 = [v365 countByEnumeratingWithState:&v420 objects:v466 count:16];
                            }

                            while (v371);
                          }

LABEL_174:
                          v107 = v361;
                          goto LABEL_175;
                        }

                        if ([v48 count])
                        {
                          v414 = 0u;
                          v415 = 0u;
                          v412 = 0u;
                          v413 = 0u;
                          v365 = v48;
                          v159 = [v365 countByEnumeratingWithState:&v412 objects:v462 count:16];
                          if (!v159)
                          {
                            goto LABEL_174;
                          }

                          v160 = v159;
                          v161 = *v413;
                          do
                          {
                            for (jj = 0; jj != v160; jj = jj + 1)
                            {
                              if (*v413 != v161)
                              {
                                objc_enumerationMutation(v365);
                              }

                              v163 = *(*(&v412 + 1) + 8 * jj);
                              v461[0] = v133;
                              v461[1] = v163;
                              v461[2] = v378;
                              v164 = [NSArray arrayWithObjects:v461 count:3];
                              v166 = [[NEPolicy alloc] initWithOrder:(v382 + 100) result:v106 conditions:v164];
                              v167 = *(a1 + 32);
                              if (v167)
                              {
                                v167 = objc_getProperty(v167, v165, 48, 1);
                              }

                              v168 = v167;
                              sub_100033A90(v3, v166, v168);

                              v170 = [[NEPolicy alloc] initWithOrder:(v382 + 110) result:v379 conditions:v164];
                              v171 = *(a1 + 32);
                              if (v171)
                              {
                                v171 = objc_getProperty(v171, v169, 48, 1);
                              }

                              v172 = v171;
                              sub_100033A90(v3, v170, v172);
                            }

                            v160 = [v365 countByEnumeratingWithState:&v412 objects:v462 count:16];
                          }

                          while (v160);
                          v107 = v361;
                          v48 = v363;
                        }

                        else
                        {
                          v460[0] = v133;
                          v460[1] = v378;
                          v365 = [NSArray arrayWithObjects:v460 count:2];
                          v174 = [[NEPolicy alloc] initWithOrder:(v382 + 100) result:v106 conditions:v365];
                          v175 = *(a1 + 32);
                          if (v175)
                          {
                            v175 = objc_getProperty(v175, v173, 48, 1);
                          }

                          v107 = v361;
                          v176 = v175;
                          sub_100033A90(v3, v174, v176);

                          v178 = [[NEPolicy alloc] initWithOrder:(v382 + 110) result:v379 conditions:v365];
                          v179 = *(a1 + 32);
                          if (v179)
                          {
                            v179 = objc_getProperty(v179, v177, 48, 1);
                          }

                          v180 = v179;
                          sub_100033A90(v3, v178, v180);
                        }

LABEL_175:

                        v131 = v360 + 1;
                      }

                      while ((v360 + 1) != v359);
                      v181 = [v357 countByEnumeratingWithState:&v424 objects:v467 count:16];
                      v359 = v181;
                    }

                    while (v181);
                  }

                  v36 = v357;
                }
              }

              else
              {
                v108 = [*(a1 + 48) objectForKeyedSubscript:v33];
                if (isa_nsarray())
                {
                  v107 = v361;
                  if ([v108 count])
                  {
                    v106 = [NEPolicyResult routeRules:v108];
                  }

                  else
                  {
                    v106 = 0;
                  }
                }

                else
                {
                  v106 = 0;
                  v107 = v361;
                }

                if (v106)
                {
                  goto LABEL_114;
                }
              }

LABEL_197:

              v33 = v356;
              goto LABEL_198;
            }
          }

          v70 = [v32 multicastPreferenceSet];
          v71 = *(a1 + 32);
          v374 = v70;
          if (v71)
          {
            if (v70)
            {
              v72 = 192;
            }

            else
            {
              v72 = 184;
            }

            v71 = objc_getProperty(v71, v69, v72, 1);
          }

          v68 = v71;

          v73 = [v68 objectForKeyedSubscript:v33];
          v74 = *(a1 + 32);
          [v32 isIdentifierExternal];
          v75 = *(a1 + 104);
          v63 = sub_1000407B8(v74, v32);
          v76 = [v73 count];
          v77 = ne_log_obj();
          v78 = os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG);
          if (v76)
          {
            if (v78)
            {
              v182 = [v32 matchSigningIdentifier];
              *buf = 138412546;
              v475 = v182;
              v476 = 2112;
              v477 = v73;
              _os_log_debug_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEBUG, "Policy IDs already present for %@: %@", buf, 0x16u);
            }

            if (v374)
            {
              v79 = v348;
            }

            else
            {
              v79 = v349;
            }

            [v79 removeObject:v33];
            v81 = *(a1 + 32);
            if (v81)
            {
              v81 = objc_getProperty(v81, v80, 208, 1);
            }

            v82 = v81;
            v77 = [v82 objectForKeyedSubscript:v33];

            if (([v77 isEqualToArray:v63]& 1) != 0)
            {
              v61 = v73;
              v3 = v381;
LABEL_89:

              goto LABEL_102;
            }

            v89 = ne_log_obj();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v475 = v33;
              v476 = 2112;
              v477 = v73;
              _os_log_debug_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEBUG, "Deny Policy IDs to be removed for %@: %@", buf, 0x16u);
            }

            sub_100031D58(v381, v73);
          }

          else if (v78)
          {
            v87 = [v32 matchSigningIdentifier];
            *buf = 138412546;
            v475 = v87;
            v476 = 2112;
            v477 = v73;
            _os_log_debug_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEBUG, "Policy IDs not present for %@: %@", buf, 0x16u);
          }

          v61 = objc_alloc_init(NSMutableArray);
          [v68 setObject:v61 forKeyedSubscript:v33];
          v91 = *(a1 + 32);
          if (v91)
          {
            v91 = objc_getProperty(v91, v90, 208, 1);
          }

          v3 = v381;
          v92 = v91;
          [v92 setObject:v63 forKeyedSubscript:v33];

          if (!sub_100042EE0(*(a1 + 32), v32, 1, v381, *(a1 + 104), v61, &v448, *(a1 + 56), *(a1 + 64)))
          {
            v93 = *(a1 + 96);
            if (v93)
            {
              *v93 = 1;
            }
          }

          v77 = ne_log_obj();
          v94 = os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG);
          if (v374)
          {
            if (!v94)
            {
              goto LABEL_89;
            }

            *buf = 138412546;
            v475 = v33;
            v476 = 2112;
            v477 = v61;
            v95 = v77;
            v96 = "Silent deny Policy IDs added for %@: %@";
          }

          else
          {
            if (!v94)
            {
              goto LABEL_89;
            }

            *buf = 138412546;
            v475 = v33;
            v476 = 2112;
            v477 = v61;
            v95 = v77;
            v96 = "Deny Policy IDs added for %@: %@";
          }

          _os_log_debug_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEBUG, v96, buf, 0x16u);
          goto LABEL_89;
        }

        if (![v32 denyMulticast])
        {
          goto LABEL_199;
        }

        v46 = *(a1 + 32);
        if (v46)
        {
          v46 = objc_getProperty(v46, v45, 184, 1);
        }

        v47 = v46;
        v36 = [v47 objectForKeyedSubscript:v33];

        if ([v36 count])
        {
          [v349 removeObject:v33];
        }

        else
        {
          v83 = objc_alloc_init(NSMutableArray);

          v85 = *(a1 + 32);
          if (v85)
          {
            v85 = objc_getProperty(v85, v84, 184, 1);
          }

          v86 = v85;
          [v86 setObject:v83 forKeyedSubscript:v33];

          sub_100042EE0(*(a1 + 32), v32, 1, v3, *(a1 + 104), v83, &v448, *(a1 + 56), *(a1 + 64));
          v36 = v83;
        }

LABEL_198:

LABEL_199:
        v31 = v355 + 1;
      }

      while ((v355 + 1) != v354);
      v186 = [obj countByEnumeratingWithState:&v440 objects:v472 count:16];
      v354 = v186;
    }

    while (v186);
  }

  if (![v349 count])
  {
    goto LABEL_231;
  }

  v410 = 0u;
  v411 = 0u;
  v408 = 0u;
  v409 = 0u;
  v187 = v349;
  v188 = [v187 countByEnumeratingWithState:&v408 objects:v459 count:16];
  if (!v188)
  {
    goto LABEL_230;
  }

  v190 = v188;
  v191 = *v409;
  do
  {
    v192 = 0;
    do
    {
      if (*v409 != v191)
      {
        objc_enumerationMutation(v187);
      }

      v193 = *(*(&v408 + 1) + 8 * v192);
      v194 = *(a1 + 32);
      if (v194)
      {
        v194 = objc_getProperty(v194, v189, 184, 1);
      }

      v195 = v194;
      v196 = [v195 objectForKeyedSubscript:v193];

      v197 = ne_log_obj();
      if (os_log_type_enabled(v197, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v475 = v193;
        v476 = 2112;
        v477 = v196;
        _os_log_debug_impl(&_mh_execute_header, v197, OS_LOG_TYPE_DEBUG, "Deny Policy IDs to be removed for %@: %@", buf, 0x16u);
      }

      sub_100031D58(v381, v196);
      v199 = *(a1 + 32);
      if (v199)
      {
        v199 = objc_getProperty(v199, v198, 184, 1);
      }

      v200 = v199;
      [v200 setObject:0 forKeyedSubscript:v193];

      v202 = *(a1 + 32);
      if (v202)
      {
        v202 = objc_getProperty(v202, v201, 200, 1);
      }

      v203 = v202;
      v204 = [v203 objectForKeyedSubscript:v193];
      if (v204)
      {

LABEL_220:
        goto LABEL_224;
      }

      v206 = *(a1 + 32);
      if (v206)
      {
        v206 = objc_getProperty(v206, v205, 192, 1);
      }

      v207 = v206;
      v208 = [v207 objectForKeyedSubscript:v193];

      if (!v208)
      {
        v210 = *(v380 + 32);
        if (v210)
        {
          v210 = objc_getProperty(v210, v209, 208, 1);
        }

        v203 = v210;
        [v203 setObject:0 forKeyedSubscript:v193];
        goto LABEL_220;
      }

LABEL_224:

      v192 = v192 + 1;
      a1 = v380;
      v3 = v381;
    }

    while (v190 != v192);
    v211 = [v187 countByEnumeratingWithState:&v408 objects:v459 count:16];
    v190 = v211;
  }

  while (v211);
LABEL_230:

LABEL_231:
  if (![v348 count])
  {
    goto LABEL_258;
  }

  v406 = 0u;
  v407 = 0u;
  v404 = 0u;
  v405 = 0u;
  v212 = v348;
  v213 = [v212 countByEnumeratingWithState:&v404 objects:v458 count:16];
  if (!v213)
  {
    goto LABEL_257;
  }

  v215 = v213;
  v216 = *v405;
  while (2)
  {
    v217 = 0;
    while (2)
    {
      if (*v405 != v216)
      {
        objc_enumerationMutation(v212);
      }

      v218 = *(*(&v404 + 1) + 8 * v217);
      v219 = *(a1 + 32);
      if (v219)
      {
        v219 = objc_getProperty(v219, v214, 192, 1);
      }

      v220 = v219;
      v221 = [v220 objectForKeyedSubscript:v218];

      v222 = ne_log_obj();
      if (os_log_type_enabled(v222, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v475 = v218;
        v476 = 2112;
        v477 = v221;
        _os_log_debug_impl(&_mh_execute_header, v222, OS_LOG_TYPE_DEBUG, "Silent deny Policy IDs to be removed for %@: %@", buf, 0x16u);
      }

      sub_100031D58(v381, v221);
      v224 = *(a1 + 32);
      if (v224)
      {
        v224 = objc_getProperty(v224, v223, 192, 1);
      }

      v225 = v224;
      [v225 setObject:0 forKeyedSubscript:v218];

      v227 = *(a1 + 32);
      if (v227)
      {
        v227 = objc_getProperty(v227, v226, 200, 1);
      }

      v228 = v227;
      v229 = [v228 objectForKeyedSubscript:v218];
      if (v229)
      {

        goto LABEL_247;
      }

      v231 = *(a1 + 32);
      if (v231)
      {
        v231 = objc_getProperty(v231, v230, 184, 1);
      }

      v232 = v231;
      v233 = [v232 objectForKeyedSubscript:v218];

      if (!v233)
      {
        v235 = *(v380 + 32);
        if (v235)
        {
          v235 = objc_getProperty(v235, v234, 208, 1);
        }

        v228 = v235;
        [v228 setObject:0 forKeyedSubscript:v218];
LABEL_247:
      }

      v217 = v217 + 1;
      a1 = v380;
      v3 = v381;
      if (v215 != v217)
      {
        continue;
      }

      break;
    }

    v236 = [v212 countByEnumeratingWithState:&v404 objects:v458 count:16];
    v215 = v236;
    if (v236)
    {
      continue;
    }

    break;
  }

LABEL_257:

LABEL_258:
  if (![v347 count])
  {
    goto LABEL_285;
  }

  v402 = 0u;
  v403 = 0u;
  v400 = 0u;
  v401 = 0u;
  v238 = v347;
  v239 = [v238 countByEnumeratingWithState:&v400 objects:v457 count:16];
  if (!v239)
  {
    goto LABEL_284;
  }

  v241 = v239;
  v242 = *v401;
  while (2)
  {
    v243 = 0;
    while (2)
    {
      if (*v401 != v242)
      {
        objc_enumerationMutation(v238);
      }

      v244 = *(*(&v400 + 1) + 8 * v243);
      v245 = *(a1 + 32);
      if (v245)
      {
        v245 = objc_getProperty(v245, v240, 200, 1);
      }

      v246 = v245;
      v247 = [v246 objectForKeyedSubscript:v244];

      v248 = ne_log_obj();
      if (os_log_type_enabled(v248, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v475 = v244;
        v476 = 2112;
        v477 = v247;
        _os_log_debug_impl(&_mh_execute_header, v248, OS_LOG_TYPE_DEBUG, "Allow Policy IDs to be removed for %@: %@", buf, 0x16u);
      }

      sub_100031D58(v381, v247);
      v250 = *(a1 + 32);
      if (v250)
      {
        v250 = objc_getProperty(v250, v249, 200, 1);
      }

      v251 = v250;
      [v251 setObject:0 forKeyedSubscript:v244];

      v253 = *(a1 + 32);
      if (v253)
      {
        v253 = objc_getProperty(v253, v252, 184, 1);
      }

      v254 = v253;
      v255 = [v254 objectForKeyedSubscript:v244];
      if (v255)
      {

        goto LABEL_274;
      }

      v257 = *(a1 + 32);
      if (v257)
      {
        v257 = objc_getProperty(v257, v256, 192, 1);
      }

      v258 = v257;
      v259 = [v258 objectForKeyedSubscript:v244];

      if (!v259)
      {
        v261 = *(v380 + 32);
        if (v261)
        {
          v261 = objc_getProperty(v261, v260, 208, 1);
        }

        v254 = v261;
        [v254 setObject:0 forKeyedSubscript:v244];
LABEL_274:
      }

      v243 = v243 + 1;
      a1 = v380;
      v3 = v381;
      if (v241 != v243)
      {
        continue;
      }

      break;
    }

    v262 = [v238 countByEnumeratingWithState:&v400 objects:v457 count:16];
    v241 = v262;
    if (v262)
    {
      continue;
    }

    break;
  }

LABEL_284:

LABEL_285:
  if ((v448 & 1) == 0)
  {
    v263 = *(a1 + 32);
    if (v263)
    {
      v263 = objc_getProperty(v263, v237, 184, 1);
    }

    v264 = v263;
    if ([v264 count])
    {

      goto LABEL_293;
    }

    v266 = *(a1 + 32);
    if (v266)
    {
      v266 = objc_getProperty(v266, v265, 192, 1);
    }

    v267 = v266;
    v268 = [v267 count];

    if (v268)
    {
LABEL_293:
      sub_100042EE0(*(a1 + 32), 0, 1, v3, *(a1 + 104), 0, &v448, *(a1 + 56), *(a1 + 64));
    }
  }

  if (*(a1 + 64) && [*(a1 + 80) count])
  {
    if (*(a1 + 32))
    {
      v269 = 20020;
    }

    else
    {
      v269 = 20;
    }

    v383 = v269;
    if ((*(a1 + 108) & 1) == 0)
    {
      v270 = ne_log_obj();
      if (os_log_type_enabled(v270, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&_mh_execute_header, v270, OS_LOG_TYPE_DEBUG, "Installing skip fallback policy for background traffic", buf, 2u);
      }

      if (*(a1 + 32))
      {
        v271 = 20000;
      }

      else
      {
        v271 = 0;
      }

      v272 = [NEPolicyResult skipWithOrder:v271 | 0x1Eu];
      v273 = [NEPolicyCondition trafficClassStart:100 end:299];
      v274 = [NEPolicy alloc];
      v456 = v273;
      v275 = [NSArray arrayWithObjects:&v456 count:1];
      v276 = [v274 initWithOrder:v271 | 5u result:v272 conditions:v275];
      v278 = a1;
      v279 = v276;
      v280 = *(v278 + 32);
      if (v280)
      {
        v280 = objc_getProperty(v280, v277, 48, 1);
      }

      v281 = v280;
      sub_100033A90(v3, v279, v281);

      a1 = v380;
    }

    if ([*(a1 + 88) count])
    {
      if (*(a1 + 32))
      {
        v282 = 20000;
      }

      else
      {
        v282 = 0;
      }

      v283 = [NEPolicyResult skipWithOrder:v282 | 0x1Eu];
      v396 = 0u;
      v397 = 0u;
      v398 = 0u;
      v399 = 0u;
      v366 = *(a1 + 88);
      v372 = [v366 countByEnumeratingWithState:&v396 objects:v455 count:16];
      if (v372)
      {
        v369 = *v397;
        do
        {
          v284 = 0;
          do
          {
            if (*v397 != v369)
            {
              objc_enumerationMutation(v366);
            }

            v376 = v284;
            v285 = *(*(&v396 + 1) + 8 * v284);
            v286 = ne_log_obj();
            if (os_log_type_enabled(v286, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v475 = v285;
              _os_log_debug_impl(&_mh_execute_header, v286, OS_LOG_TYPE_DEBUG, "Installing skip fallback policy for %@", buf, 0xCu);
            }

            v287 = [NEProcessInfo copyUUIDsForBundleID:v285 uid:*(a1 + 104)];
            v392 = 0u;
            v393 = 0u;
            v394 = 0u;
            v395 = 0u;
            v288 = v287;
            v289 = [v288 countByEnumeratingWithState:&v392 objects:v454 count:16];
            if (v289)
            {
              v290 = v289;
              v291 = *v393;
              do
              {
                for (kk = 0; kk != v290; kk = kk + 1)
                {
                  if (*v393 != v291)
                  {
                    objc_enumerationMutation(v288);
                  }

                  v293 = [NEPolicyCondition effectiveApplication:*(*(&v392 + 1) + 8 * kk)];
                  if (v293)
                  {
                    v294 = [NEPolicy alloc];
                    v453 = v293;
                    v295 = [NSArray arrayWithObjects:&v453 count:1];
                    v296 = [v294 initWithOrder:v282 | 0xAu result:v283 conditions:v295];
                    v298 = a1;
                    v299 = v296;
                    v300 = *(v298 + 32);
                    if (v300)
                    {
                      v300 = objc_getProperty(v300, v297, 48, 1);
                    }

                    v301 = v300;
                    sub_100033A90(v381, v299, v301);

                    a1 = v380;
                  }
                }

                v290 = [v288 countByEnumeratingWithState:&v392 objects:v454 count:16];
              }

              while (v290);
            }

            v284 = v376 + 1;
            v3 = v381;
          }

          while ((v376 + 1) != v372);
          v372 = [v366 countByEnumeratingWithState:&v396 objects:v455 count:16];
        }

        while (v372);
      }
    }

    v377 = [NEPolicyResult netAgentUUID:*(a1 + 64)];
    v388 = 0u;
    v389 = 0u;
    v390 = 0u;
    v391 = 0u;
    v367 = *(a1 + 80);
    v302 = [v367 countByEnumeratingWithState:&v388 objects:v452 count:16];
    if (v302)
    {
      v303 = v302;
      v304 = *v389;
      v362 = *v389;
      do
      {
        v305 = 0;
        v364 = v303;
        do
        {
          if (*v389 != v304)
          {
            objc_enumerationMutation(v367);
          }

          v306 = *(*(&v388 + 1) + 8 * v305);
          if ([v306 isEqualToString:@"PathRuleDefaultIdentifier"])
          {
            v307 = ne_log_obj();
            if (os_log_type_enabled(v307, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&_mh_execute_header, v307, OS_LOG_TYPE_DEBUG, "Installing default fallback policy", buf, 2u);
            }

            v309 = [[NEPolicy alloc] initWithOrder:v383 result:v377 conditions:0];
            v310 = *(a1 + 32);
            if (v310)
            {
              v310 = objc_getProperty(v310, v308, 48, 1);
            }

            v311 = v310;
            sub_100033A90(v3, v309, v311);
          }

          else
          {
            if (v3 && v3[2])
            {
              v309 = [NEPolicyResult filterWithControlUnit:?];
            }

            else
            {
              v309 = 0;
            }

            v370 = v305;
            v312 = ne_log_obj();
            if (os_log_type_enabled(v312, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v475 = v306;
              _os_log_debug_impl(&_mh_execute_header, v312, OS_LOG_TYPE_DEBUG, "Installing fallback policy for %@", buf, 0xCu);
            }

            v313 = [NEProcessInfo copyUUIDsForBundleID:v306 uid:*(a1 + 104)];
            v384 = 0u;
            v385 = 0u;
            v386 = 0u;
            v387 = 0u;
            v373 = v313;
            v314 = [v373 countByEnumeratingWithState:&v384 objects:v451 count:16];
            if (v314)
            {
              v315 = v314;
              v316 = *v385;
              do
              {
                v317 = 0;
                do
                {
                  if (*v385 != v316)
                  {
                    objc_enumerationMutation(v373);
                  }

                  v318 = [NEPolicyCondition effectiveApplication:*(*(&v384 + 1) + 8 * v317)];
                  if (v318)
                  {
                    v319 = [NEPolicy alloc];
                    v450 = v318;
                    v320 = [NSArray arrayWithObjects:&v450 count:1];
                    v322 = [v319 initWithOrder:v383 result:v377 conditions:v320];
                    v323 = *(a1 + 32);
                    if (v323)
                    {
                      v323 = objc_getProperty(v323, v321, 48, 1);
                    }

                    v324 = v323;
                    sub_100033A90(v3, v322, v324);

                    if (v309)
                    {
                      v325 = [NEPolicy alloc];
                      v449[0] = v318;
                      v326 = +[NEPolicyCondition allInterfaces];
                      v449[1] = v326;
                      v327 = [NSArray arrayWithObjects:v449 count:2];
                      v329 = [v325 initWithOrder:v383 result:v309 conditions:v327];
                      if (v3)
                      {
                        v330 = objc_getProperty(v3, v328, 32, 1);
                        v331 = v3;
                        v3 = v330;
                        v332 = v331;
                        v333 = v329;
                        v334 = v3;
                      }

                      else
                      {
                        v332 = 0;
                        v333 = v329;
                        v334 = 0;
                      }

                      sub_100033A90(v332, v333, v334);

                      a1 = v380;
                      v3 = v381;
                    }
                  }

                  v317 = v317 + 1;
                }

                while (v315 != v317);
                v335 = [v373 countByEnumeratingWithState:&v384 objects:v451 count:16];
                v315 = v335;
              }

              while (v335);
            }

            v311 = v373;

            v304 = v362;
            v303 = v364;
            v305 = v370;
          }

          v305 = v305 + 1;
        }

        while (v305 != v303);
        v303 = [v367 countByEnumeratingWithState:&v388 objects:v452 count:16];
      }

      while (v303);
    }
  }

  v336 = sub_100031EB4(v3);
  if (v336)
  {
    v337 = ne_log_large_obj();
    if (os_log_type_enabled(v337, OS_LOG_TYPE_DEBUG))
    {
      v339 = *(a1 + 32);
      if (v339)
      {
        v339 = objc_getProperty(v339, v338, 48, 1);
      }

      v340 = v339;
      *buf = 138412290;
      v475 = v340;
      _os_log_debug_impl(&_mh_execute_header, v337, OS_LOG_TYPE_DEBUG, "Policy IDs added: %@", buf, 0xCu);
    }
  }

  else
  {
    v337 = ne_log_obj();
    if (os_log_type_enabled(v337, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v337, OS_LOG_TYPE_ERROR, "Failed to apply path controller policies", buf, 2u);
    }
  }

  return v336;
}

uint64_t sub_100046D78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ne_log_large_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 48, 1);
    }

    *buf = 138412290;
    v50 = Property;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Policy IDs to be removed: %@", buf, 0xCu);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = objc_getProperty(v7, v6, 48, 1);
  }

  else
  {
    v8 = 0;
  }

  sub_100031D58(v3, v8);
  v9 = sub_100033F68(*(a1 + 32));
  v10 = [NEPolicyResult divertSocketToControlUnit:*(a1 + 64)];
  if (*(a1 + 68) == 1)
  {
    v11 = sub_100041E40(*(a1 + 32), *(a1 + 64), @"ProxyAgent");
  }

  else
  {
    v11 = 0;
  }

  v12 = v9 + 102;
  if (*(a1 + 69) == 1)
  {
    v13 = sub_100041E40(*(a1 + 32), *(a1 + 64), @"DNSAgent");
    if (v13)
    {
      v14 = [NEPolicyResult netAgentUUID:v13];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v35 = v13;
  v36 = v11;
  if (v11)
  {
    v15 = [NEPolicyResult netAgentUUID:v11];
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_100033F68(*(a1 + 32));
  v17 = [NEPolicyResult skipWithOrder:v16 + 103];
  v19 = *(a1 + 32);
  v18 = *(a1 + 40);
  v33 = *(a1 + 56);
  v34 = *(a1 + 48);
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10004716C;
  v41[3] = &unk_1000EA058;
  v42 = v3;
  v47 = v12;
  v20 = v10;
  v21 = *(a1 + 32);
  v43 = v20;
  v44 = v21;
  v22 = v14;
  v45 = v22;
  v23 = v15;
  v46 = v23;
  v48 = vadd_s32(vdup_n_s32(v16), 0x140000000ALL);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000472BC;
  v37[3] = &unk_1000E9E28;
  v24 = v42;
  v25 = *(a1 + 32);
  v38 = v24;
  v39 = v25;
  v26 = v17;
  v40 = v26;
  sub_100037370(v19, v18, 0, 1, v34, v33, v24, v41, v37);
  v27 = sub_100031EB4(v24);
  v28 = ne_log_large_obj();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v32 = *(a1 + 32);
    if (v32)
    {
      v32 = objc_getProperty(v32, v29, 48, 1);
    }

    *buf = 138412290;
    v50 = v32;
    _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Policy IDs added: %@", buf, 0xCu);
  }

  return v27;
}

void sub_10004716C(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = *(a1 + 32);
  v5 = [[NEPolicy alloc] initWithOrder:*(a1 + 72) result:*(a1 + 40) conditions:v18];
  v6 = *(a1 + 48);
  if (v6)
  {
    Property = objc_getProperty(v6, v4, 48, 1);
  }

  else
  {
    Property = 0;
  }

  sub_100033A90(v3, v5, Property);

  if (*(a1 + 56))
  {
    v8 = *(a1 + 32);
    v10 = [[NEPolicy alloc] initWithOrder:*(a1 + 76) result:*(a1 + 56) conditions:v18];
    v11 = *(a1 + 48);
    if (v11)
    {
      v12 = objc_getProperty(v11, v9, 48, 1);
    }

    else
    {
      v12 = 0;
    }

    sub_100033A90(v8, v10, v12);
  }

  if (*(a1 + 64))
  {
    v13 = *(a1 + 32);
    v15 = [[NEPolicy alloc] initWithOrder:*(a1 + 80) result:*(a1 + 64) conditions:v18];
    v16 = *(a1 + 48);
    if (v16)
    {
      v17 = objc_getProperty(v16, v14, 48, 1);
    }

    else
    {
      v17 = 0;
    }

    sub_100033A90(v13, v15, v17);
  }
}

void sub_1000472BC(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v8 = [[NEPolicy alloc] initWithOrder:sub_100033F68(a1[5]) result:a1[6] conditions:v4];

  v6 = a1[5];
  if (v6)
  {
    Property = objc_getProperty(v6, v5, 48, 1);
  }

  else
  {
    Property = 0;
  }

  sub_100033A90(v3, v8, Property);
}

uint64_t sub_100047370(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ne_log_large_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 48, 1);
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = Property;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Policy IDs to be removed: %@", &buf, 0xCu);
  }

  v6 = ne_log_large_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v83 = *(a1 + 32);
    if (v83)
    {
      v83 = objc_getProperty(v83, v7, 56, 1);
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v83;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Low priority Policy IDs to be removed: %@", &buf, 0xCu);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = objc_getProperty(v9, v8, 48, 1);
  }

  else
  {
    v10 = 0;
  }

  sub_100031D58(v3, v10);
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = objc_getProperty(v12, v11, 56, 1);
  }

  else
  {
    v13 = 0;
  }

  sub_100032AF0(v3, v13);
  v14 = *(a1 + 72);
  v15 = *(a1 + 32);
  v16 = sub_100033F68(v15) + 5 * (v14 - 1);
  if (*(a1 + 76))
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 160;
  }

  if (*(a1 + 76))
  {
    v18 = (1 << (v14 - 1)) | 0x80000000;
  }

  else
  {
    v18 = v14;
  }

  v114 = [NEPolicyResult divertSocketToControlUnit:v18];
  v19 = [NEPolicyResult skipWithOrder:(v17 + 4)];
  v104 = +[NEPolicyCondition allInterfaces];
  if (*(a1 + 40))
  {
    if (v15)
    {
      v20 = 1495;
    }

    else
    {
      v20 = 5;
    }

    v112 = v20;
    v109 = [NSArray alloc];
    v21 = [*(a1 + 40) uuid];
    v22 = [NEPolicyCondition effectiveApplication:v21];
    v23 = +[NEPolicyCondition effectivePID:version:](NEPolicyCondition, "effectivePID:version:", [*(a1 + 40) pid], objc_msgSend(*(a1 + 40), "pidVersion"));
    v24 = +[NEPolicyCondition delegateIsPlatformBinary];
    v25 = +[NEPolicyCondition allInterfaces];
    v26 = v19;
    v27 = [v109 initWithObjects:{v22, v23, v24, v25, 0}];

    v28 = v27;
    v19 = v26;

    v30 = [[NEPolicy alloc] initWithOrder:v112 result:v26 conditions:v28];
    v31 = *(a1 + 32);
    if (v31)
    {
      v32 = objc_getProperty(v31, v29, 48, 1);
    }

    else
    {
      v32 = 0;
    }

    sub_100033A90(v3, v30, v32);
  }

  v127 = v17;
  v34 = [NEProcessInfo copyUUIDsForExecutable:@"/usr/libexec/captiveagent"];
  if (!v34)
  {
    obj = ne_log_obj();
    if (!os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[NESMPolicySession setFlowDivertPoliciesForNetworkRules:excludeRules:flowDivertControlUnit:hasDNS:hasProxy:providerProcessIdentity:isFullyTransparent:captiveNetworkPluginBundleIDs:]_block_invoke";
    v77 = "%s: Failed to get UUIDs for captiveagent";
LABEL_66:
    _os_log_error_impl(&_mh_execute_header, obj, OS_LOG_TYPE_ERROR, v77, &buf, 0xCu);
    goto LABEL_67;
  }

  if (v3)
  {
    v35 = objc_getProperty(v3, v33, 16, 1);
  }

  else
  {
    v35 = 0;
  }

  v37 = v35;
  v38 = *(a1 + 32);
  if (v38)
  {
    v38 = objc_getProperty(v38, v36, 48, 1);
  }

  v39 = sub_10005F304(v37, &v127, 0, 0, v34, 0, 0, 0, 0, 1, 0, v19, 0, 0, v38);

  if ((v39 & 1) == 0)
  {
    obj = ne_log_obj();
    if (!os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[NESMPolicySession setFlowDivertPoliciesForNetworkRules:excludeRules:flowDivertControlUnit:hasDNS:hasProxy:providerProcessIdentity:isFullyTransparent:captiveNetworkPluginBundleIDs:]_block_invoke";
    v77 = "%s: Captive agent traffic exception policies failed";
    goto LABEL_66;
  }

  if (v3)
  {
    v41 = objc_getProperty(v3, v40, 16, 1);
  }

  else
  {
    v41 = 0;
  }

  v43 = v41;
  v44 = *(a1 + 48);
  v45 = *(a1 + 32);
  if (v45)
  {
    v45 = objc_getProperty(v45, v42, 48, 1);
  }

  v46 = sub_100065148(v43, v44, &v127, 1, 1, 0, v19, 0, v45, 0, 0);

  if (!v46)
  {
    obj = ne_log_obj();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NESMPolicySession setFlowDivertPoliciesForNetworkRules:excludeRules:flowDivertControlUnit:hasDNS:hasProxy:providerProcessIdentity:isFullyTransparent:captiveNetworkPluginBundleIDs:]_block_invoke";
      v77 = "%s: Captive app traffic exception policies failed";
      goto LABEL_66;
    }

LABEL_67:
    v78 = 0;
    goto LABEL_68;
  }

  if (if_nametoindex("llw0"))
  {
    v47 = [NSArray alloc];
    v48 = [NSString stringWithUTF8String:"llw0"];
    v49 = [NEPolicyCondition scopedInterface:v48];
    v50 = [v47 initWithObjects:{v49, 0}];

    v52 = [[NEPolicy alloc] initWithOrder:v17 result:v19 conditions:v50];
    v53 = *(a1 + 32);
    if (v53)
    {
      v54 = objc_getProperty(v53, v51, 48, 1);
    }

    else
    {
      v54 = 0;
    }

    sub_100033A90(v3, v52, v54);
  }

  v100 = v34;
  v113 = v19;
  v55 = sub_100042CA8(*(a1 + 32));
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  obj = v55;
  v56 = [obj countByEnumeratingWithState:&v123 objects:v132 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v124;
    do
    {
      v59 = 0;
      do
      {
        if (*v124 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v60 = *(*(&v123 + 1) + 8 * v59);
        v61 = [NEPolicy alloc];
        v131[0] = v104;
        v131[1] = v60;
        v62 = [NSArray arrayWithObjects:v131 count:2];
        v64 = [v61 initWithOrder:v17 result:v113 conditions:v62];
        v65 = *(a1 + 32);
        if (v65)
        {
          v66 = objc_getProperty(v65, v63, 48, 1);
        }

        else
        {
          v66 = 0;
        }

        sub_100033A90(v3, v64, v66);

        v59 = v59 + 1;
      }

      while (v57 != v59);
      v67 = [obj countByEnumeratingWithState:&v123 objects:v132 count:16];
      v57 = v67;
    }

    while (v67);
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v105 = *(a1 + 56);
  v110 = [v105 countByEnumeratingWithState:&v119 objects:v130 count:16];
  v68 = 0;
  if (v110)
  {
    v107 = *v120;
    do
    {
      for (i = 0; i != v110; i = i + 1)
      {
        v70 = v68;
        if (*v120 != v107)
        {
          objc_enumerationMutation(v105);
        }

        v71 = *(*(&v119 + 1) + 8 * i);
        *(&buf + 1) = 0;
        if ([v71 matchProtocol])
        {
          v72 = [v71 matchProtocol];
          v73 = 1;
        }

        else
        {
          *(&buf + 1) = 2;
          v72 = 1;
          v73 = 2;
        }

        v74 = 0;
        *&buf = v72;
        v75 = 8 * v73;
        do
        {
          sub_10003F2D8(*(a1 + 32), v71, *&v130[v74 - 8], v3, v113, v17, 0);
          v74 += 8;
        }

        while (v75 != v74);
        v68 = [v71 appliesToLoopback] | v70;
      }

      v110 = [v105 countByEnumeratingWithState:&v119 objects:v130 count:16];
    }

    while (v110);
  }

  if (*(a1 + 77) == 1)
  {
    v76 = sub_100041E40(*(a1 + 32), *(a1 + 72), @"ProxyAgent");
  }

  else
  {
    v76 = 0;
  }

  if (*(a1 + 78) == 1)
  {
    v80 = sub_100041E40(*(a1 + 32), *(a1 + 72), @"DNSAgent");
    if (v80)
    {
      v81 = [NEPolicyResult netAgentUUID:v80];
    }

    else
    {
      v81 = 0;
    }
  }

  else
  {
    v81 = 0;
    v80 = 0;
  }

  v98 = v80;
  if (v76)
  {
    v84 = [NEPolicyResult netAgentUUID:v76];
  }

  else
  {
    v84 = 0;
  }

  v99 = v76;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v101 = *(a1 + 64);
  v106 = [v101 countByEnumeratingWithState:&v115 objects:v128 count:16];
  if (v106)
  {
    v103 = *v116;
    do
    {
      v85 = 0;
      do
      {
        v111 = v68;
        if (*v116 != v103)
        {
          objc_enumerationMutation(v101);
        }

        v86 = *(*(&v115 + 1) + 8 * v85);
        *(&buf + 1) = 0;
        v108 = v85;
        if ([v86 matchProtocol])
        {
          v87 = [v86 matchProtocol];
          v88 = 1;
        }

        else
        {
          *(&buf + 1) = 2;
          v87 = 1;
          v88 = 2;
        }

        v89 = 0;
        *&buf = v87;
        v90 = 8 * v88;
        do
        {
          if (v81)
          {
            sub_10003F2D8(*(a1 + 32), v86, *&v130[v89 - 8], v3, v81, v17 + 2, 0);
          }

          v91 = *&v130[v89 - 8];
          if (v84)
          {
            sub_10003F2D8(*(a1 + 32), v86, v91, v3, v84, v17 + 2, 0);
          }

          sub_10003F2D8(*(a1 + 32), v86, v91, v3, v114, v17 + 3, 1);
          v89 += 8;
        }

        while (v90 != v89);
        v68 = [v86 appliesToLoopback] | v111;
        v85 = v108 + 1;
      }

      while ((v108 + 1) != v106);
      v106 = [v101 countByEnumeratingWithState:&v115 objects:v128 count:16];
    }

    while (v106);
  }

  if (v3 && (v68 & 1) != 0)
  {
    sub_10003331C(v3, *(a1 + 32), 1);
  }

  v92 = ne_log_obj();
  v19 = v113;
  if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
  {
    v96 = *(a1 + 32);
    if (v96)
    {
      v96 = objc_getProperty(v96, v93, 48, 1);
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v96;
    _os_log_debug_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEBUG, "Policy IDs added: %@", &buf, 0xCu);
  }

  v94 = ne_log_obj();
  if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
  {
    v97 = *(a1 + 32);
    if (v97)
    {
      v97 = objc_getProperty(v97, v95, 56, 1);
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v97;
    _os_log_debug_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEBUG, "Policy IDs added at Low priority: %@", &buf, 0xCu);
  }

  v78 = sub_100031EB4(v3);
  v34 = v100;
LABEL_68:

  return v78;
}

uint64_t sub_100047F30(uint64_t a1, void *a2)
{
  v30 = a2;
  v3 = ne_log_large_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 104, 1);
    }

    *buf = 138412290;
    v37 = Property;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "drop control Policy IDs to be removed %@", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = objc_getProperty(v6, v5, 104, 1);
  }

  else
  {
    v7 = 0;
  }

  sub_100031D58(v30, v7);
  v8 = *(a1 + 32);
  v9 = +[NEPolicyResult drop];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = *(a1 + 40);
  v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    if (v8)
    {
      v12 = 20000;
    }

    else
    {
      v12 = 0;
    }

    v13 = *v32;
    do
    {
      v14 = 0;
      do
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v31 + 1) + 8 * v14);
        v16 = objc_alloc_init(NSMutableArray);
        v17 = [NEPolicyCondition effectiveApplication:v15];
        [v16 addObject:v17];

        v19 = [[NEPolicy alloc] initWithOrder:v12 result:v9 conditions:v16];
        v20 = *(a1 + 32);
        if (v20)
        {
          v21 = objc_getProperty(v20, v18, 104, 1);
        }

        else
        {
          v21 = 0;
        }

        v22 = sub_100033A90(v30, v19, v21);

        if (!v22)
        {
          v25 = 0;
          goto LABEL_23;
        }

        v12 = (v12 + 1);
        v14 = v14 + 1;
      }

      while (v11 != v14);
      v23 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      v11 = v23;
    }

    while (v23);
  }

  if (sub_100031EB4(v30))
  {
    obj = ne_log_large_obj();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
    {
      v28 = *(a1 + 32);
      if (v28)
      {
        v28 = objc_getProperty(v28, v24, 104, 1);
      }

      *buf = 138412290;
      v37 = v28;
      _os_log_debug_impl(&_mh_execute_header, obj, OS_LOG_TYPE_DEBUG, "drop control Policy IDs added %@", buf, 0xCu);
    }

    v25 = 1;
LABEL_23:
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

uint64_t sub_10004822C(uint64_t a1, void *a2)
{
  v31 = a2;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 160, 1);
  }

  v5 = [Property objectForKeyedSubscript:*(a1 + 40)];
  if (!v5)
  {
    v7 = objc_alloc_init(NSMutableArray);
    v8 = *(a1 + 32);
    if (v8)
    {
      v8 = objc_getProperty(v8, v6, 160, 1);
    }

    [v8 setObject:v7 forKeyedSubscript:*(a1 + 40)];

    v10 = *(a1 + 32);
    if (v10)
    {
      v10 = objc_getProperty(v10, v9, 160, 1);
    }

    v5 = [v10 objectForKeyedSubscript:*(a1 + 40)];
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v29 = *(a1 + 40);
      *buf = 138412290;
      v38 = v29;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "CREATE LIST for %@", buf, 0xCu);
    }
  }

  v12 = ne_log_large_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v38 = v5;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "drop control Policy IDs to be removed %@", buf, 0xCu);
  }

  sub_100031D58(v31, v5);
  v13 = sub_100033F68(*(a1 + 32));
  v14 = +[NEPolicyResult drop];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = *(a1 + 48);
  v15 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = (v13 + 30);
    v18 = *v33;
    while (2)
    {
      v19 = 0;
      do
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v32 + 1) + 8 * v19);
        v21 = objc_alloc_init(NSMutableArray);
        v22 = [NEPolicyCondition effectiveApplication:v20];
        [v21 addObject:v22];

        v23 = [NEPolicyCondition realApplication:v20];
        [v21 addObject:v23];

        v24 = +[NEPolicyCondition allInterfaces];
        [v21 addObject:v24];

        v25 = +[NEPolicyCondition entitlement];
        [v21 addObject:v25];

        v26 = [[NEPolicy alloc] initWithOrder:v17 result:v14 conditions:v21];
        LODWORD(v22) = sub_100033A90(v31, v26, v5);

        if (!v22)
        {
          v27 = 0;
          goto LABEL_26;
        }

        v17 = (v17 + 1);
        v19 = v19 + 1;
      }

      while (v16 != v19);
      v16 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  if (sub_100031EB4(v31))
  {
    obj = ne_log_large_obj();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v38 = v5;
      _os_log_debug_impl(&_mh_execute_header, obj, OS_LOG_TYPE_DEBUG, "drop control Policy IDs added %@", buf, 0xCu);
    }

    v27 = 1;
LABEL_26:
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

uint64_t sub_100048604(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ((*(a1 + 8) | 2) == 3)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100048718;
      v7[3] = &unk_1000E9CC0;
      v7[4] = a1;
      v8 = v3;
      a1 = sub_100031500(NESMPolicyMasterSession, v7);
    }

    else
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to install Nexus policies, master session is nil or not AlwaysOn VPN / VPN ", buf, 2u);
      }

      a1 = 0;
    }
  }

  return a1;
}

uint64_t sub_100048718(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (!v5 || (v6 = objc_getProperty(v5, v3, 128, 1)) == 0)
  {
    v8 = objc_alloc_init(NSMutableArray);
    v9 = *(a1 + 32);
    if (v9)
    {
      objc_setProperty_atomic(v9, v7, v8, 128);
    }

    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v10, 128, 1);
    }

    v6 = Property;
  }

  v12 = ne_log_large_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v22 = 138412290;
    v23 = v6;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Nexus Policy IDs to be removed: %@", &v22, 0xCu);
  }

  sub_100031D58(v4, v6);
  if (*(a1 + 40))
  {
    v13 = sub_100033F68(*(a1 + 32));
    v14 = +[NEPolicyResult pass];
    v15 = [NEPolicyCondition scopedInterface:*(a1 + 40)];
    v26 = v15;
    v16 = [NSArray arrayWithObjects:&v26 count:1];

    v17 = [[NEPolicy alloc] initWithOrder:(v13 + 40) result:v14 conditions:v16];
    LODWORD(v15) = sub_100033A90(v4, v17, v6);

    if (v15 && sub_100031EB4(v4))
    {
      v18 = ne_log_large_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v21 = *(a1 + 40);
        v22 = 138412546;
        v23 = v21;
        v24 = 2112;
        v25 = v6;
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Nexus Policy IDs added for %@: %@", &v22, 0x16u);
      }

      v19 = 1;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

uint64_t sub_10004898C(uint64_t a1, int a2, void *a3, void *a4, char a5)
{
  v9 = a3;
  v10 = a4;
  if (!a1)
  {
    goto LABEL_8;
  }

  if (![v9 count])
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "No mach-O UUIDs available for VPN plugin, cannot install AOVPN control policies", buf, 2u);
    }

    goto LABEL_8;
  }

  if (*(a1 + 8) != 3)
  {
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100048AE0;
  v14[3] = &unk_1000E9EF0;
  v14[4] = a1;
  v15 = v10;
  v16 = v9;
  v17 = a2;
  v18 = a5;
  v11 = sub_100031500(NESMPolicyMasterSession, v14);

LABEL_9:
  return v11;
}

uint64_t sub_100048AE0(uint64_t a1, void *a2)
{
  v4 = a2;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 168, 1);
  }

  v76 = [Property objectForKeyedSubscript:*(a1 + 40)];
  if (!v76)
  {
    v6 = v4;
    v8 = objc_alloc_init(NSMutableArray);
    v9 = *(a1 + 32);
    if (v9)
    {
      v9 = objc_getProperty(v9, v7, 168, 1);
    }

    [v9 setObject:v8 forKeyedSubscript:*(a1 + 40)];

    v11 = *(a1 + 32);
    if (v11)
    {
      v11 = objc_getProperty(v11, v10, 168, 1);
    }

    v4 = v6;
    v76 = [v11 objectForKeyedSubscript:*(a1 + 40)];
  }

  v12 = ne_log_large_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v59 = *(a1 + 32);
    v60 = *(a1 + 40);
    if (v59)
    {
      v59 = objc_getProperty(v59, v13, 64, 1);
    }

    *buf = 138412546;
    v94 = v60;
    v95 = 2112;
    v96 = v59;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "control Policy IDs to be removed %@: %@", buf, 0x16u);
  }

  sub_100031D58(v4, v76);
  v14 = +[NEProcessInfo copyDNSUUIDs];
  if (v14)
  {
    v15 = +[NEProcessInfo copyNEHelperUUIDs];
    if (v15)
    {
      v71 = sub_100033F68(*(a1 + 32));
      v16 = (v71 + 10);
      v89 = v71 + 10;
      v75 = [NEPolicyResult tunnelIPToInterfaceName:*(a1 + 40) secondaryResultType:1];
      v17 = sub_100039DEC(*(a1 + 32), *(a1 + 40), @"DNSAgent");
      if (v17)
      {
        v70 = [NEPolicyResult netAgentUUID:v17];
      }

      else
      {
        v70 = 0;
      }

      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v19 = *(a1 + 48);
      v20 = [v19 countByEnumeratingWithState:&v85 objects:v92 count:16];
      if (v20)
      {
        v67 = v15;
        v68 = v14;
        v21 = *v86;
        v65 = v19;
        v66 = v17;
        v62 = *v86;
        while (2)
        {
          v22 = 0;
          v63 = v20;
          do
          {
            if (*v86 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v64 = v22;
            v23 = *(*(&v85 + 1) + 8 * v22);
            v24 = objc_alloc_init(NSMutableArray);
            v25 = [NEPolicyCondition effectiveApplication:v23];
            [v24 addObject:v25];

            v74 = v23;
            v26 = [NEPolicyCondition realApplication:v23];
            [v24 addObject:v26];

            v27 = +[NEPolicyCondition allInterfaces];
            [v24 addObject:v27];

            v28 = +[NEPolicyCondition entitlement];
            [v24 addObject:v28];

            v29 = [NEPolicyCondition effectivePID:*(a1 + 56)];
            [v24 addObject:v29];

            v69 = v24;
            v30 = [[NEPolicy alloc] initWithOrder:v16 result:v75 conditions:v24];
            LODWORD(v23) = sub_100033A90(v4, v30, v76);

            v31 = v70;
            if (!v23)
            {
              goto LABEL_56;
            }

            if (v70)
            {
              v32 = [[NEPolicy alloc] initWithOrder:(v71 + 5) result:v70 conditions:v69];
              sub_100033A90(v4, v32, v76);
            }

            v33 = a1;
            v16 = (v16 + 1);
            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            obj = v15;
            v34 = [obj countByEnumeratingWithState:&v81 objects:v91 count:16];
            if (v34)
            {
              v35 = v34;
              v36 = *v82;
              while (2)
              {
                v37 = v4;
                for (i = 0; i != v35; i = i + 1)
                {
                  if (*v82 != v36)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v39 = *(*(&v81 + 1) + 8 * i);
                  v40 = objc_alloc_init(NSMutableArray);
                  v41 = [NEPolicyCondition effectiveApplication:v74];
                  [v40 addObject:v41];

                  v42 = [NEPolicyCondition realApplication:v39];
                  [v40 addObject:v42];

                  v43 = +[NEPolicyCondition allInterfaces];
                  [v40 addObject:v43];

                  v44 = +[NEPolicyCondition entitlement];
                  [v40 addObject:v44];

                  v45 = [NEPolicyCondition effectivePID:*(v33 + 56)];
                  [v40 addObject:v45];

                  v46 = [[NEPolicy alloc] initWithOrder:v16 result:v75 conditions:v40];
                  LODWORD(v39) = sub_100033A90(v37, v46, v76);

                  if (!v39)
                  {
                    v4 = v37;
                    v31 = v70;
                    goto LABEL_55;
                  }

                  v16 = (v16 + 1);
                }

                v35 = [obj countByEnumeratingWithState:&v81 objects:v91 count:16];
                v4 = v37;
                if (v35)
                {
                  continue;
                }

                break;
              }
            }

            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            obj = v68;
            v47 = [obj countByEnumeratingWithState:&v77 objects:v90 count:16];
            if (v47)
            {
              v48 = v47;
              v72 = *v78;
              a1 = v33;
              v31 = v70;
LABEL_35:
              v49 = 0;
              while (1)
              {
                if (*v78 != v72)
                {
                  objc_enumerationMutation(obj);
                }

                v50 = *(*(&v77 + 1) + 8 * v49);
                v40 = objc_alloc_init(NSMutableArray);
                v51 = [NEPolicyCondition effectiveApplication:v74];
                [v40 addObject:v51];

                v52 = [NEPolicyCondition realApplication:v50];
                [v40 addObject:v52];

                v53 = +[NEPolicyCondition allInterfaces];
                [v40 addObject:v53];

                v54 = +[NEPolicyCondition entitlement];
                [v40 addObject:v54];

                v55 = [NEPolicyCondition effectivePID:*(a1 + 56)];
                [v40 addObject:v55];

                v56 = [[NEPolicy alloc] initWithOrder:v16 result:v75 conditions:v40];
                LODWORD(v51) = sub_100033A90(v4, v56, v76);

                if (!v51)
                {
                  break;
                }

                if (v70)
                {
                  v57 = [[NEPolicy alloc] initWithOrder:(v71 + 5) result:v70 conditions:v40];
                  sub_100033A90(v4, v57, v76);
                }

                v16 = (v16 + 1);

                if (v48 == ++v49)
                {
                  v48 = [obj countByEnumeratingWithState:&v77 objects:v90 count:16];
                  if (v48)
                  {
                    goto LABEL_35;
                  }

                  goto LABEL_45;
                }
              }

LABEL_55:

              v17 = v66;
              v15 = v67;
              v19 = v65;
LABEL_56:

              v18 = 0;
              v14 = v68;
              goto LABEL_57;
            }

            a1 = v33;
LABEL_45:

            v22 = v64 + 1;
            v17 = v66;
            v15 = v67;
            v19 = v65;
            v21 = v62;
          }

          while ((v64 + 1) != v63);
          v20 = [v65 countByEnumeratingWithState:&v85 objects:v92 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }

        v89 = v16;
        v14 = v68;
      }

      if ((*(a1 + 60) != 1 || sub_10003ABF8(*(a1 + 32), v4, *(a1 + 56), *(a1 + 48), v75, v76, &v89)) && sub_100031EB4(v4))
      {
        v19 = ne_log_large_obj();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v61 = *(a1 + 40);
          *buf = 138412546;
          v94 = v61;
          v95 = 2112;
          v96 = v76;
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "control Policy IDs added %@: %@", buf, 0x16u);
        }

        v18 = 1;
        v31 = v70;
LABEL_57:
      }

      else
      {
        v18 = 0;
        v31 = v70;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t sub_100049384(uint64_t a1, void *a2)
{
  v4 = a2;
  v96 = 0;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 176, 1);
  }

  v6 = [Property objectForKeyedSubscript:*(a1 + 40)];
  if (!v6)
  {
    v8 = objc_alloc_init(NSMutableArray);
    v9 = *(a1 + 32);
    if (v9)
    {
      v9 = objc_getProperty(v9, v7, 176, 1);
    }

    [v9 setObject:v8 forKeyedSubscript:*(a1 + 40)];

    v11 = *(a1 + 32);
    if (v11)
    {
      v11 = objc_getProperty(v11, v10, 176, 1);
    }

    v6 = [v11 objectForKeyedSubscript:*(a1 + 40)];
  }

  v12 = ne_log_large_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v84 = *(a1 + 40);
    *buf = 138412546;
    v98 = v84;
    v99 = 2112;
    v100 = v6;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Policy IDs to be removed %@: %@", buf, 0x16u);
  }

  sub_100031D58(v4, v6);
  v14 = *(a1 + 32);
  if (v14 && objc_getProperty(v14, v13, 16, 1))
  {
    v15 = *(a1 + 32);
    v95 = sub_100033F68(v15);
    if (*(a1 + 80))
    {
      sub_100031BD4(v15, *(a1 + 40), v4);
    }

    else
    {
      v96 = v95 + 50;
      if (v4)
      {
        v18 = objc_getProperty(v4, v16, 16, 1);
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      v20 = [NEPolicyResult skipWithOrder:0];
      v21 = sub_10005F888(v19, &v96, v20, v6);

      v22 = ne_log_obj();
      v23 = v22;
      if (v21)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v98 = "[NESMPolicySession setAOVPNTunnelDataPoliciesForInterfaceName:delegateInterfaceName:isSecondaryConnection:hasDNS:hasProxy:voiceMailExceptionAction:cellularServicesExceptionAction:deviceCommunicationExceptionAction:applicationExceptions:]_block_invoke";
          _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%s: AoVPN addPolicyICMPv6WithOrder succeeded for PrivilegedTunnel priority", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v98 = "[NESMPolicySession setAOVPNTunnelDataPoliciesForInterfaceName:delegateInterfaceName:isSecondaryConnection:hasDNS:hasProxy:voiceMailExceptionAction:cellularServicesExceptionAction:deviceCommunicationExceptionAction:applicationExceptions:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s: Failed to add icmpv6 exception for data", buf, 0xCu);
      }

      if (v4)
      {
        v25 = objc_getProperty(v4, v24, 16, 1);
      }

      else
      {
        v25 = 0;
      }

      v26 = sub_100060C48(v25, &v96, *(a1 + 64), 0, 1, v6);
      v27 = ne_log_obj();
      v28 = v27;
      if (v26)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v98 = "[NESMPolicySession setAOVPNTunnelDataPoliciesForInterfaceName:delegateInterfaceName:isSecondaryConnection:hasDNS:hasProxy:voiceMailExceptionAction:cellularServicesExceptionAction:deviceCommunicationExceptionAction:applicationExceptions:]_block_invoke";
          _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "%s: AoVPN addVoiceMailExceptionWithOrder succeeded for PrivilegedTunnel priority", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v98 = "[NESMPolicySession setAOVPNTunnelDataPoliciesForInterfaceName:delegateInterfaceName:isSecondaryConnection:hasDNS:hasProxy:voiceMailExceptionAction:cellularServicesExceptionAction:deviceCommunicationExceptionAction:applicationExceptions:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s: Failed to add VoiceMail exception for data", buf, 0xCu);
      }

      if (v4)
      {
        v30 = objc_getProperty(v4, v29, 16, 1);
      }

      else
      {
        v30 = 0;
      }

      v31 = sub_100063400(v30, &v96, *(a1 + 72), *(a1 + 40), 1, v6);
      v32 = ne_log_obj();
      v33 = v32;
      if (v31)
      {
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v98 = "[NESMPolicySession setAOVPNTunnelDataPoliciesForInterfaceName:delegateInterfaceName:isSecondaryConnection:hasDNS:hasProxy:voiceMailExceptionAction:cellularServicesExceptionAction:deviceCommunicationExceptionAction:applicationExceptions:]_block_invoke";
          _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "%s: AoVPN addCellularServicesExceptionDataWithOrder succeeded for PrivilegedTunnel priority", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v98 = "[NESMPolicySession setAOVPNTunnelDataPoliciesForInterfaceName:delegateInterfaceName:isSecondaryConnection:hasDNS:hasProxy:voiceMailExceptionAction:cellularServicesExceptionAction:deviceCommunicationExceptionAction:applicationExceptions:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s: Failed to add CellularServices exception for data", buf, 0xCu);
      }

      v34 = sub_10004A134(*(a1 + 32), *(a1 + 40), *(a1 + 48), 1, v4);
      v35 = ne_log_obj();
      v36 = v35;
      if (v34)
      {
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v98 = "[NESMPolicySession setAOVPNTunnelDataPoliciesForInterfaceName:delegateInterfaceName:isSecondaryConnection:hasDNS:hasProxy:voiceMailExceptionAction:cellularServicesExceptionAction:deviceCommunicationExceptionAction:applicationExceptions:]_block_invoke";
          _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "%s: AoVPN setApplicationExceptionTunnelDataPolicies succeeded for PrivilegedTunnel priority", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v98 = "[NESMPolicySession setAOVPNTunnelDataPoliciesForInterfaceName:delegateInterfaceName:isSecondaryConnection:hasDNS:hasProxy:voiceMailExceptionAction:cellularServicesExceptionAction:deviceCommunicationExceptionAction:applicationExceptions:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s: Failed to add Application exceptions for data", buf, 0xCu);
      }

      if (v4)
      {
        v38 = objc_getProperty(v4, v37, 16, 1);
      }

      else
      {
        v38 = 0;
      }

      v39 = sub_100061E40(v38, &v96, 0, 200, v6);
      v40 = ne_log_obj();
      v41 = v40;
      if (v39)
      {
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v98 = "[NESMPolicySession setAOVPNTunnelDataPoliciesForInterfaceName:delegateInterfaceName:isSecondaryConnection:hasDNS:hasProxy:voiceMailExceptionAction:cellularServicesExceptionAction:deviceCommunicationExceptionAction:applicationExceptions:]_block_invoke";
          _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "%s: AoVPN addDeviceCommunicationExceptionWithOrder succeeded for PrivilegedTunnel priority", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v98 = "[NESMPolicySession setAOVPNTunnelDataPoliciesForInterfaceName:delegateInterfaceName:isSecondaryConnection:hasDNS:hasProxy:voiceMailExceptionAction:cellularServicesExceptionAction:deviceCommunicationExceptionAction:applicationExceptions:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%s: Failed to add Device Communication exceptions for data", buf, 0xCu);
      }
    }

    if (*(a1 + 81) == 1)
    {
      v42 = sub_100039DEC(*(a1 + 32), *(a1 + 56), @"ProxyAgent");
    }

    else
    {
      v42 = 0;
    }

    if (*(a1 + 82) == 1)
    {
      v43 = sub_100039DEC(*(a1 + 32), *(a1 + 56), @"DNSAgent");
      if (v43)
      {
        v44 = [NEPolicyResult netAgentUUID:v43];
        if (!v42)
        {
          goto LABEL_60;
        }

LABEL_58:
        v92 = [NEPolicyResult netAgentUUID:v42];
        goto LABEL_61;
      }

      v44 = 0;
      if (v42)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v44 = 0;
      v43 = 0;
      if (v42)
      {
        goto LABEL_58;
      }
    }

LABEL_60:
    v92 = 0;
LABEL_61:
    v45 = [NEPolicyResult tunnelIPToInterfaceName:*(a1 + 56) secondaryResultType:1];
    [NEPolicyResult scopeSocketToInterfaceName:*(a1 + 56)];
    v94 = v93 = v45;
    if (*(a1 + 80) == 1)
    {
      v90 = v44;
      v91 = v42;
      v46 = v43;
      v96 = v95 + 215;
      v47 = [NEPolicyCondition scopedInterface:*(a1 + 56)];
      v113 = v47;
      v48 = [NSArray arrayWithObjects:&v113 count:1];

      v49 = [[NEPolicy alloc] initWithOrder:(v95 + 215) result:v45 conditions:v48];
      LODWORD(v47) = sub_100033A90(v4, v49, v6);

      if (v47)
      {
        v96 = v95 + 220;
        v50 = [NEPolicyCondition scopedInterface:*(a1 + 40)];
        v112 = v50;
        v51 = [NSArray arrayWithObjects:&v112 count:1];

        v52 = [[NEPolicy alloc] initWithOrder:(v95 + 220) result:v94 conditions:v51];
        v53 = sub_100033A90(v4, v52, v6);

        if (v53)
        {
          v89 = v51;
          v43 = v46;
          v44 = v90;
          if (v90)
          {
            v54 = [NEPolicy alloc];
            v55 = [NEPolicyCondition scopedInterface:*(a1 + 56)];
            v111 = v55;
            v56 = [NSArray arrayWithObjects:&v111 count:1];
            v57 = [v54 initWithOrder:(v95 + 205) result:v90 conditions:v56];
            sub_100033A90(v4, v57, v6);
          }

          v58 = v92;
          if (v92)
          {
            v59 = [NEPolicy alloc];
            v60 = [NEPolicyCondition scopedInterface:*(a1 + 56)];
            v110 = v60;
            v61 = [NSArray arrayWithObjects:&v110 count:1];
            v62 = [v59 initWithOrder:(v95 + 210) result:v92 conditions:v61];
            sub_100033A90(v4, v62, v6);
          }

          if (v90)
          {
            v63 = [NEPolicy alloc];
            v64 = [NEPolicyCondition scopedInterface:*(a1 + 40)];
            v109 = v64;
            v65 = [NSArray arrayWithObjects:&v109 count:1];
            v66 = [v63 initWithOrder:(v95 + 205) result:v90 conditions:v65];
            sub_100033A90(v4, v66, v6);
          }

          if (!v92)
          {
            v48 = v89;
LABEL_91:
            if (sub_100031EB4(v4))
            {
              v86 = ne_log_large_obj();
              if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
              {
                v87 = *(a1 + 40);
                *buf = 136315650;
                v98 = "[NESMPolicySession setAOVPNTunnelDataPoliciesForInterfaceName:delegateInterfaceName:isSecondaryConnection:hasDNS:hasProxy:voiceMailExceptionAction:cellularServicesExceptionAction:deviceCommunicationExceptionAction:applicationExceptions:]_block_invoke";
                v99 = 2112;
                v100 = v87;
                v101 = 2112;
                v102 = v6;
                _os_log_debug_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEBUG, "%s: Policy IDs added %@: %@", buf, 0x20u);
              }

              v17 = 1;
            }

            else
            {
              v17 = 0;
            }

            goto LABEL_88;
          }

          v88 = [NEPolicy alloc];
          v67 = [NEPolicyCondition scopedInterface:*(a1 + 40)];
          v108 = v67;
          v68 = &v108;
          v48 = v89;
LABEL_79:
          v82 = [NSArray arrayWithObjects:v68 count:1];
          v83 = [v88 initWithOrder:(v95 + 210) result:v58 conditions:v82];
          sub_100033A90(v4, v83, v6);

          v58 = v92;
          goto LABEL_91;
        }

        v17 = 0;
        v48 = v51;
      }

      else
      {
        v17 = 0;
      }

      v43 = v46;
      v44 = v90;
    }

    else
    {
      v96 = v95 + 225;
      v69 = [NEPolicyCondition scopedInterface:*(a1 + 56)];
      v107 = v69;
      v48 = [NSArray arrayWithObjects:&v107 count:1];

      v70 = [[NEPolicy alloc] initWithOrder:(v95 + 225) result:v45 conditions:v48];
      LODWORD(v69) = sub_100033A90(v4, v70, v6);

      if (!v69)
      {
        v17 = 0;
LABEL_87:
        v58 = v92;
LABEL_88:

        goto LABEL_89;
      }

      v91 = v42;
      v96 = v95 + 230;
      v71 = [NEPolicyCondition scopedInterface:*(a1 + 40)];
      v106 = v71;
      v72 = [NSArray arrayWithObjects:&v106 count:1];

      v73 = [[NEPolicy alloc] initWithOrder:(v95 + 230) result:v94 conditions:v72];
      v74 = sub_100033A90(v4, v73, v6);

      if (v74)
      {
        v96 = v95 + 235;
        v75 = +[NEPolicyCondition allInterfaces];
        v105 = v75;
        v48 = [NSArray arrayWithObjects:&v105 count:1];

        v76 = [[NEPolicy alloc] initWithOrder:(v95 + 235) result:v93 conditions:v48];
        v77 = sub_100033A90(v4, v76, v6);

        if (v77)
        {
          if (v44)
          {
            v78 = [NEPolicy alloc];
            v79 = +[NEPolicyCondition allInterfaces];
            v104 = v79;
            v80 = [NSArray arrayWithObjects:&v104 count:1];
            v81 = [v78 initWithOrder:(v95 + 205) result:v44 conditions:v80];
            sub_100033A90(v4, v81, v6);
          }

          v58 = v92;
          if (!v92)
          {
            goto LABEL_91;
          }

          v88 = [NEPolicy alloc];
          v67 = +[NEPolicyCondition allInterfaces];
          v103 = v67;
          v68 = &v103;
          goto LABEL_79;
        }

        v17 = 0;
      }

      else
      {
        v17 = 0;
        v48 = v72;
      }
    }

    v42 = v91;
    goto LABEL_87;
  }

  v17 = 0;
LABEL_89:

  return v17;
}

uint64_t sub_10004A134(_DWORD *a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = v11;
  v13 = 0;
  if (a1 && v11)
  {
    if (isa_nsstring() && a1[2] == 3)
    {
      v15 = [objc_getProperty(a1 v14];
      if (!v15)
      {
        v16 = objc_alloc_init(NSMutableArray);
        [objc_getProperty(a1 v17];

        v15 = [objc_getProperty(a1 v18];
      }

      v19 = ne_log_large_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v27 = v9;
        v28 = 2112;
        v29 = v15;
        _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Application Exception Tunnel Policy IDs to be removed %@: %@", buf, 0x16u);
      }

      sub_100031D58(v12, v15);
      if (v10 && [v10 count] && (*buf = sub_100033F68(a1) + 170, Property = objc_getProperty(v12, v20, 16, 1), (sub_1000612AC(Property, buf, v10, v9, 200, a4, v15) & 1) == 0))
      {
        v23 = ne_log_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *v25 = 0;
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to add application exceptions", v25, 2u);
        }
      }

      else if (sub_100031EB4(v12))
      {
        v22 = ne_log_large_obj();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v27 = v9;
          v28 = 2112;
          v29 = v15;
          _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Application Exception Tunnel Policy IDs added %@: %@", buf, 0x16u);
        }

        v13 = 1;
        goto LABEL_21;
      }

      v13 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v13 = 0;
  }

LABEL_22:

  return v13;
}

uint64_t sub_10004A40C(uint64_t a1, void *a2, int a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (a1 && *(a1 + 8) == 6)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10004A548;
    v17[3] = &unk_1000EA170;
    v18 = v11;
    v19 = a1;
    v20 = v12;
    v21 = v13;
    v23 = a3;
    v22 = v14;
    v15 = sub_100031500(NESMPolicyMasterSession, v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t sub_10004A548(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = sub_100033F68(*(a1 + 40));
    v5 = ne_log_large_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      Property = *(a1 + 40);
      if (Property)
      {
        Property = objc_getProperty(Property, v6, 48, 1);
      }

      *buf = 136315394;
      v204 = "[NESMPolicySession setPoliciesForDNSProxyProcess:withFlowDivertControlUnit:captiveNetworkPluginBundleIDs:limitToProcess:perApp:]_block_invoke";
      v205 = 2112;
      v206 = Property;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s: Policy IDs to be removed: %@", buf, 0x16u);
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = objc_getProperty(v8, v7, 48, 1);
    }

    else
    {
      v9 = 0;
    }

    sub_100031D58(v3, v9);
    v11 = *(a1 + 40);
    if (v11)
    {
      v12 = objc_getProperty(v11, v10, 56, 1);
    }

    else
    {
      v12 = 0;
    }

    sub_100032AF0(v3, v12);
    v175 = [NEPolicyResult skipWithOrder:(v4 + 150)];
    v190 = v4 + 20;
    v14 = [NEProcessInfo copyUUIDsForExecutable:@"/usr/libexec/captiveagent"];
    if (v14)
    {
      if (v3)
      {
        v15 = objc_getProperty(v3, v13, 16, 1);
      }

      else
      {
        v15 = 0;
      }

      v17 = v15;
      v18 = *(a1 + 40);
      if (v18)
      {
        v18 = objc_getProperty(v18, v16, 48, 1);
      }

      v19 = sub_10005F304(v17, &v190, 0, 0, v14, 0, 0, 0, 0, 1, 0, v175, 0, 0, v18);

      if (v19)
      {
        if (v3)
        {
          v21 = objc_getProperty(v3, v20, 16, 1);
        }

        else
        {
          v21 = 0;
        }

        v23 = v21;
        v24 = *(a1 + 40);
        v25 = *(a1 + 48);
        if (v24)
        {
          v24 = objc_getProperty(v24, v22, 48, 1);
        }

        v26 = sub_100065148(v23, v25, &v190, 1, 1, 0, v175, 0, v24, 0, 0);

        if (v26)
        {
          v169 = v14;
          v27 = +[NEPolicyCondition allInterfaces];
          v28 = [NWAddressEndpoint endpointWithHostname:@"0.0.0.0" port:@"53"];
          v29 = [NEPolicyCondition remoteAddress:v28 prefix:0];

          v30 = [NEPolicyResult skipWithOrder:(v4 + 130)];
          v31 = [NEPolicy alloc];
          log = v27;
          v202[0] = v27;
          v202[1] = v29;
          v168 = v29;
          v32 = [NSArray arrayWithObjects:v202 count:2];
          v33 = [v31 initWithOrder:(v4 + 120) result:v30 conditions:v32];

          v35 = *(a1 + 40);
          if (v35)
          {
            v36 = objc_getProperty(v35, v34, 48, 1);
          }

          else
          {
            v36 = 0;
          }

          v165 = v33;
          sub_100033A90(v3, v33, v36);
          v37 = [NWAddressEndpoint endpointWithHostname:@"::" port:@"53"];
          v38 = [NEPolicyCondition remoteAddress:v37 prefix:0];

          v39 = [NEPolicy alloc];
          v201[0] = v27;
          v201[1] = v38;
          v40 = [NSArray arrayWithObjects:v201 count:2];
          v41 = [v39 initWithOrder:(v4 + 120) result:v30 conditions:v40];

          v43 = *(a1 + 40);
          if (v43)
          {
            v44 = objc_getProperty(v43, v42, 48, 1);
          }

          else
          {
            v44 = 0;
          }

          v164 = v41;
          sub_100033A90(v3, v41, v44);
          v45 = [NEPolicy alloc];
          v200 = v27;
          v46 = [NSArray arrayWithObjects:&v200 count:1];
          v47 = [v45 initWithOrder:(v4 + 120) result:v175 conditions:v46];

          v49 = *(a1 + 40);
          if (v49)
          {
            v50 = objc_getProperty(v49, v48, 48, 1);
          }

          else
          {
            v50 = 0;
          }

          v163 = v47;
          sub_100033A90(v3, v47, v50);
          v51 = v3;
          v166 = v30;
          v167 = v38;
          if (!*(a1 + 56) && *(a1 + 32))
          {
            v52 = [NSArray alloc];
            v53 = [*(a1 + 32) uuid];
            v54 = [NEPolicyCondition effectiveApplication:v53];
            v55 = +[NEPolicyCondition effectivePID:version:](NEPolicyCondition, "effectivePID:version:", [*(a1 + 32) pid], objc_msgSend(*(a1 + 32), "pidVersion"));
            v56 = +[NEPolicyCondition delegateIsPlatformBinary];
            v57 = +[NEPolicyCondition allInterfaces];
            v58 = [v52 initWithObjects:{v54, v55, v56, v57, 0}];

            obj = v58;
            v60 = [[NEPolicy alloc] initWithOrder:(v4 + 130) result:v175 conditions:v58];
            v61 = *(a1 + 40);
            if (v61)
            {
              v62 = objc_getProperty(v61, v59, 48, 1);
            }

            else
            {
              v62 = 0;
            }

            sub_100033A90(v51, v60, v62);
            if (*(a1 + 40))
            {
              v63 = 1490;
            }

            else
            {
              v63 = 0;
            }

            if (*(a1 + 40))
            {
              v64 = 16300;
            }

            else
            {
              v64 = 800;
            }

            v65 = [NEPolicyResult skipWithOrder:v64];
            v199 = v168;
            v66 = [NSArray arrayWithObjects:&v199 count:1];
            v67 = [obj arrayByAddingObjectsFromArray:v66];

            v198 = v167;
            v68 = [NSArray arrayWithObjects:&v198 count:1];
            v69 = [obj arrayByAddingObjectsFromArray:v68];

            v71 = [[NEPolicy alloc] initWithOrder:v63 result:v65 conditions:v67];
            v72 = *(a1 + 40);
            if (v72)
            {
              v73 = objc_getProperty(v72, v70, 48, 1);
            }

            else
            {
              v73 = 0;
            }

            sub_100033A90(v51, v71, v73);

            v75 = [[NEPolicy alloc] initWithOrder:v63 result:v65 conditions:v69];
            v76 = *(a1 + 40);
            if (v76)
            {
              v77 = objc_getProperty(v76, v74, 48, 1);
            }

            else
            {
              v77 = 0;
            }

            sub_100033A90(v51, v75, v77);
          }

          v78 = objc_alloc_init(NSMutableArray);
          v79 = NEResourcesCopyContentFilterExclusionList();
          if (!v79 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v80 = ne_log_large_obj();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
            {
              v156 = *(a1 + 40);
              if (v156)
              {
                v156 = objc_getProperty(v156, v81, 48, 1);
              }

              *buf = 138412290;
              v204 = v156;
              _os_log_error_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "Content filter exclusion list not found: %@", buf, 0xCu);
            }

            v79 = &off_1000EE1F8;
          }

          v188 = 0u;
          v189 = 0u;
          v186 = 0u;
          v187 = 0u;
          obja = v79;
          v82 = [obja countByEnumeratingWithState:&v186 objects:v197 count:16];
          if (v82)
          {
            v83 = v82;
            v84 = *v187;
            do
            {
              for (i = 0; i != v83; i = i + 1)
              {
                if (*v187 != v84)
                {
                  objc_enumerationMutation(obja);
                }

                v86 = *(*(&v186 + 1) + 8 * i);
                if (([v86 isEqualToString:@"/usr/sbin/mDNSResponder"] & 1) == 0)
                {
                  v87 = [NEProcessInfo copyUUIDsForExecutable:v86];
                  v88 = v87;
                  if (v87 && [v87 count])
                  {
                    [v78 addObjectsFromArray:v88];
                  }
                }
              }

              v83 = [obja countByEnumeratingWithState:&v186 objects:v197 count:16];
            }

            while (v83);
          }

          v184 = 0u;
          v185 = 0u;
          v182 = 0u;
          v183 = 0u;
          v89 = v78;
          v90 = [v89 countByEnumeratingWithState:&v182 objects:v196 count:16];
          if (v90)
          {
            v91 = v90;
            v92 = *v183;
            do
            {
              v93 = 0;
              do
              {
                if (*v183 != v92)
                {
                  objc_enumerationMutation(v89);
                }

                v94 = [NEPolicyCondition effectiveApplication:*(*(&v182 + 1) + 8 * v93)];
                v95 = [NEPolicy alloc];
                v195[0] = log;
                v195[1] = v94;
                v96 = [NSArray arrayWithObjects:v195 count:2];
                v97 = [v95 initWithOrder:(v4 + 130) result:v175 conditions:v96];

                v99 = *(a1 + 40);
                if (v99)
                {
                  v100 = objc_getProperty(v99, v98, 48, 1);
                }

                else
                {
                  v100 = 0;
                }

                sub_100033A90(v51, v97, v100);

                v93 = v93 + 1;
              }

              while (v91 != v93);
              v101 = [v89 countByEnumeratingWithState:&v182 objects:v196 count:16];
              v91 = v101;
            }

            while (v101);
          }

          v102 = [NEPolicyCondition domain:@"ipv4only.arpa"];
          v103 = [NEPolicy alloc];
          v194[0] = log;
          v194[1] = v102;
          v162 = v102;
          v104 = [NSArray arrayWithObjects:v194 count:2];
          v105 = [v103 initWithOrder:(v4 + 130) result:v175 conditions:v104];

          v107 = *(a1 + 40);
          if (v107)
          {
            v108 = objc_getProperty(v107, v106, 48, 1);
          }

          else
          {
            v108 = 0;
          }

          v3 = v51;
          v14 = v169;
          v160 = v4 + 140;
          v161 = v105;
          sub_100033A90(v51, v105, v108);
          v158 = [NEPolicy alloc];
          if (*(a1 + 40))
          {
            v109 = 18000;
          }

          else
          {
            v109 = 0;
          }

          if (*(a1 + 40))
          {
            v110 = 18120;
          }

          else
          {
            v110 = 0;
          }

          v111 = [NEPolicyResult skipWithOrder:v110];
          v170 = [*(a1 + 32) uuid];
          v112 = [NEPolicyCondition effectiveApplication:?];
          v193[0] = v112;
          v113 = +[NEPolicyCondition allInterfaces];
          v193[1] = v113;
          v114 = [NSArray arrayWithObjects:v193 count:2];
          v116 = [v158 initWithOrder:v109 result:v111 conditions:v114];
          v117 = *(a1 + 40);
          if (v117)
          {
            v118 = objc_getProperty(v117, v115, 48, 1);
          }

          else
          {
            v118 = 0;
          }

          sub_100033A90(v3, v116, v118);

          v119 = [[NSMutableArray alloc] initWithObjects:{log, 0}];
          v120 = [NEPolicyCondition uid:0];
          [v120 setNegative:1];
          [v119 addObject:v120];
          v171 = [NEPolicyResult divertSocketToControlUnit:*(a1 + 72)];
          v121 = *(a1 + 64);
          v122 = ne_log_obj();
          v123 = os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG);
          if (v121)
          {
            if (v123)
            {
              *buf = 136315138;
              v204 = "[NESMPolicySession setPoliciesForDNSProxyProcess:withFlowDivertControlUnit:captiveNetworkPluginBundleIDs:limitToProcess:perApp:]_block_invoke";
              _os_log_debug_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEBUG, "%s: Installing perApp DNSProxy policies", buf, 0xCu);
            }

            v124 = *(a1 + 40);
            v125 = [*(a1 + 64) appRules];
            v176[0] = _NSConcreteStackBlock;
            v176[1] = 3221225472;
            v176[2] = sub_10004B61C;
            v176[3] = &unk_1000E9F68;
            v177 = v119;
            v178 = v3;
            v181 = v160;
            v126 = v171;
            v127 = v171;
            v128 = *(a1 + 40);
            v179 = v127;
            v180 = v128;
            sub_100037370(v124, v125, 0, 1, 0, 0, v178, v176, 0);

            v129 = v177;
            v130 = v161;
            v131 = v166;
          }

          else
          {
            if (v123)
            {
              *buf = 136315138;
              v204 = "[NESMPolicySession setPoliciesForDNSProxyProcess:withFlowDivertControlUnit:captiveNetworkPluginBundleIDs:limitToProcess:perApp:]_block_invoke";
              _os_log_debug_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEBUG, "%s: Installing DNSProxy policies", buf, 0xCu);
            }

            v130 = v161;
            if (v3)
            {
              v137 = objc_getProperty(v3, v136, 16, 1);
            }

            else
            {
              v137 = 0;
            }

            v139 = v137;
            v140 = *(a1 + 40);
            if (v140)
            {
              v141 = objc_getProperty(v140, v138, 48, 1);
            }

            else
            {
              v141 = 0;
            }

            sub_100064C40(v139, v4 + 139, 0, v175, v141);

            v129 = [[NEPolicy alloc] initWithOrder:v160 result:v171 conditions:v119];
            v143 = *(a1 + 40);
            v157 = v120;
            if (v143)
            {
              v144 = objc_getProperty(v143, v142, 48, 1);
            }

            else
            {
              v144 = 0;
            }

            sub_100033A90(v3, v129, v144);
            v145 = +[NEPolicyCondition allInterfaces];
            v192 = v145;
            v147 = [NSArray arrayWithObjects:&v192 count:1];
            v148 = *(a1 + 40);
            v159 = v119;
            if (v148)
            {
              v149 = objc_getProperty(v148, v146, 56, 1);
            }

            else
            {
              v149 = 0;
            }

            sub_1000339D8(v3, v147, v149);

            v150 = +[NEPolicyCondition allInterfaces];
            v191[0] = v150;
            v151 = +[NEPolicyCondition flowRemoteAddressEmpty];
            v191[1] = v151;
            v153 = [NSArray arrayWithObjects:v191 count:2];
            v154 = *(a1 + 40);
            if (v154)
            {
              v155 = objc_getProperty(v154, v152, 56, 1);
            }

            else
            {
              v155 = 0;
            }

            sub_100033920(v3, v153, v155);

            v131 = v166;
            v120 = v157;
            v119 = v159;
            v126 = v171;
          }

          v132 = sub_100031EB4(v3);
          goto LABEL_91;
        }

        log = ne_log_obj();
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v204 = "[NESMPolicySession setPoliciesForDNSProxyProcess:withFlowDivertControlUnit:captiveNetworkPluginBundleIDs:limitToProcess:perApp:]_block_invoke";
          v133 = "%s: Captive app traffic exception policies failed";
          goto LABEL_89;
        }

LABEL_90:
        v132 = 0;
LABEL_91:

        goto LABEL_92;
      }

      log = ne_log_obj();
      if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      *buf = 136315138;
      v204 = "[NESMPolicySession setPoliciesForDNSProxyProcess:withFlowDivertControlUnit:captiveNetworkPluginBundleIDs:limitToProcess:perApp:]_block_invoke";
      v133 = "%s: Captive agent traffic exception policies failed";
    }

    else
    {
      log = ne_log_obj();
      if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      *buf = 136315138;
      v204 = "[NESMPolicySession setPoliciesForDNSProxyProcess:withFlowDivertControlUnit:captiveNetworkPluginBundleIDs:limitToProcess:perApp:]_block_invoke";
      v133 = "%s: Failed to get UUIDs for captiveagent";
    }

LABEL_89:
    _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, v133, buf, 0xCu);
    goto LABEL_90;
  }

  v175 = ne_log_obj();
  if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v175, OS_LOG_TYPE_ERROR, "Cannot set policies for DNS Proxy provider, no process identity available for the provider", buf, 2u);
  }

  v132 = 0;
LABEL_92:

  return v132;
}