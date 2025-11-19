@interface MOBiomeDonationUtility
+ (int)mapOnboardingFlowCompletion:(unint64_t)a3;
- (MOBiomeDonationUtility)init;
- (id)convertAction:(id)a3;
- (id)convertClusterMetadata:(id)a3;
- (id)convertEvent:(id)a3;
- (id)convertEventBundle:(id)a3;
- (id)convertMetadataForRankgDictionary:(id)a3;
- (id)convertOutlierMetadata:(id)a3;
- (id)convertPerson:(id)a3;
- (id)convertPlace:(id)a3;
- (id)convertResource:(id)a3;
- (int)mapBurstyInteractionCount:(unint64_t)a3;
- (int)mapCallDurationType:(double)a3;
- (int)mapDistanceToHomeInMiles:(double)a3;
- (int)mapGEOPOICategory:(id)a3;
- (int)mapLabelConfidenceScore:(float)a3;
- (int)mapMediaGenre:(id)a3;
- (int)mapMediaType:(id)a3;
- (int)mapPersonRelationshipTag:(unint64_t)a3;
- (int)mapPhotoMomentInference:(id)a3;
- (int)mapSourceBundleID:(id)a3;
- (int)mapTimeCorrelationScore:(float)a3;
- (int)mapTimeTagType:(unint64_t)a3;
- (int)mapVisitPlaceType:(unint64_t)a3;
- (void)convertMediaEvent:(id)a3 toMediaType:(int *)a4 mediaGenre:(int *)a5 mediaSourceAppType:(int *)a6 numAudioMediaPlaySessionsPerDay:(unint64_t *)a7 numVideoMediaPlaySessionsPerDay:(unint64_t *)a8 numFirstPartyMediaPlaySessionsPerDay:(unint64_t *)a9 numThirdPartyMediaPlaySessionsPerDay:(unint64_t *)a10 durationAudioMediaPlaySessionsPerDay:(double *)a11 durationVideoMediaPlaySessionsPerDay:(double *)a12;
- (void)convertSignificantContactEvent:(id)a3 toContactIDsInConversation:(id)a4 callLikeMechanismIncluded:(BOOL *)a5 textLikeMechanismIncluded:(BOOL *)a6 numAudioLikeInteractions:(unint64_t *)a7 numVideoLikeInteractions:(unint64_t *)a8 numTextLikeInteractions:(unint64_t *)a9 totalDurationOfCallLikeInteractions:(double *)a10 maxDurationOfCallLikeInteractions:(double *)a11 minDurationOfCallLikeInteractions:(double *)a12;
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

- (id)convertEventBundle:(id)a3
{
  v4 = a3;
  v209 = [v4 source];
  v207 = [v4 source];
  v205 = [v4 source];
  v202 = [v4 source];
  v199 = [v4 source];
  v225 = objc_opt_new();
  v5 = [v4 events];
  v6 = [v5 count];

  v220 = v4;
  if (v6)
  {
    v257 = 0u;
    v256 = 0u;
    v255 = 0u;
    v254 = 0u;
    v7 = [v4 events];
    v8 = [v7 countByEnumeratingWithState:&v254 objects:v265 count:16];
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
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v254 + 1) + 8 * i);
          v14 = [v13 eventIdentifier];
          v15 = [v14 UUIDString];
          [v225 addObject:v15];

          if ([v13 provider] == 5)
          {
            v11 = 1;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v254 objects:v265 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 2;
    }

    v4 = v220;
  }

  else
  {
    v11 = 2;
  }

  v16 = [v4 action];
  v219 = [(MOBiomeDonationUtility *)self convertAction:v16];

  v17 = objc_opt_new();
  v18 = [v4 backgroundActions];
  v19 = [v18 count];

  if (v19)
  {
    v253 = 0u;
    v252 = 0u;
    v251 = 0u;
    v250 = 0u;
    v20 = [v4 backgroundActions];
    v21 = [v20 countByEnumeratingWithState:&v250 objects:v264 count:16];
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
            objc_enumerationMutation(v20);
          }

          v25 = [(MOBiomeDonationUtility *)self convertAction:*(*(&v250 + 1) + 8 * j)];
          [v17 addObject:v25];
        }

        v22 = [v20 countByEnumeratingWithState:&v250 objects:v264 count:16];
      }

      while (v22);
    }
  }

  v26 = [v4 metaDataForRank];

  v218 = v17;
  if (!v26)
  {
    v193 = 0;
    v194 = 0;
    goto LABEL_38;
  }

  v27 = [v4 metaDataForRank];
  v28 = [v27 objectForKeyedSubscript:@"LabelConfidence"];
  if (!v28)
  {
    v194 = 0;
    goto LABEL_30;
  }

  v29 = v28;
  v30 = [v4 metaDataForRank];
  v31 = [v30 objectForKeyedSubscript:@"LabelConfidence"];
  objc_opt_class();
  v32 = v4;
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v27 = [v32 metaDataForRank];
    v34 = [v27 objectForKeyedSubscript:@"LabelConfidence"];
    [v34 floatValue];
    v194 = [(MOBiomeDonationUtility *)self mapLabelConfidenceScore:?];

    v4 = v32;
LABEL_30:

    goto LABEL_32;
  }

  v194 = 0;
  v4 = v32;
LABEL_32:
  v35 = [v4 metaDataForRank];
  v36 = [v35 objectForKeyedSubscript:@"TimeCorrelationScore"];
  if (!v36)
  {
    v193 = 0;
    goto LABEL_36;
  }

  v37 = v36;
  v38 = [v4 metaDataForRank];
  v39 = [v38 objectForKeyedSubscript:@"TimeCorrelationScore"];
  objc_opt_class();
  v40 = v4;
  v41 = objc_opt_isKindOfClass();

  if (v41)
  {
    v35 = [v40 metaDataForRank];
    v42 = [v35 objectForKeyedSubscript:@"TimeCorrelationScore"];
    [v42 floatValue];
    v193 = [(MOBiomeDonationUtility *)self mapTimeCorrelationScore:?];

    v4 = v40;
LABEL_36:

    goto LABEL_38;
  }

  v193 = 0;
  v4 = v40;
LABEL_38:
  if ([v4 interfaceType] == 4)
  {
    v43 = [v4 place];
    if (v43)
    {
      v44 = v43;
      v45 = [v4 place];
      v46 = [v45 placeUserType] == 1;
    }

    else
    {
      v46 = 0;
    }

    v47 = [v4 metaDataForRank];

    if (v47)
    {
      v48 = [v4 metaDataForRank];
      v49 = [v48 objectForKeyedSubscript:@"callDuration"];
      [v49 doubleValue];
      v51 = v50;

      HIDWORD(v191) = [(MOBiomeDonationUtility *)self mapCallDurationType:v51];
      v52 = [v4 metaDataForRank];
      v53 = [v52 objectForKeyedSubscript:@"burstyInteractionCount"];

      if (v53)
      {
        v54 = [v4 metaDataForRank];
        v55 = [v54 objectForKeyedSubscript:@"burstyInteractionCount"];
        LODWORD(v191) = -[MOBiomeDonationUtility mapBurstyInteractionCount:](self, "mapBurstyInteractionCount:", [v55 intValue]);
      }

      else
      {
        LODWORD(v191) = 0;
      }

      v56 = [v4 metaDataForRank];
      v57 = [v56 objectForKeyedSubscript:@"contactLocationWork"];
      v58 = [v57 BOOLValue];

      if (v58)
      {
        v46 = 2;
      }

      v59 = [v4 metaDataForRank];
      v60 = [v59 objectForKeyedSubscript:@"SigConType"];
      v190 = [v60 intValue];
    }

    else
    {
      v190 = 0;
      v191 = 0;
    }
  }

  else
  {
    v190 = 0;
    v191 = 0;
    v46 = 0;
  }

  v61 = [v4 place];
  v192 = v46;
  if (!v61 || (v62 = v61, [v4 place], v63 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v63, "distanceToHomeInMiles"), v65 = v64, v63, v62, v65 == 0.0))
  {
    v189 = 0;
    v188 = 0;
  }

  else
  {
    v66 = [v4 place];
    [v66 distanceToHomeInMiles];
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
  v70 = [v4 subBundleIDs];
  v71 = [v70 count];

  if (v71)
  {
    v249 = 0u;
    v248 = 0u;
    v247 = 0u;
    v246 = 0u;
    v72 = [v4 subBundleIDs];
    v73 = [v72 countByEnumeratingWithState:&v246 objects:v263 count:16];
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
            objc_enumerationMutation(v72);
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
              v78 = [v77 UUIDString];
              [v223 addObject:v78];
            }
          }
        }

        v74 = [v72 countByEnumeratingWithState:&v246 objects:v263 count:16];
      }

      while (v74);
    }

    v4 = v220;
  }

  v222 = objc_opt_new();
  v79 = [v4 subSuggestionIDs];
  v80 = [v79 count];

  if (v80)
  {
    v245 = 0u;
    v244 = 0u;
    v243 = 0u;
    v242 = 0u;
    v81 = [v4 subSuggestionIDs];
    v82 = [v81 countByEnumeratingWithState:&v242 objects:v262 count:16];
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
            objc_enumerationMutation(v81);
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
              v87 = [v86 UUIDString];
              [v222 addObject:v87];
            }
          }
        }

        v83 = [v81 countByEnumeratingWithState:&v242 objects:v262 count:16];
      }

      while (v83);
    }

    v4 = v220;
  }

  v88 = objc_opt_new();
  v89 = [v4 resources];
  v90 = [v89 count];

  if (v90)
  {
    v241 = 0u;
    v240 = 0u;
    v239 = 0u;
    v238 = 0u;
    v91 = [v4 resources];
    v92 = [v91 countByEnumeratingWithState:&v238 objects:v261 count:16];
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
            objc_enumerationMutation(v91);
          }

          v96 = [(MOBiomeDonationUtility *)self convertResource:*(*(&v238 + 1) + 8 * n)];
          [v88 addObject:v96];
        }

        v93 = [v91 countByEnumeratingWithState:&v238 objects:v261 count:16];
      }

      while (v93);
    }
  }

  v224 = objc_opt_new();
  v97 = [v4 persons];
  v98 = [v97 count];

  if (v98)
  {
    v237 = 0u;
    v236 = 0u;
    v235 = 0u;
    v234 = 0u;
    v99 = [v4 persons];
    v100 = [v99 countByEnumeratingWithState:&v234 objects:v260 count:16];
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
            objc_enumerationMutation(v99);
          }

          v104 = [(MOBiomeDonationUtility *)self convertPerson:*(*(&v234 + 1) + 8 * ii)];
          [v224 addObject:v104];
        }

        v101 = [v99 countByEnumeratingWithState:&v234 objects:v260 count:16];
      }

      while (v101);
    }
  }

  v217 = v88;
  v105 = [v4 place];
  v216 = [(MOBiomeDonationUtility *)self convertPlace:v105];

  v106 = objc_opt_new();
  v107 = [v4 places];
  v108 = [v107 count];

  if (v108)
  {
    v233 = 0u;
    v232 = 0u;
    v231 = 0u;
    v230 = 0u;
    v109 = [v4 places];
    v110 = [v109 countByEnumeratingWithState:&v230 objects:v259 count:16];
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
            objc_enumerationMutation(v109);
          }

          v114 = [(MOBiomeDonationUtility *)self convertPlace:*(*(&v230 + 1) + 8 * jj)];
          [v106 addObject:v114];
        }

        v111 = [v109 countByEnumeratingWithState:&v230 objects:v259 count:16];
      }

      while (v111);
    }
  }

  v221 = objc_opt_new();
  v115 = [v4 photoTraits];
  v116 = [v115 count];

  if (v116)
  {
    v229 = 0u;
    v228 = 0u;
    v227 = 0u;
    v226 = 0u;
    v117 = [v4 photoTraits];
    v118 = [v117 countByEnumeratingWithState:&v226 objects:v258 count:16];
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
            objc_enumerationMutation(v117);
          }

          v122 = *(*(&v226 + 1) + 8 * kk);
          v123 = [v122 name];
          v124 = [v123 length];

          if (v124)
          {
            v125 = [v122 name];
            [v221 addObject:v125];
          }
        }

        v119 = [v117 countByEnumeratingWithState:&v226 objects:v258 count:16];
      }

      while (v119);
    }

    v4 = v220;
  }

  v126 = [v4 clusterMetadata];
  v215 = [(MOBiomeDonationUtility *)self convertClusterMetadata:v126];

  v127 = [v4 outlierMetadata];
  v214 = [(MOBiomeDonationUtility *)self convertOutlierMetadata:v127];

  v128 = [v4 rankingDictionary];

  if (v128)
  {
    v129 = [v4 rankingDictionary];
    v130 = [v129 objectForKeyedSubscript:@"bundleGoodnessScore"];

    if (v130)
    {
      v131 = [v4 rankingDictionary];
      v213 = [v131 objectForKeyedSubscript:@"bundleGoodnessScore"];
    }

    else
    {
      v213 = 0;
    }

    v132 = [v4 rankingDictionary];
    v133 = [v132 objectForKeyedSubscript:@"distinctnessScore"];

    if (v133)
    {
      v134 = [v4 rankingDictionary];
      v135 = [v134 objectForKeyedSubscript:@"distinctnessScore"];
    }

    else
    {
      v135 = 0;
    }

    v136 = [v4 rankingDictionary];
    v137 = [v136 objectForKeyedSubscript:@"richnessScore"];

    if (v137)
    {
      v138 = [v4 rankingDictionary];
      v139 = [v138 objectForKeyedSubscript:@"richnessScore"];
    }

    else
    {
      v139 = 0;
    }

    v140 = [v4 rankingDictionary];
    v141 = [v140 objectForKeyedSubscript:@"engagementScore"];

    if (v141)
    {
      v142 = [v4 rankingDictionary];
      v143 = [v142 objectForKeyedSubscript:@"engagementScore"];
    }

    else
    {
      v143 = 0;
    }

    v144 = [v4 rankingDictionary];
    v145 = [v144 objectForKeyedSubscript:@"heuristicsScore"];

    v212 = v135;
    v204 = v139;
    v201 = v143;
    if (v145)
    {
      v146 = [v4 rankingDictionary];
      v211 = [v146 objectForKeyedSubscript:@"heuristicsScore"];

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
  v147 = v199 == 16;
  v148 = v202 == 8;
  v197 = v205 == 4;
  v149 = v207 == 2;
  v150 = v209 == 1;
  v151 = [v4 metaDataForRank];
  v200 = [(MOBiomeDonationUtility *)self convertMetadataForRankgDictionary:v151];

  v186 = [BMMomentsEventDataEventBundle alloc];
  v187 = [v4 bundleIdentifier];
  v210 = [v187 UUIDString];
  v208 = [v4 startDate];
  v206 = [v4 endDate];
  v203 = [v4 creationDate];
  v183 = [v4 expirationDate];
  v182 = [v4 interfaceType];
  v180 = [NSNumber numberWithBool:v150];
  v178 = [NSNumber numberWithBool:v149];
  v177 = [NSNumber numberWithBool:v197];
  v176 = [NSNumber numberWithBool:v148];
  v175 = [v4 promptLanguage];
  v185 = [v4 place];
  v174 = [v185 placeType];
  v184 = [v4 place];
  v173 = [v184 placeUserType];
  v181 = [v4 time];
  v171 = [v181 timeTag];
  v179 = [v4 suggestionID];
  v198 = [v179 UUIDString];
  v169 = [v4 photoSource];
  v196 = [NSNumber numberWithBool:v147];
  v168 = [NSNumber numberWithBool:0];
  v165 = [NSNumber numberWithBool:0];
  v172 = [v4 persons];
  v164 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v172 count]);
  v170 = [v4 place];
  LODWORD(v150) = [v170 placeType];
  v167 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 filtered]);
  [v4 bundleSuperType];
  [v4 bundleSubType];
  v166 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isAggregatedAndSuppressed]);
  [v4 summarizationGranularity];
  v163 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 includedInSummaryBundleOnly]);
  [v4 firstCreationDate];
  HIDWORD(v161) = v11;
  HIDWORD(v160) = v150;
  v162 = HIDWORD(v159) = v194;
  LODWORD(v161) = 0;
  LODWORD(v159) = 0;
  LODWORD(v158) = 0;
  LODWORD(v157) = 0;
  LODWORD(v156) = 0;
  LODWORD(v155) = 0;
  LODWORD(v154) = v171;
  LODWORD(v153) = 0;
  LODWORD(v160) = 0;
  v195 = [v186 initWithBundleIdentifier:v210 bundleStartDate:v208 bundleEndDate:v206 bundleCreationDate:v203 bundleExpirationDate:v183 bundleInterfaceType:v182 bundleSourceHealthExists:v180 bundleSourcePhotoExists:v178 bundleSourceProactiveExists:v177 bundleSourceRoutineExists:v176 bundlePromptLanguageFormat:v175 bundlePromptToneID:0 bundlePromptParametersAvailability:0 bundlePlaceType:__PAIR64__(v173 bundlePlaceUserType:v174) bundleBaseEventCateory:v153 bundleEventIDs:v225 bundleActionType:v219 backgroundActions:v218 bundleIsFamilyIncluded:0 bundleTimeTag:v154 isBundleResourceTypeUnknown:0 isBundleResourceTypeValueIncluded:0 isBundleResourceTypePhotoAssetsIncluded:0 isBundleResourceTypeMediaIncluded:0 isBundleResourceTypeWebLinkIncluded:0 isBundleResourceTypeInterenceTagIncluded:0 bundlEngagement:v155 bundleVersion:0 rankingVersion:0 suggestionType:v156 suggestionTimestamp:0 suggestionClientIdentifier:0 suggestionViewContainerName:0 suggestionViewVisibleTime:0 appEntryEventType:v157 appEntryEventClientIdentifier:0 appEntryEventTimestamp:0 appEntryEventStartTime:0 appEntryEventEndTime:0 appEntryEventTotalCharacters:0 appEntryEventAddedCharacters:0 clientActivityEventType:v158 clientActivityEventClientIdentifier:0 clientActivityEventTimestamp:0 suggestionIdentifier:v198 photoSourceType:v169 photoLibraryType:v196 bundleSourcePostAnalyticsExists:v168 bundleSourcePDExists:v165 bundleSourceMotionExists:&__kCFBooleanFalse bundleSourceBooksExists:&__kCFBooleanFalse bundleSourceScreenTimeExists:&__NSArray0__struct gaPRArray:v164 bundlePCount:v159 ranking:__PAIR64__(HIDWORD(v191) labelConfidenceScore:v193) timeCorrelationScore:__PAIR64__(v190 callDuration:v191) interactionCount:__PAIR64__(v188 interactionType:v192) callPlace:v189 distanceFromHome:v160 homeAvailability:v161 workAvailability:v167 bundleVisitMapItemSource:? bundleVisitPlaceType:? bundleVisitPlaceLabelGranularity:? bundleIncludesAnomalousEvent:? isFiltered:? bundleSuperType:? bundleSubType:? isAggregatedAndSuppressed:? summarizationGranularity:? includedInSummaryBundleOnly:? subBundleIDs:? subSuggestionIDs:? firstCreationDate:? resources:? persons:? mainPlace:? otherPlaces:? photoTraits:? clusterMetadata:? outlierMetadata:? bundleGoodnessScore:? distinctnessScore:? richnessScore:? engagementScore:? heuristicsScore:? metadataForRank:?];

  return v195;
}

- (id)convertEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 routineEvent];

  if (v5)
  {
    v6 = [v4 routineEvent];
    v7 = [v6 placeUserType];

    if (v7)
    {
      v8 = [v4 routineEvent];
      v77 = [v8 placeUserType];
    }

    else
    {
      v77 = 0;
    }

    v9 = [v4 routineEvent];
    v10 = [v9 placeType];

    if (v10)
    {
      v11 = [v4 routineEvent];
      LODWORD(v76) = -[MOBiomeDonationUtility mapVisitPlaceType:](self, "mapVisitPlaceType:", [v11 placeType]);
    }

    else
    {
      LODWORD(v76) = 0;
    }

    v12 = [v4 routineEvent];
    v13 = [v12 poiCategory];

    if (v13)
    {
      v14 = [v4 routineEvent];
      v15 = [v14 poiCategory];
      HIDWORD(v76) = [(MOBiomeDonationUtility *)self mapGEOPOICategory:v15];
    }

    else
    {
      HIDWORD(v76) = 0;
    }

    v16 = [v4 routineEvent];
    v17 = [v16 placeDiscovery];

    if (v17)
    {
      v18 = [v4 routineEvent];
      v75 = [v18 placeDiscovery];
    }

    else
    {
      v75 = 0;
    }

    v19 = [v4 routineEvent];
    v20 = [v19 mode];

    if (v20)
    {
      v21 = [v4 routineEvent];
      v74 = [v21 mode];
    }

    else
    {
      v74 = 0;
    }

    v22 = [v4 routineEvent];
    v23 = [v22 placeSource];

    if (v23)
    {
      v24 = [v4 routineEvent];
      v72 = [v24 placeSource];
    }

    else
    {
      v72 = 0;
    }
  }

  else
  {
    v76 = 0;
    v75 = 0;
    v74 = 0;
    v72 = 0;
    v77 = 0;
  }

  v25 = [v4 workoutEvent];
  if (!v25)
  {
    goto LABEL_24;
  }

  v26 = v25;
  v27 = [v4 workoutEvent];
  v28 = [v27 workoutType];

  if (v28)
  {
    v29 = [v4 workoutEvent];
    v69 = [v29 workoutType];
  }

  else
  {
LABEL_24:
    LODWORD(v69) = 0;
  }

  v112[0] = 0;
  v111 = 0;
  v109 = 0;
  v110 = 0;
  v107 = 0;
  v108 = 0;
  v105 = 0.0;
  v106 = 0.0;
  v30 = [v4 mediaEvent];
  [(MOBiomeDonationUtility *)self convertMediaEvent:v30 toMediaType:v112 + 4 mediaGenre:v112 mediaSourceAppType:&v111 numAudioMediaPlaySessionsPerDay:&v110 numVideoMediaPlaySessionsPerDay:&v109 numFirstPartyMediaPlaySessionsPerDay:&v108 numThirdPartyMediaPlaySessionsPerDay:&v107 durationAudioMediaPlaySessionsPerDay:&v106 durationVideoMediaPlaySessionsPerDay:&v105];

  v31 = objc_opt_new();
  v104 = 0;
  v102 = 0;
  v103 = 0;
  v100 = 0.0;
  v101 = 0;
  v98 = 1.79769313e308;
  v99 = 0.0;
  v32 = [v4 significantContactEvent];
  v97 = v31;
  [(MOBiomeDonationUtility *)self convertSignificantContactEvent:v32 toContactIDsInConversation:v31 callLikeMechanismIncluded:&v104 + 1 textLikeMechanismIncluded:&v104 numAudioLikeInteractions:&v103 numVideoLikeInteractions:&v102 numTextLikeInteractions:&v101 totalDurationOfCallLikeInteractions:&v100 maxDurationOfCallLikeInteractions:&v99 minDurationOfCallLikeInteractions:&v98];

  v66 = [BMMomentsEventDataEvent alloc];
  v73 = [v4 eventIdentifier];
  v96 = [v73 UUIDString];
  v95 = [v4 startDate];
  v94 = [v4 endDate];
  v93 = [v4 creationDate];
  v92 = [v4 sourceCreationDate];
  v91 = [v4 expirationDate];
  v64 = [v4 provider];
  v63 = [v4 category];
  v90 = [v4 appBundle];
  v33 = v112[0];
  v71 = [v4 mediaEvent];
  v89 = [v71 mediaRepetitions];
  v70 = [v4 mediaEvent];
  v88 = [v70 mediaSumTimePlayed];
  v61 = v111;
  v68 = [v4 mediaEvent];
  v87 = [v68 mediaPlayerBundleId];
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

  v59 = [v4 significantContactEvent];
  v58 = [v59 interactionContacts];
  v53 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v58 count]);
  v57 = [v4 significantContactEvent];
  v56 = [v57 interactionScoredContact];
  v55 = [v56 contact];
  v86 = [v55 identifier];
  v54 = [v4 significantContactEvent];
  v85 = [v54 interactionContactScore];
  v51 = [NSNumber numberWithBool:v104];
  v36 = [NSNumber numberWithBool:HIBYTE(v104)];
  v52 = [NSNumber numberWithUnsignedInteger:v101];
  v50 = [NSNumber numberWithUnsignedInteger:v103];
  v37 = [NSNumber numberWithUnsignedInteger:v102];
  v38 = [NSNumber numberWithDouble:v100];
  v39 = [NSNumber numberWithDouble:v98];
  v40 = [NSNumber numberWithDouble:v99];
  v41 = [v4 peopleDiscoveryEvent];
  v42 = [v41 pCount];
  LODWORD(v45) = v61;
  LODWORD(v44) = v69;
  LODWORD(v49) = 0;
  LODWORD(v48) = 0;
  LODWORD(v47) = 0;
  LODWORD(v46) = 0;
  v78 = [v66 initWithEventIdentifier:v96 startDate:v95 endDate:v94 creationDate:v93 sourceCreationDate:v92 expirationDate:v91 provider:__PAIR64__(v63 category:v64) placeUserType:__PAIR64__(HIDWORD(v76) poiCategory:v77) placeDiscovery:__PAIR64__(v74 locationMode:v75) workoutType:v44 workoutBundleID:v90 mediaGenre:v33 mediaType:v89 mediaRepetitions:v88 mediaSumTimePlayed:v45 sourceParty:v87 mediaPlayerBundleID:v84 numAudioMediaPlaySessionsPerDay:v80 durationAudioMediaPlaySessionsPerDay:v83 numVideoMediaPlaySessionsPerDay:v79 durationVideoMediaPlaySessionsPerDay:v82 numFirstPartyMediaPlaySessionsPerDay:v81 numThirdPartyMediaPlaySessionsPerDay:v53 numContacts:v97 contactIDsInConversation:v86 contactIDMostSignificantInConversation:v85 interactionContactScore:v51 textLikeMechanismIncluded:v36 callLikeMechanismIncluded:v52 numTextLikeInteractions:v50 numAudioLikeInteractions:v37 numVideoLikeInteractions:v38 totalDurationOfCallLikeInteractions:v39 minDurationOfCallLikeInteractions:v40 maxDurationOfCallLikeInteractions:v46 photoMomentSource:&__NSArray0__struct photoMomentInferences:&__NSArray0__struct photoMomentHolidays:0 numPhotoMomentHolidays:0 numPhotoMomentInferences:0 numPhotoMomentPublicEvents:0 numPhotoMomentPersons:0 isFamilyInPhotoMoment:0 momentIncludesFavoritedAsset:0 momentIncludesVideo:0 momentIncludesPhoto:v47 suggestedEventCategory:0 numAttendees:0 numtripParts:v48 tripMode:0 numScoredTopics:0 numItemAuthors:0 numItemRecipients:0 isGatheringComplete:0 gaPR:v42 pCount:__PAIR64__(v76 mapItemSource:v72) placeType:v49 placeLabelGranularity:?];

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

- (id)convertResource:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [BMMomentsEventDataEventBundleResource alloc];
    v5 = [v3 type];
    v6 = [v3 photoAssetMediaType];
    v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 photoFaceCount]);
    v8 = [v3 photoCurationScore];
    [v3 photoOverallAestheticScore];
    v10 = v9;

    LODWORD(v11) = v10;
    v12 = [NSNumber numberWithFloat:v11];
    v13 = [v4 initWithType:v5 photoAssetMediaType:v6 photoFaceCount:v7 photoCurationScore:v8 photoOverallAestheticScore:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)convertPerson:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_opt_new();
    v6 = [v4 personRelationships];
    v7 = [v6 count];

    if (v7)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = v4;
      obj = [v4 personRelationships];
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

      v4 = v22;
    }

    v17 = [BMMomentsEventDataEventBundlePerson alloc];
    v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isMePerson]);
    [v4 significanceScore];
    v19 = [NSNumber numberWithDouble:?];
    v20 = [v17 initWithPersonRelationships:v5 isMEPerson:v18 significanceScore:v19];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)convertAction:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [BMMomentsEventDataAction alloc];
    v5 = [v3 actionType];
    v6 = [v3 actionName];
    [v3 actionNameConfidence];
    v8 = v7;

    v9 = [NSNumber numberWithDouble:v8];
    v10 = [v4 initWithType:v5 actionName:v6 actionNameConfidence:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)convertPlace:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 poiCategory];

    if (v6)
    {
      v7 = [v5 poiCategory];
      v8 = [(MOBiomeDonationUtility *)self mapGEOPOICategory:v7];
    }

    else
    {
      v8 = 0;
    }

    v10 = [BMMomentsEventDataEventBundlePlace alloc];
    v11 = [v5 placeType];
    v12 = [v5 placeUserType];
    [v5 placeNameConfidence];
    v13 = [NSNumber numberWithDouble:?];
    [v5 familiarityIndexLOI];
    v14 = [NSNumber numberWithDouble:?];
    [v5 distanceToHomeInMiles];
    v15 = [NSNumber numberWithDouble:?];
    v9 = [v10 initWithPlaceInferencePlaceType:v11 placeInferenceUserSpecificPlaceType:v12 geoPOICategoryType:v8 placeNameConfidence:v13 familiarityIndexLOI:v14 distanceToHomeInMiles:v15];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)convertClusterMetadata:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 phenotype], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 phenotype];
    v49 = [v6 objectForKeyedSubscript:@"topLevelActivityType"];

    v47 = [v6 objectForKeyedSubscript:@"secondLevelActivityType"];

    v7 = [v6 objectForKeyedSubscript:@"isWeekend"];

    v8 = [v6 objectForKeyedSubscript:@"timeTag"];

    v9 = [v6 objectForKeyedSubscript:@"dayOfWeek"];

    v10 = [v6 objectForKeyedSubscript:@"placeName"];

    v11 = [v6 objectForKeyedSubscript:@"combinedPlaceType"];

    v12 = [v6 objectForKeyedSubscript:@"enclosingAreaName"];

    v13 = [v6 objectForKeyedSubscript:@"persons"];

    v14 = [v6 objectForKeyedSubscript:@"withFamily"];
    if (v14)
    {
      v45 = 1;
    }

    else
    {
      v16 = [v6 objectForKeyedSubscript:@"withCoworker"];
      if (v16)
      {
        v45 = 1;
      }

      else
      {
        v17 = [v6 objectForKeyedSubscript:@"withFriend"];
        if (v17)
        {
          v45 = 1;
        }

        else
        {
          v18 = [v6 objectForKeyedSubscript:@"withChild"];
          if (v18)
          {
            v45 = 1;
          }

          else
          {
            v19 = [v6 objectForKeyedSubscript:@"withMyPet"];
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

    v21 = [v6 objectForKeyedSubscript:@"activityTypeFromPhotoTraits"];
    v35 = v21 != 0;

    v22 = [v6 objectForKeyedSubscript:@"placeTypeFromPhotoTraits"];
    v41 = v22 != 0;

    v23 = [v6 objectForKeyedSubscript:@"socialEventFromPhotoTraits"];
    v38 = v23 != 0;

    v24 = [v6 objectForKeyedSubscript:@"otherSubjectFromPhotoTraits"];
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

- (id)convertOutlierMetadata:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [BMMomentsEventDataEventBundleOutlierMetadata alloc];
    v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isSignificant]);
    [v3 outlierScore];
    v6 = [NSNumber numberWithDouble:?];
    v7 = [v3 updatedDate];

    v8 = [v4 initWithIsSignificant:v5 outlierScore:v6 updatedDate:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)convertMetadataForRankgDictionary:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"PoiCategory"];
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

- (void)convertMediaEvent:(id)a3 toMediaType:(int *)a4 mediaGenre:(int *)a5 mediaSourceAppType:(int *)a6 numAudioMediaPlaySessionsPerDay:(unint64_t *)a7 numVideoMediaPlaySessionsPerDay:(unint64_t *)a8 numFirstPartyMediaPlaySessionsPerDay:(unint64_t *)a9 numThirdPartyMediaPlaySessionsPerDay:(unint64_t *)a10 durationAudioMediaPlaySessionsPerDay:(double *)a11 durationVideoMediaPlaySessionsPerDay:(double *)a12
{
  v16 = a3;
  v17 = v16;
  if (v16)
  {
    v18 = [v16 mediaType];

    if (v18)
    {
      v19 = [v17 mediaType];
      *a4 = [(MOBiomeDonationUtility *)self mapMediaType:v19];
    }

    v20 = [v17 mediaGenre];

    if (v20)
    {
      v21 = [v17 mediaGenre];
      *a5 = [(MOBiomeDonationUtility *)self mapMediaGenre:v21];
    }

    v22 = [v17 mediaPlayerBundleId];

    if (v22)
    {
      v23 = [v17 mediaPlayerBundleId];
      *a6 = [(MOBiomeDonationUtility *)self mapSourceBundleID:v23];
    }

    v24 = [v17 mediaPlaySessions];
    v25 = [v24 count];

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
            v31 = [v30 endDate];
            v32 = [v30 startDate];
            [v31 timeIntervalSinceDate:v32];
            v34 = v33;

            v35 = [v30 mediaType];
            v36 = [v35 lowercaseString];

            v37 = [v36 containsString:@"audio"];
            v38 = a11;
            v39 = a7;
            if ((v37 & 1) != 0 || (v40 = [v36 containsString:@"video"], v38 = a12, v39 = a8, v40))
            {
              *v38 = v34 + *v38;
              ++*v39;
            }

            v41 = [v30 bundleId];
            v42 = [v41 lowercaseString];

            v43 = [v42 containsString:@"com.apple."];
            v44 = a9;
            if (v43)
            {
              goto LABEL_20;
            }

            v45 = [v30 bundleId];
            if (v45)
            {
              v46 = v45;
              v47 = [v30 bundleId];
              v48 = [v47 length];

              v44 = a10;
              if (v48)
              {
LABEL_20:
                ++*v44;
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

- (void)convertSignificantContactEvent:(id)a3 toContactIDsInConversation:(id)a4 callLikeMechanismIncluded:(BOOL *)a5 textLikeMechanismIncluded:(BOOL *)a6 numAudioLikeInteractions:(unint64_t *)a7 numVideoLikeInteractions:(unint64_t *)a8 numTextLikeInteractions:(unint64_t *)a9 totalDurationOfCallLikeInteractions:(double *)a10 maxDurationOfCallLikeInteractions:(double *)a11 minDurationOfCallLikeInteractions:(double *)a12
{
  v14 = a3;
  v15 = a4;
  if (v14)
  {
    v16 = [v14 interactionContacts];
    v17 = [v16 count];

    if (v17)
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v18 = [v14 interactionContacts];
      v19 = [v18 countByEnumeratingWithState:&v55 objects:v60 count:16];
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
              objc_enumerationMutation(v18);
            }

            v23 = [*(*(&v55 + 1) + 8 * i) contact];
            v24 = [v23 identifier];
            [v15 addObject:v24];
          }

          v20 = [v18 countByEnumeratingWithState:&v55 objects:v60 count:16];
        }

        while (v20);
      }
    }

    v25 = [v14 interactions];
    v26 = [v25 count];

    if (v26)
    {
      v44 = v15;
      v45 = v14;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      obj = [v14 interactions];
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
            v32 = [v31 endDate];
            v33 = [v31 startDate];
            [v32 timeIntervalSinceDate:v33];
            v35 = v34;

            callLikeMechanismsSet = self->_callLikeMechanismsSet;
            v37 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v31 mechanism]);
            LODWORD(callLikeMechanismsSet) = [(NSSet *)callLikeMechanismsSet containsObject:v37];

            if (callLikeMechanismsSet)
            {
              *a5 = 1;
              *a10 = v35 + *a10;
              if (v35 > *a11)
              {
                *a11 = v35;
              }

              if (v35 < *a12)
              {
                *a12 = v35;
              }
            }

            textLikeMechanismsSet = self->_textLikeMechanismsSet;
            v39 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v31 mechanism]);
            LODWORD(textLikeMechanismsSet) = [(NSSet *)textLikeMechanismsSet containsObject:v39];

            if (textLikeMechanismsSet)
            {
              *a6 = 1;
            }

            audioMechanismsSet = self->_audioMechanismsSet;
            v41 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v31 mechanism]);
            LODWORD(audioMechanismsSet) = [(NSSet *)audioMechanismsSet containsObject:v41];

            if (audioMechanismsSet)
            {
              ++*a7;
            }

            videoMechanismsSet = self->_videoMechanismsSet;
            v43 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v31 mechanism]);
            LODWORD(videoMechanismsSet) = [(NSSet *)videoMechanismsSet containsObject:v43];

            if (videoMechanismsSet)
            {
              ++*a8;
            }
          }

          v28 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
        }

        while (v28);
      }

      v15 = v44;
      v14 = v45;
    }
  }
}

- (int)mapGEOPOICategory:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:GEOPOICategoryAirport])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:GEOPOICategoryAmusementPark])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:GEOPOICategoryAnimalService])
  {
    v4 = 45;
  }

  else if ([v3 isEqualToString:GEOPOICategoryAquarium])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:GEOPOICategoryATM])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:GEOPOICategoryAutomotiveRepair])
  {
    v4 = 46;
  }

  else if ([v3 isEqualToString:GEOPOICategoryBakery])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:GEOPOICategoryBank])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:GEOPOICategoryBaseball])
  {
    v4 = 47;
  }

  else if ([v3 isEqualToString:GEOPOICategoryBasketball])
  {
    v4 = 48;
  }

  else if ([v3 isEqualToString:GEOPOICategoryBeach])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:GEOPOICategoryBeauty])
  {
    v4 = 49;
  }

  else if ([v3 isEqualToString:GEOPOICategoryBowling])
  {
    v4 = 50;
  }

  else if ([v3 isEqualToString:GEOPOICategoryBrewery])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:GEOPOICategoryCafe])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:GEOPOICategoryCampground])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:GEOPOICategoryCarRental])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:GEOPOICategoryCastle])
  {
    v4 = 51;
  }

  else if ([v3 isEqualToString:GEOPOICategoryConventionCenter])
  {
    v4 = 52;
  }

  else if ([v3 isEqualToString:GEOPOICategoryDistillery])
  {
    v4 = 53;
  }

  else if ([v3 isEqualToString:GEOPOICategoryEVCharger])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:GEOPOICategoryFairground])
  {
    v4 = 54;
  }

  else if ([v3 isEqualToString:GEOPOICategoryFireStation])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:GEOPOICategoryFishing])
  {
    v4 = 55;
  }

  else if ([v3 isEqualToString:GEOPOICategoryFitnessCenter])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:GEOPOICategoryFoodMarket])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:GEOPOICategoryFortress])
  {
    v4 = 56;
  }

  else if ([v3 isEqualToString:GEOPOICategoryGasStation])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:GEOPOICategoryGolf])
  {
    v4 = 57;
  }

  else if ([v3 isEqualToString:GEOPOICategoryGoKart])
  {
    v4 = 58;
  }

  else if ([v3 isEqualToString:GEOPOICategoryHiking])
  {
    v4 = 59;
  }

  else if ([v3 isEqualToString:GEOPOICategoryHospital])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:GEOPOICategoryHotel])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:GEOPOICategoryKayaking])
  {
    v4 = 60;
  }

  else if ([v3 isEqualToString:GEOPOICategoryLandmark])
  {
    v4 = 61;
  }

  else if ([v3 isEqualToString:GEOPOICategoryLaundry])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:GEOPOICategoryLibrary])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:GEOPOICategoryMailbox])
  {
    v4 = 62;
  }

  else if ([v3 isEqualToString:GEOPOICategoryMarina])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:GEOPOICategoryMiniGolf])
  {
    v4 = 63;
  }

  else if ([v3 isEqualToString:GEOPOICategoryMovieTheater])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:GEOPOICategoryMuseum])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:GEOPOICategoryMusicVenue])
  {
    v4 = 64;
  }

  else if ([v3 isEqualToString:GEOPOICategoryNationalMonument])
  {
    v4 = 65;
  }

  else if ([v3 isEqualToString:GEOPOICategoryNationalPark])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:GEOPOICategoryNightlife])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:GEOPOICategoryPark])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:GEOPOICategoryParking])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:GEOPOICategoryPharmacy])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:GEOPOICategoryPlanetarium])
  {
    v4 = 66;
  }

  else if ([v3 isEqualToString:GEOPOICategoryPolice])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:GEOPOICategoryPostOffice])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:GEOPOICategoryPublicTransport])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:GEOPOICategoryRestaurant])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:GEOPOICategoryRestroom])
  {
    v4 = 35;
  }

  else if ([v3 isEqualToString:GEOPOICategoryRockClimbing])
  {
    v4 = 67;
  }

  else if ([v3 isEqualToString:GEOPOICategoryRVPark])
  {
    v4 = 68;
  }

  else if ([v3 isEqualToString:GEOPOICategorySchool])
  {
    v4 = 36;
  }

  else if ([v3 isEqualToString:GEOPOICategorySkatePark])
  {
    v4 = 69;
  }

  else if ([v3 isEqualToString:GEOPOICategorySkating])
  {
    v4 = 70;
  }

  else if ([v3 isEqualToString:GEOPOICategorySkiing])
  {
    v4 = 71;
  }

  else if ([v3 isEqualToString:GEOPOICategorySoccer])
  {
    v4 = 72;
  }

  else if ([v3 isEqualToString:GEOPOICategorySpa])
  {
    v4 = 73;
  }

  else if ([v3 isEqualToString:GEOPOICategoryStadium])
  {
    v4 = 37;
  }

  else if ([v3 isEqualToString:GEOPOICategoryStore])
  {
    v4 = 38;
  }

  else if ([v3 isEqualToString:GEOPOICategorySurfing])
  {
    v4 = 74;
  }

  else if ([v3 isEqualToString:GEOPOICategorySwimming])
  {
    v4 = 75;
  }

  else if ([v3 isEqualToString:GEOPOICategoryTennis])
  {
    v4 = 76;
  }

  else if ([v3 isEqualToString:GEOPOICategoryTheater])
  {
    v4 = 39;
  }

  else if ([v3 isEqualToString:GEOPOICategoryUniversity])
  {
    v4 = 40;
  }

  else if ([v3 isEqualToString:GEOPOICategoryVolleyball])
  {
    v4 = 77;
  }

  else if ([v3 isEqualToString:GEOPOICategoryWinery])
  {
    v4 = 41;
  }

  else if ([v3 isEqualToString:GEOPOICategoryZoo])
  {
    v4 = 42;
  }

  else if ([v3 isEqualToString:GEOPOICategoryAirportGate])
  {
    v4 = 43;
  }

  else if ([v3 isEqualToString:GEOPOICategoryAirportTerminal])
  {
    v4 = 44;
  }

  else if ([v3 isEqualToString:GEOPOICategoryPlayground])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:GEOPOICategoryReligiousSite])
  {
    v4 = 33;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)mapPersonRelationshipTag:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = a3;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

+ (int)mapOnboardingFlowCompletion:(unint64_t)a3
{
  if (a3 > 5)
  {
    return 0;
  }

  else
  {
    return dword_1003231B8[a3];
  }
}

- (int)mapTimeTagType:(unint64_t)a3
{
  if (a3 <= 99)
  {
    if (a3 == 8)
    {
      v4 = 6;
    }

    else
    {
      v4 = 0;
    }

    if (a3 == 7)
    {
      v5 = 5;
    }

    else
    {
      v5 = v4;
    }

    if (a3 == 6)
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    if (a3 == 5)
    {
      v7 = 18;
    }

    else
    {
      v7 = v6;
    }

    if (a3 <= 6)
    {
      v5 = v7;
    }

    if (a3 == 4)
    {
      v8 = 3;
    }

    else
    {
      v8 = 0;
    }

    if (a3 == 3)
    {
      v9 = 17;
    }

    else
    {
      v9 = v8;
    }

    if (a3 == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    if (a3 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    if (a3 <= 2)
    {
      v9 = v11;
    }

    if (a3 <= 4)
    {
      return v9;
    }

    else
    {
      return v5;
    }
  }

  else if (a3 > 1999)
  {
    if (a3 == 10004)
    {
      v12 = 16;
    }

    else
    {
      v12 = 0;
    }

    if (a3 == 10003)
    {
      v13 = 15;
    }

    else
    {
      v13 = v12;
    }

    if (a3 == 10002)
    {
      v14 = 14;
    }

    else
    {
      v14 = 0;
    }

    if (a3 == 10001)
    {
      v15 = 13;
    }

    else
    {
      v15 = v14;
    }

    if (a3 <= 10002)
    {
      v16 = v15;
    }

    else
    {
      v16 = v13;
    }

    if (a3 == 10000)
    {
      v17 = 12;
    }

    else
    {
      v17 = 0;
    }

    if (a3 == 2002)
    {
      v18 = 2002;
    }

    else
    {
      v18 = v17;
    }

    if (a3 == 2001)
    {
      v19 = 2001;
    }

    else
    {
      v19 = 0;
    }

    if (a3 == 2000)
    {
      v20 = 2000;
    }

    else
    {
      v20 = v19;
    }

    if (a3 <= 2001)
    {
      v18 = v20;
    }

    if (a3 <= 10000)
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
    switch(a3)
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

- (int)mapMediaGenre:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = [v4 lowercaseString];
    v6 = [@"##_GENRE" lowercaseString];
    v7 = [v5 containsString:v6];

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v9 = [@"##_GENRE" lowercaseString];
      v10 = [v5 containsString:v9];

      if (v10)
      {
        v8 = 2;
      }

      else
      {
        v11 = [@"##_GENRE" lowercaseString];
        v12 = [v5 containsString:v11];

        if (v12)
        {
          v8 = 3;
        }

        else
        {
          v13 = [@"##_GENRE" lowercaseString];
          v14 = [v5 containsString:v13];

          if (v14)
          {
            v8 = 4;
          }

          else
          {
            v15 = [@"##_GENRE" lowercaseString];
            v16 = [v5 containsString:v15];

            if (v16)
            {
              v8 = 5;
            }

            else
            {
              v17 = [@"##_GENRE" lowercaseString];
              v18 = [v5 containsString:v17];

              if (v18)
              {
                v8 = 6;
              }

              else
              {
                v19 = [@"##_GENRE" lowercaseString];
                v20 = [v5 containsString:v19];

                if (v20)
                {
                  v8 = 7;
                }

                else
                {
                  v21 = [@"##_GENRE" lowercaseString];
                  v22 = [v5 containsString:v21];

                  if (v22)
                  {
                    v8 = 8;
                  }

                  else
                  {
                    v23 = [@"##_GENRE" lowercaseString];
                    v24 = [v5 containsString:v23];

                    if (v24)
                    {
                      v8 = 9;
                    }

                    else
                    {
                      v25 = [@"##_GENRE" lowercaseString];
                      v26 = [v5 containsString:v25];

                      if (v26)
                      {
                        v8 = 10;
                      }

                      else
                      {
                        v27 = [@"##_GENRE" lowercaseString];
                        v28 = [v5 containsString:v27];

                        if (v28)
                        {
                          v8 = 11;
                        }

                        else
                        {
                          v29 = [@"##_GENRE" lowercaseString];
                          v30 = [v5 containsString:v29];

                          if (v30)
                          {
                            v8 = 12;
                          }

                          else
                          {
                            v31 = [@"##_GENRE" lowercaseString];
                            v32 = [v5 containsString:v31];

                            if (v32)
                            {
                              v8 = 13;
                            }

                            else
                            {
                              v33 = [@"##_GENRE" lowercaseString];
                              v34 = [v5 containsString:v33];

                              if (v34)
                              {
                                v8 = 14;
                              }

                              else
                              {
                                v35 = [@"##_GENRE" lowercaseString];
                                v36 = [v5 containsString:v35];

                                if (v36)
                                {
                                  v8 = 15;
                                }

                                else
                                {
                                  v37 = [@"##_GENRE" lowercaseString];
                                  v38 = [v5 containsString:v37];

                                  if (v38)
                                  {
                                    v8 = 16;
                                  }

                                  else
                                  {
                                    v39 = [@"##_GENRE" lowercaseString];
                                    v40 = [v5 containsString:v39];

                                    if (v40)
                                    {
                                      v8 = 17;
                                    }

                                    else
                                    {
                                      v41 = [@"##_GENRE" lowercaseString];
                                      v42 = [v5 containsString:v41];

                                      if (v42)
                                      {
                                        v8 = 18;
                                      }

                                      else
                                      {
                                        v43 = [@"##_GENRE" lowercaseString];
                                        v44 = [v5 containsString:v43];

                                        if (v44)
                                        {
                                          v8 = 19;
                                        }

                                        else
                                        {
                                          v45 = [@"##_GENRE" lowercaseString];
                                          v46 = [v5 containsString:v45];

                                          if (v46)
                                          {
                                            v8 = 20;
                                          }

                                          else
                                          {
                                            v47 = [@"##_GENRE" lowercaseString];
                                            v48 = [v5 containsString:v47];

                                            if (v48)
                                            {
                                              v8 = 21;
                                            }

                                            else
                                            {
                                              v49 = [@"##_GENRE" lowercaseString];
                                              v50 = [v5 containsString:v49];

                                              if (v50)
                                              {
                                                v8 = 22;
                                              }

                                              else
                                              {
                                                v51 = [@"##_GENRE" lowercaseString];
                                                v52 = [v5 containsString:v51];

                                                if (v52)
                                                {
                                                  v8 = 23;
                                                }

                                                else
                                                {
                                                  v53 = [@"##_GENRE" lowercaseString];
                                                  v54 = [v5 containsString:v53];

                                                  if (v54)
                                                  {
                                                    v8 = 24;
                                                  }

                                                  else
                                                  {
                                                    v55 = [@"##_GENRE" lowercaseString];
                                                    v56 = [v5 containsString:v55];

                                                    if (v56)
                                                    {
                                                      v8 = 25;
                                                    }

                                                    else
                                                    {
                                                      v57 = [@"##_GENRE" lowercaseString];
                                                      v58 = [v5 containsString:v57];

                                                      if (v58)
                                                      {
                                                        v8 = 26;
                                                      }

                                                      else
                                                      {
                                                        v59 = [@"##_GENRE" lowercaseString];
                                                        v60 = [v5 containsString:v59];

                                                        if (v60)
                                                        {
                                                          v8 = 27;
                                                        }

                                                        else
                                                        {
                                                          v61 = [@"##_GENRE" lowercaseString];
                                                          [v5 containsString:v61];

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

- (int)mapMediaType:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = [v4 lowercaseString];
    if ([v5 containsString:@"music"])
    {
      v6 = 1;
    }

    else if ([v5 containsString:@"podcast"])
    {
      v6 = 2;
    }

    else if ([v5 containsString:@"audio"])
    {
      if ([v5 containsString:@"book"])
      {
        v6 = 3;
      }

      else
      {
        v6 = 6;
      }
    }

    else if ([v5 containsString:@"itune"])
    {
      if ([v5 containsString:@"radio"])
      {
        v6 = 5;
      }

      else
      {
        v6 = 4;
      }
    }

    else if ([v5 containsString:@"video"])
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

- (int)mapSourceBundleID:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if ([a3 containsString:@"com.apple."])
  {
    return 1;
  }

  return 3;
}

- (int)mapVisitPlaceType:(unint64_t)a3
{
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (a3 == 3)
  {
    v3 = 2;
  }

  if (a3 == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (int)mapPhotoMomentInference:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 lowercaseString];
    v5 = [@"##_PHOTO_INFERENCE" lowercaseString];
    v6 = [v4 containsString:v5];

    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v8 = [v3 lowercaseString];
      v9 = [@"##_PHOTO_INFERENCE" lowercaseString];
      v10 = [v8 containsString:v9];

      if (v10)
      {
        v7 = 2;
      }

      else
      {
        v11 = [v3 lowercaseString];
        v12 = [@"##_PHOTO_INFERENCE" lowercaseString];
        v13 = [v11 containsString:v12];

        if (v13)
        {
          v7 = 3;
        }

        else
        {
          v14 = [v3 lowercaseString];
          v15 = [@"##_PHOTO_INFERENCE" lowercaseString];
          v16 = [v14 containsString:v15];

          if (v16)
          {
            v7 = 4;
          }

          else
          {
            v17 = [v3 lowercaseString];
            v18 = [@"##_PHOTO_INFERENCE" lowercaseString];
            v19 = [v17 containsString:v18];

            if (v19)
            {
              v7 = 5;
            }

            else
            {
              v20 = [v3 lowercaseString];
              v21 = [@"##_PHOTO_INFERENCE" lowercaseString];
              v22 = [v20 containsString:v21];

              if (v22)
              {
                v7 = 6;
              }

              else
              {
                v23 = [v3 lowercaseString];
                v24 = [@"##_PHOTO_INFERENCE" lowercaseString];
                v25 = [v23 containsString:v24];

                if (v25)
                {
                  v7 = 7;
                }

                else
                {
                  v26 = [v3 lowercaseString];
                  v27 = [@"##_PHOTO_INFERENCE" lowercaseString];
                  v28 = [v26 containsString:v27];

                  if (v28)
                  {
                    v7 = 8;
                  }

                  else
                  {
                    v29 = [v3 lowercaseString];
                    v30 = [@"##_PHOTO_INFERENCE" lowercaseString];
                    v31 = [v29 containsString:v30];

                    if (v31)
                    {
                      v7 = 9;
                    }

                    else
                    {
                      v32 = [v3 lowercaseString];
                      v33 = [@"##_PHOTO_INFERENCE" lowercaseString];
                      v34 = [v32 containsString:v33];

                      if (v34)
                      {
                        v7 = 10;
                      }

                      else
                      {
                        v35 = [v3 lowercaseString];
                        v36 = [@"##_PHOTO_INFERENCE" lowercaseString];
                        v37 = [v35 containsString:v36];

                        if (v37)
                        {
                          v7 = 11;
                        }

                        else
                        {
                          v38 = [v3 lowercaseString];
                          v39 = [@"##_PHOTO_INFERENCE" lowercaseString];
                          v40 = [v38 containsString:v39];

                          if (v40)
                          {
                            v7 = 12;
                          }

                          else
                          {
                            v41 = [v3 lowercaseString];
                            v42 = [@"##_PHOTO_INFERENCE" lowercaseString];
                            v43 = [v41 containsString:v42];

                            if (v43)
                            {
                              v7 = 13;
                            }

                            else
                            {
                              v44 = [v3 lowercaseString];
                              v45 = [@"##_PHOTO_INFERENCE" lowercaseString];
                              v46 = [v44 containsString:v45];

                              if (v46)
                              {
                                v7 = 14;
                              }

                              else
                              {
                                v47 = [v3 lowercaseString];
                                v48 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                v49 = [v47 containsString:v48];

                                if (v49)
                                {
                                  v7 = 15;
                                }

                                else
                                {
                                  v50 = [v3 lowercaseString];
                                  v51 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                  v52 = [v50 containsString:v51];

                                  if (v52)
                                  {
                                    v7 = 16;
                                  }

                                  else
                                  {
                                    v53 = [v3 lowercaseString];
                                    v54 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                    v55 = [v53 containsString:v54];

                                    if (v55)
                                    {
                                      v7 = 17;
                                    }

                                    else
                                    {
                                      v56 = [v3 lowercaseString];
                                      v57 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                      v58 = [v56 containsString:v57];

                                      if (v58)
                                      {
                                        v7 = 18;
                                      }

                                      else
                                      {
                                        v59 = [v3 lowercaseString];
                                        v60 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                        v61 = [v59 containsString:v60];

                                        if (v61)
                                        {
                                          v7 = 19;
                                        }

                                        else
                                        {
                                          v62 = [v3 lowercaseString];
                                          v63 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                          v64 = [v62 containsString:v63];

                                          if (v64)
                                          {
                                            v7 = 20;
                                          }

                                          else
                                          {
                                            v65 = [v3 lowercaseString];
                                            v66 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                            v67 = [v65 containsString:v66];

                                            if (v67)
                                            {
                                              v7 = 21;
                                            }

                                            else
                                            {
                                              v68 = [v3 lowercaseString];
                                              v69 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                              v70 = [v68 containsString:v69];

                                              if (v70)
                                              {
                                                v7 = 22;
                                              }

                                              else
                                              {
                                                v71 = [v3 lowercaseString];
                                                v72 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                                v73 = [v71 containsString:v72];

                                                if (v73)
                                                {
                                                  v7 = 23;
                                                }

                                                else
                                                {
                                                  v74 = [v3 lowercaseString];
                                                  v75 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                                  v76 = [v74 containsString:v75];

                                                  if (v76)
                                                  {
                                                    v7 = 24;
                                                  }

                                                  else
                                                  {
                                                    v77 = [v3 lowercaseString];
                                                    v78 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                                    v79 = [v77 containsString:v78];

                                                    if (v79)
                                                    {
                                                      v7 = 25;
                                                    }

                                                    else
                                                    {
                                                      v80 = [v3 lowercaseString];
                                                      v81 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                                      v82 = [v80 containsString:v81];

                                                      if (v82)
                                                      {
                                                        v7 = 26;
                                                      }

                                                      else
                                                      {
                                                        v83 = [v3 lowercaseString];
                                                        v84 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                                        v85 = [v83 containsString:v84];

                                                        if (v85)
                                                        {
                                                          v7 = 27;
                                                        }

                                                        else
                                                        {
                                                          v86 = [v3 lowercaseString];
                                                          v87 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                                          v88 = [v86 containsString:v87];

                                                          if (v88)
                                                          {
                                                            v7 = 28;
                                                          }

                                                          else
                                                          {
                                                            v89 = [v3 lowercaseString];
                                                            v90 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                                            v91 = [v89 containsString:v90];

                                                            if (v91)
                                                            {
                                                              v7 = 29;
                                                            }

                                                            else
                                                            {
                                                              v92 = [v3 lowercaseString];
                                                              v93 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                                              v94 = [v92 containsString:v93];

                                                              if (v94)
                                                              {
                                                                v7 = 30;
                                                              }

                                                              else
                                                              {
                                                                v95 = [v3 lowercaseString];
                                                                v96 = [@"##_PHOTO_INFERENCE" lowercaseString];
                                                                v97 = [v95 containsString:v96];

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

- (int)mapTimeCorrelationScore:(float)a3
{
  if (self->_kLowBundleQualityScoreThreshold > a3)
  {
    return 1;
  }

  if (self->_kHighBundleQualityScoreThreshold <= a3)
  {
    return 3;
  }

  return 2;
}

- (int)mapLabelConfidenceScore:(float)a3
{
  if (self->_kLowBundleQualityScoreThreshold > a3)
  {
    return 1;
  }

  if (self->_kHighBundleQualityScoreThreshold <= a3)
  {
    return 3;
  }

  return 2;
}

- (int)mapCallDurationType:(double)a3
{
  shortCallDurationInSecondsThreshold = self->_shortCallDurationInSecondsThreshold;
  if (a3 > 0.0 && shortCallDurationInSecondsThreshold >= a3)
  {
    return 1;
  }

  longCallDurationInSecondsThreshold = self->_longCallDurationInSecondsThreshold;
  if (shortCallDurationInSecondsThreshold < a3 && longCallDurationInSecondsThreshold >= a3)
  {
    return 2;
  }

  if (longCallDurationInSecondsThreshold >= a3)
  {
    return 0;
  }

  return 3;
}

- (int)mapBurstyInteractionCount:(unint64_t)a3
{
  if (self->_lowBurstyInteractionCountThreshold >= a3)
  {
    return 1;
  }

  if (self->_highBurstyInteractionCountThreshold >= a3)
  {
    return 2;
  }

  return 3;
}

- (int)mapDistanceToHomeInMiles:(double)a3
{
  distanceToHomeInMilesThresholdNearHome = self->_distanceToHomeInMilesThresholdNearHome;
  if (a3 >= 0.0 && distanceToHomeInMilesThresholdNearHome > a3)
  {
    return 1;
  }

  distanceToHomeInMilesThresholdMedium = self->_distanceToHomeInMilesThresholdMedium;
  if (distanceToHomeInMilesThresholdNearHome <= a3 && distanceToHomeInMilesThresholdMedium > a3)
  {
    return 2;
  }

  distanceToHomeInMilesThresholdFar = self->_distanceToHomeInMilesThresholdFar;
  if (distanceToHomeInMilesThresholdMedium > a3 || distanceToHomeInMilesThresholdFar <= a3)
  {
    return 4 * (distanceToHomeInMilesThresholdFar <= a3);
  }

  else
  {
    return 3;
  }
}

@end