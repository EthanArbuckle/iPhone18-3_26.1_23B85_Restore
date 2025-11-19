@interface NSExtensionItem
+ (NSExtensionItem)itemWithTitle:(id)a3 attachmentItem:(id)a4;
@end

@implementation NSExtensionItem

+ (NSExtensionItem)itemWithTitle:(id)a3 attachmentItem:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(NSExtensionItem);
  v8 = [[NSAttributedString alloc] initWithString:v6 attributes:0];

  [v7 setAttributedTitle:v8];
  v9 = [[NSItemProvider alloc] initWithItem:v5 typeIdentifier:kUTTypeData];

  v12 = v9;
  v10 = [NSArray arrayWithObjects:&v12 count:1];
  [v7 setAttachments:v10];

  return v7;
}

@end