@interface MOPair
- (MOPair)initWithCoder:(id)coder;
- (MOPair)initWithFirstObject:(id)object secondObject:(id)secondObject;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOPair

- (MOPair)initWithFirstObject:(id)object secondObject:(id)secondObject
{
  objectCopy = object;
  secondObjectCopy = secondObject;
  v12.receiver = self;
  v12.super_class = MOPair;
  v9 = [(MOPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_firstObject, object);
    objc_storeStrong(&v10->_secondObject, secondObject);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  firstObject = [(MOPair *)self firstObject];
  secondObject = [(MOPair *)self secondObject];
  v7 = [v4 initWithFirstObject:firstObject secondObject:secondObject];

  return v7;
}

- (MOPair)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MOPair *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"firstObject"];
    [(MOPair *)v5 setFirstObject:v6];

    v7 = [coderCopy decodeObjectForKey:@"secondObject"];
    [(MOPair *)v5 setSecondObject:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  firstObject = [(MOPair *)self firstObject];
  [coderCopy encodeObject:firstObject forKey:@"firstObject"];

  secondObject = [(MOPair *)self secondObject];
  [coderCopy encodeObject:secondObject forKey:@"secondObject"];
}

- (id)description
{
  firstObject = [(MOPair *)self firstObject];
  secondObject = [(MOPair *)self secondObject];
  v5 = [NSString stringWithFormat:@"Pair: firstObject, %@, secondObject, %@", firstObject, secondObject];

  return v5;
}

@end