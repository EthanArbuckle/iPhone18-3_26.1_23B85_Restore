@interface MOSignificantContactManager
- (BOOL)_eligibleInteraction:(id)a3;
- (MOSignificantContactManager)initWithDuetStore:(id)a3 ppContactStore:(id)a4 cnContactStore:(id)a5 momentStore:(id)a6 configurationManager:(id)a7;
- (MOSignificantContactManager)initWithUniverse:(id)a3;
- (id)_collectSignificantContactsFromInteractions:(id)a3;
- (id)_conversationsFromInteractions:(id)a3;
- (id)_createEventFromConversation:(id)a3;
- (id)_createEventsFromConversations:(id)a3;
- (id)_createNewEventsFromConversations:(id)a3 storedEvents:(id)a4;
- (id)_fetchClassificationForSignificantContacts:(id)a3;
- (id)_findUnrehydratedEventsWithStoredEvents:(id)a3 conversations:(id)a4;
- (id)_rehydrateStoredEvents:(id)a3 fromConversations:(id)a4;
- (id)initializeVisualIdentifierView;
- (id)intializeEntityTaggingService;
- (void)_fetchConversationEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6;
- (void)_fetchInteractionsBetweenStartDate:(id)a3 EndDate:(id)a4 CompletionHandler:(id)a5;
- (void)_rehydrateConversations:(id)a3 handler:(id)a4;
- (void)_saveConversations:(id)a3 handler:(id)a4;
- (void)_setDynamicPropertiesForEvent:(id)a3 fromCoversation:(id)a4;
- (void)_updateClassificationForEvent:(id)a3 withClassificationDict:(id)a4 contactDict:(id)a5;
- (void)_updateClassificationForEvents:(id)a3;
- (void)fetchConversationEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6;
- (void)intializeEntityTaggingService;
- (void)rehydrateConversations:(id)a3 handler:(id)a4;
@end

@implementation MOSignificantContactManager

- (MOSignificantContactManager)initWithUniverse:(id)a3
{
  v4 = a3;
  v5 = +[_CDInteractionStore defaultDatabaseDirectory];
  v6 = [_CDInteractionStore storeWithDirectory:v5 readOnly:1];
  v7 = objc_alloc_init(PPContactStore);
  v8 = objc_opt_new();
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v4 getService:v10];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v4 getService:v13];

  v15 = [(MOSignificantContactManager *)self initWithDuetStore:v6 ppContactStore:v7 cnContactStore:v8 momentStore:v11 configurationManager:v14];
  return v15;
}

- (MOSignificantContactManager)initWithDuetStore:(id)a3 ppContactStore:(id)a4 cnContactStore:(id)a5 momentStore:(id)a6 configurationManager:(id)a7
{
  v14 = a3;
  v15 = a4;
  v86 = a5;
  v16 = a6;
  v17 = a7;
  if (v16)
  {
    v84 = a2;
    v18 = 0;
    if (v14 && v15 && v86)
    {
      v83 = v17;
      v89.receiver = self;
      v89.super_class = MOSignificantContactManager;
      v19 = [(MOSignificantContactManager *)&v89 init];
      if (v19)
      {
        v81 = v14;
        v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v21 = dispatch_queue_create("MOSignificantContactManager", v20);
        queue = v19->_queue;
        v19->_queue = v21;

        objc_storeStrong(&v19->_interactionStore, a3);
        objc_storeStrong(&v19->_ppContactStore, a4);
        objc_storeStrong(&v19->_cnContactStore, a5);
        objc_storeStrong(&v19->_momentStore, a6);
        objc_storeStrong(&v19->_configurationManager, a7);
        v23 = [(MOSignificantContactManager *)v19 initializeVisualIdentifierView];
        visualIdentifierView = v19->_visualIdentifierView;
        v19->_visualIdentifierView = v23;

        v25 = [(MOSignificantContactManager *)v19 intializeEntityTaggingService];
        entityTaggingSerice = v19->_entityTaggingSerice;
        v19->_entityTaggingSerice = v25;

        v27 = [[NSSet alloc] initWithObjects:{@"+1800", @"+1833", @"+1844", @"+1855", @"+1866", @"+1877", @"+1888", @"+1822", @"+1880", @"+1881", @"+1882", @"+1883", @"+1884", @"+1885", @"+1886", @"+1887", @"+1889", @"+1900", @"+1976", @"800", @"833", @"844", @"855", @"866", @"877", @"888", @"822", @"880", @"881", @"882", @"883", @"884", @"885", @"886", @"887", @"889", @"900", @"976", 0}];
        tollFreeNumberPrefixes = v19->_tollFreeNumberPrefixes;
        v19->_tollFreeNumberPrefixes = v27;

        v29 = [[NSSet alloc] initWithObjects:{&off_1003692F8, &off_100369310, &off_100369328, &off_100369340, &off_100369358, &off_100369370, &off_100369388, &off_1003693A0, 0}];
        callLikeMechanismsSet = v19->_callLikeMechanismsSet;
        v19->_callLikeMechanismsSet = v29;

        cnContactStore = v19->_cnContactStore;
        v102 = CNContactGivenNameKey;
        v32 = [NSArray arrayWithObjects:&v102 count:1];
        v88 = 0;
        v33 = [(CNContactStore *)cnContactStore _crossPlatformUnifiedMeContactWithKeysToFetch:v32 error:&v88];
        v34 = v88;

        v35 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = NSStringFromSelector(v84);
          v37 = [v33 identifier];
          v38 = [v33 givenName];
          [v38 mask];
          v40 = v39 = v33;
          *buf = 138413058;
          v91 = v36;
          v92 = 2112;
          v93 = v37;
          v94 = 2112;
          v95 = v40;
          v96 = 2112;
          v97 = v34;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%@, meCard info, identifier, %@, name, %@, error, %@", buf, 0x2Au);

          v33 = v39;
        }

        v80 = v15;

        v41 = objc_opt_new();
        meIdentifiers = v19->_meIdentifiers;
        v19->_meIdentifiers = v41;

        v43 = [v33 identifier];

        if (v43)
        {
          v44 = v19->_meIdentifiers;
          v45 = [v33 identifier];
          [(NSMutableSet *)v44 addObject:v45];
        }

        v46 = [NSPredicate predicateWithFormat:@"%K == %i", @"mechanism", 4];
        v47 = [NSPredicate predicateWithFormat:@"%K == %i", @"direction", 1];
        v48 = [NSPredicate predicateWithFormat:@"%K.%K != nil", @"sender", @"personId"];
        v78 = v47;
        v79 = v46;
        v101[0] = v46;
        v101[1] = v47;
        v77 = v48;
        v101[2] = v48;
        v49 = [NSArray arrayWithObjects:v101 count:3];
        v50 = [NSCompoundPredicate andPredicateWithSubpredicates:v49];

        v51 = [(MOSignificantContactManager *)v19 interactionStore];
        v52 = [NSSortDescriptor sortDescriptorWithKey:@"startDate" ascending:0];
        v100 = v52;
        v53 = [NSArray arrayWithObjects:&v100 count:1];
        v87 = v34;
        v76 = v50;
        v54 = [v51 queryInteractionsUsingPredicate:v50 sortDescriptors:v53 limit:1 error:&v87];
        v82 = v87;

        v55 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          v56 = NSStringFromSelector(v84);
          v73 = [v54 count];
          v75 = [v54 firstObject];
          v74 = [v75 sender];
          v57 = [v74 personId];
          v58 = [v54 firstObject];
          v59 = [v58 sender];
          [v59 displayName];
          v60 = v85 = v33;
          v61 = [v60 mask];
          *buf = 138413314;
          v91 = v56;
          v92 = 2048;
          v93 = v73;
          v94 = 2112;
          v95 = v57;
          v96 = 2112;
          v97 = v61;
          v98 = 2112;
          v99 = v82;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "%@, fetched result count, %lu, sender info, identifier, %@, name, %@, error, %@", buf, 0x34u);

          v33 = v85;
        }

        v62 = [v54 firstObject];
        v63 = [v62 sender];
        v64 = [v63 personId];

        if (v64)
        {
          v65 = v19->_meIdentifiers;
          v66 = [v54 firstObject];
          v67 = [v66 sender];
          v68 = [v67 personId];
          [(NSMutableSet *)v65 addObject:v68];
        }

        v15 = v80;
        v14 = v81;
      }

      self = v19;
      v18 = self;
      v17 = v83;
    }
  }

  else
  {
    v69 = v17;
    v70 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      [MOSignificantContactManager initWithDuetStore:ppContactStore:cnContactStore:momentStore:configurationManager:];
    }

    v71 = +[NSAssertionHandler currentHandler];
    [v71 handleFailureInMethod:a2 object:self file:@"MOSignificantContactManager.m" lineNumber:93 description:@"Invalid parameter not satisfying: momentStore"];

    v18 = 0;
    v17 = v69;
  }

  return v18;
}

- (id)initializeVisualIdentifierView
{
  v2 = +[GDViewService defaultService];
  v10 = 0;
  v3 = [v2 visualIdentifierViewWithError:&v10];
  v4 = v10;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v8 = v3;
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#megadome failed to get visualIdentifierView with error: %@", buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (id)intializeEntityTaggingService
{
  v9 = 0;
  v2 = objc_opt_new();
  v3 = [[GDEntityTaggingService alloc] initWithConfig:v2 error:&v9];
  v4 = v3;
  if (v9)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(MOSignificantContactManager *)&v9 intializeEntityTaggingService];
    }

    v7 = 0;
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

- (BOOL)_eligibleInteraction:(id)a3
{
  v5 = a3;
  callLikeMechanismsSet = self->_callLikeMechanismsSet;
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 mechanism]);
  LODWORD(callLikeMechanismsSet) = [(NSSet *)callLikeMechanismsSet containsObject:v7];

  if (callLikeMechanismsSet)
  {
    v8 = [v5 sender];
    if (v8)
    {
      v9 = v8;
      v10 = [v5 sender];
      v11 = [v10 type];

      if (v11 == 1)
      {
        v12 = [v5 sender];
        v13 = [v12 identifier];
        if ([v13 length] < 5)
        {
          v16 = 0;
        }

        else
        {
          v14 = [v5 sender];
          v15 = [v14 identifier];
          v16 = [v15 substringToIndex:5];
        }

        v17 = [v5 sender];
        v18 = [v17 identifier];
        if ([v18 length] < 3)
        {
          v21 = 0;
        }

        else
        {
          v19 = [v5 sender];
          v20 = [v19 identifier];
          v21 = [v20 substringToIndex:3];
        }

        if (v16 && [(NSSet *)self->_tollFreeNumberPrefixes containsObject:v16]|| v21 && [(NSSet *)self->_tollFreeNumberPrefixes containsObject:v21])
        {
          v22 = [v5 sender];
          v23 = [v22 identifier];

LABEL_39:
          v39 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            [(MOSignificantContactManager *)a2 _eligibleInteraction:v23, v39];
          }

          v37 = 0;
LABEL_43:

          goto LABEL_44;
        }
      }
    }

    v24 = [v5 recipients];
    v25 = [v24 count];

    if (v25)
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v23 = [v5 recipients];
      v26 = [v23 countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v26)
      {
        v27 = v26;
        v41 = a2;
        v42 = v5;
        v28 = *v44;
        while (2)
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v44 != v28)
            {
              objc_enumerationMutation(v23);
            }

            v30 = *(*(&v43 + 1) + 8 * i);
            if ([v30 type] == 1)
            {
              v31 = [v30 identifier];
              if ([v31 length] < 5)
              {
                v33 = 0;
              }

              else
              {
                v32 = [v30 identifier];
                v33 = [v32 substringToIndex:5];
              }

              v34 = [v30 identifier];
              if ([v34 length] < 3)
              {
                v36 = 0;
              }

              else
              {
                v35 = [v30 identifier];
                v36 = [v35 substringToIndex:3];
              }

              if (v33 && [(NSSet *)self->_tollFreeNumberPrefixes containsObject:v33]|| v36 && [(NSSet *)self->_tollFreeNumberPrefixes containsObject:v36])
              {
                v38 = [v30 identifier];

                v23 = v38;
                a2 = v41;
                v5 = v42;
                goto LABEL_39;
              }
            }
          }

          v27 = [v23 countByEnumeratingWithState:&v43 objects:v47 count:16];
          if (v27)
          {
            continue;
          }

          break;
        }

        v37 = 1;
        v5 = v42;
      }

      else
      {
        v37 = 1;
      }

      goto LABEL_43;
    }
  }

  v37 = 1;
LABEL_44:

  return v37;
}

- (void)_fetchInteractionsBetweenStartDate:(id)a3 EndDate:(id)a4 CompletionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9 && v10 && ![v10 isBeforeDate:v9])
  {
    if (_fetchInteractionsBetweenStartDate_EndDate_CompletionHandler__onceToken != -1)
    {
      [MOSignificantContactManager _fetchInteractionsBetweenStartDate:EndDate:CompletionHandler:];
    }

    v14 = [(MOSignificantContactManager *)self queue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __92__MOSignificantContactManager__fetchInteractionsBetweenStartDate_EndDate_CompletionHandler___block_invoke_2;
    v15[3] = &unk_1003376B8;
    v16 = v9;
    v17 = v10;
    v18 = self;
    v20 = a2;
    v19 = v11;
    dispatch_async(v14, v15);

    v13 = v16;
  }

  else
  {
    v21 = NSLocalizedDescriptionKey;
    v22 = @"invalid start date or end date";
    v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v13 = [NSError errorWithDomain:@"MOErrorDomain" code:7 userInfo:v12];

    (*(v11 + 2))(v11, &__NSArray0__struct, v13);
  }
}

void __92__MOSignificantContactManager__fetchInteractionsBetweenStartDate_EndDate_CompletionHandler___block_invoke(id a1)
{
  v1 = [NSString stringWithFormat:@"%@", @"mechanism"];
  v2 = objc_opt_new();
  for (i = 0; i != 11; ++i)
  {
    v4 = [NSPredicate predicateWithFormat:@"%K == %i", v1, kPPContactUNKPrefix_block_invoke_mechanismAllowList[i]];
    [v2 addObject:v4];
  }

  v5 = [NSCompoundPredicate orPredicateWithSubpredicates:v2];
  v6 = _fetchInteractionsBetweenStartDate_EndDate_CompletionHandler__predicateMechanism;
  _fetchInteractionsBetweenStartDate_EndDate_CompletionHandler__predicateMechanism = v5;

  v7 = [NSPredicate predicateWithFormat:@"%K.%K != nil", @"sender", @"personId"];
  v8 = [NSPredicate predicateWithFormat:@"(ANY %K.%K != nil)", @"recipients", @"personId"];
  v14[0] = v7;
  v14[1] = v8;
  v9 = [NSArray arrayWithObjects:v14 count:2];
  v10 = [NSCompoundPredicate orPredicateWithSubpredicates:v9];
  v11 = _fetchInteractionsBetweenStartDate_EndDate_CompletionHandler__predicatePersonIdNotNil;
  _fetchInteractionsBetweenStartDate_EndDate_CompletionHandler__predicatePersonIdNotNil = v10;

  v12 = [NSPredicate predicateWithFormat:@"%K != %@", @"bundleId", @"com.apple.Contacts.Autocomplete"];
  v13 = _fetchInteractionsBetweenStartDate_EndDate_CompletionHandler__predicateBundleId;
  _fetchInteractionsBetweenStartDate_EndDate_CompletionHandler__predicateBundleId = v12;
}

void __92__MOSignificantContactManager__fetchInteractionsBetweenStartDate_EndDate_CompletionHandler___block_invoke_2(uint64_t a1)
{
  v47 = +[NSCalendar currentCalendar];
  v2 = [v47 startOfDayForDate:*(a1 + 32)];
  v3 = &GEOPOICategoryGasStation_ptr;
  v4 = objc_opt_new();
  if (*(a1 + 32))
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      if ([v5 isAfterDate:?] && objc_msgSend(v2, "isBeforeDate:", *(a1 + 40)))
      {
        v6 = 0;
        do
        {
          v7 = v2;
          v8 = [v2 dateByAddingTimeInterval:86400.0];

          v9 = [v7 isAfterDate:*(a1 + 32)];
          v10 = v7;
          if ((v9 & 1) == 0)
          {
            v10 = *(a1 + 32);
          }

          v11 = v10;
          v12 = [v8 isBeforeDate:*(a1 + 40)];
          v13 = v8;
          if ((v12 & 1) == 0)
          {
            v13 = *(a1 + 40);
          }

          v14 = v13;
          v15 = v14;
          if (v11 && v14 && [v11 isBeforeDate:v14])
          {
            v16 = [[NSDateInterval alloc] initWithStartDate:v11 endDate:v15];
            [v4 addObject:v16];
          }

          v2 = v8;

          v6 = v2;
        }

        while (([v2 isBeforeDate:*(a1 + 40)] & 1) != 0);

        v3 = &GEOPOICategoryGasStation_ptr;
      }
    }
  }

  v48 = objc_opt_new();
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v4;
  v53 = [obj countByEnumeratingWithState:&v60 objects:v76 count:16];
  if (v53)
  {
    v52 = *v61;
    v46 = v2;
    v49 = a1;
    while (2)
    {
      v17 = 0;
      do
      {
        if (*v61 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v60 + 1) + 8 * v17);
        context = objc_autoreleasePoolPush();
        v19 = [NSSortDescriptor sortDescriptorWithKey:@"startDate" ascending:0];
        v75 = v19;
        v20 = [NSArray arrayWithObjects:&v75 count:1];

        v21 = [v18 startDate];
        v22 = [v18 endDate];
        v23 = [NSPredicate predicateWithFormat:@"startDate >= %@ && startDate <= %@", v21, v22];

        v54 = v23;
        v74[0] = v23;
        v74[1] = _fetchInteractionsBetweenStartDate_EndDate_CompletionHandler__predicateMechanism;
        v74[2] = _fetchInteractionsBetweenStartDate_EndDate_CompletionHandler__predicatePersonIdNotNil;
        v74[3] = _fetchInteractionsBetweenStartDate_EndDate_CompletionHandler__predicateBundleId;
        v24 = [NSArray arrayWithObjects:v74 count:4];
        v25 = [NSCompoundPredicate andPredicateWithSubpredicates:v24];

        v26 = [*(a1 + 48) interactionStore];
        v59 = 0;
        v55 = v20;
        v27 = [v26 queryInteractionsUsingPredicate:v25 sortDescriptors:v20 limit:1000 error:&v59];
        v28 = v59;

        v29 = v3[233];
        v30 = objc_opt_new();
        v57[0] = _NSConcreteStackBlock;
        v57[1] = 3221225472;
        v57[2] = __92__MOSignificantContactManager__fetchInteractionsBetweenStartDate_EndDate_CompletionHandler___block_invoke_3;
        v57[3] = &unk_100337690;
        v57[4] = *(a1 + 48);
        v31 = v30;
        v58 = v31;
        [v27 enumerateObjectsWithOptions:2 usingBlock:v57];
        v32 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          NSStringFromSelector(*(a1 + 64));
          v33 = v51 = v17;
          v34 = [v27 count];
          v35 = v28;
          v36 = v27;
          v37 = v25;
          v38 = v3;
          v39 = v34;
          v40 = [v18 startDate];
          v41 = [v18 endDate];
          v42 = [v31 count];
          *buf = 138413314;
          v65 = v33;
          v66 = 2048;
          v67 = v39;
          v3 = v38;
          v25 = v37;
          v27 = v36;
          v28 = v35;
          v68 = 2112;
          v69 = v40;
          v70 = 2112;
          v71 = v41;
          v72 = 2048;
          v73 = v42;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%@, fetched interaction count, %lu, startDate, %@, endDate, %@, filtered interaction count, %lu", buf, 0x34u);

          a1 = v49;
          v17 = v51;
        }

        if (v28)
        {
          v43 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v65 = v28;
            _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Interactions query error: %@", buf, 0xCu);
          }

          (*(*(a1 + 56) + 16))();
        }

        else
        {
          v44 = [*(a1 + 48) _conversationsFromInteractions:v31];
          if ([v44 count])
          {
            [v48 addObjectsFromArray:v44];
          }
        }

        objc_autoreleasePoolPop(context);
        if (v28)
        {

          v2 = v46;
          v45 = v48;
          goto LABEL_35;
        }

        v17 = v17 + 1;
      }

      while (v53 != v17);
      v2 = v46;
      v53 = [obj countByEnumeratingWithState:&v60 objects:v76 count:16];
      if (v53)
      {
        continue;
      }

      break;
    }
  }

  v45 = v48;
  (*(*(a1 + 56) + 16))();
LABEL_35:
}

void __92__MOSignificantContactManager__fetchInteractionsBetweenStartDate_EndDate_CompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([*(a1 + 32) _eligibleInteraction:?])
  {
    v3 = [[MOInteraction alloc] initWithCDInteraction:v4 meIdentifier:*(*(a1 + 32) + 24)];
    if (v3)
    {
      [*(a1 + 40) addObject:v3];
    }
  }
}

- (id)_collectSignificantContactsFromInteractions:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 participants];
        v14 = [v13 count];

        if (v14)
        {
          v15 = [v11 participants];
          [v5 addObjectsFromArray:v15];
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v8);
  }

  v16 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = NSStringFromSelector(a2);
    *buf = 138412546;
    v36 = v17;
    v37 = 2112;
    v38 = v5;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@, identifiers: %@", buf, 0x16u);
  }

  v18 = objc_opt_new();
  if ([v5 count])
  {
    v19 = objc_opt_new();
    v20 = [v5 allObjects];
    [v19 setMatchingIdentifiers:v20];

    ppContactStore = self->_ppContactStore;
    v29 = a2;
    v30 = 0;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = __75__MOSignificantContactManager__collectSignificantContactsFromInteractions___block_invoke;
    v27[3] = &unk_1003376E0;
    v27[4] = self;
    v28 = v18;
    v22 = [(PPContactStore *)ppContactStore iterRankedContactsWithQuery:v19 error:&v30 block:v27];
    v23 = v30;
    if ((v22 & 1) == 0)
    {
      v24 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [MOSignificantContactManager _collectSignificantContactsFromInteractions:];
      }
    }
  }

  return v18;
}

void __75__MOSignificantContactManager__collectSignificantContactsFromInteractions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __75__MOSignificantContactManager__collectSignificantContactsFromInteractions___block_invoke_cold_1(a1, v3, v4);
  }

  [v3 score];
  if (v5 >= 0.49999)
  {
    v6 = [v3 contact];
    v7 = [v6 identifier];

    if ([v7 hasPrefix:@"CN:"])
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [v7 substringFromIndex:{objc_msgSend(@"CN:", "length")}];
      objc_autoreleasePoolPop(v8);
      if (([*(*(a1 + 32) + 24) containsObject:v9] & 1) == 0)
      {
        [*(a1 + 40) setObject:v3 forKeyedSubscript:v9];
      }

      goto LABEL_14;
    }

    if ([v7 hasPrefix:@"FIA:"])
    {
      v10 = *(a1 + 40);
      v11 = objc_autoreleasePoolPush();
      v12 = @"FIA:";
    }

    else
    {
      v13 = [v7 hasPrefix:@"UNK:"];
      v10 = *(a1 + 40);
      if (!v13)
      {
        [v10 setObject:v3 forKeyedSubscript:v7];
        goto LABEL_14;
      }

      v11 = objc_autoreleasePoolPush();
      v12 = @"UNK:";
    }

    v14 = [v7 substringFromIndex:{-[__CFString length](v12, "length")}];
    objc_autoreleasePoolPop(v11);
    [v10 setObject:v3 forKeyedSubscript:v14];

LABEL_14:
  }
}

- (id)_conversationsFromInteractions:(id)a3
{
  v4 = a3;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    v111 = v6;
    v112 = 2048;
    v113 = [v4 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@, interaction count, %lu", buf, 0x16u);
  }

  v81 = objc_opt_new();
  if (v4 && [v4 count])
  {
    v78 = v4;
    v7 = [(MOSignificantContactManager *)self _collectSignificantContactsFromInteractions:v4];
    v8 = v7;
    if (v7 && [v7 count])
    {
      v9 = objc_opt_new();
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      obj = v78;
      v10 = [obj countByEnumeratingWithState:&v106 objects:v124 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v107;
        v82 = *v107;
        v85 = v9;
        do
        {
          v13 = 0;
          v89 = v11;
          do
          {
            if (*v107 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v106 + 1) + 8 * v13);
            v15 = objc_autoreleasePoolPush();
            v16 = [v9 member:v14];
            v17 = v16;
            if (v16)
            {
              [v16 addInteraction:v14];
            }

            else
            {
              v93 = v15;
              v95 = v13;
              v104 = 0u;
              v105 = 0u;
              v102 = 0u;
              v103 = 0u;
              v91 = v14;
              v18 = [v14 participants];
              v19 = [v18 countByEnumeratingWithState:&v102 objects:v123 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = 0;
                v22 = *v103;
                v23 = &off_10036E480;
                do
                {
                  for (i = 0; i != v20; i = i + 1)
                  {
                    if (*v103 != v22)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v25 = [v8 objectForKeyedSubscript:*(*(&v102 + 1) + 8 * i)];
                    v26 = v25;
                    if (v25)
                    {
                      [v25 score];
                      v28 = v27;
                      [v23 doubleValue];
                      if (v28 > v29)
                      {
                        v30 = v26;

                        [v30 score];
                        v31 = [NSNumber numberWithDouble:?];

                        v21 = v30;
                        v23 = v31;
                      }
                    }
                  }

                  v20 = [v18 countByEnumeratingWithState:&v102 objects:v123 count:16];
                }

                while (v20);
              }

              else
              {
                v21 = 0;
                v23 = &off_10036E480;
              }

              v32 = [[MOGroupedInteraction alloc] initWithScoredContact:v21 interactionScore:v23 interaction:v91];
              v9 = v85;
              [v85 addObject:v32];

              v12 = v82;
              v11 = v89;
              v15 = v93;
              v13 = v95;
              v17 = 0;
            }

            objc_autoreleasePoolPop(v15);
            v13 = v13 + 1;
          }

          while (v13 != v11);
          v11 = [obj countByEnumeratingWithState:&v106 objects:v124 count:16];
        }

        while (v11);
      }

      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = v9;
      v33 = [v96 countByEnumeratingWithState:&v98 objects:v122 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = 0;
        v36 = *v99;
        v92 = *v99;
        do
        {
          v37 = 0;
          v94 = v34;
          do
          {
            if (*v99 != v36)
            {
              objc_enumerationMutation(v96);
            }

            v38 = *(*(&v98 + 1) + 8 * v37);
            v39 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              v58 = NSStringFromSelector(a2);
              v59 = [v38 interactionKey];
              v80 = v59;
              v86 = [v38 scoredContact];
              v83 = [v86 contact];
              v60 = [v83 identifier];
              v61 = [v38 isScoredContactUsable];
              v62 = @"NO";
              if (v61)
              {
                v62 = @"YES";
              }

              v79 = v62;
              v63 = [v38 interactionScore];
              v64 = [v38 interactions];
              v65 = [v64 count];
              *buf = 138413570;
              v111 = v58;
              v112 = 2112;
              v113 = v59;
              v114 = 2112;
              v115 = v60;
              v66 = v60;
              v116 = 2112;
              v117 = v79;
              v34 = v94;
              v118 = 2112;
              v119 = v63;
              v120 = 2048;
              v121 = v65;
              _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "%@, grouped interactions for compound key: %@, main scored contact id: %@, usable %@, score %@, num interactions: %lu", buf, 0x3Eu);

              v36 = v92;
            }

            v40 = [v38 interactions];
            v41 = [v40 count];

            if ([v38 isScoredContactUsable] && (objc_msgSend(v38, "interactions"), v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "count"), v42, v43))
            {
              v44 = [MOConversation alloc];
              v45 = [v38 interactionKey];
              v46 = [v38 scoredContact];
              v47 = [v38 interactions];
              v48 = [(MOConversation *)v44 initWithContactIdentifier:v45 scoredContact:v46 interactions:v47];

              v49 = +[NSCalendar currentCalendar];
              v50 = [v48 endDate];
              v51 = [v49 startOfDayForDate:v50];

              v52 = [NSDateFormatter localizedStringFromDate:v51 dateStyle:4 timeStyle:3];
              v53 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
              {
                v87 = [v48 contactIdentifier];
                v67 = [v87 mask];
                v84 = [v48 interactions];
                v68 = [v84 count];
                *buf = 138412802;
                v111 = v67;
                v112 = 2112;
                v113 = v52;
                v114 = 2048;
                v115 = v68;
                _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "new conversation created for compound key: %@, for date %@, interaction count, %lu", buf, 0x20u);
              }

              v54 = [v48 interactions];
              v97[0] = _NSConcreteStackBlock;
              v97[1] = 3221225472;
              v97[2] = __62__MOSignificantContactManager__conversationsFromInteractions___block_invoke;
              v97[3] = &__block_descriptor_40_e30_v32__0__MOInteraction_8Q16_B24l;
              v97[4] = a2;
              [v54 enumerateObjectsUsingBlock:v97];

              [v81 addObject:v48];
              v36 = v92;
              v34 = v94;
            }

            else
            {
              v48 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
              if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
              {
                v55 = [v38 interactionKey];
                v56 = [v38 interactions];
                v57 = [v56 count];
                *buf = 138412546;
                v111 = v55;
                v112 = 2048;
                v113 = v57;
                _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "daily grouped interactions not used to make any conversation, compound key: %@, interaction count, %lu", buf, 0x16u);
              }
            }

            v35 += v41;

            v37 = v37 + 1;
          }

          while (v34 != v37);
          v69 = [v96 countByEnumeratingWithState:&v98 objects:v122 count:16];
          v34 = v69;
        }

        while (v69);
      }

      v74 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
      {
        [(MOSignificantContactManager *)obj _conversationsFromInteractions:v74];
      }

      v75 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
      {
        [MOSignificantContactManager _conversationsFromInteractions:];
      }

      v70 = v81;
      v76 = v81;
    }

    else
    {
      v72 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "significantContacts is empty, returning.", buf, 2u);
      }

      v70 = v81;
      v73 = v81;
    }

    v4 = v78;
  }

  else
  {
    v70 = v81;
    v71 = v81;
  }

  return v70;
}

void __62__MOSignificantContactManager__conversationsFromInteractions___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(*(a1 + 32));
    v8 = 138412802;
    v9 = v7;
    v10 = 2048;
    v11 = a3;
    v12 = 2112;
    v13 = v5;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@, idx, %lu, interaction, %@", &v8, 0x20u);
  }
}

- (id)_createEventFromConversation:(id)a3
{
  v4 = a3;
  v5 = [MOEvent alloc];
  v6 = +[NSUUID UUID];
  v7 = [v4 startDate];
  v8 = [v4 endDate];
  v9 = +[NSDate date];
  v10 = [(MOEvent *)v5 initWithEventIdentifier:v6 startDate:v7 endDate:v8 creationDate:v9 provider:3 category:10];

  v11 = [v4 endDate];
  v12 = [(MOSignificantContactManager *)self configurationManager];
  LODWORD(v13) = 1242802176;
  [v12 getFloatSettingForKey:@"EventManagerOverrideMaximumEventAge" withFallback:v13];
  v15 = [v11 dateByAddingTimeInterval:v14];
  [(MOEvent *)v10 setExpirationDate:v15];

  v16 = [v4 providerId];

  [(MOEvent *)v10 setIdentifierFromProvider:v16];

  return v10;
}

- (void)_saveConversations:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSDate distantFuture];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v10)
  {
    v11 = *v34;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        v14 = [v13 startDate];
        v15 = [v8 isAfterDate:v14];

        if (v15)
        {
          v16 = [v13 startDate];

          v8 = v16;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v10);
  }

  v30 = 0;
  v31[0] = &v30;
  v31[1] = 0x3032000000;
  v31[2] = __Block_byref_object_copy__8;
  v31[3] = __Block_byref_object_dispose__8;
  v32 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__8;
  v28[4] = __Block_byref_object_dispose__8;
  v29 = 0;
  v17 = [(MOSignificantContactManager *)self momentStore];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = __58__MOSignificantContactManager__saveConversations_handler___block_invoke;
  v27[3] = &unk_100337768;
  v27[4] = &v30;
  v27[5] = v28;
  [v17 fetchEventsWithStartDateAfter:v8 Category:10 CompletionHandler:v27];

  if (*(v31[0] + 40))
  {
    v18 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MOSignificantContactManager _saveConversations:v31 handler:?];
    }

    v19 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MOSignificantContactManager _saveConversations:handler:];
    }

    if (v7)
    {
      v7[2](v7, *(v31[0] + 40), &__NSDictionary0__struct);
    }
  }

  else
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = __58__MOSignificantContactManager__saveConversations_handler___block_invoke_337;
    v26[3] = &unk_100337790;
    v26[4] = self;
    v26[5] = v28;
    v20 = [v9 _pas_mappedArrayWithTransform:v26];
    v21 = [(MOSignificantContactManager *)self momentStore];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = __58__MOSignificantContactManager__saveConversations_handler___block_invoke_2_339;
    v23[3] = &unk_1003377B8;
    v22 = v20;
    v24 = v22;
    v25 = v7;
    [v21 storeEvents:v22 CompletionHandler:v23];
  }

  _Block_object_dispose(v28, 8);

  _Block_object_dispose(&v30, 8);
}

void __58__MOSignificantContactManager__saveConversations_handler___block_invoke(uint64_t a1, void *a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  v7 = a2;
  v8 = [NSSet alloc];
  v12 = [v7 _pas_mappedArrayWithTransform:&__block_literal_global_335];

  v9 = [v8 initWithArray:v12];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

id __58__MOSignificantContactManager__saveConversations_handler___block_invoke_337(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [v3 providerId];
  LOBYTE(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) _createEventFromConversation:v3];
  }

  return v6;
}

void __58__MOSignificantContactManager__saveConversations_handler___block_invoke_2_339(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __58__MOSignificantContactManager__saveConversations_handler___block_invoke_2_339_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = [*(a1 + 32) count];
    v11 = 134217984;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "saved conversations, %lu", &v11, 0xCu);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }
}

- (id)_rehydrateStoredEvents:(id)a3 fromConversations:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v5 count])
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "no input events for rehydrating contact events", buf, 2u);
    }

    goto LABEL_33;
  }

  if (![v6 count])
  {
    v38 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "no interactions fetched for rehydrating contact events", buf, 2u);
    }

    v39 = [MORehydrationMetrics alloc];
    v40 = [v5 firstObject];
    v41 = [v40 category];
    v42 = [v5 firstObject];
    v7 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v39, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", v41, [v42 provider], 1, 0, objc_msgSend(v5, "count"), 3, objc_msgSend(v5, "count"), 0.0);

    v61 = 0;
    [v7 submitMetricsWithError:&v61];
LABEL_33:
    v50 = 0;
    goto LABEL_34;
  }

  v45 = v5;
  v7 = objc_opt_new();
  v46 = objc_opt_new();
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v44 = v6;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v58;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v58 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v57 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = [v13 providerId];
        v16 = v15;
        if (v15)
        {
          if ([v15 length])
          {
            [v7 setObject:v13 forKeyedSubscript:v16];
            v17 = [v13 interactions];
            v18 = [v17 count];

            if (v18)
            {
              v19 = [v13 interactions];
              v20 = [v19 firstObject];
              [v46 addObject:v20];
            }
          }
        }

        objc_autoreleasePoolPop(v14);
      }

      v10 = [v8 countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v10);
  }

  v47 = objc_opt_new();
  v50 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v45;
  v21 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v54;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v54 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v53 + 1) + 8 * j);
        v26 = [v25 identifierFromProvider];
        v27 = [v7 objectForKeyedSubscript:v26];

        if (v27)
        {
          v28 = [v25 copy];
          if ([v25 rehydrationFailCount])
          {
            v29 = -[MORehydrationThresholdMetrics initWithCategory:provider:failureCount:]([MORehydrationThresholdMetrics alloc], "initWithCategory:provider:failureCount:", [v25 category], objc_msgSend(v25, "provider"), objc_msgSend(v25, "rehydrationFailCount"));
            v52 = 0;
            [(MORehydrationThresholdMetrics *)v29 submitMetricsWithError:&v52];
            v30 = v52;
            [v28 setRehydrationFailCount:0];
            [v47 addObject:v25];
          }

          [(MOSignificantContactManager *)self _setDynamicPropertiesForEvent:v28 fromCoversation:v27];
          [v50 addObject:v28];
        }
      }

      v22 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
    }

    while (v22);
  }

  v31 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = [v50 count];
    *buf = 134217984;
    v63 = v32;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "rehydrated contact events count, %lu", buf, 0xCu);
  }

  v33 = [MORehydrationMetrics alloc];
  v34 = [obj firstObject];
  v35 = [v34 category];
  v36 = [obj firstObject];
  v37 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v33, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", v35, [v36 provider], 1, 0, objc_msgSend(obj, "count"), 3, (objc_msgSend(obj, "count") - objc_msgSend(v50, "count")), objc_msgSend(v47, "count"));

  v51 = 0;
  [(MORehydrationMetrics *)v37 submitMetricsWithError:&v51];

  v6 = v44;
  v5 = v45;
LABEL_34:

  return v50;
}

- (id)_fetchClassificationForSignificantContacts:(id)a3
{
  v70 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = v4;
  if (!self->_visualIdentifierView)
  {
    v44 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "#megadome,visualIdentifierView is nil", buf, 2u);
    }

    goto LABEL_55;
  }

  if (!self->_entityTaggingSerice)
  {
    v44 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      [MOSignificantContactManager _fetchClassificationForSignificantContacts:];
    }

LABEL_55:

    v45 = v5;
    goto LABEL_71;
  }

  v64 = v4;
  v69 = objc_opt_new();
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = [v70 allKeys];
  v6 = [obj countByEnumeratingWithState:&v84 objects:v93 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v85;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v85 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v84 + 1) + 8 * i);
        v11 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v92 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "#megadome,fetchClassificationInfo,contactIdentifier,%@", buf, 0xCu);
        }

        v12 = [(GDVisualIdentifierView *)self->_visualIdentifierView personForIdentifier:v10];
        v13 = [v12 entityIdentifier];
        v14 = [v13 stringValue];

        v15 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *v92 = v10;
          *&v92[8] = 2112;
          *&v92[10] = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "#megadome,CNContactID,%@,contactIdentifierMD,%@", buf, 0x16u);
        }

        if (v14)
        {
          [v69 setObject:v10 forKey:v14];
        }

        else
        {
          v16 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *v92 = v10;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "#megadome,could not get MD identifier for contactIdentifier %@", buf, 0xCu);
          }

          v17 = [v70 objectForKey:v10];
          v18 = [NSNumber numberWithInt:0xFFFFFFFFLL];
          [v64 setObject:v18 forKey:v17];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v84 objects:v93 count:16];
    }

    while (v7);
  }

  v19 = v69;
  v20 = [v69 allKeys];
  v21 = [v20 count];

  if (v21)
  {
    v22 = [[GDPersonTaggingOptions alloc] initWithTagThresholds:&off_10036EA90];
    entityTaggingSerice = self->_entityTaggingSerice;
    v24 = [v69 allKeys];
    v83 = 0;
    v25 = [(GDEntityTaggingService *)entityTaggingSerice entityTagsForIdentifiers:v24 options:v22 error:&v83];
    v26 = v83;

    v5 = v64;
    if (v26 || !v25)
    {
      v48 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        [MOSignificantContactManager _fetchClassificationForSignificantContacts:];
      }

      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v63 = [v69 allKeys];
      v49 = [v63 countByEnumeratingWithState:&v79 objects:v90 count:16];
      if (v49)
      {
        v50 = v49;
        v59 = v26;
        v51 = *v80;
        do
        {
          for (j = 0; j != v50; j = j + 1)
          {
            if (*v80 != v51)
            {
              objc_enumerationMutation(v63);
            }

            v53 = [v69 objectForKey:*(*(&v79 + 1) + 8 * j)];
            v54 = [v70 objectForKey:v53];
            v55 = [NSNumber numberWithInt:0xFFFFFFFFLL];
            [v64 setObject:v55 forKey:v54];
          }

          v50 = [v63 countByEnumeratingWithState:&v79 objects:v90 count:16];
        }

        while (v50);
        v26 = v59;
      }
    }

    else
    {
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v63 = [v69 allKeys];
      v62 = [v63 countByEnumeratingWithState:&v75 objects:v89 count:16];
      if (v62)
      {
        v58 = v22;
        v61 = *v76;
        v60 = v25;
        do
        {
          v27 = 0;
          do
          {
            if (*v76 != v61)
            {
              objc_enumerationMutation(v63);
            }

            obja = v27;
            v65 = *(*(&v75 + 1) + 8 * v27);
            v28 = [v25 objectForKey:v58];
            v29 = [v28 scoredPersonEntityTags];

            v66 = v29;
            if ([v29 count])
            {
              v73 = 0u;
              v74 = 0u;
              v71 = 0u;
              v72 = 0u;
              v30 = v29;
              v31 = [v30 countByEnumeratingWithState:&v71 objects:v88 count:16];
              if (v31)
              {
                v32 = v31;
                LODWORD(v33) = 0;
                v34 = *v72;
                do
                {
                  for (k = 0; k != v32; k = k + 1)
                  {
                    if (*v72 != v34)
                    {
                      objc_enumerationMutation(v30);
                    }

                    v36 = *(*(&v71 + 1) + 8 * k);
                    v37 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                    {
                      v38 = [v36 tag];
                      [v36 score];
                      *buf = 134218240;
                      *v92 = v38;
                      *&v92[8] = 2048;
                      *&v92[10] = v39;
                      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "#megadome,personTag,%ld,score,%f", buf, 0x16u);
                    }

                    if ([v36 tag] == 26)
                    {
                      v33 = v33 | 0x100008;
                    }

                    else if ([v36 tag] == 22)
                    {
                      v33 = v33 | 0x200000;
                    }

                    else
                    {
                      v33 = v33;
                    }
                  }

                  v32 = [v30 countByEnumeratingWithState:&v71 objects:v88 count:16];
                }

                while (v32);
              }

              else
              {
                v33 = 0;
              }

              v5 = v64;
              v19 = v69;
              v25 = v60;
            }

            else
            {
              v33 = 0;
            }

            v40 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v92 = v33;
              *&v92[4] = 2112;
              *&v92[6] = v65;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "#megadome,classification,%u, for contact id,%@", buf, 0x12u);
            }

            v41 = [v19 objectForKey:v65];
            v42 = [v70 objectForKey:v41];
            v43 = [NSNumber numberWithInt:v33];
            [v5 setObject:v43 forKey:v42];

            v27 = obja + 1;
          }

          while (obja + 1 != v62);
          v62 = [v63 countByEnumeratingWithState:&v75 objects:v89 count:16];
        }

        while (v62);
        v22 = v58;
        v26 = 0;
      }
    }

    v56 = v5;
  }

  else
  {
    v46 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
    v5 = v64;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      [MOSignificantContactManager _fetchClassificationForSignificantContacts:];
    }

    v47 = v64;
  }

LABEL_71:

  return v5;
}

- (void)_setDynamicPropertiesForEvent:(id)a3 fromCoversation:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 scoredContact];
  [v7 score];
  v8 = [NSNumber numberWithDouble:?];
  [v5 setInteractionContactScore:v8];

  v9 = [v6 scoredContact];
  [v5 setInteractionScoredContact:v9];

  v10 = [v6 interactions];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [v6 interactions];
    v13 = [v12 objectAtIndexedSubscript:0];
    v14 = [v13 groupName];
    [v5 setInteractionGroupName:v14];
  }

  v15 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [MOSignificantContactManager _setDynamicPropertiesForEvent:v5 fromCoversation:v15];
  }

  v16 = [v5 significantContactEvent];
  [v16 setContainsOrganizationContact:0];

  v17 = [v5 significantContactEvent];
  v18 = [v17 interactionScoredContact];
  v19 = [v18 contact];
  v20 = [v19 organizationName];
  if (![v20 length])
  {
    goto LABEL_8;
  }

  v21 = [v5 significantContactEvent];
  v22 = [v21 interactionScoredContact];
  v23 = [v22 contact];
  v24 = [v23 familyName];
  if ([v24 length])
  {

LABEL_8:
LABEL_9:

    goto LABEL_10;
  }

  v57 = [v5 significantContactEvent];
  v55 = [v57 interactionScoredContact];
  [v55 contact];
  v62 = v17;
  v43 = v42 = v6;
  [v43 givenName];
  v44 = v59 = v21;
  v61 = [v44 length];

  v6 = v42;
  if (!v61)
  {
    v45 = [v5 significantContactEvent];
    [v45 setContainsOrganizationContact:1];

    v17 = _mo_log_facility_get_os_log(&MOLogFacilityBundleQuality);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v46 = [v5 significantContactEvent];
      v47 = [v46 interactionScoredContact];
      v48 = [v47 contact];
      v49 = [v48 localizedFullName];
      v50 = [v49 mask];
      v51 = [v5 significantContactEvent];
      *buf = 138412546;
      v74 = v50;
      v75 = 2112;
      v76 = v51;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "contact with full name, %@,  is business contact based on names for event, %@", buf, 0x16u);
    }

    goto LABEL_9;
  }

LABEL_10:
  v56 = objc_opt_new();
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v52 = v6;
  obj = [v6 interactions];
  v58 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
  if (v58)
  {
    v54 = *v68;
    do
    {
      v25 = 0;
      do
      {
        if (*v68 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v60 = v25;
        v26 = *(*(&v67 + 1) + 8 * v25);
        v27 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v26 mechanism]);
        [v56 addObject:v27];

        v28 = [v26 sender];
        v29 = [v28 isOrganization];

        if (v29)
        {
          v30 = [v5 significantContactEvent];
          [v30 setContainsOrganizationContact:1];

          v31 = _mo_log_facility_get_os_log(&MOLogFacilityBundleQuality);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = [v5 eventIdentifier];
            *buf = 138412290;
            v74 = v32;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "sender is business contact based on contact id type for event, %@", buf, 0xCu);
          }
        }

        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v33 = [v26 recipients];
        v34 = [v33 countByEnumeratingWithState:&v63 objects:v71 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v64;
          do
          {
            for (i = 0; i != v35; i = i + 1)
            {
              if (*v64 != v36)
              {
                objc_enumerationMutation(v33);
              }

              if ([*(*(&v63 + 1) + 8 * i) isOrganization])
              {
                v38 = [v5 significantContactEvent];
                [v38 setContainsOrganizationContact:1];

                v39 = _mo_log_facility_get_os_log(&MOLogFacilityBundleQuality);
                if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                {
                  v40 = [v5 eventIdentifier];
                  *buf = 138412290;
                  v74 = v40;
                  _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "recipient is business contact based on contact id type for event, %@", buf, 0xCu);
                }
              }
            }

            v35 = [v33 countByEnumeratingWithState:&v63 objects:v71 count:16];
          }

          while (v35);
        }

        v25 = v60 + 1;
      }

      while ((v60 + 1) != v58);
      v58 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
    }

    while (v58);
  }

  [v5 setInteractionMechanisms:v56];
  v41 = [v52 interactions];
  [v5 setInteractions:v41];
}

- (void)rehydrateConversations:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MOSignificantContactManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __62__MOSignificantContactManager_rehydrateConversations_handler___block_invoke;
  block[3] = &unk_100336A58;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_rehydrateConversations:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 getDurationOfMOEventArray];
  v9 = [v8 startDate];
  v10 = [v8 endDate];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __63__MOSignificantContactManager__rehydrateConversations_handler___block_invoke;
  v13[3] = &unk_1003377E0;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  [(MOSignificantContactManager *)self _fetchInteractionsBetweenStartDate:v9 EndDate:v10 CompletionHandler:v13];
}

void __63__MOSignificantContactManager__rehydrateConversations_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = [v5 _rehydrateStoredEvents:v6 fromConversations:a2];
  [*(a1 + 32) _updateClassificationForEvents:v8];
  (*(*(a1 + 48) + 16))();
}

- (void)fetchConversationEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MOSignificantContactManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __104__MOSignificantContactManager_fetchConversationEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke;
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

- (void)_fetchConversationEventsBetweenStartDate:(id)a3 endDate:(id)a4 withStoredEvents:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [NSPredicate predicateWithFormat:@"%K = %lu", @"category", 10];
  v15 = [NSPredicate predicateWithFormat:@"%K = %lu", @"provider", 3];
  v30[0] = v14;
  v30[1] = v15;
  v16 = [NSArray arrayWithObjects:v30 count:2];
  v17 = [NSCompoundPredicate andPredicateWithSubpredicates:v16];

  [v12 filteredArrayUsingPredicate:v17];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __105__MOSignificantContactManager__fetchConversationEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke;
  v23[3] = &unk_100337828;
  v24 = v12;
  v26 = v25 = self;
  v27 = v10;
  v28 = v11;
  v29 = v13;
  v18 = v11;
  v19 = v10;
  v20 = v26;
  v21 = v12;
  v22 = v13;
  [(MOSignificantContactManager *)self _fetchInteractionsBetweenStartDate:v19 EndDate:v18 CompletionHandler:v23];
}

void __105__MOSignificantContactManager__fetchConversationEventsBetweenStartDate_endDate_withStoredEvents_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  if (v6)
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "fetching interactions from source hit error", buf, 2u);
    }

    (*(*(a1 + 72) + 16))();
    v10 = [MORehydrationMetrics alloc];
    v11 = [v6 description];
    v12 = -[MORehydrationMetrics initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:](v10, "initWithCategory:provider:spiSuccess:spiError:failCount:successAfterPreFailCount:totalCount:rehydrationTrigger:", 10, 3, 0, v11, [*(a1 + 32) count], 3, objc_msgSend(*(a1 + 32), "count"), 0.0);

    v22 = 0;
    [(MORehydrationMetrics *)v12 submitMetricsWithError:&v22];
  }

  else
  {
    v12 = [*(a1 + 40) _rehydrateStoredEvents:*(a1 + 48) fromConversations:v5];
    v13 = [*(a1 + 40) _createNewEventsFromConversations:v5 storedEvents:*(a1 + 48)];
    v14 = [*(a1 + 40) _findUnrehydratedEventsWithStoredEvents:*(a1 + 48) conversations:v5];
    v15 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v20 = *(a1 + 56);
      v21 = *(a1 + 64);
      v19 = [(MORehydrationMetrics *)v12 count];
      v18 = [v13 count];
      v16 = [v14 count];
      v17 = [*(a1 + 48) count];
      *buf = 138413570;
      v24 = v20;
      v25 = 2112;
      v26 = v21;
      v27 = 2048;
      v28 = v19;
      v29 = 2048;
      v30 = v18;
      v31 = 2048;
      v32 = v16;
      v33 = 2048;
      v34 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "start date, %@, end date, %@, rehydrated contact events count, %lu, new contact events counts, %lu, unrehydrated contact events count, %lu, stored contact events count, %lu", buf, 0x3Eu);
    }

    if (v14)
    {
      [v7 setObject:v14 forKey:@"unrehydratedEvents"];
    }

    if (v13)
    {
      [v7 setObject:v13 forKey:@"newEvents"];
      [v8 addObjectsFromArray:v13];
    }

    if (v12)
    {
      [v7 setObject:v12 forKey:@"rehydratedEvents"];
      [v8 addObjectsFromArray:v12];
    }

    if ([v8 count])
    {
      [*(a1 + 40) _updateClassificationForEvents:v8];
    }

    (*(*(a1 + 72) + 16))();
  }
}

- (void)_updateClassificationForEvents:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = [v11 significantContactEvent];
        v13 = [v12 interactions];
        v14 = [v13 count];

        if (v14)
        {
          v15 = [v11 significantContactEvent];
          v16 = [v15 interactions];
          v17 = [v16 firstObject];
          [v5 addObject:v17];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v8);
  }

  v18 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [v5 count];
    *buf = 134217984;
    v37 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "interactions count, %lu", buf, 0xCu);
  }

  v20 = [(MOSignificantContactManager *)self _collectSignificantContactsFromInteractions:v5];
  v21 = [(MOSignificantContactManager *)self _fetchClassificationForSignificantContacts:v20];
  if ([v6 count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = v6;
    v23 = [v22 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v28;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v28 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [(MOSignificantContactManager *)self _updateClassificationForEvent:*(*(&v27 + 1) + 8 * j) withClassificationDict:v21 contactDict:v20, v27];
        }

        v24 = [v22 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v24);
    }
  }

  else
  {
    v22 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "No MOEvents to be updated for classification", buf, 2u);
    }
  }
}

- (void)_updateClassificationForEvent:(id)a3 withClassificationDict:(id)a4 contactDict:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v73 = objc_opt_new();
  v10 = objc_alloc_init(NSMutableDictionary);
  v11 = [v7 significantContactEvent];
  v12 = [v11 interactions];
  v66 = v10;
  if ([v12 count])
  {
    v13 = [v7 significantContactEvent];
    v14 = [v13 interactions];
    v15 = [v14 objectAtIndexedSubscript:0];
    v16 = [v15 sender];
    v17 = [v16 personId];
    if (v17)
    {
      v18 = v17;
      v63 = [v7 significantContactEvent];
      [v63 interactions];
      v60 = v71 = v11;
      [v60 objectAtIndexedSubscript:0];
      v19 = v69 = v14;
      [v19 sender];
      v20 = v67 = v13;
      [v20 personId];
      v21 = v61 = v15;
      v22 = [v9 objectForKey:v21];

      v10 = v66;
      if (!v22)
      {
        goto LABEL_7;
      }

      v23 = [v7 significantContactEvent];
      v24 = [v23 interactions];
      v25 = [v24 objectAtIndexedSubscript:0];
      v26 = [v25 sender];
      v11 = [v26 personId];

      v12 = [v9 objectForKey:v11];
      [v73 addObject:v12];
    }

    else
    {

      v10 = v66;
    }
  }

LABEL_7:
  v27 = [v7 significantContactEvent];
  v28 = [v27 interactions];
  v29 = [v28 count];

  if (v29)
  {
    v64 = v8;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v30 = v7;
    v31 = [v7 significantContactEvent];
    v32 = [v31 interactions];
    v33 = [v32 objectAtIndexedSubscript:0];
    v34 = [v33 recipients];

    v35 = [v34 countByEnumeratingWithState:&v78 objects:v89 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v79;
      do
      {
        for (i = 0; i != v36; i = i + 1)
        {
          if (*v79 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v78 + 1) + 8 * i);
          v40 = [v39 personId];
          if (v40)
          {
            v41 = v40;
            v42 = [v39 personId];
            v43 = [v9 objectForKey:v42];

            if (v43)
            {
              v44 = [v39 personId];
              v45 = [v9 objectForKey:v44];
              [v73 addObject:v45];
            }
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v78 objects:v89 count:16];
      }

      while (v36);
    }

    v7 = v30;
    v8 = v64;
    v10 = v66;
  }

  if ([v73 count] && (objc_msgSend(v8, "allKeys"), v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "count"), v46, v47))
  {
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v48 = v73;
    v49 = [v48 countByEnumeratingWithState:&v74 objects:v88 count:16];
    if (v49)
    {
      v50 = v49;
      v62 = v7;
      v51 = *v75;
      v65 = v8;
      do
      {
        for (j = 0; j != v50; j = j + 1)
        {
          if (*v75 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = *(*(&v74 + 1) + 8 * j);
          v54 = [v8 objectForKey:v53];
          if (v54)
          {
            [v10 setObject:v54 forKey:v53];
            v55 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
            {
              v72 = [v53 contact];
              v68 = [v72 identifier];
              v70 = [v53 contact];
              v56 = [v70 givenName];
              v57 = [v56 mask];
              *buf = 138412802;
              v83 = v54;
              v84 = 2112;
              v85 = v68;
              v86 = 2112;
              v87 = v57;
              _os_log_debug_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "_updateClassificationForEvent, classification, %@, contactID, %@, name, %@", buf, 0x20u);

              v10 = v66;
              v8 = v65;
            }
          }
        }

        v50 = [v48 countByEnumeratingWithState:&v74 objects:v88 count:16];
      }

      while (v50);
      v7 = v62;
    }
  }

  else
  {
    v48 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "No contacts or no classification dictionary", buf, 2u);
    }
  }

  v58 = [v7 significantContactEvent];
  [v58 setContactClassificationMap:v10];

  v59 = [v7 significantContactEvent];
  [v59 setInteractionContacts:v73];
}

- (id)_createEventsFromConversations:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [(MOSignificantContactManager *)self _createEventFromConversation:v11, v14];
          [(MOSignificantContactManager *)self _setDynamicPropertiesForEvent:v12 fromCoversation:v11];
          [v5 addObject:v12];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "no conversation for creating events", buf, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (id)_createNewEventsFromConversations:(id)a3 storedEvents:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    if ([v7 count])
    {
      v28 = self;
      v8 = objc_opt_new();
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v29 = v7;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v35;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v35 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [*(*(&v34 + 1) + 8 * i) identifierFromProvider];
            [v8 addObject:v14];
          }

          v11 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v11);
      }

      v15 = objc_opt_new();
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v16 = v6;
      v17 = [v16 countByEnumeratingWithState:&v30 objects:v39 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v31;
        do
        {
          for (j = 0; j != v18; j = j + 1)
          {
            if (*v31 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v30 + 1) + 8 * j);
            v22 = [v21 providerId];
            v23 = [v8 containsObject:v22];

            if ((v23 & 1) == 0)
            {
              [v15 addObject:v21];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v30 objects:v39 count:16];
        }

        while (v18);
      }

      v24 = [(MOSignificantContactManager *)v28 _createEventsFromConversations:v15];

      v7 = v29;
    }

    else
    {
      v26 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "no stored events to check for creating new contact events", buf, 2u);
      }

      v24 = [(MOSignificantContactManager *)self _createEventsFromConversations:v6];
    }
  }

  else
  {
    v25 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "no workouts for creating new contact events", buf, 2u);
    }

    v24 = 0;
  }

  return v24;
}

- (id)_findUnrehydratedEventsWithStoredEvents:(id)a3 conversations:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    if ([v6 count])
    {
      v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v33 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v39;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v39 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v38 + 1) + 8 * i);
            v14 = [v13 providerId];
            [v7 setObject:v13 forKeyedSubscript:v14];
          }

          v10 = [v8 countByEnumeratingWithState:&v38 objects:v47 count:16];
        }

        while (v10);
      }

      v15 = objc_alloc_init(NSMutableArray);
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v16 = v5;
      v17 = [v16 countByEnumeratingWithState:&v34 objects:v46 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v35;
        do
        {
          for (j = 0; j != v18; j = j + 1)
          {
            if (*v35 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v34 + 1) + 8 * j);
            v22 = [v21 identifierFromProvider];
            v23 = [v7 objectForKeyedSubscript:v22];

            if (!v23)
            {
              [v21 setRehydrationFailCount:{objc_msgSend(v21, "rehydrationFailCount") + 1}];
              [v15 addObject:v21];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v34 objects:v46 count:16];
        }

        while (v18);
      }

      v6 = v33;
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v25 = v5;
      v26 = [v25 countByEnumeratingWithState:&v42 objects:v50 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v43;
        do
        {
          for (k = 0; k != v27; k = k + 1)
          {
            if (*v43 != v28)
            {
              objc_enumerationMutation(v25);
            }

            [*(*(&v42 + 1) + 8 * k) setRehydrationFailCount:{objc_msgSend(*(*(&v42 + 1) + 8 * k), "rehydrationFailCount") + 1}];
          }

          v27 = [v25 countByEnumeratingWithState:&v42 objects:v50 count:16];
        }

        while (v27);
      }

      v30 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = [v25 count];
        *buf = 134217984;
        v49 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "no conversation fetched ,so all stored contact events are unrehydrated, count, %lu", buf, 0xCu);
      }

      v15 = v25;
    }
  }

  else
  {
    v24 = _mo_log_facility_get_os_log(&MOLogFacilitySignificantContact);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "no stored contact events for finding unrehydrated events", buf, 2u);
    }

    v15 = 0;
  }

  return v15;
}

- (void)initWithDuetStore:ppContactStore:cnContactStore:momentStore:configurationManager:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)intializeEntityTaggingService
{
  v3 = [*a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#megadome,GDEntityTaggingService init failed,error,%@", v4, 0xCu);
}

- (void)_eligibleInteraction:(NSObject *)a3 .cold.1(const char *a1, void *a2, NSObject *a3)
{
  v5 = NSStringFromSelector(a1);
  v6 = [a2 mask];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%@, filter out ineligible interaction with phone number, %@", &v7, 0x16u);
}

- (void)_collectSignificantContactsFromInteractions:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __75__MOSignificantContactManager__collectSignificantContactsFromInteractions___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = NSStringFromSelector(*(a1 + 48));
  v6 = [a2 contact];
  v7 = [v6 localizedFullName];
  v8 = [v7 mask];
  v9 = [a2 contact];
  v10 = [v9 identifier];
  [a2 score];
  v12 = 138413058;
  v13 = v5;
  v14 = 2112;
  v15 = v8;
  v16 = 2112;
  v17 = v10;
  v18 = 2048;
  v19 = v11;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%@, name: %@, identifier: %@, score: %f", &v12, 0x2Au);
}

- (void)_conversationsFromInteractions:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  [a1 count];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, " ---  Received Interactions Count :%3lu", v3, 0xCu);
}

- (void)_saveConversations:(uint64_t)a1 handler:.cold.1(uint64_t a1)
{
  v6 = *(*a1 + 40);
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_saveConversations:handler:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __58__MOSignificantContactManager__saveConversations_handler___block_invoke_2_339_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_fetchClassificationForSignificantContacts:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_fetchClassificationForSignificantContacts:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_fetchClassificationForSignificantContacts:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_setDynamicPropertiesForEvent:(void *)a1 fromCoversation:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v18 = [a1 significantContactEvent];
  v17 = [v18 interactionScoredContact];
  v16 = [v17 contact];
  v15 = [v16 organizationName];
  v3 = [v15 mask];
  v14 = [a1 significantContactEvent];
  v4 = [v14 interactionScoredContact];
  v5 = [v4 contact];
  v6 = [v5 familyName];
  v7 = [v6 mask];
  v8 = [a1 significantContactEvent];
  v9 = [v8 interactionScoredContact];
  v10 = [v9 contact];
  v11 = [v10 givenName];
  v12 = [v11 mask];
  *buf = 138412802;
  v20 = v3;
  v21 = 2112;
  v22 = v7;
  v23 = 2112;
  v24 = v12;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "organization name, %@, family name %@, given name, %@", buf, 0x20u);
}

@end