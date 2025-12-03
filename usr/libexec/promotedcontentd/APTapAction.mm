@interface APTapAction
+ (id)makeTapActionWithLegacyAction:(id)action iTunesMetadata:(id)metadata error:(id *)error;
@end

@implementation APTapAction

+ (id)makeTapActionWithLegacyAction:(id)action iTunesMetadata:(id)metadata error:(id *)error
{
  if (metadata)
  {
    sub_10031D144();
    v6 = sub_100399198();
  }

  else
  {
    v6 = 0;
  }

  actionCopy = action;
  v8 = sub_10031CCF8(actionCopy, v6);

  return v8;
}

@end