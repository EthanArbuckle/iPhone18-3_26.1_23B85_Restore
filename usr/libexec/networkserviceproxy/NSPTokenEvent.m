@interface NSPTokenEvent
+ (id)fetchRequest;
@end

@implementation NSPTokenEvent

+ (id)fetchRequest
{
  v2 = [[NSFetchRequest alloc] initWithEntityName:@"NSPTokenEvent"];

  return v2;
}

@end