@interface APDBAdCandidateRow
- (APDBAdCandidateRow)initWithID:(id)a3 opportunity_id:(id)a4 unit_id:(id)a5 rank:(int64_t)a6 table:(id)a7;
- (int64_t)impression_type;
- (int64_t)rank;
- (int64_t)state;
- (void)setImpression_type:(int64_t)a3;
- (void)setRank:(int64_t)a3;
- (void)setState:(int64_t)a3;
@end

@implementation APDBAdCandidateRow

- (APDBAdCandidateRow)initWithID:(id)a3 opportunity_id:(id)a4 unit_id:(id)a5 rank:(int64_t)a6 table:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v20.receiver = self;
  v20.super_class = APDBAdCandidateRow;
  v15 = [(APDBAdCandidateRow *)&v20 initAsNewObjectWithTable:a7];
  v16 = v15;
  if (v15)
  {
    [(APDBAdCandidateRow *)v15 setValue:v12 forColumnName:@"identifier"];
    [(APDBAdCandidateRow *)v16 setValue:v13 forColumnName:@"opportunity_id"];
    [(APDBAdCandidateRow *)v16 setValue:v14 forColumnName:@"unit_id"];
    v17 = [NSNumber numberWithInteger:a6];
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
  v3 = [v2 integerValue];

  return v3;
}

- (void)setRank:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  [(APDBAdCandidateRow *)self setValue:v4 forColumnName:@"rank"];
}

- (int64_t)state
{
  v2 = [(APDBAdCandidateRow *)self valueForColumnName:@"state"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setState:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  [(APDBAdCandidateRow *)self setValue:v4 forColumnName:@"state"];
}

- (int64_t)impression_type
{
  v2 = [(APDBAdCandidateRow *)self valueForColumnName:@"impression_type"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setImpression_type:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  [(APDBAdCandidateRow *)self setValue:v4 forColumnName:@"impression_type"];
}

@end