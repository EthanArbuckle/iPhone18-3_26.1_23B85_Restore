@interface PCNativeElement
- (id)initWithAdData:(id)a3 element:(id)a4 elementIndex:(unint64_t)a5 error:(id *)a6;
@end

@implementation PCNativeElement

- (id)initWithAdData:(id)a3 element:(id)a4 elementIndex:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(PCNativeElement *)self init];
  v13 = v12;
  if (!v11 || !v12)
  {
LABEL_9:
    a6 = v13;
    goto LABEL_14;
  }

  v14 = [v11 hasElementID];
  v15 = a5;
  if (v14)
  {
    v15 = [v11 elementID];
  }

  [(PCNativeElement *)v13 setElementID:v15];
  if ([(PCNativeElement *)v13 elementID]<= 255 && ([(PCNativeElement *)v13 elementID]& 0x8000000000000000) == 0)
  {
    v16 = [PCNativeAsset alloc];
    v17 = [v11 asset];
    v18 = [v16 initWithAsset:v17];
    [(PCNativeElement *)v13 setAsset:v18];

    v19 = [v11 caption];
    [(PCNativeElement *)v13 setCaption:v19];

    v20 = [v11 accessCaption];
    [(PCNativeElement *)v13 setAccessibleCaption:v20];

    v21 = [PCNativeButton alloc];
    v22 = [v11 ctaButton];
    v23 = [v21 initWithButton:v22];
    [(PCNativeElement *)v13 setButton:v23];

    v24 = [v11 actionURL];
    v25 = [NSURL URLWithString:v24];
    [(PCNativeElement *)v13 setActionURL:v25];

    v26 = [PCNativeStyle alloc];
    v27 = [v11 style];
    v28 = [v26 initWithStyle:v27];
    [(PCNativeElement *)v13 setStyle:v28];

    v29 = [v11 action];

    if (v29)
    {
      v30 = [v11 action];
      v31 = [v10 iTunesMetadatas];
      v32 = [APTapAction makeTapActionWithLegacyAction:v30 iTunesMetadata:v31 error:a6];
      [(PCNativeElement *)v13 setTapAction:v32];
    }

    goto LABEL_9;
  }

  if (a6)
  {
    v33 = [NSString stringWithFormat:@"Element %ld ID out of range: %ld", a5, [(PCNativeElement *)v13 elementID]];
    *a6 = [APLegacyInterfaceError validationErrorWithCode:4511 andReason:v33];

    v34 = APLogForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [*a6 code];
      v36 = [*a6 localizedDescription];
      *buf = 134218242;
      v39 = v35;
      v40 = 2114;
      v41 = v36;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Error %ld: %{public}@", buf, 0x16u);
    }

    a6 = 0;
  }

LABEL_14:

  return a6;
}

@end