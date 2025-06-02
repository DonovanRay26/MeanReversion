// main.cpp : main functionality for trading bot

#include "Api/TwsApiL0.h"
#include "source/PosixClient/Shared/Order.h"
#include <iostream>

// build custom wrapper to EWrapper:
class MyEWrapper : public EWrapperL0 {
    public:
    void tickPrice(TickerId tickerId, TickType field, double price, int canAutoExecute) override {
        // TODO: add implementation
    }
};