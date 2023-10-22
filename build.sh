#!/usr/bin/env bash
app="com.github.christianrauch.Jahresarbeit-2003"
flatpak-builder build-dir ${app}.yaml
flatpak-builder --user --install --force-clean build-dir ${app}.yaml
flatpak run --command=flatpak-builder-lint org.flatpak.Builder --exceptions manifest ${app}.yaml
