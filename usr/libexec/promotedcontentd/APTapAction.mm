@interface APTapAction
+ (id)makeTapActionWithLegacyAction:(id)a3 iTunesMetadata:(id)a4 error:(id *)a5;
@end

@implementation APTapAction

+ (id)makeTapActionWithLegacyAction:(id)a3 iTunesMetadata:(id)a4 error:(id *)a5
{
  if (a4)
  {
    sub_10031D144();
    v6 = sub_100399198();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v8 = sub_10031CCF8(v7, v6);

  return v8;
}

@end