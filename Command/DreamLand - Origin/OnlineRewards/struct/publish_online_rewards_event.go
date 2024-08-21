package online_rewards

const EventIDPublishOnlineRewards = 3

type PublishOnlineRewardsEvent struct {
	PlayerName         string
	OnlineRewards      int32
	MoneyBeforePublish int32
	MoneyAfterPublish  int32
}

// e.g.
//
// PublishOnlineRewardsEvent(3)|Happy2018new,2000,0,2000
// PublishOnlineRewardsEvent(3)|Happy2018new,2000,50,2050
