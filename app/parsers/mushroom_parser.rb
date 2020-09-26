module MushroomParser
  module_function

  def call(params)
    {
      cap_shape: params[:capShape],
      cap_surface: params[:capSurface],
      cap_color: params[:capColor],
      odor: params[:odor],
      gill_attachment: params[:gillAttachment],
      gill_spacing: params[:gillSpacing],
      gill_size: params[:gillSize],
      gill_color: params[:gillColor],
      stalk_shape: params[:stalkShape],
      stalk_root: params[:stalkRoot],
      stalk_surface_above_ring: params[:stalkSurfaceAboveRing],
      stalk_surface_below_ring: params[:stalkSurfaceBelowRing],
      stalk_color_above_ring: params[:stalkColorAboveRing],
      stalk_color_below_ring: params[:stalkColorBelowRing],
      veil_type: params[:veilType],
      veil_color: params[:veilColor],
      ring_number: params[:ringNumber],
      ring_type: params[:ringType],
      spore_print_color: params[:sporePrintColor],
      population: params[:population],
      habitat: params[:habitat]
    }.delete_if { |k, v| v.blank? }
  end
end
