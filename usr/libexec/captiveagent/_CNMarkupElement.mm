@interface _CNMarkupElement
- (_CNMarkupElement)initWithElementName:(id)name required:(BOOL)required type:(Class)type;
@end

@implementation _CNMarkupElement

- (_CNMarkupElement)initWithElementName:(id)name required:(BOOL)required type:(Class)type
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = _CNMarkupElement;
  v10 = [(_CNMarkupElement *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_elementName, name);
    v11->_required = required;
    objc_storeStrong(&v11->_type, type);
  }

  return v11;
}

@end