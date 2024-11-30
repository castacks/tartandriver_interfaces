# FeatureImage an Image with an arbitrary amount of channels

std_msgs/Header header

uint32 height
uint32 width
uint32 num_channels

# use a uint8 array because numpy bytes are faster to serialize
uint8[] data