@interface RDFeatureFlagsObjCWrapper
+ (id)temporaryOverrideWithEnabledFeatureFlags:(id)flags disabledFeatureFlags:(id)featureFlags;
+ (id)wrappedFeatureFlagsWithRawValue:(id)value;
- (BOOL)isEnabled;
- (RDFeatureFlagsObjCWrapper)initWithRawValue:(id)value;
@end

@implementation RDFeatureFlagsObjCWrapper

- (RDFeatureFlagsObjCWrapper)initWithRawValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = RDFeatureFlagsObjCWrapper;
  v6 = [(RDFeatureFlagsObjCWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rawValue, value);
  }

  return v7;
}

+ (id)wrappedFeatureFlagsWithRawValue:(id)value
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = _sSo25RDFeatureFlagsObjCWrapperC7reminddE014wrappedFeatureB04withSo010REMFeaturebC9CWrapping_pSgSS_tFZ_0(v3, v4);

  return v5;
}

+ (id)temporaryOverrideWithEnabledFeatureFlags:(id)flags disabledFeatureFlags:(id)featureFlags
{
  sub_1000F5104(&qword_10094FFA8, &qword_1007B5F18);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = _sSo25RDFeatureFlagsObjCWrapperC7reminddE17temporaryOverride018withEnabledFeatureB008disabledjB0So010REMFeatureb9TemporaryG12ObjcWrapping_pSaySo0lbC9CWrapping_pG_AItFZ_0(v4, v5);

  return v6;
}

- (BOOL)isEnabled
{
  v3 = sub_1000F5104(&qword_10094FF10, &unk_1007B5ED0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  selfCopy = self;
  sub_1006D78EC(v6);
  v8 = type metadata accessor for REMFeatureFlags();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {

    sub_1006D8954(v6);
    v10 = 0;
  }

  else
  {
    v10 = REMFeatureFlags.isEnabled.getter();

    (*(v9 + 8))(v6, v8);
  }

  return v10 & 1;
}

@end