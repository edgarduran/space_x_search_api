require  "#{Rails.root}/app/services/space_x_service"

class SpaceXRockets

  def self.all
    response = space_x_service.get_all(model: 'rockets')
  end

  def self.find(options={})
    response = space_x_service.query(model: 'rockets', id: options[:id])
  end

  def self.space_x_service
    SpaceXService.new
  end
end
