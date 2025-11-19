@interface NRIKEv2Listener
- (NRIKEv2Listener)init;
- (NSString)description;
- (void)listener:(id)a3 receivedNewSession:(id)a4;
- (void)requestConfigurationForListener:(id)a3 session:(id)a4 sessionConfig:(id)a5 childConfig:(id)a6 validateAuthBlock:(id)a7 responseBlock:(id)a8;
@end

@implementation NRIKEv2Listener

- (void)requestConfigurationForListener:(id)a3 session:(id)a4 sessionConfig:(id)a5 childConfig:(id)a6 validateAuthBlock:(id)a7 responseBlock:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v143 = a6;
  v142 = a7;
  v17 = a8;
  v18 = v17;
  if (!v14)
  {
    v107 = sub_100014820();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v109 = sub_100014820();
      _NRLogWithArgs();
    }

    v19 = v15;
    goto LABEL_12;
  }

  v19 = v15;
  if (!v15)
  {
    v110 = sub_100014820();
    v111 = _NRLogIsLevelEnabled();

    if (v111)
    {
      v112 = sub_100014820();
      _NRLogWithArgs();
    }

    goto LABEL_12;
  }

  if (!v17)
  {
    v113 = sub_100014820();
    v114 = _NRLogIsLevelEnabled();

    if (v114)
    {
      v115 = sub_100014820();
      _NRLogWithArgs();
    }

    v18 = 0;
    goto LABEL_12;
  }

  if (self->_ikeListener != v14)
  {
    if (qword_100228E98 != -1)
    {
      dispatch_once(&qword_100228E98, &stru_1001FA1F0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228E98 != -1)
      {
        dispatch_once(&qword_100228E98, &stru_1001FA1F0);
      }

      ikeListener = self->_ikeListener;
      _NRLogWithArgs();
    }

    goto LABEL_11;
  }

  v20 = [v16 localIdentifier];
  v21 = [v20 identifierType];

  if (v21 != 11)
  {
    if (qword_100228E98 != -1)
    {
      dispatch_once(&qword_100228E98, &stru_1001FA1F0);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_11;
    }

    if (qword_100228E98 != -1)
    {
      dispatch_once(&qword_100228E98, &stru_1001FA1F0);
    }

    v45 = qword_100228E90;
    v46 = [v16 localIdentifier];
    [v46 identifierType];
LABEL_46:
    _NRLogWithArgs();

    goto LABEL_11;
  }

  v22 = [v16 remoteIdentifier];
  v23 = [v22 identifierType];

  if (v23 != 11)
  {
    if (qword_100228E98 != -1)
    {
      dispatch_once(&qword_100228E98, &stru_1001FA1F0);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_11;
    }

    if (qword_100228E98 != -1)
    {
      dispatch_once(&qword_100228E98, &stru_1001FA1F0);
    }

    v45 = qword_100228E90;
    v46 = [v16 remoteIdentifier];
    [v46 identifierType];
    goto LABEL_46;
  }

  v24 = [v16 localIdentifier];
  v145 = self;
  v141 = v18;
  if (qword_100229328 != -1)
  {
    dispatch_once(&qword_100229328, &stru_1001FC5D8);
  }

  v25 = qword_100229320;
  if (([v24 isEqual:v25] & 1) == 0)
  {

    goto LABEL_48;
  }

  v26 = [v16 remoteIdentifier];
  if (qword_100229328 != -1)
  {
    dispatch_once(&qword_100229328, &stru_1001FC5D8);
  }

  v27 = qword_100229320;
  v28 = [v26 isEqual:v27];

  if (!v28)
  {
LABEL_48:
    v47 = [v16 localIdentifier];
    if (qword_100229338 != -1)
    {
      dispatch_once(&qword_100229338, &stru_1001FC5F8);
    }

    v48 = qword_100229330;
    v137 = v15;
    if ([v47 isEqual:v48])
    {
      goto LABEL_57;
    }

    v140 = v16;
    v49 = [v16 localIdentifier];
    if (qword_100229358 != -1)
    {
      dispatch_once(&qword_100229358, &stru_1001FC638);
    }

    v50 = qword_100229350;
    if ([v49 isEqual:v50])
    {
LABEL_56:

      v16 = v140;
LABEL_57:

      goto LABEL_58;
    }

    v51 = [v140 localIdentifier];
    v52 = sub_100145D78();
    if ([v51 isEqual:v52])
    {

      goto LABEL_56;
    }

    v54 = [v140 localIdentifier];
    v55 = sub_100145EB0();
    v56 = [v54 isEqual:v55];

    v16 = v140;
    if (v56)
    {
LABEL_58:
      pairingManager = v145->_pairingManager;
      v19 = v137;
      v18 = v141;
      if (pairingManager)
      {
        [(NRDevicePairingManagerContext *)pairingManager requestConfigurationForListener:v14 session:v137 sessionConfig:v16 childConfig:v143 validateAuthBlock:v142 responseBlock:v141];
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v57 = [v140 localIdentifier];
    v58 = [v140 remoteIdentifier];
    v59 = [v57 isEqual:v58];

    v147 = v59;
    if (v59)
    {
      v151 = 0u;
      v152 = 0u;
      v153 = 0u;
      v154 = 0u;
      v60 = sub_10016C8BC();
      v61 = [(NRDDecryptedIdentifier *)v60 countByEnumeratingWithState:&v151 objects:v159 count:16];
      v19 = v137;
      if (v61)
      {
        v62 = *v152;
LABEL_67:
        v63 = 0;
        while (1)
        {
          if (*v152 != v62)
          {
            objc_enumerationMutation(v60);
          }

          v64 = *(*(&v151 + 1) + 8 * v63);
          v65 = sub_100163A30(NRDLocalDevice, v64);
          v66 = v65;
          if ((!v65 || (v65[49] & 2) == 0) && sub_10013FF60(v65) == 1)
          {
            break;
          }

          if (v61 == ++v63)
          {
            v61 = [(NRDDecryptedIdentifier *)v60 countByEnumeratingWithState:&v151 objects:v159 count:16];
            if (!v61)
            {
              goto LABEL_79;
            }

            goto LABEL_67;
          }
        }

        v61 = v64;
        if (qword_100228E98 != -1)
        {
          dispatch_once(&qword_100228E98, &stru_1001FA1F0);
        }

        if (_NRLogIsLevelEnabled())
        {
          v67 = sub_100014820();
          v129 = v145;
          v130 = v61;
          v128 = 704;
          v126 = "";
          v127 = "[NRIKEv2Listener requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]";
          _NRLogWithArgs();
        }
      }

LABEL_79:

LABEL_85:
      v18 = v141;
      if (v61)
      {
        v80 = sub_100163B2C(NRDLocalDevice, v61, 0);
        v81 = v80;
        if (!v80 || (*(v80 + 48) & 2) == 0)
        {
          v82 = sub_100014820();
          v83 = _NRLogIsLevelEnabled();

          if (v83)
          {
            v84 = sub_100014820();
            _NRLogWithArgs();
          }

          v16 = v140;
          goto LABEL_11;
        }

        v85 = v141;
        v86 = [v19 ikeInterfaceName];
        v87 = [v19 localEndpoint];
        v88 = sub_100014934(v145, v86, v87, v61);

        v89 = sub_100014820();
        LODWORD(v87) = _NRLogIsLevelEnabled();

        if (v87)
        {
          v90 = sub_100014820();
          if (v145)
          {
            links = v145->_links;
          }

          else
          {
            links = 0;
          }

          v135 = v140;
          v136 = v143;
          v133 = v19;
          v134 = links;
          v128 = 725;
          v129 = v145;
          v130 = v88;
          v126 = "";
          v127 = "[NRIKEv2Listener requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]";
          _NRLogWithArgs();
        }

        if (v88)
        {
          if (v145)
          {
            v92 = v145->_links;
          }

          else
          {
            v92 = 0;
          }

          v93 = [(NSMutableDictionary *)v92 objectForKeyedSubscript:v88, v126, v127, v128, v129, v130, v133, v134, v135, v136];
          v94 = v93;
          if (v93)
          {
            v95 = *(v93 + 24);
            if (v95)
            {
              v96 = v95;
              v97 = [v94[3] state];

              if (v97 != 255)
              {
                v98 = v94[3];
                if (v98)
                {
                  v99 = v98;
                  v100 = v94;
LABEL_111:
                  if (v147)
                  {
                    v106 = v141;
                  }

                  else
                  {
                    v148[0] = _NSConcreteStackBlock;
                    v148[1] = 3221225472;
                    v148[2] = sub_100014FE4;
                    v148[3] = &unk_1001FA1D0;
                    v150 = v141;
                    v149 = v61;
                    v106 = objc_retainBlock(v148);
                  }

                  v85 = v106;
                  [v99 requestConfigurationForListener:v14 session:v19 sessionConfig:v140 childConfig:v143 validateAuthBlock:v142 responseBlock:v106];

                  goto LABEL_127;
                }
              }
            }
          }

          if (v145)
          {
            pairingClients = v145->_pairingClients;
          }

          else
          {
            pairingClients = 0;
          }

          v100 = [(NSMutableDictionary *)pairingClients objectForKeyedSubscript:v88];

          if (v100)
          {
            v102 = v100[4];
            if (v102)
            {
              v103 = v100[4];
              if (v103)
              {
                v104 = v103[8];

                if (v104 == 6)
                {
                  goto LABEL_113;
                }
              }

              else
              {
              }

              v105 = v100[4];
              if (v105)
              {
                v99 = v105;
                goto LABEL_111;
              }
            }
          }

LABEL_113:
          sub_100014ABC(&v145->super.isa, v19, v140, v143, v142, v141, v88);
LABEL_127:

          v16 = v140;
          v18 = v85;
          goto LABEL_12;
        }

        v16 = v140;
        v18 = v141;
      }

      else
      {
        sub_100014874(v145, 3022, v74, v75, v76, v77, v78, v79, v19);
        v16 = v140;
      }

LABEL_11:
      v18[2](v18, 0, 0, 0);
      goto LABEL_12;
    }

    v68 = [v140 remoteIdentifier];
    v69 = [v140 localIdentifier];
    v19 = v137;
    v60 = sub_1001646B4(NRDLocalDevice, v68, v69, v137);

    v70 = sub_100014820();
    if (v60)
    {
      v71 = _NRLogIsLevelEnabled();

      if (v71)
      {
        v72 = sub_100014820();
        v129 = v145;
        v130 = v60->_identity;
        v128 = 687;
        v126 = "";
        v127 = "[NRIKEv2Listener requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]";
        _NRLogWithArgs();
      }

      v73 = v60->_nrUUID;

      if (v73)
      {
        v61 = v60->_nrUUID;
        goto LABEL_85;
      }

      v124 = sub_100014820();
      v125 = _NRLogIsLevelEnabled();

      if (v125)
      {
        v123 = sub_100014820();
        v132 = v60->_identity;
        _NRLogWithArgs();

        goto LABEL_133;
      }
    }

    else
    {
      v116 = _NRLogIsLevelEnabled();

      if (v116)
      {
        v123 = sub_100014820();
        _NRLogWithArgs();
LABEL_133:
      }
    }

    v19 = v137;
    sub_100014874(v145, 3023, v117, v118, v119, v120, v121, v122, v137);

LABEL_135:
    v16 = v140;
    v18 = v141;
    goto LABEL_11;
  }

  v139 = v14;
  v140 = v16;
  v144 = [v15 localEndpoint];
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v29 = v145;
  v30 = v145->_pairingClients;
  v31 = [(NSMutableDictionary *)v30 countByEnumeratingWithState:&v155 objects:v160 count:16];
  if (!v31)
  {

    goto LABEL_135;
  }

  v32 = v31;
  v138 = 0;
  v33 = *v156;
  do
  {
    v34 = 0;
    v146 = v32;
    do
    {
      if (*v156 != v33)
      {
        objc_enumerationMutation(v30);
      }

      v35 = [(NSMutableDictionary *)v29->_pairingClients objectForKeyedSubscript:*(*(&v155 + 1) + 8 * v34)];
      v36 = v35;
      if (v35 && *(v35 + 32))
      {
        v37 = *(v35 + 8);
        v38 = [v19 ikeInterfaceName];
        if ([v37 isEqualToString:v38])
        {
          [v36[2] hostname];
          v39 = v33;
          v41 = v40 = v30;
          [v144 hostname];
          v43 = v42 = v19;
          v44 = [v41 isEqualToString:v43];

          v19 = v42;
          v29 = v145;

          v30 = v40;
          v33 = v39;
          v32 = v146;

          if (v44)
          {
            [v36[4] requestConfigurationForListener:v139 session:v19 sessionConfig:v140 childConfig:v143 validateAuthBlock:v142 responseBlock:v141];
            v138 = 1;
          }
        }

        else
        {
        }
      }

      v34 = v34 + 1;
    }

    while (v32 != v34);
    v32 = [(NSMutableDictionary *)v30 countByEnumeratingWithState:&v155 objects:v160 count:16];
  }

  while (v32);

  v14 = v139;
  v16 = v140;
  v18 = v141;
  if ((v138 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
}

- (void)listener:(id)a3 receivedNewSession:(id)a4
{
  v11 = a3;
  v5 = a4;
  if (!v11)
  {
    v6 = sub_100014820();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_9;
    }

LABEL_15:
    v10 = sub_100014820();
    _NRLogWithArgs();

    goto LABEL_9;
  }

  if (!v5)
  {
    v8 = sub_100014820();
    v9 = _NRLogIsLevelEnabled();

    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (qword_100228E98 != -1)
  {
    dispatch_once(&qword_100228E98, &stru_1001FA1F0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228E98 != -1)
    {
      dispatch_once(&qword_100228E98, &stru_1001FA1F0);
    }

    _NRLogWithArgs();
  }

LABEL_9:
}

- (NRIKEv2Listener)init
{
  v12.receiver = self;
  v12.super_class = NRIKEv2Listener;
  v2 = [(NRIKEv2Listener *)&v12 init];
  if (!v2)
  {
    v7 = sub_100014820();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_100014820();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v10 = *__error();
    v11 = _os_log_pack_fill();
    *v11 = 136446210;
    *(v11 + 4) = "[NRIKEv2Listener init]";
    sub_100014820();
    _NRLogAbortWithPack();
  }

  v3 = v2;
  v4 = sub_100003490();
  queue = v3->_queue;
  v3->_queue = v4;

  return v3;
}

- (NSString)description
{
  if (self)
  {
    self = [[NSString alloc] initWithFormat:@"NRIKEv2Listener[%@]", @"62743"];
    v2 = vars8;
  }

  return self;
}

@end