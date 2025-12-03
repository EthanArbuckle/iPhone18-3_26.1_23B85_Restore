@interface RTRoutineManager
- (RTRoutineManager)initWithUniverse:(id)universe;
@end

@implementation RTRoutineManager

- (RTRoutineManager)initWithUniverse:(id)universe
{
  v4 = +[RTRoutineManager defaultManager];

  return v4;
}

@end