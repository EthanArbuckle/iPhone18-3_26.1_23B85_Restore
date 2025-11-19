@interface GKInviteCacheObject
+ (id)fetchSortDescriptors;
- (void)awakeFromInsert;
@end

@implementation GKInviteCacheObject

- (void)awakeFromInsert
{
  v4.receiver = self;
  v4.super_class = GKInviteCacheObject;
  [(GKInviteCacheObject *)&v4 awakeFromInsert];
  v3 = +[NSDate date];
  [(GKInviteCacheObject *)self setTimeStamp:v3];

  [(GKInviteCacheObject *)self setType:0];
}

+ (id)fetchSortDescriptors
{
  v2 = [NSSortDescriptor sortDescriptorWithKey:@"timeStamp" ascending:0];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

@end