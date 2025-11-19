@interface NFFelicaStateEvent
+ (id)decodeEvent:(id)a3 reverse:(BOOL)a4;
+ (id)decodeLogEvent:(id)a3;
+ (id)decodeProvider:(id)a3 service:(id)a4 blocks:(id)a5;
- (NFFelicaStateEvent)init;
- (void)addStateInfo:(id)a3 appletAID:(id)a4;
@end

@implementation NFFelicaStateEvent

+ (id)decodeEvent:(id)a3 reverse:(BOOL)a4
{
  v130 = a4;
  v4 = a3;
  v5 = objc_opt_new();
  v136 = objc_opt_new();
  v146 = objc_opt_new();
  v131 = v4;
  [NFTLV simpleTLVsWithTag:225 fromData:v4];
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  obj = v165 = 0u;
  v140 = v5;
  v134 = [obj countByEnumeratingWithState:&v162 objects:v169 count:16];
  v6 = 0;
  v7 = 0;
  if (v134)
  {
    v141 = 255;
    v133 = *v163;
    do
    {
      v8 = 0;
      do
      {
        if (*v163 != v133)
        {
          v9 = v8;
          objc_enumerationMutation(obj);
          v8 = v9;
        }

        v135 = v8;
        v10 = *(*(&v162 + 1) + 8 * v8);
        v158 = 0u;
        v159 = 0u;
        v160 = 0u;
        v161 = 0u;
        v137 = [v10 children];
        v139 = [v137 countByEnumeratingWithState:&v158 objects:v168 count:16];
        if (v139)
        {
          v138 = *v159;
          do
          {
            v11 = 0;
            do
            {
              if (*v159 != v138)
              {
                v12 = v11;
                objc_enumerationMutation(v137);
                v11 = v12;
              }

              v142 = v11;
              v13 = *(*(&v158 + 1) + 8 * v11);
              if ([v13 tag] == 209)
              {
                v14 = [v13 value];
                v15 = [v14 bytes];

                v16 = [NSNumber numberWithUnsignedChar:*v15];
                [v5 setObject:v16 forKeyedSubscript:@"NFServiceProviderID"];
              }

              if ([v13 tag] == 210)
              {
                v17 = [v13 value];
                v18 = [v17 NF_asHexString];
                [v5 setObject:v18 forKeyedSubscript:@"NFDPAN"];
              }

              v147 = v13;
              if ([v13 tag] == 219)
              {
                v19 = [v13 valueAsUnsignedShort];
                v20 = [NSNumber numberWithInt:v19 & 1];
                [v5 setObject:v20 forKeyedSubscript:@"NFInStation"];

                v21 = [NSNumber numberWithInt:(v19 >> 1) & 1];
                [v5 setObject:v21 forKeyedSubscript:@"NFInStationShinkansen"];
              }

              if ([v13 tag] == 220)
              {
                v22 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 valueAsUnsignedShort]);
                [v5 setObject:v22 forKeyedSubscript:@"NFTicketUsed"];
              }

              if ([v13 tag] == 221)
              {
                v23 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 valueAsUnsignedShort]);
                [v5 setObject:v23 forKeyedSubscript:@"NFBlacklisted"];

                v24 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 valueAsUnsignedShort]);
                [v5 setObject:v24 forKeyedSubscript:@"NFRevoked"];
              }

              v25 = [v13 tag];
              if ((v25 & 0xFFFFFFFC) == 0xD4 || v25 - 216 <= 7 && ((1 << (v25 + 40)) & 0xC7) != 0)
              {
                if ([v13 tag] <= v141)
                {
                  v26 = objc_opt_new();

                  [v136 addObject:v26];
                  v6 = 0;
                  v7 = v26;
                }

                v141 = [v13 tag];
              }

              if ([v13 tag] == 212)
              {
                v27 = [v13 value];
                v28 = [v27 length];

                if (v28 >= 4)
                {
                  v31 = [v13 value];
                  v29 = [v31 bytes];

                  v30 = 0;
                  LODWORD(v31) = 0;
                  do
                  {
                    v31 = (v29[v30] & 0xF) + 100 * v31 + 10 * (v29[v30] >> 4);
                    ++v30;
                  }

                  while (v30 != 2);
                  v32 = v29[2];
                  v33 = v29[3];
                  if (!v6)
                  {
                    v6 = objc_opt_new();
                  }

                  [v6 setYear:v31];
                  [v6 setMonth:(v32 & 0xF) + 10 * (v32 >> 4)];
                  [v6 setDay:(v33 & 0xF) + 10 * (v33 >> 4)];
                  [v7 setObject:v6 forKeyedSubscript:@"NFTransactionDate"];
                  v13 = v147;
                }
              }

              if ([v13 tag] == 213)
              {
                v34 = [v13 value];
                v35 = [v34 length];

                if (v35 >= 2)
                {
                  if (!v6)
                  {
                    v6 = objc_opt_new();
                  }

                  v36 = [v13 value];
                  v37 = [v36 bytes];

                  v38 = (v37[1] & 0xF) + 10 * (v37[1] >> 4);
                  [v6 setHour:(*v37 & 0xF) + 10 * (*v37 >> 4)];
                  [v6 setMinute:v38];
                  [v7 setObject:v6 forKeyedSubscript:@"NFTransactionDate"];
                }
              }

              if ([v13 tag] == 214)
              {
                v39 = [v13 value];
                v40 = [v39 length];

                if (v40 >= 5)
                {
                  v41 = [v13 value];
                  v42 = [v41 bytes];

                  v43 = *(v42 + 4);
                  if (v43 == 1)
                  {
                    v44 = @"NFBalance";
                    goto LABEL_45;
                  }

                  if (v43 == 2)
                  {
                    v44 = @"NFLoyaltyBalance";
LABEL_45:
                    v45 = [NSNumber numberWithUnsignedInt:bswap32(*v42)];
                    [v7 setObject:v45 forKeyedSubscript:v44];
                  }
                }
              }

              if ([v13 tag] == 215)
              {
                v46 = [v13 value];
                v47 = [v46 length];

                if (v47 >= 5)
                {
                  v48 = [v13 value];
                  v49 = [v48 bytes];

                  v50 = *v49;
                  v51 = (v49[1] << 16) & 0x80FFFFFF | ((v50 & 0x7F) << 24) | (v49[2] << 8) | v49[3];
                  if (v50 >= 0)
                  {
                    v52 = v51;
                  }

                  else
                  {
                    v52 = -v51;
                  }

                  v53 = v49[4];
                  v54 = [NSNumber numberWithInt:v52];
                  [v7 setObject:v54 forKeyedSubscript:@"NFAmount"];

                  v13 = v147;
                  v55 = [NSNumber numberWithUnsignedChar:v53];
                  [v7 setObject:v55 forKeyedSubscript:@"NFAmountType"];
                }
              }

              v144 = v6;
              if ([v13 tag] == 216)
              {
                v56 = [v13 value];
                v57 = [v56 bytes];

                v58 = [NSNumber numberWithUnsignedChar:*v57];
                [v7 setObject:v58 forKeyedSubscript:@"NFTransactionType"];

                v13 = v147;
                v59 = [NSNumber numberWithUnsignedChar:v57[1]];
                [v7 setObject:v59 forKeyedSubscript:@"NFSectorCombination"];

                v60 = [v5 objectForKeyedSubscript:@"NFServiceProviderID"];
                LODWORD(v57) = [&off_100332238 isEqualToNumber:v60];

                if (v57)
                {
                  v156 = 0u;
                  v157 = 0u;
                  v154 = 0u;
                  v155 = 0u;
                  v61 = v146;
                  v62 = [v61 countByEnumeratingWithState:&v154 objects:v167 count:16];
                  if (!v62)
                  {
                    goto LABEL_67;
                  }

                  v63 = v62;
                  v64 = *v155;
                  while (1)
                  {
                    for (i = 0; i != v63; i = i + 1)
                    {
                      if (*v155 != v64)
                      {
                        objc_enumerationMutation(v61);
                      }

                      v66 = *(*(&v154 + 1) + 8 * i);
                      v67 = [v66 objectForKeyedSubscript:@"NFServiceCode"];
                      if ([v67 isEqualToString:@"0x090c"])
                      {
                      }

                      else
                      {
                        v68 = [v66 objectForKeyedSubscript:@"NFServiceCode"];
                        v69 = [v68 isEqualToString:@"0x090f"];

                        if (!v69)
                        {
                          continue;
                        }
                      }

                      v70 = [v66 objectForKeyedSubscript:@"NFBlockData"];
                      if ([v70 length] >= 3)
                      {
                        v71 = [v70 bytes];
                        v72 = [NSNumber numberWithUnsignedLongLong:v71[1] >> 7];
                        [v7 setObject:v72 forKeyedSubscript:@"NFSFBreakdown"];

                        v73 = [NSNumber numberWithUnsignedLongLong:*v71 & 0x7F];
                        [v7 setObject:v73 forKeyedSubscript:@"NFDeviceCode"];

                        v74 = [NSNumber numberWithUnsignedLongLong:v71[2] & 0x7F];
                        [v7 setObject:v74 forKeyedSubscript:@"NFPaymentType"];
                      }
                    }

                    v63 = [v61 countByEnumeratingWithState:&v154 objects:v167 count:16];
                    if (!v63)
                    {
LABEL_67:

                      v5 = v140;
                      v13 = v147;
                      break;
                    }
                  }
                }
              }

              if ([v13 tag] == 217)
              {
                v75 = [v13 value];
                v76 = [v75 length];

                if (v76 >= 3)
                {
                  v77 = [v13 value];
                  v78 = [v77 bytes];

                  v79 = bswap32(*v78) >> 16;
                  v80 = *(v78 + 2);
                  v13 = v147;
                  if (v79 || v80)
                  {
                    v81 = [v147 value];
                    [v7 setObject:v81 forKeyedSubscript:@"NFStartStationData"];

                    v82 = [NSNumber numberWithUnsignedShort:v79];
                    [v7 setObject:v82 forKeyedSubscript:@"NFStartStation"];

                    v13 = v147;
                    v83 = [NSNumber numberWithUnsignedChar:v80];
                    [v7 setObject:v83 forKeyedSubscript:@"NFStartStationExt"];
                  }
                }
              }

              if ([v13 tag] == 218)
              {
                v84 = [v13 value];
                v85 = [v84 length];

                if (v85 >= 3)
                {
                  v86 = [v13 value];
                  v87 = [v86 bytes];

                  v88 = bswap32(*v87) >> 16;
                  v89 = *(v87 + 2);
                  v13 = v147;
                  if (v88 || v89)
                  {
                    v90 = [v147 value];
                    [v7 setObject:v90 forKeyedSubscript:@"NFEndStationData"];

                    v91 = [NSNumber numberWithUnsignedShort:v88];
                    [v7 setObject:v91 forKeyedSubscript:@"NFEndStation"];

                    v13 = v147;
                    v92 = [NSNumber numberWithUnsignedChar:v89];
                    [v7 setObject:v92 forKeyedSubscript:@"NFEndStationExt"];
                  }
                }
              }

              if ([v13 tag] == 222)
              {
                v93 = [v13 value];
                v94 = [v93 mutableCopy];

                if ([v94 length] <= 31)
                {
                  [v94 increaseLengthBy:{(32 - objc_msgSend(v94, "length"))}];
                }

                v95 = [v5 objectForKeyedSubscript:@"NFServiceProviderID"];
                if (([v95 isEqualToNumber:&off_100332250] & 1) == 0)
                {
                  v96 = [v94 NF_asHexString];
                  [v7 setObject:v96 forKeyedSubscript:@"NFTransactionID"];

                  v13 = v147;
                }
              }

              if ([v13 tag] == 223)
              {
                v97 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v13 valueAsUnsignedLong]);
                [v7 setObject:v97 forKeyedSubscript:@"NFHistorySequenceNumber"];
              }

              if ([v13 tag] == 208)
              {
                v98 = [v13 value];
                v148 = [v98 length];

                v99 = [v13 value];
                v100 = [v99 bytes];

                v101 = *v100;
                if (*v100)
                {
                  if (v148)
                  {
                    v102 = (v100 + 1);
                    v103 = 20;
                    v104 = 1;
                    do
                    {
                      v105 = objc_opt_new();
                      v106 = [[NSString alloc] initWithFormat:@"0x%04x", *v102];
                      [v105 setObject:v106 forKeyedSubscript:@"NFServiceCode"];

                      v107 = [[NSString alloc] initWithFormat:@"0x%04x", v102[1]];
                      [v105 setObject:v107 forKeyedSubscript:@"NFBlockNumber"];

                      v108 = [[NSData alloc] initWithBytes:v102 + 2 length:16];
                      [v105 setObject:v108 forKeyedSubscript:@"NFBlockData"];

                      [v146 addObject:v105];
                      if (v104 >= v101)
                      {
                        break;
                      }

                      ++v104;
                      v102 += 10;
                      v109 = v103 >= v148;
                      v103 += 20;
                    }

                    while (!v109);
                  }
                }
              }

              v6 = v144;
              v11 = v142 + 1;
              v5 = v140;
            }

            while ((v142 + 1) != v139);
            v139 = [v137 countByEnumeratingWithState:&v158 objects:v168 count:16];
          }

          while (v139);
        }

        v8 = v135 + 1;
      }

      while ((v135 + 1) != v134);
      v134 = [obj countByEnumeratingWithState:&v162 objects:v169 count:16];
    }

    while (v134);
  }

  v110 = [v5 objectForKeyedSubscript:@"NFServiceProviderID"];
  if (!v110 || ![&off_100332238 isEqualToNumber:v110])
  {
    goto LABEL_113;
  }

  v143 = v110;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v149 = v146;
  v111 = [v149 countByEnumeratingWithState:&v150 objects:v166 count:16];
  if (!v111)
  {
    goto LABEL_112;
  }

  v112 = v111;
  v113 = *v151;
  do
  {
    v114 = 0;
    v145 = v112;
    do
    {
      v115 = v6;
      if (*v151 != v113)
      {
        objc_enumerationMutation(v149);
      }

      v116 = *(*(&v150 + 1) + 8 * v114);
      v117 = [v116 objectForKeyedSubscript:@"NFServiceCode"];
      if ([v117 isEqualToString:@"0x0088"])
      {

        v6 = v115;
      }

      else
      {
        v118 = [v116 objectForKeyedSubscript:@"NFServiceCode"];
        v119 = [v118 isEqualToString:@"0x008b"];

        v6 = v115;
        if (!v119)
        {
          goto LABEL_110;
        }
      }

      v120 = [v116 objectForKeyedSubscript:@"NFBlockData"];
      if ([v120 length] >= 0xD)
      {
        v121 = [v120 bytes];
        v122 = [NSNumber numberWithInt:*(v121 + 11) | (v121[13] << 16)];
        [v140 setObject:v122 forKeyedSubscript:@"NFBalance"];

        LODWORD(v122) = v121[8];
        v123 = [NSNumber numberWithInt:(v122 >> 4) & 1];
        [v140 setObject:v123 forKeyedSubscript:@"NFNotifyOnLowBalance"];

        v112 = v145;
        v124 = (v122 >> 5) & 1;
        v6 = v115;
        v125 = [NSNumber numberWithInt:v124];
        [v140 setObject:v125 forKeyedSubscript:@"NFAllowBalanceUsageForCommute"];
      }

LABEL_110:
      v114 = v114 + 1;
    }

    while (v112 != v114);
    v112 = [v149 countByEnumeratingWithState:&v150 objects:v166 count:16];
  }

  while (v112);
LABEL_112:

  v5 = v140;
  v110 = v143;
LABEL_113:
  if (v130)
  {
    v126 = [v136 reverseObjectEnumerator];
    v127 = [v126 allObjects];
    [v5 setObject:v127 forKeyedSubscript:@"NFHistoryRecords"];
  }

  else
  {
    [v5 setObject:v136 forKeyedSubscript:@"NFHistoryRecords"];
  }

  if ([v146 count])
  {
    [v5 setObject:v146 forKeyedSubscript:@"NFBlocks"];
  }

  v128 = v5;

  return v5;
}

+ (id)decodeProvider:(id)a3 service:(id)a4 blocks:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (([v9 isEqualToNumber:&off_100332238] & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v27 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName(a2);
      v31 = 45;
      if (isMetaClass)
      {
        v31 = 43;
      }

      v27(6, "%c[%{public}s %{public}s]:%i Unsupported provider", v31, ClassName, Name, 385);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    v32 = object_getClass(a1);
    if (class_isMetaClass(v32))
    {
      v33 = 43;
    }

    else
    {
      v33 = 45;
    }

    *buf = 67109890;
    v77 = v33;
    v78 = 2082;
    v79 = object_getClassName(a1);
    v80 = 2082;
    v81 = sel_getName(a2);
    v82 = 1024;
    v83 = 385;
    v25 = "%c[%{public}s %{public}s]:%i Unsupported provider";
    goto LABEL_35;
  }

  if (!v11)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v34 = NFLogGetLogger();
    if (v34)
    {
      v35 = v34;
      v36 = object_getClass(a1);
      v37 = class_isMetaClass(v36);
      v38 = object_getClassName(a1);
      v72 = sel_getName(a2);
      v39 = 45;
      if (v37)
      {
        v39 = 43;
      }

      v35(6, "%c[%{public}s %{public}s]:%i Missing data", v39, v38, v72, 390);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    v40 = object_getClass(a1);
    if (class_isMetaClass(v40))
    {
      v41 = 43;
    }

    else
    {
      v41 = 45;
    }

    *buf = 67109890;
    v77 = v41;
    v78 = 2082;
    v79 = object_getClassName(a1);
    v80 = 2082;
    v81 = sel_getName(a2);
    v82 = 1024;
    v83 = 390;
    v25 = "%c[%{public}s %{public}s]:%i Missing data";
    goto LABEL_35;
  }

  v12 = [v11 objectAtIndexedSubscript:0];
  v13 = v12;
  if (!v12 || (v14 = [v12 bytes], !objc_msgSend(v13, "length")))
  {
LABEL_8:

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v17 = v16;
      v18 = object_getClass(a1);
      v19 = class_isMetaClass(v18);
      v20 = object_getClassName(a1);
      v70 = sel_getName(a2);
      v21 = 45;
      if (v19)
      {
        v21 = 43;
      }

      v17(6, "%c[%{public}s %{public}s]:%i Block not valid", v21, v20, v70, 395);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    v23 = object_getClass(a1);
    if (class_isMetaClass(v23))
    {
      v24 = 43;
    }

    else
    {
      v24 = 45;
    }

    *buf = 67109890;
    v77 = v24;
    v78 = 2082;
    v79 = object_getClassName(a1);
    v80 = 2082;
    v81 = sel_getName(a2);
    v82 = 1024;
    v83 = 395;
    v25 = "%c[%{public}s %{public}s]:%i Block not valid";
LABEL_35:
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v25, buf, 0x22u);
LABEL_36:
    v42 = 0;
LABEL_37:

    goto LABEL_38;
  }

  v15 = 0;
  while (!v14[v15])
  {
    if (++v15 >= [v13 length])
    {
      goto LABEL_8;
    }
  }

  if ([v10 isEqualToNumber:&off_100332268])
  {
    v22 = objc_opt_new();
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v44 = NFLogGetLogger();
    if (v44)
    {
      v45 = v44;
      v46 = object_getClass(a1);
      v47 = class_isMetaClass(v46);
      v48 = object_getClassName(a1);
      v73 = sel_getName(a2);
      v49 = 45;
      if (v47)
      {
        v49 = 43;
      }

      v45(6, "%c[%{public}s %{public}s]:%i Decoding green car block", v49, v48, v73, 401);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v50 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = object_getClass(a1);
      if (class_isMetaClass(v51))
      {
        v52 = 43;
      }

      else
      {
        v52 = 45;
      }

      *buf = 67109890;
      v77 = v52;
      v78 = 2082;
      v79 = object_getClassName(a1);
      v80 = 2082;
      v81 = sel_getName(a2);
      v82 = 1024;
      v83 = 401;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Decoding green car block", buf, 0x22u);
    }

    v75 = [v11 objectAtIndexedSubscript:0];
    v53 = [v75 bytes];
    v54 = [[NSData alloc] initWithBytes:v53 length:2];
    if (([v54 NF_isZeroed] & 1) == 0)
    {
      [v22 setObject:v54 forKeyedSubscript:@"NFStartStationData"];
    }

    v55 = [[NSData alloc] initWithBytes:v53 + 2 length:2];

    if (([v55 NF_isZeroed] & 1) == 0)
    {
      [v22 setObject:v55 forKeyedSubscript:@"NFEndStationData"];
    }

    v74 = v55;
    v59 = v53[4];
    v56 = v53[5];
    v57 = objc_opt_new();
    [v57 setYear:(v59 >> 1) + 2000];
    [v57 setMonth:((v56 | (v59 << 8)) >> 5) & 0xF];
    [v57 setDay:v56 & 0x1F];
    [v22 setObject:v57 forKeyedSubscript:@"NFPurchaseDate"];
    v58 = 0;
    LODWORD(v59) = 0;
    do
    {
      v59 = v53[v58++ + 6] | (v59 << 8);
    }

    while (v58 != 3);
    v60 = [NSNumber numberWithUnsignedLongLong:(v59 >> 13) & 0x3F];
    [v22 setObject:v60 forKeyedSubscript:@"NFMinuteSold"];

    v61 = [NSNumber numberWithUnsignedLongLong:(v59 >> 19) & 0x1F];
    [v22 setObject:v61 forKeyedSubscript:@"NFHourSold"];

    v62 = [NSNumber numberWithUnsignedShort:10 * v53[9]];
    [v22 setObject:v62 forKeyedSubscript:@"NFFare"];

    v63 = [[NSData alloc] initWithBytes:v53 + 12 length:2];
    [v22 setObject:v63 forKeyedSubscript:@"NFRefundStation"];

    v64 = v53[14];
    v65 = v53[15];
    v66 = v65 | (v64 << 8);
    v67 = [NSNumber numberWithUnsignedLongLong:v65 & 1];
    [v22 setObject:v67 forKeyedSubscript:@"NFTicketUsed"];

    v68 = [NSNumber numberWithUnsignedLongLong:(v66 >> 5) & 0x3F];
    [v22 setObject:v68 forKeyedSubscript:@"NFRefundDay"];

    v69 = [NSNumber numberWithUnsignedLongLong:v64 >> 3];
    [v22 setObject:v69 forKeyedSubscript:@"NFRefundMonth"];

    v42 = [[NSDictionary alloc] initWithObjectsAndKeys:{v22, @"NFGreenCarTicket", 0}];
    goto LABEL_37;
  }

  v42 = 0;
LABEL_38:

  return v42;
}

+ (id)decodeLogEvent:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v85 = v3;
  [NFTLV simpleTLVsWithTag:225 fromData:v3];
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v5 = v105 = 0u;
  v92 = v4;
  v90 = [v5 countByEnumeratingWithState:&v102 objects:v118 count:16];
  if (v90)
  {
    v88 = *v103;
    v89 = v5;
    do
    {
      v6 = 0;
      do
      {
        if (*v103 != v88)
        {
          objc_enumerationMutation(v5);
        }

        v91 = v6;
        v7 = *(*(&v102 + 1) + 8 * v6);
        v98 = 0u;
        v99 = 0u;
        v100 = 0u;
        v101 = 0u;
        obj = [v7 children];
        v8 = [obj countByEnumeratingWithState:&v98 objects:v117 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v99;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v99 != v10)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v98 + 1) + 8 * i);
              v13 = [v12 value];
              if (v13)
              {
                v14 = v13;
                v15 = [v12 value];
                v16 = [v15 length];

                if (v16)
                {
                  v17 = [[NSString alloc] initWithFormat:@"%02x", objc_msgSend(v12, "tag")];
                  v18 = [v12 value];
                  [v4 setObject:v18 forKeyedSubscript:v17];

                  v19 = [v12 value];
                  v20 = [v19 bytes];

                  if ([v12 tag] == 216)
                  {
                    v21 = [v12 value];
                    v22 = [v21 length];

                    if (v22 >= 0xE && ([v12 value], v23 = objc_claimAutoreleasedReturnValue(), v24 = (objc_msgSend(v23, "length") << 32) - 0x900000000, v23, v24))
                    {
                      v25 = [[NSData alloc] initWithBytes:v20 length:v24 >> 32];
                      v26 = [v25 NF_asHexString];
                      [v92 setObject:v26 forKeyedSubscript:@"AID"];

                      v27 = &v20[v24 >> 32];
                      v28 = [[NSData alloc] initWithBytes:v27 length:8];
                      v29 = [v28 NF_asHexString];
                      [v92 setObject:v29 forKeyedSubscript:@"IDM"];

                      v4 = v92;
                      v30 = [NSString alloc];
                      v31 = v27[8];
                      v20 = v27 + 8;
                      v32 = [v30 initWithFormat:@"%02x", v31];
                      [v92 setObject:v32 forKeyedSubscript:@"Command Code"];
                    }

                    else
                    {
                      v4 = v92;
                    }
                  }

                  if ([v12 tag] == 217)
                  {
                    v33 = [[NSString alloc] initWithFormat:@"%02x", *v20];
                    [v4 setObject:v33 forKeyedSubscript:@"Success Response Code"];
                  }

                  if ([v12 tag] == 218)
                  {
                    v34 = [[NSString alloc] initWithFormat:@"%02x", *v20];
                    [v4 setObject:v34 forKeyedSubscript:@"External error no response"];
                  }

                  if ([v12 tag] == 219)
                  {
                    v35 = [[NSString alloc] initWithFormat:@"%02x", *v20];
                    [v4 setObject:v35 forKeyedSubscript:@"External error"];
                  }

                  if ([v12 tag] == 220)
                  {
                    v36 = [v12 value];
                    v37 = [v36 length];

                    v38 = v37 >= 9;
                    v4 = v92;
                    if (v38)
                    {
                      v39 = [[NSData alloc] initWithBytes:v20 + 1 length:8];
                      [v92 setObject:v39 forKeyedSubscript:@"Additional Debug Info"];
                    }
                  }
                }
              }
            }

            v9 = [obj countByEnumeratingWithState:&v98 objects:v117 count:16];
          }

          while (v9);
        }

        v6 = v91 + 1;
        v5 = v89;
      }

      while ((v91 + 1) != v90);
      v90 = [v89 countByEnumeratingWithState:&v102 objects:v118 count:16];
    }

    while (v90);
  }

  if (![v4 count])
  {
    v40 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
    v41 = [NFTLV simpleTLVsWithData:v85];

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v5 = v41;
    v42 = [v5 countByEnumeratingWithState:&v94 objects:v116 count:16];
    if (!v42)
    {
      goto LABEL_62;
    }

    v43 = v42;
    v44 = *v95;
    while (1)
    {
      for (j = 0; j != v43; j = j + 1)
      {
        if (*v95 != v44)
        {
          objc_enumerationMutation(v5);
        }

        v46 = *(*(&v94 + 1) + 8 * j);
        if ([v46 tag] == 129)
        {
          v47 = [v46 asData];
          v48 = [v47 NF_asHexString];
          [v4 setObject:v48 forKeyedSubscript:@"AID"];
        }

        if ([v46 tag] == 130)
        {
          v49 = [v46 children];
          if (v49)
          {
            v50 = v49;
            v51 = [v46 children];
            v52 = [v51 count];

            if (v52)
            {
              v53 = [v46 children];
              v54 = [v53 objectAtIndexedSubscript:0];

              v55 = [v54 asData];
              v56 = [v55 NF_asHexString];
              v4 = v92;
              [v92 setObject:v56 forKeyedSubscript:@"Command Code"];
              goto LABEL_57;
            }
          }

          v57 = v40[435];
          v58 = [v46 asData];
          v54 = [v57 simpleTLVsWithData:v58];

          if (v54 && [v54 count])
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v60 = Logger;
              Class = object_getClass(a1);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(a1);
              Name = sel_getName(a2);
              v64 = 45;
              if (isMetaClass)
              {
                v64 = 43;
              }

              v60(6, "%c[%{public}s %{public}s]:%i Found parameter event in sub data", v64, ClassName, Name, 730);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v65 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              v66 = object_getClass(a1);
              if (class_isMetaClass(v66))
              {
                v67 = 43;
              }

              else
              {
                v67 = 45;
              }

              v68 = object_getClassName(a1);
              v69 = sel_getName(a2);
              *buf = 67109890;
              v107 = v67;
              v108 = 2082;
              v109 = v68;
              v110 = 2082;
              v111 = v69;
              v112 = 1024;
              v113 = 730;
              _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Found parameter event in sub data", buf, 0x22u);
            }

            v55 = [v54 objectAtIndexedSubscript:0];
            v56 = [v55 asData];
            v70 = [v56 NF_asHexString];
            [v92 setObject:v70 forKeyedSubscript:@"Command Code"];

            v4 = v92;
            v40 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
LABEL_57:
          }

          else
          {
            v4 = v92;
          }

          continue;
        }
      }

      v43 = [v5 countByEnumeratingWithState:&v94 objects:v116 count:16];
      if (!v43)
      {
LABEL_62:

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v71 = NFLogGetLogger();
        if (v71)
        {
          v72 = v71;
          v73 = object_getClass(a1);
          v74 = class_isMetaClass(v73);
          v82 = object_getClassName(a1);
          v84 = sel_getName(a2);
          v75 = 45;
          if (v74)
          {
            v75 = 43;
          }

          v4 = v92;
          v72(6, "%c[%{public}s %{public}s]:%i %{public}@", v75, v82, v84, 738, v92);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v76 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          v77 = object_getClass(a1);
          if (class_isMetaClass(v77))
          {
            v78 = 43;
          }

          else
          {
            v78 = 45;
          }

          v79 = object_getClassName(a1);
          v80 = sel_getName(a2);
          *buf = 67110146;
          v107 = v78;
          v108 = 2082;
          v109 = v79;
          v110 = 2082;
          v111 = v80;
          v112 = 1024;
          v113 = 738;
          v114 = 2114;
          v115 = v4;
          _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
        }

        break;
      }
    }
  }

  return v4;
}

- (NFFelicaStateEvent)init
{
  v6.receiver = self;
  v6.super_class = NFFelicaStateEvent;
  v2 = [(NFFelicaStateEvent *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    stateEvents = v2->_stateEvents;
    v2->_stateEvents = v3;
  }

  return v2;
}

- (void)addStateInfo:(id)a3 appletAID:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [[NSMutableDictionary alloc] initWithDictionary:v14];
  [v7 setObject:v6 forKey:@"NFAppletAID"];
  v8 = [(NSMutableDictionary *)self->_stateEvents valueForKey:v6];
  if (!v8)
  {
    v9 = objc_opt_new();
    [(NSMutableDictionary *)self->_stateEvents setObject:v9 forKey:v6];
    [v9 addEntriesFromDictionary:v7];
    goto LABEL_11;
  }

  v9 = v8;
  [v7 removeObjectForKey:@"NFHistoryRecords"];
  [v9 addEntriesFromDictionary:v7];
  v10 = [v9 objectForKey:@"NFHistoryRecords"];
  v11 = [v14 objectForKey:@"NFHistoryRecords"];
  v12 = v11;
  if (v10 && v11)
  {
    v13 = [[NSMutableArray alloc] initWithArray:v11];
    [v13 addObjectsFromArray:v10];
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!v11)
    {
      goto LABEL_10;
    }

    v13 = [[NSMutableArray alloc] initWithArray:v11];
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  [v9 setObject:v13 forKey:@"NFHistoryRecords"];

LABEL_10:
LABEL_11:
}

@end