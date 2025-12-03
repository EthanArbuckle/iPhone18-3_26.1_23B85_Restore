@interface _DASBudget
- (BOOL)isEqual:(id)equal;
- (BOOL)unlockedDecrementBy:(double)by whileModulatingBudget:(BOOL)budget;
- (_DASBudget)initWithCoder:(id)coder;
- (_DASBudget)initWithDictionary:(id)dictionary;
- (_DASBudget)initWithName:(id)name capacity:(double)capacity balance:(double)balance allocationType:(unsigned __int8)type lastModulatedDate:(id)date;
- (id)description;
- (id)dictionaryRepresentation;
- (void)decrementBy:(double)by;
- (void)encodeWithCoder:(id)coder;
- (void)registerSignificantBudgetChangeCallback:(id)callback;
- (void)setAllocationType:(unsigned __int8)type;
- (void)setBalance:(double)balance;
- (void)setCapacity:(double)capacity;
@end

@implementation _DASBudget

- (_DASBudget)initWithName:(id)name capacity:(double)capacity balance:(double)balance allocationType:(unsigned __int8)type lastModulatedDate:(id)date
{
  nameCopy = name;
  dateCopy = date;
  v18.receiver = self;
  v18.super_class = _DASBudget;
  v14 = [(_DASBudget *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_name, name);
    v15->_capacity = capacity;
    v15->_balance = balance;
    v15->_allocationType = type;
    objc_storeStrong(&v15->_lastModulatedDate, date);
    *&v15->_maxBudgetValue = vmulq_n_f64(xmmword_100158810, capacity);
    v15->_lock._os_unfair_lock_opaque = 0;
  }

  return v15;
}

- (_DASBudget)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  if (v5)
  {
    v6 = v5;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"capacity"];
    if (!v7)
    {
      selfCopy = 0;
LABEL_12:

      goto LABEL_13;
    }

    v8 = v7;
    selfCopy = [dictionaryCopy objectForKeyedSubscript:@"balance"];
    if (!selfCopy)
    {
LABEL_11:

      goto LABEL_12;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"allocationType"];

    if (v10)
    {
      v11 = [dictionaryCopy objectForKeyedSubscript:@"lastModulatedDateInterval"];
      [v11 doubleValue];
      v13 = v12;

      v6 = [dictionaryCopy objectForKeyedSubscript:@"name"];
      v8 = [dictionaryCopy objectForKeyedSubscript:@"capacity"];
      [v8 doubleValue];
      v15 = v14;
      v16 = [dictionaryCopy objectForKeyedSubscript:@"balance"];
      [v16 doubleValue];
      v18 = v17;
      v19 = [dictionaryCopy objectForKeyedSubscript:@"allocationType"];
      intValue = [v19 intValue];
      v21 = intValue;
      if (v13 <= 0.0)
      {
        self = [(_DASBudget *)self initWithName:v6 capacity:intValue balance:0 allocationType:v15 lastModulatedDate:v18];
      }

      else
      {
        v22 = [NSDate dateWithTimeIntervalSinceReferenceDate:v13];
        self = [(_DASBudget *)self initWithName:v6 capacity:v21 balance:v22 allocationType:v15 lastModulatedDate:v18];
      }

      selfCopy = self;
      goto LABEL_11;
    }
  }

  selfCopy = 0;
LABEL_13:

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  name = [(_DASBudget *)self name];
  [v3 setObject:name forKeyedSubscript:@"name"];

  [(_DASBudget *)self capacity];
  v5 = [NSNumber numberWithDouble:?];
  [v3 setObject:v5 forKeyedSubscript:@"capacity"];

  [(_DASBudget *)self balance];
  v6 = [NSNumber numberWithDouble:?];
  [v3 setObject:v6 forKeyedSubscript:@"balance"];

  v7 = [NSNumber numberWithUnsignedChar:[(_DASBudget *)self allocationType]];
  [v3 setObject:v7 forKeyedSubscript:@"allocationType"];

  lastModulatedDate = [(_DASBudget *)self lastModulatedDate];

  if (lastModulatedDate)
  {
    lastModulatedDate2 = [(_DASBudget *)self lastModulatedDate];
    [lastModulatedDate2 timeIntervalSinceReferenceDate];
    v10 = [NSNumber numberWithDouble:?];
    [v3 setObject:v10 forKeyedSubscript:@"lastModulatedDateInterval"];
  }

  v11 = [v3 copy];

  return v11;
}

- (void)registerSignificantBudgetChangeCallback:(id)callback
{
  v4 = objc_retainBlock(callback);
  callback = self->_callback;
  self->_callback = v4;

  _objc_release_x1(v4, callback);
}

- (BOOL)unlockedDecrementBy:(double)by whileModulatingBudget:(BOOL)budget
{
  balance = self->_balance;
  maxBudgetValue = balance - by;
  if (self->_maxBudgetValue < maxBudgetValue)
  {
    maxBudgetValue = self->_maxBudgetValue;
  }

  if (self->_minBudgetValue >= maxBudgetValue)
  {
    minBudgetValue = self->_minBudgetValue;
  }

  else
  {
    minBudgetValue = maxBudgetValue;
  }

  self->_balance = minBudgetValue;
  if (budget)
  {
    v8 = +[NSDate now];
    lastModulatedDate = self->_lastModulatedDate;
    self->_lastModulatedDate = v8;
  }

  return (balance > 0.0) ^ (minBudgetValue > 0.0);
}

- (void)decrementBy:(double)by
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(_DASBudget *)self unlockedDecrementBy:0 whileModulatingBudget:by];
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    callback = self->_callback;
    if (callback)
    {
      v7 = *(callback + 2);

      v7();
    }
  }
}

- (void)setBalance:(double)balance
{
  os_unfair_lock_lock(&self->_lock);
  balance = [(_DASBudget *)self unlockedDecrementBy:1 whileModulatingBudget:self->_balance - balance];
  os_unfair_lock_unlock(&self->_lock);
  if (balance)
  {
    callback = self->_callback;
    if (callback)
    {
      v7 = *(callback + 2);

      v7();
    }
  }
}

- (void)setCapacity:(double)capacity
{
  os_unfair_lock_lock(&self->_lock);
  v5 = capacity * -1.2;
  balance = self->_balance;
  if (capacity * 1.5 < balance)
  {
    balance = capacity * 1.5;
  }

  self->_maxBudgetValue = capacity * 1.5;
  self->_minBudgetValue = v5;
  if (v5 >= balance)
  {
    v7 = capacity * -1.2;
  }

  else
  {
    v7 = balance;
  }

  self->_capacity = capacity;
  self->_balance = v7;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setAllocationType:(unsigned __int8)type
{
  os_unfair_lock_lock(&self->_lock);
  self->_allocationType = type;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      name = self->_name;
      name = [(_DASBudget *)equalCopy name];
      v7 = [(NSString *)name isEqual:name];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)description
{
  v3 = [(NSString *)self->_name isEqualToString:@"com.apple.dasd.remoteWidget"];
  name = self->_name;
  capacity = self->_capacity;
  if (v3)
  {
    [NSString stringWithFormat:@"<_DASBudget %@: %12.2lf/%12.2lf Last Modulated: %@>", name, *&self->_balance, *&capacity, self->_lastModulatedDate];
  }

  else
  {
    [NSString stringWithFormat:@"<_DASBudget %@: %12.2lf/%12.2lf>", name, *&self->_balance, *&capacity, v8];
  }
  v6 = ;

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeDouble:@"capacity" forKey:self->_capacity];
  [coderCopy encodeDouble:@"balance" forKey:self->_balance];
  [coderCopy encodeInteger:self->_allocationType forKey:@"type"];
  lastModulatedDate = self->_lastModulatedDate;
  if (lastModulatedDate)
  {
    [(NSDate *)lastModulatedDate timeIntervalSinceReferenceDate];
  }

  else
  {
    v5 = 0.0;
  }

  [coderCopy encodeDouble:@"lastModulatedDateInterval" forKey:v5];
}

- (_DASBudget)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  [coderCopy decodeDoubleForKey:@"capacity"];
  v7 = v6;
  v8 = [coderCopy decodeIntegerForKey:@"type"];
  v9 = 0;
  if (v5 && v7 != 0.0)
  {
    v10 = v8;
    [coderCopy decodeDoubleForKey:@"balance"];
    v12 = v11;
    [coderCopy decodeDoubleForKey:@"lastModulatedDateInterval"];
    if (v13 <= 0.0)
    {
      v17 = objc_alloc(objc_opt_class());
      if (v12 == 0.0)
      {
        v18 = v7;
      }

      else
      {
        v18 = v12;
      }

      v9 = [v17 initWithName:v5 capacity:v10 balance:0 allocationType:v7 lastModulatedDate:v18];
    }

    else
    {
      v14 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      v15 = objc_alloc(objc_opt_class());
      if (v12 == 0.0)
      {
        v16 = v7;
      }

      else
      {
        v16 = v12;
      }

      v9 = [v15 initWithName:v5 capacity:v10 balance:v14 allocationType:v7 lastModulatedDate:v16];
    }
  }

  return v9;
}

@end