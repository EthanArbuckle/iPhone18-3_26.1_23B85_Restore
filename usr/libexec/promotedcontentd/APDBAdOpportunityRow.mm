@interface APDBAdOpportunityRow
- (APDBAdOpportunityRow)initWithIdentifier:(id)identifier placement:(int64_t)placement table:(id)table;
- (int64_t)placement;
- (void)setPlacement:(int64_t)placement;
@end

@implementation APDBAdOpportunityRow

- (APDBAdOpportunityRow)initWithIdentifier:(id)identifier placement:(int64_t)placement table:(id)table
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = APDBAdOpportunityRow;
  v9 = [(APDBAdOpportunityRow *)&v14 initAsNewObjectWithTable:table];
  v10 = v9;
  if (v9)
  {
    [(APDBAdOpportunityRow *)v9 setValue:identifierCopy forColumnName:@"identifier"];
    v11 = [NSNumber numberWithInteger:placement];
    [(APDBAdOpportunityRow *)v10 setValue:v11 forColumnName:@"placement"];

    v12 = +[NSDate now];
    [(APDBAdOpportunityRow *)v10 setValue:v12 forColumnName:@"received"];
  }

  return v10;
}

- (int64_t)placement
{
  v2 = [(APDBAdOpportunityRow *)self valueForColumnName:@"placement"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setPlacement:(int64_t)placement
{
  v4 = [NSNumber numberWithInteger:placement];
  [(APDBAdOpportunityRow *)self setValue:v4 forColumnName:@"placement"];
}

@end