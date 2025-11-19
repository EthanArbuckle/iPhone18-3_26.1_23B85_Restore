@interface UMCommPageProvider
- (UMCommPageProvider)init;
@end

@implementation UMCommPageProvider

- (UMCommPageProvider)init
{
  v6.receiver = self;
  v6.super_class = UMCommPageProvider;
  v2 = [(UMCommPageProvider *)&v6 init];
  v3 = v2;
  if (v2)
  {
    sub_100089CB0(v2, &stru_1000DD358);
    sub_100089CC4(v3, &stru_1000DD398);
    v4 = v3;
  }

  return v3;
}

@end