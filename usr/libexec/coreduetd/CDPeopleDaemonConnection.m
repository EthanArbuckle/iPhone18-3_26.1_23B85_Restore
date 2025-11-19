@interface CDPeopleDaemonConnection
- (id)unauthorizedClientError;
- (void)adviseInteractionsForDate:(id)a3 usingSettings:(id)a4 reply:(id)a5;
- (void)adviseInteractionsForKeywordsInString:(id)a3 usingSettings:(id)a4 reply:(id)a5;
- (void)adviseInteractionsUsingSettings:(id)a3 reply:(id)a4;
- (void)adviseSocialInteractionsForDate:(id)a3 andSeedContacts:(id)a4 usingSettings:(id)a5 reply:(id)a6;
- (void)autocompleteSearchResultsWithPredictionContext:(id)a3 reply:(id)a4;
- (void)candidatesForShareSheetRanking:(id)a3;
- (void)contactSuggestionsWithMaxSuggestions:(id)a3 excludedContactIds:(id)a4 reply:(id)a5;
- (void)countContactsUsingPredicate:(id)a3 reply:(id)a4;
- (void)countInteractionsUsingPredicate:(id)a3 reply:(id)a4;
- (void)deleteInteractionsMatchingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 reply:(id)a6;
- (void)deleteInteractionsWithBundleId:(id)a3 account:(id)a4 reply:(id)a5;
- (void)deleteInteractionsWithBundleId:(id)a3 domainIdentifier:(id)a4 reply:(id)a5;
- (void)deleteInteractionsWithBundleId:(id)a3 domainIdentifiers:(id)a4 reply:(id)a5;
- (void)deleteInteractionsWithBundleId:(id)a3 reply:(id)a4;
- (void)familyRecommendedSuggestionsWithPredictionContext:(id)a3 reply:(id)a4;
- (void)interactionFeaturesForHandle:(id)a3 reply:(id)a4;
- (void)mapsSuggestionsFromContext:(id)a3 maxSuggestions:(id)a4 reply:(id)a5;
- (void)photosContactInferencesSuggestionsWithPredictionContext:(id)a3 reply:(id)a4;
- (void)photosRelationshipSuggestionsWithPredictionContext:(id)a3 reply:(id)a4;
- (void)provideFeedbackForContactsAutocompleteSuggestions:(id)a3;
- (void)provideMessagesPinningFeedback:(id)a3;
- (void)queryContactsUsingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 reply:(id)a6;
- (void)queryInteractionsUsingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 reply:(id)a6;
- (void)rankCandidateContacts:(id)a3 usingSettings:(id)a4 reply:(id)a5;
- (void)rankedAutocompleteSuggestionsFromContext:(id)a3 candidates:(id)a4 reply:(id)a5;
- (void)rankedFamilySuggestionsWithReply:(id)a3;
- (void)rankedHandlesFromCandidateHandles:(id)a3 reply:(id)a4;
- (void)rankedMessagesPinsWithMaxSuggestions:(id)a3 reply:(id)a4;
- (void)rankedNameSuggestionsFromContext:(id)a3 name:(id)a4 reply:(id)a5;
- (void)rankedSiriMLCRHandlesFromContext:(id)a3 handles:(id)a4 reply:(id)a5;
- (void)rankedSiriNLContactSuggestionsFromContext:(id)a3 maxSuggestions:(id)a4 interactionId:(id)a5 reply:(id)a6;
- (void)relativeAppUsageProbabilitiesForCandidateBundleIds:(id)a3 daysAgo:(id)a4 reply:(id)a5;
- (void)reportShareSheetTimeoutWithReply:(id)a3;
- (void)shareExtensionSuggestionsFromContext:(id)a3 reply:(id)a4;
- (void)suggestInteractionsFromContext:(id)a3 maxSuggestions:(id)a4 reply:(id)a5;
- (void)tuneSocialAdvisorUsingSettings:(id)a3 heartBeatHandler:(id)a4 reply:(id)a5;
- (void)zkwSuggestionsFromContext:(id)a3 maxSuggestions:(id)a4 reply:(id)a5;
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

- (void)queryInteractionsUsingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 reply:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(CDPeopleDaemonConnection *)self daemon];
  [v13 queryInteractionsUsingPredicate:v12 sortDescriptors:v11 limit:a5 reply:v10];
}

- (void)queryContactsUsingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 reply:(id)a6
{
  v13 = a3;
  v10 = a4;
  v11 = a6;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v12 = [(CDPeopleDaemonConnection *)self unauthorizedClientError];
    v11[2](v11, 0, v12);
  }

  else
  {
    v12 = [(CDPeopleDaemonConnection *)self daemon];
    [v12 queryContactsUsingPredicate:v13 sortDescriptors:v10 limit:a5 reply:v11];
  }
}

- (void)countInteractionsUsingPredicate:(id)a3 reply:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v7 = [(CDPeopleDaemonConnection *)self unauthorizedClientError];
    v6[2](v6, 0, v7);
  }

  else
  {
    v7 = [(CDPeopleDaemonConnection *)self daemon];
    [v7 countInteractionsUsingPredicate:v8 reply:v6];
  }
}

- (void)countContactsUsingPredicate:(id)a3 reply:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v7 = [(CDPeopleDaemonConnection *)self unauthorizedClientError];
    v6[2](v6, 0, v7);
  }

  else
  {
    v7 = [(CDPeopleDaemonConnection *)self daemon];
    [v7 countContactsUsingPredicate:v8 reply:v6];
  }
}

- (void)deleteInteractionsMatchingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 reply:(id)a6
{
  v13 = a3;
  v10 = a4;
  v11 = a6;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v12 = [(CDPeopleDaemonConnection *)self unauthorizedClientError];
    v11[2](v11, 0, v12);
  }

  else
  {
    v12 = [(CDPeopleDaemonConnection *)self daemon];
    [v12 deleteInteractionsMatchingPredicate:v13 sortDescriptors:v10 limit:a5 reply:v11];
  }
}

- (void)deleteInteractionsWithBundleId:(id)a3 reply:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v7 = [(CDPeopleDaemonConnection *)self unauthorizedClientError];
    v6[2](v6, 0, v7);
  }

  else
  {
    v7 = [(CDPeopleDaemonConnection *)self daemon];
    [v7 deleteInteractionsWithBundleId:v8 reply:v6];
  }
}

- (void)deleteInteractionsWithBundleId:(id)a3 account:(id)a4 reply:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v10 = [(CDPeopleDaemonConnection *)self unauthorizedClientError];
    v9[2](v9, 0, v10);
  }

  else
  {
    v10 = [(CDPeopleDaemonConnection *)self daemon];
    [v10 deleteInteractionsWithBundleId:v11 account:v8 reply:v9];
  }
}

- (void)deleteInteractionsWithBundleId:(id)a3 domainIdentifier:(id)a4 reply:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v10 = [(CDPeopleDaemonConnection *)self unauthorizedClientError];
    v9[2](v9, 0, v10);
  }

  else
  {
    v10 = [(CDPeopleDaemonConnection *)self daemon];
    [v10 deleteInteractionsWithBundleId:v11 domainIdentifier:v8 reply:v9];
  }
}

- (void)deleteInteractionsWithBundleId:(id)a3 domainIdentifiers:(id)a4 reply:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v10 = [(CDPeopleDaemonConnection *)self unauthorizedClientError];
    v9[2](v9, 0, v10);
  }

  else
  {
    v10 = [(CDPeopleDaemonConnection *)self daemon];
    [v10 deleteInteractionsWithBundleId:v11 domainIdentifiers:v8 reply:v9];
  }
}

- (void)rankCandidateContacts:(id)a3 usingSettings:(id)a4 reply:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v9[2](v9, 0);
  }

  else
  {
    v10 = [(CDPeopleDaemonConnection *)self daemon];
    [v10 rankCandidateContacts:v11 usingSettings:v8 reply:v9];
  }
}

- (void)adviseInteractionsUsingSettings:(id)a3 reply:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization];
  if (!v9 || v7)
  {
    v6[2](v6, 0);
  }

  else
  {
    v8 = [(CDPeopleDaemonConnection *)self daemon];
    [v8 adviseInteractionsUsingSettings:v9 reply:v6];
  }
}

- (void)adviseInteractionsForDate:(id)a3 usingSettings:(id)a4 reply:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v9[2](v9, 0);
  }

  else
  {
    v10 = [(CDPeopleDaemonConnection *)self daemon];
    [v10 adviseInteractionsForDate:v11 usingSettings:v8 reply:v9];
  }
}

- (void)adviseSocialInteractionsForDate:(id)a3 andSeedContacts:(id)a4 usingSettings:(id)a5 reply:(id)a6
{
  v13 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v12[2](v12, 0);
  }

  else
  {
    [(CDPeopleDaemonConnection *)self adviseSocialInteractionsForDate:v13 andSeedContacts:v10 usingSettings:v11 reply:v12];
  }
}

- (void)adviseInteractionsForKeywordsInString:(id)a3 usingSettings:(id)a4 reply:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v9[2](v9, 0);
  }

  else
  {
    v10 = [(CDPeopleDaemonConnection *)self daemon];
    [v10 adviseInteractionsForKeywordsInString:v11 usingSettings:v8 reply:v9];
  }
}

- (void)tuneSocialAdvisorUsingSettings:(id)a3 heartBeatHandler:(id)a4 reply:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v9[2](v9);
  }

  else
  {
    v10 = [(CDPeopleDaemonConnection *)self daemon];
    [v10 tuneSocialAdvisorUsingSettings:v11 heartBeatHandler:v8 reply:v9];
  }
}

- (void)suggestInteractionsFromContext:(id)a3 maxSuggestions:(id)a4 reply:(id)a5
{
  v11 = a4;
  v8 = a5;
  v9 = a3;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    [v9 setSuggestionPath:@"suggestionPathQueryInteractionsOnlyAuthorization"];
    v8[2](v8, &__NSArray0__struct, v9);
  }

  else
  {
    v10 = [(CDPeopleDaemonConnection *)self daemon];
    [v10 suggestInteractionsFromContext:v9 maxSuggestions:v11 reply:v8];

    v8 = v9;
    v9 = v10;
  }
}

- (void)reportShareSheetTimeoutWithReply:(id)a3
{
  v4 = a3;
  v5 = [(CDPeopleDaemonConnection *)self daemon];
  [v5 reportShareSheetTimeoutWithReply:v4];
}

- (void)shareExtensionSuggestionsFromContext:(id)a3 reply:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v6[2](v6, &__NSArray0__struct);
  }

  else
  {
    v7 = [(CDPeopleDaemonConnection *)self daemon];
    [v7 shareExtensionSuggestionsFromContext:v8 reply:v6];
  }
}

- (void)candidatesForShareSheetRanking:(id)a3
{
  v4 = a3;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v5 = objc_opt_new();
    v4[2](v4);
  }

  else
  {
    v5 = [(CDPeopleDaemonConnection *)self daemon];
    [v5 candidatesForShareSheetRanking:v4];
  }
}

- (void)mapsSuggestionsFromContext:(id)a3 maxSuggestions:(id)a4 reply:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v9[2](v9, 0);
  }

  else
  {
    v10 = [(CDPeopleDaemonConnection *)self daemon];
    [v10 mapsSuggestionsFromContext:v11 maxSuggestions:v8 reply:v9];
  }
}

- (void)zkwSuggestionsFromContext:(id)a3 maxSuggestions:(id)a4 reply:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v9[2](v9, 0);
  }

  else
  {
    v10 = [(CDPeopleDaemonConnection *)self daemon];
    [v10 zkwSuggestionsFromContext:v11 maxSuggestions:v8 reply:v9];
  }
}

- (void)autocompleteSearchResultsWithPredictionContext:(id)a3 reply:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v6[2](v6, 0);
  }

  else
  {
    v7 = [(CDPeopleDaemonConnection *)self daemon];
    [v7 autocompleteSearchResultsWithPredictionContext:v8 reply:v6];
  }
}

- (void)provideFeedbackForContactsAutocompleteSuggestions:(id)a3
{
  v4 = a3;
  v5 = [(CDPeopleDaemonConnection *)self daemon];
  [v5 provideFeedbackForContactsAutocompleteSuggestions:v4];
}

- (void)rankedNameSuggestionsFromContext:(id)a3 name:(id)a4 reply:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v9[2](v9, 0);
  }

  else
  {
    v10 = [(CDPeopleDaemonConnection *)self daemon];
    [v10 rankedNameSuggestionsFromContext:v11 name:v8 reply:v9];
  }
}

- (void)rankedAutocompleteSuggestionsFromContext:(id)a3 candidates:(id)a4 reply:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v9[2](v9, 0);
  }

  else
  {
    v10 = [(CDPeopleDaemonConnection *)self daemon];
    [v10 rankedAutocompleteSuggestionsFromContext:v11 candidates:v8 reply:v9];
  }
}

- (void)rankedMessagesPinsWithMaxSuggestions:(id)a3 reply:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v6[2](v6, 0);
  }

  else
  {
    v7 = [(CDPeopleDaemonConnection *)self daemon];
    [v7 rankedMessagesPinsWithMaxSuggestions:v8 reply:v6];
  }
}

- (void)provideMessagesPinningFeedback:(id)a3
{
  v4 = a3;
  v5 = [(CDPeopleDaemonConnection *)self daemon];
  [v5 provideMessagesPinningFeedback:v4];
}

- (void)rankedFamilySuggestionsWithReply:(id)a3
{
  v5 = a3;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v5[2](v5, 0);
  }

  else
  {
    v4 = [(CDPeopleDaemonConnection *)self daemon];
    [v4 rankedFamilySuggestionsWithReply:v5];
  }
}

- (void)familyRecommendedSuggestionsWithPredictionContext:(id)a3 reply:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v6[2](v6, 0);
  }

  else
  {
    v7 = [(CDPeopleDaemonConnection *)self daemon];
    [v7 familyRecommendedSuggestionsWithPredictionContext:v8 reply:v6];
  }
}

- (void)photosRelationshipSuggestionsWithPredictionContext:(id)a3 reply:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v6[2](v6, 0);
  }

  else
  {
    v7 = [(CDPeopleDaemonConnection *)self daemon];
    [v7 photosRelationshipSuggestionsWithPredictionContext:v8 reply:v6];
  }
}

- (void)photosContactInferencesSuggestionsWithPredictionContext:(id)a3 reply:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v6[2](v6, 0);
  }

  else
  {
    v7 = [(CDPeopleDaemonConnection *)self daemon];
    [v7 photosContactInferencesSuggestionsWithPredictionContext:v8 reply:v6];
  }
}

- (void)rankedSiriMLCRHandlesFromContext:(id)a3 handles:(id)a4 reply:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v9[2](v9, 0);
  }

  else
  {
    v10 = [(CDPeopleDaemonConnection *)self daemon];
    [v10 rankedSiriMLCRHandlesFromContext:v11 handles:v8 reply:v9];
  }
}

- (void)rankedHandlesFromCandidateHandles:(id)a3 reply:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v6[2](v6, 0);
  }

  else
  {
    v7 = [(CDPeopleDaemonConnection *)self daemon];
    [v7 rankedHandlesFromCandidateHandles:v8 reply:v6];
  }
}

- (void)relativeAppUsageProbabilitiesForCandidateBundleIds:(id)a3 daysAgo:(id)a4 reply:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v9[2](v9, 0);
  }

  else
  {
    v10 = [(CDPeopleDaemonConnection *)self daemon];
    [v10 relativeAppUsageProbabilitiesForCandidateBundleIds:v11 daysAgo:v8 reply:v9];
  }
}

- (void)contactSuggestionsWithMaxSuggestions:(id)a3 excludedContactIds:(id)a4 reply:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v9[2](v9, 0);
  }

  else
  {
    v10 = [(CDPeopleDaemonConnection *)self daemon];
    [v10 contactSuggestionsWithMaxSuggestions:v11 excludedContactIds:v8 reply:v9];
  }
}

- (void)rankedSiriNLContactSuggestionsFromContext:(id)a3 maxSuggestions:(id)a4 interactionId:(id)a5 reply:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v12[2](v12, 0);
  }

  else
  {
    v13 = [(CDPeopleDaemonConnection *)self daemon];
    [v13 rankedSiriNLContactSuggestionsFromContext:v14 maxSuggestions:v10 interactionId:v11 reply:v12];
  }
}

- (void)interactionFeaturesForHandle:(id)a3 reply:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(CDPeopleDaemonConnection *)self queryInteractionsOnlyAuthorization])
  {
    v6[2](v6, 0);
  }

  else
  {
    v7 = [(CDPeopleDaemonConnection *)self daemon];
    [v7 interactionFeaturesForHandle:v8 reply:v6];
  }
}

@end