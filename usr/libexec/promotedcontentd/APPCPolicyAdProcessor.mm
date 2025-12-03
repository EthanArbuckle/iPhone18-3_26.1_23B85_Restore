@interface APPCPolicyAdProcessor
- (APPCPolicyAdProcessor)init;
- (BOOL)isValidPolicy:(id)policy;
- (id)aliasTransformedPolicies:(id)policies alias:(id)alias;
- (id)buildFinalPolicies:(id)policies policyValue:(id)value policyType:(int64_t)type expression:(id)expression;
- (id)cartesianProduct:(id)product;
- (id)flattenPolicy:(id)policy policyType:(int64_t)type;
- (void)generatePolicyDataObjects:(id)objects;
- (void)processAdPolicyData;
@end

@implementation APPCPolicyAdProcessor

- (APPCPolicyAdProcessor)init
{
  v11.receiver = self;
  v11.super_class = APPCPolicyAdProcessor;
  v2 = [(APPCPolicyAdProcessor *)&v11 init];
  if (v2)
  {
    v3 = APLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = objc_opt_class();
      *buf = 138477827;
      v13 = v4;
      v5 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{private}@] Initializing Policy Settings for APPCPolicyAdProcessor", buf, 0xCu);
    }

    v6 = objc_alloc_init(NSMutableArray);
    adPolicies = v2->_adPolicies;
    v2->_adPolicies = v6;

    v8 = objc_alloc_init(APPCPolicySettings);
    policySettings = v2->_policySettings;
    v2->_policySettings = v8;
  }

  return v2;
}

- (BOOL)isValidPolicy:(id)policy
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  policyCopy = policy;
  v4 = [policyCopy countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v20;
    *&v5 = 138478083;
    v18 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(policyCopy);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        if (([v9 isEqualToString:{@"timer", v18}] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"spacing") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"adsAllowed") & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"timerOrSpacing") || (objc_msgSend(v9, "isEqualToString:", @"adSessionBefore") & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"adSessionAfter"))
        {
          v10 = [policyCopy objectForKey:v9];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            v16 = 0;
            goto LABEL_22;
          }
        }

        else
        {
          v12 = APLogForCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = objc_opt_class();
            *buf = v18;
            v24 = v13;
            v25 = 2114;
            v26 = v9;
            v14 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[%{private}@] FILE A RADAR. There was an unknown key in policies: %{public}@", buf, 0x16u);
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v15 = [policyCopy countByEnumeratingWithState:&v19 objects:v27 count:16];
      v6 = v15;
    }

    while (v15);
  }

  v16 = 1;
LABEL_22:

  return v16;
}

- (void)processAdPolicyData
{
  v3 = dispatch_get_global_queue(9, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100220A24;
  block[3] = &unk_1004790A8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)generatePolicyDataObjects:(id)objects
{
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = objects;
  v21 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v21)
  {
    v19 = *v30;
    do
    {
      v3 = 0;
      do
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v3;
        v4 = *(*(&v29 + 1) + 8 * v3);
        v5 = [v4 objectForKey:@"value"];
        v6 = [v4 objectForKey:@"isXLFormat"];
        v7 = [v4 valueForKey:@"policyType"];
        intValue = [v7 intValue];

        v22 = v6;
        v23 = v5;
        v9 = [[APPCPolicyData alloc] initWithPolicyType:intValue policyValue:v5 isXLFormat:v6];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v10 = v4;
        v11 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v26;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v26 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v25 + 1) + 8 * i);
              if (([v15 isEqualToString:@"value"] & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", @"policyType") & 1) == 0)
              {
                if ([v15 isEqualToString:@"containerType"])
                {
                  v16 = [v10 objectForKey:v15];
                  [(APPCPolicyData *)v9 setContainerType:v16];
                }

                else if ([v15 isEqualToString:@"adType"])
                {
                  v16 = [v10 objectForKey:v15];
                  [(APPCPolicyData *)v9 setAdType:v16];
                }

                else if ([v15 isEqualToString:@"placementDescriptor"])
                {
                  v16 = [v10 objectForKey:v15];
                  [(APPCPolicyData *)v9 setPlacementDescriptor:v16];
                }

                else if ([v15 isEqualToString:@"adFormatType"])
                {
                  v16 = [v10 objectForKey:v15];
                  [(APPCPolicyData *)v9 setAdFormatType:v16];
                }

                else if ([v15 isEqualToString:@"userStatus"])
                {
                  v16 = [v10 objectForKey:v15];
                  [(APPCPolicyData *)v9 setUserStatus:v16];
                }

                else if ([v15 isEqualToString:@"expression"])
                {
                  v16 = [v10 objectForKey:v15];
                  [(APPCPolicyData *)v9 setExpression:v16];
                }

                else if ([v15 isEqualToString:@"targetingExpression"])
                {
                  v16 = [v10 objectForKey:v15];
                  [(APPCPolicyData *)v9 setTargetingExpression:v16];
                }

                else
                {
                  if (![v15 isEqualToString:@"dataAdapters"])
                  {
                    continue;
                  }

                  v16 = [v10 objectForKey:v15];
                  [(APPCPolicyData *)v9 setDataAdapters:v16];
                }
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v12);
        }

        adPolicies = [(APPCPolicyAdProcessor *)self adPolicies];
        [adPolicies addObject:v9];

        v3 = v24 + 1;
      }

      while ((v24 + 1) != v21);
      v21 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v21);
  }
}

- (id)flattenPolicy:(id)policy policyType:(int64_t)type
{
  policyCopy = policy;
  v40 = objc_alloc_init(NSMutableArray);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = policyCopy;
  v41 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (v41)
  {
    v37 = *v55;
    typeCopy = type;
    do
    {
      v6 = 0;
      do
      {
        if (*v55 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v54 + 1) + 8 * v6);
        v8 = [v7 objectForKey:@"value"];
        if (!v8)
        {
          v8 = [NSNumber numberWithInt:0];
        }

        v44 = v8;
        v45 = v6;
        if (type == 7)
        {
          v43 = [v7 objectForKey:@"expression"];
        }

        else
        {
          v43 = 0;
        }

        v60[0] = @"containerType";
        v60[1] = @"adType";
        v60[2] = @"placementDescriptor";
        v60[3] = @"adFormatType";
        v60[4] = @"userStatus";
        v9 = [NSArray arrayWithObjects:v60 count:5];
        v10 = objc_alloc_init(NSMutableDictionary);
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v11 = v7;
        v12 = [v11 countByEnumeratingWithState:&v50 objects:v59 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v51;
          v15 = 1;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v51 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v17 = *(*(&v50 + 1) + 8 * i);
              if ([v9 containsObject:v17])
              {
                v18 = [v11 objectForKey:v17];
                v19 = [v18 count];
                if (v18)
                {
                  v20 = v19 == 0;
                }

                else
                {
                  v20 = 1;
                }

                if (!v20)
                {
                  v15 *= v19;
                  [v10 setObject:v18 forKey:v17];
                }
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v50 objects:v59 count:16];
          }

          while (v13);
        }

        else
        {
          v15 = 1;
        }

        v42 = v9;

        v21 = objc_alloc_init(NSMutableDictionary);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v22 = v10;
        v23 = [v22 countByEnumeratingWithState:&v46 objects:v58 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v47;
          do
          {
            for (j = 0; j != v24; j = j + 1)
            {
              if (*v47 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v46 + 1) + 8 * j);
              v28 = objc_alloc_init(NSMutableArray);
              v29 = [v22 objectForKey:v27];
              v30 = [v29 count];
              v31 = v15;
              if (v30)
              {
                v31 = v15 / v30;
              }

              for (; v31; --v31)
              {
                [v28 addObjectsFromArray:v29];
              }

              v32 = [v28 copy];
              [v21 setObject:v32 forKey:v27];
            }

            v24 = [v22 countByEnumeratingWithState:&v46 objects:v58 count:16];
          }

          while (v24);
        }

        type = typeCopy;
        v33 = [(APPCPolicyAdProcessor *)self buildFinalPolicies:v21 policyValue:v44 policyType:typeCopy expression:v43];
        [v40 addObjectsFromArray:v33];

        v6 = v45 + 1;
      }

      while ((v45 + 1) != v41);
      v41 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
    }

    while (v41);
  }

  v34 = [v40 copy];

  return v34;
}

- (id)cartesianProduct:(id)product
{
  productCopy = product;
  v4 = objc_alloc_init(NSMutableArray);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = productCopy;
  v6 = [v5 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v40;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [NSSet setWithArray:*(*(&v39 + 1) + 8 * i)];
        allObjects = [v10 allObjects];
        [v4 addObject:allObjects];
      }

      v7 = [v5 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v7);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    v16 = 1;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v16 *= [*(*(&v35 + 1) + 8 * j) count];
      }

      v14 = [v12 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v14);
  }

  else
  {
    v16 = 1;
  }

  v28 = v5;

  v29 = objc_alloc_init(NSMutableArray);
  if (v16)
  {
    for (k = 0; k != v16; ++k)
    {
      v18 = objc_alloc_init(NSMutableArray);
      [v29 addObject:v18];
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v19 = v12;
      v20 = [v19 countByEnumeratingWithState:&v31 objects:v43 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v32;
        v23 = k;
        do
        {
          for (m = 0; m != v21; m = m + 1)
          {
            if (*v32 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v25 = *(*(&v31 + 1) + 8 * m);
            v26 = [v25 objectAtIndex:{v23 % objc_msgSend(v25, "count")}];
            [v18 addObject:v26];

            if ([v25 count])
            {
              v23 /= [v25 count];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v31 objects:v43 count:16];
        }

        while (v21);
      }
    }
  }

  return v29;
}

- (id)buildFinalPolicies:(id)policies policyValue:(id)value policyType:(int64_t)type expression:(id)expression
{
  policiesCopy = policies;
  valueCopy = value;
  expressionCopy = expression;
  v36 = objc_alloc_init(NSMutableArray);
  v11 = +[NSMutableArray array];
  v12 = +[NSMutableArray array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v13 = policiesCopy;
  v14 = [v13 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v42;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v42 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v41 + 1) + 8 * i);
        [v11 addObject:v18];
        v19 = [v13 objectForKey:v18];
        [v12 addObject:v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v15);
  }

  v32 = v13;

  v31 = v12;
  [(APPCPolicyAdProcessor *)self cartesianProduct:v12];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v40 = 0u;
  v20 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v38;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v37 + 1) + 8 * j);
        v25 = objc_alloc_init(NSMutableDictionary);
        [v25 setObject:valueCopy forKey:@"value"];
        v26 = [NSNumber numberWithInteger:type];
        [v25 setObject:v26 forKey:@"policyType"];

        if (type == 7)
        {
          [v25 setObject:expressionCopy forKey:@"expression"];
        }

        if ([v24 count])
        {
          v27 = 0;
          do
          {
            v28 = [v24 objectAtIndex:v27];
            v29 = [v11 objectAtIndex:v27];
            [v25 setObject:v28 forKey:v29];

            ++v27;
          }

          while (v27 < [v24 count]);
        }

        [v36 addObject:v25];
      }

      v21 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v21);
  }

  return v36;
}

- (id)aliasTransformedPolicies:(id)policies alias:(id)alias
{
  selfCopy = self;
  policiesCopy = policies;
  aliasCopy = alias;
  v60 = policiesCopy;
  v7 = [policiesCopy mutableCopy];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v8 = aliasCopy;
  v57 = [v8 countByEnumeratingWithState:&v94 objects:v101 count:16];
  obj = v8;
  if (!v57)
  {

    goto LABEL_58;
  }

  v9 = 0;
  v56 = *v95;
  do
  {
    v10 = 0;
    do
    {
      if (*v95 != v56)
      {
        v11 = v10;
        objc_enumerationMutation(obj);
        v10 = v11;
      }

      v59 = v10;
      v12 = *(*(&v94 + 1) + 8 * v10);
      v13 = [obj objectForKey:{v12, selfCopy}];
      if (v13)
      {
        v14 = v13;
        if ([v13 count])
        {
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v55 = v14;
          v63 = v14;
          v62 = [v63 countByEnumeratingWithState:&v90 objects:v100 count:16];
          if (!v62)
          {
            goto LABEL_51;
          }

          v61 = *v91;
          while (1)
          {
            v15 = 0;
            do
            {
              if (*v91 != v61)
              {
                v16 = v15;
                objc_enumerationMutation(v63);
                v15 = v16;
              }

              v64 = v15;
              v17 = *(*(&v90 + 1) + 8 * v15);
              v18 = [v63 objectForKey:v17];
              v19 = v18;
              if (v18 && [v18 count])
              {
                v88 = 0u;
                v89 = 0u;
                v86 = 0u;
                v87 = 0u;
                v67 = v60;
                v66 = [v67 countByEnumeratingWithState:&v86 objects:v99 count:16];
                if (!v66)
                {
                  goto LABEL_48;
                }

                v65 = *v87;
                v74 = v19;
                v75 = v17;
                while (1)
                {
                  v20 = 0;
                  do
                  {
                    if (*v87 != v65)
                    {
                      v21 = v20;
                      objc_enumerationMutation(v67);
                      v20 = v21;
                    }

                    v68 = v20;
                    v22 = *(*(&v86 + 1) + 8 * v20);
                    v81 = v22;
                    if (([v22 isEqualToString:@"timer"] & 1) != 0 || (objc_msgSend(v22, "isEqualToString:", @"spacing") & 1) != 0 || (objc_msgSend(v22, "isEqualToString:", @"timerOrSpacing") & 1) != 0 || objc_msgSend(v22, "isEqualToString:", @"adsAllowed"))
                    {
                      v23 = [v67 objectForKey:v22];
                      if ([v23 count])
                      {
                        v24 = 0;
                        v71 = v23;
                        do
                        {
                          v25 = [v23 objectAtIndexedSubscript:v24];
                          v26 = [v25 objectForKey:v12];

                          if ([v26 containsObject:v17])
                          {
                            v79 = [v26 mutableCopy];
                            [v79 addObjectsFromArray:v19];
                            [v79 removeObject:v17];
                            v27 = [NSOrderedSet orderedSetWithArray:v79];
                            array = [v27 array];

                            v29 = [v7 objectForKey:v81];
                            v30 = [v29 objectAtIndex:v24];
                            v31 = [v30 mutableCopy];

                            [v31 setObject:array forKey:v12];
                            v32 = [v7 objectForKey:v81];
                            v33 = [v32 mutableCopy];

                            v17 = v75;
                            [v33 replaceObjectAtIndex:v24 withObject:v31];
                            [v7 setObject:v33 forKey:v81];

                            v23 = v71;
                            v9 = 1;
                          }

                          ++v24;
                        }

                        while (v24 < [v23 count]);
                      }

LABEL_29:

                      goto LABEL_30;
                    }

                    if (([v22 isEqualToString:@"adSessionBefore"] & 1) != 0 || objc_msgSend(v22, "isEqualToString:", @"adSessionAfter"))
                    {
                      v23 = [v67 objectForKey:v22];
                      v82 = 0u;
                      v83 = 0u;
                      v84 = 0u;
                      v85 = 0u;
                      v70 = [v23 countByEnumeratingWithState:&v82 objects:v98 count:16];
                      if (v70)
                      {
                        v69 = *v83;
                        v72 = v23;
                        do
                        {
                          v34 = 0;
                          do
                          {
                            if (*v83 != v69)
                            {
                              objc_enumerationMutation(v23);
                            }

                            v73 = v34;
                            v77 = *(*(&v82 + 1) + 8 * v34);
                            v35 = [v23 objectForKey:?];
                            if ([v35 count])
                            {
                              v36 = 0;
                              v76 = v35;
                              do
                              {
                                v37 = [v35 objectAtIndexedSubscript:v36];
                                v38 = [v37 objectForKey:v12];

                                if ([v38 containsObject:v17])
                                {
                                  v39 = [v38 mutableCopy];
                                  [v39 addObjectsFromArray:v19];
                                  [v39 removeObject:v17];
                                  v40 = [NSOrderedSet orderedSetWithArray:v39];
                                  array2 = [v40 array];

                                  v41 = [v7 objectForKey:v22];
                                  v80 = [v41 mutableCopy];

                                  v42 = [v80 objectForKey:v77];
                                  [v42 objectAtIndex:v36];
                                  v44 = v43 = v7;
                                  v45 = [v44 mutableCopy];

                                  [v45 setObject:array2 forKey:v12];
                                  v46 = [NSArray arrayWithObject:v45];
                                  v47 = [v43 objectForKey:v81];
                                  v48 = v12;
                                  v49 = [v47 mutableCopy];

                                  v7 = v43;
                                  v22 = v81;
                                  [v49 setObject:v46 forKey:v77];
                                  [v7 setObject:v49 forKey:v81];

                                  v12 = v48;
                                  v19 = v74;

                                  v17 = v75;
                                  v35 = v76;
                                  v9 = 1;
                                }

                                ++v36;
                              }

                              while (v36 < [v35 count]);
                            }

                            v23 = v72;
                            v34 = v73 + 1;
                          }

                          while ((v73 + 1) != v70);
                          v70 = [v72 countByEnumeratingWithState:&v82 objects:v98 count:16];
                        }

                        while (v70);
                      }

                      goto LABEL_29;
                    }

LABEL_30:
                    v20 = v68 + 1;
                  }

                  while ((v68 + 1) != v66);
                  v50 = [v67 countByEnumeratingWithState:&v86 objects:v99 count:16];
                  v66 = v50;
                  if (!v50)
                  {
LABEL_48:

                    break;
                  }
                }
              }

              v15 = v64 + 1;
            }

            while ((v64 + 1) != v62);
            v62 = [v63 countByEnumeratingWithState:&v90 objects:v100 count:16];
            if (!v62)
            {
LABEL_51:

              v13 = v55;
              goto LABEL_53;
            }
          }
        }

        v13 = v14;
      }

LABEL_53:

      v10 = v59 + 1;
    }

    while ((v59 + 1) != v57);
    v57 = [obj countByEnumeratingWithState:&v94 objects:v101 count:16];
  }

  while (v57);

  if (v9)
  {
    v51 = obj;
    v52 = [(APPCPolicyAdProcessor *)selfCopy aliasTransformedPolicies:v7 alias:obj];
    goto LABEL_59;
  }

LABEL_58:
  v52 = v7;
  v51 = obj;
LABEL_59:

  return v52;
}

@end