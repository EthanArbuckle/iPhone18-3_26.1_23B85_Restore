@interface TMTimeSynthesizerMonitor
- (TMTimeSynthesizerMonitor)init;
- (void)dealloc;
- (void)resetRejectCountsForReason:(int64_t)a3 rtc:(double)a4;
- (void)sendConsecutiveRejectsAnalyticsAtRtc:(double)a3 forReason:(int64_t)a4 withTime:(id)a5;
- (void)synthesizer:(id)a3 rejectedTimeInput:(id)a4;
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

- (void)resetRejectCountsForReason:(int64_t)a3 rtc:(double)a4
{
  if ([(TMTimeSynthesizerMonitor *)self previousRejectsExist])
  {
    v7 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "resetting reject counts", v8, 2u);
    }

    [(TMTimeSynthesizerMonitor *)self sendConsecutiveRejectsAnalyticsAtRtc:a3 forReason:0 withTime:a4];
    [(NSMutableDictionary *)[(TMTimeSynthesizerMonitor *)self sourceRejects] removeAllObjects];
  }
}

- (void)synthesizer:(id)a3 rejectedTimeInput:(id)a4
{
  if ([&off_10002C768 containsObject:{objc_msgSend(a4, "source", a3)}])
  {
    v6 = -[NSMutableDictionary objectForKey:](-[TMTimeSynthesizerMonitor sourceRejects](self, "sourceRejects"), "objectForKey:", [a4 source]);
    if (v6)
    {
      -[NSMutableDictionary setObject:forKeyedSubscript:](-[TMTimeSynthesizerMonitor sourceRejects](self, "sourceRejects"), "setObject:forKeyedSubscript:", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 intValue] + 1), objc_msgSend(a4, "source"));
    }

    else
    {
      -[NSMutableDictionary setObject:forKey:](-[TMTimeSynthesizerMonitor sourceRejects](self, "sourceRejects"), "setObject:forKey:", &off_10002C640, [a4 source]);
    }

    v8 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = [a4 source];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "source %@ has been rejected by Secure Filter, incrementing count", &v9, 0xCu);
    }

    [a4 rtc_s];
    [(TMTimeSynthesizerMonitor *)self sendConsecutiveRejectsAnalyticsAtRtc:3 forReason:a4 withTime:?];
  }

  else
  {
    v7 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = [a4 source];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "source %@ is not being tracked by TMTimeSynthesizerMonitor", &v9, 0xCu);
    }
  }
}

- (void)sendConsecutiveRejectsAnalyticsAtRtc:(double)a3 forReason:(int64_t)a4 withTime:(id)a5
{
  v8 = [NSMutableDictionary dictionaryWithDictionary:[(TMTimeSynthesizerMonitor *)self sourceRejects]];
  if (a5)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [a5 utc_s];
    [(NSMutableDictionary *)v8 setObject:[NSNumber forKey:"numberWithDouble:" numberWithDouble:?], @"difference"];
  }

  [(NSMutableDictionary *)v8 setObject:[NSNumber forKey:"numberWithDouble:" numberWithDouble:a3], @"rtc_s"];
  [(NSMutableDictionary *)v8 setObject:[NSNumber forKey:"numberWithInteger:" numberWithInteger:a4], @"report_reason"];
  AnalyticsSendEventLazy();
}

@end