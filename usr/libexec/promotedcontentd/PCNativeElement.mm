@interface PCNativeElement
- (id)initWithAdData:(id)data element:(id)element elementIndex:(unint64_t)index error:(id *)error;
@end

@implementation PCNativeElement

- (id)initWithAdData:(id)data element:(id)element elementIndex:(unint64_t)index error:(id *)error
{
  dataCopy = data;
  elementCopy = element;
  v12 = [(PCNativeElement *)self init];
  v13 = v12;
  if (!elementCopy || !v12)
  {
LABEL_9:
    error = v13;
    goto LABEL_14;
  }

  hasElementID = [elementCopy hasElementID];
  indexCopy = index;
  if (hasElementID)
  {
    indexCopy = [elementCopy elementID];
  }

  [(PCNativeElement *)v13 setElementID:indexCopy];
  if ([(PCNativeElement *)v13 elementID]<= 255 && ([(PCNativeElement *)v13 elementID]& 0x8000000000000000) == 0)
  {
    v16 = [PCNativeAsset alloc];
    asset = [elementCopy asset];
    v18 = [v16 initWithAsset:asset];
    [(PCNativeElement *)v13 setAsset:v18];

    caption = [elementCopy caption];
    [(PCNativeElement *)v13 setCaption:caption];

    accessCaption = [elementCopy accessCaption];
    [(PCNativeElement *)v13 setAccessibleCaption:accessCaption];

    v21 = [PCNativeButton alloc];
    ctaButton = [elementCopy ctaButton];
    v23 = [v21 initWithButton:ctaButton];
    [(PCNativeElement *)v13 setButton:v23];

    actionURL = [elementCopy actionURL];
    v25 = [NSURL URLWithString:actionURL];
    [(PCNativeElement *)v13 setActionURL:v25];

    v26 = [PCNativeStyle alloc];
    style = [elementCopy style];
    v28 = [v26 initWithStyle:style];
    [(PCNativeElement *)v13 setStyle:v28];

    action = [elementCopy action];

    if (action)
    {
      action2 = [elementCopy action];
      iTunesMetadatas = [dataCopy iTunesMetadatas];
      v32 = [APTapAction makeTapActionWithLegacyAction:action2 iTunesMetadata:iTunesMetadatas error:error];
      [(PCNativeElement *)v13 setTapAction:v32];
    }

    goto LABEL_9;
  }

  if (error)
  {
    v33 = [NSString stringWithFormat:@"Element %ld ID out of range: %ld", index, [(PCNativeElement *)v13 elementID]];
    *error = [APLegacyInterfaceError validationErrorWithCode:4511 andReason:v33];

    v34 = APLogForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      code = [*error code];
      localizedDescription = [*error localizedDescription];
      *buf = 134218242;
      v39 = code;
      v40 = 2114;
      v41 = localizedDescription;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Error %ld: %{public}@", buf, 0x16u);
    }

    error = 0;
  }

LABEL_14:

  return error;
}

@end