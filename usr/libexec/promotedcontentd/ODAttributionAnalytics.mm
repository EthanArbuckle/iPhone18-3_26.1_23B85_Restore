@interface ODAttributionAnalytics
- (_TtC11Attribution22ODAttributionAnalytics)init;
- (void)recordAttributionODEndWithError:(id)a3;
@end

@implementation ODAttributionAnalytics

- (void)recordAttributionODEndWithError:(id)a3
{
  v4 = self;
  v5 = a3;
  sub_10027CFC0(a3);
}

- (_TtC11Attribution22ODAttributionAnalytics)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ODAttributionAnalytics();
  return [(ODAttributionAnalytics *)&v3 init];
}

@end