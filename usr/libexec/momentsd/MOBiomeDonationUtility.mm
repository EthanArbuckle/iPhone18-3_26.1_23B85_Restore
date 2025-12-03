@interface MOBiomeDonationUtility
+ (int)mapOnboardingFlowCompletion:(unint64_t)completion;
- (MOBiomeDonationUtility)init;
- (id)convertAction:(id)action;
- (id)convertClusterMetadata:(id)metadata;
- (id)convertEvent:(id)event;
- (id)convertEventBundle:(id)bundle;
- (id)convertMetadataForRankgDictionary:(id)dictionary;
- (id)convertOutlierMetadata:(id)metadata;
- (id)convertPerson:(id)person;
- (id)convertPlace:(id)place;
- (id)convertResource:(id)resource;
- (int)mapBurstyInteractionCount:(unint64_t)count;
- (int)mapCallDurationType:(double)type;
- (int)mapDistanceToHomeInMiles:(double)miles;
- (int)mapGEOPOICategory:(id)category;
- (int)mapLabelConfidenceScore:(float)score;
- (int)mapMediaGenre:(id)genre;
- (int)mapMediaType:(id)type;
- (int)mapPersonRelationshipTag:(unint64_t)tag;
- (int)mapPhotoMomentInference:(id)inference;
- (int)mapSourceBundleID:(id)d;
- (int)mapTimeCorrelationScore:(float)score;
- (int)mapTimeTagType:(unint64_t)type;
- (int)mapVisitPlaceType:(unint64_t)type;
- (void)convertMediaEvent:(id)event toMediaType:(int *)type mediaGenre:(int *)genre mediaSourceAppType:(int *)appType numAudioMediaPlaySessionsPerDay:(unint64_t *)day numVideoMediaPlaySessionsPerDay:(unint64_t *)perDay numFirstPartyMediaPlaySessionsPerDay:(unint64_t *)sessionsPerDay numThirdPartyMediaPlaySessionsPerDay:(unint64_t *)self0 durationAudioMediaPlaySessionsPerDay:(double *)self1 durationVideoMediaPlaySessionsPerDay:(double *)self2;
- (void)convertSignificantContactEvent:(id)event toContactIDsInConversation:(id)conversation callLikeMechanismIncluded:(BOOL *)included textLikeMechanismIncluded:(BOOL *)mechanismIncluded numAudioLikeInteractions:(unint64_t *)interactions numVideoLikeInteractions:(unint64_t *)likeInteractions numTextLikeInteractions:(unint64_t *)textLikeInteractions totalDurationOfCallLikeInteractions:(double *)self0 maxDurationOfCallLikeInteractions:(double *)self1 minDurationOfCallLikeInteractions:(double *)self2;
@end

@implementation MOBiomeDonationUtility

- (MOBiomeDonationUtility)init
{
  v12.receiver = self;
  v12.super_class = MOBiomeDonationUtility;
  v2 = [(MOBiomeDonationUtility *)&v12 init];
  if (v2)
  {
    v3 = [NSSet setWithArray:&off_10036DCC8];
    v4 = *(v2 + 5);
    *(v2 + 5) = v3;

    v5 = [NSSet setWithArray:&off_10036DCE0];
    v6 = *(v2 + 6);
    *(v2 + 6) = v5;

    v7 = [NSSet setWithArray:&off_10036DCF8];
    v8 = *(v2 + 7);
    *(v2 + 7) = v7;

    v9 = [NSSet setWithArray:&off_10036DD10];
    v10 = *(v2 + 8);
    *(v2 + 8) = v9;

    *(v2 + 8) = xmmword_100323190;
    *(v2 + 72) = xmmword_1003231A0;
    *(v2 + 3) = 0x4248000041200000;
    *(v2 + 8) = 1133903872;
  }

  return v2;
}

- (id)convertEventBundle:(id)bundle
{
  bundleCopy = bundle;
  source = [bundleCopy source];
  source2 = [bundleCopy source];
  source3 = [bundleCopy source];
  source4 = [bundleCopy source];
  source5 = [bundleCopy source];
  v225 = objc_opt_new();
  events = [bundleCopy events];
  v6 = [events count];

  v220 = bundleCopy;
  if (v6)
  {
    v257 = 0u;
    v256 = 0u;
    v255 = 0u;
    v254 = 0u;
    events2 = [bundleCopy events];
    v8 = [events2 countByEnumeratingWithState:&v254 objects:v265 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v255;
      v11 = 2;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v255 != v10)
          {
            objc_enumerationMutation(events2);
          }

          v13 = *(*(&v254 + 1) + 8 * i);
          eventIdentifier = [v13 eventIdentifier];
          uUIDString = [eventIdentifier UUIDString];
          [v225 addObject:uUIDString];

          if ([v13 provider] == 5)
          {
            v11 = 1;
          }
        }

        v9 = [events2 countByEnumeratingWithState:&v254 objects:v265 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 2;
    }

    bundleCopy = v220;
  }

  else
  {
    v11 = 2;
  }

  action = [bundleCopy action];
  v219 = [(MOBiomeDonationUtility *)self convertAction:action];

  v17 = objc_opt_new();
  backgroundActions = [bundleCopy backgroundActions];
  v19 = [backgroundActions count];

  if (v19)
  {
    v253 = 0u;
    v252 = 0u;
    v251 = 0u;
    v250 = 0u;
    backgroundActions2 = [bundleCopy backgroundActions];
    v21 = [backgroundActions2 countByEnumeratingWithState:&v250 objects:v264 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v251;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v251 != v23)
          {
            objc_enumerationMutation(backgroundActions2);
          }

          v25 = [(MOBiomeDonationUtility *)self convertAction:*(*(&v250 + 1) + 8 * j)];
          [v17 addObject:v25];
        }

        v22 = [backgroundActions2 countByEnumeratingWithState:&v250 objects:v264 count:16];
      }

      while (v22);
    }
  }

  metaDataForRank = [bundleCopy metaDataForRank];

  v218 = v17;
  if (!metaDataForRank)
  {
    v193 = 0;
    v194 = 0;
    goto LABEL_38;
  }

  metaDataForRank2 = [bundleCopy metaDataForRank];
  v28 = [metaDataForRank2 objectForKeyedSubscript:@"LabelConfidence"];
  if (!v28)
  {
    v194 = 0;
    goto LABEL_30;
  }

  v29 = v28;
  metaDataForRank3 = [bundleCopy metaDataForRank];
  v31 = [metaDataForRank3 objectForKeyedSubscript:@"LabelConfidence"];
  objc_opt_class();
  v32 = bundleCopy;
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    metaDataForRank2 = [v32 metaDataForRank];
    v34 = [metaDataForRank2 objectForKeyedSubscript:@"LabelConfidence"];
    [v34 floatValue];
    v194 = [(MOBiomeDonationUtility *)self mapLabelConfidenceScore:?];

    bundleCopy = v32;
LABEL_30:

    goto LABEL_32;
  }

  v194 = 0;
  bundleCopy = v32;
LABEL_32:
  metaDataForRank4 = [bundleCopy metaDataForRank];
  v36 = [metaDataForRank4 objectForKeyedSubscript:@"TimeCorrelationScore"];
  if (!v36)
  {
    v193 = 0;
    goto LABEL_36;
  }

  v37 = v36;
  metaDataForRank5 = [bundleCopy metaDataForRank];
  v39 = [metaDataForRank5 objectForKeyedSubscript:@"TimeCorrelationScore"];
  objc_opt_class();
  v40 = bundleCopy;
  v41 = objc_opt_isKindOfClass();

  if (v41)
  {
    metaDataForRank4 = [v40 metaDataForRank];
    v42 = [metaDataForRank4 objectForKeyedSubscript:@"TimeCorrelationScore"];
    [v42 floatValue];
    v193 = [(MOBiomeDonationUtility *)self mapTimeCorrelationScore:?];

    bundleCopy = v40;
LABEL_36:

    goto LABEL_38;
  }

  v193 = 0;
  bundleCopy = v40;
LABEL_38:
  if ([bundleCopy interfaceType] == 4)
  {
    place = [bundleCopy place];
    if (place)
    {
      v44 = place;
      place2 = [bundleCopy place];
      v46 = [place2 placeUserType] == 1;
    }

    else
    {
      v46 = 0;
    }

    metaDataForRank6 = [bundleCopy metaDataForRank];

    if (metaDataForRank6)
    {
      metaDataForRank7 = [bundleCopy metaDataForRank];
      v49 = [metaDataForRank7 objectForKeyedSubscript:@"callDuration"];
      [v49 doubleValue];
      v51 = v50;

      HIDWORD(v191) = [(MOBiomeDonationUtility *)self mapCallDurationType:v51];
      metaDataForRank8 = [bundleCopy metaDataForRank];
      v53 = [metaDataForRank8 objectForKeyedSubscript:@"burstyInteractionCount"];

      if (v53)
      {
        metaDataForRank9 = [bundleCopy metaDataForRank];
        v55 = [metaDataForRank9 objectForKeyedSubscript:@"burstyInteractionCount"];
        LODWORD(v191) = -[MOBiomeDonationUtility mapBurstyInteractionCount:](self, "mapBurstyInteractionCount:", [v55 intValue]);
      }

      else
      {
        LODWORD(v191) = 0;
      }

      metaDataForRank10 = [bundleCopy metaDataForRank];
      v57 = [metaDataForRank10 objectForKeyedSubscript:@"contactLocationWork"];
      bOOLValue = [v57 BOOLValue];

      if (bOOLValue)
      {
        v46 = 2;
      }

      metaDataForRank11 = [bundleCopy metaDataForRank];
      v60 = [metaDataForRank11 objectForKeyedSubscript:@"SigConType"];
      intValue = [v60 intValue];
    }

    else
    {
      intValue = 0;
      v191 = 0;
    }
  }

  else
  {
    intValue = 0;
    v191 = 0;
    v46 = 0;
  }

  place3 = [bundleCopy place];
  v192 = v46;
  if (!place3 || (v62 = place3, [bundleCopy place], v63 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v63, "distanceToHomeInMiles"), v65 = v64, v63, v62, v65 == 0.0))
  {
    v189 = 0;
    v188 = 0;
  }

  else
  {
    place4 = [bundleCopy place];
    [place4 distanceToHomeInMiles];
    v68 = v67;

    if (v68 > 0.0)
    {
      v69 = 1;
    }

    else
    {
      v69 = 2;
    }

    v189 = v69;
    v188 = [(MOBiomeDonationUtility *)self mapDistanceToHomeInMiles:v68];
  }

  v223 = objc_opt_new();
  subBundleIDs = [bundleCopy subBundleIDs];
  v71 = [subBundleIDs count];

  if (v71)
  {
    v249 = 0u;
    v248 = 0u;
    v247 = 0u;
    v246 = 0u;
    subBundleIDs2 = [bundleCopy subBundleIDs];
    v73 = [subBundleIDs2 countByEnumeratingWithState:&v246 objects:v263 count:16];
    if (v73)
    {
      v74 = v73;
      v75 = *v247;
      do
      {
        for (k = 0; k != v74; k = k + 1)
        {
          if (*v247 != v75)
          {
            objc_enumerationMutation(subBundleIDs2);
          }

          v77 = *(*(&v246 + 1) + 8 * k);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v223 addObject:v77];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              uUIDString2 = [v77 UUIDString];
              [v223 addObject:uUIDString2];
            }
          }
        }

        v74 = [subBundleIDs2 countByEnumeratingWithState:&v246 objects:v263 count:16];
      }

      while (v74);
    }

    bundleCopy = v220;
  }

  v222 = objc_opt_new();
  subSuggestionIDs = [bundleCopy subSuggestionIDs];
  v80 = [subSuggestionIDs count];

  if (v80)
  {
    v245 = 0u;
    v244 = 0u;
    v243 = 0u;
    v242 = 0u;
    subSuggestionIDs2 = [bundleCopy subSuggestionIDs];
    v82 = [subSuggestionIDs2 countByEnumeratingWithState:&v242 objects:v262 count:16];
    if (v82)
    {
      v83 = v82;
      v84 = *v243;
      do
      {
        for (m = 0; m != v83; m = m + 1)
        {
          if (*v243 != v84)
          {
            objc_enumerationMutation(subSuggestionIDs2);
          }

          v86 = *(*(&v242 + 1) + 8 * m);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v222 addObject:v86];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              uUIDString3 = [v86 UUIDString];
              [v222 addObject:uUIDString3];
            }
          }
        }

        v83 = [subSuggestionIDs2 countByEnumeratingWithState:&v242 objects:v262 count:16];
      }

      while (v83);
    }

    bundleCopy = v220;
  }

  v88 = objc_opt_new();
  resources = [bundleCopy resources];
  v90 = [resources count];

  if (v90)
  {
    v241 = 0u;
    v240 = 0u;
    v239 = 0u;
    v238 = 0u;
    resources2 = [bundleCopy resources];
    v92 = [resources2 countByEnumeratingWithState:&v238 objects:v261 count:16];
    if (v92)
    {
      v93 = v92;
      v94 = *v239;
      do
      {
        for (n = 0; n != v93; n = n + 1)
        {
          if (*v239 != v94)
          {
            objc_enumerationMutation(resources2);
          }

          v96 = [(MOBiomeDonationUtility *)self convertResource:*(*(&v238 + 1) + 8 * n)];
          [v88 addObject:v96];
        }

        v93 = [resources2 countByEnumeratingWithState:&v238 objects:v261 count:16];
      }

      while (v93);
    }
  }

  v224 = objc_opt_new();
  persons = [bundleCopy persons];
  v98 = [persons count];

  if (v98)
  {
    v237 = 0u;
    v236 = 0u;
    v235 = 0u;
    v234 = 0u;
    persons2 = [bundleCopy persons];
    v100 = [persons2 countByEnumeratingWithState:&v234 objects:v260 count:16];
    if (v100)
    {
      v101 = v100;
      v102 = *v235;
      do
      {
        for (ii = 0; ii != v101; ii = ii + 1)
        {
          if (*v235 != v102)
          {
            objc_enumerationMutation(persons2);
          }

          v104 = [(MOBiomeDonationUtility *)self convertPerson:*(*(&v234 + 1) + 8 * ii)];
          [v224 addObject:v104];
        }

        v101 = [persons2 countByEnumeratingWithState:&v234 objects:v260 count:16];
      }

      while (v101);
    }
  }

  v217 = v88;
  place5 = [bundleCopy place];
  v216 = [(MOBiomeDonationUtility *)self convertPlace:place5];

  v106 = objc_opt_new();
  places = [bundleCopy places];
  v108 = [places count];

  if (v108)
  {
    v233 = 0u;
    v232 = 0u;
    v231 = 0u;
    v230 = 0u;
    places2 = [bundleCopy places];
    v110 = [places2 countByEnumeratingWithState:&v230 objects:v259 count:16];
    if (v110)
    {
      v111 = v110;
      v112 = *v231;
      do
      {
        for (jj = 0; jj != v111; jj = jj + 1)
        {
          if (*v231 != v112)
          {
            objc_enumerationMutation(places2);
          }

          v114 = [(MOBiomeDonationUtility *)self convertPlace:*(*(&v230 + 1) + 8 * jj)];
          [v106 addObject:v114];
        }

        v111 = [places2 countByEnumeratingWithState:&v230 objects:v259 count:16];
      }

      while (v111);
    }
  }

  v221 = objc_opt_new();
  photoTraits = [bundleCopy photoTraits];
  v116 = [photoTraits count];

  if (v116)
  {
    v229 = 0u;
    v228 = 0u;
    v227 = 0u;
    v226 = 0u;
    photoTraits2 = [bundleCopy photoTraits];
    v118 = [photoTraits2 countByEnumeratingWithState:&v226 objects:v258 count:16];
    if (v118)
    {
      v119 = v118;
      v120 = *v227;
      do
      {
        for (kk = 0; kk != v119; kk = kk + 1)
        {
          if (*v227 != v120)
          {
            objc_enumerationMutation(photoTraits2);
          }

          v122 = *(*(&v226 + 1) + 8 * kk);
          name = [v122 name];
          v124 = [name length];

          if (v124)
          {
            name2 = [v122 name];
            [v221 addObject:name2];
          }
        }

        v119 = [photoTraits2 countByEnumeratingWithState:&v226 objects:v258 count:16];
      }

      while (v119);
    }

    bundleCopy = v220;
  }

  clusterMetadata = [bundleCopy clusterMetadata];
  v215 = [(MOBiomeDonationUtility *)self convertClusterMetadata:clusterMetadata];

  outlierMetadata = [bundleCopy outlierMetadata];
  v214 = [(MOBiomeDonationUtility *)self convertOutlierMetadata:outlierMetadata];

  rankingDictionary = [bundleCopy rankingDictionary];

  if (rankingDictionary)
  {
    rankingDictionary2 = [bundleCopy rankingDictionary];
    v130 = [rankingDictionary2 objectForKeyedSubscript:@"bundleGoodnessScore"];

    if (v130)
    {
      rankingDictionary3 = [bundleCopy rankingDictionary];
      v213 = [rankingDictionary3 objectForKeyedSubscript:@"bundleGoodnessScore"];
    }

    else
    {
      v213 = 0;
    }

    rankingDictionary4 = [bundleCopy rankingDictionary];
    v133 = [rankingDictionary4 objectForKeyedSubscript:@"distinctnessScore"];

    if (v133)
    {
      rankingDictionary5 = [bundleCopy rankingDictionary];
      v135 = [rankingDictionary5 objectForKeyedSubscript:@"distinctnessScore"];
    }

    else
    {
      v135 = 0;
    }

    rankingDictionary6 = [bundleCopy rankingDictionary];
    v137 = [rankingDictionary6 objectForKeyedSubscript:@"richnessScore"];

    if (v137)
    {
      rankingDictionary7 = [bundleCopy rankingDictionary];
      v139 = [rankingDictionary7 objectForKeyedSubscript:@"richnessScore"];
    }

    else
    {
      v139 = 0;
    }

    rankingDictionary8 = [bundleCopy rankingDictionary];
    v141 = [rankingDictionary8 objectForKeyedSubscript:@"engagementScore"];

    if (v141)
    {
      rankingDictionary9 = [bundleCopy rankingDictionary];
      v143 = [rankingDictionary9 objectForKeyedSubscript:@"engagementScore"];
    }

    else
    {
      v143 = 0;
    }

    rankingDictionary10 = [bundleCopy rankingDictionary];
    v145 = [rankingDictionary10 objectForKeyedSubscript:@"heuristicsScore"];

    v212 = v135;
    v204 = v139;
    v201 = v143;
    if (v145)
    {
      rankingDictionary11 = [bundleCopy rankingDictionary];
      v211 = [rankingDictionary11 objectForKeyedSubscript:@"heuristicsScore"];

      goto LABEL_139;
    }
  }

  else
  {
    v213 = 0;
    v212 = 0;
    v204 = 0;
    v201 = 0;
  }

  v211 = 0;
LABEL_139:
  v147 = source5 == 16;
  v148 = source4 == 8;
  v197 = source3 == 4;
  v149 = source2 == 2;
  v150 = source == 1;
  metaDataForRank12 = [bundleCopy metaDataForRank];
  v200 = [(MOBiomeDonationUtility *)self convertMetadataForRankgDictionary:metaDataForRank12];

  v186 = [BMMomentsEventDataEventBundle alloc];
  bundleIdentifier = [bundleCopy bundleIdentifier];
  uUIDString4 = [bundleIdentifier UUIDString];
  startDate = [bundleCopy startDate];
  endDate = [bundleCopy endDate];
  creationDate = [bundleCopy creationDate];
  expirationDate = [bundleCopy expirationDate];
  interfaceType = [bundleCopy interfaceType];
  v180 = [NSNumber numberWithBool:v150];
  v178 = [NSNumber numberWithBool:v149];
  v177 = [NSNumber numberWithBool:v197];
  v176 = [NSNumber numberWithBool:v148];
  promptLanguage = [bundleCopy promptLanguage];
  place6 = [bundleCopy place];
  placeType = [place6 placeType];
  place7 = [bundleCopy place];
  placeUserType = [place7 placeUserType];
  time = [bundleCopy time];
  timeTag = [time timeTag];
  suggestionID = [bundleCopy suggestionID];
  uUIDString5 = [suggestionID UUIDString];
  photoSource = [bundleCopy photoSource];
  v196 = [NSNumber numberWithBool:v147];
  v168 = [NSNumber numberWithBool:0];
  v165 = [NSNumber numberWithBool:0];
  persons3 = [bundleCopy persons];
  v164 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [persons3 count]);
  place8 = [bundleCopy place];
  LODWORD(v150) = [place8 placeType];
  v167 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [bundleCopy filtered]);
  [bundleCopy bundleSuperType];
  [bundleCopy bundleSubType];
  v166 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [bundleCopy isAggregatedAndSuppressed]);
  [bundleCopy summarizationGranularity];
  v163 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [bundleCopy includedInSummaryBundleOnly]);
  [bundleCopy firstCreationDate];
  HIDWORD(v161) = v11;
  HIDWORD(v160) = v150;
  v162 = HIDWORD(v159) = v194;
  LODWORD(v161) = 0;
  LODWORD(v159) = 0;
  LODWORD(v158) = 0;
  LODWORD(v157) = 0;
  LODWORD(v156) = 0;
  LODWORD(v155) = 0;
  LODWORD(v154) = timeTag;
  LODWORD(v153) = 0;
  LODWORD(v160) = 0;
  v195 = [v186 initWithBundleIdentifier:uUIDString4 bundleStartDate:startDate bundleEndDate:endDate bundleCreationDate:creationDate bundleExpirationDate:expirationDate bundleInterfaceType:interfaceType bundleSourceHealthExists:v180 bundleSourcePhotoExists:v178 bundleSourceProactiveExists:v177 bundleSourceRoutineExists:v176 bundlePromptLanguageFormat:promptLanguage bundlePromptToneID:0 bundlePromptParametersAvailability:0 bundlePlaceType:__PAIR64__(placeUserType bundlePlaceUserType:placeType) bundleBaseEventCateory:v153 bundleEventIDs:v225 bundleActionType:v219 backgroundActions:v218 bundleIsFamilyIncluded:0 bundleTimeTag:v154 isBundleResourceTypeUnknown:0 isBundleResourceTypeValueIncluded:0 isBundleResourceTypePhotoAssetsIncluded:0 isBundleResourceTypeMediaIncluded:0 isBundleResourceTypeWebLinkIncluded:0 isBundleResourceTypeInterenceTagIncluded:0 bundlEngagement:v155 bundleVersion:0 rankingVersion:0 suggestionType:v156 suggestionTimestamp:0 suggestionClientIdentifier:0 suggestionViewContainerName:0 suggestionViewVisibleTime:0 appEntryEventType:v157 appEntryEventClientIdentifier:0 appEntryEventTimestamp:0 appEntryEventStartTime:0 appEntryEventEndTime:0 appEntryEventTotalCharacters:0 appEntryEventAddedCharacters:0 clientActivityEventType:v158 clientActivityEventClientIdentifier:0 clientActivityEventTimestamp:0 suggestionIdentifier:uUIDString5 photoSourceType:photoSource photoLibraryType:v196 bundleSourcePostAnalyticsExists:v168 bundleSourcePDExists:v165 bundleSourceMotionExists:&__kCFBooleanFalse bundleSourceBooksExists:&__kCFBooleanFalse bundleSourceScreenTimeExists:&__NSArray0__struct gaPRArray:v164 bundlePCount:v159 ranking:__PAIR64__(HIDWORD(v191) labelConfidenceScore:v193) timeCorrelationScore:__PAIR64__(intValue callDuration:v191) interactionCount:__PAIR64__(v188 interactionType:v192) callPlace:v189 distanceFromHome:v160 homeAvailability:v161 workAvailability:v167 bundleVisitMapItemSource:? bundleVisitPlaceType:? bundleVisitPlaceLabelGranularity:? bundleIncludesAnomalousEvent:? isFiltered:? bundleSuperType:? bundleSubType:? isAggregatedAndSuppressed:? summarizationGranularity:? includedInSummaryBundleOnly:? subBundleIDs:? subSuggestionIDs:? firstCreationDate:? resources:? persons:? mainPlace:? otherPlaces:? photoTraits:? clusterMetadata:? outlierMetadata:? bundleGoodnessScore:? distinctnessScore:? richnessScore:? engagementScore:? heuristicsScore:? metadataForRank:?];

  return v195;
}

- (id)convertEvent:(id)event
{
  eventCopy = event;
  routineEvent = [eventCopy routineEvent];

  if (routineEvent)
  {
    routineEvent2 = [eventCopy routineEvent];
    placeUserType = [routineEvent2 placeUserType];

    if (placeUserType)
    {
      routineEvent3 = [eventCopy routineEvent];
      placeUserType2 = [routineEvent3 placeUserType];
    }

    else
    {
      placeUserType2 = 0;
    }

    routineEvent4 = [eventCopy routineEvent];
    placeType = [routineEvent4 placeType];

    if (placeType)
    {
      routineEvent5 = [eventCopy routineEvent];
      LODWORD(v76) = -[MOBiomeDonationUtility mapVisitPlaceType:](self, "mapVisitPlaceType:", [routineEvent5 placeType]);
    }

    else
    {
      LODWORD(v76) = 0;
    }

    routineEvent6 = [eventCopy routineEvent];
    poiCategory = [routineEvent6 poiCategory];

    if (poiCategory)
    {
      routineEvent7 = [eventCopy routineEvent];
      poiCategory2 = [routineEvent7 poiCategory];
      HIDWORD(v76) = [(MOBiomeDonationUtility *)self mapGEOPOICategory:poiCategory2];
    }

    else
    {
      HIDWORD(v76) = 0;
    }

    routineEvent8 = [eventCopy routineEvent];
    placeDiscovery = [routineEvent8 placeDiscovery];

    if (placeDiscovery)
    {
      routineEvent9 = [eventCopy routineEvent];
      placeDiscovery2 = [routineEvent9 placeDiscovery];
    }

    else
    {
      placeDiscovery2 = 0;
    }

    routineEvent10 = [eventCopy routineEvent];
    mode = [routineEvent10 mode];

    if (mode)
    {
      routineEvent11 = [eventCopy routineEvent];
      mode2 = [routineEvent11 mode];
    }

    else
    {
      mode2 = 0;
    }

    routineEvent12 = [eventCopy routineEvent];
    placeSource = [routineEvent12 placeSource];

    if (placeSource)
    {
      routineEvent13 = [eventCopy routineEvent];
      placeSource2 = [routineEvent13 placeSource];
    }

    else
    {
      placeSource2 = 0;
    }
  }

  else
  {
    v76 = 0;
    placeDiscovery2 = 0;
    mode2 = 0;
    placeSource2 = 0;
    placeUserType2 = 0;
  }

  workoutEvent = [eventCopy workoutEvent];
  if (!workoutEvent)
  {
    goto LABEL_24;
  }

  v26 = workoutEvent;
  workoutEvent2 = [eventCopy workoutEvent];
  workoutType = [workoutEvent2 workoutType];

  if (workoutType)
  {
    workoutEvent3 = [eventCopy workoutEvent];
    workoutType2 = [workoutEvent3 workoutType];
  }

  else
  {
LABEL_24:
    LODWORD(workoutType2) = 0;
  }

  v112[0] = 0;
  v111 = 0;
  v109 = 0;
  v110 = 0;
  v107 = 0;
  v108 = 0;
  v105 = 0.0;
  v106 = 0.0;
  mediaEvent = [eventCopy mediaEvent];
  [(MOBiomeDonationUtility *)self convertMediaEvent:mediaEvent toMediaType:v112 + 4 mediaGenre:v112 mediaSourceAppType:&v111 numAudioMediaPlaySessionsPerDay:&v110 numVideoMediaPlaySessionsPerDay:&v109 numFirstPartyMediaPlaySessionsPerDay:&v108 numThirdPartyMediaPlaySessionsPerDay:&v107 durationAudioMediaPlaySessionsPerDay:&v106 durationVideoMediaPlaySessionsPerDay:&v105];

  v31 = objc_opt_new();
  v104 = 0;
  v102 = 0;
  v103 = 0;
  v100 = 0.0;
  v101 = 0;
  v98 = 1.79769313e308;
  v99 = 0.0;
  significantContactEvent = [eventCopy significantContactEvent];
  v97 = v31;
  [(MOBiomeDonationUtility *)self convertSignificantContactEvent:significantContactEvent toContactIDsInConversation:v31 callLikeMechanismIncluded:&v104 + 1 textLikeMechanismIncluded:&v104 numAudioLikeInteractions:&v103 numVideoLikeInteractions:&v102 numTextLikeInteractions:&v101 totalDurationOfCallLikeInteractions:&v100 maxDurationOfCallLikeInteractions:&v99 minDurationOfCallLikeInteractions:&v98];

  v66 = [BMMomentsEventDataEvent alloc];
  eventIdentifier = [eventCopy eventIdentifier];
  uUIDString = [eventIdentifier UUIDString];
  startDate = [eventCopy startDate];
  endDate = [eventCopy endDate];
  creationDate = [eventCopy creationDate];
  sourceCreationDate = [eventCopy sourceCreationDate];
  expirationDate = [eventCopy expirationDate];
  provider = [eventCopy provider];
  category = [eventCopy category];
  appBundle = [eventCopy appBundle];
  v33 = v112[0];
  mediaEvent2 = [eventCopy mediaEvent];
  mediaRepetitions = [mediaEvent2 mediaRepetitions];
  mediaEvent3 = [eventCopy mediaEvent];
  mediaSumTimePlayed = [mediaEvent3 mediaSumTimePlayed];
  v61 = v111;
  mediaEvent4 = [eventCopy mediaEvent];
  mediaPlayerBundleId = [mediaEvent4 mediaPlayerBundleId];
  v67 = v110;
  if (v110)
  {
    v84 = [NSNumber numberWithUnsignedInteger:?];
  }

  else
  {
    v84 = 0;
  }

  v34 = v106;
  if (v106 <= 0.0)
  {
    v80 = 0;
  }

  else
  {
    v80 = [NSNumber numberWithDouble:v106];
  }

  v65 = v109;
  if (v109)
  {
    v83 = [NSNumber numberWithUnsignedInteger:?];
  }

  else
  {
    v83 = 0;
  }

  v35 = v105;
  if (v105 <= 0.0)
  {
    v79 = 0;
  }

  else
  {
    v79 = [NSNumber numberWithDouble:v105];
  }

  v62 = v108;
  if (v108)
  {
    v82 = [NSNumber numberWithUnsignedInteger:?];
  }

  else
  {
    v82 = 0;
  }

  v60 = v107;
  if (v107)
  {
    v81 = [NSNumber numberWithUnsignedInteger:v107];
  }

  else
  {
    v81 = 0;
  }

  significantContactEvent2 = [eventCopy significantContactEvent];
  interactionContacts = [significantContactEvent2 interactionContacts];
  v53 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [interactionContacts count]);
  significantContactEvent3 = [eventCopy significantContactEvent];
  interactionScoredContact = [significantContactEvent3 interactionScoredContact];
  contact = [interactionScoredContact contact];
  identifier = [contact identifier];
  significantContactEvent4 = [eventCopy significantContactEvent];
  interactionContactScore = [significantContactEvent4 interactionContactScore];
  v51 = [NSNumber numberWithBool:v104];
  v36 = [NSNumber numberWithBool:HIBYTE(v104)];
  v52 = [NSNumber numberWithUnsignedInteger:v101];
  v50 = [NSNumber numberWithUnsignedInteger:v103];
  v37 = [NSNumber numberWithUnsignedInteger:v102];
  v38 = [NSNumber numberWithDouble:v100];
  v39 = [NSNumber numberWithDouble:v98];
  v40 = [NSNumber numberWithDouble:v99];
  peopleDiscoveryEvent = [eventCopy peopleDiscoveryEvent];
  pCount = [peopleDiscoveryEvent pCount];
  LODWORD(v45) = v61;
  LODWORD(v44) = workoutType2;
  LODWORD(v49) = 0;
  LODWORD(v48) = 0;
  LODWORD(v47) = 0;
  LODWORD(v46) = 0;
  v78 = [v66 initWithEventIdentifier:uUIDString startDate:startDate endDate:endDate creationDate:creationDate sourceCreationDate:sourceCreationDate expirationDate:expirationDate provider:__PAIR64__(category category:provider) placeUserType:__PAIR64__(HIDWORD(v76) poiCategory:placeUserType2) placeDiscovery:__PAIR64__(mode2 locationMode:placeDiscovery2) workoutType:v44 workoutBundleID:appBundle mediaGenre:v33 mediaType:mediaRepetitions mediaRepetitions:mediaSumTimePlayed mediaSumTimePlayed:v45 sourceParty:mediaPlayerBundleId mediaPlayerBundleID:v84 numAudioMediaPlaySessionsPerDay:v80 durationAudioMediaPlaySessionsPerDay:v83 numVideoMediaPlaySessionsPerDay:v79 durationVideoMediaPlaySessionsPerDay:v82 numFirstPartyMediaPlaySessionsPerDay:v81 numThirdPartyMediaPlaySessionsPerDay:v53 numContacts:v97 contactIDsInConversation:identifier contactIDMostSignificantInConversation:interactionContactScore interactionContactScore:v51 textLikeMechanismIncluded:v36 callLikeMechanismIncluded:v52 numTextLikeInteractions:v50 numAudioLikeInteractions:v37 numVideoLikeInteractions:v38 totalDurationOfCallLikeInteractions:v39 minDurationOfCallLikeInteractions:v40 maxDurationOfCallLikeInteractions:v46 photoMomentSource:&__NSArray0__struct photoMomentInferences:&__NSArray0__struct photoMomentHolidays:0 numPhotoMomentHolidays:0 numPhotoMomentInferences:0 numPhotoMomentPublicEvents:0 numPhotoMomentPersons:0 isFamilyInPhotoMoment:0 momentIncludesFavoritedAsset:0 momentIncludesVideo:0 momentIncludesPhoto:v47 suggestedEventCategory:0 numAttendees:0 numtripParts:v48 tripMode:0 numScoredTopics:0 numItemAuthors:0 numItemRecipients:0 isGatheringComplete:0 gaPR:pCount pCount:__PAIR64__(v76 mapItemSource:placeSource2) placeType:v49 placeLabelGranularity:?];

  if (v60)
  {
  }

  if (v62)
  {
  }

  if (v35 > 0.0)
  {
  }

  if (v65)
  {
  }

  if (v34 > 0.0)
  {
  }

  if (v67)
  {
  }

  return v78;
}

- (id)convertResource:(id)resource
{
  if (resource)
  {
    resourceCopy = resource;
    v4 = [BMMomentsEventDataEventBundleResource alloc];
    type = [resourceCopy type];
    photoAssetMediaType = [resourceCopy photoAssetMediaType];
    v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [resourceCopy photoFaceCount]);
    photoCurationScore = [resourceCopy photoCurationScore];
    [resourceCopy photoOverallAestheticScore];
    v10 = v9;

    LODWORD(v11) = v10;
    v12 = [NSNumber numberWithFloat:v11];
    v13 = [v4 initWithType:type photoAssetMediaType:photoAssetMediaType photoFaceCount:v7 photoCurationScore:photoCurationScore photoOverallAestheticScore:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)convertPerson:(id)person
{
  personCopy = person;
  if (personCopy)
  {
    v5 = objc_opt_new();
    personRelationships = [personCopy personRelationships];
    v7 = [personRelationships count];

    if (v7)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = personCopy;
      obj = [personCopy personRelationships];
      v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v25;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v25 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v24 + 1) + 8 * i);
            v13 = -[MOBiomeDonationUtility mapPersonRelationshipTag:](self, "mapPersonRelationshipTag:", [v12 relationship]);
            v14 = [BMMomentsEventDataEventBundlePersonPersonRelationship alloc];
            [v12 score];
            v15 = [NSNumber numberWithDouble:?];
            v16 = [v14 initWithPersonRelationshipTag:v13 score:v15];

            [v5 addObject:v16];
          }

          v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v9);
      }

      personCopy = v22;
    }

    v17 = [BMMomentsEventDataEventBundlePerson alloc];
    v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [personCopy isMePerson]);
    [personCopy significanceScore];
    v19 = [NSNumber numberWithDouble:?];
    v20 = [v17 initWithPersonRelationships:v5 isMEPerson:v18 significanceScore:v19];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)convertAction:(id)action
{
  if (action)
  {
    actionCopy = action;
    v4 = [BMMomentsEventDataAction alloc];
    actionType = [actionCopy actionType];
    actionName = [actionCopy actionName];
    [actionCopy actionNameConfidence];
    v8 = v7;

    v9 = [NSNumber numberWithDouble:v8];
    v10 = [v4 initWithType:actionType actionName:actionName actionNameConfidence:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)convertPlace:(id)place
{
  placeCopy = place;
  v5 = placeCopy;
  if (placeCopy)
  {
    poiCategory = [placeCopy poiCategory];

    if (poiCategory)
    {
      poiCategory2 = [v5 poiCategory];
      v8 = [(MOBiomeDonationUtility *)self mapGEOPOICategory:poiCategory2];
    }

    else
    {
      v8 = 0;
    }

    v10 = [BMMomentsEventDataEventBundlePlace alloc];
    placeType = [v5 placeType];
    placeUserType = [v5 placeUserType];
    [v5 placeNameConfidence];
    v13 = [NSNumber numberWithDouble:?];
    [v5 familiarityIndexLOI];
    v14 = [NSNumber numberWithDouble:?];
    [v5 distanceToHomeInMiles];
    v15 = [NSNumber numberWithDouble:?];
    v9 = [v10 initWithPlaceInferencePlaceType:placeType placeInferenceUserSpecificPlaceType:placeUserType geoPOICategoryType:v8 placeNameConfidence:v13 familiarityIndexLOI:v14 distanceToHomeInMiles:v15];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)convertClusterMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = metadataCopy;
  if (metadataCopy && ([metadataCopy phenotype], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    phenotype = [v4 phenotype];
    v49 = [phenotype objectForKeyedSubscript:@"topLevelActivityType"];

    v47 = [phenotype objectForKeyedSubscript:@"secondLevelActivityType"];

    v7 = [phenotype objectForKeyedSubscript:@"isWeekend"];

    v8 = [phenotype objectForKeyedSubscript:@"timeTag"];

    v9 = [phenotype objectForKeyedSubscript:@"dayOfWeek"];

    v10 = [phenotype objectForKeyedSubscript:@"placeName"];

    v11 = [phenotype objectForKeyedSubscript:@"combinedPlaceType"];

    v12 = [phenotype objectForKeyedSubscript:@"enclosingAreaName"];

    v13 = [phenotype objectForKeyedSubscript:@"persons"];

    v14 = [phenotype objectForKeyedSubscript:@"withFamily"];
    if (v14)
    {
      v45 = 1;
    }

    else
    {
      v16 = [phenotype objectForKeyedSubscript:@"withCoworker"];
      if (v16)
      {
        v45 = 1;
      }

      else
      {
        v17 = [phenotype objectForKeyedSubscript:@"withFriend"];
        if (v17)
        {
          v45 = 1;
        }

        else
        {
          v18 = [phenotype objectForKeyedSubscript:@"withChild"];
          if (v18)
          {
            v45 = 1;
          }

          else
          {
            v19 = [phenotype objectForKeyedSubscript:@"withMyPet"];
            v45 = v19 != 0;

            v18 = 0;
          }

          v17 = 0;
        }

        v16 = 0;
      }
    }

    v44 = v13 != 0;
    v20 = v49 != 0;

    v21 = [phenotype objectForKeyedSubscript:@"activityTypeFromPhotoTraits"];
    v35 = v21 != 0;

    v22 = [phenotype objectForKeyedSubscript:@"placeTypeFromPhotoTraits"];
    v41 = v22 != 0;

    v23 = [phenotype objectForKeyedSubscript:@"socialEventFromPhotoTraits"];
    v38 = v23 != 0;

    v24 = [phenotype objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];
    v37 = v24 != 0;

    v39 = [BMMomentsEventDataEventBundleClusterMetadata alloc];
    v50 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isFiltered]);
    v32 = [NSNumber numberWithBool:v20];
    v48 = [NSNumber numberWithBool:v47 != 0];
    v36 = [NSNumber numberWithBool:v7 != 0];
    v34 = [NSNumber numberWithBool:v8 != 0];
    v33 = [NSNumber numberWithBool:v9 != 0];
    v40 = [NSNumber numberWithBool:v10 != 0];
    v42 = [NSNumber numberWithBool:v11 != 0];
    v43 = [NSNumber numberWithBool:v12 != 0];
    v31 = [NSNumber numberWithBool:v44];
    v25 = [NSNumber numberWithBool:v45];
    v26 = [NSNumber numberWithBool:v35];
    v27 = [NSNumber numberWithBool:v41];
    [NSNumber numberWithBool:v38];
    v28 = v46 = v4;
    v29 = [NSNumber numberWithBool:v37];
    v15 = [v39 initWithIsFiltered:v50 isTopLevelActivityTypePhenotypeDetected:v32 isSecondLevelActivityTypePhenotypeDetected:v48 isWeekendPhenotypeDetected:v36 isTimeTagPhenotypeDetected:v34 isDayOfWeekPhenotypeDetected:v33 isPlaceNamePhenotypeDetected:v40 isCombinedPlacePhenotypeDetected:v42 isEnclosingAreaNamePhenotypeDetected:v43 isPersonsPhenotypeDetected:v31 isPersonRelationshipPhenotypeDetected:v25 isActivityTypeFromPhotoTraitsPhenotypeDetected:v26 isTimeContextFromPhotoTraitsPhenotypeDetected:&__kCFBooleanFalse isLocationContextFromPhotoTraitsPhenotypeDetected:v27 isSocialContextFromPhotoTraitsPhenotypeDetected:v28 isExtraContextFromPhotoTraitsPhenotypeDetected:v29 isOtherSubjectFromPhotoTraitsPhenotypeDetected:0];

    v4 = v46;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)convertOutlierMetadata:(id)metadata
{
  if (metadata)
  {
    metadataCopy = metadata;
    v4 = [BMMomentsEventDataEventBundleOutlierMetadata alloc];
    v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [metadataCopy isSignificant]);
    [metadataCopy outlierScore];
    v6 = [NSNumber numberWithDouble:?];
    updatedDate = [metadataCopy updatedDate];

    v8 = [v4 initWithIsSignificant:v5 outlierScore:v6 updatedDate:updatedDate];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)convertMetadataForRankgDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v5 = [dictionaryCopy objectForKeyedSubscript:@"PoiCategory"];
    if (!v5)
    {
      goto LABEL_4;
    }

    v6 = v5;
    v7 = [v4 objectForKeyedSubscript:@"PoiCategory"];
    v8 = +[NSNull null];
    v9 = [v7 isEqual:v8];

    if ((v9 & 1) == 0)
    {
      v53 = [v4 objectForKeyedSubscript:@"PoiCategory"];
    }

    else
    {
LABEL_4:
      v53 = 0;
    }

    v11 = [v4 objectForKeyedSubscript:@"StateOfMindDomains"];

    v12 = &__NSArray0__struct;
    if (v11)
    {
      v12 = [v4 objectForKeyedSubscript:@"StateOfMindDomains"];
    }

    v13 = [v4 objectForKeyedSubscript:@"StateOfMindLabels"];

    if (v13)
    {
      v14 = [v4 objectForKeyedSubscript:@"StateOfMindLabels"];

      v12 = v14;
    }

    v15 = [v4 objectForKeyedSubscript:@"StateOfMindReflectiveInterval"];

    if (v15)
    {
      v16 = [v4 objectForKeyedSubscript:@"StateOfMindReflectiveInterval"];

      v12 = v16;
    }

    v17 = [v4 objectForKeyedSubscript:@"StateOfMindValenceClassification"];

    if (v17)
    {
      v18 = [v4 objectForKeyedSubscript:@"StateOfMindValenceClassification"];

      v12 = v18;
    }

    v19 = [v4 objectForKeyedSubscript:@"StateOfMindValence"];

    if (v19)
    {
      v20 = [v4 objectForKeyedSubscript:@"StateOfMindValence"];

      v52 = v20;
    }

    else
    {
      v52 = v12;
    }

    v34 = [BMMomentsEventDataEventBundleMetadataForRank alloc];
    v50 = [v4 objectForKeyedSubscript:@"dailyAggregateCallDuration"];
    v51 = [v4 objectForKeyedSubscript:@"callDuration"];
    v49 = [v4 objectForKeyedSubscript:@"burstyInteractionCount"];
    v47 = [v4 objectForKeyedSubscript:@"burstyOutgoingInteractionCount"];
    v46 = [v4 objectForKeyedSubscript:@"multipleInteractionTypes"];
    v44 = [v4 objectForKeyedSubscript:@"contactLocationWork"];
    v48 = [v4 objectForKeyedSubscript:@"isFamilyContact"];
    v45 = [v4 objectForKeyedSubscript:@"isCoworkerContact"];
    v43 = [v4 objectForKeyedSubscript:@"isRepetitiveContact"];
    v40 = [v4 objectForKeyedSubscript:@"isGroupConversation"];
    v42 = [v4 objectForKeyedSubscript:@"PeopleCountWeightedSum"];
    v33 = [v4 objectForKeyedSubscript:@"PeopleCountWeightedAverage"];
    v41 = [v4 objectForKeyedSubscript:@"PeopleCountMax"];
    v39 = [v4 objectForKeyedSubscript:@"PeopleDensityWeightedSum"];
    v38 = [v4 objectForKeyedSubscript:@"PeopleDensityWeightedAverage"];
    v37 = [v4 objectForKeyedSubscript:@"PeopleDensityMax"];
    v32 = [v4 objectForKeyedSubscript:@"PeopleDensityWeightedConfidenceSum"];
    v36 = [v4 objectForKeyedSubscript:@"PeopleDensityWeightedConfidenceAverage"];
    v31 = [v4 objectForKeyedSubscript:@"MediaTotalPlayTime"];
    v35 = [v4 objectForKeyedSubscript:@"MediaLength"];
    v30 = [v4 objectForKeyedSubscript:@"MediaActionIsRepeat"];
    v29 = [v4 objectForKeyedSubscript:@"TimeAtHomeDuration"];
    v28 = [v4 objectForKeyedSubscript:@"PhotosAtHomeCurationScore"];
    v21 = [v4 objectForKeyedSubscript:@"WorkoutDuration"];
    v27 = [v4 objectForKeyedSubscript:@"MotionActivityWalkSpan"];
    v22 = [v4 objectForKeyedSubscript:@"VisitDuration"];
    v23 = [v4 objectForKeyedSubscript:@"FamiliarityIndex"];
    v24 = [v4 objectForKeyedSubscript:@"StateOfMindLoggedIn3pApp"];
    v25 = [v4 objectForKeyedSubscript:@"StateOfMindLoggedInJournalApp"];
    v10 = [v34 initWithDailyAggregateCallDuration:v50 callDuration:v51 burstyInteractionCount:v49 burstyOutgoingInteractionCount:v47 multipleInteractionTypes:v46 contactLocationWork:v44 isFamilyContact:v48 isCoworkerContact:v45 isRepetitiveContact:v43 isGroupConversation:v40 peopleCountWeightedSum:v42 peopleCountWeightedAverage:v33 peopleCountMax:v41 peopleDensityWeightedSum:v39 peopleDensityWeightedAverage:v38 peopleDensityMax:v37 peopleDensityWeightedConfidenceSum:v32 peopleDensityWeightedConfidenceAverage:v36 mediaTotalPlayTime:v31 mediaLength:v35 mediaActionIsRepeat:v30 timeAtHomeDuration:v29 photosAtHomeCurationScore:v28 workoutDuration:v21 motionActivityWalkSpan:v27 visitDuration:v22 poiCategoryInterestingness:v53 familiarityIndex:v23 stateOfMindDomains:v52 stateOfMindLabels:&__NSArray0__struct stateOfMindReflectiveIntervals:&__NSArray0__struct stateOfMindValenceClassifications:&__NSArray0__struct stateOfMindValenceValues:&__NSArray0__struct stateOfMindLoggedIn3pApp:v24 stateOfMindLoggedInJournalApp:v25];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)convertMediaEvent:(id)event toMediaType:(int *)type mediaGenre:(int *)genre mediaSourceAppType:(int *)appType numAudioMediaPlaySessionsPerDay:(unint64_t *)day numVideoMediaPlaySessionsPerDay:(unint64_t *)perDay numFirstPartyMediaPlaySessionsPerDay:(unint64_t *)sessionsPerDay numThirdPartyMediaPlaySessionsPerDay:(unint64_t *)self0 durationAudioMediaPlaySessionsPerDay:(double *)self1 durationVideoMediaPlaySessionsPerDay:(double *)self2
{
  eventCopy = event;
  v17 = eventCopy;
  if (eventCopy)
  {
    mediaType = [eventCopy mediaType];

    if (mediaType)
    {
      mediaType2 = [v17 mediaType];
      *type = [(MOBiomeDonationUtility *)self mapMediaType:mediaType2];
    }

    mediaGenre = [v17 mediaGenre];

    if (mediaGenre)
    {
      mediaGenre2 = [v17 mediaGenre];
      *genre = [(MOBiomeDonationUtility *)self mapMediaGenre:mediaGenre2];
    }

    mediaPlayerBundleId = [v17 mediaPlayerBundleId];

    if (mediaPlayerBundleId)
    {
      mediaPlayerBundleId2 = [v17 mediaPlayerBundleId];
      *appType = [(MOBiomeDonationUtility *)self mapSourceBundleID:mediaPlayerBundleId2];
    }

    mediaPlaySessions = [v17 mediaPlaySessions];
    v25 = [mediaPlaySessions count];

    if (v25)
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v49 = v17;
      obj = [v17 mediaPlaySessions];
      v26 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v54;
        do
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v54 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v30 = *(*(&v53 + 1) + 8 * i);
            endDate = [v30 endDate];
            startDate = [v30 startDate];
            [endDate timeIntervalSinceDate:startDate];
            v34 = v33;

            mediaType3 = [v30 mediaType];
            lowercaseString = [mediaType3 lowercaseString];

            v37 = [lowercaseString containsString:@"audio"];
            mediaPlaySessionsPerDayCopy = mediaPlaySessionsPerDay;
            dayCopy = day;
            if ((v37 & 1) != 0 || (v40 = [lowercaseString containsString:@"video"], mediaPlaySessionsPerDayCopy = videoMediaPlaySessionsPerDay, dayCopy = perDay, v40))
            {
              *mediaPlaySessionsPerDayCopy = v34 + *mediaPlaySessionsPerDayCopy;
              ++*dayCopy;
            }

            bundleId = [v30 bundleId];
            lowercaseString2 = [bundleId lowercaseString];

            v43 = [lowercaseString2 containsString:@"com.apple."];
            playSessionsPerDayCopy = sessionsPerDay;
            if (v43)
            {
              goto LABEL_20;
            }

            bundleId2 = [v30 bundleId];
            if (bundleId2)
            {
              v46 = bundleId2;
              bundleId3 = [v30 bundleId];
              v48 = [bundleId3 length];

              playSessionsPerDayCopy = playSessionsPerDay;
              if (v48)
              {
LABEL_20:
                ++*playSessionsPerDayCopy;
              }
            }
          }

          v27 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
        }

        while (v27);
      }

      v17 = v49;
    }
  }
}

- (void)convertSignificantContactEvent:(id)event toContactIDsInConversation:(id)conversation callLikeMechanismIncluded:(BOOL *)included textLikeMechanismIncluded:(BOOL *)mechanismIncluded numAudioLikeInteractions:(unint64_t *)interactions numVideoLikeInteractions:(unint64_t *)likeInteractions numTextLikeInteractions:(unint64_t *)textLikeInteractions totalDurationOfCallLikeInteractions:(double *)self0 maxDurationOfCallLikeInteractions:(double *)self1 minDurationOfCallLikeInteractions:(double *)self2
{
  eventCopy = event;
  conversationCopy = conversation;
  if (eventCopy)
  {
    interactionContacts = [eventCopy interactionContacts];
    v17 = [interactionContacts count];

    if (v17)
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      interactionContacts2 = [eventCopy interactionContacts];
      v19 = [interactionContacts2 countByEnumeratingWithState:&v55 objects:v60 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v56;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v56 != v21)
            {
              objc_enumerationMutation(interactionContacts2);
            }

            contact = [*(*(&v55 + 1) + 8 * i) contact];
            identifier = [contact identifier];
            [conversationCopy addObject:identifier];
          }

          v20 = [interactionContacts2 countByEnumeratingWithState:&v55 objects:v60 count:16];
        }

        while (v20);
      }
    }

    interactions = [eventCopy interactions];
    v26 = [interactions count];

    if (v26)
    {
      v44 = conversationCopy;
      v45 = eventCopy;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      obj = [eventCopy interactions];
      v27 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v52;
        do
        {
          for (j = 0; j != v28; j = j + 1)
          {
            if (*v52 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v51 + 1) + 8 * j);
            endDate = [v31 endDate];
            startDate = [v31 startDate];
            [endDate timeIntervalSinceDate:startDate];
            v35 = v34;

            callLikeMechanismsSet = self->_callLikeMechanismsSet;
            v37 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v31 mechanism]);
            LODWORD(callLikeMechanismsSet) = [(NSSet *)callLikeMechanismsSet containsObject:v37];

            if (callLikeMechanismsSet)
            {
              *included = 1;
              *callLikeInteractions = v35 + *callLikeInteractions;
              if (v35 > *ofCallLikeInteractions)
              {
                *ofCallLikeInteractions = v35;
              }

              if (v35 < *durationOfCallLikeInteractions)
              {
                *durationOfCallLikeInteractions = v35;
              }
            }

            textLikeMechanismsSet = self->_textLikeMechanismsSet;
            v39 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v31 mechanism]);
            LODWORD(textLikeMechanismsSet) = [(NSSet *)textLikeMechanismsSet containsObject:v39];

            if (textLikeMechanismsSet)
            {
              *mechanismIncluded = 1;
            }

            audioMechanismsSet = self->_audioMechanismsSet;
            v41 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v31 mechanism]);
            LODWORD(audioMechanismsSet) = [(NSSet *)audioMechanismsSet containsObject:v41];

            if (audioMechanismsSet)
            {
              ++*interactions;
            }

            videoMechanismsSet = self->_videoMechanismsSet;
            v43 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v31 mechanism]);
            LODWORD(videoMechanismsSet) = [(NSSet *)videoMechanismsSet containsObject:v43];

            if (videoMechanismsSet)
            {
              ++*likeInteractions;
            }
          }

          v28 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
        }

        while (v28);
      }

      conversationCopy = v44;
      eventCopy = v45;
    }
  }
}

- (int)mapGEOPOICategory:(id)category
{
  categoryCopy = category;
  if ([categoryCopy isEqualToString:GEOPOICategoryAirport])
  {
    v4 = 1;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryAmusementPark])
  {
    v4 = 2;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryAnimalService])
  {
    v4 = 45;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryAquarium])
  {
    v4 = 3;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryATM])
  {
    v4 = 4;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryAutomotiveRepair])
  {
    v4 = 46;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryBakery])
  {
    v4 = 5;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryBank])
  {
    v4 = 6;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryBaseball])
  {
    v4 = 47;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryBasketball])
  {
    v4 = 48;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryBeach])
  {
    v4 = 7;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryBeauty])
  {
    v4 = 49;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryBowling])
  {
    v4 = 50;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryBrewery])
  {
    v4 = 8;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryCafe])
  {
    v4 = 9;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryCampground])
  {
    v4 = 10;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryCarRental])
  {
    v4 = 11;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryCastle])
  {
    v4 = 51;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryConventionCenter])
  {
    v4 = 52;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryDistillery])
  {
    v4 = 53;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryEVCharger])
  {
    v4 = 12;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryFairground])
  {
    v4 = 54;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryFireStation])
  {
    v4 = 13;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryFishing])
  {
    v4 = 55;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryFitnessCenter])
  {
    v4 = 14;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryFoodMarket])
  {
    v4 = 15;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryFortress])
  {
    v4 = 56;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryGasStation])
  {
    v4 = 16;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryGolf])
  {
    v4 = 57;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryGoKart])
  {
    v4 = 58;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryHiking])
  {
    v4 = 59;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryHospital])
  {
    v4 = 17;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryHotel])
  {
    v4 = 18;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryKayaking])
  {
    v4 = 60;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryLandmark])
  {
    v4 = 61;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryLaundry])
  {
    v4 = 19;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryLibrary])
  {
    v4 = 20;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryMailbox])
  {
    v4 = 62;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryMarina])
  {
    v4 = 21;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryMiniGolf])
  {
    v4 = 63;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryMovieTheater])
  {
    v4 = 22;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryMuseum])
  {
    v4 = 23;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryMusicVenue])
  {
    v4 = 64;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryNationalMonument])
  {
    v4 = 65;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryNationalPark])
  {
    v4 = 24;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryNightlife])
  {
    v4 = 25;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryPark])
  {
    v4 = 26;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryParking])
  {
    v4 = 27;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryPharmacy])
  {
    v4 = 28;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryPlanetarium])
  {
    v4 = 66;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryPolice])
  {
    v4 = 30;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryPostOffice])
  {
    v4 = 31;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryPublicTransport])
  {
    v4 = 32;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryRestaurant])
  {
    v4 = 34;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryRestroom])
  {
    v4 = 35;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryRockClimbing])
  {
    v4 = 67;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryRVPark])
  {
    v4 = 68;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategorySchool])
  {
    v4 = 36;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategorySkatePark])
  {
    v4 = 69;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategorySkating])
  {
    v4 = 70;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategorySkiing])
  {
    v4 = 71;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategorySoccer])
  {
    v4 = 72;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategorySpa])
  {
    v4 = 73;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryStadium])
  {
    v4 = 37;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryStore])
  {
    v4 = 38;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategorySurfing])
  {
    v4 = 74;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategorySwimming])
  {
    v4 = 75;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryTennis])
  {
    v4 = 76;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryTheater])
  {
    v4 = 39;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryUniversity])
  {
    v4 = 40;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryVolleyball])
  {
    v4 = 77;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryWinery])
  {
    v4 = 41;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryZoo])
  {
    v4 = 42;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryAirportGate])
  {
    v4 = 43;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryAirportTerminal])
  {
    v4 = 44;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryPlayground])
  {
    v4 = 29;
  }

  else if ([categoryCopy isEqualToString:GEOPOICategoryReligiousSite])
  {
    v4 = 33;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)mapPersonRelationshipTag:(unint64_t)tag
{
  if (tag == 1)
  {
    tagCopy = 0;
  }

  else
  {
    tagCopy = tag;
  }

  if (tag)
  {
    return tagCopy;
  }

  else
  {
    return 1;
  }
}

+ (int)mapOnboardingFlowCompletion:(unint64_t)completion
{
  if (completion > 5)
  {
    return 0;
  }

  else
  {
    return dword_1003231B8[completion];
  }
}

- (int)mapTimeTagType:(unint64_t)type
{
  if (type <= 99)
  {
    if (type == 8)
    {
      v4 = 6;
    }

    else
    {
      v4 = 0;
    }

    if (type == 7)
    {
      v5 = 5;
    }

    else
    {
      v5 = v4;
    }

    if (type == 6)
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    if (type == 5)
    {
      v7 = 18;
    }

    else
    {
      v7 = v6;
    }

    if (type <= 6)
    {
      v5 = v7;
    }

    if (type == 4)
    {
      v8 = 3;
    }

    else
    {
      v8 = 0;
    }

    if (type == 3)
    {
      v9 = 17;
    }

    else
    {
      v9 = v8;
    }

    if (type == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    if (type == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    if (type <= 2)
    {
      v9 = v11;
    }

    if (type <= 4)
    {
      return v9;
    }

    else
    {
      return v5;
    }
  }

  else if (type > 1999)
  {
    if (type == 10004)
    {
      v12 = 16;
    }

    else
    {
      v12 = 0;
    }

    if (type == 10003)
    {
      v13 = 15;
    }

    else
    {
      v13 = v12;
    }

    if (type == 10002)
    {
      v14 = 14;
    }

    else
    {
      v14 = 0;
    }

    if (type == 10001)
    {
      v15 = 13;
    }

    else
    {
      v15 = v14;
    }

    if (type <= 10002)
    {
      v16 = v15;
    }

    else
    {
      v16 = v13;
    }

    if (type == 10000)
    {
      v17 = 12;
    }

    else
    {
      v17 = 0;
    }

    if (type == 2002)
    {
      v18 = 2002;
    }

    else
    {
      v18 = v17;
    }

    if (type == 2001)
    {
      v19 = 2001;
    }

    else
    {
      v19 = 0;
    }

    if (type == 2000)
    {
      v20 = 2000;
    }

    else
    {
      v20 = v19;
    }

    if (type <= 2001)
    {
      v18 = v20;
    }

    if (type <= 10000)
    {
      return v18;
    }

    else
    {
      return v16;
    }
  }

  else
  {
    switch(type)
    {
      case 'd':
        result = 100;
        break;
      case 'e':
        result = 101;
        break;
      case 'f':
        result = 102;
        break;
      case 'g':
        result = 103;
        break;
      case 'h':
        result = 104;
        break;
      case 'i':
        result = 105;
        break;
      case 'j':
        result = 106;
        break;
      case 'k':
        result = 107;
        break;
      case 'l':
        result = 108;
        break;
      case 'm':
        result = 109;
        break;
      case 'n':
        result = 110;
        break;
      case 'o':
        result = 111;
        break;
      case 'p':
        result = 112;
        break;
      case 'q':
        result = 113;
        break;
      case 'r':
        result = 114;
        break;
      default:
        result = 0;
        break;
    }
  }

  return result;
}

- (int)mapMediaGenre:(id)genre
{
  genreCopy = genre;
  v4 = genreCopy;
  if (genreCopy && [genreCopy length])
  {
    lowercaseString = [v4 lowercaseString];
    lowercaseString2 = [@"##_GENRE" lowercaseString];
    v7 = [lowercaseString containsString:lowercaseString2];

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      lowercaseString3 = [@"##_GENRE" lowercaseString];
      v10 = [lowercaseString containsString:lowercaseString3];

      if (v10)
      {
        v8 = 2;
      }

      else
      {
        lowercaseString4 = [@"##_GENRE" lowercaseString];
        v12 = [lowercaseString containsString:lowercaseString4];

        if (v12)
        {
          v8 = 3;
        }

        else
        {
          lowercaseString5 = [@"##_GENRE" lowercaseString];
          v14 = [lowercaseString containsString:lowercaseString5];

          if (v14)
          {
            v8 = 4;
          }

          else
          {
            lowercaseString6 = [@"##_GENRE" lowercaseString];
            v16 = [lowercaseString containsString:lowercaseString6];

            if (v16)
            {
              v8 = 5;
            }

            else
            {
              lowercaseString7 = [@"##_GENRE" lowercaseString];
              v18 = [lowercaseString containsString:lowercaseString7];

              if (v18)
              {
                v8 = 6;
              }

              else
              {
                lowercaseString8 = [@"##_GENRE" lowercaseString];
                v20 = [lowercaseString containsString:lowercaseString8];

                if (v20)
                {
                  v8 = 7;
                }

                else
                {
                  lowercaseString9 = [@"##_GENRE" lowercaseString];
                  v22 = [lowercaseString containsString:lowercaseString9];

                  if (v22)
                  {
                    v8 = 8;
                  }

                  else
                  {
                    lowercaseString10 = [@"##_GENRE" lowercaseString];
                    v24 = [lowercaseString containsString:lowercaseString10];

                    if (v24)
                    {
                      v8 = 9;
                    }

                    else
                    {
                      lowercaseString11 = [@"##_GENRE" lowercaseString];
                      v26 = [lowercaseString containsString:lowercaseString11];

                      if (v26)
                      {
                        v8 = 10;
                      }

                      else
                      {
                        lowercaseString12 = [@"##_GENRE" lowercaseString];
                        v28 = [lowercaseString containsString:lowercaseString12];

                        if (v28)
                        {
                          v8 = 11;
                        }

                        else
                        {
                          lowercaseString13 = [@"##_GENRE" lowercaseString];
                          v30 = [lowercaseString containsString:lowercaseString13];

                          if (v30)
                          {
                            v8 = 12;
                          }

                          else
                          {
                            lowercaseString14 = [@"##_GENRE" lowercaseString];
                            v32 = [lowercaseString containsString:lowercaseString14];

                            if (v32)
                            {
                              v8 = 13;
                            }

                            else
                            {
                              lowercaseString15 = [@"##_GENRE" lowercaseString];
                              v34 = [lowercaseString containsString:lowercaseString15];

                              if (v34)
                              {
                                v8 = 14;
                              }

                              else
                              {
                                lowercaseString16 = [@"##_GENRE" lowercaseString];
                                v36 = [lowercaseString containsString:lowercaseString16];

                                if (v36)
                                {
                                  v8 = 15;
                                }

                                else
                                {
                                  lowercaseString17 = [@"##_GENRE" lowercaseString];
                                  v38 = [lowercaseString containsString:lowercaseString17];

                                  if (v38)
                                  {
                                    v8 = 16;
                                  }

                                  else
                                  {
                                    lowercaseString18 = [@"##_GENRE" lowercaseString];
                                    v40 = [lowercaseString containsString:lowercaseString18];

                                    if (v40)
                                    {
                                      v8 = 17;
                                    }

                                    else
                                    {
                                      lowercaseString19 = [@"##_GENRE" lowercaseString];
                                      v42 = [lowercaseString containsString:lowercaseString19];

                                      if (v42)
                                      {
                                        v8 = 18;
                                      }

                                      else
                                      {
                                        lowercaseString20 = [@"##_GENRE" lowercaseString];
                                        v44 = [lowercaseString containsString:lowercaseString20];

                                        if (v44)
                                        {
                                          v8 = 19;
                                        }

                                        else
                                        {
                                          lowercaseString21 = [@"##_GENRE" lowercaseString];
                                          v46 = [lowercaseString containsString:lowercaseString21];

                                          if (v46)
                                          {
                                            v8 = 20;
                                          }

                                          else
                                          {
                                            lowercaseString22 = [@"##_GENRE" lowercaseString];
                                            v48 = [lowercaseString containsString:lowercaseString22];

                                            if (v48)
                                            {
                                              v8 = 21;
                                            }

                                            else
                                            {
                                              lowercaseString23 = [@"##_GENRE" lowercaseString];
                                              v50 = [lowercaseString containsString:lowercaseString23];

                                              if (v50)
                                              {
                                                v8 = 22;
                                              }

                                              else
                                              {
                                                lowercaseString24 = [@"##_GENRE" lowercaseString];
                                                v52 = [lowercaseString containsString:lowercaseString24];

                                                if (v52)
                                                {
                                                  v8 = 23;
                                                }

                                                else
                                                {
                                                  lowercaseString25 = [@"##_GENRE" lowercaseString];
                                                  v54 = [lowercaseString containsString:lowercaseString25];

                                                  if (v54)
                                                  {
                                                    v8 = 24;
                                                  }

                                                  else
                                                  {
                                                    lowercaseString26 = [@"##_GENRE" lowercaseString];
                                                    v56 = [lowercaseString containsString:lowercaseString26];

                                                    if (v56)
                                                    {
                                                      v8 = 25;
                                                    }

                                                    else
                                                    {
                                                      lowercaseString27 = [@"##_GENRE" lowercaseString];
                                                      v58 = [lowercaseString containsString:lowercaseString27];

                                                      if (v58)
                                                      {
                                                        v8 = 26;
                                                      }

                                                      else
                                                      {
                                                        lowercaseString28 = [@"##_GENRE" lowercaseString];
                                                        v60 = [lowercaseString containsString:lowercaseString28];

                                                        if (v60)
                                                        {
                                                          v8 = 27;
                                                        }

                                                        else
                                                        {
                                                          lowercaseString29 = [@"##_GENRE" lowercaseString];
                                                          [lowercaseString containsString:lowercaseString29];

                                                          v8 = 28;
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int)mapMediaType:(id)type
{
  typeCopy = type;
  v4 = typeCopy;
  if (typeCopy && [typeCopy length])
  {
    lowercaseString = [v4 lowercaseString];
    if ([lowercaseString containsString:@"music"])
    {
      v6 = 1;
    }

    else if ([lowercaseString containsString:@"podcast"])
    {
      v6 = 2;
    }

    else if ([lowercaseString containsString:@"audio"])
    {
      if ([lowercaseString containsString:@"book"])
      {
        v6 = 3;
      }

      else
      {
        v6 = 6;
      }
    }

    else if ([lowercaseString containsString:@"itune"])
    {
      if ([lowercaseString containsString:@"radio"])
      {
        v6 = 5;
      }

      else
      {
        v6 = 4;
      }
    }

    else if ([lowercaseString containsString:@"video"])
    {
      v6 = 7;
    }

    else
    {
      v6 = 8;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int)mapSourceBundleID:(id)d
{
  if (!d)
  {
    return 0;
  }

  if ([d containsString:@"com.apple."])
  {
    return 1;
  }

  return 3;
}

- (int)mapVisitPlaceType:(unint64_t)type
{
  if ((type & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (type == 3)
  {
    v3 = 2;
  }

  if (type == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (type >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (int)mapPhotoMomentInference:(id)inference
{
  inferenceCopy = inference;
  if ([inferenceCopy length])
  {
    lowercaseString = [inferenceCopy lowercaseString];
    lowercaseString2 = [@"##_PHOTO_INFERENCE" lowercaseString];
    v6 = [lowercaseString containsString:lowercaseString2];

    if (v6)
    {
      v7 = 1;
    }

    else
    {
      lowercaseString3 = [inferenceCopy lowercaseString];
      lowercaseString4 = [@"##_PHOTO_INFERENCE" lowercaseString];
      v10 = [lowercaseString3 containsString:lowercaseString4];

      if (v10)
      {
        v7 = 2;
      }

      else
      {
        lowercaseString5 = [inferenceCopy lowercaseString];
        lowercaseString6 = [@"##_PHOTO_INFERENCE" lowercaseString];
        v13 = [lowercaseString5 containsString:lowercaseString6];

        if (v13)
        {
          v7 = 3;
        }

        else
        {
          lowercaseString7 = [inferenceCopy lowercaseString];
          lowercaseString8 = [@"##_PHOTO_INFERENCE" lowercaseString];
          v16 = [lowercaseString7 containsString:lowercaseString8];

          if (v16)
          {
            v7 = 4;
          }

          else
          {
            lowercaseString9 = [inferenceCopy lowercaseString];
            lowercaseString10 = [@"##_PHOTO_INFERENCE" lowercaseString];
            v19 = [lowercaseString9 containsString:lowercaseString10];

            if (v19)
            {
              v7 = 5;
            }

            else
            {
              lowercaseString11 = [inferenceCopy lowercaseString];
              lowercaseString12 = [@"##_PHOTO_INFERENCE" lowercaseString];
              v22 = [lowercaseString11 containsString:lowercaseString12];

              if (v22)
              {
                v7 = 6;
              }

              else
              {
                lowercaseString13 = [inferenceCopy lowercaseString];
                lowercaseString14 = [@"##_PHOTO_INFERENCE" lowercaseString];
                v25 = [lowercaseString13 containsString:lowercaseString14];

                if (v25)
                {
                  v7 = 7;
                }

                else
                {
                  lowercaseString15 = [inferenceCopy lowercaseString];
                  lowercaseString16 = [@"##_PHOTO_INFERENCE" lowercaseString];
                  v28 = [lowercaseString15 containsString:lowercaseString16];

                  if (v28)
                  {
                    v7 = 8;
                  }

                  else
                  {
                    lowercaseString17 = [inferenceCopy lowercaseString];
                    lowercaseString18 = [@"##_PHOTO_INFERENCE" lowercaseString];
                    v31 = [lowercaseString17 containsString:lowercaseString18];

                    if (v31)
                    {
                      v7 = 9;
                    }

                    else
                    {
                      lowercaseString19 = [inferenceCopy lowercaseString];
                      lowercaseString20 = [@"##_PHOTO_INFERENCE" lowercaseString];
                      v34 = [lowercaseString19 containsString:lowercaseString20];

                      if (v34)
                      {
                        v7 = 10;
                      }

                      else
                      {
                        lowercaseString21 = [inferenceCopy lowercaseString];
                        lowercaseString22 = [@"##_PHOTO_INFERENCE" lowercaseString];
                        v37 = [lowercaseString21 containsString:lowercaseString22];

                        if (v37)
                        {
                          v7 = 11;
                        }

                        else
                        {
                          lowercaseString23 = [inferenceCopy lowercaseString];
                          lowercaseString24 = [@"##_PHOTO_INFERENCE" lowercaseString];
                          v40 = [lowercaseString23 containsString:lowercaseString24];

                          if (v40)
                          {
                            v7 = 12;
                          }

                          else
                          {
                            lowercaseString25 = [inferenceCopy lowercaseString];
                            lowercaseString26 = [@"##_PHOTO_INFERENCE" lowercaseString];
                            v43 = [lowercaseString25 containsString:lowercaseString26];

                            if (v43)
                            {
                              v7 = 13;
                            }

                            else
                            {
                              lowercaseString27 = [inferenceCopy lowercaseString];
                              lowercaseString28 = [@"##_PHOTO_INFERENCE" lowercaseString];
                              v46 = [lowercaseString27 containsString:lowercaseString28];

                              if (v46)
                              {
                                v7 = 14;
                              }

                              else
                              {
                                lowercaseString29 = [inferenceCopy lowercaseString];
                                lowercaseString30 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                v49 = [lowercaseString29 containsString:lowercaseString30];

                                if (v49)
                                {
                                  v7 = 15;
                                }

                                else
                                {
                                  lowercaseString31 = [inferenceCopy lowercaseString];
                                  lowercaseString32 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                  v52 = [lowercaseString31 containsString:lowercaseString32];

                                  if (v52)
                                  {
                                    v7 = 16;
                                  }

                                  else
                                  {
                                    lowercaseString33 = [inferenceCopy lowercaseString];
                                    lowercaseString34 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                    v55 = [lowercaseString33 containsString:lowercaseString34];

                                    if (v55)
                                    {
                                      v7 = 17;
                                    }

                                    else
                                    {
                                      lowercaseString35 = [inferenceCopy lowercaseString];
                                      lowercaseString36 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                      v58 = [lowercaseString35 containsString:lowercaseString36];

                                      if (v58)
                                      {
                                        v7 = 18;
                                      }

                                      else
                                      {
                                        lowercaseString37 = [inferenceCopy lowercaseString];
                                        lowercaseString38 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                        v61 = [lowercaseString37 containsString:lowercaseString38];

                                        if (v61)
                                        {
                                          v7 = 19;
                                        }

                                        else
                                        {
                                          lowercaseString39 = [inferenceCopy lowercaseString];
                                          lowercaseString40 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                          v64 = [lowercaseString39 containsString:lowercaseString40];

                                          if (v64)
                                          {
                                            v7 = 20;
                                          }

                                          else
                                          {
                                            lowercaseString41 = [inferenceCopy lowercaseString];
                                            lowercaseString42 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                            v67 = [lowercaseString41 containsString:lowercaseString42];

                                            if (v67)
                                            {
                                              v7 = 21;
                                            }

                                            else
                                            {
                                              lowercaseString43 = [inferenceCopy lowercaseString];
                                              lowercaseString44 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                              v70 = [lowercaseString43 containsString:lowercaseString44];

                                              if (v70)
                                              {
                                                v7 = 22;
                                              }

                                              else
                                              {
                                                lowercaseString45 = [inferenceCopy lowercaseString];
                                                lowercaseString46 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                                v73 = [lowercaseString45 containsString:lowercaseString46];

                                                if (v73)
                                                {
                                                  v7 = 23;
                                                }

                                                else
                                                {
                                                  lowercaseString47 = [inferenceCopy lowercaseString];
                                                  lowercaseString48 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                                  v76 = [lowercaseString47 containsString:lowercaseString48];

                                                  if (v76)
                                                  {
                                                    v7 = 24;
                                                  }

                                                  else
                                                  {
                                                    lowercaseString49 = [inferenceCopy lowercaseString];
                                                    lowercaseString50 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                                    v79 = [lowercaseString49 containsString:lowercaseString50];

                                                    if (v79)
                                                    {
                                                      v7 = 25;
                                                    }

                                                    else
                                                    {
                                                      lowercaseString51 = [inferenceCopy lowercaseString];
                                                      lowercaseString52 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                                      v82 = [lowercaseString51 containsString:lowercaseString52];

                                                      if (v82)
                                                      {
                                                        v7 = 26;
                                                      }

                                                      else
                                                      {
                                                        lowercaseString53 = [inferenceCopy lowercaseString];
                                                        lowercaseString54 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                                        v85 = [lowercaseString53 containsString:lowercaseString54];

                                                        if (v85)
                                                        {
                                                          v7 = 27;
                                                        }

                                                        else
                                                        {
                                                          lowercaseString55 = [inferenceCopy lowercaseString];
                                                          lowercaseString56 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                                          v88 = [lowercaseString55 containsString:lowercaseString56];

                                                          if (v88)
                                                          {
                                                            v7 = 28;
                                                          }

                                                          else
                                                          {
                                                            lowercaseString57 = [inferenceCopy lowercaseString];
                                                            lowercaseString58 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                                            v91 = [lowercaseString57 containsString:lowercaseString58];

                                                            if (v91)
                                                            {
                                                              v7 = 29;
                                                            }

                                                            else
                                                            {
                                                              lowercaseString59 = [inferenceCopy lowercaseString];
                                                              lowercaseString60 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                                              v94 = [lowercaseString59 containsString:lowercaseString60];

                                                              if (v94)
                                                              {
                                                                v7 = 30;
                                                              }

                                                              else
                                                              {
                                                                lowercaseString61 = [inferenceCopy lowercaseString];
                                                                lowercaseString62 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                                                v97 = [lowercaseString61 containsString:lowercaseString62];

                                                                if (v97)
                                                                {
                                                                  v7 = 31;
                                                                }

                                                                else
                                                                {
                                                                  v7 = 0;
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int)mapTimeCorrelationScore:(float)score
{
  if (self->_kLowBundleQualityScoreThreshold > score)
  {
    return 1;
  }

  if (self->_kHighBundleQualityScoreThreshold <= score)
  {
    return 3;
  }

  return 2;
}

- (int)mapLabelConfidenceScore:(float)score
{
  if (self->_kLowBundleQualityScoreThreshold > score)
  {
    return 1;
  }

  if (self->_kHighBundleQualityScoreThreshold <= score)
  {
    return 3;
  }

  return 2;
}

- (int)mapCallDurationType:(double)type
{
  shortCallDurationInSecondsThreshold = self->_shortCallDurationInSecondsThreshold;
  if (type > 0.0 && shortCallDurationInSecondsThreshold >= type)
  {
    return 1;
  }

  longCallDurationInSecondsThreshold = self->_longCallDurationInSecondsThreshold;
  if (shortCallDurationInSecondsThreshold < type && longCallDurationInSecondsThreshold >= type)
  {
    return 2;
  }

  if (longCallDurationInSecondsThreshold >= type)
  {
    return 0;
  }

  return 3;
}

- (int)mapBurstyInteractionCount:(unint64_t)count
{
  if (self->_lowBurstyInteractionCountThreshold >= count)
  {
    return 1;
  }

  if (self->_highBurstyInteractionCountThreshold >= count)
  {
    return 2;
  }

  return 3;
}

- (int)mapDistanceToHomeInMiles:(double)miles
{
  distanceToHomeInMilesThresholdNearHome = self->_distanceToHomeInMilesThresholdNearHome;
  if (miles >= 0.0 && distanceToHomeInMilesThresholdNearHome > miles)
  {
    return 1;
  }

  distanceToHomeInMilesThresholdMedium = self->_distanceToHomeInMilesThresholdMedium;
  if (distanceToHomeInMilesThresholdNearHome <= miles && distanceToHomeInMilesThresholdMedium > miles)
  {
    return 2;
  }

  distanceToHomeInMilesThresholdFar = self->_distanceToHomeInMilesThresholdFar;
  if (distanceToHomeInMilesThresholdMedium > miles || distanceToHomeInMilesThresholdFar <= miles)
  {
    return 4 * (distanceToHomeInMilesThresholdFar <= miles);
  }

  else
  {
    return 3;
  }
}

@end