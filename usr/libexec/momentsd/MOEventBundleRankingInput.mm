@interface MOEventBundleRankingInput
- (id)dictionary;
- (void)_saveToDictionary:(id)dictionary object:(id)object forKey:(id)key;
@end

@implementation MOEventBundleRankingInput

- (id)dictionary
{
  v3 = objc_opt_new();
  bundleIdentifier = [(MOEventBundleRankingInput *)self bundleIdentifier];
  uUIDString = [bundleIdentifier UUIDString];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:uUIDString forKey:@"bundleID"];

  suggestionIdentifier = [(MOEventBundleRankingInput *)self suggestionIdentifier];
  uUIDString2 = [suggestionIdentifier UUIDString];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:uUIDString2 forKey:@"suggestionID"];

  [(MOEventBundleRankingInput *)self bundleRecencyDaysElapsed];
  v8 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v8 forKey:@"bundleRecencyDaysElapsed"];

  [(MOEventBundleRankingInput *)self numAnomalyEventsNormalized];
  v9 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v9 forKey:@"numAnomalyEventsNormalized"];

  [(MOEventBundleRankingInput *)self numTrendEventsNormalized];
  v10 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v10 forKey:@"numTrendEventsNormalized"];

  [(MOEventBundleRankingInput *)self numRoutineEventsNormalized];
  v11 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v11 forKey:@"numRoutineEventsNormalized"];

  [(MOEventBundleRankingInput *)self numStateOfMindEventsNormalized];
  v12 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v12 forKey:@"numStateOfMindEventsNormalized"];

  v13 = [NSNumber numberWithUnsignedInteger:[(MOEventBundleRankingInput *)self bundleInterfaceType]];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v13 forKey:@"bundleInterfaceType"];

  v14 = [NSNumber numberWithUnsignedInteger:[(MOEventBundleRankingInput *)self bundleSubType]];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v14 forKey:@"bundleSubType"];

  v15 = [NSNumber numberWithUnsignedInteger:[(MOEventBundleRankingInput *)self bundleSuperType]];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v15 forKey:@"bundleSuperType"];

  bundleRichnessDict = [(MOEventBundleRankingInput *)self bundleRichnessDict];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:bundleRichnessDict forKey:@"bundleRichnessDict"];

  [(MOEventBundleRankingInput *)self isBundleActionSpecific];
  v17 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v17 forKey:@"isBundleActionSpecific"];

  [(MOEventBundleRankingInput *)self isBundlePlaceTypeSpecific];
  v18 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v18 forKey:@"isBundlePlaceTypeSpecific"];

  [(MOEventBundleRankingInput *)self isBundleTimeTagSpecific];
  v19 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v19 forKey:@"isBundleTimeTagSpecific"];

  [(MOEventBundleRankingInput *)self labelSpecificityNormalized];
  v20 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v20 forKey:@"labelSpecificityNormalized"];

  [(MOEventBundleRankingInput *)self interestingPOIFeature];
  v21 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v21 forKey:@"interestingPOIFeature"];

  [(MOEventBundleRankingInput *)self distanceToHomeFeatureNormalized];
  v22 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v22 forKey:@"distanceToHomeFeatureNormalized"];

  [(MOEventBundleRankingInput *)self familiarityIndexFeature];
  v23 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v23 forKey:@"familiarityIndexFeature"];

  [(MOEventBundleRankingInput *)self callDurationFeatureNormalized];
  v24 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v24 forKey:@"callDurationFeatureNormalized"];

  [(MOEventBundleRankingInput *)self burstyInteractionCountFeatureNormalized];
  v25 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v25 forKey:@"burstyInteractionCountFeatureNormalized"];

  v26 = [NSNumber numberWithBool:[(MOEventBundleRankingInput *)self multipleInteractionTypesFeature]];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v26 forKey:@"multipleInteractionTypesFeature"];

  v27 = [NSNumber numberWithInt:[(MOEventBundleRankingInput *)self contactLocationWorkFeature]];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v27 forKey:@"contactLocationWorkFeature"];

  v28 = [NSNumber numberWithBool:[(MOEventBundleRankingInput *)self groupConversationFeature]];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v28 forKey:@"groupConversationFeature"];

  [(MOEventBundleRankingInput *)self timeCorrelationScoreFeature];
  v29 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v29 forKey:@"timeCorrelationScoreFeature"];

  [(MOEventBundleRankingInput *)self labelQualityScore];
  v30 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v30 forKey:@"labelQualityScore"];

  [(MOEventBundleRankingInput *)self labelConfidenceScoreFeature];
  v31 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v31 forKey:@"labelConfidenceScoreFeature"];

  [(MOEventBundleRankingInput *)self mediaScoreFeatureNormalized];
  v32 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v32 forKey:@"mediaScoreFeatureNormalized"];

  [(MOEventBundleRankingInput *)self workoutDurationFeatureNormalized];
  v33 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v33 forKey:@"workoutDurationFeatureNormalized"];

  [(MOEventBundleRankingInput *)self shareCountFeatureNormalized];
  v34 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v34 forKey:@"shareCountFeatureNormalized"];

  v35 = [NSNumber numberWithBool:[(MOEventBundleRankingInput *)self itemFromMeFeature]];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v35 forKey:@"itemFromMeFeature"];

  [(MOEventBundleRankingInput *)self isFamilyContact];
  v36 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v36 forKey:@"isFamilyContact"];

  [(MOEventBundleRankingInput *)self isCoworkerContact];
  v37 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v37 forKey:@"isCoworkerContact"];

  v38 = [NSNumber numberWithBool:[(MOEventBundleRankingInput *)self isRepetitiveContact]];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v38 forKey:@"isRepetitiveContact"];

  [(MOEventBundleRankingInput *)self peopleDensityWeightedAverageNormalized];
  v39 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v39 forKey:@"pDensityWeightedAverageNormalized"];

  [(MOEventBundleRankingInput *)self peopleDensityMaxNormalized];
  v40 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v40 forKey:@"pDensityMaxNormalized"];

  [(MOEventBundleRankingInput *)self peopleCountWeightedSumNormalized];
  v41 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v41 forKey:@"pCountWeightedSumNormalized"];

  [(MOEventBundleRankingInput *)self peopleCountWeightedAverageNormalized];
  v42 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v42 forKey:@"pCountWeightedAverageNormalized"];

  [(MOEventBundleRankingInput *)self peopleCountMaxNormalized];
  v43 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v43 forKey:@"pCountMaxNormalized"];

  [(MOEventBundleRankingInput *)self numFamilyNormalized];
  v44 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v44 forKey:@"numFamilyNormalized"];

  [(MOEventBundleRankingInput *)self numFriendsNormalized];
  v45 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v45 forKey:@"numFriendsNormalized"];

  [(MOEventBundleRankingInput *)self numKidsNormalized];
  v46 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v46 forKey:@"numKidsNormalized"];

  [(MOEventBundleRankingInput *)self numCoworkersNormalized];
  v47 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v47 forKey:@"numCoworkersNormalized"];

  [(MOEventBundleRankingInput *)self numPetsNormalized];
  v48 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v48 forKey:@"numPetsNormalized"];

  [(MOEventBundleRankingInput *)self numOtherPersonsNormalized];
  v49 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v49 forKey:@"numOtherPersonsNormalized"];

  [(MOEventBundleRankingInput *)self viewCountNormalized];
  v50 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v50 forKey:@"suggestionViewCountNormalized"];

  v51 = [NSNumber numberWithBool:[(MOEventBundleRankingInput *)self suggestionIsDeleted]];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v51 forKey:@"suggestionIsDeleted"];

  v52 = [NSNumber numberWithBool:[(MOEventBundleRankingInput *)self suggestionIsSelected]];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v52 forKey:@"suggestionIsSelected"];

  v53 = [NSNumber numberWithBool:[(MOEventBundleRankingInput *)self suggestionQuickAddEntry]];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v53 forKey:@"suggestionQuickAddEntry"];

  v54 = [NSNumber numberWithBool:[(MOEventBundleRankingInput *)self journalEntryIsCreated]];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v54 forKey:@"journalEntryIsCreated"];

  v55 = [NSNumber numberWithBool:[(MOEventBundleRankingInput *)self journalEntryIsEdited]];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v55 forKey:@"journalEntryIsEdited"];

  v56 = [NSNumber numberWithBool:[(MOEventBundleRankingInput *)self journalEntryIsCancelled]];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v56 forKey:@"journalEntryIsCancelled"];

  v57 = [NSNumber numberWithBool:[(MOEventBundleRankingInput *)self journalEntryIsDeleted]];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v57 forKey:@"journalEntryIsDeleted"];

  [(MOEventBundleRankingInput *)self placeNameConfidence];
  v58 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v58 forKey:@"placeNameConfidence"];

  [(MOEventBundleRankingInput *)self timeAtHomeDuration];
  v59 = [NSNumber numberWithFloat:?];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v59 forKey:@"timeAtHomeDuration"];

  evergreenType = [(MOEventBundleRankingInput *)self evergreenType];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:evergreenType forKey:@"evergreenType"];

  v61 = [NSNumber numberWithBool:[(MOEventBundleRankingInput *)self isBundleAggregated]];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v61 forKey:@"isBundleAggregated"];

  v62 = [NSNumber numberWithUnsignedInteger:[(MOEventBundleRankingInput *)self summarizationGranularity]];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v62 forKey:@"summarizationGranularity"];

  v63 = [NSNumber numberWithBool:[(MOEventBundleRankingInput *)self isWorkVisit]];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v63 forKey:@"isWorkVisit"];

  v64 = [NSNumber numberWithBool:[(MOEventBundleRankingInput *)self isShortVisit]];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v64 forKey:@"isShortVisit"];

  v65 = [NSNumber numberWithBool:[(MOEventBundleRankingInput *)self isSignificantContactWithHighSignificanceScore]];
  [(MOEventBundleRankingInput *)self _saveToDictionary:v3 object:v65 forKey:@"isSignificantContactWithHighSignificanceScore"];

  return v3;
}

- (void)_saveToDictionary:(id)dictionary object:(id)object forKey:(id)key
{
  if (object)
  {
    if (key)
    {
      [dictionary setObject:object forKey:key];
    }
  }
}

@end