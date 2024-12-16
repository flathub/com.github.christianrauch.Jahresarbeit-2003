#!/usr/bin/env bash

# flatpak install -y flathub org.flatpak.Builder

flatpak run org.flatpak.Builder --force-clean --sandbox --user --install --ccache --repo=repo build-dir com.github.christianrauch.Jahresarbeit-2003.yaml
flatpak run --command=flatpak-builder-lint org.flatpak.Builder --exceptions repo repo
