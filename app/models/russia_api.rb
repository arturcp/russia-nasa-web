class RussiaAPI
  # CACHE = {}

  def self.get(date = Date.current.strftime('%Y-%m-%d'))
    # if CACHE[date].blank?
    #   response = client.get(url(date))
    #   CACHE[date] = JSON.parse(response)
    # end
    #
    # CACHE[date]
    #
    Rails.cache.fetch(date) do
      response = client.get(url(date))
      JSON.parse(response)
    end
  end

  def self.url(date)
    "http://localhost:3001/days?date=#{date}"
  end

  def self.client
    RestClient
  end

  private_class_method :url
  private_class_method :client
end
