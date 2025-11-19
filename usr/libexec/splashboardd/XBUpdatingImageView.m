@interface XBUpdatingImageView
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation XBUpdatingImageView

- (void)traitCollectionDidChange:(id)a3
{
  v15.receiver = self;
  v15.super_class = XBUpdatingImageView;
  [(XBUpdatingImageView *)&v15 traitCollectionDidChange:a3];
  v4 = [(XBUpdatingImageView *)self image];
  [v4 capInsets];
  v11 = v6;
  v12 = v5;
  v13 = v8;
  v14 = v7;

  v9.f64[0] = v12;
  v9.f64[1] = v11;
  v10.f64[0] = v14;
  v10.f64[1] = v13;
  [(XBUpdatingImageView *)self setContentMode:4 * (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v9, *&UIEdgeInsetsZero.top), vceqq_f64(v10, *&UIEdgeInsetsZero.bottom)))) & 1)];
}

@end