Subtree testing

## Subtree levels = 2

0.0.0.subtree:
- Tile availability: 11000
- Content availability: -
- Subtree availability: 1000000000000000

Result: 2.0.0.subtree is requested

2.0.0 subtree:
- Tile availability: 11000
- Content availability: 01000
- Subtree availability: -

Result: box_3__0_0.glb is requested

## Subtree levels = 1

0.0.0.subtree:
- Tile availability: 1
- Content availability: -
- Subtree availability: 1000

Result: 1.0.0.subtree is requested

1.0.0 subtree:
- Tile availability: 11000
- Content availability: 01000
- Subtree availability: -

Result: box_2__0_0.glb is NOT requested




