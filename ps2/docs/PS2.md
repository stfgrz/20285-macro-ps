# Advanced Macroeconomics (cod. 20285)
## Problem set 2

**Instructors:** Antonella Trigari  
**Teaching Assistant:** Henri Graul  
**A.Y. 2025–26**

*   **Due date:** March $13^{th}$, by 23:59 CET;
*   Write your solutions with a word processor ($\LaTeX$ would be preferred);
*   **Grading** is based on **either Exercise 1 or 2** (randomly chosen) and **Exercise 3**;
*   **Optional** questions will **not be graded**. They serve as additional practice exercises;
*   Please submit your solutions to [henri.graul@unibocconi.it](mailto:henri.graul@unibocconi.it);
*   Submit only **one** pdf for each group, don’t forget to specify the names of the members of the group on the first page. Please also **indicate your names in the document title**, i.e. for example "PS2Graul/Trigari.pdf".

---

## Exercise 1: RBC Model

In this exercise we consider an RBC model. The basic set-up of the economy is as described below.

All markets are perfectly competitive, hence the representative household and the representative firm take as given the output price, normalised to $1$ at each $t$, as well as input prices at each $t$.

### Part 1: No-Ponzi Game Condition (NPGC)

We start with a version of the model where households can only save in the form of a risk-free one-period bond: each unit bought in period $t$ pays a certain gross return $R_{t+1}$ in $t+1$. Further, there is no uncertainty. Hence, the representative household problem is given by:

$$
\max_{\{c_t, n_t, b_{t+1}\}_{t=0}^\infty} \sum_{t=0}^{\infty} \beta^t \left[ \frac{c_t^{1-\sigma} - 1}{1-\sigma} - \frac{n_t^{1+\varphi}}{1+\varphi} \right]
$$

s.t.
$$
\begin{cases}
c_t + b_{t+1} = w_t n_t + R_t b_t \\
b_0 \text{ given}
\end{cases}
$$

where $c_t$ is consumption, $n_t$ the amount of labor supplied by the household, $w_t$ is the real wage, $b_t$ is the amount of bonds held at the beginning of period $t$, and $R_t$ is the return on bonds purchased at $t-1$, $b_t$. In this section, we consider a fixed gross interest rate on bonds, i.e., $R_t = R, \; \forall t \ge 0$.

We will specify the firm problem below, in Part 2.

**1.** Under the assumptions above, the flow budget constraint of the household is given by:
$$
c_t + b_{t+1} = w_t n_t + R b_t
$$
By forward-iterating the flow budget constraint, derive the lifetime (intertemporal) budget constraint, i.e., an expression equating the present value (PV) of consumption to the initial wealth plus the PV of labor income, together with a limit term.
*[HINT: The flow budget constraints at $t=0$ and $t=1$ are:*
$$
c_0 + b_1 = w_0 n_0 + R b_0
$$
$$
c_1 + b_2 = w_1 n_1 + R b_1
$$
*Combine the previous equations to get rid of $b_1$. Iterate on this procedure until $t=T$, take the limit $T \to \infty$. You should end up with an equation that contains three terms: (i) the PV of consumption, (ii) the PV of labor income, and (iii) a limit term related to the No-Ponzi game condition introduced below.]*

**2.** The No-Ponzi game (NPGC) imposes a restriction on the limit term derived above:
$$
\lim_{T \to \infty} \left(\frac{1}{R}\right)^T b_T = 0
$$
Explain in words what this condition rules out, noting that $(1/R)^T b_T$ is the present value of bond holdings at date $T$. Why is such a condition needed in an infinite-horizon model with borrowing and lending? Finally, discuss why the household problem may fail to admit a bounded solution if the NPGC is not imposed.
*[HINT: A sequence $\{x_t\}_{t=0}^\infty$ is bounded if $\exists M < \infty$ such that $|x_t| \le M$ for all $t$. Start from a feasible candidate optimum, then increase $c_0$ slightly and adjust only $\{b_t\}$ to keep the flow constraints satisfied; without the NPGC, ask whether this deviation can remain feasible.]*

### Part 2: Stochastic environment and capital

Next, we add two elements. First, we introduce uncertainty in the form of an exogenous productivity term in technology, $z_t$. Second, we add capital. The capital accumulation decision is made by the household, which implies the following updated maximization problem for the representative household:

$$
\max_{\{c_t, n_t, b_{t+1}, k_{t+1}\}_{t=0}^\infty} \mathbb{E}_0 \sum_{t=0}^{\infty} \beta^t \left[ \frac{c_t^{1-\sigma} - 1}{1-\sigma} - \frac{n_t^{1+\varphi}}{1+\varphi} \right]
$$

s.t.
$$
\begin{cases}
c_t + b_{t+1} + k_{t+1} = w_t n_t + R_t b_t + R^k_t k_t + (1 - \delta)k_t \\
k_0, b_0 \text{ given}
\end{cases}
$$

where $k_t$ is the capital stock at the beginning of period $t$, $\delta$ is the capital depreciation rate, and $R^k_t$ is the rental rate of capital.

The representative firm solves the following static problem:
$$
\max_{y_t, n_t, k_t} \{y_t - w_t n_t - R^k_t k_t\}
$$
s.t.
$$
y_t = z_t n_t^{1-\alpha} k_t^\alpha
$$
where $y_t$ is the amount of output produced, $n_t$ the amount of labor used in production, $k_t$ the amount of capital used in production and $z_t$ an exogenous productivity term.

**3.** Formulate the household’s maximization problem in sequential form, using the event-history notation covered in class. Specifically, let the exogenous productivity term depend on a generic stochastic process, i.e., $z_t(s^t)$. Hence, productivity at time $t$ may depend on the entire history of stochastic events $s^t$.

**4.** Now, consider the household problem in recursive form. Does this require imposing more structure on the stochastic nature of the exogenous productivity term $z_t$? Provide an example of a stochastic process for $z_t$ that allows for the household problem to be written in recursive form. How can the event-history notation be modified to reflect this new structure?

**5.** Given the stochastic process for $z_t$ provided by you in the previous point, write the household’s problem in recursive form and derive the associated optimality conditions. Clearly identify the exogenous and endogenous state variables, and the control variables in the problem. Use the envelope conditions to derive the Euler equations, and comment on all the optimality conditions you obtain.

**6.** Argue that $b_t = 0$, $\forall t \ge 0$, in the stochastic economy. Carefully explain the role that $R_t$ plays for this result to hold. Does this condition ($b_t = 0$, $\forall t$) also hold in the deterministic economy discussed in part 1, where there is no capital?
*[HINT: Recall that bond supply must equal bond demand, and that all households make the same decisions since they are identical, or equivalently, there is a single representative household.]*

**7.** Derive the optimality condition for labor and capital demand of the representative firm, and provide the economic intuition.

---

## Exercise 2: Preferences, Curvature, and Labor Supply Elasticities

This exercise studies how the curvature of preferences over consumption shapes macroeconomic behavior. In Part A, we focus on the Constant Relative Risk Aversion (CRRA) specification for the consumption component of utility and show how its curvature parameter governs both risk attitudes and intertemporal substitution. In Part B, we turn to labor supply and examine how wage changes affect hours worked through substitution and income effects. Together, the two parts illustrate how preference curvature influences both consumption dynamics and labor supply elasticities in standard macroeconomic models.

Consider a representative household with preferences
$$
\sum_{t=0}^{\infty} \beta^t u(c_t, n_t), \quad \beta \in (0, 1)
$$
where the period utility function satisfies $u_c > 0$, $u_{cc} < 0$,
$$
\lim_{c \to 0} u_c = \infty, \quad \lim_{c \to \infty} u_c = 0
$$
as well as $u_n < 0$, $u_{nn} < 0$, with
$$
\lim_{n \to 0} u_n = 0, \quad \lim_{n \to \infty} u_n = -\infty.
$$

In particular, we assume the following functional form:
$$
u(c_t, n_t) = \frac{c_t^{1-\sigma} - 1}{1-\sigma} - \frac{n_t^{1+\varphi}}{1+\varphi}, \quad \sigma > 0, \varphi > 0.
$$
As shown in PS1, in the limit as $\sigma \to 1$, utility converges to
$$
u(c_t, n_t) = \log c_t - \frac{n_t^{1+\varphi}}{1+\varphi}.
$$

### Part A: Constant Relative Risk Aversion (CRRA) Utility

In this section, we focus on the properties of the utility function with respect to consumption.

**1.** The coefficient of Relative Risk Aversion (RRA) is defined as
$$
RRA(c) \equiv -\frac{c \, u_{cc}(c)}{u_c(c)}.
$$
This object summarizes the household’s attitude toward risk: a higher value of $RRA(c)$ corresponds to greater aversion to proportional (percentage) risk.

Consider a household with certain consumption $\bar{c}$. Suppose instead the household faces a small proportional consumption gamble that pays
$$
\bar{c}(1 + \rho) \quad \text{or} \quad \bar{c}(1 - \rho)
$$
with equal probability, where $\rho > 0$ is small.
The (relative) risk premium $\pi$ is defined as the fraction of $\bar{c}$ that the household would be willing to give up — accepting $\bar{c}(1 - \pi)$ for sure — in order to avoid the gamble. For small $\rho$, the following approximation holds:
$$
\pi \approx \frac{1}{2} RRA(\bar{c}) \rho^2.
$$
You may take this approximation as given. Compute $u_c(c)$ and $u_{cc}(c)$ for the CRRA utility function and show that
$$
RRA(c) = \sigma \quad \text{for all } c > 0.
$$
Using the approximation above, explain in words what it means that $RRA(c)$ is constant under CRRA preferences. In particular, what does $RRA(c) = \sigma$ imply about how the willingness to pay to avoid a fixed percentage consumption gamble depends on the level of consumption $\bar{c}$?

**2.** Define lifetime utility as
$$
U(c, n) = \sum_{t=0}^{\infty} \beta^t u(c_t, n_t).
$$
The marginal rate of substitution between consumption at $t$ and $t+1$ is
$$
MRS_{t, t+1} = \frac{\partial U / \partial c_t}{\partial U / \partial c_{t+1}}.
$$
*(Note: As defined in standard macroeconomic contexts, sometimes it's written upside down, please pay attention to your text's specific formulation).* The intertemporal elasticity of substitution (IES) is defined as
$$
IES \equiv \left( \frac{d \ln MRS_{t, t+1}}{d \ln \left( \frac{c_{t+1}}{c_t} \right)} \right)^{-1}.
$$
In words, the IES measures the willingness to reallocate consumption across time: it captures how responsive the consumption growth rate $c_{t+1}/c_t$ is to changes in the marginal rate of substitution between $t$ and $t+1$.
Show that under CRRA utility the IES is
$$
IES = \frac{1}{\sigma}.
$$
Briefly interpret the result: what does a larger value of $\sigma$ imply about (i) the curvature of $u(c)$ and (ii) the household’s willingness to substitute consumption across time?

**3.** Take as given the Euler equation
$$
\frac{u_c(c_{t+1}, n_{t+1})}{u_c(c_t, n_t)} = \frac{1}{\beta R_{t+1}}.
$$
Using the definition of $MRS_{t, t+1}$ above, show that the Euler equation implies
$$
MRS_{t, t+1} = R_{t+1}.
$$
Finally, explain how the IES governs the responsiveness of the consumption growth rate $c_{t+1}/c_t$ to changes in the intertemporal price $1/R_{t+1}$ (or changes in $R_{t+1}$). In particular, how does a larger IES affect the sensitivity of consumption growth to movements in interest rates?

### Part B: Labor Supply, Marshallian vs. Frisch Elasticities

We now apply the preference specification above to the household’s labor supply decision. Suppose that at date $t$ the household faces the within-period budget constraint
$$
c_t = w_t n_t + I_t,
$$
where $w_t$ denotes the real wage and
$$
I_t \equiv R_t a_t - a_{t+1}
$$
is non-labor income net of savings.

**4.** Derive the intratemporal first-order condition characterizing optimal labor supply. Use this condition to obtain a labor supply rule of the form
$$
n_t = n(c_t, w_t).
$$
How does labor supply $n_t$ respond to a change in the wage $w_t$ when consumption $c_t$ is held fixed? How does $n_t$ respond to a change in consumption $c_t$ when the wage $w_t$ is held fixed?

**5.** The Marshallian elasticity (or uncompensated elasticity) of labor supply with respect to the wage is defined as
$$
\epsilon^M_t \equiv \frac{d \log n_t}{d \log w_t},
$$
where the total derivative allows $c_t$ to adjust in response to $w_t$, holding $I_t$ fixed. This elasticity measures the total response of hours worked to a wage change, incorporating both substitution and income effects. Because the wage change is not offset by a compensating change in non-labor income, this elasticity is referred to as uncompensated.

Using your labor supply rule, express $\epsilon^M_t$ in terms of $\frac{d \log c_t}{d \log w_t}$.

Next, holding $I_t$ fixed, totally differentiate the budget constraint to show that
$$
\frac{d \log c_t}{d \log w_t} = s^L_t + s^L_t \frac{d \log n_t}{d \log w_t},
$$
where
$$
s^L_t \equiv \frac{w_t n_t}{c_t} \in [0, 1]
$$
denotes the labor income share in consumption. Provide an economic interpretation of each term on the right-hand side.

Combine these results to solve for the Marshallian elasticity $\epsilon^M_t$ as a function of $\sigma$, $\varphi$, and $s^L_t$. Carefully interpret the assumption that $I_t$ is held fixed in light of the households optimization problem. Next, provide an intuitive discussion of the signs of the substitution and income effects. Argue that $\epsilon^M_t$ may be either positive or negative, depending on which effect dominates (you are not required to separately identify the substitution and income effects).
Finally, consider the special case $s^L_t = 1$. Under what condition on $\sigma$ do the substitution and income effects exactly offset each other?

**6.** The Marshallian elasticity is fundamentally a static concept: it holds fixed the intertemporal allocation of resources. It is therefore particularly well suited for analyzing wage changes that are perceived as permanent. In your own words, briefly explain why a permanent wage change is the natural case for a static Marshallian elasticity.

When wage changes are temporary and, importantly, induce adjustments in saving behavior, a different concept of elasticity is required that takes into account the shift in saving patterns. This motivates the Frisch elasticity. The Frisch elasticity measures the response of hours worked to a wage change while holding the marginal utility of wealth constant:
$$
\epsilon^F_t \equiv \left. \frac{\partial \log n_t}{\partial \log w_t} \right|_{\lambda_t}, \quad \lambda_t \equiv u_c(c_t, n_t).
$$
It is the relevant concept to analyze how a transitory wage change affects hours. Small enough and temporary wage fluctuations have only a negligible effect on lifetime wealth. Thus it does not impacts the marginal utility of wealth. As a result, the Frisch elasticity is especially useful to assess the implications of wage fluctuations over the business cycle by isolating the intertemporal substitution response.

Show that, for the utility function specified above, holding $\lambda_t$ fixed is equivalent to holding $c_t$ fixed. Compute $\epsilon^F_t$ explicitly as a function of $\varphi$.

**7.** In the given setting, the intertemporal optimality condition, i.e., the Euler equation, is given by:
$$
\frac{c_t^{-\sigma}}{c_{t+1}^{-\sigma}} = \beta R_{t+1}.
$$
Combine this with your labor supply rule obtained in point 4. to obtain the intertemporal labor supply equation. Using the intertemporal labor supply equation, explain how expected wage growth ($w_{t+1}/w_t$) and the discounted return $\beta R_{t+1}$ affect the evolution of hours ($n_{t+1}/n_t$).

---

## Exercise 3: Empirical Exercise

For this exercise, download the following series at monthly frequency from December 2000 through December 2025 from FRED:
*   $V$ = Job Openings: Total Non-Farm (Unit: Level in Thousands, Seasonally Adjusted);
*   $U$ = Unemployment Level (Unit: Thousands of Persons, Seasonally Adjusted);
*   $L$ = Civilian Labor Force Level (Unit: Thousands of Persons, Monthly, Seasonally Adjusted);
*   $U^s$ = Number Unemployed for Less Than 5 Weeks (Unit: Thousands of Persons, Seasonally Adjusted).

### Part 1: Estimating Worker Flows

Consider the following dynamic equation for the level of unemployment:
$$
U_{t+1} - U_t = p^{EU}_t (L_t - U_t) - p^{UE}_t U_t,
$$
where $p^{UE}_t$ is the job finding rate and $p^{EU}_t$ a time-varying separation rate.

**1.** The aim of this exercise is to measure the inflow rate into unemployment ($p^{EU}_t$) and outflow rate from unemployment ($p^{UE}_t$) using the method proposed in "The Cyclical Behavior of Equilibrium Unemployment and Vacancies" by Shimer (*The American Economic Review*, 2005). In your own words, summarize the approach detailed on pages 30–33, and briefly list advantages and limitations of the method.

**2.** Next, calculate the probability of finding a job, $p^{UE}_t$, from December 2000 to December 2025, using data on the unemployment level and the short-term unemployment level, following Shimer’s method.

**3.** Then, for the same period, compute the employment level using data on the labor force level and the unemployment level. With this, along with the short-term unemployment data, recover the separation rate, $p^{EU}_t$, by applying Shimer’s method. Explain why Shimer incorporates the job-finding rate $p^{UE}_t$ in this calculation. Also, define and explain the concept of time-aggregation bias.

**4.** Plot both time series for the job-finding rate and separation rate, and discuss their trends and cyclicality.

### Part 2: The Beveridge Curve

In this exercise, we aim to analyze the Beveridge curve in the US, focusing on how it has evolved in recent years and the potential factors driving these changes.

**1.** Calculate the following labor market variables:
*   **Unemployment Rate:** $u = \frac{U}{L}$
*   **Employment Level:** $E = L \cdot (1 - u)$
*   **Job Openings Rate:** $v = \frac{V}{E + V}$

Create a scatter plot with the unemployment rate ($u$) on the x-axis and the job vacancy rate ($v$) on the y-axis, for the following periods, using the specified colors:
*   Dec 2000 - Dec 2007 (Green)
*   Jan 2008 - June 2009 (Orange)
*   July 2009 - Feb 2020 (Red)
*   March 2020 - April 2022 (Blue)
*   May 2022 - Dec 2025 (Black)

After plotting, discuss the similarities and, more importantly, the differences between these periods. Relate the movements along the Beveridge curve to the business cycles. Are there any significant shifts between these periods?

**2.** Read "The Shifting Reasons for Beveridge Curve Shifts" by Barlevy et. al (*Journal of Economic Perspectives*, 2024) with a focus on pages 94–97. How do the authors explain the shifts of the Beveridge curve during the Covid recession and recovery period (represented by the blue data points in your figure) and the unusual shape during the monetary tightening phase (represented by the black data points in your figure)? What is meant by the "Great Resignation"? How and why was the recovery from the pandemic recession different from past recoveries in terms of the Beveridge curve?
