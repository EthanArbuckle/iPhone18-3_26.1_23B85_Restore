@interface NSExtensionItem
+ (NSExtensionItem)itemWithTitle:(id)title attachmentItem:(id)item;
@end

@implementation NSExtensionItem

+ (NSExtensionItem)itemWithTitle:(id)title attachmentItem:(id)item
{
  itemCopy = item;
  titleCopy = title;
  v7 = objc_alloc_init(NSExtensionItem);
  v8 = [[NSAttributedString alloc] initWithString:titleCopy attributes:0];

  [v7 setAttributedTitle:v8];
  v9 = [[NSItemProvider alloc] initWithItem:itemCopy typeIdentifier:kUTTypeData];

  v12 = v9;
  v10 = [NSArray arrayWithObjects:&v12 count:1];
  [v7 setAttachments:v10];

  return v7;
}

@end