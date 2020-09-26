class CreateMushrooms < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
      CREATE TYPE mushroom_category AS ENUM ('p', 'e');
      CREATE TYPE mushroom_cap_shape AS ENUM ('b', 'c', 'x', 'f', 'k', 's');
      CREATE TYPE mushroom_cap_surface AS ENUM ('f', 'g', 'y', 's');
      CREATE TYPE mushroom_cap_color AS ENUM ('n', 'b', 'c', 'g', 'r', 'p', 'u', 'e', 'w', 'y');
      CREATE TYPE mushroom_odor AS ENUM ('a', 'l', 'c', 'y', 'f', 'm', 'n', 'p', 's');
      CREATE TYPE mushroom_gill_attachment AS ENUM ('a', 'd', 'f', 'n');
      CREATE TYPE mushroom_gill_spacing AS ENUM ('c', 'w', 'd');
      CREATE TYPE mushroom_gill_size AS ENUM ('b', 'n');
      CREATE TYPE mushroom_gill_color AS ENUM ('k', 'n', 'b', 'h', 'g', 'r', 'o', 'p', 'u', 'e', 'w', 'y');
      CREATE TYPE mushroom_stalk_shape AS ENUM ('e', 't');
      CREATE TYPE mushroom_stalk_root AS ENUM ('b', 'c', 'u', 'e', 'z', 'r', '?');
      CREATE TYPE mushroom_stalk_surface_above_ring AS ENUM ('f', 'y', 'k', 's');
      CREATE TYPE mushroom_stalk_surface_below_ring AS ENUM ('f', 'y', 'k', 's');
      CREATE TYPE mushroom_stalk_color_above_ring AS ENUM ('n', 'b', 'c', 'g', 'o', 'p', 'e', 'w', 'y');
      CREATE TYPE mushroom_stalk_color_below_ring AS ENUM ('n', 'b', 'c', 'g', 'o', 'p', 'e', 'w', 'y');
      CREATE TYPE mushroom_veil_type AS ENUM ('p', 'u');
      CREATE TYPE mushroom_veil_color AS ENUM ('n', 'o', 'w', 'y');
      CREATE TYPE mushroom_ring_number AS ENUM ('n', 'o', 't');
      CREATE TYPE mushroom_ring_type AS ENUM ('c', 'e', 'f', 'l', 'n', 'p', 's', 'z');
      CREATE TYPE mushroom_spore_print_color AS ENUM ('k', 'n', 'b', 'h', 'r', 'o', 'u', 'w', 'y');
      CREATE TYPE mushroom_population AS ENUM ('a', 'c', 'n', 's', 'v', 'y');
      CREATE TYPE mushroom_habitat AS ENUM ('g', 'l', 'm', 'p', 'u', 'w', 'd');
    SQL

    create_table :mushrooms, id: :uuid do |t|
      t.boolean :bruises
      t.timestamps
    end

    add_column :mushrooms, :category, :mushroom_category
    add_column :mushrooms, :cap_shape, :mushroom_cap_shape
    add_column :mushrooms, :cap_surface, :mushroom_cap_surface
    add_column :mushrooms, :cap_color, :mushroom_cap_color
    add_column :mushrooms, :odor, :mushroom_odor
    add_column :mushrooms, :gill_attachment, :mushroom_gill_attachment
    add_column :mushrooms, :gill_spacing, :mushroom_gill_spacing
    add_column :mushrooms, :gill_size, :mushroom_gill_size
    add_column :mushrooms, :gill_color, :mushroom_gill_color
    add_column :mushrooms, :stalk_shape, :mushroom_stalk_shape
    add_column :mushrooms, :stalk_root, :mushroom_stalk_root
    add_column :mushrooms, :stalk_surface_above_ring, :mushroom_stalk_surface_above_ring
    add_column :mushrooms, :stalk_surface_below_ring, :mushroom_stalk_surface_below_ring
    add_column :mushrooms, :stalk_color_above_ring, :mushroom_stalk_color_above_ring
    add_column :mushrooms, :stalk_color_below_ring, :mushroom_stalk_color_below_ring
    add_column :mushrooms, :veil_type, :mushroom_veil_type
    add_column :mushrooms, :veil_color, :mushroom_veil_color
    add_column :mushrooms, :ring_number, :mushroom_ring_number
    add_column :mushrooms, :ring_type, :mushroom_ring_type
    add_column :mushrooms, :spore_print_color, :mushroom_spore_print_color
    add_column :mushrooms, :population, :mushroom_population
    add_column :mushrooms, :habitat, :mushroom_habitat
    add_index :mushrooms, :category
    add_index :mushrooms, :cap_shape
    add_index :mushrooms, :cap_surface
    add_index :mushrooms, :cap_color
    add_index :mushrooms, :odor
    add_index :mushrooms, :gill_attachment
    add_index :mushrooms, :gill_spacing
    add_index :mushrooms, :gill_size
    add_index :mushrooms, :gill_color
    add_index :mushrooms, :stalk_shape
    add_index :mushrooms, :stalk_root
    add_index :mushrooms, :stalk_surface_above_ring
    add_index :mushrooms, :stalk_surface_below_ring
    add_index :mushrooms, :stalk_color_above_ring
    add_index :mushrooms, :stalk_color_below_ring
    add_index :mushrooms, :veil_type
    add_index :mushrooms, :veil_color
    add_index :mushrooms, :ring_number
    add_index :mushrooms, :ring_type
    add_index :mushrooms, :spore_print_color
    add_index :mushrooms, :population
    add_index :mushrooms, :habitat
  end

  def down
    execute <<-SQL
      DROP TABLE mushrooms;
      DROP TYPE mushroom_category;
      DROP TYPE mushroom_cap_shape;
      DROP TYPE mushroom_cap_surface;
      DROP TYPE mushroom_cap_color;
      DROP TYPE mushroom_odor;
      DROP TYPE mushroom_gill_attachment;
      DROP TYPE mushroom_gill_spacing;
      DROP TYPE mushroom_gill_size;
      DROP TYPE mushroom_gill_color;
      DROP TYPE mushroom_stalk_shape;
      DROP TYPE mushroom_stalk_root;
      DROP TYPE mushroom_stalk_surface_above_ring;
      DROP TYPE mushroom_stalk_surface_below_ring;
      DROP TYPE mushroom_stalk_color_above_ring;
      DROP TYPE mushroom_stalk_color_below_ring;
      DROP TYPE mushroom_veil_type;
      DROP TYPE mushroom_veil_color;
      DROP TYPE mushroom_ring_number;
      DROP TYPE mushroom_ring_type;
      DROP TYPE mushroom_spore_print_color;
      DROP TYPE mushroom_population;
      DROP TYPE mushroom_habitat;
    SQL
  end
end
