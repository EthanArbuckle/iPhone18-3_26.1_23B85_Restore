@interface WRM_CellStationManager
- (void)isFR2:(id)a3 completionHandler:(id)a4;
@end

@implementation WRM_CellStationManager

- (void)isFR2:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

@end