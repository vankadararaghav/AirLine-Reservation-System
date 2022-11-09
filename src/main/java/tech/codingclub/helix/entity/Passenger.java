package tech.codingclub.helix.entity;

public class Passenger {
    public Long passenger_id;
    public String name;
   public String email;
    public String phone;
   public  String date;
    public Long member_id;
    public Long flight_id;
    public Long getFlight_id(){
        return flight_id;
    }

    public Long getMember_id(){
        return member_id;
    }

    public Long getPassenger_id() {
        return passenger_id;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getPhone() {
        return phone;
    }

    public String getDate() {
        return date;
    }
}
