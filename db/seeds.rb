# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all

Product.create!(title: 'Protein Powder', description:
    '<p>
Optimum Nutrition Gold Standard 100% Whey Protein Powder, Double Rich Chocolate, 5 Pound.
</p>', image_url: 'protein_powder_small.jpg', price: 49.95
)

Product.create!(title: 'Creatine Powder', description:
    '<p>
Optimum Nutrition Creatine Powder, Unflavored, 600g</p>', image_url: 'creatine_powder.jpg', price: 45.95
)

Product.create!(title: 'ZMA Booster', description:
    '<p>
SNAC ZMA Nightcap Rapid Recovery Sleep Enhancer Drink Mix, Apple Berry, 450 Grams (15.9 Ounce)</p>',
                image_url: 'zma.jpg', price: 29.95
)

Product.create!(title: 'Multivitamin', description:
    '<p>
Centrum Silver Men Multivitamin / Multimineral Supplement Tablet, Vitamin D3 (200 Count) (Package May Vary)</p>',
                image_url: 'multivitamin.jpg',
                price: 19.95
)