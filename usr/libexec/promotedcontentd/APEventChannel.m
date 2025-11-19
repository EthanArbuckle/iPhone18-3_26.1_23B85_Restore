@interface APEventChannel
+ (id)unused;
- (APEventChannel)initWithCoder:(id)a3;
- (APEventChannel)initWithDestination:(id)a3 purpose:(int64_t)a4;
- (APProtectedEventChannel)protectedEventChannel;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEventChannel:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APEventChannel

- (unint64_t)hash
{
  v3 = [(APEventChannel *)self destination];
  v4 = [v3 hash];
  v5 = [(APEventChannel *)self purpose];

  return v5 ^ v4;
}

+ (id)unused
{
  if (qword_1004E6D30 != -1)
  {
    sub_10039467C();
  }

  v3 = qword_1004E6D28;

  return v3;
}

- (APEventChannel)initWithDestination:(id)a3 purpose:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = APEventChannel;
  v8 = [(APEventChannel *)&v11 init];
  if (v8)
  {
    if (!v7 || !isExternalPurpose())
    {
      v9 = 0;
      goto LABEL_7;
    }

    objc_storeStrong(&v8->_destination, a3);
    v8->_purpose = a4;
  }

  v9 = v8;
LABEL_7:

  return v9;
}

- (APProtectedEventChannel)protectedEventChannel
{
  v3 = [APProtectedEventChannel alloc];
  v4 = [(APEventChannel *)self destination];
  v5 = [(APProtectedEventChannel *)v3 initWithDestination:v4 purpose:[(APEventChannel *)self purpose]];

  return v5;
}

- (BOOL)isEqualToEventChannel:(id)a3
{
  v4 = a3;
  v5 = [(APEventChannel *)self destination];
  v6 = [v4 destination];
  if ([v5 isEqualToDestination:v6])
  {
    v7 = [(APEventChannel *)self purpose];
    v8 = v7 == [v4 purpose];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (self == v4)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(APEventChannel *)self isEqualToEventChannel:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (id)description
{
  v3 = [(APEventChannel *)self destination];
  v4 = [NSNumber numberWithInteger:[(APEventChannel *)self purpose]];
  v5 = [NSString stringWithFormat:@"%@/%@", v3, v4];

  return v5;
}

- (APEventChannel)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = APEventChannel;
  v5 = [(APEventChannel *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"destination"];
    destination = v5->_destination;
    v5->_destination = v6;

    v5->_purpose = [v4 decodeIntegerForKey:@"purpose"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(APEventChannel *)self destination];
  [v5 encodeObject:v4 forKey:@"destination"];

  [v5 encodeInteger:-[APEventChannel purpose](self forKey:{"purpose"), @"purpose"}];
}

@end