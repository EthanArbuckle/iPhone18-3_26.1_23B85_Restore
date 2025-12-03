@interface MOEventBundleLabelFormatter
- (MOEventBundleLabelFormatter)init;
- (MOEventBundleLabelFormatter)initWithTemplatePath:(id)path;
- (NSDictionary)context;
- (NSDictionary)templates;
- (id)formattedStringsForMetaData:(id)data templateType:(id)type bundleType:(id)bundleType;
- (id)formattedStringsForMetaData:(id)data templates:(id)templates;
- (id)getContextForBundleType:(id)type;
- (id)getTemplateDirectoryURL;
- (id)keywordForTemplateType:(id)type bundleType:(id)bundleType;
- (id)loadDictionaryFromPath:(id)path;
- (id)shuffleStrings:(id)strings shuffleMode:(unint64_t)mode;
- (void)getTemplateDirectoryURL;
- (void)loadLabelTemplates;
- (void)loadLabelTemplatesFromDirectory:(id)directory;
- (void)logDiagnoticsInformation;
@end

@implementation MOEventBundleLabelFormatter

- (MOEventBundleLabelFormatter)init
{
  v8.receiver = self;
  v8.super_class = MOEventBundleLabelFormatter;
  v2 = [(MOEventBundleLabelFormatter *)&v8 init];
  v3 = v2;
  if (v2)
  {
    templatePath = v2->_templatePath;
    v2->_templatePath = 0;

    templates = v3->_templates;
    v3->_templates = 0;

    context = v3->_context;
    v3->_context = 0;
  }

  return v3;
}

- (MOEventBundleLabelFormatter)initWithTemplatePath:(id)path
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = MOEventBundleLabelFormatter;
  v6 = [(MOEventBundleLabelFormatter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_templatePath, path);
    templates = v7->_templates;
    v7->_templates = 0;

    context = v7->_context;
    v7->_context = 0;
  }

  return v7;
}

- (void)loadLabelTemplates
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)getTemplateDirectoryURL
{
  v2 = +[MOEventBundleLabelLocalizer _MomentsBundle];
  bundlePath = [v2 bundlePath];
  if (bundlePath)
  {
    v4 = [NSURL fileURLWithPath:bundlePath isDirectory:1];
    v5 = [v4 URLByAppendingPathComponent:@"LabelTemplates"];
  }

  else
  {
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleLabelFormatter getTemplateDirectoryURL];
    }

    v5 = 0;
  }

  return v5;
}

- (NSDictionary)templates
{
  templates = self->_templates;
  if (!templates)
  {
    templatePath = self->_templatePath;
    if (!templatePath)
    {
      getTemplateDirectoryURL = [(MOEventBundleLabelFormatter *)self getTemplateDirectoryURL];
      path = [getTemplateDirectoryURL path];
      v7 = self->_templatePath;
      self->_templatePath = path;

      templatePath = self->_templatePath;
    }

    [(MOEventBundleLabelFormatter *)self loadLabelTemplatesFromDirectory:templatePath];
    templates = self->_templates;
  }

  return templates;
}

- (NSDictionary)context
{
  context = self->_context;
  if (!context)
  {
    templatePath = self->_templatePath;
    if (!templatePath)
    {
      getTemplateDirectoryURL = [(MOEventBundleLabelFormatter *)self getTemplateDirectoryURL];
      path = [getTemplateDirectoryURL path];
      v7 = self->_templatePath;
      self->_templatePath = path;

      templatePath = self->_templatePath;
    }

    [(MOEventBundleLabelFormatter *)self loadLabelTemplatesFromDirectory:templatePath];
    context = self->_context;
  }

  return context;
}

- (void)loadLabelTemplatesFromDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [MOEventBundleLabelFormatter loadLabelTemplatesFromDirectory:];
  }

  +[NSFileManager defaultManager];
  v66 = v116 = 0;
  v5 = [v66 contentsOfDirectoryAtPath:directoryCopy error:&v116];
  v6 = v116;
  v7 = [NSPredicate predicateWithFormat:@"self ENDSWITH '.json'"];
  v65 = v5;
  v8 = [v5 filteredArrayUsingPredicate:v7];

  v64 = v8;
  if (v8 && [v8 count])
  {
    v63 = v6;
    v75 = objc_opt_new();
    v79 = objc_opt_new();
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    obj = v8;
    v67 = directoryCopy;
    v70 = [obj countByEnumeratingWithState:&v112 objects:v126 count:16];
    if (v70)
    {
      v69 = *v113;
      do
      {
        v9 = 0;
        do
        {
          if (*v113 != v69)
          {
            objc_enumerationMutation(obj);
          }

          v72 = v9;
          v10 = *(*(&v112 + 1) + 8 * v9);
          v71 = objc_autoreleasePoolPush();
          v11 = [directoryCopy stringByAppendingPathComponent:v10];
          v12 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v119 = v11;
            _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Template file, %@", buf, 0xCu);
          }

          v13 = [(MOEventBundleLabelFormatter *)self loadDictionaryFromPath:v11];
          v84 = v11;
          v73 = v13;
          if (v13 && [v13 count])
          {
            v14 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v119 = v11;
              v120 = 2112;
              v121 = v73;
              _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Template file, %@, dict, %@", buf, 0x16u);
            }

            v15 = [v73 objectForKeyedSubscript:@"cases"];
            v108 = 0u;
            v109 = 0u;
            v110 = 0u;
            v111 = 0u;
            v74 = v15;
            v78 = [v74 countByEnumeratingWithState:&v108 objects:v125 count:16];
            if (v78)
            {
              v89 = 0;
              v90 = 0;
              v76 = *v109;
              do
              {
                v16 = 0;
                do
                {
                  if (*v109 != v76)
                  {
                    objc_enumerationMutation(v74);
                  }

                  v82 = v16;
                  v17 = *(*(&v108 + 1) + 8 * v16);
                  v81 = objc_autoreleasePoolPush();
                  v18 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412546;
                    v119 = v84;
                    v120 = 2112;
                    v121 = v17;
                    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Template file, %@, subdict, %@", buf, 0x16u);
                  }

                  v19 = [v17 objectForKeyedSubscript:@"bundleType"];
                  v83 = [(MOEventBundleLabelFormatter *)self keywordForTemplateType:@"labels" bundleType:v19];
                  v85 = [(MOEventBundleLabelFormatter *)self keywordForTemplateType:@"prompts" bundleType:v19];
                  v87 = objc_opt_new();
                  v86 = objc_opt_new();
                  v20 = [v17 objectForKeyedSubscript:@"context"];
                  if (v20)
                  {
                    v21 = [(NSDictionary *)v79 objectForKey:v19];
                    if (v21)
                    {
                      v22 = [v20 mutableCopy];
                      [v22 addEntriesFromDictionary:v21];

                      v20 = v22;
                    }

                    [(NSDictionary *)v79 setObject:v20 forKey:v19, v63, v64];
                  }

                  v91 = v20;
                  v80 = v19;
                  v23 = [v17 objectForKeyedSubscript:{@"templates", v63}];
                  v104 = 0u;
                  v105 = 0u;
                  v106 = 0u;
                  v107 = 0u;
                  v88 = v23;
                  v93 = [v88 countByEnumeratingWithState:&v104 objects:v124 count:16];
                  if (v93)
                  {
                    v92 = *v105;
                    do
                    {
                      for (i = 0; i != v93; i = i + 1)
                      {
                        if (*v105 != v92)
                        {
                          objc_enumerationMutation(v88);
                        }

                        v25 = *(*(&v104 + 1) + 8 * i);
                        context = objc_autoreleasePoolPush();
                        v26 = [v25 objectForKeyedSubscript:@"conditions"];
                        v27 = [v25 objectForKeyedSubscript:@"extends"];
                        v28 = [v25 objectForKeyedSubscript:@"capitalizations"];
                        v29 = [v25 objectForKeyedSubscript:@"labels"];
                        v30 = [v25 objectForKeyedSubscript:@"prompts"];
                        v31 = v30;
                        if (v29)
                        {
                          v32 = [v29 arrayByAddingObjectsFromArray:v30];
                        }

                        else
                        {
                          v32 = v30;
                        }

                        v95 = v32;
                        v33 = [MOEventBundleLabelTemplate conditionsFromLabels:v32];
                        v99 = v26;
                        v34 = [MOEventBundleLabelTemplate conditionsFromConditionStrings:v26];
                        v97 = v27;
                        v35 = [MOEventBundleLabelTemplate conditionsFromExtendStrings:v27];
                        v96 = v28;
                        v36 = [MOEventBundleLabelTemplate conditionsFromCapitalizations:v28];
                        v94 = v33;
                        v37 = [v34 setByAddingObjectsFromSet:v33];
                        if ([v35 count])
                        {
                          v38 = [v37 setByAddingObjectsFromSet:v35];

                          v37 = v38;
                        }

                        if ([v36 count])
                        {
                          v39 = [v37 setByAddingObjectsFromSet:v36];

                          v37 = v39;
                        }

                        v40 = [MOEventBundleLabelTemplate formatsFromLabels:v29];
                        v41 = [MOEventBundleLabelTemplate formatsFromLabels:v31];
                        if (v29 && [v29 count])
                        {
                          v42 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
                          {
                            *buf = 138412802;
                            v119 = v29;
                            v120 = 2112;
                            v121 = v99;
                            v122 = 2112;
                            v123 = v37;
                            _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "template parsing, labels, %@, conditionStrings, %@, conditions, %@", buf, 0x20u);
                          }

                          v43 = [[MOEventBundleLabelTemplate alloc] initWithConditions:v37 formats:v40 context:v91];
                          [v87 addObject:v43];
                          ++v89;
                        }

                        if (v31 && [v31 count])
                        {
                          v44 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
                          {
                            *buf = 138412802;
                            v119 = v29;
                            v120 = 2112;
                            v121 = v99;
                            v122 = 2112;
                            v123 = v37;
                            _os_log_debug_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "template parsing, prompts, %@, conditionStrings, %@, conditions, %@", buf, 0x20u);
                          }

                          v45 = [[MOEventBundleLabelTemplate alloc] initWithConditions:v37 formats:v41 context:v91];
                          [v86 addObject:v45];
                          ++v90;
                        }

                        objc_autoreleasePoolPop(context);
                      }

                      v93 = [v88 countByEnumeratingWithState:&v104 objects:v124 count:16];
                    }

                    while (v93);
                  }

                  v46 = [(NSDictionary *)v75 objectForKey:v83];
                  [v87 addObjectsFromArray:v46];
                  [(NSDictionary *)v75 setObject:v87 forKey:v83];
                  v47 = [(NSDictionary *)v75 objectForKey:v85];
                  [v86 addObjectsFromArray:v47];
                  [(NSDictionary *)v75 setObject:v86 forKey:v85];
                  v48 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
                  {
                    v57 = [v87 count];
                    *buf = 138412802;
                    v119 = v84;
                    v120 = 2112;
                    v121 = v83;
                    v122 = 2048;
                    v123 = v57;
                    _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "Template file, %@, key, %@, templates.count, %lu", buf, 0x20u);
                  }

                  v49 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                  {
                    v58 = [v86 count];
                    *buf = 138412802;
                    v119 = v84;
                    v120 = 2112;
                    v121 = v85;
                    v122 = 2048;
                    v123 = v58;
                    _os_log_debug_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "Template file, %@, key, %@, templates.count, %lu", buf, 0x20u);
                  }

                  v102 = 0u;
                  v103 = 0u;
                  v100 = 0u;
                  v101 = 0u;
                  v50 = v86;
                  v51 = [v50 countByEnumeratingWithState:&v100 objects:v117 count:16];
                  if (v51)
                  {
                    v52 = v51;
                    v53 = *v101;
                    do
                    {
                      for (j = 0; j != v52; j = j + 1)
                      {
                        if (*v101 != v53)
                        {
                          objc_enumerationMutation(v50);
                        }

                        v55 = *(*(&v100 + 1) + 8 * j);
                        v56 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 138412802;
                          v119 = v84;
                          v120 = 2112;
                          v121 = v85;
                          v122 = 2112;
                          v123 = v55;
                          _os_log_debug_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "Template file, %@, key, %@, flattened template, %@", buf, 0x20u);
                        }
                      }

                      v52 = [v50 countByEnumeratingWithState:&v100 objects:v117 count:16];
                    }

                    while (v52);
                  }

                  objc_autoreleasePoolPop(v81);
                  v16 = v82 + 1;
                }

                while ((v82 + 1) != v78);
                v78 = [v74 countByEnumeratingWithState:&v108 objects:v125 count:16];
              }

              while (v78);
            }

            else
            {
              v89 = 0;
              v90 = 0;
            }

            directoryCopy = v67;
          }

          else
          {
            v89 = 0;
            v90 = 0;
          }

          v59 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v119 = v84;
            v120 = 2048;
            v121 = v89;
            v122 = 2048;
            v123 = v90;
            _os_log_debug_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEBUG, "Template file, %@, label.count, %lu, prompts.count, %lu", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v71);
          v9 = v72 + 1;
        }

        while ((v72 + 1) != v70);
        v70 = [obj countByEnumeratingWithState:&v112 objects:v126 count:16];
      }

      while (v70);
    }

    templates = self->_templates;
    self->_templates = v75;
    v61 = v75;

    directoryCopy = v67;
    v62 = self->_context;
    self->_context = v79;

    v6 = v63;
  }

  else
  {
    v61 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleLabelFormatter loadLabelTemplatesFromDirectory:];
    }
  }
}

- (id)loadDictionaryFromPath:(id)path
{
  pathCopy = path;
  v14 = 0;
  v4 = [NSData dataWithContentsOfFile:pathCopy options:0 error:&v14];
  v5 = v14;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6)
  {
    v9 = v5;
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleLabelFormatter loadDictionaryFromPath:];
    }

    goto LABEL_13;
  }

  v13 = 0;
  v8 = [NSJSONSerialization JSONObjectWithData:v4 options:0 error:&v13];
  v9 = v13;
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  v7 = v10;
  if (!v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleLabelFormatter loadDictionaryFromPath:];
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "The json file was successfully read.", v12, 2u);
  }

LABEL_14:

  return v8;
}

- (id)getContextForBundleType:(id)type
{
  typeCopy = type;
  context = [(MOEventBundleLabelFormatter *)self context];

  v6 = 0;
  if (typeCopy && context)
  {
    context2 = [(MOEventBundleLabelFormatter *)self context];
    v6 = [context2 objectForKey:typeCopy];
  }

  return v6;
}

- (id)formattedStringsForMetaData:(id)data templates:(id)templates
{
  dataCopy = data;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  templatesCopy = templates;
  v8 = [templatesCopy countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    selfCopy = self;
    v10 = *v22;
    v11 = &__NSArray0__struct;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(templatesCopy);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v26 = v13;
          _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "template, %@", buf, 0xCu);
        }

        if ([v13 checkConditionForMetaData:dataCopy])
        {
          v16 = [v13 formattedStringsForMetaData:dataCopy];
          if ([v16 count])
          {
            v17 = [dataCopy objectForKey:@"shuffle_mode"];
            intValue = [v17 intValue];

            v11 = [(MOEventBundleLabelFormatter *)selfCopy shuffleStrings:v16 shuffleMode:intValue];

            objc_autoreleasePoolPop(v14);
            goto LABEL_16;
          }
        }

        objc_autoreleasePoolPop(v14);
      }

      v9 = [templatesCopy countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = &__NSArray0__struct;
  }

LABEL_16:

  return v11;
}

- (id)shuffleStrings:(id)strings shuffleMode:(unint64_t)mode
{
  stringsCopy = strings;
  v6 = stringsCopy;
  if (stringsCopy && [stringsCopy count])
  {
    if (mode == 1)
    {
      v7 = +[NSDate now];
      [v7 timeIntervalSinceReferenceDate];
      v9 = (v8 / 86400.0);
      v10 = v9 % [v6 count];
      v11 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v16 = 134218754;
        v17 = [v6 count];
        v18 = 2048;
        v19 = v9;
        v20 = 2048;
        v21 = v10;
        v22 = 2112;
        v23 = v7;
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Shuffle Labels: count, %lu, seed, %lu, start_index, %lu, nowDate, %@", &v16, 0x2Au);
      }

      if (v10)
      {
        v12 = objc_opt_new();
        v13 = [v6 subarrayWithRange:{v10, objc_msgSend(v6, "count") - v10}];
        [v12 addObjectsFromArray:v13];

        v14 = [v6 subarrayWithRange:{0, v10}];
        [v12 addObjectsFromArray:v14];
      }

      else
      {
        v12 = v6;
      }
    }

    else
    {
      v12 = v6;
    }
  }

  else
  {
    v12 = &__NSArray0__struct;
  }

  return v12;
}

- (id)formattedStringsForMetaData:(id)data templateType:(id)type bundleType:(id)bundleType
{
  dataCopy = data;
  typeCopy = type;
  v10 = [(MOEventBundleLabelFormatter *)self keywordForTemplateType:typeCopy bundleType:bundleType];
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [MOEventBundleLabelFormatter formattedStringsForMetaData:templateType:bundleType:];
  }

  templates = [(MOEventBundleLabelFormatter *)self templates];
  v13 = [templates objectForKey:v10];

  if (v13 && [v13 count])
  {
    v14 = [(MOEventBundleLabelFormatter *)self formattedStringsForMetaData:dataCopy templates:v13];
  }

  else
  {
    if ([typeCopy isEqualToString:@"prompts"])
    {
      v15 = @"default_prompt";
    }

    else
    {
      v15 = @"default_label";
    }

    v16 = [dataCopy objectForKey:v15];
    v17 = v16;
    if (v16)
    {
      v29 = v16;
      v14 = [NSArray arrayWithObjects:&v29 count:1];
    }

    else
    {
      v18 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        allKeys = [dataCopy allKeys];
        templates2 = [(MOEventBundleLabelFormatter *)self templates];
        allKeys2 = [templates2 allKeys];
        v23 = 138412802;
        v24 = v10;
        v25 = 2112;
        v26 = allKeys;
        v27 = 2112;
        v28 = allKeys2;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "The label template is not found for the keyword, %@, meta, %@, all keywords, %@", &v23, 0x20u);
      }

      v14 = 0;
    }
  }

  return v14;
}

- (id)keywordForTemplateType:(id)type bundleType:(id)bundleType
{
  bundleType = [NSString stringWithFormat:@"%@_%@", type, bundleType];
  lowercaseString = [bundleType lowercaseString];

  return lowercaseString;
}

- (void)logDiagnoticsInformation
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getTemplateDirectoryURL
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)loadLabelTemplatesFromDirectory:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)loadDictionaryFromPath:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_4();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Couldn't parse JSON to dictionary. %@, error, %@", v2, 0x16u);
}

- (void)loadDictionaryFromPath:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end