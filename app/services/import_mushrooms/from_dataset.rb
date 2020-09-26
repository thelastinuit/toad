require 'csv'

module ImportMushrooms
  module FromSQL
    module_function

    def call
      raise "To be implemented"
    end
  end

  module FromDataset
    module_function

    def call
      Mushroom.destroy_all;
      CSV.foreach('dataset/mushrooms_dataset.csv') do |row|
        Mushroom.create! category: Mushroom.categories.key(row[0]),
          cap_shape: Mushroom.cap_shapes.key(row[1]),
          cap_surface: Mushroom.cap_surfaces.key(row[2]),
          cap_color: Mushroom.cap_colors.key(row[3]),
          bruises: row[4] == 't',
          odor: Mushroom.odors.key(row[5]),
          gill_attachment: Mushroom.gill_attachments.key(row[6]),
          gill_spacing: Mushroom.gill_spacings.key(row[7]),
          gill_size: Mushroom.gill_sizes.key(row[8]),
          gill_color: Mushroom.gill_colors.key(row[9]),
          stalk_shape: Mushroom.stalk_shapes.key(row[10]),
          stalk_root: Mushroom.stalk_roots.key(row[11]),
          stalk_surface_above_ring: Mushroom.stalk_surface_above_rings.key(row[12]),
          stalk_surface_below_ring: Mushroom.stalk_surface_below_rings.key(row[13]),
          stalk_color_above_ring: Mushroom.stalk_color_above_rings.key(row[14]),
          stalk_color_below_ring: Mushroom.stalk_color_below_rings.key(row[15]),
          veil_type: Mushroom.veil_types.key(row[16]),
          veil_color: Mushroom.veil_colors.key(row[17]),
          ring_number: Mushroom.ring_numbers.key(row[18]),
          ring_type: Mushroom.ring_types.key(row[19]),
          spore_print_color: Mushroom.spore_print_colors.key(row[20]),
          population: Mushroom.populations.key(row[21]),
          habitat: Mushroom.habitats.key(row[22])
      end
    end
  end
end
