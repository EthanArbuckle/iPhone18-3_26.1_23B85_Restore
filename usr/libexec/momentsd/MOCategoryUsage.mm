@interface MOCategoryUsage
+ (id)descriptionOfAppCategory:(unint64_t)category;
- (MOCategoryUsage)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOCategoryUsage

+ (id)descriptionOfAppCategory:(unint64_t)category
{
  if (category > 0x11)
  {
    return @"Invalid";
  }

  else
  {
    return *(&off_1003389B8 + category);
  }
}

- (void)encodeWithCoder:(id)coder
{
  duration = self->_duration;
  coderCopy = coder;
  [coderCopy encodeObject:duration forKey:@"duration"];
  [coderCopy encodeInteger:self->_appCategory forKey:@"appCategory"];
}

- (MOCategoryUsage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MOCategoryUsage;
  v5 = [(MOCategoryUsage *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"duration"];
    duration = v5->_duration;
    v5->_duration = v6;

    v5->_appCategory = [coderCopy decodeIntegerForKey:@"appCategory"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MOCategoryUsage);
  duration = [(MOCategoryUsage *)self duration];
  [(MOCategoryUsage *)v4 setDuration:duration];

  [(MOCategoryUsage *)v4 setAppCategory:[(MOCategoryUsage *)self appCategory]];
  return v4;
}

- (id)description
{
  v3 = [MOCategoryUsage descriptionOfAppCategory:self->_appCategory];
  [(NSNumber *)self->_duration doubleValue];
  v5 = [NSString stringWithFormat:@"app category, %@, duration, %f", v3, v4];

  return v5;
}

@end