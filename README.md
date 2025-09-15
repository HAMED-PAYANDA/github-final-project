# Simple Investment Calculator

A simple calculator that replaces the traditional interest-based simple interest formula with an Islamic investment (profit-sharing) model.

## Input:
- `P`: Capital Investment (P) → the money you invested
- `PR`: Profit Rate (PR) → expected annual profit rate (%) (if using rate mode)
- `T`: Time Period (T) → duration in years (if using rate mode)
- Total Business Investment → total capital of all partners (if using partnership mode)
- `TP`: Total Business Profit (TP) → actual profit earned (if using partnership mode)

## Output
- Profit → your gain from investment
- Total → your original capital + your profit
- `Formula`
- `Mode 1 — Profit Rate:
Profit = P \times \frac{PR}{100} \times T
Total = P + Profit`
 - `Mode 2 — Partnership (Profit-Sharing):
Profit\_Share = \frac{P}{Total\_Investment} \times TP
Total = P + Profit\_Share`

## Islamic Finance Note
This calculator avoids interest (riba) and instead follows profit-sharing concepts like:
	-	Mudarabah (profit-sharing)
	-	Musharakah (joint partnership)
