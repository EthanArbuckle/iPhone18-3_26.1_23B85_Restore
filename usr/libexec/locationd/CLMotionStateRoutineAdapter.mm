@interface CLMotionStateRoutineAdapter
- (CLMotionStateRoutineAdapter)initWithMotionState:(void *)state;
@end

@implementation CLMotionStateRoutineAdapter

- (CLMotionStateRoutineAdapter)initWithMotionState:(void *)state
{
  v5.receiver = self;
  v5.super_class = CLMotionStateRoutineAdapter;
  result = [(CLMotionStateRoutineAdapter *)&v5 init];
  if (result)
  {
    result->_motionState = state;
    result->_valid = state != 0;
  }

  return result;
}

@end