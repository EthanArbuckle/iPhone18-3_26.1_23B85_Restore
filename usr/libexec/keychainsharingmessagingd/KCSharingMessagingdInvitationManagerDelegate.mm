@interface KCSharingMessagingdInvitationManagerDelegate
- (void)manager:(id)a3 incomingInvitation:(id)a4;
- (void)manager:(id)a3 receiverDidAcceptInvitation:(id)a4;
- (void)manager:(id)a3 receiverDidDeclineInvitation:(id)a4;
- (void)manager:(id)a3 senderDidCancelInvitation:(id)a4;
@end

@implementation KCSharingMessagingdInvitationManagerDelegate

- (void)manager:(id)a3 incomingInvitation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1000128A8(v7);
}

- (void)manager:(id)a3 senderDidCancelInvitation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100012BBC(v7);
}

- (void)manager:(id)a3 receiverDidAcceptInvitation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100012D24(v7, "receiver did accept invite %@");
}

- (void)manager:(id)a3 receiverDidDeclineInvitation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100012D24(v7, "receiver did decline invite %@");
}

@end