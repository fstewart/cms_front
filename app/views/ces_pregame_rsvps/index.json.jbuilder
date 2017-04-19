json.array!(@ces_pregame_rsvps) do |ces_pregame_rsvp|
  json.extract! ces_pregame_rsvp, :id, :game1_comp_tickets, :game1_paid_tickets, :game1_child_tickets, :game2_comp_tickets, :game2_paid_tickets, :game2_child_tickets, :game3_comp_tickets, :game3_paid_tickets, :game3_child_tickets, :game4_comp_tickets, :game4_paid_tickets, :game4_child_tickets, :game5_comp_tickets, :game5_paid_tickets, :game5_child_tickets, :game6_comp_tickets, :game6_paid_tickets, :game6_child_tickets, :game7_comp_tickets, :game7_paid_tickets, :game7_child_tickets, :first_name, :last_name, :phone, :email
  json.url ces_pregame_rsvp_url(ces_pregame_rsvp, format: :json)
end
