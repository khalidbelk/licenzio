#!/usr/bin/env ruby
version, macos_sha256, linux_sha256, formula_path = ARGV

content = File.read(formula_path)
content.sub!(/pkg_version = ".*"/, %(pkg_version = "#{version}"))

shas = [macos_sha256, linux_sha256]
content.gsub!(/sha256 "[0-9a-f]+"/) { %(sha256 "#{shas.shift}") }

File.write(formula_path, content)
