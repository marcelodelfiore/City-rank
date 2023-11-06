# frozen_string_literal: true

require 'spec_helper'
require 'city_rank'

# rubocop:disable Metrics/BlockLength
describe CityRank do
  let(:full_cities) do
    [
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
  end

  it 'when using a regular cities list' do
    expect(CityRank.new.sort_by_rank(full_cities)).to eq(
      [
        {
          name: 'New York',
          population: 8_175_133,
          rank: 1
        },
        {
          name: 'Los Angeles',
          population: 3_792_621,
          rank: 2
        },
        {
          name: 'Chicago',
          population: 2_695_598,
          rank: 3
        },
        {
          name: 'Houston',
          population: 2_099_451,
          rank: 4
        },
        {
          name: 'Philadelphia',
          population: 1_526_006,
          rank: 5
        }
      ]
    )
  end

  it 'when using an empty cities list' do
    expect(CityRank.new.sort_by_rank([])).to eq([])
  end
end
# rubocop:enable Metrics/BlockLength
