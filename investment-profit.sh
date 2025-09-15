  #!/bin/bash
# This script calculates Islamic investment profit
# based on either a profit rate or total business profit sharing.

# Do not use this in production. Sample purpose only.

# Author: Hamed Payanda
# Additional Authors:
# HAMED-PAYANDA (Islamic Investment Adaptation)

# Input:
# p, principal investment amount
# t, time period in years (only for profit rate mode)
# r, expected profit rate per year (in %)
# OR
# total_investment (sum of all partners' capital)
# total_profit (actual business profit to be shared)

# Output:
# profit and total capital+profit

echo "Enter your capital investment amount:"
read p

echo "Choose calculation mode:"
echo "1. Profit Rate Mode"
echo "2. Partnership Profit-Sharing Mode"
read mode

if [ $mode -eq 1 ]
then
    echo "Enter expected profit rate (in % per year):"
    read r
    echo "Enter time period in years:"
    read t
    profit=$((p * r * t / 100))
    total=$((p + profit))
    echo "-----------------------------------"
    echo "Your profit after $t years is: $profit"
    echo "Your total capital + profit is: $total"
elif [ $mode -eq 2 ]
then
    echo "Enter total investment of all partners:"
    read total_investment
    echo "Enter total business profit:"
    read total_profit
    profit_share=$((p * total_profit / total_investment))
    total=$((p + profit_share))
    echo "-----------------------------------"
    echo "Your share of the profit is: $profit_share"
    echo "Your total capital + profit is: $total"
else
    echo "Invalid option. Please restart."
fi
