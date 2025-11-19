@interface SDNodeCoalescer
- (SDNodeCoalescer)init;
- (id)coalescedNodesForNewAvailableNodes:(id)a3;
- (id)setMappedContactIdentifier:(id)a3 relatedContactIdentifiers:(id)a4;
@end

@implementation SDNodeCoalescer

- (SDNodeCoalescer)init
{
  v8.receiver = self;
  v8.super_class = SDNodeCoalescer;
  v2 = [(SDNodeCoalescer *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    originalNodes = v2->_originalNodes;
    v2->_originalNodes = v3;

    v5 = objc_opt_new();
    contactIdentifierMap = v2->_contactIdentifierMap;
    v2->_contactIdentifierMap = v5;
  }

  return v2;
}

- (id)coalescedNodesForNewAvailableNodes:(id)a3
{
  v86 = a3;
  v91 = objc_opt_new();
  v100 = objc_opt_new();
  v90 = objc_opt_new();
  v87 = objc_opt_new();
  v89 = objc_opt_new();
  v5 = self;
  v6 = objc_opt_new();
  objc_storeStrong(&self->_availableNodes, a3);
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  obj = self->_availableNodes;
  v101 = self;
  v95 = v6;
  v94 = [(NSArray *)obj countByEnumeratingWithState:&v111 objects:v124 count:16];
  if (v94)
  {
    v93 = *v112;
    v92 = kSFNodeKindRapport;
    do
    {
      for (i = 0; i != v94; i = v49 + 1)
      {
        if (*v112 != v93)
        {
          objc_enumerationMutation(obj);
        }

        v102 = i;
        v8 = *(*(&v111 + 1) + 8 * i);
        v9 = SFNodeCopyKinds();
        v10 = SFNodeCopyRealName();
        v11 = SFNodeCopyContactIdentifiers();
        v12 = SFNodeCopyContactIdentifier();
        v13 = SFNodeCopyUserName();
        v96 = [v9 containsObject:v92];
        v14 = sub_100090360();
        if (v11)
        {
          if (v12)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v11 = sub_100090478();
          if (v12)
          {
LABEL_8:
            v15 = 1;
LABEL_15:
            v105 = v12;
            goto LABEL_16;
          }
        }

        v16 = sub_1000904C4();
        v15 = v16 != 0;
        if (v16)
        {
          v17 = 1;
        }

        else
        {
          v17 = v14;
        }

        if (v17 == 1)
        {
          v12 = v16;
          goto LABEL_15;
        }

        v15 = 0;
        v105 = 0;
        v12 = v13;
LABEL_16:
        v18 = v12;
        v19 = airdrop_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v84 = v96;
          v85 = v14;
          v82 = v13;
          v83 = v18;
          v80 = v10;
          v81 = v105;
          v79 = v9;
          v50 = NSPrintF();
          *buf = 138412546;
          v116 = v8;
          v117 = 2112;
          v118 = v50;
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Coalescing node %@: %@", buf, 0x16u);

          v6 = v95;
        }

        if (v18)
        {
          v97 = v15;
          v98 = v14;
          v20 = v13;
          v21 = v11;
          v14 = v10;
          v22 = v9;
          [v6 objectForKeyedSubscript:v18];
          v24 = v23 = v6;
          v25 = sub_1001EAE00();
          v26 = sub_1001EACB0(v24, v25);

          v27 = magic_head_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v116 = "[SDNodeCoalescer coalescedNodesForNewAvailableNodes:]";
            v117 = 2112;
            v118 = v18;
            v119 = 2112;
            v120 = v26;
            _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%s identifier: %@, mostRevelant: %@", buf, 0x20u);
          }

          [v23 setObject:v26 forKeyedSubscript:v18];
          v6 = v23;
          v9 = v22;
          v10 = v14;
          v11 = v21;
          v13 = v20;
          LODWORD(v14) = v98;
          v15 = v97;
        }

        else
        {
          v26 = airdrop_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v116 = v8;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "No identifier found for node %@", buf, 0xCu);
          }
        }

        if (v14)
        {
          v28 = SFNodeCopyIDSDeviceIdentifier();
          if (v28)
          {
            v29 = v28;
            v5 = v101;
            goto LABEL_44;
          }

          v41 = SFNodeCopyComputerName();
          v5 = v101;
          if (v41)
          {
            v29 = v41;
LABEL_44:
            v42 = [(NSMutableDictionary *)v5->_originalNodes objectForKeyedSubscript:v29, v79];

            if (!v42)
            {
              Copy = SFNodeCreateCopy();
              [(NSMutableDictionary *)v5->_originalNodes setObject:Copy forKeyedSubscript:v29];
              CFRelease(Copy);
            }

            v44 = [(NSMutableDictionary *)v5->_originalNodes objectForKeyedSubscript:v29];
            [v91 setObject:v44 forKeyedSubscript:v29];

            v45 = [v100 objectForKeyedSubscript:v29];
            if (v45)
            {
              v46 = v45;
              if (([v45 containsObject:v8] & 1) == 0)
              {
                [v46 addObject:v8];
              }
            }

            else
            {
              v46 = [NSMutableArray arrayWithObject:v8];
            }

            [v100 setObject:v46 forKeyedSubscript:v29];
            v47 = SFNodeCopyModelIdentifier();
            if (v47)
            {
              v48 = SFNodeCopyIconData();
              [v89 setObject:v48 forKeyedSubscript:v29];
            }

            v6 = v95;
          }

          else
          {
            v29 = airdrop_log();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v116 = v8;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "coalescedNodesForNewAvailableNodes: Device ID is not available for %@", buf, 0xCu);
            }
          }

LABEL_54:
          v49 = v102;
          goto LABEL_62;
        }

        if (v15)
        {
          v5 = v101;
          v30 = [(SDNodeCoalescer *)v101 setMappedContactIdentifier:v105 relatedContactIdentifiers:v11];
          v31 = [(NSMutableDictionary *)v101->_originalNodes objectForKeyedSubscript:v30];

          if (!v31)
          {
            v32 = SFNodeCreateCopy();
            [(NSMutableDictionary *)v101->_originalNodes setObject:v32 forKeyedSubscript:v30];
            CFRelease(v32);
          }

          v33 = [(NSMutableDictionary *)v101->_originalNodes objectForKeyedSubscript:v30, v79];
          [v91 setObject:v33 forKeyedSubscript:v30];

          v34 = [v90 objectForKeyedSubscript:v30];
          if (v34)
          {
            v35 = v34;
            if (([v34 containsObject:v8] & 1) == 0)
            {
              [v35 addObject:v8];
            }
          }

          else
          {
            v35 = [NSMutableArray arrayWithObject:v8];
          }

          v49 = v102;
          [v90 setObject:v35 forKeyedSubscript:v30];
        }

        else
        {
          if (!v13)
          {
            [v91 setObject:v8 forKeyedSubscript:v10];
            v5 = v101;
            goto LABEL_54;
          }

          v5 = v101;
          if ((v96 & 1) == 0)
          {
            v36 = [(NSMutableDictionary *)v101->_originalNodes objectForKeyedSubscript:v13];

            if (!v36)
            {
              v37 = SFNodeCreateCopy();
              [(NSMutableDictionary *)v101->_originalNodes setObject:v37 forKeyedSubscript:v13];
              CFRelease(v37);
            }

            v38 = [(NSMutableDictionary *)v101->_originalNodes objectForKeyedSubscript:v13, v79, v80, v81, v82, v83, v84, v85, v86];
            [v91 setObject:v38 forKeyedSubscript:v13];
          }

          v39 = [v87 objectForKeyedSubscript:{v13, v79}];
          if (v39)
          {
            v40 = v39;
            if (([v39 containsObject:v8] & 1) == 0)
            {
              [v40 addObject:v8];
            }
          }

          else
          {
            v40 = [NSMutableArray arrayWithObject:v8];
          }

          v49 = v102;
          [v87 setObject:v40 forKeyedSubscript:v13];
        }

LABEL_62:
      }

      v94 = [(NSArray *)obj countByEnumeratingWithState:&v111 objects:v124 count:16];
    }

    while (v94);
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v99 = [v91 allValues];
  v104 = [v99 countByEnumeratingWithState:&v107 objects:v123 count:16];
  if (!v104)
  {
    goto LABEL_108;
  }

  v103 = *v108;
  do
  {
    v51 = 0;
    do
    {
      if (*v108 != v103)
      {
        objc_enumerationMutation(v99);
      }

      v52 = *(*(&v107 + 1) + 8 * v51);
      v53 = sub_100090360();
      v54 = SFNodeCopyContactIdentifier();
      if (!v54)
      {
        v54 = sub_1000904C4();
      }

      v55 = SFNodeCopyUserName();
      v56 = v55;
      if (v54)
      {
        v57 = v53;
      }

      else
      {
        v57 = 1;
      }

      if (((v54 == 0) & ~v53) != 0)
      {
        v58 = v55;
      }

      else
      {
        v58 = v54;
      }

      if (v57)
      {
        v59 = 0;
      }

      else
      {
        v59 = [(SDNodeCoalescer *)v5 mappedContactIdentifierForContactIdentifier:v54];
        v58 = v54;
      }

      v60 = v58;
      if (v60)
      {
        v61 = [v95 objectForKeyedSubscript:v60];
        v62 = [NSKeyedArchiver archivedDataWithRootObject:v61 requiringSecureCoding:1 error:0];
      }

      else
      {
        v62 = 0;
        v61 = 0;
      }

      v63 = magic_head_log();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v64 = @"mapped ID %@";
        if (!v59)
        {
          v64 = @"no mapped ID";
        }

        v116 = v61;
        v117 = 2112;
        v118 = v52;
        v119 = 2112;
        v120 = v54;
        v121 = 2112;
        v122 = v64;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "SDNodeBrowser: Setting score to %@ for node %@ with ID %@ and %@", buf, 0x2Au);
      }

      SFNodeSetRangingData();
      v106 = v56;
      if (sub_100090360())
      {
        v65 = SFNodeCopyIDSDeviceIdentifier();
        if (!v65)
        {
          v65 = SFNodeCopyComputerName();
        }

        v66 = [v100 objectForKeyedSubscript:{v65, v79}];
        SFNodeSetSiblingNodes();
        v67 = [v89 objectForKeyedSubscript:v65];
        if (v67)
        {
          SFNodeSetIconData();
        }

        v5 = v101;
        goto LABEL_98;
      }

      if (v59)
      {
        v68 = v90;
        v69 = v59;
LABEL_97:
        v66 = [v68 objectForKeyedSubscript:{v69, v79}];
        SFNodeSetSiblingNodes();
        goto LABEL_98;
      }

      if (v56)
      {
        v68 = v87;
        v69 = v56;
        goto LABEL_97;
      }

      v71 = airdrop_log();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v116 = v52;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Coalesced node %@ not handled", buf, 0xCu);
      }

      v66 = 0;
LABEL_98:
      if ([v66 count] >= 2)
      {
        v70 = airdrop_log();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
        {
          v79 = v66;
          v72 = NSPrintF();
          *buf = 138412546;
          v116 = v52;
          v117 = 2112;
          v118 = v72;
          _os_log_debug_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEBUG, "Coalesced node %@ represents nodes %@", buf, 0x16u);

          v5 = v101;
        }
      }

      v51 = v51 + 1;
    }

    while (v104 != v51);
    v73 = [v99 countByEnumeratingWithState:&v107 objects:v123 count:16];
    v104 = v73;
  }

  while (v73);
LABEL_108:

  v74 = [v91 allValues];
  coalescedNodes = v5->_coalescedNodes;
  v5->_coalescedNodes = v74;

  v76 = v5->_coalescedNodes;
  v77 = v76;

  return v76;
}

- (id)setMappedContactIdentifier:(id)a3 relatedContactIdentifiers:(id)a4
{
  v6 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v28 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v27 + 1) + 8 * v11);
      v13 = [(NSMutableDictionary *)self->_contactIdentifierMap objectForKeyedSubscript:v12];

      if (v13)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = [(NSMutableDictionary *)self->_contactIdentifierMap objectForKeyedSubscript:v12];

    if (v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v14 = v6;
LABEL_12:
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = v7;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * i);
        v21 = [(NSMutableDictionary *)self->_contactIdentifierMap objectForKeyedSubscript:v20, v23];

        if (!v21)
        {
          [(NSMutableDictionary *)self->_contactIdentifierMap setObject:v14 forKeyedSubscript:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

  return v14;
}

@end