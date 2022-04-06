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
    user.save
end
    
[
    {
        name:"Mihai Viteazu", city:"Cluj-Napoca", description:"sdhfjea2131", regular_spots:144, ev_spots:4
    },
    {
        name:"Avram Iancy", city:"Brasov", description:"orice322432", regular_spots:132, ev_spots:1
    },
    {
        name:"Centru-Umbrelute", city:"Timisoara", description:"orice122232", regular_spots:890, ev_spots:9
    }
].each do |parking|

    Parking.find_or_initialize_by(name: parking[:name]).tap do |tapped_parking|
        tapped_parking.description=parking[:description]
        tapped_parking.city=parking[:city]
        tapped_parking.regular_spots=parking[:regular_spots]
        tapped_parking.ev_spots=parking[:ev_spots]
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