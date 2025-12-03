@interface MetricsModule
+ (void)_setupDefaultRoutes;
+ (void)clearStorage;
+ (void)setup;
+ (void)start;
@end

@implementation MetricsModule

+ (void)_setupDefaultRoutes
{
  v229[0] = @"name";
  v229[1] = @"purpose";
  v230[0] = @"EC";
  v230[1] = &off_100492F40;
  v230[2] = @"ECRouter";
  v229[2] = @"dest";
  v229[3] = @"metrics";
  v227[0] = @"received";
  v225 = @"value";
  v226 = &off_100492F58;
  v96 = [NSDictionary dictionaryWithObjects:&v226 forKeys:&v225 count:1];
  v228[0] = v96;
  v227[1] = @"daemon_discarded";
  v223 = @"value";
  v224 = &off_100492F70;
  v94 = [NSDictionary dictionaryWithObjects:&v224 forKeys:&v223 count:1];
  v228[1] = v94;
  v227[2] = @"conversion";
  v221 = @"value";
  v222 = &off_100492F88;
  v92 = [NSDictionary dictionaryWithObjects:&v222 forKeys:&v221 count:1];
  v228[2] = v92;
  v227[3] = @"downloaded";
  v219 = @"value";
  v220 = &off_100492FA0;
  v88 = [NSDictionary dictionaryWithObjects:&v220 forKeys:&v219 count:1];
  v228[3] = v88;
  v227[4] = @"request_failed";
  v217 = @"value";
  v218 = &off_100492FB8;
  v86 = [NSDictionary dictionaryWithObjects:&v218 forKeys:&v217 count:1];
  v228[4] = v86;
  v227[5] = @"delivered";
  v215 = @"value";
  v216 = &off_100492FD0;
  v84 = [NSDictionary dictionaryWithObjects:&v216 forKeys:&v215 count:1];
  v228[5] = v84;
  v227[6] = @"discarded";
  v213 = @"value";
  v214 = &off_100492FE8;
  v83 = [NSDictionary dictionaryWithObjects:&v214 forKeys:&v213 count:1];
  v228[6] = v83;
  v227[7] = @"not_consumed";
  v211 = @"value";
  v212 = &off_100493000;
  v82 = [NSDictionary dictionaryWithObjects:&v212 forKeys:&v211 count:1];
  v228[7] = v82;
  v227[8] = @"unused";
  v209 = @"value";
  v210 = &off_100493018;
  v81 = [NSDictionary dictionaryWithObjects:&v210 forKeys:&v209 count:1];
  v228[8] = v81;
  v227[9] = @"created";
  v207 = @"value";
  v208 = &off_100493030;
  v80 = [NSDictionary dictionaryWithObjects:&v208 forKeys:&v207 count:1];
  v228[9] = v80;
  v227[10] = @"replaced";
  v205 = @"value";
  v206 = &off_100493048;
  v79 = [NSDictionary dictionaryWithObjects:&v206 forKeys:&v205 count:1];
  v228[10] = v79;
  v227[11] = @"loaded";
  v203 = @"value";
  v204 = &off_100493060;
  v78 = [NSDictionary dictionaryWithObjects:&v204 forKeys:&v203 count:1];
  v228[11] = v78;
  v227[12] = @"placed";
  v201 = @"value";
  v202 = &off_100493078;
  v77 = [NSDictionary dictionaryWithObjects:&v202 forKeys:&v201 count:1];
  v228[12] = v77;
  v227[13] = @"ready";
  v199 = @"value";
  v200 = &off_100493090;
  v76 = [NSDictionary dictionaryWithObjects:&v200 forKeys:&v199 count:1];
  v228[13] = v76;
  v227[14] = @"on_screen";
  v197 = @"value";
  v198 = &off_1004930A8;
  v75 = [NSDictionary dictionaryWithObjects:&v198 forKeys:&v197 count:1];
  v228[14] = v75;
  v227[15] = @"visible";
  v195 = @"value";
  v196 = &off_1004930C0;
  v74 = [NSDictionary dictionaryWithObjects:&v196 forKeys:&v195 count:1];
  v228[15] = v74;
  v227[16] = @"off_screen";
  v193 = @"value";
  v194 = &off_1004930D8;
  v73 = [NSDictionary dictionaryWithObjects:&v194 forKeys:&v193 count:1];
  v228[16] = v73;
  v227[17] = @"interacted";
  v191 = @"value";
  v192 = &off_1004930F0;
  v72 = [NSDictionary dictionaryWithObjects:&v192 forKeys:&v191 count:1];
  v228[17] = v72;
  v227[18] = @"quick_return";
  v189 = @"value";
  v190 = &off_100493108;
  v71 = [NSDictionary dictionaryWithObjects:&v190 forKeys:&v189 count:1];
  v228[18] = v71;
  v227[19] = @"ad_marker_interacted";
  v187 = @"value";
  v188 = &off_100493120;
  v70 = [NSDictionary dictionaryWithObjects:&v188 forKeys:&v187 count:1];
  v228[19] = v70;
  v227[20] = @"get_app";
  v185 = @"value";
  v186 = &off_100493138;
  v69 = [NSDictionary dictionaryWithObjects:&v186 forKeys:&v185 count:1];
  v228[20] = v69;
  v227[21] = @"unloaded";
  v183 = @"value";
  v184 = &off_100493150;
  v68 = [NSDictionary dictionaryWithObjects:&v184 forKeys:&v183 count:1];
  v228[21] = v68;
  v227[22] = @"media_loaded";
  v181 = @"value";
  v182 = &off_100493168;
  v67 = [NSDictionary dictionaryWithObjects:&v182 forKeys:&v181 count:1];
  v228[22] = v67;
  v227[23] = @"video_chosen";
  v179 = @"value";
  v180 = &off_100493180;
  v66 = [NSDictionary dictionaryWithObjects:&v180 forKeys:&v179 count:1];
  v228[23] = v66;
  v227[24] = @"media_played";
  v177 = @"value";
  v178 = &off_100493198;
  v65 = [NSDictionary dictionaryWithObjects:&v178 forKeys:&v177 count:1];
  v228[24] = v65;
  v227[25] = @"media_paused";
  v175 = @"value";
  v176 = &off_1004931B0;
  v64 = [NSDictionary dictionaryWithObjects:&v176 forKeys:&v175 count:1];
  v228[25] = v64;
  v227[26] = @"media_skipped";
  v173 = @"value";
  v174 = &off_1004931C8;
  v63 = [NSDictionary dictionaryWithObjects:&v174 forKeys:&v173 count:1];
  v228[26] = v63;
  v227[27] = @"media_volume_changed";
  v171 = @"value";
  v172 = &off_1004931E0;
  v62 = [NSDictionary dictionaryWithObjects:&v172 forKeys:&v171 count:1];
  v228[27] = v62;
  v227[28] = @"media_expanded";
  v169 = @"value";
  v170 = &off_1004931F8;
  v61 = [NSDictionary dictionaryWithObjects:&v170 forKeys:&v169 count:1];
  v228[28] = v61;
  v227[29] = @"media_contracted";
  v167 = @"value";
  v168 = &off_100493210;
  v60 = [NSDictionary dictionaryWithObjects:&v168 forKeys:&v167 count:1];
  v228[29] = v60;
  v227[30] = @"media_show_controls";
  v165 = @"value";
  v166 = &off_100493228;
  v2 = [NSDictionary dictionaryWithObjects:&v166 forKeys:&v165 count:1];
  v228[30] = v2;
  v227[31] = @"media_progress";
  v163 = @"value";
  v164 = &off_100493240;
  v3 = [NSDictionary dictionaryWithObjects:&v164 forKeys:&v163 count:1];
  v228[31] = v3;
  v227[32] = @"served";
  v161 = @"value";
  v162 = &off_100493258;
  v4 = [NSDictionary dictionaryWithObjects:&v162 forKeys:&v161 count:1];
  v228[32] = v4;
  v227[33] = @"impressed";
  v159 = @"value";
  v160 = &off_100493270;
  v5 = [NSDictionary dictionaryWithObjects:&v160 forKeys:&v159 count:1];
  v228[33] = v5;
  v227[34] = @"missed_opportunity";
  v157 = @"value";
  v158 = &off_100493288;
  v6 = [NSDictionary dictionaryWithObjects:&v158 forKeys:&v157 count:1];
  v228[34] = v6;
  v227[35] = @"confirmed_interaction";
  v155 = @"value";
  v156 = &off_1004932A0;
  v7 = [NSDictionary dictionaryWithObjects:&v156 forKeys:&v155 count:1];
  v228[35] = v7;
  v227[36] = @"commerce_added_to_account";
  v153 = @"value";
  v154 = &off_1004932B8;
  v8 = [NSDictionary dictionaryWithObjects:&v154 forKeys:&v153 count:1];
  v228[36] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v228 forKeys:v227 count:37];
  v230[3] = v9;
  v98 = [NSDictionary dictionaryWithObjects:v230 forKeys:v229 count:4];

  v151[0] = @"name";
  v151[1] = @"purpose";
  v152[0] = @"Diagnostic";
  v152[1] = &off_1004932D0;
  v152[2] = @"ECRouter";
  v151[2] = @"dest";
  v151[3] = @"metrics";
  v149[0] = @"load_failed";
  v147[0] = @"value";
  v147[1] = @"dnu";
  v148[0] = &off_1004932E8;
  v148[1] = &__kCFBooleanTrue;
  v10 = [NSDictionary dictionaryWithObjects:v148 forKeys:v147 count:2];
  v150[0] = v10;
  v149[1] = @"template_metric";
  v145[0] = @"value";
  v145[1] = @"dnu";
  v146[0] = &off_100493300;
  v146[1] = &__kCFBooleanTrue;
  v11 = [NSDictionary dictionaryWithObjects:v146 forKeys:v145 count:2];
  v150[1] = v11;
  v149[2] = @"media_playback_failed";
  v143[0] = @"value";
  v143[1] = @"dnu";
  v144[0] = &off_100493318;
  v144[1] = &__kCFBooleanTrue;
  v12 = [NSDictionary dictionaryWithObjects:v144 forKeys:v143 count:2];
  v150[2] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v150 forKeys:v149 count:3];
  v152[3] = v13;
  v97 = [NSDictionary dictionaryWithObjects:v152 forKeys:v151 count:4];

  v141[0] = @"name";
  v141[1] = @"purpose";
  v142[0] = @"Internal";
  v142[1] = &off_100493330;
  v141[2] = @"metrics";
  v139 = @"rate_limit_ad_requests";
  v137 = @"value";
  v138 = &off_100493348;
  v14 = [NSDictionary dictionaryWithObjects:&v138 forKeys:&v137 count:1];
  v140 = v14;
  v15 = [NSDictionary dictionaryWithObjects:&v140 forKeys:&v139 count:1];
  v142[2] = v15;
  v95 = [NSDictionary dictionaryWithObjects:v142 forKeys:v141 count:3];

  v135[0] = @"name";
  v135[1] = @"purpose";
  v136[0] = @"Internal";
  v136[1] = &off_100493360;
  v135[2] = @"metrics";
  v133 = @"validation_failed";
  v131 = @"value";
  v132 = &off_100493378;
  v16 = [NSDictionary dictionaryWithObjects:&v132 forKeys:&v131 count:1];
  v134 = v16;
  v17 = [NSDictionary dictionaryWithObjects:&v134 forKeys:&v133 count:1];
  v136[2] = v17;
  v93 = [NSDictionary dictionaryWithObjects:v136 forKeys:v135 count:3];

  v129[0] = @"name";
  v129[1] = @"purpose";
  v130[0] = @"EC";
  v130[1] = &off_100493390;
  v130[2] = @"ECRouter";
  v129[2] = @"dest";
  v129[3] = @"metrics";
  v127[0] = @"communication_errors_report";
  v125 = @"value";
  v126 = &off_1004933A8;
  v18 = [NSDictionary dictionaryWithObjects:&v126 forKeys:&v125 count:1];
  v128[0] = v18;
  v127[1] = @"hourly_report";
  v123 = @"value";
  v124 = &off_1004933C0;
  v19 = [NSDictionary dictionaryWithObjects:&v124 forKeys:&v123 count:1];
  v128[1] = v19;
  v127[2] = @"daily_report";
  v121 = @"value";
  v122 = &off_1004933D8;
  v20 = [NSDictionary dictionaryWithObjects:&v122 forKeys:&v121 count:1];
  v128[2] = v20;
  v21 = [NSDictionary dictionaryWithObjects:v128 forKeys:v127 count:3];
  v130[3] = v21;
  v89 = [NSDictionary dictionaryWithObjects:v130 forKeys:v129 count:4];

  v119[0] = @"name";
  v119[1] = @"purpose";
  v120[0] = @"Report";
  v120[1] = &off_1004933F0;
  v120[2] = @"ECRouter";
  v119[2] = @"dest";
  v119[3] = @"metrics";
  v117 = @"integrity_report";
  v115 = @"value";
  v116 = &off_100493408;
  v22 = [NSDictionary dictionaryWithObjects:&v116 forKeys:&v115 count:1];
  v118 = v22;
  v23 = [NSDictionary dictionaryWithObjects:&v118 forKeys:&v117 count:1];
  v120[3] = v23;
  v87 = [NSDictionary dictionaryWithObjects:v120 forKeys:v119 count:4];

  v113[0] = @"name";
  v113[1] = @"purpose";
  v114[0] = @"EC";
  v114[1] = &off_100493420;
  v114[2] = @"ECRouter";
  v113[2] = @"dest";
  v113[3] = @"metrics";
  v109 = @"value";
  v110 = &off_100493438;
  v111 = @"conversion";
  v24 = [NSDictionary dictionaryWithObjects:&v110 forKeys:&v109 count:1];
  v112 = v24;
  v25 = [NSDictionary dictionaryWithObjects:&v112 forKeys:&v111 count:1];
  v114[3] = v25;
  v26 = [NSDictionary dictionaryWithObjects:v114 forKeys:v113 count:4];

  v107[0] = @"name";
  v107[1] = @"purpose";
  v108[0] = @"EC";
  v108[1] = &off_100493450;
  v108[2] = @"ECRouter";
  v107[2] = @"dest";
  v107[3] = @"metrics";
  v103 = @"value";
  v104 = &off_100493468;
  v105 = @"experimentation_aggregates";
  v27 = [NSDictionary dictionaryWithObjects:&v104 forKeys:&v103 count:1];
  v106 = v27;
  v28 = [NSDictionary dictionaryWithObjects:&v106 forKeys:&v105 count:1];
  v108[3] = v28;
  v29 = [NSDictionary dictionaryWithObjects:v108 forKeys:v107 count:4];

  v30 = +[MetricsModuleClasses purposeClass];
  v91 = [[v30 alloc] initWithPurposeDefinition:v98];
  v90 = [[v30 alloc] initWithPurposeDefinition:v97];
  v31 = [[v30 alloc] initWithPurposeDefinition:v95];
  v32 = [[v30 alloc] initWithPurposeDefinition:v93];
  v33 = [[v30 alloc] initWithPurposeDefinition:v89];
  v34 = [[v30 alloc] initWithPurposeDefinition:v87];
  v35 = [[v30 alloc] initWithPurposeDefinition:v26];
  v85 = v29;
  v36 = [[v30 alloc] initWithPurposeDefinition:v29];
  v37 = APLogForCategory();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    name = [v91 name];
    *buf = 138543618;
    v100 = name;
    v101 = 2050;
    purpose = [v91 purpose];
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Registered purpose %{public}@ (%{public}ld)!", buf, 0x16u);
  }

  v39 = APLogForCategory();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    name2 = [v90 name];
    purpose2 = [v90 purpose];
    *buf = 138543618;
    v100 = name2;
    v101 = 2050;
    purpose = purpose2;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Registered purpose %{public}@ (%{public}ld)!", buf, 0x16u);
  }

  v42 = APLogForCategory();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    name3 = [v31 name];
    purpose3 = [v31 purpose];
    *buf = 138543618;
    v100 = name3;
    v101 = 2050;
    purpose = purpose3;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "Registered purpose %{public}@ (%{public}ld)!", buf, 0x16u);
  }

  v45 = APLogForCategory();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    name4 = [v32 name];
    purpose4 = [v32 purpose];
    *buf = 138543618;
    v100 = name4;
    v101 = 2050;
    purpose = purpose4;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Registered purpose %{public}@ (%{public}ld)!", buf, 0x16u);
  }

  v48 = APLogForCategory();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    name5 = [v33 name];
    purpose5 = [v33 purpose];
    *buf = 138543618;
    v100 = name5;
    v101 = 2050;
    purpose = purpose5;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "Registered purpose %{public}@ (%{public}ld)!", buf, 0x16u);
  }

  v51 = APLogForCategory();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    name6 = [v34 name];
    purpose6 = [v34 purpose];
    *buf = 138543618;
    v100 = name6;
    v101 = 2050;
    purpose = purpose6;
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "Registered purpose %{public}@ (%{public}ld)!", buf, 0x16u);
  }

  v54 = APLogForCategory();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
  {
    name7 = [v35 name];
    purpose7 = [v35 purpose];
    *buf = 138543618;
    v100 = name7;
    v101 = 2050;
    purpose = purpose7;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "Registered purpose %{public}@ (%{public}ld)!", buf, 0x16u);
  }

  v57 = APLogForCategory();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
  {
    name8 = [v36 name];
    purpose8 = [v36 purpose];
    *buf = 138543618;
    v100 = name8;
    v101 = 2050;
    purpose = purpose8;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "Registered purpose %{public}@ (%{public}ld)!", buf, 0x16u);
  }
}

+ (void)setup
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003329A4;
  block[3] = &unk_10047E780;
  block[4] = self;
  if (qword_1004E6E00 != -1)
  {
    dispatch_once(&qword_1004E6E00, block);
  }

  if (!qword_1004E6DE8)
  {
    v2 = objc_alloc_init(+[MetricsModuleClasses storageClass]);
    v3 = qword_1004E6DE8;
    qword_1004E6DE8 = v2;

    [qword_1004E6DE8 setup];
  }
}

+ (void)start
{
  v2 = +[NSProcessInfo processInfo];
  isRunningTests = [v2 isRunningTests];

  if ((isRunningTests & 1) == 0 && !qword_1004E6DF0)
  {
    qword_1004E6DF0 = objc_alloc_init(APMetricListener);

    _objc_release_x1();
  }
}

+ (void)clearStorage
{
  v2 = +[NSProcessInfo processInfo];
  isRunningTests = [v2 isRunningTests];

  if (isRunningTests)
  {
    v4 = qword_1004E6DE8;
    qword_1004E6DE8 = 0;
  }
}

@end