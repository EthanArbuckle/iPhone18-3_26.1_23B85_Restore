@interface GKSortSuggestionsModifier
- (GKSortSuggestionsModifier)initWithSettings:(id)a3 networkRequester:(id)a4 cachedSortedAssociationIDs:(id)a5 transactionGroupProvider:(id)a6 featureEnabledBlock:(id)a7;
- (id)modifySuggestions:(id)a3;
- (id)sortSuggestions:(id)a3 usingSortedContactsAssociationIDs:(id)a4 suggestionMap:(id)a5;
@end

@implementation GKSortSuggestionsModifier

- (GKSortSuggestionsModifier)initWithSettings:(id)a3 networkRequester:(id)a4 cachedSortedAssociationIDs:(id)a5 transactionGroupProvider:(id)a6 featureEnabledBlock:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v24.receiver = self;
  v24.super_class = GKSortSuggestionsModifier;
  v18 = [(GKSortSuggestionsModifier *)&v24 init];
  if (v18)
  {
    v19 = objc_retainBlock(v16);
    transactionGroupProvider = v18->_transactionGroupProvider;
    v18->_transactionGroupProvider = v19;

    objc_storeStrong(&v18->_networkRequester, a4);
    v21 = objc_retainBlock(v17);
    featureEnabledBlock = v18->_featureEnabledBlock;
    v18->_featureEnabledBlock = v21;

    objc_storeStrong(&v18->_settings, a3);
    objc_storeStrong(&v18->_cachedSortedAssociationIDs, a5);
  }

  return v18;
}

- (id)modifySuggestions:(id)a3
{
  v4 = a3;
  v5 = [(GKSortSuggestionsModifier *)self featureEnabledBlock];
  v6 = v5[2]();

  if (v6)
  {
    v7 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
    v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v40;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v39 + 1) + 8 * i);
          v15 = [v14 contactAssociationID];
          if ([v15 length])
          {
            [v7 setObject:v14 forKeyedSubscript:v15];
            [v8 addObject:v15];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v11);
    }

    v16 = [v8 count];
    v17 = [(GKSortSuggestionsModifier *)self settings];
    v18 = [v17 mininumIDsForServiceRequest];

    if (v16 >= v18)
    {
      v20 = [(GKSortSuggestionsModifier *)self settings];
      v21 = [v20 suggestionsLimit];

      v22 = [(GKSortSuggestionsModifier *)self cachedSortedAssociationIDs];

      if (v22)
      {
        if (!os_log_GKGeneral)
        {
          v23 = GKOSLoggers();
        }

        v24 = os_log_GKContacts;
        if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
        {
          sub_1002961D0(v24, self);
        }

        v25 = [(GKSortSuggestionsModifier *)self cachedSortedAssociationIDs];
      }

      else
      {
        if ([v8 count] <= v21)
        {
          v26 = [v8 copy];
          v27 = 0;
        }

        else
        {
          v26 = [v8 subarrayWithRange:{0, v21}];
          v27 = [v8 subarrayWithRange:{v21, objc_msgSend(v8, "count") - objc_msgSend(v26, "count")}];
        }

        v28 = [NSString stringWithFormat:@"%s:%d %s", "GKSortSuggestionsModifier.m", 164, "[GKSortSuggestionsModifier modifySuggestions:]"];
        v29 = [GKDispatchGroup dispatchGroupWithName:v28];

        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_10019D99C;
        v36[3] = &unk_100360F00;
        v36[4] = self;
        v37 = v26;
        v30 = v29;
        v38 = v30;
        v31 = v26;
        [v30 perform:v36];
        [v30 wait];
        v32 = [v30 result];
        v33 = [v32 mutableCopy];

        if ([v27 count])
        {
          [v33 addObjectsFromArray:v27];
        }

        v25 = [v33 copy];
      }

      v34 = [v7 copy];
      v19 = [(GKSortSuggestionsModifier *)self sortSuggestions:v9 usingSortedContactsAssociationIDs:v25 suggestionMap:v34];
    }

    else
    {
      v19 = v9;
    }
  }

  else
  {
    v19 = v4;
  }

  return v19;
}

- (id)sortSuggestions:(id)a3 usingSortedContactsAssociationIDs:(id)a4 suggestionMap:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 count])
  {
    v33 = self;
    v11 = [NSMutableArray arrayWithCapacity:[(GKSortSuggestionsModifier *)v8 count]];
    v12 = [NSMutableSet setWithCapacity:[(GKSortSuggestionsModifier *)v8 count]];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v34 = v9;
    v13 = v9;
    v14 = [v13 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v40;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v40 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [v10 objectForKeyedSubscript:*(*(&v39 + 1) + 8 * i)];
          if (v18)
          {
            [v11 addObject:v18];
            v19 = [v18 contactID];
            [v12 addObject:v19];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v15);
    }

    v20 = [v11 count];
    v21 = [(GKSortSuggestionsModifier *)v33 settings];
    v22 = [v21 mininumIDsForContactAssociationIDsOnly];

    if (v20 < v22)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = v8;
      v23 = v8;
      v24 = [(GKSortSuggestionsModifier *)v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v36;
        do
        {
          for (j = 0; j != v25; j = j + 1)
          {
            if (*v36 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v35 + 1) + 8 * j);
            v29 = [v28 contactID];
            v30 = [v12 containsObject:v29];

            if ((v30 & 1) == 0)
            {
              [v11 addObject:v28];
            }
          }

          v25 = [(GKSortSuggestionsModifier *)v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
        }

        while (v25);
      }

      v8 = v33;
    }

    v31 = [v11 copy];

    v9 = v34;
  }

  else
  {
    v31 = v8;
  }

  return v31;
}

@end