package com.uniterra.model;
import jakarta.persistence.*;

@Entity
@Table(name = "view")
public class view {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int view_id;
    @Column(name = "camera_id")
    private int camera_id;
    @Column(name = "amount_car")
    private int amount_car;
    @Column(name = "amount_truck")
    private int amount_truck;
    @Column(name = "amount_bus")
    private int amount_bus;
    @Column(name = "amount_motorbike")
    private int amount_motorbike;
    @Column(name = "amount_bike")
    private int amount_bike;
    @Column(name = "amount_people")
    private int amount_people;
    @Column(name = "start")
    private String start;
    @Column(name = "end")
    private String end;
    @Column(name = "avg_speed")
    private int avg_speed;

    public int getView_id() {
        return view_id;
    }

    public void setView_id(int view_id) {
        this.view_id = view_id;
    }

    public int getCamera_id() {
        return camera_id;
    }

    public void setCamera_id(int camera_id) {
        this.camera_id = camera_id;
    }

    public int getAmount_car() {
        return amount_car;
    }

    public void setAmount_car(int amount_car) {
        this.amount_car = amount_car;
    }

    public int getAmount_truck() {
        return amount_truck;
    }

    public void setAmount_truck(int amount_truck) {
        this.amount_truck = amount_truck;
    }

    public int getAmount_bus() {
        return amount_bus;
    }

    public void setAmount_bus(int amount_bus) {
        this.amount_bus = amount_bus;
    }

    public int getAmount_motorbike() {
        return amount_motorbike;
    }

    public void setAmount_motorbike(int amount_motorbike) {
        this.amount_motorbike = amount_motorbike;
    }

    public int getAmount_bike() {
        return amount_bike;
    }

    public void setAmount_bike(int amount_bike) {
        this.amount_bike = amount_bike;
    }

    public int getAmount_people() {
        return amount_people;
    }

    public void setAmount_people(int amount_people) {
        this.amount_people = amount_people;
    }

    public String getStart() {
        return start;
    }

    public void setStart(String start) {
        this.start = start;
    }

    public String getEnd() {
        return end;
    }

    public void setEnd(String end) {
        this.end = end;
    }

    public int getAvg_speed() {
        return avg_speed;
    }

    public void setAvg_speed(int avg_speed) {
        this.avg_speed = avg_speed;
    }
}
