@interface SDShareSheetProxySection
- (SDShareSheetProxySection)initWithType:(int64_t)a3 proxies:(id)a4;
- (id)description;
@end

@implementation SDShareSheetProxySection

- (SDShareSheetProxySection)initWithType:(int64_t)a3 proxies:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = SDShareSheetProxySection;
  v7 = [(SDShareSheetProxySection *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = a3;
    v9 = [v6 copy];
    proxies = v8->_proxies;
    v8->_proxies = v9;
  }

  return v8;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = SDShareSheetProxySection;
  v3 = [(SDShareSheetProxySection *)&v8 description];
  type = self->_type;
  if (type > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&off_1008D1B68 + type);
  }

  v6 = [NSString stringWithFormat:@"%@ type:%@ initialBatchSize:%ld proxiesCount:%lu", v3, v5, self->_initialBatchSize, [(NSArray *)self->_proxies count]];

  return v6;
}

@end