# Advanced Macroeconomics (cod. 20285)
**Problem set 1**

**Instructor:** Antonella Trigari  
**Teaching Assistant:** Henri Graul  
**A.Y. 2025–26**

- **Due date:** March 1st, by 23:59 CEST;
- **Write your solutions with a word processor** ($\LaTeX$ would be preferred);
- **Grading is based on either Exercise 1 or 2** (randomly chosen) and **Exercise 3**;
- **Optional questions will not be graded**. They serve as additional practice exercises;
- **Please submit your solutions to** henri.graul@unibocconi.it;
- **Submit only one PDF for each group**, don’t forget to specify the names of the members of the group on the first page. Please also indicate your names in the document title, i.e., for example "PS1Graul/Trigari.pdf".

---

## Exercise 1

### Part 1: Sequential formulation

Consider the deterministic neoclassical growth model in its sequential formulation. The problem of the planner is:

$$
\max_{\{c_t, k_{t+1}\}_{t=0}^\infty} \sum_{t=0}^{\infty} \beta^t \frac{c_t^{1-\sigma}}{1-\sigma}
$$

s.t.

$$
\begin{cases}
c_t + k_{t+1} = k_t^\alpha + (1 - \delta) k_t \\
c_t, k_{t+1} \geq 0 \\
k_0 \text{ given}
\end{cases}
$$

1. Use L’Hopital’s rule to prove that, as $\sigma \to 1$, the within period utility function, $u(c_t) = \frac{c_t^{1-\sigma} - 1}{1-\sigma}$, goes to $\ln(c_t)$.  
   *[HINT: You can re-write $c_t^{1-\sigma}$ as $e^{(1-\sigma)\ln(c_t)}$].*  
   *(Note: The standard CRRA form usually includes a -1 in the numerator to be compatible with log utility in the limit, inserted here for correctness based on the limit question).*

2. Briefly discuss which of the constraints above are binding or non-binding.

3. Define the Lagrangian associated to the maximization problem above. Derive the first order necessary conditions.

4. Clearly list all the equations that you need to solve the model. Also state the steady state.

5. Approximate the system of non-linear difference equations around the model’s deterministic steady state by a first-order Taylor expansion, i.e. log-linearize it. Give a brief intuition why this is helpful to solve the model.

6. After deriving the optimal sequence for consumption and capital in period $t = 0$, denoted $\{c_t^*, k_{t+1}^*\}_{t=0}^\infty$, let’s assume our planner reassesses the situation in period 1, one period later. Does she need to redo all the algebra, i.e., solve the entire maximization problem starting from $t = 1$, or can she simply follow the plan set in the previous period? What happens if, unexpectedly, there’s a small change to the capital stock at the start of period 1 in form of a so-called MIT shock, so that the available capital $k_1$ differs from what was planned in the optimal sequence, i.e., $k_1 \neq k_1^*$?  
   *[Note: First, we are not asking you to solve for the optimal sequence. The purpose of this question is to build intuition about the conceptual similarities and differences between sequential and recursive solutions. Second, by the nature of MIT shocks, we still consider a deterministic environment in the second case after the unexpected change in capital. An MIT shock is a "surprise shock" introduced in a deterministic model that happens a single time and no agent in that model doubts that the model remains deterministic after the shock.]*

### Part 2: Recursive formulation

Again, consider the deterministic neoclassical growth model in its sequential formulation as stated above.

7. Now, formulate the problem in recursive form: Clearly identify the state variable, the control variables, and write down the Bellman equation.

8. Derive the first order necessary conditions for the problem from the Bellman equation you derived in the previous point.  
   *[HINT: you can define a Lagragian associated to the Bellman equation to take the constraint into account].*

9. Exploit the envelope condition(s) to express the first order conditions above in terms of the variables of the model. Comment on the Euler equation you obtain and compare it to the one you obtained in **Part 1**.  
   *[HINT: you need to use as many envelope conditions as the number of endogenous state variables].*

10. Consider the nested case where (i) $\sigma = 1$, (ii) $\delta = 1$.  
    Guess the following policy functions for the optimal decisions of $c_t$ and $k_{t+1}$ in terms of the state $k_t$:
    $$
    c_t = f(k_t) = A k_t^\alpha
    $$
    $$
    k_{t+1} = g(k_t) = B k_t^\alpha
    $$
    Find the values for the undetermined coefficients $A$ and $B$.  
    *[HINT: You have two equations - the Euler equation and the resource constraint - and two unknowns - A and B. Also, note that the guess above also implies that $c_{t+1} = A k_{t+1}^\alpha$.]*

11. After deriving the policy functions for consumption and capital, let’s again assume our planner reassesses the situation in period 1, one period later. Should she still follow the consumption-saving choices prescribed by the policy functions, given capital stock $k_1 = g(k_0) = B k_0^\alpha$? What if, unexpectedly, there’s a change to the capital stock in period 1, so that the available capital $k_1$ differs from what she saved according to the policy functions, i.e., $k_1 \neq B k_0^\alpha$.

---

## Exercise 2: Recursive Formulation

Consider the following modification of the neoclassical growth model, where we assume that investments made in period $t$ will become productive only in period $t + 2$. That is, the budget constraint is given by:

$$
c_t + k_{t+1} = f(k_{t-1}) + (1 - \delta) k_t
$$

The maximization problem is hence given by:

$$
\max_{\{c_t, k_{t+1}\}_{t=0}^\infty} \sum_{t=0}^{\infty} \beta^t \frac{c_t^{1-\sigma}}{1-\sigma}
$$

s.t.

$$
\begin{cases}
c_t + k_{t+1} = f(k_{t-1}) + (1 - \delta) k_t \\
c_t, k_{t+1} \geq 0 \\
k_{-1}, k_0 \text{ given}
\end{cases}
$$

where production only uses capital, according to $f(k_{t-1}) = k_{t-1}^\alpha$.

1. Formulate the problem in recursive form: identify the state and the control variables of the problem, and write down the Bellman equation.  
   *[HINT: there are two endogenous state variables].*

2. Derive the first order necessary conditions for the problem from the Bellman equation you derived in the previous point.  
   *[HINT: you can define a Lagragian associated to the Bellman equation to take the constraint into account].*

3. Exploit the envelope condition(s) to express the first order conditions above in terms of the variables of the model. Comment on the Euler equation you obtain.  
   *[HINT: you need to use as many envelope conditions as the number of endogenous state variables].*

---

## Exercise 3: Macro Data Analysis and Policy Discussion

In this exercise, you’ll explore key macroeconomic time series, analyze relationships between different variables, and consider recent monetary policy decisions. You may be asked to comment on data and policy choices that we haven’t covered in depth yet. This is intentional—provide your best answer based on your current understanding.

### Part 1: Analysis of Key Macro Variables

In this part, you will work with real-world data to study the co-movements and dynamics of key macroeconomic variables. Download the relevant time series data for the U.S. economy from FRED (https://fred.stlouisfed.org/), at the quarterly frequency, from 1964 (or when first available) until the most recent data available. The data should include **Real GDP**, **Real Investment** (Real Gross Fixed Capital Formation), **Real Consumption** (Real Personal Consumption Expenditures), **Inflation** (Personal Consumption Expenditures: Chain-type Price Index; Percent Change from Year Ago), **Interest Rates** (Federal Funds Rate), and the **Unemployment Rate**.

1. Compute the **growth rates for GDP** (percent change from year ago), consumption, and investment over time. Plot these growth rates, and discuss any notable trend or cyclical pattern. Analyze the co-movements between GDP, consumption, and investment growth. How do these variables evolve together during periods of economic expansion and recession? What can you infer about their relationships?

2. Examine the relationship between **unemployment and GDP growth** using the data you have gathered. Plot both variables over time and describe any pattern you observe. How does the unemployment rate behave during periods of economic expansion or contraction? Discuss how recessions and recoveries are reflected in the dynamics of both GDP and unemployment.

3. Analyze the relationship between **inflation** (percent change from one year ago of the price index) and **interest rates** using the data you have gathered. Plot inflation and nominal interest rates over time and discuss any correlations or lagged effects you observe. Do higher interest rates appear to follow periods of higher inflation, or the reverse? Discuss how inflation and interest rates tend to move together during different phases of the business cycle.

### Part 2: Labor Market Dynamics

In this section, you will investigate the dynamics of unemployment, real wage growth, labor market tightness, and labor force participation. Download the relevant time series data from FRED for the U.S. economy, at the quarterly frequency, from 2000 (or when first available) until the most recent data available. The data should include the **Job Openings Level** (Total Non Farm), the **Labor Force Participation Rate**, **Nominal Wages** (Average Hourly Earnings of All Employees, Total Private), the **Price Level** (Personal Consumption Expenditures: Chain-type Price Index), and both the **Unemployment Level** and the **Unemployment Rate**.

1. Compute the **vacancy-to-unemployment (V/U) ratio** and discuss its relevance in assessing labor market tightness. Plot the V/U ratio alongside with the unemployment rate and analyze their comovement. Additionally, examine whether the labor force participation rate exhibits any cyclical pattern.

2. Compute **real wage growth** (percent change from year ago) and plot it alongside the unemployment rate and the V/U ratio. Assess whether the data suggests a strong or weak relationship between real wage growth and either the unemployment rate or the V/U ratio. Discuss potential explanations for the observed patterns.

### Part 3: Monetary Policy and Central Bank Decisions

In the final section, you will engage with recent monetary policy decisions, focusing on the Federal Reserve’s (Fed) and the European Central Bank’s (ECB) approaches to managing inflation and economic stability.

1. Read the official statement from the latest **Federal Open Market Committee (FOMC)** meeting, held on **January 27/28, 2026**. Summarize the main takeaways from the meeting. What decision was made regarding interest rates, and what rationale did the FOMC provide for their decision?

2. Compare the Federal Reserve’s decision with the **European Central Bank’s latest monetary policy decision from February 5, 2026**. What are the similarities and differences in their approaches to inflation, employment, and economic growth?
