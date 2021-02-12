# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Top.create( 
    name: "Shen",
    macro_score: 2
)

Jg.create( 
    name: "Hecarim",
    macro_score: 2
)

Mid.create( 
    name: "Syndra",
    macro_score: 2
)

Bot.create( 
    name: "Jhin",
    macro_score: 2
)

Sup.create( 
    name: "Leona",
    macro_score: 2
)

Team.create(
    top_id: Top.first.id,
    mid_id: Mid.first.id,
    bot_id: Bot.first.id,
    sup_id: Sup.first.id,
    jg_id: Jg.first.id

)

