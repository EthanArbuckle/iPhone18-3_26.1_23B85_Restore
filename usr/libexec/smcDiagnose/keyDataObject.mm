@interface keyDataObject
- (double)valueDouble:(int64_t)double;
- (id)valueStr:(int64_t)str;
- (keyDataObject)initWith:(id)with;
- (keyDataObject)initWithT:(id)t;
- (void)addToTimeArray:(double)array idx:(int64_t)idx;
- (void)addToValueArray:(id)array idx:(int64_t)idx;
@end

@implementation keyDataObject

- (keyDataObject)initWith:(id)with
{
  withCopy = with;
  v11.receiver = self;
  v11.super_class = keyDataObject;
  v5 = [(keyDataObject *)&v11 init];
  if (v5)
  {
    v6 = [NSString stringWithString:withCopy];
    keyString = v5->keyString;
    v5->keyString = v6;

    v8 = objc_opt_new();
    valueArray = v5->valueArray;
    v5->valueArray = v8;

    v5->type = 1;
  }

  return v5;
}

- (keyDataObject)initWithT:(id)t
{
  tCopy = t;
  v11.receiver = self;
  v11.super_class = keyDataObject;
  v5 = [(keyDataObject *)&v11 init];
  if (v5)
  {
    v6 = [NSString stringWithString:tCopy];
    keyString = v5->keyString;
    v5->keyString = v6;

    v8 = objc_opt_new();
    valueArray = v5->valueArray;
    v5->valueArray = v8;

    v5->type = 2;
  }

  return v5;
}

- (id)valueStr:(int64_t)str
{
  if (self->type == 1)
  {
    if ([(NSMutableArray *)self->valueArray count]<= str)
    {
      v6 = 0;
    }

    else
    {
      v6 = [(NSMutableArray *)self->valueArray objectAtIndex:str];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)valueDouble:(int64_t)double
{
  if (self->type != 2 || [(NSMutableArray *)self->valueArray count]<= double)
  {
    return -1.0;
  }

  v5 = [(NSMutableArray *)self->valueArray objectAtIndex:double];
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)addToValueArray:(id)array idx:(int64_t)idx
{
  v5 = [NSString stringWithString:array, idx];
  [(NSMutableArray *)self->valueArray addObject:v5];
}

- (void)addToTimeArray:(double)array idx:(int64_t)idx
{
  array = [NSNumber numberWithDouble:idx, array];
  [(NSMutableArray *)self->valueArray addObject:array];
}

@end