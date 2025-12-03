@interface WRM_HandoverLearner
+ (id)getLearner;
+ (id)handoverAlgToText:(int)text colored:(BOOL)colored;
+ (void)initStateInStatsDict:(id)dict state:(id)state numActions:(int)actions;
- (WRM_HandoverLearner)init;
- (id)loadStatisticsDictionary:(id)dictionary;
- (int)getRecommendation:(int64_t)recommendation;
- (void)dealloc;
- (void)giveReward:(double)reward slot:(int64_t)slot;
- (void)handleCallNotification:(id)notification;
- (void)incrementDPDFailure:(int64_t)failure;
- (void)printStats;
- (void)saveStatisticsDictionary:(id)dictionary dict:(id)dict;
- (void)scoreCallAndUpdate:(BOOL)update slot:(int64_t)slot;
- (void)showAlert:(id)alert;
- (void)updateCellularIdleStats:(int64_t)stats;
- (void)updateIdleStats:(int64_t)stats;
- (void)updateRecommendation:(id)recommendation slot:(int64_t)slot carrierPreference:(int)preference connectedLinkType:(int)type;
- (void)updateWiFiIdleStats:(int64_t)stats;
@end

@implementation WRM_HandoverLearner

+ (id)getLearner
{
  result = qword_1002B7E80;
  if (!qword_1002B7E80)
  {
    qword_1002B7E80 = objc_alloc_init(WRM_HandoverLearner);
    v3 = qword_1002B7E80;
    [WCM_Logging logLevel:24 message:@"Handover learner: allocated learner."];
    return qword_1002B7E80;
  }

  return result;
}

+ (id)handoverAlgToText:(int)text colored:(BOOL)colored
{
  v4 = @"CELLULAR_PREFERRED";
  v5 = @"IMS_PREFERRED";
  if (colored)
  {
    v5 = @"\x1B[1;32mIMS_PREFERRED\x1B[0m";
  }

  v6 = @"WIFI_PREFERRED";
  if (colored)
  {
    v6 = @"\x1B[1;36mWIFI_PREFERRED\x1B[0m";
  }

  if (!text)
  {
    v4 = v6;
  }

  if (text == 1)
  {
    v4 = v5;
  }

  if (text == 3)
  {
    return @"BESTLINK_PREFERRED";
  }

  else
  {
    return v4;
  }
}

+ (void)initStateInStatsDict:(id)dict state:(id)state numActions:(int)actions
{
  if ([dict objectForKeyedSubscript:state])
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v9 = v8;
    v10 = [dict objectForKeyedSubscript:state];

    [v10 setLastSeen:v9];
  }

  else
  {
    actionsCopy = actions;
    if ([dict count] >> 4 >= 0x271)
    {
      do
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v11 = [dict countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = 0;
          v14 = *v24;
          v15 = INFINITY;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v24 != v14)
              {
                objc_enumerationMutation(dict);
              }

              v17 = *(*(&v23 + 1) + 8 * i);
              [objc_msgSend(dict objectForKeyedSubscript:{v17), "lastSeen"}];
              if (v18 < v15)
              {
                [objc_msgSend(dict objectForKeyedSubscript:{v17), "lastSeen"}];
                v15 = v19;
                v13 = v17;
              }
            }

            v12 = [dict countByEnumeratingWithState:&v23 objects:v27 count:16];
          }

          while (v12);
          v20 = v15;
        }

        else
        {
          v13 = 0;
          v20 = INFINITY;
        }

        +[NSDate timeIntervalSinceReferenceDate];
        [WCM_Logging logLevel:24 message:@"Handover learner: Deleting %@ from statistics dictionary. Was %f days old.", v13, (v21 - v20) / 86400.0];
        [dict removeObjectForKey:v13];
      }

      while ([dict count] >> 4 > 0x270);
    }

    [dict setObject:-[StateStats initWithNumActionsAndValues:count:rewardMean:]([StateStats alloc] forKeyedSubscript:{"initWithNumActionsAndValues:count:rewardMean:", actionsCopy, 0, 0.0), state}];
  }
}

- (WRM_HandoverLearner)init
{
  v13.receiver = self;
  v13.super_class = WRM_HandoverLearner;
  v2 = [(WRM_HandoverLearner *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->actions = &off_100285A00;
    v2->alg2action = objc_alloc_init(NSMutableDictionary);
    if ([(NSArray *)v3->actions count])
    {
      v4 = 0;
      do
      {
        [(NSMutableDictionary *)v3->alg2action setObject:[NSNumber forKeyedSubscript:"numberWithInt:" numberWithInt:v4], [(NSArray *)v3->actions objectAtIndexedSubscript:v4]];
        ++v4;
      }

      while ([(NSArray *)v3->actions count]> v4);
    }

    -[WRM_HandoverLearner setLatestStates:](v3, "setLatestStates:", [[NSMutableArray alloc] initWithCapacity:2]);
    [(NSMutableArray *)[(WRM_HandoverLearner *)v3 latestStates] setObject:+[NSNull atIndexedSubscript:"null"], 0];
    [(NSMutableArray *)[(WRM_HandoverLearner *)v3 latestStates] setObject:+[NSNull atIndexedSubscript:"null"], 1];
    -[WRM_HandoverLearner setLatestActions:](v3, "setLatestActions:", [[NSMutableArray alloc] initWithCapacity:2]);
    [(NSMutableArray *)[(WRM_HandoverLearner *)v3 latestActions] setObject:&off_1002707E8 atIndexedSubscript:0];
    [(NSMutableArray *)[(WRM_HandoverLearner *)v3 latestActions] setObject:&off_1002707E8 atIndexedSubscript:1];
    v5 = [[NSMutableArray alloc] initWithCapacity:2];
    v3->wifi2cellCount = v5;
    [(NSMutableArray *)v5 setObject:&off_1002707E8 atIndexedSubscript:0];
    [(NSMutableArray *)v3->wifi2cellCount setObject:&off_1002707E8 atIndexedSubscript:1];
    v6 = [[NSMutableArray alloc] initWithCapacity:2];
    v3->cell2wifiCount = v6;
    [(NSMutableArray *)v6 setObject:&off_1002707E8 atIndexedSubscript:0];
    [(NSMutableArray *)v3->cell2wifiCount setObject:&off_1002707E8 atIndexedSubscript:1];
    v7 = [[NSMutableArray alloc] initWithCapacity:2];
    v3->callActive = v7;
    [(NSMutableArray *)v7 setObject:&__kCFBooleanFalse atIndexedSubscript:0];
    [(NSMutableArray *)v3->callActive setObject:&__kCFBooleanFalse atIndexedSubscript:1];
    v8 = [[NSMutableArray alloc] initWithCapacity:2];
    v3->dpdFailures = v8;
    [(NSMutableArray *)v8 setObject:&off_1002707E8 atIndexedSubscript:0];
    [(NSMutableArray *)v3->dpdFailures setObject:&off_1002707E8 atIndexedSubscript:1];
    v9 = [[NSMutableArray alloc] initWithCapacity:2];
    v3->voiceLQMBad = v9;
    [(NSMutableArray *)v9 setObject:&__kCFBooleanFalse atIndexedSubscript:0];
    [(NSMutableArray *)v3->voiceLQMBad setObject:&__kCFBooleanFalse atIndexedSubscript:1];
    v10 = [[NSMutableArray alloc] initWithCapacity:2];
    v3->registeredOnWiFi = v10;
    [(NSMutableArray *)v10 setObject:&__kCFBooleanFalse atIndexedSubscript:0];
    [(NSMutableArray *)v3->registeredOnWiFi setObject:&__kCFBooleanFalse atIndexedSubscript:1];
    [(WRM_HandoverLearner *)v3 setStatistics:[(WRM_HandoverLearner *)v3 loadStatisticsDictionary:@"/var/mobile/Library/Logs/WirelessRadioManager/HandoverLearnerStats.plist"]];
    [(WRM_HandoverLearner *)v3 setIdleStats:[(WRM_HandoverLearner *)v3 loadStatisticsDictionary:@"/var/mobile/Library/Logs/WirelessRadioManager/HandoverLearnerIdleStats.plist"]];
    [(WRM_HandoverLearner *)v3 setDropRateTable:[NSDictionary dictionaryWithContentsOfFile:@"/System/Library/WRM/drop_rate.plist"]];
    if (![(WRM_HandoverLearner *)v3 dropRateTable])
    {
      [WCM_Logging logLevel:24 message:@"Handover learner: Failed to load drop rate table."];
    }

    v3->mCTService = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
    v3->alertsEnabled = 0;
  }

  v11 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v11 addObserver:v3 selector:"handleCallNotification:" name:TUCallCenterCallStatusChangedNotification object:0];
  return v3;
}

- (void)dealloc
{
  if ([(WRM_HandoverLearner *)self dropRatePredictor])
  {

    [(WRM_HandoverLearner *)self setDropRatePredictor:0];
  }

  v3.receiver = self;
  v3.super_class = WRM_HandoverLearner;
  [(WRM_HandoverLearner *)&v3 dealloc];
}

- (id)loadStatisticsDictionary:(id)dictionary
{
  v12 = 0;
  v4 = [NSInputStream inputStreamWithFileAtPath:?];
  [(NSInputStream *)v4 open];
  v5 = [NSPropertyListSerialization propertyListWithStream:v4 options:2 format:0 error:&v12];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [NSKeyedUnarchiver unarchivedObjectOfClasses:[NSSet setWithObjects:v6 fromData:v7 error:v8, v9, objc_opt_class(), 0], v5, &v12];
  if (v12)
  {
    [WCM_Logging logLevel:24 message:@"Handover learner: failed to read statistics dictionary from pfile %@. Creating fresh dictionary. Error: %@.", dictionary, v12];
    return +[NSMutableDictionary dictionary];
  }

  else
  {
    [WCM_Logging logLevel:24 message:@"Handover learner: loaded statistics dictionary from file %@.", dictionary];
  }

  return v10;
}

- (void)saveStatisticsDictionary:(id)dictionary dict:(id)dict
{
  v13 = 0;
  v5 = [NSKeyedArchiver archivedDataWithRootObject:dict requiringSecureCoding:1 error:&v13];
  if (v13)
  {
    dictionaryCopy3 = dictionary;
    v12 = v13;
    v6 = @"Handover learner: failed to encode statistics dictionary for saving to file %@. Error: %@.";
  }

  else
  {
    v7 = v5;
    v8 = [NSOutputStream outputStreamToFileAtPath:dictionary append:0];
    [(NSOutputStream *)v8 open];
    streamError = [(NSOutputStream *)v8 streamError];
    v13 = streamError;
    if (streamError)
    {
      dictionaryCopy3 = dictionary;
      v12 = streamError;
      v6 = @"Handover learner: failed to open file %@ for statistics dictionary. Error: %@.";
    }

    else
    {
      [NSPropertyListSerialization writePropertyList:v7 toStream:v8 format:100 options:0 error:&v13];
      if (!v13)
      {
        [WCM_Logging logLevel:24 message:@"Handover learner: wrote statistics dictionary to file %@", dictionary, v11];
        return;
      }

      dictionaryCopy3 = dictionary;
      v12 = v13;
      v6 = @"Handover learner: failed to write statistics dictionary to file %@. Error: %@.";
    }
  }

  [WCM_Logging logLevel:16 message:v6, dictionaryCopy3, v12];
}

- (void)updateRecommendation:(id)recommendation slot:(int64_t)slot carrierPreference:(int)preference connectedLinkType:(int)type
{
  v11 = slot - 1;
  if ([-[NSMutableArray objectAtIndexedSubscript:](-[WRM_HandoverLearner latestStates](self "latestStates")])
  {
    v12 = 0;
  }

  else
  {
    v12 = [(NSMutableArray *)[(WRM_HandoverLearner *)self latestStates] objectAtIndexedSubscript:slot - 1];
  }

  v13 = [-[NSMutableArray objectAtIndexedSubscript:](-[WRM_HandoverLearner latestActions](self "latestActions")];
  if ([-[NSMutableArray objectAtIndexedSubscript:](self->callActive objectAtIndexedSubscript:{slot - 1), "BOOLValue"}])
  {

    [WCM_Logging logLevel:24 message:@"Handover learner: updateRecommendation called while previous call hasn't been handled. Skipping."];
  }

  else
  {
    if (preference == 2)
    {
      [WCM_Logging logLevel:24 message:@"Handover learner: treating CELLULAR_PREFERRED as IMS_PREFERRED."];
      preference = 1;
    }

    if (type == 1)
    {
      [WCM_Logging logLevel:24 message:@"Handover learner: registered on WiFi."];
      [(NSMutableArray *)self->registeredOnWiFi setObject:&__kCFBooleanTrue atIndexedSubscript:slot - 1];
    }

    if ([(WRM_EnhancedCTService *)self->mCTService isVoiceLQMValid]&& [(WRM_EnhancedCTService *)self->mCTService getLteVoiceLQM]== 10)
    {
      [WCM_Logging logLevel:24 message:@"Handover learner: voiceLQM == 10."];
      [(NSMutableArray *)self->voiceLQMBad setObject:&__kCFBooleanTrue atIndexedSubscript:slot - 1];
    }

    [WRM_HandoverLearner initStateInStatsDict:[(WRM_HandoverLearner *)self statistics] state:recommendation numActions:[(NSArray *)self->actions count]];
    if ([(NSArray *)self->actions count])
    {
      v14 = 0;
      LODWORD(v15) = 0;
      v16 = -INFINITY;
      do
      {
        [-[NSMutableDictionary objectForKeyedSubscript:](-[WRM_HandoverLearner statistics](self "statistics")];
        v18 = v17;
        v19 = [-[NSArray objectAtIndexedSubscript:](self->actions objectAtIndexedSubscript:{v14), "intValue"}];
        v20 = v18 + 0.001;
        if (v19 != preference)
        {
          v20 = v18;
        }

        if (v13 == v14)
        {
          v21 = v20 + 0.0;
        }

        else
        {
          v21 = v20;
        }

        if (![(NSMutableDictionary *)[(WRM_HandoverLearner *)self idleStats] objectForKeyedSubscript:recommendation])
        {
          [(NSMutableDictionary *)[(WRM_HandoverLearner *)self idleStats] setObject:[[StateStats alloc] initWithNumActionsAndValues:2 count:0 rewardMean:0.0] forKeyedSubscript:recommendation];
        }

        [objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](-[WRM_HandoverLearner idleStats](self "idleStats")];
        v23 = v21 + v22 * 0.0;
        if (v23 <= v16)
        {
          v15 = v15;
        }

        else
        {
          v16 = v23;
          v15 = v14;
        }

        ++v14;
      }

      while ([(NSArray *)self->actions count]> v14);
    }

    else
    {
      v15 = 0;
    }

    v24 = +[WRM_HandoverLearner handoverAlgToText:colored:](WRM_HandoverLearner, "handoverAlgToText:colored:", [-[NSArray objectAtIndexedSubscript:](self->actions objectAtIndexedSubscript:{v15), "intValue"}], 0);
    [WCM_Logging logLevel:24 message:@"Handover learner: State: %@, Action: %@", recommendation, v24];
    if (v12 == recommendation)
    {
      v25 = 0;
    }

    else
    {
      v25 = [v12 isEqual:recommendation] ^ 1;
    }

    if (v13 != v15)
    {
      v25 = 1;
    }

    if (self->alertsEnabled && v25)
    {
      if (slot)
      {
        if (slot == 1)
        {
          v26 = "CTSubscriptionSlotOne";
        }

        else
        {
          v26 = "Unknown CTSubscriptionSlot!!!";
          if (slot == 2)
          {
            v26 = "CTSubscriptionSlotTwo";
          }
        }
      }

      else
      {
        v26 = "CTSubscriptionSlotUnknown";
      }

      [(WRM_HandoverLearner *)self showAlert:[NSString stringWithFormat:@"Learner Change\nSlot:%s\nState:\n%@\n\nRecommendation:\n%@", v26, recommendation, v24]];
    }

    if (v12 && [v12 networkID] && (objc_msgSend(objc_msgSend(v12, "networkID"), "isEqualToString:", objc_msgSend(recommendation, "networkID")) & 1) == 0)
    {
      if (slot)
      {
        if (slot == 1)
        {
          v27 = "CTSubscriptionSlotOne";
        }

        else
        {
          v27 = "Unknown CTSubscriptionSlot!!!";
          if (slot == 2)
          {
            v27 = "CTSubscriptionSlotTwo";
          }
        }
      }

      else
      {
        v27 = "CTSubscriptionSlotUnknown";
      }

      [WCM_Logging logLevel:24 message:@"Handover learner: Updating idle statistics on network ID change for slot %s.", v27];
      [(WRM_HandoverLearner *)self updateIdleStats:slot];
    }

    if (v12 != recommendation)
    {

      [(NSMutableArray *)[(WRM_HandoverLearner *)self latestStates] setObject:recommendation atIndexedSubscript:v11];
    }

    v28 = [NSNumber numberWithInt:v15];
    latestActions = [(WRM_HandoverLearner *)self latestActions];

    [(NSMutableArray *)latestActions setObject:v28 atIndexedSubscript:v11];
  }
}

- (int)getRecommendation:(int64_t)recommendation
{
  v3 = -[NSArray objectAtIndexedSubscript:](self->actions, "objectAtIndexedSubscript:", [-[NSMutableArray objectAtIndexedSubscript:](-[WRM_HandoverLearner latestActions](self "latestActions")]);

  return [v3 intValue];
}

- (void)scoreCallAndUpdate:(BOOL)update slot:(int64_t)slot
{
  updateCopy = update;
  v7 = slot - 1;
  v8 = [-[NSMutableArray objectAtIndexedSubscript:](self->wifi2cellCount objectAtIndexedSubscript:{slot - 1), "intValue"}];
  v9 = [-[NSMutableArray objectAtIndexedSubscript:](self->cell2wifiCount objectAtIndexedSubscript:{v7), "intValue"}];
  v10 = +[WRM_MetricsService getSingleton];
  v11 = [+[WRM_MetricsService getSingleton](WRM_MetricsService "getSingleton")];
  if (v11)
  {
    [WCM_Logging logLevel:24 message:@"Handover learner: W2C handovers: %d, C2W handovers: %d", v8, v9];
    [(WRM_HandoverLearner *)self getDropRatePrediction:v8 cellToWiFiHandovers:v9];
    v13 = v12 * 0.5 + updateCopy * 0.5;
    v14 = -v13;
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"Handover learner: wifiTxPer, %d, wifiRxRetry %d, audioErasure %d, voiceLQM, %d, cellReccomendationScore, %d", v11[12], v11[11], v11[36], v11[31], *([v10 getWRM5GVersusWiFiLinkPreferenceMetrics] + 45));
    if (self->alertsEnabled)
    {
      if (slot)
      {
        v15 = updateCopy;
        v17 = v9;
        v16 = v8;
        if (slot == 1)
        {
          v18 = "CTSubscriptionSlotOne";
        }

        else
        {
          v18 = "Unknown CTSubscriptionSlot!!!";
          if (slot == 2)
          {
            v18 = "CTSubscriptionSlotTwo";
          }
        }
      }

      else
      {
        v18 = "CTSubscriptionSlotUnknown";
        v15 = updateCopy;
        v17 = v9;
        v16 = v8;
      }

      v19 = @"NO";
      v20 = (v17 + v16);
      if (v15)
      {
        v19 = @"YES";
      }

      [(WRM_HandoverLearner *)self showAlert:[NSString stringWithFormat:@"Learner Call Ended\nSlot:%s\nCall score: %f\nHandover count: %d\nVoice LQM: %d\nCall failed: %@", v18, *&v14, v20, v11[31], v19]];
    }

    [(NSMutableArray *)self->wifi2cellCount setObject:&off_1002707E8 atIndexedSubscript:v7];
    [(NSMutableArray *)self->cell2wifiCount setObject:&off_1002707E8 atIndexedSubscript:v7];
    [(NSMutableArray *)self->callActive setObject:&__kCFBooleanFalse atIndexedSubscript:v7];
    if (slot)
    {
      if (slot == 1)
      {
        v21 = "CTSubscriptionSlotOne";
      }

      else
      {
        v21 = "Unknown CTSubscriptionSlot!!!";
        if (slot == 2)
        {
          v21 = "CTSubscriptionSlotTwo";
        }
      }
    }

    else
    {
      v21 = "CTSubscriptionSlotUnknown";
    }

    [WCM_Logging logLevel:24 message:@"Handover learner: Call on slot %s received score: %f.", v21, *&v14];

    [(WRM_HandoverLearner *)self giveReward:slot slot:v14];
  }

  else
  {

    [WCM_Logging logLevel:16 message:@"Handover learner: metric is not ready"];
  }
}

- (void)giveReward:(double)reward slot:(int64_t)slot
{
  v6 = slot - 1;
  if ([-[NSMutableArray objectAtIndexedSubscript:](-[WRM_HandoverLearner latestStates](self "latestStates")])
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSMutableArray *)[(WRM_HandoverLearner *)self latestStates] objectAtIndexedSubscript:v6];
  }

  v8 = [-[NSMutableArray objectAtIndexedSubscript:](-[WRM_HandoverLearner latestActions](self "latestActions")];
  if (v7)
  {
    [WCM_Logging logLevel:24 message:@"Handover learner: updating state %@ and action %d", v7, v8];
    if (reward > 0.0 || reward < -1.0)
    {
      [WCM_Logging logLevel:17 message:@"Handover learner: Warning, reward was outside of expected range"];
      v9 = fmin(reward, 0.0);
      if (v9 >= -1.0)
      {
        reward = v9;
      }

      else
      {
        reward = -1.0;
      }
    }

    [-[NSMutableDictionary objectForKeyedSubscript:](-[WRM_HandoverLearner statistics](self "statistics")];
    [(WRM_HandoverLearner *)self printStats];
    statistics = [(WRM_HandoverLearner *)self statistics];

    [(WRM_HandoverLearner *)self saveStatisticsDictionary:@"/var/mobile/Library/Logs/WirelessRadioManager/HandoverLearnerStats.plist" dict:statistics];
  }

  else
  {

    [WCM_Logging logLevel:24 message:@"Handover learner: skipping giveReward update since latestState is nil."];
  }
}

- (void)printStats
{
  [WCM_Logging logLevel:24 message:@"Handover learner: Print stats. BEGIN"];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(WRM_HandoverLearner *)self statistics];
  v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v27;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        [WCM_Logging logLevel:24 message:@"Handover learner: Print stats. State: %@", v7];
        if ([(NSArray *)self->actions count])
        {
          v8 = 0;
          do
          {
            v9 = [(NSArray *)self->actions objectAtIndexedSubscript:v8];
            [objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](-[WRM_HandoverLearner statistics](self "statistics")];
            +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"Handover learner: Print stats.   Action: %@, RewardMean: %f, Count: %d", v9, v10, [objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](-[WRM_HandoverLearner statistics](self "statistics")]);
          }

          while ([(NSArray *)self->actions count]> v8);
        }
      }

      v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v4);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obja = [(WRM_HandoverLearner *)self idleStats];
  v11 = [(NSMutableDictionary *)obja countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(obja);
        }

        v15 = *(*(&v22 + 1) + 8 * j);
        [WCM_Logging logLevel:24 message:@"Handover learner: Print idle stats. State: %@", v15];
        v16 = 0;
        v17 = 1;
        do
        {
          v18 = v17;
          [objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](-[WRM_HandoverLearner idleStats](self "idleStats")];
          +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"Handover learner: Print idle stats.   Action: %d, RewardMean: %f, Count: %d", v16, v19, [objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](-[WRM_HandoverLearner idleStats](self "idleStats")]);
          v17 = 0;
          v16 = 1;
        }

        while ((v18 & 1) != 0);
      }

      v12 = [(NSMutableDictionary *)obja countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v12);
  }

  [WCM_Logging logLevel:24 message:@"Handover learner: Print stats. END"];
}

- (void)handleCallNotification:(id)notification
{
  name = [notification name];
  if ([name isEqualToString:TUCallCenterCallStatusChangedNotification])
  {
    object = [notification object];
    if ([object status] == 1)
    {
      if ([objc_msgSend(object "provider")])
      {
        v7 = [+[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton](WRM_EnhancedCTService "wrm_EnhancedCTServiceSingleton")];
        [(NSMutableArray *)self->callActive setObject:&__kCFBooleanTrue atIndexedSubscript:v7 - 1];
        v8 = "CTSubscriptionSlotUnknown";
        v9 = "CTSubscriptionSlotOne";
        v10 = "Unknown CTSubscriptionSlot!!!";
        if (v7 == 2)
        {
          v10 = "CTSubscriptionSlotTwo";
        }

        if (v7 != 1)
        {
          v9 = v10;
        }

        if (v7)
        {
          v8 = v9;
        }

        [WCM_Logging logLevel:24 message:@"Handover learner: Call began on slot %s.", v8];
      }
    }
  }
}

- (void)updateIdleStats:(int64_t)stats
{
  [(WRM_HandoverLearner *)self updateCellularIdleStats:?];
  v5 = stats - 1;
  if ([-[NSMutableArray objectAtIndexedSubscript:](self->registeredOnWiFi objectAtIndexedSubscript:{stats - 1), "BOOLValue"}])
  {
    [(WRM_HandoverLearner *)self updateWiFiIdleStats:stats];
  }

  [(WRM_HandoverLearner *)self saveStatisticsDictionary:@"/var/mobile/Library/Logs/WirelessRadioManager/HandoverLearnerIdleStats.plist" dict:[(WRM_HandoverLearner *)self idleStats]];
  [(NSMutableArray *)self->voiceLQMBad setObject:&__kCFBooleanFalse atIndexedSubscript:v5];
  [(NSMutableArray *)self->registeredOnWiFi setObject:&__kCFBooleanFalse atIndexedSubscript:v5];
  dpdFailures = self->dpdFailures;

  [(NSMutableArray *)dpdFailures setObject:&off_1002707E8 atIndexedSubscript:stats - 1];
}

- (void)incrementDPDFailure:(int64_t)failure
{
  v4 = "CTSubscriptionSlotUnknown";
  v5 = "CTSubscriptionSlotOne";
  v6 = "Unknown CTSubscriptionSlot!!!";
  if (failure == 2)
  {
    v6 = "CTSubscriptionSlotTwo";
  }

  v7 = failure - 1;
  if (failure != 1)
  {
    v5 = v6;
  }

  if (failure)
  {
    v4 = v5;
  }

  [WCM_Logging logLevel:24 message:@"Handover learner: Incrementing DPD failure on slot %s.", v4];
  -[NSMutableArray setObject:atIndexedSubscript:](self->dpdFailures, "setObject:atIndexedSubscript:", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [-[NSMutableArray objectAtIndexedSubscript:](self->dpdFailures objectAtIndexedSubscript:{v7), "intValue"}] + 1), v7);
  if ([-[NSMutableArray objectAtIndexedSubscript:](self->dpdFailures objectAtIndexedSubscript:{v7), "intValue"}] == 10)
  {
    if (([-[NSMutableArray objectAtIndexedSubscript:](-[WRM_HandoverLearner latestStates](self "latestStates")] & 1) != 0 || (v8 = -[NSMutableArray objectAtIndexedSubscript:](-[WRM_HandoverLearner latestStates](self, "latestStates"), "objectAtIndexedSubscript:", v7)) == 0)
    {
      [WCM_Logging logLevel:16 message:@"Handover learner: Increment DPD failure called, but latestState is NULL."];
      v8 = 0;
    }

    [WRM_HandoverLearner initStateInStatsDict:[(WRM_HandoverLearner *)self idleStats] state:v8 numActions:2];
    v9 = [(NSMutableDictionary *)[(WRM_HandoverLearner *)self idleStats] objectForKeyedSubscript:v8];

    [v9 update:0 reward:-1.0];
  }
}

- (void)updateWiFiIdleStats:(int64_t)stats
{
  v4 = stats - 1;
  if ([-[NSMutableArray objectAtIndexedSubscript:](-[WRM_HandoverLearner latestStates](self "latestStates")])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)[(WRM_HandoverLearner *)self latestStates] objectAtIndexedSubscript:v4];
  }

  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"Handover learner: updating WiFi idle statistics with %d DPD failures in state %@", [-[NSMutableArray objectAtIndexedSubscript:](self->dpdFailures objectAtIndexedSubscript:{v4), "intValue"}], v5);
  if ([-[NSMutableArray objectAtIndexedSubscript:](self->dpdFailures objectAtIndexedSubscript:{v4), "intValue"}] <= 9)
  {
    [WRM_HandoverLearner initStateInStatsDict:[(WRM_HandoverLearner *)self idleStats] state:v5 numActions:2];
    v6 = [(NSMutableDictionary *)[(WRM_HandoverLearner *)self idleStats] objectForKeyedSubscript:v5];

    [v6 update:0 reward:0.0];
  }
}

- (void)updateCellularIdleStats:(int64_t)stats
{
  v4 = stats - 1;
  if ([-[NSMutableArray objectAtIndexedSubscript:](-[WRM_HandoverLearner latestStates](self "latestStates")])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)[(WRM_HandoverLearner *)self latestStates] objectAtIndexedSubscript:v4];
  }

  v6 = [-[NSMutableArray objectAtIndexedSubscript:](self->voiceLQMBad objectAtIndexedSubscript:{v4), "BOOLValue"}];
  v7 = @"GOOD";
  if (v6)
  {
    v7 = @"BAD";
  }

  [WCM_Logging logLevel:24 message:@"Handover learner: updating cellular idle statistics with voice LQM %@ in state %@", v7, v5];
  [WRM_HandoverLearner initStateInStatsDict:[(WRM_HandoverLearner *)self idleStats] state:v5 numActions:2];
  v8 = [-[NSMutableArray objectAtIndexedSubscript:](self->voiceLQMBad objectAtIndexedSubscript:{v4), "BOOLValue"}];
  v9 = [(NSMutableDictionary *)[(WRM_HandoverLearner *)self idleStats] objectForKeyedSubscript:v5];
  v10 = 0.0;
  if (v8)
  {
    v10 = -1.0;
  }

  [v9 update:1 reward:v10];
}

- (void)showAlert:(id)alert
{
  if (qword_1002B7BB8)
  {
    [WCM_Logging logLevel:24 message:@"%s %d: Notification is already pending!", "[WRM_HandoverLearner showAlert:]", 917];
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    qword_1002B7BB0 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, kCFUserNotificationAlertHeaderKey, alert);
      CFDictionarySetValue(qword_1002B7BB0, kCFUserNotificationDefaultButtonTitleKey, @"OK");
      error = 0;
      v6 = CFUserNotificationCreate(kCFAllocatorDefault, 60.0, 0, &error, qword_1002B7BB0);
      qword_1002B7BB8 = v6;
      if (!error)
      {
        if (v6)
        {
          qword_1002B7BC0 = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v6, sub_10008CAC0, 0);
          if (qword_1002B7BC0)
          {
            Main = CFRunLoopGetMain();
            CFRunLoopAddSource(Main, qword_1002B7BC0, kCFRunLoopDefaultMode);
            [WCM_Logging logLevel:24 message:@"%s %d: Notification created", "[WRM_HandoverLearner showAlert:]", 948];
          }
        }
      }
    }
  }

  if (qword_1002B7BC0)
  {
    v3 = 1;
  }

  else
  {
    v3 = qword_1002B7BB8 == 0;
  }

  if (!v3)
  {
    CFRelease(qword_1002B7BB8);
    qword_1002B7BB8 = 0;
  }

  if (qword_1002B7BB0)
  {
    CFRelease(qword_1002B7BB0);
    qword_1002B7BB0 = 0;
  }
}

@end