@interface keyDataObject
- (double)valueDouble:(int64_t)a3;
- (id)valueStr:(int64_t)a3;
- (keyDataObject)initWith:(id)a3;
- (keyDataObject)initWithT:(id)a3;
- (void)addToTimeArray:(double)a3 idx:(int64_t)a4;
- (void)addToValueArray:(id)a3 idx:(int64_t)a4;
@end

@implementation keyDataObject

- (keyDataObject)initWith:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = keyDataObject;
  v5 = [(keyDataObject *)&v11 init];
  if (v5)
  {
    v6 = [NSString stringWithString:v4];
    keyString = v5->keyString;
    v5->keyString = v6;

    v8 = objc_opt_new();
    valueArray = v5->valueArray;
    v5->valueArray = v8;

    v5->type = 1;
  }

  return v5;
}

- (keyDataObject)initWithT:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = keyDataObject;
  v5 = [(keyDataObject *)&v11 init];
  if (v5)
  {
    v6 = [NSString stringWithString:v4];
    keyString = v5->keyString;
    v5->keyString = v6;

    v8 = objc_opt_new();
    valueArray = v5->valueArray;
    v5->valueArray = v8;

    v5->type = 2;
  }

  return v5;
}

- (id)valueStr:(int64_t)a3
{
  if (self->type == 1)
  {
    if ([(NSMutableArray *)self->valueArray count]<= a3)
    {
      v6 = 0;
    }

    else
    {
      v6 = [(NSMutableArray *)self->valueArray objectAtIndex:a3];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)valueDouble:(int64_t)a3
{
  if (self->type != 2 || [(NSMutableArray *)self->valueArray count]<= a3)
  {
    return -1.0;
  }

  v5 = [(NSMutableArray *)self->valueArray objectAtIndex:a3];
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)addToValueArray:(id)a3 idx:(int64_t)a4
{
  v5 = [NSString stringWithString:a3, a4];
  [(NSMutableArray *)self->valueArray addObject:v5];
}

- (void)addToTimeArray:(double)a3 idx:(int64_t)a4
{
  v5 = [NSNumber numberWithDouble:a4, a3];
  [(NSMutableArray *)self->valueArray addObject:v5];
}

@end