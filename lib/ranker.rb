# frozen_string_literal: true

require_relative 'city_rank'

cities = [
  {
    name: 'Philadelphia',
    population: 1_526_006
  },
  {
    name: 'Houston',
    population: 2_099_451
  },
  {
    name: 'Chicago',
    population: 2_695_598
  },
  {
    name: 'Los Angeles',
    population: 3_792_621
  },
  {
    name: 'New York',
    population: 8_175_133
  }
]

results = CityRank.new.sort_by_rank(cities)

p results
