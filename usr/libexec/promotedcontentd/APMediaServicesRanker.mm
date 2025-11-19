@interface APMediaServicesRanker
+ (id)findValidObjectsInContentDataItems:(id)a3;
+ (void)_sortByRank:(id)a3 completionHandler:(id)a4;
@end

@implementation APMediaServicesRanker

+ (id)findValidObjectsInContentDataItems:(id)a3
{
  v3 = a3;
  v4 = [NSPredicate predicateWithBlock:&stru_100480938];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  return v5;
}

+ (void)_sortByRank:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [a1 sortByRank:a3];
  v6[2](v6, v7, 0);
}

@end