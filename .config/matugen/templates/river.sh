#!/bin/sh

riverctl border-color-focused 0x{{ colors.primary.default.hex_stripped }}
riverctl border-color-unfocused 0x{{ colors.on_primary.default.hex_stripped }}00
riverctl background-color 0x{{ colors.surface.default.hex_stripped }}
