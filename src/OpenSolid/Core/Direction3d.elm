module OpenSolid.Core.Direction3d
  ( none
  , x
  , y
  , z
  , components
  , normalDirection
  , transformedBy
  , projectedOntoPlane
  , projectedIntoPlane
  , negated
  , times
  ) where


import OpenSolid.Core exposing (..)
import OpenSolid.Core.Components3d as Components3d
import OpenSolid.Core.Vector2d as Vector2d
import OpenSolid.Core.Vector3d as Vector3d


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
components =
  Components3d.components


normalDirection: Direction3d -> Direction3d
normalDirection =
  Vector3d.normalDirection


transformedBy: Transformation3d -> Direction3d -> Direction3d
transformedBy =
  Vector3d.transformedBy


projectedOntoPlane: Plane3d -> Direction3d -> Direction3d
projectedOntoPlane plane =
  Vector3d.projectedOntoPlane plane >> Vector3d.direction


projectedIntoPlane: Plane3d -> Direction3d -> Direction2d
projectedIntoPlane plane =
  Vector3d.projectedIntoPlane plane >> Vector2d.direction


negated: Direction3d -> Direction3d
negated =
  Components3d.negated


times: Float -> Direction3d -> Vector3d
times =
  Components3d.times
