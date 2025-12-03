@interface APEventChannel
+ (id)unused;
- (APEventChannel)initWithCoder:(id)coder;
- (APEventChannel)initWithDestination:(id)destination purpose:(int64_t)purpose;
- (APProtectedEventChannel)protectedEventChannel;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEventChannel:(id)channel;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APEventChannel

- (unint64_t)hash
{
  destination = [(APEventChannel *)self destination];
  v4 = [destination hash];
  purpose = [(APEventChannel *)self purpose];

  return purpose ^ v4;
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

- (APEventChannel)initWithDestination:(id)destination purpose:(int64_t)purpose
{
  destinationCopy = destination;
  v11.receiver = self;
  v11.super_class = APEventChannel;
  v8 = [(APEventChannel *)&v11 init];
  if (v8)
  {
    if (!destinationCopy || !isExternalPurpose())
    {
      v9 = 0;
      goto LABEL_7;
    }

    objc_storeStrong(&v8->_destination, destination);
    v8->_purpose = purpose;
  }

  v9 = v8;
LABEL_7:

  return v9;
}

- (APProtectedEventChannel)protectedEventChannel
{
  v3 = [APProtectedEventChannel alloc];
  destination = [(APEventChannel *)self destination];
  v5 = [(APProtectedEventChannel *)v3 initWithDestination:destination purpose:[(APEventChannel *)self purpose]];

  return v5;
}

- (BOOL)isEqualToEventChannel:(id)channel
{
  channelCopy = channel;
  destination = [(APEventChannel *)self destination];
  destination2 = [channelCopy destination];
  if ([destination isEqualToDestination:destination2])
  {
    purpose = [(APEventChannel *)self purpose];
    v8 = purpose == [channelCopy purpose];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
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
  destination = [(APEventChannel *)self destination];
  v4 = [NSNumber numberWithInteger:[(APEventChannel *)self purpose]];
  v5 = [NSString stringWithFormat:@"%@/%@", destination, v4];

  return v5;
}

- (APEventChannel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = APEventChannel;
  v5 = [(APEventChannel *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destination"];
    destination = v5->_destination;
    v5->_destination = v6;

    v5->_purpose = [coderCopy decodeIntegerForKey:@"purpose"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  destination = [(APEventChannel *)self destination];
  [coderCopy encodeObject:destination forKey:@"destination"];

  [coderCopy encodeInteger:-[APEventChannel purpose](self forKey:{"purpose"), @"purpose"}];
}

@end