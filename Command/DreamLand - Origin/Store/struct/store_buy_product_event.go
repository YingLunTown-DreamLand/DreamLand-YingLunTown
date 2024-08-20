package store

const EventIDStoreBuyProduct = 1

type StoreBuyProductEvent struct {
	PlayerName  string
	ProductType int32

	SuccessStates bool

	MoneyCost            int32
	MoneyBeforeCost      int32
	ExpectMoneyAfterCost int32
}

// e.g.
//
// StoreBuyProductEvent(1)|Happy2018new,233,true,23,50,27
// StoreBuyProductEvent(1)|Happy2018new,23,false,23,0,-23
