# All outgoing api calls are wrapped around ApiHit, this module defines the wrapper methods through metaprogramming rather than doing it individually

module Wrapper
  def wrap_with_api_hit(*methods)
    methods.each do |method|
      define_method("#{method}_wrapper") do
        puts query
        true
      end
    end
  end
end
