@interface _DASBudget
- (BOOL)isEqual:(id)a3;
- (BOOL)unlockedDecrementBy:(double)a3 whileModulatingBudget:(BOOL)a4;
- (_DASBudget)initWithCoder:(id)a3;
- (_DASBudget)initWithDictionary:(id)a3;
- (_DASBudget)initWithName:(id)a3 capacity:(double)a4 balance:(double)a5 allocationType:(unsigned __int8)a6 lastModulatedDate:(id)a7;
- (id)description;
- (id)dictionaryRepresentation;
- (void)decrementBy:(double)a3;
- (void)encodeWithCoder:(id)a3;
- (void)registerSignificantBudgetChangeCallback:(id)a3;
- (void)setAllocationType:(unsigned __int8)a3;
- (void)setBalance:(double)a3;
- (void)setCapacity:(double)a3;
@end

@implementation _DASBudget

- (_DASBudget)initWithName:(id)a3 capacity:(double)a4 balance:(double)a5 allocationType:(unsigned __int8)a6 lastModulatedDate:(id)a7
{
  v12 = a3;
  v13 = a7;
  v18.receiver = self;
  v18.super_class = _DASBudget;
  v14 = [(_DASBudget *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_name, a3);
    v15->_capacity = a4;
    v15->_balance = a5;
    v15->_allocationType = a6;
    objc_storeStrong(&v15->_lastModulatedDate, a7);
    *&v15->_maxBudgetValue = vmulq_n_f64(xmmword_100158810, a4);
    v15->_lock._os_unfair_lock_opaque = 0;
  }

  return v15;
}

- (_DASBudget)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"name"];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 objectForKeyedSubscript:@"capacity"];
    if (!v7)
    {
      v9 = 0;
LABEL_12:

      goto LABEL_13;
    }

    v8 = v7;
    v9 = [v4 objectForKeyedSubscript:@"balance"];
    if (!v9)
    {
LABEL_11:

      goto LABEL_12;
    }

    v10 = [v4 objectForKeyedSubscript:@"allocationType"];

    if (v10)
    {
      v11 = [v4 objectForKeyedSubscript:@"lastModulatedDateInterval"];
      [v11 doubleValue];
      v13 = v12;

      v6 = [v4 objectForKeyedSubscript:@"name"];
      v8 = [v4 objectForKeyedSubscript:@"capacity"];
      [v8 doubleValue];
      v15 = v14;
      v16 = [v4 objectForKeyedSubscript:@"balance"];
      [v16 doubleValue];
      v18 = v17;
      v19 = [v4 objectForKeyedSubscript:@"allocationType"];
      v20 = [v19 intValue];
      v21 = v20;
      if (v13 <= 0.0)
      {
        self = [(_DASBudget *)self initWithName:v6 capacity:v20 balance:0 allocationType:v15 lastModulatedDate:v18];
      }

      else
      {
        v22 = [NSDate dateWithTimeIntervalSinceReferenceDate:v13];
        self = [(_DASBudget *)self initWithName:v6 capacity:v21 balance:v22 allocationType:v15 lastModulatedDate:v18];
      }

      v9 = self;
      goto LABEL_11;
    }
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(_DASBudget *)self name];
  [v3 setObject:v4 forKeyedSubscript:@"name"];

  [(_DASBudget *)self capacity];
  v5 = [NSNumber numberWithDouble:?];
  [v3 setObject:v5 forKeyedSubscript:@"capacity"];

  [(_DASBudget *)self balance];
  v6 = [NSNumber numberWithDouble:?];
  [v3 setObject:v6 forKeyedSubscript:@"balance"];

  v7 = [NSNumber numberWithUnsignedChar:[(_DASBudget *)self allocationType]];
  [v3 setObject:v7 forKeyedSubscript:@"allocationType"];

  v8 = [(_DASBudget *)self lastModulatedDate];

  if (v8)
  {
    v9 = [(_DASBudget *)self lastModulatedDate];
    [v9 timeIntervalSinceReferenceDate];
    v10 = [NSNumber numberWithDouble:?];
    [v3 setObject:v10 forKeyedSubscript:@"lastModulatedDateInterval"];
  }

  v11 = [v3 copy];

  return v11;
}

- (void)registerSignificantBudgetChangeCallback:(id)a3
{
  v4 = objc_retainBlock(a3);
  callback = self->_callback;
  self->_callback = v4;

  _objc_release_x1(v4, callback);
}

- (BOOL)unlockedDecrementBy:(double)a3 whileModulatingBudget:(BOOL)a4
{
  balance = self->_balance;
  maxBudgetValue = balance - a3;
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
  if (a4)
  {
    v8 = +[NSDate now];
    lastModulatedDate = self->_lastModulatedDate;
    self->_lastModulatedDate = v8;
  }

  return (balance > 0.0) ^ (minBudgetValue > 0.0);
}

- (void)decrementBy:(double)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(_DASBudget *)self unlockedDecrementBy:0 whileModulatingBudget:a3];
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

- (void)setBalance:(double)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(_DASBudget *)self unlockedDecrementBy:1 whileModulatingBudget:self->_balance - a3];
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

- (void)setCapacity:(double)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = a3 * -1.2;
  balance = self->_balance;
  if (a3 * 1.5 < balance)
  {
    balance = a3 * 1.5;
  }

  self->_maxBudgetValue = a3 * 1.5;
  self->_minBudgetValue = v5;
  if (v5 >= balance)
  {
    v7 = a3 * -1.2;
  }

  else
  {
    v7 = balance;
  }

  self->_capacity = a3;
  self->_balance = v7;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setAllocationType:(unsigned __int8)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_allocationType = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      name = self->_name;
      v6 = [(_DASBudget *)v4 name];
      v7 = [(NSString *)name isEqual:v6];
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

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_name forKey:@"name"];
  [v6 encodeDouble:@"capacity" forKey:self->_capacity];
  [v6 encodeDouble:@"balance" forKey:self->_balance];
  [v6 encodeInteger:self->_allocationType forKey:@"type"];
  lastModulatedDate = self->_lastModulatedDate;
  if (lastModulatedDate)
  {
    [(NSDate *)lastModulatedDate timeIntervalSinceReferenceDate];
  }

  else
  {
    v5 = 0.0;
  }

  [v6 encodeDouble:@"lastModulatedDateInterval" forKey:v5];
}

- (_DASBudget)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  [v4 decodeDoubleForKey:@"capacity"];
  v7 = v6;
  v8 = [v4 decodeIntegerForKey:@"type"];
  v9 = 0;
  if (v5 && v7 != 0.0)
  {
    v10 = v8;
    [v4 decodeDoubleForKey:@"balance"];
    v12 = v11;
    [v4 decodeDoubleForKey:@"lastModulatedDateInterval"];
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