package store

const EventIDStoreSellProduct = 2

type StoreSellProductEvent struct {
	PlayerName  string
	ProductType int32

	SuccessStates bool

	MoneyGet         int32
	MoneyBeforeGet   int32
	MoneyFinalResult int32
}

// e.g.
//
// StoreBuyProductEvent(1)|Happy2018new,0,true,25,50,75
// StoreBuyProductEvent(1)|Happy2018new,1,false,25,50,25
