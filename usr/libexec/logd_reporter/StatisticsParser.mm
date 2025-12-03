@interface StatisticsParser
- (BOOL)feedJSONLine:(id)line error:(id *)error;
- (StatisticsParser)initWithUnixTimeBoundAndMinQuarantineTime:(int64_t)time to:(int64_t)to min_quarantine_time_covered_sec:(unsigned int)min_quarantine_time_covered_sec;
- (void)_handleEmitter:(id)emitter inBook:(unsigned __int8)book;
- (void)_handleQuarantineRecord:(id)record;
- (void)_handleSnapshotRecord:(id)record;
- (void)_handleStatisticsRecord:(id)record;
@end

@implementation StatisticsParser

- (void)_handleQuarantineRecord:(id)record
{
  recordCopy = record;
  v5 = sub_100001B5C(recordCopy, @"client");
  v6 = v5;
  if (v5)
  {
    lastPathComponent = [v5 lastPathComponent];
    v8 = sub_100001B5C(recordCopy, @"file");
    v9 = v8;
    if (v8)
    {
      pathComponents = [v8 pathComponents];
      v11 = [pathComponents objectAtIndexedSubscript:0];

      v12 = sub_100001BDC([v11 UTF8String]);
      if (v12 != 5)
      {
        v13 = v12;
        v14 = sub_100001C64(recordCopy, @"timeCovered");
        v15 = v14;
        if (v14 && [v14 unsignedLongValue] >= self->_min_quarantine_time_covered_sec)
        {
          v16 = sub_100001C64(recordCopy, @"sizeBytes");
          if (v16)
          {
            v17 = sub_100001C64(recordCopy, @"totalBytes");
            if (v17)
            {
              v39 = v17;
              v18 = sub_100001C64(recordCopy, @"simulated");
              v37 = v18;
              if (v18 && [v18 BOOLValue])
              {
                simulatedQuarantines = self->_simulatedQuarantines;
                v42[0] = @"processName";
                v42[1] = @"bytes";
                v43[0] = lastPathComponent;
                v43[1] = v16;
                v42[2] = @"totalBytes";
                v42[3] = @"timeCovered";
                v43[2] = v39;
                v43[3] = v15;
                v42[4] = @"bookId";
                v38 = [NSNumber numberWithUnsignedChar:v13];
                v43[4] = v38;
                v20 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:5];
                [(NSMutableArray *)simulatedQuarantines addObject:v20];
              }

              else
              {
                v36 = v16;
                v21 = [recordCopy objectForKeyedSubscript:@"superQuarantine"];
                bOOLValue = [v21 BOOLValue];

                if (bOOLValue)
                {
                  bOOLValue2 = 1;
                }

                else
                {
                  v23 = [(NSMutableDictionary *)self->_quarantinedClients objectForKeyedSubscript:lastPathComponent];

                  if (v23)
                  {
                    v24 = [(NSMutableDictionary *)self->_quarantinedClients objectForKeyedSubscript:lastPathComponent];
                    v25 = [v24 objectForKeyedSubscript:@"superQuarantine"];
                    bOOLValue2 = [v25 BOOLValue];
                  }

                  else
                  {
                    bOOLValue2 = 0;
                  }
                }

                v26 = [(NSMutableDictionary *)self->_quarantinedClients objectForKeyedSubscript:lastPathComponent];

                if (v26)
                {
                  v27 = [(NSMutableDictionary *)self->_quarantinedClients objectForKeyedSubscript:lastPathComponent];
                  v28 = [v27 objectForKeyedSubscript:@"quarantineCount"];
                  v34 = [v28 intValue] + 1;
                }

                else
                {
                  v34 = 1;
                }

                v20 = sub_100001C64(recordCopy, @"unixTime");
                v29 = [(NSMutableDictionary *)self->_quarantinedClients objectForKeyedSubscript:lastPathComponent];

                if (v29)
                {
                  v30 = [(NSMutableDictionary *)self->_quarantinedClients objectForKeyedSubscript:lastPathComponent];
                  v38 = [v30 objectForKeyedSubscript:@"unixTime"];
                }

                else
                {
                  v38 = objc_alloc_init(NSMutableArray);
                }

                [v38 addObject:v20];
                v40[0] = @"quarantineCount";
                v33 = [NSNumber numberWithInt:v34];
                v41[0] = v33;
                v41[1] = v9;
                v40[1] = @"fileName";
                v40[2] = @"bytes";
                v41[2] = v36;
                v41[3] = v39;
                v40[3] = @"totalBytes";
                v40[4] = @"timeCovered";
                v41[4] = v15;
                v40[5] = @"superQuarantine";
                v31 = [NSNumber numberWithBool:bOOLValue2];
                v40[6] = @"unixTime";
                v41[5] = v31;
                v41[6] = v38;
                v32 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:7];
                [(NSMutableDictionary *)self->_quarantinedClients setObject:v32 forKeyedSubscript:lastPathComponent];

                v16 = v36;
              }

              v17 = v39;
            }
          }
        }
      }
    }
  }
}

- (void)_handleEmitter:(id)emitter inBook:(unsigned __int8)book
{
  bookCopy = book;
  emitterCopy = emitter;
  v6 = sub_100001B5C(emitterCopy, @"process");
  v7 = v6;
  if (v6)
  {
    lastPathComponent = [v6 lastPathComponent];
    v9 = sub_100001C64(emitterCopy, @"sizeBytes");
    v10 = v9;
    if (v9)
    {
      unsignedLongValue = [v9 unsignedLongValue];
      v12 = [(NSMutableArray *)self->_topEmitters objectAtIndexedSubscript:bookCopy];
      v13 = [v12 objectForKeyedSubscript:lastPathComponent];

      v14 = unsignedLongValue;
      if (v13)
      {
        v15 = [(NSMutableArray *)self->_topEmitters objectAtIndexedSubscript:bookCopy];
        v16 = [v15 objectForKeyedSubscript:lastPathComponent];
        v14 = &unsignedLongValue[[v16 unsignedLongLongValue]];
      }

      v17 = [(NSMutableArray *)self->_topEmitters objectAtIndexedSubscript:4];
      v18 = [v17 objectForKeyedSubscript:lastPathComponent];

      if (v18)
      {
        v19 = [(NSMutableArray *)self->_topEmitters objectAtIndexedSubscript:4];
        v20 = [v19 objectForKeyedSubscript:lastPathComponent];
        unsignedLongValue = &unsignedLongValue[[v20 unsignedLongLongValue]];
      }

      v21 = [NSNumber numberWithUnsignedLong:v14];
      v22 = [(NSMutableArray *)self->_topEmitters objectAtIndexedSubscript:bookCopy];
      [v22 setObject:v21 forKeyedSubscript:lastPathComponent];

      v23 = [NSNumber numberWithUnsignedLong:unsignedLongValue];
      v24 = [(NSMutableArray *)self->_topEmitters objectAtIndexedSubscript:4];
      [v24 setObject:v23 forKeyedSubscript:lastPathComponent];
    }
  }
}

- (void)_handleStatisticsRecord:(id)record
{
  recordCopy = record;
  v5 = sub_100001B5C(recordCopy, @"type");
  v6 = v5;
  if (v5 && [v5 isEqualToString:@"File Rotate"])
  {
    v7 = sub_100001B5C(recordCopy, @"file");
    v8 = v7;
    if (v7)
    {
      pathComponents = [v7 pathComponents];
      v10 = [pathComponents objectAtIndexedSubscript:0];

      v11 = sub_100001BDC([v10 UTF8String]);
      if (v11 != 5)
      {
        v12 = v11;
        v13 = sub_100001C64(recordCopy, @"totalBytes");
        if (v13)
        {
          v29 = v13;
          v30 = v10;
          unsignedLongLongValue = [v13 unsignedLongLongValue];
          v15 = [(NSMutableArray *)self->_totalBytes objectAtIndexedSubscript:v12];
          v16 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", &unsignedLongLongValue[[v15 unsignedLongLongValue]]);
          [(NSMutableArray *)self->_totalBytes setObject:v16 atIndexedSubscript:v12];

          v17 = [(NSMutableArray *)self->_totalBytes objectAtIndexedSubscript:4];
          v18 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", &unsignedLongLongValue[[v17 unsignedLongLongValue]]);
          [(NSMutableArray *)self->_totalBytes setObject:v18 atIndexedSubscript:4];

          v19 = [recordCopy objectForKeyedSubscript:@"processList"];
          if (v19 && (objc_opt_class(), sub_100001CE4(v19), v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
          {
            v28 = v8;
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v21 = v19;
            v22 = [v21 countByEnumeratingWithState:&v32 objects:v31 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v33;
              do
              {
                for (i = 0; i != v23; i = i + 1)
                {
                  if (*v33 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v26 = *(*(&v32 + 1) + 8 * i);
                  objc_opt_class();
                  v27 = sub_100001CE4(v26);

                  if (v27)
                  {
                    [(StatisticsParser *)self _handleEmitter:v26 inBook:v12];
                  }
                }

                v23 = [v21 countByEnumeratingWithState:&v32 objects:v31 count:16];
              }

              while (v23);
            }

            v8 = v28;
          }

          else
          {
          }

          v13 = v29;
          v10 = v30;
        }
      }
    }
  }
}

- (void)_handleSnapshotRecord:(id)record
{
  v4 = sub_100001B5C(record, @"client");
  if (v4)
  {
    v9 = v4;
    v5 = [(NSMutableDictionary *)self->_snapshotClients objectForKeyedSubscript:v4];

    if (v5)
    {
      v6 = [(NSMutableDictionary *)self->_snapshotClients objectForKeyedSubscript:v9];
      v7 = [v6 intValue] + 1;
    }

    else
    {
      v7 = 1;
    }

    v8 = [NSNumber numberWithInt:v7];
    [(NSMutableDictionary *)self->_snapshotClients setObject:v8 forKeyedSubscript:v9];
  }

  _objc_release_x1();
}

- (BOOL)feedJSONLine:(id)line error:(id *)error
{
  v6 = [line dataUsingEncoding:4];
  v7 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:error];
  v8 = v7;
  if (v7)
  {
    v9 = sub_100001C64(v7, @"unixTime");
    v10 = v9;
    if (!v9 || (v11 = [v9 intValue], self->_lowerBound > v11) || self->_upperBound <= v11)
    {
LABEL_20:

      goto LABEL_21;
    }

    validLineCount = self->_validLineCount;
    if (validLineCount)
    {
      if (self->_oldestEntryUnixTime > v11)
      {
        self->_oldestEntryUnixTime = v11;
      }

      p_newestEntryUnixTime = &self->_newestEntryUnixTime;
      if (self->_newestEntryUnixTime >= v11)
      {
        goto LABEL_12;
      }
    }

    else
    {
      self->_newestEntryUnixTime = v11;
      p_newestEntryUnixTime = &self->_oldestEntryUnixTime;
    }

    *p_newestEntryUnixTime = v11;
LABEL_12:
    self->_validLineCount = validLineCount + 1;
    v14 = sub_100001B5C(v8, @"record");
    v15 = v14;
    if (v14)
    {
      if ([v14 isEqualToString:@"logd snapshot"])
      {
        [(StatisticsParser *)self _handleSnapshotRecord:v8];
      }

      else if ([v15 isEqualToString:@"logd statistics"])
      {
        [(StatisticsParser *)self _handleStatisticsRecord:v8];
      }

      else if ([v15 isEqualToString:@"logd quarantine"])
      {
        [(StatisticsParser *)self _handleQuarantineRecord:v8];
      }
    }

    goto LABEL_20;
  }

LABEL_21:

  return v8 != 0;
}

- (StatisticsParser)initWithUnixTimeBoundAndMinQuarantineTime:(int64_t)time to:(int64_t)to min_quarantine_time_covered_sec:(unsigned int)min_quarantine_time_covered_sec
{
  v28.receiver = self;
  v28.super_class = StatisticsParser;
  v8 = [(StatisticsParser *)&v28 init];
  v9 = v8;
  if (v8)
  {
    v8->_lowerBound = time;
    v8->_upperBound = to;
    v10 = objc_opt_new();
    snapshotClients = v9->_snapshotClients;
    v9->_snapshotClients = v10;

    v12 = objc_opt_new();
    v29[0] = v12;
    v13 = objc_opt_new();
    v29[1] = v13;
    v14 = objc_opt_new();
    v29[2] = v14;
    v15 = objc_opt_new();
    v29[3] = v15;
    v16 = objc_opt_new();
    v29[4] = v16;
    v17 = [NSArray arrayWithObjects:v29 count:5];
    v18 = [v17 mutableCopy];
    topEmitters = v9->_topEmitters;
    v9->_topEmitters = v18;

    v20 = objc_opt_new();
    quarantinedClients = v9->_quarantinedClients;
    v9->_quarantinedClients = v20;

    v22 = objc_opt_new();
    simulatedQuarantines = v9->_simulatedQuarantines;
    v9->_simulatedQuarantines = v22;

    v24 = [&off_100008CD0 mutableCopy];
    totalBytes = v9->_totalBytes;
    v9->_totalBytes = v24;

    v9->_validLineCount = 0;
    v9->_oldestEntryUnixTime = 0;
    v9->_newestEntryUnixTime = 0;
    v9->_min_quarantine_time_covered_sec = min_quarantine_time_covered_sec;
    v26 = v9;
  }

  return v9;
}

@end