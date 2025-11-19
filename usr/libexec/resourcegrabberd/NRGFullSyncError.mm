@interface NRGFullSyncError
+ (id)errorWithCode:(unint64_t)a3 description:(id)a4;
@end

@implementation NRGFullSyncError

+ (id)errorWithCode:(unint64_t)a3 description:(id)a4
{
  v10 = @"localizedDescription";
  v11 = a4;
  v6 = a4;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

  v8 = [a1 errorWithDomain:@"com.apple.nanoresourcegrabber.fullsync" code:a3 userInfo:v7];

  return v8;
}

@end