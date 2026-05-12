# VoxelCostGrid
# Sparse per-voxel cost + classification output of the Week 3 cost-grid
# pipeline (roughness + inclination cost, riser fill, Z-clearance, XY-clearance,
# optional despeckle).  Carries everything the 3D RRT needs so the planner
# does NOT re-derive normals / drivable / cost.

std_msgs/Header header

perception_interfaces/VoxelGridMetadata metadata

# Number of occupied voxels reported in the flat arrays below.
uint64 num_voxels

# Grid indices flattened row-major: size 3*num_voxels, triplets (i,j,k).
int32[] grid_indices_flat

# Per-voxel cost multiplier: 0 = impassable, >0 = drivable cost (higher = worse).
float32[] cost

# Per-voxel flag bitfield; see constants below.
uint8[] flags

# Per-voxel SurfaceType enum (0=FLOOR, 1=TRAVERSABLE_SLOPE, 2=WALL,
# 3=CEILING, 4=OBSTACLE, 5=UNCLASSIFIED).
int32[] surface_type

# Per-voxel inclination angle in degrees (0 = horizontal, 90 = vertical).
# Carried alongside cost so visualization nodes can render slope maps
# without re-deriving normals.
float32[] inclination_deg

# Per-voxel roughness: std of signed distance to the best-fit PCA plane of
# the local kernel_size^3 neighborhood (meters). Exposed for visualization
# and diagnostics; the cost grid already folds roughness into `cost` above.
float32[] roughness

# --- Flag bits ---
uint8 FLAG_DRIVABLE     = 1
uint8 FLAG_Z_KILLED     = 2
uint8 FLAG_XY_KILLED    = 4
uint8 FLAG_RISER_FILLED = 8
