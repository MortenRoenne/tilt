require 'contest'
require 'tilt'

class PlainTextTemplateTest < Test::Unit::TestCase
  test "registered for '.plain' files" do
    assert_equal Tilt::PlainTextTemplate, Tilt['test.plain']
  end

  test "loading and evaluating templates on #render" do
    template = Tilt::PlainTextTemplate.new { |t| "Hello World!" }
    assert_equal "Hello World!", template.render
  end

  test "can be rendered more than once" do
    template = Tilt::PlainTextTemplate.new { |t| "Hello World!" }
    3.times { assert_equal "Hello World!", template.render }
  end

  test "doesn't interpolate strings" do
    template = Tilt::PlainTextTemplate.new { |t| 'Hello #{World}!' }
    assert_equal 'Hello #{World}!', template.render
  end

  test "multiline templates" do
    template = Tilt::PlainTextTemplate.new { "Hello\nWorld!\n" }
    assert_equal "Hello\nWorld!\n", template.render
  end
end

