# metatrader-devops

Setup your path to the directory where yuor repo is cloned to get command line and build system to compile
mql source code. Also update the path of your MT4 & MT5 root folders in the mt4-compile.bat/mt5-compile.bat files

## MT4 Setup

    mt4-dev-reset "D:\Meta Trader 4\MetaTrader 4 IC Markets - Dev"
    mt4-dev-setup "D:\Meta Trader 4\MetaTrader 4 IC Markets - Dev" "D:\Meta Trader Repo\Source"

    mt4-dev-reset "D:\Meta Trader 4\MetaTrader 4 IC Markets - Asif"
    mt4-dev-setup "D:\Meta Trader 4\MetaTrader 4 IC Markets - Asif" "D:\Meta Trader Repo\Source"

### TEST

    mt4-test-reset "D:\Meta Trader 4\MetaTrader 4 IC Markets - Test"
    mt4-test-setup "D:\Meta Trader 4\MetaTrader 4 IC Markets - Test" "D:\Meta Trader Repo\Source"

### PROD

    mt4-prod-reset "D:\Meta Trader 4\MetaTrader 4 IC Markets - Asif"
    mt4-prod-setup "D:\Meta Trader 4\MetaTrader 4 IC Markets - Asif" "D:\Meta Trader Repo\Source"

## ALL

    mt4-dev-reset "D:\Meta Trader 4\MetaTrader 4 IC Markets - Dev"
    mt4-test-reset "D:\Meta Trader 4\MetaTrader 4 IC Markets - Test"
    mt4-prod-reset "D:\Meta Trader 4\MetaTrader 4 IC Markets - Asif"

    mt4-dev-setup "D:\Meta Trader 4\MetaTrader 4 IC Markets - Dev" "D:\Meta Trader Repo\Source"
    mt4-test-setup "D:\Meta Trader 4\MetaTrader 4 IC Markets - Test" "D:\Meta Trader Repo\Source"
    mt4-prod-setup "D:\Meta Trader 4\MetaTrader 4 IC Markets - Asif" "D:\Meta Trader Repo\Source"

## MT5 Setup

## Examples

### DEV

    mt5-dev-reset "D:\Meta Trader 5\MetaTrader 5 IC Markets - Dev" Fearless
    mt5-dev-setup "D:\Meta Trader 5\MetaTrader 5 IC Markets - Dev" "D:\Meta Trader Repo\Source" Fearless

### TEST

    mt5-test-reset "D:\Meta Trader 5\MetaTrader 5 IC Markets - Test" Fearless
    mt5-test-setup "D:\Meta Trader 5\MetaTrader 5 IC Markets - Test" "D:\Meta Trader Repo\Source" Fearless

### PROD

    mt5-prod-reset "D:\Meta Trader 5\MetaTrader 5 IC Markets - Asif" Fearless
    mt5-prod-setup "D:\Meta Trader 5\MetaTrader 5 IC Markets - Asif" "D:\Meta Trader Repo\Source" Fearless

### ALL

    mt5-dev-reset "D:\Meta Trader 5\MetaTrader 5 IC Markets - Dev" Fearless
    mt5-test-reset "D:\Meta Trader 5\MetaTrader 5 IC Markets - Test" Fearless
    mt5-prod-reset "D:\Meta Trader 5\MetaTrader 5 IC Markets - Asif" Fearless

    mt5-dev-setup "D:\Meta Trader 5\MetaTrader 5 IC Markets - Dev" "D:\Meta Trader Repo\Source" Fearless
    mt5-test-setup "D:\Meta Trader 5\MetaTrader 5 IC Markets - Test" "D:\Meta Trader Repo\Source" Fearless
    mt5-prod-setup "D:\Meta Trader 5\MetaTrader 5 IC Markets - Asif" "D:\Meta Trader Repo\Source" Fearless
