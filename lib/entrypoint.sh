#!/bin/sh

set -e

gem install rubocop
# TODO: enable this on our repo and use it
# gem install rubocop-performance
gem install rails -v 5.2.6
gem install rubocop-rails

ruby /action/lib/index.rb
