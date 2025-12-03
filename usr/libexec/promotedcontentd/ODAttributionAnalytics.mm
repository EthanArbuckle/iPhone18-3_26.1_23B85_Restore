@interface ODAttributionAnalytics
- (_TtC11Attribution22ODAttributionAnalytics)init;
- (void)recordAttributionODEndWithError:(id)error;
@end

@implementation ODAttributionAnalytics

- (void)recordAttributionODEndWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  sub_10027CFC0(error);
}

- (_TtC11Attribution22ODAttributionAnalytics)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ODAttributionAnalytics();
  return [(ODAttributionAnalytics *)&v3 init];
}

@end