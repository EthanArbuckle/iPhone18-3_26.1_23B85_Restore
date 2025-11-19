@interface NRPairingClient
- (NSString)description;
- (void)dealloc;
- (void)requestConfigurationForListener:(id)a3 session:(id)a4 sessionConfig:(id)a5 childConfig:(id)a6 validateAuthBlock:(id)a7 responseBlock:(id)a8;
@end

@implementation NRPairingClient

- (void)requestConfigurationForListener:(id)a3 session:(id)a4 sessionConfig:(id)a5 childConfig:(id)a6 validateAuthBlock:(id)a7 responseBlock:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (qword_100228E78 != -1)
  {
    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    v149 = v16;
    v151 = v17;
    v142 = 1621;
    v143 = self;
    v144 = v14;
    v146 = v15;
    v140 = "";
    v141 = "[NRPairingClient requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]";
    _NRLogWithArgs();
  }

  if ((self->_state & 0xFE) != 6)
  {
    v169 = v15;
    v170 = v19;
    v20 = [v16 localIdentifier];
    v21 = [v20 identifierType];

    if (v21 == 11)
    {
      v22 = [v16 remoteIdentifier];
      v23 = [v22 identifierType];

      if (v23 == 11)
      {
        v167 = self;
        v165 = sub_100163A30(NRDLocalDevice, self->_nrUUID);
        v24 = [v16 localIdentifier];
        v25 = [v16 remoteIdentifier];
        v26 = [v24 isEqual:v25];

        v166 = v18;
        v163 = v26;
        v164 = v14;
        if (v26)
        {
          goto LABEL_29;
        }

        v27 = [v16 localIdentifier];
        if (qword_1002292E8 != -1)
        {
          dispatch_once(&qword_1002292E8, &stru_1001FC558);
        }

        v28 = v167;
        v29 = qword_1002292E0;
        if (([v27 isEqual:v29] & 1) == 0)
        {
          v30 = [v16 localIdentifier];
          if (qword_1002292F8 != -1)
          {
            dispatch_once(&qword_1002292F8, &stru_1001FC578);
          }

          v31 = qword_1002292F0;
          if (([v30 isEqual:v31] & 1) == 0)
          {
            v84 = [v16 localIdentifier];
            v158 = v30;
            v85 = sub_100145B5C();
            v161 = [v84 isEqual:v85];

            v28 = v167;
            if ((v161 & 1) == 0)
            {
              v15 = v169;
              if (qword_100228E78 != -1)
              {
                dispatch_once(&qword_100228E78, &stru_1001FA0E8);
              }

              v14 = v164;
              v44 = v165;
              v18 = v166;
              v19 = v170;
              if (!_NRLogIsLevelEnabled())
              {
                goto LABEL_131;
              }

              v86 = sub_10000A838();
              v87 = [v16 localIdentifier];
              v147 = [v16 remoteIdentifier];
              _NRLogWithArgs();

              v15 = v169;
              v18 = v166;

              goto LABEL_130;
            }

LABEL_19:
            v32 = [v16 remoteIdentifier];
            v33 = [v16 localIdentifier];
            v34 = sub_1001646B4(NRDLocalDevice, v32, v33, v169);

            if (v34)
            {
              if (qword_100228E78 != -1)
              {
                dispatch_once(&qword_100228E78, &stru_1001FA0E8);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (qword_100228E78 != -1)
                {
                  dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                }

                v35 = qword_100228E70;
                v143 = v28;
                v144 = v34->_identity;
                v142 = 1658;
                v140 = "";
                v141 = "[NRPairingClient requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]";
                _NRLogWithArgs();
              }

              v36 = v34->_nrUUID;

              if (v36)
              {
                v37 = v34->_nrUUID;
                v38 = [(NSUUID *)v37 isEqual:v28->_nrUUID];

                if (v38)
                {

LABEL_29:
                  v39 = [v16 localIdentifier];
                  if (qword_100229328 != -1)
                  {
                    dispatch_once(&qword_100229328, &stru_1001FC5D8);
                  }

                  v40 = v167;
                  v41 = qword_100229320;
                  v42 = [v39 isEqual:v41];

                  if (v42)
                  {
                    sub_10000A944(v167, &v167->_ikeSessionPairing);
                    objc_storeStrong(&v167->_ikeSessionPairing, a4);
                    sub_10000AAB8(v167);
                    v43 = [[NEIKEv2AuthenticationProtocol alloc] initWithMethod:2];
                    if (qword_100229328 != -1)
                    {
                      dispatch_once(&qword_100229328, &stru_1001FC5D8);
                    }

                    v44 = v165;
                    v45 = qword_100229320;
                    v46 = sub_1001472F0(0, v45, v43);

                    if (v165)
                    {
                      v47 = *(v165 + 176);
                      if (v47)
                      {
                        v47 = v47[2];
                      }

                      v48 = v47;
                    }

                    else
                    {
                      v48 = 0;
                    }

                    [v46 setSharedSecret:v48];

                    v49 = [v46 sharedSecret];

                    if (v49)
                    {
                      if (v46)
                      {
                        if (qword_100228E78 != -1)
                        {
                          dispatch_once(&qword_100228E78, &stru_1001FA0E8);
                        }

                        if (_NRLogIsLevelEnabled())
                        {
                          v50 = sub_10000A838();
                          _NRLogWithArgs();
                        }

                        nrUUID = v167->_nrUUID;
                        v171[0] = _NSConcreteStackBlock;
                        v171[1] = 3221225472;
                        v171[2] = sub_10000B048;
                        v171[3] = &unk_1001FB178;
                        v171[4] = v167;
                        v172 = v46;
                        v173 = v17;
                        v174 = v170;
                        v52 = v46;
                        v19 = v170;
                        sub_10016D738(NRDLocalDevice, nrUUID, 1, 0, v171);

                        goto LABEL_89;
                      }

                      v19 = v170;
                      v170[2](v170, 0, 0, 0);
                    }

                    else
                    {
                      v121 = sub_10000A838();
                      IsLevelEnabled = _NRLogIsLevelEnabled();

                      v19 = v170;
                      if (IsLevelEnabled)
                      {
                        v123 = sub_10000A838();
                        _NRLogWithArgs();

                        v19 = v170;
                      }
                    }

LABEL_89:
                    v14 = v164;
                    v15 = v169;
                    v18 = v166;
LABEL_131:

                    goto LABEL_132;
                  }

                  v55 = [v16 localIdentifier];
                  if (qword_1002292E8 != -1)
                  {
                    dispatch_once(&qword_1002292E8, &stru_1001FC558);
                  }

                  v56 = qword_1002292E0;
                  if (([v55 isEqual:v56] & 1) == 0)
                  {
                    v57 = [v16 localIdentifier];
                    if (qword_1002292F8 != -1)
                    {
                      dispatch_once(&qword_1002292F8, &stru_1001FC578);
                    }

                    v58 = qword_1002292F0;
                    if (([v57 isEqual:v58] & 1) == 0)
                    {
                      v88 = [v16 localIdentifier];
                      v89 = sub_100145B5C();
                      v162 = [v88 isEqual:v89];

                      if ((v162 & 1) == 0)
                      {
                        v90 = sub_10000A838();
                        v91 = _NRLogIsLevelEnabled();

                        v14 = v164;
                        v15 = v169;
                        if (v91)
                        {
                          v92 = sub_10000A838();
                          v145 = [v16 localIdentifier];
                          _NRLogWithArgs();
                        }

                        v19 = v170;
                        v170[2](v170, 0, 0, 0);
                        v18 = v166;
                        v44 = v165;
                        goto LABEL_131;
                      }

LABEL_66:
                      v59 = [v16 localIdentifier];
                      if (qword_1002292F8 != -1)
                      {
                        dispatch_once(&qword_1002292F8, &stru_1001FC578);
                      }

                      v60 = qword_1002292F0;
                      v61 = [v59 isEqual:v60];

                      if (v61)
                      {
                        v62 = 3;
                      }

                      else
                      {
                        v63 = [v16 localIdentifier];
                        if (qword_100229308 != -1)
                        {
                          dispatch_once(&qword_100229308, &stru_1001FC598);
                        }

                        v64 = qword_100229300;
                        v65 = [v63 isEqual:v64];

                        if (v65)
                        {
                          v62 = 1;
                        }

                        else
                        {
                          v62 = 4;
                        }
                      }

                      v18 = v166;
                      v15 = v169;
                      v66 = v169;
                      v67 = v166;
                      if ((v167->_state & 0xFE) == 6)
                      {
                        v68 = 0;
                        v44 = v165;
LABEL_113:

                        if (v17)
                        {
                          v114 = *(v40 + 40);
                          if (v114 && (v115 = v114[11], v114, v115 == 1))
                          {
                            v116 = sub_100146D34(1, 1);
                          }

                          else
                          {
                            v116 = sub_1001472AC();
                          }

                          v117 = v116;
                        }

                        else
                        {
                          v117 = 0;
                        }

                        v118 = v163;
                        if (!v68)
                        {
                          v118 = 1;
                        }

                        if ((v118 & 1) == 0)
                        {
                          sub_100171DA0(NRDLocalDevice, *(v40 + 24));
                        }

                        if (v117)
                        {
                          v119 = *(v40 + 40);
                          if (v119)
                          {
                            v120 = *(v119 + 40);
                          }

                          (v170[2])(v170, v68, v117);
                        }

                        else
                        {
                          (v170[2])(v170, v68, 0);
                        }

                        v14 = v164;
                        goto LABEL_130;
                      }

                      if (!v66)
                      {
                        v137 = sub_10000A838();
                        v138 = _NRLogIsLevelEnabled();

                        if (v138)
                        {
                          v139 = sub_10000A838();
                          _NRLogWithArgs();
                        }

                        v68 = 0;
                        v40 = v167;
                        v15 = v169;
                        v18 = v166;
                        v44 = v165;
                        goto LABEL_113;
                      }

                      String = NRDataProtectionClassCreateString();
                      v168 = sub_100163A30(NRDLocalDevice, v167->_nrUUID);
                      v70 = sub_100164D70(v168, v62);
                      v155 = String;
                      v156 = v70;
                      if (v70)
                      {
                        v71 = *(v70 + 1);
                      }

                      else
                      {
                        v71 = 0;
                      }

                      v72 = v71;

                      v157 = v67;
                      v160 = v66;
                      if (!v72)
                      {
                        v93 = v168;
                        v94 = v155;
                        sub_10000A88C(v40, 3019, @"%@ %@ %@", v73, v74, v75, v76, v77, v155);
                        v68 = 0;
                        v44 = v165;
LABEL_112:

                        v67 = v157;
                        v66 = v160;
                        goto LABEL_113;
                      }

                      v78 = *(v40 + 40);
                      if (!v78)
                      {
                        v159 = 0;
                        v81 = 0;
                        v79 = v168;
LABEL_105:
                        v153 = sub_100147400(0, v79, v62);
                        v154 = v81;
                        if (v81 && v159)
                        {
                          v97 = [NEIKEv2ConfigurationMessage alloc];
                          v152 = [[NEIKEv2InitiatorTransportIPv6Address alloc] initWithAddress:v159];
                          v175[0] = v152;
                          v98 = [[NEIKEv2ResponderTransportIPv6Address alloc] initWithAddress:v154];
                          v175[1] = v98;
                          v99 = [NSArray arrayWithObjects:v175 count:2];
                          v100 = [v97 initWithWithAttributes:v99];
                          [v153 setConfigurationReply:v100];

                          v18 = v166;
                        }

                        v101 = sub_10000B384(v40, 1);
                        [v153 setCustomIKEAuthPrivateNotifies:v101];
                        v94 = v155;
                        if ((*(v67 + 2))(v67, v153))
                        {
                          v107 = sub_10000BA30(v40, v62);
                          sub_10000A944(v40, v107);
                          v108 = sub_10000BA30(v40, v62);
                          objc_storeStrong(v108, a4);
                          sub_10000BBA4(v40, v62);
                          sub_10000A88C(v40, 3016, @"%@ %@", v109, v110, v111, v112, v113, v155);
                          v68 = v153;
                        }

                        else
                        {
                          sub_10000A88C(v40, 3021, @"%@ %@", v102, v103, v104, v105, v106, v155);
                          v68 = 0;
                        }

                        v44 = v165;

                        v93 = v168;
                        v15 = v169;
                        goto LABEL_112;
                      }

                      v79 = v168;
                      if (*(v78 + 11) == 1)
                      {
                        if (v62 == 3)
                        {
                          if (v168)
                          {
                            v95 = sub_100003490();
                            dispatch_assert_queue_V2(v95);

                            v81 = sub_1001679E0(v168, @"0");
                            v96 = sub_100003490();
                            dispatch_assert_queue_V2(v96);

                            v83 = sub_100167B9C(v168, @"0");
                            goto LABEL_103;
                          }

LABEL_151:
                          v159 = 0;
                          v81 = 0;
                          goto LABEL_104;
                        }

                        if (v62 == 4)
                        {
                          if (v168)
                          {
                            v80 = sub_100003490();
                            dispatch_assert_queue_V2(v80);

                            v81 = sub_1001672A0(v168, @"0");
                            v82 = sub_100003490();
                            dispatch_assert_queue_V2(v82);

                            v83 = sub_1001677D0(v168, @"0");
LABEL_103:
                            v159 = v83;
LABEL_104:
                            v18 = v166;
                            goto LABEL_105;
                          }

                          goto LABEL_151;
                        }
                      }

                      v159 = 0;
                      v81 = 0;
                      goto LABEL_105;
                    }
                  }

                  goto LABEL_66;
                }

                v135 = sub_10000A838();
                v136 = _NRLogIsLevelEnabled();

                v28 = v167;
                if (v136)
                {
                  v131 = sub_10000A838();
                  v134 = v34->_identity;
                  v148 = v34->_nrUUID;
                  v150 = v167->_nrUUID;
                  _NRLogWithArgs();

                  goto LABEL_141;
                }
              }

              else
              {
                v132 = sub_10000A838();
                v133 = _NRLogIsLevelEnabled();

                if (v133)
                {
                  v131 = sub_10000A838();
                  v134 = v34->_identity;
                  _NRLogWithArgs();
LABEL_141:

                  goto LABEL_142;
                }
              }
            }

            else
            {
              v124 = sub_10000A838();
              v125 = _NRLogIsLevelEnabled();

              if (v125)
              {
                v131 = sub_10000A838();
                _NRLogWithArgs();
LABEL_142:

                v28 = v167;
              }
            }

            v44 = v165;
            sub_10000A88C(v28, 3023, @"%@ %@", v126, v127, v128, v129, v130, v169);

            v15 = v169;
            v14 = v164;
            v18 = v166;
LABEL_130:
            v19 = v170;
            goto LABEL_131;
          }
        }

        goto LABEL_19;
      }

      if (qword_100228E78 != -1)
      {
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
      }

      v15 = v169;
      v19 = v170;
      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228E78 != -1)
        {
          dispatch_once(&qword_100228E78, &stru_1001FA0E8);
        }

        v53 = qword_100228E70;
        v54 = [v16 remoteIdentifier];
        [v54 identifierType];
LABEL_57:
        _NRLogWithArgs();

        v15 = v169;
        v19 = v170;
      }
    }

    else
    {
      if (qword_100228E78 != -1)
      {
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
      }

      v15 = v169;
      v19 = v170;
      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228E78 != -1)
        {
          dispatch_once(&qword_100228E78, &stru_1001FA0E8);
        }

        v53 = qword_100228E70;
        v54 = [v16 localIdentifier];
        [v54 identifierType];
        goto LABEL_57;
      }
    }
  }

LABEL_132:
}

- (NSString)description
{
  v3 = objc_alloc_init(NSMutableString);
  identifier = self->_identifier;
  if (self->_state - 1 > 6)
  {
    v5 = @"Invalid";
  }

  else
  {
    v5 = *(&off_1001FA148 + (self->_state - 1));
  }

  nrUUID = self->_nrUUID;
  v6 = v3;
  [v3 appendFormat:@"NRPairingClient[%llu, %@, %@]", identifier, v5, nrUUID];

  return v6;
}

- (void)dealloc
{
  if (qword_100228E78 != -1)
  {
    dispatch_once(&qword_100228E78, &stru_1001FA0E8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228E78 != -1)
    {
      dispatch_once(&qword_100228E78, &stru_1001FA0E8);
    }

    _NRLogWithArgs();
  }

  sub_10000CCF0(self);
  v3.receiver = self;
  v3.super_class = NRPairingClient;
  [(NRPairingClient *)&v3 dealloc];
}

@end