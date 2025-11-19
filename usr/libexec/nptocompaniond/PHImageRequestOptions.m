@interface PHImageRequestOptions
+ (id)optionsForURLLoadingMode;
@end

@implementation PHImageRequestOptions

+ (id)optionsForURLLoadingMode
{
  v2 = objc_alloc_init(PHImageRequestOptions);
  [v2 setLoadingMode:0x10000];

  return v2;
}

@end