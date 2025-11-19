@interface MOEventPatternDetectorTrendDetectorMannKendall
+ (id)medianOf:(void *)a3;
- (BOOL)configure:(id)a3;
- (MOEventPatternDetectorTrendDetectorMannKendall)init;
- (id)extractTrendEventsFrom:(id)a3 withFeatures:(id)a4;
@end

@implementation MOEventPatternDetectorTrendDetectorMannKendall

- (MOEventPatternDetectorTrendDetectorMannKendall)init
{
  v6.receiver = self;
  v6.super_class = MOEventPatternDetectorTrendDetectorMannKendall;
  v2 = [(MOEventPatternDetectorTrendDetectorMannKendall *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_minimumFeatureNumberForTrend = 0;
    v2->_minimumValueOfFeatureMaximum = 0.0;
    v2->_minimumFeatureSlopeForTrend = 0.0;
    v4 = v2;
  }

  return v3;
}

- (id)extractTrendEventsFrom:(id)a3 withFeatures:(id)a4
{
  v109 = a3;
  v106 = a4;
  v107 = self;
  if (self->_minimumFeatureNumberForTrend)
  {
    v100 = objc_opt_new();
    v6 = [[MOPerformanceMeasurement alloc] initWithName:@"MOEventPatternDetectorTrendDetectorMannKendall" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v6 startSession];
    v111 = 0;
    *&v7 = 134217984;
    v99 = v7;
    v112 = v6;
    while (1)
    {
      if ([v109 count] <= v111)
      {
        [(MOPerformanceMeasurement *)v6 endSession];
        goto LABEL_89;
      }

      context = objc_autoreleasePoolPush();
      v114 = [v109 objectAtIndex:v111];
      v115 = [v106 objectAtIndex:v111];
      v8 = [v115 count];
      v9 = [v115 valueForKeyPath:@"@max.doubleValue"];
      [v9 doubleValue];
      v11 = v10;

      v12 = v8;
      if (v8 >= v107->_minimumFeatureNumberForTrend && v11 >= v107->_minimumValueOfFeatureMaximum)
      {
        break;
      }

LABEL_84:

      objc_autoreleasePoolPop(context);
      ++v111;
    }

    __src = 0;
    v129 = 0;
    v130 = 0;
    v13 = v12 + -1.0;
    if (v12 + -1.0 <= 0.0)
    {
      v15 = 0;
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = (v14 + 1);
        if (v17 < v12)
        {
          v18 = v16;
          do
          {
            v19 = [v115 objectAtIndex:v14];
            [v19 doubleValue];
            v21 = v20;

            v22 = [v115 objectAtIndex:v18];
            [v22 doubleValue];
            v24 = v23;

            v25 = [v114 objectAtIndex:v14];
            v26 = [v114 objectAtIndex:v18];
            v27 = [v26 startDate];
            v28 = [v25 startDate];
            [v27 timeIntervalSinceDate:v28];
            v30 = v29;

            if (v24 - v21 <= 0.0)
            {
              v31 = v15;
            }

            else
            {
              v31 = v15 + 1;
            }

            v32 = v24 - v21 < 0.0;
            v33 = (v24 - v21) / (v30 / 60.0 / 60.0 / 24.0);
            v34 = v129;
            if (v129 >= v130)
            {
              v36 = __src;
              v37 = v129 - __src;
              v38 = (v129 - __src) >> 3;
              v39 = v38 + 1;
              if ((v38 + 1) >> 61)
              {
                std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
              }

              v40 = v130 - __src;
              if ((v130 - __src) >> 2 > v39)
              {
                v39 = v40 >> 2;
              }

              v41 = v40 >= 0x7FFFFFFFFFFFFFF8;
              v42 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v41)
              {
                v42 = v39;
              }

              if (v42)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v42);
              }

              *(8 * v38) = v33;
              v35 = 8 * v38 + 8;
              memcpy(0, v36, v37);
              v43 = __src;
              __src = 0;
              v129 = v35;
              v130 = 0;
              if (v43)
              {
                operator delete(v43);
              }

              v6 = v112;
            }

            else
            {
              *v129 = v33;
              v35 = (v34 + 1);
            }

            v129 = v35;

            v15 = v31 - v32;
            ++v18;
          }

          while (v18 < v12);
        }

        ++v16;
        ++v14;
      }

      while (v13 > v17);
    }

    v105 = [MOEventPatternDetectorTrendDetectorMannKendall medianOf:&__src];
    v44 = v114;
    v104 = [[NSCountedSet alloc] initWithArray:v115];
    if ([v104 count] == v12)
    {
      v45 = (v12 * 2.0 + 5.0) * (v13 * v12);
      if (v15)
      {
LABEL_31:
        v46 = sqrt(v45 / 18.0);
        if (v15 < 1)
        {
          v47 = (v15 + 1);
        }

        else
        {
          v47 = (v15 - 1);
        }

        v54 = v47 / v46;
        goto LABEL_48;
      }
    }

    else
    {
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v48 = v104;
      v49 = [v48 countByEnumeratingWithState:&v124 objects:v135 count:16];
      if (v49)
      {
        v50 = *v125;
        v51 = 0.0;
        do
        {
          for (i = 0; i != v49; i = i + 1)
          {
            if (*v125 != v50)
            {
              objc_enumerationMutation(v48);
            }

            v53 = [v48 countForObject:*(*(&v124 + 1) + 8 * i)];
            if (v53 >= 2)
            {
              v51 = v51 + (v53 + -1.0) * v53 * (v53 * 2.0 + 5.0);
            }
          }

          v49 = [v48 countByEnumeratingWithState:&v124 objects:v135 count:16];
        }

        while (v49);
      }

      else
      {
        v51 = 0.0;
      }

      v45 = -(v51 - v13 * v12 * (v12 * 2.0 + 5.0));
      v44 = v114;
      if (v15)
      {
        goto LABEL_31;
      }
    }

    v54 = 0.0;
LABEL_48:
    v55 = erfc(fabs(v54) * -0.707106781);
    if (v54 != 0.0 && v55 * -0.5 + 1.0 + v55 * -0.5 + 1.0 < 0.025)
    {
      [v105 doubleValue];
      if (fabs(v56) >= v107->_minimumFeatureSlopeForTrend)
      {
        v102 = [v44 objectAtIndex:{objc_msgSend(v44, "count") - 1}];
        v57 = [MOEvent alloc];
        v58 = +[NSUUID UUID];
        v59 = [v102 startDate];
        v60 = [v102 endDate];
        v61 = +[NSDate date];
        v101 = -[MOEvent initWithEventIdentifier:startDate:endDate:creationDate:provider:category:](v57, "initWithEventIdentifier:startDate:endDate:creationDate:provider:category:", v58, v59, v60, v61, 5, [v102 category]);

        v62 = [v102 endDate];
        v63 = [v62 dateByAddingTimeInterval:2419200.0];
        [(MOEvent *)v101 setExpirationDate:v63];

        v113 = objc_opt_new();
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v64 = v114;
        v65 = [v64 countByEnumeratingWithState:&v120 objects:v134 count:16];
        if (v65)
        {
          v66 = *v121;
          do
          {
            for (j = 0; j != v65; j = j + 1)
            {
              if (*v121 != v66)
              {
                objc_enumerationMutation(v64);
              }

              v68 = [*(*(&v120 + 1) + 8 * j) eventIdentifier];
              v69 = [v68 UUIDString];
              [v113 addObject:v69];
            }

            v65 = [v64 countByEnumeratingWithState:&v120 objects:v134 count:16];
          }

          while (v65);
        }

        v103 = objc_opt_new();
        [v103 setObject:&off_10036BE48 forKeyedSubscript:@"kEventPatternType"];
        v70 = [NSNumber numberWithUnsignedInteger:v107->_trendFeatureType];
        [v103 setObject:v70 forKeyedSubscript:@"kEventPatternTrendFeatureType"];

        [v103 setObject:v113 forKeyedSubscript:@"kEventPatternTrendEventIdentifierList"];
        [v105 doubleValue];
        v71 = [NSNumber numberWithDouble:?];
        [v103 setObject:v71 forKeyedSubscript:@"kEventPatternTrendSlope"];

        v72 = [NSNumber numberWithDouble:v12];
        [v103 setObject:v72 forKeyedSubscript:@"kEventPatternTrendNumFeatures"];

        if ([v102 category] == 10)
        {
          v73 = [v102 interactionScoredContact];
          v74 = [v73 contact];
          v75 = [v74 identifier];
          [v103 setObject:v75 forKeyedSubscript:@"kEventPatternInteractionScoredContactIdentifier"];
        }

        if ([v102 category] == 2)
        {
          v76 = [v102 workoutType];
          [v103 setObject:v76 forKeyedSubscript:@"kEventPatternOverallWorkoutType"];
        }

        v110 = objc_opt_new();
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v77 = v64;
        v78 = [v77 countByEnumeratingWithState:&v116 objects:v133 count:16];
        if (v78)
        {
          v79 = *v117;
          do
          {
            for (k = 0; k != v78; k = k + 1)
            {
              if (*v117 != v79)
              {
                objc_enumerationMutation(v77);
              }

              v81 = *(*(&v116 + 1) + 8 * k);
              if ([v81 category] == 2)
              {
                v82 = [v81 startDate];
                if (v82)
                {
                  v83 = [v81 endDate];
                  if (v83)
                  {
                    v84 = [v81 workoutType];
                    if (v84)
                    {
                      v85 = [v81 identifierFromProvider];
                      v86 = v85 == 0;

                      if (v86)
                      {
                        continue;
                      }

                      v82 = objc_opt_new();
                      v87 = [v81 identifierFromProvider];
                      [v82 setObject:v87 forKey:@"kEventResourcePatternWorkoutIdentifierFromProvider"];

                      v88 = [v81 startDate];
                      [v88 timeIntervalSince1970];
                      v89 = [NSNumber numberWithDouble:?];
                      [v82 setObject:v89 forKey:@"kEventResourcePatternWorkoutStartDate"];

                      v90 = [v81 endDate];
                      [v90 timeIntervalSince1970];
                      v91 = [NSNumber numberWithDouble:?];
                      [v82 setObject:v91 forKey:@"kEventResourcePatternWorkoutEndDate"];

                      v92 = [v81 workoutEvent];
                      v93 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v92 isIndoors]);
                      [v82 setObject:v93 forKey:@"kEventResourcePatternWorkoutIsIndoors"];

                      v94 = [v81 workoutType];
                      [v82 setObject:v94 forKey:@"kEventResourcePatternWorkoutType"];

                      [v110 addObject:v82];
                    }

                    else
                    {
                    }
                  }
                }
              }
            }

            v78 = [v77 countByEnumeratingWithState:&v116 objects:v133 count:16];
          }

          while (v78);
        }

        v95 = v103;
        if ([v110 count])
        {
          [v103 setObject:v110 forKeyedSubscript:@"kEventResourcePatternWorkoutInfoDictArray"];
          v96 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
          if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
          {
            v97 = [v110 count];
            *buf = v99;
            v132 = v97;
            _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_INFO, "Mann Kendall identified %lu workouts", buf, 0xCu);
          }

          v95 = v103;
        }

        [(MOEvent *)v101 setPatterns:v95];
        [v100 addObject:v101];
      }
    }

    if (__src)
    {
      v129 = __src;
      operator delete(__src);
    }

    goto LABEL_84;
  }

  v6 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
  if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_ERROR))
  {
    [MOEventPatternDetectorTrendDetectorMannKendall extractTrendEventsFrom:? withFeatures:?];
  }

  v100 = 0;
LABEL_89:

  return v100;
}

+ (id)medianOf:(void *)a3
{
  v5 = *(a3 + 1);
  v6 = *a3;
  v7 = v5 - *a3;
  v8 = v7 >> 3;
  if (v7 >> 3)
  {
    if (v8 == 1)
    {
      v9 = *v6;
    }

    else
    {
      v11 = v8 >> 1;
      v12 = &v6[v8 >> 1];
      if (v12 != v5)
      {
        std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<double *>>(v6, v12, v5, v3);
        v6 = *a3;
        v7 = *(a3 + 1) - *a3;
      }

      v9 = v6[v11];
      if ((v7 & 8) == 0)
      {
        v13 = &v6[v11];
        v14 = v6 + 1;
        if (v8 >= 2 && v14 != v13)
        {
          v16 = *v6;
          v17 = v6 + 1;
          do
          {
            v18 = *v17++;
            v19 = v18;
            if (v16 < v18)
            {
              v16 = v19;
              v6 = v14;
            }

            v14 = v17;
          }

          while (v17 != v13);
        }

        v9 = (v9 + *v6) * 0.5;
      }
    }

    v10 = [NSNumber numberWithDouble:v9];
  }

  else
  {
    v10 = &off_10036E780;
  }

  return v10;
}

- (BOOL)configure:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  if (v5)
  {
    v6 = [v4 objectForKey:@"MinimumFeatureNumberForTrend"];

    if (v6)
    {
      v7 = [v4 objectForKeyedSubscript:@"MinimumFeatureNumberForTrend"];
      self->_minimumFeatureNumberForTrend = [v7 intValue];
    }

    else
    {
      v8 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetectorTrendDetectorMannKendall configure:];
      }
    }

    v9 = [v4 objectForKey:@"MinimumValueOfFeatureMaximum"];

    if (v9)
    {
      v10 = [v4 objectForKeyedSubscript:@"MinimumValueOfFeatureMaximum"];
      [v10 doubleValue];
      self->_minimumValueOfFeatureMaximum = v11;
    }

    else
    {
      v10 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetectorTrendDetectorMannKendall configure:];
      }
    }

    v12 = [v4 objectForKey:@"MinimumFeatureSlopeForTrend"];

    if (v12)
    {
      v13 = [v4 objectForKeyedSubscript:@"MinimumFeatureSlopeForTrend"];
      [v13 doubleValue];
      self->_minimumFeatureSlopeForTrend = v14;
    }

    else
    {
      v13 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetectorTrendDetectorMannKendall configure:];
      }
    }

    v15 = [v4 objectForKey:@"MinimumFeatureSlopeForTrend"];

    if (v15)
    {
      v16 = [v4 objectForKeyedSubscript:@"MinimumFeatureSlopeForTrend"];
      [v16 doubleValue];
      self->_minimumFeatureSlopeForTrend = v17;
    }

    else
    {
      v16 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetectorTrendDetectorMannKendall configure:];
      }
    }

    v18 = [v4 objectForKey:@"TrendFeatureType"];

    if (v18)
    {
      v19 = [v4 objectForKeyedSubscript:@"TrendFeatureType"];
      self->_trendFeatureType = [v19 intValue];
    }

    else
    {
      v19 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [MOEventPatternDetectorTrendDetectorMannKendall configure:];
      }
    }
  }

  return v5 != 0;
}

@end