# message for MPPI solutions (This should be consumed by viz/low-level controllers for execution on robot)
std_msgs/Header header

# number of dims in state
int32 state_dim

# number of dims in control
int32 control_dim

# number of steps in control horizon
int32 h

# time discretization
float32 dt

# cost of optimized solution
float32 solution_cost

# whether solution violates any constraints
bool solution_feasible

# list of cost terms
string[] cost_terms

# costs for each cost term at the optimal solution
float32[] solution_term_cost

# feasibility for each cost term at the optimal solution
bool[] solution_term_feasible

#Use generic multiarrays for states/costs as this can vary based on the model
std_msgs/Float32MultiArray solution_states
std_msgs/Float32MultiArray solution_controls

# (optionally) also provide some random samples for viz

# number of random samples
int32 k

std_msgs/Float32MultiArray random_states
std_msgs/Float32MultiArray random_controls