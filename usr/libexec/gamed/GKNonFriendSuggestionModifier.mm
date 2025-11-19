@interface GKNonFriendSuggestionModifier
- (GKNonFriendSuggestionModifier)initWithContactsController:(id)a3 transactionGroupProvider:(id)a4;
- (id)modifySuggestions:(id)a3;
- (id)nonFriendSuggestionsFromInitialSuggestions:(id)a3;
- (void)populateContactAssocicationIDsForSuggestions:(id)a3 contactAssociationIDMap:(id)a4;
@end

@implementation GKNonFriendSuggestionModifier

- (GKNonFriendSuggestionModifier)initWithContactsController:(id)a3 transactionGroupProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = GKNonFriendSuggestionModifier;
  v9 = [(GKNonFriendSuggestionModifier *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contactsController, a3);
    v11 = objc_retainBlock(v8);
    transactionGroupProvider = v10->_transactionGroupProvider;
    v10->_transactionGroupProvider = v11;
  }

  return v10;
}

- (id)modifySuggestions:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(GKNonFriendSuggestionModifier *)self nonFriendSuggestionsFromInitialSuggestions:v4];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (id)nonFriendSuggestionsFromInitialSuggestions:(id)a3
{
  v4 = a3;
  v5 = [v4 _gkValuesForKeyPath:@"contactID"];
  v6 = [NSString stringWithFormat:@"%s:%d %s", "GKNonFriendSuggestionModifier.m", 55, "[GKNonFriendSuggestionModifier nonFriendSuggestionsFromInitialSuggestions:]"];
  v7 = [GKDispatchGroup dispatchGroupWithName:v6];

  v8 = [(GKNonFriendSuggestionModifier *)self contactsController];
  v9 = [v8 contactStore];
  v10 = [v9 _gkContactsWithContactIDs:v5];
  v11 = [v10 allObjects];

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100179B08;
  v39[3] = &unk_100360F00;
  v39[4] = self;
  v12 = v11;
  v40 = v12;
  v13 = v7;
  v41 = v13;
  [v13 perform:v39];
  [v13 wait];
  v14 = [v13 objectForKeyedSubscript:@"relationships"];
  v15 = [v13 objectForKeyedSubscript:@"contactAssociationIDMap"];
  v16 = [v13 error];
  if (v16)
  {
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    v18 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
    {
      sub_100294570(v16, v18);
    }
  }

  [(GKNonFriendSuggestionModifier *)self populateContactAssocicationIDsForSuggestions:v4 contactAssociationIDMap:v15];
  if ([v14 count])
  {
    v30 = v15;
    v31 = v12;
    v32 = v5;
    v19 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v14, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v20 = v14;
    v21 = [v20 countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v36;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v36 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v35 + 1) + 8 * i);
          if ([v25 relationship] != 2)
          {
            v26 = [v25 handle];
            [v19 addObject:v26];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v22);
    }

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100179C74;
    v33[3] = &unk_100365F20;
    v34 = v19;
    v27 = v19;
    v28 = [v4 _gkFilterWithBlock:v33];

    v12 = v31;
    v5 = v32;
    v15 = v30;
  }

  else
  {
    v28 = v4;
  }

  return v28;
}

- (void)populateContactAssocicationIDsForSuggestions:(id)a3 contactAssociationIDMap:(id)a4
{
  v5 = a3;
  v26 = a4;
  v6 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v7 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v5 count]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        v14 = [v13 prefixedHandle];
        if ([v14 length])
        {
          v15 = [v13 prefixedHandle];
          [v6 addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v10);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = v8;
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v27 + 1) + 8 * j);
        v22 = [v21 prefixedHandle];
        if ([v22 length])
        {
          v23 = [v21 contactAssociationID];
          v24 = [v23 length];

          if (!v24)
          {
            v25 = [v26 objectForKeyedSubscript:v22];
            if ([v25 length] && (objc_msgSend(v7, "containsObject:", v25) & 1) == 0)
            {
              [v21 setContactAssociationID:v25];
              [v7 addObject:v25];
            }
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v18);
  }
}

@end