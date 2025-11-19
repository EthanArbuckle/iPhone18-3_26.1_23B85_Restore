@interface ActionStats
- (ActionStats)init;
- (ActionStats)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (ActionStats)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ActionStats;
  v4 = [(ActionStats *)&v6 init];
  if (v4)
  {
    -[ActionStats setCount:](v4, "setCount:", [a3 decodeIntForKey:@"count"]);
    [a3 decodeDoubleForKey:@"rewardMean"];
    [(ActionStats *)v4 setRewardMean:?];
    [a3 decodeDoubleForKey:@"index"];
    [(ActionStats *)v4 setIndex:?];
    -[ActionStats setIndexValid:](v4, "setIndexValid:", [a3 decodeBoolForKey:@"indexValid"]);
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt:-[ActionStats count](self forKey:{"count"), @"count"}];
  [(ActionStats *)self rewardMean];
  [a3 encodeDouble:@"rewardMean" forKey:?];
  [(ActionStats *)self index];
  [a3 encodeDouble:@"index" forKey:?];
  v5 = [(ActionStats *)self indexValid];

  [a3 encodeBool:v5 forKey:@"indexValid"];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ActionStats;
  [(ActionStats *)&v2 dealloc];
}

@end