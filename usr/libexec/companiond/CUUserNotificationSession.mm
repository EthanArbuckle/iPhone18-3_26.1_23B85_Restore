@interface CUUserNotificationSession
+ (id)cad_sessionWithContent:(id)content;
@end

@implementation CUUserNotificationSession

+ (id)cad_sessionWithContent:(id)content
{
  contentCopy = content;
  v5 = objc_alloc_init(self);
  bundleIdentifier = [contentCopy bundleIdentifier];
  [v5 setBundleID:bundleIdentifier];

  categoryIdentifier = [contentCopy categoryIdentifier];
  [v5 setCategoryID:categoryIdentifier];

  identifier = [contentCopy identifier];
  [v5 setIdentifier:identifier];

  [v5 setFlags:{objc_msgSend(contentCopy, "flags")}];
  iconSystemName = [contentCopy iconSystemName];
  [v5 setIconSystemName:iconSystemName];

  iconName = [contentCopy iconName];
  [v5 setIconName:iconName];

  titleKey = [contentCopy titleKey];
  [v5 setTitleKey:titleKey];

  titleArguments = [contentCopy titleArguments];
  [v5 setTitleArguments:titleArguments];

  bodyKey = [contentCopy bodyKey];
  [v5 setBodyKey:bodyKey];

  bodyArguments = [contentCopy bodyArguments];

  [v5 setBodyArguments:bodyArguments];

  return v5;
}

@end