# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.find_or_initialize_by(email:"david.petric99@gmail.com").tap do |user|
    user.first_name="David"
    user.last_name="Petric"
    user.email="david.petric99@gmail.com"
    user.phone_number="0751673157"
    user.order_a_card=false
    user.card_sn="0000001"
    user.password="wireless"
    user.save
end
    
[
    {
        name:"Mihai Viteazu", city:"Cluj-Napoca", description:"sdhfjea2131", regular_spots:144, ev_spots:4, image_link:"https://i.guim.co.uk/img/media/ccc826cd2961f5dc64b3e1283ac4224eab46a77f/0_383_5746_3448/master/5746.jpg?width=1020&quality=85&auto=format&fit=max&s=968f9b9234aadb3f5bc5e7bc289fa7ca", coordinates:[23.5891462, 46.7703371], zoom:[17]
    },
    {
        name:"Avram Iancu", city:"Brasov", description:"orice322432", regular_spots:132, ev_spots:1, image_link:"https://img.theculturetrip.com/1440x807/smart/wp-content/uploads/2017/10/brasov-min.jpg", coordinates:[21.5891462, 47.7703371], zoom:[17]
    },
    {
        name:"Centru-Umbrelute", city:"Timisoara", description:"orice122232", regular_spots:890, ev_spots:9, image_link:"https://www.romaniajournal.ro/wp-content/uploads/2015/09/twa_blogpic_timisoara-4415.jpg", coordinates:[20.5891462, 40.7703371], zoom:[17]
    }
].each do |parking|

    Parking.find_or_initialize_by(name: parking[:name]).tap do |tapped_parking|
        tapped_parking.description=parking[:description]
        tapped_parking.city=parking[:city]
        tapped_parking.regular_spots=parking[:regular_spots]
        tapped_parking.ev_spots=parking[:ev_spots]
        tapped_parking.image_link=parking[:image_link]
        tapped_parking.coordinates=parking[:coordinates]
        tapped_parking.zoom=parking[:zoom]
        tapped_parking.save
    end
end
puts "numbers of all parkings area #{Parking.all.count}"


[
    {id:1, message:"e scump la voi nenea", solved:false, responsed:false},
    {id:2, message:"e tare scump la voi nenea", solved:false, responsed:true},
    {id:3, message:"si eu csf?", solved:true, responsed:true}
].each do |ticket|

    Ticket.find_or_initialize_by(id: ticket[:id]).tap do |tapped_ticket|
        tapped_ticket.user=user
        tapped_ticket.message=ticket[:message]
        tapped_ticket.solved=ticket[:solved]
        tapped_ticket.responsed=ticket[:responsed]
        tapped_ticket.save
    end
end
puts "numbers of all tickets #{Ticket.all.count}"