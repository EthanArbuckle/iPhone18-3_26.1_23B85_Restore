@interface ActionStats
- (ActionStats)init;
- (ActionStats)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ActionStats

- (ActionStats)init
{
  v5.receiver = self;
  v5.super_class = ActionStats;
  v2 = [(ActionStats *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ActionStats *)v2 setCount:0];
    [(ActionStats *)v3 setRewardMean:0.0];
    [(ActionStats *)v3 setIndex:INFINITY];
    [(ActionStats *)v3 setIndexValid:0];
  }

  return v3;
}

- (ActionStats)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ActionStats;
  v4 = [(ActionStats *)&v6 init];
  if (v4)
  {
    -[ActionStats setCount:](v4, "setCount:", [coder decodeIntForKey:@"count"]);
    [coder decodeDoubleForKey:@"rewardMean"];
    [(ActionStats *)v4 setRewardMean:?];
    [coder decodeDoubleForKey:@"index"];
    [(ActionStats *)v4 setIndex:?];
    -[ActionStats setIndexValid:](v4, "setIndexValid:", [coder decodeBoolForKey:@"indexValid"]);
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt:-[ActionStats count](self forKey:{"count"), @"count"}];
  [(ActionStats *)self rewardMean];
  [coder encodeDouble:@"rewardMean" forKey:?];
  [(ActionStats *)self index];
  [coder encodeDouble:@"index" forKey:?];
  indexValid = [(ActionStats *)self indexValid];

  [coder encodeBool:indexValid forKey:@"indexValid"];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ActionStats;
  [(ActionStats *)&v2 dealloc];
}

@end