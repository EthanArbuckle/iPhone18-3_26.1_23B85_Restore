@interface GKFriendSuggester
+ (id)serialQueue;
- (GKFriendSuggester)initWithDeniedContactIDs:(id)ds settingsProvider:(id)provider;
- (id)cachedContactAssocicationIDsWithContext:(id)context;
- (id)modifiersWithSettings:(id)settings contactsIntegrationController:(id)controller hasCachedSuggestions:(BOOL)suggestions cachedSortedAssociationIDs:(id)ds rerankRequester:(id)requester transactionGroupProvider:(id)provider;
- (id)peopleSuggesterConvertedFriendSuggestionsWithLimit:(unint64_t)limit;
- (id)peopleSuggesterGameInviteSuggestionsWithLimit:(unint64_t)limit;
- (id)rerankedHandlesWithContactsIntegrationController:(id)controller context:(id)context;
- (unint64_t)calculateCoreRecencyUpperLimit:(id)limit;
- (void)gameInviteSuggestionsWithHandler:(id)handler;
- (void)modifyCachedSuggestions:(id)suggestions modifiers:(id)modifiers handler:(id)handler;
- (void)suggestionsWithRerankRequester:(id)requester contactsIntegrationController:(id)controller transactionGroupProvider:(id)provider handler:(id)handler;
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

- (GKFriendSuggester)initWithDeniedContactIDs:(id)ds settingsProvider:(id)provider
{
  dsCopy = ds;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = GKFriendSuggester;
  v9 = [(GKFriendSuggester *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deniedContactIDs, ds);
    objc_storeStrong(&v10->_settingsProvider, provider);
  }

  return v10;
}

- (void)suggestionsWithRerankRequester:(id)requester contactsIntegrationController:(id)controller transactionGroupProvider:(id)provider handler:(id)handler
{
  requesterCopy = requester;
  controllerCopy = controller;
  providerCopy = provider;
  handlerCopy = handler;
  v14 = providerCopy[2](providerCopy);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10013E808;
  v19[3] = &unk_100368150;
  v19[4] = self;
  v20 = controllerCopy;
  v21 = requesterCopy;
  v22 = providerCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = providerCopy;
  v17 = requesterCopy;
  v18 = controllerCopy;
  [v14 performOnManagedObjectContext:v19];
}

- (id)cachedContactAssocicationIDsWithContext:(id)context
{
  contextCopy = context;
  v4 = +[GKCDSuggestedFriends _gkFetchRequest];
  [v4 setReturnsDistinctResults:1];
  v5 = [NSManagedObject _gkRetrieveCleanEntry:contextCopy request:v4];

  if (v5 && ([v5 expirationDate], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "_gkIsExpired:", v6), v6, (v7 & 1) == 0))
  {
    contactAssociationIDs = [v5 contactAssociationIDs];
  }

  else
  {
    contactAssociationIDs = 0;
  }

  return contactAssociationIDs;
}

- (id)rerankedHandlesWithContactsIntegrationController:(id)controller context:(id)context
{
  controllerCopy = controller;
  contextCopy = context;
  v8 = [(GKFriendSuggester *)self cachedContactAssocicationIDsWithContext:contextCopy];
  v9 = [NSSet setWithArray:v8];
  v10 = [controllerCopy handleMapForContactAssociationIDs:v9 withContext:contextCopy];

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

- (void)gameInviteSuggestionsWithHandler:(id)handler
{
  handlerCopy = handler;
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
  serialQueue = [objc_opt_class() serialQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10013F1EC;
  v11[3] = &unk_100360FC8;
  v12 = v7;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = v7;
  [v10 notifyOnQueue:serialQueue block:v11];
}

- (id)peopleSuggesterGameInviteSuggestionsWithLimit:(unint64_t)limit
{
  v4 = [NSNumber numberWithUnsignedInteger:limit];
  v5 = objc_alloc_init(_PSContactSuggester);
  v6 = [v5 gameCenterSuggestionsWithMaxSuggestions:-[GKFriendSuggester calculateCoreRecencyUpperLimit:](self interactionDomains:"calculateCoreRecencyUpperLimit:" appleUsersOnly:v4) includeGroupSuggestions:0 excludeContactsByIdentifiers:{1, 1, &__NSArray0__struct}];

  return v6;
}

- (id)peopleSuggesterConvertedFriendSuggestionsWithLimit:(unint64_t)limit
{
  v4 = [NSNumber numberWithUnsignedInteger:limit];
  v5 = objc_alloc_init(_PSContactSuggester);
  v6 = [(GKFriendSuggester *)self calculateCoreRecencyUpperLimit:v4];
  deniedContactIDs = [(GKFriendSuggester *)self deniedContactIDs];
  allObjects = [deniedContactIDs allObjects];
  v9 = [v5 gameCenterSuggestionsWithMaxSuggestions:v6 interactionDomains:0 appleUsersOnly:1 includeGroupSuggestions:0 excludeContactsByIdentifiers:allObjects];

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

- (void)modifyCachedSuggestions:(id)suggestions modifiers:(id)modifiers handler:(id)handler
{
  suggestionsCopy = suggestions;
  modifiersCopy = modifiers;
  handlerCopy = handler;
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
  serialQueue = [objc_opt_class() serialQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10013F7C4;
  v19[3] = &unk_1003681E0;
  v20 = v13;
  v21 = suggestionsCopy;
  selfCopy = self;
  v23 = handlerCopy;
  v24 = modifiersCopy;
  v15 = modifiersCopy;
  v16 = handlerCopy;
  v17 = suggestionsCopy;
  v18 = v13;
  [v18 notifyOnQueue:serialQueue block:v19];
}

- (id)modifiersWithSettings:(id)settings contactsIntegrationController:(id)controller hasCachedSuggestions:(BOOL)suggestions cachedSortedAssociationIDs:(id)ds rerankRequester:(id)requester transactionGroupProvider:(id)provider
{
  suggestionsCopy = suggestions;
  settingsCopy = settings;
  providerCopy = provider;
  requesterCopy = requester;
  dsCopy = ds;
  controllerCopy = controller;
  v18 = [[GKTrimSuggestionsModifier alloc] initWithSettings:settingsCopy];
  v19 = [[GKNonFriendSuggestionModifier alloc] initWithContactsController:controllerCopy transactionGroupProvider:providerCopy];

  v20 = [[GKSortSuggestionsModifier alloc] initWithSettings:settingsCopy networkRequester:requesterCopy cachedSortedAssociationIDs:dsCopy transactionGroupProvider:providerCopy featureEnabledBlock:&stru_100368220];
  if (suggestionsCopy)
  {
    v21 = [GKDeniedSuggestionsModifier alloc];
    deniedContactIDs = [(GKFriendSuggester *)self deniedContactIDs];
    v23 = [(GKDeniedSuggestionsModifier *)v21 initWithDeniedContactIDs:deniedContactIDs];

    v24 = [GKAppendSuggestionsModifier alloc];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10013FCD8;
    v30[3] = &unk_100368248;
    v25 = v19;
    v31 = v25;
    selfCopy = self;
    v26 = [(GKAppendSuggestionsModifier *)v24 initWithSettings:settingsCopy suggestionsProvider:v30];
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

- (unint64_t)calculateCoreRecencyUpperLimit:(id)limit
{
  limitCopy = limit;
  v4 = +[GKPreferences shared];
  coreRecentUpperLimit = [v4 coreRecentUpperLimit];

  v6 = +[GKPreferences shared];
  coreRecentMultiplier = [v6 coreRecentMultiplier];

  v8 = [limitCopy longValue] * coreRecentMultiplier;
  longValue = [limitCopy longValue];

  if (v8 < longValue || v8 > coreRecentUpperLimit)
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