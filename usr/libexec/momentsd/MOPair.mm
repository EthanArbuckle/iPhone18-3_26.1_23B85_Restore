@interface MOPair
- (MOPair)initWithCoder:(id)a3;
- (MOPair)initWithFirstObject:(id)a3 secondObject:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOPair

- (MOPair)initWithFirstObject:(id)a3 secondObject:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MOPair;
  v9 = [(MOPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_firstObject, a3);
    objc_storeStrong(&v10->_secondObject, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MOPair *)self firstObject];
  v6 = [(MOPair *)self secondObject];
  v7 = [v4 initWithFirstObject:v5 secondObject:v6];

  return v7;
}

- (MOPair)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MOPair *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"firstObject"];
    [(MOPair *)v5 setFirstObject:v6];

    v7 = [v4 decodeObjectForKey:@"secondObject"];
    [(MOPair *)v5 setSecondObject:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MOPair *)self firstObject];
  [v4 encodeObject:v5 forKey:@"firstObject"];

  v6 = [(MOPair *)self secondObject];
  [v4 encodeObject:v6 forKey:@"secondObject"];
}

- (id)description
{
  v3 = [(MOPair *)self firstObject];
  v4 = [(MOPair *)self secondObject];
  v5 = [NSString stringWithFormat:@"Pair: firstObject, %@, secondObject, %@", v3, v4];

  return v5;
}

@end