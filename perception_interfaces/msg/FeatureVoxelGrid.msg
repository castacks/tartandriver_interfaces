# FeatureVoxelGrid
# Voxel grid with metadata and features

std_msgs/Header header

perception_interfaces/VoxelGridMetadata metadata

#note that we can "only" represent a cube with ~7.9 million voxels/side
uint64 num_voxels

#number of feature dimensions/voxel
uint64 num_features
string[] feature_keys

#occupied indices (in raster, i.e. [i,j,k] -> (i*Ny*Nz) + (j*Nz) + k )
uint64[] indices

#features corresponding to indices
std_msgs/Float32MultiArray features