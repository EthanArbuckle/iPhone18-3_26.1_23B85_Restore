@interface RecommendationPreferences
+ (id)sharedObject;
- (RecommendationPreferences)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation RecommendationPreferences

+ (id)sharedObject
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002C2C;
  block[3] = &unk_1000ED7E0;
  block[4] = self;
  if (qword_10010DE90 != -1)
  {
    dispatch_once(&qword_10010DE90, block);
  }

  v2 = qword_10010DE88;

  return v2;
}

- (RecommendationPreferences)init
{
  v9.receiver = self;
  v9.super_class = RecommendationPreferences;
  v2 = [(RecommendationPreferences *)&v9 init];
  if (v2)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v8 = [v3 persistentDomainForName:@"com.apple.wifianalyticsd"];
    v4 = WALogCategoryInitPersistentLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v11 = "[RecommendationPreferences init]";
      v12 = 1024;
      v13 = 184;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:RecommendationPreferences defaults %@", buf, 0x1Cu);
    }

    v5 = +[NSMutableDictionary dictionary];
    [v5 setObject:&__kCFBooleanFalse forKey:@"disable_recommendation_engine"];
    [v5 setObject:&__kCFBooleanFalse forKey:@"disable_dps_wd"];
    [v5 setObject:&off_100102E00 forKey:@"minutes_between_dps_wd"];
    [v5 setObject:&off_100102E18 forKey:@"dps_wd_cca"];
    [v5 setObject:&off_100102E30 forKey:@"dps_stall_dur_for_wd"];
    [v5 setObject:&off_100102E48 forKey:@"dps_capture_evaluated_at_sample"];
    [v5 setObject:&off_100102E60 forKey:@"dps_trap_evaluated_at_sample"];
    [v5 setObject:&off_100102E60 forKey:@"dps_interrogation_sample_count"];
    [v5 setObject:&off_100102E78 forKey:@"dps_duration_between_samples"];
    [v5 setObject:&off_100102E90 forKey:@"dps_report_sent_after"];
    [v5 setObject:&__kCFBooleanFalse forKey:@"force_dps_recommend_always"];
    [v5 setObject:&off_100102E60 forKey:@"dns_symptoms_trap_evaluated_at_sample"];
    [v5 setObject:&off_100102EA8 forKey:@"dns_symptoms_interrogation_sample_count"];
    [v5 setObject:&off_100102E78 forKey:@"dns_symptoms_duration_between_samples_before_trap"];
    [v5 setObject:&off_100102EC0 forKey:@"dns_symptoms_duration_between_samples_after_trap"];
    [v5 setObject:&off_100102ED8 forKey:@"dns_symptoms_duration_between_samples_during_recovery"];
    [v5 setObject:&off_100102E78 forKey:@"dns_symptoms_duration_between_status_polling_post_reassoc"];
    [v5 setObject:&off_100102E60 forKey:@"dns_symptoms_status_polling_count_post_reassoc"];
    [v5 setObject:&off_100102EC0 forKey:@"dns_symptoms_query_resolution_timeout"];
    [v5 setObject:&__kCFBooleanFalse forKey:@"disable_fast_dps_wd"];
    [v5 setObject:&__kCFBooleanFalse forKey:@"disable_fast_dps_validation_for_test"];
    [v5 setObject:&off_100102EF0 forKey:@"minutes_between_fast_dps_wd_screen_on"];
    [v5 setObject:&off_100102EF0 forKey:@"minutes_between_fast_dps_wd_screen_off"];
    [v5 setObject:&off_100102F08 forKey:@"prediction_probability_threshold"];
    [v5 setObject:&off_100102E18 forKey:@"prediction_probability_threshold_macos"];
    [v5 setObject:&off_100102F20 forKey:@"reset_cca_bin_threshold"];
    [v5 setObject:&off_100102E00 forKey:@"minutes_between_symptoms_dps_wd_screen_on"];
    [v5 setObject:&off_100102E00 forKey:@"minutes_between_symptoms_dps_wd_screen_off"];
    [v5 setObject:&off_100102F38 forKey:@"minutes_between_peer_diagnostics_trigger_for_dns_stall"];
    [v5 setObject:&off_100102F38 forKey:@"minutes_between_peer_diagnostics_trigger_for_other_issues"];
    [v5 setObject:&off_100102F50 forKey:@"reset_score_threshold"];
    [v5 setObject:&off_100102F68 forKey:@"dps_symptoms_average_cca_threshold"];
    [v5 setObject:&off_100102F80 forKey:@"reset_pd_rssi_threshold"];
    [v5 setObject:&off_100102E18 forKey:@"reset_pd_cca_threshold"];
    [v5 setObject:&off_100102F98 forKey:@"reset_legacy_chipset_cca_bin_threshold"];
    [v5 setObject:&off_100102FB0 forKey:@"reset_rssi_bin_threshold"];
    [v5 setObject:&off_100102FC8 forKey:@"reset_awdl_activity_threshold"];
    [v5 setObject:&off_100102FC8 forKey:@"reset_nan_activity_threshold"];
    [v5 setObject:&off_100102FE0 forKey:@"quick_dps_rssi_threshold"];
    [v5 setObject:&off_100102FF8 forKey:@"slow_dps_rssi_bin_threshold"];
    [v5 setObject:&__kCFBooleanFalse forKey:@"disable_slow_wifi_wd"];
    [v5 setObject:&off_100102F38 forKey:@"minutes_between_slow_wifi_wd"];
    [v5 setObject:&off_100103010 forKey:@"slow_wifi_interrogation_sample_count"];
    [v5 setObject:&off_100103028 forKey:@"slow_wifi_duration_between_samples"];
    [v5 setObject:&off_100103040 forKey:@"slow_wifi_report_sent_after"];
    [v5 setObject:&__kCFBooleanFalse forKey:@"disable_slow_wifi_dps_is_priority_network"];
    [v5 setObject:&off_100103058 forKey:@"ior_rescan_budget_less_than_previous_max_channels_seconds"];
    [v5 setObject:&off_100103070 forKey:@"ior_rescan_budget_exploratory_seconds"];
    [v5 setObject:&off_100102F38 forKey:@"ior_rescan_new_phy_delay_seconds"];
    [v5 setObject:&off_100103088 forKey:@"ior_persist_delay_seconds"];
    [v5 setObject:&off_100103070 forKey:@"work_report_seconds"];
    [v5 setObject:&__kCFBooleanTrue forKey:@"work_report_logs_enabled"];
    [v3 setPersistentDomain:v8 forName:@"com.apple.wifianalyticsd"];
    [v3 registerDefaults:v5];
    [v3 addObserver:v2 forKeyPath:@"disable_recommendation_engine" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"disable_dps_wd" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"minutes_between_dps_wd" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"dps_wd_cca" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"dps_stall_dur_for_wd" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"dps_capture_evaluated_at_sample" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"dps_trap_evaluated_at_sample" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"dps_interrogation_sample_count" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"dps_duration_between_samples" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"dps_report_sent_after" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"force_dps_recommend_always" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"dns_symptoms_trap_evaluated_at_sample" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"dns_symptoms_interrogation_sample_count" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"dns_symptoms_duration_between_samples_before_trap" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"dns_symptoms_duration_between_samples_after_trap" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"dns_symptoms_duration_between_samples_during_recovery" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"dns_symptoms_duration_between_status_polling_post_reassoc" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"dns_symptoms_status_polling_count_post_reassoc" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"dns_symptoms_query_resolution_timeout" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"disable_fast_dps_wd" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"disable_fast_dps_validation_for_test" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"minutes_between_fast_dps_wd_screen_on" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"minutes_between_fast_dps_wd_screen_off" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"prediction_probability_threshold" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"prediction_probability_threshold_macos" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"reset_cca_bin_threshold" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"reset_score_threshold" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"dps_symptoms_average_cca_threshold" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"reset_pd_rssi_threshold" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"reset_pd_cca_threshold" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"minutes_between_symptoms_dps_wd_screen_on" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"minutes_between_symptoms_dps_wd_screen_off" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"minutes_between_peer_diagnostics_trigger_for_dns_stall" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"minutes_between_peer_diagnostics_trigger_for_other_issues" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"reset_legacy_chipset_cca_bin_threshold" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"reset_rssi_bin_threshold" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"reset_awdl_activity_threshold" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"reset_nan_activity_threshold" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"quick_dps_rssi_threshold" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"slow_dps_rssi_bin_threshold" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"disable_slow_wifi_wd" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"minutes_between_slow_wifi_wd" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"slow_wifi_interrogation_sample_count" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"slow_wifi_duration_between_samples" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"slow_wifi_report_sent_after" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"disable_slow_wifi_dps_is_priority_network" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"ior_rescan_budget_less_than_previous_max_channels_seconds" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"ior_rescan_budget_exploratory_seconds" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"ior_rescan_new_phy_delay_seconds" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"ior_persist_delay_seconds" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"work_report_seconds" options:5 context:0];
    [v3 addObserver:v2 forKeyPath:@"work_report_logs_enabled" options:5 context:0];
    v6 = v2;
  }

  else
  {
    v3 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v11 = "[RecommendationPreferences init]";
      v12 = 1024;
      v13 = 180;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error super init", buf, 0x12u);
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 removeObserver:self forKeyPath:@"disable_recommendation_engine"];
  [v3 removeObserver:self forKeyPath:@"disable_dps_wd"];
  [v3 removeObserver:self forKeyPath:@"minutes_between_dps_wd"];
  [v3 removeObserver:self forKeyPath:@"dps_wd_cca"];
  [v3 removeObserver:self forKeyPath:@"dps_stall_dur_for_wd"];
  [v3 removeObserver:self forKeyPath:@"dps_capture_evaluated_at_sample"];
  [v3 removeObserver:self forKeyPath:@"dps_trap_evaluated_at_sample"];
  [v3 removeObserver:self forKeyPath:@"dps_interrogation_sample_count"];
  [v3 removeObserver:self forKeyPath:@"dps_duration_between_samples"];
  [v3 removeObserver:self forKeyPath:@"dps_report_sent_after"];
  [v3 removeObserver:self forKeyPath:@"force_dps_recommend_always"];
  [v3 removeObserver:self forKeyPath:@"dns_symptoms_trap_evaluated_at_sample"];
  [v3 removeObserver:self forKeyPath:@"dns_symptoms_interrogation_sample_count"];
  [v3 removeObserver:self forKeyPath:@"dns_symptoms_duration_between_samples_before_trap"];
  [v3 removeObserver:self forKeyPath:@"dns_symptoms_duration_between_samples_after_trap"];
  [v3 removeObserver:self forKeyPath:@"dns_symptoms_duration_between_samples_during_recovery"];
  [v3 removeObserver:self forKeyPath:@"dns_symptoms_duration_between_status_polling_post_reassoc"];
  [v3 removeObserver:self forKeyPath:@"dns_symptoms_status_polling_count_post_reassoc"];
  [v3 removeObserver:self forKeyPath:@"dns_symptoms_query_resolution_timeout"];
  [v3 removeObserver:self forKeyPath:@"disable_fast_dps_wd"];
  [v3 removeObserver:self forKeyPath:@"disable_fast_dps_validation_for_test"];
  [v3 removeObserver:self forKeyPath:@"minutes_between_fast_dps_wd_screen_on"];
  [v3 removeObserver:self forKeyPath:@"minutes_between_fast_dps_wd_screen_off"];
  [v3 removeObserver:self forKeyPath:@"prediction_probability_threshold"];
  [v3 removeObserver:self forKeyPath:@"prediction_probability_threshold_macos"];
  [v3 removeObserver:self forKeyPath:@"reset_cca_bin_threshold"];
  [v3 removeObserver:self forKeyPath:@"minutes_between_symptoms_dps_wd_screen_on"];
  [v3 removeObserver:self forKeyPath:@"minutes_between_symptoms_dps_wd_screen_off"];
  [v3 removeObserver:self forKeyPath:@"minutes_between_peer_diagnostics_trigger_for_dns_stall"];
  [v3 removeObserver:self forKeyPath:@"minutes_between_peer_diagnostics_trigger_for_other_issues"];
  [v3 removeObserver:self forKeyPath:@"reset_score_threshold"];
  [v3 removeObserver:self forKeyPath:@"dps_symptoms_average_cca_threshold"];
  [v3 removeObserver:self forKeyPath:@"reset_pd_rssi_threshold"];
  [v3 removeObserver:self forKeyPath:@"reset_pd_cca_threshold"];
  [v3 removeObserver:self forKeyPath:@"reset_legacy_chipset_cca_bin_threshold"];
  [v3 removeObserver:self forKeyPath:@"reset_rssi_bin_threshold"];
  [v3 removeObserver:self forKeyPath:@"reset_awdl_activity_threshold"];
  [v3 removeObserver:self forKeyPath:@"reset_nan_activity_threshold"];
  [v3 removeObserver:self forKeyPath:@"quick_dps_rssi_threshold"];
  [v3 removeObserver:self forKeyPath:@"slow_dps_rssi_bin_threshold"];
  [v3 removeObserver:self forKeyPath:@"disable_slow_wifi_wd"];
  [v3 removeObserver:self forKeyPath:@"minutes_between_slow_wifi_wd"];
  [v3 removeObserver:self forKeyPath:@"slow_wifi_interrogation_sample_count"];
  [v3 removeObserver:self forKeyPath:@"slow_wifi_duration_between_samples"];
  [v3 removeObserver:self forKeyPath:@"slow_wifi_report_sent_after"];
  [v3 removeObserver:self forKeyPath:@"disable_slow_wifi_dps_is_priority_network"];
  [v3 removeObserver:self forKeyPath:@"ior_rescan_budget_less_than_previous_max_channels_seconds"];
  [v3 removeObserver:self forKeyPath:@"ior_rescan_budget_exploratory_seconds"];
  [v3 removeObserver:self forKeyPath:@"ior_rescan_new_phy_delay_seconds"];
  [v3 removeObserver:self forKeyPath:@"ior_persist_delay_seconds"];
  [v3 removeObserver:self forKeyPath:@"work_report_seconds"];
  [v3 removeObserver:self forKeyPath:@"work_report_logs_enabled"];

  v4.receiver = self;
  v4.super_class = RecommendationPreferences;
  [(RecommendationPreferences *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  if ([pathCopy isEqualToString:@"disable_recommendation_engine"])
  {
    if (v15)
    {
      -[RecommendationPreferences setDisable_recommendation_engine:](self, "setDisable_recommendation_engine:", [v15 BOOLValue]);
      v16 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        disable_recommendation_engine = [(RecommendationPreferences *)self disable_recommendation_engine];
        v18 = "NO";
        v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
        *buf = 136446722;
        if (disable_recommendation_engine)
        {
          v18 = "YES";
        }

        v38 = 1024;
        v39 = 546;
        v40 = 2080;
        minutes_between_dps_wd = v18;
        v19 = "%{public}s::%d:disable_recommendation_engine Preference is %s";
        goto LABEL_228;
      }

LABEL_229:
    }
  }

  else
  {
    if (![pathCopy isEqualToString:@"disable_dps_wd"])
    {
      if ([pathCopy isEqualToString:@"minutes_between_dps_wd"])
      {
        if (!v15)
        {
          goto LABEL_230;
        }

        -[RecommendationPreferences setMinutes_between_dps_wd:](self, "setMinutes_between_dps_wd:", [v15 unsignedIntegerValue]);
        v16 = WALogCategoryDefaultHandle();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_229;
        }

        *buf = 136446722;
        v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
        v38 = 1024;
        v39 = 556;
        v40 = 2048;
        minutes_between_dps_wd = [(RecommendationPreferences *)self minutes_between_dps_wd];
        v19 = "%{public}s::%d:minutes_between_dps_wd Preference is %ld";
      }

      else if ([pathCopy isEqualToString:@"dps_wd_cca"])
      {
        if (!v15)
        {
          goto LABEL_230;
        }

        -[RecommendationPreferences setDps_wd_cca:](self, "setDps_wd_cca:", [v15 unsignedIntegerValue]);
        v16 = WALogCategoryDefaultHandle();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_229;
        }

        *buf = 136446722;
        v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
        v38 = 1024;
        v39 = 561;
        v40 = 2048;
        minutes_between_dps_wd = [(RecommendationPreferences *)self dps_wd_cca];
        v19 = "%{public}s::%d:dps_wd_cca Preference is %ld";
      }

      else if ([pathCopy isEqualToString:@"dps_stall_dur_for_wd"])
      {
        if (!v15)
        {
          goto LABEL_230;
        }

        -[RecommendationPreferences setDps_stall_dur_for_wd:](self, "setDps_stall_dur_for_wd:", [v15 unsignedIntegerValue]);
        v16 = WALogCategoryDefaultHandle();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_229;
        }

        *buf = 136446722;
        v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
        v38 = 1024;
        v39 = 566;
        v40 = 2048;
        minutes_between_dps_wd = [(RecommendationPreferences *)self dps_stall_dur_for_wd];
        v19 = "%{public}s::%d:dps_stall_dur_for_wd Preference is %ld";
      }

      else if ([pathCopy isEqualToString:@"dps_capture_evaluated_at_sample"])
      {
        if (!v15)
        {
          goto LABEL_230;
        }

        -[RecommendationPreferences setDps_capture_evaluated_at_sample:](self, "setDps_capture_evaluated_at_sample:", [v15 unsignedIntegerValue]);
        v16 = WALogCategoryDefaultHandle();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_229;
        }

        *buf = 136446722;
        v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
        v38 = 1024;
        v39 = 571;
        v40 = 2048;
        minutes_between_dps_wd = [(RecommendationPreferences *)self dps_capture_evaluated_at_sample];
        v19 = "%{public}s::%d:dps_capture_evaluated_at_sample Preference is %ld";
      }

      else if ([pathCopy isEqualToString:@"dps_trap_evaluated_at_sample"])
      {
        if (!v15)
        {
          goto LABEL_230;
        }

        -[RecommendationPreferences setDps_trap_evaluated_at_sample:](self, "setDps_trap_evaluated_at_sample:", [v15 unsignedIntegerValue]);
        v16 = WALogCategoryDefaultHandle();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_229;
        }

        *buf = 136446722;
        v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
        v38 = 1024;
        v39 = 576;
        v40 = 2048;
        minutes_between_dps_wd = [(RecommendationPreferences *)self dps_trap_evaluated_at_sample];
        v19 = "%{public}s::%d:dps_trap_evaluated_at_sample Preference is %ld";
      }

      else if ([pathCopy isEqualToString:@"dps_interrogation_sample_count"])
      {
        if (!v15)
        {
          goto LABEL_230;
        }

        -[RecommendationPreferences setDps_interrogation_sample_count:](self, "setDps_interrogation_sample_count:", [v15 unsignedIntegerValue]);
        v16 = WALogCategoryDefaultHandle();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_229;
        }

        *buf = 136446722;
        v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
        v38 = 1024;
        v39 = 581;
        v40 = 2048;
        minutes_between_dps_wd = [(RecommendationPreferences *)self dps_interrogation_sample_count];
        v19 = "%{public}s::%d:dps_interrogation_sample_count Preference is %ld";
      }

      else if ([pathCopy isEqualToString:@"dps_duration_between_samples"])
      {
        if (!v15)
        {
          goto LABEL_230;
        }

        -[RecommendationPreferences setDps_duration_between_samples:](self, "setDps_duration_between_samples:", [v15 unsignedIntegerValue]);
        v16 = WALogCategoryDefaultHandle();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_229;
        }

        *buf = 136446722;
        v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
        v38 = 1024;
        v39 = 586;
        v40 = 2048;
        minutes_between_dps_wd = [(RecommendationPreferences *)self dps_duration_between_samples];
        v19 = "%{public}s::%d:dps_duration_between_samples Preference is %ld";
      }

      else if ([pathCopy isEqualToString:@"dps_report_sent_after"])
      {
        if (!v15)
        {
          goto LABEL_230;
        }

        -[RecommendationPreferences setDps_report_sent_after:](self, "setDps_report_sent_after:", [v15 unsignedIntegerValue]);
        v16 = WALogCategoryDefaultHandle();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_229;
        }

        *buf = 136446722;
        v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
        v38 = 1024;
        v39 = 591;
        v40 = 2048;
        minutes_between_dps_wd = [(RecommendationPreferences *)self dps_report_sent_after];
        v19 = "%{public}s::%d:dps_report_sent_after Preference is %ld";
      }

      else
      {
        if ([pathCopy isEqualToString:@"force_dps_recommend_always"])
        {
          if (v15)
          {
            -[RecommendationPreferences setForce_dps_recommend_always:](self, "setForce_dps_recommend_always:", [v15 BOOLValue]);
            v16 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              force_dps_recommend_always = [(RecommendationPreferences *)self force_dps_recommend_always];
              v23 = "NO";
              v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
              *buf = 136446722;
              if (force_dps_recommend_always)
              {
                v23 = "YES";
              }

              v38 = 1024;
              v39 = 596;
              v40 = 2080;
              minutes_between_dps_wd = v23;
              v19 = "%{public}s::%d:force_dps_recommend_always Preference is %s";
              goto LABEL_228;
            }

            goto LABEL_229;
          }

          goto LABEL_230;
        }

        if ([pathCopy isEqualToString:@"dns_symptoms_trap_evaluated_at_sample"])
        {
          if (!v15)
          {
            goto LABEL_230;
          }

          -[RecommendationPreferences setDns_symptoms_trap_evaluated_at_sample:](self, "setDns_symptoms_trap_evaluated_at_sample:", [v15 unsignedIntegerValue]);
          v16 = WALogCategoryDefaultHandle();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_229;
          }

          *buf = 136446722;
          v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
          v38 = 1024;
          v39 = 601;
          v40 = 2048;
          minutes_between_dps_wd = [(RecommendationPreferences *)self dns_symptoms_trap_evaluated_at_sample];
          v19 = "%{public}s::%d:dns_symptoms_trap_evaluated_at_sample Preference is %ld";
        }

        else if ([pathCopy isEqualToString:@"dns_symptoms_interrogation_sample_count"])
        {
          if (!v15)
          {
            goto LABEL_230;
          }

          -[RecommendationPreferences setDns_symptoms_interrogation_sample_count:](self, "setDns_symptoms_interrogation_sample_count:", [v15 unsignedIntegerValue]);
          v16 = WALogCategoryDefaultHandle();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_229;
          }

          *buf = 136446722;
          v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
          v38 = 1024;
          v39 = 606;
          v40 = 2048;
          minutes_between_dps_wd = [(RecommendationPreferences *)self dns_symptoms_interrogation_sample_count];
          v19 = "%{public}s::%d:dns_symptoms_interrogation_sample_count Preference is %ld";
        }

        else if ([pathCopy isEqualToString:@"dns_symptoms_duration_between_samples_before_trap"])
        {
          if (!v15)
          {
            goto LABEL_230;
          }

          -[RecommendationPreferences setDns_symptoms_duration_between_samples_before_trap:](self, "setDns_symptoms_duration_between_samples_before_trap:", [v15 unsignedIntegerValue]);
          v16 = WALogCategoryDefaultHandle();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_229;
          }

          *buf = 136446722;
          v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
          v38 = 1024;
          v39 = 611;
          v40 = 2048;
          minutes_between_dps_wd = [(RecommendationPreferences *)self dns_symptoms_duration_between_samples_before_trap];
          v19 = "%{public}s::%d:dns_symptoms_duration_between_samples_before_trap Preference is %ld";
        }

        else if ([pathCopy isEqualToString:@"dns_symptoms_duration_between_samples_after_trap"])
        {
          if (!v15)
          {
            goto LABEL_230;
          }

          -[RecommendationPreferences setDns_symptoms_duration_between_samples_after_trap:](self, "setDns_symptoms_duration_between_samples_after_trap:", [v15 unsignedIntegerValue]);
          v16 = WALogCategoryDefaultHandle();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_229;
          }

          *buf = 136446722;
          v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
          v38 = 1024;
          v39 = 616;
          v40 = 2048;
          minutes_between_dps_wd = [(RecommendationPreferences *)self dns_symptoms_duration_between_samples_after_trap];
          v19 = "%{public}s::%d:dns_symptoms_duration_between_samples_after_trap Preference is %ld";
        }

        else if ([pathCopy isEqualToString:@"dns_symptoms_duration_between_samples_during_recovery"])
        {
          if (!v15)
          {
            goto LABEL_230;
          }

          -[RecommendationPreferences setDns_symptoms_duration_between_samples_during_recovery:](self, "setDns_symptoms_duration_between_samples_during_recovery:", [v15 unsignedIntegerValue]);
          v16 = WALogCategoryDefaultHandle();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_229;
          }

          *buf = 136446722;
          v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
          v38 = 1024;
          v39 = 621;
          v40 = 2048;
          minutes_between_dps_wd = [(RecommendationPreferences *)self dns_symptoms_duration_between_samples_during_recovery];
          v19 = "%{public}s::%d:dns_symptoms_duration_between_samples_during_recovery Preference is %ld";
        }

        else if ([pathCopy isEqualToString:@"dns_symptoms_duration_between_status_polling_post_reassoc"])
        {
          if (!v15)
          {
            goto LABEL_230;
          }

          -[RecommendationPreferences setDns_symptoms_duration_between_status_polling_post_reassoc:](self, "setDns_symptoms_duration_between_status_polling_post_reassoc:", [v15 unsignedIntegerValue]);
          v16 = WALogCategoryDefaultHandle();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_229;
          }

          *buf = 136446722;
          v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
          v38 = 1024;
          v39 = 626;
          v40 = 2048;
          minutes_between_dps_wd = [(RecommendationPreferences *)self dns_symptoms_duration_between_status_polling_post_reassoc];
          v19 = "%{public}s::%d:dns_symptoms_duration_between_status_polling_post_reassoc Preference is %ld";
        }

        else if ([pathCopy isEqualToString:@"dns_symptoms_status_polling_count_post_reassoc"])
        {
          if (!v15)
          {
            goto LABEL_230;
          }

          -[RecommendationPreferences setDns_symptoms_status_polling_count_post_reassoc:](self, "setDns_symptoms_status_polling_count_post_reassoc:", [v15 unsignedIntegerValue]);
          v16 = WALogCategoryDefaultHandle();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_229;
          }

          *buf = 136446722;
          v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
          v38 = 1024;
          v39 = 631;
          v40 = 2048;
          minutes_between_dps_wd = [(RecommendationPreferences *)self dns_symptoms_status_polling_count_post_reassoc];
          v19 = "%{public}s::%d:dns_symptoms_status_polling_count_post_reassoc Preference is %ld";
        }

        else if ([pathCopy isEqualToString:@"dns_symptoms_query_resolution_timeout"])
        {
          if (!v15)
          {
            goto LABEL_230;
          }

          -[RecommendationPreferences setDns_symptoms_query_resolution_timeout:](self, "setDns_symptoms_query_resolution_timeout:", [v15 unsignedIntegerValue]);
          v16 = WALogCategoryDefaultHandle();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_229;
          }

          *buf = 136446722;
          v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
          v38 = 1024;
          v39 = 636;
          v40 = 2048;
          minutes_between_dps_wd = [(RecommendationPreferences *)self dns_symptoms_query_resolution_timeout];
          v19 = "%{public}s::%d:dns_symptoms_query_resolution_timeout Preference is %ld";
        }

        else
        {
          if ([pathCopy isEqualToString:@"disable_fast_dps_wd"])
          {
            if (v15)
            {
              -[RecommendationPreferences setDisable_fast_dps_wd:](self, "setDisable_fast_dps_wd:", [v15 BOOLValue]);
              v16 = WALogCategoryDefaultHandle();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                disable_fast_dps_wd = [(RecommendationPreferences *)self disable_fast_dps_wd];
                v25 = "NO";
                v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
                *buf = 136446722;
                if (disable_fast_dps_wd)
                {
                  v25 = "YES";
                }

                v38 = 1024;
                v39 = 641;
                v40 = 2080;
                minutes_between_dps_wd = v25;
                v19 = "%{public}s::%d:disable_fast_dps_wd Preference is %s";
                goto LABEL_228;
              }

              goto LABEL_229;
            }

            goto LABEL_230;
          }

          if ([pathCopy isEqualToString:@"disable_fast_dps_validation_for_test"])
          {
            if (v15)
            {
              -[RecommendationPreferences setDisable_fast_dps_validation_for_test:](self, "setDisable_fast_dps_validation_for_test:", [v15 BOOLValue]);
              v16 = WALogCategoryDefaultHandle();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                disable_fast_dps_validation_for_test = [(RecommendationPreferences *)self disable_fast_dps_validation_for_test];
                v27 = "NO";
                v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
                *buf = 136446722;
                if (disable_fast_dps_validation_for_test)
                {
                  v27 = "YES";
                }

                v38 = 1024;
                v39 = 646;
                v40 = 2080;
                minutes_between_dps_wd = v27;
                v19 = "%{public}s::%d:disable_fast_dps_validation_for_test Preference is %s";
                goto LABEL_228;
              }

              goto LABEL_229;
            }

            goto LABEL_230;
          }

          if ([pathCopy isEqualToString:@"minutes_between_fast_dps_wd_screen_on"])
          {
            if (!v15)
            {
              goto LABEL_230;
            }

            -[RecommendationPreferences setMinutes_between_fast_dps_wd_screen_on:](self, "setMinutes_between_fast_dps_wd_screen_on:", [v15 unsignedIntegerValue]);
            v16 = WALogCategoryDefaultHandle();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_229;
            }

            *buf = 136446722;
            v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
            v38 = 1024;
            v39 = 651;
            v40 = 2048;
            minutes_between_dps_wd = [(RecommendationPreferences *)self minutes_between_fast_dps_wd_screen_on];
            v19 = "%{public}s::%d:minutes_between_fast_dps_wd_screen_on Preference is %ld";
          }

          else if ([pathCopy isEqualToString:@"minutes_between_fast_dps_wd_screen_off"])
          {
            if (!v15)
            {
              goto LABEL_230;
            }

            -[RecommendationPreferences setMinutes_between_fast_dps_wd_screen_off:](self, "setMinutes_between_fast_dps_wd_screen_off:", [v15 unsignedIntegerValue]);
            v16 = WALogCategoryDefaultHandle();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_229;
            }

            *buf = 136446722;
            v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
            v38 = 1024;
            v39 = 656;
            v40 = 2048;
            minutes_between_dps_wd = [(RecommendationPreferences *)self minutes_between_fast_dps_wd_screen_off];
            v19 = "%{public}s::%d:minutes_between_fast_dps_wd_screen_off Preference is %ld";
          }

          else if ([pathCopy isEqualToString:@"prediction_probability_threshold"])
          {
            if (!v15)
            {
              goto LABEL_230;
            }

            -[RecommendationPreferences setPrediction_probability_threshold:](self, "setPrediction_probability_threshold:", [v15 unsignedIntegerValue]);
            v16 = WALogCategoryDefaultHandle();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_229;
            }

            *buf = 136446722;
            v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
            v38 = 1024;
            v39 = 661;
            v40 = 2048;
            minutes_between_dps_wd = [(RecommendationPreferences *)self prediction_probability_threshold];
            v19 = "%{public}s::%d:prediction_probability_threshold Preference is %ld";
          }

          else if ([pathCopy isEqualToString:@"prediction_probability_threshold_macos"])
          {
            if (!v15)
            {
              goto LABEL_230;
            }

            -[RecommendationPreferences setPrediction_probability_threshold_macos:](self, "setPrediction_probability_threshold_macos:", [v15 unsignedIntegerValue]);
            v16 = WALogCategoryDefaultHandle();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_229;
            }

            *buf = 136446722;
            v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
            v38 = 1024;
            v39 = 666;
            v40 = 2048;
            minutes_between_dps_wd = [(RecommendationPreferences *)self prediction_probability_threshold_macos];
            v19 = "%{public}s::%d:prediction_probability_threshold_macos Preference is %ld";
          }

          else if ([pathCopy isEqualToString:@"reset_cca_bin_threshold"])
          {
            if (!v15)
            {
              goto LABEL_230;
            }

            -[RecommendationPreferences setReset_cca_bin_threshold:](self, "setReset_cca_bin_threshold:", [v15 unsignedIntegerValue]);
            v16 = WALogCategoryDefaultHandle();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_229;
            }

            *buf = 136446722;
            v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
            v38 = 1024;
            v39 = 671;
            v40 = 2048;
            minutes_between_dps_wd = [(RecommendationPreferences *)self reset_cca_bin_threshold];
            v19 = "%{public}s::%d:reset_cca_bin_threshold Preference is %ld";
          }

          else if ([pathCopy isEqualToString:@"reset_score_threshold"])
          {
            if (!v15)
            {
              goto LABEL_230;
            }

            -[RecommendationPreferences setReset_score_threshold:](self, "setReset_score_threshold:", [v15 unsignedIntegerValue]);
            v16 = WALogCategoryDefaultHandle();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_229;
            }

            *buf = 136446722;
            v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
            v38 = 1024;
            v39 = 676;
            v40 = 2048;
            minutes_between_dps_wd = [(RecommendationPreferences *)self reset_score_threshold];
            v19 = "%{public}s::%d:reset_score_threshold Preference is %ld";
          }

          else if ([pathCopy isEqualToString:@"dps_symptoms_average_cca_threshold"])
          {
            if (!v15)
            {
              goto LABEL_230;
            }

            -[RecommendationPreferences setDps_symptoms_average_cca_threshold:](self, "setDps_symptoms_average_cca_threshold:", [v15 unsignedIntegerValue]);
            v16 = WALogCategoryDefaultHandle();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_229;
            }

            *buf = 136446722;
            v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
            v38 = 1024;
            v39 = 681;
            v40 = 2048;
            minutes_between_dps_wd = [(RecommendationPreferences *)self dps_symptoms_average_cca_threshold];
            v19 = "%{public}s::%d:dps_symptoms_average_cca_threshold Preference is %ld";
          }

          else if ([pathCopy isEqualToString:@"reset_pd_rssi_threshold"])
          {
            if (!v15)
            {
              goto LABEL_230;
            }

            -[RecommendationPreferences setReset_pd_rssi_threshold:](self, "setReset_pd_rssi_threshold:", [v15 integerValue]);
            v16 = WALogCategoryDefaultHandle();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_229;
            }

            *buf = 136446722;
            v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
            v38 = 1024;
            v39 = 686;
            v40 = 2048;
            minutes_between_dps_wd = [(RecommendationPreferences *)self reset_pd_rssi_threshold];
            v19 = "%{public}s::%d:reset_pd_rssi_threshold Preference is %ld";
          }

          else if ([pathCopy isEqualToString:@"reset_pd_cca_threshold"])
          {
            if (!v15)
            {
              goto LABEL_230;
            }

            -[RecommendationPreferences setReset_pd_cca_threshold:](self, "setReset_pd_cca_threshold:", [v15 unsignedIntegerValue]);
            v16 = WALogCategoryDefaultHandle();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_229;
            }

            *buf = 136446722;
            v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
            v38 = 1024;
            v39 = 691;
            v40 = 2048;
            minutes_between_dps_wd = [(RecommendationPreferences *)self reset_pd_cca_threshold];
            v19 = "%{public}s::%d:reset_pd_cca_threshold Preference is %ld";
          }

          else if ([pathCopy isEqualToString:@"minutes_between_symptoms_dps_wd_screen_on"])
          {
            if (!v15)
            {
              goto LABEL_230;
            }

            -[RecommendationPreferences setMinutes_between_symptoms_dps_wd_screen_on:](self, "setMinutes_between_symptoms_dps_wd_screen_on:", [v15 unsignedIntegerValue]);
            v16 = WALogCategoryDefaultHandle();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_229;
            }

            *buf = 136446722;
            v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
            v38 = 1024;
            v39 = 696;
            v40 = 2048;
            minutes_between_dps_wd = [(RecommendationPreferences *)self minutes_between_symptoms_dps_wd_screen_on];
            v19 = "%{public}s::%d:minutes_between_symptoms_dps_wd_screen_on Preference is %ld";
          }

          else if ([pathCopy isEqualToString:@"minutes_between_symptoms_dps_wd_screen_off"])
          {
            if (!v15)
            {
              goto LABEL_230;
            }

            -[RecommendationPreferences setMinutes_between_symptoms_dps_wd_screen_off:](self, "setMinutes_between_symptoms_dps_wd_screen_off:", [v15 unsignedIntegerValue]);
            v16 = WALogCategoryDefaultHandle();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_229;
            }

            *buf = 136446722;
            v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
            v38 = 1024;
            v39 = 701;
            v40 = 2048;
            minutes_between_dps_wd = [(RecommendationPreferences *)self minutes_between_symptoms_dps_wd_screen_off];
            v19 = "%{public}s::%d:minutes_between_symptoms_dps_wd_screen_off Preference is %ld";
          }

          else if ([pathCopy isEqualToString:@"minutes_between_peer_diagnostics_trigger_for_dns_stall"])
          {
            if (!v15)
            {
              goto LABEL_230;
            }

            -[RecommendationPreferences setMinutes_between_peer_diagnostics_trigger_for_dns_stall:](self, "setMinutes_between_peer_diagnostics_trigger_for_dns_stall:", [v15 unsignedIntegerValue]);
            v16 = WALogCategoryDefaultHandle();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_229;
            }

            *buf = 136446722;
            v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
            v38 = 1024;
            v39 = 706;
            v40 = 2048;
            minutes_between_dps_wd = [(RecommendationPreferences *)self minutes_between_peer_diagnostics_trigger_for_dns_stall];
            v19 = "%{public}s::%d:minutes_between_peer_diagnostics_trigger_for_dns_stall Preference is %ld";
          }

          else if ([pathCopy isEqualToString:@"minutes_between_peer_diagnostics_trigger_for_other_issues"])
          {
            if (!v15)
            {
              goto LABEL_230;
            }

            -[RecommendationPreferences setMinutes_between_peer_diagnostics_trigger_for_other_issues:](self, "setMinutes_between_peer_diagnostics_trigger_for_other_issues:", [v15 unsignedIntegerValue]);
            v16 = WALogCategoryDefaultHandle();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_229;
            }

            *buf = 136446722;
            v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
            v38 = 1024;
            v39 = 711;
            v40 = 2048;
            minutes_between_dps_wd = [(RecommendationPreferences *)self minutes_between_peer_diagnostics_trigger_for_other_issues];
            v19 = "%{public}s::%d:minutes_between_peer_diagnostics_trigger_for_other_issues Preference is %ld";
          }

          else if ([pathCopy isEqualToString:@"reset_legacy_chipset_cca_bin_threshold"])
          {
            if (!v15)
            {
              goto LABEL_230;
            }

            -[RecommendationPreferences setReset_legacy_chipset_cca_bin_threshold:](self, "setReset_legacy_chipset_cca_bin_threshold:", [v15 unsignedIntegerValue]);
            v16 = WALogCategoryDefaultHandle();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_229;
            }

            *buf = 136446722;
            v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
            v38 = 1024;
            v39 = 716;
            v40 = 2048;
            minutes_between_dps_wd = [(RecommendationPreferences *)self reset_legacy_chipset_cca_bin_threshold];
            v19 = "%{public}s::%d:reset_legacy_chipset_cca_bin_threshold Preference is %ld";
          }

          else if ([pathCopy isEqualToString:@"reset_rssi_bin_threshold"])
          {
            if (!v15)
            {
              goto LABEL_230;
            }

            -[RecommendationPreferences setReset_rssi_bin_threshold:](self, "setReset_rssi_bin_threshold:", [v15 unsignedIntegerValue]);
            v16 = WALogCategoryDefaultHandle();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_229;
            }

            *buf = 136446722;
            v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
            v38 = 1024;
            v39 = 721;
            v40 = 2048;
            minutes_between_dps_wd = [(RecommendationPreferences *)self reset_rssi_bin_threshold];
            v19 = "%{public}s::%d:reset_rssi_bin_threshold Preference is %ld";
          }

          else if ([pathCopy isEqualToString:@"reset_awdl_activity_threshold"])
          {
            if (!v15)
            {
              goto LABEL_230;
            }

            -[RecommendationPreferences setReset_awdl_activity_threshold:](self, "setReset_awdl_activity_threshold:", [v15 unsignedIntegerValue]);
            v16 = WALogCategoryDefaultHandle();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_229;
            }

            *buf = 136446722;
            v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
            v38 = 1024;
            v39 = 726;
            v40 = 2048;
            minutes_between_dps_wd = [(RecommendationPreferences *)self reset_awdl_activity_threshold];
            v19 = "%{public}s::%d:reset_awdl_activity_threshold Preference is %ld";
          }

          else if ([pathCopy isEqualToString:@"quick_dps_rssi_threshold"])
          {
            if (!v15)
            {
              goto LABEL_230;
            }

            -[RecommendationPreferences setQuick_dps_rssi_threshold:](self, "setQuick_dps_rssi_threshold:", [v15 unsignedIntegerValue]);
            v16 = WALogCategoryDefaultHandle();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_229;
            }

            *buf = 136446722;
            v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
            v38 = 1024;
            v39 = 731;
            v40 = 2048;
            minutes_between_dps_wd = [(RecommendationPreferences *)self quick_dps_rssi_threshold];
            v19 = "%{public}s::%d:quick_dps_rssi_threshold Preference is %ld";
          }

          else if ([pathCopy isEqualToString:@"slow_dps_rssi_bin_threshold"])
          {
            if (!v15)
            {
              goto LABEL_230;
            }

            -[RecommendationPreferences setSlow_dps_rssi_bin_threshold:](self, "setSlow_dps_rssi_bin_threshold:", [v15 unsignedIntegerValue]);
            v16 = WALogCategoryDefaultHandle();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_229;
            }

            *buf = 136446722;
            v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
            v38 = 1024;
            v39 = 736;
            v40 = 2048;
            minutes_between_dps_wd = [(RecommendationPreferences *)self slow_dps_rssi_bin_threshold];
            v19 = "%{public}s::%d:slow_dps_rssi_bin_threshold Preference is %ld";
          }

          else if ([pathCopy isEqualToString:@"reset_nan_activity_threshold"])
          {
            if (!v15)
            {
              goto LABEL_230;
            }

            -[RecommendationPreferences setReset_nan_activity_threshold:](self, "setReset_nan_activity_threshold:", [v15 unsignedIntegerValue]);
            v16 = WALogCategoryDefaultHandle();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_229;
            }

            *buf = 136446722;
            v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
            v38 = 1024;
            v39 = 741;
            v40 = 2048;
            minutes_between_dps_wd = [(RecommendationPreferences *)self reset_nan_activity_threshold];
            v19 = "%{public}s::%d:reset_nan_activity_threshold Preference is %ld";
          }

          else
          {
            if ([pathCopy isEqualToString:@"disable_slow_wifi_wd"])
            {
              if (v15)
              {
                -[RecommendationPreferences setDisable_slow_wifi_wd:](self, "setDisable_slow_wifi_wd:", [v15 BOOLValue]);
                v16 = WALogCategoryDefaultHandle();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  disable_slow_wifi_wd = [(RecommendationPreferences *)self disable_slow_wifi_wd];
                  v29 = "NO";
                  v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
                  *buf = 136446722;
                  if (disable_slow_wifi_wd)
                  {
                    v29 = "YES";
                  }

                  v38 = 1024;
                  v39 = 746;
                  v40 = 2080;
                  minutes_between_dps_wd = v29;
                  v19 = "%{public}s::%d:disable_slow_wifi_wd Preference is %s";
                  goto LABEL_228;
                }

                goto LABEL_229;
              }

              goto LABEL_230;
            }

            if ([pathCopy isEqualToString:@"minutes_between_slow_wifi_wd"])
            {
              if (!v15)
              {
                goto LABEL_230;
              }

              -[RecommendationPreferences setMinutes_between_slow_wifi_wd:](self, "setMinutes_between_slow_wifi_wd:", [v15 unsignedIntegerValue]);
              v16 = WALogCategoryDefaultHandle();
              if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_229;
              }

              *buf = 136446722;
              v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
              v38 = 1024;
              v39 = 751;
              v40 = 2048;
              minutes_between_dps_wd = [(RecommendationPreferences *)self minutes_between_slow_wifi_wd];
              v19 = "%{public}s::%d:minutes_between_slow_wifi_wd Preference is %ld";
            }

            else if ([pathCopy isEqualToString:@"slow_wifi_interrogation_sample_count"])
            {
              if (!v15)
              {
                goto LABEL_230;
              }

              -[RecommendationPreferences setSlow_wifi_interrogation_sample_count:](self, "setSlow_wifi_interrogation_sample_count:", [v15 unsignedIntegerValue]);
              v16 = WALogCategoryDefaultHandle();
              if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_229;
              }

              *buf = 136446722;
              v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
              v38 = 1024;
              v39 = 756;
              v40 = 2048;
              minutes_between_dps_wd = [(RecommendationPreferences *)self slow_wifi_interrogation_sample_count];
              v19 = "%{public}s::%d:slow_wifi_interrogation_sample_count Preference is %ld";
            }

            else if ([pathCopy isEqualToString:@"slow_wifi_duration_between_samples"])
            {
              if (!v15)
              {
                goto LABEL_230;
              }

              -[RecommendationPreferences setSlow_wifi_duration_between_samples:](self, "setSlow_wifi_duration_between_samples:", [v15 unsignedIntegerValue]);
              v16 = WALogCategoryDefaultHandle();
              if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_229;
              }

              *buf = 136446722;
              v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
              v38 = 1024;
              v39 = 761;
              v40 = 2048;
              minutes_between_dps_wd = [(RecommendationPreferences *)self slow_wifi_duration_between_samples];
              v19 = "%{public}s::%d:slow_wifi_duration_between_samples Preference is %ld";
            }

            else if ([pathCopy isEqualToString:@"slow_wifi_report_sent_after"])
            {
              if (!v15)
              {
                goto LABEL_230;
              }

              -[RecommendationPreferences setSlow_wifi_report_sent_after:](self, "setSlow_wifi_report_sent_after:", [v15 unsignedIntegerValue]);
              v16 = WALogCategoryDefaultHandle();
              if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_229;
              }

              *buf = 136446722;
              v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
              v38 = 1024;
              v39 = 766;
              v40 = 2048;
              minutes_between_dps_wd = [(RecommendationPreferences *)self slow_wifi_report_sent_after];
              v19 = "%{public}s::%d:slow_wifi_report_sent_after Preference is %ld";
            }

            else
            {
              if ([pathCopy isEqualToString:@"disable_slow_wifi_dps_is_priority_network"])
              {
                if (v15)
                {
                  -[RecommendationPreferences setDisable_slow_wifi_dps_is_priority_network:](self, "setDisable_slow_wifi_dps_is_priority_network:", [v15 BOOLValue]);
                  v16 = WALogCategoryDefaultHandle();
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                  {
                    disable_slow_wifi_dps_is_priority_network = [(RecommendationPreferences *)self disable_slow_wifi_dps_is_priority_network];
                    v31 = "NO";
                    v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
                    *buf = 136446722;
                    if (disable_slow_wifi_dps_is_priority_network)
                    {
                      v31 = "YES";
                    }

                    v38 = 1024;
                    v39 = 771;
                    v40 = 2080;
                    minutes_between_dps_wd = v31;
                    v19 = "%{public}s::%d:disable_slow_wifi_dps_is_priority_network Preference is %s";
                    goto LABEL_228;
                  }

                  goto LABEL_229;
                }

                goto LABEL_230;
              }

              if ([pathCopy isEqualToString:@"ior_rescan_budget_less_than_previous_max_channels_seconds"])
              {
                if (!v15)
                {
                  goto LABEL_230;
                }

                -[RecommendationPreferences setIor_rescan_budget_less_than_previous_max_channels_seconds:](self, "setIor_rescan_budget_less_than_previous_max_channels_seconds:", [v15 unsignedIntegerValue]);
                v16 = WALogCategoryDefaultHandle();
                if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_229;
                }

                *buf = 136446722;
                v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
                v38 = 1024;
                v39 = 776;
                v40 = 2048;
                minutes_between_dps_wd = [(RecommendationPreferences *)self ior_rescan_budget_less_than_previous_max_channels_seconds];
                v19 = "%{public}s::%d:ior_rescan_budget_less_than_previous_max_channels_seconds Preference is %ld";
              }

              else if ([pathCopy isEqualToString:@"ior_rescan_budget_exploratory_seconds"])
              {
                if (!v15)
                {
                  goto LABEL_230;
                }

                -[RecommendationPreferences setIor_rescan_budget_exploratory_seconds:](self, "setIor_rescan_budget_exploratory_seconds:", [v15 unsignedIntegerValue]);
                v16 = WALogCategoryDefaultHandle();
                if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_229;
                }

                *buf = 136446722;
                v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
                v38 = 1024;
                v39 = 781;
                v40 = 2048;
                minutes_between_dps_wd = [(RecommendationPreferences *)self ior_rescan_budget_exploratory_seconds];
                v19 = "%{public}s::%d:ior_rescan_budget_exploratory_seconds Preference is %ld";
              }

              else if ([pathCopy isEqualToString:@"ior_rescan_new_phy_delay_seconds"])
              {
                if (!v15)
                {
                  goto LABEL_230;
                }

                -[RecommendationPreferences setIor_rescan_new_phy_delay_seconds:](self, "setIor_rescan_new_phy_delay_seconds:", [v15 unsignedIntegerValue]);
                v16 = WALogCategoryDefaultHandle();
                if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_229;
                }

                *buf = 136446722;
                v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
                v38 = 1024;
                v39 = 786;
                v40 = 2048;
                minutes_between_dps_wd = [(RecommendationPreferences *)self ior_rescan_new_phy_delay_seconds];
                v19 = "%{public}s::%d:ior_rescan_new_phy_delay_seconds Preference is %ld";
              }

              else if ([pathCopy isEqualToString:@"ior_persist_delay_seconds"])
              {
                if (!v15)
                {
                  goto LABEL_230;
                }

                -[RecommendationPreferences setIor_persist_delay_seconds:](self, "setIor_persist_delay_seconds:", [v15 unsignedIntegerValue]);
                v16 = WALogCategoryDefaultHandle();
                if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_229;
                }

                *buf = 136446722;
                v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
                v38 = 1024;
                v39 = 791;
                v40 = 2048;
                minutes_between_dps_wd = [(RecommendationPreferences *)self ior_persist_delay_seconds];
                v19 = "%{public}s::%d:ior_persist_delay_seconds Preference is %ld";
              }

              else
              {
                if (![pathCopy isEqualToString:@"work_report_seconds"])
                {
                  if ([pathCopy isEqualToString:@"work_report_logs_enabled"])
                  {
                    if (v15)
                    {
                      -[RecommendationPreferences setWork_report_logs_enabled:](self, "setWork_report_logs_enabled:", [v15 BOOLValue]);
                      v16 = WALogCategoryDefaultHandle();
                      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                      {
                        work_report_logs_enabled = [(RecommendationPreferences *)self work_report_logs_enabled];
                        v33 = "NO";
                        v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
                        *buf = 136446722;
                        if (work_report_logs_enabled)
                        {
                          v33 = "YES";
                        }

                        v38 = 1024;
                        v39 = 801;
                        v40 = 2080;
                        minutes_between_dps_wd = v33;
                        v19 = "%{public}s::%d:work_report_logs_enabled Preference is %s";
                        goto LABEL_228;
                      }

                      goto LABEL_229;
                    }
                  }

                  else
                  {
                    v34 = WALogCategoryDefaultHandle();
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136446978;
                      v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
                      v38 = 1024;
                      v39 = 804;
                      v40 = 2112;
                      minutes_between_dps_wd = changeCopy;
                      v42 = 2112;
                      v43 = pathCopy;
                      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%{public}s::%d:Received an unexpected wifianalyticsd preference change: %@ for %@", buf, 0x26u);
                    }

                    v35.receiver = self;
                    v35.super_class = RecommendationPreferences;
                    [(RecommendationPreferences *)&v35 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
                  }

                  goto LABEL_230;
                }

                if (!v15)
                {
                  goto LABEL_230;
                }

                -[RecommendationPreferences setWork_report_seconds:](self, "setWork_report_seconds:", [v15 unsignedIntegerValue]);
                v16 = WALogCategoryDefaultHandle();
                if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_229;
                }

                *buf = 136446722;
                v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
                v38 = 1024;
                v39 = 796;
                v40 = 2048;
                minutes_between_dps_wd = [(RecommendationPreferences *)self work_report_seconds];
                v19 = "%{public}s::%d:work_report_seconds Preference is %ld";
              }
            }
          }
        }
      }

LABEL_228:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v19, buf, 0x1Cu);
      goto LABEL_229;
    }

    if (v15)
    {
      -[RecommendationPreferences setDisable_dps_wd:](self, "setDisable_dps_wd:", [v15 BOOLValue]);
      v16 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        disable_dps_wd = [(RecommendationPreferences *)self disable_dps_wd];
        v21 = "NO";
        v37 = "[RecommendationPreferences observeValueForKeyPath:ofObject:change:context:]";
        *buf = 136446722;
        if (disable_dps_wd)
        {
          v21 = "YES";
        }

        v38 = 1024;
        v39 = 551;
        v40 = 2080;
        minutes_between_dps_wd = v21;
        v19 = "%{public}s::%d:disable_dps_wd Preference is %s";
        goto LABEL_228;
      }

      goto LABEL_229;
    }
  }

LABEL_230:
}

@end