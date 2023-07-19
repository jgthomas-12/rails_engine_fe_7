class EngineFacade
  def get_merchants
    service = RailsEngineService.new
    request = service.all_merchants
    @merchants = request[:data].map do |request|
      Merchant.new(request)
    end
  end
end