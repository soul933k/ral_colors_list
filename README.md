# RalColorsList

List of Classic RAL Colors.

Check lib/data/ral_colors.yml for the data.

It contains RAL Name, HEX Value (sRGB spectre), English name, Ukrainian name



## Installation

    $ gem install ral_colors_list

## Usage

    $ RalColorsList.get_data('1001')
    $ => { ral_name: 'RAL 1001', hex_value: 'D0B084', english_name: 'Beige', ukrainian_name: 'Бежевий' }

    $ RalColorsList.get_value('1001', :hex_value)
    $ => 'D0B084'

## Sources

[sRGB spectre HEX Values and English Names ](https://en.wikipedia.org/wiki/List_of_RAL_colours)

[Ukrainian Names ](https://tseivo.com/b/clrad/t/knbooa4pog)

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).