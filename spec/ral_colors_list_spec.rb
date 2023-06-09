# frozen_string_literal: true

require 'rspec'
require 'ral_colors_list'

RSpec.describe RalColorsList do
  describe '.get_data' do
    it 'returns the data associated with the key' do
      expect(RalColorsList.get_data('1001')).to eq({
                                                     ral_name: 'RAL 1001',
                                                     hex_value: 'D0B084',
                                                     english_name: 'Beige',
                                                     ukrainian_name: 'Бежевий'
                                                   })
    end

    it 'returns nil for non-existent key' do
      expect(RalColorsList.get_data('9999')).to be_nil
    end
  end

  describe '.get_value' do
    it 'returns the value associated with the nested key' do
      expect(RalColorsList.get_value('1001', :hex_value)).to eq('D0B084')
    end

    it 'returns nil for non-existent nested key' do
      expect(RalColorsList.get_value('1001', :non_existent_key)).to be_nil
    end

    it 'returns nil for non-existent key' do
      expect(RalColorsList.get_value('9999', :hex_value)).to be_nil
    end
  end
end
