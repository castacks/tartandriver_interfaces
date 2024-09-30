# special map class for valuemaps + 

std_msgs/Header header #so we can rostopic delay
grid_map_msgs/GridMapInfo info #store gridmap data
float64[] headings #headings for each channel of the valuemap

# A [W x H x A] array of valuemap data, where A = |headings|
std_msgs/Float32MultiArray data