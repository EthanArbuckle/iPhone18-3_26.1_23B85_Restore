@interface _DASRuntimeTrackerManager
+ (id)sharedRuntimeTrackerManager;
- (BOOL)doesImmediateRuntimeTrackerExist:(id)a3;
- (BOOL)immediateRuntimeTrackerHasRemainingRuntime:(id)a3;
- (BOOL)isTrackingActivity:(id)a3;
- (BOOL)isTrackingDynamicRuntimeActivity:(id)a3;
- (BOOL)isTrackingImmediateRuntimeActivity:(id)a3;
- (_DASRuntimeTrackerManager)init;
- (double)allocatedRuntime;
- (double)allocatedRuntimeForActivity:(id)a3;
- (double)allocatedRuntimeRemainingForActivity:(id)a3;
- (double)excessRuntime;
- (double)reallocatedRuntimeForActivity:(id)a3;
- (double)taskCountWithUtilization:(float)a3;
- (double)totalReallocatedRuntime;
- (double)unprotectedCurrentRuntimeForActivityName:(id)a3;
- (double)utilizedAllocatedRuntime;
- (double)utilizedRuntime;
- (id)allocationStatsPerActivity;
- (id)description;
- (id)groupTypesForActivity:(id)a3;
- (id)runtimeTrackerFor:(id)a3 inGroup:(id)a4;
- (unint64_t)activitiesTracked;
- (unint64_t)reallocatedTaskCount;
- (void)activityEnded:(id)a3;
- (void)activityEnded:(id)a3 inGroup:(id)a4;
- (void)activityStarted:(id)a3;
- (void)activityStarted:(id)a3 inGroup:(id)a4;
- (void)addRuntime:(double)a3 toTrackers:(id)a4;
- (void)cleanupTimerHandler;
- (void)logOrderingWithActivities:(id)a3;
- (void)reallocateDuration:(double)a3 fromActivity:(id)a4;
- (void)removeAllDynamicRuntimeActivityTracker;
- (void)submitRuntimeActivityTracker:(id)a3 inGroup:(id)a4 withMaximumRuntime:(double)a5;
- (void)updateTracker:(id)a3 withMaximumRuntime:(double)a4 conditionally:(BOOL)a5;
@end

@implementation _DASRuntimeTrackerManager

- (void)cleanupTimerHandler
{
  v3 = [(_DASRuntimeTrackerManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [_DASDaemonLogger logForCategory:@"runtimeLimiter"];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100122CAC(v4);
  }

  if (self->_dynamicRuntimeTracker)
  {
    v5 = +[NSMutableArray array];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v6 = self->_dynamicRuntimeTracker;
    v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v75 objects:v86 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v76;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v76 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v75 + 1) + 8 * i);
          v12 = [(NSMutableDictionary *)self->_dynamicRuntimeTracker objectForKeyedSubscript:v11];
          if (([v12 hasValidWindow] & 1) == 0)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v75 objects:v86 count:16];
      }

      while (v8);
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v13 = v5;
    v14 = [v13 countByEnumeratingWithState:&v71 objects:v85 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v72;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v72 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [(NSMutableDictionary *)self->_dynamicRuntimeTracker removeObjectForKey:*(*(&v71 + 1) + 8 * j)];
        }

        v15 = [v13 countByEnumeratingWithState:&v71 objects:v85 count:16];
      }

      while (v15);
    }

    if (![(NSMutableDictionary *)self->_dynamicRuntimeTracker count])
    {
      dynamicRuntimeTracker = self->_dynamicRuntimeTracker;
      self->_dynamicRuntimeTracker = 0;
    }
  }

  if (self->_immediateRuntimeTracker)
  {
    v19 = +[NSMutableArray array];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v20 = self->_immediateRuntimeTracker;
    v21 = [(NSMutableDictionary *)v20 countByEnumeratingWithState:&v67 objects:v84 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v68;
      do
      {
        for (k = 0; k != v22; k = k + 1)
        {
          if (*v68 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v67 + 1) + 8 * k);
          v26 = [(NSMutableDictionary *)self->_immediateRuntimeTracker objectForKeyedSubscript:v25];
          if (([v26 hasValidWindow] & 1) == 0)
          {
            [v19 addObject:v25];
          }
        }

        v22 = [(NSMutableDictionary *)v20 countByEnumeratingWithState:&v67 objects:v84 count:16];
      }

      while (v22);
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v27 = v19;
    v28 = [v27 countByEnumeratingWithState:&v63 objects:v83 count:16];
    if (v28)
    {
      v30 = v28;
      v31 = *v64;
      *&v29 = 138412290;
      v53 = v29;
      do
      {
        for (m = 0; m != v30; m = m + 1)
        {
          if (*v64 != v31)
          {
            objc_enumerationMutation(v27);
          }

          v33 = *(*(&v63 + 1) + 8 * m);
          v34 = [_DASDaemonLogger logForCategory:@"immediateRuntimeLimit", v53];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v53;
            v82 = v33;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Removed immediateRuntimeTracker for %@", buf, 0xCu);
          }

          [(NSMutableDictionary *)self->_immediateRuntimeTracker removeObjectForKey:v33];
        }

        v30 = [v27 countByEnumeratingWithState:&v63 objects:v83 count:16];
      }

      while (v30);
    }

    if (![(NSMutableDictionary *)self->_immediateRuntimeTracker count])
    {
      immediateRuntimeTracker = self->_immediateRuntimeTracker;
      self->_immediateRuntimeTracker = 0;
    }
  }

  if (self->_immediateRuntimeShortTracker)
  {
    v36 = +[NSMutableArray array];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v37 = self->_immediateRuntimeShortTracker;
    v38 = [(NSMutableDictionary *)v37 countByEnumeratingWithState:&v59 objects:v80 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v60;
      do
      {
        for (n = 0; n != v39; n = n + 1)
        {
          if (*v60 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = *(*(&v59 + 1) + 8 * n);
          v43 = [(NSMutableDictionary *)self->_immediateRuntimeShortTracker objectForKeyedSubscript:v42];
          if (([v43 hasValidWindow] & 1) == 0)
          {
            [v36 addObject:v42];
          }
        }

        v39 = [(NSMutableDictionary *)v37 countByEnumeratingWithState:&v59 objects:v80 count:16];
      }

      while (v39);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v44 = v36;
    v45 = [v44 countByEnumeratingWithState:&v55 objects:v79 count:16];
    if (v45)
    {
      v47 = v45;
      v48 = *v56;
      *&v46 = 138412290;
      v54 = v46;
      do
      {
        for (ii = 0; ii != v47; ii = ii + 1)
        {
          if (*v56 != v48)
          {
            objc_enumerationMutation(v44);
          }

          v50 = *(*(&v55 + 1) + 8 * ii);
          v51 = [_DASDaemonLogger logForCategory:@"immediateRuntimeLimit", v54, v55];
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v54;
            v82 = v50;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Removed immediateRuntimeShortTracker for %@", buf, 0xCu);
          }

          [(NSMutableDictionary *)self->_immediateRuntimeShortTracker removeObjectForKey:v50];
        }

        v47 = [v44 countByEnumeratingWithState:&v55 objects:v79 count:16];
      }

      while (v47);
    }

    if (![(NSMutableDictionary *)self->_immediateRuntimeShortTracker count])
    {
      immediateRuntimeShortTracker = self->_immediateRuntimeShortTracker;
      self->_immediateRuntimeShortTracker = 0;
    }
  }
}

- (_DASRuntimeTrackerManager)init
{
  v14.receiver = self;
  v14.super_class = _DASRuntimeTrackerManager;
  v2 = [(_DASRuntimeTrackerManager *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.duetactivityscheduler.runtimeTracker", v3);
    v5 = *(v2 + 4);
    *(v2 + 4) = v4;

    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v2 + 4));
    v7 = *(v2 + 5);
    *(v2 + 5) = v6;

    v8 = *(v2 + 5);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000569C;
    handler[3] = &unk_1001B5668;
    v13 = v2;
    dispatch_source_set_event_handler(v8, handler);
    v9 = *(v2 + 5);
    v10 = dispatch_walltime(0, 300000000000);
    dispatch_source_set_timer(v9, v10, 0x45D964B800uLL, 0xDF8475800uLL);
    dispatch_activate(*(v2 + 5));
  }

  return v2;
}

+ (id)sharedRuntimeTrackerManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100083288;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020B568 != -1)
  {
    dispatch_once(&qword_10020B568, block);
  }

  v2 = qword_10020B570;

  return v2;
}

- (void)submitRuntimeActivityTracker:(id)a3 inGroup:(id)a4 withMaximumRuntime:(double)a5
{
  v8 = a3;
  v9 = a4;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008339C;
  v13[3] = &unk_1001B7100;
  v17 = a5;
  v14 = v9;
  v15 = self;
  v16 = v8;
  v11 = v8;
  v12 = v9;
  dispatch_sync(queue, v13);
}

- (BOOL)doesImmediateRuntimeTrackerExist:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008367C;
  block[3] = &unk_1001B5AB8;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

- (void)updateTracker:(id)a3 withMaximumRuntime:(double)a4 conditionally:(BOOL)a5
{
  v8 = a3;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000837B4;
  v11[3] = &unk_1001B7128;
  v11[4] = self;
  v12 = v8;
  v14 = a5;
  v13 = a4;
  v10 = v8;
  dispatch_sync(queue, v11);
}

- (void)addRuntime:(double)a3 toTrackers:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100083A58;
  block[3] = &unk_1001B5DC0;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_sync(queue, block);
}

- (void)reallocateDuration:(double)a3 fromActivity:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100083D1C;
  block[3] = &unk_1001B5DC0;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_sync(queue, block);
}

- (void)removeAllDynamicRuntimeActivityTracker
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100083F0C;
  block[3] = &unk_1001B5668;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (BOOL)immediateRuntimeTrackerHasRemainingRuntime:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084030;
  block[3] = &unk_1001B5AB8;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

- (id)runtimeTrackerFor:(id)a3 inGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_DASRuntimeTrackerManager *)self queue];
  dispatch_assert_queue_V2(v8);

  if ([v7 isEqualToString:off_10020A088[0]])
  {
    v9 = 8;
LABEL_7:
    v10 = *(&self->super.isa + v9);
    v11 = [v6 name];
    v12 = [v10 objectForKeyedSubscript:v11];

    goto LABEL_8;
  }

  if ([v7 isEqualToString:off_10020A090[0]])
  {
    v9 = 16;
    goto LABEL_7;
  }

  if ([v7 isEqualToString:off_10020A098])
  {
    v9 = 24;
    goto LABEL_7;
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (id)groupTypesForActivity:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v6 = [v4 name];
  v7 = [(_DASRuntimeTrackerManager *)self isTrackingDynamicRuntimeActivity:v6];

  if (v7)
  {
    [v5 addObject:off_10020A088[0]];
  }

  if ([(_DASRuntimeTrackerManager *)self isTrackingImmediateRuntimeActivity:v4])
  {
    [v5 addObject:off_10020A090[0]];
    [v5 addObject:off_10020A098];
  }

  return v5;
}

- (void)activityStarted:(id)a3
{
  v4 = a3;
  v5 = [(_DASRuntimeTrackerManager *)self groupTypesForActivity:v4];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(_DASRuntimeTrackerManager *)self activityStarted:v4 inGroup:*(*(&v10 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)activityStarted:(id)a3 inGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000846D0;
  block[3] = &unk_1001B56B8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (void)activityEnded:(id)a3
{
  v4 = a3;
  v5 = [(_DASRuntimeTrackerManager *)self groupTypesForActivity:v4];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(_DASRuntimeTrackerManager *)self activityEnded:v4 inGroup:*(*(&v10 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)activityEnded:(id)a3 inGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084954;
  block[3] = &unk_1001B56B8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (double)allocatedRuntimeForActivity:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084BE8;
  block[3] = &unk_1001B5AB8;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (double)unprotectedCurrentRuntimeForActivityName:(id)a3
{
  v4 = a3;
  v5 = [(_DASRuntimeTrackerManager *)self queue];
  dispatch_assert_queue_V2(v5);

  dynamicRuntimeTracker = self->_dynamicRuntimeTracker;
  if (dynamicRuntimeTracker)
  {
    v7 = [(NSMutableDictionary *)dynamicRuntimeTracker objectForKeyedSubscript:v4];
    v8 = v7;
    if (v7)
    {
      [v7 currentRuntime];
      v10 = v9;
    }

    else
    {
      v10 = 0.0;
    }
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (double)reallocatedRuntimeForActivity:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084DE8;
  block[3] = &unk_1001B5AB8;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(queue, block);
  if (v13[3] >= 0.0)
  {
    v7 = v13[3];
  }

  else
  {
    v7 = 0.0;
  }

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (double)allocatedRuntimeRemainingForActivity:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x43E0000000000000;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084F84;
  block[3] = &unk_1001B5AB8;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(queue, block);
  if (v13[3] >= 0.0)
  {
    v7 = v13[3];
  }

  else
  {
    v7 = 0.0;
  }

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (unint64_t)activitiesTracked
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100085230;
  v5[3] = &unk_1001B5A68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)allocatedRuntime
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100085350;
  v5[3] = &unk_1001B5A68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)allocationStatsPerActivity
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100085614;
  v11 = sub_100085624;
  v12 = +[NSMutableDictionary dictionary];
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008562C;
  v6[3] = &unk_1001B5A68;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (double)utilizedRuntime
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000858B0;
  v5[3] = &unk_1001B5A68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)utilizedAllocatedRuntime
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100085A88;
  v5[3] = &unk_1001B5A68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)reallocatedTaskCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100085CB4;
  v5[3] = &unk_1001B5A68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)taskCountWithUtilization:(float)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100085EB8;
  block[3] = &unk_1001B7150;
  v7 = a3;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(queue, block);
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

- (double)excessRuntime
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000860E0;
  v5[3] = &unk_1001B5A68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)totalReallocatedRuntime
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000862EC;
  v5[3] = &unk_1001B5A68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)logOrderingWithActivities:(id)a3
{
  v4 = a3;
  v23 = +[NSMutableArray array];
  v22 = +[NSMutableArray array];
  v5 = +[NSMutableArray array];
  context = objc_autoreleasePoolPush();
  v6 = +[NSDate now];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
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
        if ([v12 isIntensive])
        {
          v13 = [v12 name];
          v14 = [(_DASRuntimeTrackerManager *)self isTrackingDynamicRuntimeActivity:v13];

          if (v14)
          {
            [(_DASRuntimeTrackerManager *)self allocatedRuntimeRemainingForActivity:v12];
            if (v15 <= 0.0)
            {
              v16 = [v12 name];
              [v23 addObject:v16];
            }

            if ([v12 timewiseEligibleAtDate:v6])
            {
              [v5 addObject:v12];
            }

            else
            {
              v17 = [v12 name];
              [v22 addObject:v17];
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v9);
  }

  objc_autoreleasePoolPop(context);
  v18 = [_DASDaemonLogger logForCategory:@"runtimeTracker"];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_100122F60();
  }

  v19 = [_DASDaemonLogger logForCategory:@"runtimeTracker"];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v23;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Intensive Workloads Exhausted %@", buf, 0xCu);
  }

  v20 = [_DASDaemonLogger logForCategory:@"runtimeTracker"];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Sorted Eligible Intensive Workloads %@", buf, 0xCu);
  }
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100085614;
  v10 = sub_100085624;
  v11 = &stru_1001BA3C0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100086824;
  v5[3] = &unk_1001B5A68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isTrackingActivity:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = [(_DASRuntimeTrackerManager *)self groupTypesForActivity:v4];
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000869A4;
  v10[3] = &unk_1001B6A08;
  v10[4] = self;
  v11 = v5;
  v12 = v4;
  v13 = &v14;
  v7 = v4;
  v8 = v5;
  dispatch_sync(queue, v10);
  LOBYTE(v5) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v5;
}

- (BOOL)isTrackingDynamicRuntimeActivity:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100086BA8;
  block[3] = &unk_1001B5AB8;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

- (BOOL)isTrackingImmediateRuntimeActivity:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_immediateRuntimeTracker && self->_immediateRuntimeShortTracker && [v4 requestsImmediateRuntime])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100086D08;
    block[3] = &unk_1001B5AB8;
    block[4] = self;
    v10 = v5;
    v11 = &v12;
    dispatch_sync(queue, block);
    v7 = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

@end