@interface NRGFullSyncError
+ (id)errorWithCode:(unint64_t)code description:(id)description;
@end

@implementation NRGFullSyncError

+ (id)errorWithCode:(unint64_t)code description:(id)description
{
  v10 = @"localizedDescription";
  descriptionCopy = description;
  descriptionCopy2 = description;
  v7 = [NSDictionary dictionaryWithObjects:&descriptionCopy forKeys:&v10 count:1];

  v8 = [self errorWithDomain:@"com.apple.nanoresourcegrabber.fullsync" code:code userInfo:v7];

  return v8;
}

@end