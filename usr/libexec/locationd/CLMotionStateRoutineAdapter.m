@interface CLMotionStateRoutineAdapter
- (CLMotionStateRoutineAdapter)initWithMotionState:(void *)a3;
@end

@implementation CLMotionStateRoutineAdapter

- (CLMotionStateRoutineAdapter)initWithMotionState:(void *)a3
{
  v5.receiver = self;
  v5.super_class = CLMotionStateRoutineAdapter;
  result = [(CLMotionStateRoutineAdapter *)&v5 init];
  if (result)
  {
    result->_motionState = a3;
    result->_valid = a3 != 0;
  }

  return result;
}

@end