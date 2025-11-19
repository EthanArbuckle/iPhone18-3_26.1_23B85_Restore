@interface _DASActivityRateLimitTracker
- (BOOL)onlyExpiredOccurrencesAtDate:(id)a3;
- (BOOL)timewiseEligibleAtDate:(id)a3 withLPMWindowExtension:(BOOL)a4;
- (_DASActivityRateLimitTracker)initWithRateLimit:(id)a3;
- (_DASActivityRateLimitTracker)initWithRateLimit:(id)a3 andOccurrences:(id)a4;
- (id)description;
- (id)nextTimewiseEligibleDateFromDate:(id)a3 withLPMWindowExtension:(BOOL)a4;
- (unint64_t)occurrencesInWindow:(double)a3 atDate:(id)a4;
- (void)executeAtDate:(id)a3;
@end

@implementation _DASActivityRateLimitTracker

- (_DASActivityRateLimitTracker)initWithRateLimit:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _DASActivityRateLimitTracker;
  v5 = [(_DASActivityRateLimitTracker *)&v10 init];
  if (v5)
  {
    v5->_maximum = [v4 maximum];
    [v4 window];
    v5->_window = v6;
    v7 = +[NSMutableArray array];
    occurrences = v5->_occurrences;
    v5->_occurrences = v7;

    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (_DASActivityRateLimitTracker)initWithRateLimit:(id)a3 andOccurrences:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _DASActivityRateLimitTracker;
  v8 = [(_DASActivityRateLimitTracker *)&v14 init];
  if (v8)
  {
    v8->_maximum = [v6 maximum];
    [v6 window];
    v8->_window = v9;
    v10 = [v7 allObjects];
    v11 = [NSMutableArray arrayWithArray:v10];
    occurrences = v8->_occurrences;
    v8->_occurrences = v11;

    v8->_lock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

- (unint64_t)occurrencesInWindow:(double)a3 atDate:(id)a4
{
  v6 = a4;
  v7 = +[NSMutableArray array];
  os_unfair_lock_lock(&self->_lock);
  v8 = [(_DASActivityRateLimitTracker *)self occurrences];
  v9 = [NSArray arrayWithArray:v8];

  os_unfair_lock_unlock(&self->_lock);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        [v16 timeIntervalSinceDate:{v6, v20}];
        v18 = -v17;
        if (v18 <= a3)
        {
          ++v13;
          [v7 addObject:{v16, v18}];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:{16, v18}];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  os_unfair_lock_lock(&self->_lock);
  [(_DASActivityRateLimitTracker *)self setOccurrences:v7];
  os_unfair_lock_unlock(&self->_lock);

  return v13;
}

- (BOOL)timewiseEligibleAtDate:(id)a3 withLPMWindowExtension:(BOOL)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = 3600.0;
  }

  else
  {
    [(_DASActivityRateLimitTracker *)self window];
  }

  v8 = [(_DASActivityRateLimitTracker *)self occurrencesInWindow:v6 atDate:v7];
  v9 = v8 < [(_DASActivityRateLimitTracker *)self maximum];

  return v9;
}

- (void)executeAtDate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_occurrences addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)nextTimewiseEligibleDateFromDate:(id)a3 withLPMWindowExtension:(BOOL)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableArray *)self->_occurrences count];
  os_unfair_lock_unlock(&self->_lock);
  if (a4)
  {
    v8 = 3600.0;
  }

  else
  {
    [(_DASActivityRateLimitTracker *)self window];
    v8 = v9;
  }

  v10 = [(_DASActivityRateLimitTracker *)self occurrencesInWindow:v6 atDate:v8];
  if (v10 < [(_DASActivityRateLimitTracker *)self maximum]|| (v11 = v7 - v10, (v11 & 0x80000000) != 0))
  {
    v14 = v6;
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    v12 = [(_DASActivityRateLimitTracker *)self occurrences];
    v13 = [v12 objectAtIndexedSubscript:v11];

    os_unfair_lock_unlock(&self->_lock);
    v14 = [NSDate dateWithTimeInterval:v13 sinceDate:v8];
  }

  return v14;
}

- (BOOL)onlyExpiredOccurrencesAtDate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(_DASActivityRateLimitTracker *)self occurrences];
  v6 = [NSArray arrayWithArray:v5];

  os_unfair_lock_unlock(&self->_lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v17 + 1) + 8 * i) timeIntervalSinceDate:{v4, v17}];
        v13 = -v12;
        [(_DASActivityRateLimitTracker *)self window];
        if (v14 >= v13)
        {
          v15 = 0;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_11:

  return v15;
}

- (id)description
{
  [(_DASActivityRateLimitTracker *)self window];
  v4 = v3;
  v5 = +[NSDate now];
  v6 = [NSNumber numberWithUnsignedInteger:[(_DASActivityRateLimitTracker *)self occurrencesInWindow:v5 atDate:v4]];
  v7 = [NSNumber numberWithUnsignedInteger:self->_maximum];
  v8 = [NSNumber numberWithDouble:self->_window];
  v9 = [NSString stringWithFormat:@"<Rate Limit - Current:%@ Max:%@ Window:%@>", v6, v7, v8];

  return v9;
}

@end