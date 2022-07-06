package com.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Data
@Entity
@Table(name = "location")
public class Location {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    @Column(name = "location_name")
    private String locationName;

    @OneToMany(orphanRemoval = true, mappedBy = "location")
    private List<User> userList = new ArrayList<>();

    @OneToMany(orphanRemoval = true, mappedBy = "location")
    private List<Status> statusList = new ArrayList<>();
}
