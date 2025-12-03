@interface CRDNDEndAlert
+ (id)actions;
- (CRDNDEndAlert)initWithText:(id)text;
@end

@implementation CRDNDEndAlert

- (CRDNDEndAlert)initWithText:(id)text
{
  textCopy = text;
  v6 = [(CRBulletin *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internalText, text);
  }

  return v7;
}

+ (id)actions
{
  v2 = [CARDNDDiagnosticsService TTRURLforEvent:1];
  v3 = [CRBulletin CARActionWithURL:v2 title:@"[Internal] File Radar"];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

@end