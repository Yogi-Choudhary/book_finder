# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.create([{title: 'Ruby', author: 'Yukihiro Matsumoto', date: '21/12/1995'},
            {title: 'rails', author: 'DHH', date: '21/12/2004'},
            {title: 'C', author: 'C', date: '21/12/2005'},
            {title: 'C++', author: 'C++', date: '21/12/2006'},
            {title: 'Java', author: 'JAVA', date: '21/12/2007'}])