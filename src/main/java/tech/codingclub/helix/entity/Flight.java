package tech.codingclub.helix.entity;

public class Flight {

    public Long id;
    public String from;
    public String to;
    public String name;
    public Long   cost;
    public String date;

    public String getDate() {
        return date;
    }

    public String getFrom() {
        return from;
    }

    public String getTo() {
        return to;
    }

    public String getName() {
        return name;
    }

    public Long getCost() {
        return cost;
    }
    public Long getId(){
        return id;
    }
}
