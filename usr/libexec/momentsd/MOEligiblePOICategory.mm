@interface MOEligiblePOICategory
- (BOOL)isEqual:(id)a3;
- (MOEligiblePOICategory)initWithCoder:(id)a3;
- (MOEligiblePOICategory)initWithIdentifier:(id)a3 category:(id)a4;
- (MOEligiblePOICategory)initWithPOICategoryMO:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOEligiblePOICategory

- (MOEligiblePOICategory)initWithIdentifier:(id)a3 category:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MOEligiblePOICategory;
  v9 = [(MOEligiblePOICategory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_category, a4);
  }

  return v10;
}

- (id)description
{
  v3 = [(MOEligiblePOICategory *)self identifier];
  v4 = [(MOEligiblePOICategory *)self category];
  v5 = [NSString stringWithFormat:@"<Eligible poi category ID, %@, category, %@>", v3, v4];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_category forKey:@"category"];
}

- (MOEligiblePOICategory)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"category"];

  v7 = [(MOEligiblePOICategory *)self initWithIdentifier:v5 category:v6];
  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MOEligiblePOICategory alloc];
  v5 = [(MOEligiblePOICategory *)self identifier];
  v6 = [(MOEligiblePOICategory *)self category];
  v7 = [(MOEligiblePOICategory *)v4 initWithIdentifier:v5 category:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MOEligiblePOICategory *)self category];
      v7 = [(MOEligiblePOICategory *)v5 category];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (MOEligiblePOICategory)initWithPOICategoryMO:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 identifier];
    v6 = [v4 category];

    self = [(MOEligiblePOICategory *)self initWithIdentifier:v5 category:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end