module OpenSolid.Core.Direction3d
  ( none
  , x
  , y
  , z
  , components
  , normalDirection
  , transformedBy
  , negated
  , times
  ) where


import OpenSolid.Core exposing (..)
import OpenSolid.Core.Math3d as Math3d


none: Direction3d
none =
  Direction3d 0 0 0


x: Direction3d
x =
  Direction3d 1 0 0


y: Direction3d
y =
  Direction3d 0 1 0


z: Direction3d
z =
  Direction3d 0 0 1


components: Direction3d -> (Float, Float, Float)
components direction =
  (direction.x, direction.y, direction.z)


normalDirection: Direction3d -> Direction3d
normalDirection =
  Math3d.perpendicularDirection


transformedBy: Transformation3d -> Direction3d -> Direction3d
transformedBy =
  fst


negated: Direction3d -> Direction3d
negated =
  Math3d.negated


times: Float -> Direction3d -> Vector3d
times =
  Math3d.times