FactoryBot.define do
  factory :mushroom do
    category { Mushroom.categories.keys.sample }
    cap_shape { Mushroom.cap_shapes.keys.sample }
    cap_surface { Mushroom.cap_surfaces.keys.sample }
    cap_color { Mushroom.cap_colors.keys.sample }
    odor { Mushroom.odors.keys.sample }
    bruises { [true, false].sample }
    gill_attachment { Mushroom.gill_attachments.keys.sample }
    gill_spacing { Mushroom.gill_spacings.keys.sample }
    gill_size { Mushroom.gill_sizes.keys.sample }
    gill_color { Mushroom.gill_colors.keys.sample }
    stalk_shape { Mushroom.stalk_shapes.keys.sample }
    stalk_root { Mushroom.stalk_roots.keys.sample }
    stalk_surface_above_ring { Mushroom.stalk_surface_above_rings.keys.sample }
    stalk_surface_below_ring { Mushroom.stalk_surface_below_rings.keys.sample }
    stalk_color_above_ring { Mushroom.stalk_color_above_rings.keys.sample }
    stalk_color_below_ring { Mushroom.stalk_color_below_rings.keys.sample }
    veil_type { Mushroom.veil_types.keys.sample }
    veil_color { Mushroom.veil_colors.keys.sample }
    ring_number { Mushroom.ring_numbers.keys.sample }
    ring_type { Mushroom.ring_types.keys.sample }
    spore_print_color { Mushroom.spore_print_colors.keys.sample }
    population { Mushroom.populations.keys.sample }
    habitat { Mushroom.habitats.keys.sample }
    
    trait :cap_shape do
      cap_shape { :bell }
    end

    factory :bell_cap_shaped_mushroom, traits: [ :cap_shape ]
  end
end
