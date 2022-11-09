package tech.codingclub.helix.entity;

public class PassengersResponse {

     public String name;
     public String email;
     public String phone;
     public Long  passenger_id;
     public String flightName;
     public Long  flight_id;
     public String date;
     public Long   cost;

     public String getName() {
          return name;
     }

     public String getEmail() {
          return email;
     }

     public String getPhone() {
          return phone;
     }

     public Long getPassenger_id() {
          return passenger_id;
     }

     public String getFlightName() {
          return flightName;
     }

     public Long getFlight_id() {
          return flight_id;
     }

     public String getDate() {
          return date;
     }

     public Long getCost() {
          return cost;
     }



}
