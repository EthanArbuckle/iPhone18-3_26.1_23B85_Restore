@interface MOEventFetchOptions
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFetchOptions:(id)options;
- (MOEventFetchOptions)initWithCoder:(id)coder;
- (MOEventFetchOptions)initWithDateInterval:(id)interval ascending:(BOOL)ascending categories:(id)categories limit:(id)limit;
- (MOEventFetchOptions)initWithDateInterval:(id)interval ascending:(BOOL)ascending limit:(id)limit;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOEventFetchOptions

- (MOEventFetchOptions)initWithDateInterval:(id)interval ascending:(BOOL)ascending limit:(id)limit
{
  intervalCopy = interval;
  limitCopy = limit;
  v14.receiver = self;
  v14.super_class = MOEventFetchOptions;
  v11 = [(MOEventFetchOptions *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_ascending = ascending;
    objc_storeStrong(&v11->_dateInterval, interval);
    objc_storeStrong(&v12->_limit, limit);
  }

  return v12;
}

- (MOEventFetchOptions)initWithDateInterval:(id)interval ascending:(BOOL)ascending categories:(id)categories limit:(id)limit
{
  intervalCopy = interval;
  categoriesCopy = categories;
  limitCopy = limit;
  v17.receiver = self;
  v17.super_class = MOEventFetchOptions;
  v14 = [(MOEventFetchOptions *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_ascending = ascending;
    objc_storeStrong(&v14->_categories, categories);
    objc_storeStrong(&v15->_dateInterval, interval);
    objc_storeStrong(&v15->_limit, limit);
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  ascending = self->_ascending;
  coderCopy = coder;
  v5 = [NSNumber numberWithBool:ascending];
  [coderCopy encodeObject:v5 forKey:@"ascending"];

  [coderCopy encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [coderCopy encodeObject:self->_limit forKey:@"limit"];
  [coderCopy encodeObject:self->_categories forKey:@"categories"];
}

- (MOEventFetchOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ascending"];
  bOOLValue = [v5 BOOLValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"limit"];
  v9 = objc_opt_class();
  v10 = [NSSet setWithObjects:v9, objc_opt_class(), 0];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"categories"];

  v12 = [(MOEventFetchOptions *)self initWithDateInterval:v7 ascending:bOOLValue categories:v11 limit:v8];
  return v12;
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
    v6 = [(MOEventFetchOptions *)self isEqualToFetchOptions:v5];
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
      v15 = 1;
    }

    else if (self->_limit)
    {
      limit2 = [optionsCopy limit];
      if (limit2)
      {
        limit = self->_limit;
        limit3 = [optionsCopy limit];
        v15 = [(NSNumber *)limit isEqualToNumber:limit3];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  categories = self->_categories;
  categories = [optionsCopy categories];

  if (categories == categories)
  {
    v21 = v15;
  }

  else
  {
    v21 = 0;
  }

  if (((ascending == ascending) & v13) == 1)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (unint64_t)hash
{
  v3 = [NSNumber numberWithBool:self->_ascending];
  v4 = [v3 hash];
  v5 = [(NSDateInterval *)self->_dateInterval hash];
  v6 = v5 ^ [(NSNumber *)self->_limit hash];
  v7 = v6 ^ [(NSArray *)self->_categories hash];

  return v7 ^ v4;
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
  v8 = [NSString stringWithFormat:@"ascending, %@, startDate, %@, endDate, %@, categories, %@, limit, %@", v3, stringFromDate, stringFromDate2, self->_categories, self->_limit];

  return v8;
}

@end