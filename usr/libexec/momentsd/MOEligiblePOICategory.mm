@interface MOEligiblePOICategory
- (BOOL)isEqual:(id)equal;
- (MOEligiblePOICategory)initWithCoder:(id)coder;
- (MOEligiblePOICategory)initWithIdentifier:(id)identifier category:(id)category;
- (MOEligiblePOICategory)initWithPOICategoryMO:(id)o;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOEligiblePOICategory

- (MOEligiblePOICategory)initWithIdentifier:(id)identifier category:(id)category
{
  identifierCopy = identifier;
  categoryCopy = category;
  v12.receiver = self;
  v12.super_class = MOEligiblePOICategory;
  v9 = [(MOEligiblePOICategory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_category, category);
  }

  return v10;
}

- (id)description
{
  identifier = [(MOEligiblePOICategory *)self identifier];
  category = [(MOEligiblePOICategory *)self category];
  v5 = [NSString stringWithFormat:@"<Eligible poi category ID, %@, category, %@>", identifier, category];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_category forKey:@"category"];
}

- (MOEligiblePOICategory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"category"];

  v7 = [(MOEligiblePOICategory *)self initWithIdentifier:v5 category:v6];
  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MOEligiblePOICategory alloc];
  identifier = [(MOEligiblePOICategory *)self identifier];
  category = [(MOEligiblePOICategory *)self category];
  v7 = [(MOEligiblePOICategory *)v4 initWithIdentifier:identifier category:category];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      category = [(MOEligiblePOICategory *)self category];
      category2 = [(MOEligiblePOICategory *)v5 category];

      v8 = [category isEqual:category2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (MOEligiblePOICategory)initWithPOICategoryMO:(id)o
{
  if (o)
  {
    oCopy = o;
    identifier = [oCopy identifier];
    category = [oCopy category];

    self = [(MOEligiblePOICategory *)self initWithIdentifier:identifier category:category];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end