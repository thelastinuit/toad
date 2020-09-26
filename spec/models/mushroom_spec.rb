require 'rails_helper'

describe Mushroom, type: :model do
  it {
    should define_enum_for(:category)
      .with_suffix
      .with_values(edible: 'e', 
                   poisonous: 'p')
      .backed_by_column_of_type(:enum)
  }

  it {
    should allow_values(:edible, :poisonous)
      .for(:category)
  }

  it {
    should define_enum_for(:cap_shape)
      .with_suffix
      .with_values(bell: 'b',
                   conical: 'c',
                   convex: 'x',
                   flat: 'f',
                   knobbed: 'k',
                   sunken: 's')
      .backed_by_column_of_type(:enum)
  }

  it {
    should allow_values(:bell, :conical, :convex, :flat, :knobbed, :sunken)
      .for(:cap_shape)
  }

  it {
    should define_enum_for(:cap_surface)
      .with_suffix
      .with_values(fibrous: 'f',
                   grooves: 'g',
                   scaly: 'y',
                   smooth: 's')
      .backed_by_column_of_type(:enum)
  }

  it {
    should allow_values(:fibrous, :grooves, :scaly, :smooth)
      .for(:cap_surface)
  }

  it {
    should define_enum_for(:cap_color)
      .with_suffix
      .with_values(brown: 'n',
                   buff: 'b',
                   cinnamon: 'c',
                   gray: 'g',
                   green: 'r',
                   pink: 'p',
                   purple: 'u',
                   red: 'e',
                   white: 'w',
                   yellow: 'y')
      .backed_by_column_of_type(:enum)
  }

  it {
    should allow_values(:brown, :buff, :cinnamon, :gray, :green, :pink, :purple, :red, :white, :yellow)
      .for(:cap_color)
  }

  it {
    should define_enum_for(:odor)
      .with_suffix
      .with_values(almond: 'a',
                   anise: 'l',
                   creosote: 'c',
                   fishy: 'y',
                   foul: 'f',
                   musty: 'm',
                   none: 'n',
                   pungent: 'p',
                   spicy: 's')
      .backed_by_column_of_type(:enum)
  }

  it {
    should allow_values(:almond, :anise, :creosote, :fishy, :foul, :musty, :none, :pungent, :spicy)
      .for(:odor)
  }

  it {
    should define_enum_for(:gill_attachment)
      .with_suffix
      .with_values(attached: 'a',
                   descending: 'd',
                   free: 'f',
                   notched: 'n')
      .backed_by_column_of_type(:enum)
  }

  it {
    should allow_values(:attached,
                        :descending,
                        :free,
                        :notched)
      .for(:gill_attachment)
  }

  it {
    should define_enum_for(:gill_spacing)
      .with_suffix
      .with_values(close: 'c',
                   crowded: 'w',
                   distant: 'd')
      .backed_by_column_of_type(:enum)
  }

  it {
    should allow_values(:close,
                        :crowded,
                        :distant)
      .for(:gill_spacing)
  }

  it {
    should define_enum_for(:gill_size)
      .with_suffix
      .with_values(broad: 'b', narrow: 'n')
      .backed_by_column_of_type(:enum)
  }

  it {
    should allow_values(:broad, :narrow)
      .for(:gill_size)
  }

  it {
    should define_enum_for(:gill_color)
      .with_suffix
      .with_values(black: 'k',
                   brown: 'n',
                   buff: 'b',
                   chocolate: 'h',
                   gray: 'g',
                   green: 'r',
                   orange: 'o',
                   pink: 'p',
                   purple: 'u',
                   red: 'e',
                   white: 'w',
                   yellow: 'y')
      .backed_by_column_of_type(:enum)
  }

  it {
    should allow_values(:black,
                        :brown,
                        :buff,
                        :chocolate,
                        :gray,
                        :green,
                        :orange,
                        :pink,
                        :purple,
                        :red,
                        :white,
                        :yellow)
      .for(:gill_color)
  }

  it {
    should define_enum_for(:stalk_shape)
      .with_suffix
      .with_values(enlarging: 'e',
                   tapering: 't')
      .backed_by_column_of_type(:enum)
  }

  it {
    should allow_values(:enlarging, :tapering)
      .for(:stalk_shape)
  }

  it {
    should define_enum_for(:stalk_root)
      .with_suffix
      .with_values(bulbous: 'b',
                   club: 'c',
                   cup: 'u',
                   equal: 'e',
                   rhizomorphs: 'z',
                   rooted: 'r',
                   missing: '?')
      .backed_by_column_of_type(:enum)
  }

  it {
    should allow_values(:bulbous,
                        :club,
                        :cup,
                        :equal,
                        :rhizomorphs,
                        :rooted,
                        :missing)
      .for(:stalk_root)
  }

  it {
    should define_enum_for(:stalk_surface_above_ring)
      .with_suffix
      .with_values(fibrous: 'f',
                   scaly: 'y',
                   silky: 'k',
                   smooth: 's')
      .backed_by_column_of_type(:enum)
  }

  it {
    should allow_values(:fibrous,
                        :scaly,
                        :silky,
                        :smooth)
      .for(:stalk_surface_above_ring)
  }

  it {
    should define_enum_for(:stalk_surface_below_ring)
      .with_suffix
      .with_values(fibrous: 'f',
                   scaly: 'y',
                   silky: 'k',
                   smooth: 's')
      .backed_by_column_of_type(:enum)
  }

  it {
    should allow_values(:fibrous,
                        :scaly,
                        :silky,
                        :smooth)
      .for(:stalk_surface_below_ring)
  }

  it {
    should define_enum_for(:stalk_color_above_ring)
      .with_suffix
      .with_values(brown: 'n',
                   buff: 'b',
                   cinnamon: 'c',
                   gray: 'g',
                   orange: 'o',
                   pink: 'p',
                   red: 'e',
                   white: 'w',
                   yellow: 'y')
      .backed_by_column_of_type(:enum)
  }

  it {
    should allow_values(:brown,
                        :buff,
                        :cinnamon,
                        :gray,
                        :orange,
                        :pink,
                        :red,
                        :white,
                        :yellow)
      .for(:stalk_color_above_ring)
  }

  it {
    should define_enum_for(:stalk_color_below_ring)
      .with_suffix
      .with_values(brown: 'n',
                   buff: 'b',
                   cinnamon: 'c',
                   gray: 'g',
                   orange: 'o',
                   pink: 'p',
                   red: 'e',
                   white: 'w',
                   yellow: 'y')
      .backed_by_column_of_type(:enum)
  }

  it {
    should allow_values(:brown,
                        :buff,
                        :cinnamon,
                        :gray,
                        :orange,
                        :pink,
                        :red,
                        :white,
                        :yellow)
      .for(:stalk_color_below_ring)
  }

  it {
    should define_enum_for(:veil_type)
      .with_suffix
      .with_values(partial: 'p',
                   universal: 'u')
      .backed_by_column_of_type(:enum)
  }

  it {
    should allow_values(:partial,
                        :universal)
      .for(:veil_type)
  }

  it {
    should define_enum_for(:veil_color)
      .with_suffix
      .with_values(brown: 'n',
                   orange: 'o',
                   white: 'w',
                   yellow: 'y')
      .backed_by_column_of_type(:enum)
  }

  it {
    should allow_values(:brown,
                        :orange,
                        :white,
                        :yellow)
      .for(:veil_color)
  }

  it {
    should define_enum_for(:ring_number)
      .with_suffix
      .with_values(none: 'n',
                   one: 'o',
                   two: 't')
      .backed_by_column_of_type(:enum)
  }

  it {
    should allow_values(:none,
                        :one,
                        :two)
      .for(:ring_number)
  }

  it {
    should define_enum_for(:ring_type)
      .with_suffix
      .with_values(cobwebby: 'c',
                   evanescent: 'e',
                   flaring: 'f',
                   large: 'l',
                   none: 'n',
                   pendant: 'p',
                   sheathing: 's',
                   zone: 'z')
      .backed_by_column_of_type(:enum)
  }

  it {
    should allow_values(:cobwebby,
                        :evanescent,
                        :flaring,
                        :large,
                        :none,
                        :pendant,
                        :sheathing,
                        :zone)
      .for(:ring_type)
  }

  it {
    should define_enum_for(:spore_print_color)
      .with_suffix
      .with_values(black: 'k',
                   brown: 'n',
                   buff: 'b',
                   chocolate: 'h',
                   green: 'r',
                   orange: 'o',
                   purple: 'u',
                   white: 'w',
                   yellow: 'y')
      .backed_by_column_of_type(:enum)
  }

  it {
    should allow_values(:black,
                        :brown,
                        :buff,
                        :chocolate,
                        :green,
                        :orange,
                        :purple,
                        :white,
                        :yellow)
      .for(:spore_print_color)
  }

  it {
    should define_enum_for(:population)
      .with_suffix
      .with_values(abundant: 'a',
                   clustered: 'c',
                   numberous: 'n',
                   scattered: 's',
                   several: 'v',
                   solitary: 'y')
      .backed_by_column_of_type(:enum)
  }

  it {
    should allow_values(:abundant,
                        :clustered,
                        :numberous,
                        :scattered,
                        :several,
                        :solitary)
      .for(:population)
  }

  it {
    should define_enum_for(:habitat)
      .with_suffix
      .with_values(grasses: 'g',
                   leaves: 'l',
                   meadows: 'm',
                   paths: 'p',
                   urban: 'u',
                   waste: 'w',
                   woods: 'd')
      .backed_by_column_of_type(:enum)
  }

  it {
    should allow_values(:grasses,
                        :leaves,
                        :meadows,
                        :paths,
                        :urban,
                        :waste,
                        :woods)
      .for(:habitat)
  }
end
