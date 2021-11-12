#
# Copyright: 2666680 Ontario Inc.
# Reason: Provide function to separate vfios
#
import ../types

func separateVfios*(lock: Lock): (seq[Vfio], seq[Vfio]) =
  ## separateVfios - Separates vfios into net and gpu vfios
  ## 
  ## Inputs
  ## @lock - Lock object to get vfios
  ## 
  ## Returns
  ## result - tuple containing two sequences
  ##  ([gpuVfios], [netVfios])

  for vfio in lock.vfios:
    if isGpu(vfio):
      result[0] &= vfio
    elif isNet(vfio):
      result[1] &= vfio
