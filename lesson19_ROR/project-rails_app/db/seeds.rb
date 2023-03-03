# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
tolkien = Author.create(first_name: 'John Ronald', last_name: 'Reuel Tolkien', title: 'Oxymore')
akunin =  Author.create(first_name: 'Grigory', last_name: 'Chkhartishvili', title: 'Boris Akunin')
orwell =  Author.create(first_name: 'Eric Arthur ', last_name: 'Blair', title: 'George Orwell')

supllier = Supllier.create(name: 'Bookseller')

orvell_1984 = Book.create(title: 'Nineteen Eighty-Four', year_published: 1949, isbn: '122wes345432',
                          price: 124.3, out_of_print: true, views: 124_324, supplier_id: 1, author_id: 3)
orvell_animal_farm = Book.create(title: 'Animal Farm', year_published: 1945, isbn: '1234ds5432',
                                 price: 129.3, out_of_print: true, views: 224_324, supplier_id: 1, author_id: 3)
akunin_azazel = Book.create(title: 'Azazel', year_published: 1998, isbn: 'ru1234ds5432',
                            price: 99.3, out_of_print: true, views: 724_324, supplier_id: 1, author_id: 2)
akunin_azazel = Book.create(title: 'Diamond Chariot', year_published: 2002, isbn: 'ru1234ds5434',
                            price: 119.3, out_of_print: true, views: 924_324, supplier_id: 1, author_id: 2)
tolkien_hobbit = Book.create(title: 'The Hobbit or There and Back Again ', year_published: 1937, isbn: '341234ds5434',
                             price: 219.3, out_of_print: true, views: 123_924_324, supplier_id: 1, author_id: 1)
tolkien_rings = Book.create(title: 'The Lord of the Rings', year_published: 1955, isbn: '3sd41234ds5434',
                            price: 419.3, out_of_print: true, views: 923_924_324, supplier_id: 1, author_id: 1)
