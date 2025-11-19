@interface MDRBaseObject
- (MDRBaseObject)init;
@end

@implementation MDRBaseObject

- (MDRBaseObject)init
{
  v9.receiver = self;
  v9.super_class = MDRBaseObject;
  v2 = [(MDRBaseObject *)&v9 init];
  if (v2)
  {
    v3 = +[MDRLogger sharedInstance];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 getLogger:v5];
    logger = v2->_logger;
    v2->_logger = v6;
  }

  return v2;
}

@end