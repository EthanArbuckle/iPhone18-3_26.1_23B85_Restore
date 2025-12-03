@interface MOMediaStats
- (MOMediaStats)initWithKeyword:(id)keyword value:(double)value;
- (id)description;
@end

@implementation MOMediaStats

- (MOMediaStats)initWithKeyword:(id)keyword value:(double)value
{
  keywordCopy = keyword;
  v14.receiver = self;
  v14.super_class = MOMediaStats;
  v8 = [(MOMediaStats *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_keyword, keyword);
    v9->_value = value;
    v10 = objc_opt_new();
    members = v9->_members;
    v9->_members = v10;

    bundleId = v9->_bundleId;
    v9->_bundleId = 0;
  }

  return v9;
}

- (id)description
{
  v3 = [MOMediaPlaySession redactString:self->_keyword];
  v4 = [NSString stringWithFormat:@"keyword, %@, value, %f, memeber.count, %lu", v3, *&self->_value, [(NSMutableArray *)self->_members count]];

  return v4;
}

@end