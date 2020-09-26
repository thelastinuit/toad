module MushroomSerializer
  module_function

  def parse(mushroom)
    {
      capShape: mushroom.cap_shape,
      capSurface: mushroom.cap_surface,
      capColor: mushroom.cap_color,
      odor: mushroom.odor,
      gillAttachment: mushroom.gill_attachment,
      gillSpacing: mushroom.gill_spacing,
      gillSize: mushroom.gill_size,
      gillColor: mushroom.gill_color,
      stalkShape: mushroom.stalk_shape,
      stalkRoot: mushroom.stalk_root,
      stalkSurfaceAboveRing: mushroom.stalk_surface_above_ring,
      stalkSurfaceBelowRing: mushroom.stalk_surface_below_ring,
      stalkColorAboveRing: mushroom.stalk_color_above_ring,
      stalkColorBelowRing: mushroom.stalk_color_below_ring,
      veilType: mushroom.veil_type,
      veilColor: mushroom.veil_color,
      ringNumber: mushroom.ring_number,
      ringType: mushroom.ring_type,
      sporePrintColor: mushroom.spore_print_color,
      population: mushroom.population,
      habitat: mushroom.habitat
    }.delete_if { |k, v| v.blank? }
  end
end
