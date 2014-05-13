# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email:        "viksit@mit.edu",
            password:     "viksitarora",
            role:         0,
            name:         "Viksit Arora"
           )

User.create(email:        "ishabir@mit.edu",
            password:     "israshabir",
            role:         1,
            name:         "Isra Shabir"
           )


Project.create( label:                          "First project by Viksit",
                artisan_id:                     1,
                description:                    "project one",
                artisan_id:                     1,
                design_versions_count:          0,
                parent_project_id:              nil,
                show_in_catalog:                true,
                product_category_id:            1,
                customer_id:                    nil
              )

Project.create( label:                          "First project by Viksit",
                artisan_id:                     1,
                description:                    "project one, copy for isra",
                artisan_id:                     1,
                design_versions_count:          0,
                parent_project_id:              1,
                show_in_catalog:                true,
                product_category_id:            1,
                customer_id:                    2
              )


ProductCategory.create(label: "kurta")


Palette.create( label:                "palette1",
                user_id:              1,
                project_id:           1,
                product_category_id:  1
              )

AttributeLayer.create(label:          "layer 1 for palette 1",
                      palette_id:     1
                     )

AttributeLayer.create(label:          "layer 2 for palette 1",
                      palette_id:     1
                     )

AttributeLayer.create(label:          "layer 3 for palette 1",
                      palette_id:     1
                     )

AttributeLayer.create(label:          "layer 4 for palette 1",
                      palette_id:     1
                     )