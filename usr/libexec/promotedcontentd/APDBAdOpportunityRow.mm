@interface APDBAdOpportunityRow
- (APDBAdOpportunityRow)initWithIdentifier:(id)a3 placement:(int64_t)a4 table:(id)a5;
- (int64_t)placement;
- (void)setPlacement:(int64_t)a3;
@end

@implementation APDBAdOpportunityRow

- (APDBAdOpportunityRow)initWithIdentifier:(id)a3 placement:(int64_t)a4 table:(id)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = APDBAdOpportunityRow;
  v9 = [(APDBAdOpportunityRow *)&v14 initAsNewObjectWithTable:a5];
  v10 = v9;
  if (v9)
  {
    [(APDBAdOpportunityRow *)v9 setValue:v8 forColumnName:@"identifier"];
    v11 = [NSNumber numberWithInteger:a4];
    [(APDBAdOpportunityRow *)v10 setValue:v11 forColumnName:@"placement"];

    v12 = +[NSDate now];
    [(APDBAdOpportunityRow *)v10 setValue:v12 forColumnName:@"received"];
  }

  return v10;
}

- (int64_t)placement
{
  v2 = [(APDBAdOpportunityRow *)self valueForColumnName:@"placement"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setPlacement:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  [(APDBAdOpportunityRow *)self setValue:v4 forColumnName:@"placement"];
}

@end