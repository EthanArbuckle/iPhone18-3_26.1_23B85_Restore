@interface MOEventBundleFetchOptions
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFetchOptions:(id)options;
- (MOEventBundleFetchOptions)initWithAllowedCategories:(id)categories dateInterval:(id)interval ascending:(BOOL)ascending limit:(id)limit includeDeletedBundles:(BOOL)bundles skipRanking:(BOOL)ranking interfaceType:(unint64_t)type;
- (MOEventBundleFetchOptions)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOEventBundleFetchOptions

- (MOEventBundleFetchOptions)initWithAllowedCategories:(id)categories dateInterval:(id)interval ascending:(BOOL)ascending limit:(id)limit includeDeletedBundles:(BOOL)bundles skipRanking:(BOOL)ranking interfaceType:(unint64_t)type
{
  categoriesCopy = categories;
  intervalCopy = interval;
  limitCopy = limit;
  v22.receiver = self;
  v22.super_class = MOEventBundleFetchOptions;
  v19 = [(MOEventBundleFetchOptions *)&v22 init];
  v20 = v19;
  if (v19)
  {
    v19->_ascending = ascending;
    objc_storeStrong(&v19->_dateInterval, interval);
    objc_storeStrong(&v20->_limit, limit);
    v20->_filterBundle = 0;
    objc_storeStrong(&v20->_categories, categories);
    v20->_includeDeletedBundles = bundles;
    v20->_skipRanking = ranking;
    v20->_interfaceType = type;
  }

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  ascending = self->_ascending;
  coderCopy = coder;
  v5 = [NSNumber numberWithBool:ascending];
  [coderCopy encodeObject:v5 forKey:@"ascending"];

  [coderCopy encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [coderCopy encodeObject:self->_limit forKey:@"limit"];
  v6 = [NSNumber numberWithBool:self->_skipRanking];
  [coderCopy encodeObject:v6 forKey:@"skipRanking"];

  [coderCopy encodeBool:self->_includeDeletedBundles forKey:@"includeDeletedBundles"];
  [coderCopy encodeObject:self->_identifiers forKey:@"identifiers"];
  [coderCopy encodeInt64:self->_interfaceType forKey:@"interfaceType"];
  [coderCopy encodeBool:self->_personalizedSensingFilter forKey:@"pssFilter"];
  [coderCopy encodeBool:self->_personalizedSensingVisitsAllowed forKey:@"pssVisits"];
  [coderCopy encodeBool:self->_skipLocalization forKey:@"skipLocalization"];
}

- (MOEventBundleFetchOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ascending"];
  bOOLValue = [v4 BOOLValue];

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"limit"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"skipRanking"];
  bOOLValue2 = [v7 BOOLValue];

  v9 = [coderCopy decodeBoolForKey:@"includeDeletedBundles"];
  v10 = [coderCopy decodeBoolForKey:@"skipLocalization"];
  v11 = [coderCopy decodeBoolForKey:@"pssFilter"];
  v12 = [coderCopy decodeBoolForKey:@"pssVisits"];
  v13 = objc_opt_class();
  v14 = [NSSet setWithObjects:v13, objc_opt_class(), 0];
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"identifiers"];

  v16 = [coderCopy decodeInt64ForKey:@"interfaceType"];
  v17 = [(MOEventBundleFetchOptions *)self initWithDateInterval:v5 ascending:bOOLValue limit:v6 includeDeletedBundles:v9 skipRanking:bOOLValue2];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(MOEventBundleFetchOptions *)self isEqualToFetchOptions:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToFetchOptions:(id)options
{
  optionsCopy = options;
  ascending = self->_ascending;
  ascending = [optionsCopy ascending];
  dateInterval = self->_dateInterval;
  if (dateInterval)
  {
    goto LABEL_2;
  }

  dateInterval = [optionsCopy dateInterval];
  if (!dateInterval)
  {
    v13 = 1;
    goto LABEL_11;
  }

  if (self->_dateInterval)
  {
LABEL_2:
    dateInterval2 = [optionsCopy dateInterval];
    if (dateInterval2)
    {
      v10 = dateInterval2;
      v11 = self->_dateInterval;
      dateInterval3 = [optionsCopy dateInterval];
      v13 = [(NSDateInterval *)v11 isEqualToDateInterval:dateInterval3];

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
    limit = [optionsCopy limit];
    if (limit)
    {
      v15 = 0;
    }

    else if (self->_limit)
    {
      limit2 = [optionsCopy limit];
      if (limit2)
      {
        limit = self->_limit;
        limit3 = [optionsCopy limit];
        LOBYTE(limit) = [(NSNumber *)limit isEqualToNumber:limit3];

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
  filterBundle = [optionsCopy filterBundle];
  skipRanking = self->_skipRanking;
  skipRanking = [optionsCopy skipRanking];
  v23 = 0;
  if (ascending == ascending && ((v13 ^ 1) & 1) == 0 && (v15 & 1) == 0)
  {
    v23 = filterBundle == filterBundle && (skipRanking & 1) == skipRanking;
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

  startDate = [(NSDateInterval *)self->_dateInterval startDate];
  stringFromDate = [startDate stringFromDate];
  endDate = [(NSDateInterval *)self->_dateInterval endDate];
  stringFromDate2 = [endDate stringFromDate];
  v8 = stringFromDate2;
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

  v13 = [NSString stringWithFormat:@"ascending, %@, startDate, %@, endDate, %@, limit, %@, filterBundle, %@, skipRanking, %@, interfaceType, %lu, pssFilter, %@, pssVisits, %@", v3, stringFromDate, stringFromDate2, self->_limit, v9, v10, self->_interfaceType, v11, v12];

  return v13;
}

@end