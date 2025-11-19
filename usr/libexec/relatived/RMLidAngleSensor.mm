@interface RMLidAngleSensor
- (void)dealloc;
@end

@implementation RMLidAngleSensor

- (void)dealloc
{
  [(RMLidAngleSensor *)self stopLidAngleUpdates];
  v3.receiver = self;
  v3.super_class = RMLidAngleSensor;
  [(RMLidAngleSensor *)&v3 dealloc];
}

@end