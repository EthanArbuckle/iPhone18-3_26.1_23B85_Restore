@interface MOEventLifeEvents
+ (id)descriptionOfLifeEventCategory:(unint64_t)category;
- (MOEventLifeEvents)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOEventLifeEvents

- (void)encodeWithCoder:(id)coder
{
  lifeEventCategory = self->_lifeEventCategory;
  coderCopy = coder;
  [coderCopy encodeInteger:lifeEventCategory forKey:@"lifeEventCategory"];
  confidenceScore = self->_confidenceScore;
  *&confidenceScore = confidenceScore;
  [coderCopy encodeFloat:@"confidenceScore" forKey:confidenceScore];
}

- (MOEventLifeEvents)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = MOEventLifeEvents;
  v5 = [(MOEventLifeEvents *)&v8 init];
  if (v5)
  {
    v5->_lifeEventCategory = [coderCopy decodeIntegerForKey:@"lifeEventCategory"];
    [coderCopy decodeFloatForKey:@"confidenceScore"];
    v5->_confidenceScore = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(MOEventLifeEvents);
  *(result + 1) = self->_lifeEventCategory;
  *(result + 2) = *&self->_confidenceScore;
  return result;
}

+ (id)descriptionOfLifeEventCategory:(unint64_t)category
{
  if (category > 4)
  {
    return @"Invalid";
  }

  else
  {
    return *(&off_10033D4B8 + category);
  }
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = [MOEventLifeEvents descriptionOfLifeEventCategory:self->_lifeEventCategory];
  v5 = [v3 initWithFormat:@"life event category, %@, confidence score, %f", v4, *&self->_confidenceScore];

  return v5;
}

@end