@interface FeedbackSubmission
- (_TtC9feedbackd18FeedbackSubmission)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FeedbackSubmission

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_100007F6C(coderCopy);
}

- (_TtC9feedbackd18FeedbackSubmission)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end