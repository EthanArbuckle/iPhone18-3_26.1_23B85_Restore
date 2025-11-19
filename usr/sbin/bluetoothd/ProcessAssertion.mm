@interface ProcessAssertion
- (id)description;
@end

@implementation ProcessAssertion

- (id)description
{
  v3 = [(ProcessAssertion *)self name];
  v4 = [NSString stringWithFormat:@"%@ - %lus", v3, [(ProcessAssertion *)self secondsLeft]];

  return v4;
}

@end