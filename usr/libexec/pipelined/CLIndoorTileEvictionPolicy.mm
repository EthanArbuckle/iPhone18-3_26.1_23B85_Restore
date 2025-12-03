@interface CLIndoorTileEvictionPolicy
- (BOOL)tileLastModified:(double)modified needsEvictionAt:(double)at;
- (CLIndoorTileEvictionPolicy)init;
- (CLIndoorTileEvictionPolicy)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLIndoorTileEvictionPolicy

- (CLIndoorTileEvictionPolicy)init
{
  v7.receiver = self;
  v7.super_class = CLIndoorTileEvictionPolicy;
  v2 = [(CLIndoorTileEvictionPolicy *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_forceClean = 0;
    activity = v2->_activity;
    v2->_maxModifiedAge = 604800.0;
    v2->_activity = 0;

    v5 = v3;
  }

  return v3;
}

- (CLIndoorTileEvictionPolicy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CLIndoorTileEvictionPolicy;
  v5 = [(CLIndoorTileEvictionPolicy *)&v10 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"_maxModifiedAge"];
    v5->_maxModifiedAge = v6;
    v5->_forceClean = [coderCopy decodeBoolForKey:@"_forceClean"];
    activity = v5->_activity;
    v5->_activity = 0;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeDouble:@"_maxModifiedAge" forKey:self->_maxModifiedAge];
  LOBYTE(v4) = self->_forceClean;
  [coderCopy encodeDouble:@"_forceClean" forKey:v4];
}

- (BOOL)tileLastModified:(double)modified needsEvictionAt:(double)at
{
  if (qword_10045B070 != -1)
  {
    sub_1003846A4();
    v7 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = at - modified;
    return v8 >= self->_maxModifiedAge;
  }

  v7 = qword_10045B078;
  if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = at - modified;
  maxModifiedAge = self->_maxModifiedAge;
  v11 = 134350080;
  atCopy = at;
  v13 = 2050;
  modifiedCopy = modified;
  v15 = 2050;
  v16 = at - modified;
  v17 = 2050;
  v18 = maxModifiedAge;
  v19 = 1024;
  v20 = at - modified >= maxModifiedAge;
  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "@EvictCheck, modified, %{public}.1f, %{public}.1f, ages, %{public}.1f, %{public}.1f, evict, %d", &v11, 0x30u);
  return v8 >= self->_maxModifiedAge;
}

- (id)description
{
  v2 = @"NO";
  if (self->_forceClean)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_activity)
  {
    v2 = @"YES";
  }

  return [NSString stringWithFormat:@"CLIndoorTileEvictionPolicy[maxModifiedAge=%lfs, forceClean=%@, xpc_activity=%@]", *&self->_maxModifiedAge, v3, v2];
}

@end