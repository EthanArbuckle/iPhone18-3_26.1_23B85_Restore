@interface APProtectedEventChannel
- (APProtectedEventChannel)initWithDestination:(id)destination purpose:(int64_t)purpose;
- (id)description;
@end

@implementation APProtectedEventChannel

- (APProtectedEventChannel)initWithDestination:(id)destination purpose:(int64_t)purpose
{
  destinationCopy = destination;
  v11.receiver = self;
  v11.super_class = APProtectedEventChannel;
  v7 = [(APProtectedEventChannel *)&v11 init];
  if (v7)
  {
    protectedDestination = [destinationCopy protectedDestination];
    destination = v7->_destination;
    v7->_destination = protectedDestination;

    v7->_purpose = purpose;
  }

  return v7;
}

- (id)description
{
  destination = [(APProtectedEventChannel *)self destination];
  v4 = [NSNumber numberWithInteger:[(APProtectedEventChannel *)self purpose]];
  v5 = [NSString stringWithFormat:@"%@/%@", destination, v4];

  return v5;
}

@end