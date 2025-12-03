@interface ProcessAssertion
- (id)description;
@end

@implementation ProcessAssertion

- (id)description
{
  name = [(ProcessAssertion *)self name];
  v4 = [NSString stringWithFormat:@"%@ - %lus", name, [(ProcessAssertion *)self secondsLeft]];

  return v4;
}

@end