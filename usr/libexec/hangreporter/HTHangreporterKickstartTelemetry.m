@interface HTHangreporterKickstartTelemetry
+ (BOOL)collectTailspinSpoolData:(id *)a3 error:(id *)a4;
+ (BOOL)emitTailspinProcessingEvent:(id)a3 error:(id *)a4;
+ (unsigned)getHangreporterTailspinsProcessed:(id *)a3;
+ (unsigned)getSuccessfulTailspinSaves:(id *)a3;
+ (void)_resetHangreporterTailspinsProcessed;
+ (void)_resetKeysForTailspinProcessingTelemetry;
+ (void)_resetSuccessfulTailspinSaves;
+ (void)incrementHangreporterTailspinsProcessed;
+ (void)incrementSuccessfulTailspinSaves;
@end

@implementation HTHangreporterKickstartTelemetry

+ (unsigned)getSuccessfulTailspinSaves:(id *)a3
{
  v4 = sub_100008468();
  v5 = qword_100090398;
  qword_100090398 = v4;

  v6 = [qword_100090398 objectForKey:@"successfulTailspinSaves"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 unsignedIntValue];
    }

    else
    {
      +[HTHangreporterKickstartTelemetry _resetKeysForTailspinProcessingTelemetry];
      v8 = [NSString stringWithFormat:@"Invalid class type %@ for key (%@): value (%@) pair. Values in %@ domain were modified", objc_opt_class(), @"successfulTailspinSaves", v6, @"com.apple.hangtracer"];
      v9 = sub_100001684();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_10003D168();
      }

      if (a3)
      {
        v12 = NSLocalizedDescriptionKey;
        v13 = v8;
        v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
        *a3 = [NSError errorWithDomain:@"com.apple.hangtracer.telemetry.error" code:0 userInfo:v10];
      }

      v7 = -1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)incrementSuccessfulTailspinSaves
{
  v2 = sub_100008468();
  v3 = qword_100090398;
  qword_100090398 = v2;

  v4 = [qword_100090398 objectForKey:@"successfulTailspinSaves"];
  if (!v4)
  {
    v7 = qword_100090398;
    v6 = 1;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 unsignedIntValue];
    if (v5 != -2)
    {
      v6 = v5 + 1;
      v7 = qword_100090398;
LABEL_6:
      [v7 setInteger:v6 forKey:@"successfulTailspinSaves"];
    }
  }

  else
  {
    v8 = sub_100001684();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_10003D1DC();
    }

    +[HTHangreporterKickstartTelemetry _resetKeysForTailspinProcessingTelemetry];
  }
}

+ (void)_resetSuccessfulTailspinSaves
{
  v2 = sub_100008468();
  v3 = qword_100090398;
  qword_100090398 = v2;

  v4 = qword_100090398;

  [v4 setInteger:0 forKey:@"successfulTailspinSaves"];
}

+ (unsigned)getHangreporterTailspinsProcessed:(id *)a3
{
  v4 = sub_100008468();
  v5 = qword_100090398;
  qword_100090398 = v4;

  v6 = [qword_100090398 objectForKey:@"tailspinsProcessed"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 unsignedIntValue];
    }

    else
    {
      +[HTHangreporterKickstartTelemetry _resetKeysForTailspinProcessingTelemetry];
      v8 = [NSString stringWithFormat:@"Invalid class type %@ for key (%@): value (%@) pair. Values in %@ domain were modified", objc_opt_class(), @"tailspinsProcessed", v6, @"com.apple.hangtracer"];
      v9 = sub_100001684();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_10003D278();
      }

      if (a3)
      {
        v12 = NSLocalizedDescriptionKey;
        v13 = v8;
        v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
        *a3 = [NSError errorWithDomain:@"com.apple.hangtracer.telemetry.error" code:0 userInfo:v10];
      }

      v7 = -1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)incrementHangreporterTailspinsProcessed
{
  v2 = sub_100008468();
  v3 = qword_100090398;
  qword_100090398 = v2;

  v4 = [qword_100090398 objectForKey:@"tailspinsProcessed"];
  if (!v4)
  {
    v7 = qword_100090398;
    v6 = 1;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 unsignedIntValue];
    if (v5 != -2)
    {
      v6 = v5 + 1;
      v7 = qword_100090398;
LABEL_6:
      [v7 setInteger:v6 forKey:@"tailspinsProcessed"];
    }
  }

  else
  {
    v8 = sub_100001684();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_10003D1DC();
    }

    +[HTHangreporterKickstartTelemetry _resetKeysForTailspinProcessingTelemetry];
  }
}

+ (void)_resetHangreporterTailspinsProcessed
{
  v2 = sub_100008468();
  v3 = qword_100090398;
  qword_100090398 = v2;

  v4 = qword_100090398;

  [v4 setInteger:0 forKey:@"tailspinsProcessed"];
}

+ (void)_resetKeysForTailspinProcessingTelemetry
{
  +[HTHangreporterKickstartTelemetry _resetHangreporterTailspinsProcessed];

  +[HTHangreporterKickstartTelemetry _resetSuccessfulTailspinSaves];
}

+ (BOOL)emitTailspinProcessingEvent:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[HTPrefs sharedPrefs];
  v7 = [v6 shouldEmitTelemetry];

  if (v7)
  {
    v8 = [v5 objectForKey:@"successfulTailspinSaves"];
    if (v8)
    {
      v9 = v8;
      [v8 unsignedIntValue];
      v10 = [v5 objectForKey:@"tailspinsProcessed"];

      if (v10)
      {
        [v10 unsignedIntValue];
        v11 = [v5 objectForKey:@"tailspinsUnprocessed"];

        if (v11)
        {
          [v11 unsignedIntValue];
          v12 = [v5 objectForKey:@"tailspinsInSpool"];

          if (v12)
          {
            [v12 unsignedIntValue];
            v13 = [v5 objectForKey:@"tailspinsOverReportingThresholds"];

            if (v13)
            {
              [v13 unsignedIntValue];
              v14 = [v5 objectForKey:@"oldestTailspinCreationSeconds"];

              if (v14)
              {
                [v14 doubleValue];
                AnalyticsSendEventLazy();
                +[HTHangreporterKickstartTelemetry _resetKeysForTailspinProcessingTelemetry];

                v15 = 0;
                v16 = 0;
                v17 = 1;
                goto LABEL_26;
              }

              v16 = [NSString stringWithFormat:@"Missing value for key (%@) from tailspinDataDict: %@", @"oldestTailspinCreationSeconds", v5];
              v29 = NSLocalizedDescriptionKey;
              v30 = v16;
              v26 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
              v15 = [NSError errorWithDomain:@"com.apple.hangtracer.telemetry.error" code:1 userInfo:v26];

              v20 = sub_100001684();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                sub_10003D2EC(v15);
              }
            }

            else
            {
              v16 = [NSString stringWithFormat:@"Missing value for key (%@) from tailspinDataDict: %@", @"tailspinsOverReportingThresholds", v5];
              v31 = NSLocalizedDescriptionKey;
              v32 = v16;
              v25 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
              v15 = [NSError errorWithDomain:@"com.apple.hangtracer.telemetry.error" code:1 userInfo:v25];

              v20 = sub_100001684();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                sub_10003D2EC(v15);
              }
            }
          }

          else
          {
            v16 = [NSString stringWithFormat:@"Missing value for key (%@) from tailspinDataDict: %@", @"tailspinsInSpool", v5];
            v33 = NSLocalizedDescriptionKey;
            v34 = v16;
            v24 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
            v15 = [NSError errorWithDomain:@"com.apple.hangtracer.telemetry.error" code:1 userInfo:v24];

            v20 = sub_100001684();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              sub_10003D2EC(v15);
            }
          }
        }

        else
        {
          v16 = [NSString stringWithFormat:@"Missing value for key (%@) from tailspinDataDict: %@", @"tailspinsUnprocessed", v5];
          v35 = NSLocalizedDescriptionKey;
          v36 = v16;
          v23 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
          v15 = [NSError errorWithDomain:@"com.apple.hangtracer.telemetry.error" code:1 userInfo:v23];

          v20 = sub_100001684();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_10003D2EC(v15);
          }
        }
      }

      else
      {
        v16 = [NSString stringWithFormat:@"Missing value for key (%@) from tailspinDataDict: %@", @"tailspinsProcessed", v5];
        v37 = NSLocalizedDescriptionKey;
        v38 = v16;
        v22 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        v15 = [NSError errorWithDomain:@"com.apple.hangtracer.telemetry.error" code:1 userInfo:v22];

        v20 = sub_100001684();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10003D2EC(v15);
        }
      }
    }

    else
    {
      v16 = [NSString stringWithFormat:@"Missing value for key (%@) from tailspinDataDict: %@", @"successfulTailspinSaves", v5];
      v39 = NSLocalizedDescriptionKey;
      v40 = v16;
      v21 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v15 = [NSError errorWithDomain:@"com.apple.hangtracer.telemetry.error" code:1 userInfo:v21];

      v20 = sub_100001684();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10003D2EC(v15);
      }
    }
  }

  else
  {
    v18 = +[HTPrefs sharedPrefs];
    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"HTPrefs shouldEmitTelemetry=%d, telemetry emission disabled", [v18 shouldEmitTelemetry]);

    v41 = NSLocalizedDescriptionKey;
    v42 = v16;
    v19 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v15 = [NSError errorWithDomain:@"com.apple.hangtracer.telemetry.error" code:2 userInfo:v19];

    v20 = sub_100001684();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10003D2EC(v15);
    }
  }

  if (a4)
  {
    v27 = v15;
    v17 = 0;
    *a4 = v15;
  }

  else
  {
    v17 = 0;
  }

LABEL_26:

  return v17;
}

+ (BOOL)collectTailspinSpoolData:(id *)a3 error:(id *)a4
{
  v79 = 0;
  v6 = sub_10000A740("hangreporter", &v79);
  v7 = v79;
  if (v6 >= 1)
  {
    v8 = sub_100001684();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Hangreporter is alive, not attempting to emit telemetry.", buf, 2u);
    }

LABEL_4:

    goto LABEL_5;
  }

  v11 = sub_100001684();
  v12 = v11;
  if (v7)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10003D37C();
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v81 = "+[HTHangreporterKickstartTelemetry collectTailspinSpoolData:error:]";
    v82 = 1024;
    LODWORD(v83) = v6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: No error flag set in pidForProcessName with return value=%d. Hangreporter is not alive.", buf, 0x12u);
  }

  v78 = 0;
  v14 = [HTHangreporterKickstartTelemetry getSuccessfulTailspinSaves:&v78];
  v15 = v78;
  if (v14 == -1)
  {
    v17 = sub_100001684();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10003D58C();
    }

    if (a4)
    {
      v18 = v15;
      v9 = 0;
      *a4 = v15;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_74;
  }

  v77 = v15;
  v16 = [HTHangreporterKickstartTelemetry getHangreporterTailspinsProcessed:&v77];
  v7 = v77;

  if (v16 != -1)
  {
    if (v14 < v16)
    {
      v8 = sub_100001684();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_10003D494(v16, v14, v8);
      }

      goto LABEL_4;
    }

    +[NSFileManager defaultManager];
    v68 = v76 = v7;
    v19 = [v68 contentsOfDirectoryAtPath:@"/var/root/Library/Caches/hangtracerd/spool" error:&v76];
    v15 = v76;

    v9 = v19 != 0;
    if (v19)
    {
      v64 = v14 - v16;
      v65 = v16;
      v66 = v14;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      obj = v19;
      v20 = [obj countByEnumeratingWithState:&v72 objects:v86 count:16];
      if (!v20)
      {
        v69 = 0;
        v24 = 0.0;
        goto LABEL_72;
      }

      v22 = v20;
      v69 = 0;
      v23 = *v73;
      v24 = 0.0;
      *&v21 = 138412290;
      v63 = v21;
      v25 = v68;
      while (1)
      {
        v26 = 0;
        do
        {
          if (*v73 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v72 + 1) + 8 * v26);
          v28 = [v27 pathExtension];
          v29 = [v28 isEqualToString:@"tailspin"];

          if ((v29 & 1) == 0)
          {
            v30 = sub_100001684();
            if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              goto LABEL_45;
            }

            *buf = 138412546;
            v81 = v27;
            v82 = 2080;
            v83 = "/var/root/Library/Caches/hangtracerd/spool";
            v35 = v30;
            v36 = "Skipping non-tailspin file %@ in directory %s";
LABEL_41:
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, v36, buf, 0x16u);
            goto LABEL_45;
          }

          if ([v27 rangeOfString:@"processing.tailspin"] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v30 = sub_100001684();
            if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              goto LABEL_45;
            }

            *buf = 138412546;
            v81 = v27;
            v82 = 2080;
            v83 = "/var/root/Library/Caches/hangtracerd/spool";
            v35 = v30;
            v36 = "Skipping abandoned tailspin file %@ in directory %s";
            goto LABEL_41;
          }

          v30 = [@"/var/root/Library/Caches/hangtracerd/spool" stringByAppendingPathComponent:v27];
          v71 = v15;
          v31 = [v25 attributesOfItemAtPath:v30 error:&v71];
          v32 = v71;

          if (v31)
          {
            v33 = [v31 objectForKeyedSubscript:NSFileType];

            if (v33 != NSFileTypeRegular)
            {
              v34 = sub_100001684();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                v81 = "+[HTHangreporterKickstartTelemetry collectTailspinSpoolData:error:]";
                v82 = 2112;
                v83 = v30;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s: Skipping non-regular file at path:%@", buf, 0x16u);
              }

              goto LABEL_43;
            }

            v37 = [v31 objectForKeyedSubscript:NSFileCreationDate];

            if (v37)
            {
              v38 = sub_100001684();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v81 = "+[HTHangreporterKickstartTelemetry collectTailspinSpoolData:error:]";
                v82 = 2112;
                v83 = v30;
                v84 = 2080;
                v85 = "/var/root/Library/Caches/hangtracerd/spool";
                _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%s: Found tailspin file: %@ in spool directory: %s", buf, 0x20u);
              }

              v39 = +[NSDate date];
              v40 = [v31 objectForKeyedSubscript:NSFileCreationDate];
              [v39 timeIntervalSinceDate:v40];
              v42 = v41;

              if (v42 > v24)
              {
                v43 = sub_100001684();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v81 = v30;
                  v82 = 2048;
                  v83 = *&v42;
                  _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "Updating oldest tailspin to %@, creation time was %f seconds before now", buf, 0x16u);
                }

                v24 = v42;
              }

              ++HIDWORD(v69);
              v44 = +[HTPrefs sharedPrefs];
              [v44 tailspinReportingThresholdSec];
              v46 = v45;

              if (v42 < v46)
              {
                v25 = v68;
                goto LABEL_44;
              }

              v50 = v69 + 1;
              v34 = sub_100001684();
              LODWORD(v69) = v69 + 1;
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                v67 = +[HTPrefs sharedPrefs];
                [v67 tailspinReportingThresholdSec];
                *buf = 138412802;
                v81 = v30;
                v82 = 2048;
                v83 = v51;
                v84 = 1024;
                LODWORD(v85) = v50;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Found tailspin: %@ over the threshold limit of %f seconds. Incrementing number of tailspins in spool over the reporting limit to %d", buf, 0x1Cu);
              }

              v25 = v68;
            }

            else
            {
              v34 = sub_100001684();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                *buf = v63;
                v81 = v30;
                v47 = v34;
                v48 = "Failed to fetch creation date for file %@";
                v49 = 12;
LABEL_62:
                _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, v48, buf, v49);
              }
            }
          }

          else
          {
            v34 = sub_100001684();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v81 = "+[HTHangreporterKickstartTelemetry collectTailspinSpoolData:error:]";
              v82 = 2112;
              v83 = v30;
              v84 = 2112;
              v85 = v32;
              v47 = v34;
              v48 = "%s: Unable to get file attributes of file at path:%@ with error: %@";
              v49 = 32;
              goto LABEL_62;
            }
          }

LABEL_43:

LABEL_44:
          v15 = v32;
LABEL_45:

          v26 = v26 + 1;
        }

        while (v22 != v26);
        v52 = [obj countByEnumeratingWithState:&v72 objects:v86 count:16];
        v22 = v52;
        if (!v52)
        {
LABEL_72:

          v55 = +[NSMutableDictionary dictionary];
          v56 = [NSNumber numberWithUnsignedInt:v66];
          [v55 setObject:v56 forKey:@"successfulTailspinSaves"];

          v57 = [NSNumber numberWithUnsignedInt:v65];
          [v55 setObject:v57 forKey:@"tailspinsProcessed"];

          v58 = [NSNumber numberWithUnsignedInt:v64];
          [v55 setObject:v58 forKey:@"tailspinsUnprocessed"];

          v59 = [NSNumber numberWithUnsignedInt:HIDWORD(v69)];
          [v55 setObject:v59 forKey:@"tailspinsInSpool"];

          v60 = [NSNumber numberWithDouble:v24];
          [v55 setObject:v60 forKey:@"oldestTailspinCreationSeconds"];

          v61 = [NSNumber numberWithUnsignedInt:v69];
          [v55 setObject:v61 forKey:@"tailspinsOverReportingThresholds"];

          v62 = v55;
          *a3 = v55;

          v9 = v19 != 0;
          goto LABEL_73;
        }
      }
    }

    if (v15)
    {
      v53 = sub_100001684();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        sub_10003D3F8();
      }

      if (a4)
      {
        v54 = v15;
        *a4 = v15;
      }
    }

LABEL_73:

LABEL_74:
    v7 = v15;
    goto LABEL_6;
  }

  v12 = sub_100001684();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10003D51C();
  }

LABEL_10:

  if (a4)
  {
    v13 = v7;
    v9 = 0;
    *a4 = v7;
    goto LABEL_6;
  }

LABEL_5:
  v9 = 0;
LABEL_6:

  return v9;
}

@end