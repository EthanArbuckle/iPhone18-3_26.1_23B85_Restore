@interface APDBAdCandidateRow
- (APDBAdCandidateRow)initWithID:(id)d opportunity_id:(id)opportunity_id unit_id:(id)unit_id rank:(int64_t)rank table:(id)table;
- (int64_t)impression_type;
- (int64_t)rank;
- (int64_t)state;
- (void)setImpression_type:(int64_t)impression_type;
- (void)setRank:(int64_t)rank;
- (void)setState:(int64_t)state;
@end

@implementation APDBAdCandidateRow

- (APDBAdCandidateRow)initWithID:(id)d opportunity_id:(id)opportunity_id unit_id:(id)unit_id rank:(int64_t)rank table:(id)table
{
  dCopy = d;
  opportunity_idCopy = opportunity_id;
  unit_idCopy = unit_id;
  v20.receiver = self;
  v20.super_class = APDBAdCandidateRow;
  v15 = [(APDBAdCandidateRow *)&v20 initAsNewObjectWithTable:table];
  v16 = v15;
  if (v15)
  {
    [(APDBAdCandidateRow *)v15 setValue:dCopy forColumnName:@"identifier"];
    [(APDBAdCandidateRow *)v16 setValue:opportunity_idCopy forColumnName:@"opportunity_id"];
    [(APDBAdCandidateRow *)v16 setValue:unit_idCopy forColumnName:@"unit_id"];
    v17 = [NSNumber numberWithInteger:rank];
    [(APDBAdCandidateRow *)v16 setValue:v17 forColumnName:@"rank"];

    [(APDBAdCandidateRow *)v16 setValue:&off_100493498 forColumnName:@"state"];
    [(APDBAdCandidateRow *)v16 setValue:&off_100493498 forColumnName:@"impression_type"];
    v18 = +[NSDate now];
    [(APDBAdCandidateRow *)v16 setValue:v18 forColumnName:@"received"];
  }

  return v16;
}

- (int64_t)rank
{
  v2 = [(APDBAdCandidateRow *)self valueForColumnName:@"rank"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setRank:(int64_t)rank
{
  v4 = [NSNumber numberWithInteger:rank];
  [(APDBAdCandidateRow *)self setValue:v4 forColumnName:@"rank"];
}

- (int64_t)state
{
  v2 = [(APDBAdCandidateRow *)self valueForColumnName:@"state"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setState:(int64_t)state
{
  v4 = [NSNumber numberWithInteger:state];
  [(APDBAdCandidateRow *)self setValue:v4 forColumnName:@"state"];
}

- (int64_t)impression_type
{
  v2 = [(APDBAdCandidateRow *)self valueForColumnName:@"impression_type"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setImpression_type:(int64_t)impression_type
{
  v4 = [NSNumber numberWithInteger:impression_type];
  [(APDBAdCandidateRow *)self setValue:v4 forColumnName:@"impression_type"];
}

@end