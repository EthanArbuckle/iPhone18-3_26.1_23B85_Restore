@interface SDShareSheetProxyLoaderResult
- (id)description;
@end

@implementation SDShareSheetProxyLoaderResult

- (id)description
{
  v10.receiver = self;
  v10.super_class = SDShareSheetProxyLoaderResult;
  v3 = [(SDShareSheetProxyLoaderResult *)&v10 description];
  state = [(SDShareSheetProxyLoaderResult *)self state];
  if (state > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&off_1008CE370 + state);
  }

  loadedIndexes = [(SDShareSheetProxyLoaderResult *)self loadedIndexes];
  failedIndexes = [(SDShareSheetProxyLoaderResult *)self failedIndexes];
  v8 = [NSString stringWithFormat:@"%@: state:%@ loadedIndex:%@ failedIndexes:%@", v3, v5, loadedIndexes, failedIndexes];

  return v8;
}

@end