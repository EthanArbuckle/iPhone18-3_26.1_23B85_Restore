@interface TMTimeZoneManager
- (BOOL)isSourceAvailable:(id)a3;
- (TMTimeZoneManager)initWithRules:(id)a3 delegate:(id)a4;
- (id)description;
- (void)dealloc;
- (void)reset:(id)a3;
- (void)sendStateAnalytics;
- (void)setSourceAvailable:(id)a3;
- (void)setSourceTimeZone:(id)a3;
- (void)setSourceUnavailable:(id)a3;
@end

@implementation TMTimeZoneManager

- (id)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = [v3 initWithFormat:@"<%@: %p {\n", NSStringFromClass(v4), self];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  rules = self->rules;
  v7 = [(NSOrderedSet *)rules countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(rules);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [-[NSMutableDictionary objectForKeyedSubscript:](self->inputs objectForKeyedSubscript:{v11), "olsonName"}];
        v13 = [(NSMutableSet *)self->availableSources containsObject:v11];
        v14 = [v11 UTF8String];
        if (v12)
        {
          v15 = [v12 UTF8String];
        }

        else
        {
          v15 = "--";
        }

        [v5 appendFormat:@"%18s %d %s, \n", v14, v13, v15];
      }

      v8 = [(NSOrderedSet *)rules countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  [v5 appendFormat:@"} = %@>", -[TMTimeZoneManager currentTimeZone](self, "currentTimeZone")];
  return v5;
}

- (void)sendStateAnalytics
{
  v3 = +[NSMutableDictionary dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->rules;
  v4 = [(NSOrderedSet *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [-[NSMutableDictionary objectForKeyedSubscript:](self->inputs objectForKeyedSubscript:{v8), "olsonName"}];
        v10 = [v8 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
        if (v9)
        {
          v11 = [v9 UTF8String];
        }

        else
        {
          v11 = "--";
        }

        [v3 setValue:+[NSString stringWithUTF8String:](NSString forKey:{"stringWithUTF8String:", v11), v10}];
      }

      v5 = [(NSOrderedSet *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v12 = [[(TMTimeZoneManager *)self currentTimeZone] olsonName];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = @"--";
  }

  [v3 setValue:v13 forKey:@"TMComputed"];
  AnalyticsSendEventLazy();
}

- (void)reset:(id)a3
{
  v5 = qword_100033218;
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@", &v7, 0xCu);
  }

  v6 = qword_100033220;
  if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "TZ,reset,reason,%@", &v7, 0xCu);
  }

  [(TMTimeZoneManager *)self setCurrentTimeZone:0];
  [(NSMutableDictionary *)self->inputs removeAllObjects];
  [(TMTimeZoneManagerDelegate *)self->_delegate timeZoneManager:self didReset:a3];
}

- (void)dealloc
{
  [(TMTimeZoneManager *)self setCurrentTimeZone:0];
  v3.receiver = self;
  v3.super_class = TMTimeZoneManager;
  [(TMTimeZoneManager *)&v3 dealloc];
}

- (TMTimeZoneManager)initWithRules:(id)a3 delegate:(id)a4
{
  v12.receiver = self;
  v12.super_class = TMTimeZoneManager;
  v6 = [(TMTimeZoneManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_delegate = a4;
    v8 = [objc_msgSend(a3 "allKeys")];
    v7->rules = [[NSOrderedSet alloc] initWithArray:v8];
    v9 = [v8 count];
    v7->availableSources = [[NSMutableSet alloc] initWithCapacity:v9];
    v7->inputs = [[NSMutableDictionary alloc] initWithCapacity:v9];
    v10 = qword_100033220;
    if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "TZ,init,rules,%lu", buf, 0xCu);
    }

    [(TMTimeZoneManager *)v7 reset:@"init"];
  }

  return v7;
}

- (void)setSourceAvailable:(id)a3
{
  if (!a3)
  {
    sub_100016FB8();
  }

  v5 = qword_100033218;
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@", &v7, 0xCu);
  }

  v6 = qword_100033220;
  if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "TZ,setSourceAvailable,src,%@", &v7, 0xCu);
  }

  if (([(NSMutableSet *)self->availableSources containsObject:a3]& 1) == 0)
  {
    sub_100017014(&self->availableSources, a3, &self->super.isa);
  }
}

- (void)setSourceUnavailable:(id)a3
{
  if (!a3)
  {
    sub_100017078();
  }

  v5 = qword_100033218;
  if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@", &v7, 0xCu);
  }

  v6 = qword_100033220;
  if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "TZ,setSourceUnavailable,src,%@", &v7, 0xCu);
  }

  if ([(NSMutableSet *)self->availableSources containsObject:a3])
  {
    sub_1000170D4(self, a3, &self->availableSources);
  }
}

- (BOOL)isSourceAvailable:(id)a3
{
  if (!a3)
  {
    sub_1000171F0();
  }

  v5 = [(NSMutableSet *)self->availableSources containsObject:a3];
  v6 = qword_100033220;
  if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = a3;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "TZ,isSourceAvailable,src,%@,result,%d", &v8, 0x12u);
  }

  return v5;
}

- (void)setSourceTimeZone:(id)a3
{
  if (!a3)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"TMTimeZoneManager.m" description:73, @"Invalid parameter not satisfying: %@", @"tz"];
  }

  if (sub_10000240C())
  {
    *buf = 138412290;
    v12 = self;
    sub_100002280(&_mh_execute_header, v5, v6, "%@", buf);
  }

  v7 = [a3 source];
  v8 = qword_100033220;
  if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [a3 olsonName];
    *buf = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "TZ,setSourceTimeZone,src,%@,tz,%@", buf, 0x16u);
  }

  if (![(TMTimeZoneManager *)self isSourceAvailable:v7])
  {
    v10 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Source %@ gave an input without marking itself as available!", buf, 0xCu);
    }

    [(NSMutableSet *)self->availableSources addObject:v7];
  }

  [(NSMutableDictionary *)self->inputs setObject:a3 forKeyedSubscript:v7];
  sub_100016AB4(&self->super.isa, v7);
}

@end