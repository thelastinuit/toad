require 'swagger_helper'

describe 'Mushrooms API', type: :request, swagger_doc: 'v1/swagger.yaml' do
  path '/mushrooms' do
    get 'Lists mushrooms' do
      tags 'Mushrooms'
      description 'Lists mushrooms'
      consumes 'application/x-www-form-urlencoded'
      produces 'application/vnd.toad.v1+json'
      parameter name: :mushroom, in: :formData, schema: {
        type: :object,
        properties: {
          category: { type: :string, enum: Mushroom.categories.keys },
          capShape: { type: :string, enum: Mushroom.cap_shapes.keys },
          capSurface: { type: :string, enum: Mushroom.cap_surfaces.keys },
          capColor: { type: :string, enum: Mushroom.cap_colors.keys },
          odor: { type: :string, enum: Mushroom.odors.keys },
          bruises: { type: :boolean },
          gillAttachment: { type: :string, enum: Mushroom.gill_attachments.keys },
          gillSpacing: { type: :string, enum: Mushroom.gill_spacings.keys },
          gillSize: { type: :string, enum: Mushroom.gill_sizes.keys },
          gillColor: { type: :string, enum: Mushroom.gill_colors.keys },
          stalkShape: { type: :string, enum: Mushroom.stalk_shapes.keys },
          stalkRoot: { type: :string, enum: Mushroom.stalk_roots.keys },
          stalkSurfaceAboveRing: { type: :string, enum: Mushroom.stalk_surface_above_rings.keys },
          stalkSurfaceBelowRing: { type: :string, enum: Mushroom.stalk_surface_below_rings.keys },
          stalkColorAboveRing: { type: :string, enum: Mushroom.stalk_surface_above_rings.keys },
          stalkColorBelowRing: { type: :string, enum: Mushroom.stalk_color_below_rings.keys },
          veilType: { type: :string, enum: Mushroom.veil_types.keys },
          veilColor: { type: :string, enum: Mushroom.veil_colors.keys },
          ringNumber: { type: :string, enum: Mushroom.ring_numbers.keys },
          ringType: { type: :string, enum: Mushroom.ring_types.keys },
          sporePrintColor: { type: :string, enum: Mushroom.spore_print_colors.keys },
          population: { type: :string, enum: Mushroom.populations.keys },
          habitat: { type: :string, enum: Mushroom.habitats.keys }
        }
      }
      response '200', 'mushrooms listed' do
        examples 'application/json' => {
          mushrooms: [
            {
              category: 'category',
              capShape: 'bell',
              capSurface: 'scaly',
              capColor: 'brown',
              odor: 'anise',
              bruises: 'bruises',
              gillAttachment: 'attached',
              gillSpacing: 'close',
              gillSize: 'narrow',
              gillColor: 'brown',
              stalkShape: 'tapering',
              stalkRoot: 'club',
              stalkSurfaceAboveRing: 'scaly',
              stalkSurfaceBelowRing: 'smooth',
              stalkColorAboveRing: 'orange',
              stalkColorBelowRing: 'gray',
              veilType: 'universal',
              veilColor: 'white',
              ringNumber: 'none',
              ringType: 'large',
              sporePrintColor: 'green',
              population: 'several',
              habitat: 'leaves'
            }
          ]
        }
        let(:mushroom) do
          mushroom = create :bell_cap_shaped_mushroom
          { capShape: mushroom.cap_shape }
        end
        run_test!
      end
    end
  end
end
