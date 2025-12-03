@interface NRPairingClient
- (NSString)description;
- (void)dealloc;
- (void)requestConfigurationForListener:(id)listener session:(id)session sessionConfig:(id)config childConfig:(id)childConfig validateAuthBlock:(id)block responseBlock:(id)responseBlock;
@end

@implementation NRPairingClient

- (void)requestConfigurationForListener:(id)listener session:(id)session sessionConfig:(id)config childConfig:(id)childConfig validateAuthBlock:(id)block responseBlock:(id)responseBlock
{
  listenerCopy = listener;
  sessionCopy = session;
  configCopy = config;
  childConfigCopy = childConfig;
  blockCopy = block;
  responseBlockCopy = responseBlock;
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

    v149 = configCopy;
    v151 = childConfigCopy;
    v142 = 1621;
    selfCopy = self;
    v144 = listenerCopy;
    v146 = sessionCopy;
    v140 = "";
    v141 = "[NRPairingClient requestConfigurationForListener:session:sessionConfig:childConfig:validateAuthBlock:responseBlock:]";
    _NRLogWithArgs();
  }

  if ((self->_state & 0xFE) != 6)
  {
    v169 = sessionCopy;
    v170 = responseBlockCopy;
    localIdentifier = [configCopy localIdentifier];
    identifierType = [localIdentifier identifierType];

    if (identifierType == 11)
    {
      remoteIdentifier = [configCopy remoteIdentifier];
      identifierType2 = [remoteIdentifier identifierType];

      if (identifierType2 == 11)
      {
        selfCopy2 = self;
        v165 = sub_100163A30(NRDLocalDevice, self->_nrUUID);
        localIdentifier2 = [configCopy localIdentifier];
        remoteIdentifier2 = [configCopy remoteIdentifier];
        v26 = [localIdentifier2 isEqual:remoteIdentifier2];

        v166 = blockCopy;
        v163 = v26;
        v164 = listenerCopy;
        if (v26)
        {
          goto LABEL_29;
        }

        localIdentifier3 = [configCopy localIdentifier];
        if (qword_1002292E8 != -1)
        {
          dispatch_once(&qword_1002292E8, &stru_1001FC558);
        }

        v28 = selfCopy2;
        v29 = qword_1002292E0;
        if (([localIdentifier3 isEqual:v29] & 1) == 0)
        {
          localIdentifier4 = [configCopy localIdentifier];
          if (qword_1002292F8 != -1)
          {
            dispatch_once(&qword_1002292F8, &stru_1001FC578);
          }

          v31 = qword_1002292F0;
          if (([localIdentifier4 isEqual:v31] & 1) == 0)
          {
            localIdentifier5 = [configCopy localIdentifier];
            v158 = localIdentifier4;
            v85 = sub_100145B5C();
            v161 = [localIdentifier5 isEqual:v85];

            v28 = selfCopy2;
            if ((v161 & 1) == 0)
            {
              sessionCopy = v169;
              if (qword_100228E78 != -1)
              {
                dispatch_once(&qword_100228E78, &stru_1001FA0E8);
              }

              listenerCopy = v164;
              v44 = v165;
              blockCopy = v166;
              responseBlockCopy = v170;
              if (!_NRLogIsLevelEnabled())
              {
                goto LABEL_131;
              }

              v86 = sub_10000A838();
              localIdentifier6 = [configCopy localIdentifier];
              remoteIdentifier3 = [configCopy remoteIdentifier];
              _NRLogWithArgs();

              sessionCopy = v169;
              blockCopy = v166;

              goto LABEL_130;
            }

LABEL_19:
            remoteIdentifier4 = [configCopy remoteIdentifier];
            localIdentifier7 = [configCopy localIdentifier];
            v34 = sub_1001646B4(NRDLocalDevice, remoteIdentifier4, localIdentifier7, v169);

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
                selfCopy = v28;
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
                  localIdentifier8 = [configCopy localIdentifier];
                  if (qword_100229328 != -1)
                  {
                    dispatch_once(&qword_100229328, &stru_1001FC5D8);
                  }

                  v40 = selfCopy2;
                  v41 = qword_100229320;
                  v42 = [localIdentifier8 isEqual:v41];

                  if (v42)
                  {
                    sub_10000A944(selfCopy2, &selfCopy2->_ikeSessionPairing);
                    objc_storeStrong(&selfCopy2->_ikeSessionPairing, session);
                    sub_10000AAB8(selfCopy2);
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

                    sharedSecret = [v46 sharedSecret];

                    if (sharedSecret)
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

                        nrUUID = selfCopy2->_nrUUID;
                        v171[0] = _NSConcreteStackBlock;
                        v171[1] = 3221225472;
                        v171[2] = sub_10000B048;
                        v171[3] = &unk_1001FB178;
                        v171[4] = selfCopy2;
                        v172 = v46;
                        v173 = childConfigCopy;
                        v174 = v170;
                        v52 = v46;
                        responseBlockCopy = v170;
                        sub_10016D738(NRDLocalDevice, nrUUID, 1, 0, v171);

                        goto LABEL_89;
                      }

                      responseBlockCopy = v170;
                      v170[2](v170, 0, 0, 0);
                    }

                    else
                    {
                      v121 = sub_10000A838();
                      IsLevelEnabled = _NRLogIsLevelEnabled();

                      responseBlockCopy = v170;
                      if (IsLevelEnabled)
                      {
                        v123 = sub_10000A838();
                        _NRLogWithArgs();

                        responseBlockCopy = v170;
                      }
                    }

LABEL_89:
                    listenerCopy = v164;
                    sessionCopy = v169;
                    blockCopy = v166;
LABEL_131:

                    goto LABEL_132;
                  }

                  localIdentifier9 = [configCopy localIdentifier];
                  if (qword_1002292E8 != -1)
                  {
                    dispatch_once(&qword_1002292E8, &stru_1001FC558);
                  }

                  v56 = qword_1002292E0;
                  if (([localIdentifier9 isEqual:v56] & 1) == 0)
                  {
                    localIdentifier10 = [configCopy localIdentifier];
                    if (qword_1002292F8 != -1)
                    {
                      dispatch_once(&qword_1002292F8, &stru_1001FC578);
                    }

                    v58 = qword_1002292F0;
                    if (([localIdentifier10 isEqual:v58] & 1) == 0)
                    {
                      localIdentifier11 = [configCopy localIdentifier];
                      v89 = sub_100145B5C();
                      v162 = [localIdentifier11 isEqual:v89];

                      if ((v162 & 1) == 0)
                      {
                        v90 = sub_10000A838();
                        v91 = _NRLogIsLevelEnabled();

                        listenerCopy = v164;
                        sessionCopy = v169;
                        if (v91)
                        {
                          v92 = sub_10000A838();
                          localIdentifier12 = [configCopy localIdentifier];
                          _NRLogWithArgs();
                        }

                        responseBlockCopy = v170;
                        v170[2](v170, 0, 0, 0);
                        blockCopy = v166;
                        v44 = v165;
                        goto LABEL_131;
                      }

LABEL_66:
                      localIdentifier13 = [configCopy localIdentifier];
                      if (qword_1002292F8 != -1)
                      {
                        dispatch_once(&qword_1002292F8, &stru_1001FC578);
                      }

                      v60 = qword_1002292F0;
                      v61 = [localIdentifier13 isEqual:v60];

                      if (v61)
                      {
                        v62 = 3;
                      }

                      else
                      {
                        localIdentifier14 = [configCopy localIdentifier];
                        if (qword_100229308 != -1)
                        {
                          dispatch_once(&qword_100229308, &stru_1001FC598);
                        }

                        v64 = qword_100229300;
                        v65 = [localIdentifier14 isEqual:v64];

                        if (v65)
                        {
                          v62 = 1;
                        }

                        else
                        {
                          v62 = 4;
                        }
                      }

                      blockCopy = v166;
                      sessionCopy = v169;
                      v66 = v169;
                      v67 = v166;
                      if ((selfCopy2->_state & 0xFE) == 6)
                      {
                        v68 = 0;
                        v44 = v165;
LABEL_113:

                        if (childConfigCopy)
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

                        listenerCopy = v164;
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
                        v40 = selfCopy2;
                        sessionCopy = v169;
                        blockCopy = v166;
                        v44 = v165;
                        goto LABEL_113;
                      }

                      String = NRDataProtectionClassCreateString();
                      v168 = sub_100163A30(NRDLocalDevice, selfCopy2->_nrUUID);
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

                          blockCopy = v166;
                        }

                        v101 = sub_10000B384(v40, 1);
                        [v153 setCustomIKEAuthPrivateNotifies:v101];
                        v94 = v155;
                        if ((*(v67 + 2))(v67, v153))
                        {
                          v107 = sub_10000BA30(v40, v62);
                          sub_10000A944(v40, v107);
                          v108 = sub_10000BA30(v40, v62);
                          objc_storeStrong(v108, session);
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
                        sessionCopy = v169;
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
                            blockCopy = v166;
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

                v28 = selfCopy2;
                if (v136)
                {
                  v131 = sub_10000A838();
                  v134 = v34->_identity;
                  v148 = v34->_nrUUID;
                  v150 = selfCopy2->_nrUUID;
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

                v28 = selfCopy2;
              }
            }

            v44 = v165;
            sub_10000A88C(v28, 3023, @"%@ %@", v126, v127, v128, v129, v130, v169);

            sessionCopy = v169;
            listenerCopy = v164;
            blockCopy = v166;
LABEL_130:
            responseBlockCopy = v170;
            goto LABEL_131;
          }
        }

        goto LABEL_19;
      }

      if (qword_100228E78 != -1)
      {
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
      }

      sessionCopy = v169;
      responseBlockCopy = v170;
      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228E78 != -1)
        {
          dispatch_once(&qword_100228E78, &stru_1001FA0E8);
        }

        v53 = qword_100228E70;
        remoteIdentifier5 = [configCopy remoteIdentifier];
        [remoteIdentifier5 identifierType];
LABEL_57:
        _NRLogWithArgs();

        sessionCopy = v169;
        responseBlockCopy = v170;
      }
    }

    else
    {
      if (qword_100228E78 != -1)
      {
        dispatch_once(&qword_100228E78, &stru_1001FA0E8);
      }

      sessionCopy = v169;
      responseBlockCopy = v170;
      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228E78 != -1)
        {
          dispatch_once(&qword_100228E78, &stru_1001FA0E8);
        }

        v53 = qword_100228E70;
        remoteIdentifier5 = [configCopy localIdentifier];
        [remoteIdentifier5 identifierType];
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