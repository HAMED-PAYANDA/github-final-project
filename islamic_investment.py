#!/usr/bin/env python3
"""
islamic_investment.py

A simple Islamic Investment Profit Calculator.
This program avoids interest (riba) and instead calculates profit 
based on either an expected profit rate or a partnership 
profit-sharing model.

Do not use in production. Sample purpose only.

Original Author: Upkar Lidder (IBM)
Additional Author: HAMED-PAYANDA (Islamic Investment Adaptation)
"""

def investment_calculator():
    print("Islamic Investment Profit Calculator")
    print("-----------------------------------")

    # Capital input
    p = float(input("Enter your capital investment amount: "))

    # Choose mode
    mode = input("Do you want to calculate with (1) Profit Rate or (2) Total Business Profit? ")

    if mode == "1":
        pr = float(input("Enter expected profit rate (in % per year): "))
        t = float(input("Enter time period (in years): "))
        profit = p * (pr / 100) * t
        total = p + profit
        print(f"\nYour profit after {t} years is: {profit}")
        print(f"Your total capital + profit: {total}")

    elif mode == "2":
        total_investment = float(input("Enter total investment of all partners: "))
        tp = float(input("Enter total business profit: "))
        profit_share = (p / total_investment) * tp
        total = p + profit_share
        print(f"\nYour share of the profit is: {profit_share}")
        print(f"Your total capital + profit: {total}")

    else:
        print("Invalid selection. Please restart.")

if __name__ == "__main__":
    investment_calculator()
