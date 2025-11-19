@interface MOEventBundleFetchOptions
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFetchOptions:(id)a3;
- (MOEventBundleFetchOptions)initWithAllowedCategories:(id)a3 dateInterval:(id)a4 ascending:(BOOL)a5 limit:(id)a6 includeDeletedBundles:(BOOL)a7 skipRanking:(BOOL)a8 interfaceType:(unint64_t)a9;
- (MOEventBundleFetchOptions)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOEventBundleFetchOptions

- (MOEventBundleFetchOptions)initWithAllowedCategories:(id)a3 dateInterval:(id)a4 ascending:(BOOL)a5 limit:(id)a6 includeDeletedBundles:(BOOL)a7 skipRanking:(BOOL)a8 interfaceType:(unint64_t)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v22.receiver = self;
  v22.super_class = MOEventBundleFetchOptions;
  v19 = [(MOEventBundleFetchOptions *)&v22 init];
  v20 = v19;
  if (v19)
  {
    v19->_ascending = a5;
    objc_storeStrong(&v19->_dateInterval, a4);
    objc_storeStrong(&v20->_limit, a6);
    v20->_filterBundle = 0;
    objc_storeStrong(&v20->_categories, a3);
    v20->_includeDeletedBundles = a7;
    v20->_skipRanking = a8;
    v20->_interfaceType = a9;
  }

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  ascending = self->_ascending;
  v7 = a3;
  v5 = [NSNumber numberWithBool:ascending];
  [v7 encodeObject:v5 forKey:@"ascending"];

  [v7 encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [v7 encodeObject:self->_limit forKey:@"limit"];
  v6 = [NSNumber numberWithBool:self->_skipRanking];
  [v7 encodeObject:v6 forKey:@"skipRanking"];

  [v7 encodeBool:self->_includeDeletedBundles forKey:@"includeDeletedBundles"];
  [v7 encodeObject:self->_identifiers forKey:@"identifiers"];
  [v7 encodeInt64:self->_interfaceType forKey:@"interfaceType"];
  [v7 encodeBool:self->_personalizedSensingFilter forKey:@"pssFilter"];
  [v7 encodeBool:self->_personalizedSensingVisitsAllowed forKey:@"pssVisits"];
  [v7 encodeBool:self->_skipLocalization forKey:@"skipLocalization"];
}

- (MOEventBundleFetchOptions)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ascending"];
  v20 = [v4 BOOLValue];

  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"limit"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"skipRanking"];
  v8 = [v7 BOOLValue];

  v9 = [v3 decodeBoolForKey:@"includeDeletedBundles"];
  v10 = [v3 decodeBoolForKey:@"skipLocalization"];
  v11 = [v3 decodeBoolForKey:@"pssFilter"];
  v12 = [v3 decodeBoolForKey:@"pssVisits"];
  v13 = objc_opt_class();
  v14 = [NSSet setWithObjects:v13, objc_opt_class(), 0];
  v15 = [v3 decodeObjectOfClasses:v14 forKey:@"identifiers"];

  v16 = [v3 decodeInt64ForKey:@"interfaceType"];
  v17 = [(MOEventBundleFetchOptions *)self initWithDateInterval:v5 ascending:v20 limit:v6 includeDeletedBundles:v9 skipRanking:v8];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_identifiers, v15);
    v18->_interfaceType = v16;
    v18->_personalizedSensingFilter = v11;
    v18->_personalizedSensingVisitsAllowed = v12;
    v18->_skipLocalization = v10;
  }

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(MOEventBundleFetchOptions *)self isEqualToFetchOptions:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToFetchOptions:(id)a3
{
  v5 = a3;
  ascending = self->_ascending;
  v7 = [v5 ascending];
  dateInterval = self->_dateInterval;
  if (dateInterval)
  {
    goto LABEL_2;
  }

  v3 = [v5 dateInterval];
  if (!v3)
  {
    v13 = 1;
    goto LABEL_11;
  }

  if (self->_dateInterval)
  {
LABEL_2:
    v9 = [v5 dateInterval];
    if (v9)
    {
      v10 = v9;
      v11 = self->_dateInterval;
      v12 = [v5 dateInterval];
      v13 = [(NSDateInterval *)v11 isEqualToDateInterval:v12];

      if (dateInterval)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v13 = 0;
      if (dateInterval)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_11:

LABEL_12:
  if (self->_limit)
  {
    v14 = [v5 limit];
    if (v14)
    {
      v15 = 0;
    }

    else if (self->_limit)
    {
      v16 = [v5 limit];
      if (v16)
      {
        limit = self->_limit;
        v18 = [v5 limit];
        LOBYTE(limit) = [(NSNumber *)limit isEqualToNumber:v18];

        v15 = limit ^ 1;
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 1;
  }

  filterBundle = self->_filterBundle;
  v20 = [v5 filterBundle];
  skipRanking = self->_skipRanking;
  v22 = [v5 skipRanking];
  v23 = 0;
  if (ascending == v7 && ((v13 ^ 1) & 1) == 0 && (v15 & 1) == 0)
  {
    v23 = filterBundle == v20 && (v22 & 1) == skipRanking;
  }

  return v23;
}

- (unint64_t)hash
{
  v3 = [NSNumber numberWithBool:self->_ascending];
  v4 = [v3 hash];
  v5 = [(NSDateInterval *)self->_dateInterval hash];
  v6 = v5 ^ [(NSNumber *)self->_limit hash]^ v4;
  v7 = [NSNumber numberWithBool:self->_filterBundle];
  v8 = [v7 hash];
  v9 = [NSNumber numberWithBool:self->_skipRanking];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (id)description
{
  if (self->_ascending)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v4 = [(NSDateInterval *)self->_dateInterval startDate];
  v5 = [v4 stringFromDate];
  v6 = [(NSDateInterval *)self->_dateInterval endDate];
  v7 = [v6 stringFromDate];
  v8 = v7;
  if (self->_filterBundle)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (self->_skipRanking)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (self->_personalizedSensingFilter)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (self->_personalizedSensingVisitsAllowed)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = [NSString stringWithFormat:@"ascending, %@, startDate, %@, endDate, %@, limit, %@, filterBundle, %@, skipRanking, %@, interfaceType, %lu, pssFilter, %@, pssVisits, %@", v3, v5, v7, self->_limit, v9, v10, self->_interfaceType, v11, v12];

  return v13;
}

@end