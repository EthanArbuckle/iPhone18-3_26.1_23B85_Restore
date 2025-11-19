@interface MOEventPatternDetectorPredicateFilterBySignificantContact
- (BOOL)configure:(id)a3;
- (MOEventPatternDetectorPredicateFilterBySignificantContact)init;
- (id)filterEvents:(id)a3;
@end

@implementation MOEventPatternDetectorPredicateFilterBySignificantContact

- (MOEventPatternDetectorPredicateFilterBySignificantContact)init
{
  v6.receiver = self;
  v6.super_class = MOEventPatternDetectorPredicateFilterBySignificantContact;
  v2 = [(MOEventPatternDetectorPredicateFilterBySignificantContact *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_minimumTextCount = -1;
    v2->_maximumNumberOfContacts = -1;
    v2->_excludeTextOnlyConversations = 1;
    v4 = v2;
  }

  return v3;
}

- (id)filterEvents:(id)a3
{
  v4 = a3;
  if (self->_minimumTextCount == -1 || self->_minimumTotalCallDuration == -1 || self->_maximumNumberOfContacts == -1)
  {
    log = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [MOEventPatternDetectorPredicateFilterBySignificantContact filterEvents:?];
    }

    v43 = 0;
    goto LABEL_57;
  }

  log = objc_opt_new();
  v5 = [NSPredicate predicateWithFormat:@"%K = %lu AND %K = %lu", @"category", 10, @"provider", 3];
  v6 = [v4 filteredArrayUsingPredicate:v5];
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v74 = [v6 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Found %lu significant contact events", buf, 0xCu);
  }

  if (![v6 count])
  {
    v43 = 0;
    goto LABEL_56;
  }

  v46 = v5;
  v47 = v4;
  v51 = objc_opt_new();
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v45 = v6;
  obj = v6;
  v53 = [obj countByEnumeratingWithState:&v65 objects:v72 count:16];
  if (!v53)
  {
    goto LABEL_39;
  }

  v52 = *v66;
  v49 = self;
  do
  {
    v8 = 0;
    do
    {
      if (*v66 != v52)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v65 + 1) + 8 * v8);
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v10 = [v9 interactions];
      v11 = [v10 countByEnumeratingWithState:&v61 objects:v71 count:16];
      if (v11)
      {
        v12 = v11;
        v54 = v9;
        v55 = v8;
        v13 = 0;
        v14 = 0;
        v15 = *v62;
        v16 = 0.0;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v62 != v15)
            {
              objc_enumerationMutation(v10);
            }

            v18 = *(*(&v61 + 1) + 8 * i);
            v19 = [v18 mechanism];
            if (v19 <= 0x11)
            {
              if (((1 << v19) & 0x31B01) != 0)
              {
                ++v13;
                v20 = [v18 endDate];
                v21 = [v18 startDate];
                [v20 timeIntervalSinceDate:v21];
                v23 = v22;

                v16 = v16 + v23;
              }

              else if (((1 << v19) & 0x201E) != 0)
              {
                ++v14;
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v61 objects:v71 count:16];
        }

        while (v12);
        v24 = v13 == 0;
        self = v49;
        v9 = v54;
        v8 = v55;
      }

      else
      {
        v14 = 0;
        v16 = 0.0;
        v24 = 1;
      }

      if (self->_excludeTextOnlyConversations)
      {
        if (v14 > 0 && v24)
        {
          goto LABEL_34;
        }

        v25 = [v9 interactionContacts];
        if ([v25 count] > self->_maximumNumberOfContacts)
        {

          goto LABEL_34;
        }

        minimumTotalCallDuration = self->_minimumTotalCallDuration;

        if (v16 >= minimumTotalCallDuration)
        {
LABEL_33:
          [v51 addObject:v9];
        }
      }

      else
      {
        v26 = [v9 interactionContacts];
        v27 = [v26 count];
        maximumNumberOfContacts = self->_maximumNumberOfContacts;

        if (v27 <= maximumNumberOfContacts && (v14 >= self->_minimumTextCount || v16 >= self->_minimumTotalCallDuration))
        {
          goto LABEL_33;
        }
      }

LABEL_34:
      v8 = v8 + 1;
    }

    while (v8 != v53);
    v30 = [obj countByEnumeratingWithState:&v65 objects:v72 count:16];
    v53 = v30;
  }

  while (v30);
LABEL_39:

  v31 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
  v32 = v51;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v33 = [v51 count];
    *buf = 134217984;
    v74 = v33;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Found %lu significant contact events that met minimum requirements", buf, 0xCu);
  }

  if ([v51 count])
  {
    [v51 valueForKeyPath:@"@distinctUnionOfObjects.interactionScoredContact.contact.identifier"];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = v60 = 0u;
    v34 = [v56 countByEnumeratingWithState:&v57 objects:v70 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v58;
      do
      {
        for (j = 0; j != v35; j = j + 1)
        {
          if (*v58 != v36)
          {
            objc_enumerationMutation(v56);
          }

          v38 = [NSPredicate predicateWithFormat:@"interactionScoredContact.contact.identifier = %@", *(*(&v57 + 1) + 8 * j)];
          v39 = [v51 filteredArrayUsingPredicate:v38];
          v40 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
          v69 = v40;
          v41 = [NSArray arrayWithObjects:&v69 count:1];
          v42 = [v39 sortedArrayUsingDescriptors:v41];

          [log addObject:v42];
        }

        v35 = [v56 countByEnumeratingWithState:&v57 objects:v70 count:16];
      }

      while (v35);
    }

    v43 = log;

    v32 = v51;
  }

  else
  {
    v43 = 0;
  }

  v5 = v46;
  v4 = v47;
  v6 = v45;
LABEL_56:

LABEL_57:

  return v43;
}

- (BOOL)configure:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  if (v5)
  {
    v6 = [v4 objectForKey:@"MinimumTextCount"];

    if (v6)
    {
      v7 = [v4 objectForKeyedSubscript:@"MinimumTextCount"];
      self->_minimumTextCount = [v7 intValue];
    }

    else
    {
      v8 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetectorPredicateFilterBySignificantContact configure:];
      }
    }

    v9 = [v4 objectForKey:@"MinimumTotalCallDuration"];

    if (v9)
    {
      v10 = [v4 objectForKeyedSubscript:@"MinimumTotalCallDuration"];
      self->_minimumTotalCallDuration = [v10 intValue];
    }

    else
    {
      v10 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetectorPredicateFilterBySignificantContact configure:];
      }
    }

    v11 = [v4 objectForKey:@"MaximumNumberOfContacts"];

    if (v11)
    {
      v12 = [v4 objectForKeyedSubscript:@"MaximumNumberOfContacts"];
      self->_maximumNumberOfContacts = [v12 intValue];
    }

    else
    {
      v12 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetectorPredicateFilterBySignificantContact configure:];
      }
    }

    v13 = [v4 objectForKey:@"ExcludeTextOnlyConversations"];

    if (v13)
    {
      v14 = [v4 objectForKeyedSubscript:@"ExcludeTextOnlyConversations"];
      self->_excludeTextOnlyConversations = [v14 BOOLValue];
    }

    else
    {
      v14 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetectorPredicateFilterBySignificantContact configure:];
      }
    }
  }

  return v5 != 0;
}

@end