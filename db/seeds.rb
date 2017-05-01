# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Condition.create(
    name: 'Mint',
    description: "Absolutely perfect in every way. " \
    "Certainly never been played, possibly even still sealed."
  )
Condition.create(
    name: 'Near Mint',
    description: "A nearly perfect record."
  )
Condition.create(
    name: 'Very Good Plus',
    description: "The record shows some signs that it was played and otherwise handled " \
    "by a previous owner who took good care of it."
  )
Condition.create(
    name: 'Very Good',
    description: "Surface noise will be evident upon playing, especially in soft passages " \
    "and during a song's intro and fade, but will not overpower the music otherwise."
  )
Condition.create(
    name: 'Good',
    description: "The record has significant surface noise and scratches and visible " \
    "groove wear (on a styrene record, the groove will be starting to turn white). "
  )
Condition.create(
    name: 'Poor',
    description: "The record is cracked, badly warped, and won't play through without " \
    "skipping or repeating."
  )
