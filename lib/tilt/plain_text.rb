require 'tilt/template'
require 'tilt/plain'


module Tilt
  # Raw text (no template functionality).
  class PlainTextTemplate < PlainTemplate
    self.default_mime_type = 'text/plain'
  end
end
