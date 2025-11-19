@interface MOLifeEventManager
+ (id)_createLifeEventContextWithError:(id *)a3;
- (MOLifeEventManager)initWithUniverse:(id)a3;
- (id)_createMOEventFromDiningEvent:(id)a3 existingMOEvent:(id)a4;
- (id)_createMOEventFromEntityIdentifier:(id)a3 existingMOEvent:(id)a4 category:(unint64_t)a5 date:(id)a6 confidenceScore:(id)a7 locations:(id)a8;
- (id)_createMOEventFromEntityIdentifier:(id)a3 existingMOEvent:(id)a4 logErrorWhenEventHasError:(BOOL)a5;
- (id)_createMOEventFromGamingEvent:(id)a3 existingMOEvent:(id)a4;
- (id)_createMOEventFromShoppingEvent:(id)a3 existingMOEvent:(id)a4;
- (id)_createMOEventFromTransportationEvent:(id)a3 existingMOEvent:(id)a4;
- (id)_createMOEventsBetweenStartDate:(id)a3 endDate:(id)a4 excludingEntityIdentifiers:(id)a5 error:(id *)a6;
- (id)_createNewEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5;
- (id)_entityIdentifierFromMomentEvent:(id)a3;
- (id)_rehydrateStoredLifeEvents:(id)a3;
- (void)_fetchLifeEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6;
- (void)_rehydrateLifeEvents:(id)a3 handler:(id)a4;
- (void)fetchLifeEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6;
- (void)rehydrateLifeEvents:(id)a3 handler:(id)a4;
@end

@implementation MOLifeEventManager

+ (id)_createLifeEventContextWithError:(id *)a3
{
  v12 = 0;
  v4 = [[GDLifeEventContext alloc] initAndReturnError:&v12];
  v5 = v12;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v10 = v4;
  }

  else
  {
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[MOLifeEventManager _createLifeEventContextWithError:];
    }

    if (a3)
    {
      v9 = v6;
      v10 = 0;
      *a3 = v6;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (MOLifeEventManager)initWithUniverse:(id)a3
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 getService:v7];

  if (!v8)
  {
    v19 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MOEventStore initWithUniverse:];
    }

    v20 = +[NSAssertionHandler currentHandler];
    v21 = v20;
    v22 = @"Invalid parameter not satisfying: configurationManager";
    v23 = a2;
    v24 = self;
    v25 = 52;
    goto LABEL_14;
  }

  v28.receiver = self;
  v28.super_class = MOLifeEventManager;
  self = [(MOLifeEventManager *)&v28 init];
  if (self)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v5 getService:v10];

    if (v11)
    {
      objc_storeStrong(&self->_momentStore, v11);
      objc_storeStrong(&self->_configurationManager, v8);
      v12 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [MOLifeEventManager initWithUniverse:];
      }

      v13 = [MOLifeEventManager _createLifeEventContextWithError:0];
      lifeEventContext = self->_lifeEventContext;
      self->_lifeEventContext = v13;

      v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v16 = dispatch_queue_create("MOLifeEventManager", v15);
      queue = self->_queue;
      self->_queue = v16;

      goto LABEL_7;
    }

    v26 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [MOSignificantContactManager initWithDuetStore:ppContactStore:cnContactStore:momentStore:configurationManager:];
    }

    v20 = +[NSAssertionHandler currentHandler];
    v21 = v20;
    v22 = @"Invalid parameter not satisfying: momentStore";
    v23 = a2;
    v24 = self;
    v25 = 60;
LABEL_14:
    [v20 handleFailureInMethod:v23 object:v24 file:@"MOLifeEventManager.m" lineNumber:v25 description:v22];

    v18 = 0;
    goto LABEL_15;
  }

LABEL_7:
  self = self;
  v18 = self;
LABEL_15:

  return v18;
}

- (id)_createMOEventFromEntityIdentifier:(id)a3 existingMOEvent:(id)a4 category:(unint64_t)a5 date:(id)a6 confidenceScore:(id)a7 locations:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (!v16)
  {
    goto LABEL_10;
  }

  if (!v15)
  {
    v19 = [v16 startDate];
    if (!v19)
    {
      goto LABEL_11;
    }

    v27 = [v16 endDate];

    if (v27)
    {
      v33 = [MOEvent alloc];
      v32 = +[NSUUID UUID];
      v28 = [v16 startDate];
      [v16 endDate];
      v29 = v34 = a5;
      v30 = +[NSDate date];
      v19 = [(MOEvent *)v33 initWithEventIdentifier:v32 startDate:v28 endDate:v29 creationDate:v30 provider:10 category:22];

      a5 = v34;
      if (!v19)
      {
        goto LABEL_11;
      }

      goto LABEL_4;
    }

LABEL_10:
    v19 = 0;
    goto LABEL_11;
  }

  v19 = v15;
LABEL_4:
  v20 = [v16 endDate];

  if (v20)
  {
    v21 = [v14 stringValue];
    [(MOEvent *)v19 setIdentifierFromProvider:v21];

    v22 = [v16 endDate];
    v23 = [(MOLifeEventManager *)self configurationManager];
    LODWORD(v24) = 1242802176;
    [v23 getFloatSettingForKey:@"EventManagerOverrideMaximumEventAge" withFallback:v24];
    v26 = [v22 dateByAddingTimeInterval:v25];
    [(MOEvent *)v19 setExpirationDate:v26];

    [(MOEvent *)v19 setLifeEventCategory:a5];
    [v17 doubleValue];
    [(MOEvent *)v19 setConfidenceScore:?];
  }

LABEL_11:

  return v19;
}

- (id)_createMOEventFromShoppingEvent:(id)a3 existingMOEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 entityIdentifier];
  v9 = [v7 date];
  v10 = [v7 confidence];
  v11 = [v7 locations];

  v12 = [(MOLifeEventManager *)self _createMOEventFromEntityIdentifier:v8 existingMOEvent:v6 category:1 date:v9 confidenceScore:v10 locations:v11];

  return v12;
}

- (id)_createMOEventFromDiningEvent:(id)a3 existingMOEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 entityIdentifier];
  v9 = [v7 date];
  v10 = [v7 confidence];
  v11 = [v7 locations];

  v12 = [(MOLifeEventManager *)self _createMOEventFromEntityIdentifier:v8 existingMOEvent:v6 category:2 date:v9 confidenceScore:v10 locations:v11];

  return v12;
}

- (id)_createMOEventFromGamingEvent:(id)a3 existingMOEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 entityIdentifier];
  v9 = [v6 date];
  v10 = [v6 confidence];
  v11 = [v6 locations];
  v12 = [(MOLifeEventManager *)self _createMOEventFromEntityIdentifier:v8 existingMOEvent:v7 category:3 date:v9 confidenceScore:v10 locations:v11];

  v13 = [v6 software];
  v14 = [v13 softwareId];

  if (v14)
  {
    v15 = [(MOLifeEventManager *)self lifeEventContext];
    v20 = 0;
    v16 = [v14 graphSoftwareFromContext:v15 error:&v20];
    v17 = v20;

    if (!v16 || v17)
    {
      v18 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(MOLifeEventManager *)v14 _createMOEventFromGamingEvent:v17 existingMOEvent:v18];
      }
    }

    else
    {
      v18 = [v16 bundleId];
      [v12 setAppBundle:v18];
    }
  }

  else
  {
    v17 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MOLifeEventManager _createMOEventFromGamingEvent:v6 existingMOEvent:v17];
    }
  }

  return v12;
}

- (id)_createMOEventFromTransportationEvent:(id)a3 existingMOEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 transportationType];
  v9 = [v8 integerValue];

  v10 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [MOLifeEventManager _createMOEventFromTransportationEvent:v6 existingMOEvent:?];
  }

  if (v9 == 68)
  {
    v11 = v6;
    v12 = [v11 entityIdentifier];
    v13 = [v11 date];
    v14 = [v11 confidence];
    v15 = [v11 locations];

    v16 = [(MOLifeEventManager *)self _createMOEventFromEntityIdentifier:v12 existingMOEvent:v7 category:4 date:v13 confidenceScore:v14 locations:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_createMOEventFromEntityIdentifier:(id)a3 existingMOEvent:(id)a4 logErrorWhenEventHasError:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[GDGraphShoppingActivityEventEntityIdentifier alloc] initByCastingFrom:v9];
  v11 = [[GDGraphDiningActivityEventEntityIdentifier alloc] initByCastingFrom:v9];
  v12 = [[GDGraphTransportationActivityEventEntityIdentifier alloc] initByCastingFrom:v9];

  if (!v10)
  {
    if (v11)
    {
      v17 = [(MOLifeEventManager *)self lifeEventContext];
      v27 = 0;
      v14 = [v11 graphDiningActivityEventFromContext:v17 error:&v27];
      v15 = v27;

      if (v14)
      {
        v16 = [(MOLifeEventManager *)self _createMOEventFromDiningEvent:v14 existingMOEvent:v8];
        goto LABEL_13;
      }

      v23 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
      v19 = v23;
      if (v5)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [MOLifeEventManager _createMOEventFromEntityIdentifier:existingMOEvent:logErrorWhenEventHasError:];
        }

        goto LABEL_28;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v30 = v15;
        v22 = "failed to create GDGraphDiningActivityEvent. error: %@";
        goto LABEL_27;
      }
    }

    else
    {
      if (!v12)
      {
        v21 = 0;
        goto LABEL_30;
      }

      v20 = [(MOLifeEventManager *)self lifeEventContext];
      v26 = 0;
      v14 = [v12 graphTransportationActivityEventFromContext:v20 error:&v26];
      v15 = v26;

      if (v14)
      {
        v16 = [(MOLifeEventManager *)self _createMOEventFromTransportationEvent:v14 existingMOEvent:v8];
        goto LABEL_13;
      }

      v24 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
      v19 = v24;
      if (v5)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [MOLifeEventManager _createMOEventFromEntityIdentifier:existingMOEvent:logErrorWhenEventHasError:];
        }

        goto LABEL_28;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v30 = v15;
        v22 = "failed to create GDGraphTransportationActivityEvent. error: %@";
        goto LABEL_27;
      }
    }

LABEL_28:

    v21 = 0;
    goto LABEL_29;
  }

  v13 = [(MOLifeEventManager *)self lifeEventContext];
  v28 = 0;
  v14 = [v10 graphShoppingActivityEventFromContext:v13 error:&v28];
  v15 = v28;

  if (!v14)
  {
    v18 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
    v19 = v18;
    if (v5)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [MOLifeEventManager _createMOEventFromEntityIdentifier:existingMOEvent:logErrorWhenEventHasError:];
      }

      goto LABEL_28;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v15;
      v22 = "failed to create GDGraphShoppingActivityEvent. error: %@";
LABEL_27:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, v22, buf, 0xCu);
      goto LABEL_28;
    }

    goto LABEL_28;
  }

  v16 = [(MOLifeEventManager *)self _createMOEventFromShoppingEvent:v14 existingMOEvent:v8];
LABEL_13:
  v21 = v16;
LABEL_29:

LABEL_30:

  return v21;
}

- (id)_createMOEventsBetweenStartDate:(id)a3 endDate:(id)a4 excludingEntityIdentifiers:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [MOLifeEventManager _createMOEventsBetweenStartDate:endDate:excludingEntityIdentifiers:error:];
  }

  v14 = +[NSMutableArray array];
  v15 = [(MOLifeEventManager *)self lifeEventContext];
  v16 = [[NSDateInterval alloc] initWithStartDate:v10 endDate:v11];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __95__MOLifeEventManager__createMOEventsBetweenStartDate_endDate_excludingEntityIdentifiers_error___block_invoke;
  v22[3] = &unk_100338618;
  v23 = v12;
  v24 = self;
  v17 = v14;
  v25 = v17;
  v18 = v12;
  v19 = [v15 enumerateEntriesForActivityEventsThatOverlapWithDateInterval:v16 ascending:1 error:a6 usingBlock:v22];

  if (v19)
  {
    v20 = v17;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void __95__MOLifeEventManager__createMOEventsBetweenStartDate_endDate_excludingEntityIdentifiers_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 entityIdentifier];
  v6 = [v5 stringValue];
  LODWORD(v4) = [v4 containsObject:v6];

  if (v4)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __95__MOLifeEventManager__createMOEventsBetweenStartDate_endDate_excludingEntityIdentifiers_error___block_invoke_cold_1(v3);
    }
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [v3 entityIdentifier];
    v10 = [v8 _createMOEventFromEntityIdentifier:v9 existingMOEvent:0 logErrorWhenEventHasError:1];

    if (v10)
    {
      [*(a1 + 48) addObject:v10];
    }
  }
}

- (id)_entityIdentifierFromMomentEvent:(id)a3
{
  v3 = [a3 identifierFromProvider];
  if (v3)
  {
    v4 = [[GDEntityIdentifier alloc] initWithString:v3];
  }

  else
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MOLifeEventManager _entityIdentifierFromMomentEvent:];
    }

    v4 = 0;
  }

  return v4;
}

- (void)rehydrateLifeEvents:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MOLifeEventManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __50__MOLifeEventManager_rehydrateLifeEvents_handler___block_invoke;
  block[3] = &unk_100336A58;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_rehydrateLifeEvents:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MOLifeEventManager *)self lifeEventContext];

  if (v8)
  {
LABEL_9:
    v11 = [(MOLifeEventManager *)self _rehydrateStoredLifeEvents:v6];
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v6 count];
      v16 = [v11 count];
      *buf = 134218240;
      v27 = v15;
      v28 = 2048;
      v29 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "rehydrateLifeEvents: %lu momentEvents , %lu rehydrated events", buf, 0x16u);
    }

    v7[2](v7, v11, 0);
    goto LABEL_12;
  }

  v9 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "lifeEventContext does not exist (due to error in init). Try to create it again.", buf, 2u);
  }

  v25 = 0;
  v10 = [MOLifeEventManager _createLifeEventContextWithError:&v25];
  v11 = v25;
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
  v13 = v12;
  if (v10 && !v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [MOLifeEventManager _rehydrateLifeEvents:handler:];
    }

    [(MOLifeEventManager *)self setLifeEventContext:v10];
    goto LABEL_9;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [MOLifeEventManager _rehydrateLifeEvents:handler:];
  }

  (v7)[2](v7, 0, v11);
  v17 = [MORehydrationMetrics alloc];
  v18 = [v6 firstObject];
  v19 = [v18 category];
  v20 = [v6 firstObject];
  v21 = [v20 provider];
  v22 = [v11 description];
  v23 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v17, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", v19, v21, 0, v22, [v6 count], 3, objc_msgSend(v6, "count"), 0.0);

  v24 = 0;
  [(MORehydrationMetrics *)v23 submitMetricsWithError:&v24];

LABEL_12:
}

- (id)_rehydrateStoredLifeEvents:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_opt_new();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          v12 = [(MOLifeEventManager *)self _entityIdentifierFromMomentEvent:v11];
          if (v12)
          {
            v13 = [(MOLifeEventManager *)self _createMOEventFromEntityIdentifier:v12 existingMOEvent:v11 logErrorWhenEventHasError:0];
            if (v13)
            {
              [v5 addObject:v13];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v8);
    }

    v14 = _mo_log_facility_get_os_log(&MOLogFacilityHealth);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v5 count];
      v16 = [v6 count];
      *buf = 134218240;
      v29 = v15;
      v30 = 2048;
      v31 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "rehydrated life events count, %lu, stored life events count, %lu", buf, 0x16u);
    }

    v17 = [MORehydrationMetrics alloc];
    v18 = [v6 firstObject];
    v19 = [v18 category];
    v20 = [v6 firstObject];
    v21 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v17, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", v19, [v20 provider], 1, 0, objc_msgSend(v6, "count"), 3, (objc_msgSend(v6, "count") - objc_msgSend(v5, "count")), 0.0);

    v23 = 0;
    [v21 submitMetricsWithError:&v23];
  }

  else
  {
    v21 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "No stored life events for rehydration", buf, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (id)_createNewEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [(MOLifeEventManager *)self _entityIdentifierFromMomentEvent:*(*(&v40 + 1) + 8 * i)];
        v18 = v17;
        if (v17)
        {
          v19 = [v17 stringValue];
          [v11 addObject:v19];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v14);
  }

  v20 = +[NSMutableArray array];
  v21 = [(MOLifeEventManager *)self lifeEventContext];
  v22 = [[NSDateInterval alloc] initWithStartDate:v8 endDate:v9];
  v39 = 0;
  v32 = _NSConcreteStackBlock;
  v33 = 3221225472;
  v34 = __80__MOLifeEventManager__createNewEventsBetweenStartDate_endDate_withStoredEvents___block_invoke;
  v35 = &unk_100338618;
  v23 = v11;
  v36 = v23;
  v37 = self;
  v24 = v20;
  v38 = v24;
  v25 = [v21 enumerateEntriesForActivityEventsThatOverlapWithDateInterval:v22 ascending:1 error:&v39 usingBlock:&v32];
  v26 = v39;

  v27 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
  if (v25)
  {
    if (v28)
    {
      v29 = [v24 count];
      *buf = 134217984;
      v45 = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "create new life events count, %lu", buf, 0xCu);
    }

    v30 = v24;
  }

  else
  {
    if (v28)
    {
      *buf = 138412290;
      v45 = v26;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "create new life hit error, %@", buf, 0xCu);
    }

    v30 = 0;
  }

  return v30;
}

void __80__MOLifeEventManager__createNewEventsBetweenStartDate_endDate_withStoredEvents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 entityIdentifier];
  v6 = [v5 stringValue];
  LODWORD(v4) = [v4 containsObject:v6];

  if (v4)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __95__MOLifeEventManager__createMOEventsBetweenStartDate_endDate_excludingEntityIdentifiers_error___block_invoke_cold_1(v3);
    }
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [v3 entityIdentifier];
    v10 = [v8 _createMOEventFromEntityIdentifier:v9 existingMOEvent:0 logErrorWhenEventHasError:1];

    if (v10)
    {
      [*(a1 + 48) addObject:v10];
    }
  }
}

- (void)fetchLifeEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MOLifeEventManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __87__MOLifeEventManager_fetchLifeEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke;
  block[3] = &unk_100336C98;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

- (void)_fetchLifeEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6
{
  v38 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(MOLifeEventManager *)self lifeEventContext];

  if (v13)
  {
LABEL_9:
    v19 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v42 = v38;
      v43 = 2112;
      v44 = v10;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "fetchLifeEventsBetweenStartDate, %@, endDate, %@", buf, 0x16u);
    }

    v16 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 22];
    v15 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 10];
    v51[0] = v16;
    v51[1] = v15;
    v20 = [NSArray arrayWithObjects:v51 count:2];
    v21 = [NSCompoundPredicate andPredicateWithSubpredicates:v20];

    v22 = [v11 filteredArrayUsingPredicate:v21];
    v23 = [(MOLifeEventManager *)self _rehydrateStoredLifeEvents:v22];
    v24 = [(MOLifeEventManager *)self _createNewEventsBetweenStartDate:v38 endDate:v10 withStoredEvents:v22];
    v25 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v36 = [v23 count];
      v37 = v21;
      v26 = v16;
      v27 = v15;
      v28 = v12;
      v29 = v11;
      v30 = [v24 count];
      v31 = [v22 count];
      *buf = 138413314;
      v42 = v38;
      v43 = 2112;
      v44 = v10;
      v45 = 2048;
      v46 = v36;
      v47 = 2048;
      v48 = v30;
      v11 = v29;
      v12 = v28;
      v15 = v27;
      v16 = v26;
      v21 = v37;
      v49 = 2048;
      v50 = v31;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "start date, %@, end date, %@, rehydrated life events count, %lu, new life events counts, %lu, stored life events count, %lu", buf, 0x34u);
    }

    v32 = objc_opt_new();
    v33 = v32;
    if (v24)
    {
      [v32 setObject:v24 forKey:@"newEvents"];
    }

    if (v23)
    {
      [v33 setObject:v23 forKey:@"rehydratedEvents"];
    }

    v12[2](v12, 0, v33);

    goto LABEL_18;
  }

  v14 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "lifeEventContext does not exist (due to error in init). Try to create it again.", buf, 2u);
  }

  v40 = 0;
  v15 = [MOLifeEventManager _createLifeEventContextWithError:&v40];
  v16 = v40;
  v17 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
  v18 = v17;
  if (v15 && !v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [MOLifeEventManager _rehydrateLifeEvents:handler:];
    }

    [(MOLifeEventManager *)self setLifeEventContext:v15];
    goto LABEL_9;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [MOLifeEventManager _rehydrateLifeEvents:handler:];
  }

  (v12)[2](v12, v16, 0);
  v34 = [MORehydrationMetrics alloc];
  v35 = [v16 description];
  v21 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v34, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", 22, 10, 0, v35, [v11 count], 3, objc_msgSend(v11, "count"), 0.0);

  v39 = 0;
  [(MORehydrationMetrics *)v21 submitMetricsWithError:&v39];
LABEL_18:
}

+ (void)_createLifeEventContextWithError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_createMOEventFromGamingEvent:(NSObject *)a3 existingMOEvent:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 stringValue];
  OUTLINED_FUNCTION_1();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "failed to create GDGraphSoftware for %@. error: %@", v6, 0x16u);
}

- (void)_createMOEventFromGamingEvent:(void *)a1 existingMOEvent:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v3 = [a1 entityIdentifier];
  v4 = [v3 stringValue];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "softwardId for the gaming event %@ is nil", v5, 0xCu);
}

- (void)_createMOEventFromTransportationEvent:(void *)a1 existingMOEvent:.cold.1(void *a1)
{
  v1 = [a1 entityIdentifier];
  v2 = [v1 stringValue];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_createMOEventFromEntityIdentifier:existingMOEvent:logErrorWhenEventHasError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_createMOEventFromEntityIdentifier:existingMOEvent:logErrorWhenEventHasError:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_createMOEventFromEntityIdentifier:existingMOEvent:logErrorWhenEventHasError:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_createMOEventsBetweenStartDate:endDate:excludingEntityIdentifiers:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "createMOEventsBetweenStartDate, %@, endDate, %@", v2, 0x16u);
}

void __95__MOLifeEventManager__createMOEventsBetweenStartDate_endDate_excludingEntityIdentifiers_error___block_invoke_cold_1(void *a1)
{
  v1 = [a1 entityIdentifier];
  v2 = [v1 stringValue];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_entityIdentifierFromMomentEvent:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_rehydrateLifeEvents:handler:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end