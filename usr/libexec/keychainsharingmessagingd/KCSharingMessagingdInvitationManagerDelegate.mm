@interface KCSharingMessagingdInvitationManagerDelegate
- (void)manager:(id)manager incomingInvitation:(id)invitation;
- (void)manager:(id)manager receiverDidAcceptInvitation:(id)invitation;
- (void)manager:(id)manager receiverDidDeclineInvitation:(id)invitation;
- (void)manager:(id)manager senderDidCancelInvitation:(id)invitation;
@end

@implementation KCSharingMessagingdInvitationManagerDelegate

- (void)manager:(id)manager incomingInvitation:(id)invitation
{
  managerCopy = manager;
  invitationCopy = invitation;
  selfCopy = self;
  sub_1000128A8(invitationCopy);
}

- (void)manager:(id)manager senderDidCancelInvitation:(id)invitation
{
  managerCopy = manager;
  invitationCopy = invitation;
  selfCopy = self;
  sub_100012BBC(invitationCopy);
}

- (void)manager:(id)manager receiverDidAcceptInvitation:(id)invitation
{
  managerCopy = manager;
  invitationCopy = invitation;
  selfCopy = self;
  sub_100012D24(invitationCopy, "receiver did accept invite %@");
}

- (void)manager:(id)manager receiverDidDeclineInvitation:(id)invitation
{
  managerCopy = manager;
  invitationCopy = invitation;
  selfCopy = self;
  sub_100012D24(invitationCopy, "receiver did decline invite %@");
}

@end