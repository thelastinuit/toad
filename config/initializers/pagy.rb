# encoding: utf-8
# frozen_string_literal: true

require 'pagy/extras/headers'
Pagy::VARS[:headers] = { page: 'Current-Page', items: 'Page-Items', count: 'Total-Count', pages: 'Total-Pages' } # default

require 'pagy/extras/shared'
require 'pagy/extras/metadata'
Pagy::VARS[:metadata] = [:scaffold_url, :count, :page, :prev, :next, :last]
