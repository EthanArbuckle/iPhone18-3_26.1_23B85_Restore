@interface _CNMarkupElement
- (_CNMarkupElement)initWithElementName:(id)a3 required:(BOOL)a4 type:(Class)a5;
@end

@implementation _CNMarkupElement

- (_CNMarkupElement)initWithElementName:(id)a3 required:(BOOL)a4 type:(Class)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = _CNMarkupElement;
  v10 = [(_CNMarkupElement *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_elementName, a3);
    v11->_required = a4;
    objc_storeStrong(&v11->_type, a5);
  }

  return v11;
}

@end