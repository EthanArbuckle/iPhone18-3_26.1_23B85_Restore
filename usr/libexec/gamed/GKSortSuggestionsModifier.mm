@interface GKSortSuggestionsModifier
- (GKSortSuggestionsModifier)initWithSettings:(id)settings networkRequester:(id)requester cachedSortedAssociationIDs:(id)ds transactionGroupProvider:(id)provider featureEnabledBlock:(id)block;
- (id)modifySuggestions:(id)suggestions;
- (id)sortSuggestions:(id)suggestions usingSortedContactsAssociationIDs:(id)ds suggestionMap:(id)map;
@end

@implementation GKSortSuggestionsModifier

- (GKSortSuggestionsModifier)initWithSettings:(id)settings networkRequester:(id)requester cachedSortedAssociationIDs:(id)ds transactionGroupProvider:(id)provider featureEnabledBlock:(id)block
{
  settingsCopy = settings;
  requesterCopy = requester;
  dsCopy = ds;
  providerCopy = provider;
  blockCopy = block;
  v24.receiver = self;
  v24.super_class = GKSortSuggestionsModifier;
  v18 = [(GKSortSuggestionsModifier *)&v24 init];
  if (v18)
  {
    v19 = objc_retainBlock(providerCopy);
    transactionGroupProvider = v18->_transactionGroupProvider;
    v18->_transactionGroupProvider = v19;

    objc_storeStrong(&v18->_networkRequester, requester);
    v21 = objc_retainBlock(blockCopy);
    featureEnabledBlock = v18->_featureEnabledBlock;
    v18->_featureEnabledBlock = v21;

    objc_storeStrong(&v18->_settings, settings);
    objc_storeStrong(&v18->_cachedSortedAssociationIDs, ds);
  }

  return v18;
}

- (id)modifySuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  featureEnabledBlock = [(GKSortSuggestionsModifier *)self featureEnabledBlock];
  v6 = featureEnabledBlock[2]();

  if (v6)
  {
    v7 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [suggestionsCopy count]);
    v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [suggestionsCopy count]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v9 = suggestionsCopy;
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
          contactAssociationID = [v14 contactAssociationID];
          if ([contactAssociationID length])
          {
            [v7 setObject:v14 forKeyedSubscript:contactAssociationID];
            [v8 addObject:contactAssociationID];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v11);
    }

    v16 = [v8 count];
    settings = [(GKSortSuggestionsModifier *)self settings];
    mininumIDsForServiceRequest = [settings mininumIDsForServiceRequest];

    if (v16 >= mininumIDsForServiceRequest)
    {
      settings2 = [(GKSortSuggestionsModifier *)self settings];
      suggestionsLimit = [settings2 suggestionsLimit];

      cachedSortedAssociationIDs = [(GKSortSuggestionsModifier *)self cachedSortedAssociationIDs];

      if (cachedSortedAssociationIDs)
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

        cachedSortedAssociationIDs2 = [(GKSortSuggestionsModifier *)self cachedSortedAssociationIDs];
      }

      else
      {
        if ([v8 count] <= suggestionsLimit)
        {
          v26 = [v8 copy];
          v27 = 0;
        }

        else
        {
          v26 = [v8 subarrayWithRange:{0, suggestionsLimit}];
          v27 = [v8 subarrayWithRange:{suggestionsLimit, objc_msgSend(v8, "count") - objc_msgSend(v26, "count")}];
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
        result = [v30 result];
        v33 = [result mutableCopy];

        if ([v27 count])
        {
          [v33 addObjectsFromArray:v27];
        }

        cachedSortedAssociationIDs2 = [v33 copy];
      }

      v34 = [v7 copy];
      v19 = [(GKSortSuggestionsModifier *)self sortSuggestions:v9 usingSortedContactsAssociationIDs:cachedSortedAssociationIDs2 suggestionMap:v34];
    }

    else
    {
      v19 = v9;
    }
  }

  else
  {
    v19 = suggestionsCopy;
  }

  return v19;
}

- (id)sortSuggestions:(id)suggestions usingSortedContactsAssociationIDs:(id)ds suggestionMap:(id)map
{
  suggestionsCopy = suggestions;
  dsCopy = ds;
  mapCopy = map;
  if ([dsCopy count])
  {
    selfCopy = self;
    v11 = [NSMutableArray arrayWithCapacity:[(GKSortSuggestionsModifier *)suggestionsCopy count]];
    v12 = [NSMutableSet setWithCapacity:[(GKSortSuggestionsModifier *)suggestionsCopy count]];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v34 = dsCopy;
    v13 = dsCopy;
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

          v18 = [mapCopy objectForKeyedSubscript:*(*(&v39 + 1) + 8 * i)];
          if (v18)
          {
            [v11 addObject:v18];
            contactID = [v18 contactID];
            [v12 addObject:contactID];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v15);
    }

    v20 = [v11 count];
    settings = [(GKSortSuggestionsModifier *)selfCopy settings];
    mininumIDsForContactAssociationIDsOnly = [settings mininumIDsForContactAssociationIDsOnly];

    if (v20 < mininumIDsForContactAssociationIDsOnly)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      selfCopy = suggestionsCopy;
      v23 = suggestionsCopy;
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
            contactID2 = [v28 contactID];
            v30 = [v12 containsObject:contactID2];

            if ((v30 & 1) == 0)
            {
              [v11 addObject:v28];
            }
          }

          v25 = [(GKSortSuggestionsModifier *)v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
        }

        while (v25);
      }

      suggestionsCopy = selfCopy;
    }

    v31 = [v11 copy];

    dsCopy = v34;
  }

  else
  {
    v31 = suggestionsCopy;
  }

  return v31;
}

@end