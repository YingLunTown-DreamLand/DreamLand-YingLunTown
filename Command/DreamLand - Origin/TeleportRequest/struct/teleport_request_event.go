package online_rewards

const EventIDTeleportRequestEvent = 4

type TeleportRequestEvent struct {
	PlayerName    string
	SuccessStates bool

	MoneyCost        int32
	MoneyBeforeCost  int32
	MoneyFinalResult int32
}

// e.g.
//
// TeleportRequestEvent(4)|Happy2018new,true,100,300,200
// TeleportRequestEvent(4)|Happy2018new,false,100,50,50
