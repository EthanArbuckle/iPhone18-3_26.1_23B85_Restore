@interface MOEventBundleLabelFormat
- (MOEventBundleLabelFormat)initWithFormat:(id)a3 capitalizationType:(unint64_t)a4;
- (id)description;
@end

@implementation MOEventBundleLabelFormat

- (MOEventBundleLabelFormat)initWithFormat:(id)a3 capitalizationType:(unint64_t)a4
{
  v8 = a3;
  if (v8)
  {
    v15.receiver = self;
    v15.super_class = MOEventBundleLabelFormat;
    v9 = [(MOEventBundleLabelFormat *)&v15 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_format, a3);
      v10->_capitalizationType = a4;
    }

    self = v10;
    v11 = self;
  }

  else
  {
    v12 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleLabelFormat initWithFormat:v12 capitalizationType:?];
    }

    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MOEventBundleLabelFormat.m" lineNumber:16 description:@"Invalid parameter not satisfying: format"];

    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = [(MOEventBundleLabelFormat *)self format];
  v4 = [NSString stringWithFormat:@"labels, %@, capitalization type, %lu", v3, [(MOEventBundleLabelFormat *)self capitalizationType]];

  return v4;
}

@end