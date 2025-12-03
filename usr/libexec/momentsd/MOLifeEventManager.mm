@interface MOLifeEventManager
+ (id)_createLifeEventContextWithError:(id *)error;
- (MOLifeEventManager)initWithUniverse:(id)universe;
- (id)_createMOEventFromDiningEvent:(id)event existingMOEvent:(id)oEvent;
- (id)_createMOEventFromEntityIdentifier:(id)identifier existingMOEvent:(id)event category:(unint64_t)category date:(id)date confidenceScore:(id)score locations:(id)locations;
- (id)_createMOEventFromEntityIdentifier:(id)identifier existingMOEvent:(id)event logErrorWhenEventHasError:(BOOL)error;
- (id)_createMOEventFromGamingEvent:(id)event existingMOEvent:(id)oEvent;
- (id)_createMOEventFromShoppingEvent:(id)event existingMOEvent:(id)oEvent;
- (id)_createMOEventFromTransportationEvent:(id)event existingMOEvent:(id)oEvent;
- (id)_createMOEventsBetweenStartDate:(id)date endDate:(id)endDate excludingEntityIdentifiers:(id)identifiers error:(id *)error;
- (id)_createNewEventsBetweenStartDate:(id)date endDate:(id)endDate withStoredEvents:(id)events;
- (id)_entityIdentifierFromMomentEvent:(id)event;
- (id)_rehydrateStoredLifeEvents:(id)events;
- (void)_fetchLifeEventsBetweenStartDate:(id)date endDate:(id)endDate withStoredEvents:(id)events handler:(id)handler;
- (void)_rehydrateLifeEvents:(id)events handler:(id)handler;
- (void)fetchLifeEventsBetweenStartDate:(id)date endDate:(id)endDate withStoredEvents:(id)events handler:(id)handler;
- (void)rehydrateLifeEvents:(id)events handler:(id)handler;
@end

@implementation MOLifeEventManager

+ (id)_createLifeEventContextWithError:(id *)error
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

    if (error)
    {
      v9 = v6;
      v10 = 0;
      *error = v6;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (MOLifeEventManager)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [universeCopy getService:v7];

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
    selfCopy2 = self;
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
    v11 = [universeCopy getService:v10];

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
    selfCopy2 = self;
    v25 = 60;
LABEL_14:
    [v20 handleFailureInMethod:v23 object:selfCopy2 file:@"MOLifeEventManager.m" lineNumber:v25 description:v22];

    selfCopy3 = 0;
    goto LABEL_15;
  }

LABEL_7:
  self = self;
  selfCopy3 = self;
LABEL_15:

  return selfCopy3;
}

- (id)_createMOEventFromEntityIdentifier:(id)identifier existingMOEvent:(id)event category:(unint64_t)category date:(id)date confidenceScore:(id)score locations:(id)locations
{
  identifierCopy = identifier;
  eventCopy = event;
  dateCopy = date;
  scoreCopy = score;
  locationsCopy = locations;
  if (!dateCopy)
  {
    goto LABEL_10;
  }

  if (!eventCopy)
  {
    startDate = [dateCopy startDate];
    if (!startDate)
    {
      goto LABEL_11;
    }

    endDate = [dateCopy endDate];

    if (endDate)
    {
      v33 = [MOEvent alloc];
      v32 = +[NSUUID UUID];
      startDate2 = [dateCopy startDate];
      [dateCopy endDate];
      v29 = v34 = category;
      v30 = +[NSDate date];
      startDate = [(MOEvent *)v33 initWithEventIdentifier:v32 startDate:startDate2 endDate:v29 creationDate:v30 provider:10 category:22];

      category = v34;
      if (!startDate)
      {
        goto LABEL_11;
      }

      goto LABEL_4;
    }

LABEL_10:
    startDate = 0;
    goto LABEL_11;
  }

  startDate = eventCopy;
LABEL_4:
  endDate2 = [dateCopy endDate];

  if (endDate2)
  {
    stringValue = [identifierCopy stringValue];
    [(MOEvent *)startDate setIdentifierFromProvider:stringValue];

    endDate3 = [dateCopy endDate];
    configurationManager = [(MOLifeEventManager *)self configurationManager];
    LODWORD(v24) = 1242802176;
    [configurationManager getFloatSettingForKey:@"EventManagerOverrideMaximumEventAge" withFallback:v24];
    v26 = [endDate3 dateByAddingTimeInterval:v25];
    [(MOEvent *)startDate setExpirationDate:v26];

    [(MOEvent *)startDate setLifeEventCategory:category];
    [scoreCopy doubleValue];
    [(MOEvent *)startDate setConfidenceScore:?];
  }

LABEL_11:

  return startDate;
}

- (id)_createMOEventFromShoppingEvent:(id)event existingMOEvent:(id)oEvent
{
  oEventCopy = oEvent;
  eventCopy = event;
  entityIdentifier = [eventCopy entityIdentifier];
  date = [eventCopy date];
  confidence = [eventCopy confidence];
  locations = [eventCopy locations];

  v12 = [(MOLifeEventManager *)self _createMOEventFromEntityIdentifier:entityIdentifier existingMOEvent:oEventCopy category:1 date:date confidenceScore:confidence locations:locations];

  return v12;
}

- (id)_createMOEventFromDiningEvent:(id)event existingMOEvent:(id)oEvent
{
  oEventCopy = oEvent;
  eventCopy = event;
  entityIdentifier = [eventCopy entityIdentifier];
  date = [eventCopy date];
  confidence = [eventCopy confidence];
  locations = [eventCopy locations];

  v12 = [(MOLifeEventManager *)self _createMOEventFromEntityIdentifier:entityIdentifier existingMOEvent:oEventCopy category:2 date:date confidenceScore:confidence locations:locations];

  return v12;
}

- (id)_createMOEventFromGamingEvent:(id)event existingMOEvent:(id)oEvent
{
  eventCopy = event;
  oEventCopy = oEvent;
  entityIdentifier = [eventCopy entityIdentifier];
  date = [eventCopy date];
  confidence = [eventCopy confidence];
  locations = [eventCopy locations];
  v12 = [(MOLifeEventManager *)self _createMOEventFromEntityIdentifier:entityIdentifier existingMOEvent:oEventCopy category:3 date:date confidenceScore:confidence locations:locations];

  software = [eventCopy software];
  softwareId = [software softwareId];

  if (softwareId)
  {
    lifeEventContext = [(MOLifeEventManager *)self lifeEventContext];
    v20 = 0;
    v16 = [softwareId graphSoftwareFromContext:lifeEventContext error:&v20];
    v17 = v20;

    if (!v16 || v17)
    {
      bundleId = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
      if (os_log_type_enabled(bundleId, OS_LOG_TYPE_ERROR))
      {
        [(MOLifeEventManager *)softwareId _createMOEventFromGamingEvent:v17 existingMOEvent:bundleId];
      }
    }

    else
    {
      bundleId = [v16 bundleId];
      [v12 setAppBundle:bundleId];
    }
  }

  else
  {
    v17 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MOLifeEventManager _createMOEventFromGamingEvent:eventCopy existingMOEvent:v17];
    }
  }

  return v12;
}

- (id)_createMOEventFromTransportationEvent:(id)event existingMOEvent:(id)oEvent
{
  eventCopy = event;
  oEventCopy = oEvent;
  transportationType = [eventCopy transportationType];
  integerValue = [transportationType integerValue];

  v10 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [MOLifeEventManager _createMOEventFromTransportationEvent:eventCopy existingMOEvent:?];
  }

  if (integerValue == 68)
  {
    v11 = eventCopy;
    entityIdentifier = [v11 entityIdentifier];
    date = [v11 date];
    confidence = [v11 confidence];
    locations = [v11 locations];

    v16 = [(MOLifeEventManager *)self _createMOEventFromEntityIdentifier:entityIdentifier existingMOEvent:oEventCopy category:4 date:date confidenceScore:confidence locations:locations];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_createMOEventFromEntityIdentifier:(id)identifier existingMOEvent:(id)event logErrorWhenEventHasError:(BOOL)error
{
  errorCopy = error;
  eventCopy = event;
  identifierCopy = identifier;
  v10 = [[GDGraphShoppingActivityEventEntityIdentifier alloc] initByCastingFrom:identifierCopy];
  v11 = [[GDGraphDiningActivityEventEntityIdentifier alloc] initByCastingFrom:identifierCopy];
  v12 = [[GDGraphTransportationActivityEventEntityIdentifier alloc] initByCastingFrom:identifierCopy];

  if (!v10)
  {
    if (v11)
    {
      lifeEventContext = [(MOLifeEventManager *)self lifeEventContext];
      v27 = 0;
      v14 = [v11 graphDiningActivityEventFromContext:lifeEventContext error:&v27];
      v15 = v27;

      if (v14)
      {
        v16 = [(MOLifeEventManager *)self _createMOEventFromDiningEvent:v14 existingMOEvent:eventCopy];
        goto LABEL_13;
      }

      v23 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
      v19 = v23;
      if (errorCopy)
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

      lifeEventContext2 = [(MOLifeEventManager *)self lifeEventContext];
      v26 = 0;
      v14 = [v12 graphTransportationActivityEventFromContext:lifeEventContext2 error:&v26];
      v15 = v26;

      if (v14)
      {
        v16 = [(MOLifeEventManager *)self _createMOEventFromTransportationEvent:v14 existingMOEvent:eventCopy];
        goto LABEL_13;
      }

      v24 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
      v19 = v24;
      if (errorCopy)
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

  lifeEventContext3 = [(MOLifeEventManager *)self lifeEventContext];
  v28 = 0;
  v14 = [v10 graphShoppingActivityEventFromContext:lifeEventContext3 error:&v28];
  v15 = v28;

  if (!v14)
  {
    v18 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
    v19 = v18;
    if (errorCopy)
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

  v16 = [(MOLifeEventManager *)self _createMOEventFromShoppingEvent:v14 existingMOEvent:eventCopy];
LABEL_13:
  v21 = v16;
LABEL_29:

LABEL_30:

  return v21;
}

- (id)_createMOEventsBetweenStartDate:(id)date endDate:(id)endDate excludingEntityIdentifiers:(id)identifiers error:(id *)error
{
  dateCopy = date;
  endDateCopy = endDate;
  identifiersCopy = identifiers;
  v13 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [MOLifeEventManager _createMOEventsBetweenStartDate:endDate:excludingEntityIdentifiers:error:];
  }

  v14 = +[NSMutableArray array];
  lifeEventContext = [(MOLifeEventManager *)self lifeEventContext];
  v16 = [[NSDateInterval alloc] initWithStartDate:dateCopy endDate:endDateCopy];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __95__MOLifeEventManager__createMOEventsBetweenStartDate_endDate_excludingEntityIdentifiers_error___block_invoke;
  v22[3] = &unk_100338618;
  v23 = identifiersCopy;
  selfCopy = self;
  v17 = v14;
  v25 = v17;
  v18 = identifiersCopy;
  v19 = [lifeEventContext enumerateEntriesForActivityEventsThatOverlapWithDateInterval:v16 ascending:1 error:error usingBlock:v22];

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

- (id)_entityIdentifierFromMomentEvent:(id)event
{
  identifierFromProvider = [event identifierFromProvider];
  if (identifierFromProvider)
  {
    v4 = [[GDEntityIdentifier alloc] initWithString:identifierFromProvider];
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

- (void)rehydrateLifeEvents:(id)events handler:(id)handler
{
  eventsCopy = events;
  handlerCopy = handler;
  queue = [(MOLifeEventManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __50__MOLifeEventManager_rehydrateLifeEvents_handler___block_invoke;
  block[3] = &unk_100336A58;
  block[4] = self;
  v12 = eventsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = eventsCopy;
  dispatch_async(queue, block);
}

- (void)_rehydrateLifeEvents:(id)events handler:(id)handler
{
  eventsCopy = events;
  handlerCopy = handler;
  lifeEventContext = [(MOLifeEventManager *)self lifeEventContext];

  if (lifeEventContext)
  {
LABEL_9:
    v11 = [(MOLifeEventManager *)self _rehydrateStoredLifeEvents:eventsCopy];
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [eventsCopy count];
      v16 = [v11 count];
      *buf = 134218240;
      v27 = v15;
      v28 = 2048;
      v29 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "rehydrateLifeEvents: %lu momentEvents , %lu rehydrated events", buf, 0x16u);
    }

    handlerCopy[2](handlerCopy, v11, 0);
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

  (handlerCopy)[2](handlerCopy, 0, v11);
  v17 = [MORehydrationMetrics alloc];
  firstObject = [eventsCopy firstObject];
  category = [firstObject category];
  firstObject2 = [eventsCopy firstObject];
  provider = [firstObject2 provider];
  v22 = [v11 description];
  v23 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v17, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", category, provider, 0, v22, [eventsCopy count], 3, objc_msgSend(eventsCopy, "count"), 0.0);

  v24 = 0;
  [(MORehydrationMetrics *)v23 submitMetricsWithError:&v24];

LABEL_12:
}

- (id)_rehydrateStoredLifeEvents:(id)events
{
  eventsCopy = events;
  if ([eventsCopy count])
  {
    v5 = objc_opt_new();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = eventsCopy;
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
    firstObject = [v6 firstObject];
    category = [firstObject category];
    firstObject2 = [v6 firstObject];
    v21 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v17, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", category, [firstObject2 provider], 1, 0, objc_msgSend(v6, "count"), 3, (objc_msgSend(v6, "count") - objc_msgSend(v5, "count")), 0.0);

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

- (id)_createNewEventsBetweenStartDate:(id)date endDate:(id)endDate withStoredEvents:(id)events
{
  dateCopy = date;
  endDateCopy = endDate;
  eventsCopy = events;
  v11 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = eventsCopy;
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
          stringValue = [v17 stringValue];
          [v11 addObject:stringValue];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v14);
  }

  v20 = +[NSMutableArray array];
  lifeEventContext = [(MOLifeEventManager *)self lifeEventContext];
  v22 = [[NSDateInterval alloc] initWithStartDate:dateCopy endDate:endDateCopy];
  v39 = 0;
  v32 = _NSConcreteStackBlock;
  v33 = 3221225472;
  v34 = __80__MOLifeEventManager__createNewEventsBetweenStartDate_endDate_withStoredEvents___block_invoke;
  v35 = &unk_100338618;
  v23 = v11;
  v36 = v23;
  selfCopy = self;
  v24 = v20;
  v38 = v24;
  v25 = [lifeEventContext enumerateEntriesForActivityEventsThatOverlapWithDateInterval:v22 ascending:1 error:&v39 usingBlock:&v32];
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

- (void)fetchLifeEventsBetweenStartDate:(id)date endDate:(id)endDate withStoredEvents:(id)events handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  eventsCopy = events;
  handlerCopy = handler;
  queue = [(MOLifeEventManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __87__MOLifeEventManager_fetchLifeEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke;
  block[3] = &unk_100336C98;
  block[4] = self;
  v20 = dateCopy;
  v21 = endDateCopy;
  v22 = eventsCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = eventsCopy;
  v17 = endDateCopy;
  v18 = dateCopy;
  dispatch_async(queue, block);
}

- (void)_fetchLifeEventsBetweenStartDate:(id)date endDate:(id)endDate withStoredEvents:(id)events handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  eventsCopy = events;
  handlerCopy = handler;
  lifeEventContext = [(MOLifeEventManager *)self lifeEventContext];

  if (lifeEventContext)
  {
LABEL_9:
    v19 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v42 = dateCopy;
      v43 = 2112;
      v44 = endDateCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "fetchLifeEventsBetweenStartDate, %@, endDate, %@", buf, 0x16u);
    }

    v16 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 22];
    v15 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 10];
    v51[0] = v16;
    v51[1] = v15;
    v20 = [NSArray arrayWithObjects:v51 count:2];
    v21 = [NSCompoundPredicate andPredicateWithSubpredicates:v20];

    v22 = [eventsCopy filteredArrayUsingPredicate:v21];
    v23 = [(MOLifeEventManager *)self _rehydrateStoredLifeEvents:v22];
    v24 = [(MOLifeEventManager *)self _createNewEventsBetweenStartDate:dateCopy endDate:endDateCopy withStoredEvents:v22];
    v25 = _mo_log_facility_get_os_log(&MOLogFacilityLifeEventManager);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v36 = [v23 count];
      v37 = v21;
      v26 = v16;
      v27 = v15;
      v28 = handlerCopy;
      v29 = eventsCopy;
      v30 = [v24 count];
      v31 = [v22 count];
      *buf = 138413314;
      v42 = dateCopy;
      v43 = 2112;
      v44 = endDateCopy;
      v45 = 2048;
      v46 = v36;
      v47 = 2048;
      v48 = v30;
      eventsCopy = v29;
      handlerCopy = v28;
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

    handlerCopy[2](handlerCopy, 0, v33);

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

  (handlerCopy)[2](handlerCopy, v16, 0);
  v34 = [MORehydrationMetrics alloc];
  v35 = [v16 description];
  v21 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v34, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", 22, 10, 0, v35, [eventsCopy count], 3, objc_msgSend(eventsCopy, "count"), 0.0);

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