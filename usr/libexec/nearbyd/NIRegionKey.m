@interface NIRegionKey
- (BOOL)isEqual:(id)a3;
- (NIRegionKey)initWithName:(id)a3 regionSizeCategory:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation NIRegionKey

- (NIRegionKey)initWithName:(id)a3 regionSizeCategory:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = NIRegionKey;
  v8 = [(NIRegionKey *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_regionName, a3);
    v9->_regionSizeCategory = a4;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  regionName = self->_regionName;
  regionSizeCategory = self->_regionSizeCategory;

  return [v4 initWithName:regionName regionSizeCategory:regionSizeCategory];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (v5 == self)
    {
      v9 = 1;
    }

    else
    {
      regionSizeCategory = self->_regionSizeCategory;
      if (regionSizeCategory == [(NIRegionKey *)v5 regionSizeCategory])
      {
        v8 = [(NIRegionKey *)v6 regionName];
        v9 = [v8 isEqualToString:self->_regionName];
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  regionName = self->_regionName;
  v6 = sub_1002D6258(self->_regionSizeCategory);
  v7 = [NSString stringWithFormat:@"(%@: name:%@ regionCategory:%@)", v4, regionName, v6];

  return v7;
}

@end