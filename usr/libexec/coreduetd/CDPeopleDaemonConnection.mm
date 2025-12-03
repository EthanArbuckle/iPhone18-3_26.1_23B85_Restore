@interface CDPeopleDaemonConnection
- (id)unauthorizedClientError;
- (void)adviseInteractionsForDate:(id)date usingSettings:(id)settings reply:(id)reply;
- (void)adviseInteractionsForKeywordsInString:(id)string usingSettings:(id)settings reply:(id)reply;
- (void)adviseInteractionsUsingSettings:(id)settings reply:(id)reply;
- (void)adviseSocialInteractionsForDate:(id)date andSeedContacts:(id)contacts usingSettings:(id)settings reply:(id)reply;
- (void)autocompleteSearchResultsWithPredictionContext:(id)context reply:(id)reply;
- (void)candidatesForShareSheetRanking:(id)ranking;
- (void)contactSuggestionsWithMaxSuggestions:(id)suggestions excludedContactIds:(id)ids reply:(id)reply;
- (void)countContactsUsingPredicate:(id)predicate reply:(id)reply;
- (void)countInteractionsUsingPredicate:(id)predicate reply:(id)reply;
- (void)deleteInteractionsMatchingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit reply:(id)reply;
- (void)deleteInteractionsWithBundleId:(id)id account:(id)account reply:(id)reply;
- (void)deleteInteractionsWithBundleId:(id)id domainIdentifier:(id)identifier reply:(id)reply;
- (void)deleteInteractionsWithBundleId:(id)id domainIdentifiers:(id)identifiers reply:(id)reply;
- (void)deleteInteractionsWithBundleId:(id)id reply:(id)reply;
- (void)familyRecommendedSuggestionsWithPredictionContext:(id)context reply:(id)reply;
- (void)interactionFeaturesForHandle:(id)handle reply:(id)reply;
- (void)mapsSuggestionsFromContext:(id)context maxSuggestions:(id)suggestions reply:(id)reply;
- (void)photosContactInferencesSuggestionsWithPredictionContext:(id)context reply:(id)reply;
- (void)photosRelationshipSuggestionsWithPredictionContext:(id)context reply:(id)reply;
- (void)provideFeedbackForContactsAutocompleteSuggestions:(id)suggestions;
- (void)provideMessagesPinningFeedback:(id)feedback;
- (void)queryContactsUsingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit reply:(id)reply;
- (void)queryInteractionsUsingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit reply:(id)reply;
- (void)rankCandidateContacts:(id)contacts usingSettings:(id)settings reply:(id)reply;
- (void)rankedAutocompleteSuggestionsFromContext:(id)context candidates:(id)candidates reply:(id)reply;
- (void)rankedFamilySuggestionsWithReply:(id)reply;
- (void)rankedHandlesFromCandidateHandles:(id)handles reply:(id)reply;
- (void)rankedMessagesPinsWithMaxSuggestions:(id)suggestions reply:(id)reply;
- (void)rankedNameSuggestionsFromContext:(id)context name:(id)name reply:(id)reply;
- (void)rankedSiriMLCRHandlesFromContext:(id)context handles:(id)handles reply:(id)reply;
- (void)rankedSiriNLContactSuggestionsFromContext:(id)context maxSuggestions:(id)suggestions interactionId:(id)id reply:(id)reply;
- (void)relativeAppUsageProbabilitiesForCandidateBundleIds:(id)ids daysAgo:(id)ago reply:(id)reply;
- (void)reportShareSheetTimeoutWithReply:(id)reply;
- (void)shareExtensionSuggestionsFromContext:(id)context reply:(id)reply;
- (void)suggestInteractionsFromContext:(id)context maxSuggestions:(id)suggestions reply:(id)reply;
- (void)tuneSocialAdvisorUsingSettings:(id)settings heartBeatHandler:(id)handler reply:(id)reply;
- (void)zkwSuggestionsFromContext:(id)context maxSuggestions:(id)suggestions reply:(id)reply;
@end

@implementation CDPeopleDaemonConnection

- (id)unauthorizedClientError
{
  v2 = _DKErrorDomain;
  v6 = NSLocalizedDescriptionKey;
  v7 = @"unauthorized client";
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v4 = [NSError errorWithDomain:v2 code:9 userInfo:v3];

  return v4;
}

- (void)queryInteractionsUsingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit reply:(id)reply
{
  replyCopy = reply;
  descriptorsCopy = descriptors;
  predicateCopy = predicate;
  daemon = [(CDPeopleDaemonConnection *)self daemon];
  [daemon queryInteractionsUsingPredicate:predicateCopy sortDescriptors:descriptorsCopy limit:limit reply:replyCopy];
}

- (void)queryContactsUsingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit reply:(id)reply
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    unauthorizedClientError = [(CDPeopleDaemonConnection *)self unauthorizedClientError];
    replyCopy[2](replyCopy, 0, unauthorizedClientError);
  }

  else
  {
    unauthorizedClientError = [(CDPeopleDaemonConnection *)self daemon];
    [unauthorizedClientError queryContactsUsingPredicate:predicateCopy sortDescriptors:descriptorsCopy limit:limit reply:replyCopy];
  }
}

- (void)countInteractionsUsingPredicate:(id)predicate reply:(id)reply
{
  predicateCopy = predicate;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    unauthorizedClientError = [(CDPeopleDaemonConnection *)self unauthorizedClientError];
    replyCopy[2](replyCopy, 0, unauthorizedClientError);
  }

  else
  {
    unauthorizedClientError = [(CDPeopleDaemonConnection *)self daemon];
    [unauthorizedClientError countInteractionsUsingPredicate:predicateCopy reply:replyCopy];
  }
}

- (void)countContactsUsingPredicate:(id)predicate reply:(id)reply
{
  predicateCopy = predicate;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    unauthorizedClientError = [(CDPeopleDaemonConnection *)self unauthorizedClientError];
    replyCopy[2](replyCopy, 0, unauthorizedClientError);
  }

  else
  {
    unauthorizedClientError = [(CDPeopleDaemonConnection *)self daemon];
    [unauthorizedClientError countContactsUsingPredicate:predicateCopy reply:replyCopy];
  }
}

- (void)deleteInteractionsMatchingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit reply:(id)reply
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    unauthorizedClientError = [(CDPeopleDaemonConnection *)self unauthorizedClientError];
    replyCopy[2](replyCopy, 0, unauthorizedClientError);
  }

  else
  {
    unauthorizedClientError = [(CDPeopleDaemonConnection *)self daemon];
    [unauthorizedClientError deleteInteractionsMatchingPredicate:predicateCopy sortDescriptors:descriptorsCopy limit:limit reply:replyCopy];
  }
}

- (void)deleteInteractionsWithBundleId:(id)id reply:(id)reply
{
  idCopy = id;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    unauthorizedClientError = [(CDPeopleDaemonConnection *)self unauthorizedClientError];
    replyCopy[2](replyCopy, 0, unauthorizedClientError);
  }

  else
  {
    unauthorizedClientError = [(CDPeopleDaemonConnection *)self daemon];
    [unauthorizedClientError deleteInteractionsWithBundleId:idCopy reply:replyCopy];
  }
}

- (void)deleteInteractionsWithBundleId:(id)id account:(id)account reply:(id)reply
{
  idCopy = id;
  accountCopy = account;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    unauthorizedClientError = [(CDPeopleDaemonConnection *)self unauthorizedClientError];
    replyCopy[2](replyCopy, 0, unauthorizedClientError);
  }

  else
  {
    unauthorizedClientError = [(CDPeopleDaemonConnection *)self daemon];
    [unauthorizedClientError deleteInteractionsWithBundleId:idCopy account:accountCopy reply:replyCopy];
  }
}

- (void)deleteInteractionsWithBundleId:(id)id domainIdentifier:(id)identifier reply:(id)reply
{
  idCopy = id;
  identifierCopy = identifier;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    unauthorizedClientError = [(CDPeopleDaemonConnection *)self unauthorizedClientError];
    replyCopy[2](replyCopy, 0, unauthorizedClientError);
  }

  else
  {
    unauthorizedClientError = [(CDPeopleDaemonConnection *)self daemon];
    [unauthorizedClientError deleteInteractionsWithBundleId:idCopy domainIdentifier:identifierCopy reply:replyCopy];
  }
}

- (void)deleteInteractionsWithBundleId:(id)id domainIdentifiers:(id)identifiers reply:(id)reply
{
  idCopy = id;
  identifiersCopy = identifiers;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    unauthorizedClientError = [(CDPeopleDaemonConnection *)self unauthorizedClientError];
    replyCopy[2](replyCopy, 0, unauthorizedClientError);
  }

  else
  {
    unauthorizedClientError = [(CDPeopleDaemonConnection *)self daemon];
    [unauthorizedClientError deleteInteractionsWithBundleId:idCopy domainIdentifiers:identifiersCopy reply:replyCopy];
  }
}

- (void)rankCandidateContacts:(id)contacts usingSettings:(id)settings reply:(id)reply
{
  contactsCopy = contacts;
  settingsCopy = settings;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    daemon = [(CDPeopleDaemonConnection *)self daemon];
    [daemon rankCandidateContacts:contactsCopy usingSettings:settingsCopy reply:replyCopy];
  }
}

- (void)adviseInteractionsUsingSettings:(id)settings reply:(id)reply
{
  settingsCopy = settings;
  replyCopy = reply;
  queryInteractionsOnlyAuthorization = [(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization];
  if (!settingsCopy || queryInteractionsOnlyAuthorization)
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    daemon = [(CDPeopleDaemonConnection *)self daemon];
    [daemon adviseInteractionsUsingSettings:settingsCopy reply:replyCopy];
  }
}

- (void)adviseInteractionsForDate:(id)date usingSettings:(id)settings reply:(id)reply
{
  dateCopy = date;
  settingsCopy = settings;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    daemon = [(CDPeopleDaemonConnection *)self daemon];
    [daemon adviseInteractionsForDate:dateCopy usingSettings:settingsCopy reply:replyCopy];
  }
}

- (void)adviseSocialInteractionsForDate:(id)date andSeedContacts:(id)contacts usingSettings:(id)settings reply:(id)reply
{
  dateCopy = date;
  contactsCopy = contacts;
  settingsCopy = settings;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    [(CDPeopleDaemonConnection *)self adviseSocialInteractionsForDate:dateCopy andSeedContacts:contactsCopy usingSettings:settingsCopy reply:replyCopy];
  }
}

- (void)adviseInteractionsForKeywordsInString:(id)string usingSettings:(id)settings reply:(id)reply
{
  stringCopy = string;
  settingsCopy = settings;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    daemon = [(CDPeopleDaemonConnection *)self daemon];
    [daemon adviseInteractionsForKeywordsInString:stringCopy usingSettings:settingsCopy reply:replyCopy];
  }
}

- (void)tuneSocialAdvisorUsingSettings:(id)settings heartBeatHandler:(id)handler reply:(id)reply
{
  settingsCopy = settings;
  handlerCopy = handler;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    replyCopy[2](replyCopy);
  }

  else
  {
    daemon = [(CDPeopleDaemonConnection *)self daemon];
    [daemon tuneSocialAdvisorUsingSettings:settingsCopy heartBeatHandler:handlerCopy reply:replyCopy];
  }
}

- (void)suggestInteractionsFromContext:(id)context maxSuggestions:(id)suggestions reply:(id)reply
{
  suggestionsCopy = suggestions;
  replyCopy = reply;
  contextCopy = context;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    [contextCopy setSuggestionPath:@"suggestionPathQueryInteractionsOnlyAuthorization"];
    replyCopy[2](replyCopy, &__NSArray0__struct, contextCopy);
  }

  else
  {
    daemon = [(CDPeopleDaemonConnection *)self daemon];
    [daemon suggestInteractionsFromContext:contextCopy maxSuggestions:suggestionsCopy reply:replyCopy];

    replyCopy = contextCopy;
    contextCopy = daemon;
  }
}

- (void)reportShareSheetTimeoutWithReply:(id)reply
{
  replyCopy = reply;
  daemon = [(CDPeopleDaemonConnection *)self daemon];
  [daemon reportShareSheetTimeoutWithReply:replyCopy];
}

- (void)shareExtensionSuggestionsFromContext:(id)context reply:(id)reply
{
  contextCopy = context;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    replyCopy[2](replyCopy, &__NSArray0__struct);
  }

  else
  {
    daemon = [(CDPeopleDaemonConnection *)self daemon];
    [daemon shareExtensionSuggestionsFromContext:contextCopy reply:replyCopy];
  }
}

- (void)candidatesForShareSheetRanking:(id)ranking
{
  rankingCopy = ranking;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    daemon = objc_opt_new();
    rankingCopy[2](rankingCopy);
  }

  else
  {
    daemon = [(CDPeopleDaemonConnection *)self daemon];
    [daemon candidatesForShareSheetRanking:rankingCopy];
  }
}

- (void)mapsSuggestionsFromContext:(id)context maxSuggestions:(id)suggestions reply:(id)reply
{
  contextCopy = context;
  suggestionsCopy = suggestions;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    daemon = [(CDPeopleDaemonConnection *)self daemon];
    [daemon mapsSuggestionsFromContext:contextCopy maxSuggestions:suggestionsCopy reply:replyCopy];
  }
}

- (void)zkwSuggestionsFromContext:(id)context maxSuggestions:(id)suggestions reply:(id)reply
{
  contextCopy = context;
  suggestionsCopy = suggestions;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    daemon = [(CDPeopleDaemonConnection *)self daemon];
    [daemon zkwSuggestionsFromContext:contextCopy maxSuggestions:suggestionsCopy reply:replyCopy];
  }
}

- (void)autocompleteSearchResultsWithPredictionContext:(id)context reply:(id)reply
{
  contextCopy = context;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    daemon = [(CDPeopleDaemonConnection *)self daemon];
    [daemon autocompleteSearchResultsWithPredictionContext:contextCopy reply:replyCopy];
  }
}

- (void)provideFeedbackForContactsAutocompleteSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  daemon = [(CDPeopleDaemonConnection *)self daemon];
  [daemon provideFeedbackForContactsAutocompleteSuggestions:suggestionsCopy];
}

- (void)rankedNameSuggestionsFromContext:(id)context name:(id)name reply:(id)reply
{
  contextCopy = context;
  nameCopy = name;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    daemon = [(CDPeopleDaemonConnection *)self daemon];
    [daemon rankedNameSuggestionsFromContext:contextCopy name:nameCopy reply:replyCopy];
  }
}

- (void)rankedAutocompleteSuggestionsFromContext:(id)context candidates:(id)candidates reply:(id)reply
{
  contextCopy = context;
  candidatesCopy = candidates;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    daemon = [(CDPeopleDaemonConnection *)self daemon];
    [daemon rankedAutocompleteSuggestionsFromContext:contextCopy candidates:candidatesCopy reply:replyCopy];
  }
}

- (void)rankedMessagesPinsWithMaxSuggestions:(id)suggestions reply:(id)reply
{
  suggestionsCopy = suggestions;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    daemon = [(CDPeopleDaemonConnection *)self daemon];
    [daemon rankedMessagesPinsWithMaxSuggestions:suggestionsCopy reply:replyCopy];
  }
}

- (void)provideMessagesPinningFeedback:(id)feedback
{
  feedbackCopy = feedback;
  daemon = [(CDPeopleDaemonConnection *)self daemon];
  [daemon provideMessagesPinningFeedback:feedbackCopy];
}

- (void)rankedFamilySuggestionsWithReply:(id)reply
{
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    daemon = [(CDPeopleDaemonConnection *)self daemon];
    [daemon rankedFamilySuggestionsWithReply:replyCopy];
  }
}

- (void)familyRecommendedSuggestionsWithPredictionContext:(id)context reply:(id)reply
{
  contextCopy = context;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    daemon = [(CDPeopleDaemonConnection *)self daemon];
    [daemon familyRecommendedSuggestionsWithPredictionContext:contextCopy reply:replyCopy];
  }
}

- (void)photosRelationshipSuggestionsWithPredictionContext:(id)context reply:(id)reply
{
  contextCopy = context;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    daemon = [(CDPeopleDaemonConnection *)self daemon];
    [daemon photosRelationshipSuggestionsWithPredictionContext:contextCopy reply:replyCopy];
  }
}

- (void)photosContactInferencesSuggestionsWithPredictionContext:(id)context reply:(id)reply
{
  contextCopy = context;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    daemon = [(CDPeopleDaemonConnection *)self daemon];
    [daemon photosContactInferencesSuggestionsWithPredictionContext:contextCopy reply:replyCopy];
  }
}

- (void)rankedSiriMLCRHandlesFromContext:(id)context handles:(id)handles reply:(id)reply
{
  contextCopy = context;
  handlesCopy = handles;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    daemon = [(CDPeopleDaemonConnection *)self daemon];
    [daemon rankedSiriMLCRHandlesFromContext:contextCopy handles:handlesCopy reply:replyCopy];
  }
}

- (void)rankedHandlesFromCandidateHandles:(id)handles reply:(id)reply
{
  handlesCopy = handles;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    daemon = [(CDPeopleDaemonConnection *)self daemon];
    [daemon rankedHandlesFromCandidateHandles:handlesCopy reply:replyCopy];
  }
}

- (void)relativeAppUsageProbabilitiesForCandidateBundleIds:(id)ids daysAgo:(id)ago reply:(id)reply
{
  idsCopy = ids;
  agoCopy = ago;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    daemon = [(CDPeopleDaemonConnection *)self daemon];
    [daemon relativeAppUsageProbabilitiesForCandidateBundleIds:idsCopy daysAgo:agoCopy reply:replyCopy];
  }
}

- (void)contactSuggestionsWithMaxSuggestions:(id)suggestions excludedContactIds:(id)ids reply:(id)reply
{
  suggestionsCopy = suggestions;
  idsCopy = ids;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    daemon = [(CDPeopleDaemonConnection *)self daemon];
    [daemon contactSuggestionsWithMaxSuggestions:suggestionsCopy excludedContactIds:idsCopy reply:replyCopy];
  }
}

- (void)rankedSiriNLContactSuggestionsFromContext:(id)context maxSuggestions:(id)suggestions interactionId:(id)id reply:(id)reply
{
  contextCopy = context;
  suggestionsCopy = suggestions;
  idCopy = id;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    daemon = [(CDPeopleDaemonConnection *)self daemon];
    [daemon rankedSiriNLContactSuggestionsFromContext:contextCopy maxSuggestions:suggestionsCopy interactionId:idCopy reply:replyCopy];
  }
}

- (void)interactionFeaturesForHandle:(id)handle reply:(id)reply
{
  handleCopy = handle;
  replyCopy = reply;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    daemon = [(CDPeopleDaemonConnection *)self daemon];
    [daemon interactionFeaturesForHandle:handleCopy reply:replyCopy];
  }
}

@end