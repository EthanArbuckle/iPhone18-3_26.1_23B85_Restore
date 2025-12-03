@interface TMTimeSynthesizerMonitor
- (TMTimeSynthesizerMonitor)init;
- (void)dealloc;
- (void)resetRejectCountsForReason:(int64_t)reason rtc:(double)rtc;
- (void)sendConsecutiveRejectsAnalyticsAtRtc:(double)rtc forReason:(int64_t)reason withTime:(id)time;
- (void)synthesizer:(id)synthesizer rejectedTimeInput:(id)input;
@end

@implementation TMTimeSynthesizerMonitor

- (TMTimeSynthesizerMonitor)init
{
  v4.receiver = self;
  v4.super_class = TMTimeSynthesizerMonitor;
  v2 = [(TMTimeSynthesizerMonitor *)&v4 init];
  if (v2)
  {
    v2->_sourceRejects = [NSMutableDictionary dictionaryWithSharedKeySet:[NSDictionary sharedKeySetForKeys:&off_10002C768]];
  }

  return v2;
}

- (void)dealloc
{
  [(TMTimeSynthesizerMonitor *)self setSourceRejects:0];
  v3.receiver = self;
  v3.super_class = TMTimeSynthesizerMonitor;
  [(TMTimeSynthesizerMonitor *)&v3 dealloc];
}

- (void)resetRejectCountsForReason:(int64_t)reason rtc:(double)rtc
{
  if ([(TMTimeSynthesizerMonitor *)self previousRejectsExist])
  {
    v7 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "resetting reject counts", v8, 2u);
    }

    [(TMTimeSynthesizerMonitor *)self sendConsecutiveRejectsAnalyticsAtRtc:reason forReason:0 withTime:rtc];
    [(NSMutableDictionary *)[(TMTimeSynthesizerMonitor *)self sourceRejects] removeAllObjects];
  }
}

- (void)synthesizer:(id)synthesizer rejectedTimeInput:(id)input
{
  if ([&off_10002C768 containsObject:{objc_msgSend(input, "source", synthesizer)}])
  {
    v6 = -[NSMutableDictionary objectForKey:](-[TMTimeSynthesizerMonitor sourceRejects](self, "sourceRejects"), "objectForKey:", [input source]);
    if (v6)
    {
      -[NSMutableDictionary setObject:forKeyedSubscript:](-[TMTimeSynthesizerMonitor sourceRejects](self, "sourceRejects"), "setObject:forKeyedSubscript:", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 intValue] + 1), objc_msgSend(input, "source"));
    }

    else
    {
      -[NSMutableDictionary setObject:forKey:](-[TMTimeSynthesizerMonitor sourceRejects](self, "sourceRejects"), "setObject:forKey:", &off_10002C640, [input source]);
    }

    v8 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      source = [input source];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "source %@ has been rejected by Secure Filter, incrementing count", &v9, 0xCu);
    }

    [input rtc_s];
    [(TMTimeSynthesizerMonitor *)self sendConsecutiveRejectsAnalyticsAtRtc:3 forReason:input withTime:?];
  }

  else
  {
    v7 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      source = [input source];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "source %@ is not being tracked by TMTimeSynthesizerMonitor", &v9, 0xCu);
    }
  }
}

- (void)sendConsecutiveRejectsAnalyticsAtRtc:(double)rtc forReason:(int64_t)reason withTime:(id)time
{
  v8 = [NSMutableDictionary dictionaryWithDictionary:[(TMTimeSynthesizerMonitor *)self sourceRejects]];
  if (time)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [time utc_s];
    [(NSMutableDictionary *)v8 setObject:[NSNumber forKey:"numberWithDouble:" numberWithDouble:?], @"difference"];
  }

  [(NSMutableDictionary *)v8 setObject:[NSNumber forKey:"numberWithDouble:" numberWithDouble:rtc], @"rtc_s"];
  [(NSMutableDictionary *)v8 setObject:[NSNumber forKey:"numberWithInteger:" numberWithInteger:reason], @"report_reason"];
  AnalyticsSendEventLazy();
}

@end