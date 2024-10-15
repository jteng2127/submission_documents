import numpy as np
import matplotlib.pyplot as plt

# Given x and P(x) values
x_values = np.array([1, 2, 3, 4, 5, 6, 7, 8])
p_values = np.array([0.03, 0.01, 0.04, 0.30, 0.30, 0.10, 0.07, 0.15])

# Calculate the cumulative probabilities
cumulative_p = np.cumsum(p_values)

# Add x = 0 (with P(X <= 0) = 0) and x > 8 (with P(X <= 10) = 1)
x_cdf = np.array([0] + list(x_values) + [9, 10])
cumulative_p = np.insert(cumulative_p, 0, 0)  # P(X <= 0) = 0
cumulative_p = np.append(cumulative_p, [1, 1])  # P(X <= 9 and P(X <= 10) = 1)

# Plot the cumulative distribution function
plt.step(x_cdf, cumulative_p, where='post')
# plt.title("CDF $P(X \leq x)$ for $0 \leq x \leq 10$")
plt.xlabel("$x$")
plt.ylabel("$P(X \leq x)$")
plt.grid(True)
plt.xticks(np.arange(0, 11, 1))
plt.yticks(np.arange(0, 1.1, 0.1))
plt.savefig("output/p3_b.png")
