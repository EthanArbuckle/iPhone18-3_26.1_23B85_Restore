@interface NFSLAMShim
- (void)log:(id)a3;
@end

@implementation NFSLAMShim

- (void)log:(id)a3
{
  v3 = a3;
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(5, "%s:%i %s", "-[NFSLAMShim log:]", 57, [v3 UTF8String]);
  }

  v5 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v7 = "[NFSLAMShim log:]";
    v8 = 1024;
    v9 = 57;
    v10 = 2080;
    v11 = [v3 UTF8String];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s", buf, 0x1Cu);
  }
}

@end