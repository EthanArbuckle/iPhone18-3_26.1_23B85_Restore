@interface SDShareSheetProxyLoaderChangeDetails
- (NSArray)changedProxySections;
- (SDShareSheetProxyLoaderChangeDetails)init;
- (id)failedIndexesForProxySection:(id)a3;
- (id)loadedIndexesForProxySection:(id)a3;
- (void)addResult:(id)a3 forProxySection:(id)a4;
@end

@implementation SDShareSheetProxyLoaderChangeDetails

- (SDShareSheetProxyLoaderChangeDetails)init
{
  v8.receiver = self;
  v8.super_class = SDShareSheetProxyLoaderChangeDetails;
  v2 = [(SDShareSheetProxyLoaderChangeDetails *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    proxySections = v2->_proxySections;
    v2->_proxySections = v3;

    v5 = +[NSMutableDictionary dictionary];
    resultsBySectionType = v2->_resultsBySectionType;
    v2->_resultsBySectionType = v5;
  }

  return v2;
}

- (NSArray)changedProxySections
{
  v2 = [(SDShareSheetProxyLoaderChangeDetails *)self proxySections];
  v3 = [v2 copy];

  return v3;
}

- (void)addResult:(id)a3 forProxySection:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (v11)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1001BD930(a2, self);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  sub_1001BD9AC(a2, self);
LABEL_3:
  v8 = [(SDShareSheetProxyLoaderChangeDetails *)self resultsBySectionType];
  v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 type]);
  [v8 setObject:v11 forKeyedSubscript:v9];

  v10 = [(SDShareSheetProxyLoaderChangeDetails *)self proxySections];
  [v10 addObject:v7];
}

- (id)loadedIndexesForProxySection:(id)a3
{
  v4 = a3;
  v5 = [(SDShareSheetProxyLoaderChangeDetails *)self resultsBySectionType];
  v6 = [v4 type];

  v7 = [NSNumber numberWithInteger:v6];
  v8 = [v5 objectForKeyedSubscript:v7];

  v9 = [v8 loadedIndexes];

  return v9;
}

- (id)failedIndexesForProxySection:(id)a3
{
  v4 = a3;
  v5 = [(SDShareSheetProxyLoaderChangeDetails *)self resultsBySectionType];
  v6 = [v4 type];

  v7 = [NSNumber numberWithInteger:v6];
  v8 = [v5 objectForKeyedSubscript:v7];

  v9 = [v8 failedIndexes];

  return v9;
}

@end