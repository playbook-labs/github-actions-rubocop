#!/bin/sh

set -e

gem install rubocop -v 1.13
gem install rubocop-performance -v 1.11
gem install rubocop-rails -v 2.9

ruby /action/lib/index.rb
