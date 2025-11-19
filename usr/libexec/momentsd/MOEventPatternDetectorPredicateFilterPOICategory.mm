@interface MOEventPatternDetectorPredicateFilterPOICategory
- (MOEventPatternDetectorPredicateFilterPOICategory)init;
- (id)filterEvents:(id)a3;
@end

@implementation MOEventPatternDetectorPredicateFilterPOICategory

- (MOEventPatternDetectorPredicateFilterPOICategory)init
{
  v7.receiver = self;
  v7.super_class = MOEventPatternDetectorPredicateFilterPOICategory;
  v2 = [(MOEventPatternDetectorPredicateFilterPOICategory *)&v7 init];
  if (v2)
  {
    v3 = +[NSCalendar currentCalendar];
    cal = v2->_cal;
    v2->_cal = v3;

    v5 = v2;
  }

  return v2;
}

- (id)filterEvents:(id)a3
{
  v47 = a3;
  v4 = objc_opt_new();
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v5 = interestingPOIcategories;
  v48 = [v5 countByEnumeratingWithState:&v60 objects:v67 count:16];
  if (!v48)
  {

    goto LABEL_36;
  }

  v52 = 0;
  v45 = v4;
  v46 = *v61;
  v44 = v5;
  do
  {
    for (i = 0; i != v48; i = i + 1)
    {
      if (*v61 != v46)
      {
        objc_enumerationMutation(v5);
      }

      v7 = [NSPredicate predicateWithFormat:@"%K = %lu AND %K = %@", @"category", 1, @"poiCategory", *(*(&v60 + 1) + 8 * i)];
      v8 = [v47 filteredArrayUsingPredicate:v7];
      if ([v8 count])
      {
        v50 = v7;
        v51 = i;
        v49 = [v8 count];
        v53 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
        v66 = v53;
        v9 = [NSArray arrayWithObjects:&v66 count:1];
        v10 = [v8 sortedArrayUsingDescriptors:v9];
        v11 = v8;
        v12 = v10;

        v13 = objc_opt_new();
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        obj = v12;
        v14 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v57;
          v17 = -1;
          v55 = -1;
          do
          {
            for (j = 0; j != v15; j = j + 1)
            {
              if (*v57 != v16)
              {
                objc_enumerationMutation(obj);
              }

              v19 = *(*(&v56 + 1) + 8 * j);
              cal = self->_cal;
              v21 = [v19 startDate];
              v22 = [(NSCalendar *)cal component:0x2000 fromDate:v21];

              v23 = self->_cal;
              v24 = [v19 startDate];
              LODWORD(v23) = [(NSCalendar *)v23 isDateInWeekend:v24];

              if (v23)
              {
                v25 = v17 == v22;
              }

              else
              {
                v25 = 1;
              }

              if (!v25)
              {
                v29 = &off_10036C310;
                v30 = [v13 objectForKey:&off_10036C310];

                v17 = v22;
                if (!v30)
                {
LABEL_22:
                  v31 = objc_opt_new();
                  [v13 setObject:v31 forKeyedSubscript:v29];
                }

LABEL_23:
                v32 = [v13 objectForKeyedSubscript:v29];
                [v32 addObject:v19];

                continue;
              }

              v26 = self->_cal;
              v27 = [v19 startDate];
              LOBYTE(v26) = [(NSCalendar *)v26 isDateInWeekend:v27];

              if ((v26 & 1) == 0 && v55 != v22)
              {
                v29 = &off_10036C328;
                v28 = [v13 objectForKey:&off_10036C328];

                v55 = v22;
                if (!v28)
                {
                  goto LABEL_22;
                }

                goto LABEL_23;
              }
            }

            v15 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
          }

          while (v15);
        }

        v52 += v49;

        v33 = 0;
        v34 = 1;
        v4 = v45;
        do
        {
          v35 = v34;
          v36 = [NSNumber numberWithInt:v33];
          v37 = [v13 objectForKeyedSubscript:v36];

          if (v37)
          {
            v38 = [NSNumber numberWithInt:v33];
            v39 = [v13 objectForKeyedSubscript:v38];

            v64 = v53;
            v40 = [NSArray arrayWithObjects:&v64 count:1];
            v41 = [v39 sortedArrayUsingDescriptors:v40];
            [v45 addObject:v41];
          }

          v34 = 0;
          v33 = 1;
        }

        while ((v35 & 1) != 0);

        v5 = v44;
        v7 = v50;
        i = v51;
        v8 = obj;
      }
    }

    v48 = [v5 countByEnumeratingWithState:&v60 objects:v67 count:16];
  }

  while (v48);

  if (v52)
  {
    v42 = v4;
    goto LABEL_37;
  }

LABEL_36:
  v42 = 0;
LABEL_37:

  return v42;
}

@end