@interface MOEventBundleLabelTemplate
+ (id)conditionsFromCapitalizations:(id)a3;
+ (id)conditionsFromConditionStrings:(id)a3;
+ (id)conditionsFromExtendStrings:(id)a3;
+ (id)conditionsFromLabels:(id)a3;
+ (id)formatsFromLabels:(id)a3;
+ (unint64_t)capitalizationTypeFromString:(id)a3;
- (BOOL)checkConditionForMetaData:(id)a3;
- (BOOL)needCapitalizationForKeyword:(id)a3;
- (BOOL)needExtensionForKeyword:(id)a3;
- (MOEventBundleLabelTemplate)initWithConditionStrings:(id)a3 labels:(id)a4 context:(id)a5;
- (MOEventBundleLabelTemplate)initWithConditions:(id)a3 formats:(id)a4 context:(id)a5;
- (MOEventBundleLabelTemplate)initWithConditions:(id)a3 labels:(id)a4 context:(id)a5;
- (id)description;
- (id)formattedStringsForMetaData:(id)a3;
@end

@implementation MOEventBundleLabelTemplate

- (MOEventBundleLabelTemplate)initWithConditionStrings:(id)a3 labels:(id)a4 context:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10)
  {
    v12 = [MOEventBundleLabelTemplate conditionsFromLabels:v10];
    v13 = [MOEventBundleLabelTemplate conditionsFromConditionStrings:v9];
    v14 = [v13 setByAddingObjectsFromSet:v12];
    self = [(MOEventBundleLabelTemplate *)self initWithConditions:v14 labels:v10 context:v11];

    v15 = self;
  }

  else
  {
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(MOEventBundleLabelTemplate *)v16 initWithConditionStrings:v17 labels:v18 context:v19, v20, v21, v22, v23];
    }

    v24 = +[NSAssertionHandler currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"MOEventBundleLabelTemplate.m" lineNumber:46 description:@"Invalid parameter not satisfying: labels"];

    v15 = 0;
  }

  return v15;
}

- (MOEventBundleLabelTemplate)initWithConditions:(id)a3 labels:(id)a4 context:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10)
  {
    v29 = v9;
    v12 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      do
      {
        v17 = 0;
        do
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [[MOEventBundleLabelFormat alloc] initWithFormat:*(*(&v30 + 1) + 8 * v17)];
          [v12 addObject:v18];

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v15);
    }

    v9 = v29;
    self = [(MOEventBundleLabelTemplate *)self initWithConditions:v29 formats:v12 context:v11];
    v19 = self;
  }

  else
  {
    v20 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(MOEventBundleLabelTemplate *)v20 initWithConditionStrings:v21 labels:v22 context:v23, v24, v25, v26, v27];
    }

    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MOEventBundleLabelTemplate.m" lineNumber:57 description:@"Invalid parameter not satisfying: labels"];
    v19 = 0;
  }

  return v19;
}

- (MOEventBundleLabelTemplate)initWithConditions:(id)a3 formats:(id)a4 context:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v11)
  {
    v26.receiver = self;
    v26.super_class = MOEventBundleLabelTemplate;
    v13 = [(MOEventBundleLabelTemplate *)&v26 init];
    p_isa = &v13->super.isa;
    if (v13)
    {
      objc_storeStrong(&v13->_conditions, a3);
      objc_storeStrong(p_isa + 2, a4);
      objc_storeStrong(p_isa + 3, a5);
    }

    self = p_isa;
    v15 = self;
  }

  else
  {
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(MOEventBundleLabelTemplate *)v16 initWithConditions:v17 formats:v18 context:v19, v20, v21, v22, v23];
    }

    v24 = +[NSAssertionHandler currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"MOEventBundleLabelTemplate.m" lineNumber:68 description:@"Invalid parameter not satisfying: formats"];

    v15 = 0;
  }

  return v15;
}

+ (id)conditionsFromLabels:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v31 = 0;
  v21 = [NSRegularExpression regularExpressionWithPattern:@"\\{([0-9a-zA-Z\\-\\_]+)\\}" options:1 error:&v31];
  v18 = v31;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v3;
  v22 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v22)
  {
    v20 = *v28;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v27 + 1) + 8 * i);
        v7 = [v21 matchesInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}];
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v23 objects:v32 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v24;
          do
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v24 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v23 + 1) + 8 * j);
              if ([v12 numberOfRanges])
              {
                v13 = objc_opt_new();
                v14 = [v12 rangeAtIndex:1];
                v16 = [v6 substringWithRange:{v14, v15}];
                [v13 setKeyword:v16];

                [v4 addObject:v13];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v23 objects:v32 count:16];
          }

          while (v9);
        }
      }

      v22 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v22);
  }

  return v4;
}

+ (id)formatsFromLabels:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v15 + 1) + 8 * i) componentsSeparatedByString:@"|"];
        v10 = [v9 objectAtIndex:0];
        v11 = 0;
        if ([v9 count] >= 2)
        {
          v11 = [v9 objectAtIndex:1];
        }

        v12 = [[MOEventBundleLabelFormat alloc] initWithFormat:v10 capitalizationType:[MOEventBundleLabelTemplate capitalizationTypeFromString:v11]];
        [v4 addObject:v12];
      }

      v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)conditionsFromConditionStrings:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v52 = 0;
  v38 = [NSRegularExpression regularExpressionWithPattern:@"(!)?([0-9a-zA-Z\\-\\_]+)(\\s?(=|==|>|<|>=|<=|!=)\\s?([-+]?[0-9]*\\.?[0-9]+|[0-9a-zA-Z\\-\\_]+)(:(f|d|s))?)?" options:1 error:&v52];
  v35 = v52;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v3;
  v39 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v39)
  {
    v37 = *v49;
    p_vtable = MOTimeAtHomeAnomalyManager.vtable;
    do
    {
      v6 = 0;
      do
      {
        if (*v49 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v40 = v6;
        v7 = *(*(&v48 + 1) + 8 * v6);
        v8 = [v38 matchesInString:v7 options:0 range:{0, objc_msgSend(v7, "length")}];
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v42 = [v8 countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (v42)
        {
          v9 = *v45;
          v41 = *v45;
          do
          {
            for (i = 0; i != v42; i = i + 1)
            {
              if (*v45 != v9)
              {
                objc_enumerationMutation(v8);
              }

              v11 = *(*(&v44 + 1) + 8 * i);
              if ([v11 numberOfRanges])
              {
                v12 = [v11 rangeAtIndex:2];
                v43 = [v7 substringWithRange:{v12, v13}];
                v14 = [objc_alloc((p_vtable + 197)) initWithKeyword:v43];
                v15 = [v11 rangeAtIndex:1];
                if (v16)
                {
                  v17 = [v7 substringWithRange:{v15, v16}];
                  v18 = [p_vtable + 197 templateOperatorFromString:v17];

                  if (v18)
                  {
                    [v14 setTemplateOperator:v18];
                  }
                }

                if ([v14 templateOperator] != 8)
                {
                  v19 = [v11 rangeAtIndex:4];
                  if (v20)
                  {
                    v21 = p_vtable + 197;
                    [v7 substringWithRange:{v19, v20}];
                    v22 = v7;
                    v23 = v8;
                    v24 = p_vtable;
                    v26 = v25 = v4;
                    v27 = [v21 templateOperatorFromString:v26];

                    v4 = v25;
                    p_vtable = v24;
                    v8 = v23;
                    v7 = v22;
                    v9 = v41;
                    if (v27)
                    {
                      [v14 setTemplateOperator:v27];
                      v28 = [v11 rangeAtIndex:5];
                      if (v29)
                      {
                        v30 = [v7 substringWithRange:{v28, v29}];
                        [v14 setValue:v30];
                      }

                      else
                      {
                        [v14 setTemplateOperator:0];
                      }

                      v31 = [v11 rangeAtIndex:7];
                      if (v32)
                      {
                        v33 = [v7 substringWithRange:{v31, v32}];
                        [v14 setValueType:{objc_msgSend(p_vtable + 197, "valueTypeFromString:", v33)}];
                      }
                    }
                  }

                  else
                  {
                    [v14 setTemplateOperator:7];
                  }
                }

                [v4 addObject:v14];
              }
            }

            v42 = [v8 countByEnumeratingWithState:&v44 objects:v53 count:16];
          }

          while (v42);
        }

        v6 = v40 + 1;
      }

      while ((v40 + 1) != v39);
      v39 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v39);
  }

  return v4;
}

+ (id)conditionsFromExtendStrings:(id)a3
{
  v3 = a3;
  v47 = objc_opt_new();
  v63 = 0;
  v40 = [NSRegularExpression regularExpressionWithPattern:@"([0-9a-zA-Z\\-\\_]+)\\s?(:)\\s?([0-9a-zA-Z\\-\\_\\ options:\\s]+)" error:1, &v63];
  v37 = v63;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v3;
  v41 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v41)
  {
    v39 = *v60;
    p_vtable = MOTimeAtHomeAnomalyManager.vtable;
    do
    {
      v5 = 0;
      do
      {
        if (*v60 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v42 = v5;
        v6 = *(*(&v59 + 1) + 8 * v5);
        v7 = [v40 matchesInString:v6 options:0 range:{0, objc_msgSend(v6, "length", v37)}];
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v48 = v7;
        v50 = [v7 countByEnumeratingWithState:&v55 objects:v65 count:16];
        if (v50)
        {
          v49 = *v56;
          v43 = v6;
          do
          {
            for (i = 0; i != v50; i = i + 1)
            {
              if (*v56 != v49)
              {
                objc_enumerationMutation(v48);
              }

              v9 = *(*(&v55 + 1) + 8 * i);
              if ([v9 numberOfRanges])
              {
                v10 = [v9 rangeAtIndex:1];
                v12 = [v6 substringWithRange:{v10, v11}];
                v13 = [objc_alloc((p_vtable + 197)) initWithKeyword:v12];
                v14 = [v9 rangeAtIndex:2];
                if (v15)
                {
                  [v6 substringWithRange:{v14, v15}];
                  v17 = v16 = v12;
                  v18 = [p_vtable + 197 templateOperatorFromString:v17];

                  v12 = v16;
                  if (v18)
                  {
                    [v13 setTemplateOperator:v18];
                  }
                }

                v19 = [v9 rangeAtIndex:3];
                if (v20)
                {
                  v21 = [v6 substringWithRange:{v19, v20}];
                  if ([v21 length])
                  {
                    v22 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
                    v23 = [v21 stringByTrimmingCharactersInSet:v22];

                    if ([v23 isEqualToString:@"_ANY_"])
                    {
                      [v13 setValue:@"_ANY_"];
                    }

                    else
                    {
                      v44 = v23;
                      v46 = v12;
                      v24 = objc_opt_new();
                      v51 = 0u;
                      v52 = 0u;
                      v53 = 0u;
                      v54 = 0u;
                      v45 = v21;
                      v25 = [v21 componentsSeparatedByString:{@", "}];
                      v26 = [v25 countByEnumeratingWithState:&v51 objects:v64 count:16];
                      if (v26)
                      {
                        v27 = v26;
                        v28 = *v52;
                        do
                        {
                          for (j = 0; j != v27; j = j + 1)
                          {
                            if (*v52 != v28)
                            {
                              objc_enumerationMutation(v25);
                            }

                            v30 = *(*(&v51 + 1) + 8 * j);
                            v31 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
                            v32 = [v30 stringByTrimmingCharactersInSet:v31];

                            [v24 addObject:v32];
                          }

                          v27 = [v25 countByEnumeratingWithState:&v51 objects:v64 count:16];
                        }

                        while (v27);
                      }

                      if ([v24 count])
                      {
                        v33 = [v24 copy];
                        [v13 setValues:v33];
                      }

                      p_vtable = (MOTimeAtHomeAnomalyManager + 24);
                      v6 = v43;
                      v23 = v44;
                      v21 = v45;
                      v12 = v46;
                    }
                  }
                }

                if ([v13 templateOperator])
                {
                  v34 = [v13 values];
                  if ([v34 count])
                  {

                    goto LABEL_35;
                  }

                  v35 = [v13 value];

                  if (v35)
                  {
LABEL_35:
                    [v47 addObject:v13];
                  }
                }

                continue;
              }
            }

            v50 = [v48 countByEnumeratingWithState:&v55 objects:v65 count:16];
          }

          while (v50);
        }

        v5 = v42 + 1;
      }

      while ((v42 + 1) != v41);
      v41 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
    }

    while (v41);
  }

  return v47;
}

+ (id)conditionsFromCapitalizations:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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
        v11 = [MOEventBundleLabelCondition alloc];
        v12 = [(MOEventBundleLabelCondition *)v11 initWithKeyword:v10, v14];
        [(MOEventBundleLabelCondition *)v12 setTemplateOperator:7];
        [(MOEventBundleLabelCondition *)v12 setCapitalized:1];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (unint64_t)capitalizationTypeFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 lowercaseString];
    v6 = [@"nop" isEqualToString:v5];

    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v8 = [v4 lowercaseString];
      v9 = [@"titlecap" isEqualToString:v8];

      if (v9)
      {
        v7 = 2;
      }

      else
      {
        v10 = [v4 lowercaseString];
        v11 = [@"cap" isEqualToString:v10];

        if (v11)
        {
          v7 = 3;
        }

        else
        {
          v12 = [v4 lowercaseString];
          v13 = [@"fpo" isEqualToString:v12];

          if (v13)
          {
            v7 = 3;
          }

          else
          {
            v7 = 1;
          }
        }
      }
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)checkConditionForMetaData:(id)a3
{
  v4 = a3;
  v5 = [(MOEventBundleLabelTemplate *)self conditions];
  v6 = [v5 count];

  if (v6)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [(MOEventBundleLabelTemplate *)self conditions];
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v19 = self;
      v10 = *v21;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = [v12 yieldConditionForMetaData:v4];
          v14 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v15 = [v12 keyword];
            *buf = 138412802;
            v25 = v15;
            v26 = 2112;
            v27 = v12;
            v28 = 1024;
            v29 = v13;
            _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "template yieldConditionForMetaData, keyword, %@, condition, %@, output, %d", buf, 0x1Cu);
          }

          if (!v13)
          {
            v16 = 0;
            goto LABEL_14;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v30 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      v16 = 1;
LABEL_14:
      self = v19;
    }

    else
    {
      v16 = 1;
    }

    v17 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [(MOEventBundleLabelTemplate *)v16 checkConditionForMetaData:v17];
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (BOOL)needExtensionForKeyword:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(MOEventBundleLabelTemplate *)self conditions];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 templateOperator] == 9)
        {
          v10 = [v9 keyword];
          v11 = [v10 isEqualToString:v4];

          if (v11)
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

- (BOOL)needCapitalizationForKeyword:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(MOEventBundleLabelTemplate *)self conditions];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 keyword];
          if ([v11 isEqualToString:v5])
          {
            v12 = [v10 capitalized];

            if (v12)
            {
              LOBYTE(v7) = 1;
              goto LABEL_16;
            }
          }

          else
          {
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

LABEL_16:
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)formattedStringsForMetaData:(id)a3
{
  v4 = a3;
  v96 = 0;
  v74 = [NSRegularExpression regularExpressionWithPattern:@"\\{([0-9a-zA-Z\\-\\_]+)\\}" options:1 error:&v96];
  v70 = v96;
  v71 = objc_opt_new();
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = [(MOEventBundleLabelTemplate *)self formats];
  v75 = [obj countByEnumeratingWithState:&v92 objects:v110 count:16];
  if (v75)
  {
    v73 = *v93;
    p_vtable = MOTimeAtHomeAnomalyManager.vtable;
    v77 = v4;
    v81 = self;
    do
    {
      v6 = 0;
      do
      {
        if (*v93 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v92 + 1) + 8 * v6);
        v8 = [v7 format];
        v84 = [v8 copy];
        v9 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v98 = v8;
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "template, %@", buf, 0xCu);
        }

        v80 = objc_opt_new();
        v86 = v7;
        v10 = [v7 format];
        v11 = [v74 matchesInString:v10 options:0 range:{0, objc_msgSend(v8, "length")}];

        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v12 = v11;
        v83 = [v12 countByEnumeratingWithState:&v88 objects:v109 count:16];
        if (!v83)
        {

LABEL_73:
          v50 = [p_vtable + 497 _Moments_LocalizedStringWithFormat:v8 arguments:v80];
          v51 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            v57 = [v80 count];
            v58 = [v84 mask];
            v59 = [v50 mask];
            *buf = 138413058;
            v98 = v8;
            v99 = 2048;
            v100 = v57;
            v101 = 2112;
            v102 = v58;
            v103 = 2112;
            v104 = v59;
            _os_log_debug_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "template, %@, args, %lu, outputString, %@, localizedString, %@, formatting completed", buf, 0x2Au);

            v4 = v77;
          }

          if (v50)
          {
            if ([v86 capitalizationType] == 1 || objc_msgSend(v86, "capitalizationType") == 2)
            {
              v52 = [p_vtable + 497 _Moments_CapitalizedStringForKey:v50];
              goto LABEL_79;
            }

            if ([v86 capitalizationType] != 3)
            {
              goto LABEL_80;
            }

            v52 = [p_vtable + 497 _Moments_AllCapitalizedStringForKey:v50];
LABEL_79:
            v53 = v52;

            v50 = v53;
            if (!v53)
            {
              v55 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                v63 = [v80 count];
                v64 = [v84 mask];
                v65 = [0 mask];
                v66 = [v86 capitalizationType];
                *buf = 138413314;
                v98 = v8;
                v99 = 2048;
                v100 = v63;
                v101 = 2112;
                v102 = v64;
                v103 = 2112;
                v104 = v65;
                v105 = 2048;
                v106 = v66;
                _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "template, %@, args, %lu, outputString, %@, localizedString, %@, capitalization failure, %lu", buf, 0x34u);
              }

              v50 = 0;
              v4 = v77;
LABEL_92:
            }

            else
            {
LABEL_80:
              v54 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
              {
                v60 = [v80 count];
                v61 = [v84 mask];
                v62 = [v50 mask];
                *buf = 138413058;
                v98 = v8;
                v99 = 2048;
                v100 = v60;
                v101 = 2112;
                v102 = v61;
                v103 = 2112;
                v104 = v62;
                _os_log_debug_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "template, %@, args, %lu, outputString, %@, localizedString, %@, localization completed", buf, 0x2Au);
              }

              [v71 addObject:v50];
              if ([v50 containsString:@"{"])
              {
                v55 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                v4 = v77;
                if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v98 = v50;
                  _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "The string contains a symbol. %@", buf, 0xCu);
                }

                goto LABEL_92;
              }

              v4 = v77;
            }
          }

          goto LABEL_94;
        }

        v79 = v12;
        v76 = v6;
        v82 = *v89;
        v78 = 1;
        while (2)
        {
          v13 = 0;
          do
          {
            p_vtable = MOTimeAtHomeAnomalyManager.vtable;
            if (*v89 != v82)
            {
              objc_enumerationMutation(v79);
            }

            v14 = [*(*(&v88 + 1) + 8 * v13) rangeAtIndex:1];
            v16 = v15;
            v17 = [v86 format];
            v18 = [v17 substringWithRange:{v14, v16}];

            v85 = [(MOEventBundleLabelTemplate *)self needCapitalizationForKeyword:v18];
            v19 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v98 = v8;
              v99 = 2112;
              v100 = v18;
              _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "template, %@, keyword, %@", buf, 0x16u);
            }

            v20 = [v4 objectForKey:v18];
            v21 = [MOEventBundleLabelLocalizer _Moments_CapitalizedStringForKey:v18];
            v22 = [v4 objectForKey:v21];

            if (!v20)
            {
              v56 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
              v55 = v18;
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v98 = v18;
                _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "keyword is not found, %@", buf, 0xCu);
              }

              v12 = v79;
              v50 = v79;
              v6 = v76;
              goto LABEL_92;
            }

            v87 = v18;
            if (![(MOEventBundleLabelTemplate *)self needExtensionForKeyword:v18])
            {
              v29 = v22;
              v27 = v20;
              v25 = v8;
LABEL_24:
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v31 = v27;
                if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v32 = v29;
                }

                else
                {
                  v32 = 0;
                }

                v36 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                {
                  v47 = [v31 mask];
                  v48 = [v32 mask];
                  *buf = 138412802;
                  v98 = v87;
                  v99 = 2112;
                  v100 = v47;
                  v101 = 2112;
                  v102 = v48;
                  _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "keyword, %@, value type, NSString, value, %@, value.cap, %@", buf, 0x20u);
                }

LABEL_41:
                v37 = [NSString stringWithFormat:@"{%@}", v87];
                v38 = [NSString stringWithFormat:@"{%@}", v31];
                v39 = [v25 stringByReplacingOccurrencesOfString:v37 withString:v38];

                if ([v86 capitalizationType] == 2 && +[MOEventBundleLabelLocalizer isPreferredLanguageTitlecaseCapable](MOEventBundleLabelLocalizer, "isPreferredLanguageTitlecaseCapable"))
                {
                  if (v32)
                  {
                    v40 = v32;
                  }

                  else
                  {
                    v40 = [MOEventBundleLabelLocalizer _Moments_TitleCapitalizedStringForKey:v31];
                  }

                  v41 = v40;
                  v4 = v77;
LABEL_58:

                  v31 = v41;
                }

                else
                {
                  v4 = v77;
                  if (v85 && +[MOEventBundleLabelLocalizer isPreferredLanguageMidSentenceCaseCapable])
                  {
                    v41 = [MOEventBundleLabelLocalizer _Moments_CapitalizedStringForKey:v31];
                    goto LABEL_58;
                  }
                }

                [v80 addObject:v31];

                v84 = v39;
LABEL_60:
                v42 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
                {
                  v44 = [v84 mask];
                  v45 = v44;
                  *buf = 138412546;
                  v46 = @"NO";
                  if (v78)
                  {
                    v46 = @"YES";
                  }

                  v98 = v44;
                  v99 = 2112;
                  v100 = v46;
                  _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "outputString, %@, formattingCompleted, %@", buf, 0x16u);
                }

                v43 = 1;
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v33 = v27;
                  v31 = [v33 stringValue];
                  if (!v31)
                  {
                    v34 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                    {
                      [(MOEventBundleLabelTemplate *)v107 formattedStringsForMetaData:v34];
                    }

                    v31 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [v33 intValue]);
                  }

                  v35 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412546;
                    v98 = v18;
                    v99 = 2112;
                    v100 = v31;
                    _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "keyword, %@, value type, NSNumber, value, %@", buf, 0x16u);
                  }

                  if (v31)
                  {
                    v32 = 0;
                    goto LABEL_41;
                  }

                  v78 = 0;
                  goto LABEL_60;
                }

                v42 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v98 = v87;
                  v99 = 2112;
                  v100 = v27;
                  _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "keyword, %@, value type is not supported, %@", buf, 0x16u);
                }

                v43 = 0;
                v78 = 0;
              }

              v20 = v27;
              goto LABEL_63;
            }

            v23 = [NSString stringWithFormat:@"{%@}", v18, v70];
            v24 = [NSString stringWithFormat:@"{%@}", v20];
            v25 = [v8 stringByReplacingOccurrencesOfString:v23 withString:v24];

            v26 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v98 = v25;
              v99 = 2112;
              v100 = v18;
              v101 = 2112;
              v102 = v20;
              _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "extended template, %@, keyword, %@, extended keyword, %@", buf, 0x20u);
            }

            v27 = [v4 objectForKey:v20];
            v28 = [MOEventBundleLabelLocalizer _Moments_CapitalizedStringForKey:v20];
            v29 = [v4 objectForKey:v28];

            v30 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138413058;
              v98 = v25;
              v99 = 2112;
              v100 = v20;
              v101 = 2112;
              v102 = v27;
              v103 = 2112;
              v104 = v29;
              _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "extended template, %@, extended keyword, %@, value, %@, value.cap, %@", buf, 0x2Au);
            }

            if (v27)
            {

              goto LABEL_24;
            }

            v42 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v98 = v87;
              _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "extended keyword is not found, %@", buf, 0xCu);
            }

            v43 = 0;
            v78 = 0;
LABEL_63:
            v8 = v25;
            self = v81;

            if (!v43)
            {
              goto LABEL_70;
            }

            v13 = v13 + 1;
          }

          while (v83 != v13);
          v49 = [v79 countByEnumeratingWithState:&v88 objects:v109 count:16];
          v83 = v49;
          if (v49)
          {
            continue;
          }

          break;
        }

LABEL_70:
        v12 = v79;

        p_vtable = (MOTimeAtHomeAnomalyManager + 24);
        v6 = v76;
        if (v78)
        {
          goto LABEL_73;
        }

LABEL_94:

        v6 = v6 + 1;
      }

      while (v6 != v75);
      v67 = [obj countByEnumeratingWithState:&v92 objects:v110 count:16];
      v75 = v67;
    }

    while (v67);
  }

  v68 = [v71 copy];

  return v68;
}

- (id)description
{
  v3 = [(MOEventBundleLabelTemplate *)self conditions];
  v4 = [(MOEventBundleLabelTemplate *)self formats];
  v5 = [NSString stringWithFormat:@"condidionts, %@, labels, %@", v3, v4];

  return v5;
}

- (void)checkConditionForMetaData:(os_log_t)log .cold.1(char a1, uint64_t a2, os_log_t log)
{
  v3[0] = 67109378;
  v3[1] = a1 & 1;
  v4 = 2112;
  v5 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "template checkConditionForMetaData, output, %d, template, %@", v3, 0x12u);
}

- (void)formattedStringsForMetaData:(os_log_t)log .cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 138412290;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "stringValue %@", buf, 0xCu);
}

@end