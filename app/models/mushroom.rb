class Mushroom < ApplicationRecord
  enum cap_shape: { bell: 'b',
                    conical: 'c',
                    convex: 'x',
                    flat: 'f',
                    knobbed: 'k',
                    sunken: 's' },
                    _suffix: true
  validates :cap_shape, inclusion: { in: cap_shapes.keys }

  enum cap_surface: { fibrous: 'f',
                      grooves: 'g',
                      scaly: 'y',
                      smooth: 's' },
                      _suffix: true
  validates :cap_surface, inclusion: { in: cap_surfaces.keys }

  enum cap_color: { brown: 'n',
                    buff: 'b',
                    cinnamon: 'c',
                    gray: 'g',
                    green: 'r',
                    pink: 'p',
                    purple: 'u',
                    red: 'e',
                    white: 'w',
                    yellow: 'y' },
                    _suffix: true
  validates :cap_color, inclusion: { in: cap_colors.keys }

  enum odor: { almond: 'a',
               anise: 'l',
               creosote: 'c',
               fishy: 'y',
               foul: 'f',
               musty: 'm',
               none: 'n',
               pungent: 'p',
               spicy: 's' },
               _suffix: true
  validates :odor, inclusion: { in: odors.keys }

  enum gill_attachment: { attached: 'a',
                          descending: 'd',
                          free: 'f',
                          notched: 'n' },
                          _suffix: true
  validates :gill_attachment, inclusion: { in: gill_attachments.keys }

  enum gill_spacing: { close: 'c',
                       crowded: 'w',
                       distant: 'd' },
                       _suffix: true
  validates :gill_spacing, inclusion: { in: gill_spacings.keys }

  enum gill_size: { broad: 'b', narrow: 'n' },
    _suffix: true

  validates :gill_size, inclusion: { in: gill_sizes.keys }

  enum gill_color: { black: 'k',
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
                     yellow: 'y' },
                     _suffix: true
  validates :gill_color, inclusion: { in: gill_colors.keys }

  enum stalk_shape: { enlarging: 'e',
                      tapering: 't' },
                      _suffix: true
  validates :stalk_shape, inclusion: { in: stalk_shapes.keys }

  enum stalk_root: { bulbous: 'b',
                     club: 'c',
                     cup: 'u',
                     equal: 'e',
                     rhizomorphs: 'z',
                     rooted: 'r',
                     missing: '?' },
                     _suffix: true
  validates :stalk_root, inclusion: { in: stalk_roots.keys }

  enum stalk_surface_above_ring: { fibrous: 'f',
                                   scaly: 'y',
                                   silky: 'k',
                                   smooth: 's' },
                                   _suffix: true
  validates :stalk_surface_above_ring, inclusion: { in: stalk_surface_above_rings.keys }

  enum stalk_surface_below_ring: { fibrous: 'f',
                                   scaly: 'y',
                                   silky: 'k',
                                   smooth: 's' },
                                   _suffix: true
  validates :stalk_surface_below_ring, inclusion: { in: stalk_surface_below_rings.keys }

  enum stalk_color_above_ring: { brown: 'n',
                                 buff: 'b',
                                 cinnamon: 'c',
                                 gray: 'g',
                                 orange: 'o',
                                 pink: 'p',
                                 red: 'e',
                                 white: 'w',
                                 yellow: 'y' },
                                 _suffix: true
  validates :stalk_color_above_ring, inclusion: { in: stalk_color_above_rings.keys }

  enum stalk_color_below_ring: { brown: 'n',
                                 buff: 'b',
                                 cinnamon: 'c',
                                 gray: 'g',
                                 orange: 'o',
                                 pink: 'p',
                                 red: 'e',
                                 white: 'w',
                                 yellow: 'y' },
                                 _suffix: true
  validates :stalk_color_below_ring, inclusion: { in: stalk_color_below_rings.keys }

  enum veil_type: { partial: 'p',
                    universal: 'u' },
                    _suffix: true
  validates :veil_type, inclusion: { in: veil_types.keys }

  enum veil_color: { brown: 'n',
                     orange: 'o',
                     white: 'w',
                     yellow: 'y' },
                     _suffix: true
  validates :veil_color, inclusion: { in: veil_colors.keys }

  enum ring_number: { none: 'n',
                      one: 'o',
                      two: 't' },
                      _suffix: true
  validates :ring_number, inclusion: { in: ring_numbers.keys }

  enum ring_type: { cobwebby: 'c',
                    evanescent: 'e',
                    flaring: 'f',
                    large: 'l',
                    none: 'n',
                    pendant: 'p',
                    sheathing: 's',
                    zone: 'z' },
                    _suffix: true
  validates :ring_type, inclusion: { in: ring_types.keys }

  enum spore_print_color: { black: 'k',
                            brown: 'n',
                            buff: 'b',
                            chocolate: 'h',
                            green: 'r',
                            orange: 'o',
                            purple: 'u',
                            white: 'w',
                            yellow: 'y' },
                            _suffix: true
  validates :spore_print_color, inclusion: { in: spore_print_colors.keys }

  enum population: { abundant: 'a',
                     clustered: 'c',
                     numberous: 'n',
                     scattered: 's',
                     several: 'v',
                     solitary: 'y' },
                     _suffix: true
  validates :population, inclusion: { in: populations.keys }

  enum habitat: { grasses: 'g',
                  leaves: 'l',
                  meadows: 'm',
                  paths: 'p',
                  urban: 'u',
                  waste: 'w',
                  woods: 'd' },
                  _suffix: true
  validates :habitat, inclusion: { in: habitats.keys }
end
