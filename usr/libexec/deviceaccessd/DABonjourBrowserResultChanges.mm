@interface DABonjourBrowserResultChanges
- (DABonjourBrowserResultChanges)initWithOldResult:(id)a3 freshResult:(id)a4 change:(unint64_t)a5;
@end

@implementation DABonjourBrowserResultChanges

- (DABonjourBrowserResultChanges)initWithOldResult:(id)a3 freshResult:(id)a4 change:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = DABonjourBrowserResultChanges;
  v11 = [(DABonjourBrowserResultChanges *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_oldResult, a3);
    objc_storeStrong(&v12->_freshResult, a4);
    v12->_change = a5;
  }

  return v12;
}

@end