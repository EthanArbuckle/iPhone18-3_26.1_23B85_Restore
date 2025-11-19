@interface GKFriendSuggester
+ (id)serialQueue;
- (GKFriendSuggester)initWithDeniedContactIDs:(id)a3 settingsProvider:(id)a4;
- (id)cachedContactAssocicationIDsWithContext:(id)a3;
- (id)modifiersWithSettings:(id)a3 contactsIntegrationController:(id)a4 hasCachedSuggestions:(BOOL)a5 cachedSortedAssociationIDs:(id)a6 rerankRequester:(id)a7 transactionGroupProvider:(id)a8;
- (id)peopleSuggesterConvertedFriendSuggestionsWithLimit:(unint64_t)a3;
- (id)peopleSuggesterGameInviteSuggestionsWithLimit:(unint64_t)a3;
- (id)rerankedHandlesWithContactsIntegrationController:(id)a3 context:(id)a4;
- (unint64_t)calculateCoreRecencyUpperLimit:(id)a3;
- (void)gameInviteSuggestionsWithHandler:(id)a3;
- (void)modifyCachedSuggestions:(id)a3 modifiers:(id)a4 handler:(id)a5;
- (void)suggestionsWithRerankRequester:(id)a3 contactsIntegrationController:(id)a4 transactionGroupProvider:(id)a5 handler:(id)a6;
@end

@implementation GKFriendSuggester

+ (id)serialQueue
{
  if (qword_1003B9270 != -1)
  {
    sub_100290B18();
  }

  v3 = qword_1003B9268;

  return v3;
}

- (GKFriendSuggester)initWithDeniedContactIDs:(id)a3 settingsProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = GKFriendSuggester;
  v9 = [(GKFriendSuggester *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deniedContactIDs, a3);
    objc_storeStrong(&v10->_settingsProvider, a4);
  }

  return v10;
}

- (void)suggestionsWithRerankRequester:(id)a3 contactsIntegrationController:(id)a4 transactionGroupProvider:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v12[2](v12);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10013E808;
  v19[3] = &unk_100368150;
  v19[4] = self;
  v20 = v11;
  v21 = v10;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v10;
  v18 = v11;
  [v14 performOnManagedObjectContext:v19];
}

- (id)cachedContactAssocicationIDsWithContext:(id)a3
{
  v3 = a3;
  v4 = +[GKCDSuggestedFriends _gkFetchRequest];
  [v4 setReturnsDistinctResults:1];
  v5 = [NSManagedObject _gkRetrieveCleanEntry:v3 request:v4];

  if (v5 && ([v5 expirationDate], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "_gkIsExpired:", v6), v6, (v7 & 1) == 0))
  {
    v8 = [v5 contactAssociationIDs];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)rerankedHandlesWithContactsIntegrationController:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GKFriendSuggester *)self cachedContactAssocicationIDsWithContext:v7];
  v9 = [NSSet setWithArray:v8];
  v10 = [v6 handleMapForContactAssociationIDs:v9 withContext:v7];

  v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [v10 objectForKeyedSubscript:{*(*(&v20 + 1) + 8 * i), v20}];
        if ([v17 length])
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = [v11 copy];

  return v18;
}

- (void)gameInviteSuggestionsWithHandler:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendSuggester.m", 164, "[GKFriendSuggester gameInviteSuggestionsWithHandler:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10013F05C;
  v15[3] = &unk_100360FF0;
  v15[4] = self;
  v7 = v6;
  v16 = v7;
  [v7 perform:v15];
  v8 = [objc_opt_class() serialQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10013F1EC;
  v11[3] = &unk_100360FC8;
  v12 = v7;
  v13 = self;
  v14 = v4;
  v9 = v4;
  v10 = v7;
  [v10 notifyOnQueue:v8 block:v11];
}

- (id)peopleSuggesterGameInviteSuggestionsWithLimit:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  v5 = objc_alloc_init(_PSContactSuggester);
  v6 = [v5 gameCenterSuggestionsWithMaxSuggestions:-[GKFriendSuggester calculateCoreRecencyUpperLimit:](self interactionDomains:"calculateCoreRecencyUpperLimit:" appleUsersOnly:v4) includeGroupSuggestions:0 excludeContactsByIdentifiers:{1, 1, &__NSArray0__struct}];

  return v6;
}

- (id)peopleSuggesterConvertedFriendSuggestionsWithLimit:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  v5 = objc_alloc_init(_PSContactSuggester);
  v6 = [(GKFriendSuggester *)self calculateCoreRecencyUpperLimit:v4];
  v7 = [(GKFriendSuggester *)self deniedContactIDs];
  v8 = [v7 allObjects];
  v9 = [v5 gameCenterSuggestionsWithMaxSuggestions:v6 interactionDomains:0 appleUsersOnly:1 includeGroupSuggestions:0 excludeContactsByIdentifiers:v8];

  v10 = [v9 _gkMapWithBlock:&stru_1003681B8];
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
  {
    sub_100290C04(v10, v12, v13, v14, v15, v16, v17, v18);
  }

  return v10;
}

- (void)modifyCachedSuggestions:(id)a3 modifiers:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKFriendSuggester.m", 226, "[GKFriendSuggester modifyCachedSuggestions:modifiers:handler:]"];
  v12 = [GKDispatchGroup dispatchGroupWithName:v11];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10013F69C;
  v25[3] = &unk_100360FF0;
  v25[4] = self;
  v13 = v12;
  v26 = v13;
  [v13 perform:v25];
  v14 = [objc_opt_class() serialQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10013F7C4;
  v19[3] = &unk_1003681E0;
  v20 = v13;
  v21 = v8;
  v22 = self;
  v23 = v10;
  v24 = v9;
  v15 = v9;
  v16 = v10;
  v17 = v8;
  v18 = v13;
  [v18 notifyOnQueue:v14 block:v19];
}

- (id)modifiersWithSettings:(id)a3 contactsIntegrationController:(id)a4 hasCachedSuggestions:(BOOL)a5 cachedSortedAssociationIDs:(id)a6 rerankRequester:(id)a7 transactionGroupProvider:(id)a8
{
  v11 = a5;
  v13 = a3;
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a4;
  v18 = [[GKTrimSuggestionsModifier alloc] initWithSettings:v13];
  v19 = [[GKNonFriendSuggestionModifier alloc] initWithContactsController:v17 transactionGroupProvider:v14];

  v20 = [[GKSortSuggestionsModifier alloc] initWithSettings:v13 networkRequester:v15 cachedSortedAssociationIDs:v16 transactionGroupProvider:v14 featureEnabledBlock:&stru_100368220];
  if (v11)
  {
    v21 = [GKDeniedSuggestionsModifier alloc];
    v22 = [(GKFriendSuggester *)self deniedContactIDs];
    v23 = [(GKDeniedSuggestionsModifier *)v21 initWithDeniedContactIDs:v22];

    v24 = [GKAppendSuggestionsModifier alloc];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10013FCD8;
    v30[3] = &unk_100368248;
    v25 = v19;
    v31 = v25;
    v32 = self;
    v26 = [(GKAppendSuggestionsModifier *)v24 initWithSettings:v13 suggestionsProvider:v30];
    v34[0] = v23;
    v34[1] = v25;
    v34[2] = v20;
    v34[3] = v26;
    v34[4] = v18;
    v27 = [NSArray arrayWithObjects:v34 count:5];
  }

  else
  {
    v33[0] = v19;
    v33[1] = v20;
    v33[2] = v18;
    v27 = [NSArray arrayWithObjects:v33 count:3];
  }

  return v27;
}

- (unint64_t)calculateCoreRecencyUpperLimit:(id)a3
{
  v3 = a3;
  v4 = +[GKPreferences shared];
  v5 = [v4 coreRecentUpperLimit];

  v6 = +[GKPreferences shared];
  v7 = [v6 coreRecentMultiplier];

  v8 = [v3 longValue] * v7;
  v9 = [v3 longValue];

  if (v8 < v9 || v8 > v5)
  {
    return 50;
  }

  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    v14 = [NSNumber numberWithUnsignedInteger:v8];
    v16 = 136315394;
    v17 = "[GKFriendSuggester calculateCoreRecencyUpperLimit:]";
    v18 = 2112;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Limiting upper boundry for core recent query to: %@", &v16, 0x16u);
  }

  return v8;
}

@end