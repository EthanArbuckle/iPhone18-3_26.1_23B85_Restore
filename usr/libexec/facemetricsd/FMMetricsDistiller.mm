@interface FMMetricsDistiller
+ (id)packetFromMetrics:(id)metrics withSessionId:(unint64_t)id andUnlockSessionId:(unint64_t)sessionId withSecondsFromStart:(double)start andMessageSessionId:(unint64_t)messageSessionId withSecondsFromStart:(double)fromStart;
@end

@implementation FMMetricsDistiller

+ (id)packetFromMetrics:(id)metrics withSessionId:(unint64_t)id andUnlockSessionId:(unint64_t)sessionId withSecondsFromStart:(double)start andMessageSessionId:(unint64_t)messageSessionId withSecondsFromStart:(double)fromStart
{
  metricsCopy = metrics;
  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  memset(v138, 0, sizeof(v138));
  v137 = 0u;
  v136 = 0u;
  memset(v135, 0, sizeof(v135));
  v134 = 5;
  v14 = sessionId != 0;
  v15 = 2;
  if (sessionId)
  {
    v15 = 3;
  }

  if (messageSessionId)
  {
    v14 = v15;
  }

  *(&v135[1] + 12) = v14;
  *(&v135[1] + 4) = id;
  *(&v135[2] + 4) = sessionId;
  *(&v135[2] + 12) = start;
  *(&v135[3] + 4) = messageSessionId;
  *(&v135[3] + 12) = fromStart;
  v16 = sub_100004784();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219008;
    sessionIdCopy = sessionId;
    v126 = 2048;
    startCopy = start;
    v128 = 2048;
    messageSessionIdCopy = messageSessionId;
    v130 = 2048;
    fromStartCopy = fromStart;
    v132 = 2048;
    idCopy = id;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "lock_session_id = %llu, seconds from device unlocked to packet = %f, message_session_id = %llu, seconds from message app session start to packet = %f, session_id = %llu", buf, 0x34u);
  }

  v17 = [metricsCopy objectForKeyedSubscript:kCVAFaceTracking_TrackedFacesArray];
  firstObject = [v17 firstObject];

  if (firstObject)
  {
    v19 = [firstObject objectForKeyedSubscript:kCVAFaceTracking_FailureType];
    v20 = v19;
    if (v19 && ([v19 isEqualToNumber:&off_10000C7E8]& 1) == 0)
    {
      v21 = sub_100004784();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        intValue = [v20 intValue];
        *buf = 67109120;
        LODWORD(sessionIdCopy) = intValue;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "kCVAFaceTracking_FailureType => %d", buf, 8u);
      }

      v99 = 0;
      goto LABEL_149;
    }

    v21 = [firstObject objectForKeyedSubscript:kCVAFaceTracking_FaceID];
    if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v23 = sub_100004784();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1000067A0();
      }

      v99 = 0;
      goto LABEL_148;
    }

    v22 = [[NSUUID alloc] initWithUUIDString:v21];
    v23 = v22;
    if (!v22)
    {
      v24 = sub_100004784();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_10000676C();
      }

      v99 = 0;
      goto LABEL_147;
    }

    [v22 getUUIDBytes:v135];
    v24 = [firstObject objectForKeyedSubscript:kCVAFaceTracking_Identity];
    if (v24)
    {
      v25 = [firstObject objectForKeyedSubscript:kCVAFaceTracking_RawData];
      v26 = v25;
      if (v25)
      {
        v27 = [v25 objectForKeyedSubscript:kCVAFaceTracking_Pose];
        v123 = [v27 objectForKeyedSubscript:kCVAFaceTracking_Rotation];
        if (!v123)
        {
          v34 = sub_100004784();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            sub_100006704();
          }

          v99 = 0;
          goto LABEL_145;
        }

        v121 = v24;
        v122 = v27;
        v120 = v26;
        v28 = 0;
        v29 = &v135[4] + 4;
        do
        {
          v30 = [v123 objectAtIndexedSubscript:v28];
          for (i = 0; i != 3; ++i)
          {
            v32 = [v30 objectAtIndexedSubscript:i];
            [v32 floatValue];
            *&v29[4 * i] = v33;
          }

          ++v28;
          v29 += 12;
        }

        while (v28 != 3);
        v27 = v122;
        v34 = [v122 objectForKeyedSubscript:kCVAFaceTracking_Translation];
        if (!v34)
        {
          sub_100004784();
          v119 = v24 = v121;
          if (os_log_type_enabled(v119, OS_LOG_TYPE_FAULT))
          {
            sub_1000066D0();
          }

          v99 = 0;
          v26 = v120;
          goto LABEL_144;
        }

        v35 = 0;
        v24 = v121;
        do
        {
          v36 = [v34 objectAtIndexedSubscript:v35];
          [v36 floatValue];
          *(&v136 + v35 + 2) = v37;

          ++v35;
        }

        while (v35 != 3);
        v38 = [firstObject objectForKeyedSubscript:kCVAFaceTracking_SmoothData];
        v119 = v38;
        if (!v38)
        {
          v118 = sub_100004784();
          v27 = v122;
          if (os_log_type_enabled(v118, OS_LOG_TYPE_FAULT))
          {
            sub_10000669C();
          }

          v99 = 0;
          v26 = v120;
          goto LABEL_143;
        }

        v117 = v34;
        v118 = [v38 objectForKeyedSubscript:kCVAFaceTracking_Geometry];
        v39 = [v118 objectForKeyedSubscript:kCVAFaceTracking_GeometryLeftEye];
        v116 = v39;
        if (!v39)
        {
          v44 = sub_100004784();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
          {
            sub_100006668();
          }

          v99 = 0;
          v26 = v120;
          v27 = v122;
          goto LABEL_142;
        }

        v40 = 0;
        v41 = v39;
        do
        {
          v42 = [v41 objectAtIndexedSubscript:v40];
          [v42 floatValue];
          v138[v40 - 3] = v43;

          ++v40;
        }

        while (v40 != 3);
        v44 = [v118 objectForKeyedSubscript:kCVAFaceTracking_GeometryRightEye];
        if (!v44)
        {
          v115 = sub_100004784();
          if (os_log_type_enabled(v115, OS_LOG_TYPE_FAULT))
          {
            sub_100006634();
          }

          v99 = 0;
          v26 = v120;
          v27 = v122;
          goto LABEL_141;
        }

        for (j = 0; j != 3; ++j)
        {
          v46 = [v44 objectAtIndexedSubscript:j];
          [v46 floatValue];
          v138[j] = v47;
        }

        v26 = v120;
        v48 = [v120 objectForKeyedSubscript:kCVAFaceTracking_Animation];
        v115 = v48;
        if (!v48)
        {
          v114 = sub_100004784();
          v27 = v122;
          if (os_log_type_enabled(v114, OS_LOG_TYPE_FAULT))
          {
            sub_100006600();
          }

          v99 = 0;
          goto LABEL_140;
        }

        v49 = v48;
        v50 = [v48 objectForKeyedSubscript:kCVAFaceTracking_AnimationLeftEyePitch];
        v27 = v122;
        v114 = v50;
        if (!v50)
        {
          v113 = sub_100004784();
          if (os_log_type_enabled(v113, OS_LOG_TYPE_FAULT))
          {
            sub_1000065CC();
          }

          v99 = 0;
          goto LABEL_139;
        }

        [v50 floatValue];
        v138[3] = v51;
        v52 = [v49 objectForKeyedSubscript:kCVAFaceTracking_AnimationLeftEyeYaw];
        v113 = v52;
        if (!v52)
        {
          v112 = sub_100004784();
          if (os_log_type_enabled(v112, OS_LOG_TYPE_FAULT))
          {
            sub_100006598();
          }

          v99 = 0;
          goto LABEL_138;
        }

        [v52 floatValue];
        v138[4] = v53;
        v54 = [v49 objectForKeyedSubscript:kCVAFaceTracking_AnimationRightEyePitch];
        v112 = v54;
        if (!v54)
        {
          v111 = sub_100004784();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_FAULT))
          {
            sub_100006564();
          }

          v99 = 0;
          goto LABEL_137;
        }

        [v54 floatValue];
        v138[5] = v55;
        v56 = [v49 objectForKeyedSubscript:kCVAFaceTracking_AnimationRightEyeYaw];
        v111 = v56;
        if (!v56)
        {
          v110 = sub_100004784();
          if (os_log_type_enabled(v110, OS_LOG_TYPE_FAULT))
          {
            sub_100006530();
          }

          v99 = 0;
          goto LABEL_136;
        }

        [v56 floatValue];
        v138[6] = v57;
        v58 = [v49 objectForKeyedSubscript:kCVAFaceTracking_AnimationGaze];
        v110 = v58;
        if (!v58)
        {
          v64 = sub_100004784();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
          {
            sub_1000064FC();
          }

          v99 = 0;
          v26 = v120;
          goto LABEL_135;
        }

        v59 = 0;
        v60 = v58;
        do
        {
          v61 = [v60 objectAtIndexedSubscript:v59];
          [v61 floatValue];
          v138[v59 + 7] = v62;

          ++v59;
        }

        while (v59 != 3);
        v63 = [v115 objectForKeyedSubscript:kCVAFaceTracking_AnimationBlendshapes];
        v64 = v63;
        if (v63)
        {
          if ([v63 length]== 204)
          {
            [v64 getBytes:&v138[10] length:204];
            v109 = [v120 objectForKeyedSubscript:kCVA_djFOfwkPKZLtBeTcoU4KH4u1];
            if (!v109)
            {
              v66 = sub_100004784();
              if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
              {
                sub_100006494();
              }

              v99 = 0;
              goto LABEL_133;
            }

            v65 = [v109 objectForKeyedSubscript:kCVA_aZUZUIKi1SJ7vFd5h8tqxqYH];
            v66 = v65;
            if (v65)
            {
              v67 = [v65 objectForKeyedSubscript:kCVA_wxhFo3gWXB27xJ3OSacmO9bj_0];
              if (v67)
              {
                v68 = v67;
                [v67 floatValue];
                DWORD1(v139) = v69;
                v70 = [v66 objectForKeyedSubscript:kCVA_wxhFo3gWXB27xJ3OSacmO9bj_1];

                if (v70)
                {
                  [v70 floatValue];
                  DWORD2(v139) = v71;
                  v72 = [v66 objectForKeyedSubscript:kCVA_wxhFo3gWXB27xJ3OSacmO9bj_4];

                  if (v72)
                  {
                    [v72 floatValue];
                    HIDWORD(v139) = v73;
                    v74 = [v66 objectForKeyedSubscript:kCVA_wxhFo3gWXB27xJ3OSacmO9bj_5];

                    if (v74)
                    {
                      [v74 floatValue];
                      LODWORD(v140) = v75;
                      v76 = [v66 objectForKeyedSubscript:kCVA_wxhFo3gWXB27xJ3OSacmO9bj_7];

                      if (v76)
                      {
                        [v76 floatValue];
                        DWORD1(v140) = v77;
                        v78 = [v66 objectForKeyedSubscript:kCVA_wxhFo3gWXB27xJ3OSacmO9bj_8];

                        if (v78)
                        {
                          [v78 floatValue];
                          DWORD2(v140) = v79;
                          v80 = [v66 objectForKeyedSubscript:kCVA_wxhFo3gWXB27xJ3OSacmO9bj_9];

                          v105 = v80;
                          if (v80)
                          {
                            [v80 floatValue];
                            HIDWORD(v140) = v81;
                            v82 = [v109 objectForKeyedSubscript:kCVA_wiynFaZQYeLg1fqOn2pZOXAG];
                            v83 = v82;
                            if (v82)
                            {
                              v84 = [v82 objectForKeyedSubscript:kCVA_smaCIWvZLZm3xF2T6BixNtj6_0];

                              if (v84)
                              {
                                [v84 floatValue];
                                LODWORD(v141) = v85;
                                v106 = [v83 objectForKeyedSubscript:kCVA_smaCIWvZLZm3xF2T6BixNtj6_1];

                                if (v106)
                                {
                                  [v106 floatValue];
                                  DWORD1(v141) = v86;
                                  v87 = [v83 objectForKeyedSubscript:kCVA_smaCIWvZLZm3xF2T6BixNtj6_2];

                                  if (v87)
                                  {
                                    v103 = v87;
                                    [v87 floatValue];
                                    DWORD2(v141) = v88;
                                    v89 = [v83 objectForKeyedSubscript:kCVA_smaCIWvZLZm3xF2T6BixNtj6_3];

                                    if (v89)
                                    {
                                      v107 = v89;
                                      [v89 floatValue];
                                      HIDWORD(v141) = v90;
                                      v91 = [v83 objectForKeyedSubscript:kCVA_smaCIWvZLZm3xF2T6BixNtj6_4];

                                      if (v91)
                                      {
                                        v104 = v91;
                                        [v91 floatValue];
                                        LODWORD(v142) = v92;
                                        v93 = [v83 objectForKeyedSubscript:kCVA_smaCIWvZLZm3xF2T6BixNtj6_5];

                                        if (v93)
                                        {
                                          v108 = v93;
                                          [v93 floatValue];
                                          DWORD1(v142) = v94;
                                          v95 = [v83 objectForKeyedSubscript:kCVA_smaCIWvZLZm3xF2T6BixNtj6_6];

                                          if (v95)
                                          {
                                            [v95 floatValue];
                                            DWORD2(v142) = v96;
                                            v105 = [v83 objectForKeyedSubscript:kCVA_smaCIWvZLZm3xF2T6BixNtj6_7];

                                            if (v105)
                                            {
                                              [v105 floatValue];
                                              HIDWORD(v142) = v97;
                                              v98 = dword_100011200++;
                                              LODWORD(v135[1]) = v98;
                                              v99 = [NSData dataWithBytes:&v134 length:436];
LABEL_173:

                                              goto LABEL_132;
                                            }

                                            v105 = sub_100004784();
                                            if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                                            {
                                              sub_100006120();
                                            }
                                          }

                                          else
                                          {
                                            v105 = sub_100004784();
                                            if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                                            {
                                              sub_100006154();
                                            }
                                          }
                                        }

                                        else
                                        {
                                          v105 = sub_100004784();
                                          if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                                          {
                                            sub_100006188();
                                          }
                                        }
                                      }

                                      else
                                      {
                                        v105 = sub_100004784();
                                        if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                                        {
                                          sub_1000061BC();
                                        }
                                      }
                                    }

                                    else
                                    {
                                      v105 = sub_100004784();
                                      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                                      {
                                        sub_1000061F0();
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v105 = sub_100004784();
                                    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                                    {
                                      sub_100006224();
                                    }
                                  }
                                }

                                else
                                {
                                  v105 = sub_100004784();
                                  if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                                  {
                                    sub_100006258();
                                  }
                                }
                              }

                              else
                              {
                                v105 = sub_100004784();
                                if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                                {
                                  sub_10000628C();
                                }
                              }
                            }

                            else
                            {
                              v102 = sub_100004784();
                              if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
                              {
                                sub_1000062C0();
                              }
                            }

                            v99 = 0;
                            goto LABEL_173;
                          }

                          v83 = sub_100004784();
                          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                          {
                            sub_1000062F4();
                          }
                        }

                        else
                        {
                          v83 = sub_100004784();
                          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                          {
                            sub_100006328();
                          }
                        }
                      }

                      else
                      {
                        v83 = sub_100004784();
                        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                        {
                          sub_10000635C();
                        }
                      }
                    }

                    else
                    {
                      v83 = sub_100004784();
                      if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                      {
                        sub_100006390();
                      }
                    }
                  }

                  else
                  {
                    v83 = sub_100004784();
                    if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                    {
                      sub_1000063C4();
                    }
                  }
                }

                else
                {
                  v83 = sub_100004784();
                  if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000063F8();
                  }
                }
              }

              else
              {
                v83 = sub_100004784();
                if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                {
                  sub_10000642C();
                }
              }
            }

            else
            {
              v83 = sub_100004784();
              if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
              {
                sub_100006460();
              }
            }

            v99 = 0;
LABEL_132:

LABEL_133:
            goto LABEL_134;
          }

          v109 = sub_100004784();
          if (os_log_type_enabled(v109, OS_LOG_TYPE_FAULT))
          {
            sub_100006084(v64, v109);
          }
        }

        else
        {
          v109 = sub_100004784();
          if (os_log_type_enabled(v109, OS_LOG_TYPE_FAULT))
          {
            sub_1000064C8();
          }
        }

        v99 = 0;
LABEL_134:
        v26 = v120;
        v27 = v122;

LABEL_135:
LABEL_136:

LABEL_137:
LABEL_138:

LABEL_139:
LABEL_140:

LABEL_141:
LABEL_142:

        v34 = v117;
        v24 = v121;
LABEL_143:

LABEL_144:
LABEL_145:

        goto LABEL_146;
      }
    }

    else
    {
      v26 = sub_100004784();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        sub_100006738();
      }
    }

    v99 = 0;
LABEL_146:

LABEL_147:
LABEL_148:

LABEL_149:
    goto LABEL_150;
  }

  v20 = sub_100004784();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_1000067D4();
  }

  v99 = 0;
LABEL_150:

  return v99;
}

@end