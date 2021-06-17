#!/bin/sh

set -e

gem install rubocop
# TODO: enable this on our repo and use it
# gem install rubocop-performance
gem install rubocop-rails

ruby /action/lib/index.rb
