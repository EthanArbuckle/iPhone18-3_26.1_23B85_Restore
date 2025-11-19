@interface HRMakeRunnableData
- (HRMakeRunnableData)init;
- (int64_t)findBlockingThreadForTailspin:(id)a3 sampleStore:(id)a4 mainThread:(id)a5 hangStartTime:(unint64_t)a6 hangEndTime:(unint64_t)a7 hangDuration:(int)a8;
- (int64_t)findBlockingThreadFromSampleStore:(id)a3 mainThread:(id)a4 hangStartTime:(unint64_t)a5 hangEndTime:(unint64_t)a6;
- (void)storeOtherBlockingThreadInfoInBlockingThreadInfo:(id)a3 sampleStore:(id)a4 mostBlockingTimeThreadId:(id)a5 sortedThreadsMaxCumlativeTime:(id)a6 blockingTimeByThread:(id)a7 tidToPidDict:(id)a8;
- (void)storeTopBlockingThreadInfoInBlockingThreadInfo:(id)a3 sampleStore:(id)a4 mostBlockingTimeThreadId:(id)a5 pidMostBlockingTime:(id)a6 blockedTime:(id)a7 isHangMainThread:(BOOL)a8;
@end

@implementation HRMakeRunnableData

- (HRMakeRunnableData)init
{
  v6.receiver = self;
  v6.super_class = HRMakeRunnableData;
  v2 = [(HRMakeRunnableData *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    [(HRMakeRunnableData *)v2 setAllBlockingThreadsArray:v3];

    v4 = [NSNumber numberWithInt:0xFFFFFFFFLL];
    [(HRMakeRunnableData *)v2 setTopBlockingPid:v4];

    [(HRMakeRunnableData *)v2 setBlockingThreadInfo:0];
  }

  return v2;
}

- (void)storeTopBlockingThreadInfoInBlockingThreadInfo:(id)a3 sampleStore:(id)a4 mostBlockingTimeThreadId:(id)a5 pidMostBlockingTime:(id)a6 blockedTime:(id)a7 isHangMainThread:(BOOL)a8
{
  v8 = a8;
  v20 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a4;
  v17 = a3;
  v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%#llx", [v20 unsignedLongLongValue]);
  [v17 setObject:v18 forKeyedSubscript:@"topBlockingThreadId"];

  [v17 setObject:v14 forKeyedSubscript:@"topBlockingPid"];
  v19 = sub_1000153B0(v16, v14);

  [v17 setObject:v19 forKeyedSubscript:@"topBlockingProcess"];
  [v17 setObject:v15 forKeyedSubscript:@"topBlockingTimeMS"];

  [v17 setObject:0 forKeyedSubscript:@"otherBlockingThreads"];
  [v17 setObject:0 forKeyedSubscript:@"nextTopBlockingThreadInfo"];

  if (v8)
  {
    objc_storeStrong(&self->_topBlockingPid, a6);
  }

  [(NSMutableArray *)self->_allBlockingThreadsArray addObject:v20];
}

- (void)storeOtherBlockingThreadInfoInBlockingThreadInfo:(id)a3 sampleStore:(id)a4 mostBlockingTimeThreadId:(id)a5 sortedThreadsMaxCumlativeTime:(id)a6 blockingTimeByThread:(id)a7 tidToPidDict:(id)a8
{
  v31 = a3;
  v37 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v36 = a8;
  v35 = objc_alloc_init(NSMutableArray);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v39;
    v32 = v13;
    v33 = v16;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v39 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v38 + 1) + 8 * i);
        if (([v21 isEqualToNumber:v13] & 1) == 0)
        {
          v22 = [v15 objectForKeyedSubscript:v21];
          v23 = sub_10000B548([v22 cumulativeTime]);

          if (v23 > 50.0)
          {
            v42[0] = @"threadId";
            v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%#llx", [v21 unsignedLongLongValue]);
            v43[0] = v24;
            v42[1] = @"process";
            [v36 objectForKeyedSubscript:v21];
            v26 = v25 = v15;
            v27 = sub_1000153B0(v37, v26);
            v43[1] = v27;
            v42[2] = @"blockingTimeMS";
            v28 = [NSNumber numberWithDouble:v23];
            v43[2] = v28;
            [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:3];
            v30 = v29 = v19;
            [v35 addObject:v30];

            v19 = v29;
            v15 = v25;
            v13 = v32;
            v16 = v33;

            [(NSMutableArray *)self->_allBlockingThreadsArray addObject:v21];
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v18);
  }

  if ([v35 count])
  {
    [v31 setObject:v35 forKeyedSubscript:@"otherBlockingThreads"];
  }
}

- (int64_t)findBlockingThreadForTailspin:(id)a3 sampleStore:(id)a4 mainThread:(id)a5 hangStartTime:(unint64_t)a6 hangEndTime:(unint64_t)a7 hangDuration:(int)a8
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [v13 threadId];
  v15 = v13;
  v144 = v12;
  v149 = [v12 tidToPidDict];
  v16 = objc_alloc_init(NSMutableDictionary);
  v147 = 0;
  v17 = 1;
  *&v18 = 134218240;
  v139 = v18;
  v141 = v16;
  v148 = v16;
  v142 = v11;
  v143 = v14;
  v152 = v14;
  v140 = v15;
  v150 = v15;
  v145 = self;
  while (1)
  {
    if ((v17 & 1) == 0)
    {
      goto LABEL_110;
    }

    if (v147 >= 5)
    {
      p_super = sub_100001684();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v147;
        _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_INFO, "findBlockingThreadForTailspin:  currentNextIterationCount = %d is more than MAX_KTRACE_SESSION_COUNT", buf, 8u);
      }

      goto LABEL_109;
    }

    p_super = objc_alloc_init(NSMutableArray);
    v20 = v11;
    v21 = ktrace_session_create();
    if (!v21)
    {
      v126 = sub_100001684();
      if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
      {
        sub_10003F714(v126);
      }

      goto LABEL_94;
    }

    v22 = v21;
    [v20 UTF8String];
    v23 = ktrace_set_file();
    if (v23)
    {
      v127 = v23;
      v128 = sub_100001684();
      if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
      {
        sub_10003F588(v127, v128);
      }

      ktrace_session_destroy();
      goto LABEL_94;
    }

    ktrace_session_set_event_names_enabled();
    ktrace_set_execnames_enabled();
    ktrace_set_jetsam_coalitions_enabled();
    ktrace_set_thread_groups_enabled();
    ktrace_set_vnode_paths_enabled();
    ktrace_set_thread_cputime_enabled();
    ktrace_set_uuid_map_enabled();
    ktrace_set_remotetime_conversion_enabled();
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1000014C0;
    v182 = &unk_100085690;
    *(&v183 + 1) = v152;
    v184 = a6;
    v185 = a7;
    p_super = p_super;
    *&v183 = p_super;
    v24 = objc_retainBlock(buf);
    if (ktrace_events_single())
    {
      v129 = sub_100001684();
      if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    if (ktrace_events_single())
    {
      v129 = sub_100001684();
      if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
      {
LABEL_84:
        sub_10003F600();
      }

LABEL_85:

      ktrace_session_destroy();
LABEL_93:

LABEL_94:
      v132 = 2;
      goto LABEL_111;
    }

    v25 = dispatch_semaphore_create(0);
    *v172 = _NSConcreteStackBlock;
    *&v172[8] = 3221225472;
    *&v172[16] = sub_1000016C8;
    v173 = &unk_1000856B8;
    *&v174[8] = v22;
    v26 = v25;
    *v174 = v26;
    ktrace_set_completion_handler();
    v27 = qos_class_self();
    v28 = dispatch_get_global_queue(v27, 0);
    v29 = ktrace_start();

    if (v29)
    {
      v130 = sub_100001684();
      if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
      {
        sub_10003F668();
      }

      ktrace_session_destroy();
      goto LABEL_92;
    }

    v30 = dispatch_time(0, 100000000000);
    if (dispatch_semaphore_wait(v26, v30))
    {
      v131 = sub_100001684();
      if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
      {
        *v186 = 134217984;
        *&v186[4] = 100000000000;
        _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "Timed out (%lld) parsing trace buffer", v186, 0xCu);
      }

      ktrace_end();
LABEL_92:

      goto LABEL_93;
    }

    if (![p_super count])
    {
      break;
    }

    v31 = sub_100001684();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = [p_super count];
      *buf = 134217984;
      *&buf[4] = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "*** Size of makeRunnableData array %lx,***", buf, 0xCu);
    }

    v33 = objc_alloc_init(NSMutableDictionary);
    v171 = v150;
    v34 = v144;
    v158 = v33;
    *v186 = 0u;
    v187 = 0u;
    v188 = 0u;
    v189 = 0u;
    v146 = p_super;
    v35 = [p_super reverseObjectEnumerator];
    v36 = [v35 countByEnumeratingWithState:v186 objects:buf count:16];
    v37 = a7;
    v170 = v34;
    if (v36)
    {
      v38 = v36;
      v39 = *v187;
      v168 = v35;
      do
      {
        v40 = 0;
        do
        {
          if (*v187 != v39)
          {
            objc_enumerationMutation(v35);
          }

          v41 = *(*&v186[8] + 8 * v40);
          if (([v41 inInterrupt] & 1) == 0 && objc_msgSend(v41, "timestamp") < v37)
          {
            v42 = +[SATimestamp timestampWithMachAbsTime:machContTime:wallTime:machTimebase:](SATimestamp, "timestampWithMachAbsTime:machContTime:wallTime:machTimebase:", [v41 timestamp], 0, sub_1000046E4(), 0.0);
            v43 = [v34 sampleTimestamps];
            v44 = [v171 lastThreadStateOnOrBeforeTime:v42 sampleIndex:{objc_msgSend(v43, "count") - 1}];

            if (v44)
            {
              v45 = [v41 timestamp];
              v46 = [v44 endTimestamp];
              if (v45 <= [v46 machAbsTime])
              {
                v51 = [v41 timestamp];
                v52 = [v44 startTimestamp];
                v47 = v51 >= [v52 machAbsTime];
              }

              else
              {
                v47 = 0;
              }

              v53 = sub_100001684();
              v37 = a7;
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
              {
                v156 = [v41 timestamp];
                v154 = [v41 madeRunnableByThreadId];
                v164 = [v44 startTimestamp];
                v151 = [v164 machAbsTime];
                v160 = [v44 endTimestamp];
                v82 = [v160 machAbsTime];
                v83 = [v44 startSampleIndex];
                v84 = [v44 endSampleIndex];
                *v172 = 134219778;
                v85 = @"outside";
                if (v47)
                {
                  v85 = @"inside";
                }

                *&v172[4] = v156;
                *&v172[12] = 2048;
                *&v172[14] = v152;
                *&v172[22] = 2048;
                v173 = v154;
                *v174 = 2048;
                *&v174[2] = v151;
                *&v174[10] = 2048;
                *&v174[12] = v82;
                v175 = 2048;
                v176 = v83;
                v37 = a7;
                v177 = 2048;
                v178 = v84;
                v179 = 2112;
                v180 = v85;
                _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "iterateMkRunnableDataToFindBlockingThreadInfo: eachMadeRunnable: %llu - thread %llx by %llx mkRunnableTime, threadState time %llu-%llu (idx %lu - idx %lu) -> %@", v172, 0x52u);
              }

              if (v47)
              {
                v54 = [v44 startTimestamp];
                v55 = [v54 machAbsTime];

                if (v55 <= a6)
                {
                  v56 = a6;
                }

                else
                {
                  v56 = v55;
                }

                v57 = [v41 timestamp];
                v58 = sub_100001684();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
                {
                  v86 = v57;
                  v87 = [v41 timestamp];
                  v88 = [v41 madeRunnableByThreadId];
                  *v172 = 134219264;
                  *&v172[4] = v87;
                  v57 = v86;
                  *&v172[12] = 2048;
                  *&v172[14] = v152;
                  *&v172[22] = 2048;
                  v173 = v88;
                  *v174 = 2048;
                  *&v174[2] = &v86[-v56];
                  *&v174[10] = 2048;
                  *&v174[12] = v86;
                  v175 = 2048;
                  v176 = v56;
                  _os_log_debug_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEBUG, "iterateMkRunnableDataToFindBlockingThreadInfo: eachMadeRunnable: %llu - thread %llx by %llx -> blockedtime = %llu (= %llu - %llu)", v172, 0x3Eu);
                }

                v163 = v56;
                v59 = v57 >= v56;
                v60 = &v57[-v56];
                if (v59)
                {
                  v159 = v42;
                  v155 = v57;
                  v63 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v41 madeRunnableByThreadId]);
                  v64 = [v158 objectForKeyedSubscript:v63];

                  if (!v64)
                  {
                    v65 = objc_alloc_init(BlockingThreadElement);
                    v66 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v41 madeRunnableByThreadId]);
                    [v158 setObject:v65 forKeyedSubscript:v66];
                  }

                  v67 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v41 madeRunnableByThreadId]);
                  v68 = [v158 objectForKeyedSubscript:v67];
                  v69 = v60;
                  v70 = &v60[[v68 cumulativeTime]];

                  v71 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v41 madeRunnableByThreadId]);
                  v72 = [v158 objectForKeyedSubscript:v71];
                  v153 = v70;
                  [v72 setCumulativeTime:v70];

                  v73 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v41 madeRunnableByThreadId]);
                  v74 = [v158 objectForKeyedSubscript:v73];
                  v75 = [v74 maxBlockingTime];

                  if (v75 < v69)
                  {
                    v76 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v41 madeRunnableByThreadId]);
                    v77 = [v158 objectForKeyedSubscript:v76];
                    [v77 setMaxBlockingTime:v69];

                    v78 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v41 madeRunnableByThreadId]);
                    v79 = [v158 objectForKeyedSubscript:v78];
                    [v79 setStartThreadTime:v163];

                    v80 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v41 madeRunnableByThreadId]);
                    v81 = [v158 objectForKeyedSubscript:v80];
                    [v81 setEndThreadTime:v155];
                  }

                  v48 = sub_100001684();
                  v42 = v159;
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
                  {
                    v165 = [v41 timestamp];
                    v89 = [v41 madeRunnableByThreadId];
                    v90 = [v41 madeRunnableByThreadId];
                    v91 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v41 madeRunnableByThreadId]);
                    v92 = [v158 objectForKeyedSubscript:v91];
                    v93 = [v92 maxBlockingTime];
                    *v172 = 134219264;
                    *&v172[4] = v165;
                    *&v172[12] = 2048;
                    *&v172[14] = v152;
                    *&v172[22] = 2048;
                    v173 = v89;
                    *v174 = 2048;
                    *&v174[2] = v90;
                    *&v174[10] = 2048;
                    *&v174[12] = v153;
                    v175 = 2048;
                    v176 = v93;
                    _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "iterateMkRunnableDataToFindBlockingThreadInfo: eachMadeRunnable: %llu - thread %llx by %llx => thread %llu total time is up to %llu and max time %llu", v172, 0x3Eu);
                  }
                }

                else
                {
                  v48 = sub_100001684();
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
                  {
                    v61 = [v41 timestamp];
                    v62 = [v41 madeRunnableByThreadId];
                    *v172 = 134219008;
                    *&v172[4] = v61;
                    *&v172[12] = 2048;
                    *&v172[14] = v152;
                    *&v172[22] = 2048;
                    v173 = v62;
                    *v174 = 2048;
                    *&v174[2] = v57;
                    *&v174[10] = 2048;
                    *&v174[12] = v163;
                    _os_log_fault_impl(&_mh_execute_header, v48, OS_LOG_TYPE_FAULT, "iterateMkRunnableDataToFindBlockingThreadInfo: eachMadeRunnable: %llu - thread %llx by %llx -> NEGATIVE blocked time = %llu - %llu)", v172, 0x34u);
                  }
                }

                v37 = a7;
                goto LABEL_43;
              }
            }

            else
            {
              v48 = sub_100001684();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                v49 = [v41 timestamp];
                v50 = [v41 madeRunnableByThreadId];
                *v172 = 134218496;
                *&v172[4] = v49;
                *&v172[12] = 2048;
                *&v172[14] = v152;
                *&v172[22] = 2048;
                v173 = v50;
                _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "iterateMkRunnableDataToFindBlockingThreadInfo: eachMadeRunnable: %llu - thread %llx by %llx mkRunnableTime, threadState is nil", v172, 0x20u);
              }

LABEL_43:
            }

            v35 = v168;
            v34 = v170;
          }

          v40 = v40 + 1;
        }

        while (v38 != v40);
        v94 = [v35 countByEnumeratingWithState:v186 objects:buf count:16];
        v38 = v94;
      }

      while (v94);
    }

    v95 = sub_100001684();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v158;
      _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "findBlockingThreadForTailspin: Cumulative Blocking Time By Thread: %@", buf, 0xCu);
    }

    v96 = [NSNumber numberWithUnsignedLongLong:v152];
    [v158 removeObjectForKey:v96];

    v97 = v148;
    if (![v158 count])
    {
      v135 = sub_100001684();
      v136 = v135;
      if (v152 == v143)
      {
        v11 = v142;
        p_super = v146;
        if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEFAULT, "findBlockingThreadForTailspin: no thread found for hangAppMainThreadId ", buf, 2u);
        }

        v132 = 4;
        v150 = v171;
        goto LABEL_111;
      }

      v11 = v142;
      p_super = v146;
      if (os_log_type_enabled(v135, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = v152;
        _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_INFO, "findBlockingThreadForTailspin: no thread found for currentNestedThreadId =%llx ", buf, 0xCu);
      }

      self = v145;
LABEL_109:

LABEL_110:
      v137 = v141;
      p_super = &self->_blockingThreadInfo->super;
      self->_blockingThreadInfo = v137;
      v132 = 5;
      goto LABEL_111;
    }

    v98 = [v158 keysSortedByValueUsingComparator:&stru_100085648];
    v99 = [v158 keysSortedByValueUsingComparator:&stru_100085668];
    v100 = [v99 objectAtIndexedSubscript:0];
    v101 = [v158 objectForKeyedSubscript:v100];
    v102 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", sub_10000B548([v101 cumulativeTime]));

    v103 = [v149 objectForKeyedSubscript:v100];
    v169 = v98;
    v104 = [v98 objectAtIndexedSubscript:0];
    v105 = [v104 unsignedLongLongValue];
    v106 = [v99 objectAtIndexedSubscript:0];
    v107 = [v106 unsignedLongLongValue];

    v108 = v170;
    v109 = v105 == v107;
    self = v145;
    if (!v109)
    {
      v110 = sub_100001684();
      if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
      {
        v166 = [v99 objectAtIndexedSubscript:0];
        v157 = [v166 unsignedLongLongValue];
        v161 = [v158 objectForKeyedSubscript:v100];
        v111 = [v161 cumulativeTime];
        v112 = [v169 objectAtIndexedSubscript:0];
        v113 = [v112 unsignedLongLongValue];
        v114 = [v169 objectAtIndexedSubscript:0];
        v115 = [v158 objectForKeyedSubscript:v114];
        v116 = [v115 cumulativeTime];
        *buf = 134218752;
        *&buf[4] = v157;
        *&buf[12] = 2048;
        *&buf[14] = v111;
        self = v145;
        *&buf[22] = 2048;
        v182 = v113;
        LOWORD(v183) = 2048;
        *(&v183 + 2) = v116;
        _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "findBlockingThreadForTailspin: max cumulative Thread id %llx, blocking time %llu, max block time thread id %llx, blocking time %llu ", buf, 0x2Au);

        v108 = v170;
        v97 = v148;
      }
    }

    [(HRMakeRunnableData *)self storeTopBlockingThreadInfoInBlockingThreadInfo:v97 sampleStore:v108 mostBlockingTimeThreadId:v100 pidMostBlockingTime:v103 blockedTime:v102 isHangMainThread:v152 == v143];
    if ([v102 unsignedLongLongValue] < 0x33)
    {
      v125 = 0;
      v17 = 0;
    }

    else
    {
      [(HRMakeRunnableData *)self storeOtherBlockingThreadInfoInBlockingThreadInfo:v97 sampleStore:v108 mostBlockingTimeThreadId:v100 sortedThreadsMaxCumlativeTime:v99 blockingTimeByThread:v158 tidToPidDict:v149];
      if (v103)
      {
        v117 = [v158 objectForKeyedSubscript:v100];
        v118 = [v117 endThreadTime];

        v119 = [v158 objectForKeyedSubscript:v100];
        v120 = [v119 startThreadTime];

        v121 = sub_100001684();
        if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
        {
          *buf = v139;
          *&buf[4] = v120;
          *&buf[12] = 2048;
          *&buf[14] = v118;
          _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_INFO, "findBlockingThreadForTailspin: new threadStartTime %llu endTime %llu ", buf, 0x16u);
        }

        if (v118 - v120 > (a7 - a6) >> 1)
        {
          v152 = [v100 unsignedLongLongValue];
          v150 = sub_100016D78(v170, v149, v152);

          v122 = objc_alloc_init(NSMutableDictionary);
          [v97 setObject:v122 forKeyedSubscript:@"nextTopBlockingThreadInfo"];

          v125 = 0;
          ++v147;
          v17 = 1;
          v148 = v122;
        }

        else
        {
          v125 = 0;
          v17 = 0;
          v150 = v171;
        }

        a7 = v118;
        a6 = v120;
        self = v145;
        goto LABEL_71;
      }

      v123 = sub_100001684();
      if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
      {
        v124 = [v100 unsignedLongLongValue];
        *buf = 134217984;
        *&buf[4] = v124;
        _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "findBlockingThreadForTailspin: pid is nil for Thread with most blocking time %llx ", buf, 0xCu);
      }

      v17 = 0;
      v125 = 3;
    }

    v150 = v171;
LABEL_71:

    v11 = v142;
    if (v125)
    {
      goto LABEL_110;
    }
  }

  v133 = sub_100001684();
  v134 = v133;
  self = v145;
  if (v152 != v143)
  {
    if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = v152;
      _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_INFO, "findBlockingThreadForTailspin: 0 mkrunnable tracepoints found for threadId = %llx", buf, 0xCu);
    }

    goto LABEL_109;
  }

  if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
  {
    sub_10003F6D0(v134);
  }

  v132 = 3;
LABEL_111:

  return v132;
}

- (int64_t)findBlockingThreadFromSampleStore:(id)a3 mainThread:(id)a4 hangStartTime:(unint64_t)a5 hangEndTime:(unint64_t)a6
{
  v8 = a3;
  v9 = a4;
  v50 = [v8 tidToPidDict];
  v10 = [v9 threadId];
  v11 = v9;
  v12 = objc_alloc_init(NSMutableDictionary);
  v13 = v12;
  v14 = [v11 threadStates];
  v15 = [v14 lastObject];

  v16 = [v15 endTimestamp];
  v17 = [v16 machAbsTime];

  if (v17 > a6)
  {
    v18 = 4;
    v19 = v13;
    v20 = v11;
    goto LABEL_37;
  }

  obj = v12;
  v46 = v8;
  v45 = [v15 endTimestamp];
  v48 = objc_alloc_init(NSMutableSet);
  v21 = 32;
  v43 = v11;
  v44 = v10;
  v42 = v13;
  v22 = v15;
  while (1)
  {
    v51 = v11;
    v23 = [v22 turnstileInfo];
    v24 = [v22 waitInfo];
    if (v23 && [v23 blockingTid])
    {
      v25 = [v23 blockingTid];
      v26 = v48;
      v27 = &MGGetBoolAnswer_ptr;
LABEL_12:
      v28 = [v23 blockingPid];
      if (!v24)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    v27 = &MGGetBoolAnswer_ptr;
    if (!v24 || ![v24 blockingTid])
    {
      v26 = v48;
      if (!v23)
      {
        v25 = 0;
LABEL_15:
        v28 = 0xFFFFFFFFLL;
        if (!v24)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

      v25 = 0;
      if ([v23 blockingPid] == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v25 = [v24 blockingTid];
    v28 = [v24 blockingPid];
    v26 = v48;
LABEL_16:
    if ([v24 blockingPid] != -1)
    {
      v28 = [v24 blockingPid];
    }

LABEL_18:
    if (!v25 && v28 == -1)
    {
      v15 = v22;
      v20 = v51;
      goto LABEL_32;
    }

    v49 = v23;
    if (v28 == -1)
    {
      v29 = [v27[265] numberWithUnsignedLongLong:v25];
      v30 = [v50 objectForKeyedSubscript:v29];
      v28 = [v30 intValue];

      v26 = v48;
      v27 = &MGGetBoolAnswer_ptr;
    }

    v31 = [v27[265] numberWithUnsignedLongLong:v25];
    v32 = [v27[265] numberWithInt:v28];
    [(HRMakeRunnableData *)self storeTopBlockingThreadInfoInBlockingThreadInfo:v13 sampleStore:v46 mostBlockingTimeThreadId:v31 pidMostBlockingTime:v32 blockedTime:&off_10008AA68 isHangMainThread:v10 == v44];

    if (!v25 || ([v27[265] numberWithUnsignedLongLong:v25], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v26, "containsObject:", v33), v33, (v34 & 1) != 0))
    {
      v15 = v22;
      v20 = v51;
      goto LABEL_31;
    }

    v35 = [v27[265] numberWithUnsignedLongLong:v25];
    [v26 addObject:v35];

    v20 = sub_100016D78(v46, v50, v25);

    v36 = [v20 threadStates];
    v15 = [v36 lastObject];

    v37 = [v15 startTimestamp];
    if ([v37 gt:v45])
    {
      break;
    }

    v38 = [v15 endTimestamp];
    v39 = [v38 lt:v45];

    v23 = v49;
    if (v39)
    {
      goto LABEL_32;
    }

    v19 = objc_alloc_init(NSMutableDictionary);
    [v13 setObject:v19 forKeyedSubscript:@"nextTopBlockingThreadInfo"];

    v10 = v25;
    v11 = v20;
    v13 = v19;
    v22 = v15;
    if (!--v21)
    {
      goto LABEL_33;
    }
  }

LABEL_31:
  v23 = v49;
LABEL_32:

  v19 = v13;
LABEL_33:
  v13 = v42;
  if ([v42 count])
  {
    objc_storeStrong(&self->_blockingThreadInfo, obj);
    v18 = 5;
  }

  else
  {
    v18 = 4;
  }

  v8 = v46;

  v11 = v43;
LABEL_37:

  return v18;
}

@end