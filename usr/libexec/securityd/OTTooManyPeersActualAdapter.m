@interface OTTooManyPeersActualAdapter
- (BOOL)shouldPopDialog;
- (void)popDialogWithCount:(unint64_t)a3 limit:(unint64_t)a4;
@end

@implementation OTTooManyPeersActualAdapter

- (void)popDialogWithCount:(unint64_t)a3 limit:(unint64_t)a4
{
  v6 = dispatch_get_global_queue(9, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001946EC;
  v7[3] = &unk_100346988;
  v7[4] = a3;
  v7[5] = a4;
  dispatch_async(v6, v7);
}

- (BOOL)shouldPopDialog
{
  if (qword_10039E1D8 != -1)
  {
    dispatch_once(&qword_10039E1D8, &stru_100343698);
  }

  if (byte_10039CDC0 != 1)
  {
    return 0;
  }

  return _os_variant_has_internal_ui("iCloudKeychain");
}

@end