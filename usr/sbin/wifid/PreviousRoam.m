@interface PreviousRoam
+ (void)initialize;
- (void)dealloc;
@end

@implementation PreviousRoam

+ (void)initialize
{
  v2 = objc_alloc_init(NSDateFormatter);
  qword_100298480 = v2;

  [v2 setDateFormat:@"HH:mm:ss"];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PreviousRoam;
  [(PreviousRoam *)&v3 dealloc];
}

@end