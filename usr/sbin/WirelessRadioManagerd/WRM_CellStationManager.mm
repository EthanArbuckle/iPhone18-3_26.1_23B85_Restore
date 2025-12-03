@interface WRM_CellStationManager
- (void)isFR2:(id)r2 completionHandler:(id)handler;
@end

@implementation WRM_CellStationManager

- (void)isFR2:(id)r2 completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

@end