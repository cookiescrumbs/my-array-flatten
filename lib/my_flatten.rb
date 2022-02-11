# Monkey patched Array using mixin so object has my_flatten method
module SillyExtensions
  def my_flatten(out=[])
    self.each { |_i| _i.kind_of?(Array)? _i.my_flatten(out) : out.push(_i) }
    out
  end
end

Array.include SillyExtensions