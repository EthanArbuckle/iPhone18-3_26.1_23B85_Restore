@interface HTDisplayParser
+ ($2825F4736939C4A6D3AD43837233062D)displayStateBeforeOrAtTime:(unint64_t)time timestamps:(id)timestamps states:(id)states;
+ (DisplayStateChangeEvent)displayStateBeforeHangStartTimestamp:(unint64_t)timestamp displayTimestamps:(id)timestamps displayStates:(id)states;
+ (id)displayEventStatesFromDisplayInfo:(id)info;
+ (id)displayEventTimestampsFromDisplayInfo:(id)info;
+ (id)displayInfoForSpindump:(id)spindump startAbsoluteTime:(unint64_t)time endAbsoluteTime:(unint64_t)absoluteTime;
+ (id)displayOnIntervalsForDisplayTimestamps:(id)timestamps displayStates:(id)states startTimestamp:(unint64_t)timestamp endTimestamp:(unint64_t)endTimestamp startState:(id *)state endState:(id *)endState;
@end

@implementation HTDisplayParser

+ (id)displayEventTimestampsFromDisplayInfo:(id)info
{
  infoCopy = info;
  v4 = objc_alloc_init(NSMutableArray);
  if ([infoCopy count])
  {
    v6 = 0;
    *&v5 = 134217984;
    v13 = v5;
    do
    {
      v7 = sub_100001684();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v9 = [infoCopy objectAtIndexedSubscript:v6];
        unsignedLongLongValue = [v9 unsignedLongLongValue];
        *buf = v13;
        v15 = unsignedLongLongValue;
        _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "display event timestamp: %llu", buf, 0xCu);
      }

      v8 = [infoCopy objectAtIndexedSubscript:v6];
      [v4 addObject:v8];

      v6 += 2;
    }

    while ([infoCopy count] > v6);
  }

  v11 = [v4 copy];

  return v11;
}

+ (id)displayEventStatesFromDisplayInfo:(id)info
{
  infoCopy = info;
  v4 = objc_alloc_init(NSMutableArray);
  if ([infoCopy count])
  {
    v6 = 1;
    *&v5 = 134217984;
    v13 = v5;
    do
    {
      v7 = sub_100001684();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v9 = [infoCopy objectAtIndexedSubscript:v6];
        unsignedLongLongValue = [v9 unsignedLongLongValue];
        *buf = v13;
        v15 = unsignedLongLongValue;
        _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "display event state: %llu", buf, 0xCu);
      }

      v8 = [infoCopy objectAtIndexedSubscript:v6];
      [v4 addObject:v8];

      v6 += 2;
    }

    while ([infoCopy count] >= v6);
  }

  v11 = [v4 copy];

  return v11;
}

+ ($2825F4736939C4A6D3AD43837233062D)displayStateBeforeOrAtTime:(unint64_t)time timestamps:(id)timestamps states:(id)states
{
  timestampsCopy = timestamps;
  statesCopy = states;
  if ([timestampsCopy count])
  {
    v9 = 0;
    LODWORD(v10) = -1;
    LODWORD(v11) = -1;
    do
    {
      v12 = [timestampsCopy objectAtIndexedSubscript:v9];
      unsignedLongLongValue = [v12 unsignedLongLongValue];

      v14 = [statesCopy objectAtIndexedSubscript:v9];
      intValue = [v14 intValue];

      if (unsignedLongLongValue <= time)
      {
        v11 = v9;
      }

      else
      {
        v11 = v11;
      }

      if (unsignedLongLongValue <= time)
      {
        v10 = intValue;
      }

      else
      {
        v10 = v10;
      }

      ++v9;
    }

    while ([timestampsCopy count] > v9);
    v16 = v10 << 32;
  }

  else
  {
    v16 = 0xFFFFFFFF00000000;
    v11 = 0xFFFFFFFFLL;
  }

  return (v16 | v11);
}

+ (DisplayStateChangeEvent)displayStateBeforeHangStartTimestamp:(unint64_t)timestamp displayTimestamps:(id)timestamps displayStates:(id)states
{
  timestampsCopy = timestamps;
  statesCopy = states;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3010000000;
  v17 = &unk_100079A3F;
  v18 = xmmword_100045320;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000147B8;
  v13[3] = &unk_100085628;
  v13[4] = &v14;
  v13[5] = timestamp;
  [timestampsCopy enumerateObjectsWithOptions:2 usingBlock:v13];
  v9 = v15[4];
  v10 = v15[5];
  _Block_object_dispose(&v14, 8);

  v11 = v9;
  v12 = v10;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

+ (id)displayOnIntervalsForDisplayTimestamps:(id)timestamps displayStates:(id)states startTimestamp:(unint64_t)timestamp endTimestamp:(unint64_t)endTimestamp startState:(id *)state endState:(id *)endState
{
  timestampsCopy = timestamps;
  statesCopy = states;
  *state = [HTDisplayParser displayStateBeforeOrAtTime:timestamp timestamps:timestampsCopy states:statesCopy];
  *endState = [HTDisplayParser displayStateBeforeOrAtTime:endTimestamp timestamps:timestampsCopy states:statesCopy];
  v15 = sub_100001684();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F454(state);
  }

  v16 = sub_100001684();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F4CC(endState);
  }

  if (state->var0 == -1)
  {
    v17 = sub_100001684();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_10003F544(v17);
    }

    state->var0 = 0;
  }

  v35 = timestampsCopy;
  v18 = [timestampsCopy mutableCopy];
  v19 = [statesCopy mutableCopy];
  v20 = [NSNumber numberWithUnsignedLongLong:timestamp];
  [v18 setObject:v20 atIndexedSubscript:state->var0];

  v21 = [NSNumber numberWithUnsignedLongLong:endTimestamp];
  [v18 insertObject:v21 atIndex:endState->var0 + 1];

  var1 = endState->var1;
  v23 = &off_10008AA50;
  if (!var1)
  {
    v23 = &off_10008AA38;
  }

  if (var1 == 1)
  {
    v24 = &off_10008AA20;
  }

  else
  {
    v24 = v23;
  }

  [v19 insertObject:v24 atIndex:endState->var0 + 1];
  v25 = +[NSMutableArray array];
  var0 = state->var0;
  if (var0 <= endState->var0)
  {
    do
    {
      v27 = [v19 objectAtIndexedSubscript:var0];
      if ([v27 intValue] == 1)
      {
        v28 = var0 + 1;
        v29 = [v19 objectAtIndexedSubscript:var0 + 1];
        intValue = [v29 intValue];

        if (!intValue)
        {
          v31 = [v18 objectAtIndexedSubscript:var0];
          [v25 addObject:v31];

          v32 = [v18 objectAtIndexedSubscript:var0 + 1];
          [v25 addObject:v32];
        }
      }

      else
      {

        v28 = var0 + 1;
      }

      v33 = var0 < endState->var0;
      var0 = v28;
    }

    while (v33);
  }

  return v25;
}

+ (id)displayInfoForSpindump:(id)spindump startAbsoluteTime:(unint64_t)time endAbsoluteTime:(unint64_t)absoluteTime
{
  v8 = [spindump objectForKeyedSubscript:@"DisplayData"];
  if ([v8 count])
  {
    v42 = -1;
    *buf = -1;
    v9 = [self displayEventTimestampsFromDisplayInfo:v8];
    v10 = [self displayEventStatesFromDisplayInfo:v8];
    v11 = [HTDisplayParser displayStateBeforeHangStartTimestamp:time displayTimestamps:v9 displayStates:v10];
    v12 = [HTDisplayParser displayOnIntervalsForDisplayTimestamps:v9 displayStates:v10 startTimestamp:time endTimestamp:absoluteTime startState:buf endState:&v42];
    v13 = [v12 mutableCopy];
    v14 = sub_10000B548(time);
    v15 = sub_10000B548(absoluteTime);
    if ([v12 count])
    {
      v16 = v15 - v14;
      v17 = [v12 count];
      v18 = 0.0;
      if (v17 != 1)
      {
        v38 = v15 - v14;
        v39 = v11;
        v40 = v10;
        v41 = v9;
        v19 = 0;
        v20 = 0;
        v21 = v14;
        do
        {
          v22 = [v13 objectAtIndexedSubscript:{v19, v18}];
          v23 = (sub_10000B548([v22 unsignedLongLongValue]) - v21);

          v24 = [v13 objectAtIndexedSubscript:v19 + 1];
          v25 = (sub_10000B548([v24 unsignedLongLongValue]) - v21);

          v26 = [NSNumber numberWithUnsignedLongLong:v23];
          [v13 setObject:v26 atIndexedSubscript:v19];

          v27 = [NSNumber numberWithUnsignedLongLong:v25];
          [v13 setObject:v27 atIndexedSubscript:v19 + 1];

          v20 = v20 - v23 + v25;
          v19 += 2;
        }

        while ([v12 count] - 1 > v19);
        *&v18 = v20;
        v10 = v40;
        v9 = v41;
        v16 = v38;
        v11 = v39;
      }

      v28 = *&v18 / v16;
    }

    else
    {
      v28 = 0.0;
    }

    v31 = objc_alloc_init(NSMutableDictionary);
    v32 = [NSNumber numberWithInt:*&buf[4]];
    [v31 setObject:v32 forKeyedSubscript:@"startState"];

    v33 = [NSNumber numberWithInt:HIDWORD(v42)];
    [v31 setObject:v33 forKeyedSubscript:@"endState"];

    [v31 setObject:v13 forKeyedSubscript:@"displayOnIntervals"];
    if (v11)
    {
      v34 = [NSNumber numberWithDouble:sub_10000B590(time - v11)];
      [v31 setObject:v34 forKeyedSubscript:@"secondsSinceDisplayStateBeforeHangStart"];
    }

    else
    {
      [v31 setObject:&off_10008AAA8 forKeyedSubscript:@"secondsSinceDisplayStateBeforeHangStart"];
    }

    *&v35 = v28;
    v36 = [NSNumber numberWithFloat:v35];
    [v31 setObject:v36 forKeyedSubscript:@"displayOnPercent"];

    v44 = @"displayData";
    v45 = v31;
    v30 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  }

  else
  {
    v29 = sub_100001684();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "No display information has been logged. Are you sure you restarted after writing to defaults?", buf, 2u);
    }

    v30 = &__NSDictionary0__struct;
  }

  return v30;
}

@end