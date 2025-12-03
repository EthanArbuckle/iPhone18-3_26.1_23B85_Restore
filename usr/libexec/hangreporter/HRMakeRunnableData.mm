@interface HRMakeRunnableData
- (HRMakeRunnableData)init;
- (int64_t)findBlockingThreadForTailspin:(id)tailspin sampleStore:(id)store mainThread:(id)thread hangStartTime:(unint64_t)time hangEndTime:(unint64_t)endTime hangDuration:(int)duration;
- (int64_t)findBlockingThreadFromSampleStore:(id)store mainThread:(id)thread hangStartTime:(unint64_t)time hangEndTime:(unint64_t)endTime;
- (void)storeOtherBlockingThreadInfoInBlockingThreadInfo:(id)info sampleStore:(id)store mostBlockingTimeThreadId:(id)id sortedThreadsMaxCumlativeTime:(id)time blockingTimeByThread:(id)thread tidToPidDict:(id)dict;
- (void)storeTopBlockingThreadInfoInBlockingThreadInfo:(id)info sampleStore:(id)store mostBlockingTimeThreadId:(id)id pidMostBlockingTime:(id)time blockedTime:(id)blockedTime isHangMainThread:(BOOL)thread;
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

- (void)storeTopBlockingThreadInfoInBlockingThreadInfo:(id)info sampleStore:(id)store mostBlockingTimeThreadId:(id)id pidMostBlockingTime:(id)time blockedTime:(id)blockedTime isHangMainThread:(BOOL)thread
{
  threadCopy = thread;
  idCopy = id;
  timeCopy = time;
  blockedTimeCopy = blockedTime;
  storeCopy = store;
  infoCopy = info;
  v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%#llx", [idCopy unsignedLongLongValue]);
  [infoCopy setObject:v18 forKeyedSubscript:@"topBlockingThreadId"];

  [infoCopy setObject:timeCopy forKeyedSubscript:@"topBlockingPid"];
  v19 = sub_1000153B0(storeCopy, timeCopy);

  [infoCopy setObject:v19 forKeyedSubscript:@"topBlockingProcess"];
  [infoCopy setObject:blockedTimeCopy forKeyedSubscript:@"topBlockingTimeMS"];

  [infoCopy setObject:0 forKeyedSubscript:@"otherBlockingThreads"];
  [infoCopy setObject:0 forKeyedSubscript:@"nextTopBlockingThreadInfo"];

  if (threadCopy)
  {
    objc_storeStrong(&self->_topBlockingPid, time);
  }

  [(NSMutableArray *)self->_allBlockingThreadsArray addObject:idCopy];
}

- (void)storeOtherBlockingThreadInfoInBlockingThreadInfo:(id)info sampleStore:(id)store mostBlockingTimeThreadId:(id)id sortedThreadsMaxCumlativeTime:(id)time blockingTimeByThread:(id)thread tidToPidDict:(id)dict
{
  infoCopy = info;
  storeCopy = store;
  idCopy = id;
  timeCopy = time;
  threadCopy = thread;
  dictCopy = dict;
  v35 = objc_alloc_init(NSMutableArray);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v16 = timeCopy;
  v17 = [v16 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v39;
    v32 = idCopy;
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
        if (([v21 isEqualToNumber:idCopy] & 1) == 0)
        {
          v22 = [threadCopy objectForKeyedSubscript:v21];
          v23 = sub_10000B548([v22 cumulativeTime]);

          if (v23 > 50.0)
          {
            v42[0] = @"threadId";
            v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%#llx", [v21 unsignedLongLongValue]);
            v43[0] = v24;
            v42[1] = @"process";
            [dictCopy objectForKeyedSubscript:v21];
            v26 = v25 = threadCopy;
            v27 = sub_1000153B0(storeCopy, v26);
            v43[1] = v27;
            v42[2] = @"blockingTimeMS";
            v28 = [NSNumber numberWithDouble:v23];
            v43[2] = v28;
            [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:3];
            v30 = v29 = v19;
            [v35 addObject:v30];

            v19 = v29;
            threadCopy = v25;
            idCopy = v32;
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
    [infoCopy setObject:v35 forKeyedSubscript:@"otherBlockingThreads"];
  }
}

- (int64_t)findBlockingThreadForTailspin:(id)tailspin sampleStore:(id)store mainThread:(id)thread hangStartTime:(unint64_t)time hangEndTime:(unint64_t)endTime hangDuration:(int)duration
{
  tailspinCopy = tailspin;
  storeCopy = store;
  threadCopy = thread;
  threadId = [threadCopy threadId];
  v15 = threadCopy;
  v144 = storeCopy;
  tidToPidDict = [storeCopy tidToPidDict];
  v16 = objc_alloc_init(NSMutableDictionary);
  v147 = 0;
  v17 = 1;
  *&v18 = 134218240;
  v139 = v18;
  v141 = v16;
  v148 = v16;
  v142 = tailspinCopy;
  v143 = threadId;
  unsignedLongLongValue5 = threadId;
  v140 = v15;
  v150 = v15;
  selfCopy = self;
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
    v20 = tailspinCopy;
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
    *(&v183 + 1) = unsignedLongLongValue5;
    timeCopy = time;
    endTimeCopy = endTime;
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
    reverseObjectEnumerator = [p_super reverseObjectEnumerator];
    v36 = [reverseObjectEnumerator countByEnumeratingWithState:v186 objects:buf count:16];
    endTimeCopy5 = endTime;
    v170 = v34;
    if (v36)
    {
      v38 = v36;
      v39 = *v187;
      v168 = reverseObjectEnumerator;
      do
      {
        v40 = 0;
        do
        {
          if (*v187 != v39)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v41 = *(*&v186[8] + 8 * v40);
          if (([v41 inInterrupt] & 1) == 0 && objc_msgSend(v41, "timestamp") < endTimeCopy5)
          {
            v42 = +[SATimestamp timestampWithMachAbsTime:machContTime:wallTime:machTimebase:](SATimestamp, "timestampWithMachAbsTime:machContTime:wallTime:machTimebase:", [v41 timestamp], 0, sub_1000046E4(), 0.0);
            sampleTimestamps = [v34 sampleTimestamps];
            v44 = [v171 lastThreadStateOnOrBeforeTime:v42 sampleIndex:{objc_msgSend(sampleTimestamps, "count") - 1}];

            if (v44)
            {
              timestamp = [v41 timestamp];
              endTimestamp = [v44 endTimestamp];
              if (timestamp <= [endTimestamp machAbsTime])
              {
                timestamp2 = [v41 timestamp];
                startTimestamp = [v44 startTimestamp];
                v47 = timestamp2 >= [startTimestamp machAbsTime];
              }

              else
              {
                v47 = 0;
              }

              v53 = sub_100001684();
              endTimeCopy5 = endTime;
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
              {
                timestamp3 = [v41 timestamp];
                madeRunnableByThreadId = [v41 madeRunnableByThreadId];
                startTimestamp2 = [v44 startTimestamp];
                machAbsTime = [startTimestamp2 machAbsTime];
                endTimestamp2 = [v44 endTimestamp];
                machAbsTime2 = [endTimestamp2 machAbsTime];
                startSampleIndex = [v44 startSampleIndex];
                endSampleIndex = [v44 endSampleIndex];
                *v172 = 134219778;
                v85 = @"outside";
                if (v47)
                {
                  v85 = @"inside";
                }

                *&v172[4] = timestamp3;
                *&v172[12] = 2048;
                *&v172[14] = unsignedLongLongValue5;
                *&v172[22] = 2048;
                v173 = madeRunnableByThreadId;
                *v174 = 2048;
                *&v174[2] = machAbsTime;
                *&v174[10] = 2048;
                *&v174[12] = machAbsTime2;
                v175 = 2048;
                v176 = startSampleIndex;
                endTimeCopy5 = endTime;
                v177 = 2048;
                v178 = endSampleIndex;
                v179 = 2112;
                v180 = v85;
                _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "iterateMkRunnableDataToFindBlockingThreadInfo: eachMadeRunnable: %llu - thread %llx by %llx mkRunnableTime, threadState time %llu-%llu (idx %lu - idx %lu) -> %@", v172, 0x52u);
              }

              if (v47)
              {
                startTimestamp3 = [v44 startTimestamp];
                machAbsTime3 = [startTimestamp3 machAbsTime];

                if (machAbsTime3 <= time)
                {
                  timeCopy2 = time;
                }

                else
                {
                  timeCopy2 = machAbsTime3;
                }

                timestamp4 = [v41 timestamp];
                v58 = sub_100001684();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
                {
                  v86 = timestamp4;
                  timestamp5 = [v41 timestamp];
                  madeRunnableByThreadId2 = [v41 madeRunnableByThreadId];
                  *v172 = 134219264;
                  *&v172[4] = timestamp5;
                  timestamp4 = v86;
                  *&v172[12] = 2048;
                  *&v172[14] = unsignedLongLongValue5;
                  *&v172[22] = 2048;
                  v173 = madeRunnableByThreadId2;
                  *v174 = 2048;
                  *&v174[2] = &v86[-timeCopy2];
                  *&v174[10] = 2048;
                  *&v174[12] = v86;
                  v175 = 2048;
                  v176 = timeCopy2;
                  _os_log_debug_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEBUG, "iterateMkRunnableDataToFindBlockingThreadInfo: eachMadeRunnable: %llu - thread %llx by %llx -> blockedtime = %llu (= %llu - %llu)", v172, 0x3Eu);
                }

                v163 = timeCopy2;
                v59 = timestamp4 >= timeCopy2;
                v60 = &timestamp4[-timeCopy2];
                if (v59)
                {
                  v159 = v42;
                  v155 = timestamp4;
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
                  maxBlockingTime = [v74 maxBlockingTime];

                  if (maxBlockingTime < v69)
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
                    timestamp6 = [v41 timestamp];
                    madeRunnableByThreadId3 = [v41 madeRunnableByThreadId];
                    madeRunnableByThreadId4 = [v41 madeRunnableByThreadId];
                    v91 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v41 madeRunnableByThreadId]);
                    v92 = [v158 objectForKeyedSubscript:v91];
                    maxBlockingTime2 = [v92 maxBlockingTime];
                    *v172 = 134219264;
                    *&v172[4] = timestamp6;
                    *&v172[12] = 2048;
                    *&v172[14] = unsignedLongLongValue5;
                    *&v172[22] = 2048;
                    v173 = madeRunnableByThreadId3;
                    *v174 = 2048;
                    *&v174[2] = madeRunnableByThreadId4;
                    *&v174[10] = 2048;
                    *&v174[12] = v153;
                    v175 = 2048;
                    v176 = maxBlockingTime2;
                    _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "iterateMkRunnableDataToFindBlockingThreadInfo: eachMadeRunnable: %llu - thread %llx by %llx => thread %llu total time is up to %llu and max time %llu", v172, 0x3Eu);
                  }
                }

                else
                {
                  v48 = sub_100001684();
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
                  {
                    timestamp7 = [v41 timestamp];
                    madeRunnableByThreadId5 = [v41 madeRunnableByThreadId];
                    *v172 = 134219008;
                    *&v172[4] = timestamp7;
                    *&v172[12] = 2048;
                    *&v172[14] = unsignedLongLongValue5;
                    *&v172[22] = 2048;
                    v173 = madeRunnableByThreadId5;
                    *v174 = 2048;
                    *&v174[2] = timestamp4;
                    *&v174[10] = 2048;
                    *&v174[12] = v163;
                    _os_log_fault_impl(&_mh_execute_header, v48, OS_LOG_TYPE_FAULT, "iterateMkRunnableDataToFindBlockingThreadInfo: eachMadeRunnable: %llu - thread %llx by %llx -> NEGATIVE blocked time = %llu - %llu)", v172, 0x34u);
                  }
                }

                endTimeCopy5 = endTime;
                goto LABEL_43;
              }
            }

            else
            {
              v48 = sub_100001684();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                timestamp8 = [v41 timestamp];
                madeRunnableByThreadId6 = [v41 madeRunnableByThreadId];
                *v172 = 134218496;
                *&v172[4] = timestamp8;
                *&v172[12] = 2048;
                *&v172[14] = unsignedLongLongValue5;
                *&v172[22] = 2048;
                v173 = madeRunnableByThreadId6;
                _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "iterateMkRunnableDataToFindBlockingThreadInfo: eachMadeRunnable: %llu - thread %llx by %llx mkRunnableTime, threadState is nil", v172, 0x20u);
              }

LABEL_43:
            }

            reverseObjectEnumerator = v168;
            v34 = v170;
          }

          v40 = v40 + 1;
        }

        while (v38 != v40);
        v94 = [reverseObjectEnumerator countByEnumeratingWithState:v186 objects:buf count:16];
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

    v96 = [NSNumber numberWithUnsignedLongLong:unsignedLongLongValue5];
    [v158 removeObjectForKey:v96];

    v97 = v148;
    if (![v158 count])
    {
      v135 = sub_100001684();
      v136 = v135;
      if (unsignedLongLongValue5 == v143)
      {
        tailspinCopy = v142;
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

      tailspinCopy = v142;
      p_super = v146;
      if (os_log_type_enabled(v135, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = unsignedLongLongValue5;
        _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_INFO, "findBlockingThreadForTailspin: no thread found for currentNestedThreadId =%llx ", buf, 0xCu);
      }

      self = selfCopy;
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

    v103 = [tidToPidDict objectForKeyedSubscript:v100];
    v169 = v98;
    v104 = [v98 objectAtIndexedSubscript:0];
    unsignedLongLongValue = [v104 unsignedLongLongValue];
    v106 = [v99 objectAtIndexedSubscript:0];
    unsignedLongLongValue2 = [v106 unsignedLongLongValue];

    v108 = v170;
    v109 = unsignedLongLongValue == unsignedLongLongValue2;
    self = selfCopy;
    if (!v109)
    {
      v110 = sub_100001684();
      if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
      {
        v166 = [v99 objectAtIndexedSubscript:0];
        unsignedLongLongValue3 = [v166 unsignedLongLongValue];
        v161 = [v158 objectForKeyedSubscript:v100];
        cumulativeTime = [v161 cumulativeTime];
        v112 = [v169 objectAtIndexedSubscript:0];
        unsignedLongLongValue4 = [v112 unsignedLongLongValue];
        v114 = [v169 objectAtIndexedSubscript:0];
        v115 = [v158 objectForKeyedSubscript:v114];
        cumulativeTime2 = [v115 cumulativeTime];
        *buf = 134218752;
        *&buf[4] = unsignedLongLongValue3;
        *&buf[12] = 2048;
        *&buf[14] = cumulativeTime;
        self = selfCopy;
        *&buf[22] = 2048;
        v182 = unsignedLongLongValue4;
        LOWORD(v183) = 2048;
        *(&v183 + 2) = cumulativeTime2;
        _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "findBlockingThreadForTailspin: max cumulative Thread id %llx, blocking time %llu, max block time thread id %llx, blocking time %llu ", buf, 0x2Au);

        v108 = v170;
        v97 = v148;
      }
    }

    [(HRMakeRunnableData *)self storeTopBlockingThreadInfoInBlockingThreadInfo:v97 sampleStore:v108 mostBlockingTimeThreadId:v100 pidMostBlockingTime:v103 blockedTime:v102 isHangMainThread:unsignedLongLongValue5 == v143];
    if ([v102 unsignedLongLongValue] < 0x33)
    {
      v125 = 0;
      v17 = 0;
    }

    else
    {
      [(HRMakeRunnableData *)self storeOtherBlockingThreadInfoInBlockingThreadInfo:v97 sampleStore:v108 mostBlockingTimeThreadId:v100 sortedThreadsMaxCumlativeTime:v99 blockingTimeByThread:v158 tidToPidDict:tidToPidDict];
      if (v103)
      {
        v117 = [v158 objectForKeyedSubscript:v100];
        endThreadTime = [v117 endThreadTime];

        v119 = [v158 objectForKeyedSubscript:v100];
        startThreadTime = [v119 startThreadTime];

        v121 = sub_100001684();
        if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
        {
          *buf = v139;
          *&buf[4] = startThreadTime;
          *&buf[12] = 2048;
          *&buf[14] = endThreadTime;
          _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_INFO, "findBlockingThreadForTailspin: new threadStartTime %llu endTime %llu ", buf, 0x16u);
        }

        if (endThreadTime - startThreadTime > (endTime - time) >> 1)
        {
          unsignedLongLongValue5 = [v100 unsignedLongLongValue];
          v150 = sub_100016D78(v170, tidToPidDict, unsignedLongLongValue5);

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

        endTime = endThreadTime;
        time = startThreadTime;
        self = selfCopy;
        goto LABEL_71;
      }

      v123 = sub_100001684();
      if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
      {
        unsignedLongLongValue6 = [v100 unsignedLongLongValue];
        *buf = 134217984;
        *&buf[4] = unsignedLongLongValue6;
        _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "findBlockingThreadForTailspin: pid is nil for Thread with most blocking time %llx ", buf, 0xCu);
      }

      v17 = 0;
      v125 = 3;
    }

    v150 = v171;
LABEL_71:

    tailspinCopy = v142;
    if (v125)
    {
      goto LABEL_110;
    }
  }

  v133 = sub_100001684();
  v134 = v133;
  self = selfCopy;
  if (unsignedLongLongValue5 != v143)
  {
    if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = unsignedLongLongValue5;
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

- (int64_t)findBlockingThreadFromSampleStore:(id)store mainThread:(id)thread hangStartTime:(unint64_t)time hangEndTime:(unint64_t)endTime
{
  storeCopy = store;
  threadCopy = thread;
  tidToPidDict = [storeCopy tidToPidDict];
  threadId = [threadCopy threadId];
  v11 = threadCopy;
  v12 = objc_alloc_init(NSMutableDictionary);
  v13 = v12;
  threadStates = [v11 threadStates];
  lastObject = [threadStates lastObject];

  endTimestamp = [lastObject endTimestamp];
  machAbsTime = [endTimestamp machAbsTime];

  if (machAbsTime > endTime)
  {
    v18 = 4;
    v19 = v13;
    v20 = v11;
    goto LABEL_37;
  }

  obj = v12;
  v46 = storeCopy;
  endTimestamp2 = [lastObject endTimestamp];
  v48 = objc_alloc_init(NSMutableSet);
  v21 = 32;
  v43 = v11;
  v44 = threadId;
  v42 = v13;
  v22 = lastObject;
  while (1)
  {
    v51 = v11;
    turnstileInfo = [v22 turnstileInfo];
    waitInfo = [v22 waitInfo];
    if (turnstileInfo && [turnstileInfo blockingTid])
    {
      blockingTid = [turnstileInfo blockingTid];
      v26 = v48;
      v27 = &MGGetBoolAnswer_ptr;
LABEL_12:
      blockingPid = [turnstileInfo blockingPid];
      if (!waitInfo)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    v27 = &MGGetBoolAnswer_ptr;
    if (!waitInfo || ![waitInfo blockingTid])
    {
      v26 = v48;
      if (!turnstileInfo)
      {
        blockingTid = 0;
LABEL_15:
        blockingPid = 0xFFFFFFFFLL;
        if (!waitInfo)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

      blockingTid = 0;
      if ([turnstileInfo blockingPid] == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    blockingTid = [waitInfo blockingTid];
    blockingPid = [waitInfo blockingPid];
    v26 = v48;
LABEL_16:
    if ([waitInfo blockingPid] != -1)
    {
      blockingPid = [waitInfo blockingPid];
    }

LABEL_18:
    if (!blockingTid && blockingPid == -1)
    {
      lastObject = v22;
      v20 = v51;
      goto LABEL_32;
    }

    v49 = turnstileInfo;
    if (blockingPid == -1)
    {
      v29 = [v27[265] numberWithUnsignedLongLong:blockingTid];
      v30 = [tidToPidDict objectForKeyedSubscript:v29];
      blockingPid = [v30 intValue];

      v26 = v48;
      v27 = &MGGetBoolAnswer_ptr;
    }

    v31 = [v27[265] numberWithUnsignedLongLong:blockingTid];
    v32 = [v27[265] numberWithInt:blockingPid];
    [(HRMakeRunnableData *)self storeTopBlockingThreadInfoInBlockingThreadInfo:v13 sampleStore:v46 mostBlockingTimeThreadId:v31 pidMostBlockingTime:v32 blockedTime:&off_10008AA68 isHangMainThread:threadId == v44];

    if (!blockingTid || ([v27[265] numberWithUnsignedLongLong:blockingTid], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v26, "containsObject:", v33), v33, (v34 & 1) != 0))
    {
      lastObject = v22;
      v20 = v51;
      goto LABEL_31;
    }

    v35 = [v27[265] numberWithUnsignedLongLong:blockingTid];
    [v26 addObject:v35];

    v20 = sub_100016D78(v46, tidToPidDict, blockingTid);

    threadStates2 = [v20 threadStates];
    lastObject = [threadStates2 lastObject];

    startTimestamp = [lastObject startTimestamp];
    if ([startTimestamp gt:endTimestamp2])
    {
      break;
    }

    endTimestamp3 = [lastObject endTimestamp];
    v39 = [endTimestamp3 lt:endTimestamp2];

    turnstileInfo = v49;
    if (v39)
    {
      goto LABEL_32;
    }

    v19 = objc_alloc_init(NSMutableDictionary);
    [v13 setObject:v19 forKeyedSubscript:@"nextTopBlockingThreadInfo"];

    threadId = blockingTid;
    v11 = v20;
    v13 = v19;
    v22 = lastObject;
    if (!--v21)
    {
      goto LABEL_33;
    }
  }

LABEL_31:
  turnstileInfo = v49;
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

  storeCopy = v46;

  v11 = v43;
LABEL_37:

  return v18;
}

@end