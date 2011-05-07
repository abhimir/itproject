class ApiHit

  attr_accessor :service, :start_time, :end_time
  
  def initialize(attributes)
    @service = attributes.delete(:service)
    @start_time = Time.now
  end

  def save
    @end_time = Time.now
    # to db
  end
end
