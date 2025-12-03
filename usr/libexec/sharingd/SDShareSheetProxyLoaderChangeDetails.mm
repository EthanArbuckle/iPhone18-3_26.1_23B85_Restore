@interface SDShareSheetProxyLoaderChangeDetails
- (NSArray)changedProxySections;
- (SDShareSheetProxyLoaderChangeDetails)init;
- (id)failedIndexesForProxySection:(id)section;
- (id)loadedIndexesForProxySection:(id)section;
- (void)addResult:(id)result forProxySection:(id)section;
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
  proxySections = [(SDShareSheetProxyLoaderChangeDetails *)self proxySections];
  v3 = [proxySections copy];

  return v3;
}

- (void)addResult:(id)result forProxySection:(id)section
{
  resultCopy = result;
  sectionCopy = section;
  if (resultCopy)
  {
    if (sectionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1001BD930(a2, self);
    if (sectionCopy)
    {
      goto LABEL_3;
    }
  }

  sub_1001BD9AC(a2, self);
LABEL_3:
  resultsBySectionType = [(SDShareSheetProxyLoaderChangeDetails *)self resultsBySectionType];
  v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [sectionCopy type]);
  [resultsBySectionType setObject:resultCopy forKeyedSubscript:v9];

  proxySections = [(SDShareSheetProxyLoaderChangeDetails *)self proxySections];
  [proxySections addObject:sectionCopy];
}

- (id)loadedIndexesForProxySection:(id)section
{
  sectionCopy = section;
  resultsBySectionType = [(SDShareSheetProxyLoaderChangeDetails *)self resultsBySectionType];
  type = [sectionCopy type];

  v7 = [NSNumber numberWithInteger:type];
  v8 = [resultsBySectionType objectForKeyedSubscript:v7];

  loadedIndexes = [v8 loadedIndexes];

  return loadedIndexes;
}

- (id)failedIndexesForProxySection:(id)section
{
  sectionCopy = section;
  resultsBySectionType = [(SDShareSheetProxyLoaderChangeDetails *)self resultsBySectionType];
  type = [sectionCopy type];

  v7 = [NSNumber numberWithInteger:type];
  v8 = [resultsBySectionType objectForKeyedSubscript:v7];

  failedIndexes = [v8 failedIndexes];

  return failedIndexes;
}

@end