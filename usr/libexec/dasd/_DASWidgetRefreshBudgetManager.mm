@interface _DASWidgetRefreshBudgetManager
+ (id)sharedInstance;
+ (id)widgetBudgetIDFromBudgetName:(id)a3;
- (_DASWidgetRefreshBudgetManager)init;
- (double)balanceForBudgetWithName:(id)a3;
- (double)balanceForWidgetBudgetID:(id)a3;
- (double)capacityForBudgetWithName:(id)a3;
- (id)allBudgets;
- (id)locked_instantiateBudgetsInto:(id)a3 withRemovals:(id)a4;
- (id)requiredBudgetsInfo;
- (void)decrementBy:(double)a3 forBudgetWithName:(id)a4;
- (void)locked_reinstantiateConfiguredBudgets;
- (void)reinstantiateConfiguredBudgets;
- (void)reportActivityNoLongerRunning:(id)a3;
- (void)reportActivityRunning:(id)a3;
- (void)resetBudgets;
- (void)setBalance:(double)a3 forBudgetWithName:(id)a4;
- (void)setCapacity:(double)a3 forBudgetWithName:(id)a4;
@end

@implementation _DASWidgetRefreshBudgetManager

- (_DASWidgetRefreshBudgetManager)init
{
  v34.receiver = self;
  v34.super_class = _DASWidgetRefreshBudgetManager;
  v2 = [(_DASWidgetRefreshBudgetManager *)&v34 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.duetactivityscheduler", "widgetBudgetManager");
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UTILITY, 0);
    v7 = dispatch_queue_create("com.apple.dasd.widgetBudgetManagement", v6);
    v8 = *(v2 + 8);
    *(v2 + 8) = v7;

    v9 = +[_CDClientContext userContext];
    v10 = *(v2 + 2);
    *(v2 + 2) = v9;

    v11 = +[_DASDefaultsBudgetPersistence persistence];
    v12 = *(v2 + 5);
    *(v2 + 5) = v11;

    v13 = +[_DASWidgetRefreshUsageTracker sharedInstance];
    v14 = *(v2 + 6);
    *(v2 + 6) = v13;

    v15 = objc_alloc_init(NSMutableDictionary);
    v16 = *(v2 + 3);
    *(v2 + 3) = v15;

    v17 = [_DASBudgetModulator modulatorForBudgetTypes:@"Widgets" withBudgets:0 persistence:*(v2 + 5) withQueue:*(v2 + 8)];
    v18 = *(v2 + 4);
    *(v2 + 4) = v17;

    v19 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v2 + 8));
    v20 = dispatch_walltime(0, 0);
    dispatch_source_set_timer(v19, v20, 0x4E94914F0000uLL, 0x8BB2C97000uLL);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002C6FC;
    block[3] = &unk_1001B5668;
    v21 = v2;
    v33 = v21;
    v22 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_INHERIT_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
    dispatch_source_set_event_handler(v19, v22);

    dispatch_activate(v19);
    v23 = objc_opt_new();
    v24 = v21[7];
    v21[7] = v23;

    if (([v21[7] unnotifiedIsDataAvailableForClassC] & 1) == 0)
    {
      objc_initWeak(&location, v21);
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_10002C704;
      v29[3] = &unk_1001B55C0;
      objc_copyWeak(&v30, &location);
      [v21[7] setChangeHandler:v29];
      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
    }

    v25 = *(v2 + 8);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10002C8E4;
    v27[3] = &unk_1001B5668;
    v28 = v21;
    dispatch_async(v25, v27);
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C9E8;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020AF20 != -1)
  {
    dispatch_once(&qword_10020AF20, block);
  }

  v2 = qword_10020AF28;

  return v2;
}

+ (id)widgetBudgetIDFromBudgetName:(id)a3
{
  v3 = a3;
  v4 = [v3 substringFromIndex:{objc_msgSend(@"com.apple.dasd.widget", "length") + 1}];

  return v4;
}

- (id)allBudgets
{
  v3 = +[NSMutableArray array];
  queue = self->_queue;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10002CB90;
  v11 = &unk_1001B56E0;
  v12 = self;
  v13 = v3;
  v5 = v3;
  dispatch_sync(queue, &v8);
  v6 = [v5 copy];

  return v6;
}

- (void)reinstantiateConfiguredBudgets
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002CDD8;
  block[3] = &unk_1001B5668;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)locked_reinstantiateConfiguredBudgets
{
  dispatch_assert_queue_V2(self->_queue);
  v5 = +[NSMutableArray array];
  v3 = [(_DASWidgetRefreshBudgetManager *)self managedBudgets];
  v4 = [(_DASWidgetRefreshBudgetManager *)self locked_instantiateBudgetsInto:v3 withRemovals:v5];

  if ([v4 count] || objc_msgSend(v5, "count"))
  {
    [(_DASBudgetModulator *)self->_widgetBudgetModulator locked_updateBudgetsToBeModulatedAdditions:v4 removals:v5];
  }
}

- (id)locked_instantiateBudgetsInto:(id)a3 withRemovals:(id)a4
{
  v6 = a3;
  v120 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v7 = [(_DASWidgetRefreshBudgetManager *)self widgetRefreshUsageTracker];
  [v7 invalidateComputedBudgetCache];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10011D794(log, v9, v10, v11, v12, v13, v14, v15);
  }

  v16 = [(_DASWidgetRefreshBudgetManager *)self requiredBudgetsInfo];
  v17 = self->_log;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "requiredInfo", buf, 2u);
    v154[0] = _NSConcreteStackBlock;
    v154[1] = 3221225472;
    v154[2] = sub_10002DCE0;
    v154[3] = &unk_1001B5608;
    v154[4] = self;
    [v16 enumerateKeysAndObjectsUsingBlock:v154];
  }

  v127 = [v16 allKeys];
  v128 = v16;
  defaultsPersistence = self->_defaultsPersistence;
  v19 = [v16 allKeys];
  v20 = [NSSet setWithArray:v19];
  v21 = [(_DASDefaultsBudgetPersistence *)defaultsPersistence loadBudgetsWithExpectedNames:v20];

  v22 = self->_log;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v157 = v21;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Stored: %@", buf, 0xCu);
  }

  v23 = objc_alloc_init(NSMutableDictionary);
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v24 = v21;
  v25 = [v24 countByEnumeratingWithState:&v150 objects:v164 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v151;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v151 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v150 + 1) + 8 * i);
        v30 = [v29 name];
        [v23 setObject:v29 forKeyedSubscript:v30];
      }

      v26 = [v24 countByEnumeratingWithState:&v150 objects:v164 count:16];
    }

    while (v26);
  }

  v125 = v23;
  v31 = [v23 allKeys];
  context = self->_context;
  v33 = [_CDContextualKeyPath keyPathWithKey:kDASWidgetOverrideKeyPath];
  v34 = [(_CDContext *)context objectForKeyedSubscript:v33];

  v35 = self->_log;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "override list:", buf, 2u);
    v149[0] = _NSConcreteStackBlock;
    v149[1] = 3221225472;
    v149[2] = sub_10002DD50;
    v149[3] = &unk_1001B5D70;
    v149[4] = self;
    [v34 enumerateObjectsUsingBlock:v149];
  }

  v36 = objc_alloc_init(NSMutableArray);
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v37 = v34;
  v38 = [v37 countByEnumeratingWithState:&v145 objects:v163 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v146;
    do
    {
      for (j = 0; j != v39; j = j + 1)
      {
        if (*v146 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = [_DASWidgetRefreshBudgetManager budgetNameFromWidgetBudgetID:*(*(&v145 + 1) + 8 * j)];
        [v36 addObject:v42];
      }

      v39 = [v37 countByEnumeratingWithState:&v145 objects:v163 count:16];
    }

    while (v39);
  }

  v117 = v37;
  v119 = v24;

  v43 = self->_log;
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    sub_10011D7CC(v43, v44, v45, v46, v47, v48, v49, v50);
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  obj = v31;
  v51 = [obj countByEnumeratingWithState:&v141 objects:v162 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v142;
    do
    {
      for (k = 0; k != v52; k = k + 1)
      {
        if (*v142 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v55 = *(*(&v141 + 1) + 8 * k);
        v56 = self->_log;
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v157 = v55;
          _os_log_debug_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        if (([v36 containsObject:{v55, v117, v119}] & 1) == 0 && (objc_msgSend(v127, "containsObject:", v55) & 1) == 0)
        {
          [v125 removeObjectForKey:v55];
          v57 = self->_log;
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v157 = v55;
            _os_log_debug_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEBUG, "Purged inactive widget budget %@ from stored budgets", buf, 0xCu);
          }
        }
      }

      v52 = [obj countByEnumeratingWithState:&v141 objects:v162 count:16];
    }

    while (v52);
  }

  v58 = self->_log;
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    sub_10011D804(v58, v59, v60, v61, v62, v63, v64, v65);
  }

  [v6 allKeys];
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v121 = v140 = 0u;
  v66 = [v121 countByEnumeratingWithState:&v137 objects:v161 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v138;
    do
    {
      for (m = 0; m != v67; m = m + 1)
      {
        if (*v138 != v68)
        {
          objc_enumerationMutation(v121);
        }

        v70 = *(*(&v137 + 1) + 8 * m);
        v71 = self->_log;
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v157 = v70;
          _os_log_debug_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        if (([v36 containsObject:v70] & 1) == 0 && (objc_msgSend(v127, "containsObject:", v70) & 1) == 0)
        {
          v72 = [v6 objectForKeyedSubscript:v70];
          v73 = v72;
          if (v120 && v72)
          {
            [v120 addObject:v72];
          }

          [v6 removeObjectForKey:v70];
          v74 = self->_log;
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v157 = v70;
            _os_log_debug_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEBUG, "Purged inactive widget budget %@ from managed budgets", buf, 0xCu);
          }
        }
      }

      v67 = [v121 countByEnumeratingWithState:&v137 objects:v161 count:16];
    }

    while (v67);
  }

  v126 = objc_alloc_init(NSMutableArray);
  v75 = [(_DASWidgetRefreshUsageTracker *)self->_widgetRefreshUsageTracker biomeMigrationComplete];
  v133 = 0u;
  v134 = 0u;
  if (v75)
  {
    v76 = 4;
  }

  else
  {
    v76 = 1;
  }

  v135 = 0uLL;
  v136 = 0uLL;
  v122 = [v128 allKeys];
  v77 = [v122 countByEnumeratingWithState:&v133 objects:v160 count:16];
  if (v77)
  {
    v78 = v77;
    v79 = *v134;
    do
    {
      for (n = 0; n != v78; n = n + 1)
      {
        if (*v134 != v79)
        {
          objc_enumerationMutation(v122);
        }

        v81 = *(*(&v133 + 1) + 8 * n);
        v82 = [v128 objectForKeyedSubscript:v81];
        [v82 doubleValue];
        v84 = v83;

        v85 = [v6 objectForKeyedSubscript:v81];

        if (v85)
        {
          v86 = [v6 objectForKeyedSubscript:v81];
          [v86 capacity];
          if (v87 != v84)
          {
            v88 = self->_log;
            if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
            {
              *buf = 138543618;
              v157 = v86;
              v158 = 2048;
              v159 = v84;
              _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_INFO, "budget %{public}@ updating capacity to %f", buf, 0x16u);
            }

            [v86 setCapacity:v84];
            [v86 setAllocationType:v76];
          }
        }

        else
        {
          v89 = [v125 objectForKeyedSubscript:v81];

          if (v89)
          {
            v86 = [v125 objectForKeyedSubscript:v81];
            [v86 capacity];
            if (v90 == v84)
            {
              v98 = self->_log;
              if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
              {
                *buf = 138543362;
                v157 = v86;
                v92 = v98;
                v93 = "Loaded: %{public}@";
                v94 = 12;
LABEL_82:
                _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_INFO, v93, buf, v94);
              }
            }

            else
            {
              [v86 setCapacity:v84];
              v91 = self->_log;
              if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
              {
                *buf = 138543618;
                v157 = v86;
                v158 = 2048;
                v159 = v84;
                v92 = v91;
                v93 = "Updated: %{public}@, Capacity=%f";
                v94 = 22;
                goto LABEL_82;
              }
            }

            [v86 setAllocationType:v76];
            [v6 setObject:v86 forKeyedSubscript:v81];
            [v126 addObject:v86];
            goto LABEL_84;
          }

          v86 = [_DASWidgetRefreshBudgetManager widgetBudgetIDFromBudgetName:v81];
          if (!v86)
          {
            v95 = self->_log;
            if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v157 = v81;
              _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "Somehow couldn't find widget for budget: %@", buf, 0xCu);
            }
          }

          v96 = [_DASWidgetRefreshBudget budgetWithName:v81 widgetBudgetID:v86 capacity:v76 balance:v84 allocationType:0.0];
          [v6 setObject:v96 forKeyedSubscript:v81];
          [v126 addObject:v96];
          v97 = self->_log;
          if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v157 = v96;
            _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_INFO, "budget %{public}@ init - newly created", buf, 0xCu);
          }
        }

LABEL_84:
      }

      v78 = [v122 countByEnumeratingWithState:&v133 objects:v160 count:16];
    }

    while (v78);
  }

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v123 = v118;
  v99 = [v123 countByEnumeratingWithState:&v129 objects:v155 count:16];
  if (v99)
  {
    v100 = v99;
    v101 = *v130;
    do
    {
      for (ii = 0; ii != v100; ii = ii + 1)
      {
        if (*v130 != v101)
        {
          objc_enumerationMutation(v123);
        }

        v103 = *(*(&v129 + 1) + 8 * ii);
        v104 = self->_log;
        if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v157 = v103;
          _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_INFO, "managing override list widget %@", buf, 0xCu);
        }

        v105 = [_DASWidgetRefreshBudgetManager budgetNameFromWidgetBudgetID:v103];
        v106 = [(_DASWidgetRefreshUsageTracker *)self->_widgetRefreshUsageTracker maxWidgetRefreshBudgetForIndividualDaily];
        v107 = v106;
        v108 = vcvtd_n_f64_u32(v106, 3uLL);
        v109 = [v6 objectForKeyedSubscript:v105];

        if (v109)
        {
          v110 = [v6 objectForKeyedSubscript:v105];
          [v110 setCapacity:v107];
          [v110 balance];
          if (v111 > v108)
          {
            [v110 balance];
            v108 = v112;
          }

          [v110 setBalance:v108];
          [v110 setAllocationType:1];
          v113 = self->_log;
          if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v157 = v110;
            _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_INFO, "Modified capacity and allocation type of override list widget budget %{public}@", buf, 0xCu);
          }
        }

        else
        {
          v110 = [_DASWidgetRefreshBudget budgetWithName:v105 widgetBudgetID:v103 capacity:1 balance:v107 allocationType:v108];
          v114 = self->_log;
          if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v157 = v110;
            _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_INFO, "budget %{public}@ init - newly created override list widget budget", buf, 0xCu);
          }

          [v6 setObject:v110 forKeyedSubscript:v105];
          [v126 addObject:v110];
        }
      }

      v100 = [v123 countByEnumeratingWithState:&v129 objects:v155 count:16];
    }

    while (v100);
  }

  v115 = self->_log;
  if (os_log_type_enabled(v115, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_INFO, "Instantiation complete", buf, 2u);
  }

  return v126;
}

- (void)resetBudgets
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002DE18;
  block[3] = &unk_1001B5668;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)requiredBudgetsInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(_DASWidgetRefreshUsageTracker *)self->_widgetRefreshUsageTracker dailyBudgetsForAllWidgets];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [_DASWidgetRefreshBudgetManager budgetNameFromWidgetBudgetID:v10];
        v12 = [v4 objectForKeyedSubscript:v10];
        [v3 setObject:v12 forKeyedSubscript:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v3;
}

- (double)balanceForBudgetWithName:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E114;
  block[3] = &unk_1001B5D98;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (double)capacityForBudgetWithName:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E258;
  block[3] = &unk_1001B5D98;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (double)balanceForWidgetBudgetID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E39C;
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

- (void)setBalance:(double)a3 forBudgetWithName:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E4F4;
  block[3] = &unk_1001B5DC0;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_sync(queue, block);
}

- (void)decrementBy:(double)a3 forBudgetWithName:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E70C;
  block[3] = &unk_1001B5DC0;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_sync(queue, block);
}

- (void)setCapacity:(double)a3 forBudgetWithName:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E90C;
  block[3] = &unk_1001B5DC0;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_sync(queue, block);
}

- (void)reportActivityNoLongerRunning:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002EC7C;
  block[3] = &unk_1001B5D98;
  v15 = &v16;
  block[4] = self;
  v6 = v4;
  v14 = v6;
  dispatch_sync(queue, block);
  if (v17[3] > 0.0)
  {
    v7 = self->_log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 widgetBudgetID];
      v9 = *(v17 + 3);
      *buf = 138543618;
      v21 = v8;
      v22 = 2048;
      v23 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Attempting to decrement widget refresh budget for  %{public}@ by %lf", buf, 0x16u);
    }

    v10 = v17[3];
    v11 = [v6 widgetBudgetID];
    v12 = [_DASWidgetRefreshBudgetManager budgetNameFromWidgetBudgetID:v11];
    [(_DASWidgetRefreshBudgetManager *)self decrementBy:v12 forBudgetWithName:v10];
  }

  _Block_object_dispose(&v16, 8);
}

- (void)reportActivityRunning:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002ED4C;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

@end