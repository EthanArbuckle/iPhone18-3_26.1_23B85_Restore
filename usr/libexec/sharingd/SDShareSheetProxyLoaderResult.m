@interface SDShareSheetProxyLoaderResult
- (id)description;
@end

@implementation SDShareSheetProxyLoaderResult

- (id)description
{
  v10.receiver = self;
  v10.super_class = SDShareSheetProxyLoaderResult;
  v3 = [(SDShareSheetProxyLoaderResult *)&v10 description];
  v4 = [(SDShareSheetProxyLoaderResult *)self state];
  if (v4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&off_1008CE370 + v4);
  }

  v6 = [(SDShareSheetProxyLoaderResult *)self loadedIndexes];
  v7 = [(SDShareSheetProxyLoaderResult *)self failedIndexes];
  v8 = [NSString stringWithFormat:@"%@: state:%@ loadedIndex:%@ failedIndexes:%@", v3, v5, v6, v7];

  return v8;
}

@end