void sub_10004B61C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 mutableCopy];
  v6 = [v5 arrayByAddingObjectsFromArray:v4];

  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v23 = 136315394;
    v24 = "[NESMPolicySession setPoliciesForDNSProxyProcess:withFlowDivertControlUnit:captiveNetworkPluginBundleIDs:limitToProcess:perApp:]_block_invoke";
    v25 = 2112;
    v26 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s: Installing perApp DNSProxy policy %@", &v23, 0x16u);
  }

  v8 = *(a1 + 40);
  v10 = [[NEPolicy alloc] initWithOrder:*(a1 + 64) result:*(a1 + 48) conditions:v6];
  v11 = *(a1 + 56);
  if (v11)
  {
    Property = objc_getProperty(v11, v9, 48, 1);
  }

  else
  {
    Property = 0;
  }

  sub_100033A90(v8, v10, Property);

  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  if (v15)
  {
    v16 = objc_getProperty(v15, v13, 56, 1);
  }

  else
  {
    v16 = 0;
  }

  sub_1000339D8(v14, v6, v16);
  v17 = +[NEPolicyCondition flowRemoteAddressEmpty];
  v18 = [v6 arrayByAddingObject:v17];

  v20 = *(a1 + 40);
  v21 = *(a1 + 56);
  if (v21)
  {
    v22 = objc_getProperty(v21, v19, 56, 1);
  }

  else
  {
    v22 = 0;
  }

  sub_100033920(v20, v18, v22);
}

uint64_t sub_10004B7F8(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v3, 48, 1);
  }

  else
  {
    Property = 0;
  }

  sub_100031D58(v4, Property);
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = objc_getProperty(v8, v7, 56, 1);
  }

  else
  {
    v9 = 0;
  }

  sub_100032AF0(v4, v9);
  v128 = sub_100033F68(*(a1 + 32));
  v113 = v128;
  v114 = v128 + 32;
  v10 = CTBundle_ptr;
  v107 = [NEPolicyResult netAgentUUID:*(a1 + 40)];
  v106 = +[NEPolicyCondition flowRemoteAddressEmpty];
  v111 = v4;
  v112 = a1;
  if (![*(a1 + 48) count])
  {
LABEL_27:
    v35 = [NEPolicy alloc];
    v36 = +[NEPolicyCondition allInterfaces];
    v137 = v36;
    v37 = [NSArray arrayWithObjects:&v137 count:1];
    v38 = [v35 initWithOrder:v114 result:v107 conditions:v37];

    v40 = *(a1 + 32);
    if (v40)
    {
      v41 = objc_getProperty(v40, v39, 48, 1);
    }

    else
    {
      v41 = 0;
    }

    sub_100033A90(v4, v38, v41);
    ++v114;
    v42 = +[NEPolicyCondition allInterfaces];
    v136[0] = v42;
    v136[1] = v106;
    v44 = [NSArray arrayWithObjects:v136 count:2];
    v45 = *(a1 + 32);
    if (v45)
    {
      v46 = objc_getProperty(v45, v43, 56, 1);
    }

    else
    {
      v46 = 0;
    }

    sub_100033920(v4, v44, v46);

    goto LABEL_32;
  }

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v11 = *(a1 + 48);
  v12 = [v11 countByEnumeratingWithState:&v124 objects:v140 count:16];
  if (!v12)
  {

    goto LABEL_27;
  }

  v13 = v12;
  v14 = 0;
  v15 = *v125;
  do
  {
    v16 = 0;
    obj = v13;
    do
    {
      if (*v125 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v124 + 1) + 8 * v16);
      if ([v17 length])
      {
        v18 = [NSCharacterSet characterSetWithCharactersInString:@"*."];
        v19 = [v17 stringByTrimmingCharactersInSet:v18];
        if (v19)
        {
          v20 = v11;
          v21 = [NEPolicyCondition domain:v19];
          v22 = [NEPolicy alloc];
          v23 = +[NEPolicyCondition allInterfaces];
          v139[0] = v23;
          v139[1] = v21;
          v24 = [NSArray arrayWithObjects:v139 count:2];
          v25 = [v22 initWithOrder:v114 result:v107 conditions:v24];

          v27 = *(v112 + 32);
          if (v27)
          {
            v28 = objc_getProperty(v27, v26, 48, 1);
          }

          else
          {
            v28 = 0;
          }

          sub_100033A90(v111, v25, v28);
          v29 = +[NEPolicyCondition allInterfaces];
          v138[0] = v29;
          v138[1] = v21;
          v138[2] = v106;
          v31 = [NSArray arrayWithObjects:v138 count:3];
          v32 = *(v112 + 32);
          if (v32)
          {
            v33 = objc_getProperty(v32, v30, 56, 1);
          }

          else
          {
            v33 = 0;
          }

          ++v114;
          sub_100033920(v111, v31, v33);

          v4 = v111;
          v14 = 1;
          v11 = v20;
          v13 = obj;
        }

        a1 = v112;
      }

      v16 = v16 + 1;
    }

    while (v13 != v16);
    v34 = [v11 countByEnumeratingWithState:&v124 objects:v140 count:16];
    v13 = v34;
  }

  while (v34);

  v10 = CTBundle_ptr;
  if ((v14 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_32:
  v115 = [v10[45] skipWithOrder:v114];
  v47 = objc_alloc_init(NSMutableArray);
  v48 = [NEProcessInfo copyUUIDsForExecutable:@"/usr/libexec/configd"];
  [v47 addObjectsFromArray:v48];

  v49 = [NEProcessInfo copyUUIDsForExecutable:@"/usr/libexec/captiveagent"];
  [v47 addObjectsFromArray:v49];

  v50 = [NEProcessInfo copyUUIDsForExecutable:@"/System/Library/Frameworks/CoreTelephony.framework/Support/CommCenter"];
  [v47 addObjectsFromArray:v50];

  v51 = [NEProcessInfo copyUUIDsForExecutable:@"/Applications/InCallService.app/InCallService"];
  [v47 addObjectsFromArray:v51];

  v52 = [NEProcessInfo copyUUIDsForExecutable:@"/System/Library/Frameworks/CoreTelephony.framework/Support/CommCenterMobileHelper"];
  [v47 addObjectsFromArray:v52];

  v53 = [[NSUUID alloc] initWithUUIDString:@"569F2700-CAF9-483D-B19D-7AF406DCE15E"];
  [v47 addObject:v53];

  v54 = [[NSUUID alloc] initWithUUIDString:@"67A03811-DB0A-594E-C2AE-8B0517EDF26F"];
  [v47 addObject:v54];

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  obja = v47;
  v55 = [obja countByEnumeratingWithState:&v120 objects:v135 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v121;
    do
    {
      v58 = 0;
      do
      {
        if (*v121 != v57)
        {
          objc_enumerationMutation(obja);
        }

        v59 = [NEPolicyCondition effectiveApplication:*(*(&v120 + 1) + 8 * v58)];
        v60 = [NEPolicy alloc];
        v61 = +[NEPolicyCondition allInterfaces];
        v134[0] = v61;
        v134[1] = v59;
        v62 = [NSArray arrayWithObjects:v134 count:2];
        v63 = [v60 initWithOrder:v113 result:v115 conditions:v62];

        v65 = *(a1 + 32);
        if (v65)
        {
          v66 = objc_getProperty(v65, v64, 48, 1);
        }

        else
        {
          v66 = 0;
        }

        sub_100033A90(v4, v63, v66);

        v58 = v58 + 1;
      }

      while (v56 != v58);
      v67 = [obja countByEnumeratingWithState:&v120 objects:v135 count:16];
      v56 = v67;
    }

    while (v67);
  }

  v68 = [NEPolicyCondition domain:@"ipv4only.arpa"];
  v69 = [NEPolicy alloc];
  v70 = +[NEPolicyCondition allInterfaces];
  v133[0] = v70;
  v133[1] = v68;
  v71 = [NSArray arrayWithObjects:v133 count:2];
  v72 = [v69 initWithOrder:v113 result:v115 conditions:v71];

  v74 = *(a1 + 32);
  if (v74)
  {
    v75 = objc_getProperty(v74, v73, 48, 1);
  }

  else
  {
    v75 = 0;
  }

  sub_100033A90(v4, v72, v75);
  if ([*(a1 + 56) count])
  {
    v104 = v72;
    v105 = v68;
    v77 = ne_log_obj();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
    {
      v78 = *(a1 + 56);
      *buf = 138412290;
      v132 = v78;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_INFO, "Excluding domains from DNS settings: %@", buf, 0xCu);
    }

    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v108 = *(a1 + 56);
    v79 = [v108 countByEnumeratingWithState:&v116 objects:v130 count:16];
    if (v79)
    {
      v80 = v79;
      v81 = *v117;
      do
      {
        v82 = 0;
        do
        {
          if (*v117 != v81)
          {
            objc_enumerationMutation(v108);
          }

          v83 = *(*(&v116 + 1) + 8 * v82);
          v84 = [NSCharacterSet characterSetWithCharactersInString:@"*."];
          v85 = [v83 stringByTrimmingCharactersInSet:v84];
          if (v85)
          {
            v86 = [NEPolicyCondition domain:v85];
            v87 = [NEPolicy alloc];
            v88 = +[NEPolicyCondition allInterfaces];
            v129[0] = v88;
            v129[1] = v86;
            v89 = [NSArray arrayWithObjects:v129 count:2];
            v90 = [v87 initWithOrder:v113 result:v115 conditions:v89];

            a1 = v112;
            v92 = *(v112 + 32);
            if (v92)
            {
              v93 = objc_getProperty(v92, v91, 48, 1);
            }

            else
            {
              v93 = 0;
            }

            sub_100033A90(v111, v90, v93);
          }

          v82 = v82 + 1;
        }

        while (v80 != v82);
        v94 = [v108 countByEnumeratingWithState:&v116 objects:v130 count:16];
        v80 = v94;
      }

      while (v94);
    }

    v4 = v111;
    v72 = v104;
    v68 = v105;
  }

  if (v4)
  {
    v95 = objc_getProperty(v4, v76, 16, 1);
  }

  else
  {
    v95 = 0;
  }

  v97 = v95;
  v98 = *(a1 + 64);
  v99 = *(a1 + 32);
  if (v99)
  {
    v99 = objc_getProperty(v99, v96, 48, 1);
  }

  v100 = sub_100065148(v97, v98, &v128, 1, 1, 0, v115, 0, v99, 0, 0);

  if (!v100)
  {
    v101 = ne_log_obj();
    if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v132 = "[NESMPolicySession setPoliciesForDNSSettingsWithAgentUUID:matchDomains:exceptionDomains:captiveNetworkPluginBundleIDs:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v101, OS_LOG_TYPE_ERROR, "%s: Captive app traffic exception policies failed", buf, 0xCu);
    }
  }

  v102 = sub_100031EB4(v4);

  return v102;
}

uint64_t sub_10004C268(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10004C354;
    v11[3] = &unk_1000EA148;
    v11[4] = a1;
    v12 = v7;
    v14 = a4;
    v13 = v8;
    v9 = sub_100031500(NESMPolicyMasterSession, v11);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_10004C354(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = 19499;
  }

  else
  {
    v4 = 0;
  }

  v68 = v4;
  if (*(a1 + 32))
  {
    v5 = 19999;
  }

  else
  {
    v5 = 0;
  }

  v6 = ne_log_large_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v7, 112, 1);
    }

    *buf = 138412290;
    v82 = Property;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Skip policy IDs to be removed %@", buf, 0xCu);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = objc_getProperty(v9, v8, 112, 1);
  }

  else
  {
    v10 = 0;
  }

  sub_100031D58(v3, v10);
  v11 = ne_log_large_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v62 = *(a1 + 32);
    if (v62)
    {
      v62 = objc_getProperty(v62, v12, 120, 1);
    }

    *buf = 138412290;
    v82 = v62;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Low skip policy IDs to be removed %@", buf, 0xCu);
  }

  v13 = ne_log_large_obj();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v63 = *(a1 + 32);
    if (v63)
    {
      v63 = objc_getProperty(v63, v14, 120, 1);
      v64 = *(a1 + 32);
    }

    else
    {
      v64 = 0;
    }

    *buf = 138412546;
    v82 = v63;
    v83 = 2048;
    v84 = v64;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Removing low skip policy IDs: %@ (self %p)", buf, 0x16u);
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    v17 = objc_getProperty(v16, v15, 120, 1);
  }

  else
  {
    v17 = 0;
  }

  sub_100032AF0(v3, v17);
  v70 = [NEPolicyResult skipWithOrder:v5];
  v69 = +[NEPolicyCondition flowRemoteAddressEmpty];
  if (*(a1 + 40))
  {
    v18 = [NEPolicyCondition scopedInterface:?];
    v19 = [NEPolicy alloc];
    v80 = v18;
    v20 = [NSArray arrayWithObjects:&v80 count:1];
    v21 = [v19 initWithOrder:v68 result:v70 conditions:v20];

    v23 = *(a1 + 32);
    if (v23)
    {
      v24 = objc_getProperty(v23, v22, 112, 1);
    }

    else
    {
      v24 = 0;
    }

    sub_100033A90(v3, v21, v24);
    v79[0] = v18;
    v79[1] = v69;
    v26 = [NSArray arrayWithObjects:v79 count:2];
    v27 = *(a1 + 32);
    if (v27)
    {
      v28 = objc_getProperty(v27, v25, 120, 1);
    }

    else
    {
      v28 = 0;
    }

    sub_100033920(v3, v26, v28);
  }

  v29 = *(a1 + 56);
  if ([*(a1 + 48) containsObject:&stru_1000EBA68])
  {
    goto LABEL_41;
  }

  v67 = v29;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v30 = *(a1 + 48);
  v31 = [v30 countByEnumeratingWithState:&v71 objects:v78 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = 0;
    v34 = *v72;
    do
    {
      v35 = 0;
      do
      {
        if (*v72 != v34)
        {
          objc_enumerationMutation(v30);
        }

        v36 = *(*(&v71 + 1) + 8 * v35);
        if ([v36 length])
        {
          v37 = [NEPolicyCondition domain:v36];
          v38 = [NEPolicy alloc];
          v77 = v37;
          v39 = [NSArray arrayWithObjects:&v77 count:1];
          v40 = [v38 initWithOrder:v68 result:v70 conditions:v39];

          v42 = *(a1 + 32);
          if (v42)
          {
            v43 = objc_getProperty(v42, v41, 112, 1);
          }

          else
          {
            v43 = 0;
          }

          sub_100033A90(v3, v40, v43);
          v76[0] = v37;
          v76[1] = v69;
          v45 = [NSArray arrayWithObjects:v76 count:2];
          v46 = *(a1 + 32);
          if (v46)
          {
            v47 = objc_getProperty(v46, v44, 120, 1);
          }

          else
          {
            v47 = 0;
          }

          sub_100033920(v3, v45, v47);

          v33 = 1;
        }

        v35 = v35 + 1;
      }

      while (v32 != v35);
      v48 = [v30 countByEnumeratingWithState:&v71 objects:v78 count:16];
      v32 = v48;
    }

    while (v48);
  }

  else
  {
    v33 = 0;
  }

  if (v67)
  {
    if ((v33 & 1) == 0)
    {
LABEL_41:
      v50 = [[NEPolicy alloc] initWithOrder:v68 result:v70 conditions:&__NSArray0__struct];
      v51 = *(a1 + 32);
      if (v51)
      {
        v52 = objc_getProperty(v51, v49, 112, 1);
      }

      else
      {
        v52 = 0;
      }

      sub_100033A90(v3, v50, v52);
      v75 = v69;
      v54 = [NSArray arrayWithObjects:&v75 count:1];
      v55 = *(a1 + 32);
      if (v55)
      {
        v56 = objc_getProperty(v55, v53, 120, 1);
      }

      else
      {
        v56 = 0;
      }

      sub_100033920(v3, v54, v56);
    }
  }

  v57 = ne_log_large_obj();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
  {
    v65 = *(a1 + 32);
    if (v65)
    {
      v65 = objc_getProperty(v65, v58, 120, 1);
      v66 = *(a1 + 32);
    }

    else
    {
      v66 = 0;
    }

    *buf = 138412546;
    v82 = v65;
    v83 = 2048;
    v84 = v66;
    _os_log_debug_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEBUG, "Adding low skip policy IDs: %@ (self %p)", buf, 0x16u);
  }

  v59 = sub_100031EB4(v3);
  return v59;
}

void sub_10004C9A8(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, unsigned int a9)
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v41 = a8;
  v20 = a6;
  v21 = +[NEPolicyCondition allInterfaces];
  v44[0] = v21;
  v44[1] = v16;
  v42 = v16;
  v22 = [NSArray arrayWithObjects:v44 count:2];

  if (v17)
  {
    v23 = [v22 arrayByAddingObjectsFromArray:v17];

    v22 = v23;
  }

  v24 = [[NEPolicy alloc] initWithOrder:a2 result:v20 conditions:v22];

  Property = objc_getProperty(a1, v25, 48, 1);
  sub_100033A90(v18, v24, Property);

  if (v19)
  {
    v27 = [NEPolicyCondition ipProtocol:0];
    v43 = v27;
    v28 = [NSArray arrayWithObjects:&v43 count:1];
    v29 = [v22 arrayByAddingObjectsFromArray:v28];

    v30 = [[NEPolicy alloc] initWithOrder:a2 result:v19 conditions:v29];
    v32 = objc_getProperty(a1, v31, 48, 1);
    sub_100033A90(v18, v30, v32);
  }

  v33 = [NEPolicy alloc];
  v34 = [NEPolicyResult skipWithOrder:sub_100033F68(a1) + 1112];
  v35 = [v33 initWithOrder:(a2 + 1) result:v34 conditions:v22];
  v37 = objc_getProperty(a1, v36, 48, 1);
  sub_100033A90(v18, v35, v37);

  v38 = [[NEPolicy alloc] initWithOrder:a9 result:v41 conditions:v22];
  v40 = objc_getProperty(a1, v39, 48, 1);
  sub_100033A90(v18, v38, v40);
}

void sub_10004CC7C(uint64_t a1, unsigned int *a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v72 = a4;
  v9 = a5;
  v10 = v9;
  if (a1)
  {
    v71 = v9;
    v70 = sub_100033F68(a1);
    v77 = [NEPolicyResult skipWithOrder:(v70 + 1112)];
    v11 = objc_alloc_init(NSMutableArray);
    v12 = [NEProcessInfo copyUUIDsForExecutable:@"/usr/libexec/configd"];
    [v11 addObjectsFromArray:v12];

    v13 = [NEProcessInfo copyUUIDsForExecutable:@"/usr/sbin/mDNSResponder"];
    [v11 addObjectsFromArray:v13];

    v14 = [NEProcessInfo copyUUIDsForExecutable:@"/usr/libexec/captiveagent"];
    [v11 addObjectsFromArray:v14];

    v15 = [NEProcessInfo copyUUIDsForExecutable:@"/System/Library/Frameworks/CoreTelephony.framework/Support/CommCenter"];
    [v11 addObjectsFromArray:v15];

    v16 = [NEProcessInfo copyUUIDsForExecutable:@"/Applications/InCallService.app/InCallService"];
    [v11 addObjectsFromArray:v16];

    v17 = [NEProcessInfo copyUUIDsForExecutable:@"/System/Library/Frameworks/CoreTelephony.framework/Support/CommCenterMobileHelper"];
    [v11 addObjectsFromArray:v17];

    v18 = [[NSUUID alloc] initWithUUIDString:@"569F2700-CAF9-483D-B19D-7AF406DCE15E"];
    [v11 addObject:v18];

    v19 = [[NSUUID alloc] initWithUUIDString:@"67A03811-DB0A-594E-C2AE-8B0517EDF26F"];
    [v11 addObject:v19];

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    obj = v11;
    v20 = [obj countByEnumeratingWithState:&v82 objects:v93 count:16];
    self = a1;
    if (v20)
    {
      v21 = v20;
      v22 = *v83;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v83 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = [NEPolicyCondition effectiveApplication:*(*(&v82 + 1) + 8 * i)];
          v25 = [NEPolicy alloc];
          v26 = *a2;
          v27 = +[NEPolicyCondition allInterfaces];
          v92[0] = v27;
          v92[1] = v24;
          v28 = [NSArray arrayWithObjects:v92 count:2];
          v29 = [v25 initWithOrder:v26 result:v77 conditions:v28];

          Property = objc_getProperty(self, v30, 48, 1);
          sub_100033A90(v8, v29, Property);
        }

        v21 = [obj countByEnumeratingWithState:&v82 objects:v93 count:16];
      }

      while (v21);
    }

    v74 = v8;

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v32 = v72;
    v33 = [v32 countByEnumeratingWithState:&v78 objects:v91 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v79;
      do
      {
        for (j = 0; j != v34; j = j + 1)
        {
          if (*v79 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = [NEPolicyCondition domain:*(*(&v78 + 1) + 8 * j)];
          v38 = [NEPolicy alloc];
          v39 = *a2;
          v40 = +[NEPolicyCondition allInterfaces];
          v90[0] = v40;
          v90[1] = v37;
          v41 = [NSArray arrayWithObjects:v90 count:2];
          v42 = [v38 initWithOrder:v39 result:v77 conditions:v41];

          v44 = objc_getProperty(self, v43, 48, 1);
          sub_100033A90(v74, v42, v44);
        }

        v34 = [v32 countByEnumeratingWithState:&v78 objects:v91 count:16];
      }

      while (v34);
    }

    v45 = [NEPolicyCondition domain:@"ipv4only.arpa"];
    v46 = [NEPolicy alloc];
    v47 = *a2;
    v48 = +[NEPolicyCondition allInterfaces];
    v89[0] = v48;
    v89[1] = v45;
    v69 = v45;
    v49 = [NSArray arrayWithObjects:v89 count:2];
    v50 = [v46 initWithOrder:v47 result:v77 conditions:v49];

    v52 = objc_getProperty(self, v51, 48, 1);
    sub_100033A90(v74, v50, v52);
    v10 = v71;
    if (v74)
    {
      v54 = objc_getProperty(v74, v53, 16, 1);
    }

    else
    {
      v54 = 0;
    }

    v55 = v54;
    v57 = objc_getProperty(self, v56, 48, 1);
    v58 = sub_100065148(v55, v71, a2, 1, 1, 0, v77, 0, v57, 0, 0);

    if (!v58)
    {
      v59 = ne_log_obj();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v88 = "[NESMPolicySession addRelayPolicySkipRules:masterSession:extraExceptionDomains:captiveNetworkPluginBundleIDs:]";
        _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "%s: Captive app traffic exception policies failed", buf, 0xCu);
      }
    }

    v60 = +[NEPolicyCondition allowsUnsafeSocketAccess];
    [v60 setNegative:1];
    v61 = [NEPolicy alloc];
    v62 = [NEPolicyResult skipWithOrder:(v70 + 35)];
    v63 = +[NEPolicyCondition allInterfaces];
    v86[0] = v63;
    v64 = +[NEPolicyCondition usesModernNetworkAPI];
    v86[1] = v64;
    v86[2] = v60;
    v65 = [NSArray arrayWithObjects:v86 count:3];
    v66 = [v61 initWithOrder:(v70 + 32) result:v62 conditions:v65];

    v68 = objc_getProperty(self, v67, 48, 1);
    sub_100033A90(v74, v66, v68);

    v8 = v74;
  }
}

void sub_10004D368(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a5;
  v15 = +[NEPolicyCondition allInterfaces];
  v21[0] = v15;
  v21[1] = v11;
  v16 = [NSArray arrayWithObjects:v21 count:2];

  if (v12)
  {
    v17 = [v16 arrayByAddingObjectsFromArray:v12];

    v16 = v17;
  }

  v18 = [[NEPolicy alloc] initWithOrder:a2 result:v14 conditions:v16];

  Property = objc_getProperty(a1, v19, 48, 1);
  sub_100033A90(v13, v18, Property);
}

void sub_10004D4B8(void *a1, uint64_t a2, void *a3, int a4, unsigned int a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, unsigned int a12)
{
  v18 = a3;
  v36 = a6;
  v34 = a7;
  v19 = a8;
  v33 = a9;
  v32 = a10;
  v31 = a11;
  if (a1)
  {
    if ([v18 count] < 0x14)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v22 = v18;
      v24 = [v22 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = v19;
        v30 = v18;
        v21 = 0;
        v27 = *v38;
        do
        {
          v28 = 0;
          v29 = v21;
          do
          {
            if (*v38 != v27)
            {
              objc_enumerationMutation(v22);
            }

            v21 = [NEPolicyCondition domain:*(*(&v37 + 1) + 8 * v28)];

            [v21 setExactMatch:a5];
            if (a4)
            {
              sub_10004C9A8(a1, a2, v21, v36, v26, v33, v32, v31, a12);
            }

            else
            {
              sub_10004D368(a1, a2, v21, v36, v34, v26);
            }

            v28 = v28 + 1;
            v29 = v21;
          }

          while (v25 != v28);
          v25 = [v22 countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v25);
        v18 = v30;
        v19 = v26;
      }

      else
      {
        v21 = 0;
      }

      goto LABEL_21;
    }

    v20 = sub_10003882C(a1, v18, a5, 0, 0, v19);
    v21 = [NEPolicyCondition domainFilter:v20];
    if (a4)
    {
      sub_10004C9A8(a1, a2, v21, v36, v19, v33, v32, v31, a12);
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 134218496;
        v43 = v20;
        v44 = 1024;
        v45 = a2;
        v46 = 1024;
        v47 = a5;
        v23 = "Added trie %ld for policy match rules (labelOffset = %d, fqdn = %d)";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, v23, buf, 0x18u);
      }
    }

    else
    {
      sub_10004D368(a1, a2, v21, v36, v34, v19);
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 134218496;
        v43 = v20;
        v44 = 1024;
        v45 = a2;
        v46 = 1024;
        v47 = a5;
        v23 = "Added trie %ld for policy exclude rules (offset = %d, fqdn = %d)";
        goto LABEL_19;
      }
    }

LABEL_21:
  }
}

void sub_10004D834(void *a1, int a2, void *a3, int a4, char a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, unsigned int a12)
{
  v16 = a3;
  v66 = a6;
  v68 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v21 = objc_alloc_init(NSMutableDictionary);
  v22 = v16;
  v61 = v22;
  v62 = v21;
  if (v62)
  {
    v57 = v17;
    v58 = v18;
    v59 = v19;
    v63 = v20;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    obj = v22;
    v25 = [obj countByEnumeratingWithState:&v93 objects:v98 count:16];
    if (v25)
    {
      v26 = v25;
      v24 = 0;
      v27 = "0";
      v28 = *v94;
      while (2)
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v94 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v93 + 1) + 8 * i);
          v92 = 0;
          [v30 UTF8String];
          address_from_string = nw_endpoint_create_address_from_string();
          if (address_from_string)
          {
            v32 = address_from_string;
            if (v24)
            {
              [v24 addObject:v30];
            }

            else
            {
              v24 = [[NSMutableArray alloc] initWithObjects:{v30, 0}];
              v45 = v24;
            }
          }

          else
          {
            v33 = [NSCharacterSet characterSetWithCharactersInString:@"*."];
            v34 = [v30 stringByTrimmingCharactersInSet:v33];
            if (!v34)
            {

              goto LABEL_28;
            }

            v35 = v34;
            v72 = v24;
            v36 = v26;
            v37 = v28;
            v38 = v27;
            v39 = [v34 componentsSeparatedByString:@"."];
            v40 = [v39 count];

            if (v40 >= 7)
            {
              v41 = 7;
            }

            else
            {
              v41 = v40;
            }

            if (v41 <= 2)
            {
              v41 = 2;
            }

            v42 = [NSNumber numberWithInt:v41 ^ 7u];
            v43 = [v62 objectForKey:v42];

            if (v43)
            {
              v44 = [v62 objectForKeyedSubscript:v42];
              [v44 addObject:v30];
            }

            else
            {
              v44 = [[NSMutableArray alloc] initWithObjects:{v35, 0}];
              [v62 setObject:v44 forKeyedSubscript:v42];
            }

            v27 = v38;
            v28 = v37;
            v26 = v36;
            v24 = v72;
          }
        }

        v26 = [obj countByEnumeratingWithState:&v93 objects:v98 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v24 = 0;
    }

LABEL_28:

    v22 = v61;
    v23 = v62;
    v20 = v63;
    v18 = v58;
    v19 = v59;
    v17 = v57;
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v46 = v24;
  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3221225472;
  v81[2] = sub_10004DE20;
  v81[3] = &unk_1000EA1C0;
  v88 = a2;
  v81[4] = a1;
  v90 = a4;
  v91 = a5;
  v73 = v66;
  v82 = v73;
  v69 = v68;
  v83 = v69;
  obja = v17;
  v84 = obja;
  v67 = v18;
  v85 = v67;
  v65 = v19;
  v86 = v65;
  v64 = v20;
  v87 = v64;
  v89 = a12;
  [v23 enumerateKeysAndObjectsUsingBlock:v81];
  if (v46)
  {
    v98[0] = 0;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v60 = v46;
    v47 = v46;
    v48 = [v47 countByEnumeratingWithState:&v77 objects:v97 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = 0;
      v51 = *v78;
      do
      {
        for (j = 0; j != v49; j = j + 1)
        {
          if (*v78 != v51)
          {
            objc_enumerationMutation(v47);
          }

          [*(*(&v77 + 1) + 8 * j) UTF8String];
          v53 = nw_endpoint_create_address_from_string();
          if (v53)
          {
            v54 = a2 - 2 * v98[0];
            v55 = [NWAddressEndpoint endpointWithCEndpoint:v53];
            v56 = [NEPolicyCondition flowRemoteAddress:v55 prefix:v98[0]];

            if (a4)
            {
              sub_10004C9A8(a1, (v54 + 263), v56, v73, obja, v67, v65, v64, a12);
            }

            else
            {
              sub_10004D368(a1, (v54 + 263), v56, v73, v69, obja);
            }

            v50 = v56;
          }
        }

        v49 = [v47 countByEnumeratingWithState:&v77 objects:v97 count:16];
      }

      while (v49);
    }

    else
    {
      v50 = 0;
    }

    v22 = v61;
    v23 = v62;
    v46 = v60;
  }
}

void sub_10004DE20(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 88);
  v8 = a3;
  sub_10004D4B8(*(a1 + 32), v7 + 2 * [a2 intValue], v8, *(a1 + 96), *(a1 + 97), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 92));

  *a4 = 0;
}

void sub_10004DEB0(void *a1, int a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, unsigned int a13)
{
  v50 = a3;
  v51 = a4;
  v19 = a5;
  v20 = a6;
  v21 = v19;
  v52 = v20;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v27 = a12;
  if (a1)
  {
    v28 = a1;
    v48 = v21;
    if ([v51 count])
    {
      v29 = ne_log_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v56 = v51;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Excluding domains from relay: %@", buf, 0xCu);
      }

      sub_10004D834(a1, a2, v51, 0, 0, v22, v24, v23, v25, v26, v27, a13);
      v21 = v48;
    }

    if ([v52 count])
    {
      v30 = ne_log_obj();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v56 = v52;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Excluding FQDNs from relay: %@", buf, 0xCu);
      }

      sub_10004D834(a1, a2, v52, 0, 1, v22, v24, v23, v25, v26, v27, a13);
      v21 = v48;
    }

    if ([v50 count])
    {
      sub_10004D834(a1, a2, v50, 1, 0, v22, v24, v23, v25, v26, v27, a13);
      if (![v21 count])
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if ([v21 count])
    {
LABEL_14:
      sub_10004D834(a1, a2, v21, 1, 1, v22, v24, v23, v25, v26, v27, a13);
      goto LABEL_15;
    }

    v31 = +[NEPolicyCondition allInterfaces];
    v54 = v31;
    v32 = [NSArray arrayWithObjects:&v54 count:1];

    if (v22)
    {
      v33 = [v32 arrayByAddingObjectsFromArray:v22];
    }

    else
    {
      v33 = v32;
    }

    v47 = v33;
    v34 = [[NEPolicy alloc] initWithOrder:(a2 + 263) result:v25 conditions:v33];
    self = v28;
    Property = objc_getProperty(v28, v35, 48, 1);
    sub_100033A90(v23, v34, Property);

    if (v26)
    {
      v53 = [NEPolicyCondition ipProtocol:0];
      v37 = v53;
      v38 = [NSArray arrayWithObjects:&v53 count:1];
      v39 = [v47 arrayByAddingObjectsFromArray:v38];

      v40 = [[NEPolicy alloc] initWithOrder:(a2 + 263) result:v26 conditions:v39];
      v42 = objc_getProperty(self, v41, 48, 1);
      sub_100033A90(v23, v40, v42);
    }

    v43 = [[NEPolicy alloc] initWithOrder:a13 result:v27 conditions:v47];
    v45 = objc_getProperty(self, v44, 48, 1);
    sub_100033A90(v23, v43, v45);

    v21 = v48;
  }

LABEL_15:
}

uint64_t sub_10004E334(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v3, 48, 1);
  }

  else
  {
    Property = 0;
  }

  sub_100031D58(v4, Property);
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = objc_getProperty(v8, v7, 56, 1);
  }

  else
  {
    v9 = 0;
  }

  sub_100032AF0(v4, v9);
  sub_10003239C(*(a1 + 32), v4);
  v10 = *(a1 + 32);
  v52 = sub_100033F68(v10);
  sub_10004CC7C(v10, &v52, v4, *(a1 + 40), *(a1 + 48));
  v11 = sub_100033F68(*(a1 + 32));
  v12 = [NEPolicyResult netAgentUUID:*(a1 + 56)];
  if (*(a1 + 64))
  {
    v13 = [NEPolicyResult netAgentUUID:?];
  }

  else
  {
    v13 = 0;
  }

  v14 = v11 + 33;
  v15 = [NEPolicyResult divertSocketToControlUnit:0xFFFFFFFLL];
  if ([*(a1 + 72) count])
  {
    v16 = 1;
  }

  else
  {
    v16 = [*(a1 + 80) count] != 0;
  }

  v17 = *(a1 + 88);
  if (v17)
  {
    v18 = *(a1 + 32);
    v19 = [v17 appRules];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10004E750;
    v41[3] = &unk_1000EA1E8;
    v51 = v16;
    v41[4] = *(a1 + 32);
    v42 = *(a1 + 72);
    v43 = *(a1 + 96);
    v44 = *(a1 + 80);
    v45 = *(a1 + 104);
    v46 = v4;
    v47 = v12;
    v48 = v13;
    v49 = v15;
    v50 = v14;
    sub_100037370(v18, v19, 0, 1, 0, 0, v46, v41, 0);
  }

  else
  {
    v37 = v11 + 33;
    v38 = v15;
    v39 = v13;
    v40 = v12;
    v20 = [NEPolicy alloc];
    v21 = +[NEPolicyResult drop];
    v22 = +[NEPolicyCondition allInterfaces];
    v53[0] = v22;
    v23 = [NEPolicyCondition domain:@"use-application-dns.net"];
    v53[1] = v23;
    v24 = [NSArray arrayWithObjects:v53 count:2];
    v25 = [v20 initWithOrder:(v11 + 1112) result:v21 conditions:v24];

    v27 = *(a1 + 32);
    if (v27)
    {
      v28 = objc_getProperty(v27, v26, 48, 1);
    }

    else
    {
      v28 = 0;
    }

    v13 = v39;
    v12 = v40;
    v15 = v38;
    sub_100033A90(v4, v25, v28);
    v29 = sub_100033F68(*(a1 + 32));
    if (v16)
    {
      v30 = 844;
    }

    else
    {
      v30 = 1112;
    }

    if (v16)
    {
      v31 = 576;
    }

    else
    {
      v31 = 844;
    }

    v32 = [NEPolicyResult skipWithOrder:(v29 + v30)];
    v33 = *(a1 + 32);
    v34 = sub_100033F68(v33);
    sub_10004DEB0(v33, v34 + v31, *(a1 + 72), *(a1 + 96), *(a1 + 80), *(a1 + 104), 0, v4, v32, v40, v39, v38, v37);
  }

  v35 = sub_100031EB4(v4);

  return v35;
}

void sub_10004E750(uint64_t a1, void *a2)
{
  v4 = *(a1 + 108);
  v5 = sub_100033F68(*(a1 + 32));
  if (v4)
  {
    v6 = 308;
  }

  else
  {
    v6 = 576;
  }

  v7 = a2;
  v11 = [NEPolicyResult skipWithOrder:(v5 + v6)];
  v8 = *(a1 + 32);
  if (*(a1 + 108))
  {
    v9 = 40;
  }

  else
  {
    v9 = 308;
  }

  v10 = sub_100033F68(*(a1 + 32));
  sub_10004DEB0(v8, v10 + v9, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), v7, *(a1 + 72), v11, *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104));
}

void sub_10004E840(void *a1, unsigned int a2, void *a3, void *a4, void *a5, int a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, unsigned int a13)
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a7;
  v61 = a8;
  v22 = v21;
  v23 = v19;
  v57 = a9;
  v59 = a10;
  v24 = a1;
  v25 = a11;
  v58 = a12;
  if (v24)
  {
    if ([v18 count])
    {
      sub_10004D4B8(v24, a2, v18, a6, 0, v22, v57, v61, v59, v25, v58, a13);
    }

    v53 = v18;
    if ([v19 count])
    {
      sub_10004D4B8(v24, a2, v19, a6, 1u, v22, v57, v61, v59, v25, v58, a13);
    }

    v56 = v25;
    v54 = v20;
    v55 = v19;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v26 = v20;
    v27 = [v26 countByEnumeratingWithState:&v63 objects:v69 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v64;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v64 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [*(*(&v63 + 1) + 8 * i) UTF8String];
          address_from_string = nw_endpoint_create_address_from_string();
          if (address_from_string)
          {
            v32 = [NWAddressEndpoint endpointWithCEndpoint:address_from_string];
            v33 = [NEPolicyCondition flowRemoteAddress:v32 prefix:0];
            if (a6)
            {
              sub_10004C9A8(v24, a2, v33, v22, v61, v59, v56, v58, a13);
            }

            else
            {
              sub_10004D368(v24, a2, v33, v22, v57, v61);
            }
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v63 objects:v69 count:16];
      }

      while (v28);
    }

    v18 = v53;
    v20 = v54;
    v23 = v55;
    v25 = v56;
    if (a6 && ![v53 count] && !objc_msgSend(v55, "count") && !objc_msgSend(v26, "count"))
    {
      v34 = sub_100033F68(v24);
      if (v22)
      {
        v35 = 308;
      }

      else
      {
        v35 = 844;
      }

      v36 = v34 + v35;
      v37 = +[NEPolicyCondition allInterfaces];
      v68 = v37;
      v38 = [NSArray arrayWithObjects:&v68 count:1];

      if (v22)
      {
        v39 = [v38 arrayByAddingObjectsFromArray:v22];

        v38 = v39;
      }

      v40 = [[NEPolicy alloc] initWithOrder:(v36 + 266) result:v59 conditions:v38];
      v41 = v24;
      Property = objc_getProperty(v24, v42, 48, 1);
      sub_100033A90(v61, v40, Property);

      v25 = v56;
      if (v56)
      {
        v44 = [NEPolicyCondition ipProtocol:0];
        v67 = v44;
        v45 = [NSArray arrayWithObjects:&v67 count:1];
        v46 = [v38 arrayByAddingObjectsFromArray:v45];

        v47 = [[NEPolicy alloc] initWithOrder:(v36 + 266) result:v56 conditions:v46];
        v49 = objc_getProperty(v41, v48, 48, 1);
        sub_100033A90(v61, v47, v49);
      }

      v50 = [[NEPolicy alloc] initWithOrder:a13 result:v58 conditions:v38];
      v52 = objc_getProperty(v41, v51, 48, 1);
      sub_100033A90(v61, v50, v52);

      v20 = v54;
      v23 = v55;
    }
  }
}

uint64_t sub_10004ED18(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v3, 48, 1);
  }

  else
  {
    Property = 0;
  }

  sub_100031D58(v4, Property);
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = objc_getProperty(v8, v7, 56, 1);
  }

  else
  {
    v9 = 0;
  }

  sub_100032AF0(v4, v9);
  sub_10003239C(*(a1 + 32), v4);
  v10 = *(a1 + 32);
  v54 = sub_100033F68(v10);
  sub_10004CC7C(v10, &v54, v4, *(a1 + 40), *(a1 + 48));
  if ([*(a1 + 56) count] || objc_msgSend(*(a1 + 64), "count") || objc_msgSend(*(a1 + 72), "count"))
  {
    v39 = 1;
    v37 = 576;
    v11 = 40;
  }

  else
  {
    v39 = 0;
    v37 = 844;
    v11 = 308;
  }

  v36 = v11;
  v12 = sub_100033F68(*(a1 + 32));
  v38 = [NEPolicyResult netAgentUUID:*(a1 + 80)];
  if (*(a1 + 88))
  {
    v13 = [NEPolicyResult netAgentUUID:?];
  }

  else
  {
    v13 = 0;
  }

  v14 = [NEPolicyResult divertSocketToControlUnit:0xFFFFFFFLL];
  v15 = [NEPolicy alloc];
  v16 = +[NEPolicyResult drop];
  v17 = +[NEPolicyCondition allInterfaces];
  v55[0] = v17;
  v18 = [NEPolicyCondition domain:@"use-application-dns.net"];
  v55[1] = v18;
  v19 = [NSArray arrayWithObjects:v55 count:2];
  v20 = [v15 initWithOrder:(v12 + 1112) result:v16 conditions:v19];

  v22 = *(a1 + 32);
  if (v22)
  {
    v23 = objc_getProperty(v22, v21, 48, 1);
  }

  else
  {
    v23 = 0;
  }

  v24 = v12 + v37;
  v25 = v12 + v36;
  v26 = v12 + 33;
  sub_100033A90(v4, v20, v23);
  v27 = *(a1 + 96);
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10004F0B8;
  v40[3] = &unk_1000EA260;
  v41 = *(a1 + 56);
  v42 = *(a1 + 64);
  v43 = *(a1 + 72);
  v28 = *(a1 + 104);
  v29 = *(a1 + 32);
  v44 = v28;
  v45 = v29;
  v53 = v39;
  v46 = v4;
  v47 = v38;
  v48 = v13;
  v49 = v14;
  v50 = v25;
  v51 = v26;
  v52 = v24;
  v30 = v14;
  v31 = v13;
  v32 = v38;
  v33 = v4;
  [v27 enumerateObjectsUsingBlock:v40];
  v34 = sub_100031EB4(v33);

  return v34;
}

void sub_10004F0B8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 BOOLValue];
  v8 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v9 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  v10 = [*(a1 + 48) objectAtIndexedSubscript:a3];
  *a4 = 0;
  v11 = *(a1 + 56);
  if (v11)
  {
    v12 = *(a1 + 64);
    v13 = [v11 appRules];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10004F31C;
    v26[3] = &unk_1000EA238;
    v35 = *(a1 + 116);
    v14 = *(a1 + 64);
    v15 = *(a1 + 72);
    v33 = *(a1 + 104);
    v26[4] = v14;
    v32 = a3;
    v27 = v8;
    v28 = v9;
    v29 = v10;
    v36 = v7;
    v16 = *(a1 + 72);
    v17 = *(a1 + 80);
    v18 = *(a1 + 88);
    v19 = *(a1 + 96);
    *&v20 = v18;
    *(&v20 + 1) = v19;
    *&v21 = v16;
    *(&v21 + 1) = v17;
    v30 = v21;
    v31 = v20;
    v34 = *(a1 + 108);
    sub_100037370(v12, v13, 0, 1, 0, 0, v15, v26, 0);
  }

  else
  {
    v22 = *(a1 + 116);
    v23 = sub_100033F68(*(a1 + 64));
    if (v22)
    {
      v24 = 844;
    }

    else
    {
      v24 = 1112;
    }

    v25 = [NEPolicyResult skipWithOrder:(v23 + v24)];
    sub_10004E840(*(a1 + 64), *(a1 + 112) + 2 * a3, v8, v9, v10, v7, 0, *(a1 + 72), v25, *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 108));
  }
}

void sub_10004F31C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 112);
  v5 = sub_100033F68(*(a1 + 32));
  if (v4)
  {
    v6 = 308;
  }

  else
  {
    v6 = 576;
  }

  v7 = a2;
  v8 = [NEPolicyResult skipWithOrder:(v5 + v6)];
  sub_10004E840(*(a1 + 32), *(a1 + 104) + 2 * *(a1 + 96), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 113), v7, *(a1 + 64), v8, *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 108));
}

void sub_100050D2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v8, 120, 1);
  }

  v10 = Property;
  v11 = [v10 objectForKeyedSubscript:*(a1 + 40)];

  if (v11)
  {
    v12 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 48) type]);
    v13 = [v11 objectForKeyedSubscript:v12];

    v14 = *(a1 + 48);
    if (v13 == v14)
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100051038;
      v25[3] = &unk_1000EB2E8;
      v25[4] = *(a1 + 32);
      v26 = v14;
      v27 = *(a1 + 56);
      [v13 handleUpdateConfiguration:v5 withCompletionHandler:v25];
    }

    else
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 40);
        v17 = *(a1 + 48);
        v19 = *(a1 + 32);
        v20 = [v17 type];
        v21 = *(a1 + 48);
        *buf = 138413314;
        v29 = v19;
        v30 = 2112;
        v31 = v17;
        v32 = 2112;
        v33 = v18;
        v34 = 1024;
        v35 = v20;
        v36 = 2112;
        v37 = v21;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@: Failed to register session %@, session with ID %@ and type %d is different: %@", buf, 0x30u);
      }

      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 40);
      v22 = *(a1 + 48);
      v24 = *(a1 + 32);
      *buf = 138412802;
      v29 = v24;
      v30 = 2112;
      v31 = v22;
      v32 = 2112;
      v33 = v23;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@: Failed to register session %@, session with ID %@ not found", buf, 0x20u);
    }

    (*(*(a1 + 56) + 16))();
  }

  objc_sync_exit(v7);
}

void sub_100051038(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    Property = objc_getProperty(v3, a2, 88, 1);
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
    Property = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051104;
  block[3] = &unk_1000EB2E8;
  block[4] = v5;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  dispatch_async(Property, block);
}

void sub_100051104(id *a1)
{
  v3 = a1[4];
  objc_sync_enter(v3);
  if ([a1[5] type] != 3)
  {
    v49 = a1[4];
    if (v49 && objc_getProperty(v49, v4, 176, 1))
    {
      goto LABEL_42;
    }

    v57 = [a1[5] type];
    v58 = a1[5];
    if (v57 == 4)
    {
      v59 = [v58 configuration];
      v60 = [v59 contentFilter];
      v61 = [v60 isEnabled];

      if (!v61)
      {
        goto LABEL_42;
      }

      v62 = [a1[5] configuration];
      v63 = [v62 externalIdentifier];

      if (!v63)
      {
        v65 = a1[4];
        if (v65)
        {
          v66 = objc_getProperty(v65, v64, 224, 1);
          if (v66)
          {
            v68 = v66;
            v69 = a1[4];
            v70 = v69 ? objc_getProperty(v69, v67, 224, 1) : 0;
            v71 = a1[5];

            if (v70 != v71)
            {
              Property = a1[4];
              if (Property)
              {
                Property = objc_getProperty(Property, v67, 224, 1);
              }

              v73 = Property;
              [v73 stopIfNecessaryWithReason:33];
            }
          }

          v74 = a1[4];
          if (v74)
          {
            objc_setProperty_atomic(v74, v67, a1[5], 224);
          }
        }
      }

      v75 = a1[5];
      if (sub_100080BF4(v75))
      {
        v76 = ne_log_obj();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          v77 = a1[4];
          v78 = [v75 configuration];
          v79 = [v78 name];
          v80 = a1[5];
          *buf = 138412802;
          v288 = v77;
          v289 = 2112;
          *v290 = v79;
          *&v290[8] = 2112;
          v291 = v80;
          _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "%@: <%@> Register Filter Session: %@", buf, 0x20u);
        }
      }

      else
      {
        v76 = ne_log_obj();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          v246 = a1[4];
          v247 = [v75 configuration];
          v248 = [v247 name];
          *buf = 138412546;
          v288 = v246;
          v289 = 2112;
          *v290 = v248;
          _os_log_error_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "%@: <%@> Failed to allocate a control unit", buf, 0x16u);
        }
      }

      (*(a1[6] + 2))();
      goto LABEL_103;
    }

    v81 = [v58 type];
    v82 = a1[5];
    if (v81 == 10)
    {
      v83 = [v82 configuration];
      v84 = [v83 urlFilter];
      v85 = [v84 isEnabled];

      if (!v85)
      {
        goto LABEL_42;
      }

      v87 = a1[4];
      if (v87)
      {
        v88 = objc_getProperty(v87, v86, 240, 1);
        if (v88)
        {
          v90 = v88;
          v91 = a1[4];
          v92 = v91 ? objc_getProperty(v91, v89, 240, 1) : 0;
          v93 = a1[5];

          if (v92 != v93)
          {
            v94 = a1[4];
            if (v94)
            {
              v94 = objc_getProperty(v94, v89, 240, 1);
            }

            v95 = v94;
            [v95 stopIfNecessaryWithReason:33];
          }
        }

        v96 = a1[4];
        if (v96)
        {
          objc_setProperty_atomic(v96, v89, a1[5], 240);
        }
      }

      v97 = ne_log_obj();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
      {
        v98 = a1[4];
        v99 = [a1[5] configuration];
        v100 = [v99 name];
        v101 = a1[5];
        *buf = 138412802;
        v288 = v98;
        v289 = 2112;
        *v290 = v100;
        *&v290[8] = 2112;
        v291 = v101;
        _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "%@: <%@> Register URL Filter Session: %@", buf, 0x20u);
      }

      goto LABEL_181;
    }

    v102 = [v82 type];
    v103 = a1[5];
    if (v102 == 1)
    {
      v104 = [v103 configuration];
      v105 = [v104 grade];

      v106 = a1[5];
      if (v105 != 1)
      {
        v144 = [v106 configuration];
        v145 = [v144 VPN];
        v146 = [v145 isEnabled];

        if (!v146)
        {
          goto LABEL_42;
        }

        v147 = ne_log_obj();
        if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
        {
          v148 = a1[4];
          *buf = 138412290;
          v288 = v148;
          _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEFAULT, "%@: Register Personal VPN Session enabled", buf, 0xCu);
        }

        v282 = 0u;
        v283 = 0u;
        v280 = 0u;
        v281 = 0u;
        v150 = a1[4];
        if (v150)
        {
          v150 = objc_getProperty(v150, v149, 120, 1);
        }

        obj = v150;
        v151 = 0;
        v153 = [obj countByEnumeratingWithState:&v280 objects:v298 count:16];
        if (v153)
        {
          v276 = *v281;
          while (2)
          {
            for (i = 0; i != v153; ++i)
            {
              if (*v281 != v276)
              {
                objc_enumerationMutation(obj);
              }

              v155 = *(*(&v280 + 1) + 8 * i);
              v156 = a1[4];
              if (v156)
              {
                v156 = objc_getProperty(v156, v152, 120, 1);
              }

              v157 = v156;
              v158 = [v157 objectForKeyedSubscript:v155];
              v159 = [v158 objectForKeyedSubscript:&off_1000EE330];

              v160 = [v159 configuration];
              LODWORD(v158) = [v160 grade] == 1;

              if (v158)
              {
                v75 = v159;

                v161 = [v75 configuration];
                v162 = [v161 VPN];
                v163 = [v162 protocol];
                v164 = [v163 includeAllNetworks];

                if (v164)
                {

                  v166 = 0;
                  goto LABEL_147;
                }

                v151 = v75;
              }
            }

            v153 = [obj countByEnumeratingWithState:&v280 objects:v298 count:16];
            if (v153)
            {
              continue;
            }

            break;
          }

          if (!v151)
          {
            v75 = 0;
            goto LABEL_206;
          }

          obj = [a1[5] configuration];
          v153 = [obj VPN];
          i = [v153 protocol];
          if (([i includeAllNetworks] & 1) == 0)
          {

            goto LABEL_205;
          }

          v166 = 1;
          v75 = v151;
LABEL_147:
          v191 = [v75 configuration];
          v192 = [v191 VPN];
          v193 = [v192 isEnabled] && objc_msgSend(v75, "status") && objc_msgSend(v75, "status") != 1;

          if (v166)
          {

            if (!v193)
            {
              goto LABEL_206;
            }
          }

          else if (!v193)
          {
            goto LABEL_206;
          }

          v226 = ne_log_obj();
          if (os_log_type_enabled(v226, OS_LOG_TYPE_DEFAULT))
          {
            v270 = a1[4];
            v279 = [a1[5] configuration];
            objb = [v279 VPN];
            v272 = [objb protocol];
            if ([v272 includeAllNetworks])
            {
              v227 = "IncludeAllNetworks ";
            }

            else
            {
              v227 = "";
            }

            v228 = a1[5];
            v229 = [v75 configuration];
            v230 = [v229 VPN];
            v231 = [v230 protocol];
            v232 = [v231 includeAllNetworks];
            v233 = [v75 status];
            v234 = "";
            if (v232)
            {
              v234 = "IncludeAllNetworks ";
            }

            *buf = 138413570;
            v288 = v270;
            v289 = 2080;
            *v290 = v227;
            *&v290[8] = 2112;
            v291 = v228;
            v292 = 2080;
            v293 = v234;
            v294 = 2112;
            v295 = v75;
            v296 = 1024;
            v297 = v233;
            _os_log_impl(&_mh_execute_header, v226, OS_LOG_TYPE_DEFAULT, "%@: Failed to register Personal %sVPN Session %@ due to Enterprise %sVPN session %@ (status %d)", buf, 0x3Au);
          }

          v235 = [a1[5] configuration];
          v236 = [v235 VPN];
          v237 = [v236 isOnDemandEnabled];

          if (v237)
          {
            [a1[5] pauseOnDemand];
          }

          v238 = a1[6];
          if (v238)
          {
            v238[2](v238, 0);
          }
        }

        else
        {
LABEL_205:

          v75 = v151;
LABEL_206:
          v254 = a1[4];
          if (v254)
          {
            v255 = objc_getProperty(v254, v165, 208, 1);
            if (v255)
            {
              v257 = v255;
              v258 = a1[4];
              if (v258)
              {
                v258 = objc_getProperty(v258, v256, 208, 1);
              }

              v259 = v258 == a1[5];

              if (!v259)
              {
                v260 = a1[4];
                if (v260)
                {
                  v260 = objc_getProperty(v260, v256, 208, 1);
                }

                v261 = v260;
                [v261 stopIfNecessaryWithReason:33];
              }
            }

            v262 = a1[4];
            if (v262)
            {
              objc_setProperty_atomic(v262, v256, a1[5], 208);
            }
          }

          v263 = ne_log_obj();
          if (os_log_type_enabled(v263, OS_LOG_TYPE_DEFAULT))
          {
            v264 = a1[4];
            v265 = a1[5];
            *buf = 138412546;
            v288 = v264;
            v289 = 2112;
            *v290 = v265;
            _os_log_impl(&_mh_execute_header, v263, OS_LOG_TYPE_DEFAULT, "%@: Register Personal VPN Session: %@", buf, 0x16u);
          }

          v266 = [a1[5] configuration];
          v267 = [v266 VPN];
          v268 = [v267 isOnDemandEnabled];

          if (v268)
          {
            [a1[5] unpauseOnDemand];
          }

          (*(a1[6] + 2))();
        }

LABEL_103:

        goto LABEL_47;
      }

      v107 = [v106 configuration];
      v108 = [v107 VPN];
      v109 = [v108 isEnabled];

      if (!v109)
      {
        goto LABEL_42;
      }

      v111 = a1[4];
      if (v111)
      {
        v112 = objc_getProperty(v111, v110, 192, 1);
        if (v112)
        {
          v114 = v112;
          v115 = a1[4];
          v116 = v115 ? objc_getProperty(v115, v113, 192, 1) : 0;
          v117 = a1[5];

          if (v116 != v117)
          {
            v118 = a1[4];
            if (v118)
            {
              v118 = objc_getProperty(v118, v113, 192, 1);
            }

            v119 = v118;
            [v119 stopIfNecessaryWithReason:33];
          }
        }

        v120 = a1[4];
        if (v120)
        {
          objc_setProperty_atomic(v120, v113, a1[5], 192);
          v122 = a1[4];
          if (v122)
          {
            v123 = objc_getProperty(v122, v121, 208, 1);
            if (v123)
            {
              v124 = v123;
              v125 = [a1[5] configuration];
              v126 = [v125 VPN];
              v127 = [v126 protocol];
              if ([v127 includeAllNetworks])
              {

LABEL_162:
                v206 = ne_log_obj();
                if (os_log_type_enabled(v206, OS_LOG_TYPE_DEFAULT))
                {
                  v269 = a1[4];
                  v278 = [a1[5] configuration];
                  obja = [v278 VPN];
                  v271 = [obja protocol];
                  if ([v271 includeAllNetworks])
                  {
                    v208 = "IncludeAllNetworks ";
                  }

                  else
                  {
                    v208 = "";
                  }

                  v209 = a1[4];
                  v210 = a1[5];
                  if (v209)
                  {
                    v209 = objc_getProperty(v209, v207, 208, 1);
                  }

                  v211 = v209;
                  v212 = [v211 configuration];
                  v213 = [v212 VPN];
                  v214 = [v213 protocol];
                  v216 = [v214 includeAllNetworks];
                  v217 = a1[4];
                  if (v217)
                  {
                    v217 = objc_getProperty(v217, v215, 208, 1);
                  }

                  v218 = "";
                  if (v216)
                  {
                    v218 = "IncludeAllNetworks ";
                  }

                  *buf = 138413314;
                  v288 = v269;
                  v289 = 2080;
                  *v290 = v208;
                  *&v290[8] = 2112;
                  v291 = v210;
                  v292 = 2080;
                  v293 = v218;
                  v294 = 2112;
                  v295 = v217;
                  _os_log_impl(&_mh_execute_header, v206, OS_LOG_TYPE_DEFAULT, "%@: Register Enterprise %sVPN Session %@: stopping Personal %sVPN session %@", buf, 0x34u);
                }

                v220 = a1[4];
                if (v220)
                {
                  v220 = objc_getProperty(v220, v219, 208, 1);
                }

                v75 = v220;
                v222 = a1[4];
                if (v222)
                {
                  objc_setProperty_atomic(v222, v221, 0, 208);
                  v223 = a1[4];
                }

                else
                {
                  v223 = 0;
                }

                v284[0] = _NSConcreteStackBlock;
                v284[1] = 3221225472;
                v284[2] = sub_100052838;
                v284[3] = &unk_1000EB2E8;
                v284[4] = v223;
                v285 = a1[5];
                v286 = a1[6];
                [v75 stopIfNecessaryWithReason:33 withCompletionHandler:v284];

                goto LABEL_103;
              }

              v201 = a1[4];
              if (v201)
              {
                v201 = objc_getProperty(v201, v128, 208, 1);
              }

              v202 = v201;
              v203 = [v202 configuration];
              v204 = [v203 VPN];
              v205 = [v204 protocol];
              v277 = [v205 includeAllNetworks];

              if (v277)
              {
                goto LABEL_162;
              }
            }
          }
        }
      }

      v97 = ne_log_obj();
      if (!os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_181;
      }

      v224 = a1[4];
      v225 = a1[5];
      *buf = 138412546;
      v288 = v224;
      v289 = 2112;
      *v290 = v225;
      v143 = "%@: Register Enterprise VPN Session: %@";
LABEL_180:
      _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, v143, buf, 0x16u);
      goto LABEL_181;
    }

    v129 = [v103 type];
    v130 = a1[5];
    if (v129 == 2)
    {
      v131 = [v130 configuration];
      v132 = [v131 grade];
      if (v132 != 1)
      {
        v1 = [a1[5] configuration];
        if ([v1 grade] != 3)
        {

          goto LABEL_42;
        }
      }

      v133 = [a1[5] configuration];
      v134 = [v133 appVPN];
      v135 = [v134 isEnabled];

      if (v132 == 1)
      {

        if (!v135)
        {
          goto LABEL_42;
        }
      }

      else
      {

        if ((v135 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      [a1[5] setIsDeregisteredAppVPNSession:0];
      v97 = ne_log_obj();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
      {
        v189 = a1[4];
        v190 = a1[5];
        *buf = 138412546;
        v288 = v189;
        v289 = 2112;
        *v290 = v190;
        v143 = "%@: Register App VPN Session: %@";
        goto LABEL_180;
      }
    }

    else
    {
      v136 = [v130 type];
      v137 = a1[5];
      if (v136 == 5)
      {
        v138 = [v137 configuration];
        v139 = [v138 pathController];
        v140 = [v139 isEnabled];

        if (!v140)
        {
          goto LABEL_42;
        }

        v97 = ne_log_obj();
        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
        {
          v141 = a1[4];
          v142 = a1[5];
          *buf = 138412546;
          v288 = v141;
          v289 = 2112;
          *v290 = v142;
          v143 = "%@: Register Path Controller Session: %@";
          goto LABEL_180;
        }
      }

      else
      {
        v167 = [v137 type];
        v168 = a1[5];
        if (v167 == 6)
        {
          v169 = [v168 configuration];
          v170 = [v169 dnsProxy];
          v171 = [v170 isEnabled];

          if (!v171)
          {
            goto LABEL_42;
          }

          v172 = [a1[5] configuration];
          v173 = [v172 externalIdentifier];

          if (!v173)
          {
            v175 = a1[4];
            if (v175)
            {
              v176 = objc_getProperty(v175, v174, 232, 1);
              if (v176)
              {
                v178 = v176;
                v179 = a1[4];
                v180 = v179 ? objc_getProperty(v179, v177, 232, 1) : 0;
                v181 = a1[5];

                if (v180 != v181)
                {
                  v182 = a1[4];
                  if (v182)
                  {
                    v182 = objc_getProperty(v182, v177, 232, 1);
                  }

                  v183 = v182;
                  [v183 stopIfNecessaryWithReason:33];
                }
              }

              v184 = a1[4];
              if (v184)
              {
                objc_setProperty_atomic(v184, v177, a1[5], 232);
              }
            }
          }

          v97 = ne_log_obj();
          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
          {
            v185 = a1[4];
            v186 = [a1[5] configuration];
            v187 = [v186 name];
            v188 = a1[5];
            *buf = 138412802;
            v288 = v185;
            v289 = 2112;
            *v290 = v187;
            *&v290[8] = 2112;
            v291 = v188;
            _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "%@: <%@> Register DNS Proxy Session: %@", buf, 0x20u);
          }
        }

        else
        {
          v194 = [v168 type];
          v195 = a1[5];
          if (v194 == 7)
          {
            v196 = [v195 configuration];
            v197 = [v196 dnsSettings];
            v198 = [v197 isEnabled];

            if (!v198)
            {
              goto LABEL_42;
            }

            v97 = ne_log_obj();
            if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
            {
              v199 = a1[4];
              v200 = a1[5];
              *buf = 138412546;
              v288 = v199;
              v289 = 2112;
              *v290 = v200;
              v143 = "%@: Register DNS Settings Session: %@";
              goto LABEL_180;
            }
          }

          else
          {
            v239 = [v195 type];
            v240 = a1[5];
            if (v239 == 9)
            {
              v241 = [v240 configuration];
              v242 = [v241 relay];
              v243 = [v242 isEnabled];

              if (!v243)
              {
                goto LABEL_42;
              }

              v97 = ne_log_obj();
              if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
              {
                v244 = a1[4];
                v245 = a1[5];
                *buf = 138412546;
                v288 = v244;
                v289 = 2112;
                *v290 = v245;
                v143 = "%@: Register Relay Session: %@";
                goto LABEL_180;
              }
            }

            else
            {
              if ([v240 type] != 11 && objc_msgSend(a1[5], "type") != 12)
              {
                goto LABEL_42;
              }

              v249 = [a1[5] configuration];
              v250 = [v249 hotspot];
              v251 = [v250 isEnabled];

              if (!v251)
              {
                goto LABEL_42;
              }

              v97 = ne_log_obj();
              if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
              {
                v252 = a1[4];
                v253 = a1[5];
                *buf = 138412546;
                v288 = v252;
                v289 = 2112;
                *v290 = v253;
                v143 = "%@: Register Hotspot Session: %@";
                goto LABEL_180;
              }
            }
          }
        }
      }
    }

LABEL_181:

LABEL_39:
    v47 = a1[6];
    v48 = 1;
LABEL_46:
    v47[2](v47, v48);
    goto LABEL_47;
  }

  v5 = [a1[5] configuration];
  v6 = [v5 alwaysOnVPN];
  v7 = [v6 isEnabled];

  if (v7)
  {
    v9 = a1[4];
    if (!v9)
    {
      goto LABEL_35;
    }

    v10 = objc_getProperty(v9, v8, 176, 1);
    if (v10)
    {
      v12 = v10;
      v13 = a1[4];
      v14 = v13 ? objc_getProperty(v13, v11, 176, 1) : 0;
      v15 = a1[5];

      if (v14 != v15)
      {
        v16 = a1[4];
        if (v16)
        {
          v16 = objc_getProperty(v16, v11, 176, 1);
        }

        v17 = v16;
        [v17 stopIfNecessaryWithReason:33];
      }
    }

    v18 = a1[4];
    if (!v18)
    {
      goto LABEL_35;
    }

    v20 = objc_getProperty(v18, v11, 192, 1);
    v21 = a1[4];
    if (v20)
    {
      if (v21)
      {
        v21 = objc_getProperty(v21, v19, 192, 1);
      }

      v22 = v21;
      [v22 stopIfNecessaryWithReason:33];

      v24 = a1[4];
      if (!v24)
      {
        goto LABEL_35;
      }

      objc_setProperty_atomic(v24, v23, 0, 192);
      v21 = a1[4];
    }

    if (v21)
    {
      v26 = objc_getProperty(v21, v19, 208, 1);
      v27 = a1[4];
      if (v26)
      {
        if (v27)
        {
          v27 = objc_getProperty(v27, v25, 208, 1);
        }

        v28 = v27;
        [v28 stopIfNecessaryWithReason:33];

        v30 = a1[4];
        if (!v30)
        {
          goto LABEL_35;
        }

        objc_setProperty_atomic(v30, v29, 0, 208);
        v27 = a1[4];
      }

      if (v27)
      {
        v32 = objc_getProperty(v27, v25, 232, 1);
        v33 = a1[4];
        if (v32)
        {
          if (v33)
          {
            v33 = objc_getProperty(v33, v31, 232, 1);
          }

          v34 = v33;
          [v34 stopIfNecessaryWithReason:33];

          v36 = a1[4];
          if (!v36)
          {
            goto LABEL_35;
          }

          objc_setProperty_atomic(v36, v35, 0, 232);
          v33 = a1[4];
        }

        if (v33 && objc_getProperty(v33, v31, 224, 1))
        {
          v38 = a1[4];
          if (v38)
          {
            v38 = objc_getProperty(v38, v37, 224, 1);
          }

          v39 = v38;
          [v39 stopIfNecessaryWithReason:33];

          v41 = a1[4];
          if (v41)
          {
            objc_setProperty_atomic(v41, v40, 0, 224);
          }
        }
      }
    }

LABEL_35:
    v42 = ne_log_obj();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = a1[4];
      v44 = a1[5];
      *buf = 138412546;
      v288 = v43;
      v289 = 2112;
      *v290 = v44;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%@: Register Always-On VPN Session: %@", buf, 0x16u);
    }

    v46 = a1[4];
    if (v46)
    {
      objc_setProperty_atomic(v46, v45, a1[5], 176);
    }

    goto LABEL_39;
  }

LABEL_42:
  v50 = ne_log_obj();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v51 = a1[5];
    v52 = [v51 type];
    v53 = [a1[5] configuration];
    v54 = [v53 grade];
    v55 = [a1[5] configuration];
    v56 = [v55 VPN];
    *buf = 138413058;
    v288 = v51;
    v289 = 1024;
    *v290 = v52;
    *&v290[4] = 1024;
    *&v290[6] = v54;
    LOWORD(v291) = 1024;
    *(&v291 + 2) = [v56 isEnabled];
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Failed to register session: %@ type: %d grade: %d vpn enabled: %d", buf, 0x1Eu);
  }

  v47 = a1[6];
  if (v47)
  {
    v48 = 0;
    goto LABEL_46;
  }

LABEL_47:
  objc_sync_exit(v3);
}

void sub_100052838(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    Property = objc_getProperty(v3, a2, 88, 1);
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
    Property = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100052904;
  block[3] = &unk_1000EB2E8;
  block[4] = v5;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  dispatch_async(Property, block);
}

uint64_t sub_100052904(void *a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: Register Enterprise VPN Session: %@", &v6, 0x16u);
  }

  return (*(a1[6] + 16))();
}

void sub_100052A24(void *a1)
{
  if (a1)
  {
    self = a1;
    objc_sync_enter(self);
    if (objc_getProperty(self, v1, 256, 1))
    {
      v3 = objc_getProperty(self, v2, 256, 1);
      [v3 removeObserver:self forKeyPath:@"path"];

      objc_setProperty_atomic(self, v4, 0, 256);
    }

    if (objc_getProperty(self, v2, 264, 1))
    {
      v6 = objc_getProperty(self, v5, 264, 1);
      [v6 removeObserver:self forKeyPath:@"path"];

      objc_setProperty_atomic(self, v7, 0, 264);
    }

    if (objc_getProperty(self, v5, 272, 1))
    {
      v9 = objc_getProperty(self, v8, 272, 1);
      [v9 removeObserver:self forKeyPath:@"path"];

      objc_setProperty_atomic(self, v10, 0, 272);
    }

    v11 = self[5];
    if ((v11 & 0x80000000) == 0)
    {
      notify_cancel(v11);
      self[5] = -1;
    }

    *(self + 11) = 0;
    objc_sync_exit(self);
  }
}

void sub_100052BA8(void *a1)
{
  if (a1)
  {
    self = a1;
    objc_sync_enter(self);
    if (objc_getProperty(self, v1, 136, 1))
    {
      v3 = objc_getProperty(self, v2, 136, 1);
      v4 = v3;
      if (v3 && v3[2])
      {
        IODeregisterForSystemPower(v3 + 3);
        IONotificationPortSetDispatchQueue(*(v4 + 8), 0);
        IONotificationPortDestroy(*(v4 + 8));
        IOServiceClose(v4[2]);
      }

      objc_setProperty_atomic(self, v5, 0, 136);
    }

    self[12] = 0;
    objc_sync_exit(self);
  }
}

void sub_100052C90(void *a1)
{
  if (a1)
  {
    self = a1;
    objc_sync_enter(self);
    v1 = *(self + 6);
    if ((v1 & 0x80000000) == 0)
    {
      notify_cancel(v1);
      *(self + 6) = -1;
    }

    v2 = *(self + 19);
    if (v2)
    {
      SCDynamicStoreSetDispatchQueue(v2, 0);
      CFRelease(*(self + 19));
      *(self + 19) = 0;
      objc_setProperty_atomic(self, v3, 0, 160);
    }

    *(self + 13) = 0;
    objc_sync_exit(self);
  }
}

void sub_100052E3C(uint64_t a1)
{
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  if ([*(a1 + 40) isEqualToString:@"path"])
  {
    v5 = *(a1 + 48);
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 256, 1);
    }

    v7 = Property;
    v8 = [v5 isEqual:v7];

    if (v8)
    {
      v10 = *(a1 + 32);
      if (v10)
      {
        v10 = objc_getProperty(v10, v9, 256, 1);
      }

      v11 = v10;
      v12 = [v11 path];
      v13 = [v12 status];

      if (v13 == 1)
      {
        v15 = *(a1 + 32);
        if (v15)
        {
          v15 = objc_getProperty(v15, v14, 256, 1);
        }

        v16 = v15;
        v17 = [v16 path];
        v18 = [v17 interface];
      }

      else
      {
        v18 = 0;
      }

      v45 = [*(a1 + 32) primaryPhysicalInterface];
      if (v45 || !v18)
      {
        v46 = [*(a1 + 32) primaryPhysicalInterface];
        if (!v46)
        {

          goto LABEL_54;
        }

        v47 = [*(a1 + 32) primaryPhysicalInterface];
        v1 = [v47 interfaceName];
        v48 = [v18 interfaceName];
        v49 = [v1 isEqualToString:v48];

        if (v49)
        {
          goto LABEL_54;
        }
      }

      v51 = ne_log_obj();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = [*(a1 + 32) primaryPhysicalInterface];
        v53 = [v52 interfaceName];
        v1 = [v18 interfaceName];
        *buf = 138412546;
        v128 = v53;
        v129 = 2112;
        v130 = v1;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Detected that the primary physical interface changed: %@ => %@", buf, 0x16u);
      }

      v54 = [*(a1 + 32) primaryPhysicalInterface];
      v55 = [v54 interfaceName];
      v56 = v55 == 0;

      if (!v56)
      {
        v57 = [*(a1 + 32) primaryPhysicalInterface];
        v58 = [v57 interfaceName];
        v59 = v58;
        [v58 UTF8String];
        NEHelperCacheClearRedirectedAddresses();
      }

      [*(a1 + 32) setPrimaryPhysicalInterface:v18];
      v61 = *(a1 + 32);
      if (v61)
      {
        v61 = objc_getProperty(v61, v60, 256, 1);
      }

      v62 = v61;
      v63 = [v62 path];
      v65 = [v63 cPath];
      v66 = *(a1 + 32);
      if (v66)
      {
        objc_setProperty_atomic(v66, v64, v65, 64);
      }

      sub_1000538B0(*(a1 + 32), 1);
LABEL_54:
      v82 = *(a1 + 32);
      if (v82)
      {
        v82 = objc_getProperty(v82, v50, 256, 1);
      }

      v83 = v82;
      v84 = [v83 path];
      v85 = [v84 status];

      v87 = *(a1 + 32);
      if (!v87)
      {
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        goto LABEL_61;
      }

      if (v87[6] == v85)
      {
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
      }

      else
      {
        v87[6] = v85;
        v87 = *(a1 + 32);
        v121 = 0u;
        v122 = 0u;
        v123 = 0u;
        v124 = 0u;
        if (!v87)
        {
LABEL_61:
          v88 = v87;
          v89 = [v88 countByEnumeratingWithState:&v121 objects:v126 count:16];
          if (v89)
          {
            v90 = *v122;
            do
            {
              for (i = 0; i != v89; i = i + 1)
              {
                if (*v122 != v90)
                {
                  objc_enumerationMutation(v88);
                }

                v92 = *(*(&v121 + 1) + 8 * i);
                if (v85 == 1)
                {
                  v1 = [v18 interfaceName];
                  v93 = v1;
                }

                else
                {
                  v93 = 0;
                }

                [v92 satisfyPathResult:v93];
                if (v85 == 1)
                {
                }
              }

              v89 = [v88 countByEnumeratingWithState:&v121 objects:v126 count:16];
            }

            while (v89);
          }

          v95 = *(a1 + 32);
          if (v95)
          {
            v95 = objc_getProperty(v95, v94, 280, 1);
          }

          v96 = v95;
          [v96 removeAllObjects];

          goto LABEL_105;
        }
      }

      v87 = objc_getProperty(v87, v86, 280, 1);
      goto LABEL_61;
    }

    v19 = *(a1 + 48);
    v20 = *(a1 + 32);
    if (v20)
    {
      v20 = objc_getProperty(v20, v9, 264, 1);
    }

    v21 = v20;
    v22 = [v19 isEqual:v21];

    if (v22)
    {
      v24 = *(a1 + 32);
      if (v24)
      {
        v24 = objc_getProperty(v24, v23, 264, 1);
      }

      v25 = v24;
      v26 = [v25 path];
      v27 = [v26 status];

      if (v27 == 1)
      {
        v29 = *(a1 + 32);
        if (v29)
        {
          v29 = objc_getProperty(v29, v28, 264, 1);
        }

        v30 = v29;
        v31 = [v30 path];
        v18 = [v31 interface];
      }

      else
      {
        v18 = 0;
      }

      v67 = [*(a1 + 32) primaryCellularInterface];
      if (v67 || !v18)
      {
        v68 = [*(a1 + 32) primaryCellularInterface];
        if (!v68)
        {

          goto LABEL_85;
        }

        v1 = [*(a1 + 32) primaryCellularInterface];
        v69 = [v1 interfaceName];
        v70 = [v18 interfaceName];
        v71 = [v69 isEqualToString:v70];

        if (v71)
        {
          goto LABEL_85;
        }
      }

      v73 = ne_log_obj();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        v74 = [*(a1 + 32) primaryCellularInterface];
        v1 = [v74 interfaceName];
        v75 = [v18 interfaceName];
        *buf = 138412546;
        v128 = v1;
        v129 = 2112;
        v130 = v75;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Detected that the primary cellular interface changed: %@ => %@", buf, 0x16u);
      }

      v76 = [*(a1 + 32) primaryCellularInterface];
      v77 = [v76 interfaceName];
      v78 = v77 == 0;

      if (!v78)
      {
        v79 = [*(a1 + 32) primaryCellularInterface];
        v80 = [v79 interfaceName];
        v81 = v80;
        [v80 UTF8String];
        NEHelperCacheClearRedirectedAddresses();
      }

      [*(a1 + 32) setPrimaryCellularInterface:v18];
LABEL_85:
      v107 = *(a1 + 32);
      if (!v107)
      {
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        goto LABEL_90;
      }

      if (v107[7] == v27)
      {
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
      }

      else
      {
        v107[7] = v27;
        v107 = *(a1 + 32);
        v117 = 0u;
        v118 = 0u;
        v119 = 0u;
        v120 = 0u;
        if (!v107)
        {
LABEL_90:
          v108 = v107;
          v109 = [v108 countByEnumeratingWithState:&v117 objects:v125 count:16];
          if (v109)
          {
            v110 = *v118;
            do
            {
              for (j = 0; j != v109; j = j + 1)
              {
                if (*v118 != v110)
                {
                  objc_enumerationMutation(v108);
                }

                v112 = *(*(&v117 + 1) + 8 * j);
                if (v27 == 1)
                {
                  v1 = [v18 interfaceName];
                  v113 = v1;
                }

                else
                {
                  v113 = 0;
                }

                [v112 satisfyPathResult:{v113, v117}];
                if (v27 == 1)
                {
                }
              }

              v109 = [v108 countByEnumeratingWithState:&v117 objects:v125 count:16];
            }

            while (v109);
          }

          v115 = *(a1 + 32);
          if (v115)
          {
            v115 = objc_getProperty(v115, v114, 288, 1);
          }

          v116 = v115;
          [v116 removeAllObjects];

          goto LABEL_105;
        }
      }

      v107 = objc_getProperty(v107, v72, 288, 1);
      goto LABEL_90;
    }

    v32 = *(a1 + 48);
    v33 = *(a1 + 32);
    if (v33)
    {
      v33 = objc_getProperty(v33, v23, 272, 1);
    }

    v34 = v33;
    v35 = [v32 isEqual:v34];

    if (v35)
    {
      v37 = *(a1 + 32);
      if (v37)
      {
        v37 = objc_getProperty(v37, v36, 272, 1);
      }

      v38 = v37;
      v39 = [v38 path];
      v40 = [v39 status];

      if (v40 == 1)
      {
        v42 = *(a1 + 32);
        if (v42)
        {
          v42 = objc_getProperty(v42, v41, 272, 1);
        }

        v43 = v42;
        v44 = [v43 path];
        v18 = [v44 interface];
      }

      else
      {
        v18 = 0;
      }

      v97 = [*(a1 + 32) primaryWiFiInterface];
      if (!v97 && v18)
      {
        goto LABEL_81;
      }

      v98 = [*(a1 + 32) primaryWiFiInterface];
      if (v98)
      {
        v99 = [*(a1 + 32) primaryWiFiInterface];
        v100 = [v99 interfaceName];
        v101 = [v18 interfaceName];
        v102 = [v100 isEqualToString:v101];

        if ((v102 & 1) == 0)
        {
LABEL_81:
          v103 = ne_log_obj();
          if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
          {
            v104 = [*(a1 + 32) primaryWiFiInterface];
            v105 = [v104 interfaceName];
            v106 = [v18 interfaceName];
            *buf = 138412546;
            v128 = v105;
            v129 = 2112;
            v130 = v106;
            _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "Detected that the primary wifi interface changed: %@ => %@", buf, 0x16u);
          }

          [*(a1 + 32) setPrimaryWiFiInterface:v18];
        }
      }

      else
      {
      }

LABEL_105:
    }
  }

  objc_sync_exit(v3);
}

void sub_1000538B0(void *a1, int a2)
{
  if (!a1)
  {
    return;
  }

  v3 = nwi_state_copy();
  if (v3)
  {
    interface_names = nwi_state_get_interface_names();
    if (interface_names)
    {
      v5 = malloc_type_calloc(interface_names, 8uLL, 0x50040EE9192B6uLL);
      if (v5)
      {
        v6 = v5;
        v7 = nwi_state_get_interface_names();
        if (v7)
        {
          v8 = 0;
          v9 = 8 * v7;
          while (1)
          {
            v10 = *&v6[v8];
            nwi_state_get_ifstate();
            if (!nwi_ifstate_get_vpn_server())
            {
              break;
            }

            v8 += 8;
            if (v9 == v8)
            {
              goto LABEL_9;
            }
          }

          v84 = [a1 primaryPhysicalInterface];
          v85 = [v84 interfaceName];
          v86 = [NSString stringWithUTF8String:v10];
          v13 = [v85 isEqualToString:v86];

          free(v6);
          goto LABEL_11;
        }

LABEL_9:
        free(v6);
      }
    }
  }

  v11 = [a1 primaryPhysicalInterface];
  v12 = [v11 interfaceName];
  v13 = [v12 length] == 0;

LABEL_11:
  v87 = sub_100054470(v3);
  if (v3)
  {
    nwi_state_release();
  }

  if ([objc_getProperty(a1 v14] & (a2 ^ 1) & 1) != 0 || ((v13 ^ 1))
  {
    goto LABEL_93;
  }

  v15 = v87;
  v91 = v15;
  if (!objc_getProperty(a1, v16, 72, 1))
  {
    goto LABEL_57;
  }

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  obj = objc_getProperty(a1, v17, 72, 1);
  v92 = [obj countByEnumeratingWithState:&v129 objects:v147 count:16];
  if (!v92)
  {
    goto LABEL_56;
  }

  v89 = *v130;
  do
  {
    for (i = 0; i != v92; i = i + 1)
    {
      if (*v130 != v89)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v129 + 1) + 8 * i);
      v21 = [objc_getProperty(a1 v18];
      v22 = [v21 unsignedLongLongValue];

      if (v15)
      {
        v23 = [v15 objectForKeyedSubscript:v20];
        v15 = [v23 unsignedLongLongValue];
      }

      if (nelog_is_debug_logging_enabled())
      {
        v24 = ne_log_obj();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v140 = v20;
          v141 = 2048;
          v142 = v22;
          v143 = 2048;
          v144 = v15;
          _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Interface %@: flags %llx -> %llx", buf, 0x20u);
        }
      }

      v105 = v15;
      v25 = [a1 primaryPhysicalInterface];
      v26 = [v25 interfaceName];
      v27 = [v26 isEqualToString:v20];

      v28 = "Secondary";
      if (v27 && (v28 = "Primary", ([objc_getProperty(a1 v18] & 1) == 0))
      {
        v30 = ne_log_obj();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          Property = objc_getProperty(a1, v31, 168, 1);
          *buf = 138412546;
          v140 = Property;
          v141 = 2112;
          v142 = v20;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Primary physical interface changed: %@ -> %@", buf, 0x16u);
        }

        v29 = v105;
        if (((v105 ^ v22) & 3) == 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v29 = v105;
        if (((v105 ^ v22) & 3) == 0)
        {
          goto LABEL_54;
        }
      }

      v34 = ne_log_obj();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v140 = v28;
        v141 = 2112;
        v142 = v20;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s Interface %@: flags changed", buf, 0x16u);
      }

LABEL_37:
      v94 = i;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v96 = objc_getProperty(a1, v33, 120, 1);
      v100 = [v96 countByEnumeratingWithState:&v125 objects:v146 count:16];
      if (v100)
      {
        v98 = *v126;
        do
        {
          v36 = 0;
          do
          {
            if (*v126 != v98)
            {
              objc_enumerationMutation(v96);
            }

            v102 = v36;
            v37 = *(*(&v125 + 1) + 8 * v36);
            v121 = 0u;
            v122 = 0u;
            v123 = 0u;
            v124 = 0u;
            v106 = [objc_getProperty(a1 v35];
            v38 = [v106 countByEnumeratingWithState:&v121 objects:v145 count:16];
            if (v38)
            {
              v39 = v38;
              v40 = *v122;
              do
              {
                for (j = 0; j != v39; j = j + 1)
                {
                  if (*v122 != v40)
                  {
                    objc_enumerationMutation(v106);
                  }

                  v42 = *(*(&v121 + 1) + 8 * j);
                  v43 = ne_log_obj();
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                  {
                    [objc_getProperty(a1 v44];
                    v46 = v45 = v22;
                    v47 = [v46 objectForKeyedSubscript:v42];
                    *buf = 138412546;
                    v140 = v20;
                    v141 = 2112;
                    v142 = v47;
                    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "Passing interface (%@) change event to %@", buf, 0x16u);

                    v22 = v45;
                    v29 = v105;
                  }

                  v49 = [objc_getProperty(a1 v48];
                  v50 = [v49 objectForKeyedSubscript:v42];
                  [v50 handleChangeEventForInterface:v20 newFlags:v29 previousFlags:v22];
                }

                v39 = [v106 countByEnumeratingWithState:&v121 objects:v145 count:16];
              }

              while (v39);
            }

            v36 = v102 + 1;
          }

          while ((v102 + 1) != v100);
          v100 = [v96 countByEnumeratingWithState:&v125 objects:v146 count:16];
        }

        while (v100);
      }

      i = v94;
LABEL_54:
      v15 = v91;
    }

    v92 = [obj countByEnumeratingWithState:&v129 objects:v147 count:16];
  }

  while (v92);
LABEL_56:

LABEL_57:
  if (v15)
  {
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v51 = v15;
    v52 = [v51 countByEnumeratingWithState:&v117 objects:buf count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v118;
      v93 = v51;
      v90 = *v118;
      do
      {
        v55 = 0;
        v95 = v53;
        do
        {
          if (*v118 != v54)
          {
            objc_enumerationMutation(v51);
          }

          v56 = *(*(&v117 + 1) + 8 * v55);
          v57 = [v51 objectForKeyedSubscript:v56];
          v107 = [v57 unsignedLongLongValue];

          if (!objc_getProperty(a1, v58, 72, 1) || ([objc_getProperty(a1 v59], v60 = objc_claimAutoreleasedReturnValue(), v60, !v60))
          {
            if (nelog_is_debug_logging_enabled())
            {
              v61 = ne_log_obj();
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
              {
                *v135 = 138412546;
                v136 = v56;
                v137 = 2048;
                v138 = v107;
                _os_log_debug_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEBUG, "Interface %@ showed up with flags %llx", v135, 0x16u);
              }
            }

            if ((v107 & 3) != 0)
            {
              v97 = v55;
              v62 = ne_log_obj();
              if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
              {
                *v135 = 138412290;
                v136 = v56;
                _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "Interface %@ showed up with an address", v135, 0xCu);
              }

              v115 = 0u;
              v116 = 0u;
              v113 = 0u;
              v114 = 0u;
              v99 = objc_getProperty(a1, v63, 120, 1);
              v103 = [v99 countByEnumeratingWithState:&v113 objects:v134 count:16];
              if (v103)
              {
                v101 = *v114;
                do
                {
                  v65 = 0;
                  do
                  {
                    if (*v114 != v101)
                    {
                      objc_enumerationMutation(v99);
                    }

                    v104 = v65;
                    v66 = *(*(&v113 + 1) + 8 * v65);
                    v109 = 0u;
                    v110 = 0u;
                    v111 = 0u;
                    v112 = 0u;
                    v67 = [objc_getProperty(a1 v64];
                    v68 = [v67 countByEnumeratingWithState:&v109 objects:v133 count:16];
                    if (v68)
                    {
                      v69 = v68;
                      v70 = *v110;
                      do
                      {
                        for (k = 0; k != v69; k = k + 1)
                        {
                          if (*v110 != v70)
                          {
                            objc_enumerationMutation(v67);
                          }

                          v72 = *(*(&v109 + 1) + 8 * k);
                          v73 = ne_log_obj();
                          if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
                          {
                            v75 = [objc_getProperty(a1 v74];
                            v76 = [v75 objectForKeyedSubscript:v72];
                            *v135 = 138412546;
                            v136 = v56;
                            v137 = 2112;
                            v138 = v76;
                            _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "Passing interface (%@) change event to %@", v135, 0x16u);
                          }

                          v78 = [objc_getProperty(a1 v77];
                          v79 = [v78 objectForKeyedSubscript:v72];
                          [v79 handleChangeEventForInterface:v56 newFlags:v107 previousFlags:0];
                        }

                        v69 = [v67 countByEnumeratingWithState:&v109 objects:v133 count:16];
                      }

                      while (v69);
                    }

                    v65 = v104 + 1;
                  }

                  while ((v104 + 1) != v103);
                  v103 = [v99 countByEnumeratingWithState:&v113 objects:v134 count:16];
                }

                while (v103);
              }

              v51 = v93;
              v53 = v95;
              v54 = v90;
              v55 = v97;
            }
          }

          v55 = v55 + 1;
        }

        while (v55 != v53);
        v53 = [v51 countByEnumeratingWithState:&v117 objects:buf count:16];
      }

      while (v53);
    }

    v15 = v91;
  }

  objc_setProperty_atomic(a1, v80, v15, 72);
  v81 = [a1 primaryPhysicalInterface];
  v82 = [v81 interfaceName];
  objc_setProperty_atomic(a1, v83, v82, 168);

LABEL_93:
}

id sub_100054470(uint64_t a1)
{
  if (a1)
  {
    interface_names = nwi_state_get_interface_names();
    if (interface_names)
    {
      v2 = malloc_type_calloc(interface_names, 8uLL, 0x50040EE9192B6uLL);
      if (v2)
      {
        v3 = v2;
        v4 = nwi_state_get_interface_names();
        if (v4)
        {
          v5 = 0;
          v6 = 0;
          v7 = 8 * v4;
          do
          {
            v8 = *&v3[v5];
            if (nwi_state_get_ifstate() && !nwi_ifstate_get_vpn_server())
            {
              if (!v6)
              {
                v6 = +[NSMutableDictionary dictionary];
              }

              v9 = [NSString stringWithUTF8String:nwi_ifstate_get_ifname()];
              v10 = [v6 objectForKeyedSubscript:v9];

              if (!v10)
              {
                v11 = [NSNumber numberWithUnsignedLongLong:nwi_ifstate_get_flags()];
                v12 = [NSString stringWithUTF8String:nwi_ifstate_get_ifname()];
                [v6 setObject:v11 forKeyedSubscript:v12];
              }
            }

            v5 += 8;
          }

          while (v7 != v5);
          free(v3);
          if (v6)
          {
            v13 = [[NSDictionary alloc] initWithDictionary:v6];

            return v13;
          }
        }

        else
        {
          free(v3);
        }
      }
    }
  }

  return 0;
}

void sub_1000546E8(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 288, 1);
  }

  if (([Property containsObject:*(a1 + 40)] & 1) == 0)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = objc_getProperty(v5, v4, 288, 1);
    }

    [v5 addObject:*(a1 + 40)];
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = objc_getProperty(v6, v4, 264, 1);
    v8 = *(a1 + 32);
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000547DC;
  v9[3] = &unk_1000EA3B8;
  v9[4] = v8;
  v10 = *(a1 + 40);
  [v7 satisfyPathAgentsWithCompletionHandler:v9];
}

void sub_1000547DC(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v6 = a3;
  if (v8)
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 288, 1);
    }

    [Property removeObject:*(a1 + 40)];
    [*(a1 + 40) satisfyPathResult:0];
  }
}

void sub_100054920(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 280, 1);
  }

  if (([Property containsObject:*(a1 + 40)] & 1) == 0)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = objc_getProperty(v5, v4, 280, 1);
    }

    [v5 addObject:*(a1 + 40)];
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = objc_getProperty(v6, v4, 256, 1);
    v8 = *(a1 + 32);
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100054A14;
  v9[3] = &unk_1000EA3B8;
  v9[4] = v8;
  v10 = *(a1 + 40);
  [v7 satisfyPathAgentsWithCompletionHandler:v9];
}

void sub_100054A14(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v6 = a3;
  if (v8)
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 280, 1);
    }

    [Property removeObject:*(a1 + 40)];
    [*(a1 + 40) satisfyPathResult:0];
  }
}

void sub_10005516C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ne_log_large_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Got a configuration change callback with configuration IDs %@", buf, 0xCu);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        v9 = +[NEConfigurationManager sharedManagerForAllUsers];
        WeakRetained = objc_loadWeakRetained((a1 + 32));
        v12 = WeakRetained;
        if (WeakRetained)
        {
          Property = objc_getProperty(WeakRetained, v11, 88, 1);
        }

        else
        {
          Property = 0;
        }

        v14 = Property;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1000573A8;
        v17[3] = &unk_1000EA288;
        objc_copyWeak(&v18, (a1 + 32));
        v17[4] = v8;
        [v9 loadConfigurationWithID:v8 withCompletionQueue:v14 handler:v17];

        objc_destroyWeak(&v18);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v15 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      v5 = v15;
    }

    while (v15);
  }
}

void sub_1000553B0(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Handling SIGTERM", v16, 2u);
  }

  v3 = *(a1 + 32);
  v4 = &stru_1000EA2D0;
  if (v3)
  {
    v5 = v3;
    objc_sync_enter(v5);
    v7 = objc_getProperty(v5, v6, 96, 1);
    xpc_connection_suspend(v7);

    v9 = objc_getProperty(v5, v8, 104, 1);
    xpc_connection_suspend(v9);

    v11 = objc_getProperty(v5, v10, 112, 1);
    xpc_connection_suspend(v11);

    sub_100052A24(v5);
    sub_100052BA8(v5);
    sub_100052C90(v5);
    v12 = v5;
    objc_sync_enter(v12);
    notify_cancel(v12[7]);
    notify_cancel(v12[8]);
    notify_cancel(v12[9]);
    objc_sync_exit(v12);

    if (v12[2])
    {
      CNPluginMonitorStop();
    }

    if (!*(v12 + 38))
    {
      exit(0);
    }

    Property = objc_getProperty(v12, v13, 88, 1);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100057194;
    v16[3] = &unk_1000EB1C0;
    v16[4] = v12;
    dispatch_async(Property, v16);
    objc_setProperty_atomic_copy(v12, v15, &stru_1000EA2D0, 312);
    objc_sync_exit(v12);
  }
}

void sub_100055598(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000555BC(uint64_t a1, void *a2)
{
  type = a2;
  v4 = type;
  if (type)
  {
    v6 = type;
    type = xpc_get_type(type);
    v4 = v6;
    if (type == &_xpc_type_connection)
    {
      sub_100055BB8(*(a1 + 32), v6);
      v4 = v6;
    }
  }

  return _objc_release_x1(type, v4);
}

void sub_100055630(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    connection = v3;
    v4 = xpc_get_type(v3) == &_xpc_type_connection;
    v3 = connection;
    if (v4)
    {
      xpc_connection_set_context(connection, "com.apple.nesessionmanager.flow-divert-token");
      sub_100055BB8(*(a1 + 32), connection);
      v3 = connection;
    }
  }
}

void sub_1000556AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v10 = v3;
    v4 = xpc_get_type(v3) == &_xpc_type_connection;
    v3 = v10;
    if (v4)
    {
      v5 = *(a1 + 32);
      v7 = v10;
      if (v5)
      {
        Property = objc_getProperty(v5, v6, 88, 1);
        xpc_connection_set_target_queue(v7, Property);
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_1000557AC;
        handler[3] = &unk_1000EAF50;
        v9 = v7;
        v12 = v9;
        v13 = v5;
        xpc_connection_set_event_handler(v9, handler);
        xpc_connection_resume(v9);
      }

      v3 = v10;
    }
  }
}

void sub_1000557AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3 || xpc_get_type(v3) != &_xpc_type_dictionary)
  {
    v5 = *(a1 + 32);
LABEL_4:
    xpc_connection_cancel(v5);
    goto LABEL_5;
  }

  int64 = xpc_dictionary_get_int64(v4, "SessionClientType");
  v5 = *(a1 + 32);
  if (int64 != 2)
  {
    goto LABEL_4;
  }

  pid = xpc_connection_get_pid(v5);
  memset(buffer, 0, sizeof(buffer));
  proc_name(pid, buffer, 0x100u);
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = buffer;
    v11 = 1024;
    v12 = pid;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Got a new agent client connection from %s(%d)", &v9, 0x12u);
  }

  sub_100055908(*(a1 + 40), *(a1 + 32), v4);
LABEL_5:
}

void sub_100055908(void *a1, void *a2, void *a3)
{
  connection = a2;
  v6 = a3;
  if (a1)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v7 = objc_getProperty(a1, v5, 120, 1);
    v24 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v24)
    {
      v9 = *v34;
      v26 = v7;
      v23 = *v34;
      do
      {
        v10 = 0;
        do
        {
          if (*v34 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v25 = v10;
          v11 = *(*(&v33 + 1) + 8 * v10);
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v12 = [objc_getProperty(a1 v8];
          v13 = [v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v30;
            while (2)
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v30 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v29 + 1) + 8 * i);
                if ([v17 intValue] == 4 || objc_msgSend(v17, "intValue") == 10)
                {
                  v19 = [objc_getProperty(a1 v18];
                  v20 = [v19 objectForKeyedSubscript:v17];
                  v21 = [v20 handleAgentClientConnection:connection WithMessage:v6];

                  if (v21)
                  {

                    goto LABEL_23;
                  }
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }

          v10 = v25 + 1;
          v7 = v26;
          v9 = v23;
        }

        while ((v25 + 1) != v24);
        v24 = [v26 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v24);
    }

    v22 = ne_log_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "No filter session claimed the connection request", buf, 2u);
    }

    xpc_connection_cancel(connection);
  }

LABEL_23:
}

void sub_100055BB8(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    kdebug_trace();
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_100055D2C;
    v16 = sub_100055D3C;
    v4 = v3;
    v17 = v4;
    v6 = objc_getProperty(a1, v5, 88, 1);
    xpc_connection_set_target_queue(v4, v6);

    v7 = v13[5];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100055D44;
    handler[3] = &unk_1000EA318;
    v11 = &v12;
    v9 = v4;
    v10 = a1;
    xpc_connection_set_event_handler(v7, handler);
    xpc_connection_resume(v13[5]);

    _Block_object_dispose(&v12, 8);
  }
}

void sub_100055D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100055D2C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100055D44(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  if (!v3 || xpc_get_type(v3) != &_xpc_type_dictionary)
  {
LABEL_27:
    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = 0;

    goto LABEL_28;
  }

  int64 = xpc_dictionary_get_int64(v3, "SessionClientType");
  context = xpc_connection_get_context(*(*(*(a1 + 48) + 8) + 40));
  if (context)
  {
    if (!strcmp(context, "com.apple.nesessionmanager.flow-divert-token") && int64 != 1)
    {
      pid = xpc_connection_get_pid(*(a1 + 32));
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      buffer = 0u;
      v97 = 0u;
      proc_name(pid, &buffer, 0x100u);
      int64 = 0;
LABEL_24:
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = int64;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Cancelling connection with invalid client type: %lld", buf, 0xCu);
      }

      xpc_connection_cancel(*(*(*(a1 + 48) + 8) + 40));
      goto LABEL_27;
    }
  }

  v7 = xpc_connection_get_pid(*(a1 + 32));
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  buffer = 0u;
  v97 = 0u;
  proc_name(v7, &buffer, 0x100u);
  if (int64 > 2)
  {
    if (int64 == 3)
    {
      v33 = ne_log_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = &buffer;
        *&buf[12] = 1024;
        *&buf[14] = v7;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Got a new client connection for mapping an interface to the provider UUID from %s(%d)", buf, 0x12u);
      }

      v34 = *(a1 + 40);
      v11 = *(*(*(a1 + 48) + 8) + 40);
      v35 = v3;
      v13 = v35;
      if (v34)
      {
        string = xpc_dictionary_get_string(v35, "InterfaceMapInfo");
        *uuid = 0;
        v119 = 0;
        if (string)
        {
          v79 = v13;
          v80 = v11;
          v81 = v3;
          v37 = [[NSString alloc] initWithUTF8String:string];
          v92 = 0u;
          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          obj = objc_getProperty(v34, v38, 120, 1);
          v84 = [obj countByEnumeratingWithState:&v92 objects:buf count:16];
          if (v84)
          {
            v83 = *v93;
            p_superclass = &OBJC_METACLASS___NEBloomFilterChecker.superclass;
            v86 = v34;
            do
            {
              v41 = 0;
              do
              {
                if (*v93 != v83)
                {
                  objc_enumerationMutation(obj);
                }

                v85 = v41;
                v42 = *(*(&v92 + 1) + 8 * v41);
                v88 = 0u;
                v89 = 0u;
                v90 = 0u;
                v91 = 0u;
                v87 = [objc_getProperty(v34 v39];
                v43 = [v87 countByEnumeratingWithState:&v88 objects:v112 count:16];
                if (v43)
                {
                  v45 = v43;
                  v46 = *v89;
                  do
                  {
                    v47 = 0;
                    do
                    {
                      if (*v89 != v46)
                      {
                        objc_enumerationMutation(v87);
                      }

                      v48 = *(*(&v88 + 1) + 8 * v47);
                      v49 = [objc_getProperty(v34 v44];
                      v50 = [v49 objectForKeyedSubscript:v48];

                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) != 0 && [v50 virtualInterface])
                      {
                        v51 = [v50 copyTunnelInterfaceName];
                        if ([v37 isEqualToString:v51])
                        {
                          v52 = p_superclass;
                          v53 = v37;
                          v54 = [v50 primaryTunnelPlugin];
                          v56 = sub_100019748(v54, v55);

                          if ([v56 count])
                          {
                            v57 = [v56 firstObject];
                            [v57 getUUIDBytes:uuid];
                          }

                          v37 = v53;
                          p_superclass = v52;
                          v34 = v86;
                        }
                      }

                      v47 = v47 + 1;
                    }

                    while (v45 != v47);
                    v45 = [v87 countByEnumeratingWithState:&v88 objects:v112 count:16];
                  }

                  while (v45);
                }

                v41 = v85 + 1;
              }

              while ((v85 + 1) != v84);
              v84 = [obj countByEnumeratingWithState:&v92 objects:buf count:16];
            }

            while (v84);
          }

          v11 = v80;
          v3 = v81;
          v13 = v79;
        }

        reply = xpc_dictionary_create_reply(v13);
        xpc_dictionary_set_uuid(reply, "MachOUUID", uuid);
        xpc_connection_send_message(v11, reply);
      }

      goto LABEL_87;
    }

    if (int64 != 4)
    {
      goto LABEL_24;
    }

    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = &buffer;
      *&buf[12] = 1024;
      *&buf[14] = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Got a new client connection for DeviceCommunicationException %s(%d)", buf, 0x12u);
    }

    v10 = *(a1 + 40);
    v11 = *(*(*(a1 + 48) + 8) + 40);
    if (!v10)
    {
LABEL_88:

      goto LABEL_28;
    }

    v12 = v3;
    v13 = xpc_dictionary_create_reply(v12);
    v14 = xpc_dictionary_get_BOOL(v12, "DeviceCommunicationExceptionEnable");

    if (!v11)
    {
      goto LABEL_84;
    }

    v15 = xpc_connection_copy_entitlement_value();
    v16 = v15;
    v17 = v15 && xpc_get_type(v15) == &_xpc_type_BOOL && xpc_BOOL_get_value(v16);
    v60 = ne_log_obj();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
    {
      v77 = "not ";
      if (v17)
      {
        v77 = "";
      }

      v78 = "disable";
      *&buf[4] = "[NESMServer handleDeviceCommunicationException:initialMessage:]";
      *buf = 136315650;
      *&buf[14] = v77;
      *&buf[12] = 2080;
      if (v14)
      {
        v78 = "enable";
      }

      *&buf[22] = 2080;
      v114 = v78;
      _os_log_debug_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEBUG, "%s: process %sallowed to %s DeviceCommunication exception", buf, 0x20u);
    }

    if (!v17)
    {
      goto LABEL_84;
    }

    if (!objc_getProperty(v10, v61, 352, 1))
    {
      v63 = [[NEPolicySession alloc] initWithSessionName:@"NESMServer Control"];
      objc_setProperty_atomic(v10, v64, v63, 352);

      if (objc_getProperty(v10, v65, 352, 1))
      {
        [objc_getProperty(v10 v66];
        [objc_getProperty(v10 v67];
      }

      else
      {
        v68 = ne_log_obj();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "Failed to create NESMServer control policy session", buf, 2u);
        }
      }
    }

    if (v14)
    {
      *buf = 1;
      if (!objc_getProperty(v10, v62, 352, 1) || (Property = objc_getProperty(v10, v69, 352, 1), !sub_100061E40(Property, buf, 0, 100, 0)))
      {
LABEL_84:
        v73 = 0;
        goto LABEL_85;
      }
    }

    else if (!objc_getProperty(v10, v62, 352, 1) || ![objc_getProperty(v10 v72])
    {
      goto LABEL_84;
    }

    v73 = [objc_getProperty(v10 v71];
LABEL_85:
    v74 = ne_log_obj();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
    {
      v75 = "disable";
      if (v14)
      {
        v75 = "enable";
      }

      v76 = "failed";
      *&buf[4] = "[NESMServer handleDeviceCommunicationException:initialMessage:]";
      *buf = 136315650;
      *&buf[14] = v75;
      *&buf[12] = 2080;
      if (v73)
      {
        v76 = "succeeded";
      }

      *&buf[22] = 2080;
      v114 = v76;
      _os_log_debug_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEBUG, "%s: DeviceCommunication exception %s %s", buf, 0x20u);
    }

    xpc_dictionary_set_BOOL(v13, "DeviceCommunicationExceptionResult", v73);
    xpc_connection_send_message(v11, v13);
LABEL_87:

    goto LABEL_88;
  }

  if (int64 == 1)
  {
    v22 = ne_log_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = &buffer;
      *&buf[12] = 1024;
      *&buf[14] = v7;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Got a new session client connection from %s(%d)", buf, 0x12u);
    }

    v23 = *(a1 + 40);
    v11 = *(*(*(a1 + 48) + 8) + 40);
    if (v23)
    {
      v24 = v3;
      v25 = xpc_dictionary_get_uuid(v24, "SessionIdentifier");
      v26 = xpc_dictionary_get_int64(v24, "SessionConfigType");

      if (v25 && (v27 = [[NSUUID alloc] initWithUUIDBytes:v25]) != 0)
      {
        v29 = v27;
        v30 = [objc_getProperty(v23 v28];
        v31 = [NSNumber numberWithInt:v26];
        v32 = [v30 objectForKeyedSubscript:v31];

        xpc_connection_suspend(v11);
        if (v32)
        {
          [v32 addClientConnection:v11];
        }

        else
        {
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_1000568D0;
          v114 = &unk_1000EA390;
          v115 = v11;
          v116 = v29;
          v117 = v26;
          sub_1000569E0(v23, v116, v26, buf);
        }
      }

      else
      {
        v59 = ne_log_obj();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Session client request is missing a configuration ID, canceling new connection ", buf, 2u);
        }

        xpc_connection_cancel(v11);
      }
    }

    goto LABEL_88;
  }

  if (int64 != 2)
  {
    goto LABEL_24;
  }

  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = &buffer;
    *&buf[12] = 1024;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Got a new agent client connection from %s(%d)", buf, 0x12u);
  }

  sub_100055908(*(a1 + 40), *(*(*(a1 + 48) + 8) + 40), v3);
LABEL_28:
}

void sub_1000568D0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);

    [a2 addClientConnection:v3];
  }

  else
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v7 = 138412546;
      v8 = v5;
      v9 = 1024;
      v10 = v6;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to add a pending session request or failed to load session for %@ (%d), canceling new connection", &v7, 0x12u);
    }

    xpc_connection_resume(*(a1 + 32));
    xpc_connection_cancel(*(a1 + 32));
  }
}

void sub_1000569E0(_BYTE *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v9 = [NSNumber numberWithInt:a3];
    v11 = [objc_getProperty(a1 v10];
    v12 = [v11 objectForKeyedSubscript:v9];

    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 67109378;
      *v28 = a3;
      *&v28[4] = 2112;
      *&v28[6] = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Adding a pending session for type %d and id %@", &v27, 0x12u);
    }

    if (!v12)
    {
      v14 = objc_alloc_init(NSMutableArray);
      if (!v14)
      {
        v8[2](v8, 0);
LABEL_19:

        goto LABEL_20;
      }

      v12 = v14;
      v16 = [objc_getProperty(a1 v15];

      if (!v16)
      {
        v18 = objc_alloc_init(NSMutableDictionary);
        [objc_getProperty(a1 v19];
      }

      v20 = [objc_getProperty(a1 v17];
      [v20 setObject:v12 forKeyedSubscript:v9];
    }

    v21 = objc_retainBlock(v8);
    [v12 addObject:v21];

    if ([v12 count] == 1 && (a1[9] & 1) != 0 && (a1[10] & 1) != 0)
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 67109378;
        *v28 = a3;
        *&v28[4] = 2112;
        *&v28[6] = v7;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Loading session for new client with type %d and ID %@", &v27, 0x12u);
      }

      sub_100056D00(a1, a3, v7);
    }

    else
    {
      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v12 count];
        v25 = a1[9] & 1;
        v26 = a1[10] & 1;
        v27 = 134218496;
        *v28 = v24;
        *&v28[8] = 1024;
        *&v28[10] = v25;
        v29 = 1024;
        v30 = v26;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Queuing pending session request because there are already pending requests (%lu) or because the file handles have not yet been received (%d), or because the provider manager has not fully started (%d)", &v27, 0x18u);
      }
    }

    goto LABEL_19;
  }

LABEL_20:
}

void sub_100056D00(void *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[NEConfigurationManager sharedManagerForAllUsers];
  Property = objc_getProperty(a1, v7, 88, 1);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100056DE8;
  v10[3] = &unk_1000EA368;
  v10[4] = a1;
  v9 = v5;
  v11 = v9;
  v12 = a2;
  [v6 loadConfigurationAndUserWithID:v9 withCompletionQueue:Property handler:v10];
}

void sub_100056DE8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v10 = a4;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v9, 128, 1);
  }

  v12 = [Property objectForKeyedSubscript:*(a1 + 40)];
  v13 = [NSNumber numberWithInt:*(a1 + 48)];
  v14 = [v12 objectForKeyedSubscript:v13];

  if (v14)
  {
    if (v7)
    {
      [v7 applyOverrides];
      v15 = [NESMSession sessionWithConfiguration:v7 andType:*(a1 + 48) andServer:*(a1 + 32)];
LABEL_11:
      kdebug_trace();
      v23 = *(a1 + 32);
      if (v23)
      {
        v23 = objc_getProperty(v23, v22, 128, 1);
      }

      v24 = [v23 objectForKeyedSubscript:*(a1 + 40)];
      v25 = [NSNumber numberWithInt:*(a1 + 48)];
      [v24 removeObjectForKey:v25];

      if (v15)
      {
        v27 = *(a1 + 32);
        if (v27)
        {
          v27 = objc_getProperty(v27, v26, 120, 1);
        }

        v28 = [v27 objectForKeyedSubscript:*(a1 + 40)];

        if (!v28)
        {
          v31 = [[NSMutableDictionary alloc] initWithCapacity:0];
          v32 = *(a1 + 32);
          if (v32)
          {
            v32 = objc_getProperty(v32, v30, 120, 1);
          }

          [v32 setObject:v31 forKeyedSubscript:*(a1 + 40)];
        }

        v33 = *(a1 + 32);
        if (v33)
        {
          v33 = objc_getProperty(v33, v29, 120, 1);
        }

        v34 = [v33 objectForKeyedSubscript:*(a1 + 40)];
        v35 = [NSNumber numberWithInt:*(a1 + 48)];
        [v34 setObject:v15 forKeyedSubscript:v35];

        [v15 setConfigurationUserUUIDs:v8];
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v36 = v14;
      v37 = [v36 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v43;
        do
        {
          for (i = 0; i != v38; i = i + 1)
          {
            if (*v43 != v39)
            {
              objc_enumerationMutation(v36);
            }

            (*(*(*(&v42 + 1) + 8 * i) + 16))(*(*(&v42 + 1) + 8 * i));
          }

          v38 = [v36 countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v38);
      }

      goto LABEL_31;
    }

    v16 = ne_log_obj();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      if (v17)
      {
        v18 = *(a1 + 40);
        *buf = 138412546;
        v48 = v18;
        v49 = 2048;
        v50 = [v10 code];
        v19 = "Failed to load configuration with ID %@: %ld";
        v20 = v16;
        v21 = 22;
LABEL_33:
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
      }
    }

    else if (v17)
    {
      v41 = *(a1 + 40);
      *buf = 138412290;
      v48 = v41;
      v19 = "Failed to load configuration with ID %@";
      v20 = v16;
      v21 = 12;
      goto LABEL_33;
    }

    v15 = 0;
    goto LABEL_11;
  }

LABEL_31:
}

void sub_100057194(uint64_t a1, const char *a2)
{
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 120, 1);
  }

  obj = Property;
  v4 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v4)
  {
    v6 = v4;
    v21 = *v27;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v9 = *(a1 + 32);
        if (v9)
        {
          v9 = objc_getProperty(v9, v5, 120, 1);
        }

        v10 = [v9 objectForKeyedSubscript:v8];
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v13 = v11;
          v14 = *v23;
          do
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v23 != v14)
              {
                objc_enumerationMutation(v10);
              }

              v16 = *(*(&v22 + 1) + 8 * j);
              v17 = *(a1 + 32);
              if (v17)
              {
                v17 = objc_getProperty(v17, v12, 120, 1);
              }

              v18 = [v17 objectForKeyedSubscript:v8];
              v19 = [v18 objectForKeyedSubscript:v16];

              [v19 stopIfNecessaryWithReason:1];
            }

            v13 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v13);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }
}

void sub_1000573A8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained = objc_getProperty(WeakRetained, v5, 120, 1);
  }

  v7 = [WeakRetained objectForKeyedSubscript:*(a1 + 32)];

  if (v7)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [v8 objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * v12), v14}];
          [v3 applyOverrides];
          [v13 handleUpdateConfiguration:v3 withCompletionHandler:0];

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

id sub_10005750C()
{
  objc_opt_self();
  if (qword_1000FD540 != -1)
  {
    dispatch_once(&qword_1000FD540, &stru_1000EA2F0);
  }

  v0 = qword_1000FD538;

  return v0;
}

void sub_100057564(id a1)
{
  v1 = [NESMServer alloc];
  if (!v1)
  {
    goto LABEL_6;
  }

  v46.receiver = v1;
  v46.super_class = NESMServer;
  v2 = objc_msgSendSuper2(&v46, "init");
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("NESMServer queue", v3);
  v5 = *(v2 + 11);
  *(v2 + 11) = v4;

  mach_service = xpc_connection_create_mach_service("com.apple.nesessionmanager", 0, 1uLL);
  v7 = *(v2 + 12);
  *(v2 + 12) = mach_service;

  v8 = xpc_connection_create_mach_service("com.apple.nesessionmanager.flow-divert-token", 0, 1uLL);
  v9 = *(v2 + 13);
  *(v2 + 13) = v8;

  v10 = xpc_connection_create_mach_service("com.apple.nesessionmanager.content-filter", 0, 1uLL);
  v11 = *(v2 + 14);
  *(v2 + 14) = v10;

  v12 = [[NSMutableDictionary alloc] initWithCapacity:0];
  v13 = *(v2 + 15);
  *(v2 + 15) = v12;

  v14 = [[NSMutableDictionary alloc] initWithCapacity:0];
  v15 = *(v2 + 16);
  *(v2 + 16) = v14;

  v16 = +[NSMutableArray array];
  v17 = *(v2 + 35);
  *(v2 + 35) = v16;

  *(v2 + 5) = -1;
  *(v2 + 28) = -1;
  *(v2 + 36) = -1;
  v18 = [[NSMutableDictionary alloc] initWithCapacity:0];
  v19 = *(v2 + 41);
  *(v2 + 41) = v18;

  objc_initWeak(&location, v2);
  v20 = +[NEConfigurationManager sharedManagerForAllUsers];
  v21 = *(v2 + 11);
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10005516C;
  v43[3] = &unk_1000EA2B0;
  objc_copyWeak(&v44, &location);
  [v20 setChangedQueue:v21 andHandler:v43];

  v22 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, *(v2 + 11));
  v23 = *(v2 + 18);
  *(v2 + 18) = v22;

  v24 = *(v2 + 18);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000553B0;
  handler[3] = &unk_1000EB1C0;
  v25 = v2;
  v42 = v25;
  dispatch_source_set_event_handler(v24, handler);
  dispatch_resume(*(v2 + 18));
  v26 = *(v2 + 12);
  if (!v26 || xpc_get_type(v26) != &_xpc_type_connection || (v28 = *(v2 + 14)) == 0 || xpc_get_type(v28) != &_xpc_type_connection || (v29 = *(v2 + 13)) == 0 || xpc_get_type(v29) != &_xpc_type_connection)
  {

    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);

LABEL_6:
    v2 = 0;
    goto LABEL_7;
  }

  xpc_connection_set_target_queue(*(v2 + 12), *(v2 + 11));
  v30 = *(v2 + 12);
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000555BC;
  v39[3] = &unk_1000EAF28;
  v31 = v25;
  v40 = v31;
  xpc_connection_set_event_handler(v30, v39);
  xpc_connection_set_target_queue(*(v2 + 13), *(v2 + 11));
  v32 = *(v2 + 13);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100055630;
  v37[3] = &unk_1000EAF28;
  v33 = v31;
  v38 = v33;
  xpc_connection_set_event_handler(v32, v37);
  xpc_connection_set_target_queue(*(v2 + 14), *(v2 + 11));
  v34 = *(v2 + 14);
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000556AC;
  v35[3] = &unk_1000EAF28;
  v2 = v33;
  v36 = v2;
  xpc_connection_set_event_handler(v34, v35);

  objc_destroyWeak(&v44);
  objc_destroyWeak(&location);
LABEL_7:
  v27 = qword_1000FD538;
  qword_1000FD538 = v2;
}

void sub_1000579C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1000579F0(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 88, 1);
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005944C;
  block[3] = &unk_1000EB1C0;
  block[4] = v4;
  dispatch_async(Property, block);
}

void sub_100057A88(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    goto LABEL_15;
  }

  out_token = -1;
  if (notify_register_check("com.apple.nesessionmanager.info", &out_token))
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "com.apple.nesessionmanager.info";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to register for the %s notification", buf, 0xCu);
    }

    v2 = *(a1 + 40);
  }

  else
  {
    v2 = out_token;
    *(a1 + 40) = out_token;
  }

  if (v2 != -1)
  {
LABEL_15:
    if (notify_set_state(v2, *(a1 + 296)))
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v7 = "com.apple.nesessionmanager.info";
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to set the state for the %s notification", buf, 0xCu);
      }
    }

    else
    {
      notify_post("com.apple.nesessionmanager.info");
    }
  }
}

void sub_100057BF4(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  if (!strcmp(string, "com.apple.networkextension.apps-changed"))
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Handling Installed Apps Changed notification", buf, 2u);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 120, 1);
    }

    obj = Property;
    v7 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v7)
    {
      v9 = v7;
      v24 = *v30;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v29 + 1) + 8 * i);
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v12 = *(a1 + 32);
          if (v12)
          {
            v12 = objc_getProperty(v12, v8, 120, 1);
          }

          v13 = [v12 objectForKeyedSubscript:v11];
          v14 = [v13 countByEnumeratingWithState:&v25 objects:v34 count:16];
          if (v14)
          {
            v16 = v14;
            v17 = *v26;
            do
            {
              for (j = 0; j != v16; j = j + 1)
              {
                if (*v26 != v17)
                {
                  objc_enumerationMutation(v13);
                }

                v19 = *(*(&v25 + 1) + 8 * j);
                v20 = *(a1 + 32);
                if (v20)
                {
                  v20 = objc_getProperty(v20, v15, 120, 1);
                }

                v21 = [v20 objectForKeyedSubscript:v11];
                v22 = [v21 objectForKeyedSubscript:v19];

                [v22 handleInstalledAppsChanged];
              }

              v16 = [v13 countByEnumeratingWithState:&v25 objects:v34 count:16];
            }

            while (v16);
          }
        }

        v9 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v9);
    }
  }
}

void sub_100057E5C(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v4 = CNPluginMonitorEventCopyDisplayIDs();
    Property = *(a1 + 32);
    if (v4)
    {
      if (Property)
      {
        Property = objc_getProperty(Property, v3, 80, 1);
      }

      if ([Property isEqualToArray:v4])
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (!Property || (v6 = objc_getProperty(Property, v3, 80, 1)) == 0)
      {
LABEL_34:

        return;
      }
    }

    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v41 = "[NESMServer registerForCaptiveNetworkPluginChanges]_block_invoke";
      v42 = 2112;
      v43 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s: CNPluginMonitor - got new apps %@", buf, 0x16u);
    }

    v9 = *(a1 + 32);
    v27 = v4;
    if (v9)
    {
      objc_setProperty_atomic(v9, v8, v4, 80);
      v9 = *(a1 + 32);
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      if (v9)
      {
        v9 = objc_getProperty(v9, v10, 120, 1);
      }
    }

    else
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
    }

    obj = v9;
    v11 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v11)
    {
      v13 = v11;
      v29 = *v35;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v35 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v16 = *(a1 + 32);
          if (v16)
          {
            v16 = objc_getProperty(v16, v12, 120, 1);
          }

          v17 = [v16 objectForKeyedSubscript:v15];
          v18 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v18)
          {
            v20 = v18;
            v21 = *v31;
            do
            {
              for (j = 0; j != v20; j = j + 1)
              {
                if (*v31 != v21)
                {
                  objc_enumerationMutation(v17);
                }

                v23 = *(*(&v30 + 1) + 8 * j);
                v24 = *(a1 + 32);
                if (v24)
                {
                  v24 = objc_getProperty(v24, v19, 120, 1);
                }

                v25 = [v24 objectForKeyedSubscript:v15];
                v26 = [v25 objectForKeyedSubscript:v23];
                [v26 handleCaptiveNetworkPluginsChanged];
              }

              v20 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
            }

            while (v20);
          }
        }

        v13 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v13);
    }

    v4 = v27;
    goto LABEL_34;
  }
}

void sub_100058148(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v3;
  if (v2)
  {
    string = xpc_dictionary_get_string(v3, _xpc_event_key_name);
    v6 = string;
    if (string && !strcmp(string, "SessionManager"))
    {
      int64 = xpc_dictionary_get_int64(v4, "network-origin-notification");
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = inputNotification2String();
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received a %s event", &buf, 0xCu);
      }

      if (int64 == 1)
      {
        if ((ne_session_vod_evaluate_connection_present() & 1) == 0)
        {
          v11 = +[NENetworkPropertiesCache sharedCache];
          [v11 clear];
        }
      }

      else if (int64 == 6)
      {
        v10 = +[NENetworkPropertiesCache sharedCache];
        [v10 rotateEncryptionKey];

        goto LABEL_6;
      }

      v16[0] = 0;
      v16[1] = v16;
      v16[2] = 0x3032000000;
      v16[3] = sub_100055D2C;
      v16[4] = sub_100055D3C;
      v17 = os_transaction_create();
      v12 = +[NEConfigurationManager sharedManagerForAllUsers];
      v14 = objc_getProperty(v2, v13, 88, 1);
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v19 = sub_100058430;
      v20 = &unk_1000EA4D0;
      v21 = v2;
      v22 = v16;
      v23 = int64;
      [v12 loadConfigurations:0 withFilter:0 completionQueue:v14 completionHandler:&buf];

      _Block_object_dispose(v16, 8);
      goto LABEL_6;
    }

    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v15 = "";
      if (v6)
      {
        v15 = v6;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v15;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Got an unexpected network detection event with name %s", &buf, 0xCu);
    }
  }

LABEL_6:
}

void sub_100058430(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v84 = v9;
  if (!v9)
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v87 = [v8 countByEnumeratingWithState:&v96 objects:v101 count:{16, 0}];
    if (!v87)
    {
      goto LABEL_55;
    }

    v85 = *v97;
    v86 = v8;
    v12 = @"UserMap";
LABEL_7:
    v13 = 0;
    while (1)
    {
      if (*v97 != v85)
      {
        objc_enumerationMutation(v8);
      }

      v88 = v13;
      v14 = *(*(&v96 + 1) + 8 * v13);
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v15 = [v10 objectForKeyedSubscript:v12];
      v91 = [v15 countByEnumeratingWithState:&v92 objects:v100 count:16];
      if (v91)
      {
        break;
      }

LABEL_53:

      v13 = v88 + 1;
      v8 = v86;
      if ((v88 + 1) == v87)
      {
        v87 = [v86 countByEnumeratingWithState:&v96 objects:v101 count:16];
        if (!v87)
        {
          goto LABEL_55;
        }

        goto LABEL_7;
      }
    }

    v90 = *v93;
LABEL_12:
    v16 = 0;
    while (1)
    {
      if (*v93 != v90)
      {
        objc_enumerationMutation(v15);
      }

      v17 = *(*(&v92 + 1) + 8 * v16);
      v18 = [v10 objectForKeyedSubscript:v12];
      v19 = [v18 objectForKeyedSubscript:v17];

      v20 = [v14 identifier];
      v21 = [v19 containsObject:v20];

      if (!v21)
      {
        goto LABEL_51;
      }

      v22 = [v14 alwaysOnVPN];

      if (v22)
      {
        v23 = *(a1 + 32);
        v24 = [v14 identifier];
        sub_100058B2C(v23, v24, 3, *(a1 + 48));
      }

      v25 = [v14 contentFilter];

      if (v25)
      {
        v26 = *(a1 + 32);
        v27 = [v14 identifier];
        sub_100058B2C(v26, v27, 4, *(a1 + 48));
      }

      v28 = [v14 urlFilter];

      if (v28)
      {
        v29 = *(a1 + 32);
        v30 = [v14 identifier];
        sub_100058B2C(v29, v30, 10, *(a1 + 48));
      }

      v31 = [v14 VPN];
      if (v31)
      {
        v32 = v31;
        v33 = [v14 VPN];
        if ([v33 isEnabled])
        {
          [v14 VPN];
          v34 = v19;
          v35 = a1;
          v36 = v15;
          v37 = v12;
          v39 = v38 = v10;
          v89 = [v39 isOnDemandEnabled];

          v10 = v38;
          v12 = v37;
          v15 = v36;
          a1 = v35;
          v19 = v34;

          if (!v89)
          {
            goto LABEL_28;
          }

          v40 = *(a1 + 32);
          v32 = [v14 identifier];
          sub_100058B2C(v40, v32, 1, *(a1 + 48));
        }

        else
        {
        }
      }

LABEL_28:
      v41 = [v14 appVPN];
      if (v41)
      {
        v42 = v41;
        v43 = [v14 appVPN];
        v44 = [v43 isEnabled];

        if (v44)
        {
          v45 = *(a1 + 32);
          v46 = [v14 identifier];
          sub_100058B2C(v45, v46, 2, *(a1 + 48));
        }
      }

      v47 = [v14 pathController];
      if (v47)
      {
        v48 = v47;
        v49 = [v14 pathController];
        v50 = [v49 isEnabled];

        if (v50)
        {
          v51 = *(a1 + 32);
          v52 = [v14 identifier];
          sub_100058B2C(v51, v52, 5, *(a1 + 48));
        }
      }

      v53 = [v14 dnsProxy];
      if (v53)
      {
        v54 = v53;
        v55 = [v14 dnsProxy];
        v56 = [v55 isEnabled];

        if (v56)
        {
          v57 = *(a1 + 32);
          v58 = [v14 identifier];
          sub_100058B2C(v57, v58, 6, *(a1 + 48));
        }
      }

      v59 = [v14 dnsSettings];
      if (v59)
      {
        v60 = v59;
        v61 = [v14 dnsSettings];
        v62 = [v61 isEnabled];

        if (v62)
        {
          v63 = *(a1 + 32);
          v64 = [v14 identifier];
          sub_100058B2C(v63, v64, 7, *(a1 + 48));
        }
      }

      v65 = [v14 appPush];
      if (v65)
      {
        v66 = v65;
        v67 = [v14 appPush];
        v68 = [v67 isEnabled];

        if (v68)
        {
          v69 = *(a1 + 32);
          v70 = [v14 identifier];
          sub_100058B2C(v69, v70, 8, *(a1 + 48));
        }
      }

      v71 = [v14 relay];
      if (v71)
      {
        v72 = v71;
        v73 = [v14 relay];
        v74 = [v73 isEnabled];

        if (v74)
        {
          v75 = *(a1 + 32);
          v76 = [v14 identifier];
          sub_100058B2C(v75, v76, 9, *(a1 + 48));
        }
      }

      v77 = [v14 hotspot];
      if (v77)
      {
        v78 = v77;
        v79 = [v14 hotspot];
        v80 = [v79 isEnabled];

        if (v80)
        {
          v81 = ne_log_obj();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEBUG, "received load notification for hotspot configuration", buf, 2u);
          }
        }
      }

LABEL_51:

      if (v91 == ++v16)
      {
        v91 = [v15 countByEnumeratingWithState:&v92 objects:v100 count:16];
        if (!v91)
        {
          goto LABEL_53;
        }

        goto LABEL_12;
      }
    }
  }

  v11 = ne_log_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v103 = v9;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to load the current configurations: %@", buf, 0xCu);
  }

LABEL_55:
  v82 = *(*(a1 + 40) + 8);
  v83 = *(v82 + 40);
  *(v82 + 40) = 0;
}

void sub_100058B2C(_BYTE *a1, void *a2, uint64_t a3, int a4)
{
  v7 = a2;
  if (a1)
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = sub_100055D2C;
    v16[4] = sub_100055D3C;
    v17 = os_transaction_create();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100058CEC;
    v14[3] = &unk_1000EA4A8;
    v15 = a4;
    v14[4] = v16;
    v8 = objc_retainBlock(v14);
    v10 = objc_getProperty(a1, v9, 120, 1);
    v11 = [v10 objectForKeyedSubscript:v7];
    v12 = [NSNumber numberWithInt:a3];
    v13 = [v11 objectForKeyedSubscript:v12];

    if (v13)
    {
      (v8[2])(v8, v13);
    }

    else
    {
      sub_1000569E0(a1, v7, a3, v8);
    }

    _Block_object_dispose(v16, 8);
  }
}

void sub_100058CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100058CEC(uint64_t a1, void *a2)
{
  [a2 handleNetworkDetectionNotification:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_100058D38(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    if (v3[7] == a2)
    {
      goto LABEL_3;
    }

    if (v3[8] == a2)
    {
      v4 = ne_log_obj();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = 2;
        goto LABEL_15;
      }

      *buf = 0;
      v6 = "DNS changed";
      v5 = 2;
      goto LABEL_8;
    }

    v7 = v3[9];
LABEL_10:
    if (v7 != a2)
    {
      return;
    }

    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Proxies changed", buf, 2u);
    }

    v5 = 4;
    goto LABEL_15;
  }

  if (a2)
  {
    v7 = 0;
    goto LABEL_10;
  }

LABEL_3:
  v4 = ne_log_obj();
  v5 = 1;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v6 = "NWI changed";
    v5 = 1;
LABEL_8:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v6, buf, 2u);
  }

LABEL_15:

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v8, 120, 1);
  }

  obj = Property;
  v26 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v26)
  {
    v25 = *v32;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v13 = *(a1 + 32);
        if (v13)
        {
          v13 = objc_getProperty(v13, v10, 120, 1);
        }

        v14 = [v13 objectForKeyedSubscript:v12];
        v15 = [v14 countByEnumeratingWithState:&v27 objects:v36 count:16];
        if (v15)
        {
          v17 = v15;
          v18 = *v28;
          do
          {
            for (j = 0; j != v17; j = j + 1)
            {
              if (*v28 != v18)
              {
                objc_enumerationMutation(v14);
              }

              v20 = *(*(&v27 + 1) + 8 * j);
              v21 = *(a1 + 32);
              if (v21)
              {
                v21 = objc_getProperty(v21, v16, 120, 1);
              }

              v22 = [v21 objectForKeyedSubscript:v12];
              v23 = [v22 objectForKeyedSubscript:v20];

              [v23 handleNetworkConfigurationChange:v5];
            }

            v17 = [v14 countByEnumeratingWithState:&v27 objects:v36 count:16];
          }

          while (v17);
        }
      }

      v26 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v26);
  }
}

void sub_100059044(uint64_t a1, int a2)
{
  v5 = dispatch_time(0, 250000000);
  v6 = *(a1 + 32);
  if (v6)
  {
    Property = objc_getProperty(v6, v4, 88, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100059118;
  v8[3] = &unk_1000EA430;
  v9 = *(a1 + 40);
  v10 = a2;
  dispatch_after(v5, Property, v8);
}

void sub_100059130(void *a1)
{
  v1 = a1;
  [v1 prohibitNetworkAgentsWithDomain:@"NetworkExtension" type:@"VPN"];
  [v1 prohibitNetworkAgentsWithDomain:@"NetworkExtension" type:@"AppVPN"];
  [v1 prohibitNetworkAgentsWithDomain:@"NetworkExtension" type:@"AOVPN"];
}

void sub_1000591B0(uint64_t a1)
{
  sub_1000538B0(*(a1 + 32), 0);
  v3 = *(a1 + 32);
  if (v3)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = objc_getProperty(v3, v2, 120, 1);
    v22 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (v22)
    {
      v21 = *v29;
      do
      {
        v5 = 0;
        do
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = v5;
          v6 = *(*(&v28 + 1) + 8 * v5);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v7 = [objc_getProperty(v3 v4];
          v8 = [v7 countByEnumeratingWithState:&v24 objects:v34 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v25;
            do
            {
              for (i = 0; i != v9; i = i + 1)
              {
                if (*v25 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v24 + 1) + 8 * i);
                v13 = ne_log_obj();
                if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
                {
                  v15 = [objc_getProperty(v3 v14];
                  v16 = [v15 objectForKeyedSubscript:v12];
                  *buf = 138412290;
                  v33 = v16;
                  _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Passing ranked interface change event to %@", buf, 0xCu);
                }

                v18 = [objc_getProperty(v3 v17];
                v19 = [v18 objectForKeyedSubscript:v12];
                [v19 handleChangeEventForRankedInterfaces];
              }

              v9 = [v7 countByEnumeratingWithState:&v24 objects:v34 count:16];
            }

            while (v9);
          }

          v5 = v23 + 1;
        }

        while ((v23 + 1) != v22);
        v22 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
      }

      while (v22);
    }
  }
}

void sub_10005944C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (*(v2 + 10) & 1) != 0)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ignoring provider manager started because it did not start in time", buf, 2u);
    }
  }

  else
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Provider manager started", v8, 2u);
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      *(v6 + 10) = 1;
      v7 = *(a1 + 32);
    }

    else
    {
      v7 = 0;
    }

    sub_100059530(v7, v5);
  }
}

void sub_100059530(id self, const char *a2)
{
  if (self && (*(self + 9) & 1) != 0 && (*(self + 10) & 1) != 0)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = objc_getProperty(self, a2, 128, 1);
    v16 = [obj countByEnumeratingWithState:&v22 objects:v31 count:16];
    if (v16)
    {
      v15 = *v23;
      do
      {
        v4 = 0;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = v4;
          v5 = *(*(&v22 + 1) + 8 * v4);
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v6 = [objc_getProperty(self v3];
          v7 = [v6 countByEnumeratingWithState:&v18 objects:v30 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v19;
            do
            {
              for (i = 0; i != v8; i = i + 1)
              {
                if (*v19 != v9)
                {
                  objc_enumerationMutation(v6);
                }

                v11 = *(*(&v18 + 1) + 8 * i);
                v12 = ne_log_obj();
                if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
                {
                  v13 = [v11 intValue];
                  *buf = 67109378;
                  v27 = v13;
                  v28 = 2112;
                  v29 = v5;
                  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Loading pending session with type %d and ID %@", buf, 0x12u);
                }

                sub_100056D00(self, [v11 intValue], v5);
              }

              v8 = [v6 countByEnumeratingWithState:&v18 objects:v30 count:16];
            }

            while (v8);
          }

          v4 = v17 + 1;
        }

        while ((v17 + 1) != v16);
        v16 = [obj countByEnumeratingWithState:&v22 objects:v31 count:16];
      }

      while (v16);
    }
  }
}

void sub_10005978C(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 88, 1);
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100059904;
  block[3] = &unk_1000EB1C0;
  block[4] = v4;
  dispatch_async(Property, block);
}

void sub_100059824(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "File handles were not received and/or provider manager was not started in time, loading pending sessions", v8, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 320);
    if (!v4 || (dispatch_source_cancel(v4), sub_1000598F0(*(a1 + 32)), (v3 = *(a1 + 32)) != 0))
    {
      *(v3 + 9) = 1;
      v5 = *(a1 + 32);
      if (v5)
      {
        *(v5 + 10) = 1;
      }
    }
  }

  v6 = +[NEFileHandleMaintainer sharedMaintainer];
  [v6 commit];

  sub_100059530(*(a1 + 32), v7);
}

void sub_1000598F0(uint64_t a1)
{
  if (a1)
  {
    objc_storeStrong((a1 + 320), 0);
  }
}

void sub_100059904(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 320);
    if (!v3 || (dispatch_source_cancel(v3), sub_1000598F0(*(a1 + 32)), (v2 = *(a1 + 32)) != 0))
    {
      if (*(v2 + 9))
      {
        v4 = ne_log_obj();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ignoring received file handles because they were not received in time", buf, 2u);
        }

        return;
      }

      *(v2 + 9) = 1;
    }
  }

  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received file handles", buf, 2u);
  }

  v6 = +[NEFileHandleMaintainer sharedMaintainer];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100059A60;
  v8[3] = &unk_1000EA8F0;
  v8[4] = *(a1 + 32);
  [v6 iterateFileHandlesWithBlock:v8];

  sub_100059530(*(a1 + 32), v7);
}

uint64_t sub_100059A60(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 sessionType];
      v7 = [v4 configurationIdentifier];
      *buf = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Creating a pending session request from file handle for type %@ and id %@", buf, 0x16u);
    }

    v8 = [v4 description];
    v9 = *(a1 + 32);
    v10 = [v4 configurationIdentifier];
    v11 = [v4 sessionType];
    v12 = [v11 intValue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100059C3C;
    v15[3] = &unk_1000EA340;
    v16 = v8;
    v13 = v8;
    sub_1000569E0(v9, v10, v12, v15);
  }

  return 1;
}

void sub_100059C3C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to load session for file handle %@", &v5, 0xCu);
    }
  }
}

void sub_100059CEC(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 120, 1);
  }

  v4 = [Property objectForKeyedSubscript:*(a1 + 40)];
  if (v4)
  {
    v5 = [NSNumber numberWithInt:*(a1 + 48)];
    v6 = [v4 objectForKeyedSubscript:v5];

    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14[0] = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing session %@", &v13, 0xCu);
    }

    [v6 removeAllClients];
    [v6 dropServer];
    v8 = [NSNumber numberWithInt:*(a1 + 48)];
    [v4 removeObjectForKey:v8];

    if (![v4 count])
    {
      v10 = *(a1 + 32);
      if (v10)
      {
        v10 = objc_getProperty(v10, v9, 120, 1);
      }

      [v10 removeObjectForKey:*(a1 + 40)];
    }
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 48);
      v12 = *(a1 + 40);
      v13 = 67109378;
      LODWORD(v14[0]) = v11;
      WORD2(v14[0]) = 2112;
      *(v14 + 6) = v12;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cannot remove session with type %d: no sessions for id %@", &v13, 0x12u);
    }
  }
}

void sub_100059ED4(void *a1, const char *a2)
{
  if (a1)
  {
    Property = objc_getProperty(a1, a2, 88, 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100059F60;
    block[3] = &unk_1000EB1C0;
    block[4] = a1;
    dispatch_async(Property, block);
  }
}

void sub_100059F60(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      LODWORD(v3) = *(v3 + 16);
    }

    v10[0] = 67109120;
    v10[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "ackSleep with ack count = %d", v10, 8u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 16);
    v7 = __OFSUB__(v6, 1);
    v8 = v6 - 1;
    if (v8 < 0 == v7)
    {
      *(v5 + 16) = v8;
      Property = *(a1 + 32);
      if (Property)
      {
        if (Property[4])
        {
          return;
        }

        Property = objc_getProperty(Property, v4, 136, 1);
      }

      sub_10009BEDC(Property);
    }
  }
}

void sub_10005A048(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    if (a2)
    {
      v4 = v3[38];
      if (a2 < 0 && v4)
      {
        v3[38] = v4 - 1;
        v5 = v4 != 1;
      }

      else
      {
        v6 = v4 + (a2 & ~(a2 >> 63));
        v3[38] = v6;
        v7 = v6 == 0;
        v5 = v6 != 0;
        v7 = !v7 && v4 == 0;
        if (v7)
        {
          v3[37] |= 1uLL;
          v12 = ne_log_obj();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Active session count is greater than 0, setting hasActiveSessions flag", buf, 2u);
          }

          sub_100057A88(v3);
          goto LABEL_19;
        }
      }

      if (!v5 && v4)
      {
        v3[37] &= ~1uLL;
        v8 = ne_log_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Active session count is equal to 0, clearing hasActiveSessions flag", v13, 2u);
        }

        sub_100057A88(v3);
        if (objc_getProperty(v3, v9, 312, 1))
        {
          v11 = objc_getProperty(v3, v10, 312, 1);
          v11[2]();
        }
      }
    }

LABEL_19:
    objc_sync_exit(v3);
  }
}

uint64_t sub_10005A1DC(void *a1, const char *a2, uint64_t a3)
{
  v56 = a2;
  if (!a1)
  {
    return 0;
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v5 = objc_getProperty(a1, a2, 120, 1);
  v49 = [v5 countByEnumeratingWithState:&v61 objects:v72 count:16];
  if (v49)
  {
    obj = v5;
    v55 = a3;
    v7 = 0;
    v8 = 0;
    v48 = *v62;
    v53 = 1;
    do
    {
      v9 = 0;
      do
      {
        if (*v62 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v50 = v9;
        v10 = *(*(&v61 + 1) + 8 * v9);
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v11 = [objc_getProperty(a1 v6];
        v12 = [v11 countByEnumeratingWithState:&v57 objects:v71 count:16];
        if (v12)
        {
          v14 = v12;
          v15 = *v58;
          do
          {
            v16 = 0;
            do
            {
              if (*v58 != v15)
              {
                objc_enumerationMutation(v11);
              }

              v17 = *(*(&v57 + 1) + 8 * v16);
              v18 = [objc_getProperty(a1 v13];
              v19 = [v18 objectForKeyedSubscript:v17];

              if (v19)
              {
                if ([v19 supportsDefaultDrop] && (objc_msgSend(v19, "disableDefaultDropAfterBoot") & 1) == 0)
                {
                  v20 = ne_log_obj();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                  {
                    v52 = [v19 configuration];
                    v54 = [v52 name];
                    v51 = [v19 supportsDefaultDrop];
                    v39 = [v19 disableDefaultDropAfterBoot];
                    *buf = 67109890;
                    *v66 = 0;
                    *&v66[4] = 2112;
                    *&v66[6] = v54;
                    v67 = 1024;
                    v68 = v51;
                    v69 = 1024;
                    v70 = v39;
                    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "applyIPDefaultDrop: disableDefaultDropAfterBoot %d - session %@ <supportsDefaultDrop %d> <disableDefaultDropAfterBoot %d>", buf, 0x1Eu);
                  }

                  v53 = 0;
                }

                if ([v19 isDropPersistent] == v56 && (!v55 || objc_msgSend(v19, "defaultDropType") <= v55))
                {
                  v21 = [v19 defaultDropType];
                  if (v8)
                  {
                    v22 = v8 <= 4;
                  }

                  else
                  {
                    v22 = 0;
                  }

                  v23 = !v22;
                  v24 = v23 == 0;
                  v25 = @"Low";
                  if (v24)
                  {
                    v25 = v7;
                  }

                  v26 = 4;
                  if (v24)
                  {
                    v26 = v8;
                  }

                  v27 = @"Last";
                  if (v8)
                  {
                    v27 = v7;
                  }

                  v28 = 5;
                  if (v8)
                  {
                    v28 = v8;
                  }

                  if (v21 != 5)
                  {
                    v27 = v7;
                    v28 = v8;
                  }

                  if (v21 != 4)
                  {
                    v25 = v27;
                    v26 = v28;
                  }

                  if (v8)
                  {
                    v29 = v8 <= 2;
                  }

                  else
                  {
                    v29 = 0;
                  }

                  v30 = !v29;
                  v31 = v30 == 0;
                  v32 = @"High";
                  if (v31)
                  {
                    v32 = v7;
                  }

                  v33 = 2;
                  if (v31)
                  {
                    v33 = v8;
                  }

                  if (v8)
                  {
                    v34 = v8 <= 3;
                  }

                  else
                  {
                    v34 = 0;
                  }

                  v35 = !v34;
                  v36 = v35 == 0;
                  v37 = @"Default";
                  if (v36)
                  {
                    v37 = v7;
                  }

                  v38 = 3;
                  if (v36)
                  {
                    v38 = v8;
                  }

                  if (v21 != 3)
                  {
                    v37 = v7;
                    v38 = v8;
                  }

                  if (v21 != 2)
                  {
                    v32 = v37;
                    v33 = v38;
                  }

                  if (v21 <= 3)
                  {
                    v7 = v32;
                  }

                  else
                  {
                    v7 = v25;
                  }

                  if (v21 <= 3)
                  {
                    v8 = v33;
                  }

                  else
                  {
                    v8 = v26;
                  }
                }
              }

              v16 = v16 + 1;
            }

            while (v14 != v16);
            v14 = [v11 countByEnumeratingWithState:&v57 objects:v71 count:16];
          }

          while (v14);
        }

        v9 = v50 + 1;
      }

      while ((v50 + 1) != v49);
      v49 = [obj countByEnumeratingWithState:&v61 objects:v72 count:16];
    }

    while (v49);

    if (v8 && v7)
    {
      NEPolicySetDropPriorityLevel();
      v40 = ne_log_obj();
      v41 = v53;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v66 = v7;
        v42 = "applyIPDefaultDrop: IP Drop-All enabled <%@>";
        v43 = v40;
        v44 = 12;
LABEL_88:
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, v42, buf, v44);
        goto LABEL_89;
      }

      goto LABEL_89;
    }

    v41 = v53;
    if (v55)
    {
      goto LABEL_90;
    }

LABEL_86:
    NEPolicySetDropPriorityLevel();
    v40 = ne_log_obj();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v42 = "applyIPDefaultDrop: IP Drop-All disabled";
      v43 = v40;
      v44 = 2;
      goto LABEL_88;
    }

LABEL_89:

LABEL_90:
    if ((v41 & 1) == 0)
    {
      return v8;
    }

    goto LABEL_91;
  }

  v8 = 0;
  if (!a3)
  {
    v41 = 1;
    goto LABEL_86;
  }

LABEL_91:
  NEPolicySetDropPriorityLevel();
  v45 = ne_log_obj();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "applyIPDefaultDrop: IP Drop-All disabled due to disableDefaultDropAfterBoot", buf, 2u);
  }

  return v8;
}

void sub_10005A708(void *a1, const char *a2, char a3)
{
  if (a1)
  {
    Property = objc_getProperty(a1, a2, 88, 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005A7A8;
    block[3] = &unk_1000EA480;
    block[4] = a1;
    block[5] = a2;
    v8 = a3;
    dispatch_async(Property, block);
  }
}

void sub_10005A7A8(uint64_t a1)
{
  v2 = sub_10005A1DC(*(a1 + 32), 1, 0);
  if (*(a1 + 40))
  {
    v3 = *(a1 + 48);
    NEPolicyPersistDropAllFeature();
  }

  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "applyIPDefaultDrop: Persistent IP Drop-All level <%ld>", &v7, 0xCu);
  }

  v5 = sub_10005A1DC(*(a1 + 32), 0, v2);
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "applyIPDefaultDrop: non-Persistent IP Drop-All level <%ld>", &v7, 0xCu);
  }
}

void sub_10005A8D8(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      v5 = [[NSNumber alloc] initWithUnsignedLong:a3];
      v6 = [[NSNumber alloc] initWithUnsignedLong:a2];
      v7 = a1;
      objc_sync_enter(v7);
      self = v7;
      v9 = objc_getProperty(v7, v8, 328, 1);
      [v9 setObject:v6 forKeyedSubscript:v5];
      v30 = v6;

      v11 = objc_getProperty(self, v10, 328, 1);
      v36 = [NSDictionary dictionaryWithDictionary:v11];

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      obj = objc_getProperty(self, v12, 120, 1);
      v33 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v33)
      {
        v32 = *v43;
        do
        {
          for (i = 0; i != v33; i = i + 1)
          {
            if (*v43 != v32)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v42 + 1) + 8 * i);
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v15 = objc_getProperty(self, v13, 120, 1);
            v35 = [v15 objectForKeyedSubscript:v14];

            v16 = [v35 countByEnumeratingWithState:&v38 objects:v46 count:16];
            if (v16)
            {
              v17 = *v39;
              do
              {
                for (j = 0; j != v16; j = j + 1)
                {
                  if (*v39 != v17)
                  {
                    objc_enumerationMutation(v35);
                  }

                  v19 = *(*(&v38 + 1) + 8 * j);
                  v20 = ne_log_obj();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                  {
                    v22 = v5;
                    v23 = objc_getProperty(self, v21, 120, 1);
                    v24 = [v23 objectForKeyedSubscript:v14];
                    v25 = [v24 objectForKeyedSubscript:v19];
                    *buf = 138412290;
                    v49 = v25;
                    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Passing fallback interface change event to %@", buf, 0xCu);

                    v5 = v22;
                  }

                  v27 = objc_getProperty(self, v26, 120, 1);
                  v28 = [v27 objectForKeyedSubscript:v14];
                  v29 = [v28 objectForKeyedSubscript:v19];
                  [v29 handleChangeEventForFallbackInterfaces:v36];
                }

                v16 = [v35 countByEnumeratingWithState:&v38 objects:v46 count:16];
              }

              while (v16);
            }
          }

          v33 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v33);
      }

      objc_sync_exit(self);
    }

    else
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v49 = "[NESMServer addFallbackInterface:predictedInterfaceIndex:]";
        _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "%s called with null fallbackInterfaceIndex", buf, 0xCu);
      }
    }
  }
}

void sub_10005AD0C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        oslog = [[NSNumber alloc] initWithUnsignedLong:a3];
        v4 = a1;
        objc_sync_enter(v4);
        self = v4;
        v6 = objc_getProperty(v4, v5, 328, 1);
        v7 = [v6 objectForKey:oslog];

        if (v7)
        {
          v9 = objc_getProperty(self, v8, 328, 1);
          [v9 removeObjectForKey:oslog];

          v11 = objc_getProperty(self, v10, 328, 1);
          v12 = [v11 count];

          if (v12)
          {
            v14 = objc_getProperty(self, v13, 328, 1);
            v15 = [NSDictionary dictionaryWithDictionary:v14];
          }

          else
          {
            v15 = 0;
          }

          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          obj = objc_getProperty(self, v13, 120, 1);
          v36 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
          if (v36)
          {
            v35 = *v45;
            do
            {
              for (i = 0; i != v36; i = i + 1)
              {
                if (*v45 != v35)
                {
                  objc_enumerationMutation(obj);
                }

                v17 = *(*(&v44 + 1) + 8 * i);
                v40 = 0u;
                v41 = 0u;
                v42 = 0u;
                v43 = 0u;
                v18 = objc_getProperty(self, v16, 120, 1);
                v38 = [v18 objectForKeyedSubscript:v17];

                v19 = [v38 countByEnumeratingWithState:&v40 objects:v48 count:16];
                if (v19)
                {
                  v20 = *v41;
                  do
                  {
                    for (j = 0; j != v19; j = j + 1)
                    {
                      if (*v41 != v20)
                      {
                        objc_enumerationMutation(v38);
                      }

                      v22 = *(*(&v40 + 1) + 8 * j);
                      v23 = ne_log_obj();
                      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                      {
                        v25 = objc_getProperty(self, v24, 120, 1);
                        v26 = [v25 objectForKeyedSubscript:v17];
                        v27 = [v26 objectForKeyedSubscript:v22];
                        *buf = 138412290;
                        v51 = v27;
                        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Passing fallback interface change event to %@", buf, 0xCu);
                      }

                      v29 = objc_getProperty(self, v28, 120, 1);
                      v30 = [v29 objectForKeyedSubscript:v17];
                      v31 = [v30 objectForKeyedSubscript:v22];
                      [v31 handleChangeEventForFallbackInterfaces:v15];
                    }

                    v19 = [v38 countByEnumeratingWithState:&v40 objects:v48 count:16];
                  }

                  while (v19);
                }
              }

              v36 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
            }

            while (v36);
          }
        }

        objc_sync_exit(self);

        goto LABEL_26;
      }

      oslog = ne_log_obj();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v51 = "[NESMServer removeFallbackInterface:predictedInterfaceIndex:]";
        v32 = "%s called with null predictedInterfaceIndex";
        goto LABEL_32;
      }
    }

    else
    {
      oslog = ne_log_obj();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v51 = "[NESMServer removeFallbackInterface:predictedInterfaceIndex:]";
        v32 = "%s called with null fallbackInterfaceIndex";
LABEL_32:
        _os_log_fault_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_FAULT, v32, buf, 0xCu);
      }
    }

LABEL_26:
  }
}

void sub_10005B1C8(void *a1, const char *a2)
{
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  Property = a1[4];
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 120, 1);
  }

  obj = Property;
  v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  v5 = 0;
  if (v21)
  {
    v20 = *v28;
    do
    {
      v6 = 0;
      do
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * v6);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v8 = a1[4];
        if (v8)
        {
          v8 = objc_getProperty(v8, v4, 120, 1);
        }

        v22 = v6;
        v9 = [v8 objectForKeyedSubscript:v7];
        v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v10)
        {
          v12 = v10;
          v13 = *v24;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v24 != v13)
              {
                objc_enumerationMutation(v9);
              }

              v15 = *(*(&v23 + 1) + 8 * i);
              v16 = a1[4];
              if (v16)
              {
                v16 = objc_getProperty(v16, v11, 120, 1);
              }

              v17 = [v16 objectForKeyedSubscript:v7];
              v18 = [v17 objectForKeyedSubscript:v15];

              if ([v18 hasProviderWithBundleIdentifier:a1[5]])
              {
                if (!v5)
                {
                  v5 = objc_alloc_init(NSMutableArray);
                }

                [v5 addObject:v18];
              }
            }

            v12 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v12);
        }

        v6 = v22 + 1;
      }

      while ((v22 + 1) != v21);
      v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v21);
  }

  (*(a1[6] + 16))();
}

void sub_10005B410(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = sub_10000DA38();
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10005B580;
    v11[3] = &unk_1000EB2E8;
    v11[4] = a1;
    v12 = v5;
    v13 = v6;
    v8 = v12;
    v9 = v11;
    if (v7)
    {
      v10 = v7[1];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000F4F8;
      block[3] = &unk_1000EB2E8;
      block[4] = v7;
      v15 = v8;
      v16 = v9;
      dispatch_async(v10, block);
    }
  }
}

void sub_10005B580(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    Property = objc_getProperty(v3, a2, 88, 1);
  }

  else
  {
    Property = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005B644;
  block[3] = &unk_1000EB2E8;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  v10 = *(a1 + 48);
  dispatch_async(Property, block);
}

uint64_t sub_10005B644(uint64_t a1)
{
  v2 = [*(a1 + 32) configuration];
  v3 = [v2 grade];

  if (v3 == 1)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    Property = *(a1 + 40);
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 120, 1);
    }

    obj = Property;
    v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v22;
      do
      {
        v10 = 0;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v21 + 1) + 8 * v10);
          v12 = *(a1 + 40);
          if (v12)
          {
            v12 = objc_getProperty(v12, v7, 120, 1);
          }

          v13 = [v12 objectForKeyedSubscript:v11];
          v14 = [v13 objectForKeyedSubscript:&off_1000EE330];

          v15 = [v14 configuration];
          if ([v15 grade] == 2)
          {
            v16 = [v14 configuration];
            v17 = [v16 VPN];
            v18 = [v17 isOnDemandEnabled];

            if (v18)
            {
              [v14 unpauseOnDemand];
            }
          }

          else
          {
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_10005B82C(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = (a1 + 40);
    v4 = *(a1 + 40);
    if (v4 == (*(v3 + 14) & 1))
    {
      return;
    }

    *(v3 + 14) = v4;
    Property = *(a1 + 32);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    if (Property)
    {
      Property = objc_getProperty(Property, a2, 120, 1);
    }
  }

  else
  {
    v5 = (a1 + 40);
    if (!*(a1 + 40))
    {
      return;
    }

    Property = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
  }

  obj = Property;
  v29 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v29)
  {
    v28 = *v38;
    do
    {
      v8 = 0;
      do
      {
        if (*v38 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v8;
        v32 = *(*(&v37 + 1) + 8 * v8);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v9 = *(a1 + 32);
        if (v9)
        {
          v9 = objc_getProperty(v9, v7, 120, 1);
        }

        v31 = [v9 objectForKeyedSubscript:v32];
        v10 = [v31 countByEnumeratingWithState:&v33 objects:v45 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v34;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v34 != v12)
              {
                objc_enumerationMutation(v31);
              }

              v14 = *(*(&v33 + 1) + 8 * i);
              v15 = ne_log_obj();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                v17 = v12;
                v18 = v5;
                if (*(a1 + 40))
                {
                  v19 = "enabled";
                }

                else
                {
                  v19 = "disabled";
                }

                v20 = *(a1 + 32);
                if (v20)
                {
                  v20 = objc_getProperty(v20, v16, 120, 1);
                }

                v21 = [v20 objectForKeyedSubscript:v32];
                v22 = [v21 objectForKeyedSubscript:v14];
                *buf = 136315394;
                v42 = v19;
                v43 = 2112;
                v44 = v22;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Passing fallback %s event to %@", buf, 0x16u);

                v5 = v18;
                v12 = v17;
              }

              v24 = *(a1 + 32);
              if (v24)
              {
                v24 = objc_getProperty(v24, v23, 120, 1);
              }

              v25 = [v24 objectForKeyedSubscript:v32];
              v26 = [v25 objectForKeyedSubscript:v14];
              [v26 handleChangeEventForFallback:*v5];
            }

            v11 = [v31 countByEnumeratingWithState:&v33 objects:v45 count:16];
          }

          while (v11);
        }

        v8 = v30 + 1;
      }

      while ((v30 + 1) != v29);
      v29 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v29);
  }
}

void sub_10005BDFC(id *a1)
{
  if (a1 && a1[47])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v2 = a1[48];
    v3 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v14;
      do
      {
        v6 = 0;
        do
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [a1[47] removePolicyWithID:{objc_msgSend(*(*(&v13 + 1) + 8 * v6), "unsignedIntegerValue", v13)}];
          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
      }

      while (v4);
    }

    [a1[48] removeAllObjects];
    [a1[47] apply];
    v7 = a1[48];
    a1[48] = 0;

    v8 = a1[47];
    a1[47] = 0;

    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [a1 configuration];
      v11 = [v10 hotspot];
      v12 = [v11 authenticationProviderBundleIdentifier];
      *buf = 138412546;
      v18 = a1;
      v19 = 2112;
      v20 = v12;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@ uninstalled hotspot provider policies for [%@]", buf, 0x16u);
    }
  }
}

id sub_10005D3B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v5 = [NSSet setWithObject:v3];
  v13 = 0;
  v6 = [v4 machOUUIDsForBundleIdentifiers:v5 error:&v13];
  v7 = v13;

  if (v7)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = [v7 debugDescription];
      *buf = 138412546;
      v15 = a1;
      v16 = 2112;
      v17 = v12;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@ machOUUIDsForBundleIdentifiers failed. error: %@", buf, 0x16u);
    }

    [v6 count];
    goto LABEL_5;
  }

  if (![v6 count])
  {
LABEL_5:
    v9 = 0;
    goto LABEL_10;
  }

  v9 = [v6 objectForKeyedSubscript:v3];
  v10 = ne_log_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v15 = a1;
    v16 = 2112;
    v17 = v3;
    v18 = 2112;
    v19 = v9;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%@ machOUUIDs For BundleIdentifier [%@]: %@", buf, 0x20u);
  }

LABEL_10:

  return v9;
}

uint64_t sub_10005D5AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10005D5C4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (a1)
  {
    v17 = a3;
    v18 = objc_alloc_init(NSMutableArray);
    if (v13)
    {
      v19 = [NEPolicyCondition effectiveApplication:v13];
      [v18 addObject:v19];
    }

    if (v14)
    {
      v20 = [NEPolicyCondition realApplication:v14];
      [v18 addObject:v20];
    }

    if (v16)
    {
      [NEPolicyCondition scopedInterface:v16];
    }

    else
    {
      +[NEPolicyCondition allInterfaces];
    }
    v21 = ;
    [v18 addObject:v21];

    if (v15)
    {
      v22 = [NEPolicyCondition domain:v15];
      [v18 addObject:v22];
    }

    v23 = [[NEPolicy alloc] initWithOrder:a2 result:v17 conditions:v18];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

void sub_10005D75C(uint64_t a1, void *a2)
{
  v3 = sub_10005D5C4(*(a1 + 32), 4, *(a1 + 40), *(a1 + 48), 0, a2, 0);
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v6 = *(a1 + 56);

    [v6 addObject:?];
  }
}

void sub_10005DA9C(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  [v2 requestInstallForSession:*(a1 + 32) withParentSession:0 exclusive:0];
}

BOOL sub_10005DCCC(_DWORD *self, const char *a2)
{
  v3 = self[89];
  if (v3 == 11)
  {
    if (!objc_getProperty(self, a2, 360, 1))
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *v27 = 138412290;
        *&v27[4] = self;
        _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%@ initializing plugin for hotspot evaluation provider", v27, 0xCu);
      }

      v5 = &OBJC_IVAR___NESMHotspotSession__evaluationPlugin;
      goto LABEL_12;
    }

    v3 = self[89];
  }

  if (v3 != 12 || objc_getProperty(self, a2, 368, 1))
  {
    goto LABEL_27;
  }

  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v27 = 138412290;
    *&v27[4] = self;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%@ initializing plugin for hotspot authentication provider", v27, 0xCu);
  }

  v5 = &OBJC_IVAR___NESMHotspotSession__authenticationPlugin;
LABEL_12:

  v6 = [self configuration];
  v7 = [v6 hotspot];
  v8 = [v7 pluginType];

  v9 = self[89];
  if (v9 == 12)
  {
    v10 = [self configuration];
    v11 = [v10 hotspot];
    v12 = [v11 authenticationProviderBundleIdentifier];
  }

  else
  {
    if (v9 != 11)
    {
LABEL_18:
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v27 = 138412290;
        *&v27[4] = self;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@: failed to find the hotspot provider bundle identifier", v27, 0xCu);
      }

      v18 = 0;
      goto LABEL_21;
    }

    v10 = [self configuration];
    v11 = [v10 hotspot];
    v12 = [v11 evaluationProviderBundleIdentifier];
  }

  v13 = v12;

  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = objc_alloc(objc_opt_class());
  v28[0] = @"hotspot-session-type";
  v15 = [NSNumber numberWithInt:self[89]];
  v28[1] = @"extension-identifier";
  *v27 = v15;
  *&v27[8] = v13;
  v16 = [NSDictionary dictionaryWithObjects:v27 forKeys:v28 count:2];
  v17 = [self uid];
  v18 = [v14 initWithPluginType:v8 pluginVersion:1 pluginClass:10 pluginInfo:v16 userID:v17];

LABEL_21:
  if (v18)
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 138412546;
      *&v27[4] = self;
      *&v27[12] = 2048;
      *&v27[14] = 10;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@: creating a hotspot plugin with class %ld", v27, 0x16u);
    }

    v20 = [NEHotspotPlugin alloc];
    v21 = [self queue];
    v22 = [(NEPlugin *)v20 initWithAgent:v18 delegateQueue:v21 andDelegate:self];
  }

  else
  {
    v22 = 0;
  }

  objc_setProperty_atomic(self, v23, v22, *v5);
LABEL_27:
  v24 = 1;
  if (!objc_getProperty(self, a2, 360, 1))
  {
    return objc_getProperty(self, v25, 368, 1) != 0;
  }

  return v24;
}

uint64_t sub_10005E650(void *a1, unsigned int *a2, void *a3, void *a4, int a5, void *a6, int a7, void *a8, void *a9, void *a10, unsigned __int16 a11, char a12, void *a13, void *a14, void *a15, char a16, void *a17, char a18)
{
  v21 = a3;
  v22 = a4;
  v85 = a6;
  v86 = a8;
  v23 = a9;
  v24 = v21;
  v25 = v22;
  v95 = a10;
  v87 = a13;
  v94 = a14;
  v98 = a15;
  v26 = a17;
  v27 = objc_alloc_init(NSMutableArray);
  if (v21)
  {
    v28 = v21;
  }

  else
  {
    v28 = v22;
  }

  v92 = v28;
  v29 = [NEPolicyCondition effectiveApplication:?];
  [v27 addObject:v29];

  if (v22)
  {
    v30 = [NEPolicyCondition realApplication:v22];
    [v27 addObject:v30];
  }

  v97 = v26;
  if (!v23 || (a16 & 1) != 0)
  {
    v31 = +[NEPolicyCondition allInterfaces];
  }

  else
  {
    v31 = [NEPolicyCondition scopedInterface:v23];
  }

  v32 = v31;
  v33 = v85;
  v34 = v87;
  v93 = v23;
  [v27 addObject:v31];

  if (a7)
  {
    v35 = [NEPolicyCondition uid:0];
    [v27 addObject:v35];
  }

  if (a5)
  {
    v36 = +[NEPolicyCondition entitlement];
  }

  else
  {
    if (![v85 length])
    {
      goto LABEL_17;
    }

    v36 = [NEPolicyCondition customEntitlement:v85];
  }

  v37 = v36;
  [v27 addObject:v36];

LABEL_17:
  if (v95)
  {
    v38 = [NEPolicyCondition signingIdentifier:?];
    [v27 addObject:v38];
  }

  if (a11)
  {
    v39 = [NEPolicyCondition ipProtocol:a11];
    [v27 addObject:v39];
  }

  if (a12)
  {
    v40 = +[NEPolicyCondition platformBinary];
    [v27 addObject:v40];

    v41 = +[NEPolicyCondition delegateIsPlatformBinary];
    [v27 addObject:v41];
  }

  if (v87)
  {
    v42 = [NEPolicyCondition accountIdentifier:v87];
    [v27 addObject:v42];
  }

  if (v98)
  {
    obja = [[NEPolicy alloc] initWithOrder:*a2 result:v98 conditions:v27];
    v43 = [a1 addPolicy:?];
    is_debug_logging_enabled = nelog_is_debug_logging_enabled();
    v45 = ne_log_obj();
    v46 = v45;
    if (!v43)
    {
      v47 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
      if (is_debug_logging_enabled)
      {
        if (v47)
        {
          *buf = 138412290;
          v106 = obja;
LABEL_46:
          _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Failed to add policy: %@", buf, 0xCu);
        }

LABEL_107:

        v78 = 0;
        goto LABEL_108;
      }

      if (!v47)
      {
        goto LABEL_107;
      }

      v80 = [obja descriptionWithIndent:0 options:2];
      *buf = 138412290;
      v106 = v80;
LABEL_98:
      _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Failed to add policy: %@", buf, 0xCu);

      goto LABEL_107;
    }

    if (is_debug_logging_enabled)
    {
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v106 = obja;
        _os_log_debug_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "Added policy: %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v48 = [obja descriptionWithIndent:0 options:2];
      *buf = 138412290;
      v106 = v48;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Added policy: %@", buf, 0xCu);
    }

    if (v97)
    {
      v49 = [NSNumber numberWithUnsignedInteger:v43];
      [v97 addObject:v49];
    }

    if (a18)
    {
      ++*a2;
    }
  }

  obja = [[NEPolicy alloc] initWithOrder:*a2 result:v94 conditions:v27];
  v50 = [a1 addPolicy:?];
  v51 = nelog_is_debug_logging_enabled();
  v52 = ne_log_obj();
  v46 = v52;
  if (!v50)
  {
    v53 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
    if (v51)
    {
      if (v53)
      {
        *buf = 138412290;
        v106 = obja;
        goto LABEL_46;
      }

      goto LABEL_107;
    }

    if (!v53)
    {
      goto LABEL_107;
    }

    v80 = [obja descriptionWithIndent:0 options:2];
    *buf = 138412290;
    v106 = v80;
    goto LABEL_98;
  }

  if (v51)
  {
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v106 = obja;
      _os_log_debug_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "Added policy: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
  {
    v54 = [obja descriptionWithIndent:0 options:2];
    *buf = 138412290;
    v106 = v54;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Added policy: %@", buf, 0xCu);
  }

  if (v97)
  {
    v55 = [NSNumber numberWithUnsignedInteger:v50];
    [v97 addObject:v55];
  }

  if (a18)
  {
    ++*a2;
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  obja = v86;
  v56 = [obja countByEnumeratingWithState:&v100 objects:v104 count:16];
  if (!v56)
  {
    v78 = 1;
    goto LABEL_90;
  }

  v57 = v56;
  v84 = v24;
  v88 = *v101;
  v58 = v95;
  while (2)
  {
    for (i = 0; i != v57; i = i + 1)
    {
      if (*v101 != v88)
      {
        objc_enumerationMutation(obja);
      }

      v60 = *(*(&v100 + 1) + 8 * i);
      v46 = objc_alloc_init(NSMutableArray);
      v61 = [NEPolicyCondition effectiveApplication:v92];
      [v46 addObject:v61];

      v62 = [NEPolicyCondition realApplication:v60];
      [v46 addObject:v62];

      if (v93)
      {
        [NEPolicyCondition scopedInterface:?];
      }

      else
      {
        +[NEPolicyCondition allInterfaces];
      }
      v63 = ;
      [v46 addObject:v63];

      if (a5)
      {
        v64 = +[NEPolicyCondition entitlement];
        [v46 addObject:v64];
      }

      if (v58)
      {
        v65 = [NEPolicyCondition signingIdentifier:v58];
        [v46 addObject:v65];
      }

      if (v98)
      {
        v66 = [[NEPolicy alloc] initWithOrder:*a2 result:v98 conditions:v46];
        v67 = [a1 addPolicy:v66];
        v68 = nelog_is_debug_logging_enabled();
        v69 = ne_log_obj();
        v70 = v69;
        if (!v67)
        {
          v81 = os_log_type_enabled(v69, OS_LOG_TYPE_ERROR);
          if (v68)
          {
            v24 = v84;
            v33 = v85;
            v34 = v87;
            if (v81)
            {
              *buf = 138412290;
              v106 = v66;
              goto LABEL_102;
            }

LABEL_106:
            v25 = v22;

            goto LABEL_107;
          }

          v24 = v84;
          v33 = v85;
          v34 = v87;
          if (!v81)
          {
            goto LABEL_106;
          }

LABEL_109:
          v83 = [v66 descriptionWithIndent:0 options:2];
          *buf = 138412290;
          v106 = v83;
          _os_log_error_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "Failed to add policy: %@", buf, 0xCu);

          v34 = v87;
          goto LABEL_106;
        }

        if (v68)
        {
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v106 = v66;
            _os_log_debug_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEBUG, "Added policy: %@", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          v71 = [v66 descriptionWithIndent:0 options:2];
          *buf = 138412290;
          v106 = v71;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "Added policy: %@", buf, 0xCu);
        }

        if (v97)
        {
          v72 = [NSNumber numberWithUnsignedInteger:v67];
          [v97 addObject:v72];
        }

        if (a18)
        {
          ++*a2;
        }
      }

      v66 = [[NEPolicy alloc] initWithOrder:*a2 result:v94 conditions:v46];
      v73 = [a1 addPolicy:v66];
      v74 = nelog_is_debug_logging_enabled();
      v75 = ne_log_obj();
      v70 = v75;
      if (!v73)
      {
        v79 = os_log_type_enabled(v75, OS_LOG_TYPE_ERROR);
        if (v74)
        {
          v24 = v84;
          v33 = v85;
          v34 = v87;
          if (v79)
          {
            *buf = 138412290;
            v106 = v66;
LABEL_102:
            _os_log_error_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "Failed to add policy: %@", buf, 0xCu);
            goto LABEL_106;
          }

          goto LABEL_106;
        }

        v24 = v84;
        v33 = v85;
        v34 = v87;
        if (!v79)
        {
          goto LABEL_106;
        }

        goto LABEL_109;
      }

      if (v74)
      {
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v106 = v66;
          _os_log_debug_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEBUG, "Added policy: %@", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        v76 = [v66 descriptionWithIndent:0 options:2];
        *buf = 138412290;
        v106 = v76;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "Added policy: %@", buf, 0xCu);
      }

      if (v97)
      {
        v77 = [NSNumber numberWithUnsignedInteger:v73];
        [v97 addObject:v77];
      }

      if (a18)
      {
        ++*a2;
      }

      v58 = v95;
    }

    v57 = [obja countByEnumeratingWithState:&v100 objects:v104 count:16];
    v78 = 1;
    if (v57)
    {
      continue;
    }

    break;
  }

  v24 = v84;
  v25 = v22;
  v33 = v85;
LABEL_90:
  v34 = v87;
LABEL_108:

  return v78;
}

uint64_t sub_10005F304(void *a1, unsigned int *a2, int a3, void *a4, void *a5, int a6, void *a7, int a8, void *a9, char a10, void *a11, void *a12, void *a13, char a14, void *a15)
{
  v19 = a4;
  v20 = a5;
  v48 = a7;
  v47 = a9;
  v21 = a11;
  v46 = a12;
  v45 = a13;
  v22 = a15;
  if (a1 && (v57 = *a2, v20) && (v23 = +[NEProcessInfo copyDNSUUIDs]) != 0)
  {
    v24 = v23;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v25 = v20;
    v39 = [v25 countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v39)
    {
      v40 = *v54;
      v37 = v20;
      v38 = v19;
      v35 = v25;
      v36 = v21;
      while (2)
      {
        v26 = 0;
        do
        {
          if (*v54 != v40)
          {
            objc_enumerationMutation(v25);
          }

          v41 = v26;
          v27 = *(*(&v53 + 1) + 8 * v26);
          v57 = *a2;
          if (!sub_10005E650(a1, &v57, 0, v27, a6, v48, a8, v24, v47, 0, 0, a10, v21, v46, v45, a14, v22, a3))
          {
LABEL_29:

            v33 = 0;
            goto LABEL_30;
          }

          if (v19)
          {
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v28 = v19;
            v29 = [v28 countByEnumeratingWithState:&v49 objects:v58 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v50;
              while (2)
              {
                for (i = 0; i != v30; i = i + 1)
                {
                  if (*v50 != v31)
                  {
                    objc_enumerationMutation(v28);
                  }

                  if ((sub_10005E650(a1, &v57, *(*(&v49 + 1) + 8 * i), v27, a6, v48, a8, v24, v47, 0, 0, a10, 0, v46, v45, a14, v22, a3) & 1) == 0)
                  {

                    v20 = v37;
                    v19 = v38;
                    v25 = v35;
                    v21 = v36;
                    goto LABEL_29;
                  }
                }

                v30 = [v28 countByEnumeratingWithState:&v49 objects:v58 count:16];
                if (v30)
                {
                  continue;
                }

                break;
              }
            }

            v20 = v37;
            v19 = v38;
            v25 = v35;
            v21 = v36;
          }

          if (a3)
          {
            *a2 = v57;
          }

          v26 = v41 + 1;
        }

        while ((v41 + 1) != v39);
        v39 = [v25 countByEnumeratingWithState:&v53 objects:v59 count:16];
        if (v39)
        {
          continue;
        }

        break;
      }
    }

    if ((a3 & 1) == 0)
    {
      *a2 = v57;
    }

    v33 = 1;
LABEL_30:
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

uint64_t sub_10005F660(void *a1, unsigned int *a2, int a3, void *a4, int a5, void *a6, void *a7, unsigned __int16 a8, char a9, void *a10, void *a11, void *a12)
{
  v17 = a4;
  v34 = a6;
  v33 = a7;
  v18 = a10;
  v19 = a11;
  v20 = a12;
  v39 = *a2;
  if (!v17)
  {
    goto LABEL_4;
  }

  if (a9)
  {
    v21 = +[NEProcessInfo copyDNSUUIDs];
    if (!v21)
    {
LABEL_4:
      v22 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v21 = 0;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v29 = v17;
  obj = v17;
  v23 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v36;
    while (2)
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v35 + 1) + 8 * i);
        v39 = *a2;
        if ((sub_10005E650(a1, &v39, v27, 0, a5, 0, 0, v21, v34, v33, a8, 0, 0, v18, v19, 0, v20, a3) & 1) == 0)
        {

          v22 = 0;
          goto LABEL_20;
        }

        if (a3)
        {
          *a2 = v39;
        }
      }

      v24 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

  if ((a3 & 1) == 0)
  {
    *a2 = v39;
  }

  v22 = 1;
LABEL_20:
  v17 = v29;

LABEL_21:
  return v22;
}

BOOL sub_10005F888(_BOOL8 a1, unsigned int *a2, void *a3, void *a4)
{
  v39 = a4;
  if (!a1)
  {
    v23 = v39;
    goto LABEL_33;
  }

  v7 = a3;
  v8 = objc_alloc_init(NSMutableArray);
  v9 = [NEPolicyCondition ipProtocol:58];
  [v8 addObject:v9];

  v10 = +[NEPolicyCondition allInterfaces];
  [v8 addObject:v10];

  v11 = [NEPolicyCondition effectivePID:0];
  [v11 setNegative:1];
  [v8 addObject:v11];
  v12 = [NEPolicy alloc];
  v13 = *a2;
  v14 = [NEPolicyResult skipWithOrder:(v13 + 2)];
  v15 = [v12 initWithOrder:v13 result:v14 conditions:v8];

  v16 = [a1 addPolicy:v15];
  is_debug_logging_enabled = nelog_is_debug_logging_enabled();
  v18 = ne_log_obj();
  v19 = v18;
  if (v16)
  {
    v20 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (is_debug_logging_enabled)
    {
      if (v20)
      {
        *buf = 138412290;
        v41 = v15;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Added policy: %@", buf, 0xCu);
      }
    }

    else if (v20)
    {
      v22 = [v15 descriptionWithIndent:0 options:2];
      *buf = 138412290;
      v41 = v22;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Added policy: %@", buf, 0xCu);
    }

    v23 = v39;
    if (!v39)
    {
      goto LABEL_17;
    }

    v19 = [NSNumber numberWithUnsignedInteger:v16];
    [v39 addObject:v19];
  }

  else
  {
    v21 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (is_debug_logging_enabled)
    {
      if (v21)
      {
        *buf = 138412290;
        v41 = v15;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to add policy: %@", buf, 0xCu);
      }
    }

    else if (v21)
    {
      v37 = [v15 descriptionWithIndent:0 options:2];
      *buf = 138412290;
      v41 = v37;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to add policy: %@", buf, 0xCu);
    }

    v23 = v39;
  }

LABEL_17:
  ++*a2;
  v24 = objc_alloc_init(NSMutableArray);

  v25 = [NEPolicyCondition ipProtocol:58];
  [v24 addObject:v25];

  v26 = +[NEPolicyCondition allInterfaces];
  [v24 addObject:v26];

  v27 = [[NEPolicy alloc] initWithOrder:*a2 result:v7 conditions:v24];
  v28 = [a1 addPolicy:v27];
  a1 = v28 != 0;
  v29 = nelog_is_debug_logging_enabled();
  v30 = ne_log_obj();
  v31 = v30;
  if (v28)
  {
    v32 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);
    if (v29)
    {
      if (v32)
      {
        *buf = 138412290;
        v41 = v27;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Added policy: %@", buf, 0xCu);
      }
    }

    else if (v32)
    {
      v34 = [v27 descriptionWithIndent:0 options:2];
      *buf = 138412290;
      v41 = v34;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Added policy: %@", buf, 0xCu);
    }

    if (v23)
    {
      v35 = [NSNumber numberWithUnsignedInteger:v28];
      [v23 addObject:v35];
    }

    ++*a2;
  }

  else
  {
    v33 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v33)
      {
        *buf = 138412290;
        v41 = v27;
        _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Failed to add policy: %@", buf, 0xCu);
      }
    }

    else if (v33)
    {
      v38 = [v27 descriptionWithIndent:0 options:2];
      *buf = 138412290;
      v41 = v38;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Failed to add policy: %@", buf, 0xCu);
    }
  }

LABEL_33:
  return a1;
}