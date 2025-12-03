@interface _DASActivityRateLimitTracker
- (BOOL)onlyExpiredOccurrencesAtDate:(id)date;
- (BOOL)timewiseEligibleAtDate:(id)date withLPMWindowExtension:(BOOL)extension;
- (_DASActivityRateLimitTracker)initWithRateLimit:(id)limit;
- (_DASActivityRateLimitTracker)initWithRateLimit:(id)limit andOccurrences:(id)occurrences;
- (id)description;
- (id)nextTimewiseEligibleDateFromDate:(id)date withLPMWindowExtension:(BOOL)extension;
- (unint64_t)occurrencesInWindow:(double)window atDate:(id)date;
- (void)executeAtDate:(id)date;
@end

@implementation _DASActivityRateLimitTracker

- (_DASActivityRateLimitTracker)initWithRateLimit:(id)limit
{
  limitCopy = limit;
  v10.receiver = self;
  v10.super_class = _DASActivityRateLimitTracker;
  v5 = [(_DASActivityRateLimitTracker *)&v10 init];
  if (v5)
  {
    v5->_maximum = [limitCopy maximum];
    [limitCopy window];
    v5->_window = v6;
    v7 = +[NSMutableArray array];
    occurrences = v5->_occurrences;
    v5->_occurrences = v7;

    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (_DASActivityRateLimitTracker)initWithRateLimit:(id)limit andOccurrences:(id)occurrences
{
  limitCopy = limit;
  occurrencesCopy = occurrences;
  v14.receiver = self;
  v14.super_class = _DASActivityRateLimitTracker;
  v8 = [(_DASActivityRateLimitTracker *)&v14 init];
  if (v8)
  {
    v8->_maximum = [limitCopy maximum];
    [limitCopy window];
    v8->_window = v9;
    allObjects = [occurrencesCopy allObjects];
    v11 = [NSMutableArray arrayWithArray:allObjects];
    occurrences = v8->_occurrences;
    v8->_occurrences = v11;

    v8->_lock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

- (unint64_t)occurrencesInWindow:(double)window atDate:(id)date
{
  dateCopy = date;
  v7 = +[NSMutableArray array];
  os_unfair_lock_lock(&self->_lock);
  occurrences = [(_DASActivityRateLimitTracker *)self occurrences];
  v9 = [NSArray arrayWithArray:occurrences];

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
        [v16 timeIntervalSinceDate:{dateCopy, v20}];
        v18 = -v17;
        if (v18 <= window)
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

- (BOOL)timewiseEligibleAtDate:(id)date withLPMWindowExtension:(BOOL)extension
{
  dateCopy = date;
  if (extension)
  {
    v7 = 3600.0;
  }

  else
  {
    [(_DASActivityRateLimitTracker *)self window];
  }

  v8 = [(_DASActivityRateLimitTracker *)self occurrencesInWindow:dateCopy atDate:v7];
  v9 = v8 < [(_DASActivityRateLimitTracker *)self maximum];

  return v9;
}

- (void)executeAtDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_occurrences addObject:dateCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)nextTimewiseEligibleDateFromDate:(id)date withLPMWindowExtension:(BOOL)extension
{
  dateCopy = date;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableArray *)self->_occurrences count];
  os_unfair_lock_unlock(&self->_lock);
  if (extension)
  {
    v8 = 3600.0;
  }

  else
  {
    [(_DASActivityRateLimitTracker *)self window];
    v8 = v9;
  }

  v10 = [(_DASActivityRateLimitTracker *)self occurrencesInWindow:dateCopy atDate:v8];
  if (v10 < [(_DASActivityRateLimitTracker *)self maximum]|| (v11 = v7 - v10, (v11 & 0x80000000) != 0))
  {
    v14 = dateCopy;
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    occurrences = [(_DASActivityRateLimitTracker *)self occurrences];
    v13 = [occurrences objectAtIndexedSubscript:v11];

    os_unfair_lock_unlock(&self->_lock);
    v14 = [NSDate dateWithTimeInterval:v13 sinceDate:v8];
  }

  return v14;
}

- (BOOL)onlyExpiredOccurrencesAtDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock(&self->_lock);
  occurrences = [(_DASActivityRateLimitTracker *)self occurrences];
  v6 = [NSArray arrayWithArray:occurrences];

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

        [*(*(&v17 + 1) + 8 * i) timeIntervalSinceDate:{dateCopy, v17}];
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