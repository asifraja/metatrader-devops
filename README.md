# metatrader-devops

 - Install or copy MT4/MT5 on your local (I have setup few copies as follow, all of their shortcuts have been setup to run with /portable flag (important)
 - Choose one of the installation as your development system eg. Installed at D:\Meta Trader 4\MetaTrader 4 IC Markets - Dev 
 - create a folder where you intend to keep your source code (prefereably your source code repo) eg "D:\Meta Trader Repo" and have a sub folder called source
 - Setup your env's path to the build directory where THIS repo is cloned to get mt4-compile/mt5-compile to be picked up
 - Open up a CMD prompt and cd to the source folder. 

examples: 
  - mt4-compile "D:\Meta Trader 4\MetaTrader 4 IC Markets - Dev\MQL4\Experts\Fearless\News\Fearless-News.mq4"
  - mt5-compile "D:\Meta Trader 5\MetaTrader 5 IC Markets - Dev\MQL5\Experts\Fearless\News\Fearless-News.mq5"
    
    

## MT4 Setup

    mt4-dev-reset "D:\Meta Trader 4\MetaTrader 4 IC Markets - Dev" Fearless
    mt4-dev-setup "D:\Meta Trader 4\MetaTrader 4 IC Markets - Dev" "D:\Meta Trader Repo\Source" Fearless

    mt4-dev-reset "D:\Meta Trader 4\MetaTrader 4 IC Markets - Asif" Fearless
    mt4-dev-setup "D:\Meta Trader 4\MetaTrader 4 IC Markets - Asif" "D:\Meta Trader Repo\Source" Fearless

### TEST

    mt4-test-reset "D:\Meta Trader 4\MetaTrader 4 IC Markets - Test" Fearless
    mt4-test-setup "D:\Meta Trader 4\MetaTrader 4 IC Markets - Test" "D:\Meta Trader Repo\Source" Fearless

### PROD

    mt4-prod-reset "D:\Meta Trader 4\MetaTrader 4 IC Markets - Asif" Fearless
    mt4-prod-setup "D:\Meta Trader 4\MetaTrader 4 IC Markets - Asif" "D:\Meta Trader Repo\Source" Fearless

## ALL

    mt4-dev-reset "D:\Meta Trader 4\MetaTrader 4 IC Markets - Dev" Fearless
    mt4-test-reset "D:\Meta Trader 4\MetaTrader 4 IC Markets - Test" Fearless
    mt4-prod-reset "D:\Meta Trader 4\MetaTrader 4 IC Markets - Asif" Fearless

    mt4-dev-setup "D:\Meta Trader 4\MetaTrader 4 IC Markets - Dev" "D:\Meta Trader Repo\Source" Fearless
    mt4-test-setup "D:\Meta Trader 4\MetaTrader 4 IC Markets - Test" "D:\Meta Trader Repo\Source" Fearless
    mt4-prod-setup "D:\Meta Trader 4\MetaTrader 4 IC Markets - Asif" "D:\Meta Trader Repo\Source" Fearless

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
