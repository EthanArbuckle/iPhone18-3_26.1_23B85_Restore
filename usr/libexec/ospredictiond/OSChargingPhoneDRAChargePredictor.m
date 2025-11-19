@interface OSChargingPhoneDRAChargePredictor
- (MLModel)durationOnPluginModel;
- (OSChargingTwoStagePredictorQueryResult)chargingDecision:(SEL)a3 withPluginDate:(unint64_t)a4 withPluginBatteryLevel:(id)a5 forDate:(double)a6 withLog:(id)a7;
- (id)getInputFeatures:(double)a3 events:(id)a4 pluginBatteryLevel:(unint64_t)a5 timeFromPlugin:(double)a6 pluginDate:(id)a7 withLog:(id)a8;
@end

@implementation OSChargingPhoneDRAChargePredictor

- (MLModel)durationOnPluginModel
{
  durationOnPluginModel = self->_durationOnPluginModel;
  if (!durationOnPluginModel)
  {
    v4 = [(OSChargingTwoStagePredictor *)self trialManager];
    v5 = [v4 loadTrialDRAModelByDeletingExistingModel:0];
    v6 = self->_durationOnPluginModel;
    self->_durationOnPluginModel = v5;

    if (!self->_durationOnPluginModel)
    {
      v7 = [(OSChargingTwoStagePredictor *)self log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_10005C1FC(v7, v8, v9, v10, v11, v12, v13, v14);
      }

      v15 = [(OSChargingTwoStagePredictor *)self loadModelWithModelNameString:@"dynamic_scheduling"];
      v16 = self->_durationOnPluginModel;
      self->_durationOnPluginModel = v15;
    }

    v17 = [(OSChargingTwoStagePredictor *)self trialManager];
    [v17 loadTrialDRAModelMinDuration];
    self->_modelMinDuration = v18;

    if (self->_modelMinDuration < 0.0)
    {
      v19 = [(OSChargingTwoStagePredictor *)self log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        sub_10005C234(v19, v20, v21, v22, v23, v24, v25, v26);
      }

      v27 = [(MLModel *)self->_durationOnPluginModel modelDescription];
      v28 = [v27 metadata];
      v29 = [v28 objectForKeyedSubscript:MLModelCreatorDefinedKey];
      v30 = [v29 objectForKeyedSubscript:@"min_duration"];
      [v30 doubleValue];
      self->_modelMinDuration = v31;
    }

    v32 = [(OSChargingTwoStagePredictor *)self log];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      modelMinDuration = self->_modelMinDuration;
      v52 = 134217984;
      v53 = modelMinDuration;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "DRA model min duration is: %f", &v52, 0xCu);
    }

    v34 = [(OSChargingTwoStagePredictor *)self trialManager];
    [v34 loadTrialDRAModelLeeway];
    self->_modelLeeway = v35;

    if (self->_modelLeeway < 0.0)
    {
      v36 = [(OSChargingTwoStagePredictor *)self log];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        sub_10005C26C(v36, v37, v38, v39, v40, v41, v42, v43);
      }

      v44 = [(MLModel *)self->_durationOnPluginModel modelDescription];
      v45 = [v44 metadata];
      v46 = [v45 objectForKeyedSubscript:MLModelCreatorDefinedKey];
      v47 = [v46 objectForKeyedSubscript:@"leeway"];
      [v47 doubleValue];
      self->_modelLeeway = v48;
    }

    v49 = [(OSChargingTwoStagePredictor *)self log];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      modelLeeway = self->_modelLeeway;
      v52 = 134217984;
      v53 = modelLeeway;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "DRA model leeway is: %f", &v52, 0xCu);
    }

    durationOnPluginModel = self->_durationOnPluginModel;
  }

  return durationOnPluginModel;
}

- (id)getInputFeatures:(double)a3 events:(id)a4 pluginBatteryLevel:(unint64_t)a5 timeFromPlugin:(double)a6 pluginDate:(id)a7 withLog:(id)a8
{
  v102 = a8;
  v10 = a7;
  v11 = a4;
  v12 = [OSIntelligenceUtilities filterEventsSortedByStartDateAscending:v11 startsBefore:v10 dynamicallyAroundDate:v10 withHourBinWidth:1];
  v13 = [OSIntelligenceUtilities filterEventsSortedByStartDateAscending:v11 startsBefore:v10 dynamicallyAroundDate:v10 withHourBinWidth:2];
  v14 = [OSIntelligenceUtilities filterEventsSortedByStartDateAscending:v11 startsBefore:v10 dynamicallyAroundDate:v10 withHourBinWidth:4];
  v15 = [OSIntelligenceUtilities filterEventsSortedByStartDateAscending:v11 startsBefore:v10 dynamicallyAroundDate:v10 withHourBinWidth:8];
  v16 = [OSIntelligenceUtilities filterEventsSortedByStartDateAscending:v11 startsBefore:v10 dynamicallyAroundDate:v10 withHourBinWidth:16];
  v17 = [OSIntelligenceUtilities filterEventsSortedByStartDateAscending:v11 startsBefore:v10 dynamicallyAroundDate:v10 withHourBinWidth:24];

  v18 = [OSIntelligenceUtilities filterEvents:v12 startOnSameWeekdayAs:v10];
  v19 = [OSIntelligenceUtilities filterEvents:v13 startOnSameWeekdayAs:v10];
  v128 = [OSIntelligenceUtilities filterEvents:v14 startOnSameWeekdayAs:v10];
  v127 = [OSIntelligenceUtilities filterEvents:v15 startOnSameWeekdayAs:v10];
  v126 = [OSIntelligenceUtilities filterEvents:v17 startOnSameWeekdayAs:v10];

  v129 = v12;
  v20 = [OSIntelligenceUtilities getDurationsFromEvents:v12 withUnit:3600.0 cappedAt:0.0];
  v122 = v13;
  v21 = [OSIntelligenceUtilities getDurationsFromEvents:v13 withUnit:3600.0 cappedAt:0.0];
  v121 = v14;
  v22 = [OSIntelligenceUtilities getDurationsFromEvents:v14 withUnit:3600.0 cappedAt:0.0];
  v120 = v15;
  v23 = [OSIntelligenceUtilities getDurationsFromEvents:v15 withUnit:3600.0 cappedAt:0.0];
  v123 = v16;
  v24 = [OSIntelligenceUtilities getDurationsFromEvents:v16 withUnit:3600.0 cappedAt:0.0];
  v119 = v17;
  v25 = [OSIntelligenceUtilities getDurationsFromEvents:v17 withUnit:3600.0 cappedAt:0.0];
  v107 = v18;
  v125 = [OSIntelligenceUtilities getDurationsFromEvents:v18 withUnit:3600.0 cappedAt:0.0];
  v106 = v19;
  v124 = [OSIntelligenceUtilities getDurationsFromEvents:v19 withUnit:3600.0 cappedAt:0.0];
  v26 = [OSIntelligenceUtilities getDurationsFromEvents:v128 withUnit:3600.0 cappedAt:0.0];
  v27 = [OSIntelligenceUtilities getDurationsFromEvents:v127 withUnit:3600.0 cappedAt:0.0];
  v28 = [OSIntelligenceUtilities getDurationsFromEvents:v126 withUnit:3600.0 cappedAt:0.0];
  [OSIntelligenceUtilities standardDeviationOf:v20];
  v113 = v29;
  [OSIntelligenceUtilities standardDeviationOf:v21];
  v114 = v30;
  [OSIntelligenceUtilities standardDeviationOf:v22];
  v117 = v31;
  [OSIntelligenceUtilities standardDeviationOf:v23];
  v33 = v32;
  [OSIntelligenceUtilities standardDeviationOf:v24];
  v35 = v34;
  [OSIntelligenceUtilities standardDeviationOf:v25];
  v37 = v36;
  [OSIntelligenceUtilities standardDeviationOf:v26];
  v39 = v38;
  [OSIntelligenceUtilities medianOf:v20];
  v41 = v40;
  [OSIntelligenceUtilities medianOf:v21];
  v108 = v42;
  [OSIntelligenceUtilities medianOf:v22];
  v109 = v43;
  [OSIntelligenceUtilities medianOf:v23];
  v110 = v44;
  [OSIntelligenceUtilities medianOf:v24];
  v111 = v45;
  v105 = v25;
  [OSIntelligenceUtilities medianOf:v25];
  v112 = v46;
  [OSIntelligenceUtilities medianOf:v125];
  v115 = v47;
  [OSIntelligenceUtilities medianOf:v124];
  v118 = v48;
  [OSIntelligenceUtilities medianOf:v26];
  v50 = v49;
  v104 = v27;
  [OSIntelligenceUtilities medianOf:v27];
  v52 = v51;
  v103 = v28;
  [OSIntelligenceUtilities medianOf:v28];
  v54 = v53;
  v55 = v102;
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v56 = [NSNumber numberWithUnsignedInteger:a5];
    v57 = [NSNumber numberWithDouble:a3];
    v58 = [NSNumber numberWithDouble:a6];
    *buf = 138412802;
    v131 = *&v56;
    v132 = 2112;
    v133 = *&v57;
    v134 = 2112;
    v135 = *&v58;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Model inputs: PluginBatteryLevel=%@, Hour=%@, TimeFromPlugin=%@", buf, 0x20u);
  }

  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C2A4();
  }

  v59 = v55;
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v60 = [v129 count];
    *buf = 134218496;
    v131 = *&v60;
    v132 = 2048;
    v133 = v113;
    v134 = 2048;
    v135 = v41;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin1: count %lu, std_dur_1: %f, med_dur_1: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C30C();
  }

  v61 = v59;
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    v62 = [v122 count];
    *buf = 134218496;
    v131 = *&v62;
    v132 = 2048;
    v133 = v114;
    v134 = 2048;
    v135 = v108;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin2: count %lu, std_dur_2: %f, med_dur_2: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C374();
  }

  v63 = v61;
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    v64 = [v121 count];
    *buf = 134218496;
    v131 = *&v64;
    v132 = 2048;
    v133 = v117;
    v134 = 2048;
    v135 = v109;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin4: count %lu, std_dur_4: %f, med_dur_4: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C3DC();
  }

  v65 = v63;
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    v66 = [v120 count];
    *buf = 134218496;
    v131 = *&v66;
    v132 = 2048;
    v133 = v33;
    v134 = 2048;
    v135 = v110;
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin8: count %lu, std_dur_8: %f, med_dur_8: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C444();
  }

  v67 = v65;
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    v68 = [v123 count];
    *buf = 134218496;
    v131 = *&v68;
    v132 = 2048;
    v133 = v35;
    v134 = 2048;
    v135 = v111;
    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin16: count %lu, std_dur_16: %f, med_dur_16: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C4AC();
  }

  v69 = v67;
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
  {
    v70 = [v119 count];
    *buf = 134218496;
    v131 = *&v70;
    v132 = 2048;
    v133 = v37;
    v134 = 2048;
    v135 = v112;
    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Model inputs for hourBin24: count %lu, std_dur_24: %f, med_dur_24: %lf", buf, 0x20u);
  }

  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C514();
  }

  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v131 = v115;
    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Model inputs for weekday1: weekday_med_dur_1: %lf", buf, 0xCu);
  }

  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C57C();
  }

  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v131 = v118;
    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Model inputs for weekday2: weekday_med_dur_2: %lf", buf, 0xCu);
  }

  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C5E4();
  }

  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v131 = v50;
    v132 = 2048;
    v133 = v39;
    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Model inputs for weekday4: weekday_med_dur_4: %lf, weekday_std_dur_4: %lf", buf, 0x16u);
  }

  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C64C();
  }

  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v131 = v52;
    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Model inputs for weekday8: weekday_med_dur_8: %lf", buf, 0xCu);
  }

  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C6B4();
  }

  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v131 = v54;
    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Model inputs for weekday24: weekday_med_dur_24: %lf", buf, 0xCu);
  }

  v71 = +[NSMutableDictionary dictionary];
  v72 = [NSNumber numberWithUnsignedInteger:a5];
  [v71 setObject:v72 forKeyedSubscript:@"plugin_battery_level"];

  v73 = [NSNumber numberWithDouble:a6];
  [v71 setObject:v73 forKeyedSubscript:@"time_from_plugin"];

  v74 = [NSNumber numberWithDouble:v41];
  [v71 setObject:v74 forKeyedSubscript:@"med_dur_1"];

  v75 = [NSNumber numberWithDouble:v108];
  [v71 setObject:v75 forKeyedSubscript:@"med_dur_2"];

  v76 = [NSNumber numberWithDouble:v109];
  [v71 setObject:v76 forKeyedSubscript:@"med_dur_4"];

  v77 = [NSNumber numberWithDouble:v110];
  [v71 setObject:v77 forKeyedSubscript:@"med_dur_8"];

  v78 = [NSNumber numberWithDouble:v111];
  [v71 setObject:v78 forKeyedSubscript:@"med_dur_16"];

  v79 = [NSNumber numberWithDouble:v112];
  [v71 setObject:v79 forKeyedSubscript:@"med_dur_24"];

  v80 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v129 count]);
  [v71 setObject:v80 forKeyedSubscript:@"cnt_dur_1"];

  v81 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v122 count]);
  [v71 setObject:v81 forKeyedSubscript:@"cnt_dur_2"];

  v82 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v121 count]);
  [v71 setObject:v82 forKeyedSubscript:@"cnt_dur_4"];

  v83 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v120 count]);
  [v71 setObject:v83 forKeyedSubscript:@"cnt_dur_8"];

  v84 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v123 count]);
  [v71 setObject:v84 forKeyedSubscript:@"cnt_dur_16"];

  v85 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v119 count]);
  [v71 setObject:v85 forKeyedSubscript:@"cnt_dur_24"];

  v86 = [NSNumber numberWithDouble:v113];
  [v71 setObject:v86 forKeyedSubscript:@"std_dur_1"];

  v87 = [NSNumber numberWithDouble:v114];
  [v71 setObject:v87 forKeyedSubscript:@"std_dur_2"];

  v88 = [NSNumber numberWithDouble:v117];
  [v71 setObject:v88 forKeyedSubscript:@"std_dur_4"];

  v89 = [NSNumber numberWithDouble:v33];
  [v71 setObject:v89 forKeyedSubscript:@"std_dur_8"];

  v90 = [NSNumber numberWithDouble:v35];
  [v71 setObject:v90 forKeyedSubscript:@"std_dur_16"];

  v91 = [NSNumber numberWithDouble:v37];
  [v71 setObject:v91 forKeyedSubscript:@"std_dur_24"];

  v92 = [NSNumber numberWithDouble:v115];
  [v71 setObject:v92 forKeyedSubscript:@"weekday_med_dur_1"];

  v93 = [NSNumber numberWithDouble:v118];
  [v71 setObject:v93 forKeyedSubscript:@"weekday_med_dur_2"];

  v94 = [NSNumber numberWithDouble:v50];
  [v71 setObject:v94 forKeyedSubscript:@"weekday_med_dur_4"];

  v95 = [NSNumber numberWithDouble:v52];
  [v71 setObject:v95 forKeyedSubscript:@"weekday_med_dur_8"];

  v96 = [NSNumber numberWithDouble:v54];
  [v71 setObject:v96 forKeyedSubscript:@"weekday_med_dur_24"];

  v97 = [NSNumber numberWithDouble:v39];
  [v71 setObject:v97 forKeyedSubscript:@"weekday_std_dur_4"];

  v98 = [[MLDictionaryFeatureProvider alloc] initWithDictionary:v71 error:0];

  return v98;
}

- (OSChargingTwoStagePredictorQueryResult)chargingDecision:(SEL)a3 withPluginDate:(unint64_t)a4 withPluginBatteryLevel:(id)a5 forDate:(double)a6 withLog:(id)a7
{
  v13 = a8;
  v14 = a7;
  v15 = a5;
  v16 = os_transaction_create();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v30) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Getting predictions with DRA on plugin model", &v30, 2u);
  }

  v17 = [(OSChargingTwoStagePredictor *)self getInputFeaturesWithPluginDate:v15 withPluginBatteryLevel:v14 forDate:v13 withLog:a6];

  *&retstr->var0 = 0;
  *&retstr->var1 = vdupq_n_s64(0xC0F869F000000000);
  v18 = [(OSChargingPhoneDRAChargePredictor *)self durationOnPluginModel];
  v19 = [v18 predictionFromFeatures:v17 error:0];

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C71C();
  }

  v20 = [v19 featureValueForName:@"charge_duration"];
  [v20 doubleValue];
  v22 = v21;

  v23 = v22 - self->_modelLeeway;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    modelLeeway = self->_modelLeeway;
    v30 = 134218240;
    v31 = modelLeeway;
    v32 = 2048;
    v33 = v23;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[DRA] Applying leeway of %f hours, new duration: %f", &v30, 0x16u);
  }

  retstr->var1 = v23;
  modelMinDuration = self->_modelMinDuration;
  v26 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v23 <= modelMinDuration)
  {
    if (v26)
    {
      v28 = self->_modelMinDuration;
      v30 = 134217984;
      v31 = v28;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[DRA] duration shorter than minimum of %f, do not engage", &v30, 0xCu);
    }
  }

  else
  {
    if (v26)
    {
      v27 = self->_modelMinDuration;
      v30 = 134217984;
      v31 = v27;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[DRA] duration longer than minimum of %f", &v30, 0xCu);
    }

    retstr->var2 = 1.0;
    retstr->var0 = 1;
  }

  return result;
}

@end