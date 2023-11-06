# frozen_string_literal: true

# rubocop:disable Style/Documentation
class CityRank
  def sort_by_rank(cities)
    return [] if cities.empty?

    sorted = cities.sort_by { |city| [city[:population], city[:name]] }.reverse
    sorted.map.with_index { |city, idx| city.merge({ rank: idx + 1 }) }
  end
end
# rubocop:enable Style/Documentation
