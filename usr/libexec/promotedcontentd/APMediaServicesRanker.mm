@interface APMediaServicesRanker
+ (id)findValidObjectsInContentDataItems:(id)items;
+ (void)_sortByRank:(id)rank completionHandler:(id)handler;
@end

@implementation APMediaServicesRanker

+ (id)findValidObjectsInContentDataItems:(id)items
{
  itemsCopy = items;
  v4 = [NSPredicate predicateWithBlock:&stru_100480938];
  v5 = [itemsCopy filteredArrayUsingPredicate:v4];

  return v5;
}

+ (void)_sortByRank:(id)rank completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [self sortByRank:rank];
  handlerCopy[2](handlerCopy, v7, 0);
}

@end