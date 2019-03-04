require  "#{Rails.root}/app/services/space_x_service"

class SpaceXLaunches

  def self.all
    response = space_x_service.get_all(model: 'launches')
  end

  def self.find(options={})
    response = space_x_service.query(model: 'launches', id: options[:id])
  end

  def self.where(option={})

  end

  def self.space_x_service
    SpaceXService.new
  end
end
