@interface _DASActivityDependencyManager
+ (_DASActivityDependencyManager)sharedInstance;
- (BOOL)areDependenciesSatisfiedFor:(id)a3;
- (BOOL)isDependentActivity:(id)a3;
- (BOOL)reportActivity:(id)a3 consumedResults:(id)a4 error:(id *)a5;
- (BOOL)reportActivity:(id)a3 producedResults:(id)a4 error:(id *)a5;
- (BOOL)shouldMonitorDependenciesForActivity:(id)a3;
- (_DASActivityDependencyManager)init;
- (id)dastool_queryStatusOfResultIdentifier:(id)a3;
- (id)queue_checkedCompletionDependencyGroupForIdentifier:(id)a3;
- (id)queue_checkedResultDependencyGroupForIdentifier:(id)a3;
- (id)queue_dependencyGroup:(id)a3;
- (id)queue_dependencyGroupCreateIfDoesNotExist:(id)a3;
- (void)addActivityToDependencyGroups:(id)a3;
- (void)beginDependencyMonitoringForActivity:(id)a3;
- (void)dastool_forceResetOfResultIdentifier:(id)a3;
- (void)endDependencyMonitoringForActivity:(id)a3;
- (void)refreshGroupsWithFileProtection:(id)a3;
- (void)removeActivityFromDependencyGroups:(id)a3;
- (void)reportActivityDidFinishRunning:(id)a3;
- (void)resetDependenciesForIdentifier:(id)a3 byActivity:(id)a4;
- (void)resetFastPassDependencies;
- (void)resetFastPassDependenciesForActivity:(id)a3;
@end

@implementation _DASActivityDependencyManager

+ (_DASActivityDependencyManager)sharedInstance
{
  if (qword_10020B4F8 != -1)
  {
    sub_100122000();
  }

  v3 = qword_10020B500;

  return v3;
}

- (_DASActivityDependencyManager)init
{
  v11.receiver = self;
  v11.super_class = _DASActivityDependencyManager;
  v2 = [(_DASActivityDependencyManager *)&v11 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    dependencyGroups = v2->_dependencyGroups;
    v2->_dependencyGroups = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.dasd.DependencyManager", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = os_log_create("com.apple.duetactivityscheduler", "DependencyManager");
    log = v2->_log;
    v2->_log = v8;
  }

  return v2;
}

- (void)refreshGroupsWithFileProtection:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100079CF0;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)beginDependencyMonitoringForActivity:(id)a3
{
  v4 = a3;
  if ([(_DASActivityDependencyManager *)self shouldMonitorDependenciesForActivity:v4])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Beginning dependencies monitoring for %@", &v6, 0xCu);
    }

    [(_DASActivityDependencyManager *)self addActivityToDependencyGroups:v4];
  }
}

- (void)addActivityToDependencyGroups:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007A140;
  v7[3] = &unk_1001B56E0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)endDependencyMonitoringForActivity:(id)a3
{
  v4 = a3;
  v5 = [(_DASActivityDependencyManager *)self shouldMonitorDependenciesForActivity:v4];
  v6 = os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v6)
    {
      sub_100122240();
    }

    [(_DASActivityDependencyManager *)self removeActivityFromDependencyGroups:v4];
  }

  else if (v6)
  {
    sub_1001221D0();
  }
}

- (void)removeActivityFromDependencyGroups:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007A4E8;
  v7[3] = &unk_1001B56E0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (BOOL)reportActivity:(id)a3 consumedResults:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v22 = 0;
  v23[0] = &v22;
  v23[1] = 0x3032000000;
  v23[2] = sub_10007AA98;
  v23[3] = sub_10007AAA8;
  v24 = 0;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v30 = "[_DASActivityDependencyManager reportActivity:consumedResults:error:]";
    v31 = 2112;
    v32 = v8;
    v33 = 2112;
    v34 = v9;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: %@ reporting result consumption: %@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007AAB0;
  block[3] = &unk_1001B6F50;
  v12 = v9;
  v17 = v12;
  v20 = &v22;
  v13 = v8;
  v21 = &v25;
  v18 = v13;
  v19 = self;
  dispatch_sync(queue, block);
  if (*(v26 + 24) != 1 || *(v23[0] + 40))
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_1001222B0(v13, v23);
      if (!a5)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    if (a5)
    {
LABEL_7:
      *a5 = *(v23[0] + 40);
    }
  }

LABEL_8:
  v14 = *(v26 + 24);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v25, 8);

  return v14;
}

- (BOOL)reportActivity:(id)a3 producedResults:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v22 = 0;
  v23[0] = &v22;
  v23[1] = 0x3032000000;
  v23[2] = sub_10007AA98;
  v23[3] = sub_10007AAA8;
  v24 = 0;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v30 = "[_DASActivityDependencyManager reportActivity:producedResults:error:]";
    v31 = 2112;
    v32 = v8;
    v33 = 2112;
    v34 = v9;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: %@ reporting result production: %@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007B1AC;
  block[3] = &unk_1001B6F50;
  v12 = v9;
  v17 = v12;
  v20 = &v22;
  v13 = v8;
  v21 = &v25;
  v18 = v13;
  v19 = self;
  dispatch_sync(queue, block);
  if (*(v26 + 24) != 1 || *(v23[0] + 40))
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_1001223D0(v13, v23);
      if (!a5)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    if (a5)
    {
LABEL_7:
      *a5 = *(v23[0] + 40);
    }
  }

LABEL_8:
  v14 = *(v26 + 24);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v25, 8);

  return v14;
}

- (void)reportActivityDidFinishRunning:(id)a3
{
  v4 = a3;
  if ([(_DASActivityDependencyManager *)self shouldMonitorDependenciesForActivity:v4])
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10007B620;
    v6[3] = &unk_1001B56E0;
    v6[4] = self;
    v7 = v4;
    dispatch_sync(queue, v6);
  }
}

- (BOOL)areDependenciesSatisfiedFor:(id)a3
{
  v4 = a3;
  v5 = [v4 dependencies];
  if (v5 && (v6 = v5, [v4 dependencies], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6, v8))
  {
    if (![v4 dependenciesPreCleared])
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 0;
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10007B9A8;
      block[3] = &unk_1001B5AB8;
      v13 = v4;
      v14 = self;
      v15 = &v16;
      dispatch_sync(queue, block);
      v9 = *(v17 + 24);

      _Block_object_dispose(&v16, 8);
      goto LABEL_9;
    }

    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_100122594();
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100122610();
  }

  v9 = 1;
LABEL_9:

  return v9 & 1;
}

- (void)resetDependenciesForIdentifier:(id)a3 byActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[_DASActivityDependencyManager resetDependenciesForIdentifier:byActivity:]";
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: %@ resetting result production: %@", buf, 0x20u);
  }

  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007BE14;
  v11[3] = &unk_1001B56E0;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  dispatch_sync(queue, v11);
}

- (BOOL)isDependentActivity:(id)a3
{
  v3 = [a3 dependencies];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)resetFastPassDependencies
{
  v2 = [objc_opt_class() allFastPassIdentifiers];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        [objc_opt_class() resetDependenciesContainingSubstring:v7];
        [objc_opt_class() resetDependenciesContainingSubstring:v7];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)resetFastPassDependenciesForActivity:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() allFastPassIdentifiers];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v3 containsString:v9])
        {
          [objc_opt_class() resetDependenciesContainingSubstring:v9];
          [objc_opt_class() resetDependenciesContainingSubstring:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)queue_dependencyGroupCreateIfDoesNotExist:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  dependencyGroups = self->_dependencyGroups;
  v6 = [v4 identifier];
  v7 = [(NSMutableDictionary *)dependencyGroups objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = [v4 isActivityCompletionBased];
    v9 = off_1001B49D0;
    if (!v8)
    {
      v9 = &off_1001B49D8;
    }

    v10 = *v9;
    v11 = [v4 identifier];
    v7 = [(__objc2_class *)v10 groupFromPersistence:v11];

    v12 = self->_dependencyGroups;
    v13 = [v4 identifier];
    [(NSMutableDictionary *)v12 setObject:v7 forKeyedSubscript:v13];
  }

  return v7;
}

- (id)queue_checkedResultDependencyGroupForIdentifier:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NSMutableDictionary *)self->_dependencyGroups objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [_DASActivityResultDependencyGroup groupFromPersistence:v4];
    [(NSMutableDictionary *)self->_dependencyGroups setObject:v5 forKeyedSubscript:v4];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)queue_checkedCompletionDependencyGroupForIdentifier:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NSMutableDictionary *)self->_dependencyGroups objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [_DASActivityCompletionDependencyGroup groupFromPersistence:v4];
    [(NSMutableDictionary *)self->_dependencyGroups setObject:v5 forKeyedSubscript:v4];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldMonitorDependenciesForActivity:(id)a3
{
  v3 = a3;
  v4 = [v3 dependencies];
  if ([v4 count])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 producedResultIdentifiers];
    v5 = [v6 count] != 0;
  }

  return v5;
}

- (id)queue_dependencyGroup:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_dependencyGroups objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [_DASActivityResultDependencyGroup groupFromDefaultsWithoutCreation:v4];
    if (!v5)
    {
      v5 = [_DASActivityCompletionDependencyGroup groupFromPersistenceWithoutCreation:v4];
    }
  }

  v6 = v5;

  return v6;
}

- (void)dastool_forceResetOfResultIdentifier:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[_DASActivityDependencyManager(Dastool) dastool_forceResetOfResultIdentifier:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: resetting result production/consumption on behalf of dastool: %@", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10007C62C;
  v8[3] = &unk_1001B56E0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(queue, v8);
}

- (id)dastool_queryStatusOfResultIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10007AA98;
  v16 = sub_10007AAA8;
  v17 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007C784;
  block[3] = &unk_1001B5AB8;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

@end