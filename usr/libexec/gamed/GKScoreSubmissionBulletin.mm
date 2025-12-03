@interface GKScoreSubmissionBulletin
+ (NSDateFormatter)timeFormatter;
+ (void)presentForScores:(id)scores leaderboards:(id)leaderboards;
- (GKScoreSubmissionBulletin)initWithPushNotification:(id)notification;
@end

@implementation GKScoreSubmissionBulletin

+ (NSDateFormatter)timeFormatter
{
  v2 = sub_1001AD070();

  return v2;
}

+ (void)presentForScores:(id)scores leaderboards:(id)leaderboards
{
  sub_1001A7B44(0, &qword_1003B5A68);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001A7B44(0, &qword_1003B5A58);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001AD150(v4, v5);
}

- (GKScoreSubmissionBulletin)initWithPushNotification:(id)notification
{
  if (notification)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1001AD874();
}

@end