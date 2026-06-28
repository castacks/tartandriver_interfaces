# message for MPPI solutions (This should be consumed by viz/low-level controllers for execution on robot)
std_msgs/Header header

# position of the bin origin
geometry_msgs/Point position

# list of headings (rad, relative to the frame in header)
float32[] headings

# (rad) width of radial bin
float32 binwidth

# score per bin
float32[] scores